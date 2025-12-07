void sub_101385D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_1000EF424(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101385DC0(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  if (!sub_10136AC30(*v1))
  {
    goto LABEL_36;
  }

  v3 = *(v1 + 8);
  switch(v3)
  {
    case 0:
      goto LABEL_8;
    case 2:
      if (v2 + 376 != v1 + 16)
      {
        sub_1001730B8((v2 + 376), *(v1 + 16), (v1 + 24));
      }

LABEL_8:
      v4 = 424;
      v5 = 64;
      goto LABEL_9;
    case 1:
      v4 = 400;
      v5 = 40;
LABEL_9:
      std::string::operator=((v2 + v4), (v1 + v5));
      break;
  }

  v6 = *(v2 + 231);
  if (v6 < 0)
  {
    if (!*(v2 + 216))
    {
      goto LABEL_36;
    }
  }

  else if (!*(v2 + 231))
  {
    goto LABEL_36;
  }

  v7 = *(v2 + 279);
  if (v7 < 0)
  {
    if (!*(v2 + 264))
    {
      goto LABEL_36;
    }
  }

  else if (!*(v2 + 279))
  {
    goto LABEL_36;
  }

  v8 = *(v2 + 216);
  if (v6 >= 0)
  {
    v9 = *(v2 + 231);
  }

  else
  {
    v9 = *(v2 + 216);
  }

  v10 = *(v2 + 264);
  if (v7 >= 0)
  {
    v10 = *(v2 + 279);
  }

  if (v9 == v10)
  {
    v11 = *(v2 + 208);
    v12 = v6 >= 0 ? (v2 + 208) : *(v2 + 208);
    v13 = v7 >= 0 ? (v2 + 256) : *(v2 + 256);
    if (!memcmp(v12, v13, v9))
    {
      if ((v6 & 0x80000000) != 0)
      {
        sub_100005F2C(__p, v11, v8);
      }

      else
      {
        *__p = *(v2 + 208);
        v18 = *(v2 + 224);
      }

      sub_10137FE80(v2, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_36:
  sub_101385F60(&v16);
  return sub_1000049E0(&v15);
}

void sub_101385F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_101385F60(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101385F60(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    sub_100009970(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return a1;
}

uint64_t sub_101385FD4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10138606C(uint64_t a1, uint64_t a2)
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

void sub_1013860EC(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  operator new();
}

void sub_10138663C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  operator delete(v24);
  sub_10138679C(&a18);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  sub_100004A34(v22);
  sub_10138673C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10138673C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100FC0E1C(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_10138679C(uint64_t a1)
{
  sub_100FC0E1C(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101386804(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F326D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101386858(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);

  sub_100009970(a1 + 40, v2);
}

uint64_t sub_1013868B0(uint64_t a1)
{
  *a1 = off_101F32720;
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_101386910(uint64_t a1)
{
  *a1 = off_101F32720;
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_101386A74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101F32720;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  v6 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_101385FD4(a2 + 56, a1 + 56);
}

void sub_101386B04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_101386B2C(uint64_t a1)
{
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    v3 = *(a1 + 16);

    operator delete(v3);
  }
}

void sub_101386B88(uint64_t a1)
{
  sub_100FC0E1C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

void sub_101386BE0(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  v4 = (*a2 & 1) == 0 && sub_10136FB18(*(a1 + 8), (a1 + 16));
  *(*(a1 + 40) + 1) = v4;
  *(*(a1 + 40) + 2) = sub_1013715E0(v3);
  if (sub_10136F0F0(v3, a1 + 16))
  {
    v5 = !sub_10136EFC4(v3, (a1 + 16));
  }

  else
  {
    v5 = 0;
  }

  *(*(a1 + 40) + 3) = v5;
  if ((v3 + 1112) != sub_100007A6C(v3 + 1104, (a1 + 16)))
  {
    *(*(a1 + 40) + 40) = *(sub_1000E20F0(v3 + 1104, (a1 + 16)) + 40);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 2);
  v9 = *v6;
  v10 = v7;
  sub_100074920(v11, v6 + 16);
  v12 = *(v6 + 20);
  sub_10006F264(&__p, v6 + 3);
  v16 = v6[10];
  v8 = *(a1 + 80);
  if (!v8)
  {
    sub_100022DB4();
  }

  (*(*v8 + 48))(v8, &v9);
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(v11, v11[1]);
}

uint64_t sub_101386D70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101386DBC(uint64_t **a1, char *a2)
{
  result = sub_100007A6C(a1, a2);
  if (a1 + 1 != result)
  {

    return sub_101386E10(a1, result);
  }

  return result;
}

uint64_t *sub_101386E10(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_100018288(v7, a2);
  sub_101381B14((a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t sub_101386EAC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_101386EE8(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = sub_10136FB18(*v1, (v1 + 8));
  v4 = sub_1013715E0(v2);
  sub_100447630(v1 + 32, v3, v4);
  sub_1008B1C40(&v7);
  return sub_1000049E0(&v6);
}

void sub_101386F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1008B1C40(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101386F74(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = _os_feature_enabled_impl();
  if (result)
  {

    return sub_10136FB18(v2, (v1 + 8));
  }

  return result;
}

uint64_t sub_101386FD4(uint64_t a1)
{
  v1 = **(a1 + 40);
  result = _os_feature_enabled_impl();
  if (result)
  {

    return sub_1013715E0(v1);
  }

  return result;
}

void sub_101387030(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I clearing temporary travel info cache", buf, 2u);
  }

  sub_10000501C(buf, "TempTravelInfo");
  sub_101386DBC((v1 + 1104), buf);
  if (v5 < 0)
  {
    operator delete(*buf);
  }

  sub_10136AD80(v1);
  operator delete();
}

uint64_t *sub_10138711C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (_os_feature_enabled_impl())
  {
    v3 = sub_100007A6C((v2 + 138), (v1 + 8));
    if (v2 + 139 != v3 && *(v3 + 56) == 1)
    {
      *(v3 + 56) = 0;
      sub_10136AD80(v2);
    }
  }

  sub_1000EF424(&v6);
  return sub_1000049E0(&v5);
}

void sub_1013871A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013871C0(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  if (sub_10136AC30(*v1))
  {
    if (*(v1 + 8) == 1)
    {
      v3 = *(v2 + 56);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Caching sim info from api call with install", buf, 2u);
      }

      sub_10000501C(buf, "TempTravelInfo");
      v31 = buf;
      v4 = sub_1013690E0((v2 + 1104), buf, &unk_101802C98, &v31);
      v5 = v4;
      v6 = *(v1 + 16);
      *(v4 + 64) = *(v1 + 24);
      *(v4 + 56) = v6;
      if (v4 + 56 != v1 + 16)
      {
        sub_1001730B8((v4 + 72), *(v1 + 32), (v1 + 40));
      }

      *(v5 + 96) = *(v1 + 56);
      sub_10012BF3C((v5 + 104), (v1 + 64));
      *(v5 + 136) = *(v1 + 96);
LABEL_8:
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_54;
    }

    if (*(v1 + 88))
    {
      v7 = (v1 + 64);
      if (v2 + 1112 == sub_100007A6C(v2 + 1104, (v1 + 64)))
      {
        if (*(v1 + 88) != 1)
        {
          goto LABEL_56;
        }

        v13 = sub_10136EA08(v2, (v1 + 64));
        v14 = *(v2 + 56);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!v13)
        {
          if (v15)
          {
            if ((*(v1 + 88) & 1) == 0)
            {
              goto LABEL_56;
            }

            v22 = v1 + 64;
            if (*(v1 + 87) < 0)
            {
              v22 = *v7;
            }

            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Caching sim info for iccid [%s]", buf, 0xCu);
          }

          sub_10000501C(buf, "TempTravelInfo");
          v31 = buf;
          v23 = sub_1013690E0((v2 + 1104), buf, &unk_101802C98, &v31);
          v24 = v23;
          v25 = *(v1 + 16);
          *(v23 + 64) = *(v1 + 24);
          *(v23 + 56) = v25;
          if (v23 + 56 != v1 + 16)
          {
            sub_1001730B8((v23 + 72), *(v1 + 32), (v1 + 40));
          }

          *(v24 + 96) = *(v1 + 56);
          sub_10012BF3C((v24 + 104), (v1 + 64));
          *(v24 + 136) = *(v1 + 96);
          goto LABEL_8;
        }

        if (v15)
        {
          if (*(v1 + 88) != 1)
          {
            goto LABEL_56;
          }

          v16 = v1 + 64;
          if (*(v1 + 87) < 0)
          {
            v16 = *v7;
          }

          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Converting and updating iccid on device [%s] with sim info", buf, 0xCu);
        }

        v38 = 0;
        *__p = 0u;
        v37 = 0u;
        v34 = 0;
        v35 = 0u;
        *buf = 0u;
        v33 = &v34;
        if ((*(v1 + 88) & 1) == 0)
        {
          sub_1000D1644();
        }

        v31 = (v1 + 64);
        v17 = sub_1013858F8((v2 + 1104), (v1 + 64), &v31);
        v19 = v17 + 80;
        v18 = *(v17 + 80);
        *(v17 + 56) = *buf;
        *(v17 + 64) = *&buf[8];
        sub_100009970(v17 + 72, v18);
        v20 = v34;
        *(v17 + 72) = v33;
        *(v17 + 80) = v20;
        v21 = v35;
        *(v17 + 88) = v35;
        if (v21)
        {
          *(v20 + 2) = v19;
          v33 = &v34;
          v34 = 0;
          *&v35 = 0;
        }

        else
        {
          *(v17 + 72) = v19;
        }

        *(v17 + 96) = WORD4(v35);
        sub_10016A270(v17 + 104, __p);
        *(v17 + 136) = v38;
        if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100009970(&v33, v34);
        if (*(v1 + 88) == 1)
        {
          *buf = v1 + 64;
          *(sub_1013858F8((v2 + 1104), (v1 + 64), buf) + 96) = *(v1 + 56);
          if (*(v1 + 88) == 1)
          {
            *buf = v1 + 64;
            v26 = (sub_1013858F8((v2 + 1104), (v1 + 64), buf) + 72);
            if (v26 != (v1 + 32))
            {
              sub_1001730B8(v26, *(v1 + 32), (v1 + 40));
            }

            if (*(v1 + 88) == 1)
            {
              *buf = v1 + 64;
              v27 = sub_1013858F8((v2 + 1104), (v1 + 64), buf);
              sub_10012BF3C((v27 + 104), (v1 + 64));
              if (*(v1 + 88) == 1)
              {
                *buf = v1 + 64;
                *(sub_1013858F8((v2 + 1104), (v1 + 64), buf) + 64) = 1;
                goto LABEL_54;
              }
            }
          }
        }
      }

      else
      {
        v8 = *(v2 + 56);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 88) != 1)
          {
            goto LABEL_56;
          }

          v9 = v1 + 64;
          if (*(v1 + 87) < 0)
          {
            v9 = *v7;
          }

          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Updating sim info for iccid [%s]", buf, 0xCu);
        }

        if (*(v1 + 88) == 1)
        {
          *buf = v1 + 64;
          *(sub_1013858F8((v2 + 1104), (v1 + 64), buf) + 96) = *(v1 + 56);
          if (*(v1 + 88) == 1)
          {
            *buf = v1 + 64;
            v10 = (sub_1013858F8((v2 + 1104), (v1 + 64), buf) + 72);
            if (v10 != (v1 + 32))
            {
              sub_1001730B8(v10, *(v1 + 32), (v1 + 40));
            }

            if (*(v1 + 88) == 1)
            {
              *buf = v1 + 64;
              v11 = sub_1013858F8((v2 + 1104), (v1 + 64), buf);
              sub_10012BF3C((v11 + 104), (v1 + 64));
LABEL_54:
              sub_10136AD80(v2);
              goto LABEL_55;
            }
          }
        }
      }

LABEL_56:
      sub_1000D1644();
    }

    v12 = *(v2 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Expected iccid when travel api called without install", buf, 2u);
    }
  }

LABEL_55:
  sub_1013877E0(&v30);
  return sub_1000049E0(&v29);
}

void sub_101387788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1013877E0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    sub_100009970(v1 + 32, *(v1 + 40));
    operator delete();
  }

  return a1;
}

uint64_t *sub_101387850(uint64_t **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = _os_feature_enabled_impl();
  v4 = v3;
  if (v3 && (*(v2 + 1096) & 1) == 0 && sub_1013715E0(v2))
  {
    v5 = *(v2 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User doesn't have trip info set.", buf, 2u);
    }

    __dst = 0uLL;
    v39 = 0;
    if (*(v2 + 1184))
    {
      v6 = *(v2 + 1168);
      if (*(v6 + 55) < 0)
      {
        sub_100005F2C(&__dst, *(v6 + 32), *(v6 + 40));
      }

      else
      {
        __dst = *(v6 + 32);
        v39 = *(v6 + 48);
      }
    }

    else
    {
      sub_10000501C(&__dst, "Dummy");
    }

    v37 = 0;
    v35 = 0;
    v36 = 0u;
    v31[0] = 0;
    v31[1] = 0;
    memset(v29, 0, sizeof(v29));
    v30 = v31;
    *v32 = 0u;
    v33 = 0u;
    *v34 = 0u;
    sub_1013689F0(buf, &__dst, v29);
    v7 = (v2 + 728);
    if (*(v2 + 1096) == 1)
    {
      if (*(v2 + 751) < 0)
      {
        operator delete(*v7);
      }

      *v7 = *buf;
      *(v2 + 744) = v17;
      HIBYTE(v17) = 0;
      buf[0] = 0;
      sub_1013647E8(v2 + 752, v18);
      v8 = v2 + 1000;
      sub_100009970(v2 + 992, *(v2 + 1000));
      v9 = v20;
      *(v2 + 992) = v19;
      *(v2 + 1000) = v9;
      v10 = v21;
      *(v2 + 1008) = v21;
      if (v10)
      {
        *(v9 + 2) = v8;
        v19 = &v20;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        *(v2 + 992) = v8;
      }

      v11 = (v2 + 1016);
      if (*(v2 + 1039) < 0)
      {
        operator delete(*v11);
      }

      *v11 = v22;
      *(v2 + 1032) = v23;
      HIBYTE(v23) = 0;
      LOBYTE(v22) = 0;
      v12 = (v2 + 1040);
      if (*(v2 + 1063) < 0)
      {
        operator delete(*v12);
      }

      *(v2 + 1056) = v25;
      *v12 = __p;
      HIBYTE(v25) = 0;
      LOBYTE(__p) = 0;
      *(v2 + 1064) = v26;
      *(v2 + 1088) = v28;
      *(v2 + 1072) = v27;
    }

    else
    {
      sub_1013806F4(v2 + 728, buf);
      *(v2 + 1096) = 1;
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p);
      }
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    sub_100009970(&v19, v20);
    sub_100FF11AC(v18);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }

    sub_1013751D4(v2);
    if (SHIBYTE(v34[1]) < 0)
    {
      operator delete(*(&v33 + 1));
    }

    if (SBYTE7(v33) < 0)
    {
      operator delete(v32[0]);
    }

    sub_100009970(&v30, v31[0]);
    sub_100FF11AC(v29);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__dst);
    }
  }

  sub_10000FFD0((v1 + 1), v4);
  sub_100370DE4(&v15);
  return sub_1000049E0(&v14);
}

void sub_101387B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_100FF1258(va);
  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  sub_100370DE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101387BD8(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  if (*(v1 + 56) == 1)
  {
    sub_10000501C(__p, "*");
    v3 = sub_100007A6C(v1 + 40, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v1 + 48 != v3)
    {
      v25 = 0;
      *v23 = 0u;
      v24 = 0u;
      v21 = 0;
      v22 = 0u;
      *__p = 0u;
      *&__p[16] = &v21;
      v19 = (v1 + 8);
      v4 = sub_1013858F8((v2 + 1104), (v1 + 8), &v19);
      v6 = v4 + 80;
      v5 = *(v4 + 80);
      *(v4 + 56) = *__p;
      *(v4 + 64) = *&__p[8];
      sub_100009970(v4 + 72, v5);
      v7 = v21;
      *(v4 + 72) = *&__p[16];
      *(v4 + 80) = v7;
      v8 = v22;
      *(v4 + 88) = v22;
      if (v8)
      {
        *(v7 + 2) = v6;
        *&__p[16] = &v21;
        v21 = 0;
        *&v22 = 0;
      }

      else
      {
        *(v4 + 72) = v6;
      }

      *(v4 + 96) = WORD4(v22);
      sub_10016A270(v4 + 104, v23);
      *(v4 + 136) = v25;
      if (BYTE8(v24) == 1 && SBYTE7(v24) < 0)
      {
        operator delete(v23[0]);
      }

      sub_100009970(&__p[16], v21);
    }
  }

  v9 = (v1 + 8);
  v10 = sub_100007A6C(v2 + 1104, (v1 + 8));
  v11 = *(v2 + 56);
  if (v2 + 1112 == v10)
  {
    if (os_log_type_enabled(*(v2 + 56), OS_LOG_TYPE_ERROR))
    {
      if (*(v1 + 31) < 0)
      {
        v9 = *v9;
      }

      *__p = 136315138;
      *&__p[4] = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot find travel iccid [%s] to update sim capability", __p, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 56), OS_LOG_TYPE_DEFAULT))
    {
      v12 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v12 = *v9;
      }

      v13 = asString(*(v1 + 32));
      *__p = 136315394;
      *&__p[4] = v12;
      *&__p[12] = 2080;
      *&__p[14] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I user selected iccid [%s] with data only to be [%s]", __p, 0x16u);
    }

    v14 = *(v1 + 32);
    *__p = v1 + 8;
    *(sub_1013858F8((v2 + 1104), (v1 + 8), __p) + 96) = v14 | 0x100;
    if (sub_10136F0F0(v2, v1 + 8) && !sub_10136EFC4(v2, (v1 + 8)))
    {
      *__p = v1 + 8;
      v15 = (sub_1013858F8((v2 + 1104), (v1 + 8), __p) + 72);
      if (v15 != (v1 + 40))
      {
        sub_1001730B8(v15, *(v1 + 40), (v1 + 48));
      }

      *__p = v1 + 8;
      *(sub_1013858F8((v2 + 1104), (v1 + 8), __p) + 64) = 4;
    }

    sub_10136AD80(v2);
  }

  sub_101387F34(&v18);
  return sub_1000049E0(&v17);
}

void sub_101387EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101387F34(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100009970(v1 + 40, *(v1 + 48));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_101387F98(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24[0] = v1;
  v2 = *v1;
  if (_os_feature_enabled_impl())
  {
    v66 = 0;
    v64 = 0;
    v65 = 0u;
    v60[0] = 0;
    v60[1] = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    memset(v54, 0, sizeof(v54));
    v59 = v60;
    *v61 = 0u;
    v62 = 0u;
    *v63 = 0u;
    std::string::operator=(&v54[120], (v1 + 8));
    *(&v55 + 1) = std::stod((v1 + 32), 0);
    v24[1] = "test";
    sub_1013810E0(&v25, v54);
    if (*(v2 + 1096) == 1)
    {
      sub_100016890((v2 + 728), "test");
      sub_1013647E8(v2 + 752, &v25);
      v3 = v2 + 1000;
      sub_100009970(v2 + 992, *(v2 + 1000));
      v4 = v45;
      *(v2 + 992) = v44;
      *(v2 + 1000) = v4;
      v5 = v46;
      *(v2 + 1008) = v46;
      if (v5)
      {
        *(v4 + 2) = v3;
        v44 = &v45;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        *(v2 + 992) = v3;
      }

      v17 = (v2 + 1016);
      if (*(v2 + 1039) < 0)
      {
        operator delete(*v17);
      }

      *v17 = *__p;
      *(v2 + 1032) = v48;
      HIBYTE(v48) = 0;
      LOBYTE(__p[0]) = 0;
      v18 = (v2 + 1040);
      if (*(v2 + 1063) < 0)
      {
        operator delete(*v18);
      }

      *(v2 + 1056) = v50;
      *v18 = v49;
      HIBYTE(v50) = 0;
      LOBYTE(v49) = 0;
      *(v2 + 1064) = v51;
      *(v2 + 1088) = v53;
      *(v2 + 1072) = v52;
    }

    else
    {
      sub_10000501C((v2 + 728), "test");
      *(v2 + 752) = v25;
      *(v2 + 768) = v26;
      v26 = 0;
      v25 = 0uLL;
      *(v2 + 792) = v28;
      *(v2 + 776) = v27;
      v27 = 0uLL;
      *(v2 + 816) = v30;
      *(v2 + 800) = v29;
      v28 = 0;
      v29 = 0uLL;
      v30 = 0;
      v6 = v31;
      *(v2 + 840) = v32;
      *(v2 + 824) = v6;
      v31 = 0uLL;
      v7 = v33;
      *(v2 + 864) = v34;
      *(v2 + 848) = v7;
      v32 = 0;
      v33 = 0uLL;
      v34 = 0;
      v8 = v41;
      *(v2 + 888) = v36;
      *(v2 + 872) = v35;
      v35 = 0uLL;
      v9 = v38;
      v10 = v39;
      *(v2 + 896) = v37;
      *(v2 + 912) = v9;
      v11 = v40;
      *(v2 + 928) = v10;
      *(v2 + 944) = v11;
      *(v2 + 960) = v8;
      v36 = 0;
      v40 = 0uLL;
      v12 = v42;
      v13 = v44;
      *(v2 + 984) = v43;
      *(v2 + 968) = v12;
      v43 = 0;
      v41 = 0;
      v42 = 0uLL;
      *(v2 + 992) = v13;
      v14 = v2 + 1000;
      v15 = v45;
      v16 = v46;
      *(v2 + 1000) = v45;
      *(v2 + 1008) = v16;
      if (v16)
      {
        *(v15 + 2) = v14;
        v44 = &v45;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        *(v2 + 992) = v14;
      }

      v19 = v50;
      *(v2 + 1032) = v48;
      *(v2 + 1016) = *__p;
      v20 = v49;
      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      *&v49 = 0;
      *(v2 + 1056) = v19;
      *(v2 + 1040) = v20;
      *(&v49 + 1) = 0;
      v50 = 0;
      *(v2 + 1064) = v51;
      v21 = v52;
      *(v2 + 1088) = v53;
      *(v2 + 1072) = v21;
      *(v2 + 1096) = 1;
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100009970(&v44, v45);
    sub_100FF11AC(&v25);
    std::string::operator=((v2 + 184), (v1 + 8));
    if (SHIBYTE(v63[1]) < 0)
    {
      operator delete(*(&v62 + 1));
    }

    if (SBYTE7(v62) < 0)
    {
      operator delete(v61[0]);
    }

    sub_100009970(&v59, v60[0]);
    sub_100FF11AC(v54);
  }

  sub_10036FBEC(v24);
  return sub_1000049E0(&v23);
}

void sub_101388354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_101388394(&a11);
  sub_100FF1258(va);
  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101388394(uint64_t a1)
{
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  sub_100009970(a1 + 248, *(a1 + 256));
  sub_100FF11AC(a1 + 8);
  return a1;
}

uint64_t sub_1013883EC(uint64_t a1)
{
  v1 = **(a1 + 40);
  result = _os_feature_enabled_impl();
  if (!result)
  {
    return result;
  }

  result = sub_10136AC30(v1);
  if (!result)
  {
    return result;
  }

  v3 = *(v1 + 176) + 31536000.0;
  if (v3 > sub_10136D3A8(*(v1 + 64)))
  {
    return 0;
  }

  *(v1 + 176) = sub_10136D3A8(*(v1 + 64));
  ServiceMap = Registry::getServiceMap(*(v1 + 64));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
LABEL_14:
    v14 = CFDateCreate(kCFAllocatorDefault, *(v1 + 176));
    (*(*v12 + 16))(v12, @"RoamingEducationTimestamps", v14, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v12 + 48))(v12, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1003EC530(&v14);
  }

LABEL_15:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return 1;
}

void sub_1013885EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101388618(capabilities::ct *a1)
{
  v1 = **(a1 + 5);
  if (capabilities::ct::dataOnlySingleSIMDevice(a1) & 1) != 0 || *(v1 + 2928) == 1 || (sub_10136DCB8(v1))
  {
    return 0;
  }

  if (sub_1013719B0(v1))
  {
    return 1;
  }

  result = sub_10136AC30(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_101388680(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString(*(v1 + 8));
    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Setting travel flow to [%s]", buf, 0xCu);
  }

  *(v2 + 168) = *(v1 + 8);
  operator delete();
}

void sub_1013887A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F327A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101388824(void *a1)
{
  *a1 = off_101F327F0;
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  return a1;
}

void sub_10138889C(void *a1)
{
  *a1 = off_101F327F0;
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete();
}

void sub_1013889D8(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void sub_101388A48(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FF11AC((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(a1);
}

void sub_101388AB4(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v15 = 0;
  v16 = 0uLL;
  sub_100008A9C(&v15, &object);
  v13 = v15;
  v14 = v16;
  v16 = 0uLL;
  v15 = 0;
  v3 = *(a1 + 8);
  if (v14 - v13 == 48)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    v26 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v22 = 0u;
    v23 = 0u;
    *buf = 0u;
    sub_100FF0F78(buf, (a1 + 40));
    if (*(v13 + 23) < 0)
    {
      sub_100005F2C(__dst, *v13, *(v13 + 1));
    }

    else
    {
      v4 = *v13;
      v20 = *(v13 + 2);
      *__dst = v4;
    }

    sub_1013741BC(v34, v3, __dst);
    if (SHIBYTE(v25[3]) < 0)
    {
      operator delete(v25[1]);
    }

    *&v25[1] = *v34;
    v25[3] = *&v34[16];
    v34[23] = 0;
    v34[0] = 0;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }

    if (*(v13 + 47) < 0)
    {
      sub_100005F2C(v17, *(v13 + 3), *(v13 + 4));
    }

    else
    {
      *v17 = *(v13 + 24);
      v18 = *(v13 + 5);
    }

    sub_1013741BC(v34, v3, v17);
    if (SHIBYTE(v27[3]) < 0)
    {
      operator delete(v27[1]);
    }

    *&v27[1] = *v34;
    v27[3] = *&v34[16];
    v34[23] = 0;
    v34[0] = 0;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v6 = *(v3 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v25[3] >= 0)
      {
        v7 = &v25[1];
      }

      else
      {
        v7 = v25[1];
      }

      if (v27[3] >= 0)
      {
        v8 = &v27[1];
      }

      else
      {
        v8 = v27[1];
      }

      *v34 = 136315394;
      *&v34[4] = v7;
      *&v34[12] = 2080;
      *&v34[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fDepartureCountryCode (%s) fArrivalCountryCode (%s)", v34, 0x16u);
    }

    v9 = *(a1 + 280);
    v10 = *(v9 + 8);
    if (v10 >= *(v9 + 16))
    {
      v11 = sub_1001E2748(v9, buf);
    }

    else
    {
      sub_100FF0F78(*(v9 + 8), buf);
      v11 = v10 + 240;
      *(v9 + 8) = v10 + 240;
    }

    *(v9 + 8) = v11;
    sub_100FF11AC(buf);
  }

  else
  {
    v5 = *(v3 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid ISO list", buf, 2u);
    }
  }

  *buf = &v13;
  sub_1000087B4(buf);
  *buf = &v15;
  sub_1000087B4(buf);
  xpc_release(object);
}

void sub_101388DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  sub_100FF11AC(&a31);
  *(v31 - 80) = &a11;
  sub_1000087B4((v31 - 80));
  *(v31 - 80) = &a14;
  sub_1000087B4((v31 - 80));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_101388E60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101388EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100FF0F78((a1 + 32), (a2 + 32));
  v7 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101388F2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(v1 + 8);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101388F5C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1013811D0(v1);
    operator delete();
  }

  return a1;
}

uint64_t *sub_101388FB4(uint64_t a1)
{
  v4 = a1;
  memset(v5, 0, sizeof(v5));
  sub_1001E2A18(v5, **(a1 + 32), *(*(a1 + 32) + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(*(a1 + 32) + 8) - **(a1 + 32)) >> 4));
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v5);
  v6 = v5;
  sub_1001E26C4(&v6);
  return sub_101388F5C(&v4);
}

