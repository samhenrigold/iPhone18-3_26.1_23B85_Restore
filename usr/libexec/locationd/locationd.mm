id sub_100004EE0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101B0D6F4();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a3 pid];
    v10 = [objc_msgSend(a3 "bundle")];
    [objc_msgSend(a4 "state")];
    v12[0] = 68289794;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2050;
    v20 = [objc_msgSend(a4 "state")];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:RBS #AppMonitor process monitor update handler invoked, pid:%{public}d, bundleID:%{public, location:escape_only}@, state:%{public, location:RBSTaskState}lld}", v12, 0x2Cu);
  }

  return [*(a1 + 32) onApplicationStateMonitor:a2 didUpdate:a4 forProcess:a3];
}

BOOL sub_100005050(uint64_t a1, uint64_t a2, std::string *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_100005A24(cf, a3);
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
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, std::string &, int) const", "%s\n", v12);
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

uint64_t sub_1000052CC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_100005EEC(cf, a3);
  if ((v6 & 1) == 0)
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
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int &, int) const", "%s\n", v12);
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

uint64_t sub_10000554C(uint64_t a1, const __CFString *a2, uint64_t *a3, int a4)
{
  cf = 0;
  result = (*(*a1 + 912))(a1, a2, &cf);
  if (result)
  {
    *a3 = 0;
    v8 = CFGetTypeID(cf);
    if (v8 == CFArrayGetTypeID())
    {
      v9 = a4 & ~(a4 >> 31);
      if (CFArrayGetCount(cf) > v9)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
LABEL_34:
        *a3 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        CFRelease(cf);
        return 1;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v19 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a2, __p);
        v20 = SBYTE3(v35);
        v21 = *__p;
        Count = CFArrayGetCount(cf);
        v23 = __p;
        *buf = 136446722;
        if (v20 < 0)
        {
          v23 = v21;
        }

        *v37 = v23;
        *&v37[8] = 1026;
        *&v37[10] = v9;
        v38 = 2050;
        v39 = Count;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", buf, 0x1Cu);
        if (SBYTE3(v35) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_31;
      }

      sub_1018AA53C(buf);
      v24 = qword_1025D48A8;
      sub_1000238CC(a2, v30);
      v25 = v31;
      v26 = v30[0];
      v27 = CFArrayGetCount(cf);
      v28 = v30;
      *__p = 136446722;
      if (v25 < 0)
      {
        v28 = v26;
      }

      *&__p[4] = v28;
      *&__p[12] = 1026;
      *&__p[14] = v9;
      v34 = 2050;
      v35 = v27;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v24, 17, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", __p, 28);
      v18 = v29;
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    else
    {
      if (a4 < 1)
      {
        ValueAtIndex = cf;
        goto LABEL_34;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v12 = CFGetTypeID(cf);
        sub_1000238CC(a2, __p);
        v13 = (v35 & 0x80000000) == 0 ? __p : *__p;
        *buf = 67240706;
        *v37 = a4;
        *&v37[4] = 2050;
        *&v37[6] = v12;
        v38 = 2082;
        v39 = v13;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", buf, 0x1Cu);
        if (SBYTE3(v35) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_31;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v14 = qword_1025D48A8;
      v15 = CFGetTypeID(cf);
      sub_1000238CC(a2, v30);
      if (v31 >= 0)
      {
        v16 = v30;
      }

      else
      {
        v16 = v30[0];
      }

      *__p = 67240706;
      *&__p[4] = a4;
      *&__p[8] = 2050;
      *&__p[10] = v15;
      v34 = 2082;
      v35 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v14, 17, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", __p, 28);
      v18 = v17;
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::copyInternal(CFStringRef, CFTypeRef &, int) const", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }

LABEL_31:
    CFRelease(cf);
    result = *a3;
    if (*a3)
    {
      CFRelease(result);
      return 0;
    }
  }

  return result;
}

void sub_1000059EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100005A24(const __CFString *cf, std::string *a2)
{
  if (!cf)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(cf, 0x8000100u);
    if (!CStringPtr)
    {
      *bufferSize = 0;
      v17.length = CFStringGetLength(cf);
      v17.location = 0;
      CFStringGetBytes(cf, v17, 0x8000100u, 0, 0, 0, 0, bufferSize);
      ++*bufferSize;
      operator new[]();
    }

    sub_100006044(a2, CStringPtr);
    return 1;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFDataGetTypeID())
  {
LABEL_10:
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      if (cf)
      {
        v13 = CFGetTypeID(cf);
      }

      else
      {
        v13 = -1;
      }

      *bufferSize = 134349056;
      *&bufferSize[4] = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning type IDs do not match - %{public}lu", bufferSize, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018AADC0(cf == 0, cf);
    }

    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 0;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    v6 = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
    return v6;
  }

  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  v10 = Length;
  if (!BytePtr)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *bufferSize = 67240192;
      *&bufferSize[4] = v10;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "can't convert %{public}u data bytes", bufferSize, 8u);
    }

    v6 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018AABE4(v10);
      return 0;
    }

    return v6;
  }

  return sub_1004F96B0(BytePtr, Length, a2);
}

void *sub_100005DA8(void *a1)
{
  *a1 = off_10245A978;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_100005DF8(void *a1, CFDictionaryRef theDict)
{
  *a1 = off_10245A978;
  a1[1] = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A9F14();
    }
  }

  return a1;
}

uint64_t sub_100005EEC(const void *a1, _DWORD *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    v10 = 0;
    v8 = CFGetTypeID(a1);
    if (v8 != CFBooleanGetTypeID())
    {
      return 0;
    }

    result = sub_1000700DC(a1, &v10);
    if (!result)
    {
      return result;
    }

    *a2 = v10;
    return 1;
  }

  if (CFNumberGetValue(a1, kCFNumberSInt32Type, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "could not get value", v9, 2u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_1018AA748();
    return 0;
  }

  return result;
}

BOOL sub_100006000(uint64_t a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  v5 = Value;
  *a3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v5 != 0;
}

std::string *sub_100006044(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100006BE0(a1, __s, v4);
}

uint64_t sub_10000608C(uint64_t a1, int *a2, uint64_t a3)
{
  if ((*(a1 + 108) & 1) != 0 || !a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = &a2[a3];
  v7 = *(a1 + 64);
  v5 = a1 + 64;
  v6 = v7;
  do
  {
    if (v6)
    {
      v8 = *a2;
      v9 = v5;
      v10 = v6;
      do
      {
        if (*(v10 + 32) >= v8)
        {
          v9 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < v8));
      }

      while (v10);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v3 = (v3 + *(v9 + 56));
      }
    }

    ++a2;
  }

  while (a2 != v4);
  return v3;
}

_OWORD *sub_100006104(_OWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100007244(a1 + 8, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 3) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100007244(a1 + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 6) = *(a2 + 48);
    a1[2] = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100007244(a1 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 9) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100007244(a1 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 12) = *(a2 + 96);
    a1[5] = v7;
  }

  *(a1 + 52) = *(a2 + 104);
  return a1;
}

void sub_1000061E8(_Unwind_Exception *exception_object)
{
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

void sub_100006234(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v42 = 0;
  v34 = -1;
  *v35 = 0u;
  *v36 = 0u;
  v37 = 0u;
  *v38 = 0u;
  *__p = 0u;
  v40 = 0u;
  v41 = 0;
  if (*(a1 + 280) != a4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B0D6F4();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 280);
      buf = 68289538;
      v44 = 2082;
      v45 = "";
      v46 = 2050;
      *v47 = v7;
      *&v47[8] = 2050;
      *&v47[10] = a4;
      v8 = "{msg%{public}.0s:RBS #AppMonitor #Warning you're not the one I'm expecting, expected:%{public}p, received:%{public}p}";
      v9 = v6;
      v10 = 38;
LABEL_6:
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, v8, &buf, v10);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  if (([a3 pid] & 0x80000000) == 0)
  {
    if (![a3 bundle])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D6F4();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289282;
        v44 = 2082;
        v45 = "";
        v46 = 1026;
        *v47 = [a3 pid];
        v8 = "{msg%{public}.0s:RBS #AppMonitor received null bundle info, discarding, pid:%{public}d}";
        v9 = v17;
        v10 = 24;
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (![objc_msgSend(a3 "bundle")])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D6F4();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289538;
        v44 = 2082;
        v45 = "";
        v46 = 1026;
        *v47 = [a3 pid];
        *&v47[4] = 2114;
        *&v47[6] = [a3 bundle];
        v8 = "{msg%{public}.0s:RBS #AppMonitor have a bundle but no path? discarding, pid:%{public}d, bundle:%{public, location:escape_only}@}";
        v9 = v18;
        v10 = 34;
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    v13 = [objc_msgSend(a2 "state")];
    v34 = [a3 pid];
    sub_100006044(v35, [objc_msgSend(objc_msgSend(a3 "bundle")]);
    if (v13 > 1)
    {
      switch(v13)
      {
        case 2:
          goto LABEL_23;
        case 3:
          v14 = 0;
          v15 = 2;
LABEL_51:
          v42 = v15;
          goto LABEL_52;
        case 4:
LABEL_23:
          v14 = 0;
          if ([objc_msgSend(objc_msgSend(a2 "state")])
          {
            v15 = 4;
          }

          else
          {
            v15 = 3;
          }

          goto LABEL_51;
      }

LABEL_42:
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D52C();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        buf = 68289282;
        v44 = 2082;
        v45 = "";
        v46 = 2050;
        *v47 = v13;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:RBS #AppMonitor unknown task state, state:%{public, location:RBSTaskState}lld}", &buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_101B0D52C();
        }
      }

      v20 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        buf = 68289282;
        v44 = 2082;
        v45 = "";
        v46 = 2050;
        *v47 = v13;
        _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RBS #AppMonitor unknown task state", "{msg%{public}.0s:RBS #AppMonitor unknown task state, state:%{public, location:RBSTaskState}lld}", &buf, 0x1Cu);
      }

      v14 = 0;
      v15 = 0;
      goto LABEL_52;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_42;
      }

      v14 = 1;
      v42 = 1;
      v15 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v42 = 0;
    }

LABEL_52:
    if (![objc_msgSend(a3 "bundle")])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D52C();
      }

      v21 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        buf = 68289026;
        v44 = 2082;
        v45 = "";
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:RBS #AppMonitor failed to retreive bundleID}", &buf, 0x12u);
        if (qword_1025D47A0 != -1)
        {
          sub_101B0D52C();
        }
      }

      v22 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        buf = 68289026;
        v44 = 2082;
        v45 = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RBS #AppMonitor failed to retreive bundleID", "{msg%{public}.0s:RBS #AppMonitor failed to retreive bundleID}", &buf, 0x12u);
      }
    }

    if (v14)
    {
      LOBYTE(v41) = [objc_msgSend(objc_msgSend(a3 "lastExitContext")] == 3735943697;
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D52C();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        if (SHIBYTE(v36[0]) >= 0)
        {
          v24 = v35;
        }

        else
        {
          v24 = v35[0];
        }

        buf = 68289794;
        v44 = 2082;
        v45 = "";
        v46 = 1026;
        *v47 = v34;
        *&v47[4] = 2082;
        *&v47[6] = v24;
        *&v47[14] = 1026;
        *&v47[16] = v41;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:RBS #dic AppMonitor received Termination, pid:%{public}d, bundleId:%{public, location:escape_only}s, isUserKill:%{public}hhd}", &buf, 0x28u);
      }
    }

    sub_100006044(&__p[1], [objc_msgSend(objc_msgSend(a3 "bundle")]);
    sub_100007038((a1 + 232), v35);
    if (v15 - 1 >= 3)
    {
      if (v15 == 4)
      {
        sub_100006B80(a1 + 120, &v34);
        LODWORD(buf) = 9;
        if (sub_10000608C(a1, &buf, 1))
        {
          [*(a1 + 112) setNextFireDelay:5.0];
        }

        sub_100006CC4(&buf, v35, &v34);
        sub_100006DD8((a1 + 232), &buf);
        sub_100007338(&buf);
      }
    }

    else
    {
      v25 = *(a1 + 151);
      if ((v25 & 0x8000000000000000) != 0)
      {
        v26 = *(a1 + 128);
        v25 = *(a1 + 136);
      }

      else
      {
        v26 = (a1 + 128);
      }

      if (SHIBYTE(v36[0]) >= 0)
      {
        v27 = HIBYTE(v36[0]);
      }

      else
      {
        v27 = v35[1];
      }

      if (SHIBYTE(v36[0]) >= 0)
      {
        v28 = v35;
      }

      else
      {
        v28 = v35[0];
      }

      if (v27 >= v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v27;
      }

      v30 = memcmp(v26, v28, v29);
      if (v27 == v25 && !v30)
      {
        sub_1010613F4(a1 + 120);
        [*(a1 + 112) setNextFireDelay:1.79769313e308];
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101B0D52C();
    }

    v31 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sub_100006C9C(&v42);
      if (SHIBYTE(v36[0]) >= 0)
      {
        v33 = v35;
      }

      else
      {
        v33 = v35[0];
      }

      buf = 68289794;
      v44 = 2082;
      v45 = "";
      v46 = 2082;
      *v47 = v32;
      *&v47[8] = 1026;
      *&v47[10] = v34;
      *&v47[14] = 2082;
      *&v47[16] = v33;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:RBS #AppMonitor Post Application State Change Notification, notification:%{public, location:escape_only}s, pid:%{public}d, bundleId:%{public, location:escape_only}s}", &buf, 0x2Cu);
    }

    (*(*a1 + 152))(a1, &v42, &v34, 0, 0xFFFFFFFFLL, 0);
    goto LABEL_7;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B0D6F4();
  }

  v16 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v44 = 2082;
    v45 = "";
    v8 = "{msg%{public}.0s:RBS #AppMonitor received with invalid pid...adios!}";
    v9 = v16;
    v10 = 18;
    goto LABEL_6;
  }

LABEL_7:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[1]);
  }

  if (SHIBYTE(v36[0]) < 0)
  {
    operator delete(v35[0]);
  }
}

uint64_t sub_100006B80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  std::string::operator=((a1 + 80), (a2 + 80));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

std::string *sub_100006BE0(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

const char *sub_100006C9C(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0xB)
  {
    return "?";
  }

  else
  {
    return (&off_1024C9D98)[v1];
  }
}

char *sub_100006CC4(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_100006104(__dst + 24, a3);
  return __dst;
}

void sub_100006D24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100006DBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002FAA5C(v3, v2);
  _Unwind_Resume(a1);
}

