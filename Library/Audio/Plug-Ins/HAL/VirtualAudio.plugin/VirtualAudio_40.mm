uint64_t sub_3407C0(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void *sub_340880(void *a1, void *a2)
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

      v8 = v2[4];
      if (v4[4] < v8)
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
      }

      else
      {
        v9 = a1 + 1;
        if (v3)
        {
          v9 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = v3[4];
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return a1;
}

BOOL sub_340A14(void *a1, uint64_t a2)
{
  v20 = a1;
  v4 = (*(*a1 + 16))(a1);
  v21 = v4;
  v5 = sub_5544(11);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, a2);
        v7 = v19 >= 0 ? __p : __p[0];
        *buf = 136315906;
        v23 = "IAPManager.cpp";
        v24 = 1024;
        v25 = 213;
        v26 = 2048;
        v27 = a1;
        v28 = 2080;
        v29 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager[%p]::IsPortConnected(portType '%s')", buf, 0x26u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v8 = a1[14];
  v9 = a1 + 15;
  if (v8 != a1 + 15)
  {
    while (*(v8 + 7) != a2)
    {
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
      if (v11 == v9)
      {
        v8 = a1 + 15;
        break;
      }
    }
  }

  v13 = sub_5544(11);
  if (*(v13 + 8))
  {
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, a2);
        v15 = v19 >= 0 ? __p : __p[0];
        v16 = "false";
        v23 = "IAPManager.cpp";
        v24 = 1024;
        *buf = 136316162;
        if (v8 != v9)
        {
          v16 = "true";
        }

        v25 = 220;
        v26 = 2048;
        v27 = a1;
        v28 = 2080;
        v29 = v15;
        v30 = 2080;
        v31 = v16;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManagerIAPManager[%p]::SetIAPUpdateListener(portType '%s') returns %s", buf, 0x30u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
          if (!v4)
          {
            return v8 != v9;
          }

          goto LABEL_28;
        }
      }
    }
  }

  if (v4)
  {
LABEL_28:
    (*(*a1 + 24))(a1);
  }

  return v8 != v9;
}

void sub_340CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_224F4C(va);
  _Unwind_Resume(a1);
}

double sub_340D10(uint64_t a1, int *a2, int *a3, uint64_t a4, uint64_t a5)
{
  *&v12 = a4;
  *(&v12 + 1) = a5;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      sub_272380(&v12, v7 + 7);
      v8 = *(v7 + 1);
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
          v9 = *(v7 + 2);
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != a3);
  }

  *a1 = a3;
  result = *&v12;
  *(a1 + 8) = v12;
  return result;
}

void sub_340DA4(void *a1)
{
  v2 = sub_5544(11);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 136315650;
        *&v14[4] = "IAPManager.cpp";
        v15 = 1024;
        v16 = 476;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager::IAPVolumeControlSupportChangeListener(context %p)", v14, 0x1Cu);
      }
    }
  }

  v4 = sub_5544(11);
  v5 = sub_5544(39);
  v6 = 0;
  *v14 = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&v14[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_11;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_11:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 136315394;
    *&v14[4] = "IAPManager.cpp";
    v15 = 1024;
    v16 = 478;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Received callback from iapd for volume control support changed.", v14, 0x12u);
  }

  if (!a1)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *v14 = 136315394;
        *&v14[4] = "IAPManager.cpp";
        v15 = 1024;
        v16 = 480;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: iAP passed context as NULL.", v14, 0x12u);
      }
    }
  }

  sub_34103C(a1);
  v10 = sub_5544(11);
  if (*(v10 + 8))
  {
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 136315650;
        *&v14[4] = "IAPManager.cpp";
        v15 = 1024;
        v16 = 485;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager::IAPVolumeControlSupportChangeListener(context %p)", v14, 0x1Cu);
      }
    }
  }
}

void sub_34103C(void *a1)
{
  v2 = sub_5544(11);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 491;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager[%p]::HandleIAPStateChange()", buf, 0x1Cu);
      }
    }
  }

  v7 = a1;
  v4 = sub_68E60();
  if (dispatch_get_specific("VirtualAudioQueueKey") == "VirtualAudioQueueKey")
  {
    sub_33E824(a1);
  }

  else
  {
    v8 = &v7;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_3414B4;
    *&buf[24] = &unk_6C26D0;
    v10 = &v8;
    dispatch_sync(v4, buf);
  }

  v5 = sub_5544(11);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 497;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager[%p]::HandleIAPStateChange()", buf, 0x1Cu);
      }
    }
  }
}

void sub_341228(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v22[2]);
      p_p = __p;
      if (a15 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a17) = 2080;
      *(&a17 + 4) = p_p;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 35;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x341178);
  }

  v26 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v27 = v26;
    v28 = sub_5544(14);
    v29 = *v28;
    if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v30 = (*(*v27 + 16))(v27);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v30;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 35;
    v31 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v32 = v29;
    v33 = 44;
  }

  else
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a17) = 2080;
    *(&a17 + 4) = "";
    WORD6(a17) = 1024;
    *(&a17 + 14) = 35;
    v31 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v32 = v35;
    v33 = 34;
  }

  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v31, &buf, v33);
  goto LABEL_17;
}

void sub_34151C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v22[2]);
      p_p = __p;
      if (a15 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a17) = 2080;
      *(&a17 + 4) = p_p;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 47;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x3414ECLL);
  }

  v26 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v27 = v26;
    v28 = sub_5544(14);
    v29 = *v28;
    if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v30 = (*(*v27 + 16))(v27);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v30;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 47;
    v31 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v32 = v29;
    v33 = 44;
  }

  else
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (!*v34 || !os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a17) = 2080;
    *(&a17 + 4) = "";
    WORD6(a17) = 1024;
    *(&a17 + 14) = 47;
    v31 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v32 = v35;
    v33 = 34;
  }

  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v31, &buf, v33);
  goto LABEL_17;
}

void sub_3417A8(void *a1)
{
  v2 = sub_5544(11);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136315650;
        v11 = "IAPManager.cpp";
        v12 = 1024;
        v13 = 461;
        v14 = 2048;
        v15 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager::IAPStateChangeListener(context %p)", &v10, 0x1Cu);
      }
    }
  }

  v4 = sub_5544(11);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "IAPManager.cpp";
    v12 = 1024;
    v13 = 463;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d IAP executed the callback registered with IAPAudioRegisterDeviceStateChangedCallback().", &v10, 0x12u);
  }

  if (!a1)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "IAPManager.cpp";
        v12 = 1024;
        v13 = 465;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: iAP passed context as NULL.", &v10, 0x12u);
      }
    }
  }

  sub_34103C(a1);
  v6 = sub_5544(11);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136315650;
        v11 = "IAPManager.cpp";
        v12 = 1024;
        v13 = 470;
        v14 = 2048;
        v15 = a1;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager::IAPStateChangeListener(context %p)", &v10, 0x1Cu);
      }
    }
  }
}

uint64_t sub_3419E4()
{
  result = qword_6EAC30;
  if (!qword_6EAC30)
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "IAPManager.cpp";
        v6 = 1024;
        v7 = 153;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sIAPManager is NULL]: sIAPManager is NULL!", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sIAPManager is NULL!");
  }

  return result;
}

uint64_t sub_341B04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IAPManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 240;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inProc is NULL]: inProc is NULL.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inProc is NULL.");
  }

  v6 = a1 + 152;
  v7 = (*(*a1 + 16))(a1);
  *buf = a2;
  *&buf[8] = a3;
  result = sub_341D90(v6, a2, buf);
  if ((result & 1) == 0)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IAPManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 246;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to add a listener for which the proc has already been added.", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "Attempt to add a listener for which the proc has already been added.");
  }

  if (v7)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

void sub_341D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_224F4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_341D90(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return 0;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_341E40(uint64_t **a1, unint64_t a2)
{
  if (!a2)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "IAPManager.cpp";
      v15 = 1024;
      v16 = 252;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inProc is NULL]: inProc is NULL.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inProc is NULL.");
  }

  v4 = a1 + 19;
  v5 = ((*a1)[2])(a1);
  result = sub_3420B4(v4, a2);
  if (!result)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "IAPManager.cpp";
      v15 = 1024;
      v16 = 257;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to remove a listener that does not exist in mPortConnectionListenerMap.", buf, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "Attempt to remove a listener that does not exist in mPortConnectionListenerMap.");
  }

  if (v5)
  {
    return ((*a1)[3])(a1);
  }

  return result;
}

void sub_342064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_224F4C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_3420B4(uint64_t **a1, unint64_t a2)
{
  v4 = a1 + 1;
  result = a1[1];
  if (result)
  {
    v5 = v4;
    v6 = result;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 == v4 || v5[4] > a2)
    {
      return 0;
    }

    else
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_75234(result, v5);
      operator delete(v5);
      return (&dword_0 + 1);
    }
  }

  return result;
}

void sub_342180(void *a1, int a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IAPManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 263;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inProc is NULL]: inProc is NULL.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inProc is NULL.");
  }

  v24 = a1;
  v8 = (*(*a1 + 16))(a1);
  v25 = v8;
  v11 = a1[23];
  v10 = a1 + 23;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v10;
  do
  {
    if (*(v9 + 32) >= a2)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < a2));
  }

  while (v9);
  if (v12 != v10 && *(v12 + 8) <= a2)
  {
    *buf = a3;
    *&buf[8] = a4;
    if ((sub_341D90((v12 + 5), a3, buf) & 1) == 0)
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19)
      {
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "IAPManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 271;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to add a listener for which the proc has already been added.", buf, 0x12u);
        }
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v21, "Attempt to add a listener for which the proc has already been added.");
    }

    if (v25)
    {
LABEL_17:
      (*(*v24 + 24))(v24);
    }
  }

  else
  {
LABEL_9:
    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    *buf = a3;
    *&buf[8] = a4;
    sub_341D90(&v22, a3, buf);
    *buf = a2;
    sub_340880(&buf[8], &v22);
    v13 = *v10;
    if (!*v10)
    {
LABEL_15:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 32);
        if (*buf >= v15)
        {
          break;
        }

        v13 = *v14;
        if (!*v14)
        {
          goto LABEL_15;
        }
      }

      if (v15 >= *buf)
      {
        break;
      }

      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    sub_477A0(*&buf[16]);
    sub_477A0(v23[0]);
    if (v8)
    {
      goto LABEL_17;
    }
  }
}

void sub_3424F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_224F4C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_342570(void *a1, int a2, unint64_t a3)
{
  if (!a3)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "IAPManager.cpp";
      v22 = 1024;
      v23 = 284;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inProc is NULL]: inProc is NULL.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inProc is NULL.");
  }

  v6 = (*(*a1 + 16))(a1);
  v7 = a1[23];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v6;
  v9 = a1 + 23;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v9 == a1 + 23 || *(v9 + 8) > a2)
  {
LABEL_17:
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "IAPManager.cpp";
      v22 = 1024;
      v23 = 289;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to remove a listener for an IAPPortType that has never received a listener.", buf, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "Attempt to remove a listener for an IAPPortType that has never received a listener.");
  }

  result = sub_3420B4(v9 + 5, a3);
  if (!result)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "IAPManager.cpp";
      v22 = 1024;
      v23 = 291;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to remove a listener that does not exist in mVolumeSupportListenerMap.", buf, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "Attempt to remove a listener that does not exist in mVolumeSupportListenerMap.");
  }

  if (v8)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

void sub_342878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_224F4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3428D4(uint64_t a1)
{
  v2 = sub_5544(11);
  v3 = sub_5544(39);
  v4 = 0;
  *v10 = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&v10[v4];
    if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
    {
      break;
    }

    v4 += 4;
    if (v4 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_7:
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 136);
    *v10 = 136315650;
    *&v10[4] = "IAPManager.cpp";
    v11 = 1024;
    v12 = 317;
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get volume control support value of %u. Value is cached -- did not call iapd.", v10, 0x18u);
  }

  return *(a1 + 136);
}

float sub_342A00(float *a1)
{
  v2 = sub_5544(11);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "IAPManager.cpp";
        v18 = 1024;
        v19 = 324;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager::GetVolume()", buf, 0x12u);
      }
    }
  }

  v4 = (*(*a1 + 16))(a1);
  v5 = sub_5544(11);
  v6 = sub_5544(39);
  v7 = 0;
  *buf = 0x100000002;
  v8 = *(v5 + 8);
  while (1)
  {
    v9 = *&buf[v7];
    if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
    {
      break;
    }

    v7 += 4;
    if (v7 == 8)
    {
      goto LABEL_11;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

LABEL_11:
  v10 = *v5;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[35];
    *buf = 136315650;
    *&buf[4] = "IAPManager.cpp";
    v18 = 1024;
    v19 = 328;
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get volume value of %f (cached).", buf, 0x1Cu);
  }

  v12 = sub_5544(11);
  if (*(v12 + 8))
  {
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = a1[35];
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        v18 = 1024;
        v19 = 330;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager::GetVolume() returned %f", buf, 0x1Cu);
      }
    }
  }

  v15 = a1[35];
  if (v4)
  {
    (*(*a1 + 24))(a1);
  }

  return v15;
}

void sub_342CA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_342CD8(uint64_t a1, float a2)
{
  v4 = sub_5544(11);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        v26 = 1024;
        v27 = 338;
        v28 = 2048;
        v29 = a2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d + IAPManager::SetVolume(inVolume: %f)", buf, 0x1Cu);
      }
    }
  }

  if (sub_343174(a1))
  {
    v6 = sub_5544(11);
    v7 = sub_5544(39);
    v8 = 0;
    *buf = 0x100000002;
    v9 = *(v6 + 8);
    while (1)
    {
      v10 = *&buf[v8];
      if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
      {
        break;
      }

      v8 += 4;
      if (v8 == 8)
      {
        goto LABEL_16;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_16:
    v17 = *v6;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "IAPManager.cpp";
      v26 = 1024;
      v27 = 348;
      v28 = 2048;
      v29 = a2;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring call to set volume value of %f on iapd (muted).", buf, 0x1Cu);
    }
  }

  else
  {
    v11 = IAPAudioSetVolumeForTransport();
    v12 = sub_5544(11);
    v13 = sub_5544(39);
    v14 = 0;
    *buf = 0x100000002;
    v15 = *(v12 + 8);
    while (1)
    {
      v16 = *&buf[v14];
      if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
      {
        break;
      }

      v14 += 4;
      if (v14 == 8)
      {
        goto LABEL_21;
      }
    }

    if ((v15 & v16) == 0)
    {
      v12 = v13;
    }

LABEL_21:
    v18 = *v12;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "IAPManager.cpp";
      v26 = 1024;
      v27 = 343;
      v28 = 2048;
      v29 = a2;
      v30 = 1024;
      v31 = v11;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set volume value of %f on iapd (status: %u).", buf, 0x22u);
    }

    if (v11 != 1)
    {
      v22 = sub_5544(14);
      v23 = *v22;
      if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "IAPManager.cpp";
        v26 = 1024;
        v27 = 344;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): IAPAudioSetVolumeForTransport() returned FALSE.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "IAPAudioSetVolumeForTransport() returned FALSE.");
    }
  }

  v19 = (*(*a1 + 16))(a1);
  *(a1 + 140) = a2;
  v20 = sub_5544(11);
  if (*(v20 + 8))
  {
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "IAPManager.cpp";
        v26 = 1024;
        v27 = 354;
        v28 = 2048;
        v29 = a2;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d - IAPManager::SetVolume(inVolume: %f)", buf, 0x1Cu);
      }
    }
  }

  if (v19)
  {
    (*(*a1 + 24))(a1);
  }
}

uint64_t sub_343174(unsigned __int8 *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = sub_5544(11);
  v4 = sub_5544(39);
  v5 = 0;
  *buf = 0x100000002;
  v6 = *(v3 + 8);
  while (1)
  {
    v7 = *&buf[v5];
    if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
    {
      break;
    }

    v5 += 4;
    if (v5 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v6 & v7) == 0)
  {
    v3 = v4;
  }

LABEL_7:
  v8 = *v3;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[144];
    *buf = 136315650;
    *&buf[4] = "IAPManager.cpp";
    v13 = 1024;
    v14 = 362;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get mute value of %u (cached).", buf, 0x18u);
  }

  v10 = a1[144];
  if (v2)
  {
    (*(*a1 + 24))(a1);
  }

  return v10;
}

