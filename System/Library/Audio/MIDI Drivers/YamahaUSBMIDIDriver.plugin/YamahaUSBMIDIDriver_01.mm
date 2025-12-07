uint64_t sub_F988(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_F9E8((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_F9E8(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1514();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_FA3C(uint64_t a1)
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

void sub_FB44(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_8568(a1, a2);
  if (v2)
  {
    sub_8568(v3, v4);
    v5 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "USBMIDIDevice.cpp";
      v8 = 1024;
      v9 = 100;
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d =====> NOTICE: USB I/O destructive tracing at level %d <=====", &v6, 0x18u);
    }
  }
}

uint64_t sub_FC80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28A98;
  a2[1] = v2;
  return result;
}

uint64_t sub_FD2C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28AE0;
  a2[1] = v2;
  return result;
}

uint64_t sub_FDD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28B28;
  a2[1] = v2;
  return result;
}

void *sub_FEDC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_FF20();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_FF20()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_FFF0(void *a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28BD8;
  sub_100E8((a1 + 3), a2, a3, a4);
}

void sub_1006C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100E8(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10164(a1, v4, v6, *a4);
}

void sub_1014C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10164(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  sub_5E9C((a1 + 16));
  *(a1 + 8) = 1;
  *a1 = off_28C10;
  v8 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  sub_5EEC((a1 + 16), a2, a4);
}

void sub_101F0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_5EAC(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_10210(void *a1)
{
  *a1 = off_28C10;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_5EAC((a1 + 2));
  return a1;
}

void sub_10264(void *a1)
{
  *a1 = off_28C10;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_5EAC((a1 + 2));

  operator delete();
}

uint64_t sub_102D8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_103A0(void *a1, __int128 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28C38;
  sub_1047C((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1041C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1047C(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v6 = *a2;
  *a2 = 0uLL;
  sub_1A98C(a1, &v6, a3, a4);
  if (*(&v6 + 1))
  {
    sub_43D0(*(&v6 + 1));
  }

  return a1;
}

void sub_104C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_43D0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_104E0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_43D0(v5);
      }
    }
  }
}

void sub_10568(void *a1, uint64_t a2, MIDIDeviceListRef a3, uint64_t a4)
{
  v5 = sub_77DC(a1, a4);
  *v5 = off_28C70;
  v5[8] = a2;
  v5[9] = 0;
  v5[10] = 0;
  v5[11] = 0;
  *(v5 + 48) = 0;
  v6[0] = off_28CB0;
  v6[1] = v5;
  v6[3] = v6;
  sub_8440(@"forcemidi1fallback", @"com.apple.coremidi", sub_9F4, v6);
}

void sub_107DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_FA3C(va);
  sub_E6A4(&a9);
  sub_2478(v17, v19);
  _Unwind_Resume(a1);
}

void sub_1081C(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C150, memory_order_acquire) & 1) == 0)
  {
    sub_1FB0C();
  }
}

void *sub_10850(void *a1, uint64_t a2)
{
  *a1 = off_28C70;
  sub_1081C(a1, a2);
  v3 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 136315650;
    *&v6[4] = "USBMIDIDeviceManager.cpp";
    v7 = 1024;
    v8 = 63;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDeviceManager(%p)::~USBMIDIDeviceManager()", v6, 0x1Cu);
  }

  *v6 = a1 + 9;
  sub_E6A4(v6);
  sub_2478(a1, v4);
  return a1;
}

void sub_10954(void *a1, uint64_t a2)
{
  sub_10850(a1, a2);

  operator delete();
}

uint64_t sub_1098C(uint64_t a1, uint64_t a2)
{
  sub_1081C(a1, a2);
  v4 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "USBMIDIDeviceManager.cpp";
    v8 = 1024;
    v9 = 72;
    v10 = 2048;
    v11 = a1;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDeviceManager(%p)::MatchDevice(%p)", &v6, 0x26u);
  }

  return (*(**(a1 + 64) + 120))(*(a1 + 64), a2);
}

uint64_t sub_10A94(uint64_t a1, uint64_t a2)
{
  sub_1081C(a1, a2);
  v4 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "USBMIDIDeviceManager.cpp";
    v8 = 1024;
    v9 = 84;
    v10 = 2048;
    v11 = a1;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDeviceManager(%p)::UseDevice(%p)", &v6, 0x26u);
  }

  return sub_10B80(a1, a2, 0);
}

uint64_t sub_10B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5FF8(a2);
  v91 = a3;
  if (a3)
  {
    v5 = sub_7234(a3);
    v106 = 0;
    v105 = 0;
    v104 = 0;
    if (v5)
    {
      v6 = v5;
      if (sub_7640(a3) && (v7 = (*(*v6 + 176))(v6, 1), !v7))
      {
        sub_1081C(v7, v8);
        v9 = qword_2C148;
        if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "USBMIDIDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 152;
          v88 = 1;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d      Using MIDI 2.0 alt setting...", buf, 0x12u);
        }

        else
        {
          v88 = 1;
        }

        v87 = 0;
      }

      else
      {
        v87 = 0;
        v88 = 0;
      }
    }

    else
    {
      v87 = 1;
      v88 = 0;
    }
  }

  else
  {
    v106 = 0;
    v105 = 0;
    v87 = 1;
    v88 = 0;
    v104 = 0;
  }

  v10 = (*(*v4 + 104))(v4, &v105 + 2);
  v12 = v10;
  if (v10)
  {
    goto LABEL_139;
  }

  v10 = (*(*v4 + 112))(v4, &v105);
  v12 = v10;
  if (v10)
  {
    goto LABEL_139;
  }

  sub_1081C(v10, v11);
  v13 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    *&buf[4] = "USBMIDIDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 160;
    *&buf[18] = 1024;
    *&buf[20] = HIWORD(v105);
    *&buf[24] = 1024;
    *&buf[26] = v105;
    *&buf[30] = 1024;
    v114.i32[0] = HIWORD(v105);
    v114.i16[2] = 1024;
    *(&v114.i32[1] + 2) = v105;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDeviceManager::UseDeviceAndInterface() vendor/product %d %d / 0x%04x 0x%04x", buf, 0x2Au);
  }

  v14 = HIWORD(v105);
  v15 = v105;
  if ((*(*v4 + 288))(v4, &v106))
  {
    cf2 = 0;
  }

  else
  {
    cf2 = sub_6810(a2, v106);
  }

  v12 = (*(*v4 + 160))(v4, &v104);
  if (v12)
  {
    goto LABEL_137;
  }

  v16 = MIDIGetDriverDeviceList((*(a1 + 64) + 8));
  NumberOfDevices = MIDIDeviceListGetNumberOfDevices(v16);
  v89 = 0;
  v17 = v15 | (v14 << 16);
  if (cf2)
  {
    v18 = 1;
  }

  else
  {
    v18 = 3;
  }

  if (cf2)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  while (NumberOfDevices < 1)
  {
LABEL_57:
    if (v19++ >= v18)
    {
      v30 = MIDIDeviceListDispose(v16);
      goto LABEL_64;
    }
  }

  v20 = 0;
  while (1)
  {
    v96[0] = 0;
    outValue = 0;
    v102 = 0;
    value = 0;
    Device = MIDIDeviceListGetDevice(v16, v20);
    if (MIDIObjectGetIntegerProperty(Device, @"USBVendorProduct", &outValue) || outValue != v17)
    {
      goto LABEL_56;
    }

    if (v19 != 3)
    {
      break;
    }

    if (!MIDIObjectGetIntegerProperty(Device, kMIDIPropertyOffline, &value) && value)
    {
      goto LABEL_59;
    }

LABEL_56:
    if ((NumberOfDevices & 0x7FFFFFFF) == ++v20)
    {
      goto LABEL_57;
    }
  }

  if (v19 == 2)
  {
    if (!MIDIObjectGetIntegerProperty(Device, @"USBLocationID", v96) && v96[0] == v104)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (v19 != 1)
  {
    goto LABEL_56;
  }

  str[0] = 0;
  if (MIDIObjectGetStringProperty(Device, @"SerialNumber", str))
  {
    *buf = 0;
    if (!MIDIObjectGetStringProperty(Device, kMIDIPropertyName, buf))
    {
      v22 = CFEqual(*buf, @"USB MIDI Device") == 0;
      CFRelease(*buf);
      if (!v22)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_56;
  }

  if (!CFEqual(str[0], cf2))
  {
    CFRelease(str[0]);
    goto LABEL_56;
  }

  IntegerProperty = MIDIObjectGetIntegerProperty(Device, @"pluralSerial", &v102);
  if (!IntegerProperty && v102)
  {
    sub_1081C(IntegerProperty, v24);
    v25 = qword_2C148;
    if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d Device is known to have a plural serial number.", buf, 0x12u);
    }

    goto LABEL_55;
  }

  v26 = MIDIObjectGetIntegerProperty(Device, kMIDIPropertyOffline, &value);
  if (!(v26 | value))
  {
    sub_1081C(v26, v27);
    v28 = qword_2C148;
    if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 211;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%25s:%-5d WARNING - device has a plural serial number.", buf, 0x12u);
    }

    MIDIObjectSetIntegerProperty(Device, @"pluralSerial", 1);
    v89 = 1;
    goto LABEL_55;
  }

  if (v18 == 3)
  {
LABEL_55:
    CFRelease(str[0]);
    v18 = 3;
    goto LABEL_56;
  }

  CFRelease(str[0]);
LABEL_59:
  MIDIDeviceListDispose(v16);
  Entity = MIDIDeviceGetEntity(Device, 0);
  *buf = 0;
  v30 = MIDIObjectGetIntegerProperty(Entity, kMIDIPropertyUMPActiveGroupBitmap, buf);
  if ((v88 ^ (v30 != 0)))
  {
    if (!HIWORD(v105) || HIWORD(v105) == 6666)
    {
      v33 = Device;
      goto LABEL_65;
    }

    if (v88)
    {
      v49 = sub_11EF8(Device);
    }

    else
    {
      v49 = sub_11D78(Device);
    }

    sub_1081C(v49, v50);
    v82 = qword_2C148;
    if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "%25s:%-5d      existing device found", buf, 0x12u);
    }

    if (v87 & 1) != 0 || (v83 = sub_7640(v91), (v83))
    {
      (*(**(a1 + 64) + 136))(*(a1 + 64), Device, a2, v91);
      goto LABEL_106;
    }

    v12 = 3758097101;
    sub_1081C(v83, v84);
    v86 = qword_2C148;
    if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 345;
      v76 = "%25s:%-5d      interface could not be opened (already in use by another driver?)";
      v77 = v86;
      v78 = 18;
LABEL_141:
      _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, v76, buf, v78);
    }

    return v12;
  }

  v30 = MIDISetupRemoveDevice(Device);
LABEL_64:
  v33 = 0;
LABEL_65:
  sub_1081C(v30, v31);
  v34 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 282;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "%25s:%-5d      creating new device", buf, 0x12u);
  }

  LODWORD(Device) = (*(**(a1 + 64) + 128))(*(a1 + 64), a2, v91);
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(Device);
  v114 = 0u;
  memset(buf, 0, sizeof(buf));
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  *str = 0u;
  *v96 = 0u;
  v97 = 0u;
  value = 0;
  if (v33)
  {
    v36 = NumberOfEntities;
    MIDIObjectGetIntegerProperty(v33, kMIDIPropertyUniqueID, &value);
    v37 = MIDIDeviceGetNumberOfEntities(v33);
    if (v37 == v36)
    {
      outValue = 0;
      if (v36)
      {
        v39 = 0;
        propertyID = v36;
        while (1)
        {
          v40 = MIDIDeviceGetEntity(v33, v39);
          v41 = MIDIDeviceGetEntity(Device, v39);
          MIDIObjectGetIntegerProperty(v40, kMIDIPropertyUniqueID, &outValue);
          sub_1207C(buf, &outValue);
          NumberOfSources = MIDIEntityGetNumberOfSources(v40);
          NumberOfDestinations = MIDIEntityGetNumberOfDestinations(v40);
          v44 = MIDIEntityGetNumberOfSources(v41);
          v37 = MIDIEntityGetNumberOfDestinations(v41);
          if (NumberOfSources != v44 || NumberOfDestinations != v37)
          {
            break;
          }

          if (NumberOfSources)
          {
            for (i = 0; i != NumberOfSources; ++i)
            {
              Source = MIDIEntityGetSource(v40, i);
              MIDIObjectGetIntegerProperty(Source, kMIDIPropertyUniqueID, &outValue);
              sub_1207C(str, &outValue);
            }
          }

          if (NumberOfDestinations)
          {
            for (j = 0; j != NumberOfDestinations; ++j)
            {
              Destination = MIDIEntityGetDestination(v40, j);
              MIDIObjectGetIntegerProperty(Destination, kMIDIPropertyUniqueID, &outValue);
              sub_1207C(v96, &outValue);
            }
          }

          if (++v39 == propertyID)
          {
            goto LABEL_84;
          }
        }

        value = 0;
      }
    }

LABEL_84:
    sub_1081C(v37, v38);
    v51 = qword_2C148;
    if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
    {
      outValue = 136315394;
      v108 = "USBMIDIDeviceManager.cpp";
      v109 = 1024;
      v110 = 319;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "%25s:%-5d      purging stale USB MIDI cache for device...", &outValue, 0x12u);
    }

    MIDISetupRemoveDevice(v33);
    if (value)
    {
      MIDIObjectSetIntegerProperty(Device, kMIDIPropertyUniqueID, value);
      for (k = 0; MIDIDeviceGetNumberOfEntities(Device) > k; ++k)
      {
        v53 = MIDIDeviceGetEntity(Device, k);
        MIDIObjectSetIntegerProperty(v53, kMIDIPropertyUniqueID, *(*(*&buf[8] + ((v114.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v114.i16[0] & 0x3FF)));
        v114 = vaddq_s64(v114, xmmword_21DF0);
        if (v114.i64[0] >= 0x800uLL)
        {
          operator delete(**&buf[8]);
          *&buf[8] += 8;
          v114.i64[0] -= 1024;
        }

        for (m = 0; MIDIEntityGetNumberOfSources(v53) > m; ++m)
        {
          v55 = MIDIEntityGetSource(v53, m);
          MIDIObjectSetIntegerProperty(v55, kMIDIPropertyUniqueID, (*(&str[1]->isa + ((v101.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)))[v101.i16[0] & 0x3FF]);
          v101 = vaddq_s64(v101, xmmword_21DF0);
          if (v101.i64[0] >= 0x800uLL)
          {
            operator delete(str[1]->isa);
            str[1] = (str[1] + 8);
            v101.i64[0] -= 1024;
          }
        }

        for (n = 0; MIDIEntityGetNumberOfDestinations(v53) > n; ++n)
        {
          v57 = MIDIEntityGetDestination(v53, n);
          MIDIObjectSetIntegerProperty(v57, kMIDIPropertyUniqueID, *(*(*&v96[2] + ((v98.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v98.i16[0] & 0x3FF)));
          v98 = vaddq_s64(v98, xmmword_21DF0);
          if (v98.i64[0] >= 0x800uLL)
          {
            operator delete(**&v96[2]);
            *&v96[2] += 8;
            v98.i64[0] -= 1024;
          }
        }
      }
    }
  }

  v58 = MIDISetupAddDevice(Device);
  v12 = v58;
  if (v58)
  {
    sub_128D0(v96);
    sub_128D0(str);
    sub_128D0(buf);
  }

  else
  {
    sub_1081C(v58, v59);
    v60 = qword_2C148;
    if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
    {
      outValue = 136315650;
      v108 = "USBMIDIDeviceManager.cpp";
      v109 = 1024;
      v110 = 341;
      v111 = 2048;
      v112 = Device;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "%25s:%-5d      device 0x%lx added to setup", &outValue, 0x1Cu);
    }

    sub_128D0(v96);
    sub_128D0(str);
    sub_128D0(buf);
LABEL_106:
    MIDIObjectSetIntegerProperty(Device, @"USBVendorProduct", v17);
    v61 = MIDIObjectSetIntegerProperty(Device, @"USBLocationID", v104);
    if (cf2)
    {
      v61 = MIDIObjectSetStringProperty(Device, @"SerialNumber", cf2);
    }

    if (v89)
    {
      sub_1081C(v61, v62);
      v63 = qword_2C148;
      if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 358;
        _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "%25s:%-5d      setting kMIDIPropertyPluralSerialNumber property on new device", buf, 0x12u);
      }

      MIDIObjectSetIntegerProperty(Device, @"pluralSerial", 1);
    }

    v96[0] = 0;
    MIDIObjectGetIntegerProperty(Device, @"UMP Enabled", v96);
    v64 = (*(**(a1 + 64) + 192))(str);
    if (str[0])
    {
      if (!v91 || !v96[0])
      {
        BYTE3(str[0][15].info) = 0;
        sub_1081C(v64, v11);
        v72 = qword_2C148;
        v70 = os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO);
        if (v70)
        {
          *buf = 136315394;
          *&buf[4] = "USBMIDIDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 388;
          v73 = "%25s:%-5d      Default pipe protocol will be legacy MIDI 1.0.";
          goto LABEL_126;
        }

LABEL_127:
        v12 = 0;
        goto LABEL_128;
      }

      sub_1081C(v64, v11);
      v65 = qword_2C148;
      v66 = os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO);
      if (v66)
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 370;
        _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "%25s:%-5d      UMP is selected on this midiDevice; default pipe protocol will be UMP.", buf, 0x12u);
      }

      v68 = str[0];
      BYTE3(str[0][15].info) = 1;
      if (*(a1 + 97) == 1)
      {
        BYTE5(v68[15].info) = 1;
      }

      if (*(a1 + 96))
      {
        sub_1081C(v66, v67);
        v69 = qword_2C148;
        v70 = os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO);
        if (v70)
        {
          *buf = 136315394;
          *&buf[4] = "USBMIDIDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 383;
          _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "%25s:%-5d      [AQAMIDI] forcemidi1fallback defaults is set. Not changing alt setting.", buf, 0x12u);
        }

        v12 = 0;
        BYTE4(str[0][15].info) = 1;
        goto LABEL_128;
      }

      v80 = sub_7234(v91);
      if (v80)
      {
        v80 = (*(*v80 + 176))(v80, 1);
        v12 = v80;
        if (!v80)
        {
          sub_1081C(v80, v81);
          v72 = qword_2C148;
          v70 = os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO);
          if (v70)
          {
            *buf = 136315394;
            *&buf[4] = "USBMIDIDeviceManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 378;
            v73 = "%25s:%-5d      [AQAMIDI] MIDI 2.0 alt setting selected, so device will use Universal MIDI Packets (UMP) rather than USB MIDI 1.0 from now.";
LABEL_126:
            _os_log_impl(&dword_0, v72, OS_LOG_TYPE_INFO, v73, buf, 0x12u);
          }

          goto LABEL_127;
        }
      }

      else
      {
        v12 = 0;
      }

      sub_1081C(v80, v81);
      v85 = qword_2C148;
      v70 = os_log_type_enabled(qword_2C148, OS_LOG_TYPE_ERROR);
      if (v70)
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 380;
        _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unable to set MIDI 2.0 alt setting!", buf, 0x12u);
      }

LABEL_128:
      sub_1081C(v70, v71);
      v74 = qword_2C148;
      if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 390;
        *&buf[18] = 2048;
        *&buf[20] = str[0];
        _os_log_impl(&dword_0, v74, OS_LOG_TYPE_INFO, "%25s:%-5d      initializing USB MIDI device %p", buf, 0x1Cu);
      }

      if ((*(str[0]->isa + 2))(str[0]))
      {
        if (*(a1 + 80) == *(a1 + 72))
        {
          sub_12104((a1 + 72), 4uLL);
        }

        sub_94D4((a1 + 72), str);
      }

      else
      {
        sub_1FB6C(str, v12, buf);
        v12 = *buf;
      }
    }

    else
    {
      v12 = 4294956451;
    }

    if (str[1])
    {
      sub_43D0(str[1]);
    }
  }

LABEL_137:
  v10 = cf2;
  if (cf2)
  {
    CFRelease(cf2);
  }

LABEL_139:
  sub_1081C(v10, v11);
  v75 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "USBMIDIDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 403;
    *&buf[18] = 1024;
    *&buf[20] = v12;
    v76 = "%25s:%-5d [-] USBMIDIDeviceManager::UseDeviceAndInterface() = 0x%x";
    v77 = v75;
    v78 = 24;
    goto LABEL_141;
  }

  return v12;
}

void sub_11CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_43D0(a28);
  }

  _Unwind_Resume(exception_object);
}

ItemCount sub_11D78(MIDIDeviceRef a1)
{
  result = MIDIDeviceGetNumberOfEntities(a1);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      Entity = MIDIDeviceGetEntity(a1, i);
      NumberOfSources = MIDIEntityGetNumberOfSources(Entity);
      if (NumberOfSources < MIDIEntityGetNumberOfDestinations(Entity))
      {
        outValue = 0;
        IntegerProperty = MIDIObjectGetIntegerProperty(Entity, @"Cable", &outValue);
        if (i != outValue)
        {
          sub_1081C(IntegerProperty, v7);
          v8 = qword_2C148;
          if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            v11 = "USBMIDIDeviceManager.cpp";
            v12 = 1024;
            v13 = 100;
            v14 = 1024;
            v15 = outValue;
            v16 = 1024;
            v17 = i;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d replacing bad cable number %d with entity (cable) number %d", buf, 0x1Eu);
          }

          MIDIObjectSetIntegerProperty(Entity, @"Cable", i);
        }
      }

      result = MIDIDeviceGetNumberOfEntities(a1);
    }
  }

  return result;
}

