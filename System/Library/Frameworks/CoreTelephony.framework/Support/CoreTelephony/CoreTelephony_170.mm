void *NetworkEmergencyNumbers::NetworkEmergencyNumbers(void *a1, void *a2, NSObject **a3, __int128 **a4, uint64_t *a5)
{
  v9 = *a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a5[1];
  v12 = *a5;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15[0] = off_101E2B528;
  v15[1] = sub_1000A840C;
  v15[3] = v15;
  sub_1011CF6B4(a1, a2, &object, a4, "NetworkEmergencyNumbers", "call.em.Network", &v12, v15);
  sub_1000A8744(v15);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101F3EA20;
  a1[42] = 0;
  a1[43] = 0;
  a1[40] = a1 + 41;
  a1[41] = 0;
  a1[44] = 0;
  a1[45] = 0;
  sub_100AE91C4(a1 + 46, &rest::kDefaultBundles);
  sub_100AE91C4(a1 + 49, &rest::kDefaultBundles);
  return a1;
}

void sub_10147129C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object, uint64_t a13, char a14)
{
  sub_10032D3A4(v14 + 368, *(v14 + 376));
  a13 = v14 + 344;
  sub_1000B2AF8(&a13);
  sub_10004C4EC(v14 + 320, *(v14 + 328));
  sub_1011CFD08(v14);
  _Unwind_Resume(a1);
}

void sub_101471308(uint64_t a1)
{
  *a1 = off_101F3EA20;
  sub_10032D3A4(a1 + 392, *(a1 + 400));
  sub_10032D3A4(a1 + 368, *(a1 + 376));
  v2 = (a1 + 344);
  sub_1000B2AF8(&v2);
  sub_10004C4EC(a1 + 320, *(a1 + 328));
  sub_1011CFD08(a1);
}

void sub_10147138C(uint64_t a1)
{
  sub_101471308(a1);

  operator delete();
}

void sub_1014713C4(void *a1, NSObject **a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_1011CFF18(a1);
}

void sub_101471808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101471888(void *a1)
{
  sub_1011D0774(a1);
  DefaultEmergencyNumberList = capabilities::ct::getDefaultEmergencyNumberList(v2);
  if (DefaultEmergencyNumberList)
  {
    if (DefaultEmergencyNumberList == 1)
    {
      v4 = 6;
    }

    else
    {
      v4 = 0;
    }

    if (DefaultEmergencyNumberList == 2)
    {
      v5 = 7;
    }

    else
    {
      v5 = v4;
    }

    memset(v10, 0, 24);
    sub_10000501C(&__p, "911");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "112");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "000");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "08");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "110");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "999");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "118");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "119");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "120");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "122");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    subscriber::makeSimSlotRange();
    v7 = *(&__p + 1);
    v6 = __p;
    if (__p != *(&__p + 1))
    {
      v8 = v12;
      do
      {
        if (v8(*v6))
        {
          break;
        }

        ++v6;
      }

      while (v6 != v7);
      v9 = *(&__p + 1);
      while (v6 != v9)
      {
        sub_1011D0918(a1, v5, v10, *v6);
        do
        {
          ++v6;
        }

        while (v6 != v7 && (v8(*v6) & 1) == 0);
      }
    }

    sub_1011D1160(a1, 3);
    *&__p = v10;
    sub_1000087B4(&__p);
  }
}

void sub_101471B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  a13 = &a10;
  sub_1000087B4(&a13);
  _Unwind_Resume(a1);
}

void sub_101471BE4(uint64_t a1, _DWORD **a2)
{
  subscriber::makeSimSlotRange();
  v4 = v57;
  v5 = v58;
  if (v57 == v58)
  {
    return;
  }

  v6 = v59;
  do
  {
    if (v59(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v58);
  v7 = v58;
  if (v4 == v58)
  {
    return;
  }

  do
  {
    v56 = *v4;
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    *v54 = 0u;
    v55 = 0u;
    *v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    *v51 = 0u;
    *v49 = 0u;
    *v47 = 0u;
    memset(v48, 0, sizeof(v48));
    v46 = 0u;
    v9 = v56;
    for (i = *(a1 + 344); ; i += 42)
    {
      if (i == *(a1 + 352))
      {
        v11 = 0;
        goto LABEL_12;
      }

      if (*i == v56)
      {
        break;
      }
    }

    sub_100032BFC(&v46, i);
    v11 = 1;
    v9 = v56;
LABEL_12:
    BYTE8(v55) = v11;
    *__p = 0u;
    v45 = 0u;
    *v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    *v41 = 0u;
    *v39 = 0u;
    *v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v36 = 0u;
    for (j = *a2; ; j += 42)
    {
      if (j == a2[1])
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_53;
        }

        v13 = *v8;
        if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 0;
          v17 = 0;
          v16 = 1;
          goto LABEL_28;
        }

        v14 = "INVALID";
LABEL_19:
        v15 = subscriber::asString();
        goto LABEL_20;
      }

      if (*j == v9)
      {
        break;
      }
    }

    sub_100032BFC(&v36, j);
    v16 = BYTE8(v55);
    BYTE8(v45) = 1;
    v18 = DWORD2(v36);
    if ((BYTE8(v55) & 1) != 0 && DWORD2(v36) == DWORD2(v46))
    {
      goto LABEL_53;
    }

    v13 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 1;
      goto LABEL_28;
    }

    v14 = subscriber::asString();
    v15 = "INVALID";
    if (BYTE8(v55))
    {
      goto LABEL_19;
    }

LABEL_20:
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I SIM state change from %s to %s. Reassess operator normal setup em number checking", buf, 0x16u);
    v16 = BYTE8(v55);
    v17 = BYTE8(v45);
    v18 = DWORD2(v36);
LABEL_28:
    v19 = v17 & (v18 == 5);
    if ((v19 & 1) == 0 && (v16 & (DWORD2(v46) == 5)) != 0)
    {
      v20 = sub_101472BB8(a1, v56);
      v21 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = CSIBOOLAsString(v20);
        *buf = 136315394;
        v23 = "Not checking";
        if (v20)
        {
          v23 = "Checking";
        }

        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I SIM ready and roaming: %s. %s operator normal setup em number first", buf, 0x16u);
      }

      v24 = v56;
      v25 = a1;
      v26 = v20;
      goto LABEL_39;
    }

    if (!(v16 & (DWORD2(v46) == 5) | ((v19 & 1) == 0)))
    {
      v27 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I SIM not ready. Not checking operator normal setup em number first", buf, 2u);
      }

      v24 = v56;
      v25 = a1;
      v26 = 0;
LABEL_39:
      sub_101472E68(v25, v26, v24);
    }

    if (BYTE8(v55) == 1)
    {
      v28 = subscriber::isSimAbsent() ^ 1;
    }

    else
    {
      v28 = 0;
    }

    if (BYTE8(v45) == 1)
    {
      isSimAbsent = subscriber::isSimAbsent();
      if (((isSimAbsent | v28) & 1) == 0)
      {
        v30 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I SIM disabled. Clearing SOS numbers from the UI.", buf, 2u);
        }

        *buf = 1;
        *&buf[16] = 0u;
        v63 = 0;
        *&buf[8] = a1 + 264;
        sub_101476A64(&buf[16], (a1 + 296));
        v34 = 0uLL;
        v35 = 0;
        v60 = &v56;
        v31 = sub_101476DE4(&buf[16], v56, &v60);
        sub_1002AF094(v31 + 5);
        *(v31 + 5) = v34;
        v31[7] = v35;
        v35 = 0;
        v34 = 0uLL;
        v61 = &v34;
        sub_1000B25C4(&v61);
        sub_101476C38(buf);
        goto LABEL_53;
      }
    }

    else
    {
      isSimAbsent = 1;
    }

    if ((isSimAbsent & v28) == 1)
    {
      v32 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I SIM re-enabled. Reading SOS numbers from the operator bundle again.", buf, 2u);
      }

      v33[0] = 0;
      v33[1] = 0;
      sub_101472F54(a1, 0, v56, v33);
    }

LABEL_53:
    if (BYTE8(v45) == 1)
    {
      if (SBYTE7(v45) < 0)
      {
        operator delete(__p[0]);
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

      *buf = v38 + 8;
      sub_100034D1C(buf);
      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }
    }

    if (BYTE8(v55) == 1)
    {
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52[1]);
      }

      if (SHIBYTE(v52[0]) < 0)
      {
        operator delete(v51[0]);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[1]);
      }

      *&v36 = v48 + 8;
      sub_100034D1C(&v36);
      if (v47[0])
      {
        v47[1] = v47[0];
        operator delete(v47[0]);
      }
    }

    do
    {
      ++v4;
    }

    while (v4 != v5 && (v6(*v4) & 1) == 0);
  }

  while (v4 != v7);
}

void sub_1014721E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  *(v42 - 152) = &a17;
  sub_1000B25C4((v42 - 152));
  sub_101476C38(v42 - 144);
  sub_100A53DBC(&a21);
  sub_100A53DBC(va);
  _Unwind_Resume(a1);
}

void sub_10147224C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 368);
  v3 = (a1 + 376);
  if (v2 != (a1 + 376))
  {
    v5 = 0;
    v6 = (a2 + 8);
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      v8 = *(v2 + 8);
      v9 = v6;
      do
      {
        if (*(v7 + 32) >= v8)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v8));
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_18:
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
      if (v12 == v3)
      {
        if (v5)
        {
          sub_1011D1160(a1, v5);
        }

        return;
      }
    }

    v8 = *(v2 + 8);
LABEL_12:
    if (v5)
    {
      v5 = 3;
    }

    else
    {
      v5 = v8;
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received Carrier Bundle setup event. Reading emergency values...", v14, 2u);
    }

    v14[0] = 0;
    v14[1] = 0;
    sub_101472F54(a1, 1, v8, v14);
    goto LABEL_18;
  }
}

void sub_1014723D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 392);
  v3 = (a1 + 400);
  if (v2 != (a1 + 400))
  {
    v5 = 0;
    v6 = (a2 + 8);
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      v8 = *(v2 + 8);
      v9 = v6;
      do
      {
        if (*(v7 + 32) >= v8)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v8));
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_18:
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
      if (v12 == v3)
      {
        if (v5)
        {
          sub_1011D1160(a1, v5);
        }

        return;
      }
    }

    v8 = *(v2 + 8);
LABEL_12:
    if (v5)
    {
      v5 = 3;
    }

    else
    {
      v5 = v8;
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received Operator Bundle setup event. Reading emergency values...", v14, 2u);
    }

    v14[0] = 0;
    v14[1] = 0;
    sub_101472F54(a1, 0, v8, v14);
    goto LABEL_18;
  }
}

void sub_101472564(uint64_t a1, int a2, __int128 **a3, int a4)
{
  v7 = 0;
  v6 = 0uLL;
  sub_10004EFD0(&v6, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v8 = a4;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void sub_1014726C4(uint64_t a1, int a2, int a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1014727AC(uint64_t a1, int a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_101472894(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000AE428(&v5, a2);
  v6 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

std::string *sub_101472A6C(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a3;
  v10 = &v8;
  v4 = sub_10132A288(a1 + 104, &v8, &unk_101802C98, &v10, &v9);
  v4[5] = *a2;
  std::string::operator=(v4 + 2, (a2 + 8));
  std::string::operator=(v4 + 3, (a2 + 32));
  v5 = *(a2 + 60);
  *(v4 + 24) = *(a2 + 56);
  *(v4 + 100) = v5;
  std::string::operator=((v4 + 13), (a2 + 64));
  v6 = *(a2 + 96);
  v4[16] = *(a2 + 88);
  *(v4 + 68) = v6;
  std::string::operator=(v4 + 6, (a2 + 104));
  result = std::string::operator=(v4 + 7, (a2 + 128));
  *(v4 + 48) = *(a2 + 152);
  return result;
}

uint64_t sub_101472B2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = v4;
  std::string::operator=((a1 + 64), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;
  std::string::operator=((a1 + 104), (a2 + 104));
  std::string::operator=((a1 + 128), (a2 + 128));
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

BOOL sub_101472BB8(uint64_t a1, uint64_t a2)
{
  memset(&v20, 0, sizeof(v20));
  v4 = *(a1 + 376);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 376;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 != a1 + 376 && *(v5 + 32) <= a2)
  {
    std::string::operator=(&v20, (v5 + 48));
    memset(&buf, 0, sizeof(buf));
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
      goto LABEL_12;
    }
  }

  else
  {
LABEL_8:
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Could not find carrier bundle", &buf, 2u);
    }
  }

  buf = v20;
LABEL_12:
  v7 = *(a1 + 400);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = a1 + 400;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 != a1 + 400 && *(v8 + 32) <= a2)
  {
    std::string::operator=(&buf, (v8 + 48));
  }

  else
  {
LABEL_19:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Could not find operator bundle", v18, 2u);
    }
  }

  v10 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = buf.__r_.__value_.__l.__size_;
  }

  if (size == v12)
  {
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v20;
    }

    else
    {
      v14 = v20.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v16 = memcmp(v14, p_buf, size) != 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v16 = 1;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  v10 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
LABEL_38:
  if (v10 < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_101472E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101472E68(uint64_t a1, char a2, int a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

uint64_t sub_101472F54(uint64_t a1, int a2, uint64_t a3, MCCAndMNC **a4)
{
  v245 = a3;
  v191 = (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
  v5 = *v191;
  if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a4 != 0;
    if (a2)
    {
      v7 = "Carrier";
    }

    else
    {
      v7 = "Operator";
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = CSIBOOLAsString(v6);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Loading emergency numbers from %s bundle(s), with CountryBundleLookUp: %s", buf, 0x16u);
  }

  *v243 = 0u;
  v244 = 0u;
  *v241 = 0u;
  v242 = 0u;
  *v239 = 0u;
  v240 = 0u;
  *v237 = 0u;
  v238 = 0u;
  *v235 = 0u;
  v236 = 0u;
  sub_10000501C(buf, "112");
  CSIPhoneNumber::CSIPhoneNumber();
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v233 = 0;
  v232 = 0;
  v234 = 0;
  v230 = 0;
  v229 = 0;
  v231 = 0;
  v227 = 0;
  v226 = 0;
  v228 = 0;
  *v224 = 0;
  v223 = 0;
  v225 = 0;
  *v221 = 0u;
  v222 = 0u;
  *v219 = 0u;
  v220 = 0u;
  *v217 = 0u;
  v218 = 0u;
  *v215 = 0u;
  v216 = 0u;
  memset(&v214, 0, sizeof(v214));
  sub_1000AE428(&v214, v235);
  v8 = v245;
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v185 = v9;
  v189 = (*(**(a1 + 48) + 16))(*(a1 + 48), v8);
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  theDict = 0;
  if (v10)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Reading emergency numbers with last visible plmn", buf, 2u);
    }

    *v248 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v14 = *v248;
      *v248 = Mutable;
      *buf = v14;
      sub_1000296E0(buf);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 160));
    v16 = ServiceMap;
    if (v17 < 0)
    {
      v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = 5381;
      do
      {
        v17 = v19;
        v20 = *v18++;
        v19 = (33 * v19) ^ v20;
      }

      while (v20);
    }

    std::mutex::lock(ServiceMap);
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v24 = 0;
        if (!v23)
        {
          goto LABEL_51;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
LABEL_51:
      if ((v24 & 1) == 0)
      {
        sub_100004A34(v22);
      }

      sub_1000296E0(v248);
      goto LABEL_58;
    }

LABEL_33:
    memset(buf, 0, 32);
    MCCAndMNC::getMcc(buf, v10);
    memset(__dst, 0, 32);
    MCCAndMNC::getMnc(__dst, v10);
    memset(&v253, 0, sizeof(v253));
    formPLMN(buf, __dst);
    if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v253.__r_.__value_.__l.__data_, v253.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v253;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v271, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v271 = __p;
    }

    v250 = 0;
    if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__str, v271.__r_.__value_.__l.__data_, v271.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v271;
    }

    v251 = 0;
    if (ctu::cf::convert_copy())
    {
      v35 = v250;
      v250 = v251;
      valuePtr = v35;
      sub_100005978(&valuePtr);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v247 = v250;
    v250 = 0;
    sub_100005978(&v250);
    if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v271.__r_.__value_.__l.__data_);
    }

    sub_1001768B8(*v248, qword_101FCB6F0, v247);
    sub_100005978(&v247);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__str, 0, sizeof(__str));
    operator new();
  }

  v25 = Registry::getServiceMap(*(a1 + 160));
  v26 = v25;
  if (v27 < 0)
  {
    v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v25);
  *buf = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, buf);
  if (v31)
  {
    v32 = v31[3];
    v33 = v31[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v34 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v26);
  v33 = 0;
  v34 = 1;
LABEL_56:
  (*(*v32 + 96))(&__str, v32, v8, v11, @"EmergencyCalling", 0, 0);
  sub_100010180(__dst, &__str.__r_.__value_.__l.__data_);
  *buf = theDict;
  theDict = *__dst;
  *__dst = 0;
  sub_10001021C(buf);
  sub_10001021C(__dst);
  sub_10000A1EC(&__str.__r_.__value_.__l.__data_);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

LABEL_58:
  if (!theDict)
  {
    v97 = *v189;
    if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v98 = "#I There is no EmergencyCalling dictionary in the bundle";
LABEL_210:
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, v98, buf, 2u);
    }