void sub_101389058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_101388F5C(va);
  _Unwind_Resume(a1);
}

void *sub_101389084(void *a1)
{
  *a1 = off_101F32870;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_1013890C8(void *a1)
{
  *a1 = off_101F32870;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1013891A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F32870;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_1013891E0(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

void sub_10138921C(uint64_t a1, __int128 **a2)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10004EFD0(&v13, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v3 = *(a1 + 8);
  v4 = v13;
  v5 = v14;
  if (v13 == v14)
  {
    v12 = *(v3 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I Names from Contacts are empty.";
      v10 = v12;
      v11 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    v6 = (v3 + 504);
    std::string::operator=((v3 + 504), v13);
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) >= 2)
    {
      std::string::operator=((v3 + 528), v13 + 1);
    }

    v7 = *(v3 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 527) < 0)
      {
        v6 = *v6;
      }

      v8 = (v3 + 528);
      if (*(v3 + 551) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315394;
      *&buf[4] = v6;
      v17 = 2080;
      v18 = v8;
      v9 = "#I Names from Contacts (%s %s).";
      v10 = v7;
      v11 = 22;
      goto LABEL_12;
    }
  }

  sub_10000FFD0(a1 + 16, v4 != v5);
  *buf = &v13;
  sub_1000087B4(buf);
}

uint64_t sub_1013893E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101389434(void *a1)
{
  *a1 = off_101F328F0;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_101389494(void *a1)
{
  *a1 = off_101F328F0;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1013895C0(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101F328F0;
  a2[1] = v4;
  result = sub_1000224C8((a2 + 2), (a1 + 2));
  v6 = a1[7];
  a2[6] = a1[6];
  a2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = a1[9];
  a2[8] = a1[8];
  a2[9] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_101389640(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_10000FF50(a1 + 16);
}

void sub_10138968C(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10000FF50((a1 + 2));

  operator delete(a1);
}

void sub_1013896E0(void *a1, int *a2)
{
  v3 = a1[7];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v8 = *(v5 + 56);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9[0] = 67109120;
          v9[1] = v4;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I LockScreenSuggestionsDisabled (%d)", v9, 8u);
        }

        sub_10000FFD0((a1 + 2), v4 == 0);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1013897D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101389820(uint64_t a1)
{
  *a1 = off_101F32970;
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  return a1;
}

void sub_1013898AC(uint64_t a1)
{
  *a1 = off_101F32970;
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete();
}

void sub_1013899E4(_Unwind_Exception *a1)
{
  sub_101373B64(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101389A08(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101F32970;
  a2[1] = v4;
  sub_101381374((a2 + 2), (a1 + 2));
  result = sub_1000224C8((a2 + 13), (a1 + 13));
  v6 = a1[18];
  a2[17] = a1[17];
  a2[18] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101389A90(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v3 = *(a1 + 24);

    sub_100009970(a1 + 16, v3);
  }
}

void sub_101389B14(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 104);
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete(a1);
}

void sub_101389B94(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if ((*a2 & 0x100) != 0)
  {
    v5 = v4[7];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100074B94(*(a1 + 16), (a1 + 24), ",", 1, &v9);
      v6 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to enable user iccids (%s)", buf, 0xCu);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if (sub_10136EA08(*(a1 + 8), (a1 + 40)))
    {
      if (*(a1 + 63) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        *__dst = *(a1 + 40);
        v11 = *(a1 + 56);
      }

      v9.__r_.__value_.__r.__words[0] = v4;
      sub_101381374(&v9.__r_.__value_.__l.__size_, a1 + 16);
      v14 = 0;
      operator new();
    }

    if (sub_10136EA08(v4, (a1 + 64)))
    {
      if (*(a1 + 87) < 0)
      {
        sub_100005F2C(v7, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        *v7 = *(a1 + 64);
        v8 = *(a1 + 80);
      }

      *buf = v4;
      sub_101381374(&buf[8], a1 + 16);
      v13 = 0;
      operator new();
    }
  }

  sub_10000FFD0(a1 + 104, (v3 & 0x100) == 0);
  sub_10136E064(v4, 0);
}

void sub_101389FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_100285554(v32 - 136);
  sub_10138A0C0(&a32);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10138A074(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138A0C0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    sub_100009970(a1 + 8, *(a1 + 16));
  }

  return a1;
}

uint64_t sub_10138A11C(uint64_t a1)
{
  *a1 = off_101F329E0;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  return a1;
}

void sub_10138A194(uint64_t a1)
{
  *a1 = off_101F329E0;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete();
}

uint64_t sub_10138A2A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F329E0;
  a2[1] = v2;
  return sub_101381374((a2 + 2), a1 + 16);
}

void sub_10138A2D8(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v3 = *(a1 + 24);

    sub_100009970(a1 + 16, v3);
  }
}

void sub_10138A340(char *__p)
{
  if (__p[96] == 1)
  {
    if (__p[87] < 0)
    {
      operator delete(*(__p + 8));
    }

    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }

    sub_100009970((__p + 16), *(__p + 3));
  }

  operator delete(__p);
}

void sub_10138A3AC(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v3 = *(*(a1 + 8) + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v5 = a1 + 40;
      v4 = v6;
      if (*(v5 + 23) >= 0)
      {
        v4 = v5;
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to set default voice to (%s)", &v7, 0xCu);
    }
  }
}

uint64_t sub_10138A468(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138A4B4(uint64_t a1)
{
  *a1 = off_101F32A60;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  return a1;
}

void sub_10138A52C(uint64_t a1)
{
  *a1 = off_101F32A60;
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    sub_100009970(a1 + 16, *(a1 + 24));
  }

  operator delete();
}

uint64_t sub_10138A640(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F32A60;
  a2[1] = v2;
  return sub_101381374((a2 + 2), a1 + 16);
}

void sub_10138A670(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v3 = *(a1 + 24);

    sub_100009970(a1 + 16, v3);
  }
}

void sub_10138A6D8(char *__p)
{
  if (__p[96] == 1)
  {
    if (__p[87] < 0)
    {
      operator delete(*(__p + 8));
    }

    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }

    sub_100009970((__p + 16), *(__p + 3));
  }

  operator delete(__p);
}

void sub_10138A744(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v3 = *(*(a1 + 8) + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 64);
      v5 = a1 + 64;
      v4 = v6;
      if (*(v5 + 23) >= 0)
      {
        v4 = v5;
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to set default data to (%s)", &v7, 0xCu);
    }
  }
}

uint64_t sub_10138A800(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138A8BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F32AF0;
  a2[1] = v2;
  return result;
}

void sub_10138A8E8(uint64_t a1, std::string *a2)
{
  __p = *a2;
  v2 = __p.__r_.__value_.__r.__words[2];
  *&a2->__r_.__value_.__r.__words[1] = 0uLL;
  a2->__r_.__value_.__r.__words[0] = 0;
  v3 = *(a1 + 8);
  v2 >>= 56;
  v4 = v2;
  v5 = &__p + v2;
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_;
  }

  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (p_p != v6)
  {
    p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 1);
  }

  v8 = (v3 + 256);
  v9 = *(v3 + 279);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 279))
    {
      goto LABEL_11;
    }

LABEL_29:
    std::string::operator=((v3 + 256), &__p);
    v14 = *(v3 + 56);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    if (*(v3 + 279) < 0)
    {
      v8 = *v8;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v15 = "#I Home country set to %s";
    goto LABEL_33;
  }

  if (!*(v3 + 264))
  {
    goto LABEL_29;
  }

LABEL_11:
  if (v9 >= 0)
  {
    v10 = *(v3 + 279);
  }

  else
  {
    v10 = *(v3 + 264);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v10 != size || (v9 >= 0 ? (v12 = (v3 + 256)) : (v12 = *v8), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v13 = &__p) : (v13 = __p.__r_.__value_.__r.__words[0]), memcmp(v12, v13, v10)))
  {
    sub_101375140(v3);
    std::string::operator=((v3 + 256), &__p);
    v14 = *(v3 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 279) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      v15 = "#I Home country changed to %s";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }
  }

