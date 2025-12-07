uint64_t sub_23EBB5908(uint64_t a1, CFDictionaryRef theDict)
{
  memset(&v10, 0, sizeof(v10));
  memset(&v9, 0, sizeof(v9));
  v2 = 4294967292;
  if (a1 && theDict && CFDictionaryGetCount(theDict))
  {
    sub_23EB8CD70(*(a1 + 8), 0, &__str);
    std::string::operator=(&v10, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v9, (*(a1 + 8) + 120));
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    v2 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v5, v6, 0, @"wsc.authorize", "%##O", theDict);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB5A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5A60(uint64_t a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  memset(&v9, 0, sizeof(v9));
  v2 = 4294967292;
  if (a1 && a2)
  {
    sub_23EB8CD70(*(a1 + 8), 0, &__str);
    std::string::operator=(&v10, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v9, (*(a1 + 8) + 120));
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    v2 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v5, v6, 0, @"diskd.disconnectAll", "%kO=%O", @"message", a2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB5B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5BB4(uint64_t a1, CFDictionaryRef theDict)
{
  memset(&v10, 0, sizeof(v10));
  memset(&v9, 0, sizeof(v9));
  v2 = 4294967292;
  if (a1 && theDict && CFDictionaryGetCount(theDict))
  {
    sub_23EB8CD70(*(a1 + 8), 0, &__str);
    std::string::operator=(&v10, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v9, (*(a1 + 8) + 120));
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    v2 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v5, v6, 0, @"diskd.eraseDisk", "%##O", theDict);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB5CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5D0C(uint64_t a1, CFDictionaryRef theDict)
{
  memset(&v10, 0, sizeof(v10));
  memset(&v9, 0, sizeof(v9));
  v2 = 4294967292;
  if (a1 && theDict && CFDictionaryGetCount(theDict))
  {
    sub_23EB8CD70(*(a1 + 8), 0, &__str);
    std::string::operator=(&v10, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v9, (*(a1 + 8) + 120));
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    v2 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v5, v6, 0, @"diskd.archiveDisk", "%##O", theDict);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB5E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5E64(uint64_t a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  memset(&v9, 0, sizeof(v9));
  if (a1)
  {
    sub_23EB8CD70(*(a1 + 8), 0, &__str);
    std::string::operator=(&v10, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v9, (*(a1 + 8) + 120));
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v10;
    }

    else
    {
      v4 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v9;
    }

    else
    {
      v5 = v9.__r_.__value_.__r.__words[0];
    }

    v6 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v4, v5, 0, a2, "", 0);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = 4294967292;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_23EBB5F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB5FAC(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  memset(&v7, 0, sizeof(v7));
  if (a1)
  {
    sub_23EB8CD70(*(a1 + 8), 0, &__str);
    std::string::operator=(&v8, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v7, (*(a1 + 8) + 120));
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v2 = &v8;
    }

    else
    {
      v2 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v7;
    }

    else
    {
      v3 = v7.__r_.__value_.__r.__words[0];
    }

    v4 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v2, v3, 0, @"acpd.checkConnection", "", 0);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = 4294967292;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_23EBB60A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB60EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  memset(&v14, 0, sizeof(v14));
  memset(&v13, 0, sizeof(v13));
  v4 = 4294967292;
  if (a2 && a1 && a3)
  {
    if (sub_23EB8BE08(*(a1 + 8), 1919052402))
    {
      sub_23EB8CD70(*(a1 + 8), 0, &__str);
      std::string::operator=(&v14, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::operator=(&v13, (*(a1 + 8) + 120));
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v13;
      }

      else
      {
        v10 = v13.__r_.__value_.__r.__words[0];
      }

      v4 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v9, v10, a4, @"remoteBonjour.browse", "%kO=%O%kO=%O", @"domain", a2, @"serviceType", a3);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v4 = 4294960561;
    }
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_23EBB6234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB627C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  sub_23EB8CD70(*(a1 + 8), 0, &v18);
  v8 = *(a1 + 8);
  if (*(v8 + 143) < 0)
  {
    sub_23EBADCE0(__p, *(v8 + 120), *(v8 + 128));
  }

  else
  {
    *__p = *(v8 + 120);
    v17 = *(v8 + 136);
  }

  v11 = *(a1 + 24);
  v10 = (a1 + 24);
  v9 = v11;
  if (v11)
  {
    sub_23EB4E93C(v9);
    *v10 = 0;
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v18;
  }

  else
  {
    v12 = v18.__r_.__value_.__r.__words[0];
  }

  if (v17 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = sub_23EB4E684(v10, v12, v13, 0, a2, a3, a4);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_23EBB636C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EBB63A0(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

void sub_23EBB63B4(char *__s)
{
  sub_23EB8CCB8(__p, __s);
  sub_23EB9B144(__p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23EBB63FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB6418(uint64_t a1)
{
  result = sub_23EBB26A0(a1);
  if (!result)
  {
    if (!a1 || (result = sub_23EB8BF4C(*(a1 + 8)), !result) && (result = sub_23EB9B4DC(*(a1 + 8)), !result))
    {

      return sub_23EBB1F5C(a1);
    }
  }

  return result;
}

uint64_t sub_23EBB647C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294960591;
  }

  sub_23EB4BD2C(a2, v12);
  if (!sub_23EB8F5B4(a2))
  {
    if ((sub_23EB91370(*(a1 + 8), a2) & 1) == 0)
    {
      return sub_23EB9ABA8(*(a1 + 8), v12);
    }

    return 0;
  }

  memset(&__p, 0, sizeof(__p));
  v4 = sub_23EB8F428(*(a1 + 8), 0);
  if (v4 <= 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = v4 - 1;
  do
  {
    sub_23EBA33E0(v13, 0x11uLL, v5);
    MEMORY[0x23EF1EFD0](&__p, v13);
    sub_23EB8FB78(&__p, a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = sub_23EB9ABA8(*(a1 + 8), p_p);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == v5;
    }

    ++v5;
  }

  while (!v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t sub_23EBB65F0(uint64_t result)
{
  if (result)
  {
    return sub_23EB9C020(*(result + 8), 0);
  }

  return result;
}

uint64_t sub_23EBB6604(uint64_t result)
{
  if (result)
  {
    return sub_23EB8F4AC(*(result + 8), 0);
  }

  return result;
}

uint64_t sub_23EBB6618(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  memset(&v7, 0, sizeof(v7));
  if (a1)
  {
    sub_23EB8CD70(*(a1 + 8), 0, &__str);
    std::string::operator=(&v8, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v7, (*(a1 + 8) + 120));
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v2 = &v8;
    }

    else
    {
      v2 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v7;
    }

    else
    {
      v3 = v7.__r_.__value_.__r.__words[0];
    }

    v4 = sub_23EB4DD6C(*(a1 + 16), 4, 60000, v2, v3, 0, @"dhcp.client.lease.action", "%kO=%O", @"action", @"renew");
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = 4294967292;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_23EBB6720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB6768(uint64_t a1)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  sub_23EB8CCB8(&__p, "WiFi.radios.[*].");
  if (!a1)
  {
    v2 = 4294967292;
    goto LABEL_8;
  }

  v2 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v12, "{%kO=[%@]}", @"problems", &v11);
  if (!v2)
  {
    v2 = sub_23EB89D74(*(a1 + 8), 1464626795, &v13, 0);
    if (!v2)
    {
      if (sub_23EB8BE08(*(a1 + 8), 1147761477))
      {
        v7 = 0;
        v2 = sub_23EB89D74(*(a1 + 8), 2002867012, &v7, 0);
        v3 = (v2 | ~v7 & 0xF) == 0;
        if (v2)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v3 = 0;
      }

      v2 = sub_23EB89D74(*(a1 + 8), 2002864494, &v14 + 4, 0);
      if (!v2)
      {
        sub_23EB8FB78(&__p, 1651726157, &__p);
        v2 = sub_23EB97374(*(a1 + 8), &__p, &v13 + 4, 0);
        if (!v2)
        {
          sub_23EB8FB78(&__p, 1651723853, &__p);
          v2 = sub_23EB97374(*(a1 + 8), &__p, &v14, 0);
          if (!v2)
          {
            if (v3 || HIDWORD(v14) != 16 || (HIDWORD(v13) - 4) > 0xFFFFFFFD || v14 == 1 || v13 || (v2 = sub_23EBB04E4(v11, 2002865740), !v2))
            {
              v2 = sub_23EB975E8(*(a1 + 8), 2002866767, &v15, 0);
              if (!v2)
              {
                if (!v15 || (v2 = sub_23EBB04E4(v11, 2002866794), !v2))
                {
                  v2 = sub_23EB89D74(*(a1 + 8), 1937327724, &v10, 0);
                  if (!v2)
                  {
                    v5 = v10;
                    if ((v10 & 0x40) != 0)
                    {
                      v2 = sub_23EBB04E4(v11, 1668573549);
                      if (v2)
                      {
                        goto LABEL_8;
                      }

                      v5 = v10;
                    }

                    if ((v5 & 0x2000) == 0 || (v2 = sub_23EBB04E4(v11, 1936680564), !v2))
                    {
                      v6 = sub_23EB4BD2C(1937331060, v9);
                      v2 = sub_23EBB3D34(a1, v6, v12);
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

LABEL_8:
  if (v12)
  {
    CFRelease(v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EBB6A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EBB6A50(const __CFString *a1, int *a2)
{
  if (a1)
  {
    if (a2)
    {
      v11 = 0;
      v10 = 0;
      sub_23EB6FF14(a1, &v11, "%ks:int", "raWM");
      if (!v4)
      {
        sub_23EB6FF14(a1, &v10, "%ks:BOOL", "raEA");
        if (!v5)
        {
          v9 = 0;
          sub_23EB6FF14(a1, &v9, "%ks:BOOL", "rTSN");
          if (v11 <= 2)
          {
            switch(v11)
            {
              case 0:
                v6 = 1;
                goto LABEL_24;
              case 1:
                v6 = 2;
                goto LABEL_24;
              case 2:
                v6 = 3;
LABEL_24:
                *a2 = v6;
                return;
            }

LABEL_17:
            v6 = 0;
            goto LABEL_24;
          }

          switch(v11)
          {
            case 3:
              if (!v9)
              {
                v7 = v10 == 0;
                v6 = 11;
                v8 = 6;
                goto LABEL_22;
              }

              break;
            case 4:
              if (!v9)
              {
                v7 = v10 == 0;
                v6 = 10;
                v8 = 5;
                goto LABEL_22;
              }

              break;
            case 5:
              v7 = v10 == 0;
              v6 = 12;
              v8 = 7;
LABEL_22:
              if (v7)
              {
                v6 = v8;
              }

              goto LABEL_24;
            default:
              goto LABEL_17;
          }

          v6 = 8;
          goto LABEL_24;
        }
      }
    }
  }
}

uint64_t sub_23EBB6BB0(unsigned int a1)
{
  v1 = 0x530u >> a1;
  if (a1 > 0xA)
  {
    LOBYTE(v1) = 0;
  }

  if (HIWORD(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  return v2 & 1;
}

uint64_t sub_23EBB6BD8(unsigned int a1)
{
  if (a1 >= 0x10000 && a1)
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    v1 = 0xCEu >> a1;
    if ((a1 & 0xFFF8) != 0)
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_23EBB6C08(int a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    *a2 = 0;
    if (sub_23EBB4964(a1, &v7))
    {
      return 0;
    }

    v5 = v7;
    if (!v7)
    {
      return 0;
    }

    *a2 = *(v7 + 20);
    if (*(v5 + 12) == 2)
    {
      return 3;
    }

    v6 = *(v5 + 28) - 2;
    if (v6 > 0xD)
    {
      return 0;
    }

    else
    {
      return dword_23EC21F58[v6];
    }
  }

  return result;
}

uint64_t sub_23EBB6CA4(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 4294960591;
  }

  v2 = sub_23EBB4EE8(a1, 1633899078);
  if (!v2)
  {
    v8 = 0;
    v3 = sub_23EB983A0(*(a1 + 8), &cf);
    if (!v3)
    {
      if (!cf)
      {
        return 4294960568;
      }

      v3 = sub_23EBAF7F8(a1, &v8);
      if (!v3)
      {
        if (!v8)
        {
          v2 = 4294960568;
LABEL_5:
          if (cf)
          {
            CFRelease(cf);
          }

          return v2;
        }

        v2 = sub_23EB994F4(*(a1 + 8), v8, cf, 1);
        if (v8)
        {
          CFRelease(v8);
          v8 = 0;
        }

        if (v2)
        {
          goto LABEL_5;
        }

        v5 = *(a1 + 8);
        sub_23EB8CCB8(&__str, "public");
        std::string::operator=(v5 + 5, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v3 = sub_23EBB4EE8(a1, 1633899074);
      }
    }

    v2 = v3;
    goto LABEL_5;
  }

  return v2;
}

void sub_23EBB6DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EBB6DD4(uint64_t result, const __CFString *a2, uint64_t a3)
{
  if (!result)
  {
    if (a3)
    {
      if (*a3)
      {
        if (*(a3 + 24))
        {
          v23 = 0;
          theString1 = 0;
          v21 = 0;
          v22 = 0;
          theArray = 0;
          sub_23EB6FF14(a2, &theString1, "%ks.%ks", "ACPRemoteBonjour", "eventUUID");
          if (!v5)
          {
            if (theString1)
            {
              if (CFStringCompare(theString1, *a3, 0) == kCFCompareEqualTo)
              {
                sub_23EB6FF14(a2, &v21, "%ks.%ks", "ACPRemoteBonjour", "eventData");
                if (!v6)
                {
                  if (v21)
                  {
                    sub_23EB6FF14(v21, &v23, "%ks.%ks", "txt", "raMA");
                    if (!v12)
                    {
                      if (v23)
                      {
                        if (!*(a3 + 16) || ((v19 = 0, sub_23EB6FF14(v21, &v19, "%ks.%ks", "txt", "raM2"), v13 == -6727) || !v13 && v19) && (sub_23EBAFDF4(v23, *(a3 + 16)) & 1) == 0 && (!v19 || (sub_23EBAFDF4(v19, *(a3 + 16)) & 1) == 0))
                        {
                          if (*(a3 + 8))
                          {
                            sub_23EB6FF14(v21, &theArray, "%ks", "services");
                            if (!v14)
                            {
                              if (theArray)
                              {
                                Count = CFArrayGetCount(theArray);
                                if (Count >= 1)
                                {
                                  v16 = Count;
                                  for (i = 0; i != v16; ++i)
                                  {
                                    sub_23EB6FF14(theArray, &v22, "[*].%ks", i, "iftype");
                                    if (v18 || !v22)
                                    {
                                      break;
                                    }

                                    if (CFStringCompare(v22, *(a3 + 8), 0) == kCFCompareEqualTo)
                                    {
                                      goto LABEL_30;
                                    }
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
LABEL_30:
                            sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a3 + 24), "%kO=%O", v7, v8, v9, v10, v11, v23);
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
      }
    }
  }
}

uint64_t sub_23EBB7004(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5, int a6, void *a7)
{
  v26 = 0;
  cf = 0;
  v28 = 0;
  v25 = 0;
  v7 = 4294960591;
  if (!a1 || !a2 || !a3 || !a7)
  {
    goto LABEL_9;
  }

  if (!sub_23EB8BE08(*(a1 + 8), 1919052402))
  {
    v7 = 4294960561;
    goto LABEL_9;
  }

  if (pthread_main_np())
  {
    v7 = 4294960593;
    goto LABEL_9;
  }

  if (a6)
  {
    v16 = sub_23EB4BD2C(1651716685, v29);
    v7 = sub_23EBB3E20(a1, v16, &v25);
    if (v7)
    {
      goto LABEL_9;
    }

    v17 = v25;
  }

  else
  {
    v17 = 0;
    v25 = 0;
  }

  v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x60040FAD0F902uLL);
  if (!v18)
  {
LABEL_31:
    v7 = 4294960568;
    goto LABEL_9;
  }

  v19 = v18;
  *v18 = 0;
  v18[2] = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  *(v19 + 8) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v20 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v19 + 24) = Mutable;
  if (!Mutable)
  {
    sub_23EBB72F0(v19);
    goto LABEL_31;
  }

  v22 = sub_23EB6F348(v20, &v28, "{%ks={%ks={}}}", "filters", "ACPRemoteBonjour");
  if (v22)
  {
    goto LABEL_27;
  }

  v22 = sub_23EBB627C(a1, v28, sub_23EBB6DD4, v19);
  if (v22)
  {
    goto LABEL_27;
  }

  v22 = sub_23EBB60EC(a1, a2, a3, &cf);
  if (v22)
  {
    goto LABEL_27;
  }

  if (!cf)
  {
    v7 = 4294960569;
    goto LABEL_28;
  }

  sub_23EB6FF14(cf, &v26, "%ks", "uuid");
  if (v22)
  {
    goto LABEL_27;
  }

  if (v26)
  {
    v22 = sub_23EBB72A0(v19, v26);
    if (!v22)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      sleep(a5);
      v23 = *(a1 + 24);
      if (v23)
      {
        sub_23EB4E93C(v23);
        *(a1 + 24) = 0;
      }

      *a7 = 0;
      v24 = *(v19 + 24);
      if (v24)
      {
        *a7 = v24;
        CFRetain(v24);
        v7 = 0;
        goto LABEL_28;
      }

      goto LABEL_43;
    }

LABEL_27:
    v7 = v22;
    goto LABEL_28;
  }

LABEL_43:
  v7 = 4294960568;
LABEL_28:
  sub_23EBB72F0(v19);
  if (v28)
  {
    CFRelease(v28);
    v28 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v7;
}

uint64_t sub_23EBB72A0(const void **a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = cf;
  CFRetain(cf);
  return 0;
}

void sub_23EBB72F0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
    a1[1] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t sub_23EBB7360(const void *a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5, int a6, CFTypeRef *a7)
{
  v18 = 0;
  v19 = 0;
  cf = 0;
  v7 = 4294960591;
  if (a1 && a2 && a3 && a7)
  {
    if (pthread_main_np())
    {
      v7 = 4294960593;
      goto LABEL_9;
    }

    v15 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "[%C%C%C]", 1466517097, 1918979393, 2002865473);
    if (v15)
    {
      goto LABEL_8;
    }

    if (!cf)
    {
      v7 = 4294960568;
      goto LABEL_11;
    }

    v15 = sub_23EBB0E1C(&v19, a1);
    if (v15)
    {
      goto LABEL_8;
    }

    v15 = sub_23EBB14AC(v19, cf, 1);
    if (v15)
    {
      goto LABEL_8;
    }

    if (!v19 || !sub_23EB8BE08(*(v19 + 1), 1919052402))
    {
      v7 = 4294960561;
      goto LABEL_9;
    }

    v15 = sub_23EBB7004(v19, a2, a3, a4, a5, a6, &v18);
    if (v15)
    {
LABEL_8:
      v7 = v15;
      goto LABEL_9;
    }

    if (v18)
    {
      v7 = 0;
      *a7 = v18;
      v18 = 0;
    }

    else
    {
      v7 = 4294960568;
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_11:
  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (v19)
  {
    sub_23EBB0D6C(v19);
  }

  return v7;
}

uint64_t sub_23EBB74F4(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  __p[0] = 0;
  __p[1] = 0;
  if (a3 == 2003061875)
  {
    MEMORY[0x23EF1EFD0](__p, "legacywds");
  }

  else
  {
    sub_23EB4BD2C(a3, v10);
    MEMORY[0x23EF1EFD0](__p, v10);
  }

  v6 = __p;
  if (v12 < 0)
  {
    v6 = __p[0];
  }

  sub_23EB6FF14(a2, &v13, "%ks", v6);
  v8 = v7;
  if (!v7)
  {
    v8 = sub_23EB8A18C(*(a1 + 8), a3, v13, 0);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_23EBB75D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EBB75F0(uint64_t a1, __CFArray *a2, uint64_t a3)
{
  v19 = 0;
  sub_23EB4BD2C(a3, v18);
  v6 = sub_23EB8BFFC(*(a1 + 8), a3, &v19, 0);
  if (a3 != 2003061875)
  {
    v14 = v6;
    if (v6)
    {
      if (v6 != -5)
      {
        goto LABEL_19;
      }

      if (a3 != 1918128974)
      {
        if (a3 != 1918977586 && a3 != 1918980980)
        {
          v14 = 0;
          goto LABEL_19;
        }

        v15 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], a2, "%ks=%i", v7, v8, v9, v10, v11, v18);
LABEL_18:
        v14 = v15;
        goto LABEL_19;
      }

      v12 = *MEMORY[0x277CBECE8];
    }

    else
    {
      v12 = *MEMORY[0x277CBECE8];
    }

    v13 = v18;
    goto LABEL_17;
  }

  if (v19)
  {
LABEL_3:
    v12 = *MEMORY[0x277CBECE8];
    v13 = "legacywds";
LABEL_17:
    v15 = sub_23EB6FDFC(v12, a2, "%ks=%O", v7, v8, v9, v10, v11, v13);
    goto LABEL_18;
  }

  cf = 0;
  v15 = sub_23EB4EBC4(2003061875, 0, 0, 1, &cf);
  if (v15)
  {
    goto LABEL_18;
  }

  v14 = sub_23EB91744(*(a1 + 8), 2003061875, cf, &v19);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v14)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (v19)
  {
    CFRelease(v19);
  }

  return v14;
}

uint64_t sub_23EBB779C(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (a2)
  {
    if (*(a1 + 144) == 1634561902)
    {
      result = 0;
      *a2 = *(a1 + 84);
    }
  }

  return result;
}

uint64_t sub_23EBB77D8(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (a2)
  {
    if (*(a1 + 144) == 1634561902)
    {
      result = 0;
      *a2 = *(a1 + 80);
    }
  }

  return result;
}

uint64_t sub_23EBB7814(uint64_t a1, unsigned int a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTaskState(BSConfigurationContextRef, eBSConfigurationTaskState)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  if (a2 > 6)
  {
    return 4294960586;
  }

  v4 = *(a1 + 128);
  if (a2)
  {
    if (a2 == 6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    sub_23EBEB3C0(v4, v5);
    if (*(a1 + 80))
    {
      return 4294960587;
    }
  }

  else
  {
    sub_23EBEB3C0(v4, 0);
  }

  result = 0;
  *(a1 + 80) = a2;
  *(a1 + 84) = 0;
  return result;
}

uint64_t sub_23EBB78F0(uint64_t a1, _DWORD *a2)
{
  if (a1 && *(a1 + 144) == 1634561902)
  {
    return sub_23EBEB384(*(a1 + 128), a2);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBB7918(_DWORD *context)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCRefreshClientListAndSystemInterfacesAsync(BSConfigurationContextRef)", 800, " \n");
  }

  if (!context)
  {
    return 4294960591;
  }

  if (context[36] != 1634561902)
  {
    return 4294960591;
  }

  v2 = *(context + 15);
  if (!v2)
  {
    return 4294960591;
  }

  v3 = *(context + 14);
  if (!v3)
  {
    return 4294960591;
  }

  dispatch_group_async_f(v2, v3, context, sub_23EBB79E4);
  sub_23EBEB0B0(*(context + 16), 27, 0, 0);
  return 0;
}

void sub_23EBB79E4(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCRefreshClientListAndSystemInterfacesSync(void *)", 800, " \n");
  }

  v6 = 0;
  cf = 0;
  if (a1)
  {
    if (*(a1 + 144) != 1634561902 || !*(a1 + 8))
    {
      v4 = 0;
      v3 = 4294960591;
      goto LABEL_11;
    }

    v2 = sub_23EBEA0DC(*(a1 + 128));
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      goto LABEL_11;
    }

    v5 = sub_23EBB4DE4(*(a1 + 8), 1918980940);
    if (!v5)
    {
      v5 = sub_23EBB54E8(*(a1 + 8), &cf);
      if (!v5)
      {
        if (!cf)
        {
          v3 = 4294960568;
          goto LABEL_17;
        }

        sub_23EB6FF14(cf, &v6, "%ks", "data");
        if (!v5)
        {
          if (v6)
          {
            v3 = 0;
          }

          else
          {
            v3 = 4294960568;
          }

          goto LABEL_17;
        }
      }
    }

    v3 = v5;
LABEL_17:
    sub_23EBEA18C(*(a1 + 128));
    v4 = v6;
LABEL_11:
    sub_23EBEAF44(*(a1 + 128), 28, 1, v3, v4);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t sub_23EBB7B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCStartRemoteBrowseAsync(BSConfigurationContextRef, CFStringRef, CFStringRef)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  v6 = 4294960591;
  if (a3)
  {
    if (a2)
    {
      if (*(a1 + 112))
      {
        cf = 0;
        context = 0;
        v6 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O%kO=%O}", @"kAsyncParam_RemoteBrowse_Domain", a2, @"kAsyncParam_RemoteBrowse_Service", a3);
        if (!v6)
        {
          if (!cf)
          {
            return 0;
          }

          v6 = sub_23EBB7CA8(a1, cf, &context);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v6)
          {
            if (!context)
            {
              return 4294960568;
            }

            dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB7D90);
            sub_23EBEB0B0(*(a1 + 128), 27, 0, 0);
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_23EBB7CA8(uint64_t a1, const void *a2, void *a3)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus __AsyncContext_Create(BSConfigurationContextRef, CFDictionaryRef, __AsyncContextRef *)", 800, " \n");
  }

  result = 4294960591;
  if (a3 && *(a1 + 144) == 1634561902)
  {
    v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x106004025F8D3E0uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = a1;
      v7[1] = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      result = 0;
      *(v8 + 4) = 1634561902;
      *a3 = v8;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void sub_23EBB7D90(uint64_t *a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCStartRemoteBrowseSync(void *)", 800, " \n");
  }

  cf = 0;
  if (a1)
  {
    if (*(a1 + 4) == 1634561902)
    {
      v2 = *a1;
      if (*a1)
      {
        v9 = 0;
        v10 = 0;
        if (*(v2 + 144) != 1634561902 || !*(v2 + 8))
        {
          v5 = 0;
          v4 = 4294960591;
          goto LABEL_13;
        }

        v3 = sub_23EBEA0DC(*(v2 + 128));
        if (v3)
        {
          v4 = v3;
          v5 = 0;
          goto LABEL_13;
        }

        sub_23EB6FF14(a1[1], &v9, "%kO", @"kAsyncParam_RemoteBrowse_Domain");
        if (v6)
        {
          goto LABEL_17;
        }

        if (v9)
        {
          sub_23EB6FF14(a1[1], &v10, "%kO", @"kAsyncParam_RemoteBrowse_Service");
          if (v6)
          {
LABEL_17:
            v4 = v6;
LABEL_18:
            sub_23EBEA18C(*(v2 + 128));
            v5 = cf;
LABEL_13:
            sub_23EBEAB18(*(v2 + 128), 28, v4, v5);
            if (cf)
            {
              CFRelease(cf);
            }

            return;
          }

          if (v10)
          {
            v7 = sub_23EBB60EC(*(v2 + 8), v9, v10, &cf);
            v4 = v7;
            if (v7 != -6735)
            {
              if (v7 == 0 && cf == 0)
              {
                v4 = 4294960568;
              }

              else
              {
                v4 = v7;
              }
            }

            goto LABEL_18;
          }
        }

        v4 = 4294960568;
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_23EBB7F44(uint64_t a1, uint64_t a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCRefreshBSSettingAsync(BSConfigurationContextRef, BSSetting)", 800, " \n");
  }

  v4 = 4294960591;
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 144) == 1634561902)
      {
        if (*(a1 + 120))
        {
          if (*(a1 + 112))
          {
            cf = 0;
            context = 0;
            v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%i}", @"kAsyncParam_Refresh_BSSetting", a2);
            if (!v4)
            {
              if (!cf)
              {
                return 0;
              }

              v4 = sub_23EBB7CA8(a1, cf, &context);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (!v4)
              {
                if (!context)
                {
                  return 4294960568;
                }

                dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB8098);
                sub_23EBEB0B0(*(a1 + 128), 27, 0, 0);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

void sub_23EBB8098(const void **a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCRefreshBSSettingSync(void *)", 800, " \n");
  }

  cf = 0;
  v8 = 0;
  if (a1)
  {
    v9 = 0;
    if (*(a1 + 4) != 1634561902)
    {
      goto LABEL_15;
    }

    v2 = *a1;
    if (!*a1)
    {
      goto LABEL_15;
    }

    if (*(v2 + 144) != 1634561902 || !*(v2 + 8) || !a1[1])
    {
      v5 = 0;
      v4 = 4294960591;
      goto LABEL_14;
    }

    v3 = sub_23EBEA0DC(*(v2 + 128));
    if (v3)
    {
      v4 = v3;
      v5 = 0;
LABEL_14:
      sub_23EBEAF44(*(v2 + 128), 28, 3, v4, v5);
LABEL_15:
      sub_23EBC2368(a1);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v8)
      {
        CFRelease(v8);
      }

      return;
    }

    sub_23EB6FF14(a1[1], &v9, "%kO:int", @"kAsyncParam_Refresh_BSSetting");
    if (!v6)
    {
      if (!v9)
      {
        v4 = 4294960568;
        goto LABEL_22;
      }

      v6 = sub_23EBB4DE4(*(v2 + 8), v9);
      if (!v6)
      {
        v6 = sub_23EBB3F30(*(v2 + 8), v9, &v8);
        if (!v6)
        {
          v6 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O}", @"kBSConfigurationRefreshBSSettingKey_Value", v8);
          if (!v6)
          {
            if (cf)
            {
              v4 = 0;
            }

            else
            {
              v4 = 4294960568;
            }

            goto LABEL_22;
          }
        }
      }
    }

    v4 = v6;
LABEL_22:
    sub_23EBEA18C(*(v2 + 128));
    v5 = cf;
    goto LABEL_14;
  }
}

uint64_t sub_23EBB825C(uint64_t a1, uint64_t a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCDisconnectAllDiskUsersWithMessageAsync(BSConfigurationContextRef, CFStringRef)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120) || !*(a1 + 112))
  {
    return 4294960591;
  }

  cf = 0;
  context = 0;
  v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O}", @"kAsyncParam_DisconnectMessage", a2);
  if (!v4)
  {
    if (!cf)
    {
      return 0;
    }

    v4 = sub_23EBB7CA8(a1, cf, &context);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v4)
    {
      if (!context)
      {
        return 4294960568;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB83A8);
      sub_23EBEB0B0(*(a1 + 128), 27, 0, 0);
      return 0;
    }
  }

  return v4;
}

void sub_23EBB83A8(uint64_t *result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCDisconnectAllDiskUsersWithMessageSync(void *)", 800, " \n");
  }

  if (result)
  {
    v7 = 0;
    if (*(result + 4) != 1634561902)
    {
      goto LABEL_17;
    }

    v2 = *result;
    if (!*result)
    {
      goto LABEL_17;
    }

    if (*(v2 + 144) == 1634561902 && *(v2 + 8) && result[1])
    {
      v3 = sub_23EBEA0DC(*(v2 + 128));
      if (!v3)
      {
        v4 = result[1];
        v7 = 0;
        sub_23EB6FF14(v4, &v7, "%kO", @"kAsyncParam_DisconnectMessage");
        if (v5)
        {
          v3 = v5;
          if (v5 != -6727)
          {
LABEL_21:
            sub_23EBEA18C(*(v2 + 128));
            goto LABEL_16;
          }

          v6 = v7;
        }

        else
        {
          v6 = v7;
          if (!v7)
          {
            v3 = 4294960591;
            goto LABEL_21;
          }
        }

        v3 = sub_23EBB5A60(*(v2 + 8), v6);
        goto LABEL_21;
      }
    }

    else
    {
      v3 = 4294960591;
    }

LABEL_16:
    sub_23EBEAF44(*(v2 + 128), 28, 4, v3, 0);
LABEL_17:
    sub_23EBC2368(result);
  }
}

uint64_t sub_23EBB84FC(_DWORD *context)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCRenewDHCPLeaseAsync(BSConfigurationContextRef)", 800, " \n");
  }

  if (!context)
  {
    return 4294960591;
  }

  if (context[36] != 1634561902)
  {
    return 4294960591;
  }

  v2 = *(context + 15);
  if (!v2)
  {
    return 4294960591;
  }

  v3 = *(context + 14);
  if (!v3)
  {
    return 4294960591;
  }

  dispatch_group_async_f(v2, v3, context, sub_23EBB85C8);
  sub_23EBEB0B0(*(context + 16), 27, 0, 0);
  return 0;
}

void sub_23EBB85C8(uint64_t result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCRenewDHCPLeaseSync(void *)", 800, " \n");
  }

  if (result)
  {
    if (*(result + 144) == 1634561902 && *(result + 8))
    {
      v2 = sub_23EBEA0DC(*(result + 128));
      if (!v2)
      {
        v2 = sub_23EBB6618(*(result + 8));
        sub_23EBEA18C(*(result + 128));
      }
    }

    else
    {
      v2 = 4294960591;
    }

    v3 = *(result + 128);

    sub_23EBEAF44(v3, 28, 5, v2, 0);
  }
}

uint64_t sub_23EBB86B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCWPSStartAsync(BSConfigurationContextRef, Boolean, Boolean, uint32_t)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120) || !*(a1 + 112))
  {
    return 4294960591;
  }

  v11 = 0;
  cf = 0;
  v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%b%kO=%b%kO=%i}", @"kAsyncParam_WPSStart_UsePIN", a2, @"kAsyncParam_WPSStart_DayPass", a3, @"kAsyncParam_WPSStart_Timeout", a4);
  if (!v8)
  {
    if (!cf)
    {
      return 0;
    }

    v8 = sub_23EBB7CA8(a1, cf, &v11);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v8)
    {
      if (!v11)
      {
        return 4294960568;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), v11, sub_23EBB8828);
      sub_23EBEB0B0(*(a1 + 128), 27, 0, 0);
      return 0;
    }
  }

  return v8;
}

void sub_23EBB8828(uint64_t *result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCWPSStartSync(void *)", 800, " \n");
  }

  if (result)
  {
    v10 = 0;
    v9 = 0;
    if (*(result + 4) == 1634561902)
    {
      v2 = *result;
      if (*result)
      {
        if (*(v2 + 144) == 1634561902 && *(v2 + 8) && result[1])
        {
          v3 = sub_23EBEA0DC(*(v2 + 128));
          if (!v3)
          {
            sub_23EB6FF14(result[1], &v10 + 1, "%kO:BOOL", @"kAsyncParam_WPSStart_UsePIN");
            if (!v4)
            {
              sub_23EB6FF14(result[1], &v10, "%kO:BOOL", @"kAsyncParam_WPSStart_DayPass");
              if (!v4)
              {
                sub_23EB6FF14(result[1], &v9, "%kO:int", @"kAsyncParam_WPSStart_Timeout");
                if (v5)
                {
                  v6 = 300;
                  v9 = 300;
                }

                else
                {
                  v6 = v9;
                }

                v7 = v10;
                *(v2 + 89) = v10;
                if (v7)
                {
                  v8 = 86400;
                }

                else
                {
                  v8 = 0xFFFFFFFFLL;
                }

                v4 = sub_23EBB5640(*(v2 + 8), HIBYTE(v10) != 0, v8, v6);
              }
            }

            v3 = v4;
            sub_23EBEA18C(*(v2 + 128));
          }
        }

        else
        {
          v3 = 4294960591;
        }

        sub_23EBEAF44(*(v2 + 128), 28, 6, v3, 0);
      }
    }

    sub_23EBC2368(result);
  }
}

uint64_t sub_23EBB89D4(_DWORD *context)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCWPSStopAsync(BSConfigurationContextRef)", 800, " \n");
  }

  if (!context)
  {
    return 4294960591;
  }

  if (context[36] != 1634561902)
  {
    return 4294960591;
  }

  v2 = *(context + 15);
  if (!v2)
  {
    return 4294960591;
  }

  v3 = *(context + 14);
  if (!v3)
  {
    return 4294960591;
  }

  dispatch_group_async_f(v2, v3, context, sub_23EBB8AA0);
  sub_23EBEB0B0(*(context + 16), 27, 0, 0);
  return 0;
}

void sub_23EBB8AA0(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCWPSStopSync(void *)", 800, " \n");
  }

  if (result)
  {
    if (*(result + 144) == 1634561902 && *(result + 8))
    {
      v2 = sub_23EBEA0DC(*(result + 128));
      if (!v2)
      {
        v2 = sub_23EBB57CC(*(result + 8));
        if (!v2)
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_WPSUpdateTimedAccess(BSConfigurationContextRef)", 800, " \n");
          }

          if (*(result + 144) == 1634561902 && (v3 = *(result + 8)) != 0)
          {
            v2 = sub_23EBB4DE4(v3, 1633895790);
            if (!v2)
            {
              v6 = 0;
              sub_23EBB6A4C(v7, 0x15uLL, -1, 1633895790);
              v2 = sub_23EBB40C4(*(result + 8), v7, &v6);
              if (!v2)
              {
                if (v6)
                {
                  cf = 0;
                  v5 = 0;
                  sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%i%kO=%b}", @"kAsyncParam_Refresh_BSSetting", 1950434124, @"kAsyncParam_Refresh_Notify", 1);
                  v2 = sub_23EBB7CA8(result, cf, &v5);
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (!v2)
                  {
                    if (v5)
                    {
                      sub_23EBC2424(v5);
                      v2 = 0;
                    }

                    else
                    {
                      v2 = 4294960568;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v2 = 4294960591;
          }
        }

        sub_23EBEA18C(*(result + 128));
      }
    }

    else
    {
      v2 = 4294960591;
    }

    sub_23EBEAF44(*(result + 128), 28, 7, v2, 0);
  }
}

uint64_t sub_23EBB8CE8(uint64_t a1, uint64_t a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_RPCWPSAllowClientAsync(BSConfigurationContextRef, CFStringRef)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120) || !*(a1 + 112))
  {
    return 4294960591;
  }

  cf = 0;
  context = 0;
  v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%O}", @"kAsyncParam_WPSAllowClient_PIN", a2);
  if (!v4)
  {
    if (!cf)
    {
      return 0;
    }

    v4 = sub_23EBB7CA8(a1, cf, &context);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!v4)
    {
      if (!context)
      {
        return 4294960568;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB8E34);
      sub_23EBEB0B0(*(a1 + 128), 27, 0, 0);
      return 0;
    }
  }

  return v4;
}

void sub_23EBB8E34(uint64_t *result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_RPCWPSAllowClientSync(void *)", 800, " \n");
  }

  if (result)
  {
    v6 = 0;
    v7 = 0;
    if (*(result + 4) != 1634561902)
    {
      goto LABEL_17;
    }

    v2 = *result;
    if (!*result)
    {
      goto LABEL_17;
    }

    if (*(v2 + 144) != 1634561902 || !*(v2 + 8) || !result[1])
    {
      v3 = 4294960591;
      goto LABEL_16;
    }

    v3 = sub_23EBEA0DC(*(v2 + 128));
    if (v3)
    {
LABEL_16:
      sub_23EBEAF44(*(v2 + 128), 28, 8, v3, 0);
LABEL_17:
      sub_23EBC2368(result);
      return;
    }

    sub_23EB6FF14(result[1], &v7, "%kO", @"kAsyncParam_WPSAllowClient_PIN");
    if (v4)
    {
      goto LABEL_13;
    }

    if (v7)
    {
      v5 = 86400;
      if (!*(v2 + 89))
      {
        v5 = -1;
      }

      v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v6, "{%kO=%O%kO=%i%kO=%D%kO=%O}", @"pin", v7, @"ttl", v5, @"mac", &unk_23EC22024, 6, @"name", @"(default)");
      if (v4)
      {
LABEL_13:
        v3 = v4;
LABEL_14:
        sub_23EBEA18C(*(v2 + 128));
        goto LABEL_16;
      }

      if (v6)
      {
        v3 = sub_23EBB5908(*(v2 + 8), v6);
        if (v6)
        {
          CFRelease(v6);
          v6 = 0;
        }

        goto LABEL_14;
      }
    }

    v3 = 4294960568;
    goto LABEL_14;
  }
}

uint64_t sub_23EBB900C(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskRestartAsync(BSConfigurationContextRef)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7814(a1, 3u);
  if (!result)
  {
    dispatch_group_async_f(*(a1 + 120), *(a1 + 112), a1, sub_23EBB90E4);
    sub_23EBB9D84(a1, 3, 0, 1);
    return 0;
  }

  return result;
}

void sub_23EBB90E4(void *a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, " \n");
  }

  v14 = 0;
  cf = 0;
  v11 = 0;
  if (a1)
  {
    v12 = 0;
    v10 = 0;
    if (*(a1 + 36) != 1634561902 || !a1[1])
    {
      v3 = 0;
      v5 = 4294960591;
      goto LABEL_13;
    }

    v2 = sub_23EB6AE14(*a1);
    v3 = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    v4 = sub_23EBEA0DC(a1[16]);
    if (v4)
    {
      v5 = v4;
LABEL_13:
      sub_23EBB7814(a1, 0);
      sub_23EBC2C4C(a1, 3, 0, v5);
      if (v14)
      {
        CFRelease(v14);
        v14 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v3)
      {
        CFRelease(v3);
      }

      return;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Stopping monitoring");
    }

    v6 = sub_23EBC2700(a1);
    if (v6)
    {
      goto LABEL_39;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Stopping monitoring");
    }

    v9 = 0;
    v6 = sub_23EBC2760(a1, &v14, &cf, &v11, &v10, &v9);
    if (v6)
    {
      goto LABEL_39;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", v14, v11, v10, v9);
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Sending restart action");
      }
    }

    sub_23EBEB0B0(a1[16], 20, 0, v3);
    v6 = sub_23EBB4EE8(a1[1], 1633899074);
    if (v6)
    {
      goto LABEL_39;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Sending restart action");
    }

    sub_23EBEB0B0(a1[16], 21, 0, v3);
    if (*(a1 + 36) != 1634561902)
    {
      v5 = 4294960591;
      goto LABEL_40;
    }

    v6 = sub_23EBEB3C0(a1[16], 1u);
    if (v6)
    {
      goto LABEL_39;
    }

    if (v11)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Disassociating");
      }

      v6 = sub_23EBEBD2C(a1[16]);
      if (v6)
      {
        goto LABEL_39;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Clearing Scan Cache");
        }
      }

      v6 = sub_23EBEC3FC(a1[16]);
      if (v6)
      {
        goto LABEL_39;
      }

      if (dword_27E3827A8 > 800)
      {
LABEL_70:
        sub_23EB6A6F0(*a1);
        v8 = v7;
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          if (v8)
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "base station is remote\n");
          }

          else
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "base station is not remote\n");
          }
        }

        if (v8 == 1)
        {
          goto LABEL_77;
        }

        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Determining if base station is remote");
          }

          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Pausing after restart");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "pausing for: %d secs\n", 20);
            }
          }
        }

        v6 = sub_23EBEC174(a1[16], 20);
        if (v6)
        {
          goto LABEL_39;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Pausing after restart");
        }

        if (v14)
        {
          if (v10)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Network transition pause");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "pausing for: %d secs\n", 20);
              }
            }

            v6 = sub_23EBEC174(a1[16], 20);
            if (v6)
            {
              goto LABEL_39;
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Network transition pause");
            }
          }

          if (!sub_23EBEBC34(a1[16], v14, 0))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Joining Network");
            }

            v6 = sub_23EBEE184(a1[16], v14, cf, 1, 0);
            if (v6)
            {
              goto LABEL_39;
            }

            if (dword_27E3827A8 > 800)
            {
              goto LABEL_116;
            }

            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Joining Network");
            }
          }
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Final waiting for target base");
        }

