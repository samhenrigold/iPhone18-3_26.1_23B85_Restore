void *sub_100699DE0(void *a1)
{
  *a1 = off_102469200;
  v2 = a1 + 2;
  sub_10069A0D8((a1 + 35));
  sub_10069A158(v2);
  return a1;
}

void sub_100699E34(void *a1)
{
  sub_100699D40(a1);

  operator delete();
}

uint64_t sub_100699E6C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "StepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190531C();
  }

  [*(*(a1 + 320) + 16) register:*(*(a1 + 320) + 8) forNotification:0 registrationInfo:0];
  return 1;
}

uint64_t sub_100699F5C(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "StepCount";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905410();
  }

  [*(*(a1 + 320) + 16) unregister:*(*(a1 + 320) + 8) forNotification:0];
  return 1;
}

void sub_10069A048(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if ((*a3 + 1) <= 1)
  {
    sub_10069A204(result, a4);
  }
}

void sub_10069A064(void *a1)
{
  *a1 = off_102469200;
  v1 = a1 + 2;
  sub_10069A0D8((a1 + 35));
  sub_10069A158(v1);

  operator delete();
}

uint64_t sub_10069A0D8(uint64_t a1)
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

uint64_t sub_10069A158(void *a1)
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
    v5 = 11;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 22;
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

void sub_10069A204(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  v31 = *(a2 + 128);
  v32 = v3;
  v33 = *(a2 + 160);
  v34 = *(a2 + 176);
  v4 = *(a2 + 80);
  v27 = *(a2 + 64);
  v28 = v4;
  v5 = *(a2 + 112);
  v29 = *(a2 + 96);
  v30 = v5;
  v6 = *(a2 + 16);
  v23 = *a2;
  v24 = v6;
  v7 = *(a2 + 48);
  v25 = *(a2 + 32);
  v26 = v7;
  v8 = *(a1 + 304);
  if (v8)
  {
    (*(*v8 + 48))(v8, &v23);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = v9 + *(a1 + 48) - 1;
    v11 = *(a1 + 24);
    v12 = *(v11[v10 / 0x16] + 23 * (v10 % 0x16) + 1);
    if (v12 > *(&v23 + 1))
    {
      v13 = *(a1 + 32);
      *(a1 + 56) = 0;
      v14 = (v13 - v11) >> 3;
      if (v14 >= 3)
      {
        do
        {
          operator delete(*v11);
          v15 = *(a1 + 32);
          v11 = (*(a1 + 24) + 8);
          *(a1 + 24) = v11;
          v14 = (v15 - v11) >> 3;
        }

        while (v14 > 2);
      }

      if (v14 == 1)
      {
        v16 = 11;
      }

      else
      {
        if (v14 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v17 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v36 = *(&v23 + 1);
            v37 = 2048;
            v38 = v12;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101905504();
          }

          goto LABEL_18;
        }

        v16 = 22;
      }

      *(a1 + 48) = v16;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_100260FC0((a1 + 16), &v23);
  v18 = v32;
  *(a1 + 224) = v31;
  *(a1 + 240) = v18;
  *(a1 + 256) = v33;
  *(a1 + 272) = v34;
  v19 = v28;
  *(a1 + 160) = v27;
  *(a1 + 176) = v19;
  v20 = v30;
  *(a1 + 192) = v29;
  *(a1 + 208) = v20;
  v21 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v21;
  v22 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v22;
}

void sub_10069A464(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x16;
  v3 = v1 - 22;
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

void sub_10069A5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10069A638(void *a1)
{
  *a1 = &off_102469230;
  sub_10069CBB0((a1 + 40));
  *a1 = off_1024692A0;
  sub_10069A82C((a1 + 36));
  sub_10069A8AC(a1 + 2);
  return a1;
}

void *sub_10069A6B0(void *a1)
{
  *a1 = off_1024692A0;
  v2 = a1 + 2;
  sub_10069A82C((a1 + 36));
  sub_10069A8AC(v2);
  return a1;
}

void sub_10069A704(void *a1)
{
  sub_10069A638(a1);

  operator delete();
}

uint64_t sub_10069A73C(uint64_t a1)
{
  if (!*(a1 + 344))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 320, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_10069A7B8(void *a1)
{
  *a1 = off_1024692A0;
  v1 = a1 + 2;
  sub_10069A82C((a1 + 36));
  sub_10069A8AC(v1);

  operator delete();
}

uint64_t sub_10069A82C(uint64_t a1)
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

uint64_t sub_10069A8AC(void *a1)
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
    v5 = 10;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 21;
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

void *sub_10069A958(void *a1)
{
  *a1 = &off_1024692D0;
  v2 = a1[25];
  a1[25] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_102469348;
  sub_10069ACF0((a1 + 20));
  sub_10052C5C0(a1 + 2);
  return a1;
}

void *sub_10069A9F8(void *a1)
{
  *a1 = off_102469348;
  v2 = a1 + 2;
  sub_10069ACF0((a1 + 20));
  sub_10052C5C0(v2);
  return a1;
}

void sub_10069AA4C(void *a1)
{
  sub_10069A958(a1);

  operator delete();
}

uint64_t sub_10069AA84(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "HeartRate";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101905600();
  }

  [*(*(a1 + 200) + 16) register:*(*(a1 + 200) + 8) forNotification:4 registrationInfo:0];
  return 1;
}

uint64_t sub_10069AB74(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "HeartRate";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019056F4();
  }

  [*(*(a1 + 200) + 16) unregister:*(*(a1 + 200) + 8) forNotification:4];
  return 1;
}

void sub_10069AC60(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if (*a3 == 4 || *a3 == -1)
  {
    sub_10069AD70(result, a4);
  }
}

void sub_10069AC7C(void *a1)
{
  *a1 = off_102469348;
  v1 = a1 + 2;
  sub_10069ACF0((a1 + 20));
  sub_10052C5C0(v1);

  operator delete();
}

uint64_t sub_10069ACF0(uint64_t a1)
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

void sub_10069AD70(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v17 = *a2;
  v18 = v3;
  v4 = a2[3];
  v19 = a2[2];
  v20 = v4;
  v5 = *(a1 + 184);
  if (v5)
  {
    (*(*v5 + 48))(v5, &v17);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = v6 + *(a1 + 48) - 1;
    v8 = *(a1 + 24);
    v9 = (*(v8 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)))[8 * (v7 & 0x3F) + 5];
    if (v9 > *(&v19 + 1))
    {
      v10 = *(a1 + 32);
      *(a1 + 56) = 0;
      v11 = (v10 - v8) >> 3;
      if (v11 >= 3)
      {
        do
        {
          operator delete(*v8);
          v12 = *(a1 + 32);
          v8 = (*(a1 + 24) + 8);
          *(a1 + 24) = v8;
          v11 = (v12 - v8) >> 3;
        }

        while (v11 > 2);
      }

      if (v11 == 1)
      {
        v13 = 32;
      }

      else
      {
        if (v11 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v14 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v22 = *(&v19 + 1);
            v23 = 2048;
            v24 = v9;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019057E8();
          }

          goto LABEL_18;
        }

        v13 = 64;
      }

      *(a1 + 48) = v13;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_10052CF28((a1 + 16), &v17);
  v15 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v15;
  v16 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v16;
}

void *sub_10069AF5C(void *a1)
{
  *a1 = &off_102469378;
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "Elevation";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "disable message src %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFD60(buf);
    v7 = 136315138;
    v8 = "Elevation";
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "disable message src %s", &v7);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLSourceFromNotifier<CLElevationChangeEntry>::~CLSourceFromNotifier() [Data_T = CLElevationChangeEntry]", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  [*(a1[57] + 16) unregister:*(a1[57] + 8) forNotification:7];
  v3 = a1[57];
  a1[57] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10069B154(a1);
  return a1;
}

void sub_10069B148(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_10069B154(void *a1)
{
  *a1 = &off_102469400;
  v2 = a1 + 1;
  sub_10069B400((a1 + 52));
  sub_10052C5C0(a1 + 34);
  sub_10069B480(v2);
  return a1;
}

void sub_10069B1B0(void *a1)
{
  sub_10069AF5C(a1);

  operator delete();
}

uint64_t sub_10069B1E8(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Elevation";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "activate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019058E4();
  }

  [*(*(a1 + 456) + 16) register:*(*(a1 + 456) + 8) forNotification:3 registrationInfo:0];
  return 1;
}

uint64_t sub_10069B2D8(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "Elevation";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "deactivate src %s", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019059D8();
  }

  [*(*(a1 + 456) + 16) unregister:*(*(a1 + 456) + 8) forNotification:3];
  return 1;
}

void sub_10069B3C8(void *a1)
{
  sub_10069B154(a1);

  operator delete();
}

uint64_t sub_10069B400(uint64_t a1)
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

void *sub_10069B480(void *a1)
{
  sub_1003EE180(a1 + 26);
  sub_1003EE180(a1 + 20);
  sub_1003EE180(a1 + 14);
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10069B4CC(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10069B530(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

unint64_t *sub_10069B5FC(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
  }

  else
  {
    v5 = *(v4 + 8 * (v3 / 0x1A)) + 152 * (v3 % 0x1A);
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x1A));
    v8 = *v7 + 152 * (v6 % 0x1A);
  }

  sub_10069B6CC(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  return a1;
}

void *sub_10069B6CC(unint64_t *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) - 0x79435E50D79435E5 * ((a5 - *a4) >> 3) + 0x79435E50D79435E5 * ((a3 - *a2) >> 3);
  }

  return sub_10069B730(a1, a2, a3, v5);
}

void *sub_10069B730(unint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 26 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_10069B8DC(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x1A));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 152 * (v11 % 0x1A);
    v15 = v14;
  }

  v30 = v13;
  v31 = v15;
  result = sub_1000B9760(&v30, a4);
  v17 = v31;
  if (v14 != v31)
  {
    v18 = v30;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 3952;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *(a3 + 16);
          *v20 = *a3;
          *(v20 + 16) = v21;
          v22 = *(a3 + 32);
          v23 = *(a3 + 48);
          v24 = *(a3 + 80);
          *(v20 + 64) = *(a3 + 64);
          *(v20 + 80) = v24;
          *(v20 + 32) = v22;
          *(v20 + 48) = v23;
          v25 = *(a3 + 96);
          v26 = *(a3 + 112);
          v27 = *(a3 + 128);
          *(v20 + 144) = *(a3 + 144);
          *(v20 + 112) = v26;
          *(v20 + 128) = v27;
          *(v20 + 96) = v25;
          a3 += 152;
          if (a3 - *a2 == 3952)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v20 += 152;
        }

        while (v20 != v19);
      }

      a1[5] -= 0x79435E50D79435E5 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v29 = v13[1];
      ++v13;
      v14 = v29;
    }

    while (v29 != v17);
  }

  return result;
}

void sub_10069B8DC(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x1A)
  {
    v5 = v4 / 0x1A + 1;
  }

  else
  {
    v5 = v4 / 0x1A;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0x1A)
  {
    v7 = v6 / 0x1A;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x1A)
  {
    for (a1[4] = v6 - 26 * v7; v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_10045E430(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_10045E858(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= 26 * v7; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10045E430(a1, v16);
    }
  }
}

void sub_10069BBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_10069BC28(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a2[4];
    v4 = a2[1];
    if (a2[2] == v4)
    {
      v5 = 0;
      v8 = 0;
      v7 = (v4 + 8 * ((a2[5] + v3) / 0x12));
    }

    else
    {
      v5 = (*(v4 + 8 * (v3 / 0x12)) + 216 * (v3 % 0x12));
      v6 = a2[5] + v3;
      v7 = (v4 + 8 * (v6 / 0x12));
      v8 = (*v7 + 216 * (v6 % 0x12));
    }

    sub_10069BCE0(a1, (v4 + 8 * (v3 / 0x12)), v5, v7, v8);
  }

  return a1;
}

void *sub_10069BCE0(unint64_t *a1, void **a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 18 * (a4 - a2) - 0x7B425ED097B425EDLL * ((a5 - *a4) >> 3) + 0x7B425ED097B425EDLL * ((a3 - *a2) >> 3);
  }

  return sub_10069BD44(a1, a2, a3, v5);
}

void *sub_10069BD44(unint64_t *a1, void **a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[5];
  if (v8 >= a4)
  {
    v15 = a1[4];
    v16 = a1[1];
    v17 = (v16 + 8 * (v15 / 0x12));
    if (a1[2] == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = (*v17 + 216 * (v15 % 0x12));
    }

    v22 = a2;
    v23 = a3;
    sub_100667F8C(&v22, a4);
    v20 = v22;
    v21 = v23;
    v22 = v17;
    v23 = v18;
    sub_1006681F4(a2, a3, v20, v21, &v22);
    return sub_10069BEA0(a1, v22, v23);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_100667F8C(&v22, v8);
    v9 = v22;
    v10 = v23;
    v11 = a1[4];
    v12 = a1[1];
    v13 = (v12 + 8 * (v11 / 0x12));
    if (a1[2] == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = (*v13 + 216 * (v11 % 0x12));
    }

    v22 = v13;
    v23 = v14;
    sub_1006681F4(a2, a3, v9, v10, &v22);
    return sub_1006977D4(a1, v9, v10, a4 - a1[5]);
  }
}

