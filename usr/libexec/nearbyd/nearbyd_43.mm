void sub_10032E588(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100020444(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10032E5A0(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*a1);
  [v3 setExpirationHandler:&stru_1009A5400];
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rlm,ranging limit manager update periodic reset", buf, 2u);
  }

  sub_10032E974(a1);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#rlm,ranging limit manager update periodic reset task complete", v6, 2u);
  }

  [v3 setTaskCompleted];
}

void sub_10032E694(void x0_0, int a1, void *a2, void *a3)
{
  a2;
  dispatch_assert_queue_V2(a3);
  sub_1003301A8();
}

uint64_t sub_10032E730(NSObject **a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032E7E0;
  block[3] = &unk_1009A0A80;
  v6 = a2;
  block[4] = &v7;
  block[5] = a1;
  dispatch_sync(v2, block);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t sub_10032E7E0(uint64_t a1)
{
  result = sub_10032E8B4(*(a1 + 40) + 56, (a1 + 48));
  if ((result & 0x100) == 0)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10032C948(*(a1 + 48), v4);
      sub_1004C0510();
    }

    sub_1004C0564(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10032E8B4(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    if (*(v3 + 28) >= v5)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < v5));
  }

  while (v3);
  if (v6 != v2 && v5 >= *(v6 + 28))
  {
    v7 = *(v6 + 32);
    v8 = 1;
  }

  else
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
  }

  return v7 | (v8 << 8);
}

void sub_10032E90C(id a1)
{
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#rlm,ranging limit manager update periodic reset task expiring", v2, 2u);
  }
}

void sub_10032E974(uint64_t a1)
{
  dispatch_assert_queue_V2(*a1);
  sub_10032EB24(a1);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rlm,Periodic Reset Handler: reset ranging budgets", buf, 2u);
  }

  v3 = qword_1009F5388;
  if (qword_1009F5388 != &unk_1009F5390)
  {
    do
    {
      *buf = v3 + 32;
      v4 = sub_10032F9D4(a1 + 8, (v3 + 32), &unk_100548C50, buf);
      sub_10032D494(v4[5]);
      *buf = v3 + 32;
      v5 = sub_10032F9D4(a1 + 32, (v3 + 32), &unk_100548C50, buf);
      sub_10032D904(v5[5]);
      *buf = v3 + 32;
      *(sub_1001BF9A0(a1 + 56, (v3 + 32), &unk_100548C50, buf) + 32) = 0;
      *buf = v3 + 32;
      v6 = sub_10032FBBC(a1 + 112, (v3 + 32), &unk_100548C50, buf);
      if (*(v6 + 48) == 1)
      {
        v7 = v6;

        *(v7 + 48) = 0;
      }

      v8 = *(v3 + 8);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 16);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != &unk_1009F5390);
  }

  sub_10032EFCC(a1);
  v11 = +[NSDate now];
  v12 = *(a1 + 104);
  *(a1 + 104) = v11;
}

void sub_10032EB24(uint64_t a1)
{
  dispatch_assert_queue_V2(*a1);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rlm,Periodic Reset Handler: sending analytics", buf, 2u);
  }

  LODWORD(__p[0]) = 8;
  *buf = __p;
  v3 = sub_10032F9D4(a1 + 32, __p, &unk_100548C50, buf)[5];
  dispatch_assert_queue_V2(*(v3 + 24));
  v4 = [NSNumber numberWithDouble:(*(v3 + 40) - *(v3 + 48)) / 60.0];
  LODWORD(__p[0]) = 8;
  *buf = __p;
  v5 = sub_10032FBBC(a1 + 112, __p, &unk_100548C50, buf);
  v6 = *(v5 + 48);
  if (v6 == 1)
  {
    v7 = v5[5];
    v8 = *(a1 + 104);
    v9 = v7;
    v10 = v8;
    [v9 timeIntervalSinceDate:v10];
    v12 = [NSNumber numberWithDouble:v11 / 3600.0];

    v13 = v9;
    v14 = +[NSCalendar currentCalendar];
    v15 = [v14 components:32 fromDate:v13];
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 hour]);
  }

  else
  {
    v13 = 0;
    v16 = &off_1009C4118;
    v12 = &off_1009C4130;
  }

  v17 = qword_1009F9820;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, "HomeKey");
    v18 = v23 >= 0 ? __p : __p[0];
    *buf = 136315906;
    *&buf[4] = v18;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#rlm,budget reset [%s]: spent = %@ mins, exhausted_hour = %@, hours_to_exhaust = %@", buf, 0x2Au);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v19 = v4;
  v20 = v16;
  v21 = v12;
  AnalyticsSendEventLazy();

  if (v6)
  {
  }
}

void sub_10032EE84(_Unwind_Exception *a1)
{
  if (v6)
  {
  }

  _Unwind_Resume(a1);
}

id sub_10032EF28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"budgetSpentMins";
  v4[1] = @"exhaustedLocalHour";
  v5 = v1;
  v4[2] = @"hoursTookToExhaustBudget";
  v6 = *(a1 + 48);
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

void sub_10032EFCC(dispatch_queue_t *a1)
{
  dispatch_assert_queue_V2(*a1);
  v2 = qword_1009F5388;
  if (qword_1009F5388 != &unk_1009F5390)
  {
    v3 = &qword_1009F9820;
    p_cache = NIAcwgM3Msg.cache;
    v5 = @"RangingLimitManager";
    do
    {
      __p[0] = (v2 + 32);
      v6 = sub_10032F9D4((a1 + 4), (v2 + 32), &unk_100548C50, __p)[5];
      dispatch_assert_queue_V2(*(v6 + 24));
      LOBYTE(v6) = *(v6 + 48) <= 0.0;
      __p[0] = (v2 + 32);
      *(sub_1001BF9A0((a1 + 7), (v2 + 32), &unk_100548C50, __p) + 32) = v6;
      __p[0] = (v2 + 32);
      LODWORD(v6) = *(sub_1001BF9A0((a1 + 7), (v2 + 32), &unk_100548C50, __p) + 32);
      __p[0] = (v2 + 32);
      if (v6 != *(sub_1001BF9A0((a1 + 10), (v2 + 32), &unk_100548C50, __p) + 32))
      {
        v7 = *v3;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v5;
          v9 = p_cache;
          v10 = v3;
          sub_10032C948(*(v2 + 32), __p);
          v11 = v25;
          v12 = __p[0];
          v26 = (v2 + 32);
          v13 = sub_1001BF9A0((a1 + 7), (v2 + 32), &unk_100548C50, &v26);
          v14 = __p;
          if (v11 < 0)
          {
            v14 = v12;
          }

          v15 = *(v13 + 32) == 0;
          *buf = 136315394;
          v16 = @"Limit Available";
          if (!v15)
          {
            v16 = @"Limit Exceeded";
          }

          v28 = v14;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#rlm,Ranging limit reached status changed for '%s': %@", buf, 0x16u);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }

          v3 = v10;
          p_cache = v9;
          v5 = v8;
        }

        __p[0] = (v2 + 32);
        v17 = *(sub_1001BF9A0((a1 + 7), (v2 + 32), &unk_100548C50, __p) + 32);
        v18 = [p_cache + 478 sharedInstance];
        [v18 clientWithIdentifier:v5 notifiedResourceUsageLimitExceeded:v17 forSessionConfigurationType:NSClassFromString(*(v2 + 40))];

        __p[0] = (v2 + 32);
        LOBYTE(v18) = *(sub_1001BF9A0((a1 + 7), (v2 + 32), &unk_100548C50, __p) + 32);
        __p[0] = (v2 + 32);
        *(sub_1001BF9A0((a1 + 10), (v2 + 32), &unk_100548C50, __p) + 32) = v18;
        if (v17)
        {
          v19 = +[NSDate now];
          __p[0] = (v2 + 32);
          v20 = sub_10032FBBC((a1 + 14), (v2 + 32), &unk_100548C50, __p);
          if (*(v20 + 48) == 1)
          {
            v21 = v20[5];
            v20[5] = v19;
          }

          else
          {
            v20[5] = v19;
            *(v20 + 48) = 1;
          }
        }
      }

      v22 = *(v2 + 8);
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
          v23 = *(v2 + 16);
          v15 = *v23 == v2;
          v2 = v23;
        }

        while (!v15);
      }

      v2 = v23;
    }

    while (v23 != &unk_1009F5390);
  }
}

void sub_10032F330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10032F368(uint64_t a1)
{
  sub_10032F474(*(a1 + 32) + 8, (a1 + 40), &v4);
  if ((v6 & 1) == 0)
  {
    v2 = qword_1009F9820;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_10032C948(*(a1 + 40), v3);
      sub_1004C0510();
    }

    sub_1004C05F8(v2);
  }

  sub_10032D1F8(v4);
  if (v6 == 1)
  {
    if (v5)
    {
      sub_10000AD84(v5);
    }
  }
}

void sub_10032F440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1)
  {
    if (a13)
    {
      sub_10000AD84(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032F474@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  result = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *a2;
  v7 = result;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 != result && v6 >= *(v7 + 32))
  {
    v10 = *(v7 + 40);
    v9 = *(v7 + 48);
    *a3 = v10;
    *(a3 + 8) = v9;
    if (v9)
    {
      v11 = (v9 + 8);
      v8 = 1;
      atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
LABEL_8:
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v8;
  return result;
}

void sub_10032F4E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10032F474((v2 + 1), (a1 + 40), &v9);
  if ((v11 & 1) == 0)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10032C948(*(a1 + 40), &v6);
      sub_1004C0510();
    }

    sub_1004C068C(v4);
  }

  sub_10032F474((v2 + 4), (a1 + 40), &v6);
  if ((v8 & 1) == 0)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10032C948(*(a1 + 40), v12);
      sub_1004C0510();
    }

    sub_1004C0720(v5);
  }

  if (v11 != 1 || (v3 = sub_10032D2F8(v9), (v8 & 1) == 0))
  {
    sub_1000195BC();
  }

  sub_10032D824(v6, v3);
  sub_10032EFCC(v2);
  if (v8 == 1 && v7)
  {
    sub_10000AD84(v7);
  }

  if (v11 == 1)
  {
    if (v10)
    {
      sub_10000AD84(v10);
    }
  }
}

