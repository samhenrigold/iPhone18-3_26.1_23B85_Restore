void sub_2A0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char *a53, uint64_t a54, uint64_t a55, void *a56)
{
  sub_98A08(a53);
  sub_477A0(a56);
  _Unwind_Resume(a1);
}

uint64_t sub_2A0CAC(void *a1)
{
  inAddress = 0x676C6F6272647623uLL;
  PropertyDataSize = AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, &inAddress + 3);
  v3 = PropertyDataSize;
  if (PropertyDataSize)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DeviceListener_Aspen.cpp";
      v19 = 1024;
      v20 = 249;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to read the property size for kAudioHardwarePropertyPhysicalDevices", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v3;
  }

  HIDWORD(inAddress) += 40;
  __chkstk_darwin(PropertyDataSize);
  v5 = &buf[-((v4 + 15) & 0x1FFFFFFF0) - 16];
  result = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &inAddress + 3, v5);
  v7 = result;
  if (result)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DeviceListener_Aspen.cpp";
      v19 = 1024;
      v20 = 260;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to read current device list", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = v7;
  }

  v8 = HIDWORD(inAddress);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      result = sub_75788(a1, *v5, v5);
      v5 += 4;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_2A0F64(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1[2])
    {
      v4 = sub_5544(7);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v25 = "DeviceListener_Aspen.cpp";
          v26 = 1024;
          v27 = 299;
          v28 = 2080;
          v29[0] = a2;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s", buf, 0x1Cu);
        }
      }
    }
  }

  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v6 != v8)
  {
    do
    {
      v9 = *(v7 + 7);
      sub_2A1214(__p, v9);
      v10 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v10 = __p[1];
      }

      if (v10)
      {
        v11 = sub_5544(7);
        v12 = *v11;
        if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v13 = __p;
        if ((v23 & 0x80u) != 0)
        {
          v13 = __p[0];
        }

        *buf = 136315906;
        v25 = "DeviceListener_Aspen.cpp";
        v26 = 1024;
        v27 = 308;
        v28 = 1024;
        LODWORD(v29[0]) = v9;
        WORD2(v29[0]) = 2080;
        *(v29 + 6) = v13;
        v14 = v12;
        v15 = "%25s:%-5d AudioObjectID: %u, UID = %s";
        v16 = 34;
      }

      else
      {
        v17 = sub_5544(7);
        v18 = *v17;
        if (!*v17 || !os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        *buf = 136315650;
        v25 = "DeviceListener_Aspen.cpp";
        v26 = 1024;
        v27 = 312;
        v28 = 1024;
        LODWORD(v29[0]) = v9;
        v14 = v18;
        v15 = "%25s:%-5d AudioObjectID: %u, UID is NULL";
        v16 = 24;
      }

      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, buf, v16);
LABEL_19:
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v19 = v7[1];
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
          v20 = v7[2];
          v21 = *v20 == v7;
          v7 = v20;
        }

        while (!v21);
      }

      v7 = v20;
    }

    while (v6 != v20);
  }
}

void sub_2A11EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A1214(void *a1, AudioObjectID inObjectID)
{
  outData = 0;
  inAddress.mElement = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6275696420;
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData || (ioDataSize == 8 ? (v5 = outData == 0) : (v5 = 1), v5))
  {
    v6 = sub_5544(7);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      *&buf[4] = "DeviceListener_Aspen.cpp";
      v23 = 1024;
      *cf = 281;
      *&cf[4] = 1024;
      *&cf[6] = inObjectID;
      v25 = 1024;
      *v26 = PropertyData;
      *&v26[4] = 1024;
      *&v26[6] = ioDataSize;
      v27 = 2048;
      v28 = outData;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d failed to read device UID for device %u; device may have already been removed (status = %d, propSize = %u, uid = %p)", buf, 0x2Eu);
    }

    if (outData)
    {
      CFRelease(outData);
      outData = 0;
    }
  }

  v8 = sub_5544(7);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        *&v17.mSelector = 0x676C6F626C6E616DLL;
        v17.mElement = 0;
        if (AudioObjectHasProperty(inObjectID, &v17))
        {
          v21 = inObjectID;
          v15 = 0x676C6F626C6E616DLL;
          LODWORD(v16) = 0;
          sub_12794C(buf, &v21, &v15, 0, 0);
          if (*buf || (v25 & 1) == 0)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v14 = *buf;
            *exception = &off_6DDDD0;
            exception[2] = v14;
          }

          sub_224064(&v15, *&cf[2]);
          v15 = &off_6DACD8;
          if (v25 == 1)
          {
            sub_8AAAC(&buf[8]);
          }

          *buf = 136315906;
          *&buf[4] = "DeviceListener_Aspen.cpp";
          v23 = 1024;
          *cf = 289;
          *&cf[4] = 1024;
          *&cf[6] = inObjectID;
          v25 = 2112;
          *v26 = v16;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioObjectID %u is kAudioObjectPropertyName %@.", buf, 0x22u);
          sub_8AAAC(&v15);
        }

        else
        {
          *buf = 136315906;
          *&buf[4] = "DeviceListener_Aspen.cpp";
          v23 = 1024;
          *cf = 289;
          *&cf[4] = 1024;
          *&cf[6] = inObjectID;
          v25 = 2112;
          *v26 = @"<unknown>";
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioObjectID %u is kAudioObjectPropertyName %@.", buf, 0x22u);
        }
      }
    }
  }

  v10 = outData;
  if (outData)
  {
    *buf = outData;
    v11 = CFGetTypeID(outData);
    if (v11 != CFStringGetTypeID())
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
    }

    sub_F76D4(a1, v10);
    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2A15E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A1658(uint64_t a1)
{
  v2 = sub_5544(7);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "DeviceListener_Aspen.cpp";
    v6 = 1024;
    v7 = 159;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error Occured handling a Device Update", &v4, 0x12u);
  }

  sub_2A0F64((a1 + 72), "Cached Devices");
  sub_2A0F64((a1 + 48), "Fetched Devices");
}

uint64_t **sub_2A1738(unsigned int **a1, unsigned int *a2, unsigned int **a3, unsigned int *a4, uint64_t **a5)
{
  v7 = a2;
  if (a1 == a3)
  {
    while (v7 != a4)
    {
      v8 = *v7++;
      sub_1C4454(a5, v8);
    }
  }

  else
  {
    v11 = *a1 + 1024;
    if (v11 != a2)
    {
      do
      {
        v12 = *v7++;
        sub_1C4454(a5, v12);
      }

      while (v7 != v11);
    }

    for (i = a1 + 1; i != a3; ++i)
    {
      v14 = 0;
      v15 = *i;
      do
      {
        sub_1C4454(a5, v15[v14++]);
      }

      while (v14 != 1024);
    }

    for (j = *i; j != a4; ++j)
    {
      v17 = *j;
      sub_1C4454(a5, v17);
    }
  }

  return a5;
}

uint64_t sub_2A1810(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 128;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_2A1978(void **a1)
{
  sub_477A0(a1[10]);
  sub_477A0(a1[7]);
  sub_477A0(a1[4]);
  sub_477A0(a1[1]);
  return a1;
}

void sub_2A19BC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    sub_1DC9A4(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1DC8A0(a1, &v9);
}

void sub_2A1E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_2A1E70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 8;
  v8 = *(a1 + 8);
  v25[1] = a1 + 8;
  v10 = (*(v8 + 16))(a1 + 8);
  v11 = *(a1 + 136);
  v26 = v10;
  if ((a2 == 0) != (v11 != 0))
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "DeviceListener_Aspen.cpp";
      *&block[12] = 1024;
      *&block[14] = 63;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): DeviceListener_Aspen::SetDeviceListener requires that either proc be valid (non-NULL) if no listener is registered, or NULL, if a listener is already registered.", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "DeviceListener_Aspen::SetDeviceListener requires that either proc be valid (non-NULL) if no listener is registered, or NULL, if a listener is already registered.");
LABEL_27:
  }

  v12 = v10;
  if (!a2 && a3)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "DeviceListener_Aspen.cpp";
      *&block[12] = 1024;
      *&block[14] = 64;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): DeviceListener_Aspen::SetDeviceListener requires that clientData be NULL if proc is NULL", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "DeviceListener_Aspen::SetDeviceListener requires that clientData be NULL if proc is NULL");
    goto LABEL_27;
  }

  *(a1 + 152) = *a4;
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  if (a1 + 152 != a4)
  {
    sub_26D7C0((a1 + 160), *(a4 + 8), (a4 + 16));
    a2 = *(a1 + 136);
  }

  if (a2)
  {
    v25[0] = a1;
    v13 = sub_68E60();
    if (dispatch_get_specific("VirtualAudioQueueKey") == "VirtualAudioQueueKey")
    {
      sub_2A00C4(a1);
    }

    else
    {
      *&v27[0].mSelector = v25;
      *block = _NSConcreteStackBlock;
      *&block[8] = 0x40000000;
      *&block[16] = sub_2A2588;
      v29 = &unk_6BEC98;
      v30 = v27;
      dispatch_sync(v13, block);
    }

    *&v27[0].mSelector = 0x676C6F6272647623;
    v27[0].mElement = 0;
    sub_4E890();
    v16 = sub_73838(1u, v27, sub_2A28A8, a1);
    if (v16)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *block = 136315394;
        *&block[4] = "DeviceListener_Aspen.cpp";
        *&block[12] = 1024;
        *&block[14] = 92;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to add device listener", block, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = v16;
    }
  }

  else
  {
    strcpy(block, "#vdrbolg");
    block[9] = 0;
    *&block[10] = 0;
    sub_4E890();
    sub_74D2C((&dword_0 + 1), block, sub_2A28A8, a1);
    v15 = *(a1 + 120);
    v14 = (a1 + 120);
    sub_477A0(v15);
    *v14 = 0;
    v14[1] = 0;
    *(v14 - 1) = v14;
  }

  if (v12)
  {
    (*(*v9 + 24))(v9);
  }
}

void sub_2A229C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *v2 = 0;
    v2[1] = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_2A22B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 buf, __int128 a19, int a20, __int16 a21, __int16 a22, int a23)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_end_catch();
  if (a2 == 3)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v25[2]);
      p_p = __p;
      if (a17 >= 0)
      {
        p_p = &__p;
      }

      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 660;
      WORD1(a19) = 2080;
      *(&a19 + 4) = p_p;
      WORD6(a19) = 2080;
      *(&a19 + 14) = "";
      a22 = 1024;
      a23 = 35;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a17 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x2A2018);
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    v31 = sub_5544(14);
    v32 = *v31;
    if (!*v31 || !os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v33 = (*(*v30 + 16))(v30);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a19) = 2080;
    *(&a19 + 4) = v33;
    WORD6(a19) = 2080;
    *(&a19 + 14) = "";
    a22 = 1024;
    a23 = 35;
    v34 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v35 = v32;
    v36 = 44;
  }

  else
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (!*v37 || !os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a19) = 2080;
    *(&a19 + 4) = "";
    WORD6(a19) = 1024;
    *(&a19 + 14) = 35;
    v34 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v35 = v38;
    v36 = 34;
  }

  _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, v34, &buf, v36);
  goto LABEL_17;
}

void sub_2A2504(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  sub_224F4C(va);
  JUMPOUT(0x2A2580);
}

void sub_2A252C(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x2A2580);
}

void sub_2A253C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_free_exception(v2);
  sub_224F4C(va);
  JUMPOUT(0x2A2580);
}

void sub_2A25F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  __cxa_rethrow();
}

void sub_2A2618(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    JUMPOUT(0x2A25FCLL);
  }

  __cxa_end_catch();
  if (a2 == 3)
  {
    v23 = __cxa_begin_catch(a1);
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v23[2]);
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
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x2A25C4);
  }

  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    v29 = sub_5544(14);
    v30 = *v29;
    if (!*v29 || !os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v31 = (*(*v28 + 16))(v28);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v31;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 47;
    v32 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v33 = v30;
    v34 = 44;
  }

  else
  {
    v35 = sub_5544(14);
    v36 = *v35;
    if (!*v35 || !os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
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
    v32 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v33 = v36;
    v34 = 34;
  }

  _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, v32, &buf, v34);
  goto LABEL_17;
}

void sub_2A288C(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x2A25FCLL);
}

void sub_2A28A8(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        for (i = 0; i != a2; ++i)
        {
          v5 = *a3;
          a3 += 3;
          if (v5 == 1919186467)
          {
            sub_68E60();
            operator new();
          }
        }

        v6 = sub_5544(14);
        v7 = *v6;
        if (*v6)
        {
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "DeviceListener_Aspen.cpp";
            v19 = 1024;
            v20 = 131;
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate kAudioHardwarePropertyPhysicalDevices in inAddresses", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        v9 = &std::runtime_error::~runtime_error;
        std::runtime_error::runtime_error(exception, "Unable to locate kAudioHardwarePropertyPhysicalDevices in inAddresses");
LABEL_11:
        __cxa_throw(exception, v10, v9);
      }

      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "DeviceListener_Aspen.cpp";
        v19 = 1024;
        v20 = 117;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    else
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "DeviceListener_Aspen.cpp";
        v19 = 1024;
        v20 = 116;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }
  }

  else
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DeviceListener_Aspen.cpp";
      v19 = 1024;
      v20 = 115;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  v9 = &std::logic_error::~logic_error;
  std::logic_error::logic_error(exception, "Precondition failure.");
  goto LABEL_11;
}

void sub_2A2C04(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v21);
  if (a2 == 3)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v24[2]);
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
      a21 = 132;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_19:
    __cxa_end_catch();
    JUMPOUT(0x2A2A00);
  }

  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v29 = v28;
    v30 = sub_5544(14);
    v31 = *v30;
    if (!*v30 || !os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v32 = (*(*v29 + 16))(v29);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a17) = 2080;
    *(&a17 + 4) = v32;
    WORD6(a17) = 2080;
    *(&a17 + 14) = "";
    a20 = 1024;
    a21 = 132;
    v33 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v34 = v31;
    v35 = 44;
  }

  else
  {
    v36 = sub_5544(14);
    v37 = *v36;
    if (!*v36 || !os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a17) = 2080;
    *(&a17 + 4) = "";
    WORD6(a17) = 1024;
    *(&a17 + 14) = 132;
    v33 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v34 = v37;
    v35 = 34;
  }

  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, v33, &buf, v35);
  goto LABEL_19;
}

void sub_2A2F38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
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
      a21 = 98;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x2A2EF0);
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
    a21 = 98;
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
    *(&a17 + 14) = 98;
    v31 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v32 = v35;
    v33 = 34;
  }

  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v31, &buf, v33);
  goto LABEL_17;
}

void sub_2A31DC(unint64_t a1)
{
  sub_2A3214(a1);

  operator delete();
}

unint64_t sub_2A3214(unint64_t a1)
{
  *a1 = off_6BEC60;
  v2 = a1 + 8;
  v3 = (*(*(a1 + 8) + 16))(a1 + 8);
  if (*(a1 + 136) != 0)
  {
    v4 = sub_5544(7);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v7.mSelector = 136315394;
        *&v7.mScope = "DeviceListener_Aspen.cpp";
        v8 = 1024;
        v9 = 48;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destructor of DeviceListener_Aspen called while the DeviceListenerProc / client data was still valid...", &v7, 0x12u);
      }
    }
  }

  *&v7.mSelector = 0x676C6F6272647623;
  v7.mElement = 0;
  sub_4E890();
  sub_74D2C((&dword_0 + 1), &v7, sub_2A28A8, a1);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  sub_98A08(*(a1 + 168));
  sub_477A0(*(a1 + 120));
  sub_42A4D8(v2);
  return a1;
}

void sub_2A33B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2A33C8(void *a1)
{
  v4 = +[NSFileManager defaultManager];
  v2 = [v4 temporaryDirectory];
  v3 = [v2 path];
  sub_53E8(a1, [v3 UTF8String]);
}

