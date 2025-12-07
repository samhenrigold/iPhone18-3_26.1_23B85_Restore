uint64_t *sub_1001830A0(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_1001831A8(uint64_t a1, unsigned int *a2)
{
  sub_1000F4588();
  if (*a2 > 0x16 || ((1 << *a2) & 0x400019) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v19 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v20 = sub_100048D98(*a2);
      *buf = 136446210;
      v40 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "@WifiLoc, miscregister, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCF18(a2);
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      *buf = 0;
      v7 = sub_10000608C(a1, buf, 1);
      *buf = 3;
      v8 = sub_10000608C(a1, buf, 1);
      *buf = 4;
      v9 = sub_10000608C(a1, buf, 1);
      *buf = 22;
      v10 = sub_10000608C(a1, buf, 1);
      *buf = 136447234;
      v40 = v6;
      v41 = 1026;
      v42 = v7;
      v43 = 1026;
      v44 = v8;
      v45 = 1026;
      v46 = v9;
      v47 = 1026;
      v48 = v10;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, register, notification, %{public}s, lsb, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v11 = qword_1025D4638;
      v12 = sub_100048D98(*a2);
      v29 = 0;
      v13 = sub_10000608C(a1, &v29, 1);
      v29 = 3;
      v14 = sub_10000608C(a1, &v29, 1);
      v29 = 4;
      v15 = sub_10000608C(a1, &v29, 1);
      v29 = 22;
      v16 = sub_10000608C(a1, &v29, 1);
      v29 = 136447234;
      v30 = v12;
      v31 = 1026;
      v32 = v13;
      v33 = 1026;
      v34 = v14;
      v35 = 1026;
      v36 = v15;
      v37 = 1026;
      v38 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v11, 0, "@WifiLogic, entry, register, notification, %{public}s, lsb, %{public}d, %{public}d, %{public}d, %{public}d", &v29, 36);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v29 = 0;
  v21 = *a2;
  if (!*a2)
  {
LABEL_23:
    (*(**(a1 + 120) + 32))(*(a1 + 120), 0);
    if (!*a2)
    {
      (*(**(a1 + 120) + 56))(*(a1 + 120), 7);
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v22 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@WifiEntry, register for odometer notification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FCB90(buf);
        v27[0] = 0;
        LODWORD(v26) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiEntry, register for odometer notification", v27, v26);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    (*(**(a1 + 120) + 40))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 1);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 6);
    (*(**(a1 + 120) + 152))(*(a1 + 120), "CLWifiLocationProvider");
    *buf = *a2;
    sub_1001839B0(&v29, buf);
    sub_100105B70(v28, &v29);
    sub_1000FFE90(a1);
  }

  if (v21 == 22)
  {
    (*(**(a1 + 120) + 24))(*(a1 + 120), 12);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 2);
    (*(**(a1 + 120) + 40))(*(a1 + 120), 1);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 3);
    (*(**(a1 + 120) + 48))(*(a1 + 120), 6);
  }

  else if (v21 == 3)
  {
    goto LABEL_23;
  }

  sub_1001039FC(&v29);
  return 1;
}

id sub_100183950(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 88) "vendor")];
  v4 = [NSString stringWithUTF8String:a2];

  return [v3 resetRetryCounters:v4];
}

void sub_1001839B0(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_100183A60(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 25;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_100183A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100183A60(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x19)
  {
    if (v4 <= 29)
    {
      if ((v4 - 26) < 4)
      {
        return result;
      }

      if (v4 == 25)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 > 38)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

void sub_100183F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1005F3518(&a37);
  sub_1007BE994(v37);
  _Unwind_Resume(a1);
}

uint64_t sub_100183FE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (v4 == 1)
  {
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v6;
    *(a2 + 39) = 0;
    *(a2 + 16) = 0;
    v7 = *(a2 + 100);
    v8 = *(a2 + 88);
    v9 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v9;
    *(a1 + 88) = v8;
    *(a1 + 100) = v7;
    *(a1 + 40) = *(a2 + 40);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    v10 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v10;
    *(a2 + 143) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    v11 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v11;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 40);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    v14 = *(a2 + 100);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 100) = v14;
    *(a1 + 88) = v13;
    *(a1 + 72) = v12;
    v15 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v15;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    *(a1 + 144) = 1;
  }

  return a1;
}

uint64_t sub_100184100(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 136446210;
    *&v7[4] = sub_100187DF4(a2);
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, requestLocationUpdate, %{public}s", v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FC97C(a2);
  }

  *v7 = *a2;
  v7[8] = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244(v8, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    *v8 = *(a2 + 16);
    v9 = *(a2 + 32);
  }

  v11 = *(a2 + 56);
  v12 = *(a2 + 72);
  v13[0] = *(a2 + 88);
  *(v13 + 12) = *(a2 + 100);
  v10 = *(a2 + 40);
  if (*(a2 + 143) < 0)
  {
    sub_100007244(__p, *(a2 + 120), *(a2 + 128));
  }

  else
  {
    *__p = *(a2 + 120);
    v15 = *(a2 + 136);
  }

  v17 = *v7;
  v18 = v7[8];
  v19 = *v8;
  v4 = v9;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  *(v24 + 12) = *(v13 + 12);
  v23 = v12;
  v24[0] = v13[0];
  v21 = v10;
  v22 = v11;
  v20 = v4;
  v25 = v15;
  v24[2] = *__p;
  __p[1] = 0;
  v15 = 0;
  __p[0] = 0;
  v16 = 24;
  v5 = sub_1000FFE90();
  sub_1001039FC(&v16);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  return v5 & 1;
}

void sub_100184328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_100184364(unsigned int *a1)
{
  v3[0] = @"clients";
  v4[0] = [NSNumber numberWithInt:a1[8]];
  v4[1] = @"register";
  v3[1] = @"trigger";
  v3[2] = @"sum";
  v4[2] = [NSNumber numberWithInt:a1[9]];
  v3[3] = @"bin";
  v4[3] = [NSNumber numberWithInt:a1[10]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_100184438(uint64_t a1, uint64_t *a2)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244(v12, a2[2], a2[3]);
  }

  else
  {
    *v12 = *(a2 + 1);
    v13 = a2[4];
  }

  v15 = *(a2 + 7);
  v16 = *(a2 + 9);
  v17[0] = *(a2 + 11);
  *(v17 + 12) = *(a2 + 100);
  v14 = *(a2 + 5);
  if (*(a2 + 143) < 0)
  {
    sub_100007244(__p, a2[15], a2[16]);
  }

  else
  {
    *__p = *(a2 + 15);
    v19 = a2[17];
  }

  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 16) = v11;
  *(v4 + 8) = v10;
  v5 = v13;
  *(v4 + 24) = *v12;
  *(v4 + 40) = v5;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  *(v4 + 48) = v14;
  v6 = v16;
  v7 = v17[0];
  v8 = v15;
  *(v4 + 108) = *(v17 + 12);
  *(v4 + 80) = v6;
  *(v4 + 96) = v7;
  *(v4 + 64) = v8;
  v9 = v19;
  *(v4 + 128) = *__p;
  *(v4 + 144) = v9;
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  **a1 = *(a1 + 8);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_100184598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100185624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  sub_1005F3518(&__p);
  sub_1005F3518(&a41);
  sub_1007BE994(v41);
  _Unwind_Resume(a1);
}

uint64_t sub_10018576C(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_1000F2B3C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

const char *sub_100185818(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "na";
  }

  else
  {
    return off_10246B368[a1];
  }
}

void *sub_10018583C(void *a1, void *a2, uint64_t a3)
{
  v16[0] = *a2;
  v5 = sub_10018D3FC(v16);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    sub_100189DA0();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  v16[0] = v12[2];
  v14 = sub_10018D3FC(v16);
  v17 = *a2;
  if (v14 != sub_10018D3FC(&v17))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_100185A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10)
{
  if (__p)
  {
    sub_10014E5FC(&a10, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100185AC0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL sub_100185ADC(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v7 = sub_100185B50(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

BOOL sub_100185B50(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1002D260C(cf, a3);
  if (!v6)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = qword_1025D48A8;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CLNameValuePair &, int) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_100185DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 520))
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "NETWORK: scheduleRetryTimer, retry timer already scheduled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190C498();
    }
  }

  else
  {
    v5 = sub_100186188(a1);
    if (v5)
    {
      v6 = 10.0;
      if (*(a1 + 532) == 1)
      {
        v6 = sub_1004E9660(*(a1 + 352), 8, 5);
      }

      v7 = [*(a1 + 40) newTimer];
      *(a1 + 520) = v7;
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_1006DCCD8;
      v32 = &unk_102449A78;
      v33 = a1;
      [v7 setHandler:&v29];
      [*(a1 + 520) setNextFireDelay:v6];
    }

    else
    {
      sub_10018646C(a1, "scheduleRetryTimer");
      v6 = -1.0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 520);
      v10 = *(a1 + 352);
      v11 = *(a1 + 432);
      v12 = *(a1 + 184);
      v13 = *(a1 + 224);
      v14 = *(a1 + 264);
      v15 = *(a1 + 304);
      v16 = *(a1 + 344);
      *buf = 136317698;
      v57 = a2;
      v58 = 2048;
      v59 = v9;
      v60 = 1024;
      v61 = v10;
      v62 = 2048;
      v63 = v11;
      v64 = 2048;
      v65 = v12;
      v66 = 2048;
      v67 = v13;
      v68 = 2048;
      v69 = v14;
      v70 = 2048;
      v71 = v15;
      v72 = 2048;
      v73 = v16;
      v74 = 2048;
      v75 = v6;
      v76 = 1024;
      v77 = v5;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "NETWORK: scheduleRetryTimer, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu, timerInterval, %.1lf, isTimerNeeded, %d", buf, 0x68u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v17 = *(a1 + 520);
      v18 = *(a1 + 352);
      v19 = *(a1 + 432);
      v20 = *(a1 + 184);
      v21 = *(a1 + 224);
      v22 = *(a1 + 264);
      v23 = *(a1 + 304);
      v24 = *(a1 + 344);
      v34 = 136317698;
      v35 = a2;
      v36 = 2048;
      v37 = v17;
      v38 = 1024;
      v39 = v18;
      v40 = 2048;
      v41 = v19;
      v42 = 2048;
      v43 = v20;
      v44 = 2048;
      v45 = v21;
      v46 = 2048;
      v47 = v22;
      v48 = 2048;
      v49 = v23;
      v50 = 2048;
      v51 = v24;
      v52 = 2048;
      v53 = v6;
      v54 = 1024;
      v55 = v5;
      LODWORD(v27) = 104;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "NETWORK: scheduleRetryTimer, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu, timerInterval, %.1lf, isTimerNeeded, %d", &v34, v27, v28, v29, v30, v31, v32, v33);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::scheduleRetryTimer(const char *)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }
}

uint64_t sub_100186188(uint64_t a1)
{
  v2 = vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 360));
  if (*(a1 + 432) || *(a1 + 184) || *(a1 + 224) || *(a1 + 264) || *(a1 + 304) || (v3 = *(a1 + 344)) != 0)
  {
    LOBYTE(v3) = *(a1 + 528) == -1;
  }

  v4 = (*(a1 + 352) < 5) & v3;
  if (v2 <= 5400.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 352);
    v8 = *(a1 + 432);
    v9 = *(a1 + 184);
    v10 = *(a1 + 224);
    v11 = *(a1 + 264);
    v12 = *(a1 + 304);
    v13 = *(a1 + 344);
    v14 = *(a1 + 528);
    *buf = 67111424;
    v38 = v7;
    v39 = 2048;
    v40 = v8;
    v41 = 2048;
    v42 = v9;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v11;
    v47 = 2048;
    v48 = v12;
    v49 = 2048;
    v50 = v13;
    v51 = 1024;
    v52 = v14;
    v53 = 2048;
    v54 = v2;
    v55 = 1024;
    v56 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "NETWORK: areQueryRetriesNeeded, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu, currentRetry, %d, sinceRetrySequenceStart, %.2lf, needed, %d", buf, 0x5Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v16 = *(a1 + 352);
    v17 = *(a1 + 432);
    v18 = *(a1 + 184);
    v19 = *(a1 + 224);
    v20 = *(a1 + 264);
    v21 = *(a1 + 304);
    v22 = *(a1 + 344);
    v23 = *(a1 + 528);
    LODWORD(v27) = 67111424;
    HIDWORD(v27) = v16;
    *v28 = 2048;
    *&v28[2] = v17;
    *&v28[10] = 2048;
    *&v28[12] = v18;
    *&v28[20] = 2048;
    *&v28[22] = v19;
    *&v28[30] = 2048;
    *v29 = 2048;
    *&v29[2] = v21;
    *&v29[10] = 2048;
    HIDWORD(v30) = HIDWORD(v22);
    v31 = 1024;
    v32 = v23;
    v33 = 2048;
    v34 = v2;
    v35 = 1024;
    v36 = v5;
    LODWORD(v26) = 90;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "NETWORK: areQueryRetriesNeeded, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu, currentRetry, %d, sinceRetrySequenceStart, %.2lf, needed, %d", &v27, v26, v27, *v28, *&v28[8], *&v28[16], *&v28[24], v20, *v29, *&v29[8]);
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNetworkLocationProvider::isRetryTimerNeeded()", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  return v5;
}

void sub_10018646C(uint64_t a1, void *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 520);
    v6 = *(a1 + 352);
    v7 = *(a1 + 432);
    v8 = *(a1 + 184);
    v9 = *(a1 + 224);
    v10 = *(a1 + 264);
    v11 = *(a1 + 304);
    v12 = *(a1 + 344);
    v15 = 136317186;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    v31 = 2048;
    v32 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "NETWORK: cancelRetryTimer, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu", &v15, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E638(a2, a1);
  }

  v13 = *(a1 + 520);
  if (v13)
  {
    [v13 invalidate];

    *(a1 + 520) = 0;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "NETWORK: cancelRetryTimer, no retry timer", &v15, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E794();
    }
  }
}

uint64_t sub_100186644(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1001866F8(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  v6 = (*(*a1 + 96))(a1, a2, a3, &unk_1025D6280);
  sub_100186B70(a1, v4, a3, 1);
  (*(*a1 + 216))(a1);
  return v6;
}

uint64_t sub_100186798(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *&buf[0] = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1004D48A0(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D8448;
        v29 = v14;
        *&buf[0] = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *&buf[0] = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *&buf[0] = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *&buf[0] = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        LODWORD(buf[0]) = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10189A8E4();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v12;
    WORD6(buf[0]) = 1026;
    *(buf + 14) = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10189AD70(a1, a2);
    return 0;
  }

  return result;
}

void sub_100186B70(uint64_t a1, int a2, int *a3, int a4)
{
  v23 = a2;
  if (qword_1025D4390 != -1)
  {
    sub_10014E59C();
  }

  v7 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a4 ? "Registration" : "Unregistration";
    *buf = &v23;
    v9 = [objc_msgSend(sub_1000488C8(a1 + 80 &v23];
    v10 = *a3;
    *buf = *a3;
    v11 = sub_10000608C(a1, buf, 1);
    (*(*a1 + 160))(__p, a1, a3);
    v12 = v27 >= 0 ? __p : *__p;
    *buf = 136448770;
    *&buf[4] = "MotionOdometer";
    v46 = 2082;
    v47 = "action";
    v48 = 2082;
    v49 = v8;
    v50 = 2082;
    v51 = "client";
    v52 = 2082;
    v53 = v9;
    v54 = 2082;
    v55 = "notification";
    v56 = 1026;
    v57 = v10;
    v58 = 2082;
    v59 = "notificationClientCount";
    v60 = 1026;
    v61 = v11;
    v62 = 2082;
    v63 = "notificationString";
    v64 = 2082;
    v65 = v12;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}d, %{public}s, %{public}d, %{public}s, %{public}s", buf, 0x68u);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4390 != -1)
    {
      sub_10189A7B0();
    }

    v13 = qword_1025D4398;
    if (a4)
    {
      v14 = "Registration";
    }

    else
    {
      v14 = "Unregistration";
    }

    *__p = &v23;
    v15 = [objc_msgSend(sub_1000488C8(a1 + 80 &v23];
    v16 = *a3;
    *__p = *a3;
    v17 = sub_10000608C(a1, __p, 1);
    (*(*a1 + 160))(v21, a1, a3);
    if (v22 >= 0)
    {
      v18 = v21;
    }

    else
    {
      v18 = v21[0];
    }

    *__p = 136448770;
    *&__p[4] = "MotionOdometer";
    v25 = 2082;
    v26 = "action";
    v27 = 2082;
    v28 = v14;
    v29 = 2082;
    v30 = "client";
    v31 = 2082;
    v32 = v15;
    v33 = 2082;
    v34 = "notification";
    v35 = 1026;
    v36 = v16;
    v37 = 2082;
    v38 = "notificationClientCount";
    v39 = 1026;
    v40 = v17;
    v41 = 2082;
    v42 = "notificationString";
    v43 = 2082;
    v44 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 0, "%{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}d, %{public}s, %{public}d, %{public}s, %{public}s", __p, 104);
    v20 = v19;
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLOdometerNotifier::logClient(int, const CLOdometerNotifier_Type::Notification &, BOOL)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }
}

void *sub_100186FB0@<X0>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1 - 2;
  if (v3 > 5)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = *(&off_102459658 + v3);
  }

  return sub_10000EC00(a2, v4);
}

uint64_t sub_100186FE0(unsigned __int8 *a1)
{
  if (qword_1025D4390 != -1)
  {
    sub_10014E59C();
  }

  v2 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[945];
    v7[0] = 2;
    v4 = sub_10000608C(a1, v7, 1);
    v5 = a1[944];
    v7[0] = 67240704;
    v7[1] = v3;
    v8 = 1026;
    v9 = v4;
    v10 = 1026;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Updating odometer state, authorized, %{public}d, has active clients, %{public}d, workout distance controller, %{public}d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189AA0C(a1);
  }

  if (a1[945] == 1 && ((v7[0] = 2, sub_10000608C(a1, v7, 1)) || a1[944] == 1))
  {
    return (*(*a1 + 224))(a1);
  }

  else
  {
    return (*(*a1 + 232))(a1);
  }
}

uint64_t sub_100187178(unsigned __int8 *a1)
{
  sub_100186FE0(a1);
  result = sub_100023ED4(0, v2);
  if (result)
  {
    v4 = result + 72;
    result = (*(*(result + 72) + 16))(result + 72);
    if (result)
    {
      v6 = 5;
      v5 = sub_10000608C(a1, &v6, 1) > 0;
      return (*(*v4 + 40))(v4, v5);
    }
  }

  return result;
}

