void IOHIDKeyboardFilter::setPropertyForClient(IOHIDKeyboardFilter *this, const __CFString *a2, const __CFBoolean *a3, __CFString *a4)
{
  v75 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *MEMORY[0x29EDB8EF8];
  }

  if (!a2)
  {
    return;
  }

  v6 = a3;
  v9 = *(this + 89);
  v10 = *(this + 90);
  v11 = _IOHIDLogCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    RegistryID = *(this + 3);
    if (RegistryID)
    {
      RegistryID = IOHIDServiceGetRegistryID();
    }

    *buf = 138413058;
    *&buf[4] = RegistryID;
    *&buf[12] = 2112;
    *&buf[14] = a2;
    *&buf[22] = 2112;
    *&buf[24] = v6;
    v73 = 2112;
    v74 = a4;
    _os_log_debug_impl(&dword_29D42A000, v11, OS_LOG_TYPE_DEBUG, "[%@] IOHIDKeyboardFilter::setPropertyForClient: %@  %@  %@\n", buf, 0x2Au);
  }

  v12 = (this + 360);
  if (CFStringCompare(a2, @"HIDStickyKeysDisabled", 0) == kCFCompareEqualTo)
  {
    if (v6)
    {
      v10 = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      v10 = 0;
    }

    v14 = _IOHIDLogCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D433B2C();
    }

    goto LABEL_57;
  }

  if (CFStringCompare(a2, @"HIDStickyKeysOn", 0) == kCFCompareEqualTo)
  {
    if (v6)
    {
      v9 = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_58;
  }

  if (CFStringCompare(a2, @"HIDStickyKeysShiftToggles", 0) == kCFCompareEqualTo)
  {
    if (v6)
    {
      v15 = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      v15 = 0;
    }

    *(this + 88) = v15;
    *(this + 77) = 0;
    v14 = _IOHIDLogCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D433AF4();
    }

    goto LABEL_57;
  }

  if (CFStringCompare(a2, @"HIDInitialKeyRepeat", 0) == kCFCompareEqualTo)
  {
    if (!v6)
    {
      goto LABEL_58;
    }

    valuePtr[0] = 0;
    CFNumberGetValue(v6, kCFNumberSInt64Type, valuePtr);
    *(this + 47) = valuePtr[0] / 0xF4240;
    v16 = _IOHIDLogCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D433AA8();
    }

    goto LABEL_41;
  }

  if (CFStringCompare(a2, @"HIDKeyRepeat", 0) == kCFCompareEqualTo)
  {
    if (!v6)
    {
      goto LABEL_58;
    }

    valuePtr[0] = 0;
    CFNumberGetValue(v6, kCFNumberSInt64Type, valuePtr);
    *(this + 48) = valuePtr[0] / 0xF4240;
    v16 = _IOHIDLogCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D433A5C();
    }

LABEL_41:

    goto LABEL_58;
  }

  if (CFStringCompare(a2, @"HIDCapsLockState", 0) == kCFCompareEqualTo)
  {
    if (v6)
    {
      TypeID = CFBooleanGetTypeID();
      LODWORD(v6) = TypeID == CFGetTypeID(v6) && CFBooleanGetValue(v6) != 0;
    }

    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = @"HIDCapsLockState";
    }

    IOHIDKeyboardFilter::setCapsLockState(this, v6, v26);
    v14 = _IOHIDLogCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(this + 3);
      if (v27)
      {
        v27 = IOHIDServiceGetRegistryID();
      }

      sub_29D433A14(v27, buf);
    }

    goto LABEL_57;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBB0E0]))
  {
    if (v6)
    {
      *(this + 57) = *MEMORY[0x29EDBB0E8];
      v13 = *MEMORY[0x29EDBB100];
      if (CFEqual(v6, *MEMORY[0x29EDBB100]) || (v13 = *MEMORY[0x29EDBB0F8], CFEqual(v6, *MEMORY[0x29EDBB0F8])) || (v13 = *MEMORY[0x29EDBB0F0], CFEqual(v6, *MEMORY[0x29EDBB0F0])))
      {
        *(this + 57) = v13;
      }

      IOHIDKeyboardFilter::updateCapslockLED(this, a4);
    }

    v14 = _IOHIDLogCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D4337D0();
    }

LABEL_57:

    goto LABEL_58;
  }

  if (CFStringCompare(a2, @"HIDCapsLockLEDInhibit", 0) == kCFCompareEqualTo)
  {
    *(this + 112) = CFBooleanGetValue(v4);
    IOHIDKeyboardFilter::updateCapslockLED(this, a4);
    v14 = _IOHIDLogCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D4339DC();
    }

    goto LABEL_57;
  }

  if (CFStringCompare(a2, @"HIDCapsLockLEDDarkWakeInhibit", 0) == kCFCompareEqualTo)
  {
    *(this + 113) = CFBooleanGetValue(v4);
    v14 = _IOHIDLogCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D4339A4();
    }

    goto LABEL_57;
  }

  if (CFStringCompare(a2, @"HIDKeyboardModifierMappingPairs", 0) == kCFCompareEqualTo)
  {
    if (!v6)
    {
      goto LABEL_58;
    }

    v28 = CFGetTypeID(v6);
    v29 = CFArrayGetTypeID();
    if (v28 != v29)
    {
      goto LABEL_58;
    }

    if (!IOHIDKeyboardFilter::allowRemapping(v29, v6, a4))
    {
      return;
    }

    memset(buf, 170, 24);
    IOHIDKeyboardFilter::createMapFromArrayOfPairs(buf, v6);
    IOHIDKeyboardFilter::resetModifiedKeyState(this);
    sub_29D432ABC(v68, buf);
    IOHIDKeyboardFilter::resetModifiedKeyState(this, v68);
    sub_29D431EF4(v68, v69);
    if (this + 112 != buf)
    {
      sub_29D432DE4(this + 14, *buf, &buf[8]);
    }

    v30 = *(this + 15);
    if (v30)
    {
      v31 = (this + 120);
      do
      {
        v32 = v30[4];
        v33 = v32 >= 0x700000039;
        v34 = v32 < 0x700000039;
        if (v33)
        {
          v31 = v30;
        }

        v30 = v30[v34];
      }

      while (v30);
      if (v31 != (this + 120) && v31[4] < 0x70000003AuLL)
      {
        if (a4)
        {
          v35 = a4;
        }

        else
        {
          v35 = @"HIDKeyboardModifierMappingPairs";
        }

        IOHIDKeyboardFilter::setCapsLockState(this, 0, v35);
      }
    }

    v36 = _IOHIDLogCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = *(this + 3);
      if (v37)
      {
        v37 = IOHIDServiceGetRegistryID();
      }

      sub_29D43396C(v37, v71);
    }

    goto LABEL_148;
  }

  if (CFStringCompare(a2, @"HIDFKeyMode", 0) == kCFCompareEqualTo)
  {
    if (v6)
    {
      v38 = CFGetTypeID(v6);
      if (v38 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, this + 288);
        v39 = _IOHIDLogCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = *(this + 3);
          if (v40)
          {
            v40 = IOHIDServiceGetRegistryID();
          }

          v41 = *(this + 72);
          *buf = 138412802;
          *&buf[4] = v40;
          *&buf[12] = 1024;
          *&buf[14] = v41;
          *&buf[18] = 2112;
          *&buf[20] = a4;
          _os_log_impl(&dword_29D42A000, v39, OS_LOG_TYPE_INFO, "[%@] IOHIDKeyboardFilter::setPropertyForClient _fnKeyMode: %x %@\n", buf, 0x1Cu);
        }
      }
    }

    goto LABEL_58;
  }

  if (CFStringCompare(a2, @"UserKeyMapping", 0) == kCFCompareEqualTo)
  {
    if (!v6)
    {
      goto LABEL_58;
    }

    v42 = CFGetTypeID(v6);
    v43 = CFArrayGetTypeID();
    if (v42 != v43)
    {
      goto LABEL_58;
    }

    if (!IOHIDKeyboardFilter::allowRemapping(v43, v6, a4))
    {
      return;
    }

    memset(buf, 170, 24);
    IOHIDKeyboardFilter::createMapFromArrayOfPairs(buf, v6);
    IOHIDKeyboardFilter::resetModifiedKeyState(this);
    sub_29D432ABC(v66, buf);
    IOHIDKeyboardFilter::resetModifiedKeyState(this, v66);
    sub_29D431EF4(v66, v67);
    if (this + 264 != buf)
    {
      sub_29D432DE4(this + 33, *buf, &buf[8]);
    }

    v44 = _IOHIDLogCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(this + 3);
      if (v45)
      {
        v45 = IOHIDServiceGetRegistryID();
      }

      sub_29D433934(v45, v71);
    }

    goto LABEL_148;
  }

  if (CFStringCompare(a2, @"HIDSlowKeysDelay", 0))
  {
    if (CFStringCompare(a2, @"CapsLockDelay", 0))
    {
      if (CFStringCompare(a2, @"CapsLockDelayOverride", 0) == kCFCompareEqualTo)
      {
        if (v6)
        {
          v51 = CFGetTypeID(v6);
          if (v51 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v6, kCFNumberSInt32Type, this + 404);
            v52 = _IOHIDLogCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              if (*(this + 3))
              {
                IOHIDServiceGetRegistryID();
              }

              sub_29D43388C();
            }

            if (*(this + 100) == *(this + 101))
            {
              *(this + 101) = -1;
            }
          }
        }

        goto LABEL_58;
      }

      v22 = CFEqual(a2, @"LockKeyDelay");
      v23 = v6 == 0;
      if (!v22)
      {
        v23 = 1;
      }

      if (!v23)
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, this + 424);
        v24 = _IOHIDLogCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          if (*(this + 3))
          {
            IOHIDServiceGetRegistryID();
          }

          sub_29D433854();
        }

        if (!*(this + 106))
        {
          v25 = *(this + 52);
          if (v25)
          {
            CFRelease(v25);
            *(this + 52) = 0;
          }
        }

        goto LABEL_58;
      }

      if (CFEqual(a2, @"UnifiedKeyMapping"))
      {
        v53 = v6 != 0;
      }

      else
      {
        v53 = 0;
      }

      if (v53)
      {
        goto LABEL_58;
      }

      v54 = CFEqual(a2, @"CtrlKeyboardUsageMap");
      v55 = v6 == 0;
      if (!v54)
      {
        v55 = 1;
      }

      if (v55)
      {
        goto LABEL_58;
      }

      v56 = CFGetTypeID(v6);
      v57 = CFStringGetTypeID();
      if (v56 != v57)
      {
        goto LABEL_58;
      }

      if (!IOHIDKeyboardFilter::allowRemapping(v57, v6, a4))
      {
        return;
      }

      memset(buf, 170, 24);
      IOHIDKeyboardFilter::createMapFromStringMap(buf, v6);
      IOHIDKeyboardFilter::resetModifiedKeyState(this);
      sub_29D432ABC(v64, buf);
      IOHIDKeyboardFilter::resetModifiedKeyState(this, v64);
      sub_29D431EF4(v64, v65);
      v71[0] = 1;
      valuePtr[0] = v71;
      v58 = sub_29D431FA8(this + 192, v71, &std::piecewise_construct, valuePtr);
      sub_29D4325A8(v58 + 5, buf);
      v59 = _IOHIDLogCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v60 = *(this + 3);
        if (v60)
        {
          v60 = IOHIDServiceGetRegistryID();
        }

        sub_29D43381C(v60, v71);
      }