void sub_10032F660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1)
  {
    if (a13)
    {
      sub_10000AD84(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032F6C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10032F70C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_10032F774(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10029EFF8(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void *sub_10032F7F4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10032F84C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10032F84C(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10032F8D4(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10032F8D4(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v4 = *sub_1001BD1C8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_10032F96C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10032F96C(a1, *a2);
    sub_10032F96C(a1, a2[1]);
    if (*(a2 + 48) == 1)
    {
    }

    operator delete(a2);
  }
}

uint64_t *sub_10032F9D4(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

void sub_10032FB5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A54B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10032FBBC(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_10032FC94(uint64_t a1, int *a2, _DWORD *a3)
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

void *sub_10032FDE4(void *a1, uint64_t a2, double *a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A5500;
  sub_10032FF1C(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void sub_10032FE7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A5500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10032FED0(uint64_t a1)
{
  v2 = *(a1 + 32);

  sub_10002074C(a1 + 24, v2);
}

void sub_10032FF1C(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, void **a5)
{
  sub_10032F7F4(v8, a3);
  sub_10032D5C8(a2, v8, *a5, *a4);
  sub_10002074C(v8, v8[1]);
}

uint64_t sub_10032FF98(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_10032F8D4(a1, v4, a2, a2);
      ++a2;
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

void *sub_10033009C(void *a1, void *a2, double *a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A5500;
  sub_100330114(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100330114(uint64_t a1, uint64_t a2, void *a3, double *a4, void **a5)
{
  v5 = a3 + 1;
  v6 = a3[1];
  v7 = *a3;
  v8 = v6;
  if (a3[2])
  {
    v6[2] = &v8;
    *a3 = v5;
    *v5 = 0;
    a3[2] = 0;
  }

  else
  {
    v7 = &v8;
  }

  sub_10032D5C8(a2, &v7, *a5, *a4);
  sub_10002074C(&v7, v8);
}

void *sub_100330244(void *a1, int *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A5550;
  sub_10032CAD4((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_1003302CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A5550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100330348(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a4 = a1;
  *(a4 + 4) = v4;
  *(a4 + 12) = 2112;
  *(a4 + 14) = v5;
}

void sub_100330360()
{
  v0 = objc_autoreleasePoolPush();
  v2[0] = 8;
  v3 = @"NIAcwgConfiguration";
  v4 = 5;
  v5 = @"NICarKeyConfiguration";
  sub_10032F774(&qword_1009F5388, v2, 2);
  for (i = 6; i != -2; i -= 4)
  {
  }

  __cxa_atexit(sub_10032C998, &qword_1009F5388, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100330448(_Unwind_Exception *a1)
{
  for (i = 24; i != -8; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100330474(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_10056C1C0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  LODWORD(v3[0]) = -1;
  *(&v3[0] + 1) = 0;
  sub_10026CF28((a1 + 96), v3, 1);
  v3[2] = xmmword_10056C208;
  v3[3] = unk_10056C218;
  v3[4] = xmmword_10056C228;
  v3[5] = unk_10056C238;
  v3[0] = xmmword_10056C1E8;
  v3[1] = unk_10056C1F8;
  sub_10033158C(a1 + 120, v3, 6);
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  return a1;
}

void sub_100330568(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_100330578(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v6 = a2;
  v9 = a3;
  *(a1 + 24) = a5;
  *a1 = a4;
  *(a1 + 4) = BYTE4(a4);
  v10 = v9;
  sub_100330618(a1, v9);
  sub_100330834(a1, v6, a5);
}

void sub_100330618(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 sortedArrayUsingComparator:&stru_1009A56A8];
    v6 = [v5 count];
    v7 = v6;
    *__p = xmmword_10056C248;
    v18 = 0x500000004;
    if (v6 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v6;
    }

    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_10033160C(&v13, __p, &v19, 6uLL);
    if (v7)
    {
      v9 = 0;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v9];
        v11 = [v10 name];

        LODWORD(v10) = *(v13 + v9);
        v12 = v11;
        sub_100004A08(__p, [v11 UTF8String]);
        v16 = __p;
        *(sub_100331680((a1 + 144), __p, &unk_100548C50, &v16) + 56) = v10;
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }

        ++v9;
      }

      while (v8 != v9);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }
}

uint64_t *sub_100330834(uint64_t *result, int a2, double a3)
{
  if (a2 >= 1)
  {
    v5 = result;
    if (*(result + 88) == 1)
    {
      v6 = result[13];
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = *(result + 21);
      v8 = result + 13;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == result + 13 || v7 < *(v8 + 8))
      {
LABEL_10:
        v10 = result + 21;
        sub_10026D1E8((result + 12), result + 21, &unk_100548C50, &v10)[5] = 0;
        if ((v5[11] & 1) == 0)
        {
          sub_1000195BC();
        }
      }

      v9 = a3 - *(v5 + 7);
      v10 = v5 + 21;
      result = sub_10026D1E8((v5 + 12), v5 + 21, &unk_100548C50, &v10);
      *(result + 5) = v9 + *(result + 5);
    }

    *(v5 + 7) = a3;
    *(v5 + 21) = a2;
    *(v5 + 88) = 1;
  }

  return result;
}

void sub_100330944(double *result, double a2)
{
  v3 = a2 - result[3];
  result[4] = a2;
  result[5] = v3;
  if (v3 > 0.0)
  {
    sub_100330994(result);

    sub_100330BB4(result);
  }
}

void *sub_100330994(void *result)
{
  v1 = result;
  if (*(result + 88) == 1)
  {
    v2 = result[13];
    if (!v2)
    {
      goto LABEL_9;
    }

    v3 = *(result + 21);
    v4 = result + 13;
    do
    {
      if (*(v2 + 32) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < v3));
    }

    while (v2);
    if (v4 == result + 13 || v3 < *(v4 + 8))
    {
LABEL_9:
      v14 = result + 21;
      sub_10026D1E8((result + 12), result + 21, &unk_100548C50, &v14)[5] = 0;
      if ((v1[11] & 1) == 0)
      {
        sub_1000195BC();
      }
    }

    v5 = *(v1 + 4) - *(v1 + 7);
    v14 = v1 + 21;
    result = sub_10026D1E8((v1 + 12), v1 + 21, &unk_100548C50, &v14);
    *(result + 5) = v5 + *(result + 5);
  }

  if (*(v1 + 19) != 6)
  {
    v6 = *(v1 + 4) - *(v1 + 6);
    v14 = v1 + 19;
    result = sub_10026D1E8((v1 + 15), v1 + 19, &unk_100548C50, &v14);
    *(result + 5) = v6 + *(result + 5);
  }

  v7 = v1[12];
  if (v7 != v1 + 13)
  {
    v8 = *(v1 + 1);
    do
    {
      v9 = *(v7 + 8);
      if (v9 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1000.0 / v9 * 0.01 * 32.9;
      }

      v8 = v8 + v10 * *(v7 + 5) / 3600.0;
      *(v1 + 1) = v8;
      result = sub_1003314FC(v1, v9);
      switch(result)
      {
        case 2:
          *(v1 + 18) = v9;
          break;
        case 1:
          *(v1 + 17) = v9;
          break;
        case 0:
          *(v1 + 16) = v9;
          break;
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v1 + 13);
  }

  return result;
}

void sub_100330BB4(int *a1)
{
  v2 = qword_1009F5438;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v37 = a1 + 16;
    v4 = sub_10026D1E8((a1 + 24), a1 + 16, &unk_100548C50, &v37)[5];
    v37 = a1 + 17;
    v5 = sub_10026D1E8((a1 + 24), a1 + 17, &unk_100548C50, &v37)[5];
    v37 = a1 + 18;
    v6 = sub_10026D1E8((a1 + 24), a1 + 18, &unk_100548C50, &v37)[5];
    v36 = 0;
    v37 = &v36;
    v28 = v6;
    v27 = sub_10026D1E8((a1 + 30), &v36, &unk_100548C50, &v37)[5];
    v35 = 1;
    v37 = &v35;
    v26 = sub_10026D1E8((a1 + 30), &v35, &unk_100548C50, &v37)[5];
    v34 = 2;
    v37 = &v34;
    v7 = v3;
    v25 = sub_10026D1E8((a1 + 30), &v34, &unk_100548C50, &v37)[5];
    v33 = 3;
    v37 = &v33;
    v8 = sub_10026D1E8((a1 + 30), &v33, &unk_100548C50, &v37)[5];
    v32 = 4;
    v37 = &v32;
    v9 = sub_10026D1E8((a1 + 30), &v32, &unk_100548C50, &v37)[5];
    v31 = 5;
    v37 = &v31;
    v10 = sub_10026D1E8((a1 + 30), &v31, &unk_100548C50, &v37)[5];
    v11 = a1[16];
    v12 = a1[17];
    v13 = a1[18];
    *buf = 67112192;
    *&buf[4] = v7;
    v41 = 2048;
    v42 = v4;
    v43 = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v28;
    v47 = 2048;
    v48 = v27;
    v49 = 2048;
    v50 = v26;
    v51 = 2048;
    v52 = v25;
    v53 = 2048;
    v54 = v8;
    v55 = 2048;
    v56 = v9;
    v57 = 2048;
    v58 = v10;
    v59 = 1024;
    v60 = v11;
    v61 = 1024;
    v62 = v12;
    v63 = 1024;
    v64 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#handoffca Handoff device report: {\nNumTimesSmallestRegionEntered: %d,\nTimeSpentRangingAtRate0: %f s,\nTimeSpentRangingAtRate1: %f s,\nTimeSpentRangingAtRate2: %f s,\nTimeSpentRegion0: %f s,\nTimeSpentRegion1: %f s,\nTimeSpentRegion2: %f s,\nTimeSpentRegion3: %f s,\nTimeSpentRegion4: %f s,\nTimeSpentRegion5: %f s,\nRangingIntervalMillisecondsRate0: %d ms,\nRangingIntervalMillisecondsRate1: %d ms,\nRangingIntervalMillisecondsRate2: %d ms\n}", buf, 0x74u);
  }

  v38[0] = @"numTimesSmallestRegionEntered";
  v14 = [NSNumber numberWithInt:a1[4]];
  v39[0] = v14;
  v38[1] = @"timeSpentRangingAtRate0";
  *buf = a1 + 16;
  v30 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 24), a1 + 16, &unk_100548C50, buf) + 5)];
  v39[1] = v30;
  v38[2] = @"timeSpentRangingAtRate1";
  *buf = a1 + 17;
  v29 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 24), a1 + 17, &unk_100548C50, buf) + 5)];
  v39[2] = v29;
  v38[3] = @"timeSpentRangingAtRate2";
  *buf = a1 + 18;
  v15 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 24), a1 + 18, &unk_100548C50, buf) + 5)];
  v39[3] = v15;
  v38[4] = @"timeSpentRegion0";
  LODWORD(v37) = 0;
  *buf = &v37;
  v16 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 30), &v37, &unk_100548C50, buf) + 5)];
  v39[4] = v16;
  v38[5] = @"timeSpentRegion1";
  v36 = 1;
  *buf = &v36;
  v17 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 30), &v36, &unk_100548C50, buf) + 5)];
  v39[5] = v17;
  v38[6] = @"timeSpentRegion2";
  v35 = 2;
  *buf = &v35;
  v18 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 30), &v35, &unk_100548C50, buf) + 5)];
  v39[6] = v18;
  v38[7] = @"timeSpentRegion3";
  v34 = 3;
  *buf = &v34;
  v19 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 30), &v34, &unk_100548C50, buf) + 5)];
  v39[7] = v19;
  v38[8] = @"timeSpentRegion4";
  v33 = 4;
  *buf = &v33;
  v20 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 30), &v33, &unk_100548C50, buf) + 5)];
  v39[8] = v20;
  v38[9] = @"timeSpentRegion5";
  v32 = 5;
  *buf = &v32;
  v21 = [NSNumber numberWithDouble:*(sub_10026D1E8((a1 + 30), &v32, &unk_100548C50, buf) + 5)];
  v39[9] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:10];

  v23 = v22;
  AnalyticsSendEventLazy();
  v24 = qword_1009F5438;
  if (os_log_type_enabled(qword_1009F5438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#handoffca Uploaded device information through AnalyticsSendEventLazy", buf, 2u);
  }
}

int64_t sub_100331358(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 radius];
  v6 = v5;
  [v4 radius];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 > v7;
  }

  return v8;
}

void sub_1003313C4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 name];
    sub_100004A08(__p, [v7 UTF8String]);
    v8 = sub_100003EDC(a1 + 144, __p);
    if (a1 + 152 != v8)
    {
      v9 = *(v8 + 56);
      if (v9 == *(a1 + 80))
      {
        ++*(a1 + 16);
      }

      if (*(a1 + 76) <= 5u)
      {
        v10 = *(a1 + 48);
        v14 = (a1 + 76);
        v11 = sub_10026D1E8(a1 + 120, (a1 + 76), &unk_100548C50, &v14);
        *(v11 + 5) = a3 - v10 + *(v11 + 5);
      }

      *(a1 + 48) = a3;
      *(a1 + 76) = v9;
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003314C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003314FC(uint64_t a1, int a2)
{
  result = 0;
  v4 = a2;
  __asm
  {
    FMOV            V1.2S, #-1.0
    FMOV            V4.2D, #19.0
    FMOV            V5.2D, #1.0
  }

  while (1)
  {
    v11 = _D1;
    if (*(a1 + 4))
    {
      v12 = (&unk_10056C260 + 4 * result);
      v13 = vld1_dup_f32(v12);
      v11 = vcvt_f32_f64(vmulq_n_f64(vmlaq_f64(_Q5, _Q4, vcvtq_f64_f32(vmaxnm_f32(vadd_f32(v13, 0x3D4CCCCDBD4CCCCDLL), 0))), *a1));
    }

    if (v11.f32[0] <= v4 && v11.f32[1] >= v4)
    {
      break;
    }

    if (++result == 3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10033158C(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10026CFA8(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_10033160C(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_100331664(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100331680(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_100036E2C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_10033172C()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F5438 = os_log_create("com.apple.nearbyd", "Analytics");

  objc_autoreleasePoolPop(v0);
}

void sub_100331DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    sub_10000AD84(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100331F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100332070(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C07B4();
    }
  }

  else
  {
    [v5 didFailWithError:*(a1 + 32)];
  }
}

void sub_100332248(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleError:*(a1 + 32)];
}

void sub_10033236C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, ...)
{
  va_start(va, a13);

  sub_1000523AC(va);
  _Unwind_Resume(a1);
}

void sub_10033238C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C07B4();
    }
  }

  else
  {
    [v5 didReceiveNewSolutions:*(a1 + 32)];
  }
}

void sub_10033248C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C07B4();
    }
  }

  else
  {
    [v5 rangingServiceDidUpdateState:*(a1 + 32) cause:*(a1 + 40)];
  }
}

void sub_1003325CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C07B4();
    }
  }

  else
  {
    [v5 rangingRequestDidUpdateStatus:*(a1 + 32)];
  }
}

void sub_1003329BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v8 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRangingManager PRRangingRequestStatusDidStart #companion-retry", v18, 2u);
          }

          if (WeakRetained[16] != 3)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004C089C();
            }

            v25 = NSLocalizedDescriptionKey;
            v26 = @"Unexpected PRRangingRequestStatusDidStart";
            v9 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v10 = PRErrorWithCodeAndUserInfo(999, v9);

            [WeakRetained handleError:v10];
          }

          v7 = 4;
          goto LABEL_22;
        }
      }

      else
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PRRangingManager PRRangingRequestStatusUnknown #companion-retry", v18, 2u);
        }

        v19 = NSLocalizedDescriptionKey;
        v20 = @"Unexpected PRRangingRequestStatusUnknown";
        v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v17 = PRErrorWithCodeAndUserInfo(999, v16);

        [WeakRetained handleError:v17];
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v11 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRangingManager PRRangingRequestStatusStopped #companion-retry", v18, 2u);
          }

          if ((WeakRetained[16] & 0xFFFFFFFE) != 4)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004C0824();
            }

            v21 = NSLocalizedDescriptionKey;
            v22 = @"Unexpected PRRangingRequestStatusStopped";
            v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
            v13 = PRErrorWithCodeAndUserInfo(999, v12);

            [WeakRetained handleError:v13];
          }

          WeakRetained[16] = 1;
          [WeakRetained combineAndReportLocalAndCompanionRangingRequestStatus];
          break;
        case 3:
          v14 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PRRangingManager PRRangingRequestStatusInvalidated #companion-retry", v18, 2u);
          }

          [WeakRetained reportRangingRequestStatusUpdate:*(a1 + 48)];
          break;
        case 4:
          v4 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRangingManager PRRangingRequestStatusFailedToStart #companion-retry", v18, 2u);
          }

          if (WeakRetained[16] != 3)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004C0860();
            }

            v23 = NSLocalizedDescriptionKey;
            v24 = @"Unexpected PRRangingRequestStatusFailedToStart";
            v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
            v6 = PRErrorWithCodeAndUserInfo(999, v5);

            [WeakRetained handleError:v6];
          }

          v7 = 1;
LABEL_22:
          WeakRetained[16] = v7;
          [*(a1 + 32) combineAndReportLocalAndCompanionRangingRequestStatus];
          break;
      }
    }
  }
}

void sub_100332F2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C07B4();
    }
  }

  else
  {
    [v5 remoteDevice:*(a1 + 32) didChangeState:*(a1 + 40)];
  }
}

void sub_100333088(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRangingManager didReceiveSessionStartNotification #companion-retry", &v17, 2u);
    }

    if (*(WeakRetained + 16) == 2)
    {
      if (*(WeakRetained + 17) == 3)
      {
        v4 = *(a1 + 32);
        if (!v4 || ![v4 notificationType] && (objc_msgSend(*(a1 + 32), "bluetoothConnectionEventCounterValue"), v5 = objc_claimAutoreleasedReturnValue(), v6 = v5 == 0, v5, v6))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004C09C8();
          }

          v19 = NSLocalizedDescriptionKey;
          v20 = @"Unexpected didReceiveSessionStartNotification notification values";
          v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v8 = PRErrorWithCodeAndUserInfo(999, v7);

          [WeakRetained handleError:v8];
        }

        *(WeakRetained + 16) = 3;
        v9 = [*(a1 + 32) bluetoothConnectionEventCounterValue];
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PRRangingManager futureEventCounterValue == %@ #companion-retry", &v17, 0xCu);
        }

        v11 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_companionRangingManager startRangingWithParameters #companion-retry", &v17, 2u);
        }

        v12 = [v9 intValue];
        v13 = WeakRetained[15];
        v14 = [WeakRetained[16] UUID];
        [v13 startRangingOnDevice:v14 targetEventCounter:v12];

        *(WeakRetained + 17) = 4;
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0950();
        }

        v21 = NSLocalizedDescriptionKey;
        v22 = @"Unexpected didReceiveSessionStartNotification due to companionRangingState";
        v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v9 = PRErrorWithCodeAndUserInfo(999, v16);

        [WeakRetained handleError:v9];
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C08D8();
      }

      v23 = NSLocalizedDescriptionKey;
      v24 = @"Unexpected didReceiveSessionStartNotification due to localRangingState";
      v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v9 = PRErrorWithCodeAndUserInfo(999, v15);

      [WeakRetained handleError:v9];
    }
  }
}

void sub_100333F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  objc_sync_exit(v34);

  if (v33)
  {
    sub_10000AD84(v33);
  }

  _Unwind_Resume(a1);
}

void sub_10033572C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  if (a14)
  {
    sub_10000AD84(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1003359A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_100336210(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_100338600(void *a1, id *location)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10098B6C8;
  sub_100338670(&v4, (a1 + 3), location);
  return a1;
}

void sub_100338670(int a1, uint64_t a2, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);
  sub_1003144A4(a2, WeakRetained);
}

void sub_1003386D8()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(qword_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, qword_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100338788()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100338838()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_1003388E8()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(qword_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, qword_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100338998()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(qword_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, qword_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100338A48()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(qword_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, qword_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100338AF8()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100338BA8()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(qword_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, qword_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100338C58()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056C2A8;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100338D4C()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC(0);
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F5450 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F5440 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5440, &_mh_execute_header);
  sub_10041C9CC(1);
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F5468 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F5458 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5458, &_mh_execute_header);
  sub_10041C9CC(2);
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F5480 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F5470 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5470, &_mh_execute_header);
  sub_10041C9CC(3);
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F5498 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F5488 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5488, &_mh_execute_header);
  sub_10041C9CC(4);
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F54B0 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F54A0 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F54A0, &_mh_execute_header);
  sub_10041C9CC(5);
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F54C8 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F54B8 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F54B8, &_mh_execute_header);
  sub_10041C9CC(6);
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F54E0 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F54D0 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F54D0, &_mh_execute_header);
  sub_10041C9CC(7);
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F54F8 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F54E8 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F54E8, &_mh_execute_header);
  sub_10041C9CC(8);
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F5510 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F5500 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5500, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10033938C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100339400(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
}

void sub_100339410(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16) ? "PowerOff" : "PowerOn";
    sub_100004A08(__p, v3);
    v4 = v7 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rosepower-ca,poweredOn roseState:%s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_100005288();
  if (*(a1 + 16) == 1)
  {
    *a1 = v5;
    *(a1 + 16) = 0;
  }
}

void sub_10033953C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16) ? "PowerOff" : "PowerOn";
    sub_100004A08(__p, v3);
    v4 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rosepower-ca,poweredOff roseState:%s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_100005288();
  if (!*(a1 + 16))
  {
    v6 = v5 - *a1;
    *(a1 + 8) = v6;
    if (v6 > 0.0)
    {
      sub_100339684(a1);
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    *(a1 + 16) = 1;
  }
}