LABEL_34:
  if (*(v3 + 231) < 0)
  {
    sub_100005F2C(buf, *(v3 + 208), *(v3 + 216));
  }

  else
  {
    *buf = *(v3 + 208);
    v18 = *(v3 + 224);
  }

  sub_1013791E4(v3, buf);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*buf);
  }

  sub_101375FD4(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10138AB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10138AB48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138AB94(uint64_t a1)
{
  *a1 = off_101F32B70;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10138ABF4(uint64_t a1)
{
  *a1 = off_101F32B70;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_10138AD24(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10138AD50(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101F32B70;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  if (v3[63] < 0)
  {
    return sub_100005F2C((a2 + 40), *(v3 + 5), *(v3 + 6));
  }

  v6 = *(v3 + 40);
  *(a2 + 56) = *(v3 + 7);
  *(a2 + 40) = v6;
  return result;
}

void sub_10138ADE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10138AE08(void *a1)
{
  sub_1000F02B4(a1 + 8);

  operator delete(a1);
}

void sub_10138AE44(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_101375140(v4);
  if (v3 == 1)
  {
    sub_1013794B0(v4, a1 + 16, a1 + 40);
  }

  if (*(v4 + 721) == 1)
  {
    *(v4 + 721) = 0;
  }
}

uint64_t sub_10138AEA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10138AEF0(uint64_t **a1, uint64_t ***a2, __int128 **a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((sub_1000068BC(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if ((sub_1000068BC(v6 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

void *sub_10138B044(void *a1)
{
  *a1 = off_101F32BF0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10138B090(void *a1)
{
  *a1 = off_101F32BF0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10138B170(uint64_t result, uint64_t a2)
{
  *a2 = off_101F32BF0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10138B1B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10138B1C0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10138B200(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[2])
      {
LABEL_52:
        sub_100004A34(v7);
        return;
      }

      if ((v4 & 1) == 0)
      {
        v8 = *(v5 + 56);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Siri suggestions are not allowed.", buf, 2u);
        }

        goto LABEL_52;
      }

      memset(buf, 0, sizeof(buf));
      v33 = 0;
      if ((*(v5 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      if (*(v5 + 991) < 0)
      {
        sub_100005F2C(buf, *(v5 + 968), *(v5 + 976));
        v9 = *(v5 + 1096);
        v30 = 0uLL;
        v31 = 0;
        if ((v9 & 1) == 0)
        {
          sub_1000D1644();
        }
      }

      else
      {
        *buf = *(v5 + 968);
        v33 = *(v5 + 984);
        v30 = 0uLL;
        v31 = 0;
      }

      if (*(v5 + 895) >= 0)
      {
        v10 = v5 + 872;
      }

      else
      {
        v10 = *(v5 + 872);
      }

      v11 = [NSString stringWithUTF8String:v10];
      v12 = +[NSLocale currentLocale];
      v13 = [v12 displayNameForKey:NSLocaleCountryCode value:v11];

      if (v13)
      {
        v14 = [v13 UTF8String];
      }

      else
      {
        v14 = "";
      }

      sub_10000501C(&v30, v14);

      v15 = HIBYTE(v31);
      if (v31 < 0)
      {
        v15 = *(&v30 + 1);
      }

      if (v15)
      {
        v16 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_%@_%@";
      }

      else
      {
        v16 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_NO_COUNTRY_%@";
      }

      v29 = v16;
      CFRetain(v16);
      if (SHIBYTE(v33) < 0)
      {
        if (*&buf[8] == 11)
        {
          v17 = *buf;
LABEL_27:
          v18 = *v17;
          v19 = *(v17 + 3);
          if (v18 == 0x7463617265746E49 && v19 == 0x6E6F697463617265)
          {
            v21 = HIBYTE(v31);
            if (v31 < 0)
            {
              v21 = *(&v30 + 1);
            }

            if (v21)
            {
              v22 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_3PA_%@_%@";
            }

            else
            {
              v22 = @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_MESSAGE_3PA_NO_COUNTRY_%@";
            }

            v27[0] = v22;
            sub_10021D11C(&v29, v27);
            if (SHIBYTE(v33) < 0)
            {
              *&buf[8] = 4;
              v23 = *buf;
            }

            else
            {
              HIBYTE(v33) = 4;
              v23 = buf;
            }

            strcpy(v23, "Siri");
          }
        }
      }

      else if (SHIBYTE(v33) == 11)
      {
        v17 = buf;
        goto LABEL_27;
      }

      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      sub_10000501C(__p, "");
      sub_101374410(v27, v5, 1, __p, buf, 0, &v30);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      sub_10137EED0(v5, @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_TITLE", v29, @"TRAVEL_NOTIFICATION_PRE_DEPARTURE_SUBTITLE", v27, buf, &v30);
      if (*(v5 + 1096) == 1)
      {
        *(v5 + 1072) = 1;
        v24 = sub_10136D3A8(*(v5 + 64));
        if ((*(v5 + 1096) & 1) == 0)
        {
          sub_1000D1644();
        }

        *(v5 + 1080) = v24;
        *(v5 + 1088) = 1;
        sub_1013751D4(v5);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      sub_100005978(&v29);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_52;
    }
  }
}

void sub_10138B580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_10138B628(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10138B674(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Location services status changed to %d", buf, 8u);
  }

  *(v2 + 169) = *(v1 + 8);
  operator delete();
}

uint64_t sub_10138B74C(uint64_t a1)
{
  *a1 = off_101F32C70;
  v3 = (a1 + 16);
  sub_1001E26C4(&v3);
  return a1;
}

void sub_10138B7A4(uint64_t a1)
{
  *a1 = off_101F32C70;
  v1 = (a1 + 16);
  sub_1001E26C4(&v1);
  operator delete();
}

uint64_t *sub_10138B8A8(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = off_101F32C70;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return sub_1001E2A18(a2 + 2, a1[2], a1[3], 0xEEEEEEEEEEEEEEEFLL * ((a1[3] - a1[2]) >> 4));
}

void sub_10138B920(void **a1)
{
  v2 = a1 + 2;
  sub_1001E26C4(&v2);
  operator delete(a1);
}

void sub_10138B960(void *a1)
{
  v1 = a1[1];
  if ((*(v1 + 479) & 0x8000000000000000) != 0)
  {
    if (!*(v1 + 464))
    {
      goto LABEL_5;
    }
  }

  else if (!*(v1 + 479))
  {
LABEL_5:
    if ((*(v1 + 527) & 0x8000000000000000) != 0)
    {
      if (*(v1 + 512))
      {
        goto LABEL_7;
      }
    }

    else if (*(v1 + 527))
    {
      goto LABEL_7;
    }

    v14 = *(v1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Cannot verify flight events because user's first name not available.", object, 2u);
    }

    return;
  }

LABEL_7:
  v2 = a1[2];
  v3 = a1[3];
  v18 = 0uLL;
  v17 = 0;
  if (v2 != v3)
  {
    do
    {
      v4 = *(v2 + 192);
      v5 = *(v2 + 200);
      if (v4 != v5)
      {
        while (!sub_101380E98(v4, (v1 + 456)) && !sub_101380E98(v4, (v1 + 504)))
        {
          v4 += 24;
          if (v4 == v5)
          {
            v4 = v5;
            break;
          }
        }

        v5 = *(v2 + 200);
      }

      if (v4 != v5)
      {
        v6 = v18;
        if (v18 >= *(&v18 + 1))
        {
          v8 = 0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 4) + 1;
          if (v8 > 0x111111111111111)
          {
            sub_1000CE3D4();
          }

          if (0xDDDDDDDDDDDDDDDELL * ((*(&v18 + 1) - v17) >> 4) > v8)
          {
            v8 = 0xDDDDDDDDDDDDDDDELL * ((*(&v18 + 1) - v17) >> 4);
          }

          if (0xEEEEEEEEEEEEEEEFLL * ((*(&v18 + 1) - v17) >> 4) >= 0x88888888888888)
          {
            v9 = 0x111111111111111;
          }

          else
          {
            v9 = v8;
          }

          *&v23 = &v17;
          if (v9)
          {
            sub_1001E25E8(&v17, v9);
          }

          object[0] = 0;
          object[1] = (16 * ((v18 - v17) >> 4));
          v22 = object[1];
          sub_100FF0F78(object[1], v2);
          *&v22 = v22 + 240;
          v10 = (object[1] + v17 - v18);
          sub_1001E2878(&v17, v17, v18, v10);
          v11 = v17;
          v12 = *(&v18 + 1);
          v17 = v10;
          v15 = v22;
          v18 = v22;
          *&v22 = v11;
          *(&v22 + 1) = v12;
          object[0] = v11;
          object[1] = v11;
          sub_1001E29C8(object);
          v7 = v15;
        }

        else
        {
          sub_100FF0F78(v18, v2);
          v7 = v6 + 240;
        }

        *&v18 = v7;
      }

      v2 += 240;
    }

    while (v2 != v3);
    if (v17 != v18)
    {
      memset(v16, 0, sizeof(v16));
      sub_1001E2A18(v16, v17, v18, 0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 4));
      v20[0] = off_101F32CE0;
      v20[1] = v1;
      v20[3] = v20;
      v19 = 0uLL;
      object[0] = "TravelHandler";
      sub_1001048A4();
    }
  }

  v13 = *(v1 + 56);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Passenger names in flight events do not match first names.", object, 2u);
  }

  object[0] = &v17;
  sub_1001E26C4(object);
}

void sub_10138C164(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10138C37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10138C438(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F32CE0;
  a2[1] = v2;
  return result;
}

void sub_10138C464(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return;
  }

  v4 = *(a1 + 8);
  v53 = v4 + 256;
  v5 = &_mh_execute_header;
  while (1)
  {
    if ((*(v2 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 80))
      {
        goto LABEL_27;
      }
    }

    else if (!*(v2 + 95))
    {
      goto LABEL_27;
    }

    if ((*(v2 + 143) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 128))
      {
LABEL_27:
        v16 = *(v4 + 56);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v17 = v5;
          v18 = v16;
          v19 = "#I Empty country codes.";
LABEL_82:
          _os_log_impl(v17, v18, OS_LOG_TYPE_DEFAULT, v19, &buf, 2u);
          goto LABEL_83;
        }

        goto LABEL_83;
      }
    }

    else if (!*(v2 + 143))
    {
      goto LABEL_27;
    }

    sub_101372478();
    v6 = (v2 + 72);
    if (sub_100007A6C(&qword_101FCA968, (v2 + 120)) != &qword_101FCA970)
    {
      v20 = *(v4 + 56);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(v5, v20, OS_LOG_TYPE_DEFAULT, "#I Denylisted country and skip notification", &buf, 2u);
      }

      sub_10000501C(&buf, "");
      sub_10000501C(v54, "");
      sub_10000501C(&__p, "deny listed country");
      sub_101372680(v4, v53, v2 + 72, v2 + 120, 0, &buf, v54, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      goto LABEL_80;
    }

    memset(&buf, 0, sizeof(buf));
    sub_10136F470(&buf, v4, v2 + 72);
    v54[0] = 0;
    v54[1] = 0;
    *&v55 = 0;
    sub_10136F470(v54, v4, v2 + 120);
    v7 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_37;
    }

    v9 = BYTE7(v55);
    v10 = v54[1];
    if (SBYTE7(v55) < 0)
    {
      v9 = v54[1];
    }

    if (!v9)
    {
LABEL_37:
      v21 = *(v4 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(v5, v21, OS_LOG_TYPE_ERROR, "Failed to retrieve continent codes", &__p, 2u);
      }

      goto LABEL_39;
    }

    if (v9 == size)
    {
      v11 = v5;
      v12 = v54[0];
      if ((SBYTE7(v55) & 0x80u) == 0)
      {
        v13 = v54;
      }

      else
      {
        v13 = v54[0];
      }

      v52 = SBYTE7(v55);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if (memcmp(v13, p_buf, size))
      {
        v15 = 1;
        v5 = v11;
        goto LABEL_55;
      }

      v51 = v12;
      if (v52 < 0)
      {
        v5 = v11;
        if (v10 != 1)
        {
          goto LABEL_54;
        }

        v22 = *v51;
      }

      else
      {
        v5 = v11;
        if (v52 != 1)
        {
          goto LABEL_54;
        }

        v22 = v51;
      }

      if (v22 == 50)
      {
        v23 = *(v4 + 56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(v5, v23, OS_LOG_TYPE_DEFAULT, "#I Travel within EU and skip notification", &__p, 2u);
        }

        sub_10000501C(&__p, "");
        sub_10000501C(&v78, "");
        sub_10000501C(&v77, "EU Travel");
        sub_101372680(v4, v53, v2 + 72, v2 + 120, 0, &__p, &v78, &v77);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_39:
        v15 = 0;
        goto LABEL_55;
      }
    }

LABEL_54:
    v15 = 1;
LABEL_55:
    if ((SBYTE7(v55) & 0x80000000) == 0)
    {
      if (v7 < 0)
      {
        break;
      }

      goto LABEL_57;
    }

    operator delete(v54[0]);
    if (v7 < 0)
    {
      break;
    }

LABEL_57:
    if (v15)
    {
      goto LABEL_58;
    }

LABEL_80:
    v34 = *(v4 + 56);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v17 = v5;
      v18 = v34;
      v19 = "#I Failed country validation.";
      goto LABEL_82;
    }

LABEL_83:
    v2 += 240;
    if (v2 == v3)
    {
      return;
    }
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if ((v15 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_58:
  v24 = *(v2 + 95);
  if (v24 >= 0)
  {
    v25 = *(v2 + 95);
  }

  else
  {
    v25 = *(v2 + 80);
  }

  v26 = *(v2 + 143);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(v2 + 128);
  }

  if (v25 == v26)
  {
    v28 = (v24 >= 0 ? v2 + 72 : *v6);
    v29 = v27 >= 0 ? (v2 + 120) : *(v2 + 120);
    if (!memcmp(v28, v29, v25))
    {
      v36 = *(v4 + 56);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v17 = v5;
      v18 = v36;
      v19 = "#I Domestic flight.";
      goto LABEL_82;
    }
  }

  v30 = *(v4 + 279);
  if (v30 < 0)
  {
    v31 = *(v4 + 256);
    v30 = *(v4 + 264);
    if (v24 < 0)
    {
LABEL_73:
      v6 = *v6;
    }
  }

  else
  {
    v31 = (v4 + 256);
    if (v24 < 0)
    {
      goto LABEL_73;
    }
  }

  if (v30)
  {
    while (1)
    {
      v32 = *v6;
      v33 = __tolower(*v31);
      if (v33 != __tolower(v32))
      {
        break;
      }

      ++v31;
      v6 = (v6 + 1);
      if (!--v30)
      {
        goto LABEL_91;
      }
    }

    v35 = *(v4 + 56);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v17 = v5;
    v18 = v35;
    v19 = "#I Departure airport is not in home country.";
    goto LABEL_82;
  }

LABEL_91:
  v76 = 0;
  v74 = 0;
  v75 = 0u;
  v70[0] = 0;
  v70[1] = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *v54 = 0u;
  v69 = v70;
  *v71 = 0u;
  v72 = 0u;
  *v73 = 0u;
  sub_101381250(v54, v2);
  memset(&v77, 0, sizeof(v77));
  sub_101373BC0(&v77);
  std::operator+<char>();
  v37 = std::string::append(&v78, "-", 1uLL);
  v38 = *&v37->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v41 = *(v2 + 96);
  v40 = v2 + 96;
  v39 = v41;
  v42 = *(v40 + 23);
  if (v42 >= 0)
  {
    v43 = v40;
  }

  else
  {
    v43 = v39;
  }

  if (v42 >= 0)
  {
    v44 = *(v40 + 23);
  }

  else
  {
    v44 = *(v40 + 8);
  }

  v45 = std::string::append(&__p, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &buf;
  }

  else
  {
    v47 = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = buf.__r_.__value_.__l.__size_;
  }

  std::string::append(&v77, v47, v48);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v49 = *(v4 + 56);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = &v77;
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v77.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v50;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I result (%s)", &buf, 0xCu);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v77;
  }

  sub_1013810E0(v81, v54);
  sub_101375740(v4, &buf, 0);
  if (v85 < 0)
  {
    operator delete(v84);
  }

  if (v83 < 0)
  {
    operator delete(v82[3]);
  }

  sub_100009970(v82, v82[1]);
  sub_100FF11AC(v81);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_1013751D4(v4);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73[1]) < 0)
  {
    operator delete(*(&v72 + 1));
  }

  if (SBYTE7(v72) < 0)
  {
    operator delete(v71[0]);
  }

  sub_100009970(&v69, v70[0]);
  sub_100FF11AC(v54);
}

void sub_10138CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (v69 < 0)
  {
    operator delete(a10);
  }

  if (v68 < 0)
  {
    operator delete(a68);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10138CD80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10138CDCC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10138CE50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  *v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  sub_10000C320(&v67);
  v3 = sub_10000C030(&v68, "inProximity:", 12);
  v4 = asStringBool(*a1);
  v5 = strlen(v4);
  v6 = sub_10000C030(v3, v4, v5);
  v7 = sub_10000C030(v6, ", airplaneMode:", 15);
  v8 = asString();
  v9 = strlen(v8);
  v10 = sub_10000C030(v7, v8, v9);
  v11 = sub_10000C030(v10, ", internet:", 11);
  v12 = asString();
  v13 = strlen(v12);
  v14 = sub_10000C030(v11, v12, v13);
  v15 = sub_10000C030(v14, ", inEmergencyCall:", 18);
  v16 = asStringBool(*(a1 + 9));
  v17 = strlen(v16);
  v18 = sub_10000C030(v15, v16, v17);
  v19 = sub_10000C030(v18, ", wifiStatus:", 13);
  v20 = asString();
  v21 = strlen(v20);
  sub_10000C030(v19, v20, v21);
  sub_10000C030(&v68, ", sims:[", 8);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  if (v23 != v22)
  {
    do
    {
      v24 = sub_10000C030(&v68, "{", 1);
      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      memset(v85, 0, sizeof(v85));
      v83 = 0u;
      sub_10000C320(&v83);
      v25 = subscriber::asString();
      v26 = strlen(v25);
      v27 = sub_10000C030(&v84, v25, v26);
      v28 = sub_10000C030(v27, ".", 1);
      v31 = *(v23 + 8);
      v30 = v23 + 8;
      v29 = v31;
      v32 = *(v30 + 23);
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v30 + 8);
      }

      if (v33 >= 0)
      {
        v29 = v30;
      }

      if (v32)
      {
        v34 = v29;
      }

      else
      {
        v34 = "<invalid>";
      }

      v35 = strlen(v34);
      v36 = sub_10000C030(v28, v34, v35);
      v37 = sub_10000C030(v36, " regStatus:", 11);
      v38 = asString();
      v39 = strlen(v38);
      v40 = sub_10000C030(v37, v38, v39);
      v41 = sub_10000C030(v40, ", regIsSatellite:", 17);
      v42 = asStringBool(*(v30 + 28));
      v43 = strlen(v42);
      v44 = sub_10000C030(v41, v42, v43);
      v45 = sub_10000C030(v44, ", isCellularInternetActive:", 27);
      v46 = asStringBool(*(v30 + 29));
      v47 = strlen(v46);
      v48 = sub_10000C030(v45, v46, v47);
      v49 = sub_10000C030(v48, ", isRegisteredForVoice:", 23);
      v50 = asStringBool(*(v30 + 30));
      v51 = strlen(v50);
      v52 = sub_10000C030(v49, v50, v51);
      v53 = sub_10000C030(v52, ", needToSuppressBanner:", 23);
      v54 = asStringBool(*(v30 + 31));
      v55 = strlen(v54);
      sub_10000C030(v53, v54, v55);
      sub_100061574(&v83, v65);
      *&v83 = v64;
      *(&v83 + *(v64 - 3)) = v63;
      *&v84 = v62;
      if (SHIBYTE(v87) < 0)
      {
        operator delete(*(&v86 + 1));
      }

      std::locale::~locale(v85);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      if ((v66 & 0x80u) == 0)
      {
        v56 = v65;
      }

      else
      {
        v56 = v65[0];
      }

      if ((v66 & 0x80u) == 0)
      {
        v57 = v66;
      }

      else
      {
        v57 = v65[1];
      }

      v58 = sub_10000C030(v24, v56, v57);
      sub_10000C030(v58, "}", 1);
      if (v66 < 0)
      {
        operator delete(v65[0]);
      }

      v23 = v30 + 32;
    }

    while (v23 != v22);
  }

  sub_10000C030(&v68, "]", 1);
  sub_100061574(&v67, a2);
  *&v68 = v59;
  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70[1]);
  }

  std::locale::~locale(v69);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_10138D4F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10])
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a2 + 2);
  if (v3 - v2 != *(a2 + 3) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_10138CDF4(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 40;
    v4 += 40;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_10138D5C4(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10138D750(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  sub_10138D6F4(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  sub_10138D7A8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10052EEA4(&v13);
  return v12;
}

void sub_10138D6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10052EEA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10138D6F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_10138D750(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10138D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_10138D6F4(a4, v6);
      v6 += 40;
      a4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
    LOBYTE(v9) = 1;
    do
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }

    while (v5 != a3);
  }

  return sub_10138D86C(v8);
}

uint64_t sub_10138D86C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10052EE5C(a1);
  }

  return a1;
}

void sub_10138D8A4(uint64_t *a1)
{
  if (*a1)
  {
    sub_10052EF8C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10138D8E4(uint64_t a1, unsigned __int8 a2)
{
  v2 = sub_10138D910(a2);

  return _AudioServicesStartSystemSound(v2);
}

uint64_t sub_10138D910(int a1)
{
  if ((a1 - 35) > 0x16)
  {
    return 0;
  }

  else
  {
    return dword_10195CA20[(a1 - 35)];
  }
}

uint64_t sub_10138D938(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = sub_10138D910(a2);

  return _AudioServicesStopSystemSound(v4, a3);
}

void sub_10138D994(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F32DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10138DA14(CallAudioServiceInterface *a1)
{
  CallAudioServiceInterface::~CallAudioServiceInterface(a1);

  operator delete();
}

uint64_t sub_10138DA4C()
{
  if ((atomic_load_explicit(&qword_101FCA990, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_101FCA990);
    if (v1)
    {
      v2 = capabilities::ct::supportsGemini(v1);
      v3 = 1;
      if (v2)
      {
        v3 = 2;
      }

      qword_101FCA988 = v3;
      __cxa_guard_release(&qword_101FCA990);
    }
  }

  return qword_101FCA988;
}

uint64_t sub_10138DACC(uint64_t a1)
{
  *a1 = off_101F32E60;
  *(a1 + 48) = off_101F32FF0;
  sub_1013B34AC(*(a1 + 1304));
  std::mutex::~mutex((a1 + 1232));
  v2 = *(a1 + 1224);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 1208);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 1192);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  sub_1000DD0AC(a1 + 1136, *(a1 + 1144));
  sub_1001B1588(a1 + 1112, *(a1 + 1120));
  sub_1013B0664(a1 + 1048);
  std::mutex::~mutex((a1 + 984));
  if (*(a1 + 976) == 1 && *(a1 + 975) < 0)
  {
    operator delete(*(a1 + 952));
  }

  sub_1001704B0(a1 + 928, *(a1 + 936));
  sub_1001704B0(a1 + 904, *(a1 + 912));
  sub_1001704B0(a1 + 880, *(a1 + 888));
  sub_1013B0730(a1 + 832);
  v5 = *(a1 + 824);
  *(a1 + 824) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 816);
  *(a1 + 816) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1013B3458(*(a1 + 800));
  sub_1013B08F4(a1 + 744);
  std::mutex::~mutex((a1 + 680));
  v7 = *(a1 + 664);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 648);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100009970(a1 + 616, *(a1 + 624));
  sub_100E27210(*(a1 + 592));
  sub_100009970(a1 + 560, *(a1 + 568));
  sub_100009970(a1 + 536, *(a1 + 544));
  sub_100009970(a1 + 512, *(a1 + 520));
  sub_100009970(a1 + 488, *(a1 + 496));
  sub_100009970(a1 + 464, *(a1 + 472));
  sub_1013B33DC(*(a1 + 448));
  v18 = (a1 + 416);
  sub_100F75FA4(&v18);
  v9 = *(a1 + 392);
  if (v9)
  {
    *(a1 + 400) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 368);
  if (v10)
  {
    *(a1 + 376) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 344);
  if (v11)
  {
    *(a1 + 352) = v11;
    operator delete(v11);
  }

  if (*(a1 + 336) == 1 && *(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1008441A8(a1 + 288, *(a1 + 296));
  sub_1000D6F38(a1 + 240);
  sub_1002B7314(a1 + 216, *(a1 + 224));
  sub_1000DD0AC(a1 + 184, *(a1 + 192));
  v18 = (a1 + 160);
  sub_100112048(&v18);
  v18 = (a1 + 136);
  sub_1000B2AF8(&v18);
  v12 = *(a1 + 128);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    dispatch_release(v16);
  }

  PersonalityShop::~PersonalityShop(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10138DDD8(uint64_t a1)
{
  sub_10138DACC(a1);

  operator delete();
}

void sub_10138DE10(uint64_t a1)
{
  sub_10138DACC(a1 - 48);

  operator delete();
}

void sub_10138E6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    (*(*a23 + 8))(a23, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_100004A34(v23);
  _Unwind_Resume(a1);
}

void sub_10138E770(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    dispatch_barrier_async_f(v2[3], v2, sub_1013B3598);
    __cxa_rethrow();
  }

  JUMPOUT(0x10138EB38);
}

void sub_10138E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9, char **a10, char **a11)
{
  sub_1013B34AC(*(v11 + 1304));
  std::mutex::~mutex((v11 + 1232));
  v18 = *(v11 + 1224);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = *(v11 + 1208);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v20 = *(v11 + 1192);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(v11 + 1183) < 0)
  {
    operator delete(*v16);
  }

  sub_1000DD0AC(v11 + 1136, *(v11 + 1144));
  sub_1001B1588(v11 + 1112, *(v11 + 1120));
  sub_1013B0664(v11 + 1048);
  std::mutex::~mutex((v11 + 984));
  if (*(v11 + 976) == 1 && *(v11 + 975) < 0)
  {
    operator delete(*(v11 + 952));
  }

  v21 = (v11 + 816);
  sub_1001704B0(v11 + 928, *(v11 + 936));
  sub_1001704B0(v11 + 904, *(v11 + 912));
  sub_1001704B0(v11 + 880, *(v11 + 888));
  sub_1013B0730(v11 + 832);
  v22 = *(v11 + 824);
  *(v11 + 824) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *v21;
  *v21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  sub_1013B3458(*(v11 + 800));
  sub_1013B08F4(v11 + 744);
  std::mutex::~mutex((v11 + 680));
  v24 = *(v11 + 664);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v11 + 648);
  if (v25)
  {
    sub_100004A34(v25);
  }

  sub_100009970(v11 + 616, *v14);
  sub_100E27210(*v13);
  sub_100009970(v11 + 560, *v12);
  sub_100009970(v11 + 536, *a9);
  sub_100009970(v11 + 512, *v15);
  sub_100009970(v11 + 488, *a10);
  sub_100009970(v11 + 464, *v17);
  sub_1013B33DC(*a11);
  JUMPOUT(0x10138EA20);
}