uint64_t sub_11EF8(MIDIDeviceRef a1)
{
  result = sub_12658(a1);
  if (v3)
  {
    v4 = result;
    value = 0;
    v5 = kMIDIPropertyAssociatedEndpoint;
    result = MIDIObjectGetIntegerProperty(result, kMIDIPropertyAssociatedEndpoint, &value);
    if (result)
    {
      sub_1081C(result, v6);
      v7 = qword_2C148;
      if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_INFO))
      {
        value = 136315394;
        v11 = "USBMIDIDeviceManager.cpp";
        v12 = 1024;
        v13 = 117;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d      updating cached UMP Endpoint properties", &value, 0x12u);
      }

      value = 0;
      if (!MIDIObjectGetIntegerProperty(v4, kMIDIPropertyUniqueID, &value))
      {
        MIDIObjectSetIntegerProperty(HIDWORD(v4), v5, value);
      }

      value = 0;
      if (!MIDIObjectGetIntegerProperty(HIDWORD(v4), kMIDIPropertyUniqueID, &value))
      {
        MIDIObjectSetIntegerProperty(v4, v5, value);
      }

      NumberOfEntities = MIDIDeviceGetNumberOfEntities(a1);
      Entity = MIDIDeviceGetEntity(a1, NumberOfEntities - 1);
      return MIDIObjectSetIntegerProperty(Entity, kMIDIPropertyUMPActiveGroupBitmap, 15);
    }
  }

  return result;
}

void sub_1207C(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_129CC(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void **sub_12104(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_E6F8(result, a2);
    }

    sub_1280();
  }

  return result;
}

void sub_121A0(uint64_t a1, io_registry_entry_t entry)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"locationID", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = CFGetTypeID(CFProperty);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      v7 = CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr) == 0;
      CFRelease(v5);
      if (v7)
      {
        return;
      }

      sub_1081C(v8, v9);
      v10 = qword_2C148;
      v11 = os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        *buf = 136315650;
        v34 = "USBMIDIDeviceManager.cpp";
        v35 = 1024;
        v36 = 438;
        v37 = 1024;
        v38 = entry;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] USBMIDIDeviceManager::ServiceTerminated(0x%x)", buf, 0x18u);
      }

      v31 = a1;
      v13 = *(a1 + 72);
      v30 = a1 + 72;
      v14 = *(a1 + 80);
      if (v13 == v14)
      {
        goto LABEL_39;
      }

      v15 = *(a1 + 80);
      v16 = valuePtr;
      while (1)
      {
        v17 = *v13;
        v18 = v13[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = *(*(v17 + 88) + 16);
        if (v19 == v16)
        {
          sub_1081C(v11, v12);
          v20 = qword_2C148;
          if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v34 = "USBMIDIDeviceManager.cpp";
            v35 = 1024;
            v36 = 442;
            v37 = 1024;
            v38 = entry;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d      shutting down removed device 0x%X\n", buf, 0x18u);
          }

          v11 = MIDIObjectSetIntegerProperty(*(v17 + 8), kMIDIPropertyOffline, 1);
        }

        if (v18)
        {
          sub_43D0(v18);
        }

        if (v19 == v16)
        {
          break;
        }

        v13 += 2;
        if (v13 == v14)
        {
          goto LABEL_40;
        }
      }

      if (v13 == v14)
      {
        goto LABEL_40;
      }

      v21 = v13 + 2;
      if (v13 + 2 == v14)
      {
LABEL_39:
        v15 = v13;
      }

      else
      {
        v15 = v13;
        do
        {
          v22 = *v21;
          v23 = v21[1];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = *(*(v22 + 88) + 16);
          if (v24 == v16)
          {
            sub_1081C(v11, v12);
            v25 = qword_2C148;
            if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v34 = "USBMIDIDeviceManager.cpp";
              v35 = 1024;
              v36 = 442;
              v37 = 1024;
              v38 = entry;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d      shutting down removed device 0x%X\n", buf, 0x18u);
            }

            v11 = MIDIObjectSetIntegerProperty(*(v22 + 8), kMIDIPropertyOffline, 1);
          }

          if (v23)
          {
            sub_43D0(v23);
          }

          if (v24 != v16)
          {
            v26 = *v21;
            *v21 = 0;
            v21[1] = 0;
            v11 = *(v15 + 1);
            *v15 = v26;
            if (v11)
            {
              sub_43D0(v11);
            }

            ++v15;
          }

          v21 += 2;
        }

        while (v21 != v14);
      }

LABEL_40:
      v27 = sub_125D4(v30, v15, *(v31 + 80));
      sub_1081C(v27, v28);
      v29 = qword_2C148;
      if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v34 = "USBMIDIDeviceManager.cpp";
        v35 = 1024;
        v36 = 447;
        v37 = 1024;
        v38 = entry;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] USBMIDIDeviceManager::ServiceTerminated(0x%x)", buf, 0x18u);
      }

      return;
    }

    CFRelease(v5);
  }
}

void sub_125B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_43D0(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_125D4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_1270C(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_43D0(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

unint64_t sub_12658(MIDIDeviceRef a1)
{
  if (MIDIDeviceGetNumberOfEntities(a1))
  {
    NumberOfEntities = MIDIDeviceGetNumberOfEntities(a1);
    Entity = MIDIDeviceGetEntity(a1, NumberOfEntities - 1);
    NumberOfSources = MIDIEntityGetNumberOfSources(Entity);
    NumberOfDestinations = MIDIEntityGetNumberOfDestinations(Entity);
    v6 = 0;
    v7 = 0;
    if (NumberOfSources && NumberOfDestinations)
    {
      MIDIEntityGetNumberOfSources(Entity);
      Source = MIDIEntityGetSource(Entity, 0);
      MIDIEntityGetNumberOfDestinations(Entity);
      v7 = Source & 0xFFFFFF00 | (MIDIEntityGetDestination(Entity, 0) << 32);
      v6 = Source;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

__int128 *sub_1270C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_43D0(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_127E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28CB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_12894(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28CF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_128D0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1297C(a1);
}

uint64_t sub_1297C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_129CC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_12FC8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_12BA0(a1, &v9);
}

void sub_12B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_12BA0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_12FC8(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_12CA8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_12FC8(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_12DB4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_12FC8(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_12EBC(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_12FC8(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_12FC8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1394();
}

CFStringRef sub_13010(uint64_t a1, const __CFString *a2)
{
  v4 = sub_5FF8(a1);
  v5 = a2;
  if (v4)
  {
    v16 = 0;
    v6 = (*(*v4 + 272))(v4, &v16);
    if (v6)
    {
      v8 = v6;
      sub_131FC(v6, v7);
      v9 = qword_2C158;
      v5 = a2;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "USBMIDIDriverBase.cpp";
        v19 = 1024;
        v20 = 79;
        v21 = 1024;
        v22 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  USBGetManufacturerStringIndex() returned error 0x%x", buf, 0x18u);
        v5 = a2;
      }
    }

    else
    {
      v5 = sub_6810(a1, v16);
    }

    v10 = (*(*v4 + 280))(v4, &v16);
    if (v10)
    {
      v12 = v10;
      sub_131FC(v10, v11);
      v13 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "USBMIDIDriverBase.cpp";
        v19 = 1024;
        v20 = 84;
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  USBGetProductStringIndex() returned error 0x%x", buf, 0x18u);
      }
    }

    else
    {
      sub_6810(a1, v16);
    }
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return a2;
  }
}

void sub_131FC(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C160, memory_order_acquire) & 1) == 0)
  {
    sub_1FC54();
  }
}

double sub_1322C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 448))(a1, 0, 0);
  if (v3)
  {
    v5 = v3;
    v6 = *v3;
    if (*v3)
    {
      if (v6 >= 8)
      {
        operator new();
      }

      v12[23] = 3 * v6;
      bzero(v12, 3 * v6);
      v12[3 * v6] = 0;
      if (v12[23] >= 0)
      {
        v9 = v12;
      }

      else
      {
        v9 = *v12;
      }

      v10 = v5;
      do
      {
        v11 = *v10++;
        *v9 = a0123456789abcd_0[v11 >> 4];
        v9[1] = a0123456789abcd_0[v11 & 0xF];
        v9[2] = 32;
        v9 += 3;
        --v6;
      }

      while (v6);
    }

    else
    {
      v12[23] = 0;
      v12[0] = 0;
    }

    *a2 = v5;
    result = *v12;
    *(a2 + 8) = *v12;
    *(a2 + 24) = *&v12[16];
  }

  else
  {
    sub_131FC(0, v4);
    v7 = qword_2C158;
    if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "USBMIDIDriverBase.cpp";
      *&v12[12] = 1024;
      *&v12[14] = 99;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] findDescriptors() - no interface descriptor found", v12, 0x12u);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

__n128 sub_133F8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6)
{
  if (!a1)
  {
    return result;
  }

  v6 = a2;
  if (!a2)
  {
    return result;
  }

  v7 = a1;
  sub_131FC(a1, a2);
  v8 = &unk_2C000;
  v9 = qword_2C158;
  v10 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
  if (v10)
  {
    *buf = 136315394;
    v128 = "USBMIDIDriverBase.cpp";
    v129 = 1024;
    v130 = 108;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::ParseDescriptors()", buf, 0x12u);
  }

  v117 = 0;
  v116 = -1;
  v126 = 0;
  v113 = v7;
  do
  {
    v12 = *v6;
    if (*v6)
    {
      if (v12 >= 8)
      {
        operator new();
      }

      v123 = 3 * v12;
      bzero(&__p, 3 * v12);
      *(&__p + 3 * v12) = 0;
      p_p = __p;
      if (v123 >= 0)
      {
        p_p = &__p;
      }

      v14 = v6;
      do
      {
        v15 = *v14++;
        *p_p = a0123456789abcd_0[v15 >> 4];
        p_p[1] = a0123456789abcd_0[v15 & 0xF];
        p_p[2] = 32;
        p_p += 3;
        --v12;
      }

      while (v12);
    }

    else
    {
      v123 = 0;
      LOBYTE(__p) = 0;
    }

    v16 = v6[1];
    v17 = v6[2];
    sub_131FC(v10, v11);
    v18 = *(v8 + 43);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v19)
    {
      v21 = &__p;
      if (v123 < 0)
      {
        v21 = __p;
      }

      *buf = 136315650;
      v128 = "USBMIDIDriverBase.cpp";
      v129 = 1024;
      v130 = 139;
      v131 = 2080;
      *&v132 = v21;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Now @: %s", buf, 0x1Cu);
    }

    LOBYTE(v22) = 0;
    if (v16 > 35)
    {
      if (v16 != 36)
      {
        if (v16 != 37)
        {
          goto LABEL_131;
        }

        if (v17 == 1 && (v116 & 0x80000000) == 0)
        {
          sub_131FC(v19, v20);
          v30 = *(v8 + 43);
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
          if (v31)
          {
            *buf = 136315394;
            v128 = "USBMIDIDriverBase.cpp";
            v129 = 1024;
            v130 = 197;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%25s:%-5d      USB MIDI 1.0 CS endpoint descriptor", buf, 0x12u);
          }

          v33 = v6[3];
          sub_131FC(v31, v32);
          v34 = *(v8 + 43);
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
          if (v35)
          {
            v37 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 1);
            *buf = 136315906;
            v128 = "USBMIDIDriverBase.cpp";
            v129 = 1024;
            v130 = 200;
            v131 = 1024;
            LODWORD(v132) = v33;
            WORD2(v132) = 2048;
            *(&v132 + 6) = v37;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "%25s:%-5d      %d embedded MIDI jack(s), searching %lu jack(s) for a match", buf, 0x22u);
          }

          if (v33)
          {
            v38 = 0;
            if (v116)
            {
              v39 = a4;
            }

            else
            {
              v39 = a5;
            }

            do
            {
              v41 = *a3;
              v40 = a3[1];
              if (*a3 != v40)
              {
                while (*(v41 + 2) != v6[v38 + 4])
                {
                  v41 += 6;
                  if (v41 == v40)
                  {
                    goto LABEL_49;
                  }
                }
              }

              if (v41 == v40 || v41 == 0)
              {
LABEL_49:
                sub_131FC(v35, v36);
                v43 = *(v8 + 43);
                v35 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
                if (v35)
                {
                  *buf = 136315650;
                  v128 = "USBMIDIDriverBase.cpp";
                  v129 = 1024;
                  v130 = 206;
                  v131 = 1024;
                  LODWORD(v132) = v117;
                  _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d      Jack not found for endpoint 0x%x", buf, 0x18u);
                }
              }

              else
              {
                sub_131FC(v35, v36);
                v44 = *(v8 + 43);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  v46 = *(v41 + 2);
                  *buf = 136315906;
                  v128 = "USBMIDIDriverBase.cpp";
                  v129 = 1024;
                  v130 = 204;
                  v131 = 1024;
                  LODWORD(v132) = v46;
                  WORD2(v132) = 1024;
                  *(&v132 + 6) = v117;
                  _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "%25s:%-5d      Found jack %d for endpoint 0x%x", buf, 0x1Eu);
                }

                *(v41 + 5) = v117;
                sub_1455C(v39, v41);
                v8 = &unk_2C000;
              }

              ++v38;
            }

            while (v38 != v33);
            LOBYTE(v22) = 0;
          }

          else
          {
            LOBYTE(v22) = 0;
          }

LABEL_124:
          v7 = v113;
          goto LABEL_131;
        }

        sub_131FC(v19, v20);
        v63 = *(v8 + 43);
        if (v17 == 2)
        {
          v64 = os_log_type_enabled(v63, OS_LOG_TYPE_INFO);
          if (v64)
          {
            *buf = 136315394;
            v128 = "USBMIDIDriverBase.cpp";
            v129 = 1024;
            v130 = 216;
            _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "%25s:%-5d             (USB MIDI 2.0 CS endpoint descriptor)", buf, 0x12u);
          }

          v22 = v6[3];
          v66 = v117;
          if (v6[3])
          {
            v67 = 0;
            if (v116)
            {
              v68 = v117;
            }

            else
            {
              v68 = 0;
            }

            v115 = v68;
            if (v116)
            {
              v66 = 0;
            }

            v114 = v66;
            v69 = a6;
            do
            {
              v70 = v6[v67 + 4];
              for (i = *v69; i != v69[1]; i += 12)
              {
                if (*i == v70)
                {
                  sub_131FC(v64, v65);
                  v80 = qword_2C158;
                  v64 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
                  if (v64)
                  {
                    v81 = *i;
                    *buf = 136315906;
                    v128 = "USBMIDIDriverBase.cpp";
                    v129 = 1024;
                    v130 = 233;
                    v131 = 1024;
                    LODWORD(v132) = v81;
                    WORD2(v132) = 1024;
                    *(&v132 + 6) = v117;
                    _os_log_impl(&dword_0, v80, OS_LOG_TYPE_INFO, "%25s:%-5d      Reusing group terminal blockID %d for endpoint 0x%x", buf, 0x1Eu);
                  }

                  v69 = a6;
                  if (v116)
                  {
                    i[6] = v117;
                  }

                  else
                  {
                    i[7] = v117;
                  }

                  goto LABEL_108;
                }
              }

              sub_131FC(v64, v65);
              v72 = qword_2C158;
              v64 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
              if (v64)
              {
                *buf = 136315906;
                v128 = "USBMIDIDriverBase.cpp";
                v129 = 1024;
                v130 = 226;
                v131 = 1024;
                LODWORD(v132) = v70;
                WORD2(v132) = 1024;
                *(&v132 + 6) = v117;
                _os_log_impl(&dword_0, v72, OS_LOG_TYPE_INFO, "%25s:%-5d      New group terminal blockID %d for endpoint 0x%x", buf, 0x1Eu);
              }

              v69 = a6;
              v73 = a6[1];
              v74 = a6[2];
              if (v73 >= v74)
              {
                v76 = 0xAAAAAAAAAAAAAAABLL * ((v73 - *a6) >> 2);
                v77 = v76 + 1;
                if (v76 + 1 > 0x1555555555555555)
                {
                  sub_1280();
                }

                v78 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *a6) >> 2);
                if (2 * v78 > v77)
                {
                  v77 = 2 * v78;
                }

                if (v78 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v79 = 0x1555555555555555;
                }

                else
                {
                  v79 = v77;
                }

                if (v79)
                {
                  sub_18100(a6, v79);
                }

                v82 = 12 * v76;
                *v82 = v70;
                *(v82 + 1) = 0;
                *(v82 + 5) = 0;
                *(v82 + 6) = v115;
                *(v82 + 7) = v114;
                *(v82 + 8) = 0;
                v75 = 12 * v76 + 12;
                v83 = a6[1] - *a6;
                v84 = v82 - v83;
                memcpy((v82 - v83), *a6, v83);
                v64 = *a6;
                *a6 = v84;
                v69 = a6;
                a6[1] = v75;
                a6[2] = 0;
                if (v64)
                {
                  operator delete(v64);
                }
              }

              else
              {
                *v73 = v70;
                *(v73 + 1) = 0;
                *(v73 + 5) = 0;
                *(v73 + 6) = v115;
                *(v73 + 7) = v114;
                v75 = v73 + 12;
                *(v73 + 8) = 0;
              }

              v69[1] = v75;
LABEL_108:
              ++v67;
            }

            while (v67 != v22);
            LOBYTE(v22) = 0;
            v8 = &unk_2C000;
          }

          goto LABEL_124;
        }

        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 136315906;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 241;
        v131 = 1024;
        LODWORD(v132) = 37;
        WORD2(v132) = 1024;
        *(&v132 + 6) = v17;
        v26 = v63;
        v27 = OS_LOG_TYPE_ERROR;
        v28 = "%25s:%-5d      Unrecognized type/subtype: 0x%x / 0x%x";
        v29 = 30;
        goto LABEL_27;
      }

      if (v17 == 3)
      {
        LOBYTE(v120) = 3;
        v89 = v6[6];
        *(&v120 + 1) = *(v6 + 3);
        HIBYTE(v120) = v89;
        v121 = v6[2 * v6[5] + 6];
        sub_1455C(a3, &v120);
        sub_131FC(v90, v91);
        v92 = *(v8 + 43);
        if (!os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        v93 = "external";
        if (BYTE1(v120) == 1)
        {
          v93 = "embedded";
        }

        v94 = v6[5];
        *buf = 136316418;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 184;
        v131 = 2080;
        *&v132 = v93;
        WORD4(v132) = 1024;
        *(&v132 + 10) = BYTE2(v120);
        HIWORD(v132) = 1024;
        *v133 = HIBYTE(v120);
        *&v133[4] = 1024;
        v134 = v94;
        v26 = v92;
        v27 = OS_LOG_TYPE_INFO;
        v28 = "%25s:%-5d      Added %s MIDI output jack %d: source jack %d, %d input pin(s)";
        v29 = 46;
        goto LABEL_27;
      }

      if (v17 == 2)
      {
        LOBYTE(v120) = 2;
        *(&v120 + 1) = *(v6 + 3);
        HIBYTE(v120) = 0;
        v121 = v6[5];
        sub_1455C(a3, &v120);
        sub_131FC(v85, v86);
        v87 = *(v8 + 43);
        if (!os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        v88 = "external";
        if (BYTE1(v120) == 1)
        {
          v88 = "embedded";
        }

        *buf = 136315906;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 173;
        v131 = 2080;
        *&v132 = v88;
        WORD4(v132) = 1024;
        *(&v132 + 10) = BYTE2(v120);
        v26 = v87;
        v27 = OS_LOG_TYPE_INFO;
        v28 = "%25s:%-5d      Added %s MIDI input jack %d";
LABEL_26:
        v29 = 34;
LABEL_27:
        _os_log_impl(&dword_0, v26, v27, v28, buf, v29);
        goto LABEL_130;
      }

      if (v17 != 1)
      {
        sub_131FC(v19, v20);
        v95 = *(v8 + 43);
        if (!os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315650;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 186;
        v131 = 1024;
        LODWORD(v132) = v17;
        v26 = v95;
        v27 = OS_LOG_TYPE_INFO;
        v28 = "%25s:%-5d      Skipping unrecognized CS interface subtype %d...";
        v29 = 24;
        goto LABEL_27;
      }

      sub_131FC(v19, v20);
      v52 = *(v8 + 43);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
      if (v53)
      {
        v55 = &__p;
        if (v123 < 0)
        {
          v55 = __p;
        }

        *buf = 136315650;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 151;
        v131 = 2080;
        *&v132 = v55;
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Found CS descriptor: %s", buf, 0x1Cu);
      }

      v56 = *(v6 + 3);
      sub_131FC(v53, v54);
      v57 = *(v8 + 43);
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_INFO);
      if (v56 != 512)
      {
        if (v58)
        {
          *buf = 136315394;
          v128 = "USBMIDIDriverBase.cpp";
          v129 = 1024;
          v130 = 163;
          v26 = v57;
          v27 = OS_LOG_TYPE_INFO;
          v28 = "%25s:%-5d      Skipping CS interface descriptor";
          goto LABEL_129;
        }

LABEL_130:
        LOBYTE(v22) = 0;
        goto LABEL_131;
      }

      if (v58)
      {
        *buf = 136315394;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 155;
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "%25s:%-5d      Found a USB MIDI 2.0 alternate setting", buf, 0x12u);
      }

      v59 = (*(*v7 + 176))(v7, 1);
      v60 = v59;
      sub_131FC(v59, v61);
      v62 = *(v8 + 43);
      if (!v60)
      {
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315394;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 160;
        v26 = v62;
        v27 = OS_LOG_TYPE_INFO;
        v28 = "%25s:%-5d      Alternate interface now set for MIDI 2.0";
LABEL_129:
        v29 = 18;
        goto LABEL_27;
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 157;
        _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unable to set MIDI 2.0 alt setting!", buf, 0x12u);
      }

      LOBYTE(v22) = 1;
    }

    else
    {
      if (v16 != 4)
      {
        if (v16 != 5)
        {
          goto LABEL_131;
        }

        v23 = v6[2];
        v116 = v23 >> 7;
        sub_131FC(v19, v20);
        v24 = *(v8 + 43);
        v117 = v23;
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315906;
        v25 = "output";
        if ((v23 & 0x80u) != 0)
        {
          v25 = "input";
        }

        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 192;
        v131 = 1024;
        LODWORD(v132) = v23;
        WORD2(v132) = 2080;
        *(&v132 + 6) = v25;
        v26 = v24;
        v27 = OS_LOG_TYPE_INFO;
        v28 = "%25s:%-5d      Examining endpoint 0x%x (%s)";
        goto LABEL_26;
      }

      v47 = v6[3];
      sub_131FC(v19, v20);
      v48 = *(v8 + 43);
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
      if (v49)
      {
        *buf = 136315650;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 143;
        v131 = 1024;
        LODWORD(v132) = v47;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "%25s:%-5d      Examining alt setting %d...", buf, 0x18u);
      }

      if (v47 < 2)
      {
        goto LABEL_130;
      }

      sub_131FC(v49, v50);
      v51 = *(v8 + 43);
      LOBYTE(v22) = 1;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 146;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "%25s:%-5d      Done examining descriptors; halting", buf, 0x12u);
      }
    }