uint64_t sub_10069BEA0(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x12));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 216 * (v5 % 0x12);
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 3;
    v11 = 18 * (v8 - a2) - 0x7B425ED097B425EDLL * ((v9 - *v8) >> 3) + 0x7B425ED097B425EDLL * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x12));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 216 * (v4 % 0x12);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 18 * (a2 - v12) - 0x7B425ED097B425EDLL * v10 + 0x7B425ED097B425EDLL * ((v13 - *v12) >> 3);
      }

      v15[0] = v12;
      v15[1] = v13;
      sub_100667F8C(v15, v14);
      v3[5] -= v11;
      do
      {
        result = sub_100667F14(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10069C000(void **a1, uint64_t a2)
{
  sub_100697D18(a1);
  sub_10069C050(a1);
  result = sub_10069C1B4(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_10069C050(void **a1)
{
  if (a1[5])
  {
    sub_1000AAAC4(a1, 0);
    sub_100667F14(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_10069C0D4(a1);
}

void sub_10069C0D4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10045E858(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_10069C1B4(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_10069C0D4(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

unint64_t *sub_10069C21C(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a2[4];
    v4 = a2[1];
    if (a2[2] == v4)
    {
      v5 = 0;
      v8 = 0;
      v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v5 = (*(v4 + 8 * (v3 / 0x1A)) + 152 * (v3 % 0x1A));
      v6 = a2[5] + v3;
      v7 = (v4 + 8 * (v6 / 0x1A));
      v8 = (*v7 + 152 * (v6 % 0x1A));
    }

    sub_10069C2D4(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  }

  return a1;
}

void *sub_10069C2D4(unint64_t *a1, void **a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) - 0x79435E50D79435E5 * ((a5 - *a4) >> 3) + 0x79435E50D79435E5 * ((a3 - *a2) >> 3);
  }

  return sub_10069C338(a1, a2, a3, v5);
}

void *sub_10069C338(unint64_t *a1, void **a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[5];
  if (v8 >= a4)
  {
    v15 = a1[4];
    v16 = a1[1];
    v17 = (v16 + 8 * (v15 / 0x1A));
    if (a1[2] == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = (*v17 + 152 * (v15 % 0x1A));
    }

    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, a4);
    v20 = v22;
    v21 = v23;
    v22 = v17;
    v23 = v18;
    sub_10045F1EC(a2, a3, v20, v21, &v22);
    return sub_10069C494(a1, v22, v23);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, v8);
    v9 = v22;
    v10 = v23;
    v11 = a1[4];
    v12 = a1[1];
    v13 = (v12 + 8 * (v11 / 0x1A));
    if (a1[2] == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = (*v13 + 152 * (v11 % 0x1A));
    }

    v22 = v13;
    v23 = v14;
    sub_10045F1EC(a2, a3, v9, v10, &v22);
    return sub_10069B730(a1, v9, v10, a4 - a1[5]);
  }
}

uint64_t sub_10069C494(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x1A));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 152 * (v5 % 0x1A);
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 3;
    v11 = 26 * (v8 - a2) - 0x79435E50D79435E5 * ((v9 - *v8) >> 3) + 0x79435E50D79435E5 * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x1A));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 152 * (v4 % 0x1A);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 26 * (a2 - v12) - 0x79435E50D79435E5 * v10 + 0x79435E50D79435E5 * ((v13 - *v12) >> 3);
      }

      v15[0] = v12;
      v15[1] = v13;
      sub_1000B9760(v15, v14);
      v3[5] -= v11;
      do
      {
        result = sub_1001E0254(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10069C5F4(void **a1, uint64_t a2)
{
  sub_10069756C(a1);
  sub_10069C644(a1);
  result = sub_10069C7A8(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_10069C644(void **a1)
{
  if (a1[5])
  {
    sub_1001FD668(a1, 0);
    sub_1001E0254(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_10069C6C8(a1);
}

void sub_10069C6C8(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10045E858(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_10069C7A8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_10069C6C8(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *sub_10069C840(void *a1, uint64_t a2)
{
  sub_10069C8B4(v4, a2);
  sub_10069C94C(v4, a1);
  sub_10069CBB0(v4);
  return a1;
}

uint64_t sub_10069C8B4(uint64_t a1, uint64_t a2)
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

void *sub_10069C94C(void *result, void *a2)
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

void sub_10069CBA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10069CBB0(uint64_t a1)
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

uint64_t sub_10069CC30(uint64_t a1)
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

double sub_10069CD38(uint64_t a1, double **a2)
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

uint64_t sub_10069CD64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10069CE38(uint64_t a1, double **a2)
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

uint64_t sub_10069CE88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10069CF6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10069D058(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10069D0A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10069D0C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10069D0DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008080(v1);
  }
}

unint64_t *sub_10069D0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    sub_100007244((a2 + 16), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(a2 + 16) = *(a1 + 48);
    *(a2 + 32) = *(a1 + 64);
  }

  return sub_1006976A0((a2 + 40), (a1 + 72));
}

void sub_10069D14C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_10069D168(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  return sub_1006976A0((a1 + 72), (a2 + 72));
}

void sub_10069D1C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10069D1E4(uint64_t a1)
{
  sub_100666704((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_10069D430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10069CBB0(va);
  sub_1006985DC(v3 + 382);
  sub_10069885C(v3 + 363);
  sub_1006989A4(v3 + 345);
  sub_100698AEC(v3 + 308);
  sub_100699148(v3 + 279);
  sub_1006993C8(v3 + 258);
  sub_100699510(v3 + 229);
  sub_100699714(v3 + 170);
  sub_100699D40(v3 + 129);
  sub_10069A638(v3 + 85);
  sub_10069A958(v3 + 59);
  sub_10069AF5C(v4);
  _Unwind_Resume(a1);
}

void sub_10069D4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_10069CBB0(va);
  JUMPOUT(0x10069D49CLL);
}

void sub_10069D534(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069D800(a1, v6, a3, a4);
  sub_10069B400(v6);
  *a1 = &off_102469378;
  a1[56] = [a2 silo];
  a1[57] = 0;
  sub_100156C60();
}

void sub_10069D790(_Unwind_Exception *a1)
{
  v3 = v1[57];
  v1[57] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10069B154(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069D800(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_10069D8C4(a1 + 8);
  *a1 = &off_102469400;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = xmmword_101C85F60;
  *(a1 + 336) = a3;
  *(a1 + 344) = a4;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0xBFF0000000000000;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 397) = 0;
  *(a1 + 406) = 0;
  sub_10069DA54(a1 + 416, a2);
  return a1;
}

void sub_10069D8A8(_Unwind_Exception *a1)
{
  sub_10052C5C0((v1 + 272));
  sub_10069B480((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10069D8C4(uint64_t a1)
{
  *a1 = xmmword_101C86FE8;
  *(a1 + 16) = unk_101C86FF8;
  *(a1 + 32) = xmmword_101C87008;
  *(a1 + 48) = unk_101C87018;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  v5 = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1003F6D44((a1 + 88), &v5, &v6, 2uLL);
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  for (i = 119; i != -1; --i)
  {
    v3 = pow(0.98, i);
    *&v5 = v3;
    sub_100023E4C((a1 + 112), &v5);
  }

  LODWORD(v5) = 0;
  sub_100023E4C((a1 + 160), &v5);
  LODWORD(v5) = 0;
  sub_100023E4C((a1 + 208), &v5);
  *(a1 + 8) = 0xBFF0000000000000;
  return a1;
}

void sub_10069DA10(_Unwind_Exception *a1)
{
  sub_1003EE180(v5);
  sub_1003EE180(v4);
  sub_1003EE180(v3);
  v7 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10069DA54(uint64_t a1, uint64_t a2)
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

void sub_10069DAEC(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069DC50(a1, a3, a4, v6);
  sub_10069ACF0(v6);
  *a1 = &off_1024692D0;
  a1[24] = [a2 silo];
  a1[25] = 0;
  sub_1009AB6F0();
}

void sub_10069DC0C(_Unwind_Exception *a1)
{
  v3 = v1[25];
  v1[25] = 0;
  if (v3)
  {
    sub_101905BC8(v3);
  }

  sub_10069A9F8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069DC50(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102469348;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_101C76220;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_10069DD6C(a1 + 160, a4);
  return a1;
}

uint64_t sub_10069DCF0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[24] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_10069DD6C(uint64_t a1, uint64_t a2)
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

void *sub_10069DE04(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069DEC0(a1, a3, a4, v7);
  sub_10069A82C(v7);
  *a1 = &off_102469230;
  sub_10069C8B4((a1 + 40), a2);
  return a1;
}

uint64_t sub_10069DEC0(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_1024692A0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 249) = 0u;
  sub_10069DF74(a1 + 288, a4);
  return a1;
}

uint64_t sub_10069DF74(uint64_t a1, uint64_t a2)
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

void sub_10069E00C(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069E170(a1, a3, a4, v6);
  sub_10069A0D8(v6);
  *a1 = &off_102469188;
  a1[39] = [a2 silo];
  a1[40] = 0;
  sub_101379CA4();
}

void sub_10069E12C(_Unwind_Exception *a1)
{
  v3 = v1[40];
  v1[40] = 0;
  if (v3)
  {
    sub_101905BC8(v3);
  }

  sub_100699DE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069E170(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102469200;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = xmmword_101C76220;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 272) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 260) = 0;
  *(a1 + 267) = 0;
  sub_10069E2AC(a1 + 280, a4);
  return a1;
}

uint64_t sub_10069E230(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[39] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_10069E2AC(uint64_t a1, uint64_t a2)
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

void sub_10069E344(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069E610(a1, a3, a4, v6);
  sub_100699C14(v6);
  *a1 = &off_1024690E0;
  a1[57] = [a2 silo];
  a1[58] = 0;
  sub_101379CA4();
}

void sub_10069E5A0(_Unwind_Exception *a1)
{
  v3 = v1[58];
  v1[58] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100699934(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069E610(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102469158;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  sub_10069E6D8(a1 + 424, a4);
  return a1;
}

uint64_t sub_10069E6D8(uint64_t a1, uint64_t a2)
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

void *sub_10069E770(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069E82C(a1, a3, a4, v7);
  sub_100699694(v7);
  *a1 = &off_102469040;
  sub_10069C8B4((a1 + 25), a2);
  return a1;
}

uint64_t sub_10069E82C(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_1024690B0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  sub_10069E8C4(a1 + 168, a4);
  return a1;
}

uint64_t sub_10069E8C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10069E95C(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468FE8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_10069E9F0(a1 + 136, a4);
  return a1;
}

uint64_t sub_10069E9F0(uint64_t a1, uint64_t a2)
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

void *sub_10069EA88(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069EB44(a1, a3, a4, v7);
  sub_100699348(v7);
  *a1 = &off_102468F48;
  sub_10069C8B4((a1 + 25), a2);
  return a1;
}

uint64_t sub_10069EB44(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468FB8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 120) = 0x80000000800000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = xmmword_101C78410;
  *(a1 + 160) = 0x80000000800000;
  sub_10069EBEC(a1 + 168, a4);
  return a1;
}

uint64_t sub_10069EBEC(uint64_t a1, uint64_t a2)
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

void sub_10069EC84(void *a1, void *a2, double a3, double a4)
{
  v7 = 0;
  sub_10069EDE8(a1, a3, a4, v6);
  sub_100698E84(v6);
  *a1 = &off_102468EA0;
  a1[35] = [a2 silo];
  a1[36] = 0;
  sub_1013842FC();
}

void sub_10069EDA4(_Unwind_Exception *a1)
{
  v3 = v1[36];
  v1[36] = 0;
  if (v3)
  {
    sub_101905BC8(v3);
  }

  sub_100698B8C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10069EDE8(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468F18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xBFF0000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  sub_10069EF00(a1 + 248, a4);
  return a1;
}

uint64_t sub_10069EE84(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[35] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_10069EF00(uint64_t a1, uint64_t a2)
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

uint64_t sub_10069EF98(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468E48;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  sub_10069F028(a1 + 112, a4);
  return a1;
}

uint64_t sub_10069F028(uint64_t a1, uint64_t a2)
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

uint64_t sub_10069F0C0(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468DF0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  sub_10069F14C(a1 + 120, a4);
  return a1;
}

uint64_t sub_10069F14C(uint64_t a1, uint64_t a2)
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

void *sub_10069F1E4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069F2A0(a1, a3, a4, v7);
  sub_1006987DC(v7);
  *a1 = &off_102468D50;
  sub_10069C8B4((a1 + 18), a2);
  return a1;
}

uint64_t sub_10069F2A0(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468DC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 7;
  sub_10069F334(a1 + 112, a4);
  return a1;
}

uint64_t sub_10069F334(uint64_t a1, uint64_t a2)
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

void *sub_10069F3CC(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_10069F488(a1, a3, a4, v7);
  sub_100698508(v7);
  *a1 = &off_102468CB0;
  sub_10069C8B4((a1 + 21), a2);
  return a1;
}

uint64_t sub_10069F488(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468D20;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  sub_10069F520(a1 + 136, a4);
  return a1;
}

uint64_t sub_10069F520(uint64_t a1, uint64_t a2)
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

void *sub_10069F644(void *a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024697B0;
  sub_10069F73C((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_10069F6C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024697B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10069F73C(uint64_t a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  sub_10000EC00(v12, a2);
  sub_10000EC00(__p, a3);
  sub_100E43990(a1, v12, __p, a4, *a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_10069F7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10069F888(void *a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024697B0;
  sub_10069F8E4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_10069F8E4(uint64_t a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  sub_10000EC00(v12, a2);
  sub_10000EC00(__p, a3);
  sub_100E43990(a1, v12, __p, a4, *a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_10069F970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10069FA30(void *a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024697B0;
  sub_10069FA8C((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_10069FA8C(uint64_t a1, char *a2, char *a3, uint64_t a4, double *a5)
{
  sub_10000EC00(v12, a2);
  sub_10000EC00(__p, a3);
  sub_100E43990(a1, v12, __p, a4, *a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_10069FB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069FB6C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102469800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10069FC58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469850;
  a2[1] = v2;
  return result;
}

uint64_t sub_10069FCA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10069FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onBackgroundEscalationManagerUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
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
      v21 = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onBackgroundEscalationManagerUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006935A8(a4, a1, a2, a3, a5);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10069FF48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024698E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10069FF90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A004C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469960;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A0078(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A00C4(uint64_t a1)
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

uint64_t sub_1006A01B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024699E0;
  a2[1] = v2;
  return result;
}

void sub_1006A01E0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 176);
  v10[10] = *(a3 + 160);
  v10[11] = v4;
  v10[12] = *(a3 + 192);
  v11 = *(a3 + 208);
  v5 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v5;
  v6 = *(a3 + 144);
  v10[8] = *(a3 + 128);
  v10[9] = v6;
  v7 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v7;
  v8 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v8;
  v9 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v9;
  sub_1006A02C8(v3, v10, *(a1 + 8));
}

uint64_t sub_1006A027C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006A02C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWorkoutPredictorUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "activity";
      *&buf[28] = 2050;
      *&buf[30] = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWorkoutPredictorUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v17 = 0;
  }

  v8 = *(a2 + 160);
  v9 = *(a2 + 192);
  v27 = *(a2 + 176);
  v28 = v9;
  v10 = *(a2 + 96);
  v11 = *(a2 + 128);
  v12 = *(a2 + 144);
  v23 = *(a2 + 112);
  v24 = v11;
  v29 = *(a2 + 208);
  v25 = v12;
  v26 = v8;
  v13 = *(a2 + 48);
  *&buf[32] = *(a2 + 32);
  v19 = v13;
  v14 = *(a2 + 80);
  v20 = *(a2 + 64);
  v21 = v14;
  v22 = v10;
  v15 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v15;
  sub_100693948(a3, a1, buf);
  if (v17 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1006A0550(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469A70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A058C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A0648(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469AF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A0684(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A0740(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102469B70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A077C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006A07C8(void *a1)
{
  *a1 = &off_102469BF0;
  v22 = 0;
  sub_1006A0AD4((a1 + 1), 10.0, 300.0, v21);
  sub_1006980F4(v21);
  v20 = 0;
  sub_1006A0C10(a1 + 37, v19, 10.0, 150.0);
  sub_10069CBB0(v19);
  v18 = 0;
  sub_10069E610((a1 + 59), 10.0, 300.0, v17);
  sub_100699C14(v17);
  v16 = 0;
  sub_1006A0F70(a1 + 116, v15, 10.0, 300.0);
  sub_10069CBB0(v15);
  v14 = 0;
  sub_10069DE04(a1 + 138, v13, 10.0, 300.0);
  sub_10069CBB0(v13);
  v12 = 0;
  sub_10069EA88(a1 + 182, v11, 15.0, 300.0);
  sub_10069CBB0(v11);
  v10 = 0;
  sub_1006A12CC(a1 + 211, v9, 10.0, 10.0);
  sub_10069CBB0(v9);
  v8 = 0;
  sub_1006A181C(a1 + 235, v7, 10.0, 300.0);
  sub_10069CBB0(v7);
  v6 = 0;
  sub_1006A1B7C(a1 + 259, v5, 8.0, 8.0);
  sub_10069CBB0(v5);
  v4 = 0;
  sub_1006A20D4(a1 + 285, v3, 6.0, 6.0);
  sub_10069CBB0(v3);
  return a1;
}

void sub_1006A099C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10069CBB0(va);
  sub_1006A269C(v4 + 259);
  sub_1006A26F0(v4 + 235);
  sub_1006A2774(v4 + 211);
  sub_100699148(v4 + 182);
  sub_10069A638(v4 + 138);
  sub_1006A27C8(v4 + 116);
  sub_100699934(v4 + 59);
  sub_1006A284C(v4 + 37);
  sub_10069802C(v3);
  _Unwind_Resume(a1);
}

void sub_1006A0A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_10069CBB0(va);
  JUMPOUT(0x1006A0A10);
}

void sub_1006A0A9C(void *a1)
{
  sub_1006A28D0(a1);

  operator delete();
}

uint64_t sub_1006A0AD4(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102468B38;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 248) = 0;
  *(a1 + 96) = xmmword_101C76220;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 239) = 0;
  sub_1006A0B78(a1 + 256, a4);
  return a1;
}

uint64_t sub_1006A0B78(uint64_t a1, uint64_t a2)
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

void *sub_1006A0C10(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A0CCC(a1, a3, a4, v7);
  sub_1006A0EF0(v7);
  *a1 = &off_102469CD8;
  sub_10069C8B4((a1 + 18), a2);
  return a1;
}

uint64_t sub_1006A0CCC(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102469D48;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  sub_1006A0E58(a1 + 112, a4);
  return a1;
}

void *sub_1006A0D58(void *a1)
{
  *a1 = off_102469D48;
  v2 = a1 + 2;
  sub_1006A0EF0((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006A0DAC(void *a1)
{
  sub_1006A284C(a1);

  operator delete();
}

void sub_1006A0DE4(void *a1)
{
  *a1 = off_102469D48;
  v1 = a1 + 2;
  sub_1006A0EF0((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_1006A0E58(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A0EF0(uint64_t a1)
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

void *sub_1006A0F70(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A102C(a1, a3, a4, v7);
  sub_1006A124C(v7);
  *a1 = &off_102469D78;
  sub_10069C8B4((a1 + 18), a2);
  return a1;
}

uint64_t sub_1006A102C(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102469DE8;
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  sub_1006A11B4(a1 + 112, a4);
  return a1;
}

void *sub_1006A10B4(void *a1)
{
  *a1 = off_102469DE8;
  v2 = a1 + 2;
  sub_1006A124C((a1 + 14));
  sub_100102BC8(v2);
  return a1;
}

void sub_1006A1108(void *a1)
{
  sub_1006A27C8(a1);

  operator delete();
}

void sub_1006A1140(void *a1)
{
  *a1 = off_102469DE8;
  v1 = a1 + 2;
  sub_1006A124C((a1 + 14));
  sub_100102BC8(v1);

  operator delete();
}

uint64_t sub_1006A11B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A124C(uint64_t a1)
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

void *sub_1006A12CC(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A1388(a1, a3, a4, v7);
  sub_1006A179C(v7);
  *a1 = &off_102469E18;
  sub_10069C8B4((a1 + 20), a2);
  return a1;
}

uint64_t sub_1006A1388(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = &off_102469E88;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1006A15C4(a1 + 128, a4);
  return a1;
}

void sub_1006A1418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000B96B4(va);
  sub_1006A165C(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A1438(uint64_t a1)
{
  *a1 = &off_102469E88;
  v2 = (a1 + 16);
  sub_1006A179C(a1 + 128);
  v4 = (a1 + 104);
  sub_1000B96B4(&v4);
  sub_1006A165C(v2);
  return a1;
}

void sub_1006A14A4(void *a1)
{
  *a1 = &off_102469E18;
  sub_10069CBB0((a1 + 20));
  sub_1006A1438(a1);

  operator delete();
}

uint64_t sub_1006A150C(uint64_t a1)
{
  if (!*(a1 + 184))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 160, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1006A158C(uint64_t a1)
{
  sub_1006A1438(a1);

  operator delete();
}

uint64_t sub_1006A15C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A165C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v14 = (v7 + 8);
        sub_1000B96B4(&v14);
        v7 += 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1006A179C(uint64_t a1)
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

void *sub_1006A181C(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A18D8(a1, a3, a4, v7);
  sub_1006A1AFC(v7);
  *a1 = &off_102469EB8;
  sub_10069C8B4((a1 + 20), a2);
  return a1;
}

uint64_t sub_1006A18D8(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = off_102469F28;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1006A1A64(a1 + 128, a4);
  return a1;
}

void *sub_1006A1964(void *a1)
{
  *a1 = off_102469F28;
  v2 = a1 + 2;
  sub_1006A1AFC((a1 + 16));
  sub_10049AC1C(v2);
  return a1;
}

void sub_1006A19B8(void *a1)
{
  sub_1006A26F0(a1);

  operator delete();
}

void sub_1006A19F0(void *a1)
{
  *a1 = off_102469F28;
  v1 = a1 + 2;
  sub_1006A1AFC((a1 + 16));
  sub_10049AC1C(v1);

  operator delete();
}

uint64_t sub_1006A1A64(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A1AFC(uint64_t a1)
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

void *sub_1006A1B7C(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A1C38(a1, a3, a4, v7);
  sub_1006A2054(v7);
  *a1 = &off_102469F58;
  sub_10069C8B4((a1 + 22), a2);
  return a1;
}

uint64_t sub_1006A1C38(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = &off_102469FC8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  sub_1006A1E60(a1 + 144, a4);
  return a1;
}

void sub_1006A1CC0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  sub_1006A1EF8(v2);
  _Unwind_Resume(a1);
}

void *sub_1006A1CE4(void *a1)
{
  *a1 = &off_102469FC8;
  sub_1006A2054((a1 + 18));
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  sub_1006A1EF8(a1 + 2);
  return a1;
}

void sub_1006A1D40(void *a1)
{
  *a1 = &off_102469F58;
  sub_10069CBB0((a1 + 22));
  sub_1006A1CE4(a1);

  operator delete();
}

uint64_t sub_1006A1DA8(uint64_t a1)
{
  if (!*(a1 + 200))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 176, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1006A1E28(void *a1)
{
  sub_1006A1CE4(a1);

  operator delete();
}

uint64_t sub_1006A1E60(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A1EF8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x55];
    v7 = *v6;
    v8 = *v6 + 48 * (v5 % 0x55);
    v9 = v2[(a1[5] + v5) / 0x55] + 48 * ((a1[5] + v5) % 0x55);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 24);
        if (v10)
        {
          *(v8 + 32) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 48;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 42;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 85;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1006A2054(uint64_t a1)
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

void *sub_1006A20D4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A2190(a1, a3, a4, v7);
  sub_1006A261C(v7);
  *a1 = off_102469FF8;
  sub_10069C8B4((a1 + 23), a2);
  return a1;
}

uint64_t sub_1006A2190(uint64_t a1, double a2, double a3, uint64_t a4)
{
  *a1 = &off_10246A068;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0x600000006;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 136) = _Q0;
  sub_1006A2420(a1 + 152, a4);
  return a1;
}

void sub_1006A2228(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 120) = v6;
    operator delete(v6);
  }

  sub_1006A24B8(v2);
  _Unwind_Resume(a1);
}

void *sub_1006A2250(void *a1)
{
  *a1 = &off_10246A068;
  sub_1006A261C((a1 + 19));
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  sub_1006A24B8(a1 + 2);
  return a1;
}

void *sub_1006A22AC(void *a1)
{
  *a1 = off_102469FF8;
  sub_10069CBB0((a1 + 23));

  return sub_1006A2250(a1);
}

void sub_1006A2300(void *a1)
{
  *a1 = off_102469FF8;
  sub_10069CBB0((a1 + 23));
  sub_1006A2250(a1);

  operator delete();
}

uint64_t sub_1006A2368(uint64_t a1)
{
  if (!*(a1 + 208))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 184, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1006A23E8(void *a1)
{
  sub_1006A2250(a1);

  operator delete();
}

uint64_t sub_1006A2420(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A24B8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x49];
    v7 = *v6;
    v8 = *v6 + 56 * (v5 % 0x49);
    v9 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 16);
        if (v10)
        {
          *(v8 + 24) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 56;
        if (v8 - v7 == 4088)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 36;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 73;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1006A261C(uint64_t a1)
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

void *sub_1006A269C(void *a1)
{
  *a1 = &off_102469F58;
  sub_10069CBB0((a1 + 22));

  return sub_1006A1CE4(a1);
}

void *sub_1006A26F0(void *a1)
{
  *a1 = &off_102469EB8;
  v2 = a1 + 16;
  sub_10069CBB0((a1 + 20));
  *a1 = off_102469F28;
  sub_1006A1AFC(v2);
  sub_10049AC1C(a1 + 2);
  return a1;
}

uint64_t sub_1006A2774(void *a1)
{
  *a1 = &off_102469E18;
  sub_10069CBB0((a1 + 20));

  return sub_1006A1438(a1);
}

void *sub_1006A27C8(void *a1)
{
  *a1 = &off_102469D78;
  v2 = a1 + 14;
  sub_10069CBB0((a1 + 18));
  *a1 = off_102469DE8;
  sub_1006A124C(v2);
  sub_100102BC8(a1 + 2);
  return a1;
}

void *sub_1006A284C(void *a1)
{
  *a1 = &off_102469CD8;
  v2 = a1 + 14;
  sub_10069CBB0((a1 + 18));
  *a1 = off_102469D48;
  sub_1006A0EF0(v2);
  sub_100102BC8(a1 + 2);
  return a1;
}

void *sub_1006A28D0(void *a1)
{
  *a1 = &off_102469BF0;
  v2 = a1 + 285;
  a1[285] = off_102469FF8;
  sub_10069CBB0((a1 + 308));
  sub_1006A2250(v2);
  a1[259] = &off_102469F58;
  sub_10069CBB0((a1 + 281));
  sub_1006A1CE4(a1 + 259);
  sub_1006A26F0(a1 + 235);
  a1[211] = &off_102469E18;
  sub_10069CBB0((a1 + 231));
  sub_1006A1438((a1 + 211));
  sub_100699148(a1 + 182);
  sub_10069A638(a1 + 138);
  sub_1006A27C8(a1 + 116);
  a1[59] = off_102469158;
  sub_100699C14((a1 + 112));
  sub_100699C94(a1 + 61);
  sub_1006A284C(a1 + 37);
  a1[1] = off_102468B38;
  sub_1006980F4((a1 + 33));
  sub_10051B848(a1 + 3);
  return a1;
}

uint64_t sub_1006A2A98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A0D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A2AC4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    sub_100695F28();
  }

  else
  {
    sub_100695FEC();
  }

  return 1;
}

uint64_t sub_1006A2AF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A2BB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A168;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A2BF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A2CB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A1E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A2CF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A2DB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006A2DFC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = off_1025019A0;
  v9 = a5;
  *a1 = off_10246A2E8;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = a4;
  v10 = a2;
  a1[5] = 0;
  a1[4] = v10;
  a1[6] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1006A2F84;
  aBlock[3] = &unk_10245AE50;
  aBlock[4] = v14;
  a1[5] = _Block_copy(aBlock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006A2F98;
  v12[3] = &unk_10245AE78;
  v12[4] = v14;
  a1[6] = _Block_copy(v12);
  _Block_object_dispose(v14, 8);
  return a1;
}

void sub_1006A2FB4(uint64_t a1)
{
  sub_1006A31AC(a1);

  operator delete();
}

id sub_1006A2FEC(void *a1, uint64_t a2, void *__src, size_t a4)
{
  v6 = a2;
  *&__dst[24] = 0;
  memset(__dst, 0, 21);
  if (a4 >= 0x20)
  {
    v8 = 32;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0x21)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v21 = 0x8000000101C881E5 & 0x7FFFFFFFFFFFFFFFLL;
      v22 = 2048;
      v23 = 32;
      v24 = 2048;
      v25 = a4;
      v26 = 1024;
      v27 = v6;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101905C00();
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006A3228;
  v15[3] = &unk_10246A330;
  v15[4] = v12;
  v15[5] = v11;
  v16 = *__dst;
  v17 = *&__dst[16];
  v18 = v10;
  return [v13 async:v15];
}

uint64_t sub_1006A31AC(uint64_t a1)
{
  *a1 = off_10246A2E8;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  return sub_1017E7D44(a1);
}

uint64_t sub_1006A3228(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[10];

    return v3(a1 + 6, v4);
  }

  return result;
}

void sub_1006A32A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246A360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1006A32F8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1006A34D0(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101905D00();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101905D14();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101905D00();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101905E10();
    }
  }

  return 0;
}

id sub_1006A34D0(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EE40))
  {
    if ([objc_msgSend(a2 "serialized")] != 304)
    {
      sub_101906104();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1006A3588(uint64_t a1)
{
  *a1 = off_10246A3D0;
  sub_1003C93BC(a1 + 64, *(a1 + 72));
  sub_10045E1B0((a1 + 16));
  return a1;
}

void sub_1006A35DC(uint64_t a1)
{
  *a1 = off_10246A3D0;
  sub_1003C93BC(a1 + 64, *(a1 + 72));
  sub_10045E1B0((a1 + 16));

  operator delete();
}

void sub_1006A3650(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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

void sub_1006A37D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_1006A3824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    sub_100007244((a2 + 16), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(a2 + 16) = *(a1 + 48);
    *(a2 + 32) = *(a1 + 64);
  }

  return sub_10069B5FC((a2 + 40), (a1 + 72));
}

void sub_1006A3884(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_1006A38A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  return sub_10069B5FC((a1 + 72), (a2 + 72));
}

void sub_1006A3900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A391C(uint64_t a1)
{
  sub_100106180((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_1006A396C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1006A39EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006A3A00(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006A3A00(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100687170(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1006A3A48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100687170(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006A3A8C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A3ACC(uint64_t a1)
{
  sub_1008AF7F0((a1 + 696));
  sub_100697F4C(a1 + 720);
  v2 = *(a1 + 696);
  if (v2)
  {
    *(a1 + 704) = v2;
    operator delete(v2);
  }

  sub_100666704((a1 + 640));
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100666704((a1 + 176));
  sub_100666704((a1 + 128));
  sub_100106180((a1 + 64));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

uint64_t sub_1006A3BF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A4B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A3C28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006A3C74(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 56 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006A3D3C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x38)) + 72 * (v7 % 0x38);
  *v8 = *a2;
  result = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  *(v8 + 16) = result;
  ++a1[5];
  return result;
}

void sub_1006A3D3C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x38;
  v3 = v1 - 56;
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

void sub_1006A3EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1006A3F10(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006A3F9C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_1006A3F9C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_1006A4124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1006A4170(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006A4228(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void sub_1006A4228(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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

void sub_1006A43B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1006A43FC(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006A44AC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void sub_1006A44AC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_1006A4634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006A4680(uint64_t a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Disabling buffer at CLWorkoutPredictorSourceBuffer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906288();
  }

  *(a1 + 328) = 0x10000000000000;
  *(a1 + 264) = 0;
  return (*(*a1 + 24))(a1);
}

uint64_t sub_1006A474C(uint64_t a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Disabling buffer at CLWorkoutPredictorSourceBuffer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906364();
  }

  *(a1 + 72) = 0x10000000000000;
  *(a1 + 8) = 0;
  return (*(*a1 + 24))(a1);
}

uint64_t sub_1006A4818(uint64_t a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Disabling buffer at CLWorkoutPredictorSourceBuffer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906440();
  }

  *(a1 + 72) = 0x10000000000000;
  *(a1 + 8) = 0;
  return (*(*a1 + 24))(a1);
}

uint64_t sub_1006A48E4(uint64_t a1)
{
  *a1 = off_10246A548;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1006A4A08(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1006A4A38()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_1006A4AB0()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1006A4B28()
{
  sub_10000EC00(qword_1026585F0, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, qword_1026585F0, dword_100000000);
  qword_102658608 = off_102469470;
  qword_102658620 = &qword_102658608;
  __cxa_atexit(sub_1003EE78C, &qword_102658608, dword_100000000);
  qword_102658628 = off_1024694F0;
  qword_102658640 = &qword_102658628;
  __cxa_atexit(sub_1003EE78C, &qword_102658628, dword_100000000);
  qword_102658648 = off_102469570;
  qword_102658660 = &qword_102658648;
  __cxa_atexit(sub_1003EE790, &qword_102658648, dword_100000000);
  qword_102658668 = off_1024695F0;
  qword_102658680 = &qword_102658668;
  __cxa_atexit(sub_1003EE790, &qword_102658668, dword_100000000);
  __cxa_atexit(sub_1005A704C, aAcc800fp_1, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp_1, dword_100000000);
}

void sub_1006A5580(_Unwind_Exception *a1)
{
  if (STACK[0x358])
  {
    sub_100008080(STACK[0x358]);
  }

  _Unwind_Resume(a1);
}

void sub_1006A5960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A597C(uint64_t a1, char *a2, void *a3)
{
  v5 = sub_1006A59EC(a1, a2, a3);
  *v5 = off_10246A5B0;
  *(v5 + 109) = 65792;
  sub_1006A5A98(v5, a2);
  return a1;
}

uint64_t sub_1006A59EC(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_10246A7D0;
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

void sub_1006A5A7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5A98(uint64_t a1, const char *a2)
{
  v16 = 0;
  sub_10004FD18();
  sub_10001CAF4(buf);
  if (sub_100185ADC(*buf, "LocationProviders", v15, 0xFFFFFFFFLL))
  {
    v4 = sub_10001CB4C(v15, a2, &v16, 0xFFFFFFFFLL);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (v4)
    {
      *(a1 + 111) = v16;
      v4 = 1;
    }
  }

  else
  {
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    v4 = 0;
  }

  if ((*(a1 + 111) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10190651C();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380675;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "LocationProvider,#Warning provider %{private}s disabled - will run but not send locations to clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190664C(buf);
      v17 = 136380675;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 0, "LocationProvider,#Warning provider %{private}s disabled - will run but not send locations to clients", &v17, 12);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationProvider::checkEnable(const char *)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (qword_1025D4600 != -1)
  {
    sub_10190651C();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 111);
    *buf = 136380931;
    *&buf[4] = a2;
    *&buf[12] = 1026;
    *&buf[14] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "LocationProvider,Location Provider (%{private}s) set to (%{public}d)", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190664C(buf);
    v9 = *(a1 + 111);
    v17 = 136380931;
    v18 = a2;
    v19 = 1026;
    v20 = v9;
    LODWORD(v14) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 0, "LocationProvider,Location Provider (%{private}s) set to (%{public}d)", &v17, v14);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationProvider::checkEnable(const char *)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  sub_100005DA4();
  return v4;
}

uint64_t sub_1006A5E08(uint64_t a1)
{
  *a1 = off_10246A7D0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006A5E94(uint64_t a1)
{
  sub_1006A5E08(a1);

  operator delete();
}

uint64_t sub_1006A5F08(char *a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023F73C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
  {
    v3 = a1 + 8;
    if (a1[31] < 0)
    {
      v3 = *v3;
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "LocationProvider,%s,Wrong registration method called!", &v5, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019067E8(a1);
  }

  return 0;
}

void sub_1006A6014(uint64_t a1, _OWORD *a2)
{
  sub_100021AFC(v9);
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v10[0] = a2[8];
  *(v10 + 12) = *(a2 + 140);
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v6 = a2[5];
  v9[4] = a2[4];
  v9[5] = v6;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  v8 = 0;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 2;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 1;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 3;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 4;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 39;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 10;
  (*(*a1 + 136))(a1, &v8, v9);

  if (v15)
  {
    sub_100008080(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

void sub_1006A6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1006A62F8(char *a1, _OWORD *a2, uint64_t a3)
{
  if (qword_1025D4810 != -1)
  {
    sub_101906F98();
  }

  v6 = qword_1025D4818;
  if (os_log_type_enabled(qword_1025D4818, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1 + 8;
    if (a1[31] < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "LocationProvider,Sending through simulated location for %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906FAC();
  }

  sub_100021AFC(buf);
  v8 = a2[7];
  v25 = a2[6];
  v26 = v8;
  v27[0] = a2[8];
  *(v27 + 12) = *(a2 + 140);
  v9 = a2[3];
  v21 = a2[2];
  v22 = v9;
  v10 = a2[5];
  v23 = a2[4];
  v24 = v10;
  v11 = a2[1];
  *buf = *a2;
  v20 = v11;
  memcpy(v28, a3, 0x201uLL);
  v12 = *(a3 + 520);
  v13 = *(a3 + 528);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28[65] = v12;
  v14 = v29;
  v29 = v13;
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = *(a3 + 616);
  v34 = *(a3 + 600);
  v35[0] = v15;
  *(v35 + 9) = *(a3 + 625);
  v16 = *(a3 + 552);
  v30 = *(a3 + 536);
  v31 = v16;
  v17 = *(a3 + 584);
  v32 = *(a3 + 568);
  v33 = v17;
  v28[43] = sub_1000081AC();
  v18 = 0;
  (*(*a1 + 152))(a1, &v18, buf, 0, 0xFFFFFFFFLL, 1);

  if (v39)
  {
    sub_100008080(v39);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v36)
  {
    sub_100008080(v36);
  }

  if (v29)
  {
    sub_100008080(v29);
  }
}

void sub_1006A6520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A6550(uint64_t a1)
{
  sub_100021AFC(v3);
  v2 = 9;
  (*(*a1 + 152))(a1, &v2, v3, 0, 0xFFFFFFFFLL, 1);

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5)
  {
    sub_100008080(v5);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1006A6608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1006A661C(char *a1, void *a2)
{
  if (qword_1025D4810 != -1)
  {
    sub_101906F98();
  }

  v4 = qword_1025D4818;
  if (os_log_type_enabled(qword_1025D4818, OS_LOG_TYPE_DEBUG))
  {
    v5 = "enabled";
    if (!a2)
    {
      v5 = "disabled";
    }

    v6 = a1 + 8;
    if (a1[31] < 0)
    {
      v6 = *v6;
    }

    *buf = 136315394;
    v20 = v5;
    v21 = 2080;
    v22 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "LocationProvider,Simulation is now %s for %s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019070B4(a2, a1);
  }

  a1[109] = a2;
  *buf = 9;
  (*(*a1 + 120))(a1, buf);
  *buf = 0;
  (*(*a1 + 120))(a1, buf);
  a1[112] = 0;
  sub_100021AFC(v11);
  v14 = a1[109];
  if (qword_1025D4810 != -1)
  {
    sub_1019071F8();
  }

  v7 = qword_1025D4818;
  if (os_log_type_enabled(qword_1025D4818, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "LocationProvider,Notifying", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101907220(buf);
    v10 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4818, 2, "LocationProvider,Notifying", &v10, 2);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationProvider::setSimulationEnabled(BOOL)", "%s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  *buf = 12;
  (*(*a1 + 152))(a1, buf, v11, 1, 0xFFFFFFFFLL, 0);

  if (v17)
  {
    sub_100008080(v17);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    sub_100008080(v12);
  }
}

void sub_1006A6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void *sub_1006A696C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  result = sub_1000EE218(a1, a2, a3, a4, a5, a6);
  *result = off_10246A6F8;
  return result;
}

void *sub_1006A69A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_1006A69D4(a1, a2, a3, a4, a5);
  *result = off_10246A6F8;
  return result;
}

uint64_t sub_1006A69D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &off_102456910;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  [a3 silo];
  v10 = (*(*a2 + 80))(a2);
  v19 = &OBJC_PROTOCOL___CLIntersiloServiceProtocol;
  [+[CLIntersiloInterface sharedInterface](CLIntersiloInterface "sharedInterface")];
  v18 = &OBJC_PROTOCOL___CLIntersiloClientProtocol;
  [+[CLIntersiloInterface sharedInterface](CLIntersiloInterface "sharedInterface")];
  v11 = [a3 silo];
  if (*(a2 + 31) < 0)
  {
    sub_100007244(__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 8);
    v17 = *(a2 + 24);
  }

  if (v17 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = [CLIntersiloProxy proxyForRecipientObject:v10 inSilo:v11 recipientName:[NSString stringWithUTF8String:v12, __p[0], __p[1], v17]];
  *(a1 + 16) = v13;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    v13 = *(a1 + 16);
  }

  v14 = v13;
  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a3, "silo")}];
  return a1;
}

void sub_1006A6BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1006A6CBC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 160);
  *(a2 + 140) = *(a1 + 172);
  v3 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v3;
  v4 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1006A6D20(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v4 = *sub_1005A4918(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_1006A6DDC(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_10246A8D0;
  sub_1006A8108((a1 + 1), a3);
  a1[5] = a2;
  sub_101365ABC((a1 + 6), a2, a1);
}

void sub_1006A6FE0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 248);
  *(v1 + 248) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_101365C08(v1 + 48);
  sub_1006A8088(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1006A7074(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101907264();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationClient::onWifiProviderNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101907278();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationClient::onWifiProviderNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006A7BC4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006A7240(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101907264();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationClient::onPipelineProviderNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101907278();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationClient::onPipelineProviderNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006A7EC4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006A740C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4600 != -1)
  {
    sub_1019072A0();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "WLC: WifiLocationClient request timed out", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019072B4();
  }

  sub_1006A74AC(v1);
}

void sub_1006A74AC(uint64_t a1)
{
  if (*(a1 + 208))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v2 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "WLC: Cancel location request", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190745C();
    }

    [*(a1 + 200) setNextFireDelay:1.79769313e308];
    [*(*(a1 + 240) + 16) unregister:*(*(a1 + 240) + 8) forNotification:4];
    if (*(a1 + 232) == 1)
    {
      [*(*(a1 + 248) + 16) unregister:*(*(a1 + 248) + 8) forNotification:0];
    }

    *(a1 + 208) = 0;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WLC: Cancel location request, but no active request", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907388();
    }
  }
}

uint64_t sub_1006A75FC(uint64_t a1)
{
  *a1 = off_10246A8D0;
  [*(a1 + 200) invalidate];

  *(a1 + 200) = 0;
  v2 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_101365C08(a1 + 48);
  sub_1006A8088(a1 + 8);
  return a1;
}

void sub_1006A76C8(uint64_t a1)
{
  sub_1006A75FC(a1);

  operator delete();
}

uint64_t sub_1006A7700(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100125670(a1 + 48);
  if (v4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 16))
      {
        v6 = "Yes";
      }

      else
      {
        v6 = "No";
      }

      v7 = *a2;
      v8 = a2[1];
      *buf = 136381187;
      *&buf[4] = v6;
      v39 = 2049;
      *v40 = v7;
      *&v40[8] = 2049;
      *&v40[10] = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WLC: requestLocation, w2,%{private}s, acc,%{private}.01f, tout,%{private}.01f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190760C(a2);
    }

    if ((*(a1 + 208) & 1) == 0)
    {
      [*(*(a1 + 240) + 16) register:*(*(a1 + 240) + 8) forNotification:4 registrationInfo:0];
    }

    Current = CFAbsoluteTimeGetCurrent();
    v10 = sub_1002E50C8(a1 + 48);
    v37 = 3;
    LODWORD(__p) = 6910051;
    sub_100183FDC(buf, 1, v10, &__p, Current);
    if (v37 < 0)
    {
      operator delete(__p);
    }

    v11 = [objc_msgSend(*(a1 + 40) "vendor")];
    v26 = *buf;
    v27 = buf[8];
    if (SHIBYTE(v41) < 0)
    {
      sub_100007244(&v28, *&v40[2], *&v40[10]);
    }

    else
    {
      v28 = *&v40[2];
      v29 = v41;
    }

    v31 = v43;
    v32 = v44;
    v33[0] = v45[0];
    *(v33 + 12) = *(v45 + 12);
    v30 = v42;
    if (SHIBYTE(v47) < 0)
    {
      sub_100007244(&v34, v46, *(&v46 + 1));
    }

    else
    {
      v34 = v46;
      v35 = v47;
    }

    v13 = [v11 requestLocationUpdateWithParameters:sub_1005F06B8(&v26)];
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    v15 = (sub_10001CF04(v13, v14) & a2[2]);
    if (*(a1 + 208) == 1)
    {
      v16 = *(a1 + 232);
      if (!v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = 0;
      if (!v15)
      {
LABEL_37:
        if (!(v15 & 1 | ((v16 & 1) == 0)))
        {
          [*(*(a1 + 248) + 16) unregister:*(*(a1 + 248) + 8) forNotification:0];
        }

        *(a1 + 208) = 1;
        [*(a1 + 200) setNextFireDelay:*(a1 + 224)];
        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(*&v40[2]);
        }

        return v4;
      }
    }

    if ((v16 & 1) == 0)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      v23 = _Q0;
      v24 = 0;
      v25 = dword_100000000;
      sub_10002FA64(&v23);
    }

    goto LABEL_37;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1019072A0();
  }

  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WLC: requestLocation, but wifi off", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101907530();
  }

  return v4;
}

void sub_1006A7B08(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*a3 == 1)
  {
    v8 = v3;
    v9 = v4;
    if ((sub_100125670(result + 48) & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1019072A0();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WLC: Cancel request on WiFi power off", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101907744();
      }

      sub_1006A74AC(result);
    }
  }
}

void sub_1006A7BC4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WLC: Handle wifi location", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907904();
    }

    sub_1006A7D30(a1, a4);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a3;
      v10[0] = 67240192;
      v10[1] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#Warning WLC: Only expecting kNotificationLocationBystander from wifi provider, notification,%{public}d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907818(a3);
    }
  }
}

void sub_1006A7D30(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 96);
  v2 = *(a2 + 96);
  if (v2 == 4 || v2 == 11)
  {
    if (*(a2 + 20) > 0.0 && sub_100020608(*(a2 + 4), *(a2 + 12)) && *(a2 + 20) < *(a1 + 216))
    {
      sub_1006A74AC(a1);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(*v7 + 48);

      v8();
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v10 = *v3;
      v11[0] = 67240192;
      v11[1] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WLC: Non-WiFi location in CLWifiLocationClient, type,%{public}d", v11, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019079D8(v3);
    }
  }
}

void sub_1006A7EC4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v6 = *a3;
      v10[0] = 67240192;
      v10[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#Warning WLC: Only expecting kNotificationLocation from pipeline provider, notification,%{public}d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907AC4(a3);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WLC: Handle wifi 2.0 location", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907BB0();
    }

    sub_1006A7D30(a1, a4);
  }
}

uint64_t sub_1006A8088(uint64_t a1)
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

uint64_t sub_1006A8108(uint64_t a1, uint64_t a2)
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

void sub_1006A81A0()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_1006A8280(uint64_t result, void *a2)
{
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 52) = 0;
  *result = off_10246A960;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v2 = a2[1];
  *(result + 56) = *a2;
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1006A82CC(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    sub_100246AA8(a1 + 64);
  }

  sub_1004906DC(a1 + 16);
  return a1;
}

uint64_t sub_1006A830C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (*(result + 8) != v2)
  {
    return sub_10023F584(v2 - 56, a2);
  }

  return result;
}

float sub_1006A8324(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101907C84();
    }

    v1 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "Failed Scoring", v12, 2u);
    }

    v2 = 0.0;
    if (sub_10000A100(121, 2))
    {
      sub_101907DB8();
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 == v5)
    {
      return 0.0;
    }

    else
    {
      v6 = v4 + 64;
      v2 = 0.0;
      do
      {
        *v12 = *(v6 - 64);
        sub_10023F684(&v12[16], v6 - 48);
        v7 = v6 - 64;
        v15 = *(v6 - 8);
        sub_100246B2C(v16, v6);
        v8 = *(v6 + 40);
        v18 = *(v6 + 48);
        v17 = v8;
        v9 = (*(*a1 + 40))(a1, v12);
        if (v16[32] == 1)
        {
          sub_100246AA8(v16);
        }

        v2 = v9 + v2;
        sub_1004906DC(&v12[16]);
        v6 += 120;
      }

      while (v7 + 120 != v5);
      if (qword_1025D47D0 != -1)
      {
        sub_101907D90();
      }

      v10 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 68289283;
        *&v12[4] = 0;
        *&v12[8] = 2082;
        *&v12[10] = "";
        v13 = 2049;
        v14 = v2;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Trace score, score:%{private}f}", v12, 0x1Cu);
      }
    }
  }

  return v2;
}

double sub_1006A858C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8) - *a2;
  (*(**(a1 + 56) + 128))(v22);
  v5 = *&v22[5];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  v6 = 0.0;
  if (v4 < v5)
  {
    return v6;
  }

  LODWORD(v22[0]) = 11;
  if (!sub_1000735F4((a2 + 16), v22))
  {
    return v6;
  }

  v21 = 11;
  v7 = sub_1000735F4((a2 + 16), &v21);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *(v7 + 5);
  if (!v8)
  {
    return v6;
  }

  v9 = *(a2 + 112) / v8;
  (*(**(a1 + 56) + 128))(v22);
  v10 = *&v22[9];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  if (v9 < v10)
  {
    return v6;
  }

  v11 = *(a2 + 104) / v4;
  (*(**(a1 + 56) + 128))(v22);
  v12 = *&v22[10];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  if (v11 < v12)
  {
    return v6;
  }

  LODWORD(v22[0]) = 6;
  v13 = sub_1000735F4((a2 + 16), v22);
  v14 = 0.0;
  if (!v13)
  {
    goto LABEL_10;
  }

  v21 = 6;
  v15 = sub_1000735F4((a2 + 16), &v21);
  if (!v15)
  {
LABEL_18:
    sub_1000432E8("unordered_map::at: key not found");
  }

  LODWORD(v16) = *(v15 + 5);
  v14 = v16;
LABEL_10:
  v17 = v14 / v4;
  (*(**(a1 + 56) + 128))(v22);
  v18 = *&v22[6];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  if (v17 >= v18)
  {
    v6 = v4 + *(a2 + 104);
    if (*(a2 + 96) == 1 && *(a2 + 88) == 1)
    {
      (*(**(a1 + 56) + 128))(v22);
      v19 = sub_1002D3834(v25, (a2 + 64));
      sub_1004906DC(v25);
      sub_1004906DC(v24);
      sub_1004906DC(v23);
      if (v19)
      {
        (*(**(a1 + 56) + 128))(v22);
        v6 = v6 * *&v22[7];
        sub_1004906DC(v25);
        sub_1004906DC(v24);
        sub_1004906DC(v23);
      }
    }

    LODWORD(v22[0]) = 4;
    if (sub_1000735F4((a2 + 16), v22))
    {
      (*(**(a1 + 56) + 128))(v22);
      v6 = v6 * *&v22[8];
      sub_1004906DC(v25);
      sub_1004906DC(v24);
      sub_1004906DC(v23);
    }
  }

  return v6;
}

void sub_1006A88FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006A8A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A8910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 8);
  sub_1006A9158(a1 + 8, *(a1 + 8));
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  v9 = 1065353216;
  v10 = 0;
  v11[0] = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_10023F584(v11, a3);
  sub_10023F6FC(v5, &v7);
  if (*(a1 + 40) == 1)
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  if (v12 == 1)
  {
    sub_100246AA8(v11);
  }

  return sub_1004906DC(v8);
}

void sub_1006A89E8(void *a1)
{
  sub_1006A91C0(a1);

  operator delete();
}

uint64_t sub_1006A8A20(uint64_t a1)
{
  sub_1004906DC(a1 + 200);
  sub_1004906DC(a1 + 160);
  sub_1004906DC(a1 + 120);
  return a1;
}

uint64_t sub_1006A8A5C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_100246AA8(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (*(&off_10246A9B0 + v4))(v6);
    }
  }

  return result;
}

uint64_t *sub_1006A8AD4(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_100246AA8(*result);
    *v4 = *a3;
    *(v4 + 24) = 1;
  }

  return result;
}

void sub_1006A8B28(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24))
  {
    v4[0] = a1;
    v4[1] = __str;
    sub_1006A8B70(v4);
  }

  else
  {

    std::string::operator=(this, __str);
  }
}

__n128 sub_1006A8B70(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_100007244(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_100246AA8(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[1].n128_u32[2] = 0;
  return result;
}

uint64_t sub_1006A8BDC(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_10028C64C();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1006A8D48(a1, v6);
  }

  v7 = 120 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = *a2;
  sub_10023F684(v7 + 16, a2 + 16);
  *(v7 + 56) = *(a2 + 56);
  sub_100246B2C((v7 + 64), a2 + 64);
  v8 = *(a2 + 104);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 104) = v8;
  *&v17 = v17 + 120;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1006A8DA0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1006A9088(&v15);
  return v14;
}

void sub_1006A8D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1004906DC(v7 + 16);
  sub_1006A9088(va);
  _Unwind_Resume(a1);
}

void sub_1006A8D48(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1006A8DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2 + 64;
    do
    {
      *v7 = *(v8 - 64);
      sub_10067DFB8(v7 + 16, (v8 - 48));
      v9 = *(v8 - 8);
      *(v7 + 64) = 0;
      *(v7 + 56) = v9;
      *(v7 + 96) = 0;
      if (*(v8 + 32) == 1)
      {
        sub_1006A8F0C(v7 + 64, v8);
        *(v7 + 96) = 1;
      }

      v10 = v8 - 64;
      v11 = *(v8 + 40);
      *(v7 + 112) = *(v8 + 48);
      *(v7 + 104) = v11;
      v7 = v16 + 120;
      v16 += 120;
      v8 += 120;
    }

    while (v10 + 120 != a3);
  }

  v14 = 1;
  sub_1006A8EB0(a1, a2, a3);
  return sub_1006A8FD8(v13);
}

uint64_t sub_1006A8EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 64;
    do
    {
      if (*(v4 + 32) == 1)
      {
        sub_100246AA8(v4);
      }

      result = sub_1004906DC(v4 - 48);
      v6 = v4 + 56;
      v4 += 120;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t sub_1006A8F0C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_1006A8F44(a1, a2);
  return a1;
}

uint64_t sub_1006A8F44(uint64_t a1, uint64_t a2)
{
  result = sub_100246AA8(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_10246A9D0 + v5))(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 sub_1006A8FA8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_1006A8FD8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006A9024(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006A9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 24) == 1)
      {
        sub_100246AA8(v6 - 56);
      }

      result = sub_1004906DC(v6 - 104);
      v6 -= 120;
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t sub_1006A9088(uint64_t a1)
{
  sub_1006A90C0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1006A90C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 120;
      if (*(v2 - 24) == 1)
      {
        sub_100246AA8(v2 - 56);
      }

      result = sub_1004906DC(v2 - 104);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1006A9158(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 120)
  {
    if (*(i - 24) == 1)
    {
      sub_100246AA8(i - 56);
    }

    result = sub_1004906DC(i - 104);
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_1006A91C0(void *a1)
{
  *a1 = off_10246A960;
  v2 = a1[8];
  if (v2)
  {
    sub_100008080(v2);
  }

  v4 = (a1 + 1);
  sub_1006A9224(&v4);
  return a1;
}

void sub_1006A9224(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006A9158(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1006A9278(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0x726566667542434CLL;
  v7 = (a1 + 16);
  *(a1 + 39) = 8;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  *(a1 + 80) = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 88) = _Q0;
  *(a1 + 120) = 0xBFF0000000000000;
  *(a1 + 136) = 0xBFF0000000000000;
  *(a1 + 152) = _Q0;
  v28 = _Q0;
  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0xBFF0000000000000;
  *(a1 + 204) = 0;
  *(a1 + 196) = 0;
  *(a1 + 208) = 0xBFF0000000000000;
  *(a1 + 216) = 0;
  *(a1 + 220) = 7;
  v14 = *(a2 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  if (v14)
  {
    std::string::operator=((a1 + 16), a2);
  }

  v15 = (ceil(a3 / a4) + 1.0);
  sub_1006A9660(v8, v15);
  memset(v43, 0, sizeof(v43));
  v38 = 0u;
  *buf = off_1024DE5F8;
  *&buf[8] = v28;
  v39 = 0xBFF0000000000000;
  v40 = 0xBFF0000000000000;
  v41 = v28;
  v45 = 0xBFF0000000000000;
  v46 = 0x700000000;
  v42 = v28;
  *v43 = 0xBFF0000000000000;
  v44 = 0;
  sub_1006A97A4(v8, v15, buf);
  sub_1006A97E8(a1);
  *(a1 + 64) = 954437177 * ((*(a1 + 56) - *(a1 + 40)) >> 4);
  if (qword_1025D4600 != -1)
  {
    sub_101907EB4();
  }

  v16 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v17 = v7;
    if (*(a1 + 39) < 0)
    {
      v17 = *v7;
    }

    v19 = *a1;
    v18 = *(a1 + 8);
    v20 = *(a1 + 64);
    *buf = 136446978;
    *&buf[4] = v17;
    *&buf[12] = 2050;
    *&buf[14] = v18;
    *&buf[22] = 2050;
    *&v38 = v19;
    WORD4(v38) = 1026;
    *(&v38 + 10) = v20;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "%{public}s,initialize with time bin width %{public}.1f sec and total length sec %{public}.1f (samples: %{public}d)", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101907EB4();
    }

    v22 = v7;
    if (*(a1 + 39) < 0)
    {
      v22 = *v7;
    }

    v24 = *a1;
    v23 = *(a1 + 8);
    v25 = *(a1 + 64);
    v29 = 136446978;
    v30 = v22;
    v31 = 2050;
    v32 = v23;
    v33 = 2050;
    v34 = v24;
    v35 = 1026;
    v36 = v25;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "%{public}s,initialize with time bin width %{public}.1f sec and total length sec %{public}.1f (samples: %{public}d)", &v29, 38);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "CLTimeBinBuffer::CLTimeBinBuffer(const double, const double, const std::string &)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  return a1;
}

void sub_1006A9620(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A9660(uint64_t *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      sub_1001EBF28(a1, a2);
    }

    sub_10028C64C();
  }
}

void sub_1006A974C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A97A4(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((result[1] - *result) >> 4);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_1006A9A60(result, v5, a3);
  }

  else if (!v4)
  {
    result[1] = *result + 144 * a2;
  }
}

void sub_1006A97E8(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101907EDC();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v3 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 68);
    *buf = 136446722;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    v15 = 2048;
    v16 = sub_1006A9980(a1);
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "%{public}s,#ADL,clearing the buffer,old_sz,%d,len_sec,%.1f", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101907EF0(a1);
  }

  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = -1;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v6 != v5)
  {
    v7 = v6 + 140;
    __asm { FMOV            V0.2D, #-1.0 }

    do
    {
      *buf = 0;
      *&buf[8] = 0;
      *(v7 - 132) = _Q0;
      *(v7 - 116) = *buf;
      *(v7 - 100) = 0xBFF0000000000000;
      *(v7 - 92) = 0;
      *(v7 - 84) = 0xBFF0000000000000;
      *(v7 - 76) = 0;
      *(v7 - 68) = _Q0;
      *(v7 - 52) = _Q0;
      *(v7 - 36) = 0xBFF0000000000000;
      *(v7 - 28) = 0u;
      v13 = v7 + 4;
      *(v7 - 12) = 0xBFF0000000000000;
      *(v7 - 4) = 0x700000000;
      v7 += 144;
    }

    while (v13 != v5);
  }
}

double sub_1006A9980(uint64_t a1)
{
  v1 = -1.0;
  if (*(a1 + 68) >= 2)
  {
    v3 = *(a1 + 64);
    while (v3 >= 2)
    {
      v4 = sub_100027CC4(a1, --v3);
      if (sub_100028030(v4) && *(v4 + 136))
      {
        return *(a1 + 8) * (*(a1 + 76) - vcvtpd_s64_f64(*(v4 + 16) / *(a1 + 8)));
      }
    }
  }

  return v1;
}

uint64_t sub_1006A9A14(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = vcvtpd_s64_f64(a2 / v2);
  v4 = *(a1 + 76);
  if (v4 < v3 || v4 - *(a1 + 64) >= v3)
  {
    return a1 + 80;
  }

  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v4 - v3) / v2);
  }

  return sub_100027CC4(a1, v5);
}

void sub_1006A9A60(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0x8E38E38E38E38E39 * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 144 * a2;
      v11 = a1[1];
      do
      {
        *v4 = off_1024DE5F8;
        v12 = *(a3 + 8);
        v13 = *(a3 + 24);
        v14 = *(a3 + 40);
        *(v4 + 56) = *(a3 + 56);
        *(v4 + 40) = v14;
        *(v4 + 24) = v13;
        *(v4 + 8) = v12;
        v15 = *(a3 + 72);
        v16 = *(a3 + 88);
        v17 = *(a3 + 104);
        *(v4 + 120) = *(a3 + 120);
        *(v4 + 104) = v17;
        *(v4 + 88) = v16;
        *(v4 + 72) = v15;
        *(v4 + 128) = *(a3 + 128);
        v4 += 144;
        v11 += 144;
      }

      while (v4 != v10);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1C71C71C71C71C7)
    {
      sub_10028C64C();
    }

    v8 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xE38E38E38E38E3)
    {
      v9 = 0x1C71C71C71C71C7;
    }

    else
    {
      v9 = v7;
    }

    v30 = a1;
    if (v9)
    {
      sub_1001EBF28(a1, v9);
    }

    v18 = 144 * v6;
    __p = 0;
    v27 = 144 * v6;
    v29 = 0;
    v19 = 144 * v6;
    do
    {
      *v19 = off_1024DE5F8;
      v20 = *(a3 + 8);
      v21 = *(a3 + 24);
      v22 = *(a3 + 40);
      *(v19 + 56) = *(a3 + 56);
      *(v19 + 40) = v22;
      *(v19 + 24) = v21;
      *(v19 + 8) = v20;
      v23 = *(a3 + 72);
      v24 = *(a3 + 88);
      v25 = *(a3 + 104);
      *(v19 + 120) = *(a3 + 120);
      *(v19 + 104) = v25;
      *(v19 + 88) = v24;
      *(v19 + 72) = v23;
      *(v19 + 128) = *(a3 + 128);
      v19 += 144;
      v18 += 144;
    }

    while (v19 != 144 * v6 + 144 * a2);
    v28 = 144 * v6 + 144 * a2;
    sub_1001EBF84(a1, &__p);
    if (v28 != v27)
    {
      v28 = (v28 - v27 - 144) % 0x90 + v27;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1006A9CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A9D3C(uint64_t a1@<X8>)
{
  v2 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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
      v4 = strlen(off_10246AA28[v2]);
      v5 = std::string::append(&v10, off_10246AA28[v2], v4);
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
      v9 = strlen(off_10246AA28[v2]);
      std::string::append(a1, off_10246AA28[v2], v9);
    }

    ++v2;
  }

  while (v2 != 6);
}

void sub_1006A9E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A9EAC(uint64_t a1, const char *a2, uint64_t a3, double a4)
{
  v15 = a4;
  sub_1006525CC(a1, a3, &v15);
  *a1 = off_10246AA68;
  sub_10018D404(a1 + 232);
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 295) = v6;
  v8 = (a1 + 272);
  if (v6)
  {
    memmove(v8, a2, v6);
  }

  *(v8 + v7) = 0;
  sub_100DD42E4((a1 + 296), 0, 0);
  if (sub_100023B68(a1 + 64))
  {
    v9 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v9 = *(a1 + 272);
    }

    sub_100608EC8(a1 + 64, v9, &qword_1026586C0, 0, 0);
    sub_100652718(a1);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019082B8();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Database is not valid; not initializing", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019082E0(buf);
      v14 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Database is not valid; not initializing", &v14, 2);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "CLCellLocationDatabase::CLCellLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  return a1;
}

void sub_1006AA128(_Unwind_Exception *a1)
{
  if (*(v1 + 295) < 0)
  {
    operator delete(*v2);
  }

  sub_1006526BC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AA164(uint64_t a1)
{
  *a1 = off_10246AA68;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  return sub_1006526BC(a1);
}

void sub_1006AA1C8(uint64_t a1)
{
  sub_1006AA164(a1);

  operator delete();
}

char *sub_1006AA200@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[295] < 0)
  {
    return sub_100007244(a2, *(result + 34), *(result + 35));
  }

  *a2 = *(result + 17);
  *(a2 + 16) = *(result + 36);
  return result;
}