_BYTE *sub_100187228(_BYTE *result)
{
  if (result[1040] == 1)
  {
    v8 = v1;
    v9 = v2;
    v3 = result;
    if (qword_1025D4390 != -1)
    {
      sub_101959820();
    }

    v4 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Disable GPS; Stop GPS subscription", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101959B48();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101959A34();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#wigo,off,OdometerNotifierCompanion", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101959C34();
    }

    AnalyticsSendEventLazy();
    [*(*(v3 + 231) + 16) unregister:*(*(v3 + 231) + 8) forNotification:0];
    result = [*(*(v3 + 256) + 16) unregister:*(*(v3 + 256) + 8) forNotification:0];
    v3[1040] = 0;
  }

  return result;
}

uint64_t sub_100187378(uint64_t a1)
{
  result = (*(*(a1 - 72) + 192))();
  if (result)
  {
    return sub_100187460(result, v2) != 0;
  }

  return result;
}

uint64_t sub_1001873C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10003FFF8(a1, a2);
  if (v2 & 1) != 0 || (v4 = sub_1000F42C0(v2, v3), (v4))
  {
    v6 = 0;
  }

  else
  {
    v12 = 1;
    v7 = sub_100011660(v4, v5);
    sub_100185AC0(v7, &v10);
    v8 = sub_10001CB4C(v10, "OscarStepCounting", &v12, 0xFFFFFFFFLL);
    if (v11)
    {
      sub_100008080(v11);
    }

    v6 = v8 ^ 1 | v12;
  }

  return v6 & 1;
}

void sub_100187448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100187460(uint64_t a1, uint64_t a2)
{
  if (qword_10265A3C8 != -1)
  {
    sub_101949E34();
  }

  return qword_1026372C0;
}

void sub_100187498(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100011660(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100187624;
  v5[3] = &unk_102460CC8;
  v5[4] = a1;
  v6 = v2;
  sub_100042800(v4, v5);
}

void sub_100187524(uint64_t a1, uint64_t a2)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v5);
  v6 = sub_10018D3EC();
  if (Current == v6)
  {
    v9 = *(*a1 + 560);

    v9(a1, a2, 0, 0);
  }

  else
  {
    v8 = sub_100011660(v6, v7);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005AC12C;
    v10[3] = &unk_102460CC8;
    v10[4] = a1;
    v11 = a2;
    sub_100042800(v8, v10);
  }
}

uint64_t sub_100187624(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[245] = *(a1 + 40);
  return (*(*v1 + 552))(v1, 0);
}

void sub_100187664(uint64_t a1, uint64_t a2, NSObject *a3, id a4)
{
  v6 = a2;
  sub_100011660(a1, a2);
  sub_10001160C();
  *(a1 + 246) = v6;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v8 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 218);
    v10 = *(a1 + 219);
    v11 = *(a1 + 223);
    v12 = *(a1 + 264);
    v13 = *(a1 + 220);
    v14 = *(a1 + 221);
    v15 = *(a1 + 222);
    v16 = *(a1 + 242);
    v17 = *(a1 + 243);
    v18 = *(a1 + 225);
    v19 = *(a1 + 226);
    v20 = *(a1 + 230);
    v21 = *(a1 + 224);
    v22 = *(a1 + 227);
    v23 = *(a1 + 245);
    v24 = *(a1 + 228);
    v25 = *(a1 + 255);
    v26 = *(a1 + 256);
    v27 = *(a1 + 257);
    v28 = *(a1 + 258);
    v29 = *(a1 + 259);
    v30 = *(a1 + 247);
    v31 = *(a1 + 267);
    v32 = *(a1 + 244);
    v40 = *(a1 + 271);
    v41 = *(a1 + 282);
    v42 = *(a1 + 272);
    *buf = 67181313;
    v45 = v9;
    v46 = 1025;
    v47 = v10;
    v48 = 1025;
    v49 = v11;
    v50 = 1025;
    v51 = v12;
    v52 = 1025;
    v53 = v13;
    v54 = 1025;
    v55 = v14;
    v56 = 1025;
    v57 = v15;
    v58 = 1026;
    v59 = v16;
    v60 = 1026;
    v61 = v17;
    v62 = 1026;
    v63 = v18;
    v64 = 1026;
    v65 = v19;
    v66 = 2050;
    v67 = v20;
    v68 = 1026;
    v69 = v21;
    v70 = 1026;
    v71 = v22;
    v72 = 1025;
    v73 = v23;
    v74 = 1026;
    v75 = v24;
    v76 = 1025;
    v77 = v25;
    v78 = 1025;
    v79 = v26;
    v80 = 1025;
    v81 = v27;
    v82 = 1025;
    v83 = v28;
    v84 = 1025;
    v85 = v29;
    v86 = 2050;
    v87 = v30;
    v88 = 1025;
    v89 = v31;
    v90 = 1025;
    v91 = v32;
    v92 = 1025;
    v93 = v40;
    v94 = 1025;
    v95 = v41;
    v96 = 1025;
    v97 = v42;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Sending new config to SPU:enableActivity,%{private}u,enableStepCounting,%{private}u,enableOnBodyDetection,%{private}u,enableStepCountPeriodFast,%{private}uactivityForceCodeTransition,%{private}u,stepCountingForceCodeTransition,%{private}u,enableThreshold,%{private}u,disableDynamicBias,%{public}u,ignoreDynamicBias,%{public}u,ispEnable,%{public}u,ispMode,%{public}u,ISPUpdateIntervalOverride,%{public}f,stickyIsp,%{public}d,logLevel,%{public}d,enableCoarseElevation,%{private}d,proactiveRevisitTime,%{public}u,fallStatsMode,%{private}u,sensorRecordingActive,%{private}u,simulateEvent,%{private}u,userStudyPressureDataCollection,%{private}u,detectorEnabled,%{private}u,lastAckedAopTimestamp,%{public}llu,gateDynamicBiasOnChargerStatus,%{private}u,supportsOISImprovements,%{private}u,compassCoexDuringBasebandUse,%{private}u,enableComputeWhileStatic,%{private}u,magnetometer50HzODRUse,%{private}u", buf, 0xACu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D2ED0(a1, v33, v34, v35, v36, v37, v38, v39);
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
  }

  a4 = [a4 copy];
  if (a3)
  {
    dispatch_retain(a3);
  }

LABEL_9:
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_100187B50;
  aBlock[3] = &unk_102461BD0;
  aBlock[5] = a4;
  aBlock[6] = a1;
  aBlock[4] = a3;
  sub_100187950(a1 + 192, (a1 + 217), aBlock);
}

void sub_100187950(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x7812000000;
    v10[3] = sub_100187AAC;
    v10[4] = nullsub_79;
    v10[5] = &unk_10238AE8B;
    v4 = a2[3];
    v13 = a2[2];
    v14 = v4;
    v15 = *(a2 + 32);
    v5 = *a2;
    v12 = a2[1];
    v11 = v5;
    if (aBlock)
    {
      v6 = _Block_copy(aBlock);
    }

    else
    {
      v6 = 0;
    }

    v8 = *a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100187AD0;
    v9[3] = &unk_102462080;
    v9[5] = v10;
    v9[6] = a1;
    v9[4] = v6;
    dispatch_async(v8, v9);
    _Block_object_dispose(v10, 8);
  }

  else if (aBlock)
  {
    v7 = *(aBlock + 2);

    v7(aBlock, 0);
  }
}

void sub_100187A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100187AAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 64) = result;
  return result;
}

void sub_100187AD0(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 6;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 66);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_100187B50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = sub_100011660(a1, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100187C70;
  v11[3] = &unk_102460CC8;
  v11[4] = v4;
  v12 = a2;
  sub_100042800(v5, v11);
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*(a1 + 32))
    {
      v7 = [v6 copy];
      v8 = *(a1 + 32);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1005AC164;
      v9[3] = &unk_102461BA8;
      v9[4] = v7;
      v10 = a2;
      dispatch_async(v8, v9);
    }

    else
    {
      v6[2](v6, a2);
    }
  }
}

void sub_100187C70(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == 1)
  {
    if (*(v1 + 216) == 1)
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1710();
      }

      v2 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Sending initial configuration.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D313C();
      }

      sub_100F547A4(v1, v3);
    }
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v4 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Failed to configure motion coprocessor", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D3220();
    }

    sub_100F538BC(v1, v5);
  }
}

void sub_100187DB8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1000B9708(a1, a2);
  }

  sub_10028C64C();
}

const char *sub_100187DF4(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 6)
  {
    return "none";
  }

  else
  {
    return off_10246B3C8[v1];
  }
}

const char *sub_100187E20(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "none";
  }

  else
  {
    return off_10246B3C8[a1 - 1];
  }
}

void sub_100187E50(void *a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v7 = a1[2];
  if (v7)
  {
    do
    {
      while (1)
      {
        v9 = vabdd_f64(a3, *(v7 + 72));
        if (v9 > a4)
        {
          break;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      if (qword_1025D4630 != -1)
      {
        sub_101AA885C();
      }

      v10 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *v29 = *(v7 + 16);
        sub_10018F0D0(&__p);
        v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
        *(buf.__r_.__value_.__r.__words + 4) = v11;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@WifiAps, remove, %{private}s, age, %{public}d", &buf, 0x12u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA8884(&__p);
        v15 = qword_1025D4638;
        sub_10018F0D0(&buf);
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v29 = 136380931;
        *&v29[4] = p_buf;
        v30 = 1026;
        v31 = v9;
        LODWORD(v26) = 18;
        _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v15, 2, "@WifiAps, remove, %{private}s, age, %{public}d", v29, v26);
        v18 = v17;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "CLWifiService_Type::AccessPointVector CL::Wifi1::Types::WifiScanHistory::removeAgedAccessPoints(cl::chrono::CFAbsoluteTimeClock::time_point, cl::chrono::secondsf)", "%s\n", v18);
        if (v18 != &__p)
        {
          free(v18);
        }
      }

      v12 = a2[1];
      if (v12 >= a2[2])
      {
        v13 = sub_10014E208(a2, v7 + 16);
      }

      else
      {
        sub_1001005C4(a2[1], v7 + 16);
        v13 = v12 + 88;
      }

      a2[1] = v13;
      v14 = *v7;
      sub_10014E5B0(a1, v7);
      v7 = v14;
    }

    while (v14);
  }

LABEL_25:
  if (qword_1025D4630 != -1)
  {
    sub_101AA885C();
  }

  v19 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1[3];
    v21 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134349568;
    *(__p.__r_.__value_.__r.__words + 4) = v20;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v21;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 1026;
    v33 = a4;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "@WifiAps, history, %{public}lu, aged, %{public}lu, thresh, %{public}d", &__p, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AA8884(&__p);
    v22 = a1[3];
    v23 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = v22;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1026;
    v28 = a4;
    LODWORD(v26) = 28;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, qword_1025D4638, 0, "@WifiAps, history, %{public}lu, aged, %{public}lu, thresh, %{public}d", &buf, v26);
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService_Type::AccessPointVector CL::Wifi1::Types::WifiScanHistory::removeAgedAccessPoints(cl::chrono::CFAbsoluteTimeClock::time_point, cl::chrono::secondsf)", "%s\n", v24);
    if (v25 != &__p)
    {
      free(v25);
    }
  }
}

void sub_100188284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

void sub_10018839C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

BOOL sub_1001883C8(void *a1, double *a2)
{
  v2 = a1[2];
  if (a1[3] == v2)
  {
    return 0;
  }

  v3 = a1[5];
  v4 = (v2 + 8 * (v3 >> 8));
  v5 = (*v4 + 16 * v3);
  v6 = *(v2 + (((a1[6] + v3) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 48) + v3);
  if (v5 == v6)
  {
    return 0;
  }

  v7 = 1.79769313e308;
  v8 = -1.79769313e308;
  do
  {
    v9 = v5[1];
    if (v9 >= *a2 + -30.0 && v9 <= *a2)
    {
      if (*v5 > v8)
      {
        v8 = *v5;
      }

      if (*v5 < v7)
      {
        v7 = *v5;
      }
    }

    v5 += 2;
    if ((v5 - *v4) == 4096)
    {
      v11 = v4[1];
      ++v4;
      v5 = v11;
    }
  }

  while (v5 != v6);
  return v8 != -1.79769313e308 && v7 != 1.79769313e308 && vabdd_f64(v8, v7) < 2.5;
}

void *sub_10018849C(void *result, void *a2)
{
  if (a2)
  {
    result = sub_100103C94(result);
    if (result)
    {
      v3 = a2[2];
      if (v3)
      {
        while (1)
        {
          v7 = v3[2];
          nullsub_34();
          v6 = *v4;
          if (sub_100195A00(&v7, &v6))
          {
            break;
          }

          v3 = *v3;
          if (!v3)
          {
            goto LABEL_8;
          }
        }

        sub_10014E5B0(a2, v3);
      }

LABEL_8:
      nullsub_34();
      return sub_10018583C(a2, v5, v5);
    }
  }

  return result;
}

void *sub_100188540(void *a1, void *a2, void *a3)
{
  v5 = sub_10018D3FC(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1001887C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001887E4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1001889E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1002E4F74(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100188A04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  return a1;
}

char *sub_100188A84@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[39] < 0)
  {
    return sub_100007244(a2, *(result + 2), *(result + 3));
  }

  *a2 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  return result;
}

void sub_100188AAC(uint64_t a1, uint64_t a2, unsigned int a3, double a4)
{
  v4 = a2;
  if (*(a1 + 56) == a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190A3AC();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if ((v4 - 1) > 4)
      {
        v6 = "none";
      }

      else
      {
        v6 = off_10246B340[v4 - 1];
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiStep, same, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A510(v4);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190A3AC();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if ((v4 - 1) > 4)
      {
        v11 = "none";
      }

      else
      {
        v11 = off_10246B340[v4 - 1];
      }

      v12 = *(a1 + 56) - 1;
      if (v12 > 4)
      {
        v13 = "none";
      }

      else
      {
        v13 = off_10246B340[v12];
      }

      *buf = 136446722;
      *&buf[4] = v11;
      *&buf[12] = 2082;
      *&buf[14] = v13;
      *&buf[22] = 2082;
      v78 = sub_100185818(a3);
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiFlow, step, %{public}s, from, %{public}s, donereason, %{public}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190A4C0();
      }

      v41 = qword_1025D4628;
      if ((v4 - 1) > 4)
      {
        v42 = "none";
      }

      else
      {
        v42 = off_10246B340[v4 - 1];
      }

      v43 = *(a1 + 56) - 1;
      if (v43 > 4)
      {
        v44 = "none";
      }

      else
      {
        v44 = off_10246B340[v43];
      }

      v59 = 136446722;
      v60 = v42;
      v61 = 2082;
      v62 = v44;
      v63 = 2082;
      v64 = sub_100185818(a3);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 0, "WifiFlow, step, %{public}s, from, %{public}s, donereason, %{public}s", &v59, 32);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationUpdateRequest::updateStep(Step, CFAbsoluteTime, DoneReason)", "%s\n", v45);
      if (v46 != buf)
      {
        free(v46);
      }
    }

    *(a1 + 56) = v4;
    if (v4 == 5)
    {
      *(a1 + 60) = a3;
      v20 = *(a1 + 64);
      v19 = *(a1 + 72);
      v21 = a4 - v20;
      *(a1 + 96) = a4 - v20;
      if (v19 <= 0.0)
      {
        v22 = -1.0;
      }

      else
      {
        v22 = v20 - v19;
      }

      *(a1 + 72) = v20;
      v23 = *(a1 + 80);
      v24 = ">5s";
      if (v23 == -1.0)
      {
        v25 = "na";
      }

      else if (v23 <= 0.5)
      {
        v25 = "0.5s";
      }

      else if (v23 <= 1.0)
      {
        v25 = "1s";
      }

      else if (v23 <= 2.0)
      {
        v25 = "2s";
      }

      else if (v23 > 5.0)
      {
        v25 = ">5s";
      }

      else
      {
        v25 = "5s";
      }

      v26 = *(a1 + 88);
      if (v26 == -1.0)
      {
        v27 = "na";
      }

      else if (v26 <= 0.5)
      {
        v27 = "0.5s";
      }

      else if (v26 <= 1.0)
      {
        v27 = "1s";
      }

      else if (v26 <= 2.0)
      {
        v27 = "2s";
      }

      else if (v26 > 5.0)
      {
        v27 = ">5s";
      }

      else
      {
        v27 = "5s";
      }

      if (v21 <= 5.0)
      {
        v24 = "5s";
      }

      if (v21 <= 2.0)
      {
        v24 = "2s";
      }

      if (v21 <= 1.0)
      {
        v24 = "1s";
      }

      if (v21 <= 0.5)
      {
        v24 = "0.5s";
      }

      if (v21 == -1.0)
      {
        v28 = "na";
      }

      else
      {
        v28 = v24;
      }

      if (v22 == -1.0)
      {
        v29 = "na";
      }

      else if (v22 <= 4.0)
      {
        v29 = "4s";
      }

      else if (v22 <= 7.0)
      {
        v29 = "7s";
      }

      else if (v22 <= 60.0)
      {
        v29 = "1m";
      }

      else if (v22 <= 840.0)
      {
        v29 = "14m";
      }

      else if (v22 <= 960.0)
      {
        v29 = "16m";
      }

      else if (v22 <= 1800.0)
      {
        v29 = "30m";
      }

      else if (v22 > 3600.0)
      {
        v29 = ">1h";
      }

      else
      {
        v29 = "1h";
      }

      if (qword_1025D4630 != -1)
      {
        sub_10190A4E8();
      }

      v30 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v31 = v28;
        v32 = (a1 + 120);
        v33 = v27;
        if (*(a1 + 143) < 0)
        {
          v32 = *v32;
        }

        v34 = v25;
        v35 = *(a1 + 112) - 1;
        if (v35 > 6)
        {
          v36 = "none";
        }

        else
        {
          v36 = off_10246B3C8[v35];
        }

        v37 = sub_100185818(a3);
        v38 = *(a1 + 104);
        if (v38 == 2)
        {
          v39 = "strong";
        }

        else if (v38)
        {
          v39 = "weak";
        }

        else if (*(a1 + 108))
        {
          v39 = "empty";
        }

        else
        {
          v39 = "unknown";
        }

        v40 = *(a1 + 109);
        *buf = 136448258;
        *&buf[4] = v32;
        *&buf[12] = 2082;
        *&buf[14] = v36;
        *&buf[22] = 2082;
        v78 = v37;
        v79 = 2082;
        v80 = v39;
        v81 = 2082;
        v25 = v34;
        v82 = v34;
        v83 = 2082;
        v27 = v33;
        v84 = v33;
        v85 = 2082;
        v28 = v31;
        v86 = v31;
        v87 = 2082;
        v88 = v29;
        v89 = 1026;
        v90 = v40;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WlpMetric, request, %{public}s, %{public}s, done, %{public}s, fix, %{public}s, tt, %{public}s, %{public}s, durint, %{public}s, %{public}s, als, %{public}d", buf, 0x58u);
      }

      if (sub_10000A100(121, 2))
      {
        v47 = v29;
        bzero(buf, 0x65CuLL);
        if (qword_1025D4630 != -1)
        {
          sub_10190A4E8();
        }

        v48 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          v48 = *v48;
        }

        v49 = qword_1025D4638;
        v50 = *(a1 + 112) - 1;
        if (v50 > 6)
        {
          v51 = "none";
        }

        else
        {
          v51 = off_10246B3C8[v50];
        }

        v52 = sub_100185818(a3);
        v53 = *(a1 + 104);
        if (v53 == 2)
        {
          v54 = "strong";
        }

        else if (v53)
        {
          v54 = "weak";
        }

        else if (*(a1 + 108))
        {
          v54 = "empty";
        }

        else
        {
          v54 = "unknown";
        }

        v55 = *(a1 + 109);
        v59 = 136448258;
        v60 = v48;
        v61 = 2082;
        v62 = v51;
        v63 = 2082;
        v64 = v52;
        v65 = 2082;
        v66 = v54;
        v67 = 2082;
        v68 = v25;
        v69 = 2082;
        v70 = v27;
        v71 = 2082;
        v72 = v28;
        v73 = 2082;
        v74 = v47;
        v75 = 1026;
        v76 = v55;
        LODWORD(v58) = 88;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "WlpMetric, request, %{public}s, %{public}s, done, %{public}s, fix, %{public}s, tt, %{public}s, %{public}s, durint, %{public}s, %{public}s, als, %{public}d", &v59, v58);
        v57 = v56;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationUpdateRequest::updateStep(Step, CFAbsoluteTime, DoneReason)", "%s\n", v56);
        if (v57 != buf)
        {
          free(v57);
        }
      }

      if (*(a1 + 110) == 1)
      {
        AnalyticsSendEventLazy();
      }
    }

    else if (v4 == 1)
    {
      *(a1 + 64) = a4;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a1 + 80) = _Q0;
      *(a1 + 104) = 0;
      *(a1 + 60) = -1;
      *(a1 + 96) = 0xBFF0000000000000;
      *(a1 + 108) = 1;
      *(a1 + 112) = *a1;
      if (*(a1 + 39) < 0)
      {
        sub_100007244(buf, *(a1 + 16), *(a1 + 24));
      }

      else
      {
        *buf = *(a1 + 16);
        *&buf[16] = *(a1 + 32);
      }

      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      *(a1 + 120) = *buf;
      *(a1 + 136) = *&buf[16];
    }
  }
}

