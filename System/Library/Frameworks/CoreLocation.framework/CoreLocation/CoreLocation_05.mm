BOOL sub_19B92E6C8(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B87D70C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E734(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B87D70C(a1, a2, a3);
}

BOOL sub_19B92E78C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92E7F8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E7F8(uint64_t a1, const __CFString *a2, uint64_t a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return Copy != 0;
}

uint64_t sub_19B92EA90(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B92EB64(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92EBD0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92EBD0(uint64_t a1, const __CFString *a2, _BYTE *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v8 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v10 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v12 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v10, 17, "could not create cf type for key %{public}s", &v16, 12);
      if (v15 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const BOOL &)", "CoreLocation: %s\n", v12);
      if (v12 != __p)
      {
        free(v12);
      }
    }
  }

  return v6 != 0;
}

BOOL sub_19B92EE78(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92EEE4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92EEE4(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92F188(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92F1F4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92F1F4(uint64_t a1, const __CFString *a2, const void *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const short &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92F48C(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92F4F8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92F4F8(uint64_t a1, const __CFString *a2, unsigned int *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92F79C(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92F808(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92F808(uint64_t a1, const __CFString *a2, const void *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92FAA0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92FB0C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92FB0C(uint64_t a1, const __CFString *a2, const void *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const int &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92FDA4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92FE10(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92FE10(uint64_t a1, const __CFString *a2, const void *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const long &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B9300A8(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B930114(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B930114(uint64_t a1, const __CFString *a2, const void *a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const double &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B9303AC(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B930418(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B930418(uint64_t a1, const __CFString *a2, char *cStr)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const char *)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B9306B8(uint64_t a1, const char *a2, char *a3)
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

  v7 = sub_19B930418(a1, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL sub_19B930730(uint64_t a1, const __CFString *a2, char *a3)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return sub_19B930418(a1, a2, a3);
}

uint64_t sub_19B930744(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 928))(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_19B930818(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B930884(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B930884(uint64_t a1, const __CFString *a2, uint64_t a3)
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
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
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::insert(CFStringRef, const CLNameValuePair &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return Copy != 0;
}

uint64_t sub_19B930B1C(uint64_t a1, uint64_t a2, const void *a3)
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

uint64_t sub_19B930CB8(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v4 = (*(*a1 + 864))(a1, v3);
  CFRelease(v3);
  return v4;
}

CFIndex sub_19B930D64(uint64_t a1, uint64_t a2)
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

BOOL sub_19B930EB0(uint64_t a1, CFDataRef *a2)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(a1 + 8), kCFPropertyListXMLFormat_v1_0, 0, 0);
  *a2 = Data;
  return Data != 0;
}

uint64_t sub_19B930F00(uint64_t a1, CFTypeRef *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  error = 0;
  if (v4)
  {
    v5 = v4;
    if (!CFWriteStreamOpen(v4))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v11 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "could not open write stream", buf, 2u);
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_54;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      *v23 = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "could not open write stream", v23, 2);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
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
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v16 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(Domain, buf);
      v17 = v32 >= 0 ? buf : *buf;
      *v23 = 134349314;
      *&v23[4] = Code;
      v24 = 2082;
      v25 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "could not write data, error code, %{public}ld, error domain, %{public}s", v23, 0x16u);
      if (v32 < 0)
      {
        operator delete(*buf);
      }
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v19 = off_1ED519060;
    sub_19B929670(Domain, v23);
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
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 17, "could not write data, error code, %{public}ld, error domain, %{public}s", &v27, 22);
    if (v26 < 0)
    {
      operator delete(*v23);
    }

    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
  }

  v8 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not create write stream", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    *v23 = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "could not create write stream", v23, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return 0;
}

BOOL sub_19B93149C(void *a1, const __CFData *a2)
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
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
  }

  v9 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    if (Domain)
    {
      sub_19B929670(Domain, __p);
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
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
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
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "could not create intermediate property list - %{public}ld (%{public}s)", buf, 0x16u);
    }
  }

  v11 = sub_19B87DD40();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v12 = off_1ED519060;
    if (Domain)
    {
      sub_19B929670(Domain, buf);
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
    v14 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v12, 17, "could not create intermediate property list - %{public}ld (%{public}s)", &v21, 22);
    if (Domain && v20 < 0)
    {
      operator delete(*buf);
    }

    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::deserialize(const CFDataRef)", "CoreLocation: %s\n", v14);
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

void sub_19B93184C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  (*(*a1 + 800))(a1, __p);
  if (qword_1EAFE47C8 != -1)
  {
    dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
  }

  v1 = qword_1EAFE47D0;
  if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
  {
    v2 = __p;
    if (v7 < 0)
    {
      v2 = __p[0];
    }

    *buf = 136315138;
    v11 = v2;
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47C8 != -1)
    {
      dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
    }

    v4 = __p;
    if (v7 < 0)
    {
      v4 = __p[0];
    }

    v8 = 136315138;
    v9 = v4;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47D0, 2, "%s", &v8, 12);
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLNameValuePair::print() const", "CoreLocation: %s\n", v5);
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

void sub_19B931A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B931A9C(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 8);
  if (v4 && CFDictionaryGetCount(v4))
  {
    memset(&context, 0, sizeof(context));
    CFDictionaryApplyFunction(*(a1 + 8), sub_19B931B70, &context);
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

void sub_19B931B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B931B70(const __CFString *a1, const __CFString *a2, std::string *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    memset(&__p, 0, sizeof(__p));
    sub_19B92C864(a1, &__p);
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
      CFDictionaryApplyFunction(a2, sub_19B931B70, a3);
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
        CFArrayApplyFunction(a2, v17, sub_19B932A6C, &context);
      }

      else
      {
        v19 = CFGetTypeID(a2);
        if (v19 == CFStringGetTypeID())
        {
          memset(&context, 0, sizeof(context));
          if (sub_19B92C864(a2, &context))
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
            if (sub_19B92C4EC(a2, &context))
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

void sub_19B931EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B931F28(const __CFString *a1, const __CFString *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    memset(&v58, 0, sizeof(v58));
    sub_19B92C864(a1, &v58);
    v5 = CFGetTypeID(a2);
    if (v5 == CFDictionaryGetTypeID())
    {
      if (qword_1EAFE47C8 != -1)
      {
        dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
      }

      v6 = qword_1EAFE47D0;
      if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
      {
        v7 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
        v8 = v58.__r_.__value_.__r.__words[0];
        Count = CFDictionaryGetCount(a2);
        v10 = &v58;
        if (v7 < 0)
        {
          v10 = v8;
        }

        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = Count;
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "\t%s = <dictionary (%ld entries)>:", buf, 0x16u);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
        }

        v12 = qword_1EAFE47D0;
        v13 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
        v14 = v58.__r_.__value_.__r.__words[0];
        v15 = CFDictionaryGetCount(a2);
        v16 = &v58;
        if (v13 < 0)
        {
          v16 = v14;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v16;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v15;
        v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v12, 2, "\t%s = <dictionary (%ld entries)>:", &__p, 22);
        sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      CFDictionaryApplyFunction(a2, sub_19B931F28, 0);
      goto LABEL_99;
    }

    v18 = CFGetTypeID(a2);
    if (v18 == CFArrayGetTypeID())
    {
      v19.length = CFArrayGetCount(a2);
      *&buf[8] = 0uLL;
      v20 = &v58;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v58.__r_.__value_.__r.__words[0];
      }

      *buf = v20;
      v19.location = 0;
      CFArrayApplyFunction(a2, v19, sub_19B9329E4, buf);
      goto LABEL_99;
    }

    v21 = CFGetTypeID(a2);
    if (v21 == CFStringGetTypeID())
    {
      memset(&__p, 0, sizeof(__p));
      if (sub_19B92C864(a2, &__p))
      {
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
        }

        v22 = qword_1EAFE47D0;
        if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
        {
          v23 = &v58;
          if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = v58.__r_.__value_.__r.__words[0];
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
          _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "\t%s = %s", buf, 0x16u);
        }

        v25 = sub_19B87DD40();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE47C8 != -1)
          {
            dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
          }

          v26 = &v58;
          if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v58.__r_.__value_.__r.__words[0];
          }

          v27 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = __p.__r_.__value_.__r.__words[0];
          }

          *v59 = 136315394;
          *&v59[4] = v26;
          v60 = 2080;
          v61 = v27;
          v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47D0, 2, "\t%s = %s", v59, 22);
          sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v28);
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
      *v59 = 0;
      if (!sub_19B92C4EC(a2, v59))
      {
        goto LABEL_99;
      }

      if (qword_1EAFE47C8 != -1)
      {
        dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
      }

      v30 = qword_1EAFE47D0;
      if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
      {
        v31 = &v58;
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v58.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = *v59;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "\t%s = %0.6f", buf, 0x16u);
      }

      v32 = sub_19B87DD40();
      if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
      {
        goto LABEL_99;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47C8 != -1)
      {
        dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
      }

      v33 = &v58;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v58.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v33;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = *v59;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47D0, 2, "\t%s = %0.6f", &__p, 22);
      sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v34);
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
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
        }

        v36 = qword_1EAFE47D0;
        if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
        {
          v37 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
          v38 = v58.__r_.__value_.__r.__words[0];
          Value = CFBooleanGetValue(a2);
          v40 = &v58;
          if (v37 < 0)
          {
            v40 = v38;
          }

          *buf = 136315394;
          *&buf[4] = v40;
          *&buf[12] = 1024;
          *&buf[14] = Value;
          _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "\t%s = %d", buf, 0x12u);
        }

        v41 = sub_19B87DD40();
        if (*(v41 + 160) <= 1 && *(v41 + 164) <= 1 && *(v41 + 168) <= 1 && !*(v41 + 152))
        {
          goto LABEL_99;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
        }

        v42 = qword_1EAFE47D0;
        v43 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
        v44 = v58.__r_.__value_.__r.__words[0];
        v45 = CFBooleanGetValue(a2);
        v46 = &v58;
        if (v43 < 0)
        {
          v46 = v44;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v46;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v45;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v42, 2, "\t%s = %d", &__p, 18);
        sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v34);
      }

      else
      {
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
        }

        v47 = qword_1EAFE47D0;
        if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
        {
          v48 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
          v49 = v58.__r_.__value_.__r.__words[0];
          v50 = CFGetTypeID(a2);
          v51 = &v58;
          if (v48 < 0)
          {
            v51 = v49;
          }

          *buf = 136315394;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = v50;
          _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEBUG, "\t%s = <unhandled value type %lu>", buf, 0x16u);
        }

        v52 = sub_19B87DD40();
        if (*(v52 + 160) <= 1 && *(v52 + 164) <= 1 && *(v52 + 168) <= 1 && !*(v52 + 152))
        {
          goto LABEL_99;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6C3F0);
        }

        v53 = qword_1EAFE47D0;
        v54 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
        v55 = v58.__r_.__value_.__r.__words[0];
        v56 = CFGetTypeID(a2);
        v57 = &v58;
        if (v54 < 0)
        {
          v57 = v55;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v57;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v56;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v53, 2, "\t%s = <unhandled value type %lu>", &__p, 22);
        sub_19B885924("Generic", 1, 0, 2, "static void CLNameValuePair::printKeyValue(const void *, const void *, void *)", "CoreLocation: %s\n", v34);
      }

      if (v34 == buf)
      {
LABEL_99:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    free(v34);
    goto LABEL_99;
  }
}

void sub_19B932978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9329E4(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B931F28(v4, a1);
  ++*(a2 + 8);

  CFRelease(v4);
}

void sub_19B932A6C(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s[%d]", *a2, *(a2 + 8));
  sub_19B931B70(v4, a1, *(a2 + 16));
  ++*(a2 + 8);

  CFRelease(v4);
}

os_log_t sub_19B932AF8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

os_log_t sub_19B932B28()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

os_log_t sub_19B932B58()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE47D0 = result;
  return result;
}

os_log_t sub_19B9342E4()
{
  result = os_log_create("com.apple.locationd.Position", "Position");
  qword_1EAFE4770 = result;
  return result;
}

BOOL sub_19B934314()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B93435C();
  v1 = qword_1EAFE5B58 != 0;
  objc_msgSend_showCalibrationAlert(qword_1EAFE5B58, v2, v3, v4);
  objc_autoreleasePoolPop(v0);
  return v1;
}

void sub_19B93435C()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE5100)
  {
    return;
  }

  qword_1EAFE5100 = dlopen("/System/Library/PrivateFrameworks/CompassUI.framework/CompassUI", 1);
  if (qword_1EAFE5100)
  {
    qword_1EAFE5B58 = NSClassFromString(&cfstr_Cuicalibration.isa);
    if (!qword_1EAFE5B58)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6C430);
      }

      v0 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "Could not load CUICalibrationClass from CompassUI framework", buf, 2u);
      }

      v1 = sub_19B87DD40();
      if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6C430);
        }

        v6[0] = 0;
        v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Could not load CUICalibrationClass from CompassUI framework", v6, 2);
LABEL_25:
        v5 = v2;
        sub_19B885924("Generic", 1, 0, 0, "void CLClientLoadCompassUIIfNecessary(void)", "CoreLocation: %s\n", v2);
        if (v5 != buf)
        {
          free(v5);
        }
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6C430);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "Unable to load CompassUI framework", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6C430);
      }

      v6[0] = 0;
      v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Unable to load CompassUI framework", v6, 2);
      goto LABEL_25;
    }
  }
}

void sub_19B934624()
{
  v0 = objc_autoreleasePoolPush();
  sub_19B93435C();
  objc_msgSend_dismissCalibrationAlert(qword_1EAFE5B58, v1, v2, v3);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_19B93466C(uint64_t a1)
{
  *a1 = &unk_1F0E6C460;
  pthread_mutex_destroy(*(a1 + 8));
  v5 = *(a1 + 8);
  v6 = *(v5 + 104);
  if (v6)
  {
    free(v6);
    v5 = *(a1 + 8);
    *(v5 + 104) = 0;
  }

  objc_msgSend_assertInside(*(v5 + 64), v2, v3, v4);

  v7 = *(a1 + 8);
  if (v7)
  {
    MEMORY[0x19EAE98C0](v7, 0x10B0C4016A090D5);
  }

  return a1;
}

void sub_19B934704(uint64_t a1)
{
  sub_19B93466C(a1);

  JUMPOUT(0x19EAE98C0);
}

BOOL sub_19B93473C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  return *(*(a1 + 8) + 72) == v4;
}

BOOL sub_19B93477C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  v5 = *(*(a1 + 8) + 80);
  return v5 == pthread_self();
}

BOOL sub_19B9347BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  v5 = *(*(a1 + 8) + 80);
  return v5 != pthread_self();
}

os_log_t sub_19B934804()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

uint64_t sub_19B934A5C(uint64_t a1)
{
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___CLMapsXPCServiceManager;
  v1 = objc_msgSendSuper2(&v9, sel_allocWithZone_, 0);
  qword_1ED519168 = objc_msgSend_init(v1, v2, v3, v4);
  return objc_msgSend_createConnection(qword_1ED519168, v5, v6, v7);
}

uint64_t sub_19B935280(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v34 = objc_msgSend_code(a2, v5, v6, v7);
    v35 = 2114;
    v36 = objc_msgSend_domain(a2, v8, v9, v10);
    v37 = 2113;
    v38 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService synchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v14 = sub_19B87DD40();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v18 = qword_1EAFE46E8;
    v27 = 134349571;
    v28 = objc_msgSend_code(a2, v15, v16, v17);
    v29 = 2114;
    v30 = objc_msgSend_domain(a2, v19, v20, v21);
    v31 = 2113;
    v32 = objc_msgSend_localizedDescription(a2, v22, v23, v24);
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 16, "CLMM,CLTSP,CLMapHelperService XPCService synchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v27, 32);
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B9354D8(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v34 = objc_msgSend_code(a2, v5, v6, v7);
    v35 = 2114;
    v36 = objc_msgSend_domain(a2, v8, v9, v10);
    v37 = 2113;
    v38 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService asynchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v14 = sub_19B87DD40();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v18 = qword_1EAFE46E8;
    v27 = 134349571;
    v28 = objc_msgSend_code(a2, v15, v16, v17);
    v29 = 2114;
    v30 = objc_msgSend_domain(a2, v19, v20, v21);
    v31 = 2113;
    v32 = objc_msgSend_localizedDescription(a2, v22, v23, v24);
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 16, "CLMM,CLTSP,CLMapHelperService XPCService asynchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v27, 32);
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B935730(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = (sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24)) * 1000.0;
  if (v5 > 200.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v10 = objc_msgSend_count(a2, v7, v8, v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      *buf = 67241729;
      v41 = v10;
      v42 = 1026;
      v43 = a2 == 0;
      v44 = 2050;
      v45 = v5;
      v46 = 2053;
      v47 = v11;
      v48 = 2053;
      v49 = v12;
      v50 = 2050;
      v51 = v13;
      v52 = 1026;
      v53 = v14;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned data,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", buf, 0x3Cu);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v19 = qword_1EAFE46E8;
      if (a2)
      {
        v20 = objc_msgSend_count(a2, v16, v17, v18);
      }

      else
      {
        v20 = -1;
      }

      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v27[0] = 67241729;
      v27[1] = v20;
      v28 = 1026;
      v29 = a2 == 0;
      v30 = 2050;
      v31 = v5;
      v32 = 2053;
      v33 = v21;
      v34 = 2053;
      v35 = v22;
      v36 = 2050;
      v37 = v23;
      v38 = 1026;
      v39 = v24;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 2, "CLMM,CLTSP,MapHelperService,XPCService returned data,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", v27, 60);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B935A1C(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = (sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24)) * 1000.0;
  if (v5 > 200.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v10 = objc_msgSend_count(a2, v7, v8, v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      *buf = 67241729;
      v41 = v10;
      v42 = 1026;
      v43 = a2 == 0;
      v44 = 2050;
      v45 = v5;
      v46 = 2053;
      v47 = v11;
      v48 = 2053;
      v49 = v12;
      v50 = 2050;
      v51 = v13;
      v52 = 1026;
      v53 = v14;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned Basic style building data,buildingCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", buf, 0x3Cu);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v19 = qword_1EAFE46E8;
      if (a2)
      {
        v20 = objc_msgSend_count(a2, v16, v17, v18);
      }

      else
      {
        v20 = -1;
      }

      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v27[0] = 67241729;
      v27[1] = v20;
      v28 = 1026;
      v29 = a2 == 0;
      v30 = 2050;
      v31 = v5;
      v32 = 2053;
      v33 = v21;
      v34 = 2053;
      v35 = v22;
      v36 = 2050;
      v37 = v23;
      v38 = 1026;
      v39 = v24;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 2, "CLMM,CLTSP,MapHelperService,XPCService returned Basic style building data,buildingCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", v27, 60);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B935D08(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = (sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24)) * 1000.0;
  if (v5 > 200.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v6 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v10 = objc_msgSend_count(a2, v7, v8, v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      *buf = 67241729;
      v41 = v10;
      v42 = 1026;
      v43 = a2 == 0;
      v44 = 2050;
      v45 = v5;
      v46 = 2053;
      v47 = v11;
      v48 = 2053;
      v49 = v12;
      v50 = 2050;
      v51 = v13;
      v52 = 1026;
      v53 = v14;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned Extended style building data,buildingCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", buf, 0x3Cu);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v19 = qword_1EAFE46E8;
      if (a2)
      {
        v20 = objc_msgSend_count(a2, v16, v17, v18);
      }

      else
      {
        v20 = -1;
      }

      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v27[0] = 67241729;
      v27[1] = v20;
      v28 = 1026;
      v29 = a2 == 0;
      v30 = 2050;
      v31 = v5;
      v32 = 2053;
      v33 = v21;
      v34 = 2053;
      v35 = v22;
      v36 = 2050;
      v37 = v23;
      v38 = 1026;
      v39 = v24;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 2, "CLMM,CLTSP,MapHelperService,XPCService returned Extended style building data,buildingCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,syncCall,%{public}d", v27, 60);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager collectMapDataOfType:aroundCoordinate:inRadius:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:callSynchronously:WithReply:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_19B936290(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v32 = objc_msgSend_code(a2, v4, v5, v6);
    v33 = 2114;
    v34 = objc_msgSend_domain(a2, v7, v8, v9);
    v35 = 2113;
    v36 = objc_msgSend_localizedDescription(a2, v10, v11, v12);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v13 = sub_19B87DD40();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v17 = qword_1EAFE46E8;
    v25 = 134349571;
    v26 = objc_msgSend_code(a2, v14, v15, v16);
    v27 = 2114;
    v28 = objc_msgSend_domain(a2, v18, v19, v20);
    v29 = 2113;
    v30 = objc_msgSend_localizedDescription(a2, v21, v22, v23);
    v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 16, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v25, 32);
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager clearMemoryAndExitHelperProcessCleanly]_block_invoke", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

void *sub_19B936740(uint64_t a1, const char *a2)
{
  result = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x1E695DFF0], a2, *(a1 + 32), sel_onTimerFire_, 0, 0, 900.0);
  *(*(a1 + 32) + 8) = result;
  return result;
}

void sub_19B936D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B936D48(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v32 = objc_msgSend_code(a2, v4, v5, v6);
    v33 = 2114;
    v34 = objc_msgSend_domain(a2, v7, v8, v9);
    v35 = 2113;
    v36 = objc_msgSend_localizedDescription(a2, v10, v11, v12);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v13 = sub_19B87DD40();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v17 = qword_1EAFE46E8;
    v25 = 134349571;
    v26 = objc_msgSend_code(a2, v14, v15, v16);
    v27 = 2114;
    v28 = objc_msgSend_domain(a2, v18, v19, v20);
    v29 = 2113;
    v30 = objc_msgSend_localizedDescription(a2, v21, v22, v23);
    v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 16, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v25, 32);
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager releaseMapHelperServiceOSTransaction]_block_invoke", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

void sub_19B93720C(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v32 = objc_msgSend_code(a2, v4, v5, v6);
    v33 = 2114;
    v34 = objc_msgSend_domain(a2, v7, v8, v9);
    v35 = 2113;
    v36 = objc_msgSend_localizedDescription(a2, v10, v11, v12);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v13 = sub_19B87DD40();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v17 = qword_1EAFE46E8;
    v25 = 134349571;
    v26 = objc_msgSend_code(a2, v14, v15, v16);
    v27 = 2114;
    v28 = objc_msgSend_domain(a2, v18, v19, v20);
    v29 = 2113;
    v30 = objc_msgSend_localizedDescription(a2, v21, v22, v23);
    v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 16, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v25, 32);
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager cancelRoadDataRequest]_block_invoke", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

