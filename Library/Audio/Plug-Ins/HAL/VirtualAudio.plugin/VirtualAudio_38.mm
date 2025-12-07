void sub_3101A8(uint64_t a1, std::string *a2)
{
  sub_30F188(__dst);
  sub_53E8(&__p, "HAL");
  sub_30F2B4(a1, __dst, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_310220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_310254(caulk::build::detail *a1)
{
  v1 = a1;
  kind = caulk::build::detail::get_kind(a1);
  if ((kind & 1) == 0 && (caulk::build::detail::get_kind(kind) & 2) == 0)
  {
    return 0;
  }

  CFPreferencesAppSynchronize(@"com.apple.coreaudio");
  result = sub_4650DC(@"EnableTelephonyMonitor", @"com.apple.coreaudio", 0);
  if (result)
  {
    if (v1 == 3)
    {
      v4 = @"com.apple.audio.virtualaudio";
      CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
      v5 = @"EnableEANCTelephonyMonitor";
    }

    else if (v1 == 2)
    {
      v4 = @"com.apple.coreaudio";
      CFPreferencesAppSynchronize(@"com.apple.coreaudio");
      v5 = @"EnableHALTelephonyMonitor";
    }

    else
    {
      v4 = @"com.apple.audio.virtualaudio";
      CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
      v5 = @"EnableVADTelephonyMonitor";
    }

    return sub_4650DC(v5, v4, 0) != 0;
  }

  return result;
}

void sub_310328(uint64_t a1)
{
  v7 = 0;
  v2 = MGCopyAnswerWithError();
  v3 = v2;
  v6 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      sub_28D4E0(&v5, &v6);
      *a1 = v5;
      *(a1 + 8) = 1;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    CFRelease(v3);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

id sub_3103F4()
{
  if (MGGetBoolAnswer())
  {
    v0 = sub_106F10(@"cBy4BcYs5YWtFHbBpt4C6A");
    v1 = 0;
    if (v0 >= 0x100u && (v0 & 1) != 0)
    {
      v1 = [CPMSAgent isCPMSSupportedForClient:6];
    }

    v2 = *sub_5544(17);
    v3 = v2;
    if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "unsupported";
      v11 = "CPMSInterface.mm";
      v10 = 136315650;
      if (v1)
      {
        v4 = "supported";
      }

      v12 = 1024;
      v13 = 91;
      v14 = 2080;
      v15 = v4;
      v5 = "%25s:%-5d CPMS for Haptics is %s";
LABEL_19:
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, v5, &v10, 0x1Cu);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_6E9B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9B58))
    {
      sub_3107F0(&v10);
      v9 = sub_28D638();
      sub_310938(&v10);
      byte_6E9B50 = v9;
      __cxa_guard_release(&qword_6E9B58);
    }

    if (byte_6E9B50 == 1)
    {
      v1 = [CPMSAgent isCPMSSupportedForClient:5];
    }

    else
    {
      v1 = 0;
    }

    v6 = *sub_5544(17);
    v3 = v6;
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "unsupported";
      v11 = "CPMSInterface.mm";
      v10 = 136315650;
      if (v1)
      {
        v7 = "supported";
      }

      v12 = 1024;
      v13 = 78;
      v14 = 2080;
      v15 = v7;
      v5 = "%25s:%-5d CPMS for Speaker is %s";
      goto LABEL_19;
    }
  }

  return v1;
}

void sub_310628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_310938(&a9);
  __cxa_guard_abort(&qword_6E9B58);
  _Unwind_Resume(a1);
}

uint64_t sub_310658()
{
  if ((atomic_load_explicit(&qword_6E9B08, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_6E9B08);
    if (v1)
    {
      byte_6E9B00 = caulk::product::get_device_class(v1) == 6;
      __cxa_guard_release(&qword_6E9B08);
    }
  }

  return byte_6E9B00;
}

uint64_t sub_3106D4(uint64_t a1)
{
  v1 = a1;
  if (!sub_71704())
  {
    return HIBYTE(v1) & 1u & v1;
  }

  return MGGetBoolAnswer();
}

unint64_t sub_310728()
{
  v0 = sub_DD858();
  v1 = vdupq_n_s32(v0);
  LOBYTE(v2) = 1;
  if ((vmaxv_u16(vmovn_s32(vorrq_s8(vceqq_s32((*&v1 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)), xmmword_5172D0), vceqq_s32(v1, xmmword_5172E0)))) & 1) == 0 && v0 != 75 && v0 != 83)
  {
    v3 = v0 & 0xFFFFFFFE;
    if ((v0 & 0xFFFFFFFE) != 0x5C && v3 != 80 && v0 != 84 && (v0 & 0xFFFFFFFB) - 73 >= 2 && v3 != 94 && v0 - 85 >= 2)
    {
      v4 = sub_DD858();
      if (v4 > 0x2E)
      {
        LOBYTE(v2) = 0;
      }

      else
      {
        v2 = 0x43FF9C1E0600uLL >> v4;
      }
    }
  }

  return v2 & 1;
}

char *sub_3107F0(char *a1)
{
  sub_53E8(a1, "IODeviceTree:/product/audio");
  v2 = a1;
  if (a1[23] < 0)
  {
    v2 = *a1;
  }

  v3 = IORegistryEntryFromPath(kIOMainPortDefault, v2);
  *(a1 + 6) = v3;
  if (!v3)
  {
    v4 = *sub_5544(14);
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1;
      if (a1[23] < 0)
      {
        v6 = *a1;
      }

      v8 = 136315650;
      v9 = "StandardUtilities.h";
      v10 = 1024;
      v11 = 1236;
      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", &v8, 0x1Cu);
    }
  }

  return a1;
}