void sub_10138E940(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, dispatch_object_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a19)
  {
    dispatch_release(a19);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10138EAF0);
}

void sub_10138E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  sub_1000C0544((v19 + 8));
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x10138EB20);
}

void sub_10138EB40(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10138EB38);
}

void sub_10138EB50(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "";
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinit", buf, 0x16u);
  }

  v3 = a1[3];
  v9 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = a1;
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v6 + 48;
      if (!v6)
      {
        v8 = 0;
      }

      *v10 = v8;
      v11 = v7;
      sub_1011A2764((v5 + 8), &v9, v10);
    }
  }

  sub_100013CC4();
}

void sub_101391214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, std::__shared_weak_count *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_101393148(&a66);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a55);
  if (a65)
  {
    sub_100004A34(a65);
  }

  if (a59)
  {
    sub_100004A34(a59);
  }

  sub_100010250(&a44);
  sub_100010250(&a52);
  _Unwind_Resume(a1);
}

void sub_101391968(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101391A34(NSObject *a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  isa = a1[2].isa;
  if (isa)
  {
    if (std::__shared_weak_count::lock(isa))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101391BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139223C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, const void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a26);
  sub_10001021C(&a19);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

void sub_10139256C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100004A34(v27);
  _Unwind_Resume(a1);
}

void sub_1013925E8(void *a1, uint64_t a2, const std::string *a3, _BYTE *a4)
{
  *a1 = 0;
  a1[1] = 0;
  if (*a4 == 3)
  {
    sub_101391C0C(&v4, a2, a3, 0, 1);
  }

  operator new();
}

BOOL sub_101392780(uint64_t a1)
{
  if (sub_100071DF8((*a1 + 24), &kEmergencyPersonalityId))
  {
    return 1;
  }

  v3 = (*a1 + 24);

  return sub_100071DF8(v3, &kEmergency2PersonalityId);
}

uint64_t sub_1013927E8(capabilities::ct *a1, void **a2, uint64_t a3)
{
  v5 = capabilities::ct::supportsCellRadio(a1);
  if (v5)
  {
    v6 = **a2;
    v7 = (*a2)[1];
    if (v6 != v7)
    {
      while (*(*v6 + 49) || *(*v6 + 52) != 1)
      {
        v6 += 2;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }
    }

    if (v6 == v7)
    {
      goto LABEL_13;
    }

    v8 = *v6;
    v9 = v6[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v8)
    {
LABEL_13:
      v16 = 0;
      v17 = 0;
      sub_101391C0C(&v16, a1, &kEmergencyPersonalityId, 1u, 0);
    }

    if (capabilities::ct::supportsGemini(v5))
    {
      v11 = **a2;
      v12 = (*a2)[1];
      if (v11 != v12)
      {
        while (*(*v11 + 49) || *(*v11 + 52) != 2)
        {
          v11 += 2;
          if (v11 == v12)
          {
            goto LABEL_29;
          }
        }
      }

      if (v11 == v12)
      {
        goto LABEL_29;
      }

      v13 = *v11;
      v14 = v11[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v13)
      {
LABEL_29:
        v16 = 0;
        v17 = 0;
        sub_101391C0C(&v16, a1, &kEmergency2PersonalityId, 2u, 0);
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }

    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  return 0;
}

void sub_101392D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  sub_101393148(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void *sub_101392E50(void *result, void *a2, void *a3, int a4)
{
  if (a2 != a3)
  {
    while (*(*a2 + 49) || *(*a2 + 52) != a4)
    {
      a2 += 2;
      if (a2 == a3)
      {
        goto LABEL_10;
      }
    }
  }

  if (a2 == a3)
  {
LABEL_10:
    *result = 0;
    result[1] = 0;
  }

  else
  {
    v4 = a2[1];
    *result = *a2;
    result[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_101392EAC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10009A550(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_101392F88(char **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v23 = a1;
    if (v10)
    {
      sub_1013B0A18(v10);
    }

    v19 = 0;
    v20 = 48 * v7;
    v22 = 0;
    sub_1013B09B4((48 * v7), a2);
    v6 = (48 * v7 + 48);
    v21 = v6;
    v11 = *a1;
    v12 = a1[1];
    v13 = (*a1 - v12);
    v14 = &v13[v20];
    if (*a1 != v12)
    {
      v15 = 0;
      v16 = *a1;
      v17 = &v13[v20];
      do
      {
        sub_1013B0A70(v17, v16);
        v16 += 3;
        v17 += 48;
        v15 -= 48;
      }

      while (v16 != v12);
      do
      {
        sub_1013B08A0(v11);
        v11 += 48;
      }

      while (v11 != v12);
      v11 = *a1;
      v6 = v21;
    }

    *a1 = v14;
    a1[1] = v6;
    v18 = a1[2];
    a1[2] = v22;
    v21 = v11;
    v22 = v18;
    v19 = v11;
    v20 = v11;
    result = sub_1013B0AE0(&v19);
  }

  else
  {
    result = sub_1013B09B4(a1[1], a2);
    v6 = v4 + 48;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_101393104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1013B0AE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101393148(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_101393188(uint64_t a1, void *a2, const __CFString *a3, uint64_t a4, int a5)
{
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v35 = 0u;
  sub_10000C320(&v35);
  if (a2[2])
  {
    v34 = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v30 = a3;
    if (Mutable)
    {
      v11 = v34;
      v34 = Mutable;
      *buf = v11;
      sub_1000279DC(buf);
    }

    v14 = *a2;
    v13 = a2 + 1;
    v12 = v14;
    if (v14 != v13)
    {
      v15 = 0;
      while (1)
      {
        v16 = v34;
        if (*(v12 + 55) < 0)
        {
          sub_100005F2C(__p, v12[4], v12[5]);
        }

        else
        {
          *__p = *(v12 + 2);
          v32 = v12[6];
        }

        if (SHIBYTE(v32) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v53 = v32;
        }

        v51 = 0;
        if (SHIBYTE(v53) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          *&buf[16] = v53;
        }

        v54 = 0;
        if (ctu::cf::convert_copy())
        {
          v17 = v51;
          v51 = v54;
          v55 = v17;
          sub_100005978(&v55);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v51;
        v51 = 0;
        sub_100005978(&v51);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__dst);
        }

        CFArrayAppendValue(v16, value);
        sub_100005978(&value);
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p[0]);
        if (v15)
        {
          goto LABEL_25;
        }

LABEL_26:
        v18 = *(v12 + 55);
        if (v18 >= 0)
        {
          v19 = (v12 + 4);
        }

        else
        {
          v19 = v12[4];
        }

        if (v18 >= 0)
        {
          v20 = *(v12 + 55);
        }

        else
        {
          v20 = v12[5];
        }

        sub_10000C030(&v36, v19, v20);
        v21 = v12[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v12[2];
            v23 = *v22 == v12;
            v12 = v22;
          }

          while (!v23);
        }

        ++v15;
        v12 = v22;
        if (v22 == v13)
        {
          goto LABEL_38;
        }
      }

      if (!v15)
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_10000C030(&v36, ", ", 2);
      goto LABEL_26;
    }

LABEL_38:
    if (a5)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }

    sub_10071C318(*(a1 + 104), v30, v34, 0, v24, 0, 0);
    sub_1000279DC(&v34);
  }

  else
  {
    if (a5)
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    sub_10071C340(*(a1 + 104), a3, 0, v25);
  }

  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(&v35, &__dst);
    v27 = v53 >= 0 ? &__dst : __dst;
    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v57 = a4;
    v58 = 2080;
    v59 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s%s updated with: [%s]", buf, 0x2Au);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__dst);
    }
  }

  *&v36 = v28;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[1]);
  }

  std::locale::~locale(v37);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

const void **sub_1013936EC(uint64_t a1, uint64_t **a2, const __CFString *a3, uint64_t a4, int a5)
{
  v40 = 0;
  v8 = *(a1 + 104);
  if (a5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  sub_10071C330(&v39, v8, a3, 0, v9);
  *buf = v39;
  if (v39)
  {
    CFRetain(v39);
  }

  __p = 0;
  *&v23 = 0;
  sub_10006DD00(&v23, buf);
  if (v23)
  {
    sub_1002F5980(&__p, &v23);
  }

  sub_100010250(&v23);
  v40 = __p;
  __p = 0;
  sub_100010250(&__p);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v39);
  if (v40)
  {
    v38 = 0;
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
    *v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v23 = 0u;
    sub_10000C320(&v23);
    Count = CFArrayGetCount(v40);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        __p = 0;
        v21 = 0;
        v22 = 0;
        CFArrayGetValueAtIndex(v40, i);
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v12 = *buf;
        v19 = *&buf[16];
        HIBYTE(v19) = buf[19];
        if (buf[23] < 0)
        {
          sub_100005F2C(&__p, *buf, *&buf[8]);
          operator delete(v12);
        }

        else
        {
          __p = *buf;
          v21 = *&buf[8];
          LODWORD(v22) = v19;
          *(&v22 + 3) = *&buf[19];
          HIBYTE(v22) = buf[23];
        }

        sub_1013B6F4C(a2, &__p, &__p);
        if (i)
        {
          sub_10000C030(&v24, ", ", 2);
        }

        if (v22 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v22 >= 0)
        {
          v14 = HIBYTE(v22);
        }

        else
        {
          v14 = v21;
        }

        sub_10000C030(&v24, p_p, v14);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p);
        }
      }
    }

    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(&v23, &__p);
      v16 = v22 >= 0 ? &__p : __p;
      *buf = 136316162;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      v42 = Count;
      v43 = 2080;
      v44 = a4;
      v45 = 2080;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sRecovered %zu %s: [%s]", buf, 0x34u);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }
    }

    *&v24 = v17;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[1]);
    }

    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  return sub_100010250(&v40);
}

