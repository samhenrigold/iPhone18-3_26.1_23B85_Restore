uint64_t sub_1DB54(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(result + 8);
  v5 = v4 - a4;
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    v8 = *v6++;
    *v7 = v8;
    v7 += 8;
  }

  *(result + 8) = v7;
  if (v4 != a4)
  {
    v9 = v4 - 8;
    do
    {
      *v9 = *(a2 - 8 + v5);
      v9 -= 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

double sub_1DBA0(uint64_t **a1, double *a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      if (v2 == *a1)
      {
        v7 = 1;
      }

      else
      {
        v7 = (v2 - *a1) >> 2;
      }

      sub_11FF8(a1[4], v7);
    }

    v5 = v4 - *a1 + 1;
    v3 = &v4[-(v5 / 2)];
    if (v4 != v2)
    {
      do
      {
        v6 = *v4++;
        *v3++ = v6;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[v5 / -2];
    a1[2] = v3;
  }

  result = *a2;
  *v3 = *a2;
  a1[2] = v3 + 1;
  return result;
}

void sub_1DCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DD04(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = *(a2 + 8);
  sub_12A4C(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_12A4C(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_1DDC0(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = 8 * a3;
    v5 = &v3[a3];
    do
    {
      v6 = *a2++;
      *v3++ = v6;
      v4 -= 8;
    }

    while (v4);
    v3 = v5;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_1DDEC(void *a1)
{
  *a1 = &off_28F38;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1DE40(void *a1)
{
  sub_1DDEC(a1);

  operator delete();
}

void sub_1DE78(void *a1)
{
  sub_1DDEC(a1);

  operator delete();
}

uint64_t sub_1DEB0(char *a1)
{
  result = sub_1DF28(a1);
  if (result)
  {
    v3 = *a1;
    if (v3 >= 0x10)
    {
      result = v3 >> 4;
      if ((result - 8) >= 7)
      {
        if (result == 15 && v3 > 0xFFFFFFF0)
        {
          return *(&unk_23033 + v3 + 15);
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 4;
    }
  }

  return result;
}

BOOL sub_1DF28(unsigned __int8 *a1)
{
  v1 = *(a1 + 2);
  if (!*(a1 + 2))
  {
    return 0;
  }

  if (v1 == 3 || a1[v1 - 1] == 247)
  {
    return 1;
  }

  v3 = *a1;
  if ((v3 >> 4) - 12 < 2)
  {
    return v1 == 2;
  }

  if (v3 >> 4 != 15)
  {
    return 0;
  }

  if (v3 == 241)
  {
    return v1 == 2;
  }

  if (v3 != 246)
  {
    if (v3 != 243)
    {
      return 0;
    }

    return v1 == 2;
  }

  return v1 == 1;
}

uint64_t sub_1DFA4(MIDIProtocolID a1, MIDITimeStamp a2, const UInt32 *a3, uint64_t a4, MIDIEventList *a5, unint64_t a6)
{
  result = 0;
  v8 = a6 - a5;
  if (a6 >= a5 && a5 && a6)
  {
    bzero(a5, a6 - a5);
    v14 = MIDIEventListInit(a5, a1);
    if (a4 >= 1)
    {
      v15 = byte_23008[*a3 >> 28];
      if (a4 >= v15)
      {
        v16 = v14;
        v17 = 0;
        v18 = -1;
        v19 = a3;
        v20 = &a3[a4];
        v21 = &a3[v15];
        while (1)
        {
          v22 = v21;
          v23 = *v19 >> 28;
          if (v23)
          {
            v24 = v23 == 15;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v25 = 255;
          }

          else
          {
            v25 = HIBYTE(*v19) & 0xF;
          }

          if (v18 != -1 && v18 != v25)
          {
            return (v19 - a3) >> 2;
          }

          if (*v19 >> 28 <= 2)
          {
            break;
          }

          if (v23 != 5 && v23 != 3)
          {
            goto LABEL_29;
          }

          if ((v17 & 1) == 0 && a5->numPackets || &v16->words[v16->wordCount + v15] > a6)
          {
            return (v19 - a3) >> 2;
          }

          v17 = 1;
LABEL_31:
          v27 = MIDIEventListAdd(a5, v8, v16, a2, v15, v19);
          if (!v27)
          {
            return (v19 - a3) >> 2;
          }

          if (v22 < v20)
          {
            v16 = v27;
            v15 = byte_23008[*v22 >> 28];
            v21 = &v22[v15];
            v19 = v22;
            v18 = v25;
            if (v21 <= v20)
            {
              continue;
            }
          }

          return (v22 - a3) >> 2;
        }

        if (v23 < 2)
        {
          goto LABEL_31;
        }

        if (v23 == 2 && a5->protocol == kMIDIProtocol_2_0)
        {
          a5->protocol = kMIDIProtocol_1_0;
        }

LABEL_29:
        if (v17)
        {
          return (v19 - a3) >> 2;
        }

        v17 = 0;
        goto LABEL_31;
      }
    }

    v22 = a3;
    return (v22 - a3) >> 2;
  }

  return result;
}

uint64_t sub_1E164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_1E1E0(a4, v5);
      v7 = *(v5 + 280);
      *(a4 + 285) = *(v5 + 285);
      *(a4 + 280) = v7;
      v5 += 296;
      a4 += 296;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1E1E0(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 272);
  if (*(result + 272) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_11E24(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (*(&off_28F68 + v4))(v6);
    }
  }

  return result;
}

void *sub_1E250(uint64_t *a1, void *__dst, void *__src)
{
  v4 = *a1;
  if (*(*a1 + 272))
  {
    sub_11E24(*a1);
    result = memcpy(v4, __src, 0x10CuLL);
    v4[68] = 0;
  }

  else
  {

    return memcpy(__dst, __src, 0x10CuLL);
  }

  return result;
}

__n128 sub_1E2C8(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 272) == 1)
  {

    result.n128_u64[0] = sub_1E348(a2, a3).n128_u64[0];
  }

  else
  {
    sub_11E24(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 272) = 1;
  }

  return result;
}

__n128 sub_1E348(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *sub_1E39C(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &off_28F58;
  a1[1] = v4;
  return a1;
}

void *sub_1E400(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &off_28F58;
  a1[1] = v4;
  return a1;
}

void sub_1E4EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_169D8(a1, a2);
  if (v2)
  {
    sub_169D8(v3, v4);
    v5 = qword_2C1A0;
    v6 = os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      v12 = 136315394;
      v13 = "USBMIDIDriverBase.cpp";
      v14 = 1024;
      v15 = 654;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ==========================================================================================================", &v12, 0x12u);
    }

    sub_169D8(v6, v7);
    v8 = qword_2C1A0;
    v9 = os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      v12 = 136315650;
      v13 = "USBMIDIDriverBase.cpp";
      v14 = 1024;
      v15 = 655;
      v16 = 1024;
      v17 = v2;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d NOTICE: USB MIDI Driver destructive tracing at level %d", &v12, 0x18u);
    }

    sub_169D8(v9, v10);
    v11 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "USBMIDIDriverBase.cpp";
      v14 = 1024;
      v15 = 656;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ==========================================================================================================", &v12, 0x12u);
    }
  }
}

void *sub_1E720(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28FD0;
  sub_BF9C((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void sub_1E7AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t NewUSBMIDIClassDriver(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0xDEu, 0x95u, 0x74u, 0xFu, 0xE4u, 0x11u, 0xD4u, 0xBBu, 0x1Au, 0, 0x50u, 0xE4u, 0xCEu, 0xA5u, 0x26u);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

void sub_1EA44()
{
  if ((byte_2C1B0 & 1) == 0)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AppleMIDIUSBDriver");
    if (BundleWithIdentifier)
    {
      v1 = BundleWithIdentifier;
      CFRetain(BundleWithIdentifier);
      off_2C070 = CFBundleCopyLocalizedString(v1, off_2C070, off_2C070, @"USBMIDILocalizable");
      off_2C078 = CFBundleCopyLocalizedString(v1, off_2C078, off_2C078, @"USBMIDILocalizable");
      off_2C080 = CFBundleCopyLocalizedString(v1, off_2C080, off_2C080, @"USBMIDILocalizable");
      off_2C088 = CFBundleCopyLocalizedString(v1, off_2C088, off_2C088, @"USBMIDILocalizable");
      off_2C098 = CFBundleCopyLocalizedString(v1, off_2C098, off_2C098, @"USBMIDILocalizable");
      off_2C090 = CFBundleCopyLocalizedString(v1, off_2C090, off_2C090, @"USBMIDILocalizable");
      CFRelease(v1);
      byte_2C1B0 = 1;
    }
  }
}

void *sub_1EB4C(void *a1, uint64_t a2)
{
  *a1 = off_29008;
  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  return sub_2E6C(a1, a2);
}

void sub_1EBB0(void *a1, uint64_t a2)
{
  sub_1EB4C(a1, a2);

  operator delete();
}

void sub_1EBE8(uint64_t *a1, MIDIDeviceListRef a2)
{
  if (!a1[11])
  {
    Current = CFRunLoopGetCurrent();
    a1[11] = Current;
    CFRetain(Current);
  }

  operator new();
}

void sub_1ED68(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C1C0, memory_order_acquire) & 1) == 0)
  {
    sub_20C80();
  }
}

uint64_t sub_1ED98(uint64_t a1, uint64_t a2)
{
  sub_1ED68(a1, a2);
  v3 = qword_2C1B8;
  if (os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "USBMIDIClassDriver.cpp";
    v9 = 1024;
    v10 = 122;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIClassDriver::Stop()", &v7, 0x12u);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 104) = 0;
  v5 = *(a1 + 96);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 96) = 0;
  return 0;
}

uint64_t sub_1EEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ED68(a1, a2);
  v6 = qword_2C1B8;
  if (os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "USBMIDIClassDriver.cpp";
    v34 = 1024;
    v35 = 221;
    v36 = 2048;
    *v37 = a2;
    *&v37[8] = 2048;
    *&v37[10] = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIClassDriver::CreateDevice(%p, %p)", buf, 0x26u);
  }

  outDevice = 0;
  sub_1A778(a2, a3, buf);
  if (!*buf)
  {
    v21 = 0;
    goto LABEL_39;
  }

  sub_167B4(a2, a3);
  v8 = v7;
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  __p = 0;
  v28 = 0uLL;
  if (*(a1 + 112) != 1 || v40 == v41)
  {
    sub_18DAC(a2, BYTE2(v35), v38, v39, v32);
    v10 = v29[0];
    *v29 = *v32;
    v30 = *&v32[16];
  }

  else
  {
    sub_17E40(a2, BYTE2(v35), &v40, v32);
    v10 = __p;
    v11 = *v32;
    __p = *v32;
    v28 = *&v32[8];
    v12 = *&v32[8];
    if (*v32 != *&v32[8])
    {
      v13 = 1;
      goto LABEL_10;
    }

    sub_1ED68(v10, v9);
    v25 = qword_2C1B8;
    v10 = os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      *v32 = 136315394;
      *&v32[4] = "USBMIDIClassDriver.cpp";
      *&v32[12] = 1024;
      *&v32[14] = 236;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unable to create USB MIDI 2.0 maplist. Falling back to USB MIDI 1.0.", v32, 0x12u);
    }
  }

  v13 = 0;
  v11 = v29[0];
  v12 = v29[1];
LABEL_10:
  if (v11 == v12)
  {
    sub_1ED68(v10, v9);
    v22 = qword_2C1B8;
    if (os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315394;
      *&v32[4] = "USBMIDIClassDriver.cpp";
      *&v32[12] = 1024;
      *&v32[14] = 245;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBMIDIClassDriver::CreateDevice() - Fatal error: mapList is empty, so entities cannot be constructed.", v32, 0x12u);
    }
  }

  else
  {
    v14 = sub_167EC(a2, off_2C070);
    v16 = v15;
    MIDIDeviceCreate((a1 + 8), v15, v14, v15, &outDevice);
    if (v14 && off_2C070 && CFStringCompare(v14, off_2C070, 0))
    {
      CFRelease(v14);
    }

    v26 = 0;
    (*(*v8 + 104))(v8, &v26);
    v17 = v26;
    if (v13 && (v18 = sub_19300(a2, outDevice, &__p, &v40, off_2C088, off_2C090, v16), (v18 & 1) != 0) || (v18 = sub_19DF0(a2, off_2C080, outDevice, v29, &v37[4], v38, v39, v16, v17 == 1452), (v18 & 1) != 0))
    {
      if (v16)
      {
        v19 = off_2C078;
        if (off_2C078)
        {
          v18 = CFStringCompare(v16, off_2C078, 0);
          if (v18)
          {
            CFRelease(v16);
          }
        }
      }

      sub_1ED68(v18, v19);
      v20 = qword_2C1B8;
      if (os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_INFO))
      {
        *v32 = 136315650;
        *&v32[4] = "USBMIDIClassDriver.cpp";
        *&v32[12] = 1024;
        *&v32[14] = 271;
        *&v32[18] = 1024;
        *&v32[20] = outDevice;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIClassDriver::CreateDevice() returning 0x%x", v32, 0x18u);
      }

      v21 = outDevice;
      goto LABEL_35;
    }

    sub_1ED68(v18, v19);
    v23 = qword_2C1B8;
    if (os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315394;
      *&v32[4] = "USBMIDIClassDriver.cpp";
      *&v32[12] = 1024;
      *&v32[14] = 265;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBMIDIClassDriver::CreateDevice() - Fatal error: unable to construct entities with the suppplied port map. The device will not be added to the setup.", v32, 0x12u);
    }

    v21 = 0;
    if (!v16 || !off_2C078)
    {
      goto LABEL_35;
    }

    if (CFStringCompare(v16, off_2C078, 0))
    {
      CFRelease(v16);
    }
  }

  v21 = 0;