void sub_100339684(uint64_t a1)
{
  v11[0] = @"numPowerUps";
  v2 = [NSNumber numberWithInt:1];
  v12[0] = v2;
  v11[1] = @"powerOnDuration";
  v3 = [NSNumber numberWithDouble:*(a1 + 8)];
  v12[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v7 = v6;
    *buf = 136315138;
    v10 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#rosepower-ca,rose power data to be uploaded:\n%s\n", buf, 0xCu);
  }

  v8 = v4;
  AnalyticsSendEventLazy();
}

void sub_100339838(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1003398E4(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  *a1 = off_1009A57F8;
  *(a1 + 8) = off_1009A5858;
  v8 = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = dispatch_queue_create("com.apple.nearbyd.motion", 0);
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  if (!a3)
  {
    v14 = "motionProxyObject";
    v15 = 21;
    goto LABEL_8;
  }

  if (!v8)
  {
    v14 = "clientQueue";
    v15 = 22;
    goto LABEL_8;
  }

  if (a4 == 0.0)
  {
    v14 = "updateInterval != 0";
    v15 = 23;
LABEL_8:
    __assert_rtn("PRMotionProvider", "PRMotionProvider.mm", v15, v14);
  }

  v9 = objc_alloc_init(NSOperationQueue);
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;

  [*(a1 + 32) setUnderlyingQueue:*(a1 + 24)];
  v11 = objc_alloc_init(CMMotionManager);
  v12 = *(a1 + 48);
  *(a1 + 48) = v11;

  [*(a1 + 48) setDeviceMotionUpdateInterval:a4];
  return a1;
}

void sub_100339A54(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "starting motion updates", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100339B80;
  v5[3] = &unk_1009A5878;
  v5[4] = a1;
  v3 = objc_retainBlock(v5);
  [*(a1 + 48) startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:*(a1 + 32) withHandler:v3];
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "started motion updates", buf, 2u);
  }
}

void sub_100339B88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C0FF0(v6, v7);
    }
  }

  else if (v5)
  {
    [v5 timestamp];
    v9 = v8;
    [v5 userAcceleration];
    v11 = v10;
    [v5 userAcceleration];
    v13 = v12;
    [v5 userAcceleration];
    v15 = v14;
    [v5 rotationRate];
    v17 = v16;
    [v5 rotationRate];
    v19 = v18;
    [v5 rotationRate];
    v56 = v20;
    v21 = [v5 attitude];
    [v21 quaternion];
    v55 = v22;
    v23 = [v5 attitude];
    [v23 quaternion];
    v54 = v24;
    v25 = [v5 attitude];
    [v25 quaternion];
    v53 = v26;
    v27 = [v5 attitude];
    [v27 quaternion];
    v52 = v28;
    [v5 gravity];
    v51 = v29;
    [v5 gravity];
    v50 = v30;
    [v5 gravity];
    v49 = v31;
    objc_msgSend_magneticField(v5);
    v47 = v80[0];
    v48 = v19;
    objc_msgSend_magneticField(v5);
    v32 = v17;
    v33 = v9;
    v46 = v79;
    objc_msgSend_magneticField(v5);
    v45 = v78;
    v34 = [v5 attitude];
    [v34 yaw];
    v36 = v35;
    v37 = [v5 attitude];
    [v37 pitch];
    v39 = v38;
    v40 = [v5 attitude];
    [v40 roll];
    v42 = v41;

    v43 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033A0A8;
    block[3] = &unk_100998F48;
    block[4] = a1;
    block[5] = v33;
    block[6] = 0;
    v58 = 1;
    v59 = v11;
    v60 = v13;
    v61 = v15;
    v62 = v32;
    v63 = v48;
    v64 = v56;
    v65 = v55;
    v66 = v54;
    v67 = v53;
    v68 = v52;
    v69 = v51;
    v70 = v50;
    v71 = v49;
    v72 = v47;
    v73 = v46;
    v74 = v45;
    v75 = v36;
    v76 = v39;
    v77 = v42;
    dispatch_async(v43, block);
  }

  else
  {
    v44 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1068(v44);
    }
  }
}

void sub_100339F3C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "stopping motion updates", buf, 2u);
  }

  [*(a1 + 48) stopDeviceMotionUpdates];
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopped motion updates.", v4, 2u);
  }
}

BOOL sub_100339FFC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  result = 1;
  if (*a2 > 1)
  {
    if (v3 == 2)
    {
      sub_100339F3C(a1);
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      if ((*(a2 + 16) & 1) == 0)
      {
        sub_1004C10F0();
      }

      [*(a1 + 48) setDeviceMotionUpdateInterval:*(a2 + 8)];
    }

    return 1;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    sub_100339A54(a1);
    return 1;
  }

  v5 = qword_1009F9820;
  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1004C10AC(v5);
    return 0;
  }

  return result;
}

void sub_10033A0A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *&v19[68] = *(a1 + 104);
  *&v19[52] = *(a1 + 88);
  *&v19[116] = *(a1 + 152);
  *&v19[132] = *(a1 + 168);
  *&v19[148] = *(a1 + 184);
  *&v19[164] = *(a1 + 200);
  *&v19[84] = *(a1 + 120);
  *&v19[100] = *(a1 + 136);
  *&v19[4] = *(a1 + 40);
  *&v19[20] = *(a1 + 56);
  *&v19[36] = *(a1 + 72);
  v3 = *(v1 + 40);
  v4 = v2;
  v5 = 1;
  v14 = *&v19[128];
  v15 = *&v19[144];
  v16 = *&v19[160];
  v17 = *&v19[176];
  v10 = *&v19[64];
  v11 = *&v19[80];
  v12 = *&v19[96];
  v13 = *&v19[112];
  v6 = *v19;
  v7 = *&v19[16];
  v8 = *&v19[32];
  v9 = *&v19[48];
  v18 = 1;
  sub_1001A4810(v3, &v4);
}

void sub_10033A20C(id *a1)
{

  operator delete();
}

void sub_10033A270(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_10033A2BC(id *a1)
{

  operator delete();
}

uint64_t sub_10033A470(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10033A520(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10033A5E4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) state];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

_BYTE *sub_10033A690(_BYTE *result)
{
  *result = 0;
  result[8] = 0;
  result[16] = 0;
  result[24] = 0;
  result[32] = 0;
  result[40] = 0;
  result[48] = 0;
  result[56] = 0;
  result[64] = 0;
  result[68] = 0;
  result[72] = 0;
  result[76] = 0;
  result[80] = 0;
  result[88] = 0;
  result[96] = 0;
  result[100] = 0;
  result[104] = 0;
  result[108] = 0;
  return result;
}

void sub_10033A6DC(uint64_t a1)
{
  v6[0] = @"maxNumberOfInitiators";
  if (*(a1 + 100) == 1)
  {
    [NSNumber numberWithInt:*(a1 + 96)];
  }

  else
  {
    +[NSNull null];
  }
  v2 = ;
  v6[1] = @"maxNumberOfResponders";
  v7[0] = v2;
  if (*(a1 + 108) == 1)
  {
    [NSNumber numberWithInt:*(a1 + 104)];
  }

  else
  {
    +[NSNull null];
  }
  v3 = ;
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  v5 = v4;
  AnalyticsSendEventLazy();
}

_BYTE *sub_10033A8AC(_BYTE *a1)
{
  sub_10033A8EC(a1);
  sub_10033A6DC(a1);

  return sub_10033ADD0(a1);
}

void sub_10033A8EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0.0;
    if (*(a1 + 56) == 1 && (v3 = *(a1 + 48) - *a1, v3 > 0.0))
    {
      HIDWORD(v17) = 1;
    }

    else
    {
      HIDWORD(v17) = 0;
      v3 = 0.0;
    }

    if (*(a1 + 24) != 1)
    {
      LODWORD(v17) = 0;
LABEL_15:
      v4 = 0;
      v5 = 0.0;
      goto LABEL_16;
    }

    v2 = *(a1 + 16) - *a1;
    if (v2 <= 0.0)
    {
      LODWORD(v17) = 0;
      v2 = 0.0;
    }

    else
    {
      LODWORD(v17) = 1;
    }
  }

  else
  {
    v17 = 0;
    v4 = 0;
    v2 = 0.0;
    v3 = 0.0;
    v5 = 0.0;
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 32) - *(a1 + 16);
  v4 = 1;
LABEL_16:
  v6 = 0.0;
  if (*(a1 + 56) == 1 && *(a1 + 88) == 1)
  {
    v6 = *(a1 + 48) - *(a1 + 80);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v24[0] = @"numberOfInitiators";
  if (*(a1 + 68) == 1)
  {
    [NSNumber numberWithInt:*(a1 + 64)];
  }

  else
  {
    +[NSNull null];
  }
  v8 = ;
  v25[0] = v8;
  v24[1] = @"numberOfResponders";
  if (*(a1 + 76) == 1)
  {
    [NSNumber numberWithInt:*(a1 + 72)];
  }

  else
  {
    +[NSNull null];
  }
  v9 = ;
  v25[1] = v9;
  v24[2] = @"timeFromLockScreenToFirstMeasurement";
  if (HIDWORD(v17))
  {
    [NSNumber numberWithDouble:v3];
  }

  else
  {
    +[NSNull null];
  }
  v10 = ;
  v25[2] = v10;
  v24[3] = @"timeFromLockScreenToNiSessionStart";
  if (v17)
  {
    [NSNumber numberWithDouble:v2];
  }

  else
  {
    +[NSNull null];
  }
  v11 = ;
  v25[3] = v11;
  v24[4] = @"timeFromNiSessionStartToBluetoothDiscovery";
  if (v4)
  {
    [NSNumber numberWithDouble:v5];
  }

  else
  {
    +[NSNull null];
  }
  v12 = ;
  v25[4] = v12;
  v24[5] = @"timeFromRangingRequestToFirstMeasurement";
  if (v7)
  {
    [NSNumber numberWithDouble:v6];
  }

  else
  {
    +[NSNull null];
  }
  v13 = ;
  v25[5] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10033AE64;
  v22 = &unk_10098AED8;
  v15 = v14;
  v23 = v15;
  AnalyticsSendEventLazy();
  v16 = qword_1009F5518;
  if (os_log_type_enabled(qword_1009F5518, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#proximitywifica Uploaded device information through AnalyticsSendEventLazy", buf, 2u);
  }
}

_BYTE *sub_10033ADD0(_BYTE *result)
{
  if (result[8] == 1)
  {
    result[8] = 0;
  }

  if (result[24] == 1)
  {
    result[24] = 0;
  }

  if (result[40] == 1)
  {
    result[40] = 0;
  }

  if (result[56] == 1)
  {
    result[56] = 0;
  }

  if (result[68] == 1)
  {
    result[68] = 0;
  }

  if (result[76] == 1)
  {
    result[76] = 0;
  }

  if (result[88] == 1)
  {
    result[88] = 0;
  }

  if (result[100] == 1)
  {
    result[100] = 0;
  }

  if (result[108] == 1)
  {
    result[108] = 0;
  }

  return result;
}

void sub_10033AE6C(uint64_t a1, double a2)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  v3 = qword_1009F5518;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_1000195BC();
    }

    v4 = *a1;
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#proximitywifica lock screen time: %f", &v5, 0xCu);
  }
}

void sub_10033AF4C(uint64_t a1, double a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 1;
  if (*(a1 + 56) == 1)
  {
    *(a1 + 56) = 0;
  }

  v3 = qword_1009F5518;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      sub_1000195BC();
    }

    v4 = *(a1 + 16);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#proximitywifica session start time %f", &v5, 0xCu);
  }
}

void sub_10033B03C(uint64_t a1, double a2)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = 1;
  v3 = qword_1009F5518;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      sub_1000195BC();
    }

    v4 = *(a1 + 32);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#proximitywifica device discovery time %f", &v5, 0xCu);
  }
}

uint64_t sub_10033B11C(uint64_t result, double a2)
{
  *(result + 48) = a2;
  *(result + 56) = 1;
  return result;
}

uint64_t sub_10033B12C(uint64_t result, int a2, double a3)
{
  *(result + 64) = a2;
  *(result + 68) = 1;
  *(result + 80) = a3;
  *(result + 88) = 1;
  if (*(result + 100) != 1 || *(result + 96) < a2)
  {
    *(result + 96) = a2;
    *(result + 100) = 1;
  }

  return result;
}

uint64_t sub_10033B164(uint64_t result, int a2, double a3)
{
  *(result + 72) = a2;
  *(result + 76) = 1;
  *(result + 80) = a3;
  *(result + 88) = 1;
  if (*(result + 108) != 1 || *(result + 104) < a2)
  {
    *(result + 104) = a2;
    *(result + 108) = 1;
  }

  return result;
}

void sub_10033B19C()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F5518 = os_log_create("com.apple.nearbyd", "Analytics");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10033B240(uint64_t a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v22 = a8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &off_1009A5A68;
  *(a1 + 8) = off_1009A5B38;
  memcpy((a1 + 32), a3, 0x240uLL);
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC((a1 + 608), *a2, *(a2 + 1));
  }

  else
  {
    v23 = *a2;
    *(a1 + 624) = *(a2 + 2);
    *(a1 + 608) = v23;
  }

  v24 = a15[1];
  *(a1 + 632) = *a15;
  *(a1 + 640) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 672) = 0;
  *(a1 + 704) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = *(sub_10035D02C() + 7);
  *(a1 + 752) = 0;
  *(a1 + 754) = 0;
  *(a1 + 760) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 910) = 0;
  *(a1 + 912) = 1018212795;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0;
  *(a1 + 960) = 850045863;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1009) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1144) = 1018212795;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 850045863;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0;
  sub_100343450(a1 + 1256, a4);
  sub_1003434E8(a1 + 1288, a5);
  sub_1003434E8(a1 + 1320, a9);
  sub_100343878(a1 + 1352, a13);
  sub_100343580(a1 + 1384, a6);
  sub_100343618(a1 + 1416, a7);
  sub_1003436B0(a1 + 1448, a10);
  sub_100343748(a1 + 1480, a11);
  sub_1003437E0(a1 + 1512, a12);
  sub_100343910(a1 + 1544, a14);
  v25 = v22;
  *(a1 + 1576) = v25;
  v26 = *(a1 + 631);
  if (v26 < 0)
  {
    v26 = *(a1 + 616);
  }

  if (!v26)
  {
    __assert_rtn("RoseBaseSession", "NIServerRoseSession.mm", 76, "fSessionContainerIdentifier.size() > 0");
  }

  atomic_store(1u, (a1 + 909));

  return a1;
}