LABEL_116:
        if (!sub_23EB6B064(*a1))
        {
          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "No bonjour seed pause");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "pausing for: %d secs\n", 8);
            }
          }

          v6 = sub_23EBEC174(a1[16], 8);
          if (v6)
          {
            goto LABEL_39;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "No bonjour seed pause");
          }
        }

        v6 = sub_23EBED690(a1[16], v3, *a1, 1, 120, &v12);
        if (!v6)
        {
          if (!v12)
          {
            v5 = 4294960568;
            goto LABEL_40;
          }

          v5 = sub_23EBC2A30(a1, v12);
          if (v12)
          {
            CFRelease(v12);
            v12 = 0;
          }

          if (v5)
          {
            goto LABEL_40;
          }

          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Final waiting for target base after restart");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Rereading settings after restart");
            }
          }

          v6 = sub_23EBBE61C(a1, 0, *a1, a1[1], 0, 0, 0);
          if (!v6)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Rereading settings after restart");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Checking if monitoring needs restored");
              }
            }

            v6 = sub_23EBC2B48(a1);
            if (!v6)
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Checking if monitoring needs restored");
              }

LABEL_77:
              v5 = 0;
              goto LABEL_40;
            }
          }
        }

LABEL_39:
        v5 = v6;
LABEL_40:
        sub_23EBEA18C(a1[16]);
        goto LABEL_13;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Clearing Scan Cache");
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestartSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Determining if base station is remote");
    }

    goto LABEL_70;
  }
}