void sub_343308(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_34332C(uint64_t a1, int a2)
{
  if (sub_343174(a1) == a2)
  {
    v11 = sub_5544(11);
    v12 = sub_5544(39);
    v13 = 0;
    *v19 = 0x100000002;
    v14 = *(v11 + 8);
    while (1)
    {
      v15 = *&v19[v13];
      if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
      {
        break;
      }

      v13 += 4;
      if (v13 == 8)
      {
        goto LABEL_21;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_21:
    v18 = *v11;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315394;
      *&v19[4] = "IAPManager.cpp";
      v20 = 1024;
      v21 = 381;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring call to set mute (cached value identical to parameter value).", v19, 0x12u);
    }
  }

  else
  {
    v4 = 0.0;
    if ((a2 & 1) == 0)
    {
      v4 = sub_342A00(a1);
    }

    v5 = IAPAudioSetVolumeForTransport();
    v6 = sub_5544(11);
    v7 = sub_5544(39);
    v8 = 0;
    *v19 = 0x100000002;
    v9 = *(v6 + 8);
    while (1)
    {
      v10 = *&v19[v8];
      if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
      {
        break;
      }

      v8 += 4;
      if (v8 == 8)
      {
        goto LABEL_14;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_14:
    v16 = *v6;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136316162;
      *&v19[4] = "IAPManager.cpp";
      v20 = 1024;
      v21 = 374;
      v22 = 1024;
      v23 = a2;
      v24 = 2048;
      v25 = v4;
      v26 = 1024;
      v27 = v5;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set mute value of %u. Set volume value of %f on iapd (status: %u).", v19, 0x28u);
    }

    v17 = (*(*a1 + 16))(a1);
    *(a1 + 144) = a2;
    if (v17)
    {
      (*(*a1 + 24))(a1);
    }
  }
}

void sub_3435D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_3435DC(uint64_t a1)
{
  v1 = a1;
  v2 = sub_5544(11);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315650;
        v9 = "IAPManager.cpp";
        v10 = 1024;
        v11 = 388;
        v12 = 1024;
        v13 = v1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d +- IAPManager::SetSampleRateForUSB(inSampleRate: %u)", &v8, 0x18u);
      }
    }
  }

  v4 = IAPDigitalAudioSetSampleRate();
  v5 = sub_5544(11);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "IAPManager.cpp";
    v10 = 1024;
    v11 = 391;
    v12 = 1024;
    v13 = v1;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d IAPDigitalAudioSetSampleRate(%u) returned status %u.", &v8, 0x1Eu);
  }

  return v4 == 1;
}

uint64_t sub_343744(uint64_t a1)
{
  v2 = sub_5544(11);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v19 = "IAPManager.cpp";
        v20 = 1024;
        v21 = 408;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d +- IAPManager::GetSupportedSampleRatesForUSB()", buf, 0x12u);
      }
    }
  }

  v4 = sub_5544(11);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "IAPManager.cpp";
    v20 = 1024;
    v21 = 410;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling IAPDigitalAudioCopySupportSampleRates().", buf, 0x12u);
  }

  v6 = IAPDigitalAudioCopySupportSampleRates();
  v16 = v6;
  v17 = 1;
  if (!v6 || (Count = CFArrayGetCount(v6)) == 0)
  {
LABEL_16:
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "IAPManager.cpp";
        v20 = 1024;
        v21 = 432;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to find a sample rate!", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find a sample rate!");
  }

  v8 = 0;
  v9 = 0;
  do
  {
    *buf = 0;
    sub_2E4528(&v16, v8, buf);
    if (*buf == 44100)
    {
      v9 = 44100;
      goto LABEL_21;
    }

    if (v9 <= *buf)
    {
      v9 = *buf;
    }

    ++v8;
  }

  while (Count != v8);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_21:
  v13 = sub_5544(11);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v19 = "IAPManager.cpp";
    v20 = 1024;
    v21 = 433;
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning sample rate: %u", buf, 0x18u);
  }

  *a1 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  *(a1 + 8) = 257;
  sub_A072C(a1, v9);
  return sub_A0804(&v16);
}