void sub_1006AA2A4(uint64_t a1, uint64_t a2, sqlite3_int64 *a3)
{
  sub_10003848C(&v27);
  v4 = sub_100038730(v28, "SELECT ", 7);
  v5 = strlen("ROWID");
  v6 = sub_100038730(v4, "ROWID", v5);
  v7 = sub_100038730(v6, " FROM ", 6);
  v8 = (a1 + 272);
  if (*(a1 + 295) < 0)
  {
    v8 = *v8;
  }

  v9 = strlen(v8);
  v10 = sub_100038730(v7, v8, v9);
  v11 = sub_100038730(v10, " WHERE ", 7);
  v12 = sub_100038730(v11, "MCC", 3);
  v13 = sub_100038730(v12, "=? AND ", 7);
  v14 = sub_100038730(v13, "MNC", 3);
  v15 = sub_100038730(v14, "=? AND ", 7);
  v16 = sub_100038730(v15, "LAC", 3);
  v17 = sub_100038730(v16, "=? AND ", 7);
  v18 = sub_100038730(v17, "CI", 2);
  v19 = sub_100038730(v18, "=? AND ", 7);
  v20 = sub_100038730(v19, "UARFCN", 6);
  v21 = sub_100038730(v20, "=? AND ", 7);
  v22 = sub_100038730(v21, "PSC", 3);
  sub_100038730(v22, "=? ", 3);
  if ((v31 & 0x10) != 0)
  {
    v24 = v30;
    if (v30 < v29)
    {
      v30 = v29;
      v24 = v29;
    }

    v25 = v28[6];
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v23 = 0;
      v33 = 0;
      goto LABEL_16;
    }

    v25 = v28[3];
    v24 = v28[5];
  }

  v23 = v24 - v25;
  if ((v24 - v25) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  v33 = v24 - v25;
  if (v23)
  {
    memmove(&__dst, v25, v23);
  }

LABEL_16:
  *(&__dst + v23) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1006AA908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006AA994(uint64_t a1, int *a2, uint64_t a3)
{
  v57 = 0;
  if (sub_100DD42EC((a1 + 296)))
  {
LABEL_47:
    sub_100144CA0((a1 + 296), v60);
    v33 = sub_100008880(*v60);
    if (sub_100073700(v33, 1, *a2) && (v34 = sub_100008880(*v60), sub_100073700(v34, 2, a2[1])) && (v35 = sub_100008880(*v60), sub_100073700(v35, 3, a2[2])) && (v36 = sub_100008880(*v60), sub_100073700(v36, 4, a2[3])) && (v37 = sub_100008880(*v60), sub_100073700(v37, 5, a2[4])) && (v38 = sub_100008880(*v60), sub_100073700(v38, 6, a2[5])))
    {
      v39 = sub_100008880(*v60);
      sub_1001A3DEC(a1 + 64, v39);
      v57 = sub_100616934(a1 + 64);
      v40 = sub_100653624(a1, &v57, a3);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019082B8();
      }

      v41 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_10016B7CC(&__dst);
        v42 = v62 >= 0 ? &__dst : __dst;
        *v63 = 136446210;
        *&v63[4] = v42;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "failed to bind %{public}s", v63, 0xCu);
        if (v62 < 0)
        {
          operator delete(__dst);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019082E0(&__dst);
        v47 = qword_1025D48A8;
        sub_10016B7CC(v63);
        if (v64 >= 0)
        {
          v48 = v63;
        }

        else
        {
          v48 = *v63;
        }

        *buf = 136446210;
        *&buf[4] = v48;
        _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, v47, 17, "failed to bind %{public}s", buf, 12);
        v50 = v49;
        if (SHIBYTE(v64) < 0)
        {
          operator delete(*v63);
        }

        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellLocationDatabase::setLocation(const CLTelephonyService_Type::Cell &, const CLDaemonLocation &)", "%s\n", v50);
        if (v50 != &__dst)
        {
          free(v50);
        }
      }

      v40 = 0;
    }

    v43 = *v60;
    *v60 = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    return v40;
  }

  sub_10003848C(v63);
  v6 = sub_100038730(&v64, "INSERT OR REPLACE INTO ", 23);
  v7 = (a1 + 272);
  if (*(a1 + 295) < 0)
  {
    v7 = *v7;
  }

  v8 = strlen(v7);
  v9 = sub_100038730(v6, v7, v8);
  v10 = sub_100038730(v9, " (", 2);
  v11 = sub_100038730(v10, "MCC", 3);
  v12 = sub_100038730(v11, ", ", 2);
  v13 = sub_100038730(v12, "MNC", 3);
  v14 = sub_100038730(v13, ", ", 2);
  v15 = sub_100038730(v14, "LAC", 3);
  v16 = sub_100038730(v15, ", ", 2);
  v17 = sub_100038730(v16, "CI", 2);
  v18 = sub_100038730(v17, ", ", 2);
  v19 = sub_100038730(v18, "UARFCN", 6);
  v20 = sub_100038730(v19, ", ", 2);
  v21 = sub_100038730(v20, "PSC", 3);
  sub_100038730(v21, ") VALUES (?, ?, ?, ?, ?, ?)", 27);
  if (qword_1025D48A0 != -1)
  {
    sub_1019082B8();
  }

  v22 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    if ((v74 & 0x10) != 0)
    {
      v24 = v73;
      if (v73 < v70)
      {
        v73 = v70;
        v24 = v70;
      }

      v25 = __src;
    }

    else
    {
      if ((v74 & 8) == 0)
      {
        v23 = 0;
        v62 = 0;
LABEL_20:
        *(&__dst + v23) = 0;
        p_dst = &__dst;
        if (v62 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        *&buf[4] = p_dst;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CELL_LOC: fInsertStatement [%s]", buf, 0xCu);
        if (v62 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_24;
      }

      v25 = v67;
      v24 = v68;
    }

    v23 = v24 - v25;
    if (v24 - v25 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v23 >= 0x17)
    {
      operator new();
    }

    v62 = v24 - v25;
    if (v23)
    {
      memmove(&__dst, v25, v23);
    }

    goto LABEL_20;
  }

LABEL_24:
  if (sub_10000A100(121, 2))
  {
    sub_1019082E0(&__dst);
    v51 = qword_1025D48A8;
    sub_10003DD04(&v65, buf);
    if (v59 >= 0)
    {
      v52 = buf;
    }

    else
    {
      v52 = *buf;
    }

    *v60 = 136315138;
    *&v60[4] = v52;
    _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, v51, 2, "CELL_LOC: fInsertStatement [%s]", v60);
    v54 = v53;
    if (v59 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellLocationDatabase::setLocation(const CLTelephonyService_Type::Cell &, const CLDaemonLocation &)", "%s\n", v54);
    if (v54 != &__dst)
    {
      free(v54);
    }
  }

  if ((v74 & 0x10) != 0)
  {
    v28 = v73;
    if (v73 < v70)
    {
      v73 = v70;
      v28 = v70;
    }

    v29 = __src;
  }

  else
  {
    if ((v74 & 8) == 0)
    {
      v27 = 0;
      v62 = 0;
      goto LABEL_38;
    }

    v29 = v67;
    v28 = v68;
  }

  v27 = v28 - v29;
  if (v28 - v29 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  v62 = v28 - v29;
  if (v27)
  {
    memmove(&__dst, v29, v27);
  }

LABEL_38:
  *(&__dst + v27) = 0;
  if (v62 >= 0)
  {
    v30 = &__dst;
  }

  else
  {
    v30 = __dst;
  }

  *(a1 + 296) = sub_100614C1C(a1 + 64, v30);
  *(a1 + 304) = v31;
  if (v62 < 0)
  {
    operator delete(__dst);
  }

  if (sub_100DD42EC((a1 + 296)))
  {
    v64 = v32;
    if (v72 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v66);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    goto LABEL_47;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1019082B8();
  }

  v44 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__dst) = 0;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_FAULT, "Could not prepare cached insert statement", &__dst, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019082E0(&__dst);
    *buf = 0;
    _os_log_send_and_compose_impl(2, 0, &__dst, 1628, dword_100000000, qword_1025D48A8, 17, "Could not prepare cached insert statement", buf, 2);
    v56 = v55;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellLocationDatabase::setLocation(const CLTelephonyService_Type::Cell &, const CLDaemonLocation &)", "%s\n", v55);
    if (v56 != &__dst)
    {
      free(v56);
    }
  }

  v64 = v45;
  if (v72 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v66);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return 0;
}