LABEL_148:
      sub_29D431EF4(buf, *&buf[8]);
      goto LABEL_58;
    }

    if (!v6)
    {
      goto LABEL_58;
    }

    v49 = CFGetTypeID(v6);
    if (v49 != CFNumberGetTypeID())
    {
      goto LABEL_58;
    }

    CFNumberGetValue(v6, kCFNumberSInt32Type, this + 400);
    v50 = _IOHIDLogCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 3))
      {
        IOHIDServiceGetRegistryID();
      }

      sub_29D4338C4();
    }

    if (*(this + 100))
    {
      goto LABEL_58;
    }

    v48 = *(this + 49);
    if (!v48)
    {
      goto LABEL_58;
    }

    goto LABEL_166;
  }

  if (v6)
  {
    v46 = CFGetTypeID(v6);
    if (v46 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, this + 304);
      v47 = _IOHIDLogCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        if (*(this + 3))
        {
          IOHIDServiceGetRegistryID();
        }

        sub_29D4338FC();
      }

      if (!*(this + 76))
      {
        v61 = *(this + 37);
        if (v61)
        {
          CFRelease(v61);
          *(this + 37) = 0;
        }

        goto LABEL_58;
      }

      v48 = *(this + 49);
      if (v48)
      {
LABEL_166:
        CFRelease(v48);
        *(this + 49) = 0;
      }
    }
  }

LABEL_58:
  if (v10 != *v12)
  {
    *v12 = v10;
    if (v10)
    {
      v9 = 0;
    }
  }

  if (v9 != *(this + 89))
  {
    *(this + 89) = v9;
    v18 = _IOHIDLogCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(this + 3);
      if (v19)
      {
        v19 = IOHIDServiceGetRegistryID();
      }

      sub_29D433B64(v19, valuePtr);
    }

    v20 = *(this + 62);
    if (v20)
    {
      v62[0] = MEMORY[0x29EDCA5F8];
      v62[1] = 3221225472;
      v62[2] = sub_29D42EC38;
      v62[3] = &unk_29F34F1C8;
      v62[4] = this;
      v63 = v9;
      dispatch_async(v20, v62);
    }
  }
}

BOOL Key::isModifier(Key *this)
{
  v1 = *(this + 1);
  if (v1 == 65281 || v1 == 255)
  {
    if (*this == 3)
    {
      return 1;
    }
  }

  else if (v1 == 7)
  {
    v2 = *this;
    if (*this >= 0xE0u)
    {
      return v2 < 0xE8;
    }

    if (v2 == 57)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Key::modifierMask(Key *this)
{
  result = Key::isModifier(this);
  if (result)
  {
    v3 = *(this + 1);
    if (v3 == 65281 || v3 == 255)
    {
      return (*this == 3) << 9;
    }

    else if (v3 == 7 && (v4 = *this - 224, v4 < 8))
    {
      return dword_29D434450[v4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D42BDB0(uint64_t a1)
{
  qword_2A17A28E8 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

IOHIDKeyboardFilter *IOHIDKeyboardFilterFactory(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x29EDB8EF0];
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  if (!CFEqual(a2, v4))
  {
    return 0;
  }

  v5 = MEMORY[0x29ED57460](*MEMORY[0x29EDB8ED8], 536, 0x10E0040C98B5D9BLL, 0);
  v6 = CFUUIDGetConstantUUIDWithBytes(v3, 0x55u, 0x12u, 0x66u, 0x8Eu, 0xFFu, 0x47u, 0x4Eu, 0x70u, 0xB3u, 0x3Eu, 0xE1u, 0xFFu, 0xFAu, 0xEFu, 1u, 0xA8u);
  IOHIDKeyboardFilter::IOHIDKeyboardFilter(v5, v6);
  return v5;
}

uint64_t IOHIDKeyboardFilter::AddRef(IOHIDKeyboardFilter *this, void *a2)
{
  v2 = (*(this + 4) + 1);
  *(this + 4) = v2;
  return v2;
}

void *IOHIDKeyboardFilter::setEventCallback(void *result, void (*a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = IOHIDKeyboardFilter::defaultEventCallback;
  }

  result[4] = v4;
  result[5] = a3;
  result[6] = a4;
  return result;
}

{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = IOHIDKeyboardFilter::defaultEventCallback;
  }

  result[4] = v4;
  result[5] = a3;
  result[6] = a4;
  return result;
}

void IOHIDKeyboardFilter::IOHIDKeyboardFilter(IOHIDKeyboardFilter *this, CFTypeRef cf)
{
  v23 = *MEMORY[0x29EDCA608];
  *this = &IOHIDKeyboardFilter::sIOHIDKeyboardFilterFtbl;
  *(this + 1) = CFRetain(cf);
  *(this + 2) = 1;
  *(this + 3) = 0;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  *(this + 18) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 20) = this + 168;
  *(this + 21) = this + 176;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 32) = 0;
  *(this + 44) = 0;
  *(this + 90) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 50) = -4294967221;
  *(this + 102) = 0;
  *(this + 52) = 0;
  *(this + 106) = 150;
  *(this + 112) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 57) = *MEMORY[0x29EDBB0E8];
  *(this + 58) = 0;
  *(this + 122) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 66) = 0;
  *(this + 17) = this + 144;
  *(this + 25) = 0;
  *(this + 24) = this + 200;
  *(this + 28) = 0;
  *(this + 27) = this + 224;
  *(this + 10) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = IOHIDKeyboardFilter::defaultEventCallback;
  *(this + 56) = 0;
  *(this + 13) = 0;
  *(this + 16) = 0;
  *(this + 19) = 0;
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 34) = 0;
  *(this + 33) = this + 272;
  CFPlugInAddInstanceForFactory(cf);
  memset_pattern16(this + 312, &unk_29D434610, 0x28uLL);
  v7 = 0x70000004FLL;
  v8 = 0;
  v9 = 0x70000004DLL;
  v10 = 0;
  v11 = 0x700000050;
  v12 = 0;
  v13 = 0x70000004ALL;
  v14 = 0;
  v15 = 0x700000051;
  v16 = 0;
  v17 = 0x70000004ELL;
  v18 = 0;
  v19 = 0x700000052;
  v20 = 0;
  v21 = 0x70000004BLL;
  v22 = 0;
  v5 = 1;
  v6 = &v5;
  v4 = sub_29D431FA8(this + 192, &v5, &std::piecewise_construct, &v6);
  sub_29D43227C(v4 + 5, &v7, &v23);
}

void sub_29D42C378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_29D431EF4(v18, *(v10 + 272));
  sub_29D431EF4(v16, *(v10 + 248));
  sub_29D431EF4(v15, *(v10 + 224));
  sub_29D431F48(v14, *(v10 + 200));
  sub_29D431F48(a10, *(v10 + 176));
  sub_29D431EF4(v17, *(v10 + 144));
  sub_29D431EF4(v13, *(v10 + 120));
  sub_29D431EF4(v12, *(v10 + 96));
  sub_29D431EF4(v11, *(v10 + 72));
  _Unwind_Resume(a1);
}

void IOHIDKeyboardFilter::defaultEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _IOHIDLogCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_29D433714(a4, v5);
  }
}

void IOHIDKeyboardFilter::~IOHIDKeyboardFilter(IOHIDKeyboardFilter *this)
{
  CFPlugInRemoveInstanceForFactory(*(this + 1));
  CFRelease(*(this + 1));

  sub_29D431EF4(this + 264, *(this + 34));
  sub_29D431EF4(this + 240, *(this + 31));
  sub_29D431EF4(this + 216, *(this + 28));
  sub_29D431F48(this + 192, *(this + 25));
  sub_29D431F48(this + 168, *(this + 22));
  sub_29D431EF4(this + 136, *(this + 18));
  sub_29D431EF4(this + 112, *(this + 15));
  sub_29D431EF4(this + 88, *(this + 12));
  sub_29D431EF4(this + 64, *(this + 9));
}

uint64_t IOHIDKeyboardFilter::QueryInterface(IOHIDKeyboardFilter *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 5u, 5u, 0xD7u, 0x8Du, 0x4Fu, 0x4Eu, 0x4Cu, 0x41u, 0xA3u, 0xA6u, 0xC7u, 0xA7u, 0x7Bu, 0x41u, 0xBDu, 0xACu);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(v6, 0xC7u, 0x10u, 0x95u, 0x1Du, 0x18u, 0x40u, 0x45u, 0x6Eu, 0x82u, 0xE7u, 0xFCu, 0xA1u, 0xA0u, 0xFAu, 0x7Fu, 0xE4u), CFEqual(v5, v8)) || (v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v9)))
  {
    v10 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v10 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v10;
}

uint64_t IOHIDKeyboardFilter::AddRef(IOHIDKeyboardFilter *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t IOHIDKeyboardFilter::Release(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    IOHIDKeyboardFilter::~IOHIDKeyboardFilter(this);
    MEMORY[0x29ED578D0]();
  }

  return v2;
}

void IOHIDKeyboardFilter::setEjectKeyProperty(IOHIDKeyboardFilter *this, unsigned int a2)
{
  v3 = IOHIDServiceCopyProperty();
  v4 = IOHIDServiceCopyProperty();
  v5 = IOHIDServiceCopyProperty();
  if ([v3 unsignedIntValue] == 1 && objc_msgSend(v4, "unsignedIntValue") == 6 && objc_msgSend(v5, "unsignedIntValue") == 1452)
  {
    v6 = IOHIDServiceCopyProperty();
    if (v6)
    {
      goto LABEL_10;
    }

    if (a2 - 195 < 7 || a2 < 0x1F || a2 - 40 <= 2)
    {
      IOHIDServiceSetProperty();
    }
  }

  v6 = 0;
LABEL_10:
  v7 = v6;
}

void IOHIDKeyboardFilter::setDoNotDisturbState(IOHIDKeyboardFilter *this)
{
  v2 = *(this + 17);
  if (v2 == (this + 144))
  {
LABEL_9:
    v6 = IOHIDServiceCopyProperty();
    if (v6)
    {
      v7 = v6;
      *(this + 122) = CFBooleanGetValue(v6);

      CFRelease(v7);
    }
  }

  else
  {
    while (*(v2 + 6) != 0x10000009BLL)
    {
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
      if (v4 == (this + 144))
      {
        goto LABEL_9;
      }
    }

    *(this + 122) = 1;
  }
}