uint64_t sub_2A3480(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886216809)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 113;
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
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 114;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_2A3654(uint64_t a1)
{
  sub_4ADCC0(a1);
  if (((*(a1 + 280) - *(a1 + 272)) & 0xFFFFFFFF0) != 0)
  {
    sub_24FEE8(v19, qword_6E8C88);
    v2 = sub_5544(18);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = v14;
      sub_2500F8(v14, v19);
      if (v15 < 0)
      {
        v4 = v14[0];
      }

      if (*(a1 + 471) < 0)
      {
        sub_54A0(__p, *(a1 + 448), *(a1 + 456));
      }

      else
      {
        *__p = *(a1 + 448);
        v13 = *(a1 + 464);
      }

      v5 = __p;
      if (v13 < 0)
      {
        v5 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "Device_Puffin.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 91;
      *&buf[18] = 2080;
      *&buf[20] = v4;
      v17 = 2080;
      v18 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a Puffin output port with name %s and UID %s", buf, 0x26u);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }

    memset(buf, 0, 24);
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    v6 = *(a1 + 88);
    v10[0] = *(a1 + 80);
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a1 + 471) < 0)
    {
      sub_54A0(__p, *(a1 + 448), *(a1 + 456));
    }

    else
    {
      *__p = *(a1 + 448);
      v13 = *(a1 + 464);
    }

    sub_20EAA4(&v11, &qword_6E8C88, v10, buf, v19, __p, v14, "");
  }

  v7 = sub_5544(14);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    *v19 = 136315394;
    *&v19[4] = "Device_Puffin.cpp";
    v20 = 1024;
    v21 = 85;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Puffin audio device has no input streams", v19, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Puffin audio device has no input streams");
}

void sub_2A3978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(v26 - 112);
  _Unwind_Resume(a1);
}

void sub_2A3A10(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_2A3A4C(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886613611)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 261;
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
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 262;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_2A3C20(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if (((*(a1 + 38) - *(a1 + 37)) & 0xFFFFFFFF0) != 0)
  {
    v2 = *(a1 + 11);
    *buf = *(a1 + 10);
    v7 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v3 = sub_5544(14);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "Device_Puffin.cpp";
    v10 = 1024;
    v11 = 225;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Puffin audio device has no output streams", &v8, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Puffin audio device has no output streams");
}

void sub_2A4034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(v26 - 128);
  _Unwind_Resume(a1);
}

unint64_t sub_2A4108(void *a1, __n128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0uLL;
  sub_318678(a1, &v4);
  if (v4.n128_u64[1])
  {
    sub_1A8C0(v4.n128_u64[1]);
  }

  return v3.n128_u64[0];
}

void sub_2A4154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A416C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2A41E0(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  v9 = a3;
  if (a2->mSelector == 1064725619)
  {
    if (a2->mScope != 1869968496)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_4DFC0(a1);
    if (!AudioObjectHasProperty(*(a1 + 268), a2))
    {
LABEL_3:
      v12 = sub_5544(14);
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v21 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(__p, &v21);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003332927;
    }
  }

  if ((v9 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v21 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v21);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = &off_6DDDD0;
    v16[2] = 561211770;
  }

  if (!a6)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v21 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v21);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561211770;
  }

  if (a2->mSelector == 1064725619)
  {
    v14 = *a5;
    if (v14 != sub_2A47DC(a1, a2, v9, a4))
    {
      v19 = sub_5544(14);
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        v21 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(__p, &v21);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = &off_6DDDD0;
      v20[2] = 561211770;
    }

    *a6 = 1;
  }

  else
  {

    sub_5C0D8(a1, a2, v9, a4, a5, a6);
  }
}

void sub_2A47B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2A47DC(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (a2->mSelector == 1064725619)
  {
    if (a2->mScope != 1869968496)
    {
LABEL_3:
      v8 = sub_5544(14);
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v13 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(__p, &v13);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      v10 = 2003332927;
      goto LABEL_18;
    }
  }

  else
  {
    sub_4DFC0(a1);
    if (!AudioObjectHasProperty(*(a1 + 268), a2))
    {
      goto LABEL_3;
    }
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v13);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v10 = 561211770;
LABEL_18:
    exception[2] = v10;
  }

  if (a2->mSelector == 1064725619)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_2A4B24(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1064725619)
  {
    return a2->mScope == 1869968496;
  }

  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

void sub_2A4B8C(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_2A4BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  result = (*(*a1 + 16))(a1, a2, a3, a4, a5);
  if ((result & 1) == 0)
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *a2;
      v19 = *(a2 + 8);
      sub_22CE0(__p, &v18);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 2003332927;
LABEL_20:
    exception[2] = v15;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *a2;
      v19 = *(a2 + 8);
      sub_22CE0(__p, &v18);
    }

    goto LABEL_19;
  }

  if (!a6)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *a2;
      v19 = *(a2 + 8);
      sub_22CE0(__p, &v18);
    }

LABEL_19:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 561211770;
    goto LABEL_20;
  }

  if (*a2 == 1886810226)
  {
    *a6 = 1;
  }

  else
  {

    return sub_24DFD8(a1, a2, a3, a4, v12, a6);
  }

  return result;
}

uint64_t sub_2A4FA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      sub_22CE0(__p, &v13);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 2003332927;
LABEL_15:
    exception[2] = v11;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      sub_22CE0(__p, &v13);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 561211770;
    goto LABEL_15;
  }

  if (*a2 == 1886810226)
  {
    return 4;
  }

  sub_24E33C(a1, a2, a3, a4);
  return 0;
}

void sub_2A528C(void *a1)
{
  sub_24FAA4(a1);

  operator delete();
}

void sub_2A52F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 200);
  v6[0] = *(a1 + 192);
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v7, v6, "", 269);
  v4 = *(v7 + 536);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_125D8(a2, v4);
  if (v8)
  {
    sub_1A8C0(v8);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_2A53D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  __cxa_free_exception(v13);
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2A5414(uint64_t a1)
{
  v1 = *(a1 + 200);
  v4[0] = *(a1 + 192);
  v4[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v5, v4, "", 264);
  v2 = *(v5 + 544);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  return v2;
}

void sub_2A5488(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2A54A0(uint64_t a1)
{
  v1 = *(a1 + 200);
  v4[0] = *(a1 + 192);
  v4[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v5, v4, "", 259);
  v2 = sub_3515A8(*(v5 + 536));
  if (v6)
  {
    sub_1A8C0(v6);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  return v2;
}

void sub_2A5520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A5578(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_2A55B4(uint64_t a1, int a2, int a3)
{
  if (((a2 - 1886614625) > 0xE || ((1 << (a2 - 97)) & 0x4101) == 0) && a2 != 1885565044 && a2 != 1886609775)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_CarPlay_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 31;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 != 1885544823 && a3 != 1885566825)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_CarPlay_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 32;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "Precondition failure.");
  }

  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  if (a2 > 1886614632)
  {
    if (a2 != 1886614633 && a2 != 1886614639)
    {
      goto LABEL_21;
    }
  }

  else if (a2 != 1885565044)
  {
    if (a2 == 1886614625)
    {
      v16 = 1987279218;
      sub_75788(buf, 0x76737972u, &v16);
      *a1 = 1886614625;
      *(a1 + 4) = a3;
      *(a1 + 8) = 1701869160;
      *(a1 + 12) = 1;
      sub_44E44((a1 + 16), buf);
LABEL_22:
      v9 = *(a1 + 40) & 0xF800;
      v7 = 660;
      goto LABEL_23;
    }

LABEL_21:
    v16 = 1987277417;
    sub_75788(buf, 0x76737269u, &v16);
    *a1 = a2;
    *(a1 + 4) = a3;
    *(a1 + 8) = 1701869160;
    *(a1 + 12) = 1;
    sub_44E44((a1 + 16), buf);
    goto LABEL_22;
  }

  v16 = 1986291046;
  sub_75788(buf, 0x76646566u, &v16);
  if (a2 == 1886614633)
  {
    v16 = 1987276900;
    sub_75788(buf, 0x76737064u, &v16);
    v16 = 1987011684;
    sub_75788(buf, 0x766F6464u, &v16);
  }

  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 1701869160;
  *(a1 + 12) = 1;
  sub_44E44((a1 + 16), buf);
  v6 = a2 == 1886614633;
  if (a2 == 1885565044)
  {
    v6 = 1;
  }

  v7 = *(a1 + 40) & 0xF800;
  if (a2 == 1885565044)
  {
    v8 = 710;
  }

  else
  {
    v8 = 726;
  }

  v9 = v8 | v6;
LABEL_23:
  *(a1 + 40) = v9 | v7;
  sub_477A0(*&buf[8]);
}

void *sub_2A59F0(void *a1, void *a2, __int128 *a3, __int128 *a4, int a5, int a6)
{
  sub_2A55B4(buf, a5, a6);
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  sub_53E8(__p, "CarPlayPartnershipUID");
  sub_25160C(a1, buf, a2, v25, a3, a4, v24, __p, 0, 1);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v24;
  sub_72C14(__p);
  sub_477A0(*&v30[4]);
  *a1 = &off_6BF0A8;
  if (a5 != 1885565044 && a5 != 1886614633 && a5 != 1886614639)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_CarPlay_Aspen.cpp";
      v27 = 1024;
      v28 = 132;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v11 = sub_5544(24);
  v12 = sub_5544(28);
  v13 = 0;
  *buf = 0x100000002;
  v14 = *(v11 + 8);
  while (1)
  {
    v15 = *&buf[v13];
    if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_12;
    }
  }

  if ((v14 & v15) == 0)
  {
    v11 = v12;
  }

LABEL_12:
  v16 = *v11;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = "Input";
    *&buf[4] = "Port_CarPlay_Aspen.cpp";
    *buf = 136315650;
    if (a5 == 1886614639)
    {
      v17 = "Output";
    }

    v27 = 1024;
    v28 = 133;
    v29 = 2080;
    *v30 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating CarPlay Main Audio %s port", buf, 0x1Cu);
  }

  return a1;
}