void sub_343A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_A0804(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_343A8C(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (1)
  {
    v2 = *a1;
    if (!*(*a1 + 4) && *v2 == 1986291046)
    {
      break;
    }

    if (++a1 == a2)
    {
      return 0;
    }
  }

  v6[0] = off_6C2840;
  v6[3] = v6;
  sub_9C674(v5, (v2 + 16), v6);
  sub_85148(v6);
  v3 = v5[2] != 0;
  sub_4B0F4(v5[1]);
  return v3;
}

void sub_343B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_85148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_343B7C(uint64_t a1, uint64_t a2)
{
  sub_53E8(__p, "kBluetoothAudioDeviceFeatureSiriUseDeviceMic");
  v3 = sub_34CF08(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

BOOL sub_343C60(void *a1, void *a2, char a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *a1;
    if (**a1 == 1986291046)
    {
      break;
    }

    if (++a1 == a2)
    {
      return 0;
    }
  }

  v7 = off_6C2888;
  v8 = a3;
  v9 = &v7;
  sub_9C674(v6, v3 + 2, &v7);
  sub_85148(&v7);
  v4 = v6[2] != 0;
  sub_4B0F4(v6[1]);
  return v4;
}

void sub_343D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_85148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_343D4C(uint64_t a1, _DWORD *a2)
{
  result = sub_346CF8(a2);
  if (result)
  {
    if (*(a1 + 8) == 1)
    {
      result = sub_346E54(a2);
      if (result)
      {
        if (a2[36] == 1885892674)
        {
          v5 = *(*a2 + 392);

          return v5(a2);
        }

        else
        {

          return sub_34B0F0(a2);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_343E1C(uint64_t result, uint64_t a2)
{
  *a2 = off_6C2888;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL sub_343EB8(int a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *a2;
    if (!*(*a2 + 4) && *v4 == 1986291046)
    {
      break;
    }

    if (++a2 == a3)
    {
      return 0;
    }
  }

  v7 = (v4 + 16);
  v8 = *(v4 + 24);
  if (v8 == (v4 + 16))
  {
    return 0;
  }

  do
  {
    sub_25704(&v15, v8 + 2, "", 978);
    v9 = (*(*v15 + 112))(v15);
    if ((v9 & 0x100000000) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1701868910;
    }

    if (v10 == a1)
    {
      v5 = 1;
    }

    else
    {
      sub_25704(&v13, v8 + 4, "", 980);
      v11 = (*(*v13 + 112))(v13);
      if ((v11 & 0x100000000) != 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1701868910;
      }

      v5 = v12 == a1;
      if (v14)
      {
        sub_1A8C0(v14);
      }
    }

    if (v16)
    {
      sub_1A8C0(v16);
    }

    if (v5)
    {
      break;
    }

    v8 = v8[1];
  }

  while (v8 != v7);
  return v5;
}

void sub_344018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3442BC(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1;
  do
  {
    v4 = *v3;
    if (!*(*v3 + 4) && *v4 == 1986291046)
    {
      v5 = v4 + 16;
      for (i = *(v4 + 24); i != v5; i = *(i + 8))
      {
        if (sub_A2BE8(i + 16))
        {
          return 1;
        }
      }
    }

    ++v3;
  }

  while (v3 != a2);
  return 0;
}

BOOL sub_344360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    while (*(*a2 + 4) || **a2 != 1986291046)
    {
      a2 += 8;
      if (a2 == a3)
      {
        return 0;
      }
    }
  }

  if (a2 == a3)
  {
    return 0;
  }

  v4 = *a2 + 16;
  v5 = *(*a2 + 24);
  if (v5 == v4)
  {
    return 0;
  }

  do
  {
    result = sub_10A9EC(a1, (v5 + 16));
    if (result)
    {
      break;
    }

    v5 = *(v5 + 8);
  }

  while (v5 != v4);
  return result;
}

uint64_t sub_344400(void *a1, uint64_t a2)
{
  v3 = a1[138];
  if (v3 >= a1[139])
  {
    result = sub_344844(a1 + 137, a2);
  }

  else
  {
    sub_3447C8(a1[138], a2);
    result = v3 + 144;
    a1[138] = v3 + 144;
  }

  a1[138] = result;
  return result;
}

uint64_t sub_344458(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "ID");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_3444F8(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1DC860(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_34452C(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "data");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_344578(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "cfobject");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_3445C4(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "cfobject");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_344610(uint64_t a1)
{
  if (*(a1 + 148) != 1885544823)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 200);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 192);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v3 = std::__shared_weak_count::lock(v1);
  std::__shared_weak_count::__release_weak(v1);
  if (!v3)
  {
    goto LABEL_7;
  }

  if (!v2 || (v14 = (*(*v2 + 120))(v2), strcpy(&buf, "diabbolg"), BYTE1(buf.mElement) = 0, HIWORD(buf.mElement) = 0, v4 = sub_542F0(&v14, &buf, 0, 0), *(&v7 + 1) = v5, *&v7 = v4, v6 = v7 >> 32, (v6 & 0x100000000) == 0))
  {
    sub_1A8C0(v3);
LABEL_7:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    return v9 | v8 | v10;
  }

  v12 = sub_5544(25);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    buf.mSelector = 136315650;
    *&buf.mScope = "RouteUtilities.cpp";
    v16 = 1024;
    v17 = 203;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth Headset Type: %u", &buf, 0x18u);
  }

  v10 = v6 & 0xFFFFFF00;
  sub_1A8C0(v3);
  v9 = v6;
  v8 = 0x100000000;
  return v9 | v8 | v10;
}

uint64_t sub_3447C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = sub_2CCB20(a1 + 16, a2 + 16);
  *(a1 + 104) = *(a2 + 104);
  if (*(a2 + 135) < 0)
  {
    result = sub_54A0((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v5 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v5;
  }

  *(a1 + 136) = *(a2 + 136);
  return result;
}

uint64_t sub_344844(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_189A00();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    sub_344984(v5);
  }

  v12 = 0;
  v13 = 144 * v2;
  sub_3447C8(144 * v2, a2);
  v14 = 144 * v2 + 144;
  v6 = a1[1];
  v7 = 144 * v2 + *a1 - v6;
  sub_3449E0(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_344A8C(&v12);
  return v11;
}

void sub_344970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_344A8C(va);
  _Unwind_Resume(a1);
}

void sub_344984(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_3449E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = result;
    do
    {
      sub_3447C8(a3, v6);
      v6 += 144;
      a3 += 144;
      v5 -= 144;
    }

    while (v6 != a2);
    do
    {
      result = sub_2C9A90(v4);
      v4 += 144;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_344A8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_2C9A90(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_344ADC(uint64_t a1, uint64_t a2, int a3, __int128 *a4, uint64_t a5)
{
  *a1 = a2;
  sub_2CCB20(a1 + 16, a5 + 8);
  *(a1 + 104) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_54A0((a1 + 112), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 128) = *(a4 + 2);
    *(a1 + 112) = v8;
  }

  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  return a1;
}

uint64_t sub_344B64(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_DD7C4(a1 + 16);
  return a1;
}

void sub_344BA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 88);
    v5 = **(v1 + 80);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 174;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_344CB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_12AFB0(&v10, a2);
  if (v12)
  {
    v3 = *(v11 + 16);
    v4 = *(v11 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(v2 + 48);
    *buf = &v10;
    *&buf[8] = v5;
    v15 = &v10;
    v16 = v5;
    v6 = *(v2 + 56);
    *&buf[16] = v6;
    v17 = v6;
    v18 = &v10;
    v19 = v5;
    v20 = v6;
    v7 = *(v3 + 40);
    if (v7 == -1)
    {
      sub_20B4EC();
    }

    v13 = buf;
    (off_6C2748[v7])(&v13);
    if (v4)
    {
      sub_1A8C0(v4);
    }
  }

  else
  {
    v8 = sub_5544(25);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RouteUtilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 165;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property list is empty.", buf, 0x12u);
    }
  }

  sub_87980(&v10);
}

void sub_344E38(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_344F4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_345060(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_345174(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_129D90(__p, a2);
  v3 = *(v2 + 48);
  v4 = *(v3 + 8);
  if (v4 != v3)
  {
    v5 = *(v2 + 56);
    do
    {
      v6 = *(v4 + 16);
      if (*(v6 + 40) != 7)
      {
        sub_20B4EC();
      }

      sub_EEB58(*(v6 + 16), v5);
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
  }

  sub_EF820(__p[2]);
  v7 = __p[0];
  __p[0] = 0;
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_345208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

void sub_345220(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_345334(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_345448(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_34555C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_345670(uint64_t a1)
{
  v2 = *(*a1 + 24);
  v1 = *(*a1 + 32);
  v3 = **(*a1 + 40);
  v28[0] = off_6C27F8;
  v29 = v28;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v4 = v2[1];
  if (v4 != v2)
  {
    do
    {
      v5 = v4[3];
      *v30 = v4[2];
      *&v30[8] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v29)
      {
        sub_46A74();
      }

      (*(*v29 + 48))(v29, v30, &v23);
      if (*&v30[8])
      {
        sub_1A8C0(*&v30[8]);
      }

      v4 = v4[1];
    }

    while (v4 != v2);
    v4 = v2[1];
  }

  v19 = v1;
  sub_53E8(__p, "valuelist: ");
  for (; v4 != v2; v4 = v4[1])
  {
    v27 = __p[2];
    *v26 = *__p;
    memset(__p, 0, sizeof(__p));
    v6 = v4[2];
    v7 = v4[3];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1257B8(v30, v6);
    if (SHIBYTE(v27) >= 0)
    {
      v8 = v26;
    }

    else
    {
      v8 = v26[0];
    }

    if (SHIBYTE(v27) >= 0)
    {
      v9 = HIBYTE(v27);
    }

    else
    {
      v9 = v26[1];
    }

    v10 = std::string::insert(v30, 0, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[0];
    v33[0] = v10->__r_.__value_.__l.__size_;
    *(v33 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((v30[23] & 0x80000000) != 0)
    {
      operator delete(*v30);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = v11;
    __p[1] = v33[0];
    *(&__p[1] + 7) = *(v33 + 7);
    HIBYTE(__p[2]) = v12;
    if (v7)
    {
      sub_1A8C0(v7);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  *v21 = *__p;
  v22 = __p[2];
  memset(__p, 0, sizeof(__p));
  v13 = sub_5544(25);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    if (v3 > 7)
    {
      v15 = "unknown";
    }

    else
    {
      v15 = off_6BD200[v3];
    }

    sub_53E8(v26, v15);
    if (SHIBYTE(v27) >= 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    v17 = v21;
    if (SHIBYTE(v22) < 0)
    {
      v17 = v21[0];
    }

    *v30 = 136315906;
    *&v30[4] = "RouteUtilities.cpp";
    *&v30[12] = 1024;
    *&v30[14] = 108;
    *&v30[18] = 2080;
    *&v30[20] = v16;
    v31 = 2080;
    v32 = v17;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting property %s = %s", v30, 0x26u);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  (*(*v19 + 56))(v19, v3);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return sub_345A9C(v28);
}

void sub_3459F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_345A9C(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_345A9C(uint64_t a1)
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

void sub_345B1C(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5[10] != 2)
  {
    sub_20B4EC();
  }

  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (v7 >= v6)
  {
    v9 = *a3;
    v10 = v7 - *a3;
    v11 = (v10 >> 2) + 1;
    if (v11 >> 62)
    {
      sub_189A00();
    }

    v12 = v6 - v9;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1D7C28(v13);
    }

    v14 = (4 * (v10 >> 2));
    *v14 = *v5;
    v8 = v14 + 1;
    memcpy(0, v9, v10);
    v15 = *a3;
    *a3 = 0;
    *(a3 + 8) = v8;
    *(a3 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = *v5;
    v8 = v7 + 1;
  }

  *(a3 + 8) = v8;
  if (v4)
  {

    sub_1A8C0(v4);
  }
}

void sub_345C50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_345CF0(void **a1)
{
  v2 = **a1;
  v1 = (*a1)[1];
  v3 = *(*a1)[2];
  v28[0] = off_6C27B0;
  v29 = v28;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v4 = v2[1];
  if (v4 != v2)
  {
    do
    {
      v5 = v4[3];
      *v30 = v4[2];
      *&v30[8] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v29)
      {
        sub_46A74();
      }

      (*(*v29 + 48))(v29, v30, &v23);
      if (*&v30[8])
      {
        sub_1A8C0(*&v30[8]);
      }

      v4 = v4[1];
    }

    while (v4 != v2);
    v4 = v2[1];
  }

  v19 = v1;
  sub_53E8(__p, "valuelist: ");
  for (; v4 != v2; v4 = v4[1])
  {
    v27 = __p[2];
    *v26 = *__p;
    memset(__p, 0, sizeof(__p));
    v6 = v4[2];
    v7 = v4[3];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1257B8(v30, v6);
    if (SHIBYTE(v27) >= 0)
    {
      v8 = v26;
    }

    else
    {
      v8 = v26[0];
    }

    if (SHIBYTE(v27) >= 0)
    {
      v9 = HIBYTE(v27);
    }

    else
    {
      v9 = v26[1];
    }

    v10 = std::string::insert(v30, 0, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[0];
    v33[0] = v10->__r_.__value_.__l.__size_;
    *(v33 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((v30[23] & 0x80000000) != 0)
    {
      operator delete(*v30);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = v11;
    __p[1] = v33[0];
    *(&__p[1] + 7) = *(v33 + 7);
    HIBYTE(__p[2]) = v12;
    if (v7)
    {
      sub_1A8C0(v7);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  *v21 = *__p;
  v22 = __p[2];
  memset(__p, 0, sizeof(__p));
  v13 = sub_5544(25);
  v14 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    if (v3 > 7)
    {
      v15 = "unknown";
    }

    else
    {
      v15 = off_6BD200[v3];
    }

    sub_53E8(v26, v15);
    if (SHIBYTE(v27) >= 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    v17 = v21;
    if (SHIBYTE(v22) < 0)
    {
      v17 = v21[0];
    }

    *v30 = 136315906;
    *&v30[4] = "RouteUtilities.cpp";
    *&v30[12] = 1024;
    *&v30[14] = 108;
    *&v30[18] = 2080;
    *&v30[20] = v16;
    v31 = 2080;
    v32 = v17;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting property %s = %s", v30, 0x26u);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  (*(*v19 + 56))(v19, v3);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return sub_34611C(v28);
}

void sub_346078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_34611C(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_34611C(uint64_t a1)
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

void sub_34619C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4[10] != 1)
  {
    sub_20B4EC();
  }

  sub_AFD28(a3, v4);
  if (v5)
  {

    sub_1A8C0(v5);
  }
}

void sub_346214(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3462B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 159;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_3463C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 88);
    v5 = **(v1 + 80);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 174;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_3464DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 88);
    v5 = **(v1 + 80);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 174;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_3465F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 88);
    v5 = **(v1 + 80);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 174;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_346704(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 88);
    v5 = **(v1 + 80);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 174;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_346818(unsigned int ***a1, int *a2)
{
  v2 = *a1;
  v4 = *a2;
  return (*(**v2 + 56))(*v2, *v2[1], &v4, 4, 0, 0);
}

void sub_34687C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(v1 + 88);
    v5 = **(v1 + 80);
    sub_129E80(__p, *v4);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315906;
    v10 = "RouteUtilities.cpp";
    v11 = 1024;
    v12 = 174;
    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP property ID (%d) has an unsupported type: %s", buf, 0x22u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_346990(uint64_t a1, char *a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_53E8((a1 + 24), a2);
  *(a1 + 48) = a3;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return a1;
}

void sub_3469F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2B20B4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_346A08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2B1E18(v2);
    operator delete();
  }

  return a1;
}

void sub_346A50(void *a1, uint64_t a2, const void **a3, char *__s, uint64_t a5)
{
  if (*(a3 + 23) >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  v11 = strlen(__s);
  v12 = &v15;
  sub_B0848(&v15, v10 + v11);
  if ((v15.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v15.__pn_.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    memmove(v12, v13, v10);
  }

  if (v11)
  {
    memmove(v12 + v10, __s, v11);
  }

  v12->__pn_.__r_.__value_.__s.__data_[v10 + v11] = 0;
  __p = v15;
  memset(&v15, 0, sizeof(v15));
  sub_1E1AC0(&__dst, a2, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_54A0(&__p, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  sub_EE47C(&v15, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  v14 = v15.__pn_.__r_.__value_.__r.__words[0];
  __p.__pn_.__r_.__value_.__r.__words[0] = v15.__pn_.__r_.__value_.__r.__words[0];
  (*(**a1 + 56))(*a1, a5, &__p, 8, 0, 0);
  if (v14)
  {
    CFRelease(v14);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_346C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_346C5C(int a1, uint64_t a2)
{
  v3 = a2;
  if (*(a2 + 8) != a2)
  {
    v3 = *(a2 + 8);
    while (1)
    {
      sub_88A00(&v7, (v3 + 16), "", 618);
      v5 = *(v7 + 144);
      if (v8)
      {
        sub_1A8C0(v8);
      }

      if (v5 == a1)
      {
        break;
      }

      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        v3 = a2;
        return v3 != a2;
      }
    }
  }

  return v3 != a2;
}

BOOL sub_346CF8(void *a1)
{
  if (!sub_346E54(a1))
  {
    return 0;
  }

  v2 = a1[24];
  v3 = a1[25];
  v7[0] = v2;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v8, v7, "", 752);
  v4 = v8;
  v12 = 0x676C6F6269616170;
  v13 = 0;
  if ((*(*v8 + 16))(v8, &v12))
  {
    v10 = 4;
    v11 = 0;
    v12 = 0x676C6F6269616170;
    v13 = 0;
    (*(*v4 + 40))(v4, &v12, 0, 0, &v10, &v11);
    v5 = v11 != 0;
  }

  else
  {
    v5 = 0;
  }

  if (v9)
  {
    sub_1A8C0(v9);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return v5;
}

void sub_346E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_346E54(void *a1)
{
  v1 = a1[25];
  if (!v1)
  {
    return 0;
  }

  v3 = a1[24];
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v4 = std::__shared_weak_count::lock(v1);
  if (v4)
  {
    v5 = v4;
    if (v3)
    {
      v6 = (*(*a1 + 152))(a1);
    }

    else
    {
      v6 = 0;
    }

    sub_1A8C0(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_weak(v1);
  return v6;
}

void sub_346F00(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *sub_346F1C(uint64_t a1, int a2, float *a3)
{
  *a3 = 100.0;
  v3 = *(a1 + 200);
  if (v3)
  {
    v7 = *(a1 + 192);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v8)
    {
      if (v7 && (strcpy(&buf, "esodbolg"), BYTE1(buf.mElement) = 0, HIWORD(buf.mElement) = 0, (*(*v7 + 16))(v7, &buf)))
      {
        strcpy(&buf, "esodbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        v37 = (*(*v7 + 32))(v7, &buf, 0, 0);
        v38.__r_.__value_.__r.__words[0] = 0x676C6F62646F7365;
        LODWORD(v38.__r_.__value_.__r.__words[1]) = 0;
        (*(*v7 + 40))(v7, &v38, 0, 0, &v37, a3);
        if (*a3 <= 150.0)
        {
          v3 = (*a3 >= 50.0);
        }

        else
        {
          v3 = 0;
        }

        if (v3 == 1)
        {
          v9 = sub_5544(25);
          v10 = *v9;
          if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v11 = (*(*v7 + 120))(v7);
            v12 = *a3;
            buf.mSelector = 136315906;
            *&buf.mScope = "PortUtilities.cpp";
            v43 = 1024;
            v44 = 580;
            v45 = 1024;
            v46 = v11;
            LOWORD(v47[0]) = 2048;
            *(v47 + 2) = *&v12;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Fetched sensitivity from device [%u]: %f", &buf, 0x22u);
          }
        }

        else if (a2)
        {
          v13 = sub_5544(25);
          v14 = *v13;
          if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            v15 = (*(*v7 + 120))(v7);
            v16 = *a3;
            buf.mSelector = 136315906;
            *&buf.mScope = "PortUtilities.cpp";
            v43 = 1024;
            v44 = 585;
            v45 = 1024;
            v46 = v15;
            LOWORD(v47[0]) = 2048;
            *(v47 + 2) = *&v16;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : Fetched invalid sensitivity from device [%u]: %f", &buf, 0x22u);
          }

          v17 = sub_5544(25);
          v18 = *v17;
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315394;
            *&buf.mScope = "PortUtilities.cpp";
            v43 = 1024;
            v44 = 234;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : Reporting sensitivity to metrics.", &buf, 0x12u);
          }

          v41[0] = 0;
          v41[1] = 0;
          __p = v41;
          std::to_string(&v38, *a3);
          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v38;
          }

          else
          {
            v19 = v38.__r_.__value_.__r.__words[0];
          }

          if (v19)
          {
            if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v38.__r_.__value_.__l.__size_;
            }

            cf = CFStringCreateWithBytes(0, v19, size, 0x8000100u, 0);
            if (!cf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }
          }

          else
          {
            cf = 0;
          }

          sub_53E8(&buf, "headphone_sensitivity");
          v22 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v47[0] = v22;
          sub_1871CC(&__p, &buf, &buf);
          if (v47[0])
          {
            CFRelease(v47[0]);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(*&buf.mSelector);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          if (sub_346CF8(a1))
          {
            v23 = sub_A83F4(a1);
            std::to_string(&v38, v23);
            if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &v38;
            }

            else
            {
              v24 = v38.__r_.__value_.__r.__words[0];
            }

            if (v24)
            {
              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v25 = v38.__r_.__value_.__l.__size_;
              }

              cf = CFStringCreateWithBytes(0, v24, v25, 0x8000100u, 0);
              if (!cf)
              {
                v26 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v26, "Could not construct");
              }
            }

            else
            {
              cf = 0;
            }

            sub_347A20(&buf, "bluetooth_product_id", &cf);
            sub_1871CC(&__p, &buf, &buf);
            if (v47[0])
            {
              CFRelease(v47[0]);
            }

            if (SHIBYTE(v46) < 0)
            {
              operator delete(*&buf.mSelector);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v27 = *(a1 + 200);
            if (v27)
            {
              v28 = *(a1 + 192);
              atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v29 = std::__shared_weak_count::lock(v27);
              std::__shared_weak_count::__release_weak(v27);
              if (v29)
              {
                if (v28)
                {
                  LODWORD(v38.__r_.__value_.__l.__data_) = (*(*v28 + 120))(v28);
                  strcpy(&buf, "diabbolg");
                  BYTE1(buf.mElement) = 0;
                  HIWORD(buf.mElement) = 0;
                  v30 = sub_542F0(&v38, &buf, 0, 0);
                  *(&v33 + 1) = v31;
                  *&v33 = v30;
                  v32 = v33 >> 32;
                  if ((v32 & 0x100000000) != 0)
                  {
                    v34 = v32;
                  }

                  else
                  {
                    v34 = 0;
                  }

                  sub_22170(&v38, v34);
                  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v35 = &v38;
                  }

                  else
                  {
                    v35 = v38.__r_.__value_.__r.__words[0];
                  }

                  cf = v35;
                  sub_347AA8(&buf, &cf);
                  sub_1871CC(&__p, &buf, &buf);
                  if (v47[0])
                  {
                    CFRelease(v47[0]);
                  }

                  if (SHIBYTE(v46) < 0)
                  {
                    operator delete(*&buf.mSelector);
                  }

                  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v38.__r_.__value_.__l.__data_);
                  }
                }

                sub_1A8C0(v29);
              }
            }
          }

          v38.__r_.__value_.__r.__words[0] = sub_184010(&__p);
          sub_23E2D8(v38.__r_.__value_.__l.__data_, 1, 6);
          if (v38.__r_.__value_.__r.__words[0])
          {
            CFRelease(v38.__r_.__value_.__l.__data_);
          }

          sub_187354(v41[0]);
        }
      }

      else
      {
        v3 = 0;
      }

      sub_1A8C0(v8);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_3479D4()
{
  __cxa_end_catch();
  sub_1A8C0(v0);
  JUMPOUT(0x347A18);
}

void *sub_347A20(void *a1, char *a2, const void **a3)
{
  sub_53E8(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  a1[3] = v5;
  return a1;
}

uint64_t sub_347A64(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_347AA8(void *a1, char **a2)
{
  v4 = sub_53E8(a1, "bluetooth_product_id");
  sub_88CE8(v4 + 3, *a2);
  return a1;
}

void sub_347AE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_347B04(uint64_t a1, void *a2, _BYTE *a3)
{
  *a3 = 0;
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    if (v6 && *a2)
    {
      (*(**a2 + 256))(&v23);
      if (v24)
      {
        v7 = std::__shared_weak_count::lock(v24);
        if (v7 && v23)
        {
          v8 = (*(*v23 + 96))(v23);
          v10 = v9;
          *a3 = 1;
          v11 = sub_5544(25);
          v12 = v8;
          v13 = v10;
          v14 = *v11;
          if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v26 = "PortUtilities.cpp";
            v27 = 1024;
            v28 = 287;
            v29 = 2048;
            v30 = v13;
            v31 = 2048;
            v32 = v12;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : volume range = %f -> %f", buf, 0x26u);
          }

          if (v12 > v13)
          {
            v15 = sub_5544(14);
            v16 = *v15;
            if (*v15)
            {
              if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v26 = "PortUtilities.cpp";
                v27 = 1024;
                v28 = 288;
                v29 = 2048;
                v30 = v12;
                v31 = 2048;
                v32 = v13;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Min volume is greater than max volume: %f > %f", buf, 0x26u);
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Min volume is greater than max volume: %f > %f");
          }

LABEL_26:
          sub_1A8C0(v7);
LABEL_27:
          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

LABEL_29:
          sub_1A8C0(v6);
          return v8;
        }
      }

      else
      {
        v7 = 0;
      }

      v20 = sub_5544(25);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "PortUtilities.cpp";
        v27 = 1024;
        v28 = 292;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Failed to fetch volume range from device.", buf, 0x12u);
      }

      v8 = -40.0;
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v6 = 0;
  }

  v18 = sub_5544(25);
  v19 = *v18;
  if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "PortUtilities.cpp";
    v27 = 1024;
    v28 = 297;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : No device available.", buf, 0x12u);
  }

  v8 = -40.0;
  if (v6)
  {
    goto LABEL_29;
  }

  return v8;
}

void sub_347EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  sub_1A8C0(v11);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_1A8C0(v10);
  _Unwind_Resume(a1);
}

float sub_347F08(uint64_t a1)
{
  v2 = *(a1 + 200);
  *buf = *(a1 + 192);
  *&buf[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v20, buf, "", 800);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 304);
  v19 = 0.0;
  if ((sub_346F1C(a1, 1, &v19) & 1) == 0)
  {
    v4 = *(a1 + 304);
    v5 = *(a1 + 200);
    if (v5)
    {
      v6 = *(a1 + 192);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v7)
      {
        if (v6 && *(v6 + 524) == 0x110C000005ACLL)
        {
          sub_1A8C0(v7);
          v8 = 1119879168;
LABEL_30:
          v10 = v8;
          goto LABEL_31;
        }

        sub_1A8C0(v7);
      }
    }

    if (v4 > 1647521841)
    {
      if (v4 <= 1647718502)
      {
        if (v4 != 1647521842)
        {
          if (v4 == 1647522096)
          {
LABEL_29:
            v8 = 1120403456;
            goto LABEL_30;
          }

          if (v4 == 1647718502)
          {
            *&v10 = 104.4;
            goto LABEL_31;
          }
        }

LABEL_41:
        v8 = 1121058816;
        goto LABEL_30;
      }

      if (v4 == 1647718503)
      {
        *&v10 = 104.9;
LABEL_31:
        v19 = *&v10;
        v11 = sub_5544(25);
        v12 = *v11;
        if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = (*(*v20 + 120))(v20);
          sub_22170(__p, v3);
          v14 = v18 >= 0 ? __p : __p[0];
          *buf = 136316162;
          *&buf[4] = "PortUtilities.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 809;
          v23 = 1024;
          v24 = v13;
          v25 = 2080;
          v26 = v14;
          v27 = 2048;
          v28 = v19;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Using default sensitivity value for device [%u - %s]: %.2f", buf, 0x2Cu);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_38;
      }

      if (v4 == 1752709424)
      {
        goto LABEL_29;
      }

      v9 = 2003068262;
    }

    else if (v4 > 1634231919)
    {
      if (v4 == 1634231920 || v4 == 1635085420)
      {
        goto LABEL_29;
      }

      v9 = 1647393080;
    }

    else
    {
      if (v4 == 1214329654 || v4 == 1214394677)
      {
        goto LABEL_29;
      }

      v9 = 1633759844;
    }

    if (v4 == v9)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_38:
  v15 = v19;
  if (v21)
  {
    sub_1A8C0(v21);
  }

  return v15;
}

void sub_34824C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_348288(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 304);
  v4 = *(a1 + 200);
  *buf = *(a1 + 192);
  *&buf[8] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v31, buf, "", 819);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = sub_5544(25);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(&v30, v2);
    v7 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    v8 = v30.__r_.__value_.__r.__words[0];
    sub_22170(__p, v3);
    v9 = &v30;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v29 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "PortUtilities.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 822;
    v34 = 2080;
    v35 = v9;
    v36 = 2080;
    v37 = v10;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry: Port type/subtype = %s/%s", buf, 0x26u);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  if (sub_346CF8(a1))
  {
    v11 = sub_5544(25);
    v12 = *v11;
    if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_41;
    }

    v13 = sub_A83F4(a1);
    std::to_string(&v30, v13);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v30;
    }

    else
    {
      v14 = v30.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "PortUtilities.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 825;
    v34 = 2080;
    v35 = v14;
    v15 = "%25s:%-5d PlaybackDosimetry: Port Apple bluetooth product = %s";
    v16 = v12;
    goto LABEL_39;
  }

  v17 = sub_5544(25);
  v18 = *v17;
  if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 144))(&v30, a1);
    v19 = (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v30 : v30.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "PortUtilities.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 828;
    v34 = 2080;
    v35 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry: Port bluetooth product name = %s", buf, 0x1Cu);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  LODWORD(v30.__r_.__value_.__l.__data_) = (*(*v31 + 120))(v31);
  strcpy(buf, "diabbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v20 = sub_542F0(&v30, buf, 0, 0);
  *(&v23 + 1) = v21;
  *&v23 = v20;
  v22 = v23 >> 32;
  if ((v22 & 0x100000000) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_5544(25);
  v26 = *v25;
  if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(&v30, v24);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v30;
    }

    else
    {
      v27 = v30.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "PortUtilities.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 834;
    v34 = 2080;
    v35 = v27;
    v15 = "%25s:%-5d PlaybackDosimetry: Port bluetooth product ID = %s";
    v16 = v26;
LABEL_39:
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, v15, buf, 0x1Cu);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

LABEL_41:
  if (v32)
  {
    sub_1A8C0(v32);
  }
}

void sub_348688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_1A8C0(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_3486DC()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x3486D4);
}

void sub_3486F0(CFDictionaryRef *a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  memset(v101, 0, 24);
  __p = 0;
  v100 = 0uLL;
  if (v4 != 1885892674 && v4 != 1885892706)
  {
    if (v4 != 1885892727)
    {
      sub_349F50(a2, v101, &__p);
      v29 = sub_5544(25);
      v30 = *v29;
      if (!*v29 || !os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_116;
      }

      v31 = &v107;
      sub_22170(&v107, v4);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v107.__r_.__value_.__r.__words[0];
      }

      sub_34A19C(&v106, v101[0], v101[1]);
      v32 = SHIBYTE(v106.__r_.__value_.__r.__words[2]);
      v33 = v106.__r_.__value_.__r.__words[0];
      sub_34A19C(&v104, __p, v100);
      v34 = &v106;
      if (v32 < 0)
      {
        v34 = v33;
      }

      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v104;
      }

      else
      {
        v35 = v104.__r_.__value_.__r.__words[0];
      }

      buf[0].mSelector = 136316162;
      *&buf[0].mScope = "PortUtilities.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 861;
      HIWORD(buf[1].mScope) = 2080;
      *&buf[1].mElement = v31;
      LOWORD(buf[2].mScope) = 2080;
      *(&buf[2].mScope + 2) = v34;
      HIWORD(buf[3].mSelector) = 2080;
      *&buf[3].mScope = v35;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Unsupported port type: %s. Returning volume curve for wired headset. In: %s -> Out: %s", buf, 0x30u);
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      goto LABEL_112;
    }

    sub_349F50(a2, v101, &__p);
    v17 = sub_5544(25);
    v18 = *v17;
    if (!*v17 || !os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_116;
    }

    sub_34A19C(&v107, v101[0], v101[1]);
    v19 = SHIBYTE(v107.__r_.__value_.__r.__words[2]);
    v20 = v107.__r_.__value_.__r.__words[0];
    sub_34A19C(&v106, __p, v100);
    v21 = &v107;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v106;
    }

    else
    {
      v22 = v106.__r_.__value_.__r.__words[0];
    }

    buf[0].mSelector = 136315906;
    *&buf[0].mScope = "PortUtilities.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 849;
    HIWORD(buf[1].mScope) = 2080;
    *&buf[1].mElement = v21;
    LOWORD(buf[2].mScope) = 2080;
    *(&buf[2].mScope + 2) = v22;
    v23 = "%25s:%-5d PlaybackDosimetry : volume curve for wired headset. In: %s -> Out: %s";
LABEL_111:
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, v23, buf, 0x26u);
LABEL_112:
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    goto LABEL_116;
  }

  v6 = *(a2 + 200);
  v98 = *(a2 + 192);
  if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed), v7 = *(a2 + 200), LODWORD(v4) = *(a2 + 144), !v7))
  {
    v9 = 0;
LABEL_31:
    v24 = sub_5544(25);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "PortUtilities.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 399;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : no device to fetch volume map from.", buf, 0x12u);
    }

    v26 = 0;
    goto LABEL_35;
  }

  v8 = *(a2 + 192);
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = std::__shared_weak_count::lock(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!v9 || !v8)
  {
    goto LABEL_31;
  }

  strcpy(buf, "cvodbolg");
  BYTE1(buf[0].mElement) = 0;
  HIWORD(buf[0].mElement) = 0;
  if (!(*(*v8 + 16))(v8, buf))
  {
    v47 = sub_5544(25);
    v48 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_DEBUG))
    {
      v49 = (*(*v8 + 120))(v8);
      buf[0].mSelector = 136315650;
      *&buf[0].mScope = "PortUtilities.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 394;
      HIWORD(buf[1].mScope) = 1024;
      buf[1].mElement = v49;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : device [%u] does not have a volume map.", buf, 0x18u);
    }

    goto LABEL_75;
  }

  theArray = 0;
  v102 = 8;
  v104.__r_.__value_.__r.__words[0] = 0x676C6F62646F7663;
  LODWORD(v104.__r_.__value_.__r.__words[1]) = 0;
  (*(*v8 + 40))(v8, &v104, 0, 0, &v102, &theArray);
  v10 = theArray;
  if (!theArray)
  {
    v11 = sub_5544(25);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (*(*v8 + 120))(v8);
      buf[0].mSelector = 136315650;
      *&buf[0].mScope = "PortUtilities.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 351;
      HIWORD(buf[1].mScope) = 1024;
      buf[1].mElement = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : device [%u] does not have volume curve data.", buf, 0x18u);
    }

    v10 = theArray;
    if (!theArray)
    {
LABEL_75:
      v26 = 0;
      goto LABEL_36;
    }
  }

  Count = CFArrayGetCount(v10);
  if (!theArray)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v15 = Count;
  sub_27C7A4(buf, theArray);
  v16 = *&buf[0].mSelector;
  __p = *&buf[0].mSelector;
  v100 = *&buf[0].mElement;
  if (*&buf[0].mElement - *&buf[0].mSelector >= 5uLL)
  {
    while (v16 != *&buf[0].mElement)
    {
      if (*v16 != 0.0)
      {
        v91 = sub_5544(25);
        v92 = *v91;
        if (*v91 && os_log_type_enabled(*v91, OS_LOG_TYPE_DEBUG))
        {
          buf[0].mSelector = 136315650;
          *&buf[0].mScope = "PortUtilities.cpp";
          LOWORD(buf[1].mSelector) = 1024;
          *(&buf[1].mSelector + 2) = 364;
          HIWORD(buf[1].mScope) = 1024;
          buf[1].mElement = v15;
          _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : number of volume map steps: %u", buf, 0x18u);
        }

        v93 = sub_5544(25);
        v94 = *v93;
        if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_DEBUG))
        {
          v95 = (*(*v8 + 120))(v8);
          sub_34A19C(&v107, __p, v100);
          v96 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
          buf[0].mSelector = 136315906;
          *&buf[0].mScope = "PortUtilities.cpp";
          LOWORD(buf[1].mSelector) = 1024;
          *(&buf[1].mSelector + 2) = 366;
          HIWORD(buf[1].mScope) = 1024;
          buf[1].mElement = v95;
          LOWORD(buf[2].mSelector) = 2080;
          *(&buf[2].mSelector + 2) = v96;
          _os_log_impl(&dword_0, v94, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : fetched volume map from device [%u]: %s", buf, 0x22u);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }
        }

        v26 = 1;
        goto LABEL_222;
      }

      ++v16;
    }
  }

  if (v15 <= 1)
  {
    v52 = sub_5544(25);
    v53 = *v52;
    if (*v52)
    {
      if (os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
      {
        buf[0].mSelector = 136315650;
        *&buf[0].mScope = "PortUtilities.cpp";
        LOWORD(buf[1].mSelector) = 1024;
        *(&buf[1].mSelector + 2) = 370;
        HIWORD(buf[1].mScope) = 1024;
        buf[1].mElement = v15;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : Volume map has invalid number of steps: %u < 2, fallback to default", buf, 0x18u);
      }
    }
  }

  for (i = __p; i != v100; ++i)
  {
    if (*i != 0.0)
    {
      goto LABEL_130;
    }
  }

  v63 = sub_5544(25);
  v64 = *v63;
  if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
  {
    buf[0].mSelector = 136315394;
    *&buf[0].mScope = "PortUtilities.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 372;
    _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : Volume map contains all zeroes, fallback to default", buf, 0x12u);
  }

LABEL_130:
  v65 = sub_5544(25);
  v66 = *v65;
  if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
  {
    v67 = (*(*v8 + 120))(v8);
    sub_34A19C(&v107, __p, v100);
    v68 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
    buf[0].mSelector = 136315906;
    *&buf[0].mScope = "PortUtilities.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 375;
    HIWORD(buf[1].mScope) = 1024;
    buf[1].mElement = v67;
    LOWORD(buf[2].mSelector) = 2080;
    *(&buf[2].mSelector + 2) = v68;
    _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : fetched volume map from device [%u]: %s", buf, 0x22u);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }
  }

  v69 = sub_5544(25);
  v70 = *v69;
  if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_DEBUG))
  {
    buf[0].mSelector = 136315394;
    *&buf[0].mScope = "PortUtilities.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 210;
    _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : Reporting volume map to metrics.", buf, 0x12u);
  }

  *&v106.__r_.__value_.__r.__words[1] = 0uLL;
  v106.__r_.__value_.__r.__words[0] = &v106.__r_.__value_.__l.__size_;
  v71 = __p;
  memset(&v104, 0, sizeof(v104));
  std::string::append(&v104, "{ ", 2uLL);
  if (__p != v100)
  {
    while (1)
    {
      std::to_string(&v107, *v71);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &v107;
      }

      else
      {
        v72 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v107.__r_.__value_.__l.__size_;
      }

      std::string::append(&v104, v72, size);
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if (++v71 == v100)
      {
        break;
      }

      std::string::append(&v104, ", ", 2uLL);
    }
  }

  std::string::append(&v104, " }", 2uLL);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = &v104;
  }

  else
  {
    v74 = v104.__r_.__value_.__r.__words[0];
  }

  if (v74)
  {
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v75 = v104.__r_.__value_.__l.__size_;
    }

    cf = CFStringCreateWithBytes(0, v74, v75, 0x8000100u, 0);
    if (!cf)
    {
      v76 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v76, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  sub_53E8(buf, "volume_map");
  v77 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *&buf[2].mSelector = v77;
  sub_1871CC(&v106, buf, buf);
  if (*&buf[2].mSelector)
  {
    CFRelease(*&buf[2].mSelector);
  }

  if (SHIBYTE(buf[1].mElement) < 0)
  {
    operator delete(*&buf[0].mSelector);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (sub_346CF8(a2))
  {
    v78 = sub_A83F4(a2);
    std::to_string(&v107, v78);
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v107;
    }

    else
    {
      v79 = v107.__r_.__value_.__r.__words[0];
    }

    if (v79)
    {
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = v107.__r_.__value_.__l.__size_;
      }

      v104.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, v79, v80, 0x8000100u, 0);
      if (!v104.__r_.__value_.__r.__words[0])
      {
        v81 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v81, "Could not construct");
      }
    }

    else
    {
      v104.__r_.__value_.__r.__words[0] = 0;
    }

    sub_347A20(buf, "bluetooth_product_id", &v104.__r_.__value_.__l.__data_);
    sub_1871CC(&v106, buf, buf);
    if (*&buf[2].mSelector)
    {
      CFRelease(*&buf[2].mSelector);
    }

    if (SHIBYTE(buf[1].mElement) < 0)
    {
      operator delete(*&buf[0].mSelector);
    }

    if (v104.__r_.__value_.__r.__words[0])
    {
      CFRelease(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v82 = *(a2 + 200);
    if (v82)
    {
      v83 = *(a2 + 192);
      atomic_fetch_add_explicit(&v82->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v84 = std::__shared_weak_count::lock(v82);
      std::__shared_weak_count::__release_weak(v82);
      if (v84)
      {
        if (v83)
        {
          LODWORD(v107.__r_.__value_.__l.__data_) = (*(*v83 + 120))(v83);
          strcpy(buf, "diabbolg");
          BYTE1(buf[0].mElement) = 0;
          HIWORD(buf[0].mElement) = 0;
          v85 = sub_542F0(&v107, buf, 0, 0);
          *(&v88 + 1) = v86;
          *&v88 = v85;
          v87 = v88 >> 32;
          if ((v87 & 0x100000000) != 0)
          {
            v89 = v87;
          }

          else
          {
            v89 = 0;
          }

          sub_22170(&v107, v89);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v90 = &v107;
          }

          else
          {
            v90 = v107.__r_.__value_.__r.__words[0];
          }

          v104.__r_.__value_.__r.__words[0] = v90;
          sub_347AA8(buf, &v104.__r_.__value_.__l.__data_);
          sub_1871CC(&v106, buf, buf);
          if (*&buf[2].mSelector)
          {
            CFRelease(*&buf[2].mSelector);
          }

          if (SHIBYTE(buf[1].mElement) < 0)
          {
            operator delete(*&buf[0].mSelector);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }
        }

        sub_1A8C0(v84);
      }
    }
  }

  v104.__r_.__value_.__r.__words[0] = sub_184010(&v106);
  sub_23E2D8(v104.__r_.__value_.__l.__data_, 1, 6);
  if (v104.__r_.__value_.__r.__words[0])
  {
    CFRelease(v104.__r_.__value_.__l.__data_);
  }

  sub_187354(v106.__r_.__value_.__l.__size_);
  v26 = 0;
LABEL_222:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_35:
  if (v9)
  {
LABEL_36:
    sub_1A8C0(v9);
  }

  if (!v26 || v4 != 1885892674)
  {
    v37 = *(a2 + 192);
    v36 = *(a2 + 200);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = *(a2 + 144);
    v39 = sub_346CF8(a2);
    if (v38 != 1885892674 || !v39)
    {
      *&v107.__r_.__value_.__l.__data_ = 0uLL;
      if (v36)
      {
        v44 = std::__shared_weak_count::lock(v36);
        v45 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v107.__r_.__value_.__r.__words[0] = v37;
          v107.__r_.__value_.__l.__size_ = v44;
          sub_1A8C0(v44);
        }

        else
        {
          *&v107.__r_.__value_.__l.__data_ = 0uLL;
        }
      }

      else
      {
        v45 = 0;
      }

      LODWORD(v106.__r_.__value_.__l.__data_) = 17;
      sub_34A2B4(buf, v38, &v107, &v106);
      v50 = *&buf[0].mSelector;
      v101[0] = *&buf[0].mSelector;
      *&v101[1] = *&buf[0].mElement;
      if (v45)
      {
        std::__shared_weak_count::__release_weak(v45);
        v50 = v101[0];
        v51 = v101[1];
      }

      else
      {
        v51 = *&buf[0].mElement;
      }

      sub_16B928(&__p, v50, v51, (v51 - v50) >> 2);
LABEL_98:
      if (!v36)
      {
        goto LABEL_101;
      }

      v46 = v36;
      goto LABEL_100;
    }

    v41 = sub_A83F4(a2) - 8195;
    if (v41 <= 6 && ((1 << v41) & 0x4D) != 0)
    {
      v110 = 0;
      *&buf[0].mSelector = *"";
      *&buf[1].mScope = unk_519550;
      *&buf[2].mElement = xmmword_519560;
      v109 = unk_519570;
      sub_34A7F4(&__p, buf, v111, 0x11uLL);
      *&v107.__r_.__value_.__l.__data_ = 0uLL;
      if (!v36)
      {
        v43 = 0;
        goto LABEL_94;
      }

      v42 = std::__shared_weak_count::lock(v36);
      v43 = v42;
      if (!v42)
      {
        *&v107.__r_.__value_.__l.__data_ = 0uLL;
        goto LABEL_94;
      }
    }

    else
    {
      v110 = 0;
      *&buf[0].mSelector = *"";
      *&buf[1].mScope = unk_5A40F0;
      *&buf[2].mElement = xmmword_5A4100;
      v109 = unk_5A4110;
      sub_34A7F4(&__p, buf, v111, 0x11uLL);
      *&v107.__r_.__value_.__l.__data_ = 0uLL;
      if (!v36)
      {
        v43 = 0;
        goto LABEL_94;
      }

      v42 = std::__shared_weak_count::lock(v36);
      v43 = v42;
      if (!v42)
      {
        *&v107.__r_.__value_.__l.__data_ = 0uLL;
        goto LABEL_94;
      }
    }

    atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v107.__r_.__value_.__r.__words[0] = v37;
    v107.__r_.__value_.__l.__size_ = v42;
    sub_1A8C0(v42);
LABEL_94:
    LODWORD(v106.__r_.__value_.__l.__data_) = (v100 - __p) >> 2;
    sub_34A2B4(buf, 1885892674, &v107, &v106);
    if (v101[0])
    {
      v101[1] = v101[0];
      operator delete(v101[0]);
    }

    *v101 = *&buf[0].mSelector;
    v101[2] = *&buf[1].mScope;
    if (v43)
    {
      std::__shared_weak_count::__release_weak(v43);
    }

    goto LABEL_98;
  }

  *&v107.__r_.__value_.__l.__data_ = 0uLL;
  if (v6)
  {
    v27 = std::__shared_weak_count::lock(v6);
    v28 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v107.__r_.__value_.__r.__words[0] = v98;
      v107.__r_.__value_.__l.__size_ = v27;
      sub_1A8C0(v27);
    }

    else
    {
      *&v107.__r_.__value_.__l.__data_ = 0uLL;
    }
  }

  else
  {
    v28 = 0;
  }

  LODWORD(v106.__r_.__value_.__l.__data_) = (v100 - __p) >> 2;
  sub_34A2B4(buf, 1885892674, &v107, &v106);
  *v101 = *&buf[0].mSelector;
  v101[2] = *&buf[1].mScope;
  if (v28)
  {
    v46 = v28;
LABEL_100:
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_101:
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v55 = sub_5544(25);
  v18 = *v55;
  if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_DEFAULT))
  {
    sub_34A19C(&v107, v101[0], v101[1]);
    v56 = SHIBYTE(v107.__r_.__value_.__r.__words[2]);
    v57 = v107.__r_.__value_.__r.__words[0];
    sub_34A19C(&v106, __p, v100);
    v58 = &v107;
    if (v56 < 0)
    {
      v58 = v57;
    }

    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = &v106;
    }

    else
    {
      v59 = v106.__r_.__value_.__r.__words[0];
    }

    buf[0].mSelector = 136315906;
    *&buf[0].mScope = "PortUtilities.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 854;
    HIWORD(buf[1].mScope) = 2080;
    *&buf[1].mElement = v58;
    LOWORD(buf[2].mScope) = 2080;
    *(&buf[2].mScope + 2) = v59;
    v23 = "%25s:%-5d PlaybackDosimetry : volume curve for wireless headset. In: %s -> Out: %s";
    goto LABEL_111;
  }