void sub_19B93761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B937634(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v34 = objc_msgSend_code(a2, v5, v6, v7);
    v35 = 2114;
    v36 = objc_msgSend_domain(a2, v8, v9, v10);
    v37 = 2113;
    v38 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService synchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v14 = sub_19B87DD40();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v18 = qword_1EAFE46E8;
    v27 = 134349571;
    v28 = objc_msgSend_code(a2, v15, v16, v17);
    v29 = 2114;
    v30 = objc_msgSend_domain(a2, v19, v20, v21);
    v31 = 2113;
    v32 = objc_msgSend_localizedDescription(a2, v22, v23, v24);
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 16, "CLMM,CLTSP,CLMapHelperService XPCService synchronous map data query returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v27, 32);
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager constructRouteFromLocation:roadID:clRoadID:projection:toLocation:toRoadID:toCLRoadID:toProjection:maxRouteLength:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:iOSTime:familiarityData:useMapsAPIForIntersectionQuery:withReply:]_block_invoke", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B93788C(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = mach_continuous_time();
  v5 = sub_19B994BF4(v4) - *(*(*(a1 + 40) + 8) + 24);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v6 = v5 * 1000.0;
  v7 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    if (a2)
    {
      v12 = objc_msgSend_count(a2, v8, v9, v10);
    }

    else
    {
      v12 = -1;
    }

    *buf = 67240960;
    v30 = v11;
    v31 = 1026;
    v32 = v12;
    v33 = 1026;
    v34 = a2 == 0;
    v35 = 2050;
    v36 = v6;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned constructRouteFromLocation call,useMapsAPIForIntersectionQuery,%{public}d,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf", buf, 0x1Eu);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v17 = qword_1EAFE46E8;
    v18 = *(a1 + 48);
    if (a2)
    {
      v19 = objc_msgSend_count(a2, v14, v15, v16);
    }

    else
    {
      v19 = -1;
    }

    v22[0] = 67240960;
    v22[1] = v18;
    v23 = 1026;
    v24 = v19;
    v25 = 1026;
    v26 = a2 == 0;
    v27 = 2050;
    v28 = v6;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 2, "CLMM,CLTSP,MapHelperService,XPCService returned constructRouteFromLocation call,useMapsAPIForIntersectionQuery,%{public}d,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf", v22, 30);
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager constructRouteFromLocation:roadID:clRoadID:projection:toLocation:toRoadID:toCLRoadID:toProjection:maxRouteLength:allowNetwork:preferCachedTiles:isPedestrianOrCycling:clearTiles:iOSTime:familiarityData:useMapsAPIForIntersectionQuery:withReply:]_block_invoke", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_19B937DA0(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 40) = a2;
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349571;
    v32 = objc_msgSend_code(a2, v4, v5, v6);
    v33 = 2114;
    v34 = objc_msgSend_domain(a2, v7, v8, v9);
    v35 = 2113;
    v36 = objc_msgSend_localizedDescription(a2, v10, v11, v12);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
  }

  v13 = sub_19B87DD40();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v17 = qword_1EAFE46E8;
    v25 = 134349571;
    v26 = objc_msgSend_code(a2, v14, v15, v16);
    v27 = 2114;
    v28 = objc_msgSend_domain(a2, v18, v19, v20);
    v29 = 2113;
    v30 = objc_msgSend_localizedDescription(a2, v21, v22, v23);
    v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 16, "CLMM,CLTSP,CLMapHelperService XPCService returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v25, 32);
    sub_19B885924("Generic", 1, 0, 0, "[CLMapsXPCServiceManager stopConstructRouteFromLocation]_block_invoke", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

os_log_t sub_19B937FF4()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

uint64_t sub_19B93866C(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = sub_19B87B468(a1);
  *v8 = &unk_1F0E6C548;
  *(v8 + 16) = 0;
  *(v8 + 3) = 0u;
  v9 = (v8 + 3);
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[10] = a4;
  v8[11] = -1;
  *(v8 + 96) = a3;
  sub_19B87B468(v8 + 13);
  *(a1 + 104) = &unk_1F0E6C910;
  sub_19B87B468((a1 + 120));
  *(a1 + 120) = &unk_1F0E6C910;
  *(a1 + 72) = a2;
  CFRetain(a2);
  CFRetain(*(a1 + 80));
  sub_19B929670(*(a1 + 80), &v58);
  if (v59 >= 0)
  {
    v10 = &v58;
  }

  else
  {
    v10 = v58;
  }

  v11 = getpwnam(v10);
  if (v11)
  {
    *(a1 + 88) = *&v11->pw_uid;
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v12 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v13 = &v58;
      if (v59 < 0)
      {
        v13 = v58;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "could not read user %{public}s uid/gid", buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }

      v15 = &v58;
      if (v59 < 0)
      {
        v15 = v58;
      }

      LODWORD(v60.__r_.__value_.__l.__data_) = 136446210;
      *(v60.__r_.__value_.__r.__words + 4) = v15;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "could not read user %{public}s uid/gid", &v60, 12);
      sub_19B885924("Generic", 1, 0, 0, "CLPreferences::CLPreferences(CFStringRef, BOOL, CFStringRef)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  if (SHIBYTE(v59) < 0)
  {
    sub_19B874C9C(__dst, v58, *(&v58 + 1));
  }

  else
  {
    *__dst = v58;
    v56 = v59;
  }

  sub_19B953254(__dst, &v57);
  v17 = std::string::append(&v57, "/Library/Preferences/", 0x15uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_19B929670(a2, &v52);
  if ((v54 & 0x80u) == 0)
  {
    v19 = &v52;
  }

  else
  {
    v19 = v52;
  }

  if ((v54 & 0x80u) == 0)
  {
    v20 = v54;
  }

  else
  {
    v20 = v53;
  }

  v21 = std::string::append(&v60, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_19B8759E8(&__p, ".plist");
  if ((v51 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v51 & 0x80u) == 0)
  {
    v24 = v51;
  }

  else
  {
    v24 = v50;
  }

  v25 = std::string::append(buf, p_p, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  v61[0] = v25->__r_.__value_.__l.__size_;
  *(v61 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v9);
  }

  v28 = v61[0];
  *(a1 + 24) = v26;
  *(a1 + 32) = v28;
  *(a1 + 39) = *(v61 + 7);
  *(a1 + 47) = v27;
  if (v51 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v59) < 0)
  {
    sub_19B874C9C(v47, v58, *(&v58 + 1));
  }

  else
  {
    *v47 = v58;
    v48 = v59;
  }

  sub_19B953400(v47, &v57);
  v29 = std::string::append(&v57, "/", 1uLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  sub_19B929670(a2, &v52);
  if ((v54 & 0x80u) == 0)
  {
    v31 = &v52;
  }

  else
  {
    v31 = v52;
  }

  if ((v54 & 0x80u) == 0)
  {
    v32 = v54;
  }

  else
  {
    v32 = v53;
  }

  v33 = std::string::append(&v60, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  sub_19B8759E8(&__p, ".plist");
  if ((v51 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if ((v51 & 0x80u) == 0)
  {
    v36 = v51;
  }

  else
  {
    v36 = v50;
  }

  v37 = std::string::append(buf, v35, v36);
  v38 = v37->__r_.__value_.__r.__words[0];
  v61[0] = v37->__r_.__value_.__l.__size_;
  *(v61 + 7) = *(&v37->__r_.__value_.__r.__words[1] + 7);
  v39 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v40 = v61[0];
  *(a1 + 48) = v38;
  *(a1 + 56) = v40;
  *(a1 + 63) = *(v61 + 7);
  *(a1 + 71) = v39;
  if (v51 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  v41 = getpwnam("root");
  v45 = 0;
  if (v41)
  {
    v42 = v41;
    pw_uid = v41->pw_uid;
    if (pw_uid == getuid())
    {
      pw_gid = v42->pw_gid;
      if (pw_gid == getgid())
      {
        v45 = 1;
      }
    }
  }

  *(a1 + 16) = v45;
  sub_19B938E40(a1);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  return a1;
}

void sub_19B938CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_19B8756F0(v65);
  sub_19B8756F0(v64);
  if (*(v63 + 71) < 0)
  {
    operator delete(*(v63 + 48));
  }

  if (*(v63 + 47) < 0)
  {
    operator delete(*v66);
  }

  sub_19B8756F0(v63);
  _Unwind_Resume(a1);
}

BOOL sub_19B938E40(uint64_t a1)
{
  os_unfair_lock_lock(&unk_1EAFE5B38);
  v4 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v4 = *v4;
    goto LABEL_6;
  }

  if (*(a1 + 71))
  {
LABEL_6:
    sub_19B927F3C((a1 + 120), v4, v2, v3);
  }

LABEL_7:
  v5 = CFPreferencesSynchronize(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E898]);
  if (*(a1 + 16) == 1)
  {
    sub_19B938FCC(a1, 0);
  }

  os_unfair_lock_unlock(&unk_1EAFE5B38);
  return v5 != 0;
}

void *sub_19B938EFC(uint64_t a1)
{
  *a1 = &unk_1F0E6C548;
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  sub_19B8756F0((a1 + 120));
  sub_19B8756F0((a1 + 104));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return sub_19B8756F0(a1);
}

void sub_19B938F94(uint64_t a1)
{
  sub_19B938EFC(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B938FCC(char *a1, int a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if ((a1[96] & 1) == 0)
  {
    v2 = a1;
    if (!a2)
    {
      goto LABEL_24;
    }

    v3 = a1 + 24;
    v4 = a1[47];
    v5 = a1 + 24;
    if (v4 < 0)
    {
      v5 = *v3;
    }

    if (!stat(v5, &v62) && (v62.st_uid != *(v2 + 22) || v62.st_gid != *(v2 + 23) || (~v62.st_mode & 0x1B6) != 0))
    {
      p_info = CLLocationManagerInternal.info;
      if (qword_1ED519058 != -1)
      {
        goto LABEL_90;
      }

      while (1)
      {
        v7 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v3;
          if (v2[47] < 0)
          {
            v8 = *v3;
          }

          v9 = *(v2 + 22);
          v10 = *(v2 + 23);
          buf[0].st_dev = 136316674;
          *&buf[0].st_mode = v8;
          WORD2(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 6) = v62.st_uid;
          HIWORD(buf[0].st_uid) = 1024;
          buf[0].st_gid = v9;
          LOWORD(buf[0].st_rdev) = 1024;
          *(&buf[0].st_rdev + 2) = v62.st_gid;
          *(&buf[0].st_rdev + 3) = 1024;
          LODWORD(buf[0].st_atimespec.tv_sec) = v10;
          WORD2(buf[0].st_atimespec.tv_sec) = 1024;
          *(&buf[0].st_atimespec.tv_sec + 6) = v62.st_mode;
          WORD1(buf[0].st_atimespec.tv_nsec) = 1024;
          HIDWORD(buf[0].st_atimespec.tv_nsec) = 438;
          _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", buf, 0x30u);
        }

        v11 = sub_19B87DD40();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[11] != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }

          if (v2[47] < 0)
          {
            v3 = *v3;
          }

          v12 = *(v2 + 22);
          v13 = *(v2 + 23);
          v63 = 136316674;
          v64 = v3;
          v65 = 1024;
          st_uid = v62.st_uid;
          v67 = 1024;
          *v68 = v12;
          *&v68[4] = 1024;
          *&v68[6] = v62.st_gid;
          v69 = 1024;
          v70 = v13;
          v71 = 1024;
          st_mode = v62.st_mode;
          v73 = 1024;
          v74 = 438;
          v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 0, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", &v63, 48);
          sub_19B885924("Generic", 1, 0, 2, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

LABEL_24:
        v15 = (v2 + 24);
        v16 = v2 + 24;
        if (v2[47] < 0)
        {
          v16 = *v15;
        }

        v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x8000100u);
        if (!v17)
        {
          break;
        }

        v21 = v17;
        v22 = objc_msgSend_pathComponents(v17, v18, v19, v20);
        v29 = objc_msgSend_count(v22, v23, v24, v25) - 1;
        if (v29 < 2)
        {
LABEL_34:
          CFRelease(v21);
          break;
        }

        PathComponent = v21;
        while (1)
        {
          PathComponent = objc_msgSend_stringByDeletingLastPathComponent(PathComponent, v26, v27, v28);
          if ((objc_msgSend_isEqualToString_(PathComponent, v31, @"/var", v32) & 1) == 0 && (objc_msgSend_isEqualToString_(PathComponent, v26, @"/tmp", v28) & 1) == 0)
          {
            v33 = objc_msgSend_fileSystemRepresentation(PathComponent, v26, v27, v28);
            if (!lstat(v33, buf) && (buf[0].st_mode & 0xF000) == 0xA000)
            {
              break;
            }
          }

          if (--v29 <= 1)
          {
            goto LABEL_34;
          }
        }

        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
        }

        v60 = off_1ED519060;
        p_info = &off_19BA89000;
        v3 = "assert";
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }
        }

        v61 = off_1ED519060;
        if (os_signpost_enabled(off_1ED519060))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_signpost_emit_with_name_impl(&dword_19B873000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }
        }

        v2 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = "";
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLPreferences.mm", 392, "setFileAttributes");
LABEL_90:
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }

      v34 = v2 + 24;
      if (v2[47] < 0)
      {
        v34 = *v15;
      }

      if (!lstat(v34, &v62))
      {
        v35 = v2 + 24;
        if (v2[47] < 0)
        {
          v35 = *v15;
        }

        if (lchmod(v35, 0x1B6u))
        {
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }

          v36 = off_1ED519060;
          if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
          {
            v37 = v2 + 24;
            if (v2[47] < 0)
            {
              v37 = *v15;
            }

            v38 = *__error();
            v39 = __error();
            v40 = strerror(*v39);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v37;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v38;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v40;
            _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_FAULT, "could not lchmod %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v41 = sub_19B87DD40();
          if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519058 != -1)
            {
              dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
            }

            v42 = off_1ED519060;
            v43 = v2 + 24;
            if (v2[47] < 0)
            {
              v43 = *v15;
            }

            v44 = *__error();
            v45 = __error();
            v46 = strerror(*v45);
            v63 = 136446722;
            v64 = v43;
            v65 = 1026;
            st_uid = v44;
            v67 = 2082;
            *v68 = v46;
            v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v42, 17, "could not lchmod %{public}s errno %{public}d (%{public}s)", &v63, 28);
            sub_19B885924("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v47);
            if (v47 != buf)
            {
              free(v47);
            }
          }
        }

        v48 = v2 + 24;
        if (v2[47] < 0)
        {
          v48 = *v15;
        }

        if (lchown(v48, *(v2 + 22), *(v2 + 23)))
        {
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
          }

          v49 = off_1ED519060;
          if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
          {
            v50 = v2 + 24;
            if (v2[47] < 0)
            {
              v50 = *v15;
            }

            v51 = *__error();
            v52 = __error();
            v53 = strerror(*v52);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v50;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v51;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v53;
            _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_FAULT, "could not lchown %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v54 = sub_19B87DD40();
          if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519058 != -1)
            {
              dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
            }

            v55 = off_1ED519060;
            if (v2[47] < 0)
            {
              v15 = *v15;
            }

            v56 = *__error();
            v57 = __error();
            v58 = strerror(*v57);
            v63 = 136446722;
            v64 = v15;
            v65 = 1026;
            st_uid = v56;
            v67 = 2082;
            *v68 = v58;
            v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v55, 17, "could not lchown %{public}s errno %{public}d (%{public}s)", &v63, 28);
            sub_19B885924("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v59);
            if (v59 != buf)
            {
              free(v59);
            }
          }
        }
      }
    }
  }
}

const __CFArray *sub_19B939954(CFStringRef *a1)
{
  v2 = *MEMORY[0x1E695E8B0];
  result = CFPreferencesCopyKeyList(a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    v4 = result;
    CFPreferencesSetMultiple(0, result, a1[9], a1[10], v2);
    CFRelease(v4);
    data = (*a1)[26].data;

    return (data)(a1);
  }

  return result;
}

uint64_t sub_19B939A14(CFStringRef *a1, CFStringRef key)
{
  CFPreferencesSetValue(key, 0, a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  data = (*a1)[26].data;

  return (data)(a1);
}

CFIndex sub_19B939A98(uint64_t a1)
{
  v1 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  CFRelease(v2);
  return Count;
}

CFIndex sub_19B939AF0(uint64_t a1, CFStringRef key)
{
  v2 = CFPreferencesCopyValue(key, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 1;
  }

  CFRelease(v3);
  return Count;
}

uint64_t sub_19B939B6C()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "***not supported***", v4, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serialize(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_19B939D0C()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "***not supported***", v4, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_19B939EAC()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "***not supported***", v4, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::deserialize(const CFDataRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

void sub_19B93A04C(const __CFString *a1, uint64_t a2)
{
  cf = 0;
  if ((*(*a2 + 912))(a2, a1, &cf))
  {
    sub_19B931F28(a1, cf);
    CFRelease(cf);
  }
}

void sub_19B93A0CC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47C8 != -1)
  {
    dispatch_once(&qword_1EAFE47C8, &unk_1F0E6CD08);
  }

  if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
  {
    os_unfair_lock_lock(&unk_1EAFE5B38);
    if ((*(*(a1 + 120) + 856))(a1 + 120) >= 1)
    {
      sub_19B93184C(a1 + 120);
    }

    os_unfair_lock_unlock(&unk_1EAFE5B38);
    v2 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v3 = v2;
    if (v2 && CFArrayGetCount(v2))
    {
      v13.length = CFArrayGetCount(v3);
      v13.location = 0;
      CFArrayApplyFunction(v3, v13, sub_19B93A04C, a1);
      CFRelease(v3);
      v5 = *(a1 + 104);
      v4 = a1 + 104;
      if ((*(v5 + 856))(v4) >= 1)
      {

        sub_19B93184C(v4);
      }
    }

    else
    {
      if (qword_1EAFE47C8 != -1)
      {
        dispatch_once(&qword_1EAFE47C8, &unk_1F0E6CD08);
      }

      v6 = qword_1EAFE47D0;
      if (os_log_type_enabled(qword_1EAFE47D0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "\t<empty>", buf, 2u);
      }

      v7 = sub_19B87DD40();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE47C8 != -1)
        {
          dispatch_once(&qword_1EAFE47C8, &unk_1F0E6CD08);
        }

        v9[0] = 0;
        v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47D0, 2, "\t<empty>", v9, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual void CLPreferences::print() const", "CoreLocation: %s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }
}

void sub_19B93A41C()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "***not supported***", v3, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual void CLPreferences::merge(const CLPreferences &, BOOL)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

uint64_t sub_19B93A5B8()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "***not supported***", v4, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::loadFromFile(const char *)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_19B93A758()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "***not supported***", v4, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_19B93A8F8()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }

  v0 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "***not supported***", v4, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToBinaryFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

void sub_19B93AA98(uint64_t a1, CFStringRef key, CFPropertyListRef value)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
    }

    v5 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v6 = v26;
      sub_19B929670(key, v26);
      if (v29 < 0)
      {
        v6 = *v26;
      }

      sub_19B929670(*(a1 + 72), v24);
      v7 = v25;
      v8 = v24[0];
      sub_19B929670(*(a1 + 80), __p);
      v9 = v24;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v23 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446722;
      v32 = v6;
      v33 = 2082;
      v34 = v9;
      v35 = 2082;
      v36 = v10;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", buf, 0x20u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(*v26);
      }
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }

      v12 = off_1ED519060;
      sub_19B929670(key, v24);
      if (v25 >= 0)
      {
        v13 = v24;
      }

      else
      {
        v13 = v24[0];
      }

      sub_19B929670(*(a1 + 72), __p);
      v14 = v23;
      v15 = __p[0];
      sub_19B929670(*(a1 + 80), v20);
      v16 = __p;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v21 >= 0)
      {
        v17 = v20;
      }

      else
      {
        v17 = v20[0];
      }

      *v26 = 136446722;
      *&v26[4] = v13;
      v27 = 2082;
      v28 = v16;
      v29 = 2082;
      v30 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v12, 17, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", v26, 32);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual void CLPreferences::setInternal(const CFStringRef, const CFTypeRef)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    CFPreferencesSetValue(key, value, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v19 = *(*a1 + 848);

    v19(a1);
  }
}

void sub_19B93AE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B93AEC8(uint64_t a1, const __CFString *a2, void *a3)
{
  os_unfair_lock_lock(&unk_1EAFE5B38);
  v6 = sub_19B876498(a1 + 120, a2, a3);
  os_unfair_lock_unlock(&unk_1EAFE5B38);
  if (v6)
  {
    return 1;
  }

  v7 = CFPreferencesCopyValue(a2, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  *a3 = v7;
  if (v7)
  {
    return 1;
  }

  return sub_19B876498(a1 + 104, a2, a3);
}

void sub_19B93AF94()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519058 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }
    }

    v1 = off_1ED519060;
    if (os_signpost_enabled(off_1ED519060))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
      }
    }

    v2 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLPreferences.mm", 329, "containsInternal");
LABEL_11:
    dispatch_once(&qword_1ED519058, &unk_1F0E6CCE8);
  }
}

void sub_19B93B1C4(void *a1)
{
  sub_19B8756F0(a1);

  JUMPOUT(0x19EAE98C0);
}

os_log_t sub_19B93B1FC()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

os_log_t sub_19B93B22C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE47D0 = result;
  return result;
}

BOOL sub_19B93B274()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

void sub_19B93B2E8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5191A0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519220, &dword_19B873000);
    __cxa_guard_release(&qword_1ED5191A0);
  }

  if (qword_1ED5191A8 != -1)
  {
    dispatch_once(&qword_1ED5191A8, &unk_1F0E6CD98);
  }

  if (byte_1ED519237 < 0)
  {
    v2 = xmmword_1ED519220;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519220;
    *(a1 + 16) = unk_1ED519230;
  }
}

const __CFDictionary *sub_19B93B3D0()
{
  v19[2] = *MEMORY[0x1E69E9840];
  result = _CFCopyServerVersionDictionary();
  if (result || (result = _CFCopySystemVersionDictionary()) != 0)
  {
    v1 = result;
    sub_19B874A98(v18, result);
    CFRelease(v1);
    memset(&v17, 0, sizeof(v17));
    memset(&v16, 0, sizeof(v16));
    memset(&__p, 0, sizeof(__p));
    if ((sub_19B92B084(v18, *MEMORY[0x1E695E1F0], &v16) & 1) == 0)
    {
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        v16.__r_.__value_.__l.__size_ = 6;
        v2 = v16.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v16.__r_.__value_.__s + 23) = 6;
        v2 = &v16;
      }

      strcpy(v2, "<name>");
    }

    if ((sub_19B92B084(v18, *MEMORY[0x1E695E208], &v17) & 1) == 0)
    {
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v17.__r_.__value_.__l.__size_ = 9;
        v3 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v17.__r_.__value_.__s + 23) = 9;
        v3 = &v17;
      }

      strcpy(v3, "<version>");
    }

    if ((sub_19B92B084(v18, *MEMORY[0x1E695E1E8], &__p) & 1) == 0)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      strcpy(p_p, "<build>");
    }

    sub_19B93B764(&v16.__r_.__value_.__l.__data_, &v17.__r_.__value_.__l.__data_, &v13);
    v5 = std::string::append(&v13, "/", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v14, v7, size);
    v10 = v9->__r_.__value_.__r.__words[0];
    v19[0] = v9->__r_.__value_.__l.__size_;
    *(v19 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1ED519237 < 0)
    {
      operator delete(xmmword_1ED519220);
    }

    *&xmmword_1ED519220 = v10;
    *(&xmmword_1ED519220 + 1) = v19[0];
    *(&xmmword_1ED519220 + 15) = *(v19 + 7);
    byte_1ED519237 = v11;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    return sub_19B8756F0(v18);
  }

  else
  {
    if (byte_1ED519237 < 0)
    {
      *(&xmmword_1ED519220 + 1) = 6;
      v12 = xmmword_1ED519220;
    }

    else
    {
      v12 = &xmmword_1ED519220;
      byte_1ED519237 = 6;
    }

    strcpy(v12, "<null>");
  }

  return result;
}

