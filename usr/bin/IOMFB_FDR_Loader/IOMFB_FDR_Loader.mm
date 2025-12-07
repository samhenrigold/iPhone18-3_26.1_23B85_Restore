uint64_t sub_1000008D8(io_registry_entry_t a1, const __CFString *a2, uint64_t a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    valuePtr = a3;
    CFNumberGetValue(CFProperty, kCFNumberLongType, &valuePtr);
    CFRelease(v5);
    return valuePtr;
  }

  return a3;
}

BOOL sub_100000940(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v3 = CFProperty;
  v4 = CFBooleanGetValue(CFProperty) != 0;
  CFRelease(v3);
  return v4;
}

BOOL sub_100000998(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x600u);
    sub_100000A10("can't read property '%s'", CStringPtr);
  }

  v4 = CFProperty;
  v5 = CFBooleanGetValue(CFProperty) != 0;
  CFRelease(v4);
  return v5;
}

void sub_100000A10(const char *a1, ...)
{
  va_start(va, a1);
  fwrite("error: ", 7uLL, 1uLL, __stderrp);
  vfprintf(__stderrp, a1, va);
  fputc(10, __stderrp);
  if ((byte_100038018 & 1) == 0)
  {
    sub_100005E6C();
  }

  exit(1);
}

CFTypeRef sub_100000A84(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x600u);
    sub_100000AE8("can't read property '%s'", CStringPtr);
  }

  return CFProperty;
}

uint64_t sub_100000AE8(const char *a1, ...)
{
  va_start(va, a1);
  fwrite("warning: ", 9uLL, 1uLL, __stderrp);
  vfprintf(__stderrp, a1, va);
  return fputc(10, __stderrp);
}

BOOL sub_100000B54(io_registry_entry_t a1, const __CFString *a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  return IORegistryEntrySetCFProperty(a1, a2, *v3) == 0;
}

int *sub_100000BA8()
{
  if (dword_100053A18 == 1)
  {
    return &dword_1000539BC;
  }

  else
  {
    return &unk_100053A00;
  }
}

char *sub_100000BD0()
{
  if (dword_100053A18 == 1)
  {
    return &dword_1000539BC + 2;
  }

  else
  {
    return &unk_100053A02;
  }
}

uint64_t sub_100000C04(uint64_t result)
{
  v1 = &unk_1000539C8;
  if (dword_100053A18 != 1)
  {
    v1 = &unk_100053A10;
  }

  *v1 = result;
  return result;
}

uint64_t sub_100000C24(uint64_t result)
{
  v1 = &dword_1000539C0;
  if (dword_100053A18 != 1)
  {
    v1 = &unk_100053A08;
  }

  *v1 = result;
  return result;
}

uint64_t sub_100000C44@<X0>(const std::string *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  *v15 = v5;
  v16 = v5;
  v14[1] = v5;
  v14[2] = v5;
  v13 = v5;
  v14[0] = v5;
  v12 = v5;
  sub_100000EB0(&v12, a1, 24);
  __p = 0uLL;
  v11 = 0;
  while (1)
  {
    v6 = sub_100001168(&v12, &__p, v3);
    v7 = HIBYTE(v11);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v11 < 0)
    {
      v7 = *(&__p + 1);
    }

    if (v7)
    {
      sub_100001364(a3, &__p);
    }
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  *&v13 = v8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void (__cdecl ***sub_100000EB0(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this), const std::string *a2, uint64_t a3))(std::basic_stringstream<char> *__hidden this)
{
  v3 = a3;
  a1[22] = 0;
  v6 = a1 + 2;
  *a1 = v8;
  *(*(v8 - 3) + a1) = v7;
  a1[1] = 0;
  v9 = (*(*a1 - 3) + a1);
  std::ios_base::init(v9, a1 + 3);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  a1[2] = v11;
  *(*(v11 - 3) + v6) = v10;
  *a1 = v12;
  sub_100007788((a1 + 3), a2, v3);
  return a1;
}

void sub_100001140(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000012D4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100001294);
  }

  __cxa_rethrow();
}