void sub_1006AB440(_Unwind_Exception *a1)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1006AB524(uint64_t a1, sqlite3_int64 a2, int *a3)
{
  *(&v31.__r_.__value_.__s + 23) = 7;
  strcpy(&v31, "SELECT ");
  sub_1006A9D3C(__p);
  if ((v30 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v5 = v30;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v31, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v28 = 6;
  strcpy(__s, " FROM ");
  v8 = std::string::append(&v32, __s, 6uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v9;
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

  v13 = std::string::append(&v33, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v26 = 7;
  strcpy(v25, " WHERE ");
  v15 = std::string::append(&v34, v25, 7uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = strlen("ROWID");
  v18 = std::string::append(&v35, "ROWID", v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v24 = 2;
  strcpy(v23, "=?");
  v20 = std::string::append(&v38, v23, 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v37 = v20->__r_.__value_.__r.__words[2];
  v36 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v24 < 0)
  {
    operator delete(*v23);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(*v25);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v37 >= 0)
  {
    v22 = &v36;
  }

  else
  {
    v22 = v36;
  }

  sub_1000388D8(a1 + 64, v22);
}

void sub_1006ABA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (v48)
  {
    (*(*v48 + 8))(v48, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006ABB30()
{
  qword_1026586C0 = "MCC";
  dword_1026586C8 = 1;
  word_1026586CC = 1;
  byte_1026586D0 = 0;
  byte_1026586E8 = 0;
  qword_1026586F0 = "MNC";
  dword_1026586F8 = 1;
  word_1026586FC = 1;
  byte_102658700 = 0;
  byte_102658718 = 0;
  qword_102658720 = "LAC";
  dword_102658728 = 1;
  word_10265872C = 1;
  byte_102658730 = 0;
  byte_102658748 = 0;
  qword_102658750 = "CI";
  dword_102658758 = 1;
  word_10265875C = 1;
  byte_102658760 = 0;
  byte_102658778 = 0;
  qword_102658780 = "UARFCN";
  dword_102658788 = 1;
  word_10265878C = 1;
  byte_102658790 = 0;
  byte_1026587A8 = 0;
  qword_1026587B0 = "PSC";
  dword_1026587B8 = 1;
  word_1026587BC = 1;
  byte_1026587C0 = 0;
  byte_1026587D8 = 0;
  qword_1026587E0 = "Timestamp";
  dword_1026587E8 = 2;
  word_1026587EC = 0;
  byte_1026587F0 = 0;
  byte_102658808 = 0;
  qword_102658810 = "Latitude";
  dword_102658818 = 2;
  word_10265881C = 0;
  byte_102658820 = 0;
  byte_102658838 = 0;
  qword_102658840 = "Longitude";
  dword_102658848 = 2;
  word_10265884C = 0;
  byte_102658850 = 0;
  byte_102658868 = 0;
  qword_102658870 = "HorizontalAccuracy";
  dword_102658878 = 2;
  word_10265887C = 0;
  byte_102658880 = 0;
  byte_102658898 = 0;
  qword_1026588A0 = "Altitude";
  dword_1026588A8 = 2;
  word_1026588AC = 0;
  byte_1026588B0 = 0;
  byte_1026588C8 = 0;
  qword_1026588D0 = "VerticalAccuracy";
  dword_1026588D8 = 2;
  word_1026588DC = 0;
  byte_1026588E0 = 0;
  byte_1026588F8 = 0;
  qword_102658900 = "Speed";
  dword_102658908 = 2;
  word_10265890C = 0;
  byte_102658910 = 0;
  byte_102658928 = 0;
  qword_102658930 = "Course";
  dword_102658938 = 2;
  word_10265893C = 0;
  byte_102658940 = 0;
  byte_102658958 = 0;
  qword_102658960 = "Confidence";
  dword_102658968 = 1;
  word_10265896C = 0;
  byte_102658970 = 0;
  byte_102658988 = 0;
  qword_102658990 = 0;
  dword_102658998 = 5;
  word_10265899C = 0;
  byte_1026589A0 = 0;
  byte_1026589B8 = 0;
}

uint64_t sub_1006ABE08(uint64_t a1)
{
  if (*(a1 + 2148) == *(a1 + 2146))
  {
    return sub_1006ADE68(a1, 4);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1006ABE28(uint64_t a1)
{
  if (*(a1 + 8440))
  {
    return 1;
  }

  else
  {
    return sub_1006ADE68(a1, 7);
  }
}

uint64_t sub_1006ABE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_10246AAB8;
  *(a1 + 8) = 34;
  *(a1 + 16) = 512;
  *(a1 + 24) = 0x1800000000;
  *(a1 + 2144) = 0x1800000000;
  *(a1 + 2344) = 0x1800000000;
  *(a1 + 2744) = 0;
  *(a1 + 2752) = 0x7FEFFFFFFFFFFFFFLL;
  v6 = a1 + 2760;
  sub_100C4BEA8(a1 + 2760);
  *(a1 + 8432) = a3;
  *(a1 + 8440) = 0;
  buf[0] = 0;
  sub_100126E84((a1 + 8441), "DisableAutostartSwimPressureCheck", buf, 0);
  sub_100C4C20C(v6, 2u);
  v7 = *(a2 + 104);
  v8 = 112;
  if (v7 == 6)
  {
    v8 = 80;
  }

  *(a1 + 2736) = *(a2 + v8);
  if (v7 > 7)
  {
    if (v7 == 41)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101908324();
      }

      v9 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, tracking alternate walk escalation", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190834C(buf);
        v13[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "Tier2Smoother, tracking alternate walk escalation", v13, 2);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 2, "CLWorkoutPredictorTier2Smoother::CLWorkoutPredictorTier2Smoother(const CLMotionActivity &, const CLWorkoutPredictorInputs &)", "%s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      sub_1000CE87C(a1, 10, buf);
    }

    else if (v7 == 8)
    {
      sub_1000CE87C(a1, 1, buf);
    }
  }

  else if (v7 == 4)
  {
    sub_1000CE87C(a1, 2, buf);
  }

  else if (v7 == 6)
  {
    sub_1000CE87C(a1, 12, buf);
  }

  return a1;
}

uint64_t sub_1006AC0FC(uint64_t result, double a2)
{
  if (*(result + 16))
  {
    *(result + 2744) = 0;
  }

  else
  {
    v4 = *(result + 2744) + a2;
    *(result + 2744) = v4;
    if (v4 > 180.0)
    {
      *&v5[1] = v2;
      v6 = v3;
      return sub_1000CE87C(result, 9, v5);
    }
  }

  return result;
}

uint64_t sub_1006AC154(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_1026589D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026589D8))
  {
    v16[0] = 0x500000000;
    qword_1026589C8 = 0;
    unk_1026589D0 = 0;
    qword_1026589C0 = 0;
    sub_1004579D4(&qword_1026589C0, v16, &v16[1], 2uLL);
    __cxa_atexit(sub_10051F310, &qword_1026589C0, dword_100000000);
    __cxa_guard_release(&qword_1026589D8);
  }

  v17 = 0;
  *v16 = xmmword_101C78400;
  memset(&v16[2], 0, 135);
  v18 = xmmword_101C78400;
  v19 = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0u;
  v26 = xmmword_101C78400;
  v27 = 0;
  v28 = 0;
  v29 = 0xFFEFFFFFFFFFFFFFLL;
  v40 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v41 = 0u;
  v42 = 0xFFEFFFFFFFFFFFFFLL;
  v43 = 0;
  v44 = 0;
  v49 = 0;
  v50 = 0;
  v55 = 0;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  v45 = 0u;
  v46 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  memset(v54, 0, sizeof(v54));
  v56 = 0xFFEFFFFFFFFFFFFFLL;
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
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0xFFEFFFFFFFFFFFFFLL;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0xFFEFFFFFFFFFFFFFLL;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0xFFEFFFFFFFFFFFFFLL;
  v88 = 0u;
  v89 = 0x80000000800000;
  v90 = 0u;
  v91 = xmmword_101C78410;
  v92 = 0x80000000800000;
  v93 = 0u;
  v94 = 0u;
  v95 = 0;
  v96 = 0xFFEFFFFFFFFFFFFFLL;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  v104 = 0xFFEFFFFFFFFFFFFFLL;
  v105 = 0;
  v106 = 0;
  v107 = 0xFFEFFFFFFFFFFFFFLL;
  v108 = 7;
  v109 = 0xFFEFFFFFFFFFFFFFLL;
  v110 = 0;
  v112 = 0;
  v111 = 0u;
  v3 = sub_1000C2B7C(*(a1 + 8432), &qword_1026589C0, v16);
  if (v3)
  {
    v14[2] = *&v16[7];
    v14[3] = *&v16[9];
    v14[4] = *&v16[11];
    v15 = v16[13];
    v14[0] = *&v16[3];
    v14[1] = *&v16[5];
    sub_1006AC654((a1 + 24), v14);
    if ((atomic_load_explicit(&qword_1026589F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026589F0))
    {
      v13 = 0;
      sub_1004861C8(&byte_1026589E0, "WorkoutPredictorTier2ClassifierOverride", &v13, 0);
      __cxa_guard_release(&qword_1026589F0);
    }

    if (byte_1026589E0)
    {
      v4 = dword_1026589E4;
    }

    else
    {
      v4 = v78;
    }

    v5 = *(a1 + 2146);
    v6 = *(a1 + 2148);
    v7 = *(a1 + 2144);
    if (v7 + v5 >= v6)
    {
      v8 = *(a1 + 2148);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 8 * (v7 + v5 - v8) + 2152) = v4;
    if (v6 <= v5)
    {
      if (v7 + 1 < v6)
      {
        LOWORD(v6) = 0;
      }

      *(a1 + 2144) = v7 + 1 - v6;
    }

    else
    {
      *(a1 + 2146) = v5 + 1;
    }

    sub_1006AC6D8(a1, v4);
    sub_1006AC73C(a1, v14);
    sub_1006AC7B8(a1);
    v9 = (*(***(a1 + 8432) + 32))(**(a1 + 8432));
    sub_1000C042C(v9);
    sub_1006AC8BC(a1);
    v10 = (*(***(a1 + 8432) + 72))(**(a1 + 8432));
    sub_1006ACA0C(v10);
    v11 = (*(***(a1 + 8432) + 80))(**(a1 + 8432));
    sub_1006ACAA8(v11);
    sub_1006ACB44(a1);
  }

  return v3;
}

unsigned __int16 *sub_1006AC654(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[44 * (v3 - v2)];
  v6 = *(a2 + 48);
  v5 = *(a2 + 64);
  v7 = *(a2 + 32);
  *(v4 + 11) = *(a2 + 80);
  v8 = *(a2 + 16);
  *(v4 + 4) = *a2;
  *(v4 + 12) = v8;
  *(v4 + 20) = v7;
  *(v4 + 36) = v5;
  *(v4 + 28) = v6;
  v9 = result[1];
  v10 = *(result + 1);
  if (v10 <= v9)
  {
    v11 = *result + 1;
    if (v11 < v10)
    {
      LOWORD(v10) = 0;
    }

    *result = v11 - v10;
  }

  else
  {
    result[1] = v9 + 1;
  }

  return result;
}

uint64_t sub_1006AC6D8(uint64_t result, uint64_t a2)
{
  if (a2 == 12 || a2 == 9)
  {
    v3 = (*(***(result + 8432) + 16))(**(result + 8432));

    return sub_1006AE61C(v3);
  }

  return result;
}

uint64_t sub_1006AC73C(uint64_t result, uint64_t a2)
{
  HIDWORD(v3) = *(a2 + 56) - 16;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 4;
  if (v2 > 2)
  {
    if (v2 == 7)
    {
      v4 = &v6;
      v5 = 12;
    }

    else
    {
      if (v2 != 3)
      {
        return result;
      }

      v4 = &v9;
      v5 = 1;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v4 = &v7;
    v5 = 10;
  }

  else
  {
    v4 = &v8;
    v5 = 2;
  }

  return sub_1000CE87C(result, v5, v4);
}

unsigned __int16 *sub_1006AC7B8(unsigned __int16 *result)
{
  v3 = result[13];
  if (*(result + 7) == v3)
  {
    v10 = v1;
    v11 = v2;
    v4 = result;
    if (v3 < 0xF)
    {
      goto LABEL_6;
    }

    v5 = 1;
    v6 = 14;
    do
    {
      result = sub_1006AEF74((v4 + 24), v6);
      v5 &= *result != 64;
      ++v6;
    }

    while (v6 < *(v4 + 26));
    if (v5)
    {
LABEL_6:
      if (qword_1025D43F0 != -1)
      {
        sub_101908390();
      }

      v7 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Tier2Smoother attempted de-escalating due to no Running calls in Tier 1 Classifier", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019083A4();
      }

      return sub_1000CE87C(v4, 6, &v8);
    }
  }

  return result;
}

uint64_t sub_1006AC8BC(uint64_t a1)
{
  result = sub_100C4BEF8(a1 + 2760, *(a1 + 8432));
  v3 = result;
  if (*(a1 + 2148) != *(a1 + 2146) || (*(a1 + 8440) & 1) != 0)
  {
    v4 = 0;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (!v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_1006ADE68(a1, 4);
  v4 = (result ^ 1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v5 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240448;
    v6[1] = v3 & 1;
    v7 = 1026;
    v8 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Tier2Smoother,ped auto-stop detected,%{public}d,ped de-escalation from exercise minutes,%{public}d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908480(v3, v4);
  }

  return sub_1000CE87C(a1, 7, v6);
}

uint64_t sub_1006ACA0C(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

uint64_t sub_1006ACAA8(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

void sub_1006ACB44(uint64_t a1)
{
  if (!*(a1 + 2146))
  {
    goto LABEL_33;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = *sub_1006AED78((a1 + 2144), v2);
    if (v8 <= 8)
    {
      if (v8 == 1)
      {
        ++v6;
        goto LABEL_14;
      }

      if (v8 != 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v8 == 9)
      {
        ++v4;
        goto LABEL_14;
      }

      if (v8 == 12)
      {
        ++v5;
        goto LABEL_14;
      }

      if (v8 != 19)
      {
LABEL_10:
        ++v7;
        goto LABEL_14;
      }

      ++v3;
    }

LABEL_14:
    if (++v2 >= *(a1 + 2146))
    {
      if (v3 > 18)
      {
        v9 = &v18;
        v10 = a1;
        v11 = 3;
        goto LABEL_32;
      }

      if (v4 >= 19)
      {
        v9 = &v17;
        v10 = a1;
        v11 = 5;
        goto LABEL_32;
      }

      if (v5 >= 19)
      {
        v9 = &v16;
        v10 = a1;
        v11 = 4;
        goto LABEL_32;
      }

      if (v7 < 13)
      {
        if (*(a1 + 8440) == 1 && v6 >= 19)
        {
          v9 = &v13;
          v10 = a1;
          v11 = 2;
          goto LABEL_32;
        }
      }

      else
      {
        if (qword_1025D43F0 != -1)
        {
          sub_101908390();
        }

        v12 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Tier2Smoother attemped de-escalating due to Unknown calls in Tier 2 Classifier", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101908594();
        }

        v9 = &v14;
        v10 = a1;
        v11 = 8;
LABEL_32:
        sub_1000CE87C(v10, v11, v9);
      }

LABEL_33:
      sub_1006AD370(a1);
    }
  }
}

void sub_1006ACD30(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A50))
  {
    v4[0] = 0x20000000BLL;
    qword_102658A40 = 0;
    unk_102658A48 = 0;
    qword_102658A38 = 0;
    sub_1004579D4(&qword_102658A38, v4, &v4[1], 2uLL);
    __cxa_atexit(sub_10051F310, &qword_102658A38, dword_100000000);
    __cxa_guard_release(&qword_102658A50);
  }

  if (*(a1 + 16) == 8)
  {
    v5 = 0;
    *v4 = xmmword_101C78400;
    memset(&v4[2], 0, 135);
    v6 = xmmword_101C78400;
    v7 = 0;
    v8 = 0;
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0u;
    v14 = xmmword_101C78400;
    v15 = 0;
    v16 = 0;
    v17 = -1.79769313e308;
    v28 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    v29 = 0u;
    v30 = 0xFFEFFFFFFFFFFFFFLL;
    v31 = 0;
    v32 = 0;
    v37 = 0;
    v38 = 0;
    v43 = 0;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v33 = 0u;
    v34 = 0u;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    memset(v42, 0, sizeof(v42));
    v44 = 0xFFEFFFFFFFFFFFFFLL;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
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
    v65 = 0xFFEFFFFFFFFFFFFFLL;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0xFFEFFFFFFFFFFFFFLL;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0xFFEFFFFFFFFFFFFFLL;
    v76 = 0u;
    v77 = 0x80000000800000;
    v78 = 0u;
    v79 = xmmword_101C78410;
    v80 = 0x80000000800000;
    v81 = 0u;
    v82 = 0u;
    v83 = 0;
    v84 = 0xFFEFFFFFFFFFFFFFLL;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    v92 = 0xFFEFFFFFFFFFFFFFLL;
    v93 = 0;
    v94 = 0;
    v95 = -1.79769313e308;
    v96 = 7;
    v97 = 0xFFEFFFFFFFFFFFFFLL;
    v98 = 0;
    v100 = 0;
    v99 = 0u;
    sub_1000C2B7C(*(a1 + 8432), &qword_102658A38, v4);
    if (v95 != -1.79769313e308)
    {
      v2 = 0;
      if (v17 != -1.79769313e308 && *&v20 > 0.0)
      {
        v2 = v20;
      }

      LODWORD(v3) = v96;
      *(&v3 + 1) = v2;
      sub_1000A3054((a1 + 2344), &v3);
    }
  }
}

unsigned __int16 *sub_1006AD040(unsigned __int16 *result)
{
  if (result[1173])
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = -1.79769313e308;
    do
    {
      v8 = *sub_1006AF234((v1 + 2344), v4);
      if (v8 == 2 || v8 == 13)
      {
        ++v3;
      }

      if (v8 == 14)
      {
        ++v6;
      }

      if (v8 == 6 || ((++v2, v16 = v8 > 5, v10 = (1 << v8) & 0x31, !v16) ? (v11 = v10 == 0) : (v11 = 1), !v11))
      {
        ++v5;
      }

      result = sub_1006AF234((v1 + 2344), v4);
      if (*(result + 1) > v7)
      {
        result = sub_1006AF234((v1 + 2344), v4);
        v7 = *(result + 1);
      }

      ++v4;
      v12 = *(v1 + 2346);
    }

    while (v4 < v12);
    v15 = v2 < 0xC && v3 < 4 && v6 < 4;
    v16 = v12 != v5 || v7 <= 2.2352;
    if (v16 && !v15)
    {
      return sub_1000CE87C(v1, 11, &v17);
    }
  }

  return result;
}

uint64_t sub_1006AD170(uint64_t a1)
{
  if ((*(a1 + 16) - 1) > 7u)
  {
    return 25;
  }

  else
  {
    return qword_101C889F8[(*(a1 + 16) - 1)];
  }
}

uint64_t sub_1006AD1A0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A68))
  {
    v4 = 1;
    sub_1004861C8(&byte_102658A58, "WorkoutPredictorTier2ConfidenceOverride", &v4, 0);
    __cxa_guard_release(&qword_102658A68);
  }

  if (byte_102658A58 == 1)
  {
    return dword_102658A5C;
  }

  v3 = sub_1006AD170(a1);
  if (v3 == 4)
  {
    return sub_1006AF1C4(a1);
  }

  if (v3 == 1)
  {
    return sub_1006AF174(a1);
  }

  return sub_1006AEA44(a1);
}

void sub_1006AD288(uint64_t a1, void *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, set rapid walking detection, %{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908670(a2);
  }

  *(a1 + 8440) = a2;
}

void sub_1006AD370(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A00))
  {
    sub_10183A3AC(buf, "WorkoutPredictorDistanceThresholdForMachineWorkouts", &qword_101C88668, 0);
    qword_1026589F8 = *v8;
    __cxa_guard_release(&qword_102658A00);
  }

  if ((atomic_load_explicit(&qword_102658A10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_102658A10))
    {
      sub_10183A3AC(buf, "WorkoutPredictorDistanceLookbackForMachineWorkouts", &qword_101C88670, 0);
      qword_102658A08 = *v8;
      __cxa_guard_release(&qword_102658A10);
    }
  }

  v2 = *&qword_102658A08;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - v2;
  v3 = 0;
  v4 = 0;
  (*(***(a1 + 8432) + 16))(**(a1 + 8432));
  operator new();
}

void sub_1006AD794(uint64_t a1, double a2, double a3)
{
  v4 = 0;
  v3 = 0;
  (*(***(a1 + 8432) + 72))(**(a1 + 8432));
  operator new();
}

void *sub_1006ADA34(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2)
  {
    v3 = result[6];
    v4 = v3 + v2;
    v5 = (v3 + v2) >> 8;
    v6 = result[3];
    v7 = (v6 + 8 * v5);
    if (result[4] == v6)
    {
      v10 = 0;
      v12 = v7;
      v13 = 0;
      v14 = v7;
      v15 = 0;
      v9 = (v6 + 8 * (v3 >> 8));
    }

    else
    {
      v8 = *v7 + 16 * v4;
      v12 = v7;
      v13 = v8;
      v14 = v7;
      v15 = v8;
      v9 = (v6 + 8 * (v3 >> 8));
      v10 = *v9 + 16 * v3;
    }

    v11[0] = v9;
    v11[1] = v10;
    v11[2] = v9;
    v11[3] = v10;
    sub_10069F028(v16, a2);
    sub_1006B0170(&v12, v11, v16, v17);
    sub_100698A6C(v17);
    return sub_100698A6C(v16);
  }

  return result;
}