LABEL_35:
  if (__p)
  {
    *&v28 = __p;
    operator delete(__p);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

LABEL_39:
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (*&v37[4])
  {
    *&v37[12] = *&v37[4];
    operator delete(*&v37[4]);
  }

  return v21;
}

void sub_1F418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  sub_120E8(&a21);
  _Unwind_Resume(a1);
}

void sub_1F4CC(int a1, uint64_t a2, uint64_t a3, MIDIObjectRef a4)
{
  v7 = sub_167B4(a2, a3);
  if (a4)
  {
    if (v7)
    {
      v9 = v8;
      if (v8)
      {
        str = sub_167EC(a2, off_2C070);
        theString1 = v10;
        v11 = sub_1C0A4(a1, a4);
        if (v11)
        {
          sub_1ED68(v11, v12);
          v13 = qword_2C1B8;
          if (os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "USBMIDIClassDriver.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 342;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Manufacturer, model, or name is generic.", buf, 0x12u);
          }

          *buf = 0;
          v51 = 0;
          v48 = 0;
          if (MIDIObjectGetStringProperty(a4, kMIDIPropertyManufacturer, buf))
          {
            v14 = 0;
          }

          else
          {
            if (CFEqual(*buf, off_2C070) && str)
            {
              MIDIObjectSetStringProperty(a4, kMIDIPropertyManufacturer, str);
              v14 = 1;
            }

            else
            {
              v14 = 0;
            }

            CFRelease(*buf);
            *buf = 0;
          }

          if (!MIDIObjectGetStringProperty(a4, kMIDIPropertyModel, &v51))
          {
            if (CFEqual(v51, off_2C078) && theString1)
            {
              MIDIObjectSetStringProperty(a4, kMIDIPropertyModel, theString1);
              MIDIObjectSetStringProperty(a4, kMIDIPropertyName, theString1);
              v14 = 1;
            }

            CFRelease(v51);
            v51 = 0;
          }

          if (!MIDIObjectGetStringProperty(a4, kMIDIPropertyName, &v48))
          {
            if (CFEqual(v48, off_2C078) && theString1)
            {
              MIDIObjectSetStringProperty(a4, kMIDIPropertyModel, theString1);
              MIDIObjectSetStringProperty(a4, kMIDIPropertyName, theString1);
              v14 = 1;
            }

            CFRelease(v48);
            v48 = 0;
          }

          v15 = str;
          if (str && off_2C070 && CFStringCompare(str, off_2C070, 0))
          {
            CFRelease(v15);
          }

          str = 0;
          v16 = theString1;
          if (theString1 && off_2C078 && CFStringCompare(theString1, off_2C078, 0))
          {
            CFRelease(v16);
          }

          theString1 = 0;
          if (v14)
          {
            goto LABEL_34;
          }
        }

        if (sub_1C1B4(a1, a4))
        {
LABEL_34:
          v17 = sub_1C1B4(a1, a4);
          if (v17)
          {
            sub_1ED68(v17, v18);
            v19 = qword_2C1B8;
            if (os_log_type_enabled(qword_2C1B8, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "USBMIDIClassDriver.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 400;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d Entity name is generic.", buf, 0x12u);
            }
          }

          v51 = 0;
          v52 = 0;
          v53 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v45 = 0;
          v46 = 0;
          v47 = 0;
          __p = 0;
          v43 = 0;
          v44 = 0;
          sub_16A08(v9, buf);
          sub_638C(a3);
          sub_16BD4(v9, *buf, &v51, &v48, &v45, &__p);
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 1);
          v21 = -1431655765 * ((v46 - v45) >> 1);
          if (v20 <= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = v20;
          }

          if (v22 == MIDIDeviceGetNumberOfEntities(a4) && !MIDIObjectGetStringProperty(a4, kMIDIPropertyModel, &theString1))
          {
            if (v22 >= 1)
            {
              v23 = 0;
              v35 = v21;
              v36 = v20;
              v24 = 4;
              while (1)
              {
                v40 = &off_28F58;
                cf = 0;
                Entity = MIDIDeviceGetEntity(a4, v23);
                if (!Entity)
                {
                  sub_1DDEC(&v40);
                  goto LABEL_74;
                }

                v26 = v23 >= v36 ? 0 : sub_19214(a2, *(&v48->isa + v24), theString1);
                if (v23 >= v35)
                {
                  break;
                }

                v27 = sub_19214(a2, *(v45 + v24), theString1);
                v28 = v27;
                if (!v26 || !v27 || !CFEqual(v26, v27))
                {
                  goto LABEL_56;
                }

                CFRetain(v26);
                v29 = cf;
                cf = v26;
                if (v29)
                {
                  CFRelease(v29);
                }

                CFRelease(v26);
                CFRelease(v28);
                v26 = 0;
                v28 = 0;
LABEL_62:
                MIDIObjectSetStringProperty(Entity, kMIDIPropertyName, cf);
                if (v26)
                {
                  Source = MIDIEntityGetSource(Entity, 0);
                  MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v26);
                }

                if (v28)
                {
                  Destination = MIDIEntityGetDestination(Entity, 0);
                  MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v28);
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                if (v28)
                {
                  CFRelease(v28);
                }

                sub_1DDEC(&v40);
                ++v23;
                v24 += 6;
                if (v22 == v23)
                {
                  goto LABEL_71;
                }
              }

              v28 = 0;
LABEL_56:
              if (v22 == 1)
              {
                v30 = theString1;
                if (theString1)
                {
                  CFRetain(theString1);
                }

                v31 = cf;
                cf = v30;
                if (v31)
                {
                  CFRelease(v31);
                }
              }

              else
              {
                sub_1E400(&v38, off_2C080, (v23 + 1));
                v32 = cf;
                cf = v39;
                v39 = v32;
                sub_1DDEC(&v38);
              }

              goto LABEL_62;
            }

LABEL_71:
            if (theString1)
            {
              CFRelease(theString1);
            }
          }

LABEL_74:
          if (v57 < 0)
          {
            operator delete(*&buf[8]);
          }

          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }

          if (v45)
          {
            v46 = v45;
            operator delete(v45);
          }

          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          if (v51)
          {
            v52 = v51;
            operator delete(v51);
          }
        }
      }
    }
  }
}