void sub_23EBB9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 144) == 1634561902)
  {
    v7[3] = v4;
    v7[4] = v5;
    v7[0] = 0;
    if (!sub_23EB6F348(*MEMORY[0x277CBECE8], v7, "{%kO=%i%kO=%i%kO=%b}", @"kBSConfigurationTaskStart_TaskState", a2, @"kBSConfigurationTaskStart_DiskTaskCode", a3, @"kBSConfigurationTaskStart_TaskNewTask", a4))
    {
      if (v7[0])
      {
        sub_23EBEAB18(*(a1 + 128), 29, 0, v7[0]);
        if (v7[0])
        {
          CFRelease(v7[0]);
        }
      }
    }
  }
}

uint64_t sub_23EBB9E34(uint64_t a1, uint64_t a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskRestoreDefaultsAsync(BSConfigurationContextRef, Boolean)", 800, " \n");
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  v4 = sub_23EBB7814(a1, 4u);
  if (!v4)
  {
    cf = 0;
    v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%b}", "AsyncParam_WaitAndJoinFlag", a2);
    if (v4)
    {
LABEL_10:
      sub_23EBB7814(a1, 0);
      return v4;
    }

    if (cf)
    {
      v4 = sub_23EBB7CA8(a1, cf, &context);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v4)
      {
        goto LABEL_10;
      }

      if (!context)
      {
        v4 = 4294960568;
        goto LABEL_10;
      }

      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBB9FA8);
      sub_23EBB9D84(a1, 4, 0, 1);
    }

    return 0;
  }

  return v4;
}

void sub_23EBB9FA8(uint64_t result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, " \n");
  }

  v15 = 0;
  cf = 0;
  v14 = 0;
  if (result)
  {
    v17 = 0;
    v13 = 0;
    v12 = 0;
    if (*(result + 16) != 1634561902 || (v2 = *result) == 0)
    {
      v6 = 0;
LABEL_17:
      if (v15)
      {
        CFRelease(v15);
        v15 = 0;
      }

      if (v14)
      {
        CFRelease(v14);
        v14 = 0;
      }

      if (v6)
      {
        CFRelease(v6);
      }

      sub_23EBC2368(result);
      return;
    }

    if (*(v2 + 144) != 1634561902 || !*(v2 + 8) || (v3 = *(result + 8)) == 0)
    {
      v6 = 0;
      v5 = 4294960591;
      goto LABEL_15;
    }

    sub_23EB6FF14(v3, &v17, "%ks:BOOL", "AsyncParam_WaitAndJoinFlag");
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      goto LABEL_15;
    }

    v7 = sub_23EB6AE14(*v2);
    v6 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = sub_23EBEA0DC(*(v2 + 128));
    if (v8)
    {
      v5 = v8;
      goto LABEL_15;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Stopping monitoring");
    }

    v9 = sub_23EBC2700(v2);
    if (v9)
    {
      goto LABEL_48;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Stopping monitoring");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Sending restore defaults action");
      }
    }

    sub_23EBEB0B0(*(v2 + 128), 20, 0, v6);
    v9 = sub_23EBB6CA4(*(v2 + 8));
    if (v9)
    {
      goto LABEL_48;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Sending restore defaults action");
    }

    sub_23EBEB0B0(*(v2 + 128), 21, 0, v6);
    v9 = sub_23EBC2760(v2, &cf, &v15, &v14, &v13 + 1, &v13);
    if (v9)
    {
      goto LABEL_48;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", cf, v14, HIBYTE(v13), v13);
    }

    if (v14)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Disassociating");
      }

      v9 = sub_23EBEBD2C(*(v2 + 128));
      if (v9)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Clearing Scan Cache");
        }
      }

      v9 = sub_23EBEC3FC(*(v2 + 128));
      if (v9)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Clearing Scan Cache");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Waiting for network to GO AWAY");
        }
      }

      v9 = sub_23EBEBF74(*(v2 + 128), v14, *v2);
      if (v9)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 > 800)
      {
        goto LABEL_86;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Waiting for network to GO AWAY");
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Determining if base station is remote");
    }

LABEL_86:
    sub_23EB6A6F0(*v2);
    v11 = v10;
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      if (v11)
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "base station is remote\n");
      }

      else
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "base station is not remote\n");
      }
    }

    if (v11 == 1)
    {
      goto LABEL_147;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Determining if base station is remote");
    }

    if (!v17)
    {
      goto LABEL_147;
    }

    if (cf)
    {
      if (HIBYTE(v13) && !v14)
      {
        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Network transition pause");
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "pausing for: %d secs\n", 40);
          }
        }

        v9 = sub_23EBEC174(*(v2 + 128), 40);
        if (v9)
        {
          goto LABEL_48;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Network transition pause");
        }
      }

      if (!sub_23EBEBC34(*(v2 + 128), cf, 0))
      {
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Joining Network");
        }

        v9 = sub_23EBEE184(*(v2 + 128), cf, v15, 1, 0);
        if (v9)
        {
          goto LABEL_48;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Joining Network");
        }
      }
    }

    if (sub_23EB6B064(*v2))
    {
      goto LABEL_116;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "No bonjour seed pause");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "pausing for: %d secs\n", 8);
      }
    }

    v9 = sub_23EBEC174(*(v2 + 128), 8);
    if (!v9)
    {
      if (dword_27E3827A8 > 800)
      {
        goto LABEL_120;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "No bonjour seed pause");
      }

LABEL_116:
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Final waiting for target base after restore defaults");
      }

LABEL_120:
      v9 = sub_23EBED690(*(v2 + 128), 0, *v2, 1, 120, &v12);
      if (v9)
      {
        goto LABEL_48;
      }

      if (!v12)
      {
        v5 = 4294960568;
        goto LABEL_49;
      }

      v5 = sub_23EBC2A30(v2, v12);
      if (v12)
      {
        CFRelease(v12);
        v12 = 0;
      }

      if (v5)
      {
        goto LABEL_49;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Final waiting for target base after restore defaults");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Rereading settings after restore");
        }
      }

      v9 = sub_23EBBE61C(v2, 0, *v2, *(v2 + 8), 0, 0, 0);
      if (v9)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Rereading settings after restore");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Checking if monitoring needs restored");
        }
      }

      v9 = sub_23EBC2B48(v2);
      if (v9)
      {
        goto LABEL_48;
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskRestoreDefaultsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Checking if monitoring needs restored");
      }

LABEL_147:
      v5 = 0;
      goto LABEL_49;
    }

LABEL_48:
    v5 = v9;
LABEL_49:
    sub_23EBEA18C(*(v2 + 128));
LABEL_15:
    sub_23EBB7814(v2, 0);
    sub_23EBC2C4C(v2, 4, 0, v5);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_17;
  }
}

uint64_t sub_23EBBAC3C(uint64_t a1, CFDataRef theData)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskUploadFirmwareAsync(BSConfigurationContextRef, CFDataRef)", 800, " \n");
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v4 = 4294960591;
  if (theData)
  {
    if (*(a1 + 120))
    {
      if (CFDataGetLength(theData))
      {
        v4 = sub_23EBB7814(a1, 5u);
        if (!v4)
        {
          cf = 0;
          v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", "AsyncParam_FirmwareData", theData);
          if (v4)
          {
LABEL_12:
            sub_23EBB7814(a1, 0);
            return v4;
          }

          if (cf)
          {
            v4 = sub_23EBB7CA8(a1, cf, &context);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v4)
            {
              goto LABEL_12;
            }

            if (!context)
            {
              v4 = 4294960568;
              goto LABEL_12;
            }

            dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBADC4);
            sub_23EBB9D84(a1, 5, 0, 1);
          }

          return 0;
        }
      }
    }
  }

  return v4;
}

void sub_23EBBADC4(uint64_t result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, " \n");
  }

  v27 = 0;
  cf = 0;
  v25 = 0;
  if (result)
  {
    theData = 0;
    v26 = 0;
    v24 = 0;
    if (*(result + 16) != 1634561902 || (v2 = *result) == 0)
    {
      v6 = 0;
LABEL_23:
      if (v27)
      {
        CFRelease(v27);
        v27 = 0;
      }

      if (v6)
      {
        CFRelease(v6);
      }

      sub_23EBC2368(result);
      return;
    }

    if (*(v2 + 144) != 1634561902)
    {
      goto LABEL_20;
    }

    if (!*(v2 + 8))
    {
      goto LABEL_20;
    }

    v3 = *(result + 8);
    if (!v3)
    {
      goto LABEL_20;
    }

    sub_23EB6FF14(v3, &theData, "%ks", "AsyncParam_FirmwareData");
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      goto LABEL_21;
    }

    if (!theData)
    {
      v6 = 0;
      v5 = 4294960568;
      goto LABEL_21;
    }

    Length = CFDataGetLength(theData);
    if (!Length)
    {
LABEL_20:
      v6 = 0;
      v5 = 4294960591;
      goto LABEL_21;
    }

    v8 = Length;
    v9 = sub_23EB6AE14(*v2);
    v6 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = sub_23EBEA0DC(*(v2 + 128));
    if (v10)
    {
      v5 = v10;
      goto LABEL_21;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Stopping monitoring");
    }

    v11 = sub_23EBC2700(v2);
    if (v11)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Stopping monitoring");
    }

    v11 = sub_23EBC2760(v2, &cf, &v27, &v25, &v24 + 1, &v24);
    if (v11)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", cf, v25, HIBYTE(v24), v24);
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Uploading firmware");
      }
    }

    sub_23EBEB0B0(*(v2 + 128), 20, 0, v6);
    v12 = *(v2 + 8);
    BytePtr = CFDataGetBytePtr(theData);
    v11 = sub_23EBB504C(v12, BytePtr, v8);
    if (v11)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Uploading firmware");
    }

    sub_23EBEB0B0(*(v2 + 128), 21, 0, v6);
    if (sub_23EBB4248(*(v2 + 8), 1634104688))
    {
      v22 = 0;
      v23 = 0;
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Uploading firmware reading update status");
      }

      v22 = 0;
      v14 = *MEMORY[0x277CBECE8];
      for (i = 1; ; ++i)
      {
        v16 = sub_23EBEC174(*(v2 + 128), 1);
        if (v16)
        {
          v5 = v16;
          goto LABEL_50;
        }

        v11 = sub_23EBB5318(*(v2 + 8), &v23, &v22, 4);
        if (v11)
        {
          goto LABEL_49;
        }

        v17 = v22;
        if (v22)
        {
          v21 = 0;
          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || (v18 = sub_23EB74AC8(&dword_27E3827A8, 0x320u), v17 = v22, v18))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "Firmware progress: %u of %u \n", v23, v17);
              v17 = v22;
            }
          }

          v11 = sub_23EB6F348(v14, &v21, "{%ks=%i%ks=%i}", "kBSConfigurationFirmwareStatus_TotalBytesKey", v17, "kBSConfigurationFirmwareStatus_CurrentBytesKey", v23);
          if (v11)
          {
            goto LABEL_49;
          }

          if (!v21)
          {
            goto LABEL_194;
          }

          sub_23EBEAB18(*(v2 + 128), 31, 0, v21);
          if (v21)
          {
            CFRelease(v21);
            v21 = 0;
          }

          if (v23 && v23 >= v22)
          {
            v11 = sub_23EB6F348(v14, &v21, "{%ks=%b}", "kBSConfigurationFirmwareStatus_UploadComplete", 1);
            if (!v11)
            {
              if (!v21)
              {
                goto LABEL_194;
              }

              sub_23EBEAB18(*(v2 + 128), 31, 0, v21);
              if (v21)
              {
                CFRelease(v21);
                v21 = 0;
              }

              v11 = sub_23EBB7814(v2, 0);
              if (!v11)
              {
                v11 = sub_23EBB7814(v2, 3u);
                if (!v11)
                {
                  v5 = sub_23EBEC174(*(v2 + 128), 1);
                  if (!v5)
                  {
                    v5 = sub_23EBB4EE8(*(v2 + 8), 1633899074);
                    if (!v5)
                    {
                      if (dword_27E3827A8 < 801 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                      {
                        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Uploading firmware reading update status");
                      }

                      break;
                    }
                  }

                  goto LABEL_50;
                }
              }
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (i > 0x12B)
          {
            v5 = 4294960574;
            goto LABEL_50;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "Still no progress for: %u seconds \n", i);
          }
        }
      }
    }

    if (*(v2 + 144) != 1634561902)
    {
      v5 = 4294960591;
      goto LABEL_50;
    }

    v11 = sub_23EBEB3C0(*(v2 + 128), 1u);
    if (v11)
    {
      goto LABEL_49;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Determining if base station is remote");
    }

    sub_23EB6A6F0(*v2);
    v20 = v19;
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      if (v20)
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "base station is remote\n");
      }

      else
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "base station is not remote\n");
      }
    }

    if (v20 == 1)
    {
LABEL_107:
      v5 = 0;
      goto LABEL_50;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Determining if base station is remote");
    }

    if (v25)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Disassociating");
      }

      v11 = sub_23EBEBD2C(*(v2 + 128));
      if (v11)
      {
        goto LABEL_49;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Clearing Scan Cache");
        }
      }

      v11 = sub_23EBEC3FC(*(v2 + 128));
      if (v11)
      {
        goto LABEL_49;
      }

      if (dword_27E3827A8 > 800)
      {
LABEL_141:
        v11 = sub_23EBEC174(*(v2 + 128), 20);
        if (v11)
        {
          goto LABEL_49;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Pausing after restart");
        }

        if (cf)
        {
          if (HIBYTE(v24))
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Network transition pause");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "pausing for: %d secs\n", 20);
              }
            }

            v11 = sub_23EBEC174(*(v2 + 128), 20);
            if (v11)
            {
              goto LABEL_49;
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Network transition pause");
            }
          }

          if (!sub_23EBEBC34(*(v2 + 128), cf, 0))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Joining Network");
            }

            v11 = sub_23EBEE184(*(v2 + 128), cf, v27, 1, 0);
            if (v11)
            {
              goto LABEL_49;
            }

            if (dword_27E3827A8 > 800)
            {
              goto LABEL_166;
            }

            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Joining Network");
            }
          }
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Final waiting for target base");
        }