void sub_10033B4B0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033B624(uint64_t a1)
{
  *a1 = &off_1009A5A68;
  *(a1 + 8) = off_1009A5B38;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 608);
    if (*(a1 + 631) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 752);
    if (!*(a1 + 754))
    {
      v4 = &unk_10056C338;
    }

    v5 = *v4;
    v11 = 136315394;
    v12 = v3;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rose-ses,~rose::objects::RoseBaseSession (Session ID: %s, Ticket: %d)", &v11, 0x12u);
  }

  v6 = atomic_load((a1 + 908));
  if (v6)
  {
    sub_10033B864(a1);
  }

  sub_100024BF8(a1 + 1544);
  sub_100024CF8(a1 + 1512);
  sub_100024D78(a1 + 1480);
  sub_100024DF8(a1 + 1448);
  sub_100024EF8(a1 + 1416);
  sub_100024F78(a1 + 1384);
  sub_100024C78(a1 + 1352);
  sub_100024E78(a1 + 1320);
  sub_100024E78(a1 + 1288);
  sub_100024FF8(a1 + 1256);
  std::mutex::~mutex((a1 + 1192));
  std::condition_variable::~condition_variable((a1 + 1144));
  sub_100342800((a1 + 1128), 0);
  if (*(a1 + 1120) == 1)
  {
    v7 = *(a1 + 1072);
    if (v7)
    {
      *(a1 + 1080) = v7;
      operator delete(v7);
    }
  }

  if (*(a1 + 1056) == 1 && *(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  std::mutex::~mutex((a1 + 960));
  std::condition_variable::~condition_variable((a1 + 912));

  sub_1001FD8EC(a1 + 712);
  sub_1001FD96C(a1 + 680);
  sub_1001FD9EC(a1 + 648);
  v8 = *(a1 + 640);
  if (v8)
  {
    sub_10000AD84(v8);
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return a1;
}

void sub_10033B858(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100020444(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033B864(uint64_t a1)
{
  v1 = atomic_load((a1 + 908));
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#rose-ses,#hangup Session::invalidate", buf, 2u);
  }

  atomic_store(0, (a1 + 909));
  sub_1003439A8(a1 + 1256);
  sub_100343A2C(a1 + 1288);
  sub_100343AB0(a1 + 1384);
  sub_100343B34(a1 + 1416);
  sub_100343BB8(a1 + 1352);
  sub_100343C3C(a1 + 1448);
  if (*(a1 + 872) == 1)
  {
    *(a1 + 872) = 0;
  }

  if (*(a1 + 892) == 1)
  {
    *(a1 + 892) = 0;
  }

  if (*(a1 + 754) == 1)
  {
    v4 = *(a1 + 752);
    v5 = sub_10035D02C();
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(a1 + 16);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v18 = 0;
      v19 = 0;
      v8 = std::__shared_weak_count::lock(v6);
      v9 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v18 = v7;
        v19 = v8;
        std::__shared_weak_count::__release_weak(v6);
        sub_10000AD84(v9);
      }

      else
      {
        v18 = 0;
        v19 = 0;
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v11 = sub_10035DEEC(v5, &v18, v4);
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    v12 = *(a1 + 632);
    if (v12)
    {
      sub_1002E4314(v12, v4, (a1 + 608));
    }

    v10 = (v11 - 1);
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (a1 + 608);
      if (*(a1 + 631) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#rose-ses,Invalidate session. (Session ID: %s, Ticket: %d)", buf, 0x12u);
    }

    if (*(a1 + 754) == 1)
    {
      *(a1 + 754) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1198();
    }

    v10 = 0;
  }

  v15 = sub_10035D02C();
  sub_10003E810(buf, (a1 + 16));
  v17 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  sub_100361200(v15, &v17);
  if (*(&v17 + 1))
  {
    sub_10000AD84(*(&v17 + 1));
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }

  atomic_store(0, (a1 + 908));
  return v10;
}

void sub_10033BB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033BB80(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_10033BBB8(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

uint64_t sub_10033BBF4(uint64_t a1)
{
  v1 = atomic_load((a1 + 908));
  if (v1)
  {
    sub_1004C1234();
  }

  atomic_store(0, (a1 + 1136));
  v3 = sub_10035D02C();
  sub_10003E810(buf, (a1 + 16));
  v20 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  sub_100361128(v3, &v20);
  if (*(&v20 + 1))
  {
    sub_10000AD84(*(&v20 + 1));
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }

  v4 = sub_10035D02C();
  v5 = *(v4 + 406);
  v6 = *(v4 + 407);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1200();
    }

LABEL_30:
    v16 = 0xFFFFFFFFLL;
    if (!v6)
    {
      return v16;
    }

LABEL_31:
    sub_10000AD84(v6);
    return v16;
  }

  v7 = sub_10035D02C();
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 16);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v18 = 0;
    v19 = 0;
    v10 = std::__shared_weak_count::lock(v8);
    v11 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v18 = v9;
      v19 = v10;
      std::__shared_weak_count::__release_weak(v8);
      sub_10000AD84(v11);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v12 = sub_10035D888(v7, &v18);
  *(a1 + 752) = v12;
  *(a1 + 754) = BYTE2(v12);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
    if (*(a1 + 754))
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if ((v12 & 0x10000) == 0)
  {
LABEL_28:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C11CC();
    }

    goto LABEL_30;
  }

LABEL_18:
  v13 = qword_1009F9820;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (a1 + 608);
    if (*(a1 + 631) < 0)
    {
      v14 = *v14;
    }

    if ((*(a1 + 754) & 1) == 0)
    {
      sub_1000195BC();
    }

    v15 = *(a1 + 752);
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 1024;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#rose-ses,Service registration success. (Session ID: %s, Ticket: %d)", buf, 0x12u);
  }

  if (*(a1 + 892) == 1)
  {
    *(a1 + 892) = 0;
  }

  v16 = 0;
  atomic_store(1u, (a1 + 908));
  if (v6)
  {
    goto LABEL_31;
  }

  return v16;
}

void sub_10033BE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_10000AD84(v14);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10033BEE8(uint64_t a1)
{
  v1 = atomic_load((a1 + 908));
  if ((v1 & 1) == 0)
  {
    sub_1004C12CC();
  }

  v2 = *(a1 + 33);
  if (v2 == 100)
  {
    sub_1004C1364();
  }

  return v2 == 0;
}

BOOL sub_10033BF24(uint64_t a1, uint64_t a2)
{
  v16.__m_ = (a1 + 1192);
  v16.__owns_ = 1;
  std::mutex::lock((a1 + 1192));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rose-ses,#time-convert waitForTimeConversionReadiness before", buf, 2u);
  }

  v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a2;
  while (1)
  {
    v6 = atomic_load((a1 + 1136));
    if (v6 == 1)
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v5.__d_.__rep_)
    {
      goto LABEL_20;
    }

    v7.__d_.__rep_ = v5.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v7.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v8.__d_.__rep_)
      {
        if (v8.__d_.__rep_ < 1)
        {
          if (v8.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_14;
          }

          v9 = 0x8000000000000000;
        }

        else
        {
          if (v8.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v9 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_15;
          }

LABEL_14:
          v9 = 1000 * v8.__d_.__rep_;
LABEL_15:
          if (v9 > (v7.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v10.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:
            std::condition_variable::__do_timed_wait((a1 + 1144), &v16, v10);
            std::chrono::steady_clock::now();
            goto LABEL_19;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v10.__d_.__rep_ = v9 + v7.__d_.__rep_;
      goto LABEL_18;
    }

LABEL_19:
    if (std::chrono::steady_clock::now().__d_.__rep_ >= v5.__d_.__rep_)
    {
LABEL_20:
      v11 = atomic_load((a1 + 1136));
      v12 = v11 == 1;
      goto LABEL_22;
    }
  }

  v12 = 1;
LABEL_22:
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "No";
    if (v12)
    {
      v14 = "Yes";
    }

    *buf = 136315138;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#rose-ses,#time-convert waitForTimeConversionReadiness after. Is ready? %s", buf, 0xCu);
  }

  if (v16.__owns_)
  {
    std::mutex::unlock(v16.__m_);
  }

  return v12;
}

void sub_10033C158(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  dispatch_assert_queue_V2(*(v3 + 744));
  v5 = atomic_load((v4 + 908));
  if ((v5 & 1) == 0)
  {
    return;
  }

  v6 = atomic_load((v4 + 909));
  if ((v6 & 1) == 0)
  {
    return;
  }

  v7 = *(v2 + 600) == 1 && *(v2 + 72) == 0;
  if (v7 && *(v2 + 8) == 1)
  {
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v2[1];
    v62 = *v2;
    v63 = v10;
    v64 = v2[2];
    sub_100020458(v65, (v2 + 3));
    sub_1000206E0(v71, (v2 + 38));
    sub_1000207A0(v74, v2 + 95);
    memcpy(v78, v2 + 55, sizeof(v78));
    sub_10002096C(v79, v2 + 91);
    v11 = *(v4 + 1576);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10033C798;
    block[3] = &unk_1009A5B60;
    block[4] = v9;
    v40 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v41 = v62;
    v42 = v63;
    v43 = v64;
    sub_100020458(&v44, v65);
    sub_1000206E0(v50, v71);
    sub_1000207A0(&v53, v74);
    memcpy(v57, v78, sizeof(v57));
    sub_10002096C(&v58, v79);
    dispatch_async(v11, block);
    if (v61 == 1 && __p)
    {
      v60 = __p;
      operator delete(__p);
    }

    if (v56 == 1 && v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v52 == 1)
    {
      sub_10002074C(v51, v51[1]);
    }

    if (v49 == 1)
    {
      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }
    }

    v12 = v40;
    if (!v40)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v2[1];
    v62 = *v2;
    v63 = v14;
    v64 = v2[2];
    sub_100020458(v65, (v2 + 3));
    sub_1000206E0(v71, (v2 + 38));
    sub_1000207A0(v74, v2 + 95);
    memcpy(v78, v2 + 55, sizeof(v78));
    sub_10002096C(v79, v2 + 91);
    v15 = *(v4 + 1576);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3321888768;
    v16[2] = sub_10033CA1C;
    v16[3] = &unk_1009A5B60;
    v16[4] = v13;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v62;
    v19 = v63;
    v20 = v64;
    sub_100020458(&v21, v65);
    sub_1000206E0(v27, v71);
    sub_1000207A0(&v30, v74);
    memcpy(v34, v78, sizeof(v34));
    sub_10002096C(&v35, v79);
    dispatch_async(v15, v16);
    if (v38 == 1 && v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v33 == 1 && v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v29 == 1)
    {
      sub_10002074C(v28, v28[1]);
    }

    if (v26 == 1)
    {
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }
    }

    v12 = v17;
    if (!v17)
    {
      goto LABEL_47;
    }
  }

  std::__shared_weak_count::__release_weak(v12);
LABEL_47:
  if (v82 == 1 && v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v77 == 1 && v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v73 == 1)
  {
    sub_10002074C(v72, v72[1]);
  }

  if (v70 == 1)
  {
    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_10033C63C(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0xA60]) == 1)
  {
    v4 = STACK[0xA38];
    if (STACK[0xA38])
    {
      STACK[0xA40] = v4;
      operator delete(v4);
    }
  }

  if (LOBYTE(STACK[0x9E8]) == 1)
  {
    sub_10002074C(&STACK[0x968], STACK[0x970]);
  }

  sub_100020B80(v2 + 96);
  if (STACK[0x6F0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x6F0]);
  }

  sub_10001EEE4(&STACK[0xD90]);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10033C798(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1312))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1312);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033C844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10033C864(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 48) = v5;
  sub_100020458(a1 + 96, a2 + 96);
  sub_1000206E0((a1 + 656), a2 + 656);
  sub_1000207A0(a1 + 808, (a2 + 808));
  memcpy((a1 + 928), (a2 + 928), 0x239uLL);
  return sub_10002096C(a1 + 1504, (a2 + 1504));
}

void sub_10033C8F0(_Unwind_Exception *a1)
{
  if (*(v1 + 920) == 1)
  {
    v3 = *(v1 + 880);
    if (v3)
    {
      *(v1 + 888) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 800) == 1)
  {
    sub_10002074C(v1 + 672, *(v1 + 680));
  }

  sub_100020B80(v1 + 96);
  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10033C95C(uint64_t a1)
{
  if (*(a1 + 1728) == 1)
  {
    v2 = *(a1 + 1704);
    if (v2)
    {
      *(a1 + 1712) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 920) == 1)
  {
    v3 = *(a1 + 880);
    if (v3)
    {
      *(a1 + 888) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 800) == 1)
  {
    sub_10002074C(a1 + 672, *(a1 + 680));
  }

  if (*(a1 + 648) == 1)
  {
    v4 = *(a1 + 232);
    if (v4)
    {
      *(a1 + 240) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 168);
    if (v5)
    {
      *(a1 + 176) = v5;
      operator delete(v5);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_10033CA1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1344))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1344);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033CAE8(uint64_t a1, __int128 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = atomic_load((a1 + 908));
  if (v4)
  {
    v5 = atomic_load((a1 + 909));
    if (v5)
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = a2[9];
      v35 = a2[8];
      v36 = v8;
      v37 = a2[10];
      v9 = a2[5];
      v31 = a2[4];
      v32 = v9;
      v10 = a2[7];
      v33 = a2[6];
      v34 = v10;
      v11 = a2[1];
      v27 = *a2;
      v28 = v11;
      v12 = a2[3];
      v29 = a2[2];
      v30 = v12;
      v13 = *(a1 + 1576);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3321888768;
      v14[2] = sub_10033CC2C;
      v14[3] = &unk_1009A5B90;
      v14[4] = v6;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = v35;
      v25 = v36;
      v26 = v37;
      v20 = v31;
      v21 = v32;
      v22 = v33;
      v23 = v34;
      v16 = v27;
      v17 = v28;
      v18 = v29;
      v19 = v30;
      dispatch_async(v13, v14);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_10033CC2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1376))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1376);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033CCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CCF8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10033CD14(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10033CD24(uint64_t a1, __int128 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = atomic_load((a1 + 908));
  if (v4)
  {
    v5 = atomic_load((a1 + 909));
    if (v5)
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = a2[1];
      v15 = *a2;
      v16 = v8;
      v17 = a2[2];
      v9 = *(a1 + 1576);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3321888768;
      v10[2] = sub_10033CE28;
      v10[3] = &unk_1009A5BC0;
      v10[4] = v6;
      v11 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v15;
      v13 = v16;
      v14 = v17;
      dispatch_async(v9, v10);
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_10033CE28(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1568))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1568);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033CED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033CEF4(uint64_t a1, unsigned __int16 *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = *a2;
    v11 = *(a2 + 5);
    sub_10033D18C(a2 + 1);
    v12 = v21 >= 0 ? &v20 : v20;
    *buf = 67109635;
    v23 = v10;
    LOWORD(v24[0]) = 2049;
    *(v24 + 2) = v11;
    WORD1(v24[1]) = 2081;
    *(&v24[1] + 4) = v12;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#rose-ses,didReceiveRemoteData (tkt %d, addr 0x%{private}llx): %{private}s", buf, 0x1Cu);
    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  dispatch_assert_queue_V2(*(a1 + 744));
  v5 = atomic_load((a1 + 908));
  if (v5)
  {
    v6 = atomic_load((a1 + 909));
    if (v6)
    {
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = *a2;
      memset(v24, 0, sizeof(v24));
      sub_100009A48(v24, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
      v25 = *(a2 + 2);
      v9 = *(a1 + 1576);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_10033D42C;
      block[3] = &unk_1009A5BF0;
      block[4] = v8;
      v14 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *buf;
      v17 = 0;
      v18 = 0;
      __p = 0;
      sub_100009A48(&__p, v24[0], v24[1], v24[1] - v24[0]);
      v19 = v25;
      dispatch_async(v9, block);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v24[0])
      {
        v24[1] = v24[0];
        operator delete(v24[0]);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_10033D13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10033D18C(unsigned __int8 **a1)
{
  sub_10026B0D4(&v9);
  v2 = v9;
  v3 = &v9 + *(v9 - 3);
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((&v9 + *(v9 - 3)));
    v4 = std::locale::use_facet(&v13, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v13);
    v2 = v9;
  }

  *(v3 + 36) = 48;
  *(&v9 + *(v2 - 3) + 8) = *(&v9 + *(v2 - 3) + 8) & 0xFFFFFFB5 | 8;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      *(&v11[1].__locale_ + *(v9 - 3)) = 2;
      v7 = std::ostream::operator<<();
      sub_10000EA44(v7, " ", 1);
      ++v5;
    }

    while (v5 != v6);
  }

  std::stringbuf::str();
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10033D3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10033D42C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1408))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1408);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033D4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