void sub_19B93B6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  sub_19B8756F0((v34 - 72));
  _Unwind_Resume(a1);
}

char *sub_19B93B764@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_19B8D78C0(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_19B93B830(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191B0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED5191B0);
    a1 = v3;
    if (v4)
    {
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519238, &dword_19B873000);
      __cxa_guard_release(&qword_1ED5191B0);
      a1 = v3;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B93B968;
  block[3] = &unk_1E753CEF0;
  block[4] = a1;
  if (qword_1ED5191B8 != -1)
  {
    dispatch_once(&qword_1ED5191B8, block);
  }

  if (byte_1ED51924F < 0)
  {
    sub_19B874C9C(a2, xmmword_1ED519238, *(&xmmword_1ED519238 + 1));
  }

  else
  {
    *a2 = xmmword_1ED519238;
    *(a2 + 16) = unk_1ED519248;
  }
}

double sub_19B93B968()
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 128;
  if (sysctlbyname("hw.model", v5, &v4, 0, 0))
  {
    v0 = "";
  }

  else
  {
    v0 = v5;
  }

  sub_19B8759E8(&v2, v0);
  if (byte_1ED51924F < 0)
  {
    operator delete(xmmword_1ED519238);
  }

  result = *&v2;
  xmmword_1ED519238 = v2;
  unk_1ED519248 = v3;
  return result;
}

void sub_19B93BA28(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5191C0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519250, &dword_19B873000);
    __cxa_guard_release(&qword_1ED5191C0);
  }

  if (qword_1ED5191C8 != -1)
  {
    dispatch_once(&qword_1ED5191C8, &unk_1F0E6CDB8);
  }

  if (byte_1ED519267 < 0)
  {
    v2 = xmmword_1ED519250;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519250;
    *(a1 + 16) = unk_1ED519260;
  }
}

void sub_19B93BB10()
{
  sub_19B953A8C(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFStringGetTypeID())
    {
      v4 = CFURLCreateWithFileSystemPath(v1, v2, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFBundleCreate(v1, v4);
        if (v6)
        {
          v7 = v6;
          ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, *MEMORY[0x1E695E500]);
          if (ValueForInfoDictionaryKey)
          {
            v9 = ValueForInfoDictionaryKey;
            v10 = CFGetTypeID(ValueForInfoDictionaryKey);
            if (v10 == CFStringGetTypeID())
            {
              sub_19B929670(v9, &__p);
              if (byte_1ED519250[23] < 0)
              {
                operator delete(*byte_1ED519250);
              }

              *byte_1ED519250 = __p;
            }
          }

          CFRelease(v2);
          v2 = v5;
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v2);
        v2 = v7;
      }
    }

    CFRelease(v2);
  }
}

void sub_19B93BC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B93BC88(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED5191D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5191D0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED519268, &dword_19B873000);
    __cxa_guard_release(&qword_1ED5191D0);
  }

  if (qword_1ED5191D8 != -1)
  {
    dispatch_once(&qword_1ED5191D8, &unk_1F0E6CDD8);
  }

  if (byte_1ED51927F < 0)
  {
    v2 = xmmword_1ED519268;

    sub_19B874C9C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED519268;
    *(a1 + 16) = unk_1ED519278;
  }
}

uint64_t sub_19B93BD70()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      sub_19B929670(CFProperty, &v6);
      if (byte_1ED51927F < 0)
      {
        operator delete(xmmword_1ED519268);
      }

      xmmword_1ED519268 = v6;
      unk_1ED519278 = v7;
      CFRelease(v5);
    }

    return IOObjectRelease(v3);
  }

  return result;
}

uint64_t sub_19B93BE2C()
{
  if (qword_1ED5191E0 != -1)
  {
    dispatch_once(&qword_1ED5191E0, &unk_1F0E6CDF8);
  }

  return dword_1ED519184;
}

void sub_19B93BE74()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  v0 = 7381266;
  switch(dword_1ED519180)
  {
    case 1:
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      v0 = 33562886;
      break;
    case 2:
    case 5:
    case 19:
    case 20:
    case 52:
    case 53:
    case 60:
    case 61:
    case 158:
    case 159:
    case 160:
    case 162:
    case 163:
    case 164:
    case 165:
    case 192:
    case 202:
    case 203:
    case 204:
      v0 = 532482;
      break;
    case 3:
    case 43:
    case 148:
      break;
    case 4:
      v0 = 8454;
      break;
    case 6:
    case 166:
    case 167:
      goto LABEL_39;
    case 7:
    case 10:
    case 13:
    case 14:
    case 29:
    case 31:
    case 33:
    case 35:
    case 44:
    case 46:
    case 48:
    case 62:
    case 64:
    case 76:
    case 134:
    case 136:
    case 144:
    case 146:
    case 154:
    case 156:
    case 193:
    case 195:
    case 205:
    case 207:
    case 209:
    case 211:
    case 213:
    case 215:
    case 217:
    case 219:
    case 220:
    case 221:
    case 223:
    case 225:
    case 227:
    case 229:
    case 231:
    case 241:
    case 242:
    case 244:
    case 246:
    case 248:
    case 250:
    case 252:
    case 254:
    case 257:
      v0 = 7905558;
      break;
    case 8:
    case 11:
    case 12:
    case 15:
    case 16:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
      v0 = 8236319;
      break;
    case 9:
    case 17:
    case 18:
      v0 = 16624927;
      break;
    case 21:
      v0 = 4202498;
      break;
    case 30:
    case 32:
    case 34:
    case 36:
    case 45:
    case 47:
    case 49:
    case 63:
    case 65:
    case 77:
    case 135:
    case 137:
    case 145:
    case 155:
    case 157:
    case 194:
    case 196:
    case 197:
    case 210:
    case 212:
    case 214:
    case 216:
    case 218:
    case 222:
    case 224:
    case 226:
    case 228:
    case 230:
    case 232:
    case 255:
    case 256:
    case 258:
      v0 = 16624923;
      break;
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
      v0 = 37789954;
      break;
    case 50:
    case 51:
    case 74:
    case 75:
    case 81:
    case 82:
    case 83:
    case 84:
    case 89:
    case 90:
    case 95:
    case 96:
      v0 = 37789962;
      break;
    case 57:
    case 58:
    case 59:
      v0 = 8234271;
      break;
    case 66:
    case 67:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 97:
    case 98:
      v0 = 38120715;
      break;
    case 68:
    case 69:
    case 70:
    case 78:
    case 79:
    case 80:
    case 139:
    case 141:
    case 142:
    case 143:
      v0 = 41788703;
      break;
    case 71:
    case 72:
    case 73:
      v0 = 41790751;
      break;
    case 99:
    case 100:
    case 103:
    case 104:
    case 107:
    case 108:
    case 111:
    case 112:
    case 116:
    case 117:
    case 120:
    case 121:
    case 126:
    case 127:
    case 130:
    case 131:
      v0 = 38314250;
      break;
    case 101:
    case 102:
    case 105:
    case 106:
    case 109:
    case 110:
    case 113:
    case 114:
    case 115:
    case 118:
    case 119:
    case 122:
    case 123:
    case 124:
    case 125:
    case 128:
    case 129:
    case 132:
    case 133:
    case 280:
      v0 = 38645003;
      break;
    case 149:
      v0 = 4235530;
      break;
    case 150:
    case 151:
    case 152:
    case 153:
      v0 = 41226;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      v0 = 108899615;
      break;
    case 206:
    case 208:
    case 243:
    case 245:
    case 247:
    case 249:
    case 251:
    case 253:
      v0 = 83733787;
      break;
    default:
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
      }

      v1 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_FAULT))
      {
        if (qword_1ED519198 != -1)
        {
          dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
        }

        *buf = 67174657;
        v7 = dword_1ED519180;
        _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_FAULT, "unknown hardware type %{private}d", buf, 8u);
      }

      v2 = sub_19B87DD40();
      if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || (v0 = *(v2 + 152), *(v2 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6CEC8);
        }

        v3 = qword_1EAFE4740;
        if (qword_1ED519198 != -1)
        {
          dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
        }

        v5[0] = 67174657;
        v5[1] = dword_1ED519180;
        v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v3, 17, "unknown hardware type %{private}d", v5, 8);
        sub_19B885924("Generic", 1, 0, 0, "CLPlatformInfo::Provider CLPlatformInfo::getProviders()_block_invoke", "CoreLocation: %s\n", v4);
        if (v4 != buf)
        {
          free(v4);
        }

LABEL_39:
        v0 = 0;
      }

      break;
  }

  dword_1ED519184 = v0;
}

BOOL sub_19B93C1F4()
{
  if (sub_19B93C294() || sub_19B93C330() || sub_19B93C3A8())
  {
    return 1;
  }

  return sub_19B93C440();
}

uint64_t sub_19B93C23C()
{
  if ((sub_19B93C4B4() & 1) != 0 || (sub_19B93C588() & 1) != 0 || sub_19B93C1F4() || sub_19B93C6C4() && !sub_19B93C3A8())
  {
    return 1;
  }

  return sub_19B93C614();
}

BOOL sub_19B93C294()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if ((dword_1ED519180 - 82) > 0x14 || ((1 << (dword_1ED519180 - 82)) & 0x1FFFD5) == 0)
  {
    return (dword_1ED519180 - 150) < 4;
  }

  return result;
}

BOOL sub_19B93C330()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return (dword_1ED519180 - 103) < 4;
}

BOOL sub_19B93C3A8()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if ((dword_1ED519180 - 107) >= 0x1B && (dword_1ED519180 - 178) >= 8)
  {
    return dword_1ED519180 == 280;
  }

  return result;
}

BOOL sub_19B93C440()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return dword_1ED519180 == 187;
}

uint64_t sub_19B93C4B4()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if (dword_1ED519180 > 134)
  {
    if (((dword_1ED519180 - 135) > 0xA || ((1 << (dword_1ED519180 + 121)) & 0x405) == 0) && dword_1ED519180 != 210 && dword_1ED519180 != 212)
    {
      return 0;
    }
  }

  else if ((dword_1ED519180 - 34) > 0x2E || ((1 << (dword_1ED519180 - 34)) & 0x700000008001) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B93C588()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 139) < 0x3B) & (0x48000000005001DuLL >> (dword_1ED519180 + 117));
}

uint64_t sub_19B93C614()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if (((dword_1ED519180 - 174) > 0x3A || ((1 << (dword_1ED519180 + 82)) & 0x44400000001D003) == 0) && dword_1ED519180 != 251 && dword_1ED519180 != 253)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B93C6C4()
{
  if (sub_19B93C724() & 1) != 0 || (sub_19B93C7AC() & 1) != 0 || sub_19B93C838() || sub_19B93C8D0() || (sub_19B93C944() & 1) != 0 || (sub_19B93C9F0())
  {
    return 1;
  }

  return sub_19B93CA78();
}

uint64_t sub_19B93C724()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 168) < 0x29) & (0x1400000000FuLL >> (dword_1ED519180 + 88));
}

uint64_t sub_19B93C7AC()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 172) < 0x2F) & (0x440001000033uLL >> (dword_1ED519180 + 84));
}

BOOL sub_19B93C838()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if ((dword_1ED519180 - 234) > 0xB || ((1 << (dword_1ED519180 + 22)) & 0xA03) == 0)
  {
    return (dword_1ED519180 - 178) < 2;
  }

  return result;
}

BOOL sub_19B93C8D0()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return dword_1ED519180 == 233;
}

uint64_t sub_19B93C944()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  result = 1;
  if (((dword_1ED519180 - 216) > 0x2A || ((1 << (dword_1ED519180 + 40)) & 0x58280304441) == 0) && (dword_1ED519180 - 180) >= 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19B93C9F0()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 182) < 0x3A) & (0x300000000000003uLL >> (dword_1ED519180 + 74));
}

uint64_t sub_19B93CA78()
{
  if (qword_1ED519190 != -1)
  {
    dispatch_once(&qword_1ED519190, &unk_1F0E6CD28);
  }

  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  return ((dword_1ED519180 - 184) < 0x39) & (0x10000000000000BuLL >> (dword_1ED519180 + 72));
}

BOOL sub_19B93CB00()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if (qword_1ED519218 != -1)
  {
    dispatch_once(&qword_1ED519218, &unk_1F0E6CEE8);
  }

  return byte_1ED51917C == 1;
}

void sub_19B93CB8C()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPhone"))
    {
      byte_1ED519178 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B93CBFC()
{
  result = sub_19B93C23C();
  if (result)
  {
    if ((sub_19B93C4B4() & 1) != 0 || (sub_19B93C588() & 1) != 0 || sub_19B93C1F4() && !sub_19B93C294() && !sub_19B93C330())
    {
      if (qword_1ED5191E8 != -1)
      {
        dispatch_once(&qword_1ED5191E8, &unk_1F0E6CE18);
      }

      if (byte_1ED519178)
      {
        return 1;
      }
    }

    if (sub_19B93C6C4() && !sub_19B93C3A8())
    {
      return 1;
    }

    else
    {

      return sub_19B93C614();
    }
  }

  return result;
}

uint64_t sub_19B93CCA4()
{
  if (qword_1ED5191F0 != -1)
  {
    dispatch_once(&qword_1ED5191F0, &unk_1F0E6CE38);
  }

  return byte_1ED519179;
}

void sub_19B93CCEC()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED519179 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B93CD70()
{
  if (qword_1ED519198 != -1)
  {
    dispatch_once(&qword_1ED519198, &unk_1F0E6CD78);
  }

  if (dword_1ED519180 > 23)
  {
    if (dword_1ED519180 > 45)
    {
      if ((dword_1ED519180 - 46) < 2)
      {
        return -54;
      }

      if ((dword_1ED519180 - 62) < 2)
      {
        return -51;
      }

      if (dword_1ED519180 == 148)
      {
        return -56;
      }
    }

    else
    {
      if (dword_1ED519180 > 25)
      {
        if ((dword_1ED519180 - 26) >= 2)
        {
          if (dword_1ED519180 == 31)
          {
            return -53;
          }

          if (dword_1ED519180 != 43)
          {
            return -59;
          }
        }

        return -56;
      }

      if (dword_1ED519180 == 24)
      {
        return -57;
      }

      if (dword_1ED519180 == 25)
      {
        return -54;
      }
    }

    return -59;
  }

  if (dword_1ED519180 <= 12)
  {
    if ((dword_1ED519180 - 7) < 4)
    {
      return -56;
    }

    return -59;
  }

  if ((dword_1ED519180 - 13) >= 6)
  {
    if (dword_1ED519180 == 22)
    {
      return -58;
    }

    if (dword_1ED519180 != 23)
    {
      return -59;
    }

    return -56;
  }

  return -57;
}

void sub_19B93CE8C(uint64_t a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"IOPropertyMatch";
  v10[0] = &unk_1F0E8CD20;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v2);
  if (MatchingService)
  {
    byte_1ED51917B = 1;
    IOObjectRelease(MatchingService);
  }

  else
  {
    if (qword_1EAFE4748 != -1)
    {
      dispatch_once(&qword_1EAFE4748, &unk_1F0E6CF08);
    }

    v4 = qword_1EAFE4750;
    if (os_log_type_enabled(qword_1EAFE4750, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "Compass service missing", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4748 != -1)
      {
        dispatch_once(&qword_1EAFE4748, &unk_1F0E6CF08);
      }

      v7[0] = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4750, 0, "Compass service missing", v7, 2);
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLPlatformInfo::supportsCompass()_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }
}

os_log_t sub_19B93D090()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE4740 = result;
  return result;
}

void sub_19B93D0C0()
{
  v0 = objc_autoreleasePoolPush();
  byte_1ED51917C = 0;
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = v2;
    CFAutorelease(v2);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v3))
      {
        v5 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", v1);
        if (v5)
        {
          v6 = v5;
          CFAutorelease(v5);
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
            {
              byte_1ED51917C = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v0);
}

os_log_t sub_19B93D1D4()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE4750 = result;
  return result;
}

uint64_t sub_19B93D204(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v16[0] = *a2;
  v16[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B917A10(a1, v16, a3);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  *a1 = &unk_1F0E6CF58;
  *(a1 + 120) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 136) = _Q1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0xBFF0000000000000;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 467) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 334) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0xBFF0000000000000;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 1;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 608) = xmmword_19BA89490;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0x3FF0000000000000;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0xBFF0000000000000;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = _Q1;
  *(a1 + 752) = 256;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 816) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 600) = sub_19B93C1F4();
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
  }

  v10 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 600);
    *buf = 67240192;
    v19 = v11;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "CLMM,skipRMSECheckForScalingEntryThresholds,%{public}d", buf, 8u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v13 = *(a1 + 600);
    v17[0] = 67240192;
    v17[1] = v13;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,skipRMSECheckForScalingEntryThresholds,%{public}d", v17, 8);
    sub_19B885924("Generic", 1, 0, 2, "CLScoredMapMatcher::CLScoredMapMatcher(CLMapGeometryPtr, const std::string &)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  return a1;
}

void sub_19B93D520(_Unwind_Exception *a1)
{
  v3 = *(v1 + 560);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
  }

  sub_19B9D3858(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B93D56C(uint64_t a1)
{
  *a1 = &unk_1F0E6CF58;
  v2 = *(a1 + 560);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  return sub_19B9D3858(a1);
}

void sub_19B93D5DC(uint64_t a1)
{
  sub_19B93D56C(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B93D614(uint64_t a1)
{
  *(a1 + 568) = 1;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v7 = _Q0;
  *v8 = 0xBFF0000000000000;
  v10[15] = 0;
  LODWORD(v10[16]) = 0;
  memset(&v10[10], 0, 34);
  memset(&v10[17], 0, 75);
  memset(&v10[27], 0, 56);
  memset(&v8[8], 0, 80);
  memset(v10, 0, 78);
  v9 = 0u;
  v10[34] = 0xBFF0000000000000;
  *(a1 + 168) = *v8;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v8[64];
  *(a1 + 216) = *&v8[48];
  *(a1 + 200) = *&v8[32];
  *(a1 + 184) = *&v8[16];
  std::string::operator=((a1 + 248), &v8[80]);
  memcpy((a1 + 272), v10, 0x118uLL);
  *(a1 + 592) = 0;
  *(a1 + 736) = v7;
  *(a1 + 752) = 256;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*&v8[80]);
  }
}

void sub_19B93D784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B93D7A0(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 840) == 1)
  {
    *a2 = 0x4066800000000000;
    return 1;
  }

  if (*(a1 + 776) == 1)
  {
    if (*(a1 + 808) != 1 || (v5 = *(a1 + 792), v5 > 15.0) && v5 > *(a1 + 800) * 0.5)
    {
      *a2 = 0x4066800000000000;
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v6 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a1 + 776);
          v8 = *(a1 + 792);
          v9 = *(a1 + 800);
          v10 = *a2;
          *buf = 67240960;
          v25 = v7;
          v26 = 2050;
          v27 = v8;
          v28 = 2050;
          v29 = v9;
          v30 = 2050;
          v31 = v10;
          _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,holdCourseEngaged,%{public}d,fabsCourseDiffWithPriorSnap,%{public}.1lf,rawCourseUnc,%{public}.1lf,newCourseUnc,%{public}.1f", buf, 0x26u);
        }

        v11 = sub_19B87DD40();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v12 = *(a1 + 776);
          v13 = *(a1 + 792);
          v14 = *(a1 + 800);
          v15 = *a2;
          v17[0] = 67240960;
          v17[1] = v12;
          v18 = 2050;
          v19 = v13;
          v20 = 2050;
          v21 = v14;
          v22 = 2050;
          v23 = v15;
          v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,holdCourseEngaged,%{public}d,fabsCourseDiffWithPriorSnap,%{public}.1lf,rawCourseUnc,%{public}.1lf,newCourseUnc,%{public}.1f", v17, 38);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::shouldOverrideCourseUnc(double &)", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      return 1;
    }
  }

  return 0;
}