void sub_2A5D40(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_2A5D7C(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  *a2 = 1;
  if (a1 <= 195)
  {
    switch(a1)
    {
      case 9:

        sub_4E572C();
      case 10:
        goto LABEL_53;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 44:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 76:
      case 79:
      case 82:
      case 89:
        goto LABEL_71;
      case 17:
      case 18:
        buf[0] = 0;
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        LOBYTE(v35) = 0;
        sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
        *&v41[6] = 0;
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        *&v41[8] = 257;
        *v41 = 16843009;
        *&v41[4] = 257;
        *&v41[10] = 16843009;
        *&v36[2] = 4;
        __src[0] = 0x300000002;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        LODWORD(__src[0]) = 4;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        HIWORD(v43) = 257;
        *__src = xmmword_517160;
        sub_1DFEA0(&v44, __src, &v29);
        v118 = 1077936128;
        v119 = 1;
        HIWORD(v97) = 257;
        if ((v198 & 1) == 0)
        {
          v198 = 1;
        }

        v197 = 2;
        operator new();
      case 19:
      case 20:
      case 40:
      case 41:
      case 45:
        goto LABEL_3;
      case 26:

        sub_28BE5C();
        return;
      case 27:

        sub_3FF66C(a1, a2);
        return;
      case 28:

        sub_3FF748(a1, a2);
        return;
      case 29:
      case 30:
      case 42:
      case 43:
        goto LABEL_9;
      case 31:

        sub_3188AC();
      case 32:

        sub_2A9DD0(a1, a2);
        return;
      case 33:

        sub_2AA418(a1, a2);
        return;
      case 34:

        sub_2AA4F4(a1, a2);
        return;
      case 35:

        sub_2AA5D0(a1, a2);
        return;
      case 36:

        sub_2DEC34(a1, a2);
      case 37:

        sub_2DECB0(a1, a2);
      case 38:
      case 39:
        buf[0] = 0;
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        LOBYTE(v35) = 0;
        sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
        *&v41[6] = 0;
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        *&v41[8] = 257;
        *v41 = 16843009;
        *&v41[4] = 257;
        *&v41[10] = 16843009;
        *&v36[2] = 4;
        __src[0] = 0x300000002;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        LODWORD(__src[0]) = 4;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        HIWORD(v43) = 257;
        *__src = xmmword_517160;
        sub_1DFEA0(&v44, __src, &v29);
        v118 = 1077936128;
        v119 = 1;
        HIWORD(v97) = 257;
        if ((v198 & 1) == 0)
        {
          v198 = 1;
        }

        v197 = 2;
        operator new();
      case 46:

        sub_2ACCD4(a1, a2);
        return;
      case 73:

        sub_452894();
        return;
      case 74:

        sub_4016D4();
      case 75:

        sub_406EF0();
      case 77:

        sub_36CDB8();
        return;
      case 78:

        sub_36D83C();
        return;
      case 80:
      case 81:
        sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        *v41 = 0;
        v6 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
        v41[4] = (v6 > 0xFFu) & v6;
        v41[5] = 1;
        *&v41[6] = 0;
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        LOBYTE(v34) = 1;
        *buf = 1953460273;
        LOBYTE(v35) = 1;
        HIDWORD(v34) = 1;
        *&v36[2] = 2;
        LODWORD(__src[0]) = 1;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        __src[0] = 0x200000001;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        *v41 = 0x101010101000101;
        *&v41[12] = 257;
        v43 = 16843009;
        v93 = -1047527424;
        v94 = 1;
        v102 = 1103101952;
        v103 = 1;
        v108 = 0;
        v109 = 1;
        v110 = 0;
        v111 = 1;
        v106 = 0;
        v107 = 1;
        v122 = 0;
        v123 = 1;
        v112 = -1040187392;
        v113 = 1;
        v95 = 0;
        v96 = 1;
        v124 = 16843009;
        if ((v136 & 1) == 0)
        {
          v136 = 1;
        }

        v135 = 2;
        if ((v138 & 1) == 0)
        {
          v138 = 1;
        }

        v137 = 2;
        if ((v140 & 1) == 0)
        {
          v140 = 1;
        }

        v139 = 0;
        operator new();
      case 83:

        sub_3E2E58();
        return;
      case 84:

        sub_325AD0();
        return;
      case 85:

        sub_30DB50(a1, a2);
      case 86:

        sub_379334();
      case 87:

        sub_24AEF0(a1, a2);
        return;
      case 88:

        sub_2AA6AC(a1, a2);
        return;
      case 90:
      case 91:
        goto LABEL_22;
      case 92:

        sub_4C6440();
      case 93:

        sub_30D2BC(a1, a2);
      case 94:

        sub_29F04C(a1, a2);
      case 95:

        sub_29FC0C(a1, a2);
      case 96:

        sub_4F010C();
        return;
      case 97:

        sub_1F7A88(a1, a2);
        return;
      case 98:
      case 99:
        goto LABEL_12;
      case 100:

        sub_2E6C70(a1, a2);
        return;
      case 101:

        sub_44CCE0();
        return;
      case 102:
      case 103:
        goto LABEL_63;
      case 104:
      case 105:
        sub_3BE980(buf);
      case 106:
      case 107:
        goto LABEL_20;
      default:
        if (a1 == 180)
        {
LABEL_53:
          sub_4E57A8(buf);
        }

        if (a1 != 195)
        {
          goto LABEL_71;
        }

        sub_44DFEC();
        break;
    }

    return;
  }

  if (a1 > 2029)
  {
    if (a1 <= 8020)
    {
      if ((a1 - 2030) < 2)
      {
LABEL_22:
        *&v36[2] = sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        *v41 = 0;
        v4 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
        v41[4] = (v4 > 0xFFu) & v4;
        v41[5] = 1;
        *&v41[6] = 0;
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 256;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        LOBYTE(v34) = 1;
        *buf = 1953460273;
        LOBYTE(v35) = 1;
        HIDWORD(v34) = 1;
        *&v36[2] = sub_310AF4();
        LOBYTE(v37) = 1;
        LODWORD(__src[0]) = 1;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        __src[0] = 0x200000001;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        *v41 = 16777473;
        *&v41[6] = 257;
        v43 = 16843009;
        v93 = -1047527424;
        v94 = 1;
        v102 = 1103101952;
        v103 = 1;
        v108 = 0;
        v109 = 1;
        v110 = 0;
        v111 = 1;
        v106 = 0;
        v107 = 1;
        v122 = 0;
        v123 = 1;
        v112 = -1040187392;
        v113 = 1;
        v95 = 0;
        v96 = 1;
        v124 = 16843009;
        if ((v138 & 1) == 0)
        {
          v138 = 1;
        }

        v137 = 2;
        sub_53E8(&v31, "graph_configurations.plist");
        sub_30F0DC(&__p, &v31);
        sub_4DF190(__src, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        sub_1E1128(v125, &v30);
        sub_1E1238(v127, __src);
        sub_53E8(&__p, "multicam_recording");
        if (sub_390E58(v127, &__p))
        {
          v5 = 257;
        }

        else
        {
          v5 = 256;
        }

        *&v41[12] = v5;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_441310(&__p);
      }

      if (a1 == 8010)
      {
LABEL_3:
        buf[0] = 0;
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        LOBYTE(v35) = 0;
        *&v36[2] = sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
        *&v41[6] = 0;
        v42 = 0;
        v43 = 16843009;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        *&v41[8] = 16843009;
        *v41 = 16843009;
        *&v41[4] = 256;
        *&v41[12] = 257;
        *__src = xmmword_517160;
        sub_1DFEA0(&v44, __src, &v29);
        v118 = 1077936128;
        v119 = 1;
        HIWORD(v97) = 257;
        if ((v198 & 1) == 0)
        {
          v198 = 1;
        }

        v197 = 2;
        operator new();
      }
    }

    else
    {
      if ((a1 - 8021) < 3)
      {
LABEL_9:
        sub_1E0658(buf);
      }

      if (a1 == 8024)
      {

        sub_1E2E6C();
      }
    }

    goto LABEL_71;
  }

  if (a1 > 2026)
  {
    if ((a1 - 2028) < 2)
    {
LABEL_20:
      sub_3BE980(buf);
    }

    if (a1 == 2027)
    {
LABEL_63:
      BYTE4(v34) = 0;
      LOBYTE(v35) = 0;
      *&v36[2] = sub_310AF4();
      LOBYTE(v37) = 1;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
      *&v41[6] = 0;
      v42 = 0;
      v43 = 16777473;
      v46 = 0;
      v45 = 0;
      v44 = &v45;
      v47 = 0;
      v48 = 0;
      v49 = -1044381696;
      v50 = 1;
      v51 = -1044381696;
      v52 = 1;
      v53 = 0;
      v54 = 1;
      v55 = -1056964608;
      v56 = 1;
      v57 = -1033371648;
      v58 = 1;
      v59 = 0;
      v60 = 1;
      v61 = -1033371648;
      v62 = 1;
      v63 = 0;
      v64 = 1;
      v65 = -1044381696;
      v66 = 1;
      v67 = 0;
      v68 = 1;
      v69 = -1033371648;
      v70 = 1;
      v71 = 0;
      v72 = 1;
      v73 = -1033371648;
      v74 = 1;
      v75 = -1055916032;
      v76 = 1;
      v77 = -1033371648;
      v78 = 1;
      v79 = 0;
      v80 = 1;
      v81 = -1055916032;
      v82 = 1;
      v83 = -1033371648;
      v84 = 1;
      v85 = -1055916032;
      v86 = 1;
      v87 = -1033371648;
      v88 = 1;
      v89 = 0;
      v90 = 1;
      v91 = -1055916032;
      v92 = 1;
      v93 = -1043333120;
      v94 = 1;
      v95 = 0x40000000;
      v96 = 1;
      v97 = 16777472;
      v98 = 0;
      v99 = 1;
      v100 = 0;
      v101 = 1;
      v102 = 1103626240;
      v103 = 1;
      v104 = 0;
      v105 = 1;
      v106 = 1094713344;
      v107 = 1;
      v108 = 1094713344;
      v109 = 1;
      v110 = 1094713344;
      v111 = 1;
      v112 = -1061158912;
      v113 = 1;
      v114 = 1107296256;
      v115 = 1;
      v116 = 1107296256;
      v117 = 1;
      v118 = 1092616192;
      v119 = 1;
      v120 = 0;
      v121 = 1;
      v122 = 0;
      v123 = 1;
      v124 = 16777472;
      v125[0].__r_.__value_.__s.__data_[0] = 0;
      v126 = 0;
      LOBYTE(v127[0]) = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = 0;
      LOBYTE(v135) = 0;
      v136 = 0;
      LOBYTE(v137) = 0;
      v138 = 0;
      LOBYTE(v139) = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v146 = 0;
      v147 = 0;
      v148 = 0;
      v149 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v156 = 0;
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 1;
      v166 = 0;
      v167 = 0;
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 0;
      v175 = 0;
      v176 = 0;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
      v182 = 0;
      v183 = 0;
      v184 = 0;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      v188 = 0;
      v189 = 0;
      v190 = 0;
      v191 = 0;
      v192 = 0;
      v193 = 0;
      v194 = 0;
      v195 = 0;
      v196 = 0;
      LOBYTE(v197) = 0;
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 256;
      v208 = 0;
      v209 = 0;
      LOBYTE(v210) = 0;
      v211 = 0;
      LOBYTE(v212) = 0;
      v213 = 0;
      v214 = 0;
      LOBYTE(v34) = 1;
      *buf = 1953460273;
      *v41 = 16777473;
      *&v41[4] = 257;
      *&v41[10] = 16843009;
      __src[0] = 0x100000002;
      sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
      LODWORD(__src[0]) = 1;
      sub_1F8148(&v38, __src, __src + 4, 1uLL);
      HIWORD(v43) = 257;
      if ((v138 & 1) == 0)
      {
        v138 = 1;
      }

      v137 = 4;
      *&v41[6] = 257;
      *__src = xmmword_517160;
      sub_1DFEA0(&v44, __src, &v29);
      v122 = 1090519040;
      v123 = 1;
      v118 = 1077936128;
      v119 = 1;
      HIWORD(v97) = 257;
      v93 = -1047527424;
      v94 = 1;
      v102 = 1103101952;
      v103 = 1;
      v108 = 0;
      v109 = 1;
      v110 = 0;
      v111 = 1;
      v106 = 0;
      v107 = 1;
      v112 = -1040187392;
      v113 = 1;
      v95 = 0;
      v96 = 1;
      v124 = 16843009;
      sub_53E8(&__p, "graph_configurations.plist");
      sub_30F0DC(__src, &__p);
      sub_4DF190(&v31, __src);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__src[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_1E1128(v125, &v32);
      sub_1E1238(v127, &v31);
      HIBYTE(v47) = 1;
      sub_53E8(&__p, "speaker_hal");
      v13 = 0;
      v14 = 0;
      v15 = 0;
      sub_53E8(&v16, "speaker_hal");
      sub_53E8(&v17, "speaker_hal");
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 1684434036;
      LODWORD(v25) = 1936749683;
      cf = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_1E13D0(&v22, &v25, v27, 1uLL);
    }

LABEL_71:
    v7 = sub_5544(21);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "RoutingSettingsFactory_Aspen.cpp";
      v35 = 1024;
      *v36 = 249;
      *&v36[4] = 1024;
      v37 = v3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown product ID (%d): unable to return a valid iOS RoutingDatabase", buf, 0x18u);
    }

    v9 = sub_5544(21);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_DD858();
      *buf = 136315650;
      v34 = "RoutingSettingsFactory_Aspen.cpp";
      v35 = 1024;
      *v36 = 464;
      *&v36[4] = 1024;
      v37 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown product ID (%d): unable to return a valid RoutingDatabase", buf, 0x18u);
    }

    *a2 = 0;
    sub_377ADC();
  }

  if ((a1 - 2025) < 2)
  {
LABEL_12:
    BYTE4(v34) = 0;
    LOBYTE(v35) = 0;
    *&v36[2] = sub_310AF4();
    LOBYTE(v37) = 1;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
    *&v41[6] = 0;
    v42 = 0;
    v43 = 16777473;
    v46 = 0;
    v45 = 0;
    v44 = &v45;
    v47 = 0;
    v48 = 0;
    v49 = -1044381696;
    v50 = 1;
    v51 = -1044381696;
    v52 = 1;
    v53 = 0;
    v54 = 1;
    v55 = -1056964608;
    v56 = 1;
    v57 = -1033371648;
    v58 = 1;
    v59 = 0;
    v60 = 1;
    v61 = -1033371648;
    v62 = 1;
    v63 = 0;
    v64 = 1;
    v65 = -1044381696;
    v66 = 1;
    v67 = 0;
    v68 = 1;
    v69 = -1033371648;
    v70 = 1;
    v71 = 0;
    v72 = 1;
    v73 = -1033371648;
    v74 = 1;
    v75 = -1055916032;
    v76 = 1;
    v77 = -1033371648;
    v78 = 1;
    v79 = 0;
    v80 = 1;
    v81 = -1055916032;
    v82 = 1;
    v83 = -1033371648;
    v84 = 1;
    v85 = -1055916032;
    v86 = 1;
    v87 = -1033371648;
    v88 = 1;
    v89 = 0;
    v90 = 1;
    v91 = -1055916032;
    v92 = 1;
    v93 = -1043333120;
    v94 = 1;
    v95 = 0x40000000;
    v96 = 1;
    v97 = 16777472;
    v98 = 0;
    v99 = 1;
    v100 = 0;
    v101 = 1;
    v102 = 1103626240;
    v103 = 1;
    v104 = 0;
    v105 = 1;
    v106 = 1094713344;
    v107 = 1;
    v108 = 1094713344;
    v109 = 1;
    v110 = 1094713344;
    v111 = 1;
    v112 = -1061158912;
    v113 = 1;
    v114 = 1107296256;
    v115 = 1;
    v116 = 1107296256;
    v117 = 1;
    v118 = 1092616192;
    v119 = 1;
    v120 = 0;
    v121 = 1;
    v122 = 0;
    v123 = 1;
    v124 = 16777472;
    v125[0].__r_.__value_.__s.__data_[0] = 0;
    v126 = 0;
    LOBYTE(v127[0]) = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    LOBYTE(v135) = 0;
    v136 = 0;
    LOBYTE(v137) = 0;
    v138 = 0;
    LOBYTE(v139) = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 1;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v194 = 0;
    v195 = 0;
    v196 = 0;
    LOBYTE(v197) = 0;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v207 = 256;
    v208 = 0;
    v209 = 0;
    LOBYTE(v210) = 0;
    v211 = 0;
    LOBYTE(v212) = 0;
    v213 = 0;
    v214 = 0;
    LOBYTE(v34) = 1;
    *buf = 1953460273;
    *v41 = 16777473;
    *&v41[4] = 257;
    *&v41[10] = 16843009;
    __src[0] = 0x100000002;
    sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
    LODWORD(__src[0]) = 1;
    sub_1F8148(&v38, __src, __src + 4, 1uLL);
    HIWORD(v43) = 257;
    if ((v138 & 1) == 0)
    {
      v138 = 1;
    }

    v137 = 2;
    *&v41[6] = 257;
    *__src = xmmword_517160;
    sub_1DFEA0(&v44, __src, &v29);
    v122 = 1090519040;
    v123 = 1;
    v118 = 1077936128;
    v119 = 1;
    HIWORD(v97) = 257;
    v93 = -1047527424;
    v94 = 1;
    v102 = 1103101952;
    v103 = 1;
    v108 = 0;
    v109 = 1;
    v110 = 0;
    v111 = 1;
    v106 = 0;
    v107 = 1;
    v112 = -1040187392;
    v113 = 1;
    v95 = 0;
    v96 = 1;
    v124 = 16843009;
    sub_53E8(&__p, "graph_configurations.plist");
    sub_30F0DC(__src, &__p);
    sub_4DF190(&v31, __src);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__src[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1E1128(v125, &v32);
    sub_1E1238(v127, &v31);
    HIBYTE(v47) = 1;
    sub_53E8(&__p, "speaker_hal");
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_53E8(&v16, "speaker_hal");
    sub_53E8(&v17, "speaker_hal");
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1684434036;
    LODWORD(v25) = 1936749683;
    cf = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_1E13D0(&v22, &v25, v27, 1uLL);
  }

  if (a1 != 196)
  {
    goto LABEL_71;
  }

  sub_360AB4(a1, a2);
}

void sub_2A9D68(uint64_t *a1, uint64_t *a2)
{
  sub_24A81C(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void sub_2A9DD0(uint64_t a1, uint64_t a2)
{
  sub_2A9EAC(v2, a2);
  sub_30F70C(&v12, 32);
  if (v11 == 1)
  {
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    __p = v12;
    v10 = v13;
  }

  else
  {
    __p = v12;
    v10 = v13;
    v11 = 1;
  }

  sub_18B160(v2);
  sub_1E0054(&v8);
  sub_477A0(v7);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_2A9E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void *sub_2A9EAC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v3 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 76) = (v3 > 0xFFu) & v3;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 80) = 257;
  *(a1 + 72) = 16843009;
  *(a1 + 76) = 257;
  *(a1 + 82) = 16843009;
  if ((*(a1 + 20) & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = 4;
  *&v5 = 0x300000002;
  sub_1F8148((a1 + 48), &v5, &v5 + 8, 2uLL);
  LODWORD(v5) = 4;
  sub_1F8148((a1 + 24), &v5, &v5 + 4, 1uLL);
  *(a1 + 90) = 257;
  v5 = xmmword_517160;
  result = sub_1DFEA0((a1 + 96), &v5, &v6);
  *(a1 + 420) = 1090519040;
  *(a1 + 424) = 1;
  *(a1 + 404) = 1077936128;
  *(a1 + 408) = 1;
  *(a1 + 322) = 257;
  *(a1 + 912) = 15;
  *(a1 + 916) = 1;
  *(a1 + 828) = 15;
  *(a1 + 832) = 1;
  *(a1 + 904) = 7;
  *(a1 + 908) = 1;
  *(a1 + 728) = 13;
  *(a1 + 732) = 1;
  *(a1 + 736) = 13;
  *(a1 + 740) = 1;
  *(a1 + 744) = 13;
  *(a1 + 748) = 1;
  *(a1 + 752) = 13;
  *(a1 + 756) = 1;
  *(a1 + 768) = 13;
  *(a1 + 772) = 1;
  if ((*(a1 + 948) & 1) == 0)
  {
    *(a1 + 948) = 1;
  }

  *(a1 + 944) = 2;
  if ((*(a1 + 700) & 1) == 0)
  {
    *(a1 + 700) = 1;
  }

  *(a1 + 696) = 2;
  if ((*(a1 + 708) & 1) == 0)
  {
    *(a1 + 708) = 1;
  }

  *(a1 + 704) = 2;
  if ((*(a1 + 716) & 1) == 0)
  {
    *(a1 + 716) = 1;
  }

  *(a1 + 712) = 4;
  if ((*(a1 + 868) & 1) == 0)
  {
    *(a1 + 868) = 1;
  }

  *(a1 + 864) = 4;
  if ((*(a1 + 884) & 1) == 0)
  {
    *(a1 + 884) = 1;
  }

  *(a1 + 880) = 2;
  if ((*(a1 + 876) & 1) == 0)
  {
    *(a1 + 876) = 1;
  }

  *(a1 + 872) = 2;
  return result;
}

void sub_2AA418(uint64_t a1, uint64_t a2)
{
  sub_2A9EAC(v2, a2);
  sub_30F70C(&v12, 33);
  if (v11 == 1)
  {
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    __p = v12;
    v10 = v13;
  }

  else
  {
    __p = v12;
    v10 = v13;
    v11 = 1;
  }

  sub_18B160(v2);
  sub_1E0054(&v8);
  sub_477A0(v7);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_2AA4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_2AA4F4(uint64_t a1, uint64_t a2)
{
  sub_2A9EAC(v2, a2);
  sub_30F70C(&v12, 34);
  if (v11 == 1)
  {
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    __p = v12;
    v10 = v13;
  }

  else
  {
    __p = v12;
    v10 = v13;
    v11 = 1;
  }

  sub_18B160(v2);
  sub_1E0054(&v8);
  sub_477A0(v7);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_2AA5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_2AA5D0(uint64_t a1, uint64_t a2)
{
  sub_2A9EAC(v2, a2);
  sub_30F70C(&v12, 35);
  if (v11 == 1)
  {
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    __p = v12;
    v10 = v13;
  }

  else
  {
    __p = v12;
    v10 = v13;
    v11 = 1;
  }

  sub_18B160(v2);
  sub_1E0054(&v8);
  sub_477A0(v7);
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_2AA694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_2AA6AC(uint64_t a1, uint64_t a2)
{
  sub_310AF4();
  v8 = 1;
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v2 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  v13 = (v2 > 0xFFu) & v2;
  v14 = 1;
  v15 = 0;
  v16 = 0;
  v17 = 16777473;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v20 = 0;
  v21 = 0;
  v22 = -1044381696;
  v23 = 1;
  v24 = -1044381696;
  v25 = 1;
  v26 = 0;
  v27 = 1;
  v28 = -1056964608;
  v29 = 1;
  v30 = -1033371648;
  v31 = 1;
  v32 = 0;
  v33 = 1;
  v34 = -1033371648;
  v35 = 1;
  v36 = 0;
  v37 = 1;
  v38 = -1044381696;
  v39 = 1;
  v40 = 0;
  v41 = 1;
  v42 = -1033371648;
  v43 = 1;
  v44 = 0;
  v45 = 1;
  v46 = -1033371648;
  v47 = 1;
  v48 = -1055916032;
  v49 = 1;
  v50 = -1033371648;
  v51 = 1;
  v52 = 0;
  v53 = 1;
  v54 = -1055916032;
  v55 = 1;
  v56 = -1033371648;
  v57 = 1;
  v58 = -1055916032;
  v59 = 1;
  v60 = -1033371648;
  v61 = 1;
  v62 = 0;
  v63 = 1;
  v64 = -1055916032;
  v65 = 1;
  v66 = -1043333120;
  v67 = 1;
  v68 = 0x40000000;
  v69 = 1;
  v70 = 16777472;
  v71 = 0;
  v72 = 1;
  v73 = 0;
  v74 = 1;
  v75 = 1103626240;
  v76 = 1;
  v77 = 0;
  v78 = 1;
  v79 = 1094713344;
  v80 = 1;
  v81 = 1094713344;
  v82 = 1;
  v83 = 1094713344;
  v84 = 1;
  v85 = -1061158912;
  v86 = 1;
  v87 = 1107296256;
  v88 = 1;
  v89 = 1107296256;
  v90 = 1;
  v91 = 1092616192;
  v92 = 1;
  v93 = 0;
  v94 = 1;
  v95 = 0;
  v96 = 1;
  v97 = 16777472;
  v98[0] = 0;
  v98[72] = 0;
  v98[80] = 0;
  v98[120] = 0;
  v98[128] = 0;
  v98[200] = 0;
  v98[208] = 0;
  v98[248] = 0;
  LOBYTE(v99) = 0;
  v100 = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  LOBYTE(v103) = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  LOBYTE(v109) = 0;
  v110 = 0;
  LOBYTE(v111) = 0;
  v112 = 0;
  LOBYTE(v113) = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  LOBYTE(v117) = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 1;
  v132 = 0;
  v133 = 0;
  LOBYTE(v134) = 0;
  v135 = 0;
  LOBYTE(v136) = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  LOBYTE(v140) = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  LOBYTE(v155) = 0;
  v156 = 0;
  LOBYTE(v157) = 0;
  v158 = 0;
  LOBYTE(v159) = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  LOBYTE(__p) = 0;
  v167 = 0;
  v168.__r_.__value_.__s.__data_[0] = 0;
  v169 = 0;
  v170.__r_.__value_.__s.__data_[0] = 0;
  v171 = 0;
  v172.__r_.__value_.__s.__data_[0] = 0;
  v173 = 0;
  v174 = 256;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v4 = 1;
  v3 = 1953460273;
  v6 = 1;
  v5 = 2;
  v7 = 5;
  LODWORD(__src) = 1;
  sub_1F8148(v9, &__src, &__src + 4, 1uLL);
  *&__src = 0x400000003;
  sub_1F8148(&v10[1], &__src, &__src + 8, 2uLL);
  v12 = 16843009;
  LOWORD(v15) = 257;
  HIWORD(v15) = 257;
  LOWORD(v17) = 256;
  v66 = -1047527424;
  v67 = 1;
  v75 = 1103101952;
  v76 = 1;
  v81 = 0;
  v82 = 1;
  v83 = 0;
  v84 = 1;
  v79 = 0;
  v80 = 1;
  v95 = 1090519040;
  v96 = 1;
  v85 = -1040187392;
  v86 = 1;
  v68 = 0;
  v69 = 1;
  LOWORD(v70) = 257;
  v97 = 16843009;
  if ((v100 & 1) == 0)
  {
    v100 = 1;
  }

  v99 = 1836282987;
  if ((v102 & 1) == 0)
  {
    v102 = 1;
  }

  v101 = 2;
  if ((v104 & 1) == 0)
  {
    v104 = 1;
  }

  v103 = 8;
  if ((v106 & 1) == 0)
  {
    v106 = 1;
  }

  v105 = 8;
  v109 = 13;
  v110 = 1;
  v111 = 13;
  v112 = 1;
  v113 = 13;
  v114 = 1;
  v117 = 13;
  v118 = 1;
  v134 = 17;
  v135 = 1;
  v136 = 3;
  v137 = 1;
  v138 = 12;
  v139 = 1;
  v140 = 17;
  v141 = 1;
  v153 = 6;
  v154 = 1;
  v155 = 17;
  v156 = 1;
  v157 = 10;
  v158 = 1;
  v159 = 5;
  v160 = 1;
  v142 = 257;
  sub_30F70C(&__src, 88);
  if (v167 == 1)
  {
    if (SHIBYTE(v166) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v166 = v183;
  }

  else
  {
    __p = __src;
    v166 = v183;
    v167 = 1;
  }

  sub_1F826C(&v168, "_top_mic_general");
  sub_1F826C(&v170, "_top_mic_measurement");
  sub_1F826C(&v172, "_top_mic_hearing_accessibility");
  sub_47DB04(&v3);
  sub_1E0054(v98);
  sub_477A0(v19[0]);
  if (v10[1])
  {
    *&v11 = v10[1];
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

uint64_t sub_2AAD24(uint64_t a1)
{
  v2 = a1 + 584;
  v3 = (*(*(a1 + 584) + 16))(a1 + 584);
  v4 = *(a1 + 688);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v4;
}

void sub_2AADA8(uint64_t a1)
{
  v2 = a1 + 584;
  v3 = (*(*(a1 + 584) + 16))(a1 + 584);
  *(a1 + 688) = 0;
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  sub_24D354(a1);
}

uint64_t sub_2AAE3C(os_unfair_lock_s *a1)
{
  sub_24EA34(a1);
  sub_2AAE6C(a1);
  return 1;
}

uint64_t sub_2AAE6C(uint64_t a1)
{
  v2 = a1 + 584;
  v3 = (*(*(a1 + 584) + 16))(a1 + 584);
  v4 = *(a1 + 144);
  v5 = sub_3419E4();
  if (v4 == 1886745455)
  {
    v6 = 1684500341;
  }

  else
  {
    v6 = 1819176821;
  }

  result = sub_340A14(v5, v6);
  *(a1 + 688) = result;
  if (v3)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_2AAF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_224F4C(va);
  _Unwind_Resume(a1);
}

void sub_2AAF48(void *a1)
{
  *a1 = off_6BF6D8;
  sub_42A4D8((a1 + 73));
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_2AAFB4(void *a1)
{
  *a1 = off_6BF6D8;
  sub_42A4D8((a1 + 73));

  return sub_24EBDC(a1);
}

uint64_t sub_2AB00C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  qmemcpy(v22, "gcrvmorvtshv", sizeof(v22));
  memset(&__dst, 0, sizeof(__dst));
  sub_4625C(&__dst, v22, &v23, 3uLL);
  sub_24FEE8(v15, *a2);
  memset(v14, 0, sizeof(v14));
  sub_53E8(__p, "");
  sub_250178(a1, a2, a3, &__dst, v15, a4, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v14;
  sub_72C14(__p);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (__dst.__r_.__value_.__r.__words[0])
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *a1 = off_6BF6D8;
  if (*(a4 + 23) < 0)
  {
    sub_54A0(&__dst, *a4, *(a4 + 8));
  }

  else
  {
    __dst = *a4;
  }

  std::string::append(&__dst, " Port_IAPLineOut_Aspen mutex", 0x1CuLL);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  sub_53E8(v15, p_dst);
  *(a1 + 584) = &off_6D3C50;
  v9 = (a1 + 592);
  if (SHIBYTE(v16) < 0)
  {
    sub_54A0(v9, v15[0], v15[1]);
    v10 = SHIBYTE(v16);
    *(a1 + 616) = 850045863;
    *(a1 + 624) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    if (v10 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else
  {
    *v9 = *v15;
    *(a1 + 608) = v16;
    *(a1 + 616) = 850045863;
    *(a1 + 624) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *(a1 + 688) = 0;
  (*(*a1 + 104))(a1, 1768513904);
  return a1;
}

void sub_2AB294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  sub_24EBDC(v24);
  _Unwind_Resume(a1);
}

std::string *sub_2AB344(std::string *a1, void *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2[9])
  {
    sub_53E8(v11, "Persistent input ports");
    sub_2AB550(&__p, (a2 + 6), v11);
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

    std::string::append(a1, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (a2[19])
  {
    sub_53E8(v11, "Persistent tapStream ports");
    sub_2AB550(&__p, (a2 + 16), v11);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v6, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (a2[14])
  {
    sub_53E8(v11, "Persistent output ports");
    sub_2AB550(&__p, (a2 + 11), v11);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_2AB4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2AB550(std::string *a1, uint64_t a2, const void **a3)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = sub_B0848(a1, v6 + 4);
  if (*(v7 + 23) >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *v7;
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    memmove(v8, v9, v6);
  }

  strcpy(v8 + v6, ": [ ");
  v10 = *(a2 + 16);
  if (v10)
  {
    while (1)
    {
      std::string::append(a1, "(", 1uLL);
      sub_22170(&__p, *(v10 + 4));
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

      std::string::append(a1, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a1, ", ", 2uLL);
      sub_23E748(&__p, v10[3], v10[4]);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(a1, v13, v14);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a1, ")", 1uLL);
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " ] ", 3uLL);
}

void sub_2AB6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2AB730(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 184))
  {
    if (sub_108CA8(*(a2 + 144)))
    {
      sub_34CCB0(v11, a2);
      v4 = v11[1];
      if (v11[1])
      {
        v5 = std::__shared_weak_count::lock(v11[1]);
        v6 = v11[0];
        std::__shared_weak_count::__release_weak(v4);
        if (v5 && v6)
        {
          if (SHIBYTE(v6[12].__shared_owners_) < 0)
          {
            sub_54A0(v11, v6[11].__shared_weak_owners_, v6[12].__vftable);
          }

          else
          {
            *v11 = *&v6[11].__shared_weak_owners_;
            shared_owners = v6[12].__shared_owners_;
          }

          v9 = sub_2AB8B0(a1[3], a1[4], v11);
          if (SHIBYTE(shared_owners) < 0)
          {
            operator delete(v11[0]);
          }

          sub_1A8C0(v5);
          return v9;
        }

        if (v5)
        {
          sub_1A8C0(v5);
        }
      }

      return 0;
    }

    if (*(a2 + 303) < 0)
    {
      sub_54A0(v11, *(a2 + 280), *(a2 + 288));
    }

    else
    {
      *v11 = *(a2 + 280);
      shared_owners = *(a2 + 296);
    }

    v7 = *a1;
    v8 = a1[1];
  }

  else
  {
    if (*(a2 + 303) < 0)
    {
      sub_54A0(v11, *(a2 + 280), *(a2 + 288));
    }

    else
    {
      *v11 = *(a2 + 280);
      shared_owners = *(a2 + 296);
    }

    v7 = a1[3];
    v8 = a1[4];
  }

  v9 = sub_2AB8B0(v7, v8, v11);
  if (SHIBYTE(shared_owners) < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

BOOL sub_2AB8B0(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v4 + 8);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v4 : *v4;
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == a2)
      {
        v4 = a2;
        return v4 != a2;
      }
    }
  }

  return v4 != a2;
}

uint64_t sub_2AB94C(void *a1, unsigned int a2, __int128 *a3)
{
  v6 = sub_23B090(a1, a2);
  if (v6 && sub_2AB8B0(v6[3], v6[4], a3))
  {
    return 0;
  }

  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a2;
    if (v8 <= a2)
    {
      v10 = a2 % v8;
    }
  }

  else
  {
    v10 = (v8 - 1) & a2;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == a2)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= v8)
      {
        v13 %= v8;
      }
    }

    else
    {
      v13 &= v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (*(v12 + 4) != a2)
  {
    goto LABEL_20;
  }

  v15 = v12[4];
  v14 = v12[5];
  if (v15 >= v14)
  {
    v17 = v12[3];
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
    if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
    v20 = 2 * v19;
    if (2 * v19 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    if (v19 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v20;
    }

    v36 = v12 + 3;
    if (v21)
    {
      sub_1D8BB8(v21);
    }

    v23 = 24 * v18;
    v32 = 0;
    v33 = v23;
    v24 = 0;
    v34 = v23;
    v35 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_54A0(v23, *a3, *(a3 + 1));
      v23 = v33;
      v26 = v34;
      v24 = v35;
    }

    else
    {
      v25 = *a3;
      *(v23 + 16) = *(a3 + 2);
      *v23 = v25;
      v26 = v23;
    }

    v22 = v26 + 24;
    v27 = v12[3];
    v28 = v12[4] - v27;
    v29 = v23 - v28;
    memcpy((v23 - v28), v27, v28);
    v30 = v12[3];
    v12[3] = v29;
    v12[4] = v22;
    v31 = v12[5];
    v12[5] = v24;
    v34 = v30;
    v35 = v31;
    v32 = v30;
    v33 = v30;
    sub_12574(&v32);
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      sub_54A0(v12[4], *a3, *(a3 + 1));
    }

    else
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
    }

    v22 = v15 + 24;
    v12[4] = v15 + 24;
  }

  v12[4] = v22;
  return 1;
}

void sub_2ABCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_12574(va);
  _Unwind_Resume(a1);
}

BOOL sub_2ABD94(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  if (a3 != a4 && a1 != a2)
  {
    while (1)
    {
      v5 = *(a3 + 7);
      v6 = *(a1 + 7);
      if (v5 < v6)
      {
        break;
      }

      if (v6 >= v5)
      {
        v8 = a3[1];
        if (v8)
        {
          do
          {
            v7 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v7 = a3[2];
            v9 = *v7 == a3;
            a3 = v7;
          }

          while (!v9);
        }
      }

      else
      {
        v7 = a3;
      }

      v10 = a1[1];
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
          v11 = a1[2];
          v9 = *v11 == a1;
          a1 = v11;
        }

        while (!v9);
      }

      v4 = v7 == a4;
      if (v7 != a4)
      {
        a1 = v11;
        a3 = v7;
        if (v11 != a2)
        {
          continue;
        }
      }

      return v4;
    }

    return 0;
  }

  return v4;
}

void sub_2ABE4C(uint64_t a1)
{
  sub_5659C(&v16, (a1 + 8), "", 46);
  v14 = *(a1 + 24);
  v15 = 1735159650;
  v2 = v16;
  if ((*(*v16 + 16))(v16, &v14))
  {
    v3 = sub_5544(20);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v12, *(a1 + 24));
      v5 = v13;
      v6 = v12[0];
      v7 = *(a1 + 32);
      (*(*v2 + 128))(__p, v2);
      v8 = v12;
      if (v5 < 0)
      {
        v8 = v6;
      }

      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136316162;
      v19 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
      v20 = 1024;
      v21 = 52;
      v22 = 2080;
      v23 = v8;
      v24 = 1024;
      v25 = v7;
      v26 = 2080;
      v27 = v9;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resetting property(%s) = %u for device %s back to its old value", buf, 0x2Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    (*(*v2 + 48))(v2, &v14, 0, 0, 4, a1 + 32);
  }

  if (v17)
  {
    sub_1A8C0(v17);
  }
}

void sub_2AC06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2AC0A8(uint64_t a1)
{
  sub_5659C(&v34, (a1 + 8), "", 13);
  v32 = *(a1 + 24);
  v33 = 1735159650;
  v2 = v34;
  v3 = (*(*v34 + 376))(v34);
  if ((v3 & 0x100000000) != 0 && v3)
  {
    if ((*(*v2 + 16))(v2, &v32))
    {
      if ((*(*v2 + 24))(v2, &v32))
      {
        v4 = sub_5544(20);
        v5 = *v4;
        if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(v30, *(a1 + 24));
          v6 = v31;
          v7 = v30[0];
          v8 = *(a1 + 28);
          (*(*v2 + 128))(__p, v2);
          v9 = v30;
          if (v6 < 0)
          {
            v9 = v7;
          }

          if (v29 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          *buf = 136316162;
          v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
          v38 = 1024;
          v39 = 39;
          v40 = 2080;
          v41 = v9;
          v42 = 1024;
          LODWORD(v43[0]) = v8;
          WORD2(v43[0]) = 2080;
          *(v43 + 6) = v10;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting property(%s) = %u for device %s", buf, 0x2Cu);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }

          if (v31 < 0)
          {
            operator delete(v30[0]);
          }
        }

        (*(*v2 + 48))(v2, &v32, 0, 0, 4, a1 + 28);
        goto LABEL_45;
      }

      v23 = sub_5544(20);
      v12 = *v23;
      if (!*v23 || !os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      sub_22170(v30, v32);
      v24 = v31;
      v25 = v30[0];
      (*(*v2 + 128))(__p, v2);
      v26 = v30;
      if (v24 < 0)
      {
        v26 = v25;
      }

      if (v29 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      *buf = 136315906;
      v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
      v38 = 1024;
      v39 = 34;
      v40 = 2080;
      v41 = v26;
      v42 = 2080;
      v43[0] = v27;
      v17 = "%25s:%-5d Property %s is not settable on device %s";
    }

    else
    {
      v18 = sub_5544(20);
      v12 = *v18;
      if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      sub_22170(v30, v32);
      v19 = v31;
      v20 = v30[0];
      (*(*v2 + 128))(__p, v2);
      v21 = v30;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v29 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *buf = 136315906;
      v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
      v38 = 1024;
      v39 = 27;
      v40 = 2080;
      v41 = v21;
      v42 = 2080;
      v43[0] = v22;
      v17 = "%25s:%-5d Property %s is not available on device %s";
    }
  }

  else
  {
    v11 = sub_5544(20);
    v12 = *v11;
    if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    sub_22170(v30, 1937208176);
    v13 = v31;
    v14 = v30[0];
    (*(*v2 + 128))(__p, v2);
    v15 = v30;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v29 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 136315906;
    v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
    v38 = 1024;
    v39 = 20;
    v40 = 2080;
    v41 = v15;
    v42 = 2080;
    v43[0] = v16;
    v17 = "%25s:%-5d Software volume mode (%s) is not supported on device %s";
  }

  _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v17, buf, 0x26u);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

LABEL_45:
  if (v35)
  {
    sub_1A8C0(v35);
  }
}

void sub_2AC5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2AC64C(void *a1)
{
  *a1 = off_6C0F48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2AC6B8(void *a1)
{
  *a1 = off_6C0F48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

double sub_2AC704(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v3 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 76) = (v3 > 0xFFu) & v3;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 80) = 257;
  *(a1 + 72) = 16843009;
  *(a1 + 76) = 257;
  *(a1 + 82) = 16843009;
  if ((*(a1 + 20) & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = 4;
  *&v6 = 0x300000002;
  sub_1F8148((a1 + 48), &v6, &v6 + 8, 2uLL);
  LODWORD(v6) = 4;
  sub_1F8148((a1 + 24), &v6, &v6 + 4, 1uLL);
  v6 = xmmword_517160;
  sub_1DFEA0((a1 + 96), &v6, &v7);
  *(a1 + 420) = 1090519040;
  *(a1 + 424) = 1;
  *(a1 + 404) = 1077936128;
  *(a1 + 408) = 1;
  *(a1 + 322) = 257;
  *(a1 + 912) = 15;
  *(a1 + 916) = 1;
  *(a1 + 828) = 15;
  *(a1 + 832) = 1;
  *(a1 + 904) = 7;
  *(a1 + 908) = 1;
  *(a1 + 728) = 2;
  *(a1 + 732) = 1;
  *(a1 + 736) = 9;
  *(a1 + 740) = 1;
  *(a1 + 744) = 12;
  *(a1 + 748) = 1;
  *(a1 + 752) = 2;
  *(a1 + 756) = 1;
  *(a1 + 768) = 2;
  *(a1 + 772) = 1;
  if ((*(a1 + 948) & 1) == 0)
  {
    *(a1 + 948) = 1;
  }

  *(a1 + 944) = 2;
  if ((*(a1 + 700) & 1) == 0)
  {
    *(a1 + 700) = 1;
  }

  *(a1 + 696) = 2;
  if ((*(a1 + 708) & 1) == 0)
  {
    *(a1 + 708) = 1;
  }

  *(a1 + 704) = 2;
  if ((*(a1 + 716) & 1) == 0)
  {
    *(a1 + 716) = 1;
  }

  *(a1 + 712) = 4;
  *(a1 + 860) = 257;
  if ((*(a1 + 868) & 1) == 0)
  {
    *(a1 + 868) = 1;
  }

  *(a1 + 864) = 4;
  if ((*(a1 + 884) & 1) == 0)
  {
    *(a1 + 884) = 1;
  }

  *(a1 + 880) = 2;
  if ((*(a1 + 876) & 1) == 0)
  {
    *(a1 + 876) = 1;
  }

  *(a1 + 872) = 2;
  sub_30F70C(&v6, 46);
  v4 = (a1 + 952);
  if (*(a1 + 976) == 1)
  {
    if (*(a1 + 975) < 0)
    {
      operator delete(*v4);
    }

    result = *&v6;
    *v4 = v6;
    *(a1 + 968) = v7;
  }

  else
  {
    result = *&v6;
    *v4 = v6;
    *(a1 + 968) = v7;
    *(a1 + 976) = 1;
  }

  return result;
}

void sub_2ACCD4(uint64_t a1, uint64_t a2)
{
  sub_2AC704(v2, a2);
  sub_18B160(v2);
  sub_1E0054(&v8);
  sub_477A0(v7);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

void sub_2ACD54(void *a1@<X8>)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
}

uint64_t sub_2ACD60(uint64_t a1, __int128 *a2, int a3)
{
  if (a3 != 1885762592 && a3 != 1936092532)
  {
    v38 = sub_5544(14);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Stream_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 406;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  v6 = sub_5544(23);
  v7 = sub_5544(36);
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
      goto LABEL_9;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_9:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_618A4(&v67, a2);
  }

  v12 = 2003332927;
  if (a3 == 1936092532 || a3 == 1885762592)
  {
    v13 = *(a1 + 80);
    *v41 = a3;
    *&v41[4] = 1735159650;
    v14 = sub_5544(14);
    if ((*(v14 + 8) & 1) != 0 && *v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      v66.__cv_.__sig = *v41;
      *v66.__cv_.__opaque = *&v41[8];
      sub_22CE0(&v67, &v66);
    }

    *buf = *v41;
    *&buf[8] = *&v41[8];
    if (AudioObjectHasProperty(v13, buf))
    {
      memset(v67.__m_.__opaque, 0, sizeof(v67.__m_.__opaque));
      v66.__cv_.__sig = 1018212795;
      memset(v66.__cv_.__opaque, 0, sizeof(v66.__cv_.__opaque));
      v67.__m_.__sig = 850045863;
      v64 = 0;
      sub_745E8(v63, v13, v41, &v66, &v67, &v64);
      v59 = *v41;
      v58 = v13;
      v60 = *&v41[8];
      v61 = 0;
      v62 = 0;
      *buf = *v41;
      *&buf[8] = *&v41[8];
      if (!sub_66E40(v13, buf))
      {
        v19 = sub_5544(14);
        v20 = 1852797029;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *&v50 = *v41;
          DWORD2(v50) = *&v41[8];
          sub_22CE0(&v54, &v50);
        }

        goto LABEL_80;
      }

      sub_2ADB7C(&v54, &v58);
      if (!v57)
      {
        *buf = v54;
        *&buf[16] = v55;
        *&buf[32] = v56;
        v15 = a2[1];
        v50 = *a2;
        v51 = v15;
        v52 = *(a2 + 4);
        if (sub_5FB04(buf, &v50))
        {
          v16 = sub_5544(14);
          if ((*(v16 + 8) & 1) == 0)
          {
            goto LABEL_79;
          }

          v17 = *v16;
          if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_79;
          }

          *buf = 136315650;
          *&buf[4] = "HALPropertySynchronizer.h";
          *&buf[12] = 1024;
          *&buf[14] = 294;
          *&buf[18] = 1024;
          *&buf[20] = v13;
LABEL_46:
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
LABEL_79:
          v20 = 0;
LABEL_80:
          sub_73C20(v63);
          std::condition_variable::~condition_variable(&v66);
          std::mutex::~mutex(&v67);
          return v20;
        }
      }

      v21 = sub_5544(14);
      if ((*(v21 + 8) & 1) != 0 && *v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
      {
        __p[0] = *v41;
        LODWORD(__p[1]) = *&v41[8];
        sub_22CE0(&v50, __p);
      }

      *buf = *v41;
      *&buf[8] = *&v41[8];
      v20 = AudioObjectSetPropertyData(v13, buf, 0, 0, 0x28u, a2);
      if (v20)
      {
        v22 = sub_5544(14);
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&v50, v20);
          v42 = *v41;
          v43 = *&v41[8];
          sub_22CE0(__p, &v42);
        }

        goto LABEL_80;
      }

      sub_2ADB7C(&v54, &v58);
      if (!v57)
      {
        *buf = v54;
        *&buf[16] = v55;
        *&buf[32] = v56;
        v23 = a2[1];
        v50 = *a2;
        v51 = v23;
        v52 = *(a2 + 4);
        if (sub_5FB04(buf, &v50))
        {
          v24 = sub_5544(14);
          if ((*(v24 + 8) & 1) == 0)
          {
            goto LABEL_79;
          }

          v17 = *v24;
          if (!*v24 || !os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_79;
          }

          *buf = 136315650;
          *&buf[4] = "HALPropertySynchronizer.h";
          *&buf[12] = 1024;
          *&buf[14] = 322;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          goto LABEL_46;
        }
      }

      v25 = 2000;
LABEL_48:
      sub_2ADB7C(&v50, &v58);
      v20 = v53;
      if (v53)
      {
        goto LABEL_80;
      }

      *buf = v50;
      *&buf[16] = v51;
      *&buf[32] = v52;
      v26 = a2[1];
      *__p = *a2;
      v48 = v26;
      v49 = *(a2 + 4);
      if (sub_5FB04(buf, __p))
      {
        v35 = sub_5544(14);
        if ((*(v35 + 8) & 1) != 0 && *v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
        {
          __p[0] = *v41;
          LODWORD(__p[1]) = *&v41[8];
          sub_22CE0(&v50, __p);
        }

        goto LABEL_79;
      }

      if (v25 <= 0)
      {
        v37 = sub_5544(14);
        v20 = 2003329396;
        if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          v44 = *v41;
          v45 = *&v41[8];
          sub_22CE0(&v46, &v44);
        }

        goto LABEL_80;
      }

      v27.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v28 = sub_5544(14);
      if (*(v28 + 8))
      {
        v29 = *v28;
        if (*v28)
        {
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "HALPropertySynchronizer.h";
            *&buf[12] = 1024;
            *&buf[14] = 354;
            *&buf[18] = 2080;
            *&buf[20] = "with timeout";
            *&buf[28] = 1024;
            *&buf[30] = v13;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", buf, 0x22u);
          }
        }
      }

      sub_27A4();
      LOBYTE(__p[0]) = sub_2E6B08();
      *buf = &v67;
      buf[8] = 1;
      std::mutex::lock(&v67);
      v30.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
      while (1)
      {
        if ((v64 & 1) != 0 || v30.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
        {
LABEL_72:
          if (buf[8] == 1)
          {
            std::mutex::unlock(*buf);
          }

          sub_1DB4C4(__p);
          v25 += (std::chrono::system_clock::now().__d_.__rep_ - v27.__d_.__rep_) / -1000;
          goto LABEL_48;
        }

        v31.__d_.__rep_ = v30.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v31.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_71:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v30.__d_.__rep_)
        {
          goto LABEL_72;
        }
      }

      std::chrono::steady_clock::now();
      v32.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v32.__d_.__rep_)
      {
        v33 = 0;
        goto LABEL_69;
      }

      if (v32.__d_.__rep_ < 1)
      {
        if (v32.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v33 = 0x8000000000000000;
          goto LABEL_69;
        }
      }

      else if (v32.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_67;
      }

      v33 = 1000 * v32.__d_.__rep_;
LABEL_67:
      if (v33 > (v31.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v34.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_70:
        std::condition_variable::__do_timed_wait(&v66, buf, v34);
        std::chrono::steady_clock::now();
        goto LABEL_71;
      }

LABEL_69:
      v34.__d_.__rep_ = v33 + v31.__d_.__rep_;
      goto LABEL_70;
    }

    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v66.__cv_.__sig = *v41;
      *v66.__cv_.__opaque = *&v41[8];
      sub_22CE0(&v67, &v66);
    }
  }

  return v12;
}

void sub_2ADAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unsigned int a45)
{
  sub_73C20(&a45);
  std::condition_variable::~condition_variable((v45 - 216));
  std::mutex::~mutex((v45 - 168));
  _Unwind_Resume(a1);
}

__n128 sub_2ADB7C(uint64_t a1, int *a2)
{
  v3 = a2 + 1;
  *buf = *(a2 + 1);
  v4 = a2[4];
  *&buf[8] = a2[3];
  sub_2ADD84(&v14, a2, buf, v4, *(a2 + 3));
  v5 = v14;
  if (v14)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v13, v5);
        v10 = *v3;
        v11 = v3[2];
        sub_22CE0(&__p, &v10);
      }
    }
  }

  v7 = v15;
  v18 = 0;
  v17 = 0u;
  *buf = 0u;
  if (!v15[40])
  {
    v7 = buf;
  }

  result = *v7;
  v9 = *(v7 + 1);
  *a1 = *v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(v7 + 4);
  *(a1 + 40) = v5;
  return result;
}