__n128 sub_10033D4F8(__n128 *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[2].n128_u64[0] = *(a2 + 32);
  a1[2].n128_u64[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  a1[3].n128_u64[1] = 0;
  a1[3].n128_u16[0] = v5;
  a1[4] = 0uLL;
  sub_100009A48(&a1[3].n128_i64[1], *(a2 + 56), *(a2 + 64), *(a2 + 64) - *(a2 + 56));
  result = *(a2 + 80);
  a1[5] = result;
  return result;
}

void sub_10033D55C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033D574(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10033D5C8(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = atomic_load((a1 + 908));
  if (v4)
  {
    v5 = atomic_load((a1 + 909));
    if (v5)
    {
      if (*(a1 + 754))
      {
        v6 = *(a1 + 752);
        if (*(a2 + 26) != v6)
        {
          sub_1004C13D0();
        }

        v7 = sub_10033D950(a1);
        if (*(a2 + 31) == 2)
        {
          v8 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(a2 + 30);
            v10 = (a1 + 608);
            if (*(a1 + 631) < 0)
            {
              v10 = *v10;
            }

            *buf = 67109634;
            v33 = v9;
            v34 = 2080;
            *v35 = v10;
            *&v35[8] = 1024;
            *&v35[10] = v6;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#rose-ses,#throttle interrupted by silent restart, but eventually succeeded in updating to subrate %d. (Session ID: %s, Ticket: %d)", buf, 0x18u);
          }

          v11 = 0;
          atomic_store(*(a2 + 30), (a1 + 910));
          v12 = -1;
        }

        else if (*(a2 + 32))
        {
          v13 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            v23 = *(a2 + 30);
            v24 = *(a2 + 32);
            v25 = (a1 + 608);
            if (*(a1 + 631) < 0)
            {
              v25 = *v25;
            }

            *buf = 67109890;
            v33 = v23;
            v34 = 1024;
            *v35 = v24;
            *&v35[4] = 2080;
            *&v35[6] = v25;
            *&v35[14] = 1024;
            *&v35[16] = v6;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#rose-ses,#throttle failure to throttle. Current known subrate: %d. FW error code: 0x%x. (Session ID: %s, Ticket: %d)", buf, 0x1Eu);
          }

          atomic_store(*(a2 + 30), (a1 + 910));
          v12 = -1;
          v11 = -1;
        }

        else
        {
          v14 = qword_1009F9820;
          if (*(a2 + 31))
          {
            sub_1004C1468(qword_1009F9820);
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a2 + 63);
            v16 = *(a2 + 62);
            v17 = *(a2 + 60);
            v18 = (a1 + 608);
            if (*(a1 + 631) < 0)
            {
              v18 = *v18;
            }

            *buf = 67110146;
            v33 = v15;
            v34 = 1024;
            *v35 = v16;
            *&v35[4] = 1024;
            *&v35[6] = v17;
            *&v35[10] = 2080;
            *&v35[12] = v18;
            v36 = 1024;
            v37 = v6;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#rose-ses,#throttle successful throttle. New: %d, Old: %d, Cycle: %d. (Session ID: %s, Ticket: %d)", buf, 0x24u);
          }

          v11 = 0;
          atomic_store(*(a2 + 63), (a1 + 910));
          v12 = *(a2 + 60);
        }

        v19 = sub_10033D950(a1);
        v20 = *(a1 + 16);
        v21 = *(a1 + 24);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = *(a1 + 1576);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3321888768;
        v26[2] = sub_10033D994;
        v26[3] = &unk_1009A5C20;
        v26[4] = v20;
        v27 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v11;
        v29 = v19;
        v30 = v7;
        v31 = v12;
        dispatch_async(v22, v26);
        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C1390();
      }
    }
  }
}

float sub_10033D950(uint64_t a1)
{
  if (sub_10033BEE8(a1))
  {
    sub_1004C1504();
  }

  v2 = atomic_load((a1 + 910));
  return v2 / 19.0;
}

void sub_10033D994(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1472))
      {
        v10 = *(a1 + 32);
        v11 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(a1 + 52);
        v7 = *(a1 + 56);
        v8 = *(a1 + 60);
        v15 = *(a1 + 48);
        v13 = v7;
        v14 = v6;
        v12 = v8;
        v9 = *(v5 + 1472);
        if (!v9)
        {
          sub_100037B10();
        }

        (*(*v9 + 48))(v9, &v10, &v15, &v14, &v13, &v12);
        if (v11)
        {
          sub_10000AD84(v11);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033DA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033DA84(uint64_t a1, void *a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = atomic_load((a1 + 908));
  if (v4)
  {
    v5 = atomic_load((a1 + 909));
    if (v5)
    {
      if (a2[2])
      {
        std::mutex::lock((a1 + 960));
        operator new();
      }

      v6 = a2[3];
      if (v6)
      {
        if (*v6)
        {
          if (*v6 == 1)
          {
            v7 = *(v6 + 29);
            v8 = *(v6 + 33);
            v9 = *(v6 + 37);
            v10 = *(v6 + 36);
            v11 = *(v6 + 41);
            v12 = *(v6 + 49);
            v13 = *(v6 + 34);
            v14 = *(v6 + 57);
            v15 = *(v6 + 61);
            v16 = *(v6 + 62);
            v17 = *(v6 + 63);
            v18 = *(v6 + 65);
            v19 = *(v6 + 69);
            v20 = *(v6 + 73);
            v21 = *(v6 + 74);
            v22 = *(v6 + 76);
            v23 = *(v6 + 77);
            v24 = *(v6 + 79);
            v25 = *(v6 + 80);
            v26 = *(v6 + 82);
            v27 = *(v6 + 83);
            LODWORD(v97) = v7;
            BYTE4(v97) = v8;
            DWORD2(v97) = v9;
            BYTE12(v97) = v10;
            *&v98 = v11;
            *(&v98 + 1) = v12;
            LODWORD(v99) = v14;
            WORD2(v99) = v15;
            BYTE6(v99) = v16;
            WORD4(v99) = v17;
            BYTE10(v99) = v13 & 0xF;
            BYTE11(v99) = v13 >> 4;
            v28 = v18 / 1.0e12 * 299792458.0;
            *(&v99 + 3) = v28;
            LODWORD(v100) = v19;
            BYTE4(v100) = v20;
            *(&v100 + 1) = vcvtd_n_f64_s32(v21, 2uLL);
            LOBYTE(v101) = v22;
            *(&v101 + 1) = vcvtd_n_f64_s32(v23, 2uLL);
            LOBYTE(v102) = v24;
            *(&v102 + 1) = vcvtd_n_f64_s32(v25, 2uLL);
            LOBYTE(v103) = v26;
            *(&v103 + 1) = vcvtd_n_f64_s32(v27, 2uLL);
            v29 = qword_1009F9820;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              sub_10039EB08(&v97);
              v30 = v85 >= 0 ? __p : __p[0];
              *buf = 136315138;
              v96 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#rose-ses,Anchor ranging block summary: %s", buf, 0xCu);
              if (v85 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v31 = *(a1 + 632);
            if (v31)
            {
              (*(*v31 + 96))(v31, &v97);
            }

            v32 = *(a1 + 16);
            v33 = *(a1 + 24);
            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v34 = *(a1 + 1576);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3321888768;
            block[2] = sub_10033E4CC;
            block[3] = &unk_1009A5C50;
            block[4] = v32;
            v87 = v33;
            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v92 = v101;
            v93 = v102;
            v94 = v103;
            v88 = v97;
            v89 = v98;
            v90 = v99;
            v91 = v100;
            dispatch_async(v34, block);
            if (v87)
            {
              std::__shared_weak_count::__release_weak(v87);
            }

            if (v33)
            {
              std::__shared_weak_count::__release_weak(v33);
            }
          }
        }

        else
        {
          v46 = *(v6 + 33);
          v47 = *(v6 + 37);
          v48 = *(v6 + 41);
          v49 = *(v6 + 49);
          v50 = *(v6 + 53);
          v51 = *(v6 + 34);
          v52 = *(v6 + 57);
          v53 = *(v6 + 61);
          v54 = *(v6 + 90);
          v55 = *(v6 + 91);
          v56 = *(v6 + 92);
          v57 = *(v6 + 93);
          v58 = *(v6 + 95);
          LODWORD(v97) = *(v6 + 29);
          BYTE4(v97) = v46;
          DWORD2(v97) = v47;
          *&v98 = v48;
          DWORD2(v98) = v49;
          BYTE12(v98) = v51 & 0xF;
          BYTE13(v98) = v51 >> 4;
          *&v99 = __PAIR64__(v52, v50);
          WORD4(v99) = v53;
          BYTE10(v99) = v54;
          sub_10039C768(v55, &v100);
          BYTE8(v101) = v56;
          WORD5(v101) = v57;
          BYTE12(v101) = 0;
          LOBYTE(v102) = 0;
          BYTE4(v102) = v58;
          v103 = 0uLL;
          *(&v102 + 1) = 0;
          if (*(v6 + 96))
          {
            v59 = 0;
            v60 = (v6 + 99);
            do
            {
              sub_10033E598(&v97, *(v60 - 2), *(v60 - 1), *v60);
              v60 += 2;
              ++v59;
            }

            while (v59 < *(v6 + 96));
          }

          v61 = qword_1009F9820;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            sub_10039D078(&v97);
            v62 = v85 >= 0 ? __p : __p[0];
            *buf = 136315138;
            v96 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#rose-ses,Ranging block summary: %s", buf, 0xCu);
            if (v85 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v63 = qword_1009F9820;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            sub_10039E7A0(&v97);
            v64 = v85 >= 0 ? __p : __p[0];
            *buf = 136315138;
            v96 = v64;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#rose-ses,RBSS: %s", buf, 0xCu);
            if (v85 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v65 = *(a1 + 632);
          if (v65)
          {
            (*(*v65 + 88))(v65, &v97);
          }

          v67 = *(a1 + 16);
          v66 = *(a1 + 24);
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10033E698(__p, &v97);
          v68 = *(a1 + 1576);
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3321888768;
          v81[2] = sub_10033E740;
          v81[3] = &unk_1009A5C80;
          v81[4] = v67;
          v82 = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10033E698(v83, __p);
          dispatch_async(v68, v81);
          sub_1001FD220(v83);
          if (v82)
          {
            std::__shared_weak_count::__release_weak(v82);
          }

          sub_1001FD220(__p);
          if (v66)
          {
            std::__shared_weak_count::__release_weak(v66);
          }

          sub_1001FD220(&v97);
        }
      }

      else
      {
        v35 = a2[4];
        if (v35)
        {
          v36 = *v35;
          if (v36 <= 4)
          {
            v37 = *v35;
          }

          else
          {
            v37 = 0;
          }

          v38 = (*(*a1 + 152))(a1);
          sub_1003431A8(&v97, v38, v37, *(a2[4] + 4), (a2[4] + 6), 6, *(a2[4] + 20), *(a2[4] + 22), *(a2[4] + 24));
          v39 = qword_1009F9820;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            sub_1001EDF34(&v97);
            v40 = v85 >= 0 ? __p : __p[0];
            *buf = 136315138;
            v96 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#rose-ses,Session stats: %s", buf, 0xCu);
            if (v85 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v41 = *(a1 + 632);
          if (v41)
          {
            (*(*v41 + 104))(v41, &v97);
          }

          v42 = *(a2[4] + 3);
          v43 = *(a1 + 16);
          v44 = *(a1 + 24);
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = *(a1 + 1576);
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3321888768;
          v71[2] = sub_10033E93C;
          v71[3] = &unk_1009A5CB0;
          v71[4] = a1;
          v71[5] = v43;
          v72 = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v73 = v97;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          sub_1001FBC68(&v74, *(&v97 + 1), v98, (v98 - *(&v97 + 1)) >> 1);
          v77 = v99;
          v78 = v100;
          v79 = v37;
          v80 = v42;
          dispatch_async(v45, v71);
          if ((v36 > 4) | (1u >> v36) & 1)
          {
            std::mutex::lock((a1 + 960));
            sub_10033EB80(a1 + 1064, &v97);
            std::mutex::unlock((a1 + 960));
            std::condition_variable::notify_one((a1 + 912));
          }

          if (v74)
          {
            v75 = v74;
            operator delete(v74);
          }

          if (v72)
          {
            std::__shared_weak_count::__release_weak(v72);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_weak(v44);
          }

          if (*(&v97 + 1))
          {
            *&v98 = *(&v97 + 1);
            operator delete(*(&v97 + 1));
          }
        }

        else
        {
          v69 = qword_1009F9820;
          if (a2[5])
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              v70 = *(a2[5] + 24);
              LODWORD(v97) = 67109120;
              DWORD1(v97) = v70;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#rose-ses,KeyExpiredEvent for uwb session id %u.", &v97, 8u);
            }
          }

          else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004C15B0();
          }
        }
      }
    }
  }
}

void sub_10033E4CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1536))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1536);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033E578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033E598(void *a1, char a2, char a3, unsigned int a4)
{
  v7 = vcvtd_n_f64_s32(a4, 2uLL);
  v8 = a1[12];
  v9 = a1[13];
  if (v8 >= v9)
  {
    v11 = a1[11];
    v12 = v8 - v11;
    v13 = (v8 - v11) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      sub_100019B38();
    }

    v15 = v9 - v11;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_1001FD1D8((a1 + 11), v14);
    }

    v16 = 16 * v13;
    *v16 = a2;
    *(v16 + 1) = a3;
    *(v16 + 8) = v7;
    v10 = 16 * v13 + 16;
    memcpy(0, v11, v12);
    v17 = a1[11];
    a1[11] = 0;
    a1[12] = v10;
    a1[13] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    *(v8 + 1) = a3;
    v10 = v8 + 16;
    *(v8 + 8) = v7;
  }

  a1[12] = v10;
}

uint64_t sub_10033E698(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 48) = 0;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_1001FD0A4((a1 + 48), *(a2 + 6), *(a2 + 7), *(a2 + 7) - *(a2 + 6));
  v6 = *(a2 + 9);
  v7 = *(a2 + 77);
  *(a1 + 88) = 0;
  *(a1 + 77) = v7;
  *(a1 + 72) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1001FD120((a1 + 88), *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 4);
  return a1;
}