void sub_1FB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a2)
  {
    sub_18A0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1FC20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_290E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1FC4C(uint64_t result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    *(*(result + 8) + 112) = 1;
  }

  return result;
}

void *sub_1FC68(void *a1, uint64_t a2)
{
  v4 = sub_6898(a1, *(a2 + 8));
  *v4 = &off_29130;
  v4[8] = a2;
  sub_29B4(v4);
  return a1;
}

uint64_t sub_1FCD8(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 56))(a1);
  if (v3)
  {
    sub_1FE30(v3, v4);
    v5 = qword_2C1C8;
    result = os_log_type_enabled(qword_2C1C8, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 136315650;
    v11 = "USBMIDIInterfaceManager.cpp";
    v12 = 1024;
    v13 = 34;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIInterfaceManager::MatchInterface(%p) - already using interface; failing match", buf, 0x1Cu);
    return 0;
  }

  v7 = sub_5F80(a2);
  v9 = 0;
  if ((*(*v7 + 80))(v7, &v9 + 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = HIBYTE(v9) == 1;
  }

  if (!v8 || (*(*v7 + 88))(v7, &v9))
  {
    return 0;
  }

  sub_20CE0(&v9, a2, buf);
  return buf[0];
}

void sub_1FE30(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C1D0, memory_order_acquire) & 1) == 0)
  {
    sub_20DF0();
  }
}