LABEL_166:
        if (!sub_23EB6B064(*v2))
        {
          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "No bonjour seed pause");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "pausing for: %d secs\n", 8);
            }
          }

          v11 = sub_23EBEC174(*(v2 + 128), 8);
          if (v11)
          {
            goto LABEL_49;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "No bonjour seed pause");
          }
        }

        v11 = sub_23EBED690(*(v2 + 128), v6, *v2, 1, 120, &v26);
        if (v11)
        {
LABEL_49:
          v5 = v11;
          goto LABEL_50;
        }

        if (!v26)
        {
LABEL_194:
          v5 = 4294960568;
          goto LABEL_50;
        }

        v5 = sub_23EBC2A30(v2, v26);
        if (v26)
        {
          CFRelease(v26);
          v26 = 0;
        }

        if (!v5)
        {
          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Final waiting for target base after firmware update");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Rereading settings after firmware update");
            }
          }

          v11 = sub_23EBBE61C(v2, 0, *v2, *(v2 + 8), 0, 0, 0);
          if (v11)
          {
            goto LABEL_49;
          }

          if (dword_27E3827A8 <= 800)
          {
            if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Rereading settings after firmware update");
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Checking if monitoring needs restored");
            }
          }

          v11 = sub_23EBC2B48(v2);
          if (v11)
          {
            goto LABEL_49;
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Checking if monitoring needs restored");
          }

          goto LABEL_107;
        }

LABEL_50:
        sub_23EBEA18C(*(v2 + 128));
LABEL_21:
        sub_23EBB7814(v2, 0);
        sub_23EBC2C4C(v2, 5, 0, v5);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        goto LABEL_23;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Clearing Scan Cache");
      }
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Pausing after restart");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskUploadFirmwareSync(void *)", 800, "pausing for: %d secs\n", 20);
      }
    }

    goto LABEL_141;
  }
}

uint64_t sub_23EBBBDE8(uint64_t a1, uint64_t a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskEraseDiskAsync(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n");
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v4 = 4294960591;
  if (a2)
  {
    if (*(a1 + 120))
    {
      v4 = sub_23EBBBF6C(a1, 1165123913);
      if (!v4)
      {
        cf = 0;
        v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", "kAsyncParam_DiskOptions", a2);
        if (v4)
        {
LABEL_11:
          sub_23EBB7814(a1, 0);
          return v4;
        }

        if (cf)
        {
          v4 = sub_23EBB7CA8(a1, cf, &context);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v4)
          {
            goto LABEL_11;
          }

          if (!context)
          {
            v4 = 4294960568;
            goto LABEL_11;
          }

          dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBC00C);
          sub_23EBB9D84(a1, 6, 1165123913, 1);
        }

        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_23EBBBF6C(uint64_t a1, int a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_SetTaskStateAndCode(BSConfigurationContextRef, eBSConfigurationTaskState, ACPTaskCode)", 800, " \n");
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = sub_23EBB7814(a1, 6u);
  if (!result)
  {
    *(a1 + 84) = a2;
  }

  return result;
}

void sub_23EBBC00C(uint64_t result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, " \n");
  }

  if (result)
  {
    v7 = 0;
    theDict = 0;
    if (*(result + 16) != 1634561902)
    {
      goto LABEL_15;
    }

    v2 = *result;
    if (!*result)
    {
      goto LABEL_15;
    }

    if (*(v2 + 144) == 1634561902 && *(v2 + 8) && (v3 = *(result + 8)) != 0)
    {
      sub_23EB6FF14(v3, &theDict, "%ks", "kAsyncParam_DiskOptions");
      if (!v4)
      {
        if (!theDict)
        {
          v5 = 4294960568;
          goto LABEL_14;
        }

        v4 = sub_23EBEA0DC(*(v2 + 128));
        if (!v4)
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Starting monitoring if needed");
          }

          v6 = sub_23EBC2E2C(v2);
          if (!v6)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Starting monitoring if needed");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Setting internal disk name");
              }
            }

            sub_23EB6FF14(theDict, &v7, "%kO", @"volumeName");
            if (!v6)
            {
              if (!v7)
              {
                v5 = 4294960568;
                goto LABEL_34;
              }

              v6 = sub_23EBB3DBC(*(v2 + 8), 1229213293, v7);
              if (!v6)
              {
                if (dword_27E3827A8 <= 800)
                {
                  if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
                  {
                    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Setting internal disk name");
                  }

                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Sending erase command");
                  }
                }

                v6 = sub_23EBB5BB4(*(v2 + 8), theDict);
                if (!v6)
                {
                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskEraseDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Sending erase command");
                  }

                  if (*(v2 + 144) == 1634561902)
                  {
                    sub_23EBEB3C0(*(v2 + 128), 0);
                  }

                  sub_23EBEA18C(*(v2 + 128));
                  goto LABEL_15;
                }
              }
            }
          }

          v5 = v6;
LABEL_34:
          sub_23EBEA18C(*(v2 + 128));
          goto LABEL_14;
        }
      }

      v5 = v4;
    }

    else
    {
      v5 = 4294960591;
    }

LABEL_14:
    sub_23EBB7814(v2, 0);
    sub_23EBC2C4C(v2, 6, 0, v5);
LABEL_15:
    sub_23EBC2368(result);
  }
}

uint64_t sub_23EBBC3D0(uint64_t a1, uint64_t a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_TaskArchiveDiskAsync(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n");
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v4 = 4294960591;
  if (a2)
  {
    if (*(a1 + 120))
    {
      v4 = sub_23EBBBF6C(a1, 1098015561);
      if (!v4)
      {
        cf = 0;
        v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", "kAsyncParam_DiskOptions", a2);
        if (v4)
        {
LABEL_11:
          sub_23EBB7814(a1, 0);
          return v4;
        }

        if (cf)
        {
          v4 = sub_23EBB7CA8(a1, cf, &context);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v4)
          {
            goto LABEL_11;
          }

          if (!context)
          {
            v4 = 4294960568;
            goto LABEL_11;
          }

          dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBC554);
          sub_23EBB9D84(a1, 6, 1098015561, 1);
        }

        return 0;
      }
    }
  }

  return v4;
}

void sub_23EBBC554(uint64_t result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, " \n");
  }

  if (result)
  {
    theDict = 0;
    if (*(result + 16) != 1634561902)
    {
      goto LABEL_15;
    }

    v2 = *result;
    if (!*result)
    {
      goto LABEL_15;
    }

    if (*(v2 + 144) == 1634561902 && *(v2 + 8) && (v3 = *(result + 8)) != 0)
    {
      sub_23EB6FF14(v3, &theDict, "%ks", "kAsyncParam_DiskOptions");
      if (!v4)
      {
        if (!theDict)
        {
          v5 = 4294960568;
          goto LABEL_14;
        }

        v4 = sub_23EBEA0DC(*(v2 + 128));
        if (!v4)
        {
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Starting monitoring if needed");
          }

          v6 = sub_23EBC2E2C(v2);
          if (!v6)
          {
            if (dword_27E3827A8 <= 800)
            {
              if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Starting monitoring if needed");
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Sending erase command");
              }
            }

            v6 = sub_23EBB5D0C(*(v2 + 8), theDict);
            if (!v6)
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_TaskArchiveDiskSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Sending erase command");
              }

              if (*(v2 + 144) == 1634561902)
              {
                sub_23EBEB3C0(*(v2 + 128), 0);
              }

              sub_23EBEA18C(*(v2 + 128));
              goto LABEL_15;
            }
          }

          v5 = v6;
          sub_23EBEA18C(*(v2 + 128));
          goto LABEL_14;
        }
      }

      v5 = v4;
    }

    else
    {
      v5 = 4294960591;
    }

LABEL_14:
    sub_23EBB7814(v2, 0);
    sub_23EBC2C4C(v2, 6, 0, v5);
LABEL_15:
    sub_23EBC2368(result);
  }
}

uint64_t sub_23EBBC828(uint64_t a1, int a2, CFTypeRef cf)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetConfigurationModeAndSetupOptions(BSConfigurationContextRef, eBSConfigurationSettingsMode, CFDictionaryRef)", 800, "inMode: %d \n", a2);
  }

  result = 4294960591;
  if (a1 && cf && *(a1 + 144) == 1634561902)
  {
    *(a1 + 72) = a2;
    *(a1 + 64) = cf;
    CFRetain(cf);
    return 0;
  }

  return result;
}

uint64_t sub_23EBBC8E4(uint64_t a1, CFTypeRef cf)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTargetNetwork(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n");
  }

  result = 4294960591;
  if (a1 && cf && *(a1 + 144) == 1634561902)
  {
    if (*(a1 + 56))
    {
      return 4294960577;
    }

    else
    {
      v5 = CFRetain(cf);
      result = 0;
      *(a1 + 56) = v5;
    }
  }

  return result;
}

uint64_t sub_23EBBC998(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTargetBaseAndSettings(BSConfigurationContextRef, CFDictionaryRef, CFDictionaryRef)", 800, " \n");
  }

  result = 4294960591;
  if (a1 && a2 && *(a1 + 144) == 1634561902)
  {
    if (*a1)
    {
      return 4294960577;
    }

    else
    {
      result = sub_23EBBCA7C(a1, a2);
      if (a3 && !result)
      {
        v7 = *(a1 + 8);

        return sub_23EBB1354(v7, a3);
      }
    }
  }

  return result;
}

uint64_t sub_23EBBCA7C(uint64_t a1, const __CFString *cf)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960578;
  }

  v4 = *a1;
  if (*a1 == cf)
  {
    return 0;
  }

  if (!cf || !v4)
  {
    goto LABEL_15;
  }

  v5 = CFEqual(cf, v4);
  if (!v5 || dword_27E3827A8 > 800)
  {
    if (v5)
    {
      return 0;
    }

    v4 = *a1;
LABEL_15:
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v9 = *a1;
    v8 = *(a1 + 8);
    if (v8)
    {
      if (v9)
      {
        result = sub_23EBB10D4(v8, v9);
        if (result)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = 0;
        sub_23EBB0D6C(v8);
      }
    }

    else if (v9)
    {
      v10 = 0;
      result = sub_23EBB0E1C(&v10, v9);
      if (result)
      {
        return result;
      }

      if (!v10)
      {
        return 4294960568;
      }

      *(a1 + 8) = v10;
    }

    return 0;
  }

  if (dword_27E3827A8 != -1 || (result = sub_23EB74AC8(&dword_27E3827A8, 0x320u), result))
  {
    v7 = sub_23EB6AE14(cf);
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetTargetBase(BSConfigurationContextRef, CFDictionaryRef)", 800, "equal SKIPPING update for: %@\n", v7);
    return 0;
  }

  return result;
}

uint64_t sub_23EBBCBC4(uint64_t *a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Create(BSConfigurationContextRef *)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x1060040BBF23B49uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  *(v2 + 17) = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 60) = 0u;
  *(v2 + 10) = 0;
  *(v2 + 87) = 0;
  *(v2 + 12) = 0;
  *(v2 + 13) = 0;
  *(v2 + 15) = dispatch_group_create();
  *(v3 + 112) = dispatch_queue_create("BSConfiguration_serial_queue", 0);
  v4 = sub_23EBE9B10((v3 + 128));
  if (!v4)
  {
    if (*(v3 + 128))
    {
      v4 = 0;
      *(v3 + 144) = 1634561902;
      *a1 = v3;
      return v4;
    }

    v4 = 4294960568;
  }

  sub_23EBBCCF0(v3);
  return v4;
}

uint64_t sub_23EBBCCF0(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Release(BSConfigurationContextRef)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v2 = sub_23EBBCEC0(a1, 1);
  if (dword_27E3827A8 <= 800)
  {
    v3 = v2;
    if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Release(BSConfigurationContextRef)", 800, "cancel err: %#m \n", v3);
    }
  }

  *(a1 + 144) = 1095585614;
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_23EBB0D6C(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    sub_23EBB0D6C(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 56) = 0;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 64) = 0;
  }

  v12 = *(a1 + 120);
  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 120) = 0;
  v13 = *(a1 + 112);
  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 112) = 0;
  v14 = *(a1 + 136);
  if (v14)
  {
    sub_23EC0F608(v14);
  }

  *(a1 + 136) = 0;
  sub_23EBE9CC0(*(a1 + 128));
  free(a1);
  return 0;
}

uint64_t sub_23EBBCEC0(uint64_t a1, int a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Cancel(BSConfigurationContextRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_23EBBD00C(a1);
  }

  v6 = sub_23EBEA004(*(a1 + 128));
  if (v6 == -6720)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    sub_23EBB1414(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    sub_23EBB1414(v9);
  }

  dispatch_group_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_Cancel(BSConfigurationContextRef, Boolean)", 800, "Done waiting on dispatch group \n");
  }

  result = 4294960525;
  if (v7 != -6771 && v4 != -6771)
  {
    if (v7)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_23EBBD00C(void *context)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_CancelTask(BSConfigurationContextRef)", 800, " \n");
  }

  if (!context || *(context + 36) != 1634561902)
  {
    return 4294960591;
  }

  if (*(context + 20) == 6)
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CancelDiskTaskAsync(BSConfigurationContextRef)", 800, " \n");
    }

    if (*(context + 36) == 1634561902)
    {
      v2 = *(context + 15);
      if (v2)
      {
        dispatch_group_async_f(v2, *(context + 14), context, sub_23EBC3770);
        return 4294960525;
      }
    }

    return 4294960591;
  }

  return 0;
}

uint64_t sub_23EBBD130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetProgressCallback(BSConfigurationContextRef, assistant_progress_t, void *)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v6 = *(a1 + 128);

  return sub_23EBEAA74(v6, a2, a3);
}

uint64_t sub_23EBBD1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetAssistantCallback(BSConfigurationContextRef, assistant_callback_t, void *)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v6 = *(a1 + 128);

  return sub_23EBEA4E8(v6, a2, a3);
}

uint64_t sub_23EBBD2B8(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t sub_23EBBD2C4(uint64_t a1, int a2, CFTypeRef cf, CFTypeRef a4)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetModeSourceBaseAndSettings(BSConfigurationContextRef, eBSConfigurationSettingsMode, CFDictionaryRef, CFDictionaryRef)", 800, "inMode: %d \n", a2);
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  *(a1 + 72) = a2;
  if (cf)
  {
    *(a1 + 16) = cf;
    CFRetain(cf);
  }

  if (a4)
  {
    *(a1 + 32) = a4;
    CFRetain(a4);
  }

  return 0;
}