void sub_10033E724(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033E740(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1504))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1504);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033E7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10033E80C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 75);
  *(a1 + 96) = 0;
  *(a1 + 75) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_1001FD0A4((a1 + 96), *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
  v8 = *(a2 + 120);
  v9 = *(a2 + 125);
  *(a1 + 136) = 0;
  *(a1 + 125) = v9;
  *(a1 + 120) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return sub_1001FD120((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 4);
}

void sub_10033E8A8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033E8D8(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10033E93C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = v5[84];
        if (v6)
        {
          (*(*v6 + 48))(v6, a1 + 56);
        }

        if (v5[92])
        {
          v7 = sub_100005288();
          v8 = *(a1 + 112);
          if ((v8 - 2) < 3)
          {
            sub_1002317BC((v5 + 89), v8, v7);
          }
        }

        if (v5[88] && *(a1 + 112) == 1)
        {
          sub_1004C15F0(a1, &v9);
          sub_10033EA50((v5 + 85), v9);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

uint64_t sub_10033EA50(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 sub_10033EAA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_1001FBC68((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 1);
  result = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = result;
  return result;
}

void sub_10033EB14(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033EB2C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_10033EB80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      sub_1001FBB44((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 1);
    }

    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_1001FBC68((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 1);
    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v6;
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_10033EC2C(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = atomic_load((a1 + 908));
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = atomic_load((a1 + 909));
  if ((v5 & 1) == 0)
  {
    return;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    return;
  }

  v7 = *(v6 + 3);
  v8 = *v6;
  if (v7 == 25)
  {
    if (v8 != 1)
    {
      if (*v6)
      {
        return;
      }

      v63 = v6[33];
      v64 = *(v6 + 37);
      v65 = *(v6 + 41);
      v66 = *(v6 + 49);
      v67 = *(v6 + 51);
      v68 = *(v6 + 53);
      v69 = *(v6 + 57);
      v70 = *(v6 + 61);
      v71 = v6[134];
      v72 = v6[135];
      v73 = v6[129];
      v74 = v6[133];
      LODWORD(v113) = *(v6 + 29);
      BYTE4(v113) = v63;
      DWORD2(v113) = v64;
      *&v114 = v65;
      WORD4(v114) = v66;
      WORD5(v114) = v67;
      WORD6(v114) = 257;
      *&v115 = __PAIR64__(v69, v68);
      WORD4(v115) = v70;
      BYTE10(v115) = v71;
      sub_10039C768(v72, &v116);
      BYTE8(v117) = v73;
      WORD5(v117) = v67;
      BYTE12(v117) = 0;
      LOBYTE(v118) = 0;
      BYTE4(v118) = v74;
      v119 = 0uLL;
      *(&v118 + 1) = 0;
      v75 = qword_1009F9820;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        sub_10039D078(&v113);
        v76 = (SBYTE7(v134) & 0x80u) == 0 ? &v133 : v133;
        *buf = 136315138;
        v141 = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#rose-ses,Initiator ranging block summary: %s", buf, 0xCu);
        if (SBYTE7(v134) < 0)
        {
          operator delete(v133);
        }
      }

      v77 = *(a1 + 632);
      if (v77)
      {
        (*(*v77 + 88))(v77, &v113);
      }

      v78 = *(a1 + 16);
      v59 = *(a1 + 24);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10033E698(&v133, &v113);
      v79 = *(a1 + 1576);
      v101[0] = _NSConcreteStackBlock;
      v101[1] = 3321888768;
      v101[2] = sub_10033F9F4;
      v101[3] = &unk_1009A5C80;
      v101[4] = v78;
      v102 = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10033E698(v103, &v133);
      dispatch_async(v79, v101);
      sub_1001FD220(v103);
      v62 = v102;
      if (!v102)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    LOBYTE(v113) = 0;
    v120 = 0;
    v37 = *(sub_1000054A8() + 187);
    if (v37 == 1)
    {
      v38 = 97;
      v39 = 96;
      v40 = 99;
    }

    else
    {
      if (v37 != 2)
      {
        goto LABEL_67;
      }

      v38 = 98;
      v39 = 97;
      v40 = 100;
    }

    v80 = *(a2 + 16);
    v81 = vcvtd_n_f64_s32(*(v80 + v38), 2uLL);
    v82 = *(v80 + v39);
    v83 = vcvtd_n_f64_s32(*(v80 + 79), 2uLL);
    v84 = *(v80 + 78);
    v85 = *(v80 + v40);
    v86 = *(v80 + 66);
    v87 = *(v80 + 64);
    v88 = *(v80 + 63);
    v89 = *(v80 + 61);
    v90 = *(v80 + 57);
    v91 = *(v80 + 49);
    *&v85 = v85 / 1.0e12 * 299792458.0;
    v92 = *(v80 + 41);
    v93 = *(v80 + 36);
    v94 = *(v80 + 37);
    v95 = *(v80 + 33);
    LODWORD(v113) = *(v80 + 29);
    BYTE4(v113) = v95;
    DWORD2(v113) = v94;
    BYTE12(v113) = v93;
    *&v114 = v92;
    *(&v114 + 1) = v91;
    LODWORD(v115) = v90;
    WORD2(v115) = v89;
    BYTE6(v115) = v88;
    WORD4(v115) = v87;
    WORD5(v115) = 257;
    HIDWORD(v115) = LODWORD(v85);
    LODWORD(v116) = v86;
    BYTE4(v116) = 0;
    *(&v116 + 1) = 0;
    LOBYTE(v117) = v84;
    *(&v117 + 1) = v83;
    LOBYTE(v118) = 0;
    *(&v118 + 1) = 0;
    LOBYTE(v119) = v82;
    *(&v119 + 1) = v81;
    v120 = 1;
LABEL_67:
    if (v120 != 1)
    {
      return;
    }

    v96 = qword_1009F9820;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      sub_10039EB08(&v113);
      v97 = (SBYTE7(v134) & 0x80u) == 0 ? &v133 : v133;
      *buf = 136315138;
      v141 = v97;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#rose-ses,Responder ranging block summary: %s", buf, 0xCu);
      if (SBYTE7(v134) < 0)
      {
        operator delete(v133);
      }
    }

    v98 = *(a1 + 632);
    if (v98)
    {
      if ((v120 & 1) == 0)
      {
        sub_1000195BC();
      }

      (*(*v98 + 96))(v98, &v113);
    }

    v99 = *(a1 + 16);
    v34 = *(a1 + 24);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if ((v120 & 1) == 0)
    {
      sub_1000195BC();
    }

    v137 = v117;
    v138 = v118;
    v139 = v119;
    v133 = v113;
    v134 = v114;
    v135 = v115;
    v136 = v116;
    v100 = *(a1 + 1576);
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3321888768;
    v104[2] = sub_10033F928;
    v104[3] = &unk_1009A5C50;
    v104[4] = v99;
    v105 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v110 = v137;
    v111 = v138;
    v112 = v139;
    v106 = v133;
    v107 = v134;
    v109 = v136;
    v108 = v135;
    dispatch_async(v100, v104);
    v36 = v105;
    if (!v105)
    {
      goto LABEL_21;
    }

LABEL_20:
    std::__shared_weak_count::__release_weak(v36);
LABEL_21:
    if (v34)
    {
      std::__shared_weak_count::__release_weak(v34);
    }

    return;
  }

  if (v7 != 24)
  {
    return;
  }

  if (v8 == 1)
  {
    v9 = *(v6 + 29);
    v10 = v6[33];
    v11 = *(v6 + 37);
    v12 = v6[36];
    v13 = *(v6 + 41);
    v14 = *(v6 + 49);
    v15 = *(v6 + 57);
    v16 = v6[61];
    v17 = v6[62];
    v18 = *(v6 + 63);
    v19 = *(v6 + 65);
    v20 = *(v6 + 69);
    v21 = v6[73];
    v22 = *(v6 + 37);
    v23 = v6[76];
    v24 = *(v6 + 77);
    v25 = v6[79];
    v26 = *(v6 + 40);
    v27 = v6[82];
    v28 = *(v6 + 83);
    LODWORD(v113) = v9;
    BYTE4(v113) = v10;
    DWORD2(v113) = v11;
    BYTE12(v113) = v12;
    *&v114 = v13;
    *(&v114 + 1) = v14;
    LODWORD(v115) = v15;
    WORD2(v115) = v16;
    BYTE6(v115) = v17;
    WORD4(v115) = v18;
    WORD5(v115) = 257;
    v29 = v19 / 1.0e12 * 299792458.0;
    *(&v115 + 3) = v29;
    LODWORD(v116) = v20;
    BYTE4(v116) = v21;
    *(&v116 + 1) = vcvtd_n_f64_s32(v22, 2uLL);
    LOBYTE(v117) = v23;
    *(&v117 + 1) = vcvtd_n_f64_s32(v24, 2uLL);
    LOBYTE(v118) = v25;
    *(&v118 + 1) = vcvtd_n_f64_s32(v26, 2uLL);
    LOBYTE(v119) = v27;
    *(&v119 + 1) = vcvtd_n_f64_s32(v28, 2uLL);
    v30 = qword_1009F9820;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      sub_10039EB08(&v113);
      v31 = (SBYTE7(v134) & 0x80u) == 0 ? &v133 : v133;
      *buf = 136315138;
      v141 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#rose-ses,Responder ranging block summary: %s", buf, 0xCu);
      if (SBYTE7(v134) < 0)
      {
        operator delete(v133);
      }
    }

    v32 = *(a1 + 632);
    if (v32)
    {
      (*(*v32 + 96))(v32, &v113);
    }

    v33 = *(a1 + 16);
    v34 = *(a1 + 24);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v137 = v117;
    v138 = v118;
    v139 = v119;
    v133 = v113;
    v134 = v114;
    v135 = v115;
    v136 = v116;
    v35 = *(a1 + 1576);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10033F790;
    block[3] = &unk_1009A5C50;
    block[4] = v33;
    v125 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v130 = v137;
    v131 = v138;
    v132 = v139;
    v126 = v133;
    v127 = v134;
    v128 = v135;
    v129 = v136;
    dispatch_async(v35, block);
    v36 = v125;
    if (!v125)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (*v6)
  {
    return;
  }

  v41 = v6[33];
  v42 = *(v6 + 37);
  v43 = *(v6 + 41);
  v44 = *(v6 + 49);
  v45 = *(v6 + 51);
  v46 = *(v6 + 53);
  v47 = *(v6 + 57);
  v48 = v6[61];
  v49 = v6[90];
  v50 = v6[91];
  v51 = v6[92];
  v52 = v6[95];
  LODWORD(v113) = *(v6 + 29);
  BYTE4(v113) = v41;
  DWORD2(v113) = v42;
  *&v114 = v43;
  WORD4(v114) = v44;
  WORD5(v114) = v45;
  WORD6(v114) = 257;
  *&v115 = __PAIR64__(v47, v46);
  WORD4(v115) = v48;
  BYTE10(v115) = v49;
  sub_10039C768(v50, &v116);
  BYTE8(v117) = v51;
  WORD5(v117) = v45;
  BYTE12(v117) = 0;
  LOBYTE(v118) = 0;
  BYTE4(v118) = v52;
  v119 = 0uLL;
  *(&v118 + 1) = 0;
  if (v6[96])
  {
    v53 = 0;
    v54 = (v6 + 99);
    do
    {
      sub_10033E598(&v113, *(v54 - 2), *(v54 - 1), *v54);
      v54 += 2;
      ++v53;
    }

    while (v53 < v6[96]);
  }

  if (v6[62])
  {
    v55 = *(v6 + 63) / 1.0e12 * 299792458.0;
    *(&v117 + 3) = v55;
    LOBYTE(v118) = 1;
  }

  v56 = qword_1009F9820;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    sub_10039D078(&v113);
    v57 = (SBYTE7(v134) & 0x80u) == 0 ? &v133 : v133;
    *buf = 136315138;
    v141 = v57;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#rose-ses,Initiator ranging block summary: %s", buf, 0xCu);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }
  }

  v58 = *(a1 + 632);
  if (v58)
  {
    (*(*v58 + 88))(v58, &v113);
  }

  v60 = *(a1 + 16);
  v59 = *(a1 + 24);
  if (v59)
  {
    atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10033E698(&v133, &v113);
  v61 = *(a1 + 1576);
  v121[0] = _NSConcreteStackBlock;
  v121[1] = 3321888768;
  v121[2] = sub_10033F85C;
  v121[3] = &unk_1009A5C80;
  v121[4] = v60;
  v122 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10033E698(v123, &v133);
  dispatch_async(v61, v121);
  sub_1001FD220(v123);
  v62 = v122;
  if (!v122)
  {
    goto LABEL_62;
  }

LABEL_61:
  std::__shared_weak_count::__release_weak(v62);
LABEL_62:
  sub_1001FD220(&v133);
  if (v59)
  {
    std::__shared_weak_count::__release_weak(v59);
  }

  sub_1001FD220(&v113);
}

void sub_10033F790(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1536))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1536);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033F83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033F85C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1504))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1504);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033F908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033F928(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1536))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1536);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033F9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033F9F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1504))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1504);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033FAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033FAC8(uint64_t a1, uint64_t *a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = atomic_load((a1 + 908));
  if (v4)
  {
    v5 = atomic_load((a1 + 909));
    if (v5)
    {
      sub_100004A08(v19, (&off_1009A6270)[*(a2 + 1)]);
      sub_100004A08(__p, (&off_1009A62E8)[*(a2 + 2)]);
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v19;
        if (v20 < 0)
        {
          v7 = v19[0];
        }

        v8 = __p;
        if (v18 < 0)
        {
          v8 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = v7;
        v22 = 2080;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#rose-ses,serviceRequestDidUpdateStatus. type: %s, reason: %s", buf, 0x16u);
      }

      if (*(a1 + 892) == 1)
      {
        *(a1 + 892) = 0;
      }

      v9 = *a2;
      *(a1 + 888) = *(a2 + 2);
      *(a1 + 880) = v9;
      *(a1 + 892) = 1;
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = *a2;
      *&buf[8] = *(a2 + 2);
      v12 = *(a1 + 1576);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3321888768;
      v13[2] = sub_10033FD1C;
      v13[3] = &unk_1009A5CE0;
      v13[4] = v10;
      v14 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *buf;
      v16 = *&buf[8];
      dispatch_async(v12, v13);
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }
  }
}

void sub_10033FCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033FD1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1280))
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 1280);
        if (!v6)
        {
          sub_100037B10();
        }

        (*(*v6 + 48))(v6, &v7, a1 + 48);
        if (v8)
        {
          sub_10000AD84(v8);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_10033FDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

void sub_10033FDE8(uint64_t a1, int a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v6 = atomic_load((a1 + 908));
  if (v6)
  {
    v7 = atomic_load((a1 + 909));
    if (v7)
    {
      *(a1 + 896) = a2;
      *(a1 + 900) = a3;
      *(a1 + 904) = 1;
    }
  }
}

void sub_10033FE48(uint64_t a1, unsigned int *a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = "Ready";
    }

    else
    {
      v5 = "NotReady";
    }

    sub_100004A08(__p, v5);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rose-ses,timeConversionDidUpdateState (%s)", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::mutex::lock((a1 + 1192));
  atomic_store(*a2, (a1 + 1136));
  std::condition_variable::notify_one((a1 + 1144));
  std::mutex::unlock((a1 + 1192));
}

void sub_10033FF8C(uint64_t a1, uint64_t *a2)
{
  dispatch_assert_queue_V2(*(a1 + 744));
  v4 = atomic_load((a1 + 908));
  if (v4)
  {
    v5 = (*(*a1 + 184))(a1, a2);
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C16F4(a2, v5, v6);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else if (v5)
    {
LABEL_4:
      std::mutex::lock((a1 + 960));
      sub_10034010C(a1 + 1024, a2);
      std::mutex::unlock((a1 + 960));
      std::condition_variable::notify_one((a1 + 912));
      return;
    }

    sub_10033B864(a1);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 1576);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3321888768;
    v10[2] = sub_100340158;
    v10[3] = &unk_1009A5D10;
    v10[4] = v7;
    v11 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v9, v10);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

uint64_t sub_10034010C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
  }

  else
  {
    sub_100191694(a1, a2);
  }

  return a1;
}