LABEL_211:
    v51 = 0;
    goto LABEL_220;
  }

  v36 = v233;
  v37 = v232;
  while (v36 != v37)
  {
    v38 = *(v36 - 1);
    v36 -= 3;
    if (v38 < 0)
    {
      operator delete(*v36);
    }
  }

  v233 = v37;
  v39 = v230;
  v40 = v229;
  while (v39 != v40)
  {
    v41 = *(v39 - 1);
    v39 -= 3;
    if (v41 < 0)
    {
      operator delete(*v39);
    }
  }

  v230 = v40;
  v42 = v227;
  v43 = v226;
  while (v42 != v43)
  {
    v44 = *(v42 - 1);
    v42 -= 3;
    if (v44 < 0)
    {
      operator delete(*v42);
    }
  }

  v227 = v43;
  v45 = *v224;
  v46 = v223;
  while (v45 != v46)
  {
    v45 = (v45 - 56);
    sub_1000DD108(v45);
  }

  *v224 = v46;
  Value = CFDictionaryGetValue(theDict, @"EmergencyNumbers");
  if (!Value)
  {
    v97 = *v189;
    if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v98 = "#I There was no emergency numbers in the dict";
      goto LABEL_210;
    }

    goto LABEL_211;
  }

  v48 = *(a1 + 40);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = "Operator";
    if (a2)
    {
      v49 = "Carrier";
    }

    *buf = 136315138;
    *&buf[4] = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Loading emergency numbers from %s bundle.", buf, 0xCu);
  }

  Count = CFArrayGetCount(Value);
  v50 = *v189;
  if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = Count;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Got %zu emergency numbers", buf, 0xCu);
  }

  v51 = 1;
  if (Count < 1)
  {
    goto LABEL_220;
  }

  theArray = Value;
  v52 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v52);
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(ValueAtIndex))
    {
      v70 = *v189;
      if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        v71 = CFGetTypeID(ValueAtIndex);
        *buf = 134218240;
        *&buf[4] = v52;
        *&buf[12] = 2048;
        *&buf[14] = v71;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#N Expected dictionary type at index %ld, got %lu instead", buf, 0x16u);
      }

LABEL_201:
      ++v52;
      goto LABEL_202;
    }

    if (!ValueAtIndex)
    {
      v99 = *v189;
      if (!os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_219;
      }

      *buf = 0;
      v100 = "#N There was an error getting the emergeny numbers, dictionary returned null";
      v101 = v99;
      v102 = 2;
      goto LABEL_218;
    }

    v55 = CFDictionaryGetValue(ValueAtIndex, @"Number");
    v56 = CFDictionaryGetValue(ValueAtIndex, @"Category");
    v57 = v56;
    if (!v56 || (v58 = CFGetTypeID(v56), v58 != CFNumberGetTypeID()))
    {
      v59 = *(a1 + 40);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Category is not of numeric type!", buf, 2u);
      }

      v57 = 0;
    }

    v60 = CFDictionaryGetValue(ValueAtIndex, @"Title");
    v61 = CFDictionaryGetValue(ValueAtIndex, @"PreferredEmergencyNumber");
    v62 = CFDictionaryGetValue(ValueAtIndex, @"SupportsEmergencySetup");
    v63 = CFDictionaryGetValue(ValueAtIndex, @"SupportsText");
    v64 = CFDictionaryGetValue(ValueAtIndex, @"SupportsVoice");
    v65 = CFDictionaryGetValue(ValueAtIndex, @"TestNumber");
    if (!v55)
    {
      break;
    }

    v66 = v65;
    LODWORD(valuePtr) = 0;
    memset(&__str, 0, sizeof(__str));
    memset(buf, 0, 24);
    ctu::cf::assign();
    __str = *buf;
    if (v57)
    {
      CFNumberGetValue(v57, kCFNumberIntType, &valuePtr);
    }

    if (v61)
    {
      v67 = CFBooleanGetValue(v61) == 0;
      if (!v62)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v67 = 1;
      if (!v62)
      {
LABEL_105:
        v68 = &v232;
        if (v63)
        {
          goto LABEL_99;
        }

        goto LABEL_106;
      }
    }

    if (CFBooleanGetValue(v62))
    {
      v68 = &v232;
    }

    else
    {
      v68 = &v229;
    }

    if (v63)
    {
LABEL_99:
      CFBooleanGetValue(v63);
      if (v64)
      {
        goto LABEL_100;
      }

      goto LABEL_107;
    }

LABEL_106:
    if (v64)
    {
LABEL_100:
      v69 = CFBooleanGetValue(v64) == 0;
      if (!v66)
      {
        goto LABEL_114;
      }

      goto LABEL_108;
    }

LABEL_107:
    v69 = 0;
    if (!v66)
    {
      goto LABEL_114;
    }

LABEL_108:
    if (!CFBooleanGetValue(v66))
    {
LABEL_114:
      v72 = 1;
      if (!v67)
      {
        goto LABEL_115;
      }

      goto LABEL_164;
    }

    if (sub_1011D0F54(a1))
    {
      if (!v69)
      {
        sub_100005308((a1 + 128), &__str);
      }

      v72 = 0;
      if (!v67)
      {
LABEL_115:
        v73 = *(a1 + 40);
        v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
        if (a2)
        {
          if (v74)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I NOT reading preferred number/disam number from carrier!", buf, 2u);
          }

          goto LABEL_164;
        }

        if (v74)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I Reading preferred/disam number from operator", buf, 2u);
        }

        if (v60)
        {
          memset(&v271, 0, sizeof(v271));
          memset(buf, 0, 24);
          ctu::cf::assign();
          v271 = *buf;
          *__val = 0;
          memset(buf, 0, sizeof(buf));
          sub_10000501C(buf, "");
          sub_10000501C(&buf[24], "");
          LOBYTE(__val[0]) = 0;
          LOBYTE(__val[1]) = 0;
          std::string::operator=(buf, &__str);
          std::string::operator=(&buf[24], &v271);
          if (v57)
          {
            __val[0] = valuePtr;
            LOBYTE(__val[1]) = 1;
          }

          sub_1001A0EFC(&v223, buf);
          v75 = *v189;
          if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
          {
            if (buf[23] >= 0)
            {
              v76 = buf;
            }

            else
            {
              v76 = *buf;
            }

            if (buf[47] >= 0)
            {
              v77 = &buf[24];
            }

            else
            {
              v77 = *&buf[24];
            }

            if (LOBYTE(__val[1]) == 1)
            {
              std::to_string(&v253, __val[0]);
              v78 = &v253;
              if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v78 = v253.__r_.__value_.__r.__words[0];
              }

              *__dst = 136315650;
              *&__dst[4] = v76;
              *&__dst[12] = 2080;
              *&__dst[14] = v77;
              *&__dst[22] = 2080;
              *&__dst[24] = v78;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I Got disambiguation num %s with title %s and category %s", __dst, 0x20u);
              if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v253.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *__dst = 136315650;
              *&__dst[4] = v76;
              *&__dst[12] = 2080;
              *&__dst[14] = v77;
              *&__dst[22] = 2080;
              *&__dst[24] = "N/A";
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I Got disambiguation num %s with title %s and category %s", __dst, 0x20u);
            }
          }

          if ((buf[47] & 0x80000000) != 0)
          {
            operator delete(*&buf[24]);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
          {
            v84 = v271.__r_.__value_.__r.__words[0];
            goto LABEL_163;
          }
        }

        else
        {
          v81 = *v189;
          if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
          {
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            *&buf[4] = p_str;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I Preferred number for this country: %s", buf, 0xCu);
          }

          *v263 = 0u;
          *v262 = 0u;
          *v261 = 0u;
          *v260 = 0u;
          v259 = 0u;
          *v258 = 0u;
          *__val = 0u;
          memset(buf, 0, sizeof(buf));
          CSIPhoneNumber::CSIPhoneNumber();
          *&v214.var0 = *buf;
          std::string::operator=(&v214.var2, &buf[8]);
          std::string::operator=(v215, &buf[32]);
          DWORD2(v216) = __val[2];
          BYTE12(v216) = __val[3];
          std::string::operator=(v217, v258);
          *(&v218 + 1) = *(&v259 + 1);
          LOWORD(v219[0]) = v260[0];
          std::string::operator=(&v219[1], &v260[1]);
          std::string::operator=(v221, v262);
          DWORD2(v222) = v263[1];
          if (v57)
          {
            v83 = *(a1 + 40);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *__dst = 67109120;
              *&__dst[4] = valuePtr;
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I Category of the preferred numberfor this country: %d", __dst, 8u);
            }

            CSIPhoneNumber::setEmergencyCategory(&v214, valuePtr);
          }

          if (SHIBYTE(v263[0]) < 0)
          {
            operator delete(v262[0]);
          }

          if (SHIBYTE(v261[1]) < 0)
          {
            operator delete(v260[1]);
          }

          if (SBYTE7(v259) < 0)
          {
            operator delete(v258[0]);
          }

          if (SHIBYTE(__val[1]) < 0)
          {
            operator delete(*&buf[32]);
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            v84 = *&buf[8];
LABEL_163:
            operator delete(v84);
          }
        }
      }

LABEL_164:
      v270 = 0;
      v269 = 0u;
      v268 = 0u;
      v267 = 0u;
      v266 = 0u;
      v265 = 0u;
      v264 = 0u;
      *v263 = 0u;
      *v262 = 0u;
      *v261 = 0u;
      *v260 = 0u;
      v259 = 0u;
      *v258 = 0u;
      *__val = 0u;
      memset(buf, 0, sizeof(buf));
      sub_10000D518(buf);
      v85 = sub_10000C030(buf, "", 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = &__str;
      }

      else
      {
        v86 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v88 = sub_10000C030(v85, v86, size);
      sub_10000C030(v88, ",", 2);
      std::ostream::operator<<();
      sub_10000C030(buf, ",", 1);
      std::ostream::operator<<();
      sub_10000C030(buf, ",", 1);
      std::ostream::operator<<();
      sub_10000C030(buf, ",", 1);
      std::ostream::operator<<();
      memset(__dst, 0, 24);
      if ((v260[1] & 0x10) != 0)
      {
        v90 = v260[0];
        if (v260[0] < *&__val[2])
        {
          v260[0] = *&__val[2];
          v90 = *&__val[2];
        }

        v91 = *__val;
      }

      else
      {
        if ((v260[1] & 8) == 0)
        {
          v89 = 0;
LABEL_183:
          __dst[v89] = 0;
          v92 = *v189;
          if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
          {
            v93 = __dst;
            if ((__dst[23] & 0x80u) != 0)
            {
              v93 = *__dst;
            }

            LODWORD(v271.__r_.__value_.__l.__data_) = 136315138;
            *(v271.__r_.__value_.__r.__words + 4) = v93;
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I Command: %s", &v271, 0xCu);
          }

          v94 = __dst[23];
          v95 = __dst[23];
          if ((__dst[23] & 0x80u) != 0)
          {
            v94 = *&__dst[8];
          }

          if (v94)
          {
            if (v72)
            {
              v96 = v68;
            }

            else
            {
              v96 = &v226;
            }

            sub_100005308(v96, __dst);
            v95 = __dst[23];
          }

          if ((v95 & 0x80) != 0)
          {
            operator delete(*__dst);
          }

          *buf = v184;
          *&buf[*(v184 - 24)] = v183;
          if (SHIBYTE(v259) < 0)
          {
            operator delete(v258[1]);
          }

          std::locale::~locale(&buf[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          v80 = 1;
          goto LABEL_199;
        }

        v91 = *&buf[24];
        v90 = *&buf[40];
      }

      v89 = v90 - v91;
      if ((v90 - v91) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000A2378();
      }

      if (v89 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v90 - v91;
      if (v89)
      {
        memmove(__dst, v91, v89);
      }

      goto LABEL_183;
    }

    ++v52;
    v79 = *(a1 + 40);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I Skipping test numbers on customer build", buf, 2u);
    }

    v80 = 0;
LABEL_199:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if ((v80 & 1) == 0)
      {
        goto LABEL_202;
      }

      goto LABEL_201;
    }

    if (v80)
    {
      goto LABEL_201;
    }

LABEL_202:
    if (v52 >= Count)
    {
      goto LABEL_219;
    }
  }

  v103 = *v189;
  if (!os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_219;
  }

  v104 = "ok";
  *buf = 134218498;
  *&buf[4] = v52;
  *&buf[12] = 2080;
  if (!v57)
  {
    v104 = "not ok";
  }

  *&buf[14] = "not ok";
  *&buf[22] = 2080;
  *&buf[24] = v104;
  v100 = "#N There was an error getting the %ld emergency number. Number was %s, category was %s";
  v101 = v103;
  v102 = 32;
LABEL_218:
  _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, v100, buf, v102);
LABEL_219:
  v51 = 1;