const void **sub_100006DD8(void *a1, uint64_t *a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100006D40();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100007014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1002FAA5C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100007038(void *a1, uint64_t *a2)
{
  result = sub_1005D7C24(a1, a2);
  if (result)
  {
    sub_1002FAA10(a1, result);
    return 1;
  }

  return result;
}

unint64_t sub_100007070(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_100007884(&v5, a2, v3);
}

char *sub_1000070B0(char *__dst, __int128 *a2)
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

  *(__dst + 6) = *(a2 + 6);
  v5 = a2[2];
  *(__dst + 6) = *(a2 + 6);
  *(__dst + 2) = v5;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  v6 = *(a2 + 56);
  *(__dst + 9) = *(a2 + 9);
  *(__dst + 56) = v6;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  v7 = a2[5];
  *(__dst + 12) = *(a2 + 12);
  *(__dst + 5) = v7;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  v8 = *(a2 + 104);
  *(__dst + 15) = *(a2 + 15);
  *(__dst + 104) = v8;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(__dst + 64) = *(a2 + 64);
  return __dst;
}

void *sub_100007244(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100061080();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

id sub_1000072E8(uint64_t a1, int a2, void *a3)
{
  result = sub_100007A8C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100007338(uint64_t a1)
{
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

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000073AC(uint64_t a1, int *a2, uint64_t a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      sub_101064420();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_100007170(a3);
    }
  }
}

void sub_100007858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

unint64_t sub_100007884(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_10002380C(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_10000AC40(a2, a3);
  }

  else
  {
    return sub_100010170(a2, a3);
  }
}

id sub_100007A8C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10000A454(a1);
}

_BYTE *sub_100007AEC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100007A8C(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_100007BE4(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = a1 + 8;
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 8))
      {
        v39 = v9;
        v10 = sub_100007A8C(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 10);
        v11 = v9[5];
        if (v11 != v9 + 6)
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_100007AEC(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_101B0DE18();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101B0DE18();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLAppMonitor_Type::Notification, CLAppMonitor_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLAppMonitor_Type::Notification, NotificationData_T = CLAppMonitor_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != v39 + 6);
        }
      }
    }
  }
}

uint64_t *sub_100007FA0(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 28);
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

void sub_100008080(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

double sub_1000080EC(unint64_t a1)
{
  v2 = *&qword_102666A68;
  if (*&qword_102666A68 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_102666A68 = v2;
  }

  return v2 * a1;
}

double sub_1000081AC()
{
  v0 = mach_continuous_time();

  return sub_1000080EC(v0);
}

void sub_1000081D4(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[5] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101951884();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCachedLocationController::onAppMonitorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101951898();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCachedLocationController::onAppMonitorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10000AA00(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000083A0(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100006104(&v6, a3);
  [a4 onAppMonitorNotification:v5 data:&v6];
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(*(&v6 + 1));
  }
}

void sub_100008444(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  [*a1 silo];
  if (*a3 - 2 > 4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101A2854C();
    }

    v28 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *a3;
      *buf = 67109378;
      *&buf[4] = v29;
      *&buf[8] = 2080;
      *&buf[10] = sub_100006C9C(a3);
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#Warning unhandled app monitor notification, %d, %s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A28694(a3);
    }
  }

  else if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101A2854C();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a3;
      v9 = sub_100006C9C(a3);
      v10 = *a4;
      if (*(a4 + 31) >= 0)
      {
        v11 = a4 + 2;
      }

      else
      {
        v11 = *(a4 + 1);
      }

      *buf = 67109890;
      *&buf[4] = v8;
      *&buf[8] = 2080;
      *&buf[10] = v9;
      *&buf[18] = 1024;
      *&buf[20] = v10;
      v36 = 2080;
      v37 = v11;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "notification, %d, %s, pid, %d, bundleId, %s", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A287B4(a3, a4);
    }

    v34 = 0;
    v12 = [RBSProcessIdentifier identifierWithPid:*a4];
    v13 = [RBSProcessHandle handleForIdentifier:v12 error:&v34];
    if (v12 && v13)
    {
      v14 = [objc_msgSend(v13 "bundle")];
      memset(buf, 0, sizeof(buf));
      if (v14)
      {
        sub_1000238CC(v14, &v32);
        *buf = v32;
        *&buf[16] = v33;
        v15 = HIBYTE(v33);
        if (v33 < 0)
        {
          v15 = *(&v32 + 1);
        }

        if (v15)
        {
          v16 = *(a1 + 32);
          if (v16 != (a1 + 24))
          {
            v17 = 0;
            do
            {
              v18 = v16[5];
              if (v18 + 5.0 >= CFAbsoluteTimeGetCurrent())
              {
                if ((buf[23] & 0x80u) == 0)
                {
                  v21 = buf[23];
                }

                else
                {
                  v21 = *&buf[8];
                }

                v22 = *(v16 + 39);
                v23 = v22;
                if ((v22 & 0x80u) != 0)
                {
                  v22 = *(v16 + 3);
                }

                if (v21 != v22)
                {
                  v19 = *(v16 + 1);
                  goto LABEL_39;
                }

                if ((buf[23] & 0x80u) == 0)
                {
                  v24 = buf;
                }

                else
                {
                  v24 = *buf;
                }

                if (v23 >= 0)
                {
                  v25 = v16 + 2;
                }

                else
                {
                  v25 = *(v16 + 2);
                }

                v26 = memcmp(v24, v25, v21);
                if ((v26 != 0) | v17 & 1)
                {
                  v19 = *(v16 + 1);
                  if (v26)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_22;
                }

                v17 = 1;
                sub_100C10918(a1, a4, buf, 1, v27);
              }

              v19 = *(v16 + 1);
LABEL_22:
              v20 = *v16;
              v20[1] = v19;
              *v19 = v20;
              --*(a1 + 40);
              sub_100043898(a1 + 24, v16);
LABEL_39:
              v16 = v19;
            }

            while (v19 != (a1 + 24));
          }
        }
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A28438();
      }

      v30 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *a4;
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ALM: unable to get process handle, pid:%{public}d}", buf, 0x18u);
      }
    }
  }
}