uint64_t sub_1FE90(uint64_t a1, uint64_t a2)
{
  sub_1FE30(a1, a2);
  v4 = qword_2C1C8;
  if (os_log_type_enabled(qword_2C1C8, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "USBMIDIInterfaceManager.cpp";
    v8 = 1024;
    v9 = 70;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIInterfaceMangaer::RequestTerminateService(%u) -- The interface will now be closed to allow other drivers to match in response to an interface seize attempt.", &v6, 0x18u);
  }

  return (*(**(a1 + 64) + 24))(*(a1 + 64), a2);
}

void sub_1FF90(uint64_t a1, uint64_t a2)
{
  sub_2748(a1, a2);

  operator delete();
}

void sub_1FFC8(uint64_t a1, uint64_t a2)
{
  sub_2548(a1, a2);
  v3 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "IOServiceClient.cpp";
    v6 = 1024;
    v7 = 68;
    v8 = 2048;
    v9 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IOServiceClient(%p)::IOServiceClient() - failure", &v4, 0x1Cu);
  }
}

void sub_20090()
{
  if (__cxa_guard_acquire(byte_2C118))
  {
    qword_2C110 = os_log_create("com.apple.coremidi", "ioserv");

    __cxa_guard_release(byte_2C118);
  }
}

uint64_t sub_200F0(uint64_t a1, mach_port_t *a2)
{
  existing = 0;
  v4 = CFRetain(*(a1 + 56));
  sub_2548(v4, v5);
  v6 = qword_2C110;
  if (os_log_type_enabled(qword_2C110, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 56);
    *buf = 136315906;
    v11 = "IOServiceClient.cpp";
    v12 = 1024;
    v13 = 140;
    v14 = 2048;
    v15 = a1;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)ScanServices() - getting matching services for dictionary: %@", buf, 0x26u);
  }

  if (!IOServiceGetMatchingServices(*a2, *(a1 + 56), &existing))
  {
    sub_28B4(a1, existing);
  }

  result = existing;
  if (existing)
  {
    return IOObjectRelease(existing);
  }

  return result;
}