void sub_19B93DA44(uint64_t a1, uint64_t a2)
{
  v138 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *(a1 + 128);
  sub_19BA0C01C((a1 + 608), *(a1 + 176), *(a1 + 184), *(a2 + 56), *(a2 + 64), *(a2 + 72));
  v8 = v7;
  *(a1 + 840) = 0;
  v9 = *(a2 + 192);
  if (v9 > 179.0)
  {
    *(a1 + 840) = 1;
  }

  v10 = *(a2 + 104);
  if (v9 > 0.0 || v10 < 0.0)
  {
    v12 = *(a2 + 192);
  }

  else
  {
    v11 = *(a2 + 96);
    if (v11 >= 0.0)
    {
      v12 = 1.0;
      if (v11 <= 15.0)
      {
        v12 = 4.0;
        if (v11 <= 10.0)
        {
          v12 = 10.0;
          if (v11 <= 8.0)
          {
            v12 = 15.0;
            if (v11 <= 5.0)
            {
              if (v11 <= 3.0)
              {
                v12 = 25.0;
                if (v11 <= 2.5)
                {
                  v12 = dbl_19BA89360[v11 > 1.0];
                }
              }

              else
              {
                v12 = 19.9;
              }
            }
          }
        }
      }
    }

    else
    {
      v12 = 180.0;
    }

    *(a2 + 192) = v12;
  }

  v13 = vabdd_f64(v4, v5);
  if (v10 >= 0.0 || v12 <= 0.0 || *(a2 + 96) >= 0.001 || v13 >= 2.2 || (v14 = *(a1 + 224), v14 < 0.0) || (v59 = *(a1 + 312), v59 <= 0.0) || v59 >= 90.0)
  {
    if (v10 < 0.0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(a2 + 104) = v14;
    v10 = v14;
  }

  if (v9 > 179.0)
  {
    if (*(a1 + 652) == 1)
    {
      v10 = *(a1 + 424);
      *(a2 + 104) = v10;
      v12 = 29.9;
    }

    else if (v13 >= 2.2 || (v10 = *(a1 + 224), v10 < 0.0) || (v115 = *(a1 + 312), v115 <= 0.0) || v115 >= 90.0)
    {
      *(a2 + 104) = 0xBFF0000000000000;
      v12 = -1.0;
      v10 = -1.0;
    }

    else
    {
      *(a2 + 104) = v10;
      if (v115 >= 29.9)
      {
        v12 = v115;
      }

      else
      {
        v12 = 29.9;
      }
    }

    *(a2 + 192) = v12;
    *(a1 + 848) = v10;
    *(a1 + 856) = v12;
  }

LABEL_30:
  v15 = *(a2 + 96);
  v16 = 12.0;
  if (v12 < 12.0 && (v12 > 0.0 ? (_NF = v15 < 2.0) : (_NF = 0), _NF) || ((v16 = 6.5, v12 > 0.0) ? (v18 = v12 < 6.5) : (v18 = 0), v18))
  {
    *(a2 + 192) = v16;
    v12 = v16;
  }

  v19 = v4 - v5;
  if (v10 >= 0.0 && v12 > 0.0 && v12 < 30.0)
  {
    v35 = *(a1 + 224);
    if (v35 >= 0.0 && v19 != 0.0)
    {
      v36 = fmod(v10 - v35, 360.0);
      if (v36 < 0.0)
      {
        v36 = v36 + 360.0;
      }

      if (v36 > 180.0)
      {
        v36 = v36 + -360.0;
      }

      if (fabs(v36 / v19) > 45.0)
      {
        *(a2 + 192) = 0x403E000000000000;
        v12 = 30.0;
      }
    }
  }

  v20 = v8;
  if ((*(a1 + 776) & 1) == 0 && *(a1 + 384) == 1 && v19 != 0.0 && v13 < 1.4 && v10 >= 0.0 && v15 < 5.0 && v20 < 5.0)
  {
    v37 = *(a1 + 224);
    if (v37 >= 0.0)
    {
      v38 = *(a1 + 312);
      if (v38 > 0.0 && v38 <= 29.9)
      {
        v39 = fmod(v10 - v37, 360.0);
        if (v39 < 0.0)
        {
          v39 = v39 + 360.0;
        }

        if (v39 > 180.0)
        {
          v39 = v39 + -360.0;
        }

        v40 = fabs(v39 / v19);
        if (v40 > 135.0)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v41 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v42 = *(a2 + 8);
              v43 = *(a1 + 224);
              v45 = *(a2 + 96);
              v44 = *(a2 + 104);
              *buf = 134350080;
              *&buf[4] = v42;
              *&buf[12] = 2050;
              *&buf[14] = v44;
              *&buf[22] = 2050;
              *&buf[24] = v43;
              v130 = 2050;
              v131 = v45;
              v132 = 2050;
              v133 = v40;
              _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,high course rate,course,%{public}.1lf,priorCourse,%{public}.1lf,speed,%{public}.1lf,fabsCourseRate,%{public}.1lf", buf, 0x34u);
            }

            v6 = sub_19B87DD40();
            if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
              }

              v46 = *(a2 + 8);
              v47 = *(a1 + 224);
              v49 = *(a2 + 96);
              v48 = *(a2 + 104);
              *v120 = 134350080;
              *&v120[4] = v46;
              *&v120[12] = 2050;
              *&v120[14] = v48;
              *&v120[22] = 2050;
              *&v120[24] = v47;
              v121 = 2050;
              v122 = v49;
              v123 = 2050;
              v124 = v40;
              v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,high course rate,course,%{public}.1lf,priorCourse,%{public}.1lf,speed,%{public}.1lf,fabsCourseRate,%{public}.1lf", v120, 52);
              v6 = sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v50);
              if (v50 != buf)
              {
                free(v50);
              }
            }
          }

          v10 = *(a1 + 224);
          *(a2 + 104) = v10;
          v12 = *(a1 + 312);
          *(a2 + 192) = v12;
          *(a1 + 848) = v10;
          *(a1 + 856) = v12;
        }
      }
    }
  }

  if (v10 < 0.0)
  {
    goto LABEL_44;
  }

  v51 = *(a2 + 96);
  if (v12 <= 0.0 || v12 >= 20.0 || v51 <= 5.0)
  {
    v52 = *(a1 + 736);
    if (v52 >= 0.0)
    {
      v53 = fmod(v10 - v52, 360.0);
      if (v53 < 0.0)
      {
        v53 = v53 + 360.0;
      }

      if (v53 > 180.0)
      {
        v53 = v53 + -360.0;
      }

      if (fabs(v53) < 30.0 && v51 < 5.0)
      {
        v89 = *(a1 + 744);
        if (v89 < v12)
        {
          *(a2 + 192) = v89;
        }
      }

      else
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *(a1 + 736) = _Q0;
      }
    }
  }

  else
  {
    *(a1 + 736) = v10;
    *(a1 + 744) = v12;
  }

  v90 = *(a1 + 224);
  if (v90 < 0.0 || vabdd_f64(*(a2 + 8), *(a1 + 128)) >= 2.2)
  {
LABEL_44:
    *(a1 + 752) = 0;
    goto LABEL_45;
  }

  v91 = fmod(v10 - v90, 360.0);
  if (v91 < 0.0)
  {
    v91 = v91 + 360.0;
  }

  if (v91 > 180.0)
  {
    v91 = v91 + -360.0;
  }

  v92 = fabs(v91);
  if (*(a1 + 752))
  {
    if (v92 >= 8.0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v92 > 14.0)
  {
    *(a1 + 752) = 1;
  }

LABEL_45:
  if (*(a1 + 652) != 1 || v13 > 4.9)
  {
    *(a1 + 776) = 0;
    *(a1 + 780) = 0;
    *(a1 + 784) = 0;
    *(a1 + 808) = 0;
    *(a1 + 792) = 0u;
    return;
  }

  v21 = sub_19B93EFE4(v6, *(a1 + 780), *(a1 + 777));
  if (v21 >= 11.1000001)
  {
    v22 = v21;
  }

  else
  {
    v22 = 11.1;
  }

  *buf = 0;
  *v120 = 0;
  sub_19BA0BE88((a1 + 608), v120, buf, &v119, *(a1 + 408), *(a1 + 416), *(a2 + 72), *(a2 + 56), *(a2 + 64), *(a2 + 72));
  v23 = *(a1 + 424);
  v24 = *v120 * *v120 + *buf * *buf;
  v25 = sqrtf(v24);
  v26 = *buf;
  v27 = *v120;
  v28 = atan2f(v26, v27);
  v29 = v23 * -0.0174532925;
  v30 = sinf(v28 + v29) * v25;
  v31 = fabsf(v30);
  v32 = (v22 * 0.5) + 7.5;
  if (*(a1 + 777) == 1 && v31 < v32)
  {
    goto LABEL_117;
  }

  v33 = *(a1 + 760);
  if (v33 == 1)
  {
    v34 = v30 <= -v32;
    v32 = 7.5;
LABEL_112:
    if (!v34 && v30 < v32)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  if (v33 == 2)
  {
    v34 = v30 <= -7.5;
    goto LABEL_112;
  }

LABEL_116:
  if (v31 >= ((v22 * 0.5) * 0.5))
  {
    v61 = 0;
    goto LABEL_118;
  }

LABEL_117:
  v61 = 1;
LABEL_118:
  v62 = *(a2 + 104);
  v63 = 0.0;
  if (v62 >= 0.0)
  {
    v64 = fmod(v62 - v23, 360.0);
    if (v64 < 0.0)
    {
      v64 = v64 + 360.0;
    }

    if (v64 > 180.0)
    {
      v64 = v64 + -360.0;
    }

    v63 = fabs(v64);
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v65 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v66 = *(a2 + 192);
      v67 = *(a1 + 424);
      v69 = *(a2 + 96);
      v68 = *(a2 + 104);
      *buf = 134350592;
      *&buf[4] = v68;
      *&buf[12] = 2050;
      *&buf[14] = v66;
      *&buf[22] = 2050;
      *&buf[24] = v67;
      v130 = 2050;
      v131 = v69;
      v132 = 2050;
      v133 = v30;
      v134 = 1026;
      v135 = v61;
      v136 = 2050;
      v137 = v22;
      _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_DEBUG, "CLMM,course,%{public}.1lf,courseUnc,%{public}.1lf,lastSnapCourse,%{public}.1lf,speed,%{public}.1lf,acrossTrack,%{public}.1f,onRoad,%{public}d,widthUsed,%{public}.1lf", buf, 0x44u);
    }

    v70 = sub_19B87DD40();
    if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v71 = *(a2 + 192);
      v72 = *(a1 + 424);
      v74 = *(a2 + 96);
      v73 = *(a2 + 104);
      *v120 = 134350592;
      *&v120[4] = v73;
      *&v120[12] = 2050;
      *&v120[14] = v71;
      *&v120[22] = 2050;
      *&v120[24] = v72;
      v121 = 2050;
      v122 = v74;
      v123 = 2050;
      v124 = v30;
      v125 = 1026;
      v126 = v61;
      v127 = 2050;
      v128 = v22;
      v75 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,course,%{public}.1lf,courseUnc,%{public}.1lf,lastSnapCourse,%{public}.1lf,speed,%{public}.1lf,acrossTrack,%{public}.1f,onRoad,%{public}d,widthUsed,%{public}.1lf", v120, 68);
      sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v75);
      if (v75 != buf)
      {
        free(v75);
      }
    }
  }

  if (*(a2 + 228))
  {
    v76 = 1;
  }

  else
  {
    v77 = *(a2 + 96);
    v76 = v77 >= 0.0 && v77 < 0.35;
  }

  v78 = sub_19B93CBFC();
  v79 = *(a2 + 96);
  if (v78 && *(a2 + 184) > 0.0 && v76 && v79 < 0.002 && v79 >= 0.0)
  {
    v76 = *(a2 + 228) | (v13 >= 1.1) | (v20 <= 0.7);
  }

  if (v13 >= 3.0)
  {
    v80 = (v63 > 135.0) & ~v76;
  }

  else
  {
    v80 = 0;
  }

  if (v63 > 30.0)
  {
    v81 = v61;
  }

  else
  {
    v81 = 0;
  }

  if (v81 != 1 || (v80 & 1) != 0 || (*(a2 + 229) & 1) != 0 || (*(a1 + 816) & 1) != 0 || (v83 = *(a1 + 824) - *(a1 + 832), v83 < 0.0) || v83 >= 30.0)
  {
    if (*(a1 + 776) == 1)
    {
      if (v79 > 3.0 || v80 & 1 | (((v61 | v76) & 1) == 0))
      {
        v82 = 0;
        *(a1 + 776) = 0;
        *(a1 + 780) = 0;
        *(a1 + 784) = 0;
        *(a1 + 808) = 0;
        *(a1 + 792) = 0u;
      }

      else
      {
        v82 = 1;
      }
    }

    else if (v61 && (v79 < 1.5 || v20 < 1.5))
    {
      v82 = 1;
      *(a1 + 776) = 1;
    }

    else
    {
      v82 = 0;
    }

    if ((v76 & (*(a2 + 192) >= 30.0)) == 1)
    {
      *(a1 + 776) = 1;
    }

    else if ((v82 & 1) == 0 && *(a2 + 228) == 1)
    {
      v93 = *(a2 + 96);
      if ((v93 < 0.0 || v93 < 0.35) && *(a1 + 384) == 1 && v13 < 2.2 && v63 > 30.0)
      {
        *(a1 + 776) = 1;
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v116 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v63;
            _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,engaged,large course diff when static,fabsCourseDiffWithPriorSnap,%{public}.1lf", buf, 0xCu);
          }

          v117 = sub_19B87DD40();
          if (*(v117 + 160) > 1 || *(v117 + 164) > 1 || *(v117 + 168) > 1 || *(v117 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            *v120 = 134349056;
            *&v120[4] = v63;
            v118 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,holdCourse,engaged,large course diff when static,fabsCourseDiffWithPriorSnap,%{public}.1lf", v120, 12);
            sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v118);
            if (v118 != buf)
            {
              free(v118);
            }
          }
        }
      }
    }

    if (sub_19B93CBFC())
    {
      if ((*(a1 + 776) & 1) == 0 && v13 < 1.1 && *(a2 + 184) > 0.0)
      {
        v94 = *(a2 + 96);
        if (v94 >= 0.0 && v94 < 5.0 && v20 < 5.0 && !((*(a2 + 104) < 0.0) | v80 & 1) && v63 >= 135.0)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v95 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349056;
              *&buf[4] = v63;
              _os_log_impl(&dword_19B873000, v95, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,engaged,large course diff at slow speed within one second,fabsCourseDiffWithPriorSnap,%{public}.1lf", buf, 0xCu);
            }

            v96 = sub_19B87DD40();
            if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
              }

              *v120 = 134349056;
              *&v120[4] = v63;
              v97 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,holdCourse,engaged,large course diff at slow speed within one second,fabsCourseDiffWithPriorSnap,%{public}.1lf", v120, 12);
              sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v97);
              if (v97 != buf)
              {
                free(v97);
              }
            }
          }

          v98 = *(a1 + 224);
          *(a2 + 104) = v98;
          v99 = *(a1 + 312);
          *(a2 + 192) = v99;
          *(a1 + 848) = v98;
          *(a1 + 856) = v99;
        }
      }
    }
  }

  else
  {
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v84 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v85 = *(a1 + 824) - *(a1 + 832);
        *buf = 134349056;
        *&buf[4] = v85;
        _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_DEBUG, "CLMM,detected course swing after a recent dismount,intervalSinceDismount,%{public}.1lf", buf, 0xCu);
      }

      v86 = sub_19B87DD40();
      if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v87 = *(a1 + 824) - *(a1 + 832);
        *v120 = 134349056;
        *&v120[4] = v87;
        v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,detected course swing after a recent dismount,intervalSinceDismount,%{public}.1lf", v120, 12);
        sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v88);
        if (v88 != buf)
        {
          free(v88);
        }
      }
    }

    *(a1 + 776) = 1;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v100 = off_1EAFE4708;
    v101 = v20;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v102 = *(a1 + 776);
      v103 = *(a2 + 96);
      *buf = 67240704;
      *&buf[4] = v102;
      *&buf[8] = 2050;
      *&buf[10] = v103;
      *&buf[18] = 2050;
      *&buf[20] = v101;
      _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,engaged,%{public}d,speed,%{public}.1lf,distance,%{public}.1lf", buf, 0x1Cu);
    }

    v104 = sub_19B87DD40();
    if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v105 = *(a1 + 776);
      v106 = *(a2 + 96);
      *v120 = 67240704;
      *&v120[4] = v105;
      *&v120[8] = 2050;
      *&v120[10] = v106;
      *&v120[18] = 2050;
      *&v120[20] = v101;
      v107 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,holdCourse,engaged,%{public}d,speed,%{public}.1lf,distance,%{public}.1lf", v120, 28);
      sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v107);
      if (v107 != buf)
      {
        free(v107);
      }
    }
  }

  if (*(a1 + 776) == 1)
  {
    *(a1 + 808) = *(a2 + 104) >= 0.0;
    *(a1 + 792) = v63;
    *(a1 + 800) = *(a2 + 192);
    *(a2 + 104) = *(a1 + 424);
    *(a2 + 192) = 0x403DE66666666666;
    if (*(a1 + 96) == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v108 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v109 = *(a2 + 104);
        v110 = *(a2 + 192);
        *buf = 134349568;
        *&buf[4] = v109;
        *&buf[12] = 2050;
        *&buf[14] = v110;
        *&buf[22] = 2050;
        *&buf[24] = v63;
        _os_log_impl(&dword_19B873000, v108, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse,using prior snap,course,%{public}.1lf,courseUnc,%{public}.1lf,fabsCourseDiff,%{public}.1lf", buf, 0x20u);
      }

      v111 = sub_19B87DD40();
      if (*(v111 + 160) > 1 || *(v111 + 164) > 1 || *(v111 + 168) > 1 || *(v111 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v112 = *(a2 + 104);
        v113 = *(a2 + 192);
        *v120 = 134349568;
        *&v120[4] = v112;
        *&v120[12] = 2050;
        *&v120[14] = v113;
        *&v120[22] = 2050;
        *&v120[24] = v63;
        v114 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,holdCourse,using prior snap,course,%{public}.1lf,courseUnc,%{public}.1lf,fabsCourseDiff,%{public}.1lf", v120, 32);
        sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::prefilterCourse(CLMapCrumb &)", "CoreLocation: %s\n", v114);
        if (v114 != buf)
        {
          free(v114);
        }
      }
    }
  }
}

float sub_19B93EFE4(uint64_t a1, unsigned int a2, int a3)
{
  result = 1.0;
  if ((a2 & 0xFFFFFFFE) != 8)
  {
    result = 7.4;
    if (a3)
    {
      result = 5.55;
    }

    if (a2 <= 7)
    {
      v4 = &unk_19BA8BB48;
      if (a3)
      {
        v4 = &unk_19BA8BB28;
      }

      return v4[a2];
    }
  }

  return result;
}

uint64_t sub_19B93F034(uint64_t a1, __int128 *a2, int a3, double a4, __n128 a5, __n128 a6)
{
  v122 = *MEMORY[0x1E69E9840];
  v9 = fabs(*(a2 + 30));
  v10 = *(a1 + 360);
  v11 = *(a2 + 29);
  if (v9 < 25.0 || a3 != 0)
  {
    if (v11 > 12)
    {
      if (v11 <= 16)
      {
        if ((v11 - 15) >= 2)
        {
          if (v11 != 13)
          {
            if (v11 != 14)
            {
              goto LABEL_26;
            }

            goto LABEL_18;
          }

LABEL_25:
          v15 = 1;
          goto LABEL_27;
        }

LABEL_21:
        v15 = 3;
        goto LABEL_27;
      }

      if ((v11 - 17) < 4)
      {
LABEL_23:
        v15 = 4;
        goto LABEL_27;
      }

LABEL_26:
      v15 = 10;
      goto LABEL_27;
    }

LABEL_12:
    if (v11 > 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_28;
    }

    if (v11 <= 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = -1;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v11 <= 7)
  {
    goto LABEL_12;
  }

  if (v11 > 0x14)
  {
    goto LABEL_24;
  }

  if (((1 << v11) & 0x1E000) != 0)
  {
    goto LABEL_21;
  }

  if (((1 << v11) & 0x1E0000) != 0)
  {
    goto LABEL_23;
  }

  if (((1 << v11) & 0x1800) == 0)
  {
LABEL_24:
    if ((v11 - 8) < 3)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_18:
  v15 = 2;
LABEL_27:
  v13 = 1;
  v14 = 1;
LABEL_28:
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 648);
      *buf = 67240448;
      *v117 = v17;
      *&v117[4] = 1026;
      *&v117[6] = v17 + v15;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,varFactorCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0xEu);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v19 = *(a1 + 648);
      v110 = 67240448;
      *v111 = v19;
      *&v111[4] = 1026;
      *&v111[6] = v19 + v15;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,varFactorCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", &v110, 14);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  *(a1 + 648) = (*(a1 + 648) + v15) & ~((*(a1 + 648) + v15) >> 31);
  v21 = *(a2 + 24);
  v22 = *(a2 + 13);
  if (v21 <= 0.0 || v22 < 0.0)
  {
    if (v22 >= 0.0)
    {
      v26 = 0;
      LOBYTE(v25) = 1;
    }

    else
    {
      LOBYTE(v25) = 0;
      v26 = 0;
    }

    goto LABEL_86;
  }

  if (v21 >= 180.0)
  {
    LOBYTE(v25) = 0;
LABEL_59:
    v26 = 1;
    goto LABEL_86;
  }

  v23 = *(a2 + 12);
  if (v23 <= 0.0 && (*(a2 + 228) & 1) != 0)
  {
LABEL_58:
    LOBYTE(v25) = 1;
    goto LABEL_59;
  }

  if (a3)
  {
    if (v9 > 67.5)
    {
      if (v23 > 8.33333333 || v21 < 20.0)
      {
        v25 = 6;
      }

      else
      {
        v25 = 4;
      }

      goto LABEL_72;
    }

    goto LABEL_58;
  }

  if (v21 < 20.0 || v23 > 8.33333333)
  {
    if (v9 > 67.5)
    {
      v25 = 18;
      goto LABEL_72;
    }

    if (v9 > 45.0)
    {
LABEL_69:
      v25 = 6;
      goto LABEL_72;
    }

    if (v9 > 30.0)
    {
      goto LABEL_71;
    }

    if (v9 > 20.0)
    {
      v25 = 1;
      goto LABEL_72;
    }
  }

  if (v9 > 67.5)
  {
    goto LABEL_69;
  }

  if (v9 > 45.0)
  {
LABEL_71:
    v25 = 2;
    goto LABEL_72;
  }

  v25 = 1;
  if (v9 <= 30.0)
  {
    goto LABEL_59;
  }

LABEL_72:
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v27 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 648);
      *buf = 67240448;
      *v117 = v28;
      *&v117[4] = 1026;
      *&v117[6] = v28 + v25;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEBUG, "CLMM,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0xEu);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v30 = *(a1 + 648);
      v110 = 67240448;
      *v111 = v30;
      *&v111[4] = 1026;
      *&v111[6] = v30 + v25;
      v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", &v110, 14);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  *(a1 + 648) += v25;
  LOBYTE(v25) = 1;
  v26 = 1;
  v13 = 1;
  v14 = 1;
LABEL_86:
  v32 = *(a2 + 10);
  v33 = *(a2 + 25);
  if (v33 > 0.0)
  {
    v34 = *(a2 + 26);
    if (v34 > 0.0)
    {
      v32 = sqrt(v34 / 2.45 * (v34 / 2.45) + v33 / 2.45 * (v33 / 2.45));
    }
  }

  if (v32 >= 10.0)
  {
    v35 = v32;
  }

  else
  {
    v35 = 10.0;
  }

  if (v35 >= 50.0)
  {
    v36 = 1;
  }

  else
  {
    v36 = v14;
  }

  if ((v36 & 1) == 0)
  {
    if (fabs(*(a2 + 32)) <= 75.0 && fabs(*(a2 + 31)) <= 150.0)
    {
      v14 = 0;
    }

    else
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v37 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(a1 + 648);
          *buf = 67240448;
          *v117 = v38;
          *&v117[4] = 1026;
          *&v117[6] = v38 + 1;
          _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLMM,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0xEu);
        }

        v39 = sub_19B87DD40();
        if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v40 = *(a1 + 648);
          v110 = 67240448;
          *v111 = v40;
          *&v111[4] = 1026;
          *&v111[6] = v40 + 1;
          v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", &v110, 14);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v41);
          if (v41 != buf)
          {
            free(v41);
          }
        }
      }

      ++*(a1 + 648);
      v13 = 1;
      v14 = 1;
    }
  }

  v42 = *(a1 + 128);
  v43 = *(a2 + 1) - v42;
  if (v42 == 0.0)
  {
    v43 = 0.0;
  }

  if (v43 >= 0.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0.0;
  }

  if (v44 <= 4.9)
  {
    if (v44 <= 75.0)
    {
      goto LABEL_121;
    }
  }

  else if (v44 <= 75.0 && (*(a2 + 228) & 1) != 0)
  {
LABEL_121:
    v45 = *(a1 + 384);
    v46 = 10000.0;
    if (v45 == 1 && *(a1 + 481) == 1)
    {
      v47 = 40000.0;
      if (a3)
      {
        v47 = 10000.0;
      }

      if (*(a2 + 361))
      {
        v46 = v47;
      }

      else
      {
        v46 = 10000.0;
      }
    }

    v48 = *(a2 + 32) * *(a2 + 32) + *(a2 + 31) * *(a2 + 31);
    if (v48 > v46)
    {
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v49 = off_1EAFE4708;
        v50 = sqrt(v46);
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          *v117 = v50;
          *&v117[8] = 1026;
          *&v117[10] = a3;
          _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,distance > %{public}.0lfm,Intersection,%{public}d", buf, 0x12u);
        }

        v51 = sub_19B87DD40();
        if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v110 = 134349312;
          *v111 = v50;
          *&v111[8] = 1026;
          *&v111[10] = a3;
          v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,stopSnapping,distance > %{public}.0lfm,Intersection,%{public}d", &v110, 18);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }
      }

      LOBYTE(v25) = 0;
      v53 = (a1 + 652);
      *(a1 + 652) = 0;