uint64_t sub_23EBBD398(uint64_t a1, CFTypeRef cf, int a3, const __CFString *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSettingsToJoinNetwork(BSConfigurationContextRef, CFDictionaryRef, BSSecMode, CFStringRef)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (cf && *(a1 + 8))
  {
    *(a1 + 72) = 2;
    *(a1 + 48) = cf;
    CFRetain(cf);
    v12 = sub_23EC0F94C(*(a1 + 48), v9, v10, v11);
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      result = sub_23EBB3F7C(*(a1 + 8), 1937327724, &v14);
      if (!result)
      {
        if ((v14 & 0x40) != 0 || (result = sub_23EBB3E08(*(a1 + 8), 2002862934, 768), !result))
        {
          sub_23EBB6A4C(v15, 0x15uLL, -1, 1651723853);
          result = sub_23EBB3C0C(*(a1 + 8), v15, 1);
          if (!result)
          {
            sub_23EBB6A4C(v15, 0x15uLL, -1, 1918979693);
            result = sub_23EBB3B84(*(a1 + 8), v15, v13);
            if (!result)
            {
              sub_23EBB6A4C(v15, 0x15uLL, -1, 1651725133);
              result = sub_23EBB3C0C(*(a1 + 8), v15, a3);
              if (!result)
              {
                if (a3 == 1 || !a4 || (sub_23EBB6A4C(v15, 0x15uLL, -1, 1651725131), result = sub_23EBB3B84(*(a1 + 8), v15, a4), !result))
                {
                  result = sub_23EBB3E08(*(a1 + 8), 1651724877, 3);
                  if (!result)
                  {
                    result = sub_23EBB4248(*(a1 + 8), 1884509249);
                    if (result)
                    {
                      sub_23EBB6A4C(v15, 0x15uLL, -1, 1651724357);
                      return sub_23EBB3B84(*(a1 + 8), v15, *MEMORY[0x277CBED28]);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBBD5FC(uint64_t a1, const __CFString *a2, int a3, const __CFString *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSettingsToCreateNetwork(BSConfigurationContextRef, CFStringRef, BSSecMode, CFStringRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 8) || a3 != 1 && !a4)
  {
    return 4294960591;
  }

  *(a1 + 72) = 1;
  sub_23EBB6A4C(v9, 0x15uLL, -1, 1651723853);
  result = sub_23EBB3C0C(*(a1 + 8), v9, 0);
  if (!result)
  {
    sub_23EBB6A4C(v9, 0x15uLL, -1, 1918979693);
    result = sub_23EBB3B84(*(a1 + 8), v9, a2);
    if (!result)
    {
      sub_23EBB6A4C(v9, 0x15uLL, -1, 1651725133);
      result = sub_23EBB3C0C(*(a1 + 8), v9, a3);
      if (!result)
      {
        if (a3 == 1 || (sub_23EBB6A4C(v9, 0x15uLL, -1, 1651725131), result = sub_23EBB3B84(*(a1 + 8), v9, a4), !result))
        {
          sub_23EBB6A4C(v9, 0x15uLL, -1, 1683440723);
          result = sub_23EBB3B84(*(a1 + 8), v9, *MEMORY[0x277CBED28]);
          if (!result)
          {
            return sub_23EBB3E08(*(a1 + 8), 1651724877, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBBD7F0(uint64_t a1, CFTypeRef cf)
{
  if (!a1 || *(a1 + 144) != 1634561902 || *(a1 + 104))
  {
    return 4294960591;
  }

  *(a1 + 72) = 3;
  *(a1 + 104) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return 0;
}

uint64_t sub_23EBBD854(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (cf && *(a1 + 144) == 1634561902 && !*(a1 + 104))
  {
    *(a1 + 72) = 4;
    *(a1 + 104) = cf;
    CFRetain(cf);
    return 0;
  }

  return result;
}

uint64_t sub_23EBBD8BC(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetupSecureWANManagementFlags(BSConfigurationContextRef)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 4294960591;
  }

  v5 = 0;
  result = sub_23EBB3F7C(v2, 1937327724, &v5 + 4);
  if (!result)
  {
    if ((v5 & 0x4000000000) == 0)
    {
      return 0;
    }

    v4 = *MEMORY[0x277CBED10];
    result = sub_23EBB3DBC(*(a1 + 8), 1651725143, *MEMORY[0x277CBED10]);
    if (!result)
    {
      result = sub_23EBB3F7C(*(a1 + 8), 1936017004, &v5);
      if (!result)
      {
        if ((v5 & 0x10001) != 0x10000)
        {
          return 0;
        }

        result = sub_23EBB3DBC(*(a1 + 8), 1651726147, v4);
        if (!result)
        {
          if (dword_27E3827A8 > 800)
          {
            return 0;
          }

          if (dword_27E3827A8 != -1 || (result = sub_23EB74AC8(&dword_27E3827A8, 0x320u), result))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetupSecureWANManagementFlags(BSConfigurationContextRef)", 800, "BSSimpleWanConfiguration OFF \n");
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBBDA3C(uint64_t a1, int a2, const __CFString *a3, const __CFString **a4)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CopySourceWiFIPlistForImport(BSConfigurationContextRef, eBSConfigurationSettingsMode, CFDictionaryRef, CFDictionaryRef *)", 800, " \n");
  }

  v8 = 4294960591;
  if (a1)
  {
    if (a4)
    {
      if (a3)
      {
        if (*(a1 + 144) == 1634561902)
        {
          theData = 0;
          cf = 0;
          sub_23EB6FF14(a3, &cf, "%kC", 1466517097);
          v8 = v9;
          if (!v9)
          {
            if (!cf)
            {
              return 4294960568;
            }

            TypeID = CFDictionaryGetTypeID();
            if (TypeID != CFGetTypeID(cf))
            {
              return 4294960540;
            }

            DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], cf, 2uLL);
            if (!DeepCopy)
            {
              return 4294960568;
            }

            v12 = DeepCopy;
            sub_23EB6FF14(a3, &theData, "%kC", 1717920116);
            if (!v13)
            {
              if (!theData)
              {
                v8 = 4294960568;
                goto LABEL_15;
              }

              v15 = !sub_23EBB4248(*(a1 + 8), 1198748750) || sub_23EBEF2E4(theData, 1198748750) == 0;
              v16 = 0;
              while (1)
              {
                sub_23EB6C4D0(v12, 0, off_278C690E8[v16], 0);
                if (v13)
                {
                  break;
                }

                if (++v16 == 29)
                {
                  if (*(a1 + 144) == 1634561902 && (*(a1 + 72) - 13) >= 0xFFFFFFFC)
                  {
                    if (sub_23EBB4248(*(a1 + 8), 1884509249) && sub_23EBEF2E4(theData, 1884509249) || (sub_23EB6C4D0(v12, 0, @"pSTA", 0), !v13))
                    {
                      if (!v15 || (sub_23EB6C4D0(v12, 0, @"vaps", 0), !v13))
                      {
LABEL_52:
                        v8 = 0;
                        *a4 = v12;
                        return v8;
                      }
                    }
                  }

                  else
                  {
                    v17 = 0;
                    while (1)
                    {
                      sub_23EB6C4D0(v12, 0, off_278C691D8[v17], 0);
                      if (v13)
                      {
                        break;
                      }

                      if (++v17 == 4)
                      {
                        if (v15)
                        {
                          sub_23EB6C4D0(v12, 0, @"vaps", 0);
                          if (v13)
                          {
                            goto LABEL_14;
                          }
                        }

                        if (a2 != 8 && a2 != 6)
                        {
                          goto LABEL_38;
                        }

                        sub_23EB6C4D0(v12, 0, @"raCA", *MEMORY[0x277CBED28]);
                        if (v13)
                        {
                          goto LABEL_14;
                        }

                        if (a2 != 8)
                        {
LABEL_38:
                          v18 = 0;
                          while (1)
                          {
                            sub_23EB6C4D0(v12, 0, off_278C69200[v18], 0);
                            if (v13)
                            {
                              goto LABEL_14;
                            }

                            if (++v18 == 16)
                            {
                              if (a2 != 7 && a2 != 2)
                              {
                                goto LABEL_52;
                              }

                              v19 = 0;
                              while (1)
                              {
                                sub_23EB6C4D0(v12, 0, off_278C69288[v19], 0);
                                if (v13)
                                {
                                  goto LABEL_14;
                                }

                                if (++v19 == 9)
                                {
                                  goto LABEL_52;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_52;
                      }
                    }
                  }

                  break;
                }
              }
            }

LABEL_14:
            v8 = v13;
LABEL_15:
            CFRelease(v12);
          }
        }
      }
    }
  }

  return v8;
}

uint64_t sub_23EBBDDB0(uint64_t *a1, const __CFString *a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, " \n");
  }

  v26 = 0;
  v27 = 0;
  if (!a1 || *(a1 + 36) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2 || !*(a1 + 18))
  {
    return 4294960591;
  }

  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v25 = 0;
  sub_23EB6FF14(a2, &v31, "%kO", @"kBSAutoGuessSetupOptionKey_BaseName");
  if (v4)
  {
    return v4;
  }

  if (!v31)
  {
    return 4294960569;
  }

  sub_23EB6FF14(a2, &v30, "%kO", @"kBSAutoGuessSetupOptionKey_TargetBase");
  if (v7 == -6727)
  {
    cf = 0;
    sub_23EB6FF14(a2, &v29, "%kO", @"kBSAutoGuessSetupOptionKey_TargetNetwork");
    if (v4)
    {
      return v4;
    }

    if (!v29)
    {
      return 4294960568;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Joining/browsing for target");
    }

    v4 = sub_23EBEEA6C(a1[16], v29, 0, &cf);
    if (v4)
    {
      return v4;
    }

    if (cf)
    {
      v5 = sub_23EBBCA7C(a1, cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v5)
      {
        return v5;
      }
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Joining/browsing for target");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Reading target settings");
      }
    }

    v4 = sub_23EBBE61C(a1, 0, *a1, a1[1], 0, 0, 1);
    if (v4)
    {
      return v4;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_UpdateSettingsWithConfigOptions(BSConfigurationContextRef, CFDictionaryRef)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Reading target settings");
    }
  }

  else
  {
    v5 = v7;
    if (v7)
    {
      return v5;
    }

    if (!v30)
    {
      return 4294960568;
    }

    sub_23EB6FF14(a2, &v28, "%kO", @"kBSAutoGuessSetupOptionKey_TargetSettings");
    if (v4)
    {
      return v4;
    }

    if (!v28)
    {
      return 4294960568;
    }

    v4 = sub_23EBBC998(a1, v30, v28);
    if (v4)
    {
      return v4;
    }
  }

  v4 = sub_23EBBD8BC(a1);
  if (v4)
  {
    return v4;
  }

  v8 = *(a1 + 18);
  v5 = 4294960561;
  if (v8 > 3)
  {
    if ((v8 - 6) < 6)
    {
      sub_23EB6FF14(a2, &v27, "%kO", @"kBSAutoGuessSetupOptionKey_SourceBase");
      if (!v4)
      {
        if (!v27)
        {
          return 4294960568;
        }

        sub_23EB6FF14(a2, &v26, "%kO", @"kBSAutoGuessSetupOptionKey_SourceSettings");
        if (v9 != -6727)
        {
          v5 = v9;
          if (v9)
          {
            return v5;
          }

          if (!v26)
          {
            return 4294960568;
          }
        }

        goto LABEL_60;
      }

      return v4;
    }

    if (v8 != 4)
    {
      if (v8 != 12)
      {
        return v5;
      }

      sub_23EB6FF14(a2, &v27, "%kO", @"kBSAutoGuessSetupOptionKey_SourceBase");
      if (v4)
      {
        return v4;
      }

      if (!v27)
      {
        return 4294960568;
      }

LABEL_67:
      v23 = 0;
      cf = 0;
      v21 = 0;
      v22 = 0;
      sub_23EB6FF14(a2, &cf, "%kO", @"kBSAutoGuessSetupOptionKey_NetworkName");
      if (v4)
      {
        return v4;
      }

      if (!cf)
      {
        return 4294960568;
      }

      sub_23EB6FF14(a2, &v23, "%kO", @"kBSAutoGuessSetupOptionKey_NetworkPassword");
      if (v4)
      {
        return v4;
      }

      if (!v23)
      {
        return 4294960568;
      }

      sub_23EB6FF14(a2, &v22, "%kO", @"kBSAutoGuessSetupOptionKey_BasePassword");
      if (v4)
      {
        return v4;
      }

      if (!v22)
      {
        return 4294960568;
      }

      v25 = 0;
      sub_23EB6FF14(a2, &v25, "%kO:BOOL", @"kBSAutoGuessSetupOptionKey_SkipInternetTests");
      if (!v11 || (v5 = v11, v11 == -6727))
      {
        if (!sub_23EBB4248(a1[1], 1464877357))
        {
          return 4294960561;
        }

        if (sub_23EBB4248(a1[1], 1095062317))
        {
          v12 = 7;
        }

        else
        {
          v12 = 4;
        }

        v4 = sub_23EBBD5FC(a1, cf, v12, v23);
        if (v4)
        {
          return v4;
        }

        v4 = sub_23EBB3DBC(a1[1], 1937330263, v22);
        if (v4)
        {
          return v4;
        }

        sub_23EBBEA58(a1, a2);
        if (v4)
        {
          return v4;
        }

        sub_23EB6FF14(a2, &v21, "%kO", @"kBSAutoGuessSetupOptionKey_DiskSharing_Password");
        if (v13 == -6727)
        {
          goto LABEL_60;
        }

        v5 = v13;
        if (v13)
        {
          return v5;
        }

        if (!v21)
        {
          return 4294960568;
        }

        v4 = sub_23EBB3E08(a1[1], 1651721805, 1);
        if (v4)
        {
          return v4;
        }

        v14 = a1[1];
        v15 = v21;
        v16 = 1718842224;
LABEL_112:
        v4 = sub_23EBB3DBC(v14, v16, v15);
        if (v4)
        {
          return v4;
        }

        goto LABEL_60;
      }

      return v5;
    }

    v23 = 0;
    cf = 0;
    sub_23EB6FF14(a2, &v23, "%kO", @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
    if (v4)
    {
      return v4;
    }

    if (!v23)
    {
      return 4294960568;
    }

    v4 = sub_23EBBD854(a1, v23);
    if (v4)
    {
      return v4;
    }

    sub_23EB6FF14(a2, &cf, "%kO", @"kBSAutoGuessSetupOptionKey_BasePassword");
    if (v4)
    {
      return v4;
    }

    if (!cf)
    {
      return 4294960568;
    }

    v5 = sub_23EBB3DBC(a1[1], 1937330263, cf);
    if (v5)
    {
      return v5;
    }

LABEL_60:
    if (!v27)
    {
      return sub_23EBB3DBC(a1[1], 1937329773, v31);
    }

    v4 = sub_23EBBD2C4(a1, *(a1 + 18), v27, v26);
    if (!v4)
    {
      return sub_23EBB3DBC(a1[1], 1937329773, v31);
    }

    return v4;
  }

  if (v8 == 1)
  {
    goto LABEL_67;
  }

  if (v8 != 2)
  {
    if (v8 != 3)
    {
      return v5;
    }

    cf = 0;
    sub_23EB6FF14(a2, &cf, "%kO", @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
    if (v10)
    {
      v5 = v10;
      if (v10 != -6727)
      {
        return v5;
      }
    }

    v4 = sub_23EBBD7F0(a1, cf);
    if (v4)
    {
      return v4;
    }

    goto LABEL_60;
  }

  cf = 0;
  v22 = 0;
  v20 = 0;
  sub_23EB6FF14(a2, &cf, "%kO", @"kBSAutoGuessSetupOptionKey_SourceNetwork");
  if (v4)
  {
    return v4;
  }

  if (!cf)
  {
    return 4294960568;
  }

  sub_23EC0F8D8(cf, &v20, 0);
  if (v20 == 8)
  {
    v20 = 5;
  }

  v23 = 0;
  sub_23EB6FF14(a2, &v23, "%kO", @"kBSAutoGuessSetupOptionKey_NetworkPassword");
  if (v17)
  {
    v5 = v17;
    if (v17 != -6727)
    {
      return v5;
    }
  }

  sub_23EB6FF14(a2, &v22, "%kO", @"kBSAutoGuessSetupOptionKey_BasePassword");
  if (v18)
  {
    v5 = v18;
    if (v18 != -6727)
    {
      return v5;
    }

    if (sub_23EB6A30C(*a1))
    {
      v22 = @"public";
      goto LABEL_106;
    }

    return 4294960569;
  }

  if (!v22)
  {
    return 4294960568;
  }

LABEL_106:
  v21 = 0;
  sub_23EB6FF14(a2, &v21, "%kO", @"kBSAutoGuessSetupOptionKey_AirPlayPassword");
  if (!v19 || (v5 = v19, v19 == -6727))
  {
    v4 = sub_23EBBD398(a1, cf, v20, v23);
    if (v4)
    {
      return v4;
    }

    v4 = sub_23EBB3DBC(a1[1], 1937330263, v22);
    if (v4)
    {
      return v4;
    }

    v15 = v21;
    if (!v21)
    {
      goto LABEL_60;
    }

    v14 = a1[1];
    v16 = 1635077712;
    goto LABEL_112;
  }

  return v5;
}

uint64_t sub_23EBBE61C(uint64_t a1, const __CFArray *a2, const __CFString *a3, uint64_t a4, int a5, int a6, int a7)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_ReadPropertiesForBase(BSConfigurationContextRef, CFArrayRef, CFDictionaryRef, BSRef, Boolean, Boolean, Boolean)", 800, "\n");
  }

  if (!a3 || !a4)
  {
    v20 = 4294960591;
    sub_23EBEB0B0(*(a1 + 128), 19, 4294960591, 0);
    return v20;
  }

  sub_23EB6A6F0(a3);
  v15 = 18;
  if (!v14)
  {
    v15 = 3;
  }

  v32 = v15;
  if (v14)
  {
    v16 = 10;
  }

  else
  {
    v16 = 6;
  }

  if (a6)
  {
    v17 = sub_23EBEA0DC(*(a1 + 128));
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      a3 = 0;
      goto LABEL_63;
    }
  }

  v31 = v16;
  CFRetain(a3);
  v19 = sub_23EB6AE14(a3);
  if (!v19)
  {
    v18 = -6727;
    goto LABEL_61;
  }

  v28 = a7;
  sub_23EBEB0B0(*(a1 + 128), 18, 0, v19);
  v30 = 0;
  v29 = 0;
  v21 = 0;
  while (1)
  {
    while (1)
    {
      v22 = sub_23EBB14AC(a4, a2, 1);
      if (v22 != -16)
      {
        break;
      }

      if (v21)
      {
        v21 = 1;
        if (a5)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (*(a1 + 144) != 1634561902 || !sub_23EB6AE14(a3))
        {
LABEL_60:
          v18 = -6705;
          goto LABEL_61;
        }

        cf = 0;
        v23 = sub_23EBECA80(*(a1 + 128), @"keychainBaseStationType", a3, &cf);
        if (v23)
        {
          v18 = v23;
          if (v23 == -6727)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (!cf)
          {
            v18 = -6728;
            goto LABEL_61;
          }

          v18 = sub_23EBB3DBC(a4, 1651721296, cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        v21 = 1;
        if (v18)
        {
          if (v18 != -6727)
          {
            goto LABEL_61;
          }

LABEL_32:
          if (v28 && !*(a1 + 90))
          {
            v24 = sub_23EBEA310(*(a1 + 128), 0);
            if (v24 || !a5)
            {
              if (v24)
              {
                v18 = v24;
              }

              else
              {
                v18 = -16;
              }

              goto LABEL_61;
            }
          }

          else if (!a5)
          {
            v18 = -16;
            goto LABEL_61;
          }

LABEL_46:
          if (*(a1 + 144) != 1634561902)
          {
            goto LABEL_60;
          }

          cf = 0;
          CFRetain(a3);
          v25 = sub_23EB6AE14(a3);
          if (!v25)
          {
            v18 = -6705;
LABEL_74:
            CFRelease(a3);
            goto LABEL_61;
          }

          v26 = sub_23EBECE2C(*(a1 + 128), @"keychainBaseStationType", v25, &cf);
          if (v26)
          {
            v18 = v26;
            goto LABEL_74;
          }

          if (!cf)
          {
            v18 = -6728;
            goto LABEL_74;
          }

          v18 = sub_23EBB3DBC(a4, 1651721296, cf);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          CFRelease(a3);
          v29 = 1;
          v21 = 1;
          if (v18)
          {
            goto LABEL_61;
          }
        }
      }
    }

    v18 = v22;
    if (v22 != -6753)
    {
      break;
    }

    if (v30 == v32 - 1)
    {
      v18 = -6753;
      goto LABEL_61;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_ReadPropertiesForBase(BSConfigurationContextRef, CFArrayRef, CFDictionaryRef, BSRef, Boolean, Boolean, Boolean)", 800, "## connection err, retries: %d of %d \n", v30 + 1, v32);
    }

    ++v30;
    v18 = sub_23EBEC174(*(a1 + 128), v31);
    if (v18)
    {
      goto LABEL_61;
    }
  }

  if (!v22)
  {
    LOBYTE(cf) = 0;
    v18 = sub_23EBEA268(*(a1 + 128), &cf);
    if (!v18 && cf && v29)
    {
      sub_23EBC3980(a1, a3, a4);
    }
  }

LABEL_61:
  if (a6)
  {
    sub_23EBEA18C(*(a1 + 128));
  }

LABEL_63:
  if (v18 == -6735)
  {
    v20 = 4294967280;
  }

  else
  {
    v20 = v18;
  }

  sub_23EBEB0B0(*(a1 + 128), 19, v20, v19);
  if (a3)
  {
    CFRelease(a3);
  }

  return v20;
}

void sub_23EBBEA58(uint64_t a1, const __CFString *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144) == 1634561902)
  {
    if (*(a1 + 8))
    {
      theString = 0;
      v9 = 0;
      v8 = 0;
      sub_23EB6FF14(a2, &v9, "%kO:BOOL", @"kBSAutoGuessSetupOptionKey_GuestNetwork_On");
      if (!v4)
      {
        sub_23EBB6A4C(v11, 0x15uLL, -1, 1651722053);
        if (!sub_23EBB3C94(*(a1 + 8), v11, v9 != 0))
        {
          if (v9)
          {
            sub_23EB6FF14(a2, &theString, "%kO", @"kBSAutoGuessSetupOptionKey_GuestNetwork_Name");
            if (v5 == -6727 || !v5 && theString && (sub_23EBB6A4C(v11, 0x15uLL, -1, 1651722062), !sub_23EBB3B84(*(a1 + 8), v11, theString)))
            {
              sub_23EB6FF14(a2, &v8, "%kO:int", @"kBSAutoGuessSetupOptionKey_GuestNetwork_Security");
              if (!v6)
              {
                sub_23EBB6A4C(v11, 0x15uLL, -1, 1651722067);
                if (!sub_23EBB3C0C(*(a1 + 8), v11, v8) && v8 != 1)
                {
                  sub_23EB6FF14(a2, &theString, "%kO", @"kBSAutoGuessSetupOptionKey_GuestNetwork_Password");
                  if (!v7)
                  {
                    if (theString)
                    {
                      if (CFStringGetLength(theString))
                      {
                        sub_23EBB6A4C(v11, 0x15uLL, -1, 1651722064);
                        sub_23EBB3B84(*(a1 + 8), v11, theString);
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
  }
}

uint64_t sub_23EBBEC90(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (a2 && *(a1 + 144) == 1634561902)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBBECD8(uint64_t a1, _BYTE *a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_GetSaveBasePasswordToKeychain(BSConfigurationContextRef, Boolean *)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v4 = *(a1 + 128);

  return sub_23EBEA268(v4, a2);
}

uint64_t sub_23EBBED88(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSaveBasePasswordToKeychain(BSConfigurationContextRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v4 = *(a1 + 128);

  return sub_23EBEA310(v4, v2);
}

uint64_t sub_23EBBEE38(uint64_t a1, _BYTE *a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_GetSaveWiFiPasswordToKeychain(BSConfigurationContextRef, Boolean *)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v4 = *(a1 + 128);

  return sub_23EBEA3A8(v4, a2);
}

uint64_t sub_23EBBEEE8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSaveWiFiPasswordToKeychain(BSConfigurationContextRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  v4 = *(a1 + 128);

  return sub_23EBEA450(v4, v2);
}

uint64_t sub_23EBBEF98(uint64_t a1, char a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetAskAboutSavingBasePasswords(BSConfigurationContextRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = 0;
  *(a1 + 90) = a2;
  return result;
}

uint64_t sub_23EBBF030(uint64_t a1, char a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetSettingsModeIsAutomatic(BSConfigurationContextRef, Boolean)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  result = 0;
  *(a1 + 76) = a2;
  return result;
}

uint64_t sub_23EBBF0C8(uint64_t a1, void *a2)
{
  if (!a1 || *(a1 + 144) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294960569;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_23EBBF110(uint64_t *a1, void *a2)
{
  if (!a1 || *(a1 + 36) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 4294960569;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_23EBBF158(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_JoinAsync(BSConfigurationContextRef)", 800, " \n");
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7CA8(a1, 0, &context);
  if (!result)
  {
    if (context)
    {
      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBF238);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void sub_23EBBF238(_DWORD *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinSync(void *)", 800, " \n");
  }

  if (result)
  {
    if (result[4] == 1634561902)
    {
      v5 = *result;
      v6 = *(*result + 56);
      v7 = sub_23EC0F94C(v6, a2, a3, a4);
      if (v7)
      {
        v11 = v7;
        if (sub_23EC0F95C(v6, v8, v9, v10))
        {
          if (!sub_23EBEBC34(*(v5 + 128), v11, 0))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Joining Network");
            }

            if (!sub_23EBEE390(*(v5 + 128), v6, &stru_285145FE8, 1, 0) && dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Joining Network");
            }
          }
        }
      }
    }

    sub_23EBC2368(result);
  }
}

uint64_t sub_23EBBF400(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_JoinAndBrowseAsync(BSConfigurationContextRef)", 800, " \n");
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7CA8(a1, 0, &context);
  if (!result)
  {
    if (context)
    {
      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBF4E0);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void sub_23EBBF4E0(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinAndBrowseSync(void *)", 800, " \n");
  }

  cf = 0;
  if (a1)
  {
    v25 = 0;
    if (a1[4] == 1634561902)
    {
      v5 = *a1;
      v6 = *(*a1 + 56);
      v7 = sub_23EC0F94C(v6, a2, a3, a4);
      if (v7)
      {
        v11 = v7;
        v12 = sub_23EC0F95C(v6, v8, v9, v10);
        if (v12)
        {
          v13 = v12;
          if (!sub_23EBEBC34(v5[16], v11, 0))
          {
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinAndBrowseSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Joining Network");
            }

            if (sub_23EBEE390(v5[16], v6, &stru_285145FE8, 1, 0))
            {
              goto LABEL_22;
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_JoinAndBrowseSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Joining Network");
            }
          }

          v17 = sub_23EC0FA70(v6, v14, v15, v16);
          v18 = *MEMORY[0x277CBECE8];
          v22 = sub_23EC0F9F4(v6, v19, v20, v21) != 0;
          if (!sub_23EB6F348(v18, &v25, "{%ks={%ks=%O%ks=%i%ks=%i}}", "txt", "raMA", v13, "syAP", v17, "syFl", v22 << 6) && sub_23EBAF5CC(v17, 1))
          {
            v23 = sub_23EBED690(v5[16], 0, v25, 0, 120, &cf);
            if (v25)
            {
              CFRelease(v25);
              v25 = 0;
            }

            if (!v23 && cf)
            {
              *v5 = cf;
              cf = 0;
            }
          }
        }
      }
    }

LABEL_22:
    sub_23EBC2368(a1);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t sub_23EBBF76C(uint64_t a1, uint64_t a2)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_ReadPropertiesAsync(BSConfigurationContextRef, CFArrayRef)", 800, " \n");
  }

  context = 0;
  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  cf = 0;
  if (a2)
  {
    v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks=%O}", "AsyncParam_PropertiesArray", a2);
    v5 = cf;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = cf == 0;
    }

    if (v6)
    {
      return v4;
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  v4 = sub_23EBB7CA8(a1, v5, &context);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!v4)
  {
    if (context)
    {
      dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBBF8B4);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return v4;
}

void sub_23EBBF8B4(uint64_t result)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_ReadPropertiesSync(void *)", 800, " \n");
  }

  if (result)
  {
    v7 = 0;
    if (*(result + 16) == 1634561902)
    {
      v2 = *result;
      if (*result)
      {
        if (*(v2 + 144) == 1634561902)
        {
          if (*v2)
          {
            if (*(v2 + 8))
            {
              v7 = 0;
              v3 = *(result + 8);
              if (!v3 || (sub_23EB6FF14(v3, &v7, "%ks", "AsyncParam_PropertiesArray"), v4 == -6727) || !v4 && v7)
              {
                if (!sub_23EBEA238(*(v2 + 128)))
                {
                  goto LABEL_25;
                }

                v5 = *v2;
                CFRetain(*v2);
                v6 = sub_23EBC2A30(v2, v5);
                if (v5)
                {
                  CFRelease(v5);
                }

                if (!v6)
                {
LABEL_25:
                  if (!sub_23EBBE61C(v2, v7, *v2, *(v2 + 8), 1, 1, 0) && !sub_23EBC2B48(v2))
                  {
                    sub_23EBC386C(v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_23EBC2368(result);
  }
}

uint64_t sub_23EBBFA24(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_WriteSettingsAsync(BSConfigurationContextRef)", 800, " \n");
  }

  if (!a1 || *(a1 + 144) != 1634561902 || !*(a1 + 120))
  {
    return 4294960591;
  }

  result = sub_23EBB7814(a1, 1u);
  if (!result)
  {
    dispatch_group_async_f(*(a1 + 120), *(a1 + 112), a1, sub_23EBBFAFC);
    sub_23EBEB0B0(*(a1 + 128), 14, 0, 0);
    return 0;
  }

  return result;
}

void sub_23EBBFAFC(void *a1)
{
  v107[3] = *MEMORY[0x277D85DE8];
  v93 = 0;
  v90 = 0;
  v91 = 0;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, " \n");
  }

  cf = 0;
  v103 = 0;
  v100 = 0;
  DeepCopy = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v92 = 0;
  v95 = 0;
  v89 = 0;
  if (!a1)
  {
    goto LABEL_43;
  }

  v2 = sub_23EBEA0DC(a1[16]);
  if (v2)
  {
    goto LABEL_35;
  }

  LOBYTE(v92) = 0;
  v3 = a1[1];
  if (v3 && sub_23EBB63A0(v3))
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Stopping monitoring");
    }

    v4 = sub_23EBC2700(a1);
    if (v4)
    {
      goto LABEL_33;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Stopping monitoring");
    }
  }

  if (*(a1 + 90))
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Asking about keychain saving");
    }

    v5 = sub_23EBEDA58(a1[16], @"KeychainBasePasswordRemember.title", 0, 0, @"KeychainBasePasswordRemember.message", 0, 0, @"kSave", @"kDontSave") != -6723;
    v4 = sub_23EBBED88(a1, v5);
    if (v4)
    {
      goto LABEL_33;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Done asking about keychain saving");
    }
  }

  if (*(a1 + 18))
  {
    v4 = sub_23EBBDDB0(a1, a1[8]);
    if (v4)
    {
      goto LABEL_33;
    }
  }

  if (!*a1 || (v6 = a1[1]) == 0)
  {
    v2 = 4294960591;
    goto LABEL_34;
  }

  v4 = sub_23EBB3F30(v6, 1937329773, &v98);
  if (v4)
  {
    goto LABEL_33;
  }

  if (!v98)
  {
    v2 = 4294960568;
    goto LABEL_34;
  }

  v4 = sub_23EBEDC9C(a1[16], 300);
  if (v4)
  {
LABEL_33:
    v2 = v4;
    goto LABEL_34;
  }

  v7 = *(a1 + 18);
  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_267;
    }

    if (v7 == 1)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Verify connection");
      }

      DeepCopy = 0;
      v13 = sub_23EBC3A64(a1, a1[1], *a1, &DeepCopy);
      if (v13)
      {
        v2 = v13;
        if (v13 != -6735)
        {
          goto LABEL_276;
        }

        if (dword_27E3827A8 > 800)
        {
          goto LABEL_266;
        }

        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "***No system status or monitoring support\n");
        }
      }

      else if (DeepCopy)
      {
        v2 = sub_23EBBCA7C(a1, DeepCopy);
        if (DeepCopy)
        {
          CFRelease(DeepCopy);
          DeepCopy = 0;
        }

        if (v2)
        {
          goto LABEL_276;
        }
      }

      if (dword_27E3827A8 > 800 || dword_27E3827A8 == -1 && !sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        goto LABEL_266;
      }

      v29 = "Verify connection";
LABEL_161:
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", v29);
      goto LABEL_266;
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        LODWORD(v106[0]) = 0;
        sub_23EBB6A4C(v107, 0x15uLL, -1, 1651725133);
        v8 = sub_23EBB3F94(a1[1], v107, v106);
        if (v8)
        {
          goto LABEL_275;
        }

        if (LODWORD(v106[0]) != 1)
        {
          if (!a1[6])
          {
            goto LABEL_225;
          }

          sub_23EBB6A4C(v107, 0x15uLL, -1, 1918979693);
          v8 = sub_23EBB3E20(a1[1], v107, &v91);
          if (v8)
          {
            goto LABEL_275;
          }

          if (!v91)
          {
            goto LABEL_569;
          }

          sub_23EBB6A4C(v107, 0x15uLL, -1, 1651725131);
          v8 = sub_23EBB3E20(a1[1], v107, &v90);
          if (v8)
          {
            goto LABEL_275;
          }

          if (!v90)
          {
            goto LABEL_569;
          }

          if (CFStringCompare(&stru_285145FE8, v90, 0) == kCFCompareEqualTo && v90)
          {
            CFRelease(v90);
            v90 = 0;
          }

          v31 = sub_23EBECA80(a1[16], @"keychainNetworkType", a1[6], &v103);
          if (v31)
          {
            v2 = v31;
            if (v31 != -6727)
            {
              goto LABEL_276;
            }

            v34 = v103;
          }

          else
          {
            v34 = v103;
            if (!v103)
            {
              goto LABEL_569;
            }
          }

          v53 = v90;
          if (!v90 || !v34 || (v34 = CFStringCompare(v34, v90, 0)) != 0)
          {
            v54 = sub_23EC0F77C(v34, v53, v32, v33);
            v55 = a1[16];
            if (v54)
            {
              if (sub_23EBEBC34(v55, v91, 0))
              {
                v8 = sub_23EBEE8B0(a1[16], *a1, 0, 0, 0, 0, &DeepCopy);
                if (v8)
                {
                  goto LABEL_275;
                }

                if (DeepCopy)
                {
                  v2 = sub_23EBBCA7C(a1, DeepCopy);
                  if (DeepCopy)
                  {
                    CFRelease(DeepCopy);
                    DeepCopy = 0;
                  }

                  if (v2)
                  {
                    goto LABEL_276;
                  }
                }
              }

              v56 = (v90 ? v90 : v103);
              v2 = sub_23EBEE390(a1[16], a1[6], v56, 0, 1);
              if (v2)
              {
                goto LABEL_276;
              }

              if (v103)
              {
                CFRelease(v103);
                v103 = 0;
              }

              v8 = sub_23EBECA80(a1[16], @"keychainNetworkType", a1[6], &v103);
              if (v8)
              {
                goto LABEL_275;
              }
            }

            else
            {
              v2 = sub_23EBECE2C(v55, @"keychainNetworkType", v91, &v103);
              if (v2)
              {
                goto LABEL_276;
              }
            }

            if (!v103)
            {
              goto LABEL_569;
            }

            v8 = sub_23EBB3B84(a1[1], v107, v103);
            if (v8)
            {
              goto LABEL_275;
            }

            if (v103)
            {
              CFRelease(v103);
              v103 = 0;
            }
          }
        }

        if (!sub_23EB6A30C(*a1))
        {
          goto LABEL_266;
        }

        LODWORD(v105[0]) = 0;
        v8 = sub_23EBB4DE4(a1[1], 1937327724);
        if (v8)
        {
          goto LABEL_275;
        }

        v8 = sub_23EBB3F7C(a1[1], 1937327724, v105);
        if (v8)
        {
          goto LABEL_275;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "target base systemFlags: 0x%X\n", LODWORD(v105[0]));
        }

        if ((v105[0] & 0x80) != 0)
        {
          goto LABEL_266;
        }

        v14 = sub_23EBC4054(a1);
        v2 = v14;
        if (!(v14 == -6757 ? 0 : v14))
        {
          goto LABEL_266;
        }

        goto LABEL_276;
      case 4:
        v107[0] = 0;
        if (a1[13])
        {
          v8 = sub_23EBEE8B0(a1[16], *a1, 0, 0, 0, 0, &DeepCopy);
          if (v8)
          {
            goto LABEL_275;
          }

          if (DeepCopy)
          {
            v2 = sub_23EBBCA7C(a1, DeepCopy);
            if (DeepCopy)
            {
              CFRelease(DeepCopy);
              DeepCopy = 0;
            }

            if (v2)
            {
              goto LABEL_276;
            }
          }

          sub_23EB6FF14(a1[13], v107, "%ks", "path");
          if (v8)
          {
            goto LABEL_275;
          }

          v10 = v107[0];
          if (v107[0])
          {
            v11 = a1[1];
            v12 = 1;
LABEL_115:
            v2 = sub_23EBB1108(v11, v10, v12);
            if (!v2)
            {
              goto LABEL_266;
            }

            goto LABEL_276;
          }

LABEL_569:
          v2 = 4294960568;
          goto LABEL_276;
        }

LABEL_451:
        v2 = 4294960591;
        goto LABEL_276;
      case 3:
        LODWORD(v106[0]) = 0;
        v8 = sub_23EBEE8B0(a1[16], *a1, 0, 0, 0, 0, &DeepCopy);
        if (v8)
        {
          goto LABEL_275;
        }

        if (DeepCopy)
        {
          v2 = sub_23EBBCA7C(a1, DeepCopy);
          if (DeepCopy)
          {
            CFRelease(DeepCopy);
            DeepCopy = 0;
          }

          if (v2)
          {
            goto LABEL_276;
          }
        }

        v8 = sub_23EBB3F7C(a1[1], 1937327724, v106);
        if (v8)
        {
          goto LABEL_275;
        }

        if ((BYTE2(v106[0]) & 2) != 0)
        {
          v8 = sub_23EBB4DE4(a1[1], 1349676902);
          if (!v8)
          {
            v8 = sub_23EBB6418(a1[1]);
            if (!v8)
            {
              goto LABEL_266;
            }
          }

          goto LABEL_275;
        }

        v107[0] = 0;
        v9 = a1[13];
        if (v9)
        {
          sub_23EB6FF14(v9, v107, "%ks", "path");
          if (v8)
          {
            goto LABEL_275;
          }

          v10 = v107[0];
          if (v107[0])
          {
            v11 = a1[1];
            v12 = 0;
            goto LABEL_115;
          }

          goto LABEL_569;
        }

        goto LABEL_451;
    }
  }

  if (v7 < 6)
  {
    goto LABEL_266;
  }

  v17 = (v7 - 9) < 4 && *(a1 + 36) == 1634561902;
  if (!a1[2])
  {
    goto LABEL_451;
  }

  if (!a1[4] || v17)
  {
    if (v7 == 12)
    {
      goto LABEL_128;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Read source settings");
    }

    v35 = sub_23EB6AE14(a1[2]);
    if (!v35)
    {
      goto LABEL_451;
    }

    v36 = v35;
    v8 = sub_23EBEE8B0(a1[16], a1[2], 0, 0, 1, 0, &DeepCopy);
    if (v8)
    {
      goto LABEL_275;
    }

    if (DeepCopy)
    {
      CFRelease(a1[2]);
      a1[2] = DeepCopy;
      DeepCopy = 0;
    }

    sub_23EBEB0B0(a1[16], 18, 0, v36);
    v8 = sub_23EBC43AC(a1, v17);
    if (v8)
    {
      goto LABEL_275;
    }

    v37 = a1[3];
    if (v37)
    {
      v8 = sub_23EBB4220(v37, &v100);
      if (v8)
      {
        goto LABEL_275;
      }

      if (!v100)
      {
        goto LABEL_569;
      }

      if (sub_23EBB4248(a1[3], 1231975492))
      {
        v38 = sub_23EBB3F30(a1[3], 1651721294, &v89);
        if (v38 || !v89)
        {
LABEL_221:
          sub_23EBEB0B0(a1[16], 19, v38, v36);
          a1[4] = v100;
          v100 = 0;
          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Read source settings");
          }

LABEL_128:
          v7 = *(a1 + 18);
          if (v17)
          {
            v88 = 0;
            if (v7 == 12)
            {
              if (sub_23EB6B5A0(a1[2]))
              {
                if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                {
                  sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "source base is unconfigurable, so found WAN link in bonjour record\n");
                }

                v88 = 512;
              }
            }

            else
            {
              v8 = sub_23EBB4DE4(a1[3], 1937327724);
              if (v8)
              {
                goto LABEL_275;
              }

              v8 = sub_23EBB3F7C(a1[3], 1937327724, &v88);
              if (v8)
              {
                goto LABEL_275;
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "source base systemFlags: 0x%X\n", v88);
              }
            }

            if ((v88 & 0x200) != 0)
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Prompting for Swap Cabling");
              }

              v8 = sub_23EBC44E8(a1);
              if (v8 == -6757)
              {
                v2 = 0;
              }

              else
              {
                v2 = v8;
              }

              if (v2 == -6769 || v2 == -6723)
              {
                goto LABEL_276;
              }

              if (v2)
              {
                goto LABEL_275;
              }

              v44 = a1[3];
              if (v44)
              {
                sub_23EBB0D6C(v44);
                a1[3] = 0;
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Prompting for Swap Cabling");
              }

              v18 = *(a1 + 18);
              if (v18 != 12)
              {
LABEL_138:
                if ((v18 - 10) >= 2)
                {
                  if (v18 != 12 || !a1[5])
                  {
                    goto LABEL_264;
                  }

                  goto LABEL_451;
                }

                sub_23EB6FF14(a1[4], &DeepCopy, "%kC", 1466517097);
                if (v8)
                {
                  goto LABEL_275;
                }

                if (!DeepCopy)
                {
                  goto LABEL_569;
                }

                v19 = sub_23EB6C254(DeepCopy, 1);
                DeepCopy = 0;
                v20 = *(a1 + 18);
                if (v20 == 11)
                {
                  if (a1[5])
                  {
                    goto LABEL_451;
                  }

                  v73 = *MEMORY[0x277CBECE8];
                  v74 = sub_23EBB6A4C(v107, 0x15uLL, -1, 1651723853);
                  v75 = sub_23EBB6A4C(v106, 0x15uLL, -1, 1918976833);
                  v76 = *MEMORY[0x277CBED28];
                  v77 = sub_23EBB6A4C(v105, 0x15uLL, v19, 1918981955);
                  if (v19 == -1)
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v78 = v76;
                  }

                  v8 = sub_23EB6F348(v73, &DeepCopy, "{%ks=%i%ks=%O%ks=%O%kC=%i}", v74, 20, v75, v76, v77, v78, 1651724877, 3);
                }

                else
                {
                  if (v20 != 10)
                  {
                    goto LABEL_264;
                  }

                  v87 = 0;
                  if (a1[5])
                  {
                    goto LABEL_451;
                  }

                  sub_23EB6FF14(a1[4], &v87, "%kC", 1717920116);
                  if (v8)
                  {
                    goto LABEL_275;
                  }

                  if (!v87)
                  {
                    goto LABEL_569;
                  }

                  v21 = sub_23EBEF2E4(v87, 1884509249);
                  v86 = *MEMORY[0x277CBECE8];
                  v22 = sub_23EBB6A4C(v107, 0x15uLL, -1, 1651723853);
                  v23 = sub_23EBB6A4C(v106, 0x15uLL, -1, 1651724357);
                  v24 = *MEMORY[0x277CBED28];
                  if (v21)
                  {
                    v25 = *MEMORY[0x277CBED28];
                  }

                  else
                  {
                    v25 = 0;
                  }

                  v26 = sub_23EBB6A4C(v105, 0x15uLL, -1, 1918976833);
                  v27 = sub_23EBB6A4C(v104, 0x15uLL, v19, 1918981955);
                  if (v19 == -1)
                  {
                    v28 = 0;
                  }

                  else
                  {
                    v28 = v24;
                  }

                  v8 = sub_23EB6F348(v86, &DeepCopy, "{%ks=%i%ks=%O%ks=%O%ks=%O%kC=%i}", v22, 1, v23, v25, v26, v24, v27, v28, 1651724877, 3);
                }

                if (v8)
                {
                  goto LABEL_275;
                }

                if (DeepCopy)
                {
                  a1[5] = DeepCopy;
                  DeepCopy = 0;
                  goto LABEL_264;
                }

                goto LABEL_569;
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Verify connection");
              }

              DeepCopy = 0;
              v45 = sub_23EBC3A64(a1, a1[1], *a1, &DeepCopy);
              v2 = v45;
              if (v45 > -6724)
              {
                if (v45)
                {
                  goto LABEL_276;
                }

                if (DeepCopy)
                {
                  v2 = sub_23EBBCA7C(a1, DeepCopy);
                  if (DeepCopy)
                  {
                    CFRelease(DeepCopy);
                    DeepCopy = 0;
                  }

                  if (v2)
                  {
                    goto LABEL_276;
                  }
                }
              }

              else
              {
                if (v45 != -6735)
                {
                  goto LABEL_276;
                }

                if (dword_27E3827A8 > 800)
                {
                  goto LABEL_137;
                }

                if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
                {
                  sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "***No system status or monitoring support\n");
                }
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Verify connection");
              }
            }

LABEL_137:
            v18 = *(a1 + 18);
            goto LABEL_138;
          }

          goto LABEL_162;
        }

        if (CFStringGetLength(v89))
        {
          v85 = v89;
          v8 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v100, "%kC=%O", v39, v40, v41, v42, v43, 0x49444E6Du);
          if (v8)
          {
            goto LABEL_275;
          }
        }
      }

      v38 = 0;
      goto LABEL_221;
    }

LABEL_225:
    v2 = 4294960569;
    goto LABEL_276;
  }

LABEL_162:
  if (v7 != 6)
  {
    goto LABEL_265;
  }

  LOBYTE(v88) = 0;
  v106[0] = 0;
  v105[0] = 0;
  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Verifying DWDS on Source\n");
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Verifying DWDS on Source");
    }
  }

  sub_23EB6FF14(a1[4], v106, "%kC", 1466517097, v85);
  if (v8)
  {
    goto LABEL_275;
  }

  if (!v106[0])
  {
    goto LABEL_569;
  }

  sub_23EBEF00C(v106[0], 0, 0, 0, &v88);
  if (v8)
  {
    goto LABEL_275;
  }

  if (!v88)
  {
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Enabling DWDS on source\n");
    }

    if (a1[5])
    {
      goto LABEL_451;
    }

    sub_23EBB6A4C(v107, 0x15uLL, -1, 1683440723);
    v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &DeepCopy, "{%ks=%b}", v107, 1);
    if (v8)
    {
      goto LABEL_275;
    }

    if (!DeepCopy)
    {
      goto LABEL_569;
    }

    a1[5] = DeepCopy;
    DeepCopy = 0;
  }

  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Verifying DWDS on Source");
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Verifying Timed Access on Source\n");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Verifying Timed Access on Source");
      }
    }
  }

  sub_23EB6C388(v106[0], 0, @"acEn", v105);
  if (v30 || !CFBooleanGetValue(v105[0]))
  {
    goto LABEL_188;
  }

  v107[0] = 0;
  sub_23EB6FF14(a1[4], v107, "%kC", 1717920116);
  v2 = v57;
  if (v57)
  {
    goto LABEL_276;
  }

  if (!v107[0])
  {
    goto LABEL_569;
  }

  if (!sub_23EBEF2E4(v107[0], 1950434124))
  {
    goto LABEL_188;
  }

  v104[0] = 0;
  v87 = 0;
  sub_23EB6FF14(a1[4], v104, "%kC", 1950434124);
  if (v8)
  {
    goto LABEL_275;
  }

  if (!v104[0])
  {
    goto LABEL_569;
  }

  sub_23EBAFEF4(v104[0], @"00:00:00:00:00:00", &v87);
  if (v58)
  {
    goto LABEL_188;
  }

  if (!v87)
  {
    goto LABEL_569;
  }

  v59 = sub_23EBB0414(v87);
  if (v87)
  {
    CFRelease(v87);
    v87 = 0;
  }

  if (v59)
  {
    goto LABEL_188;
  }

  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Source default ACL is not Full Access\n");
  }

  v60 = *MEMORY[0x277CBECE8];
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v104[0], 2uLL);
  if (!DeepCopy)
  {
    goto LABEL_569;
  }

  v61 = 0;
  v62 = 1;
  do
  {
    while (1)
    {
      v63 = v61;
      if (sub_23EBB3F30(a1[1], *&aM2sbm5sb[4 * v61], &v103))
      {
        v69 = 1;
      }

      else
      {
        v69 = v103 == 0;
      }

      if (v69)
      {
        goto LABEL_502;
      }

      sub_23EBAFEF4(v104[0], v103, &v87);
      if (v70)
      {
        v2 = v70;
        if (v70 != -6727)
        {
          goto LABEL_276;
        }

        goto LABEL_505;
      }

      if (!v87)
      {
        goto LABEL_569;
      }

      v71 = sub_23EBB0414(v87);
      if (v87)
      {
        CFRelease(v87);
        v87 = 0;
      }

      if (v71)
      {
        break;
      }

LABEL_505:
      sub_23EBB0050(DeepCopy, @"days=mtwtfss;t=0-0", -2, v98, v103);
      v2 = v72;
      if (v103)
      {
        CFRelease(v103);
        v103 = 0;
      }

      if (v2)
      {
        goto LABEL_276;
      }

      v62 = 0;
      v61 = 1;
      if (v63)
      {
        goto LABEL_562;
      }
    }

    if (v103)
    {
      CFRelease(v103);
      v103 = 0;
    }

LABEL_502:
    v61 = 1;
  }

  while (!v63);
  if (v62)
  {
    if (DeepCopy)
    {
      CFRelease(DeepCopy);
      DeepCopy = 0;
    }

    goto LABEL_188;
  }

LABEL_562:
  Mutable = a1[5];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(v60, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a1[5] = Mutable;
    if (!Mutable)
    {
      goto LABEL_569;
    }
  }

  v8 = sub_23EB6FDFC(v60, Mutable, "%kC=%O", v64, v65, v66, v67, v68, 0x7441434Cu);
  if (v8)
  {
    goto LABEL_275;
  }

  v85 = DeepCopy;
  v2 = sub_23EB6FDFC(v60, a1[4], "%kC=%O", v80, v81, v82, v83, v84, 0x7441434Cu);
  if (DeepCopy)
  {
    CFRelease(DeepCopy);
    DeepCopy = 0;
  }

  if (v2)
  {
    goto LABEL_276;
  }

LABEL_188:
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Verifying Timed Acces on Source");
  }

LABEL_264:
  v7 = *(a1 + 18);
LABEL_265:
  if (v7 != 12)
  {
    v8 = sub_23EBC4878(a1, a1[4]);
    if (v8)
    {
      goto LABEL_275;
    }

    if (*(a1 + 36) != 1634561902)
    {
      goto LABEL_266;
    }

    v48 = *(a1 + 18);
    if (v48 > 0xB || ((1 << v48) & 0xC40) == 0 || !a1[5])
    {
      goto LABEL_266;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Configurating source");
    }

    v8 = sub_23EBEE8B0(a1[16], a1[2], 0, 0, 1, 0, &DeepCopy);
    if (v8)
    {
      goto LABEL_275;
    }

    if (DeepCopy)
    {
      CFRelease(a1[2]);
      a1[2] = DeepCopy;
      DeepCopy = 0;
    }

    v8 = sub_23EBC4FC8(a1, a1[5], &v92);
    if (v8)
    {
      goto LABEL_275;
    }

    v49 = a1[5];
    if (v49)
    {
      CFRelease(v49);
      a1[5] = 0;
    }

    if (dword_27E3827A8 > 800 || dword_27E3827A8 == -1 && !sub_23EB74AC8(&dword_27E3827A8, 0x320u))
    {
      goto LABEL_266;
    }

    v29 = "Configurating source";
    goto LABEL_161;
  }

LABEL_266:
  v8 = sub_23EBC553C(a1);
  if (v8)
  {
    goto LABEL_275;
  }

LABEL_267:
  sub_23EBEB0B0(a1[16], 26, 0, 0);
  if (!sub_23EB6B0C8(*a1))
  {
LABEL_270:
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Rejoining target network if necessary");
    }

    v8 = sub_23EBEE8B0(a1[16], *a1, 0, 0, 0, 0, &DeepCopy);
    if (v8)
    {
      goto LABEL_275;
    }

    if (DeepCopy)
    {
      v2 = sub_23EBBCA7C(a1, DeepCopy);
      if (DeepCopy)
      {
        CFRelease(DeepCopy);
        DeepCopy = 0;
      }

      if (v2)
      {
        goto LABEL_276;
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Rejoining target network if necessary");
    }

    v8 = sub_23EBC2760(a1, &v97, &v96, &v95, &v94, &v93);
    if (v8)
    {
      goto LABEL_275;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "finalNetworkName: %@ goingAwayNetwork: %@ networkMaytransition: %d deviceMayLoseTouch: %d \n", v97, v95, v94, v93);
    }

    sub_23EBEB0B0(a1[16], 20, 0, v98);
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Write target settings");
    }

    v2 = sub_23EBB23B8(a1[1], &v92 + 1, &cf);
    if (HIBYTE(v92))
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "Had minimal restart with interruptions: %@\n", cf, v85);
      }

      v46 = cf;
      v108.length = CFArrayGetCount(cf);
      v108.location = 0;
      v47 = CFArrayContainsValue(v46, v108, @"wifi");
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      v47 = 0;
    }

    if (v2)
    {
      goto LABEL_276;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Write target settings");
    }

    sub_23EBEB0B0(a1[16], 21, 0, v98);
    v2 = sub_23EBB39F8(a1[1]);
    sub_23EBEB0B0(a1[16], 36, v2, v98);
    if (*(a1 + 18) != 9)
    {
      if (*(a1 + 36) != 1634561902)
      {
        goto LABEL_451;
      }

      v2 = sub_23EBEB3C0(a1[16], 1u);
      if (v2)
      {
        goto LABEL_276;
      }
    }

    if (v95 && (!HIBYTE(v92) || v47))
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Disassociating");
      }

      v8 = sub_23EBEBD2C(a1[16]);
      if (v8)
      {
        goto LABEL_275;
      }

      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Disassociating");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Clearing Scan Cache");
        }
      }

      v8 = sub_23EBEC3FC(a1[16]);
      if (v8)
      {
        goto LABEL_275;
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Clearing Scan Cache");
      }

      v2 = 0;
    }

    if (*(a1 + 18) == 9)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Restoring source to defaults");
      }

      v50 = sub_23EBC5B5C(a1, a1[2], a1[3]);
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "restoreSourceErr: %#m \n", v50);
      }

      if (!v50)
      {
        v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v99, "{%kO=%O}", @"kBSConfigurationSetupComplete_RemovedBase", a1[2]);
        if (v8)
        {
          goto LABEL_275;
        }

        if (!v99)
        {
          goto LABEL_569;
        }
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Restoring source to defaults");
      }

      if (*(a1 + 36) != 1634561902)
      {
        goto LABEL_451;
      }

      v2 = sub_23EBEB3C0(a1[16], 1u);
      if (v2)
      {
        goto LABEL_276;
      }
    }

    if (v97)
    {
      if (v94 && (!HIBYTE(v92) || v47))
      {
        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Network transition pause");
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "pausing for: %d secs\n", 40);
          }
        }

        v8 = sub_23EBEC174(a1[16], 40);
        if (v8)
        {
          goto LABEL_275;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Network transition pause");
        }

        v2 = 0;
      }

      if (!sub_23EBEBC34(a1[16], v97, 0))
      {
        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Joining Network");
        }

        v8 = sub_23EBEE184(a1[16], v97, v96, 1, 0);
        if (v8)
        {
          goto LABEL_275;
        }

        if (dword_27E3827A8 > 800)
        {
          v2 = 0;
          goto LABEL_369;
        }

        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Joining Network");
        }

        v2 = 0;
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Determining if base station is remote");
    }