uint64_t sub_100001364(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100006028(a1, a2);
  }

  else
  {
    sub_100005FC8(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void start()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100034420);
  v4 = *v2;
  if (v3 <= 1)
  {
    sub_1000065FC(*v2);
  }

  bzero(&qword_100038000, 0x1BAE8uLL);
  bzero(qword_100053AE8, 0x68uLL);
  byte_100053B40 = byte_100053B40 & 0xF0 | 3;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v5;
  v46 = v5;
  *__b = v5;
  __n[0] = 128;
  bzero(byte_100053B50, 0x80uLL);
  if (sysctlbyname("hw.targettype", byte_100053B50, __n, 0, 0))
  {
    sub_100000A10("Could not determine device type");
  }

  v6 = &qword_100034458;
  v7 = __n[0];
  v8 = 122;
  v42 = v4;
  while (strncmp(byte_100053B50, *(v6 - 3), v7))
  {
    v6 += 8;
    if (!--v8)
    {
      sub_100000AE8("Device %s unknown", byte_100053B50);
      v9 = 0;
      goto LABEL_12;
    }
  }

  v9 = *(v6 - 4);
  if (v9)
  {
    v10 = &__b[1];
    v11 = *(v6 - 4);
    do
    {
      *(v10 - 1) = *(v6 - 1);
      v12 = *v6;
      v6 += 2;
      *v10 = v12;
      v10 += 2;
      --v11;
    }

    while (v11);
  }

LABEL_12:
  v13 = 0;
  v14 = 0;
  LODWORD(qword_100053AF4) = 0;
  qword_100053B48 = 0;
  unk_100053B30 = 0;
  *&dword_100053B28 = 0;
  v15 = v2;
  while (1)
  {
    v17 = v15[1];
    ++v15;
    v16 = v17;
    v18 = v3 - 1;
    v19 = *v17;
    if (v19 == 45)
    {
      v20 = *(v16 + 1);
      if (v20 > 0x68)
      {
        if (v20 == 110)
        {
          if (!v16[2])
          {
            v29 = byte_100053B40 & 0xFE;
            goto LABEL_63;
          }
        }

        else if (v20 == 105 && !v16[2])
        {
          v18 = v3 - 2;
          if (v3 == 2)
          {
            sub_1000065FC(v42);
          }

          v23 = malloc_type_malloc(0x18uLL, 0xF00400FAC18B6uLL);
          if (!v23)
          {
            sub_100000A10("could not create custom file list");
          }

          v25 = v2[2];
          v24 = v2 + 2;
          *v23 = v25;
          v26 = qword_100053B48;
          v23[1] = qword_100053B48;
          if (v26)
          {
            *(v26 + 16) = v23 + 1;
          }

          qword_100053B48 = v23;
          v23[2] = &qword_100053B48;
          v27 = qword_100053AF4;
          v13 = qword_100053AF4 + 1;
          LODWORD(qword_100053AF4) = qword_100053AF4 + 1;
          v28 = &qword_100053AE8[2 * v27];
          v28[2] = 0x100000001;
          v28[3] = 0;
          ++v14;
          goto LABEL_68;
        }
      }

      else if (v20 == 67)
      {
        if (!v16[2])
        {
          v29 = byte_100053B40 & 0xFD;
LABEL_63:
          byte_100053B40 = v29;
          goto LABEL_69;
        }
      }

      else if (v20 == 70 && !v16[2])
      {
        if (v13)
        {
          sub_1000065FC(v42);
        }

        qword_100053AF4 = 0x200000001;
        v21 = __b + 4;
        v22 = v9;
        if (v9)
        {
          while (*(v21 - 1) != 2)
          {
            v21 += 16;
            if (!--v22)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_54;
        }

LABEL_48:
        dword_100053AFC = 0;
        goto LABEL_55;
      }
    }

    if (!strncmp(v16, "--fs", 5uLL))
    {
      if (v13)
      {
        sub_1000065FC(v42);
      }

      qword_100053AF4 = 0x300000001;
      v21 = __b + 4;
      v30 = v9;
      if (!v9)
      {
        goto LABEL_48;
      }

      while (*(v21 - 1) != 3)
      {
        v21 += 16;
        if (!--v30)
        {
          goto LABEL_48;
        }
      }

LABEL_54:
      dword_100053AFC = *v21;
      qword_100053B00 = *(v21 + 4);
LABEL_55:
      ++v14;
      v13 = 1;
      goto LABEL_69;
    }

    if (!strncmp(v16, "--launchd_boot", 0x10uLL))
    {
      if (v13)
      {
        sub_1000065FC(v42);
      }

      byte_100053B40 |= 4u;
      *(&qword_100053AF4 + 4) = *__b;
      unk_100053B08 = v45;
      unk_100053B18 = v46;
      LODWORD(qword_100053AF4) = v9;
      ++v14;
      v13 = v9;
    }

    else
    {
      if (!strncmp(v16, "--pdc_ffr_low", 0x10uLL))
      {
        v18 = v3 - 2;
        if (v3 == 2)
        {
          sub_1000065FC(v42);
        }

        v31 = v2[2];
        v24 = v2 + 2;
        v32 = atof(v31);
        if (v32 <= 0.0)
        {
          sub_100000A10("pdc bin must be positive.");
        }

        *&qword_100038908 = v32;
        goto LABEL_68;
      }

      if (!strncmp(v16, "--pdc_ffr_high", 0x10uLL))
      {
        v18 = v3 - 2;
        if (v3 == 2)
        {
          sub_1000065FC(v42);
        }

        v33 = v2[2];
        v24 = v2 + 2;
        v34 = atof(v33);
        if (v34 <= 0.0)
        {
          sub_100000A10("pdc bin must be positive.");
        }

        *(&qword_100038908 + 1) = v34;
        goto LABEL_68;
      }

      if (!strncmp(v16, "--latleak_bin", 0x10uLL))
      {
        v18 = v3 - 2;
        if (v3 == 2)
        {
          sub_1000065FC(v42);
        }

        v35 = v2[2];
        v24 = v2 + 2;
        v36 = atof(v35);
        if (v36 <= 0.0)
        {
          sub_100000A10("lateral leakage bin must be positive.");
        }

        dword_100053AC8 = ((v36 * 65536.0) + 0.5);
        goto LABEL_68;
      }

      if (!strncmp(v16, "--prox_bin_pbds", 0x10uLL))
      {
        v18 = v3 - 2;
        if (v3 == 2)
        {
          sub_1000065FC(v42);
        }

        v37 = v2[2];
        v24 = v2 + 2;
        *&v38 = atof(v37);
        dword_100053AD0 = v38;
        byte_100053AD8 = 1;
        goto LABEL_68;
      }

      if (!strncmp(v16, "--prox_bin_pbdd", 0x10uLL))
      {
        v18 = v3 - 2;
        if (v3 == 2)
        {
          sub_1000065FC(v42);
        }

        v39 = v2[2];
        v24 = v2 + 2;
        *&v40 = atof(v39);
        dword_100053AD4 = v40;
        byte_100053AD9 = 1;
LABEL_68:
        v15 = v24;
        goto LABEL_69;
      }

      if (v19 != 45 || v16[1] != 118)
      {
        sub_1000065FC(v42);
      }

      byte_100038019 = 1;
    }

LABEL_69:
    v3 = v18;
    v2 = v15;
    if (v18 <= 1)
    {
      if (v14 <= 0)
      {
        sub_1000065FC(v42);
      }

      MainDisplay = IOMobileFramebufferGetMainDisplay();
      if (!MainDisplay && qword_100053AE8[0])
      {
        dword_100053AF0 = IOMobileFramebufferGetServiceObject();
        if (!dword_100053AF0)
        {
          sub_100000A10("Failed to get IOMFB service");
        }

        operator new();
      }

      sub_100000A10("Failed to connect to IOMFB: 0x%x", MainDisplay);
    }
  }
}

uint64_t sub_10000374C(const char *a1, ...)
{
  va_start(va, a1);
  fwrite("info: ", 6uLL, 1uLL, __stderrp);
  vfprintf(__stderrp, a1, va);
  return fputc(10, __stderrp);
}

uint64_t sub_1000037B8(io_registry_entry_t a1, int a2)
{
  v2 = a2;
  v4 = &kCFBooleanTrue;
  if (!a2)
  {
    v4 = &kCFBooleanFalse;
  }

  result = IORegistryEntrySetCFProperty(a1, @"NormalModeEnable", *v4);
  if ((v2 & 1) == 0 && result)
  {
    result = sub_100000998(a1, @"NormalModeActive");
    if (result)
    {
      sub_100000A10("could not switch out of normal mode");
    }
  }

  return result;
}

uint64_t sub_10000382C()
{
  v214 = 0xAAAAAAAAAAAAAAAALL;
  v215 = -1431655766;
  if (dword_100053B28 == 2)
  {
    v6 = dword_100053B2C;
    v7 = unk_100053B30;
    *&v222.A = 0;
    sub_10000374C("fetching signed bundle from FDR");
    AMFDRLogSetHandler();
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v9 = Mutable;
    if (!Mutable)
    {
      sub_100000AE8("CFDictionaryCreateMutable failed");
LABEL_30:
      v15 = 0;
      v13 = 0;
      v14 = 0;
      cf = 0;
      v211 = 0;
      v11 = 0;
LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }

    CFDictionarySetValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
    if (v6 <= 7)
    {
      if (v6 != 1)
      {
        if (v6 == 2 || v6 == 4)
        {
          v10 = MGCopyAnswer();
          if (v10)
          {
            v11 = v10;
            v12 = AMFDRCreateInstanceString();
            v13 = @"SDCl";
            if (v12)
            {
              v14 = v12;
              v15 = 0;
              cf = 0;
              v211 = 0;
              if (v7)
              {
LABEL_25:
                v16 = AMFDRSealingMapCopyLocalDict();
                if (v16)
                {
                  v17 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x600u);
                  if (v17)
                  {
                    Value = CFDictionaryGetValue(v16, v17);
                    v19 = Value;
                    if (Value)
                    {
                      CFRetain(Value);
LABEL_58:
                      if (!CFDataGetLength(v19))
                      {
                        sub_100000AE8("FDR bundle is empty");
                        goto LABEL_34;
                      }

                      if (AMFDRGetTrustError())
                      {
                        sub_100000AE8("FDR bundle is not trusted");
                        goto LABEL_34;
                      }

                      qword_100038010 = v19;
                      BytePtr = CFDataGetBytePtr(v19);
                      Length = CFDataGetLength(v19);
                      v0 = sub_100006B40(BytePtr, Length);
                      v20 = 0;
                      goto LABEL_117;
                    }

                    sub_100000AE8("subCC get returned a null CFDataRef");
                  }

                  else
                  {
                    sub_100000AE8("Failed to create cf_subkey");
                  }

                  goto LABEL_33;
                }

                sub_100000AE8("AMFDRSealingMapCopyLocalDict returned a null CFDictionaryRef");
LABEL_32:
                v17 = 0;
LABEL_33:
                if (v6 != 8)
                {
LABEL_34:
                  v20 = 0;
                  goto LABEL_120;
                }

                goto LABEL_113;
              }

              goto LABEL_56;
            }

            sub_100000AE8("AMFDRCreateInstanceString failed");
LABEL_91:
            v17 = 0;
            v16 = 0;
            v14 = 0;
            v20 = 0;
            v44 = 0;
            v0 = 0;
            goto LABEL_127;
          }

          sub_100000AE8("Failed to get DIC id");
          v0 = 0;
          v44 = 0;
          v20 = 0;
          v14 = 0;
          v16 = 0;
          v17 = 0;
          v13 = @"SDCl";
LABEL_129:
          CFRelease(v9);
LABEL_130:
          if (v13)
          {
            CFRelease(v13);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v16)
          {
            CFRelease(v16);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if ((v44 & 1) == 0)
          {
            sub_100000AE8("fdr_open failed");
          }

          qword_100038008 = v0;
          if (!v0)
          {
            return 0;
          }

          goto LABEL_143;
        }

        goto LABEL_67;
      }

      v14 = AMFDRSealingMapCopyInstanceForClass();
      if (!v14)
      {
        sub_100000AE8("AMFDRCreateInstanceString failed");
        v0 = 0;
        v44 = 0;
        v20 = 0;
        v16 = 0;
        v17 = 0;
        v13 = @"ADCL";
        goto LABEL_129;
      }

      v15 = 0;
      cf = 0;
      v211 = 0;
      v11 = 0;
      v13 = @"ADCL";
      if (v7)
      {
        goto LABEL_25;
      }

LABEL_56:
      v19 = AMFDRSealingMapCopyLocalData();
      if (v19)
      {
        v16 = 0;
        v17 = 0;
        goto LABEL_58;
      }

      sub_100000AE8("AMFDRDataCopy returned a null CFDataRef");
      goto LABEL_31;
    }

    switch(v6)
    {
      case 8:
        v34 = MGGetStringAnswer();
        cf = v34;
        if (v34)
        {
          v35 = v34;
          v36 = MGGetStringAnswer();
          if (v36)
          {
            v211 = v36;
            v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%@", v35, v36);
            if (v15)
            {
              v37 = AMFDRCreateInstanceString();
              if (v37)
              {
                v14 = v37;
                v11 = 0;
                v13 = @"AlsH";
                if (v7)
                {
                  goto LABEL_25;
                }

                goto LABEL_56;
              }

              sub_100000AE8("AMFDRCreateInstanceString failed");
            }

            else
            {
              sub_100000AE8("Failed to create acss_id");
            }
          }

          else
          {
            v211 = 0;
            v15 = 0;
            sub_100000AE8("Failed to get als_id");
          }
        }

        else
        {
          v211 = 0;
          v15 = 0;
          sub_100000AE8("Failed to get panel_id");
        }

        v17 = 0;
        v16 = 0;
        v11 = 0;
        v14 = 0;
        v13 = @"AlsH";
LABEL_113:
        sub_100000AE8("No matching FDR data, using default");
        v53 = AMFDRSealingManifestCopyMultiInstanceForClass();
        v20 = v53;
        if (!v53 || !CFArrayGetCount(v53))
        {
          sub_100000AE8("AMFDR multi instance not found!");
LABEL_120:
          v44 = 0;
          v0 = 0;
          if (!v15)
          {
            goto LABEL_122;
          }

          goto LABEL_121;
        }

        CFArrayGetValueAtIndex(v20, 0);
        v54 = AMFDRSealingMapCopyLocalData();
        v0 = v54;
        if (!v54)
        {
          sub_100000AE8("AMFDR alternative failed to load!");
          v44 = 0;
          if (!v15)
          {
LABEL_122:
            v57 = cf;
            if (!cf)
            {
              goto LABEL_124;
            }

            goto LABEL_123;
          }

LABEL_121:
          CFRelease(v15);
          goto LABEL_122;
        }

        qword_100038010 = v54;
        v55 = CFDataGetBytePtr(v54);
        v56 = CFDataGetLength(v0);
        v0 = sub_100006B40(v55, v56);
LABEL_117:
        v44 = 1;
        if (!v15)
        {
          goto LABEL_122;
        }

        goto LABEL_121;
      case 16:
        v38 = MGCopyAnswer();
        if (!v38)
        {
          sub_100000AE8("Failed to get DIC id");
          v0 = 0;
          v44 = 0;
          v20 = 0;
          v14 = 0;
          v16 = 0;
          v17 = 0;
          v13 = @"AlHW";
          goto LABEL_129;
        }

        v11 = v38;
        v39 = AMFDRCreateInstanceString();
        if (v39)
        {
          v40 = v39;
          v41 = MGGetStringAnswer();
          cf = v40;
          if (v41)
          {
            v42 = v41;
            v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%@", v40, v41);
            v211 = v42;
            if (v43)
            {
              v15 = v43;
              v27 = AMFDRCreateInstanceString();
              v13 = @"AlHW";
              if (v27)
              {
LABEL_43:
                v14 = v27;
                if (v7)
                {
                  goto LABEL_25;
                }

                goto LABEL_56;
              }

LABEL_73:
              sub_100000AE8("AMFDRCreateInstanceString failed");
              v0 = 0;
              v44 = 0;
              v20 = 0;
              v14 = 0;
              v16 = 0;
              v17 = 0;
              goto LABEL_121;
            }

            v13 = @"AlHW";
            goto LABEL_476;
          }

          v211 = 0;
          v13 = @"AlHW";
LABEL_110:
          sub_100000AE8("Failed to get als_id");
LABEL_477:
          v17 = 0;
          v16 = 0;
          v14 = 0;
          v20 = 0;
          v44 = 0;
          v0 = 0;
          v57 = cf;
LABEL_123:
          CFRelease(v57);
LABEL_124:
          if (v211)
          {
            CFRelease(v211);
          }

          if (!v11)
          {
LABEL_128:
            if (!v9)
            {
              goto LABEL_130;
            }

            goto LABEL_129;
          }

LABEL_127:
          CFRelease(v11);
          goto LABEL_128;
        }

        v13 = @"AlHW";
        break;
      case 64:
        v21 = MGCopyAnswer();
        if (!v21)
        {
          sub_100000AE8("Failed to get DIC id");
          v0 = 0;
          v44 = 0;
          v20 = 0;
          v14 = 0;
          v16 = 0;
          v17 = 0;
          v13 = @"ALCl";
          goto LABEL_129;
        }

        v11 = v21;
        v22 = AMFDRCreateInstanceString();
        if (v22)
        {
          v23 = v22;
          v24 = MGGetStringAnswer();
          cf = v23;
          if (v24)
          {
            v25 = v24;
            v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%@", v23, v24);
            v211 = v25;
            if (v26)
            {
              v15 = v26;
              v27 = AMFDRCreateInstanceString();
              v13 = @"ALCl";
              if (v27)
              {
                goto LABEL_43;
              }

              goto LABEL_73;
            }

            v13 = @"ALCl";
LABEL_476:
            sub_100000AE8("Failed to create acss_id");
            goto LABEL_477;
          }

          v211 = 0;
          v13 = @"ALCl";
          goto LABEL_110;
        }

        v13 = @"ALCl";
        break;
      default:
LABEL_67:
        sub_100000AE8("Bad DisplayKey type - ADCL and SDCl supported");
        goto LABEL_30;
    }

    sub_100000AE8("AMFDRCreateInstanceString for DIC id failed");
    goto LABEL_91;
  }

  if (dword_100053B28 == 4)
  {
    v1 = dword_100053B2C;
    memset(md, 170, sizeof(md));
    sub_10000374C("fetching signed bundle from FDR");
    if (v1 != 32)
    {
      goto LABEL_46;
    }

    v2 = IOServiceMatching("AppleNVMeEAN");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
    if (!MatchingService)
    {
      sub_10000374C("Couldn't find AppleNVMeEAN object");
      goto LABEL_46;
    }

    v4 = MatchingService;
    connect = -1431655766;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    IOObjectRelease(v4);
    if (v5)
    {
      sub_10000374C("IOServiceOpen on AppleNVMeEAN failed, ans = 0x%x \n");
      goto LABEL_46;
    }

    output = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 1;
    input[2] = 0;
    input[3] = 0xAAAAAAAAAAAAAAAALL;
    input[0] = 1430470988;
    input[1] = 0;
    v29 = IOConnectCallScalarMethod(connect, 3u, input, 4u, &output, &outputCnt);
    v30 = v29;
    if (v29 || !output)
    {
      sub_100000AE8("Get EANSize failed ret 0x%x \n", v29);
      v32 = 0;
    }

    else
    {
      sub_10000374C("Get EANSize  0x%llx \n", output);
      v31 = malloc_type_malloc(output, 0x100004052888210uLL);
      v32 = v31;
      if (!v31)
      {
        sub_100000AE8("malloc failed:");
        v0 = 0;
        v30 = -536870211;
LABEL_101:
        IOServiceClose(connect);
        if (v0 && !v30)
        {
          qword_100038008 = v0;
          goto LABEL_143;
        }

        if (v32)
        {
          free(v32);
        }

        sub_100000AE8("EAN read failed: 0x%X", v30);
LABEL_46:
        v28 = 0;
        qword_100038008 = 0;
        return v28;
      }

      *&v222.A = 1430470988;
      *&v222.C = v31;
      *&v222.Nl = output;
      v33 = IOConnectCallMethod(connect, 4u, &v222.A, 3u, 0, 0, 0, 0, 0, 0);
      v30 = v33;
      if (!v33)
      {
        v0 = sub_100006B40(v32, output);
        if (v0)
        {
          v47 = v32[1];
          v218 = *v32;
          v219 = v47;
          v220 = *(v32 + 8);
          sub_10000374C("IOMFB: ADCL version is  %x\n", DWORD1(v218));
          v48 = 4 * DWORD2(v218) - 36;
          sub_10000374C("IOMFB: md5 data size is  %llx\n", v48);
          v49 = malloc_type_malloc(v48, 0x100004077774924uLL);
          memcpy(v49, v32 + 36, v48);
          *&v50 = 0xAAAAAAAAAAAAAAAALL;
          *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v222.data[13] = v50;
          *&v222.data[10] = v50;
          *&v222.data[2] = v50;
          *&v222.data[6] = v50;
          *&v222.A = v50;
          *&v222.Nl = v50;
          CC_MD5_Init(&v222);
          CC_MD5_Update(&v222, v49, v48);
          CC_MD5_Final(md, &v222);
          sub_10000374C("IOMFB: Checking MD5 \n");
          for (i = 0; i != 4; ++i)
          {
            v52 = *(&v219 + i + 1);
            if (v52 != md[i])
            {
              sub_100000A10("%s: MD5 mismatch --> needed %X, got %X at index %d\n", "ean_open", v52, md[i], i);
            }
          }

          sub_10000374C("IOMFB: MD5 checksum passed \n");
          if (v49)
          {
            free(v49);
          }
        }

        v30 = 0;
        goto LABEL_101;
      }

      sub_100000AE8("Read EAN failed ret 0x%x \n", v33);
    }

    v0 = 0;
    goto LABEL_101;
  }

  if (dword_100053B28 == 3 && (dword_100053B2C & 6) != 0)
  {
    sub_100000AE8("Don't support SDCl key from the file system");
    return 0;
  }

  if (!qword_100038000)
  {
LABEL_11:
    v0 = qword_100038008;
    if (!qword_100038008)
    {
      goto LABEL_12;
    }

    goto LABEL_143;
  }

  if (*qword_100038000 != 45 || *(qword_100038000 + 1))
  {
    qword_100038008 = fopen(qword_100038000, "rb");
    if (!qword_100038008)
    {
LABEL_12:
      sub_100000AE8("Could not open input file '%s'");
      return 0;
    }

    sub_10000374C("Processing %s", qword_100038000);
    goto LABEL_11;
  }

  v0 = __stdinp;
  qword_100038008 = __stdinp;
  if (!__stdinp)
  {
    goto LABEL_12;
  }

LABEL_143:
  if (dword_100053B2C == 4)
  {
    v214 = 0x10053505543;
    v215 = 27603;
    sub_100006774(&v214);
    return 1;
  }

  else
  {
    while (1)
    {
      v58 = sub_100006978(v0);
      v59 = sub_100006978(v0);
      v60 = sub_100006978(v0);
      v61 = v60;
      if (v58 == 1094992716 || v58 == 1279476801)
      {
        break;
      }

      v0 = qword_100038008;
      v62 = v60 - 3;
      if (v60 != 3)
      {
        do
        {
          if (v62 >= 0x400)
          {
            v63 = 1024;
          }

          else
          {
            v63 = v62;
          }

          v64 = v63;
          do
          {
            sub_100006978(v0);
            --v64;
          }

          while (v64);
          v62 -= v63;
        }

        while (v62);
        v0 = qword_100038008;
      }
    }

    if (v59 == 327680)
    {
      v65 = 6;
      do
      {
        sub_100006978(qword_100038008);
        --v65;
      }

      while (v65);
      v66 = -9;
    }

    else
    {
      v66 = -3;
    }

    v67 = v66 + v61;
    byte_100053ADC = 0;
    v28 = 1;
    if (v67)
    {
      while (1)
      {
        v68 = qword_100038008;
        v69 = sub_100006978(qword_100038008);
        LODWORD(v214) = v69;
        v70 = sub_100006978(v68);
        HIDWORD(v214) = v70;
        v71 = sub_100006978(v68);
        v215 = v71;
        if (v67 < v71)
        {
          sub_100000AE8("%s: input data not well-formed.");
          return 0;
        }

        if (byte_100053ADC == 1)
        {
          if (dword_100053AE0 < v71)
          {
            sub_100000AE8("%s: Region data data not well-formed.");
            return 0;
          }

          dword_100053AE0 -= v71;
        }

        cfa = v71;
        if (v69 > 1212632899)
        {
          if (v69 > 1347634752)
          {
            if (v69 <= 1381520458)
            {
              if (v69 > 1347704130)
              {
                if (v69 != 1347704131 && v69 != 1347704176)
                {
                  v77 = 1363498051;
                  goto LABEL_256;
                }

                goto LABEL_257;
              }

              if (v69 == 1347634753)
              {
                goto LABEL_257;
              }

              v77 = 1347634765;
              goto LABEL_256;
            }

            if (v69 > 1414288194)
            {
              if (v69 != 1414288195 && v69 != 1431323500)
              {
                v77 = 1431523395;
                goto LABEL_256;
              }

              goto LABEL_257;
            }

            if (v69 == 1381520459)
            {
              goto LABEL_257;
            }

            if (v69 != 1397773635)
            {
              goto LABEL_344;
            }

            goto LABEL_268;
          }

          if (v69 > 1346520131)
          {
            if (((v69 - 1346520132) > 0x2C || ((1 << (v69 - 68)) & 0x100000008001) == 0) && v69 != 1346650979)
            {
              v77 = 1346650992;
              goto LABEL_256;
            }

            goto LABEL_257;
          }

          if (v69 <= 1230128194)
          {
            if (v69 == 1212632900)
            {
              goto LABEL_257;
            }

            v77 = 1213419587;
            goto LABEL_256;
          }

          if (v69 == 1230128195)
          {
            goto LABEL_257;
          }

          if (v69 != 1279479620)
          {
            v77 = 1280068948;
            goto LABEL_256;
          }

          v110 = HIWORD(v70);
          if (HIWORD(v70) - 3 < 2u)
          {
            goto LABEL_257;
          }

          if (v110 != 2)
          {
            if (v110 != 1)
            {
              sub_100000A10("Unexpected version [%d] for LCOD block", HIWORD(v70));
            }

            if (v71 != 160)
            {
              sub_100000A10("PDC table not well formed.");
            }

            if (dword_1000380C8 >= 2)
            {
              sub_100000A10("Inconsistent table versions");
            }

            dword_1000380C8 = 1;
            v111 = malloc_type_malloc(0xDB8uLL, 0x1020040D1459293uLL);
            v112 = v111;
            if (!v111)
            {
              sub_100000A10("out of memory.");
            }

            v111[8] = 1;
            v111[2] = sub_100006C6C(qword_100038008);
            *(v112 + 12) = sub_100006C6C(qword_100038008);
            v113 = sub_100006978(qword_100038008);
            *(v112 + 20) = sub_100006D0C(v113);
            for (j = 40; j != 64; j += 4)
            {
              *(v112 + j) = sub_100006978(qword_100038008);
            }

            *(v112 + 64) = sub_100006978(qword_100038008);
            for (k = 68; k != 80; k += 4)
            {
              *(v112 + k) = sub_100006978(qword_100038008);
            }

            do
            {
              *(v112 + k) = sub_100006C6C(qword_100038008);
              k += 2;
            }

            while (k != 658);
            sub_100006C6C(qword_100038008);
            v116 = 0;
            v117 = (v112 + 82);
            do
            {
              v118 = 0;
              v119 = vdupq_n_s64(v116);
              v120 = v117;
              v121 = xmmword_100029960;
              do
              {
                v122.i64[0] = -1;
                v122.i64[1] = -1;
                v123.i64[0] = 0xFFFFFFFFLL;
                v123.i64[1] = 0xFFFFFFFFLL;
                v124 = vmovn_s64(vandq_s8(vcgtq_u64(vdupq_n_s64(0x11uLL), v121), vorrq_s8(vorrq_s8(vceqq_s64(v119, v121), vceqq_s64(vandq_s8(vaddq_s64(v121, v122), v123), v119)), vceqq_s64(vaddq_s64(v121, vdupq_n_s64(1uLL)), v119))));
                v125.i32[0] = v118 << 8;
                v125.i32[1] = (v118 << 8) | 0x100;
                v126 = vmin_u32(vand_s8(v125, 0xFFFF0000FFFFLL), 0xF0000000FLL);
                if (v124.i8[0])
                {
                  *(v120 - 1) = v126.i16[0];
                }

                if (v124.i8[4])
                {
                  *v120 = v126.i16[2];
                }

                v118 += 2;
                v121 = vaddq_s64(v121, vdupq_n_s64(2uLL));
                v120 += 2;
              }

              while (v118 != 18);
              ++v116;
              v117 += 17;
            }

            while (v116 != 17);
            v127 = qword_100038910;
            if (qword_100038910)
            {
              do
              {
                if (*(v112 + 8) == v127[1])
                {
                  sub_100000A10("Duplicate PDC table found in input.");
                }

                v127 = *v127;
              }

              while (v127);
            }

            sub_100006D84(*(v112 + 8), dword_1000380D0, &dword_100038100);
            sub_100006D84(*(v112 + 12), dword_100038104, dword_100038134);
            *v112 = qword_100038910;
            qword_100038910 = v112;
            goto LABEL_258;
          }

          if ((dword_1000380C8 | 2) != 2)
          {
            sub_100000A10("Inconsistent table versions");
          }

          dword_1000380C8 = 2;
          if (v71 != 193)
          {
            sub_100000A10("PDC table not well formed.");
          }

          v172 = 0;
          word_1000381F8 = sub_100006C6C(qword_100038008);
          memset(&v222, 255, 24);
          do
          {
            *(&v222.A + v172) = sub_100006978(qword_100038008);
            v172 += 4;
          }

          while (v172 != 24);
          if ((byte_100038904 & 1) == 0)
          {
            v173 = *&qword_100038908;
            if (*&qword_100038908 == 0.0)
            {
              v173 = vcvts_n_f32_u32(sub_1000008D8(dword_100053AF0, @"FFR_raw_index", 0xFFFFFFFFLL), 0x10uLL);
            }

            v174 = 0;
            v175 = &v222;
            while (v173 > *v175)
            {
              ++v175;
              if (--v174 == -6)
              {
                word_1000388FC = 6;
                v176 = 0.0;
                goto LABEL_427;
              }
            }

            if (-v174 != 1 && v174 != 0)
            {
              v184 = -v174;
            }

            else
            {
              LOWORD(v184) = 1;
            }

            word_1000388FC = v184;
            v176 = 0.0;
            if ((-5 - v174) >= 0xFFFFFFFC)
            {
              v176 = (v173 - *(v175 - 1)) / (*v175 - *(v175 - 1));
            }

LABEL_427:
            dword_100038900 = LODWORD(v176);
            byte_100038904 = 1;
          }

          v210 = sub_100006C6C(qword_100038008);
          v185 = sub_100006C6C(qword_100038008);
          v209 = sub_100006C6C(qword_100038008);
          v186 = sub_100006C6C(qword_100038008);
          v187 = sub_100006978(qword_100038008);
          v188 = sub_100006D0C(v187);
          if (!v188)
          {
            sub_100000A10("useless PDC table");
          }

          v189 = (v185 << 16) / 10;
          v190 = sub_100006E1C(v210, v189, v186 << 16, v188, v209);
          v190[5] |= v188;
          v191 = 6;
          do
          {
            if (sub_100006978(qword_100038008))
            {
              sub_100000A10("overdrive entries != 0 not supported");
            }

            --v191;
          }

          while (v191);
          sub_100006978(qword_100038008);
          v192 = 3;
          do
          {
            sub_100006978(qword_100038008);
            --v192;
          }

          while (v192);
          for (m = 0; m != 68; m += 4)
          {
            v194 = (((sub_100006C6C(qword_100038008) * 65536.0) / 65535.0) + 0.5);
            v195 = *(&qword_100038000 + m + 368);
            if (v195 && v195 != v194)
            {
              sub_100000A10("inconsistent PDC config");
            }

            *(&qword_100038000 + m + 368) = v194;
          }

          word_1000381FE = 17;
          v196 = 1;
          v197 = v190;
          v198 = 289;
          while (2)
          {
            v199 = sub_100006C6C(qword_100038008);
            if ((v188 & 1) == 0)
            {
              if ((v188 & 2) == 0)
              {
                goto LABEL_441;
              }

LABEL_446:
              v197[309] = v199;
              if ((v188 & 4) == 0)
              {
                goto LABEL_443;
              }

LABEL_442:
              v197[598] = v199;
              goto LABEL_443;
            }

            v197[20] = v199;
            if ((v188 & 2) != 0)
            {
              goto LABEL_446;
            }

LABEL_441:
            if ((v188 & 4) != 0)
            {
              goto LABEL_442;
            }

LABEL_443:
            v196 &= v199 == 0;
            ++v197;
            if (--v198)
            {
              continue;
            }

            break;
          }

          if (v196)
          {
            sub_100000A10("DCLUT[%d, %d, %d, %d, %d] is all zeros", v210, HIWORD(v189), v186, v188, v209);
          }

          for (n = 0; n != 68; n += 4)
          {
            v201 = (((sub_100006C6C(qword_100038008) * 65536.0) / 65535.0) + 0.5);
            v202 = *(&qword_100038000 + n + 436);
            if (v202 && v202 != v201)
            {
              sub_100000A10("inconsistent PDC config");
            }

            *(&qword_100038000 + n + 436) = v201;
          }

          word_100038200 = 17;
          v203 = v190 + 921;
          v204 = 1;
          v205 = 17;
          while (2)
          {
            v206 = sub_100006C6C(qword_100038008);
            if (v188)
            {
              *(v203 - 34) = v206;
              if ((v188 & 2) != 0)
              {
                goto LABEL_461;
              }

LABEL_456:
              if ((v188 & 4) == 0)
              {
LABEL_458:
                v204 &= v206 == 0;
                ++v203;
                if (!--v205)
                {
                  if (v204)
                  {
                    sub_100000A10("PMLUT[%d, %d, %d, %d, %d] is all zeros", v210, HIWORD(v189), v186, v188, v209);
                  }

                  v207 = sub_100006C6C(qword_100038008);
                  if ((v207 - 3) <= 0xFFFFFFFD)
                  {
                    sub_100000A10("illegal frame count");
                  }

                  if (*(v190 + 938) && *(v190 + 938) != v207)
                  {
                    sub_100000A10("inconsistent PDC data");
                  }

                  *(v190 + 938) = v207;
                  sub_100006F8C(v190[2], dword_1000380D0, &word_1000381FA);
                  sub_100006F8C(v190[4], dword_100038120, &word_1000381FC);
                  goto LABEL_258;
                }

                continue;
              }
            }

            else
            {
              if ((v188 & 2) == 0)
              {
                goto LABEL_456;
              }

LABEL_461:
              *(v203 - 17) = v206;
              if ((v188 & 4) == 0)
              {
                goto LABEL_458;
              }
            }

            break;
          }

          *v203 = v206;
          goto LABEL_458;
        }

        if (v69 > 1112293703)
        {
          if (v69 <= 1129664594)
          {
            if (v69 > 1112298578)
            {
              switch(v69)
              {
                case 1112298579:
                  goto LABEL_257;
                case 1128547908:
                  v128 = v71 - 3;
                  if (v71 != 3)
                  {
                    do
                    {
                      v129 = qword_100038008;
                      v130 = sub_100006978(qword_100038008);
                      v131 = sub_100006978(v129);
                      v132 = sub_100006978(v129);
                      v133 = v132;
                      v134 = v128 >= v132;
                      v128 -= v132;
                      if (!v134)
                      {
                        sub_100000A10("%s: input data not well-formed.", "read_cdfd");
                      }

                      if (v130 > 1129596996)
                      {
                        if (v130 == 1129596997)
                        {
                          malloc_type_malloc(0x58uLL, 0x1020040BADD1CFBuLL);
                          sub_100000A10("Invalid theta table size");
                        }

                        if (v130 == 1129597010)
                        {
                          malloc_type_malloc(0x98uLL, 0x1020040E4A17CC5uLL);
                          sub_100000A10("Invalid threshold table size");
                        }
                      }

                      else
                      {
                        if (v130 == 1128547142)
                        {
                          if (byte_10003801D == 1)
                          {
                            sub_100000A10("Duplicate coeffs for CDFD");
                          }

                          byte_10003801D = 1;
                          dword_100038020 = 1;
                          sub_100000A10("Wrong block size for CDFD coeffs");
                        }

                        if (v130 == 1128547399)
                        {
                          if (byte_10003801C == 1)
                          {
                            sub_100000A10("Duplicate degamma for CDFD");
                          }

                          byte_10003801C = 1;
                          dword_100038020 = 1;
                          sub_100000A10("wrong degamma table size found.");
                        }
                      }

                      v135 = v132 - 3;
                      if (v132 != 3)
                      {
                        v136 = qword_100038008;
                        do
                        {
                          if (v135 >= 0x400)
                          {
                            v137 = 1024;
                          }

                          else
                          {
                            v137 = v135;
                          }

                          v138 = v137;
                          do
                          {
                            sub_100006978(v136);
                            --v138;
                          }

                          while (v138);
                          v135 -= v137;
                        }

                        while (v135);
                      }
                    }

                    while (v128);
                    v214 = __PAIR64__(v131, v130);
                    v215 = v133;
                  }

                  goto LABEL_258;
                case 1129076052:
                  v78 = malloc_type_malloc(0x2670uLL, 0x1020040706BADFDuLL);
                  v79 = v78;
                  if (!v78)
                  {
                    sub_100000A10("out of memory");
                  }

                  bzero(v78, 0x2670uLL);
                  *v79 = qword_100053AC0;
                  qword_100053AC0 = v79;
                  if (cfa != 2460)
                  {
                    sub_100000A10("Invalid size (%d) for CLUT", cfa);
                  }

                  *(v79 + 8) = sub_100006C6C(qword_100038008);
                  v80 = 10;
                  v81 = 4913;
                  do
                  {
                    *(v79 + v80) = sub_100006C6C(qword_100038008);
                    v80 += 2;
                    --v81;
                  }

                  while (v81);
                  v82 = v79;
                  while (1)
                  {
                    v82 = *v82;
                    if (!v82)
                    {
                      break;
                    }

                    if (*(v82 + 8) == *(v79 + 8))
                    {
                      sub_100000A10("Duplicate CLUT index value (%d)", *(v82 + 8));
                    }
                  }

                  goto LABEL_258;
              }

              goto LABEL_344;
            }

            if (v69 == 1112293704)
            {
              goto LABEL_257;
            }

            v77 = 1112298320;
LABEL_256:
            if (v69 == v77)
            {
              goto LABEL_257;
            }

            goto LABEL_344;
          }

          if (v69 > 1145981267)
          {
            if (v69 != 1145981268)
            {
              if (v69 != 1146110828)
              {
                v77 = 1162630739;
                goto LABEL_256;
              }

              goto LABEL_257;
            }

            if (word_100053918)
            {
              sub_100000A10("Multiple DNIT blocks found.");
            }

            if (v71 <= 3)
            {
              sub_100000A10("invalid size for DNIT");
            }

            v104 = sub_100006C6C(qword_100038008);
            word_100053918 = v104;
            if (cfa != v104 + 4)
            {
              sub_100000A10("invalid size for DNIT");
            }

            if ((v104 - 21) < 0xFFFFFFEC)
            {
              sub_100000A10("invalid point count for DNIT");
            }

            v105 = 0;
            do
            {
              v106 = sub_100006C6C(qword_100038008) << 16;
              v107 = &qword_100038000 + 4 * v105;
              *(v107 + 28231) = v106;
              if (v105 && v106 <= *(v107 + 28230))
              {
                sub_100000A10("Malformed DNIT brightness sequence");
              }

              ++v105;
            }

            while (v105 < word_100053918);
            if (word_100053918)
            {
              v108 = 0;
              do
              {
                *(&qword_100038000 + v108++ + 28251) = sub_100006C6C(qword_100038008) << 16;
              }

              while (v108 < *(&qword_100038000 + &loc_10001B918));
            }

LABEL_393:
            sub_100006C6C(qword_100038008);
            goto LABEL_258;
          }

          if (v69 != 1129664595)
          {
            v77 = 1145195841;
            goto LABEL_256;
          }

LABEL_268:
          sub_100006774(&v214);
          goto LABEL_258;
        }

        if (v69 > 1095128134)
        {
          if (v69 <= 1097626439)
          {
            if (v69 == 1095128135)
            {
              goto LABEL_257;
            }

            if (v69 == 1095910721)
            {
              *(&qword_100038008 + &loc_10001BAD4) = 1;
              *(&qword_100038008 + &loc_10001BAD8) = v71 - 4;
              dword_100053AE4 = sub_100006978(qword_100038008);
              goto LABEL_258;
            }
          }

          else
          {
            if (v69 == 1097626440 || v69 == 1111703884)
            {
              goto LABEL_257;
            }

            if (v69 == 1112100436)
            {
              v83 = malloc_type_malloc(0x20uLL, 0x1030040322C5439uLL);
              v84 = v83;
              if (!v83)
              {
                sub_100000A10("out of memory");
              }

              bzero(v83, 0x20uLL);
              *v84 = qword_100053AA8;
              qword_100053AA8 = v84;
              if (cfa <= 4)
              {
                sub_100000A10("invalid size for BINT");
              }

              *(v84 + 8) = sub_100006C6C(qword_100038008);
              *(v84 + 10) = sub_100006C6C(qword_100038008);
              v85 = sub_100006C6C(qword_100038008);
              *(v84 + 12) = v85;
              if (cfa != v85 + 5)
              {
                sub_100000A10("invalid size for BINT");
              }

              if ((v85 - 101) <= 0xFFFFFF9B)
              {
                sub_100000A10("invalid point count for BINT");
              }

              *(v84 + 16) = malloc_type_malloc((2 * v85), 0x1000040BDFB0063uLL);
              v86 = malloc_type_malloc(2 * *(v84 + 12), 0x1000040BDFB0063uLL);
              *(v84 + 24) = v86;
              if (!*(v84 + 16) || !v86)
              {
                sub_100000A10("out of memory");
              }

              if (*(v84 + 12))
              {
                v87 = 0;
                do
                {
                  v88 = sub_100006C6C(qword_100038008);
                  v89 = *(v84 + 16);
                  *(v89 + 2 * v87) = v88;
                  if (v88 <= *(v84 + 8) || v88 >= *(v84 + 10))
                  {
                    sub_100000A10("Malformed BINT brightness sequence");
                  }

                  if (v87 && v88 <= *(v89 + 2 * v87 - 2))
                  {
                    sub_100000A10("Malformed BINT brightness sequence");
                  }

                  ++v87;
                }

                while (v87 < *(v84 + 12));
                if (*(v84 + 12))
                {
                  v90 = 0;
                  do
                  {
                    v91 = sub_100006C6C(qword_100038008);
                    v92 = *(v84 + 24);
                    *(v92 + 2 * v90) = v91;
                    if (v90 && v91 > *(v92 + 2 * v90 - 2))
                    {
                      sub_100000A10("Malformed BINT weight sequence");
                    }

                    ++v90;
                  }

                  while (v90 < *(v84 + 12));
                }
              }

              goto LABEL_393;
            }
          }

LABEL_344:
          v139 = v71 - 3;
          if (v71 != 3)
          {
            v140 = qword_100038008;
            do
            {
              if (v139 >= 0x400)
              {
                v141 = 1024;
              }

              else
              {
                v141 = v139;
              }

              v142 = v141;
              do
              {
                sub_100006978(v140);
                --v142;
              }

              while (v142);
              v139 -= v141;
            }

            while (v139);
          }

          goto LABEL_258;
        }

        if (v69 <= 860177478)
        {
          if (v69 != 538985281)
          {
            v77 = 542134851;
            goto LABEL_256;
          }

LABEL_257:
          sub_1000069C8(&v214);
          goto LABEL_258;
        }

        if (v69 == 860177479)
        {
          v94 = malloc_type_malloc(0x20uLL, 0x1030040C34A1C5FuLL);
          v95 = v94;
          if (!v94)
          {
            sub_100000A10("out of memory");
          }

          bzero(v94, 0x20uLL);
          *v95 = qword_100053AB0;
          qword_100053AB0 = v95;
          *(v95 + 8) = 0;
          if (HIWORD(v70) == 2)
          {
            *(v95 + 10) = sub_100006C6C(qword_100038008);
            *(v95 + 8) = sub_100006CBC(qword_100038008);
            v143 = sub_100006C6C(qword_100038008);
            *(v95 + 12) = v143;
            v144 = malloc_type_malloc(v143, 0x100004077774924uLL);
            *(v95 + 16) = v144;
            if (!v144)
            {
              sub_100000A10("Out of memory");
            }

            if (*(v95 + 12))
            {
              v145 = 0;
              do
              {
                *(*(v95 + 16) + v145++) = sub_100006CBC(qword_100038008);
              }

              while (v145 < *(v95 + 12));
            }

            v146 = sub_100006C6C(qword_100038008);
            *(v95 + 14) = v146;
            v147 = malloc_type_malloc(v146, 0x100004077774924uLL);
            *(v95 + 24) = v147;
            if (!v147)
            {
              sub_100000A10("Out of memory");
            }

            if (*(v95 + 14))
            {
              v148 = 0;
              do
              {
                *(*(v95 + 24) + v148++) = sub_100006CBC(qword_100038008);
                v149 = *(v95 + 14);
              }

              while (v148 < v149);
              v150 = v149 + 7;
            }

            else
            {
              v150 = 7;
            }

            v180 = v150 + *(v95 + 12);
            if (((v180 + 3) >> 2) + 3 != cfa)
            {
              sub_100000A10("Invalid size (%d) for 3EDG", cfa);
            }

            v181 = v180 & 3;
            if (v181)
            {
              v182 = v181 | 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                sub_100006CBC(qword_100038008);
                v134 = __CFADD__(v182++, 1);
              }

              while (!v134);
            }
          }

          else
          {
            if (HIWORD(v70) != 1)
            {
              sub_100000A10("Unexpected version [%d] for 3EDG block", HIWORD(v70));
            }

            *(v95 + 10) = sub_100006C6C(qword_100038008);
            v96 = sub_100006C6C(qword_100038008);
            *(v95 + 12) = v96;
            v97 = malloc_type_malloc(v96, 0x100004077774924uLL);
            *(v95 + 16) = v97;
            if (!v97)
            {
              sub_100000A10("Out of memory");
            }

            if (*(v95 + 12))
            {
              v98 = 0;
              do
              {
                *(*(v95 + 16) + v98++) = sub_100006CBC(qword_100038008);
              }

              while (v98 < *(v95 + 12));
            }

            v99 = sub_100006C6C(qword_100038008);
            *(v95 + 14) = v99;
            v100 = malloc_type_malloc(v99, 0x100004077774924uLL);
            *(v95 + 24) = v100;
            if (!v100)
            {
              sub_100000A10("Out of memory");
            }

            if (*(v95 + 14))
            {
              v101 = 0;
              do
              {
                *(*(v95 + 24) + v101++) = sub_100006CBC(qword_100038008);
                v102 = *(v95 + 14);
              }

              while (v101 < v102);
              v103 = v102 + 6;
            }

            else
            {
              v103 = 6;
            }

            v177 = v103 + *(v95 + 12);
            if (((v177 + 3) >> 2) + 3 != cfa)
            {
              sub_100000A10("Invalid size (%d) for 3EDG", cfa);
            }

            v178 = v177 & 3;
            if (v178)
            {
              v179 = v178 | 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                sub_100006CBC(qword_100038008);
                v134 = __CFADD__(v179++, 1);
              }

              while (!v134);
            }
          }

          v183 = v95;
          while (1)
          {
            v183 = *v183;
            if (!v183)
            {
              break;
            }

            if (*(v183 + 10) == *(v95 + 10))
            {
              sub_100000A10("Duplicate 3EDG index value (%d)", *(v183 + 10));
            }
          }

          goto LABEL_258;
        }

        if (v69 != 860640596)
        {
          if (v69 == 861097039)
          {
            if (v71 != 20)
            {
              sub_100000A10("Bad size for 3SLO");
            }

            if ((v70 & 0xFFFF0000) != 0x10000)
            {
              sub_100000A10("Bad version (%X) for SLO", v70);
            }

            LODWORD(v72) = dword_1000539C0;
            if (*&dword_1000539C0 != 0.0)
            {
              sub_100000A10("Multiple 3SLO blocks found", v72);
            }

            v73 = &dword_1000539BC;
            v74 = 17;
            do
            {
              LODWORD(v75) = sub_100006978(qword_100038008);
              *&v76 = v75;
              *v73 = v75;
              if (v74 == 17)
              {
                if (v75 != 0.0)
                {
                  sub_100000A10("first 3SLO value must be zero", v76);
                }
              }

              else if (*(v73 - 1) >= v75)
              {
                sub_100000A10("Values in 3SLO must be strictly increasing", v76);
              }

              ++v73;
              --v74;
            }

            while (v74);
            LODWORD(v76) = dword_1000539FC;
            if (*&dword_1000539FC != 1.0)
            {
              sub_100000A10("Final 3SLO value must be one", v76);
            }

            goto LABEL_258;
          }

          goto LABEL_344;
        }

        if (HIWORD(v70) == 1)
        {
          v109 = 10;
        }

        else
        {
          v109 = 9;
        }

        if (v71 != v109)
        {
          sub_100000A10("Bad size for 3LUT");
        }

        if (dword_100053A18)
        {
          if (dword_100053A18 != HIWORD(v70))
          {
            sub_100000A10("Mixed 3LUT block versions. They must all match.");
          }
        }

        else
        {
          dword_100053A18 = HIWORD(v70);
        }

        v151 = sub_100006C6C(qword_100038008);
        v152 = sub_100006978(qword_100038008);
        v153 = sub_100006978(qword_100038008);
        v154 = sub_100006C6C(qword_100038008);
        v155 = sub_100006C6C(qword_100038008);
        v156 = sub_100006C6C(qword_100038008);
        v157 = sub_100006C6C(qword_100038008);
        v158 = sub_100006978(qword_100038008);
        v159 = sub_100006D0C(v158);
        if (!v159)
        {
          sub_100000A10("useless 3LUT table");
        }

        v160 = word_100053A9C;
        v161 = dword_100053A1C;
        if (word_100053A9C == 32)
        {
          sub_100000A10("Too many index values for CLUT tables");
        }

        if (word_100053A9C)
        {
          v162 = 4 * word_100053A9C;
          while (*v161 != v153)
          {
            ++v161;
            v162 -= 4;
            if (!v162)
            {
              goto LABEL_372;
            }
          }
        }

        if (v161 == &dword_100053A1C[word_100053A9C])
        {
LABEL_372:
          ++word_100053A9C;
          dword_100053A1C[v160] = v153;
          LOBYTE(v222.A) = -86;
          std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        }

        v163 = (1717986919 * (v156 << 16)) >> 34;
        if (dword_100053A18 == 1)
        {
          v164 = &dword_1000539BC;
        }

        else
        {
          v164 = &unk_100053A00;
        }

        sub_100007020(v163, &unk_100053870, v164);
        v165 = (v157 << 16);
        if (dword_100053A18 == 1)
        {
          v166 = &dword_1000539BC + 1;
        }

        else
        {
          v166 = &unk_100053A02;
        }

        sub_100007020(v165, &unk_1000538C0, v166);
        if (word_100053A9E)
        {
          if (v151 != word_100053A9E || v152 != dword_100053AA0 || __PAIR64__(((1717986919 * (v155 << 16)) >> 32) >> 2, v154 << 16) != qword_100053910)
          {
            sub_100000A10("3LUT data version not constant");
          }
        }

        else
        {
          word_100053A9E = v151;
          dword_100053AA0 = v152;
          LODWORD(qword_100053910) = v154 << 16;
          HIDWORD(qword_100053910) = ((1717986919 * (v155 << 16)) >> 32) >> 2;
        }

        v167 = sub_1000070AC(v153, v163, v165, v159);
        *(v167 + 84) |= v159;
        if (dword_100053A18 == 1)
        {
          v168 = sub_100006C6C(qword_100038008);
        }

        else
        {
          v168 = 0;
        }

        v169 = sub_100006C6C(qword_100038008);
        v170 = 0;
        v171 = (v167 + 10);
        do
        {
          if ((v159 >> v170))
          {
            *(v171 - 1) = v168;
            *v171 = v169;
          }

          ++v170;
          v171 += 2;
        }

        while (v170 != 3);
        if (dword_100053A18 == 1)
        {
          goto LABEL_393;
        }

LABEL_258:
        if (byte_100053ADC == 1 && dword_100053AE0 == 0)
        {
          byte_100053ADC = 0;
        }

        v67 -= cfa;
        if (!v67)
        {
          return 1;
        }
      }
    }
  }

  return v28;
}