LABEL_269:
      v103 = *a2;
      v104 = a2[1];
      v105 = a2[2];
      *(a1 + 168) = a2[3];
      *(a1 + 152) = v105;
      *(a1 + 136) = v104;
      *(a1 + 120) = v103;
      v106 = a2[4];
      v107 = a2[5];
      v108 = a2[6];
      *(a1 + 232) = a2[7];
      *(a1 + 216) = v108;
      *(a1 + 200) = v107;
      *(a1 + 184) = v106;
      std::string::operator=((a1 + 248), (a2 + 8));
      memcpy((a1 + 272), a2 + 152, 0x118uLL);
      *(a1 + 384) = v25;
      return *v53;
    }

    v53 = (a1 + 652);
    if ((*(a1 + 652) & v45) == 1 && *(a2 + 29) > 13.0)
    {
      v65 = *(a1 + 216);
      v66 = v65 <= 0.0 ? *(a2 + 12) : (v65 + *(a2 + 12)) * 0.5;
      v67 = v44 * v66;
      sub_19BA0C01C((a1 + 608), *(a1 + 272), *(a1 + 280), *(a2 + 19), *(a2 + 20), *(a2 + 9));
      if (v68 - v67 > 100.0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v69 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v70 = *(a1 + 648);
            *buf = 67240448;
            *v117 = v70;
            *&v117[4] = 2050;
            *&v117[6] = v70 + 18.0;
            _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEBUG, "CLMM,jumpDistanceCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}.0f", buf, 0x12u);
          }

          v71 = sub_19B87DD40();
          if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v72 = *(a1 + 648);
            v110 = 67240448;
            *v111 = v72;
            *&v111[4] = 2050;
            *&v111[6] = v72 + 18.0;
            v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,jumpDistanceCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}.0f", &v110, 18);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v73);
            if (v73 != buf)
            {
              free(v73);
            }
          }
        }

        *(a1 + 648) += 18;
        v13 = 1;
        v14 = 1;
      }
    }

    v74 = fabs(v10);
    if (*v53 == 1)
    {
      v75 = *(a2 + 29);
      if (v75 <= 70.0)
      {
        if (*(a1 + 648) < 18)
        {
          if (*(a2 + 265) != 1 || (v88 = v32 * 3.5, fabs(*(a2 + 32)) <= v88))
          {
            if (v75 >= 6.5)
            {
              v93 = 1;
            }

            else
            {
              v93 = v14;
            }

            if ((v93 & 1) == 0)
            {
              *(a1 + 648) = 0;
              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
                }

                v94 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v95 = *(a1 + 648);
                  *buf = 67240192;
                  *v117 = v95;
                  _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_DEBUG, "CLMM,reseting offRoadCount,%{public}d", buf, 8u);
                }

                v96 = sub_19B87DD40();
                if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
                  }

                  v97 = *(a1 + 648);
                  v110 = 67240192;
                  *v111 = v97;
                  v98 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,reseting offRoadCount,%{public}d", &v110, 8);
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v98);
                  if (v98 != buf)
                  {
                    free(v98);
                  }
                }
              }
            }

            goto LABEL_263;
          }

          if (*(a1 + 96) != 1)
          {
            goto LABEL_210;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v89 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v90 = *(a2 + 32);
            *buf = 134349312;
            *v117 = v90;
            *&v117[8] = 2050;
            *&v117[10] = v88;
            _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,isAmbiguous,1,acrossTrack,%{public}.1lf,acrossTrackThreshold,%{public}.1lf", buf, 0x16u);
          }

          v91 = sub_19B87DD40();
          if (*(v91 + 160) <= 1 && *(v91 + 164) <= 1 && *(v91 + 168) <= 1 && !*(v91 + 152))
          {
LABEL_210:
            *v53 = 0;
LABEL_263:
            if (*(a1 + 841))
            {
              v25 = *v53;
              if (v25 != 1 || (*(a2 + 265) & 1) != 0 || fabs(*(a2 + 32)) > 10.0)
              {
                *(a1 + 841) = 0;
              }
            }

            else
            {
              *(a1 + 841) = sub_19B9407E0(a1, a2, v25, v26, v13, v48, 400.0, 0.5, v35, v9, v74);
              LOBYTE(v25) = *(a1 + 652);
            }

            goto LABEL_269;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v92 = *(a2 + 32);
          v110 = 134349312;
          *v111 = v92;
          *&v111[8] = 2050;
          *&v111[10] = v88;
          v80 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,stopSnapping,isAmbiguous,1,acrossTrack,%{public}.1lf,acrossTrackThreshold,%{public}.1lf", &v110, 22);
        }

        else
        {
          if (*(a1 + 96) != 1)
          {
            goto LABEL_210;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v82 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v83 = *(a1 + 648);
            *buf = 67240448;
            *v117 = v83;
            *&v117[4] = 2050;
            *&v117[6] = 0x4032000000000000;
            _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,offRoadCount,%{public}d,threshold,%{public}.0f", buf, 0x12u);
          }

          v84 = sub_19B87DD40();
          if (*(v84 + 160) <= 1 && *(v84 + 164) <= 1 && *(v84 + 168) <= 1 && !*(v84 + 152))
          {
            goto LABEL_210;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
          }

          v85 = *(a1 + 648);
          v110 = 67240448;
          *v111 = v85;
          *&v111[4] = 2050;
          *&v111[6] = 0x4032000000000000;
          v80 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,stopSnapping,offRoadCount,%{public}d,threshold,%{public}.0f", &v110, 18);
        }
      }

      else
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_210;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v76 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v77 = *(a2 + 29);
          *buf = 134349312;
          *v117 = v77;
          *&v117[8] = 2050;
          *&v117[10] = 0x4051800000000000;
          _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,varFactor,%{public}.1lf,threshold,%{public}.1lf", buf, 0x16u);
        }

        v78 = sub_19B87DD40();
        if (*(v78 + 160) <= 1 && *(v78 + 164) <= 1 && *(v78 + 168) <= 1 && !*(v78 + 152))
        {
          goto LABEL_210;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
        }

        v79 = *(a2 + 29);
        v110 = 134349312;
        *v111 = v79;
        *&v111[8] = 2050;
        *&v111[10] = 0x4051800000000000;
        v80 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,stopSnapping,varFactor,%{public}.1lf,threshold,%{public}.1lf", &v110, 22);
      }

      v86 = v80;
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v80);
      if (v86 != buf)
      {
        free(v86);
      }

      goto LABEL_210;
    }

    if (*(a2 + 348))
    {
      v81 = 7.5;
      if (v32 <= 7.5)
      {
        goto LABEL_247;
      }
    }

    else
    {
      v81 = 35.0;
      v87 = 1225.0;
      if (v35 >= 30.0 || (*(a1 + 600) & 1) != 0)
      {
LABEL_248:
        v99 = sub_19B9407E0(a1, a2, v25, v26, v13, v48, v87, v81, v35, v9, v74);
        *(a1 + 652) = v99;
        if (v99)
        {
          if (*(a1 + 96) == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
            }

            v100 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_DEBUG, "CLMM,startSnapping", buf, 2u);
            }

            v101 = sub_19B87DD40();
            if (*(v101 + 160) > 1 || *(v101 + 164) > 1 || *(v101 + 168) > 1 || *(v101 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
              }

              LOWORD(v110) = 0;
              v102 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,startSnapping", &v110, 2);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v102);
              if (v102 != buf)
              {
                free(v102);
              }
            }
          }

          *(a1 + 648) = 0;
        }

        goto LABEL_263;
      }

      if (v32 <= 7.5)
      {
        v81 = 13.5;
        goto LABEL_247;
      }
    }

    v81 = 20.0;
LABEL_247:
    v87 = 400.0;
    goto LABEL_248;
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v54 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v55 = *(a2 + 228);
      *buf = 134349824;
      *v117 = v44;
      *&v117[8] = 2050;
      *&v117[10] = 0x401399999999999ALL;
      v118 = 2050;
      v119 = 0x4052C00000000000;
      v120 = 1026;
      v121 = v55;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEBUG, "CLMM,stopSnapping,timeout,dT,%{public}.1lf,threshold1,%{public}.1lf,threshold2,%{public}.1lf,static,%{public}d", buf, 0x26u);
    }

    v56 = sub_19B87DD40();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v57 = *(a2 + 228);
      v110 = 134349824;
      *v111 = v44;
      *&v111[8] = 2050;
      *&v111[10] = 0x401399999999999ALL;
      v112 = 2050;
      v113 = 0x4052C00000000000;
      v114 = 1026;
      v115 = v57;
      v58 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,stopSnapping,timeout,dT,%{public}.1lf,threshold1,%{public}.1lf,threshold2,%{public}.1lf,static,%{public}d", &v110, 38);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLScoredMapMatcher::evaluateMatch(const CLMapCrumb &, BOOL)", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }
  }

  v53 = (a1 + 652);
  *(a1 + 652) = 0;
  v59 = *a2;
  v60 = a2[1];
  v61 = a2[2];
  *(a1 + 168) = a2[3];
  *(a1 + 152) = v61;
  *(a1 + 136) = v60;
  *(a1 + 120) = v59;
  v62 = a2[4];
  v63 = a2[5];
  v64 = a2[6];
  *(a1 + 232) = a2[7];
  *(a1 + 216) = v64;
  *(a1 + 200) = v63;
  *(a1 + 184) = v62;
  std::string::operator=((a1 + 248), (a2 + 8));
  memcpy((a1 + 272), a2 + 152, 0x118uLL);
  *(a1 + 384) = 0;
  return *v53;
}

BOOL sub_19B9407E0(uint64_t a1, uint64_t a2, char a3, char a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a5 & 1) != 0 || (*(a2 + 265))
  {
    return 0;
  }

  result = 0;
  if ((*(a1 + 385) & 1) == 0 && a6 < a7)
  {
    result = 0;
    if (fabs(*(a2 + 256)) < a8 && a9 < 101.0)
    {
      v13 = *(a2 + 232);
      if (v13 < 3.0)
      {
        result = 0;
        v14 = *(a1 + 352);
        if (v14 >= 3.0)
        {
          return result;
        }

        if (*(a2 + 96) <= 1.67)
        {
          return result;
        }

        result = 0;
        if (*(a1 + 216) <= 1.67)
        {
          return result;
        }

        if (*(a2 + 104) < 0.0)
        {
          return result;
        }

        result = 0;
        if (*(a1 + 224) < 0.0 || a10 >= 30.0 || a11 >= 30.0)
        {
          return result;
        }

        if ((a3 & 1) == 0 || (a4 & 1) == 0 || *(a2 + 192) >= 20.0)
        {
          v15 = *(a2 + 180);
          v16 = 3.0;
LABEL_23:
          if (v15 > v16)
          {
            return 1;
          }

          result = 0;
          if (v13 < 1.0 && v14 < 1.0)
          {
            return v15 > 1.1 || v15 == 0.0;
          }

          return result;
        }

        if (a10 < 40.0)
        {
          v15 = *(a2 + 180);
          v16 = 2.5;
          goto LABEL_23;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_19B940928(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, double *a6, double *a7, uint64_t a8, char a9)
{
  v47 = *MEMORY[0x1E69E9840];
  *a8 = 0;
  *(a8 + 16) = 0;
  v16 = sub_19BA0BE88((a1 + 608), (a8 + 40), (a8 + 32), (a8 + 48), a3[4], a3[5], a4[9], a4[7], a4[8], a4[9]);
  if (!*a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#Warning CLMM, NULL road", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D020);
      }

      v45[0] = 0;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 0, "#Warning CLMM, NULL road", v45, 2);
      v16 = sub_19B885924("Generic", 1, 0, 2, "void CLScoredMapMatcher::calculateScoreAndVarFactor(CLMapDataUtil::CovarInvDet &, const struct CLMapGeometry::DistanceQueryResult &, const CLMapCrumb &, double &, double &, double &, CLMapDataUtil::MapMatcherScore &, BOOL)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = *a3;
  v20 = *(a3 + 6);
  v22 = *(a8 + 32);
  v21 = *(a8 + 40);
  if (v21 == 0.0 && v22 == 0.0)
  {
    *a5 = 0.0;
    v23 = 0.0;
    goto LABEL_47;
  }

  if (a9)
  {
    v24 = 80.0;
  }

  else
  {
    v24 = sub_19B93EFE4(v16, *(v19 + 20), *(v19 + 16));
  }

  v25 = v21 * v21 + v22 * v22;
  v26 = sqrtf(v25);
  v27 = v22;
  v28 = v21;
  v29 = atan2f(v27, v28);
  v30 = v20 * 0.0174532925;
  v31 = __sincosf_stret(v29 - v30);
  v32 = v26 * v31.__cosval;
  v33 = v26 * v31.__sinval;
  if (*(a1 + 753) == 1)
  {
    v34 = v24 * 0.5;
    v35 = fabsf(v33);
    if (*(v19 + 16) == 1)
    {
      if (v35 >= v34)
      {
        v36 = -v34;
        if (v33 < 0.0)
        {
          v36 = v24 * 0.5;
        }

LABEL_44:
        *a7 = v36;
        v33 = v33 + v36;
        goto LABEL_45;
      }

LABEL_38:
      v40 = -v35;
      if (v33 < 0.0)
      {
        v40 = v35;
      }

      goto LABEL_40;
    }

    v37 = *(a1 + 768);
    v38 = a4[1];
    if (v37 == 0.0 || vabdd_f64(v38, v37) > 120.0)
    {
      v39 = sub_19B96CF60(a4[7], a4[8]);
      *(a1 + 760) = v39;
      *(a1 + 768) = v38;
      if (v39)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v39 = *(a1 + 760);
      if (v39)
      {
LABEL_29:
        if (v39 != 2 || v33 <= 0.0)
        {
          if (v33 >= 0.0)
          {
LABEL_45:
            v42 = atan2f(v33, v32);
            *(a8 + 32) = vcvtq_f64_f32(vmul_n_f32(__sincosf_stret(v42 + v30), sqrtf((v32 * v32) + (v33 * v33))));
            goto LABEL_46;
          }

          if (v35 >= v34)
          {
            *a7 = v34;
            v33 = v34 + v33;
            goto LABEL_45;
          }

          v41 = v35;
LABEL_41:
          *a7 = v41;
          v33 = 0.0;
          goto LABEL_45;
        }

        if (v33 >= v34)
        {
          *a7 = -v34;
          v33 = v33 - v34;
          goto LABEL_45;
        }

        v40 = -v35;
LABEL_40:
        v41 = v40;
        goto LABEL_41;
      }
    }

    v36 = v24 * 0.25;
    if (v35 >= (v24 * 0.25))
    {
      if (v33 >= 0.0)
      {
        v36 = -v36;
      }

      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_46:
  *a5 = v32;
  v23 = v33;
LABEL_47:
  *a6 = v23;
  if (*(a2 + 40) == 1)
  {
    v43 = fmod(a4[13] - v20, 360.0);
    if (v43 < 0.0)
    {
      v43 = v43 + 360.0;
    }

    if (v43 > 180.0)
    {
      v43 = v43 + -360.0;
    }

    *(a8 + 56) = fabs(v43);
  }

  sub_19B9C1C60(a2, a8);
}

uint64_t sub_19B940DBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 229);
  v7 = *(a2 + 8);
  if (*(a1 + 816) != v6 || *(a1 + 832) == 0.0)
  {
    *(a1 + 832) = v7;
    *(a1 + 816) = v6;
  }

  *(a1 + 824) = v7;
  ++*(a1 + 100);
  (*(*v4 + 48))(v4, a2, 450.0);
  v55 = &v55;
  v56 = &v55;
  v57 = 0;
  v50 = (a1 + 552);
  if (*(a1 + 552))
  {
    v8 = *(a2 + 8) - *(a1 + 592);
    if (v8 <= 5.0 && ((*(*v4 + 72))(v4, &v55, v50, *(a1 + 568), 1, *(a1 + 576), v8 * ((*(a2 + 96) + *(a1 + 584)) * 0.5)) & 1) == 0)
    {
      (*(*a1 + 40))(a1);
      v15 = 0;
      ++*(a1 + 108);
      goto LABEL_72;
    }
  }

  sub_19B93DA44(a1, a2);
  sub_19B9C138C(a1 + 656, a2, *(a1 + 752));
  v9.n128_u64[0] = *(a2 + 80);
  v10 = *(a2 + 200);
  if (v10 > 0.0)
  {
    v11 = *(a2 + 208);
    if (v11 > 0.0)
    {
      v9.n128_f64[0] = sqrt(v11 / 2.45 * (v11 / 2.45) + v10 / 2.45 * (v10 / 2.45));
    }
  }

  v12 = v9.n128_f64[0] * 4.0;
  v9.n128_u64[0] = 0x4052C00000000000;
  if (v12 >= 75.0)
  {
    v9.n128_f64[0] = v12;
    if (v12 > 249.9999)
    {
      v9.n128_u64[0] = 0x406F3FFF2E48E8A7;
    }
  }

  v52 = &v52;
  v53 = &v52;
  v54 = 0;
  v13 = (*(*v4 + 64))(v4, &v52, a2, 1, v9);
  v15 = v13;
  if ((v13 & 1) == 0)
  {
    (*(*a1 + 40))(a1);
    ++*(a1 + 108);
    goto LABEL_71;
  }

  v49 = v13;
  v16 = v53;
  if (v53 == &v52)
  {
    goto LABEL_68;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0.0;
  *&v14 = 0;
  v51 = v14;
  v22 = 0.0;
  v23 = &v52;
  do
  {
    if (*(v16[2] + 17))
    {
      goto LABEL_51;
    }

    v58 = 0.0;
    v59 = 0;
    v60 = 0;
    v61 = 0x3FF0000000000000;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    sub_19B940928(a1, a1 + 656, v16 + 2, a2, v67, &v66, &v65, &v58, 0);
    v24 = *(v16 + 37);
    v25 = *v50;
    if (*v50)
    {
      v26 = *v16[2];
      if (*v25 == v26)
      {
        goto LABEL_27;
      }

      v27 = v56;
      if (v56 != &v55)
      {
        v28 = 0;
        do
        {
          if (v27[2] == v26)
          {
            v28 |= *(v27 + 24) == *(v16 + 36);
          }

          v27 = v27[1];
        }

        while (v27 != &v55);
        if (v28)
        {
LABEL_27:
          v29 = 1;
          v30 = v58;
          if (v24)
          {
            goto LABEL_32;
          }

LABEL_31:
          v30 = v30 / 10.0;
          goto LABEL_32;
        }
      }

      v29 = 0;
      v30 = v58 / 500.0;
      if ((v24 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = 1;
      v30 = v58;
    }

LABEL_32:
    *(&v31 + 1) = *(&v51 + 1);
    *&v31 = *&v51 + v58;
    v51 = v31;
    v32 = (v25 == 0) | v24;
    if (v30 > v22)
    {
      v33 = v30;
    }

    else
    {
      v33 = v22;
    }

    if (v30 > v22)
    {
      v34 = v29;
    }

    else
    {
      v34 = v20;
    }

    if (v30 <= v22)
    {
      v32 = v18;
    }

    v35 = (v25 == 0) | v24;
    v36 = v30 <= v21;
    if (v30 <= v21)
    {
      v22 = v33;
    }

    else
    {
      v23 = v16;
      v22 = v21;
    }

    if (v30 <= v21)
    {
      v20 = v34;
    }

    else
    {
      v21 = v30;
    }

    if (v36)
    {
      v18 = v32;
    }

    else
    {
      v19 = v29;
    }

    if (!v36)
    {
      v17 = v35;
    }

LABEL_51:
    v16 = v16[1];
  }

  while (v16 != &v52);
  if (v23 != &v52)
  {
    sub_19B9DEB0C(a2, v23 + 2);
    v37 = v21 * 500.0;
    if (v19)
    {
      v37 = v21;
    }

    v38 = v22 * 500.0;
    if (v20)
    {
      v38 = v22;
    }

    if ((v17 & 1) == 0)
    {
      v37 = v37 * 10.0;
    }

    if ((v18 & 1) == 0)
    {
      v38 = v38 * 10.0;
    }

    *&v39.f64[0] = v51;
    v39.f64[1] = v38;
    *(a2 + 176) = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(*&v37, 0), v39));
    v41 = v23[2];
    v40 = v23[3];
    v15 = v49;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 552) = v41;
    v42 = *(a1 + 560);
    *(a1 + 560) = v40;
    if (v42)
    {
      sub_19B8750F8(v42);
    }

    *(a1 + 568) = *(v23 + 36);
    *(a1 + 576) = v23[8];
    *(a1 + 584) = *(a2 + 96);
    *(a1 + 592) = *(a2 + 8);
    v66 = 0;
    v67[0] = 0.0;
    v65 = 0;
    v58 = 0.0;
    v59 = 0;
    v60 = 0;
    v61 = 0x3FF0000000000000;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    sub_19B940928(a1, a1 + 656, v23 + 2, a2, v67, &v66, &v65, &v58, 0);
    *(a2 + 288) = *(a2 + 152);
    v43 = *(a2 + 168);
    *(a2 + 304) = v43;
    v46 = sub_19B93F034(a1, a2, 0, v43, v44, v45);
    *(a2 + 264) = v46;
    if ((v46 & 1) == 0)
    {
      ++*(a1 + 104);
    }

    goto LABEL_71;
  }

LABEL_68:
  *(a2 + 152) = *(a2 + 56);
  *(a2 + 168) = *(a2 + 104);
  v47 = *(a1 + 560);
  *v50 = 0;
  *(a1 + 560) = 0;
  if (v47)
  {
    sub_19B8750F8(v47);
  }

  ++*(a1 + 104);
  v15 = v49;
LABEL_71:
  sub_19B916DC0(&v52);
LABEL_72:
  sub_19B941414(&v55);
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  return v15;
}

void sub_19B941388(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_19B916DC0(va);
  sub_19B941414(va1);
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(a1);
}

os_log_t sub_19B9413E4()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B941414(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[5];
        if (v6)
        {
          sub_19B8750F8(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_19B9415F0(void *a1@<X8>)
{
  if (qword_1ED519280 != -1)
  {
    dispatch_once_f(&qword_1ED519280, 0, sub_19B94148C);
  }

  v2 = *(qword_1ED519288 + 144);
  *a1 = *(qword_1ED519288 + 136);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void *sub_19B941664(void *a1)
{
  *a1 = &unk_1F0E6D050;
  v2 = a1[18];
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  return sub_19B938EFC(a1);
}

void sub_19B9416C4(void *a1)
{
  sub_19B941664(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B941700(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B94173C(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6D470))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B9425E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setIdentityToken_(*(a1 + 32), a2, *(a1 + 40), a4);
  objc_msgSend_setStorageToken_(*(a1 + 32), v5, 0, v6);
  v10 = *(a1 + 32);

  return objc_msgSend_manageConnection(v10, v7, v8, v9);
}

uint64_t sub_19B942864(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_destroyConnection(*(a1 + 32), a2, a3, a4);
  v8 = *(a1 + 32);

  return objc_msgSend_tearDown(v8, v5, v6, v7);
}

void sub_19B942AB4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_UTF8String(*(a1 + 32), v3, v4, v5);
      *buf = 68289282;
      *&buf[4] = 0;
      v13[0] = 2082;
      *&v13[1] = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v11 = objc_msgSend_UTF8String(*(a1 + 32), v8, v9, v10);
      *buf = 68289282;
      *&buf[4] = 0;
      v13[0] = 2082;
      *&v13[1] = "";
      v14 = 2082;
      v15 = v11;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession destroying connection (dealloc)", "{msg%{public}.0s:#serviceSession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }
}

void sub_19B942CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B943210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B943298(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession Default handler received message, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession Default handler received message", "{msg%{public}.0s:#serviceSession Default handler received message, self:%{public}p}", buf, 0x1Cu);
    }

    v9 = a2[1];
    v10 = *a2;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    objc_msgSend_handleMessage_(v4, v7, &v10, v8);
    if (v11)
    {
      sub_19B8750F8(v11);
    }
  }
}

void sub_19B943468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B943808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B943A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void *sub_19B943CD4(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B943D30((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B943D30(uint64_t a1, char *a2)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B943D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B943E10(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B943E6C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B943E6C(uint64_t a1, char *a2, void *a3)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B943EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B944988()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  qword_1ED519290 = v0;

  return objc_msgSend_setDateFormat_(v0, v1, @"yyyy,MM,dd,HH,mm,ss.SSS", v2);
}

os_log_t sub_19B944F20()
{
  result = os_log_create("com.apple.locationd.Position", "Gathering");
  qword_1EAFE4710 = result;
  return result;
}

os_log_t sub_19B948AD4()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

uint64_t sub_19B948B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v79 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = _Q0;
  *(a1 + 56) = xmmword_19BA89720;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0xBFF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 87) = 0;
  if (objc_msgSend_timestamp(a2, a2, a3, a4))
  {
    v14 = objc_msgSend_timestamp(a2, v11, v12, v13);
    objc_msgSend_timeIntervalSinceReferenceDate(v14, v15, v16, v17);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLGeoMapLocation,loc timestamp is unexpectedly nil,setting fiOSTime to -1.0", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || (v21 = -1.0, *(v23 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
      }

      v77[0] = 0;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,CLGeoMapLocation,loc timestamp is unexpectedly nil,setting fiOSTime to -1.0", v77, 2);
      sub_19B885924("Generic", 1, 0, 0, "CLGeoMapLocation::CLGeoMapLocation(const CLTripSegmentLocation * _Nonnull)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }

      v21 = -1.0;
    }
  }

  *a1 = v21;
  objc_msgSend_latitude(a2, v18, v19, v20);
  *(a1 + 8) = v25;
  objc_msgSend_longitude(a2, v26, v27, v28);
  *(a1 + 16) = v29;
  objc_msgSend_course(a2, v30, v31, v32);
  *(a1 + 32) = v33;
  objc_msgSend_courseAccuracy(a2, v34, v35, v36);
  *(a1 + 40) = v37;
  objc_msgSend_speed(a2, v38, v39, v40);
  *(a1 + 48) = v41;
  objc_msgSend_speedAccuracy(a2, v42, v43, v44);
  *(a1 + 56) = v45;
  objc_msgSend_altitude(a2, v46, v47, v48);
  *(a1 + 64) = v49;
  objc_msgSend_altitudeAccuracy(a2, v50, v51, v52);
  *(a1 + 72) = v53;
  objc_msgSend_horizontalAccuracy(a2, v54, v55, v56);
  *(a1 + 24) = v57;
  *(a1 + 88) = objc_msgSend_locType(a2, v58, v59, v60);
  *(a1 + 96) = objc_msgSend_referenceFrame(a2, v61, v62, v63);
  *(a1 + 92) = objc_msgSend_isOriginalLocationType(a2, v64, v65, v66);
  *(a1 + 93) = objc_msgSend_isInertialIntegrated(a2, v67, v68, v69);
  *(a1 + 94) = objc_msgSend_isLinearInterpolated(a2, v70, v71, v72);
  *(a1 + 100) = objc_msgSend_signalEnvironmentType(a2, v73, v74, v75);
  return a1;
}

BOOL sub_19B948DC0(uint64_t a1, void *a2)
{
  sub_19B8EBC04((a1 + 40));
  if (objc_msgSend_count(a2, v4, v5, v6))
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        v10 = objc_msgSend_objectAtIndexedSubscript_(a2, v7, v9 - 1, v8);
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_msgSend_objectAtIndexedSubscript_(a2, v7, v9, v8);
      sub_19B948E5C(a1, v10, v11);
      ++v9;
    }

    while (objc_msgSend_count(a2, v12, v13, v14) > v9);
  }

  return *(a1 + 40) != *(a1 + 48);
}

uint64_t sub_19B948E5C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    sub_19B94948C();
  }

  return 0;
}

void sub_19B948EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B948EFC(uint64_t a1, uint64_t a2, int a3, int a4, double a5, double a6)
{
  v7 = *(a1 + 40);
  for (i = *(a1 + 48); v7 != i; ++v7)
  {
    v13 = *v7;
    if (*v7)
    {
      v14 = *v13;
      if (*v13 > a6)
      {
        return *a2 != *(a2 + 8);
      }

      if (v14 > a5 || a3 != 0)
      {
        if (v14 >= a6 && a4 == 0)
        {
          return *a2 != *(a2 + 8);
        }

        if (v14 >= a5 && v14 <= a6)
        {
          sub_19B8EAB68(a2, v7);
        }
      }
    }
  }

  return *a2 != *(a2 + 8);
}

void sub_19B948FAC(uint64_t a1, uint64_t *a2)
{
  v120 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 120);
    v6 = *(a1 + 128);
    v7 = *(a1 + 136);
    v8 = *(a1 + 144);
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 104);
    v13 = *(a1 + 112);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 65);
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    v21 = *(a1 + 88);
    v22 = *(a1 + 96);
    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    *buf = 134353667;
    v83 = v9;
    v84 = 1026;
    v85 = v5;
    v86 = 2053;
    v87 = v6;
    v88 = 2053;
    v89 = v7;
    v90 = 2050;
    v91 = v8;
    v92 = 2050;
    v93 = v14;
    v94 = 2053;
    v95 = v10;
    v96 = 2053;
    v97 = v11;
    v98 = 2050;
    v99 = v12;
    v100 = 2050;
    v101 = v13;
    v102 = 2050;
    v103 = v15;
    v104 = 2050;
    v105 = v16;
    v106 = 1026;
    v107 = v17;
    v108 = 1026;
    v109 = v18;
    v110 = 2050;
    v111 = v19;
    v112 = 2050;
    v113 = v20;
    v114 = 2050;
    v115 = v21;
    v116 = 1026;
    v117 = v22;
    v118 = 2082;
    v119 = v23;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,%{public}.1lf,type,%{public}d,rawLL,%{sensitive}.8lf,%{sensitive}.8lf,rawCourse,%{public}.3lf,speed,%{public}.3lf,snapLL,%{sensitive}.8lf,%{sensitive}.8lf,snapCourse,%{public}.3lf,ratio,%{public}.6lf,projection,%{public}.6lf,score,%{public}.12lf,valid,%{public}d,forward,%{public}d,deltaN,%{public}.3lf,deltaE,%{public}.3lf,deltaCourse,%{public}.3lf,original,%{public}d,str,%{public}s", buf, 0xB0u);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D500);
    }

    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    v27 = *(a1 + 136);
    v28 = *(a1 + 144);
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    v33 = *(a1 + 104);
    v34 = *(a1 + 112);
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v37 = *(a1 + 64);
    v38 = *(a1 + 65);
    v39 = *(a1 + 72);
    v40 = *(a1 + 80);
    v41 = *(a1 + 88);
    v42 = *(a1 + 96);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v44 = 134353667;
    v45 = v29;
    v46 = 1026;
    v47 = v25;
    v48 = 2053;
    v49 = v26;
    v50 = 2053;
    v51 = v27;
    v52 = 2050;
    v53 = v28;
    v54 = 2050;
    v55 = v33;
    v56 = 2053;
    v57 = v30;
    v58 = 2053;
    v59 = v31;
    v60 = 2050;
    v61 = v32;
    v62 = 2050;
    v63 = v34;
    v64 = 2050;
    v65 = v35;
    v66 = 2050;
    v67 = v36;
    v68 = 1026;
    v69 = v37;
    v70 = 1026;
    v71 = v38;
    v72 = 2050;
    v73 = v39;
    v74 = 2050;
    v75 = v40;
    v76 = 2050;
    v77 = v41;
    v78 = 1026;
    v79 = v42;
    v80 = 2082;
    v81 = a2;
    v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,CLTSP,%{public}.1lf,type,%{public}d,rawLL,%{sensitive}.8lf,%{sensitive}.8lf,rawCourse,%{public}.3lf,speed,%{public}.3lf,snapLL,%{sensitive}.8lf,%{sensitive}.8lf,snapCourse,%{public}.3lf,ratio,%{public}.6lf,projection,%{public}.6lf,score,%{public}.12lf,valid,%{public}d,forward,%{public}d,deltaN,%{public}.3lf,deltaE,%{public}.3lf,deltaCourse,%{public}.3lf,original,%{public}d,str,%{public}s", &v44, 176);
    sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapSnapData::outputDebugLog(const std::string &) const", "CoreLocation: %s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }
}