void sub_101393B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10068C9D8(va);
  sub_100010250((v9 - 168));
  _Unwind_Resume(a1);
}

void sub_101393DCC(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 680));
  sub_100004A34(v2);
  _Unwind_Resume(a1);
}

void sub_101393E20(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#D %s%sprocessSimStateChanged", &buf, 0x16u);
  }

  v142 = sub_101395874(v3);
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v6 = *a2;
  v5 = a2[1];
  buf.__r_.__value_.__r.__words[0] = &v153;
  if (v5 != v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
    buf.__r_.__value_.__l.__size_ = 0;
    if (v7 < 0x555555555555556)
    {
      sub_1013B0A18(v7);
    }

    sub_1000CE3D4();
  }

  v8 = 0;
  v9 = v5 != v6;
  v143 = v3 + 568;
  v151 = v3;
  while (v8 < sub_10138DA4C())
  {
    v11 = subscriber::instanceAsSimSlot(v8, v10);
    v12 = v11;
    v14 = *(v3 + 136);
    v13 = *(v3 + 144);
    if (v14 != v13)
    {
      while (*v14 != v11)
      {
        v14 += 168;
        if (v14 == v13)
        {
          v14 = *(v3 + 144);
          goto LABEL_15;
        }
      }
    }

    if (v14 == v13)
    {
LABEL_15:
      v152 = 0;
      memset(&__dst, 0, sizeof(__dst));
    }

    else
    {
      v152 = *(v14 + 8);
      memset(&__dst, 0, sizeof(__dst));
      if (*(v14 + 95) < 0)
      {
        sub_100005F2C(&__dst, *(v14 + 72), *(v14 + 80));
        v13 = *(v3 + 144);
      }

      else
      {
        __dst = *(v14 + 72);
      }
    }

    if (v14 == v13)
    {
      v19 = 0;
    }

    else
    {
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 == v15)
      {
        v19 = 0;
      }

      else
      {
        v17 = v16 + 4;
        do
        {
          v18 = *(v17 - 4);
          v19 = v18 == 2;
          v20 = v18 == 2 || v17 == v15;
          v17 += 4;
        }

        while (!v20);
      }

      if (*(v14 + 64))
      {
        isEsimCapable = subscriber::isEsimCapable();
        v13 = *(v3 + 144);
        v149 = 256;
        v150 = isEsimCapable;
        goto LABEL_31;
      }
    }

    v149 = 0;
    v150 = 0;
LABEL_31:
    if (v14 == v13)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v14 + 12);
    }

    if (sub_101395904(v3, &__dst) || v143 != sub_100007A6C(v3 + 560, &__dst))
    {
      v23 = *(v3 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = subscriber::asString();
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        p_dst = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        v20 = size == 0;
        v27 = "<invalid>";
        if (!v20)
        {
          v27 = p_dst;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v165 = v24;
        v166 = 2080;
        v167 = v27;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: abandoned or limitedUse SIM %s in slot - suppressed", &buf, 0x2Au);
      }

      memset(&buf, 0, sizeof(buf));
      std::string::operator=(&__dst, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v152 = 1;
      v22 = 3;
    }

    if (v12 != 1 || !sub_101395968(v3) || subscriber::isSimPresent())
    {
      v28 = *(*(v3 + 392) + 4 * v8);
      v29 = *(*(v3 + 368) + 4 * v8);
      v30 = *(v3 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        log = v30;
        v147 = v9;
        v145 = subscriber::asString();
        v31 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = __dst.__r_.__value_.__l.__size_;
        }

        v32 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = __dst.__r_.__value_.__r.__words[0];
        }

        if (v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = "<invalid>";
        }

        v34 = subscriber::asString();
        if (v29 == v152)
        {
          v144 = ":";
          v35 = "simstate unchanged";
        }

        else
        {
          v35 = subscriber::asString();
          v144 = "->";
        }

        v36 = subscriber::asString();
        if (v28 == v22)
        {
          v37 = ":";
          v38 = "unchanged";
        }

        else
        {
          v38 = subscriber::asString();
          v37 = "->";
        }

        v39 = subscriber::asString();
        LODWORD(buf.__r_.__value_.__l.__data_) = 136317698;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v165 = v145;
        v166 = 2080;
        v167 = v33;
        v168 = 2080;
        v169 = v34;
        v170 = 2080;
        v171 = v35;
        v172 = 2080;
        v173 = v144;
        v174 = 2080;
        v175 = v36;
        v176 = 2080;
        v177 = v38;
        v178 = 2080;
        v179 = v37;
        v180 = 2080;
        v181 = v39;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%s--> slot %s update: iccid:'%s' (%s) %s%s%s; tray %s%s%s", &buf, 0x70u);
        v9 = v147;
      }

      v3 = v151;
      v148 = v150 | v149 | v148 & 0xFFFFFFFFFFFF0000;
      v9 |= sub_1013959C0(v151, v12, &__dst, v152, v22, v19, v150 | v149, &v153);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    ++v8;
  }

  v40 = sub_101395874(v3);
  v41 = v40;
  v42 = *(v3 + 656);
  v43 = *(v42 + 24);
  if (v43 != v40)
  {
    *(v42 + 24) = v40;
    v44 = *(v3 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = asStringBool(v41);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = "";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v165 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%sSettled state changed to %s", &buf, 0x20u);
    }
  }

  if (v142)
  {
    v162 = 0;
    v163 = 0;
    v161 = &v162;
    v46 = *(v3 + 512);
    if (v46 != (v3 + 520))
    {
      do
      {
        if (isReal())
        {
          if (v3 + 544 == sub_100007A6C(v151 + 536, v46 + 32))
          {
            (*(**(v151 + 120) + 16))(*(v151 + 120), v46 + 4, @"no_src", kCFBooleanTrue, @"info", 0, 0, 0);
            if (*(v46 + 55) < 0)
            {
              sub_100005F2C(__p, v46[4], v46[5]);
            }

            else
            {
              *__p = *(v46 + 2);
              v158 = v46[6];
            }

            v159 = 7;
            sub_101391C0C(&v156, v151, (v46 + 4), 0, 1);
          }

          v47 = *(v151 + 40);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(v46 + 55);
            v49 = (v48 & 0x80u) != 0;
            if ((v48 & 0x80u) != 0)
            {
              v48 = v46[5];
            }

            if (v49)
            {
              v50 = v46[4];
            }

            else
            {
              v50 = (v46 + 4);
            }

            v20 = v48 == 0;
            v51 = "<invalid>";
            if (!v20)
            {
              v51 = v50;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = "";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v165 = v51;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%ssim %s hidden, keep", &buf, 0x20u);
          }
        }

        sub_1013B731C(&v161, v46 + 4, (v46 + 4));
        v52 = v46[1];
        if (v52)
        {
          do
          {
            v53 = v52;
            v52 = *v52;
          }

          while (v52);
        }

        else
        {
          do
          {
            v53 = v46[2];
            v20 = *v53 == v46;
            v46 = v53;
          }

          while (!v20);
        }

        v46 = v53;
      }

      while (v53 != (v3 + 520));
      v54 = v161;
      v3 = v151;
      if (v161 != &v162)
      {
        do
        {
          sub_1000727F0((v151 + 512), v54 + 32);
          v55 = v54[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v54[2];
              v20 = *v56 == v54;
              v54 = v56;
            }

            while (!v20);
          }

          v54 = v56;
        }

        while (v56 != &v162);
      }
    }

    sub_100009970(&v161, v162);
  }

  v57 = sub_1013927E8(v3, (v3 + 656), &v153) | v9;
  if (v43 != v41 || (v57 & 1) != 0)
  {
    sub_101398148(v3, "processSimStateChanged", v57 & 1);
  }

  sub_101399254(v3);
  v59 = v153;
  if (v154 != v153)
  {
    v60 = 0;
    v61 = 0;
    do
    {
      sub_101399700(v3, &v59[v60]);
      ++v61;
      v59 = v153;
      v60 += 48;
    }

    while (v61 < 0xAAAAAAAAAAAAAAABLL * ((v154 - v153) >> 4));
  }

  if (v142)
  {
    if (capabilities::ct::supportsGemini(v58))
    {
      v62 = *(v3 + 40);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "#D %s%sanalyzeRemovedSims", &buf, 0x16u);
      }

      memset(&__dst, 0, sizeof(__dst));
      sub_10139D0E0(&__dst.__r_.__value_.__l.__data_, v3);
      v63 = *(v3 + 40);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%s======== present", &buf, 0x16u);
      }

      v64 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[1])
      {
        do
        {
          v65 = sub_100007A6C(v151 + 880, (v64 + 32));
          v66 = *(v151 + 40);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = *(v64 + 55);
            v68 = (v67 & 0x80u) != 0;
            if ((v67 & 0x80u) != 0)
            {
              v67 = *(v64 + 40);
            }

            if (v68)
            {
              v69 = *(v64 + 32);
            }

            else
            {
              v69 = (v64 + 32);
            }

            if (v67)
            {
              v70 = v69;
            }

            else
            {
              v70 = "<invalid>";
            }

            if (v151 + 888 == v65)
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
              *(buf.__r_.__value_.__r.__words + 4) = "";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
              v165 = v70;
              v166 = 2080;
              v167 = "";
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
            }

            else
            {
              asString();
              if (v158 >= 0)
              {
                v71 = __p;
              }

              else
              {
                v71 = __p[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
              *(buf.__r_.__value_.__r.__words + 4) = "";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
              v165 = v70;
              v166 = 2080;
              v167 = v71;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
              if (SHIBYTE(v158) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          v72 = *(v64 + 8);
          if (v72)
          {
            do
            {
              v73 = v72;
              v72 = v72->__r_.__value_.__r.__words[0];
            }

            while (v72);
          }

          else
          {
            do
            {
              v73 = *(v64 + 16);
              v20 = v73->__r_.__value_.__r.__words[0] == v64;
              v64 = v73;
            }

            while (!v20);
          }

          v64 = v73;
        }

        while (v73 != &__dst.__r_.__value_.__r.__words[1]);
      }

      v3 = v151;
      v74 = *(v151 + 512);
      v75 = (v151 + 520);
      if (v74 != (v151 + 520))
      {
        do
        {
          sub_1013B731C((v151 + 464), v74 + 4, (v74 + 4));
          v76 = v74[1];
          if (v76)
          {
            do
            {
              v77 = v76;
              v76 = *v76;
            }

            while (v76);
          }

          else
          {
            do
            {
              v77 = v74[2];
              v20 = *v77 == v74;
              v74 = v77;
            }

            while (!v20);
          }

          v74 = v77;
        }

        while (v77 != v75);
      }

      sub_100009970(v151 + 512, *(v151 + 520));
      *(v151 + 512) = v75;
      *v75 = 0u;
      v78 = (v151 + 464);
      if (*(v151 + 480))
      {
        __p[1] = 0;
        v158 = 0;
        __p[0] = &__p[1];
        v79 = *(v151 + 464);
        v80 = (v151 + 472);
        if (v79 != (v151 + 472))
        {
          do
          {
            if (&__dst.__r_.__value_.__r.__words[1] == sub_100007A6C(&__dst, v79 + 32))
            {
              v88 = sub_100007A6C(v151 + 880, v79 + 32);
              if (v151 + 888 == v88)
              {
                v96 = *(v151 + 40);
                if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_191;
                }

                v97 = v79[55];
                v98 = (v97 & 0x80u) != 0;
                if ((v97 & 0x80u) != 0)
                {
                  v97 = *(v79 + 5);
                }

                if (v98)
                {
                  v99 = *(v79 + 4);
                }

                else
                {
                  v99 = v79 + 32;
                }

                v20 = v97 == 0;
                v100 = "<invalid>";
                if (!v20)
                {
                  v100 = v99;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v165 = v100;
                v86 = v96;
                v87 = "#I %s%sanalyzeRemovedSims. label for '%s' not found - skipping";
                goto LABEL_158;
              }

              if (sub_10139D330(v151, v88 + 56))
              {
                v89 = *(v151 + 40);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                {
                  v90 = v79[55];
                  v91 = (v90 & 0x80u) != 0;
                  if ((v90 & 0x80u) != 0)
                  {
                    v90 = *(v79 + 5);
                  }

                  if (v91)
                  {
                    v92 = *(v79 + 4);
                  }

                  else
                  {
                    v92 = v79 + 32;
                  }

                  v20 = v90 == 0;
                  v93 = "<invalid>";
                  if (!v20)
                  {
                    v93 = v92;
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                  v165 = v93;
                  v94 = v89;
                  v95 = "#D %s%s%s has super label - ignored";
LABEL_189:
                  _os_log_debug_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, v95, &buf, 0x20u);
                }
              }

              else
              {
                if (!sub_101395904(v151, v79 + 32))
                {
                  sub_1013B731C(__p, v79 + 4, (v79 + 32));
                  goto LABEL_191;
                }

                v101 = *(v151 + 40);
                if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
                {
                  v102 = v79[55];
                  v103 = (v102 & 0x80u) != 0;
                  if ((v102 & 0x80u) != 0)
                  {
                    v102 = *(v79 + 5);
                  }

                  if (v103)
                  {
                    v104 = *(v79 + 4);
                  }

                  else
                  {
                    v104 = v79 + 32;
                  }

                  v20 = v102 == 0;
                  v105 = "<invalid>";
                  if (!v20)
                  {
                    v105 = v104;
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                  v165 = v105;
                  v94 = v101;
                  v95 = "#D %s%s%s is abandoned - ignored";
                  goto LABEL_189;
                }
              }
            }

            else
            {
              v81 = *(v151 + 40);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = v79[55];
                v83 = (v82 & 0x80u) != 0;
                if ((v82 & 0x80u) != 0)
                {
                  v82 = *(v79 + 5);
                }

                if (v83)
                {
                  v84 = *(v79 + 4);
                }

                else
                {
                  v84 = v79 + 32;
                }

                v20 = v82 == 0;
                v85 = "<invalid>";
                if (!v20)
                {
                  v85 = v84;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v165 = v85;
                v86 = v81;
                v87 = "#I %s%sanalyzeRemovedSims. SIM '%s' found within present - skipping";
LABEL_158:
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, v87, &buf, 0x20u);
              }
            }

LABEL_191:
            v106 = *(v79 + 1);
            if (v106)
            {
              do
              {
                v107 = v106;
                v106 = *v106;
              }

              while (v106);
            }

            else
            {
              do
              {
                v107 = *(v79 + 2);
                v20 = *v107 == v79;
                v79 = v107;
              }

              while (!v20);
            }

            v79 = v107;
          }

          while (v107 != v80);
        }

        v108 = *(v151 + 40);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          v109 = *(v151 + 480);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = "";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v165 = v109;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#I %s%s======== removed raw %zu", &buf, 0x20u);
        }

        v110 = *v78;
        if (*v78 != v80)
        {
          do
          {
            v111 = sub_100007A6C(v151 + 880, v110 + 32);
            v112 = *(v151 + 40);
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              v113 = *(v110 + 55);
              v114 = v113 < 0;
              if (v113 < 0)
              {
                v113 = v110[5];
              }

              if (v114)
              {
                v115 = v110[4];
              }

              else
              {
                v115 = (v110 + 4);
              }

              if (v113)
              {
                v116 = v115;
              }

              else
              {
                v116 = "<invalid>";
              }

              if (v151 + 888 == v111)
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v165 = v116;
                v166 = 2080;
                v167 = "";
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
              }

              else
              {
                asString();
                v117 = &v161;
                if (v163 < 0)
                {
                  v117 = v161;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v165 = v116;
                v166 = 2080;
                v167 = v117;
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
                if (SHIBYTE(v163) < 0)
                {
                  operator delete(v161);
                }
              }
            }

            v118 = v110[1];
            if (v118)
            {
              do
              {
                v119 = v118;
                v118 = *v118;
              }

              while (v118);
            }

            else
            {
              do
              {
                v119 = v110[2];
                v20 = *v119 == v110;
                v110 = v119;
              }

              while (!v20);
            }

            v110 = v119;
          }

          while (v119 != v80);
        }

        v120 = *(v151 + 40);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = "";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v165 = v158;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "#I %s%s======== removed %zu", &buf, 0x20u);
        }

        v121 = __p[0];
        if (__p[0] != &__p[1])
        {
          do
          {
            v122 = sub_100007A6C(v151 + 880, v121 + 32);
            v123 = *(v151 + 40);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              v124 = *(v121 + 55);
              v125 = v124 < 0;
              if (v124 < 0)
              {
                v124 = v121[5];
              }

              if (v125)
              {
                v126 = v121[4];
              }

              else
              {
                v126 = (v121 + 4);
              }

              if (v124)
              {
                v127 = v126;
              }

              else
              {
                v127 = "<invalid>";
              }

              if (v151 + 888 == v122)
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v165 = v127;
                v166 = 2080;
                v167 = "";
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
              }

              else
              {
                asString();
                v128 = &v161;
                if (v163 < 0)
                {
                  v128 = v161;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v165 = v127;
                v166 = 2080;
                v167 = v128;
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", &buf, 0x2Au);
                if (SHIBYTE(v163) < 0)
                {
                  operator delete(v161);
                }
              }
            }

            v129 = v121[1];
            if (v129)
            {
              do
              {
                v130 = v129;
                v129 = *v129;
              }

              while (v129);
            }

            else
            {
              do
              {
                v130 = v121[2];
                v20 = *v130 == v121;
                v121 = v130;
              }

              while (!v20);
            }

            v121 = v130;
          }

          while (v130 != &__p[1]);
        }

        if (v78 != __p)
        {
          v131 = __p[0];
          if (*(v151 + 480))
          {
            v132 = *v78;
            *v78 = v80;
            (*v80)[2] = 0;
            *v80 = 0;
            *(v151 + 480) = 0;
            if (v132[1])
            {
              v133 = v132[1];
            }

            else
            {
              v133 = v132;
            }

            buf.__r_.__value_.__r.__words[0] = v151 + 464;
            buf.__r_.__value_.__l.__size_ = v133;
            buf.__r_.__value_.__r.__words[2] = v133;
            if (!v133 || (buf.__r_.__value_.__l.__size_ = sub_1000685CC(v133), v131 == &__p[1]))
            {
              v137 = v131;
            }

            else
            {
              do
              {
                std::string::operator=((v133 + 32), (v131 + 4));
                v134 = buf.__r_.__value_.__r.__words[2];
                v161 = 0;
                v135 = sub_1001355F4(v78, &v161, (buf.__r_.__value_.__r.__words[2] + 32));
                sub_1000070DC(v78, v161, v135, v134);
                v133 = buf.__r_.__value_.__l.__size_;
                buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
                if (buf.__r_.__value_.__l.__size_)
                {
                  buf.__r_.__value_.__l.__size_ = sub_1000685CC(buf.__r_.__value_.__l.__size_);
                }

                v136 = v131[1];
                if (v136)
                {
                  do
                  {
                    v137 = v136;
                    v136 = *v136;
                  }

                  while (v136);
                }

                else
                {
                  do
                  {
                    v137 = v131[2];
                    v20 = *v137 == v131;
                    v131 = v137;
                  }

                  while (!v20);
                }

                if (!v133)
                {
                  break;
                }

                v131 = v137;
              }

              while (v137 != &__p[1]);
            }

            sub_100173240(&buf);
            v131 = v137;
          }

          if (v131 != &__p[1])
          {
            memset(&buf, 0, sizeof(buf));
            sub_1013B73A8();
          }
        }

        sub_100009970(__p, __p[1]);
        v3 = v151;
      }

      if (__dst.__r_.__value_.__r.__words[2] >= 2)
      {
        if (*(v3 + 480))
        {
          v138 = *(v3 + 40);
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = "";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
            _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "#I %s%sMore then 1 present SIM -> flush list of removed SIMs, cancel alert", &buf, 0x16u);
          }

          sub_100009970(v78, *(v3 + 472));
          *(v3 + 472) = 0;
          *(v3 + 480) = 0;
          *(v3 + 464) = v3 + 472;
        }

        (*(**(v3 + 1200) + 48))(*(v3 + 1200));
      }

      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      (*(**(v3 + 1200) + 56))(&buf);
      if (buf.__r_.__value_.__r.__words[0])
      {
        v139 = __dst.__r_.__value_.__r.__words[0];
        if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[1])
        {
          do
          {
            if (sub_100071DF8((buf.__r_.__value_.__r.__words[0] + 152), &v139[1].__words[1]))
            {
              (*(**(v3 + 1200) + 48))(*(v3 + 1200));
            }

            v140 = v139->__words[1];
            if (v140)
            {
              do
              {
                v141 = v140;
                v140 = v140->__r_.__value_.__r.__words[0];
              }

              while (v140);
            }

            else
            {
              do
              {
                v141 = v139->__words[2];
                v20 = v141->__r_.__value_.__r.__words[0] == v139;
                v139 = v141;
              }

              while (!v20);
            }

            v139 = v141;
          }

          while (v141 != &__dst.__r_.__value_.__r.__words[1]);
        }
      }

      sub_10139D3B8(v3);
      if (buf.__r_.__value_.__l.__size_)
      {
        sub_100004A34(buf.__r_.__value_.__l.__size_);
      }

      sub_100009970(&__dst, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      sub_100009970(v3 + 512, *(v3 + 520));
      *(v3 + 512) = v3 + 520;
      *(v3 + 520) = 0u;
    }

    sub_100009970(v3 + 488, *(v3 + 496));
    *(v3 + 496) = 0;
    *(v3 + 504) = 0;
    *(v3 + 488) = v3 + 496;
  }

  buf.__r_.__value_.__r.__words[0] = &v153;
  sub_1013B1D50(&buf);
}