void sub_2ADD64(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2ADD84(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, UInt32 a4, const void *a5)
{
  result = AudioObjectHasProperty(*a2, inAddress);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 48) = 0;
    result = sub_543D0(*a2, inAddress, a4, a5);
    ioDataSize = result;
    if (result)
    {
      result = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, v12);
      *a1 = result;
      if (!result)
      {
        v11 = v12[1];
        *(a1 + 8) = v12[0];
        *(a1 + 24) = v11;
        *(a1 + 40) = v13;
        *(a1 + 48) = 1;
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 48) = 0;
  }

  return result;
}

uint64_t sub_2ADE94(uint64_t a1, const void *a2, AudioObjectPropertySelector a3)
{
  if (a3 != 1885762592 && a3 != 1936092532)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v25 = 1024;
        v26 = 382;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  v7 = sub_5544(23);
  v8 = sub_5544(36);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_12;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_12:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_618A4(&__p, a2);
  }

  inAddress.mSelector = a3;
  *&inAddress.mScope = 1735159650;
  v13 = AudioObjectSetPropertyData(*(a1 + 80), &inAddress, 0, 0, 0x28u, a2);
  if (v13)
  {
    v14 = sub_5544(23);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v13);
        v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v17 = *(a1 + 80);
        *buf = 136316162;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v25 = 1024;
        v26 = 388;
        v27 = 1024;
        v28 = v13;
        v29 = 2080;
        v30 = v16;
        v31 = 1024;
        v32 = v17;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') setting the current stream format for stream %u", buf, 0x28u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  return v13;
}