LABEL_220:
  sub_10001021C(&theDict);
  if (v185)
  {
    sub_100004A34(v185);
  }

  if (v51)
  {
    v105 = v232;
    for (i = v233; v105 != i; v105 = (v105 + 24))
    {
      memset(buf, 0, 24);
      if (*(v105 + 23) < 0)
      {
        sub_100005F2C(buf, *v105, *(v105 + 1));
      }

      else
      {
        v107 = *v105;
        *&buf[16] = *(v105 + 2);
        *buf = v107;
      }

      v108 = *v191;
      if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v109 = buf;
        }

        else
        {
          v109 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v109;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#I EmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v110 = v229;
    for (j = v230; v110 != j; v110 = (v110 + 24))
    {
      memset(buf, 0, 24);
      if (*(v110 + 23) < 0)
      {
        sub_100005F2C(buf, *v110, *(v110 + 1));
      }

      else
      {
        v112 = *v110;
        *&buf[16] = *(v110 + 2);
        *buf = v112;
      }

      v113 = *v191;
      if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v114 = buf;
        }

        else
        {
          v114 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v114;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I NormalEmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v115 = v226;
    for (k = v227; v115 != k; v115 = (v115 + 24))
    {
      memset(buf, 0, 24);
      if (*(v115 + 23) < 0)
      {
        sub_100005F2C(buf, *v115, *(v115 + 1));
      }

      else
      {
        v117 = *v115;
        *&buf[16] = *(v115 + 2);
        *buf = v117;
      }

      v118 = *v191;
      if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v119 = buf;
        }

        else
        {
          v119 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v119;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I TestEmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v120 = v223;
    for (m = *v224; v120 != m; v120 = (v120 + 56))
    {
      *__val = 0;
      memset(buf, 0, sizeof(buf));
      if (SHIBYTE(v120->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(buf, v120->__r_.__value_.__l.__data_, v120->__r_.__value_.__l.__size_);
      }

      else
      {
        v122 = *&v120->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v120->__r_.__value_.__l + 2);
        *buf = v122;
      }

      if (SHIBYTE(v120[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf[24], v120[1].__r_.__value_.__l.__data_, v120[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v123 = *&v120[1].__r_.__value_.__l.__data_;
        *&buf[40] = *(&v120[1].__r_.__value_.__l + 2);
        *&buf[24] = v123;
      }

      *__val = v120[2].__r_.__value_.__l.__data_;
      v124 = *v191;
      if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v125 = buf;
        }

        else
        {
          v125 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v125;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "#I DisambiguationEmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[47] & 0x80000000) != 0)
      {
        operator delete(*&buf[24]);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (a2)
    {
      v126 = 2;
    }

    else
    {
      v126 = 0;
    }

    sub_1011D0918(a1, v126, &v232, v245);
    if (a2)
    {
      v127 = *v191;
      if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "#I Reading and setting carrier whitelisted numbers...", buf, 2u);
      }

      sub_1011D0918(a1, 12, &v229, v245);
      v128 = *(a1 + 40);
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "#I Skip reading disambiguation list", buf, 2u);
      }

      goto LABEL_418;
    }

    v131 = a1;
    v132 = sub_101472BB8(a1, v245);
    v133 = v245;
    v134 = (*(**(v131 + 48) + 16))(*(v131 + 48), v245);
    memset(&__str, 0, sizeof(__str));
    sub_1000B2128(&__str, *(v131 + 344), *(v131 + 352), 0xCF3CF3CF3CF3CF3DLL * ((*(v131 + 352) - *(v131 + 344)) >> 3));
    *&v264 = 0;
    *v263 = 0u;
    *v262 = 0u;
    *v261 = 0u;
    *v260 = 0u;
    v259 = 0u;
    *v258 = 0u;
    *__val = 0u;
    memset(buf, 0, sizeof(buf));
    v135 = __str.__r_.__value_.__l.__size_;
    v136 = __str.__r_.__value_.__r.__words[0];
    *__dst = _NSConcreteStackBlock;
    *&__dst[8] = 0x40000000;
    *&__dst[16] = sub_101472E54;
    *&__dst[24] = &unk_101F3EAD0;
    *&__dst[32] = v133;
    if (__str.__r_.__value_.__r.__words[0] != __str.__r_.__value_.__l.__size_)
    {
      while (((*&__dst[16])(__dst, v136) & 1) == 0)
      {
        v136 += 168;
        if (v136 == v135)
        {
          v136 = v135;
          break;
        }
      }

      v135 = __str.__r_.__value_.__l.__size_;
    }

    if (v136 == v135)
    {
      v141 = *v134;
      if (os_log_type_enabled(*v134, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v271.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "Didn't find the selected SIM, assume SIM is unknown", &v271, 2u);
      }

      v140 = 0;
    }

    else
    {
      *buf = *v136;
      if (buf != v136)
      {
        sub_1000B26FC(&buf[16], *(v136 + 16), *(v136 + 24), (*(v136 + 24) - *(v136 + 16)) >> 2);
        sub_1000B2828(&buf[40], *(v136 + 40), *(v136 + 48), 0xCCCCCCCCCCCCCCCDLL * ((*(v136 + 48) - *(v136 + 40)) >> 3));
      }

      v137 = *(v136 + 64);
      WORD2(v258[0]) = *(v136 + 68);
      LODWORD(v258[0]) = v137;
      std::string::operator=(&v258[1], (v136 + 72));
      std::string::operator=(v260, (v136 + 96));
      std::string::operator=(&v261[1], (v136 + 120));
      std::string::operator=(v263, (v136 + 144));
      v138 = *v134;
      if (os_log_type_enabled(*v134, OS_LOG_TYPE_DEFAULT))
      {
        v139 = subscriber::asString();
        LODWORD(v271.__r_.__value_.__l.__data_) = 136315138;
        *(v271.__r_.__value_.__r.__words + 4) = v139;
        _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "#I SIM state is %s", &v271, 0xCu);
      }

      v140 = *&buf[8] == 5;
    }

    if (SBYTE7(v264) < 0)
    {
      operator delete(v263[0]);
    }

    if (SHIBYTE(v262[1]) < 0)
    {
      operator delete(v261[1]);
    }

    if (SHIBYTE(v261[0]) < 0)
    {
      operator delete(v260[0]);
    }

    if (SHIBYTE(v259) < 0)
    {
      operator delete(v258[1]);
    }

    v271.__r_.__value_.__r.__words[0] = &buf[40];
    sub_100034D1C(&v271);
    if (*&buf[16])
    {
      *&buf[24] = *&buf[16];
      operator delete(*&buf[16]);
    }

    *buf = &__str;
    sub_1000B2AF8(buf);
    v142 = v140 && v132;
    if (v140 && v132)
    {
      v143 = 1;
    }

    else
    {
      v143 = 11;
    }

    v144 = *v191;
    if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
    {
      v145 = asString();
      *buf = 136315394;
      *&buf[4] = v145;
      *&buf[12] = 1024;
      *&buf[14] = v132;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I Reading and setting operator whitelisted numbers. Operator whitelisted's type is %s Roaming: %d", buf, 0x12u);
    }

    v146 = *(a1 + 40);
    v147 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
    if (v142)
    {
      if (v147)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "#I Clearing up kOperatorWhitelist since we are loading numbers for kOperatorWhitelistWhenRoaming", buf, 2u);
      }

      v148 = 11;
    }

    else
    {
      if (v147)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "#I Clearing up kOperatorWhitelistWhenRoaming list since we are loading numbers for kOperatorWhitelist", buf, 2u);
      }

      v148 = 1;
    }

    sub_1011D2AC8(a1, v245, v148);
    sub_1011D0918(a1, v143, &v229, v245);
    v149 = *(a1 + 40);
    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I Updating preferred or disambiguation numbers", buf, 2u);
      v149 = *(a1 + 40);
    }

    v150 = v223;
    v151 = *v224;
    v152 = os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT);
    if (v150 == v151)
    {
      if (v152)
      {
        CSIPhoneNumber::getFullNumber(buf, &v214);
        v156 = buf[23] >= 0 ? buf : *buf;
        *__dst = 136315138;
        *&__dst[4] = v156;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I Found one preferred number for this country/network: %s", __dst, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          v157 = *buf;
          goto LABEL_385;
        }
      }
    }

    else
    {
      if (v152)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I Found multiple numbers for this country/network. Updating rest with the disambiguation list and using default value of 112 as placeholder", buf, 2u);
      }

      *&v214.var0 = v235[0];
      std::string::operator=(&v214.var2, &v235[1]);
      std::string::operator=(v215, v237);
      DWORD2(v216) = DWORD2(v238);
      BYTE12(v216) = BYTE12(v238);
      std::string::operator=(v217, v239);
      *(&v218 + 1) = *(&v240 + 1);
      LOWORD(v219[0]) = v241[0];
      std::string::operator=(&v219[1], &v241[1]);
      std::string::operator=(v221, v243);
      DWORD2(v222) = DWORD2(v244);
      v153 = *(a1 + 40);
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 0x6DB6DB6DB6DB6DB7 * ((*v224 - v223) >> 3);
        _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "#I Disambiguation list converted size : %lu.", buf, 0xCu);
      }

      v154 = v223;
      if (*v224 - v223 == 56)
      {
        *v255 = 0;
        memset(__dst, 0, sizeof(__dst));
        if (SHIBYTE(v223->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(__dst, v223->__r_.__value_.__l.__data_, v223->__r_.__value_.__l.__size_);
        }

        else
        {
          v155 = *&v223->__r_.__value_.__l.__data_;
          *&__dst[16] = *(&v223->__r_.__value_.__l + 2);
          *__dst = v155;
        }

        if (SHIBYTE(v154[1].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst[24], v154[1].__r_.__value_.__l.__data_, v154[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v158 = *&v154[1].__r_.__value_.__l.__data_;
          *&__dst[40] = *(&v154[1].__r_.__value_.__l + 2);
          *&__dst[24] = v158;
        }

        data = v154[2].__r_.__value_.__l.__data_;
        *v255 = data;
        v160 = __dst[47];
        v161 = __dst[47];
        if ((__dst[47] & 0x80u) != 0)
        {
          v160 = *&__dst[32];
        }

        if (!v160 && (data & 0x100000000) != 0)
        {
          v162 = *(a1 + 40);
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "#I There is only one number in the list and it does not have a title set so it must be a preferred number!", buf, 2u);
          }

          *v263 = 0u;
          *v262 = 0u;
          *v261 = 0u;
          *v260 = 0u;
          v259 = 0u;
          *v258 = 0u;
          *__val = 0u;
          memset(buf, 0, sizeof(buf));
          CSIPhoneNumber::CSIPhoneNumber();
          CSIPhoneNumber::setEmergencyCategory(buf, v255[0]);
          *&v214.var0 = *buf;
          std::string::operator=(&v214.var2, &buf[8]);
          std::string::operator=(v215, &buf[32]);
          DWORD2(v216) = __val[2];
          BYTE12(v216) = __val[3];
          std::string::operator=(v217, v258);
          *(&v218 + 1) = *(&v259 + 1);
          LOWORD(v219[0]) = v260[0];
          std::string::operator=(&v219[1], &v260[1]);
          std::string::operator=(v221, v262);
          DWORD2(v222) = v263[1];
          v163 = *v224;
          v164 = v223;
          while (v163 != v164)
          {
            v163 -= 56;
            sub_1000DD108(v163);
          }

          *v224 = v164;
          v165 = *(a1 + 40);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
          {
            CSIPhoneNumber::getFullNumber(&__str, &v214);
            v166 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            LODWORD(v271.__r_.__value_.__l.__data_) = 136315138;
            *(v271.__r_.__value_.__r.__words + 4) = v166;
            _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "#I Updating preferred number to %s", &v271, 0xCu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v263[0]) < 0)
          {
            operator delete(v262[0]);
          }

          if (SHIBYTE(v261[1]) < 0)
          {
            operator delete(v260[1]);
          }

          if (SBYTE7(v259) < 0)
          {
            operator delete(v258[0]);
          }

          if (SHIBYTE(__val[1]) < 0)
          {
            operator delete(*&buf[32]);
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }

          v161 = __dst[47];
        }

        if ((v161 & 0x80) != 0)
        {
          operator delete(*&__dst[24]);
        }

        if (__dst[23] < 0)
        {
          v157 = *__dst;
LABEL_385:
          operator delete(v157);
        }
      }
    }

    *buf = 1;
    memset(&buf[16], 0, 24);
    *&buf[8] = a1 + 264;
    sub_101476A64(&buf[16], (a1 + 296));
    *__dst = &v245;
    v167 = sub_101476DE4(&buf[16], v245, __dst);
    v168 = v167;
    v169 = v167 + 5;
    if (v167 + 5 != &v223)
    {
      v170 = v223;
      v171 = *v224;
      v172 = *v224 - v223;
      v173 = v167[5];
      if ((v167[7] - v173) < *v224 - v223)
      {
        v174 = 0x6DB6DB6DB6DB6DB7 * (v172 >> 3);
        sub_1002AF094(v167 + 5);
        if (v174 <= 0x492492492492492)
        {
          v175 = 0xDB6DB6DB6DB6DB6ELL * ((v168[7] - v168[5]) >> 3);
          if (v175 <= v174)
          {
            v175 = v174;
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v168[7] - v168[5]) >> 3)) >= 0x249249249249249)
          {
            v176 = 0x492492492492492;
          }

          else
          {
            v176 = v175;
          }

          sub_1001A8908(v169, v176);
        }

        sub_1000CE3D4();
      }

      v177 = v167[6] - v173;
      if (v177 >= v172)
      {
        v178 = sub_101475A34(v223, *v224, v173);
        for (n = v168[6]; n != v178; sub_1000DD108(n))
        {
          n -= 56;
        }

        v168[6] = v178;
      }

      else
      {
        sub_101475A34(v223, (v223 + v177), v173);
        v168[6] = sub_1001A89B4(v169, v170 + v177, v171, v168[6]);
      }
    }

    v180 = *v191;
    if (os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
    {
      CSIPhoneNumber::getFullNumber(__dst, &v214);
      v181 = (__dst[23] & 0x80u) == 0 ? __dst : *__dst;
      LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
      *(__str.__r_.__value_.__r.__words + 4) = v181;
      _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "#I Preferred emergency number = %s", &__str, 0xCu);
      if (__dst[23] < 0)
      {
        operator delete(*__dst);
      }
    }

    sub_1000AE428(v192, &v214);
    sub_101472A6C(a1, v192, v245);
    if (v202 < 0)
    {
      operator delete(v201);
    }

    if (v200 < 0)
    {
      operator delete(v199);
    }

    if (v198 < 0)
    {
      operator delete(v197);
    }

    if (v196 < 0)
    {
      operator delete(v195);
    }

    if (v194 < 0)
    {
      operator delete(v193);
    }

    sub_101476C38(buf);
LABEL_418:
    if (v226 == v227)
    {
      sub_1011D3A2C(a1, v245);
    }

    else
    {
      sub_1011D0918(a1, 10, &v226, v245);
    }
  }

  else
  {
    v129 = *(a1 + 40);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "Encountered an error when reading emergency numbers from bundle!", buf, 2u);
    }

    if ((a2 & 1) == 0)
    {
      v130 = *(a1 + 40);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "#I Operator bundle is not ready! Using 112 as the preferred number.", buf, 2u);
      }

      sub_1000AE428(v203, &v214);
      sub_101472A6C(a1, v203, v245);
      if (v213 < 0)
      {
        operator delete(v212);
      }

      if (v211 < 0)
      {
        operator delete(v210);
      }

      if (v209 < 0)
      {
        operator delete(v208);
      }

      if (v207 < 0)
      {
        operator delete(v206);
      }

      if (v205 < 0)
      {
        operator delete(v204);
      }
    }
  }

  if (SBYTE7(v222) < 0)
  {
    operator delete(v221[0]);
  }

  if (SHIBYTE(v220) < 0)
  {
    operator delete(v219[1]);
  }

  if (SBYTE7(v218) < 0)
  {
    operator delete(v217[0]);
  }

  if (SBYTE7(v216) < 0)
  {
    operator delete(v215[0]);
  }

  if (*(&v214.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v214.var2.__rep_.__l.__data_);
  }

  *buf = &v223;
  sub_1000B25C4(buf);
  *buf = &v226;
  sub_1000087B4(buf);
  *buf = &v229;
  sub_1000087B4(buf);
  *buf = &v232;
  sub_1000087B4(buf);
  if (SBYTE7(v244) < 0)
  {
    operator delete(v243[0]);
  }

  if (SHIBYTE(v242) < 0)
  {
    operator delete(v241[1]);
  }

  if (SBYTE7(v240) < 0)
  {
    operator delete(v239[0]);
  }

  if (SBYTE7(v238) < 0)
  {
    operator delete(v237[0]);
  }

  if (SHIBYTE(v236) < 0)
  {
    operator delete(v235[1]);
  }

  return v51;
}

void sub_1014755FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10034F8E8(&STACK[0x440]);
  sub_1000D6F38(&STACK[0x400]);
  sub_10034F8E8(&a65);
  a65 = &STACK[0x290];
  sub_1000B25C4(&a65);
  a65 = &STACK[0x2A8];
  sub_1000087B4(&a65);
  a65 = &STACK[0x2C0];
  sub_1000087B4(&a65);
  a65 = &STACK[0x2D8];
  sub_1000087B4(&a65);
  sub_10034F8E8(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void sub_1014759C4(void *a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_101472F54(a1, 1, a2, v5);
  v4[0] = 0;
  v4[1] = 0;
  sub_101472F54(a1, 0, a2, v4);

  sub_1011D1160(a1, a2);
}

std::string *sub_101475A34(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      v6 = v5[2].__r_.__value_.__s.__data_[4];
      LODWORD(this[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
      this[2].__r_.__value_.__s.__data_[4] = v6;
      this = (this + 56);
      v5 = (v5 + 56);
    }

    while (v5 != a2);
  }

  return this;
}

void sub_101475B74(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101475C48);
  __cxa_rethrow();
}

void sub_101475BB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101475C08(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101475C48(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

__n128 sub_101475CF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3EB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101475D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101475DF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3EBF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101475E28(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_1000B2AF8(&v9);
}

void sub_101475ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_101475EE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101475FB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3EC78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101475FE8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_1014760C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101476188(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3ECF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1014761C0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_101476298(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101476354(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3ED78;
  a2[1] = v2;
  return result;
}

void sub_101476380(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v30 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v30 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        xpc_retain(v9);
        goto LABEL_16;
      }

      v10 = xpc_null_create();
LABEL_15:
      v30 = v10;
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      value = &v30;
      v24 = "first";
      sub_10000F688(&value, &v28, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v28);
      v28 = 0;
      v14 = xpc_array_create(0, 0);
      if (v14 || (v14 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v14) == &_xpc_type_array)
        {
          xpc_retain(v14);
          v15 = v14;
        }

        else
        {
          v15 = xpc_null_create();
        }
      }

      else
      {
        v15 = xpc_null_create();
        v14 = 0;
      }

      xpc_release(v14);
      v16 = v6[5];
      v17 = v6[6];
      while (v16 != v17)
      {
        write_rest_value();
        xpc_array_append_value(v15, value);
        xpc_release(value);
        v16 += 56;
      }

      v26 = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        v26 = xpc_null_create();
      }

      xpc_release(v15);
      value = &v30;
      v24 = "second";
      sub_10000F688(&value, &v26, &v27);
      xpc_release(v27);
      v27 = 0;
      xpc_release(v26);
      v26 = 0;
      v18 = v30;
      if (v30)
      {
        xpc_retain(v30);
      }

      else
      {
        v18 = xpc_null_create();
      }

      xpc_release(v30);
      xpc_array_append_value(v4, v18);
      xpc_release(v18);
      v19 = v6[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v6[2];
          v21 = *v20 == v6;
          v6 = v20;
        }

        while (!v21);
      }

      v6 = v20;
    }

    while (v20 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v22 = v4;
  }

  else
  {
    v22 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&value, "/cc/props/disambiguation_emergency_numbers");
  v30 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v30 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v30);
  v30 = 0;
  if (v25 < 0)
  {
    operator delete(value);
  }

  xpc_release(v22);
}

void sub_101476700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1014767FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101476848(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1011D0918(*v1, *(v1 + 8), (v1 + 16), *(v1 + 40));
  sub_1011D1160(v2, *(v1 + 40));
  sub_101329F84(&v5);
  return sub_1000049E0(&v4);
}

void sub_1014768A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101329F84(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1014768C4(uint64_t **a1)
{
  v1 = a1;
  sub_1011D2AC8(**a1, *(*a1 + 3), *(*a1 + 2));
  operator delete();
}

uint64_t *sub_101476948(void *a1)
{
  v2 = a1;
  if (*a1)
  {
    operator delete();
  }

  return sub_1000049E0(&v2);
}

uint64_t *sub_10147698C(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1000AE428(v6, v1 + 8);
  sub_101472A6C(v2, v6, *(v1 + 168));
  if (v16 < 0)
  {
    operator delete(__p);
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
    operator delete(v7);
  }

  sub_10132A1F0(&v5);
  return sub_1000049E0(&v4);
}

void sub_101476A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10034F8E8(va);
  sub_10132A1F0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_101476A64(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 32);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return a1;
}

uint64_t sub_101476C38(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_27;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 8) == *(v4 + 8))
      {
        v5 = v3[5];
        v6 = v3[6];
        v7 = v4[5];
        if (v6 - v5 != v4[6] - v7)
        {
          break;
        }

        while (v5 != v6)
        {
          if (!DisambiguationEmergencyNumber::operator==())
          {
            goto LABEL_22;
          }

          v5 += 56;
          v7 += 56;
        }

        v8 = v3[1];
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
            v9 = v3[2];
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v11 = v4[1];
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
            v12 = v4[2];
            v10 = *v12 == v4;
            v4 = v12;
          }

          while (!v10);
        }

        v4 = v12;
        v3 = v9;
        if (v9 == v2 + 5)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_22:
    v13 = v2 + 5;
    sub_1001A912C((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v14 = (a1 + 24);
    v2[5] = v15;
    v2[6] = v16;
    if (v16)
    {
      *(v15 + 16) = v13;
      *(a1 + 16) = v14;
      *v14 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v13;
    }

    v17 = v2[3];
    if (v17)
    {
      (*(*v17 + 48))(v17, v2 + 4);
    }
  }

LABEL_27:
  sub_1001A912C(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t *sub_101476DE4(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_101476EA8(uint64_t **a1)
{
  v16 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 3));
  v24 = 0;
  v25 = 0;
  v23 = 0;
  sub_1000B1F3C(v2, *(v1 + 3), 0xBu, &v23);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_1000B1F3C(v2, *(v1 + 3), 1u, &v20);
  v4 = *(v1 + 8);
  v5 = *v3;
  v6 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Check operator whitelist values BEFORE checking emergency values. Setting up fEmergencyNumbersMap so operator whitelist is checked first...", buf, 2u);
    }

    v7 = v23;
    v8 = v24;
    if (v23 != v24)
    {
      if (v20 != v21)
      {
        v9 = *v3;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Something's wrong. Operator Roaming Whitelist cannot have values as well as Operator Home Whitelist. Clearing old values.", buf, 2u);
        }

        sub_1011D2AC8(v2, *(v1 + 3), 1u);
        v7 = v23;
        v8 = v24;
      }

      v10 = *(v1 + 3);
      *buf = 0;
      v18 = 0;
      v19 = 0;
      sub_1000AE2B4(buf, v7, v8, 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 5));
      sub_1011D3424(v2, v10, 1u, buf);
      v26 = buf;
      sub_1000B23E0(&v26);
      v11 = 11;