void sub_20248()
{
  if (__cxa_guard_acquire(byte_2C128))
  {
    qword_2C120 = os_log_create("com.apple.coremidi", "usbdev");

    __cxa_guard_release(byte_2C128);
  }
}

void sub_202A8(uint64_t a1, uint64_t a2)
{
  sub_51C0(a1, a2);
  if (sub_6510())
  {
    sub_64D4();
    sub_64E4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  sub_6504();
}

void sub_2034C(uint64_t a1, uint64_t a2)
{
  sub_51C0(a1, a2);
  v2 = qword_2C120;
  if (os_log_type_enabled(qword_2C120, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136315650;
    sub_64D4();
    sub_64F4();
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBInterface::Open() - err = 0x%x", v3, 0x18u);
  }

  sub_6504();
}

void sub_20414()
{
  if (__cxa_guard_acquire(byte_2C138))
  {
    qword_2C130 = os_log_create("com.apple.coremidi", "usbdvm");

    __cxa_guard_release(byte_2C138);
  }
}

void sub_2047C()
{
  if (__cxa_guard_acquire(byte_2C148))
  {
    qword_2C140 = os_log_create("com.apple.coremidi", "intmgr");

    __cxa_guard_release(byte_2C148);
  }
}

void sub_204DC()
{
  if (__cxa_guard_acquire(byte_2C158))
  {
    qword_2C150 = os_log_create("com.apple.coremidi", "ciemit");

    __cxa_guard_release(byte_2C158);
  }
}

void sub_20540()
{
  if (__cxa_guard_acquire(byte_2C168))
  {
    qword_2C160 = os_log_create("com.apple.coremidi", "proton");

    __cxa_guard_release(byte_2C168);
  }
}

void sub_205A0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  sub_7EC8(a1, a2);
  v3 = qword_2C160;
  if (os_log_type_enabled(qword_2C160, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "MIDIProtocolNegotiator.cpp";
    v6 = 1024;
    v7 = 360;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] handleMessage failed with 0x%x", &v4, 0x18u);
  }
}

void sub_20664()
{
  if (__cxa_guard_acquire(byte_2C178))
  {
    qword_2C170 = os_log_create("com.apple.coremidi", "umptrs");
    __cxa_guard_release(byte_2C178);
  }
}

void sub_206B0(uint64_t a1)
{
  v2 = MIDIGetDriverIORunLoop();
  source = 0;
  if (!v2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v4 = v2;
  v5 = (*(**(a1 + 104) + 40))(*(a1 + 104));
  source = v5;
  v6 = v5 == 0;
  if (!v5)
  {
    v2 = (*(**(a1 + 104) + 32))(*(a1 + 104), &source);
    v7 = 0;
    if (v2 || !source)
    {
      goto LABEL_11;
    }

    sub_BF6C(v2, v3);
    v8 = qword_2C180;
    v9 = os_log_type_enabled(qword_2C180, OS_LOG_TYPE_DEBUG);
    v5 = source;
    if (v9)
    {
      *buf = 136315906;
      v14 = "USBMIDIDevice.cpp";
      v15 = 1024;
      v16 = 307;
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = source;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() created CFRunLoopSource %p", buf, 0x26u);
      v5 = source;
    }
  }

  v2 = CFRunLoopContainsSource(v4, v5, kCFRunLoopDefaultMode);
  if (!v2)
  {
    CFRunLoopAddSource(v4, source, kCFRunLoopDefaultMode);
  }

  v7 = v6;
LABEL_11:
  sub_BF6C(v2, v3);
  v10 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    v11 = "failure";
    *buf = 136315906;
    v14 = "USBMIDIDevice.cpp";
    if (v7)
    {
      v11 = "success";
    }

    v15 = 1024;
    v16 = 313;
    v17 = 2048;
    v18 = a1;
    v19 = 2080;
    v20 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() = %s", buf, 0x26u);
  }
}

void sub_208BC()
{
  if (__cxa_guard_acquire(byte_2C188))
  {
    qword_2C180 = os_log_create("com.apple.coremidi", "usbmio");

    __cxa_guard_release(byte_2C188);
  }
}

void sub_2091C(uint64_t a1, _BYTE *a2)
{
  sub_BF6C(a1, a2);
  v4 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "USBMIDIDevice.cpp";
    v7 = 1024;
    v8 = 240;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() encountered an error and is exiting prematurely.", &v5, 0x1Cu);
  }

  *a2 = 0;
}

