const void **sub_1003F4FE4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

const void **sub_1003F505C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

void *sub_1003F50D4(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_1003F510C(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_1003F5164(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100029A48(&v5);
  }

  return a1;
}

const void **sub_1003F5164(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

__n128 sub_1003F5210(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1003F5240(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  result = sub_100070C90(*(a1 + 8), *a2);
  if (result)
  {
    if (v3 - 10 < 0xD || (v3 <= 8 ? (v5 = ((1 << v3) & 0x1CC) == 0) : (v5 = 1), !v5))
    {
      ***(a1 + 16) = 1;
    }
  }

  return result;
}

uint64_t sub_1003F52AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003F52F8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v24 = 0;
  v25 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 2), &v24);
  v3 = v24;
  if (!v24)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v2 + 88));
      v7 = sub_1000710D4(1);
      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }

LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  if ((*(*v24 + 376))(v24, 1, 1))
  {
    v4 = 1;
LABEL_23:
    v21 = ***(v2 + 88);
    if (*(v21 + 47) < 0)
    {
      sub_100005F2C(buf, *(v21 + 24), *(v21 + 32));
    }

    else
    {
      *buf = *(v21 + 24);
      *&buf[16] = *(v21 + 40);
    }

    v22 = 0;
    v23 = 0;
    sub_1003F5784(&event::entitlements::set_entitlement_result, buf, v4, &v22);
    if (v23)
    {
      sub_100004A34(v23);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_30;
  }

  v8 = 0;
  while (1)
  {
    v9 = 1 << v8;
    if ((v1[2] & (1 << v8)) != 0)
    {
      if ((*(v2 + 192) & v9) == 0)
      {
        v15 = *(v2 + 40);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v16 = PersonalityInfo::logPrefix(***(v2 + 88));
        v17 = sub_10006EE44(v8);
        *buf = 136315650;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v27 = v17;
        v13 = v15;
        v14 = "#I %s%sIgnoring %s entitlement for 'set entitlement' - not supported";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
        goto LABEL_18;
      }

      if ((sub_100070C90(v2, v8) & 1) == 0)
      {
        v18 = *(v2 + 40);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v19 = PersonalityInfo::logPrefix(***(v2 + 88));
        v20 = sub_10006EE44(v8);
        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v27 = v20;
        v13 = v18;
        v14 = "#I %s%sIgnoring %s entitlement for 'set entitlement' - not activated yet";
        goto LABEL_17;
      }

      if ((v8 & 0x1E) != 6)
      {
        v10 = *(v2 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v2 + 88));
          v12 = sub_10006EE44(v8);
          *buf = 136315650;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v27 = v12;
          v13 = v10;
          v14 = "#I %s%sIgnoring %s entitlement for 'set entitlement' - not applicable";
          goto LABEL_17;
        }

LABEL_18:
        v1[2] &= ~v9;
      }
    }

    if (++v8 == 23)
    {
      if ((v1[2] & 0x7FFFFF) == 0 || ((*(*v3 + 32))(v3, v1 + 2) & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      if (v25)
      {
        sub_100004A34(v25);
      }

      operator delete();
    }
  }
}

void sub_1003F5708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  operator delete();
}