LABEL_131:
    v10 = (*(*v7 + 448))(v7, v6, 0);
    v96 = v10;
    if (!v10)
    {
      sub_131FC(0, v11);
      v97 = *(v8 + 43);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v128 = "USBMIDIDriverBase.cpp";
        v129 = 1024;
        v130 = 248;
        _os_log_impl(&dword_0, v97, OS_LOG_TYPE_DEBUG, "%25s:%-5d      FindNextAssociatedDescriptor() returned nullptr for kUSBAnyDesc", buf, 0x12u);
      }

      v10 = (*(*v7 + 448))(v7, v6, 4);
      v96 = v10;
      if (!v10)
      {
        sub_131FC(0, v11);
        v98 = *(v8 + 43);
        v10 = os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG);
        if (v10)
        {
          *buf = 136315394;
          v128 = "USBMIDIDriverBase.cpp";
          v129 = 1024;
          v130 = 252;
          _os_log_impl(&dword_0, v98, OS_LOG_TYPE_DEBUG, "%25s:%-5d      FindNextAssociatedDescriptor() returned nullptr for kUSBInterfaceDesc; done", buf, 0x12u);
        }

        v96 = 0;
      }
    }

    if (v123 < 0)
    {
      operator delete(__p);
    }

    if (v96)
    {
      v99 = v22;
    }

    else
    {
      v99 = 1;
    }

    v6 = v96;
  }

  while ((v99 & 1) == 0);
  sub_131FC(v10, v11);
  v100 = *(v8 + 43);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v128 = "USBMIDIDriverBase.cpp";
    v129 = 1024;
    v130 = 118;
    _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Bailing out of loop...", buf, 0x12u);
  }

  LOBYTE(__p) = 0;
  LOBYTE(v120) = 0;
  v125 = 0;
  v124 = 0;
  (*(*v7 + 80))(v7, &__p);
  (*(*v7 + 88))(v7, &v120);
  (*(*v7 + 104))(v7, &v126 + 2);
  (*(*v7 + 112))(v7, &v126);
  (*(*v7 + 136))(v7, &v125 + 1);
  (*(*v7 + 144))(v7, &v125);
  v101 = (*(*v7 + 152))(v7, &v124);
  sub_131FC(v101, v102);
  v103 = qword_2C158;
  v104 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
  if (v104)
  {
    *buf = 136316418;
    v128 = "USBMIDIDriverBase.cpp";
    v129 = 1024;
    v130 = 127;
    v131 = 1024;
    LODWORD(v132) = __p;
    WORD2(v132) = 1024;
    *(&v132 + 6) = v120;
    WORD5(v132) = 1024;
    HIDWORD(v132) = HIWORD(v126);
    *v133 = 1024;
    *&v133[2] = v126;
    _os_log_impl(&dword_0, v103, OS_LOG_TYPE_INFO, "%25s:%-5d      Interface class %d, subclass %d, for device 0x%04x /0x%04x", buf, 0x2Au);
  }

  sub_131FC(v104, v105);
  v106 = qword_2C158;
  v107 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
  if (v107)
  {
    *buf = 136316162;
    v128 = "USBMIDIDriverBase.cpp";
    v129 = 1024;
    v130 = 128;
    v131 = 1024;
    LODWORD(v132) = HIBYTE(v125);
    WORD2(v132) = 1024;
    *(&v132 + 6) = v125;
    WORD5(v132) = 1024;
    HIDWORD(v132) = v124;
    _os_log_impl(&dword_0, v106, OS_LOG_TYPE_INFO, "%25s:%-5d      Interface %d alternate setting %d : %d endpoints", buf, 0x24u);
  }

  sub_131FC(v107, v108);
  v109 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v128 = "USBMIDIDriverBase.cpp";
    v129 = 1024;
    v130 = 255;
    _os_log_impl(&dword_0, v109, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::ParseDescriptors()", buf, 0x12u);
  }

  return result;
}

void sub_14520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1455C(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 1);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_1280();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1555555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_180AC(a1, v11);
    }

    v12 = 6 * v8;
    v13 = *a2;
    *(v12 + 4) = *(a2 + 2);
    *v12 = v13;
    v7 = 6 * v8 + 6;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 4) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 6;
  }

  *(a1 + 8) = v7;
}

void sub_14664(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 **a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = a2;
  sub_131FC(a1, a2);
  v7 = qword_2C158;
  v8 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
  if (v8)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
    *buf = 136316162;
    *&buf[4] = "USBMIDIDriverBase.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 260;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 1024;
    *&buf[30] = v5;
    *&buf[34] = 2048;
    *&buf[36] = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::CreatePortMapList(inUSBDevice:%p, interfaceNum:%d) - Constructing a USB MIDI 2.0 port map list for %lu group terminal block(s)", buf, 0x2Cu);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_131FC(v8, v9);
  v11 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    *v101 = 136315394;
    *&v101[4] = "USBMIDIDriverBase.cpp";
    *&v101[12] = 1024;
    *&v101[14] = 265;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d      Issuing device request to load group terminal block descriptors...", v101, 0x12u);
  }

  v100 = 0;
  v12 = sub_689C(a1, v5, 1, buf, 5, &v100);
  if (v100 != 5)
  {
    sub_131FC(v12, v13);
    v15 = qword_2C158;
    v16 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      *v101 = 136316418;
      *&v101[4] = "USBMIDIDriverBase.cpp";
      *&v101[12] = 1024;
      *&v101[14] = 341;
      *&v101[18] = 1024;
      *&v101[20] = v5;
      *&v101[24] = 1024;
      *&v101[26] = 1;
      *&v101[30] = 1024;
      *&v101[32] = 5;
      *v102 = 1024;
      *&v102[2] = v100;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  FATAL: Could not retrieve Group Terminal Descriptors for USB MIDI interface %d alternate setting %d. Expected header length %u but got %u", v101, 0x2Au);
    }

    goto LABEL_103;
  }

  v14 = buf[0];
  if (buf[0])
  {
    if (buf[0] >= 8u)
    {
      operator new();
    }

    HIBYTE(v99) = 3 * buf[0];
    bzero(__p, 3 * buf[0]);
    *(__p + 3 * v14) = 0;
    if (v99 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v19 = buf;
    do
    {
      v20 = *v19++;
      *v18 = a0123456789abcd_0[v20 >> 4];
      *(v18 + 1) = a0123456789abcd_0[v20 & 0xF];
      *(v18 + 2) = 32;
      v18 = (v18 + 3);
      --v14;
    }

    while (v14);
  }

  else
  {
    HIBYTE(v99) = 0;
    LOBYTE(__p[0]) = 0;
  }

  v21 = *&buf[3];
  v97 = 0;
  sub_131FC(v12, v13);
  v22 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    v23 = __p;
    if (v99 < 0)
    {
      v23 = __p[0];
    }

    *v101 = 136315906;
    *&v101[4] = "USBMIDIDriverBase.cpp";
    *&v101[12] = 1024;
    *&v101[14] = 276;
    *&v101[18] = 1024;
    *&v101[20] = v21;
    *&v101[24] = 2080;
    *&v101[26] = v23;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d      Got group terminal block descriptor header (totalLength = %d): %s", v101, 0x22u);
  }

  v24 = sub_689C(a1, v5, 1, buf, v21, &v97);
  v26 = v97;
  v95 = a3;
  if (-991146299 * (v97 - v100) >= 0x13B13B14)
  {
    sub_131FC(v24, v25);
    v27 = qword_2C158;
    v24 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR);
    v26 = v97;
    if (v24)
    {
      *v101 = 136315650;
      *&v101[4] = "USBMIDIDriverBase.cpp";
      *&v101[12] = 1024;
      *&v101[14] = 279;
      *&v101[18] = 1024;
      *&v101[20] = v97;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unexpected group terminal descriptor length: %u", v101, 0x18u);
      v26 = v97;
    }
  }

  v28 = v26 - v100;
  v29 = (v26 - v100) / 0xD;
  if ((v26 - v100) % 0xD)
  {
    sub_131FC(v24, v25);
    v30 = qword_2C158;
    v31 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      *v101 = 136315650;
      *&v101[4] = "USBMIDIDriverBase.cpp";
      *&v101[12] = 1024;
      *&v101[14] = 283;
      *&v101[18] = 1024;
      *&v101[20] = v97;
      v33 = "%25s:%-5d      Unexpected total descriptor length: %u";
      v34 = v30;
      v35 = OS_LOG_TYPE_ERROR;
      v36 = 24;
LABEL_35:
      _os_log_impl(&dword_0, v34, v35, v33, v101, v36);
    }
  }

  else
  {
    v37 = 0xAAAAAAAAAAAAAAABLL * ((v95[1] - *v95) >> 2);
    sub_131FC(v24, v25);
    v38 = qword_2C158;
    if (v37 == v29)
    {
      v31 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
      if (v31)
      {
        *&v101[4] = "USBMIDIDriverBase.cpp";
        v39 = "s";
        *&v101[14] = 287;
        *v101 = 136316162;
        *&v101[12] = 1024;
        if (v28 - 13 < 0xD)
        {
          v39 = &unk_2064F;
        }

        *&v101[18] = 1024;
        *&v101[20] = v29;
        *&v101[24] = 2080;
        *&v101[26] = v39;
        *&v101[34] = 1024;
        *v102 = v97;
        v33 = "%25s:%-5d      Got %d group terminal block descriptor%s (receivedLength = %u). ";
        v34 = v38;
        v35 = OS_LOG_TYPE_INFO;
        v36 = 40;
        goto LABEL_35;
      }
    }

    else
    {
      v31 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR);
      if (v31)
      {
        v40 = -1431655765 * ((v95[1] - *v95) >> 2);
        *v101 = 136315906;
        *&v101[4] = "USBMIDIDriverBase.cpp";
        *&v101[12] = 1024;
        *&v101[14] = 285;
        *&v101[18] = 1024;
        *&v101[20] = v40;
        *&v101[24] = 1024;
        *&v101[26] = v29;
        v33 = "%25s:%-5d      Expected %d descriptors, not %d";
        v34 = v38;
        v35 = OS_LOG_TYPE_ERROR;
        v36 = 30;
        goto LABEL_35;
      }
    }
  }

  v94 = v28 - 13;
  if (v28 >= 0xD)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = &buf[13 * v41 + v100];
      v44 = *v43;
      if (*v43)
      {
        if (v44 >= 8)
        {
          operator new();
        }

        v101[23] = 3 * v44;
        bzero(v101, 3 * v44);
        v101[3 * v44] = 0;
        v45 = v101;
        if (v101[23] < 0)
        {
          v45 = *v101;
        }

        do
        {
          v46 = *v43++;
          *v45 = a0123456789abcd_0[v46 >> 4];
          v45[1] = a0123456789abcd_0[v46 & 0xF];
          v45[2] = 32;
          v45 += 3;
          --v44;
        }

        while (v44);
      }

      else
      {
        v101[23] = 0;
        v101[0] = 0;
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v101;
      v99 = *&v101[16];
      sub_131FC(v31, v32);
      v47 = qword_2C158;
      v31 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
      if (v31)
      {
        v48 = __p;
        if (v99 < 0)
        {
          v48 = __p[0];
        }

        *v101 = 136315906;
        *&v101[4] = "USBMIDIDriverBase.cpp";
        *&v101[12] = 1024;
        *&v101[14] = 294;
        *&v101[18] = 1024;
        *&v101[20] = v41;
        *&v101[24] = 2080;
        *&v101[26] = v48;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "%25s:%-5d      %00d: %s ", v101, 0x22u);
      }

      v41 = ++v42;
    }

    while (v29 > v42);
  }

  sub_131FC(v31, v32);
  v49 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    v51 = "s";
    *&v101[4] = "USBMIDIDriverBase.cpp";
    *v101 = 136315650;
    if (v94 < 0xD)
    {
      v51 = &unk_2064F;
    }

    *&v101[12] = 1024;
    *&v101[14] = 296;
    *&v101[18] = 2080;
    *&v101[20] = v51;
    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "%25s:%-5d      Parsing group terminal block descriptor%s ...", v101, 0x1Cu);
  }

  sub_153EC(v95, &buf[5], v97, v50);
  v52 = v95[1];
  v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v52 - *v95) >> 2));
  if (v52 == *v95)
  {
    v54 = 0;
  }

  else
  {
    v54 = v53;
  }

  v55 = sub_18158(*v95, v52, v54, 1);
  v58 = *v95;
  v57 = v95[1];
  if (*v95 != v57)
  {
    v59 = 0;
    v60 = 0;
    do
    {
      sub_131FC(v55, v56);
      v61 = qword_2C158;
      v55 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
      if (v55)
      {
        v62 = *v58;
        v63 = v58[1];
        v64 = v58[2];
        v65 = v58[3];
        v66 = v58[6];
        v67 = v58[7];
        v68 = v58[4];
        *v101 = 136317186;
        *&v101[4] = "USBMIDIDriverBase.cpp";
        *&v101[12] = 1024;
        *&v101[14] = 306;
        *&v101[18] = 1024;
        *&v101[20] = v62;
        *&v101[24] = 1024;
        *&v101[26] = v63;
        *&v101[30] = 1024;
        *&v101[32] = v64;
        *v102 = 1024;
        *&v102[2] = v65;
        v103 = 1024;
        v104 = v66;
        v105 = 1024;
        v106 = v67;
        v107 = 1024;
        v108 = v68;
        _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "%25s:%-5d      blockID 0x%x blockType 0x%x first gt %u (%u total) inEP 0x%x outEP 0x%x gtb.midiProtocol 0x%x", v101, 0x3Cu);
      }

      if (!v58[4])
      {
        v71 = v58[6];
        v72 = v58[7];
        sub_131FC(v55, v56);
        v73 = qword_2C158;
        if (!v71 || !v72)
        {
          v55 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR);
          if (v55)
          {
            v90 = *v58;
            *v101 = 136315650;
            *&v101[4] = "USBMIDIDriverBase.cpp";
            *&v101[12] = 1024;
            *&v101[14] = 319;
            *&v101[18] = 1024;
            *&v101[20] = v90;
            _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d      blockID 0x%x cannot use MIDI-CI without both a valid input and output endpoint. Skipping ...", v101, 0x18u);
          }

          goto LABEL_95;
        }

        v55 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
        if (v55)
        {
          *v101 = 136315394;
          *&v101[4] = "USBMIDIDriverBase.cpp";
          *&v101[12] = 1024;
          *&v101[14] = 315;
          _os_log_impl(&dword_0, v73, OS_LOG_TYPE_INFO, "%25s:%-5d           (MIDI-CI protocol negotiation will occur before going online)", v101, 0x12u);
        }
      }

      v69 = v58[1];
      if ((v69 | 2) == 2)
      {
        v70 = v58[6];
      }

      else
      {
        v70 = 0;
      }

      if (v69 >= 2)
      {
        v74 = 0;
      }

      else
      {
        v74 = v58[7];
      }

      if (v70 || v74)
      {
        v75 = *a4;
        v76 = v58[2];
        while (v75 < a4[1] && *(v75 + 5) <= v76)
        {
          v75 += 8;
        }

        if (v58[4] < 5u)
        {
          v77 = 1;
        }

        else
        {
          v77 = 2;
        }

        if (v58[4])
        {
          v78 = v77;
        }

        else
        {
          v78 = -1;
        }

        v79 = v58[3];
        v80 = *v58;
        v101[0] = v59;
        v101[1] = v60;
        v101[2] = v70;
        v101[3] = v74;
        v101[4] = v78;
        v101[5] = v76;
        v101[6] = v79;
        v101[7] = v80;
        v81 = sub_15464(a4, v75, v101);
        sub_131FC(v81, v82);
        v83 = qword_2C158;
        v55 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
        if (v55)
        {
          v84 = *v58;
          v85 = v58[4];
          if (v85 < 5)
          {
            v86 = 1;
          }

          else
          {
            v86 = 2;
          }

          v87 = v85 == 0;
          v88 = v58[2];
          if (v87)
          {
            v86 = 255;
          }

          v89 = v58[3];
          *v101 = 136317186;
          *&v101[4] = "USBMIDIDriverBase.cpp";
          *&v101[12] = 1024;
          *&v101[14] = 332;
          *&v101[18] = 1024;
          *&v101[20] = v84;
          *&v101[24] = 1024;
          *&v101[26] = v60;
          *&v101[30] = 1024;
          *&v101[32] = v70;
          *v102 = 1024;
          *&v102[2] = v74;
          v103 = 1024;
          v104 = v86;
          v105 = 1024;
          v106 = v88;
          v107 = 1024;
          v108 = v89;
          _os_log_impl(&dword_0, v83, OS_LOG_TYPE_INFO, "%25s:%-5d      blockID 0x%x cable 0x%x, inEP 0x%x, outEP 0x%x, usbpipeprotocol 0x%00x, firstGroupTerminal %d, numGroups %d -> maplist", v101, 0x3Cu);
        }

        ++v59;
        v60 += v58[3];
      }

LABEL_95:
      v58 += 12;
    }

    while (v58 != v57);
  }

  sub_131FC(v55, v56);
  v91 = qword_2C158;
  v16 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
  if (v16)
  {
    v92 = (a4[1] - *a4) >> 3;
    *v101 = 136315650;
    *&v101[4] = "USBMIDIDriverBase.cpp";
    *&v101[12] = 1024;
    *&v101[14] = 337;
    *&v101[18] = 2048;
    *&v101[20] = v92;
    _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "%25s:%-5d      Maplist constructed with %lu group terminal block(s).", v101, 0x1Cu);
  }

  if (SHIBYTE(v99) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_103:
  sub_131FC(v16, v17);
  v93 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    *v101 = 136315394;
    *&v101[4] = "USBMIDIDriverBase.cpp";
    *&v101[12] = 1024;
    *&v101[14] = 343;
    _os_log_impl(&dword_0, v93, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::CreatePortMapList()", v101, 0x12u);
  }
}

void sub_153A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = *a15;
  if (*a15)
  {
    *(a15 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 **sub_153EC(unsigned __int8 **result, unint64_t a2, unsigned int a3, uint8x8_t a4)
{
  if (a3)
  {
    v4 = a2 + a3;
    v5 = *result;
    v6 = result[1];
    do
    {
      if (v5 != v6)
      {
        v7 = v5;
        while (*v7 != *(a2 + 3))
        {
          v7 += 12;
          if (v7 == v6)
          {
            goto LABEL_9;
          }
        }

        v7[1] = *(a2 + 4);
        a4.i32[0] = *(a2 + 5);
        v8 = vmovl_u8(a4).u64[0];
        v9 = vrev32_s16(v8);
        v9.i32[0] = v8.i32[0];
        a4 = vuzp1_s8(v9, v8);
        *(v7 + 2) = a4.i32[0];
        *(v7 + 4) = *(a2 + 9);
        *(v7 + 5) = *(a2 + 11);
      }

LABEL_9:
      a2 += 13;
    }

    while (a2 < v4);
  }

  return result;
}

double *sub_15464(void *a1, char *a2, double *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = (&v6[-*a1] >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1280();
    }

    v10 = &a2[-v8];
    v11 = v7 - v8;
    v12 = v11 >> 2;
    if (v11 >> 2 <= v9)
    {
      v12 = (&v6[-*a1] >> 3) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 3;
    v20 = a1;
    if (v13)
    {
      sub_E878(a1, v13);
    }

    __p = 0;
    v17 = 8 * v14;
    v18 = 8 * v14;
    v19 = 0;
    sub_19924(&__p, a3);
    v4 = sub_19A88(a1, &__p, v4);
    if (v18 != v17)
    {
      v18 += (v17 - v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    sub_198D8(a1, a2, v6, a2 + 8);
    *v4 = *a3;
  }

  return v4;
}

void sub_15598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_155D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, double **a5@<X8>)
{
  v7 = a2;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_131FC(a1, a2);
  v10 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 1);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 1);
    *v44 = 136316418;
    *&v44[4] = "USBMIDIDriverBase.cpp";
    v45 = 1024;
    v46 = 349;
    v47 = 2048;
    v48 = a1;
    v49 = 1024;
    v50 = v7;
    v51 = 2048;
    v52 = v12;
    v53 = 2048;
    v54 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::CreatePortMapList(inUSBDevice:%p, interfaceNum:%d) - Constructing a USB MIDI 1.0 port map list for %lu inputs and %lu outputs...", v44, 0x36u);
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14 == *a3)
  {
    v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 1);
  }

  else
  {
    v16 = 0;
    v17 = a5[1];
    do
    {
      v18 = *(v15 + 6 * v16 + 5);
      v19 = *a5;
      if (*a5 == v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v21 = (v18 & 0x80) != 0 && *(v19 + 2) == v18 || (v18 & 0x80u) == 0 && v18 == *(v19 + 3);
          v20 += v21;
          ++v19;
        }

        while (v19 != v17);
      }

      v44[0] = v16;
      v44[1] = v20;
      v44[2] = v18;
      *&v44[3] = 0;
      v44[7] = 0;
      if (v17 >= a5[2])
      {
        v17 = sub_F1D8(a5, v44);
        v15 = *a3;
        v14 = a3[1];
      }

      else
      {
        *v17 = v16;
        *(v17 + 1) = v20;
        *(v17 + 2) = v18;
        *(v17 + 3) = 0;
        *(v17++ + 7) = 0;
      }

      a5[1] = v17;
      ++v16;
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 1);
    }

    while (v23 > v16);
  }

  v25 = *a4;
  v24 = a4[1];
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a4) >> 1);
  if (v26 >= v23)
  {
    LODWORD(v27) = v23;
  }

  else
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a4) >> 1);
  }

  if (v27 <= 0)
  {
    v29 = a5[1];
  }

  else
  {
    v28 = 0;
    v30 = *a5;
    v29 = a5[1];
    v31 = v27 & 0x7FFFFFFF;
    do
    {
      if (v28 == v26)
      {
        sub_E8C0();
      }

      if (v30 != v29)
      {
        v32 = *(v25 + 6 * v28 + 5);
        v33 = v30;
        while (1)
        {
          v11 = *(v33 + 2);
          v34 = *(v33 + 3);
          if ((v32 & 0x80) != 0 && v11 == v32)
          {
            break;
          }

          if ((v32 & 0x80) == 0 && v34 == v32)
          {
            v34 = *(v33 + 2);
            break;
          }

          if (++v33 == v29)
          {
            goto LABEL_45;
          }
        }

        v35 = v30;
        if (!v34)
        {
LABEL_45:
          if (v30 != v29)
          {
            v36 = v30;
            while (*(v36 + 3))
            {
              if (++v36 == v29)
              {
                goto LABEL_52;
              }
            }

            *(v36 + 3) = v32;
          }

          goto LABEL_52;
        }

        while (1)
        {
          v11 = *(v35 + 2);
          if (v11 == v34)
          {
            v11 = *(v35 + 3);
            if (!*(v35 + 3))
            {
              break;
            }
          }

          if (++v35 == v29)
          {
            goto LABEL_52;
          }
        }

        *(v35 + 3) = v32;
      }

LABEL_52:
      ++v28;
    }

    while (v28 != v31);
  }

  v37 = v29 - *a5;
  if (v26 > v37 >> 3)
  {
    v38 = v37 >> 3;
    v39 = v37 >> 3;
    v40 = *(v25 + 6 * v38 + 5);
    do
    {
      v41 = v40;
      v40 = *(v25 + 6 * v38 + 5);
      if (v41 == v40)
      {
        v42 = v39;
      }

      else
      {
        v42 = 0;
      }

      v44[0] = v38;
      *&v44[1] = v42;
      v44[3] = v40;
      *&v44[4] = 1;
      if (v29 >= a5[2])
      {
        v29 = sub_F1D8(a5, v44);
        v25 = *a4;
        v24 = a4[1];
      }

      else
      {
        *v29 = v38;
        *(v29 + 1) = v42;
        *(v29 + 2) = 0;
        *(v29 + 3) = v40;
        *(v29++ + 1) = 1;
      }

      LODWORD(v39) = v42 + 1;
      a5[1] = v29;
      v38 = v29 - *a5;
    }

    while (v38 < 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 1));
  }

  sub_131FC(v29, v11);
  v43 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    *v44 = 136315394;
    *&v44[4] = "USBMIDIDriverBase.cpp";
    v45 = 1024;
    v46 = 398;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::CreatePortMapList()", v44, 0x12u);
  }
}