LABEL_116:
  sub_88CE8(buf, "InputMap");
  *&buf[0].mElement = sub_20A1B4(v101);
  sub_88CE8(&buf[1].mScope, "OutputMap");
  *&buf[2].mSelector = sub_20A1B4(&__p);
  v107.__r_.__value_.__r.__words[0] = buf;
  v107.__r_.__value_.__l.__size_ = 2;
  v60 = 0;
  *a1 = sub_69CE8(&v107);
  do
  {
    v61 = *(&buf[2].mSelector + v60);
    if (v61)
    {
      CFRelease(v61);
    }

    v62 = *(&buf[1].mScope + v60);
    if (v62)
    {
      CFRelease(v62);
    }

    v60 -= 16;
  }

  while (v60 != -32);
  if (__p)
  {
    *&v100 = __p;
    operator delete(__p);
  }

  if (v101[0])
  {
    v101[1] = v101[0];
    operator delete(v101[0]);
  }
}

void sub_349914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void ***__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, int buf, int a39, int a40, __int16 a41, __int16 a42, __int16 a43, __int16 a44)
{
  if (a2)
  {
    sub_46228(&a18);
    if (a2 == 3)
    {
      v47 = __cxa_begin_catch(exception_object);
      v48 = sub_5544(25);
      v49 = *v48;
      if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, v47[2]);
        if (a37 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        buf = 136315650;
        *(v44 + 4) = "PortUtilities.cpp";
        a41 = 1024;
        *(v44 + 14) = 381;
        a44 = 2080;
        *(v44 + 20) = p_p;
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Failed to fetch volume map from device, fallback to default: '%s'", &buf, 0x1Cu);
        if (a37 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v51 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        v52 = v51;
        v53 = sub_5544(25);
        v54 = *v53;
        if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = (*(*v52 + 16))(v52);
          buf = 136315650;
          *(v44 + 4) = "PortUtilities.cpp";
          a41 = 1024;
          *(v44 + 14) = 386;
          a44 = 2080;
          *(v44 + 20) = v55;
          _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Failed to fetch volume map from device, fallback to default: %s", &buf, 0x1Cu);
        }
      }

      else
      {
        v56 = sub_5544(25);
        v57 = *v56;
        if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          *(v44 + 4) = "PortUtilities.cpp";
          a41 = 1024;
          *(v44 + 14) = 390;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Failed to fetch volume map from device, fallback to default", &buf, 0x12u);
        }
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x348A98);
  }

  _Unwind_Resume(exception_object);
}