const char *sub_100189408(int a1)
{
  v1 = "2.4GHz";
  if (a1 == 1)
  {
    v1 = "stage1+5GHz";
  }

  if (a1 == 2)
  {
    return "stage2+5GHz";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100189434(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_101CD3B30[v1] | qword_101CD3B48[v1] | 0xC0000000000;
  }
}

void sub_100189480(uint64_t *a1, double a2)
{
  sub_100187E50(*a1, &v5, a2, 30.0);
  if (qword_1025D4630 != -1)
  {
    sub_101A66C70();
  }

  v2 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    *&buf[4] = 0x2E8BA2E8BA2E8BA3 * ((v6 - v5) >> 3);
    v12 = 2050;
    v13 = 30;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "remove old APs from scan history, count, %{public}ld, max_secs, %{public}lld", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A66C2C(buf);
    v7 = 134349312;
    v8 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v5) >> 3);
    v9 = 2050;
    v10 = 30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "remove old APs from scan history, count, %{public}ld, max_secs, %{public}lld", &v7, 22);
    v4 = v3;
    sub_100152C7C("Generic", 1, 0, 2, "static void CL::Wifi1::Policies::PrePositionCalculationStateUpdate::HandleEvent::removeOldApsFromWifiScanHistory(cl::chrono::CFAbsoluteTimeClock::time_point, std::shared_ptr<Types::WifiScanHistory>)", "%s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  *buf = &v5;
  sub_1000B96B4(buf);
}

void sub_100189668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a12;
  sub_1000B96B4(&a19);
  _Unwind_Resume(a1);
}

void sub_100189690(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 16);

    operator delete(v3);
  }
}

void sub_1001899D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void *);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_1004906DC(va);
  sub_1001056A0(va1);
  sub_100103B14(va2);
  sub_1007BE994(v5);
  _Unwind_Resume(a1);
}

double sub_100189A2C(uint64_t a1)
{
  v2 = 1.0;
  if (!sub_1001883B8((a1 + 6096)))
  {
    v3 = *(a1 + 3296);
    v7 = *(a1 + 6440);
    if ((*(*v3 + 16))(v3, &v7))
    {
      if (qword_1025D4630 != -1)
      {
        sub_101AAE0EC();
      }

      v4 = qword_1025D4638;
      v2 = 30.0;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v7 = 68289282;
        v8 = 2082;
        v9 = "";
        v10 = 2050;
        v11 = 0x403E000000000000;
        v5 = "{msg%{public}.0s:elevation is steady, max_ap_age_s:%{public}.09f}";
LABEL_11:
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, v5, &v7, 0x1Cu);
      }
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101AAE0EC();
      }

      v4 = qword_1025D4638;
      v2 = 5.0;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v7 = 68289282;
        v8 = 2082;
        v9 = "";
        v10 = 2050;
        v11 = 0x4014000000000000;
        v5 = "{msg%{public}.0s:elevation is not steady, max_ap_age_s:%{public}.09f}";
        goto LABEL_11;
      }
    }
  }

  return v2;
}

void sub_100189BD4(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    v8 = vabdd_f64(a3, i[9]);
    if (v8 <= a4)
    {
      sub_10018583C(a2, i + 2, (i + 2));
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101AAE0EC();
      }

      v9 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        sub_1000ECD9C(&__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289539;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2081;
        v17 = p_p;
        v18 = 2050;
        v19 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:filtering out access point from calculation based on scan timestamp, mac:%{private, location:escape_only}s, age_seconds_s:%{public}.09f}", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_100189E1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10014E5FC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100189E48(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10018D3FC(a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    sub_10018A0B0();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_10018A08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1002E4F74(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018A13C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10018A158(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_100007244((a1 + 16), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 32) = *(a3 + 24);
    *(a1 + 16) = v5;
  }

  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  *(a1 + 88) = *(a3 + 80);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  return a1;
}

void sub_10018A1D4(uint64_t a1, uint64_t *a2)
{
  sub_10018A278(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_10018A278(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1001056DC(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_10018A344(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_10018A35C(void *a1, void *a2)
{
  v4 = sub_10018D3FC((a2 + 2));
  a2[1] = v4;
  v5 = sub_10018A4A0(a1, v4, a2 + 2);
  sub_1007BE1F4(a1, a2, v5);
  return a2;
}

void sub_10018A3B0(uint64_t a1, size_t __n)
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

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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

      sub_1001887E4(a1, prime);
    }
  }
}

void *sub_10018A4A0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_10018A3B0(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
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
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
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

        v21 = v19 == a2 && sub_100195A00(v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void sub_10018A690(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10018A914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  sub_1007BE994(va);
  sub_1004906DC(&a37);
  sub_1007BE994(&STACK[0x1AF8]);
  _Unwind_Resume(a1);
}

unint64_t sub_10018A95C(uint64_t a1)
{
  if (sub_100103C94(a1) && (sub_10018A9B8(a1) & 1) == 0)
  {
    v4 = sub_10018D3FC(a1);
    v3 = v4 & 0xFFFFFFFFFFFFFF00;
    v2 = v4;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v3 | v2;
}

void sub_10018B858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_1003C93BC(&a40, a41);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  sub_1007BE994(v44);
  _Unwind_Resume(a1);
}

uint64_t *sub_10018B8F4(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    sub_100187DB8(result, a4);
  }

  return result;
}

void sub_10018B950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018B994(void *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v10 = a1[7];
  v76 = a1 + 7;
  (*(v10 + 16))();
  a4[1] = 0;
  v11 = (a4 + 1);
  v78 = 256;
  a4[2] = 0;
  *a4 = (a4 + 1);
  if (a2->isa == a2[1].isa)
  {
    goto LABEL_56;
  }

  v60 = a1;
  (*(*a1 + 32))(buf, a1, a2);
  sub_1003C93BC(a4, a4[1]);
  v12 = *&buf[8];
  *a4 = *buf;
  a4[1] = v12;
  v13 = *&buf[16];
  a4[2] = *&buf[16];
  if (v13)
  {
    *(v12 + 16) = v11;
    *buf = &buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v12 = 0;
  }

  else
  {
    *a4 = v11;
  }

  sub_1003C93BC(buf, v12);
  v58 = *(a4 + 4);
  v14 = *(a3 + 112);
  v73 = *(a3 + 96);
  v74 = v14;
  *v75 = *(a3 + 128);
  *&v75[12] = *(a3 + 140);
  v15 = *(a3 + 48);
  *&v72[32] = *(a3 + 32);
  *&v72[48] = v15;
  v16 = *(a3 + 80);
  *&v72[64] = *(a3 + 64);
  *&v72[80] = v16;
  v17 = *(a3 + 20) <= 0.0;
  v18 = *(a3 + 16);
  *v72 = *a3;
  *&v72[16] = v18;
  if (v17 || a5 - *(a3 + 76) >= (3600.0 >> 1))
  {
    v19 = *a4;
    if (*a4 != v11)
    {
      while (1)
      {
        if (!sub_1001E4BB4((v19 + 5)))
        {
          v20 = v19[9];
          if (v20 > 0.0 && a5 - a5 < (3600.0 >> 1))
          {
            break;
          }
        }

        v22 = *(v19 + 1);
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
            v23 = *(v19 + 2);
            _ZF = *v23 == v19;
            v19 = v23;
          }

          while (!_ZF);
        }

        v19 = v23;
        if (v23 == v11)
        {
          goto LABEL_25;
        }
      }

      v25 = *(v19 + 3);
      v73 = 0uLL;
      memset(v75, 0, 25);
      *&v72[4] = v25;
      *&v72[20] = v20;
      *&v72[28] = xmmword_101C76220;
      __asm { FMOV            V0.2D, #-1.0 }

      *&v72[44] = _Q0;
      *&v72[60] = _Q0;
      *&v72[76] = a5;
      *v72 = 0xFFFF;
      *&v72[84] = 0;
      *&v72[88] = 0xBFF0000000000000;
      *(&v74 + 4) = 0xBFF0000000000000;
      LODWORD(v74) = 0;
      HIDWORD(v74) = 0x7FFFFFFF;
      *&v75[25] = v82;
      v75[27] = BYTE2(v82);
      if (qword_1025D4620 != -1)
      {
        sub_101B825A8();
      }

      v29 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "@TileSearch, wifi, use ALS results for location hint", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B825D0(buf);
        v62[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "@TileSearch, wifi, use ALS results for location hint", v62, 2);
        v49 = v48;
        sub_100152C7C("Generic", 1, 0, 2, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v48);
        if (v49 != buf)
        {
          free(v49);
        }
      }
    }
  }

LABEL_25:
  sub_100197FEC((a1 + 13), a2, (a1 + 1), &v70, a5);
  isa = a2->isa;
  v30 = a2[1].isa;
  if (0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3) != (v30 - a2->isa) >> 3)
  {
    if (qword_1025D4600 != -1)
    {
      goto LABEL_79;
    }

    while (1)
    {
      v50 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        v51 = (a2[1].isa - a2->isa) >> 3;
        *buf = 134349312;
        *&buf[4] = v51;
        *&buf[12] = 2050;
        *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3);
        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_ERROR, "expecting equal length, input, %{public}lu, output, %{public}lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B82780(buf);
        v54 = (a2[1].isa - a2->isa) >> 3;
        v82 = 134349312;
        *v83 = v54;
        *&v83[8] = 2050;
        v84 = 0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3);
        LODWORD(v57) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 16, "expecting equal length, input, %{public}lu, output, %{public}lu", &v82, v57);
        v56 = v55;
        sub_100152C7C("Generic", 1, 0, 0, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v55);
        if (v56 != buf)
        {
          free(v56);
        }
      }

      if (qword_1025D4600 != -1)
      {
        sub_101B82758();
      }

      v52 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        v87 = 2081;
        v88 = "0";
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:input-output lengths are not equal, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4600 != -1)
        {
          sub_101B82758();
        }
      }

      v53 = qword_1025D4608;
      if (os_signpost_enabled(qword_1025D4608))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        v87 = 2081;
        v88 = "0";
        _os_signpost_emit_with_name_impl(dword_100000000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "input-output lengths are not equal", "{msg%{public}.0s:input-output lengths are not equal, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4600 != -1)
        {
          sub_101B82758();
        }
      }

      a2 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        v87 = 2081;
        v88 = "0";
        _os_log_impl(dword_100000000, a2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:input-output lengths are not equal, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Wifi1/CLWifiAccessPointLocationService.mm", 331, "findLocationsOfMacAddresses");
      __break(1u);
LABEL_79:
      sub_101B82758();
    }
  }

  v69[0] = 0;
  v69[1] = 0;
  v67[1] = 0;
  v68 = v69;
  v66 = v67;
  v67[0] = 0;
  if (v30 != isa)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v59 = 0;
    while (1)
    {
      v35 = v70 + v33;
      if (*(v70 + v33 + 20))
      {
        v36 = *(v35 + 6);
        v37 = *(v35 + 12);
        if (v11 == sub_100198C70(a4, (isa + v32)))
        {
          break;
        }
      }

LABEL_36:
      ++v34;
      isa = a2->isa;
      v32 += 8;
      v33 += 24;
      if (v34 >= (a2[1].isa - a2->isa) >> 3)
      {
        goto LABEL_46;
      }
    }

    v65 = v37;
    sub_100B4EA5C(v62, 0, v37, SHIDWORD(v37));
    sub_100236990(&v66, v62, v62);
    if (v69 == sub_101267218(&v68, &v65))
    {
      sub_101077FB0(v60[12], &v82);
      if ((v85 & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B825A8();
        }

        v39 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *buf = 67174913;
          *&buf[4] = v65;
          *&buf[8] = 1025;
          *&buf[10] = HIDWORD(v65);
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "tile header missing from returned mac, x, %{private}d, y, %{private}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B825D0(buf);
          v79[0] = 67174913;
          v79[1] = v65;
          v80 = 1025;
          v81 = HIDWORD(v65);
          LODWORD(v57) = 14;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 17, "tile header missing from returned mac, x, %{private}d, y, %{private}d", v79, v57);
          v41 = v40;
          sub_100152C7C("Generic", 1, 0, 0, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v40);
          if (v41 != buf)
          {
            free(v41);
          }
        }

        goto LABEL_34;
      }

      sub_10126728C(&v68, &v65, &v65, &v82);
      ++v59;
    }

    v38 = sub_101260624(&v68, &v65);
    sub_100EAD364(&v82, *(isa + v32), (v36 >> 12) & 0xFFF, v36 & 0xFFF, HIBYTE(v36) & 0xF, v36 >> 28);
    sub_101260664(v38, &v82, buf);
    sub_100197BD4(a4, (isa + v32), (isa + v32), buf);
LABEL_34:
    if (v64 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_36;
  }

  v59 = 0;
LABEL_46:
  sub_100198F4C(v60, &v66, *&qword_1026321A0, v61, a5);
  *buf = v61;
  sub_100199B08(buf);
  if (qword_1025D4620 != -1)
  {
    sub_101B825A8();
  }

  v42 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v43 = (a2[1].isa - a2->isa) >> 3;
    *buf = 67240704;
    *&buf[4] = v43;
    *&buf[8] = 1026;
    *&buf[10] = v59;
    *&buf[14] = 1026;
    *&buf[16] = v58;
    _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "@TileSearch, wifi, results, searched, %{public}d, in_tiles, %{public}d, ALS, %{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B825D0(buf);
    v45 = (a2[1].isa - a2->isa) >> 3;
    v82 = 67240704;
    *v83 = v45;
    *&v83[4] = 1026;
    *&v83[6] = v59;
    LOWORD(v84) = 1026;
    *(&v84 + 2) = v58;
    LODWORD(v57) = 20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "@TileSearch, wifi, results, searched, %{public}d, in_tiles, %{public}d, ALS, %{public}d", &v82, v57);
    v47 = v46;
    sub_100152C7C("Generic", 1, 0, 2, "virtual std::map<CLMacAddress, CLWifiAPLocation> CLWifiAccessPointLocationService::findLocationsOfMacAddresses(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point) const", "%s\n", v46);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  sub_100199BC0(v60[10], (a2[1].isa - a2->isa) >> 3, v58, v59);
  v44 = v60[39];
  if (v44)
  {
    sub_100197CEC(v44, a4);
  }

  sub_100199B5C(&v66, v67[0]);
  sub_1003C93BC(&v68, v69[0]);
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if ((v78 & 0x100) != 0)
  {
LABEL_56:
    if (v78)
    {
      pthread_mutex_unlock(v77);
    }

    else
    {
      (*(*v76 + 24))(v76);
    }
  }
}

void sub_10018C5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1003C93BC(v61, *(v61 + 8));
  sub_1017EC98C(&a61);
  _Unwind_Resume(a1);
}

void sub_10018C6A8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v7 = a1 + 7;
  v6 = a1[7];
  v19 = a1 + 7;
  (*(v6 + 16))(a1 + 7);
  v21 = 256;
  if (sub_1000735C0(v7[34]))
  {
    v8 = sub_101261010(a1);
    v9 = a1[41];
    sub_10000EC00(__p, "WifiAlsDatabase");
    sub_100BBF9F8(v9, __p, v8);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10018D100(a1[11], a2, &v17);
  a3[2] = 0;
  a3[1] = 0;
  *a3 = (a3 + 1);
  v10 = v17;
  if (v17 != v18)
  {
    do
    {
      sub_100197C98((v10 + 5), __p);
      sub_100197BD4(a3, v10 + 4, v10 + 4, __p);
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

    while (v12 != v18);
  }

  v14 = a1[39];
  if (v14)
  {
    sub_100197CEC(v14, a3);
  }

  sub_1003C93BC(&v17, v18[0]);
  if (HIBYTE(v21) == 1)
  {
    if (v21)
    {
      pthread_mutex_unlock(v20);
    }

    else
    {
      (*(*v19 + 24))(v19);
    }
  }
}

void sub_10018C860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(v25 - 72);
  _Unwind_Resume(a1);
}

void sub_10018C8C0(uint64_t a1@<X0>, _BYTE *a3@<X8>)
{
  if (sub_10018E854(a1))
  {
    v5 = (a1 + 296);
    if (*(a1 + 319) < 0)
    {
      if (!*(a1 + 304))
      {
LABEL_14:
        if (qword_1025D4850 != -1)
        {
          sub_10190A820();
        }

        v7 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "#Warning fFindByMacAddressQuery is not initialized in CLWifiLocationDatabase!", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10190B02C();
        }

        goto LABEL_20;
      }

      v5 = *v5;
    }

    else if (!*(a1 + 319))
    {
      goto LABEL_14;
    }

    sub_1000388D8(a1 + 64, v5);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v6 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call findByMacAddress() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AF48();
  }