void sub_100340158(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 1440))
      {
        v6 = *(a1 + 32);
        v7 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_1003401F8(v5 + 1416, &v6, -2);
        if (v7)
        {
          sub_10000AD84(v7);
        }
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_1003401D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  sub_10000AD84(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1003401F8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_10034024C(uint64_t a1, __int128 *a2)
{
  v2 = atomic_load((a1 + 908));
  if ((v2 & 1) == 0 || *(a1 + 754) != 1)
  {
    return 4294967294;
  }

  v5 = sub_10035D02C();
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v18 = 0;
    v19 = 0;
    v8 = std::__shared_weak_count::lock(v6);
    v9 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v18 = v7;
      v19 = v8;
      std::__shared_weak_count::__release_weak(v6);
      sub_10000AD84(v9);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if ((*(a1 + 754) & 1) == 0)
  {
    sub_1000195BC();
  }

  v11 = sub_10035E614(v5, &v18, *(a1 + 752));
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v11)
  {
    if (*(a1 + 872) == 1)
    {
      *(a1 + 872) = 0;
    }

    v12 = *a2;
    v13 = a2[2];
    *(a1 + 776) = a2[1];
    *(a1 + 792) = v13;
    *(a1 + 760) = v12;
    v14 = a2[3];
    v15 = a2[4];
    v16 = a2[6];
    *(a1 + 840) = a2[5];
    *(a1 + 856) = v16;
    *(a1 + 808) = v14;
    *(a1 + 824) = v15;
    *(a1 + 872) = 1;
  }

  v17 = *(a1 + 632);
  if (v17)
  {
    if ((*(a1 + 754) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1002E40BC(v17, *(a1 + 752), (a1 + 608));
  }

  return (v11 - 1);
}

void sub_1003403AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034041C(uint64_t a1, float a2)
{
  if (sub_10033BEE8(a1))
  {
    sub_1004C1918();
  }

  if (a2 < 0.0)
  {
    sub_1004C1880();
  }

  v4 = qword_1009F9820;
  if (a2 > 1.0)
  {
    sub_1004C17E4(qword_1009F9820);
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v24 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rose-ses,#throttle Requested throttle rate: %0.2f.", buf, 0xCu);
  }

  if (*(a1 + 754))
  {
    v5 = llroundf(a2 * 19.0);
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 754) & 1) == 0)
      {
        sub_1000195BC();
      }

      v7 = v5;
      v8 = *(a1 + 752);
      *buf = 134218496;
      *v24 = a2;
      *&v24[8] = 1024;
      v25 = v5;
      v26 = 1024;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#rose-ses,#throttle Throttle rate = %0.2f translates to subrate = %d. Ticket: %d", buf, 0x18u);
    }

    else
    {
      v7 = v5;
    }

    v10 = atomic_load((a1 + 910));
    if (v10 == v5)
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a1 + 754) & 1) == 0)
        {
          sub_1000195BC();
        }

        v12 = *(a1 + 752);
        *buf = 67109376;
        *v24 = v7;
        *&v24[4] = 1024;
        *&v24[6] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#rose-ses,#throttle Subrate = %d already in effect. Ticket: %d", buf, 0xEu);
      }

      return 0;
    }

    if ((*(a1 + 754) & 1) == 0)
    {
      sub_1000195BC();
    }

    *buf = *(a1 + 752);
    buf[2] = v5;
    v13 = sub_10035D02C();
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = *(a1 + 16);
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v21 = 0;
      v22 = 0;
      v16 = std::__shared_weak_count::lock(v14);
      v17 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v21 = v15;
        v22 = v16;
        std::__shared_weak_count::__release_weak(v14);
        sub_10000AD84(v17);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        std::__shared_weak_count::__release_weak(v14);
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v18 = sub_10035ED10(v13, &v21, buf);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v18)
    {
      return 0;
    }

    v19 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#rose-ses,#throttle PRRangingManager::updateRangingParameter failed.", v20, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C17B0();
    }

    return 4294967294;
  }
}

uint64_t sub_100340788(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10033D18C(a2);
    sub_1004C19C4();
  }

  v5 = atomic_load((a1 + 908));
  if ((v5 & 1) == 0 || *(a1 + 754) != 1)
  {
    return 0;
  }

  v6 = sub_10035D02C();
  v7 = *(v6 + 814);
  v8 = *(v6 + 815);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    v9 = 0;
    if (!v8)
    {
      return v9;
    }

LABEL_16:
    sub_10000AD84(v8);
    return v9;
  }

  if ((*(a1 + 754) & 1) == 0)
  {
    sub_1000195BC();
  }

  v11 = *(a1 + 752);
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_100009A48(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v15 = 0;
  v16 = 0;
  v9 = (*(*(v7 + 24) + 16))(v7 + 24, &v11);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    goto LABEL_16;
  }

  return v9;
}

void sub_1003408FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v12)
  {
    sub_10000AD84(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100340940(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"AlishaGetKeyTimeoutMillisecondsOverride"];

  if (v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 integerForKey:@"AlishaGetKeyTimeoutMillisecondsOverride"];
  }

  else
  {
    v7 = 5000;
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v37 = v2;
    v38 = 1024;
    v39 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: get key for uwb session id: %u. Timeout: %d ms", buf, 0xEu);
  }

  v9 = sub_10035D02C();
  sub_10035D238(v9, v2, v7, buf);
  v10 = *buf;
  if (*buf || (v43 & 1) == 0)
  {
    v21 = 0;
    if (v43)
    {
      v22 = 0;
    }

    else
    {
      v22 = -1004;
    }

    if (!*buf)
    {
      v10 = v22;
    }

    goto LABEL_26;
  }

  if (!v37)
  {
    v23 = sub_1003A0BA8(v40);
    v24 = qword_1009F9820;
    if (!v23)
    {
      sub_1004C1A28(qword_1009F9820);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109376;
      *&__p[4] = *v41;
      *&__p[8] = 1024;
      *&__p[10] = v40;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: get key response for uwb session id: %u, status code: %u", __p, 0xEu);
    }

    v21 = 0;
    *a2 = v23;
    goto LABEL_31;
  }

  if (v37 != 1)
  {
    v31 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C1AC4(&v37, v31);
    }

    v32 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *__p = 136315650;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/UWB/NIServerRoseSession.mm";
      *&__p[12] = 1024;
      *v34 = 988;
      *&v34[4] = 2080;
      v35 = "getKey";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "#rose-ses,%s:%d: assertion failure in %s", __p, 0x1Cu);
    }

    abort();
  }

  v11 = v40;
  v12 = sub_1003A0BA8(v40);
  if (v12)
  {
    v13 = qword_1009F9820;
    v14 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *__p = 67109376;
      *&__p[4] = *&v41[2];
      *&__p[8] = 1024;
      *&__p[10] = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: get key complete event failure for uwb session id: %u, status code: %u", __p, 0xEu);
    }

    if (v12 == 71)
    {
      if (*&v41[2])
      {
        v16 = sub_1002BD51C(v14, v15);
        sub_1002BD590(v16, 4);
        v17 = +[NSUserDefaults standardUserDefaults];
        v18 = [v17 BOOLForKey:@"AlishaTriggerCrashOnURSKRetrievalFailure"];

        if (v18)
        {
          v19 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: trigger crash on URSK retrieval failure", __p, 2u);
          }

          v20 = sub_10035D02C();
          sub_100004A08(__p, "AlishaURSKRetrievalFailed");
          sub_10035FD38(v20, 0, __p);
          if (SBYTE3(v35) < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }

    v21 = 0;
    *a2 = v12;
    goto LABEL_31;
  }

  v25 = *&v41[2];
  v26 = qword_1009F9820;
  v27 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v25 != v2)
  {
    if (v27)
    {
      *__p = 67109376;
      *&__p[4] = *&v41[2];
      *&__p[8] = 1024;
      *&__p[10] = v2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: get key complete event uwb session id: %u, does not match requested id: %u", __p, 0xEu);
    }

    v21 = 0;
    v10 = -1008;
LABEL_26:
    *a2 = v10;
LABEL_31:
    *(a2 + 4) = 0;
    goto LABEL_32;
  }

  if (v27)
  {
    *__p = 67109632;
    *&__p[4] = *&v41[2];
    *&__p[8] = 1024;
    *&__p[10] = v42;
    *v34 = 1024;
    *&v34[2] = HIDWORD(v42);
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: get key complete event success for uwb session id: %u, sts_index_0: %u, hop_key: %u", __p, 0x14u);
  }

  v29 = sub_1002BD51C(v27, v28);
  sub_1002BE4C4(v29, 4u);
  v30 = *&v41[2];
  *a2 = 0;
  *(a2 + 4) = v30;
  *(a2 + 8) = v42;
  v21 = 1;
LABEL_32:
  *(a2 + 16) = v21;
}

void sub_100340DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100340E38(int *a2@<X8>)
{
  v3 = sub_10035D02C();
  sub_10035D230(v3, 1000, v29);
  v4 = v29[0];
  if (LODWORD(v29[0]) || (v38 & 1) == 0)
  {
    if (v38)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1004;
    }

    if (!LODWORD(v29[0]))
    {
      v4 = v7;
    }

    LOBYTE(v20) = 0;
    v28 = 0;
    *a2 = v4;
    sub_100343CC0((a2 + 2), &v20);
    if (v28 == 1)
    {
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      v6 = v20;
      if (v20)
      {
        v21 = v20;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v5 = v36;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    sub_1001FE45C(&v17, v31, &v31[v30], v30);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1000069DC(&v14, v37, &v37[v5], v5);
    sub_1003432B4(&v8, &v17, v32, v33, v34, v35, &v14);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_1001FBC68(&v20, v8, v9, (v9 - v8) >> 1);
    v23 = v10;
    v24 = v11;
    v26 = 0;
    v27 = 0;
    __p = 0;
    sub_100009A48(&__p, v12, v13, v13 - v12);
    v28 = 1;
    *a2 = 0;
    sub_100343CC0((a2 + 2), &v20);
    if (v28 == 1)
    {
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    v6 = v17;
    if (v17)
    {
      v18 = v17;
LABEL_26:
      operator delete(v6);
    }
  }
}

void sub_100341038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  sub_1003410BC(&a24);
  sub_10034335C(&a10);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003410BC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }

    v3 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_10034110C(uint64_t a1, uint64_t a2)
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: delete keys", v6, 2u);
  }

  v4 = sub_10035D02C();
  return sub_10035D240(v4, a2, 1000);
}

uint64_t sub_100341188()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: delete all keys", v3, 2u);
  }

  v1 = sub_10035D02C();
  return sub_10035D248(v1, 1000);
}

void sub_1003411FC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: convertBtClkToUwbClk (BT: %llu)", buf, 0xCu);
  }

  v5 = sub_10035D02C();
  sub_10035D228(v5, 2u, 1u, a1, v9);
  if (v12 == 1)
  {
    if (v9[0] != 2)
    {
      sub_1004C1BA0();
    }

    if (v9[1] != 1)
    {
      sub_1004C1C38();
    }

    v6 = qword_1009F9820;
    if (v10 != a1)
    {
      sub_1004C1CD0(qword_1009F9820);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v14 = a1;
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: conversion result %llu -> %llu", buf, 0x16u);
    }

    v7 = v11;
    *a2 = 0;
    *(a2 + 8) = v7;
    v8 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1B6C();
    }

    v8 = 0;
    *a2 = -1026;
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = v8;
}

uint64_t sub_1003413A4(uint64_t a1, unsigned int *a2)
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v8 = 67109120;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#rose-ses,AlishaSubsystem: debug set key for uwb session id: %u", &v8, 8u);
  }

  v5 = sub_10035D02C();
  sub_10035D250(v5, *a2, (a2 + 1), 1000, &v8);
  if (v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1004;
  }

  if (v8)
  {
    result = v8;
  }

  else
  {
    result = v6;
  }

  if (!v8 && (v11 & 1) != 0)
  {
    if (v9 != 3)
    {
      sub_1004C1D6C(v9);
    }

    return sub_1003A0BA8(v10);
  }

  return result;
}

void *sub_1003415C4(void *a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v19 = a6;
  sub_100343450(v38, a4);
  v37 = 0;
  v35 = 0;
  sub_100343618(v33, a5);
  v32 = 0;
  v30 = 0;
  sub_100343748(v28, a7);
  sub_1003437E0(v27, a8);
  v26 = 0;
  v24 = 0;
  v20 = a12[1];
  v22[0] = *a12;
  v22[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10033B240(a1, a2, a3, v38, v36, v34, v33, v19, v31, v29, v28, v27, v25, v23, v22);
  if (v20)
  {
    sub_10000AD84(v20);
  }

  sub_100024BF8(v23);
  sub_100024C78(v25);
  sub_100024CF8(v27);
  sub_100024D78(v28);
  sub_100024DF8(v29);
  sub_100024E78(v31);
  sub_100024EF8(v33);
  sub_100024F78(v34);
  sub_100024E78(v36);
  sub_100024FF8(v38);
  *a1 = &off_1009A5D50;
  a1[1] = off_1009A5E20;
  sub_100341878(a1 + 81, a9);
  sub_1003418EC(a1 + 85, a10);
  sub_100341960(a1 + 89, a11);

  return a1;
}

void sub_1003417D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  if (v38)
  {
    sub_10000AD84(v38);
  }

  sub_100024BF8(&a18);
  sub_100024C78(&a22);
  sub_100024CF8(&a26);
  sub_100024D78(&a30);
  sub_100024DF8(&a34);
  sub_100024E78(va);
  sub_100024EF8(v39 - 216);
  sub_100024F78(v39 - 184);
  sub_100024E78(v39 - 152);
  sub_100024FF8(v39 - 120);

  _Unwind_Resume(a1);
}

void *sub_100341878(void *a1, uint64_t a2)
{
  sub_100343D84(v4, a2);
  sub_100343E1C(v4, a1);
  sub_1001FD9EC(v4);
  return a1;
}

void *sub_1003418EC(void *a1, uint64_t a2)
{
  sub_100344080(v4, a2);
  sub_100344118(v4, a1);
  sub_1001FD96C(v4);
  return a1;
}

void *sub_100341960(void *a1, uint64_t a2)
{
  sub_100231844(v4, a2);
  sub_10034437C(v4, a1);
  sub_1001FD8EC(v4);
  return a1;
}

uint64_t sub_1003419E8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 332) & 1) == 0)
  {
    sub_1004C1E48();
  }

  return *(a1 + 328);
}

uint64_t sub_100341A08(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 324) & 1) == 0)
  {
    sub_1004C1E48();
  }

  return *(a1 + 320);
}

void sub_100341A28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = qword_1009F9820;
  if ((*(a1 + 754) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1E74();
    }

    v17 = 0;
    *a3 = -1000;
LABEL_41:
    *(a3 + 8) = 0;
    goto LABEL_44;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable. Preferred start time offset usec: %llu", buf, 0xCu);
  }

  v7 = *(a1 + 632);
  if (v7)
  {
    v8 = (*(*a1 + 152))(a1);
    (*(*v7 + 64))(v7, v8, a2);
  }

  v9 = 0;
  v10 = 1000 * a2;
  if (a2 >= 9.22337204e15)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = v10;
  v11 = -1000;
  while (v9 <= 8)
  {
    if (v9 >= 1)
    {
      v12 = qword_1009F9820;
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11 == 6)
      {
        if (v13)
        {
          sub_1003A03C4(6, __p);
          v14 = __p;
          if (v21 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = v14;
          v25 = 2048;
          *v26 = a2;
          *&v26[8] = 1024;
          v27 = v9;
          v28 = 1024;
          v29 = 8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable retry. Last status code %s. Sleeping for %llu usec. %d of %d retries.", buf, 0x22u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (a2 > 0)
        {
          *buf = v19;
          std::this_thread::sleep_for (buf);
        }
      }

      else
      {
        if (v13)
        {
          sub_1003A03C4(v11, __p);
          v15 = __p;
          if (v21 < 0)
          {
            v15 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = v15;
          v25 = 1024;
          *v26 = v9;
          *&v26[4] = 1024;
          *&v26[6] = 8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable retry. Last status code %s. Not sleeping. %d of %d retries.", buf, 0x18u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (sub_10033BF24(a1, 1000))
    {
      buf[0] = 0;
      v30 = 0;
      v31 = a2;
      v32 = 1;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      sub_100341E10(a1, buf, __p);
      v11 = __p[0];
      if (LODWORD(__p[0]) == -1022 || LODWORD(__p[0]) == 6)
      {
        v16 = 0;
      }

      else
      {
        if (!LODWORD(__p[0]))
        {
          if ((v23 & 1) == 0)
          {
            sub_1004C1EA8();
          }

          v18 = v22;
          goto LABEL_43;
        }

        v16 = 3;
      }

      if (LODWORD(__p[0]) != 6 && LODWORD(__p[0]) != -1022)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = -1025;
    }

    v16 = 0;
    ++v9;
LABEL_35:
    if (v16)
    {
      break;
    }
  }

  if (v11)
  {
    v17 = 0;
    *a3 = v11;
    goto LABEL_41;
  }

  v18 = 0;
LABEL_43:
  *a3 = 0;
  *(a3 + 8) = v18;
  v17 = 1;
LABEL_44:
  *(a3 + 16) = v17;
}

void sub_100341E10(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a1 + 754) & 1) == 0)
  {
    sub_1004C1ED4();
  }

  __lk.__m_ = (a1 + 960);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 960));
  v6 = (a1 + 1128);
  sub_100342800((a1 + 1128), 0);
  if (*(a1 + 1056) == 1)
  {
    if (*(a1 + 1055) < 0)
    {
      operator delete(*(a1 + 1032));
    }

    *(a1 + 1056) = 0;
  }

  if (!sub_10034024C(a1, a2))
  {
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
    while (1)
    {
      if (*v6 || (*(a1 + 1056) & 1) != 0)
      {
LABEL_29:
        sub_100191634(v18, a1 + 1024);
        if (*(a1 + 1056) == 1)
        {
          if (*(a1 + 1055) < 0)
          {
            operator delete(*(a1 + 1032));
          }

          *(a1 + 1056) = 0;
        }

        if (*v6)
        {
          sub_1003428D8(*v6, &v17);
        }

        if ((v20 & 1) == 0)
        {
          __assert_rtn("_alishaSendRangeEnableCommand", "NIServerRoseSession.mm", 1301, "roseServiceErrorCopy.has_value()");
        }

        if (v18[0] == 2002)
        {
          v13 = -1022;
        }

        else
        {
          v13 = -1023;
        }

        *a3 = v13;
        *(a3 + 4) = 0;
        *(a3 + 38) = 0;
        if (v19 < 0)
        {
          operator delete(v18[1]);
        }

        goto LABEL_41;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
      {
        goto LABEL_27;
      }

      v9.__d_.__rep_ = v8.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_26:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
      {
LABEL_27:
        if (!*v6 && (*(a1 + 1056) & 1) == 0)
        {
          v14 = sub_100342800((a1 + 1128), 0);
          v16 = sub_1002BD51C(v14, v15);
          sub_1002BD590(v16, 2);
          v7 = -1001;
          goto LABEL_8;
        }

        goto LABEL_29;
      }
    }

    std::chrono::steady_clock::now();
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v10.__d_.__rep_)
    {
      v11 = 0;
      goto LABEL_24;
    }

    if (v10.__d_.__rep_ < 1)
    {
      if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v11 = 0x8000000000000000;
        goto LABEL_24;
      }
    }

    else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    }

    v11 = 1000 * v10.__d_.__rep_;