void sub_100008854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100008888(uint64_t a1, unsigned int a2, unsigned int *a3, int *a4)
{
  v7 = a4 + 2;
  if (*(a4 + 31) >= 0)
  {
    v8 = a4 + 2;
  }

  else
  {
    v8 = *(a4 + 1);
  }

  v131 = [CLClientKeyPath clientKeyPathWithClientAnchor:[NSString stringWithUTF8String:v8] anchorType:105];
  v9 = [*(a1 + 136) registeredKeyPathForClientIdentifier:?];
  v132 = a3;
  if (*a3 - 10 < 2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100006C9C(a3);
      v14 = *(a4 + 10);
      v13 = a4 + 20;
      v12 = v14;
      if (*(v13 - 49) >= 0)
      {
        v15 = v7;
      }

      else
      {
        v15 = *(v13 - 9);
      }

      if (*(v13 - 1) >= 0)
      {
        v16 = v13 - 6;
      }

      else
      {
        v16 = *(v13 - 3);
      }

      if (*(v13 + 23) >= 0)
      {
        v12 = v13;
      }

      *buf = 68290050;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v11;
      *&buf[28] = 2082;
      *&buf[30] = v15;
      *&buf[38] = 2082;
      *&buf[40] = v16;
      *&buf[48] = 2082;
      *&buf[50] = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:AppMonitor - application (un)installation notification, notification:%{public, location:escape_only}s, BundleId:%{public, location:escape_only}s, BundlePath:%{public, location:escape_only}s, ExecutablePath:%{public, location:escape_only}s}", buf, 0x3Au);
    }

    if (*a3 == 10)
    {
      if ([(CLClientKeyPath *)v9 isValidCKP])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v9;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reregistering client key path due to app update, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        [*(a1 + 136) registerClient:v9 fromAuthSync:0];
      }
    }

    else
    {
      sub_10000EC00(v141, "ClientRemoved");
      sub_100777AC4(a1, v9, 1, v141);
      if (v142 < 0)
      {
        operator delete(v141[0]);
      }

      memset(buf, 0, 99);
      v148 = 0u;
      memset(v149, 0, 59);
      if (v131)
      {
        objc_msgSend_clientName(v131);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v140 = 0;
        memset(v139, 0, sizeof(v139));
        *v138 = 0uLL;
        *v136 = 0uLL;
        memset(v137, 0, sizeof(v137));
        memset(v135, 0, sizeof(v135));
        *__p = 0uLL;
      }

      *buf = *__p;
      *&buf[16] = v135[0];
      HIBYTE(v135[0]) = 0;
      LOBYTE(__p[0]) = 0;
      if (buf[47] < 0)
      {
        operator delete(*&buf[24]);
      }

      *&buf[24] = *&v135[1];
      *&buf[40] = v135[3];
      HIBYTE(v135[3]) = 0;
      LOBYTE(v135[1]) = 0;
      if (buf[71] < 0)
      {
        operator delete(*&buf[48]);
      }

      *&buf[48] = *v136;
      *&buf[64] = v137[0];
      HIBYTE(v137[0]) = 0;
      LOBYTE(v136[0]) = 0;
      if (buf[95] < 0)
      {
        operator delete(*&buf[72]);
      }

      *&buf[72] = *&v137[1];
      *&buf[88] = v137[3];
      HIBYTE(v137[3]) = 0;
      LOBYTE(v137[1]) = 0;
      *&buf[96] = v137[4];
      buf[98] = BYTE2(v137[4]);
      if (SBYTE7(v149[0]) < 0)
      {
        operator delete(v148);
      }

      v148 = *&v137[5];
      *&v149[0] = v137[7];
      HIBYTE(v137[7]) = 0;
      LOBYTE(v137[5]) = 0;
      if (SHIBYTE(v149[1]) < 0)
      {
        operator delete(*(&v149[0] + 1));
      }

      *(v149 + 8) = *v138;
      *(&v149[1] + 1) = *&v139[0];
      BYTE7(v139[0]) = 0;
      LOBYTE(v138[0]) = 0;
      if (SBYTE7(v149[3]) < 0)
      {
        operator delete(*&v149[2]);
        v149[2] = *(v139 + 8);
        *&v149[3] = *(&v139[1] + 1);
        HIBYTE(v139[1]) = 0;
        BYTE8(v139[0]) = 0;
        WORD4(v149[3]) = v140;
        BYTE10(v149[3]) = BYTE2(v140);
        if (SBYTE7(v139[0]) < 0)
        {
          operator delete(v138[0]);
        }
      }

      else
      {
        v149[2] = *(v139 + 8);
        *&v149[3] = *(&v139[1] + 1);
        HIBYTE(v139[1]) = 0;
        BYTE8(v139[0]) = 0;
        WORD4(v149[3]) = v140;
        BYTE10(v149[3]) = BYTE2(v140);
      }

      if (SHIBYTE(v137[7]) < 0)
      {
        operator delete(v137[5]);
      }

      if (SHIBYTE(v137[3]) < 0)
      {
        operator delete(v137[1]);
      }

      if (SHIBYTE(v137[0]) < 0)
      {
        operator delete(v136[0]);
      }

      if (SHIBYTE(v135[3]) < 0)
      {
        operator delete(v135[1]);
      }

      if (SHIBYTE(v135[0]) < 0)
      {
        operator delete(__p[0]);
      }

      LODWORD(__p[0]) = 1;
      (*(*a1 + 152))(a1, __p, buf, 0, 0xFFFFFFFFLL, 0);
      if (SBYTE7(v149[3]) < 0)
      {
        operator delete(*&v149[2]);
      }

      if (SHIBYTE(v149[1]) < 0)
      {
        operator delete(*(&v149[0] + 1));
      }

      if (SBYTE7(v149[0]) < 0)
      {
        operator delete(v148);
      }

      if (buf[95] < 0)
      {
        operator delete(*&buf[72]);
      }

      if (buf[71] < 0)
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

    return;
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (*a3 == 12)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a4 + 31) >= 0)
      {
        v20 = v7;
      }

      else
      {
        v20 = *(a4 + 1);
      }

      v21 = [(CLClientKeyPath *)v9 isValidCKP];
      v22 = *(a4 + 105);
      *buf = 68290050;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v20;
      *&buf[28] = 2114;
      *&buf[30] = v9;
      *&buf[38] = 1026;
      *&buf[40] = v21;
      *&buf[44] = 1026;
      *&buf[46] = v22;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:AppProtection notification, NotificationData.bundleId:%{public, location:escape_only}s, ckp:%{public, location:escape_only}@, isValidCkp:%{public}hhd, isAppHidden:%{public}hhd}", buf, 0x32u);
    }

    if ([(CLClientKeyPath *)v9 isValidCKP])
    {
      v23 = *(a1 + 136);
      if (*(a4 + 105) == 1)
      {
        [v23 setBool:1 forKey:@"Hidden" atKeyPath:v9];
        v24 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v9 defaultValue:0];
        if ((v24 & 2) != 0)
        {
          v25 = [*(a1 + 136) BOOLForKey:@"ProvisionalMonitoring" atKeyPath:v9 defaultValue:0];
        }

        else
        {
          v25 = 0;
        }

        if ((v24 & 4) != 0 || v25)
        {
          sub_100791C88(a1, v9, 1, 0, 1);
          sub_100791ACC(a1, v9, 1, 1);
          sub_10078B250(a1, v9, 2uLL, [*(a1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v9 defaultValue:0], 0, 1, 1);
        }
      }

      else
      {
        [v23 removeValueForKey:@"Hidden" atKeyPath:v9];
        [*(a1 + 136) persist];
      }
    }

    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v26 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v27 = sub_100006C9C(a3);
    v28 = *a4;
    if (*(a4 + 31) >= 0)
    {
      v29 = v7;
    }

    else
    {
      v29 = *(a4 + 1);
    }

    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v27;
    *&buf[28] = 1026;
    *&buf[30] = v28;
    *&buf[34] = 2082;
    *&buf[36] = v29;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:AppMonitor notification, notification:%{public, location:escape_only}s, pid:%{public}d, bundleId:%{public, location:escape_only}s}", buf, 0x2Cu);
  }

  v30 = *a3;
  if (*a3 == 2)
  {
    __p[0] = 0;
    __p[1] = 0;
    v135[0] = 0;
    v31 = *(a1 + 840);
    v32 = (a1 + 848);
    if (v31 != (a1 + 848))
    {
      do
      {
        v34 = v31[4];
        v33 = v31[5];
        if (CLConnection::getRemotePid(v34) == *a4)
        {
          v35 = [sub_1000344B0(v33 0)];
          if (p_info[244] != -1)
          {
            sub_10192D4D0();
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v36 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = v35;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "'%{public}@' task suspended: removing client", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10192DC88(buf);
            *v143 = 138543362;
            *&v143[4] = v35;
            LODWORD(v129) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 1, "'%{public}@' task suspended: removing client", v143, v129);
            v48 = v47;
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::onAppMonitorNotification(int, const CLAppMonitor_Type::Notification &, const CLAppMonitor_Type::NotificationData &)", "%s\n", v47);
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            if (v48 != buf)
            {
              free(v48);
            }
          }

          v37 = __p[1];
          if (__p[1] >= v135[0])
          {
            v39 = (__p[1] - __p[0]) >> 3;
            if ((v39 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v40 = (v135[0] - __p[0]) >> 2;
            if (v40 <= v39 + 1)
            {
              v40 = v39 + 1;
            }

            if ((v135[0] - __p[0]) >= 0x7FFFFFFFFFFFFFF8)
            {
              v41 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v40;
            }

            if (v41)
            {
              sub_10045E858(__p, v41);
            }

            v42 = (8 * v39);
            *v42 = v34;
            v38 = (8 * v39 + 8);
            v43 = v42 - (__p[1] - __p[0]);
            memcpy(v43, __p[0], __p[1] - __p[0]);
            v44 = __p[0];
            __p[0] = v43;
            __p[1] = v38;
            v135[0] = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            *__p[1] = v34;
            v38 = v37 + 8;
          }

          __p[1] = v38;
        }

        v45 = v31[1];
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v31[2];
            v120 = *v46 == v31;
            v31 = v46;
          }

          while (!v120);
        }

        v31 = v46;
      }

      while (v46 != v32);
    }

    v49 = *(a1 + 864);
    if (v49 != (a1 + 872))
    {
      do
      {
        v50 = v49[4];
        v51 = v49[5];
        if (CLConnection::getRemotePid(v50) == *a4)
        {
          if (p_info[244] != -1)
          {
            sub_10192D4D0();
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v52 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            (*(*v51 + 24))(buf, v51);
            v53 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v53 = *buf;
            }

            *v143 = 136446210;
            *&v143[4] = v53;
            _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_INFO, "'%{public}s' task suspended: removing client", v143, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_10192DC88(buf);
            v64 = off_1025D47A8;
            (*(*v51 + 24))(v143, v51);
            v65 = v143;
            if (v144 < 0)
            {
              v65 = *v143;
            }

            v145 = 136446210;
            v146 = v65;
            LODWORD(v129) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v64, 1, "'%{public}s' task suspended: removing client", &v145, v129);
            v67 = v66;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            if (v144 < 0)
            {
              operator delete(*v143);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::onAppMonitorNotification(int, const CLAppMonitor_Type::Notification &, const CLAppMonitor_Type::NotificationData &)", "%s\n", v67);
            if (v67 != buf)
            {
              free(v67);
            }
          }

          v54 = __p[1];
          if (__p[1] >= v135[0])
          {
            v56 = (__p[1] - __p[0]) >> 3;
            if ((v56 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v57 = (v135[0] - __p[0]) >> 2;
            if (v57 <= v56 + 1)
            {
              v57 = v56 + 1;
            }

            if ((v135[0] - __p[0]) >= 0x7FFFFFFFFFFFFFF8)
            {
              v58 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v57;
            }

            if (v58)
            {
              sub_10045E858(__p, v58);
            }

            v59 = (8 * v56);
            *v59 = v50;
            v55 = (8 * v56 + 8);
            v60 = v59 - (__p[1] - __p[0]);
            memcpy(v60, __p[0], __p[1] - __p[0]);
            v61 = __p[0];
            __p[0] = v60;
            __p[1] = v55;
            v135[0] = 0;
            if (v61)
            {
              operator delete(v61);
            }
          }

          else
          {
            *__p[1] = v50;
            v55 = v54 + 8;
          }

          __p[1] = v55;
        }

        v62 = v49[1];
        if (v62)
        {
          do
          {
            v63 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v63 = v49[2];
            v120 = *v63 == v49;
            v49 = v63;
          }

          while (!v120);
        }

        v49 = v63;
      }

      while (v63 != (a1 + 872));
    }

    v68 = *(a1 + 936);
    if (v68 != (a1 + 944))
    {
      do
      {
        v69 = v68[4];
        if ([sub_100008880(v69) isEqual:v9])
        {
          v70 = [sub_100008880(v69) clientKey];
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v71 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v70;
            *&buf[28] = 2050;
            *&buf[30] = v69;
            _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic task suspended: cancelling retirement, ClientKey:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
          }

          sub_10102D0CC(v69);
        }

        v72 = v68[1];
        if (v72)
        {
          do
          {
            v73 = v72;
            v72 = *v72;
          }

          while (v72);
        }

        else
        {
          do
          {
            v73 = v68[2];
            v120 = *v73 == v68;
            v68 = v73;
          }

          while (!v120);
        }

        v68 = v73;
      }

      while (v73 != (a1 + 944));
    }

    v74 = *(a1 + 912);
    v75 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (v74 != (a1 + 920))
    {
      do
      {
        v77 = v74[4];
        v76 = v74[5];
        if (CLConnection::getRemotePid(v77) == *a4)
        {
          v78 = [sub_100008880(v76) clientKey];
          if (v75[244] != -1)
          {
            sub_10192D4D0();
            v75 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v79 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = v78;
            _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_INFO, "'%{public}@' task suspended: removing daemonIdentifiableClient #dic", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10192DC88(buf);
            *v143 = 138543362;
            *&v143[4] = v78;
            LODWORD(v129) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 1, "'%{public}@' task suspended: removing daemonIdentifiableClient #dic", v143, v129);
            v91 = v90;
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::onAppMonitorNotification(int, const CLAppMonitor_Type::Notification &, const CLAppMonitor_Type::NotificationData &)", "%s\n", v90);
            v75 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            if (v91 != buf)
            {
              free(v91);
            }
          }

          v80 = __p[1];
          if (__p[1] >= v135[0])
          {
            v82 = (__p[1] - __p[0]) >> 3;
            if ((v82 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v83 = (v135[0] - __p[0]) >> 2;
            if (v83 <= v82 + 1)
            {
              v83 = v82 + 1;
            }

            if ((v135[0] - __p[0]) >= 0x7FFFFFFFFFFFFFF8)
            {
              v84 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v83;
            }

            if (v84)
            {
              sub_10045E858(__p, v84);
            }

            v85 = (8 * v82);
            *v85 = v77;
            v81 = (8 * v82 + 8);
            v86 = v85 - (__p[1] - __p[0]);
            memcpy(v86, __p[0], __p[1] - __p[0]);
            v87 = __p[0];
            __p[0] = v86;
            __p[1] = v81;
            v135[0] = 0;
            if (v87)
            {
              operator delete(v87);
            }
          }

          else
          {
            *__p[1] = v77;
            v81 = v80 + 8;
          }

          __p[1] = v81;
        }

        v88 = v74[1];
        if (v88)
        {
          do
          {
            v89 = v88;
            v88 = *v88;
          }

          while (v88);
        }

        else
        {
          do
          {
            v89 = v74[2];
            v120 = *v89 == v74;
            v74 = v89;
          }

          while (!v120);
        }

        v74 = v89;
      }

      while (v89 != (a1 + 920));
    }

    v92 = __p[0];
    if (__p[0] != __p[1])
    {
      do
      {
        sub_10011219C(a1, *v92++);
      }

      while (v92 != __p[1]);
      v92 = __p[0];
    }

    if (v92)
    {
      __p[1] = v92;
      operator delete(v92);
    }

    v30 = *a3;
  }

  if (v30 == 1 && [(CLClientKeyPath *)v9 isValidCKP])
  {
    v93 = *(a1 + 936);
    v94 = (a1 + 944);
    if (v93 != (a1 + 944))
    {
      do
      {
        v95 = v93[4];
        if ([sub_100008880(v95) isEqual:v9])
        {
          v96 = [sub_100008880(v95) clientKey];
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v97 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v96;
            *&buf[28] = 2050;
            *&buf[30] = v95;
            _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic cancelRetirement due to termination before actual dic death, ClientKey:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
          }

          sub_10102D0CC(v95);
        }

        v98 = v93[1];
        if (v98)
        {
          do
          {
            v99 = v98;
            v98 = *v98;
          }

          while (v98);
        }

        else
        {
          do
          {
            v99 = v93[2];
            v120 = *v99 == v93;
            v93 = v99;
          }

          while (!v120);
        }

        v93 = v99;
      }

      while (v99 != v94);
    }

    if (a4[26])
    {
      v100 = *(a1 + 912);
      if (v100 != (a1 + 920))
      {
        do
        {
          v101 = v100[5];
          if ((*(*v101 + 24))(v101) == 3 && [sub_100008880(v101) isEqual:v9])
          {
            v102 = [sub_100008880(v101) clientKey];
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v103 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289538;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v102;
              *&buf[28] = 2050;
              *&buf[30] = v101;
              _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic #bas marking eligible for destructionUponDisconnection due to UserTermination, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
            }

            sub_10102CA94(v101);
          }

          v104 = v100[1];
          if (v104)
          {
            do
            {
              v105 = v104;
              v104 = *v104;
            }

            while (v104);
          }

          else
          {
            do
            {
              v105 = v100[2];
              v120 = *v105 == v100;
              v100 = v105;
            }

            while (!v120);
          }

          v100 = v105;
        }

        while (v105 != (a1 + 920));
      }

      memset(buf, 0, 24);
      v106 = *(a1 + 936);
      if (v106 != v94)
      {
        do
        {
          v107 = v106[4];
          if ((*(*v107 + 24))(v107) == 3 && [sub_100008880(v107) isEqual:v9])
          {
            v108 = *&buf[8];
            if (*&buf[8] >= *&buf[16])
            {
              v110 = (*&buf[8] - *buf) >> 3;
              if ((v110 + 1) >> 61)
              {
                sub_10028C64C();
              }

              v111 = (*&buf[16] - *buf) >> 2;
              if (v111 <= v110 + 1)
              {
                v111 = v110 + 1;
              }

              if (*&buf[16] - *buf >= 0x7FFFFFFFFFFFFFF8uLL)
              {
                v112 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v112 = v111;
              }

              if (v112)
              {
                sub_10045E858(buf, v112);
              }

              v113 = (8 * v110);
              *v113 = v107;
              v109 = 8 * v110 + 8;
              v114 = v113 - (*&buf[8] - *buf);
              memcpy(v114, *buf, *&buf[8] - *buf);
              v115 = *buf;
              *buf = v114;
              *&buf[8] = v109;
              *&buf[16] = 0;
              if (v115)
              {
                operator delete(v115);
              }
            }

            else
            {
              **&buf[8] = v107;
              v109 = v108 + 8;
            }

            *&buf[8] = v109;
          }

          v116 = v106[1];
          if (v116)
          {
            do
            {
              v117 = v116;
              v116 = *v116;
            }

            while (v116);
          }

          else
          {
            do
            {
              v117 = v106[2];
              v120 = *v117 == v106;
              v106 = v117;
            }

            while (!v120);
          }

          v106 = v117;
        }

        while (v117 != v94);
        v119 = *buf;
        v118 = *&buf[8];
        if (*buf != *&buf[8])
        {
          do
          {
            sub_10077F82C(a1, *v119++);
          }

          while (v119 != v118);
          v119 = *buf;
        }

        if (v119)
        {
          *&buf[8] = v119;
          operator delete(v119);
        }
      }
    }
  }

  v120 = *v132 > 6 || ((1 << *v132) & 0x58) == 0;
  if (!v120)
  {
    v121 = *(a1 + 936);
    if (v121 != (a1 + 944))
    {
      do
      {
        v122 = v121[4];
        if ([sub_100008880(v122) isEqual:v9])
        {
          v123 = [sub_100008880(v122) clientKey];
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v124 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v123;
            *&buf[28] = 2050;
            *&buf[30] = v122;
            _os_log_impl(dword_100000000, v124, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic triggerRetirement, ClientKey:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
          }

          sub_10102CAF8(v122);
        }

        v125 = v121[1];
        if (v125)
        {
          do
          {
            v126 = v125;
            v125 = *v125;
          }

          while (v125);
        }

        else
        {
          do
          {
            v126 = v121[2];
            v120 = *v126 == v121;
            v121 = v126;
          }

          while (!v120);
        }

        v121 = v126;
      }

      while (v126 != (a1 + 944));
    }
  }

  if (![(CLClientKeyPath *)v9 isValidCKP])
  {
    if ([(NSString *)[(CLClientKeyPath *)v131 bundleId] isEqualToString:@"com.apple.MercuryPoster"])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v127 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_DEBUG, "AppMonitor notification for unregistered MercuryPoster - skip InUseLevel tracking", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019352C8();
      }

      return;
    }

    memset(buf, 0, 41);
    [*(a1 + 136) expensivelyGetIdentifyingInformation:buf forClient:v131];
    v9 = [CLClientKeyPath clientKeyPathWithClientAnchor:*buf anchorType:105];
  }

  sub_10000E670(*(a1 + 400), a2, v132, a4, v9);
  if (*v132 == 4 && *(a1 + 1083) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v128 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v128, OS_LOG_TYPE_INFO, "Trial period #reprompt disarmed by foregrounded app", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019353AC();
    }

    *(a1 + 1083) = 0;
  }
}

void sub_10000A05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000A100(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = sub_10001CABC(a1, a2);
  if ((v3 - 122) > 3)
  {
    v5 = "Generic";
  }

  else
  {
    v5 = off_102459F08[v3 - 122];
  }

  return sub_10001CA84(v4, v5, v2);
}

void sub_10000A154(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019939E4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLCatherineNotifier::onAppMonitorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019939F8();
    }

    v8 = qword_1025D47F8;
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
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCatherineNotifier::onAppMonitorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*a2 - 4) >= 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x10000010001uLL >> (8 * (*a2 - 4));
  }

  *(a4 + 208) = v9;
  sub_10000A33C(a4, v6);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10000A33C(uint64_t a1, __n128 a2)
{
  if (*(a1 + 200))
  {
    v2 = 65.0;
    v3 = (a1 + 232);
  }

  else
  {
    v4 = *(a1 + 208);
    v3 = (a1 + 232);
    if (v4 == 1)
    {
      v2 = 6.0;
    }

    else
    {
      v2 = 30.0;
    }
  }

  sub_10000A374(v3, v2);
}

void sub_10000A374(double *a1, double a2)
{
  *a1 = a2;
  if (qword_1025D43A0 != -1)
  {
    sub_10001CA24();
  }

  v3 = qword_1025D43A8;
  if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "HR Interpolated Set timeout to %.3f", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101948658(a2);
  }
}

id sub_10000A454(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101B0E888();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D1A62BLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B0E89C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101B0E888();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D1A62BLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B0E9A4();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_10000A658(uint64_t a1, unsigned int *a2, unsigned int *a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A28510();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLApplicationLifecycleManager::onAppMonitorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A28524();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLApplicationLifecycleManager::onAppMonitorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100008444(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10000A824(unsigned int a1, unsigned int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onAppMonitorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onAppMonitorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100008888(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10000AA00(id *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    if (!std::string::compare((a4 + 8), "com.apple.Maps"))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101951784();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136380675;
        v11 = "com.apple.Maps";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLC: Received kNotificationForegroundRunning for %{private}s", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101951CC0();
      }

      sub_1000DF90C(a1, 4);
    }
  }

  else if (*a3 == 1)
  {
    if (!std::string::compare((a4 + 8), "com.apple.Maps"))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101951784();
      }

      v5 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136380675;
        v11 = "com.apple.Maps";
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLC: Received kNotificationTerminated for %{private}s", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101951DC4();
      }

      sub_10083D458(a1, 4);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951784();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a3;
      v10 = 67240192;
      LODWORD(v11) = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLC: Received unknown notification %{public}d", &v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101951EC8(a3);
    }
  }
}