void sub_100005E6C()
{
  byte_100038018 = 1;
  if (byte_100053B40)
  {
    v0 = !qword_100053AE8[0] || dword_100053AF0 == 0;
    if (!v0 && (sub_100000998(dword_100053AF0, @"NormalModeEnable") & 1) == 0)
    {
      sub_10000374C("setting back to normal mode");
      IORegistryEntrySetCFProperty(dword_100053AF0, @"NormalModeEnable", kCFBooleanTrue);
    }
  }

  if (qword_100053AE8[0])
  {
    CFRelease(qword_100053AE8[0]);
  }

  if (dword_100053B28 == 3)
  {
    globfree(&qword_100053C50);
  }

  if (qword_100053B38)
  {
    sub_100009860(qword_100053B38);
    if (qword_100053B38)
    {
      operator delete();
    }

    qword_100053B38 = 0;
  }

  if (qword_100053B48)
  {
    sub_100000AE8("custom input files not all processed, remaining files below: ");
    for (i = qword_100053B48; qword_100053B48; i = qword_100053B48)
    {
      v2 = i[1];
      v3 = i[2];
      if (v2)
      {
        *(v2 + 2) = v3;
      }

      *v3 = v2;
      v4 = *i;
      if (!*i)
      {
        v4 = "(null)";
      }

      sub_10000374C("%s ", v4);
      free(i);
    }
  }
}