LABEL_20:
  *a3 = 0;
  a3[200] = 0;
}

void sub_10018D070(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26)
  {
    (*(*a26 + 8))(a26, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018D100(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = (a3 + 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      sub_10018D200(*(result + 56), v10);
      if (v11[24] & 1) != 0 || (v7 = *(result + 48)) != 0 && (sub_10018C8C0(v7, v8), v10[10] = v8[10], *v11 = v9[0], *&v11[9] = *(v9 + 9), v10[6] = v8[6], v10[7] = v8[7], v10[8] = v8[8], v10[9] = v8[9], v10[2] = v8[2], v10[3] = v8[3], v10[4] = v8[4], v10[5] = v8[5], v10[0] = v8[0], v10[1] = v8[1], (BYTE8(v9[1])))
      {
        sub_100197AE4(a3, v4, v4, v10);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

unint64_t sub_10018D208(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (qword_10265EA10 != -1)
  {
    sub_10024767C();
  }

  os_unfair_lock_lock(&unk_10265E9E8);
  v7 = qword_10265E9F0;
  os_unfair_lock_unlock(&unk_10265E9E8);
  if (![v7 count])
  {
    sub_101A81F20();
  }

  v8 = [v7 objectForKeyedSubscript:a2];
  if (v8)
  {
    result = [v8 BOOLValue];
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = sub_10018D2D0(a2);
  if ((result & 1) == 0)
  {
LABEL_6:
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

unint64_t sub_10018D2D0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (qword_10265EA08 != -1)
  {
    sub_101A81F0C();
  }

  os_unfair_lock_lock(&unk_10265EA00);
  v2 = [qword_10265E9F8 objectForKey:a1];
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v4 = MGCopyAnswer();
    v5 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      v3 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
      CFRelease(v5);
      [qword_10265E9F8 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v3), a1}];
    }

    else
    {
      v3 = 0;
    }
  }

  os_unfair_lock_unlock(&unk_10265EA00);
  return v3;
}

double sub_10018D404(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 6335439.33;
  *a1 = xmmword_101D16770;
  *(a1 + 32) = 0x3FF0000000000000;
  return result;
}

void sub_10018D420(uint64_t a1, int *a2, double *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_1025044A8);
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v100 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLGeomagneticModelProviderDaemon::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_1025044A8);
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "activity";
      *&buf[28] = 2050;
      *&buf[30] = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGeomagneticModelProviderDaemon::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v100 = 0;
  }

  v9 = *a2;
  if (*a2 > 3)
  {
    if (v9 == 13)
    {
      v21 = sub_100B55A18(a4 + 176);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v22 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "new location authorization status for geomagnetic model: %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        *v101 = 67240192;
        *&v101[4] = v21;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 0, "new location authorization status for geomagnetic model: %{public}d", v101, 8);
        v71 = v70;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v70);
        if (v71 != buf)
        {
          free(v71);
        }
      }

      if ((v21 - 3) < 2)
      {
        sub_1002770FC(a4);
        sub_1002776FC(a4);
      }

      else if ((v21 - 1) <= 1)
      {
        sub_101853434(a4);
      }

      goto LABEL_34;
    }

    if (v9 != 4)
    {
      goto LABEL_34;
    }
  }

  else if (v9 && v9 != 2)
  {
    goto LABEL_34;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (*(a3 + 20) >= 0.0 && ((v11 = a3[11], v11 < 0.0) || Current <= v11 + *(a3 + 76) + *(a4 + 416)) && sub_10003845C() == 1)
  {
    sub_10018E568(a4);
    v12 = *(a4 + 168);
    if (v12 < 0.0 || *(a3 + 76) - v12 >= *(a4 + 416) * 0.5)
    {
      v23 = sub_101802D50();
      v24.n128_f64[0] = *(a3 + 4);
      v24.n128_f32[0] = v24.n128_f64[0];
      v25.n128_f64[0] = *(a3 + 12);
      v25.n128_f32[0] = v25.n128_f64[0];
      v26 = *(a3 + 28);
      if (sub_1005C0960(v101, v24, v25, v26, v23))
      {
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v27 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
        {
          v28 = *(a3 + 76);
          *buf = 134349312;
          *&buf[4] = v28;
          *&buf[12] = 2050;
          *&buf[14] = v23;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "declination calculation failed @ %{public}lf (%{public}f)", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v72 = *(a3 + 76);
          v119 = 134349312;
          v120 = v72;
          v121 = 2050;
          v122 = v23;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 17, "declination calculation failed @ %{public}lf (%{public}f)", &v119, 22);
          v74 = v73;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeomagneticModelProviderDaemon::getGeomagneticField(const CLDaemonLocation &)", "%s\n", v73);
          if (v74 != buf)
          {
            free(v74);
          }
        }

        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v29 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a3 + 4);
          v31 = *(a3 + 12);
          v32 = *(a3 + 28);
          *buf = 134546177;
          *&buf[4] = v30;
          *&buf[12] = 2053;
          *&buf[14] = v31;
          *&buf[22] = 2048;
          *&buf[24] = v32;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#Warning no geomagnetic information available for <%{sensitive}+.8f,%{sensitive}+.8f,%+.3f>", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v33 = *(a3 + 4);
          v34 = *(a3 + 12);
          v35 = *(a3 + 28);
          *v101 = 134546177;
          *&v101[4] = v33;
          *&v101[12] = 2053;
          *&v101[14] = v34;
          *&v101[22] = 2048;
          v102 = v35;
          LODWORD(v98) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 0, "#Warning no geomagnetic information available for <%{sensitive}+.8f,%{sensitive}+.8f,%+.3f>", v101, v98);
          v15 = v36;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v36);
          goto LABEL_79;
        }
      }

      else
      {
        v37 = vcvtq_f64_f32(*&v101[8]);
        *(a4 + 112) = vcvtq_f64_f32(*v101);
        *(a4 + 128) = v37;
        *(a4 + 144) = vcvtq_f64_f32(*&v101[16]);
        *(a4 + 160) = *&v102;
        *(a4 + 168) = *(a3 + 76);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v38 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
        {
          v39 = *(a3 + 4);
          v40 = *(a3 + 12);
          v41 = *(a3 + 28);
          v42 = *(a3 + 76);
          v43 = *(a4 + 152);
          v44 = *(a4 + 160);
          v45 = v42 + *(a4 + 416);
          *buf = 134547201;
          *&buf[4] = v39;
          *&buf[12] = 2053;
          *&buf[14] = v40;
          *&buf[22] = 2048;
          *&buf[24] = v41;
          *&buf[32] = 2048;
          *&buf[34] = v42;
          v124 = 2048;
          v125 = v43;
          v126 = 2048;
          v127 = v44;
          v128 = 2048;
          v129 = v45;
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "geomagnetic information calculated for <%{sensitive}+.8f,%{sensitive}+.8f,%+.3f> @ %.3f, declination %f inclination %f will expire @ %.3f", buf, 0x48u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v75 = *(a3 + 4);
          v76 = *(a3 + 12);
          v77 = *(a3 + 28);
          v78 = *(a3 + 76);
          v79 = *(a4 + 152);
          v80 = *(a4 + 160);
          v81 = v78 + *(a4 + 416);
          *v101 = 134547201;
          *&v101[4] = v75;
          *&v101[12] = 2053;
          *&v101[14] = v76;
          *&v101[22] = 2048;
          v102 = v77;
          v103 = 2048;
          v104 = v78;
          v105 = 2048;
          v106 = v79;
          v107 = 2048;
          v108 = v80;
          v109 = 2048;
          v110 = v81;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "geomagnetic information calculated for <%{sensitive}+.8f,%{sensitive}+.8f,%+.3f> @ %.3f, declination %f inclination %f will expire @ %.3f", v101, 72);
          v83 = v82;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v82);
          if (v83 != buf)
          {
            free(v83);
          }
        }

        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v46 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
        {
          v47 = *(a3 + 4);
          v48 = *(a3 + 12);
          v49 = *(a3 + 28);
          v50 = *(a4 + 112);
          v51 = *(a4 + 120);
          v52 = *(a4 + 128);
          v53 = *(a4 + 136);
          v54 = *(a4 + 144);
          v55 = *(a4 + 152);
          v56 = *(a4 + 160);
          *buf = 136317699;
          *&buf[4] = "Compass-Geomagnetic";
          *&buf[12] = 2053;
          *&buf[14] = v47;
          *&buf[22] = 2053;
          *&buf[24] = v48;
          *&buf[32] = 2048;
          *&buf[34] = v49;
          v124 = 2048;
          v125 = v50;
          v126 = 2048;
          v127 = v51;
          v128 = 2048;
          v129 = v52;
          v130 = 2048;
          v131 = v53;
          v132 = 2048;
          v133 = v54;
          v134 = 2048;
          v135 = v55;
          v136 = 2048;
          v137 = v56;
          _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "Type,%s,lat,%{sensitive}+.8f,long,%{sensitive}+.8f,alt,%+.3f,x,%.3f,y,%.3f,z,%.3f,m,%.3f,h,%.3f,dec,%+.3f,inc,%+.3f,", buf, 0x70u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          v84 = *(a3 + 4);
          v85 = *(a3 + 12);
          v86 = *(a3 + 28);
          v87 = *(a4 + 112);
          v88 = *(a4 + 120);
          v89 = *(a4 + 128);
          v90 = *(a4 + 136);
          v91 = *(a4 + 144);
          v92 = *(a4 + 152);
          v93 = *(a4 + 160);
          *v101 = 136317699;
          *&v101[4] = "Compass-Geomagnetic";
          *&v101[12] = 2053;
          *&v101[14] = v84;
          *&v101[22] = 2053;
          v102 = v85;
          v103 = 2048;
          v104 = v86;
          v105 = 2048;
          v106 = v87;
          v107 = 2048;
          v108 = v88;
          v109 = 2048;
          v110 = v89;
          v111 = 2048;
          v112 = v90;
          v113 = 2048;
          v114 = v91;
          v115 = 2048;
          v116 = v92;
          v117 = 2048;
          v118 = v93;
          LODWORD(v98) = 112;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "Type,%s,lat,%{sensitive}+.8f,long,%{sensitive}+.8f,alt,%+.3f,x,%.3f,y,%.3f,z,%.3f,m,%.3f,h,%.3f,dec,%+.3f,inc,%+.3f,", v101, v98);
          v95 = v94;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v94);
          if (v95 != buf)
          {
            free(v95);
          }
        }

        sub_1018531EC(a4);
        v58 = *(a4 + 160);
        v57 = *(a4 + 168);
        v59 = *(a4 + 136);
        v60 = *(a4 + 152);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        v61 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v57;
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "caching geomagnetic information @ %{public}.3f", buf, 0xCu);
        }

        v62 = sub_10000A100(121, 2);
        if (v62)
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42E0 != -1)
          {
            dispatch_once(&qword_1025D42E0, &stru_1025044C8);
          }

          *v101 = 134349056;
          *&v101[4] = v57;
          LODWORD(v98) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "caching geomagnetic information @ %{public}.3f", v101, v98);
          v97 = v96;
          v62 = sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::storeGeomagneticDataToCache()", "%s\n", v96);
          if (v97 != buf)
          {
            free(v97);
          }
        }

        v64 = sub_1000206B4(v62, v63);
        *buf = [NSNumber numberWithDouble:v57];
        *&buf[8] = [NSNumber numberWithDouble:round(v59)];
        *&buf[16] = [NSNumber numberWithDouble:round(v60)];
        *&buf[24] = [NSNumber numberWithDouble:round(v58)];
        [NSArray arrayWithObjects:buf count:4];
        sub_1003046B4(v64);
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v13 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "current location is still fresh, geomagnetic data is not re-calculated", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          dispatch_once(&qword_1025D42E0, &stru_1025044C8);
        }

        *v101 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "current location is still fresh, geomagnetic data is not re-calculated", v101, 2);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v14);
LABEL_79:
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v16 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a3 + 4);
      v18 = *(a3 + 12);
      v19 = *(a3 + 28);
      v20 = *(a3 + 76);
      *buf = 134546433;
      *&buf[4] = v17;
      *&buf[12] = 2048;
      *&buf[14] = v18;
      *&buf[22] = 2048;
      *&buf[24] = v19;
      *&buf[32] = 2048;
      *&buf[34] = v20;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning geomagnetic provider received a stale location <%{sensitive}+.8f,{sensitive}%+.8f,%+.3f> @ %.3f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v65 = *(a3 + 4);
      v66 = *(a3 + 12);
      v67 = *(a3 + 28);
      v68 = *(a3 + 76);
      *v101 = 134546433;
      *&v101[4] = v65;
      *&v101[12] = 2048;
      *&v101[14] = v66;
      *&v101[22] = 2048;
      v102 = v67;
      v103 = 2048;
      v104 = v68;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 0, "#Warning geomagnetic provider received a stale location <%{sensitive}+.8f,{sensitive}%+.8f,%+.3f> @ %.3f", v101, 42);
      v15 = v69;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::setLocation(const CLDaemonLocation &)", "%s\n", v69);
      goto LABEL_79;
    }
  }

LABEL_34:
  if (v100 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10018E410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  if (a13 == 1)
  {
    os_activity_scope_leave(&state);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018E434(uint64_t result, uint64_t a2)
{
  ++*(result + 436);
  v4 = (a2 + 96);
  v3 = *(a2 + 96);
  if (v3 > 0xD)
  {
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
    {
      v6 = *v4;
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "The location type is undefined (%d).", v7, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B14E8C(v4);
    }

    ++*(result + 496);
  }

  else
  {
    ++*(result + 4 * v3 + 440);
  }

  if (*(result + 58) == 1)
  {
    ++*(result + 500);
  }
}

id sub_10018E568(uint64_t a1)
{
  result = [*(a1 + 376) setNextFireDelay:1.79769313e308];
  if (*(a1 + 408) == 1)
  {
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v3 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "stopping coarse location for computing geomagnetic data", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v6[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 0, "stopping coarse location for computing geomagnetic data", v6, 2);
      v5 = v4;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::stopCoarseLocationUpdates()", "%s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    result = [*(*(a1 + 400) + 16) unregister:*(*(a1 + 400) + 8) forNotification:2];
    *(a1 + 408) = 0;
  }

  return result;
}

id sub_10018E72C(uint64_t a1, void *a2)
{
  if ([*(a1 + 136) hasValueForKey:@"isHarvestableSystemService" atKeyPath:a2])
  {
    v4 = *(a1 + 136);

    return [v4 BOOLForKey:@"isHarvestableSystemService" atKeyPath:a2 defaultValue:0];
  }

  else
  {
    v6 = [a2 bundlePath];
    if (!v6)
    {
      return 0;
    }

    v8 = sub_1000E67F0(v6, v7);
    [*(a1 + 136) setBool:v8 forKey:@"isHarvestableSystemService" atKeyPath:a2];
    return v8;
  }
}

BOOL sub_10018E7E0(uint64_t a1)
{
  if (*(a1 + 20) <= 0.0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 36) > 0.0)
  {
    v3 = fabs(*(a1 + 4));
    if (v3 <= 90.0)
    {
      v4 = fabs(*(a1 + 12));
      if (v4 <= 180.0)
      {
        return v4 >= 0.0000001 || v3 >= 0.0000001;
      }
    }
  }

  return result;
}

void sub_10018E860(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 520) <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 50);
      v17[0] = 67240192;
      v17[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,startBestAccuracySession,fromLocationController,%{public}d", v17, 8u);
    }

    v6 = sub_10000A100(121, 2);
    if (v6)
    {
      sub_1018759C4(a1);
    }

    *(a1 + 468) = 0;
    *(a1 + 464) = 0;
    *(a1 + 500) = 0;
    *(a1 + 508) = 0;
    *(a1 + 492) = 0;
    *(a1 + 520) = 0xBFF0000000000000;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 528) = _Q0;
    v13 = sub_10000B1F8(v6, v7);
    v17[0] = 1;
    v16.n128_f64[0] = sub_10001A6B0(v13, v17);
    *(a1 + 520) = v16.n128_u64[0];
    *(a1 + 469) = *(a1 + 50);
    v14 = *(a1 + 144);
    v15 = v14 > 0.0;
    v16.n128_f64[0] = v16.n128_f64[0] - v14;
    if (v16.n128_f64[0] <= 15.0)
    {
      v15 = 0;
    }

    *(a1 + 464) = v15;
    *(a1 + 467) = *(a1 + 104);
    *(a1 + 466) = *(a1 + 88);
    sub_10017683C(a1, a2, (a1 + 520), v16);
  }
}

void sub_10018EA08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 8);
  if ([*(a1 + 8) state] == 2)
  {
    if ([*v6 pipelinedSeeded])
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 23) >= 0)
        {
          v8 = a3;
        }

        else
        {
          v8 = *a3;
        }

        *__p = 136315138;
        *&__p[4] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Already seeded - ignoring request to start due to %s", __p, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10186BBB4();
      }
    }

    else
    {
      v12 = sub_10017FA6C(a1, a2);
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        *__p = 136446466;
        *&__p[4] = v14;
        v28 = 2082;
        v29 = sub_10017FC28(v12);
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@IndoorFlow, turnon, %{public}s, %{public}s", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186BCB0(a3, v12);
      }

      v15 = *v6;
      if (v12)
      {
        if ([v15 latestReason] != v12)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v16 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            if (*(a3 + 23) >= 0)
            {
              v17 = a3;
            }

            else
            {
              v17 = *a3;
            }

            v18 = sub_10017FC28(v12);
            *__p = 136315394;
            *&__p[4] = v17;
            v28 = 2080;
            v29 = v18;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "%s - cannot start indoor: %s", __p, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186BDBC(a3, v12);
          }

          [*v6 setLatestReason:v12];
        }
      }

      else
      {
        [v15 setLatestReason:0];
        sub_1001B81F8(a1, a2, a3);
        if ([objc_msgSend(*(a1 + 8) "pipelinedVenues")])
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v19 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            if (*(a3 + 23) >= 0)
            {
              v20 = a3;
            }

            else
            {
              v20 = *a3;
            }

            *__p = 136315138;
            *&__p[4] = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "%s - starting pipelined via startDaemonLocalizingImpl", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186BEC0();
          }

          if ((*(**(a1 + 24) + 104))(*(a1 + 24)))
          {
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v21 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#Warning daemon is loaded but pipelined is not seeded", __p, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10186BFB4();
            }
          }

          if (sub_10025D18C(a1, a2))
          {
            [*v6 setLatestReason:5];
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v22 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              if (*(a3 + 23) >= 0)
              {
                v23 = a3;
              }

              else
              {
                v23 = *a3;
              }

              v24 = sub_10017FC28([*v6 latestReason]);
              *__p = 136315394;
              *&__p[4] = v23;
              v28 = 2080;
              v29 = v24;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "%s - cannot start indoor: %s", __p, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10186C098();
            }
          }

          else
          {
            sub_10025D484(a1);
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v25 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            if (*(a3 + 23) >= 0)
            {
              v26 = a3;
            }

            else
            {
              v26 = *a3;
            }

            *__p = 136315138;
            *&__p[4] = v26;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "%s - not in a recognized venue, not launching pipelined", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186C19C();
          }

          if ([*v6 pipelinedSeeded])
          {
            sub_10186C290();
          }

          sub_10000EC00(__p, "startIndoorIfPossible but no venues");
          sub_100264D7C(a1, __p);
          if (v30 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      v11 = (*(**(a1 + 24) + 200))(*(a1 + 24));
      *__p = 136315394;
      *&__p[4] = v10;
      v28 = 1024;
      LODWORD(v29) = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s -- we're not in a runnable state (i.e. no clients; clients = %d)", __p, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186BA84();
    }
  }
}