void sub_1013956E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, char *a41, int a42, __int16 a43, char a44, char a45)
{
  sub_100009970(&a40, a41);
  __p = &a28;
  sub_1013B1D50(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_101395874(int **a1)
{
  v1 = a1;
  v2 = a1[17];
  v3 = a1[18];
  while (v2 != v3)
  {
    if (*v2)
    {
      a1 = sub_101399DB8(v1, *v2, v2[2]);
      if (a1)
      {
        v4 = v2[3] == 0;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    else if (!v2[3])
    {
      return 0;
    }

    v2 += 42;
  }

  return !capabilities::ct::supportsCellRadio(a1) || *(v1 + 17) != *(v1 + 18);
}

BOOL sub_101395904(os_unfair_lock_s *a1, char *a2)
{
  os_unfair_lock_lock(a1 + 152);
  v4 = &a1[156] != sub_100007A6C(&a1[154], a2);
  os_unfair_lock_unlock(a1 + 152);
  return v4;
}

BOOL sub_101395968(uint64_t a1)
{
  v1 = *(a1 + 448);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 448;
  do
  {
    if (*(v1 + 32) >= 1)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * (*(v1 + 32) < 1));
  }

  while (v1);
  return v2 != a1 + 448 && *(v2 + 32) <= 1 && *(v2 + 65) == 2;
}

uint64_t sub_1013959C0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, __int16 a7, char **a8)
{
  v11 = a2;
  v13 = a1[82];
  v14 = *v13;
  v15 = *(v13 + 8);
  if (v14 != v15)
  {
    while (*(*v14 + 49) || *(*v14 + 52) != a2)
    {
      v14 += 2;
      if (v14 == v15)
      {
        goto LABEL_12;
      }
    }
  }

  if (v14 == v15)
  {
LABEL_12:
    v17 = 0;
LABEL_13:
    __dst[0] = 0;
    __dst[1] = 0;
    v115 = 0;
    goto LABEL_14;
  }

  v16 = *v14;
  v17 = v14[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v115 = 0;
  if (!v16)
  {
    goto LABEL_13;
  }

  if (*(v16 + 47) < 0)
  {
    sub_100005F2C(__dst, *(v16 + 24), *(v16 + 32));
  }

  else
  {
    *__dst = *(v16 + 24);
    v115 = *(v16 + 40);
  }

LABEL_14:
  v18 = subscriber::simSlotAsInstance();
  v19 = a1[46];
  v20 = a4;
  v112 = v18;
  if (*(v19 + 4 * v18) == a4 && *(a1[43] + 4 * v18) == a4 && *(a1[49] + 4 * v18) == a5)
  {
    v21 = *(a3 + 23);
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a3 + 8);
    }

    if (!v21 || sub_100071DF8(a3, __dst))
    {
LABEL_121:
      v83 = v112;
      goto LABEL_158;
    }

    v19 = a1[46];
    v20 = a4;
  }

  *(v19 + 4 * v112) = v20;
  v22 = *(a3 + 23);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a3 + 8);
  }

  v111 = a1;
  if (v22)
  {
    (*(*a1[15] + 88))(a1[15], a3);
    v110 = a7;
    v23 = a1[82];
    v25 = *v23;
    v24 = v23[1];
    if (v25 != v24)
    {
      while (*(*v25 + 49) || *(*v25 + 13) != v11)
      {
        v25 += 2;
        if (v25 == v24)
        {
          goto LABEL_36;
        }
      }
    }

    if (v25 != v24)
    {
      if (!sub_100071DF8(*v25 + 3, a3))
      {
        v51 = a1[17];
        v50 = a1[18];
        if (v51 != v50)
        {
          v52 = *(*v25 + 47);
          if (v52 >= 0)
          {
            v53 = *(*v25 + 47);
          }

          else
          {
            v53 = *(*v25 + 4);
          }

          v54 = (*v25 + 24);
          v55 = v51 + 72;
          while (1)
          {
            v56 = *(v55 + 23);
            v57 = v56;
            if ((v56 & 0x80u) != 0)
            {
              v56 = *(v55 + 8);
            }

            if (v56 == v53)
            {
              v58 = v57 >= 0 ? v55 : *v55;
              v59 = v52 >= 0 ? v54 : *v54;
              if (!memcmp(v58, v59, v53) && *(v55 - 72) != v11)
              {
                break;
              }
            }

            v60 = v55 + 96;
            v55 += 168;
            if (v60 == v50)
            {
              goto LABEL_144;
            }
          }

          v51 = v55 - 72;
        }

        if (v51 != v50)
        {
          v87 = v111[5];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v88 = *(*v25 + 14);
            v89 = PersonalityInfo::logPrefix(*v25);
            v90 = *(*v25 + 3);
            v91 = *(*v25 + 47);
            v92 = v91;
            if ((v91 & 0x80u) != 0)
            {
              v91 = *(*v25 + 4);
            }

            if (v92 >= 0)
            {
              v90 = *v25 + 24;
            }

            if (v91)
            {
              v93 = v90;
            }

            else
            {
              v93 = "<invalid>";
            }

            v94 = subscriber::asString();
            v95 = subscriber::asString();
            *buf = 136316674;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            v118 = 1024;
            *v119 = v88;
            *&v119[4] = 2080;
            *&v119[6] = v89;
            *&v119[14] = 2080;
            *&v119[16] = v93;
            v120[0] = 2080;
            *&v120[1] = v94;
            v121 = 2080;
            v122 = v95;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) relocated onto slot %s", buf, 0x44u);
          }
        }

LABEL_144:
        v96 = v111[5];
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = *(*v25 + 14);
          v98 = PersonalityInfo::logPrefix(*v25);
          v99 = *v25 + 24;
          v100 = *v99;
          v101 = *(*v25 + 47);
          v102 = *(*v25 + 4);
          v103 = subscriber::asString();
          *buf = 136316418;
          *&buf[4] = "";
          if ((v101 & 0x80u) == 0)
          {
            v104 = v101;
          }

          else
          {
            v104 = v102;
          }

          *&buf[14] = "";
          v105 = "<invalid>";
          *&buf[12] = 2080;
          if ((v101 & 0x80u) == 0)
          {
            v106 = v99;
          }

          else
          {
            v106 = v100;
          }

          v118 = 1024;
          if (v104)
          {
            v105 = v106;
          }

          *v119 = v97;
          *&v119[4] = 2080;
          *&v119[6] = v98;
          *&v119[14] = 2080;
          *&v119[16] = v105;
          v120[0] = 2080;
          *&v120[1] = v103;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) is detached", buf, 0x3Au);
        }

        v116 = 0uLL;
        sub_1004CA38C();
      }

      v26 = *v25;
      if (*(*v25 + 64) != 2)
      {
        v61 = a1[5];
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(v26 + 3);
          v62 = v26 + 24;
          v63 = v64;
          v65 = v62[23];
          v66 = *(v62 + 1);
          v67 = subscriber::asString();
          if ((v65 & 0x80u) == 0)
          {
            v68 = v65;
          }

          else
          {
            v68 = v66;
          }

          if ((v65 & 0x80u) == 0)
          {
            v69 = v62;
          }

          else
          {
            v69 = v63;
          }

          *buf = 136315906;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          v118 = 2080;
          if (v68)
          {
            v70 = v69;
          }

          else
          {
            v70 = "<invalid>";
          }

          *v119 = v70;
          *&v119[8] = 2080;
          *&v119[10] = v67;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%sSIM is back for %s (%s) added", buf, 0x2Au);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_1004CA38C();
      }
    }

LABEL_36:
    v27 = a1[82];
    v29 = *v27;
    v28 = v27[1];
    if (*v27 != v28)
    {
      while (*(*v29 + 49) || !sub_100071DF8(*v29 + 3, a3))
      {
        v29 += 2;
        if (v29 == v28)
        {
          v29 = v28;
          break;
        }
      }

      v28 = *(a1[82] + 8);
    }

    if (v29 == v28)
    {
      goto LABEL_95;
    }

    v30 = *v29;
    if (*(*v29 + 13) != v11)
    {
      v31 = a1[5];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(v30 + 14);
        v33 = PersonalityInfo::logPrefix(v30);
        v34 = *v29 + 24;
        v35 = *v34;
        v36 = *(*v29 + 47);
        v37 = *(*v29 + 4);
        v38 = subscriber::asString();
        *buf = 136316418;
        *&buf[4] = "";
        if ((v36 & 0x80u) == 0)
        {
          v39 = v36;
        }

        else
        {
          v39 = v37;
        }

        *&buf[14] = "";
        v40 = "<invalid>";
        *&buf[12] = 2080;
        if ((v36 & 0x80u) == 0)
        {
          v41 = v34;
        }

        else
        {
          v41 = v35;
        }

        v118 = 1024;
        if (v39)
        {
          v40 = v41;
        }

        *v119 = v32;
        *&v119[4] = 2080;
        *&v119[6] = v33;
        *&v119[14] = 2080;
        *&v119[16] = v40;
        v120[0] = 2080;
        *&v120[1] = v38;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) is detached", buf, 0x3Au);
        v31 = v111[5];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(*v29 + 14);
        v43 = PersonalityInfo::logPrefix(*v29);
        v44 = *(*v29 + 3);
        v45 = *(*v29 + 47);
        v46 = v45;
        if ((v45 & 0x80u) != 0)
        {
          v45 = *(*v29 + 4);
        }

        if (v46 >= 0)
        {
          v44 = *v29 + 24;
        }

        if (v45)
        {
          v47 = v44;
        }

        else
        {
          v47 = "<invalid>";
        }

        v48 = subscriber::asString();
        v49 = subscriber::asString();
        *buf = 136316674;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        v118 = 1024;
        *v119 = v42;
        *&v119[4] = 2080;
        *&v119[6] = v43;
        *&v119[14] = 2080;
        *&v119[16] = v47;
        v120[0] = 2080;
        *&v120[1] = v48;
        v121 = 2080;
        v122 = v49;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s moved from slot %s to slot %s", buf, 0x44u);
      }

      v116 = 0uLL;
      sub_1004CA38C();
    }

    if (v29 == v28)
    {
LABEL_95:
      (*(*a1[15] + 32))(a1[15], a3, @"no_src", @"info", 0, 0);
      v116 = 0uLL;
      sub_101391C0C(&v116, a1, a3, v11, 0);
    }

    if (v110 & 0x100) != 0 && (v110)
    {
      v71 = a1[82];
      v72 = *v71;
      v73 = v71[1];
      if (*v71 != v73)
      {
        while (!sub_100071DF8((*v72 + 24), a3))
        {
          v72 += 16;
          if (v72 == v73)
          {
            v72 = v73;
            break;
          }
        }

        v73 = *(a1[82] + 8);
      }

      if (v72 != v73 && (*(*v72 + 61) & 1) == 0)
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1004CA38C();
      }
    }
  }

  if (!sub_101399DB8(a1, v11, a4))
  {
    goto LABEL_121;
  }

  v74 = *(a3 + 23);
  v75 = v74;
  v76 = *(a3 + 8);
  if ((v74 & 0x80u) == 0)
  {
    v77 = *(a3 + 23);
  }

  else
  {
    v77 = *(a3 + 8);
  }

  v78 = a1[43];
  if (v77 || *(v78 + 4 * v112) == 5)
  {
    v79 = a4;
    *(v78 + 4 * v112) = a4;
    v74 = *(a3 + 23);
    v76 = *(a3 + 8);
    v75 = *(a3 + 23);
  }

  else
  {
    v79 = a4;
  }

  if (v75 < 0)
  {
    v74 = v76;
  }

  if (v79 == 5 && v74)
  {
    v80 = a1[82];
    v82 = *v80;
    v81 = v80[1];
    if (*v80 != v81)
    {
      do
      {
        if (sub_100071DF8((*v82 + 24), a3))
        {
          break;
        }

        v82 += 16;
      }

      while (v82 != v81);
    }

    v116 = 0uLL;
    sub_1004CA38C();
  }

  v83 = v112;
  if (v79 != 5)
  {
    v84 = a1[82];
    v86 = *v84;
    v85 = v84[1];
    if (v86 != v85)
    {
      while (*(*v86 + 49) || *(*v86 + 52) != v11)
      {
        v86 += 16;
        if (v86 == v85)
        {
          goto LABEL_155;
        }
      }
    }

    if (v86 != v85 && isReal())
    {
      v116 = 0uLL;
      sub_1004CA38C();
    }

LABEL_155:
    v83 = v112;
    if (subscriber::isSimAbsent())
    {
      v107 = (a1[52] + 16 * v112);
      v108 = v107[1];
      *v107 = 0;
      v107[1] = 0;
      if (v108)
      {
        sub_100004A34(v108);
      }
    }
  }

LABEL_158:
  *(a1[49] + 4 * v83) = a5;
  if (SHIBYTE(v115) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  return 0;
}

void sub_101397E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a51)
  {
    sub_100004A34(a51);
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (v51)
  {
    sub_100004A34(v51);
  }

  _Unwind_Resume(exception_object);
}