LABEL_18:
      sub_1011D2AC8(v2, *(v1 + 3), v11);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Do not check operator whitelist values before checking emergency values. Setting up fEmergencyNumbersMap so operator whitelist is checked after...", buf, 2u);
    }

    v12 = v20;
    v13 = v21;
    if (v20 != v21)
    {
      if (v23 != v24)
      {
        v14 = *v3;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Something's wrong. Operator Home Whitelist cannot have values as well as Operator Roaming Whitelist. Clearing old values.", buf, 2u);
        }

        sub_1011D2AC8(v2, *(v1 + 3), 0xBu);
        v12 = v20;
        v13 = v21;
      }

      v15 = *(v1 + 3);
      *buf = 0;
      v18 = 0;
      v19 = 0;
      sub_1000AE2B4(buf, v12, v13, 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 5));
      sub_1011D3424(v2, v15, 0xBu, buf);
      v26 = buf;
      sub_1000B23E0(&v26);
      v11 = 1;
      goto LABEL_18;
    }
  }

  v26 = &v20;
  sub_1000B23E0(&v26);
  v20 = &v23;
  sub_1000B23E0(&v20);
  operator delete();
}

void sub_10147718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 56) = v17;
  sub_1000B23E0((v18 - 56));
  *(v18 - 56) = &a14;
  sub_1000B23E0((v18 - 56));
  a14 = &a17;
  sub_1000B23E0(&a14);
  operator delete();
}

void sub_101477200(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = a3;
  }

  *a2 = v7;
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
  *v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  MCC::MCC(v26, a4);
  MCC::MCC(v28, (a4 + 32));
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    MCCAndMNC::getMcc(v23, v26);
    IntValue = MCC::getIntValue(v23);
    MCCAndMNC::getMnc(v21, v26);
    IntegerWidth = MNC::getIntegerWidth(v21);
    MCCAndMNC::getMnc(v19, v26);
    v12 = MCC::getIntValue(v19);
    *buf = 67109632;
    v31 = IntValue;
    v32 = 1024;
    v33 = IntegerWidth;
    v34 = 1024;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I PLMN changed to %03d-%0.*d, reading preferred local number", buf, 0x14u);
    if (v20 < 0)
    {
      operator delete(v19[1]);
    }

    if (v22 < 0)
    {
      operator delete(v21[1]);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Reading emergency numbers from both carrier and operator bundles again as PLMN has changed.", v23, 2u);
  }

  v18[0] = 0;
  v18[1] = 0;
  v13 = sub_101472F54(a1, 1, a3, v18);
  v17[0] = 0;
  v17[1] = 0;
  v14 = sub_101472F54(a1, 0, a3, v17);
  if ((v13 & 1) == 0)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Failed to load emergency numbers from carrier bundle so try to read numbers wth last visible PLMN!", v23, 2u);
    }

    *v23 = 0;
    v24 = 0;
    sub_1014776BC(v23, v26);
  }

  if ((v14 & 1) == 0)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Failed to load emergency numbers from operator bundle so try to read numbers wth last visible PLMN!", v23, 2u);
    }

    *v23 = 0;
    v24 = 0;
    sub_1014776BC(v23, v26);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }
}

void sub_1014775F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  if (v38)
  {
    sub_100004A34(v38);
    sub_100004A34(v38);
  }

  sub_1002FECBC(&a38);
  _Unwind_Resume(a1);
}

void sub_10147769C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x101477694);
}

void sub_101477744(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101477794(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3EE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1014777F4(void *a1, void *a2)
{
  *a1 = off_101F07418;
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "euicc.keychain");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger((a1 + 1), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101F3EE58;
  v4 = a2[1];
  a1[2] = *a2;
  a1[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1014778B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void *sub_1014778DC(void *a1)
{
  *a1 = off_101F3EE58;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_101477934(void *a1)
{
  sub_1014778DC(a1);

  operator delete();
}

const void **sub_10147796C@<X0>(ctu *this@<X1>, uint64_t a2@<X0>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = 0;
  ctu::hex(this, 0x10, a3);
  if (v32 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v10 = CFStringCreateWithCString(kCFAllocatorDefault, p_p, 0x8000100u);
  v33 = v10;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
    v10 = v33;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  if (sub_100BB2DE4(a2 + 16, v10, &__p, v28))
  {
    v11 = *(a2 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "keychain error reading euicc token", v25, 2u);
    }

    *a4 = 256;
LABEL_33:
    *(a5 + 23) = 0;
    *a5 = 0;
    goto LABEL_34;
  }

  *v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_1009F1454(&v24, a3);
  sub_100E587A4(v25);
  sub_1005A16F4(&v24);
  v12 = SHIBYTE(v27);
  if (v27 >= 0)
  {
    v13 = HIBYTE(v27);
  }

  else
  {
    v13 = v26;
  }

  v14 = HIBYTE(v32);
  v15 = SHIBYTE(v32);
  if (v32 < 0)
  {
    v14 = v31;
  }

  if (v13 == v14 && (v27 >= 0 ? (v16 = v25) : (v16 = *v25), v32 >= 0 ? (v17 = &__p) : (v17 = __p), !memcmp(v16, v17, v13)))
  {
    v23 = *(a2 + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I euicc token fetched from keychain", buf, 2u);
    }

    if (*(a4 + 1) == 1)
    {
      *(a4 + 1) = 0;
    }

    *a5 = *v28;
    *(a5 + 16) = v29;
    v28[1] = 0;
    v29 = 0;
    v28[0] = 0;
    v21 = 1;
  }

  else
  {
    v18 = *(a2 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = __p;
      if (v15 >= 0)
      {
        v19 = &__p;
      }

      v20 = *v25;
      if (v12 >= 0)
      {
        v20 = v25;
      }

      *buf = 136315394;
      v35 = v19;
      v36 = 2080;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Stale token needs refresh (%s) new token (%s) ", buf, 0x16u);
    }

    v21 = 0;
    *a4 = 257;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(*v25);
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  return sub_100005978(&v33);
}

void sub_101477C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26)
{
  sub_1005A16F4(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_100005978(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_101477CBC(uint64_t a1, ctu *this, const void **a3, uint64_t a4)
{
  ctu::hex(this, 0x10, a3);
  if (v16 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = *__p;
  }

  v8 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
  v14 = v8;
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  sub_1009F1454(&v13, a3);
  sub_100E587A4(__p);
  v9 = sub_100BB445C(a1 + 16, v8, __p, a4, 0);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  sub_1005A16F4(&v13);
  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v12 = a4;
      }

      else
      {
        v12 = *a4;
      }

      *__p = 136315138;
      *&__p[4] = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "keychain error saving euicc token : %s", __p, 0xCu);
    }
  }

  sub_100005978(&v14);
  return v9;
}

void sub_101477E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1005A16F4(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void RadioCapabilitiesHandler::create(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1014781CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t object, dispatch_object_t a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    (*(*__p + 8))(__p, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_10147839C(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_10147CD64(a1);
}

void sub_1014783DC(uint64_t a1)
{
  *a1 = off_101F3EED0;
  v2 = *(a1 + 568);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(a1 + 528, *(a1 + 536));
  sub_10147CD64(a1 + 496);
  sub_10006DCAC(a1 + 472, *(a1 + 480));
  sub_100009970(a1 + 448, *(a1 + 456));
  sub_100009970(a1 + 424, *(a1 + 432));
  sub_10006DCAC(a1 + 400, *(a1 + 408));
  sub_10032D3A4(a1 + 376, *(a1 + 384));
  sub_10032D3A4(a1 + 352, *(a1 + 360));
  sub_100009970(a1 + 328, *(a1 + 336));
  sub_100009970(a1 + 304, *(a1 + 312));
  v4 = (a1 + 280);
  sub_1000B2AF8(&v4);
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 112));
  v3 = *(a1 + 104);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100DE3E98(*(a1 + 80));
  CapabilitiesHandler::~CapabilitiesHandler(a1);
}

void sub_1014784D8(uint64_t a1)
{
  sub_1014783DC(a1);

  operator delete();
}

void sub_101478510(void *a1, dispatch_object_t object)
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

uint64_t sub_1014785DC(uint64_t a1)
{
  result = capabilities::ct::supports5G(a1);
  if (result)
  {
    if (*(a1 + 556) == 1)
    {
      v3 = *(a1 + 40);
      result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Device activation policy doesn't support 5G", v4, 2u);
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_101478660(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1014827AC;
  v5[3] = &unk_101F3F720;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A530;
    v10 = &unk_101F3F760;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000595D4;
    v10 = &unk_101F3F740;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_10147878C(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1014827B8;
  v7[3] = &unk_101F3F780;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A530;
    v12 = &unk_101F3F760;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000595D4;
    v12 = &unk_101F3F740;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

uint64_t sub_1014788C0(uint64_t a1, PersonalityInfo **a2)
{
  v2 = kConferenceCallTypeUnknown;
  v4 = (a2 + 36);
  v3 = *(a2 + 9);
  if (v3)
  {
    if ((v3 & 0x24) != 0)
    {
      v5 = &kConferenceCallType6Party;
      return *v5;
    }

    if ((v3 & 8) != 0)
    {
      v5 = &kConferenceCallType3Party;
      return *v5;
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(*a2);
      WirelessTechnologyList::asString(__p, v4);
      if (v12 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136315650;
      v14 = v8;
      v15 = 2080;
      v16 = " ";
      v17 = 2080;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sNot handling %s call technology type", buf, 0x20u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v2;
}

uint64_t sub_101478A0C(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1014829A0;
  v7[3] = &unk_101F3F800;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101482A3C;
    v12 = &unk_101F3F840;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101482A00;
    v12 = &unk_101F3F820;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

void sub_101478B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005D028();
  sub_10000501C(__p, "Capabilities::SimCallAndDataSupported");
  v5 = sub_10005D0D8(v4, __p, (a2 + 40));
  if (v85 < 0)
  {
    operator delete(*__p);
  }

  if (v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(*a2);
      *__p = 136315394;
      *&__p[4] = v7;
      v83 = 2080;
      v84 = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sMigrating persistent 'Call and Data Supported'", __p, 0x16u);
    }

    v8 = sub_10005D028();
    sub_10000501C(__p, "Capabilities::SimCallAndDataSupported");
    sub_10033220C(v8, __p);
    if (v85 < 0)
    {
      operator delete(*__p);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    *__p = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, __p);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
LABEL_16:
    if (*(a2 + 40))
    {
      v19 = &kCFBooleanTrue;
    }

    else
    {
      v19 = &kCFBooleanFalse;
    }

    (*(*v17 + 16))(v17, *a2 + 24, @"SimCallAndDataSupported", *v19, @"Capabilities", 0, 1, 0);
    if ((v18 & 1) == 0)
    {
      sub_100004A34(v16);
    }
  }

  v20 = sub_10005D028();
  sub_10000501C(__p, "Capabilities::SimCallAndDataCurrentlySupported");
  v21 = sub_10005D0D8(v20, __p, (a2 + 41));
  v22 = v21;
  if (v85 < 0)
  {
    operator delete(*__p);
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  else if (!v21)
  {
    goto LABEL_42;
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = PersonalityInfo::logPrefix(*a2);
    *__p = 136315394;
    *&__p[4] = v24;
    v83 = 2080;
    v84 = " ";
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sMigrating persisted 'Call and Data'", __p, 0x16u);
  }

  v25 = sub_10005D028();
  sub_10000501C(__p, "Capabilities::SimCallAndDataCurrentlySupported");
  sub_10033220C(v25, __p);
  if (v85 < 0)
  {
    operator delete(*__p);
  }

  v26 = Registry::getServiceMap(*(a1 + 56));
  v27 = v26;
  if (v28 < 0)
  {
    v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v26);
  *__p = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, __p);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v27);
  v33 = 0;
  v35 = 1;
LABEL_37:
  if (*(a2 + 41))
  {
    v36 = &kCFBooleanTrue;
  }

  else
  {
    v36 = &kCFBooleanFalse;
  }

  (*(*v34 + 16))(v34, *a2 + 24, @"SimCallAndDataCurrentlySupported", *v36, @"Capabilities", 0, 1, 0);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

LABEL_42:
  v81 = 0;
  v37 = sub_10005D028();
  sub_10000501C(__p, "NetworkSupportsVoPS");
  v38 = sub_10005D0D8(v37, __p, &v81);
  v39 = v38;
  if (v85 < 0)
  {
    operator delete(*__p);
    if (!v39)
    {
      goto LABEL_61;
    }
  }

  else if (!v38)
  {
    goto LABEL_61;
  }

  v40 = sub_10005D028();
  sub_10000501C(__p, "NetworkSupportsVoPS");
  sub_10033220C(v40, __p);
  if (v85 < 0)
  {
    operator delete(*__p);
  }

  v41 = Registry::getServiceMap(*(a1 + 56));
  v42 = v41;
  if (v43 < 0)
  {
    v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
    v45 = 5381;
    do
    {
      v43 = v45;
      v46 = *v44++;
      v45 = (33 * v45) ^ v46;
    }

    while (v46);
  }

  std::mutex::lock(v41);
  *__p = v43;
  v47 = sub_100009510(&v42[1].__m_.__sig, __p);
  if (v47)
  {
    v49 = v47[3];
    v48 = v47[4];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v42);
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v48);
      v50 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v49 = 0;
  }

  std::mutex::unlock(v42);
  v48 = 0;
  v50 = 1;
LABEL_56:
  if (v81)
  {
    v51 = &kCFBooleanTrue;
  }

  else
  {
    v51 = &kCFBooleanFalse;
  }

  (*(*v49 + 16))(v49, *a2 + 24, @"NetworkSupportsVoPS", *v51, @"Capabilities", 0, 1, 0);
  if ((v50 & 1) == 0)
  {
    sub_100004A34(v48);
  }

LABEL_61:
  v52 = Registry::getServiceMap(*(a1 + 56));
  v53 = v52;
  v55 = v54;
  if (v54 < 0)
  {
    v56 = (v54 & 0x7FFFFFFFFFFFFFFFLL);
    v57 = 5381;
    do
    {
      v55 = v57;
      v58 = *v56++;
      v57 = (33 * v57) ^ v58;
    }

    while (v58);
  }

  std::mutex::lock(v52);
  *__p = v55;
  v59 = sub_100009510(&v53[1].__m_.__sig, __p);
  if (!v59)
  {
    v61 = 0;
    goto LABEL_68;
  }

  v61 = v59[3];
  v60 = v59[4];
  if (!v60)
  {
LABEL_68:
    std::mutex::unlock(v53);
    v60 = 0;
    v62 = 1;
    goto LABEL_69;
  }

  atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v53);
  atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v60);
  v62 = 0;
LABEL_69:
  (*(*v61 + 24))(&cf, v61, *a2 + 24, @"SimCallAndDataSupported", @"Capabilities", 0, 1);
  v63 = cf;
  __p[0] = 0;
  if (cf && (v64 = CFGetTypeID(cf), v64 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(__p, v63, v65);
    v66 = __p[0];
  }

  else
  {
    v66 = 0;
  }

  *(a2 + 40) = v66;
  sub_10000A1EC(&cf);
  if ((v62 & 1) == 0)
  {
    sub_100004A34(v60);
  }

  v67 = Registry::getServiceMap(*(a1 + 56));
  v68 = v67;
  if (v54 < 0)
  {
    v69 = (v54 & 0x7FFFFFFFFFFFFFFFLL);
    v70 = 5381;
    do
    {
      v54 = v70;
      v71 = *v69++;
      v70 = (33 * v70) ^ v71;
    }

    while (v71);
  }

  std::mutex::lock(v67);
  *__p = v54;
  v72 = sub_100009510(&v68[1].__m_.__sig, __p);
  if (!v72)
  {
    v74 = 0;
    goto LABEL_82;
  }

  v74 = v72[3];
  v73 = v72[4];
  if (!v73)
  {
LABEL_82:
    std::mutex::unlock(v68);
    v73 = 0;
    v75 = 1;
    goto LABEL_83;
  }

  atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v68);
  atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v73);
  v75 = 0;
LABEL_83:
  (*(*v74 + 24))(&cf, v74, *a2 + 24, @"SimCallAndDataCurrentlySupported", @"Capabilities", 0, 1);
  v76 = cf;
  __p[0] = 0;
  if (cf && (v77 = CFGetTypeID(cf), v77 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(__p, v76, v78);
    v79 = __p[0];
  }

  else
  {
    v79 = 0;
  }

  *(a2 + 41) = v79;
  sub_10000A1EC(&cf);
  if ((v75 & 1) == 0)
  {
    sub_100004A34(v73);
  }
}

void sub_101479370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10147942C(uint64_t a1, _DWORD *a2)
{
  v4 = *a2;
  v5 = *(a1 + 360);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *(v4 + 13);
  v7 = a1 + 360;
  do
  {
    if (*(v5 + 32) >= v6)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v6));
  }

  while (v5);
  if (v7 == a1 + 360 || v6 < *(v7 + 32))
  {
    goto LABEL_10;
  }

  v8 = *(v7 + 41);
  if (v8 == 2)
  {
    v46 = *(a1 + 40);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
LABEL_84:
      v13 = 3;
      goto LABEL_15;
    }

    *buf = 136315394;
    *&buf[4] = PersonalityInfo::logPrefix(v4);
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v47 = "#I %s%sCarrier ID based device, primary CDMA with GSM support";
LABEL_83:
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 0x16u);
    goto LABEL_84;
  }

  if (!v8)
  {
LABEL_10:
    v9 = *(a1 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    *buf = 136315394;
    *&buf[4] = PersonalityInfo::logPrefix(v4);
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = "#I %s%sCannot decide whether this device is CDMA based or not";
    goto LABEL_12;
  }

  v48 = a2[7];
  if (!*(a2 + 7))
  {
    v9 = *(a1 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    *&buf[4] = PersonalityInfo::logPrefix(v4);
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = "#W %s%sThere is no SIM available, cannot decide";
LABEL_12:
    v11 = v9;
    v12 = 22;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    goto LABEL_14;
  }

  if (v48 == 4)
  {
    v46 = *(a1 + 40);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 136315394;
    *&buf[4] = PersonalityInfo::logPrefix(v4);
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v47 = "#I %s%s1x card has an RUIM app, device is primary CDMA with GSM support";
    goto LABEL_83;
  }

  v197 = a2[8] - 1;
  if (v48 == 3 && v197 <= 1)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v199 = ServiceMap;
    if (v200 < 0)
    {
      v201 = (v200 & 0x7FFFFFFFFFFFFFFFLL);
      v202 = 5381;
      do
      {
        v200 = v202;
        v203 = *v201++;
        v202 = (33 * v202) ^ v203;
      }

      while (v203);
    }

    std::mutex::lock(ServiceMap);
    *buf = v200;
    v204 = sub_100009510(&v199[1].__m_.__sig, buf);
    if (v204)
    {
      v206 = v204[3];
      v205 = v204[4];
      if (v205)
      {
        atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v199);
        atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v205);
        v207 = 0;
        goto LABEL_312;
      }
    }

    else
    {
      v206 = 0;
    }

    std::mutex::unlock(v199);
    v205 = 0;
    v207 = 1;
LABEL_312:
    theDict[0] = 0;
    (*(*v206 + 96))(buf, v206, *(*a2 + 52), 1, @"SupportsRoamingOnCDMA", 0, 0);
    sub_10002FE1C(theDict, buf);
    sub_10000A1EC(buf);
    if (theDict[0] && (buf[0] = 0, ctu::cf::assign(buf, theDict[0], v216), buf[0] == 1))
    {
      v217 = *(a1 + 40);
      if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
      {
        v218 = PersonalityInfo::logPrefix(*a2);
        *buf = 136315394;
        *&buf[4] = v218;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "#I %s%sCSIM and SIM/USIM are both present, carrier bundle says, device is primary GSM with CDMA support", buf, 0x16u);
      }

      v13 = 2;
    }

    else
    {
      v219 = *(a1 + 40);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        v220 = PersonalityInfo::logPrefix(*a2);
        *buf = 136315394;
        *&buf[4] = v220;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "#I %s%sCSIM and SIM/USIM are both present, marking the device as primary CDMA with GSM support", buf, 0x16u);
      }

      v13 = 3;
    }

    sub_100045C8C(theDict);
    if ((v207 & 1) == 0)
    {
      sub_100004A34(v205);
    }

    goto LABEL_15;
  }

  v211 = *(a1 + 40);
  v212 = os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT);
  if (v197 > 1)
  {
    if (!v212)
    {
      goto LABEL_14;
    }

    *buf = 136315906;
    *&buf[4] = PersonalityInfo::logPrefix(v4);
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v245 = 2080;
    v246 = subscriber::asString();
    v247 = 2080;
    v248 = subscriber::asString();
    v10 = "#W %s%sCannot decide, 1x type: %s, Gw type: %s";
    v11 = v211;
    v12 = 42;
    goto LABEL_13;
  }

  if (v212)
  {
    *buf = 136315394;
    *&buf[4] = PersonalityInfo::logPrefix(v4);
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I %s%sNo 1x App, device is GSM only", buf, 0x16u);
  }

  v13 = 1;