LABEL_369:
    sub_23EB6A6F0(*a1);
    v52 = v51;
    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      if (v52)
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "base station is remote\n");
      }

      else
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "base station is not remote\n");
      }
    }

    if (v52 == 1)
    {
      goto LABEL_276;
    }

    if (dword_27E3827A8 <= 800)
    {
      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Determining if base station is remote");
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Final waiting for target base");
      }
    }

    if (!sub_23EB6B064(*a1))
    {
      if (dword_27E3827A8 <= 800)
      {
        if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "No bonjour seed pause");
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "pausing for: %d secs\n", 8);
        }
      }

      v8 = sub_23EBEC174(a1[16], 8);
      if (v8)
      {
        goto LABEL_275;
      }

      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "No bonjour seed pause");
      }
    }

    v8 = sub_23EBED690(a1[16], v98, *a1, 1, 120, &DeepCopy);
    if (v8)
    {
      goto LABEL_275;
    }

    if (!DeepCopy)
    {
      goto LABEL_569;
    }

    v2 = sub_23EBC2A30(a1, DeepCopy);
    if (DeepCopy)
    {
      CFRelease(DeepCopy);
      DeepCopy = 0;
    }

    if (v2)
    {
      goto LABEL_276;
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Final waiting for target base");
    }

    if (v92)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Final waiting for source base");
      }

      v8 = sub_23EBED690(a1[16], 0, a1[2], 0, 120, &DeepCopy);
      if (v8)
      {
        goto LABEL_275;
      }

      if (!DeepCopy)
      {
        goto LABEL_569;
      }

      CFRelease(a1[2]);
      a1[2] = DeepCopy;
      DeepCopy = 0;
      if (dword_27E3827A8 > 800)
      {
LABEL_409:
        v8 = sub_23EBBE61C(a1, 0, *a1, a1[1], 0, 0, 0);
        if (v8)
        {
          goto LABEL_275;
        }

        if (dword_27E3827A8 <= 800)
        {
          if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Rereading settings after restart");
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Checking if monitoring needs restored");
          }
        }

        v8 = sub_23EBC2B48(a1);
        if (v8)
        {
          goto LABEL_275;
        }

        if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
        {
          sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Checking if monitoring needs restored");
        }

        v2 = 0;
        goto LABEL_276;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t---------- Config phase: %s ----------\n\n", "Final waiting for source base");
      }
    }

    if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_WriteSettingsSync(void *)", 800, "\n\n\t\t          \t\t++++++++++ Config phase: %s ++++++++++\n\n", "Rereading settings after restart");
    }

    goto LABEL_409;
  }

  v8 = sub_23EBAE8B8(a1[1], 1);
  if (!v8)
  {
    sub_23EBAE828(a1[1]);
    goto LABEL_270;
  }