void sub_2AE238(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2AE294(uint64_t a1)
{
  sub_4E890();
  v2 = *(a1 + 80);

  sub_13EB84(v2);
}

void sub_2AE2CC(os_unfair_lock_s *a1)
{
  sub_F7240(a1);
  v2 = sub_5544(23);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    sub_23148(__p, a1 + 2);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v8 = "Stream_HAL_Common.cpp";
    v9 = 1024;
    v10 = 84;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created Stream: %s.", buf, 0x1Cu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

std::string *sub_2AE3D4@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&__dst, *(a1 + 80));
  v4 = std::string::insert(&__dst, 0, "[ id: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v21 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v21 >= 0)
  {
    v7 = HIBYTE(v21);
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&__dst, __str);
  v8 = std::string::insert(&__dst, 0, "; addr: ", 8uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v21 >= 0)
  {
    v11 = HIBYTE(v21);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 84))
  {
    v12 = "out";
  }

  else
  {
    v12 = "in";
  }

  if (*(a1 + 84))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  memcpy(&__dst, v12, v13);
  *(&__dst | v13) = 0;
  v14 = std::string::insert(&__dst, 0, "; dir: ", 7uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v21 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v21 >= 0)
  {
    v17 = HIBYTE(v21);
  }

  else
  {
    v17 = __p[1];
  }

  std::string::append(a2, v16, v17);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " ]", 2uLL);
}