uint64_t sub_310938(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_31097C()
{
  if ((atomic_load_explicit(&qword_6E9B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9B68))
  {
    sub_3107F0(v2);
    v1 = sub_28D154(v3, "supports-secure-microphone");
    sub_310938(v2);
    byte_6E9B60 = v1;
    __cxa_guard_release(&qword_6E9B68);
  }

  return byte_6E9B60;
}

void sub_310A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_310938(&a9);
  __cxa_guard_abort(&qword_6E9B68);
  _Unwind_Resume(a1);
}

uint64_t sub_310A30()
{
  if ((atomic_load_explicit(&qword_6E9B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9B88))
  {
    sub_3107F0(v2);
    v1 = sub_28D154(v3, "supports-concurrent-hp-lp-mics");
    sub_310938(v2);
    byte_6E9B80 = v1;
    __cxa_guard_release(&qword_6E9B88);
  }

  return MGGetBoolAnswer() & byte_6E9B80;
}

void sub_310ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_310938(&a9);
  __cxa_guard_abort(&qword_6E9B88);
  _Unwind_Resume(a1);
}

uint64_t sub_310AF4()
{
  v0 = &unk_6E9000;
  if ((atomic_load_explicit(&qword_6E9B98, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_6E9B98);
    v0 = &unk_6E9000;
    if (v2)
    {
      v3 = sub_30F540(@"MicrophoneCount");
      if ((v3 & 0x100000000) != 0)
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }

      dword_6E9B90 = v4;
      __cxa_guard_release(&qword_6E9B98);
      v0 = &unk_6E9000;
    }
  }

  return v0[740];
}

uint64_t sub_310B68()
{
  if ((atomic_load_explicit(&qword_6E9BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9BA8))
  {
    if (sub_71704())
    {
      v1 = sub_30EBC8() >> 4 > 0x1F4;
    }

    else
    {
      v1 = 0;
    }

    byte_6E9BA0 = v1;
    __cxa_guard_release(&qword_6E9BA8);
  }

  return byte_6E9BA0;
}

uint64_t sub_310BF8(void *prime, uint64_t a2)
{
  v2 = 0;
  *__p = 0u;
  v18 = 0u;
  v19 = 1065353216;
  do
  {
    v3 = dword_51942C[v2];
    if (!__p[1])
    {
      goto LABEL_18;
    }

    v4 = vcnt_s8(__p[1]);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = dword_51942C[v2];
      if (__p[1] <= v3)
      {
        v5 = v3 % LODWORD(__p[1]);
      }
    }

    else
    {
      v5 = (LODWORD(__p[1]) - 1) & v3;
    }

    v6 = *(__p[0] + v5);
    if (!v6 || (v7 = *v6) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v8 = v7[1];
      if (v8 == v3)
      {
        break;
      }

      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= __p[1])
        {
          v8 %= __p[1];
        }
      }

      else
      {
        v8 &= __p[1] - 1;
      }

      if (v8 != v5)
      {
        goto LABEL_18;
      }

LABEL_17:
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    if (*(v7 + 4) != v3)
    {
      goto LABEL_17;
    }

    ++v2;
  }

  while (v2 != 47);
  v9 = sub_99D84(prime, a2);
  v10 = vcnt_s8(__p[1]);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (__p[1] <= v9)
    {
      v11 = v9 % LODWORD(__p[1]);
    }
  }

  else
  {
    v11 = (LODWORD(__p[1]) + 255) & v9;
  }

  v12 = *(__p[0] + v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_36:
    v16 = 1;
    goto LABEL_37;
  }

  while (2)
  {
    v14 = v13[1];
    if (v14 != v9)
    {
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= __p[1])
        {
          v14 %= __p[1];
        }
      }

      else
      {
        v14 &= __p[1] - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (*(v13 + 4) != v9)
    {
LABEL_35:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  v16 = 0;
LABEL_37:
  sub_DDE50(__p);
  return v16;
}

uint64_t sub_311110()
{
  v0 = &unk_6E9000;
  if ((atomic_load_explicit(&qword_6E9BC8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_6E9BC8);
    v0 = &unk_6E9000;
    if (v2)
    {
      v3 = sub_106F10(@"U+73bmG4kBGj6kpreQXUTQ");
      byte_6E9BC0 = (v3 > 0xFFu) & v3;
      __cxa_guard_release(&qword_6E9BC8);
      v0 = &unk_6E9000;
    }
  }

  return v0[3008];
}

uint64_t sub_31118C()
{
  if ((atomic_load_explicit(&qword_6E9BE8, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_6E9BE8);
    if (v1)
    {
      if (caulk::product::get_device_class(v1) == 3)
      {
        v2 = sub_45168();
        if (v2)
        {
          LOBYTE(v2) = _os_feature_enabled_impl();
        }
      }

      else
      {
        LOBYTE(v2) = 0;
      }

      byte_6E9BE0 = v2;
      __cxa_guard_release(&qword_6E9BE8);
    }
  }

  return byte_6E9BE0;
}

uint64_t sub_31122C()
{
  if ((atomic_load_explicit(&qword_6E9C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C08))
  {
    if (sub_48EDC())
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1FB17C();
    }

    byte_6E9C00 = v2;
    __cxa_guard_release(&qword_6E9C08);
  }

  if (byte_6E9C00)
  {
    if ((atomic_load_explicit(&qword_6E9C18, memory_order_acquire) & 1) == 0)
    {
      v3 = __cxa_guard_acquire(&qword_6E9C18);
      if (v3)
      {
        byte_6E9C10 = sub_311310(v3);
        __cxa_guard_release(&qword_6E9C18);
      }
    }

    v0 = byte_6E9C10;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_311310(caulk::product *a1)
{
  if (caulk::product::get_device_class(a1) != 1)
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t sub_31135C()
{
  if ((atomic_load_explicit(&qword_6E9C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C38))
  {
    byte_6E9C30 = sub_3113D0();
    __cxa_guard_release(&qword_6E9C38);
  }

  return byte_6E9C30;
}

BOOL sub_3113D0()
{
  Version = VoiceProcessorGetVersion();
  v1 = *sub_5544(21);
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "PlatformUtilities_Aspen.mm";
    v6 = 1024;
    v7 = 820;
    v8 = 1024;
    v9 = Version;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d VoiceProcessor version is %u", &v4, 0x18u);
  }

  return Version > 9;
}

uint64_t sub_3114B0()
{
  if ((atomic_load_explicit(&qword_6E9C58, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_6E9C58);
    if (v1)
    {
      if (caulk::product::get_device_class(v1) == 1)
      {
        v2 = _os_feature_enabled_impl();
      }

      else
      {
        v2 = 1;
      }

      byte_6E9C50 = v2;
      __cxa_guard_release(&qword_6E9C58);
    }
  }

  return byte_6E9C50;
}

caulk::product *sub_311548()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return (caulk::product::get_device_class(result) == 1);
  }

  return result;
}

uint64_t sub_3115C4()
{
  if ((atomic_load_explicit(&qword_6E9C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C88))
  {
    byte_6E9C80 = sub_311638();
    __cxa_guard_release(&qword_6E9C88);
  }

  return byte_6E9C80;
}

uint64_t sub_311638()
{
  if ((atomic_load_explicit(&qword_6E9C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C98))
  {
    byte_6E9C90 = _os_feature_enabled_impl();
    __cxa_guard_release(&qword_6E9C98);
  }

  if ((atomic_load_explicit(&qword_6E9CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9CA8))
  {
    byte_6E9CA0 = sub_31180C();
    __cxa_guard_release(&qword_6E9CA8);
  }

  v0 = byte_6E9C90 & byte_6E9CA0;
  v1 = *sub_5544(25);
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "will not";
    if (v0)
    {
      v3 = "will";
    }

    v5 = 136316162;
    v6 = "PlatformUtilities_Aspen.mm";
    v7 = 1024;
    v8 = 1037;
    v9 = 2080;
    v10 = v3;
    v11 = 1024;
    v12 = byte_6E9C90;
    v13 = 1024;
    v14 = byte_6E9CA0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Product %s use DSP graph v2. Enabled system wide? %d. Enabled for product in VA? %d", &v5, 0x28u);
  }

  return v0 & 1;
}

uint64_t sub_31180C()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = 1;
  v1 = sub_DD858();
  if ((v1 - 4013) >= 5 && (v1 - 8021) >= 4 && (v1 - 2028) >= 2)
  {
    return 0;
  }

  return v0;
}

void sub_3118A8(void *a1@<X8>)
{
  sub_20301C(a1, 1);
  v2 = sub_8703C();
  (*(*v2 + 344))(buf);
  v3 = *buf;
  if (*buf)
  {
    sub_27A4();
    v37 = (*(qword_6E94F8 + 16))();
    sub_27A4();
    v4 = atomic_load(&qword_6E9558);
    if (v4 != pthread_self())
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v39 = 1024;
        v40 = 4274;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
    }

    v5 = sub_5544(8);
    v6 = sub_5544(35);
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
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v15 = *v5;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      v39 = 1024;
      v40 = 4276;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Silent mode update.", buf, 0x12u);
    }

    v16 = *(*v3 + 8);
    if (!v16)
    {
      goto LABEL_36;
    }

    v17 = *(v3 + 32);
    v18 = *v3 + 8;
    do
    {
      v19 = *(v16 + 32);
      v20 = v19 >= v17;
      v21 = v19 < v17;
      if (v20)
      {
        v18 = v16;
      }

      v16 = *(v16 + 8 * v21);
    }

    while (v16);
    if (v18 == *v3 + 8 || v17 < *(v18 + 32))
    {
LABEL_36:
      v24 = sub_5544(14);
      v25 = *v24;
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v39 = 1024;
        v40 = 4279;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Corruption in the routing database. Calling find(mCurrentCategory) returned an invalid iterator.", buf, 0x12u);
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Corruption in the routing database. Calling find(mCurrentCategory) returned an invalid iterator.");
    }

    if (*(v18 + 76) == 1)
    {
      sub_7B03C(&v36, (v3 + 72));
      v22 = *(v3 + 184);
      v34[0] = *(v3 + 176);
      v34[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
      }

      v35 = *(v3 + 192);
      LOBYTE(v30) = *(v3 + 408);
      sub_C25C0(buf, v3, (v3 + 32), (v3 + 48), &v36, (v3 + 120), *(v3 + 144), (v3 + 152), v3 + 200, (v3 + 240), v30, (v3 + 416), 1919050611, (v3 + 440), (v3 + 472), *(v3 + 410), v34);
    }

    sub_20301C(v31, 1);
    sub_210C50(&v37);
    sub_256828(a1, v31);
    if (v33 == 1)
    {
      sub_175F78(v32);
    }
  }

  else
  {
    v10 = sub_5544(9);
    v11 = sub_5544(16);
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
        goto LABEL_32;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_32:
    v23 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SystemSettingsCommands_Aspen.cpp";
      v39 = 1024;
      v40 = 21;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", buf, 0x12u);
    }
  }
}

void sub_311DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  __cxa_free_exception(v43);
  sub_210C50(&a41);
  if (*(v42 + 56) == 1)
  {
    sub_175F78((v42 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_311ED0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_20301C(a2, 1);
  v4 = sub_8703C();
  (*(*v4 + 344))(v37);
  v5 = *v37;
  if (*v37)
  {
    v6 = *(a1 + 12);
    sub_27A4();
    v34 = (*(qword_6E94F8 + 16))();
    sub_27A4();
    v7 = atomic_load(&qword_6E9558);
    if (v7 != pthread_self())
    {
      v31 = sub_5544(14);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v43 = 1024;
        v44 = 4299;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
    }

    v8 = sub_5544(8);
    v9 = sub_5544(35);
    v10 = 0;
    *buf = 0x100000002;
    v11 = *(v8 + 8);
    while (1)
    {
      v12 = *&buf[v10];
      if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
      {
        break;
      }

      v10 += 4;
      if (v10 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_13:
    v18 = *v8;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      v43 = 1024;
      v44 = 4301;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d System Audio Effects Settings update.", buf, 0x12u);
    }

    if (v6 && *(v5 + 36) == 1836281204)
    {
      goto LABEL_23;
    }

    *buf = off_6BC378;
    v45 = buf;
    sub_C3354(&v35, v5 + 480);
    v19 = v35;
    v20 = v36;
    v21 = sub_C493C(1986291046, v35, v36);
    if (v20 == v21)
    {
      v22 = 0;
      if (!v19)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!v45)
      {
        sub_46A74();
      }

      v22 = (*(*v45 + 48))(v45, *v21);
      if (!v19)
      {
LABEL_22:
        sub_271240(buf);
        if ((v22 & 1) == 0)
        {
          v23 = sub_C2CA8(*v5, (v5 + 32));
          if (v23 >= 0x100u && (v23 & 1) != 0)
          {
            v24 = sub_5544(8);
            v25 = sub_5544(35);
            v26 = 0;
            *buf = 0x100000002;
            v27 = *(v24 + 8);
            while (1)
            {
              v28 = *&buf[v26];
              if (((v27 & v28) != 0) != ((*(v25 + 8) & v28) != 0))
              {
                break;
              }

              v26 += 4;
              if (v26 == 8)
              {
                goto LABEL_42;
              }
            }

            if ((v27 & v28) == 0)
            {
              v24 = v25;
            }

LABEL_42:
            v30 = *v24;
            if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "RoutingManager.cpp";
              v43 = 1024;
              v44 = 4328;
              _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d System Audio Effects Settings update ignored.", buf, 0x12u);
            }

            sub_21991C(v37, 1920099684);
            sub_210C50(&v34);
            sub_256828(a2, v37);
            if (v41 == 1)
            {
              sub_175F78(v40);
            }

            return;
          }
        }

LABEL_23:
        sub_271104(v37, v5, 1919185776);
      }
    }

    operator delete(v19);
    goto LABEL_22;
  }

  v13 = sub_5544(9);
  v14 = sub_5544(16);
  v15 = 0;
  *v37 = 0x100000002;
  v16 = *(v13 + 8);
  while (1)
  {
    v17 = *&v37[v15];
    if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
    {
      break;
    }

    v15 += 4;
    if (v15 == 8)
    {
      goto LABEL_34;
    }
  }

  if ((v16 & v17) == 0)
  {
    v13 = v14;
  }

LABEL_34:
  v29 = *v13;
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    *v37 = 136315394;
    *&v37[4] = "SystemSettingsCommands_Aspen.cpp";
    v38 = 1024;
    v39 = 57;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", v37, 0x12u);
  }
}

void sub_312418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);
  sub_210C50(&a12);
  if (*(v26 + 56) == 1)
  {
    sub_175F78((v26 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_3124F4(void *a1@<X8>)
{
  sub_20301C(a1, 1);
  v2 = sub_8703C();
  (*(*v2 + 344))(v28);
  v3 = *v28;
  if (*v28)
  {
    sub_27A4();
    v27 = (*(qword_6E94F8 + 16))();
    sub_27A4();
    v4 = atomic_load(&qword_6E9558);
    if (v4 != pthread_self())
    {
      v24 = sub_5544(14);
      v25 = *v24;
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v34 = 1024;
        v35 = 4618;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
    }

    v5 = sub_5544(8);
    v6 = sub_5544(35);
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
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v15 = *v5;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      v34 = 1024;
      v35 = 4620;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Hearing Aids Call Audio System Settings update.", buf, 0x12u);
    }

    v16 = *(v3 + 32);
    if (v16 > 1668313714)
    {
      if (v16 == 1668703084 || v16 == 1668576377)
      {
        goto LABEL_42;
      }

      v17 = 29299;
    }

    else
    {
      if (v16 == 1668301427 || v16 == 1668309362)
      {
        goto LABEL_24;
      }

      v17 = 29250;
    }

    if (v16 != (v17 | 0x63700000))
    {
      goto LABEL_43;
    }

LABEL_24:
    v18 = *(v3 + 36);
    if (v18 > 1919776354)
    {
      if (v18 > 1987081832)
      {
        if (v18 == 1987081839)
        {
          goto LABEL_42;
        }

        v21 = 30313;
      }

      else
      {
        if (v18 == 1919776355)
        {
          goto LABEL_42;
        }

        v21 = 26467;
      }

      v19 = v21 | 0x76700000;
    }

    else
    {
      if (v18 <= 1768779618)
      {
        if (v18 != 1735222132)
        {
          v19 = 1768057203;
          goto LABEL_41;
        }

LABEL_42:
        v22 = sub_8703C();
        v23 = (*(*v22 + 104))(v22);
        sub_271424(v3, v23);
LABEL_43:
        sub_21991C(v28, 1920099684);
        sub_210C50(&v27);
        sub_256828(a1, v28);
        if (v32 == 1)
        {
          sub_175F78(v31);
        }

        return;
      }

      if (v18 == 1768779619)
      {
        goto LABEL_42;
      }

      v19 = 1768781411;
    }

LABEL_41:
    if (v18 != v19)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v10 = sub_5544(9);
  v11 = sub_5544(16);
  v12 = 0;
  *v28 = 0x100000002;
  v13 = *(v10 + 8);
  while (1)
  {
    v14 = *&v28[v12];
    if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
    {
      break;
    }

    v12 += 4;
    if (v12 == 8)
    {
      goto LABEL_30;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

LABEL_30:
  v20 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    *v28 = 136315394;
    *&v28[4] = "SystemSettingsCommands_Aspen.cpp";
    v29 = 1024;
    v30 = 75;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", v28, 0x12u);
  }
}

void sub_3129A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v22);
  sub_210C50(&a13);
  if (*(v21 + 56) == 1)
  {
    sub_175F78((v21 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_312A54(void *a1@<X8>)
{
  sub_20301C(a1, 1);
  v2 = sub_8703C();
  (*(*v2 + 344))(v24);
  v3 = *v24;
  if (*v24)
  {
    sub_27A4();
    v23 = (*(qword_6E94F8 + 16))();
    sub_27A4();
    v4 = atomic_load(&qword_6E9558);
    if (v4 != pthread_self())
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v30 = 1024;
        v31 = 4635;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
    }

    v5 = sub_5544(8);
    v6 = sub_5544(35);
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
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v15 = *v5;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      v30 = 1024;
      v31 = 4637;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Hearing Aids Media Audio System Settings update.", buf, 0x12u);
    }

    v16 = *(v3 + 32);
    if (v16 == 1668505974 || v16 == 1668182896)
    {
      v17 = sub_8703C();
      v18 = (*(*v17 + 112))(v17);
      sub_271424(v3, v18);
    }

    sub_21991C(v24, 1920099684);
    sub_210C50(&v23);
    sub_256828(a1, v24);
    if (v28 == 1)
    {
      sub_175F78(v27);
    }
  }

  else
  {
    v10 = sub_5544(9);
    v11 = sub_5544(16);
    v12 = 0;
    *v24 = 0x100000002;
    v13 = *(v10 + 8);
    while (1)
    {
      v14 = *&v24[v12];
      if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
      {
        break;
      }

      v12 += 4;
      if (v12 == 8)
      {
        goto LABEL_23;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_23:
    v19 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315394;
      *&v24[4] = "SystemSettingsCommands_Aspen.cpp";
      v25 = 1024;
      v26 = 93;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", v24, 0x12u);
    }
  }
}

void sub_312E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v22);
  sub_210C50(&a13);
  if (*(v21 + 56) == 1)
  {
    sub_175F78((v21 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_312EC8(void *a1@<X8>)
{
  sub_20301C(a1, 1);
  v2 = sub_8703C();
  (*(*v2 + 344))(buf);
  v3 = *buf;
  if (*buf)
  {
    sub_27A4();
    v25 = (*(qword_6E94F8 + 16))();
    sub_27A4();
    v4 = atomic_load(&qword_6E9558);
    if (v4 != pthread_self())
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4652;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
    }

    v5 = sub_5544(8);
    v6 = sub_5544(35);
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
        goto LABEL_13;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_13:
    v15 = *v5;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4654;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Hearing Aids System Sounds System Settings update.", buf, 0x12u);
    }

    memset(buf, 0, sizeof(buf));
    strcpy(v28, "cwdv");
    v28[8] = 0;
    v29 = 3;
    v31[0] = 0;
    v31[1] = 0;
    v30 = v31;
    v32 = 44739242;
    v34 = 0;
    v35 = 0;
    __p = 0;
    LODWORD(v26[0]) = 1886152047;
    sub_AFD28(buf, v26);
    v32 &= 0xFFFFFFF0;
    v16 = sub_809C0();
    v26[0] = off_6BC4E0;
    v26[3] = v26;
    sub_256FB0(v24, v16, buf, v26);
    sub_85148(v26);
    if (v24[2])
    {
      sub_271104(v21, v3, 1919185776);
    }

    sub_21991C(v21, 1920099684);
    sub_65310(v24);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v31[0]);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    sub_210C50(&v25);
    sub_256828(a1, v21);
    if (v23 == 1)
    {
      sub_175F78(v22);
    }
  }

  else
  {
    v10 = sub_5544(9);
    v11 = sub_5544(16);
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
        goto LABEL_26;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_26:
    v17 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SystemSettingsCommands_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 111;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", buf, 0x12u);
    }
  }
}

void sub_313340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  __cxa_free_exception(v31);
  sub_210C50(&a25);
  if (*(v30 + 56) == 1)
  {
    sub_175F78((v30 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_31341C(void *a1@<X8>)
{
  sub_20301C(a1, 1);
  v1 = sub_8703C();
  (*(*v1 + 344))(v19);
  v2 = *v19;
  if (*v19)
  {
    sub_27A4();
    (*(qword_6E94F8 + 16))();
    sub_27A4();
    v3 = atomic_load(&qword_6E9558);
    if (v3 != pthread_self())
    {
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v23 = 1024;
        v24 = 4357;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
    }

    v4 = sub_5544(8);
    v5 = sub_5544(35);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_13:
    v14 = *v4;
    if (v14)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        v23 = 1024;
        v24 = 4359;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth required a route configuration change.", buf, 0x12u);
      }
    }

    sub_271104(v19, v2, 1651799408);
  }

  v9 = sub_5544(9);
  v10 = sub_5544(16);
  v11 = 0;
  *v19 = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&v19[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      goto LABEL_19;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

LABEL_19:
  v15 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    *v19 = 136315394;
    *&v19[4] = "SystemSettingsCommands_Aspen.cpp";
    v20 = 1024;
    v21 = 148;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute command", v19, 0x12u);
  }
}

void sub_31378C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v22);
  sub_210C50(&a13);
  if (*(v21 + 56) == 1)
  {
    sub_175F78((v21 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_31384C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DB910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3138C0(void *a1, uint64_t **a2)
{
  v4 = (a1 + 12);
  v5 = (*(*a1 + 120))(a1);
  std::mutex::lock(v4);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = (a1 + 21);
    while (1)
    {
      v9 = *v6;
      v36.mElement = *(v6 + 8);
      *&v36.mSelector = v9;
      v10 = *v8;
      if (!*v8)
      {
        goto LABEL_11;
      }

      v11 = a1 + 21;
      do
      {
        v12 = *(v10 + 8);
        v13 = v12 >= v36.mSelector;
        v14 = v12 < v36.mSelector;
        if (v13)
        {
          v11 = v10;
        }

        v10 = v10[v14];
      }

      while (v10);
      if (v11 == v8 || v36.mSelector < *(v11 + 8))
      {
        goto LABEL_11;
      }

      sub_4E890();
      v15 = sub_74D2C(v5, &v36, sub_313C44, a1);
      if (!v15)
      {
        break;
      }

      v16 = sub_5544(18);
      v17 = *v16;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_INFO))
      {
        sub_22170(__p, v36.mSelector);
        v18 = __p;
        if (v35 < 0)
        {
          v18 = __p[0];
        }

        *buf = 136316162;
        v38 = "PhysicalDevice.cpp";
        v39 = 1024;
        v40 = 671;
        v41 = 1024;
        v42 = v5;
        v43 = 2080;
        v44 = v18;
        v45 = 2048;
        v46 = v15;
        v19 = v17;
        v20 = "%25s:%-5d Device [%u] FAILED to remove device property [%s] listener with error code: %llx";
        v21 = 44;
LABEL_40:
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, v20, buf, v21);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_11:
      v6 += 12;
      if (v6 == v7)
      {
        goto LABEL_42;
      }
    }

    v22 = *v8;
    if (*v8)
    {
      v23 = a1 + 21;
      v24 = *v8;
      do
      {
        v25 = *(v24 + 8);
        v13 = v25 >= v36.mSelector;
        v26 = v25 < v36.mSelector;
        if (v13)
        {
          v23 = v24;
        }

        v24 = v24[v26];
      }

      while (v24);
      if (v23 != v8 && v36.mSelector >= *(v23 + 8))
      {
        v27 = v23[1];
        v28 = v23;
        if (v27)
        {
          do
          {
            v29 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v29 = v28[2];
            v30 = *v29 == v28;
            v28 = v29;
          }

          while (!v30);
        }

        if (a1[20] == v23)
        {
          a1[20] = v29;
        }

        --a1[22];
        sub_75234(v22, v23);
        sub_477A0(v23[6]);
        operator delete(v23);
      }
    }

    v31 = sub_5544(18);
    v32 = *v31;
    if (!*v31 || !os_log_type_enabled(*v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    sub_22170(__p, v36.mSelector);
    v33 = __p;
    if (v35 < 0)
    {
      v33 = __p[0];
    }

    *buf = 136315906;
    v38 = "PhysicalDevice.cpp";
    v39 = 1024;
    v40 = 676;
    v41 = 1024;
    v42 = v5;
    v43 = 2080;
    v44 = v33;
    v19 = v32;
    v20 = "%25s:%-5d Device [%u] removed device property [%s] listener";
    v21 = 34;
    goto LABEL_40;
  }

LABEL_42:
  std::mutex::unlock(v4);
}

uint64_t sub_313C44(int a1, unsigned int a2, unsigned int *a3, void *a4)
{
  v7 = sub_5544(18);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "PhysicalDevice.cpp";
    v23 = 1024;
    v24 = 687;
    v25 = 1024;
    LODWORD(v26) = a1;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CommonPropertyChangeListener called on device : %u", buf, 0x18u);
  }

  if (a2)
  {
    v9 = sub_5544(18);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v20, *a3);
      v11 = v21;
      v12 = v20[0];
      (*(*a4 + 128))(__p, a4);
      v13 = v20;
      if (v11 < 0)
      {
        v13 = v12;
      }

      v14 = __p;
      if (v19 < 0)
      {
        v14 = __p[0];
      }

      *buf = 136316162;
      *&buf[4] = "PhysicalDevice.cpp";
      v23 = 1024;
      v24 = 692;
      v25 = 2080;
      v26 = v13;
      v27 = 1024;
      v28 = a1;
      v29 = 2080;
      v30 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received notification (%s) from audio device %u with UID %s", buf, 0x2Cu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }

    *buf = *a3;
    *&buf[8] = a3[2];
    v15 = a4[11];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
    }

    sub_68E60();
    operator new();
  }

  return 0;
}

void sub_313EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_313F34(uint64_t *a1)
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

    operator delete();
  }

  return a1;
}

uint64_t *sub_313F88(uint64_t *a1)
{
  v23 = a1;
  v2 = a1[4];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[3])
      {
        v6 = (*(*v3 + 120))(v3);
        std::mutex::lock((v3 + 96));
        v7 = *(v3 + 168);
        if (!v7)
        {
          goto LABEL_28;
        }

        v8 = *(a1 + 2);
        v9 = v3 + 168;
        do
        {
          v10 = *(v7 + 32);
          v11 = v10 >= v8;
          v12 = v10 < v8;
          if (v11)
          {
            v9 = v7;
          }

          v7 = *(v7 + 8 * v12);
        }

        while (v7);
        if (v9 != v3 + 168 && v8 >= *(v9 + 32) && *(v9 + 56))
        {
          v13 = sub_5544(18);
          v14 = *v13;
          if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
          {
            sub_22170(__p, *(a1 + 2));
            v15 = v25 >= 0 ? __p : __p[0];
            *buf = 136315906;
            v27 = "PhysicalDevice.cpp";
            v28 = 1024;
            v29 = 719;
            v30 = 2080;
            v31 = v15;
            v32 = 1024;
            v33 = v6;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Handle property (%s) change from device: %u", buf, 0x22u);
            if (v25 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v16 = *(v9 + 40);
          if (v16 != (v9 + 48))
          {
            do
            {
              (v16[4])(v6, 1, a1 + 1, v16[5]);
              v17 = v16[1];
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
                  v18 = v16[2];
                  v19 = *v18 == v16;
                  v16 = v18;
                }

                while (!v19);
              }

              v16 = v18;
            }

            while (v18 != (v9 + 48));
          }
        }

        else
        {
LABEL_28:
          v20 = sub_5544(18);
          v21 = *v20;
          if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v27 = "PhysicalDevice.cpp";
            v28 = 1024;
            v29 = 712;
            v30 = 1024;
            LODWORD(v31) = v6;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%25s:%-5d No property change handler registered on device: %u", buf, 0x18u);
          }
        }

        std::mutex::unlock((v3 + 96));
      }

      sub_1A8C0(v5);
    }
  }

  return sub_313F34(&v23);
}

void sub_3142EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 buf, __int128 a19, int a20, __int16 a21, __int16 a22, int a23)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  std::mutex::unlock((v24 + 96));
  sub_1A8C0(v23);
  if (a2 == 3)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
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
      WORD1(a19) = 2080;
      *(&a19 + 4) = p_p;
      WORD6(a19) = 2080;
      *(&a19 + 14) = "";
      a22 = 1024;
      a23 = 98;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a17 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x3142A8);
  }

  v31 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v32 = v31;
    v33 = sub_5544(14);
    v34 = *v33;
    if (!*v33 || !os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v35 = (*(*v32 + 16))(v32);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a19) = 2080;
    *(&a19 + 4) = v35;
    WORD6(a19) = 2080;
    *(&a19 + 14) = "";
    a22 = 1024;
    a23 = 98;
    v36 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v37 = v34;
    v38 = 44;
  }

  else
  {
    v39 = sub_5544(14);
    v40 = *v39;
    if (!*v39 || !os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
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
    *(&a19 + 14) = 98;
    v36 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v37 = v40;
    v38 = 34;
  }

  _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, v36, &buf, v38);
  goto LABEL_17;
}

void sub_314588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  sub_313F34(va);
  JUMPOUT(0x3145CCLL);
}

uint64_t *sub_3145D4(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_75234(v6, a2);
  return v3;
}

void sub_314648(unint64_t a1)
{
  v2 = (*(*a1 + 120))(a1);
  std::mutex::lock((a1 + 96));
  v3 = *(a1 + 160);
  v35 = a1;
  v4 = (a1 + 168);
  if (v3 != v4)
  {
    v30 = v4;
    while (1)
    {
      v40.mSelector = *(v3 + 8);
      *&v40.mScope = 1735159650;
      if (!v3[7])
      {
        goto LABEL_39;
      }

      v5 = v2;
      sub_2288C(v50);
      v6 = v3[5];
      if (v6 != v3 + 6)
      {
        do
        {
          v7 = std::ostream::operator<<();
          sub_22564(v7, " ", 1);
          v8 = v6[1];
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
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
        }

        while (v9 != v3 + 6);
      }

      v11 = sub_5544(18);
      v12 = *v11;
      v2 = v5;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
        {
          break;
        }
      }

LABEL_36:
      *v50 = v34;
      *&v50[*(v34 - 24)] = v33;
      *&v52[2] = v32;
      if (v60 < 0)
      {
        operator delete(v59);
      }

      std::locale::~locale(&v53[8]);
      std::iostream::~basic_iostream();
      std::ios::~ios();
LABEL_39:
      sub_4E890();
      v18 = sub_74D2C(v2, &v40, sub_313C44, v35);
      if (v18)
      {
        v19 = sub_5544(18);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_INFO))
        {
          sub_22170(buf, v40.mSelector);
          v21 = buf;
          if (v45 < 0)
          {
            v21 = *buf;
          }

          *v50 = 136316162;
          *&v50[4] = "PhysicalDevice.cpp";
          v51 = 1024;
          *v52 = 640;
          *&v52[4] = 1024;
          *&v52[6] = v2;
          *v53 = 2080;
          *&v53[2] = v21;
          v54 = 2048;
          *v55 = v18;
          v22 = v20;
          v23 = "%25s:%-5d Device [%u] FAILED to remove device property [%s] listener with error code: %llx";
          v24 = 44;
LABEL_50:
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, v23, v50, v24);
          if (SHIBYTE(v45) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        v25 = sub_5544(18);
        v26 = *v25;
        if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
        {
          sub_22170(buf, v40.mSelector);
          v27 = buf;
          if (v45 < 0)
          {
            v27 = *buf;
          }

          *v50 = 136315906;
          *&v50[4] = "PhysicalDevice.cpp";
          v51 = 1024;
          *v52 = 644;
          *&v52[4] = 1024;
          *&v52[6] = v2;
          *v53 = 2080;
          *&v53[2] = v27;
          v22 = v26;
          v23 = "%25s:%-5d Device [%u] removed device property [%s] listener";
          v24 = 34;
          goto LABEL_50;
        }
      }

      v28 = v3[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v3[2];
          v10 = *v29 == v3;
          v3 = v29;
        }

        while (!v10);
      }

      v3 = v29;
      if (v29 == v4)
      {
        goto LABEL_58;
      }
    }

    sub_22170(__p, v40.mSelector);
    if (v39 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v62 & 0x10) != 0)
    {
      v15 = v61;
      if (v61 < v58)
      {
        v61 = v58;
        v15 = v58;
      }

      v16 = __src;
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v14 = 0;
        v37 = 0;
LABEL_30:
        *(&__dst + v14) = 0;
        p_dst = &__dst;
        if (v37 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136316162;
        *&buf[4] = "PhysicalDevice.cpp";
        v42 = 1024;
        v43 = 631;
        v44 = 1024;
        v45 = v5;
        v46 = 2080;
        v47 = v13;
        v48 = 2080;
        v49 = p_dst;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Device [%u] contains property [%s] listeners that have not been un-registered by clients: %s", buf, 0x2Cu);
        if (v37 < 0)
        {
          operator delete(__dst);
        }

        v4 = v30;
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_36;
      }

      v16 = *&v55[4];
      v15 = v56;
    }

    v14 = v15 - v16;
    if (v15 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_755AC();
    }

    v31 = v13;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v37 = v15 - v16;
    if (v14)
    {
      memmove(&__dst, v16, v14);
    }

    v13 = v31;
    goto LABEL_30;
  }