void IOHIDKeyboardFilter::open(IOHIDKeyboardFilter *this, __IOHIDService *a2)
{
  *(this + 3) = a2;
  v3 = IOHIDServiceCopyProperty();
  v4 = *(this + 58);
  *(this + 58) = v3;

  v5 = IOHIDServiceCopyProperty();
  v6 = *(this + 59);
  *(this + 59) = v5;

  valuePtr = 0;
  v7 = IOHIDServiceCopyProperty();
  if (!v7)
  {
    valuePtr = IOHIDKeyboardFilter::getKeyboardID(this);
    v8 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = v8;
    IOHIDServiceSetProperty();
  }

  CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
  CFRelease(v7);
LABEL_5:
  v9 = IOHIDServiceCopyProperty();
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v10, kCFNumberSInt32Type, this + 292);
    }

    CFRelease(v10);
  }

  v12 = IOHIDServiceCopyProperty();
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFStringGetTypeID())
    {
      IOHIDKeyboardFilter::createMapFromStringMap(&v74, v13);
      v15 = this + 144;
      sub_29D431EF4(this + 136, *(this + 18));
      v16 = v75;
      *(this + 17) = v74;
      *(this + 18) = v16;
      v17 = v76;
      *(this + 19) = v76;
      if (v17)
      {
        v16[2] = v15;
        v74 = &v75;
        v75 = 0;
        v76 = 0;
        v16 = 0;
      }

      else
      {
        *(this + 17) = v15;
      }

      sub_29D431EF4(&v74, v16);
    }

    CFRelease(v13);
  }

  v18 = IOHIDServiceCopyProperty();
  if (v18)
  {
    v19 = v18;
    v20 = CFGetTypeID(v18);
    if (v20 == CFStringGetTypeID())
    {
      IOHIDKeyboardFilter::createMapFromStringMap(&v74, v19);
      v73 = 512;
      v78 = &v73;
      v21 = sub_29D431FA8(this + 168, &v73, &std::piecewise_construct, &v78);
      v22 = v21 + 6;
      v23 = v21 + 5;
      sub_29D431EF4((v21 + 5), v21[6]);
      v24 = v75;
      *(v22 - 1) = v74;
      *v22 = v24;
      v25 = v76;
      v22[1] = v76;
      if (v25)
      {
        v24[2] = v22;
        v74 = &v75;
        v75 = 0;
        v76 = 0;
        v24 = 0;
      }

      else
      {
        *v23 = v22;
      }

      sub_29D431EF4(&v74, v24);
      LODWORD(v78) = 512;
      v74 = &v78;
      v26 = sub_29D431FA8(this + 168, &v78, &std::piecewise_construct, &v74)[5];
      LODWORD(v78) = 512;
      v74 = &v78;
      if (v26 != sub_29D431FA8(this + 168, &v78, &std::piecewise_construct, &v74) + 6)
      {
        do
        {
          v27 = *(v26 + 8);
          v28 = v26;
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
              v29 = *(v28 + 16);
              v30 = *v29 == v28;
              v28 = v29;
            }

            while (!v30);
          }

          if (*(v26 + 36) == 7 && (*(v26 + 32) - 79) <= 3)
          {
            LODWORD(v78) = 512;
            v74 = &v78;
            v32 = sub_29D431FA8(this + 168, &v78, &std::piecewise_construct, &v74);
            sub_29D432614(v32 + 5, v26);
            operator delete(v26);
          }

          LODWORD(v78) = 512;
          v74 = &v78;
          v26 = v29;
        }

        while (v29 != sub_29D431FA8(this + 168, &v78, &std::piecewise_construct, &v74) + 6);
      }
    }

    CFRelease(v19);
  }

  v33 = IOHIDServiceCopyProperty();
  if (v33)
  {
    v34 = v33;
    v35 = CFGetTypeID(v33);
    if (v35 == CFStringGetTypeID())
    {
      IOHIDKeyboardFilter::createMapFromStringMap(&v74, v34);
      v73 = 1;
      v78 = &v73;
      v36 = sub_29D431FA8(this + 192, &v73, &std::piecewise_construct, &v78);
      v37 = v36 + 6;
      v38 = v36 + 5;
      sub_29D431EF4((v36 + 5), v36[6]);
      v39 = v75;
      *(v37 - 1) = v74;
      *v37 = v39;
      v40 = v76;
      v37[1] = v76;
      if (v40)
      {
        v39[2] = v37;
        v74 = &v75;
        v75 = 0;
        v76 = 0;
        v39 = 0;
      }

      else
      {
        *v38 = v37;
      }

      sub_29D431EF4(&v74, v39);
    }

    CFRelease(v34);
  }

  v41 = IOHIDServiceCopyProperty();
  if (v41)
  {
    v42 = v41;
    v43 = CFGetTypeID(v41);
    if (v43 == CFStringGetTypeID())
    {
      IOHIDKeyboardFilter::createMapFromStringMap(&v74, v42);
      v44 = this + 248;
      sub_29D431EF4(this + 240, *(this + 31));
      v45 = v75;
      *(this + 30) = v74;
      *(this + 31) = v45;
      v46 = v76;
      *(this + 32) = v76;
      if (v46)
      {
        v45[2] = v44;
        v74 = &v75;
        v75 = 0;
        v76 = 0;
        v45 = 0;
      }

      else
      {
        *(this + 30) = v44;
      }

      sub_29D431EF4(&v74, v45);
    }

    CFRelease(v42);
  }

  IOHIDKeyboardFilter::setDoNotDisturbState(this);
  v47 = IOHIDPreferencesCopyDomain();
  if (v47)
  {
    v48 = v47;
    v49 = (this + 452);
    *(this + 113) = CFBooleanGetValue(v47);
    CFRelease(v48);
  }

  else
  {
    v49 = (this + 452);
    *(this + 113) = 1;
  }

  v50 = IOHIDServiceCopyProperty();
  v51 = v50;
  if (*(this + 113))
  {
    if (v50)
    {
      Value = CFBooleanGetValue(v50);
    }

    else
    {
      Value = 1;
    }

    *v49 = Value;
  }

  if (v51)
  {
    CFRelease(v51);
  }

  v53 = IOHIDServiceCopyProperty();
  if (v53)
  {
    v54 = v53;
    v55 = CFDictionaryGetValue(v53, @"HIDCapsLockStateCache");
    if (v55)
    {
      LODWORD(v55) = CFBooleanGetValue(v55);
    }

    *(this + 110) = v55;
    *(this + 111) = v55;
    v56 = CFDictionaryGetValue(v54, @"HIDCapsLockLEDInhibit");
    if (v56)
    {
      LODWORD(v56) = CFBooleanGetValue(v56);
    }

    v57 = MEMORY[0x29EDBB0E8];
    *(this + 112) = v56;
    *(this + 57) = *v57;
    v58 = CFDictionaryGetValue(v54, *MEMORY[0x29EDBB0E0]);
    if (v58)
    {
      v59 = v58;
      v60 = *MEMORY[0x29EDBB100];
      if (CFEqual(v58, *MEMORY[0x29EDBB100]) || (v60 = *MEMORY[0x29EDBB0F8], CFEqual(v59, *MEMORY[0x29EDBB0F8])) || (v60 = *MEMORY[0x29EDBB0F0], CFEqual(v59, *MEMORY[0x29EDBB0F0])))
      {
        *(this + 57) = v60;
      }
    }

    v61 = CFDictionaryGetValue(v54, @"HIDKeyboardModifierMappingPairs");
    if (v61)
    {
      v62 = v61;
      v63 = CFGetTypeID(v61);
      if (v63 == CFArrayGetTypeID())
      {
        IOHIDKeyboardFilter::createMapFromArrayOfPairs(&v74, v62);
        v64 = this + 120;
        sub_29D431EF4(this + 112, *(this + 15));
        v65 = v75;
        *(this + 14) = v74;
        *(this + 15) = v65;
        v66 = v76;
        *(this + 16) = v76;
        if (v66)
        {
          v65[2] = v64;
          v74 = &v75;
          v75 = 0;
          v76 = 0;
          v65 = 0;
        }

        else
        {
          *(this + 14) = v64;
        }

        sub_29D431EF4(&v74, v65);
      }
    }

    v67 = CFDictionaryGetValue(v54, @"HIDSlowKeysDelay");
    if (v67)
    {
      CFNumberGetValue(v67, kCFNumberSInt32Type, this + 304);
    }

    v68 = CFDictionaryGetValue(v54, @"HIDInitialKeyRepeat");
    if (v68)
    {
      v74 = 0;
      CFNumberGetValue(v68, kCFNumberSInt64Type, &v74);
      *(this + 47) = v74 / 0xF4240;
    }

    v69 = CFDictionaryGetValue(v54, @"HIDKeyRepeat");
    if (v69)
    {
      v74 = 0;
      CFNumberGetValue(v69, kCFNumberSInt64Type, &v74);
      *(this + 48) = v74 / 0xF4240;
    }

    v70 = CFDictionaryGetValue(v54, @"CapsLockDelay");
    if (v70)
    {
      CFNumberGetValue(v70, kCFNumberSInt32Type, this + 400);
    }

    v71 = CFDictionaryGetValue(v54, @"CapsLockDelayOverride");
    if (v71)
    {
      CFNumberGetValue(v71, kCFNumberSInt32Type, this + 404);
    }

    v72 = CFDictionaryGetValue(v54, @"LockKeyDelay");
    if (v72)
    {
      CFNumberGetValue(v72, kCFNumberSInt32Type, this + 424);
    }

    CFRelease(v54);
  }
}

uint64_t IOHIDKeyboardFilter::getKeyboardID(IOHIDKeyboardFilter *this)
{
  valuePtr = 3;
  v1 = IOHIDServiceCopyProperty();
  if (v1 && (v2 = v1, v3 = CFGetTypeID(v1), v3 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    return valuePtr;
  }

  else
  {
    v13 = -1;
    v12 = -1;
    v5 = IOHIDServiceCopyProperty();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt16Type, &v13);
        CFRelease(v6);
      }
    }

    TypeID = IOHIDServiceCopyProperty();
    if (TypeID && (v9 = TypeID, v10 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v10 == TypeID))
    {
      CFNumberGetValue(v9, kCFNumberSInt16Type, &v12);
      CFRelease(v9);
      v11 = v12;
    }

    else
    {
      v11 = 0xFFFF;
    }

    return IOHIDKeyboardFilter::getKeyboardID(TypeID, v13, v11);
  }
}

void IOHIDKeyboardFilter::createMapFromStringMap(uint64_t *__return_ptr a1@<X8>, CFStringRef theString@<X1>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0);
    v4 = CStringPtr;
    if (CStringPtr)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21[8] = v5;
      v21[9] = v5;
      v21[6] = v5;
      v21[7] = v5;
      v21[4] = v5;
      v21[5] = v5;
      v21[2] = v5;
      v21[3] = v5;
      v21[0] = v5;
      v21[1] = v5;
      *v19 = v5;
      v20 = v5;
      v18[2] = v5;
      v18[3] = v5;
      v18[0] = v5;
      v18[1] = v5;
      v17 = v5;
      v6 = strlen(CStringPtr);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_29D431E4C();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(&__p.__r_.__value_.__s + 23) = v6;
      if (v6)
      {
        memmove(&__p, v4, v6);
      }

      __p.__r_.__value_.__s.__data_[v7] = 0;
      sub_29D430200(&v17, &__p, 8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&v16, 0, sizeof(v16));
      memset(&__str, 0, sizeof(__str));
      while (1)
      {
        v8 = sub_29D430384(&v17, &v16, 0x2Cu);
        if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
        {
          break;
        }

        v9 = sub_29D430384(&v17, &__str, 0x2Cu);
        if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
        {
          break;
        }

        v10 = std::stoul(&__str, 0, 0);
        if (v10)
        {
          v11 = std::stoul(&v16, 0, 0);
          LODWORD(__p.__r_.__value_.__l.__data_) = v11;
          HIDWORD(__p.__r_.__value_.__r.__words[0]) = v11 >> 16;
          __p.__r_.__value_.__s.__data_[8] = 0;
          *(&__p.__r_.__value_.__r.__words[1] + 1) = -1431655766;
          HIDWORD(__p.__r_.__value_.__r.__words[1]) = -1431655766;
          LODWORD(__p.__r_.__value_.__r.__words[2]) = v10;
          HIDWORD(__p.__r_.__value_.__r.__words[2]) = v10 >> 16;
          v13 = 0;
          memset(v14, 170, sizeof(v14));
          sub_29D4324DC(a1, &__p, &__p);
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      *&v17 = *MEMORY[0x29EDC9530];
      *(&v18[-1] + *(v17 - 24)) = *(MEMORY[0x29EDC9530] + 24);
      *&v18[0] = MEMORY[0x29EDC9570] + 16;
      if (SBYTE7(v20) < 0)
      {
        operator delete(v19[0]);
      }

      *&v18[0] = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v18 + 1);
      std::istream::~istream();
      MEMORY[0x29ED578A0](v21 + 8);
    }
  }
}

void sub_29D42D5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29D431EF4(v28, *(v28 + 8));
  _Unwind_Resume(a1);
}

void IOHIDKeyboardFilter::createMapFromArrayOfPairs(uint64_t *__return_ptr a1@<X8>, CFArrayRef theArray@<X1>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  if (theArray && CFArrayGetCount(theArray))
  {
    for (i = 0; i < CFArrayGetCount(theArray); ++i)
    {
      v13 = 0;
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v6, @"HIDKeyboardModifierMappingSrc");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
            v9 = CFDictionaryGetValue(v6, @"HIDKeyboardModifierMappingDst");
            if (v9)
            {
              CFNumberGetValue(v9, kCFNumberSInt64Type, &v13);
              *&v10 = valuePtr;
              BYTE8(v10) = 0;
              v11 = v13;
              v12 = 0;
              sub_29D4324DC(a1, &v10, &v10);
            }
          }
        }
      }
    }
  }
}