LABEL_275:
  v2 = v8;
LABEL_276:
  sub_23EBEE150(a1[16]);
LABEL_34:
  sub_23EBEA18C(a1[16]);
LABEL_35:
  *(a1 + 90) = 0;
  sub_23EBB7814(a1, 0);
  sub_23EBEAB18(a1[16], 15, v2, v99);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (DeepCopy)
  {
    CFRelease(DeepCopy);
    DeepCopy = 0;
  }

  if (v100)
  {
    CFRelease(v100);
    v100 = 0;
  }

  if (v99)
  {
    CFRelease(v99);
    v99 = 0;
  }

LABEL_43:
  if (v103)
  {
    CFRelease(v103);
    v103 = 0;
  }

  if (v98)
  {
    CFRelease(v98);
    v98 = 0;
  }

  if (v97)
  {
    CFRelease(v97);
    v97 = 0;
  }

  if (v96)
  {
    CFRelease(v96);
    v96 = 0;
  }

  if (v95)
  {
    CFRelease(v95);
    v95 = 0;
  }

  if (v91)
  {
    CFRelease(v91);
    v91 = 0;
  }

  if (v90)
  {
    CFRelease(v90);
    v90 = 0;
  }

  if (v89)
  {
    CFRelease(v89);
  }
}

uint64_t sub_23EBC220C(dispatch_group_t *context, int a2, int a3)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus BSConfiguration_SetMonitorForChanges(BSConfigurationContextRef, Boolean, Boolean)", 800, " \n");
  }

  if (!context)
  {
    return 4294960591;
  }

  if (*(context + 88) != a2)
  {
    *(context + 88) = a2;
    if (!a3)
    {
      if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CheckMonitoringStateAsync(BSConfigurationContextRef)", 800, " \n");
      }

      dispatch_group_async_f(context[15], context[14], context, sub_23EBC6C4C);
    }
  }

  return 0;
}