LABEL_15:
  v14 = *a2;
  v15 = *(*a2 + 52);
  v16 = (a1 + 536);
  v17 = *(a1 + 536);
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = a1 + 536;
  v19 = *(a1 + 536);
  do
  {
    if (*(v19 + 28) >= v15)
    {
      v18 = v19;
    }

    v19 = *(v19 + 8 * (*(v19 + 28) < v15));
  }

  while (v19);
  if (v18 != v16 && *(v18 + 28) <= v15)
  {
    v20 = *(v18 + 32);
  }

  else
  {
LABEL_22:
    v20 = 0;
  }

  v235 = v20;
  if (v20 != v13)
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = PersonalityInfo::logPrefix(v14);
      v23 = sub_100072578(v235);
      v24 = sub_100072578(v13);
      *buf = 136315906;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v245 = 2080;
      v246 = v23;
      v247 = 2080;
      v248 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sDevice type is changing from %s to %s", buf, 0x2Au);
      v15 = *(*a2 + 52);
      v17 = *v16;
    }

    *buf = 1;
    *&buf[8] = a1 + 496;
    if (!v17)
    {
LABEL_33:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v25 = v17;
        v26 = *(v17 + 7);
        if (v26 <= v15)
        {
          break;
        }

        v17 = *v17;
        if (!*v25)
        {
          goto LABEL_33;
        }
      }

      if (v26 >= v15)
      {
        break;
      }

      v17 = v17[1];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    *(v17 + 8) = v13;
    sub_101482B00(buf);
    v15 = *(*a2 + 52);
    v17 = *v16;
  }

  v241 = 0;
  if (!v17)
  {
    goto LABEL_41;
  }

  v27 = (a1 + 536);
  do
  {
    if (*(v17 + 7) >= v15)
    {
      v27 = v17;
    }

    v17 = v17[*(v17 + 7) < v15];
  }

  while (v17);
  if (v27 != v16 && *(v27 + 7) <= v15)
  {
    v28 = *(v27 + 8);
  }

  else
  {
LABEL_41:
    v28 = 0;
  }

  v234 = v13;
  if (*(a2 + 22) == 1)
  {
    if (v28 == 3)
    {
      v29 = 40;
    }

    else
    {
      v29 = 32;
    }

    goto LABEL_55;
  }

  switch(v28)
  {
    case 3:
      LODWORD(theDict[0]) = 8;
      LODWORD(__p[0]) = 4;
      sub_10147BC2C(buf, a1, a2, theDict, __p);
      goto LABEL_54;
    case 2:
      LODWORD(theDict[0]) = 4;
      LODWORD(__p[0]) = 8;
      sub_10147BC2C(buf, a1, a2, theDict, __p);
LABEL_54:
      v29 = *buf;
LABEL_55:
      v238 = v29;
      v241 = v29;
      break;
    case 1:
      v238 = 4;
      v241 = 4;
      break;
    default:
      v238 = 0;
      break;
  }

  v30 = a2 + 9;
  v31 = v238;
  v236 = a2[9];
  if (v236 != v238)
  {
    v32 = *(a1 + 40);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    v31 = v238;
    if (v33)
    {
      v34 = PersonalityInfo::logPrefix(*a2);
      WirelessTechnologyList::asString(theDict, (a2 + 9));
      v35 = v243;
      v36 = theDict[0];
      WirelessTechnologyList::asString(__p, &v241);
      v37 = theDict;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v240 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v245 = 2080;
      v246 = v37;
      v247 = 2080;
      v248 = v38;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sCall handling tech is changing from %s to %s", buf, 0x2Au);
      if (v240 < 0)
      {
        operator delete(__p[0]);
      }

      if (v243 < 0)
      {
        operator delete(theDict[0]);
      }

      v31 = v241;
    }

    *v30 = v31;
  }

  v39 = *(a2 + 40);
  v40 = *(a2 + 41);
  v41 = *(a1 + 408);
  if (v41)
  {
    v42 = *a2;
    v43 = *(*a2 + 52);
    v44 = a1 + 408;
    do
    {
      if (*(v41 + 28) >= v43)
      {
        v44 = v41;
      }

      v41 = *(v41 + 8 * (*(v41 + 28) < v43));
    }

    while (v41);
    if (v44 != a1 + 408 && v43 >= *(v44 + 28))
    {
      v45 = *(v44 + 32);
      if (v45 > 0x11)
      {
        goto LABEL_103;
      }

      if (((1 << v45) & 0xBC00) != 0)
      {
        goto LABEL_102;
      }

      if (((1 << v45) & 0x30038) != 0)
      {
LABEL_79:
        v40 = 1;
LABEL_105:
        v39 = 1;
        goto LABEL_108;
      }

      if (v45 == 14)
      {
        if (!v31)
        {
          goto LABEL_108;
        }

        if ((v31 & 4) != 0)
        {
          goto LABEL_79;
        }

        if ((v31 & 0x20) == 0)
        {
          if ((v31 & 8) == 0)
          {
            v49 = *(a1 + 40);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = PersonalityInfo::logPrefix(v42);
              WirelessTechnologyList::asString(theDict, (a2 + 9));
              v51 = v243 >= 0 ? theDict : theDict[0];
              *buf = 136315650;
              *&buf[4] = v50;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v245 = 2080;
              v246 = v51;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%sNot handling %s for call technology type", buf, 0x20u);
              if (v243 < 0)
              {
                operator delete(theDict[0]);
              }
            }

            goto LABEL_108;
          }

LABEL_102:
          v40 = 0;
          v39 = 0;
          goto LABEL_108;
        }

        if ((v31 & 8) == 0)
        {
          goto LABEL_79;
        }

        v221 = *(a1 + 40);
        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          v222 = PersonalityInfo::logPrefix(v42);
          *buf = 136315394;
          *&buf[4] = v222;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "#I %s%sCall handling tech contains CDMA, setting sim. call and data to false", buf, 0x16u);
        }

        v39 = 0;
        v40 = 1;
      }

      else
      {
LABEL_103:
        if (v45 - 1 < 2)
        {
          v40 = 0;
          goto LABEL_105;
        }

        if (v45 == -2)
        {
          v40 = 0;
        }
      }
    }
  }

LABEL_108:
  v52 = *(a2 + 40);
  v237 = v52 != v39;
  if (v52 == v39)
  {
    goto LABEL_124;
  }

  v53 = *(a1 + 40);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = PersonalityInfo::logPrefix(*a2);
    v55 = CSIBOOLAsString(*(a2 + 40));
    v56 = CSIBOOLAsString(v39);
    *buf = 136315906;
    *&buf[4] = v54;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v245 = 2080;
    v246 = v55;
    v247 = 2080;
    v248 = v56;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s%sSimultaneous call and data supported is changing from %s to %s", buf, 0x2Au);
  }

  *(a2 + 40) = v39;
  v57 = Registry::getServiceMap(*(a1 + 56));
  v58 = v57;
  if (v59 < 0)
  {
    v60 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
    v61 = 5381;
    do
    {
      v59 = v61;
      v62 = *v60++;
      v61 = (33 * v61) ^ v62;
    }

    while (v62);
  }

  std::mutex::lock(v57);
  *buf = v59;
  v63 = sub_100009510(&v58[1].__m_.__sig, buf);
  if (v63)
  {
    v65 = v63[3];
    v64 = v63[4];
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v58);
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v64);
      v66 = 0;
      goto LABEL_119;
    }
  }

  else
  {
    v65 = 0;
  }

  std::mutex::unlock(v58);
  v64 = 0;
  v66 = 1;
LABEL_119:
  if (*(a2 + 40))
  {
    v67 = &kCFBooleanTrue;
  }

  else
  {
    v67 = &kCFBooleanFalse;
  }

  (*(*v65 + 16))(v65, *a2 + 24, @"SimCallAndDataSupported", *v67, @"Capabilities", 0, 1, 0);
  if ((v66 & 1) == 0)
  {
    sub_100004A34(v64);
  }

LABEL_124:
  if (*(a2 + 41) == v40)
  {
    goto LABEL_141;
  }

  v68 = *(a1 + 40);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = PersonalityInfo::logPrefix(*a2);
    v70 = CSIBOOLAsString(*(a2 + 41));
    v71 = CSIBOOLAsString(v40);
    *buf = 136315906;
    *&buf[4] = v69;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v245 = 2080;
    v246 = v70;
    v247 = 2080;
    v248 = v71;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I %s%sSimultaneous call and data currently supported is changing from %s to %s", buf, 0x2Au);
  }

  *(a2 + 41) = v40;
  v72 = Registry::getServiceMap(*(a1 + 56));
  v73 = v72;
  if (v74 < 0)
  {
    v75 = (v74 & 0x7FFFFFFFFFFFFFFFLL);
    v76 = 5381;
    do
    {
      v74 = v76;
      v77 = *v75++;
      v76 = (33 * v76) ^ v77;
    }

    while (v77);
  }

  std::mutex::lock(v72);
  *buf = v74;
  v78 = sub_100009510(&v73[1].__m_.__sig, buf);
  if (!v78)
  {
    v80 = 0;
    goto LABEL_134;
  }

  v80 = v78[3];
  v79 = v78[4];
  if (!v79)
  {
LABEL_134:
    std::mutex::unlock(v73);
    v79 = 0;
    v81 = 1;
    goto LABEL_135;
  }

  atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v73);
  atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v79);
  v81 = 0;
LABEL_135:
  if (*(a2 + 41))
  {
    v82 = &kCFBooleanTrue;
  }

  else
  {
    v82 = &kCFBooleanFalse;
  }

  (*(*v80 + 16))(v80, *a2 + 24, @"SimCallAndDataCurrentlySupported", *v82, @"Capabilities", 0, 1, 0);
  if ((v81 & 1) == 0)
  {
    sub_100004A34(v79);
  }

  v237 = 1;
LABEL_141:
  v83 = *v16;
  if (!*v16)
  {
    goto LABEL_148;
  }

  v84 = *a2;
  v85 = *(*a2 + 52);
  v86 = (a1 + 536);
  do
  {
    if (*(v83 + 7) >= v85)
    {
      v86 = v83;
    }

    v83 = v83[*(v83 + 7) < v85];
  }

  while (v83);
  if (v86 == v16 || *(v86 + 7) > v85)
  {
    goto LABEL_148;
  }

  v149 = *(v86 + 8);
  if (v149 == 3)
  {
    v150 = Registry::getServiceMap(*(a1 + 56));
    v151 = v150;
    if (v152 < 0)
    {
      v153 = (v152 & 0x7FFFFFFFFFFFFFFFLL);
      v154 = 5381;
      do
      {
        v152 = v154;
        v155 = *v153++;
        v154 = (33 * v154) ^ v155;
      }

      while (v155);
    }

    std::mutex::lock(v150);
    *buf = v152;
    v156 = sub_100009510(&v151[1].__m_.__sig, buf);
    if (v156)
    {
      v158 = v156[3];
      v157 = v156[4];
      if (v157)
      {
        atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v151);
        atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v157);
        v159 = 0;
LABEL_232:
        theDict[0] = 0;
        (*(*v158 + 96))(buf, v158, *(*a2 + 52), 1, @"SupportsSupplementaryServicesOverUtOnVoPSNetwork", kCFBooleanFalse, 0);
        sub_10002FE1C(theDict, buf);
        sub_10000A1EC(buf);
        buf[0] = 0;
        ctu::cf::assign(buf, theDict[0], v164);
        if ((*v30 & 8) != 0 && (buf[0] & 1) != 0 && sub_10147C0D0(*(a1 + 56), a2))
        {
          v165 = *(a1 + 40);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
          {
            v166 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315394;
            *&buf[4] = v166;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v167 = "#I %s%sCDMA core device, is on VoPS capable network, marked as supplementary services supported on 3GPP";
LABEL_240:
            _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, v167, buf, 0x16u);
            goto LABEL_241;
          }

          goto LABEL_241;
        }

        if (sub_10147C26C(a1, a2))
        {
          v165 = *(a1 + 40);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
          {
            v168 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315394;
            *&buf[4] = v168;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v167 = "#I %s%sCDMA core device, on IMS network, marked as supplementary services supported";
            goto LABEL_240;
          }

LABEL_241:
          v87 = 1;
          goto LABEL_306;
        }

        v169 = a2[4];
        if ((v169 & 0x24) != 0)
        {
          if ((v169 & 0x20) == 0 || (*v30 & 8) == 0)
          {
            __p[0] = 0;
            (*(*v158 + 96))(buf, v158, *(*a2 + 52), 1, @"SupportsSupplementaryServicesOver3GPP", kCFBooleanFalse, 0);
            sub_10002FE1C(__p, buf);
            sub_10000A1EC(buf);
            if (__p[0])
            {
              buf[0] = 0;
              ctu::cf::assign(buf, __p[0], v170);
              if (buf[0] == 1)
              {
                v171 = *(a1 + 40);
                if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                {
                  v172 = PersonalityInfo::logPrefix(*a2);
                  *buf = 136315394;
                  *&buf[4] = v172;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "#I %s%sCDMA core device, on 3GPP network, marked as supplementary services supported", buf, 0x16u);
                }

                v87 = 1;
                goto LABEL_301;
              }
            }

            else
            {
              v213 = *(a1 + 40);
              if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
              {
                v214 = PersonalityInfo::logPrefix(*a2);
                *buf = 136315394;
                *&buf[4] = v214;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "#I %s%sCDMA core device, on 3GPP network, marked as supplementary services not supported", buf, 0x16u);
              }
            }

            v87 = 2;
LABEL_301:
            sub_100045C8C(__p);
            goto LABEL_306;
          }

          v208 = *(a1 + 40);
          if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
          {
            v215 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315394;
            *&buf[4] = v215;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v210 = "#I %s%sCDMA core device, on LTE network, but CDMA for voice, not supporting supplementary services";
            goto LABEL_304;
          }
        }

        else
        {
          v208 = *(a1 + 40);
          if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
          {
            v209 = PersonalityInfo::logPrefix(*a2);
            *buf = 136315394;
            *&buf[4] = v209;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v210 = "#I %s%sCDMA core device, not on 3GPP network, not supporting supplementary services";
LABEL_304:
            _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, v210, buf, 0x16u);
          }
        }

        v87 = 2;