void sub_15A14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_15A38(uint64_t a1, int a2, const __CFString *a3)
{
  v4 = sub_6810(a1, a2);
  if (!v4)
  {
    return v4;
  }

  Length = CFStringGetLength(a3);
  v6 = CFStringGetLength(v4);
  if (v6 < Length)
  {
    return v4;
  }

  v7 = Length;
  v11.location = 0;
  v11.length = Length;
  if (CFStringCompareWithOptions(v4, a3, v11, 1uLL))
  {
    return v4;
  }

  if (Length < v6)
  {
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v7);
      if (CharacterAtIndex != 95 && CharacterAtIndex != 32)
      {
        break;
      }

      if (v6 == ++v7)
      {
        Length = v6;
        goto LABEL_11;
      }
    }

    Length = v7;
  }

LABEL_11:
  v12.location = Length;
  v12.length = v6 - Length;
  v10 = CFStringCreateWithSubstring(0, v4, v12);
  CFRelease(v4);
  return v10;
}

BOOL sub_15B28(uint64_t a1, const __CFString *a2, MIDIDeviceRef a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, const __CFString *a8, char a9)
{
  newEntity = 0;
  v13 = a4[1];
  v52 = *a4;
  sub_131FC(a1, a2);
  v14 = qword_2C158;
  v15 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
  if (v15)
  {
    *buf = 136315394;
    *v63 = "USBMIDIDriverBase.cpp";
    *&v63[8] = 1024;
    *&v63[10] = 559;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d [+] configureDeviceUsingPortMap(using JackLists)", buf, 0x12u);
  }

  sub_131FC(v15, v16);
  v17 = qword_2C158;
  v18 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
  if (v18)
  {
    *buf = 136315394;
    *v63 = "USBMIDIDriverBase.cpp";
    *&v63[8] = 1024;
    *&v63[10] = 560;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%25s:%-5d      Constructing USB MIDI 1.0 entities...", buf, 0x12u);
  }

  v51 = v13;
  if (v13 != v52)
  {
    v20 = 0;
    if (((v51 - v52) >> 3) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (v51 - v52) >> 3;
    }

    v54 = v21;
    v55 = a8;
    do
    {
      v59 = &off_28E40;
      cf = 0;
      if (v20 >= (a4[1] - *a4) >> 3)
      {
        sub_E8C0();
      }

      v22 = *a4 + 8 * v20;
      v23 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (*(v22 + 2))
      {
        v18 = sub_15A38(a1, *(*a6 + 6 * v20 + 4), a8);
        v25 = v18;
        v26 = *a6 + 6 * v20;
        v27 = *a5;
        v28 = a5[1];
        if (*a5 != v28)
        {
          while (*(v27 + 2) != *(v26 + 3))
          {
            v27 += 6;
            if (v27 == v28)
            {
              goto LABEL_22;
            }
          }
        }

        if (v27 != v28)
        {
          if (v27)
          {
            v29 = *(v27 + 1);
            *(v26 + 1) = v29;
            if (v29 == 1)
            {
              sub_131FC(v18, v19);
              v30 = qword_2C158;
              v18 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
              if (v18)
              {
                v31 = *(*a6 + 6 * v20 + 2);
                *buf = 136315650;
                *v63 = "USBMIDIDriverBase.cpp";
                *&v63[8] = 1024;
                *&v63[10] = 576;
                v64 = 1024;
                LODWORD(v65) = v31;
                _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%25s:%-5d      Found an embedded input at jack ID %d.", buf, 0x18u);
              }
            }
          }
        }
      }

      else
      {
        v25 = 0;
      }

LABEL_22:
      if (v24)
      {
        v18 = sub_15A38(a1, *(*a7 + 6 * v20 + 4), a8);
        v32 = v18;
        v33 = *a7 + 6 * v20;
        v34 = *a5;
        v35 = a5[1];
        if (*a5 != v35)
        {
          while (*(v34 + 3) != *(v33 + 2))
          {
            v34 += 6;
            if (v34 == v35)
            {
              goto LABEL_32;
            }
          }
        }

        if (v34 != v35)
        {
          if (v34)
          {
            v36 = *(v34 + 1);
            *(v33 + 1) = v36;
            if (v36 == 1)
            {
              sub_131FC(v18, v19);
              v37 = qword_2C158;
              v18 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO);
              if (v18)
              {
                v38 = *(*a7 + 6 * v20 + 2);
                *buf = 136315650;
                *v63 = "USBMIDIDriverBase.cpp";
                *&v63[8] = 1024;
                *&v63[10] = 586;
                v64 = 1024;
                LODWORD(v65) = v38;
                _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "%25s:%-5d      Found an embedded output at jack ID %d.", buf, 0x18u);
              }
            }
          }
        }

LABEL_32:
        if (v25)
        {
          if (v32)
          {
            v18 = CFEqual(v25, v32);
            if (v18)
            {
              CFRetain(v25);
              v39 = cf;
              cf = v25;
              if (v39)
              {
                CFRelease(v39);
              }

              CFRelease(v25);
              CFRelease(v32);
              v32 = 0;
              v25 = 0;
              goto LABEL_41;
            }
          }
        }
      }

      else
      {
        v32 = 0;
      }

      if (((v51 - v52) >> 3) >= 2)
      {
        v40 = sub_1A120(buf, a2, (v20 + 1));
        v41 = cf;
        cf = *&v63[4];
        *&v63[4] = v41;
        v18 = sub_19B70(v40);
      }

LABEL_41:
      if (!cf)
      {
        if (a8)
        {
          CFRetain(a8);
          v18 = cf;
          cf = a8;
          if (v18)
          {
            CFRelease(v18);
          }
        }

        else
        {
          cf = 0;
        }
      }

      if (a9)
      {
        if (v23 && v24 && (v42 = *(*a6 + 6 * v20 + 1), v42 == *(*a7 + 6 * v20 + 1)))
        {
          if (v42 == 1)
          {
            sub_131FC(v18, v19);
            v43 = qword_2C158;
            v44 = 1;
            if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *v63 = "USBMIDIDriverBase.cpp";
              *&v63[8] = 1024;
              *&v63[10] = 611;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d      Creating an embedded entity.", buf, 0x12u);
            }

            goto LABEL_57;
          }
        }

        else if ((v23 != 0) != (v24 != 0))
        {
          v45 = a7;
          if (v23)
          {
            v45 = a6;
          }

          v44 = *(*v45 + 6 * v20 + 1) == 1;
          goto LABEL_57;
        }
      }

      v44 = 0;
LABEL_57:
      MIDIDeviceAddEntity(a3, cf, v44, v23 != 0, v24 != 0, &newEntity);
      if (v25)
      {
        Source = MIDIEntityGetSource(newEntity, 0);
        MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v25);
      }

      if (v32)
      {
        Destination = MIDIEntityGetDestination(newEntity, 0);
        MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v32);
      }

      if (v20 >= (a4[1] - *a4) >> 3 || (MIDIObjectSetIntegerProperty(newEntity, @"In Endpoint", *(*a4 + 8 * v20 + 2)), v20 >= (a4[1] - *a4) >> 3) || (MIDIObjectSetIntegerProperty(newEntity, @"Out Endpoint", *(*a4 + 8 * v20 + 3)), v20 >= (a4[1] - *a4) >> 3))
      {
        sub_E8C0();
      }

      MIDIObjectSetIntegerProperty(newEntity, @"Cable", *(*a4 + 8 * v20 + 1));
      if (v25)
      {
        CFRelease(v25);
      }

      if (v32)
      {
        CFRelease(v32);
      }

      MIDIObjectSetIntegerProperty(a3, @"UMP Enabled", 0);
      v18 = sub_19B70(&v59);
      ++v20;
      a8 = v55;
    }

    while (v20 != v54);
  }

  sub_131FC(v18, v19);
  v48 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    v49 = "false";
    *buf = 136315650;
    *v63 = "USBMIDIDriverBase.cpp";
    if (v51 != v52)
    {
      v49 = "true";
    }

    *&v63[8] = 1024;
    *&v63[10] = 637;
    v64 = 2080;
    v65 = v49;
    _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "%25s:%-5d [+] configureDeviceUsingPortMap(using JackLists) = %s", buf, 0x1Cu);
  }

  return v51 != v52;
}

void sub_162A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_163A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F650(va);
  sub_2B9C(v3, v5);
  _Unwind_Resume(a1);
}

uint64_t sub_16408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294956462;
  }

  (*(*a3 + 88))(a3, a2, a4);
  return 0;
}

uint64_t sub_1645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294956462;
  }

  (*(*a3 + 96))(a3, a2, a4);
  return 0;
}

void sub_164B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0u;
  *(a3 + 72) = 0u;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  v7 = sub_5FF8(a1);
  v8 = sub_7234(a2);
  if (!v7)
  {
    return;
  }

  v9 = v8;
  if (!v8 || (sub_7640(a2) & 1) == 0)
  {
    return;
  }

  v10 = (*(*v9 + 136))(v9, a3 + 16);
  v11 = v10;
  sub_131FC(v10, v12);
  v13 = qword_2C158;
  if (v11)
  {
    if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136315650;
      *&v18[4] = "USBMIDIDriverBase.cpp";
      *&v18[12] = 1024;
      *&v18[14] = 714;
      v19 = 1024;
      v20 = v11;
      v14 = "%25s:%-5d [!] USBMIDIClassDriver::ProbeDevice() - GetInterfaceNumber() returned error 0x%x";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_0, v15, v16, v14, v18, 0x18u);
    }
  }

  else if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    v17 = *v6;
    *v18 = 136315650;
    *&v18[4] = "USBMIDIDriverBase.cpp";
    *&v18[12] = 1024;
    *&v18[14] = 716;
    v19 = 1024;
    v20 = v17;
    v14 = "%25s:%-5d [*] USBMIDIClassDriver::ProbeDevice() - inUSBInterface has interface number %d";
    v15 = v13;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  sub_1322C(v9, v18);
  if (*v18)
  {
    sub_133F8(v9, *v18, (a3 + 24), a3 + 48, a3 + 72, (a3 + 96));
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  if (v21 < 0)
  {
    operator delete(*&v18[8]);
  }
}

void sub_166B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_E968(v15);
  _Unwind_Resume(a1);
}

BOOL sub_166E4(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, MIDIDeviceRef a6, uint64_t *a7, uint64_t *a8, void *a9, void *a10)
{
  sub_5FF8(a1);
  v16 = sub_7234(a2);
  v17 = sub_13010(a1, a4);
  v19 = v18;
  v24 = 0;
  (*(*v16 + 104))(v16, &v24);
  v20 = sub_15B28(a1, a3, a6, a7, a8, a9, a10, v19, v24 == 1452);
  if (a4 && v17 && CFStringCompare(v17, a4, 0))
  {
    CFRelease(v17);
  }

  if (a5 && v19 && CFStringCompare(v19, a5, 0))
  {
    CFRelease(v19);
  }

  return v20;
}

void sub_16808(int a1@<W0>, uint64_t a2@<X1>, double **a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (a1)
  {
    sub_155D0(v5, v6, (a2 + 48), (a2 + 72), a3);
  }

  else
  {
    sub_14664(v5, v6, (a2 + 96), a3);
  }
}

void sub_16830(uint64_t a1, MIDITimeStamp a2, unsigned int *a3, uint64_t a4, uint64_t a5, MIDIProtocolID a6)
{
  v7 = a3;
  if (a6)
  {
    if (*(a1 + 187) == 1)
    {

      sub_171A0(a1, a2, a3, a4, 0, a6);
    }

    else
    {
      sub_131FC(a1, a2);
      v63 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
      {
        *evtlist = 136315394;
        *&evtlist[4] = "USBMIDIDriverBase.cpp";
        *&evtlist[12] = 1024;
        *&evtlist[14] = 766;
        _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDriverBase::USBMIDIHandleInput() - protocols newer than USB MIDI 1.0 need USB MIDI 2.0 driver support, which is disabled", evtlist, 0x12u);
      }
    }

    return;
  }

  v98 = 0u;
  v99 = 0u;
  v10 = (a3 + a4);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  memset(evtlist, 0, sizeof(evtlist));
  if (*(a1 + 187) != 1 || *(a1 + 490) != 1)
  {
    v64 = MIDIPacketListInit(evtlist);
    if (a4 < 1)
    {
      return;
    }

    v65 = v64;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    while (1)
    {
      v69 = *v7;
      v70 = v69 & 0xF;
      if (v70 >= 2)
      {
        break;
      }

LABEL_158:
      v74 = v66;
LABEL_159:
      ++v7;
      v66 = v74;
      if (v7 >= v10)
      {
        if (*evtlist && (v67 & 1) != 0)
        {
          MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
        }

        return;
      }
    }

    v71 = *(a1 + 12);
    if (v71 <= (v69 >> 4))
    {
      v72 = v71 - 1;
    }

    else
    {
      v72 = v69 >> 4;
    }

    if ((v67 & 1) != 0 && v72 != v68)
    {
      MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
      v65 = MIDIPacketListInit(evtlist);
      v66 = 0;
    }

    if ((v72 & 0x80000000) == 0 && (*(a1 + 24) - *(a1 + 16)) >> 2 > v72)
    {
      v68 = v72;
      v67 = 1;
    }

    if (v70 > 7)
    {
      v73 = 1;
      if (((1 << v70) & 0x4F00) != 0)
      {
LABEL_139:
        v73 = 3;
LABEL_156:
        v76 = MIDIPacketListAdd(evtlist, 0x200uLL, v65, a2, v73, v7 + 1);
        if (!v76)
        {
          do
          {
            if (v67)
            {
              MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
            }

            v77 = MIDIPacketListInit(evtlist);
            v78 = MIDIPacketListAdd(evtlist, 0x200uLL, v77, a2, v73, v7 + 1);
          }

          while (!v78);
          v65 = v78;
          v74 = 0;
          goto LABEL_159;
        }

        v65 = v76;
        goto LABEL_158;
      }

      if (((1 << v70) & 0x3000) == 0)
      {
        goto LABEL_156;
      }

LABEL_152:
      v73 = 2;
      goto LABEL_156;
    }

    v73 = v70 - 4;
    if (v70 > 4)
    {
      if ((v70 - 6) >= 2 && *(v7 + 1) != 247)
      {
        v73 = 1;
        goto LABEL_156;
      }

      v74 = 0;
      if ((v66 & 1) == 0)
      {
        v66 = 0;
        goto LABEL_156;
      }
    }

    else
    {
      if (v70 == 2)
      {
        goto LABEL_152;
      }

      if (v70 == 3)
      {
        goto LABEL_139;
      }

      v74 = 1;
      if ((v66 & 1) == 0)
      {
        v66 = 1;
        goto LABEL_139;
      }

      v73 = 3;
    }

    v75 = &v65->data[v65->length];
    if (&v75[v73] <= &v100)
    {
      memcpy(v75, v7 + 1, v73);
      v65->length += v73;
      goto LABEL_159;
    }

    if (v67)
    {
      MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
    }

    v65 = MIDIPacketListInit(evtlist);
    v66 = 0;
    goto LABEL_156;
  }

  if (a4 < 1)
  {
    MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
    return;
  }

  v11 = a4 >> 2;
  v12 = a3;
  do
  {
    *v12 = bswap32(*v12);
    ++v12;
  }

  while (v12 < v10);
  MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
  if (v11 && a4 >= 1)
  {
    v13 = 0;
    while (1)
    {
      if (!v7)
      {
        return;
      }

      v79 = v11;
      v14 = *(a1 + 40);
      v15 = MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
      v16 = v7;
      if (v15)
      {
        break;
      }

LABEL_116:
      v61 = (v16 - v7) >> 2;
      if (v61)
      {
        LODWORD(v11) = v79 - v61;
        v62 = *(a1 + 12);
        v13 = (*v7 >> 28) >= v62 ? v62 - 1 : *v7 >> 28;
        MIDIReceivedEventList(*(*(a1 + 16) + 4 * v13), evtlist);
        if (v11)
        {
          v7 = (v7 + ((v16 - v7) & 0x3FFFFFFFCLL));
          if (v7 < v10)
          {
            continue;
          }
        }
      }

      return;
    }

    v17 = v15;
    v18 = (v14 + 6 * v13);
    v19 = *v7 >> 28;
    v80 = ((HIBYTE(*v7) >> 4) << 24) | 0x30000000;
    v16 = v7;
    while (1)
    {
      v20 = *v16;
      if (v19 != v20 >> 28 || &v99 + 4 - (v17 + 4 * v17->wordCount) < 5)
      {
        goto LABEL_116;
      }

      v22 = BYTE3(v20) & 0xF;
      if (v22 >= 2)
      {
        LOBYTE(v23) = BYTE2(*v16);
        if (v22 - 6 < 2)
        {
          v24 = qword_21E48[(v20 >> 24) & 0xF];
          if (BYTE2(v20) == 240)
          {
            v25 = v20 & 0x7F00;
            if (v24 == 2)
            {
              v25 = 0;
            }

            v26 = v25 & 0xFFFFFFFFFF00FFFFLL | ((v24 - 2) << 16) | v80;
            goto LABEL_75;
          }

LABEL_32:
          v27 = v24 - 1;
          v28 = *(v18 + 2);
          if (*(v18 + 2) && !*v18)
          {
            v84 = 0;
            v83 = 0;
            v29 = v27 + v28;
            if (v29)
            {
              v30 = 0;
              v31 = 0;
              v32 = v20 >> 8;
              do
              {
                if (v28 <= v31)
                {
                  if (v29 - v30 == 2)
                  {
                    v33 = v23;
                  }

                  else
                  {
                    v33 = v32;
                  }
                }

                else
                {
                  v33 = v18[v30];
                }

                *(&v83 + v30) = v33;
                v30 = ++v31;
              }

              while (v29 > v31);
              v34 = BYTE1(v83) & 0x7F;
              v35 = (v83 & 0x7F) << 8;
              v36 = (BYTE2(v83) & 0x7F) << 56;
              v37 = (HIBYTE(v83) & 0x7F) << 48;
              v38 = (v84 & 0x7F) << 40;
            }

            else
            {
              v35 = 0;
              v38 = 0;
              v37 = 0;
              v36 = 0;
              v34 = 0;
            }

            v51 = (v29 << 16) & 0xCF0000;
            if (v29 <= 1)
            {
              v34 = 0;
            }

            if (v29 <= 2)
            {
              v36 = 0;
            }

            if (v29 <= 3)
            {
              v37 = 0;
            }

            if (v29 <= 4)
            {
              v52 = 0;
            }

            else
            {
              v52 = v38;
            }

            v53 = v51 | (v19 << 24) | 0x30300000u | v35 | v52 | v37 | v36 | v34;
            goto LABEL_91;
          }

          if (v27)
          {
            if (v27 == 1)
            {
LABEL_77:
              v50 = 3145728;
            }

            else
            {
              v23 = WORD1(v20);
              v50 = (v20 >> 8) & 0x7F | 0x300000;
            }

            v53 = v50 | v80 | (v27 << 16) & 0xCF0000 | ((v23 & 0x7F) << 8);
LABEL_91:
            *words = v53;
            bzero(v18, 4uLL);
            *(v18 + 2) = 0;
            goto LABEL_92;
          }

          LOBYTE(v23) = 0;
          goto LABEL_77;
        }

        if (v22 == 5)
        {
          if (BYTE2(v20) == 240 || BYTE2(v20) == 247)
          {
            if (BYTE2(v20) == 247)
            {
              v24 = qword_21E48[(v20 >> 24) & 0xF];
              goto LABEL_32;
            }

LABEL_44:
            if (qword_21E48[(v20 >> 24) & 0xF] == 1)
            {
              LOBYTE(v39) = 0;
LABEL_72:
              v49 = 0x100000;
            }

            else
            {
              if (qword_21E48[(v20 >> 24) & 0xF] == 2)
              {
                v39 = v20 >> 8;
                goto LABEL_72;
              }

              v39 = v20 >> 8;
              v49 = v20 & 0x7F | 0x100000;
            }

            v26 = v49 | v80 | ((qword_21E48[(v20 >> 24) & 0xF] - 1) << 16) & 0xEF0000 | ((v39 & 0x7F) << 8);
LABEL_75:
            *words = v26;
LABEL_92:
            v54 = MIDIEventListAdd(evtlist, 0x200uLL, v17, a2, 2uLL, words);
            if (!v54)
            {
              goto LABEL_116;
            }

            v17 = v54;
            bzero(v18, 4uLL);
            *(v18 + 2) = 0;
            goto LABEL_94;
          }
        }

        else if (BYTE2(v20) == 240)
        {
          goto LABEL_44;
        }

        if ((~v20 & 0xF000000) != 0 || (~v20 & 0xF80000) == 0 && (v20 & 0xFB0000) != 0xF90000)
        {
          v40 = (BYTE2(v20) + 15) < 8u && ((0xA7u >> (BYTE2(v20) + 15)) & 1) != 0 || BYTE2(v20) > 0xF9u && BYTE2(v20) != 253;
          v42 = 0;
          v43 = 1 << v22;
          if ((v43 & 0x7F00) != 0 || (v43 & 0xC) != 0)
          {
LABEL_66:
            v42 = (*v16 & 0x7F) << 24;
          }

          else if ((v43 & 0x8020) != 0)
          {
            if (v40)
            {
              goto LABEL_66;
            }

            v42 = 0;
          }

          v44 = v42;
          goto LABEL_68;
        }

        v55 = *(v18 + 2);
        *(v18 + 2) = v55 + 1;
        v18[v55] = v23;
        if (sub_19CAC(v18))
        {
          v56 = sub_19C34(v18);
          if (v56)
          {
            if (v56 == 4)
            {
              *words = (*v16 >> 4) & 0xF000000 | ((*v18 & 0x7F) << 8) | v18[1] & 0x7F | 0x30220000;
              v46 = v17;
              v47 = a2;
              v45 = 2;
            }

            else
            {
              v57 = *v18;
              v58 = (v57 + 15) < 8u && ((0xA7u >> (v57 + 15)) & 1) != 0 || v57 > 0xF9 && v57 != 253;
              v44 = 0;
              v60 = 1 << (v56 & 0xF);
              if ((v60 & 0x7F00) != 0 || (v60 & 0xC) != 0)
              {
                goto LABEL_114;
              }

              if ((v60 & 0x8020) == 0)
              {
                goto LABEL_68;
              }

              if (v58)
              {
LABEL_114:
                v44 = (v18[2] & 0x7F) << 24;
              }

              else
              {
                v44 = 0;
              }

LABEL_68:
              *words = v44;
              v82 = 0;
              v45 = byte_21EC8[v44 >> 28];
              v46 = v17;
              v47 = a2;
            }

            v48 = MIDIEventListAdd(evtlist, 0x200uLL, v46, v47, v45, words);
            if (!v48)
            {
              goto LABEL_116;
            }

            v17 = v48;
          }
        }
      }

LABEL_94:
      if (++v16 >= v10)
      {
        goto LABEL_116;
      }
    }
  }
}