uint64_t sub_23EBC2310(uint64_t a1, BOOL *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    *a2 = 0;
    result = *(a1 + 8);
    if (result)
    {
      v5 = sub_23EBB63A0(result);
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

void sub_23EBC2368(_DWORD *a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus __AsyncContext_Release(__AsyncContextRef)", 800, " \n");
  }

  if (a1[4] == 1634561902)
  {
    a1[4] = 1095585614;
    *a1 = 0;
    v2 = *(a1 + 1);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void sub_23EBC2424(_DWORD *a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_HandleBSSettingChangedSync(void *)", 800, " \n");
  }

  v6 = 0;
  cf2 = 0;
  cf = 0;
  if (a1)
  {
    v10 = 0;
    v9 = 0;
    if (a1[4] != 1634561902)
    {
      goto LABEL_19;
    }

    v2 = *a1;
    if (!*a1)
    {
      goto LABEL_19;
    }

    if (*(v2 + 144) != 1634561902 || !*(v2 + 8) || (v3 = *(a1 + 1)) == 0)
    {
      v5 = 4294960591;
      goto LABEL_14;
    }

    sub_23EB6FF14(v3, &v10, "%kO:int", @"kAsyncParam_Refresh_BSSetting");
    if (v4)
    {
      goto LABEL_12;
    }

    if (!v10)
    {
      v5 = 4294960568;
      goto LABEL_14;
    }

    sub_23EB6FF14(*(a1 + 1), &v9, "%kO:BOOL", @"kAsyncParam_Refresh_Notify");
    if (v4)
    {
      goto LABEL_12;
    }

    v4 = sub_23EBB3F30(*(v2 + 8), v10, &cf);
    if (v4)
    {
      goto LABEL_12;
    }

    v4 = sub_23EBB4DE4(*(v2 + 8), v10);
    if (v4)
    {
      goto LABEL_12;
    }

    cf2 = 0;
    v4 = sub_23EBB3F30(*(v2 + 8), v10, &cf2);
    if (v4)
    {
      goto LABEL_12;
    }

    if (v9 && cf && cf2 && CFEqual(cf, cf2))
    {
      v9 = 0;
      if (dword_27E3827A8 > 800)
      {
        goto LABEL_19;
      }

      if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
      {
        sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_HandleBSSettingChangedSync(void *)", 800, "Changed notify to false because %C if equal \n", v10);
      }
    }

    if (v9)
    {
      if (cf2)
      {
        v4 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v6, "{%kO=%C%kO=%O}", @"kBSConfigurationRefreshBSSettingKey_BSSetting", v10, @"kBSConfigurationRefreshBSSettingKey_Value", cf2);
        if (!v4)
        {
          if (v6)
          {
            v5 = 0;
          }

          else
          {
            v5 = 4294960568;
          }

LABEL_14:
          if (v9)
          {
            sub_23EBEAB18(*(v2 + 128), 34, v5, v6);
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_HandleBSSettingChangedSync(void *)", 800, "BSSetting: %C \n", v10);
            }
          }

          goto LABEL_19;
        }

LABEL_12:
        v5 = v4;
        goto LABEL_14;
      }

      v9 = 0;
    }

LABEL_19:
    sub_23EBC2368(a1);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (cf2)
    {
      CFRelease(cf2);
      cf2 = 0;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

uint64_t sub_23EBC2700(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (sub_23EBB63A0(v2))
    {
      sub_23EBB1474(*(a1 + 8));
    }

    v3 = 0;
  }

  else
  {
    v3 = 4294960591;
  }

  sub_23EBEB0B0(*(a1 + 128), 33, v3, @"stopping");
  return v3;
}

uint64_t sub_23EBC2760(uint64_t a1, CFTypeRef *a2, void *a3, void *a4, BOOL *a5, BOOL *a6)
{
  cf = 0;
  theString2 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  if (*(a1 + 144) != 1634561902)
  {
    v7 = 0;
    v8 = 4294960578;
    goto LABEL_12;
  }

  v7 = 0;
  v8 = 4294960591;
  if (a2 && a3 && a4 && a5)
  {
    sub_23EB6A6F0(*a1);
    if (v14 || sub_23EB6A560(*a1))
    {
      v15 = 0;
      v16 = 0;
      v7 = 0;
LABEL_9:
      v8 = 0;
      v17 = v29;
      *a2 = cf;
      v29 = 0;
      cf = 0;
      *a3 = v17;
      *a4 = v7;
      *a5 = v16;
      *a6 = v15;
LABEL_10:
      v7 = 0;
      goto LABEL_12;
    }

    v19 = sub_23EBEBA44(*(a1 + 128), &v28, &v27);
    v7 = 0;
    if (v19 == -6727)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_9;
    }

    v8 = v19;
    if (!v19)
    {
      v7 = 0;
      v8 = 4294960568;
      if (v28)
      {
        if (v27)
        {
          v20 = sub_23EBC2CF4(a1, &cf, &v29, &theString2);
          if (v20)
          {
            v8 = v20;
            goto LABEL_10;
          }

          v21 = sub_23EB6B424(*a1, v27);
          if (v21)
          {
            v7 = v28;
            CFRetain(v28);
          }

          else
          {
            v7 = 0;
          }

          if (!cf)
          {
            v16 = 0;
            v15 = v21 != 0;
            goto LABEL_9;
          }

          v22 = CFStringCompare(v28, cf, 0);
          v15 = 0;
          v16 = v22 == kCFCompareEqualTo;
          if (v21 || v22 == kCFCompareEqualTo)
          {
            goto LABEL_9;
          }

          v23 = CFStringCompare(v28, theString2, 0);
          v24 = sub_23EB6A394(*a1, v28);
          v15 = 0;
          if (v23 == kCFCompareEqualTo || !v24)
          {
            v16 = 0;
            goto LABEL_9;
          }

          v26 = 0;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v29)
          {
            CFRelease(v29);
            v29 = 0;
          }

          v25 = v28;
          cf = v28;
          v28 = 0;
          v8 = sub_23EBEC4F4(*(a1 + 128), v25, 3, &v26);
          if (!v8)
          {
            if (!v26)
            {
LABEL_52:
              v8 = 4294960568;
              goto LABEL_12;
            }

            v8 = sub_23EBECA80(*(a1 + 128), @"keychainNetworkType", v26, &v29);
            if (v26)
            {
              CFRelease(v26);
            }

            if (v8 == -6727)
            {
              goto LABEL_49;
            }

            if (!v8)
            {
              if (v29)
              {
LABEL_49:
                v15 = 0;
                v16 = 1;
                goto LABEL_9;
              }

              goto LABEL_52;
            }
          }
        }
      }
    }
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v29)
  {
    CFRelease(v29);
    v29 = 0;
  }

  if (v28)
  {
    CFRelease(v28);
    v28 = 0;
  }

  if (v27)
  {
    CFRelease(v27);
    v27 = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t sub_23EBC2A30(uint64_t a1, const __CFString *a2)
{
  v10 = 0;
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 4294960591;
    goto LABEL_7;
  }

  v5 = sub_23EBB3F30(v3, 1937330263, &cf);
  if (v5)
  {
LABEL_4:
    v6 = v5;
    goto LABEL_7;
  }

  if (cf)
  {
    v5 = sub_23EBB3F30(*(a1 + 8), 1651721296, &v10);
    if (v5)
    {
      goto LABEL_4;
    }

    if (v10)
    {
      if (CFStringGetLength(cf) && CFStringCompare(v10, cf, 0))
      {
        p_cf = &cf;
      }

      else
      {
        p_cf = &v10;
      }

      v9 = *p_cf;
      v5 = sub_23EBBCA7C(a1, a2);
      if (!v5)
      {
        v5 = sub_23EBB3DBC(*(a1 + 8), 1651721296, v9);
      }

      goto LABEL_4;
    }

    v6 = 4294960568;
LABEL_7:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_9;
  }

  v6 = 4294960568;
LABEL_9:
  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

uint64_t sub_23EBC2B48(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CheckMonitoringStateSync(BSConfigurationContextRef)", 800, " \n");
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 4294960591;
  }

  v6 = 0;
  result = sub_23EBB3A64(v2, &v6);
  if (!result)
  {
    if (!v6)
    {
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = v4 && sub_23EBB63A0(v4);
    if (*(a1 + 88) == v5)
    {
      return 0;
    }

    if (*(a1 + 88))
    {
      result = sub_23EBC2E2C(a1);
      if (!result)
      {
        result = sub_23EBC2FC4(a1, 1937331060, 1);
        if (!result)
        {
          return 0;
        }
      }
    }

    else
    {
      result = sub_23EBC2700(a1);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23EBC2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 144) == 1634561902)
  {
    v8[3] = v4;
    v8[4] = v5;
    v8[0] = 0;
    if (!sub_23EB6F348(*MEMORY[0x277CBECE8], v8, "{%kO=%i%kO=%O}", @"kBSConfigurationTaskComplete_TaskState", a2, @"kBSConfigurationTaskComplete_DiskTaskDict", a3))
    {
      if (v8[0])
      {
        sub_23EBEAB18(*(a1 + 128), 30, a4, v8[0]);
        if (v8[0])
        {
          CFRelease(v8[0]);
        }
      }
    }
  }
}

uint64_t sub_23EBC2CF4(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 144) != 1634561902)
  {
    return 4294960578;
  }

  result = 4294960591;
  if (a2 && a3)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v10 = sub_23EBB6604(*(a1 + 8));
      sub_23EBB6A4C(v13, 0x15uLL, v10, 1918979693);
      result = sub_23EBB3E20(v8, v13, a2);
      if (!result)
      {
        v11 = sub_23EBB6604(v8);
        sub_23EBB6A4C(v13, 0x15uLL, v11, 1918979693);
        result = sub_23EBB3EA8(v8, v13, a4);
        if (!result)
        {
          v12 = sub_23EBB6604(v8);
          sub_23EBB6A4C(v13, 0x15uLL, v12, 1651725131);
          return sub_23EBB3E20(v8, v13, a3);
        }
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBC2E2C(uint64_t a1)
{
  v5 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    if (sub_23EBB4248(v2, 1095593838) && !sub_23EBB63A0(*(a1 + 8)))
    {
      v3 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v5, "{%ks={%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%kC={}%ks={}%kC={}%kC={}%kC={}%kC={}}}", "filters", 1819240301, 2004050793, 1684362100, 1684099956, 1684886388, 1937331060, 1298223988, 1886547538, 2002864464, 2002867021, 2002866753, 2002862897, 2002862898, 2002862916, 1918976872, "ACPRemoteBonjour", 1148808787, 1766026340, 1937006964, 1950434124);
      if (!v3)
      {
        if (v5)
        {
          v3 = sub_23EBB627C(*(a1 + 8), v5, sub_23EBC3114, a1);
        }

        else
        {
          v3 = 4294960568;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 4294960591;
  }

  sub_23EBEB0B0(*(a1 + 128), 33, v3, @"starting");
  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t sub_23EBC2FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_HandleBSSettingChangedAsync(BSConfigurationContextRef, BSSetting, Boolean)", 800, "inSetting: %C notify: %d \n", a2, a3);
  }

  v6 = 4294960591;
  if (a2)
  {
    if (*(a1 + 144) == 1634561902)
    {
      if (*(a1 + 120))
      {
        if (*(a1 + 112))
        {
          cf = 0;
          context = 0;
          v6 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%i%kO=%b}", @"kAsyncParam_Refresh_BSSetting", a2, @"kAsyncParam_Refresh_Notify", a3);
          if (!v6)
          {
            if (!cf)
            {
              return 0;
            }

            v6 = sub_23EBB7CA8(a1, cf, &context);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (!v6)
            {
              if (!context)
              {
                return 4294960568;
              }

              dispatch_group_async_f(*(a1 + 120), *(a1 + 112), context, sub_23EBC2424);
              return 0;
            }
          }
        }
      }
    }
  }

  return v6;
}

void sub_23EBC3114(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  theArray = 0;
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, " \n");
  }

  v26 = 0;
  v24 = 0;
  if (a3)
  {
    sub_23EBEAB18(*(a3 + 128), 135, a1, a2);
    v6 = sub_23EB6BD24(a2, &v24);
    if (!sub_23EBAF4FC("tSaMicswinrpmgoltSedtSadtSysPIawMSawARaw1Caw2CawDCawiFiWSnyDdlCitatsLCAtInrp", &theArray))
    {
      if (!theArray)
      {
        goto LABEL_42;
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v8 = Count;
        if (Count < 1)
        {
LABEL_21:
          if (v6)
          {
            cf = 0;
            sub_23EB6FF14(v6, 0, "%kC.%kO", v24, @"timeEstimate");
            if (v12 == -6727)
            {
              sub_23EBC3688(a3, v6, v24, &cf);
              if (!v13)
              {
                v22 = 0;
                sub_23EB6FF14(v6, &v22, "%kC", v24);
                if (v19 != -6727)
                {
                  if (v22)
                  {
                    v21 = cf;
                    sub_23EB6FDFC(*MEMORY[0x277CBECE8], v22, "%kO=%lli", v14, v15, v16, v17, v18, @"timeEstimate");
                  }
                }
              }
            }

            sub_23EBEAB18(*(a3 + 128), 32, a1, v6);
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, "eBSConfigurationProgressSelector_DiskTaskProgress diskTaskDict: %@\n", v6, v21);
            }

            if (sub_23EB6BE18(v6, &v24))
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, "eBSConfigurationProgressSelector_DiskTaskProgress *** STARTING \n");
              }

              if (*(a3 + 144) == 1634561902 && *(a3 + 80) != 6)
              {
                sub_23EBBBF6C(a3, v24);
                sub_23EBB9D84(a3, 6, v24, 1);
              }
            }

            else if (sub_23EB6BF64(v6, &v26))
            {
              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "void __ACPMonitoringForPropertiesCallback(OSStatus, CFDictionaryRef, void *)", 800, "eBSConfigurationProgressSelector_DiskTaskProgress *** COMPLETE \n");
              }

              v20 = *(a3 + 136);
              if (v20)
              {
                sub_23EC0F608(v20);
              }

              *(a3 + 136) = 0;
              sub_23EBB7814(a3, 0);
              sub_23EBC2B48(a3);
              sub_23EBC2C4C(a3, 6, v6, v26);
            }
          }
        }

        else
        {
          v9 = 0;
          while (1)
          {
            cf = 0;
            sub_23EB6FF14(theArray, &v24 + 4, "[*]:code", v9);
            if (v10 || !HIDWORD(v24))
            {
              break;
            }

            sub_23EB6FF14(a2, &cf, "%kC", HIDWORD(v24));
            if (v11 != -6727)
            {
              if (v11 || !cf)
              {
                break;
              }

              if (HIDWORD(v24) == 1819240301)
              {
                if (sub_23EBC3518(a3, cf))
                {
                  break;
                }
              }

              else if (sub_23EBC2FC4(a3, HIDWORD(v24), v6 == 0))
              {
                break;
              }
            }

            if (v8 == ++v9)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_42:
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_23EBC3518(uint64_t a1, const __CFString *cf)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_HandleLogMessageAsync(BSConfigurationContextRef, CFTypeRef)", 800, "inMessage: %@ \n", cf);
  }

  if (*(a1 + 144) != 1634561902)
  {
    return 4294960591;
  }

  if (!*(a1 + 8))
  {
    return 4294960591;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFStringGetTypeID())
  {
    return 4294960591;
  }

  if (CFStringFind(cf, @": Associated", 0).location == -1 && CFStringFind(cf, @": Rotated", 0).location == -1 && CFStringFind(cf, @": DHCPACK", 0).location == -1)
  {
    return 0;
  }

  result = sub_23EBC2FC4(a1, 1918980940, 1);
  if (!result)
  {
    v6 = 0;
    result = sub_23EBB4070(*(a1 + 8), 1918977107, &v6);
    if (!result)
    {
      if (v6)
      {
        return sub_23EBC2FC4(a1, 1684558668, 1);
      }
    }
  }

  return result;
}

void sub_23EBC3688(uint64_t a1, const __CFString *a2, uint64_t a3, unint64_t *a4)
{
  if (a4)
  {
    v15 = 0;
    v16 = 0;
    *a4 = 0;
    sub_23EB6FF14(a2, &v16, "%kC.%kO:int64", a3, @"bytesTotal");
    if (!v8)
    {
      sub_23EB6FF14(a2, &v15, "%kC.%kO:int64", a3, @"bytesDone");
      if (!v9)
      {
        v10 = v16;
        if (v16)
        {
          v13 = *(a1 + 136);
          v12 = (a1 + 136);
          v11 = v13;
          if (!v13)
          {
            if (sub_23EC0F5AC(v12))
            {
              return;
            }

            v11 = *v12;
            v10 = v16;
          }

          v14 = sub_23EC0F634(v11, v15, v10);
          if (v14)
          {
            *a4 = v14;
          }
        }
      }
    }
  }
}

uint64_t sub_23EBC3770(uint64_t result)
{
  v1 = result;
  if (dword_27E3827A8 <= 800)
  {
    if (dword_27E3827A8 != -1 || (result = sub_23EB74AC8(&dword_27E3827A8, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E3827A8, "void __BSConfiguration_CancelDiskTaskSync(void *)", 800, " \n");
    }
  }

  if (v1)
  {
    if (*(v1 + 144) == 1634561902)
    {
      result = *(v1 + 8);
      if (result)
      {
        v2 = *(v1 + 84);
        switch(v2)
        {
          case 1098015561:
            v3 = @"diskd.cancelArchiveDisk";
            break;
          case 1298753353:
            v3 = @"diskd.cancelMigrateDisk";
            break;
          case 1165123913:
            v3 = @"diskd.cancelEraseDisk";
            break;
          default:
            return result;
        }

        return sub_23EBB5E64(result, v3);
      }
    }
  }

  return result;
}

void sub_23EBC386C(uint64_t a1)
{
  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3827A8, "OSStatus _BSConfiguration_CheckForProperTaskState(BSConfigurationContextRef)", 800, " \n");
  }

  if (*(a1 + 144) == 1634561902)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (sub_23EBB4248(v2, 1400460148) && sub_23EBB427C(*(a1 + 8), 1415661904, 0) && *(a1 + 144) == 1634561902 && *(a1 + 80) != 6)
      {
        v3 = sub_23EBB4290(*(a1 + 8));
        if (v3)
        {
          v4 = v3;
          if (!sub_23EBBBF6C(a1, v3))
          {

            sub_23EBB9D84(a1, 6, v4, 0);
          }
        }
      }
    }
  }
}

void sub_23EBC3980(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v9 = 0;
  cf = 0;
  if (*(a1 + 144) == 1634561902)
  {
    v6 = sub_23EB6AE14(a2);
    if (v6)
    {
      v7 = v6;
      if (!sub_23EB6AB20(a2, &cf))
      {
        if (!cf)
        {
LABEL_6:
          if (v9)
          {
            CFRelease(v9);
          }

          return;
        }

        if (!sub_23EBB3F30(a3, 1651721296, &v9))
        {
          if (v9)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
            if (ValueAtIndex)
            {
              sub_23EBECC6C(*(a1 + 128), @"keychainBaseStationType", ValueAtIndex, v7, v9);
            }
          }
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_6;
  }
}

uint64_t sub_23EBC3A64(uint64_t a1, uint64_t a2, const __CFString *a3, CFTypeRef *a4)
{
  v4 = 4294960591;
  if (a4)
  {
    v5 = a3;
    if (a3)
    {
      if (a2 && *(a1 + 144) == 1634561902)
      {
        if (!sub_23EBB4248(a2, 1400460148) || !sub_23EBB4248(a2, 1095593838))
        {
          return 4294960561;
        }

        v26 = 0;
        v25 = 0;
        v23 = 0;
        cf = 0;
        *a4 = 0;
        v9 = sub_23EBB427C(a2, 2002865740, &v25);
        v10 = v25 || !v9;
        v11 = !v10;
        sub_23EBB427C(a2, 2002865737, &v25);
        v12 = v25;
        if (v11 || (v4 = 0, !v25))
        {
          v13 = sub_23EBEE8B0(*(a1 + 128), v5, 0, 0, 0, 0, &cf);
          if (v13)
          {
            return v13;
          }

          v15 = cf;
          if (cf)
          {
            *a4 = cf;
            cf = 0;
            v5 = v15;
          }

          v16 = sub_23EB6AE14(v5);
          if (!v16)
          {
            return 4294960569;
          }

          v17 = v16;
          sub_23EBEB0B0(*(a1 + 128), 22, 0, v16);
          if (!v11)
          {
            v13 = sub_23EBB4DE4(a2, 1937331060);
            if (v13)
            {
              return v13;
            }

            if (!sub_23EBB427C(a2, 2002865740, &v25) || v25)
            {
              goto LABEL_93;
            }
          }

          if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
          {
            sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Is WAN plugged in?\n");
          }

          v18 = sub_23EBC5E68(a1, a2, 512);
          if (v18)
          {
            v4 = v18;
            if (v18 != -6757)
            {
              return v4;
            }

            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "User skipped WAN connection\n");
            }
          }

          else
          {
LABEL_93:
            if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
            {
              sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Is DHCP or PPPoE?\n");
            }

            v19 = sub_23EBC5E68(a1, a2, 3072);
            if (v19)
            {
              v4 = v19;
              if (v19 != -6757)
              {
                return v4;
              }

              if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
              {
                sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "User skipped DHCP/PPPoE connection\n");
              }
            }

            else
            {
              v13 = sub_23EBB3F7C(a2, 1937327724, &v26);
              if (v13)
              {
                return v13;
              }

              if ((v26 & 0x400) != 0)
              {
                if (dword_27E3827A8 <= 800)
                {
                  if (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u))
                  {
                    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "Got PPPoE offer\n");
                  }

                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Setting up PPPoE\n");
                  }
                }

                v22 = sub_23EBC615C(a1, a2);
                if (v22)
                {
                  v4 = v22;
                  if (v22 != -6757)
                  {
                    return v4;
                  }

                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "User skipped PPPoE connection\n");
                  }
                }

                goto LABEL_90;
              }

              if (!v12)
              {
                if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                {
                  sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n\t****Is Internet connected?\n");
                }

                v21 = sub_23EBC6364(a1, a2);
                if (v21)
                {
                  v4 = v21;
                  if (v21 != -6757)
                  {
                    return v4;
                  }

                  if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                  {
                    sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "User skipped Internet connection\n");
                  }
                }
              }
            }
          }

          v13 = sub_23EBB4DE4(a2, 1937331060);
          if (v13)
          {
            return v13;
          }

          cf = 0;
          v13 = sub_23EBB3F30(a2, 1937331060, &cf);
          if (v13)
          {
            return v13;
          }

          if (!cf)
          {
            return 4294960568;
          }

          sub_23EB6FF14(cf, &v23, "%ks", "problems");
          v4 = v20;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v4)
          {
            if (v23)
            {
              if (sub_23EBB0560(v23, 1148543566) != -1 || sub_23EBB0560(v23, 2002866794) != -1)
              {
                if (dword_27E3827A8 <= 800 && (dword_27E3827A8 != -1 || sub_23EB74AC8(&dword_27E3827A8, 0x320u)))
                {
                  sub_23EB75374(&dword_27E3827A8, "OSStatus _VerifyConnections(BSConfigurationContextRef, BSRef, CFDictionaryRef, CFDictionaryRef *)", 800, "Setting bridge mode. problems: %@\n", v23);
                }

                v13 = sub_23EBB3E08(a2, 1651724877, 3);
                if (v13)
                {
                  return v13;
                }
              }

              v23 = 0;
LABEL_90:
              sub_23EBEB0B0(*(a1 + 128), 23, 0, v17);
              return 0;
            }

            return 4294960568;
          }
        }
      }
    }
  }

  return v4;
}