void sub_10018F04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018F070(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10018F070(a1, *a2);
    sub_10018F070(a1, a2[1]);
    sub_1003C93BC((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_10018F0D0(std::string *a2@<X8>)
{
  sub_1000ECEAC(&__str);
  v3 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v3 >= SHIBYTE(__str.__r_.__value_.__r.__words[2]))
    {
      return;
    }

LABEL_6:
    if (v3)
    {
      std::string::push_back(a2, 58);
    }

    std::string::append(a2, &__str, v3, 2uLL);
    v3 += 2;
  }

  if (v3 < __str.__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
}

void sub_10018F160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10018F18C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 32);
  result = *(a2 + 56);
  *a1 = *a2;
  v7 = *(a3 + 140);
  v9 = a3[7];
  v8 = a3[8];
  *(a1 + 104) = a3[6];
  *(a1 + 120) = v9;
  *(a1 + 136) = v8;
  *(a1 + 148) = v7;
  v11 = a3[4];
  v10 = a3[5];
  v12 = a3[3];
  *(a1 + 40) = a3[2];
  *(a1 + 56) = v12;
  *(a1 + 72) = v11;
  *(a1 + 88) = v10;
  v13 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 24) = v13;
  *(a1 + 164) = v4;
  *(a1 + 168) = v5;
  *(a1 + 176) = result;
  *(a1 + 184) = a4;
  return result;
}

void sub_10018F1F0(uint64_t a1@<X0>, const void **a3@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10018FE0C(a1, &v20);
    v5 = std::string::append(&v20, " WHERE ", 7uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v21, "MAC", 3uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&v18[16] = *(&v7->__r_.__value_.__l + 2);
    *v18 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(v18, " = ? ", 5uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&v17[16] = *(&v9->__r_.__value_.__l + 2);
    *v17 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_1001901C8(&v19);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(v17, v11, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v23 = v13->__r_.__value_.__r.__words[2];
    v22 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if ((v17[23] & 0x80000000) != 0)
    {
      operator delete(*v17);
    }

    if ((v18[23] & 0x80000000) != 0)
    {
      operator delete(*v18);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v23 >= 0)
    {
      v15 = &v22;
    }

    else
    {
      v15 = v22;
    }

    sub_1000388D8(a1 + 64, v15);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v16 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *v17 = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getEntriesForMac() without a backing database in CLWifiHarvestDatabase!", v17, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE3618();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_10018F754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018F858(uint64_t a1, void *a2)
{
  if (!sub_10018E854(a1))
  {
    return 0;
  }

  *buf = *a2;
  sub_10018F1F0(a1, &v35);
  if (sub_1001903EC(a1, a2, &v35))
  {
    v4 = sub_1001AFC18(a1, a2);
    sub_10082C7BC(a1);
  }

  else
  {
    v5 = (v36 - 192);
    if (sub_1002485A0(a1, a2, (v36 - 192)))
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v6 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v7 = SHIBYTE(v44);
        v8 = *__p;
        sub_1001912D0(v5, v51);
        v9 = __p;
        if (v7 < 0)
        {
          v9 = v8;
        }

        if (v54 >= 0)
        {
          v10 = v51;
        }

        else
        {
          v10 = *v51;
        }

        v11 = *(a2 + 84);
        *buf = 136315651;
        *&buf[4] = v9;
        v47 = 2085;
        v48 = v10;
        v49 = 2050;
        v50 = v11;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "%s, updating associated AP latest harvest sample %{sensitive}s with timestamp %{public}.1f", buf, 0x20u);
        if (v54 < 0)
        {
          operator delete(*v51);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194CFF4(buf);
        v18 = off_1025D4858;
        std::operator+<char>();
        v19 = v54;
        v20 = *v51;
        sub_1001912D0(v5, v37);
        v21 = v51;
        if (v19 < 0)
        {
          v21 = v20;
        }

        if (v40 >= 0)
        {
          v22 = v37;
        }

        else
        {
          v22 = *v37;
        }

        v23 = *(a2 + 84);
        *__p = 136315651;
        *&__p[4] = v21;
        v42 = 2085;
        v43 = v22;
        v44 = 2050;
        v45 = v23;
        v33 = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 0, "%s, updating associated AP latest harvest sample %{sensitive}s with timestamp %{public}.1f", __p, v33);
        v25 = v24;
        if (v40 < 0)
        {
          operator delete(*v37);
        }

        if (v54 < 0)
        {
          operator delete(*v51);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSampleIfNecessary(const CLWifiHarvestDatabaseEntry &)", "%s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v4 = sub_10024C340(a1, a2, v5);
    }

    else
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v12 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v13 = SHIBYTE(v49);
        v14 = *buf;
        sub_1001912D0(a2, __p);
        v15 = buf;
        if (v13 < 0)
        {
          v15 = v14;
        }

        if (v44 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = *__p;
        }

        *v51 = 136315395;
        *&v51[4] = v15;
        v52 = 2085;
        v53 = v16;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "%s, skip adding associated AP harvest sample: %{sensitive}s", v51, 0x16u);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194CFF4(buf);
        v26 = off_1025D4858;
        std::operator+<char>();
        v27 = SHIBYTE(v44);
        v28 = *__p;
        sub_1001912D0(a2, v51);
        v29 = __p;
        if (v27 < 0)
        {
          v29 = v28;
        }

        if (v54 >= 0)
        {
          v30 = v51;
        }

        else
        {
          v30 = *v51;
        }

        *v37 = 136315395;
        *&v37[4] = v29;
        v38 = 2085;
        v39 = v30;
        v34 = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 0, "%s, skip adding associated AP harvest sample: %{sensitive}s", v37, v34);
        v32 = v31;
        if (v54 < 0)
        {
          operator delete(*v51);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(*__p);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSampleIfNecessary(const CLWifiHarvestDatabaseEntry &)", "%s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      v4 = 0;
    }
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return v4;
}

void sub_10018FD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018FE0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10003848C(v41);
  v4 = sub_100038730(&v42, "SELECT ", 7);
  v5 = sub_100038730(v4, "MAC", 3);
  v6 = sub_100038730(v5, ",", 1);
  v7 = sub_100038730(v6, "Channel", 7);
  v8 = sub_100038730(v7, ",", 1);
  v9 = sub_100038730(v8, "Rssi", 4);
  v10 = sub_100038730(v9, ",", 1);
  v11 = sub_100038730(v10, "ScanTimestamp", 13);
  v12 = sub_100038730(v11, ",", 1);
  v13 = strlen("Timestamp");
  v14 = sub_100038730(v12, "Timestamp", v13);
  v15 = sub_100038730(v14, ",", 1);
  v16 = strlen("Latitude");
  v17 = sub_100038730(v15, "Latitude", v16);
  v18 = sub_100038730(v17, ",", 1);
  v19 = strlen("Longitude");
  v20 = sub_100038730(v18, "Longitude", v19);
  v21 = sub_100038730(v20, ",", 1);
  v22 = strlen("HorizontalAccuracy");
  v23 = sub_100038730(v21, "HorizontalAccuracy", v22);
  v24 = sub_100038730(v23, ",", 1);
  v25 = strlen("Altitude");
  v26 = sub_100038730(v24, "Altitude", v25);
  v27 = sub_100038730(v26, ",", 1);
  v28 = strlen("VerticalAccuracy");
  v29 = sub_100038730(v27, "VerticalAccuracy", v28);
  v30 = sub_100038730(v29, ",", 1);
  v31 = sub_100038730(v30, "LoiType", 7);
  v32 = sub_100038730(v31, " FROM ", 6);
  v35 = *(a1 + 232);
  v34 = a1 + 232;
  v33 = v35;
  v36 = *(v34 + 23);
  if (v36 >= 0)
  {
    v37 = v34;
  }

  else
  {
    v37 = v33;
  }

  if (v36 >= 0)
  {
    v38 = *(v34 + 23);
  }

  else
  {
    v38 = *(v34 + 8);
  }

  sub_100038730(v32, v37, v38);
  sub_100073518(v41, a2);
  v42 = v39;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  std::locale::~locale(v44);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001901B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_1001901C8(std::string *a1@<X8>)
{
  v2 = strlen("Timestamp");
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v2;
  if (v2)
  {
    memmove(&__dst, "Timestamp", v2);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  v4 = std::string::insert(&__dst, 0, "ORDER BY ", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v8, " ASC", 4uLL);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_100190308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10019033C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100190394(uint64_t result, void *a2, __int128 *a3, int a4, int a5, uint64_t a6, double a7)
{
  *result = *a2;
  v7 = *a3;
  *(result + 24) = a3[1];
  *(result + 8) = v7;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[4];
  *(result + 88) = a3[5];
  *(result + 72) = v10;
  *(result + 56) = v9;
  *(result + 40) = v8;
  v11 = a3[6];
  v12 = a3[7];
  v13 = a3[8];
  *(result + 148) = *(a3 + 140);
  *(result + 136) = v13;
  *(result + 120) = v12;
  *(result + 104) = v11;
  *(result + 164) = a4;
  *(result + 168) = a5;
  *(result + 176) = a7;
  *(result + 184) = a6;
  return result;
}

uint64_t sub_1001903EC(uint64_t a1, uint64_t a2, void *a3)
{
  v93 = *a2;
  if (sub_10018E854(a1))
  {
    v6 = *(sub_100100690() + 4);
    v7 = a3[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a3) >> 6) < v6)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194D038();
      }

      v8 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        sub_10018F0D0(&__p);
        v9 = v94;
        if (v94[23] < 0)
        {
          v9 = *v94;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = p_p;
        *&buf[22] = 2048;
        *&buf[24] = v11;
        *v104 = 1024;
        *&v104[2] = v6;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as it has %lu samples, less than threshold %d", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v94[23] & 0x80000000) != 0)
        {
          operator delete(*v94);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      v12 = off_1025D4858;
      std::operator+<char>();
      v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v14 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v101);
      v15 = &__p;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v101;
      }

      else
      {
        v16 = v101.__r_.__value_.__r.__words[0];
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
      *v94 = 136315906;
      *&v94[4] = v15;
      *&v94[12] = 2080;
      *&v94[14] = v16;
      *&v94[22] = 2048;
      *&v94[24] = v17;
      *v95 = 1024;
      *&v95[2] = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 0, "%s, will harvest for associated AP %s as it has %lu samples, less than threshold %d", v94, 38, *&v92, LODWORD(v93));
      v19 = v18;
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_147:
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::shouldAddHarvestSample(const CLWifiHarvestDatabaseEntry &, const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }

      return 1;
    }

    v33 = *(a2 + 84) - *(v7 - 108);
    v34 = *(sub_100100690() + 5);
    if (v33 >= v34)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194D038();
      }

      v61 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        sub_10018F0D0(&__p);
        v62 = v94;
        if (v94[23] < 0)
        {
          v62 = *v94;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &__p;
        }

        else
        {
          v63 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v62;
        *&buf[12] = 2080;
        *&buf[14] = v63;
        *&buf[22] = 2048;
        *&buf[24] = v33;
        *v104 = 2048;
        *&v104[2] = v34;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as timelapse %.1lf >= threshold %.1lf", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v94[23] & 0x80000000) != 0)
        {
          operator delete(*v94);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      v64 = off_1025D4858;
      std::operator+<char>();
      v65 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v66 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v101);
      v67 = &__p;
      if (v65 < 0)
      {
        v67 = v66;
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &v101;
      }

      else
      {
        v68 = v101.__r_.__value_.__r.__words[0];
      }

      *v94 = 136315906;
      *&v94[4] = v67;
      *&v94[12] = 2080;
      *&v94[14] = v68;
      *&v94[22] = 2048;
      *&v94[24] = v33;
      *v95 = 2048;
      *&v95[2] = v34;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v64, 0, "%s, will harvest for associated AP %s as timelapse %.1lf >= threshold %.1lf", v94, 42, v92, v93);
      v19 = v69;
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_147;
    }

    v35 = *(a3[1] - 108) - *(a3[1] - 300);
    if (v35 >= v34)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194D038();
      }

      v70 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        sub_10018F0D0(&__p);
        v71 = v94;
        if (v94[23] < 0)
        {
          v71 = *v94;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = &__p;
        }

        else
        {
          v72 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v71;
        *&buf[12] = 2080;
        *&buf[14] = v72;
        *&buf[22] = 2048;
        *&buf[24] = v35;
        *v104 = 2048;
        *&v104[2] = v34;
        _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as timelapse %.1lf >= threshold %.1lf for latest two harvest samples", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v94[23] & 0x80000000) != 0)
        {
          operator delete(*v94);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      v86 = off_1025D4858;
      std::operator+<char>();
      v87 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v88 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v101);
      v89 = &__p;
      if (v87 < 0)
      {
        v89 = v88;
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &v101;
      }

      else
      {
        v90 = v101.__r_.__value_.__r.__words[0];
      }

      *v94 = 136315906;
      *&v94[4] = v89;
      *&v94[12] = 2080;
      *&v94[14] = v90;
      *&v94[22] = 2048;
      *&v94[24] = v35;
      *v95 = 2048;
      *&v95[2] = v34;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v86, 0, "%s, will harvest for associated AP %s as timelapse %.1lf >= threshold %.1lf for latest two harvest samples", v94, 42, v92, v93);
      v19 = v91;
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_147;
    }

    v36 = *(v7 - 168);
    *buf = *(v7 - 184);
    *&buf[16] = v36;
    v37 = *(v7 - 152);
    v38 = *(v7 - 136);
    v39 = *(v7 - 104);
    v105 = *(v7 - 120);
    v106 = v39;
    *v104 = v37;
    *&v104[16] = v38;
    v40 = *(v7 - 88);
    v41 = *(v7 - 72);
    v42 = *(v7 - 56);
    *(v109 + 12) = *(v7 - 44);
    v108 = v41;
    v109[0] = v42;
    v107 = v40;
    v43 = *(a2 + 120);
    v98 = *(a2 + 104);
    v99 = v43;
    v100[0] = *(a2 + 136);
    *(v100 + 12) = *(a2 + 148);
    v44 = *(a2 + 56);
    *v95 = *(a2 + 40);
    *&v95[16] = v44;
    v45 = *(a2 + 88);
    v96 = *(a2 + 72);
    v97 = v45;
    v46 = *(a2 + 24);
    *v94 = *(a2 + 8);
    *&v94[16] = v46;
    sub_1001097CC((a1 + 264), buf, v94);
    v48 = v47;
    v49 = *(sub_1001CBE20() + 10);
    if (v48 > v49)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v50 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v51 = v94[23];
        v52 = *v94;
        sub_10018F0D0(&__p);
        v53 = v94;
        if (v51 < 0)
        {
          v53 = v52;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &__p;
        }

        else
        {
          v54 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v53;
        *&buf[12] = 2080;
        *&buf[14] = v54;
        *&buf[22] = 2048;
        *&buf[24] = v48;
        *v104 = 2048;
        *&v104[2] = v49;
        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as distance %.1lf greater than threshold %.1lf", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v94[23] & 0x80000000) != 0)
        {
          operator delete(*v94);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      v55 = off_1025D4858;
      std::operator+<char>();
      v56 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v57 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v101);
      v58 = &__p;
      if (v56 < 0)
      {
        v58 = v57;
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v101;
      }

      else
      {
        v59 = v101.__r_.__value_.__r.__words[0];
      }

      *v94 = 136315906;
      *&v94[4] = v58;
      *&v94[12] = 2080;
      *&v94[14] = v59;
      *&v94[22] = 2048;
      *&v94[24] = v48;
      *v95 = 2048;
      *&v95[2] = v49;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v55, 0, "%s, will harvest for associated AP %s as distance %.1lf greater than threshold %.1lf", v94, 42, v92, v93);
      v19 = v60;
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_147;
    }

    if (qword_1025D4850 != -1)
    {
      sub_10194CFCC();
    }

    v73 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      v74 = v94[23];
      v75 = *v94;
      sub_10018F0D0(&__p);
      v76 = v94;
      if (v74 < 0)
      {
        v76 = v75;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &__p;
      }

      else
      {
        v77 = __p.__r_.__value_.__r.__words[0];
      }

      v78 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
      *buf = 136316162;
      *&buf[4] = v76;
      *&buf[12] = 2080;
      *&buf[14] = v77;
      *&buf[22] = 2048;
      *&buf[24] = v78;
      *v104 = 2048;
      *&v104[2] = v33;
      *&v104[10] = 2048;
      *&v104[12] = v48;
      _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "%s, will not harvest for associated AP %s as it has %lu samples, timelapse %.1lf, distance %.1lf", buf, 0x34u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v94[23] & 0x80000000) != 0)
      {
        operator delete(*v94);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10194CFF4(buf);
      v79 = off_1025D4858;
      std::operator+<char>();
      v80 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v81 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v101);
      v82 = &__p;
      if (v80 < 0)
      {
        v82 = v81;
      }

      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &v101;
      }

      else
      {
        v83 = v101.__r_.__value_.__r.__words[0];
      }

      v84 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
      *v94 = 136316162;
      *&v94[4] = v82;
      *&v94[12] = 2080;
      *&v94[14] = v83;
      *&v94[22] = 2048;
      *&v94[24] = v84;
      *v95 = 2048;
      *&v95[2] = v33;
      *&v95[10] = 2048;
      *&v95[12] = v48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v79, 0, "%s, will not harvest for associated AP %s as it has %lu samples, timelapse %.1lf, distance %.1lf", v94, 52, *&v92, v93);
      v32 = v85;
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_48:
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::shouldAddHarvestSample(const CLWifiHarvestDatabaseEntry &, const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10194D038();
    }

    v20 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      v21 = buf[23];
      v22 = *buf;
      sub_10018F0D0(v94);
      v23 = buf;
      if (v21 < 0)
      {
        v23 = v22;
      }

      if (v94[23] >= 0)
      {
        v24 = v94;
      }

      else
      {
        v24 = *v94;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v23;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v24;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "%s, #warning, will not harvest for associated AP %s as database is invalid", &__p, 0x16u);
      if ((v94[23] & 0x80000000) != 0)
      {
        operator delete(*v94);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10194CFF4(buf);
      v26 = off_1025D4858;
      std::operator+<char>();
      v27 = v94[23];
      v28 = *v94;
      sub_10018F0D0(&__p);
      v29 = v94;
      if (v27 < 0)
      {
        v29 = v28;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v101.__r_.__value_.__l.__data_) = 136315394;
      *(v101.__r_.__value_.__r.__words + 4) = v29;
      WORD2(v101.__r_.__value_.__r.__words[1]) = 2080;
      *(&v101.__r_.__value_.__r.__words[1] + 6) = v30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 0, "%s, #warning, will not harvest for associated AP %s as database is invalid", &v101, 22);
      v32 = v31;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v94[23] & 0x80000000) != 0)
      {
        operator delete(*v94);
      }

      goto LABEL_48;
    }
  }

  return result;
}