void IOHIDKeyboardFilter::scheduleWithDispatchQueue(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = a2;
  objc_storeStrong((a1 + 496), a2);
  v5 = [[StickyKeyHandler alloc] initWithFilter:a1 service:*(a1 + 24)];
  v6 = *(a1 + 480);
  *(a1 + 480) = v5;

  v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, *(a1 + 496));
  v8 = *(a1 + 504);
  *(a1 + 504) = v7;

  v9 = *(a1 + 504);
  if (v9)
  {
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3221225472;
    handler[2] = sub_29D42DBFC;
    handler[3] = &unk_29F34F180;
    handler[4] = a1;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(*(a1 + 504), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(a1 + 504));
  }

  v10 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, *(a1 + 496));
  v11 = *(a1 + 512);
  *(a1 + 512) = v10;

  v12 = *(a1 + 512);
  if (v12)
  {
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = sub_29D42DC34;
    v30[3] = &unk_29F34F180;
    v30[4] = a1;
    dispatch_source_set_event_handler(v12, v30);
    dispatch_source_set_timer(*(a1 + 512), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(a1 + 512));
  }

  v13 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, *(a1 + 496));
  v14 = *(a1 + 520);
  *(a1 + 520) = v13;

  v15 = *(a1 + 520);
  if (v15)
  {
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = sub_29D42DD04;
    v29[3] = &unk_29F34F180;
    v29[4] = a1;
    dispatch_source_set_event_handler(v15, v29);
    dispatch_source_set_timer(*(a1 + 520), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(a1 + 520));
  }

  v16 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, *(a1 + 496));
  v17 = *(a1 + 528);
  *(a1 + 528) = v16;

  v18 = *(a1 + 528);
  if (v18)
  {
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = sub_29D42DDC0;
    v28[3] = &unk_29F34F180;
    v28[4] = a1;
    dispatch_source_set_event_handler(v18, v28);
    dispatch_source_set_timer(*(a1 + 528), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(a1 + 528));
  }

  v19 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, *(a1 + 496));
  v20 = *(a1 + 432);
  *(a1 + 432) = v19;

  v21 = *(a1 + 432);
  if (v21)
  {
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = sub_29D42DE68;
    v27[3] = &unk_29F34F180;
    v27[4] = a1;
    dispatch_source_set_event_handler(v21, v27);
    dispatch_source_set_timer(*(a1 + 432), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(a1 + 432));
  }

  if ([*(a1 + 464) BOOLValue])
  {
    v22 = +[AppleKeyboardStateManager sharedManager];
    v23 = [v22 isCapsLockEnabled:*(a1 + 472)];

    if (v23)
    {
      v24 = _IOHIDLogCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        RegistryID = *(a1 + 24);
        if (RegistryID)
        {
          RegistryID = IOHIDServiceGetRegistryID();
        }

        *buf = 138412290;
        v33 = RegistryID;
        _os_log_impl(&dword_29D42A000, v24, OS_LOG_TYPE_INFO, "[%@] Restoring capslock state\n", buf, 0xCu);
      }

      mach_absolute_time();
      KeyboardEvent = IOHIDEventCreateKeyboardEvent();
      if (KeyboardEvent)
      {
        (*(a1 + 32))(*(a1 + 40), *(a1 + 48), a1, KeyboardEvent, 0);
        CFRelease(KeyboardEvent);
      }
    }
  }
}

void sub_29D42DBFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_set_timer(*(v1 + 504), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  *(v1 + 308) = 0;
}

void sub_29D42DC34(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_set_timer(v1[64], 0xFFFFFFFFFFFFFFFFLL, 0, 0);

  IOHIDKeyboardFilter::dispatchSlowKey(v1);
}

void IOHIDKeyboardFilter::dispatchSlowKey(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 37);
  *(this + 37) = 0;
  if (v1)
  {
    mach_absolute_time();
    IOHIDEventSetTimeStamp();
    IOHIDEventSetIntegerValue();
    (*(this + 4))(*(this + 5), *(this + 6), this, v1, 0);

    CFRelease(v1);
  }
}

void sub_29D42DD04(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_set_timer(v1[65], 0xFFFFFFFFFFFFFFFFLL, 0, 0);

  IOHIDKeyboardFilter::dispatchKeyRepeat(v1);
}

void IOHIDKeyboardFilter::dispatchKeyRepeat(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 46);
  *(this + 46) = 0;
  if (v1)
  {
    mach_absolute_time();
    IOHIDEventSetTimeStamp();
    (*(this + 4))(*(this + 5), *(this + 6), this, v1, 0);

    CFRelease(v1);
  }
}

void sub_29D42DDC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_set_timer(v1[66], 0xFFFFFFFFFFFFFFFFLL, 0, 0);

  IOHIDKeyboardFilter::dispatchCapsLock(v1);
}

void IOHIDKeyboardFilter::dispatchCapsLock(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 49);
  *(this + 49) = 0;
  if (v1)
  {
    (*(this + 4))(*(this + 5), *(this + 6), this, v1, 0);

    CFRelease(v1);
  }
}

void sub_29D42DE68(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_set_timer(v1[54], 0xFFFFFFFFFFFFFFFFLL, 0, 0);

  IOHIDKeyboardFilter::dispatchLockKey(v1);
}

void IOHIDKeyboardFilter::dispatchLockKey(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 52);
  *(this + 52) = 0;
  if (v1)
  {
    (*(this + 4))(*(this + 5), *(this + 6), this, v1, 0);

    CFRelease(v1);
  }
}

void IOHIDKeyboardFilter::unscheduleFromDispatchQueue(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 504);
  if (v4)
  {
    dispatch_source_cancel(v4);
  }

  v5 = *(a1 + 512);
  if (v5)
  {
    dispatch_source_cancel(v5);
  }

  v6 = *(a1 + 520);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  v7 = *(a1 + 528);
  if (v7)
  {
    dispatch_source_cancel(v7);
  }

  v8 = *(a1 + 432);
  if (v8)
  {
    dispatch_source_cancel(v8);
  }

  [*(a1 + 480) removeObserver];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = CFRetain(*(a1 + 24));
  v9 = *(a1 + 496);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29D42E024;
  v10[3] = &unk_29F34F1A8;
  v10[4] = v11;
  v10[5] = a1;
  dispatch_async(v9, v10);
  _Block_object_dispose(v11, 8);
}

void sub_29D42E024(uint64_t a1)
{
  v2 = *(a1 + 40);
  IOHIDKeyboardFilter::dispatchStickyKeys(v2, 14);
  v3 = *(v2 + 37);
  if (v3)
  {
    CFRelease(v3);
    *(v2 + 37) = 0;
  }

  v4 = *(v2 + 49);
  if (v4)
  {
    CFRelease(v4);
    *(v2 + 49) = 0;
  }

  v5 = *(v2 + 52);
  if (v5)
  {
    CFRelease(v5);
    *(v2 + 52) = 0;
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);

  CFRelease(v6);
}

CFTypeRef IOHIDKeyboardFilter::copyPropertyForClient(IOHIDKeyboardFilter *this, CFTypeRef cf1, const void *a3)
{
  if (CFEqual(cf1, @"HIDCapsLockState"))
  {
    v5 = MEMORY[0x29EDB8F00];
    v6 = *(this + 110);
    goto LABEL_3;
  }

  if (!CFEqual(cf1, @"ServiceFilterDebug"))
  {
    if (CFEqual(cf1, *MEMORY[0x29EDBB0E0]))
    {
      v5 = MEMORY[0x29EDBB100];
      v6 = *(this + 111);
      v7 = MEMORY[0x29EDBB0F8];
LABEL_4:
      if (!v6)
      {
        v5 = v7;
      }

      return *v5;
    }

    if (CFEqual(cf1, @"HIDStickyKeysOn"))
    {
      sub_29D432A08(&v10, *(this + 89));
      v8 = cf;
      sub_29D431A6C(&v10);
      return v8;
    }

    if (CFEqual(cf1, @"UnifiedKeyMapping"))
    {
      v5 = MEMORY[0x29EDB8F00];
      if (!*(this + 56))
      {
        v5 = MEMORY[0x29EDB8EF8];
      }

      return *v5;
    }

    if (!CFEqual(cf1, @"HIDKeyboardSupportsDoNotDisturbKey"))
    {
      return 0;
    }

    v5 = MEMORY[0x29EDB8F00];
    v6 = *(this + 122);
LABEL_3:
    v7 = MEMORY[0x29EDB8EF8];
    goto LABEL_4;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4318F8(&v10, 0);
  if (cf)
  {
    IOHIDKeyboardFilter::serialize(this, cf);
    v8 = CFRetain(cf);
  }

  else
  {
    v8 = 0;
  }

  sub_29D431A1C(&v10);
  return v8;
}

void *IOHIDKeyboardFilter::serialize(IOHIDKeyboardFilter *this, __CFDictionary *a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D431DB0(&v7, a2, 0);
  v7 = &unk_2A241E900;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDKeyboardFilter");
  IOHIDKeyboardFilter::serializeMapper(this + 136, &v5);
  if (value)
  {
    CFDictionarySetValue(theDict, @"FnFunctionUsageMap", value);
  }

  sub_29D431D60(&v5);
  v3 = MEMORY[0x29EDB8F00];
  if (!*(this + 56))
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  if (*v3)
  {
    CFDictionarySetValue(theDict, @"UnifiedKeyMapping", *v3);
  }

  IOHIDKeyboardFilter::serializeModifierMappings(this + 192, &v5);
  if (value)
  {
    CFDictionarySetValue(theDict, @"UnifiedKeyMaps", value);
  }

  sub_29D431D60(&v5);
  IOHIDKeyboardFilter::serializeModifierMappings(this + 168, &v5);
  if (value)
  {
    CFDictionarySetValue(theDict, @"LegacyKeyMaps", value);
  }

  sub_29D431D60(&v5);
  IOHIDKeyboardFilter::serializeMapper(this + 112, &v5);
  if (value)
  {
    CFDictionarySetValue(theDict, @"HIDKeyboardModifierMappingPairs", value);
  }

  sub_29D431D60(&v5);
  IOHIDKeyboardFilter::serializeMapper(this + 240, &v5);
  if (value)
  {
    CFDictionarySetValue(theDict, @"NumLockKeyboardUsageMap", value);
  }

  sub_29D431D60(&v5);
  IOHIDKeyboardFilter::serializeMapper(this + 264, &v5);
  if (value)
  {
    CFDictionarySetValue(theDict, @"UserKeyMapping", value);
  }

  sub_29D431D60(&v5);
  sub_29D4314DC(&v7, @"HIDInitialKeyRepeat", *(this + 47));
  sub_29D4314DC(&v7, @"HIDKeyRepeat", *(this + 48));
  sub_29D4314DC(&v7, @"LockKeyDelay", *(this + 106));
  sub_29D4314DC(&v7, @"CapsLockState", *(this + 110));
  sub_29D4314DC(&v7, @"CapsLockLEDState", *(this + 111));
  sub_29D4314DC(&v7, @"MatchScore", *(this + 5));
  sub_29D4314DC(&v7, @"FnKeyMode", *(this + 72));
  return sub_29D431A1C(&v7);
}

void sub_29D42E4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29D431D60(&a9);
  sub_29D431A1C(va);
  _Unwind_Resume(a1);
}

uint64_t IOHIDKeyboardFilter::allowRemapping(IOHIDKeyboardFilter *this, const void *a2, const void *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return 1;
  }

  if (!_IOHIDIsRestrictedRemappingProperty())
  {
    return 1;
  }

  if (IOHIDEventSystemConnectionHasEntitlement())
  {
    return 1;
  }

  *&v3 = -1;
  *(&v3 + 1) = -1;
  v7[0] = v3;
  v7[1] = v3;
  IOHIDEventSystemConnectionGetAuditToken();
  if (IOHIDAccessCheckAuditToken())
  {
    return 1;
  }

  v5 = _IOHIDLogCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    UUID = IOHIDEventSystemConnectionGetUUID();
    sub_29D43378C(UUID, v7);
  }

  return 0;
}