uint64_t sub_171A0(uint64_t result, MIDITimeStamp a2, const UInt32 *a3, unint64_t a4, int a5, MIDIProtocolID a6)
{
  if (a6 <= kMIDIProtocol_2_0)
  {
    v21[10] = v6;
    v21[11] = v7;
    v8 = a4 >> 2;
    memset(v20, 0, sizeof(v20));
    if ((a4 >> 2))
    {
      v10 = a3;
      v12 = result;
      v13 = (a3 + a4);
      while (1)
      {
        if (!v10)
        {
          return result;
        }

        if (v13 <= v10)
        {
          return result;
        }

        result = sub_19D28(a6, a2, v10, v13 - v10, v20, v21);
        if (!result)
        {
          return result;
        }

        v14 = result;
        v15 = *v10 >> 28;
        v16 = HIBYTE(*v10) & 0xF;
        if (v15 == 15)
        {
          v16 = 255;
        }

        v17 = v15 ? v16 : 255;
        v18 = *(v12 + 12) - *(v12 + 189);
        v19 = v18 <= v17 ? v18 - 1 : v17;
        if (v17 != 255 && v19 != 255)
        {
          break;
        }

        if (*(v12 + 189))
        {
          goto LABEL_20;
        }

LABEL_21:
        if (&v10[v14] <= v13)
        {
          v10 += v14;
        }

        else
        {
          v10 = v13;
        }

        LODWORD(v8) = v8 - v14;
        if (!v8)
        {
          return result;
        }
      }

      result = MIDIReceivedEventList(*(*(v12 + 16) + 4 * v19), v20);
      if ((*(v12 + 189) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      result = MIDIReceivedEventList(*(*(v12 + 24) - 4), v20);
      goto LABEL_21;
    }
  }

  return result;
}

_BYTE *sub_17310(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  if (*(a2 + 2))
  {
    v6 = *(*(a2 + 1) + 120);
  }

  else
  {
    v6 = 0;
  }

  v7 = &a3[a4 - 4];
  v8 = a3;
  while (*(a2 + 2))
  {
    v9 = a2;
    do
    {
      v9 = *(v9 + 1);
      if (v9 == a2)
      {
        return (v8 - a3);
      }
    }

    while (v6 != v9[120]);
    if (*(v9 + 4))
    {
      v10 = *(v9 + 4);
    }

    else
    {
      v10 = v9 + 40;
    }

    v11 = *(v9 + 14);
    v12 = *(v9 + 6);
    v13 = v12 - v11;
    if (v12 - v11 >= 1 && v8 <= v7)
    {
      v15 = &v10[v12];
      v16 = 16 * v9[108];
      v17 = &v10[v11];
      v33 = &v10[v12 - 1];
      v18 = v17;
      while (1)
      {
        v20 = *v18++;
        v19 = v20;
        v21 = v20 >> 4;
        if (v20 >> 4 > 0xF)
        {
          break;
        }

        if (((1 << v21) & 0x4F00) != 0)
        {
          *v8 = v16 | (v19 >> 4);
          v8[1] = v19;
LABEL_27:
          v8[2] = v17[1];
          v18 = v17 + 3;
          v8[3] = v17[2];
          goto LABEL_42;
        }

        if (((1 << v21) & 0x3000) != 0)
        {
          v23 = v16 | (v19 >> 4);
          goto LABEL_30;
        }

        if (v21 != 15)
        {
          break;
        }

        if (v19 <= 242)
        {
          switch(v19)
          {
            case 240:
              goto LABEL_20;
            case 241:
LABEL_58:
              LOBYTE(v23) = v16 | 2;
LABEL_30:
              *v8 = v23;
              v8[1] = v19;
              v18 = v17 + 2;
              v8[2] = v17[1];
LABEL_31:
              v8[3] = 0;
              goto LABEL_42;
            case 242:
              *v8 = v16 | 3;
              v8[1] = -14;
              goto LABEL_27;
          }
        }

        else
        {
          v26 = v19 + 13;
          if ((v19 - 243) <= 0xC)
          {
            if (((1 << v26) & 0x1BA0) != 0)
            {
              goto LABEL_40;
            }

            if (((1 << v26) & 0x18) != 0)
            {
              v27 = v16 | 5;
              goto LABEL_41;
            }

            if (v19 == 243)
            {
              goto LABEL_58;
            }
          }
        }

        if (v18 < v15)
        {
          v31 = v33 - v17;
          while ((*v18 & 0x80000000) == 0)
          {
            ++v18;
            if (!--v31)
            {
              v18 = v15;
              break;
            }
          }
        }

LABEL_43:
        if (v18 >= v15)
        {
          v28 = *(v9 + 4);
          if (v28)
          {
            free(v28);
          }

          v30 = *v9;
          v29 = *(v9 + 1);
          *(v30 + 8) = v29;
          *v29 = v30;
          --*(a2 + 2);
          operator delete(v9);
          if (!*(a2 + 2))
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v9 + 14) = v18 - v10;
        }

        v13 = v15 - v18;
        if (v15 - v18 >= 1)
        {
          v17 = v18;
          if (v8 <= v7)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

LABEL_20:
      if (v13 > 2 || v13 != 1 && *v18 == 247)
      {
        v8[1] = v19;
        v22 = v17[1];
        v8[2] = v22;
        if (v22 == 247)
        {
          v18 = v17 + 2;
          *v8 = v16 | 6;
          goto LABEL_31;
        }

        v18 = v17 + 3;
        v24 = v17[2];
        v8[3] = v24;
        if (v24 == 247)
        {
          v25 = v16 | 7;
        }

        else
        {
          v25 = v16 | 4;
        }

        *v8 = v25;
LABEL_42:
        v8 += 4;
        goto LABEL_43;
      }

LABEL_40:
      v27 = v16 | 0xF;
LABEL_41:
      *v8 = v27;
      v8[1] = v19;
      *(v8 + 1) = 0;
      goto LABEL_42;
    }

LABEL_17:
    if (v8 > v7)
    {
      return (v8 - a3);
    }
  }

  return (v8 - a3);
}

_BYTE *sub_17620(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v8 = *a2;
  if (*a2 == a2[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 292);
  }

  v78 = v9;
  v86 = &a3[a4];
  do
  {
    while (1)
    {
      if (v8 == v7[1])
      {
        return (v6 - a3);
      }

      if (*(v8 + 292) != v9)
      {
        break;
      }

      v10 = sub_F12C(v8);
      v11 = *(v8 + 288);
      v12 = *(sub_F12C(v8) + 8);
      v13 = *(v8 + 288);
      v14 = v12 - v13;
      if (v12 == v13)
      {
        break;
      }

      v15 = 0;
      v16 = v10 + 4 * v11 + 12;
      v17 = 4 * (v12 - v13);
      v18 = v16 + 4 * v14;
      v19 = v86;
      v82 = v12 - v13;
      v83 = v8;
      v80 = v17;
      v81 = v16;
      v79 = v18;
      while (1)
      {
        v20 = 4 * v15;
        v21 = (v16 + v20);
        if (v5)
        {
          break;
        }

        v28 = v17 - v20;
        if (((v17 - v20) & 0x3FFFFFFFCLL) == 0)
        {
          LODWORD(v29) = 0;
          goto LABEL_140;
        }

        LODWORD(v29) = 0;
        if (v6 && v6 < v19)
        {
          LODWORD(v30) = 0;
          v31 = 0;
          v32 = &v21[v28 & 0x3FFFFFFFCLL];
          v84 = (v16 + 4 * v15);
          v85 = v32;
          while (1)
          {
            if (((v32 - v21) >> 2) < 1)
            {
LABEL_138:
              v66 = v21 - v84;
              v21 = v84;
              v29 = v66 >> 2;
              goto LABEL_139;
            }

            v33 = *v21;
            v34 = *v21 >> 28;
            switch(v34)
            {
              case 1u:
                if (BYTE2(v33) - 241 <= 0xE)
                {
                  if (((1 << (BYTE2(v33) + 15)) & 0x6EA0) != 0)
                  {
                    v38 = (v33 >> 20) & 0xF0;
                    v31 = v38 | 5;
                    *v6 = v38 | 5;
                    v6[1] = *(v21 + 1);
                    LODWORD(v30) = 1;
LABEL_50:
                    v6[2] = 0;
                    goto LABEL_122;
                  }

                  if (((1 << (BYTE2(v33) + 15)) & 5) != 0)
                  {
                    LODWORD(v30) = 2;
LABEL_119:
                    v31 = v30 | (v33 >> 20) & 0xF0;
                    *v6 = v30 | (v33 >> 20) & 0xF0;
                    v6[1] = *(v21 + 1);
                    goto LABEL_120;
                  }

                  if (BYTE2(v33) == 242)
                  {
                    LODWORD(v30) = 3;
                    goto LABEL_119;
                  }
                }

                break;
              case 2u:
                v37 = (v33 >> 20) & 0xF;
                v31 = (v33 >> 20);
                if (v37 != 15)
                {
                  if (((1 << v37) & 0x3000) != 0)
                  {
                    LODWORD(v30) = 2;
                  }

                  if (((1 << v37) & 0x4F00) != 0)
                  {
                    LODWORD(v30) = 3;
                  }
                }

                break;
              case 3u:
                v35 = (v33 >> 20) & 0xF;
                v87 = 0;
                LODWORD(v30) = HIWORD(v33) & 0xF;
                if (v35 >= 2)
                {
                  v30 = v30;
                }

                else
                {
                  v30 = (v30 + 1);
                }

                if (v35)
                {
                  v36 = v35 == 3;
                }

                else
                {
                  v36 = 1;
                }

                if (v36)
                {
                  ++v30;
                }

                if (v30 > 8)
                {
                  LODWORD(v30) = 0;
                  goto LABEL_72;
                }

                if (v35 == 3 || (v39 = v30, !v35))
                {
                  *(&v86 + v30 + 7) = -9;
                  v39 = v30 - 1;
                }

                if (v35 > 1)
                {
                  v40 = &v87;
                }

                else
                {
                  LOBYTE(v87) = -16;
                  --v39;
                  v40 = &v87 + 1;
                }

                if (v39 >= 1)
                {
                  v41 = 0;
                  for (i = 0; i != v39; ++i)
                  {
                    if (i <= 5)
                    {
                      if (i >= 2)
                      {
                        v44 = 40;
                      }

                      else
                      {
                        v44 = 8;
                      }

                      v43 = *&v21[4 * (i > 1)] >> (v44 + v41);
                    }

                    else
                    {
                      LOBYTE(v43) = 0;
                    }

                    v40[i] = v43;
                    v41 -= 8;
                  }
                }

                if (v30)
                {
                  if (*(&v86 + v30 + 7) == 247)
                  {
                    if (v30 >= 4)
                    {
                      v45 = v30 / 3;
                      if ((-1431655765 * v30) > 0x55555555)
                      {
                        ++v45;
                      }
                    }

                    else
                    {
                      v45 = 1;
                    }
                  }

                  else if (v30 >= 3)
                  {
                    v45 = v30 / 3 + v30 % 3;
                  }

                  else
                  {
                    v45 = v30;
                  }
                }

                else
                {
LABEL_72:
                  v45 = 0;
                }

                if (v45 <= (v86 - v6) >> 2)
                {
                  v46 = 0;
                  while (v30 != 1)
                  {
                    if (!v30)
                    {
                      v63 = byte_21EC8[*v21 >> 28];
                      v32 = v85;
                      goto LABEL_126;
                    }

                    v47 = v35 != 1;
                    v48 = v30 - 3;
                    if (v30 != 3)
                    {
                      v47 = 1;
                    }

                    if (v30 <= 3 && v47)
                    {
LABEL_95:
                      if (v35 && v35 != 3)
                      {
                        v53 = *v21;
                        v52 = v6;
                        v48 = v30;
                        goto LABEL_107;
                      }

                      v52 = v6;
                      v48 = v30;
LABEL_98:
                      v55 = *v21 >> 28;
                      if (v55)
                      {
                        v56 = v55 == 15;
                      }

                      else
                      {
                        v56 = 1;
                      }

                      v57 = (*v21 >> 20) & 0xF0;
                      if (v56)
                      {
                        v57 = 240;
                      }

                      v58 = v48 | v57;
                      v31 = v58 | 4;
                      *v52 = v58 | 4;
                      v59 = v48;
                      memcpy(v52 + 1, &v87 + v46, v48);
                      LODWORD(v30) = 0;
                      v6 = &v52[v48 + 1];
                      if (v48 != 3)
                      {
                        v60 = 2 - v48;
                        bzero(v6, v60 + 1);
                        LODWORD(v30) = 0;
                        v6 = &v52[v59 + 2 + v60];
                      }
                    }

                    else
                    {
                      v49 = *v21 >> 28;
                      if (v49)
                      {
                        v50 = v49 == 15;
                      }

                      else
                      {
                        v50 = 1;
                      }

                      if (v50)
                      {
                        v31 = 244;
                      }

                      else
                      {
                        v31 = (*v21 >> 20) & 0xF0 | 4;
                      }

                      *v6 = v31;
                      v51 = &v87 + v46;
                      v6[1] = *v51;
                      v6[2] = v51[1];
                      v46 += 3;
                      v52 = v6 + 4;
                      v6[3] = v51[2];
                      LODWORD(v51) = v30 - 4;
                      v6 += 4;
                      LODWORD(v30) = v30 - 3;
                      if (v51 <= 2)
                      {
                        v53 = *v21;
                        if (*v21 >> 28 == 3)
                        {
                          v54 = (*v21 >> 20) & 0xF;
                        }

                        else
                        {
                          v54 = -1;
                        }

                        if (!v54 || v54 == 3)
                        {
                          goto LABEL_98;
                        }

LABEL_107:
                        if (v53 >> 28)
                        {
                          v61 = v53 >> 28 == 15;
                        }

                        else
                        {
                          v61 = 1;
                        }

                        if (v61)
                        {
                          v31 = 255;
                        }

                        else
                        {
                          v31 = (v53 >> 20) & 0xF0 | 0xF;
                        }

                        *v52 = v31;
                        v62 = *(&v87 + v46++);
                        v52[1] = v62;
                        *(v52 + 1) = 0;
                        v6 = v52 + 4;
                        LODWORD(v30) = v48 - 1;
                      }
                    }
                  }

                  v53 = *v21;
                  if ((*v21 & 0xF0F00000) != 0x30300000)
                  {
                    v48 = 1;
                    v52 = v6;
                    goto LABEL_107;
                  }

                  goto LABEL_95;
                }

                v68 = v21 - v84;
                v21 = v84;
                v29 = v68 >> 2;
LABEL_139:
                v5 = a5;
                v9 = v78;
                v7 = a2;
                v14 = v82;
                v8 = v83;
                v19 = v86;
                v17 = v80;
                v16 = v81;
                v18 = v79;
                goto LABEL_140;
            }

            if (!v31)
            {
              goto LABEL_125;
            }

            *v6 = v31;
            v6[1] = *(v21 + 1);
            if (v30 <= 1)
            {
              goto LABEL_50;
            }

LABEL_120:
            v6[2] = BYTE1(*v21);
            if (v30 > 2)
            {
              v6[3] = *v21;
              goto LABEL_124;
            }

            LODWORD(v30) = 2;
LABEL_122:
            v6[3] = 0;
LABEL_124:
            v6 += 4;
LABEL_125:
            v63 = byte_21EC8[*v21 >> 28];
LABEL_126:
            v21 += 4 * v63;
            if (v6 >= v86)
            {
              goto LABEL_138;
            }
          }
        }

LABEL_140:
        v67 = &v21[4 * v29];
        if (v67 >= v18)
        {
          goto LABEL_145;
        }

        v15 += v29;
        if (v19 - v6 < 4 * byte_21EC8[*v67 >> 28])
        {
          goto LABEL_9;
        }

LABEL_142:
        if (v15 >= v14)
        {
          goto LABEL_9;
        }
      }

      if (v19 <= v6)
      {
        LODWORD(v64) = 0;
      }

      else
      {
        v22 = (v17 - v20) >> 2;
        v23 = (v16 + 4 * v15);
        v24 = v6;
        while (v22 >= 1)
        {
          v25 = byte_21EC8[*v23 >> 28];
          if (v25 > (v19 - v24) >> 2)
          {
            break;
          }

          if (byte_21EC8[*v23 >> 28])
          {
            v26 = &v23[v25];
            do
            {
              v27 = *v23++;
              *v24 = v27;
              v24 += 4;
            }

            while (v23 < v26);
          }

          v22 = (v18 - v23) >> 2;
        }

        v64 = (v24 - v6) >> 2;
      }

      v65 = &v21[4 * v64];
      v6 += 4 * v64;
      if (v65 < v18)
      {
        v15 += v64;
        if (byte_21EC8[*v65 >> 28] > ((v19 - v6) >> 2))
        {
          goto LABEL_9;
        }

        goto LABEL_142;
      }

LABEL_145:
      sub_19EE8(&v87, v8 + 296, v7[1], v8);
      v70 = v69;
      for (j = v7[1]; j != v70; sub_E580(j))
      {
        j -= 296;
      }

      v7[1] = v70;
    }

    v15 = 0;
LABEL_9:
    v8 += 296;
  }

  while (!v15);
  v72 = v7[1];
  v73 = *v7;
  if (*v7 != v72)
  {
    while (*(v73 + 292) != v9)
    {
      v73 += 296;
      if (v73 == v72)
      {
        return (v6 - a3);
      }
    }
  }

  if (v72 != v73)
  {
    *(v73 + 288) += v15;
  }

  return (v6 - a3);
}

BOOL sub_17DDC(int a1, MIDIObjectRef a2)
{
  v3 = sub_17E28(a1, a2);
  if (v3)
  {
    return 1;
  }

  return sub_17F38(v3, a2);
}

uint64_t sub_17E28(int a1, MIDIObjectRef obj)
{
  v6 = 0;
  str = 0;
  v5 = 0;
  if (obj)
  {
    MIDIObjectGetStringProperty(obj, kMIDIPropertyName, &str);
    if (str)
    {
      v3 = CFEqual(str, @"USB MIDI Device") != 0;
    }

    else
    {
      v3 = 0;
    }

    MIDIObjectGetStringProperty(obj, kMIDIPropertyModel, &v6);
    if (v6)
    {
      v3 |= CFEqual(v6, @"USB MIDI Device") != 0;
    }

    MIDIObjectGetStringProperty(obj, kMIDIPropertyManufacturer, &v5);
    if (v5)
    {
      v3 |= CFEqual(v5, @"Generic") != 0;
    }

    if (str)
    {
      CFRelease(str);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_17F38(int a1, MIDIDeviceRef device)
{
  str = 0;
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(device);
  if (NumberOfEntities)
  {
    v4 = NumberOfEntities;
    v5 = 0;
    v6 = 1;
    do
    {
      Entity = MIDIDeviceGetEntity(device, v5);
      if (Entity)
      {
        MIDIObjectGetStringProperty(Entity, kMIDIPropertyName, &str);
        if (str)
        {
          v8 = CFEqual(str, @"USB MIDI Device");
          v9 = str;
          if (v8)
          {
            goto LABEL_10;
          }

          if (str)
          {
            CFRelease(str);
            str = 0;
          }
        }
      }

      v6 = ++v5 < v4;
    }

    while (v4 != v5);
    v6 = 0;
    v9 = str;
LABEL_10:
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_18014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_17E28(a1, a2);
  if ((v8 & 1) != 0 || (result = sub_17F38(v8, a2), result))
  {
    v10 = *(*a1 + 200);

    return v10(a1, a3, a4, a2);
  }

  return result;
}

void sub_180AC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1394();
}

void sub_18100(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1394();
}

uint64_t sub_18158(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v9 = a2 - 3;
  v10 = (a2 - 36);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 10) < *(v11 + 2))
        {
          v220 = *(v11 + 8);
          v190 = *v11;
          v89 = *(a2 - 12);
          *(v11 + 8) = *(a2 - 1);
          *v11 = v89;
          *(a2 - 1) = v220;
          *(a2 - 12) = v190;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v95 = *(v11 + 14);
      v96 = *(v11 + 26);
      if (v95 >= *(v11 + 2))
      {
        if (v96 < v95)
        {
          v150 = *(v11 + 20);
          v151 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v151;
          *(v11 + 32) = v150;
          if (*(v11 + 14) < *(v11 + 2))
          {
            v226 = *(v11 + 8);
            v196 = *v11;
            *v11 = *(v11 + 12);
            *(v11 + 8) = *(v11 + 20);
            *(v11 + 12) = v196;
            *(v11 + 20) = v226;
          }
        }
      }

      else
      {
        if (v96 < v95)
        {
          v222 = *(v11 + 8);
          v192 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 8) = *(v11 + 32);
          *(v11 + 24) = v192;
          v97 = v222;
          goto LABEL_190;
        }

        v229 = *(v11 + 8);
        v199 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v199;
        *(v11 + 20) = v229;
        if (v96 < *(v11 + 14))
        {
          v97 = *(v11 + 20);
          v159 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v159;
LABEL_190:
          *(v11 + 32) = v97;
        }
      }

      if (*(a2 - 10) >= *(v11 + 26))
      {
        return result;
      }

      v160 = *(v11 + 24);
      v161 = *(v11 + 32);
      v162 = *(a2 - 1);
      *(v11 + 24) = *v8;
      *(v11 + 32) = v162;
      *(a2 - 1) = v161;
      *v8 = v160;
      if (*(v11 + 26) >= *(v11 + 14))
      {
        return result;
      }

      v163 = *(v11 + 20);
      v164 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v164;
      *(v11 + 32) = v163;
LABEL_194:
      if (*(v11 + 14) < *(v11 + 2))
      {
        v230 = *(v11 + 8);
        v200 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v200;
        *(v11 + 20) = v230;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_191E4(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

LABEL_10:
    if (v12 <= 287)
    {
      v98 = (v11 + 12);
      v100 = v11 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v11;
          do
          {
            v103 = v98;
            v104 = *(v102 + 14);
            if (v104 < *(v102 + 2))
            {
              v105 = *v103;
              v193 = *(v102 + 15);
              v223 = *(v102 + 23);
              v106 = v101;
              while (1)
              {
                v107 = v11 + v106;
                *(v107 + 12) = *(v11 + v106);
                *(v107 + 20) = *(v11 + v106 + 8);
                if (!v106)
                {
                  break;
                }

                v106 -= 12;
                if (v104 >= *(v107 - 10))
                {
                  v108 = v11 + v106 + 12;
                  goto LABEL_130;
                }
              }

              v108 = v11;
LABEL_130:
              *v108 = v105;
              *(v108 + 2) = v104;
              *(v108 + 11) = v223;
              *(v108 + 3) = v193;
            }

            v98 = (v103 + 12);
            v101 += 12;
            v102 = v103;
          }

          while ((v103 + 12) != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v152 = v98;
          v153 = *(v7 + 14);
          if (v153 < *(v7 + 2))
          {
            v154 = *v98;
            v197 = *(v7 + 15);
            v227 = *(v7 + 23);
            v155 = v152;
            do
            {
              v156 = v155;
              v157 = *(v155 - 12);
              v155 = (v155 - 12);
              *v156 = v157;
              *(v156 + 2) = *(v156 - 1);
            }

            while (v153 < *(v156 - 22));
            *v155 = v154;
            *(v155 + 2) = v153;
            *(v155 + 11) = v227;
            *(v155 + 3) = v197;
          }

          v98 = (v152 + 12);
          v7 = v152;
        }

        while ((v152 + 12) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v109 = (v13 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = v11 + 12 * v112;
            if (2 * v111 + 2 < v13)
            {
              v114 = *(v113 + 2);
              v115 = *(v113 + 14);
              v116 = v114 >= v115;
              v117 = v114 >= v115 ? 0 : 12;
              v113 += v117;
              if (!v116)
              {
                v112 = 2 * v111 + 2;
              }
            }

            v118 = v11 + 12 * v111;
            v119 = *(v118 + 2);
            if (*(v113 + 2) >= v119)
            {
              v120 = *v118;
              v224 = *(v118 + 11);
              v194 = *(v118 + 3);
              do
              {
                v121 = v118;
                v118 = v113;
                v122 = *v113;
                *(v121 + 8) = *(v118 + 8);
                *v121 = v122;
                if (v109 < v112)
                {
                  break;
                }

                v123 = (2 * v112) | 1;
                v113 = v11 + 12 * v123;
                v124 = 2 * v112 + 2;
                if (v124 < v13)
                {
                  v125 = *(v113 + 2);
                  v126 = *(v113 + 14);
                  v127 = v125 >= v126;
                  v128 = v125 >= v126 ? 0 : 12;
                  v113 += v128;
                  if (!v127)
                  {
                    v123 = v124;
                  }
                }

                v112 = v123;
              }

              while (*(v113 + 2) >= v119);
              *v118 = v120;
              *(v118 + 2) = v119;
              *(v118 + 11) = v224;
              *(v118 + 3) = v194;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v129 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v130 = 0;
          v225 = *(v11 + 8);
          v195 = *v11;
          v131 = v11;
          do
          {
            v132 = v131 + 12 * v130;
            v133 = v132 + 12;
            result = 2 * v130;
            v134 = (2 * v130) | 1;
            v130 = 2 * v130 + 2;
            if (v130 >= v129)
            {
              v130 = v134;
            }

            else
            {
              result = *(v132 + 14);
              v135 = *(v132 + 26);
              v136 = v132 + 24;
              if (result >= v135)
              {
                v130 = v134;
              }

              else
              {
                v133 = v136;
              }
            }

            v137 = *v133;
            *(v131 + 8) = *(v133 + 8);
            *v131 = v137;
            v131 = v133;
          }

          while (v130 <= ((v129 - 2) >> 1));
          a2 = (a2 - 12);
          if (v133 == a2)
          {
            *(v133 + 8) = v225;
            *v133 = v195;
          }

          else
          {
            v138 = *a2;
            *(v133 + 8) = *(a2 + 2);
            *v133 = v138;
            *(a2 + 2) = v225;
            *a2 = v195;
            v139 = v133 - v11 + 12;
            if (v139 >= 13)
            {
              v140 = (-2 - 0x5555555555555555 * (v139 >> 2)) >> 1;
              v141 = v11 + 12 * v140;
              v142 = *(v133 + 2);
              if (*(v141 + 2) < v142)
              {
                v143 = *v133;
                v167 = *(v133 + 3);
                v170 = *(v133 + 11);
                do
                {
                  v144 = v133;
                  v133 = v141;
                  v145 = *v141;
                  result = *(v133 + 8);
                  *(v144 + 8) = result;
                  *v144 = v145;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = v11 + 12 * v140;
                }

                while (*(v141 + 2) < v142);
                *v133 = v143;
                *(v133 + 2) = v142;
                *(v133 + 11) = v170;
                *(v133 + 3) = v167;
              }
            }
          }
        }

        while (v129-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *(a2 - 10);
    if (v12 >= 0x601)
    {
      v17 = *(v15 + 2);
      if (v17 >= *(v11 + 2))
      {
        if (v16 < v17)
        {
          v203 = *(v15 + 8);
          v173 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 1);
          *v15 = v21;
          *(a2 - 1) = v203;
          *v8 = v173;
          if (*(v15 + 2) < *(v11 + 2))
          {
            v204 = *(v11 + 8);
            v174 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v204;
            *v15 = v174;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v201 = *(v11 + 8);
          v171 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 1);
          *v11 = v18;
          goto LABEL_27;
        }

        v207 = *(v11 + 8);
        v177 = *v11;
        v25 = *v15;
        *(v11 + 8) = *(v15 + 8);
        *v11 = v25;
        *(v15 + 8) = v207;
        *v15 = v177;
        if (*(a2 - 10) < *(v15 + 2))
        {
          v201 = *(v15 + 8);
          v171 = *v15;
          v26 = *v8;
          *(v15 + 8) = *(a2 - 1);
          *v15 = v26;
LABEL_27:
          *(a2 - 1) = v201;
          *v8 = v171;
        }
      }

      v27 = v11 + 12 * v14;
      v28 = v27 - 12;
      v29 = *(v27 - 10);
      v30 = *(a2 - 22);
      if (v29 >= *(v11 + 14))
      {
        if (v30 < v29)
        {
          v208 = *(v28 + 8);
          v178 = *v28;
          v34 = *v9;
          *(v28 + 8) = *(a2 - 4);
          *v28 = v34;
          *(a2 - 4) = v208;
          *v9 = v178;
          if (*(v28 + 2) < *(v11 + 14))
          {
            v35 = *(v11 + 12);
            v36 = *(v11 + 20);
            v37 = *(v28 + 8);
            *(v11 + 12) = *v28;
            *(v11 + 20) = v37;
            *(v28 + 8) = v36;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *(v11 + 12);
          v32 = *(v11 + 20);
          v33 = *(a2 - 4);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v33;
          goto LABEL_39;
        }

        v40 = *(v11 + 12);
        v41 = *(v11 + 20);
        v42 = *(v28 + 8);
        *(v11 + 12) = *v28;
        *(v11 + 20) = v42;
        *(v28 + 8) = v41;
        *v28 = v40;
        if (*(a2 - 22) < *(v28 + 2))
        {
          v210 = *(v28 + 8);
          v180 = *v28;
          v43 = *v9;
          *(v28 + 8) = *(a2 - 4);
          *v28 = v43;
          v31 = v180;
          v32 = v210;
LABEL_39:
          *(a2 - 4) = v32;
          *v9 = v31;
        }
      }

      v44 = v11 + 12 * v14;
      v45 = *(v44 + 14);
      v46 = *(a2 - 34);
      if (v45 >= *(v11 + 26))
      {
        if (v46 < v45)
        {
          v211 = *(v44 + 20);
          v181 = *(v44 + 12);
          v50 = *v10;
          *(v44 + 20) = *(a2 - 7);
          *(v44 + 12) = v50;
          *(a2 - 7) = v211;
          *v10 = v181;
          if (*(v44 + 14) < *(v11 + 26))
          {
            v51 = *(v11 + 24);
            v52 = *(v11 + 32);
            v53 = *(v44 + 20);
            *(v11 + 24) = *(v44 + 12);
            *(v11 + 32) = v53;
            *(v44 + 20) = v52;
            *(v44 + 12) = v51;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *(v11 + 24);
          v48 = *(v11 + 32);
          v49 = *(a2 - 7);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v49;
          goto LABEL_48;
        }

        v54 = *(v11 + 24);
        v55 = *(v11 + 32);
        v56 = *(v44 + 20);
        *(v11 + 24) = *(v44 + 12);
        *(v11 + 32) = v56;
        *(v44 + 20) = v55;
        *(v44 + 12) = v54;
        if (*(a2 - 34) < *(v44 + 14))
        {
          v212 = *(v44 + 20);
          v182 = *(v44 + 12);
          v57 = *v10;
          *(v44 + 20) = *(a2 - 7);
          *(v44 + 12) = v57;
          v47 = v182;
          v48 = v212;
LABEL_48:
          *(a2 - 7) = v48;
          *v10 = v47;
        }
      }

      v58 = *(v15 + 2);
      v59 = *(v44 + 14);
      if (v58 >= *(v28 + 2))
      {
        if (v59 < v58)
        {
          v214 = *(v15 + 8);
          v184 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
          *(v44 + 20) = v214;
          *(v44 + 12) = v184;
          if (*(v15 + 2) < *(v28 + 2))
          {
            v215 = *(v28 + 8);
            v185 = *v28;
            *v28 = *v15;
            *(v28 + 8) = *(v15 + 8);
            *(v15 + 8) = v215;
            *v15 = v185;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v213 = *(v28 + 8);
          v183 = *v28;
          *v28 = *(v44 + 12);
          *(v28 + 8) = *(v44 + 20);
          goto LABEL_57;
        }

        v216 = *(v28 + 8);
        v186 = *v28;
        *v28 = *v15;
        *(v28 + 8) = *(v15 + 8);
        *(v15 + 8) = v216;
        *v15 = v186;
        if (*(v44 + 14) < *(v15 + 2))
        {
          v213 = *(v15 + 8);
          v183 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
LABEL_57:
          *(v44 + 20) = v213;
          *(v44 + 12) = v183;
        }
      }

      v217 = *(v11 + 8);
      v187 = *v11;
      v60 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v60;
      *(v15 + 8) = v217;
      *v15 = v187;
      goto LABEL_59;
    }

    v19 = *(v11 + 2);
    if (v19 >= *(v15 + 2))
    {
      if (v16 < v19)
      {
        v205 = *(v11 + 8);
        v175 = *v11;
        v23 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v23;
        *(a2 - 1) = v205;
        *v8 = v175;
        if (*(v11 + 2) < *(v15 + 2))
        {
          v206 = *(v15 + 8);
          v176 = *v15;
          v24 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v24;
          *(v11 + 8) = v206;
          *v11 = v176;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v19)
    {
      v202 = *(v15 + 8);
      v172 = *v15;
      v20 = *v8;
      *(v15 + 8) = *(a2 - 1);
      *v15 = v20;
LABEL_36:
      *(a2 - 1) = v202;
      *v8 = v172;
      goto LABEL_59;
    }

    v209 = *(v15 + 8);
    v179 = *v15;
    v38 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v38;
    *(v11 + 8) = v209;
    *v11 = v179;
    if (*(a2 - 10) < *(v11 + 2))
    {
      v202 = *(v11 + 8);
      v172 = *v11;
      v39 = *v8;
      *(v11 + 8) = *(a2 - 1);
      *v11 = v39;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v61 = *(v11 + 2);
LABEL_62:
      v62 = 0;
      v63 = *v11;
      v165 = *(v11 + 3);
      v168 = *(v11 + 11);
      do
      {
        v64 = *(v11 + v62 + 14);
        v62 += 12;
      }

      while (v64 < v61);
      v65 = v11 + v62;
      v66 = a2;
      if (v62 == 12)
      {
        v69 = a2;
        while (v65 < v69)
        {
          v67 = v69 - 12;
          v70 = *(v69 - 10);
          v69 -= 12;
          if (v70 < v61)
          {
            goto LABEL_72;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 12;
          v68 = *(v66 - 10);
          v66 -= 12;
        }

        while (v68 >= v61);
      }

LABEL_72:
      v11 = v65;
      if (v65 < v67)
      {
        v71 = v67;
        do
        {
          v218 = *(v11 + 8);
          v188 = *v11;
          v72 = *v71;
          *(v11 + 8) = *(v71 + 8);
          *v11 = v72;
          *(v71 + 8) = v218;
          *v71 = v188;
          do
          {
            v73 = *(v11 + 14);
            v11 += 12;
          }

          while (v73 < v61);
          do
          {
            v74 = *(v71 - 10);
            v71 -= 12;
          }

          while (v74 >= v61);
        }

        while (v11 < v71);
      }

      if (v11 - 12 != v7)
      {
        v75 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v75;
      }

      *(v11 - 12) = v63;
      *(v11 - 10) = v61;
      *(v11 - 1) = v168;
      *(v11 - 9) = v165;
      if (v65 < v67)
      {
        goto LABEL_83;
      }

      v76 = sub_19424(v7, (v11 - 12));
      result = sub_19424(v11, a2);
      if (result)
      {
        a2 = (v11 - 12);
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_83:
        result = sub_18158(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v61 = *(v11 + 2);
      if (*(v11 - 10) < v61)
      {
        goto LABEL_62;
      }

      v77 = *v11;
      v166 = *(v11 + 3);
      v169 = *(v11 + 11);
      if (v61 >= *(a2 - 10))
      {
        v80 = v11 + 12;
        do
        {
          v11 = v80;
          if (v80 >= a2)
          {
            break;
          }

          v81 = *(v80 + 2);
          v80 += 12;
        }

        while (v61 >= v81);
      }

      else
      {
        v78 = v11;
        do
        {
          v11 = v78 + 12;
          v79 = *(v78 + 14);
          v78 += 12;
        }

        while (v61 >= v79);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v83 = a2;
        do
        {
          v82 = v83 - 12;
          v84 = *(v83 - 10);
          v83 -= 12;
        }

        while (v61 < v84);
      }

      while (v11 < v82)
      {
        v219 = *(v11 + 8);
        v189 = *v11;
        v85 = *v82;
        *(v11 + 8) = *(v82 + 8);
        *v11 = v85;
        *(v82 + 8) = v219;
        *v82 = v189;
        do
        {
          v86 = *(v11 + 14);
          v11 += 12;
        }

        while (v61 >= v86);
        do
        {
          v87 = *(v82 - 10);
          v82 -= 12;
        }

        while (v61 < v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v77;
      *(v11 - 10) = v61;
      *(v11 - 1) = v169;
      *(v11 - 9) = v166;
    }
  }

  v90 = *(v11 + 14);
  v91 = *(a2 - 10);
  if (v90 >= *(v11 + 2))
  {
    if (v91 >= v90)
    {
      return result;
    }

    v147 = *(v11 + 12);
    v148 = *(v11 + 20);
    v149 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v149;
    *(a2 - 1) = v148;
    *v8 = v147;
    goto LABEL_194;
  }

  if (v91 >= v90)
  {
    v228 = *(v11 + 8);
    v198 = *v11;
    *v11 = *(v11 + 12);
    *(v11 + 8) = *(v11 + 20);
    *(v11 + 12) = v198;
    *(v11 + 20) = v228;
    if (*(a2 - 10) >= *(v11 + 14))
    {
      return result;
    }

    v93 = *(v11 + 12);
    v94 = *(v11 + 20);
    v158 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v158;
  }

  else
  {
    v221 = *(v11 + 8);
    v191 = *v11;
    v92 = *v8;
    *(v11 + 8) = *(a2 - 1);
    *v11 = v92;
    v93 = v191;
    v94 = v221;
  }

  *(a2 - 1) = v94;
  *v8 = v93;
  return result;
}

uint64_t *sub_191E4(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 2);
  v6 = *(a3 + 2);
  if (v5 >= *(result + 2))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      if (*(a2 + 2) < *(result + 2))
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        *(a2 + 2) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 2) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
    if (*(a3 + 2) < BYTE2(v17))
    {
      v7 = *(a2 + 2);
      v8 = *a2;
      v19 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    v20 = *(a3 + 2);
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*(a3 + 2) < *(a2 + 2))
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      if (*(a2 + 2) < *(result + 2))
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        *(a2 + 2) = v26;
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*(a4 + 2) < *(a3 + 2))
    {
      v32 = *(a3 + 2);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*(a3 + 2) < *(a2 + 2))
      {
        v35 = *(a2 + 2);
        v36 = *a2;
        v37 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v37;
        *a3 = v36;
        *(a3 + 2) = v35;
        if (*(a2 + 2) < *(result + 2))
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 2);
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          *(a2 + 2) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_19424(uint64_t a1, __int16 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 6);
      v7 = *(a1 + 14);
      v8 = *(a2 - 10);
      if (v7 < *(a1 + 2))
      {
        if (v8 >= v7)
        {
          v34 = *(a1 + 8);
          v35 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v35;
          *(a1 + 20) = v34;
          if (*(a2 - 10) >= *(a1 + 14))
          {
            return 1;
          }

          v9 = *(a1 + 20);
          v10 = *(a1 + 12);
          v36 = *(a2 - 1);
          *(a1 + 12) = *v6;
          *(a1 + 20) = v36;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = *a1;
          v11 = *(a2 - 1);
          *a1 = *v6;
          *(a1 + 8) = v11;
        }

        *v6 = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *(a1 + 20);
      v24 = *(a1 + 12);
      v25 = *(a2 - 1);
      *(a1 + 12) = *v6;
      *(a1 + 20) = v25;
      *v6 = v24;
      *(a2 - 1) = v23;
LABEL_50:
      if (*(a1 + 14) < *(a1 + 2))
      {
        v55 = *(a1 + 8);
        v56 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v56;
        *(a1 + 20) = v55;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_191E4(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 6));
      return 1;
    }

    v18 = *(a1 + 14);
    v19 = *(a1 + 2);
    v20 = *(a1 + 26);
    if (v18 >= v19)
    {
      if (v20 < v18)
      {
        v30 = *(a1 + 20);
        v31 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        if (*(a1 + 14) < v19)
        {
          v32 = *(a1 + 8);
          v33 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v33;
          *(a1 + 20) = v32;
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      v47 = *(a1 + 8);
      v48 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v48;
      *(a1 + 20) = v47;
      if (v20 >= *(a1 + 14))
      {
        goto LABEL_47;
      }

      v21 = *(a1 + 20);
      v22 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    *(a1 + 24) = v22;
    *(a1 + 32) = v21;
LABEL_47:
    if (*(a2 - 10) >= *(a1 + 26))
    {
      return 1;
    }

    v49 = a2 - 6;
    v50 = *(a1 + 32);
    v51 = *(a1 + 24);
    v52 = *(a2 - 1);
    *(a1 + 24) = *(a2 - 6);
    *(a1 + 32) = v52;
    *v49 = v51;
    *(v49 + 2) = v50;
    if (*(a1 + 26) >= *(a1 + 14))
    {
      return 1;
    }

    v53 = *(a1 + 20);
    v54 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v54;
    *(a1 + 32) = v53;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 10) < *(a1 + 2))
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      v5 = *(a2 - 1);
      *a1 = *(a2 - 6);
      *(a1 + 8) = v5;
      *(a2 - 6) = v4;
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v12 = (a1 + 24);
  v13 = *(a1 + 14);
  v14 = *(a1 + 2);
  v15 = *(a1 + 26);
  if (v13 >= v14)
  {
    if (v15 < v13)
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v27;
      *(a1 + 32) = v26;
      if (*(a1 + 14) < v14)
      {
        v28 = *(a1 + 8);
        v29 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v29;
        *(a1 + 20) = v28;
      }
    }
  }

  else
  {
    if (v15 >= v13)
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v38;
      *(a1 + 20) = v37;
      if (v15 >= *(a1 + 14))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 20);
      v17 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v16 = *(a1 + 8);
      v17 = *a1;
      *a1 = *v12;
      *(a1 + 8) = *(a1 + 32);
    }

    *v12 = v17;
    *(a1 + 32) = v16;
  }

LABEL_33:
  v39 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *(v39 + 2);
    if (v42 < *(v12 + 2))
    {
      v43 = *v39;
      v58 = *(v39 + 3);
      v59 = *(v39 + 11);
      v44 = v40;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 36) = *(a1 + v44 + 24);
        *(v45 + 44) = *(a1 + v44 + 32);
        if (v44 == -24)
        {
          break;
        }

        v44 -= 12;
        if (v42 >= *(v45 + 14))
        {
          v46 = a1 + v44 + 36;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v43;
      *(v46 + 2) = v42;
      *(v46 + 3) = v58;
      *(v46 + 11) = v59;
      if (++v41 == 8)
      {
        return v39 + 6 == a2;
      }
    }

    v12 = v39;
    v40 += 12;
    v39 += 6;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_198D8(uint64_t result, uint64_t a2, unint64_t a3, char *a4)
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

double sub_19924(uint64_t **a1, double *a2)
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

      sub_E878(a1[4], v7);
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

void sub_19A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19A88(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = *(a2 + 8);
  sub_F2CC(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_F2CC(a1, v7, a3, v9);
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

uint64_t sub_19B44(uint64_t result, uint64_t *a2, uint64_t a3)
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

void *sub_19B70(void *a1)
{
  *a1 = &off_28E20;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_19BC4(void *a1)
{
  sub_19B70(a1);

  operator delete();
}

void sub_19BFC(void *a1)
{
  sub_19B70(a1);

  operator delete();
}

uint64_t sub_19C34(char *a1)
{
  result = sub_19CAC(a1);
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
          return byte_21EF3[v3 + 15];
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

BOOL sub_19CAC(unsigned __int8 *a1)
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

uint64_t sub_19D28(MIDIProtocolID a1, MIDITimeStamp a2, const UInt32 *a3, uint64_t a4, MIDIEventList *a5, unint64_t a6)
{
  result = 0;
  v8 = a6 - a5;
  if (a6 >= a5 && a5 && a6)
  {
    bzero(a5, a6 - a5);
    v14 = MIDIEventListInit(a5, a1);
    if (a4 >= 1)
    {
      v15 = byte_21EC8[*a3 >> 28];
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
            v15 = byte_21EC8[*v22 >> 28];
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

uint64_t sub_19EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_19F64(a4, v5);
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

uint64_t sub_19F64(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 272);
  if (*(result + 272) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_E580(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (*(&off_28E50 + v4))(v6);
    }
  }

  return result;
}

void *sub_19FD4(uint64_t *a1, void *__dst, void *__src)
{
  v4 = *a1;
  if (*(*a1 + 272))
  {
    sub_E580(*a1);
    result = memcpy(v4, __src, 0x10CuLL);
    v4[68] = 0;
  }

  else
  {

    return memcpy(__dst, __src, 0x10CuLL);
  }

  return result;
}

__n128 sub_1A04C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 272) == 1)
  {

    result.n128_u64[0] = sub_1A0CC(a2, a3).n128_u64[0];
  }

  else
  {
    sub_E580(a1);
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

__n128 sub_1A0CC(uint64_t a1, __n128 *a2)
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

void *sub_1A120(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &off_28E40;
  a1[1] = v4;
  return a1;
}

void sub_1A20C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_131FC(a1, a2);
  if (v2)
  {
    sub_131FC(v3, v4);
    v5 = qword_2C158;
    v6 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      v12 = 136315394;
      v13 = "USBMIDIDriverBase.cpp";
      v14 = 1024;
      v15 = 654;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ==========================================================================================================", &v12, 0x12u);
    }

    sub_131FC(v6, v7);
    v8 = qword_2C158;
    v9 = os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG);
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

    sub_131FC(v9, v10);
    v11 = qword_2C158;
    if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "USBMIDIDriverBase.cpp";
      v14 = 1024;
      v15 = 656;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d ==========================================================================================================", &v12, 0x12u);
    }
  }
}

void *sub_1A440(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28EB8;
  sub_8598((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void sub_1A4CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A548(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *a2;
  v7 = a2[1];
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *a3;
  v8 = *a4;
  *(a1 + 136) = 0u;
  *(a1 + 48) = v8;
  *(a1 + 56) = -1;
  *(a1 + 64) = 850045863;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = -1;
  *(a1 + 332) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  DiscoveryMUID = MIDICapabilityGetDiscoveryMUID();
  *(a1 + 320) = DiscoveryMUID;
  sub_1A95C(DiscoveryMUID, v10);
  v11 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
  {
    if (a3[1])
    {
      v12 = *a3 | 0x80;
    }

    else
    {
      v12 = *a3;
    }

    v13 = a3[6];
    v14 = *(a3 + 2);
    if (*(a4 + 1))
    {
      v15 = *a4 | 0x80;
    }

    else
    {
      v15 = *a4;
    }

    v16 = *(a4 + 6);
    v17 = *(a4 + 2);
    v18 = *(a1 + 320);
    buf[0] = 136317186;
    *&buf[1] = "MIDIProtocolNegotiator.cpp";
    v20 = 1024;
    v21 = 141;
    v22 = 1024;
    v23 = v12;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = v17;
    v34 = 1024;
    v35 = v18;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d [*] MIDIProtocolNegotiatior(inEP: 0x%x (pipeIndex %u, mps %u), outEP: 0x%x (pipeIndex %u, mps %u) - Negotiating with MUID 0x%x", buf, 0x3Cu);
  }

  v36 = a1;
  sub_1CC08();
}

void sub_1A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A95C(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2C170, memory_order_acquire) & 1) == 0)
  {
    sub_1FCB8();
  }
}

uint64_t sub_1A990(uint64_t a1, uint64_t a2)
{
  sub_1A95C(a1, a2);
  v3 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 136315394;
    *&v13[4] = "MIDIProtocolNegotiator.cpp";
    v14 = 1024;
    v15 = 193;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] ~MIDIProtocolNegotiatior()", v13, 0x12u);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    v5 = MIDITimerTaskDispose();
    *(a1 + 128) = 0;
  }

  *(a1 + 332) = 1;
  sub_1A95C(v5, v4);
  v6 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 136315394;
    *&v13[4] = "MIDIProtocolNegotiator.cpp";
    v14 = 1024;
    v15 = 196;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] ~MIDIProtocolNegotiatior()", v13, 0x12u);
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    sub_43D0(v7);
  }

  v8 = *(a1 + 200);
  if (v8)
  {
    sub_43D0(v8);
  }

  *v13 = a1 + 136;
  sub_E6A4(v13);
  std::mutex::~mutex((a1 + 64));
  v9 = *(a1 + 32);
  if (v9)
  {
    sub_43D0(v9);
  }

  v10 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  return a1;
}

void sub_1AB4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1298(a1);
}

void sub_1AB5C(uint64_t a1, uint64_t a2)
{
  sub_1A95C(a1, a2);
  v3 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "MIDIProtocolNegotiator.cpp";
    v15 = 1024;
    v16 = 201;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] MIDIProtocolNegotiatior::negotiateProtocol()", buf, 0x12u);
  }

  v11 = 2;
  v12 = 512;
  v4 = sub_4FBC(*(a1 + 16), 127, *(a1 + 320), 0xFFFFFFFu, 0x70u, &v11, 5);
  sub_1A95C(v4, v5);
  v6 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "MIDIProtocolNegotiator.cpp";
    v15 = 1024;
    v16 = 209;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating] Send Discovery message", buf, 0x12u);
  }

  *(a1 + 328) = 1;
  if ((*(**(a1 + 16) + 24))(*(a1 + 16)))
  {
    sub_1C8C4(a1, dbl_21F10[*(a1 + 328) == 1]);
  }

  else
  {
    sub_1AD68(a1, v7);
  }

  sub_1A95C(v8, v9);
  v10 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v14 = "MIDIProtocolNegotiator.cpp";
    v15 = 1024;
    v16 = 220;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] MIDIProtocolNegotiatior::negotiateProtocol()", buf, 0x12u);
  }
}

void sub_1AD68(uint64_t result, uint64_t a2)
{
  if ((*(result + 332) & 1) == 0)
  {
    sub_1A95C(result, a2);
    v3 = qword_2C168;
    if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "MIDIProtocolNegotiator.cpp";
      v6 = 1024;
      v7 = 460;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d [timeout]", &v4, 0x12u);
    }

    if (*(result + 128))
    {
      MIDITimerTaskDispose();
      *(result + 128) = 0;
    }

    *(result + 332) = 1;
    sub_1C3E0(result, 0);
  }
}

uint64_t sub_1AE50(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 3758096385;
  if (a2 <= 3)
  {
    v4 = a2;
    v6 = *(a1 + 8 * a2 + 160);
    if (v6)
    {
      v7 = *(*(a1 + 136) + 16 * a2);
      v8 = *(v7 + 44);
      v9 = *(a1 + 208);
      if (v8 != 1 || (*(a1 + 208) & 1) != 0)
      {
        *(v7 + 44) = 1;
        if (((v8 | v9) & 1) == 0 || a3)
        {
          *(a1 + 208) = 1;
          v12 = *(a1 + 24);
          sub_1A95C(a1, a2);
          v13 = qword_2C168;
          if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
          {
            if ((3 * v6) >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_1CA50();
            }

            v14 = *(v7 + 24);
            if ((3 * v6) >= 0x17)
            {
              operator new();
            }

            v28 = 3 * v6;
            bzero(&__p, 3 * v6);
            *(&__p + 3 * v6) = 0;
            if (v28 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v16 = v6;
            do
            {
              v17 = *v14++;
              *p_p = a0123456789abcd_1[v17 >> 4];
              p_p[1] = a0123456789abcd_1[v17 & 0xF];
              p_p[2] = 32;
              p_p += 3;
              --v16;
            }

            while (v16);
            v18 = &__p;
            if (v28 < 0)
            {
              v18 = __p;
            }

            *buf = 136315650;
            v30 = "MIDIProtocolNegotiator.cpp";
            v31 = 1024;
            v32 = 21;
            v33 = 2080;
            v34 = v18;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] writeAsyncWithBuffer: %s", buf, 0x1Cu);
            if (v28 < 0)
            {
              operator delete(__p);
            }
          }

          v19 = *(v12 + 104);
          atomic_fetch_add((v7 + 8), 1u);
          v20 = (*(*v19 + 272))(v19, *(v7 + 64), *(v7 + 24), v6, sub_1C510, a1);
          v22 = v20;
          if (v20)
          {
            sub_1A95C(v20, v21);
            v23 = qword_2C168;
            if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
            {
              v24 = *(v7 + 64);
              v25 = *(v7 + 24);
              *buf = 136316674;
              v30 = "MIDIProtocolNegotiator.cpp";
              v31 = 1024;
              v32 = 26;
              v33 = 2048;
              v34 = v19;
              v35 = 1024;
              v36 = v24;
              v37 = 2048;
              v38 = v25;
              v39 = 2048;
              v40 = v6;
              v41 = 1024;
              v42 = v22;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] writePipeAsync(%p, %u, %p, %lu, ...) = 0x%x", buf, 0x3Cu);
            }

            v20 = (*(*v19 + 272))(v19, *(v7 + 64), *(v7 + 24), v6, sub_1C510, a1);
            v3 = v20;
          }

          else
          {
            v3 = 0;
          }

          sub_1A95C(v20, v21);
          v10 = qword_2C168;
          if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v30 = "MIDIProtocolNegotiator.cpp";
            v31 = 1024;
            v32 = 31;
            v33 = 1024;
            LODWORD(v34) = v3;
            v11 = "%25s:%-5d [-] writeAsyncWithBuffer() = 0x%x";
            goto LABEL_31;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v3 = 3758097109;
        sub_1A95C(a1, a2);
        v10 = qword_2C168;
        if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v30 = "MIDIProtocolNegotiator.cpp";
          v31 = 1024;
          v32 = 229;
          v33 = 1024;
          LODWORD(v34) = v4;
          v11 = "%25s:%-5d [!] I/O pending on buffer %u";
LABEL_31:
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x18u);
        }
      }
    }
  }

  return v3;
}

void sub_1B280(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((*(a1 + 332) & 1) == 0)
  {
    v5 = *(a2 + 56);
    if (v5)
    {
      v5 = std::__shared_weak_count::lock(v5);
      v7 = v5;
      if (v5 && *(a2 + 48))
      {
        *(a2 + 44) = 0;
        if (a3 < 5)
        {
          v9 = 0;
        }

        else
        {
          sub_1A95C(v5, a2);
          v8 = qword_2C168;
          if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
          {
            *v20 = 136315650;
            *&v20[4] = "MIDIProtocolNegotiator.cpp";
            *&v20[12] = 1024;
            *&v20[14] = 261;
            v21 = 1024;
            v22 = a3;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDIProtocolNegotiatior::handleCIInput() - %u bytes received", v20, 0x18u);
          }

          *v20 = *(a2 + 24);
          *&v20[8] = a3 >> 2;
          v5 = sub_1B514(v20, a1 + 248 + *(a1 + 312), a1 + 312);
          v9 = v5;
          v10 = v5 + *(a1 + 312);
          *(a1 + 312) = v10;
          if (v5)
          {
            if (v10)
            {
              v11 = v10;
              v12 = (a1 + 248);
              while (*v12 != 247)
              {
                ++v12;
                if (!--v11)
                {
                  goto LABEL_18;
                }
              }
            }

            else
            {
              v12 = (a1 + 248);
            }

            if (&v10[a1 + 248] != v12)
            {
              sub_1B9C4(a1, a2);
LABEL_21:
              if (v7)
              {
                sub_43D0(v7);
              }

              return;
            }
          }
        }

LABEL_18:
        sub_1A95C(v5, a2);
        v18 = qword_2C168;
        if (!os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        v19 = *(a1 + 312);
        *v20 = 136315906;
        *&v20[4] = "MIDIProtocolNegotiator.cpp";
        *&v20[12] = 1024;
        *&v20[14] = 269;
        v21 = 1024;
        v22 = v9;
        v23 = 1024;
        v24 = v19;
        v14 = "%25s:%-5d [Negotiating] Read %u bytes (%u total), reading more ...";
        v15 = v18;
        v16 = OS_LOG_TYPE_INFO;
        v17 = 30;
LABEL_20:
        _os_log_impl(&dword_0, v15, v16, v14, v20, v17);
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
    }

    sub_1A95C(v5, a2);
    v13 = qword_2C168;
    if (!os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *v20 = 136315394;
    *&v20[4] = "MIDIProtocolNegotiator.cpp";
    *&v20[12] = 1024;
    *&v20[14] = 255;
    v14 = "%25s:%-5d [readCallback: owning USBMIDIDevice destroyed]";
    v15 = v13;
    v16 = OS_LOG_TYPE_DEBUG;
    v17 = 18;
    goto LABEL_20;
  }
}

uint64_t sub_1B514(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = a1;
  v5 = *a1;
  v6 = a1[1];
  sub_1A95C(a1, a2);
  v7 = qword_2C168;
  v8 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    *buf = 136315906;
    v48 = "MIDIProtocolNegotiator.cpp";
    v49 = 1024;
    v50 = 45;
    v51 = 1024;
    v52 = v6;
    v53 = 1024;
    v54 = v3 - a2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] appendSysExToBuffer() - wordCount %u, %u bytes available", buf, 0x1Eu);
  }

  v10 = &unk_21000;
  if (v6)
  {
    v11 = 0;
    v12 = 0;
    v13 = v5 + 4 * v6;
    v45 = v4;
    while (1)
    {
      v14 = (*v4 + 4 * v11);
      if (v14 >= v13)
      {
        goto LABEL_53;
      }

      v15 = *v14;
      v16 = *v14 >> 28;
      if (v16 == 1)
      {
        sub_1A95C(v8, v9);
        v24 = qword_2C168;
        v8 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          v25 = *v14;
          *buf = 136315650;
          v48 = "MIDIProtocolNegotiator.cpp";
          v49 = 1024;
          v50 = 54;
          v51 = 1024;
          v52 = v25;
          v26 = v24;
          v27 = OS_LOG_TYPE_DEBUG;
          v28 = "%25s:%-5d      skipping msg: 0x%08x";
LABEL_21:
          _os_log_impl(&dword_0, v26, v27, v28, buf, 0x18u);
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = v6;
          v18 = v10;
          __src = 0;
          v19 = (v15 >> 20) & 0xF;
          v20 = v19 == 3;
          v21 = v19 == 3 || v19 == 0;
          LODWORD(v22) = HIWORD(v15) & 0xF;
          if (v19 >= 2)
          {
            v22 = v22;
          }

          else
          {
            v22 = (v22 + 1);
          }

          v23 = v22 + v21;
          if ((v22 + v21) <= 8)
          {
            v31 = v19 == 3 || v19 == 0;
            v32 = v22 + v21;
            if (v31)
            {
              *(&v59 + v23) = -9;
              v32 = v23 - 1;
            }

            if (v19 > 1)
            {
              p_src = &__src;
            }

            else
            {
              LOBYTE(__src) = -16;
              --v32;
              p_src = &__src + 1;
            }

            if (v32 >= 1)
            {
              v34 = 0;
              for (i = 0; i != v32; ++i)
              {
                if (i <= 5)
                {
                  if (i >= 2)
                  {
                    v37 = 40;
                  }

                  else
                  {
                    v37 = 8;
                  }

                  v36 = v14[i > 1] >> (v37 + v34);
                }

                else
                {
                  LOBYTE(v36) = 0;
                }

                p_src[i] = v36;
                v34 -= 8;
              }
            }
          }

          else
          {
            LODWORD(v23) = 0;
          }

          sub_1A95C(v8, v9);
          v38 = qword_2C168;
          if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
          {
            v39 = *v14;
            v40 = v14[1];
            v41 = &unk_2064F;
            if (v19 == 3)
            {
              v41 = "[END]";
            }

            *buf = 136316418;
            v48 = "MIDIProtocolNegotiator.cpp";
            v49 = 1024;
            v50 = 60;
            v51 = 1024;
            v52 = v39;
            v53 = 1024;
            v54 = v40;
            v55 = 1024;
            v56 = v23;
            v57 = 2080;
            v58 = v41;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d      sysex 0x%08x 0x%08x (%u bytes converted) %s", buf, 0x2Eu);
          }

          v8 = memcpy((a2 + v12), &__src, v23);
          v12 += v23;
          v10 = v18;
          v6 = v17;
          v4 = v45;
          goto LABEL_46;
        }

        sub_1A95C(v8, v9);
        v29 = qword_2C168;
        v8 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR);
        if (v8)
        {
          v30 = *v14;
          *buf = 136315650;
          v48 = "MIDIProtocolNegotiator.cpp";
          v49 = 1024;
          v50 = 51;
          v51 = 1024;
          v52 = v30;
          v26 = v29;
          v27 = OS_LOG_TYPE_ERROR;
          v28 = "%25s:%-5d [!] appendSysExToBuffer() - sysex message cannot be interrupted with message with first word 0x%x";
          goto LABEL_21;
        }
      }

      v20 = 0;
LABEL_46:
      v11 = v11 + byte_21EC8[*v14 >> 28];
      if (v11 >= v6 || v20)
      {
        goto LABEL_53;
      }
    }
  }

  v12 = 0;
LABEL_53:
  sub_1A95C(v8, v9);
  v43 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    *buf = v10[415];
    v48 = "MIDIProtocolNegotiator.cpp";
    v49 = 1024;
    v50 = 66;
    v51 = 1024;
    v52 = v12;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] appendSysExToBuffer() - %u total bytes copied", buf, 0x18u);
  }

  return v12;
}