void sub_101398148(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(*(a1 + 656) + 8) - **(a1 + 656)) >> 4;
    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2048;
    *&buf[24] = v7;
    LOWORD(v107[0]) = 2080;
    *(v107 + 2) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%supdating personalities (%zu items) - %s", buf, 0x2Au);
  }

  if (a3 && (*(a1 + 96) & 1) == 0)
  {
    v8 = *(a1 + 656);
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%ssaving cache", buf, 0x16u);
    }

    v90 = 0;
    theArray = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = theArray;
      theArray = Mutable;
      *buf = v11;
      sub_1000279DC(buf);
    }

    v12 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v12)
    {
      v13 = v90;
      v90 = v12;
      *buf = v13;
      sub_1000279DC(buf);
    }

    v89 = 0;
    __p[0] = 0;
    *buf = time(0);
    v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, buf);
    if (v14)
    {
      v15 = __p[0];
      __p[0] = v14;
      *buf = v15;
      sub_100029A48(buf);
    }

    v89 = __p[0];
    __p[0] = 0;
    sub_100029A48(__p);
    for (i = 0; i < sub_10138DA4C(); i = (i + 1))
    {
      v19 = *v8;
      v18 = v8[1];
      if (*v8 != v18)
      {
        do
        {
          if (!*(*v19 + 49))
          {
            v20 = *(*v19 + 52);
            if (v20 == subscriber::instanceAsSimSlot(i, v17))
            {
              goto LABEL_20;
            }
          }

          v19 += 16;
        }

        while (v19 != v18);
        v19 = v18;
LABEL_20:
        v18 = v8[1];
      }

      if (v19 == v18 || sub_101392780(v19))
      {
        CFArrayAppendValue(theArray, &stru_101F6AFB8);
      }

      else
      {
        v21 = theArray;
        v22 = *v19;
        if (*(*v19 + 47) < 0)
        {
          sub_100005F2C(__dst, *(v22 + 24), *(v22 + 32));
        }

        else
        {
          *__dst = *(v22 + 24);
          v88 = *(v22 + 40);
        }

        if (SHIBYTE(v88) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v102 = v88;
        }

        v96 = 0;
        if (SHIBYTE(v102) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v102;
        }

        v98 = 0;
        if (ctu::cf::convert_copy())
        {
          v23 = v96;
          v96 = v98;
          v92[0] = v23;
          sub_100005978(v92);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value[0] = v96;
        v96 = 0;
        sub_100005978(&v96);
        if (SHIBYTE(v102) < 0)
        {
          operator delete(__p[0]);
        }

        CFArrayAppendValue(v21, value[0]);
        sub_100005978(value);
        if (SHIBYTE(v88) < 0)
        {
          operator delete(__dst[0]);
        }

        if (*(*v19 + 60))
        {
          v24 = kCFBooleanTrue;
        }

        else
        {
          v24 = kCFBooleanFalse;
        }

        (*(**(a1 + 120) + 16))(*(a1 + 120), *v19 + 24, @"ts", v89, @"info", 0, 0, 0);
        (*(**(a1 + 120) + 16))(*(a1 + 120), *v19 + 24, @"type", @"sim", @"info", 0, 0, 0);
        (*(**(a1 + 120) + 16))(*(a1 + 120), *v19 + 24, @"eap_aka", v24, @"info", 0, 0, 0);
      }
    }

    v25 = *(a1 + 104);
    if (CFArrayGetCount(theArray))
    {
      v26 = theArray;
    }

    else
    {
      v26 = 0;
    }

    sub_10071C318(v25, @"PersonalitySlots", v26, 0, 0, 0, 0);
    v27 = *v8;
    v28 = v8[1];
    if (*v8 != v28)
    {
      do
      {
        v29 = *v27;
        if (*(*v27 + 49) == 1)
        {
          v30 = v90;
          if (*(v29 + 47) < 0)
          {
            sub_100005F2C(value, *(v29 + 24), *(v29 + 32));
          }

          else
          {
            *value = *(v29 + 24);
            v86 = *(v29 + 40);
          }

          if (SHIBYTE(v86) < 0)
          {
            sub_100005F2C(__p, value[0], value[1]);
          }

          else
          {
            *__p = *value;
            v102 = v86;
          }

          v96 = 0;
          if (SHIBYTE(v102) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v102;
          }

          v98 = 0;
          if (ctu::cf::convert_copy())
          {
            v31 = v96;
            v96 = v98;
            v92[0] = v31;
            sub_100005978(v92);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v105 = v96;
          v96 = 0;
          sub_100005978(&v96);
          if (SHIBYTE(v102) < 0)
          {
            operator delete(__p[0]);
          }

          CFArrayAppendValue(v30, v105);
          sub_100005978(&v105);
          if (SHIBYTE(v86) < 0)
          {
            operator delete(value[0]);
          }

          (*(**(a1 + 120) + 16))(*(a1 + 120), *v27 + 24, @"ts", v89, @"info", 0, 0, 0);
          (*(**(a1 + 120) + 16))(*(a1 + 120), *v27 + 24, @"type", @"cloud", @"info", 0, 0, 0);
        }

        v27 += 16;
      }

      while (v27 != v28);
    }

    v32 = *(a1 + 104);
    if (CFArrayGetCount(v90))
    {
      v33 = v90;
    }

    else
    {
      v33 = 0;
    }

    sub_10071C318(v32, @"PersonalityCloud", v33, 0, 0, 0, 0);
    v98 = 0;
    v99 = 0;
    v100 = 0;
    (*(**(a1 + 120) + 80))(&v98);
    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2048;
      *&buf[24] = 0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3);
      _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "#D %s%sremoveOutdatedPersonalities. wallets: %zu", buf, 0x20u);
    }

    v36 = v98;
    v35 = v99;
    if (v99 != v98)
    {
      v37 = 0;
      while (1)
      {
        if (isReal())
        {
          if (a1 + 888 == sub_100007A6C(a1 + 880, &v98[24 * v37]))
          {
            ++v37;
            v35 = v99;
            goto LABEL_94;
          }

          v38 = *(a1 + 40);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v44 = &v98[24 * v37];
            v45 = *(v44 + 23);
            v46 = (v45 & 0x80u) != 0;
            if ((v45 & 0x80u) != 0)
            {
              v45 = *(v44 + 1);
            }

            if (v46)
            {
              v44 = *v44;
            }

            if (!v45)
            {
              v44 = "<invalid>";
            }

            *buf = 136315650;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = v44;
            _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "#D %s%s%s has label - cannot be deleted", buf, 0x20u);
          }

          p_data = &v99->__r_.__value_.__l.__data_;
          v35 = &v98[24 * v37];
          if (&v35[1] != v99)
          {
            do
            {
              std::string::operator=(v35, v35 + 1);
              ++v35;
            }

            while (&v35[1] != p_data);
            p_data = &v99->__r_.__value_.__l.__data_;
          }

          while (p_data != v35)
          {
            v40 = *(p_data - 1);
            p_data -= 3;
            if (v40 < 0)
            {
              operator delete(*p_data);
            }
          }
        }

        else
        {
          (*(**(a1 + 120) + 112))(*(a1 + 120), &v98[24 * v37]);
          v41 = &v99->__r_.__value_.__l.__data_;
          v35 = &v98[24 * v37];
          if (&v35[1] != v99)
          {
            do
            {
              std::string::operator=(v35, v35 + 1);
              ++v35;
            }

            while (&v35[1] != v41);
            v41 = &v99->__r_.__value_.__l.__data_;
          }

          while (v41 != v35)
          {
            v42 = *(v41 - 1);
            v41 -= 3;
            if (v42 < 0)
            {
              operator delete(*v41);
            }
          }
        }

        v99 = v35;
LABEL_94:
        v36 = v98;
        v43 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v98) >> 3);
        if (v37 >= v43)
        {
          goto LABEL_105;
        }
      }
    }

    v43 = 0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3);
LABEL_105:
    if (v43 > 5)
    {
      v96 = 0;
      v97 = 0uLL;
      if (v36 == v35)
      {
        v70 = 0;
        v69 = 0;
      }

      else
      {
        do
        {
          cf = 0;
          (*(**(a1 + 120) + 24))(&cf);
          v47 = cf;
          if (cf)
          {
            *buf = 0;
            v48 = CFGetTypeID(cf);
            if (v48 == CFNumberGetTypeID())
            {
              ctu::cf::assign(buf, v47, v49);
            }

            v50 = *buf;
          }

          else
          {
            v50 = 0;
          }

          if (v36[23] < 0)
          {
            sub_100005F2C(v92, *v36, *(v36 + 1));
          }

          else
          {
            v51 = *v36;
            v93 = *(v36 + 2);
            *v92 = v51;
          }

          v94 = v50;
          v52 = v97;
          if (v97 >= *(&v97 + 1))
          {
            v54 = (v97 - v96) >> 5;
            if ((v54 + 1) >> 59)
            {
              sub_1000CE3D4();
            }

            v55 = (*(&v97 + 1) - v96) >> 4;
            if (v55 <= v54 + 1)
            {
              v55 = v54 + 1;
            }

            if (*(&v97 + 1) - v96 >= 0x7FFFFFFFFFFFFFE0uLL)
            {
              v56 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v55;
            }

            v107[0] = &v96;
            if (v56)
            {
              if (!(v56 >> 59))
              {
                operator new();
              }

              sub_100013D10();
            }

            *buf = 0;
            *&buf[8] = 32 * v54;
            *&buf[16] = 32 * v54;
            *&buf[24] = 0;
            if (SHIBYTE(v93) < 0)
            {
              sub_100005F2C((32 * v54), v92[0], v92[1]);
              v58 = *&buf[8];
              v59 = *&buf[16];
            }

            else
            {
              *(32 * v54) = *v92;
              *(32 * v54 + 0x10) = v93;
              v58 = 32 * v54;
              v59 = 32 * v54;
            }

            *(32 * v54 + 0x18) = v94;
            *&buf[16] = v59 + 32;
            v60 = v96;
            v61 = v97;
            __p[0] = &v96;
            __p[1] = &v104;
            v102 = &v105;
            v103 = 0;
            v62 = v96;
            v63 = &v96[v58 - v97];
            v104 = v63;
            v105 = v63;
            v64 = v63;
            if (v96 == v97)
            {
              LOBYTE(v103) = 1;
            }

            else
            {
              do
              {
                if (v62[23] < 0)
                {
                  sub_100005F2C(v64, *v62, *(v62 + 1));
                  v66 = v105;
                }

                else
                {
                  v65 = *v62;
                  *(v64 + 2) = *(v62 + 2);
                  *v64 = v65;
                  v66 = v64;
                }

                *(v64 + 3) = *(v62 + 3);
                v62 += 32;
                v64 = v66 + 32;
                v105 = v66 + 32;
              }

              while (v62 != v61);
              LOBYTE(v103) = 1;
              do
              {
                if (*(v60 + 23) < 0)
                {
                  operator delete(*v60);
                }

                v60 += 4;
              }

              while (v60 != v61);
            }

            sub_100F14C18(__p);
            v67 = v96;
            v68 = *(&v97 + 1);
            v96 = v63;
            v84 = *&buf[16];
            v97 = *&buf[16];
            *&buf[16] = v67;
            *&buf[24] = v68;
            *buf = v67;
            *&buf[8] = v67;
            sub_10003D0D4(buf);
            v57 = v84;
          }

          else
          {
            if (SHIBYTE(v93) < 0)
            {
              sub_100005F2C(v97, v92[0], v92[1]);
            }

            else
            {
              v53 = *v92;
              *(v97 + 16) = v93;
              *v52 = v53;
            }

            *(v52 + 24) = v94;
            v57 = v52 + 32;
          }

          *&v97 = v57;
          if (SHIBYTE(v93) < 0)
          {
            operator delete(v92[0]);
          }

          sub_10000A1EC(&cf);
          v36 += 24;
        }

        while (v36 != v35);
        v69 = v96;
        v70 = v97;
      }

      v71 = 126 - 2 * __clz((v70 - v69) >> 5);
      if (v70 == v69)
      {
        v72 = 0;
      }

      else
      {
        v72 = v71;
      }

      sub_1013B0B30(v69, v70, v72, 1);
      v73 = *(a1 + 40);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 1024;
        *&buf[24] = ((v97 - v96) >> 5) - 5;
        _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "#D %s%sSuppose to delete %d wallets", buf, 0x1Cu);
      }

      v74 = v96;
      if (v97 - v96 >= 0xA1uLL)
      {
        do
        {
          v75 = *(a1 + 40);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v78 = *(v74 + 20);
            v77 = v74 + 160;
            v76 = v78;
            v79 = v77[23];
            v80 = v79;
            if ((v79 & 0x80u) != 0)
            {
              v79 = *(v77 + 1);
            }

            if (v80 >= 0)
            {
              v76 = v77;
            }

            if (!v79)
            {
              v76 = "<invalid>";
            }

            *buf = 136315650;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = v76;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving outdated personality for %s", buf, 0x20u);
            v74 = v96;
          }

          (*(**(a1 + 120) + 112))(*(a1 + 120), v74 + 160);
          v81 = v97;
          v82 = (v96 + 160);
          if (v96 + 192 != v97)
          {
            do
            {
              std::string::operator=(v82, (v82 + 4));
              v82[3] = v82[7];
              v82 += 4;
            }

            while (v82 + 4 != v81);
            v81 = v97;
          }

          while (v81 != v82)
          {
            v83 = *(v81 - 9);
            v81 -= 4;
            if (v83 < 0)
            {
              operator delete(*v81);
            }
          }

          *&v97 = v82;
          v74 = v96;
        }

        while ((v82 - v96) > 0xA0);
      }

      *buf = &v96;
      sub_1013B1CC4(buf);
    }

    *buf = &v98;
    sub_10005AAF8(buf);
    sub_100029A48(&v89);
    sub_1000279DC(&v90);
    sub_1000279DC(&theArray);
  }

  sub_101393BA4(a1, 0);
}

void sub_10139909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, __int16 *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  a45 = &a37;
  sub_1013B1CC4(&a45);
  a45 = &a42;
  sub_10005AAF8(&a45);
  sub_100029A48(&a24);
  sub_1000279DC(&a25);
  sub_1000279DC(&a26);
  _Unwind_Resume(a1);
}

void sub_101399254(void *a1)
{
  v44 = 0;
  v45 = 0;
  v43 = &v44;
  v2 = a1[82];
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v5 = a1 + 111;
    v6 = a1 + 117;
    do
    {
      if (!*(*v3 + 49) && !sub_101392780(v3))
      {
        subscriber::simSlotAsInstance();
        if (subscriber::isSimInserted())
        {
          if (v5 == sub_100007A6C((a1 + 110), (*v3 + 24)) && v6 == sub_100007A6C((a1 + 116), (*v3 + 24)))
          {
            sub_1013B731C(&v43, (*v3 + 24), *v3 + 24);
          }
        }
      }

      v3 += 16;
    }

    while (v3 != v4);
    if (v45)
    {
      sub_1013A6030(&v31, a1, &v43);
      if (v42 < 0)
      {
        operator delete(__p);
      }

      if (v40 < 0)
      {
        operator delete(v39);
      }

      if (v38 < 0)
      {
        operator delete(v37);
      }

      if (v36 < 0)
      {
        operator delete(v35);
      }

      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }
    }
  }

  if (!a1[63])
  {
    goto LABEL_66;
  }

  v29 = 0;
  v30[0] = 0;
  v30[1] = 0;
  sub_10139D0E0(&v29, a1);
  *v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  *v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  *v19 = 0u;
  *v20 = 0u;
  v7 = a1[82];
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    goto LABEL_52;
  }

  while (1)
  {
    if (*(*v8 + 49) || v30 == sub_100007A6C(&v29, (*v8 + 24)))
    {
      goto LABEL_26;
    }

    v10 = sub_100007A6C((a1 + 110), (*v8 + 24));
    if ((BYTE8(v28) & 1) == 0)
    {
      sub_100DFECD0(v19, v10 + 56);
      BYTE8(v28) = 1;
      goto LABEL_26;
    }

    if (SimLabel::sameLabelName())
    {
      break;
    }

LABEL_26:
    v8 += 16;
    if (v8 == v9)
    {
      goto LABEL_52;
    }
  }

  v11 = a1[61];
  if (v11 == (a1 + 62))
  {
    v12 = 1;
  }

  else
  {
    v12 = 1;
    do
    {
      v13 = sub_100007A6C((a1 + 110), v11 + 32);
      if (a1 + 111 != v13)
      {
        v12 &= *(v13 + 128);
      }

      v14 = *(v11 + 1);
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
          v15 = *(v11 + 2);
          v16 = *v15 == v11;
          v11 = v15;
        }

        while (!v16);
      }

      v11 = v15;
    }

    while (v15 != (a1 + 62));
  }

  v17 = a1[5];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sDuplicated label detected", buf, 0x16u);
  }

  if (v12)
  {
    v18 = a1[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sSIMs are marked as requiring label resolution", buf, 0x16u);
    }

    memset(buf, 0, sizeof(buf));
    sub_1013A8B10(a1, buf, 0);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_52:
  if (BYTE8(v28) == 1)
  {
    if (SBYTE7(v28) < 0)
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

    if (SBYTE7(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[1]);
    }

    if (SHIBYTE(v20[0]) < 0)
    {
      operator delete(v19[0]);
    }
  }

  sub_100009970(&v29, v30[0]);
LABEL_66:
  sub_10139C67C(a1, "label evaluation", 0);
  sub_100009970(&v43, v44);
}

void sub_10139969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31)
{
  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  sub_100A7B058(&a9);
  sub_100009970(&a30, a31);
  sub_100009970(v31 - 120, *(v31 - 112));
  _Unwind_Resume(a1);
}