unint64_t sub_10000AC40(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t sub_10000AD98(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 0x1D)
  {
    return dword_101D7FD88[v1];
  }

  if (qword_1025D4600 != -1)
  {
    sub_101BB93E4();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#locctl,#rec,serviceTypeToSiloType,unhandled type,%d", v7, 8u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_101BB93F8(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10000AE98(uint64_t a1, uint64_t a2)
{
  if (qword_102658230 != -1)
  {
    sub_1018D8CC8();
  }

  return qword_102637048;
}

__n128 sub_10000AED4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  if ((a1[1].n128_u8[8] & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019E3B38();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v5 = a1->n128_u64[1];
      v6 = a1[1].n128_u64[0];
      v8 = 134349312;
      v9 = v5;
      v10 = 2050;
      v11 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "LocationController,#time,getTimestamp,#Warning: current latched timestamp is invalid,mct_sec,%{public}.3f,cfat_sec,%{public}.3f", &v8, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019E3C90(a1);
    }
  }

  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[8] = a1[1].n128_u8[8];
  return result;
}

void sub_10000AFE4(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  sub_100017DD0(a5, a1);
  *(a1 + 52) |= 2u;
  v10 = *(a1 + 40);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 492) |= 0x800u;
  v11 = *(v10 + 352);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 200) |= 1u;
  v12 = *(v11 + 8);
  if (!v12)
  {
    operator new();
  }

  sub_1000182AC(a5, v12);
  v13 = sub_100017F80(a2);
  if (!sub_1000183C8(v13))
  {
    sub_1018D9454();
  }

  v14 = *(v11 + 200);
  *(v11 + 192) = v13;
  *(v11 + 200) = v14 | 6;
  v15 = *(v11 + 16);
  if (!v15)
  {
    operator new();
  }

  sub_100018068(a3, v15);
  *(v11 + 200) |= 8u;
  if (!*(v11 + 24))
  {
    operator new();
  }

  v16 = *(v11 + 24);

  sub_100018068(a4, v16);
}

uint64_t sub_10000B1F8(uint64_t a1, uint64_t a2)
{
  if (qword_10265C410 != -1)
  {
    sub_1019E3B24();
  }

  return qword_102637910;
}

void sub_10000B230(uint64_t a1@<X8>)
{
  v11 = 0;
  v10 = 0;
  if (mach_get_times())
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1B7C();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "TCONV,mach_get_times failed", v8, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019D1BA4();
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *a1 = _Q0;
    *(a1 + 16) = 0xBFF0000000000000;
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 16) = sub_10000DF28(&v9);
    *(a1 + 8) = sub_1000080EC(v11);
    *a1 = sub_1000080EC(v10);
    *(a1 + 24) = 1;
  }
}

void sub_10000B324(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019E3B38();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a2;
      v6 = a2[2];
      v7 = *(a2 + 24);
      v9 = 134218496;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "LocationController,#time,setTime,set for the first time,mct,%.3f,cfat,%.3f,isValid,%d", &v9, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019E3D90(a2);
    }
  }

  v8 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v8;
  *(a1 + 32) = sub_1000081AC();
}

uint64_t sub_10000B448(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v12 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v13);
  sub_10000B324(v7, v13[0].i64);
  v14 = 12;
  v13[0].i32[0] = 12;
  v8 = sub_10000AD98(&v14);
  v13[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v14 = 4;
  sub_10000B6F4(v10, &v14, v13, (a1 + 5220), &v12, a3, a4);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 88))(result, a3, a4);
  }

  return result;
}

void sub_10000B518(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onAppNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onAppNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10000B448(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10000B6F4(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v86 = 1024;
          LODWORD(v87) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLAppMonitor_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v81 = 67109376;
          *v82 = v16;
          *&v82[4] = 1024;
          *&v82[6] = v18;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLAppMonitor_Type,silo entry invalid,from_valid,%d,to_valid,%d", v81, 14);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLAppMonitor_Type::Notification &, const CLAppMonitor_Type::NotificationData &)", "%s\n", v19);
          if (v20 != &buf)
          {
            free(v20);
          }
        }
      }

      else
      {
        v27 = sub_10000AED0();
        v29 = sub_10000B1F8(v27, v28);
        sub_10000AED4(v29, v69);
        sub_10000AFE4(v81, a2, a3, a4, v69);
        v84 |= 2u;
        v30 = v83;
        if (!v83)
        {
          operator new();
        }

        *(v83 + 492) |= 0x800u;
        v31 = *(v30 + 352);
        if (!v31)
        {
          operator new();
        }

        *(v31 + 200) |= 0x8000u;
        v32 = *(v31 + 120);
        if (!v32)
        {
          operator new();
        }

        v33 = *a5;
        *(v32 + 28) |= 1u;
        *(v32 + 8) = v33;
        v34 = sub_10000D25C(a6);
        if (!sub_10042B16C(v34))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 12088, "::CLP::LogEntry::PrivateData::AppMonitorNotification_NotificationType_IsValid(value)");
        }

        v35 = *(v32 + 28);
        *(v32 + 12) = v34;
        *(v32 + 28) = v35 | 6;
        v36 = *(v32 + 16);
        if (!v36)
        {
          operator new();
        }

        *(v36 + 20) |= 1u;
        v37 = *(v36 + 8);
        if (v37 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v37, (a7 + 8));
        v38 = sub_10000BFC0(a1, v81);
        if (*(a1 + 8) == 1)
        {
          v39 = v38;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v40 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v70);
            if (SBYTE3(v74) >= 0)
            {
              v41 = &v70;
            }

            else
            {
              v41 = v70;
            }

            v60 = v41;
            LODWORD(v62[0]) = a3->i32[0];
            sub_1013230DC(v62, v67);
            if (v68 >= 0)
            {
              v42 = v67;
            }

            else
            {
              v42 = v67[0];
            }

            v64 = *a4;
            v43 = __p;
            v44 = sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v43 = __p[0];
            }

            v46 = *a6;
            v47 = sub_10000B1F8(v44, v45);
            v48 = sub_100125220(v47);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v39;
            v86 = 2080;
            v87 = v60;
            v88 = 2080;
            v89 = v42;
            v90 = 2080;
            v91 = v43;
            v92 = 1024;
            v93 = v46;
            v94 = 2050;
            v95 = v48;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLAppMonitor_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (SBYTE3(v74) < 0)
            {
              operator delete(v70);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v49 = qword_1025D4608;
            sub_101322EE0(a2, v67);
            if (v68 >= 0)
            {
              v50 = v67;
            }

            else
            {
              v50 = v67[0];
            }

            v64 = a3->i32[0];
            v51 = __p;
            sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v51 = __p[0];
            }

            v61 = *a4;
            v52 = sub_1013230DC(&v61, v62);
            if (v63 >= 0)
            {
              v54 = v62;
            }

            else
            {
              v54 = v62[0];
            }

            v55 = *a6;
            v56 = sub_10000B1F8(v52, v53);
            v57 = sub_100125220(v56);
            LODWORD(v70) = 67110402;
            HIDWORD(v70) = v39;
            v71 = 2080;
            v72 = v50;
            v73 = 2080;
            v74 = v51;
            v75 = 2080;
            v76 = v54;
            v77 = 1024;
            v78 = v55;
            v79 = 2050;
            v80 = v57;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v49, 2, "#locctl,#rec,recordMessage,CLAppMonitor_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v70, 54);
            v59 = v58;
            if (v63 < 0)
            {
              operator delete(v62[0]);
            }

            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLAppMonitor_Type::Notification &, const CLAppMonitor_Type::NotificationData &)", "%s\n", v59);
            if (v59 != &buf)
            {
              free(v59);
            }
          }
        }

        sub_10000CE1C(v81);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v22 = SBYTE3(v89) >= 0 ? &buf : buf;
        *v81 = 136315138;
        *v82 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLAppMonitor_Type,unsupported message type,%s", v81, 0xCu);
        if (SBYTE3(v89) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DA854();
      }
    }
  }
}

uint64_t sub_10000BFC0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#locctl,#rec,write:protobuf serializer object not initialized", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D935C();
    }

    return 0;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#locctl,#rec,write:session not open", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D9270();
    }

    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v3 = wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
  if (v3)
  {
    sub_1000145C0(*(a1 + 16), __p);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,write:could not serialize protobuf message", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(buf);
      v10 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,write:could not serialize protobuf message", &v10, 2);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationControllerRecorder::write(const CLP::LogEntry::LogEntry &)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_10000C250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000C278(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 200);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637F30 + 8);
  }

  v6 = sub_1000183D4(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 192);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 200);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 16);
    if (!v11)
    {
      v11 = *(qword_102637F30 + 16);
    }

    v12 = sub_100017C5C(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
    v3 = *(a1 + 200);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
    v15 = *(qword_102637F30 + 24);
  }

  v16 = sub_100017C5C(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v19 = *(a1 + 32);
  if (!v19)
  {
    v19 = *(qword_102637F30 + 32);
  }

  v20 = sub_100027774(v19, a2);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
  }

  else
  {
    v22 = 1;
  }

  v4 = (v4 + v21 + v22 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v23 = *(a1 + 40);
  if (!v23)
  {
    v23 = *(qword_102637F30 + 40);
  }

  v24 = sub_100270D00(v23, a2);
  v25 = v24;
  if (v24 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
  }

  else
  {
    v26 = 1;
  }

  v4 = (v4 + v25 + v26 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v27 = *(a1 + 48);
  if (!v27)
  {
    v27 = *(qword_102637F30 + 48);
  }

  v28 = sub_100DEFD1C(v27, a2);
  v29 = v28;
  if (v28 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
  }

  else
  {
    v30 = 1;
  }

  v4 = (v4 + v29 + v30 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v31 = *(a1 + 56);
    if (!v31)
    {
      v31 = *(qword_102637F30 + 56);
    }

    v32 = sub_100DF1180(v31, a2);
    v33 = v32;
    if (v32 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2);
    }

    else
    {
      v34 = 1;
    }

    v4 = (v4 + v33 + v34 + 1);
    v3 = *(a1 + 200);
  }

LABEL_61:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v3 & 0x100) != 0)
  {
    v35 = *(a1 + 64);
    if (!v35)
    {
      v35 = *(qword_102637F30 + 64);
    }

    v36 = sub_100DF1CD8(v35, a2);
    v37 = v36;
    if (v36 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
    }

    else
    {
      v38 = 1;
    }

    v4 = (v4 + v37 + v38 + 1);
    v3 = *(a1 + 200);
    if ((v3 & 0x200) == 0)
    {
LABEL_64:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v39 = *(a1 + 72);
  if (!v39)
  {
    v39 = *(qword_102637F30 + 72);
  }

  v40 = sub_100DF3738(v39, a2);
  v41 = v40;
  if (v40 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
  }

  else
  {
    v42 = 1;
  }

  v4 = (v4 + v41 + v42 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x400) == 0)
  {
LABEL_65:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_83:
  v43 = *(a1 + 80);
  if (!v43)
  {
    v43 = *(qword_102637F30 + 80);
  }

  v44 = sub_100DF4230(v43, a2);
  v45 = v44;
  if (v44 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2);
  }

  else
  {
    v46 = 1;
  }

  v4 = (v4 + v45 + v46 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x800) == 0)
  {
LABEL_66:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_89:
  v47 = *(a1 + 88);
  if (!v47)
  {
    v47 = *(qword_102637F30 + 88);
  }

  v48 = sub_100DF4F0C(v47, a2);
  v49 = v48;
  if (v48 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2);
  }

  else
  {
    v50 = 1;
  }

  v4 = (v4 + v49 + v50 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x1000) == 0)
  {
LABEL_67:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_95:
  v51 = *(a1 + 96);
  if (!v51)
  {
    v51 = *(qword_102637F30 + 96);
  }

  v52 = sub_100DF5C00(v51, a2);
  v53 = v52;
  if (v52 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2);
  }

  else
  {
    v54 = 1;
  }

  v4 = (v4 + v53 + v54 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x2000) == 0)
  {
LABEL_68:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_101:
  v55 = *(a1 + 104);
  if (!v55)
  {
    v55 = *(qword_102637F30 + 104);
  }

  v56 = sub_100DF68F4(v55, a2);
  v57 = v56;
  if (v56 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56, a2);
  }

  else
  {
    v58 = 1;
  }

  v4 = (v4 + v57 + v58 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x4000) == 0)
  {
LABEL_69:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_113;
  }

LABEL_107:
  v59 = *(a1 + 112);
  if (!v59)
  {
    v59 = *(qword_102637F30 + 112);
  }

  v60 = sub_100DF7B30(v59, a2);
  v61 = v60;
  if (v60 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2);
  }

  else
  {
    v62 = 1;
  }

  v4 = (v4 + v61 + v62 + 1);
  v3 = *(a1 + 200);
  if ((v3 & 0x8000) != 0)
  {
LABEL_113:
    v63 = *(a1 + 120);
    if (!v63)
    {
      v63 = *(qword_102637F30 + 120);
    }

    v64 = sub_10000FA60(v63, a2);
    v65 = v64;
    if (v64 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64, a2);
    }

    else
    {
      v66 = 1;
    }

    v4 = (v4 + v65 + v66 + 2);
    v3 = *(a1 + 200);
  }

LABEL_119:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_177;
  }

  if ((v3 & 0x10000) != 0)
  {
    v67 = *(a1 + 128);
    if (!v67)
    {
      v67 = *(qword_102637F30 + 128);
    }

    v68 = sub_10001F5FC(v67, a2);
    v69 = v68;
    if (v68 >= 0x80)
    {
      v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
    }

    else
    {
      v70 = 1;
    }

    v4 = (v4 + v69 + v70 + 2);
    v3 = *(a1 + 200);
    if ((v3 & 0x20000) == 0)
    {
LABEL_122:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_141;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v71 = *(a1 + 136);
  if (!v71)
  {
    v71 = *(qword_102637F30 + 136);
  }

  v72 = sub_1000C7DB0(v71, a2);
  v73 = v72;
  if (v72 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72, a2);
  }

  else
  {
    v74 = 1;
  }

  v4 = (v4 + v73 + v74 + 2);
  v3 = *(a1 + 200);
  if ((v3 & 0x40000) == 0)
  {
LABEL_123:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_147;
  }

LABEL_141:
  v75 = *(a1 + 144);
  if (!v75)
  {
    v75 = *(qword_102637F30 + 144);
  }

  v76 = sub_100DFC37C(v75, a2);
  v77 = v76;
  if (v76 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76, a2);
  }

  else
  {
    v78 = 1;
  }

  v4 = (v4 + v77 + v78 + 2);
  v3 = *(a1 + 200);
  if ((v3 & 0x80000) == 0)
  {
LABEL_124:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_153;
  }