LABEL_306:
        sub_100045C8C(theDict);
        if ((v159 & 1) == 0)
        {
          sub_100004A34(v157);
        }

        goto LABEL_149;
      }
    }

    else
    {
      v158 = 0;
    }

    std::mutex::unlock(v151);
    v157 = 0;
    v159 = 1;
    goto LABEL_232;
  }

  if ((v149 - 1) > 1)
  {
LABEL_148:
    v87 = 0;
    goto LABEL_149;
  }

  v160 = *(a1 + 40);
  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v161 = PersonalityInfo::logPrefix(v84);
    *buf = 136315394;
    *&buf[4] = v161;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I %s%sGSM core device, supplementary services supported by default", buf, 0x16u);
  }

  v87 = 1;
LABEL_149:
  v88 = a2[12];
  if (v88 != v87)
  {
    v89 = *(a1 + 40);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = PersonalityInfo::logPrefix(*a2);
      v91 = sub_100B47BD0(a2[12]);
      v92 = sub_100B47BD0(v87);
      *buf = 136315906;
      *&buf[4] = v90;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v245 = 2080;
      v246 = v91;
      v247 = 2080;
      v248 = v92;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I %s%sSupp services support is changing from %s to %s", buf, 0x2Au);
    }

    a2[12] = v87;
  }

  v93 = Registry::getServiceMap(*(a1 + 56));
  v94 = v93;
  if (v95 < 0)
  {
    v96 = (v95 & 0x7FFFFFFFFFFFFFFFLL);
    v97 = 5381;
    do
    {
      v95 = v97;
      v98 = *v96++;
      v97 = (33 * v97) ^ v98;
    }

    while (v98);
  }

  std::mutex::lock(v93);
  *buf = v95;
  v99 = sub_100009510(&v94[1].__m_.__sig, buf);
  if (!v99)
  {
    v101 = 0;
    goto LABEL_160;
  }

  v101 = v99[3];
  v100 = v99[4];
  if (!v100)
  {
LABEL_160:
    std::mutex::unlock(v94);
    v100 = 0;
    v102 = 1;
    goto LABEL_161;
  }

  atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v94);
  atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v100);
  v102 = 0;
LABEL_161:
  v103 = *v16;
  if (!*v16)
  {
    goto LABEL_184;
  }

  v104 = *(*a2 + 52);
  v105 = (a1 + 536);
  do
  {
    if (*(v103 + 7) >= v104)
    {
      v105 = v103;
    }

    v103 = v103[*(v103 + 7) < v104];
  }

  while (v103);
  if (v105 == v16 || *(v105 + 7) > v104 || (v106 = *(v105 + 8)) == 0)
  {
LABEL_184:
    v110 = 0;
    goto LABEL_185;
  }

  if ((PersonalityInfo::canHaveVoiceSupport(*a2) & 1) == 0)
  {
    if ((*(a2 + 43) & 1) != 0 || (a2[11] & 1) != 0 || *(a2 + 45) == 1)
    {
      v162 = *(a1 + 40);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        v163 = PersonalityInfo::logPrefix(*a2);
        *buf = 136315394;
        *&buf[4] = v163;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "#I %s%sCall Forwarding/ Call Waiting / Called-ID are not possible on non-voice supported persona", buf, 0x16u);
      }

      *(a2 + 43) = 0;
      *(a2 + 45) = 0;
      goto LABEL_229;
    }

LABEL_276:
    v110 = 0;
    goto LABEL_277;
  }

  if (v106 == 3)
  {
    v107 = sub_10147C26C(a1, a2);
    theDict[0] = 0;
    (*(*v101 + 80))(buf, v101, *(*a2 + 52), 1, @"CallForwardingDialingCodes", 0, 0);
    sub_100010180(theDict, buf);
    sub_10000A1EC(buf);
    v108 = (theDict[0] != 0) | v107 & 1;
    v109 = *(a2 + 43);
    v110 = v109 != v108;
    if (v109 != v108)
    {
      v229 = *(a1 + 40);
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
      {
        v227 = PersonalityInfo::logPrefix(*a2);
        v223 = CSIBOOLAsString(*(a2 + 43));
        v111 = CSIBOOLAsString(v108);
        *buf = 136315906;
        *&buf[4] = v227;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v245 = 2080;
        v246 = v223;
        v247 = 2080;
        v248 = v111;
        _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_DEFAULT, "#I %s%sCall forwarding support is changing from %s to %s", buf, 0x2Au);
      }

      *(a2 + 43) = v108;
    }

    __p[0] = 0;
    (*(*v101 + 80))(buf, v101, *(*a2 + 52), 1, @"CallWaitingDialingCodes", 0, 0);
    sub_100010180(__p, buf);
    sub_10000A1EC(buf);
    v112 = v107;
    v113 = (__p[0] != 0) | v107 & 1;
    if (*(a2 + 44) != v113)
    {
      v114 = *(a1 + 40);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        *v230 = PersonalityInfo::logPrefix(*a2);
        v115 = CSIBOOLAsString(*(a2 + 44));
        v116 = CSIBOOLAsString(v113);
        *buf = 136315906;
        *&buf[4] = *v230;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v245 = 2080;
        v246 = v115;
        v247 = 2080;
        v248 = v116;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I %s%sCall waiting support is changing from %s to %s", buf, 0x2Au);
      }

      *(a2 + 44) = v113;
      v110 = 1;
    }

    if (*(a2 + 45) != v112)
    {
      v117 = *(a1 + 40);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v118 = PersonalityInfo::logPrefix(*a2);
        v119 = CSIBOOLAsString(*(a2 + 45));
        v120 = CSIBOOLAsString(v112);
        *buf = 136315906;
        *&buf[4] = v118;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v245 = 2080;
        v246 = v119;
        v247 = 2080;
        v248 = v120;
        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "#I %s%sCaller ID support is changing from %s to %s", buf, 0x2Au);
      }

      *(a2 + 45) = v112;
      v110 = 1;
    }

    sub_10001021C(__p);
    sub_10001021C(theDict);
    goto LABEL_277;
  }

  if (v106 > 2)
  {
    goto LABEL_276;
  }

  (*(*v101 + 96))(buf, v101, *(*a2 + 52), 1, @"ShowCallForwardingSwitch");
  LOBYTE(theDict[0]) = 0;
  if (*buf)
  {
    v173 = *buf;
    *v231 = CFGetTypeID(*buf);
    if (*v231 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(theDict, v173, v174);
    }
  }

  v232 = LOBYTE(theDict[0]);
  sub_10000A1EC(buf);
  (*(*v101 + 96))(buf, v101, *(*a2 + 52), 1, @"ShowCallWaitingSwitch", kCFBooleanTrue, 0);
  v175 = *buf;
  LOBYTE(theDict[0]) = 0;
  if (*buf)
  {
    v224 = CFGetTypeID(*buf);
    if (v224 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(theDict, v175, v176);
    }
  }

  v225 = LOBYTE(theDict[0]);
  sub_10000A1EC(buf);
  (*(*v101 + 96))(buf, v101, *(*a2 + 52), 1, @"ShowCallerIDSwitch", kCFBooleanTrue, 0);
  v177 = *buf;
  LOBYTE(theDict[0]) = 0;
  if (*buf)
  {
    v178 = CFGetTypeID(*buf);
    if (v178 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(theDict, v177, v179);
    }
  }

  v180 = LOBYTE(theDict[0]);
  sub_10000A1EC(buf);
  v181 = v225;
  if (v106 == 2 && (*v30 & 8) != 0)
  {
    v182 = *(a1 + 40);
    v180 = 0;
    v181 = 0;
    v232 = 0;
    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
    {
      v183 = PersonalityInfo::logPrefix(*a2);
      *buf = 136315394;
      *&buf[4] = v183;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "#I %s%sSupport for Supp Services is false as the device is on a CDMA core network", buf, 0x16u);
      v180 = 0;
      v181 = 0;
      v232 = 0;
    }
  }

  v184 = *(a2 + 43);
  v110 = v184 != v232;
  if (v184 != v232)
  {
    v185 = *(a1 + 40);
    if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
    {
      v228 = PersonalityInfo::logPrefix(*a2);
      v226 = CSIBOOLAsString(*(a2 + 43));
      v186 = CSIBOOLAsString(v232);
      *buf = 136315906;
      *&buf[4] = v228;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v245 = 2080;
      v246 = v226;
      v247 = 2080;
      v248 = v186;
      _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "#I %s%sSupport for Call Forwarding is changing from %s to %s", buf, 0x2Au);
    }

    *(a2 + 43) = v232;
  }

  if (*(a2 + 44) != v181)
  {
    v187 = *(a1 + 40);
    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      *v233 = PersonalityInfo::logPrefix(*a2);
      v188 = CSIBOOLAsString(*(a2 + 44));
      v189 = CSIBOOLAsString(v181);
      *buf = 136315906;
      *&buf[4] = *v233;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v245 = 2080;
      v246 = v188;
      v247 = 2080;
      v248 = v189;
      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I %s%sSupport for Call Waiting is changing from %s to %s", buf, 0x2Au);
    }

    *(a2 + 44) = v181;
    v110 = 1;
  }

  if (*(a2 + 45) != v180)
  {
    v190 = *(a1 + 40);
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      v191 = PersonalityInfo::logPrefix(*a2);
      v192 = CSIBOOLAsString(*(a2 + 45));
      v193 = CSIBOOLAsString(v180);
      *buf = 136315906;
      *&buf[4] = v191;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v245 = 2080;
      v246 = v192;
      v247 = 2080;
      v248 = v193;
      _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "#I %s%sSupport for Caller ID is changing from %s to %s", buf, 0x2Au);
    }

    *(a2 + 45) = v180;
LABEL_229:
    v110 = 1;
  }

LABEL_277:
  if (*(a2 + 42))
  {
    if (!v110)
    {
      goto LABEL_185;
    }
  }

  else
  {
    *(a2 + 42) = 1;
  }

  v194 = *(*a2 + 52);
  theDict[0] = 0;
  v195 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v194, v195, v196);
  sub_10000501C(buf, "/cc/props/supp_services_capability_changed");
  __p[0] = theDict[0];
  theDict[0] = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(__p[0]);
  __p[0] = 0;
  if (SHIBYTE(v245) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(theDict[0]);
  v110 = 1;
LABEL_185:
  if ((v102 & 1) == 0)
  {
    sub_100004A34(v100);
  }

  v121 = v235 == v234 && v88 == v87;
  v122 = v237;
  if (!v121 || v236 != v238)
  {
    v122 = 1;
  }

  if ((v122 | v110) == 1)
  {
    v124 = *(a1 + 40);
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      v125 = PersonalityInfo::logPrefix(*a2);
      *buf = 136315394;
      *&buf[4] = v125;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "#I %s%sCapabilities have changed", buf, 0x16u);
    }

    theDict[0] = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v127 = theDict[0];
      theDict[0] = Mutable;
      *buf = v127;
      sub_1000296E0(buf);
    }

    if (v236 != v238)
    {
      v128 = theDict[0];
      v129 = kConferenceCallType;
      v130 = sub_1000A0614(a1, *(*a2 + 52), kConferenceCallType);
      CFDictionarySetValue(v128, v129, v130);
    }

    if (v237)
    {
      v131 = theDict[0];
      v132 = kSimultaneousCallAndDataSupported;
      v133 = sub_1000A0614(a1, *(*a2 + 52), kSimultaneousCallAndDataSupported);
      CFDictionarySetValue(v131, v132, v133);
      v134 = theDict[0];
      v135 = kSimultaneousCallAndDataCurrentlySupported;
      v136 = sub_1000A0614(a1, *(*a2 + 52), kSimultaneousCallAndDataCurrentlySupported);
      CFDictionarySetValue(v134, v135, v136);
    }

    if (v110)
    {
      v137 = theDict[0];
      v138 = kCallerIDCapability;
      v139 = sub_1000A0614(a1, *(*a2 + 52), kCallerIDCapability);
      CFDictionarySetValue(v137, v138, v139);
      v140 = theDict[0];
      v141 = kCallForwardingCapability;
      v142 = sub_1000A0614(a1, *(*a2 + 52), kCallForwardingCapability);
      CFDictionarySetValue(v140, v141, v142);
      v143 = theDict[0];
      v144 = kCallWaitingCapability;
      v145 = sub_1000A0614(a1, *(*a2 + 52), kCallWaitingCapability);
      CFDictionarySetValue(v143, v144, v145);
    }

    if (CFDictionaryGetCount(theDict[0]) >= 1)
    {
      v147 = *a2;
      if (*(*a2 + 52) != 2)
      {
        ctu::cf_to_xpc(theDict[0], v146);
        __p[0] = xpc_null_create();
        sub_10002A37C(75, buf, __p);
        xpc_release(__p[0]);
        xpc_release(*buf);
        v147 = *a2;
      }

      v148 = *(a1 + 560);
      PersonalityInfo::uuid(buf, v147);
      (*(*v148 + 16))(v148, *buf, theDict[0]);
      sub_1000475BC(buf);
    }

    sub_1000296E0(theDict);
  }
}

void sub_10147B468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100045C8C(&a20);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(a1);
}

void sub_10147B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SimTypeForCard = BasicSimInfo::getSimTypeForCard();
  if (SimTypeForCard)
  {
    v6 = SimTypeForCard;
    v7 = *(a2 + 24);
    v8 = v7 != SimTypeForCard;
    if (v7 != SimTypeForCard)
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(*a2);
        v24 = 136315906;
        v25 = v10;
        v26 = 2080;
        v27 = " ";
        v28 = 2080;
        v29 = subscriber::asString();
        v30 = 2080;
        v31 = subscriber::asString();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sRaw 1x SIM type is changing from %s to %s", &v24, 0x2Au);
      }

      *(a2 + 24) = v6;
    }

    if (*(a2 + 28) != v6)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = PersonalityInfo::logPrefix(*a2);
        v13 = subscriber::asString();
        v14 = subscriber::asString();
        v24 = 136315906;
        v25 = v12;
        v26 = 2080;
        v27 = " ";
        v28 = 2080;
        v29 = v13;
        v30 = 2080;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s1x SIM type is changing from %s to %s", &v24, 0x2Au);
        v6 = *(a2 + 24);
      }

      *(a2 + 28) = v6;
      v15 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if (*(a2 + 52) != 1)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(*a2);
    v24 = 136315394;
    v25 = v17;
    v26 = 2080;
    v27 = " ";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sMultiSim1xOverride is enabled. Removed 1x SIM type", &v24, 0x16u);
  }

  v8 = 0;
  v15 = 0;
  *(a2 + 28) = *(a2 + 24);
LABEL_16:
  v18 = BasicSimInfo::getSimTypeForCard();
  if (v18)
  {
    v19 = v18;
    if (*(a2 + 32) != v18)
    {
      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = PersonalityInfo::logPrefix(*a2);
        v22 = subscriber::asString();
        v23 = subscriber::asString();
        v24 = 136315906;
        v25 = v21;
        v26 = 2080;
        v27 = " ";
        v28 = 2080;
        v29 = v22;
        v30 = 2080;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sGW SIM type is changing from %s to %s", &v24, 0x2Au);
      }

      *(a2 + 32) = v19;
      v15 = 1;
    }
  }

  if (v8)
  {
    sub_10147B9BC(a1);
  }

  if (v15)
  {
    sub_10147942C(a1, a2);
  }
}

void sub_10147B9BC(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *v2;
  v4 = v2[1];
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (!*(*v3 + 49))
      {
        v5 += *(*v3 + 48);
      }

      v3 += 16;
    }

    while (v3 != v4);
    v6 = v5 > 1;
  }

  v7 = *(a1 + 72);
  v8 = (a1 + 80);
  if (v7 != (a1 + 80))
  {
    v9 = 0;
    v10 = *(a1 + 72);
    do
    {
      if (*(v10[7] + 24))
      {
        ++v9;
      }

      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != v8);
    do
    {
      v14 = v7[7];
      if (v6)
      {
        v15 = *v14;
        v17 = *(a1 + 552) != *(*v14 + 52) && v9 > 1;
        *(v14 + 52) = v17;
        if (v17)
        {
          if (*(v14 + 28))
          {
            *(v14 + 28) = 0;
            v18 = *(a1 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = PersonalityInfo::logPrefix(v15);
              *buf = 136315394;
              v26 = v19;
              v27 = 2080;
              v28 = " ";
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sMultiSim1xOverride is enabled. Disabling 1x SIM type", buf, 0x16u);
            }

LABEL_34:
            sub_10147942C(a1, v14);
            goto LABEL_35;
          }

          goto LABEL_35;
        }
      }

      else
      {
        *(v14 + 52) = 0;
      }

      v20 = *(v14 + 24);
      if (v20)
      {
        v21 = *(a1 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = PersonalityInfo::logPrefix(*v14);
          *buf = 136315394;
          v26 = v22;
          v27 = 2080;
          v28 = " ";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sMultiSim1xOverride is disabled. Restoring 1x SIM type", buf, 0x16u);
          v20 = *(v14 + 24);
        }

        *(v14 + 28) = v20;
        goto LABEL_34;
      }

LABEL_35:
      v23 = v7[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v7[2];
          v13 = *v24 == v7;
          v7 = v24;
        }

        while (!v13);
      }

      v7 = v24;
    }

    while (v24 != v8);
  }
}