void *sub_100005FC8(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100006170(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100006028(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100006304();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10000631C(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_100006170(v7, *a2, *(a2 + 1));
    v7 = v18;
    v8 = *(&v19 + 1);
    v10 = v19;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v17 = v14;
  v18 = v14;
  sub_100006374(&v17);
  return v11;
}

void *sub_100006170(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100006214();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10000622C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100006288(exception, a1);
}

std::logic_error *sub_100006288(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000062BC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_10000631C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000062BC();
}

uint64_t sub_100006374(uint64_t a1)
{
  sub_1000063AC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000063AC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_100006408(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void sub_100006558(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000065AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000065AC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1000065FC(const char *a1)
{
  fprintf(__stderrp, "usage: %s [-n] [-C] (-F | -i <infile> | --fs | --launchd_boot)\n", a1);
  fwrite("\t-n: do not attempt mode change\n", 0x20uLL, 1uLL, __stderrp);
  fwrite("\t-C: do not ignore CDFD sections\n", 0x21uLL, 1uLL, __stderrp);
  fwrite("\t-F: get data from FDR\n", 0x17uLL, 1uLL, __stderrp);
  fwrite("\t-i: parse unsigned FDR file\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t--fs: read data from /System/Library/Display\n", 0x2EuLL, 1uLL, __stderrp);
  fwrite("\t--launchd_boot: default boot action for this device\n", 0x35uLL, 1uLL, __stderrp);
  fwrite("\t--latleak_bin: set bin (float) for lateral leakage interpolation\n", 0x42uLL, 1uLL, __stderrp);
  fwrite("\t-v: enable additional parsing information\n", 0x2BuLL, 1uLL, __stderrp);
  sub_100005E6C();
  exit(2);
}

BOOL sub_1000066FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = IOMobileFramebufferSetBlock();
  v6 = v5;
  if (v5)
  {
    sub_10000374C("Parser SetBlock failed with 0x%x", v5);
  }

  return v6 == 0;
}

uint64_t sub_100006774(uint64_t a1)
{
  v1 = *(a1 + 4) >> 8;
  if ((v1 - 5) > 0xFFFFFFFB)
  {
    operator new[]();
  }

  return printf("%s: Bad SPUC data version %d\n", "read_spuc", v1);
}

uint64_t sub_100006978(FILE *__stream)
{
  __ptr = -1431655766;
  if (fread(&__ptr, 1uLL, 4uLL, __stream) != 4)
  {
    sub_100000A10("Unexpected EOF on input");
  }

  return __ptr;
}

void sub_1000069C8(unsigned int *a1)
{
  if (!qword_100053B38)
  {
    sub_100000A10("No parser");
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = -21846;
  sub_100008414(qword_100053B38, *a1, &v8);
  v2 = 4 * (a1[2] - 3);
  v3 = malloc_type_malloc(v2, 0x100004052888210uLL);
  if (!v3)
  {
    sub_100000A10("Could not allocate memory for %s data\n", &v8);
  }

  v4 = v3;
  sub_100006C24(qword_100038008, v3, v2);
  v7 = a1[2];
  v6 = *a1;
  v5 = sub_100008828(qword_100053B38, v4, v2, &v6, *(&qword_100038008 + &loc_10001BADC), *(&qword_100038008 + &loc_10001BAD4));
  free(v4);
  if ((v5 & 1) == 0)
  {
    sub_100000AE8("Could not configure %s block\n", &v8);
  }
}

FILE *sub_100006B40(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x50040D3D5ADE1uLL);
  *v4 = a1;
  v4[1] = a1 + a2;
  v5 = funopen(v4, sub_100006BC4, 0, 0, 0);
  if (!v5)
  {
    free(v4);
  }

  return v5;
}

uint64_t sub_100006BC4(uint64_t a1, void *__dst, signed int a3)
{
  v3 = *(a1 + 8) - *a1;
  if (!v3)
  {
    return 0;
  }

  if (v3 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v3;
  }

  memcpy(__dst, *a1, v5);
  *a1 += v5;
  return v5;
}

size_t sub_100006C24(FILE *__stream, void *__ptr, size_t __nitems)
{
  v3 = __nitems;
  result = fread(__ptr, 1uLL, __nitems, __stream);
  if (result != v3)
  {
    sub_100000A10("Unexpected EOF on input");
  }

  return result;
}

uint64_t sub_100006C6C(FILE *__stream)
{
  __ptr = -21846;
  if (fread(&__ptr, 1uLL, 2uLL, __stream) != 2)
  {
    sub_100000A10("Unexpected EOF on input");
  }

  return __ptr;
}

uint64_t sub_100006CBC(FILE *__stream)
{
  __ptr = -86;
  if (fread(&__ptr, 1uLL, 1uLL, __stream) != 1)
  {
    sub_100000A10("Unexpected EOF on input");
  }

  return __ptr;
}

uint64_t sub_100006D0C(uint64_t result)
{
  if (result)
  {
    v3 = result;
    result = 0;
    do
    {
      if (v3 > 0x46u)
      {
        if (v3 == 71)
        {
          result = result | 2;
        }

        else
        {
          if (v3 != 82)
          {
LABEL_13:
            sub_100000A10("Illegal channel code", v1, v2);
          }

          result = result | 1;
        }
      }

      else if (v3 != 32)
      {
        if (v3 != 66)
        {
          goto LABEL_13;
        }

        result = result | 4;
      }

      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100006D84(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *a3;
  if (v3 == 12)
  {
    sub_100000A10("Too many index values for CLUT tables", a2);
  }

  v4 = a2;
  if (v3)
  {
    v5 = 4 * v3;
    v4 = a2;
    while (*v4 != result)
    {
      ++v4;
      v5 -= 4;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == &a2[v3])
  {
LABEL_8:
    *a3 = v3 + 1;
    a2[v3] = result;
    return std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  }

  return result;
}

_DWORD *sub_100006E1C(int a1, int a2, int a3, int a4, int a5)
{
  v8 = &qword_100038910;
  if (word_1000388FC != a1)
  {
    v8 = &qword_100038918;
    if (*&dword_100038900 == 0.0 || word_1000388FC + 1 != a1)
    {
      if (a4)
      {
        v10 = qword_100038920;
        if (qword_100038920 || (v10 = malloc_type_malloc(0xDB8uLL, 0x1020040D1459293uLL)) != 0)
        {
          bzero(v10, 0xDB8uLL);
          v10[8] = 2;
          v10[3] = a5;
          v10[4] = a3;
          v10[2] = a2;
          qword_100038920 = v10;
          return v10;
        }

LABEL_20:
        sub_100000A10("out of memory");
      }

      return 0;
    }
  }

  v10 = *v8;
  if (!*v8)
  {
LABEL_14:
    if (a4)
    {
      v11 = malloc_type_malloc(0xDB8uLL, 0x1020040D1459293uLL);
      if (v11)
      {
        v10 = v11;
        bzero(v11, 0xDB8uLL);
        v10[8] = 2;
        v10[3] = a5;
        v10[4] = a3;
        v10[2] = a2;
        *v10 = *v8;
        *v8 = v10;
        return v10;
      }

      goto LABEL_20;
    }

    return 0;
  }

  while (v10[2] != a2 || v10[4] != a3)
  {
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  if ((v10[5] & a4) != 0)
  {
    sub_100000A10("Duplicate PDC table (bin=%d temp=%d bright=%d chan=%X) found in input.", a1, a2, a3, a4);
  }

  return v10;
}

uint64_t sub_100006F8C(uint64_t result, _DWORD *a2, _WORD *a3)
{
  v3 = *a3;
  if (v3 == 20)
  {
    sub_100000A10("Too many index values for CLUT tables", a2);
  }

  v4 = a2;
  if (*a3)
  {
    v5 = 4 * v3;
    v4 = a2;
    while (*v4 != result)
    {
      ++v4;
      v5 -= 4;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 == &a2[v3])
  {
LABEL_8:
    *a3 = v3 + 1;
    a2[v3] = result;
    return std::__sort<std::__less<int,int> &,int *>();
  }

  return result;
}

uint64_t sub_100007020(uint64_t result, uint64_t a2, _WORD *a3)
{
  v5 = *a3;
  if (v5 == 20)
  {
    sub_100000A10("Too many index values for CLUT tables", a2, v3, v4);
  }

  if (*a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a2 + 4 * v6);
      if (v7 == result)
      {
        break;
      }

      if (v7 > result)
      {
        goto LABEL_9;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *a3;
        goto LABEL_12;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
LABEL_9:
    if (v6 < v5)
    {
      v8 = *a3;
      do
      {
        *(a2 + 4 * v8) = *(a2 + 4 * v8 - 4);
        --v8;
      }

      while (v8 > v6);
    }

LABEL_12:
    *(a2 + 4 * v6) = result;
    *a3 = v5 + 1;
  }

  return result;
}

uint64_t sub_1000070AC(int a1, int a2, int a3, int a4)
{
  v7 = qword_100053AB8;
  if (qword_100053AB8)
  {
    while (*(v7 + 76) != a2 || *(v7 + 80) != a3 || *(v7 + 72) != a1)
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    if ((*(v7 + 84) & a4) != 0)
    {
      sub_100000A10("Duplicate 3LUT table (bin=%d temp=%d bright=%d chan=%X) found in input.", a1, a2, a3, a4);
    }
  }

  else
  {
LABEL_6:
    if (a4)
    {
      v8 = malloc_type_malloc(0x58uLL, 0x1020040461574A3uLL);
      if (!v8)
      {
        sub_100000A10("out of memory");
      }

      v7 = v8;
      bzero(v8, 0x58uLL);
      *(v7 + 72) = a1;
      *(v7 + 76) = a2;
      *(v7 + 80) = a3;
      *v7 = qword_100053AB8;
      qword_100053AB8 = v7;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1000071A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v6 = &loc_10001BAB8;
  v7 = *(&qword_100038000 + v6);
  if (!v7)
  {
LABEL_35:
    sub_100000A10("missing entry", a2, a3, a4, a5);
  }

  v10 = *(&qword_100038000 + a4 + 28188);
  v11 = *(&qword_100038000 + a5 + 28208);
  v12 = *(&qword_100038000 + v6);
  while (*(v12 + 76) != v10 || *(v12 + 80) != v11 || *(v12 + 72) != *(&qword_100038000 + a3 + 28295))
  {
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_35;
    }
  }

  if (a6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    while (*(v7 + 19) != v10 || *(v7 + 20) != v11 || *(v7 + 18) != *(&qword_100038000 + a3 + 28296))
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_35;
      }
    }
  }

  v13 = 0;
  v14 = 6;
  if (*(a1 + 29) != 1)
  {
    v14 = 0;
  }

  v15 = (a2 + v14);
  v16 = v12 + 24;
  LOWORD(v12) = *(a1 + 25);
  do
  {
    *(*a1 + 16 * v12) = *(a1 + 8) - *(a1 + 6);
    v17 = *(v16 + 8 * v13);
    a1[1] = 0;
    if (v7)
    {
      v18 = (v17 + 10);
      v19 = (v7[v13 + 3] + 10);
      v20 = 4913;
      do
      {
        v22 = *v18++;
        v21 = v22;
        v23 = *v19++;
        v24 = ((v21 + (a6 * (v23 - v21))) + 0.5);
        sub_10000773C(a1, v24);
        result = sub_10000773C(a1, v24 >> 8);
        --v20;
      }

      while (v20);
    }

    else
    {
      v26 = (v17 + 10);
      v27 = 4913;
      do
      {
        v28 = *v26++;
        sub_10000773C(a1, v28);
        result = sub_10000773C(a1, v28 >> 8);
        --v27;
      }

      while (v27);
    }

    v29 = *a1;
    v30 = a1[1];
    v31 = *(a1 + 25);
    v32 = (*a1 + 16 * v31);
    *(v32 + 1) = v30;
    if (v31)
    {
      v33 = 0;
      v34 = (v29 + 8);
      v35 = v34;
      while (1)
      {
        v36 = *v35;
        v35 += 2;
        if (v36 == v30)
        {
          result = memcmp((a1[3] + *(v34 - 2)), (a1[3] + *v32), 0x2662uLL);
          if (!result)
          {
            break;
          }
        }

        ++v33;
        v34 = v35;
        if (v31 == v33)
        {
          goto LABEL_26;
        }
      }

      LOWORD(v31) = v33;
    }

LABEL_26:
    *v15++ = v31;
    v12 = *(a1 + 25);
    if (v12 == v31)
    {
      LOWORD(v12) = v31 + 1;
      *(a1 + 25) = v31 + 1;
    }

    else
    {
      a1[4] = a1[3] + *(*a1 + 16 * v12);
    }

    ++v13;
  }

  while (v13 != 3);
  return result;
}

uint64_t sub_100007448(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v6 = &loc_10001BAB8;
  v7 = *(&qword_100038000 + v6);
  if (!v7)
  {
LABEL_44:
    sub_100000A10("missing entry", a2, a3, a4, a5);
  }

  v8 = result;
  v9 = *(&qword_100038000 + a4 + 28188);
  v10 = *(&qword_100038000 + a5 + 28208);
  v11 = *(&qword_100038000 + v6);
  while (*(v11 + 19) != v9 || *(v11 + 20) != v10 || *(v11 + 18) != *(&qword_100038000 + a3 + 28295))
  {
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_44;
    }
  }

  if (a6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    while (*(v7 + 19) != v9 || *(v7 + 20) != v10 || *(v7 + 18) != *(&qword_100038000 + a3 + 28296))
    {
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_44;
      }
    }
  }

  v12 = 0;
  v30 = v11 + 6;
  do
  {
    *(v8 + 8) = 0;
    v13 = v30[v12];
    if (v7 && v13 != v7[v12 + 6])
    {
      sub_100000A10("No support curve interpolation");
    }

    v32 = v12;
    v14 = *(v8 + 32);
    v15 = *(v8 + 40);
    if (v15 < v14)
    {
      v16 = 0;
      v17 = *(v13 + 12);
      while (1)
      {
        v18 = *v15;
        v19 = v15 + 3;
        v20 = *(v15 + 1);
        if (v17 == v20)
        {
          result = memcmp(*(v13 + 16), v19, v17);
          v21 = result == 0;
        }

        else
        {
          v21 = 0;
        }

        v15 = &v19[v20];
        if (v18 == 1)
        {
          v24 = *v15;
          v22 = v15 + 2;
          v23 = v24;
          if (*(v13 + 14) == v24)
          {
            result = memcmp(*(v13 + 24), v22, v23);
            v25 = result != 0;
          }

          else
          {
            v25 = 1;
          }

          v15 = &v22[v23];
          if (v21)
          {
LABEL_25:
            if (v18 == *(v13 + 8) && !v25)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v25 = 0;
          if (v21)
          {
            goto LABEL_25;
          }
        }

        ++v16;
        if (v15 >= v14)
        {
          goto LABEL_29;
        }
      }
    }

    v16 = 0;
LABEL_29:
    if (v16 == *(v8 + 54))
    {
      sub_10000773C(v8, *(v13 + 8));
      v26 = *(v13 + 12);
      sub_10000773C(v8, *(v13 + 12));
      result = sub_10000773C(v8, v26 >> 8);
      if (*(v13 + 12))
      {
        v27 = 0;
        do
        {
          result = sub_10000773C(v8, *(*(v13 + 16) + v27++));
        }

        while (v27 < *(v13 + 12));
      }

      if (*(v13 + 8) == 1)
      {
        v28 = *(v13 + 14);
        sub_10000773C(v8, *(v13 + 14));
        result = sub_10000773C(v8, v28 >> 8);
        if (*(v13 + 14))
        {
          v29 = 0;
          do
          {
            result = sub_10000773C(v8, *(*(v13 + 24) + v29++));
          }

          while (v29 < *(v13 + 14));
        }
      }

      ++*(v8 + 54);
    }

    *(a2 + 2 * v32) = v16;
    v12 = v32 + 1;
  }

  while (v32 != 2);
  return result;
}

uint64_t sub_10000773C(uint64_t result, uint64_t a2)
{
  v4 = *(result + 32);
  if (&v4[-*(result + 24)] >= *(result + 16))
  {
    sub_100000A10("output buffer overflow", a2, v2, v3);
  }

  *(result + 32) = v4 + 1;
  *v4 = a2;
  *(result + 8) = a2 ^ __ROR8__(*(result + 8), 7);
  return result;
}

uint64_t sub_100007788(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_10000785C(a1);
  return a1;
}

void sub_100007834(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10000785C(uint64_t a1)
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
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) == 0)
  {
    return;
  }

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
    if (v8 < 0)
    {
LABEL_19:
      __break(1u);
      return;
    }
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

uint64_t sub_100007970(uint64_t a1)
{
  bzero(a1, 0x18uLL);
  bzero((a1 + 24), 0xF58uLL);
  bzero((a1 + 3952), 0x98uLL);
  return a1;
}

__n128 sub_1000079B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000079CC(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  *a3 = *a2;
  v4 = a2[1];
  a3[1] = v4;
  v5 = a2[2];
  a3[2] = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v3)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000079FC(int a1, const void *a2, size_t __n)
{
  __dst = 0;
  if ((__n - 1) > 3)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(&__dst, a2, __n);
  return __dst;
}

uint64_t sub_100007A40(uint64_t a1, int *a2)
{
  v2 = *(a1 + 3944);
  v3 = v2 >= 0xC;
  v4 = v2 - 12;
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 3936);
  v6 = *v5;
  *a2 = *v5;
  v7 = v5[1];
  a2[1] = v7;
  v8 = v5[2];
  a2[2] = v8;
  if (!v6)
  {
    return 0;
  }

  if (!v7 || v8 == 0)
  {
    return 0;
  }

  *(a1 + 3936) = v5 + 3;
  *(a1 + 3944) = v4;
  return 1;
}

uint64_t sub_100007A94(int a1, const void *a2, size_t __n)
{
  if (__n == 8)
  {
    return *a2;
  }

  v7 = v3;
  v8 = v4;
  v6 = 0;
  if ((__n - 1) > 3)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(&v6, a2, __n);
  return v6;
}

uint64_t sub_100007AEC(uint64_t a1, size_t __n)
{
  v2 = __n;
  v4 = *(a1 + 3936);
  __dst = 0;
  v5 = __n;
  if ((__n - 1) > 3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    memcpy(&__dst, v4, __n);
    v6 = __dst;
  }

  *(a1 + 3936) = &v4[v5];
  v7 = *(a1 + 3944);
  *(a1 + 3944) = v7 - v2;
  if (v7 < v2)
  {
    puts("e: data_sz underflow in get_value");
  }

  return v6;
}

uint64_t sub_100007B84(uint64_t a1, size_t __n)
{
  v2 = __n;
  v4 = *(a1 + 3936);
  if (__n == 8)
  {
    v5 = *v4;
  }

  else
  {
    __dst = 0;
    if ((__n - 1) > 3)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      memcpy(&__dst, v4, __n);
      v5 = __dst;
    }
  }

  *(a1 + 3936) = v4 + v2;
  v6 = *(a1 + 3944);
  *(a1 + 3944) = v6 - v2;
  if (v6 < v2)
  {
    puts("e: data_sz underflow in get_long_value");
  }

  return v5;
}

uint64_t sub_100007C20(uint64_t result, unsigned int a2)
{
  *(result + 3936) += a2;
  v2 = *(result + 3944);
  *(result + 3944) = v2 - a2;
  if (v2 < a2)
  {
    return puts("e: data_sz underflow in skip_section");
  }

  return result;
}

BOOL sub_100007C4C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 3944);
  if (v2 >= a2)
  {
    *(a1 + 3936) += a2;
    *(a1 + 3944) = v2 - a2;
  }

  return v2 >= a2;
}

BOOL sub_100007C74(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 3944);
  if (v2 >= a2)
  {
    *(a1 + 3944) = a2;
  }

  return v2 >= a2;
}

void sub_100007C90(float a1, uint64_t a2, uint64_t a3, int a4, __int16 *a5, float *a6)
{
  if (!a4)
  {
    LODWORD(v6) = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v6 = 0;
  while (*(a3 + 4 * v6) < a1)
  {
    if (a4 == ++v6)
    {
      LODWORD(v6) = a4;
      break;
    }
  }

  if (a5)
  {
LABEL_7:
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    *a5 = v7;
  }

LABEL_11:
  if (a6)
  {
    v8 = 0.0;
    if (v6 - 1 < (a4 - 2))
    {
      v8 = (a1 - *(a3 + 4 * (v6 - 1))) / (*(a3 + 4 * v6) - *(a3 + 4 * (v6 - 1)));
    }

    *a6 = v8;
  }
}

uint64_t sub_100007D08(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = *(result + 2140);
  if (v6 != 0.0)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    LODWORD(v7) = 0;
    goto LABEL_11;
  }

  result = (*(result + 8))(@"FFR_raw_index", *(result + 16));
  v6 = vcvts_n_f32_u32(result, 0x10uLL);
  if (result == -1)
  {
    v6 = 0.5;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = 0;
  while (*(a2 + 4 * v7) < v6)
  {
    if (a3 == ++v7)
    {
      LODWORD(v7) = a3;
      break;
    }
  }

LABEL_11:
  v8 = v7 - 1;
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  *(v5 + 2128) = v9;
  v10 = 0.0;
  if (v8 < a3 - 2)
  {
    v10 = (v6 - *(a2 + 4 * v8)) / (*(a2 + 4 * v7) - *(a2 + 4 * v8));
  }

  *(v5 + 2132) = v10;
  *(v5 + 2136) = 1;
  return result;
}

uint64_t sub_100007DD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v10 = *(a1 + 2140);
  if (v10 == 0.0)
  {
    v11 = (*(a1 + 8))(@"FFR_raw_index", *(a1 + 16));
    v12 = vcvts_n_f32_u32(v11, 0x10uLL);
    if (v11 == -1)
    {
      v10 = 0.5;
    }

    else
    {
      v10 = v12;
    }
  }

  v13 = *(a1 + 2144);
  if (v13 != 0.0)
  {
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_14:
    LODWORD(v14) = 0;
    goto LABEL_15;
  }

  v15 = (*(a1 + 8))(@"FFR_raw_high_index", *(a1 + 16));
  v13 = vcvts_n_f32_u32(v15, 0x10uLL);
  if (v15 == -1)
  {
    v13 = 0.5;
  }

  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_7:
  v14 = 0;
  while (*(a2 + 4 * v14) < v10)
  {
    if (a4 == ++v14)
    {
      LODWORD(v14) = a4;
      break;
    }
  }

LABEL_15:
  v16 = a4 - 2;
  v17 = 0.0;
  if (v14 - 1 < (a4 - 2))
  {
    v17 = (v10 - *(a2 + 4 * (v14 - 1))) / (*(a2 + 4 * v14) - *(a2 + 4 * (v14 - 1)));
  }

  if (a4)
  {
    v18 = 0;
    while (*(a3 + 4 * v18) < v13)
    {
      if (a4 == ++v18)
      {
        LODWORD(v18) = a4;
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v19 = 0.0;
  if (v18 - 1 < v16)
  {
    v19 = (v13 - *(a3 + 4 * (v18 - 1))) / (*(a3 + 4 * v18) - *(a3 + 4 * (v18 - 1)));
  }

  if (v18 <= 1)
  {
    LOWORD(v18) = 1;
  }

  if (v14 <= 1)
  {
    LOWORD(v14) = 1;
  }

  v20 = v17 + v14;
  v21 = v19 + v18;
  v22 = ((1.0 - a5) * v21) + (a5 * v20);
  result = printf("i: PDC mix bin %g and bin %g with %g --> %g\n", v20, v21, a5, v22);
  *(a1 + 2128) = v22;
  v24 = v22;
  v25 = v22 - v24;
  if (v24 > v16)
  {
    v25 = 0.0;
  }

  *(a1 + 2132) = v25;
  *(a1 + 2136) = 1;
  return result;
}

uint64_t sub_100007FB8(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a2)
  {
    do
    {
      if (a2 > 0x46u)
      {
        if (a2 == 71)
        {
          result = result | 2;
        }

        else
        {
          if (a2 != 82)
          {
LABEL_12:
            printf("e: Illegal channel code %c\n", a2);
            return 0;
          }

          result = result | 1;
        }
      }

      else if (a2 != 32)
      {
        if (a2 != 66)
        {
          goto LABEL_12;
        }

        result = result | 4;
      }

      v3 = a2 > 0xFF;
      a2 >>= 8;
    }

    while (v3);
  }

  return result;
}

_DWORD *sub_10000804C(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8)
{
  v14 = *(a1 + 2128);
  if (v14 == a3)
  {
    v15 = 2200;
  }

  else
  {
    v16 = v14 + 1;
    if (*(a1 + 2132) == 0.0 || v16 != a3)
    {
      if (a6)
      {
        v18 = *(a1 + 2216);
        if (v18)
        {
          if (*(v18 + 32) == 5)
          {
            v19 = *(v18 + 48);
            if (v19)
            {
              *(v18 + 48) = 0;
              free(v19);
              v18 = *(a1 + 2216);
            }
          }

          free(v18);
          *(a1 + 2216) = 0;
        }

        v20 = malloc_type_calloc(1uLL, 0xDB8uLL, 0x1020040D1459293uLL);
        v21 = v20;
        if (v20)
        {
          bzero(v20, 0xDB8uLL);
          v21[8] = a2;
          v21[3] = a7;
          v21[4] = a5;
          v21[2] = a4;
          v21[6] = a8;
        }

        else
        {
          puts("e: Out of memory");
        }

        *(a1 + 2216) = v21;
        return v21;
      }

      return 0;
    }

    v15 = 2208;
  }

  v21 = *(a1 + v15);
  if (!v21)
  {
LABEL_22:
    if (a6)
    {
      v22 = malloc_type_calloc(1uLL, 0xDB8uLL, 0x1020040D1459293uLL);
      v21 = v22;
      if (v22)
      {
        bzero(v22, 0xDB8uLL);
        v21[8] = a2;
        v21[3] = a7;
        v21[4] = a5;
        v21[2] = a4;
        v21[6] = a8;
        *v21 = *(a1 + v15);
        *(a1 + v15) = v21;
      }

      else
      {
        puts("e: Out of memory");
      }

      return v21;
    }

    return 0;
  }

  while (v21[2] != a4 || v21[4] != a5 || v21[6] != a8 || v21[3] != a7)
  {
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  if ((v21[5] & a6) != 0)
  {
    printf("e: Duplicate PDC table (bin=%d temp=%d bright=%d sf=%d param=%d chan=%X) found in input.\n", a3, HIWORD(a4), HIWORD(a5), a7, a8, a6);
    return 0;
  }

  return v21;
}

void sub_100008234(uint64_t a1, uint64_t a2)
{
  if (*a2 == 5)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(a2 + 16) = 0;
      free(v2);
    }
  }
}

uint64_t *sub_100008254(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = 3608;
  if (*(a1 + 3564) == a5)
  {
    v5 = 3600;
  }

  for (result = *(a1 + v5); result; result = *result)
  {
    if (*(result + 664) == a2 && *(result + 665) == a3 && *(result + 666) == a4)
    {
      break;
    }
  }

  return result;
}

_WORD *sub_1000082A0(uint64_t a1, int a2, int a3)
{
  v3 = a2;
  for (i = *(a1 + 3808); i; i = *i)
  {
    if (*(i + 4) == a2)
    {
      v6 = *(i + 10);
      if (v6 == 2)
      {
        if (*(i + 37) == a3)
        {
LABEL_11:
          printf("e: Duplicate PTUC table vers=%d (bright=%d, temp=%d) found in input.\n", v6, a2, a3);
          return 0;
        }
      }

      else if (v6 == 1)
      {
        goto LABEL_11;
      }
    }
  }

  v7 = malloc_type_calloc(1uLL, 0x2100uLL, 0x1020040E01156A3uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, 0x2100uLL);
    v8[4] = v3;
    *v8 = *(a1 + 3808);
    *(a1 + 3808) = v8;
  }

  else
  {
    puts("e: Out of memory");
  }

  return v8;
}

uint64_t sub_100008398(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 2488 + 8 * a3);
  if (v3)
  {
    v4 = *(a1 + 2488 + 8 * a3);
    while (*(a2 + 12) != *(v4 + 3) || *(a2 + 8) != *(v4 + 2) || *(a2 + 16) != *(v4 + 4))
    {
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    puts("e: duplicate tables");
    return 0;
  }

  else
  {
LABEL_7:
    *a2 = v3;
    *(a1 + 2488 + 8 * a3) = a2;
    return 1;
  }
}

char *sub_100008414(uint64_t a1, int a2, char *a3)
{
  if (a3)
  {
    result = a3;
  }

  else
  {
    result = &byte_100053D30;
  }

  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  result[3] = a2;
  result[4] = 0;
  return result;
}

BOOL sub_100008448(uint64_t a1, float *a2, uint64_t a3, float (*a4)(uint64_t))
{
  if (*(a1 + 3944) < (4 * a3))
  {
    return 0;
  }

  v5 = a3;
  if (!a3)
  {
    return 1;
  }

  do
  {
    v9 = *(a1 + 3944);
    v4 = v9 > 3;
    v10 = v9 >= 4;
    v11 = v9 - 4;
    if (!v10)
    {
      break;
    }

    v12 = *(a1 + 3936);
    v13 = *v12;
    *(a1 + 3936) = v12 + 1;
    *(a1 + 3944) = v11;
    *a2++ = a4(v13);
    --v5;
  }

  while (v5);
  return v4;
}

uint64_t sub_1000084E4(uint64_t a1, unsigned int *a2, unsigned int a3, int a4)
{
  v4 = 0;
  v26 = 0;
  v25 = 0;
  v5 = a3 - 12;
  if (a3 < 0xC)
  {
    return v4 & 1;
  }

  if (*a2 != 1094992716)
  {
    LODWORD(v25) = bswap32(*a2);
    printf("e: unknown header block name %s\n");
LABEL_17:
    v4 = 0;
    return v4 & 1;
  }

  if (a3 != 4 * a2[2])
  {
    printf("e: data size %d mismatch header %d\n");
    goto LABEL_17;
  }

  v22 = 0;
  v21 = 0;
  v24 = 0;
  v23 = 0;
  if (v5 < 0xC)
  {
    v8 = 0;
LABEL_19:
    v11 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a2 + 3;
    while (1)
    {
      while (1)
      {
        v21 = *v9;
        v10 = v9[2];
        v22 = v9[2];
        if (v21 == 1447382596)
        {
          break;
        }

        if (sub_100008828(a1, (v9 + 3), v5, &v21, 0, 0))
        {
          v8 = 1;
        }

        else
        {
          LOBYTE(v23) = BYTE3(v21);
          BYTE1(v23) = BYTE2(v21);
          BYTE2(v23) = BYTE1(v21);
          *(&v23 + 3) = v21;
          printf("e: failed to process block %s\n", &v23);
        }

        v11 = 0;
        v9 += v22;
        v5 -= 4 * v22;
        if (v5 <= 0xB)
        {
          goto LABEL_34;
        }
      }

      if (v9[3] == a4)
      {
        break;
      }

      v9 += v10;
      v5 -= 4 * v10;
      if (v5 <= 0xB)
      {
        goto LABEL_19;
      }
    }

    v12 = 4 * v10 - 16;
    if (v12 >= 0xD)
    {
      v13 = v5 - 16;
      v14 = v9 + 4;
      v15 = "?";
      while (1)
      {
        v21 = *v14;
        v16 = v14[2];
        v22 = v14[2];
        if (!v21)
        {
          break;
        }

        if (v16)
        {
          v17 = 4 * v16 > v12;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          LOBYTE(v23) = BYTE3(v21);
          BYTE1(v23) = BYTE2(v21);
          BYTE2(v23) = BYTE1(v21);
          *(&v23 + 3) = v21;
          v15 = &v23;
          break;
        }

        if ((sub_100008828(a1, (v14 + 3), v13, &v21, 0, 0) & 1) == 0)
        {
          LOBYTE(v23) = BYTE3(v21);
          BYTE1(v23) = BYTE2(v21);
          BYTE2(v23) = BYTE1(v21);
          *(&v23 + 3) = v21;
          printf("e: failed to process block %s\n", &v23);
        }

        v14 += v22;
        v12 -= 4 * v22;
        if (v12 <= 0xC)
        {
          goto LABEL_33;
        }
      }

      printf("e: block %s not well formed size %d remaining %d\n", v15, v16, v13);
    }

LABEL_33:
    v11 = 1;
  }

LABEL_34:
  if (sub_100008F70(a1) && (*(a1 + 24) & 2) != 0 && sub_100009114(a1))
  {
    sub_1000091DC(a1);
  }

  if (v11)
  {
    v18 = "Found";
  }

  else
  {
    v18 = "Did not find";
  }

  printf("VDCL: %s Vendor Specific Calibration Data for idx %d\n", v18, a4);
  if (v8)
  {
    v19 = "Found";
  }

  else
  {
    v19 = "Did not find";
  }

  printf("VDCL: %s Global Calibration Data for idx %d\n", v19, a4);
  v4 = v11 | v8;
  return v4 & 1;
}

_DWORD *sub_100008828(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v12 = "e: no data";
LABEL_14:
    puts(v12);
    return 0;
  }

  if (!*a1)
  {
    v12 = "e: no valid set block callback";
    goto LABEL_14;
  }

  v7 = a6;
  v8 = a5;
  *(a1 + 3936) = a2;
  *(a1 + 3944) = a3;
  v10 = *a4;
  if (*a4 <= 1280068947)
  {
    if (v10 > 1112298578)
    {
      if (v10 <= 1212632899)
      {
        switch(v10)
        {
          case 1112298579:

            return sub_10000CAE8(a1, a4);
          case 1145195841:

            return sub_10000C458(a1, a4);
          case 1162630739:

            return sub_10002853C(a1, a4);
        }
      }

      else
      {
        switch(v10)
        {
          case 1212632900:

            return sub_10000C964(a1, a4);
          case 1230128195:

            return sub_10000E290(a1, a4);
          case 1279479620:

            return sub_10000AC98(a1, a4);
        }
      }
    }

    else if (v10 <= 1111703883)
    {
      if (v10 > 1095128134)
      {
        if (v10 == 1097626440)
        {

          return sub_10000BCB8(a1, a4);
        }

        if (v10 == 1095128135)
        {
          sub_10000DE84(a1, a4);
          goto LABEL_116;
        }
      }

      else
      {
        if (v10 == 542134851)
        {

          return sub_10000B97C(a1, a4);
        }

        if (v10 == 538985281)
        {

          return sub_1000278B4(a1, a4);
        }
      }
    }

    else
    {
      switch(v10)
      {
        case 1111703884:

          return sub_100009DB8(a1, a4);
        case 1112293704:

          return sub_10000A2A4(a1, a4);
        case 1112298320:

          return sub_10000B638(a1, a4);
      }
    }

LABEL_115:
    byte_100053D30 = HIBYTE(*a4);
    byte_100053D31 = BYTE2(v10);
    byte_100053D32 = BYTE1(v10);
    byte_100053D33 = v10;
    byte_100053D34 = 0;
    printf("e: unknown block name %s\n", &byte_100053D30);
    return 0;
  }

  if (v10 <= 1347634752)
  {
    if (v10 <= 1346520175)
    {
      switch(v10)
      {
        case 1280068948:

          return sub_10000DD20(a1, a4);
        case 1346520132:

          return sub_10000D6EC(a1, a4);
        case 1346520147:

          return sub_100027D18(a1, a4);
      }
    }

    else
    {
      switch(v10)
      {
        case 1346520176:

          return sub_10000D444(a1, a4);
        case 1346650979:

          return sub_10000D3F4(a1, a4);
        case 1346650992:

          return sub_10000D3A4(a1, a4);
      }
    }

    goto LABEL_115;
  }

  if (v10 <= 1347704175)
  {
    switch(v10)
    {
      case 1347634753:

        return sub_10000AD00(a1, a4);
      case 1347634765:

        return sub_10000B2D0(a1, a4);
      case 1347704131:

        return sub_10000DF1C(a1, a4, a5, a6);
    }

    goto LABEL_115;
  }

  if (v10 <= 1381520458)
  {
    if (v10 == 1363498051)
    {

      return sub_10000B008(a1, a4);
    }

    if (v10 != 1347704176)
    {
      goto LABEL_115;
    }

LABEL_116:

    return sub_100028278(a1, a4, v8, v7);
  }

  if (v10 != 1381520459)
  {
    if (v10 == 1431323500)
    {

      return sub_10000DC04(a1, a4);
    }

    goto LABEL_115;
  }

  return sub_10000CB4C(a1, a4);
}

BOOL sub_100008F70(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = a1 + 2232;
  v5 = a1 + 2272;
  v6 = a1 + 2292;
  do
  {
    v7 = *(a1 + 2488 + 8 * v1);
    if (v7)
    {
      v8 = a1 + 2224 + 88 * v1;
      if (*v8 == 1)
      {
        if (*(v8 + 72) < *(v8 + 76))
        {
          v17 = "e: not enough durations provided for LUS LUTs";
LABEL_34:
          puts(v17);
          return v2;
        }

        v9 = 0;
        do
        {
          v10 = *(v8 + 70);
          if (*(v8 + 70))
          {
            v11 = 0;
            while (*(v4 + 4 * v11) != *(v7 + 2))
            {
              if (v10 == ++v11)
              {
                goto LABEL_12;
              }
            }

            LODWORD(v10) = v11;
          }

LABEL_12:
          *(v7 + 2) = v10;
          v12 = *(v8 + 72);
          if (*(v8 + 72))
          {
            v13 = 0;
            while (*(v7 + 3) != *(v5 + 2 * v13))
            {
              if (v12 == ++v13)
              {
                goto LABEL_18;
              }
            }

            LODWORD(v12) = v13;
          }

LABEL_18:
          *(v7 + 3) = v12;
          v14 = *(v8 + 74);
          if (*(v8 + 74))
          {
            v15 = 0;
            while (*(v7 + 4) != *(v6 + v15))
            {
              if (v14 == ++v15)
              {
                goto LABEL_24;
              }
            }

            LODWORD(v14) = v15;
          }

LABEL_24:
          *(v7 + 4) = v14;
          v7 = *v7;
          ++v9;
        }

        while (v7);
        if (v9 < (*(v8 + 76) * *(v8 + 74) - *(v8 + 76) + *(v8 + 72)) * *(v8 + 70))
        {
          v17 = "e: missing LUS LUTs";
          goto LABEL_34;
        }
      }

      v3 = 1;
    }

    v2 = v1 > 1;
    v4 += 88;
    v5 += 88;
    v6 += 88;
    ++v1;
  }

  while (v1 != 3);
  if (v3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFD | v16;
  return 1;
}

uint64_t sub_100009114(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 2488;
  v8 = 0;
  v5 = a1 + 2224;
  while (!*(v4 + 8 * v3))
  {
LABEL_5:
    v8 = ++v3;
    if (v3 >= 3)
    {
      return v2 & 1;
    }
  }

  v6 = (v5 + 88 * v3);
  v6[1] = *v6;
  if ((*a1)(54, v6 + 1, 76, &v8, 1, *(a1 + 16)))
  {
    puts("i: set LUS table config succeeded");
    v2 = 1;
    v3 = v8;
    goto LABEL_5;
  }

  puts("e: failed to set LUS table config");
  v2 = 0;
  return v2 & 1;
}

uint64_t sub_1000091DC(uint64_t (**a1)(uint64_t))
{
  v2 = 0;
  v3 = a1 + 311;
  v4 = a1 + 278;
  v5 = 1;
  do
  {
    for (i = v3[v2]; i; i = *i)
    {
      i[3].i32[0] = v4[11 * v2];
      v8 = vrev64_s32(i[1]);
      v9 = i[2].i32[0];
      if (((*a1)(53) & 1) == 0)
      {
        printf("e: failed to set LUS LUT [%d %d %d]\n", v8.i32[0], v8.i32[1], v9);
        v5 = 0;
      }
    }

    ++v2;
  }

  while (v2 != 3);
  if (v5)
  {
    puts("i: set LUS LUTs succeeded");
  }

  return v5 & 1;
}

BOOL sub_100009304(uint64_t a1, int *a2, unsigned int a3)
{
  v21 = 0;
  v20 = 0;
  if (a3 < 0xC)
  {
    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 3846) = 0;
  if (v4 != 1094992716)
  {
    LOBYTE(v20) = HIBYTE(v4);
    BYTE1(v20) = BYTE2(v4);
    BYTE2(v20) = BYTE1(v4);
    *(&v20 + 3) = v4;
    printf("e: unknown header block name %s\n");
    return 0;
  }

  if (a3 != 4 * v6)
  {
    printf("e: data size %d mismatch header %d\n");
    return 0;
  }

  if (v5 == 327680)
  {
    LODWORD(v7) = a3 - 36;
    if (a3 >= 0x24uLL)
    {
      v8 = a2 + 9;
      goto LABEL_13;
    }

    return 0;
  }

  LODWORD(v7) = a3 - 12;
  if ((a3 - 12) >> 32)
  {
    return 0;
  }

  v8 = a2 + 3;
LABEL_13:
  v11 = "?";
  while (1)
  {
    v9 = v7 < 0xD;
    if (v7 < 0xD)
    {
      break;
    }

    v18 = *v8;
    v12 = v8[2];
    v19 = v8[2];
    if (!v18)
    {
      goto LABEL_29;
    }

    if (v12)
    {
      v13 = 4 * v12 > v7;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      LOBYTE(v20) = BYTE3(v18);
      BYTE1(v20) = BYTE2(v18);
      BYTE2(v20) = BYTE1(v18);
      *(&v20 + 3) = v18;
      v11 = &v20;
LABEL_29:
      printf("e: block %s not well formed size %d remaining %d\n", v11, v12, v7);
      break;
    }

    v14 = v7 - 12;
    if ((v7 - 12) >> 32)
    {
      return 0;
    }

    v15 = v8 + 3;
    if ((sub_100008828(a1, (v8 + 3), v7 - 12, &v18, 0, 0) & 1) == 0)
    {
      LOBYTE(v20) = BYTE3(v18);
      BYTE1(v20) = BYTE2(v18);
      BYTE2(v20) = BYTE1(v18);
      *(&v20 + 3) = v18;
      printf("e: failed to process block %s\n", &v20);
    }

    if (v19 < 3uLL)
    {
      return 0;
    }

    v9 = 0;
    v16 = 4 * v19 - 12;
    v17 = v14 >= v16;
    v7 = v14 - v16;
    if (v17)
    {
      v8 = &v15[v19 - 3];
      if (!HIDWORD(v7))
      {
        continue;
      }
    }

    return v9;
  }

  sub_100009560(a1);
  sub_100009620(a1);
  sub_100009860(a1);
  puts("i: all done");
  return v9;
}

uint64_t sub_100009560(uint64_t a1)
{
  v2 = sub_10001B158(a1);
  v3 = sub_100008F70(a1);
  v4 = sub_10001B600(a1);
  v5 = sub_10001890C(a1);
  v6 = sub_100018884(a1);
  v7 = sub_10001B790(a1);
  v8 = sub_10001BA90(a1);
  v9 = sub_10001BB98(a1);
  if (*(a1 + 3848))
  {
    *(a1 + 24) |= 0x100u;
  }

  return (v2 && v3) & v4 & v5 & v6 & v7 & v8 & v9;
}

uint64_t sub_100009620(uint64_t result)
{
  v1 = result;
  if (*(result + 24))
  {
    result = sub_10001A384(result);
    if (result)
    {
      result = sub_10001A408(v1);
    }
  }

  if ((*(v1 + 24) & 2) != 0)
  {
    result = sub_100009114(v1);
    if (result)
    {
      result = sub_1000091DC(v1);
    }
  }

  if ((*(v1 + 24) & 4) != 0)
  {
    *(v1 + 2516) = 1;
    v2 = (*v1)(5, v1 + 2516, 308, 0, 0, *(v1 + 16));
    v3 = v2 ? "i: set PRC table config succeeded" : "e: failed to set PRC table config";
    result = puts(v3);
    if (v2)
    {
      result = sub_10001AA04(v1);
    }
  }

  v4 = *(v1 + 24);
  if ((v4 & 8) != 0)
  {
    result = sub_100019174(v1);
    v4 = *(v1 + 24);
    if ((v4 & 0x10) == 0)
    {
LABEL_15:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  result = sub_100018F1C(v1);
  if ((*(v1 + 24) & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v5 = (*v1)(82, v1 + 2864, 544, 0, 0, *(v1 + 16));
  if (v5)
  {
    v6 = "i: set prox table config succeeded";
  }

  else
  {
    v6 = "e: failed to set prox table config";
  }

  result = puts(v6);
  if (v5)
  {
    result = sub_10001AB5C();
  }

LABEL_24:
  v7 = *(v1 + 24);
  if ((v7 & 0x40) != 0)
  {
    if ((*v1)(85, v1 + 3616, 72, 0, 0, *(v1 + 16)))
    {
      v8 = "i: set LLMT table config succeeded";
    }

    else
    {
      v8 = "e: failed to set LLMT table config";
    }

    result = puts(v8);
    v7 = *(v1 + 24);
  }

  if ((v7 & 0x80) != 0)
  {
    v9 = (*v1)(111, v1 + 3692, 113, 0, 0, *(v1 + 16));
    v10 = v9 ? "i: set PTUC table config succeeded" : "e: failed to set PTUC table config";
    result = puts(v10);
    if (v9)
    {
      result = sub_10001B08C(v1);
    }
  }

  if ((*(v1 + 24) & 0x100) != 0)
  {
    *(v1 + 3820) = 1;
    v11 = (*v1)(116, v1 + 3820, 28, 0, 0, *(v1 + 16));
    v12 = v11 ? "i: set ELVS table config succeeded" : "e: failed to set ELVS table config";
    result = puts(v12);
    if (v11)
    {

      return sub_10000E7FC(v1);
    }
  }

  return result;
}

void sub_100009860(uint64_t a1)
{
  for (i = *(a1 + 2200); i; *(a1 + 2200) = i)
  {
    v3 = i;
    i = *i;
    if (*(v3 + 8) == 5)
    {
      v4 = v3[6];
      if (v4)
      {
        v3[6] = 0;
        free(v4);
        v3 = *(a1 + 2200);
      }
    }

    free(v3);
  }

  for (j = *(a1 + 2208); j; *(a1 + 2208) = j)
  {
    v6 = j;
    j = *j;
    if (*(v6 + 8) == 5)
    {
      v7 = v6[6];
      if (v7)
      {
        v6[6] = 0;
        free(v7);
        v6 = *(a1 + 2208);
      }
    }

    free(v6);
  }

  v8 = *(a1 + 2216);
  if (v8)
  {
    if (*(v8 + 32) == 5)
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        *(v8 + 48) = 0;
        free(v9);
        v8 = *(a1 + 2216);
      }
    }

    free(v8);
  }

  v10 = 0;
  v11 = a1 + 2488;
  do
  {
    v12 = *(v11 + 8 * v10);
    if (v12)
    {
      do
      {
        v13 = *v12;
        free(v12);
        *(v11 + 8 * v10) = v13;
        v12 = v13;
      }

      while (v13);
    }

    ++v10;
  }

  while (v10 != 3);
  v14 = 0;
  v15 = a1 + 3968;
  do
  {
    v16 = *(v15 + 8 * v14);
    if (v16)
    {
      do
      {
        v17 = *v16;
        free(v16);
        *(v15 + 8 * v14) = v17;
        v16 = v17;
      }

      while (v17);
    }

    ++v14;
  }

  while (v14 != 5);
  bzero((a1 + 3952), 0x98uLL);
  v18 = *(a1 + 2824);
  if (v18)
  {
    do
    {
      v19 = *v18;
      free(v18);
      *(a1 + 2824) = v19;
      v18 = v19;
    }

    while (v19);
  }

  v20 = *(a1 + 3808);
  if (v20)
  {
    do
    {
      v21 = *v20;
      free(v20);
      *(a1 + 3808) = v21;
      v20 = v21;
    }

    while (v21);
  }

  v22 = *(a1 + 3848);
  if (v22)
  {
    do
    {
      v23 = *v22;
      free(v22);
      *(a1 + 3848) = v23;
      v22 = v23;
    }

    while (v23);
  }

  v24 = *(a1 + 3856);
  if (v24)
  {
    v25 = *v24;
    v26 = *(v24 + 8);
    if (*v24 == v26)
    {
      goto LABEL_36;
    }

    do
    {
      if (*v25)
      {
        operator delete();
      }

      ++v25;
    }

    while (v25 != v26);
    v24 = *(a1 + 3856);
    if (v24)
    {
LABEL_36:
      v27 = *v24;
      if (*v24)
      {
        *(v24 + 8) = v27;
        operator delete(v27);
      }

      operator delete();
    }
  }

  v28 = *(a1 + 3864);
  if (v28)
  {
    v29 = *v28;
    v30 = *(v28 + 8);
    if (*v28 == v30)
    {
      goto LABEL_45;
    }

    do
    {
      if (*v29)
      {
        operator delete();
      }

      ++v29;
    }

    while (v29 != v30);
    v28 = *(a1 + 3864);
    if (v28)
    {
LABEL_45:
      v31 = *v28;
      if (*v28)
      {
        *(v28 + 8) = v31;
        operator delete(v31);
      }

      operator delete();
    }
  }

  v32 = *(a1 + 3872);
  if (v32)
  {
    v33 = *v32;
    v34 = *(v32 + 8);
    if (*v32 == v34)
    {
      goto LABEL_54;
    }

    do
    {
      if (*v33)
      {
        operator delete();
      }

      ++v33;
    }

    while (v33 != v34);
    v32 = *(a1 + 3872);
    if (v32)
    {
LABEL_54:
      v35 = *v32;
      if (*v32)
      {
        *(v32 + 8) = v35;
        operator delete(v35);
      }

      operator delete();
    }
  }

  v36 = *(a1 + 3880);
  if (v36)
  {
    v37 = *v36;
    v38 = *(v36 + 8);
    if (*v36 == v38)
    {
      goto LABEL_63;
    }

    do
    {
      if (*v37)
      {
        operator delete();
      }

      ++v37;
    }

    while (v37 != v38);
    v36 = *(a1 + 3880);
    if (v36)
    {
LABEL_63:
      v39 = *v36;
      if (*v36)
      {
        *(v36 + 8) = v39;
        operator delete(v39);
      }

      operator delete();
    }
  }

  v40 = *(a1 + 3888);
  if (v40)
  {
    v41 = *v40;
    v42 = *(v40 + 8);
    if (*v40 == v42)
    {
      goto LABEL_72;
    }

    do
    {
      if (*v41)
      {
        operator delete();
      }

      ++v41;
    }

    while (v41 != v42);
    v40 = *(a1 + 3888);
    if (v40)
    {
LABEL_72:
      v43 = *v40;
      if (*v40)
      {
        *(v40 + 8) = v43;
        operator delete(v43);
      }

      operator delete();
    }
  }

  v44 = *(a1 + 3896);
  if (v44)
  {
    v45 = *v44;
    v46 = *(v44 + 8);
    if (*v44 == v46)
    {
      goto LABEL_81;
    }

    do
    {
      if (*v45)
      {
        operator delete();
      }

      ++v45;
    }

    while (v45 != v46);
    v44 = *(a1 + 3896);
    if (v44)
    {
LABEL_81:
      v47 = *v44;
      if (*v44)
      {
        *(v44 + 8) = v47;
        operator delete(v47);
      }

      operator delete();
    }
  }

  v48 = *(a1 + 3904);
  if (v48)
  {
    if (*(a1 + 2856))
    {
      goto LABEL_91;
    }

    v49 = *v48;
    v50 = *(v48 + 8);
    if (*v48 == v50)
    {
      goto LABEL_91;
    }

    do
    {
      if (*v49)
      {
        operator delete();
      }

      ++v49;
    }

    while (v49 != v50);
    v48 = *(a1 + 3904);
    if (v48)
    {
LABEL_91:
      v51 = *v48;
      if (*v48)
      {
        *(v48 + 8) = v51;
        operator delete(v51);
      }

      operator delete();
    }
  }

  v52 = *(a1 + 3912);
  if (v52)
  {
    v53 = *v52;
    v54 = *(v52 + 8);
    if (*v52 == v54)
    {
      goto LABEL_100;
    }

    do
    {
      if (*v53)
      {
        operator delete();
      }

      ++v53;
    }

    while (v53 != v54);
    v52 = *(a1 + 3912);
    if (v52)
    {
LABEL_100:
      v55 = *v52;
      if (*v52)
      {
        *(v52 + 8) = v55;
        operator delete(v55);
      }

      operator delete();
    }
  }

  v56 = *(a1 + 3920);
  if (v56)
  {
    v57 = *v56;
    v58 = *(v56 + 8);
    if (*v56 == v58)
    {
      goto LABEL_109;
    }

    do
    {
      if (*v57)
      {
        operator delete();
      }

      ++v57;
    }

    while (v57 != v58);
    v56 = *(a1 + 3920);
    if (v56)
    {
LABEL_109:
      v59 = *v56;
      if (*v56)
      {
        *(v56 + 8) = v59;
        operator delete(v59);
      }

      operator delete();
    }
  }

  sub_10001C1FC(a1);

  bzero((a1 + 24), 0xF58uLL);
}

uint64_t sub_100009DB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  v2 = *(a2 + 8);
  if (v2 >> 2 > 0xCBC)
  {
    return 0;
  }

  if (*(a2 + 4) != 0x10000)
  {
    return 0;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v4;
  v70 = v4;
  v67 = v4;
  v68 = v4;
  v65 = v4;
  v66 = v4;
  v63 = v4;
  v64 = v4;
  v61 = v4;
  v62 = v4;
  v59 = v4;
  v60 = v4;
  v57 = v4;
  v58 = v4;
  v55 = v4;
  v56 = v4;
  *v54 = v4;
  *&v54[16] = v4;
  v5 = 4 * v2;
  v6 = 4 * v2 - 12;
  if (*(a1 + 3944) < v6)
  {
    return 0;
  }

  *(a1 + 3944) = v6;
  *v54 = 1;
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 3936);
  *&v54[8] = *v7;
  *(a1 + 3936) = v7 + 2;
  *(a1 + 3944) = v5 - 14;
  if (v5 == 16)
  {
    return 0;
  }

  v8 = *(v7 + 2) | (*(v7 + 4) << 16);
  *(a1 + 3936) = v7 + 5;
  *(a1 + 3944) = v5 - 17;
  v9 = v8 | ((*(v7 + 5) | (*(v7 + 7) << 16)) << 32);
  *(a1 + 3936) = v7 + 8;
  *&v54[12] = v9 | 0xAA000000AA000000;
  *(a1 + 3944) = v5 - 20;
  if (v5 == 20)
  {
    return 0;
  }

  *&v54[20] = *(v7 + 8);
  *(a1 + 3936) = v7 + 10;
  *(a1 + 3944) = v5 - 22;
  *&v54[22] = *(v7 + 10);
  *(a1 + 3936) = v7 + 12;
  v10 = (v5 - 24);
  *(a1 + 3944) = v10;
  if (v10 < 0x18)
  {
    return 0;
  }

  v11 = 0;
  v12 = v5 - 26;
  do
  {
    if (v10 == v11)
    {
      return 0;
    }

    v13 = *(v7 + v11 + 12);
    *(a1 + 3936) = v7 + v11 + 14;
    *(a1 + 3944) = v12;
    *&v54[v11 + 24] = v13;
    v12 -= 2;
    v11 += 2;
  }

  while (v11 != 24);
  if ((v10 - 24) < 0x18)
  {
    return 0;
  }

  v14 = (v10 - 24) >> 1;
  for (i = 48; i != 72; i += 2)
  {
    if (!v14)
    {
      return 0;
    }

    v16 = *(v7 + v11 + 12);
    *(a1 + 3936) = v7 + v11 + 14;
    *&v54[i] = v16;
    *(a1 + 3944) = v12;
    v12 -= 2;
    v11 += 2;
    --v14;
  }

  if ((v10 - v11) < 0xA)
  {
    return 0;
  }

  v17 = -(((v10 - v11) & 0xFFFFFFFE) >> 1);
  for (j = 72; j != 82; j += 2)
  {
    if (!v17)
    {
      return 0;
    }

    v19 = *(v7 + v11 + 12);
    *(a1 + 3936) = v7 + v11 + 14;
    *&v54[j] = v19;
    *(a1 + 3944) = v12;
    v12 -= 2;
    v11 += 2;
    ++v17;
  }

  LODWORD(v10) = v10 - v11;
  if (v10 < 0x18)
  {
    return 0;
  }

  v20 = (v7 + v11 + 15);
  v21 = v10 >> 1;
  for (k = 82; k != 106; k += 2)
  {
    if (!v21)
    {
      return 0;
    }

    v23 = *(v20 - 3);
    *(a1 + 3936) = v20 - 1;
    v10 = (v10 - 2);
    *(a1 + 3944) = v10;
    *&v54[k] = v23;
    ++v20;
    --v21;
  }

  if (v10 < 0x78)
  {
    return 0;
  }

  LODWORD(v24) = v10 - 3;
  v25 = v10 >> 1;
  for (m = 106; m != 226; m += 2)
  {
    if (!v25)
    {
      return 0;
    }

    v27 = *(v20 - 3);
    *(a1 + 3936) = v20 - 1;
    *&v54[m] = v27;
    *(a1 + 3944) = v24 + 1;
    ++v20;
    v24 = (v24 - 2);
    --v25;
  }

  if (v24 == -3)
  {
    return 0;
  }

  BYTE2(v67) = *(v20 - 3);
  v28 = BYTE2(v67);
  *(a1 + 3936) = v20 - 1;
  *(a1 + 3944) = v24 + 2;
  if (v28 > 6)
  {
    return 0;
  }

  if (v24 == -2)
  {
    return 0;
  }

  LOBYTE(v68) = *(v20 - 2);
  v29 = v68;
  *(a1 + 3936) = v20 - 1;
  *(a1 + 3944) = v24 + 1;
  if (v29 > 5)
  {
    return 0;
  }

  if (v24 == -1)
  {
    return 0;
  }

  BYTE12(v68) = *(v20 - 1);
  v30 = BYTE12(v68);
  *(a1 + 3936) = v20;
  *(a1 + 3944) = v24;
  if (v30 > 6 || v24 < 2 * v28)
  {
    return 0;
  }

  if (v28)
  {
    v31 = &v67 + 2;
    v32 = v28;
    while (1)
    {
      v33 = v24 >= 2;
      v24 = (v24 - 2);
      if (!v33)
      {
        return 0;
      }

      v34 = *v20++;
      *(a1 + 3936) = v20;
      *(a1 + 3944) = v24;
      *v31++ = v34;
      if (!--v32)
      {
        v29 = v68;
        break;
      }
    }
  }

  if (v24 < 2 * v29)
  {
    return 0;
  }

  if (v29)
  {
    v35 = &v68 + 1;
    v36 = v29;
    do
    {
      v33 = v24 >= 2;
      v24 = (v24 - 2);
      if (!v33)
      {
        return 0;
      }

      v37 = *v20++;
      *(a1 + 3936) = v20;
      *(a1 + 3944) = v24;
      *v35++ = v37;
    }

    while (--v36);
  }

  v38 = BYTE12(v68);
  if (v24 < 2 * BYTE12(v68))
  {
    return 0;
  }

  if (BYTE12(v68))
  {
    v39 = &v68 + 7;
    v40 = v20 + 1;
    v41 = BYTE12(v68);
    do
    {
      v33 = v24 >= 2;
      LODWORD(v24) = v24 - 2;
      if (!v33)
      {
        return 0;
      }

      v42 = *(v40 - 1);
      *(a1 + 3936) = v40;
      *(a1 + 3944) = v24;
      *v39++ = v42;
      ++v40;
    }

    while (--v41);
  }

  v43 = v28 + v38 * v29;
  DWORD2(v70) = (v24 >> 1) / v43;
  v44 = DWORD2(v70) * v43;
  HIDWORD(v69) = ((((WORD4(v70) * v43) & 0x1FFF) != 0) << 14) + ((DWORD2(v70) * v43) >> 13 << 14);
  v45 = malloc_type_aligned_alloc(0x4000uLL, HIDWORD(v69), 0x1000040BDFB0063uLL);
  if (!v45)
  {
    puts("e: could not allocate memory for BCAL data");
    return 0;
  }

  v46 = *(a1 + 3944);
  if (v46 < 2 * v44)
  {
LABEL_68:
    free(v45);
    return 0;
  }

  if (v44)
  {
    v47 = v45;
    do
    {
      v33 = v46 >= 2;
      LODWORD(v46) = v46 - 2;
      if (!v33)
      {
        goto LABEL_68;
      }

      v48 = *(a1 + 3936);
      v49 = *v48;
      *(a1 + 3936) = v48 + 1;
      *(a1 + 3944) = v46;
      *v47++ = v49;
    }

    while (--v44);
  }

  *&v70 = v45;
  v50 = v45;
  v51 = (*a1)(46, v54, 288, 0, 0, *(a1 + 16));
  if (v51)
  {
    v52 = "i: set BCAL data succeeded";
  }

  else
  {
    v52 = "e: set BCAL data failed";
  }

  puts(v52);
  free(v50);
  return v51;
}

uint64_t sub_10000A2A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  v2 = *(a2 + 4);
  if (v2 < 0x30000)
  {
    v184 = 0u;
    v185 = 0u;
    v183 = 0u;
    v181 = 0u;
    memset(v182, 0, sizeof(v182));
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    memset(v176, 0, sizeof(v176));
    v175 = 0u;
    v174 = 0u;
    memset(&v173[1], 0, 144);
    v173[0] = 1;
    v4 = *(a1 + 3936);
    v5 = *v4;
    *(a1 + 3936) = v4 + 1;
    LODWORD(v4) = *(a1 + 3944);
    *(a1 + 3944) = v4 - 2;
    if (v4 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    printf("i: Processing BLAH format version %d data version %d\n", HIWORD(v2), v5);
    v6 = *(a1 + 3936);
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    *(a1 + 3936) = v7;
    v10 = *(a1 + 3944);
    v11 = v10 != 0;
    v12 = v10 - 1;
    *(a1 + 3944) = v12;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v7 = *(a1 + 3936);
      v12 = *(a1 + 3944);
    }

    LOBYTE(v183) = v8;
    v15 = *v7;
    v13 = (v7 + 1);
    v14 = v15;
    *(a1 + 3936) = v13;
    v11 = v12 != 0;
    v16 = v12 - 1;
    *(a1 + 3944) = v16;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v13 = *(a1 + 3936);
      v16 = *(a1 + 3944);
    }

    LOBYTE(v173[1]) = v14;
    v19 = *v13;
    v17 = v13 + 1;
    v18 = v19;
    *(a1 + 3936) = v17;
    v11 = v16 >= 2;
    v20 = v16 - 2;
    *(a1 + 3944) = v20;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v17 = *(a1 + 3936);
      v20 = *(a1 + 3944);
    }

    WORD1(v183) = v18;
    v23 = *v17;
    v21 = (v17 + 1);
    v22 = v23;
    *(a1 + 3936) = v21;
    v11 = v20 >= 2;
    v24 = v20 - 2;
    *(a1 + 3944) = v24;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v21 = *(a1 + 3936);
      v24 = *(a1 + 3944);
    }

    WORD2(v183) = v22;
    v27 = *v21;
    v25 = v21 + 1;
    v26 = v27;
    *(a1 + 3936) = v25;
    v11 = v24 != 0;
    v28 = v24 - 1;
    *(a1 + 3944) = v28;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v25 = *(a1 + 3936);
      v28 = *(a1 + 3944);
    }

    BYTE1(v173[1]) = v26;
    v31 = *v25;
    v29 = v25 + 1;
    v30 = v31;
    *(a1 + 3936) = v29;
    v11 = v28 != 0;
    v32 = v28 - 1;
    *(a1 + 3944) = v32;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v29 = *(a1 + 3936);
      v32 = *(a1 + 3944);
    }

    BYTE2(v173[1]) = v30;
    v35 = *v29;
    v33 = v29 + 1;
    v34 = v35;
    *(a1 + 3936) = v33;
    v11 = v32 != 0;
    v36 = v32 - 1;
    *(a1 + 3944) = v36;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v33 = *(a1 + 3936);
      v36 = *(a1 + 3944);
    }

    HIBYTE(v173[1]) = v34;
    v39 = *v33;
    v37 = (v33 + 1);
    v38 = v39;
    *(a1 + 3936) = v37;
    v11 = v36 != 0;
    v40 = v36 - 1;
    *(a1 + 3944) = v40;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v37 = *(a1 + 3936);
      v40 = *(a1 + 3944);
    }

    LOBYTE(v173[2]) = v38;
    v43 = *v37;
    v41 = v37 + 1;
    v42 = v43;
    *(a1 + 3936) = v41;
    v11 = v40 >= 4;
    v44 = v40 - 4;
    *(a1 + 3944) = v44;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v41 = *(a1 + 3936);
      v44 = *(a1 + 3944);
    }

    v173[3] = v42;
    v47 = *v41;
    v45 = v41 + 1;
    v46 = v47;
    *(a1 + 3936) = v45;
    v11 = v44 >= 4;
    v48 = v44 - 4;
    *(a1 + 3944) = v48;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v45 = *(a1 + 3936);
      v48 = *(a1 + 3944);
    }

    DWORD2(v183) = v46;
    v51 = *v45;
    v49 = v45 + 1;
    v50 = v51;
    *(a1 + 3936) = v49;
    v11 = v48 >= 4;
    v52 = v48 - 4;
    *(a1 + 3944) = v52;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v49 = *(a1 + 3936);
      v52 = *(a1 + 3944);
    }

    HIDWORD(v183) = v50;
    v55 = *v49;
    v53 = v49 + 1;
    v54 = v55;
    *(a1 + 3936) = v53;
    v11 = v52 >= 4;
    v56 = v52 - 4;
    *(a1 + 3944) = v56;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v53 = *(a1 + 3936);
      v56 = *(a1 + 3944);
    }

    LODWORD(v184) = v54;
    v59 = *v53;
    v57 = (v53 + 1);
    v58 = v59;
    *(a1 + 3936) = v57;
    v11 = v56 >= 4;
    v60 = v56 - 4;
    *(a1 + 3944) = v60;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v57 = *(a1 + 3936);
      v60 = *(a1 + 3944);
    }

    DWORD1(v184) = v58;
    v63 = *v57;
    v61 = (v57 + 1);
    v62 = v63;
    *(a1 + 3936) = v61;
    v11 = v60 != 0;
    v64 = v60 - 1;
    *(a1 + 3944) = v64;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v61 = *(a1 + 3936);
      v64 = *(a1 + 3944);
    }

    WORD4(v184) = v62;
    v65 = *v61;
    *(a1 + 3936) = v61 + 1;
    *(a1 + 3944) = v64 - 2;
    if (v64 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    WORD5(v184) = v65;
    if (!v42 || !v46 || !v54)
    {
      v78 = "e: Step values should be nonzero";
LABEL_106:
      puts(v78);
      return 0;
    }

    v66 = *(a1 + 3936);
    *&v173[4] = *v66;
    v67 = *(v66 + 16);
    v68 = *(v66 + 32);
    v69 = *(v66 + 48);
    *(&v173[19] + 2) = *(v66 + 62);
    *&v173[16] = v69;
    *&v173[12] = v68;
    *&v173[8] = v67;
    *(a1 + 3936) = v66 + 70;
    v70 = *(a1 + 3944);
    *(a1 + 3944) = v70 - 70;
    if (v70 < 0x46)
    {
      puts("e: data_sz underflow in get_array");
    }

    if (v2 < 0x20000)
    {
      v77 = 3;
      BYTE2(v173[21]) = 3;
    }

    else
    {
      v71 = *(a1 + 3936);
      v74 = *v71;
      v72 = v71 + 1;
      v73 = v74;
      *(a1 + 3936) = v72;
      v75 = *(a1 + 3944);
      v11 = v75 != 0;
      v76 = v75 - 1;
      *(a1 + 3944) = v76;
      if (!v11)
      {
        puts("e: data_sz underflow in get_value");
        v72 = *(a1 + 3936);
        v76 = *(a1 + 3944);
      }

      BYTE2(v173[21]) = v73;
      v77 = *v72;
      *(a1 + 3936) = v72 + 1;
      *(a1 + 3944) = v76 - 1;
      if (!v76)
      {
        puts("e: data_sz underflow in get_value");
      }
    }

    HIBYTE(v173[21]) = v77;
    v79 = *(a1 + 3936);
    v81 = *v79;
    v80 = v79 + 1;
    *&v173[22] = v81;
    *(a1 + 3936) = v80;
    v82 = *(a1 + 3944);
    v11 = v82 >= 0x10;
    v83 = v82 - 16;
    *(a1 + 3944) = v83;
    if (!v11)
    {
      puts("e: data_sz underflow in get_array");
      v80 = *(a1 + 3936);
      v83 = *(a1 + 3944);
    }

    v84 = *v80;
    v173[30] = *(v80 + 4);
    *&v173[26] = v84;
    v85 = v80 + 20;
    *(a1 + 3936) = v85;
    v11 = v83 >= 0x14uLL;
    v86 = v83 - 20;
    *(a1 + 3944) = v86;
    if (!v11)
    {
      puts("e: data_sz underflow in get_array");
      v85 = *(a1 + 3936);
      v86 = *(a1 + 3944);
    }

    v87 = *v85;
    *(&v173[34] + 2) = *(v85 + 14);
    *&v173[31] = v87;
    *(a1 + 3936) = v85 + 22;
    *(a1 + 3944) = v86 - 22;
    if (v86 < 0x16uLL)
    {
      puts("e: data_sz underflow in get_array");
    }

    for (i = 37; i != 47; ++i)
    {
      v89 = *(a1 + 3936);
      v90 = *(v89 + 2);
      v91 = *v89;
      *(a1 + 3936) = v89 + 3;
      LODWORD(v89) = *(a1 + 3944);
      *(a1 + 3944) = v89 - 3;
      if (v89 < 3)
      {
        puts("e: data_sz underflow in get_value");
      }

      v173[i] = v91 | (v90 << 16);
    }

    v92 = *(a1 + 3936);
    v93 = *v92;
    *(&v176[2] + 6) = *(v92 + 14);
    *&v176[1] = v93;
    v94 = (v92 + 22);
    *(a1 + 3936) = v94;
    v95 = *(a1 + 3944);
    v11 = v95 >= 0x16;
    v96 = v95 - 22;
    *(a1 + 3944) = v96;
    if (!v11)
    {
      puts("e: data_sz underflow in get_array");
      v94 = *(a1 + 3936);
      v96 = *(a1 + 3944);
    }

    v97 = *v94;
    v98 = v94[1];
    *&v179 = *(v94 + 4);
    v178 = v98;
    v177 = v97;
    v99 = (v94 + 40);
    *(a1 + 3936) = v99;
    v11 = v96 >= 0x28uLL;
    v100 = v96 - 40;
    *(a1 + 3944) = v100;
    if (!v11)
    {
      puts("e: data_sz underflow in get_array");
      v99 = *(a1 + 3936);
      v100 = *(a1 + 3944);
    }

    v101 = *v99;
    *(v182 + 14) = *(v99 + 14);
    v182[0] = v101;
    v102 = v99 + 22;
    *(a1 + 3936) = v102;
    v11 = v100 >= 0x16uLL;
    v103 = v100 - 22;
    *(a1 + 3944) = v103;
    if (!v11)
    {
      puts("e: data_sz underflow in get_array");
      v102 = *(a1 + 3936);
      v103 = *(a1 + 3944);
    }

    v106 = *v102;
    v104 = v102 + 1;
    v105 = v106;
    *(a1 + 3936) = v104;
    v11 = v103 != 0;
    v107 = v103 - 1;
    *(a1 + 3944) = v107;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v104 = *(a1 + 3936);
      v107 = *(a1 + 3944);
    }

    BYTE6(v182[1]) = v105;
    v110 = *v104;
    v108 = v104 + 1;
    v109 = v110;
    *(a1 + 3936) = v108;
    v11 = v107 != 0;
    v111 = v107 - 1;
    *(a1 + 3944) = v111;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v108 = *(a1 + 3936);
      v111 = *(a1 + 3944);
    }

    BYTE7(v182[1]) = v109;
    v114 = *v108;
    v112 = v108 + 1;
    v113 = v114;
    *(a1 + 3936) = v112;
    v11 = v111 != 0;
    v115 = v111 - 1;
    *(a1 + 3944) = v115;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v112 = *(a1 + 3936);
      v115 = *(a1 + 3944);
    }

    BYTE8(v182[1]) = v113;
    v118 = *v112;
    v116 = v112 + 1;
    v117 = v118;
    *(a1 + 3936) = v116;
    v11 = v115 != 0;
    v119 = v115 - 1;
    *(a1 + 3944) = v119;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v116 = *(a1 + 3936);
      v119 = *(a1 + 3944);
    }

    BYTE9(v182[1]) = v117;
    v122 = *v116;
    v120 = (v116 + 1);
    v121 = v122;
    *(a1 + 3936) = v120;
    v11 = v119 >= 2;
    v123 = v119 - 2;
    *(a1 + 3944) = v123;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v120 = *(a1 + 3936);
      v123 = *(a1 + 3944);
    }

    WORD5(v182[1]) = v121;
    v126 = *v120;
    v124 = v120 + 1;
    v125 = v126;
    *(a1 + 3936) = v124;
    v11 = v123 != 0;
    v127 = v123 - 1;
    *(a1 + 3944) = v127;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v124 = *(a1 + 3936);
      v127 = *(a1 + 3944);
    }

    BYTE12(v182[1]) = v125;
    v130 = *v124;
    v128 = v124 + 1;
    v129 = v130;
    *(a1 + 3936) = v128;
    v11 = v127 != 0;
    v131 = v127 - 1;
    *(a1 + 3944) = v131;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v128 = *(a1 + 3936);
      v131 = *(a1 + 3944);
    }

    BYTE13(v182[1]) = v129;
    v134 = *v128;
    v132 = (v128 + 1);
    v133 = v134;
    *(a1 + 3936) = v132;
    v11 = v131 >= 2;
    v135 = v131 - 2;
    *(a1 + 3944) = v135;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v132 = *(a1 + 3936);
      v135 = *(a1 + 3944);
    }

    HIWORD(v182[1]) = v133;
    v138 = *v132;
    v136 = v132 + 1;
    v137 = v138;
    *(a1 + 3936) = v136;
    v11 = v135 != 0;
    v139 = v135 - 1;
    *(a1 + 3944) = v139;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v136 = *(a1 + 3936);
      v139 = *(a1 + 3944);
    }

    BYTE12(v184) = v137;
    v142 = *v136;
    v140 = v136 + 1;
    v141 = v142;
    *(a1 + 3936) = v140;
    v11 = v139 != 0;
    v143 = v139 - 1;
    *(a1 + 3944) = v143;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v140 = *(a1 + 3936);
      v143 = *(a1 + 3944);
    }

    BYTE13(v184) = v141;
    v146 = *v140;
    v144 = v140 + 1;
    v145 = v146;
    *(a1 + 3936) = v144;
    v11 = v143 != 0;
    v147 = v143 - 1;
    *(a1 + 3944) = v147;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v144 = *(a1 + 3936);
      v147 = *(a1 + 3944);
    }

    BYTE14(v184) = v145;
    v150 = *v144;
    v148 = v144 + 1;
    v149 = v150;
    *(a1 + 3936) = v148;
    v11 = v147 != 0;
    v151 = v147 - 1;
    *(a1 + 3944) = v151;
    if (!v11)
    {
      puts("e: data_sz underflow in get_value");
      v148 = *(a1 + 3936);
      v151 = *(a1 + 3944);
    }

    HIBYTE(v184) = v149;
    v152 = *v148;
    *(a1 + 3936) = v148 + 1;
    *(a1 + 3944) = v151 - 1;
    if (!v151)
    {
      puts("e: data_sz underflow in get_value");
    }

    LOBYTE(v185) = v152;
    if (v2 >> 17)
    {
      v153 = *(a1 + 3936);
      v156 = *v153;
      v154 = (v153 + 1);
      v155 = v156;
      *(a1 + 3936) = v154;
      v157 = *(a1 + 3944);
      v11 = v157 != 0;
      v158 = v157 - 1;
      *(a1 + 3944) = v158;
      if (!v11)
      {
        puts("e: data_sz underflow in get_value");
        v154 = *(a1 + 3936);
        v158 = *(a1 + 3944);
      }

      BYTE1(v185) = v155;
      v159 = *(v154 + 2);
      v161 = *v154;
      v160 = v154 + 3;
      v162 = v161 | (v159 << 16);
      *(a1 + 3936) = v160;
      v11 = v158 >= 3;
      v163 = v158 - 3;
      *(a1 + 3944) = v163;
      if (!v11)
      {
        puts("e: data_sz underflow in get_value");
        v160 = *(a1 + 3936);
        v163 = *(a1 + 3944);
      }

      DWORD1(v185) = v162;
      v164 = *v160;
      *(a1 + 3936) = v160 + 1;
      *(a1 + 3944) = v163 - 1;
      if (!v163)
      {
        puts("e: data_sz underflow in get_value");
      }

      BYTE8(v185) = v164;
      if (v155 && !v162 && !v164)
      {
        v78 = "e: ramp down configurations should be nonzero";
        goto LABEL_106;
      }

      v167 = *(a1 + 3936);
      v170 = *v167;
      v168 = v167 + 1;
      v169 = v170;
      *(a1 + 3936) = v168;
      v171 = *(a1 + 3944);
      v11 = v171 >= 2;
      v172 = v171 - 2;
      *(a1 + 3944) = v172;
      if (!v11)
      {
        puts("e: data_sz underflow in get_value");
        v168 = *(a1 + 3936);
        v172 = *(a1 + 3944);
      }

      WORD5(v185) = v169;
      v165 = *v168;
      *(a1 + 3936) = v168 + 1;
      *(a1 + 3944) = v172 - 2;
      if (v172 < 2)
      {
        puts("e: data_sz underflow in get_value");
      }
    }

    else
    {
      v165 = 0;
      BYTE1(v185) = 0;
      DWORD1(v185) = 0;
      BYTE8(v185) = 0;
      WORD5(v185) = 0;
    }

    WORD6(v185) = v165;
    if (!(*a1)(47, v173, 372, 0, 0, *(a1 + 16)))
    {
      v78 = "e: set BLAH data failed";
      goto LABEL_106;
    }

    puts("i: set BLAH data succeeded");
    return 1;
  }

  printf("e: Unexpected BLAH block version 0x%x\n", *(a2 + 4));
  return 0;
}