void IOHIDKeyboardFilter::setCapsLockState(IOHIDKeyboardFilter *this, int a2, const void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(this + 110) != a2)
  {
    *(this + 110) = a2;
    v6 = +[AppleKeyboardStateManager sharedManager];
    [v6 setCapsLockEnabled:*(this + 110) != 0 locationID:*(this + 59)];

    v7 = _IOHIDLogCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      RegistryID = *(this + 3);
      if (RegistryID)
      {
        RegistryID = IOHIDServiceGetRegistryID();
      }

      v9 = 138412802;
      v10 = RegistryID;
      v11 = 1024;
      v12 = a2;
      v13 = 2112;
      v14 = a3;
      _os_log_impl(&dword_29D42A000, v7, OS_LOG_TYPE_INFO, "[%@] Set capslock state: %d client: %@\n", &v9, 0x1Cu);
    }
  }
}

void IOHIDKeyboardFilter::updateCapslockLED(IOHIDKeyboardFilter *this, const void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((*(this + 295) & 1) == 0)
  {
    return;
  }

  v4 = *(this + 111);
  if (CFEqual(*(this + 57), *MEMORY[0x29EDBB0F0]))
  {
    goto LABEL_17;
  }

  *(this + 111) = *(this + 110);
  if (CFEqual(*(this + 57), *MEMORY[0x29EDBB100]))
  {
    v5 = 1;
LABEL_8:
    *(this + 111) = v5;
    goto LABEL_9;
  }

  if (CFEqual(*(this + 57), *MEMORY[0x29EDBB0F8]) || *(this + 112))
  {
    v5 = 0;
    goto LABEL_8;
  }

LABEL_9:
  if (!*(this + 3))
  {
LABEL_17:
    v6 = 0;
    goto LABEL_11;
  }

  IOHIDServiceSetElementValue();
  IOHIDServiceSetProperty();
  v6 = 1;
LABEL_11:
  v7 = _IOHIDLogCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    RegistryID = *(this + 3);
    if (RegistryID)
    {
      RegistryID = IOHIDServiceGetRegistryID();
    }

    v9 = *(this + 111);
    v10 = *(this + 57);
    v11 = *(this + 110);
    v12 = 138413826;
    v13 = RegistryID;
    v14 = 1024;
    v15 = v4 != 0;
    v16 = 1024;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    v22 = 2112;
    v23 = a2;
    v24 = 1024;
    v25 = v6;
    _os_log_impl(&dword_29D42A000, v7, OS_LOG_TYPE_INFO, "[%@] updateCapslockLED:%d->%d capsLockLED:%@ capsLockState:%d client:%@, didUpdateCapsLockLEDState:%d\n", &v12, 0x38u);
  }
}

void IOHIDKeyboardFilter::resetModifiedKeyState(IOHIDKeyboardFilter *this)
{
  memset(v7, 170, sizeof(v7));
  sub_29D433250(v7, this + 64);
  v2 = v7[0];
  if (v7[0] != &v7[1])
  {
    do
    {
      if (*(v2 + 40) == 1)
      {
        mach_absolute_time();
        KeyboardEvent = IOHIDEventCreateKeyboardEvent();
        if (KeyboardEvent)
        {
          (*(this + 4))(*(this + 5), *(this + 6), this, KeyboardEvent, 0);
          CFRelease(KeyboardEvent);
        }
      }

      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != &v7[1]);
  }

  sub_29D431EF4(v7, v7[1]);
}

void IOHIDKeyboardFilter::resetModifiedKeyState(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = (a1 + 72);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = v3[4];
        v8 = v5;
        do
        {
          v9 = v6[4];
          v10 = v9 >= v7;
          v11 = v9 < v7;
          if (v10)
          {
            v8 = v6;
          }

          v6 = v6[v11];
        }

        while (v6);
        if (v8 != v5 && v7 >= v8[4])
        {
          mach_absolute_time();
          KeyboardEvent = IOHIDEventCreateKeyboardEvent();
          if (KeyboardEvent)
          {
            v13 = KeyboardEvent;
            (*(a1 + 32))(*(a1 + 40), *(a1 + 48), a1, KeyboardEvent, 0);
            CFRelease(v13);
          }
        }
      }

      v14 = v3[1];
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
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v2);
  }
}

void IOHIDKeyboardFilter::resetSlowKey(IOHIDKeyboardFilter *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    CFRelease(v2);
    *(this + 37) = 0;
  }
}

void IOHIDKeyboardFilter::resetCapsLockDelay(IOHIDKeyboardFilter *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    CFRelease(v2);
    *(this + 49) = 0;
  }
}

void IOHIDKeyboardFilter::resetLockKeyDelay(IOHIDKeyboardFilter *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    CFRelease(v2);
    *(this + 52) = 0;
  }
}

void sub_29D42EC38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    IOHIDKeyboardFilter::startStickyKey(v2);
  }

  else
  {
    IOHIDKeyboardFilter::dispatchStickyKeys(v2, 14);
  }
}

void IOHIDKeyboardFilter::startStickyKey(IOHIDKeyboardFilter *this)
{
  memset(v7, 170, sizeof(v7));
  sub_29D433250(v7, this + 64);
  v2 = v7[0];
  if (v7[0] != &v7[1])
  {
    do
    {
      if (Key::isModifier((v2 + 4)))
      {
        mach_absolute_time();
        KeyboardEvent = IOHIDEventCreateKeyboardEvent();
        if (KeyboardEvent)
        {
          IOHIDEventSetIntegerValue();
          (*(this + 4))(*(this + 5), *(this + 6), this, KeyboardEvent, 0);
          CFRelease(KeyboardEvent);
        }
      }

      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != &v7[1]);
  }

  sub_29D431EF4(v7, v7[1]);
}

uint64_t IOHIDKeyboardFilter::match(IOHIDKeyboardFilter *this, __IOHIDService *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = 300;
  if (!IOHIDServiceConformsTo())
  {
    if (IOHIDServiceConformsTo())
    {
      v3 = 300;
    }

    else
    {
      v3 = 0;
    }
  }

  *(this + 5) = v3;
  v4 = _IOHIDLogCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    RegistryID = IOHIDServiceGetRegistryID();
    v7 = *(this + 5);
    v8 = 134218498;
    v9 = this;
    v10 = 2112;
    v11 = RegistryID;
    v12 = 1024;
    v13 = v7;
    _os_log_debug_impl(&dword_29D42A000, v4, OS_LOG_TYPE_DEBUG, "(%p) for ServiceID %@ with score %d\n", &v8, 0x1Cu);
  }

  return *(this + 5);
}

const void *IOHIDKeyboardFilter::filter(uint64_t a1, const void *a2)
{
  v2 = a2;
  v12[3] = *MEMORY[0x29EDCA608];
  if (a2 && IOHIDEventGetType() == 3)
  {
    EventFlags = IOHIDEventGetEventFlags();
    v2 = IOHIDKeyboardFilter::processKeyMappings(a1, v2);
    IOHIDKeyboardFilter::processModifiedKeyState(a1, v2);
    IOHIDKeyboardFilter::dispatchEventCopy(a1, v2);
    if (!*(a1 + 304) || (v2 = IOHIDKeyboardFilter::processSlowKeys(a1, v2), !*(a1 + 304)))
    {
      if (!*(a1 + 400) || !*(a1 + 404) || (v2 = IOHIDKeyboardFilter::processCapsLockDelay(a1, v2), !*(a1 + 304)))
      {
        if (*(a1 + 424) && !IOHIDKeyboardFilter::isModifiersPressed(a1))
        {
          v2 = IOHIDKeyboardFilter::processLockKeyDelay(a1, v2);
        }
      }
    }

    if (!*(a1 + 360))
    {
      v2 = IOHIDKeyboardFilter::processStickyKeys(a1, v2);
    }

    IOHIDKeyboardFilter::processCapsLockState(a1, v2);
    v5 = *(a1 + 376);
    if (v5 && (EventFlags & 0x100) == 0)
    {
      if (*(a1 + 304))
      {
        v6 = a1;
        v7 = v2;
        v5 = 420;
        v8 = 420;
      }

      else
      {
        v8 = *(a1 + 384);
        v6 = a1;
        v7 = v2;
      }

      IOHIDKeyboardFilter::processKeyRepeats(v6, v7, v5, v8);
    }

    IOHIDKeyboardFilter::processKeyState(a1, v2);
    if (!v2)
    {
      v9 = _IOHIDLogCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        RegistryID = *(a1 + 24);
        if (RegistryID)
        {
          RegistryID = IOHIDServiceGetRegistryID();
        }

        sub_29D433BAC(RegistryID, v12);
      }

      return 0;
    }
  }

  return v2;
}

void IOHIDKeyboardFilter::dispatchEventCopy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if (IOHIDEventGetIntegerValue() == 7 && IntegerValue == 57)
    {
      IOHIDEventGetIntegerValue();
      mach_absolute_time();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      if (VendorDefinedEvent)
      {
        v5 = VendorDefinedEvent;
        (*(a1 + 32))(*(a1 + 40), *(a1 + 48), a1, VendorDefinedEvent, 0);
        CFRelease(v5);
      }
    }
  }
}

uint64_t IOHIDKeyboardFilter::processKeyMappings(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v5 = IOHIDEventGetIntegerValue();
    EventFlags = IOHIDEventGetEventFlags();
    if (!*(a1 + 368) || IntegerValue != IOHIDEventGetIntegerValue() || v5 != IOHIDEventGetIntegerValue())
    {
      v7 = _IOHIDEventCopyAttachment();
      Copy = v7;
      if (v7 == *MEMORY[0x29EDB8F00])
      {
LABEL_16:
        CFRelease(Copy);
        return v2;
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if ((EventFlags & 0x6F0000) == 0 && !IOHIDEventGetIntegerValue() && !IOHIDKeyboardFilter::isDelayedEvent(0, v2))
      {
        v9 = IOHIDKeyboardFilter::remapKey(a1, IntegerValue | (v5 << 32));
        if (!v9)
        {
          return 0;
        }

        if (v9 != __PAIR64__(v5, IntegerValue))
        {
          Copy = IOHIDEventCreateCopy();
          Children = IOHIDEventGetChildren();
          if (Children)
          {
            CFArrayRemoveAllValues(Children);
          }

          IOHIDEventAppendEvent();
          _IOHIDEventSetAttachment();
          IOHIDEventSetIntegerValue();
          IOHIDEventSetIntegerValue();
          goto LABEL_16;
        }
      }
    }
  }

  return v2;
}

void IOHIDKeyboardFilter::processModifiedKeyState(uint64_t result, uint64_t a2)
{
  if (a2 && !IOHIDEventGetIntegerValue())
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = IOHIDEventGetIntegerValue();
    v5 = 32;
    for (i = &dword_29D4344C4; *(i - 1) != v4 || *i != IntegerValue; i += 2)
    {
      v5 -= 8;
      if (!v5)
      {
        return;
      }
    }

    if (v4 == 255 && IntegerValue == 3)
    {
      v7 = 1;
    }

    else
    {
      v8 = v4 == 65281 && IntegerValue == 3;
      v7 = v8;
    }

    memset(v20, 170, sizeof(v20));
    sub_29D433250(v20, result + 64);
    v9 = v20[0];
    if (v20[0] != &v20[1])
    {
      v10 = (result + 96);
      do
      {
        if (*(v9 + 40) == 1 && !Key::modifierMask((v9 + 4)) || v7 && *(v9 + 9) == 7 && (*(v9 + 8) - 58) < 0xC)
        {
          v11 = *v10;
          if (!*v10)
          {
            goto LABEL_32;
          }

          v12 = v9[4];
          v13 = (result + 96);
          do
          {
            v14 = v11[4];
            v15 = v14 >= v12;
            v16 = v14 < v12;
            if (v15)
            {
              v13 = v11;
            }

            v11 = v11[v16];
          }

          while (v11);
          if (v13 == v10 || v12 < v13[4])
          {
LABEL_32:
            sub_29D4333D8(result + 88, v9 + 4, v9 + 2);
            mach_absolute_time();
            KeyboardEvent = IOHIDEventCreateKeyboardEvent();
            if (KeyboardEvent)
            {
              _IOHIDEventSetAttachment();
              (*(result + 32))(*(result + 40), *(result + 48), result, KeyboardEvent, 0);
              CFRelease(KeyboardEvent);
            }

            sub_29D4334A4((result + 88), v9 + 4);
          }
        }

        v18 = v9[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v9[2];
            v8 = *v19 == v9;
            v9 = v19;
          }

          while (!v8);
        }

        v9 = v19;
      }

      while (v19 != &v20[1]);
    }

    sub_29D431EF4(v20, v20[1]);
  }
}