LABEL_58:
  sub_2492C0(*(v35 + 168));
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;
  *(v35 + 160) = v4;
  std::mutex::unlock((v35 + 96));
}

void sub_314C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  if (SHIBYTE(a27) < 0)
  {
    operator delete(a25);
  }

  sub_1D3DAC(&a36);
  std::ios::~ios();
  std::mutex::unlock((a21 + 96));
  _Unwind_Resume(a1);
}

void sub_314D00(uint64_t **a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = a1 + 21;
    do
    {
      if (((*a1)[2])(a1, v2))
      {
        v6 = *v2;
        v55.mElement = v2[2];
        *&v55.mSelector = v6;
        v7 = *v5;
        if (!*v5)
        {
          goto LABEL_12;
        }

        v8 = v5;
        do
        {
          v9 = *(v7 + 32);
          v10 = v9 >= v55.mSelector;
          v11 = v9 < v55.mSelector;
          if (v10)
          {
            v8 = v7;
          }

          v7 = *(v7 + 8 * v11);
        }

        while (v7);
        if (v8 != v5 && v55.mSelector >= *(v8 + 8))
        {
          v47 = sub_5544(18);
          v48 = *v47;
          if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_INFO))
          {
            v49 = ((*a1)[15])(a1);
            sub_22170(v58, v55.mSelector);
            v50 = v59;
            v51 = v58[0];
            sub_22170(__p, v55.mScope);
            if (v50 >= 0)
            {
              v52 = v58;
            }

            else
            {
              v52 = v51;
            }

            v53 = __p;
            if (v57 < 0)
            {
              v53 = __p[0];
            }

            *buf = 136316162;
            *&buf[4] = "PhysicalDevice.cpp";
            v61 = 1024;
            v62 = 585;
            v63 = 1024;
            v64 = v49;
            v65 = 2080;
            v66 = v52;
            v67 = 2080;
            v68 = v53;
            v21 = v48;
            v22 = OS_LOG_TYPE_INFO;
            v23 = "%25s:%-5d Device %d already added listener for property '%s' '%s'";
            goto LABEL_58;
          }
        }

        else
        {
LABEL_12:
          sub_4E890();
          v12 = ((*a1)[15])(a1);
          v13 = sub_73838(v12, &v55, sub_313C44, a1);
          if (!v13)
          {
            *buf = &v55;
            v32 = sub_31532C(a1 + 20, v55.mSelector, buf);
            if (v32[7])
            {
              v34 = v32[6];
              v33 = v32 + 6;
              v35 = *(v33 - 1);
              *(v33 - 1) = v33;
              *(v34 + 16) = 0;
              *v33 = 0;
              v33[1] = 0;
              if (v35[1])
              {
                v36 = v35[1];
              }

              else
              {
                v36 = v35;
              }

              if (v36)
              {
                v37 = v36[2];
                if (v37)
                {
                  v38 = *v37;
                  if (*v37 == v36)
                  {
                    *v37 = 0;
                    while (1)
                    {
                      v54 = v37[1];
                      if (!v54)
                      {
                        break;
                      }

                      do
                      {
                        v37 = v54;
                        v54 = *v54;
                      }

                      while (v54);
                    }
                  }

                  else
                  {
                    for (v37[1] = 0; v38; v38 = v37[1])
                    {
                      do
                      {
                        v37 = v38;
                        v38 = *v38;
                      }

                      while (v38);
                    }
                  }

                  sub_477A0(v36);
                  for (i = v37[2]; i; i = i[2])
                  {
                    v37 = i;
                  }

                  v36 = v37;
                }
              }

              sub_477A0(v36);
            }

            v40 = sub_5544(18);
            v41 = *v40;
            if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_INFO))
            {
              goto LABEL_63;
            }

            v42 = ((*a1)[15])(a1);
            sub_22170(v58, v55.mSelector);
            v43 = v59;
            v44 = v58[0];
            sub_22170(__p, v55.mScope);
            v45 = v58;
            if (v43 < 0)
            {
              v45 = v44;
            }

            v46 = __p;
            if (v57 < 0)
            {
              v46 = __p[0];
            }

            *buf = 136316162;
            *&buf[4] = "PhysicalDevice.cpp";
            v61 = 1024;
            v62 = 579;
            v63 = 1024;
            v64 = v42;
            v65 = 2080;
            v66 = v45;
            v67 = 2080;
            v68 = v46;
            v21 = v41;
            v22 = OS_LOG_TYPE_INFO;
            v23 = "%25s:%-5d Device %d added property listener for '%s' '%s'";
LABEL_58:
            v24 = 44;
LABEL_59:
            _os_log_impl(&dword_0, v21, v22, v23, buf, v24);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            goto LABEL_63;
          }

          v14 = sub_5544(18);
          v15 = *v14;
          if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
          {
            v16 = ((*a1)[15])(a1);
            sub_22170(v58, *v2);
            v17 = v59;
            v18 = v58[0];
            sub_22170(__p, v2[1]);
            if (v17 >= 0)
            {
              v19 = v58;
            }

            else
            {
              v19 = v18;
            }

            v20 = __p;
            if (v57 < 0)
            {
              v20 = __p[0];
            }

            *buf = 136316418;
            *&buf[4] = "PhysicalDevice.cpp";
            v61 = 1024;
            v62 = 600;
            v63 = 1024;
            v64 = v16;
            v65 = 2080;
            v66 = v19;
            v67 = 2080;
            v68 = v20;
            v69 = 1024;
            v70 = v13;
            v21 = v15;
            v22 = OS_LOG_TYPE_ERROR;
            v23 = "%25s:%-5d Device %d failed to add property '%s' '%s', reason: %u";
            v24 = 50;
            goto LABEL_59;
          }
        }
      }

      else
      {
        v25 = sub_5544(18);
        v26 = *v25;
        if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = ((*a1)[15])(a1);
          sub_22170(v58, *v2);
          v28 = v59;
          v29 = v58[0];
          sub_22170(__p, v2[1]);
          if (v28 >= 0)
          {
            v30 = v58;
          }

          else
          {
            v30 = v29;
          }

          v31 = __p;
          if (v57 < 0)
          {
            v31 = __p[0];
          }

          *buf = 136316162;
          *&buf[4] = "PhysicalDevice.cpp";
          v61 = 1024;
          v62 = 606;
          v63 = 1024;
          v64 = v27;
          v65 = 2080;
          v66 = v30;
          v67 = 2080;
          v68 = v31;
          v21 = v26;
          v22 = OS_LOG_TYPE_DEFAULT;
          v23 = "%25s:%-5d Device %d does not have property '%s' '%s', cannot register listener";
          goto LABEL_58;
        }
      }

LABEL_63:
      v2 += 3;
    }

    while (v2 != v3);
  }
}

void sub_3152FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_31532C(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
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
      v5 = *(v3 + 8);
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
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void *sub_31541C(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        v9 = v7[5];
        v10 = v9 > a4;
        if (v8 != a3)
        {
          v10 = v8 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 < a4;
      v12 = v8 == a3;
      v13 = v8 < a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

void sub_315494(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "PhysicalDevice.cpp";
        v7 = 1024;
        v8 = 477;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v5, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }
}

void sub_3155B4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  std::mutex::lock((a1 + 96));
  v6 = *(a1 + 168);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  v8 = a1 + 168;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 == a1 + 168 || v7 < *(v8 + 32))
  {
LABEL_9:
    v12 = sub_5544(18);
    v13 = *v12;
    if (!*v12 || !os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v14 = (*(*a1 + 120))(a1);
    sub_22170(v37, *a2);
    v15 = v38;
    v16 = v37[0];
    sub_22170(__p, a2[1]);
    v17 = v37;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v36 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136316418;
    v40 = "PhysicalDevice.cpp";
    v41 = 1024;
    v42 = 561;
    v43 = 1024;
    v44 = v14;
    v45 = 2048;
    v46 = a3;
    v47 = 2080;
    v48 = v17;
    v49 = 2080;
    v50 = v18;
    v19 = "%25s:%-5d Device %d has NOT added listener for client: '%p' '%s' '%s'";
    v20 = v13;
    v21 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_17;
  }

  v24 = *(v8 + 40);
  v22 = (v8 + 40);
  v23 = v24;
  if (v24 != (v22 + 1))
  {
    while (v23[5] != a3)
    {
      v25 = v23[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v23[2];
          v27 = *v26 == v23;
          v23 = v26;
        }

        while (!v27);
      }

      v23 = v26;
      if (v26 == v22 + 1)
      {
        goto LABEL_38;
      }
    }

    sub_3145D4(v22, v23);
    operator delete(v23);
    v28 = sub_5544(18);
    v29 = *v28;
    if (*v28)
    {
      if (os_log_type_enabled(*v28, OS_LOG_TYPE_INFO))
      {
        v30 = (*(*a1 + 120))(a1);
        sub_22170(v37, *a2);
        v31 = v38;
        v32 = v37[0];
        sub_22170(__p, a2[1]);
        v33 = v37;
        if (v31 < 0)
        {
          v33 = v32;
        }

        if (v36 >= 0)
        {
          v34 = __p;
        }

        else
        {
          v34 = __p[0];
        }

        *buf = 136316418;
        v40 = "PhysicalDevice.cpp";
        v41 = 1024;
        v42 = 549;
        v43 = 1024;
        v44 = v30;
        v45 = 2048;
        v46 = a3;
        v47 = 2080;
        v48 = v33;
        v49 = 2080;
        v50 = v34;
        v19 = "%25s:%-5d Device %d removed listener for client: '%p' '%s' '%s'";
        v20 = v29;
        v21 = OS_LOG_TYPE_INFO;
LABEL_17:
        _os_log_impl(&dword_0, v20, v21, v19, buf, 0x36u);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        if (v38 < 0)
        {
          operator delete(v37[0]);
        }
      }
    }
  }

LABEL_38:
  std::mutex::unlock((a1 + 96));
}

void sub_315900(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  std::mutex::unlock((v1 + 96));
  _Unwind_Resume(a1);
}

uint64_t sub_315940(uint64_t a1, unsigned int *a2, unint64_t a3, unint64_t a4)
{
  std::mutex::lock((a1 + 96));
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *a2;
    v10 = a1 + 168;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= v9;
      v13 = v11 < v9;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != a1 + 168 && v9 >= *(v10 + 32))
    {
      *buf = a2;
      v23 = sub_31532C((a1 + 160), v9, buf);
      if (!*sub_31541C((v23 + 5), buf, a3, a4))
      {
        operator new();
      }

      v24 = sub_5544(18);
      v25 = *v24;
      if (*v24)
      {
        v21 = 1;
        if (!os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        v26 = (*(*a1 + 120))(a1);
        sub_22170(v33, *a2);
        v27 = v34;
        v28 = v33[0];
        sub_22170(__p, a2[1]);
        v29 = v33;
        if (v27 < 0)
        {
          v29 = v28;
        }

        if (v32 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        *buf = 136316418;
        *&buf[4] = "PhysicalDevice.cpp";
        v36 = 1024;
        v37 = 522;
        v38 = 1024;
        v39 = v26;
        v40 = 2048;
        v41 = a4;
        v42 = 2080;
        v43 = v29;
        v44 = 2080;
        v45 = v30;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d PlaybackDosimetry: Device %d registered listener for client: '%p' '%s' '%s'", buf, 0x36u);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (v34 < 0)
        {
          operator delete(v33[0]);
        }
      }

      v21 = 1;
      goto LABEL_21;
    }
  }

  v14 = sub_5544(18);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (*(*a1 + 120))(a1);
    sub_22170(v33, *a2);
    v17 = v34;
    v18 = v33[0];
    sub_22170(__p, a2[1]);
    v19 = v33;
    if (v17 < 0)
    {
      v19 = v18;
    }

    if (v32 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 136316418;
    *&buf[4] = "PhysicalDevice.cpp";
    v36 = 1024;
    v37 = 528;
    v38 = 1024;
    v39 = v16;
    v40 = 2048;
    v41 = a4;
    v42 = 2080;
    v43 = v19;
    v44 = 2080;
    v45 = v20;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device %d has NOT added listener for client: '%p' '%s' '%s'", buf, 0x36u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }
  }

  v21 = 0;
LABEL_21:
  std::mutex::unlock((a1 + 96));
  return v21;
}

void sub_315CC0(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  std::mutex::unlock((v1 + 96));
  _Unwind_Resume(a1);
}

uint64_t sub_315D08(uint64_t a1)
{
  v2 = (*(*a1 + 88))(a1, 1);
  if (!v2)
  {
LABEL_11:
    v10 = 0;
    v11 = 0;
    return v11 | v10;
  }

  v3 = v2;
  v4 = 0;
  while (1)
  {
    (*(*a1 + 264))(&v13, a1, 1, v4);
    if (v14)
    {
      break;
    }

LABEL_10:
    v4 = (v4 + 1);
    if (v3 == v4)
    {
      goto LABEL_11;
    }
  }

  v5 = std::__shared_weak_count::lock(v14);
  if (!v5)
  {
LABEL_8:
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    goto LABEL_10;
  }

  v6 = v5;
  if (!v13 || (v15 = 0x676C6F627465726DLL, v16 = 0, v7 = sub_59410(v13, &v15, 0, 0), *(&v9 + 1) = v8, *&v9 = v7, ((v9 >> 32) & 0x1FFFFFFFFLL) != 0x1696E6A6DLL))
  {
    sub_1A8C0(v6);
    goto LABEL_8;
  }

  sub_1A8C0(v6);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v11 = v4;
  v10 = 0x100000000;
  return v11 | v10;
}

void sub_315E5C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_315E70()
{
  if ((atomic_load_explicit(&qword_6E9DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9DD8))
  {
    sub_316034();
    __cxa_guard_release(&qword_6E9DD8);
  }

  if ((atomic_load_explicit(&qword_6EA7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EA7A8))
  {
    v10 = std::random_device::operator()(&stru_6E9DD4);
    dword_6E9DE0[0] = v10;
    for (i = 1; i != 624; ++i)
    {
      v10 = i + 1812433253 * (v10 ^ (v10 >> 30));
      dword_6E9DE0[i] = v10;
    }

    qword_6EA7A0 = 0;
    __cxa_guard_release(&qword_6EA7A8);
  }

  if ((atomic_load_explicit(&qword_6EA7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EA7B8))
  {
    qword_6EA7B0 = 0xFFFFFFFE00000001;
    __cxa_guard_release(&qword_6EA7B8);
  }

  v1 = qword_6EA7B0;
  result = HIDWORD(qword_6EA7B0);
  v2 = HIDWORD(qword_6EA7B0) - qword_6EA7B0;
  if (HIDWORD(qword_6EA7B0) != qword_6EA7B0)
  {
    v3 = v2 + 1;
    if (v2 == -1)
    {

      return sub_3160A4();
    }

    else
    {
      v4 = __clz(v3);
      v5 = 31;
      if (((v3 << v4) & 0x7FFFFFFF) != 0)
      {
        v5 = 32;
      }

      v6 = v5 - v4;
      v7 = v6 >> 5;
      if ((v6 & 0x1F) != 0)
      {
        ++v7;
      }

      if (v7 <= v6)
      {
        v8 = 0xFFFFFFFF >> -(v6 / v7);
      }

      else
      {
        v8 = 0;
      }

      do
      {
        v9 = sub_3160A4() & v8;
      }

      while (v9 >= v3);
      return v1 + v9;
    }
  }

  return result;
}

void sub_316034()
{
  sub_53E8(&__token, "/dev/urandom");
  std::random_device::random_device(&stru_6E9DD4, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }
}

void sub_316088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3160A4()
{
  v0 = (qword_6EA7A0 + 1) % 0x270uLL;
  v1 = dword_6E9DE0[v0];
  if (v1)
  {
    v2 = -1727483681;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 ^ dword_6E9DE0[(qword_6EA7A0 + 397) % 0x270uLL] ^ ((v1 & 0x7FFFFFFE | dword_6E9DE0[qword_6EA7A0] & 0x80000000) >> 1);
  dword_6E9DE0[qword_6EA7A0] = v3;
  qword_6EA7A0 = v0;
  v4 = ((v3 ^ (v3 >> 11)) << 7) & 0x9D2C5680 ^ v3 ^ (v3 >> 11);
  return (v4 << 15) & 0xEFC60000 ^ v4 ^ (((v4 << 15) & 0xEFC60000 ^ v4) >> 18);
}

void sub_31614C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_5659C(&v13, a2, "", 71);
  if (*(a3 + 184))
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "PhysicalDevice.cpp";
      v17 = 1024;
      v18 = 73;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = v13;
  if (!(*(*v13 + 88))(v13, 1))
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "PhysicalDevice.cpp";
      v17 = 1024;
      v18 = 74;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_17;
  }

  sub_102FB0(a1, a2);
  if ((*(*v6 + 88))(v6, 1))
  {
    sub_103218(a1, a3, 0);
  }

  v7 = v14;
  if (v14)
  {

    sub_1A8C0(v7);
  }
}

void sub_3163D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(a1);
}

void sub_316420(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 184))
  {
    sub_5659C(v16, a2, "", 88);
    v8 = (*(**v16 + 88))(*v16, 0);
    if (*&v16[8])
    {
      sub_1A8C0(*&v16[8]);
    }

    if (v8 == 1)
    {
      v9 = sub_102FB0(a1, a2);
      sub_3166A0(v9, a3, a4, 0);
    }

    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *v16 = 136315394;
        *&v16[4] = "PhysicalDevice.cpp";
        *&v16[12] = 1024;
        *&v16[14] = 88;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v16, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v10 = sub_5544(14);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    *v16 = 136315394;
    *&v16[4] = "PhysicalDevice.cpp";
    *&v16[12] = 1024;
    *&v16[14] = 87;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v16, 0x12u);
  }

  v12 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v12, "Precondition failure.");
}

void sub_3166A0(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_5659C(&v34, a1, "", 247);
  sub_8BD14(&v32, *(a2 + 80), *(a2 + 88));
  v7 = v33;
  *buf = v32;
  *&buf[8] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = sub_C4FD4((a1 + 8), buf);
    std::__shared_weak_count::__release_weak(v7);
    if (a1 + 9 == v8)
    {
LABEL_3:
      v9 = v33;
      *buf = v32;
      *&buf[8] = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v10 = sub_C4FD4((a1 + 11), buf);
        std::__shared_weak_count::__release_weak(v9);
        if (a1 + 12 == v10)
        {
LABEL_5:
          v11 = a1[2];
          v12 = a1[3];
          v13 = v34;
          if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) == (*(*v34 + 88))(v34, 0))
          {
            v14 = a1[5];
            v15 = a1[6];
            if (0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3) == (*(*v13 + 88))(v13, 1))
            {
              if (*(v32 + 184))
              {
                v16 = a1 + 2;
              }

              else
              {
                v16 = a1 + 5;
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 3) > a4)
              {
                v17 = *(a2 + 88);
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v18 = std::__shared_weak_count::lock(v17);
                  v19 = v18;
                  if (v18)
                  {
                    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_weak(v17);
                    sub_1A8C0(v19);
                  }

                  else
                  {
                    std::__shared_weak_count::__release_weak(v17);
                  }
                }

                operator new();
              }

              v29 = sub_5544(14);
              v30 = *v29;
              if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "PhysicalDevice.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 259;
                _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Precondition failure.");
            }

            v27 = sub_5544(14);
            v28 = *v27;
            if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "PhysicalDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 255;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          else
          {
            v25 = sub_5544(14);
            v26 = *v25;
            if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "PhysicalDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 254;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          v22 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v22, "Invariant failure.");
LABEL_35:
        }
      }

      else if (a1 + 12 == sub_C4FD4((a1 + 11), buf))
      {
        goto LABEL_5;
      }

      v23 = sub_5544(14);
      v24 = *v23;
      if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "PhysicalDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