void sub_1006ADB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100698A6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006ADB30(uint64_t a1)
{
  if ((*(a1 + 8442) & 1) == 0)
  {
    v2 = CFAbsoluteTimeGetCurrent() + -300.0 + 10.0;
    v3 = (*(***(a1 + 8432) + 72))(**(a1 + 8432));
    if (sub_1000BC56C(v3, &v7, v2))
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_1006AD794(a1, Current + -30.0, Current);
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101908324();
    }

    v5 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Tier2Smoother swimcheck, failed to get first entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190876C();
    }
  }

  return 1;
}

uint64_t sub_1006ADE68(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_1006AE244(a1) <= 720.0)
  {
    CFAbsoluteTimeGetCurrent();
    if (v2 == 4 || v2 == 7)
    {
      (*(***(a1 + 8432) + 80))(**(a1 + 8432));
      operator new();
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101908390();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v8) = v2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Tier2Smoother,passed unknown threshold of %d", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101908848(v2);
      return 0;
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101908390();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, bypassing exercise minute requirements for sustained walking", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101908954();
    }

    return 1;
  }

  return result;
}

double sub_1006AE244(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A88))
  {
    LODWORD(v5[0]) = 0;
    qword_102658A78 = 0;
    unk_102658A80 = 0;
    qword_102658A70 = 0;
    sub_1004579D4(&qword_102658A70, v5, v5 + 1, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_102658A70, dword_100000000);
    __cxa_guard_release(&qword_102658A88);
  }

  v6 = 0;
  *v5 = xmmword_101C78400;
  memset(&v5[2], 0, 135);
  v7 = xmmword_101C78400;
  v8 = 0;
  v9 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0u;
  v15 = xmmword_101C78400;
  v16 = 0;
  v17 = 0;
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  v29 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v30 = 0u;
  v31 = 0xFFEFFFFFFFFFFFFFLL;
  v32 = 0;
  v33 = 0;
  v38 = 0;
  v39 = 0;
  v44 = 0;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v34 = 0u;
  v35 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  memset(v43, 0, sizeof(v43));
  v45 = 0xFFEFFFFFFFFFFFFFLL;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
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
  v66 = 0xFFEFFFFFFFFFFFFFLL;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0xFFEFFFFFFFFFFFFFLL;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0xFFEFFFFFFFFFFFFFLL;
  v77 = 0u;
  v78 = 0x80000000800000;
  v79 = 0u;
  v80 = xmmword_101C78410;
  v81 = 0x80000000800000;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v85 = 0xFFEFFFFFFFFFFFFFLL;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v93 = 0xFFEFFFFFFFFFFFFFLL;
  v94 = 0;
  v95 = 0;
  v96 = 0xFFEFFFFFFFFFFFFFLL;
  v97 = 7;
  v98 = 0xFFEFFFFFFFFFFFFFLL;
  v99 = 0;
  v101 = 0;
  v100 = 0u;
  v2 = sub_1000C2B7C(*(a1 + 8432), &qword_102658A70, v5);
  result = 0.0;
  if (v2)
  {
    v4 = *(a1 + 2736);
    if (*&v5[1] > v4)
    {
      return *&v5[1] - v4;
    }
  }

  return result;
}

void *sub_1006AE4FC(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2)
  {
    v3 = result[6];
    v4 = v3 + v2;
    v5 = (v3 + v2) / 0xAA;
    v6 = result[3];
    if (result[4] == v6)
    {
      v9 = 0;
      v11 = v6 + 8 * v5;
      v12 = 0;
      v13 = v11;
      v14 = 0;
      v8 = (v6 + 8 * (v3 / 0xAA));
    }

    else
    {
      v7 = *(v6 + 8 * v5);
      v11 = v6 + 8 * v5;
      v12 = v7 + 24 * (v4 - 170 * v5);
      v13 = v11;
      v14 = v12;
      v8 = (v6 + 8 * (v3 / 0xAA));
      v9 = *v8 + 24 * (v3 % 0xAA);
    }

    v10[0] = v8;
    v10[1] = v9;
    v10[2] = v8;
    v10[3] = v9;
    sub_10069F14C(v15, a2);
    sub_1006B0408(&v11, v10, v15, v16);
    sub_100698924(v16);
    return sub_100698924(v15);
  }

  return result;
}

void sub_1006AE600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100698924(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AE61C(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

void sub_1006AE6B8(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, deescalating from distance accumulation, distance, %f", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908A38(a2);
  }
}