const void *IOHIDKeyboardFilter::processSlowKeys(uint64_t a1, const void *a2)
{
  v2 = a2;
  if (a2 && IOHIDEventGetIntegerValue() != 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v5 = IOHIDEventGetIntegerValue();
    if (IOHIDEventGetIntegerValue())
    {
      CFRetain(v2);
      v6 = *(a1 + 296);
      if (v6)
      {
        CFRelease(v6);
      }

      *(a1 + 296) = v2;
      v7 = *(a1 + 512);
      v8 = dispatch_time(0, 1000000 * *(a1 + 304));
      dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
      return 0;
    }

    else if (*(a1 + 296) && IOHIDEventGetIntegerValue() == IntegerValue && IOHIDEventGetIntegerValue() == v5)
    {
      dispatch_source_set_timer(*(a1 + 512), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      if ((IOHIDEventGetEventFlags() & 0x10000) == 0)
      {
        v2 = 0;
      }

      v10 = *(a1 + 296);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 296) = 0;
      }
    }
  }

  return v2;
}

const void *IOHIDKeyboardFilter::processCapsLockDelay(uint64_t a1, const void *a2)
{
  v2 = a2;
  if (a2)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v5 = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    if (v5 == 7 && IntegerValue == 57)
    {
      v7 = v6;
      if (IOHIDKeyboardFilter::isDelayedEvent(v6, v2))
      {
        _IOHIDEventRemoveAttachment();
        return v2;
      }

      v8 = *(a1 + 404);
      if (v8 <= 0)
      {
        v8 = *(a1 + 400);
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      else if (!v7)
      {
        goto LABEL_11;
      }

      if (!*(a1 + 440))
      {
        v10 = *(a1 + 528);
        v11 = dispatch_time(0, 1000000 * v8);
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
        _IOHIDEventSetAttachment();
        *(a1 + 392) = v2;
        CFRetain(v2);
        return 0;
      }

LABEL_11:
      if (!*(a1 + 392))
      {
        return v2;
      }

      dispatch_source_set_timer(*(a1 + 528), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      v9 = *(a1 + 392);
      if (v9)
      {
        CFRelease(v9);
        v2 = 0;
        *(a1 + 392) = 0;
        return v2;
      }

      return 0;
    }
  }

  return v2;
}

BOOL IOHIDKeyboardFilter::isModifiersPressed(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 8);
  v2 = this + 72;
  if (v1 == (this + 72))
  {
    return 0;
  }

  while (1)
  {
    result = Key::isModifier((v1 + 4));
    if (result)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
    if (v5 == v2)
    {
      return result;
    }
  }

  return 1;
}

const void *IOHIDKeyboardFilter::processLockKeyDelay(uint64_t a1, const void *a2)
{
  v2 = a2;
  if (a2)
  {
    if ((IntegerValue = IOHIDEventGetIntegerValue(), v5 = IOHIDEventGetIntegerValue(), v6 = IOHIDEventGetIntegerValue(), v7 = v6, v5 == 12) && IntegerValue == 414 || (v6 = IOHIDServiceConformsTo(), v5 == 12) && v6 && IntegerValue == 48)
    {
      if (IOHIDKeyboardFilter::isDelayedEvent(v6, v2))
      {
        _IOHIDEventRemoveAttachment();
      }

      else
      {
        if (v7)
        {
          v8 = *(a1 + 432);
          v9 = dispatch_time(0, 1000000 * *(a1 + 424));
          dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
          _IOHIDEventSetAttachment();
          *(a1 + 416) = v2;
          CFRetain(v2);
        }

        else
        {
          if (!*(a1 + 416))
          {
            return v2;
          }

          dispatch_source_set_timer(*(a1 + 432), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
          v11 = *(a1 + 416);
          if (v11)
          {
            CFRelease(v11);
            v2 = 0;
            *(a1 + 416) = 0;
            return v2;
          }
        }

        return 0;
      }
    }
  }

  return v2;
}

uint64_t IOHIDKeyboardFilter::processStickyKeys(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = 0;
  if (a2)
  {
    v4 = *(a1 + 356);
    if (IOHIDEventGetIntegerValue() != 3 && IOHIDEventGetIntegerValue() != 1 && IOHIDEventGetIntegerValue() != 2)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      v6 = IOHIDEventGetIntegerValue();
      v7 = IOHIDEventGetIntegerValue();
      v8 = v7;
      if (v6 == 7 && (IntegerValue & 0xFFFFFFFB) == 0xE1)
      {
        if (!v7)
        {
          IOHIDKeyboardFilter::processShiftKey(a1);
        }
      }

      else
      {
        *(a1 + 308) = 0;
      }

      if (*(a1 + 356))
      {
        if (IntegerValue != 57 || v6 != 7)
        {
          v14 = IntegerValue | (v6 << 32);
          v15 = 0;
          if (Key::isModifier(&v14))
          {
            if (*(a1 + 356) == (v4 != 0))
            {
              if (v8)
              {
                v9 = IOHIDKeyboardFilter::processStickyKeyDown(a1, v6, IntegerValue, &v13);
              }

              else
              {
                v9 = IOHIDKeyboardFilter::processStickyKeyUp(a1, v6, IntegerValue, &v13);
              }

              if (!v9)
              {
                return 0;
              }

              IOHIDEventSetIntegerValue();
              IOHIDEventGetEventFlags();
              IOHIDEventSetEventFlags();
            }

            else
            {
              IOHIDEventGetEventFlags();
              IOHIDEventSetEventFlags();
            }

            goto LABEL_28;
          }
        }

        if (*(a1 + 308))
        {
          dispatch_source_set_timer(*(a1 + 504), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        }

        if (!v8)
        {
          v10 = *(a1 + 496);
          v12[0] = MEMORY[0x29EDCA5F8];
          v12[1] = 3221225472;
          v12[2] = sub_29D43137C;
          v12[3] = &unk_29F34F180;
          v12[4] = a1;
          dispatch_async(v10, v12);
          *(a1 + 308) = 0;
        }

        IOHIDKeyboardFilter::updateStickyKeysState(a1, 8, 16);
      }

      else if (v4)
      {
        IOHIDEventGetEventFlags();
        IOHIDEventSetEventFlags();
LABEL_28:
        IOHIDEventSetIntegerValue();
      }
    }
  }

  return v2;
}

IOHIDKeyboardFilter *IOHIDKeyboardFilter::processCapsLockState(IOHIDKeyboardFilter *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = IOHIDEventGetIntegerValue();
    if (result != 1)
    {
      result = IOHIDEventGetIntegerValue();
      if (result != 2)
      {
        IntegerValue = IOHIDEventGetIntegerValue();
        v4 = IOHIDEventGetIntegerValue();
        result = IOHIDEventGetIntegerValue();
        if (v4 == 7 && IntegerValue == 57 && result)
        {
          IOHIDKeyboardFilter::setCapsLockState(v2, *(v2 + 110) == 0, @"Keyboard");

          return IOHIDServiceSetProperty();
        }
      }
    }
  }

  return result;
}

const void *IOHIDKeyboardFilter::processKeyRepeats(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return a2;
  }

  if (IOHIDEventGetIntegerValue() == 1)
  {
    return a2;
  }

  if (IOHIDEventGetIntegerValue() == 2)
  {
    return a2;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v9 = IOHIDEventGetIntegerValue();
  v10 = IOHIDEventGetIntegerValue();
  v18 = IntegerValue | (v9 << 32);
  v19 = 0;
  if (Key::isModifier(&v18))
  {
    return a2;
  }

  if (v9 > 11)
  {
    if (v9 == 12)
    {
      if (IntegerValue - 48 <= 0x10 && ((1 << (IntegerValue - 48)) & 0x10005) != 0 || IntegerValue - 176 <= 0x1D && ((1 << (IntegerValue + 80)) & 0x20000101) != 0)
      {
        return a2;
      }

      goto LABEL_22;
    }

    if (v9 != 255)
    {
      goto LABEL_14;
    }

    if ((IntegerValue & 0xFFFFFFFE) == 6)
    {
      return a2;
    }
  }

  else
  {
    if (v9 != 7)
    {
      if (v9 == 11)
      {
        return a2;
      }

LABEL_14:
      v13 = IntegerValue == 34 && v9 == 65281;
      if (v9 == 65289 || v13)
      {
        return a2;
      }

      goto LABEL_22;
    }

    if (IntegerValue - 83 <= 0x2C && ((1 << (IntegerValue - 83)) & 0x100000080001) != 0)
    {
      return a2;
    }
  }

LABEL_22:
  v14 = *(a1 + 368);
  if (v10)
  {
    if (v14)
    {
      CFRelease(v14);
    }

    CFGetAllocator(a2);
    mach_absolute_time();
    *(a1 + 368) = IOHIDEventCreateKeyboardEvent();
    v15 = *(a1 + 520);
    if ((IOHIDEventGetEventFlags() & 0x10000) != 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = a3;
    }

    v17 = dispatch_time(0, 1000000 * v16);
    dispatch_source_set_timer(v15, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else if (v14 && IntegerValue == IOHIDEventGetIntegerValue() && v9 == IOHIDEventGetIntegerValue())
  {
    dispatch_source_set_timer(*(a1 + 520), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    CFRelease(*(a1 + 368));
    *(a1 + 368) = 0;
  }

  return a2;
}

void IOHIDKeyboardFilter::processKeyState(uint64_t a1, uint64_t a2)
{
  if (a2 && IOHIDEventGetIntegerValue() != 1 && IOHIDEventGetIntegerValue() != 2)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = IOHIDEventGetIntegerValue();
    v5 = IOHIDEventGetIntegerValue();
    EventFlags = IOHIDEventGetEventFlags();
    v7 = _IOHIDEventCopyAttachment();
    v8 = v7 == *MEMORY[0x29EDB8F00];
    if (v7)
    {
      CFRelease(v7);
    }

    v9 = IntegerValue | (v4 << 32);
    if (v5)
    {
      v15 = v9;
      v16 = v8;
      memset(v17, 170, sizeof(v17));
      v18 = EventFlags;
      sub_29D433528(a1 + 64, &v15, &v15);
    }

    else
    {
      v10 = *(a1 + 72);
      if (v10)
      {
        v11 = (a1 + 72);
        do
        {
          v12 = v10[4];
          v13 = v12 >= v9;
          v14 = v12 < v9;
          if (v13)
          {
            v11 = v10;
          }

          v10 = v10[v14];
        }

        while (v10);
        if (v11 != (a1 + 72) && v9 >= v11[4])
        {
          sub_29D432614((a1 + 64), v11);

          operator delete(v11);
        }
      }
    }
  }
}

uint64_t *sub_29D430200(uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x29EDC95A0] + 64;
  a1[15] = MEMORY[0x29EDC95A0] + 64;
  v7 = *(MEMORY[0x29EDC9530] + 16);
  v8 = *(MEMORY[0x29EDC9530] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x29EDC95A0] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  sub_29D433074((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_29D43035C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29ED578A0](v1);
  _Unwind_Resume(a1);
}

void *sub_29D430384(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x29ED57830](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_29D4304F0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x29D4304B0);
  }

  __cxa_rethrow();
}