void sub_10147BC2C(WirelessTechnologyList *a1, uint64_t a2, _DWORD *a3, WirelessTechnologyList *a4, WirelessTechnologyList *a5)
{
  v10 = *a4;
  *a1 = *a4;
  v11 = a3[4];
  if ((v11 & *a5) != 0)
  {
    *a1 = *a5;
    goto LABEL_28;
  }

  if ((v11 & v10) == 0 && (a3[4] & 0x20) != 0)
  {
    *a1 = 4;
    ServiceMap = Registry::getServiceMap(*(a2 + 56));
    v14 = ServiceMap;
    if (v15 < 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    *buf = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, buf);
    if (v19)
    {
      v21 = v19[3];
      v20 = v19[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v14);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v22 = 0;
LABEL_15:
        v39[0] = 0;
        (*(*v21 + 96))(buf, v21, *(*a3 + 52), 2, @"FallbackMethod", 0, 0);
        sub_10010B240(v39, buf);
        sub_10000A1EC(buf);
        if (v39[0])
        {
          *buf = 0;
          ctu::cf::assign(buf, v39[0], v23);
          v24 = *buf;
          if (*buf == 2)
          {
            *a1 = 8;
          }

          else
          {
            v25 = *(a2 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = PersonalityInfo::logPrefix(*a3);
              *buf = 136315650;
              *&buf[4] = v26;
              v44 = 2080;
              v45 = " ";
              v46 = 1024;
              LODWORD(v47) = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sUnknown fall back method value found in the operator bundle: %d", buf, 0x1Cu);
            }
          }
        }

        v27 = *(a2 + 40);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = PersonalityInfo::logPrefix(*a3);
          WirelessTechnologyList::asString(__p, a1);
          v29 = v42 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = v28;
          v44 = 2080;
          v45 = " ";
          v46 = 2080;
          v47 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sCall handling tech from operator bundle: %s", buf, 0x20u);
          if (v42 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100029A48(v39);
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_15;
  }

LABEL_28:
  v30 = *(a2 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(*a3);
    WirelessTechnologyList::asString(__p, a4);
    if (v42 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    WirelessTechnologyList::asString(v39, a5);
    v33 = v40;
    v34 = v39[0];
    WirelessTechnologyList::asString(v37, a1);
    v35 = v39;
    if (v33 < 0)
    {
      v35 = v34;
    }

    if (v38 >= 0)
    {
      v36 = v37;
    }

    else
    {
      v36 = v37[0];
    }

    *buf = 136316162;
    *&buf[4] = v31;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v32;
    v48 = 2080;
    v49 = v35;
    v50 = 2080;
    v51 = v36;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sPrimary technology: %s, Secondary: %s, calls are going to be handled on: %s", buf, 0x34u);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (v42 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10147C044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  sub_100029A48(&__p);
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10147C0D0(Registry *a1, void *a2)
{
  ServiceMap = Registry::getServiceMap(a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v18 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v18);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 24))(&cf, v11, *a2 + 24, @"NetworkSupportsVoPS", @"Capabilities", 0, 1);
  v13 = cf;
  LOBYTE(v18) = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v18, v13, v15);
      LOBYTE(v13) = v18;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return v13 & 1;
}

void sub_10147C23C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10147C26C(uint64_t a1, PersonalityInfo **a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(*a2 + 13), 1, @"SupportsSupplementaryServicesOverIMS", kCFBooleanFalse, 0);
  sub_10002FE1C(&v20, buf);
  sub_10000A1EC(buf);
  if (*(a2 + 21) == 1)
  {
    buf[0] = 0;
    ctu::cf::assign(buf, v20, v14);
    v15 = buf[0];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(*a2);
    v18 = CSIBOOLAsString(v15 & 1);
    *buf = 136315650;
    *&buf[4] = v17;
    v22 = 2080;
    v23 = " ";
    v24 = 2080;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sSupp. Services support over IMS - %s", buf, 0x20u);
  }

  sub_100045C8C(&v20);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v15 & 1;
}

void sub_10147C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10147C4E4(void *a1, int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v10 = v9;
      (*(*v4 + 24))(v4, v9);
    }

    else
    {
      v10 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v10 = 0;
  }

  v5 = a1[2];
  if (v5)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v11[0] = v6;
      v11[1] = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
      v8 = a1[2];
      if (v8)
      {
        if (std::__shared_weak_count::lock(v8))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  sub_100013CC4();
}

void sub_10147C728(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

const void **sub_10147C760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v74 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = v74;
    v74 = Mutable;
    __p = v6;
    Mutable = sub_1000296E0(&__p);
  }

  __p = 0;
  v72 = 0;
  v73 = 0;
  SupportedMessageModes = capabilities::ct::getSupportedMessageModes(Mutable);
  v8 = __p;
  v9 = v72;
  if (__p != v72)
  {
    while (*v8 != 4)
    {
      if (++v8 == v72)
      {
        v8 = v72;
        break;
      }
    }
  }

  v10 = v74;
  v11 = kCFBooleanFalse;
  if (capabilities::ct::supportsCapabilityAPN(SupportedMessageModes))
  {
    v12 = kCFBooleanTrue;
  }

  else
  {
    v12 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v10, kAPNCapability, v12);
  v13 = v74;
  if (capabilities::ct::supportsCapabilitySIM(v14))
  {
    v15 = kCFBooleanTrue;
  }

  else
  {
    v15 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v13, kSIMCapability, v15);
  v16 = v74;
  if (capabilities::ct::getRadioModuleType(v17) == 2)
  {
    v18 = kCFBooleanTrue;
  }

  else
  {
    v18 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v16, kSIMPhonebookCapability, v18);
  CFDictionarySetValue(v74, kUMTSDeviceCapability, kCFBooleanTrue);
  v19 = v74;
  if (capabilities::ct::supportsCapabilityC2KDevice(v20))
  {
    v21 = kCFBooleanTrue;
  }

  else
  {
    v21 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v19, kC2KDeviceCapability, v21);
  if (v8 == v9)
  {
    v22 = kCFBooleanFalse;
  }

  else
  {
    v22 = kCFBooleanTrue;
  }

  CFDictionarySetValue(v74, kCellBroadcastCapability, v22);
  CFDictionarySetValue(v74, kLTEDeviceCapability, kCFBooleanTrue);
  v23 = kCallerIDCapability;
  v24 = sub_1000A0614(a1, a2, kCallerIDCapability);
  v25 = v24;
  v26 = kCFBooleanFalse;
  if (v24)
  {
    v27 = CFGetTypeID(v24);
    if (v27 == CFBooleanGetTypeID())
    {
      v26 = v25;
    }

    else
    {
      v26 = kCFBooleanFalse;
    }
  }

  v28 = kCallWaitingCapability;
  v29 = sub_1000A0614(a1, a2, kCallWaitingCapability);
  v30 = v29;
  v31 = kCFBooleanFalse;
  if (v29)
  {
    v32 = CFGetTypeID(v29);
    if (v32 == CFBooleanGetTypeID())
    {
      v31 = v30;
    }

    else
    {
      v31 = kCFBooleanFalse;
    }
  }

  value = v31;
  v33 = kCallForwardingCapability;
  v34 = sub_1000A0614(a1, a2, kCallForwardingCapability);
  v35 = v34;
  v36 = kCFBooleanFalse;
  if (v34)
  {
    v37 = CFGetTypeID(v34);
    if (v37 == CFBooleanGetTypeID())
    {
      v36 = v35;
    }

    else
    {
      v36 = kCFBooleanFalse;
    }
  }

  v68 = v36;
  v67 = kSimultaneousCallAndDataSupported;
  v38 = sub_1000A0614(a1, a2, kSimultaneousCallAndDataSupported);
  v39 = v38;
  v40 = kCFBooleanFalse;
  if (v38)
  {
    v41 = CFGetTypeID(v38);
    if (v41 == CFBooleanGetTypeID())
    {
      v40 = v39;
    }

    else
    {
      v40 = kCFBooleanFalse;
    }
  }

  v65 = v40;
  v63 = kSimultaneousCallAndDataCurrentlySupported;
  v42 = sub_1000A0614(a1, a2, kSimultaneousCallAndDataCurrentlySupported);
  v43 = v42;
  v44 = kCFBooleanFalse;
  if (v42)
  {
    v45 = CFGetTypeID(v42);
    if (v45 == CFBooleanGetTypeID())
    {
      v44 = v43;
    }

    else
    {
      v44 = kCFBooleanFalse;
    }
  }

  v62 = v44;
  v64 = v33;
  key = v28;
  v46 = v23;
  v47 = kAgentCapability;
  v48 = sub_1000A0614(a1, a2, kAgentCapability);
  v49 = v48;
  v50 = kCFBooleanFalse;
  if (v48)
  {
    v51 = CFGetTypeID(v48);
    if (v51 == CFBooleanGetTypeID())
    {
      v50 = v49;
    }

    else
    {
      v50 = kCFBooleanFalse;
    }
  }

  v52 = kSuspendInternetOnBBCall;
  v53 = sub_1000A0614(a1, a2, kSuspendInternetOnBBCall);
  v54 = v53;
  if (v53)
  {
    v55 = CFGetTypeID(v53);
    if (v55 == CFBooleanGetTypeID())
    {
      v11 = v54;
    }
  }

  v56 = kConferenceCallType;
  v57 = sub_1000A0614(a1, a2, kConferenceCallType);
  v58 = v57;
  v59 = kConferenceCallTypeUnknown;
  if (v57)
  {
    v60 = CFGetTypeID(v57);
    if (v60 == CFStringGetTypeID())
    {
      v59 = v58;
    }
  }

  CFDictionarySetValue(v74, v46, v26);
  CFDictionarySetValue(v74, key, value);
  CFDictionarySetValue(v74, v64, v68);
  CFDictionarySetValue(v74, v56, v59);
  CFDictionarySetValue(v74, v67, v65);
  CFDictionarySetValue(v74, v63, v62);
  CFDictionarySetValue(v74, v47, v50);
  CFDictionarySetValue(v74, v52, v11);
  sub_100010180(a3, &v74);
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  return sub_1000296E0(&v74);
}

