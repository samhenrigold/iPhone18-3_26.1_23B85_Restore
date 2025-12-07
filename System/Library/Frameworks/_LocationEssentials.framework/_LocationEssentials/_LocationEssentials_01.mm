uint64_t sub_1AB618F54(CFMutableDictionaryRef *a1)
{
  CFDictionaryRemoveAllValues(a1[1]);
  v2 = *(*a1 + 106);

  return v2(a1);
}

void sub_1AB618FB8(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x80000000) == 0)
  {
    cf = 0;
    if (!(*(*a1 + 912))(a1, a2, &cf))
    {
      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(cf) > a3)
      {
        CFArrayRemoveValueAtIndex(cf, a3);
        (*(*a1 + 848))(a1);
LABEL_46:
        CFRelease(cf);
        return;
      }

      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v20 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        sub_1AB6195C0(a2, __p);
        v21 = SBYTE3(v38);
        v22 = *__p;
        Count = CFArrayGetCount(cf);
        v24 = __p;
        *buf = 136446722;
        if (v21 < 0)
        {
          v24 = v22;
        }

        v40 = v24;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = Count;
        _os_log_impl(&dword_1AB607000, v20, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in array of size %{public}ld", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v25 = sub_1AB60902C();
      if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v26 = off_1EB46D730;
      sub_1AB6195C0(a2, v31);
      v27 = v32;
      v28 = v31[0];
      v29 = CFArrayGetCount(cf);
      v30 = v31;
      *__p = 136446722;
      if (v27 < 0)
      {
        v30 = v28;
      }

      *&__p[4] = v30;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v29;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v26, 17, "key %{public}s does not have element %{public}d in array of size %{public}ld", __p, 28);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    else
    {
      if (!a3)
      {
        (*(*a1 + 888))(a1, a2);
        goto LABEL_46;
      }

      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v8 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        sub_1AB6195C0(a2, __p);
        v9 = SBYTE3(v38);
        v10 = *__p;
        v11 = CFGetTypeID(cf);
        v12 = __p;
        if (v9 < 0)
        {
          v12 = v10;
        }

        *buf = 136446722;
        v40 = v12;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = v11;
        _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in non-array type %{public}lu", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_1AB60902C();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v14 = off_1EB46D730;
      sub_1AB6195C0(a2, v31);
      v15 = v32;
      v16 = v31[0];
      v17 = CFGetTypeID(cf);
      v18 = v31;
      if (v15 < 0)
      {
        v18 = v16;
      }

      *__p = 136446722;
      *&__p[4] = v18;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v17;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v14, 17, "key %{public}s does not have element %{public}d in non-array type %{public}lu", __p, 28);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    sub_1AB60C944("Generic", 1, 0, 0, "virtual void CLNameValuePair::clearInternal(const CFStringRef, int)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_46;
  }

  v7 = *(*a1 + 888);

  v7();
}