void sub_101399700(void *a1, uint64_t a2)
{
  v4 = a1[109];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  LOBYTE(v26) = *(a2 + 24);
  v5 = *(a2 + 40);
  *&v28[2] = *(a2 + 32);
  *&v28[10] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[106];
  v7 = a1[105];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 85 * (v6 - v7) - 1;
  }

  v9 = a1[108];
  if (v8 == a1[109] + v9)
  {
    v10 = v9 >= 0x55;
    v11 = v9 - 85;
    if (!v10)
    {
      v12 = a1[107];
      v13 = a1[104];
      if (v6 - v7 < (v12 - v13))
      {
        operator new();
      }

      if (v12 == v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = (v12 - v13) >> 2;
      }

      sub_100EF4E80(v14);
    }

    a1[108] = v11;
    v23[0] = *v7;
    a1[105] = v7 + 1;
    sub_1010F098C(a1 + 104, v23);
    v7 = a1[105];
    v6 = a1[106];
  }

  if (v6 == v7)
  {
    v16 = 0;
  }

  else
  {
    v15 = a1[109] + a1[108];
    v16 = v7[v15 / 0x55] + 48 * (v15 % 0x55);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    sub_100005F2C(v16, *__p, *&__p[8]);
  }

  else
  {
    v17 = *__p;
    *(v16 + 16) = *&__p[16];
    *v16 = v17;
  }

  *(v16 + 24) = v26;
  *(v16 + 32) = *&v28[2];
  *&v28[2] = 0uLL;
  ++a1[109];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v4)
    {
LABEL_29:
      v18 = a1[5];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a2 + 32);
        v20 = *(v19 + 14);
        v21 = PersonalityInfo::logPrefix(v19);
        asString();
        v22 = v24 >= 0 ? v23 : v23[0];
        *__p = 136316162;
        *&__p[4] = "";
        *&__p[12] = 2080;
        *&__p[14] = "";
        *&__p[22] = 1024;
        v26 = v20;
        v27 = 2080;
        *v28 = v21;
        *&v28[8] = 2080;
        *&v28[10] = v22;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#D %s%sdirect event push: [%d] %s %s", __p, 0x30u);
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      sub_10139DD40(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_29;
  }
}

void sub_101399D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  operator delete(v13);
  if (v12)
  {
    operator delete(v12);
  }

  sub_101393148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101399DB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 != 3)
  {
    goto LABEL_19;
  }

  v3 = *(a1 + 656);
  v4 = *v3;
  v5 = v3[1];
  if (v4 != v5)
  {
    while (*(*v4 + 49) || *(*v4 + 52) != a2)
    {
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  if (v4 != v5 && (v6 = *v4, *(*v4 + 48) == 1))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v6 + 24);
      v9 = v6 + 24;
      v8 = v10;
      v11 = *(v9 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v9 + 8);
      }

      if (v12 >= 0)
      {
        v8 = v9;
      }

      if (v11)
      {
        v13 = v8;
      }

      else
      {
        v13 = "<invalid>";
      }

      v15 = 136315906;
      v16 = "";
      v17 = 2080;
      v18 = "";
      v19 = 2080;
      v20 = v13;
      v21 = 2080;
      v22 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sSIM %s in slot %s was reported Locked being previously Ready -> suppress like a glitch", &v15, 0x2Au);
    }

    return 0;
  }

  else
  {
LABEL_19:

    return subscriber::isSimSettled();
  }
}

uint64_t sub_101399F4C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 448);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v3 + 52);
  v6 = a1 + 448;
  do
  {
    if (*(v4 + 32) >= v5)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v5));
  }

  while (v4);
  if (v6 != a1 + 448 && v5 >= *(v6 + 32))
  {
    v7 = sub_100071DF8((v6 + 40), (v3 + 24));
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  return (*(*(a1 + 344) + 4 * subscriber::simSlotAsInstance()) == 5) & v7;
}

_OWORD *sub_101399FF4(_OWORD *__dst, uint64_t a2, void *a3)
{
  v5 = __dst;
  if (*(a2 + 23) < 0)
  {
    __dst = sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    *(__dst + 2) = *(a2 + 16);
  }

  *(v5 + 24) = *(a2 + 24);
  v6 = a3[1];
  *(v5 + 4) = *a3;
  *(v5 + 5) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_10139A06C(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  if (!a2[1])
  {
    if (*a2)
    {
      v4 = *(a2 + 1);
      v5 = *(a2 + 2);
      v6 = (v5 - v4);
      if (v5 != v4)
      {
        v12[0] = 0;
        v12[1] = 0;
        v13 = 0;
        subscriber::sDecodeIccid(v4, v6, a3);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }

        return;
      }

      v11 = *(a1 + 40);
      if (!os_log_type_enabled(v11, v6))
      {
        return;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v15 = 2080;
      v16 = subscriber::asString();
      v8 = "#W %s%shandleSimFileEvent received with ICCID / slot:%s but without empty fData";
      v9 = v11;
      v10 = 32;
    }

    else
    {
      v7 = *(a1 + 40);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v8 = "#W %s%shandleSimFileEvent received with ICCID but without slot";
      v9 = v7;
      v10 = 22;
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
  }
}

void sub_10139A6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139A758(uint64_t a1)
{
  v2 = *(a1 + 656);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    while (*(*v3 + 49) || *(*v3 + 52) != 1)
    {
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_9:
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (*(a1 + 336) == 1)
  {
    v7 = (a1 + 312);
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    if (*(a1 + 335) < 0)
    {
      sub_100005F2C(__p, *(a1 + 312), *(a1 + 320));
    }

    else
    {
      *__p = *v7;
      v13 = *(a1 + 328);
    }

    if (!v6 || !sub_100071DF8((v6 + 24), __p) || (*(v6 + 48) & 1) == 0)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 335) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSimulating SIM personality for carrierID based configuration: %s", buf, 0x20u);
      }

      memset(buf, 0, sizeof(buf));
      if (sub_1013959C0(a1, 1, __p, 5u, 2, 0, 256, buf))
      {
        sub_101398148(a1, "simulateCarrierIDBasedPersonalityIfMissing", 1);
      }

      sub_101399254(a1);
      v9 = *buf;
      if (*&buf[8] != *buf)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          sub_101399700(a1, v9 + v10);
          ++v11;
          v9 = *buf;
          v10 += 48;
        }

        while (v11 < 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 4));
      }

      v14 = buf;
      sub_1013B1D50(&v14);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10139A9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139A9F0(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v84 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleVinylInfoChanged: %s", buf, 0x20u);
  }

  v5 = *(a1 + 160);
  v64 = *(a1 + 168);
  if (v64 == v5)
  {
    v63 = *(a1 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%sIncomplete vinyl info", buf, 0x16u);
    }
  }

  else
  {
    v66 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v78[0] = a1;
    v78[1] = &v82;
    v77[0] = 0;
    v77[1] = 0;
    v76 = v77;
    do
    {
      v65 = v5;
      if (*(v5 + 80) == 1)
      {
        v7 = *(v5 + 56);
        v6 = *(v5 + 64);
        while (v7 != v6)
        {
          cf[0] = 0;
          cf[1] = 0;
          v72 = 0;
          if (*(v7 + 39) < 0)
          {
            sub_100005F2C(cf, *(v7 + 16), *(v7 + 24));
          }

          else
          {
            *cf = *(v7 + 16);
            v72 = *(v7 + 32);
          }

          v8 = *(a1 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = HIBYTE(v72);
            v10 = cf[0];
            v11 = cf[1];
            v12 = asString();
            *buf = 136315906;
            if (v9 >= 0)
            {
              v13 = v9;
            }

            else
            {
              v13 = v11;
            }

            *&buf[4] = "";
            v14 = cf;
            if (v9 < 0)
            {
              v14 = v10;
            }

            v15 = v13 == 0;
            *&buf[12] = 2080;
            v16 = "<invalid>";
            if (!v15)
            {
              v16 = v14;
            }

            *&buf[14] = "";
            *&buf[22] = 2080;
            v84 = v16;
            v85 = 2080;
            v86 = v12;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVinyl state: %s: %s", buf, 0x2Au);
          }

          (*(**(a1 + 120) + 88))(*(a1 + 120), cf);
          theString1[0] = 0;
          (*(**(a1 + 120) + 24))(buf);
          sub_100060DE8(theString1, buf);
          sub_10000A1EC(buf);
          if (!theString1[0] || CFStringCompare(theString1[0], @"sim", 0))
          {
            v17 = *(a1 + 40);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = HIBYTE(v72);
              if (v72 < 0)
              {
                v18 = cf[1];
              }

              v19 = cf;
              if (v72 < 0)
              {
                v19 = cf[0];
              }

              v15 = v18 == 0;
              v20 = "<invalid>";
              if (!v15)
              {
                v20 = v19;
              }

              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              v84 = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%smarking %s as SIM type", buf, 0x20u);
            }

            (*(**(a1 + 120) + 16))(*(a1 + 120), cf, @"type", @"sim", @"info", 0, 0, 0);
          }

          (*(**(a1 + 120) + 24))(buf);
          v21 = *buf;
          LOBYTE(__p[0]) = 0;
          if (*buf)
          {
            v22 = CFGetTypeID(*buf);
            if (v22 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(__p, v21, v23);
            }
          }

          v24 = __p[0];
          sub_10000A1EC(buf);
          if ((v24 & 1) == 0)
          {
            v25 = *(a1 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = HIBYTE(v72);
              if (v72 < 0)
              {
                v26 = cf[1];
              }

              v27 = cf;
              if (v72 < 0)
              {
                v27 = cf[0];
              }

              v15 = v26 == 0;
              v28 = "<invalid>";
              if (!v15)
              {
                v28 = v27;
              }

              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              v84 = v28;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%smarking %s as eSIM", buf, 0x20u);
            }

            (*(**(a1 + 120) + 16))(*(a1 + 120), cf, @"esim", kCFBooleanTrue, @"info", 0, 0, 0);
            v89[0] = off_101F33908;
            v89[3] = v89;
            sub_10139BBCC(v78, cf, v89);
            sub_1013B753C(v89);
          }

          if (*(v7 + 89) == 1)
          {
            (*(**(a1 + 120) + 24))(buf);
            v29 = *buf;
            LOBYTE(__p[0]) = 0;
            if (*buf)
            {
              v30 = CFGetTypeID(*buf);
              if (v30 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(__p, v29, v31);
              }
            }

            v32 = __p[0];
            sub_10000A1EC(buf);
            if ((v32 & 1) == 0)
            {
              v33 = *(a1 + 40);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = HIBYTE(v72);
                if (v72 < 0)
                {
                  v34 = cf[1];
                }

                v35 = cf;
                if (v72 < 0)
                {
                  v35 = cf[0];
                }

                v15 = v34 == 0;
                v36 = "<invalid>";
                if (!v15)
                {
                  v36 = v35;
                }

                *buf = 136315906;
                *&buf[4] = "";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                v84 = v36;
                v85 = 2080;
                v86 = "Provisioning";
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%smarking %s as %s", buf, 0x2Au);
              }

              (*(**(a1 + 120) + 16))(*(a1 + 120), cf, @"provisioning", kCFBooleanTrue, @"info", 0, 0, 0);
              v88[0] = off_101F33998;
              v88[3] = v88;
              sub_10139BBCC(v78, cf, v88);
              sub_1013B753C(v88);
              v66 |= sub_10139BCF4(a1, cf, "Provisioning", qword_101FCA9A8, @"labeled bootstrap sim");
            }
          }

          (*(**(a1 + 120) + 24))(buf);
          v37 = *buf;
          LOBYTE(__p[0]) = 0;
          if (*buf)
          {
            v38 = CFGetTypeID(*buf);
            if (v38 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(__p, v37, v39);
            }
          }

          v40 = LOBYTE(__p[0]);
          sub_10000A1EC(buf);
          if (v40 == 1)
          {
            (*(**(a1 + 120) + 32))(*(a1 + 120), cf, @"no_src", @"info", 0, 0);
            v87[0] = off_101F33A18;
            v87[3] = v87;
            sub_10139BBCC(v78, cf, v87);
            sub_1013B753C(v87);
          }

          if (*(v7 + 39) < 0)
          {
            sub_100005F2C(__p, *(v7 + 16), *(v7 + 24));
          }

          else
          {
            *__p = *(v7 + 16);
            v69 = *(v7 + 32);
          }

          v73 = 0;
          if (!*sub_100005C2C(&v76, &v73, __p))
          {
            memset(buf, 0, sizeof(buf));
            sub_1013B7784();
          }

          if (SHIBYTE(v69) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100005978(theString1);
          if (SHIBYTE(v72) < 0)
          {
            operator delete(cf[0]);
          }

          v7 += 216;
        }
      }

      v5 = v65 + 88;
    }

    while (v65 + 88 != v64);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    (*(**(a1 + 120) + 80))(&v73);
    v41 = v73;
    v42 = v74;
    if (v73 != v74)
    {
      v43 = (a1 + 656);
      do
      {
        (*(**(a1 + 120) + 24))(buf);
        v44 = *buf;
        LOBYTE(__p[0]) = 0;
        if (*buf)
        {
          v45 = CFGetTypeID(*buf);
          if (v45 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(__p, v44, v46);
          }
        }

        v47 = LOBYTE(__p[0]);
        sub_10000A1EC(buf);
        if (v47 == 1 && v77 == sub_100007A6C(&v76, v41))
        {
          (*(**(a1 + 120) + 24))(buf);
          v48 = *buf;
          LOBYTE(__p[0]) = 0;
          if (*buf)
          {
            v49 = CFGetTypeID(*buf);
            if (v49 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(__p, v48, v50);
            }
          }

          v51 = __p[0];
          sub_10000A1EC(buf);
          if ((v51 & 1) == 0)
          {
            v52 = *(a1 + 40);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v41[23];
              v54 = (v53 & 0x80u) != 0;
              if ((v53 & 0x80u) != 0)
              {
                v53 = *(v41 + 1);
              }

              if (v54)
              {
                v55 = *v41;
              }

              else
              {
                v55 = v41;
              }

              v15 = v53 == 0;
              v56 = "<invalid>";
              if (!v15)
              {
                v56 = v55;
              }

              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              v84 = v56;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s%sDetected deleted eSIM: %s", buf, 0x20u);
            }

            (*(**(a1 + 120) + 16))(*(a1 + 120), v41, @"no_src", kCFBooleanTrue, @"info", 0, 0, 0);
            v57 = **v43;
            v58 = (*v43)[1];
            if (v57 != v58)
            {
              do
              {
                if (sub_100071DF8((*v57 + 24), v41))
                {
                  goto LABEL_98;
                }

                v57 += 16;
              }

              while (v57 != v58);
              v57 = v58;
LABEL_98:
              v58 = (*v43)[1];
            }

            if (v57 != v58)
            {
              *buf = v57;
              sub_10139C06C(a1, buf, (a1 + 656), &v79);
            }

            if (v41[23] < 0)
            {
              sub_100005F2C(__p, *v41, *(v41 + 1));
            }

            else
            {
              v59 = *v41;
              v69 = *(v41 + 2);
              *__p = v59;
            }

            v70 = 7;
            sub_101391C0C(theString1, a1, v41, 0, 1);
          }
        }

        v41 += 24;
      }

      while (v41 != v42);
    }

    if (v82)
    {
      sub_101398148(a1, "handleVinylInfoChanged", 1);
    }

    if (v66)
    {
      sub_10139C67C(a1, "vinyl correction", 0);
    }

    v60 = v79;
    if (v80 != v79)
    {
      v61 = 0;
      v62 = 0;
      do
      {
        sub_101399700(a1, &v60[v61]);
        ++v62;
        v60 = v79;
        v61 += 48;
      }

      while (v62 < 0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 4));
    }

    *buf = &v73;
    sub_10005AAF8(buf);
    sub_100009970(&v76, v77[0]);
    *buf = &v79;
    sub_1013B1D50(buf);
  }
}

void sub_10139BA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_101393148(&a28);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  *(v45 - 256) = &a37;
  sub_10005AAF8((v45 - 256));
  sub_100009970(&a40, a41);
  a28 = &a45;
  sub_1013B1D50(&a28);
  _Unwind_Resume(a1);
}

void sub_10139BBCC(_BYTE **a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 82);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    while (!sub_100071DF8((*v5 + 24), a2))
    {
      v5 += 16;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = *(v3[82] + 8);
  }

  if (v5 != v6)
  {
    v8 = 0;
    v9 = 0;
    sub_1004CA38C();
  }
}

void sub_10139BCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10139BCF4(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, const void *a5)
{
  v10 = (a1 + 880);
  v11 = sub_100007A6C(a1 + 880, a2);
  v12 = v11;
  v13 = (a1 + 888);
  if (a1 + 888 != v11)
  {
    if (*(a1 + 896) != 1)
    {
      __p = 0uLL;
      v40 = 0;
      if (*(v11 + 127) < 0)
      {
        sub_100005F2C(&__p, *(v11 + 104), *(v11 + 112));
      }

      else
      {
        __p = *(v11 + 104);
        v40 = *(v11 + 120);
      }

      memset(&v42, 0, sizeof(v42));
      v14 = *v10;
      v26 = a4;
      if (*v10 != v13)
      {
        if (v40 >= 0)
        {
          v15 = HIBYTE(v40);
        }

        else
        {
          v15 = *(&__p + 1);
        }

        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        while (1)
        {
          v17 = *(v14 + 127);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = v14[14];
          }

          if (v17 != v15)
          {
            break;
          }

          v19 = v18 >= 0 ? v14 + 13 : v14[13];
          if (memcmp(v19, p_p, v15))
          {
            break;
          }

          v20 = v14[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v14[2];
              v22 = *v21 == v14;
              v14 = v21;
            }

            while (!v22);
          }

          v14 = v21;
          if (v21 == v13)
          {
            goto LABEL_29;
          }
        }
      }

      if (v14 != v13)
      {
        std::string::operator=(&v42, (v14 + 13));
      }

LABEL_29:
      sub_1013B7834(v10, a2);
      a4 = v26;
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v42.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        sub_1013AB290(a1, &__p, &v42, a5);
        v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
      }

      if (v24 < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }
    }

    (*(**(a1 + 120) + 32))(*(a1 + 120), a2, @"label-id", @"info", 0, 0);
    (*(**(a1 + 120) + 32))(*(a1 + 120), a2, @"label-id-confirmed", @"info", 0, 0);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__p, *a2, *(a2 + 1));
    }

    else
    {
      __p = *a2;
      v40 = *(a2 + 2);
    }

    v41 = 1;
    sub_1013A5D7C(a1, &__p);
    if (v41 == 1 && SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }

    sub_1013A8F04(&__dst, a1, a2, a3, a4);
    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

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
      operator delete(__dst);
    }
  }

  return v13 != v12;
}