void sub_2AE61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2AE680(os_unfair_lock_s *a1, AudioObjectPropertyAddress *inAddress, uint64_t a3, const void *a4, UInt32 inDataSize, void *inData)
{
  if (inAddress->mSelector == 1936092532 || inAddress->mSelector == 1885762592)
  {
    if ((*(*&a1->_os_unfair_lock_opaque + 32))(a1, inAddress, a3, a4) != inDataSize)
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v32 = 1024;
        v33 = 215;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Bad data size for property kAudioStreamPropertyPhysical/VirtualFormat", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v10 = sub_5544(23);
    v11 = sub_5544(36);
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
        goto LABEL_13;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_13:
    v15 = *v10;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v28 = *&inAddress->mSelector;
      mElement = inAddress->mElement;
      sub_22CE0(&v30, &v28);
    }

    result = (*(*&a1->_os_unfair_lock_opaque + 136))(a1, inData);
    v16 = result;
    if (result)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v32 = 1024;
        v33 = 218;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: error setting stream format", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = v16;
    }
  }

  else
  {
    result = AudioObjectSetPropertyData(a1[20]._os_unfair_lock_opaque, inAddress, a3, a4, inDataSize, inData);
    if (result)
    {
      v21 = result;
      v22 = sub_5544(14);
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Stream_HAL_Common.cpp";
          v32 = 1024;
          v33 = 225;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to set property data.", buf, 0x12u);
        }
      }

      v24 = __cxa_allocate_exception(0x10uLL);
      *v24 = &off_6DDDD0;
      v24[2] = v21;
    }
  }

  return result;
}

void sub_2AEB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2AEB80(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v2 = *(a1 + 80);
  outIsSettable = 0;
  IsPropertySettable = AudioObjectIsPropertySettable(v2, a2, &outIsSettable);
  if (IsPropertySettable)
  {
    v5 = *sub_5544(14);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "Stream_HAL_Common.cpp";
        v14 = 1024;
        v15 = 111;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to determine whether the property is settable.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = IsPropertySettable;
  }

  if (outIsSettable >= 2u)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Stream_HAL_Common.cpp";
      v14 = 1024;
      v15 = 112;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a bad value", buf, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "The HAL returned a bad value");
  }

  return outIsSettable != 0;
}

void sub_2AED70(void *a1)
{
  *a1 = off_6BF930;
  sub_13BFA8(a1);

  operator delete();
}

uint64_t sub_2AEDE4(uint64_t a1, AudioObjectID inObjectID)
{
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 1065353216;
  *a1 = off_6BF930;
  *(a1 + 80) = inObjectID;
  *&inAddress.mSelector = 0x676C6F6273646972;
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 2;
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v4 = sub_5544(23);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, PropertyData);
      if (v12 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315906;
      v17 = "Stream_HAL_Common.cpp";
      v18 = 1024;
      v19 = 56;
      v20 = 1024;
      v21 = PropertyData;
      v22 = 2080;
      v23 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') determining stream direction", buf, 0x22u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_15:
    v7 = 1;
    goto LABEL_16;
  }

  if (ioDataSize != 4 || outData > 1)
  {
    v8 = sub_5544(23);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "Stream_HAL_Common.cpp";
      v18 = 1024;
      v19 = 51;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d The HAL returned unexpected results upon reading the stream direction", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v7 = outData != 1;
LABEL_16:
  *(a1 + 84) = v7;
  return a1;
}

uint64_t sub_2AF024(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6BFB60;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_2AF0BC(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_2AF104(a1);
  return sub_2AF4BC(&v2);
}

void sub_2AF0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2AF4BC(va);
  _Unwind_Resume(a1);
}

void sub_2AF104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = *(a1 + 24);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2AF604(&v3, v2, 211);
  if (v3)
  {
    sub_2AF7B0(v3);
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2AF1A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, __int128 buf, __int128 a21, int a22, __int16 a23, __int16 a24, int a25)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a19)
  {
    sub_1A8C0(a19);
  }

  if (a2 == 3)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = sub_5544(14);
    v29 = sub_468EC(1, *v28, *(v28 + 8));
    if (v29)
    {
      v30 = v29;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v27[2]);
        p_p = __p;
        if (a17 >= 0)
        {
          p_p = &__p;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a21) = 2080;
        *(&a21 + 4) = p_p;
        WORD6(a21) = 2080;
        *(&a21 + 14) = "";
        a24 = 1024;
        a25 = 215;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a17 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_19;
    }

LABEL_20:
    v30 = 0;
LABEL_21:

    __cxa_end_catch();
    if (!a11)
    {
      JUMPOUT(0x2AF178);
    }

    JUMPOUT(0x2AF170);
  }

  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v33 = v32;
    v34 = sub_5544(14);
    v35 = sub_468EC(1, *v34, *(v34 + 8));
    if (!v35)
    {
      goto LABEL_20;
    }

    v30 = v35;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = (*(*v33 + 16))(v33);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a21) = 2080;
      *(&a21 + 4) = v36;
      WORD6(a21) = 2080;
      *(&a21 + 14) = "";
      a24 = 1024;
      a25 = 215;
      v37 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v38 = v30;
      v39 = 44;
LABEL_18:
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v37, &buf, v39);
    }
  }

  else
  {
    v40 = sub_5544(14);
    v41 = sub_468EC(1, *v40, *(v40 + 8));
    if (!v41)
    {
      goto LABEL_20;
    }

    v30 = v41;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a21) = 2080;
      *(&a21 + 4) = "";
      WORD6(a21) = 1024;
      *(&a21 + 14) = 215;
      v37 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v38 = v30;
      v39 = 34;
      goto LABEL_18;
    }
  }

LABEL_19:

  goto LABEL_21;
}

caulk::concurrent::message **sub_2AF4BC(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6BFB88;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2AF538(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2AF5A8(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

std::__shared_weak_count *sub_2AF604(uint64_t *a1, uint64_t *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a2[1];
  if (!v5 || (result = std::__shared_weak_count::lock(v5), (a1[1] = result) == 0) || (v8 = *a2, *a1 = *a2, !v8))
  {
    v9 = sub_5544(14);
    v10 = sub_468EC(1, *v9, *(v9 + 8));
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v15 = "StandardUtilities.h";
        v16 = 1024;
        v17 = 284;
        v18 = 2080;
        v19 = "";
        v20 = 1024;
        v21 = a3;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_2AF778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2AF7B0(uint64_t a1)
{
  sub_2AF908(&v12);
  v2 = v12;
  std::mutex::lock(v12);
  v3 = *v2[1].__m_.__opaque;
  if (v3)
  {
    opaque = v2[1].__m_.__opaque;
    v5 = *v2[1].__m_.__opaque;
    do
    {
      v6 = sub_6F834(v5 + 4, (a1 + 24));
      if ((v6 & 0x80u) == 0)
      {
        opaque = v5;
      }

      v5 = *&v5[(v6 >> 4) & 8];
    }

    while (v5);
    if (opaque != v2[1].__m_.__opaque && (sub_6F834((a1 + 24), opaque + 4) & 0x80) == 0)
    {
      v7 = *(opaque + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = opaque;
        do
        {
          v8 = *(v9 + 2);
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (v2[1].__m_.__sig == opaque)
      {
        v2[1].__m_.__sig = v8;
      }

      --*&v2[1].__m_.__opaque[8];
      sub_75234(v3, opaque);
      sub_ED13C((opaque + 32));
      operator delete(opaque);
    }
  }

  std::mutex::unlock(v2);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_2AF8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2AF908(void *a1)
{
  if (!qword_6E9018 || (v2 = std::__shared_weak_count::lock(qword_6E9018)) == 0 || !qword_6E9010)
  {
    operator new();
  }

  *a1 = qword_6E9010;
  a1[1] = v2;
}

id sub_2AFB14(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 96);
    *(a1 + 96) = 0;
  }

  v4 = objc_alloc_init(HMServiceClient);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;

  sub_8BEE4();
  v6 = qword_709F20;
  v7 = qword_709F20;
  objc_claimAutoreleasedReturnValue();
  [*(a1 + 96) setDispatchQueue:v6];

  [*(a1 + 96) setInterruptionHandler:&stru_6BFA78];
  [*(a1 + 96) setDeviceRecordChangedHandler:&stru_6BFAB8];
  return [*(a1 + 96) activateWithCompletion:&stru_6BFAF8];
}

void sub_2AFBF8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = sub_5544(14);
    v26 = sub_468EC(1, *v25, *(v25 + 8));
    if (v26)
    {
      v27 = v26;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v24[2]);
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
        a21 = 139;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a15 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_17;
    }

LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v30 = v29;
    v31 = sub_5544(14);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    if (!v32)
    {
      goto LABEL_18;
    }

    v27 = v32;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = (*(*v30 + 16))(v30);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a17) = 2080;
      *(&a17 + 4) = v33;
      WORD6(a17) = 2080;
      *(&a17 + 14) = "";
      a20 = 1024;
      a21 = 139;
      v34 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v35 = v27;
      v36 = 44;
LABEL_16:
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, v34, &buf, v36);
    }
  }

  else
  {
    v37 = sub_5544(14);
    v38 = sub_468EC(1, *v37, *(v37 + 8));
    if (!v38)
    {
      goto LABEL_18;
    }

    v27 = v38;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a17) = 2080;
      *(&a17 + 4) = "";
      WORD6(a17) = 1024;
      *(&a17 + 14) = 139;
      v34 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v35 = v27;
      v36 = 34;
      goto LABEL_16;
    }
  }

LABEL_17:

LABEL_19:
  __cxa_end_catch();
  JUMPOUT(0x2AFBC8);
}

void sub_2AFEE8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && [(NSError *)v2 code]!= -71148)
  {
    v4 = *sub_5544(25);
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 136315394;
      *&v9[4] = "HearingModeServiceIODelegate.mm";
      *&v9[12] = 1024;
      *&v9[14] = 134;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to activate Hearing Mode client", v9, 0x12u);
    }

    sub_2AF908(v9);
    v6 = *v9;
    v7 = *(*v9 + 96);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v6 + 96);
      *(v6 + 96) = 0;
    }

    if (*&v9[8])
    {
      sub_1A8C0(*&v9[8]);
    }
  }
}

void sub_2B0008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2B003C(id a1, HMDeviceRecord *a2)
{
  v2 = a2;
  v3 = [(HMDeviceRecord *)v2 hearingProtectionPPEEnabled];
  v4 = [(HMDeviceRecord *)v2 hearingProtectionPPECapLevel];
  [v4 floatValue];
  v6 = v5;

  v7 = *sub_5544(25);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(HMDeviceRecord *)v2 bluetoothUUID];
      *buf = 136316162;
      *&buf[4] = "HearingModeServiceIODelegate.mm";
      *&buf[12] = 1024;
      *&buf[14] = 165;
      *&buf[18] = 1024;
      *&buf[20] = v3 == 1;
      *v27 = 2048;
      *&v27[2] = v6;
      *&v27[10] = 2112;
      *&v27[12] = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d enable %d, cap %.2f for device %@", buf, 0x2Cu);
    }
  }

  sub_2AF908(&v24);
  v11 = v24;
  v12 = atomic_load(&v24[1].__m_.__opaque[16]);
  if ((((v3 == 1) ^ v12) & 1) != 0 || (v13 = COERCE_FLOAT(atomic_load(&v24[1].__m_.__opaque[20])), v6 != v13))
  {
    v14 = atomic_load(&v24[1].__m_.__opaque[16]);
    if (((v3 == 1) ^ v14) & 1) != 0 || (v15 = atomic_load(&v24[1].__m_.__opaque[16]), (v15))
    {
      atomic_store(v3 == 1, &v24[1].__m_.__opaque[16]);
      atomic_store(LODWORD(v6), &v11[1].__m_.__opaque[20]);
      std::mutex::lock(v11);
      sig = v11[1].__m_.__sig;
      if (sig != v11[1].__m_.__opaque)
      {
        do
        {
          if (sig[55] < 0)
          {
            sub_54A0(buf, *(sig + 4), *(sig + 5));
          }

          else
          {
            *buf = *(sig + 2);
            *&buf[16] = *(sig + 6);
          }

          v17 = *(sig + 8);
          *v27 = *(sig + 7);
          *&v27[8] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
            if (*&v27[8])
            {
              v18 = std::__shared_weak_count::lock(*&v27[8]);
              if (v18)
              {
                if (*v27)
                {
                  v19 = atomic_load(&v11[1].__m_.__opaque[16]);
                  v20 = COERCE_FLOAT(atomic_load(&v11[1].__m_.__opaque[20]));
                  sub_2B0388(*v27, v19 & 1, v20);
                }

                sub_1A8C0(v18);
              }

              if (*&v27[8])
              {
                std::__shared_weak_count::__release_weak(*&v27[8]);
              }
            }
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v21 = *(sig + 1);
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
              v22 = *(sig + 2);
              v23 = *v22 == sig;
              sig = v22;
            }

            while (!v23);
          }

          sig = v22;
        }

        while (v22 != v11[1].__m_.__opaque);
      }

      std::mutex::unlock(v11);
    }

    else
    {
      atomic_store(LODWORD(v6), &v24[1].__m_.__opaque[20]);
    }
  }

  if (v25)
  {
    sub_1A8C0(v25);
  }
}

void sub_2B0388(uint64_t a1, int a2, float a3)
{
  sub_8BEE4();
  v5 = v4 = qword_709F20;
  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = v5;
  operator new();
}

uint64_t *sub_2B0450(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_2B04A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v12 = a1;
  v13[0] = v1;
  v13[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  v14 = *(a1 + 16);
  v4 = *(a1 + 20);
  v15 = v4;
  sub_2AF604(&v18, v13, 229);
  v5 = v18;
  if (v18)
  {
    v6 = *sub_5544(25);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (*(v5 + 47) < 0)
        {
          sub_54A0(__p, *(v5 + 24), *(v5 + 32));
        }

        else
        {
          *__p = *(v5 + 24);
          v17 = *(v5 + 40);
        }

        v9 = __p;
        if (v17 < 0)
        {
          v9 = __p[0];
        }

        v21 = "HearingModeServiceIODelegate.mm";
        v10 = "false";
        v22 = 1024;
        v23 = 236;
        *buf = 136316162;
        if (v3)
        {
          v10 = "true";
        }

        v24 = 2080;
        v25 = v9;
        v26 = 2080;
        v27 = v10;
        v28 = 2048;
        v29 = v4;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Handling Hearing Mode Service IO delegate for chain %s. Enabling? %s. Cap? %.2f", buf, 0x30u);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_278050(*(v5 + 72), v3, v4);
  }

  if (v19)
  {
    sub_1A8C0(v19);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_2B0450(&v12);
}

void sub_2B0688(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, __int128 buf, __int128 a23, int a24, __int16 a25, __int16 a26, int a27)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a21)
  {
    sub_1A8C0(a21);
  }

  if (a2 == 3)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = sub_5544(14);
    v32 = sub_468EC(1, *v31, *(v31 + 8));
    if (v32)
    {
      v33 = v32;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v30[2]);
        p_p = __p;
        if (a18 >= 0)
        {
          p_p = &__p;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a23) = 2080;
        *(&a23 + 4) = p_p;
        WORD6(a23) = 2080;
        *(&a23 + 14) = "";
        a26 = 1024;
        a27 = 239;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a18 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_19;
    }

LABEL_20:
    v33 = 0;
LABEL_21:

    __cxa_end_catch();
    if (!a11)
    {
      JUMPOUT(0x2B0648);
    }

    JUMPOUT(0x2B0640);
  }

  v35 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v36 = v35;
    v37 = sub_5544(14);
    v38 = sub_468EC(1, *v37, *(v37 + 8));
    if (!v38)
    {
      goto LABEL_20;
    }

    v33 = v38;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v39 = (*(*v36 + 16))(v36);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a23) = 2080;
      *(&a23 + 4) = v39;
      WORD6(a23) = 2080;
      *(&a23 + 14) = "";
      a26 = 1024;
      a27 = 239;
      v40 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v41 = v33;
      v42 = 44;
LABEL_18:
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, v40, &buf, v42);
    }
  }

  else
  {
    v43 = sub_5544(14);
    v44 = sub_468EC(1, *v43, *(v43 + 8));
    if (!v44)
    {
      goto LABEL_20;
    }

    v33 = v44;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a23) = 2080;
      *(&a23 + 4) = "";
      WORD6(a23) = 1024;
      *(&a23 + 14) = 239;
      v40 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v41 = v33;
      v42 = 34;
      goto LABEL_18;
    }
  }