void sub_349F50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 192);
  v5 = *(a1 + 200);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 144);
  v8 = *(a1 + 304);
  if (v8 != 1214539380 && v8 != 1751410292)
  {
    if (v8 == 1752709424)
    {
      v14 = 0;
      v15 = 0;
      if (!v5)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v10 = std::__shared_weak_count::lock(v5);
      v11 = v10;
      if (!v10)
      {
        v14 = 0;
        v15 = 0;
        goto LABEL_23;
      }

      goto LABEL_15;
    }

LABEL_18:
    *&__src = 0x40000000C2980000;
    sub_34A7F4(a2, &__src, &__src + 8, 2uLL);
    goto LABEL_27;
  }

  if ((sub_48EDC() & 1) == 0 && (!MGGetBoolAnswer() || !MGGetBoolAnswer()))
  {
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 0;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v10 = std::__shared_weak_count::lock(v5);
  v11 = v10;
  if (!v10)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_23;
  }

LABEL_15:
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = v6;
  v15 = v10;
  sub_1A8C0(v10);
LABEL_23:
  v13 = 2;
  sub_34A2B4(&__src, v7, &v14, &v13);
  v12 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v12;
    operator delete(v12);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = __src;
  *(a2 + 16) = v17;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_27:
  if (a3 != a2)
  {
    sub_16B928(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_34A168(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_34A19C(std::string *a1, float *a2, float *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      std::to_string(&v9, *a2);
      v7 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
      v8 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v9.__r_.__value_.__r.__words[2]) : v9.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (++a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_34A278(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_34A29C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x34A284);
}

void sub_34A2B4(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = a3[1];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = *a3;
      if (*a3)
      {
        v28 = 0;
        sub_347B04(a2, a3, &v28);
        if (!v28)
        {
          v20 = sub_5544(14);
          v21 = *v20;
          if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            v22 = (*(*v10 + 120))(v10);
            sub_22170(v26, a2);
            v23 = v27 >= 0 ? v26 : v26[0];
            *buf = 136315906;
            v30 = "PortUtilities.cpp";
            v31 = 1024;
            v32 = 313;
            v33 = 1024;
            v34 = v22;
            v35 = 2080;
            v36 = v23;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Device [%u - %s] does not have volume range.", buf, 0x22u);
            if (v27 < 0)
            {
              operator delete(v26[0]);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Device [%u - %s] does not have volume range.");
        }

        if (*a4)
        {
          sub_1D7C28(*a4);
        }

        *a1 = 0u;
        a1[2] = 0;
        v13 = sub_5544(25);
        v14 = *v13;
        if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = (*(*v10 + 120))(v10);
          sub_22170(v26, a2);
          v16 = v27;
          v17 = v26[0];
          sub_34A19C(&__p, 0, 0);
          v18 = v26;
          if (v16 < 0)
          {
            v18 = v17;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136316162;
          v30 = "PortUtilities.cpp";
          v31 = 1024;
          v32 = 319;
          v33 = 1024;
          v34 = v15;
          v35 = 2080;
          v36 = v18;
          v37 = 2080;
          v38 = p_p;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry : created input volume map for device [%u - %s]: %s", buf, 0x2Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v27 < 0)
          {
            operator delete(v26[0]);
          }
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_5544(25);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "PortUtilities.cpp";
    v31 = 1024;
    v32 = 323;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : No device available.", buf, 0x12u);
  }

LABEL_22:
  if (v9)
  {
    sub_1A8C0(v9);
  }
}

void sub_34A778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  v12 = 0;
  if (v9)
  {
    sub_1A8C0(v9);
    v12 = *v10;
  }

  if (v12)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void **sub_34A7F4(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_469FC(v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

uint64_t sub_34A918(uint64_t a1)
{
  result = sub_346E54(a1);
  if (result)
  {
    if (*(a1 + 144) == 1885892674)
    {
      v3 = *(a1 + 200);
      if (v3)
      {
        v4 = *(a1 + 192);
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v5 = std::__shared_weak_count::lock(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (v5)
        {
          if (v4)
          {
            (*(*v4 + 304))(v8, v4);
            v6 = v8[0];
            v7 = v8[1];
            v9 = v8;
            sub_11C50(&v9);
            sub_1A8C0(v5);
            if (v6 != v7)
            {
              return 1;
            }
          }

          else
          {
            sub_1A8C0(v5);
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_34AAA8(uint64_t *a1, unsigned int **a2)
{
  v4 = sub_809C0();
  v6[0] = off_6C2A38;
  v6[3] = v6;
  sub_2574C4(a1, v4, a2, v6);
  return sub_85148(v6);
}

void sub_34AB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_85148(va);
  _Unwind_Resume(a1);
}

BOOL sub_34AC2C()
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  strcpy(v28, "cwdv");
  v28[8] = 0;
  v29 = 3;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v32 = 44722848;
  v0 = sub_809C0();
  v36[0] = off_6C29F0;
  v38 = v36;
  sub_2574C4(v21, v0, &v25, v36);
  sub_76388(&v22, v21);
  sub_65310(v21);
  sub_85148(v36);
  sub_4B938();
  v36[0] = v36;
  v36[1] = v36;
  v37 = 0;
  v1 = v23;
  if (v23 != &v22)
  {
    v2 = 0;
    v3 = qword_6EAD28;
    v4 = qword_6EAD30;
    v5 = v24;
    do
    {
      v6 = v1[2];
      if (v6)
      {
        LODWORD(v6) = *(v6 + 144);
      }

      v7 = v3;
      if (v3 == v4)
      {
LABEL_8:
        i = v1;
      }

      else
      {
        while (v6 != *v7)
        {
          if (++v7 == v4)
          {
            goto LABEL_8;
          }
        }

        for (i = v1[1]; i != &v22; i = i[1])
        {
          v9 = i[2];
          if (v9)
          {
            LODWORD(v9) = *(v9 + 144);
          }

          v10 = v3;
          while (v9 != *v10)
          {
            if (++v10 == v4)
            {
              v11 = 0;
              goto LABEL_22;
            }
          }
        }

        v11 = 1;
LABEL_22:
        if (v1 != i)
        {
          v12 = *i;
          if (*i == v1)
          {
            v15 = 1;
          }

          else
          {
            v13 = -1;
            v14 = v1;
            do
            {
              v14 = v14[1];
              ++v13;
            }

            while (v14 != v12);
            v15 = v13 + 2;
          }

          v5 -= v15;
          v24 = v5;
          v2 += v15;
          v37 = v2;
          v16 = *(v12 + 8);
          v17 = *v1;
          *(v17 + 8) = v16;
          *v16 = v17;
          v18 = v36[0];
          *(v36[0] + 8) = v1;
          *v1 = v18;
          v36[0] = v12;
          *(v12 + 8) = v36;
        }

        if (v11)
        {
          goto LABEL_10;
        }
      }

      i = i[1];
LABEL_10:
      v1 = i;
    }

    while (i != &v22);
  }

  sub_87980(v36);
  v19 = v24;
  sub_87980(&v22);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v31[0]);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return v19 != 0;
}

void sub_34AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_87980(va);
  sub_46934(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_34AEE4(uint64_t a1)
{
  if (sub_346E54(a1))
  {
    v2 = *(a1 + 144);
    if (v2 == 1886216820 || v2 == 1885892706)
    {
      sub_11319C(v15, a1);
      if (!v15[2])
      {
        v11 = 0;
LABEL_32:
        sub_65310(v15);
        return v11;
      }

      sub_88A00(&v13, (v15[1] + 16), "", 963);
      v4 = v13;
      v5 = sub_346E54(v13);
      if (v4[36] == 1885892674)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      if (v6 == 1)
      {
        (*(*v4 + 272))(v16, v4);
        sub_B0484(&v17, v16);
        sub_65310(v16);
        if (v19)
        {
          v7 = v18;
          if (v18 == &v17)
          {
            goto LABEL_28;
          }

          do
          {
            v8 = v7[3];
            if (v8)
            {
              v9 = v7[2];
              atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v10 = std::__shared_weak_count::lock(v8);
              if (v10)
              {
                sub_1A8C0(v10);
                std::__shared_weak_count::__release_weak(v8);
                if (v9 == v4)
                {
                  goto LABEL_21;
                }
              }

              else
              {
                std::__shared_weak_count::__release_weak(v8);
              }
            }

            v7 = v7[1];
          }

          while (v7 != &v17);
          v7 = &v17;
LABEL_21:
          if (v18 == v7)
          {
LABEL_28:
            v11 = 1;
            goto LABEL_29;
          }

          if (&v17 != v7)
          {
            v11 = 2;
LABEL_29:
            sub_87980(&v17);
LABEL_30:
            if (v14)
            {
              sub_1A8C0(v14);
            }

            goto LABEL_32;
          }
        }

        sub_87980(&v17);
      }

      v11 = 0;
      goto LABEL_30;
    }
  }

  return 0;
}

void sub_34B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_65310(va1);
  if (a7)
  {
    sub_1A8C0(a7);
  }

  sub_65310(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34B0F0(uint64_t a1)
{
  result = sub_346E54(a1);
  if (result)
  {
    v3 = *(a1 + 144);
    if (v3 == 1886216820 || v3 == 1885892706)
    {
      v5 = &v8;
      sub_11319C(&v8, a1);
      v6 = v10;
      if (v10)
      {
        v7 = v9;
        if (v9 == &v8)
        {
          LOBYTE(v5) = 0;
        }

        else
        {
          do
          {
            sub_88A00(&v11, v7 + 2, "", 981);
            LOBYTE(v5) = (*(*v11 + 392))(v11);
            if (v12)
            {
              sub_1A8C0(v12);
            }

            if (v5)
            {
              break;
            }

            v7 = v7[1];
          }

          while (v7 != &v8);
        }
      }

      sub_65310(&v8);
      return (v6 != 0) & v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_34B20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void sub_34B234(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  *a1 = 0;
  if (v4 == 1886216809)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1735159650;
  }

  if (v4 == 1886613611 || v4 == 1886545251)
  {
    v7 = 1869968496;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(a2 + 200);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *(a2 + 192);
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = std::__shared_weak_count::lock(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!v10)
  {
    goto LABEL_20;
  }

  if (!v9 || (LODWORD(block) = 1936945763, HIDWORD(block) = v7, LODWORD(v24) = 0, !(*(*v9 + 16))(v9, &block)))
  {
    sub_1A8C0(v10);
LABEL_20:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_21;
  }

  LODWORD(v17[0]) = (*(*v9 + 120))(v9);
  LODWORD(__p) = 1936945763;
  HIDWORD(__p) = v7;
  LODWORD(v19) = 0;
  sub_127F10(&block, v17, &__p, 0, 0);
  v11 = block;
  if (block || (v27 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v11;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v12 = v24;
  sub_46980(&v20, v24, v25, (v25 - v24) >> 2);
  if (v12)
  {
    operator delete(v12);
  }

  sub_1A8C0(v10);
LABEL_21:
  if (v4 == 1886216809)
  {
    v14 = *(a2 + 200);
    v17[0] = *(a2 + 192);
    v17[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(&block, v17, "", 1087);
    (*(*block + 49))(&__p);
    if (v24)
    {
      sub_1A8C0(v24);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if ((atomic_load_explicit(&qword_709478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709478))
    {
      __cxa_guard_release(&qword_709478);
    }

    block = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_4CBA78;
    v26 = &unk_6DBD10;
    v27 = &v20;
    p_p = &__p;
    if (qword_709480 != -1)
    {
      dispatch_once(&qword_709480, &block);
    }

    v15 = qword_709470;
    if (qword_709470)
    {
      CFRetain(qword_709470);
    }

    *a1 = v15;
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (v4 == 1886545251)
    {
      if ((atomic_load_explicit(&qword_709460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709460))
      {
        __cxa_guard_release(&qword_709460);
      }

      if (qword_709468 != -1)
      {
        dispatch_once(&qword_709468, &stru_6DBCD0);
      }

      v13 = qword_709458;
      if (qword_709458)
      {
        CFRetain(qword_709458);
      }
    }

    else
    {
      if (v4 != 1886613611)
      {
        goto LABEL_48;
      }

      if ((atomic_load_explicit(&qword_709448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709448))
      {
        __cxa_guard_release(&qword_709448);
      }

      block = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_4C9A60;
      v26 = &unk_6DC438;
      v27 = &v20;
      if (qword_709450 != -1)
      {
        dispatch_once(&qword_709450, &block);
      }

      v13 = qword_709440;
      if (qword_709440)
      {
        CFRetain(qword_709440);
      }
    }

    *a1 = v13;
  }

LABEL_48:
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_34B6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_1A8C0(v22);
  sub_46228(v21);
  _Unwind_Resume(a1);
}

void sub_34B75C(void **a1, uint64_t a2)
{
  sub_250794(&v15, a2);
  v4 = v16;
  if (v15 != v16)
  {
    *a1 = v15;
    a1[1] = v4;
    a1[2] = v17;
    return;
  }

  sub_34B234(&theArray, a2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v7 = Count;
    v8 = theArray;
    if (theArray)
    {
      v14 = CFArrayGetCount(theArray);
      if (v7)
      {
LABEL_6:
        if (v5 != v8 || v14)
        {
          sub_233E00(cf, v5, 0);
          if (*cf)
          {
            v9 = sub_4A4DC(*cf, "trim_gain_db");
            if (v9)
            {
              if (sub_725A0(v9) >> 32)
              {
                sub_1D7C28(1uLL);
              }
            }

            sub_1EC054();
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }
    }

    else
    {
      v14 = 0;
      if (Count)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = sub_5544(14);
  if (*(v10 + 8))
  {
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        sub_34A19C(&__p, *a1, 0);
        v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *cf = 136315650;
        *&cf[4] = "PortUtilities.cpp";
        v21 = 1024;
        v22 = 161;
        v23 = 2080;
        v24 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d FDR Sorted TrimGains Vector: %s", cf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_34BA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    *(a10 + 8) = v21;
    operator delete(v21);
  }

  sub_46228(&a18);
  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_34BB3C(uint64_t *a1, uint64_t a2)
{
  sub_34B234(&theArray, a2);
  v3 = theArray;
  v14 = a1;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = Count;
    v6 = theArray;
    if (theArray)
    {
      v7 = CFArrayGetCount(theArray);
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
      if (!Count)
      {
        goto LABEL_17;
      }
    }

    v8 = 0;
    do
    {
      if (v3 == v6 && v7 == v8)
      {
        break;
      }

      sub_233E00(cf, v3, v8);
      if (!*cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (sub_4C9790(*cf) >= 0x100u)
      {
        if (*cf)
        {
          if (sub_4C9790(*cf) > 0xFFu)
          {
            operator new();
          }

          sub_1EC054();
        }

        v13 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v13, "Could not construct");
      }

      if (*cf)
      {
        CFRelease(*cf);
      }

      ++v8;
    }

    while (v5 != v8);
  }

LABEL_17:
  v9 = sub_5544(14);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 136315650;
    *&cf[4] = "PortUtilities.cpp";
    v18 = 1024;
    v19 = 176;
    v20 = 2080;
    v21 = "empty";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR Sorted Filter IDs Vector: %s", cf, 0x1Cu);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  memset(&v16, 0, sizeof(v16));
  sub_47A08(&v16, 0);
  v11 = sub_477F0(&v16);
  *cf = &v16;
  sub_47988(cf);
  *v14 = v11;
}

void sub_34C078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    operator delete(v25);
  }

  sub_46228(&a18);
  _Unwind_Resume(a1);
}

CFNumberRef sub_34C17C(CFNumberRef *a1, char a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void sub_34C228(uint64_t *a1, uint64_t a2)
{
  sub_34B234(&theArray, a2);
  v3 = theArray;
  v14 = a1;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = Count;
    v6 = theArray;
    if (theArray)
    {
      v7 = CFArrayGetCount(theArray);
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
      if (!Count)
      {
        goto LABEL_17;
      }
    }

    v8 = 0;
    do
    {
      if (v3 == v6 && v7 == v8)
      {
        break;
      }

      sub_233E00(cf, v3, v8);
      if (!*cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (sub_4C97CC(*cf) >= 0x10000)
      {
        if (*cf)
        {
          if (sub_4C97CC(*cf) >> 16)
          {
            operator new();
          }

          sub_1EC054();
        }

        v13 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v13, "Could not construct");
      }

      if (*cf)
      {
        CFRelease(*cf);
      }

      ++v8;
    }

    while (v5 != v8);
  }

LABEL_17:
  v9 = sub_5544(14);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 136315650;
    *&cf[4] = "PortUtilities.cpp";
    v18 = 1024;
    v19 = 189;
    v20 = 2080;
    v21 = "empty";
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR Sorted Resonant Frequencies Vector: %s", cf, 0x1Cu);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  memset(&v16, 0, sizeof(v16));
  sub_47A08(&v16, 0);
  v11 = sub_477F0(&v16);
  *cf = &v16;
  sub_47988(cf);
  *v14 = v11;
}

void sub_34C770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    operator delete(v25);
  }

  sub_46228(&a18);
  _Unwind_Resume(a1);
}

CFNumberRef sub_34C878(CFNumberRef *a1, __int16 a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

uint64_t sub_34C924(const __CFBoolean *a1, std::__shared_weak_count *a2)
{
  v9 = a1;
  v10 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v11, &v9, "", 1142);
  if (a2)
  {
    std::__shared_weak_count::__release_weak(a2);
  }

  v3 = v11;
  strcpy(v13, "DDAubolg");
  v13[9] = 0;
  v14 = 0;
  if ((sub_5BA08(v11) & 1) != 0 && (v18 = sub_59580(v3)) != 0 && (v17 = 0, !sub_5C060(v3)))
  {
    v6 = v17;
    v16 = v17;
    sub_33CBE0(&v15, &v16);
    v7 = v15;
    if (v6)
    {
      CFRelease(v6);
    }

    v9 = v7;
    LOBYTE(v10) = 1;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v4 = sub_27CA94(v7);
    CFRelease(v7);
  }

  else
  {
    LOBYTE(v9) = 0;
    v4 = 0;
    LOBYTE(v10) = 0;
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }

  return v4;
}

void sub_34CA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  __cxa_free_exception(v12);
  sub_34CAE8(&a9);
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_34CAE8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void sub_34CB28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_114A00(v8, a2);
  v5 = v8[1];
  sub_83FDC(v11, a3);
  if (v5 != v8)
  {
    while (1)
    {
      sub_25704(&v9, v5 + 2, "", 1191);
      if (!v12)
      {
        sub_46A74();
      }

      v6 = (*(*v12 + 48))(v12, v9);
      if (v10)
      {
        sub_1A8C0(v10);
      }

      if (v6)
      {
        break;
      }

      v5 = v5[1];
      if (v5 == v8)
      {
        sub_85148(v11);
        goto LABEL_11;
      }
    }
  }

  sub_85148(v11);
  if (v5 == v8)
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v7 = v5[3];
    *a1 = v5[2];
    a1[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }
  }

  sub_65310(v8);
}

uint64_t sub_34CCB0(void *a1, uint64_t a2)
{
  v3[0] = off_6C2A80;
  v3[3] = v3;
  sub_34CB28(a1, a2, v3);
  return sub_85148(v3);
}

void sub_34CD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_85148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34CDE0(void *a1, uint64_t a2)
{
  v3[0] = off_6C2AC8;
  v3[3] = v3;
  sub_34CB28(a1, a2, v3);
  return sub_85148(v3);
}

void sub_34CE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_85148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_34CF08(uint64_t a1, const UInt8 *a2)
{
  sub_160810(&v7, a1, COERCE_DOUBLE(1735159650));
  v3 = v7;
  if (v8 != 1 || v7 == 0)
  {
    return 0;
  }

  v5 = sub_27B9E4(v7, a2);
  CFRelease(v3);
  return (v5 > 0xFFu) & v5;
}

uint64_t sub_34CF94(uint64_t a1)
{
  sub_53E8(__p, "kBluetoothAudioDeviceFeatureHearingAssistCapability");
  v2 = sub_34CF08(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

uint64_t sub_34CFF0(uint64_t a1)
{
  sub_53E8(__p, "kBluetoothAudioDeviceFeatureFarfieldInput");
  v2 = sub_34CF08(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

uint64_t sub_34D04C(uint64_t a1, _BYTE *a2)
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v4 = *(a1 + 144);
  if (a2[1] == 1)
  {
    if (*a2)
    {
      v5 = 1885892706;
    }

    else
    {
      v5 = 1886216820;
    }

    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (v4 != 1886216820 && v4 != 1885892706)
  {
    return 0;
  }

  sub_53E8(__p, "kBluetoothAudioDeviceFeatureStudioMicInput");
  v6 = sub_34CF08(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

const __CFBoolean *sub_34D11C(uint64_t a1)
{
  if (*(a1 + 144) != 1885892727)
  {
    return 0;
  }

  v1 = *(a1 + 200);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 192);
  atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v3 = std::__shared_weak_count::lock(v1);
  std::__shared_weak_count::__release_weak(v1);
  if (!v3)
  {
    return 0;
  }

  if (v2)
  {
    v4 = (*(*v2 + 120))(v2);
    inAddress.mElement = 0;
    v15 = v4;
    *&inAddress.mSelector = 0x676C6F6268656164;
    sub_221220(&v10, &v15, &inAddress);
    LOBYTE(v7) = 0;
    v9 = 0;
    if ((v13 & 1) != 0 && (v5 = v12, v12 = 0, v7 = &off_6DDB78, theDict = v5, v9 = 1, sub_8AAAC(&v11), sub_3068D8(theDict, @"hasAudioJack")))
    {
      sub_34D2A4(&v10, theDict);
      v2 = sub_34D438(v11);
      sub_8AAAC(&v10);
    }

    else
    {
      v2 = 0;
    }

    if (v9 == 1)
    {
      sub_8AAAC(&v7);
    }
  }

  sub_1A8C0(v3);
  return v2;
}

uint64_t sub_34D2A4(uint64_t result, CFDictionaryRef theDict)
{
  *result = &off_6C2B10;
  *(result + 8) = 0;
  if (theDict)
  {
    v2 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, @"hasAudioJack", &value);
    if (result)
    {
      if (value)
      {
        v3 = CFGetTypeID(value);
      }

      else
      {
        v3 = 0;
      }

      TypeID = CFBooleanGetTypeID();
      v5 = value;
      if (v3 == TypeID)
      {
        if (value)
        {
          CFRetain(value);
          v6 = v2;
          v7 = v5;
        }

        else
        {
          v6 = v2;
          v7 = 0;
        }

        return sub_306F94(v6, v7);
      }

      else
      {
        if (value)
        {
          v5 = CFGetTypeID(value);
        }

        result = CFNumberGetTypeID();
        if (v5 == result)
        {
          v8 = value;
          if (value)
          {
            CFRetain(value);
          }

          v14[0] = &off_6D3210;
          v14[1] = v8;
          v9 = sub_34D460(v8);
          v10 = &kCFBooleanTrue;
          if (!v9)
          {
            v10 = &kCFBooleanFalse;
          }

          v11 = *v10;
          if (*v10)
          {
            CFRetain(*v10);
          }

          v12 = *(v2 + 8);
          *(v2 + 8) = v11;
          v13[0] = &off_6C2B10;
          v13[1] = v12;
          sub_8AAAC(v13);
          return sub_8AAAC(v14);
        }
      }
    }
  }

  return result;
}

const __CFBoolean *sub_34D438(const __CFBoolean *result)
{
  if (result)
  {
    return (CFBooleanGetValue(result) != 0);
  }

  return result;
}

const __CFNumber *sub_34D460(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void sub_34D498(void *a1)
{
  sub_8AAAC(a1);

  operator delete();
}

void sub_34D4D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v7 = *(a2 + 80);
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_25085C(a1, &v7);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = v5;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_25085C(a2, &v7);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_34D588(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_34D5B0(int a1)
{
  sub_34D61C();
  v2 = xmmword_6EAD90;
  sub_34D61C();
  if (v2 == *(&xmmword_6EAD90 + 1))
  {
    return 1;
  }

  v3 = v2 + 4;
  do
  {
    v4 = *(v3 - 4);
    result = v4 != a1;
    v6 = v4 == a1 || v3 == *(&xmmword_6EAD90 + 1);
    v3 += 4;
  }

  while (!v6);
  return result;
}

void sub_34D61C()
{
  if ((atomic_load_explicit(qword_6EAD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_6EAD80))
  {
    qmemcpy(v0, " papibdhcnapcahplunpilnpnlupnldpmfbpferp", sizeof(v0));
    qword_6EAD70 = 0;
    unk_6EAD78 = 0;
    qword_6EAD68 = 0;
    sub_4625C(&qword_6EAD68, v0, &v1, 0xAuLL);
    __cxa_guard_release(qword_6EAD80);
  }

  if (xmmword_6EAD90 == *(&xmmword_6EAD90 + 1))
  {
    sub_34D74C(xmmword_6EAD90, qword_6EAD68, qword_6EAD70, (qword_6EAD70 - qword_6EAD68) >> 2);
    sub_108D14();
    sub_34D74C(*(&xmmword_6EAD90 + 1), qword_6EAD48, qword_6EAD50, (qword_6EAD50 - qword_6EAD48) >> 2);
  }
}

void sub_34D74C(char *__dst, char *__src, char *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return;
  }

  v5 = __src;
  v7 = *(&xmmword_6EAD90 + 1);
  if (a4 > (qword_6EADA0 - *(&xmmword_6EAD90 + 1)) >> 2)
  {
    v8 = a4 + ((*(&xmmword_6EAD90 + 1) - xmmword_6EAD90) >> 2);
    if (v8 >> 62)
    {
      sub_189A00();
    }

    v9 = &__dst[-xmmword_6EAD90];
    v10 = qword_6EADA0 - xmmword_6EAD90;
    if ((qword_6EADA0 - xmmword_6EAD90) >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v12 = v9 >> 2;
    if (v11)
    {
      sub_1D7C28(v11);
    }

    v28 = 4 * v12;
    v29 = (4 * v12 + 4 * a4);
    v30 = 4 * a4;
    v31 = v28;
    do
    {
      v32 = *v5;
      v5 += 4;
      *v31++ = v32;
      v30 -= 4;
    }

    while (v30);
    memcpy(v29, __dst, *(&xmmword_6EAD90 + 1) - __dst);
    v33 = &v29[*(&xmmword_6EAD90 + 1) - __dst];
    v34 = &__dst[-xmmword_6EAD90];
    v35 = v28 - &__dst[-xmmword_6EAD90];
    memcpy((v28 - v34), xmmword_6EAD90, v34);
    v36 = xmmword_6EAD90;
    *&xmmword_6EAD90 = v35;
    *(&xmmword_6EAD90 + 1) = v33;
    qword_6EADA0 = 0;
    if (v36)
    {

      operator delete(v36);
    }

    return;
  }

  v13 = (*(&xmmword_6EAD90 + 1) - __dst) >> 2;
  if (v13 >= a4)
  {
    v17 = &__dst[4 * a4];
    v18 = (*(&xmmword_6EAD90 + 1) - 4 * a4);
    v19 = *(&xmmword_6EAD90 + 1);
    while (v18 < v7)
    {
      v20 = *v18;
      v18 += 4;
      *v19++ = v20;
    }

    *(&xmmword_6EAD90 + 1) = v19;
    if (v7 != v17)
    {
      memmove(&__dst[4 * a4], __dst, v7 - v17);
    }

    v25 = 4 * a4;
    v26 = __dst;
    v27 = v5;
    goto LABEL_35;
  }

  v14 = &__src[*(&xmmword_6EAD90 + 1) - __dst];
  v15 = *(&xmmword_6EAD90 + 1);
  while (v14 != a3)
  {
    v16 = *v14;
    v14 += 4;
    *v15 = v16;
    v15 += 4;
  }

  *(&xmmword_6EAD90 + 1) = v15;
  if (v13 >= 1)
  {
    v21 = &__dst[4 * a4];
    v22 = &v15[-4 * a4];
    v23 = v15;
    while (v22 < v7)
    {
      v24 = *v22;
      v22 += 4;
      *v23 = v24;
      v23 += 4;
    }

    *(&xmmword_6EAD90 + 1) = v23;
    if (v15 != v21)
    {
      memmove(&__dst[4 * a4], __dst, v15 - v21);
    }

    if (v7 != __dst)
    {
      v26 = __dst;
      v27 = v5;
      v25 = v7 - __dst;
LABEL_35:

      memmove(v26, v27, v25);
    }
  }
}

BOOL sub_34D988(uint64_t a1, int *a2)
{
  if (!(*(*a1 + 448))(a1))
  {
    return 0;
  }

  if (*(a1 + 303) < 0)
  {
    sub_54A0(__p, *(a1 + 280), *(a1 + 288));
  }

  else
  {
    *__p = *(a1 + 280);
    v15 = *(a1 + 296);
  }

  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v5)
  {
    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = __p[1];
    }

    cf = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (v15 < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    cf = 0;
    if (v15 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (*a2 > 1668313714)
  {
    v10 = 2;
    if (v8 == 1668703084 || v8 == 1668576377)
    {
      goto LABEL_45;
    }

    v9 = 29299;
  }

  else
  {
    if (v8 == 1668301427 || v8 == 1668309362)
    {
      goto LABEL_24;
    }

    v9 = 29250;
  }

  if (v8 != (v9 | 0x63700000))
  {
    if (v7 != 1751212899 && *(a1 + 144) == 1885892706)
    {
      v10 = 2;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_24:
  v10 = 2;
  if (v7 <= 1768781410)
  {
    if (v7 > 1768057202)
    {
      if (v7 == 1768057203)
      {
        goto LABEL_45;
      }

      v11 = 1768779619;
      goto LABEL_42;
    }

    if (v7 == 1735222132)
    {
      goto LABEL_45;
    }

    if (v7 != 1751212899)
    {
      goto LABEL_43;
    }

LABEL_44:
    v10 = 4;
    goto LABEL_45;
  }

  if (v7 <= 1987077986)
  {
    if (v7 == 1768781411)
    {
      goto LABEL_45;
    }

    v11 = 1919776355;
LABEL_42:
    if (v7 == v11)
    {
      goto LABEL_45;
    }

LABEL_43:
    if (*(a1 + 144) == 1885892706)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v7 != 1987077987 && v7 != 1987081833)
  {
    v11 = 1987081839;
    goto LABEL_42;
  }

LABEL_45:
  v4 = sub_45A1A0(&cf, v10);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void sub_34DC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  sub_20B45C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_34DC94()
{
  v0 = sub_809C0();
  v15 = 1886216809;
  v17 = 0;
  v16 = 0uLL;
  sub_4625C(&v16, &v15, &v16, 1uLL);
  *v2 = v16;
  v3 = v17;
  strcpy(v4, "cwdv");
  v4[8] = 0;
  v5 = 3;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  v8 = 44739242;
  v10 = 0;
  v11 = 0;
  __p = 0;
  *&v16 = off_6C29F0;
  v18 = &v16;
  sub_256FB0(&v12, v0, v2, &v16);
  sub_85148(&v16);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v7[0]);
  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  if (v14)
  {
    v1 = sub_809C0();
    sub_257DAC(v1, 0x70707570u, *(v13 + 16), *(v13 + 24), 0, 0);
  }

  sub_65310(&v12);
}

void sub_34DE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_85148(v9 - 64);
  sub_46934(&a9);
  _Unwind_Resume(a1);
}

std::string *sub_34DE34(std::string *a1, const std::string *a2)
{
  v4 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = v5 + size;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      v9 = memchr(v8, 45, size);
      if (!v9)
      {
        break;
      }

      if (*v9 == 45)
      {
        goto LABEL_13;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 > 0);
  }

  v9 = v7;
LABEL_13:
  if (v9 == v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9 - v5;
  }

  return std::string::basic_string(a1, a2, 0, v10, &v12);
}

void sub_34DEDC()
{
  qword_709738 = dispatch_queue_create("VA AudioObjectPropertyListenerManager Queue", 0);
  sub_49BE8(&unk_709740);
  qword_709860 = &qword_709868;
  qword_709868 = 0;
  qword_709870 = 0;
  unk_709878 = 0;
  qword_709880 = 0;
  unk_709888 = 0;
  v0 = qword_709738;

  dispatch_queue_set_specific(v0, "AudioObjectPropertyListenerManagerQueueKey", "AudioObjectPropertyListenerManagerQueueKey", 0);
}

void sub_34DF54(_Unwind_Exception *exception_object)
{
  if (qword_709738)
  {
    dispatch_release(qword_709738);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_34DF70(uint64_t *result, unint64_t a2, _OWORD *a3)
{
  v3 = qword_709868;
  if (!qword_709868)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v4 = v3;
    v5 = *(v3 + 32);
    if (v5 != result)
    {
      break;
    }

    v6 = v4[5];
    v7 = v6 == a2;
    if (v6 > a2)
    {
LABEL_12:
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= a2)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (v7)
      {
        v8 = 0;
      }

      if ((v8 & 0x80) == 0)
      {
        return result;
      }

LABEL_18:
      v3 = v4[1];
      if (!v3)
      {
        goto LABEL_19;
      }
    }
  }

  if (v5 > result)
  {
    goto LABEL_12;
  }

  if (v5 >= result)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_34E070(uint64_t a1, unsigned int a2)
{
  if (a2 != 1819306350)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_LPMic_Injector_Aspen.cpp";
      v14 = 1024;
      v15 = 46;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_LPMic_Injector_Aspen.cpp";
      v14 = 1024;
      v15 = 47;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

uint64_t sub_34E244(caulk::build::detail *a1)
{
  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "Device_LPMic_Injector_Aspen.cpp";
    v14 = 1024;
    v15 = 20;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d initializing Device_HAL_Common", &v12, 0x12u);
  }

  sub_4ADCC0(a1);
  v4 = sub_5544(18);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "Device_LPMic_Injector_Aspen.cpp";
    v14 = 1024;
    v15 = 22;
    v16 = 1024;
    v17 = 1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d initialized Device_HAL_Common: %u", &v12, 0x18u);
  }

  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "Device_LPMic_Injector_Aspen.cpp";
    v14 = 1024;
    v15 = 26;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating controls and ports", &v12, 0x12u);
  }

  if (!(*(*a1 + 88))(a1, 1))
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "Device_LPMic_Injector_Aspen.cpp";
      v14 = 1024;
      v15 = 27;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): LPMic-Injector output device has no output streams.", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "LPMic-Injector output device has no output streams.");
  }

  sub_4B77B0(a1, &qword_6EADF0, 1);
  return 1;
}

void sub_34E4FC(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_34E538(os_unfair_lock_s *a1)
{
  sub_4ADCC0(a1);
  v2 = (*(*&a1->_os_unfair_lock_opaque + 88))(a1, 1);
  v3 = (*(*&a1->_os_unfair_lock_opaque + 88))(a1, 0);
  os_unfair_lock_opaque = a1[133]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == 1937010030 && v3 == 0)
  {
    v41 = sub_5544(14);
    v42 = *v41;
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 287;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay main audio device lacks an input stream.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CarPlay main audio device lacks an input stream.");
  }

  if (os_unfair_lock_opaque == 1937010030 && v2 == 0)
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 288;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay main audio device lacks an output stream.", buf, 0x12u);
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v46, "CarPlay main audio device lacks an output stream.");
  }

  if (os_unfair_lock_opaque == 1937006956)
  {
    if (v3)
    {
      v50 = sub_5544(14);
      v51 = *v50;
      if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
      {
        buf[0].mSelector = 136315394;
        *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
        LOWORD(buf[1].mSelector) = 1024;
        *(&buf[1].mSelector + 2) = 289;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay alternate audio device incorrectly has an input stream.", buf, 0x12u);
      }

      v52 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v52, "CarPlay alternate audio device incorrectly has an input stream.");
    }

    if (!v2)
    {
      v53 = sub_5544(14);
      v54 = *v53;
      if (*v53)
      {
        if (os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
        {
          buf[0].mSelector = 136315394;
          *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
          LOWORD(buf[1].mSelector) = 1024;
          *(&buf[1].mSelector + 2) = 290;
          _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay alternate audio device lacks an output stream.", buf, 0x12u);
        }
      }

      v55 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v55, "CarPlay alternate audio device lacks an output stream.");
    }

    goto LABEL_16;
  }

  if (os_unfair_lock_opaque == 1937006968 && (v2 != 0) == (v3 != 0))
  {
    v47 = sub_5544(14);
    v48 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 291;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay aux audio device has incorrect streams", buf, 0x12u);
    }

    v49 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v49, "CarPlay aux audio device has incorrect streams");
  }

  if (v2)
  {
LABEL_16:
    sub_15DCEC(buf);
  }

  if (v3)
  {
    sub_15DD68(buf);
  }

  *v56 = a1[67];
  strcpy(buf, "tttsbolg");
  BYTE1(buf[0].mElement) = 0;
  HIWORD(buf[0].mElement) = 0;
  v8 = sub_542F0(v56, buf, 0, 0);
  if (v8 || (v7 & 1) == 0)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = v8;
  }

  if (a1[133]._os_unfair_lock_opaque == 1937010030)
  {
    v9 = sub_5544(18);
    v10 = sub_5544(30);
    v11 = 0;
    *&buf[0].mSelector = 0x100000002;
    v12 = *(v9 + 8);
    while (1)
    {
      v13 = *(&buf[0].mSelector + v11);
      if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
      {
        break;
      }

      v11 += 4;
      if (v11 == 8)
      {
        goto LABEL_28;
      }
    }

    if ((v12 & v13) == 0)
    {
      v9 = v10;
    }

LABEL_28:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 325;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Main audio device does not support input and output.", buf, 0x12u);
    }
  }

  sub_24FF44(v56, 1886614633, a1[67]._os_unfair_lock_opaque);
  if (a1[133]._os_unfair_lock_opaque == 1937010030)
  {
    sub_34D4D4(0, 0);
  }

  strcpy(v62, "dcvsbolg");
  v62[9] = 0;
  *&v62[10] = 0;
  if ((*(*&a1->_os_unfair_lock_opaque + 16))(a1, v62))
  {
    *&buf[0].mSelector = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    LOWORD(buf[0].mElement) = 257;
    sub_FDA38(buf, @"vocoder sample rate", 0.0);
    sub_A1CA4(buf, @"vocoder type", 0);
    (*(*&a1->_os_unfair_lock_opaque + 48))(a1, v62, 0, 0, 8, buf);
    sub_A1D30(buf);
  }

  if ((*(*&a1->_os_unfair_lock_opaque + 16))(a1, &qword_6EAE98))
  {
    v15 = (*(*&a1->_os_unfair_lock_opaque + 120))(a1);
    LOBYTE(a1[136]._os_unfair_lock_opaque) = sub_3503D0(v15);
    v64 = qword_6EAE98;
    v65[0] = dword_6EAEA0;
    memset(buf, 0, 24);
    sub_2C8104(buf, &v64, &v65[1], 1uLL);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(*v56);
  }

  v16 = sub_5544(18);
  v17 = sub_5544(30);
  v18 = 0;
  *&buf[0].mSelector = 0x100000002;
  v19 = *(v16 + 8);
  while (1)
  {
    v20 = *(&buf[0].mSelector + v18);
    if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
    {
      break;
    }

    v18 += 4;
    if (v18 == 8)
    {
      goto LABEL_49;
    }
  }

  if ((v19 & v20) == 0)
  {
    v16 = v17;
  }

LABEL_49:
  v21 = *v16;
  if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_23148(v56, a1 + 2);
    v22 = v57 >= 0 ? v56 : *v56;
    buf[0].mSelector = 136315650;
    *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 426;
    HIWORD(buf[1].mScope) = 2080;
    *&buf[1].mElement = v22;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created CarPlay device: %s.", buf, 0x1Cu);
    if (v57 < 0)
    {
      operator delete(*v56);
    }
  }

  if ((*(*&a1->_os_unfair_lock_opaque + 88))(a1, 0))
  {
    v23 = sub_5544(18);
    v24 = sub_5544(30);
    v25 = 0;
    *&buf[0].mSelector = 0x100000002;
    v26 = *(v23 + 8);
    while (1)
    {
      v27 = *(&buf[0].mSelector + v25);
      if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
      {
        break;
      }

      v25 += 4;
      if (v25 == 8)
      {
        goto LABEL_63;
      }
    }

    if ((v26 & v27) == 0)
    {
      v23 = v24;
    }

LABEL_63:
    v28 = *v23;
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = (*(*&a1->_os_unfair_lock_opaque + 96))(a1, 0, 0);
      sub_23148(v56, v29 + 2);
      v30 = v57 >= 0 ? v56 : *v56;
      buf[0].mSelector = 136315650;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 427;
      HIWORD(buf[1].mScope) = 2080;
      *&buf[1].mElement = v30;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created CarPlay input stream: %s.", buf, 0x1Cu);
      if (v57 < 0)
      {
        operator delete(*v56);
      }
    }
  }

  if ((*(*&a1->_os_unfair_lock_opaque + 88))(a1, 1))
  {
    v31 = sub_5544(18);
    v32 = sub_5544(30);
    v33 = 0;
    *&buf[0].mSelector = 0x100000002;
    v34 = *(v31 + 8);
    while (1)
    {
      v35 = *(&buf[0].mSelector + v33);
      if (((v34 & v35) != 0) != ((*(v32 + 8) & v35) != 0))
      {
        break;
      }

      v33 += 4;
      if (v33 == 8)
      {
        goto LABEL_77;
      }
    }

    if ((v34 & v35) == 0)
    {
      v31 = v32;
    }

LABEL_77:
    v36 = *v31;
    if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = (*(*&a1->_os_unfair_lock_opaque + 96))(a1, 1, 0);
      sub_23148(v56, v37 + 2);
      v38 = v57 >= 0 ? v56 : *v56;
      buf[0].mSelector = 136315650;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 428;
      HIWORD(buf[1].mScope) = 2080;
      *&buf[1].mElement = v38;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created CarPlay output stream: %s.", buf, 0x1Cu);
      if (v57 < 0)
      {
        operator delete(*v56);
      }
    }
  }

  return 1;
}

void sub_3500F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3503D0(AudioObjectID a1)
{
  v15 = a1;
  strcpy(&buf, "tvtsbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  v2 = sub_542F0(&v15, &buf, 0, 0);
  *(&v5 + 1) = v3;
  *&v5 = v2;
  v4 = v5 >> 32;
  if ((v4 & 0x100000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_5544(29);
  v8 = sub_5544(24);
  v9 = 0;
  *&buf.mSelector = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *(&buf.mSelector + v9);
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_10:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "yes";
    buf.mSelector = 136315906;
    *&buf.mScope = "Device_CarPlay_Aspen.cpp";
    v18 = 70;
    v17 = 1024;
    if (!v6)
    {
      v13 = "no";
    }

    v19 = 1024;
    v20 = a1;
    v21 = 2080;
    v22 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device %u supports voice trigger: %s.", &buf, 0x22u);
  }

  return v6 != 0;
}

uint64_t sub_350560(uint64_t a1, unsigned int a2, _DWORD *a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = a2;
    do
    {
      v7 = sub_5544(18);
      v8 = *v7;
      if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v31, *a3);
        v9 = SHIBYTE(v32);
        v10 = v31[0];
        (*(*a4 + 128))(&__p, a4);
        v11 = v31;
        if (v9 < 0)
        {
          v11 = v10;
        }

        p_p = &__p;
        if (v29 < 0)
        {
          p_p = __p;
        }

        *buf = 136315906;
        *&buf[4] = "Device_CarPlay_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 236;
        *&buf[18] = 2080;
        *&buf[20] = v11;
        *&buf[28] = 2080;
        *&buf[30] = p_p;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received notification (%s) from audio device with UID %s", buf, 0x26u);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31[0]);
        }
      }

      if (*a3 == 1937012340)
      {
        v13 = (*(*a4 + 120))(a4);
        v14 = sub_3503D0(v13);
        v15 = sub_5544(18);
        v16 = *v15;
        if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a4 + 128))(v31, a4);
          v17 = v31;
          if (v32 < 0)
          {
            v17 = v31[0];
          }

          *buf = 136315906;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 255;
          *&buf[18] = 1024;
          *&buf[20] = v14;
          *&buf[24] = 2080;
          *&buf[26] = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Voice trigger support changed to %u for audio device with UID %s", buf, 0x22u);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }
        }

        if (a4[544] != v14)
        {
          a4[544] = v14;
          v28 = 0;
          v29 = 0;
          __p = &v28;
          v30 = 1886609775;
          v31[1] = 0;
          v32 = 0;
          v31[0] = 0;
          sub_4625C(v31, &v30, v31, 1uLL);
          *buf = *v31;
          *&buf[16] = v32;
          strcpy(&buf[24], "cwdv");
          buf[32] = 0;
          v34 = 3;
          v36[0] = 0;
          v36[1] = 0;
          v35 = v36;
          v37 = 44739242;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          sub_161C7C(v26, a4, buf);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(v38);
          }

          sub_477A0(v36[0]);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          *buf = 1886418288;
          sub_80C2C(&buf[8], v26);
          sub_1165C0(&__p, *buf, buf);
          sub_65310(&buf[8]);
          v18 = sub_809C0();
          sub_11ABFC(v18, &__p, 0, 0);
          sub_65310(v26);
          sub_D169C(v28);
        }
      }

      else
      {
        v19 = sub_5544(18);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(v31, *a3);
          v21 = SHIBYTE(v32);
          v22 = v31[0];
          (*(*a4 + 128))(&__p, a4);
          v23 = v31;
          if (v21 < 0)
          {
            v23 = v22;
          }

          v24 = &__p;
          if (v29 < 0)
          {
            v24 = __p;
          }

          *buf = 136315906;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 243;
          *&buf[18] = 2080;
          *&buf[20] = v23;
          *&buf[28] = 2080;
          *&buf[30] = v24;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled notification (%s) from bluetooth audio device with UID %s", buf, 0x26u);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }
        }
      }

      a3 += 3;
      --v6;
    }

    while (v6);
  }

  return 0;
}

void sub_350A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_350AE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C2F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_350B80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C2F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_350C1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C2F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_350C90(uint64_t a1)
{
  sub_350D90((a1 + 672));
  v2 = qword_6EAE98;
  v3 = dword_6EAEA0;
  memset(__p, 0, sizeof(__p));
  sub_2C8104(__p, &v2, &v4, 1uLL);
}

void sub_350D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AudioObjectID **sub_350D90(AudioObjectID **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = sub_5544(18);
    v3 = sub_5544(30);
    v4 = 0;
    *buf = 0x100000002;
    v5 = *(v2 + 8);
    while (1)
    {
      v6 = *&buf[v4];
      if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
      {
        break;
      }

      v4 += 4;
      if (v4 == 8)
      {
        goto LABEL_9;
      }
    }

    if ((v5 & v6) == 0)
    {
      v2 = v3;
    }

LABEL_9:
    v7 = *v2;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v1;
      *buf = 136315650;
      *&buf[4] = "Device_CarPlay_Aspen.cpp";
      v19 = 1024;
      v20 = 106;
      v21 = 2048;
      v22[0] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing config change listener for CarPlay device ID: %lu", buf, 0x1Cu);
    }

    sub_1DB7C8(&v17);
    v9 = AudioObjectRemovePropertyListener(*v1, "egfcbolg", sub_351044, v1);
    if (v9)
    {
      v10 = sub_5544(18);
      v11 = sub_5544(30);
      v12 = 0;
      *buf = 0x100000002;
      v13 = *(v10 + 8);
      while (1)
      {
        v14 = *&buf[v12];
        if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
        {
          break;
        }

        v12 += 4;
        if (v12 == 8)
        {
          goto LABEL_19;
        }
      }

      if ((v13 & v14) == 0)
      {
        v10 = v11;
      }

LABEL_19:
      v15 = *v10;
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v1;
        *buf = 136315906;
        *&buf[4] = "Device_CarPlay_Aspen.cpp";
        v19 = 1024;
        v20 = 114;
        v21 = 1024;
        LODWORD(v22[0]) = v9;
        WORD2(v22[0]) = 1024;
        *(v22 + 6) = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d unregistering CarPlay property listener on id %u.", buf, 0x1Eu);
      }
    }

    sub_1DB63C(&v17);

    operator delete();
  }

  return result;
}

void sub_351038(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_351044(unsigned int a1, unsigned int a2, uint64_t *a3, unsigned int *a4)
{
  if (a4)
  {
    __p = 0;
    v37 = 0;
    v38 = 0;
    sub_4EF90(&__p, a3, (a3 + 12 * a2), a2);
    if (*a4 == a1)
    {
      v6 = __p;
      v7 = v37;
      v8 = __p;
      if (__p != v37)
      {
        v8 = __p;
        while (1)
        {
          v9 = *(v8 + 2);
          *buf = *v8;
          *&buf[8] = v9;
          if (sub_15414(buf, "egfcbolg"))
          {
            break;
          }

          v8 = (v8 + 12);
          if (v8 == v7)
          {
            v8 = v7;
            break;
          }
        }
      }

      v10 = sub_5544(18);
      v11 = sub_5544(30);
      if (v8 == v7)
      {
        v22 = 0;
        *buf = 0x100000002;
        v23 = *(v10 + 8);
        while (1)
        {
          v24 = *&buf[v22];
          if (((v23 & v24) != 0) != ((*(v11 + 8) & v24) != 0))
          {
            break;
          }

          v22 += 4;
          if (v22 == 8)
          {
            goto LABEL_42;
          }
        }

        if ((v23 & v24) == 0)
        {
          v10 = v11;
        }

LABEL_42:
        v33 = *v10;
        if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *a4;
          sub_1DB6A0(&v39, v6, v7);
          v35 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          v41 = 1024;
          v42 = 150;
          v43 = 2048;
          v44 = v34;
          v45 = 2080;
          v46 = v35;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Config change listener fired for CarPlay device ID: %lu for different addresses %s", buf, 0x26u);
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v12 = 0;
        *buf = 0x100000002;
        v13 = *(v10 + 8);
        while (1)
        {
          v14 = *&buf[v12];
          if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
          {
            break;
          }

          v12 += 4;
          if (v12 == 8)
          {
            goto LABEL_28;
          }
        }

        if ((v13 & v14) == 0)
        {
          v10 = v11;
        }

LABEL_28:
        v25 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *a4;
          *buf = 136315650;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          v41 = 1024;
          v42 = 156;
          v43 = 2048;
          v44 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Config change listener fired for CarPlay device ID: %lu", buf, 0x1Cu);
        }

        v27 = *(a4 + 2);
        std::mutex::lock(v27);
        v28 = *(a4 + 3);
        if (*v28 == 1)
        {
          v29 = sub_5544(14);
          v30 = *v29;
          if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *a4;
            *buf = 136315650;
            *&buf[4] = "Device_CarPlay_Aspen.cpp";
            v41 = 1024;
            v42 = 163;
            v43 = 2048;
            v44 = v31;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Already notified for config change property on CarPlay device ID: %lu. Returning.", buf, 0x1Cu);
          }
        }

        else
        {
          *v28 = 1;
          std::condition_variable::notify_all(*(a4 + 1));
        }

        std::mutex::unlock(v27);
      }
    }

    else
    {
      v15 = sub_5544(18);
      v16 = sub_5544(30);
      v17 = 0;
      *buf = 0x100000002;
      v18 = *(v15 + 8);
      while (1)
      {
        v19 = *&buf[v17];
        if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
        {
          break;
        }

        v17 += 4;
        if (v17 == 8)
        {
          goto LABEL_19;
        }
      }

      if ((v18 & v19) == 0)
      {
        v15 = v16;
      }

LABEL_19:
      v20 = *v15;
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *a4;
        *buf = 136315906;
        *&buf[4] = "Device_CarPlay_Aspen.cpp";
        v41 = 1024;
        v42 = 138;
        v43 = 2048;
        v44 = a1;
        v45 = 2048;
        v46 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Config change listener fired for device ID: %lu not CarPlay device ID: %lu", buf, 0x26u);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  return 0;
}

void sub_3514C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  std::mutex::unlock(v10);
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_3514F4(uint64_t a1)
{
  sub_35152C(a1);

  operator delete();
}

uint64_t sub_35152C(uint64_t a1)
{
  *a1 = off_6C2D20;
  sub_350D90((a1 + 672));
  std::condition_variable::~condition_variable((a1 + 616));
  std::mutex::~mutex((a1 + 552));
  v2 = *(a1 + 536);
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_4B2820(a1);
}

BOOL sub_3515A8(const __CFString *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  sub_125D8(v4, a1);
  if ((v5 & 0x80000000) == 0)
  {
    return v5 != 0;
  }

  v1 = v4[1] != 0;
  operator delete(v4[0]);
  return v1;
}

void sub_351648(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v4 = off_6C2D20;
  v5 = *(v4 + 268);
  __p.mSelector = v5;
  strcpy(buf, "tstsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v6 = sub_542F0(&__p.mSelector, buf, 0, 0);
  v8 = v6;
  if (!v6 && (v7 & 1) != 0)
  {
    *(a1 + 532) = HIDWORD(v6);
    v9 = (*(*a1 + 120))(a1);
    v10 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    v17 = v10;
    if (v10)
    {
      v18 = v9;
      *&__p.mSelector = 0x676C6F6273747575;
      __p.mElement = 0;
      sub_293A20(buf, &v18, &__p);
      if (buf[16])
      {
        v11 = *&buf[8];
      }

      else
      {
        CFRetain(v10);
        v11 = v10;
      }

      *(a1 + 536) = v11;
      CFRelease(v10);
      *(a1 + 544) = 0;
      *(a1 + 552) = 850045863;
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *(a1 + 592) = 0u;
      *(a1 + 608) = 0;
      *(a1 + 616) = 1018212795;
      *(a1 + 624) = 0u;
      *(a1 + 640) = 0u;
      *(a1 + 649) = 0u;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v12 = sub_5544(18);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "Device_CarPlay_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 210;
    v20 = 1024;
    v21[0] = v5;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to retrieve CarPlay stream type for object %u.", buf, 0x18u);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  *v14 = &off_6DDDD0;
  v14[2] = v8;
}

void sub_351D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v17);
  sub_350D90((v13 + 672));
  std::condition_variable::~condition_variable(v16);
  std::mutex::~mutex(v15);
  sub_28C4D0(v14);
  sub_4B2820(v13);
  _Unwind_Resume(a1);
}

void sub_351E04(void *a1)
{
  sub_351E3C(a1);

  operator delete();
}

void *sub_351E3C(void *a1)
{
  *a1 = off_6C2FB8;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[35];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[33];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_42A4D8((a1 + 19));
  sub_292110((a1 + 1));
  return a1;
}

void sub_351EC0(void *a1)
{
  if (!a1[33] && !a1[35] && !a1[37] && !a1[39])
  {
    v25 = sub_5544(22);
    v26 = *v25;
    if (*v25)
    {
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "HeadsetJackHandler.cpp";
        v38 = 1024;
        v39 = 229;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d All port types are NULL...", &v36, 0x12u);
      }
    }
  }

  if (a1[35])
  {
    if (!a1[33])
    {
      v7 = sub_5544(22);
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          v9 = a1[35];
          if (v9)
          {
            v10 = std::__shared_weak_count::lock(v9);
            if (v10)
            {
              v11 = a1[34];
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
            v10 = 0;
          }

          v27 = a1[33];
          if (v27)
          {
            v28 = std::__shared_weak_count::lock(v27);
            if (v28)
            {
              v29 = a1[32];
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
            v28 = 0;
          }

          v36 = 136315906;
          v37 = "HeadsetJackHandler.cpp";
          v38 = 1024;
          v39 = 240;
          v40 = 2048;
          v41 = v11;
          v42 = 2048;
          v43 = v29;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Wired microphone Port is non-NULL but wired headphones Port is NULL... mWiredMicrophonePort: %p; mWiredHeadphonesPort: %p.", &v36, 0x26u);
          if (v28)
          {
            sub_1A8C0(v28);
          }

          if (v10)
          {
            sub_1A8C0(v10);
          }
        }
      }
    }
  }

  if ((a1[37] == 0) != (a1[39] == 0))
  {
    v2 = sub_5544(22);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v4 = a1[37];
        if (v4)
        {
          v5 = std::__shared_weak_count::lock(v4);
          if (v5)
          {
            v6 = a1[36];
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
          v5 = 0;
        }

        v12 = a1[39];
        if (v12)
        {
          v13 = std::__shared_weak_count::lock(v12);
          if (v13)
          {
            v14 = a1[38];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        v36 = 136315906;
        v37 = "HeadsetJackHandler.cpp";
        v38 = 1024;
        v39 = 251;
        v40 = 2048;
        v41 = v6;
        v42 = 2048;
        v43 = v14;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d TTY output and input are mismatched... mTTYOutputPort: %p; mTTYInputPort: %p.", &v36, 0x26u);
        if (v13)
        {
          sub_1A8C0(v13);
        }

        if (v5)
        {
          sub_1A8C0(v5);
        }
      }
    }
  }

  if (a1[37])
  {
    if (!a1[33])
    {
      v15 = sub_5544(22);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          v17 = a1[37];
          if (v17)
          {
            v18 = std::__shared_weak_count::lock(v17);
            if (v18)
            {
              v19 = a1[36];
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
            v18 = 0;
          }

          v30 = a1[33];
          if (v30)
          {
            v31 = std::__shared_weak_count::lock(v30);
            if (v31)
            {
              v32 = a1[32];
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
            v31 = 0;
          }

          v36 = 136315906;
          v37 = "HeadsetJackHandler.cpp";
          v38 = 1024;
          v39 = 262;
          v40 = 2048;
          v41 = v19;
          v42 = 2048;
          v43 = v32;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d TTY output is non-NULL, but wired headphones is NULL... mTTYOutputPort: %p; mWiredHeadphonesPort: %p.", &v36, 0x26u);
          if (v31)
          {
            sub_1A8C0(v31);
          }

          if (v18)
          {
            sub_1A8C0(v18);
          }
        }
      }
    }
  }

  if (a1[39])
  {
    if (!a1[35])
    {
      v20 = sub_5544(22);
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
        {
          v22 = a1[39];
          if (v22)
          {
            v23 = std::__shared_weak_count::lock(v22);
            if (v23)
            {
              v24 = a1[38];
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
            v23 = 0;
          }

          v33 = a1[35];
          if (v33)
          {
            v34 = std::__shared_weak_count::lock(v33);
            if (v34)
            {
              v35 = a1[34];
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
            v34 = 0;
          }

          v36 = 136315906;
          v37 = "HeadsetJackHandler.cpp";
          v38 = 1024;
          v39 = 273;
          v40 = 2048;
          v41 = v24;
          v42 = 2048;
          v43 = v35;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d TTY input is non-NULL, but wired microphone is NULL... mTTYInputPort: %p; mWiredMicrophonePort: %p.", &v36, 0x26u);
          if (v34)
          {
            sub_1A8C0(v34);
          }

          if (v23)
          {
            sub_1A8C0(v23);
          }
        }
      }
    }
  }
}

void sub_3523D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "HeadsetJackHandler.cpp";
      v9 = 1024;
      v10 = 99;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [clientData is NULL]: clientData was NULL", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "clientData was NULL");
  }

  sub_35250C(a4, a1, a2, a3);
}

void sub_35250C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 19;
  v8 = a1[19];
  v43 = a1 + 19;
  v10 = (*(v8 + 16))(a1 + 19);
  v44 = v10;
  sub_351EC0(a1);
  if (a1[33])
  {
    sub_25704(buf, a1 + 32, "", 113);
    v11 = (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v11 = 0;
  }

  if (a1[35])
  {
    sub_25704(buf, a1 + 34, "", 115);
    v12 = (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v12 = 0;
  }

  if (a1[39] && a1[37])
  {
    sub_25704(buf, a1 + 38, "", 118);
    if ((*(**buf + 152))(*buf))
    {
      sub_25704(&v40, a1 + 36, "", 118);
      v13 = (*(*v40 + 152))(v40);
      if (v41)
      {
        sub_1A8C0(v41);
      }
    }

    else
    {
      v13 = 0;
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v13 = 0;
  }

  if (a1[33])
  {
    sub_25704(buf, a1 + 32, "", 123);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  if (a1[35])
  {
    sub_25704(buf, a1 + 34, "", 126);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  if (a1[39] && a1[37])
  {
    sub_25704(buf, a1 + 38, "", 130);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    sub_25704(buf, a1 + 36, "", 131);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  if (a1[33])
  {
    v14 = sub_5544(22);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_25704(&v40, a1 + 32, "", 139);
        v16 = (*(*v40 + 152))(v40);
        *buf = 136315906;
        *&buf[4] = "HeadsetJackHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 139;
        v46 = 1024;
        *v47 = v16;
        *&v47[4] = 1024;
        *&v47[6] = v11;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Wired headphones state: %u; headphones cached state: %u.", buf, 0x1Eu);
        if (v41)
        {
          sub_1A8C0(v41);
        }
      }
    }
  }

  if (a1[35])
  {
    v17 = sub_5544(22);
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        sub_25704(&v40, a1 + 34, "", 145);
        v19 = (*(*v40 + 152))(v40);
        *buf = 136315906;
        *&buf[4] = "HeadsetJackHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 145;
        v46 = 1024;
        *v47 = v19;
        *&v47[4] = 1024;
        *&v47[6] = v12;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Wired microphone state: %u; wire microphone cached state: %u.", buf, 0x1Eu);
        if (v41)
        {
          sub_1A8C0(v41);
        }
      }
    }
  }

  if (!a1[39])
  {
    v40 = &v40;
    v41 = &v40;
    v42 = 0;
    goto LABEL_51;
  }

  if (a1[37])
  {
    v20 = sub_5544(22);
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "HeadsetJackHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 150;
        v46 = 1024;
        *v47 = v13;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d TTY cached state (all connected): %u.", buf, 0x18u);
      }
    }
  }

  v22 = a1[39];
  v40 = &v40;
  v41 = &v40;
  v42 = 0;
  if (!v22 || !a1[37])
  {
LABEL_51:
    if (v13)
    {
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  sub_25704(buf, a1 + 38, "", 160);
  if ((*(**buf + 152))(*buf))
  {
    sub_25704(&v37, a1 + 36, "", 160);
    v23 = (*(*v37 + 152))(v37);
    if (v38)
    {
      sub_1A8C0(v38);
    }
  }

  else
  {
    v23 = 0;
  }

  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v13 != v23)
  {
LABEL_57:
    sub_849B8(&v40, a1 + 38);
  }

LABEL_58:
  if (a1[35])
  {
    sub_25704(buf, a1 + 34, "", 168);
    v24 = v12 ^ (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v24)
    {
      sub_849B8(&v40, a1 + 34);
    }
  }

  if (a1[33])
  {
    sub_25704(buf, a1 + 32, "", 173);
    v25 = v11 ^ (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v25)
    {
      sub_849B8(&v40, a1 + 32);
    }

    v26 = a1[33];
    v37 = &v37;
    v38 = &v37;
    v39 = 0;
    if (v26 && ((a1[35] != 0) & v11) == 1)
    {
      sub_25704(buf, a1 + 32, "", 183);
      if ((*(**buf + 152))(*buf))
      {
        sub_25704(&__p, a1 + 34, "", 184);
        v27 = v12 ^ (*(*__p.__r_.__value_.__l.__data_ + 152))(__p.__r_.__value_.__r.__words[0]);
        if (__p.__r_.__value_.__l.__size_)
        {
          sub_1A8C0(__p.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        v27 = 0;
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v27)
      {
        sub_849B8(&v37, a1 + 32);
      }
    }
  }

  else
  {
    v37 = &v37;
    v38 = &v37;
    v39 = 0;
  }

  v28 = sub_5544(22);
  v29 = *v28;
  if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
  {
    sub_26D058(v35, v41, &v40);
    sub_8E920(&__p, v35, 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HeadsetJackHandler.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 194;
    v46 = 2080;
    *v47 = p_p;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d fullCachePortList: %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_65310(v35);
  }

  v31 = sub_5544(22);
  v32 = *v31;
  if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
  {
    sub_26D058(v35, v38, &v37);
    sub_8E920(&__p, v35, 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &__p;
    }

    else
    {
      v33 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HeadsetJackHandler.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 198;
    v46 = 2080;
    *v47 = v33;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d portPropertyUpdatePortList: %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_65310(v35);
  }

  if (v42)
  {
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    *buf = 1717793397;
    sub_80C2C(&buf[8], &v40);
    sub_1165C0(&__p, *buf, buf);
    sub_65310(&buf[8]);
    if (!v39)
    {
      goto LABEL_101;
    }
  }

  else
  {
    if (!v39)
    {
      goto LABEL_102;
    }

    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
  }

  *buf = 1886418288;
  sub_80C2C(&buf[8], &v37);
  sub_1165C0(&__p, *buf, buf);
  sub_65310(&buf[8]);
LABEL_101:
  v34 = sub_809C0();
  sub_11ABFC(v34, &__p, 0, 0);
  sub_D169C(__p.__r_.__value_.__l.__size_);
LABEL_102:
  sub_351EC0(a1);
  sub_65310(&v37);
  sub_65310(&v40);
  if (v10)
  {
    (*(*v9 + 24))(v9);
  }
}