_DWORD *sub_10000AC98(uint64_t a1, uint64_t a2)
{
  v3 = HIWORD(*(a2 + 4));
  if (v3 == 4)
  {

    return sub_10000F208(a1, a2);
  }

  else if (v3 == 3)
  {

    return sub_10000EB1C(a1, a2);
  }

  else
  {
    printf("e: unexpected block version %d\n", v3);
    return 0;
  }
}

uint64_t sub_10000AD00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  v2 = *(a2 + 4);
  if (v2 > 0x4FFFF)
  {
    return 0;
  }

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  LODWORD(v32) = 1;
  v4 = 4 * *(a2 + 8);
  if (*(a1 + 3944) < (v4 - 12))
  {
    return 0;
  }

  *(a1 + 3944) = v4 - 12;
  if (v2 > 0x2FFFF)
  {
    BYTE8(v32) = 2;
  }

  if (v4 == 12)
  {
    return 0;
  }

  v5 = *(a1 + 3936);
  v6 = *v5;
  BYTE10(v33) = *v5;
  *(a1 + 3936) = v5 + 1;
  *(a1 + 3944) = v4 - 13;
  v7 = v5[1];
  BYTE11(v33) = v5[1];
  *(a1 + 3936) = v5 + 2;
  *(a1 + 3944) = v4 - 14;
  v8 = v5[2];
  BYTE12(v33) = v5[2];
  *(a1 + 3936) = v5 + 3;
  *(a1 + 3944) = v4 - 15;
  v9 = v5[3];
  BYTE13(v33) = v5[3];
  *(a1 + 3936) = v5 + 4;
  v10 = v4 - 16;
  *(a1 + 3944) = v4 - 16;
  if ((v2 & 0x50000) == 0x10000)
  {
    v11 = 0;
    BYTE9(v32) = 0;
    v12 = 10 * ((v6 + v6 * v8) * v7 + (v6 + v6 * v8) * v7 * v9);
    if (v2 >> 17)
    {
      v13 = v12 + 6;
    }

    else
    {
      v13 = v12 + 1;
    }
  }

  else
  {
    v15 = HIWORD(v2);
    if (v15 == 4 || v15 == 2)
    {
      BYTE9(v32) = 1;
      if (v4 == 16)
      {
        return 0;
      }

      v13 = *(v5 + 1);
      *(a1 + 3936) = v5 + 8;
      v10 = v4 - 20;
      *(a1 + 3944) = v4 - 20;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }
  }

  v16 = (v13 & 0x3FFF) != 0;
  LODWORD(v34) = (v13 & 0xFFFFC000) + (v16 << 14);
  if (v13 > v10)
  {
    v17 = "e: data size too large";
LABEL_36:
    puts(v17);
    return 0;
  }

  v18 = malloc_type_aligned_alloc(0x4000uLL, (v13 & 0xFFFFC000) + (v16 << 14), 0x100004077774924uLL);
  if (!v18)
  {
    v17 = "e: could not allocate memory for PSFA data";
    goto LABEL_36;
  }

  v19 = v18;
  v20 = *(a1 + 3944);
  if (v20 < v13)
  {
    goto LABEL_26;
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  if (!v20)
  {
LABEL_26:
    free(v18);
    return 0;
  }

  v21 = v13 - 1;
  v22 = v18;
  while (1)
  {
    v23 = *(a1 + 3936);
    v24 = *v23;
    *(a1 + 3936) = v23 + 1;
    *(a1 + 3944) = v20 - 1;
    *v22 = v24;
    if (!v21)
    {
      break;
    }

    v20 = *(a1 + 3944);
    ++v22;
    --v21;
    if (!v20)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  *(&v34 + 1) = v18;
  if (!v11)
  {
    goto LABEL_31;
  }

  v25 = *(a1 + 3944);
  if (v25 < 0x10)
  {
    goto LABEL_26;
  }

  v26 = 0;
  v27 = *(a1 + 3936) + 1;
  v28 = v25 - 1;
  do
  {
    v29 = *(v27 - 1);
    *(a1 + 3936) = v27;
    *(a1 + 3944) = v28;
    *((&v32 | 0xA) + v26++) = v29;
    ++v27;
    --v28;
  }

  while (v26 != 16);
LABEL_31:
  v14 = (*a1)(52, &v32, 56, 0, 0, *(a1 + 16));
  if (v14)
  {
    v30 = "i: set PSFA data succeeded";
  }

  else
  {
    v30 = "e: set PSFA data failed";
  }

  puts(v30);
  free(v19);
  return v14;
}

uint64_t sub_10000B008(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  if (*(a2 + 6) << 16 != 0x10000)
  {
    return 0;
  }

  v43[241] = v2;
  v43[242] = v3;
  v5 = *(a2 + 8);
  bzero(v41, 0x7A0uLL);
  v38 = 1;
  v6 = *(a1 + 3936);
  v9 = *v6;
  v7 = v6 + 1;
  v8 = v9;
  *(a1 + 3936) = v7;
  v10 = *(a1 + 3944);
  v11 = v10 >= 2;
  v12 = v10 - 2;
  *(a1 + 3944) = v12;
  if (!v11)
  {
    puts("e: data_sz underflow in get_value");
    v7 = *(a1 + 3936);
    v12 = *(a1 + 3944);
  }

  v39 = v8;
  v15 = *v7;
  v13 = v7 + 1;
  v14 = v15;
  *(a1 + 3936) = v13;
  v11 = v12 >= 2;
  v16 = v12 - 2;
  *(a1 + 3944) = v16;
  if (!v11)
  {
    puts("e: data_sz underflow in get_value");
    v13 = *(a1 + 3936);
    v16 = *(a1 + 3944);
  }

  v40 = v14;
  v17 = *v13;
  *(a1 + 3936) = v13 + 1;
  *(a1 + 3944) = v16 - 2;
  if (v16 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  v41[0] = v17;
  if (v17 < 0xF)
  {
    v20 = 4 * v5 - 18;
    v21 = 4 * v17;
    v22 = v20 - 4 * v17;
    if (v20 >= 4 * v17)
    {
      if (v17)
      {
        v23 = &v42;
        v24 = v17;
        do
        {
          v25 = *(a1 + 3936);
          v26 = *v25;
          *(a1 + 3936) = v25 + 1;
          LODWORD(v25) = *(a1 + 3944);
          *(a1 + 3944) = v25 - 4;
          if (v25 < 4)
          {
            puts("e: data_sz underflow in get_value");
          }

          *v23++ = v26;
          --v24;
        }

        while (v24);
        v20 = v22;
      }

      v27 = v20 - 44;
      if (v20 >= 0x2C)
      {
        for (i = 68; i != 112; i += 2)
        {
          v29 = *(a1 + 3936);
          v30 = *v29;
          *(a1 + 3936) = v29 + 1;
          LODWORD(v29) = *(a1 + 3944);
          *(a1 + 3944) = v29 - 2;
          if (v29 < 2)
          {
            puts("e: data_sz underflow in get_value");
          }

          *(&v38 + i) = v30;
        }

        if (v27 < 132 * v17)
        {
          printf("e: The data size(%zu)is actually lesser than remaining bytes(%d)\n", 132 * v17, v27);
          return 0;
        }

        if (v17)
        {
          v31 = 0;
          v32 = v43;
          do
          {
            v33 = 0;
            v34 = v32;
            do
            {
              for (j = 0; j != 44; j += 2)
              {
                v36 = *(a1 + 3936);
                v37 = *v36;
                *(a1 + 3936) = v36 + 1;
                LODWORD(v36) = *(a1 + 3944);
                *(a1 + 3944) = v36 - 2;
                if (v36 < 2)
                {
                  puts("e: data_sz underflow in get_value");
                }

                *(v34 + j) = v37;
              }

              ++v33;
              v34 = (v34 + 44);
            }

            while (v33 != 3);
            ++v31;
            v32 = (v32 + 132);
          }

          while (v31 != v17);
        }

        if ((*a1)(101, &v38, 1960, 0, 0, *(a1 + 16)))
        {
          puts("i: set QETC data succeeded");
          return 1;
        }

        v18 = "e: set QETC data failed";
        goto LABEL_11;
      }

      v21 = 44;
    }

    printf("e: The data size(%zu)is actually lesser than remaining bytes(%d)\n", v21, v20);
    return 0;
  }

  v18 = "e: set QETC data failed. Too many brightness levels. ";
LABEL_11:
  puts(v18);
  return 0;
}

uint64_t sub_10000B2D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  if (*(a2 + 6) > 2u)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v50 = 0;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  LODWORD(v48[0]) = 1;
  BYTE8(v48[0]) = 1;
  v5 = *(a1 + 3936);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  *(a1 + 3936) = v6;
  v9 = *(a1 + 3944);
  v10 = v9 != 0;
  v11 = v9 - 1;
  *(a1 + 3944) = v11;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v6 = *(a1 + 3936);
    v11 = *(a1 + 3944);
  }

  LOBYTE(v50) = v7;
  v14 = *v6;
  v12 = v6 + 1;
  v13 = v14;
  *(a1 + 3936) = v12;
  v10 = v11 != 0;
  v15 = v11 - 1;
  *(a1 + 3944) = v15;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v15 = *(a1 + 3944);
  }

  BYTE1(v50) = v13;
  v18 = *v12;
  v16 = v12 + 1;
  v17 = v18;
  *(a1 + 3936) = v16;
  v10 = v15 != 0;
  v19 = v15 - 1;
  *(a1 + 3944) = v19;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v16 = *(a1 + 3936);
    v19 = *(a1 + 3944);
  }

  BYTE12(v48[1]) = v17;
  v22 = *v16;
  v20 = v16 + 1;
  v21 = v22;
  *(a1 + 3936) = v20;
  v10 = v19 != 0;
  v23 = v19 - 1;
  *(a1 + 3944) = v23;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v20 = *(a1 + 3936);
    v23 = *(a1 + 3944);
  }

  BYTE13(v48[1]) = v21;
  v26 = *v20;
  v24 = v20 + 1;
  v25 = v26;
  *(a1 + 3936) = v24;
  v10 = v23 != 0;
  v27 = v23 - 1;
  *(a1 + 3944) = v27;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v24 = *(a1 + 3936);
    v27 = *(a1 + 3944);
  }

  BYTE10(v48[1]) = v25;
  v30 = *v24;
  v28 = v24 + 1;
  v29 = v30;
  *(a1 + 3936) = v28;
  v10 = v27 != 0;
  v31 = v27 - 1;
  *(a1 + 3944) = v31;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v28 = *(a1 + 3936);
    v31 = *(a1 + 3944);
  }

  BYTE11(v48[1]) = v29;
  v32 = *v28;
  *(a1 + 3936) = v28 + 1;
  *(a1 + 3944) = v31 - 1;
  if (!v31)
  {
    puts("e: data_sz underflow in get_value");
  }

  v33 = 4 * v4;
  BYTE2(v50) = v32;
  v34 = *(a2 + 4);
  if (v34 == 0x20000)
  {
    BYTE9(v48[0]) = 1;
    v39 = *(a1 + 3936);
    v37 = *v39;
    *(a1 + 3936) = v39 + 1;
    LODWORD(v39) = *(a1 + 3944);
    *(a1 + 3944) = v39 - 4;
    if (v39 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    v35 = v33 - 39;
    v36 = 1;
  }

  else
  {
    v35 = v33 - 19;
    v36 = 0;
    if (v34 == 0x10000)
    {
      BYTE9(v48[0]) = 0;
      v37 = (v13 + v13 * v21) * (4 * v32 * v25 * v29 + 8 * (v7 + v7 * v17));
    }

    else
    {
      v37 = 0;
    }
  }

  v40 = (v37 & 0x3FFF) != 0;
  LODWORD(v49) = (v37 & 0xFFFFC000) + (v40 << 14);
  if (v37 > v35 || v37 < v35 - 3)
  {
    v46 = "e: incoming data not well formed";
LABEL_37:
    puts(v46);
    return 0;
  }

  v41 = malloc_type_aligned_alloc(0x4000uLL, (v37 & 0xFFFFC000) + (v40 << 14), 0x100004077774924uLL);
  if (!v41)
  {
    v46 = "e: could not allocate memory for PSFM data";
    goto LABEL_37;
  }

  v42 = v41;
  memcpy(v41, *(a1 + 3936), v37);
  *(&v49 + 1) = v42;
  if (v36)
  {
    v43 = *(a1 + 3936);
    *(v48 + 10) = *v43;
    *(a1 + 3936) = v43 + 1;
    v44 = *(a1 + 3944);
    *(a1 + 3944) = v44 - 16;
    if (v44 < 0x10)
    {
      puts("e: data_sz underflow in get_array");
    }
  }

  v38 = (*a1)(52, v48, 56, 0, 0, *(a1 + 16));
  if (v38)
  {
    v45 = "i: set PSFM data succeeded";
  }

  else
  {
    v45 = "e: set PSFM data failed";
  }

  puts(v45);
  free(v42);
  return v38;
}