void sub_1003F5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F58A4((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F5AE8(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F5868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F58A4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F5AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_1002B8AC0((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F5B74(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F5B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F5B74(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27[0] = 0;
  v27[1] = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_1002B90F8(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = *v27;
  v27[0] = v9;
  v27[1] = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_1002B8D90(v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_1002BA07C(v12);
  v13 = sub_1002B8D90(v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_1002B8D90(v27);
  v16 = *(sub_1002BA07C(v15) + 8);
  v17 = sub_1002B8D90(v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_1002BA07C(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003F5FEC(&v24);
  v18 = sub_1002B8D90(v27);
  v19 = sub_1002BA07C(v18);
  v20 = sub_1002B8D90(v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_1002BA07C(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003F5FEC(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003F5DF8(v14, v30, v29);
  sub_1003F63B4(v26);
  sub_1003F6598(&v31);
  return sub_10004A724(&v27[1]);
}

void sub_1003F5DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003F5DF8(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003F5E80(a2);
    *a2 = *(*a2 + 8);
    sub_1003F5FEC(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003F5E80(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003F5F20((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003F5F20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002B8DD4(a2);
  v4 = sub_1002B982C((v3 + 32));
  sub_1003F5F70(&v5, (v4 + 24), a1);
}

void sub_1003F5F70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002BA6B0(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003F5FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F5FEC(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
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
      v3 = sub_1003F624C((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1002B8DD4((*result + 16));
      sub_1003F6290(v4, &v14, (result[2] + 8));
      v5 = sub_1002B8DD4((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_1002B8DD4((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
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
        v13 = sub_1003F624C((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003F6210(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F624C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003F6290(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1002B982C(result + 4); ; i += 6)
    {
      result = sub_1002B982C(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003F6390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_1003F63B4(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003F63F8(a1[1], a1[2]);
  }

  return a1;
}

void sub_1003F63F8(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1002B8D90(a1);
  if (sub_1002BA07C(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1002B8D90(a1);
    v8 = *(sub_1002BA07C(v7) + 8);
    sub_1002B8FE0(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003F6598(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003F6670(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003F6690(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v11 = 0;
  v12 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 2), &v11);
  v3 = v11;
  if (v11)
  {
    if ((*(*v11 + 376))(v11, 2, 0))
    {
      v4 = 1;
LABEL_9:
      v8 = ***(v2 + 88);
      if (*(v8 + 47) < 0)
      {
        sub_100005F2C(buf, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        *buf = *(v8 + 24);
        *&buf[16] = *(v8 + 40);
      }

      v9 = 0;
      v10 = 0;
      sub_1003F696C(&event::entitlements::get_provisioning_update, buf, v4, &v9);
      if (v10)
      {
        sub_100004A34(v10);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

LABEL_16:
      if (v12)
      {
        sub_100004A34(v12);
      }

      operator delete();
    }

    v9 = v1 + 2;
    v10 = v2;
    *buf = off_101E4A7B0;
    *&buf[8] = v2;
    *&buf[16] = &v9;
    v14 = buf;
    sub_1000700B8(buf);
    sub_100072048(buf);
    if (v1[2] & 0x7FFFFF) != 0 && ((*(*v3 + 40))(v3, v1 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v2 + 88));
      v7 = sub_1000710D4(2);
      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }
  }

  v4 = 0;
  goto LABEL_9;
}

void sub_1003F68F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_100072048(&__p);
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_1003F696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6CC0((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6F04(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F6A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003F6B00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A7B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1003F6B30(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (sub_100070C90(*(a1 + 8), *a2))
  {
    v4 = *(a1 + 16);
    if (v3 != 8 && (**v4 & (1 << v3)) != 0)
    {
      v6 = *(v4 + 8);
      v7 = *(v6 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(***(v6 + 88));
        v9 = 136315650;
        v10 = v8;
        v11 = 2080;
        v12 = " ";
        v13 = 2080;
        v14 = sub_10006EE44(v3);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sIgnoring %s entitlement for 'get provisioning'", &v9, 0x20u);
      }

      if (v3 >= 0x17)
      {
        sub_1000A58E4("bitset reset argument out of range");
      }

      **v4 &= ~(1 << v3);
    }
  }
}

uint64_t sub_1003F6C74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F6CC0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F6EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F6F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_1002250A8((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6F90(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F6F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F6F90(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27[0] = 0;
  v27[1] = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_1002256E0(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = *v27;
  v27[0] = v9;
  v27[1] = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100225378(v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_100226664(v12);
  v13 = sub_100225378(v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100225378(v27);
  v16 = *(sub_100226664(v15) + 8);
  v17 = sub_100225378(v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_100226664(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003F7408(&v24);
  v18 = sub_100225378(v27);
  v19 = sub_100226664(v18);
  v20 = sub_100225378(v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_100226664(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003F7408(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003F7214(v14, v30, v29);
  sub_1003F77D0(v26);
  sub_1003F79B4(&v31);
  return sub_10004A724(&v27[1]);
}

void sub_1003F71C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003F7214(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003F729C(a2);
    *a2 = *(*a2 + 8);
    sub_1003F7408(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003F729C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003F733C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003F733C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002253BC(a2);
  v4 = sub_100225E14((v3 + 32));
  sub_1003F738C(&v5, (v4 + 24), a1);
}

void sub_1003F738C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002269BC(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003F73F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F7408(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
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
      v3 = sub_1003F7668((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1002253BC((*result + 16));
      sub_1003F76AC(v4, &v14, (result[2] + 8));
      v5 = sub_1002253BC((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_1002253BC((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
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
        v13 = sub_1003F7668((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003F762C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F7668(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003F76AC(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100225E14(result + 4); ; i += 6)
    {
      result = sub_100225E14(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003F77AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_1003F77D0(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003F7814(a1[1], a1[2]);
  }

  return a1;
}

void sub_1003F7814(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100225378(a1);
  if (sub_100226664(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100225378(a1);
    v8 = *(sub_100226664(v7) + 8);
    sub_1002255C8(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003F79B4(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003F7A8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1003F7AAC(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 8), &v13);
  v3 = v13;
  if (!v13)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      v6 = sub_1000710D4(3);
      *buf = 136315650;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }

LABEL_8:
    v11 = 0;
    v12 = 0;
    LODWORD(v10) = 6005;
    sub_1003F7E34();
  }

  if ((*(*v13 + 376))(v13, 3, 1))
  {
    goto LABEL_8;
  }

  v11 = v1 + 16;
  v12 = v2;
  *buf = off_101E4A830;
  *&buf[8] = v2;
  *&buf[16] = &v11;
  v16 = buf;
  sub_1000700B8(buf);
  sub_100072048(buf);
  if (!*(v1 + 32) || ((*(*v3 + 48))(v3, v1 + 16) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1003F7DE0(&v9);
  return sub_1000049E0(&v8);
}

void sub_1003F7D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100072048(&__p);
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_1003F7DE0(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003F7DE0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10006EC28(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return a1;
}

void sub_1003F7F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1003F7F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F85A0((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F87E4(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F8030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003F80E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A830;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1003F8110(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = sub_100070C90(*(a1 + 8), *a2);
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *v5;
    v7 = *(*v5 + 8);
    if (v7)
    {
      v8 = v5[1];
      v9 = *v5 + 8;
      do
      {
        if (*(v7 + 32) >= v3)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v3));
      }

      while (v7);
      if (v9 != *v5 + 8 && v3 != 8 && *(v9 + 32) <= v3)
      {
        v10 = *(v8 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v8 + 88));
          v12 = 136315650;
          v13 = v11;
          v14 = 2080;
          v15 = " ";
          v16 = 2080;
          v17 = sub_10006EE44(v3);
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sIgnoring %s entitlement for 'set provisioning'", &v12, 0x20u);
          v6 = *v5;
        }

        v12 = v3;
        return sub_1002D749C(v6, &v12);
      }
    }
  }

  return result;
}

uint64_t sub_1003F826C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F832C(uint64_t a1, int *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E4A8B0;
  v4 = *a2;
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = v6;
  *(a1 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
  }

  return a1;
}

void sub_1003F83C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4A8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003F8420(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003F8470(uint64_t a1, int a2, uint64_t *a3)
{
  v8 = a2;
  v9 = &v8;
  v4 = sub_1002D750C(a1, &v8, &unk_101802C98, &v9);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003F8504(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4A900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003F8558(uint64_t a1)
{
  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_10006EC28(a1 + 24, v2);
}

uint64_t sub_1003F85A0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F87CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F87E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_100226F54((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F8870(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F8858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F8870(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27[0] = 0;
  v27[1] = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_10022758C(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = *v27;
  v27[0] = v9;
  v27[1] = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100227224(v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_100228510(v12);
  v13 = sub_100227224(v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100227224(v27);
  v16 = *(sub_100228510(v15) + 8);
  v17 = sub_100227224(v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_100228510(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003F8CE8(&v24);
  v18 = sub_100227224(v27);
  v19 = sub_100228510(v18);
  v20 = sub_100227224(v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_100228510(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003F8CE8(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003F8AF4(v14, v30, v29);
  sub_1003F90B0(v26);
  sub_1003F9294(&v31);
  return sub_10004A724(&v27[1]);
}

void sub_1003F8AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003F8AF4(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003F8B7C(a2);
    *a2 = *(*a2 + 8);
    sub_1003F8CE8(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003F8B7C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003F8C1C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003F8C1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100227268(a2);
  v4 = sub_100227CC0((v3 + 32));
  sub_1003F8C6C(&v5, (v4 + 24), a1);
}

void sub_1003F8C6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100228868(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003F8CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F8CE8(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
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
      v3 = sub_1003F8F48((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100227268((*result + 16));
      sub_1003F8F8C(v4, &v14, (result[2] + 8));
      v5 = sub_100227268((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_100227268((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
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
        v13 = sub_1003F8F48((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003F8F0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F8F48(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003F8F8C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100227CC0(result + 4); ; i += 6)
    {
      result = sub_100227CC0(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003F908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_1003F90B0(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003F90F4(a1[1], a1[2]);
  }

  return a1;
}

void sub_1003F90F4(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100227224(a1);
  if (sub_100228510(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100227224(a1);
    v8 = *(sub_100228510(v7) + 8);
    sub_100227474(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003F9294(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003F936C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003F93AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4A950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1003F9400(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v26 = 0;
  v27 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 8), &v26);
  v3 = v26;
  if (!v26)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v2 + 88));
      v7 = sub_1000710D4(4);
      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ((*(*v26 + 376))(v26, 4, *(v1 + 12)))
  {
    v4 = 1;
LABEL_22:
    v16 = ***(v2 + 88);
    if (*(v16 + 47) < 0)
    {
      sub_100005F2C(buf, *(v16 + 24), *(v16 + 32));
    }

    else
    {
      *buf = *(v16 + 24);
      *&buf[16] = *(v16 + 40);
    }

    v22 = 0;
    v23 = 0;
    sub_1003F987C(&event::entitlements::psas_updated, buf, v4, &v22);
    if (v23)
    {
      sub_100004A34(v23);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_29;
  }

  v25 = 0;
  v22 = (v1 + 80);
  v23 = &v25;
  *buf = off_101E4A9A0;
  *&buf[8] = v2;
  *&buf[16] = &v22;
  v29 = buf;
  sub_1000700B8(buf);
  sub_100072048(buf);
  v8 = *(v2 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(v2 + 88));
    sub_100A4193C(v1 + 32, &v22);
    v10 = v24;
    v11 = v22;
    sub_100072374(&v25, __p);
    v12 = &v22;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v29 = v12;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetRegisteredLocationStatus: %s, %s", buf, 0x2Au);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }
  }

  v14 = *(v1 + 24);
  *buf = *(v1 + 16);
  *&buf[8] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = (*(*v3 + 56))(v3, buf, v1 + 32, &v25);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((v15 & 1) == 0)
  {
LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

LABEL_29:
  if (v27)
  {
    sub_100004A34(v27);
  }

  sub_1003F9808(&v19);
  return sub_1000049E0(&v18);
}

void sub_1003F976C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  sub_1003F9808(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003F9808(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1003F987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9B00((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9D44(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F9960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003F9A10(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A9A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1003F9A40(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  result = sub_100070C90(*(a1 + 8), *a2);
  if (result)
  {
    v5 = *(a1 + 16);
    if ((**v5 & (1 << v3)) != 0)
    {
      if (v3 >= 0x17)
      {
        sub_1000A58E4("bitset set argument out of range");
      }

      *v5[1] |= 1 << v3;
    }
  }

  return result;
}

uint64_t sub_1003F9AB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F9B00(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F9D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F9D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v7 = sub_100352360((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9DD0(v7, a2, v5, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F9DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F9DD0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27[0] = 0;
  v27[1] = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_100352998(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = *v27;
  v27[0] = v9;
  v27[1] = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100352630(v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_10035391C(v12);
  v13 = sub_100352630(v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100352630(v27);
  v16 = *(sub_10035391C(v15) + 8);
  v17 = sub_100352630(v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_10035391C(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003FA248(&v24);
  v18 = sub_100352630(v27);
  v19 = sub_10035391C(v18);
  v20 = sub_100352630(v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_10035391C(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003FA248(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003FA054(v14, v30, v29);
  sub_1003FA610(v26);
  sub_1003FA7F4(&v31);
  return sub_10004A724(&v27[1]);
}

void sub_1003FA000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003FA054(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003FA0DC(a2);
    *a2 = *(*a2 + 8);
    sub_1003FA248(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003FA0DC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003FA17C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003FA17C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100352674(a2);
  v4 = sub_1003530CC((v3 + 32));
  sub_1003FA1CC(&v5, (v4 + 24), a1);
}

void sub_1003FA1CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100353F50(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003FA230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003FA248(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
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
      v3 = sub_1003FA4A8((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100352674((*result + 16));
      sub_1003FA4EC(v4, &v14, (result[2] + 8));
      v5 = sub_100352674((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_100352674((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
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
        v13 = sub_1003FA4A8((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003FA46C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FA4A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003FA4EC(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1003530CC(result + 4); ; i += 6)
    {
      result = sub_1003530CC(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003FA5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_1003FA610(void *a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003FA654(a1[1], a1[2]);
  }

  return a1;
}

void sub_1003FA654(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100352630(a1);
  if (sub_10035391C(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100352630(a1);
    v8 = *(sub_10035391C(v7) + 8);
    sub_100352880(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003FA7F4(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003FA8CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1003FA8EC(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v3 = *(*v1 + 112);
  v5 = *(*v1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v6)
    {
      v24 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v31 = sub_1000710D4(5);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(***(v2 + 88));
      v8 = *(v1 + 8);
      v9 = *(v1 + 16);
      v10 = sub_100A3E238((v1 + 8));
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v31 = (0x8E38E38E38E38E39 * ((v9 - v8) >> 3));
      v32 = 2080;
      v33 = asStringBool(v10);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%senablePushNotification %zu items (valid:%s)", buf, 0x2Au);
    }

    v11 = *(v1 + 8);
    for (i = *(v1 + 16); v11 != i; v11 += 18)
    {
      v13 = *(v2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PersonalityInfo::logPrefix(***(v2 + 88));
        v15 = sub_1013E5CD0(*v11);
        *buf = 136315650;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s\t%s", buf, 0x20u);
      }
    }

    v16 = *(v2 + 104);
    for (j = *(v2 + 112); v16 != j; v16 += 2)
    {
      v18 = (*(**v16 + 376))(*v16, 5, 0);
      if ((v18 & 1) == 0)
      {
        memset(buf, 0, sizeof(buf));
        v19 = *(v1 + 8);
        v20 = *(v1 + 16);
        while (v19 != v20)
        {
          v21 = v16[1];
          v29[0] = *v16;
          v29[1] = &v21->__vftable;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = entitlements::ControllerImpl::supportPushTopicOnDriver(v18, v29, *v19);
          v22 = v18;
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (v22)
          {
            v18 = sub_1003FAD5C(buf, v19);
          }

          v19 += 18;
        }

        if (sub_100A3E238(buf))
        {
          v23 = *v16;
          memset(v28, 0, sizeof(v28));
          sub_1003FB24C(v28, *buf, *&buf[8], 0x8E38E38E38E38E39 * ((*&buf[8] - *buf) >> 3));
          (*(*v23 + 64))(v23, v28);
          v29[0] = v28;
          sub_1003EAC3C(v29);
        }

        v29[0] = buf;
        sub_1003EAC3C(v29);
      }
    }
  }

  sub_1003FACFC(&v27);
  return sub_1000049E0(&v26);
}

void sub_1003FAC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_1003FACFC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FACFC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1003EAC3C(&v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1003FAD5C(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003FAE28(a1, a2);
  }

  else
  {
    sub_1003FAD9C(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

_BYTE *sub_1003FAD9C(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_10006F264((v4 + 8), (a2 + 2));
  result = sub_10006F264((v4 + 40), (a2 + 10));
  *(a1 + 8) = v4 + 72;
  return result;
}

void sub_1003FADF4(_Unwind_Exception *exception_object)
{
  if (*(v3 + 32) == 1 && *(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FAE28(void *a1, _DWORD *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003FAFAC(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  v15 = 72 * v2;
  *(72 * v2) = *a2;
  sub_10006F264((72 * v2 + 8), (a2 + 2));
  sub_10006F264((72 * v2 + 40), (a2 + 10));
  *&v15 = v15 + 72;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_1003FB008(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003FB1CC(&v13);
  return v12;
}

void sub_1003FAF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v8 + 32) == 1 && *(v8 + 31) < 0)
  {
    operator delete(*v7);
  }

  sub_1003FB1CC(va);
  _Unwind_Resume(a1);
}

void sub_1003FAFAC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003FB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(a4 + v7 + 8) = 0;
      *(v9 + 32) = 0;
      if (*(a2 + v7 + 32) == 1)
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *(a4 + v7 + 8) = v10;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 8) = 0;
        *(v9 + 32) = 1;
      }

      *(v9 + 40) = 0;
      *(v9 + 64) = 0;
      if (*(v8 + 64) == 1)
      {
        v11 = (a2 + v7);
        v12 = *(a2 + v7 + 40);
        *(v9 + 56) = *(a2 + v7 + 56);
        *(v9 + 40) = v12;
        v11[6] = 0;
        v11[7] = 0;
        v11[5] = 0;
        *(v9 + 64) = 1;
      }

      v7 += 72;
    }

    while (v8 + 72 != a3);
    v17 = a4 + v7;
    LOBYTE(v15) = 1;
    while (v5 != a3)
    {
      sub_1003EACE4(a1, v5);
      v5 += 72;
    }
  }

  return sub_1003FB140(v14);
}

uint64_t sub_1003FB140(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003FB178(a1);
  }

  return a1;
}

void sub_1003FB178(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      sub_1003EACE4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1003FB1CC(uint64_t a1)
{
  sub_1003FB204(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003FB204(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_1003EACE4(v5, v4 - 72);
  }
}

uint64_t *sub_1003FB24C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003FB2D4(result, a4);
  }

  return result;
}

void sub_1003FB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1003EAC3C(&a9);
  _Unwind_Resume(a1);
}

void sub_1003FB2D4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_1003FAFAC(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1003FB324(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      sub_10006F264((v4 + 8), (v6 + 2));
      sub_10006F264((v4 + 40), (v6 + 10));
      v6 += 18;
      v4 = v11 + 72;
      v11 += 72;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1003FB140(v8);
  return v4;
}

uint64_t *sub_1003FB400(uint64_t *a1)
{
  v1 = *a1;
  v27 = a1;
  v28 = v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v3 = *(*v1 + 112);
  v5 = *(*v1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v6)
    {
      v25 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315650;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v32 = sub_1000710D4(6);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(***(v2 + 88));
      v8 = *(v1 + 8);
      v9 = *(v1 + 16);
      v10 = sub_100A3E27C((v1 + 8));
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v32 = (0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3));
      v33 = 2080;
      v34 = asStringBool(v10);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sdisablePushNotification %zu items (valid:%s)", buf, 0x2Au);
    }

    v11 = *(v1 + 8);
    for (i = *(v1 + 16); v11 != i; v11 += 10)
    {
      v13 = *(v2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PersonalityInfo::logPrefix(***(v2 + 88));
        v15 = sub_1013E5CD0(*v11);
        *buf = 136315650;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s\t%s", buf, 0x20u);
      }
    }

    v16 = *(v2 + 104);
    for (j = *(v2 + 112); v16 != j; v16 += 2)
    {
      v18 = (*(**v16 + 376))(*v16, 6, 0);
      if ((v18 & 1) == 0)
      {
        memset(buf, 0, sizeof(buf));
        v19 = *(v1 + 8);
        v20 = *(v1 + 16);
        while (v19 != v20)
        {
          v21 = v16[1];
          v30[0] = *v16;
          v30[1] = &v21->__vftable;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = entitlements::ControllerImpl::supportPushTopicOnDriver(v18, v30, *v19);
          v22 = v18;
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (v22)
          {
            v23 = *&buf[8];
            if (*&buf[8] >= *&buf[16])
            {
              v18 = sub_1003FB898(buf, v19);
            }

            else
            {
              **&buf[8] = *v19;
              sub_10006F264((v23 + 8), (v19 + 8));
              v18 = v23 + 40;
            }

            *&buf[8] = v18;
          }

          v19 += 40;
        }

        if (sub_100A3E27C(buf))
        {
          v24 = *v16;
          memset(v29, 0, sizeof(v29));
          sub_1003FBC44(v29, *(v1 + 8), *(v1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 16) - *(v1 + 8)) >> 3));
          (*(*v24 + 72))(v24, v29);
          v30[0] = v29;
          sub_1003EAD54(v30);
        }

        v30[0] = buf;
        sub_1003EAD54(v30);
      }
    }
  }

  sub_1003FB838(&v28);
  return sub_1000049E0(&v27);
}

void sub_1003FB7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_1003FB838(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FB838(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1003EAD54(&v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1003FB898(unint64_t *a1, _DWORD *a2)
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
    sub_1003FB9D0(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *v14 = *a2;
  sub_10006F264((40 * v2 + 8), (a2 + 2));
  *&v15 = v15 + 40;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_1003FBA28(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003FBBA4(&v13);
  return v12;
}

void sub_1003FB9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003FBBA4(va);
  _Unwind_Resume(a1);
}

void sub_1003FB9D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003FBA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *a4 = *(v6 - 2);
      *(a4 + 8) = 0;
      *(a4 + 32) = 0;
      if (*(v6 + 24) == 1)
      {
        v8 = *v6;
        *(a4 + 24) = *(v6 + 2);
        *(a4 + 8) = v8;
        *(v6 + 1) = 0;
        *(v6 + 2) = 0;
        *v6 = 0;
        *(a4 + 32) = 1;
      }

      a4 += 40;
      v6 = (v6 + 40);
    }

    while (v7 + 40 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 32) == 1 && *(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return sub_1003FBB18(v10);
}

uint64_t sub_1003FBB18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003FBB50(a1);
  }

  return a1;
}

void sub_1003FBB50(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 8) == 1 && *(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 40;
  }
}

uint64_t sub_1003FBBA4(uint64_t a1)
{
  sub_1003FBBDC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003FBBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 8) == 1 && *(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_1003FBC44(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003FBCCC(result, a4);
  }

  return result;
}

void sub_1003FBCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1003EAD54(&a9);
  _Unwind_Resume(a1);
}

void sub_1003FBCCC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1003FB9D0(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1003FBD18(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      sub_10006F264((v4 + 8), (v6 + 2));
      v6 += 10;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1003FBB18(v8);
  return v4;
}

uint64_t *sub_1003FBDC0(void *a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  if (*(v1 + 32) && (v3 = (v1 + 48), *(v1 + 48)))
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      v6 = *(v1 + 24);
      v7 = asStringBool(*(v1 + 40));
      *buf = 136315906;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 1024;
      LODWORD(v27) = v6;
      WORD2(v27) = 2080;
      *(&v27 + 6) = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%squeryAccountSubscriptionAndUsageStatusWithCallback, type: %u, isActivating: %s", buf, 0x26u);
    }

    if (*(v1 + 40) == 1)
    {
      v8 = *(v2 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(***(v2 + 88));
        *buf = 136315394;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sreset failures since isActivating = true -> possible new account", buf, 0x16u);
      }

      entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v2, 1);
    }

    v24 = 0;
    v25 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, 4, &v24);
    if (v24)
    {
      if (*(v1 + 24) && ((*(*v24 + 376))(v24, 11, *(v1 + 41)) & 1) == 0)
      {
        v10 = *(v2 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v2 + 88));
          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sQuerying subscription, usage status immediately", buf, 0x16u);
        }

        sub_1003FC530(buf, (v1 + 32), (v1 + 48));
        operator new();
      }
    }

    else
    {
      v14 = *(v2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(***(v2 + 88));
        v16 = sub_1000714D8(4);
        *buf = 136315650;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&v27 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
      }
    }

    v17 = *(v2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to query subscription and usage", buf, 0x16u);
    }

    v19 = *(v1 + 32);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_1003FC434;
    *&v27 = &unk_101E4AA10;
    v20 = *v3;
    if (*v3)
    {
      v20 = _Block_copy(v20);
    }

    *(&v27 + 1) = v20;
    dispatch_async(v19, buf);
    if (*(&v27 + 1))
    {
      _Block_release(*(&v27 + 1));
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
    v12 = *(v2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for subscription and usage query is missing", buf, 0x16u);
    }
  }

  sub_1003FC3C4(&v23);
  return sub_1000049E0(&v22);
}

void sub_1003FC34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FC3C4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1003FC3C4(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[6];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

const void **sub_1003FC434(uint64_t a1)
{
  v2 = sub_10164D2DC(&v4);
  (*(*(a1 + 32) + 16))(v2);
  sub_10006DCAC(v10, v10[1]);
  sub_10006DCAC(v9, v9[1]);
  sub_10006DCAC(v8, v8[1]);
  sub_100005978(&v7);
  sub_100005978(&v6);
  sub_100005978(&v5);
  return sub_100005978(&v4);
}

void sub_1003FC4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003DEBB8(va);
  _Unwind_Resume(a1);
}

void *sub_1003FC4D8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1003FC50C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_1003FC530(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *sub_1003FC57C(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(v2 + 88));
    v5 = v1[3];
    *buf = 136315650;
    v10 = v4;
    v11 = 2080;
    v12 = " ";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sTO IMPLEMENT --- Got VVM Account Status request with %zu commands", buf, 0x20u);
  }

  sub_1003FC688(&v8);
  return sub_1000049E0(&v7);
}

void sub_1003FC66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1003FC688(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FC688(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10006DCAC(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t *sub_1003FC6DC(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  entitlements::ControllerImpl::updatePushToken_sync(*v1, v1 + 8, (v1 + 32), 1);
  sub_1003FC748(&v4);
  return sub_1000049E0(&v3);
}

void sub_1003FC72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1003FC748(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FC748(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100005978((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1003FC7A8(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  if (*(v1 + 216))
  {
    v3 = (v1 + 224);
    if (*(v1 + 224))
    {
      v25 = 0;
      v26 = 0;
      entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v25);
      v4 = v25;
      if (v25)
      {
        if (*(v1 + 36) != 1)
        {
          goto LABEL_7;
        }

        v5 = *(v1 + 32);
        if ((*(v2 + 192) >> v5))
        {
          if (sub_100A392AC(v2 + 208, v5) == 2)
          {
            goto LABEL_7;
          }
        }

        else if (v5 > 0x10 || ((1 << v5) & 0x10C00) == 0)
        {
LABEL_7:
          if (((*(*v4 + 376))(v4, 14, *(v1 + 8)) & 1) == 0)
          {
            sub_1003FCE44(buf, (v1 + 216), (v1 + 224));
            operator new();
          }

          goto LABEL_23;
        }

        v15 = *(v2 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = PersonalityInfo::logPrefix(***(v2 + 88));
          v17 = sub_1000714D8(*(v1 + 12));
          if (*(v1 + 36) == 1)
          {
            v18 = sub_10006EE44(*(v1 + 32));
          }

          else
          {
            v18 = "-";
          }

          *buf = 136315906;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v28 = v17;
          LOWORD(aBlock[0]) = 2080;
          *(aBlock + 2) = v18;
          v11 = "#W %s%sgetSIMStatus is not allowed for task:%s ent:%s";
          v12 = v15;
          v13 = 42;
          goto LABEL_22;
        }
      }

      else
      {
        v8 = *(v2 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = PersonalityInfo::logPrefix(***(v2 + 88));
          v10 = sub_1000714D8(*(v1 + 12));
          *buf = 136315650;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v28 = v10;
          v11 = "#W %s%sno driver for task %s";
          v12 = v8;
          v13 = 32;
LABEL_22:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }
      }

LABEL_23:
      v19 = *(v2 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = PersonalityInfo::logPrefix(***(v2 + 88));
        *buf = 136315394;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to get Multi-SIM status", buf, 0x16u);
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 1174405120;
      *&buf[16] = sub_1003FCD54;
      v28 = &unk_101E4AA40;
      v21 = *v3;
      if (*v3)
      {
        v21 = _Block_copy(v21);
      }

      aBlock[0] = v21;
      dispatch_async(*(v1 + 216), buf);
      if (aBlock[0])
      {
        _Block_release(aBlock[0]);
      }

      if (v26)
      {
        sub_100004A34(v26);
      }

      goto LABEL_31;
    }
  }

  v6 = *(v2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(v2 + 88));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for Multi-SIM status query is missing", buf, 0x16u);
  }

LABEL_31:
  sub_1003FCD0C(&v24);
  return sub_1000049E0(&v23);
}

void sub_1003FCC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FCD0C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FCD0C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1003CD97C(v2);
    operator delete();
  }

  return a1;
}

void sub_1003FCDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003FCDEC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1003FCE20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_1003FCE44(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *sub_1003FCE90(void *a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  if (*(v1 + 288) && *(v1 + 296))
  {
    v24 = 0;
    v25 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v24);
    v3 = v24;
    if (v24)
    {
      if (*(v1 + 36) != 1)
      {
        goto LABEL_7;
      }

      v4 = *(v1 + 32);
      if ((*(v2 + 192) >> v4))
      {
        if (sub_100A392AC(v2 + 208, v4) == 2)
        {
          goto LABEL_7;
        }
      }

      else if ((v4 & 0xFFFFFFFE) != 0xA)
      {
LABEL_7:
        if (((*(*v3 + 376))(v3, 15, *(v1 + 8)) & 1) == 0)
        {
          sub_1003FD53C(buf, (v1 + 288), (v1 + 296));
          operator new();
        }

        goto LABEL_20;
      }

      v13 = *(v2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PersonalityInfo::logPrefix(***(v2 + 88));
        v15 = sub_1000714D8(*(v1 + 12));
        if (*(v1 + 36) == 1)
        {
          v16 = sub_10006EE44(*(v1 + 32));
        }

        else
        {
          v16 = "-";
        }

        *buf = 136315906;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v27 = v15;
        LOWORD(aBlock[0]) = 2080;
        *(aBlock + 2) = v16;
        v10 = "#W %s%ssignUpForSIMService is not allowed for task:%s ent:%s";
        v11 = v13;
        v12 = 42;
        goto LABEL_19;
      }
    }

    else
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(***(v2 + 88));
        v9 = sub_1000714D8(*(v1 + 12));
        *buf = 136315650;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v27 = v9;
        v10 = "#W %s%sno driver for task %s";
        v11 = v7;
        v12 = 32;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }

LABEL_20:
    v17 = *(v2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to signUpForSIMService", buf, 0x16u);
    }

    v20 = *(v1 + 288);
    v19 = *(v1 + 296);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_1003FD44C;
    v27 = &unk_101E4AA70;
    if (v19)
    {
      v19 = _Block_copy(v19);
    }

    aBlock[0] = v19;
    dispatch_async(v20, buf);
    if (aBlock[0])
    {
      _Block_release(aBlock[0]);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    goto LABEL_28;
  }

  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(***(v2 + 88));
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for SignUpForSIMService is missing", buf, 0x16u);
  }

LABEL_28:
  sub_1003FD3D4(&v23);
  return sub_1000049E0(&v22);
}

void sub_1003FD35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FD3D4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1003FD3D4(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[37];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = v1[36];
    if (v3)
    {
      dispatch_release(v3);
    }

    sub_1003EB088((v1 + 5));
    v4 = v1[3];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

void sub_1003FD4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003FD4E4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1003FD518(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_1003FD53C(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *sub_1003FD588(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  if (*(v1 + 64) && (v3 = (v1 + 72), *(v1 + 72)))
  {
    v13 = 0;
    v14 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v13);
    if (v13 && ((*(*v13 + 376))(v13, 24, *(v1 + 8)) & 1) == 0)
    {
      sub_1003FDAEC(buf, (v1 + 64), (v1 + 72));
      operator new();
    }

    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to getGeofenceData", buf, 0x16u);
    }

    v6 = *(v1 + 64);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_1003FD9FC;
    v16 = &unk_101E4AAA0;
    v7 = *v3;
    if (*v3)
    {
      v7 = _Block_copy(v7);
    }

    aBlock = v7;
    dispatch_async(v6, buf);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else
  {
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for GetGeofenceData is missing", buf, 0x16u);
    }
  }

  sub_1003FD968(&v12);
  return sub_1000049E0(&v11);
}

void sub_1003FD8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FD968(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FD968(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = *(v1 + 64);
    if (v3)
    {
      dispatch_release(v3);
    }

    if (*(v1 + 56) == 1)
    {
      v5 = (v1 + 32);
      sub_1003EB890(&v5);
    }

    v4 = *(v1 + 24);
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

void sub_1003FDA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003FDA94(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1003FDAC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_1003FDAEC(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t sub_1003FDB38(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003FDBD0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003FDC50(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  if (*(v1 + 56) && *(v1 + 88))
  {
    v11 = 0;
    v12 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v11);
    if (v11 && ((*(*v11 + 376))(v11, 25, *(v1 + 8)) & 1) == 0)
    {
      sub_1003FE164(object, (v1 + 56), v1 + 64);
      sub_1003FE074((v2 + 632), object);
    }

    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 88));
      *object = 136315394;
      *&object[4] = v4;
      *&object[12] = 2080;
      *&object[14] = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to getSigningKeys", object, 0x16u);
    }

    v5 = *(v1 + 56);
    *object = _NSConcreteStackBlock;
    *&object[8] = 1174405120;
    *&object[16] = sub_1003FE0F4;
    v14 = &unk_101E4AAD0;
    sub_1003FDB38(v15, v1 + 64);
    dispatch_async(v5, object);
    sub_1003EB964(v15);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(v2 + 88));
      *object = 136315394;
      *&object[4] = v7;
      *&object[12] = 2080;
      *&object[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for getSigningKeys is missing", object, 0x16u);
    }
  }

  sub_1003FDFF4(&v10);
  return sub_1000049E0(&v9);
}

void sub_1003FDF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FDFF4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FDFF4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003EB964(v1 + 64);
    v2 = *(v1 + 56);
    if (v2)
    {
      dispatch_release(v2);
    }

    v4 = (v1 + 32);
    sub_1000087B4(&v4);
    v3 = *(v1 + 24);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_1003FE0F4(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  sub_1003DB290(a1 + 32, &v1, 0);
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1003FE138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

NSObject **sub_1003FE164(NSObject **a1, NSObject **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1003FDB38((a1 + 1), a3);
  return a1;
}

void sub_1003FE1A8(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FE1C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003FE258(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003FE2D8(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  if (*(v1 + 56) && *(v1 + 88))
  {
    v11 = 0;
    v12 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v11);
    if (v11 && ((*(*v11 + 376))(v11, 26, *(v1 + 8)) & 1) == 0)
    {
      sub_1003FE7EC(object, (v1 + 56), v1 + 64);
      sub_1003FE6FC((v2 + 656), object);
    }

    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 88));
      *object = 136315394;
      *&object[4] = v4;
      *&object[12] = 2080;
      *&object[14] = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to getBlindSignatures", object, 0x16u);
    }

    v5 = *(v1 + 56);
    *object = _NSConcreteStackBlock;
    *&object[8] = 1174405120;
    *&object[16] = sub_1003FE77C;
    v14 = &unk_101E4AB00;
    sub_1003FE1C0(v15, v1 + 64);
    dispatch_async(v5, object);
    sub_1003EBDF0(v15);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(v2 + 88));
      *object = 136315394;
      *&object[4] = v7;
      *&object[12] = 2080;
      *&object[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for getBlindSignatures is missing", object, 0x16u);
    }
  }

  sub_1003FE67C(&v10);
  return sub_1000049E0(&v9);
}

void sub_1003FE61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FE67C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FE67C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003EBDF0(v1 + 64);
    v2 = *(v1 + 56);
    if (v2)
    {
      dispatch_release(v2);
    }

    v4 = (v1 + 32);
    sub_1003EBD20(&v4);
    v3 = *(v1 + 24);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_1003FE77C(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  sub_1003DB6FC(a1 + 32, &v1, 0);
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1003FE7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

NSObject **sub_1003FE7EC(NSObject **a1, NSObject **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1003FE1C0((a1 + 1), a3);
  return a1;
}

void sub_1003FE830(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FE848(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003FE8E0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003FE960(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  if (*(v1 + 104) && *(v1 + 136))
  {
    v13 = 0;
    v14 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v13);
    v3 = v13;
    if (v13 && ((*(*v13 + 376))(v13, 27, *(v1 + 8)) & 1) == 0)
    {
      *&v18 = v3;
      *(&v18 + 1) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1003FE848(v19, v1 + 112);
      v4 = *(v1 + 104);
      block[0] = v4;
      if (v4)
      {
        dispatch_retain(v4);
      }

      *&block[1] = v18;
      v18 = 0uLL;
      sub_1003FE8E0(&v16, v19);
      object = block[0];
      v22 = *&block[1];
      memset(block, 0, sizeof(block));
      sub_1003FE8E0(&v23, &v16);
      v21 = 0;
      operator new();
    }

    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v2 + 88));
      LODWORD(block[0]) = 136315394;
      *(block + 4) = v6;
      WORD2(block[1]) = 2080;
      *(&block[1] + 6) = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to enableService", block, 0x16u);
    }

    v7 = *(v1 + 104);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_1003FEFF4;
    v16 = &unk_101E4AB30;
    sub_1003FE848(v17, v1 + 112);
    dispatch_async(v7, block);
    sub_1003EBFF4(v17);
    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else
  {
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(v2 + 88));
      LODWORD(block[0]) = 136315394;
      *(block + 4) = v9;
      WORD2(block[1]) = 2080;
      *(&block[1] + 6) = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for enableService is missing", block, 0x16u);
    }
  }

  sub_1003FEE58(&v12);
  return sub_1000049E0(&v11);
}

void sub_1003FEDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_object_t object)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FEE58(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FEE58(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003EBFF4(v1 + 112);
    v2 = *(v1 + 104);
    if (v2)
    {
      dispatch_release(v2);
    }

    v4 = (v1 + 80);
    sub_1001C6984(&v4);
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1003FEF78(uint64_t a1)
{
  sub_1003EBFF4(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

uint64_t sub_1003FEFBC(uint64_t a1)
{
  sub_1003EBFF4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1003FEFF4(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  sub_1003DBB68(a1 + 32, &v1, 0);
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_1003FF038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003FF064(void *a1)
{
  *a1 = off_101E4AB70;
  sub_1003EBFF4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1003FF0B4(void *a1)
{
  *a1 = off_101E4AB70;
  sub_1003EBFF4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1003FF1A4(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FF1C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E4AB70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1003FE848((a2 + 3), a1 + 24);
}

void sub_1003FF228(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003FF248(char *a1)
{
  sub_1003FF43C((a1 + 8));

  operator delete(a1);
}

void sub_1003FF284(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = *a3;
  v7 = *(a1 + 8);
  sub_10000501C(v13, "");
  LOBYTE(__p) = 0;
  v12 = 0;
  v8[0] = 0;
  v8[8] = 0;
  (*(*v7 + 264))(v7, v13, &__p, v8);
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  __p = v5;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DBB68(a1 + 24, &__p, v6);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1003FF390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FF3F0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4ABE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003FF43C(uint64_t a1)
{
  sub_1003EBFF4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t *sub_1003FF488(void *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  if (*(v1 + 32) && (v3 = (v1 + 40), *(v1 + 40)))
  {
    v16 = 0;
    v17 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v16);
    if (v16)
    {
      if (((*(*v16 + 376))(v16, 16, *(v1 + 8)) & 1) == 0)
      {
        sub_1003FFA4C(buf, (v1 + 32), (v1 + 40));
        operator new();
      }
    }

    else
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(***(v2 + 88));
        v8 = sub_1000714D8(*(v1 + 12));
        *buf = 136315650;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
      }
    }

    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to GetCarrierAuthNonce", buf, 0x16u);
    }

    v11 = *(v1 + 32);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_1003FF95C;
    v19 = &unk_101E4ABF0;
    v12 = *v3;
    if (*v3)
    {
      v12 = _Block_copy(v12);
    }

    aBlock = v12;
    dispatch_async(v11, buf);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for GetCarrierAuthNonce is missing", buf, 0x16u);
    }
  }

  sub_1003FF8EC(&v15);
  return sub_1000049E0(&v14);
}

void sub_1003FF878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FF8EC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1003FF8EC(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[5];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

void sub_1003FF9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003FF9F4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1003FFA28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_1003FFA4C(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *sub_1003FFA98(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  if (*(v1 + 56) && (v3 = (v1 + 64), *(v1 + 64)))
  {
    v16 = 0;
    v17 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v16);
    if (v16)
    {
      if (((*(*v16 + 376))(v16, 17, *(v1 + 8)) & 1) == 0)
      {
        sub_100400070(buf, (v1 + 56), (v1 + 64));
        operator new();
      }
    }

    else
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(***(v2 + 88));
        v8 = sub_1000714D8(*(v1 + 12));
        *buf = 136315650;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
      }
    }

    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to AuthTrustFlag", buf, 0x16u);
    }

    v11 = *(v1 + 56);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_1003FFF80;
    v19 = &unk_101E4AC20;
    v12 = *v3;
    if (*v3)
    {
      v12 = _Block_copy(v12);
    }

    aBlock = v12;
    dispatch_async(v11, buf);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for AuthTrustFlag is missing", buf, 0x16u);
    }
  }

  sub_1003FFF00(&v15);
  return sub_1000049E0(&v14);
}

void sub_1003FFE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FFF00(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FFF00(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = *(v1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    v4 = *(v1 + 24);
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

void sub_100400000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100400018(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_10040004C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_100400070(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *sub_1004000BC(NSObject ***a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (v1[5] && v1[6])
  {
    sub_100400AE0(&buf, v1 + 5, v1 + 6);
    operator new();
  }

  isa = v2[5].isa;
  if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**v2[11].isa);
    buf = 136315394;
    buf_4 = v4;
    buf_12 = 2080;
    buf_14 = " ";
    _os_log_impl(&_mh_execute_header, isa, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for getAuthToken is missing", &buf, 0x16u);
  }

  sub_100400374(&v7);
  return sub_1000049E0(&v6);
}

void sub_10040031C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  sub_100400374(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void *sub_100400374(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[6];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

void sub_1004003E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (*(a1 + 40))
      {
        v34 = 0;
        v35 = 0;
        entitlements::ControllerImpl::findDriverForTask(v7, *(a1 + 80), &v34);
        v10 = v34;
        if (!v34)
        {
          v11 = *(v7 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = PersonalityInfo::logPrefix(***(v7 + 88));
            v13 = sub_1000714D8(*(a1 + 80));
            *buf = 136315650;
            *&buf[4] = v12;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v37 = 2080;
            v38 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
          }
        }

        if (a3 && v10 && (v14 = *(*a2 + 24)) != 0)
        {
          v15 = *(v7 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = PersonalityInfo::logPrefix(***(v7 + 88));
            *buf = 136315394;
            *&buf[4] = v16;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s[2] GetIDSTrustToken", buf, 0x16u);
            v14 = *(*a2 + 24);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_100400858;
          aBlock[3] = &unk_101E4AC50;
          v18 = *(a1 + 40);
          v17 = *(a1 + 48);
          aBlock[4] = v7;
          aBlock[5] = v18;
          v29 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = *(a1 + 80);
          v19 = *(a1 + 72);
          v30 = *(a1 + 64);
          v31 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = _Block_copy(aBlock);
          (*(*v10 + 144))(v10, v14, &v33);
          if (v33)
          {
            _Block_release(v33);
          }

          if (v31)
          {
            sub_100004A34(v31);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_weak(v29);
          }
        }

        else
        {
          v20 = *(v7 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(***(v7 + 88));
            *buf = 136315394;
            *&buf[4] = v21;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#W %s%s[1] GetCarrierAuthNonce failed", buf, 0x16u);
          }

          v22 = (v7 + 800);
          v23 = *(v7 + 808);
          if (v23 != (v7 + 800))
          {
            do
            {
              *buf = 0;
              *&buf[8] = 0;
              sub_1003EC074(buf, (v23 + 2));
              v24 = *buf;
              block[0] = _NSConcreteStackBlock;
              block[1] = 1174405120;
              block[2] = sub_1004009F0;
              block[3] = &unk_101E4AC80;
              sub_1003EC074(&object, buf);
              dispatch_async(v24, block);
              if (v27)
              {
                _Block_release(v27);
              }

              if (object)
              {
                dispatch_release(object);
              }

              if (*&buf[8])
              {
                _Block_release(*&buf[8]);
              }

              if (*buf)
              {
                dispatch_release(*buf);
              }

              v23 = v23[1];
            }

            while (v23 != v22);
          }

          sub_1003E9B08(v22);
        }

        if (v35)
        {
          sub_100004A34(v35);
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1004007D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *aBlock, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_100004A34(a28);
  }

  sub_100004A34(v28);
  _Unwind_Resume(a1);
}

void sub_100400858(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v8 = *(a1 + 72);
        v9 = *(a1 + 56);
        v10 = *(a1 + 64);
        v14[0] = v9;
        v14[1] = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100400B2C(v11, a2);
        entitlements::ControllerImpl::handleIDSTrustToken_sync(v5, v8, v14, v11);
        if (v11[0] == 1 && v13 < 0)
        {
          operator delete(__p);
        }

        v11[0] = 0;
        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100400924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a9 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void *sub_10040096C(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004009A0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1004009F0(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v2 = 0;
  sub_1003CF7D4((a1 + 40), __p);
  if (SHIBYTE(v2) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100400A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100400A5C(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100400A90(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

NSObject **sub_100400AE0(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

unsigned __int8 *sub_100400B2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  sub_100400B80(a1, a2);
  return a1;
}

void sub_100400B5C(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_10176F9D8(v1);
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_100400B80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 == 2)
  {
    v5 = *a1;
    if (v5 != 2)
    {
      if (v5 == 1 && a1[31] < 0)
      {
        operator delete(*(a1 + 1));
      }

      *a1 = 2;
    }

    a1[8] = a2[8];
  }

  else if (v4 == 1)
  {
    sub_100400C00(a1, (a2 + 8));
  }

  return a1;
}

std::string *sub_100400C00(uint64_t a1, const std::string *a2)
{
  if (*a1 == 1)
  {
    return std::string::operator=((a1 + 8), a2);
  }

  *a1 = 1;
  result = (a1 + 8);
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    return sub_100005F2C(result, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  v3 = *&a2->__r_.__value_.__l.__data_;
  result->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
  *&result->__r_.__value_.__l.__data_ = v3;
  return result;
}

uint64_t *sub_100400C44(void *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  if (*(v1 + 376) && *(v1 + 384))
  {
    v15 = 0;
    v16 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), &v15);
    if (v15)
    {
      if (((*(*v15 + 376))(v15, 18, *(v1 + 8)) & 1) == 0)
      {
        sub_10040120C(buf, (v1 + 376), (v1 + 384));
        operator new();
      }
    }

    else
    {
      v5 = *(v2 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PersonalityInfo::logPrefix(***(v2 + 88));
        v7 = sub_1000714D8(*(v1 + 12));
        *buf = 136315650;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
      }
    }

    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to TransferSIM", buf, 0x16u);
    }

    v11 = *(v1 + 376);
    v10 = *(v1 + 384);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_100401110;
    v18 = &unk_101E4ACE0;
    if (v10)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    dispatch_async(v11, buf);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }
  }

  else
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for TransferSIM is missing", buf, 0x16u);
    }
  }

  sub_100401098(&v14);
  return sub_1000049E0(&v13);
}

void sub_100401024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100401098(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100401098(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[48];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = v1[47];
    if (v3)
    {
      dispatch_release(v3);
    }

    sub_100280EAC((v1 + 4));
    v4 = v1[3];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

void sub_10040119C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004011B4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1004011E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_10040120C(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *sub_100401258(void *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  if (*(v1 + 280) && *(v1 + 288))
  {
    v17[0] = 0;
    v17[1] = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 12), v17);
    if (v17[0])
    {
      if (((*(*v17[0] + 376))(v17[0], 20, *(v1 + 8)) & 1) == 0)
      {
        v3 = *(v1 + 280);
        if (v3)
        {
          dispatch_retain(*(v1 + 280));
        }

        v4 = *(v1 + 288);
        if (v4)
        {
          v5 = _Block_copy(v4);
        }

        else
        {
          v5 = 0;
        }

        *buf = v3;
        if (v3)
        {
          dispatch_retain(v3);
        }

        *&buf[8] = v5;
        operator new();
      }
    }

    else
    {
      v8 = *(v2 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(***(v2 + 88));
        v10 = sub_1000714D8(*(v1 + 12));
        *buf = 136315650;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v19 = 2080;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
      }
    }

    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to TransferAuthorization", buf, 0x16u);
    }

    v13 = *(v1 + 288);
    if (v13)
    {
      _Block_copy(v13);
    }

    operator new();
  }

  v6 = *(v2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(v2 + 88));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for TransferAuthorization is missing", buf, 0x16u);
  }

  sub_1004016F4(&v16);
  return sub_1000049E0(&v15);
}

void sub_100401670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1004016F4(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void *sub_1004016F4(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[36];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = v1[35];
    if (v3)
    {
      dispatch_release(v3);
    }

    sub_100270DF8((v1 + 4));
    v4 = v1[3];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

const void ***sub_10040176C(const void ***a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete();
  }

  return a1;
}

const void ***sub_1004017C4(const void **a1)
{
  v2 = a1;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  sub_100401824(a1);
  return sub_10040176C(&v2);
}

void sub_100401810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10040176C(va);
  _Unwind_Resume(a1);
}

void sub_100401874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040188C(entitlements::ControllerImpl ***a1)
{
  v1 = a1;
  entitlements::ControllerImpl::readPLMNPriorityInfoFromCache(**a1);
  operator delete();
}

void sub_10040190C(entitlements::ControllerImpl ***a1)
{
  v1 = a1;
  entitlements::ControllerImpl::getPreferredRoamingNetworksIfNeeded_sync(**a1, 1);
  operator delete();
}

uint64_t sub_100401A1C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4AD80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100401A68(uint64_t **a1)
{
  v6 = 0;
  v1 = **a1;
  v7 = 0;
  entitlements::ControllerImpl::findDriverForTask(v1, 0, &v6);
  v2 = v6;
  if (v6)
  {
    if (((*(*v6 + 376))(v6, 8, 0) & 1) == 0)
    {
      (*(*v2 + 160))(v2);
    }
  }

  else
  {
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v1 + 88));
      v5 = sub_1000714D8(0);
      *buf = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  operator delete();
}

void sub_100401BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

uint64_t *sub_100401C40(uint64_t **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v10 = 0;
  v11 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, 6, &v10);
  v3 = v10;
  if (v10)
  {
    if (((*(*v10 + 376))(v10, 9, 1) & 1) == 0)
    {
      (*(*v3 + 168))(v3, v1 + 1);
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      v6 = sub_1000714D8(6);
      *buf = 136315650;
      v13 = v5;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100401DFC(&v9);
  return sub_1000049E0(&v8);
}

void sub_100401DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100401DFC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100401DFC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000A1EC((v1 + 16));
    sub_10001021C((v1 + 8));
    operator delete();
  }

  return a1;
}

uint64_t *sub_100401E54(uint64_t **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v10 = 0;
  v11 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, 4, &v10);
  v3 = v10;
  if (v10)
  {
    if (((*(*v10 + 376))(v10, 10, 0) & 1) == 0)
    {
      (*(*v3 + 176))(v3, v1 + 1);
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      v6 = sub_1000714D8(4);
      *buf = 136315650;
      v13 = v5;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100401DFC(&v9);
  return sub_1000049E0(&v8);
}

void sub_100401FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100401DFC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100402010(void **a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = v1[1];
  if (v2 != v1 + 2)
  {
    v3 = *v1;
    while (1)
    {
      v4 = *(v2 + 25);
      if (v4 != 4)
      {
        break;
      }

LABEL_24:
      v22 = v2[1];
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
          v23 = v2[2];
          v24 = *v23 == v2;
          v2 = v23;
        }

        while (!v24);
      }

      v2 = v23;
      if (v23 == v1 + 2)
      {
        goto LABEL_30;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    sub_100A3E594(v4, __p);
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    NetworkNotification::NetworkNotification();
    v5 = ***(v3 + 88);
    if (*(v5 + 49))
    {
      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = PersonalityInfo::logPrefix(v5);
        *buf = 136315394;
        *&buf[4] = v7;
        v33 = 2080;
        v34 = " ";
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#E %s%sVVM notifications are not supported yet for Cloud based personalities", buf, 0x16u);
      }

LABEL_22:
      NetworkNotification::~NetworkNotification(v28);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_24;
    }

    ServiceMap = Registry::getServiceMap(*(v3 + 64));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_15:
        v18 = (*(*v16 + 64))(v16, *(***(v3 + 88) + 52), v28, v1[4]);
        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        if ((v18 & 1) == 0)
        {
          v19 = *(v3 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = PersonalityInfo::logPrefix(***(v3 + 88));
            v21 = __p;
            if (v31 < 0)
            {
              v21 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = v20;
            v33 = 2080;
            v34 = " ";
            v35 = 2080;
            v36 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sFailed to process VM notification %s", buf, 0x20u);
          }
        }

        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_15;
  }

LABEL_30:
  sub_1004023A0(&v27);
  return sub_1000049E0(&v26);
}

void sub_100402330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  NetworkNotification::~NetworkNotification(&a18);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1004023A0(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004023A0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10006DCAC(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

void sub_1004023F4(uint64_t **a1)
{
  v1 = a1;
  entitlements::ControllerImpl::queryPrefetchableAuthorizationTokensIfNeeded_sync(**a1, *(*a1 + 8), *a1 + 16);
  operator delete();
}

uint64_t *sub_10040247C(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = v1[2];
  v7 = v1[1];
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  entitlements::ControllerImpl::fetchAuthorizationTokens_sync(v2, &v7, v1 + 3);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100402514(&v6);
  return sub_1000049E0(&v5);
}

void sub_1004024EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100402514(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100402514(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v4 = (v1 + 48);
    sub_1003EC564(&v4);
    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_100402590(uint64_t **a1)
{
  v1 = a1;
  entitlements::ControllerImpl::dropAuthorizationTokensIfNeeded_sync(**a1, (*a1 + 1));
  operator delete();
}

void sub_100402614(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100402614(a1, *a2);
    sub_100402614(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1003ED090(&v4);
    operator delete(a2);
  }
}

uint64_t *sub_100402674(const void ***a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(*v1 + 282))
  {
    sub_10005C7A4(v8, v1 + 1);
    v3 = *(v2 + 282);
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, v8, v1 + 2);
    sub_100005978(v8);
  }

  else if (os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_ERROR))
  {
    v4 = PersonalityInfo::logPrefix(***(v2 + 11));
    sub_10176F9EC(v4, v8);
  }

  sub_1004027A0(&v7);
  return sub_1000049E0(&v6);
}

uint64_t *sub_1004027A0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    sub_100005978((v1 + 8));
    operator delete();
  }

  return a1;
}

uint64_t sub_100402800(uint64_t a1, uint64_t a2)
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

uint64_t sub_100402898(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100402918(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_1004029CC((*v1 + 2232), v1 + 8);
  sub_10040297C(&v4);
  return sub_1000049E0(&v3);
}

void sub_100402960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10040297C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10040297C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003EDEF8(v1 + 8);
    operator delete();
  }

  return a1;
}

void *sub_1004029CC(void *a1, uint64_t a2)
{
  sub_100402800(v4, a2);
  sub_100402A40(v4, a1);
  sub_1003EDEF8(v4);
  return a1;
}

void *sub_100402A40(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_100402CA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100402CAC(uint64_t **a1)
{
  v1 = a1;
  entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(**a1, *(*a1 + 2));
  operator delete();
}

uint64_t *sub_100402D30(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    v3 = *v3;
  }

  v4 = *(v2 + 104);
  v5 = *(v2 + 112);
  while (v4 != v5)
  {
    sub_1009C4188(*v4, v3);
    v4 += 2;
  }

  sub_1000EF424(&v8);
  return sub_1000049E0(&v7);
}

void sub_100402DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_100402E38(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4ADA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100402E64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100402EB0(void *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(*v1, 0);
  v17 = 0u;
  v18 = 0u;
  ctu::base64::encode();
  v3 = *(v1 + 24);
  v17 = *v10;
  *&v18 = v11[0];
  BYTE8(v18) = v3;
  if ((entitlements::ControllerImpl::requestPhoneNumberRegistration_sync(v2, &v17, 1) & 1) == 0)
  {
    v4 = *(v1 + 56);
    *v11 = 0u;
    v12 = 0u;
    *v10 = 0u;
    v13 = 2;
    v15 = 0;
    v16 = 0;
    __p = 0;
    (***(v1 + 8))(&v8);
    sub_1003A0D20(v4, v10);
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (v11[1])
    {
      *&v12 = v11[1];
      operator delete(v11[1]);
    }

    if (SHIBYTE(v11[0]) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(v17);
  }

  sub_100403054(&v7);
  return sub_1000049E0(&v6);
}

void sub_100402FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, ...)
{
  va_start(va, a12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003DE614(va);
  if (*(v12 - 25) < 0)
  {
    operator delete(*(v12 - 48));
  }

  sub_100403054(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100403054(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      v1[5] = v3;
      operator delete(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1004030F4(uint64_t **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v3 + 864);
        if (v6)
        {
          sub_100812C2C(v6, *(v1 + 24), v1 + 32);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100403198(&v9);
  return sub_1000049E0(&v8);
}

void sub_100403174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100403198(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100403198(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 32);
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

__n128 sub_100403290(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4AE80;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void sub_1004032E8(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (((*(v3 + 192) >> *a2) & 1) == 0)
  {
    return;
  }

  if (!sub_100070C90(*(a1 + 8), *a2))
  {
    **(a1 + 72) |= 1 << v2;
    if (**(a1 + 88))
    {
      v9 = "";
    }

    else
    {
      v9 = ", ";
    }

    if (**(a1 + 88))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_10000C030((*(a1 + 80) + 16), v9, v10);
    v12 = sub_10006EE44(v2);
    v13 = strlen(v12);
    sub_10000C030(v11, v12, v13);
    **(a1 + 88) = 0;
    return;
  }

  v34 = 0uLL;
  v35 = 0;
  v5 = sub_100071FDC(v3 + 312, v2);
  if (v5 != 3 && (v5 & &_mh_execute_header) != 0)
  {
    **(a1 + 16) |= 1 << v2;
    if (**(a1 + 32))
    {
      v14 = "";
    }

    else
    {
      v14 = ", ";
    }

    if (**(a1 + 32))
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    v16 = sub_10000C030((*(a1 + 24) + 16), v14, v15);
    v17 = sub_10006EE44(v2);
    v18 = strlen(v17);
    v19 = sub_10000C030(v16, v17, v18);
    v20 = sub_10000C030(v19, ": ", 2);
    v21 = sub_100A38E08(v5);
    v22 = strlen(v21);
    sub_10000C030(v20, v21, v22);
    **(a1 + 32) = 0;
    sub_1000C1608(v3 + 312, v2, &v32);
    sub_1004036CC(&v34, &v32);
    goto LABEL_25;
  }

  if (*(v3 + 520) == 1)
  {
    v7 = sub_100071FDC(v3 + 416, v2);
    if ((v7 & 0x100000000) != 0)
    {
      if (v7 == 3)
      {
        LODWORD(v5) = 3;
LABEL_32:
        v8 = *(a1 + 64);
        goto LABEL_33;
      }

      LODWORD(v5) = v7;
      **(a1 + 40) |= 1 << v2;
      if (**(a1 + 56))
      {
        v23 = "";
      }

      else
      {
        v23 = ", ";
      }

      if (**(a1 + 56))
      {
        v24 = 0;
      }

      else
      {
        v24 = 2;
      }

      v25 = sub_10000C030((*(a1 + 48) + 16), v23, v24);
      v26 = sub_10006EE44(v2);
      v27 = strlen(v26);
      v28 = sub_10000C030(v25, v26, v27);
      v29 = sub_10000C030(v28, ": ", 2);
      v30 = sub_100A38E08(v5);
      v31 = strlen(v30);
      sub_10000C030(v29, v30, v31);
      **(a1 + 56) = 0;
      sub_1000C1608(v3 + 416, v2, &v32);
      sub_1004036CC(&v34, &v32);
LABEL_25:
      if (v33 == 1 && v32.n128_u64[1])
      {
        sub_100004A34(v32.n128_u64[1]);
      }

      goto LABEL_32;
    }

    v8 = *(a1 + 64);
    goto LABEL_29;
  }

  v8 = *(a1 + 64);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_29:
    LODWORD(v5) = 3;
  }

LABEL_33:
  if (v35 == 1)
  {
    v32 = v34;
    if (v34.n128_u64[1])
    {
      atomic_fetch_add_explicit((v34.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v32 = 0uLL;
  }

  sub_100A39390(v8, v2, v5, &v32);
  if (v32.n128_u64[1])
  {
    sub_100004A34(v32.n128_u64[1]);
  }

  if (v35 == 1)
  {
    if (v34.n128_u64[1])
    {
      sub_100004A34(v34.n128_u64[1]);
    }
  }
}

void sub_100403638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1)
  {
    if (a13)
    {
      sub_100004A34(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100403680(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1004036CC(__n128 *a1, __n128 *a2)
{
  if (a1[1].n128_u8[0] == a2[1].n128_u8[0])
  {
    if (a1[1].n128_u8[0])
    {
      result = *a2;
      *a2 = 0uLL;
      v4 = a1->n128_u64[1];
      *a1 = result;
      if (v4)
      {

        sub_100004A34(v4);
      }
    }
  }

  else if (a1[1].n128_u8[0])
  {
    v5 = a1->n128_u64[1];
    if (v5)
    {
      sub_100004A34(v5);
    }

    a1[1].n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    *a2 = 0uLL;
    a1[1].n128_u8[0] = 1;
  }

  return result;
}

__n128 sub_1004037D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4AF00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100403800(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v11 = v2;
  if (v2 != 17)
  {
    v4 = *(a1 + 8);
    if ((*(v4 + 192) >> v2))
    {
      if (sub_100070C90(*(a1 + 8), v2))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        sub_1000C1608(v4 + 208, v2, &v8);
        if (v10 == 1)
        {
          v5 = v8;
          if (!v8 || *(v8 + 64) != 1 || (v6 = *(a1 + 16), v12 = &v11, v7 = sub_100403958(v6, &v11, &unk_101802C98, &v12), std::string::operator=((v7 + 5), (v5 + 32)), *(v7 + 64) = *(v5 + 56), (v10 & 1) != 0))
          {
            if (v9)
            {
              sub_100004A34(v9);
            }
          }
        }
      }
    }
  }
}

void sub_1004038E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a12 == 1)
  {
    if (a11)
    {
      sub_100004A34(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10040390C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100403958(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_100403A34(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v1 + 24);
        if ((*(v3 + 192) >> v6))
        {
          if (sub_100070C90(v3, v6))
          {
            if ((*(v3 + 200) >> *(v1 + 24)))
            {
              v7 = *(v3 + 40);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                v8 = PersonalityInfo::logPrefix(***(v3 + 88));
                v9 = sub_10006EE44(*(v1 + 24));
                *buf = 136315650;
                v17 = v8;
                v18 = 2080;
                v19 = " ";
                v20 = 2080;
                v21 = v9;
                _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%scannot start tracking AUTOMATIC entitlement %s", buf, 0x20u);
              }
            }
          }

          else
          {
            v10 = *(v3 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = PersonalityInfo::logPrefix(***(v3 + 88));
              v12 = sub_10006EE44(*(v1 + 24));
              *buf = 136315650;
              v17 = v11;
              v18 = 2080;
              v19 = " ";
              v20 = 2080;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstart tracking entitlement %s", buf, 0x20u);
            }

            sub_100A3933C(v3 + 312, *(v1 + 24), 4);
            entitlements::ControllerImpl::recalculateEntitlements_sync(v3, 0, 0);
            entitlements::ControllerImpl::updateAndSchedule_sync(v3, 0);
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100403C5C(&v15);
  return sub_1000049E0(&v14);
}

void sub_100403C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100403C5C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100403C5C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100403CB0(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v1 + 24);
        if ((*(v3 + 192) >> v6))
        {
          if (sub_100070C90(v3, v6))
          {
            v7 = *(v1 + 24);
            v8 = *(v3 + 200);
            v9 = *(v3 + 40);
            v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
            if ((v8 >> v7))
            {
              if (v10)
              {
                v11 = PersonalityInfo::logPrefix(***(v3 + 88));
                v12 = sub_10006EE44(*(v1 + 24));
                *buf = 136315650;
                v19 = v11;
                v20 = 2080;
                v21 = " ";
                v22 = 2080;
                v23 = v12;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%scannot stop tracking AUTOMATIC entitlement %s", buf, 0x20u);
              }
            }

            else
            {
              if (v10)
              {
                v13 = PersonalityInfo::logPrefix(***(v3 + 88));
                v14 = sub_10006EE44(*(v1 + 24));
                *buf = 136315650;
                v19 = v13;
                v20 = 2080;
                v21 = " ";
                v22 = 2080;
                v23 = v14;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sstop tracking entitlement %s", buf, 0x20u);
                v7 = *(v1 + 24);
              }

              sub_100A39444(v3 + 312, v7);
              if (*(v3 + 520) == 1)
              {
                sub_100A39444(v3 + 416, *(v1 + 24));
              }

              entitlements::ControllerImpl::recalculateEntitlements_sync(v3, 1, 0);
            }
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100403C5C(&v17);
  return sub_1000049E0(&v16);
}

void sub_100403EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100403C5C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100403F48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4AF80;
  a2[1] = v2;
  return result;
}

unint64_t sub_100403F74(unint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  if ((*(v3 + 192) >> *a2))
  {
    v4 = sub_100071FDC(v3 + 312, *a2);
    result = sub_100071FDC(v3 + 416, v2);
    if ((v4 & 0x100000000) != 0 && (v4 - 3) <= 1 && (result & 0x100000000) != 0 && (result - 3) >= 2)
    {

      return sub_100A39444(v3 + 312, v2);
    }
  }

  return result;
}

uint64_t sub_100404010(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1004040D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B000;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100404100(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (sub_100070C90(v4, *a2))
  {
    v5 = **(a1 + 16);
    v6 = 0;
    v7 = 0;
    sub_100A39390(v4 + 416, v3, v5, &v6);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

void sub_100404170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100404188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100404250(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B080;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__CFString *sub_100404288(__CFString *result, int *a2)
{
  v2 = *a2;
  if ((*(result->info + 192) >> *a2))
  {
    p_isa = &result->isa;
    result = sub_1000C1F9C(*a2);
    if (result)
    {
      v4 = &result->isa;
      result = CFDictionaryGetValue(*p_isa[2], result);
      if (result)
      {
        v5 = result;
        v6 = CFGetTypeID(result);
        result = CFStringGetTypeID();
        if (v6 == result)
        {
          v13 = CFStringCreateWithFormat(0, 0, @"%@_details", v4);
          v12 = 0uLL;
          Value = CFDictionaryGetValue(*p_isa[2], v13);
          v8 = Value;
          if (Value)
          {
            v9 = CFGetTypeID(Value);
            if (v9 == CFDictionaryGetTypeID())
            {
              sub_100A3BB38(v8);
            }
          }

          v10 = p_isa[3];
          if (CFStringCompare(v5, @"kCTCarrierEntitlementResultForbidden", 0))
          {
            if (CFStringCompare(v5, @"kCTCarrierEntitlementResultAllowed", 0))
            {
              if (CFStringCompare(v5, @"kCTCarrierEntitlementResultProvisioning", 0))
              {
                if (CFStringCompare(v5, @"kCTCarrierEntitlementResultIncompatible", 0))
                {
                  if (CFStringCompare(v5, @"kCTCarrierEntitlementResultUnknown", 0))
                  {
                    if (CFStringCompare(v5, @"kCTCarrierEntitlementResultRequested", 0))
                    {
                      v11 = 3;
                    }

                    else
                    {
                      v11 = 4;
                    }
                  }

                  else
                  {
                    v11 = 3;
                  }
                }

                else
                {
                  v11 = 6;
                }
              }

              else
              {
                v11 = 5;
              }
            }

            else
            {
              v11 = 2;
            }
          }

          else
          {
            v11 = 1;
          }

          sub_100A39390(v10, v2, v11, &v12);
          if (*(&v12 + 1))
          {
            sub_100004A34(*(&v12 + 1));
          }

          return sub_100005978(&v13);
        }
      }
    }
  }

  return result;
}

void sub_100404478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004044A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10040455C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100404600(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100404580(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004045C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100404600(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 200) == 1 && *(a2 + 184) == 1)
    {
      v3 = (a2 + 160);
      sub_1000087B4(&v3);
    }

    if (*(a2 + 144) == 1)
    {
      if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
      {
        operator delete(*(a2 + 112));
      }

      if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
      {
        operator delete(*(a2 + 80));
      }
    }

    if (*(a2 + 64) == 1 && *(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    if (*(a2 + 24) == 1)
    {
      v3 = a2;
      sub_10013DFEC(&v3);
    }

    operator delete();
  }
}

__n128 sub_100404764(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B178;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100404798(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100404854(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4B1F8;
  a2[1] = v2;
  return result;
}

void sub_100404880(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 88));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100404964(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100404A2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B278;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100404A64(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = 1 << *a2;
  if ((**(a1 + 8) & v3) != 0)
  {
    v5 = *(a1 + 16);
    if (!sub_100070C90(v5, *a2))
    {
      v16 = *(v5 + 192) & v3;
      v17 = *(v5 + 40);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (!v18)
        {
          return;
        }

        v19 = PersonalityInfo::logPrefix(***(v5 + 88));
        v23 = 136315650;
        v24 = v19;
        v25 = 2080;
        v26 = " ";
        v27 = 2080;
        v28 = sub_10006EE44(v2);
        v20 = "#I %s%sentitlement %s is not automatic and was not queried yet";
      }

      else
      {
        if (!v18)
        {
          return;
        }

        v21 = PersonalityInfo::logPrefix(***(v5 + 88));
        v23 = 136315650;
        v24 = v21;
        v25 = 2080;
        v26 = " ";
        v27 = 2080;
        v28 = sub_10006EE44(v2);
        v20 = "#I %s%sCarrier does not support entitlement %s";
      }

      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v20, &v23, 0x20u);
      return;
    }

    v6 = sub_100071FDC(v5 + 312, v2);
    v7 = v6;
    if ((v6 & 0x100000000) == 0 || (v6 - 3) < 2 || ((v8 = **(a1 + 24), v6 == 5) ? (v9 = v8 == 6) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), v8 != 7 ? (v11 = v10 == 0) : (v11 = 0), !v11))
    {
      v12 = *(v5 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(***(v5 + 88));
        v14 = sub_10006EE44(v2);
        if ((v7 & 0x100000000) != 0)
        {
          v15 = sub_100A38E08(v7);
        }

        else
        {
          v15 = "--";
        }

        v22 = sub_1000710B0(**(a1 + 24));
        v23 = 136316162;
        v24 = v13;
        v25 = 2080;
        v26 = " ";
        v27 = 2080;
        v28 = v14;
        v29 = 2080;
        v30 = v15;
        v31 = 2080;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s known result is %s, entitlements need to be updated, reason %s", &v23, 0x34u);
      }

      if (v2 >= 0x17)
      {
        sub_1000A58E4("bitset set argument out of range");
      }

      **(a1 + 32) |= v3;
    }
  }
}

uint64_t sub_100404D10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100404D5C(uint64_t **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = v1[4];
        v12 = v1[3];
        v13 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = v1[5];
        if ((v7 & 0x7FFFFF) == 0)
        {
          v15 = 0;
          v14 = &v15;
          sub_100070B94(v3, &v14);
          v7 = v15;
        }

        v11 = v7;
        entitlements::ControllerImpl::queryEntitlementsIfNeeded_sync(v3, &v12, &v11, 7);
        if (v13)
        {
          sub_100004A34(v13);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100404E5C(&v10);
  return sub_1000049E0(&v9);
}

void sub_100404E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  sub_100404E5C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100404E5C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

__n128 sub_100404F30(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B2F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100404F60(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (sub_100070C90(*(a1 + 8), *a2))
  {
    v4 = *(a1 + 16);
    v5 = *v4;
    if (sub_100A392AC(*v4 + 312, v3) != 3)
    {
      v6 = *(v5 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(***(v5 + 88));
        v8 = 136315650;
        v9 = v7;
        v10 = 2080;
        v11 = " ";
        v12 = 2080;
        v13 = sub_10006EE44(v3);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s is in a known state", &v8, 0x20u);
      }

      *v4[1] = 0;
    }
  }
}

uint64_t sub_100405074(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100405134(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4B378;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100405164(uint64_t a1, int *a2)
{
  v2 = *a2;
  if ((**(a1 + 8) >> *a2))
  {
    v3 = *(a1 + 16);
    if ((sub_100070C90(v3, *a2) & 1) == 0)
    {

      entitlements::ControllerImpl::startTrackingEntitlement(v3, v2);
    }
  }
}

uint64_t sub_1004051CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100405218(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_100405300(void *a1)
{
  v1 = *a1;
  v38 = a1;
  v39 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_45:
        sub_100004A34(v5);
        goto LABEL_46;
      }

      if (*(v3 + 80) == *(v1 + 32))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 88));
          v8 = asStringBool(*(v1 + 32));
          v9 = asStringBool(*(v3 + 80));
          *buf = 136315906;
          *&buf[4] = v7;
          v41 = 2080;
          v42 = " ";
          v43 = 2080;
          v44 = v8;
          v45 = 2080;
          v46 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sactivate(%s) received while fActive = %s", buf, 0x2Au);
        }

        goto LABEL_45;
      }

      sub_1002B3CCC(*(v3 + 88), (v1 + 40));
      v10 = *(v1 + 32);
      *(v3 + 80) = v10;
      v11 = *(v3 + 40);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10 == 1)
      {
        if (v12)
        {
          v13 = PersonalityInfo::logPrefix(***(v3 + 88));
          *buf = 136315394;
          *&buf[4] = v13;
          v41 = 2080;
          v42 = " ";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________ activating", buf, 0x16u);
        }
      }

      else
      {
        if (v12)
        {
          v14 = PersonalityInfo::logPrefix(***(v3 + 88));
          *buf = 136315394;
          *&buf[4] = v14;
          v41 = 2080;
          v42 = " ";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________ deactivating", buf, 0x16u);
        }

        std::mutex::lock((v3 + 2168));
        *(v3 + 2105) = 0;
        std::mutex::unlock((v3 + 2168));
      }

      v15 = ***(v3 + 88);
      v16 = v15[49];
      if ((v16 - 1) >= 2)
      {
        if (v16 != 3 && v16 != 0)
        {
          goto LABEL_35;
        }

        if (*(v1 + 32) == 1)
        {
          if ((v15[60] & 1) == 0)
          {
            v18 = *(v3 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = PersonalityInfo::logPrefix(v15);
              v20 = subscriber::asString();
              *buf = 136315650;
              *&buf[4] = v19;
              v41 = 2080;
              v42 = " ";
              v43 = 2080;
              v44 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sSIM in slot %s is not EAP-AKA capable", buf, 0x20u);
            }

            *(v3 + 80) = 0;
          }

          entitlements::ControllerImpl::reset_sync(v3, 2);
          if (*(v3 + 80) == 1)
          {
            entitlements::ControllerImpl::updateAndSchedule_sync(v3, 2);
            v21 = *(v3 + 104);
            v22 = *(v3 + 112);
            while (v21 != v22)
            {
              (*(**v21 + 336))(*v21, 1);
              v21 += 2;
            }
          }

          else
          {
            v25 = *(v3 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = PersonalityInfo::logPrefix(***(v3 + 88));
              *buf = 136315394;
              *&buf[4] = v26;
              v41 = 2080;
              v42 = " ";
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sActivation suspended", buf, 0x16u);
            }
          }

LABEL_35:
          ServiceMap = Registry::getServiceMap(*(v3 + 64));
          v28 = ServiceMap;
          if (v29 < 0)
          {
            v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v31 = 5381;
            do
            {
              v29 = v31;
              v32 = *v30++;
              v31 = (33 * v31) ^ v32;
            }

            while (v32);
          }

          std::mutex::lock(ServiceMap);
          *buf = v29;
          v33 = sub_100009510(&v28[1].__m_.__sig, buf);
          if (v33)
          {
            v35 = v33[3];
            v34 = v33[4];
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v28);
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v34);
              v36 = 0;
              goto LABEL_43;
            }
          }

          else
          {
            v35 = 0;
          }

          std::mutex::unlock(v28);
          v34 = 0;
          v36 = 1;
LABEL_43:
          (*(*v35 + 48))(v35);
          if ((v36 & 1) == 0)
          {
            sub_100004A34(v34);
          }

          goto LABEL_45;
        }

        v23 = *(v3 + 104);
        v24 = *(v3 + 112);
        while (v23 != v24)
        {
          (*(**v23 + 336))(*v23, 0);
          v23 += 2;
        }
      }

      entitlements::ControllerImpl::reset_sync(v3, 2);
      goto LABEL_35;
    }
  }

LABEL_46:
  sub_100405880(&v39);
  return sub_1000049E0(&v38);
}

void sub_100405814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100405880(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100405880(void *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[6];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[3];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1004058F8(void **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        sub_1002B3CCC(*(v3 + 88), v1 + 3);
        if (!*(***(v3 + 88) + 49))
        {
          if (*(v3 + 80))
          {
            entitlements::ControllerImpl::validateSIMInfo(v3, 0);
            v8 = *(v3 + 104);
            v7 = *(v3 + 112);
            while (v8 != v7)
            {
              (*(**v8 + 336))(*v8, 1);
              v8 += 2;
            }
          }

          else
          {
            group = 0;
            (*(*v3 + 32))(v3, 1, v1 + 3, &group);
            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100405A7C(&v10);
  return sub_1000049E0(&v9);
}

void sub_100405A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_100004A34(v12);
  sub_100405A7C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100405A7C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100405ADC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 24))
      {
        sub_1002B3CCC(*(v3 + 11), (v1 + 8));
        entitlements::ControllerImpl::reset_sync(v3, 3);
        entitlements::ControllerImpl::schedulePNRprefetchIfNeeded(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_100405B8C(&v8);
  return sub_1000049E0(&v7);
}

void sub_100405B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100405B8C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100405B8C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_100405BEC(uint64_t **a1)
{
  v8 = a1;
  v1 = *a1;
  v2 = (*a1)[4];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[3])
      {
        sub_1002B3CCC(*(v3 + 88), v1 + 1);
      }

      sub_100004A34(v5);
    }

    v6 = v1[4];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = v1[2];
  if (v7)
  {
    sub_100004A34(v7);
  }

  operator delete();
}

uint64_t sub_100405C8C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100405EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100405ED0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004060FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100406114(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100406340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100406358(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  sub_10000D518(&v20);
  v7 = *(a2 + 23);
  v8 = (v7 & 0x80u) != 0;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v8)
  {
    v9 = *a2;
  }

  else
  {
    v9 = a2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = "<invalid>";
  }

  v11 = strlen(v10);
  v12 = sub_10000C030(&v20, v10, v11);
  v13 = sub_10000C030(v12, ", ", 2);
  v14 = sub_100A38E30(v4);
  v15 = strlen(v14);
  v16 = sub_10000C030(v13, v14, v15);
  sub_10000C030(v16, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v20 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}