LABEL_19:

  goto LABEL_21;
}

void sub_2B09C8(id a1)
{
  v1 = *sub_5544(25);
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v3 = 136315394;
    *&v3[4] = "HearingModeServiceIODelegate.mm";
    *&v3[12] = 1024;
    *&v3[14] = 121;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Hearing Mode Server was interrupted, restart client", v3, 0x12u);
  }

  sub_2AF908(v3);
  sub_2AFB14(*v3);
  if (*&v3[8])
  {
    sub_1A8C0(*&v3[8]);
  }
}

void sub_2B0AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B0AD0(uint64_t a1)
{
  v2 = *sub_5544(25);
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "HearingModeServiceIODelegate.mm";
    v9 = 1024;
    v10 = 110;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Central Hearing Mode Service SPI handler is destroyed", &v7, 0x12u);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 120);
    *(a1 + 120) = 0;

    v6 = *(a1 + 120);
  }

  else
  {
    v6 = 0;
  }

  sub_20D854(*(a1 + 96));
  std::mutex::~mutex((a1 + 24));
}

void sub_2B0BD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2B0BE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BFA50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2B0C58(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2B0CC8(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2B0D24(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  operator new();
}

uint64_t *sub_2B0DD4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v33 = a1;
  v34 = v2;
  v35 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2AF604(&v38, &v34, 188);
  v3 = v38;
  if (v38)
  {
    v5 = *(v38 + 8);
    v4 = *(v38 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2AF908(&v36);
    if (v4)
    {
      v6 = v36;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v4);
      if (v7 && v5)
      {
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            if (*(v5 + 47) < 0)
            {
              sub_54A0(__p, *(v5 + 24), *(v5 + 32));
            }

            else
            {
              *__p = *(v5 + 24);
              v41 = *(v5 + 40);
            }

            v15 = __p;
            if (v41 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136315650;
            v45 = "HearingModeServiceIODelegate.mm";
            v46 = 1024;
            v47 = 72;
            v48 = 2080;
            v49 = v15;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Adding Hearing Mode Service IO delegate %s", buf, 0x1Cu);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        std::mutex::lock(v6);
        v17 = (v6 + 72);
        v16 = *(v6 + 72);
        if (v16)
        {
          v18 = (v6 + 72);
          do
          {
            v19 = sub_6F834(v16 + 4, (v3 + 24));
            if ((v19 & 0x80u) == 0)
            {
              v18 = v16;
            }

            v16 = *(v16 + ((v19 >> 4) & 8));
          }

          while (v16);
          if (v17 != v18)
          {
            if ((sub_6F834((v3 + 24), v18 + 4) & 0x80) == 0)
            {
              atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v20 = v18[8];
              v18[7] = v5;
              v18[8] = v4;
              if (v20)
              {
                std::__shared_weak_count::__release_weak(v20);
              }

              goto LABEL_67;
            }

            if ((sub_6F834((v3 + 24), v18 + 4) & 0x80) == 0)
            {
              if ((sub_6F834(v18 + 4, (v3 + 24)) & 0x80) == 0)
              {
                v42 = v18;
                v43 = v18;
                goto LABEL_65;
              }

              v27 = v18[1];
              if (v27)
              {
                v28 = v18[1];
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                v30 = v18;
                do
                {
                  v29 = v30[2];
                  v24 = *v29 == v30;
                  v30 = v29;
                }

                while (!v24);
              }

              if (v29 == v17 || (v31 = v18[1], v32 = sub_6F834((v3 + 24), v29 + 4), v27 = v31, v32 < 0))
              {
                if (v27)
                {
                  v43 = v29;
                  v18 = v29;
                }

                else
                {
                  v43 = v18++;
                }

                goto LABEL_64;
              }

LABEL_60:
              v18 = sub_6F86C(v6 + 64, &v43, (v3 + 24));
LABEL_64:
              v18 = *v18;
LABEL_65:
              if (!v18)
              {
                operator new();
              }

LABEL_67:
              std::mutex::unlock(v6);
              v25 = atomic_load((v6 + 88));
              v26 = COERCE_FLOAT(atomic_load((v6 + 92)));
              sub_2B0388(v5, v25 & 1, v26);
            }
          }

          v16 = *v18;
        }

        else
        {
          v18 = (v6 + 72);
        }

        v21 = v18;
        if (*(v6 + 64) == v18)
        {
          goto LABEL_61;
        }

        if (v16)
        {
          v22 = v16;
          do
          {
            v21 = v22;
            v22 = v22[1];
          }

          while (v22);
        }

        else
        {
          v23 = v18;
          do
          {
            v21 = v23[2];
            v24 = *v21 == v23;
            v23 = v21;
          }

          while (v24);
        }

        if ((sub_6F834(v21 + 4, (v3 + 24)) & 0x80) != 0)
        {
LABEL_61:
          if (v16)
          {
            v43 = v21;
            v18 = v21 + 1;
          }

          else
          {
            v43 = v18;
          }

          goto LABEL_64;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = *sub_5544(25);
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 47) >= 0)
      {
        v13 = v3 + 24;
      }

      else
      {
        v13 = *(v3 + 24);
      }

      *buf = 136315650;
      v45 = "HearingModeServiceIODelegate.mm";
      v46 = 1024;
      v47 = 87;
      v48 = 2080;
      v49 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add Hearing Mode Service IO delegate for chain %s to central SPI handler", buf, 0x1Cu);
    }

    if (v7)
    {
      sub_1A8C0(v7);
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    else if (!v4)
    {
LABEL_23:
      if (v37)
      {
        sub_1A8C0(v37);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      goto LABEL_27;
    }

    std::__shared_weak_count::__release_weak(v4);
    goto LABEL_23;
  }

LABEL_27:
  if (v39)
  {
    sub_1A8C0(v39);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  return sub_8BE90(&v33);
}

void sub_2B1310(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **__p, std::__shared_weak_count *a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 buf, __int128 a29, int a30, __int16 a31, __int16 a32, int a33)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_92704(&a22);
  std::mutex::unlock(v35);
  sub_1A8C0(v34);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (a15)
  {
    sub_1A8C0(a15);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (a21)
  {
    sub_1A8C0(a21);
  }

  if (a2 == 3)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = sub_5544(14);
    v40 = sub_468EC(1, *v39, *(v39 + 8));
    if (v40)
    {
      v41 = v40;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&__p, v38[2]);
        p_p = __p;
        if (a19 >= 0)
        {
          p_p = &__p;
        }

        LODWORD(buf) = 136316162;
        *(&buf + 4) = "StandardUtilities.h";
        WORD6(buf) = 1024;
        *(&buf + 14) = 660;
        WORD1(a29) = 2080;
        *(&a29 + 4) = p_p;
        WORD6(a29) = 2080;
        *(&a29 + 14) = "";
        a32 = 1024;
        a33 = 192;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
        if (a19 < 0)
        {
          operator delete(__p);
        }
      }

      goto LABEL_25;
    }

LABEL_26:
    v41 = 0;
    goto LABEL_27;
  }

  v43 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v44 = v43;
    v45 = sub_5544(14);
    v46 = sub_468EC(1, *v45, *(v45 + 8));
    if (!v46)
    {
      goto LABEL_26;
    }

    v41 = v46;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v47 = (*(*v44 + 16))(v44);
      LODWORD(buf) = 136316162;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 665;
      WORD1(a29) = 2080;
      *(&a29 + 4) = v47;
      WORD6(a29) = 2080;
      *(&a29 + 14) = "";
      a32 = 1024;
      a33 = 192;
      v48 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
      v49 = v41;
      v50 = 44;
LABEL_24:
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, v48, &buf, v50);
    }
  }

  else
  {
    v51 = sub_5544(14);
    v52 = sub_468EC(1, *v51, *(v51 + 8));
    if (!v52)
    {
      goto LABEL_26;
    }

    v41 = v52;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a29) = 2080;
      *(&a29 + 4) = "";
      WORD6(a29) = 1024;
      *(&a29 + 14) = 192;
      v48 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v49 = v41;
      v50 = 34;
      goto LABEL_24;
    }
  }

LABEL_25:

LABEL_27:
  __cxa_end_catch();
  JUMPOUT(0x2B0F9CLL);
}

void sub_2B16D8(uint64_t a1)
{
  sub_2B1710(a1);

  operator delete();
}