void sub_100191260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001912D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  CFAbsoluteTimeGetCurrent();
  sub_10003848C(v37);
  v4 = sub_100038730(&v38, "mac, ", 5);
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_100038730(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_100038730(&v38, ", lat, ", 7);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 16) = 8;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v9 = sub_100038730(&v38, ", lon, ", 7);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 16) = 8;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v11 = sub_100038730(&v38, ", alt, ", 7);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 16) = 1;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v13 = sub_100038730(&v38, ", acc, ", 7);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 16) = 1;
  *(v13 + *(v14 - 24) + 8) = *(v13 + *(v14 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v15 = sub_100038730(&v38, ", vacc, ", 8);
  v16 = *v15;
  *(v15 + *(*v15 - 24) + 16) = 1;
  *(v15 + *(v16 - 24) + 8) = *(v15 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v17 = sub_100038730(&v38, ", channel, ", 11);
  v18 = *v17;
  *(v17 + *(*v17 - 24) + 16) = 0;
  *(v17 + *(v18 - 24) + 8) = *(v17 + *(v18 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v19 = sub_100038730(&v38, ", rssi, ", 8);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 16) = 0;
  *(v19 + *(v20 - 24) + 8) = *(v19 + *(v20 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v21 = sub_100038730(&v38, ", locationTime, ", 16);
  v22 = *v21;
  *(v21 + *(*v21 - 24) + 16) = 1;
  *(v21 + *(v22 - 24) + 8) = *(v21 + *(v22 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v23 = sub_100038730(&v38, ", age, ", 7);
  v24 = *v23;
  *(v23 + *(*v23 - 24) + 16) = 4;
  *(v23 + *(v24 - 24) + 8) = *(v23 + *(v24 - 24) + 8) & 0xFFFFFEFB | 4;
  v25 = std::ostream::operator<<();
  sub_100038730(v25, "h", 1);
  v26 = sub_100038730(&v38, ", scanTime, ", 12);
  v27 = *v26;
  *(v26 + *(*v26 - 24) + 16) = 1;
  *(v26 + *(v27 - 24) + 8) = *(v26 + *(v27 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v28 = sub_100038730(&v38, ", LOI, ", 7);
  sub_100191B4C(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  sub_100038730(v28, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v45 & 0x10) != 0)
  {
    v32 = v44;
    if (v44 < v41)
    {
      v44 = v41;
      v32 = v41;
    }

    locale = v40[4].__locale_;
  }

  else
  {
    if ((v45 & 8) == 0)
    {
      v31 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    locale = v40[1].__locale_;
    v32 = v40[3].__locale_;
  }

  v31 = v32 - locale;
  if ((v32 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v31 >= 0x17)
  {
    operator new();
  }

  a2[23] = v31;
  if (v31)
  {
    memmove(a2, locale, v31);
  }

LABEL_30:
  a2[v31] = 0;
  v38 = v34;
  if (v43 < 0)
  {
    operator delete(v42);
  }

  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100191AD8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100191B68(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 9936);
  if (*(a1 + 1577) == 1 && (*(a1 + 1545) & 1) == 0)
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v14 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GpsReferenceLocation is set}";
      goto LABEL_72;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v23 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    buf = 68289026;
    v130 = 2082;
    v131 = "";
    v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GpsReferenceLocation is set}";
LABEL_83:
    v69 = v23;
    v70 = OS_LOG_TYPE_DEBUG;
    goto LABEL_84;
  }

  if (*(a1 + 1576) != 1)
  {
    goto LABEL_104;
  }

  v7 = (a1 + 4692);
  v8 = (a1 + 4688);
  v9 = *(a1 + 4708);
  if (v9 >= 0.0)
  {
    if (v9 > 10000.0 && *(a2 + 20) < 10000.0)
    {
      goto LABEL_33;
    }

    sub_1001097CC((a1 + 11656), a2, a1 + 4688);
    v17 = v16;
    if (v16 > 10000.0)
    {
      if (v6[1832])
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v18 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v19 = *(a2 + 4);
        v20 = *(a2 + 12);
        v21 = *v7;
        v22 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v19;
        *&v133[8] = 2053;
        *&v133[10] = v20;
        *&v133[18] = 2053;
        *&v133[20] = v21;
        *&v133[28] = 2053;
        *&v133[30] = v22;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v11 = "{msg%{public}.0s:#GnssAssistancePosition, #Warning new assistance location differ from prev, sending to GPS, newLat:%{sensitive}.7f, newLon:%{sensitive}.7f, oldLat:%{sensitive}.7f, oldLon:%{sensitive}.7f, dist:%{private}.2f}";
        v12 = v18;
        v13 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v92 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        v93 = *(a2 + 4);
        v94 = *(a2 + 12);
        v95 = *v7;
        v96 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v93;
        *&v133[8] = 2053;
        *&v133[10] = v94;
        *&v133[18] = 2053;
        *&v133[20] = v95;
        *&v133[28] = 2053;
        *&v133[30] = v96;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v11 = "{msg%{public}.0s:#GnssAssistancePosition, #Warning new assistance location differ from prev, sending to GPS, newLat:%{sensitive}.7f, newLon:%{sensitive}.7f, oldLat:%{sensitive}.7f, oldLon:%{sensitive}.7f, dist:%{private}.2f}";
        v12 = v92;
        v13 = OS_LOG_TYPE_DEBUG;
      }

      v25 = 68;
      goto LABEL_32;
    }

    if (v6[1832])
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v82 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v83 = *(a2 + 4);
        v84 = *(a2 + 12);
        v85 = *v7;
        v86 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v83;
        *&v133[8] = 2053;
        *&v133[10] = v84;
        *&v133[18] = 2053;
        *&v133[20] = v85;
        *&v133[28] = 2053;
        *&v133[30] = v86;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v87 = v82;
        v88 = OS_LOG_TYPE_DEFAULT;
LABEL_103:
        _os_log_impl(dword_100000000, v87, v88, "{msg%{public}.0s:#GnssAssistancePosition, drop,new assistance location differ slightly from prev, not sending to GPS, newLat:%{sensitive}.7f, newLon:%{sensitive}.7f, oldLat:%{sensitive}.7f, oldLon:%{sensitive}.7f, dist:%{private}.2f}", &buf, 0x44u);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v97 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v98 = *(a2 + 4);
        v99 = *(a2 + 12);
        v100 = *v7;
        v101 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v98;
        *&v133[8] = 2053;
        *&v133[10] = v99;
        *&v133[18] = 2053;
        *&v133[20] = v100;
        *&v133[28] = 2053;
        *&v133[30] = v101;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v87 = v97;
        v88 = OS_LOG_TYPE_DEBUG;
        goto LABEL_103;
      }
    }

LABEL_104:
    if (v6[1832] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v102 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v103 = *(a2 + 96);
      v104 = *(a2 + 4);
      v105 = *(a2 + 12);
      v106 = *(a2 + 28);
      v107 = *(a2 + 20);
      v108 = *(a2 + 36);
      v109 = *(a1 + 1576);
      buf = 68290819;
      v130 = 2082;
      v131 = "";
      v132 = 1026;
      *v133 = v103;
      *&v133[4] = 2053;
      *&v133[6] = v104;
      *&v133[14] = 2053;
      *&v133[16] = v105;
      *&v133[24] = 2050;
      *&v133[26] = v106;
      *&v133[34] = 2050;
      *&v133[36] = v107;
      *&v133[44] = 2050;
      *&v133[46] = v108;
      v134 = 1026;
      v135 = v109;
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not using location assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, GpsUseCachedLocation:%{public}hhd}";
      v69 = v102;
      v70 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v110 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v111 = *(a2 + 96);
      v112 = *(a2 + 4);
      v113 = *(a2 + 12);
      v114 = *(a2 + 28);
      v115 = *(a2 + 20);
      v116 = *(a2 + 36);
      v117 = *(a1 + 1576);
      buf = 68290819;
      v130 = 2082;
      v131 = "";
      v132 = 1026;
      *v133 = v111;
      *&v133[4] = 2053;
      *&v133[6] = v112;
      *&v133[14] = 2053;
      *&v133[16] = v113;
      *&v133[24] = 2050;
      *&v133[26] = v114;
      *&v133[34] = 2050;
      *&v133[36] = v115;
      *&v133[44] = 2050;
      *&v133[46] = v116;
      v134 = 1026;
      v135 = v117;
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not using location assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, GpsUseCachedLocation:%{public}hhd}";
      v69 = v110;
      v70 = OS_LOG_TYPE_DEBUG;
    }

    v81 = 80;
    goto LABEL_114;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v11 = "{msg%{public}.0s:#GnssAssistancePosition, assistance location now available, sending to GPS}";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_31:
      v25 = 18;
LABEL_32:
      _os_log_impl(dword_100000000, v12, v13, v11, &buf, v25);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v11 = "{msg%{public}.0s:#GnssAssistancePosition, assistance location now available, sending to GPS}";
      v12 = v24;
      v13 = OS_LOG_TYPE_DEBUG;
      goto LABEL_31;
    }
  }

LABEL_33:
  v26 = *(a2 + 16);
  *(a1 + 9112) = *a2;
  *(a1 + 9128) = v26;
  v27 = *(a2 + 32);
  v28 = *(a2 + 48);
  v29 = *(a2 + 80);
  *(a1 + 9176) = *(a2 + 64);
  *(a1 + 9192) = v29;
  *(a1 + 9144) = v27;
  *(a1 + 9160) = v28;
  v30 = *(a2 + 96);
  v31 = *(a2 + 112);
  v32 = *(a2 + 128);
  *(a1 + 9252) = *(a2 + 140);
  *(a1 + 9224) = v31;
  *(a1 + 9240) = v32;
  *(a1 + 9208) = v30;
  memcpy((a1 + 9272), (a2 + 160), 0x201uLL);
  v33 = *(a2 + 680);
  v34 = *(a2 + 688);
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 9792) = v33;
  v35 = *(a1 + 9800);
  *(a1 + 9800) = v34;
  if (v35)
  {
    sub_100008080(v35);
  }

  v36 = (a1 + 1584);
  v37 = *(a2 + 696);
  v38 = *(a2 + 712);
  *(a1 + 9840) = *(a2 + 728);
  *(a1 + 9824) = v38;
  *(a1 + 9808) = v37;
  v39 = *(a2 + 744);
  v40 = *(a2 + 760);
  v41 = *(a2 + 776);
  *(a1 + 9897) = *(a2 + 785);
  *(a1 + 9888) = v41;
  *(a1 + 9872) = v40;
  *(a1 + 9856) = v39;
  *v6 = 0;
  v42 = *(a1 + 9196);
  if (v42 <= 74)
  {
    if (v42 <= 49)
    {
      if (v42 <= 24)
      {
        v43 = 1;
      }

      else
      {
        v43 = 2;
      }
    }

    else
    {
      v43 = 3;
    }
  }

  else
  {
    v43 = 4;
  }

  *(a1 + 9920) = v43;
  *(a1 + 9924) = v43;
  *(a1 + 9940) = 0;
  v44 = *(a1 + 9224);
  *(a1 + 1680) = *(a1 + 9208);
  *(a1 + 1696) = v44;
  *(a1 + 1712) = *(a1 + 9240);
  *(a1 + 1724) = *(a1 + 9252);
  v45 = *(a1 + 9160);
  *(a1 + 1616) = *(a1 + 9144);
  *(a1 + 1632) = v45;
  v46 = *(a1 + 9192);
  *(a1 + 1648) = *(a1 + 9176);
  *(a1 + 1664) = v46;
  v47 = *(a1 + 9128);
  *v36 = *(a1 + 9112);
  *(a1 + 1600) = v47;
  memcpy((a1 + 1744), (a1 + 9272), 0x201uLL);
  v48 = *(a1 + 9792);
  v49 = *(a1 + 9800);
  if (v49)
  {
    atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2264) = v48;
  v50 = *(a1 + 2272);
  *(a1 + 2272) = v49;
  if (v50)
  {
    sub_100008080(v50);
  }

  v51 = *(a1 + 9888);
  *(a1 + 2344) = *(a1 + 9872);
  *(a1 + 2360) = v51;
  *(a1 + 2369) = *(a1 + 9897);
  v52 = *(a1 + 9824);
  *(a1 + 2280) = *(a1 + 9808);
  *(a1 + 2296) = v52;
  v53 = *(a1 + 9856);
  *(a1 + 2312) = *(a1 + 9840);
  *(a1 + 2328) = v53;
  v54 = *(a1 + 488);
  if (v54 && a3)
  {
    v55 = *(a1 + 1696);
    v118[6] = *(a1 + 1680);
    v118[7] = v55;
    v119[0] = *(a1 + 1712);
    *(v119 + 12) = *(a1 + 1724);
    v56 = *(a1 + 1632);
    v118[2] = *(a1 + 1616);
    v118[3] = v56;
    v57 = *(a1 + 1664);
    v118[4] = *(a1 + 1648);
    v118[5] = v57;
    v58 = *(a1 + 1600);
    v118[0] = *v36;
    v118[1] = v58;
    memcpy(v120, (a1 + 1744), sizeof(v120));
    v121 = *(a1 + 2264);
    v59 = *(a1 + 2272);
    v122 = v59;
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = *(a1 + 2360);
    v127 = *(a1 + 2344);
    v128[0] = v60;
    *(v128 + 9) = *(a1 + 2369);
    v61 = *(a1 + 2296);
    v123 = *(a1 + 2280);
    v124 = v61;
    v62 = *(a1 + 2328);
    v125 = *(a1 + 2312);
    v126 = v62;
    sub_1002248AC(v54, v118);
    if (v122)
    {
      sub_100008080(v122);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v63 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "GnssAssistancePosition: Feed cached location to position assistance maintenance", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A964F4();
    }
  }

  if (*(a1 + 1544) != 1)
  {
    if (v6[1832])
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v14 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, cache,location since position assistance engine not running}";
LABEL_72:
      v69 = v14;
      v70 = OS_LOG_TYPE_DEFAULT;
LABEL_84:
      v81 = 18;
LABEL_114:
      _os_log_impl(dword_100000000, v69, v70, v15, &buf, v81);
      return;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v23 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    buf = 68289026;
    v130 = 2082;
    v131 = "";
    v15 = "{msg%{public}.0s:#GnssAssistancePosition, cache,location since position assistance engine not running}";
    goto LABEL_83;
  }

  if (!v6[1832])
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v71 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_78;
    }

    v72 = *(a2 + 4);
    v73 = *(a2 + 12);
    buf = 68289795;
    v130 = 2082;
    v131 = "";
    v132 = 1025;
    *v133 = v43;
    *&v133[4] = 2053;
    *&v133[6] = v72;
    *&v133[14] = 2053;
    *&v133[16] = v73;
    v67 = v71;
    v68 = OS_LOG_TYPE_DEBUG;
    goto LABEL_77;
  }

  if (v6[1833])
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v64 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v65 = *(a2 + 4);
    v66 = *(a2 + 12);
    buf = 68289795;
    v130 = 2082;
    v131 = "";
    v132 = 1025;
    *v133 = v43;
    *&v133[4] = 2053;
    *&v133[6] = v65;
    *&v133[14] = 2053;
    *&v133[16] = v66;
    v67 = v64;
    v68 = OS_LOG_TYPE_DEFAULT;
LABEL_77:
    _os_log_impl(dword_100000000, v67, v68, "{msg%{public}.0s:#GnssAssistancePosition, feed,valid reference location, reliability:%{private}d, latitude:%{sensitive}.7f, longitude:%{sensitive}.7f}", &buf, 0x2Cu);
LABEL_78:
    sub_1001BBE34(a1, (a1 + 9112));
    v74 = *(a2 + 16);
    *v8 = *a2;
    *(a1 + 4704) = v74;
    v75 = *(a2 + 32);
    v76 = *(a2 + 48);
    v77 = *(a2 + 80);
    *(a1 + 4752) = *(a2 + 64);
    *(a1 + 4768) = v77;
    *(a1 + 4720) = v75;
    *(a1 + 4736) = v76;
    v78 = *(a2 + 96);
    v79 = *(a2 + 112);
    v80 = *(a2 + 128);
    *(a1 + 4828) = *(a2 + 140);
    *(a1 + 4800) = v79;
    *(a1 + 4816) = v80;
    *(a1 + 4784) = v78;
    return;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v89 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v90 = v6[1832];
    v91 = v6[1833];
    buf = 68289538;
    v130 = 2082;
    v131 = "";
    v132 = 1026;
    *v133 = v90;
    *&v133[4] = 1026;
    *&v133[6] = v91;
    v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,reference location, fInEmergency:%{public}d, fHeloEnabled:%{public}d}";
    v69 = v89;
    v70 = OS_LOG_TYPE_DEFAULT;
    v81 = 30;
    goto LABEL_114;
  }
}