LABEL_147:
  v79 = *(a1 + 152);
  if (!v79)
  {
    v79 = *(qword_102637F30 + 152);
  }

  v80 = sub_100119FB0(v79, a2);
  v81 = v80;
  if (v80 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80, a2);
  }

  else
  {
    v82 = 1;
  }

  v4 = (v4 + v81 + v82 + 2);
  v3 = *(a1 + 200);
  if ((v3 & 0x100000) == 0)
  {
LABEL_125:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

LABEL_153:
  v83 = *(a1 + 160);
  if (!v83)
  {
    v83 = *(qword_102637F30 + 160);
  }

  v84 = sub_1000D4388(v83, a2);
  v85 = v84;
  if (v84 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84, a2);
  }

  else
  {
    v86 = 1;
  }

  v4 = (v4 + v85 + v86 + 2);
  v3 = *(a1 + 200);
  if ((v3 & 0x200000) == 0)
  {
LABEL_126:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_165;
  }

LABEL_159:
  v87 = *(a1 + 168);
  if (!v87)
  {
    v87 = *(qword_102637F30 + 168);
  }

  v88 = sub_10030A124(v87, a2);
  v89 = v88;
  if (v88 >= 0x80)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88, a2);
  }

  else
  {
    v90 = 1;
  }

  v4 = (v4 + v89 + v90 + 2);
  v3 = *(a1 + 200);
  if ((v3 & 0x400000) == 0)
  {
LABEL_127:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_171;
  }

LABEL_165:
  v91 = *(a1 + 176);
  if (!v91)
  {
    v91 = *(qword_102637F30 + 176);
  }

  v92 = sub_100DF75E8(v91, a2);
  v93 = v92;
  if (v92 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92, a2);
  }

  else
  {
    v94 = 1;
  }

  v4 = (v4 + v93 + v94 + 2);
  if ((*(a1 + 200) & 0x800000) != 0)
  {
LABEL_171:
    v95 = *(a1 + 184);
    if (!v95)
    {
      v95 = *(qword_102637F30 + 184);
    }

    v96 = sub_100DFF4B0(v95, a2);
    v98 = v96;
    if (v96 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96, v97);
    }

    else
    {
      v99 = 1;
    }

    v4 = (v4 + v98 + v99 + 2);
  }

LABEL_177:
  *(a1 + 196) = v4;
  return v4;
}