void sub_1B9C4(uint64_t a1, uint64_t a2)
{
  sub_1A95C(a1, a2);
  v3 = qword_2C168;
  v4 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v6 = *(a1 + 312);
    if (v6)
    {
      if ((3 * v6) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1CA50();
      }

      v7 = (a1 + 248);
      if ((3 * v6) >= 0x17)
      {
        operator new();
      }

      v57 = 3 * v6;
      bzero(&__p, 3 * v6);
      *(&__p + 3 * v6) = 0;
      if (v57 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      do
      {
        v10 = *v7++;
        *p_p = a0123456789abcd_1[v10 >> 4];
        p_p[1] = a0123456789abcd_1[v10 & 0xF];
        p_p[2] = 32;
        p_p += 3;
        --v6;
      }

      while (v6);
      v8 = &__p;
      if (v57 < 0)
      {
        v8 = __p;
      }
    }

    else
    {
      v57 = 0;
      LOBYTE(__p) = 0;
      v8 = &__p;
    }

    *buf = 136315650;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v59 = 1024;
    v60 = 278;
    v61 = 2080;
    *v62 = v8;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [handleMessage] RCV: %s", buf, 0x1Cu);
    if (v57 < 0)
    {
      operator delete(__p);
    }
  }

  v11 = *(a1 + 328);
  if (v11 == 1)
  {
    v4 = sub_1CA68(a1 + 248, *(a1 + 312), 113, 31);
    if (v4)
    {
      v12 = *(a1 + 128);
      if (v12)
      {
        v12 = MIDITimerTaskDispose();
        *(a1 + 128) = 0;
      }

      *(a1 + 324) = *(a1 + 254) & 0x7F | ((*(a1 + 255) & 0x7F) << 7) & 0x3FFF | ((*(a1 + 256) & 0x7F) << 14) & 0xF01FFFFF | ((*(a1 + 257) & 0x7F) << 21);
      sub_1A95C(v12, v5);
      v13 = qword_2C168;
      if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 324);
        *buf = 136315906;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v59 = 1024;
        v60 = 283;
        v61 = 1024;
        *v62 = v14;
        *&v62[4] = 1024;
        *&v62[6] = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d [handleMessage: Discovery Reply] Discovered MUID 0x%x (%u)", buf, 0x1Eu);
      }

      *&buf[8] = 0;
      *buf = 0x20000000001;
      sub_4FBC(*(a1 + 16), 127, *(a1 + 320), *(a1 + 324), 0x10u, buf, 10);
      *(a1 + 328) = 2;
      if ((*(**(a1 + 16) + 24))())
      {
        sub_1C8C4(a1, dbl_21F10[*(a1 + 328) == 1]);
        v16 = 0;
      }

      else
      {
        v16 = 3758097133;
      }

      goto LABEL_24;
    }

    v11 = *(a1 + 328);
  }

  if (v11 != 2)
  {
LABEL_60:
    if (v11 == 4)
    {
      v4 = sub_1CA68(a1 + 248, *(a1 + 312), 20, 64);
      if (v4)
      {
        v39 = 0;
        while (v39 == *(a1 + v39 + 263))
        {
          if (++v39 == 48)
          {
            v40 = *(a1 + 128);
            if (v40)
            {
              v40 = MIDITimerTaskDispose();
              *(a1 + 128) = 0;
            }

            sub_1A95C(v40, v5);
            v41 = qword_2C168;
            if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "MIDIProtocolNegotiator.cpp";
              v59 = 1024;
              v60 = 343;
              _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating] Protocol Test: confirming new protocol established...", buf, 0x12u);
            }

            sub_4FBC(*(a1 + 16), 127, *(a1 + 320), *(a1 + 324), 0x15u, 0, 0);
            v42 = (*(**(a1 + 16) + 24))();
            if (!v42)
            {
              v16 = 3758097133;
              goto LABEL_25;
            }

            sub_1A95C(v42, v15);
            v43 = qword_2C168;
            if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *&buf[4] = "MIDIProtocolNegotiator.cpp";
              v59 = 1024;
              v60 = 349;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating] Done with negotiation.", buf, 0x12u);
            }

            sub_1C3E0(a1, 8);
            goto LABEL_82;
          }
        }
      }
    }

    if (*(a1 + 312) >= 5uLL && *(a1 + 252) == 127)
    {
      sub_1A95C(v4, v5);
      v44 = qword_2C168;
      if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v59 = 1024;
        v60 = 353;
        v45 = "%25s:%-5d [Negotiating] NAK received";
        v46 = v44;
        v47 = 18;
LABEL_81:
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
      }
    }

    else
    {
      sub_1A95C(v4, v5);
      v48 = qword_2C168;
      if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
      {
        v49 = *(a1 + 248);
        v50 = *(a1 + 328);
        v51 = *(a1 + 312);
        v52 = v51 - 1;
        if (!v51)
        {
          v52 = 0;
        }

        v53 = *(a1 + 248 + v52);
        *buf = 136316418;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v59 = 1024;
        v60 = 355;
        v61 = 1024;
        *v62 = v50;
        *&v62[4] = 1024;
        *&v62[6] = v51;
        v63 = 1024;
        v64 = v49;
        v65 = 1024;
        v66 = v53;
        v45 = "%25s:%-5d [!]  status = %d, msgSize = %u (%02x ... %02x)";
        v46 = v48;
        v47 = 42;
        goto LABEL_81;
      }
    }