LABEL_22:
    if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
      std::condition_variable::__do_timed_wait((a1 + 912), &__lk, v12);
      std::chrono::steady_clock::now();
      goto LABEL_26;
    }

LABEL_24:
    v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
    goto LABEL_25;
  }

  v7 = -1000;
LABEL_8:
  *a3 = v7;
  *(a3 + 4) = 0;
  *(a3 + 38) = 0;
LABEL_41:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_1003421AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (*(v23 - 72) == 1)
  {
    std::mutex::unlock(*(v23 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100342218(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = atomic_load((a1 + 908));
  if (v3)
  {
    v5 = *(a1 + 632);
    if (v5)
    {
      v6 = (*(*a1 + 152))(a1);
      (*(*v5 + 72))(v5, v6);
    }

    sub_1003423FC(a1, &v11);
    if (sub_10033B864(a1))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C1F60();
      }

      v7[0] = 0;
      v10 = 0;
      *a2 = 0;
      sub_1003433A0((a2 + 2), v7);
      if (v10 == 1 && __p)
      {
        v9 = __p;
        operator delete(__p);
      }
    }

    else
    {
      *a2 = 0;
      sub_1003433A0((a2 + 2), &v11);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1F00();
    }

    LOBYTE(v11) = 0;
    v14 = 0;
    *a2 = 0;
    sub_1003433A0((a2 + 2), &v11);
  }

  if (v14 == 1)
  {
    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }
}

void sub_10034239C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a16 == 1)
  {
    sub_1004C1F34(&a9);
  }

  if (a27 == 1)
  {
    if (__p)
    {
      a22 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003423FC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __lk.__m_ = (a1 + 960);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 960));
  v4 = (a1 + 1120);
  if (*(a1 + 1120) == 1)
  {
    v5 = *(a1 + 1072);
    if (v5)
    {
      *(a1 + 1080) = v5;
      operator delete(v5);
    }

    *v4 = 0;
  }

  v6 = sub_10035D02C();
  v7 = (*(*a1 + 152))(a1);
  v8 = sub_10035D288(v6, v7);
  if (!v8)
  {
    v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
    while (1)
    {
      if (*v4)
      {
LABEL_36:
        sub_1003433A0(a2, a1 + 1064);
        if (*v4 != 1)
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 1072);
        if (v16)
        {
          *(a1 + 1080) = v16;
          operator delete(v16);
        }

        goto LABEL_14;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v11.__d_.__rep_)
      {
        goto LABEL_35;
      }

      v12.__d_.__rep_ = v11.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v12.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_34:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v11.__d_.__rep_)
      {
LABEL_35:
        if ((*v4 & 1) == 0)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C1FF8();
          }

          goto LABEL_9;
        }

        goto LABEL_36;
      }
    }

    std::chrono::steady_clock::now();
    v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v13.__d_.__rep_)
    {
      v14 = 0;
      goto LABEL_32;
    }

    if (v13.__d_.__rep_ < 1)
    {
      if (v13.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v14 = 0x8000000000000000;
        goto LABEL_32;
      }
    }

    else if (v13.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_30;
    }

    v14 = 1000 * v13.__d_.__rep_;
LABEL_30:
    if (v14 > (v12.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v15.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_33:
      std::condition_variable::__do_timed_wait((a1 + 912), &__lk, v15);
      std::chrono::steady_clock::now();
      goto LABEL_34;
    }

LABEL_32:
    v15.__d_.__rep_ = v14 + v12.__d_.__rep_;
    goto LABEL_33;
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1003A03C4(v8, v17);
    sub_1004C1F94();
  }

LABEL_9:
  if (*v4 == 1)
  {
    v10 = *(a1 + 1072);
    if (v10)
    {
      *(a1 + 1080) = v10;
      operator delete(v10);
    }

    *v4 = 0;
  }

  *a2 = 0;
  v4 = a2 + 56;
LABEL_14:
  *v4 = 0;
LABEL_15:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_100342690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14)
{
  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003426D0(uint64_t a1, uint64_t a2)
{
  v2 = qword_1009F9820;
  if (*(a1 + 754))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable. Start time bt clk usec: %llu", buf, 0xCu);
    }

    if (sub_10033BF24(a1, 1000))
    {
      buf[0] = 0;
      buf[40] = 0;
      v8 = a2;
      v9 = 3;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
      sub_100341E10(a1, buf, v6);
      return v6[0];
    }

    else
    {
      return 4294966271;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1E74();
    }

    return 4294966296;
  }
}

void *sub_100342800(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    v2[5] = 0;
    if (v3)
    {
      operator delete();
    }

    v4 = v2[4];
    v2[4] = 0;
    if (v4)
    {
      operator delete();
    }

    v5 = v2[3];
    v2[3] = 0;
    if (v5)
    {
      operator delete();
    }

    v6 = v2[2];
    v2[2] = 0;
    if (v6)
    {
      operator delete();
    }

    operator delete();
  }

  return result;
}

void sub_1003428D8(double *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 1);
    *a2 = *v2;
    *(a2 + 8) = v3;
    operator new();
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = a1[1];

    sub_1001E96E4(a2, v4, v5);
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    v7 = a1[1];

    sub_1001E9790(a2, v6, v7);
  }

  v8 = *(a1 + 5);
  if (v8)
  {
    v9 = a1[1];

    sub_1001E962C(a2, v8, v9);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Ill formed AlishaUpdate has no data (range_response, block_complete_event, session_stats, or key_expired_event)");
}

void *sub_100342A2C(void *a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = a6;
  sub_100343450(v35, a4);
  sub_1003434E8(v34, a7);
  v33 = 0;
  sub_100343618(v31, a5);
  v30 = 0;
  v28 = 0;
  sub_100343748(v26, a8);
  sub_1003437E0(v25, a9);
  v24 = 0;
  v22 = 0;
  v18 = a10[1];
  v20[0] = *a10;
  v20[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10033B240(a1, a2, a3, v35, v34, v32, v31, v17, v29, v27, v26, v25, v23, v21, v20);
  if (v18)
  {
    sub_10000AD84(v18);
  }

  sub_100024BF8(v21);
  sub_100024C78(v23);
  sub_100024CF8(v25);
  sub_100024D78(v26);
  sub_100024DF8(v27);
  sub_100024E78(v29);
  sub_100024EF8(v31);
  sub_100024F78(v32);
  sub_100024E78(v34);
  sub_100024FF8(v35);
  *a1 = &off_1009A5E58;
  a1[1] = off_1009A5F28;

  return a1;
}

void sub_100342C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  if (v38)
  {
    sub_10000AD84(v38);
  }

  sub_100024BF8(&a18);
  sub_100024C78(&a22);
  sub_100024CF8(&a26);
  sub_100024D78(&a30);
  sub_100024DF8(&a34);
  sub_100024E78(va);
  sub_100024EF8(v39 - 216);
  sub_100024F78(v39 - 184);
  sub_100024E78(v39 - 152);
  sub_100024FF8(v39 - 120);

  _Unwind_Resume(a1);
}

uint64_t sub_100342CC4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 392) & 1) == 0)
  {
    sub_1004C202C();
  }

  return *(a1 + 388);
}

uint64_t sub_100342CE4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 384) & 1) == 0)
  {
    sub_1004C202C();
  }

  return *(a1 + 380);
}

void *sub_100342D04(void *a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = a6;
  sub_100343450(v35, a4);
  sub_1003434E8(v34, a7);
  v33 = 0;
  sub_100343618(v31, a5);
  sub_1003434E8(v30, a8);
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v17 = a9[1];
  v19[0] = *a9;
  v19[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10033B240(a1, a2, a3, v35, v34, v32, v31, v16, v30, v28, v26, v24, v22, v20, v19);
  if (v17)
  {
    sub_10000AD84(v17);
  }

  sub_100024BF8(v20);
  sub_100024C78(v22);
  sub_100024CF8(v24);
  sub_100024D78(v26);
  sub_100024DF8(v28);
  sub_100024E78(v30);
  sub_100024EF8(v31);
  sub_100024F78(v32);
  sub_100024E78(v34);
  sub_100024FF8(v35);
  *a1 = &off_1009A5F60;
  a1[1] = off_1009A6030;

  return a1;
}

void sub_100342EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  if (v38)
  {
    sub_10000AD84(v38);
  }

  sub_100024BF8(&a18);
  sub_100024C78(&a22);
  sub_100024CF8(&a26);
  sub_100024D78(&a30);
  sub_100024DF8(&a34);
  sub_100024E78(va);
  sub_100024EF8(v39 - 216);
  sub_100024F78(v39 - 184);
  sub_100024E78(v39 - 152);
  sub_100024FF8(v39 - 120);

  _Unwind_Resume(a1);
}

void *sub_100342F8C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  if ((a1 + 2) >= 3)
  {
    sub_1004C2058();
  }

  v4 = (&off_1009A63C8)[(a1 + 2)];

  return sub_100004A08(a3, v4);
}

void *sub_100342FC8@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  if (a1 == -1)
  {
    v4 = "UNDEFINED";
  }

  else
  {
    if (a1 != -2)
    {
      sub_1004C2084();
    }

    v4 = "SERVICE_ERROR";
  }

  return sub_100004A08(a3, v4);
}

void sub_10034302C(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_10034306C(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void sub_1003430AC(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_1003430EC(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void sub_10034312C(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_10034316C(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

uint64_t sub_1003431A8(uint64_t a1, int a2, char a3, __int16 a4, __int16 *a5, uint64_t a6, __int16 a7, unsigned int a8, __int16 a9)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 6) = a4;
  sub_10034323C((a1 + 8), a6 + 1);
  *(a1 + 32) = a7;
  *(a1 + 40) = vcvtd_n_f64_s32(a8, 2uLL);
  *(a1 + 48) = vcvtd_n_f64_s32(a9, 2uLL);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16) - v13;
  if (v14)
  {
    v15 = v14 >> 1;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = *a5++;
      *v13++ = v16;
      --v15;
    }

    while (v15);
  }

  return a1;
}

uint64_t *sub_10034323C(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1001F470C(a1, a2);
  }

  return a1;
}

void sub_100343298(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003432B4(uint64_t a1, uint64_t a2, char a3, int a4, char a5, char a6, uint64_t a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 33) = a6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100009A48((a1 + 40), *a7, *(a7 + 8), *(a7 + 8) - *a7);
  return a1;
}

void sub_100343340(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034335C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1003433A0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_1001FBC68((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 1);
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_100343428(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100343450(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003434E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343580(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343618(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003436B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343748(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003437E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343878(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343910(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003439A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343A2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343AB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343B34(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343BB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343C3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343CC0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 24) = v4;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    sub_100009A48((a1 + 40), *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_100343D4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  if (*(v1 + 64) == 1)
  {
    sub_10034335C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100343D84(uint64_t a1, uint64_t a2)
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

void *sub_100343E1C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100344074(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_100344080(uint64_t a1, uint64_t a2)
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

void *sub_100344118(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100344370(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void *sub_10034437C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1003445D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

BOOL sub_1003445E0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_1003445F8()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(qword_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, qword_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1003446A8()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100344758()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100344808()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(qword_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, qword_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1003448B8()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(qword_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, qword_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100344968()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(qword_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, qword_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100344A18()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100344AC8()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(qword_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, qword_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100344B78()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056C328;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100344C6C()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC(0);
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F5530 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F5520 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5520, &_mh_execute_header);
  sub_10041C9CC(1);
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F5548 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F5538 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5538, &_mh_execute_header);
  sub_10041C9CC(2);
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F5560 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F5550 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5550, &_mh_execute_header);
  sub_10041C9CC(3);
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F5578 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F5568 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5568, &_mh_execute_header);
  sub_10041C9CC(4);
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F5590 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F5580 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5580, &_mh_execute_header);
  sub_10041C9CC(5);
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F55A8 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F5598 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5598, &_mh_execute_header);
  sub_10041C9CC(6);
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F55C0 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F55B0 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F55B0, &_mh_execute_header);
  sub_10041C9CC(7);
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F55D8 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F55C8 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F55C8, &_mh_execute_header);
  sub_10041C9CC(8);
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F55F0 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F55E0 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F55E0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1003452AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100345BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    sub_1004C20B0(v31 - 112);
  }

  _Unwind_Resume(exception_object);
}

void sub_100345D48(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"FindingDiscoveryFlowOverride"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (![v2 isEqualToString:@"NearbyActionNoWake_SpatialInteraction"])
    {
      if ([v2 isEqualToString:@"SpatialInteraction_BothSides"])
      {
        byte_1009F5600 = 1;
        v3 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        if (byte_1009F5600)
        {
          v7 = "SpatialInteraction_BothSides";
        }

        else
        {
          v7 = "NearbyActionNoWake_SpatialInteraction";
        }

        v9 = 136315138;
        v10 = v7;
        v5 = "#find-common,Discovery flow override: %s";
      }

      else
      {
        v3 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        if (byte_1009F5600)
        {
          v8 = "SpatialInteraction_BothSides";
        }

        else
        {
          v8 = "NearbyActionNoWake_SpatialInteraction";
        }

        v9 = 136315138;
        v10 = v8;
        v5 = "#find-common,Invalid discovery flow override. Returning discovery flow: %s";
      }

      goto LABEL_14;
    }

    byte_1009F5600 = 0;
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1009F5600)
      {
        v4 = "SpatialInteraction_BothSides";
      }

      else
      {
        v4 = "NearbyActionNoWake_SpatialInteraction";
      }

      v9 = 136315138;
      v10 = v4;
      v5 = "#find-common,Discovery flow override: %s";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
    }
  }

  else
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1009F5600)
      {
        v6 = "SpatialInteraction_BothSides";
      }

      else
      {
        v6 = "NearbyActionNoWake_SpatialInteraction";
      }

      v9 = 136315138;
      v10 = v6;
      v5 = "#find-common,No discovery flow override. Returning discovery flow: %s";
      goto LABEL_14;
    }
  }

LABEL_15:
}