uint64_t sub_10000B638(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  if (v3 > 0x14)
  {
    return 0;
  }

  v5 = *(a2 + 4);
  if (v5 != 0x20000 && v5 != 0x10000)
  {
    return 0;
  }

  if (v5 == 0x20000)
  {
    v6 = -2;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a1 + 3936);
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  *(a1 + 3936) = v8;
  v11 = *(a1 + 3944);
  v12 = v11 >= 2;
  v13 = v11 - 2;
  *(a1 + 3944) = v13;
  if (!v12)
  {
    puts("e: data_sz underflow in get_value");
    v8 = *(a1 + 3936);
    v13 = *(a1 + 3944);
  }

  v16 = *v8;
  v14 = (v8 + 1);
  v15 = v16;
  *(a1 + 3936) = v14;
  v12 = v13 >= 2;
  v17 = v13 - 2;
  *(a1 + 3944) = v17;
  if (!v12)
  {
    puts("e: data_sz underflow in get_value");
    v14 = *(a1 + 3936);
    v17 = *(a1 + 3944);
  }

  v18 = *v14;
  *(a1 + 3936) = v14 + 1;
  *(a1 + 3944) = v17 - 1;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (*(a2 + 4) == 0x20000)
  {
    v19 = *(a1 + 3936);
    v20 = *v19;
    *(a1 + 3936) = v19 + 1;
    LODWORD(v19) = *(a1 + 3944);
    *(a1 + 3944) = v19 - 4;
    if (v19 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    if (v20 == 21474837)
    {
      v21 = 2;
    }

    else
    {
      v21 = v20 == 17913593;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v23 = a1 + 88 * v21;
  *(v23 + 2224) = 1;
  v24 = malloc_type_calloc(1uLL, 0x60uLL, 0x102004029C71177uLL);
  if (!v24)
  {
    puts("e: no memory");
    return 0;
  }

  v25 = v24;
  v26 = (4 * (v3 + v6) - 13) / 3uLL;
  v27 = 3 * v26;
  v28 = *(v23 + 2308);
  if (v28)
  {
    if (v27 != v28)
    {
      v29 = "e: lut sizes should be the same";
LABEL_30:
      puts(v29);
LABEL_45:
      free(v25);
      return 0;
    }
  }

  else
  {
    *(v23 + 2308) = v27;
  }

  v41 = a1 + 88 * v21;
  bzero(v24, 0x60uLL);
  v25[2] = v15 << 8;
  v25[3] = v9;
  v25[4] = v18;
  v25[5] = v20;
  v25[7] = v26;
  if (v26 > 0x14)
  {
    v29 = "e: lut size too big";
    goto LABEL_30;
  }

  v40 = v21;
  v30 = 0;
  v31 = v25 + 8;
  do
  {
    v32 = v26 & 0x1F;
    v33 = v31;
    if (v26)
    {
      do
      {
        v34 = *(a1 + 3936);
        v35 = *v34;
        *(a1 + 3936) = v34 + 1;
        LODWORD(v34) = *(a1 + 3944);
        *(a1 + 3944) = v34 - 1;
        if (!v34)
        {
          puts("e: data_sz underflow in get_value");
        }

        *v33 = v35;
        v33 = (v33 + 3);
        --v32;
      }

      while (v32);
    }

    ++v30;
    v31 = (v31 + 1);
  }

  while (v30 != 3);
  if ((sub_10000FFF8(a1, v25[2], (v41 + 2232), (v23 + 2294)) & 1) == 0 || !sub_1000100A4(a1, *(v25 + 6), (v23 + 2272), (v23 + 2296)) || !sub_100010424(a1, *(v25 + 16), (v23 + 2292), (v23 + 2298)) || !sub_100008398(a1, v25, v40))
  {
    goto LABEL_45;
  }

  result = 1;
  if (v25[4])
  {
    v36 = *(v23 + 2304);
    v37 = (1 << v25[3]) | v36;
    *(v23 + 2304) = v37;
    v38 = v36 == v37;
    v39 = *(v23 + 2300);
    if (!v38)
    {
      ++v39;
    }

    *(v23 + 2300) = v39;
  }

  return result;
}

BOOL sub_10000B97C(uint64_t a1, uint64_t a2)
{
  v3 = HIWORD(*(a2 + 4));
  if (v3 != 4)
  {
    v4 = *(a2 + 8) - 3;
    if (v3 == 1)
    {
      v5 = 389;
    }

    else
    {
      v5 = 390;
    }

    if (v4 == v5)
    {
      if (*(a1 + 3944) < (4 * v4))
      {
        return 0;
      }

      v6 = 4 * v4;
      *(a1 + 3944) = v6;
      v7 = *(a1 + 3936);
      if (v3 == 2)
      {
        *(a1 + 3936) = v7 + 1;
        *(a1 + 3944) = v6 - 2;
        v8 = v7[1];
        *(a1 + 3936) = v7 + 2;
        *(a1 + 3944) = v6 - 4;
        v9 = v7[2];
        *(a1 + 3936) = v7 + 3;
        *(a1 + 3944) = v6 - 6;
        v10 = v7[3];
        *(a1 + 3936) = v7 + 4;
        *(a1 + 3944) = v6 - 8;
        v11 = v7[4];
        *(a1 + 3936) = v7 + 5;
        *(a1 + 3944) = v6 - 10;
        v12 = v7[5];
        *(a1 + 3936) = v7 + 6;
        *(a1 + 3944) = v6 - 12;
        if (v12)
        {
          if ((v6 - 12) >= 0x60C)
          {
            *(a1 + 3936) = v7 + 780;
            *(a1 + 3944) = v6 - 1560;
            return 1;
          }

          return 0;
        }
      }

      else
      {
        v8 = *v7;
        *(a1 + 3936) = v7 + 1;
        *(a1 + 3944) = v6 - 2;
        v9 = v7[1];
        *(a1 + 3936) = v7 + 2;
        *(a1 + 3944) = v6 - 4;
        v10 = v7[2];
        *(a1 + 3936) = v7 + 3;
        *(a1 + 3944) = v6 - 6;
        v11 = v7[3];
        *(a1 + 3936) = v7 + 4;
        *(a1 + 3944) = v6 - 8;
      }

      v15 = malloc_type_calloc(1uLL, 0x628uLL, 0x10200404B1403A4uLL);
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v15[5] = v11;
        v15[6] = 2;
        v15[2] = v8;
        v15[3] = v9;
        v15[4] = v10;
        v18 = v15 + 7;
        v19 = *(a1 + 3944);
LABEL_17:
        if (v19 >= 0x202)
        {
          v20 = 0;
          v21 = v19 & 0xFFFFFFFE;
          while (v21 != v20)
          {
            v22 = *(a1 + 3936);
            v23 = *v22;
            *(a1 + 3936) = v22 + 1;
            v19 -= 2;
            *(a1 + 3944) = v19;
            *(v18 + v20) = v23;
            v20 += 2;
            if (v20 == 514)
            {
              v24 = v19 >= 2;
              v19 -= 2;
              if (!v24)
              {
                break;
              }

              *(a1 + 3936) = v22 + 2;
              *(a1 + 3944) = v19;
              ++v17;
              v18 = (v18 + 514);
              if (v17 != 3)
              {
                goto LABEL_17;
              }

              v25 = *(a1 + 2824);
              if (v25)
              {
                while (*(v25 + 2) != v8 || *(v25 + 3) != v9 || *(v25 + 4) != v10 || *(v25 + 5) != v11)
                {
                  v25 = *v25;
                  if (!v25)
                  {
                    goto LABEL_30;
                  }
                }

                puts("e: duplicate PRC table found in input");
                break;
              }

LABEL_30:
              sub_100010644(a1, v8, (a1 + 2520), (a1 + 2616));
              sub_100010644(a1, v16[3], (a1 + 2720), (a1 + 2816));
              sub_100010644(a1, v16[4], (a1 + 2620), (a1 + 2716));
              v26 = v16[5];
              if (v26 >= 2)
              {
                printf("e: unexpected value for polarity %d\n", v16[5]);
                break;
              }

              result = 1;
              v27 = *(a1 + 2512) | (1 << v26);
              *(a1 + 2512) = v27;
              if (v27 == 3)
              {
                v28 = 2;
              }

              else
              {
                v28 = 1;
              }

              *(a1 + 2820) = v28;
              *v16 = *(a1 + 2824);
              *(a1 + 2824) = v16;
              return result;
            }
          }
        }

        free(v16);
        return 0;
      }

      v14 = "e: out of memory for PRC table";
    }

    else
    {
      v14 = "e: PRC table not well formed";
    }

    puts(v14);
    return 0;
  }

  return sub_100028A0C(a1, a2);
}

uint64_t sub_10000BCB8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 3uLL)
  {
    return 0;
  }

  v4 = *(a2 + 4);
  HIDWORD(v6) = v4 - 0x40000;
  LODWORD(v6) = v4 - 0x40000;
  v5 = v6 >> 16;
  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 != 3)
      {
        *(a1 + 2832) = 5;
        operator new();
      }

      *(a1 + 2832) = 4;
      operator new();
    }

    if (v5 == 5)
    {
      *(a1 + 2832) = 6;
      operator new();
    }

    if (v5 == 6)
    {
      *(a1 + 2832) = 7;
      operator new();
    }

    goto LABEL_16;
  }

  switch(v5)
  {
    case 0:
      v7 = 1;
LABEL_15:
      *(a1 + 2832) = v7;
      operator new();
    case 1:
      *(a1 + 2832) = 2;
      operator new();
    case 2:
      v7 = 3;
      goto LABEL_15;
  }