LABEL_18:
      v22 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v22, "Precondition failure.");
      goto LABEL_35;
    }
  }

  else if (a1 + 9 == sub_C4FD4((a1 + 8), buf))
  {
    goto LABEL_3;
  }

  v20 = sub_5544(14);
  v21 = *v20;
  if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "PhysicalDevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 251;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  goto LABEL_18;
}

void sub_316ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_317060(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (*(a3 + 184))
  {
    sub_5659C(v18, a2, "", 102);
    v10 = (*(**v18 + 88))(*v18, 0);
    if (*&v18[8])
    {
      sub_1A8C0(*&v18[8]);
    }

    if (v10 > a4)
    {
      v11 = sub_102FB0(a1, a2);
      sub_3166A0(v11, a3, a5, a4);
    }

    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *v18 = 136315394;
        *&v18[4] = "PhysicalDevice.cpp";
        *&v18[12] = 1024;
        *&v18[14] = 102;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v18, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *v18 = 136315394;
    *&v18[4] = "PhysicalDevice.cpp";
    *&v18[12] = 1024;
    *&v18[14] = 101;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v18, 0x12u);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v14, "Precondition failure.");
}

void sub_3172E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_5659C(&v13, a2, "", 112);
  if ((*(a3 + 184) & 1) == 0)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "PhysicalDevice.cpp";
      v17 = 1024;
      v18 = 114;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = v13;
  if (!(*(*v13 + 88))(v13, 0))
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "PhysicalDevice.cpp";
      v17 = 1024;
      v18 = 115;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_17;
  }

  sub_102FB0(a1, a2);
  if ((*(*v6 + 88))(v6, 0))
  {
    sub_103218(a1, a3, 0);
  }

  v7 = v14;
  if (v14)
  {

    sub_1A8C0(v7);
  }
}

void sub_31756C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(a1);
}

void sub_3175B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_5659C(&v21, a2, "", 128);
  v8 = v21;
  v9 = (*(*v21 + 312))(v21);
  v10 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  while (1)
  {
    v18 = v10;
    if (v10 >= (*(*v8 + 88))(v8, 0))
    {
      break;
    }

    if ((v9 & 0x100000000) == 0 || (v11 = v9, v18 != v9))
    {
      v12 = *(a3 + 80);
      v13 = *(a3 + 88);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
      }

      *v15 = v12;
      __p[1] = 0;
      v17 = 0;
      __p[0] = 0;
      sub_46980(__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
      v23 = &v18;
      v14 = sub_FE3C0(v19, v18, &v23);
      sub_F7F0C((v14 + 24), v15);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (v15[1])
      {
        std::__shared_weak_count::__release_weak(v15[1]);
      }

      v11 = v18;
    }

    v10 = v11 + 1;
  }

  *v15 = 0u;
  *__p = 0u;
  LODWORD(v17) = 1065353216;
  sub_F8204(a1, a2, v19, v15);
  sub_167DD4(v15);
  sub_167E38(v19);
  if (v22)
  {
    sub_1A8C0(v22);
  }
}

void sub_317788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  sub_167DD4(&a9);
  sub_167E38(&a15);
  if (a21)
  {
    sub_1A8C0(a21);
  }

  _Unwind_Resume(a1);
}

void sub_3177E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_5659C(&v20, a2, "", 149);
  if (*(a3 + 184))
  {
    if (*(a4 + 184))
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "PhysicalDevice.cpp";
        v23 = 1024;
        v24 = 152;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    else
    {
      v10 = v20;
      if ((*(*v20 + 88))(v20, 0) == 1)
      {
        if ((*(*v10 + 88))(v10, 1) == 1)
        {
          sub_102FB0(a1, a2);
          sub_3166A0(a1, a3, a5, 0);
        }

        v17 = sub_5544(14);
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v22 = "PhysicalDevice.cpp";
            v23 = 1024;
            v24 = 154;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }
        }
      }

      else
      {
        v15 = sub_5544(14);
        v16 = *v15;
        if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "PhysicalDevice.cpp";
          v23 = 1024;
          v24 = 153;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
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
      v22 = "PhysicalDevice.cpp";
      v23 = 1024;
      v24 = 151;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_317BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(a1);
}

void sub_317BFC(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  sub_5659C(&v22, a2, "", 170);
  if (*(a3 + 184))
  {
    if (*(a5 + 184))
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "PhysicalDevice.cpp";
        v25 = 1024;
        v26 = 173;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    else
    {
      v12 = v22;
      if ((*(*v22 + 88))(v22, 0) <= a4)
      {
        v17 = sub_5544(14);
        v18 = *v17;
        if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "PhysicalDevice.cpp";
          v25 = 1024;
          v26 = 174;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      else
      {
        if ((*(*v12 + 88))(v12, 1))
        {
          sub_102FB0(a1, a2);
          sub_3166A0(a1, a3, a6, a4);
        }

        v19 = sub_5544(14);
        v20 = *v19;
        if (*v19)
        {
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v24 = "PhysicalDevice.cpp";
            v25 = 1024;
            v26 = 175;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }
        }
      }
    }
  }

  else
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "PhysicalDevice.cpp";
      v25 = 1024;
      v26 = 172;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_317FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_318020(uint64_t a1)
{
  *a1 = off_6C17D8;
  v2 = atomic_load(qword_70A338);
  if (v2 != pthread_self())
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315650;
        v8 = "PhysicalDevice.cpp";
        v9 = 1024;
        v10 = 328;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The PhysicalDevice at %p is being destroyed by something other than the Object Destruction Handler", &v7, 0x1Cu);
      }
    }
  }

  sub_87980((a1 + 232));
  sub_2537F4(*(a1 + 216));
  sub_2537F4(*(a1 + 192));
  sub_2492C0(*(a1 + 168));
  std::mutex::~mutex((a1 + 96));
  sub_13BFA8(a1);
  v3 = *(a1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_318164(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_318174(uint64_t *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = result + 29;
  v5 = result[30];
  if (v5 != result + 29)
  {
    while (v5[2] != a4)
    {
      v5 = v5[1];
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_4:
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "PhysicalDevice.cpp";
        v18 = 1024;
        v19 = 458;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): muteControl does not exist in mControlDeleteList.", &v16, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "muteControl does not exist in mControlDeleteList.");
  }

  v9 = result[24];
  if (!v9)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 32);
      if (v11 == a2)
      {
        break;
      }

      if (v11 > a2)
      {
        goto LABEL_20;
      }

      if (v11 >= a2)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      if ((v15 & 0x80) == 0)
      {
        return result;
      }

LABEL_26:
      v9 = *(v10 + 8);
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    v12 = *(v10 + 36);
    v13 = v12 == a3;
    if (v12 <= a3)
    {
      break;
    }

LABEL_20:
    v9 = *v10;
    if (!*v10)
    {
      goto LABEL_27;
    }
  }

  if (v12 >= a3)
  {
    v14 = 1;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
    goto LABEL_26;
  }

  return result;
}

void sub_3183B8(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + 29;
  v5 = a1[30];
  if (v5 != a1 + 29)
  {
    while (v5[2] != a4)
    {
      v5 = v5[1];
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_4:
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "PhysicalDevice.cpp";
        v19 = 1024;
        v20 = 467;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): volumeControl does not exist in mControlDeleteList.", &v17, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "volumeControl does not exist in mControlDeleteList.");
  }

  v9 = v5[3];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[27];
  if (!v10)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v11 = v10;
      v12 = *(v10 + 32);
      if (v12 == a2)
      {
        break;
      }

      if (v12 > a2)
      {
        goto LABEL_22;
      }

      if (v12 >= a2)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      if ((v16 & 0x80) == 0)
      {
        goto LABEL_30;
      }

LABEL_28:
      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_29;
      }
    }

    v13 = *(v11 + 9);
    v14 = v13 == a3;
    if (v13 <= a3)
    {
      break;
    }

LABEL_22:
    v10 = *v11;
    if (!*v11)
    {
      goto LABEL_29;
    }
  }

  if (v13 >= a3)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  if (v14)
  {
    v15 = 0;
  }

  if (v15 < 0)
  {
    goto LABEL_28;
  }

LABEL_30:
  if (v9)
  {

    sub_1A8C0(v9);
  }
}

void sub_318648(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_318678(void *a1, __n128 *a2)
{
  v3 = a1 + 29;
  v4 = a1[30];
  v6 = a2->n128_u64[0];
  v5 = a2->n128_u64[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v3;
  if (v4 != v3)
  {
    v7 = v4;
    while (v7[2] != v6)
    {
      v7 = v7[1];
      if (v7 == v3)
      {
        v7 = v3;
        break;
      }
    }
  }

  if (v5)
  {
    sub_1A8C0(v5);
  }

  if (v7 == v3)
  {
    v8 = sub_5544(18);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a2->n128_u64[0];
        v11 = 136315650;
        v12 = "PhysicalDevice.cpp";
        v13 = 1024;
        v14 = 500;
        v15 = 2048;
        v16 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding control %p to delete list", &v11, 0x1Cu);
      }
    }

    operator new();
  }
}

void sub_3187EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v10 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    if (v10)
    {
      sub_1A8C0(v10);
    }

    v11 = sub_5544(18);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(a9) = 136315394;
        *(&a9 + 4) = "PhysicalDevice.cpp";
        WORD6(a9) = 1024;
        *(&a9 + 14) = 507;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Exception thrown adding control to the delete list. Deleting control.", &a9, 0x12u);
      }
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_318928(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  *v1 = 0;
  *(v1 + 4) = 0;
  *(v1 + 8) = 0;
  *(v1 + 12) = 0;
  *(v1 + 16) = sub_310AF4();
  *(v2 + 20) = 1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  v3 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  *(v2 + 104) = 0;
  *(v2 + 96) = v2 + 104;
  *(v2 + 76) = (v3 > 0xFFu) & v3;
  *(v2 + 77) = 1;
  *(v2 + 78) = 0;
  *(v2 + 86) = 0;
  *(v2 + 88) = 16777473;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 122) = 0;
  *(v2 + 128) = -1044381696;
  *(v2 + 132) = 1;
  *(v2 + 136) = -1044381696;
  *(v2 + 140) = 1;
  *(v2 + 144) = 0;
  *(v2 + 148) = 1;
  *(v2 + 152) = -1056964608;
  *(v2 + 156) = 1;
  *(v2 + 160) = -1033371648;
  *(v2 + 164) = 1;
  *(v2 + 168) = 0;
  *(v2 + 172) = 1;
  *(v2 + 176) = -1033371648;
  *(v2 + 180) = 1;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = -1044381696;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0;
  *(v2 + 204) = 1;
  *(v2 + 208) = -1033371648;
  *(v2 + 212) = 1;
  *(v2 + 216) = 0;
  *(v2 + 220) = 1;
  *(v2 + 224) = -1033371648;
  *(v2 + 228) = 1;
  *(v2 + 232) = -1055916032;
  *(v2 + 236) = 1;
  *(v2 + 240) = -1033371648;
  *(v2 + 244) = 1;
  *(v2 + 248) = 0;
  *(v2 + 252) = 1;
  *(v2 + 256) = -1055916032;
  *(v2 + 260) = 1;
  *(v2 + 264) = -1033371648;
  *(v2 + 268) = 1;
  *(v2 + 272) = -1055916032;
  *(v2 + 276) = 1;
  *(v2 + 280) = -1033371648;
  *(v2 + 284) = 1;
  *(v2 + 288) = 0;
  *(v2 + 292) = 1;
  *(v2 + 296) = -1055916032;
  *(v2 + 300) = 1;
  *(v2 + 304) = -1043333120;
  *(v2 + 308) = 1;
  *(v2 + 312) = 0x40000000;
  *(v2 + 316) = 1;
  *(v2 + 320) = 16777472;
  *(v2 + 324) = 0;
  *(v2 + 328) = 1;
  *(v2 + 332) = 0;
  *(v2 + 336) = 1;
  *(v2 + 340) = 1103626240;
  *(v2 + 344) = 1;
  *(v2 + 348) = 0;
  *(v2 + 352) = 1;
  *(v2 + 356) = 1094713344;
  *(v2 + 360) = 1;
  *(v2 + 364) = 1094713344;
  *(v2 + 368) = 1;
  *(v2 + 372) = 1094713344;
  *(v2 + 376) = 1;
  *(v2 + 380) = -1061158912;
  *(v2 + 384) = 1;
  *(v2 + 388) = 1107296256;
  *(v2 + 392) = 1;
  *(v2 + 396) = 1107296256;
  *(v2 + 400) = 1;
  *(v2 + 404) = 1092616192;
  *(v2 + 408) = 1;
  *(v2 + 412) = 0;
  *(v2 + 416) = 1;
  *(v2 + 420) = 0;
  *(v2 + 424) = 1;
  *(v2 + 428) = 16777472;
  *(v2 + 432) = 0;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0;
  *(v2 + 552) = 0;
  *(v2 + 560) = 0;
  *(v2 + 632) = 0;
  *(v2 + 640) = 0;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0;
  *(v2 + 692) = 0;
  *(v2 + 696) = 0;
  *(v2 + 700) = 0;
  *(v2 + 704) = 0;
  *(v2 + 708) = 0;
  *(v2 + 712) = 0;
  *(v2 + 716) = 0;
  *(v2 + 720) = 0;
  *(v2 + 724) = 0;
  *(v2 + 728) = 0;
  *(v2 + 732) = 0;
  *(v2 + 736) = 0;
  *(v2 + 740) = 0;
  *(v2 + 744) = 0;
  *(v2 + 748) = 0;
  *(v2 + 752) = 0;
  *(v2 + 756) = 0;
  *(v2 + 760) = 0;
  *(v2 + 764) = 0;
  *(v2 + 768) = 0;
  *(v2 + 772) = 0;
  *(v2 + 776) = 0;
  *(v2 + 780) = 0;
  *(v2 + 784) = 0;
  *(v2 + 788) = 0;
  *(v2 + 792) = 0;
  *(v2 + 796) = 0;
  *(v2 + 800) = 0;
  *(v2 + 804) = 0;
  *(v2 + 808) = 0;
  *(v2 + 812) = 0;
  *(v2 + 816) = 1;
  *(v2 + 820) = 0;
  *(v2 + 824) = 0;
  *(v2 + 828) = 0;
  *(v2 + 832) = 0;
  *(v2 + 836) = 0;
  *(v2 + 840) = 0;
  *(v2 + 844) = 0;
  *(v2 + 848) = 0;
  *(v2 + 852) = 0;
  *(v2 + 856) = 0;
  *(v2 + 860) = 0;
  *(v2 + 864) = 0;
  *(v2 + 868) = 0;
  *(v2 + 872) = 0;
  *(v2 + 876) = 0;
  *(v2 + 880) = 0;
  *(v2 + 884) = 0;
  *(v2 + 888) = 0;
  *(v2 + 892) = 0;
  *(v2 + 896) = 0;
  *(v2 + 900) = 0;
  *(v2 + 904) = 0;
  *(v2 + 908) = 0;
  *(v2 + 912) = 0;
  *(v2 + 916) = 0;
  *(v2 + 920) = 0;
  *(v2 + 924) = 0;
  *(v2 + 928) = 0;
  *(v2 + 932) = 0;
  *(v2 + 936) = 0;
  *(v2 + 940) = 0;
  *(v2 + 944) = 0;
  *(v2 + 948) = 0;
  *(v2 + 952) = 0;
  *(v2 + 976) = 0;
  *(v2 + 984) = 0;
  *(v2 + 1008) = 0;
  *(v2 + 1016) = 0;
  *(v2 + 1040) = 0;
  *(v2 + 1048) = 0;
  *(v2 + 1072) = 0;
  *(v2 + 1080) = 256;
  *(v2 + 1084) = 0;
  *(v2 + 1088) = 0;
  *(v2 + 1092) = 0;
  *(v2 + 1096) = 0;
  *(v2 + 1100) = 0;
  *(v2 + 1104) = 0;
  *(v2 + 1112) = 0;
  *(v2 + 80) = 257;
  *(v2 + 72) = 257;
  *(v2 + 76) = 257;
  *(v2 + 82) = 16843009;
  if ((*(v2 + 20) & 1) == 0)
  {
    *(v2 + 20) = 1;
  }

  *(v2 + 16) = 4;
  *&v22 = 0x300000002;
  sub_1F8148((v2 + 48), &v22, &v22 + 8, 2uLL);
  LODWORD(v22) = 4;
  sub_1F8148((v2 + 24), &v22, &v22 + 4, 1uLL);
  *(v2 + 90) = 257;
  v22 = xmmword_517160;
  sub_1DFEA0((v2 + 96), &v22, &v23);
  *(v2 + 404) = 1077936128;
  *(v2 + 408) = 1;
  *(v2 + 322) = 257;
  *(v2 + 912) = 15;
  *(v2 + 916) = 1;
  *(v2 + 828) = 15;
  *(v2 + 832) = 1;
  *(v2 + 904) = 7;
  *(v2 + 908) = 1;
  *(v2 + 728) = 13;
  *(v2 + 732) = 1;
  *(v2 + 736) = 13;
  *(v2 + 740) = 1;
  *(v2 + 744) = 13;
  *(v2 + 748) = 1;
  *(v2 + 752) = 13;
  *(v2 + 756) = 1;
  *(v2 + 768) = 13;
  *(v2 + 772) = 1;
  if ((*(v2 + 948) & 1) == 0)
  {
    *(v2 + 948) = 1;
  }

  *(v2 + 944) = 2;
  if ((*(v2 + 700) & 1) == 0)
  {
    *(v2 + 700) = 1;
  }

  *(v2 + 696) = 2;
  if ((*(v2 + 708) & 1) == 0)
  {
    *(v2 + 708) = 1;
  }

  *(v2 + 704) = 2;
  if ((*(v2 + 716) & 1) == 0)
  {
    *(v2 + 716) = 1;
  }

  *(v2 + 712) = 4;
  if ((*(v2 + 868) & 1) == 0)
  {
    *(v2 + 868) = 1;
  }

  *(v2 + 864) = 4;
  if ((*(v2 + 884) & 1) == 0)
  {
    *(v2 + 884) = 1;
  }

  *(v2 + 880) = 2;
  if ((*(v2 + 876) & 1) == 0)
  {
    *(v2 + 876) = 1;
  }

  *(v2 + 872) = 2;
  sub_46AC8C();
  sub_ABF48();
  sub_2806FC(2);
  sub_53E8(&v7, "speaker_general");
  v9 = 0;
  v8 = 0;
  v10 = 0;
  sub_53E8(v11, "speaker_general");
  sub_53E8(v12, "speaker_general");
  memset(&v12[3], 0, 24);
  v13 = 1668051824;
  sub_88CE8(v19, "SetTelemetryDataSources");
  v19[1] = kCFBooleanTrue;
  v6[0] = v19;
  v6[1] = 1;
  v4 = sub_69CE8(v6);
  v20 = 1936749683;
  v21 = v4;
  v6[2] = 0;
  v14 = 0x6473706700000001;
  v15 = 1869768046;
  memset(v17, 0, sizeof(v17));
  sub_4625C(v17, &v14, &v16, 3uLL);
  memset(v5, 0, sizeof(v5));
  sub_2DDE10(v5, v17, &v18);
}