LABEL_82:
    bzero((a1 + 248), 0x40uLL);
    *(a1 + 312) = 0;
    return;
  }

  v17 = *(a1 + 312);
  v4 = sub_1CA68(a1 + 248, v17, 17, v17);
  if (v17 <= 0x11 || !v4)
  {
    v11 = *(a1 + 328);
    goto LABEL_60;
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    v19 = MIDITimerTaskDispose();
    *(a1 + 128) = 0;
  }

  sub_1A95C(v19, v5);
  v20 = qword_2C168;
  v21 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG);
  if (v21)
  {
    *buf = 136315394;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v59 = 1024;
    v60 = 296;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating: Protocol Discovery] Examining protocols ...", buf, 0x12u);
  }

  v23 = *(a1 + 263);
  if (*(a1 + 263))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 264;
    do
    {
      v28 = *(a1 + v27);
      v29 = *(a1 + v27 + 2);
      sub_1A95C(v21, v22);
      v30 = qword_2C168;
      v21 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        *buf = 136315906;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v59 = 1024;
        v60 = 309;
        v61 = 1024;
        *v62 = v28;
        *&v62[4] = 1024;
        *&v62[6] = v29;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating: Protocol Discovery] Found protocol: 0x%x, extension bitmap 0x%x", buf, 0x1Eu);
      }

      v31 = ((v29 & 3) == 0) | v24;
      if (v28 != 1)
      {
        v31 = v24;
      }

      if (v28 == 2)
      {
        v25 |= (v29 & 1) == 0;
      }

      else
      {
        v24 = v31;
      }

      ++v26;
      v27 += 5;
    }

    while (v26 < v23);
    if ((v24 | v25))
    {
      sub_1A95C(v21, v22);
      v32 = qword_2C168;
      if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
      {
        v33 = "MIDI-1UP";
        *buf = 136315650;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        if (v25)
        {
          v33 = "MIDI 2.0";
        }

        v59 = 1024;
        v60 = 324;
        v61 = 2080;
        *v62 = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating: Protocol Discovery] Setting %s protocol...", buf, 0x1Cu);
      }

      if (v25)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      LOBYTE(__p) = v34;
      v35 = *(a1 + 16);
      *(&__p + 1) = 0;
      sub_4FBC(v35, 127, *(a1 + 320), *(a1 + 324), 0x12u, &__p, 5);
      *(a1 + 328) = 3;
      v36 = (*(**(a1 + 16) + 24))();
      v16 = 3758097133;
      if (v36)
      {
        sub_1A95C(v36, v15);
        v37 = qword_2C168;
        if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "MIDIProtocolNegotiator.cpp";
          v59 = 1024;
          v60 = 332;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating: Test Protocol] Sending protocol test data ...", buf, 0x12u);
        }

        v38 = *(a1 + 16);
        *(a1 + 328) = 4;
        sub_4FBC(v38, 127, *(a1 + 320), *(a1 + 324), 0x13u, 0, 0);
        if ((*(**(a1 + 16) + 24))())
        {
          sub_1C8C4(a1, dbl_21F10[*(a1 + 328) == 1]);
          v16 = 0;
          *(a1 + 56) = v34;
        }
      }