BOOL IOHIDKeyboardFilter::isKeyPressed(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 72);
  v2 = a1 + 72;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2 || a2 < *(v5 + 32))
  {
LABEL_9:
    v5 = v2;
  }

  return v5 != v2;
}

BOOL IOHIDKeyboardFilter::isDelayedEvent(uint64_t a1, uint64_t a2)
{
  v2 = _IOHIDEventCopyAttachment();
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x29EDB8F00];
  CFRelease(v2);
  return v3;
}

uint64_t IOHIDKeyboardFilter::remapKey(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  result = 0x70000003ELL;
  if (a2 != 0x70000003ELL)
  {
    goto LABEL_16;
  }

  v5 = a1 + 72;
  v6 = *(a1 + 72);
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = a1 + 72;
  v8 = a1 + 72;
  v9 = *(a1 + 72);
  do
  {
    v10 = *(v9 + 32);
    v11 = v10 >= 0x7000000E3;
    v12 = v10 < 0x7000000E3;
    if (v11)
    {
      v8 = v9;
    }

    v9 = *(v9 + 8 * v12);
  }

  while (v9);
  if (v8 == v5 || *(v8 + 32) >= 0x7000000E4uLL)
  {
    do
    {
      v13 = *(v6 + 32);
      v11 = v13 >= 0x7000000E7;
      v14 = v13 < 0x7000000E7;
      if (v11)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v14);
    }

    while (v6);
    if (v7 == v5 || *(v7 + 32) >= 0x7000000E8uLL)
    {
LABEL_16:
      ActiveModifiers = IOHIDKeyboardFilter::getActiveModifiers(a1);
      if ((*(a1 + 288) != 0) != ((ActiveModifiers & 0x200) == 0))
      {
        v16 = *(a1 + 144);
        if (v16)
        {
          v17 = a1 + 144;
          do
          {
            v18 = *(v16 + 32);
            v11 = v18 >= v2;
            v19 = v18 < v2;
            if (v11)
            {
              v17 = v16;
            }

            v16 = *(v16 + 8 * v19);
          }

          while (v16);
          if (v17 != a1 + 144 && v2 >= *(v17 + 32))
          {
            v2 = *(v17 + 48);
          }
        }
      }

      v20 = *(a1 + 160);
      v23 = *v20;
      v21 = v20 + 1;
      v22 = v23;
      if (v23 != v21)
      {
        while (1)
        {
          if ((v22[4] & ActiveModifiers) != 0)
          {
            v24 = v22[6];
            if (v24)
            {
              v25 = v22 + 6;
              do
              {
                v26 = v24[4];
                v11 = v26 >= v2;
                v27 = v26 < v2;
                if (v11)
                {
                  v25 = v24;
                }

                v24 = v24[v27];
              }

              while (v24);
              if (v25 != v22 + 6 && v2 >= v25[4])
              {
                break;
              }
            }
          }

          v28 = v22[1];
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
              v29 = v22[2];
              v30 = *v29 == v22;
              v22 = v29;
            }

            while (!v30);
          }

          v22 = v29;
          if (v29 == v21)
          {
            goto LABEL_42;
          }
        }

        v2 = v25[6];
      }

LABEL_42:
      if (*(a1 + 408))
      {
        v31 = *(a1 + 248);
        if (v31)
        {
          v32 = a1 + 248;
          do
          {
            v33 = *(v31 + 32);
            v11 = v33 >= v2;
            v34 = v33 < v2;
            if (v11)
            {
              v32 = v31;
            }

            v31 = *(v31 + 8 * v34);
          }

          while (v31);
          if (v32 != a1 + 248 && v2 >= *(v32 + 32))
          {
            v2 = *(v32 + 48);
          }
        }
      }

      v35 = *(a1 + 120);
      if (v35)
      {
        v36 = a1 + 120;
        do
        {
          v37 = *(v35 + 32);
          v11 = v37 >= v2;
          v38 = v37 < v2;
          if (v11)
          {
            v36 = v35;
          }

          v35 = *(v35 + 8 * v38);
        }

        while (v35);
        if (v36 != a1 + 120 && v2 >= *(v36 + 32))
        {
          v2 = *(v36 + 48);
        }
      }

      v39 = *(a1 + 272);
      if (!v39)
      {
        return v2;
      }

      v40 = a1 + 272;
      do
      {
        v41 = *(v39 + 32);
        v11 = v41 >= v2;
        v42 = v41 < v2;
        if (v11)
        {
          v40 = v39;
        }

        v39 = *(v39 + 8 * v42);
      }

      while (v39);
      if (v40 != a1 + 272 && v2 >= *(v40 + 32))
      {
        return *(v40 + 48);
      }

      else
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t IOHIDKeyboardFilter::getActiveModifiers(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 8);
  v2 = this + 72;
  if (v1 == this + 72)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = Key::modifierMask((v1 + 32));
    v5 = *(v1 + 1);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = *(v1 + 2);
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v3 = v4 | v3;
    v1 = v6;
  }

  while (v6 != v2);
  return v3;
}

uint64_t IOHIDKeyboardFilter::getStickyKeyState(IOHIDKeyboardFilter *this, int a2, unsigned int a3)
{
  if (a3 == 57)
  {
    v3 = 0;
  }

  else if (a2 == 255 && a3 == 3)
  {
    v3 = 9;
  }

  else
  {
    v4 = a3 - 4;
    if (a3 <= 0xE3)
    {
      v4 = a3;
    }

    v3 = (v4 + 33);
  }

  return *(this + v3 + 78);
}

void IOHIDKeyboardFilter::setStickyKeyState(IOHIDKeyboardFilter *this, int a2, unsigned int a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3 == 57)
  {
    v6 = 0;
  }

  else if (a2 == 255 && a3 == 3)
  {
    v6 = 9;
  }

  else
  {
    v7 = a3 - 4;
    if (a3 <= 0xE3)
    {
      v7 = a3;
    }

    v6 = (v7 + 33);
  }

  v8 = _IOHIDLogCategory();
  v9 = this + 4 * v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    RegistryID = *(this + 3);
    if (RegistryID)
    {
      RegistryID = IOHIDServiceGetRegistryID();
    }

    v11 = *(v9 + 78);
    v12 = 138412802;
    v13 = RegistryID;
    v14 = 1024;
    v15 = v11;
    v16 = 1024;
    v17 = a4;
    _os_log_debug_impl(&dword_29D42A000, v8, OS_LOG_TYPE_DEBUG, "[%@] StickyKey state %x -> %x\n", &v12, 0x18u);
  }

  *(v9 + 78) = a4;
}

uint64_t IOHIDKeyboardFilter::processStickyKeyDown(IOHIDKeyboardFilter *this, int a2, unsigned int a3, unsigned int *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3 == 57)
  {
    v7 = 0;
  }

  else if (a2 == 255 && a3 == 3)
  {
    v7 = 9;
  }

  else
  {
    v8 = a3 - 4;
    if (a3 <= 0xE3)
    {
      v8 = a3;
    }

    v7 = (v8 + 33);
  }

  v9 = *(this + v7 + 78);
  switch(v9)
  {
    case 4:
      v10 = 0;
      v9 = 1;
      break;
    case 2:
      *a4 = 0x40000;
      v9 = 4;
      v10 = 2;
      break;
    case 1:
      *a4 = 0x20000;
      v9 = 8;
      v10 = 1;
      break;
    default:
      v11 = _IOHIDLogCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        RegistryID = *(this + 3);
        if (RegistryID)
        {
          RegistryID = IOHIDServiceGetRegistryID();
        }

        v16 = 138412802;
        v17 = RegistryID;
        v18 = 1024;
        v19 = a2;
        v20 = 1024;
        v21 = a3;
        _os_log_error_impl(&dword_29D42A000, v11, OS_LOG_TYPE_ERROR, "[%@] StickyKey DOWN in bad state for 0x%x:0x%x\n", &v16, 0x18u);
      }

      v10 = 0;
      break;
  }

  IOHIDKeyboardFilter::setStickyKeyState(this, a2, a3, v9);
  v12 = _IOHIDLogCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(this + 3);
    if (v14)
    {
      v14 = IOHIDServiceGetRegistryID();
    }

    v16 = 138413058;
    v17 = v14;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = v10;
    _os_log_debug_impl(&dword_29D42A000, v12, OS_LOG_TYPE_DEBUG, "[%@] StickyKey DOWN 0x%x:0x%x phase 0x%x\n", &v16, 0x1Eu);
  }

  return v10;
}

uint64_t IOHIDKeyboardFilter::processStickyKeyUp(IOHIDKeyboardFilter *this, int a2, unsigned int a3, unsigned int *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3 == 57)
  {
    v7 = 0;
  }

  else if (a2 == 255 && a3 == 3)
  {
    v7 = 9;
  }

  else
  {
    v8 = a3 - 4;
    if (a3 <= 0xE3)
    {
      v8 = a3;
    }

    v7 = (v8 + 33);
  }

  v9 = 0;
  v10 = *(this + v7 + 78);
  if (v10 <= 7)
  {
    if (v10 == 1)
    {
      *a4 = 0x80000;
      v9 = 3;
      goto LABEL_21;
    }

    if (v10 == 4)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v10 == 8)
  {
    v11 = 2;
    goto LABEL_20;
  }

  if (v10 == 16)
  {
    *a4 = 0x80000;
    v11 = 1;
    v9 = 3;
LABEL_20:
    IOHIDKeyboardFilter::setStickyKeyState(this, a2, a3, v11);
    goto LABEL_21;
  }

LABEL_16:
  v12 = _IOHIDLogCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    RegistryID = *(this + 3);
    if (RegistryID)
    {
      RegistryID = IOHIDServiceGetRegistryID();
    }

    v17 = 138412802;
    v18 = RegistryID;
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    _os_log_error_impl(&dword_29D42A000, v12, OS_LOG_TYPE_ERROR, "[%@] StickyKey UP in bad state for 0x%x:0x%x\n", &v17, 0x18u);
  }

  v9 = 0;
LABEL_21:
  v13 = _IOHIDLogCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(this + 3);
    if (v15)
    {
      v15 = IOHIDServiceGetRegistryID();
    }

    v17 = 138413058;
    v18 = v15;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = a2;
    v23 = 1024;
    v24 = v9;
    _os_log_debug_impl(&dword_29D42A000, v13, OS_LOG_TYPE_DEBUG, "[%@] StickyKey UP 0x%x:0x%x phase 0x%x\n", &v17, 0x1Eu);
  }

  return v9;
}

void IOHIDKeyboardFilter::resetStickyKeys(IOHIDKeyboardFilter *this)
{
  v1 = *(this + 62);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29D430FEC;
  block[3] = &unk_29F34F180;
  block[4] = this;
  dispatch_async(v1, block);
}

void sub_29D430FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  IOHIDKeyboardFilter::updateStickyKeysState(v1, 8, 16);
  IOHIDKeyboardFilter::dispatchStickyKeys(v1, 2);
  *(v1 + 77) = 0;
}

void IOHIDKeyboardFilter::updateStickyKeysState(IOHIDKeyboardFilter *this, int a2, int a3)
{
  v6 = 0;
  v7 = this + 312;
  do
  {
    v8 = v6;
    v9 = v6 + 223;
    v10 = v6 - 37;
    if (v6 <= 4)
    {
      v10 = v6 - 33;
    }

    v11 = (v10 + 33);
    if (v6 == 9)
    {
      v9 = 3;
      v12 = 255;
    }

    else
    {
      v12 = 7;
    }

    if (v6 == 9)
    {
      v11 = 9;
    }

    if (v6)
    {
      v13 = v9;
    }

    else
    {
      v13 = 57;
    }

    if (v6)
    {
      v14 = v12;
    }

    else
    {
      v14 = 7;
    }

    if (v6)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    if (*&v7[4 * v15] == a2)
    {
      IOHIDKeyboardFilter::setStickyKeyState(this, v14, v13, a3);
    }

    v6 = v8 + 1;
  }

  while (v8 != 9);
}