void sub_31DAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, const void *a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, const void *a53, uint64_t a54, uint64_t a55, uint64_t a56, const void *a57, uint64_t a58, uint64_t a59, uint64_t a60, const void *a61, uint64_t a62, uint64_t a63)
{
  sub_1D5FAC((v69 + 8));
  sub_1D5FE0(&STACK[0xA40]);
  if (SLOBYTE(STACK[0xAE7]) < 0)
  {
    operator delete(v68[12]);
  }

  if (SLOBYTE(STACK[0xACF]) < 0)
  {
    operator delete(v68[9]);
  }

  if (SLOBYTE(STACK[0xAB7]) < 0)
  {
    operator delete(v68[6]);
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(v68[3]);
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*v68);
  }

  sub_1E0258(&STACK[0xBE0]);
  sub_2DE774(&STACK[0xBD0]);
  sub_4BA7C(&a32);
  sub_1D5D20(&STACK[0xBC0]);
  STACK[0xA50] = &a27;
  sub_282684(&STACK[0xA50]);
  sub_46228(&STACK[0xBB8]);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1E0258(&STACK[0xD50]);
  sub_2DE774(&STACK[0xD40]);
  sub_4BA7C(&a38);
  sub_1D5D20(&STACK[0xD30]);
  if (a33)
  {
    operator delete(a33);
  }

  sub_1E0258(&STACK[0xF10]);
  v73 = -32;
  v74 = v67;
  do
  {
    v74 = sub_2DE774(v74) - 16;
    v73 += 16;
  }

  while (v73);
  sub_4BA7C(&a44);
  sub_1D5D20(&STACK[0xEC0]);
  STACK[0xA50] = &a39;
  sub_A9CA4(&STACK[0xA50]);
  v75 = *(v70 + 344);
  if (v75)
  {
    *(v70 + 352) = v75;
    operator delete(v75);
  }

  sub_4BA7C(&a53);
  sub_1D5D20(&STACK[0xEE0]);
  STACK[0xA50] = &a48;
  sub_282684(&STACK[0xA50]);
  sub_46228(&STACK[0xED8]);
  v76 = *(v71 + 96);
  if (v76)
  {
    operator delete(v76);
  }

  sub_1E0258(&STACK[0x1090]);
  v77 = &STACK[0x1080];
  v78 = -32;
  do
  {
    v77 = (sub_2DE774(v77) - 16);
    v78 += 16;
  }

  while (v78);
  sub_4BA7C(&a57);
  sub_1D5D20(&STACK[0x1050]);
  sub_4BA7C(&a61);
  sub_1D5D20(&STACK[0x1060]);
  sub_1E0258(&STACK[0x11D0]);
  sub_1E0258(&STACK[0x1350]);
  v79 = &STACK[0x1340];
  v80 = -32;
  do
  {
    v79 = (sub_2DE774(v79) - 16);
    v80 += 16;
  }

  while (v80);
  sub_4BA7C(&a65);
  sub_1D5D20(&STACK[0x1310]);
  sub_4BA7C(&a66);
  sub_1D5D20(&STACK[0x1320]);
  sub_1E0258(&STACK[0x14D0]);
  v81 = &STACK[0x14C0];
  v82 = -32;
  do
  {
    v81 = (sub_2DE774(v81) - 16);
    v82 += 16;
  }

  while (v82);
  sub_4BA7C(&STACK[0x200]);
  sub_1D5D20(&STACK[0x1490]);
  sub_4BA7C(&STACK[0x220]);
  sub_1D5D20(&STACK[0x14A0]);
  sub_1E0258(&STACK[0x1640]);
  sub_2DE774(&STACK[0x1630]);
  sub_4BA7C(&STACK[0x240]);
  for (i = 16; i != -16; i -= 16)
  {
    sub_1D5D20(&STACK[0x1610] + i);
  }

  sub_1E0258(&STACK[0x17B0]);
  sub_2DE774(&STACK[0x17A0]);
  sub_4BA7C(&STACK[0x260]);
  for (j = 16; j != -16; j -= 16)
  {
    sub_1D5D20(&STACK[0x1780] + j);
  }

  sub_1E0258(&STACK[0x1930]);
  v85 = &STACK[0x1920];
  v86 = -32;
  do
  {
    v85 = (sub_2DE774(v85) - 16);
    v86 += 16;
  }

  while (v86);
  sub_4BA7C(&STACK[0x280]);
  sub_1D5D20(&STACK[0x18F0]);
  sub_4BA7C(&STACK[0x2A0]);
  sub_1D5D20(&STACK[0x1900]);
  sub_1E0258(&STACK[0x1AA0]);
  sub_2DE774(&STACK[0x1A90]);
  sub_4BA7C(&STACK[0x2C0]);
  for (k = 16; k != -16; k -= 16)
  {
    sub_1D5D20(&STACK[0x1A70] + k);
  }

  sub_1E0258(&STACK[0x1C10]);
  sub_2DE774(&STACK[0x1C00]);
  sub_4BA7C(&STACK[0x2E0]);
  for (m = 16; m != -16; m -= 16)
  {
    sub_1D5D20(&STACK[0x1BE0] + m);
  }

  sub_1E0258(&STACK[0x1D80]);
  sub_2DE774(&STACK[0x1D70]);
  sub_4BA7C(&STACK[0x300]);
  for (n = 16; n != -16; n -= 16)
  {
    sub_1D5D20(&STACK[0x1D50] + n);
  }

  sub_1E0258(&STACK[0x1EF0]);
  sub_2DE774(&STACK[0x1EE0]);
  sub_4BA7C(&STACK[0x320]);
  for (ii = 16; ii != -16; ii -= 16)
  {
    sub_1D5D20(&STACK[0x1EC0] + ii);
  }

  sub_1E0258(&STACK[0x2070]);
  v91 = &STACK[0x2060];
  v92 = -32;
  do
  {
    v91 = (sub_2DE774(v91) - 16);
    v92 += 16;
  }

  while (v92);
  sub_4BA7C(&STACK[0x340]);
  sub_1D5D20(&STACK[0x2030]);
  sub_4BA7C(&STACK[0x360]);
  sub_1D5D20(&STACK[0x2040]);
  sub_1E0258(&STACK[0x21E0]);
  sub_2DE774(&STACK[0x21D0]);
  sub_4BA7C(&STACK[0x380]);
  for (jj = 16; jj != -16; jj -= 16)
  {
    sub_1D5D20(&STACK[0x21B0] + jj);
  }

  sub_1E0258(&STACK[0x2350]);
  sub_2DE774(&STACK[0x2340]);
  sub_4BA7C(&STACK[0x3A0]);
  for (kk = 16; kk != -16; kk -= 16)
  {
    sub_1D5D20(&STACK[0x2320] + kk);
  }

  sub_1E0258(&STACK[0x24C0]);
  sub_2DE774(&STACK[0x24B0]);
  sub_4BA7C(&STACK[0x3C0]);
  for (mm = 16; mm != -16; mm -= 16)
  {
    sub_1D5D20(&STACK[0x2490] + mm);
  }

  sub_1E0258(&STACK[0x2630]);
  sub_2DE774(&STACK[0x2620]);
  sub_4BA7C(&STACK[0x3E0]);
  for (nn = 16; nn != -16; nn -= 16)
  {
    sub_1D5D20(&STACK[0x2600] + nn);
  }

  sub_1E0258(&STACK[0x27A0]);
  sub_2DE774(&STACK[0x2790]);
  sub_4BA7C(&STACK[0x400]);
  for (i1 = 16; i1 != -16; i1 -= 16)
  {
    sub_1D5D20(&STACK[0x2770] + i1);
  }

  sub_1E0258(&STACK[0x2950]);
  v98 = &STACK[0x2940];
  v99 = -32;
  do
  {
    v98 = (sub_2DE774(v98) - 16);
    v99 += 16;
  }

  while (v99);
  sub_4BA7C(&STACK[0x430]);
  sub_1D5D20(&STACK[0x2910]);
  STACK[0x2770] = &STACK[0x408];
  sub_A9CA4(&STACK[0x2770]);
  v100 = STACK[0x28F8];
  if (STACK[0x28F8])
  {
    STACK[0x2900] = v100;
    operator delete(v100);
  }

  sub_4BA7C(&STACK[0x448]);
  sub_1D5D20(&STACK[0x2920]);
  sub_1E0258(&STACK[0x2B00]);
  v101 = &STACK[0x2AF0];
  v102 = -32;
  do
  {
    v101 = (sub_2DE774(v101) - 16);
    v102 += 16;
  }

  while (v102);
  sub_4BA7C(&STACK[0x480]);
  sub_1D5D20(&STACK[0x2AC0]);
  STACK[0x2930] = &STACK[0x458];
  sub_A9CA4(&STACK[0x2930]);
  v103 = STACK[0x2AA8];
  if (STACK[0x2AA8])
  {
    STACK[0x2AB0] = v103;
    operator delete(v103);
  }

  sub_4BA7C(&STACK[0x498]);
  sub_1D5D20(&STACK[0x2AD0]);
  sub_1E0258(&STACK[0x2CB0]);
  v104 = &STACK[0x2CA0];
  v105 = -32;
  do
  {
    v104 = (sub_2DE774(v104) - 16);
    v105 += 16;
  }

  while (v105);
  sub_4BA7C(&STACK[0x4D0]);
  sub_1D5D20(&STACK[0x2C70]);
  STACK[0x2AE0] = &STACK[0x4A8];
  sub_A9CA4(&STACK[0x2AE0]);
  v106 = STACK[0x2C58];
  if (STACK[0x2C58])
  {
    STACK[0x2C60] = v106;
    operator delete(v106);
  }

  sub_4BA7C(&STACK[0x4E8]);
  sub_1D5D20(&STACK[0x2C80]);
  sub_1E0258(&STACK[0x2E60]);
  v107 = &STACK[0x2E50];
  v108 = -32;
  do
  {
    v107 = (sub_2DE774(v107) - 16);
    v108 += 16;
  }

  while (v108);
  sub_4BA7C(&STACK[0x518]);
  sub_1D5D20(&STACK[0x2E20]);
  STACK[0x2C90] = &STACK[0x4F0];
  sub_A9CA4(&STACK[0x2C90]);
  v109 = STACK[0x2E08];
  if (STACK[0x2E08])
  {
    STACK[0x2E10] = v109;
    operator delete(v109);
  }

  sub_4BA7C(&STACK[0x530]);
  sub_1D5D20(&STACK[0x2E30]);
  sub_1E0258(&STACK[0x3010]);
  v110 = &STACK[0x3000];
  v111 = -32;
  do
  {
    v110 = (sub_2DE774(v110) - 16);
    v111 += 16;
  }

  while (v111);
  sub_4BA7C(&STACK[0x560]);
  sub_1D5D20(&STACK[0x2FD0]);
  STACK[0x2E40] = &STACK[0x538];
  sub_A9CA4(&STACK[0x2E40]);
  v112 = STACK[0x2FB8];
  if (STACK[0x2FB8])
  {
    STACK[0x2FC0] = v112;
    operator delete(v112);
  }

  sub_4BA7C(&STACK[0x578]);
  sub_1D5D20(&STACK[0x2FE0]);
  sub_1E0258(&STACK[0x31C0]);
  v113 = &STACK[0x31B0];
  v114 = -32;
  do
  {
    v113 = (sub_2DE774(v113) - 16);
    v114 += 16;
  }

  while (v114);
  sub_4BA7C(&STACK[0x5A8]);
  sub_1D5D20(&STACK[0x3180]);
  STACK[0x2FF0] = &STACK[0x580];
  sub_A9CA4(&STACK[0x2FF0]);
  v115 = STACK[0x3168];
  if (STACK[0x3168])
  {
    STACK[0x3170] = v115;
    operator delete(v115);
  }

  sub_4BA7C(&STACK[0x5C0]);
  sub_1D5D20(&STACK[0x3190]);
  sub_1E0258(&STACK[0x3370]);
  v116 = &STACK[0x3360];
  v117 = -32;
  do
  {
    v116 = (sub_2DE774(v116) - 16);
    v117 += 16;
  }

  while (v117);
  sub_4BA7C(&STACK[0x5F0]);
  sub_1D5D20(&STACK[0x3330]);
  STACK[0x31A0] = &STACK[0x5C8];
  sub_A9CA4(&STACK[0x31A0]);
  v118 = STACK[0x3318];
  if (STACK[0x3318])
  {
    STACK[0x3320] = v118;
    operator delete(v118);
  }

  sub_4BA7C(&STACK[0x608]);
  sub_1D5D20(&STACK[0x3340]);
  sub_1E0258(&STACK[0x658]);
  v119 = &STACK[0x3510];
  v120 = -32;
  do
  {
    v119 = (sub_2DE774(v119) - 16);
    v120 += 16;
  }

  while (v120);
  sub_4BA7C(&STACK[0x638]);
  sub_1D5D20(&STACK[0x34E0]);
  STACK[0x3350] = &STACK[0x610];
  sub_A9CA4(&STACK[0x3350]);
  v121 = STACK[0x34C8];
  if (STACK[0x34C8])
  {
    STACK[0x34D0] = v121;
    operator delete(v121);
  }

  sub_4BA7C(&STACK[0x650]);
  sub_1D5D20(&STACK[0x34F0]);
  while (v66 != &STACK[0x3520])
  {
    v66 -= 41;
    sub_1E1930(v66);
  }

  sub_1E0000(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_321C64(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "BeamIndex");
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

void sub_321D04(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_321D38(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = sub_5544(17);
    if (*(v2 + 8))
    {
      v3 = *v2;
      if (*v2)
      {
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
        {
          v5 = 136315394;
          v6 = "AggregateDevice.cpp";
          v7 = 1024;
          v8 = 224;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Closing VAD Captures", &v5, 0x12u);
        }
      }
    }

    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  sub_68E60();
  operator new();
}

void sub_321E78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_321E84(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(17);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v5 = "AggregateDevice.cpp";
        v6 = 1024;
        v7 = 230;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d deleting IOMonitorCloseMessage", buf, 0x12u);
      }
    }
  }

  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_321F9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17, int a18, __int16 a19, __int16 a20, int a21)
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
    JUMPOUT(0x321F54);
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

void sub_322240(caulk::concurrent::message *this)
{
  *this = off_6D0708;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_3222D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((*(*a3 + 96))(a3))
    {
      v5 = *(a2 + 16);
      v6[0] = *a2;
      v6[1] = v5;
      v7 = *(a2 + 32);
      v8 = 1;
      sub_32235C(result, v6);
    }
  }
}

void sub_32235C(uint64_t a1, uint64_t a2)
{
  v36 = *(a1 + 276);
  v4 = sub_5544(17);
  sub_68108(__p, &v36);
  if (__p[23] >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = *__p;
  }

  sub_51E48(3, v4, "", 846, "", "Updating time sync device for VAD %s", v5);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (!(*(*a1 + 88))(a1, 1))
  {
    goto LABEL_33;
  }

  if (*(a2 + 40) == 1)
  {
    v6 = *(a2 + 16);
    *__p = *a2;
    *&__p[16] = v6;
    v40 = *(a2 + 32);
    if (*&__p[8] != 1819304813)
    {
LABEL_33:
      sub_53E8(__dst, "");
      goto LABEL_34;
    }
  }

  else
  {
    v7 = (*(*a1 + 96))(a1, 1, 0);
    if ((*(*v7 + 128))(v7, __p, 1885762592))
    {
      v8 = 0;
    }

    else
    {
      v8 = *&__p[8] == 1819304813;
    }

    if (!v8)
    {
      goto LABEL_33;
    }
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v9 = *(a1 + 216);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    v11 = v10;
    if (v10)
    {
      v12 = *(a1 + 208);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      __dst[0] = v12;
      __dst[1] = v10;
      sub_1A8C0(v10);
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_CE3DC((a1 + 272));
  v14 = sub_3BE5C4(__dst, v13);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (!v14)
  {
    goto LABEL_33;
  }

  v15 = *(a1 + 535);
  if (v15 < 0)
  {
    v15 = *(a1 + 520);
  }

  v16 = v15 == 0;
  v17 = sub_5544(17);
  v18 = *v17;
  if (!v16)
  {
    v19 = (a1 + 512);
    if (v18 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1 + 512;
      if (*(a1 + 535) < 0)
      {
        v20 = *v19;
      }

      *__p = 136315650;
      *&__p[4] = "AggregateDevice.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 1059;
      *&__p[18] = 2080;
      *&__p[20] = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Selected clock is %s", __p, 0x1Cu);
    }

    if (*(a1 + 535) < 0)
    {
      sub_54A0(__dst, *(a1 + 512), *(a1 + 520));
      goto LABEL_34;
    }

    goto LABEL_72;
  }

  v19 = (a1 + 488);
  if (v18 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
  {
    v30 = a1 + 488;
    if (*(a1 + 511) < 0)
    {
      v30 = *v19;
    }

    *__p = 136315650;
    *&__p[4] = "AggregateDevice.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 1063;
    *&__p[18] = 2080;
    *&__p[20] = v30;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Selected clock is %s", __p, 0x1Cu);
  }

  if ((*(a1 + 511) & 0x80000000) == 0)
  {
LABEL_72:
    *__dst = *v19;
    v35 = v19[2];
    goto LABEL_34;
  }

  sub_54A0(__dst, *(a1 + 488), *(a1 + 496));
LABEL_34:
  v21 = (*(*a1 + 120))(a1);
  v22 = sub_5544(17);
  sub_68108(__p, &v36);
  if (__p[23] >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = *__p;
  }

  if (SHIBYTE(v35) < 0)
  {
    if (__dst[1])
    {
      v24 = __dst[0];
    }

    else
    {
      v24 = "None";
    }
  }

  else
  {
    v24 = __dst;
    if (!HIBYTE(v35))
    {
      v24 = "None";
    }
  }

  sub_51E48(3, v22, "", 143, "", "Setting clock for VAD '%s' to %s", v23, v24);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  strcpy(__p, "dcpabolg");
  __p[9] = 0;
  *&__p[10] = 0;
  if (!sub_66E40(v21, __p))
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "AggregateDevice.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 135;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Default VAD's clock device is not settable", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Default VAD's clock device is not settable");
  }

  if (v35 >= 0)
  {
    v25 = __dst;
  }

  else
  {
    v25 = __dst[0];
  }

  if (v25)
  {
    if (v35 >= 0)
    {
      v26 = HIBYTE(v35);
    }

    else
    {
      v26 = __dst[1];
    }

    v27 = CFStringCreateWithBytes(0, v25, v26, 0x8000100u, 0);
    cf = v27;
    if (!v27)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
    }
  }

  else
  {
    v27 = 0;
    cf = 0;
  }

  inData = v27;
  strcpy(__p, "dcpabolg");
  __p[9] = 0;
  *&__p[10] = 0;
  AudioObjectSetPropertyData(v21, __p, 0, 0, 8u, &inData);
  if (cf)
  {
    CFRelease(cf);
  }

  v29 = sub_127A6C(__dst);
  if (HIDWORD(v29))
  {
    *(a1 + 432) = v29;
    *(a1 + 436) = 1;
  }

  else if (*(a1 + 436) == 1)
  {
    *(a1 + 436) = 0;
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_32297C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v25);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_322A34(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1 || (v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v2 = v1;
    off_6FCB88 = dlsym(v1, "AudioIssueDetectorCreate");
    off_6FCB90 = dlsym(v2, "AudioIssueDetectorInitialize");
    off_6FCB98 = dlsym(v2, "AudioIssueDetectorDispose");
    qword_6FCBA0 = dlsym(v2, "AudioIssueDetectorSetNodeFormat");
    off_6FCBA8 = dlsym(v2, "AudioIssueDetectorSetNodeFormatWithDirection");
    qword_6FCBB0 = dlsym(v2, "AudioIssueDetectorReset");
    off_6FCBB8 = dlsym(v2, "AudioIssueDetectorAnalyzeBuffer");
    off_6FCBC0 = dlsym(v2, "AudioIssueDetectorUpdateReportingSessions");
    qword_6FCBC8 = dlsym(v2, "AudioIssueDetectorRemoveNode");
    qword_6FCBD0 = dlsym(v2, "AudioIssueDetectorSetUplinkMute");
    qword_6FCBD8 = dlsym(v2, "AudioIssueDetectorSetDownlinkVolume");
    qword_6FCBE0 = dlsym(v2, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    off_6FCBE8 = dlsym(v2, "AudioIssueDetectorSetSmartCaseMicMute");
    qword_6FCBF0 = dlsym(v2, "AudioIssueDetectorFlush");
  }

  v3 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (v3)
  {
    v4 = dlsym(v3, "RegisterAudioUnits_Analyzer");
    if (v4)
    {

      v4();
    }
  }
}

uint64_t sub_322C08@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  v5 = sub_809C0();
  v34[0] = off_6C1C48;
  v34[3] = v34;
  sub_2574C4(&v28, v5, a2, v34);
  v6 = v29;
  if (v29 == &v28)
  {
    goto LABEL_45;
  }

  v7 = (a1 + 184);
  v27 = a1;
  do
  {
    v8 = v6[3];
    if (!v8)
    {
      v9 = 0;
LABEL_36:
      v23 = sub_5544(17);
      v24 = *v23;
      if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "AggregateDevice.cpp";
        v32 = 1024;
        v33 = 366;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Expired port in connected port list.", buf, 0x12u);
      }

      goto LABEL_42;
    }

    v9 = std::__shared_weak_count::lock(v8);
    if (!v9)
    {
      goto LABEL_36;
    }

    v10 = v6[2];
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = *(a1 + 192);
    if (v11 == v7)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v12 = *(v10 + 200);
      if (v12)
      {
        v13 = *(v10 + 192);
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = std::__shared_weak_count::lock(v12);
        v15 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v12);
          sub_1A8C0(v15);
        }

        else
        {
          std::__shared_weak_count::__release_weak(v12);
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = v11[3];
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        v18 = v17;
        if (v17)
        {
          v19 = v11[2];
          atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v17);
          if (!v15)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v19 = 0;
          if (!v15)
          {
LABEL_22:
            v13 = 0;
            v20 = 0;
            if (!v18)
            {
              goto LABEL_26;
            }

            goto LABEL_23;
          }
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
        if (!v15)
        {
          goto LABEL_22;
        }
      }

      v20 = std::__shared_weak_count::lock(v15);
      if (!v20)
      {
        v13 = 0;
      }

      if (!v18)
      {
LABEL_26:
        v22 = v13 == 0;
        if (!v20)
        {
          goto LABEL_28;
        }

LABEL_27:
        sub_1A8C0(v20);
        goto LABEL_28;
      }

LABEL_23:
      v21 = std::__shared_weak_count::lock(v18);
      if (!v21)
      {
        goto LABEL_26;
      }

      v22 = v13 == v19;
      sub_1A8C0(v21);
      if (v20)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v22)
      {
        break;
      }

      v11 = v11[1];
      if (v11 == v7)
      {
        goto LABEL_41;
      }
    }

    if (v11 != v7)
    {
      sub_652A0(a3, v6 + 2);
    }