LABEL_24:
      if (v16)
      {
LABEL_25:
        sub_1FD18(v16, v15);
      }

      goto LABEL_82;
    }
  }

  sub_1A95C(v21, v22);
  v54 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v59 = 1024;
    v60 = 317;
    _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d [Negotiation Failure] No usable protocols discovered", buf, 0x12u);
  }

  sub_1AD68(a1, v55);
}

void sub_1C3E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1A95C(a1, a2);
  v4 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_INFO))
  {
    v6 = "success";
    v10 = "MIDIProtocolNegotiator.cpp";
    v9 = 136315650;
    if (!v2)
    {
      v6 = "failure";
    }

    v11 = 1024;
    v12 = 433;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [*] MIDIProtocolNegotiator::finished(%s)", &v9, 0x1Cu);
  }

  *(a1 + 332) = 1;
  *(a1 + 328) = v2;
  v7 = *(a1 + 24);
  if (v7 && (*(v7 + 184) & 1) == 0)
  {
    if ((v2 - 5) >= 4)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x2010201u >> (8 * (v2 - 5));
    }

    *(a1 + 56) = v8;
    sub_1C774(a1, v5);
  }
}

void sub_1C510(void *a1, uint64_t a2)
{
  if (a2 == -536870165)
  {
    sub_1A95C(a1, a2);
    v2 = qword_2C168;
    if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "MIDIProtocolNegotiator.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 367;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [write aborted]", buf, 0x12u);
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  sub_FEDC(buf, a1);
  v3 = *buf;
  if (*buf && (*(*buf + 332) & 1) == 0)
  {
    std::mutex::lock((*buf + 64));
    v4 = *buf;
    v5 = *(*buf + 224);
    v13 = v5;
    if (!v5)
    {
LABEL_23:
      std::mutex::unlock(v3 + 1);
      goto LABEL_24;
    }

    v12 = &v13;
    *(v5 + 44) = 0;
    v6 = *(v4 + 216);
    *(v4 + 216) = v6 + 1;
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 + 1;
    }

    v8 = (*(v4 + 136) + 16 * v7);
    v9 = *v8;
    if (*(*v8 + 44) == 1)
    {
      *(v4 + 216) = v7;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v4 + 232);
      *(v4 + 224) = v9;
      *(v4 + 232) = v10;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = *(v4 + 232);
      *(v4 + 224) = 0;
      *(v4 + 232) = 0;
      if (!v11)
      {
LABEL_18:
        if (*(*buf + 24))
        {
          if (*(*buf + 224))
          {
            sub_1AE50(*buf, *(*buf + 216), 1);
          }

          else
          {
            *(*buf + 208) = 0;
          }
        }

        sub_1C708(&v12);
        goto LABEL_23;
      }
    }

    sub_43D0(v11);
    goto LABEL_18;
  }

LABEL_24:
  if (*&buf[8])
  {
    sub_43D0(*&buf[8]);
  }
}

void sub_1C6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v13 = v12;
  sub_1C708(&a9);
  std::mutex::unlock(v13 + 1);
  if (a12)
  {
    sub_43D0(a12);
  }

  _Unwind_Resume(a1);
}

atomic_uint ***sub_1C708(atomic_uint ***a1)
{
  v2 = **a1;
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_1C774(uint64_t a1, uint64_t a2)
{
  sub_1A95C(a1, a2);
  v3 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 56);
    if (*(a1 + 41))
    {
      v5 = *(a1 + 40) | 0x80;
    }

    else
    {
      v5 = *(a1 + 40);
    }

    if (*(a1 + 49))
    {
      v6 = *(a1 + 48) | 0x80;
    }

    else
    {
      v6 = *(a1 + 48);
    }

    v10 = 136316162;
    v11 = "MIDIProtocolNegotiator.cpp";
    v12 = 1024;
    v13 = 424;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDIProtocolNegotiator::completeNegotiation(selectedProtocol:%x) - inEP: 0x%x, outEP: 0x%x", &v10, 0x24u);
  }

  v7 = *(a1 + 24);
  if (v7 && (*(v7 + 184) & 1) == 0)
  {
    if (*(a1 + 41))
    {
      v8 = *(a1 + 40) | 0x80;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    if (*(a1 + 49))
    {
      v9 = *(a1 + 48) | 0x80;
    }

    else
    {
      v9 = *(a1 + 48);
    }

    sub_95E8(v7, v8, v9, *(a1 + 56));
  }
}

void sub_1C8C4(uint64_t a1, double a2)
{
  if (!*(a1 + 128))
  {
    *(a1 + 128) = MIDITimerTaskCreate();
  }

  mach_absolute_time();
  __udivti3();
  WakeTime = MIDITimerTaskSetNextWakeTime();
  sub_1A95C(WakeTime, v4);
  v5 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "MIDIProtocolNegotiator.cpp";
    v8 = 1024;
    v9 = 473;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating] Timeout %f ms from now", &v6, 0x1Cu);
  }
}

void sub_1C9FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1298(a1);
}

void sub_1CA08(uint64_t a1)
{
  v1 = *(a1 + 212);
  if (v1 == 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 + 1;
  }

  *(a1 + 212) = v2;
  v3 = *(a1 + 136);
  v4 = *(v3 + 16 * v2);
  v5 = *(v3 + 16 * v2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 200);
  *(a1 + 192) = v4;
  if (v6)
  {
    sub_43D0(v6);
  }
}

BOOL sub_1CA68(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a2 < 5)
  {
    return 0;
  }

  v8 = a1;
  v9 = *(a1 + 4);
  if (a2 != a4)
  {
    sub_1A95C(a1, a2);
    v10 = qword_2C168;
    a1 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG);
    if (a1)
    {
      v14 = 136315906;
      v15 = "MIDIProtocolNegotiator.cpp";
      v16 = 1024;
      v17 = 75;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] spanMatchesTypeAndLength() - msgSize %u does not match supplied length %u", &v14, 0x1Eu);
    }
  }

  if (v9 != a3)
  {
    sub_1A95C(a1, a2);
    v11 = qword_2C168;
    if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v8 + 4);
      v14 = 136315906;
      v15 = "MIDIProtocolNegotiator.cpp";
      v16 = 1024;
      v17 = 77;
      v18 = 1024;
      v19 = v12;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] spanMatchesTypeAndLength() - subID2 %u does not match supplied type %u", &v14, 0x1Eu);
    }
  }

  return a2 == a4 && v9 == a3;
}

void sub_1CC8C(void *a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28BD8;
  sub_1CCE8((a1 + 3), a2, a3, a4);
}

void sub_1CCE8(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10164(a1, v4, v6, *a4);
}

void sub_1CD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1CD64(std::mutex **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  std::mutex::lock(*a1 + 1);
  sub_1A95C(v4, v5);
  v6 = qword_2C168;
  v7 = os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG);
  v60 = v3;
  v63 = a2;
  if (v7)
  {
    v10 = *a2;
    v9 = a2[1];
    v11 = v9 - *a2;
    if (v9 == *a2)
    {
      v66 = 0;
      LOBYTE(__p) = 0;
      p_p = &__p;
    }

    else
    {
      if ((3 * v11) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1CA50();
      }

      if ((3 * v11) >= 0x17)
      {
        operator new();
      }

      v66 = 3 * v11;
      bzero(&__p, 3 * v11);
      *(&__p + 3 * v11) = 0;
      if (v66 >= 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      do
      {
        v14 = *v10++;
        *v13 = a0123456789abcd_1[v14 >> 4];
        v13[1] = a0123456789abcd_1[v14 & 0xF];
        v13[2] = 32;
        v13 += 3;
      }

      while (v10 != v9);
      p_p = &__p;
      if (v66 < 0)
      {
        p_p = __p;
      }
    }

    *buf = 136315906;
    v68 = "MIDIProtocolNegotiator.cpp";
    v69 = 1024;
    v70 = 154;
    v71 = 1024;
    v72 = v11;
    v73 = 2080;
    v74 = p_p;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] MIDICIMessageEmitter %u bytes: %s", buf, 0x22u);
    if (v66 < 0)
    {
      operator delete(__p);
    }
  }

  if (!*&v3->__m_.__opaque[16])
  {
    goto LABEL_96;
  }

  v15 = a2[1] - *a2;
  if (!v15)
  {
    goto LABEL_96;
  }

  v16 = v15 - (**a2 == 240) - ((*a2)[v15 - 1] == 247);
  if (v16)
  {
    if (v16 % 6)
    {
      v17 = v16 / 6 + 1;
    }

    else
    {
      v17 = v16 / 6;
    }

    v18 = 8 * v17;
  }

  else
  {
    v18 = 8;
  }

  v64 = v18;
  v19 = 0;
  if (!v18)
  {
LABEL_87:
    if (v64 != v19)
    {
      sub_1A95C(v7, v8);
      v53 = qword_2C168;
      if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v68 = "MIDIProtocolNegotiator.cpp";
        v69 = 1024;
        v70 = 184;
        v71 = 1024;
        v72 = v19;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] MIDICIMessageEmitter did not copy %u bytes", buf, 0x18u);
      }
    }

    goto LABEL_96;
  }

  v19 = 0;
  v20 = 0;
  v61 = &v3[2].__m_.__opaque[24];
  while (1)
  {
    sig = v3[3].__m_.__sig;
    v22 = *a2;
    v23 = *(sig + 40);
    if (v23)
    {
      v62 = v19;
      v24 = 0;
      v25 = 0;
      LODWORD(v26) = 0;
      v27 = &v22[v20];
      v28 = *(sig + 24);
      v29 = v28 + v23;
      while (1)
      {
        if (v26)
        {
          v30 = 2;
        }

        else
        {
          LODWORD(v26) = v27[v24] == 240;
          if (v27[v24] == 240)
          {
            v30 = 1;
          }

          else
          {
            v30 = 2;
          }
        }

        v31 = &v27[v26];
        v32 = v31;
        if ((v15 - v26) >= 6u)
        {
          v33 = 6;
        }

        else
        {
          v33 = (v15 - v26);
        }

        if (v15 != v26)
        {
          v34 = v33;
          v32 = &v27[v26];
          while (*v32 != 247)
          {
            ++v32;
            if (!--v34)
            {
              goto LABEL_43;
            }
          }
        }

        if (&v31[v33] == v32)
        {
LABEL_43:
          if ((v15 - v26) == 7)
          {
            LODWORD(v26) = v26 + 7;
            v35 = 3;
          }

          else
          {
            v35 = v30;
          }
        }

        else
        {
          LODWORD(v26) = v26 + v33;
          LODWORD(v33) = v33 - 1;
          v35 = 3;
        }

        v36 = v33 >= 6 ? 6 : v33;
        if (!v33)
        {
          break;
        }

        v37 = *v31;
        if (v33 == 1)
        {
          v38 = 0;
          v39 = 0;
LABEL_53:
          v40 = 0;
LABEL_54:
          v41 = 0;
LABEL_55:
          v42 = 0;
          goto LABEL_56;
        }

        v40 = v31[1];
        if (v33 < 3)
        {
          v38 = 0;
          v39 = 0;
          goto LABEL_54;
        }

        v39 = v31[2];
        if (v33 == 3)
        {
          v38 = 0;
          goto LABEL_54;
        }

        v41 = v31[3];
        if (v33 < 5)
        {
          v38 = 0;
          goto LABEL_55;
        }

        v38 = v31[4];
        if (v33 == 5)
        {
          goto LABEL_55;
        }

        v42 = v31[5] & 0x7F;
LABEL_56:
        if (&v25[v28 + 8] <= v29)
        {
          *&v25[v28] = (v35 << 20) | (v36 << 16) | ((v37 & 0x7F) << 8) | v40 & 0x7F | ((((v39 & 0x7F) << 24) | ((v41 & 0x7F) << 16) | ((v38 & 0x7F) << 8) | v42) << 32) | 0x30000000;
          if (v35 == 3)
          {
            v43 = 0;
          }

          else
          {
            v43 = v33;
          }

          if ((atomic_load_explicit(byte_2C180, memory_order_acquire) & 1) == 0)
          {
            sub_1FDDC();
          }

          v25 += 8;
          v26 = (v43 + v26);
          v44 = qword_2C178;
          v7 = os_log_type_enabled(qword_2C178, OS_LOG_TYPE_DEBUG);
          if (v7)
          {
            *buf = 136316162;
            v68 = "USBMIDIUMPTranslation.h";
            v69 = 1024;
            v70 = 456;
            v71 = 1024;
            v72 = v26;
            v73 = 2048;
            v74 = v25;
            v75 = 1024;
            v76 = v15 - v26;
            _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDI1SysExToUMPSysEx() - @ index %u: %lu UMP bytes written so far, %u legacy MIDI bytes remain", buf, 0x28u);
          }

          if (v35 != 3)
          {
            v24 = v26;
            if (v15 > v26)
            {
              continue;
            }
          }
        }

        LODWORD(v15) = v15 - v26;
        a2 = v63;
        v22 = *v63;
        v3 = v60;
        v19 = v62;
        goto LABEL_77;
      }

      v38 = 0;
      v39 = 0;
      v37 = 0;
      goto LABEL_53;
    }

    LODWORD(v15) = 0;
    LODWORD(v25) = 0;
LABEL_77:
    v45 = *&v3[3].__m_.__opaque[12];
    *&v61[8 * v45] = v25;
    if (!v25)
    {
      break;
    }

    v46 = a2[1];
    v47 = sub_1AE50(v3, v45, 0);
    v49 = v47;
    if (v47)
    {
      sub_1A95C(v47, v48);
      v59 = qword_2C168;
      if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v68 = "MIDIProtocolNegotiator.cpp";
        v69 = 1024;
        v70 = 174;
        v71 = 1024;
        v72 = v49;
        v56 = "%25s:%-5d [!] copyEmitter: write failed with err 0x%x";
        v57 = v59;
        v58 = 24;
LABEL_94:
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
      }

      goto LABEL_95;
    }

    if (!*&v3[3].__m_.__opaque[24])
    {
      v51 = v3[3].__m_.__sig;
      v50 = *v3[3].__m_.__opaque;
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      v52 = *&v3[3].__m_.__opaque[32];
      *&v3[3].__m_.__opaque[24] = v51;
      *&v3[3].__m_.__opaque[32] = v50;
      if (v52)
      {
        sub_43D0(v52);
      }

      *&v3[3].__m_.__opaque[16] = *&v3[3].__m_.__opaque[12];
    }

    v19 += v25;
    sub_1CA08(v3);
    if (v19 < v64)
    {
      v20 = v46 - (v22 + v15);
      if (v15)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  sub_1A95C(v7, v45);
  v54 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v68 = "MIDIProtocolNegotiator.cpp";
    v69 = 1024;
    v70 = 169;
    v56 = "%25s:%-5d [!] copyEmitter: no bytes copied";
    v57 = v54;
    v58 = 18;
    goto LABEL_94;
  }

LABEL_95:
  sub_1AD68(v3, v55);
LABEL_96:
  std::mutex::unlock(v3 + 1);
}