void IOHIDKeyboardFilter::dispatchStickyKeys(IOHIDKeyboardFilter *this, int a2)
{
  v4 = 0;
  v5 = this + 312;
  do
  {
    v6 = v4;
    v7 = v4 + 223;
    v8 = v4 - 37;
    if (v4 <= 4)
    {
      v8 = v4 - 33;
    }

    v9 = (v8 + 33);
    if (v4 == 9)
    {
      v7 = 3;
      v10 = 255;
    }

    else
    {
      v10 = 7;
    }

    if (v4 == 9)
    {
      v9 = 9;
    }

    if (v4)
    {
      v11 = v7;
    }

    else
    {
      v11 = 57;
    }

    if (v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7;
    }

    if (v4)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    if ((*&v5[4 * v13] & a2) != 0)
    {
      mach_absolute_time();
      KeyboardEvent = IOHIDEventCreateKeyboardEvent();
      if (KeyboardEvent)
      {
        v15 = KeyboardEvent;
        IOHIDEventSetIntegerValue();
        (*(this + 4))(*(this + 5), *(this + 6), this, v15, 0);
        CFRelease(v15);
        IOHIDKeyboardFilter::setStickyKeyState(this, v12, v11, 1);
      }
    }

    v4 = v6 + 1;
  }

  while (v6 != 9);
}

void IOHIDKeyboardFilter::processShiftKey(IOHIDKeyboardFilter *this)
{
  if (*(this + 88))
  {
    v2 = *(this + 77);
    v3 = v2 + 1;
    *(this + 77) = v2 + 1;
    if (!v2)
    {
      v4 = *(this + 63);
      v5 = dispatch_time(0, 30000000000);
      dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      v3 = *(this + 77);
    }

    if (v3 >= 5)
    {
      *(this + 77) = 0;
      *(this + 89) = *(this + 89) == 0;
      v6 = _IOHIDLogCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        if (*(this + 3))
        {
          IOHIDServiceGetRegistryID();
        }

        sub_29D433BE4();
      }

      IOHIDServiceSetProperty();
      if (*(this + 89))
      {
        IOHIDKeyboardFilter::startStickyKey(this);
      }

      else
      {
        IOHIDKeyboardFilter::dispatchStickyKeys(this, 14);
      }
    }
  }
}

void *IOHIDKeyboardFilter::serializeMapper@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], *(a1 + 16), MEMORY[0x29EDB9000]);
  result = sub_29D431C14(a2, Mutable, 1);
  *a2 = &unk_2A241E9D0;
  v6 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v10 = 0xAAAAAAAAAAAAAAAALL;
      value = 0xAAAAAAAAAAAAAAAALL;
      sub_29D4318F8(&v10, 2);
      sub_29D4314DC(&v10, @"Src", v6[4]);
      sub_29D4314DC(&v10, @"Dst", v6[6]);
      CFArrayAppendValue(*(a2 + 8), value);
      result = sub_29D431A1C(&v10);
      v7 = v6[1];
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
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != (a1 + 8));
  }

  return result;
}

void *sub_29D4314DC(uint64_t a1, const void *a2, uint64_t a3)
{
  sub_29D4335FC(&v6, a3);
  if (a2 && value)
  {
    CFDictionarySetValue(*(a1 + 8), a2, value);
  }

  return sub_29D431A6C(&v6);
}

void *IOHIDKeyboardFilter::serializeModifierMappings@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], *(a1 + 16), MEMORY[0x29EDB9000]);
  result = sub_29D431C14(a2, Mutable, 1);
  *a2 = &unk_2A241E9D0;
  v7 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      theDict = 0xAAAAAAAAAAAAAAAALL;
      sub_29D4318F8(&v14, *(v7 + 14));
      v8 = CFStringCreateWithFormat(v4, 0, @"%#x", *(v7 + 8));
      IOHIDKeyboardFilter::serializeMapper((v7 + 5), &v12);
      if (v8 && value)
      {
        CFDictionarySetValue(theDict, v8, value);
      }

      sub_29D431D60(&v12);
      CFArrayAppendValue(*(a2 + 8), theDict);
      result = sub_29D431A1C(&v14);
      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != (a1 + 8));
  }

  return result;
}

void sub_29D4316A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_29D431D60(va);
  sub_29D431A1C(va1);
  sub_29D431D60(v5);
  _Unwind_Resume(a1);
}

uint64_t IOHIDKeyboardFilter::getKeyboardID(IOHIDKeyboardFilter *this, int a2, int a3)
{
  if (a3 != 1452)
  {
    return 3;
  }

  if ((a2 - 514) > 0x11)
  {
    return 198;
  }

  return dword_29D4345C4[(a2 - 514)];
}

void *sub_29D4318F8(void *a1, int a2)
{
  *a1 = &unk_2A241E900;
  a1[1] = CFDictionaryCreateMutable(0, a2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  return a1;
}

void sub_29D43196C(void *a1)
{
  sub_29D431A1C(a1);

  JUMPOUT(0x29ED578D0);
}

void sub_29D4319A8(void *a1)
{
  sub_29D431A1C(a1);

  JUMPOUT(0x29ED578D0);
}

void sub_29D4319E4(void *a1)
{
  sub_29D431A1C(a1);

  JUMPOUT(0x29ED578D0);
}

void *sub_29D431A1C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241E980;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D431A6C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241E9A0;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_29D431AC0(void *a1)
{
  sub_29D431A6C(a1);

  JUMPOUT(0x29ED578D0);
}

uint64_t sub_29D431AF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void *sub_29D431C14(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241EA50;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241EA30;
  return a1;
}

void sub_29D431CB0(void *a1)
{
  sub_29D431D60(a1);

  JUMPOUT(0x29ED578D0);
}

void sub_29D431CEC(void *a1)
{
  sub_29D431D60(a1);

  JUMPOUT(0x29ED578D0);
}

void sub_29D431D28(void *a1)
{
  sub_29D431D60(a1);

  JUMPOUT(0x29ED578D0);
}

void *sub_29D431D60(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241EA50;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D431DB0(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241E980;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241E960;
  return a1;
}

void sub_29D431E64(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_29D431EC0(exception, a1);
  __cxa_throw(exception, off_29F34F178, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_29D431EC0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void sub_29D431EF4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29D431EF4(a1, *a2);
    sub_29D431EF4(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_29D431F48(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29D431F48(a1, *a2);
    sub_29D431F48(a1, a2[1]);
    sub_29D431EF4((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *sub_29D431FA8(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_29D432088(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_29D4320E0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_29D4320E0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_29D43227C(void *result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_29D432430(v8);
      while (a2 != a3)
      {
        sub_29D432384(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 4;
            break;
          }

          v11 = sub_29D432430(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 4;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_29D432484(&v10);
  }

  while (a2 != a3)
  {
    result = sub_29D4324DC(v5, a2, a2);
    a2 += 4;
  }

  return result;
}

void sub_29D432370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29D432484(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_29D432384(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *a2;
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = (a1 + 8);
LABEL_10:
    v9 = *a2;
    *(a3 + 40) = *(a2 + 8);
    *(a3 + 32) = v9;
    v10 = a2[2];
    *(a3 + 56) = *(a2 + 24);
    *(a3 + 48) = v10;
    sub_29D432088(a1, v7, v4, a3);
  }

  return a3;
}

void *sub_29D432430(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_29D432484(uint64_t a1)
{
  sub_29D431EF4(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29D431EF4(*a1, v2);
  }

  return a1;
}

void *sub_29D4324DC(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_29D4325A8(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_29D431EF4(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t *sub_29D432614(uint64_t **a1, uint64_t *a2)
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
  sub_29D432688(v6, a2);
  return v3;
}

uint64_t *sub_29D432688(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void *sub_29D432A08(void *a1, int a2)
{
  valuePtr = a2;
  *a1 = &unk_2A241EA70;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  return a1;
}

void sub_29D432A84(void *a1)
{
  sub_29D431A6C(a1);

  JUMPOUT(0x29ED578D0);
}

void *sub_29D432ABC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_29D432B14(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_29D432B14(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29D432B9C(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_29D432B9C(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *sub_29D432C3C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_29D432C3C(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_29D432DE4(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_29D432430(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v10 = v9[4];
          *(v8 + 40) = *(v9 + 40);
          v8[4] = v10;
          v11 = v9[6];
          *(v8 + 56) = *(v9 + 56);
          v8[6] = v11;
          sub_29D432F60(v5, v8);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = sub_29D432430(v15);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_29D432484(&v14);
  }

  if (a2 != a3)
  {
    sub_29D432FD0(v5, a2 + 2);
  }

  return result;
}

void sub_29D432F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29D432484(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29D432F60(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_29D432088(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_29D433074(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29ED57860](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_29D433148(a1);
  return a1;
}

void sub_29D433120(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_29D433148(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_29D433250(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_29D4332A8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_29D4332A8(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29D433330(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_29D433330(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *sub_29D432C3C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_29D4333D8(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_29D4334A4(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_29D432614(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_29D433528(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *sub_29D4335FC(void *a1, uint64_t a2)
{
  valuePtr = a2;
  *a1 = &unk_2A241EA70;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  return a1;
}

uint64_t sub_29D433678(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v4;
  return result;
}

void sub_29D4336A0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x12u);
}

uint64_t sub_29D4336C8(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  return result;
}

uint64_t sub_29D4336E0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_29D4336EC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_29D433714(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_29D42A000, a2, OS_LOG_TYPE_DEBUG, "Event dropped: %@\n", &v2, 0xCu);
}

void sub_29D4337D0()
{
  sub_29D4336D4();
  v3 = sub_29D4336C8(v0, 5.778e-34, v1, v2);
  sub_29D433708(v3, v4, v5);
  sub_29D4336BC();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_29D433854()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _lockKeyDelayMS: %d\n", v3, v4);
}

void sub_29D43388C()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _capsLockDelayOverrideMS: %d\n", v3, v4);
}

void sub_29D4338C4()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _capsLockDelayMS: %d\n", v3, v4);
}

void sub_29D4338FC()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _slowKeysDelayMS = %d\n", v3, v4);
}

void sub_29D4339A4()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _capsLockDarkWakeLEDInhibit: %d\n", v3, v4);
}

void sub_29D4339DC()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _capsLockLEDInhibit: %d\n", v3, v4);
}

void sub_29D433A14(uint64_t a1, uint64_t a2)
{
  sub_29D4336E0(a1, a2, 5.778e-34);
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  sub_29D4336A0(&dword_29D42A000, "[%@] capsLockState: %d\n", v4, v5);
}

void sub_29D433A5C()
{
  sub_29D4336D4();
  v3 = sub_29D4336C8(v0, 5.778e-34, v1, v2);
  sub_29D433708(v3, v4, v5);
  sub_29D4336BC();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_29D433AA8()
{
  sub_29D4336D4();
  v3 = sub_29D4336C8(v0, 5.778e-34, v1, v2);
  sub_29D433708(v3, v4, v5);
  sub_29D4336BC();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_29D433AF4()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _stickyKeyToggle: %d\n", v3, v4);
}

void sub_29D433B2C()
{
  sub_29D433690();
  sub_29D433678(v0, 5.778e-34, v1, v2);
  sub_29D4336A0(&dword_29D42A000, "[%@] _stickyKeyDisable: %d\n", v3, v4);
}

void sub_29D433B64(uint64_t a1, uint64_t a2)
{
  sub_29D4336E0(a1, a2, 5.778e-34);
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  sub_29D4336A0(&dword_29D42A000, "[%@] _stickyKeyOn: %d\n", v4, v5);
}

void sub_29D433BE4()
{
  sub_29D4336D4();
  v3 = sub_29D4336C8(v0, 5.778e-34, v1, v2);
  sub_29D433708(v3, v4, v5);
  sub_29D4336BC();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
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

void operator new()
{
    ;
  }
}