LABEL_16:
  *(a1 + 2832) = 0;
  printf("e: unsupported AlsH version: 0x%x\n", v4);
  result = 0;
  v8 = *(a1 + 2832);
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4:
        v9 = (a1 + 2840);
        if (*(a1 + 2840))
        {
          goto LABEL_36;
        }

        break;
      case 6:
        v9 = (a1 + 2840);
        if (*(a1 + 2840))
        {
          goto LABEL_36;
        }

        break;
      case 7:
        v9 = (a1 + 2840);
        if (*(a1 + 2840))
        {
          goto LABEL_36;
        }

        break;
      default:
        return result;
    }
  }

  else
  {
    if (v8 == 1)
    {
LABEL_24:
      v9 = (a1 + 2840);
      if (*(a1 + 2840))
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        return result;
      }

      goto LABEL_24;
    }

    v9 = (a1 + 2840);
    if (*(a1 + 2840))
    {
LABEL_36:
      operator delete();
    }
  }

LABEL_37:
  result = 0;
  *v9 = 0;
  return result;
}

uint64_t sub_10000C458(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 6) > 2u)
  {
    return 0;
  }

  v22 = v2;
  v23 = v3;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  LODWORD(v16) = 1;
  v5 = *(a1 + 3944);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 3936);
  LOBYTE(v17) = *v6;
  *(a1 + 3936) = v6 + 1;
  *(a1 + 3944) = v5 - 1;
  if (v5 == 1)
  {
    return 0;
  }

  BYTE1(v17) = *(v6 + 1);
  *(a1 + 3936) = v6 + 2;
  *(a1 + 3944) = v5 - 2;
  if ((v5 - 2) < 2)
  {
    return 0;
  }

  WORD1(v17) = *(v6 + 2);
  *(a1 + 3936) = v6 + 4;
  *(a1 + 3944) = v5 - 4;
  if ((v5 - 4) < 2)
  {
    return 0;
  }

  WORD2(v17) = *(v6 + 4);
  *(a1 + 3936) = v6 + 6;
  *(a1 + 3944) = v5 - 6;
  if ((v5 - 6) < 2)
  {
    return 0;
  }

  WORD3(v17) = *(v6 + 6);
  *(a1 + 3936) = v6 + 8;
  *(a1 + 3944) = v5 - 8;
  if ((v5 - 8) < 2)
  {
    return 0;
  }

  WORD4(v17) = *(v6 + 8);
  *(a1 + 3936) = v6 + 10;
  *(a1 + 3944) = v5 - 10;
  if ((v5 - 10) < 2)
  {
    return 0;
  }

  WORD5(v17) = *(v6 + 10);
  *(a1 + 3936) = v6 + 12;
  *(a1 + 3944) = v5 - 12;
  if ((v5 - 12) < 2)
  {
    return 0;
  }

  WORD6(v17) = *(v6 + 12);
  *(a1 + 3936) = v6 + 14;
  *(a1 + 3944) = v5 - 14;
  if (v5 == 14)
  {
    return 0;
  }

  BYTE14(v17) = *(v6 + 14);
  *(a1 + 3936) = v6 + 15;
  *(a1 + 3944) = v5 - 15;
  if ((v5 - 15) < 2)
  {
    return 0;
  }

  LOWORD(v18) = *(v6 + 15);
  *(a1 + 3936) = v6 + 17;
  *(a1 + 3944) = v5 - 17;
  if ((v5 - 17) < 2)
  {
    return 0;
  }

  WORD1(v18) = *(v6 + 17);
  *(a1 + 3936) = v6 + 19;
  *(a1 + 3944) = v5 - 19;
  if (v5 == 19)
  {
    return 0;
  }

  BYTE4(v18) = *(v6 + 19);
  *(a1 + 3936) = v6 + 20;
  *(a1 + 3944) = v5 - 20;
  if ((v5 - 20) < 2)
  {
    return 0;
  }

  WORD3(v18) = *(v6 + 20);
  *(a1 + 3936) = v6 + 22;
  *(a1 + 3944) = v5 - 22;
  if ((v5 - 22) < 2)
  {
    return 0;
  }

  WORD4(v18) = *(v6 + 22);
  *(a1 + 3936) = v6 + 24;
  *(a1 + 3944) = v5 - 24;
  if ((v5 - 24) < 2)
  {
    return 0;
  }

  WORD5(v18) = *(v6 + 24);
  *(a1 + 3936) = v6 + 26;
  *(a1 + 3944) = v5 - 26;
  if ((v5 - 26) < 2)
  {
    return 0;
  }

  WORD6(v18) = *(v6 + 26);
  *(a1 + 3936) = v6 + 28;
  *(a1 + 3944) = v5 - 28;
  if ((v5 - 28) < 2)
  {
    return 0;
  }

  HIWORD(v18) = *(v6 + 28);
  *(a1 + 3936) = v6 + 30;
  *(a1 + 3944) = v5 - 30;
  if ((v5 - 30) < 2)
  {
    return 0;
  }

  LOWORD(v19) = *(v6 + 30);
  *(a1 + 3936) = v6 + 32;
  *(a1 + 3944) = v5 - 32;
  if ((v5 - 32) < 2)
  {
    return 0;
  }

  WORD1(v19) = *(v6 + 32);
  *(a1 + 3936) = v6 + 34;
  *(a1 + 3944) = v5 - 34;
  if ((v5 - 34) < 2)
  {
    return 0;
  }

  WORD2(v19) = *(v6 + 34);
  *(a1 + 3936) = v6 + 36;
  *(a1 + 3944) = v5 - 36;
  if ((v5 - 36) < 2)
  {
    return 0;
  }

  WORD3(v19) = *(v6 + 36);
  *(a1 + 3936) = v6 + 38;
  *(a1 + 3944) = v5 - 38;
  if ((v5 - 38) < 2)
  {
    return 0;
  }

  WORD4(v19) = *(v6 + 38);
  *(a1 + 3936) = v6 + 40;
  *(a1 + 3944) = v5 - 40;
  if ((v5 - 40) < 2)
  {
    return 0;
  }

  WORD5(v19) = *(v6 + 40);
  *(a1 + 3936) = v6 + 42;
  *(a1 + 3944) = v5 - 42;
  if ((v5 - 42) < 2)
  {
    return 0;
  }

  WORD6(v19) = *(v6 + 42);
  *(a1 + 3936) = v6 + 44;
  *(a1 + 3944) = v5 - 44;
  if ((v5 - 44) < 2)
  {
    return 0;
  }

  HIWORD(v19) = *(v6 + 44);
  *(a1 + 3936) = v6 + 46;
  *(a1 + 3944) = v5 - 46;
  if ((v5 - 46) < 2)
  {
    return 0;
  }

  LOWORD(v20) = *(v6 + 46);
  *(a1 + 3936) = v6 + 48;
  *(a1 + 3944) = v5 - 48;
  if ((v5 - 48) < 2)
  {
    return 0;
  }

  WORD1(v20) = *(v6 + 48);
  *(a1 + 3936) = v6 + 50;
  *(a1 + 3944) = v5 - 50;
  if ((v5 - 50) < 2)
  {
    return 0;
  }

  WORD2(v20) = *(v6 + 50);
  *(a1 + 3936) = v6 + 52;
  *(a1 + 3944) = v5 - 52;
  if ((v5 - 52) < 2)
  {
    return 0;
  }

  WORD3(v20) = *(v6 + 52);
  *(a1 + 3936) = v6 + 54;
  *(a1 + 3944) = v5 - 54;
  if ((v5 - 54) < 2)
  {
    return 0;
  }

  WORD4(v20) = *(v6 + 54);
  *(a1 + 3936) = v6 + 56;
  *(a1 + 3944) = v5 - 56;
  if ((v5 - 56) < 2)
  {
    return 0;
  }

  WORD5(v20) = *(v6 + 56);
  *(a1 + 3936) = v6 + 58;
  *(a1 + 3944) = v5 - 58;
  if ((v5 - 58) < 2)
  {
    return 0;
  }

  WORD6(v20) = *(v6 + 58);
  *(a1 + 3936) = v6 + 60;
  v8 = v5 - 60;
  *(a1 + 3944) = v8;
  v9 = v8 & 0xFFFFC000;
  v10 = (v8 & 0x3FFF) != 0;
  v11 = v9 + (v10 << 14);
  DWORD2(v21) = v9 + (v10 << 14);
  v12 = malloc_type_aligned_alloc(0x4000uLL, v11, 0x100004077774924uLL);
  if (!v12)
  {
    puts("e: could not allocate memory for DBMA data");
    return 0;
  }

  v13 = v12;
  bzero(v12, v11);
  memcpy(v13, *(a1 + 3936), *(a1 + 3944));
  *&v21 = v13;
  v14 = (*a1)(67, &v16, 96, 0, 0, *(a1 + 16));
  if (v14)
  {
    v15 = "i: set DBMA data succeeded";
  }

  else
  {
    v15 = "e: set DBMA data failed";
  }

  puts(v15);
  free(v13);
  return v14;
}

uint64_t sub_10000C964(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (HIWORD(v3) != 1)
  {
    if (HIWORD(v3) != 2)
    {
      goto LABEL_20;
    }

    v4 = *(a2 + 8);
LABEL_5:
    if (v4 == 7)
    {
      goto LABEL_6;
    }

LABEL_20:
    puts("e: Bad size/version for HGOD");
    return 0;
  }

  v4 = *(a2 + 8);
  if (v4 != 6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = HIWORD(v3);
  v5 = *(a1 + 3936);
  v8 = *v5;
  v6 = v5 + 1;
  v7 = v8;
  *(a1 + 3936) = v6;
  v9 = *(a1 + 3944);
  v10 = v9 >= 4;
  v11 = v9 - 4;
  *(a1 + 3944) = v11;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v6 = *(a1 + 3936);
    v11 = *(a1 + 3944);
  }

  v22[1] = v7;
  v14 = *v6;
  v12 = v6 + 1;
  v13 = v14;
  *(a1 + 3936) = v12;
  v10 = v11 >= 4;
  v15 = v11 - 4;
  *(a1 + 3944) = v15;
  if (!v10)
  {
    puts("e: data_sz underflow in get_value");
    v12 = *(a1 + 3936);
    v15 = *(a1 + 3944);
  }

  v22[2] = v13;
  v16 = *v12;
  *(a1 + 3936) = v12 + 1;
  *(a1 + 3944) = v15 - 4;
  if (v15 < 4)
  {
    puts("e: data_sz underflow in get_value");
  }

  LODWORD(v23) = v16;
  if (v3 >= 0x20000)
  {
    v17 = *(a1 + 3936);
    v18 = *v17;
    *(a1 + 3936) = v17 + 1;
    LODWORD(v17) = *(a1 + 3944);
    *(a1 + 3944) = v17 - 4;
    if (v17 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    HIDWORD(v23) = v18 << 16;
  }

  v19 = (*a1)(38, v22, 20, 0, 0, *(a1 + 16));
  if (v19)
  {
    v20 = "i: set HGOD data succeeded";
  }

  else
  {
    v20 = "e: set HGOD data failed";
  }

  puts(v20);
  return v19;
}

uint64_t sub_10000CAE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  v7 = v2;
  v8 = v3;
  v4 = *(a2 + 4);
  if (v4 < 0x30000)
  {
    sub_100028F04(a1, v4, &v6);
    return v6;
  }

  else
  {
    printf("e: Unexpected BLTS block version 0x%x\n", v4);
    return 0;
  }
}

uint64_t sub_10000CB4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3948) != 1)
  {
    return 1;
  }

  v2 = *(a2 + 4);
  if (v2 < 0x20000)
  {
    bzero(v163, 0x36CuLL);
    v162[0] = 2;
    v6 = HIWORD(v2);
    v7 = *(a1 + 3936);
    v8 = *v7;
    *(a1 + 3936) = v7 + 1;
    LODWORD(v7) = *(a1 + 3944);
    *(a1 + 3944) = v7 - 4;
    if (v7 < 4)
    {
      puts("e: data_sz underflow in get_value");
    }

    printf("i: Processing RXTK format version %d data version %d\n", v6, v8);
    v9 = *(a1 + 3936);
    v12 = *v9;
    v10 = v9 + 1;
    v11 = v12;
    *(a1 + 3936) = v10;
    v13 = *(a1 + 3944);
    v14 = v13 >= 4;
    v15 = v13 - 4;
    *(a1 + 3944) = v15;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v10 = *(a1 + 3936);
      v15 = *(a1 + 3944);
    }

    v162[1] = v11;
    v18 = *v10;
    v16 = v10 + 1;
    v17 = v18;
    *(a1 + 3936) = v16;
    v14 = v15 >= 4;
    v19 = v15 - 4;
    *(a1 + 3944) = v19;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v16 = *(a1 + 3936);
      v19 = *(a1 + 3944);
    }

    v163[0] = v17;
    v22 = *v16;
    v20 = v16 + 1;
    v21 = v22;
    *(a1 + 3936) = v20;
    v14 = v19 >= 4;
    v23 = v19 - 4;
    *(a1 + 3944) = v23;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v20 = *(a1 + 3936);
      v23 = *(a1 + 3944);
    }

    v163[1] = v21;
    v26 = *v20;
    v24 = v20 + 1;
    v25 = v26;
    *(a1 + 3936) = v24;
    v14 = v23 >= 4;
    v27 = v23 - 4;
    *(a1 + 3944) = v27;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v24 = *(a1 + 3936);
      v27 = *(a1 + 3944);
    }

    v163[2] = v25;
    v30 = *v24;
    v28 = v24 + 1;
    v29 = v30;
    *(a1 + 3936) = v28;
    v14 = v27 >= 4;
    v31 = v27 - 4;
    *(a1 + 3944) = v31;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v28 = *(a1 + 3936);
      v31 = *(a1 + 3944);
    }

    v163[3] = v29;
    v34 = *v28;
    v32 = v28 + 1;
    v33 = v34;
    *(a1 + 3936) = v32;
    v14 = v31 >= 4;
    v35 = v31 - 4;
    *(a1 + 3944) = v35;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v32 = *(a1 + 3936);
      v35 = *(a1 + 3944);
    }

    v163[4] = v33;
    v38 = *v32;
    v36 = v32 + 1;
    v37 = v38;
    *(a1 + 3936) = v36;
    v14 = v35 >= 4;
    v39 = v35 - 4;
    *(a1 + 3944) = v39;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v36 = *(a1 + 3936);
      v39 = *(a1 + 3944);
    }

    v163[5] = v37;
    v42 = *v36;
    v40 = v36 + 1;
    v41 = v42;
    *(a1 + 3936) = v40;
    v14 = v39 >= 4;
    v43 = v39 - 4;
    *(a1 + 3944) = v43;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v40 = *(a1 + 3936);
      v43 = *(a1 + 3944);
    }

    v163[6] = v41;
    v46 = *v40;
    v44 = v40 + 1;
    v45 = v46;
    *(a1 + 3936) = v44;
    v14 = v43 >= 4;
    v47 = v43 - 4;
    *(a1 + 3944) = v47;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v44 = *(a1 + 3936);
      v47 = *(a1 + 3944);
    }

    v163[7] = v45;
    v50 = *v44;
    v48 = v44 + 1;
    v49 = v50;
    *(a1 + 3936) = v48;
    v14 = v47 >= 4;
    v51 = v47 - 4;
    *(a1 + 3944) = v51;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v48 = *(a1 + 3936);
      v51 = *(a1 + 3944);
    }

    v163[8] = v49;
    v54 = *v48;
    v52 = v48 + 1;
    v53 = v54;
    *(a1 + 3936) = v52;
    v14 = v51 >= 4;
    v55 = v51 - 4;
    *(a1 + 3944) = v55;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v52 = *(a1 + 3936);
      v55 = *(a1 + 3944);
    }

    v163[9] = v53;
    v58 = *v52;
    v56 = (v52 + 1);
    v57 = v58;
    *(a1 + 3936) = v56;
    v14 = v55 >= 4;
    v59 = v55 - 4;
    *(a1 + 3944) = v59;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v56 = *(a1 + 3936);
      v59 = *(a1 + 3944);
    }

    v163[10] = v57;
    v62 = *v56;
    v60 = v56 + 1;
    v61 = v62;
    *(a1 + 3936) = v60;
    v14 = v59 != 0;
    v63 = v59 - 1;
    *(a1 + 3944) = v63;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v60 = *(a1 + 3936);
      v63 = *(a1 + 3944);
    }

    v163[11] = v61;
    v66 = *v60;
    v64 = v60 + 1;
    v65 = v66;
    *(a1 + 3936) = v64;
    v14 = v63 != 0;
    v67 = v63 - 1;
    *(a1 + 3944) = v67;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v64 = *(a1 + 3936);
      v67 = *(a1 + 3944);
    }

    v163[12] = v65;
    v70 = *v64;
    v68 = (v64 + 1);
    v69 = v70;
    *(a1 + 3936) = v68;
    v14 = v67 != 0;
    v71 = v67 - 1;
    *(a1 + 3944) = v71;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v68 = *(a1 + 3936);
      v71 = *(a1 + 3944);
    }

    v163[13] = v69;
    v72 = *(v68 + 2);
    v74 = *v68;
    v73 = (v68 + 3);
    v75 = v74 | (v72 << 16);
    *(a1 + 3936) = v73;
    v14 = v71 >= 3;
    v76 = v71 - 3;
    *(a1 + 3944) = v76;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v73 = *(a1 + 3936);
      v76 = *(a1 + 3944);
    }

    v163[14] = v75;
    v77 = *(v73 + 2);
    v79 = *v73;
    v78 = (v73 + 3);
    v80 = v79 | (v77 << 16);
    *(a1 + 3936) = v78;
    v14 = v76 >= 3;
    v81 = v76 - 3;
    *(a1 + 3944) = v81;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v78 = *(a1 + 3936);
      v81 = *(a1 + 3944);
    }

    v163[15] = v80;
    v82 = *v78;
    *(a1 + 3936) = v78 + 1;
    *(a1 + 3944) = v81 - 2;
    if (v81 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    v163[16] = v82;
    for (i = 19; i != 25; ++i)
    {
      v84 = *(a1 + 3936);
      v85 = *v84;
      *(a1 + 3936) = v84 + 1;
      LODWORD(v84) = *(a1 + 3944);
      *(a1 + 3944) = v84 - 4;
      if (v84 < 4)
      {
        puts("e: data_sz underflow in get_value");
      }

      v162[i] = v85;
    }

    do
    {
      v86 = *(a1 + 3936);
      v87 = *(v86 + 2);
      v88 = *v86;
      *(a1 + 3936) = v86 + 3;
      LODWORD(v86) = *(a1 + 3944);
      *(a1 + 3944) = v86 - 3;
      if (v86 < 3)
      {
        puts("e: data_sz underflow in get_value");
      }

      v162[i++] = v88 | (v87 << 16);
    }

    while (i != 41);
    do
    {
      v89 = *(a1 + 3936);
      v90 = *(v89 + 2);
      v91 = *v89;
      *(a1 + 3936) = v89 + 3;
      LODWORD(v89) = *(a1 + 3944);
      *(a1 + 3944) = v89 - 3;
      if (v89 < 3)
      {
        puts("e: data_sz underflow in get_value");
      }

      v162[i++] = v91 | (v90 << 16);
    }

    while (i != 57);
    v92 = *(a1 + 3936);
    v93 = *(v92 + 2);
    v95 = *v92;
    v94 = (v92 + 3);
    v96 = v95 | (v93 << 16);
    *(a1 + 3936) = v94;
    v97 = *(a1 + 3944);
    v14 = v97 >= 3;
    v98 = v97 - 3;
    *(a1 + 3944) = v98;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v94 = *(a1 + 3936);
      v98 = *(a1 + 3944);
    }

    v163[55] = v96;
    v99 = *(v94 + 2);
    v101 = *v94;
    v100 = (v94 + 3);
    v102 = v101 | (v99 << 16);
    *(a1 + 3936) = v100;
    v14 = v98 >= 3;
    v103 = v98 - 3;
    *(a1 + 3944) = v103;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v100 = *(a1 + 3936);
      v103 = *(a1 + 3944);
    }

    v163[56] = v102;
    v106 = *v100;
    v104 = v100 + 1;
    v105 = v106;
    *(a1 + 3936) = v104;
    v14 = v103 >= 4;
    v107 = v103 - 4;
    *(a1 + 3944) = v107;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v104 = *(a1 + 3936);
      v107 = *(a1 + 3944);
    }

    v163[57] = v105;
    v110 = *v104;
    v108 = v104 + 1;
    v109 = v110;
    *(a1 + 3936) = v108;
    v14 = v107 >= 4;
    v111 = v107 - 4;
    *(a1 + 3944) = v111;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v108 = *(a1 + 3936);
      v111 = *(a1 + 3944);
    }

    v163[58] = v109;
    v114 = *v108;
    v112 = (v108 + 1);
    v113 = v114;
    *(a1 + 3936) = v112;
    v14 = v111 >= 4;
    v115 = v111 - 4;
    *(a1 + 3944) = v115;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v112 = *(a1 + 3936);
      v115 = *(a1 + 3944);
    }

    v163[59] = v113;
    v118 = *v112;
    v116 = (v112 + 1);
    v117 = v118;
    *(a1 + 3936) = v116;
    v14 = v115 != 0;
    v119 = v115 - 1;
    *(a1 + 3944) = v119;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v116 = *(a1 + 3936);
      v119 = *(a1 + 3944);
    }

    v163[60] = v117;
    v120 = *(v116 + 2);
    v122 = *v116;
    v121 = (v116 + 3);
    v123 = v122 | (v120 << 16);
    *(a1 + 3936) = v121;
    v14 = v119 >= 3;
    v124 = v119 - 3;
    *(a1 + 3944) = v124;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v121 = *(a1 + 3936);
      v124 = *(a1 + 3944);
    }

    v163[61] = v123;
    v125 = *(v121 + 2);
    v127 = *v121;
    v126 = v121 + 3;
    v128 = v127 | (v125 << 16);
    *(a1 + 3936) = v126;
    v14 = v124 >= 3;
    v129 = v124 - 3;
    *(a1 + 3944) = v129;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v126 = *(a1 + 3936);
      v129 = *(a1 + 3944);
    }

    v163[62] = v128;
    v132 = *v126;
    v130 = v126 + 1;
    v131 = v132;
    *(a1 + 3936) = v130;
    v14 = v129 != 0;
    v133 = v129 - 1;
    *(a1 + 3944) = v133;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v130 = *(a1 + 3936);
      v133 = *(a1 + 3944);
    }

    v163[63] = v131;
    v136 = *v130;
    v134 = (v130 + 1);
    v135 = v136;
    *(a1 + 3936) = v134;
    v14 = v133 != 0;
    v137 = v133 - 1;
    *(a1 + 3944) = v137;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v134 = *(a1 + 3936);
      v137 = *(a1 + 3944);
    }

    v163[64] = v135;
    v140 = *v134;
    v138 = v134 + 1;
    v139 = v140;
    *(a1 + 3936) = v138;
    v14 = v137 >= 4;
    v141 = v137 - 4;
    *(a1 + 3944) = v141;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v138 = *(a1 + 3936);
      v141 = *(a1 + 3944);
    }

    v163[65] = v139;
    v144 = *v138;
    v142 = (v138 + 1);
    v143 = v144;
    *(a1 + 3936) = v142;
    v14 = v141 >= 4;
    v145 = v141 - 4;
    *(a1 + 3944) = v145;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v142 = *(a1 + 3936);
      v145 = *(a1 + 3944);
    }

    v163[66] = v143;
    v148 = *v142;
    v146 = v142 + 1;
    v147 = v148;
    *(a1 + 3936) = v146;
    v14 = v145 != 0;
    v149 = v145 - 1;
    *(a1 + 3944) = v149;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v146 = *(a1 + 3936);
      v149 = *(a1 + 3944);
    }

    v163[67] = v147;
    v152 = *v146;
    v150 = v146 + 1;
    v151 = v152;
    *(a1 + 3936) = v150;
    v14 = v149 != 0;
    v153 = v149 - 1;
    *(a1 + 3944) = v153;
    if (!v14)
    {
      puts("e: data_sz underflow in get_value");
      v150 = *(a1 + 3936);
      v153 = *(a1 + 3944);
    }

    v163[68] = v151;
    v154 = *v150;
    *(a1 + 3936) = v150 + 1;
    *(a1 + 3944) = v153 - 1;
    if (!v153)
    {
      puts("e: data_sz underflow in get_value");
    }

    v163[69] = v154;
    for (j = 72; j != 142; ++j)
    {
      v156 = *(a1 + 3936);
      v157 = *(v156 + 2);
      v158 = *v156;
      *(a1 + 3936) = v156 + 3;
      LODWORD(v156) = *(a1 + 3944);
      *(a1 + 3944) = v156 - 3;
      if (v156 < 3)
      {
        puts("e: data_sz underflow in get_value");
      }

      v162[j] = v158 | (v157 << 16);
    }

    do
    {
      v159 = *(a1 + 3936);
      v160 = *(v159 + 2);
      v161 = *v159;
      *(a1 + 3936) = v159 + 3;
      LODWORD(v159) = *(a1 + 3944);
      *(a1 + 3944) = v159 - 3;
      if (v159 < 3)
      {
        puts("e: data_sz underflow in get_value");
      }

      v162[j++] = v161 | (v160 << 16);
    }

    while (j != 212);
    v3 = (*a1)(95, v162, 884, 0, 0, *(a1 + 16));
    if (v3)
    {
      printf("i: set RXTK data succeeded");
    }

    else
    {
      puts("e: set RXTK data failed");
    }
  }

  else
  {
    printf("e: Unexpected RXTK block version 0x%x\n", *(a2 + 4));
    return 0;
  }

  return v3;
}