CLTripSegmentLocation *sub_19B94934C(uint64_t a1, int a2)
{
  v4 = objc_alloc(MEMORY[0x1E695DF00]);
  v8 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v4, v5, v6, v7, *(a1 + 16));
  v9 = [CLTripSegmentLocation alloc];
  v11 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_(v9, v10, v8, *(a1 + 120), *(a1 + 24), *(a1 + 32), -1.0, *(a1 + 40), -1.0, *(a1 + 104), -1.0, -1.0, 0xBFF0000000000000);
  objc_msgSend_setSignalEnvironmentType_(v11, v12, *(a1 + 168), v13);
  if (*a1)
  {
    objc_msgSend_setMapsRoadClass_(v11, v14, *(*a1 + 20), v16);
    objc_msgSend_setMapsFormOfWay_(v11, v17, *(*a1 + 24), v18);
  }

  objc_msgSend_setRawLatitude_(v11, v14, v15, v16, *(a1 + 128));
  objc_msgSend_setRawLongitude_(v11, v19, v20, v21, *(a1 + 136));
  if (a2)
  {
    objc_msgSend_setCourseAccuracy_(v11, v22, v23, v24, *(a1 + 144));
    objc_msgSend_setSpeedAccuracy_(v11, v25, v26, v27, *(a1 + 112));
    objc_msgSend_setAltitude_(v11, v28, v29, v30, *(a1 + 48));
    objc_msgSend_setAltitudeAccuracy_(v11, v31, v32, v33, *(a1 + 56));
  }

  return v11;
}

os_log_t sub_19B94945C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void *sub_19B9494F8(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6D530;
  sub_19B948B04((a1 + 3), *a2, a3, a4);
  return a1;
}