LABEL_41:
    a1 = v27;
LABEL_42:
    if (v9)
    {
LABEL_43:
      sub_1A8C0(v9);
    }

    v6 = v6[1];
  }

  while (v6 != &v28);
LABEL_45:
  sub_65310(&v28);
  return sub_85148(v34);
}

void sub_322F04(_Unwind_Exception *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  if (v11)
  {
    sub_1A8C0(v11);
  }

  sub_65310(va);
  sub_85148(va1);
  sub_65310(a7);
  _Unwind_Resume(a1);
}

void sub_322FD8()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateDevice.cpp";
      v5 = 1024;
      v6 = 353;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): DefinesCustomPreferredOutputChannelsForStereo returned false; calling this function is illegal.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "DefinesCustomPreferredOutputChannelsForStereo returned false; calling this function is illegal.");
}

double sub_3230D0(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_871F0(a1, &v4, a2);
  if (!v2)
  {
    sub_DE7DC("map::at:  key not found");
  }

  return *(v2 + 48);
}

uint64_t sub_323110(void *a1)
{
  if (sub_1278D8())
  {
    v36 = 1886216809;
    v38 = 0;
    v37 = 0uLL;
    sub_4625C(&v37, &v36, &v37, 1uLL);
    *v23 = v37;
    v24 = v38;
    strcpy(v25, "cwdv");
    v25[8] = 0;
    v26 = 3;
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    v29 = 44739242;
    v31 = 0;
    v32 = 0;
    __p = 0;
    (*(*a1 + 512))(&v33, a1, v23);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v28[0]);
    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }

    if (v35)
    {
      v2 = v34;
      v3 = *(v34 + 24);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = *(v2 + 16);
          if (v6)
          {
            LODWORD(v37) = sub_A82E4(v6);
            LODWORD(v23[0]) = 1768843845;
            *(v23 + 4) = qword_6EA868;
            v7 = sub_542F0(&v37, v23, 0, 0);
            *(&v10 + 1) = v8;
            *&v10 = v7;
            v9 = v10 >> 32;
            if ((v9 & 0x100000000) != 0)
            {
              if (v9)
              {
                v11 = 0;
LABEL_35:
                sub_1A8C0(v5);
LABEL_36:
                sub_65310(&v33);
                return v11;
              }
            }
          }

          sub_1A8C0(v5);
        }
      }
    }

    v12 = a1[28];
    v13 = a1 + 29;
    if (v12 != a1 + 29)
    {
      while ((*(v12 + 7) & 0xFBFFFFFF) != 0x6870696E)
      {
        v14 = v12[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v12[2];
            v16 = *v15 == v12;
            v12 = v15;
          }

          while (!v16);
        }

        v12 = v15;
        if (v15 == v13)
        {
          goto LABEL_26;
        }
      }
    }

    if (v12 == v13)
    {
LABEL_26:
      v17 = a1 + 23;
      for (i = a1[24]; i != v17; i = i[1])
      {
        v19 = i[3];
        if (!v19 || (v20 = std::__shared_weak_count::lock(v19)) == 0)
        {
          v11 = 1;
          goto LABEL_36;
        }

        v5 = v20;
        v21 = i[2];
        if (!v21 || *(v21 + 520) != 1)
        {
          v11 = 1;
          goto LABEL_35;
        }

        sub_1A8C0(v20);
      }
    }

    v11 = 0;
    goto LABEL_36;
  }

  return 0;
}

void sub_323390(_Unwind_Exception *a1)
{
  sub_1A8C0(v1);
  sub_65310((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_3233BC(uint64_t a1, unsigned int a2, int *a3, uint64_t a4)
{
  if (!a2)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AggregateDevice.cpp";
      v20 = 1024;
      v21 = 240;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inNumberAddresses is 0.", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inNumberAddresses is 0.");
  }

  if (!a4)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AggregateDevice.cpp";
      v20 = 1024;
      v21 = 241;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inClientData is NULL]: inClientData is NULL.", &v18, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v11, "inClientData is NULL.");
  }

  v5 = a3;
  if (!a3)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "AggregateDevice.cpp";
      v20 = 1024;
      v21 = 242;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inAddresses is NULL]: inAddresses is NULL.", &v18, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "inAddresses is NULL.");
  }

  v6 = a2;
  do
  {
    v7 = *v5;
    v5 += 3;
    if (v7 == 1768843845)
    {
      *(a4 + 484) = sub_323110(a4);
    }

    --v6;
  }

  while (v6);
  return 0;
}

uint64_t sub_323674(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v3;
    v4 = *(a2 + 4);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    *(a1 + 40) = *(a2 + 40);
    v5 = *(a2 + 6);
    if (v5)
    {
      CFRetain(*(a2 + 6));
    }

    *(a1 + 48) = v5;
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_3236FC(uint64_t a1, const std::string *a2)
{
  v4 = sub_5544(17);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2->__r_.__value_.__r.__words[0];
    }

    v7 = 136315650;
    v8 = "AggregateDevice.cpp";
    v9 = 1024;
    v10 = 1048;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d media clock is %s", &v7, 0x1Cu);
  }

  std::string::operator=((a1 + 512), a2);
  LOBYTE(v7) = 0;
  v13 = 0;
  sub_32235C(a1, &v7);
}

void sub_323804(uint64_t result)
{
  v1 = (result + 16);
  if (atomic_load((result + 16)))
  {
    sub_3635D4(result);
    v4 = atomic_load(v1);
    if (!v4 && (atomic_exchange((result + 64), 0) & 1) != 0)
    {
      v5 = *(result + 72);
      if (v5)
      {
        v6 = *(result + 80);
        if (v6)
        {
          v7 = *(v5 + 8);
          if (v7)
          {
            (*(*v7 + 32))(v7);
            v5 = *(result + 72);
            v6 = *(result + 80);
          }

          *(result + 72) = 0;
          v8 = *(v6 + 24);
          *(v6 + 24) = v5;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }

          if (*(result + 72))
          {
            v10 = sub_5544(14);
            v11 = *v10;
            if (*v10)
            {
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
              {
                v13 = 136315394;
                v14 = "HapticDebugIODelegate.cpp";
                v15 = 1024;
                v16 = 226;
                _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", &v13, 0x12u);
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Postcondition failure.");
          }

          v9 = *(result + 80);
          sub_4F08C();
          caulk::concurrent::messenger::enqueue(&unk_70A4E0, v9);
          *(result + 80) = 0;
        }
      }
    }
  }
}

void sub_3239D8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = atomic_load((a1 + 64));
  if (v5)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = sub_4EFA20(v6, a4);
      if (v7)
      {
        v8 = v7;
        v9 = sub_5544(17);
        v10 = *v9;
        if (*v9)
        {
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            sub_22170(__p, v8);
            v11 = v15 >= 0 ? __p : __p[0];
            *buf = 136315906;
            v17 = "HapticDebugIODelegate.cpp";
            v18 = 1024;
            v19 = 190;
            v20 = 1024;
            v21 = v8;
            v22 = 2080;
            v23 = v11;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d error writing buffer to file: %d %s", buf, 0x22u);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }
  }

  while (atomic_load((a1 + 68)))
  {
    atomic_fetch_add((a1 + 68), 0xFFFFFFFF);
    sub_323804(a1);
  }
}

void sub_323B40(uint64_t a1)
{
  v2 = sub_5544(17);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "HapticDebugIODelegate.cpp";
    v7 = 1024;
    v8 = 48;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Closing Haptic IO Monitor", &v5, 0x12u);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = 0;
    (*(*v4 + 8))(v4);
  }

  sub_68E60();
  operator new();
}

void sub_323C70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_323C7C(uint64_t *a1)
{
  v1 = *a1;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_323CEC(caulk::concurrent::message *this)
{
  *this = off_6C1CF8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_323D80(caulk::concurrent::message *this)
{
  *this = off_6C1CF8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_323E00(uint64_t a1)
{
  sub_323E38(a1);

  operator delete();
}

uint64_t sub_323E38(uint64_t a1)
{
  v2 = sub_5544(17);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "HapticDebugIODelegate.cpp";
    v9 = 1024;
    v10 = 82;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Deleting haptic debug delegate", &v7, 0x12u);
  }

  v4 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_65310((a1 + 40));
  *a1 = off_6D8AC0;
  sub_1F7248((a1 + 24));
  sub_1F71EC((a1 + 8));
  return a1;
}

void sub_323F94(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_323FA0(uint64_t a1)
{
  *a1 = off_6D8AC0;
  v2 = (a1 + 8);
  sub_1F7248((a1 + 24));
  sub_1F71EC(v2);
  return a1;
}

void sub_323FF8(uint64_t a1)
{
  sub_324030(a1);

  operator delete();
}

uint64_t sub_324030(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    sub_323E38(v2);
    operator delete();
  }

  *a1 = off_6D8AC0;
  sub_1F7248((a1 + 24));
  sub_1F71EC((a1 + 8));
  return a1;
}

uint64_t sub_3240AC(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HapticDebugIODelegate.cpp";
      v13 = 1024;
      v14 = 169;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_3239D8(a7, a2, a3, a3);
  return 0;
}

void sub_3241D4(AudioObjectID a1, unsigned int **a2)
{
  v4 = sub_5544(27);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10898C(&v81, *a2, a2[1]);
        v6 = v81.__m_.__opaque[15] >= 0 ? &v81 : v81.__m_.__sig;
        buf.mSelector = 136315650;
        *&buf.mScope = "HapticDebugIODelegate.cpp";
        v74 = 1024;
        v75 = 30;
        v76 = 2080;
        v77 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting input data sources: [%s]", &buf, 0x1Cu);
        if (v81.__m_.__opaque[15] < 0)
        {
          operator delete(v81.__m_.__sig);
        }
      }
    }
  }

  *&v40.mSelector = 0x696E707473737263;
  v40.mElement = 0;
  v7 = sub_5544(14);
  if ((*(v7 + 8) & 1) != 0 && *v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    v80.__cv_.__sig = *&v40.mSelector;
    *v80.__cv_.__opaque = v40.mElement;
    sub_22CE0(&v81, &v80);
  }

  buf = v40;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v81.__m_.__opaque, 0, sizeof(v81.__m_.__opaque));
    v81.__m_.__sig = 850045863;
    memset(v80.__cv_.__opaque, 0, sizeof(v80.__cv_.__opaque));
    v80.__cv_.__sig = 1018212795;
    v72 = 0;
    sub_745E8(v71, a1, &v40, &v80, &v81, &v72);
    v68 = v40;
    v67 = a1;
    v69 = 0;
    v70 = 0;
    buf = v40;
    if (!sub_66E40(a1, &buf))
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        __p = *&v40.mSelector;
        LODWORD(v50) = v40.mElement;
        sub_22CE0(&v64, &__p);
      }

LABEL_114:
      sub_73C20(v71);
      std::condition_variable::~condition_variable(&v80);
      std::mutex::~mutex(&v81);
      return;
    }

    sub_3250DC(&v64, &v67);
    if (v66)
    {
      goto LABEL_16;
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    sub_46980(&v61, v64, v65, (v65 - v64) >> 2);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    sub_46980(&v58, *a2, a2[1], a2[1] - *a2);
    v15 = v61;
    v16 = v58;
    if (v62 - v61 == v59 - v58)
    {
      v17 = memcmp(v61, v58, v62 - v61) == 0;
      if (!v16)
      {
LABEL_36:
        if (v15)
        {
          v62 = v15;
          operator delete(v15);
          if (v17)
          {
LABEL_40:
            v18 = sub_5544(14);
            if (*(v18 + 8))
            {
              v12 = *v18;
              if (!*v18)
              {
                goto LABEL_45;
              }

              if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
              {
                buf.mSelector = 136315650;
                *&buf.mScope = "HALPropertySynchronizer.h";
                v74 = 1024;
                v75 = 294;
                v76 = 1024;
                LODWORD(v77) = a1;
                _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
              }
            }

LABEL_44:
            LOBYTE(v12) = 0;
LABEL_45:
            if (v64)
            {
              operator delete(v64);
            }

            if (v12)
            {
              sub_3250DC(&v64, &v67);
              if (v66)
              {
LABEL_49:
                v19 = 2000;
                while (1)
                {
                  sub_3250DC(&__p, &v67);
                  v20 = __p;
                  if (v51)
                  {
                    goto LABEL_51;
                  }

                  v46 = 0;
                  v47 = 0;
                  v48 = 0;
                  sub_46980(&v46, __p, v50, (v50 - __p) >> 2);
                  v43 = 0;
                  v44 = 0;
                  v45 = 0;
                  sub_46980(&v43, *a2, a2[1], a2[1] - *a2);
                  v22 = v46;
                  v23 = v43;
                  if (v47 - v46 == v44 - v43)
                  {
                    break;
                  }

                  v24 = 0;
                  if (v43)
                  {
                    goto LABEL_57;
                  }

LABEL_58:
                  if (v22)
                  {
                    v47 = v22;
                    operator delete(v22);
                  }

                  if (v24)
                  {
                    v21 = 16;
                    if (!v20)
                    {
                      goto LABEL_63;
                    }

                    goto LABEL_62;
                  }

                  if (v19 <= 0)
                  {
                    v33 = sub_5544(14);
                    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
                    {
                      v41 = v40;
                      sub_22CE0(&v42, &v41.mSelector);
                    }

LABEL_51:
                    v21 = 1;
                    if (!v20)
                    {
                      goto LABEL_63;
                    }

LABEL_62:
                    operator delete(v20);
                    goto LABEL_63;
                  }

                  v25.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                  v26 = sub_5544(14);
                  if (*(v26 + 8))
                  {
                    v27 = *v26;
                    if (*v26)
                    {
                      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
                      {
                        buf.mSelector = 136315906;
                        *&buf.mScope = "HALPropertySynchronizer.h";
                        v74 = 1024;
                        v75 = 354;
                        v76 = 2080;
                        v77 = "with timeout";
                        v78 = 1024;
                        v79 = a1;
                        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
                      }
                    }
                  }

                  sub_27A4();
                  LOBYTE(v42.mSelector) = sub_2E6B08();
                  *&buf.mSelector = &v81;
                  LOBYTE(buf.mElement) = 1;
                  std::mutex::lock(&v81);
                  v28.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
                  while ((v72 & 1) == 0 && v28.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
                  {
                    v29.__d_.__rep_ = v28.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
                    if (v29.__d_.__rep_ >= 1)
                    {
                      std::chrono::steady_clock::now();
                      v30.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                      if (v30.__d_.__rep_)
                      {
                        if (v30.__d_.__rep_ < 1)
                        {
                          if (v30.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                          {
                            goto LABEL_81;
                          }

                          v31 = 0x8000000000000000;
                        }

                        else
                        {
                          if (v30.__d_.__rep_ > 0x20C49BA5E353F7)
                          {
                            v31 = 0x7FFFFFFFFFFFFFFFLL;
                            goto LABEL_82;
                          }

LABEL_81:
                          v31 = 1000 * v30.__d_.__rep_;
LABEL_82:
                          if (v31 > (v29.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                          {
                            v32.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_85:
                            std::condition_variable::__do_timed_wait(&v80, &buf, v32);
                            std::chrono::steady_clock::now();
                            goto LABEL_86;
                          }
                        }
                      }

                      else
                      {
                        v31 = 0;
                      }

                      v32.__d_.__rep_ = v31 + v29.__d_.__rep_;
                      goto LABEL_85;
                    }

LABEL_86:
                    if (std::chrono::steady_clock::now().__d_.__rep_ >= v28.__d_.__rep_)
                    {
                      break;
                    }
                  }

                  if (LOBYTE(buf.mElement) == 1)
                  {
                    std::mutex::unlock(*&buf.mSelector);
                  }

                  sub_1DB4C4(&v42);
                  v21 = 0;
                  v19 += (std::chrono::system_clock::now().__d_.__rep_ - v25.__d_.__rep_) / -1000;
                  if (v20)
                  {
                    goto LABEL_62;
                  }

LABEL_63:
                  if (v21)
                  {
                    if (v21 == 16)
                    {
                      v34 = sub_5544(14);
                      if ((*(v34 + 8) & 1) != 0 && *v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
                      {
                        v42 = v40;
                        sub_22CE0(&__p, &v42.mSelector);
                      }
                    }

                    goto LABEL_112;
                  }
                }

                v24 = memcmp(v46, v43, v47 - v46) == 0;
                if (!v23)
                {
                  goto LABEL_58;
                }

LABEL_57:
                v44 = v23;
                operator delete(v23);
                goto LABEL_58;
              }

              v55 = 0;
              v56 = 0;
              v57 = 0;
              sub_46980(&v55, v64, v65, (v65 - v64) >> 2);
              v52 = 0;
              v53 = 0;
              v54 = 0;
              sub_46980(&v52, *a2, a2[1], a2[1] - *a2);
              v35 = v55;
              v36 = v52;
              v37 = v56 - v55 == v53 - v52 && memcmp(v55, v52, v56 - v55) == 0;
              if (v36)
              {
                v53 = v36;
                operator delete(v36);
              }

              if (v35)
              {
                v56 = v35;
                operator delete(v35);
                if (!v37)
                {
                  goto LABEL_49;
                }
              }

              else if (!v37)
              {
                goto LABEL_49;
              }

              v38 = sub_5544(14);
              if (*(v38 + 8))
              {
                v39 = *v38;
                if (*v38)
                {
                  if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
                  {
                    buf.mSelector = 136315650;
                    *&buf.mScope = "HALPropertySynchronizer.h";
                    v74 = 1024;
                    v75 = 322;
                    v76 = 1024;
                    LODWORD(v77) = a1;
                    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
                  }
                }
              }

LABEL_112:
              if (v64)
              {
                operator delete(v64);
              }
            }

            goto LABEL_114;
          }
        }

        else if (v17)
        {
          goto LABEL_40;
        }

LABEL_16:
        v8 = sub_5544(14);
        if ((*(v8 + 8) & 1) != 0 && *v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v55 = *&v40.mSelector;
          LODWORD(v56) = v40.mElement;
          sub_22CE0(&__p, &v55);
        }

        buf = v40;
        v9 = sub_1F79B8(a1, &buf, *a2, a2[1]);
        if (!v9)
        {
          LOBYTE(v12) = 1;
          goto LABEL_45;
        }

        v10 = v9;
        v11 = sub_5544(14);
        v12 = *v11;
        if (!*v11)
        {
          goto LABEL_45;
        }

        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, v10);
          v52 = *&v40.mSelector;
          LODWORD(v53) = v40.mElement;
          sub_22CE0(&v55, &v52);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v17 = 0;
      if (!v58)
      {
        goto LABEL_36;
      }
    }

    v59 = v16;
    operator delete(v16);
    goto LABEL_36;
  }

  v13 = sub_5544(14);
  if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
  {
    v80.__cv_.__sig = *&v40.mSelector;
    *v80.__cv_.__opaque = v40.mElement;
    sub_22CE0(&v81, &v80);
  }
}

void sub_324FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unsigned int a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_73C20(&a63);
  std::condition_variable::~condition_variable((v63 - 216));
  std::mutex::~mutex((v63 - 168));
  _Unwind_Resume(a1);
}

void sub_3250DC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v13, a2, buf, v4, *(a2 + 24));
  v5 = v13;
  if (v13)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v5);
        v9 = *v3;
        v10 = *(v3 + 2);
        sub_22CE0(&__p, &v9);
      }
    }
  }

  if (v16 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v7 = v14;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v8 = v18;
    *a1 = *buf;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_3252DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_32531C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    v3 = sub_5544(17);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "HapticDebugIODelegate.cpp";
      v43 = 1024;
      *__p = 242;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HapticDebugDelegate not instantiated yet", &buf, 0x12u);
    }

    v1 = *(a1 + 32);
    if (!v1)
    {
      return;
    }
  }

  if (!*(v1 + 56))
  {
    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "HapticDebugIODelegate.cpp";
      v43 = 1024;
      *__p = 87;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = (v1 + 40);
  v6 = *(v1 + 48);
  if (v6 != (v1 + 40))
  {
    do
    {
      v7 = v6[3];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = v6[2];
          if (v10)
          {
            v11 = (*(*v10 + 480))(v10);
            sub_1A8C0(v9);
            if (v11)
            {
              goto LABEL_18;
            }
          }

          else
          {
            sub_1A8C0(v9);
          }
        }
      }

      v6 = v6[1];
    }

    while (v6 != v5);
    goto LABEL_15;
  }