uint64_t sub_10000C9D4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 200);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637F30 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 200);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 192), a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_30:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637F30 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_33:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102637F30 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_36:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102637F30 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_39:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102637F30 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_42:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102637F30 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v12, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_45:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102637F30 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_48:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_102637F30 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_51:
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(qword_102637F30 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v15, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_54:
  v16 = *(v5 + 80);
  if (!v16)
  {
    v16 = *(qword_102637F30 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v16, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

LABEL_57:
  v17 = *(v5 + 88);
  if (!v17)
  {
    v17 = *(qword_102637F30 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v17, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_63;
  }

LABEL_60:
  v18 = *(v5 + 96);
  if (!v18)
  {
    v18 = *(qword_102637F30 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v18, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_63:
  v19 = *(v5 + 104);
  if (!v19)
  {
    v19 = *(qword_102637F30 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v19, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_66:
  v20 = *(v5 + 112);
  if (!v20)
  {
    v20 = *(qword_102637F30 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v20, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_69:
  v21 = *(v5 + 120);
  if (!v21)
  {
    v21 = *(qword_102637F30 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v21, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_75;
  }

LABEL_72:
  v22 = *(v5 + 128);
  if (!v22)
  {
    v22 = *(qword_102637F30 + 128);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v22, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_78;
  }

LABEL_75:
  v23 = *(v5 + 136);
  if (!v23)
  {
    v23 = *(qword_102637F30 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v23, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_78:
  v24 = *(v5 + 144);
  if (!v24)
  {
    v24 = *(qword_102637F30 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v24, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_84;
  }

LABEL_81:
  v25 = *(v5 + 152);
  if (!v25)
  {
    v25 = *(qword_102637F30 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v25, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_87;
  }

LABEL_84:
  v26 = *(v5 + 160);
  if (!v26)
  {
    v26 = *(qword_102637F30 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v26, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_90;
  }

LABEL_87:
  v27 = *(v5 + 168);
  if (!v27)
  {
    v27 = *(qword_102637F30 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v27, a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      return result;
    }

    goto LABEL_93;
  }

LABEL_90:
  v28 = *(v5 + 176);
  if (!v28)
  {
    v28 = *(qword_102637F30 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v28, a2, a4);
  if ((*(v5 + 200) & 0x800000) != 0)
  {
LABEL_93:
    v29 = *(v5 + 184);
    if (!v29)
    {
      v29 = *(qword_102637F30 + 184);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v29, a2, a4);
  }

  return result;
}

void *sub_10000CE20(void *result)
{
  if (qword_102637F30 != result)
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

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    result = v1[23];
    if (result)
    {
      v24 = *(*result + 8);

      return v24();
    }
  }

  return result;
}

uint64_t sub_10000D25C(unsigned int *a1)
{
  v2 = *a1;
  if (v2 < 0xA && ((0x21Fu >> v2) & 1) != 0)
  {
    return dword_101C80800[v2];
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertAppMonitorNotificationTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DA958(a1);
    return 0;
  }

  return result;
}

void *sub_10000D360(void *result)
{
  *result = off_1024B4510;
  result[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  result[2] = 0;
  return result;
}

void *sub_10000D38C(void *result)
{
  *result = &off_1024B4588;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_10000D3B0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192947C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBTLEFenceManagerConcrete::onAppMonitorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929490();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBTLEFenceManagerConcrete::onAppMonitorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10000D57C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10000D57C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if ((*a3 - 1) >= 3)
  {
    if (*a3 == 4)
    {
      *(a1 + 184) = *a4;
      std::string::operator=((a1 + 192), (a4 + 8));
      std::string::operator=((a1 + 216), (a4 + 32));
      std::string::operator=((a1 + 240), (a4 + 56));
      std::string::operator=((a1 + 264), (a4 + 80));
      *(a1 + 288) = *(a4 + 104);
    }
  }

  else
  {
    v6 = *(a4 + 31);
    if (v6 >= 0)
    {
      v7 = *(a4 + 31);
    }

    else
    {
      v7 = *(a4 + 16);
    }

    v8 = *(a1 + 215);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a1 + 200);
    }

    if (v7 == v8)
    {
      v11 = (a1 + 192);
      v10 = *(a1 + 192);
      v12 = v6 >= 0 ? (a4 + 8) : *(a4 + 8);
      v13 = v9 >= 0 ? (a1 + 192) : *(a1 + 192);
      if (!memcmp(v12, v13, v7))
      {
        *(a1 + 184) = -1;
        if (v9 < 0)
        {
          operator delete(v10);
        }

        *v11 = 0;
        *(a1 + 200) = 0;
        *(a1 + 208) = 0;
        if (*(a1 + 239) < 0)
        {
          operator delete(*(a1 + 216));
        }

        *(a1 + 216) = 0;
        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        if (*(a1 + 263) < 0)
        {
          operator delete(*(a1 + 240));
        }

        *(a1 + 240) = 0;
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        if (*(a1 + 287) < 0)
        {
          operator delete(*(a1 + 264));
        }

        *(a1 + 264) = 0;
        *(a1 + 272) = 0;
        *(a1 + 288) = 0;
        *(a1 + 280) = 0;
      }
    }
  }
}

void sub_10000D6C8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAppNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAppNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10000D894(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10000D894(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v7 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = sub_1000081AC();
    v10 = *a3;
    v11 = a4 + 8;
    if (*(a4 + 31) < 0)
    {
      v11 = *(a4 + 8);
    }

    *buf = 134349827;
    v15 = Current;
    v16 = 2050;
    v17 = v9;
    v18 = 1026;
    v19 = v10;
    v20 = 2081;
    v21 = v11;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,machContTime,%{public}.1lf,onApp,ReceivedAppNotification,%{public}d,%{private}s", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191511C(a3, a4);
  }

  if (*(a4 + 31) < 0)
  {
    sub_100007244(__p, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    *__p = *(a4 + 8);
    v13 = *(a4 + 24);
  }

  sub_10000DA44(a1, __p, (*a3 - 1) < 2);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000DA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000DA44(uint64_t a1, const void **a2, int a3)
{
  v4 = sub_1000081AC();
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 6368) = v4;
  v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6);
  if (v7)
  {
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        sub_10000EC00(v29, [*(*(&v31 + 1) + 8 * v9) UTF8String]);
        if (SHIBYTE(v30) < 0)
        {
          sub_100007244(__p, v29[0], v29[1]);
        }

        else
        {
          *__p = *v29;
          *&__p[16] = v30;
        }

        v44 = v4;
        sub_100288728(&v35, __p, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (!sub_100192868(a1 + 6344, v29))
        {
          if (SHIBYTE(v30) < 0)
          {
            sub_100007244(__p, v29[0], v29[1]);
          }

          else
          {
            *__p = *v29;
            *&__p[16] = v30;
          }

          v44 = v4;
          sub_100288728((a1 + 6344), __p, __p);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (qword_1025D45E0 != -1)
          {
            sub_1019133C4();
          }

          v10 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
          {
            v11 = v29;
            if (v30 < 0)
            {
              v11 = v29[0];
            }

            *__p = 134349571;
            *&__p[4] = Current;
            *&__p[12] = 2050;
            *&__p[14] = v4;
            *&__p[22] = 2081;
            v44 = *&v11;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,machContTime,%{public}.1lf,onApp,newApp,%{private}s", __p, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019133EC(__p);
            v12 = v29;
            if (v30 < 0)
            {
              v12 = v29[0];
            }

            v37 = 134349571;
            v38 = Current;
            v39 = 2050;
            v40 = v4;
            v41 = 2081;
            v42 = v12;
            LODWORD(v26) = 32;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D45E8, 2, "CLAccessoryAWD,%{public}.1lf,machContTime,%{public}.1lf,onApp,newApp,%{private}s", &v37, v26);
            v14 = v13;
            sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::updateLocationAppStatus(const std::string, const BOOL)", "%s\n", v13);
            if (v14 != __p)
            {
              free(v14);
            }
          }
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6);
      v7 = v15;
    }

    while (v15);
  }

  v16 = *(a1 + 6344);
  if (v16 != a1 + 6352)
  {
    do
    {
      if (!sub_100192868(&v35, (v16 + 32)))
      {
        goto LABEL_58;
      }

      v17 = *(v16 + 55);
      if (v17 >= 0)
      {
        v18 = *(v16 + 55);
      }

      else
      {
        v18 = *(v16 + 40);
      }

      v19 = *(a2 + 23);
      v20 = v19;
      if (v19 < 0)
      {
        v19 = a2[1];
      }

      if (v18 != v19 || (v17 >= 0 ? (v21 = (v16 + 32)) : (v21 = *(v16 + 32)), v20 >= 0 ? (v22 = a2) : (v22 = *a2), !memcmp(v21, v22, v18) ? (v23 = a3 == 0) : (v23 = 1), v23))
      {
        v24 = *(v16 + 8);
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
            v25 = *(v16 + 16);
            v23 = *v25 == v16;
            v16 = v25;
          }

          while (!v23);
        }
      }

      else
      {
LABEL_58:
        sub_10030FDCC(a1 + 2664, (v16 + 32), (v16 + 56), v4);
        v25 = sub_1001D2ED0((a1 + 6344), v16);
      }

      v16 = v25;
    }

    while (v25 != (a1 + 6352));
  }

  sub_10001AF44(&v35, v36[0]);
}

void sub_10000DEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10001AF44(&a31, a32);
  _Unwind_Resume(a1);
}

void sub_10000DF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    if (sub_100018688(a1, v5, a3))
    {
      [*(a1 + 136) persist];
    }

    v6 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v5), "dictionary"}];
    v9 = [v5 legacyClientKey];
    v10 = v6;
    sub_1000188B0([NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1], "clientStatus");
    sub_10000EC00(__p, "");
    sub_100018918(a1, v5, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10000E060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000E08C(std::string *this@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v10 = std::string::compare(this, "Location in use on paired watch by 3rd party app") == 0;
  sub_10000E198(&v14, a2);
  *v12 = *a3;
  v13 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  __p = *this;
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  sub_10000EE68(a5, &v14, v12, &__p, v5, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v15)
  {
    sub_100008080(v15);
  }
}

void sub_10000E170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_101A09890(&a16, &a20);
  _Unwind_Resume(a1);
}

void *sub_10000E198(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_10001CA38();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_10000E284(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10000E2A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *buf = a2;
  v7 = sub_10000F264((a1 + 16), a2, &unk_101C66300, buf) + 5;
  v8 = &dword_100000014;
  while (v8 != -4)
  {
    v9 = *(&unk_101CEF3A8 + v8);
    if (v9 >= 6)
    {
      sub_1000432E8("array::at");
    }

    v8 -= 4;
    if (*(v7 + v9))
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_7:
  if (qword_1025D47A0 != -1)
  {
    sub_101A09650();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = v11;
    v25 = 2050;
    v26 = v9;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLIUA updating AssertionRecord, ClientKey:%{public, location:escape_only}s, AssertionLevel:%{public, location:CLClientInUseLevel}lld}", buf, 0x26u);
  }

  (*(a4 + 16))(a4, v7);
  v12 = &dword_100000014;
  while (v12 != -4)
  {
    v13 = *(&unk_101CEF3A8 + v12);
    if (v13 >= 6)
    {
      sub_1000432E8("array::at");
    }

    v12 -= 4;
    if (*(v7 + v13))
    {
      goto LABEL_20;
    }
  }

  v13 = 0;
LABEL_20:
  if (qword_1025D47A0 != -1)
  {
    sub_101A09650();
  }

  v14 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = v15;
    v25 = 2050;
    v26 = v13;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLIUA AssertionRecord updated, ClientKey:%{public, location:escape_only}s, AssertionLevel:%{public, location:CLClientInUseLevel}lld}", buf, 0x26u);
  }

  if (!v13)
  {
    sub_1000337E4((a1 + 16), a2);
  }

  if (v13 != v9 && *(a1 + 56))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A09650();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLIUA in-use level changed for client, ClientKey:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v18 = *(a1 + 56);
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    (*(*v18 + 16))(v18, [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v19]], v13);
  }
}

uint64_t sub_10000E618(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  if (*(result + 36) == 1)
  {
    if (v3 >= 6)
    {
      sub_1000432E8("array::at");
    }

    ++*(a2 + 4 * v3);
  }

  else
  {

    return sub_10028DA6C(a2, v3);
  }

  return result;
}

void sub_10000E670(void *a1, const char *a2, unsigned int *a3, int *a4, void *a5)
{
  if (a5)
  {
    objc_msgSend_cppClientKey(a5, a2);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101A09650();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a3;
    v10 = *a4;
    if (*(a4 + 31) >= 0)
    {
      v11 = a4 + 2;
    }

    else
    {
      v11 = *(a4 + 1);
    }

    v12 = __p;
    if (v32 < 0)
    {
      v12 = __p[0];
    }

    *buf = 68290050;
    v34 = 2082;
    v35 = "";
    v36 = 2050;
    v37 = v9;
    v38 = 1026;
    *v39 = v10;
    *&v39[4] = 2082;
    *&v39[6] = v11;
    v40 = 2082;
    v41 = v12;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLIUA AppMonitor notification, notification:%{public, location:CLAppMonitor_Type::Notification}lld, pid:%{public}d, bundleId:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s}", buf, 0x36u);
  }

  v13 = *a3;
  if (*a3 <= 3)
  {
    if (v13 - 2 >= 2)
    {
      if (v13 == 1)
      {
        sub_1002FA858(a1 + 10, a4 + 1);
LABEL_17:
        sub_10001BBF4(a1, __p);
        goto LABEL_47;
      }

      goto LABEL_40;
    }

LABEL_28:
    v21 = sub_1005D7C24(a1 + 10, a4 + 1);
    if (v21)
    {
      sub_10000EC00(buf, "Decaying in-use status from process state");
      sub_1002FAB00(a1, __p, buf);
      if (SBYTE3(v37) < 0)
      {
        operator delete(*buf);
      }

      sub_100546628(a1 + 10, v21, buf);
      sub_10001BE98(buf);
      goto LABEL_47;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101A09650();
    }

    v22 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      if (*(a4 + 31) >= 0)
      {
        v23 = a4 + 2;
      }

      else
      {
        v23 = *(a4 + 1);
      }

      *buf = 68289282;
      v34 = 2082;
      v35 = "";
      v36 = 2082;
      v37 = v23;
      v17 = "{msg%{public}.0s:skip erasing #CLIUA for RunningBoard Process State. Does not exists, bundleId:%{public, location:escape_only}s}";
      v18 = v22;
      v19 = OS_LOG_TYPE_DEBUG;
      v20 = 28;
LABEL_39:
      _os_log_impl(dword_100000000, v18, v19, v17, buf, v20);
      goto LABEL_47;
    }

    goto LABEL_47;
  }

  if (v13 == 6)
  {
    goto LABEL_28;
  }

  if (v13 != 4)
  {
LABEL_40:
    if (qword_1025D47A0 != -1)
    {
      sub_101A09650();
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v25 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      v34 = 2082;
      v35 = "";
      v36 = 1026;
      LODWORD(v37) = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Unexpected app monitor notification, notification:%{public}d}", buf, 0x18u);
      if (qword_1025D47A0 != -1)
      {
        sub_101A09650();
      }
    }

    v26 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v27 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      v34 = 2082;
      v35 = "";
      v36 = 1026;
      LODWORD(v37) = v27;
      _os_signpost_emit_with_name_impl(dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLIUA Unexpected app monitor notification", "{msg%{public}.0s:#CLIUA Unexpected app monitor notification, notification:%{public}d}", buf, 0x18u);
    }

    goto LABEL_47;
  }

  if (!sub_1005D7C24(a1 + 10, a4 + 1))
  {
    if (SHIBYTE(v32) < 0)
    {
      sub_100007244(__dst, __p[0], __p[1]);
    }

    else
    {
      *__dst = *__p;
      v30 = v32;
    }

    sub_10000EC00(&v28, "Process state from RunningBoard");
    sub_10000E08C(&v28, a1, __dst, 5, buf);
    sub_10001BEE4(a1 + 10, a4 + 1, (a4 + 2));
    sub_10001BAA0(buf);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_17;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101A09650();
  }

  v14 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005D7C24(a1 + 10, a4 + 1);
    v15 = *(sub_1005D7C24(a1 + 10, a4 + 1) + 22);
    if (*(a4 + 31) >= 0)
    {
      v16 = a4 + 2;
    }

    else
    {
      v16 = *(a4 + 1);
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2050;
    v37 = v15;
    v38 = 2082;
    *v39 = v16;
    v17 = "{msg%{public}.0s:skip taking #CLIUA for RunningBoard Process State. Already exists, AssertionLevel:%{public, location:CLClientInUseLevel}lld, bundleId:%{public, location:escape_only}s}";
    v18 = v14;
    v19 = OS_LOG_TYPE_DEFAULT;
    v20 = 38;
    goto LABEL_39;
  }

LABEL_47:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000EB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000EC00(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_10000ECB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = a4;
  if ((a4 - 6) <= 0xFFFFFFFA)
  {
    sub_101A096B8();
  }

  [objc_msgSend(*(a1 + 72) "silo")];
  if (qword_1025D47A0 != -1)
  {
    sub_101A0963C();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    *buf = 68290050;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v12;
    v22 = 2082;
    v23 = v13;
    v24 = 2050;
    v25 = v5;
    v26 = 1026;
    v27 = a5;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLIUA Marking change, clientKey:%{public, location:escape_only}s, reason:%{public, location:escape_only}s, AssertionLevel:%{public, location:CLClientInUseLevel}lld, coming:%{public}hhd}", buf, 0x36u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E618;
  v14[3] = &unk_10249BA08;
  v16 = a5;
  v15 = v5;
  sub_10000E2A0(a1, a2, v11, v14);
}

uint64_t sub_10000EE68(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4, int a5, char a6)
{
  v8 = *a3;
  *(a1 + 16) = *(a3 + 2);
  *a1 = v8;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v9 = *a4;
  *(a1 + 40) = *(a4 + 2);
  *(a1 + 24) = v9;
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  *(a1 + 48) = a5;
  v10 = *a2;
  *(a1 + 56) = *a2;
  v11 = a2[1];
  *(a1 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
    v10 = *a2;
  }

  v12 = (a1 + 24);
  *(a1 + 72) = a6;
  if (!v10)
  {
    goto LABEL_11;
  }

  v13 = *(a1 + 23);
  if (v13 < 0)
  {
    v13 = *(a1 + 8);
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = *(a1 + 47);
  if (v14 < 0)
  {
    v14 = *(a1 + 32);
  }

  if (!v14)
  {
LABEL_11:
    if (qword_1025D47A0 != -1)
    {
      sub_101A0963C();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v17 = *a2 != 0;
      v18 = a1;
      if (*(a1 + 23) < 0)
      {
        v18 = *a1;
      }

      v19 = a1 + 24;
      if (*(a1 + 47) < 0)
      {
        v19 = *v12;
      }

      *buf = 68290307;
      v29 = 2082;
      v30 = "";
      v31 = 1026;
      v32 = v17;
      v33 = 2082;
      v34 = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 2082;
      v38 = "assert";
      v39 = 2081;
      v40 = "tracker && !fClientKey.empty() && !fReason.empty()";
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Required parameter missing, logic:%{public}hhd, clientKey:%{public, location:escape_only}s, reason:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x40u);
      if (qword_1025D47A0 != -1)
      {
        sub_101A09650();
      }
    }

    v20 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v21 = *a2 != 0;
      v22 = a1;
      if (*(a1 + 23) < 0)
      {
        v22 = *a1;
      }

      v23 = a1 + 24;
      if (*(a1 + 47) < 0)
      {
        v23 = *v12;
      }

      *buf = 68290307;
      v29 = 2082;
      v30 = "";
      v31 = 1026;
      v32 = v21;
      v33 = 2082;
      v34 = v22;
      v35 = 2082;
      v36 = v23;
      v37 = 2082;
      v38 = "assert";
      v39 = 2081;
      v40 = "tracker && !fClientKey.empty() && !fReason.empty()";
      _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLIUA Required parameter missing", "{msg%{public}.0s:#CLIUA Required parameter missing, logic:%{public}hhd, clientKey:%{public, location:escape_only}s, reason:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x40u);
      if (qword_1025D47A0 != -1)
      {
        sub_101A09650();
      }
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v25 = *a2 != 0;
      v26 = a1;
      if (*(a1 + 23) < 0)
      {
        v26 = *a1;
      }

      v27 = a1 + 24;
      if (*(a1 + 47) < 0)
      {
        v27 = *v12;
      }

      *buf = 68290307;
      v29 = 2082;
      v30 = "";
      v31 = 1026;
      v32 = v25;
      v33 = 2082;
      v34 = v26;
      v35 = 2082;
      v36 = v27;
      v37 = 2082;
      v38 = "assert";
      v39 = 2081;
      v40 = "tracker && !fClientKey.empty() && !fReason.empty()";
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#CLIUA Required parameter missing, logic:%{public}hhd, clientKey:%{public, location:escape_only}s, reason:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x40u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLInUseLevelTracker.mm", 23, "Assertion");
    __break(1u);
  }

  sub_10000ECB8(v10, a1, (a1 + 24), *(a1 + 48), 1);
  return a1;
}

void sub_10000F238(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_101A09678(v1, v2);
  _Unwind_Resume(a1);
}

const void **sub_10000F264(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_100007070(a1, a2);
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
    sub_10000E1DC();
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

  if (!sub_100019DF4(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_10000F4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000F4DC(uint64_t a1, const void **a2)
{
  result = *(a1 + 4448);
  if (!result)
  {
    return result;
  }

  result = (*(*result + 48))(result);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(result);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *v18;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v4);
      }

      sub_10000EC00(__p, [*(*(&v17 + 1) + 8 * i) UTF8String]);
      v8 = v16;
      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = *(a2 + 23);
      v11 = v10;
      if (v10 < 0)
      {
        v10 = a2[1];
      }

      if (v9 != v10)
      {
        v14 = 0;
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_23:
        operator delete(__p[0]);
        goto LABEL_24;
      }

      if ((v16 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if (v11 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      v14 = memcmp(v12, v13, v9) == 0;
      if (v8 < 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v14)
      {
        return 1;
      }
    }

    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
    result = 0;
    if (v5)
    {
      continue;
    }

    return result;
  }
}

void sub_10000F68C(uint64_t result, int *a2, uint64_t a3)
{
  if (*(result + 3912))
  {
    v5 = *a2;
    if ((*a2 - 1) < 3)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1019578A4();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v7 = a3 + 8;
        if (*(a3 + 31) < 0)
        {
          v7 = *(a3 + 8);
        }

        v17 = 136315138;
        v18 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLMM,locationApp backgrounded or terminated,%s", &v17, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101957FBC();
      }

LABEL_11:
      sub_10001AFA8(result, 0, 0);
      return;
    }

    if (v5 == 9 || v5 == 4)
    {
      v9 = (a3 + 8);
      if (!sub_10000F4DC(result, (a3 + 8)))
      {
        if (qword_1025D4600 != -1)
        {
          sub_1019578A4();
        }

        v13 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (*(a3 + 31) >= 0)
          {
            v14 = a3 + 8;
          }

          else
          {
            v14 = *(a3 + 8);
          }

          v17 = 136315138;
          v18 = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLMM,locationApp is not foreground,%s", &v17, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019580C0();
        }

        goto LABEL_11;
      }

      if (qword_1025D4600 != -1)
      {
        sub_1019578A4();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (*(a3 + 31) >= 0)
        {
          v11 = a3 + 8;
        }

        else
        {
          v11 = *(a3 + 8);
        }

        v17 = 136315138;
        v18 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLMM,locationApp in foreground,%s", &v17, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019581C0();
      }

      v12 = *(a3 + 31);
      if (v12 < 0)
      {
        if (*(a3 + 16) != 14)
        {
LABEL_48:
          v16 = 0;
LABEL_49:
          sub_10001AFA8(result, 1, v16);
          return;
        }

        v9 = *v9;
      }

      else if (v12 != 14)
      {
        goto LABEL_48;
      }

      v16 = *v9 == 0x6C7070612E6D6F63 && *(v9 + 6) == 0x7370614D2E656C70;
      goto LABEL_49;
    }
  }
}

id sub_10000F96C(uint64_t a1)
{
  v1 = [objc_msgSend(**(a1 + 8) "vendor")];

  return [v1 syncgetNonSystemLocationClientKeys];
}

uint64_t sub_10000F9A8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EA0 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_10000FA44(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return result;
}

uint64_t sub_10000FA60(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637EA0 + 16);
    }

    v9 = sub_10000FB5C(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_10000FB5C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_10000FBDC(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B4588;
  if (qword_102637EA0 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10000FC68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10000FBDC(a1);

  operator delete();
}

uint64_t sub_10000FCA0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_10000FD14(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4510;
  sub_10000FCA0(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t *sub_10000FF38(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = os_transaction_create();
  a1[1] = 0;
  if (!a3)
  {
    a1[1] = [NSString stringWithUTF8String:a2];
    if (qword_1025D4880 != -1)
    {
      dispatch_once(&qword_1025D4880, &stru_102504868);
    }

    v6 = qword_1025D4888;
    if (os_log_type_enabled(qword_1025D4888, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[1];
      *buf = 134349314;
      v17 = a1;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%{public}p) %{public}@", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4880 != -1)
      {
        dispatch_once(&qword_1025D4880, &stru_102504868);
      }

      v9 = a1[1];
      v12 = 134349314;
      v13 = a1;
      v14 = 2114;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4888, 0, "os_transaction created: (%{public}p) %{public}@", &v12, 22);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "CLAutoOSTransaction::CLAutoOSTransaction(const char *, LoggingPolicy)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a1;
}

unint64_t sub_100010170(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t sub_10001034C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 744);
  if (vabdd_f64(*(a2 + 16), v2) >= 1.0)
  {
    v4 = result;
    if (*(result + 760) == 1)
    {
      *(result + 760) = 0;
    }

    v5 = *(a2 + 16);
    *(result + 728) = *a2;
    *(result + 744) = v5;
    *(result + 760) = 1;
    *buf = 36;
    v6 = sub_10000608C(result, buf, 1);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v7 = qword_1025D4608;
    v8 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      v10 = *(v4 + 728);
      v11 = *(v4 + 736);
      v12 = *(v4 + 744);
      v13 = sub_10000B1F8(v8, v9);
      v14 = sub_100125220(v13);
      *buf = 67241472;
      v36 = v10;
      v37 = 2050;
      v38 = v11;
      v39 = 2050;
      v40 = v12;
      v41 = 2050;
      v42 = v2;
      v43 = 2050;
      v44 = v14;
      v45 = 1026;
      v46 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "LocationController,gnssPredictedAvailability,%{public}d,probability,%{public}.3f,timestamp,%{public}.3f,lastPredictionTimestamp,%{public}.3f,propagation_us,%{public}.3f,clients,%{public}d", buf, 0x36u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v17 = qword_1025D4608;
      v18 = *(v4 + 728);
      v19 = *(v4 + 736);
      v20 = *(v4 + 744);
      v21 = sub_10000B1F8(v15, v16);
      v24[0] = 67241472;
      v24[1] = v18;
      v25 = 2050;
      v26 = v19;
      v27 = 2050;
      v28 = v20;
      v29 = 2050;
      v30 = v2;
      v31 = 2050;
      v32 = sub_100125220(v21);
      v33 = 1026;
      v34 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v17, 2, "LocationController,gnssPredictedAvailability,%{public}d,probability,%{public}.3f,timestamp,%{public}.3f,lastPredictionTimestamp,%{public}.3f,propagation_us,%{public}.3f,clients,%{public}d", v24, 54);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::predictedGnssAvailabilityCallback(const CLGnssAvailabilityPredictor::Output &)", "%s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    if (v6 >= 1)
    {
      sub_100021AFC(buf);
      v54 = *(v4 + 728);
      v55 = *(v4 + 736);
      v53 = *(v4 + 752);
      v24[0] = 36;
      (*(*v4 + 152))(v4, v24, buf, 1, 0xFFFFFFFFLL, 0);

      if (v51)
      {
        sub_100008080(v51);
      }

      if (v50 < 0)
      {
        operator delete(__p);
      }

      if (v48)
      {
        sub_100008080(v48);
      }

      if (v47)
      {
        sub_100008080(v47);
      }
    }

    result = *(v4 + 280);
    if (result)
    {
      return (*(*result + 296))(result, a2);
    }
  }

  return result;
}

void sub_1000106C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000106F0(uint64_t a1, uint64_t a2, __IOHIDServiceClient *a3, uint64_t a4)
{
  if (a3)
  {
    Type = IOHIDEventGetType();
    if (Type)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v9 != v10)
      {
        v11 = Type;
        do
        {
          v12 = v9[1];
          if (v12)
          {
            v13 = *v9;
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v14 = std::__shared_weak_count::lock(v12);
            if (v14)
            {
              v15 = v14;
              if (v13)
              {
                v16 = *(v13 + 56);
                if (v16)
                {
                  if (*(v13 + 24) == a3 || *(v13 + 152) == v11)
                  {
                    v16(*(v13 + 64), a2, a3, a4);
                  }
                }
              }

              sub_100008080(v15);
            }

            std::__shared_weak_count::__release_weak(v12);
          }

          v9 += 2;
        }

        while (v9 != v10);
      }
    }

    else
    {
      valuePtr = 0;
      RegistryID = IOHIDServiceClientGetRegistryID(a3);
      CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
      if (qword_1025D4200 != -1)
      {
        sub_10199643C();
      }

      v19 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134283777;
        v36 = a3;
        v37 = 2050;
        v38 = valuePtr;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Got null event,sender %{private}p,registryID %{public}llx", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101997AA0(a3, &valuePtr);
      }

      v20 = *(a1 + 8);
      for (i = *(a1 + 16); v20 != i; v20 += 2)
      {
        v22 = v20[1];
        if (v22)
        {
          v23 = *v20;
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v24 = std::__shared_weak_count::lock(v22);
          if (v24)
          {
            v25 = v24;
            if (v23)
            {
              if (*(v23 + 8) == valuePtr && *(v23 + 136))
              {
                if (qword_1025D4200 != -1)
                {
                  sub_10199643C();
                }

                v26 = qword_1025D4208;
                if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Fetching historical events", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101996798(buf);
                  v33 = 0;
                  LODWORD(v32) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "[CLIoHidInterface] Fetching historical events", &v33, v32);
                  v31 = v30;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "%s\n", v30);
                  if (v31 != buf)
                  {
                    free(v31);
                  }
                }

                (*(v23 + 136))(*(v23 + 144));
              }

              else
              {
                if (qword_1025D4200 != -1)
                {
                  sub_10199643C();
                }

                v27 = qword_1025D4208;
                if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Did not fetch historical events", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101996798(buf);
                  v33 = 0;
                  LODWORD(v32) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "[CLIoHidInterface] Did not fetch historical events", &v33, v32);
                  v29 = v28;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "%s\n", v28);
                  if (v29 != buf)
                  {
                    free(v29);
                  }
                }
              }
            }

            sub_100008080(v25);
          }

          std::__shared_weak_count::__release_weak(v22);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_101995F5C();
    }

    v17 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Received null sender", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101997BBC();
    }
  }
}