void sub_19B949578(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6D530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

id *sub_19B9495D4(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_19B94960C(id *a1, int a2, double *a3, double *a4, double *a5, int a6, double a7, double a8, double a9)
{
  *a3 = a7;
  *a4 = a8;
  *a5 = a9;
  if (a2 == 2)
  {
    return 2;
  }

  v32 = v14;
  v33 = v13;
  v34 = v12;
  v35 = v11;
  v36 = v9;
  v37 = v10;
  result = sub_19B8DFD64(a7, a8);
  if (result)
  {
    result = objc_msgSend_isLocationShiftRequiredForCoordinate_(MEMORY[0x1E69A1E80], v24, v25, v26, a7, a8);
    if (result)
    {
      v30 = a7;
      v31 = a8;
      v29 = a9;
      if (!*a1)
      {
        *a1 = objc_alloc_init(MEMORY[0x1E69A1E80]);
      }

      if (a6 < 1)
      {
        return 1;
      }

      else
      {
        while (!objc_msgSend_shiftCoordinate_accuracy_shiftedCoordinate_shiftedAccuracy_(*a1, v27, &v30, &v29, a7, a8, a9))
        {
          if (!--a6)
          {
            return 1;
          }
        }

        v28 = v31;
        *a3 = v30;
        *a4 = v28;
        *a5 = v29;
        return 2;
      }
    }
  }

  return result;
}

void sub_19B949720(float64x2_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = 0.0;
  v17 = 0.0;
  v15 = 0.0;
  if (sub_19BA0BE88(a1, &v16, &v17, &v15, a6, a7, 0.0, a8, a9, 0.0))
  {
    sub_19BA0C1C0(a1->f64, a2, a3, &v14, a4, a5, 0.0, v16, v17, v15);
  }
}

uint64_t sub_19B949838(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v585 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_count(a3, a2, a3, a4);
  v12 = objc_msgSend_count(a2, v9, v10, v11);
  v15 = 0;
  if (v8 < 2)
  {
    return v15;
  }

  v16 = v12;
  if (v12 < 2)
  {
    return v15;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v311 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v311, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Origin is not set.", __p, 2u);
      }

      v312 = sub_19B87DD40();
      if ((*(v312 + 160) & 0x80000000) == 0 || (*(v312 + 164) & 0x80000000) == 0 || (*(v312 + 168) & 0x80000000) == 0 || *(v312 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v574[0]) = 0;
        v313 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Origin is not set.", v574, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v313);
        if (v313 != __p)
        {
          free(v313);
        }
      }
    }

    return 0;
  }

  v554 = a4;
  v17 = (a1 + 152);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  if (*(a1 + 232) == 1)
  {
    *(a1 + 232) = 0;
  }

  if (*(a1 + 296) == 1)
  {
    *(a1 + 296) = 0;
  }

  if (*(a1 + 392) == 1)
  {
    *(a1 + 392) = 0;
  }

  if (*(a1 + 408) == 1)
  {
    *(a1 + 408) = 0;
  }

  if (*(a1 + 464) == 1)
  {
    *(a1 + 464) = 0;
  }

  *(a1 + 144) = 0;
  *(a1 + 376) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0x10000000000000;
  v18 = *(a1 + 504);
  if (v18)
  {
    *(a1 + 512) = v18;
    operator delete(v18);
  }

  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  v19 = sub_19B8D8C34(a2, a3, v13, v14);
  if (v20)
  {
    *(a1 + 368) = v19;
    *(a1 + 377) = 1;
  }

  v22 = v16 + v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - *(a1 + 152)) >> 4) < v16 + v8)
  {
    if (v22 <= 0x333333333333333)
    {
      *&__p[32] = a1 + 152;
      sub_19B94FA38(v22);
    }

    sub_19B8B8A40();
  }

  v558 = 0;
  v560 = v16;
  v553 = v8;
  v23 = 0;
  v24 = (a1 + 72);
  memset(v562, 0, sizeof(v562));
  v563 = 1065353216;
  __asm { FMOV            V0.2D, #-1.0 }

  v556 = _Q0;
  do
  {
    v30 = objc_msgSend_objectAtIndexedSubscript_(a2, v20, v23, v21);
    objc_msgSend_horizontalAccuracy(v30, v31, v32, v33);
    if (v36 < 0.0)
    {
      if (*a1 != 1)
      {
        goto LABEL_522;
      }

      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v314 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
      {
        objc_msgSend_horizontalAccuracy(v30, v315, v316, v317);
        *__p = 134349056;
        *&__p[4] = v318;
        _os_log_impl(&dword_19B873000, v314, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Negative horizontal uncertainty. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
      }

      v319 = sub_19B87DD40();
      if (*(v319 + 160) <= 1 && *(v319 + 164) <= 1 && *(v319 + 168) <= 1 && !*(v319 + 152))
      {
        goto LABEL_522;
      }

      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v323 = qword_1EAFE4760;
      objc_msgSend_horizontalAccuracy(v30, v320, v321, v322);
      LODWORD(v574[0]) = 134349056;
      *(v574 + 4) = v324;
      v325 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v323, 0, "[CLPedestrianRTSSmoother]:[runRTS] Negative horizontal uncertainty. horizontalUncertainty, %{public}.1f.", v574, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v325);
      goto LABEL_520;
    }

    if (*(a1 + 232) != 1)
    {
      goto LABEL_26;
    }

    v37 = objc_msgSend_timestamp(v30, v34, v35, v21);
    objc_msgSend_timeIntervalSinceReferenceDate(v37, v38, v39, v40);
    if ((*(a1 + 232) & 1) == 0)
    {
      sub_19B94F954();
    }

    v42 = v41;
    if (v41 <= *(a1 + 176))
    {
      if (*a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v108 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          if ((*(a1 + 232) & 1) == 0)
          {
            sub_19B94F954();
          }

          v109 = *(a1 + 176);
          *__p = 134349312;
          *&__p[4] = v109;
          *&__p[12] = 2050;
          *&__p[14] = v42;
          _os_log_impl(&dword_19B873000, v108, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Location sample timestamp does not increase, skipping, previousTime, %{public}.2f, currentTime, %{public}.2f", __p, 0x16u);
        }

        v110 = sub_19B87DD40();
        if ((*(v110 + 160) & 0x80000000) == 0 || (*(v110 + 164) & 0x80000000) == 0 || (*(v110 + 168) & 0x80000000) == 0 || *(v110 + 152))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          if ((*(a1 + 232) & 1) == 0)
          {
            sub_19B94F954();
          }

          v111 = *(a1 + 176);
          LODWORD(v574[0]) = 134349312;
          *(v574 + 4) = v111;
          WORD6(v574[0]) = 2050;
          *(v574 + 14) = v42;
          v112 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Location sample timestamp does not increase, skipping, previousTime, %{public}.2f, currentTime, %{public}.2f", v574, 22);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v112);
          goto LABEL_253;
        }
      }
    }

    else
    {
LABEL_26:
      memset(v574, 0, sizeof(v574));
      *v575 = 0x100000000;
      *&v575[8] = v556;
      if (!sub_19B8D8100(v574, v30, *(a1 + 48), *(a1 + 56), v35, v21))
      {
        goto LABEL_259;
      }

      if (*(a1 + 144))
      {
        if (*(a1 + 232))
        {
          v43 = *v24;
          if (*v24 == *(a1 + 176))
          {
            v44 = *v574;
            v567[0] = v558;
            v566[0] = v558;
            sub_19B8D794C(a3, v567, v566, v43, *v574, v21);
            v558 = v566[0];
            v45 = v567[0];
            v48 = objc_msgSend_objectAtIndexedSubscript_(a3, v46, v567[0], v47);
            v52 = objc_msgSend_cfAbsTimestamp(v48, v49, v50, v51);
            objc_msgSend_timeIntervalSinceReferenceDate(v52, v53, v54, v55);
            v57 = v56;
            v60 = objc_msgSend_objectAtIndexedSubscript_(a3, v58, v558, v59);
            v64 = objc_msgSend_cfAbsTimestamp(v60, v61, v62, v63);
            objc_msgSend_timeIntervalSinceReferenceDate(v64, v65, v66, v67);
            v69 = v68;
            v71 = sub_19B8D9804(a3, v45, v558, v70);
            v72 = v71;
            v73 = HIBYTE(v71);
            if (v57 >= v43 && v57 <= v44 && v69 >= v44 && (HIBYTE(v71) & v71 & 1) != 0)
            {
              sub_19B94DC44(a1, a3, v45, 1, *(a1 + 72));
              sub_19B94DC44(a1, a3, v558, 0, *v574);
              v74 = *(a1 + 312);
              v77 = __sincos_stret(*(a1 + 320));
              v78 = v74 * v77.__cosval;
              v79 = v74 * v77.__sinval;
              for (i = *(a1 + 304) + 1; i < *(a1 + 328); ++i)
              {
                v81 = objc_msgSend_objectAtIndexedSubscript_(a3, v75, i, v76);
                v85 = objc_msgSend_deltaPosition_m(v81, v82, v83, v84);
                isValid = objc_msgSend_isValid(v85, v86, v87, v88);
                v93 = 0.0;
                v94 = 0.0;
                if (isValid)
                {
                  v95 = objc_msgSend_deltaPosition_m(v81, v90, v91, v92);
                  objc_msgSend_X(v95, v96, v97, v98);
                  v93 = v99;
                  v103 = objc_msgSend_deltaPosition_m(v81, v100, v101, v102);
                  objc_msgSend_Y(v103, v104, v105, v106);
                  v94 = v107;
                }

                v78 = v78 + v93;
                v79 = v79 + v94;
                v74 = v74 + hypot(v93, v94);
              }

              v169 = *(a1 + 336);
              v170 = __sincos_stret(*(a1 + 344));
              *&v570 = vcvt_f32_f64(vsubq_f64(*(v574 + 8), *(a1 + 80)));
              *&v171 = v78 + v169 * v170.__cosval;
              *&v172 = v79 + v169 * v170.__sinval;
              *&v579 = __PAIR64__(v172, v171);
              sub_19B8D7F58(&v579, &v570);
              v176 = v175;
              *(a1 + 384) = v175;
              *(a1 + 392) = 1;
              if (*(a1 + 1))
              {
                ++*(a1 + 472);
                v178 = __sincos_stret(v175);
                v177.f64[0] = v178.__cosval;
                v177.f64[1] = v178.__sinval;
                *(a1 + 480) = vaddq_f64(v177, *(a1 + 480));
                if (*(a1 + 408) == 1)
                {
                  v179 = *(a1 + 400);
                  v180 = __sincos_stret(v176);
                  cosval = v180.__cosval;
                  sinval = v180.__sinval;
                  *__p = cosval;
                  *&__p[4] = sinval;
                  v183 = __sincos_stret(v179);
                  v184 = v183.__cosval;
                  v185 = v183.__sinval;
                  *v573 = v184;
                  *&v573[4] = v185;
                  sub_19B8D7F58(__p, v573);
                  v187 = fabs(v186);
                  if (*(a1 + 496) < v187)
                  {
                    *(a1 + 496) = v187;
                  }
                }

                *(a1 + 400) = *(a1 + 384);
                *(a1 + 408) = *(a1 + 392);
              }

              v188 = sqrtf(vaddv_f32(vmul_f32(*&v570, *&v570)));
              v189 = v188;
              v190 = sqrtf((*&v579 * *&v579) + (*(&v579 + 1) * *(&v579 + 1)));
              v191 = v190;
              if (v188 > 100.0)
              {
                if (*(a1 + 464) == 1)
                {
                  if (*(a1 + 392) != 1)
                  {
LABEL_568:
                    sub_19B94F954();
                  }

                  v192 = *(a1 + 456);
                  v193 = __sincos_stret(*(a1 + 384));
                  v194 = v193.__cosval;
                  v195 = v193.__sinval;
                  *__p = v194;
                  *&__p[4] = v195;
                  v196 = __sincos_stret(v192);
                  v197 = v196.__cosval;
                  v198 = v196.__sinval;
                  *v573 = v197;
                  *&v573[4] = v198;
                  sub_19B8D7F58(__p, v573);
                  v200 = fabs(v199);
                  if (*(a1 + 448) > v200)
                  {
                    v200 = *(a1 + 448);
                  }

                  *(a1 + 448) = v200;
                }

                *(a1 + 456) = *(a1 + 384);
                *(a1 + 464) = *(a1 + 392);
                if (v190 > 2.2204e-16)
                {
                  if (v188 <= v190)
                  {
                    v201 = v190;
                  }

                  else
                  {
                    v201 = v188;
                  }

                  if (v188 >= v190)
                  {
                    v202 = v190;
                  }

                  else
                  {
                    v202 = v188;
                  }

                  v203 = v201 / v202;
                  if (*(a1 + 440) > v203)
                  {
                    v203 = *(a1 + 440);
                  }

                  *(a1 + 440) = v203;
                }
              }

              v204 = 1.0;
              if (v190 > 2.2204e-16)
              {
                v204 = v189 / v191;
                if (v189 / v191 > 1.0)
                {
                  v204 = 1.0;
                }
              }

              *&v205 = v74 + v169;
              *(a1 + 416) = v204;
              v206 = 2.22044605e-16;
              if (v74 + v169 <= 2.22044605e-16)
              {
                v207 = 1;
              }

              else
              {
                v206 = v191 / *&v205;
                *&v205 = 0x3FD3333333333333;
                v207 = v206 > 0.3;
              }

              *(a1 + 2) = v207;
              if ((*(a1 + 392) & 1) == 0)
              {
                if (*a1 == 1)
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                  }

                  v391 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 0;
                    _os_log_impl(&dword_19B873000, v391, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Course offset is not initialized.", __p, 2u);
                  }

                  v392 = sub_19B87DD40();
                  if ((*(v392 + 160) & 0x80000000) == 0 || (*(v392 + 164) & 0x80000000) == 0 || (*(v392 + 168) & 0x80000000) == 0 || *(v392 + 152))
                  {
                    bzero(__p, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                    }

                    *v573 = 0;
                    v325 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Course offset is not initialized.", v573, 2);
                    sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v325);
                    goto LABEL_520;
                  }
                }

LABEL_522:
                v15 = 0;
                goto LABEL_523;
              }

              v215 = *(a1 + 304);
              if ((*(a1 + 376) & 1) == 0)
              {
                *(a1 + 352) = v215;
                v206 = *(a1 + 312);
                *(a1 + 360) = v206;
                *(a1 + 376) = 1;
              }

              *&v573[16] = 0;
              *v573 = 0x3FF0000000000000uLL;
              *&v573[24] = 0x3FF0000000000000;
              while (v215 <= *(a1 + 328))
              {
                v216 = objc_msgSend_objectAtIndexedSubscript_(a3, v173, v215, v174, v206, *&v205);
                v220 = objc_msgSend_deltaPosition_m(v216, v217, v218, v219);
                v227 = objc_msgSend_isValid(v220, v221, v222, v223);
                if (v227)
                {
                  v228 = objc_msgSend_deltaPosition_m(v216, v224, v225, v226);
                  objc_msgSend_X(v228, v229, v230, v231);
                  v233 = v232;
                  v237 = objc_msgSend_deltaPosition_m(v216, v234, v235, v236);
                  objc_msgSend_Y(v237, v238, v239, v240);
                  v242 = v241;
                  v561 = xmmword_19BA8BCA0;
                }

                else
                {
                  v561 = xmmword_19BA8BC90;
                  v233 = 0.0;
                  v242 = 0.0;
                }

                v243 = *(a1 + 424);
                if (v243)
                {
                  v244 = sub_19B950A2C(v243, v215);
                  if (v244)
                  {
                    *(a1 + 384) = v244[3];
                    *(a1 + 392) = 1;
                  }
                }

                v245 = *(a1 + 432);
                if (v245)
                {
                  if ((*(a1 + 2) & 1) == 0)
                  {
                    v246 = sub_19B950A2C(v245, v215);
                    if (v246)
                    {
                      v247 = v246[3];
                      if (v247 > 1.0)
                      {
                        v247 = 1.0;
                      }

                      *(a1 + 416) = v247;
                    }
                  }
                }

                v248 = 0.0;
                if (v227)
                {
                  if ((*(a1 + 392) & 1) == 0)
                  {
                    goto LABEL_568;
                  }

                  v248 = atan2(v242, v233) + *(a1 + 384);
                }

                v249 = objc_msgSend_cfAbsTimestamp(v216, v224, v225, v226);
                objc_msgSend_timeIntervalSinceReferenceDate(v249, v250, v251, v252);
                v254 = v253;
                if (v215 == *(a1 + 304))
                {
                  v255 = *(a1 + 312);
                }

                else
                {
                  v255 = sqrt(v242 * v242 + v233 * v233);
                }

                if (v215 == *(a1 + 328))
                {
                  v255 = *(a1 + 336);
                }

                v256 = *(a1 + 416) * v255;
                v579 = v561;
                v257 = __sincos_stret(v248);
                *&v570 = -(v256 * v257.__sinval);
                *(&v570 + 1) = v257.__cosval * v256;
                v571 = v257.__cosval;
                v572 = v257.__sinval;
                sub_19B94F27C(a1 + 120, v573, &v570, &v579);
                v258.f64[0] = v257.__cosval * v256;
                v258.f64[1] = v257.__sinval * v256;
                *(a1 + 80) = vaddq_f64(v258, *(a1 + 80));
                *(a1 + 72) = v254;
                if (*(a1 + 232) == 1)
                {
                  v259 = *(a1 + 216);
                  *(a1 + 96) = *(a1 + 208);
                  *(a1 + 104) = v259;
                  v260 = *(a1 + 224);
                }

                else
                {
                  if (*a1 == 1)
                  {
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                    }

                    v261 = qword_1EAFE4760;
                    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                    {
                      *__p = 0;
                      _os_log_impl(&dword_19B873000, v261, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[forwardPropagate with IO] LastConsumedMeasurement is not initialized.", __p, 2u);
                    }

                    v262 = sub_19B87DD40();
                    if ((*(v262 + 160) & 0x80000000) == 0 || (*(v262 + 164) & 0x80000000) == 0 || (*(v262 + 168) & 0x80000000) == 0 || *(v262 + 152))
                    {
                      bzero(__p, 0x65CuLL);
                      if (qword_1EAFE4758 != -1)
                      {
                        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                      }

                      LOWORD(v568) = 0;
                      v263 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[forwardPropagate with IO] LastConsumedMeasurement is not initialized.", &v568, 2);
                      sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::forwardPropagate(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable)", "CoreLocation: %s\n", v263);
                      if (v263 != __p)
                      {
                        free(v263);
                      }
                    }
                  }

                  *(a1 + 96) = 0x100000000;
                  *(a1 + 104) = 0xBFF0000000000000;
                  v260 = -1.0;
                }

                *(a1 + 112) = v260;
                v264 = *(a1 + 160);
                v265 = *(a1 + 168);
                if (v264 >= v265)
                {
                  v269 = 0xCCCCCCCCCCCCCCCDLL * ((v264 - *v17) >> 4);
                  v270 = v269 + 1;
                  if (v269 + 1 > 0x333333333333333)
                  {
                    goto LABEL_567;
                  }

                  v271 = 0xCCCCCCCCCCCCCCCDLL * ((v265 - *v17) >> 4);
                  if (2 * v271 > v270)
                  {
                    v270 = 2 * v271;
                  }

                  if (v271 >= 0x199999999999999)
                  {
                    v272 = 0x333333333333333;
                  }

                  else
                  {
                    v272 = v270;
                  }

                  *&__p[32] = a1 + 152;
                  if (v272)
                  {
                    sub_19B94FA38(v272);
                  }

                  v273 = 80 * v269;
                  *__p = 0;
                  *&__p[8] = v273;
                  *&__p[24] = 0;
                  v275 = *(a1 + 88);
                  v274 = *(a1 + 104);
                  *v273 = *v24;
                  *(v273 + 16) = v275;
                  *(v273 + 32) = v274;
                  *(v273 + 48) = *(a1 + 120);
                  *(v273 + 56) = *(a1 + 128);
                  *(v273 + 64) = *(a1 + 136);
                  *(v273 + 72) = 0;
                  *&__p[16] = 80 * v269 + 80;
                  sub_19B94F9A0((a1 + 152), __p);
                  v268 = *(a1 + 160);
                  if (*__p)
                  {
                    operator delete(*__p);
                  }
                }

                else
                {
                  v266 = *v24;
                  v205 = *(a1 + 88);
                  v267 = *(a1 + 104);
                  *(v264 + 16) = v205;
                  *(v264 + 32) = v267;
                  *v264 = v266;
                  *(v264 + 48) = *(a1 + 120);
                  *(v264 + 56) = *(a1 + 128);
                  v206 = *(a1 + 136);
                  *(v264 + 64) = v206;
                  *(v264 + 72) = 0;
                  v268 = v264 + 80;
                }

                *(a1 + 160) = v268;
                ++v215;
              }

              sub_19B94D6A8(a1, v574);
              v276 = *(a1 + 72);
              v277 = *(a1 + 160);
              *(v277 - 80) = v276;
              *(v277 - 8) = 1;
              *__p = *(a1 + 80);
              v278 = *(a1 + 120);
              v279 = *(a1 + 128);
              v280 = *(a1 + 136);
              *v573 = a1 + 72;
              v281 = sub_19B94FADC(v562, v573, v276);
            }

            else
            {
              if (*a1 == 1)
              {
                if (qword_1EAFE4758 != -1)
                {
                  dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                }

                v126 = qword_1EAFE4760;
                if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
                {
                  if ((*(a1 + 232) & 1) == 0)
                  {
                    sub_19B94F954();
                  }

                  v127 = *(a1 + 176);
                  *__p = 134349824;
                  *&__p[4] = *&v574[0];
                  *&__p[12] = 2050;
                  *&__p[14] = v127;
                  *&__p[22] = 1024;
                  *&__p[24] = v72;
                  *&__p[28] = 1024;
                  *&__p[30] = v73;
                  _os_log_impl(&dword_19B873000, v126, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] There is no inertialOdometry sample between consecutive location samples. timestamp of coming location sample %{public}.3f, timestamp of consumed location sample %{public}.3f.areThereEnoughValidIOSamples,%d,isIODistanceLongEnough,%d.", __p, 0x22u);
                }

                v128 = sub_19B87DD40();
                if (*(v128 + 160) > 1 || *(v128 + 164) > 1 || *(v128 + 168) > 1 || *(v128 + 152))
                {
                  bzero(__p, 0x65CuLL);
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                  }

                  if ((*(a1 + 232) & 1) == 0)
                  {
                    sub_19B94F954();
                  }

                  v129 = *(a1 + 176);
                  *v573 = 134349824;
                  *&v573[4] = *&v574[0];
                  *&v573[12] = 2050;
                  *&v573[14] = v129;
                  *&v573[22] = 1024;
                  *&v573[24] = v72;
                  *&v573[28] = 1024;
                  *&v573[30] = v73;
                  v130 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLPedestrianRTSSmoother]:[runRTS] There is no inertialOdometry sample between consecutive location samples. timestamp of coming location sample %{public}.3f, timestamp of consumed location sample %{public}.3f.areThereEnoughValidIOSamples,%d,isIODistanceLongEnough,%d.", v573, 34);
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v130);
                  if (v130 != __p)
                  {
                    free(v130);
                  }
                }
              }

              v131 = 0;
              v132 = *v574;
              v571 = 0.0;
              v570 = 0x3FF0000000000000uLL;
              v572 = 1.0;
              *&v568 = (v132 - *v24) * 4.0 * ((v132 - *v24) * 4.0);
              *(&v568 + 1) = v568;
              v133 = 1;
              do
              {
                v134 = v133;
                v135 = *sub_19B8D7BD0(&v570, v131, 0);
                v136 = *(a1 + 136);
                v137 = sub_19B8D7BD0(&v570, v131, 1uLL);
                *v137 = *v137 + v135 * v136;
                *sub_19B8D7BD0(v573, v131, 1uLL) = 0;
                *sub_19B8D7BD0(v573, v131, 0) = 0;
                v138 = sub_19B8D7BD0(v573, v131, v131);
                v133 = 0;
                *v138 = 0x3FF0000000000000;
                v131 = 1;
              }

              while ((v134 & 1) != 0);
              for (j = 1; ; --j)
              {
                v140 = 0;
                *(&v579 + j) = 0;
                v141 = 1;
                v142 = 0.0;
                do
                {
                  v143 = v141;
                  v144 = *sub_19B8D7BD0(&v570, j, v140);
                  v145 = *sub_19B8D7BD0(&v570, j, v140);
                  v146 = *sub_19B95063C(a1 + 120, v140);
                  v147 = *sub_19B8D7BD0(v573, j, v140);
                  v148 = *sub_19B8D7BD0(v573, j, v140);
                  v149 = sub_19B950834(&v568, v140);
                  v141 = 0;
                  v142 = v142 + v144 * v145 * v146 + v147 * v148 * v149;
                  *(&v579 + j) = v142;
                  v140 = 1;
                }

                while ((v143 & 1) != 0);
                if (v142 <= 0.0)
                {
                  break;
                }

                if (!j)
                {
                  *(a1 + 120) = v579;
                  goto LABEL_209;
                }

                v150 = 0;
                v151 = 0.0;
                v152 = 1;
                do
                {
                  v153 = v152;
                  v154 = *sub_19B8D7BD0(&v570, 0, v150);
                  v155 = *sub_19B95063C(a1 + 120, v150);
                  v156 = *sub_19B8D7BD0(&v570, j, v150);
                  v157 = *sub_19B8D7BD0(v573, 0, v150);
                  v158 = sub_19B950834(&v568, v150);
                  v159 = sub_19B8D7BD0(v573, j, v150);
                  v152 = 0;
                  v151 = v151 + v154 * v155 * v156 + v157 * v158 * *v159;
                  v150 = 1;
                }

                while ((v153 & 1) != 0);
                v160 = 0;
                *sub_19B9502B4(a1 + 136, 0, j) = v151 / v142;
                v161 = 1;
                do
                {
                  v162 = v161;
                  v163 = *sub_19B9502B4(a1 + 136, 0, j);
                  v164 = *sub_19B8D7BD0(&v570, j, v160);
                  v165 = sub_19B8D7BD0(&v570, 0, v160);
                  *v165 = *v165 - v163 * v164;
                  v166 = *sub_19B9502B4(a1 + 136, 0, j);
                  v167 = *sub_19B8D7BD0(v573, j, v160);
                  v168 = sub_19B8D7BD0(v573, 0, v160);
                  v161 = 0;
                  *v168 = *v168 - v166 * v167;
                  v160 = 1;
                }

                while ((v162 & 1) != 0);
              }

              if (qword_1ED519058 != -1)
              {
                dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
              }

              v212 = off_1ED519060;
              if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
              {
                *__p = 134217984;
                *&__p[4] = j;
                _os_log_impl(&dword_19B873000, v212, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", __p, 0xCu);
              }

              v213 = sub_19B87DD40();
              if (*(v213 + 160) > 1 || *(v213 + 164) > 1 || *(v213 + 168) > 1 || *(v213 + 152))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1ED519058 != -1)
                {
                  dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
                }

                LODWORD(v576) = 134217984;
                *(&v576 + 4) = j;
                v214 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, off_1ED519060, 2, "D[%zu] <= 0, matrix ! positive definite", &v576, 12);
                sub_19B885924("Generic", 1, 0, 2, "void CMFactoredMatrix<double, 2>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, const CMVector<T, N> &) [T = double, N = 2]", "CoreLocation: %s\n", v214);
                if (v214 != __p)
                {
                  free(v214);
                }
              }

LABEL_209:
              *(a1 + 72) = v132;
              if (*(a1 + 232) == 1)
              {
                v282 = *(a1 + 216);
                *(a1 + 96) = *(a1 + 208);
                *(a1 + 104) = v282;
                v283 = *(a1 + 224);
              }

              else
              {
                if (*a1 == 1)
                {
                  if (qword_1EAFE4758 != -1)
                  {
                    dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                  }

                  v284 = qword_1EAFE4760;
                  if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
                  {
                    *__p = 0;
                    _os_log_impl(&dword_19B873000, v284, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[forwardPropagate ZOH] LastConsumedMeasurement is not initialized.", __p, 2u);
                  }

                  v285 = sub_19B87DD40();
                  if ((*(v285 + 160) & 0x80000000) == 0 || (*(v285 + 164) & 0x80000000) == 0 || (*(v285 + 168) & 0x80000000) == 0 || *(v285 + 152))
                  {
                    bzero(__p, 0x65CuLL);
                    if (qword_1EAFE4758 != -1)
                    {
                      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
                    }

                    *v573 = 0;
                    v286 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[forwardPropagate ZOH] LastConsumedMeasurement is not initialized.", v573, 2);
                    sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::forwardPropagate(const CFAbsoluteTime)", "CoreLocation: %s\n", v286);
                    if (v286 != __p)
                    {
                      free(v286);
                    }
                  }
                }

                *(a1 + 96) = 0x100000000;
                *(a1 + 104) = 0xBFF0000000000000;
                v283 = -1.0;
              }

              *(a1 + 112) = v283;
              v287 = *(a1 + 160);
              v288 = *(a1 + 168);
              if (v287 >= v288)
              {
                v292 = 0xCCCCCCCCCCCCCCCDLL * ((v287 - *v17) >> 4);
                v293 = v292 + 1;
                if (v292 + 1 > 0x333333333333333)
                {
LABEL_567:
                  sub_19B8B8A40();
                }

                v294 = 0xCCCCCCCCCCCCCCCDLL * ((v288 - *v17) >> 4);
                if (2 * v294 > v293)
                {
                  v293 = 2 * v294;
                }

                if (v294 >= 0x199999999999999)
                {
                  v295 = 0x333333333333333;
                }

                else
                {
                  v295 = v293;
                }

                *&__p[32] = a1 + 152;
                if (v295)
                {
                  sub_19B94FA38(v295);
                }

                v308 = 80 * v292;
                *__p = 0;
                *&__p[8] = v308;
                *&__p[24] = 0;
                v310 = *(a1 + 88);
                v309 = *(a1 + 104);
                *v308 = *v24;
                *(v308 + 16) = v310;
                *(v308 + 32) = v309;
                *(v308 + 48) = *(a1 + 120);
                *(v308 + 56) = *(a1 + 128);
                *(v308 + 64) = *(a1 + 136);
                *(v308 + 72) = 0;
                *&__p[16] = 80 * v292 + 80;
                sub_19B94F9A0((a1 + 152), __p);
                v291 = *(a1 + 160);
                if (*__p)
                {
                  operator delete(*__p);
                }
              }

              else
              {
                v289 = *v24;
                v290 = *(a1 + 104);
                *(v287 + 16) = *(a1 + 88);
                *(v287 + 32) = v290;
                *v287 = v289;
                *(v287 + 48) = *(a1 + 120);
                *(v287 + 56) = *(a1 + 128);
                *(v287 + 64) = *(a1 + 136);
                *(v287 + 72) = 0;
                v291 = v287 + 80;
              }

              *(a1 + 160) = v291;
              sub_19B94D6A8(a1, v574);
              *(*(a1 + 160) - 8) = 1;
              *__p = *(a1 + 80);
              v278 = *(a1 + 120);
              v279 = *(a1 + 128);
              v280 = *(a1 + 136);
              *v573 = a1 + 72;
              v281 = sub_19B94FADC(v562, v573, *(a1 + 72));
            }

            *(v281 + 3) = *__p;
            *(v281 + 5) = v278;
            *(v281 + 6) = v279;
            *(v281 + 7) = v280;
            goto LABEL_259;
          }

          if (*a1 != 1)
          {
            goto LABEL_522;
          }

          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v383 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            if ((*(a1 + 232) & 1) == 0)
            {
              sub_19B94F954();
            }

            v384 = *v24;
            v385 = *(a1 + 176);
            *__p = 134349312;
            *&__p[4] = v384;
            *&__p[12] = 2050;
            *&__p[14] = v385;
            _os_log_impl(&dword_19B873000, v383, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Timestamp of estimated state %{public}.3f is not equal to timestamp of last consumed measurement, %{public}.3f.", __p, 0x16u);
          }

          v386 = sub_19B87DD40();
          if ((*(v386 + 160) & 0x80000000) != 0 && (*(v386 + 164) & 0x80000000) != 0 && (*(v386 + 168) & 0x80000000) != 0 && !*(v386 + 152))
          {
            goto LABEL_522;
          }

          bzero(__p, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          if ((*(a1 + 232) & 1) == 0)
          {
            sub_19B94F954();
          }

          v387 = *v24;
          v388 = *(a1 + 176);
          *v573 = 134349312;
          *&v573[4] = v387;
          *&v573[12] = 2050;
          *&v573[14] = v388;
          v325 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Timestamp of estimated state %{public}.3f is not equal to timestamp of last consumed measurement, %{public}.3f.", v573, 22);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v325);
        }

        else
        {
          if (*a1 != 1)
          {
            goto LABEL_522;
          }

          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v381 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *__p = 0;
            _os_log_impl(&dword_19B873000, v381, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Last consumed measurement is not initialized in forward propagation loop.", __p, 2u);
          }

          v382 = sub_19B87DD40();
          if ((*(v382 + 160) & 0x80000000) != 0 && (*(v382 + 164) & 0x80000000) != 0 && (*(v382 + 168) & 0x80000000) != 0 && !*(v382 + 152))
          {
            goto LABEL_522;
          }

          bzero(__p, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          *v573 = 0;
          v325 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Last consumed measurement is not initialized in forward propagation loop.", v573, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v325);
        }

LABEL_520:
        if (v325 != __p)
        {
          free(v325);
        }

        goto LABEL_522;
      }

      *&v573[8] = 0;
      *&v573[16] = 0;
      *v573 = *(&v574[1] + 1) * *(&v574[1] + 1) * 0.5;
      *&v573[24] = *v573;
      if (sub_19B94EDC0(&v570, v573))
      {
        v113 = v571;
        *(a1 + 72) = v574[0];
        v114 = *v575;
        *(a1 + 88) = *&v574[1];
        *(a1 + 96) = v114;
        *(a1 + 104) = *&v575[8];
        *(a1 + 120) = v570;
        *(a1 + 136) = v113;
        *(a1 + 144) = 1;
        v115 = *(a1 + 160);
        v116 = *(a1 + 168);
        if (v115 >= v116)
        {
          v208 = 0xCCCCCCCCCCCCCCCDLL * ((v115 - *v17) >> 4);
          v209 = v208 + 1;
          if (v208 + 1 > 0x333333333333333)
          {
            sub_19B8B8A40();
          }

          v210 = 0xCCCCCCCCCCCCCCCDLL * ((v116 - *v17) >> 4);
          if (2 * v210 > v209)
          {
            v209 = 2 * v210;
          }

          if (v210 >= 0x199999999999999)
          {
            v211 = 0x333333333333333;
          }

          else
          {
            v211 = v209;
          }

          *&__p[32] = a1 + 152;
          if (v211)
          {
            sub_19B94FA38(v211);
          }

          v296 = 80 * v208;
          *__p = 0;
          *&__p[8] = v296;
          *&__p[24] = 0;
          v298 = *(a1 + 88);
          v297 = *(a1 + 104);
          *v296 = *v24;
          *(v296 + 16) = v298;
          *(v296 + 32) = v297;
          *(v296 + 48) = *(a1 + 120);
          *(v296 + 56) = *(a1 + 128);
          *(v296 + 64) = *(a1 + 136);
          *(v296 + 72) = 1;
          *&__p[16] = 80 * v208 + 80;
          sub_19B94F9A0((a1 + 152), __p);
          v120 = *(a1 + 160);
          if (*__p)
          {
            operator delete(*__p);
          }

          v119 = *(a1 + 136);
        }

        else
        {
          v117 = *v24;
          v118 = *(a1 + 104);
          *(v115 + 16) = *(a1 + 88);
          *(v115 + 32) = v118;
          *v115 = v117;
          *(v115 + 48) = *(a1 + 120);
          *(v115 + 56) = *(a1 + 128);
          v119 = *(a1 + 136);
          *(v115 + 64) = v119;
          *(v115 + 72) = 1;
          v120 = v115 + 80;
        }

        *(a1 + 160) = v120;
        *__p = *(a1 + 80);
        v299 = *(a1 + 120);
        v300 = *(a1 + 128);
        *&v579 = a1 + 72;
        v301 = sub_19B94FADC(v562, &v579, *(a1 + 72));
        *(v301 + 3) = *__p;
        *(v301 + 5) = v299;
        *(v301 + 6) = v300;
        *(v301 + 7) = v119;
        v302 = *(a1 + 296);
        v303 = v574[1];
        *(a1 + 240) = v574[0];
        *(a1 + 256) = v303;
        *(a1 + 272) = *v575;
        *(a1 + 288) = *&v575[16];
        if ((v302 & 1) == 0)
        {
          *(a1 + 296) = 1;
        }

        v304 = *(a1 + 232);
        v305 = v574[1];
        *(a1 + 176) = v574[0];
        *(a1 + 192) = v305;
        *(a1 + 208) = *v575;
        *(a1 + 224) = *&v575[16];
        if ((v304 & 1) == 0)
        {
          *(a1 + 232) = 1;
        }

        if (*a1 == 1)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v306 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 134349056;
            *&__p[4] = *(&v574[1] + 1);
            _os_log_impl(&dword_19B873000, v306, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Forward state initialized successfully. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
          }

          v307 = sub_19B87DD40();
          if (*(v307 + 160) > 1 || *(v307 + 164) > 1 || *(v307 + 168) > 1 || *(v307 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            *v573 = 134349056;
            *&v573[4] = *(&v574[1] + 1);
            v112 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLPedestrianRTSSmoother]:[runRTS] Forward state initialized successfully. horizontalUncertainty, %{public}.1f.", v573, 12);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v112);
LABEL_253:
            if (v112 != __p)
            {
              free(v112);
            }
          }
        }
      }

      else
      {
        if (*a1 == 1)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v121 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *__p = 134349056;
            *&__p[4] = *(&v574[1] + 1);
            _os_log_impl(&dword_19B873000, v121, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[initializePositionState] Forward state initialization failed. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
          }

          v122 = sub_19B87DD40();
          if ((*(v122 + 160) & 0x80000000) == 0 || (*(v122 + 164) & 0x80000000) == 0 || (*(v122 + 168) & 0x80000000) == 0 || *(v122 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            LODWORD(v579) = 134349056;
            *(&v579 + 4) = *(&v574[1] + 1);
            v123 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[initializePositionState] Forward state initialization failed. horizontalUncertainty, %{public}.1f.", &v579, 12);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::initializePositionState(const CLPTSUtility::LocationInNWU &, std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &)", "CoreLocation: %s\n", v123);
            if (v123 != __p)
            {
              free(v123);
            }
          }
        }

        if (*a1 == 1)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v124 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
          {
            *__p = 134349056;
            *&__p[4] = *(&v574[1] + 1);
            _os_log_impl(&dword_19B873000, v124, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Forward state initialization failed. horizontalUncertainty, %{public}.1f.", __p, 0xCu);
          }

          v125 = sub_19B87DD40();
          if ((*(v125 + 160) & 0x80000000) == 0 || (*(v125 + 164) & 0x80000000) == 0 || (*(v125 + 168) & 0x80000000) == 0 || *(v125 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            *v573 = 134349056;
            *&v573[4] = *(&v574[1] + 1);
            v112 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Forward state initialization failed. horizontalUncertainty, %{public}.1f.", v573, 12);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v112);
            goto LABEL_253;
          }
        }
      }
    }