uint64_t sub_2B1710(uint64_t a1)
{
  v2 = sub_5544(25);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 47) < 0)
        {
          sub_54A0(__p, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *__p = *(a1 + 24);
          v10 = *(a1 + 40);
        }

        v5 = __p;
        if (v10 < 0)
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v12 = "HearingModeServiceIODelegate.mm";
        v13 = 1024;
        v14 = 221;
        v15 = 2080;
        v16 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying Hearing Mode Service IO delegate for chain %s", buf, 0x1Cu);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_2AF7B0(a1);
  v6 = *(a1 + 88);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  sub_27781C(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_2B1880(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2B189C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BFB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2B1910(uint64_t result)
{
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  strcpy((result + 48), "tlfd");
  *(result + 56) = 0;
  *(result + 128) = 0;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0;
  strcpy((result + 264), "tlfd");
  *(result + 272) = 0;
  *(result + 344) = 0;
  *(result + 472) = 0;
  *(result + 440) = 0u;
  *(result + 456) = 0u;
  *(result + 408) = 0u;
  *(result + 424) = 0u;
  *(result + 376) = 0u;
  *(result + 392) = 0u;
  *(result + 360) = 0u;
  strcpy((result + 480), "tlfd");
  *(result + 488) = 0;
  *(result + 560) = 0;
  *(result + 576) = 0u;
  *(result + 592) = 0u;
  *(result + 608) = 0u;
  *(result + 624) = 0u;
  *(result + 640) = 0u;
  *(result + 656) = 0u;
  *(result + 672) = 0u;
  *(result + 688) = 0;
  strcpy((result + 696), "tlfd");
  *(result + 704) = 0;
  *(result + 776) = 0;
  *(result + 792) = 0u;
  *(result + 808) = 0u;
  *(result + 824) = 0u;
  *(result + 840) = 0u;
  *(result + 856) = 0u;
  *(result + 872) = 0u;
  *(result + 888) = 0u;
  *(result + 904) = 0;
  strcpy((result + 912), "tlfd");
  *(result + 920) = 0;
  *(result + 992) = 0;
  *(result + 1008) = 0u;
  *(result + 1024) = 0u;
  *(result + 1040) = 0u;
  *(result + 1056) = 0u;
  *(result + 1072) = 0u;
  *(result + 1088) = 0u;
  *(result + 1104) = 0u;
  *(result + 1120) = 0;
  strcpy((result + 1128), "tlfd");
  *(result + 1136) = 0;
  *(result + 1208) = 0;
  *(result + 1336) = 0;
  *(result + 1304) = 0u;
  *(result + 1320) = 0u;
  *(result + 1272) = 0u;
  *(result + 1288) = 0u;
  *(result + 1240) = 0u;
  *(result + 1256) = 0u;
  *(result + 1224) = 0u;
  strcpy((result + 1344), "tlfd");
  *(result + 1352) = 0;
  *(result + 1424) = 0;
  *(result + 1552) = 0;
  *(result + 1536) = 0u;
  *(result + 1520) = 0u;
  *(result + 1504) = 0u;
  *(result + 1488) = 0u;
  *(result + 1472) = 0u;
  *(result + 1456) = 0u;
  *(result + 1440) = 0u;
  strcpy((result + 1560), "tlfd");
  *(result + 1568) = 0;
  *(result + 1640) = 0;
  *(result + 1768) = 0;
  *(result + 1736) = 0u;
  *(result + 1752) = 0u;
  *(result + 1704) = 0u;
  *(result + 1720) = 0u;
  *(result + 1672) = 0u;
  *(result + 1688) = 0u;
  *(result + 1656) = 0u;
  strcpy((result + 1776), "tlfd");
  *(result + 1784) = 0;
  *(result + 1856) = 0;
  *(result + 1984) = 0;
  *(result + 1968) = 0u;
  *(result + 1952) = 0u;
  *(result + 1936) = 0u;
  *(result + 1920) = 0u;
  *(result + 1904) = 0u;
  *(result + 1888) = 0u;
  *(result + 1872) = 0u;
  strcpy((result + 1992), "tlfd");
  *(result + 2000) = 0;
  *(result + 2072) = 0;
  *(result + 2200) = 0;
  *(result + 2168) = 0u;
  *(result + 2184) = 0u;
  *(result + 2136) = 0u;
  *(result + 2152) = 0u;
  *(result + 2104) = 0u;
  *(result + 2120) = 0u;
  *(result + 2088) = 0u;
  strcpy((result + 2208), "tlfd");
  *(result + 2216) = 0;
  *(result + 2288) = 0;
  *(result + 2416) = 0;
  *(result + 2400) = 0u;
  *(result + 2384) = 0u;
  *(result + 2368) = 0u;
  *(result + 2352) = 0u;
  *(result + 2336) = 0u;
  *(result + 2320) = 0u;
  *(result + 2304) = 0u;
  strcpy((result + 2424), "tlfd");
  *(result + 2432) = 0;
  *(result + 2504) = 0;
  *(result + 2632) = 0;
  *(result + 2600) = 0u;
  *(result + 2616) = 0u;
  *(result + 2568) = 0u;
  *(result + 2584) = 0u;
  *(result + 2536) = 0u;
  *(result + 2552) = 0u;
  *(result + 2520) = 0u;
  strcpy((result + 2640), "tlfd");
  *(result + 2648) = 0;
  *(result + 2720) = 0;
  *(result + 2848) = 0;
  *(result + 2832) = 0u;
  *(result + 2816) = 0u;
  *(result + 2800) = 0u;
  *(result + 2784) = 0u;
  *(result + 2768) = 0u;
  *(result + 2752) = 0u;
  *(result + 2736) = 0u;
  strcpy((result + 2856), "tlfd");
  *(result + 2864) = 0;
  *(result + 2936) = 0;
  *(result + 3064) = 0;
  *(result + 3032) = 0u;
  *(result + 3048) = 0u;
  *(result + 3000) = 0u;
  *(result + 3016) = 0u;
  *(result + 2968) = 0u;
  *(result + 2984) = 0u;
  *(result + 2952) = 0u;
  strcpy((result + 3072), "tlfd");
  *(result + 3080) = 0;
  *(result + 3152) = 0;
  *(result + 3280) = 0;
  *(result + 3264) = 0u;
  *(result + 3248) = 0u;
  *(result + 3232) = 0u;
  *(result + 3216) = 0u;
  *(result + 3200) = 0u;
  *(result + 3184) = 0u;
  *(result + 3168) = 0u;
  strcpy((result + 3288), "tlfd");
  *(result + 3296) = 0;
  *(result + 3368) = 0;
  *(result + 3496) = 0;
  *(result + 3464) = 0u;
  *(result + 3480) = 0u;
  *(result + 3432) = 0u;
  *(result + 3448) = 0u;
  *(result + 3400) = 0u;
  *(result + 3416) = 0u;
  *(result + 3384) = 0u;
  strcpy((result + 3504), "tlfd");
  *(result + 3512) = 0;
  *(result + 3584) = 0;
  *(result + 3712) = 0;
  *(result + 3696) = 0u;
  *(result + 3680) = 0u;
  *(result + 3664) = 0u;
  *(result + 3648) = 0u;
  *(result + 3632) = 0u;
  *(result + 3616) = 0u;
  *(result + 3600) = 0u;
  strcpy((result + 3720), "tlfd");
  *(result + 3728) = 0;
  *(result + 3800) = 0;
  *(result + 3928) = 0;
  *(result + 3896) = 0u;
  *(result + 3912) = 0u;
  *(result + 3864) = 0u;
  *(result + 3880) = 0u;
  *(result + 3832) = 0u;
  *(result + 3848) = 0u;
  *(result + 3816) = 0u;
  strcpy((result + 3936), "tlfd");
  *(result + 3944) = 0;
  *(result + 4016) = 0;
  *(result + 4144) = 0;
  *(result + 4128) = 0u;
  *(result + 4112) = 0u;
  *(result + 4096) = 0u;
  *(result + 4080) = 0u;
  *(result + 4064) = 0u;
  *(result + 4048) = 0u;
  *(result + 4032) = 0u;
  strcpy((result + 4152), "tlfd");
  *(result + 4160) = 0;
  *(result + 4232) = 0;
  *(result + 4360) = 0;
  *(result + 4328) = 0u;
  *(result + 4344) = 0u;
  *(result + 4296) = 0u;
  *(result + 4312) = 0u;
  *(result + 4264) = 0u;
  *(result + 4280) = 0u;
  *(result + 4248) = 0u;
  strcpy((result + 4368), "tlfd");
  *(result + 4376) = 0;
  *(result + 4448) = 0;
  *(result + 4576) = 0;
  *(result + 4560) = 0u;
  *(result + 4544) = 0u;
  *(result + 4528) = 0u;
  *(result + 4512) = 0u;
  *(result + 4496) = 0u;
  *(result + 4480) = 0u;
  *(result + 4464) = 0u;
  strcpy((result + 4584), "tlfd");
  *(result + 4592) = 0;
  *(result + 4664) = 0;
  *(result + 4792) = 0;
  *(result + 4760) = 0u;
  *(result + 4776) = 0u;
  *(result + 4728) = 0u;
  *(result + 4744) = 0u;
  *(result + 4696) = 0u;
  *(result + 4712) = 0u;
  *(result + 4680) = 0u;
  strcpy((result + 4800), "tlfd");
  *(result + 4808) = 0;
  *(result + 4880) = 0;
  *(result + 5008) = 0;
  *(result + 4992) = 0u;
  *(result + 4976) = 0u;
  *(result + 4960) = 0u;
  *(result + 4944) = 0u;
  *(result + 4928) = 0u;
  *(result + 4912) = 0u;
  *(result + 4896) = 0u;
  strcpy((result + 5016), "tlfd");
  *(result + 5024) = 0;
  *(result + 5096) = 0;
  *(result + 5224) = 0;
  *(result + 5192) = 0u;
  *(result + 5208) = 0u;
  *(result + 5160) = 0u;
  *(result + 5176) = 0u;
  *(result + 5128) = 0u;
  *(result + 5144) = 0u;
  *(result + 5112) = 0u;
  strcpy((result + 5232), "tlfd");
  *(result + 5240) = 0;
  *(result + 5312) = 0;
  *(result + 5440) = 0;
  *(result + 5424) = 0u;
  *(result + 5408) = 0u;
  *(result + 5392) = 0u;
  *(result + 5376) = 0u;
  *(result + 5360) = 0u;
  *(result + 5344) = 0u;
  *(result + 5328) = 0u;
  strcpy((result + 5448), "tlfd");
  *(result + 5456) = 0;
  *(result + 5528) = 0;
  *(result + 5656) = 0;
  *(result + 5624) = 0u;
  *(result + 5640) = 0u;
  *(result + 5592) = 0u;
  *(result + 5608) = 0u;
  *(result + 5560) = 0u;
  *(result + 5576) = 0u;
  *(result + 5544) = 0u;
  strcpy((result + 5664), "tlfd");
  *(result + 5672) = 0;
  *(result + 5744) = 0;
  *(result + 5872) = 0;
  *(result + 5856) = 0u;
  *(result + 5840) = 0u;
  *(result + 5824) = 0u;
  *(result + 5808) = 0u;
  *(result + 5792) = 0u;
  *(result + 5776) = 0u;
  *(result + 5760) = 0u;
  strcpy((result + 5880), "tlfd");
  *(result + 5888) = 0;
  *(result + 5960) = 0;
  *(result + 6088) = 0;
  *(result + 6056) = 0u;
  *(result + 6072) = 0u;
  *(result + 6024) = 0u;
  *(result + 6040) = 0u;
  *(result + 5992) = 0u;
  *(result + 6008) = 0u;
  *(result + 5976) = 0u;
  strcpy((result + 6096), "tlfd");
  *(result + 6104) = 0;
  *(result + 6176) = 0;
  *(result + 6256) = 0;
  *(result + 6240) = 0u;
  *(result + 6224) = 0u;
  *(result + 6208) = 0u;
  *(result + 6192) = 0u;
  return result;
}

uint64_t sub_2B1E18(uint64_t a1)
{
  v3 = (a1 + 192);
  sub_2B2060(&v3);
  v3 = (a1 + 168);
  sub_2B2060(&v3);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 128) == 1)
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
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_2B20B4(&v3);
  return a1;
}

uint64_t sub_2B1ECC(uint64_t a1)
{
  sub_2B1E18(a1 + 6696);
  sub_2B1E18(a1 + 6480);
  sub_2B1E18(a1 + 6264);

  return sub_2B1F24(a1);
}

uint64_t sub_2B1F24(uint64_t a1)
{
  sub_2B1E18(a1 + 6048);
  sub_2B1E18(a1 + 5832);
  sub_2B1E18(a1 + 5616);
  sub_2B1E18(a1 + 5400);
  sub_2B1E18(a1 + 5184);
  sub_2B1E18(a1 + 4968);
  sub_2B1E18(a1 + 4752);
  sub_2B1E18(a1 + 4536);
  sub_2B1E18(a1 + 4320);
  sub_2B1E18(a1 + 4104);
  sub_2B1E18(a1 + 3888);
  sub_2B1E18(a1 + 3672);
  sub_2B1E18(a1 + 3456);
  sub_2B1E18(a1 + 3240);
  sub_2B1E18(a1 + 3024);
  sub_2B1E18(a1 + 2808);
  sub_2B1E18(a1 + 2592);
  sub_2B1E18(a1 + 2376);
  sub_2B1E18(a1 + 2160);
  sub_2B1E18(a1 + 1944);
  sub_2B1E18(a1 + 1728);
  sub_2B1E18(a1 + 1512);
  sub_2B1E18(a1 + 1296);
  sub_2B1E18(a1 + 1080);
  sub_2B1E18(a1 + 864);
  sub_2B1E18(a1 + 648);
  sub_2B1E18(a1 + 432);
  sub_2B1E18(a1 + 216);

  return sub_2B1E18(a1);
}

void sub_2B2060(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2B2160(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2B20B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2B2108(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2B2108(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_2B2160(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      sub_1A8C0(v4);
    }
  }

  a1[1] = v2;
}

void sub_2B21AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_2B2108(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2B21EC(uint64_t *a1)
{
  if (*a1)
  {
    sub_2B2160(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2B222C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 72) = 0;
  }
}

uint64_t sub_2B2290(uint64_t a1)
{
  sub_2B1E18(a1 + 6480);
  sub_2B1E18(a1 + 6264);

  return sub_2B1F24(a1);
}

void sub_2B22DC(uint64_t a1, std::string::size_type a2)
{
  v4 = (a1 + 4096);
  v5 = sub_2B1910(a1);
  v6 = v5 + 6264;
  *(v5 + 6280) = 0u;
  *(v5 + 6296) = 0u;
  *(v5 + 6264) = 0u;
  *(v5 + 6312) = 1684434036;
  v4[2220] = 0;
  v4[2224] = 0;
  v4[2296] = 0;
  *(v5 + 6408) = 0u;
  *(v5 + 6424) = 0u;
  *(v5 + 6440) = 0u;
  *(v5 + 6456) = 0u;
  *(v5 + 6472) = 0u;
  *(v5 + 6488) = 0u;
  *(v5 + 6504) = 0u;
  *(v5 + 6520) = 0;
  *(v5 + 6528) = 1684434036;
  v4[2436] = 0;
  v4[2440] = 0;
  v4[2512] = 0;
  *(v5 + 6736) = 0;
  *(v5 + 6720) = 0u;
  *(v5 + 6704) = 0u;
  *(v5 + 6688) = 0u;
  *(v5 + 6672) = 0u;
  *(v5 + 6656) = 0u;
  *(v5 + 6640) = 0u;
  *(v5 + 6624) = 0u;
  *(v5 + 6744) = 1684434036;
  v4[2652] = 0;
  v4[2656] = 0;
  v4[2728] = 0;
  *(v5 + 6840) = 0u;
  *(v5 + 6856) = 0u;
  *(v5 + 6872) = 0u;
  *(v5 + 6888) = 0u;
  *(v5 + 6904) = 0;
  v17 = 0;
  *v15 = 0u;
  v16 = 0u;
  v48 = 2;
  v47 = xmmword_5C76D0;
  sub_123D6C(v15, &v47, 3);
  sub_2B2584(a1, "headset_general", "headset_latenight_general", "headset_movie", "headset_latenight_general", "headset_latenight_movie", a2, v15, 0, 1, v7, v8, v9, v10, v11, __p, v13, v14, v15[0], v15[1], SBYTE2(v15[1]), SHIBYTE(v15[1]), v15[2], v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  sub_DDE50(v15);
  sub_430E4C(v15, 0x200000002uLL);
  sub_1C3874(v6, v15);
  sub_2B1E18(v15);
  LODWORD(v47) = -1046478848;
  sub_43379C(v15, &v47);
}

void sub_2B252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_DDE50(&a11);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_2B1ECC(v22);
  _Unwind_Resume(a1);
}

void sub_2B2584(uint64_t a1, char *__s, char *a3, char *a4, char *a5, char *a6, std::string::size_type a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  sub_434DE4(v71, 0, __s, __s, a7, 2003068262, 0, 0, __s, a8);
  sub_1C3874(a1, v71);
  sub_2B1E18(v71);
  sub_53E8(&__p, __s);
  sub_DDBBC(v69, a8);
  sub_2B2E4C(v71, 0, &__p, v69, a7, 1);
  sub_1C3874(a1 + 216, v71);
  sub_2B1E18(v71);
  sub_DDE50(v69);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_53E8(&v68, a3);
  sub_DDBBC(v67, a8);
  sub_2B2E4C(v71, 1, &v68, v67, a7, 1);
  sub_1C3874(a1 + 432, v71);
  sub_2B1E18(v71);
  sub_DDE50(v67);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  sub_53E8(&v66, a5);
  sub_DDBBC(v65, a8);
  sub_2B2E4C(v71, 3, &v66, v65, a7, 1);
  sub_1C3874(a1 + 648, v71);
  sub_2B1E18(v71);
  sub_DDE50(v65);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  sub_434DE4(v71, 0, __s, __s, a7, 1214394677, 1, 0, __s, a8);
  sub_1C3874(a1 + 864, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 1214394677, 1, 0, a3, a8);
  sub_1C3874(a1 + 1080, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 1214394677, 1, 0, a4, a8);
  sub_1C3874(a1 + 1296, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 1214394677, 1, 0, a6, a8);
  sub_1C3874(a1 + 1512, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 1214329654, 1, 0, __s, a8);
  sub_1C3874(a1 + 1728, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 1214329654, 1, 0, a3, a8);
  sub_1C3874(a1 + 1944, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 1214329654, 1, 0, a4, a8);
  sub_1C3874(a1 + 2160, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 1214329654, 1, 0, a6, a8);
  sub_1C3874(a1 + 2376, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 1647718502, 1, 0, __s, a8);
  sub_1C3874(a1 + 2592, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 1647718502, 1, 0, a3, a8);
  sub_1C3874(a1 + 2808, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 1647718502, 1, 0, a4, a8);
  sub_1C3874(a1 + 3024, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 1647718502, 1, 0, a6, a8);
  sub_1C3874(a1 + 3240, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 1647718503, 1, 0, __s, a8);
  sub_1C3874(a1 + 3456, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 1647718503, 1, 0, a3, a8);
  sub_1C3874(a1 + 3672, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 1647718503, 1, 0, a4, a8);
  sub_1C3874(a1 + 3888, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 1647718503, 1, 0, a6, a8);
  sub_1C3874(a1 + 4104, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 0, 1, 0, __s, a8);
  sub_1C3874(a1 + 4320, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 0, 1, 0, a3, a8);
  sub_1C3874(a1 + 4536, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 0, 1, 0, a4, a8);
  sub_1C3874(a1 + 4752, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 0, 1, 0, a6, a8);
  sub_1C3874(a1 + 4968, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 1752709424, 0, 0, __s, a8);
  sub_1C3874(a1 + 5184, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 1752709424, 0, 0, a3, a8);
  sub_1C3874(a1 + 5400, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 1752709424, 0, 0, a4, a8);
  sub_1C3874(a1 + 5616, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 1752709424, 0, 0, a6, a8);
  sub_1C3874(a1 + 5832, v71);
  sub_2B1E18(v71);
  sub_53E8(&v64, __s);
  sub_DDBBC(v63, a8);
  sub_2B2E4C(v71, 0, &v64, v63, a7, 1);
  sub_1C3874(a1 + 6048, v71);
  sub_2B1E18(v71);
  sub_DDE50(v63);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }
}

void sub_2B2E4C(void *a1, int a2, std::string *a3, void *a4, std::string::size_type a5, int a6)
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_34;
  }

  v36 = a6;
  v35 = a1;
  v12 = a4;
  v13 = a2;
  v14 = a5;
  v15 = 0;
  v16 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v18 = a3->__r_.__value_.__r.__words[0];
  size = a3->__r_.__value_.__l.__size_;
  while (1)
  {
    v19 = strlen(off_6BFBA0[v15]);
    v20 = v19;
    if ((v16 & 0x80) == 0)
    {
      break;
    }

    if (v19 == size)
    {
      v21 = v18;
      if (size == -1)
      {
        sub_1DE47C();
      }

      goto LABEL_8;
    }

LABEL_9:
    if (++v15 == 6)
    {
      a5 = v14;
      a2 = v13;
      a4 = v12;
      a1 = v35;
      goto LABEL_33;
    }
  }

  v21 = a3;
  if (v20 != v16)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (memcmp(v21, off_6BFBA0[v15], v20))
  {
    goto LABEL_9;
  }

  a5 = v14;
  a2 = v13;
  a4 = v12;
  a1 = v35;
  sub_2B3100(v37, a4, 1);
  sub_2B3338(a4, v37);
  sub_DDE50(v37);
  v22 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v22 < 0)
  {
    v23 = a3->__r_.__value_.__r.__words[0];
    v25 = a3->__r_.__value_.__l.__size_;
    if (v25 == 11)
    {
      goto LABEL_15;
    }

    __s1 = a3->__r_.__value_.__r.__words[0];
    v36 = 1;
  }

  else
  {
    v23 = a3;
    if (v22 != 11)
    {
      v24 = 1;
      goto LABEL_21;
    }

LABEL_15:
    v26 = v23->__r_.__value_.__r.__words[0];
    v27 = *(v23->__r_.__value_.__r.__words + 3);
    v24 = v26 != 0x74756F5F69726973 || v27 != 0x74757074756F5F69;
LABEL_21:
    v36 = v24;
    v25 = a3->__r_.__value_.__l.__size_;
    __s1 = a3->__r_.__value_.__r.__words[0];
  }

  v29 = 0;
  while (2)
  {
    v30 = strlen(off_6BFBD0[v29]);
    v31 = v30;
    if ((v22 & 0x80000000) != 0)
    {
      if (v30 != v25)
      {
        goto LABEL_29;
      }

      v32 = __s1;
      if (v25 == -1)
      {
        sub_1DE47C();
      }
    }

    else
    {
      v32 = a3;
      if (v31 != v22)
      {
LABEL_29:
        if (++v29 == 3)
        {
          goto LABEL_32;
        }

        continue;
      }
    }

    break;
  }

  if (memcmp(v32, off_6BFBD0[v29], v31))
  {
    goto LABEL_29;
  }

  sub_2B3100(v37, a4, 2);
  sub_2B3338(a4, v37);
  sub_DDE50(v37);
LABEL_32:
  std::string::append(a3, "_av", 3uLL);
LABEL_33:
  a6 = v36;
LABEL_34:
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    a3 = a3->__r_.__value_.__r.__words[0];
  }

  if (a6)
  {
    __s = a3;
  }

  else
  {
    __s = 0;
  }

  sub_434DE4(a1, a2, a3, a3, a5, 1633759844, 1, 1, __s, a4);
}

void sub_2B3100(void *a1, uint64_t a2, int a3)
{
  v5 = *(sub_DDBBC(a1, a2) + 8);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a3;
    if (v5 <= a3)
    {
      v7 = a3 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & a3;
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
    if (v10 == a3)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= v5)
      {
        v10 %= v5;
      }
    }

    else
    {
      v10 &= v5 - 1;
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

  if (*(v9 + 4) != a3)
  {
    goto LABEL_17;
  }

  *(v9 + 20) = 1;
}