void sub_100010B80(_Unwind_Exception *a1)
{
  sub_100008080(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100010BC0(uint64_t a1, uint64_t a2)
{
  TimeStamp = IOHIDEventGetTimeStamp();
  v4 = sub_1000080EC(TimeStamp);
  IOHIDEventGetDoubleValue();
  v6 = v5;
  IOHIDEventGetDoubleValue();
  v8 = v7;
  IOHIDEventGetDoubleValue();
  v10 = sub_100010C70(v6, v8, v9);

  return sub_100010F38(a1, v10, v4);
}

uint64_t sub_100010C70(double a1, double a2, double a3)
{
  if (a2 >= 4.0)
  {
    if (a3 < a2 && a2 < 100.0 && a3 < a1)
    {
      v6 = 1;
    }

    else
    {
      v9 = a1 * 0.8;
      if (a2 >= 200.0 || v9 > a3)
      {
        if (a2 >= 1000.0 || v9 <= a3)
        {
          if (a2 >= 30000.0 || v9 <= a3)
          {
            if (a2 >= 10000.0)
            {
              v6 = 6;
            }

            else
            {
              v6 = 5;
            }
          }

          else
          {
            v6 = 4;
          }
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  ++word_10265CDEA;
  if (((-4096 * word_10265CDEA) | ((-4369 * word_10265CDEA) >> 4)) <= 0x111u)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A0E9F0();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349824;
      v25 = a1;
      v26 = 2050;
      v27 = a2;
      v28 = 2050;
      v29 = a3;
      v30 = 1026;
      v31 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "AmbientLight,DecisionTree,x,%{public}f,y,%{public}f,z,%{public}f,out,%{public}d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101A0EA04();
      }

      v16 = 134349824;
      v17 = a1;
      v18 = 2050;
      v19 = a2;
      v20 = 2050;
      v21 = a3;
      v22 = 1026;
      v23 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "AmbientLight,DecisionTree,x,%{public}f,y,%{public}f,z,%{public}f,out,%{public}d", &v16, 38);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "CLAmbientLightDecisionTreeOutput CLAmbientLightDecisionTree::decisionTree(const double, const double, const double) const", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    word_10265CDEA = 0;
  }

  return v6;
}

uint64_t sub_100010F38(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  result = sub_100BB4310(a1, a3);
  if (result)
  {
    *a1 = v3;
    if (*(a1 + 32))
    {
      v6 = *(a1 + 56);

      return sub_100010FEC(a1 + 8, v3, v6);
    }
  }

  return result;
}

uint64_t sub_100010F98(uint64_t a1, unsigned int *a2, double *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  sub_100011048(*v4, *a2, *a3);

  return sub_10001123C(v4, v3);
}

uint64_t sub_100010FEC(uint64_t a1, int a2, double a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

double *sub_100011048(uint64_t a1, void *a2, double a3)
{
  v24 = a2;
  *a1 = 1;
  if (*(a1 + 24) != a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10192A260();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      LODWORD(v26) = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "AmbientLightDecisionTreeOutput,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A274(a2, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (vabdd_f64(a3, *(a1 + 16)) > 1.0)
  {
    *(a1 + 8) = 0;
    *a1 = 0;
    if (qword_1025D4600 != -1)
    {
      sub_10192A368();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 16);
      *buf = 134349312;
      v26 = a3;
      v27 = 2050;
      v28 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "ALSProcessor,FilterReset,timestamp,%{public}.2f,lastTimestamp,%{public}.2f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192A390((a1 + 16), v16, v17, v18, v19, v20, v21, v22);
    }
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a2;
  result = sub_1003DD9F8(&unk_102637288, &v24);
  *(a1 + 8) = *(a1 + 8) * 0.9 + *result * 0.1;
  return result;
}

uint64_t sub_10001123C(uint64_t *a1, double a2)
{
  result = a1[7];
  if (result)
  {
    v12 = 0;
    v13 = 0.0;
    v15 = 0;
    v14 = a2;
    v4 = *a1;
    if (*a1)
    {
      v5 = *(v4 + 16);
      v6 = vabdd_f64(a2, v5);
      v7 = 0.0;
      if (v6 <= 1.0 && *v4 == 1)
      {
        v8 = *(v4 + 8);
        LODWORD(v4) = 2 * (v8 > 0.8);
        v7 = v5;
      }

      else
      {
        LODWORD(v4) = 0;
        v8 = 0.0;
      }

      v12 = v4;
      v13 = v8;
      v14 = v7;
      LOBYTE(v4) = v4 != 0;
    }

    v9 = a1[2];
    if (v9)
    {
      v10 = *(v9 + 8);
      if (!((v10 <= 0.65) | v4 & 1))
      {
        v11 = *(v9 + 16);
        v12 = 1;
        v13 = v10;
        v14 = v11;
        v15 = 1;
      }
    }

    return (*(*result + 48))(result, &v12);
  }

  return result;
}

void sub_10001133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  IOHIDEventGetVendorDefinedData();
  if (qword_1025D4210 != -1)
  {
    sub_1018D1768();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Empty payload", v5, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018D1790();
  }
}

void sub_100011428(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4)
{
  sub_100011660(a1, a2);
  sub_10001160C();
  if (a3)
  {
    v8 = *a2;
  }

  else
  {
    v8 = 0;
  }

  v14 = v8;
  *(a1 + 352) = *a4;
  if ((sub_100011698(a1 + 152, a2, a3) & 1) == 0)
  {
    if (qword_1025D4210 != -1)
    {
      sub_10027BA68();
    }

    v10 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = v8;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "CMMotionCoprocessorReply::visit() type %d, length %lu failed.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101ADEB84(v8, a3);
    }
  }

  if (*(a1 + 652))
  {
    *buf = &v14;
    v11 = sub_1000135A4((a1 + 1832), &v14, &unk_101C66300, buf);
    v11[3] = (v11[3] + 1);
  }

  else
  {
    sub_100012B0C(a1, v9);
    *buf = &v14;
    v12 = sub_1000135A4((a1 + 1872), &v14, &unk_101C66300, buf);
    v12[3] = (v12[3] + 1);
    v13 = sub_1000137E0();
    if (v13 - *(a1 + 1824) > 300.0)
    {
      sub_10026E678(a1, 0);
      *(a1 + 1824) = v13;
    }
  }
}

void sub_10001160C()
{
  Current = CFRunLoopGetCurrent();
  if (qword_10265BA88 != -1)
  {
    sub_10198AC34();
  }

  if (Current != *qword_102637700)
  {
    sub_10198AC5C();
  }
}

uint64_t sub_100011660(uint64_t a1, uint64_t a2)
{
  if (qword_10265BA88 != -1)
  {
    sub_10198AC34();
  }

  return qword_102637700;
}

uint64_t sub_100011698(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = 0;
  switch(*a2)
  {
    case 1:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 16))(a1);
      return 1;
    case 2:
      if (a3 != 72)
      {
        return 0;
      }

      (*(*a1 + 24))(a1);
      return 1;
    case 3:
      if (a3 != 105)
      {
        return 0;
      }

      (*(*a1 + 32))(a1);
      return 1;
    case 4:
      if (a3 != 64)
      {
        return 0;
      }

      (*(*a1 + 40))(a1);
      return 1;
    case 5:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 56))(a1);
      return 1;
    case 6:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 64))(a1);
      return 1;
    case 7:
      if (a3 != 212)
      {
        return 0;
      }

      (*(*a1 + 72))(a1);
      return 1;
    case 8:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 80))(a1);
      return 1;
    case 9:
      if (a3 != 212)
      {
        return 0;
      }

      (*(*a1 + 88))(a1);
      return 1;
    case 0xA:
      if (a3 != 193)
      {
        return 0;
      }

      (*(*a1 + 272))(a1);
      return 1;
    case 0xC:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 96))(a1);
      return 1;
    case 0xD:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 104))(a1);
      return 1;
    case 0xE:
      if (a3 != 55)
      {
        return 0;
      }

      (*(*a1 + 112))(a1);
      return 1;
    case 0xF:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 120))(a1);
      return 1;
    case 0x11:
      if (a3 != 36)
      {
        return 0;
      }

      (*(*a1 + 128))(a1);
      return 1;
    case 0x14:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 152))(a1);
      return 1;
    case 0x15:
      if (a3 != 48)
      {
        return 0;
      }

      (*(*a1 + 160))(a1);
      return 1;
    case 0x17:
      if (a3 != 21)
      {
        return 0;
      }

      (*(*a1 + 168))(a1);
      return 1;
    case 0x18:
      if (a3 != 89)
      {
        return 0;
      }

      (*(*a1 + 176))(a1);
      return 1;
    case 0x19:
      if (a3 != 218)
      {
        return 0;
      }

      (*(*a1 + 192))(a1);
      return 1;
    case 0x1B:
      if (a3 != 132)
      {
        return 0;
      }

      (*(*a1 + 200))(a1);
      return 1;
    case 0x1C:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 48))(a1);
      return 1;
    case 0x1D:
      if (a3 != 32)
      {
        return 0;
      }

      (*(*a1 + 136))(a1);
      return 1;
    case 0x1F:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 184))(a1);
      return 1;
    case 0x20:
      if (a3 != 157)
      {
        return 0;
      }

      (*(*a1 + 208))(a1);
      return 1;
    case 0x21:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 216))(a1);
      return 1;
    case 0x22:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 224))(a1);
      return 1;
    case 0x23:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 232))(a1);
      return 1;
    case 0x24:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 248))(a1);
      return 1;
    case 0x25:
      if (a3 != 21)
      {
        return 0;
      }

      (*(*a1 + 256))(a1);
      return 1;
    case 0x26:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 264))(a1);
      return 1;
    case 0x27:
      if (a3 != 205)
      {
        return 0;
      }

      (*(*a1 + 280))(a1);
      return 1;
    case 0x28:
      if (a3 != 25)
      {
        return 0;
      }

      (*(*a1 + 288))(a1);
      return 1;
    case 0x29:
      if (a3 != 69)
      {
        return 0;
      }

      (*(*a1 + 296))(a1);
      return 1;
    case 0x2B:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 240))(a1);
      return 1;
    case 0x2C:
      if (a3 != 29)
      {
        return 0;
      }

      (*(*a1 + 312))(a1);
      return 1;
    case 0x2D:
      if (a3 != 37)
      {
        return 0;
      }

      (*(*a1 + 320))(a1);
      return 1;
    case 0x2E:
      if (a3 != 45)
      {
        return 0;
      }

      (*(*a1 + 328))(a1);
      return 1;
    case 0x2F:
      if (a3 != 113)
      {
        return 0;
      }

      (*(*a1 + 336))(a1);
      return 1;
    case 0x30:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 304))(a1);
      return 1;
    case 0x31:
      if (a3 != 68)
      {
        return 0;
      }

      v4 = *(*a1 + 352);
      goto LABEL_164;
    case 0x32:
      if (a3 != 43)
      {
        return 0;
      }

      (*(*a1 + 360))(a1);
      return 1;
    case 0x33:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 368))(a1);
      return 1;
    case 0x34:
      if (a3 != 49)
      {
        return 0;
      }

      (*(*a1 + 384))(a1);
      return 1;
    case 0x35:
      if (a3 != 20)
      {
        return 0;
      }

      (*(*a1 + 392))(a1);
      return 1;
    case 0x36:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 400))(a1);
      return 1;
    case 0x37:
      if (a3 != 30)
      {
        return 0;
      }

      (*(*a1 + 408))(a1);
      return 1;
    case 0x38:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 416))(a1);
      return 1;
    case 0x39:
      if (a3 != 57)
      {
        return 0;
      }

      (*(*a1 + 344))(a1);
      return 1;
    case 0x3A:
      if (a3 != 232)
      {
        return 0;
      }

      (*(*a1 + 376))(a1);
      return 1;
    case 0x3B:
      if (a3 != 44)
      {
        return 0;
      }

      (*(*a1 + 472))(a1);
      return 1;
    case 0x3C:
      if (a3 != 10)
      {
        return 0;
      }

      (*(*a1 + 488))(a1);
      return 1;
    case 0x40:
      if (a3 != 29)
      {
        return 0;
      }

      (*(*a1 + 424))(a1);
      return 1;
    case 0x41:
      if (a3 != 9)
      {
        return 0;
      }

      (*(*a1 + 440))(a1);
      return 1;
    case 0x42:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 448))(a1);
      return 1;
    case 0x43:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 496))(a1);
      return 1;
    case 0x44:
      if (a3 != 76)
      {
        return 0;
      }

      (*(*a1 + 456))(a1);
      return 1;
    case 0x45:
      if (a3 != 39)
      {
        return 0;
      }

      (*(*a1 + 504))(a1);
      return 1;
    case 0x47:
      if (a3 != 45)
      {
        return 0;
      }

      (*(*a1 + 512))(a1);
      return 1;
    case 0x48:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 528))(a1);
      return 1;
    case 0x49:
      if (a3 != 83)
      {
        return 0;
      }

      (*(*a1 + 520))(a1);
      return 1;
    case 0x4A:
      if (a3 != 51)
      {
        return 0;
      }

      v4 = *(*a1 + 544);