void sub_209F4(NSObject *a1, int a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "USBMIDIDevice.cpp";
    v6 = 1024;
    v7 = 496;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::FindPipes: failed (0x%x)", &v4, 0x18u);
  }
}

void sub_20AD8()
{
  if (__cxa_guard_acquire(byte_2C198))
  {
    qword_2C190 = os_log_create("com.apple.coremidi", "usbmdm");

    __cxa_guard_release(byte_2C198);
  }
}

void sub_20B38(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v6)
  {
    sub_46A0(v6);
  }

  sub_13CD0(v6, a2);
  v7 = qword_2C190;
  if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "USBMIDIDeviceManager.cpp";
    v10 = 1024;
    v11 = 393;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d      [AQAMIDI] USB MIDI device initialization failed.", &v8, 0x12u);
  }

  *a3 = v4;
}

void sub_20C20()
{
  if (__cxa_guard_acquire(byte_2C1A8))
  {
    qword_2C1A0 = os_log_create("com.apple.coremidi", "usbmba");

    __cxa_guard_release(byte_2C1A8);
  }
}

void sub_20C80()
{
  if (__cxa_guard_acquire(byte_2C1C0))
  {
    qword_2C1B8 = os_log_create("com.apple.coremidi", "usbdrv");

    __cxa_guard_release(byte_2C1C0);
  }
}

void sub_20CE0(_BYTE *a1, uint64_t a2, BOOL *a3)
{
  sub_1FE30(a1, a2);
  v6 = qword_2C1C8;
  if (os_log_type_enabled(qword_2C1C8, OS_LOG_TYPE_INFO))
  {
    v7 = *a1;
    v10 = "USBMIDIInterfaceManager.cpp";
    v9 = 136315906;
    v11 = 1024;
    if (v7 == 3)
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    v12 = 45;
    v13 = 2048;
    v14 = a2;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIInterfaceManager::MatchInterface(%p) - returning %s", &v9, 0x26u);
  }

  *a3 = *a1 == 3;
}

void sub_20DF0()
{
  if (__cxa_guard_acquire(byte_2C1D0))
  {
    qword_2C1C8 = os_log_create("com.apple.coremidi", "usbinf");

    __cxa_guard_release(byte_2C1D0);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
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