LABEL_18:
  v14 = v6 == v5;
  v5 = v6;
  if (v14)
  {
LABEL_15:
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "HapticDebugIODelegate.cpp";
      v43 = 1024;
      *__p = 98;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Cannot find master haptic debug device", &buf, 0x12u);
    }
  }

  sub_5659C(&v40, v5 + 2, "", 102);
  v15 = v40;
  v16 = (*(*v40 + 120))(v40);
  strcpy(&buf, "crsstpni");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  if (AudioObjectHasProperty(v16, &buf))
  {
    (*(*v15 + 488))(&v38, v15);
    if (v38 == v39)
    {
      v22 = sub_5544(17);
      v23 = sub_5544(27);
      v24 = 0;
      *&buf.mSelector = 0x100000002;
      v25 = *(v22 + 8);
      while (1)
      {
        v26 = *(&buf.mSelector + v24);
        if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
        {
          break;
        }

        v24 += 4;
        if (v24 == 8)
        {
          goto LABEL_49;
        }
      }

      if ((v25 & v26) == 0)
      {
        v22 = v23;
      }

LABEL_49:
      v34 = *v22;
      if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HapticDebugIODelegate.cpp";
        v43 = 1024;
        *__p = 110;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "%25s:%-5d No valid input data sources found for this device", &buf, 0x12u);
      }
    }

    else
    {
      v17 = sub_5544(17);
      v18 = sub_5544(27);
      v19 = 0;
      *&buf.mSelector = 0x100000002;
      v20 = *(v17 + 8);
      while (1)
      {
        v21 = *(&buf.mSelector + v19);
        if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
        {
          break;
        }

        v19 += 4;
        if (v19 == 8)
        {
          goto LABEL_31;
        }
      }

      if ((v20 & v21) == 0)
      {
        v17 = v18;
      }

LABEL_31:
      v27 = *v17;
      if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        sub_10898C(&v46, v38, v39);
        v28 = (v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v46 : v46.__r_.__value_.__r.__words[0];
        buf.mSelector = 136315650;
        *&buf.mScope = "HapticDebugIODelegate.cpp";
        v43 = 1024;
        *__p = 114;
        *&__p[4] = 2080;
        *&__p[6] = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%25s:%-5d Setting input data sources: %s", &buf, 0x1Cu);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }
      }

      v29 = (*(*v15 + 120))(v15);
      *&buf.mSelector = sub_3241D4;
      buf.mElement = v29;
      *&__p[10] = 0;
      v45 = 0;
      *&__p[2] = 0;
      sub_46980(&__p[2], v38, v39, (v39 - v38) >> 2);
      v30 = sub_5544(17);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = atomic_load((v1 + 16));
        LODWORD(v46.__r_.__value_.__l.__data_) = 136315650;
        *(v46.__r_.__value_.__r.__words + 4) = "AggregateDevice_IODelegate.h";
        WORD2(v46.__r_.__value_.__r.__words[1]) = 1024;
        *(&v46.__r_.__value_.__r.__words[1] + 6) = 50;
        WORD1(v46.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(v46.__r_.__value_.__r.__words[2]) = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d executing function with device stopped. start count is %d", &v46, 0x18u);
      }

      if (atomic_load((v1 + 16)))
      {
        if (sub_363A44(v1))
        {
          (*&buf.mSelector)(buf.mElement, &__p[2]);
          sub_364108(v1);
        }
      }

      else
      {
        (*&buf.mSelector)(buf.mElement, &__p[2]);
      }

      if (*&__p[2])
      {
        *&__p[10] = *&__p[2];
        operator delete(*&__p[2]);
      }
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }
  }

  if (v41)
  {
    sub_1A8C0(v41);
  }
}

void sub_325960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_3259EC(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    goto LABEL_6;
  }

  v5 = sub_5544(17);
  v6 = *v5;
  if (*v5)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "HapticDebugIODelegate.cpp";
      v9 = 1024;
      v10 = 267;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HapticDebugDelegate not instantiated yet", &v7, 0x12u);
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {
LABEL_6:
    atomic_store(a2, (v3 + 32));
  }
}

void sub_325AD0()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0;
  v0 = sub_106F10(@"XxnEk9uiIk5vCdbWEGt7lA");
  v10[4] = (v0 > 0xFFu) & v0;
  v10[5] = 1;
  *&v10[6] = 0;
  v11 = 0;
  v12 = 16777473;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v15 = 0;
  v16 = 0;
  v17 = -1044381696;
  v18 = 1;
  v19 = -1044381696;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = -1056964608;
  v24 = 1;
  v25 = -1033371648;
  v26 = 1;
  v27 = 0;
  v28 = 1;
  v29 = -1033371648;
  v30 = 1;
  v31 = 0;
  v32 = 1;
  v33 = -1044381696;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = -1033371648;
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = -1033371648;
  v42 = 1;
  v43 = -1055916032;
  v44 = 1;
  v45 = -1033371648;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = -1055916032;
  v50 = 1;
  v51 = -1033371648;
  v52 = 1;
  v53 = -1055916032;
  v54 = 1;
  v55 = -1033371648;
  v56 = 1;
  v57 = 0;
  v58 = 1;
  v59 = -1055916032;
  v60 = 1;
  v61 = -1043333120;
  v62 = 1;
  v63 = 0x40000000;
  v64 = 1;
  v65 = 16777472;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 1;
  v70 = 1103626240;
  v71 = 1;
  v72 = 0;
  v73 = 1;
  v74 = 1094713344;
  v75 = 1;
  v76 = 1094713344;
  v77 = 1;
  v78 = 1094713344;
  v79 = 1;
  v80 = -1061158912;
  v81 = 1;
  v82 = 1107296256;
  v83 = 1;
  v84 = 1107296256;
  v85 = 1;
  v86 = 1092616192;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 16777472;
  v93[0] = 0;
  v93[72] = 0;
  v93[80] = 0;
  v93[120] = 0;
  v93[128] = 0;
  v93[200] = 0;
  v93[208] = 0;
  v93[248] = 0;
  LOBYTE(v94) = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  v97 = 0;
  LOBYTE(v98) = 0;
  v99 = 0;
  LOBYTE(v100) = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  v105 = 0;
  LOBYTE(v106) = 0;
  v107 = 0;
  LOBYTE(v108) = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  LOBYTE(v112) = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 1;
  v127 = 0;
  v128 = 0;
  LOBYTE(v129) = 0;
  v130 = 0;
  LOBYTE(v131) = 0;
  v132 = 0;
  LOBYTE(v133) = 0;
  v134 = 0;
  LOBYTE(v135) = 0;
  v136 = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  LOBYTE(v140) = 0;
  v141 = 0;
  LOBYTE(v142) = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  LOBYTE(v148) = 0;
  v149 = 0;
  LOBYTE(v150) = 0;
  v151 = 0;
  LOBYTE(v152) = 0;
  v153 = 0;
  LOBYTE(v154) = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  LOBYTE(__p) = 0;
  v162 = 0;
  v163.__r_.__value_.__s.__data_[0] = 0;
  v164 = 0;
  v165.__r_.__value_.__s.__data_[0] = 0;
  v166 = 0;
  v167.__r_.__value_.__s.__data_[0] = 0;
  v168 = 0;
  v169 = 256;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x200000001;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  *v10 = 0x101010101000100;
  *&v10[12] = 257;
  v12 = 16843008;
  v61 = -1047527424;
  v62 = 1;
  v70 = 1103101952;
  v71 = 1;
  v76 = 0;
  v77 = 1;
  v78 = 0;
  v79 = 1;
  v74 = 0;
  v75 = 1;
  v90 = 1090519040;
  v91 = 1;
  v80 = -1040187392;
  v81 = 1;
  v63 = 0;
  v64 = 1;
  v92 = 16843009;
  if ((v95 & 1) == 0)
  {
    v95 = 1;
  }

  v94 = 1836282987;
  if ((v97 & 1) == 0)
  {
    v97 = 1;
  }

  v96 = 2;
  if ((v99 & 1) == 0)
  {
    v99 = 1;
  }

  v98 = 2;
  if ((v101 & 1) == 0)
  {
    v101 = 1;
  }

  v100 = 4;
  if ((v139 & 1) == 0)
  {
    v139 = 1;
  }

  v138 = 2;
  if ((v143 & 1) == 0)
  {
    v143 = 1;
  }

  v142 = 2;
  if ((v141 & 1) == 0)
  {
    v141 = 1;
  }

  v140 = 2;
  v104 = 13;
  v105 = 1;
  v106 = 13;
  v107 = 1;
  v108 = 13;
  v109 = 1;
  v112 = 13;
  v113 = 1;
  v129 = 18;
  v130 = 1;
  v131 = 3;
  v132 = 1;
  v133 = 12;
  v134 = 1;
  v135 = 18;
  v136 = 1;
  v137 = 257;
  v148 = 18;
  v149 = 1;
  v150 = 18;
  v151 = 1;
  v152 = 10;
  v153 = 1;
  v154 = 5;
  v155 = 1;
  sub_30F70C(&__src, 84);
  if (v162 == 1)
  {
    if (SHIBYTE(v161) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v161 = v178;
  }

  else
  {
    __p = __src;
    v161 = v178;
    v162 = 1;
  }

  sub_1F826C(&v163, "_top_mic_general");
  sub_1F826C(&v165, "_top_mic_measurement");
  sub_1F826C(&v167, "_top_mic_hearing_accessibility");
  LOBYTE(v15) = 1;
  sub_47DB04(&v1);
  sub_1E0054(v93);
  sub_477A0(v14[0]);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_326188(uint64_t a1, unsigned int **a2, int a3)
{
  v3 = *(a1 + 880);
  if (!v3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "Device_HPMic_Aspen.cpp";
      v9 = 1024;
      v10 = 575;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No valid support policy present", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No valid support policy present");
  }

  sub_408A74(v3, a2, a3);
}

void sub_3262B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 936));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_326328(a2, *(a1 + 912), *(a1 + 920), (*(a1 + 920) - *(a1 + 912)) >> 2);

  std::mutex::unlock((a1 + 936));
}

void sub_326328(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      sub_1D7C28(a4);
    }

    sub_189A00();
  }
}

void sub_3263A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3263C0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 144) != 1886216809)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_310328(&theData);
  v47 = v51;
  if (v51 == 1)
  {
    v5 = theData;
    __p[1] = 0;
    v49 = 0;
    __p[0] = 0;
    if (theData && (BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(v5), BytePtr))
    {
      v8 = Length;
      if (Length <= 3)
      {
        v42 = sub_5544(14);
        v43 = *v42;
        if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 754;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      else
      {
        LODWORD(v9) = *BytePtr;
        v10 = sub_5544(18);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 766;
          v57 = 1024;
          *v58 = WORD1(v9);
          *&v58[4] = 1024;
          *&v58[6] = BYTE1(v9);
          LOWORD(v59) = 1024;
          *(&v59 + 2) = v9;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mic Trim gains: version %d, size %d, entries %d", buf, 0x24u);
        }

        if (WORD1(v9) == 1 && (v9 & 0xFF00) == 0x200)
        {
          v9 = v9;
          if (v9)
          {
            if (v8 > 7)
            {
              v29 = (BytePtr + 4);
              v9 = v9;
              while (1)
              {
                v13 = __p[0];
                v12 = __p[1];
                if (v9 <= ((__p[1] - __p[0]) >> 2))
                {
                  break;
                }

                v30 = (*v29 >> 16) * 0.1;
                v31 = *v29 * 0.1;
                v52 = v31;
                v53 = v30;
                sub_2B4F3C(__p, &v53);
                sub_2B4F3C(__p, &v52);
                v32 = sub_5544(18);
                v33 = *v32;
                if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = "Device_HPMic_Aspen.cpp";
                  v55 = 1024;
                  v56 = 787;
                  v57 = 2048;
                  *v58 = v30;
                  *&v58[8] = 2048;
                  v59 = v31;
                  _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parsed trim gains: %f %f", buf, 0x26u);
                }

                if (++v29 > &BytePtr[v8 - 4])
                {
                  v13 = __p[0];
                  v12 = __p[1];
                  break;
                }
              }
            }

            else
            {
              v12 = 0;
              v13 = 0;
            }

            v34 = v12 - v13;
            if (v9 < v34 >> 2)
            {
              v35 = v34 - 4;
              do
              {
                v12 -= 4;
                v20 = v9 >= v35 >> 2;
                v35 -= 4;
              }

              while (!v20);
              __p[1] = v12;
            }
          }

          else
          {
            v27 = sub_5544(18);
            v28 = *v27;
            if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "Device_HPMic_Aspen.cpp";
              v55 = 1024;
              v56 = 772;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Number of Mic trim gain entries is zero", buf, 0x12u);
            }
          }

          v36 = v49;
          *a3 = *__p;
          a3[2] = v36;
          goto LABEL_51;
        }

        v44 = sub_5544(14);
        v45 = *v44;
        if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 768;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }
    }

    else
    {
      v40 = sub_5544(14);
      v41 = *v40;
      if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        v55 = 1024;
        v56 = 753;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v14 = a1[110];
  v17 = *(v14 + 72);
  v15 = v14 + 72;
  v16 = v17;
  if (!v17)
  {
    goto LABEL_55;
  }

  v18 = v15;
  do
  {
    v19 = *(v16 + 32);
    v20 = v19 >= 0x706D6269;
    v21 = v19 < 0x706D6269;
    if (v20)
    {
      v18 = v16;
    }

    v16 = *(v16 + 8 * v21);
  }

  while (v16);
  if (v18 == v15 || *(v18 + 32) > 0x706D6269u)
  {
LABEL_55:
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_HPMic_Aspen.cpp";
      v55 = 1024;
      v56 = 811;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unable to locate built-in mic sub-port information", buf, 0x12u);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v39, "Unable to locate built-in mic sub-port information");
  }

  for (i = *(v18 + 40); i != *(v18 + 48); ++i)
  {
    v23 = sub_5544(18);
    if (*(v23 + 8))
    {
      v24 = *v23;
      if (*v23)
      {
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, *i);
          v25 = __p;
          if (v49 < 0)
          {
            v25 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          v55 = 1024;
          v56 = 817;
          v57 = 2080;
          *v58 = v25;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting trim for Data Source ID %s", buf, 0x1Cu);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    v53 = 0.0;
    v26 = *i;
    *buf = 0x696E707461747363;
    *&buf[8] = v26;
    if ((*(*a1 + 16))(a1, buf))
    {
      LODWORD(__p[0]) = 4;
      (*(*a1 + 40))(a1, buf, 0, 0, __p, &v53);
      sub_2B4F3C(a3, &v53);
    }
  }

LABEL_51:
  if (v47)
  {
    if (theData)
    {
      CFRelease(theData);
    }
  }
}

void sub_326B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  __cxa_free_exception(v16);
  sub_2B50D0(va);
  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_326BE0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 == 1886216809)
  {
    v3 = *(result[111] + 32);
    if (!v3)
    {
      v10 = *sub_5544(14);
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "Device_HPMic_Aspen.cpp";
          v15 = 1024;
          v16 = 584;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mTransducerDatabase.mBuiltInMicDefaultSubPort is NULL]: No default sub-port specified for built-in mic.", &v13, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default sub-port specified for built-in mic.");
    }

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if ((v5 - v4) >= 0x41 && v4 != v5)
    {
      v9 = v4;
      while (v9[8] != 1869442665)
      {
        v9 += 16;
        if (v9 == v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v9;
    }

LABEL_8:
    v13 = *v4;
    return sub_1E54B0(a3, &v13, 1);
  }

  else
  {
    v7 = a2;
    v8 = result[110];
    if (v8)
    {

      return sub_40AC30(a3, v8, v7);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  return result;
}

uint64_t sub_326DBC(uint64_t a1, unsigned int a2)
{
  if (a2 != 1752197486)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_HPMic_Aspen.cpp";
      v15 = 1024;
      v16 = 567;
      v17 = 2080;
      v18 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      v14 = "Device_HPMic_Aspen.cpp";
      v15 = 1024;
      v16 = 568;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType: %s.", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType: %s.");
  }

  return 0;
}