void sub_100192848(_Unwind_Exception *a1)
{
  if (STACK[0x2B0])
  {
    sub_100008080(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100192868(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_100019438(a2, v2 + 32) & 0x80) == 0)
      {
        if ((sub_100019438(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void sub_1001928D0(uint64_t a1, __int128 *a2, int a3, int a4)
{
  v7 = (a1 + 11640);
  v8 = sub_1001CCA3C(a2, (a2 + 10));
  Current = CFAbsoluteTimeGetCurrent();
  if (v7[128] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = *(a2 + 119);
      v13 = *(a2 + 118);
      v14 = *(a2 + 32);
      v15 = *(a2 + 33);
      v16 = *(a2 + 34);
      *buf = 68291331;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v11;
      *&v292[8] = 1026;
      *&v292[10] = v14;
      *&v292[14] = 2050;
      *&v292[16] = v12;
      *v293 = 1026;
      *&v293[2] = v13;
      *&v293[6] = 1026;
      *&v293[8] = v15;
      *v294 = 1026;
      *&v294[2] = v16;
      *v295 = 1026;
      *&v295[2] = a3;
      *v296 = 2050;
      *&v296[2] = v8;
      v297 = 1026;
      v298 = a4;
      v17 = v10;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v21 = *(a2 + 119);
      v22 = *(a2 + 118);
      v23 = *(a2 + 32);
      v24 = *(a2 + 33);
      v25 = *(a2 + 34);
      *buf = 68291331;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v20;
      *&v292[8] = 1026;
      *&v292[10] = v23;
      *&v292[14] = 2050;
      *&v292[16] = v21;
      *v293 = 1026;
      *&v293[2] = v22;
      *&v293[6] = 1026;
      *&v293[8] = v24;
      *v294 = 1026;
      *&v294[2] = v25;
      *v295 = 1026;
      *&v295[2] = a3;
      *v296 = 2050;
      *&v296[2] = v8;
      v297 = 1026;
      v298 = a4;
      v17 = v19;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_16:
      _os_log_impl(dword_100000000, v17, v18, "{msg%{public}.0s:#GnssAssistancePosition, #GnssAssistancePosition,handlePositionAssistance, location,:%{sensitive, location:escape_only}s, integrity:%{public}d, undulation:%{public}f, undulationModel:%{public}d, referenceFrame:%{public}d, rawReferenceFrame:%{public}d, isCpiCandidate:%{public}d, age:%{public}.1f, isExternalLocationHandling:%{public}d}", buf, 0x54u);
      if (v286 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v26 = (a2 + 6);
  v27 = *(a2 + 24) == 0;
  if (*(a2 + 20) <= 0.0)
  {
    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v35 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 68289026;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,hunc invalid}";
      v36 = v35;
      v37 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v40 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 68289026;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,hunc invalid}";
      v36 = v40;
      v37 = OS_LOG_TYPE_DEBUG;
    }

    v41 = 18;
    goto LABEL_144;
  }

  v28 = *(a2 + 516);
  v29 = sub_100196658(a1);
  v30 = v29;
  if ((*v26 == 11 || *v26 == 4) && (v7[128] & 1) == 0 && ((v29 & 1) != 0 || *(a1 + 1579) == 1))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v42 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v43 = v7[128];
    v44 = *(a1 + 1579);
    *buf = 68289794;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v291 = 1026;
    *v292 = v43;
    *&v292[4] = 1026;
    *&v292[6] = v30;
    *&v292[10] = 1026;
    *&v292[12] = v44;
    v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,ignoring wifi location assistance in tunnel or airborne, InEmergency:%{public}d, InTunnel:%{public}d, IsAirborne:%{public}d}";
    v36 = v42;
    v37 = OS_LOG_TYPE_DEBUG;
    v41 = 36;
    goto LABEL_144;
  }

  v283 = (a1 + 2420);
  if (*(a1 + 6476) > 0.0)
  {
    v31 = 4688;
    if (a3)
    {
      v31 = 4844;
    }

    if (sub_100195BF8(a1, a2, a1 + v31))
    {
      if (v7[128] == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v32 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v33 = *v26;
        *buf = 68289282;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 1026;
        *v292 = v33;
        v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isCellOverridingRecentWifi, location.type:%{public}d}";
        goto LABEL_137;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v50 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v52 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v52;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isCellOverridingRecentWifi, location.type:%{public}d}";
LABEL_142:
      v36 = v50;
      v37 = OS_LOG_TYPE_DEBUG;
      goto LABEL_143;
    }
  }

  if (a3)
  {
    v38 = a1 + 4844;
  }

  else
  {
    v38 = a1 + 4688;
  }

  v282 = v38;
  if (sub_100195A14(a1, a2, v38))
  {
    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v32 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v39 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v39;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isWifiOverridingRecentPipeline, location.type:%{public}d}";
      goto LABEL_137;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v50 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v51 = *v26;
    *buf = 68289282;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v291 = 1026;
    *v292 = v51;
    v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isWifiOverridingRecentPipeline, location.type:%{public}d}";
    goto LABEL_142;
  }

  if (*v7 == 1)
  {
    v45 = sub_1001CCA3C(a1 + 10832, a1 + 10992);
    if (v45 < 0.0 || v45 > 10.0)
    {
      v46 = *(a1 + 8240);
      v47 = *(a1 + 8248);
      *(a1 + 8272) = 0;
      v48 = (v47 - v46) >> 3;
      if (v48 >= 3)
      {
        do
        {
          operator delete(*v46);
          v46 = (*(a1 + 8240) + 8);
          *(a1 + 8240) = v46;
          v48 = (*(a1 + 8248) - v46) >> 3;
        }

        while (v48 > 2);
      }

      if (v48 == 1)
      {
        v49 = 256;
        goto LABEL_73;
      }

      if (v48 == 2)
      {
        v49 = 512;
LABEL_73:
        *(a1 + 8264) = v49;
      }
    }
  }

  if (*(a2 + 44) >= 0.0 && *(a2 + 52) > 0.0)
  {
    sub_10029278C(a1 + 10832, a2);
    sub_1000A2B60((a1 + 8232), (a2 + 44));
    v53 = *(a1 + 8272);
    if (v53 >= 0x15)
    {
      v54 = *(a1 + 8264);
      *(a1 + 8272) = v53 - 1;
      *(a1 + 8264) = v54 + 1;
      sub_1000A2BE8(a1 + 8232, 1);
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v55 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v56 = v55;
        v57 = OS_LOG_TYPE_DEFAULT;
LABEL_87:
        _os_log_impl(dword_100000000, v56, v57, "{msg%{public}.0s:#GnssAssistancePosition, cache,valid speed}", buf, 0x12u);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v58 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v56 = v58;
        v57 = OS_LOG_TYPE_DEBUG;
        goto LABEL_87;
      }
    }
  }

  if (v8 <= 60.0 && v8 >= 0.0)
  {
    goto LABEL_90;
  }

  if (*(a2 + 20) < 500.0)
  {
    *(a2 + 20) = 0x407F400000000000;
    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v61 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        sub_100072AFC(a2, __p);
        if (v286 >= 0)
        {
          v62 = __p;
        }

        else
        {
          v62 = __p[0];
        }

        *buf = 68289283;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 2085;
        *v292 = v62;
        v63 = v61;
        v64 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_164;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v101 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        sub_100072AFC(a2, __p);
        if (v286 >= 0)
        {
          v102 = __p;
        }

        else
        {
          v102 = __p[0];
        }

        *buf = 68289283;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 2085;
        *v292 = v102;
        v63 = v101;
        v64 = OS_LOG_TYPE_DEBUG;
LABEL_164:
        _os_log_impl(dword_100000000, v63, v64, "{msg%{public}.0s:#GnssAssistancePosition, adjust,hunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
        if (v286 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v103 = *(a2 + 36);
  if (v103 <= 0.0 || v103 >= 200.0)
  {
    goto LABEL_90;
  }

  *(a2 + 36) = 0x4069000000000000;
  if (v7[128] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v104 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v105 = __p;
      }

      else
      {
        v105 = __p[0];
      }

      *buf = 68289283;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v105;
      v106 = v104;
      v107 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_183;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v108 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v109 = __p;
      }

      else
      {
        v109 = __p[0];
      }

      *buf = 68289283;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v109;
      v106 = v108;
      v107 = OS_LOG_TYPE_DEBUG;
LABEL_183:
      _os_log_impl(dword_100000000, v106, v107, "{msg%{public}.0s:#GnssAssistancePosition, adjust,vunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
      if (v286 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_90:
  v59 = v27 & v28;
  v60 = *v26;
  if (*v26 > 6)
  {
    if (v60 > 10)
    {
      if (v60 != 11)
      {
        if (v60 != 12 && v60 != 14)
        {
          goto LABEL_322;
        }

        goto LABEL_132;
      }

      v123 = sub_1000081AC();
      if (v123 - *(a1 + 11712) >= *(a1 + 11720))
      {
        *(a1 + 11712) = v123;
        goto LABEL_322;
      }

      if (v7[128] == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v65 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        sub_100072AFC(a2, __p);
        if (v286 >= 0)
        {
          v142 = __p;
        }

        else
        {
          v142 = __p[0];
        }

        v143 = *(a1 + 11712);
        *buf = 68289539;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 2085;
        *v292 = v142;
        *&v292[8] = 2050;
        *&v292[10] = v143;
        v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate WiFi2 location, location,:%{sensitive, location:escape_only}s, machTimeOfLastHighRateWifi2Assistance:%{public}f}";
        goto LABEL_262;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v144 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v151 = __p;
      }

      else
      {
        v151 = __p[0];
      }

      v152 = *(a1 + 11712);
      *buf = 68289539;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v151;
      *&v292[8] = 2050;
      *&v292[10] = v152;
      v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate WiFi2 location, location,:%{sensitive, location:escape_only}s, machTimeOfLastHighRateWifi2Assistance:%{public}f}";
      goto LABEL_289;
    }

    switch(v60)
    {
      case 7:
        v114 = a2[1];
        *(a1 + 8072) = *a2;
        *(a1 + 8088) = v114;
        v115 = a2[2];
        v116 = a2[3];
        v117 = a2[5];
        *(a1 + 8136) = a2[4];
        *(a1 + 8152) = v117;
        *(a1 + 8104) = v115;
        *(a1 + 8120) = v116;
        v118 = a2[6];
        v119 = a2[7];
        v120 = a2[8];
        *(a1 + 8212) = *(a2 + 140);
        *(a1 + 8184) = v119;
        *(a1 + 8200) = v120;
        *(a1 + 8168) = v118;
        if (v7[128] != 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v135 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_322;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,LAC location}";
          goto LABEL_241;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v93 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_322;
        }

        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,LAC location}";
        break;
      case 9:
LABEL_146:
        if (v8 >= 0.0 && v8 <= 6.0 && (*(a1 + 1580) & 1) != 0)
        {
          if (v7[128])
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v97 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v98 = __p;
            }

            else
            {
              v98 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v98;
            v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GPS fix, location,:%{sensitive, location:escape_only}s}";
            v99 = v97;
            v100 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v136 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v137 = __p;
            }

            else
            {
              v137 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v137;
            v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GPS fix, location,:%{sensitive, location:escape_only}s}";
            v99 = v136;
            v100 = OS_LOG_TYPE_DEBUG;
          }

          v138 = 28;
LABEL_291:
          _os_log_impl(dword_100000000, v99, v100, v68, buf, v138);
          if (v286 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

        if (v7[128])
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v124 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_322;
          }

          sub_100072AFC(a2, __p);
          if (v286 >= 0)
          {
            v125 = __p;
          }

          else
          {
            v125 = __p[0];
          }

          *buf = 68289539;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v291 = 2085;
          *v292 = v125;
          *&v292[8] = 2050;
          *&v292[10] = v8;
          v126 = v124;
          v127 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v140 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_322;
          }

          sub_100072AFC(a2, __p);
          if (v286 >= 0)
          {
            v141 = __p;
          }

          else
          {
            v141 = __p[0];
          }

          *buf = 68289539;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v291 = 2085;
          *v292 = v141;
          *&v292[8] = 2050;
          *&v292[10] = v8;
          v126 = v140;
          v127 = OS_LOG_TYPE_DEBUG;
        }

        _os_log_impl(dword_100000000, v126, v127, "{msg%{public}.0s:#GnssAssistancePosition, qualified GPS location back to GPS as assistance, location,:%{sensitive, location:escape_only}s, age:%{public}.1f}", buf, 0x26u);
        if (v286 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_322:
        v172 = *(a1 + 1560);
        if (v172)
        {
          v173 = *v26;
          do
          {
            v174 = *(v172 + 7);
            if (v173 >= v174)
            {
              if (v174 >= v173)
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1001A7560();
                }

                v190 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
                {
                  v191 = *v26;
                  *buf = 67109120;
                  v288 = v191;
                  _os_log_impl(dword_100000000, v190, OS_LOG_TYPE_DEFAULT, "#GnssAssistancePosition,rejecting position assistance due to location type blocklist,%d", buf, 8u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A96314(v26);
                }

                return;
              }

              ++v172;
            }

            v172 = *v172;
          }

          while (v172);
        }

        if (a3)
        {
          v175 = *v26;
          if (*v26 != 4 && v175 != 11)
          {
            if (v7[128] == 1)
            {
              if (v175 != 10 && !(((v175 - 6) < 3) | v59 & 1))
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1001A7560();
                }

                v192 = qword_1025D4658;
                if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_504;
                }

                sub_100072AFC(a2, __p);
                if (v286 >= 0)
                {
                  v193 = __p;
                }

                else
                {
                  v193 = __p[0];
                }

                *buf = 68289539;
                v288 = 0;
                v289 = 2082;
                v290 = "";
                v291 = 2085;
                *v292 = v193;
                *&v292[8] = 1026;
                *&v292[10] = 0;
                v194 = v192;
                v195 = OS_LOG_TYPE_DEFAULT;
                goto LABEL_383;
              }
            }

            else if ((v59 & 1) == 0)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v196 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_504;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v197 = __p;
              }

              else
              {
                v197 = __p[0];
              }

              *buf = 68289539;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v197;
              *&v292[8] = 1026;
              *&v292[10] = 0;
              v194 = v196;
              v195 = OS_LOG_TYPE_DEBUG;
LABEL_383:
              _os_log_impl(dword_100000000, v194, v195, "{msg%{public}.0s:#GnssAssistancePosition, drop,not WiFi nor cell/pipelined during emergency and TunnelEndPointAssist location for CPI, location,:%{sensitive, location:escape_only}s, isTunnelEndPointAssistance:%{public}d}", buf, 0x22u);
              if (v286 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_504;
            }
          }
        }

        if (!sub_100195800(a1, a2, v282) || !sub_100195DDC(a1, a2, v8))
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v184 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_504;
            }

            *buf = 68289026;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, drop,repeated or invalid position}";
            v186 = v184;
            v187 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v188 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_504;
            }

            *buf = 68289026;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, drop,repeated or invalid position}";
            v186 = v188;
            v187 = OS_LOG_TYPE_DEBUG;
          }

          v189 = 18;
LABEL_358:
          _os_log_impl(dword_100000000, v186, v187, v185, buf, v189);
LABEL_504:
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v270 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            v271 = *(a2 + 24);
            v272 = *(a2 + 4);
            v273 = *(a2 + 12);
            v274 = *(a2 + 28);
            v275 = *(a2 + 21);
            *buf = 68290307;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v271;
            *&v292[4] = 2053;
            *&v292[6] = v272;
            *&v292[14] = 2053;
            *&v292[16] = v273;
            *v293 = 2050;
            *&v293[2] = v274;
            *&v293[10] = 1026;
            *v294 = v275;
            v34 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding location, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, conf:%{public}d}";
            v36 = v270;
            v37 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v276 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v277 = *(a2 + 24);
            v278 = *(a2 + 4);
            v279 = *(a2 + 12);
            v280 = *(a2 + 28);
            v281 = *(a2 + 21);
            *buf = 68290307;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v277;
            *&v292[4] = 2053;
            *&v292[6] = v278;
            *&v292[14] = 2053;
            *&v292[16] = v279;
            *v293 = 2050;
            *&v293[2] = v280;
            *&v293[10] = 1026;
            *v294 = v281;
            v34 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding location, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, conf:%{public}d}";
            v36 = v276;
            v37 = OS_LOG_TYPE_DEBUG;
          }

          v41 = 60;
          goto LABEL_144;
        }

        if (*(a1 + 5668) > 0.0)
        {
          v177 = sub_1001CCA3C(a1 + 5648, a1 + 5808);
          v178 = v177 >= 0.0;
          if (v177 >= 3.0)
          {
            v178 = 0;
          }

          if ((v59 & v178) == 1)
          {
            if (v7[128] == 1)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v179 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_418;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v180 = __p;
              }

              else
              {
                v180 = __p[0];
              }

              *buf = 68289539;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v180;
              *&v292[8] = 2050;
              *&v292[10] = v177;
              v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding tunnel end point assistance,as GNSS is still fresh, location,:%{sensitive, location:escape_only}s, gpsAge:%{public}f}";
              v182 = v179;
              v183 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v200 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_418;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v201 = __p;
              }

              else
              {
                v201 = __p[0];
              }

              *buf = 68289539;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v201;
              *&v292[8] = 2050;
              *&v292[10] = v177;
              v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding tunnel end point assistance,as GNSS is still fresh, location,:%{sensitive, location:escape_only}s, gpsAge:%{public}f}";
              v182 = v200;
              v183 = OS_LOG_TYPE_DEBUG;
            }

            v202 = 38;
LABEL_405:
            _os_log_impl(dword_100000000, v182, v183, v181, buf, v202);
            if (v286 < 0)
            {
              operator delete(__p[0]);
            }

LABEL_418:
            v203 = 0;
            goto LABEL_419;
          }

          if (v177 < 10.0)
          {
            if (v7[128] == 1)
            {
              if (v7[168] == 1 && (*(a2 + 21) < 0x45u || *(a2 + 20) > 100.0))
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1001A7560();
                }

                v198 = qword_1025D4658;
                if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_418;
                }

                sub_100072AFC(a2, __p);
                if (v286 >= 0)
                {
                  v199 = __p;
                }

                else
                {
                  v199 = __p[0];
                }

                *buf = 68289283;
                v288 = 0;
                v289 = 2082;
                v290 = "";
                v291 = 2085;
                *v292 = v199;
                v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,recent GPS low confidence, location,:%{sensitive, location:escape_only}s}";
                v182 = v198;
                v183 = OS_LOG_TYPE_DEFAULT;
                goto LABEL_417;
              }
            }

            else if (*(a2 + 21) < 0x45u || *(a2 + 20) > 100.0)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v204 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_418;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v205 = __p;
              }

              else
              {
                v205 = __p[0];
              }

              *buf = 68289283;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v205;
              v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,recent GPS low confidence, location,:%{sensitive, location:escape_only}s}";
              v182 = v204;
              v183 = OS_LOG_TYPE_DEBUG;
LABEL_417:
              v202 = 28;
              goto LABEL_405;
            }
          }
        }

        v203 = 1;