uint64_t sub_10147CC2C(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101482D28;
  v7[3] = &unk_101F3F8B0;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A530;
    v12 = &unk_101F3F760;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000595D4;
    v12 = &unk_101F3F740;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

uint64_t sub_10147CD64(uint64_t a1)
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

void sub_10147CDE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10147CE3C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10147CE7C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10147CEA8(ServiceManager::Service *this)
{
  *this = off_101F3EFA0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10147CF04(ServiceManager::Service *this)
{
  *this = off_101F3EFA0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void *sub_10147CF74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Name = CapabilitiesHandler::getName(*(a1 + 8));

  return sub_10000501C(a2, Name);
}

uint64_t *sub_10147CFB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10147CFF8(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101478510(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101478510(v4, 0);
}

void sub_10147D098(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I started", v2, 2u);
  }
}

void sub_10147D0FC(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_10147D210(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 96));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10147D294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10147D2B0(uint64_t *a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = *(*a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
      v7 = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10147DD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10147DE18(void *a1)
{
  *a1 = off_101F3F020;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10147DE64(void *a1)
{
  *a1 = off_101F3F020;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10147DF44(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F020;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10147DF84(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10147DF94(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10147DFD4(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[3];
  if (!v4)
  {
    return;
  }

  v6 = a1[1];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (a1[2])
  {
    v9 = v6[5];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      asString();
      v10 = v60 >= 0 ? __p : *__p;
      buf = 136315138;
      *buf_4 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I event: %s", &buf, 0xCu);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(*__p);
      }
    }

    v11 = v6[33];
    v12 = *v11;
    v13 = *(v11 + 8);
    if (*v11 != v13)
    {
      v14 = *(a3 + 23);
      if (v14 >= 0)
      {
        v15 = *(a3 + 23);
      }

      else
      {
        v15 = a3[1];
      }

      if (v14 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      while (1)
      {
        v17 = *v12;
        v18 = *(*v12 + 47);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(*v12 + 32);
        }

        if (v18 == v15)
        {
          v22 = *(v17 + 24);
          v20 = v17 + 24;
          v21 = v22;
          v23 = (v19 >= 0 ? v20 : v21);
          if (!memcmp(v23, v16, v15))
          {
            break;
          }
        }

        v12 += 2;
        if (v12 == v13)
        {
          goto LABEL_33;
        }
      }
    }

    if (v12 == v13)
    {
LABEL_33:
      v25 = 0;
      v24 = 0;
    }

    else
    {
      v25 = *v12;
      v24 = v12[1];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v25)
      {
        if (*(v25 + 49))
        {
LABEL_116:
          if (v24)
          {
            sub_100004A34(v24);
          }

          goto LABEL_118;
        }

        v26 = 0;
LABEL_35:
        v27 = (v6 + 9);
        v28 = sub_100007A6C((v6 + 9), a3);
        v29 = v6 + 10;
        if (v6 + 10 == v28)
        {
          v32 = 0;
          v31 = 0;
          v30 = 0;
        }

        else
        {
          v31 = *(v28 + 56);
          v30 = *(v28 + 64);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = v31 != 0;
          if (v31)
          {
            v33 = v26;
          }

          else
          {
            v33 = 1;
          }

          if ((v33 & 1) == 0)
          {
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v34 = v31[1];
            *v31 = v25;
            v31[1] = v24;
            if (v34)
            {
              sub_100004A34(v34);
            }

            v32 = 1;
          }
        }

        v35 = *(a3 + 24);
        if (v35 > 3)
        {
          if (v35 - 6 < 2)
          {
            if (v32)
            {
              *__p = 1;
              *&__p[8] = v6 + 62;
              v39 = v6[67];
              if (v39)
              {
                v40 = *(*v31 + 13);
                v41 = v6 + 67;
                v42 = v6[67];
                do
                {
                  if (*(v42 + 28) >= v40)
                  {
                    v41 = v42;
                  }

                  v42 = *(v42 + 8 * (*(v42 + 28) < v40));
                }

                while (v42);
                if (v41 != v6 + 67 && *(v41 + 7) <= v40)
                {
                  v43 = v41[1];
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
                    v50 = v41;
                    do
                    {
                      v44 = v50[2];
                      v51 = *v44 == v50;
                      v50 = v44;
                    }

                    while (!v51);
                  }

                  if (v6[66] == v41)
                  {
                    v6[66] = v44;
                  }

                  --v6[68];
                  sub_100018288(v39, v41);
                  operator delete(v41);
                }
              }

              sub_101482B00(__p);
              v52 = *v29;
              if (*v29)
              {
                v53 = v6 + 10;
                do
                {
                  v54 = sub_1000068BC((v52 + 32), a3);
                  if ((v54 & 0x80u) == 0)
                  {
                    v53 = v52;
                  }

                  v52 = *(v52 + ((v54 >> 4) & 8));
                }

                while (v52);
                if (v53 != v29 && (sub_1000068BC(a3, v53 + 32) & 0x80) == 0)
                {
                  v55 = v53[1];
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
                    v57 = v53;
                    do
                    {
                      v56 = v57[2];
                      v51 = *v56 == v57;
                      v57 = v56;
                    }

                    while (!v51);
                  }

                  if (*v27 == v53)
                  {
                    *v27 = v56;
                  }

                  v58 = v6[10];
                  --v6[11];
                  sub_100018288(v58, v53);
                  sub_1000D57F4((v53 + 4));
                  operator delete(v53);
                }
              }
            }

            goto LABEL_114;
          }

          if (v35 == 4)
          {
            if (!v32)
            {
              goto LABEL_114;
            }

            v45 = v6[5];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = PersonalityInfo::logPrefix(*v31);
              v47 = *v31 + 24;
              v48 = *(*v31 + 47);
              v49 = v48;
              if ((v48 & 0x80u) != 0)
              {
                v48 = *(*v31 + 4);
              }

              if (v49 < 0)
              {
                v47 = *(*v31 + 3);
              }

              if (!v48)
              {
                v47 = "<invalid>";
              }

              *__p = 136315650;
              *&__p[4] = v46;
              *&__p[12] = 2080;
              *&__p[14] = " ";
              v60 = 2080;
              *&v61 = v47;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier bundle changed for '%s'", __p, 0x20u);
            }
          }

          else
          {
            if (v35 != 5 || !v32)
            {
              goto LABEL_114;
            }

            sub_101478B40(v6, v31);
          }
        }

        else
        {
          if (*(a3 + 24) <= 1u)
          {
            if (*(a3 + 24))
            {
LABEL_59:
              v36 = !v32;
              if (!v25)
              {
                v36 = 1;
              }

              if ((v36 & 1) == 0)
              {
                v37 = v6[35];
                v38 = v6[36];
                if (v37 != v38)
                {
                  while (*v37 != *(v25 + 52))
                  {
                    v37 += 42;
                    if (v37 == v38)
                    {
                      goto LABEL_114;
                    }
                  }

                  sub_10147B690(v6, v31, v37);
                }
              }

              goto LABEL_114;
            }

            if (((v26 | v32) & 1) == 0)
            {
              operator new();
            }

LABEL_114:
            sub_10147B9BC(v6);
            if (v30)
            {
              sub_100004A34(v30);
            }

            goto LABEL_116;
          }

          if (v35 != 2)
          {
            if (v35 == 3)
            {
              goto LABEL_59;
            }

            goto LABEL_114;
          }

          if (!v32)
          {
            goto LABEL_114;
          }
        }

        sub_10147942C(v6, v31);
        goto LABEL_114;
      }
    }

    v26 = 1;
    goto LABEL_35;
  }

LABEL_118:

  sub_100004A34(v8);
}

void sub_10147E770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  sub_1000D57A8(&a15);
  sub_1000D522C(&a9);
  sub_100004A34(v18);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10147E7E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10147E82C(void *a1)
{
  *a1 = off_101F3F0A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10147E878(void *a1)
{
  *a1 = off_101F3F0A0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10147E958(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F0A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10147E998(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10147E9A8(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10147E9E8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v12 = *v3;
  v13 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[2];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[3])
      {
        v8 = *(v5 + 280);
        v9 = *(v5 + 288);
        while (v8 != v9)
        {
          if (v8[2] == 5)
          {
            v10 = *v8;
            v11 = v12;
            if (v12 != *(&v12 + 1))
            {
              while (*v11 != v10)
              {
                v11 += 42;
                if (v11 == *(&v12 + 1))
                {
                  goto LABEL_13;
                }
              }
            }

            if (v11 == *(&v12 + 1) || BasicSimInfo::operator!=())
            {
LABEL_13:
              v14 = 0;
              v15 = 0;
              sub_1000A0918(&v14, v5, v10);
              if (v14 && *(*v14 + 48) == 1)
              {
                sub_10147B690(v5, v14, v8);
              }

              if (v15)
              {
                sub_100004A34(v15);
              }
            }
          }

          v8 += 42;
        }
      }

      sub_100004A34(v7);
    }
  }

  v14 = &v12;
  sub_1000B2AF8(&v14);
}

void sub_10147EB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  a13 = &a9;
  sub_1000B2AF8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10147EB5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10147EBA8(void *a1)
{
  *a1 = off_101F3F120;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10147EBF4(void *a1)
{
  *a1 = off_101F3F120;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10147ECD4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F120;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10147ED14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10147ED24(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10147ED64(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v22 = *v3;
  v23 = v5;
  if (v3[2])
  {
    v5[2] = &v23;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  sub_100109E38(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v21 = v8;
      if (a1[3])
      {
        v9 = *(v7 + 472);
        if (v9 != (v7 + 480))
        {
          do
          {
            v25 = 0;
            v26 = 0;
            sub_1000A0918(&v25, v7, *(v9 + 7));
            v10 = v25;
            if (v25)
            {
              v11 = v23;
              if (!v23)
              {
                goto LABEL_16;
              }

              v12 = *(v9 + 7);
              v13 = &v23;
              do
              {
                if (*(v11 + 7) >= v12)
                {
                  v13 = v11;
                }

                v11 = v11[*(v11 + 7) < v12];
              }

              while (v11);
              if (v13 == &v23 || v12 < *(v13 + 7) || *(v9 + 8) != *(v13 + 8))
              {
LABEL_16:
                v14 = *(v7 + 40);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = PersonalityInfo::logPrefix(*v10);
                  v16 = asString();
                  v17 = asString();
                  *buf = 136315906;
                  v28 = v15;
                  v29 = 2080;
                  v30 = " ";
                  v31 = 2080;
                  v32 = v16;
                  v33 = 2080;
                  v34 = v17;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sRAT is changing from %s to %s", buf, 0x2Au);
                }

                *(v10 + 16) = asWirelessTechnology();
                sub_10147942C(v7, v10);
              }
            }

            if (v26)
            {
              sub_100004A34(v26);
            }

            v18 = v9[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v9[2];
                v20 = *v19 == v9;
                v9 = v19;
              }

              while (!v20);
            }

            v9 = v19;
          }

          while (v19 != (v7 + 480));
        }
      }

      sub_100004A34(v21);
    }
  }

  sub_10006DCAC(&v22, v23);
}

uint64_t sub_10147EFF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10147F044(void *a1)
{
  *a1 = off_101F3F1A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10147F090(void *a1)
{
  *a1 = off_101F3F1A0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10147F170(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F1A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10147F1B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10147F1C0(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10147F200(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v22 = *v3;
  v23 = v5;
  if (v3[2])
  {
    v5[2] = &v23;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  sub_1004CD52C(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        v10 = *(v7 + 400);
        if (v10 != (v7 + 408))
        {
          while (1)
          {
            v25 = 0;
            v26 = 0;
            sub_1000A0918(&v25, v7, *(v10 + 7));
            v11 = v25;
            if (v25)
            {
              v12 = v23;
              if (!v23)
              {
                goto LABEL_16;
              }

              v13 = *(v10 + 7);
              v14 = &v23;
              do
              {
                if (*(v12 + 7) >= v13)
                {
                  v14 = v12;
                }

                v12 = v12[*(v12 + 7) < v13];
              }

              while (v12);
              if (v14 == &v23 || v13 < *(v14 + 7))
              {
                goto LABEL_16;
              }

              if (rest::operator!=())
              {
                break;
              }
            }

LABEL_19:
            if (v26)
            {
              sub_100004A34(v26);
            }

            v19 = v10[1];
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = v10[2];
                v21 = *v20 == v10;
                v10 = v20;
              }

              while (!v21);
            }

            v10 = v20;
            if (v20 == (v7 + 408))
            {
              goto LABEL_30;
            }
          }

          v11 = v25;
LABEL_16:
          v15 = *(v7 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = PersonalityInfo::logPrefix(*v11);
            v17 = asString();
            v18 = asString();
            *buf = 136315906;
            v28 = v16;
            v29 = 2080;
            v30 = " ";
            v31 = 2080;
            v32 = v17;
            v33 = 2080;
            v34 = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sAdjusted data mode is changing from %s to %s", buf, 0x2Au);
          }

          sub_10147942C(v7, v11);
          goto LABEL_19;
        }
      }

LABEL_30:
      sub_100004A34(v9);
    }
  }

  sub_10006DCAC(&v22, v23);
}

void sub_10147F458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100004A34(v16);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10147F490(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10147F4DC(void *a1)
{
  *a1 = off_101F3F220;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10147F528(void *a1)
{
  *a1 = off_101F3F220;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10147F608(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F220;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10147F648(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10147F658(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10147F698(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v23 = *v3;
  v24 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v24;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v23 = &v24;
  }

  sub_1009DE138(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        v10 = *(v7 + 304);
        if (v10 != (v7 + 312))
        {
          do
          {
            v11 = sub_100007A6C(v7 + 72, v10 + 32);
            if (v7 + 80 != v11)
            {
              v13 = *(v11 + 56);
              v12 = *(v11 + 64);
              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v13)
              {
                v14 = sub_100007A6C(&v23, v10 + 32);
                v15 = *(v10 + 14);
                if (&v24 == v14 || v15 != *(v14 + 56) || *(v10 + 15) != *(v14 + 60) || v10[64] != *(v14 + 64))
                {
                  v16 = (v15 | *(v10 + 15)) & 1;
                  if (*(v13 + 21) != v16)
                  {
                    v17 = *(v7 + 40);
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                    {
                      v18 = PersonalityInfo::logPrefix(*v13);
                      *buf = 136315650;
                      v19 = "disabled";
                      if (v16)
                      {
                        v19 = "enabled";
                      }

                      v27 = v18;
                      v28 = 2080;
                      v29 = " ";
                      v30 = 2080;
                      v31 = v19;
                      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sVoice over IMS Feature is %s", buf, 0x20u);
                    }

                    *(v13 + 21) = v16;
                    sub_10147942C(v7, v13);
                  }
                }
              }

              if (v12)
              {
                sub_100004A34(v12);
              }
            }

            v20 = *(v10 + 1);
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
                v21 = *(v10 + 2);
                v22 = *v21 == v10;
                v10 = v21;
              }

              while (!v22);
            }

            v10 = v21;
          }

          while (v21 != (v7 + 312));
        }
      }

      sub_100004A34(v9);
    }
  }

  sub_100009970(&v23, v24);
}

uint64_t sub_10147F934(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10147F980(void *a1)
{
  *a1 = off_101F3F2A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10147F9CC(void *a1)
{
  *a1 = off_101F3F2A0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10147FAAC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F2A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10147FAEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10147FAFC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10147FB3C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v31 = *v3;
  v32 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v32;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v31 = &v32;
  }

  sub_1008E2524(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v29 = v8;
      if (a1[3])
      {
        v9 = *(v7 + 328);
        if (v9 != (v7 + 336))
        {
          while (1)
          {
            v10 = sub_100007A6C(v7 + 72, v9 + 32);
            if (v7 + 80 != v10)
            {
              break;
            }

LABEL_37:
            v24 = *(v9 + 1);
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = *(v9 + 2);
                v26 = *v25 == v9;
                v9 = v25;
              }

              while (!v26);
            }

            v9 = v25;
            if (v25 == (v7 + 336))
            {
              goto LABEL_46;
            }
          }

          v12 = *(v10 + 56);
          v11 = *(v10 + 64);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v12)
          {
            goto LABEL_35;
          }

          v13 = sub_100007A6C(&v31, v9 + 32);
          if (&v32 == v13)
          {
            if (*(v9 + 14) != 1)
            {
              goto LABEL_35;
            }

            v16 = *(v9 + 15) & 1;
            if (!v16)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (sub_1008DFB14((v9 + 56), v13 + 56))
            {
              goto LABEL_35;
            }

            v15 = *(v13 + 56);
            v14 = *(v13 + 60);
            if (*(v9 + 14) != 1)
            {
              if (v15 != 1 || (v14 & 1) == 0)
              {
                goto LABEL_35;
              }

              v16 = 0;
              LOBYTE(v30) = 0;
LABEL_24:
              if (*(v12 + 22) != v16)
              {
                v17 = *(v7 + 40);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = v17;
                  v27 = PersonalityInfo::logPrefix(*v12);
                  v18 = *v12 + 24;
                  v19 = *(*v12 + 47);
                  v20 = v19;
                  if ((v19 & 0x80u) != 0)
                  {
                    v19 = *(*v12 + 32);
                  }

                  if (v20 < 0)
                  {
                    v18 = *(*v12 + 24);
                  }

                  if (v19)
                  {
                    v21 = v18;
                  }

                  else
                  {
                    v21 = "<invalid>";
                  }

                  v22 = asStringBool(*(v12 + 22));
                  v23 = asStringBool(v30);
                  *buf = 136316162;
                  v35 = v27;
                  v36 = 2080;
                  v37 = " ";
                  v38 = 2080;
                  v39 = v21;
                  v40 = 2080;
                  v41 = v22;
                  v42 = 2080;
                  v43 = v23;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE active for Personality %s is changing from %s to %s", buf, 0x34u);
                }

                *(v12 + 22) = v16;
                sub_10147942C(v7, v12);
              }

              goto LABEL_35;
            }

            v16 = *(v9 + 15) & 1;
            if (v15 == 1)
            {
              if ((v14 & 1) != v16)
              {
                v30 = *(v9 + 15) & 1;
                goto LABEL_24;
              }

LABEL_35:
              if (v11)
              {
                sub_100004A34(v11);
              }

              goto LABEL_37;
            }

            if (!v16)
            {
              goto LABEL_35;
            }
          }

          LOBYTE(v30) = 1;
          goto LABEL_24;
        }
      }

LABEL_46:
      sub_100004A34(v29);
    }
  }

  sub_100009970(&v31, v32);
}

void sub_10147FE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, char *a17)
{
  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_100004A34(a14);
  sub_100009970(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10147FE6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10147FEB8(void *a1)
{
  *a1 = off_101F3F320;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10147FF04(void *a1)
{
  *a1 = off_101F3F320;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10147FFE4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F320;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101480024(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101480034(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101480074(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v22 = *v3;
  v23 = v5;
  if (v3[2])
  {
    v5[2] = &v23;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        v10 = *(v7 + 352);
        if (v10 != (v7 + 360))
        {
          do
          {
            v27 = 0;
            v28 = 0;
            sub_1000A0918(&v27, v7, *(v10 + 8));
            v11 = v27;
            if (v27)
            {
              v12 = v23;
              if (!v23)
              {
                goto LABEL_16;
              }

              v13 = *(v10 + 8);
              v14 = &v23;
              do
              {
                if (*(v12 + 8) >= v13)
                {
                  v14 = v12;
                }

                v12 = v12[*(v12 + 8) < v13];
              }

              while (v12);
              if (v14 == &v23 || v13 < *(v14 + 8))
              {
LABEL_16:
                v25 = 255;
                memset(v26, 0, sizeof(v26));
LABEL_17:
                if (BYTE1(v25) != *(v10 + 41))
                {
                  v15 = *(v7 + 40);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    v16 = PersonalityInfo::logPrefix(*v11);
                    v17 = asString();
                    v18 = asString();
                    *buf = 136315906;
                    v30 = v16;
                    v31 = 2080;
                    v32 = " ";
                    v33 = 2080;
                    v34 = v17;
                    v35 = 2080;
                    v36 = v18;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier bundle technology type changed from %s to %s", buf, 0x2Au);
                  }

                  sub_10147942C(v7, v11);
                }

                if (SHIBYTE(v26[2]) < 0)
                {
                  operator delete(*(&v26[1] + 1));
                }

                if (SBYTE7(v26[1]) < 0)
                {
                  operator delete(*&v26[0]);
                }

                goto LABEL_28;
              }

              if (rest::operator!=())
              {
                v11 = v27;
                LOWORD(v25) = *(v14 + 20);
                if (*(v14 + 71) < 0)
                {
                  sub_100005F2C(v26, v14[6], v14[7]);
                }

                else
                {
                  v26[0] = *(v14 + 3);
                  *&v26[1] = v14[8];
                }

                if (*(v14 + 95) < 0)
                {
                  sub_100005F2C(&v26[1] + 8, v14[9], v14[10]);
                }

                else
                {
                  *(&v26[1] + 8) = *(v14 + 9);
                  *(&v26[2] + 1) = v14[11];
                }

                goto LABEL_17;
              }
            }

LABEL_28:
            if (v28)
            {
              sub_100004A34(v28);
            }

            v19 = v10[1];
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = v10[2];
                v21 = *v20 == v10;
                v10 = v20;
              }

              while (!v21);
            }

            v10 = v20;
          }

          while (v20 != (v7 + 360));
        }
      }

      sub_100004A34(v9);
    }
  }

  sub_10032D3A4(&v22, v23);
}

void sub_10148036C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  sub_100004A34(v25);
  sub_10032D3A4(&a11, a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1014803CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101480418(void *a1)
{
  *a1 = off_101F3F3A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101480464(void *a1)
{
  *a1 = off_101F3F3A0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101480544(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F3A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101480584(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101480594(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014805D4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v21 = *v3;
  v22 = v5;
  if (v3[2])
  {
    v5[2] = &v22;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v21 = &v22;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        v10 = *(v7 + 376);
        if (v10 != (v7 + 384))
        {
          do
          {
            v26 = 0;
            v27 = 0;
            sub_1000A0918(&v26, v7, *(v10 + 8));
            v11 = v26;
            if (v26)
            {
              v12 = v22;
              if (!v22)
              {
                goto LABEL_16;
              }

              v13 = *(v10 + 8);
              v14 = &v22;
              do
              {
                if (*(v12 + 8) >= v13)
                {
                  v14 = v12;
                }

                v12 = v12[*(v12 + 8) < v13];
              }

              while (v12);
              if (v14 == &v22 || v13 < *(v14 + 8))
              {
LABEL_16:
                v24 = 255;
                memset(v25, 0, sizeof(v25));
LABEL_17:
                v15 = *(v7 + 40);
                if (*(v10 + 40))
                {
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    v16 = asString();
                    *buf = 136315138;
                    v29 = v16;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Operator bundle type is changing with %s", buf, 0xCu);
                  }

                  sub_10147942C(v7, v11);
                }

                else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  v20 = PersonalityInfo::logPrefix(*v11);
                  *buf = 136315394;
                  v29 = v20;
                  v30 = 2080;
                  v31 = " ";
                  _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#D %s%sNo operator bundle change to handle", buf, 0x16u);
                }

                if (SHIBYTE(v25[2]) < 0)
                {
                  operator delete(*(&v25[1] + 1));
                }

                if (SBYTE7(v25[1]) < 0)
                {
                  operator delete(*&v25[0]);
                }

                goto LABEL_30;
              }

              if (rest::operator!=())
              {
                v11 = v26;
                LOWORD(v24) = *(v14 + 20);
                if (*(v14 + 71) < 0)
                {
                  sub_100005F2C(v25, v14[6], v14[7]);
                }

                else
                {
                  v25[0] = *(v14 + 3);
                  *&v25[1] = v14[8];
                }

                if (*(v14 + 95) < 0)
                {
                  sub_100005F2C(&v25[1] + 8, v14[9], v14[10]);
                }

                else
                {
                  *(&v25[1] + 8) = *(v14 + 9);
                  *(&v25[2] + 1) = v14[11];
                }

                goto LABEL_17;
              }
            }

LABEL_30:
            if (v27)
            {
              sub_100004A34(v27);
            }

            v17 = v10[1];
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
                v18 = v10[2];
                v19 = *v18 == v10;
                v10 = v18;
              }

              while (!v19);
            }

            v10 = v18;
          }

          while (v18 != (v7 + 384));
        }
      }

      sub_100004A34(v9);
    }
  }

  sub_10032D3A4(&v21, v22);
}

void sub_1014808F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_100004A34(v27);
  sub_10032D3A4(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t sub_101480954(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014809A0(void *a1)
{
  *a1 = off_101F3F420;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014809EC(void *a1)
{
  *a1 = off_101F3F420;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101480ACC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3F420;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101480B0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101480B1C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101480B5C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v22 = *v3;
  v23 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v23;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  read_rest_value(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        v10 = *(v7 + 448);
        if (v10 != (v7 + 456))
        {
          do
          {
            v11 = sub_100007A6C(v7 + 72, v10 + 32);
            if (v7 + 80 != v11)
            {
              v13 = *(v11 + 56);
              v12 = *(v11 + 64);
              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v13)
              {
                v14 = sub_100007A6C(&v22, v10 + 32);
                v15 = v10[56];
                if (&v23 == v14 || v15 != *(v14 + 56))
                {
                  v16 = *(v7 + 40);
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    v17 = PersonalityInfo::logPrefix(*v13);
                    *buf = 136315650;
                    v18 = "disabled";
                    if (v15)
                    {
                      v18 = "enabled";
                    }

                    v26 = v17;
                    v27 = 2080;
                    v28 = " ";
                    v29 = 2080;
                    v30 = v18;
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sVoLTE feature %s", buf, 0x20u);
                  }

                  *(v13 + 20) = v15;
                  sub_10147942C(v7, v13);
                }
              }

              if (v12)
              {
                sub_100004A34(v12);
              }
            }

            v19 = *(v10 + 1);
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = *(v10 + 2);
                v21 = *v20 == v10;
                v10 = v20;
              }

              while (!v21);
            }

            v10 = v20;
          }

          while (v20 != (v7 + 456));
        }
      }

      sub_100004A34(v9);
    }
  }

  sub_100009970(&v22, v23);
}

uint64_t sub_101480DC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101480E88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3F4A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}