void sub_326FCC(void *a1@<X8>)
{
  if (sub_310A30())
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_CE168();
    sub_53E8(__p, "AOP Audio-1");
    sub_CDEB8(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_327034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_327058(uint64_t *a1)
{
  sub_4ADCC0(a1);
  HIBYTE(v24[6]) = 0;
  v24[7] = 0;
  strcpy(v24, "Ms2icrscbolg");
  if ((*(*a1 + 16))(a1, &v24[2]))
  {
    (*(*a1 + 48))(a1, &v24[2], 0, 0, 4, v24);
  }

  sub_147688();
  *&inAddress = 0x696E70746D757465;
  DWORD2(inAddress) = 0;
  v2 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v2, &inAddress))
  {
    v31[0] = 0x676C6F626D757465;
    LODWORD(v31[1]) = 0;
    operator new();
  }

  *&v30.mSelector = 0x696E7074766F6C64;
  v30.mElement = 0;
  v3 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v3, &v30))
  {
    v4 = a1[11];
    v31[0] = a1[10];
    v31[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (sub_40ADD4(a1[110], 1768778083) || sub_40ADD4(a1[110], 1768778033))
  {
    v5 = sub_5544(18);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_HPMic_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 720;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating an internal microphone port", buf, 0x12u);
    }

    sub_33E58C(v31);
    v7 = sub_5544(18);
    if (*(v7 + 8))
    {
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
        {
          v9 = v31;
          if (v32 < 0)
          {
            v9 = v31[0];
          }

          *buf = 136315650;
          *&buf[4] = "Device_HPMic_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 723;
          *&buf[18] = 2080;
          *&buf[20] = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Localized microphone name: '%s'", buf, 0x1Cu);
        }
      }
    }

    v10 = a1[11];
    theDict[0] = a1[10];
    theDict[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    }

    inAddress = 0uLL;
    v26 = 0;
    if (SHIBYTE(v32) < 0)
    {
      sub_54A0(buf, v31[0], v31[1]);
    }

    else
    {
      *buf = *v31;
      *&buf[16] = v32;
    }

    v35 = 0u;
    v34 = 0u;
    *&buf[24] = 0u;
    v11 = sub_46AC8C();
    sub_2360B8(&v28, theDict, &inAddress, buf, "Built-In Microphone", v11);
  }

  sub_4B77B0(a1, &qword_6EA980, 0);
  *&inAddress = 0x707472755354656ELL;
  DWORD2(inAddress) = 0;
  if ((*(*a1 + 16))(a1, &inAddress))
  {
    *buf = 0;
    (*(*a1 + 48))(a1, &inAddress, 0, 0, 4, buf);
  }

  *&v30.mSelector = 0x6F7574706D757465;
  v30.mElement = 5;
  if ((*(*a1 + 16))(a1, &v30))
  {
    *buf = 1;
    (*(*a1 + 48))(a1, &v30, 0, 0, 4, buf);
  }

  v28 = 0x676C6F624D434373;
  v29 = 0;
  if ((*(*a1 + 16))(a1, &v28))
  {
    theDict[0] = 0;
    v23 = 8;
    (*(*a1 + 40))(a1, &v28, 0, 0, &v23, theDict);
    v12 = theDict[0];
    if (!theDict[0])
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 490;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [maxChannelInfo is NULL]: Invalid Maximum Channel Info", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid Maximum Channel Info");
    }

    v31[0] = theDict[0];
    LOWORD(v31[1]) = 1;
    if (CFDictionaryContainsKey(theDict[0], @"MaxInputChannelCount"))
    {
      if ((sub_2E7334(v12, @"MaxInputChannelCount", a1 + 900) & 1) == 0)
      {
        v13 = sub_5544(18);
        v14 = *v13;
        if (*v13)
        {
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "Device_HPMic_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 497;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to convert max num input channels to UInt32", buf, 0x12u);
          }
        }
      }

      v15 = sub_5544(18);
      if (*(v15 + 8))
      {
        v16 = *v15;
        if (*v15)
        {
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(a1 + 225);
            *buf = 136315650;
            *&buf[4] = "Device_HPMic_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 501;
            *&buf[18] = 1024;
            *&buf[20] = v17;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Codec specified a maximum number of input channels: %u", buf, 0x18u);
          }
        }
      }
    }

    sub_A1D30(v31);
  }

  if (_os_feature_enabled_impl())
  {
    v18 = sub_46AC8C();
    (*(*a1 + 408))(a1, v18 + 96, 1);
  }

  v19 = a1[11];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t *sub_327A9C(uint64_t *a1)
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

uint64_t *sub_327AF0(uint64_t a1)
{
  v9 = a1;
  v1 = *(a1 + 8);
  if (v1 && *(v1 + 8) != -1)
  {
    std::mutex::lock((*(a1 + 16) + 936));
    memset(&v10, 0, sizeof(v10));
    *buf = xmmword_5172F0;
    operator new();
  }

  v2 = sub_5544(18);
  v3 = sub_5544(29);
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
      goto LABEL_10;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_10:
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Device_HPMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 851;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Repaired mic check updated for expired HPMic device, ignoring.", buf, 0x12u);
  }

  return sub_327A9C(&v9);
}

void sub_328118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v25);
  if (__p)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v26 + 936));
  sub_327A9C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_3281D0(uint64_t a1, double a2)
{
  v17 = a2;
  v4 = sub_4AF738(a1, a2);
  (*(*a1 + 200))(buf, a1);
  if (*&buf[8])
  {
    v5 = std::__shared_weak_count::lock(*&buf[8]);
    if (v5)
    {
      v6 = *buf;
    }

    else
    {
      v6 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    v15 = 0x676C6F62616F7372;
    v16 = 0;
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && (*(*v6 + 16))(v6, &v15))
    {
      v8 = sub_5544(18);
      v9 = sub_5544(37);
      v10 = 0;
      *buf = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *&buf[v10];
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_19;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_19:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 527;
        v19 = 2048;
        v20 = a2;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Informing AOP of Codec sample rate %f Hz", buf, 0x1Cu);
      }

      (*(*v6 + 48))(v6, &v15, 0, 0, 8, &v17);
    }

    if (v5)
    {
      sub_1A8C0(v5);
    }
  }

  return v4;
}

void sub_328400(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_328424(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p, &v11);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_3285D8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v53 = sub_5544(14);
    if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91, &v90);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v55 = sub_5544(14);
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91, &v90);
    }

    v56 = __cxa_allocate_exception(0x10uLL);
    *v56 = &off_6DDDD0;
    v56[2] = 561211770;
  }

  if (!a6)
  {
    v57 = sub_5544(14);
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91, &v90);
    }

    v58 = __cxa_allocate_exception(0x10uLL);
    *v58 = &off_6DDDD0;
    v58[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1685483629)
  {
    switch(v12)
    {
      case 1162046576:
        v17 = *a6;
        v18 = sub_5544(18);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "Device_HPMic_Aspen.cpp";
          v84 = 1024;
          v85 = 365;
          v86 = 1024;
          LODWORD(v87) = v17;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyCodecLowPowerModeEnable = %u.", &buf, 0x18u);
        }

        break;
      case 1162701936:
        v20 = *a6;
        v21 = sub_5544(18);
        v22 = *v21;
        if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "Device_HPMic_Aspen.cpp";
          v84 = 1024;
          v85 = 377;
          v86 = 1024;
          LODWORD(v87) = v20;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyMicrophoneLowPowerModeEnable = %u.", &buf, 0x18u);
        }

        break;
      case 1634759542:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v63 = sub_5544(14);
          if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
          {
            v90.__cv_.__sig = *a2;
            *v90.__cv_.__opaque = *(a2 + 8);
            sub_22CE0(&v91, &v90);
          }

          v64 = __cxa_allocate_exception(0x10uLL);
          *v64 = &off_6DDDD0;
          v64[2] = 561211770;
        }

        v14 = *(a2 + 4);
        buf.mSelector = 1987013732;
        buf.mScope = v14;
        buf.mElement = 0;
        (*(*a1 + 48))(a1, &buf, a3, a4, a5, a6);
        return;
      default:
        goto LABEL_33;
    }

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (v12 > 1836414052)
  {
    if (v12 == 1836414053)
    {
      if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
      {
        v61 = sub_5544(14);
        if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
        {
          v90.__cv_.__sig = *a2;
          *v90.__cv_.__opaque = *(a2 + 8);
          sub_22CE0(&v91, &v90);
        }

        v62 = __cxa_allocate_exception(0x10uLL);
        *v62 = &off_6DDDD0;
        v62[2] = 561211770;
      }
    }

    else if (v12 == 1987013732 && (*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v15 = sub_5544(14);
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        v90.__cv_.__sig = *a2;
        *v90.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v91, &v90);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = &off_6DDDD0;
      v16[2] = 561211770;
    }

    goto LABEL_33;
  }

  if (v12 == 1685483630)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v59 = sub_5544(14);
      if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
      {
        v90.__cv_.__sig = *a2;
        *v90.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v91, &v90);
      }

      v60 = __cxa_allocate_exception(0x10uLL);
      *v60 = &off_6DDDD0;
      v60[2] = 561211770;
    }

    *(a1 + 904) = *a6 != 0;
    return;
  }

  if (v12 != 1768255076)
  {
LABEL_33:

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (__PAIR64__(*(a2 + 4), 1768255076) == qword_6EA9B0 && *(a2 + 8) == dword_6EA9B8)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v65 = sub_5544(14);
      if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
      {
        v90.__cv_.__sig = *a2;
        *v90.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v91, &v90);
      }

      v66 = __cxa_allocate_exception(0x10uLL);
      *v66 = &off_6DDDD0;
      v66[2] = 561211770;
    }

    v13 = *a6;
    if (v13)
    {
      if (atomic_fetch_add((a1 + 908), 1u))
      {
        return;
      }
    }

    else
    {
      if (!atomic_load((a1 + 908)))
      {
        v67 = sub_5544(14);
        v68 = *v67;
        if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
        {
          buf.mSelector = 136315394;
          *&buf.mScope = "Device_HPMic_Aspen.cpp";
          v84 = 1024;
          v85 = 404;
          _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Attempt to power off the built-in mic when mMicPowerOnCount is 0.", &buf, 0x12u);
        }

        v69 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v69, "Attempt to power off the built-in mic when mMicPowerOnCount is 0.");
      }

      if (atomic_fetch_add((a1 + 908), 0xFFFFFFFF) != 1)
      {
        return;
      }
    }

    v26 = sub_5544(18);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
    {
      v28 = "dis";
      *&buf.mScope = "Device_HPMic_Aspen.cpp";
      buf.mSelector = 136315650;
      if (v13)
      {
        v28 = "en";
      }

      v84 = 1024;
      v85 = 410;
      v86 = 2080;
      v87 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%25s:%-5d Non-redundant requesting to %sable microphone power. Calling the HAL.", &buf, 0x1Cu);
    }

    v29 = *(a1 + 268);
    inData = v13 != 0;
    v30 = sub_5544(14);
    if ((*(v30 + 8) & 1) != 0 && *v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91, &v90);
    }

    buf = *a2;
    if (AudioObjectHasProperty(v29, &buf))
    {
      memset(v91.__m_.__opaque, 0, sizeof(v91.__m_.__opaque));
      v90.__cv_.__sig = 1018212795;
      memset(v90.__cv_.__opaque, 0, sizeof(v90.__cv_.__opaque));
      v91.__m_.__sig = 850045863;
      v82 = 0;
      sub_745E8(v81, v29, a2, &v90, &v91, &v82);
      v76 = v29;
      v77 = *a2;
      v78 = *(a2 + 8);
      v79 = a3;
      v80 = a4;
      buf = *a2;
      if (!sub_66E40(v29, &buf))
      {
        v35 = sub_5544(14);
        if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          v73 = *a2;
          v74 = *(a2 + 8);
          sub_22CE0(__p, &v73);
        }

        goto LABEL_118;
      }

      v31 = sub_32A0F0(&v76);
      if (!HIDWORD(v31) && inData == v31)
      {
        v32 = sub_5544(14);
        if ((*(v32 + 8) & 1) == 0)
        {
          goto LABEL_118;
        }

        v33 = *v32;
        if (!*v32 || !os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_118;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v84 = 1024;
        v85 = 294;
        v86 = 1024;
        LODWORD(v87) = v29;
LABEL_62:
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_118:
        sub_73C20(v81);
        std::condition_variable::~condition_variable(&v90);
        std::mutex::~mutex(&v91);
        return;
      }

      v36 = sub_5544(14);
      if ((*(v36 + 8) & 1) != 0 && *v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
      {
        v73 = *a2;
        v74 = *(a2 + 8);
        sub_22CE0(__p, &v73);
      }

      buf = *a2;
      v37 = AudioObjectSetPropertyData(v29, &buf, a3, a4, 4u, &inData);
      if (v37)
      {
        v38 = sub_5544(14);
        if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v37);
          v71 = *a2;
          v72 = *(a2 + 8);
          sub_22CE0(&v73, &v71);
        }

        goto LABEL_118;
      }

      v39 = sub_32A0F0(&v76);
      if (!HIDWORD(v39) && inData == v39)
      {
        v40 = sub_5544(14);
        if ((*(v40 + 8) & 1) == 0)
        {
          goto LABEL_118;
        }

        v33 = *v40;
        if (!*v40 || !os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_118;
        }

        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v84 = 1024;
        v85 = 322;
        v86 = 1024;
        LODWORD(v87) = v29;
        goto LABEL_62;
      }

      v41 = 2000;
LABEL_84:
      v42 = sub_32A0F0(&v76);
      if (HIDWORD(v42))
      {
        goto LABEL_118;
      }

      if (inData == v42)
      {
        v51 = sub_5544(14);
        if ((*(v51 + 8) & 1) != 0 && *v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
        {
          v73 = *a2;
          v74 = *(a2 + 8);
          sub_22CE0(__p, &v73);
        }

        goto LABEL_118;
      }

      if (v41 <= 0)
      {
        v52 = sub_5544(14);
        if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
        {
          v73 = *a2;
          v74 = *(a2 + 8);
          sub_22CE0(__p, &v73);
        }

        goto LABEL_118;
      }

      v43.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v44 = sub_5544(14);
      if (*(v44 + 8))
      {
        v45 = *v44;
        if (*v44)
        {
          if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315906;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v84 = 1024;
            v85 = 354;
            v86 = 2080;
            v87 = "with timeout";
            v88 = 1024;
            v89 = v29;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
          }
        }
      }

      sub_27A4();
      LOBYTE(__p[0]) = sub_2E6B08();
      *&buf.mSelector = &v91;
      LOBYTE(buf.mElement) = 1;
      std::mutex::lock(&v91);
      v46.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
      while (1)
      {
        if ((v82 & 1) != 0 || v46.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
        {
LABEL_108:
          if (LOBYTE(buf.mElement) == 1)
          {
            std::mutex::unlock(*&buf.mSelector);
          }

          sub_1DB4C4(__p);
          v41 += (std::chrono::system_clock::now().__d_.__rep_ - v43.__d_.__rep_) / -1000;
          goto LABEL_84;
        }

        v47.__d_.__rep_ = v46.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v47.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_107:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v46.__d_.__rep_)
        {
          goto LABEL_108;
        }
      }

      std::chrono::steady_clock::now();
      v48.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v48.__d_.__rep_)
      {
        v49 = 0;
        goto LABEL_105;
      }

      if (v48.__d_.__rep_ < 1)
      {
        if (v48.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v49 = 0x8000000000000000;
          goto LABEL_105;
        }
      }

      else if (v48.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v49 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_103;
      }

      v49 = 1000 * v48.__d_.__rep_;
LABEL_103:
      if (v49 > (v47.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v50.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_106:
        std::condition_variable::__do_timed_wait(&v90, &buf, v50);
        std::chrono::steady_clock::now();
        goto LABEL_107;
      }

LABEL_105:
      v50.__d_.__rep_ = v49 + v47.__d_.__rep_;
      goto LABEL_106;
    }

    v34 = sub_5544(14);
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v90.__cv_.__sig = *a2;
      *v90.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v91, &v90);
    }
  }

  else
  {
    v23 = sub_5544(18);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "Device_HPMic_Aspen.cpp";
      v84 = 1024;
      v85 = 419;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown property address using selector kAppleEmbeddedAudio_DevicePropertyInputEnableDevice. Ignoring.", &buf, 0x12u);
    }
  }
}

void sub_32A00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v24 - 216));
  std::mutex::~mutex((v24 - 168));
  _Unwind_Resume(a1);
}

unint64_t sub_32A0F0(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p, &v9);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_32A29C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_32A2BC(uint64_t a1, unsigned int *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = a2[2];
      sub_22CE0(&__p, &v33);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = a2[2];
      sub_22CE0(&__p, &v33);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  if (!a6)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v34 = a2[2];
      sub_22CE0(&__p, &v33);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 > 1685483629)
  {
    if (v12 == 1685483630)
    {
      v18 = sub_5544(18);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, *a2);
        v20 = v36 >= 0 ? &__p : *&__p.mSelector;
        *buf = 136315650;
        *&buf[4] = "Device_HPMic_Aspen.cpp";
        v38 = 1024;
        v39 = 320;
        v40 = 2080;
        v41 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property '%s' is write-only", buf, 0x1Cu);
        if (v36 < 0)
        {
          operator delete(*&__p.mSelector);
        }
      }

      *a5 = 0;
    }

    else
    {
      if (v12 != 1835103844)
      {
LABEL_13:

        sub_5C0D8(a1, a2, a3, a4, a5, a6);
        return;
      }

      v15 = *a5;
      if (v15 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v29 = sub_5544(14);
        if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          v33 = *a2;
          v34 = a2[2];
          sub_22CE0(&__p, &v33);
        }

        v30 = __cxa_allocate_exception(0x10uLL);
        *v30 = &off_6DDDD0;
        v30[2] = 561211770;
      }

      __p.mSelector = 1986290211;
      *&__p.mScope = *(a2 + 1);
      LODWORD(v33) = 16;
      sub_5C0D8(a1, &__p, 0, 0, &v33, buf);
      v16 = *buf;
      *a6 = v16;
    }
  }

  else
  {
    if (v12 != 1064725619)
    {
      if (v12 == 1634759542)
      {
        v13 = *a5;
        if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v27 = sub_5544(14);
          if (*v27)
          {
            if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
            {
              v33 = *a2;
              v34 = a2[2];
              sub_22CE0(&__p, &v33);
            }
          }

          v28 = __cxa_allocate_exception(0x10uLL);
          *v28 = &off_6DDDD0;
          v28[2] = 561211770;
        }

        v14 = a2[1];
        *buf = 1987013732;
        *&buf[4] = v14;
        *&buf[8] = 0;
        (*(*a1 + 40))(a1, buf, a3, a4, a5, a6);
        return;
      }

      goto LABEL_13;
    }

    v17 = *a5;
    if (v17 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v31 = sub_5544(14);
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        v33 = *a2;
        v34 = a2[2];
        sub_22CE0(&__p, &v33);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = &off_6DDDD0;
      v32[2] = 561211770;
    }

    *a6 = 1;
  }
}

void sub_32AD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_32AD9C(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_27:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v15);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_27;
  }

  mSelector = a2->mSelector;
  result = 4;
  if (a2->mSelector <= 1835103843)
  {
    if (mSelector == 1064725619 || mSelector == 1634759542)
    {
      return result;
    }

    v10 = 1685483630;
  }

  else
  {
    if (mSelector > 1986290210)
    {
      if (mSelector == 1987013732)
      {
        return result;
      }

      if (mSelector == 1986290211)
      {
        return 16;
      }

      goto LABEL_16;
    }

    if (mSelector == 1835103844)
    {
      return result;
    }

    v10 = 1986229104;
  }

  if (mSelector == v10)
  {
    return result;
  }

LABEL_16:

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_32B12C(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  v3 = 1;
  if (a2->mSelector <= 1685483629)
  {
    if (mSelector != 1064725619)
    {
      if (mSelector != 1634759542)
      {
        return sub_BE734(a1, a2);
      }

      return v3;
    }

    return 0;
  }

  if (mSelector == 1685483630)
  {
    return v3;
  }

  if (mSelector == 1835103844)
  {
    return 0;
  }

  return sub_BE734(a1, a2);
}

BOOL sub_32B198(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    goto LABEL_11;
  }

  result = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector == 1685483630 || mSelector == 1835103844)
    {
      return result;
    }

LABEL_11:
    sub_4DFC0(a1);
    return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
  }

  if (mSelector == 1064725619)
  {
    return a2->mScope == 1869968496;
  }

  if (mSelector != 1634759542)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_32B29C(uint64_t a1)
{
  sub_32B2D4(a1);

  operator delete();
}

uint64_t sub_32B2D4(uint64_t a1)
{
  *a1 = off_6C1D20;
  v2 = *(a1 + 1000);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::mutex::~mutex((a1 + 936));
  v3 = *(a1 + 912);
  if (v3)
  {
    *(a1 + 920) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 880);
  *(a1 + 880) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_13A300(a1 + 536);

  return sub_4B2820(a1);
}