void sub_1AB619580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB6195C0@<X0>(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_1AB61D148(a1, a2);
  if ((result & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_1AB619614(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB619630(CFMutableDictionaryRef *a1, const void *a2)
{
  CFDictionaryRemoveValue(a1[1], a2);
  v3 = *(*a1 + 106);

  return v3(a1);
}

void sub_1AB6197A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB6197C4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  v4 = *(*a1 + 920);

  return v4(a1, v3);
}

uint64_t sub_1AB61986C(uint64_t a1, const char *a2, CFTypeRef *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB6198E0(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB6198E0(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *a3 = 0;
  v4 = (*(*a1 + 904))(a1, a2);
  if (v4 && *a3)
  {
    CFAutorelease(*a3);
  }

  return v4;
}

uint64_t sub_1AB619948(uint64_t a1, const char *a2, BOOL *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB6199BC(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB6199BC(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1AB61C94C(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, BOOL &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1AB619C68(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB619CDC(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB619CDC(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_1AB61CBC4(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint16_t &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1AB619F98(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61A00C(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61A00C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberSInt16Type, a3))
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v8 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_1AB60902C();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        LOWORD(v22) = 0;
        v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not get value", &v22, 2);
        sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, short &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_1AB61C94C(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v13 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = a2;
        _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_1AB60902C();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v16 = off_1EB46D730;
        v17 = (*(*a1 + 840))(a1);
        v22 = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = a2;
        LODWORD(v20) = 22;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v16, 17, "Unsupported type at %@:%@ (domain:key)", &v22, v20);
        sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, short &, int) const", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t sub_1AB61A458(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61A4CC(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61A4CC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_1AB61C9B8(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      *&buf[4] = v8;
      v20 = 2112;
      v21 = a2;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint32_t &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1AB61A788(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61A7FC(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61A7FC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1AB61C9B8(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int64_t &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1AB61AAA8(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61AB1C(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61AB1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1AB61CBC4(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1AB61ADC8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61AE3C(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61AE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberLongType, a3))
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v8 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_1AB60902C();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        LOWORD(v22) = 0;
        v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not get value", &v22, 2);
        sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, long &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_1AB61C94C(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v13 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = a2;
        _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_1AB60902C();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v16 = off_1EB46D730;
        v17 = (*(*a1 + 840))(a1);
        v22 = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = a2;
        LODWORD(v20) = 22;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v16, 17, "Unsupported type at %@:%@ (domain:key)", &v22, v20);
        sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, long &, int) const", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t sub_1AB61B288(uint64_t a1, const char *a2, float *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v9 = 0.0;
  v6 = sub_1AB61B3D0(a1, v5, &v9);
  if (v6)
  {
    v7 = v9;
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

float sub_1AB61B314(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = 0.0;
  if (sub_1AB61B3D0(a1, a2, &v5))
  {
    result = v5;
    *a3 = result;
  }

  return result;
}

uint64_t sub_1AB61B35C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61B3D0(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61B3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1AB61CDD0(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, double &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1AB61B67C(uint64_t a1, const char *a2, std::string *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61B6F0(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61B6F0(uint64_t a1, uint64_t a2, std::string *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1AB61D148(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, std::string &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1AB61B99C(uint64_t a1, const char *a2, CFTypeRef *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61BA10(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1AB61BA10(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 904))(a1, a2, &cf);
  if (result)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      v8 = cf;
      *a3 = cf;
      CFAutorelease(v8);
      return 1;
    }

    else
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        sub_1AB6195C0(a2, __p);
        v10 = v32 >= 0 ? __p : *__p;
        v11 = CFGetTypeID(cf);
        TypeID = CFStringGetTypeID();
        *buf = 136446722;
        v35 = v10;
        v36 = 2050;
        v37 = v11;
        v38 = 2050;
        v39 = TypeID;
        _os_log_impl(&dword_1AB607000, v9, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_1AB60902C();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v14 = off_1EB46D730;
        sub_1AB6195C0(a2, v26);
        if (v27 >= 0)
        {
          v15 = v26;
        }

        else
        {
          v15 = v26[0];
        }

        v16 = CFGetTypeID(cf);
        v17 = CFStringGetTypeID();
        *__p = 136446722;
        *&__p[4] = v15;
        v30 = 2050;
        v31 = v16;
        v32 = 2050;
        v33 = v17;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v14, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v19 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        v20 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v35 = v20;
        v36 = 2112;
        v37 = a2;
        _os_log_impl(&dword_1AB607000, v19, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v21 = sub_1AB60902C();
      if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v22 = off_1EB46D730;
        v23 = (*(*a1 + 840))(a1);
        *__p = 138412546;
        *&__p[4] = v23;
        v30 = 2112;
        v31 = a2;
        LODWORD(v25) = 22;
        v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v22, 17, "Unsupported type at %@:%@ (domain:key)", __p, v25);
        sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

void sub_1AB61BEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AB61BF00(uint64_t a1, const char *a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v10 = sub_1AB61BF80(a1, v9, a3, a4, a5);
  CFRelease(v9);
  return v10;
}

BOOL sub_1AB61BF80(uint64_t a1, CFTypeID a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf, a5))
  {
    return 0;
  }

  v9 = cf;
  v10 = CFGetTypeID(cf);
  v11 = v10 == CFDataGetTypeID();
  v12 = v11;
  if (v11)
  {
    *a3 = CFDataGetBytePtr(v9);
    *a4 = CFDataGetLength(v9);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v13 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v14 = CFGetTypeID(v9);
      TypeID = CFDataGetTypeID();
      *buf = 134349312;
      v35 = v14;
      v36 = 2050;
      v37 = TypeID;
      _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v16 = sub_1AB60902C();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v17 = off_1EB46D730;
      v18 = CFGetTypeID(v9);
      v19 = CFDataGetTypeID();
      v30 = 134349312;
      v31 = v18;
      v32 = 2050;
      v33 = v19;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v17, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v30, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, const char *&, unsigned int &)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v21 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v22 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v35 = v22;
      v36 = 2112;
      v37 = a2;
      _os_log_impl(&dword_1AB607000, v21, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v23 = sub_1AB60902C();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v24 = off_1EB46D730;
      v25 = (*(*a1 + 840))(a1);
      v30 = 138412546;
      v31 = v25;
      v32 = 2112;
      v33 = a2;
      LODWORD(v28) = 22;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v24, 17, "Unsupported type at %@:%@ (domain:key)", &v30, v28);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, const char *&, unsigned int &, int) const", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  CFRelease(cf);
  return v12;
}

BOOL sub_1AB61C3EC(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_1AB61C460(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

BOOL sub_1AB61C460(uint64_t a1, CFTypeID a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  v8 = v7 == CFDictionaryGetTypeID();
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = a3[1];
      if (v10)
      {
        CFRelease(v10);
      }

      a3[1] = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
      (*(*a3 + 848))(a3);
    }

    else
    {
      (*(*a3 + 872))(a3);
    }
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v11 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v12 = CFGetTypeID(v6);
      TypeID = CFDictionaryGetTypeID();
      *buf = 134349312;
      v33 = v12;
      v34 = 2050;
      v35 = TypeID;
      _os_log_impl(&dword_1AB607000, v11, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v14 = sub_1AB60902C();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v15 = off_1EB46D730;
      v16 = CFGetTypeID(v6);
      v17 = CFDictionaryGetTypeID();
      v28 = 134349312;
      v29 = v16;
      v30 = 2050;
      v31 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v15, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v28, 22);
      sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, CLNameValuePair &)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v19 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v20 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v33 = v20;
      v34 = 2112;
      v35 = a2;
      _os_log_impl(&dword_1AB607000, v19, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v21 = sub_1AB60902C();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v22 = off_1EB46D730;
      v23 = (*(*a1 + 840))(a1);
      v28 = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = a2;
      LODWORD(v26) = 22;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v22, 17, "Unsupported type at %@:%@ (domain:key)", &v28, v26);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CLNameValuePair &, int) const", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t sub_1AB61C94C(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID() && v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  *a2 = CFBooleanGetValue(a1) != 0;
  return 1;
}

uint64_t sub_1AB61C9B8(const void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v5 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AB607000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_1AB60902C();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v10[0] = 0;
        v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not get value", v10, 2);
        sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int64_t &)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      return 0;
    }

    return 1;
  }

  buf[0] = 0;
  v8 = CFGetTypeID(a1);
  if (v8 == CFBooleanGetTypeID())
  {
    result = sub_1AB61C94C(a1, buf);
    if (!result)
    {
      return result;
    }

    *a2 = buf[0];
    return 1;
  }

  return 0;
}

uint64_t sub_1AB61CBC4(const void *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt32Type, a2))
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v5 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AB607000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_1AB60902C();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v10[0] = 0;
        v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not get value", v10, 2);
        sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int &)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      return 0;
    }

    return 1;
  }

  buf[0] = 0;
  v8 = CFGetTypeID(a1);
  if (v8 == CFBooleanGetTypeID())
  {
    result = sub_1AB61C94C(a1, buf);
    if (!result)
    {
      return result;
    }

    *a2 = buf[0];
    return 1;
  }

  return 0;
}

uint64_t sub_1AB61CDD0(const void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v17 = CFGetTypeID(a1);
      v18 = 2050;
      TypeID = CFNumberGetTypeID();
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v7 = sub_1AB60902C();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v8 = off_1EB46D730;
    v12 = 134349312;
    v13 = CFGetTypeID(a1);
    v14 = 2050;
    v15 = CFNumberGetTypeID();
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v8, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v12, 22);
    sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v9);
    if (v9 == buf)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (CFNumberGetValue(a1, kCFNumberFloat64Type, a2))
  {
    return 1;
  }

  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2039620);
  }

  v10 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
  }

  v11 = sub_1AB60902C();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    LOWORD(v12) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not get value", &v12, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
LABEL_25:
      free(v9);
    }
  }

  return 0;
}

uint64_t sub_1AB61D148(const __CFString *cf, std::string *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(cf, 0x8000100u);
      if (!CStringPtr)
      {
        *bufferSize = 0;
        v38.length = CFStringGetLength(cf);
        v38.location = 0;
        CFStringGetBytes(cf, v38, 0x8000100u, 0, 0, 0, 0, bufferSize);
        ++*bufferSize;
        operator new[]();
      }

      sub_1AB61161C(a2, CStringPtr);
      return 1;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (BytePtr)
      {
        v10 = xmlBufferCreate();
        if (v10)
        {
          v11 = v10;
          v12 = xmlNewTextWriterMemory(v10, 0);
          if (v12)
          {
            v13 = v12;
            v14 = xmlTextWriterWriteBase64(v12, BytePtr, 0, Length);
            v6 = v14 != -1;
            if (v14 != -1)
            {
              xmlTextWriterFlush(v13);
              v15 = xmlBufferContent(v11);
              v16 = xmlBufferLength(v11);
              if (qword_1EB46D728 != -1)
              {
                dispatch_once(&qword_1EB46D728, &unk_1F2039620);
              }

              v17 = off_1EB46D730;
              if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218498;
                *&buf[4] = v15;
                *&buf[12] = 1024;
                *&buf[14] = v16;
                *&buf[18] = 2080;
                *&buf[20] = v15;
                _os_log_impl(&dword_1AB607000, v17, OS_LOG_TYPE_DEBUG, "processed %p %d to (%s)", buf, 0x1Cu);
              }

              v18 = sub_1AB60902C();
              if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EB46D728 != -1)
                {
                  dispatch_once(&qword_1EB46D728, &unk_1F2039620);
                }

                *bufferSize = 134218498;
                *&bufferSize[4] = v15;
                v32 = 1024;
                v33 = v16;
                v34 = 2080;
                v35 = v15;
                v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 2, "processed %p %d to (%s)", bufferSize, 28, v30);
                sub_1AB60C944("Generic", 1, 0, 2, "static BOOL CLNameValuePair::encodeBase64(const void *, unsigned long, std::string &)", "CoreLocation: %s\n", v19);
                if (v19 != buf)
                {
                  free(v19);
                }
              }

              if (v16 < 0)
              {
                sub_1AB60C7A4();
              }

              if (v16 >= 0x17)
              {
                operator new();
              }

              buf[23] = v16;
              if (v16)
              {
                memmove(buf, v15, v16);
              }

              buf[v16] = 0;
              if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(a2->__r_.__value_.__l.__data_);
              }

              *&a2->__r_.__value_.__l.__data_ = *buf;
              a2->__r_.__value_.__r.__words[2] = *&buf[16];
            }

            xmlFreeTextWriter(v13);
          }

          else
          {
            v6 = 0;
          }

          xmlBufferFree(v11);
          return v6;
        }
      }

      else
      {
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v27 = off_1EB46D730;
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
        {
          *buf = 67240192;
          *&buf[4] = Length;
          _os_log_impl(&dword_1AB607000, v27, OS_LOG_TYPE_FAULT, "can't convert %{public}u data bytes", buf, 8u);
        }

        v28 = sub_1AB60902C();
        if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2039620);
          }

          *bufferSize = 67240192;
          *&bufferSize[4] = Length;
          v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "can't convert %{public}u data bytes", bufferSize, 8);
          sub_1AB60C944("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }
      }

      return 0;
    }
  }

  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2039620);
  }

  v20 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_DEFAULT))
  {
    if (cf)
    {
      v21 = CFGetTypeID(cf);
    }

    else
    {
      v21 = -1;
    }

    *buf = 134349056;
    *&buf[4] = v21;
    _os_log_impl(&dword_1AB607000, v20, OS_LOG_TYPE_DEFAULT, "#Warning type IDs do not match - %{public}lu", buf, 0xCu);
  }

  v22 = sub_1AB60902C();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v23 = off_1EB46D730;
    if (cf)
    {
      v24 = CFGetTypeID(cf);
    }

    else
    {
      v24 = -1;
    }

    *bufferSize = 134349056;
    *&bufferSize[4] = v24;
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v23, 0, "#Warning type IDs do not match - %{public}lu", bufferSize, 12);
    sub_1AB60C944("Generic", 1, 0, 2, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
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

BOOL sub_1AB61D9D0(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFArrayGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v8 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v9 = v25 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      *buf = 136446722;
      v28 = v9;
      v29 = 2050;
      v30 = v10;
      v31 = 2050;
      v32 = TypeID;
      _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    v12 = sub_1AB60902C();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v13 = off_1EB46D730;
      v14 = v19;
      sub_1AB6195C0(a2, v19);
      if (v20 < 0)
      {
        v14 = v19[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFArrayGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v23 = 2050;
      v24 = v15;
      v25 = 2050;
      v26 = v16;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFArrayRef &) const", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_1AB61DCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AB61DCF4(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFDataGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v8 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v9 = v25 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFDataGetTypeID();
      *buf = 136446722;
      v28 = v9;
      v29 = 2050;
      v30 = v10;
      v31 = 2050;
      v32 = TypeID;
      _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    v12 = sub_1AB60902C();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v13 = off_1EB46D730;
      v14 = v19;
      sub_1AB6195C0(a2, v19);
      if (v20 < 0)
      {
        v14 = v19[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFDataGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v23 = 2050;
      v24 = v15;
      v25 = 2050;
      v26 = v16;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFDataRef &, int) const", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_1AB61DFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB61E018(uint64_t a1, const __CFString *a2, uint64_t *a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
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
LABEL_46:
        *a3 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        CFRelease(cf);
        return 1;
      }

      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v19 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        sub_1AB6195C0(a2, __p);
        v20 = SBYTE3(v35);
        v21 = *__p;
        Count = CFArrayGetCount(cf);
        v23 = __p;
        if (v20 < 0)
        {
          v23 = v21;
        }

        *buf = 136446722;
        *v37 = v23;
        *&v37[8] = 1026;
        *&v37[10] = v9;
        v38 = 2050;
        v39 = Count;
        _os_log_impl(&dword_1AB607000, v19, OS_LOG_TYPE_FAULT, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", buf, 0x1Cu);
        if (SBYTE3(v35) < 0)
        {
          operator delete(*__p);
        }
      }

      v24 = sub_1AB60902C();
      if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
      {
        goto LABEL_43;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v25 = off_1EB46D730;
      sub_1AB6195C0(a2, v30);
      v26 = v31;
      v27 = v30[0];
      v28 = CFArrayGetCount(cf);
      v29 = v30;
      if (v26 < 0)
      {
        v29 = v27;
      }

      *__p = 136446722;
      *&__p[4] = v29;
      *&__p[12] = 1026;
      *&__p[14] = v9;
      v34 = 2050;
      v35 = v28;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v25, 17, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", __p, 28);
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
        goto LABEL_46;
      }

      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v11 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        v12 = CFGetTypeID(cf);
        sub_1AB6195C0(a2, __p);
        v13 = (v35 & 0x80000000) == 0 ? __p : *__p;
        *buf = 67240706;
        *v37 = a4;
        *&v37[4] = 2050;
        *&v37[6] = v12;
        v38 = 2082;
        v39 = v13;
        _os_log_impl(&dword_1AB607000, v11, OS_LOG_TYPE_FAULT, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", buf, 0x1Cu);
        if (SBYTE3(v35) < 0)
        {
          operator delete(*__p);
        }
      }

      v14 = sub_1AB60902C();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        goto LABEL_43;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v15 = off_1EB46D730;
      v16 = CFGetTypeID(cf);
      sub_1AB6195C0(a2, v30);
      if (v31 >= 0)
      {
        v17 = v30;
      }

      else
      {
        v17 = v30[0];
      }

      *__p = 67240706;
      *&__p[4] = a4;
      *&__p[8] = 2050;
      *&__p[10] = v16;
      v34 = 2082;
      v35 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v15, 17, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", __p, 28);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::copyInternal(CFStringRef, CFTypeRef &, int) const", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }

LABEL_43:
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

void sub_1AB61E534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AB61E56C(uint64_t a1, const void *a2, void *a3)
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

uint64_t sub_1AB61E5D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1AB61E6A8(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61E714(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61E714(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695E4D0];
  if (!*a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 896))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v8 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v15 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v16 = 136446210;
      v17 = v11;
      v12 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v10, 17, "could not create cf type for key %{public}s", &v16, 12);
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v6 != 0;
}

BOOL sub_1AB61E9BC(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61EA28(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61EA28(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB61ECCC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61ED38(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61ED38(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const short &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB61EFD0(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61F03C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61F03C(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB61F2E0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61F34C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61F34C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB61F5E4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61F650(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61F650(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB61F8E8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61F954(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61F954(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const long &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB61FBEC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61FC58(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61FC58(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const double &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB61FEF0(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB61FF5C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB61FF5C(uint64_t a1, const __CFString *a2, char *cStr)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const char *)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB6201FC(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_1AB61FF5C(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_1AB620274(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_1AB61FF5C(a1, a2, a3);
}

uint64_t sub_1AB620288(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 896))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1AB62035C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB6203C8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB6203C8(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 896))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return Copy != 0;
}

uint64_t sub_1AB620660(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(a1[1], a2, a3);
  v4 = *(*a1 + 106);

  return v4(a1);
}

uint64_t sub_1AB6206D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1AB6207A4(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB620810(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB620810(uint64_t a1, const __CFString *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695E4D0];
  if (!*a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  CFRetain(*v5);
  if (v6)
  {
    (*(*a1 + 928))(a1, a2, v6);
    CFRelease(v6);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v8 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_1AB60902C();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v15 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v16 = 136446210;
      v17 = v11;
      v12 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v10, 17, "could not create cf type for key %{public}s", &v16, 12);
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v6 != 0;
}

BOOL sub_1AB620AB8(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB620B24(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB620B24(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB620DC8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB620E34(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB620E34(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const short &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB6210CC(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB621138(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB621138(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB6213DC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB621448(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB621448(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB6216E0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB62174C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB62174C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB6219E4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB621A50(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB621A50(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const long &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB621CE8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB621D54(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB621D54(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const double &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB621FEC(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB622058(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB622058(uint64_t a1, const __CFString *a2, char *cStr)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v5)
  {
    (*(*a1 + 928))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const char *)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_1AB6222F8(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (a3[23] >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = sub_1AB622058(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_1AB622370(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_1AB622058(a1, a2, a3);
}

uint64_t sub_1AB622384(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1AB622458(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_1AB6224C4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1AB6224C4(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a3 + 8));
  if (Copy)
  {
    (*(*a1 + 928))(a1, a2, Copy);
    CFRelease(Copy);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v6 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_1AB60902C();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = off_1EB46D730;
      sub_1AB6195C0(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return Copy != 0;
}

uint64_t sub_1AB62275C(uint64_t a1, uint64_t a2, const void *a3)
{
  arg = 0;
  if ((*(*a1 + 912))(a1, a2, &arg))
  {
    CFAutorelease(arg);
    v6 = CFGetTypeID(arg);
    if (v6 == CFArrayGetTypeID())
    {
      Mutable = arg;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      CFAutorelease(Mutable);
      CFArrayAppendValue(Mutable, arg);
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFArrayGetTypeID())
    {
      v11.length = CFArrayGetCount(a3);
      v11.location = 0;
      CFArrayAppendArray(Mutable, a3, v11);
    }

    else
    {
      CFArrayAppendValue(Mutable, a3);
    }
  }

  else
  {
    Mutable = a3;
  }

  return (*(*a1 + 896))(a1, a2, Mutable);
}

uint64_t sub_1AB6228F8(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v4 = (*(*a1 + 864))(a1, v3);
  CFRelease(v3);
  return v4;
}

CFIndex sub_1AB6229A4(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
  }

  else
  {
    Count = 1;
  }

  CFRelease(cf);
  return Count;
}

BOOL sub_1AB622AF0(uint64_t a1, CFDataRef *a2)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(a1 + 8), kCFPropertyListXMLFormat_v1_0, 0, 0);
  *a2 = Data;
  return Data != 0;
}

uint64_t sub_1AB622B40(uint64_t a1, CFTypeRef *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  error = 0;
  if (v4)
  {
    v5 = v4;
    if (!CFWriteStreamOpen(v4))
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v11 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AB607000, v11, OS_LOG_TYPE_FAULT, "could not open write stream", buf, 2u);
      }

      v12 = sub_1AB60902C();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_54;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      *v23 = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not open write stream", v23, 2);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
      if (v13 == buf)
      {
        goto LABEL_54;
      }

LABEL_53:
      free(v13);
LABEL_54:
      v7 = 0;
LABEL_55:
      CFRelease(v5);
      if (error)
      {
        CFRelease(error);
      }

      return v7;
    }

    v6 = CFPropertyListWrite(*(a1 + 8), v5, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (!error && v6)
    {
      *a2 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
      CFWriteStreamClose(v5);
      v7 = 1;
      goto LABEL_55;
    }

    if (error)
    {
      Code = CFErrorGetCode(error);
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        goto LABEL_34;
      }
    }

    else
    {
      Code = 0;
    }

    Domain = @"unknown error";
LABEL_34:
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v16 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      sub_1AB6195C0(Domain, buf);
      v17 = v32 >= 0 ? buf : *buf;
      *v23 = 134349314;
      *&v23[4] = Code;
      v24 = 2082;
      v25 = v17;
      _os_log_impl(&dword_1AB607000, v16, OS_LOG_TYPE_FAULT, "could not write data, error code, %{public}ld, error domain, %{public}s", v23, 0x16u);
      if (v32 < 0)
      {
        operator delete(*buf);
      }
    }

    v18 = sub_1AB60902C();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v19 = off_1EB46D730;
    sub_1AB6195C0(Domain, v23);
    if (v26 >= 0)
    {
      v20 = v23;
    }

    else
    {
      v20 = *v23;
    }

    v27 = 134349314;
    v28 = Code;
    v29 = 2082;
    v30 = v20;
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v19, 17, "could not write data, error code, %{public}ld, error domain, %{public}s", &v27, 22);
    if (v26 < 0)
    {
      operator delete(*v23);
    }

    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2039620);
  }

  v8 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "could not create write stream", buf, 2u);
  }

  v9 = sub_1AB60902C();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    *v23 = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not create write stream", v23, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return 0;
}

BOOL sub_1AB6230DC(void *a1, const __CFData *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  error = 0;
  v5 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 1uLL, 0, &error);
  if (v5)
  {
    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
    }

    a1[1] = v5;
    (*(*a1 + 848))(a1);
    goto LABEL_35;
  }

  if (!error)
  {
    Code = 0;
    goto LABEL_9;
  }

  Code = CFErrorGetCode(error);
  if (!error)
  {
LABEL_9:
    Domain = @"unknown error";
    goto LABEL_10;
  }

  Domain = CFErrorGetDomain(error);
LABEL_10:
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2039620);
  }

  v9 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    if (Domain)
    {
      sub_1AB6195C0(Domain, __p);
      if (v26 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = v10;
      _os_log_impl(&dword_1AB607000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 134349314;
      *&buf[4] = Code;
      v18 = 2082;
      v19 = "unknown error";
      _os_log_impl(&dword_1AB607000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
    }
  }

  v11 = sub_1AB60902C();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v12 = off_1EB46D730;
    if (Domain)
    {
      sub_1AB6195C0(Domain, buf);
      if (v20 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }
    }

    else
    {
      v13 = "unknown error";
    }

    v21 = 134349314;
    v22 = Code;
    v23 = 2082;
    v24 = v13;
    v14 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_1AB607000, v12, 17, "could not create intermediate property list - %{public}ld (%{public}s)", &v21, 22);
    if (Domain && v20 < 0)
    {
      operator delete(*buf);
    }

    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::deserialize(const CFDataRef)", "CoreLocation: %s\n", v14);
    if (v14 != __p)
    {
      free(v14);
    }
  }

LABEL_35:
  if (error)
  {
    CFRelease(error);
  }

  return v5 != 0;
}

void sub_1AB62348C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  (*(*a1 + 800))(a1, __p);
  if (qword_1EB46D738 != -1)
  {
    dispatch_once(&qword_1EB46D738, &unk_1F2039660);
  }

  v1 = qword_1EB46D740;
  if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
  {
    v2 = __p;
    if (v7 < 0)
    {
      v2 = __p[0];
    }

    *buf = 136315138;
    v11 = v2;
    _os_log_impl(&dword_1AB607000, v1, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v3 = sub_1AB60902C();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D738 != -1)
    {
      dispatch_once(&qword_1EB46D738, &unk_1F2039660);
    }

    v4 = __p;
    if (v7 < 0)
    {
      v4 = __p[0];
    }

    v8 = 136315138;
    v9 = v4;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D740, 2, "%s", &v8);
    sub_1AB60C944("Generic", 1, 0, 2, "virtual void CLNameValuePair::print() const", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AB6236BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB6236DC(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 8);
  if (v4 && CFDictionaryGetCount(v4))
  {
    memset(&context, 0, sizeof(context));
    CFDictionaryApplyFunction(*(a1 + 8), sub_1AB6237B0, &context);
    std::string::operator=(a2, &context);
    if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(context.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      a2->__r_.__value_.__l.__size_ = 8;
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = 8;
    }

    strcpy(a2, "<empty>\n");
  }
}

void sub_1AB623794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB6237B0(const __CFString *a1, const __CFString *a2, std::string *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    sub_1AB61D148(a1, &__p);
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9 = __p.__r_.__value_.__r.__words[0];
      Count = CFDictionaryGetCount(a2);
      p_p = &__p;
      if (v8 < 0)
      {
        p_p = v9;
      }

      snprintf(__str, 0x100uLL, "%s = <dictionary (%ld entries)>:\n", p_p, Count);
      v12 = strlen(__str);
      std::string::append(a3, __str, v12);
      CFDictionaryApplyFunction(a2, sub_1AB6237B0, a3);
    }

    else
    {
      v16 = CFGetTypeID(a2);
      if (v16 == CFArrayGetTypeID())
      {
        v17.length = CFArrayGetCount(a2);
        v18 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        *&context.__r_.__value_.__l.__data_ = v18;
        context.__r_.__value_.__r.__words[2] = a3;
        v17.location = 0;
        CFArrayApplyFunction(a2, v17, sub_1AB6246AC, &context);
      }

      else
      {
        v19 = CFGetTypeID(a2);
        if (v19 == CFStringGetTypeID())
        {
          memset(&context, 0, sizeof(context));
          if (sub_1AB61D148(a2, &context))
          {
            v20 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __p.__r_.__value_.__r.__words[0];
            }

            p_context = &context;
            if ((context.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_context = context.__r_.__value_.__r.__words[0];
            }

            snprintf(__str, 0x100uLL, "%s = %s\n", v20, p_context);
          }

          v22 = strlen(__str);
          std::string::append(a3, __str, v22);
          if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(context.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v23 = CFGetTypeID(a2);
          if (v23 == CFNumberGetTypeID())
          {
            context.__r_.__value_.__r.__words[0] = 0;
            if (sub_1AB61CDD0(a2, &context))
            {
              v24 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v24 = __p.__r_.__value_.__r.__words[0];
              }

              snprintf(__str, 0x100uLL, "%s = %0.6f\n", v24, *&context.__r_.__value_.__l.__data_);
            }

            v25 = strlen(__str);
            std::string::append(a3, __str, v25);
          }

          else
          {
            v26 = CFGetTypeID(a2);
            if (v26 == CFBooleanGetTypeID())
            {
              CFBooleanGetValue(a2);
              snprintf(__str, 0x100uLL, "%s = %d\n");
            }

            else
            {
              CFGetTypeID(a2);
              snprintf(__str, 0x100uLL, "%s = <unhandled value type %lu>\n");
            }

            v27 = strlen(__str);
            std::string::append(a3, __str, v27);
          }
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    snprintf(__str, 0x100uLL, "type ID does not match - %lu vs %lu\n", v13, TypeID);
    v15 = strlen(__str);
    std::string::append(a3, __str, v15);
  }
}

void sub_1AB623B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB623B68(const __CFString *a1, const __CFString *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    memset(&v59, 0, sizeof(v59));
    sub_1AB61D148(a1, &v59);
    v5 = CFGetTypeID(a2);
    if (v5 == CFDictionaryGetTypeID())
    {
      if (qword_1EB46D738 != -1)
      {
        dispatch_once(&qword_1EB46D738, &unk_1F2039660);
      }

      v6 = qword_1EB46D740;
      if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
      {
        v7 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v8 = v59.__r_.__value_.__r.__words[0];
        Count = CFDictionaryGetCount(a2);
        v10 = &v59;
        if (v7 < 0)
        {
          v10 = v8;
        }

        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = Count;
        _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_DEBUG, "\t%s = <dictionary (%ld entries)>:", buf, 0x16u);
      }

      v11 = sub_1AB60902C();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D738 != -1)
        {
          dispatch_once(&qword_1EB46D738, &unk_1F2039660);
        }

        v12 = qword_1EB46D740;
        v13 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v14 = v59.__r_.__value_.__r.__words[0];
        v15 = CFDictionaryGetCount(a2);
        v16 = &v59;
        if (v13 < 0)
        {
          v16 = v14;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v16;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v15;
        v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v12, 2, "\t%s = <dictionary (%ld entries)>:", &__p, 22);
        sub_1AB60C944("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      CFDictionaryApplyFunction(a2, sub_1AB623B68, 0);
      goto LABEL_99;
    }

    v18 = CFGetTypeID(a2);
    if (v18 == CFArrayGetTypeID())
    {
      v19.length = CFArrayGetCount(a2);
      *&buf[8] = 0uLL;
      v20 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v59.__r_.__value_.__r.__words[0];
      }

      *buf = v20;
      v19.location = 0;
      CFArrayApplyFunction(a2, v19, sub_1AB624624, buf);
      goto LABEL_99;
    }

    v21 = CFGetTypeID(a2);
    if (v21 == CFStringGetTypeID())
    {
      memset(&__p, 0, sizeof(__p));
      if (sub_1AB61D148(a2, &__p))
      {
        if (qword_1EB46D738 != -1)
        {
          dispatch_once(&qword_1EB46D738, &unk_1F2039660);
        }

        v22 = qword_1EB46D740;
        if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
        {
          v23 = &v59;
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = v59.__r_.__value_.__r.__words[0];
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v23;
          *&buf[12] = 2080;
          *&buf[14] = p_p;
          _os_log_impl(&dword_1AB607000, v22, OS_LOG_TYPE_DEBUG, "\t%s = %s", buf, 0x16u);
        }

        v25 = sub_1AB60902C();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EB46D738 != -1)
          {
            dispatch_once(&qword_1EB46D738, &unk_1F2039660);
          }

          v26 = &v59;
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v59.__r_.__value_.__r.__words[0];
          }

          v27 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = __p.__r_.__value_.__r.__words[0];
          }

          *v60 = 136315394;
          *&v60[4] = v26;
          v61 = 2080;
          v62 = v27;
          v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D740, 2, "\t%s = %s", v60, 22);
          sub_1AB60C944("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v28);
          if (v28 != buf)
          {
            free(v28);
          }
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_99;
    }

    v29 = CFGetTypeID(a2);
    if (v29 == CFNumberGetTypeID())
    {
      *v60 = 0;
      if (!sub_1AB61CDD0(a2, v60))
      {
        goto LABEL_99;
      }

      if (qword_1EB46D738 != -1)
      {
        dispatch_once(&qword_1EB46D738, &unk_1F2039660);
      }

      v30 = qword_1EB46D740;
      if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
      {
        v31 = &v59;
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v59.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = *v60;
        _os_log_impl(&dword_1AB607000, v30, OS_LOG_TYPE_DEBUG, "\t%s = %0.6f", buf, 0x16u);
      }

      v32 = sub_1AB60902C();
      if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
      {
        goto LABEL_99;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D738 != -1)
      {
        dispatch_once(&qword_1EB46D738, &unk_1F2039660);
      }

      v33 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v59.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v33;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = *v60;
      LODWORD(v58) = 22;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D740, 2, "\t%s = %0.6f", &__p, v58);
      sub_1AB60C944("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v34);
      if (v34 == buf)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v35 = CFGetTypeID(a2);
      if (v35 == CFBooleanGetTypeID())
      {
        if (qword_1EB46D738 != -1)
        {
          dispatch_once(&qword_1EB46D738, &unk_1F2039660);
        }

        v36 = qword_1EB46D740;
        if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
        {
          v37 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
          v38 = v59.__r_.__value_.__r.__words[0];
          Value = CFBooleanGetValue(a2);
          v40 = &v59;
          if (v37 < 0)
          {
            v40 = v38;
          }

          *buf = 136315394;
          *&buf[4] = v40;
          *&buf[12] = 1024;
          *&buf[14] = Value;
          _os_log_impl(&dword_1AB607000, v36, OS_LOG_TYPE_DEBUG, "\t%s = %d", buf, 0x12u);
        }

        v41 = sub_1AB60902C();
        if (*(v41 + 160) <= 1 && *(v41 + 164) <= 1 && *(v41 + 168) <= 1 && !*(v41 + 152))
        {
          goto LABEL_99;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EB46D738 != -1)
        {
          dispatch_once(&qword_1EB46D738, &unk_1F2039660);
        }

        v42 = qword_1EB46D740;
        v43 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v44 = v59.__r_.__value_.__r.__words[0];
        v45 = CFBooleanGetValue(a2);
        v46 = &v59;
        if (v43 < 0)
        {
          v46 = v44;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v46;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v45;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v42, 2, "\t%s = %d", &__p, 18);
        sub_1AB60C944("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v34);
      }

      else
      {
        if (qword_1EB46D738 != -1)
        {
          dispatch_once(&qword_1EB46D738, &unk_1F2039660);
        }

        v47 = qword_1EB46D740;
        if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
        {
          v48 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
          v49 = v59.__r_.__value_.__r.__words[0];
          v50 = CFGetTypeID(a2);
          v51 = &v59;
          if (v48 < 0)
          {
            v51 = v49;
          }

          *buf = 136315394;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = v50;
          _os_log_impl(&dword_1AB607000, v47, OS_LOG_TYPE_DEBUG, "\t%s = <unhandled value type %lu>", buf, 0x16u);
        }

        v52 = sub_1AB60902C();
        if (*(v52 + 160) <= 1 && *(v52 + 164) <= 1 && *(v52 + 168) <= 1 && !*(v52 + 152))
        {
          goto LABEL_99;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EB46D738 != -1)
        {
          dispatch_once(&qword_1EB46D738, &unk_1F2039660);
        }

        v53 = qword_1EB46D740;
        v54 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
        v55 = v59.__r_.__value_.__r.__words[0];
        v56 = CFGetTypeID(a2);
        v57 = &v59;
        if (v54 < 0)
        {
          v57 = v55;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v57;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v56;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v53, 2, "\t%s = <unhandled value type %lu>", &__p, 22);
        sub_1AB60C944("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v34);
      }

      if (v34 == buf)
      {
LABEL_99:
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    free(v34);
    goto LABEL_99;
  }
}

void sub_1AB6245B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB624624(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_1AB623B68(v4, a1);
  ++*(a2 + 8);

  CFRelease(v4);
}

void sub_1AB6246AC(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_1AB6237B0(v4, a1, *(a2 + 16));
  ++*(a2 + 8);

  CFRelease(v4);
}

os_log_t sub_1AB624738()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

os_log_t sub_1AB624768()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1EB46D710 = result;
  return result;
}

os_log_t sub_1AB624798()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EB46D740 = result;
  return result;
}

void CLClientGetDistanceCoordinates(double a1, double a2, double a3, double a4)
{
  if ((atomic_load_explicit(qword_1ED4B7F30, memory_order_acquire) & 1) == 0)
  {
    v8 = a4;
    v9 = a2;
    v6 = a3;
    v7 = a1;
    v5 = __cxa_guard_acquire(qword_1ED4B7F30);
    a3 = v6;
    a1 = v7;
    a4 = v8;
    a2 = v9;
    if (v5)
    {
      qword_1ED4B7F50 = 0;
      unk_1ED4B7F58 = 0;
      xmmword_1ED4B7F40 = xmmword_1AB62A580;
      qword_1ED4B7F60 = 0x3FF0000000000000;
      __cxa_guard_release(qword_1ED4B7F30);
      a3 = v6;
      a1 = v7;
      a4 = v8;
      a2 = v9;
    }
  }

  sub_1AB608B34(&xmmword_1ED4B7F40, a1, a2, a3, a4, 0.0);
}

CFStringRef CLClientCreateIso6709Notation(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *MEMORY[0x1E695E480];
  v4 = *(a1 + 4);
  if (v2 >= 0.0)
  {
    return CFStringCreateWithFormat(v3, 0, @"%+08.4lf%+09.4lf%+08.3lf/", v4, *&v4, *(a1 + 12), *(a1 + 28));
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"%+08.4lf%+09.4lf/", v4, *(a1 + 4), *(a1 + 12));
  }
}

void CLClientSnapLocationToResolution(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  *(a2 + 140) = *(a1 + 140);
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  *(a2 + 96) = v7;
  v10 = a3 * 1.41421356;
  if (*(a2 + 20) < a3 * 1.41421356)
  {
    sub_1AB61199C((a2 + 4), (a2 + 12), a3);
    *(a2 + 20) = v10;
  }
}

uint64_t sub_1AB627460(double a1, double a2, uint64_t a3, const char *a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  return objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], a4, v5, "{CLLocationCoordinate2D=dd}");
}

os_log_t sub_1AB627498()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1EB46D6F0 = result;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}