LABEL_164:
      v4();
      return 1;
    case 0x4B:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 552))(a1);
      return 1;
    case 0x4C:
      if (a3 != 10)
      {
        return 0;
      }

      (*(*a1 + 536))(a1);
      return 1;
    case 0x4D:
      if (a3 != 13)
      {
        return 0;
      }

      (*(*a1 + 480))(a1);
      return 1;
    case 0x4E:
      if (a3 != 58)
      {
        return 0;
      }

      (*(*a1 + 464))(a1);
      return 1;
    case 0x4F:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 560))(a1);
      return 1;
    case 0x50:
      if (a3 != 18)
      {
        return 0;
      }

      (*(*a1 + 568))(a1);
      return 1;
    case 0x52:
      if (a3 != 26)
      {
        return 0;
      }

      (*(*a1 + 576))(a1);
      return 1;
    case 0x53:
      if (a3 != 22)
      {
        return 0;
      }

      (*(*a1 + 584))(a1);
      return 1;
    case 0x54:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 592))(a1);
      return 1;
    case 0x55:
      if (a3 != 20)
      {
        return 0;
      }

      (*(*a1 + 600))(a1);
      return 1;
    case 0x56:
      if (a3 != 113)
      {
        return 0;
      }

      (*(*a1 + 608))(a1);
      return 1;
    case 0x57:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 616))(a1);
      return 1;
    case 0x58:
      if (a3 != 61)
      {
        return 0;
      }

      (*(*a1 + 624))(a1);
      return 1;
    case 0x59:
      if (a3 != 47)
      {
        return 0;
      }

      (*(*a1 + 432))(a1);
      return 1;
    case 0x5A:
      if (a3 != 222)
      {
        return 0;
      }

      (*(*a1 + 632))(a1);
      return 1;
    case 0x5B:
      if (a3 != 48)
      {
        return 0;
      }

      (*(*a1 + 640))(a1);
      return 1;
    case 0x5C:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 648))(a1);
      return 1;
    case 0x5D:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 656))(a1);
      return 1;
    case 0x5E:
      if (a3 != 60)
      {
        return 0;
      }

      (*(*a1 + 664))(a1);
      return 1;
    case 0x5F:
      if (a3 != 74)
      {
        return 0;
      }

      (*(*a1 + 672))(a1);
      return 1;
    case 0x60:
      if (a3 != 13)
      {
        return 0;
      }

      (*(*a1 + 680))(a1);
      return 1;
    case 0xB0:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 144))(a1);
      return 1;
    default:
      return v3;
  }
}

uint64_t sub_100012B0C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 859) & 1) == 0)
  {
    *(a1 + 408) = *(a1 + 400);
    v3 = *(a1 + 504);
    v4 = *(a1 + 512);
    *(a1 + 536) = 0;
    v5 = (v4 - v3) >> 3;
    if (v5 >= 3)
    {
      do
      {
        operator delete(*v3);
        v6 = *(a1 + 512);
        v3 = (*(a1 + 504) + 8);
        *(a1 + 504) = v3;
        v5 = (v6 - v3) >> 3;
      }

      while (v5 > 2);
    }

    if (v5 == 1)
    {
      v7 = 12;
    }

    else
    {
      if (v5 != 2)
      {
LABEL_9:
        *(a1 + 432) = *(a1 + 424);
        goto LABEL_10;
      }

      v7 = 25;
    }

    *(a1 + 528) = v7;
    goto LABEL_9;
  }

LABEL_10:
  v8 = sub_1000133C4(a1, a2);
  v9 = sub_1000133FC(v52, v8, 0xD37A6F4DE9BD37A7 * ((*(a1 + 432) - *(a1 + 424)) >> 3) > 1);
  if (*(a1 + 859) & 1) != 0 || (v11 = *(a1 + 1264)) != 0 && (v9 = (*(v11 + 16))(), (*(a1 + 859)))
  {
    v12 = *(a1 + 424);
    v13 = *(a1 + 432);
    if (v12 != v13)
    {
      while (1)
      {
        v14 = *(v12 + 8);
        v15 = *(a1 + 1408);
        if (v14 > v15 && v14 < v15 + 600.0)
        {
          if (qword_1025D4250 != -1)
          {
            sub_100325134();
          }

          v17 = qword_1025D4258;
          if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
          {
            v18 = *(v12 + 8);
            v19 = *(v12 + 24);
            v20 = *(v12 + 80);
            *buf = 134349568;
            *&buf[4] = v18;
            *&buf[12] = 1024;
            *&buf[14] = v19;
            *&buf[18] = 2048;
            *&buf[20] = v20;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "#fmc After vehicle disconnect, startTime, %{public}f, stepCount, %d, currentPace, %f", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AD9E20(buf);
            v21 = *(v12 + 8);
            v22 = *(v12 + 24);
            v23 = *(v12 + 80);
            v53 = 134349568;
            v54 = v21;
            v55 = 1024;
            *v56 = v22;
            *&v56[4] = 2048;
            *&v56[6] = v23;
            LODWORD(v49) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4258, 1, "#fmc After vehicle disconnect, startTime, %{public}f, stepCount, %d, currentPace, %f", &v53, v49);
            v25 = v24;
            sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::notifyClientsWithBufferedData()", "%s\n", v24);
            if (v25 != buf)
            {
              free(v25);
            }
          }
        }

        v12 += 184;
        if (v12 == v13)
        {
          operator new();
        }
      }
    }

    if (*(a1 + 448) != *(a1 + 456))
    {
      sub_10001A3E8(v9, v10);
      if (sub_10001CF3C())
      {
        v26 = *(a1 + 448);
        v27 = *(a1 + 456);
        while (v26 != v27)
        {
          v28 = *v26;
          v29 = v26[1];
          v30 = v26[3];
          v60 = v26[2];
          v61 = v30;
          *buf = v28;
          *&buf[16] = v29;
          sub_100013B00(a1, 20, buf, 64);
          v26 += 4;
        }
      }
    }
  }

  if (*(a1 + 860) == 1 && *(a1 + 448) != *(a1 + 456))
  {
    operator new();
  }

  *(a1 + 456) = *(a1 + 448);
  if (*(a1 + 859) == 1)
  {
    if (*(a1 + 472) != *(a1 + 480))
    {
      operator new();
    }

    *(a1 + 480) = *(a1 + 472);
    v31 = *(a1 + 544);
    for (i = *(a1 + 552); v31 != i; v31 += 2)
    {
      v33 = v31[1];
      v50 = *v31;
      v51 = v33;
      if (qword_1025D4270 != -1)
      {
        sub_101AD9E64();
      }

      v34 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349824;
        *&buf[4] = *(&v50 + 1);
        *&buf[12] = 2050;
        *&buf[14] = v51;
        *&buf[22] = 2050;
        *&buf[24] = *(&v51 + 1);
        LOWORD(v60) = 2050;
        *(&v60 + 2) = v50;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "notifying,straightness,%{public}.3f,confidence,%{public}.3f,startTimestamp,%{public}.3f,stopTimestamp,%{public}.3f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AD9E8C(buf);
        v53 = 134349824;
        v54 = *(&v50 + 1);
        v55 = 2050;
        *v56 = v51;
        *&v56[8] = 2050;
        *&v56[10] = *(&v51 + 1);
        v57 = 2050;
        v58 = v50;
        LODWORD(v49) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "notifying,straightness,%{public}.3f,confidence,%{public}.3f,startTimestamp,%{public}.3f,stopTimestamp,%{public}.3f", &v53, v49);
        v36 = v35;
        sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::notifyClientsWithBufferedData()", "%s\n", v35);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      sub_100013B00(a1, 35, &v50, 32);
    }
  }

  else
  {
    *(a1 + 480) = *(a1 + 472);
  }

  *(a1 + 552) = *(a1 + 544);
  v37 = *(a1 + 408);
  v38 = *(a1 + 400);
  if (v38 != v37)
  {
    do
    {
      sub_100013B00(a1, v38 != v37 - 160, v38, 160);
      v39 = *(v38 + 8);
      v40 = *(a1 + 1408);
      if (v39 > v40 && v39 < v40 + 600.0)
      {
        v42 = *(v38 + 24);
        v43 = *(v38 + 28);
        v44 = *(v38 + 29);
        if (qword_1025D4250 != -1)
        {
          sub_100325134();
        }

        v45 = qword_1025D4258;
        if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
        {
          *buf = 134349824;
          *&buf[4] = v39;
          *&buf[12] = 1026;
          *&buf[14] = v42;
          *&buf[18] = 1026;
          *&buf[20] = v43;
          *&buf[24] = 1026;
          *&buf[26] = v44;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_INFO, "#fmc After vehicle disconnect, startTime, %{public}f, motionType, %{public}d, confidence, %{public}d, mounted, %{public}d", buf, 0x1Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AD9E20(buf);
          v53 = 134349824;
          v54 = v39;
          v55 = 1026;
          *v56 = v42;
          *&v56[4] = 1026;
          *&v56[6] = v43;
          *&v56[10] = 1026;
          *&v56[12] = v44;
          LODWORD(v49) = 30;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4258, 1, "#fmc After vehicle disconnect, startTime, %{public}f, motionType, %{public}d, confidence, %{public}d, mounted, %{public}d", &v53, v49);
          v47 = v46;
          sub_100152C7C("Generic", 1, 0, 2, "void CLMotionCoprocessor::notifyClientsWithBufferedData()", "%s\n", v46);
          if (v47 != buf)
          {
            free(v47);
          }
        }
      }

      v38 += 160;
      v37 = *(a1 + 408);
    }

    while (v38 != v37);
    *(a1 + 408) = *(a1 + 400);
  }

  return sub_100013400(v52);
}

void sub_100013370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_100013400(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000133C4(uint64_t a1, uint64_t a2)
{
  if (qword_10265BA98 != -1)
  {
    sub_10198AC48();
  }

  return qword_10265BA90;
}

void sub_100013404(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = 0;
    *buf = 0;
    IOHIDEventGetVendorDefinedData();
    if (qword_1025D41C0 != -1)
    {
      sub_101896AF4();
    }

    v2 = qword_1025D41C8;
    if (os_log_type_enabled(qword_1025D41C8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[CLProvisionalOrientationNotifier] Empty payload, returning", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101896B1C();
    }
  }

  else
  {
    if (qword_1025D41C0 != -1)
    {
      sub_101896C14();
    }

    v3 = qword_1025D41C8;
    if (os_log_type_enabled(qword_1025D41C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "[CLProvisionalOrientationNotifier] Event ref invalid", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101896C28();
    }
  }
}

uint64_t sub_100013558(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    [objc_msgSend(objc_msgSend(*a1 "vendor")];
  }

  return a1;
}

uint64_t **sub_1000135A4(float *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *(a1 + 1);
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

double sub_1000137E0()
{
  v0 = mach_absolute_time();

  return sub_1000080EC(v0);
}

uint64_t sub_100013808(uint64_t a1, void *a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    [objc_msgSend(objc_msgSend(a2 "vendor")];
    [objc_msgSend(objc_msgSend(*a1 "vendor")];
  }

  return a1;
}

void sub_100013868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_101896A9C();
  }

  sub_100013404(a1, a4);
}

__n128 sub_100013890(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4210 != -1)
  {
    sub_10027BA68();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 9);
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "MotionCoprocessor received TimeSync data machTimestamp,%llu,oscarTimestamp,%llu", &v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ADC3C4();
  }

  result = *a2;
  *(a1 + 1400) = *(a2 + 16);
  *(a1 + 1384) = result;
  return result;
}

void sub_1000139A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 2) < 0x11u)
  {
    if (qword_1025D4210 != -1)
    {
      sub_10027BA68();
    }

    v4 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
    {
      v5[0] = 68289538;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 1040;
      v9 = 72;
      v10 = 2098;
      v11 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received AOP log, log:%{public, location:CMMotionCoprocessorReply_Log}.*P}", v5, 0x22u);
    }
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_10027BA68();
    }

    v2 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Invalid CMMotionCoprocessorReply::Log structure.", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ADBDAC();
    }
  }
}

uint64_t sub_100013B00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 16);
  v9 = a2;
  v10 = v8 + 80 * a2;
  v11 = *(v10 + 32);
  if (v11 != (v10 + 40))
  {
    do
    {
      result = (*(*v11[4] + 16))(v11[4], a2, a3, a4);
      *(v11 + 10) = (*(v11 + 10) + 1) % *(v11 + 11);
      v12 = v11[1];
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
          v13 = v11[2];
          v14 = *v13 == v11;
          v11 = v13;
        }

        while (!v14);
      }

      v8 = *(v7 + 16);
      v11 = v13;
    }

    while (v13 != (v8 + 80 * v9 + 40));
  }

  v15 = v8 + 80 * v9;
  v16 = *(v15 + 64);
  if (v16 != v15 + 56)
  {
    do
    {
      result = (*(**(v16 + 16) + 16))(*(v16 + 16), a2, a3, a4);
      v16 = *(v16 + 8);
    }

    while (v16 != *(v7 + 16) + 80 * v9 + 56);
  }

  return result;
}

void sub_100013C5C(unint64_t *a1, unint64_t a2)
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

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (a1[4] = v6 - (v7 << 8); v7; --v7)
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

    for (a1[4] -= v7 << 8; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10045E430(a1, v16);
    }
  }
}