uint64_t sub_10000D3A4(uint64_t a1, uint64_t a2)
{
  v3 = HIWORD(*(a2 + 4));
  if (v3 == 5)
  {

    return sub_1000286A4(a1, a2);
  }

  else
  {
    printf("e: unexpected version %d for PDCp block\n", v3);
    return 0;
  }
}

_DWORD *sub_10000D3F4(uint64_t a1, uint64_t a2)
{
  v3 = HIWORD(*(a2 + 4));
  if (v3 == 5)
  {

    return sub_10000F8B0(a1, a2);
  }

  else
  {
    printf("e: unexpected version %d for PDCc block\n", v3);
    return 0;
  }
}

uint64_t sub_10000D444(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 0x20000u)
  {
    printf("e: unexpected PBDp block version %d\n");
    return 0;
  }

  if (*(a2 + 8) != 9)
  {
    printf("e: unexpected PBDp block size %d\n");
    return 0;
  }

  if (*(a1 + 3944) < 0x18u || (*(a1 + 3944) = 24, v3 = *(a1 + 3936), v4 = *v3, *(a1 + 2868) = v4, *(a1 + 3936) = v3 + 1, *(a1 + 3944) = 22, printf("i: processing prox data version %d\n", v4), v5 = *(a1 + 3944), v6 = v5 - 2, v5 < 2) || ((v7 = *(a1 + 3936), v8 = *v7, *(a1 + 2912) = v8, *(a1 + 3936) = v7 + 1, *(a1 + 3944) = v6, v8 <= 0x14) ? (v9 = v6 >= 2) : (v9 = 0), !v9 || (v11 = v7[1], *(a1 + 2916) = v11, *(a1 + 3936) = v7 + 2, *(a1 + 3944) = v5 - 4, v11 > 0x14) || v5 - 4 < 2 || (v12 = v7[2], *(a1 + 2914) = v12, *(a1 + 3936) = v7 + 3, *(a1 + 3944) = v5 - 6, v12 > 0x14) || v5 - 6 < 2 || (v13 = v7[3], *(a1 + 2918) = v13, *(a1 + 3936) = v7 + 4, *(a1 + 3944) = v5 - 8, v13 > 0x14) || v5 - 8 < 2 || (v14 = v7[4], *(a1 + 3164) = v14, *(a1 + 3936) = v7 + 5, *(a1 + 3944) = v5 - 10, v14 > 0x14) || v5 - 10 < 2 || (v15 = v7[5], *(a1 + 3162) = v15, *(a1 + 3936) = v7 + 6, *(a1 + 3944) = v5 - 12, v15 > 0x14) || v5 - 12 < 2 || (v16 = v7[6], *(a1 + 3408) = v16, *(a1 + 3936) = v7 + 7, *(a1 + 3944) = v5 - 14, v16 > 0x14) || v5 - 14 < 2 || (v17 = v7[7], *(a1 + 2870) = v17, *(a1 + 3936) = v7 + 8, *(a1 + 3944) = v5 - 16, v17 > 0xA) || v5 - 16 < 2 || (v18 = v7[8], *(a1 + 3160) = v18, *(a1 + 3936) = v7 + 9, *(a1 + 3944) = v5 - 18, v18 > 0xA) || v5 - 18 < 2))
  {
LABEL_10:
    puts("e:  Invalid prox config encountered.");
    *(a1 + 2864) = 0;
    bzero((a1 + 2868), 0x21CuLL);
    result = 0;
    *(a1 + 3408) = 0;
    return result;
  }

  v19 = v7[9];
  *(a1 + 3936) = v7 + 10;
  *(a1 + 3944) = v5 - 20;
  if (v19 != 3)
  {
    puts("e: expected 3 color channels");
    goto LABEL_10;
  }

  if (v5 - 20 < 2)
  {
    goto LABEL_10;
  }

  v20 = v7[10];
  *(a1 + 3166) = v20;
  *(a1 + 3936) = v7 + 11;
  *(a1 + 3944) = v5 - 22;
  if (v20 > 0xA)
  {
    goto LABEL_10;
  }

  *(a1 + 3600) = 0u;
  *(a1 + 3584) = 0u;
  result = 1;
  *(a1 + 2864) = 1;
  return result;
}

uint64_t sub_10000D6EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 0x20000u)
  {
    printf("e: unexpected PBDD version %d\n");
    return 0;
  }

  if (*(a1 + 2864) && *(a1 + 2868))
  {
    v3 = *(a1 + 3408);
    v4 = v3 * *(a1 + 2870);
    v5 = *(a1 + 2912);
    v6 = *(a1 + 2916);
    v7 = *(a1 + 2914);
    v8 = *(a1 + 2918);
    v9 = v8 * v7 + v6 * v5 + 1;
    if (*(a2 + 8) != v3 + v5 + v6 + v7 + v8 + v9 * v4 + 5)
    {
      printf("e: unexpected PBDD block size 0x%x != 0x%x\n");
      return 0;
    }

    *(a1 + 3936) += 2;
    v12 = *(a1 + 3944);
    *(a1 + 3944) = v12 - 2;
    if (v12 < 2)
    {
      puts("e: data_sz underflow in get_value");
      v3 = *(a1 + 3408);
    }

    v13 = (a1 + 2918);
    sub_10002775C(a1, a1 + 3548, v3, @"DisplayCoexPrioritizeDisplay");
    if (*(a1 + 2912))
    {
      v14 = *(a1 + 2912);
      do
      {
        v15 = *(a1 + 3936);
        v16 = *v15;
        *(a1 + 3936) = v15 + 1;
        LODWORD(v15) = *(a1 + 3944);
        *(a1 + 3944) = v15 - 4;
        if (v15 < 4)
        {
          puts("e: data_sz underflow in get_value");
        }

        v13[v14--] = v16;
      }

      while (v14 * 2);
    }

    v17 = *(a1 + 2916);
    if (*(a1 + 2916))
    {
      v18 = 0;
      do
      {
        v19 = *(a1 + 3936);
        v20 = *v19;
        *(a1 + 3936) = v19 + 1;
        LODWORD(v19) = *(a1 + 3944);
        *(a1 + 3944) = v19 - 4;
        if (v19 < 4)
        {
          puts("e: data_sz underflow in get_value");
          v17 = *(a1 + 2916);
        }

        *(a1 + 2960 + 4 * v18++) = v20 << 16;
      }

      while (v18 < v17);
    }

    if (*(a1 + 2914))
    {
      v21 = 2 * *(a1 + 2914);
      do
      {
        v22 = *(a1 + 3936);
        v23 = *v22;
        *(a1 + 3936) = v22 + 1;
        LODWORD(v22) = *(a1 + 3944);
        *(a1 + 3944) = v22 - 4;
        if (v22 < 4)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(a1 + 3038 + v21) = v23;
        v21 -= 2;
      }

      while (v21);
    }

    v24 = *v13;
    if (*v13)
    {
      v25 = 0;
      do
      {
        v26 = *(a1 + 3936);
        v27 = *v26;
        *(a1 + 3936) = v26 + 1;
        LODWORD(v26) = *(a1 + 3944);
        *(a1 + 3944) = v26 - 4;
        if (v26 < 4)
        {
          puts("e: data_sz underflow in get_value");
          v24 = *v13;
        }

        *(a1 + 3080 + 4 * v25++) = v27 << 16;
      }

      while (v25 < v24);
    }

    *(a1 + 3936) += 2;
    v28 = *(a1 + 3944);
    *(a1 + 3944) = v28 - 2;
    if (v28 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    v29 = (a1 + 3548);
    if (v4)
    {
      v30 = 0;
      v31 = (4 * v9 - 2);
      v54 = v31;
      while (1)
      {
        v32 = *(a1 + 3936);
        v33 = *v32;
        *(a1 + 3936) = v32 + 1;
        LODWORD(v32) = *(a1 + 3944);
        *(a1 + 3944) = v32 - 2;
        if (v32 < 2)
        {
          puts("e: data_sz underflow in get_value");
        }

        v34 = *v29;
        if (*v29 <= v33 && ((v35 = *(a1 + 3552), v34 + 1 >= v33) || v35 == 0.0) && (v35 == 0.0 ? (v36 = v34 >= v33) : (v36 = 1), v36))
        {
          v37 = malloc_type_calloc(1uLL, 0xC90uLL, 0x102004011C89CF6uLL);
          if (!v37)
          {
            v10 = "e: no memory";
            goto LABEL_8;
          }

          v38 = v37;
          v39 = *(a1 + 3936);
          v40 = *v39;
          *(a1 + 3936) = v39 + 1;
          LODWORD(v39) = *(a1 + 3944);
          *(a1 + 3944) = v39 - 2;
          if (v39 < 2)
          {
            puts("e: data_sz underflow in get_value");
          }

          v38[803] = (((v40 * 65536.0) / 10.0) + 0.5);
          v55 = v38;
          v38[2] = 1;
          v41 = *(a1 + 2912);
          if (*(a1 + 2912))
          {
            LODWORD(v42) = *(a1 + 2916);
            v43 = &v55[20 * *(a1 + 2912) - 17];
            do
            {
              if (v42)
              {
                v44 = 0;
                do
                {
                  v45 = *(a1 + 3936);
                  v46 = *v45;
                  *(a1 + 3936) = v45 + 1;
                  LODWORD(v45) = *(a1 + 3944);
                  *(a1 + 3944) = v45 - 4;
                  if (v45 < 4)
                  {
                    puts("e: data_sz underflow in get_value");
                  }

                  *(v43 + 4 * v44++) = vcvts_n_f32_s32(v46, 3uLL);
                  v42 = *(a1 + 2916);
                }

                while (v44 < v42);
              }

              v43 -= 80;
              --v41;
            }

            while (v41);
          }

          v47 = *(a1 + 2914);
          if (*(a1 + 2914))
          {
            LODWORD(v48) = *v13;
            v49 = &v55[20 * *(a1 + 2914) + 383];
            do
            {
              if (v48)
              {
                v50 = 0;
                do
                {
                  v51 = *(a1 + 3936);
                  v52 = *v51;
                  *(a1 + 3936) = v51 + 1;
                  LODWORD(v51) = *(a1 + 3944);
                  *(a1 + 3944) = v51 - 4;
                  if (v51 < 4)
                  {
                    puts("e: data_sz underflow in get_value");
                  }

                  *(v49 + 4 * v50++) = vcvts_n_f32_s32(v52, 3uLL);
                  v48 = *v13;
                }

                while (v50 < v48);
              }

              v49 -= 80;
              --v47;
            }

            while (v47);
          }

          if ((sub_10001A224(a1, v55[803], (a1 + 3508), (a1 + 3424)) & 1) == 0)
          {
            free(v55);
            return 0;
          }

          v29 = (a1 + 3548);
          if (*(a1 + 3548) == v33)
          {
            *v55 = *(a1 + 3584);
            *(a1 + 3584) = v55;
          }

          else
          {
            *v55 = *(a1 + 3592);
            *(a1 + 3592) = v55;
          }

          v31 = v54;
        }

        else
        {
          *(a1 + 3936) += v31;
          v53 = *(a1 + 3944);
          *(a1 + 3944) = v53 - v31;
          if (v53 < v31)
          {
            puts("e: data_sz underflow in skip_section");
          }
        }

        ++v30;
        result = 1;
        if (v30 == v4)
        {
          return result;
        }
      }
    }

    return 1;
  }

  else
  {
    v10 = "e: prox LUTs should come after config parameters";
LABEL_8:
    puts(v10);
    return 0;
  }
}

uint64_t sub_10000DC04(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) < 0x30000u)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 1;
    v2 = 4 * *(a2 + 8) - 12;
    if (*(a1 + 3944) >= v2)
    {
      v5 = 0;
      v6 = v13;
      *(a1 + 3944) = v2;
LABEL_7:
      if (v2 >= 0xC)
      {
        v7 = 0;
        v8 = v2 & 0xFFFFFFFC;
        while (v8 != v7)
        {
          v9 = *(a1 + 3936);
          v10 = *v9;
          *(a1 + 3936) = v9 + 1;
          v2 -= 4;
          *(a1 + 3944) = v2;
          *(v6 + v7) = v10;
          v7 += 4;
          if (v7 == 12)
          {
            ++v5;
            v6 = (v6 + 12);
            if (v5 != 3)
            {
              goto LABEL_7;
            }

            v3 = (*a1)(98, &v12, 40, 0, 0, *(a1 + 16));
            if (v3)
            {
              v11 = "i:  UPCL set DPCL data succeeded";
            }

            else
            {
              v11 = "e: UPCL set DPCL data failed";
            }

            puts(v11);
            return v3;
          }
        }
      }
    }
  }

  else
  {
    printf("e: Unexpected DPCL block version 0x%x\n", *(a2 + 4));
  }

  return 0;
}

uint64_t sub_10000DD20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 0x20000u)
  {
    printf("e: unexpected LLMT block version %d\n");
    return 0;
  }

  *(a1 + 3616) = 1;
  if (*(a2 + 8) != 20)
  {
    printf("e: unexpected LLMT block size %d\n");
    return 0;
  }

  for (i = 0; i != 32; i += 2)
  {
    v4 = *(a1 + 3936);
    v5 = *v4;
    *(a1 + 3936) = v4 + 1;
    LODWORD(v4) = *(a1 + 3944);
    *(a1 + 3944) = v4 - 2;
    if (v4 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    *(a1 + 3620 + i) = v5;
  }

  for (j = 0; j != 32; j += 2)
  {
    v7 = *(a1 + 3936);
    v8 = *v7;
    *(a1 + 3936) = v7 + 1;
    LODWORD(v7) = *(a1 + 3944);
    *(a1 + 3944) = v7 - 2;
    if (v7 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    *(a1 + 3652 + j) = v8;
  }

  v9 = *(a1 + 3936);
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  *(a1 + 3936) = v10;
  v13 = *(a1 + 3944);
  v14 = v13 >= 2;
  v15 = v13 - 2;
  *(a1 + 3944) = v15;
  if (!v14)
  {
    puts("e: data_sz underflow in get_value");
    v10 = *(a1 + 3936);
    v15 = *(a1 + 3944);
  }

  *(a1 + 3684) = v11;
  *(a1 + 3936) = v10 + 1;
  *(a1 + 3944) = v15 - 2;
  if (v15 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  return 1;
}

uint64_t sub_10000DE84(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 6) << 16 == 0x10000 && *(a2 + 8) == 4)
  {
    v4 = **(a1 + 3936);
    if ((*a1)(99, &v4, 4, 0, 0, *(a1 + 16)))
    {
      puts("i: set user_cal_aft_gain succeeded");
      return 1;
    }

    v3 = "e: set user_cal_aft_gain failed";
  }

  else
  {
    v3 = "e: Bad size/version for aftg";
  }

  puts(v3);
  return 0;
}

_WORD *sub_10000DF1C(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v7 = *(a2 + 4);
  if (v7 != 0x20000 && v7 != 0x10000)
  {
    return 0;
  }

  v8 = *(a1 + 3936);
  v11 = *v8;
  v9 = v8 + 1;
  v10 = v11;
  *(a1 + 3936) = v9;
  v12 = *(a1 + 3944);
  v13 = v12 >= 2;
  v14 = v12 - 2;
  *(a1 + 3944) = v14;
  if (!v13)
  {
    puts("e: data_sz underflow in get_value");
    v9 = *(a1 + 3936);
    v14 = *(a1 + 3944);
  }

  v17 = *v9;
  v15 = (v9 + 1);
  v16 = v17;
  *(a1 + 3936) = v15;
  v13 = v14 >= 8;
  v18 = v14 - 8;
  *(a1 + 3944) = v18;
  if (!v13)
  {
    puts("e: data_sz underflow in get_long_value");
    v15 = *(a1 + 3936);
    v18 = *(a1 + 3944);
  }

  v19 = HIWORD(v7);
  v20 = *v15;
  *(a1 + 3936) = v15 + 1;
  *(a1 + 3944) = v18 - 2;
  if (v18 < 2)
  {
    puts("e: data_sz underflow in get_value");
  }

  if (v19 == 2)
  {
    v21 = *(a1 + 3936);
    v22 = *v21;
    *(a1 + 3936) = v21 + 1;
    LODWORD(v21) = *(a1 + 3944);
    *(a1 + 3944) = v21 - 2;
    if (v21 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }
  }

  else
  {
    v22 = 0;
  }

  result = sub_1000082A0(a1, v20, v22);
  if (result)
  {
    v24 = (a1 + 3769);
    *(result + 5) = v19;
    *(result + 7) = a3;
    *(result + 18) = a4;
    result[4] = v20;
    if (v19 == 1)
    {
      v55 = 0;
      *(result + 19) = v10;
      *(result + 27) = v16;
      v25 = 39;
      *(result + 37) = v20;
      v26 = result;
      do
      {
        v27 = *(a1 + 3936);
        v28 = *v27;
        *(a1 + 3936) = v27 + 1;
        LODWORD(v27) = *(a1 + 3944);
        *(a1 + 3944) = v27 - 4;
        if (v27 < 4)
        {
          puts("e: data_sz underflow in get_value");
        }

        *(v26 + v25) = v28;
        v25 += 4;
      }

      while (v25 != 123);
      v51 = v26;
      v29 = 0;
      v30 = v26 + 123;
      do
      {
        v52 = v29;
        v31 = 0;
        v32 = 1;
        do
        {
          v33 = 0;
          v34 = v32;
          v35 = &v30[1386 * v31];
          do
          {
            v36 = 0;
            v37 = v35;
            do
            {
              for (i = 0; i != 42; i += 2)
              {
                v39 = *(a1 + 3936);
                v40 = *v39;
                *(a1 + 3936) = v39 + 1;
                LODWORD(v39) = *(a1 + 3944);
                *(a1 + 3944) = v39 - 2;
                if (v39 < 2)
                {
                  puts("e: data_sz underflow in get_value");
                }

                *&v37[i] = v40;
              }

              ++v36;
              v37 += 42;
            }

            while (v36 != 11);
            ++v33;
            v35 += 462;
          }

          while (v33 != 3);
          v32 = 0;
          v31 = 1;
        }

        while ((v34 & 1) != 0);
        v29 = v52 + 1;
        v30 += 2772;
      }

      while (v52 != 2);
      v55 = *(a1 + 3779);
      result = sub_10000E744(a1, v51[4], (a1 + 3747), &v55);
      *(a1 + 3779) = v55;
    }

    else
    {
      v54 = 0;
      *(result + 19) = v10;
      *(result + 27) = v16;
      *(result + 35) = v20;
      *(result + 37) = v22;
      v41 = *(a1 + 3936);
      v42 = *v41;
      *(result + 59) = v41[1];
      *(result + 43) = v42;
      v43 = v41[2];
      v44 = v41[3];
      v45 = v41[4];
      *(result + 123) = *(v41 + 20);
      *(result + 107) = v45;
      *(result + 91) = v44;
      *(result + 75) = v43;
      v46 = (*(a1 + 3936) + 84);
      *(a1 + 3936) = v46;
      v47 = *(a1 + 3944);
      *(a1 + 3944) = v47 - 84;
      v48 = result;
      if (v47 < 0x54)
      {
        puts("e: data_sz underflow in get_array");
        v46 = *(a1 + 3936);
      }

      memcpy(v48 + 127, v46, 0x56AuLL);
      *(a1 + 3936) += 1386;
      v49 = *(a1 + 3944);
      *(a1 + 3944) = v49 - 1386;
      if (v49 < 0x56A)
      {
        puts("e: data_sz underflow in get_array");
      }

      v54 = *v24;
      v50 = *(a1 + 3803);
      v53 = v50;
      result = sub_10000E744(a1, v48[4], (a1 + 3737), &v54);
      if (result)
      {
        result = sub_10000E744(a1, *(v48 + 37), (a1 + 3771), &v53);
        v50 = v53;
      }

      *v24 = v54;
      *(a1 + 3803) = v50;
    }
  }

  return result;
}