LABEL_259:
    ++v23;
  }

  while (v23 != v560);
  v326 = *(a1 + 160);
  if (0xCCCCCCCCCCCCCCCDLL * ((v326 - *(a1 + 152)) >> 4) <= 1)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v327 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v327, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] Not enough forward estimation, returned false", __p, 2u);
      }

      v328 = sub_19B87DD40();
      if ((*(v328 + 160) & 0x80000000) == 0 || (*(v328 + 164) & 0x80000000) == 0 || (*(v328 + 168) & 0x80000000) == 0 || *(v328 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v574[0]) = 0;
        v329 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[backPropagate] Not enough forward estimation, returned false", v574, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v329);
        goto LABEL_507;
      }
    }

LABEL_509:
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v545 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v545, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Backpropagation failed.", __p, 2u);
      }

      v546 = sub_19B87DD40();
      if ((*(v546 + 160) & 0x80000000) == 0 || (*(v546 + 164) & 0x80000000) == 0 || (*(v546 + 168) & 0x80000000) == 0 || *(v546 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v574[0]) = 0;
        v325 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Backpropagation failed.", v574, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v325);
        goto LABEL_520;
      }
    }

    goto LABEL_522;
  }

  if ((*(v326 - 8) & 1) == 0)
  {
    if (*a1 != 1)
    {
      goto LABEL_509;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v379 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v379, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] last forward estimate is not corrected, returned false", __p, 2u);
    }

    v380 = sub_19B87DD40();
    if ((*(v380 + 160) & 0x80000000) != 0 && (*(v380 + 164) & 0x80000000) != 0 && (*(v380 + 168) & 0x80000000) != 0 && !*(v380 + 152))
    {
      goto LABEL_509;
    }

    bzero(__p, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    LOWORD(v574[0]) = 0;
    v329 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[backPropagate] last forward estimate is not corrected, returned false", v574, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v329);
LABEL_507:
    if (v329 != __p)
    {
      free(v329);
    }

    goto LABEL_509;
  }

  v330 = *(v326 - 80);
  v331 = sub_19B950ADC(v562[0], v562[1], v330);
  if (!v331)
  {
    if (*a1 != 1)
    {
      goto LABEL_509;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v389 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v389, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] key for initialization does not exist, returned false", __p, 2u);
    }

    v390 = sub_19B87DD40();
    if ((*(v390 + 160) & 0x80000000) != 0 && (*(v390 + 164) & 0x80000000) != 0 && (*(v390 + 168) & 0x80000000) != 0 && !*(v390 + 152))
    {
      goto LABEL_509;
    }

    bzero(__p, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    LOWORD(v574[0]) = 0;
    v329 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[backPropagate] key for initialization does not exist, returned false", v574, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v329);
    goto LABEL_507;
  }

  v333 = v331[3];
  v332 = v331[4];
  v334 = 0.0;
  v335 = v331[6];
  v336 = v331[7];
  v337 = v331[5] + 0.0 + v336 * v335 * v336;
  v338 = v336 * v335 + 0.0;
  v339 = v335 * v336 + 0.0;
  v340 = v335 + 0.0;
  *&v579 = v337;
  *(&v579 + 1) = v339;
  v580 = v338;
  v581 = v340;
  if ((*(a1 + 64) & 1) == 0)
  {
    if (*a1 != 1)
    {
      goto LABEL_509;
    }

    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v393 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v393, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] origin is not set, returned false", __p, 2u);
    }

    v394 = sub_19B87DD40();
    if ((*(v394 + 160) & 0x80000000) != 0 && (*(v394 + 164) & 0x80000000) != 0 && (*(v394 + 168) & 0x80000000) != 0 && !*(v394 + 152))
    {
      goto LABEL_509;
    }

    bzero(__p, 0x65CuLL);
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    LOWORD(v574[0]) = 0;
    v329 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[backPropagate] origin is not set, returned false", v574, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v329);
    goto LABEL_507;
  }

  v341 = 0;
  v343 = *(v326 - 48);
  v342 = *(v326 - 40);
  v344 = *(v326 - 56);
  *__p = v337;
  *&__p[8] = v339;
  v345 = 1;
  *&__p[16] = v338;
  *&__p[24] = v340;
  do
  {
    v346 = v345;
    v347 = sub_19B94FF2C(__p, v341, v341);
    v345 = 0;
    v334 = v334 + v347;
    v341 = 1;
  }

  while ((v346 & 1) != 0);
  v348 = sub_19B8D8410(*(v326 - 52), v344, v330, sqrt(v334), v333, v332, *(a1 + 48), *(a1 + 56), v343, v342);
  objc_msgSend_addObject_(v554, v349, v348, v350);

  v353 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 160) - *(a1 + 152)) >> 4);
  if (v353 >= 2)
  {
    v395 = (v353 - 2);
    v396 = 0uLL;
    while (2)
    {
      v397 = 0;
      v398 = v395 + 1;
      v568 = v396;
      v569 = v396;
      v399 = *v17 + 80 * (v395 + 1);
      v400 = -*(v399 + 64);
      v574[0] = v396;
      v574[1] = v396;
      v401 = 1;
      do
      {
        v402 = v401;
        *__p = *(v399 + 48);
        if (*sub_19B94F084(__p, v397) <= 0.0)
        {
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
          }

          v540 = off_1ED519060;
          if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
          {
            *__p = 134217984;
            *&__p[4] = v397;
            _os_log_impl(&dword_19B873000, v540, OS_LOG_TYPE_DEBUG, "non-invertible matrix, D(%zu) <= 0 non-positive definite matrix!", __p, 0xCu);
          }

          v541 = sub_19B87DD40();
          if (*(v541 + 160) > 1 || *(v541 + 164) > 1 || *(v541 + 168) > 1 || *(v541 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1ED519058 != -1)
            {
              dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
            }

            *v573 = 134217984;
            *&v573[4] = v397;
            v542 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, off_1ED519060, 2, "non-invertible matrix, D(%zu) <= 0 non-positive definite matrix!", v573, 12);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<double, 2>::inverse(CMMatrix<T, N> &) const [T = double, N = 2]", "CoreLocation: %s\n", v542);
            if (v542 != __p)
            {
              free(v542);
            }
          }

          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v543 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              *__p = 0;
              _os_log_impl(&dword_19B873000, v543, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] matrix inversion failed, returned false", __p, 2u);
            }

            v544 = sub_19B87DD40();
            if ((*(v544 + 160) & 0x80000000) == 0 || (*(v544 + 164) & 0x80000000) == 0 || (*(v544 + 168) & 0x80000000) == 0 || *(v544 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              LOWORD(v574[0]) = 0;
              v329 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[backPropagate] matrix inversion failed, returned false", v574, 2);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v329);
              goto LABEL_507;
            }
          }

          goto LABEL_509;
        }

        *__p = *(v399 + 48);
        v403 = *sub_19B94F084(__p, v397);
        v404 = sub_19B8D7BD0(v574, v397, v397);
        v401 = 0;
        *v404 = 1.0 / v403;
        v397 = 1;
      }

      while ((v402 & 1) != 0);
      v405 = v333;
      *__p = 0x3FF0000000000000;
      *&__p[8] = v400;
      *&__p[16] = xmmword_19BA8BCB0;
      v570 = xmmword_19BA8BCC0;
      v571 = v400;
      v572 = 1.0;
      *v573 = sub_19B94F70C(v574, &v570);
      *&v573[8] = v406;
      *&v573[16] = v407;
      *&v573[24] = v408;
      *&v568 = sub_19B94F70C(__p, v573);
      *(&v568 + 1) = v409;
      *&v569 = v410;
      *(&v569 + 1) = v411;
      v412 = *v17 + 80 * v395;
      memset(v573, 0, 32);
      if (*(v412 + 72) != 1)
      {
        v416 = *(v412 + 56);
        v417 = *(v412 + 64);
        *v573 = *(v412 + 48) + 0.0 + v417 * v416 * v417;
        *&v573[8] = v416 * v417 + 0.0;
        *&v573[16] = v417 * v416 + 0.0;
        *&v573[24] = v416 + 0.0;
        v559 = *(v412 + 8);
        v557 = *(v412 + 16);
LABEL_449:
        *&v570 = sub_19B94F70C(v573, &v568);
        *(&v570 + 1) = v418;
        v571 = v419;
        v572 = v420;
        *&v576 = v570;
        *(&v576 + 1) = v419;
        v577 = v418;
        v578 = v420;
        v421 = (*v17 + 80 * v398);
        v567[0] = sub_19B94F808(&v579, v421[6] + 0.0 + v421[8] * v421[7] * v421[8], v421[7] * v421[8] + 0.0, v421[8] * v421[7] + 0.0, v421[7] + 0.0);
        v567[1] = v422;
        v567[2] = v423;
        v567[3] = v424;
        v566[0] = sub_19B94F70C(&v570, v567);
        v566[1] = v425;
        v566[2] = v426;
        v566[3] = v427;
        v565[0] = sub_19B94F70C(v566, &v576);
        v565[1] = v428;
        v565[2] = v429;
        v565[3] = v430;
        v431 = sub_19B94F808(v565, *v573, *&v573[8], *&v573[16], *&v573[24]);
        v433 = v432;
        v435 = v434;
        v437 = v436;
        v438 = *v17 + 80 * v398;
        v439 = v332 - *(v438 + 16);
        v564[0] = v405 - *(v438 + 8);
        v564[1] = v439;
        v440 = sub_19B94F874(&v570, v564);
        v442 = v441;
        v443 = 0;
        v444 = *v412;
        v445 = *(v412 + 24);
        *&v579 = v431;
        *(&v579 + 1) = v433;
        v580 = v435;
        v581 = v437;
        v555 = *(v412 + 32);
        v552 = *(v412 + 40);
        *__p = v431;
        *&__p[8] = v433;
        v446 = 0.0;
        v447 = 1;
        *&__p[16] = v435;
        *&__p[24] = v437;
        do
        {
          v448 = v447;
          v449 = sub_19B94FF2C(__p, v443, v443);
          v447 = 0;
          v446 = v446 + v449;
          v443 = 1;
        }

        while ((v448 & 1) != 0);
        if (*&v579 < 0.0 || v581 < 0.0 || (v580 >= *(&v579 + 1) ? (v450 = v580 - *(&v579 + 1)) : (v450 = -(v580 - *(&v579 + 1))), v450 > 0.00100000005 || v446 <= 0.0))
        {
          v451 = 10.0;
          if (*a1 == 1)
          {
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            v452 = qword_1EAFE4760;
            if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
            {
              v453 = *v412;
              *__p = 134219008;
              *&__p[4] = v453;
              *&__p[12] = 2048;
              *&__p[14] = v579;
              *&__p[22] = 2048;
              *&__p[24] = v581;
              *&__p[32] = 2048;
              *&__p[34] = v580;
              v583 = 2048;
              v584 = *(&v579 + 1);
              _os_log_impl(&dword_19B873000, v452, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] updated covariance is not positive definite, reporting a default value. timestamp,%.2f,diagonals,%.2f,%.2f,off-diagonals,%.2f,%.2f.", __p, 0x34u);
            }

            v454 = sub_19B87DD40();
            if ((*(v454 + 160) & 0x80000000) == 0 || (*(v454 + 164) & 0x80000000) == 0 || (*(v454 + 168) & 0x80000000) == 0 || *(v454 + 152))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1EAFE4758 != -1)
              {
                dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
              }

              v455 = *v412;
              LODWORD(v574[0]) = 134219008;
              *(v574 + 4) = v455;
              WORD6(v574[0]) = 2048;
              *(v574 + 14) = v579;
              WORD3(v574[1]) = 2048;
              *(&v574[1] + 1) = v581;
              *v575 = 2048;
              *&v575[2] = v580;
              *&v575[10] = 2048;
              *&v575[12] = *(&v579 + 1);
              v456 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[backPropagate] updated covariance is not positive definite, reporting a default value. timestamp,%.2f,diagonals,%.2f,%.2f,off-diagonals,%.2f,%.2f.", v574, 52);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v456);
              if (v456 != __p)
              {
                free(v456);
              }
            }
          }
        }

        else
        {
          v451 = sqrt(v446);
        }

        v332 = v557 + v442;
        v457 = v451;
        v333 = v559 + v440;
        v458 = sub_19B8D8410(*(v412 + 28), v445, v444, v457, v559 + v440, v332, *(a1 + 48), *(a1 + 56), v555, v552);
        Object = objc_msgSend_lastObject(v554, v459, v460, v461);
        objc_msgSend_latitude(v458, v463, v464, v465);
        v467 = v466;
        objc_msgSend_longitude(v458, v468, v469, v470);
        v472 = v471;
        objc_msgSend_latitude(Object, v473, v474, v475);
        v477 = v476;
        objc_msgSend_longitude(Object, v478, v479, v480);
        v482 = sub_19BA0C44C((a1 + 8), v467, v472, v477, v481);
        objc_msgSend_setCourse_(Object, v483, v484, v485, v482);
        objc_msgSend_course(Object, v486, v487, v488);
        v493 = v492 <= 0.0;
        v494 = -1.0;
        if (!v493)
        {
          v494 = 10.0;
        }

        objc_msgSend_setCourseAccuracy_(Object, v489, v490, v491, v494);
        objc_msgSend_latitude(v458, v495, v496, v497);
        v499 = v498;
        objc_msgSend_longitude(v458, v500, v501, v502);
        v504 = v503;
        objc_msgSend_latitude(Object, v505, v506, v507);
        v509 = v508;
        objc_msgSend_longitude(Object, v510, v511, v512);
        sub_19BA0C01C((a1 + 8), v499, v504, v509, v513, 0.0);
        v515 = v514;
        v519 = objc_msgSend_timestamp(Object, v516, v517, v518);
        v523 = objc_msgSend_timestamp(v458, v520, v521, v522);
        objc_msgSend_timeIntervalSinceDate_(v519, v524, v523, v525);
        if (v529 > 0.0)
        {
          objc_msgSend_setSpeed_(v458, v526, v527, v528, v515 / v529);
          objc_msgSend_speed(v458, v530, v531, v532);
          v537 = v536;
          v538 = -1.0;
          if (v537 >= 0.0)
          {
            objc_msgSend_speed(v458, v533, v534, v535, -1.0);
            v493 = v539 > 10.0;
            v538 = 0.3;
            if (v493)
            {
              v538 = -1.0;
            }
          }

          objc_msgSend_setSpeedAccuracy_(v458, v533, v534, v535, v538);
        }

        objc_msgSend_addObject_(v554, v526, v458, v528);

        v493 = v395-- < 1;
        v396 = 0uLL;
        if (v493)
        {
          goto LABEL_312;
        }

        continue;
      }

      break;
    }

    v413 = sub_19B950ADC(v562[0], v562[1], *v412);
    if (v413)
    {
      v559 = v413[3];
      v557 = v413[4];
      v414 = v413[6];
      v415 = v413[7];
      *v573 = v413[5] + 0.0 + v414 * v415 * v415;
      *&v573[8] = v414 * v415 + 0.0;
      *&v573[16] = *&v573[8];
      *&v573[24] = v414 + 0.0;
      goto LABEL_449;
    }

    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v550 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v550, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[backPropagate] key during back propagation does not exist , returned false", __p, 2u);
      }

      v551 = sub_19B87DD40();
      if ((*(v551 + 160) & 0x80000000) == 0 || (*(v551 + 164) & 0x80000000) == 0 || (*(v551 + 168) & 0x80000000) == 0 || *(v551 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v574[0]) = 0;
        v329 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[backPropagate] key during back propagation does not exist , returned false", v574, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::backPropagate(const std::unordered_map<CFAbsoluteTime, PosterioriPositionEstimate> &, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v329);
        goto LABEL_507;
      }
    }

    goto LABEL_509;
  }

LABEL_312:
  if (*(a1 + 376) == 1)
  {
    if (*(a1 + 352))
    {
      if (*(a1 + 377) == 1)
      {
        sub_19B94E1C8(a1, a3, v554, v352);
        if (*a1 == 1)
        {
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v354 = qword_1EAFE4760;
          if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            _os_log_impl(&dword_19B873000, v354, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Open loop propagation for HEAD performed.", __p, 2u);
          }

          v355 = sub_19B87DD40();
          if (*(v355 + 160) > 1 || *(v355 + 164) > 1 || *(v355 + 168) > 1 || *(v355 + 152))
          {
            bzero(__p, 0x65CuLL);
            if (qword_1EAFE4758 != -1)
            {
              dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
            }

            LOWORD(v574[0]) = 0;
            v356 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLPedestrianRTSSmoother]:[runRTS] Open loop propagation for HEAD performed.", v574, 2);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v356);
            if (v356 != __p)
            {
              free(v356);
            }
          }
        }
      }
    }
  }

  objc_msgSend_sortUsingComparator_(v554, v351, &unk_1F0E6D590, v352);
  if (*a1 == 1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v359 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v359, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] reconstructedLocation array elements are now in ascending temporal order.", __p, 2u);
    }

    v360 = sub_19B87DD40();
    if (*(v360 + 160) > 1 || *(v360 + 164) > 1 || *(v360 + 168) > 1 || *(v360 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      LOWORD(v574[0]) = 0;
      v361 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLPedestrianRTSSmoother]:[runRTS] reconstructedLocation array elements are now in ascending temporal order.", v574, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v361);
      if (v361 != __p)
      {
        free(v361);
      }
    }
  }

  v362 = *(a1 + 328);
  v363 = objc_msgSend_objectAtIndex_(a3, v357, v362, v358);
  v367 = objc_msgSend_cfAbsTimestamp(v363, v364, v365, v366);
  objc_msgSend_timeIntervalSinceReferenceDate(v367, v368, v369, v370);
  if ((*(a1 + 232) & 1) == 0)
  {
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v548 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v548, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Last consumed measurement is still not initialized even after propagation loop.", __p, 2u);
      }

      v549 = sub_19B87DD40();
      if ((*(v549 + 160) & 0x80000000) == 0 || (*(v549 + 164) & 0x80000000) == 0 || (*(v549 + 168) & 0x80000000) == 0 || *(v549 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v574[0]) = 0;
        v325 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[runRTS] Returned false. Last consumed measurement is still not initialized even after propagation loop.", v574, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v325);
        goto LABEL_520;
      }
    }

    goto LABEL_522;
  }

  if (v372 > *(a1 + 176) && v362 < v553)
  {
    sub_19B94E7A8(a1, a3, v554, v371);
    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v373 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_19B873000, v373, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Open loop propagation for TAIL performed.", __p, 2u);
      }

      v374 = sub_19B87DD40();
      if (*(v374 + 160) > 1 || *(v374 + 164) > 1 || *(v374 + 168) > 1 || *(v374 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v574[0]) = 0;
        v375 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLPedestrianRTSSmoother]:[runRTS] Open loop propagation for TAIL performed.", v574, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v375);
        if (v375 != __p)
        {
          free(v375);
        }
      }
    }
  }

  if (*a1 == 1)
  {
    if (qword_1EAFE4758 != -1)
    {
      dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
    }

    v376 = qword_1EAFE4760;
    if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&dword_19B873000, v376, OS_LOG_TYPE_DEFAULT, "[CLPedestrianRTSSmoother]:[runRTS] Returned true. Pedestrian trajectory smoothing performed successfully.", __p, 2u);
    }

    v377 = sub_19B87DD40();
    if (*(v377 + 160) > 1 || *(v377 + 164) > 1 || *(v377 + 168) > 1 || *(v377 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      LOWORD(v574[0]) = 0;
      v378 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, qword_1EAFE4760, 0, "[CLPedestrianRTSSmoother]:[runRTS] Returned true. Pedestrian trajectory smoothing performed successfully.", v574, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLPedestrianRTSSmoother::runRTS(NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v378);
      if (v378 != __p)
      {
        free(v378);
      }
    }
  }

  v15 = 1;
LABEL_523:
  sub_19B94FA90(v562);
  return v15;
}