LABEL_419:
        if (v7[128] != 1 || *(a2 + 36) > 0.0)
        {
LABEL_441:
          if (!v203)
          {
            goto LABEL_504;
          }

LABEL_442:
          v219 = sub_100196860(a1, a2);
          if (v219 != -1)
          {
            if (v7[128])
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v220 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_461;
              }

              v221 = *(a2 + 24);
              v222 = *(a2 + 4);
              v223 = *(a2 + 12);
              v224 = *(a2 + 28);
              v225 = *(a2 + 21);
              v226 = *(a2 + 36);
              *buf = 68291075;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v221;
              *&v292[4] = 2053;
              *&v292[6] = v222;
              *&v292[14] = 2053;
              *&v292[16] = v223;
              *v293 = 2050;
              *&v293[2] = v224;
              *&v293[10] = 1026;
              *v294 = v225;
              *&v294[4] = 1026;
              *v295 = a3;
              *&v295[4] = 1026;
              *v296 = v219;
              *&v296[4] = 1026;
              *&v296[6] = v226;
              v227 = v220;
              v228 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v233 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_461;
              }

              v234 = *(a2 + 24);
              v235 = *(a2 + 4);
              v236 = *(a2 + 12);
              v237 = *(a2 + 28);
              v238 = *(a2 + 21);
              v239 = *(a2 + 36);
              *buf = 68291075;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v234;
              *&v292[4] = 2053;
              *&v292[6] = v235;
              *&v292[14] = 2053;
              *&v292[16] = v236;
              *v293 = 2050;
              *&v293[2] = v237;
              *&v293[10] = 1026;
              *v294 = v238;
              *&v294[4] = 1026;
              *v295 = a3;
              *&v295[4] = 1026;
              *v296 = v219;
              *&v296[4] = 1026;
              *&v296[6] = v239;
              v227 = v233;
              v228 = OS_LOG_TYPE_DEBUG;
            }

            _os_log_impl(dword_100000000, v227, v228, "{msg%{public}.0s:#GnssAssistancePosition, adjust,confidence, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, confidence:%{public}d, isCpi:%{public}d, verifiedConf:%{public}d, altUnc:%{public}d}", buf, 0x4Eu);
LABEL_461:
            *(a2 + 21) = v219;
            if (sub_100073270(a1 + 4016, a2))
            {
              v240 = 1;
              *(a1 + 4011) = 1;
            }

            else
            {
              v240 = 0;
            }

            *(a1 + 4009) = v240;
            if (!a3)
            {
              sub_100191B68(a1, a2, a4);
              if (a4 && (*(a1 + 1580) & 1) == 0 && (*v26 | 8) == 9)
              {
                *(a1 + 1580) = 1;
              }

              return;
            }

            sub_1001540BC(a1, a2);
            if (v7[128] == 1)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v241 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              v242 = *(a1 + 4011);
              v243 = *(a1 + 4009);
              v244 = *(a1 + 4010);
              v245 = *(a1 + 4012);
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v242;
              *&v292[4] = 1026;
              *&v292[6] = v243;
              *&v292[10] = 1026;
              *&v292[12] = v244;
              *&v292[16] = 1026;
              *&v292[18] = v245;
              v34 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,injected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
              v36 = v241;
              v37 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v258 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                return;
              }

              v259 = *(a1 + 4011);
              v260 = *(a1 + 4009);
              v261 = *(a1 + 4010);
              v262 = *(a1 + 4012);
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v259;
              *&v292[4] = 1026;
              *&v292[6] = v260;
              *&v292[10] = 1026;
              *&v292[12] = v261;
              *&v292[16] = 1026;
              *&v292[18] = v262;
              v34 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,injected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
              v36 = v258;
              v37 = OS_LOG_TYPE_DEBUG;
            }

            v41 = 42;
LABEL_144:
            _os_log_impl(dword_100000000, v36, v37, v34, buf, v41);
            return;
          }

          if (v7[128])
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v229 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_483;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v230 = __p;
            }

            else
            {
              v230 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v230;
            v231 = v229;
            v232 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v246 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_483;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v247 = __p;
            }

            else
            {
              v247 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v247;
            v231 = v246;
            v232 = OS_LOG_TYPE_DEBUG;
          }

          _os_log_impl(dword_100000000, v231, v232, "{msg%{public}.0s:#GnssAssistancePosition, drop,cell cross-check produce invalid location confidence, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
          if (v286 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_483:
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v248 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_504;
            }

            v249 = *(a1 + 4011);
            v250 = *(a1 + 4009);
            v251 = *(a1 + 4010);
            v252 = *(a1 + 4012);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v249;
            *&v292[4] = 1026;
            *&v292[6] = v250;
            *&v292[10] = 1026;
            *&v292[12] = v251;
            *&v292[16] = 1026;
            *&v292[18] = v252;
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,rejected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
            v186 = v248;
            v187 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v253 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_504;
            }

            v254 = *(a1 + 4011);
            v255 = *(a1 + 4009);
            v256 = *(a1 + 4010);
            v257 = *(a1 + 4012);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v254;
            *&v292[4] = 1026;
            *&v292[6] = v255;
            *&v292[10] = 1026;
            *&v292[12] = v256;
            *&v292[16] = 1026;
            *&v292[18] = v257;
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,rejected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
            v186 = v253;
            v187 = OS_LOG_TYPE_DEBUG;
          }

          v189 = 42;
          goto LABEL_358;
        }

        if (sub_10018E7E0(a1 + 2392) && *v283 != 0.0 && *(a1 + 2428) < 3000.0 && vabdd_f64(*(a2 + 76), *(a1 + 2468)) < 10.0)
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v206 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v207 = *(a2 + 28);
              v208 = *(a2 + 36);
              v209 = *(a1 + 2428);
              v210 = *v283;
              v211 = *(a2 + 24);
              v212 = *(a1 + 2488);
              *buf = 68290562;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v211;
              *&v292[4] = 1026;
              *&v292[6] = v212;
              *&v292[10] = 1026;
              *&v292[12] = v207;
              *&v292[16] = 1026;
              *&v292[18] = v208;
              *&v292[22] = 1026;
              *v293 = v210;
              *&v293[4] = 1026;
              *&v293[6] = v209;
              v213 = v206;
              v214 = OS_LOG_TYPE_DEFAULT;
LABEL_502:
              _os_log_impl(dword_100000000, v213, v214, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite altitude with prior TCP altitude, location type:%{public}d, last tightly coupled position type:%{public}d, altPrior:%{public}d, altUncPrior:%{public}d, altNew:%{public}d, altUncNew:%{public}d}", buf, 0x36u);
            }
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v263 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v264 = *(a2 + 28);
              v265 = *(a2 + 36);
              v266 = *(a1 + 2428);
              v267 = *v283;
              v268 = *(a2 + 24);
              v269 = *(a1 + 2488);
              *buf = 68290562;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v268;
              *&v292[4] = 1026;
              *&v292[6] = v269;
              *&v292[10] = 1026;
              *&v292[12] = v264;
              *&v292[16] = 1026;
              *&v292[18] = v265;
              *&v292[22] = 1026;
              *v293 = v267;
              *&v293[4] = 1026;
              *&v293[6] = v266;
              v213 = v263;
              v214 = OS_LOG_TYPE_DEBUG;
              goto LABEL_502;
            }
          }

          *(a2 + 28) = *v283;
          *(a2 + 119) = *(a1 + 2868);
          *(a2 + 118) = *(a1 + 2864);
          if (!v203)
          {
            goto LABEL_504;
          }

          goto LABEL_442;
        }

        if (v7[128] == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v215 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_440;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v216 = v215;
          v217 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v218 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_440;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v216 = v218;
          v217 = OS_LOG_TYPE_DEBUG;
        }

        _os_log_impl(dword_100000000, v216, v217, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite altitude with default invalid value}", buf, 0x12u);
LABEL_440:
        *(a2 + 28) = xmmword_101D02A00;
        goto LABEL_441;
      case 10:
        if (vabdd_f64(*(a1 + 11696), Current) < 1.0)
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v65 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v66 = __p;
            }

            else
            {
              v66 = __p[0];
            }

            v67 = *(a1 + 11696);
            *buf = 68289539;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v66;
            *&v292[8] = 2050;
            *&v292[10] = v67;
            v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate pipe location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
            goto LABEL_262;
          }

          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v144 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          sub_100072AFC(a2, __p);
          if (v286 >= 0)
          {
            v145 = __p;
          }

          else
          {
            v145 = __p[0];
          }

          v146 = *(a1 + 11696);
          *buf = 68289539;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v291 = 2085;
          *v292 = v145;
          *&v292[8] = 2050;
          *&v292[10] = v146;
          v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate pipe location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
LABEL_289:
          v99 = v144;
          v100 = OS_LOG_TYPE_DEBUG;
          goto LABEL_290;
        }

        *(a1 + 11696) = Current;
        if (v7[128] != 1 || *(a2 + 36) > 0.0)
        {
          goto LABEL_322;
        }

        if (sub_10018E7E0(a1 + 4844) && vabdd_f64(*(a2 + 76), *(a1 + 4920)) < 10.0)
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v128 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_314;
            }

            v129 = *(a2 + 28);
            v130 = *(a2 + 36);
            v131 = *(a1 + 4872);
            v132 = *(a1 + 4880);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v129;
            *&v292[4] = 1026;
            *&v292[6] = v130;
            *&v292[10] = 1026;
            *&v292[12] = v131;
            *&v292[16] = 1026;
            *&v292[18] = v132;
            v133 = v128;
            v134 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v161 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_314;
            }

            v162 = *(a2 + 28);
            v163 = *(a2 + 36);
            v164 = *(a1 + 4872);
            v165 = *(a1 + 4880);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v162;
            *&v292[4] = 1026;
            *&v292[6] = v163;
            *&v292[10] = 1026;
            *&v292[12] = v164;
            *&v292[16] = 1026;
            *&v292[18] = v165;
            v133 = v161;
            v134 = OS_LOG_TYPE_DEBUG;
          }

          _os_log_impl(dword_100000000, v133, v134, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite pipelined altitude with prior TCP altitude, altPrior:%{public}d, altUncPrior:%{public}d, altNew:%{public}d, altUncNew:%{public}d}", buf, 0x2Au);
LABEL_314:
          *(a2 + 28) = *(a1 + 4872);
          *(a2 + 119) = *(a1 + 5316);
          v166 = *(a1 + 5312);
LABEL_321:
          *(a2 + 118) = v166;
          goto LABEL_322;
        }

        if (sub_10018E7E0(a1 + 7264))
        {
          v153 = (a1 + 7292);
          if (vabdd_f64(*(a2 + 76), *(a1 + 7340)) < 10.0)
          {
            if (v7[128] == 1)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v154 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_320;
              }

              v155 = *(a2 + 28);
              v156 = *(a2 + 36);
              v157 = *(a1 + 7300);
              v158 = *v153;
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v155;
              *&v292[4] = 1026;
              *&v292[6] = v156;
              *&v292[10] = 1026;
              *&v292[12] = v158;
              *&v292[16] = 1026;
              *&v292[18] = v157;
              v159 = v154;
              v160 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v167 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_320;
              }

              v168 = *(a2 + 28);
              v169 = *(a2 + 36);
              v170 = *(a1 + 7300);
              v171 = *v153;
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v168;
              *&v292[4] = 1026;
              *&v292[6] = v169;
              *&v292[10] = 1026;
              *&v292[12] = v171;
              *&v292[16] = 1026;
              *&v292[18] = v170;
              v159 = v167;
              v160 = OS_LOG_TYPE_DEBUG;
            }

            _os_log_impl(dword_100000000, v159, v160, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite pipelined altitude with prior cell location altitude, altPrior:%{public}d, altUncPrior:%{public}d, altNew:%{public}d, altUncNew:%{public}d}", buf, 0x2Au);
LABEL_320:
            *(a2 + 28) = *v153;
            *(a2 + 119) = *(a1 + 7740);
            v166 = *(a1 + 7736);
            goto LABEL_321;
          }
        }

        if (v7[128] != 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v135 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_322;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v94 = "{msg%{public}.0s:#GnssAssistancePosition, Stored TCP and cell locations are not valid}";
          goto LABEL_241;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v93 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_322;
        }

        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v94 = "{msg%{public}.0s:#GnssAssistancePosition, Stored TCP and cell locations are not valid}";
        break;
      default:
        goto LABEL_322;
    }

LABEL_196:
    v112 = v93;
    v113 = OS_LOG_TYPE_DEFAULT;
LABEL_242:
    v139 = 18;
    goto LABEL_243;
  }

  if (v60 <= 2)
  {
    if (v60)
    {
      if (v60 != 1)
      {
        if (v60 != 2)
        {
          goto LABEL_322;
        }

        goto LABEL_132;
      }

      goto LABEL_146;
    }

    if (!v59)
    {
      goto LABEL_322;
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v110 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_322;
      }

      v111 = *(a2 + 76);
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2050;
      *v292 = v111;
      v94 = "{msg%{public}.0s:#GnssAssistancePosition, inTunnelEndPointAssistance, timestamp:%{public}f}";
      v112 = v110;
      v113 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v147 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_322;
      }

      v148 = *(a2 + 76);
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2050;
      *v292 = v148;
      v94 = "{msg%{public}.0s:#GnssAssistancePosition, inTunnelEndPointAssistance, timestamp:%{public}f}";
      v112 = v147;
      v113 = OS_LOG_TYPE_DEBUG;
    }

    v139 = 28;
LABEL_243:
    _os_log_impl(dword_100000000, v112, v113, v94, buf, v139);
    goto LABEL_322;
  }

  if (v60 == 3)
  {
    *(a1 + 11704) = sub_1000081AC();
    if (vabdd_f64(*(a1 + 11696), Current) >= 1.0)
    {
      *(a1 + 11696) = Current;
      goto LABEL_322;
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v65 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v121 = __p;
      }

      else
      {
        v121 = __p[0];
      }

      v122 = *(a1 + 11696);
      *buf = 68289539;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v121;
      *&v292[8] = 2050;
      *&v292[10] = v122;
      v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate accessory location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
LABEL_262:
      v99 = v65;
      v100 = OS_LOG_TYPE_DEFAULT;
LABEL_290:
      v138 = 38;
      goto LABEL_291;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v144 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    sub_100072AFC(a2, __p);
    if (v286 >= 0)
    {
      v149 = __p;
    }

    else
    {
      v149 = __p[0];
    }

    v150 = *(a1 + 11696);
    *buf = 68289539;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v291 = 2085;
    *v292 = v149;
    *&v292[8] = 2050;
    *&v292[10] = v150;
    v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate accessory location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
    goto LABEL_289;
  }

  if (v60 != 5)
  {
    if (v60 != 6)
    {
      goto LABEL_322;
    }

    v69 = a2[1];
    *(a1 + 6456) = *a2;
    *(a1 + 6472) = v69;
    v70 = a2[2];
    v71 = a2[3];
    v72 = a2[5];
    *(a1 + 6520) = a2[4];
    *(a1 + 6536) = v72;
    *(a1 + 6488) = v70;
    *(a1 + 6504) = v71;
    v73 = a2[6];
    v74 = a2[7];
    v75 = a2[8];
    *(a1 + 6596) = *(a2 + 140);
    *(a1 + 6568) = v74;
    *(a1 + 6584) = v75;
    *(a1 + 6552) = v73;
    memcpy((a1 + 6616), a2 + 10, 0x201uLL);
    sub_100244238((a1 + 7136), a2 + 85);
    v77 = *(a2 + 712);
    v76 = *(a2 + 728);
    *(a1 + 7152) = *(a2 + 696);
    *(a1 + 7168) = v77;
    *(a1 + 7184) = v76;
    v79 = *(a2 + 760);
    v78 = *(a2 + 776);
    v80 = *(a2 + 785);
    *(a1 + 7200) = *(a2 + 744);
    *(a1 + 7241) = v80;
    *(a1 + 7232) = v78;
    *(a1 + 7216) = v79;
    if (a3 && a4)
    {
      v81 = *a2;
      *(a1 + 7280) = a2[1];
      *(a1 + 7264) = v81;
      v82 = a2[2];
      v83 = a2[3];
      v84 = a2[4];
      *(a1 + 7344) = a2[5];
      *(a1 + 7328) = v84;
      *(a1 + 7312) = v83;
      *(a1 + 7296) = v82;
      v85 = *(a2 + 140);
      v86 = a2[6];
      v87 = a2[7];
      *(a1 + 7392) = a2[8];
      *(a1 + 7376) = v87;
      *(a1 + 7360) = v86;
      *(a1 + 7404) = v85;
      memcpy((a1 + 7424), a2 + 10, 0x201uLL);
      sub_100244238((a1 + 7944), a2 + 85);
      v89 = *(a2 + 712);
      v88 = *(a2 + 728);
      *(a1 + 7960) = *(a2 + 696);
      *(a1 + 7976) = v89;
      *(a1 + 7992) = v88;
      v91 = *(a2 + 760);
      v90 = *(a2 + 776);
      v92 = *(a2 + 744);
      *(a1 + 8049) = *(a2 + 785);
      *(a1 + 8024) = v91;
      *(a1 + 8040) = v90;
      *(a1 + 8008) = v92;
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v93 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_322;
      }

      *buf = 68289026;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,cell location}";
      goto LABEL_196;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v135 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_322;
    }

    *buf = 68289026;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,cell location}";
LABEL_241:
    v112 = v135;
    v113 = OS_LOG_TYPE_DEBUG;
    goto LABEL_242;
  }

LABEL_132:
  if (v7[128] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v32 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v95;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, Unsupported, locationType:%{public}d}";
LABEL_137:
      v36 = v32;
      v37 = OS_LOG_TYPE_DEFAULT;
LABEL_143:
      v41 = 24;
      goto LABEL_144;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v50 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v96 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v96;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, Unsupported, locationType:%{public}d}";
      goto LABEL_142;
    }
  }
}

BOOL sub_100195800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (((*(a2 + 96) == 0) & *(a2 + 516)) == 0 && *(a3 + 20) > 0.0)
  {
    v5 = *(a2 + 76) - *(a3 + 76);
    if (v5 >= 0.0 && v5 < 6.0)
    {
      v7 = *(a2 + 36);
      v8 = *(a3 + 36);
      if ((v7 <= 0.0 || v8 >= 0.0) && (v7 <= 0.0 || v8 <= 0.0 || vabdd_f64(*(a2 + 28), *(a3 + 28)) <= 1.0) && *(a2 + 84) <= *(a3 + 84))
      {
        sub_1001097CC((a1 + 11656), a2, a3);
        if (v9 > 1.0)
        {
          return 1;
        }

        if (*(a1 + 11768) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_100244280();
          }

          v10 = qword_1025D4658;
          result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            v14 = 68289026;
            v15 = 0;
            v16 = 2082;
            v17 = "";
            v11 = v10;
            v12 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
            _os_log_impl(dword_100000000, v11, v12, "{msg%{public}.0s:#GnssAssistancePosition, same location}", &v14, 0x12u);
            return 0;
          }
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_100244280();
          }

          v13 = qword_1025D4658;
          result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            v14 = 68289026;
            v15 = 0;
            v16 = 2082;
            v17 = "";
            v11 = v13;
            v12 = OS_LOG_TYPE_DEBUG;
            goto LABEL_25;
          }
        }
      }
    }
  }

  return result;
}