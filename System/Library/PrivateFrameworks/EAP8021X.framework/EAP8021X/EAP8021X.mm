_DWORD *LinkAddresses_create()
{
  v23 = *MEMORY[0x277D85DE8];
  size = 0;
  *v21 = xmmword_249F2EF90;
  v22 = 3;
  if (sysctl(v21, 6u, 0, &size, 0, 0) < 0)
  {
    v13 = *MEMORY[0x277D85DF8];
    v14 = __error();
    v15 = strerror(*v14);
    fprintf(v13, "sysctl() size failed: %s", v15);
    return 0;
  }

  else
  {
    v0 = malloc_type_malloc(size, 0x9A4345B0uLL);
    if (sysctl(v21, 6u, v0, &size, 0, 0) < 0)
    {
      v16 = *MEMORY[0x277D85DF8];
      v17 = __error();
      v18 = strerror(*v17);
      fprintf(v16, "sysctl() failed: %s", v18);
    }

    else
    {
      v1 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
      if (v1)
      {
        v2 = v1;
        if (size)
        {
          v3 = 0;
          v4 = 0;
          v5 = 0;
          v6 = 10;
          do
          {
            v7 = &v0[v3];
            if (v0[v3 + 3] == 14)
            {
              if (v4 == v6)
              {
                v6 = 2 * v4;
                v8 = malloc_type_realloc(v2, 16 * v4, 0x2004093837F09uLL);
                if (!v8)
                {
                  goto LABEL_25;
                }

                v2 = v8;
              }

              v9 = malloc_type_malloc(*(v7 + 112), 0xD706BF12uLL);
              if (v9)
              {
                v10 = v9;
                memmove(v9, v7 + 56, *(v7 + 112));
                *(v2 + v4++) = v10;
              }
            }

            v5 += *v7;
            v3 = v5;
          }

          while (size > v5);
          if (!v4)
          {
            goto LABEL_21;
          }

          if (v4 < v6)
          {
            v2 = reallocf(v2, 8 * v4);
          }

          if (!v2)
          {
LABEL_25:
            v12 = 0;
            goto LABEL_23;
          }

          v11 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
          v12 = v11;
          if (v11)
          {
            *v11 = v2;
            v11[2] = v4;
          }

          else
          {
            free(v2);
          }

          goto LABEL_23;
        }

LABEL_21:
        free(v2);
      }
    }

    v12 = 0;
    if (v0)
    {
LABEL_23:
      free(v0);
    }
  }

  return v12;
}

uint64_t LinkAddresses_lookup(uint64_t **a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 2);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v4;
  for (i = *a1; ; ++i)
  {
    v8 = *i;
    v9 = *(*i + 5);
    if (!strncmp((*i + 8), __s, *(*i + 5)) && v6 == v9)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

void my_CFRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

char *EAPOLClientAttach(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, mach_port_t *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  bytes = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *previous = 0;
  *a5 = 0;
  *a4 = 0;
  if (a2)
  {
    v9 = bootstrap_look_up2();
    if (v9)
    {
      v10 = v9;
      LogHandle = EAPLogGetLogHandle();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v12))
      {
        *buf = 136315138;
        v42 = mach_error_string(v10);
        _os_log_impl(&dword_249EFB000, LogHandle, v12, "eapolcontroller_server_port(): %s", buf, 0xCu);
      }

      v13 = 6;
      goto LABEL_7;
    }

    v14 = malloc_type_malloc(0x48uLL, 0x10A00406C56F2BBuLL);
    *v14 = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
    *(v14 + 8) = 0;
    __strlcpy_chk();
    *(&v36 + 1) = v14;
    *buf = 0;
    v15 = MEMORY[0x277D85F48];
    v16 = 1;
    if (!mach_port_allocate(*MEMORY[0x277D85F48], 1u, buf) && !mach_port_insert_right(*v15, *buf, *buf, 0x14u))
    {
      v21 = _SC_CFMachPortCreateWithPort();
      if (v21)
      {
        *v14 = v21;
        Port = CFMachPortGetPort(v21);
        v23 = mach_port_request_notification(*v15, Port, 70, 1u, Port, 0x15u, &previous[1]);
        if (!v23)
        {
          v28 = eapolcontroller_client_attach(0, (v14 + 40), Port, v14 + 4, &bytes, &v39, previous);
          if (v28)
          {
            v29 = v28;
            v19 = v28 == 268435459;
            v30 = EAPLogGetLogHandle();
            v31 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = mach_error_string(v29);
              *buf = 136315394;
              v42 = v14 + 40;
              v43 = 2080;
              v44 = v32;
              _os_log_impl(&dword_249EFB000, v30, v31, "eapolcontroller_client_attach(%s): %s", buf, 0x16u);
            }

            v33 = 6;
          }

          else
          {
            if (!bytes || (*a4 = my_CFPropertyListCreateWithBytePtrAndLength(bytes, v39), MEMORY[0x24C207D30](*v15, bytes, v39), *a4))
            {
              if (!previous[0])
              {
                *(v14 + 3) = a2;
                *(v14 + 4) = a3;
                *(v14 + 1) = CFMachPortCreateRunLoopSource(0, *v14, 0);
                Current = CFRunLoopGetCurrent();
                CFRunLoopAddSource(Current, *(v14 + 1), *MEMORY[0x277CBF058]);
                return v14;
              }

              v19 = 0;
              goto LABEL_17;
            }

            v19 = 0;
            v33 = 12;
          }

          previous[0] = v33;
LABEL_17:
          EAPOLClientInvalidate(v14, v19);
          my_CFRelease(a4);
          free(v14);
          v13 = previous[0];
          goto LABEL_18;
        }

        v24 = v23;
        v25 = EAPLogGetLogHandle();
        v26 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = mach_error_string(v24);
          *buf = 136315138;
          v42 = v27;
          _os_log_impl(&dword_249EFB000, v25, v26, "mach_port_request_notification(): %s", buf, 0xCu);
        }

LABEL_16:
        v19 = 1;
        goto LABEL_17;
      }

      v16 = 0;
    }

    if (*buf)
    {
      mach_port_mod_refs(*v15, *buf, 1u, -1);
      if ((v16 & 1) == 0)
      {
        mach_port_deallocate(*v15, *buf);
      }
    }

    *v14 = 0;
    v17 = EAPLogGetLogHandle();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v17, v18, "_EAPOLClientCFMachPortCreate failed", buf, 2u);
    }

    previous[0] = *__error();
    goto LABEL_16;
  }

  v13 = 22;
LABEL_7:
  my_CFRelease(a4);
LABEL_18:
  v14 = 0;
  *a5 = v13;
  return v14;
}

uint64_t eapolcontroller_client_attach(int a1, __int128 *a2, int a3, _DWORD *a4, void *a5, _DWORD *a6, _DWORD *a7)
{
  *&reply_port[16] = 0u;
  *reply_port = 0u;
  *&reply_port[20] = 1;
  *&reply_port[24] = a3;
  v21 = 1114112;
  v22 = *MEMORY[0x277D85EF8];
  v12 = a2[1];
  v23 = *a2;
  v24 = v12;
  v13 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v13;
  v19 = -2147478253;
  *&reply_port[12] = 0x55FC00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v19);
    v14 = *&reply_port[8];
  }

  else
  {
    v14 = v13;
  }

  v15 = mach_msg(&v19, 3, 0x50u, 0x50u, v14, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v15)
    {
      if (*&reply_port[16] == 71)
      {
        v16 = 4294966988;
      }

      else if (*&reply_port[16] == 22112)
      {
        if (v19 < 0)
        {
          v16 = 4294966996;
          if (*&reply_port[20] == 2 && *reply_port == 72 && !*&reply_port[4] && HIWORD(v21) << 16 == 1114112 && BYTE3(v23) == 1)
          {
            v17 = DWORD1(v23);
            if (DWORD1(v23) == v24)
            {
              v16 = 0;
              *a4 = *&reply_port[24];
              *a5 = v22;
              *a6 = v17;
              *a7 = DWORD1(v24);
              return v16;
            }
          }
        }

        else if (*reply_port == 36)
        {
          v16 = 4294966996;
          if (*&reply_port[28])
          {
            if (*&reply_port[4])
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = *&reply_port[28];
            }
          }
        }

        else
        {
          v16 = 4294966996;
        }
      }

      else
      {
        v16 = 4294966995;
      }

      mach_msg_destroy(&v19);
      return v16;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  return v16;
}

const __CFData *my_CFPropertyListCreateWithBytePtrAndLength(UInt8 *bytes, int a2)
{
  result = CFDataCreateWithBytesNoCopy(0, bytes, a2, *MEMORY[0x277CBED00]);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateWithData(0, result, 0, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t EAPClientModuleAddBuiltinModule(uint64_t (*a1)(const char *))
{
  if ((EAPClientModuleInit_first & 1) == 0)
  {
    EAPClientModuleInit_first = 1;
  }

  v2 = a1("eap_type");
  if (!v2)
  {
    return 5;
  }

  v3 = v2;
  v4 = a1("eap_name");
  if (!v4)
  {
    return 5;
  }

  v5 = v4;
  v6 = v3();
  if ((v6 - 256) < 0xFFFFFF01)
  {
    return 1;
  }

  v8 = v6;
  v9 = v5();
  if (!v9)
  {
    return 5;
  }

  v10 = v9;
  v11 = &S_head;
  while (1)
  {
    v11 = *v11;
    if (!v11)
    {
      break;
    }

    if (*v11[3] == v8)
    {
      return 2;
    }
  }

  v13 = malloc_type_malloc(0x90uLL, 0x10D0040BC8CE643uLL);
  if (!v13)
  {
    return 3;
  }

  v14 = v13;
  *(v13 + 4) = 0u;
  *(v13 + 8) = 0u;
  *(v13 + 116) = 0u;
  *(v13 + 100) = 0u;
  *(v13 + 84) = 0u;
  *(v13 + 68) = 0u;
  *(v13 + 52) = 0u;
  *(v13 + 36) = 0u;
  *(v13 + 20) = 0u;
  *v13 = v8;
  *(v13 + 1) = v10;
  *(v13 + 2) = a1("introspect");
  v14[4] = a1("init");
  v14[3] = a1("version");
  v14[5] = a1("free");
  v14[6] = a1("process");
  v14[7] = a1("free_packet");
  v14[8] = a1("failure_string");
  v14[9] = a1("session_key");
  v14[10] = a1("server_key");
  v14[11] = a1("master_session_key_copy_bytes");
  v14[12] = a1("require_properties");
  v14[13] = a1("publish_properties");
  v14[14] = a1("packet_dump");
  v14[15] = a1("user_name");
  v14[16] = a1("copy_identity");
  v14[17] = a1("copy_packet_description");
  if (v14[4] && (v15 = v14[3]) != 0 && v14[5] && v14[6] && v14[7])
  {
    if (v15() == 1)
    {
      v7 = EAPClientModuleAdd(v14);
      if (!v7)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 5;
  }

  free(v14);
  return v7;
}

uint64_t md5_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D17630;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t leap_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D17440;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t eaptls_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D17530;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t eapttls_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D17930;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t peap_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D177B0;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t eapfast_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D176C0;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t eapmschapv2_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D17320;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t eapgtc_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D178A0;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t eapsim_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D17A20;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

_UNKNOWN **EAPClientModuleLookup(int a1)
{
  result = &S_head;
  do
  {
    result = *result;
  }

  while (result && *result[3] != a1);
  return result;
}

uint64_t EAPClientModulePluginUserName(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 120);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t EAPSecIdentityHandleCreateSecIdentity(const __CFDictionary *a1, CFTypeRef *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (!a1)
  {
    v9 = 0;
    v57 = 0;
    *a2 = 0;
    goto LABEL_11;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(a1) == TypeID)
  {
    v57 = 0;
    *a2 = 0;
    Value = CFDictionaryGetValue(a1, @"IdentityHandleType");
    v6 = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == v6)
    {
      if (!CFEqual(Value, @"CertificateData") || (v7 = CFDictionaryGetValue(a1, @"IdentityHandleData"), v8 = CFDataGetTypeID(), !v7) || CFGetTypeID(v7) != v8 || (v9 = SecCertificateCreateWithData(0, v7), (v57 = v9) == 0))
      {
        v10 = 22;
LABEL_55:
        v48 = &v57;
LABEL_56:
        my_CFRelease(v48);
        return v10;
      }

LABEL_11:
      theArray = 0;
      v10 = EAPSecIdentityListCreate(&theArray);
      if (!v10)
      {
        v11 = theArray;
        Count = CFArrayGetCount(theArray);
        if (!*a2)
        {
          v13 = Count;
          if (Count >= 1)
          {
            certificateRef = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            v15 = ValueAtIndex;
            if (v9)
            {
              v10 = SecIdentityCopyCertificate(ValueAtIndex, &certificateRef);
              v16 = certificateRef;
              if (certificateRef)
              {
                v17 = 1;
                while (1)
                {
                  if (CFEqual(v9, v16))
                  {
                    CFRetain(v15);
                    *a2 = v15;
                  }

                  CFRelease(certificateRef);
                  v18 = *a2 || v13 <= v17;
                  if (v18)
                  {
                    break;
                  }

                  certificateRef = 0;
                  v15 = CFArrayGetValueAtIndex(v11, v17);
                  v10 = SecIdentityCopyCertificate(v15, &certificateRef);
                  v16 = certificateRef;
                  ++v17;
                  if (!certificateRef)
                  {
                    goto LABEL_24;
                  }
                }
              }

              else
              {
LABEL_24:
                LogHandle = EAPLogGetLogHandle();
                v20 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(LogHandle, v20))
                {
                  v21 = EAPSecurityErrorString(v10);
                  *buf = 136315394;
                  *&buf[4] = v21;
                  *&buf[12] = 1024;
                  *&buf[14] = v10;
                  _os_log_impl(&dword_249EFB000, LogHandle, v20, "SecIdentityCopyCertificate failed, %s (%d)", buf, 0x12u);
                }
              }
            }

            else
            {
              CFRetain(ValueAtIndex);
              v10 = 0;
              *a2 = v15;
            }
          }
        }

        CFRelease(v11);
      }

      goto LABEL_55;
    }

    v58 = 0;
    *a2 = 0;
    v27 = CFDictionaryGetValue(a1, @"TLSClientIdentityData");
    v28 = CFDataGetTypeID();
    if (v27 && CFGetTypeID(v27) == v28)
    {
      v29 = *MEMORY[0x277CDC568];
      *buf = *MEMORY[0x277CDC228];
      *&buf[8] = v29;
      *&buf[16] = *MEMORY[0x277CDC5F0];
      v30 = *MEMORY[0x277CBED28];
      certificateRef = *MEMORY[0x277CDC240];
      v64 = v30;
      v65 = v27;
      v31 = CFDictionaryCreate(0, buf, &certificateRef, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v59 = v31;
      if (!v31)
      {
        return 4294967188;
      }

      v10 = SecItemCopyMatching(v31, &v58);
      if (v10)
      {
        v32 = EAPLogGetLogHandle();
        v33 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v32, v33))
        {
LABEL_66:
          v48 = &v59;
          goto LABEL_56;
        }

        v34 = EAPSecurityErrorString(v10);
        *result = 136315394;
        *&result[4] = v34;
        v61 = 1024;
        v62 = v10;
        v35 = "SecItemCopyMatching failed, %s (%d)";
        v36 = v32;
        v37 = v33;
        v38 = 18;
      }

      else
      {
        if (isA_SecIdentity(v58))
        {
          *a2 = v58;
          goto LABEL_66;
        }

        v54 = EAPLogGetLogHandle();
        v55 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_66;
        }

        *result = 0;
        v35 = "Identity data with incorrect data type";
        v36 = v54;
        v37 = v55;
        v38 = 2;
      }

      _os_log_impl(&dword_249EFB000, v36, v37, v35, result, v38);
      goto LABEL_66;
    }

    v39 = EAPLogGetLogHandle();
    v40 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v39, v40))
    {
      *buf = 138412290;
      *&buf[4] = @"TLSClientIdentityData";
      _os_log_impl(&dword_249EFB000, v39, v40, "invalid data found in %@ property.", buf, 0xCu);
    }

    return 4294967246;
  }

  else
  {
    v22 = CFDataGetTypeID();
    if (CFGetTypeID(a1) == v22)
    {
      *a2 = 0;
      if (CFDataGetLength(a1) == 64)
      {
        certificateRef = 0;
        if (!EAPSecIdentityListCreate(&certificateRef))
        {
          BytePtr = CFDataGetBytePtr(a1);
          v42 = certificateRef;
          v43 = CFArrayGetCount(certificateRef);
          if (*a2 || (v44 = v43, v43 < 1))
          {
LABEL_51:
            CFRelease(v42);
            if (*a2)
            {
              return 0;
            }
          }

          else
          {
            v45 = 1;
            while (1)
            {
              *result = 0;
              v46 = CFArrayGetValueAtIndex(v42, v45 - 1);
              v47 = SecIdentityCopyCertificate(v46, result);
              if (v47)
              {
                break;
              }

              if (IdentityHandleMatchesCertificate(BytePtr, *result))
              {
                CFRetain(v46);
                *a2 = v46;
              }

              CFRelease(*result);
              if (!*a2)
              {
                v18 = v44 <= v45++;
                if (!v18)
                {
                  continue;
                }
              }

              goto LABEL_51;
            }

            v50 = v47;
            v51 = EAPLogGetLogHandle();
            v52 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = EAPSecurityErrorString(v50);
              *buf = 136315394;
              *&buf[4] = v53;
              *&buf[12] = 1024;
              *&buf[14] = v50;
              _os_log_impl(&dword_249EFB000, v51, v52, "SecIdentityCopyCertificate failed, %s (%d)", buf, 0x12u);
            }

            CFRelease(v42);
          }
        }
      }

      v23 = *MEMORY[0x277CDC568];
      *buf = *MEMORY[0x277CDC228];
      *&buf[8] = v23;
      v24 = *MEMORY[0x277CDC5D0];
      *&buf[16] = *MEMORY[0x277CDC5F0];
      v68 = v24;
      *result = 0;
      v25 = *MEMORY[0x277CBED28];
      certificateRef = *MEMORY[0x277CDC240];
      v64 = v25;
      v65 = a1;
      v66 = v25;
      *a2 = 0;
      v26 = CFDictionaryCreate(0, buf, &certificateRef, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v10 = SecItemCopyMatching(v26, result);
      CFRelease(v26);
      if (!v10)
      {
        *a2 = *result;
      }
    }

    else
    {
      return 22;
    }
  }

  return v10;
}

const void *EAPSecCertificateCopyUserNameString(uint64_t a1)
{
  v1 = EAPSecCertificateCopyAttributesDictionary(a1);
  v7 = v1;
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    while (1)
    {
      Value = CFDictionaryGetValue(v2, off_278FBDDB0[v3]);
      if (Value)
      {
        break;
      }

      if (++v3 == 3)
      {
        goto LABEL_5;
      }
    }

    v5 = Value;
    CFRetain(Value);
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  my_CFRelease(&v7);
  return v5;
}

__CFDictionary *EAPSecCertificateCopyAttributesDictionary(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = MEMORY[0x277CDBDD0];
  v4 = &qword_285D17400;
  do
  {
    v5 = *(v4 - 1);
    v6 = v3(a1);
    if (v6)
    {
      v7 = v6;
      if (CFEqual(v5, @"CommonName"))
      {
        v8 = CFArrayGetCount(v7) - 1;
      }

      else
      {
        v8 = 0;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
      CFDictionarySetValue(Mutable, v5, ValueAtIndex);
      CFRelease(v7);
    }

    v10 = *v4;
    v4 += 2;
    v3 = v10;
  }

  while (v10);
  if (!CFDictionaryGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

UInt8 *my_CFStringToCString(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  Length = CFStringGetLength(a1);
  if (v2 == -1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v7;
      v11.location = 0;
      v11.length = Length;
      result = S_copy_cstring(a1, v11, S_encodings[v8]);
      if (result)
      {
        break;
      }

      v7 = 1;
      v8 = 1;
    }

    while ((v9 & 1) == 0);
  }

  else
  {
    v5.location = 0;
    v5.length = Length;

    return S_copy_cstring(a1, v5, v2);
  }

  return result;
}

uint64_t EAPOLClientReportStatus(uint64_t a1, const void *a2)
{
  v14 = 0;
  v13 = 0;
  TypeID = CFDictionaryGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v11 = 22;
    goto LABEL_7;
  }

  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v14 = Data;
  if (!Data)
  {
    v11 = 12;
    goto LABEL_7;
  }

  v6 = Data;
  v7 = *(a1 + 16);
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v6);
  v10 = eapolcontroller_client_report_status(v7, BytePtr, Length, &v13);
  if (v10)
  {
    mach_error("eapolcontroller_client_report_status failed", v10);
    v11 = 6;
LABEL_7:
    v13 = v11;
  }

  my_CFRelease(&v14);
  return v13;
}

uint64_t eapolcontroller_client_report_status(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 1;
  v14 = a2;
  v15 = 16777472;
  v16 = a3;
  v17 = *MEMORY[0x277D85EF8];
  v18 = a3;
  reply_port = mig_get_reply_port();
  *&v12.msgh_bits = 2147489043;
  v12.msgh_remote_port = a1;
  v12.msgh_local_port = reply_port;
  *&v12.msgh_voucher_port = 0x55FF00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v12);
    msgh_local_port = v12.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&v12, 3, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(v12.msgh_local_port);
      return v9;
    }

    if (v12.msgh_id == 71)
    {
      v9 = 4294966988;
    }

    else if (v12.msgh_id == 22115)
    {
      if ((v12.msgh_bits & 0x80000000) == 0)
      {
        if (v12.msgh_size == 40)
        {
          if (!v12.msgh_remote_port)
          {
            v9 = HIDWORD(v14);
            if (!HIDWORD(v14))
            {
              *a4 = v15;
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (v12.msgh_size == 36)
        {
          if (v12.msgh_remote_port)
          {
            v10 = 1;
          }

          else
          {
            v10 = HIDWORD(v14) == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = HIDWORD(v14);
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v12);
    return v9;
  }

  mig_put_reply_port(v12.msgh_local_port);
  return v9;
}

void LinkAddresses_free(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 8) >= 1)
    {
      v3 = 0;
      do
      {
        free(*(*v2 + 8 * v3));
        *(*v2 + 8 * v3++) = 0;
      }

      while (v3 < *(v2 + 8));
    }

    free(*v2);
    free(v2);
  }

  *a1 = 0;
}

uint64_t EAPPacketValid(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Mutable = CFStringCreateMutable(0, 0);
    IsValid = EAPPacketIsValid(a1, a2, Mutable);
    if (Mutable)
    {
      SCPrint();
      CFRelease(Mutable);
    }

    return IsValid;
  }

  else
  {

    return EAPPacketIsValid(a1, a2, 0);
  }
}

char *EAPPacketCreate(char *a1, signed int a2, char a3, char a4, int a5, void *__src, int a7, signed int *a8)
{
  if (a5)
  {
    v14 = a7 + 5;
  }

  else
  {
    v14 = 4;
  }

  if (!a1 || (v15 = a1, v14 > a2))
  {
    v15 = malloc_type_malloc(v14, 0x100004052888210uLL);
  }

  *v15 = a3;
  v15[1] = a4;
  *(v15 + 1) = bswap32(v14) >> 16;
  if (a5)
  {
    v15[4] = a5;
    if (!__src)
    {
      goto LABEL_13;
    }

    v16 = 5;
  }

  else
  {
    if (!__src)
    {
      goto LABEL_13;
    }

    v16 = 4;
  }

  memcpy(&v15[v16], __src, a7);
LABEL_13:
  if (a8)
  {
    *a8 = v14;
  }

  return v15;
}

uint64_t EAPClientModulePluginInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 24) + 32);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t eaptls_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = malloc_type_malloc(0x128uLL, 0x10E0040D8CCA30BuLL);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v5[17] = 0u;
  *(v5 + 36) = 0;
  v5[5] = 0u;
  *(v5 + 108) = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSCertificateIsRequired", 1);
  *(v5 + 30) = *(a1 + 16);
  *(v5 + 270) = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSEnableSessionResumption", 1);
  memoryIOInit(v5 + 10, (v5 + 8), (v5 + 40));
  *a1 = v5;
  *a3 = 0;
  return 0;
}

uint64_t EAPSecIdentityHandleCreateSecIdentityTrustChain(const __CFDictionary *a1, __CFArray **a2)
{
  v5 = 0;
  *a2 = 0;
  SecIdentity = EAPSecIdentityHandleCreateSecIdentity(a1, &v5);
  if (!SecIdentity)
  {
    SecIdentity = EAPSecIdentityCreateTrustChain(v5, a2);
  }

  my_CFRelease(&v5);
  return SecIdentity;
}

uint64_t EAPSecPolicyCopy(uint64_t *a1)
{
  EAP = SecPolicyCreateEAP();
  *a1 = EAP;
  if (EAP)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL my_CFDictionaryGetBooleanValue(const __CFDictionary *a1, const void *a2, int a3)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    TypeID = CFBooleanGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        a3 = CFBooleanGetValue(Value);
      }
    }
  }

  return a3 != 0;
}

double memoryIOInit(void *a1, _OWORD *a2, _OWORD *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a1[1] = a2;
  a1[2] = a3;
  return result;
}

double memoryIOClearBuffers(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*v2)
    {
      free(*v2);
    }

    result = 0.0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (*v4)
    {
      free(*v4);
    }

    result = 0.0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return result;
}

double memoryBufferClear(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

SSLContext *EAPTLSMemIOContextCreate(const __CFDictionary *a1, int a2, const void *a3, const char *a4, OSStatus *a5)
{
  if (!a1)
  {
    v15 = kTLSProtocol12;
    v13 = kTLSProtocol1;
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(a1, @"TLSMinimumVersion");
  v11 = CFDictionaryGetValue(a1, @"TLSMaximumVersion");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && !CFEqual(Value, @"1.0"))
  {
    if (CFEqual(Value, @"1.1"))
    {
      v13 = kTLSProtocol11;
      goto LABEL_6;
    }

    if (CFEqual(Value, @"1.2"))
    {
      v13 = kTLSProtocol12;
      goto LABEL_6;
    }

    LogHandle = EAPLogGetLogHandle();
    v26 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v26))
    {
      *v29 = 0;
      _os_log_impl(&dword_249EFB000, LogHandle, v26, "invalid minimum TLS version", v29, 2u);
    }
  }

  v13 = kTLSProtocol1;
LABEL_6:
  v14 = CFStringGetTypeID();
  if (v11 && CFGetTypeID(v11) == v14)
  {
    if (CFEqual(v11, @"1.0"))
    {
      v15 = kTLSProtocol1;
      goto LABEL_21;
    }

    if (CFEqual(v11, @"1.1"))
    {
      v15 = kTLSProtocol11;
      goto LABEL_21;
    }

    if (!CFEqual(v11, @"1.2"))
    {
      v16 = EAPLogGetLogHandle();
      v17 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v16, v17, "invalid maximum TLS version", buf, 2u);
      }
    }
  }

  v15 = kTLSProtocol12;
LABEL_21:
  if (v13 > v15)
  {
    v18 = EAPLogGetLogHandle();
    v19 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v18, v19))
    {
      v27[0] = 0;
      _os_log_impl(&dword_249EFB000, v18, v19, "minimum TLS version cannot be higher than maximum TLS version", v27, 2u);
    }

    v13 = v15;
  }

LABEL_25:
  *a5 = 0;
  v20 = SSLCreateContext(0, (a2 ^ 1), kSSLStreamType);
  v21 = SSLSetIOFuncs(v20, EAPSSLMemoryIORead, EAPSSLMemoryIOWrite);
  if (v21 || (v21 = SSLSetProtocolVersionMin(v20, v13)) != 0 || (v21 = SSLSetProtocolVersionMax(v20, v15)) != 0 || (v21 = SSLSetConnection(v20, a3)) != 0 || a4 && (v24 = strlen(a4), (v21 = SSLSetPeerDomainName(v20, a4, v24 + 1)) != 0) || (SSLSetSessionOption(v20, kSSLSessionOptionSendOneByteRecord, 0), (a2 & 1) == 0) && (v21 = SSLSetSessionOption(v20, kSSLSessionOptionBreakOnServerAuth, 1u)) != 0)
  {
    v22 = v21;
    if (v20)
    {
      CFRelease(v20);
    }

    v20 = 0;
    *a5 = v22;
  }

  else
  {
    SSLSetSessionCacheTimeout();
  }

  return v20;
}

uint64_t EAPClientModulePluginProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a1 + 24) + 48);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 2;
  }
}

uint64_t eaptls_process(uint64_t updated, unsigned __int8 *a2, uint64_t *a3, int *a4, _DWORD *a5)
{
  v98 = *MEMORY[0x277D85DE8];
  v7 = *updated;
  *a4 = 0;
  *a5 = 0;
  *a3 = 0;
  v8 = *a2;
  if (v8 == 4)
  {
    v27 = 2;
LABEL_27:
    *(v7 + 26) = v27;
    goto LABEL_28;
  }

  if (v8 != 3)
  {
    if (v8 != 1)
    {
      goto LABEL_28;
    }

    v12 = *updated;
    Length = EAPPacketGetLength(a2);
    state = kSSLIdle;
    if (Length <= 5)
    {
      LogHandle = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v15))
      {
LABEL_9:
        v20 = 0;
LABEL_22:
        *a3 = v20;
        goto LABEL_28;
      }

      *buf = 67109376;
      *v97 = Length;
      *&v97[4] = 2048;
      *&v97[6] = 6;
      v16 = "eaptls_request: length %d < %ld";
      goto LABEL_7;
    }

    v28 = EAPTLSSessionGetState(*v12, &state);
    if (v28)
    {
      v29 = v28;
      v30 = EAPLogGetLogHandle();
      v31 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = EAPSSLErrorString(v29);
        *buf = 136315394;
        *v97 = v32;
        *&v97[8] = 2048;
        *&v97[10] = v29;
        _os_log_impl(&dword_249EFB000, v30, v31, "EAPTLSSessionGetState failed, %s (%ld)", buf, 0x16u);
      }

      v20 = 0;
      *(v12 + 26) = 2;
      *(v12 + 31) = v29;
      goto LABEL_22;
    }

    v38 = a2 + 6;
    v39 = Length - 6;
    v40 = a2[5];
    if ((v40 & 0x20) != 0)
    {
      if (state != kSSLHandshake || !v12[5] || *(v12 + 19) != a2[1])
      {
        state = kSSLIdle;
LABEL_46:
        v43 = *updated;
        EAPTLSSessionFreeContext(**updated);
        my_CFRelease(v43 + 34);
        memoryIOClearBuffers((v43 + 10));
        if (*(v43 + 108) == 1 && !v43[14])
        {
          v70 = EAPTLSCopyIdentityTrustChain(*(updated + 96), *(updated + 80), v43 + 14);
          if (v70)
          {
            v59 = v70;
            v71 = EAPLogGetLogHandle();
            v72 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = EAPSSLErrorString(v59);
              *buf = 136315394;
              *v97 = v73;
              *&v97[8] = 2048;
              *&v97[10] = v59;
              _os_log_impl(&dword_249EFB000, v71, v72, "failed to find client cert/identity, %s (%ld)", buf, 0x16u);
            }

            goto LABEL_106;
          }
        }

        v95 = 0;
        v44 = *updated;
        if (*(*updated + 108) != 1)
        {
          goto LABEL_51;
        }

        v46 = (v44 + 14);
        v45 = v44[14];
        if (v45)
        {
          goto LABEL_132;
        }

        v74 = EAPTLSCopyIdentityTrustChain(*(updated + 96), *(updated + 80), v44 + 14);
        v95 = v74;
        if (v74)
        {
          v75 = v74;
          v76 = EAPLogGetLogHandle();
          v77 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = EAPSSLErrorString(v75);
            *buf = 136315394;
            *v97 = v78;
            *&v97[8] = 2048;
            *&v97[10] = v75;
            _os_log_impl(&dword_249EFB000, v76, v77, "failed to find client cert/identity, %s (%ld)", buf, 0x16u);
          }

          goto LABEL_74;
        }

        if ((*(v44 + 108) & 1) == 0)
        {
LABEL_51:
          Context = EAPTLSSessionCreateContext(*(updated + 80), 13, v44 + 10, v44[14], &v95);
          v48 = Context;
          if (Context && !v95)
          {
            if (*(v44 + 270) != 1 || (v49 = *(updated + 24)) == 0 || (v95 = EAPTLSSessionSetPeerID(Context, v49, *(updated + 32))) == 0)
            {
              *v44 = v48;
LABEL_77:
              *(v43 + 26) = 0;
              *(v43 + 31) = 0;
              *(v43 + 32) = 0;
              *(v43 + 70) = 0;
              *(v43 + 271) = 0;
              v43[9] = 0xFFFFFFFF00000000;
              *(v43 + 280) = 0;
              v60 = EAPTLSSessionHandshake(*v12);
              if (v60 == -9803)
              {
                v61 = a2[1];
                goto LABEL_87;
              }

              v62 = v60;
              v63 = EAPLogGetLogHandle();
              v64 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v63, v64))
              {
                v65 = EAPSSLErrorString(v62);
                *buf = 136315394;
                *v97 = v65;
                *&v97[8] = 1024;
                *&v97[10] = v62;
                _os_log_impl(&dword_249EFB000, v63, v64, "EAPTLSSessionHandshake failed, %s (%d)", buf, 0x12u);
              }

              v20 = 0;
              *(v12 + 31) = v62;
LABEL_107:
              *(v12 + 26) = 2;
              goto LABEL_22;
            }

            v50 = EAPLogGetLogHandle();
            v51 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = EAPSSLErrorString(v95);
              *buf = 136315394;
              *v97 = v52;
              *&v97[8] = 2048;
              *&v97[10] = v95;
              _os_log_impl(&dword_249EFB000, v50, v51, "EAPTLSSessionSetPeerID failed, %s (%ld)", buf, 0x16u);
            }

            goto LABEL_73;
          }

          v56 = EAPLogGetLogHandle();
          v57 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = EAPSSLErrorString(v95);
            *buf = 136315394;
            *v97 = v58;
            *&v97[8] = 2048;
            *&v97[10] = v95;
            _os_log_impl(&dword_249EFB000, v56, v57, "EAPTLSSessionCreateContext failed, %s (%ld)", buf, 0x16u);
          }

          if (v48)
          {
LABEL_73:
            EAPTLSSessionFreeContext(v48);
          }

LABEL_74:
          LODWORD(v59) = v95;
          if (!v95)
          {
            goto LABEL_77;
          }

LABEL_106:
          v20 = 0;
          *(v12 + 31) = v59;
          goto LABEL_107;
        }

        v45 = *v46;
        if (*v46)
        {
LABEL_132:
          if (CFArrayGetCount(v45))
          {
            goto LABEL_51;
          }
        }

        LODWORD(v59) = -50;
        goto LABEL_106;
      }

      v41 = 0;
      v42 = "Start";
    }

    else if (Length == 6)
    {
      v41 = 0;
      v42 = "Ack";
    }

    else
    {
      if ((a2[5] & 0x80) != 0)
      {
        if (Length <= 9)
        {
          LogHandle = EAPLogGetLogHandle();
          v15 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(LogHandle, v15))
          {
            goto LABEL_9;
          }

          *buf = 67109376;
          *v97 = Length;
          *&v97[4] = 2048;
          *&v97[6] = 10;
          v16 = "packet too short %d < %ld";
LABEL_7:
          v17 = LogHandle;
          v18 = v15;
          v19 = 18;
LABEL_8:
          _os_log_impl(&dword_249EFB000, v17, v18, v16, buf, v19);
          goto LABEL_9;
        }

        MessageLength = EAPTLSLengthIncludedPacketGetMessageLength(a2);
        v39 = MessageLength;
        if (MessageLength > 0x20000)
        {
          v80 = EAPLogGetLogHandle();
          v81 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v80, v81))
          {
            *buf = 67109376;
            *v97 = v39;
            *&v97[4] = 1024;
            *&v97[6] = 0x20000;
            _os_log_impl(&dword_249EFB000, v80, v81, "received message too large, %d > %d", buf, 0xEu);
          }

          v20 = 0;
          goto LABEL_107;
        }

        v38 = a2 + 10;
        v53 = Length - 10;
        if (MessageLength)
        {
          v42 = "Start";
          v41 = 1;
        }

        else
        {
          v41 = 0;
          v42 = "Ack";
        }

        goto LABEL_61;
      }

      v42 = "Start";
      v41 = 1;
    }

    v53 = v39;
LABEL_61:
    if ((state - 1) < 2)
    {
      if (*(v12 + 26))
      {
        *(v12 + 26) = 2;
        v54 = EAPLogGetLogHandle();
        v55 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_9;
        }

        *buf = 0;
        v16 = "unable to process the received EAP-TLS message";
        goto LABEL_69;
      }

      if (!v12[5])
      {
LABEL_111:
        if ((v41 & 1) == 0)
        {
          v83 = v42;
          v84 = EAPLogGetLogHandle();
          v85 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v84, v85))
          {
            goto LABEL_9;
          }

          *buf = 136315138;
          *v97 = v83;
          v16 = "unexpected %s frame";
          v17 = v84;
          v18 = v85;
          v19 = 12;
          goto LABEL_8;
        }

        v61 = a2[1];
        if (*(v12 + 19) == v61)
        {
          if ((a2[5] & 0x40) != 0)
          {
LABEL_114:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            goto LABEL_88;
          }

LABEL_122:
          v20 = eaptls_handshake(updated, v61, a4);
          goto LABEL_89;
        }

        if (!v12[1])
        {
          v86 = v38;
          v87 = v39;
          v88 = v53;
          memoryBufferAllocate((v12 + 1), v87);
          v53 = v88;
          v38 = v86;
        }

        v89 = v53;
        if (!memoryBufferAddData((v12 + 1), v38, v53))
        {
          v90 = EAPLogGetLogHandle();
          v91 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v90, v91))
          {
            goto LABEL_9;
          }

          *buf = 67109120;
          *v97 = v89;
          v16 = "fragment too large %d";
          v17 = v90;
          v18 = v91;
          v19 = 8;
          goto LABEL_8;
        }

        if (memoryBufferIsComplete((v12 + 1)))
        {
          v61 = a2[1];
          goto LABEL_122;
        }

        if ((a2[5] & 0x40) != 0)
        {
          v61 = a2[1];
          goto LABEL_114;
        }

        v54 = EAPLogGetLogHandle();
        v55 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_9;
        }

        *buf = 0;
        v16 = "expecting more data but more fragments bit is not set, ignoring";
LABEL_69:
        v17 = v54;
        v18 = v55;
        v19 = 2;
        goto LABEL_8;
      }

      v61 = a2[1];
      if (*(v12 + 19) != v61)
      {
        v66 = v12[7] + *(v12 + 18);
        if (v66 < v12[6])
        {
          v12[7] = v66;
          goto LABEL_87;
        }

        v92 = v42;
        v93 = v38;
        v82 = v53;
        memoryBufferClear((v12 + 5));
        v42 = v92;
        v38 = v93;
        v53 = v82;
        *(v12 + 18) = 0;
        goto LABEL_111;
      }

LABEL_87:
      v67 = *(v12 + 30);
      v68 = v12 + 5;
      v69 = v12 + 9;
LABEL_88:
      v20 = EAPTLSPacketCreate(2, 13, v61, v67, v68, v69);
      goto LABEL_89;
    }

    if (state)
    {
      v20 = 0;
LABEL_89:
      *(v12 + 19) = a2[1];
      goto LABEL_22;
    }

    if ((v40 & 0x20) == 0)
    {
      v54 = EAPLogGetLogHandle();
      v55 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v16 = "ignoring non EAP-TLS start frame";
      goto LABEL_69;
    }

    goto LABEL_46;
  }

  if ((*(v7 + 141) & 1) == 0)
  {
    *buf = 0;
    v21 = EAPTLSSessionGetState(*v7, buf);
    v22 = *buf;
    v23 = EAPLogGetLogHandle();
    v24 = _SC_syslog_os_log_mapping();
    v25 = os_log_type_enabled(v23, v24);
    if (v21)
    {
      v26 = 0;
    }

    else
    {
      v26 = v22 == 2;
    }

    if (v26)
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v23, v24, "TLS handshake is complete", buf, 2u);
      }

      eaptls_update_tls_session_data(v7);
    }

    else if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v23, v24, "TLS handshake is not complete yet", buf, 2u);
    }
  }

  v27 = *(v7 + 141);
  if (v27 == 1)
  {
    goto LABEL_27;
  }

  v36 = EAPLogGetLogHandle();
  v37 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v36, v37))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v36, v37, "TLS handshake is not complete, discarding EAP-Success packet", buf, 2u);
  }

LABEL_28:
  if (*(v7 + 26) == 2)
  {
    v33 = *(v7 + 31);
    if (v33)
    {
      *a5 = v33;
      v34 = 1001;
    }

    else if (v7[34])
    {
      v34 = 1;
    }

    else
    {
      v34 = 17;
    }

    *a4 = v34;
  }

  return *(v7 + 26);
}

uint64_t EAPSSLMemoryIOWrite(uint64_t a1, const void *a2, size_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = *a3;
    if (*v5)
    {
      v8 = malloc_type_realloc(*v5, *(v5 + 8) + v7, 0x2F00A515uLL);
      *v5 = v8;
      memmove(&v8[*(v5 + 8)], a2, v7);
      *(v5 + 8) += v7;
      v9 = "additional ";
    }

    else
    {
      v12 = malloc_type_malloc(v7, 0xE2C671A0uLL);
      *(v5 + 8) = v7;
      *(v5 + 16) = 0;
      *v5 = v12;
      memmove(v12, a2, v7);
      v9 = &unk_249F2FF71;
    }

    if (*a1 == 1)
    {
      Mutable = CFStringCreateMutable(0, 0);
      print_data_cfstr(Mutable, a2, v7);
      LogHandle = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v15))
      {
        v17 = 136315650;
        v18 = v9;
        v19 = 1024;
        v20 = v7;
        v21 = 2112;
        v22 = Mutable;
        _os_log_impl(&dword_249EFB000, LogHandle, v15, "Wrote %s%d bytes:\n%@", &v17, 0x1Cu);
      }

      CFRelease(Mutable);
    }
  }

  else
  {
    if (*a1 == 1)
    {
      v10 = EAPLogGetLogHandle();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v10, v11))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_249EFB000, v10, v11, "Write not initialized", &v17, 2u);
      }
    }

    *a3 = 0;
  }

  return 0;
}

uint64_t EAPSSLMemoryIORead(uint64_t a1, void *__dst, size_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (*v5)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || v7 == v6)
    {
      *a3 = 0;
      if (*a1 == 1)
      {
        LogHandle = EAPLogGetLogHandle();
        v11 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v11))
        {
          LOWORD(v23[0]) = 0;
          _os_log_impl(&dword_249EFB000, LogHandle, v11, "Read would block", v23, 2u);
        }
      }

      return 4294957493;
    }

    else
    {
      v16 = v7 - v6;
      if (*a3 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = *a3;
      }

      memmove(__dst, (*v5 + v6), v17);
      v18 = *(v5 + 8);
      v19 = *(v5 + 16) + v17;
      *(v5 + 16) = v19;
      if (v19 == v18)
      {
        free(*v5);
        *v5 = 0u;
        *(v5 + 16) = 0u;
      }

      *a3 = v17;
      if (*a1 == 1)
      {
        Mutable = CFStringCreateMutable(0, 0);
        print_data_cfstr(Mutable, __dst, v17);
        v21 = EAPLogGetLogHandle();
        v22 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v21, v22))
        {
          v23[0] = 67109378;
          v23[1] = v17;
          v24 = 2112;
          v25 = Mutable;
          _os_log_impl(&dword_249EFB000, v21, v22, "Read %d bytes:\n%@", v23, 0x12u);
        }

        CFRelease(Mutable);
      }

      return 0;
    }
  }

  else
  {
    if (*a1 == 1)
    {
      v13 = EAPLogGetLogHandle();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        LOWORD(v23[0]) = 0;
        _os_log_impl(&dword_249EFB000, v13, v14, "Read not initialized", v23, 2u);
      }
    }

    result = 0;
    *a3 = 0;
  }

  return result;
}

_BYTE *EAPTLSPacketCreate2(char a1, char a2, char a3, int a4, void *a5, _DWORD *a6, int a7)
{
  if (!a5 || !*a5)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v13 = 6;
    if (!a6)
    {
      goto LABEL_29;
    }

LABEL_28:
    *a6 = v26;
    goto LABEL_29;
  }

  v11 = a5[1];
  v12 = a5[2];
  v13 = 6;
  v14 = v11 > v12;
  v15 = v11 - v12;
  if (!v14)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    if (!a6)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = a7 ^ 1;
  if (v12)
  {
    v16 = 1;
  }

  v17 = v16 ^ 1;
  if (v16)
  {
    v13 = 6;
  }

  else
  {
    v13 = 10;
  }

  v18 = a4 - v13;
  if (v12)
  {
    v19 = 1;
  }

  else
  {
    v19 = a7;
  }

  v20 = v19 ^ 1 | v17;
  v21 = v19 == 0;
  if (v19)
  {
    v22 = v13;
  }

  else
  {
    v22 = 10;
  }

  if (v21)
  {
    v23 = a4 - 10;
  }

  else
  {
    v23 = a4 - v13;
  }

  v24 = v15 > v18;
  if (v15 > v18)
  {
    v25 = v20;
  }

  else
  {
    v25 = v17;
  }

  if (v15 <= v18)
  {
    v26 = v15;
  }

  else
  {
    v13 = v22;
    v26 = v23;
  }

  if (a6)
  {
    goto LABEL_28;
  }

LABEL_29:
  v27 = v26 + v13;
  v28 = malloc_type_malloc(v26 + v13, 0xF523DA67uLL);
  v29 = v28;
  if (v28)
  {
    *v28 = a1;
    v28[1] = a3;
    EAPPacketSetLength(v28, v27);
    v29[4] = a2;
    v29[5] = 0;
    if (v26)
    {
      v30 = v29 + 6;
      if (v24)
      {
        v29[5] = 64;
        v31 = -64;
        if (!v25)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v31 = 0x80;
        if (!v25)
        {
LABEL_38:
          memmove(v30, (*a5 + a5[2]), v26);
          return v29;
        }
      }

      v29[5] = v31;
      *(v29 + 6) = bswap32(*(a5 + 2));
      v30 = v29 + 10;
      goto LABEL_38;
    }
  }

  return v29;
}

uint64_t EAPClientModulePluginFreePacket(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 24) + 56);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

void eaptls_free_packet(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t EAPClientModulePluginPublishProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 104);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0;
  }
}

__CFDictionary *eaptls_publish_props(uint64_t *a1)
{
  v13 = 0;
  v12 = 0;
  v1 = *a1;
  v2 = *(*a1 + 272);
  if (v2)
  {
    CFDataArray = EAPSecCertificateArrayCreateCFDataArray(v2);
    v13 = CFDataArray;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = Mutable;
    if (CFDataArray)
    {
      CFDictionarySetValue(Mutable, @"TLSServerCertificateChain", CFDataArray);
      my_CFRelease(&v13);
    }
  }

  else
  {
    v5 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v6 = MEMORY[0x277CBED28];
  if (!*(v1 + 280))
  {
    v6 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v5, @"TLSSessionWasResumed", *v6);
  EAPTLSSessionGetNegotiatedCipher(*v1, &v12);
  if (v12)
  {
    v11 = v12;
    v7 = CFNumberCreate(0, kCFNumberIntType, &v11);
    CFDictionarySetValue(v5, @"TLSNegotiatedCipher", v7);
    CFRelease(v7);
  }

  v8 = *(v1 + 288);
  if (v8)
  {
    CFDictionarySetValue(v5, @"TLSNegotiatedProtocolVersion", v8);
  }

  if (*(v1 + 128) == 3 && (*(v1 + 140) & 1) == 0)
  {
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, (v1 + 136));
    CFDictionarySetValue(v5, @"TLSTrustClientStatus", v9);
    CFRelease(v9);
  }

  return v5;
}

uint64_t EAPClientModulePluginSessionKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 24) + 72);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t eaptls_session_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 141))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 142;
}

uint64_t EAPSSLCopyPeerCertificates(SSLContext *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  trust = 0;
  *a2 = 0;
  v2 = SSLCopyPeerTrust(a1, &trust);
  if (v2)
  {
    v3 = v2;
    LogHandle = EAPLogGetLogHandle();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v5))
    {
      *buf = 0;
      v6 = "SSLCopyPeerTrust returned NULL";
      v7 = LogHandle;
      v8 = v5;
      v9 = 2;
LABEL_7:
      _os_log_impl(&dword_249EFB000, v7, v8, v6, buf, v9);
    }
  }

  else
  {
    v3 = SecTrustCopyInputCertificates();
    if (v3)
    {
      v10 = EAPLogGetLogHandle();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = EAPSecurityErrorString(v3);
        *buf = 136315394;
        v16 = v12;
        v17 = 1024;
        v18 = v3;
        v6 = "SecTrustCopyInputCertificates failed, %s (%d)";
        v7 = v10;
        v8 = v11;
        v9 = 18;
        goto LABEL_7;
      }
    }
  }

  my_CFRelease(&trust);
  return v3;
}

_BYTE *eaptls_verify_server(uint64_t *a1, const char *a2, int a3, _DWORD *a4)
{
  v6 = a2;
  v21 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (a3)
  {
    SecTrust = EAPTLSSessionGetSecTrust(*v8, a2);
  }

  else
  {
    SecTrust = 0;
  }

  v10 = EAPTLSVerifyServerCertificateChain(a1[10], *(v8 + 272), a3, SecTrust, (v8 + 132));
  *(v8 + 136) = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  LogHandle = EAPLogGetLogHandle();
  v12 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v12))
  {
    v15 = *(v8 + 132);
    v14 = *(v8 + 136);
    v18[0] = 67109376;
    v18[1] = v14;
    v19 = 1024;
    v20 = v15;
    _os_log_impl(&dword_249EFB000, LogHandle, v12, "server certificate not trusted status %d %d", v18, 0xEu);
  }

  v16 = *(v8 + 136);
  if (v16 == 3)
  {
    result = 0;
    *(v8 + 128) = 3;
    *a4 = 3;
  }

  else
  {
    if (!v16)
    {
LABEL_9:
      result = 0;
      *(v8 + 140) = 1;
      return result;
    }

    *a4 = v16;
    *(v8 + 124) = *(v8 + 132);
    *(v8 + 104) = 2;
    EAPTLSSessionClose(*v8, v13);
    return EAPTLSPacketCreate(2, 13, v6, *(v8 + 120), (v8 + 40), (v8 + 72));
  }

  return result;
}

uint64_t EAPTLSVerifyServerCertificateChain(const __CFDictionary *a1, CFArrayRef theArray, int a3, __SecTrust *a4, _DWORD *a5)
{
  v86 = *MEMORY[0x277D85DE8];
  v75 = 0;
  v76 = 0;
  v74 = 0;
  value = 0;
  v81 = 0;
  v78 = 0;
  trust = 0;
  v77 = 0;
  if (!theArray || !CFArrayGetCount(theArray))
  {
    LODWORD(EAP) = 0;
    v13 = 8;
LABEL_37:
    my_CFRelease(&trust);
    v35 = 0;
    v36 = 0;
    goto LABEL_38;
  }

  CFArrayGetValueAtIndex(theArray, 0);
  v10 = CFDictionaryGetValue(a1, @"TLSTrustedServerNames");
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = CFDictionaryGetValue(a1, @"TLSTrustedServerCommonNames");
    if (!v11)
    {
      goto LABEL_24;
    }
  }

  TypeID = CFArrayGetTypeID();
  if (CFGetTypeID(v11) != TypeID)
  {
    LogHandle = EAPLogGetLogHandle();
    v21 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v21))
    {
      *buf = 0;
      v22 = "TLSTrustedServerNames is not an array";
LABEL_19:
      _os_log_impl(&dword_249EFB000, LogHandle, v21, v22, buf, 2u);
    }

LABEL_20:
    v11 = 0;
    goto LABEL_24;
  }

  Count = CFArrayGetCount(v11);
  if (!Count)
  {
    LogHandle = EAPLogGetLogHandle();
    v21 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v21))
    {
      *buf = 0;
      v22 = "TLSTrustedServerNames is empty";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v16 = Count;
  if (Count >= 1)
  {
    v17 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v17);
      v19 = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v19)
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_24;
      }
    }

    v23 = EAPLogGetLogHandle();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v23, v24, "TLSTrustedServerNames contains a non-string value", buf, 2u);
    }

    v11 = 0;
  }

LABEL_24:
  EAP = SecPolicyCreateEAP();
  v81 = EAP;
  if (!EAP)
  {
    goto LABEL_36;
  }

  if (a3 && a4)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
    v78 = Mutable;
    Revocation = SecPolicyCreateRevocation(0x18uLL);
    v77 = Revocation;
    if (!Revocation)
    {
      LODWORD(EAP) = 0;
      goto LABEL_36;
    }

    v27 = Revocation;
    CFArrayAppendValue(Mutable, EAP);
    CFArrayAppendValue(Mutable, v27);
    v28 = SecTrustSetPolicies(a4, Mutable);
    if (v28)
    {
      LODWORD(EAP) = v28;
      v29 = EAPLogGetLogHandle();
      v30 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = EAPSecurityErrorString(EAP);
        *buf = 136315394;
        v83 = v31;
        v84 = 1024;
        LODWORD(v85) = EAP;
        v32 = "SecTrustSetPolicies failed, %s (%d)";
LABEL_34:
        _os_log_impl(&dword_249EFB000, v29, v30, v32, buf, 0x12u);
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    trust = CFRetain(a4);
    v53 = EAPLogGetLogHandle();
    v54 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v53, v54))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v53, v54, "TLS 1.3 SecTrust object is created sucessfully", buf, 2u);
    }
  }

  else
  {
    v33 = SecTrustCreateWithCertificates(theArray, EAP, &trust);
    if (v33)
    {
      LODWORD(EAP) = v33;
      v29 = EAPLogGetLogHandle();
      v30 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v29, v30))
      {
        v34 = EAPSecurityErrorString(EAP);
        *buf = 136315394;
        v83 = v34;
        v84 = 1024;
        LODWORD(v85) = EAP;
        v32 = "SecTrustCreateWithCertificates failed, %s (%d)";
        goto LABEL_34;
      }

LABEL_36:
      v13 = 1001;
      goto LABEL_37;
    }
  }

  if (a1 && (v55 = CFDictionaryGetValue(a1, @"TLSTrustedCertificates"), v56 = CFArrayGetTypeID(), v55) && CFGetTypeID(v55) == v56)
  {
    SecCertificateArray = EAPCFDataArrayCreateSecCertificateArray(v55);
    value = SecCertificateArray;
    if (SecCertificateArray)
    {
      v58 = SecTrustSetAnchorCertificates(trust, SecCertificateArray);
      if (v58)
      {
        LODWORD(EAP) = v58;
        v29 = EAPLogGetLogHandle();
        v30 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_36;
        }

        v59 = EAPSecurityErrorString(EAP);
        *buf = 136315394;
        v83 = v59;
        v84 = 1024;
        LODWORD(v85) = EAP;
        v32 = " SecTrustSetAnchorCertificates failed, %s (%d)";
        goto LABEL_34;
      }

      v60 = 1;
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    v60 = 0;
    value = 0;
  }

  if (v11)
  {
    v36 = 1;
  }

  else
  {
    v36 = v60;
  }

  v61 = CFDictionaryGetValue(a1, @"TLSTrustExceptionsDomain");
  v62 = CFDictionaryGetValue(a1, @"TLSTrustExceptionsID");
  v63 = CFStringGetTypeID();
  if (v61 && CFGetTypeID(v61) == v63 && (v64 = CFStringGetTypeID(), v62) && (CFGetTypeID(v62) != v64 ? (v65 = 1) : (v65 = v36), (v65 & 1) == 0))
  {
    v35 = 1;
    if (CFStringCompare(v61, @"WirelessSSID", 1uLL))
    {
      v66 = 0;
    }

    else
    {
      v66 = EAPSecCertificateCopySHA1DigestString();
      v35 = EAPTLSSecTrustApplyExceptionsBinding(trust, v61, v62, v66);
    }
  }

  else
  {
    v66 = 0;
    v35 = 0;
  }

  v13 = 0;
  LODWORD(EAP) = 0;
  v76 = v66;
LABEL_38:
  my_CFRelease(&v81);
  my_CFRelease(&v77);
  my_CFRelease(&v78);
  my_CFRelease(&value);
  v37 = trust;
  v75 = trust;
  if (!trust)
  {
    goto LABEL_67;
  }

  v38 = EAPLogGetLogHandle();
  v39 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = "not applied";
    if (v35)
    {
      v40 = "applied";
    }

    *buf = 136315394;
    v83 = v40;
    v84 = 2080;
    v85 = "applied";
    _os_log_impl(&dword_249EFB000, v38, v39, "trust exception %s, trust settings %s", buf, 0x16u);
  }

  LODWORD(EAP) = EAPTLSSecTrustEvaluate(v37, &v74);
  v41 = EAPLogGetLogHandle();
  if (EAP)
  {
    v42 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = EAPSecurityErrorString(EAP);
      *buf = 136315394;
      v83 = v43;
      v84 = 1024;
      LODWORD(v85) = EAP;
      _os_log_impl(&dword_249EFB000, v41, v42, "SecTrustEvaluate failed, %s (%d)", buf, 0x12u);
    }

    goto LABEL_66;
  }

  v44 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v41, v44))
  {
    *buf = 67109120;
    LODWORD(v83) = v74;
    _os_log_impl(&dword_249EFB000, v41, v44, "trust evaluation result: %d", buf, 8u);
  }

  if (a3)
  {
    value = 0;
    v45 = SecTrustCopyResult(v37);
    v81 = v45;
    if (!v45)
    {
      goto LABEL_60;
    }

    v46 = v45;
    v47 = EAPLogGetLogHandle();
    v48 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v47, v48))
    {
      *buf = 138412290;
      v83 = v46;
      _os_log_impl(&dword_249EFB000, v47, v48, "trust result: %@", buf, 0xCu);
    }

    if (CFDictionaryGetValueIfPresent(v46, *MEMORY[0x277CDC598], &value))
    {
      v49 = CFBooleanGetValue(value);
      my_CFRelease(&v81);
      if (v49)
      {
        goto LABEL_54;
      }
    }

    else
    {
LABEL_60:
      my_CFRelease(&v81);
    }

    v50 = EAPLogGetLogHandle();
    v51 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v50, v51))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v50, v51, "revocation status check is incomplete", buf, 2u);
    }

    v74 = 7;
    goto LABEL_65;
  }

LABEL_54:
  switch(v74)
  {
    case 5:
      goto LABEL_64;
    case 4:
LABEL_58:
      if (v36)
      {
        goto LABEL_59;
      }

LABEL_64:
      if (v36)
      {
        break;
      }

      v67 = CFDictionaryGetValue(a1, @"TLSUserTrustProceedCertificateChain");
      if (v67)
      {
        v68 = EAPCFDataArrayCreateSecCertificateArray(v67);
        v81 = v68;
        if (v68 && CFEqual(v68, theArray))
        {
          if (my_CFDictionaryGetBooleanValue(a1, @"TLSSaveTrustExceptions", 0))
          {
            v69 = v76;
            if (v76)
            {
              v70 = CFDictionaryGetValue(a1, @"TLSTrustExceptionsDomain");
              v71 = CFDictionaryGetValue(a1, @"TLSTrustExceptionsID");
              EAPTLSSecTrustSaveExceptionsBinding(v37, v70, v71, v69);
              v72 = EAPLogGetLogHandle();
              v73 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v72, v73))
              {
                *buf = 138412546;
                v83 = v70;
                v84 = 2112;
                v85 = v71;
                _os_log_impl(&dword_249EFB000, v72, v73, "saved trust exception for domain: %@, identifier: %@", buf, 0x16u);
              }
            }
          }

          goto LABEL_101;
        }
      }

      else
      {
        v81 = 0;
      }

      if (!v35)
      {
        v13 = 3;
        goto LABEL_103;
      }

LABEL_101:
      v13 = 0;
LABEL_103:
      my_CFRelease(&v81);
LABEL_104:
      LODWORD(EAP) = 0;
      if (!a5)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    case 1:
      if (v35)
      {
LABEL_59:
        v13 = 0;
        goto LABEL_104;
      }

      goto LABEL_58;
  }

LABEL_65:
  LODWORD(EAP) = -9807;
LABEL_66:
  v13 = 1001;
LABEL_67:
  if (a5)
  {
LABEL_68:
    *a5 = EAP;
  }

LABEL_69:
  my_CFRelease(&v75);
  my_CFRelease(&v76);
  return v13;
}

CFMutableArrayRef EAPCFDataArrayCreateSecCertificateArray(const __CFArray *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  v23 = Mutable;
  if (Count >= 1)
  {
    v4 = 0;
    v20 = *MEMORY[0x277CDC230];
    v21 = *MEMORY[0x277CDC228];
    v5 = *MEMORY[0x277CDC568];
    v6 = *MEMORY[0x277CBED28];
    v7 = *MEMORY[0x277CDC5F0];
    while (1)
    {
      v22 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      TypeID = CFDataGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != TypeID)
      {
        break;
      }

      v10 = SecCertificateCreateWithData(0, ValueAtIndex);
      v22 = v10;
      if (!v10)
      {
        result = 0;
        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v25 = v11;
        CFDictionaryAddValue(v11, v21, v20);
        CFDictionaryAddValue(v11, v5, v6);
        CFDictionaryAddValue(v11, v7, ValueAtIndex);
        if (!v11)
        {
          break;
        }

        v12 = SecItemCopyMatching(v11, &result);
        if (v12)
        {
          v13 = v12;
          LogHandle = EAPLogGetLogHandle();
          v15 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v15))
          {
            v16 = EAPSecurityErrorString(v13);
            *buf = 136315394;
            v27 = v16;
            v28 = 1024;
            v29 = v13;
            _os_log_impl(&dword_249EFB000, LogHandle, v15, "SecItemCopyMatching failed, %s (%d)", buf, 0x12u);
          }
        }

        else if (!isA_SecCertificate(result))
        {
          v17 = EAPLogGetLogHandle();
          v18 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v17, v18))
          {
            *buf = 0;
            _os_log_impl(&dword_249EFB000, v17, v18, "Certificate data with incorrect data type", buf, 2u);
          }

          my_CFRelease(&result);
        }

        my_CFRelease(&v25);
        v10 = result;
        v22 = result;
        if (!result)
        {
          break;
        }
      }

      CFArrayAppendValue(Mutable, v10);
      my_CFRelease(&v22);
      if (Count == ++v4)
      {
        return Mutable;
      }
    }

    my_CFRelease(&v23);
    return 0;
  }

  return Mutable;
}

uint64_t EAPTLSComputeKeyData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = SSLInternalClientRandom();
  if (v5)
  {
    v6 = v5;
    LogHandle = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v8))
    {
      *buf = 136315138;
      v13 = EAPSecurityErrorString(v6);
      _os_log_impl(&dword_249EFB000, LogHandle, v8, "SSLInternalClientRandom failed, %s", buf, 0xCu);
    }
  }

  else
  {
    v9 = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 134218240;
      v13 = 96;
      v14 = 2048;
      v15 = 64;
      _os_log_impl(&dword_249EFB000, v9, v10, "buffer overflow %ld >= %ld", buf, 0x16u);
    }

    return 4294957479;
  }

  return v6;
}

__CFArray *EAPSecCertificateArrayCreateCFDataArray(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v9 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v6 = isA_SecCertificate(ValueAtIndex);
      if (v6)
      {
        v7 = SecCertificateCopyData(v6);
        v9 = v7;
        if (v7)
        {
          CFArrayAppendValue(Mutable, v7);
          my_CFRelease(&v9);
        }
      }
    }
  }

  return Mutable;
}

const void *isA_SecCertificate(const void *a1)
{
  TypeID = SecCertificateGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

uint64_t EAPOLClientForceRenew(uint64_t a1)
{
  v3 = 0;
  v1 = eapolcontroller_client_force_renew(*(a1 + 16), &v3);
  if (!v1)
  {
    return v3;
  }

  mach_error("eapolcontroller_client_force_renew failed", v1);
  return 6;
}

uint64_t eapolcontroller_client_force_renew(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x560000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 22116)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

uint64_t EAPOLClientHandleMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 20) == 70)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      *v9 = 0;
      _os_log_impl(&dword_249EFB000, LogHandle, v6, "EAPOLController server died", v9, 2u);
    }

    EAPOLClientInvalidate(a4, 0);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return (*(a4 + 24))(a4, v7, *(a4 + 32));
}

uint64_t EAPOLClientGetConfig(uint64_t a1, const void **a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  bytes = 0;
  *a2 = 0;
  v4 = eapolcontroller_client_getconfig(*(a1 + 16), &bytes, &v11 + 1, &v11);
  if (v4)
  {
    v5 = v4;
    LogHandle = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v7))
    {
      v8 = mach_error_string(v5);
      *buf = 136315394;
      v14 = a1 + 40;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_249EFB000, LogHandle, v7, "eapolcontroller_client_getconfig(%s): %s", buf, 0x16u);
    }

    v9 = 6;
    goto LABEL_5;
  }

  if (bytes)
  {
    *a2 = my_CFPropertyListCreateWithBytePtrAndLength(bytes, SHIDWORD(v11));
    MEMORY[0x24C207D30](*MEMORY[0x277D85F48], bytes, HIDWORD(v11));
    if (!*a2)
    {
      v9 = 12;
LABEL_5:
      LODWORD(v11) = v9;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    return 0;
  }

LABEL_9:
  my_CFRelease(a2);
  return v11;
}

uint64_t eapolcontroller_client_getconfig(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x55FE00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 22114)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t EAPClientModulePluginFree(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 24) + 40);
  if (v2)
  {
    return v2(a2);
  }

  return result;
}

void eaptls_free(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    EAPTLSSessionFreeContext(*v2);
    *v2 = 0;
    my_CFRelease((v2 + 112));
    my_CFRelease((v2 + 272));
    memoryIOClearBuffers(v2 + 80);
    free(v2);
    *a1 = 0;
  }
}

unsigned int **EAPOLClientDetach(unsigned int **result)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = eapolcontroller_client_detach(v3, &v9);
        if (v4)
        {
          v5 = v4;
          LogHandle = EAPLogGetLogHandle();
          v7 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v7))
          {
            v8 = mach_error_string(v5);
            *buf = 136315394;
            v11 = v2 + 10;
            v12 = 2080;
            v13 = v8;
            _os_log_impl(&dword_249EFB000, LogHandle, v7, "eapolcontroller_client_detach(%s): %s", buf, 0x16u);
          }

          v9 = 6;
        }
      }

      EAPOLClientInvalidate(v2, 0);
      free(v2);
      *v1 = 0;
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t eapolcontroller_client_detach(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x55FD00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 22113)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

void EAPOLClientInvalidate(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = MEMORY[0x277D85F48];
  if (v3)
  {
    Port = CFMachPortGetPort(v3);
    CFMachPortInvalidate(*a1);
    mach_port_mod_refs(*v4, Port, 1u, -1);
    if (a2)
    {
      mach_port_deallocate(*v4, Port);
    }

    my_CFRelease(a1);
  }

  if (*(a1 + 8))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, *(a1 + 8), *MEMORY[0x277CBF058]);
    my_CFRelease((a1 + 8));
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    mach_port_deallocate(*v4, v8);
    *(a1 + 16) = 0;
  }
}

uint64_t EAPSecKeychainPasswordItemCopy(uint64_t a1, void *a2, void *a3)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC120];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v4;
  keys[2] = *MEMORY[0x277CDC558];
  v9 = 0;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = a2;
  values[2] = *MEMORY[0x277CBED28];
  v5 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &v9);
  CFRelease(v5);
  v7 = v9;
  if (v6)
  {
    v7 = 0;
  }

  *a3 = v7;
  return v6;
}

uint64_t eapfast_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v4 = malloc_type_malloc(0x8308uLL, 0x10F0040B76A0E04uLL);
  bzero(v4, 0x8308uLL);
  *(v4 + 116) = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSCertificateIsRequired", 0);
  *(v4 + 32) = *(a1 + 16);
  BooleanValue = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSEnableSessionResumption", 1);
  *(v4 + 33416) = BooleanValue;
  if (!BooleanValue)
  {
    goto LABEL_10;
  }

  if (!*(a1 + 24))
  {
    v6 = 8;
    goto LABEL_6;
  }

  v6 = *(a1 + 32) + 8;
  if (v6 < 0x11)
  {
LABEL_6:
    v7 = v4 + 4179;
    goto LABEL_7;
  }

  v7 = malloc_type_malloc(v6, 0xD4AD614FuLL);
LABEL_7:
  v4[4178] = v7;
  *v7 = 0x545341462D504145;
  v8 = *(a1 + 24);
  if (v8)
  {
    memcpy((v4[4178] + 8), v8, *(a1 + 32));
  }

  *(v4 + 8362) = v6;
LABEL_10:
  v9 = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"EAPFASTUsePAC", 0);
  *(v4 + 33417) = v9;
  if (v9)
  {
    *(v4 + 33418) = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"EAPFASTProvisionPAC", 0);
    *(v4 + 33419) = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"EAPFASTProvisionPACAnonymously", 0);
  }

  memoryIOInit(v4 + 11, v4 + 1, v4 + 3);
  *a1 = v4;
  *(v4 + 28) = 0;
  *(v4 + 16638) = 0;
  *(v4 + 33406) = 0;
  v4[4140] = 0;
  *(v4 + 37) = 0;
  v4[10] = 0xFFFFFFFF00000000;
  *(v4 + 10) = 0;
  *(v4 + 132) = 0;
  *(v4 + 33452) = 0;
  v4[17] = 0;
  *(v4 + 144) = 0;
  *(v4 + 8366) = 0;
  *(v4 + 33468) = 0;
  return 0;
}

uint64_t eapfast_process(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, int *a4, _DWORD *a5)
{
  v126 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  *a4 = 0;
  *a5 = 0;
  *a3 = 0;
  v8 = *a2;
  if (v8 == 4)
  {
    if (*(v7 + 148) != 2 && (*(v7 + 33466) & 1) != 0)
    {
      goto LABEL_148;
    }

    v26 = 2;
LABEL_15:
    *(v7 + 112) = v26;
    goto LABEL_148;
  }

  if (v8 != 3)
  {
    if (v8 != 1)
    {
      goto LABEL_148;
    }

    v12 = *a1;
    Length = EAPPacketGetLength(a2);
    state = kSSLIdle;
    if (Length <= 5)
    {
      LogHandle = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v20))
      {
LABEL_9:
        v25 = 0;
LABEL_147:
        *a3 = v25;
        goto LABEL_148;
      }

      *buf = 67109376;
      *v125 = Length;
      *&v125[4] = 2048;
      *&v125[6] = 6;
      v21 = "length %d < %ld";
      goto LABEL_7;
    }

    if (*v12)
    {
      v27 = SSLGetSessionState(*v12, &state);
      if (v27)
      {
        v28 = v27;
        v29 = EAPLogGetLogHandle();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = EAPSSLErrorString(v28);
          *buf = 136315394;
          *v125 = v31;
          *&v125[8] = 2048;
          *&v125[10] = v28;
          _os_log_impl(&dword_249EFB000, v29, v30, "SSLGetSessionState failed, %s (%ld)", buf, 0x16u);
        }

        v25 = 0;
        *(v12 + 112) = 2;
        *(v12 + 136) = v28;
        goto LABEL_147;
      }
    }

    v32 = a2 + 6;
    v33 = Length - 6;
    v34 = a2[5];
    if ((v34 & 0x20) != 0)
    {
      if (state != kSSLHandshake || !*(v12 + 48) || *(v12 + 84) != a2[1])
      {
        state = kSSLIdle;
LABEL_29:
        v37 = *a1;
        v38 = *a1 + 0x8000;
        v121 = 0;
        v117 = v38;
        if (v33 >= 5 && *v32 == 1024 && *(v32 + 1))
        {
          v39 = v33 - 4;
          v112 = __rev16(*(v32 + 1));
          if (v39 >= v112)
          {
            v44 = v32 + 4;
          }

          else
          {
            v40 = EAPLogGetLogHandle();
            v41 = _SC_syslog_os_log_mapping();
            log = v40;
            v42 = v40;
            v43 = v41;
            if (os_log_type_enabled(v42, v41))
            {
              *buf = 67109376;
              *v125 = v112;
              *&v125[4] = 2048;
              *&v125[6] = v39;
              _os_log_impl(&dword_249EFB000, log, v43, "EAP-FAST: GetAuthorityID %d > %ld, ignoring", buf, 0x12u);
            }

            v112 = 0;
            v44 = 0;
            v38 = v117;
          }
        }

        else
        {
          v112 = 0;
          v44 = 0;
        }

        *(v38 + 496) = 0;
        if (*v37)
        {
          CFRelease(*v37);
          *v37 = 0;
        }

        my_CFRelease((v37 + 33408));
        loga = (v117 + 688);
        my_CFRelease((v117 + 688));
        memoryIOClearBuffers(v37 + 88);
        v45 = EAPTLSMemIOContextCreate(a1[10], 0, (v37 + 88), 0, &v121);
        if (!v45)
        {
          v68 = EAPLogGetLogHandle();
          v69 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = EAPSSLErrorString(v121);
            *buf = 136315394;
            *v125 = v70;
            *&v125[8] = 2048;
            *&v125[10] = v121;
            _os_log_impl(&dword_249EFB000, v68, v69, "EAPTLSMemIOContextCreate failed, %s (%ld)", buf, 0x16u);
          }

          goto LABEL_133;
        }

        v46 = v45;
        if (*(v37 + 116) == 1)
        {
          context = v45;
          v47 = *(v37 + 120);
          if (!v47)
          {
            v121 = EAPTLSCopyIdentityTrustChain(a1[12], a1[10], (v37 + 120));
            if (v121)
            {
              v48 = EAPLogGetLogHandle();
              v49 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v48, v49))
              {
                v72 = EAPSSLErrorString(v121);
                *buf = 136315394;
                *v125 = v72;
                *&v125[8] = 2048;
                *&v125[10] = v121;
                v51 = "failed to find client cert/identity, %s (%ld)";
                goto LABEL_130;
              }

              goto LABEL_131;
            }

            v47 = *(v37 + 120);
          }

          v46 = context;
          v121 = SSLSetCertificate(context, v47);
          if (v121)
          {
            v48 = EAPLogGetLogHandle();
            v49 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = EAPSSLErrorString(v121);
              *buf = 136315394;
              *v125 = v50;
              *&v125[8] = 2048;
              *&v125[10] = v121;
              v51 = "SSLSetCertificate failed, %s (%ld)";
LABEL_130:
              _os_log_impl(&dword_249EFB000, v48, v49, v51, buf, 0x16u);
              goto LABEL_131;
            }

            goto LABEL_131;
          }
        }

        v57 = v117;
        if (*(v117 + 649) != 1 || !v44)
        {
LABEL_124:
          if (!loga->isa && *(v57 + 648) == 1)
          {
            v98 = *(v57 + 656);
            if (v98)
            {
              v99 = SSLSetPeerID(v46, v98, *(v57 + 680));
              v57 = v117;
              v121 = v99;
              if (v99)
              {
                context = v46;
                v48 = EAPLogGetLogHandle();
                v49 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v48, v49))
                {
                  v100 = EAPSSLErrorString(v121);
                  *buf = 136315394;
                  *v125 = v100;
                  *&v125[8] = 2048;
                  *&v125[10] = v121;
                  v51 = "SSLSetPeerID failed, %s (%ld)";
                  goto LABEL_130;
                }

                goto LABEL_131;
              }
            }
          }

          *v37 = v46;
          *(v37 + 112) = 0;
          *(v57 + 508) = 0;
          *(v57 + 638) = 0;
          *(v57 + 352) = 0;
          *(v37 + 148) = 0;
          *(v37 + 80) = 0xFFFFFFFF00000000;
          *(v37 + 40) = 0;
          *(v37 + 132) = 0;
          *(v57 + 684) = 0;
          *(v37 + 136) = 0;
          *(v37 + 144) = 0;
          *(v37 + 33464) = 0;
          *(v37 + 33468) = 0;
LABEL_133:
          if (v121)
          {
            v25 = 0;
            *(v12 + 136) = v121;
          }

          else
          {
            v101 = SSLHandshake(*v12);
            if (v101 == -9803)
            {
              v53 = a2[1];
              goto LABEL_137;
            }

            v102 = v101;
            v103 = EAPLogGetLogHandle();
            v104 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = EAPSSLErrorString(v102);
              *buf = 136315394;
              *v125 = v105;
              *&v125[8] = 1024;
              *&v125[10] = v102;
              _os_log_impl(&dword_249EFB000, v103, v104, "SSLHandshake failed, %s (%d)", buf, 0x12u);
            }

            v25 = 0;
            *(v12 + 136) = v102;
          }

          *(v12 + 112) = 2;
          goto LABEL_147;
        }

        context = v46;
        v58 = a1[5];
        v111 = *(a1 + 12);
        v59 = pac_list_copy();
        v122 = v59;
        if (!v59 || (v60 = v59, pac = pac_list_find_pac(v59, v44, v112, v58, v111), pac == -1))
        {
          my_CFRelease(&v122);
          goto LABEL_73;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v60, pac);
        *ciphers = 0;
        Value = CFDictionaryGetValue(ValueAtIndex, @"PACOpaque");
        TypeID = CFDataGetTypeID();
        if (Value && CFGetTypeID(Value) == TypeID)
        {
          v65 = CFDictionaryGetValue(ValueAtIndex, @"PACKey");
          v66 = CFDataGetTypeID();
          if (v65 && CFGetTypeID(v65) == v66)
          {
            Copy = CFRetain(ValueAtIndex);
            goto LABEL_115;
          }

          v88 = CFDictionaryGetValue(ValueAtIndex, @"PACKeyKeychainItemID");
          v89 = CFStringGetTypeID();
          if (v88)
          {
            if (CFGetTypeID(v88) == v89)
            {
              v90 = EAPSecKeychainPasswordItemCopy(0, v88, ciphers);
              if (!v90)
              {
                MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex);
                CFDictionarySetValue(MutableCopy, @"PACKey", *ciphers);
                Copy = CFDictionaryCreateCopy(0, MutableCopy);
                CFRelease(MutableCopy);
LABEL_115:
                my_CFRelease(ciphers);
                my_CFRelease(&v122);
                v120 = Copy;
                if (Copy)
                {
                  v95 = CFDictionaryGetValue(Copy, @"PACOpaque");
                  CFDataGetBytePtr(v95);
                  CFDataGetLength(v95);
                  v121 = SSLInternalSetSessionTicket();
                  if (v121)
                  {
                    my_CFRelease(&v120);
                    v48 = EAPLogGetLogHandle();
                    v49 = _SC_syslog_os_log_mapping();
                    if (os_log_type_enabled(v48, v49))
                    {
                      v96 = EAPSSLErrorString(v121);
                      *buf = 136315394;
                      *v125 = v96;
                      *&v125[8] = 2048;
                      *&v125[10] = v121;
                      v51 = "SSLInternalSetSessionTicket failed, %s (%ld)";
                      goto LABEL_130;
                    }

                    goto LABEL_131;
                  }

                  v121 = SSLInternalSetMasterSecretFunction();
                  if (v121)
                  {
                    my_CFRelease(&v120);
                    v48 = EAPLogGetLogHandle();
                    v49 = _SC_syslog_os_log_mapping();
                    if (os_log_type_enabled(v48, v49))
                    {
                      v97 = EAPSSLErrorString(v121);
                      *buf = 136315394;
                      *v125 = v97;
                      *&v125[8] = 2048;
                      *&v125[10] = v121;
                      v51 = "SSLInternalSetMasterSecretFunction failed, %s (%ld)";
                      goto LABEL_130;
                    }

                    goto LABEL_131;
                  }

                  v46 = context;
                  loga->isa = v120;
LABEL_123:
                  v57 = v117;
                  goto LABEL_124;
                }

LABEL_73:
                v57 = v117;
                v46 = context;
                if (*(v117 + 651) != 1)
                {
                  goto LABEL_124;
                }

                ciphers[0] = 52;
                v121 = SSLSetEnabledCiphers(context, ciphers, 1uLL);
                if (v121)
                {
                  v48 = EAPLogGetLogHandle();
                  v49 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v48, v49))
                  {
                    v71 = EAPSSLErrorString(v121);
                    *buf = 136315394;
                    *v125 = v71;
                    *&v125[8] = 2048;
                    *&v125[10] = v121;
                    v51 = "SSLSetEnabledCiphers failed, %s (%ld)";
                    goto LABEL_130;
                  }

LABEL_131:
                  CFRelease(context);
                  goto LABEL_133;
                }

                goto LABEL_123;
              }

              v91 = v90;
              v92 = EAPLogGetLogHandle();
              v93 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v92, v93))
              {
                v94 = EAPSSLErrorString(v91);
                *buf = 136315394;
                *v125 = v94;
                *&v125[8] = 1024;
                *&v125[10] = v91;
                _os_log_impl(&dword_249EFB000, v92, v93, "EAP-FAST: EAPSecKeychainPasswordItemCopy failed, %s (%d)\n", buf, 0x12u);
              }
            }
          }
        }

        Copy = 0;
        goto LABEL_115;
      }

      v35 = 0;
      v36 = "Start";
    }

    else if (Length == 6)
    {
      v35 = 0;
      v36 = "Ack";
    }

    else
    {
      if ((a2[5] & 0x80) != 0)
      {
        if (Length <= 9)
        {
          LogHandle = EAPLogGetLogHandle();
          v20 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(LogHandle, v20))
          {
            goto LABEL_9;
          }

          *buf = 67109376;
          *v125 = Length;
          *&v125[4] = 2048;
          *&v125[6] = 10;
          v21 = "packet too short %d < %ld";
LABEL_7:
          v22 = LogHandle;
          v23 = v20;
          v24 = 18;
LABEL_8:
          _os_log_impl(&dword_249EFB000, v22, v23, v21, buf, v24);
          goto LABEL_9;
        }

        MessageLength = EAPTLSLengthIncludedPacketGetMessageLength(a2);
        if (MessageLength > 0x20000)
        {
          v73 = MessageLength;
          v74 = EAPLogGetLogHandle();
          v75 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v74, v75))
          {
            goto LABEL_9;
          }

          *buf = 67109376;
          *v125 = v73;
          *&v125[4] = 1024;
          *&v125[6] = 0x20000;
          v21 = "received message too large, %d > %d";
          v22 = v74;
          v23 = v75;
          v24 = 14;
          goto LABEL_8;
        }

        v32 = a2 + 10;
        v33 = Length - 10;
        if (MessageLength)
        {
          v36 = "Start";
          v35 = 1;
        }

        else
        {
          v35 = 0;
          v36 = "Ack";
        }

        goto LABEL_48;
      }

      v36 = "Start";
      v35 = 1;
    }

    MessageLength = v33;
LABEL_48:
    if ((state - 1) < 2)
    {
      if (*(v12 + 48))
      {
        v53 = a2[1];
        if (*(v12 + 84) == v53)
        {
LABEL_137:
          v85 = *(v12 + 128);
          v86 = (v12 + 48);
          v87 = (v12 + 80);
          goto LABEL_138;
        }

        v54 = *(v12 + 64) + *(v12 + 80);
        if (v54 < *(v12 + 56))
        {
          *(v12 + 64) = v54;
          goto LABEL_137;
        }

        v118 = MessageLength;
        logb = v32;
        v76 = v36;
        memoryBufferClear(v12 + 48);
        v36 = v76;
        MessageLength = v118;
        v32 = logb;
        *(v12 + 80) = 0;
      }

      if ((v35 & 1) == 0)
      {
        v77 = v36;
        v78 = EAPLogGetLogHandle();
        v79 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v78, v79))
        {
          goto LABEL_9;
        }

        *buf = 136315138;
        *v125 = v77;
        v21 = "unexpected %s frame";
        v22 = v78;
        v23 = v79;
        v24 = 12;
        goto LABEL_8;
      }

      v53 = a2[1];
      if (*(v12 + 84) == v53)
      {
        if ((a2[5] & 0x40) != 0)
        {
LABEL_108:
          v85 = 0;
          v86 = 0;
          v87 = 0;
LABEL_138:
          v25 = EAPTLSPacketCreate(2, 43, v53, v85, v86, v87);
          goto LABEL_139;
        }
      }

      else
      {
        if (!*(v12 + 8))
        {
          v80 = v32;
          memoryBufferAllocate(v12 + 8, MessageLength);
          v32 = v80;
        }

        if (!memoryBufferAddData(v12 + 8, v32, v33))
        {
          v81 = EAPLogGetLogHandle();
          v82 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v81, v82))
          {
            goto LABEL_9;
          }

          *buf = 67109120;
          *v125 = v33;
          v21 = "fragment too large %d";
          v22 = v81;
          v23 = v82;
          v24 = 8;
          goto LABEL_8;
        }

        if ((memoryBufferIsComplete(v12 + 8) & 1) == 0)
        {
          if ((a2[5] & 0x40) == 0)
          {
            v83 = EAPLogGetLogHandle();
            v84 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v83, v84))
            {
              *buf = 0;
              _os_log_impl(&dword_249EFB000, v83, v84, "expecting more data but more fragments bit is not set, ignoring", buf, 2u);
            }
          }

          v53 = a2[1];
          goto LABEL_108;
        }
      }

      if (*(v12 + 144) == 1)
      {
        v25 = eapfast_tunnel(a1, a2, a4, v13, v14, v15, v16, v17);
      }

      else
      {
        v25 = eapfast_handshake(a1, a2, a4);
      }

      goto LABEL_139;
    }

    if (state)
    {
      v25 = 0;
LABEL_139:
      *(v12 + 84) = a2[1];
      if ((*(v12 + 132) & 1) == 0)
      {
        *(v12 + 134) = a2[5] & 7;
        *(v12 + 133) = 1;
      }

      if (v25)
      {
        v25[5] = v25[5] & 0xF8 | *(v12 + 133) & 7;
      }

      goto LABEL_147;
    }

    if ((v34 & 0x20) == 0)
    {
      v55 = EAPLogGetLogHandle();
      v56 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v55, v56))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v21 = "ignoring non EAP-FAST start frame";
      v22 = v55;
      v23 = v56;
      v24 = 2;
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v26 = *(v7 + 148);
  if (v26 == 1)
  {
    goto LABEL_15;
  }

LABEL_148:
  if (*(v7 + 112) == 2)
  {
    v106 = *(v7 + 136);
    if (v106)
    {
      *a5 = v106;
      v107 = 1001;
    }

    else
    {
      v107 = *(v7 + 140);
      if (v107)
      {
        v108 = v107 == 3;
      }

      else
      {
        v108 = 1;
      }

      if (v108)
      {
        v107 = 1;
      }
    }

    *a4 = v107;
  }

  return *(v7 + 112);
}

CFPropertyListRef pac_list_copy()
{
  v0 = CFPreferencesCopyValue(@"PACList", @"com.apple.network.eapclient.eapfast", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = v0;
  if (v0)
  {
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v0) != TypeID)
    {
      my_CFRelease(&v3);
      return v3;
    }
  }

  return v0;
}

uint64_t pac_list_find_pac(const __CFArray *a1, const void *a2, unsigned int a3, UInt8 *bytes, int a5)
{
  v23 = 0;
  if (bytes)
  {
    v7 = CFStringCreateWithBytes(0, bytes, a5, 0x8000100u, 1u);
    v23 = v7;
  }

  else
  {
    v7 = 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v9 = Count;
    v10 = 0;
    v11 = a3;
    v12 = 0xFFFFFFFFLL;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      TypeID = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == TypeID)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"AuthorityID");
          v16 = CFDataGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v16 && CFDataGetLength(Value) == v11)
            {
              BytePtr = CFDataGetBytePtr(Value);
              if (!memcmp(a2, BytePtr, v11))
              {
                v18 = CFDictionaryGetValue(ValueAtIndex, @"InitiatorID");
                if (v18)
                {
                  if (v7)
                  {
                    v19 = v18;
                    v20 = CFStringGetTypeID();
                    if (CFGetTypeID(v19) == v20)
                    {
                      if (CFEqual(v7, v19))
                      {
LABEL_23:
                        v12 = v10;
                        goto LABEL_22;
                      }
                    }
                  }
                }

                else
                {
                  if (!v7)
                  {
                    goto LABEL_23;
                  }

                  v12 = v10;
                }
              }
            }
          }
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = 0xFFFFFFFFLL;
LABEL_22:
  my_CFRelease(&v23);
  return v12;
}

void eapfast_free_packet(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t eapfast_session_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 33277))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 33278;
}

void eapfast_compute_master_secret(uint64_t a1, uint64_t *a2, _DWORD *a3, unint64_t *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2 + 4096;
  v6 = a2[4182];
  if (!v6)
  {
    LogHandle = EAPLogGetLogHandle();
    v18 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v18))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "pac_dict is NULL";
LABEL_10:
    v14 = LogHandle;
    v15 = v18;
    v16 = 2;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v6, @"PACKey");
  if (!Value)
  {
    LogHandle = EAPLogGetLogHandle();
    v18 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v18))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "pac_key is NULL";
    goto LABEL_10;
  }

  if (*a4 > 0x2F)
  {
    v19 = Value;
    v22 = 64;
    if (!ssl_get_server_client_random(*a2, buf, &v22))
    {
      BytePtr = CFDataGetBytePtr(v19);
      Length = CFDataGetLength(v19);
      T_PRF(BytePtr, Length, "PAC to master secret label hash", 0x1Fu, buf, v22, a3, 48);
      *a4 = 48;
      *(v5 + 697) = 1;
      return;
    }
  }

  else
  {
    v10 = EAPLogGetLogHandle();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a4;
      *buf = 134218240;
      v24 = v12;
      v25 = 1024;
      v26 = 48;
      v13 = "%lu < %d";
      v14 = v10;
      v15 = v11;
      v16 = 18;
LABEL_11:
      _os_log_impl(&dword_249EFB000, v14, v15, v13, buf, v16);
    }
  }

LABEL_13:
  *a4 = 0;
}

uint64_t ssl_get_server_client_random(uint64_t a1, uint64_t a2, int *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = *a3;
  v4 = SSLInternalServerRandom();
  if (v4)
  {
    v5 = v4;
    LogHandle = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v7))
    {
      *buf = 136315394;
      v23 = EAPSSLErrorString(v5);
      v24 = 1024;
      v25 = v5;
      v8 = "EAP-FAST: ssl_get_server_client_random: SSLInternalServerRandom failed, %s (%d)\n";
      v9 = LogHandle;
      v10 = v7;
      v11 = 18;
LABEL_4:
      _os_log_impl(&dword_249EFB000, v9, v10, v8, buf, v11);
    }
  }

  else
  {
    v12 = v20;
    v13 = *a3;
    if (v20 + 32 <= v13)
    {
      v21 = v13 - v20;
      v5 = SSLInternalClientRandom();
      if (!v5)
      {
        *a3 = v21 + v12;
        return v5;
      }

      v17 = EAPLogGetLogHandle();
      v18 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 136315138;
        v23 = EAPSSLErrorString(v5);
        v8 = "EAP-FAST: ssl_get_server_client_random: SSLInternalClientRandom failed, %s\n";
        v9 = v17;
        v10 = v18;
        v11 = 12;
        goto LABEL_4;
      }
    }

    else
    {
      v14 = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *a3;
        *buf = 134218240;
        v23 = v20 + 32;
        v24 = 1024;
        v25 = v16;
        _os_log_impl(&dword_249EFB000, v14, v15, "EAP-FAST: ssl_get_server_client_random: SSLInternalServerRandom %ld > %d\n", buf, 0x12u);
      }

      return 4294957479;
    }
  }

  return v5;
}

void T_PRF(const void *a1, int a2, const void *a3, unsigned int a4, const void *a5, int a6, _DWORD *a7, int a8)
{
  LODWORD(i) = a8;
  v30 = *MEMORY[0x277D85DE8];
  v13 = a4 + a6 + 24;
  if (v13 < 0x101)
  {
    v14 = v29;
  }

  else
  {
    v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  }

  v15 = a6;
  if (a5)
  {
    v16 = a6 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = bswap32(i) >> 16;
  v19 = 1;
  for (i = i; ; i -= 20)
  {
    v20 = v14;
    if (v19 != 1)
    {
      v21 = macOut;
      *(v14 + 4) = v28;
      *v14 = v21;
      v20 = v14 + 20;
    }

    memcpy(v20, a3, a4);
    v22 = &v20[a4];
    *v22 = 0;
    v23 = v22 + 1;
    if (v17)
    {
      memcpy(v23, a5, v15);
      v23 += v15;
    }

    *v23 = v18;
    v23[2] = v19;
    CCHmac(0, a1, a2, v14, v23 - v14 + 3, &macOut);
    if (i < 0x15)
    {
      break;
    }

    *a7 = macOut;
    a7[4] = v28;
    a7 += 5;
    ++v19;
  }

  memcpy(a7, &macOut, i);
  if (v14 != v29)
  {
    free(v14);
  }
}

_BYTE *eapfast_verify_server(const __CFDictionary **a1, unsigned __int8 a2, _DWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1 + 0x8000);
  v5 = *(*a1 + 33465);
  if (v5 == 1)
  {
    result = 0;
  }

  else
  {
    if (!*(*a1 + 4182) && *(*a1 + 33419) == 1)
    {
      LOWORD(v16[0]) = 0;
      if (!SSLGetNegotiatedCipher(*v3, v16) && LOWORD(v16[0]) == 52)
      {
        result = 0;
        *(v4 + 508) = 1;
        *(v4 + 699) = 1;
        return result;
      }
    }

    v10 = EAPTLSVerifyServerCertificateChain(a1[10], v4[80], 0, 0, v4 + 125);
    *(v4 + 126) = v10;
    if (v10)
    {
      LogHandle = EAPLogGetLogHandle();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v12))
      {
        v13 = *(v4 + 126);
        v14 = *(v4 + 125);
        v16[0] = 67109376;
        v16[1] = v13;
        v17 = 1024;
        v18 = v14;
        _os_log_impl(&dword_249EFB000, LogHandle, v12, "server certificate not trusted, status %d %d", v16, 0xEu);
      }

      v15 = *(v4 + 126);
      if (v15 == 3)
      {
        result = 0;
        *(v3 + 35) = 3;
        *a3 = 3;
        return result;
      }

      if (v15)
      {
        *(v3 + 35) = v15;
        *a3 = v15;
        *(v3 + 34) = *(v4 + 125);
        *(v3 + 28) = 2;
        SSLClose(*v3);
        return EAPTLSPacketCreate(2, 43, a2, *(v3 + 32), v3 + 6, v3 + 20);
      }
    }

    result = 0;
    LOBYTE(v5) = 1;
  }

  *(v4 + 508) = v5;
  return result;
}

BOOL eapfast_eap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8, v105, v106, v107, v108);
  v10 = v9;
  v11 = v8;
  v104 = *MEMORY[0x277D85DE8];
  v12 = *v8;
  v13 = *v8 + 0x8000;
  v96 = 0uLL;
  processed = 0;
  *v97 = &v102;
  *&v97[2] = 0x4000;
  v14 = (v13 + 352);
  v15 = *(v13 + 352);
  if (!v15)
  {
    v37 = SSLRead(*v12, (v12 + 352), 0x8000uLL, (v13 + 352));
    if (v37 == -9803)
    {
      return 1;
    }

    v38 = v37;
    if (v37)
    {
      LogHandle = EAPLogGetLogHandle();
      v50 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v50))
      {
        *v98 = 136315394;
        v99 = EAPSSLErrorString(v38);
        v100 = 1024;
        v101 = v38;
        _os_log_impl(&dword_249EFB000, LogHandle, v50, "SSLRead failed, %s (%d)", v98, 0x12u);
      }

      v48 = 0;
      *(v12 + 112) = 2;
      *(v12 + 136) = v38;
      return v48;
    }

    if (*v14)
    {
      if (v11[1])
      {
        Mutable = CFStringCreateMutable(0, 0);
        v40 = TLVListParse(v12 + 33128, (v12 + 352), *v14, Mutable);
        if (Mutable)
        {
          v41 = EAPLogGetLogHandle();
          v42 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v41, v42))
          {
            *v98 = 138412290;
            v99 = Mutable;
            _os_log_impl(&dword_249EFB000, v41, v42, "-------- Receive TLVs: ----------\n%@", v98, 0xCu);
          }

          CFRelease(Mutable);
        }

        if (!v40)
        {
          goto LABEL_107;
        }
      }

      else if (!TLVListParse(v12 + 33128, (v12 + 352), *v14, 0))
      {
        goto LABEL_107;
      }

      v58 = *(v13 + 424);
      if (v58)
      {
        if (!*(v12 + 33128))
        {
          make_nak(v97, v58);
          goto LABEL_110;
        }

        goto LABEL_108;
      }

      if (!*(v13 + 408))
      {
LABEL_63:
        if (!*(v12 + 33128))
        {
          v62 = 0;
          goto LABEL_79;
        }

        v61 = *(v13 + 368);
        v62 = v61 == 1;
        if (v61 != 1)
        {
          *(v12 + 148) = 2;
          v63 = *(v13 + 384);
          v64 = EAPLogGetLogHandle();
          v65 = _SC_syslog_os_log_mapping();
          v66 = os_log_type_enabled(v64, v65);
          if (v63)
          {
            if (v66)
            {
              v67 = *(v13 + 392);
              *v98 = 67109120;
              LODWORD(v99) = v67;
              v68 = "Result TLV Failure, Error %d";
              v69 = v64;
              v70 = v65;
              v71 = 8;
LABEL_77:
              _os_log_impl(&dword_249EFB000, v69, v70, v68, v98, v71);
            }
          }

          else if (v66)
          {
            *v98 = 0;
            v68 = "Result TLV Failure";
            v69 = v64;
            v70 = v65;
            v71 = 2;
            goto LABEL_77;
          }
        }

        v96 = *v97;
        make_result(v97, *(v13 + 368));
LABEL_79:
        v74 = *(v13 + 416);
        if (v74)
        {
          if (!process_crypto_binding(v12, v74, v97))
          {
            v77 = EAPLogGetLogHandle();
            v78 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v77, v78))
            {
              *v98 = 0;
              _os_log_impl(&dword_249EFB000, v77, v78, "Crypto Binding TLV validation failed", v98, 2u);
            }

            *(v12 + 112) = 2;
            if (*(v12 + 33128))
            {
              *v97 = v96;
            }

            make_result(v97, 2u);
            v79 = 2001;
            goto LABEL_109;
          }

          *(v13 + 700) = 1;
        }

        if (*(v13 + 432))
        {
          if (*(v13 + 700) == 1 && *(v13 + 649) == 1 && *(v13 + 440) && *(v13 + 448) && *(v13 + 472) && save_pac((v13 + 440)))
          {
            make_pac_ack(v97, 1u);
            *(v13 + 698) = 1;
            v75 = EAPLogGetLogHandle();
            v76 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v75, v76))
            {
              *v98 = 0;
              _os_log_impl(&dword_249EFB000, v75, v76, "EAP-FAST: PAC was provisioned", v98, 2u);
            }
          }

          else
          {
            make_pac_ack(v97, 2u);
          }
        }

        if (v62)
        {
          *(v12 + 148) = 1;
          eapfast_compute_session_key(v12);
          if (*(v13 + 650) == 1 && !*(v13 + 432) && !*(v13 + 688) && (*(v13 + 696) & 1) == 0)
          {
            *(v13 + 696) = 1;
            make_pac_request(v97);
          }
        }

        if (*(v12 + 33128))
        {
          goto LABEL_110;
        }

        goto LABEL_2;
      }

      v59 = *(v12 + 152);
      if (!v59 || !EAPClientModulePluginEAPType(v59))
      {
        v52 = EAPLogGetLogHandle();
        v53 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_107;
        }

        *v98 = 0;
        v54 = "Intermediate Result TLV supplied but no inner EAP method negotiated";
        goto LABEL_46;
      }

      v60 = bswap32(*(*(v13 + 408) + 4)) >> 16;
      if (v60 == 2)
      {
        v52 = EAPLogGetLogHandle();
        v53 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_107;
        }

        *v98 = 0;
        v54 = "Intermediate Result TLV Failure";
        goto LABEL_46;
      }

      if (v60 != 1)
      {
        v72 = EAPLogGetLogHandle();
        v73 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v72, v73))
        {
          goto LABEL_107;
        }

        *v98 = 67109120;
        LODWORD(v99) = v60;
        v54 = "Intermediate Result TLV: unrecognized status = %d";
        v55 = v72;
        v56 = v73;
        v57 = 8;
        goto LABEL_47;
      }

      if (*(v13 + 416))
      {
        make_intermediate_result(v97);
        goto LABEL_63;
      }

      v52 = EAPLogGetLogHandle();
      v53 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v52, v53))
      {
        *v98 = 0;
        v54 = "Crypto Binding TLV is missing";
        goto LABEL_46;
      }
    }

    else
    {
      v52 = EAPLogGetLogHandle();
      v53 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v52, v53))
      {
        *v98 = 0;
        v54 = "zero-length TLV";
LABEL_46:
        v55 = v52;
        v56 = v53;
        v57 = 2;
LABEL_47:
        _os_log_impl(&dword_249EFB000, v55, v56, v54, v98, v57);
      }
    }

LABEL_107:
    *(v12 + 112) = 2;
LABEL_108:
    make_result(v97, 2u);
    v79 = 2002;
LABEL_109:
    make_error(v97, v79);
    goto LABEL_110;
  }

LABEL_2:
  v16 = *(v13 + 400);
  if (v16)
  {
    __n_7 = 0;
    __n = 0;
    if (!v15 && (v11[1] & 1) != 0)
    {
      v17 = CFStringCreateMutable(0, 0);
      Length = EAPPacketGetLength((v16 + 4));
      EAPPacketIsValid(v16 + 4, Length, v17);
      v19 = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&dword_249EFB000, v19, v20, "EAP-FAST Receive EAP Payload:\n%@", buf, 0xCu);
      }

      CFRelease(v17);
    }

    v21 = v16[4];
    if ((v21 - 2) < 3)
    {
      goto LABEL_9;
    }

    if (v21 != 1)
    {
      return 0;
    }

    v43 = v16[8];
    if (v43 == 2)
    {
      v44 = v16[5];
      v45 = 0;
      v47 = 2;
      v46 = 0;
    }

    else
    {
      if (v43 != 1)
      {
        __n = 2048;
LABEL_9:
        v22 = eapfast_eap_process(v11, v16 + 4, v98, &__n, v10, &__n_7);
        goto LABEL_10;
      }

      v44 = v16[5];
      v45 = v11[5];
      v46 = *(v11 + 12);
      v47 = 1;
    }

    v22 = EAPPacketCreate(v98, 2048, 2, v44, v47, v45, v46, &__n);
LABEL_10:
    v23 = v22;
    if (v22)
    {
      if (*(v11 + 8) == 1)
      {
        v24 = CFStringCreateMutable(0, 0);
        v25 = EAPPacketGetLength(v23);
        EAPPacketIsValid(v23, v25, v24);
        v26 = EAPLogGetLogHandle();
        v27 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v26, v27))
        {
          *buf = 138412290;
          *&buf[4] = v24;
          _os_log_impl(&dword_249EFB000, v26, v27, "EAP-FAST Send EAP Payload:\n%@", buf, 0xCu);
        }

        CFRelease(v24);
      }

      v28 = __n;
      v29 = __n + 4;
      v30 = v97[2] - v97[3];
      if (v97[2] - v97[3] < (__n + 4))
      {
        v31 = EAPLogGetLogHandle();
        v32 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v31, v32))
        {
          *buf = 67109376;
          *&buf[4] = v29;
          *&buf[8] = 1024;
          *&buf[10] = v30;
          _os_log_impl(&dword_249EFB000, v31, v32, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", buf, 0xEu);
        }

        v33 = EAPLogGetLogHandle();
        v34 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v33, v34))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v33, v34, "EAP-FAST: make_eap(): buffer too small", buf, 2u);
        }

        v35 = EAPLogGetLogHandle();
        v36 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v35, v36))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v35, v36, "failed to insert EAP Payload TLV", buf, 2u);
        }

        *(v12 + 112) = 2;
        return 0;
      }

      v51 = (*v97 + v97[3]);
      v97[3] += v29;
      v51[1] = bswap32(__n) >> 16;
      *v51 = 2432;
      memcpy(v51 + 2, v23, v28);
      if (v23 != v98)
      {
        if (__n_7 == 1)
        {
          EAPClientModulePluginFreePacket(*(v12 + 152), v12 + 160, v23);
        }

        else
        {
          free(v23);
        }
      }

      goto LABEL_110;
    }

    return 0;
  }

LABEL_110:
  v80 = v97[3];
  processed = v97[3];
  if (!v97[3])
  {
    v85 = EAPLogGetLogHandle();
    v86 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v85, v86))
    {
      *v98 = 0;
      _os_log_impl(&dword_249EFB000, v85, v86, "nothing to send?", v98, 2u);
    }

    return 0;
  }

  *v14 = 0;
  if (v11[1])
  {
    v81 = CFStringCreateMutable(0, 0);
    *buf = v81;
    CFStringAppendFormat(v81, 0, @"======== Send TLVs: ========\n");
    v82 = *v97;
    TLVListParse(0, *v97, v80, v81);
    v83 = EAPLogGetLogHandle();
    v84 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v83, v84))
    {
      *v98 = 138412290;
      v99 = v81;
      _os_log_impl(&dword_249EFB000, v83, v84, "%@", v98, 0xCu);
    }

    my_CFRelease(buf);
  }

  else
  {
    v82 = *v97;
  }

  v87 = SSLWrite(*v12, v82, v80, &processed);
  v48 = v87 == 0;
  if (v87)
  {
    v88 = v87;
    v89 = EAPLogGetLogHandle();
    v90 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = EAPSSLErrorString(v88);
      *v98 = 136315394;
      v99 = v91;
      v100 = 1024;
      v101 = v88;
      _os_log_impl(&dword_249EFB000, v89, v90, "SSLWrite failed, %s (%d)", v98, 0x12u);
    }
  }

  if (*(v12 + 112) == 2)
  {
    SSLClose(*v12);
  }

  return v48;
}

BOOL TLVListParse(uint64_t IsValid, unsigned __int16 *a2, uint64_t a3, CFMutableStringRef theString)
{
  v5 = a3;
  v40 = *MEMORY[0x277D85DE8];
  if (IsValid)
  {
    *(IsValid + 128) = 0;
    *(IsValid + 96) = 0u;
    *(IsValid + 112) = 0u;
    *(IsValid + 64) = 0u;
    *(IsValid + 80) = 0u;
    *(IsValid + 32) = 0u;
    *(IsValid + 48) = 0u;
    *IsValid = 0u;
    *(IsValid + 16) = 0u;
  }

  if (!a3)
  {
    return 1;
  }

  v8 = 0;
  v35 = (IsValid + 80);
  while (1)
  {
    if (v5 <= 3)
    {
      if (theString)
      {
        goto LABEL_75;
      }

      LogHandle = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(LogHandle, v20);
      if (!result)
      {
        return result;
      }

      goto LABEL_79;
    }

    v9 = bswap32(a2[1]) >> 16;
    if (v9 + 4 > v5)
    {
      if (theString)
      {
LABEL_75:
        CFStringAppendFormat(theString, 0, @"EAP-FAST: TLV is too short (%d < %d)", v5, 4);
        return 0;
      }

      LogHandle = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(LogHandle, v20);
      if (!result)
      {
        return result;
      }

LABEL_79:
      *buf = 67109376;
      v37 = v5;
      v38 = 1024;
      LODWORD(v39) = 4;
      v21 = "EAP-FAST: TLV is too short (%d < %d)";
      v22 = LogHandle;
      v23 = v20;
      goto LABEL_119;
    }

    v10 = bswap32(*a2) >> 16;
    v11 = v10 & 0x3FFF;
    if (theString)
    {
      v12 = "Unknown";
      if ((v11 - 3) <= 0x11)
      {
        v12 = off_278FBDF98[v11 - 3];
      }

      v13 = &unk_249F2FF71;
      if (v10 < 0)
      {
        v13 = " [mandatory]";
      }

      CFStringAppendFormat(theString, 0, @"%s TLV (type=%d) Length=%d%s\n", v12, v10 & 0x3FFF, v9, v13);
      print_data_cfstr(theString, (a2 + 2), v9);
    }

    if ((v10 & 0x3FFFu) > 8)
    {
      break;
    }

    if ((v10 & 0x3FFFu) <= 4)
    {
      if (v11 != 3)
      {
        if (v11 != 4)
        {
          goto LABEL_33;
        }

        if (v9 > 5)
        {
          if (IsValid)
          {
            if (!*(IsValid + 16))
            {
              *(IsValid + 16) = a2;
            }
          }

          goto LABEL_70;
        }

        if (theString)
        {
          CFStringAppendFormat(theString, 0, @"EAP-FAST: NAK TLV is too short (%d < %d)", v9, 6);
          return 0;
        }

        v26 = EAPLogGetLogHandle();
        v27 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v26, v27);
        if (!result)
        {
          return result;
        }

        *buf = 67109376;
        v37 = v9;
        v38 = 1024;
        LODWORD(v39) = 6;
        v21 = "EAP-FAST: NAK TLV is too short (%d < %d)";
LABEL_118:
        v22 = v26;
        v23 = v27;
LABEL_119:
        v28 = 14;
        goto LABEL_120;
      }

      if (v9 <= 1)
      {
        if (theString)
        {
          CFStringAppendFormat(theString, 0, @"EAP-FAST: Result TLV is too short (%d < %d)", v9, 2);
          return 0;
        }

        v26 = EAPLogGetLogHandle();
        v27 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v26, v27);
        if (!result)
        {
          return result;
        }

        *buf = 67109376;
        v37 = v9;
        v38 = 1024;
        LODWORD(v39) = 2;
        v21 = "EAP-FAST: Result TLV is too short (%d < %d)";
        goto LABEL_118;
      }

      v15 = bswap32(a2[2]);
      v16 = HIWORD(v15);
      if (HIWORD(v15) == 2)
      {
        v17 = @"Failure\n";
        if (!theString)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v16 != 1)
        {
          if (theString)
          {
            CFStringAppendFormat(theString, 0, @"EAP-FAST: Result TLV unrecognized status = %d", HIWORD(v15), v34);
            return 0;
          }

          v31 = EAPLogGetLogHandle();
          v32 = _SC_syslog_os_log_mapping();
          result = os_log_type_enabled(v31, v32);
          if (result)
          {
            *buf = 67109120;
            v37 = v16;
            v21 = "EAP-FAST: Result TLV unrecognized status = %d";
            v22 = v31;
            v23 = v32;
            v28 = 8;
            goto LABEL_120;
          }

          return result;
        }

        v17 = @"Success\n";
        if (!theString)
        {
          goto LABEL_67;
        }
      }

      CFStringAppendFormat(theString, 0, v17);
LABEL_67:
      if (IsValid)
      {
        if (*IsValid)
        {
          if (theString)
          {
            CFStringAppendFormat(theString, 0, @"EAP-FAST: multiple Result TLV's defined", v33, v34);
            return 0;
          }

          v24 = EAPLogGetLogHandle();
          v25 = _SC_syslog_os_log_mapping();
          result = os_log_type_enabled(v24, v25);
          if (result)
          {
            *buf = 0;
            v21 = "EAP-FAST: multiple Result TLV's defined";
            goto LABEL_135;
          }

          return result;
        }

        *IsValid = a2;
        *(IsValid + 8) = v16;
      }

      goto LABEL_70;
    }

    if (v11 != 5)
    {
      if (v11 == 7 && v9 <= 3)
      {
        if (theString)
        {
          CFStringAppendFormat(theString, 0, @"EAP-FAST: Vendor Specific TLV too short (%d < %d)", v9, 4);
          return 0;
        }

        v26 = EAPLogGetLogHandle();
        v27 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v26, v27);
        if (!result)
        {
          return result;
        }

        *buf = 67109376;
        v37 = v9;
        v38 = 1024;
        LODWORD(v39) = 4;
        v21 = "EAP-FAST: Vendor Specific TLV too short (%d < %d)";
        goto LABEL_118;
      }

LABEL_33:
      if (IsValid && v10 < 0 && !*(IsValid + 64))
      {
        *(IsValid + 64) = a2;
      }

      goto LABEL_70;
    }

    if (v9 <= 3)
    {
      if (theString)
      {
        CFStringAppendFormat(theString, 0, @"EAP-FAST: Error TLV is too short (%d < %d)", v9, 4);
        return 0;
      }

      v26 = EAPLogGetLogHandle();
      v27 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v26, v27);
      if (!result)
      {
        return result;
      }

      *buf = 67109376;
      v37 = v9;
      v38 = 1024;
      LODWORD(v39) = 4;
      v21 = "EAP-FAST: Error TLV is too short (%d < %d)";
      goto LABEL_118;
    }

    if (theString)
    {
      CFStringAppendFormat(theString, 0, @"ErrorCode = %d\n", bswap32(*(a2 + 1)));
    }

    if (IsValid && !*(IsValid + 24))
    {
      *(IsValid + 24) = a2;
      *(IsValid + 32) = bswap32(*(a2 + 1));
    }

LABEL_70:
    a2 = (a2 + v9 + 4);
    v5 = (v5 - (v9 + 4));
    if (!v5)
    {
      return 1;
    }
  }

  if ((v10 & 0x3FFFu) <= 0xA)
  {
    if (v11 == 9)
    {
      if (IsValid)
      {
        if (*(IsValid + 40))
        {
          if (theString)
          {
            CFStringAppendFormat(theString, 0, @"EAP-FAST: EAP Payload TLV appears multiple times", v33, v34);
            return 0;
          }

          v24 = EAPLogGetLogHandle();
          v25 = _SC_syslog_os_log_mapping();
          result = os_log_type_enabled(v24, v25);
          if (result)
          {
            *buf = 0;
            v21 = "EAP-FAST: EAP Payload TLV appears multiple times";
            goto LABEL_135;
          }

          return result;
        }

        *(IsValid + 40) = a2;
      }

      if ((EAPPacketIsValid(a2 + 4, v9, 0) & 1) == 0)
      {
        if (theString)
        {
          CFStringAppendFormat(theString, 0, @"EAP-FAST: EAP Payload TLV invalid");
          EAPPacketIsValid(a2 + 4, v9, theString);
          return 0;
        }

        v24 = EAPLogGetLogHandle();
        v25 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v24, v25);
        if (result)
        {
          *buf = 0;
          v21 = "EAP-FAST: EAP Payload TLV invalid";
          goto LABEL_135;
        }

        return result;
      }
    }

    else
    {
      if (v9 <= 1)
      {
        if (theString)
        {
          CFStringAppendFormat(theString, 0, @"EAP-FAST: Intermediate Result TLV too short (%d < %d)", v9, 2);
          return 0;
        }

        v26 = EAPLogGetLogHandle();
        v27 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v26, v27);
        if (!result)
        {
          return result;
        }

        *buf = 67109376;
        v37 = v9;
        v38 = 1024;
        LODWORD(v39) = 2;
        v21 = "EAP-FAST: Intermediate Result TLV too short (%d < %d)";
        goto LABEL_118;
      }

      if (IsValid)
      {
        if (*(IsValid + 48))
        {
          if (theString)
          {
            CFStringAppendFormat(theString, 0, @"EAP-FAST: multiple Intermediate Result TLV's", v33, v34);
            return 0;
          }

          v24 = EAPLogGetLogHandle();
          v25 = _SC_syslog_os_log_mapping();
          result = os_log_type_enabled(v24, v25);
          if (result)
          {
            *buf = 0;
            v21 = "EAP-FAST: multiple Intermediate Result TLV's";
            goto LABEL_135;
          }

          return result;
        }

        *(IsValid + 48) = a2;
      }
    }

    goto LABEL_70;
  }

  if (v11 == 11)
  {
    if (IsValid && !*(IsValid + 72))
    {
      v8 = v35;
    }

    if (!PACTLVAttributeListParse(v8, a2 + 2, v9, theString))
    {
      if (theString)
      {
        CFStringAppendFormat(theString, 0, @"EAP-FAST: PAC TLV parse failed", v33, v34);
        return 0;
      }

      v24 = EAPLogGetLogHandle();
      v25 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v24, v25);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v21 = "EAP-FAST: PAC TLV parse failed";
LABEL_135:
      v22 = v24;
      v23 = v25;
      v28 = 2;
LABEL_120:
      _os_log_impl(&dword_249EFB000, v22, v23, v21, buf, v28);
      return 0;
    }

    if (v8)
    {
      *(IsValid + 72) = a2;
    }

    goto LABEL_70;
  }

  if (v11 != 12)
  {
    goto LABEL_33;
  }

  if (v9 > 0x37)
  {
    if (IsValid)
    {
      if (*(IsValid + 56))
      {
        if (theString)
        {
          CFStringAppendFormat(theString, 0, @"EAP-FAST: multiple Crypto Binding TLV's defined", v33, v34);
          return 0;
        }

        v24 = EAPLogGetLogHandle();
        v25 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v24, v25);
        if (result)
        {
          *buf = 0;
          v21 = "EAP-FAST: multiple Crypto Binding TLV's defined";
          goto LABEL_135;
        }

        return result;
      }

      *(IsValid + 56) = a2;
    }

    goto LABEL_70;
  }

  if (theString)
  {
    CFStringAppendFormat(theString, 0, @"EAP-FAST: Crypto Binding TLV too short (%d < %ld)", v9, 56);
    return 0;
  }

  v29 = EAPLogGetLogHandle();
  v30 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v29, v30);
  if (result)
  {
    *buf = 67109376;
    v37 = v9;
    v38 = 2048;
    v39 = 56;
    v21 = "EAP-FAST: Crypto Binding TLV too short (%d < %ld)";
    v22 = v29;
    v23 = v30;
    v28 = 18;
    goto LABEL_120;
  }

  return result;
}

uint64_t TLVListParse_0(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = 0;
  v7 = a3;
  while (1)
  {
    if (v7 <= 1)
    {
      snprintf((a1 + 96), 0xA0uLL, "Missing/truncated attribute at offset %d");
      goto LABEL_15;
    }

    v8 = a2[1];
    v9 = 4 * v8;
    if (4 * v8 > v7)
    {
      break;
    }

    v10 = TLVCheckValidity(a1, a2);
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_15;
      }

      if ((*a2 & 0x80000000) == 0)
      {
        snprintf((a1 + 96), 0xA0uLL, "unrecognized attribute %d");
        goto LABEL_15;
      }
    }

    else
    {
      TLVListAddAttribute(a1, a2);
    }

    v6 += v9;
    a2 += v9;
    v7 = a3 - v6;
    if (a3 == v6)
    {
      return 1;
    }
  }

  EAPSIMAKAAttributeTypeGetString(*a2);
  snprintf((a1 + 96), 0xA0uLL, "%s too large %d (> %d) at offset %d");
LABEL_15:
  v12 = *a1;
  if (*a1)
  {
    v13 = v12 == (a1 + 8);
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    free(v12);
  }

  result = 0;
  *a1 = 0;
  *(a1 + 88) = 0;
  return result;
}

char *eapfast_eap_process(uint64_t *a1, unsigned __int8 *a2, char *a3, signed int *a4, int *a5, _BYTE *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v37 = 0;
  *a6 = 0;
  v12 = *a2;
  if (v12 == 2)
  {
    v21 = a2[4];
    v22 = *(v11 + 152);
    if (v22)
    {
      LODWORD(v22) = EAPClientModulePluginEAPType(v22);
    }

    if (v22 != v21)
    {
      return v37;
    }

    goto LABEL_15;
  }

  if (v12 == 1)
  {
    v13 = a2[4];
    if (!a2[4])
    {
      return v37;
    }

    v15 = *(v11 + 152);
    if (v15)
    {
      LODWORD(v15) = EAPClientModulePluginEAPType(v15);
    }

    if (v15 != v13)
    {
      v16 = a2[4];
      if (*(v11 + 33467))
      {
        if (v16 != 26)
        {
          if (!*(v11 + 33264))
          {
            *(v11 + 33264) = 1;
            LOBYTE(v30) = 26;
LABEL_42:
            buf[0] = v30;
            return EAPPacketCreate(a3, *a4, 2, a2[1], 3, buf, 1, a4);
          }

LABEL_33:
          v31 = 5;
          goto LABEL_40;
        }
      }

      else
      {
        v28 = 0;
        while (inner_auth_types[v28] != v16)
        {
          if (++v28 == 4)
          {
            v29 = *(v11 + 33264);
            if (v29 > 3)
            {
              goto LABEL_33;
            }

            *(v11 + 33264) = v29 + 1;
            v30 = inner_auth_types[v29];
            goto LABEL_42;
          }
        }
      }

      eap_client_free(a1);
      v17 = a2[4];
      v18 = *a1;
      *(v18 + 328) = 0;
      *(v18 + 336) = 0;
      if (*(v18 + 152))
      {
        LogHandle = EAPLogGetLogHandle();
        v20 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v20))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, LogHandle, v20, "already initialized", buf, 2u);
        }

        goto LABEL_15;
      }

      v32 = EAPClientModuleLookup(v17);
      if (v32)
      {
        v33 = v32;
        my_CFRelease((v18 + 312));
        my_CFRelease((v18 + 320));
        *(v18 + 160) = 0u;
        *(v18 + 304) = 0;
        *(v18 + 272) = 0u;
        *(v18 + 288) = 0u;
        *(v18 + 240) = 0u;
        *(v18 + 256) = 0u;
        *(v18 + 208) = 0u;
        *(v18 + 224) = 0u;
        *(v18 + 176) = 0u;
        *(v18 + 192) = 0u;
        *(v18 + 176) = *(a1 + 4);
        *(v18 + 200) = a1[5];
        *(v18 + 208) = *(a1 + 12);
        *(v18 + 224) = a1[8];
        *(v18 + 232) = *(a1 + 18);
        eap_client_set_properties(a1);
        *(v18 + 184) = a1[3];
        *(v18 + 192) = *(a1 + 8);
        *(v18 + 344) = EAPClientModulePluginInit(v33, v18 + 160, v18 + 312, v18 + 348);
        *(v18 + 336) = EAPClientModulePluginEAPName(v33);
        *(v18 + 328) = v17;
        if (!*(v18 + 344))
        {
          *(v18 + 152) = v33;
          goto LABEL_15;
        }
      }

      v26 = *(v11 + 344);
      if (v26 == 3)
      {
        goto LABEL_25;
      }

      v34 = EAPLogGetLogHandle();
      v35 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = a2[4];
        *buf = 67109120;
        v39 = v36;
        _os_log_impl(&dword_249EFB000, v34, v35, "eap_client_init type %d failed", buf, 8u);
      }

      v31 = *(v11 + 344);
LABEL_40:
      *a5 = v31;
      *(v11 + 112) = 2;
      return v37;
    }
  }

LABEL_15:
  if (*(v11 + 152))
  {
    my_CFRelease((v11 + 312));
    my_CFRelease((v11 + 320));
    v23 = *a1;
    *(v23 + 200) = a1[5];
    *(v23 + 208) = *(a1 + 12);
    *(v23 + 224) = a1[8];
    *(v23 + 232) = *(a1 + 18);
    *(v23 + 180) = *(a1 + 5);
    eap_client_set_properties(a1);
    v24 = EAPClientModulePluginProcess(*(v23 + 152), v23 + 160, a2, &v37, v23 + 344, v23 + 348);
    v25 = v37;
    if (v37)
    {
      *a6 = 1;
      *a4 = EAPPacketGetLength(v25);
    }

    *(v11 + 320) = EAPClientModulePluginPublishProperties(*(v11 + 152), v11 + 160);
    if (v24 == 2)
    {
      *(v11 + 148) = 2;
      v26 = *(v11 + 344);
      goto LABEL_25;
    }

    if (v24 == 1)
    {
      *(v11 + 148) = 1;
    }

    else if (!v24 && *(v11 + 344) == 3)
    {
      *(v11 + 312) = EAPClientModulePluginRequireProperties(*(v11 + 152), v11 + 160);
      v26 = *(v11 + 344);
      *(v11 + 140) = v26;
LABEL_25:
      *a5 = v26;
    }
  }

  return v37;
}

void eap_client_free(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 152);
  if (v2)
  {
    EAPClientModulePluginFree(v2, v1 + 160);
    *(v1 + 152) = 0;
    my_CFRelease((v1 + 240));
    *(v1 + 304) = 0;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 160) = 0u;
  }

  my_CFRelease((v1 + 312));
  my_CFRelease((v1 + 320));
  *(v1 + 328) = 0;
  *(v1 + 336) = 0;
  *(v1 + 344) = 0;
}

void eap_client_free_0(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    EAPClientModulePluginFree(v2, a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0;
  }

  my_CFRelease((a1 + 312));
  my_CFRelease((a1 + 320));
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
}

void eap_client_free_1(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    EAPClientModulePluginFree(v2, a1 + 304);
    *(a1 + 296) = 0;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 448) = 0;
  }

  my_CFRelease((a1 + 456));
  my_CFRelease((a1 + 464));
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
}

void eap_client_set_properties(CFDictionaryRef *a1)
{
  v2 = *a1;
  if (*(*a1 + 33467) == 1)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1[10]);
    v4 = *MEMORY[0x277CBED00];
    v5 = CFDataCreateWithBytesNoCopy(0, v2 + 33509, 16, *MEMORY[0x277CBED00]);
    CFDictionarySetValue(MutableCopy, @"EAPMSCHAPv2ServerChallenge", v5);
    CFRelease(v5);
    v6 = CFDataCreateWithBytesNoCopy(0, v2 + 33525, 16, v4);
    CFDictionarySetValue(MutableCopy, @"EAPMSCHAPv2ClientChallenge", v6);
    CFRelease(v6);
    my_CFRelease(v2 + 30);
    *(v2 + 30) = MutableCopy;
  }

  else
  {
    my_CFRelease(v2 + 30);
    *(v2 + 30) = CFRetain(a1[10]);
  }
}

uint64_t eapgtc_init(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 0;
  *a2 = 0;
  return 0;
}

uint64_t eapgtc_process(uint64_t a1, const char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  *a3 = 0;
  v5 = *a2;
  if (v5 == 4)
  {
    *a4 = 1;
    return 2;
  }

  else if (v5 == 3)
  {
    return 1;
  }

  else
  {
    result = 0;
    if (v5 == 1)
    {
      if (*(a1 + 64))
      {
        v10 = *(a1 + 72);
        v11 = v10 + 5;
        if (EAPPacketGetLength(a2) - 15 <= 0xFFFFFFFFFFFFFFF5 && !strncmp(a2 + 5, "CHALLENGE=", 0xAuLL))
        {
          v11 = v10 + *(a1 + 48) + 15;
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        v13 = malloc_type_malloc(v11, 0x634E4635uLL);
        v14 = v13;
        if (v13)
        {
          *v13 = 2;
          v13[1] = a2[1];
          EAPPacketSetLength(v13, v11);
          v14[4] = 6;
          v15 = v14 + 5;
          if (v12)
          {
            v14[13] = 61;
            *v15 = *"RESPONSE=";
            memcpy(v14 + 14, *(a1 + 40), *(a1 + 48));
            v16 = *(a1 + 48);
            *(v15 + v16 + 9) = 0;
            v15 = (v15 + v16 + 10);
          }

          memcpy(v15, *(a1 + 64), *(a1 + 72));
        }

        result = 0;
        *a3 = v14;
      }

      else
      {
        result = 0;
        *a4 = 3;
      }
    }
  }

  return result;
}

void eapgtc_free_packet(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void make_result(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 12);
  if (*(a1 + 8) - v3 <= 5)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      v7 = *(a1 + 8) - *(a1 + 12);
      v10[0] = 67109376;
      v10[1] = 6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_249EFB000, LogHandle, v6, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", v10, 0xEu);
    }

    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_249EFB000, v8, v9, "EAP-FAST: make_result(): buffer too small", v10, 2u);
    }
  }

  else
  {
    v4 = *a1 + v3;
    *(a1 + 12) = v3 + 6;
    *v4 = 33555328;
    *(v4 + 4) = __rev16(a2);
  }
}

void eapfast_free(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    eap_client_free(a1);
    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }

    v3 = *(v2 + 33424);
    if (v3)
    {
      v4 = v3 == (v2 + 33432);
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      free(v3);
    }

    my_CFRelease((v2 + 120));
    my_CFRelease((v2 + 33408));
    memoryIOClearBuffers(v2 + 88);
    my_CFRelease((v2 + 33456));
    free(v2);
  }

  *a1 = 0;
}

uint64_t peap_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = malloc_type_malloc(0x608uLL, 0x10F0040A535B1BCuLL);
  bzero(v5, 0x608uLL);
  v5[108] = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSCertificateIsRequired", 0);
  *(v5 + 30) = *(a1 + 16);
  v5[1536] = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSEnableSessionResumption", 1);
  memoryIOInit(v5 + 10, v5 + 8, v5 + 40);
  *a1 = v5;
  *a3 = 0;
  return 0;
}

uint64_t peap_process(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, int *a4, _DWORD *a5)
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  *a4 = 0;
  *a5 = 0;
  *(v7 + 128) = 0;
  *a3 = 0;
  v8 = *a2;
  if (v8 == 4)
  {
    v26 = *(v7 + 144);
    if (v26 != 2)
    {
      if (*(v7 + 124) != 1 || *(v7 + 140) != 1)
      {
        goto LABEL_90;
      }

      v26 = 2;
    }

LABEL_14:
    *(v7 + 104) = v26;
    goto LABEL_90;
  }

  if (v8 != 3)
  {
    if (v8 != 1)
    {
      goto LABEL_90;
    }

    v12 = *a1;
    Length = EAPPacketGetLength(a2);
    state = kSSLIdle;
    if (Length <= 5)
    {
      LogHandle = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v20))
      {
LABEL_9:
        v25 = 0;
LABEL_89:
        *a3 = v25;
        goto LABEL_90;
      }

      *buf = 67109376;
      *v90 = Length;
      *&v90[4] = 2048;
      *&v90[6] = 6;
      v21 = "length %d < %ld";
      goto LABEL_7;
    }

    if (*v12)
    {
      v29 = SSLGetSessionState(*v12, &state);
      if (v29)
      {
        v30 = v29;
        v31 = EAPLogGetLogHandle();
        v32 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = EAPSSLErrorString(v30);
          *buf = 136315394;
          *v90 = v33;
          *&v90[8] = 2048;
          *&v90[10] = v30;
          _os_log_impl(&dword_249EFB000, v31, v32, "SSLGetSessionState failed, %s (%ld)", buf, 0x16u);
        }

        v25 = 0;
        *(v12 + 104) = 2;
        *(v12 + 132) = v30;
        goto LABEL_89;
      }
    }

    v34 = a2 + 6;
    v35 = Length - 6;
    v36 = a2[5];
    if ((v36 & 0x20) != 0)
    {
      if (state != kSSLHandshake || !*(v12 + 40) || *(v12 + 76) != a2[1])
      {
        state = kSSLIdle;
        goto LABEL_31;
      }

      v37 = 0;
      v38 = "Start";
    }

    else if (Length == 6)
    {
      v37 = 0;
      v38 = "Ack";
    }

    else
    {
      if ((a2[5] & 0x80) != 0)
      {
        if (Length <= 9)
        {
          LogHandle = EAPLogGetLogHandle();
          v20 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(LogHandle, v20))
          {
            goto LABEL_9;
          }

          *buf = 67109376;
          *v90 = Length;
          *&v90[4] = 2048;
          *&v90[6] = 10;
          v21 = "packet too short %d < %ld";
LABEL_7:
          v22 = LogHandle;
          v23 = v20;
          v24 = 18;
LABEL_8:
          _os_log_impl(&dword_249EFB000, v22, v23, v21, buf, v24);
          goto LABEL_9;
        }

        MessageLength = EAPTLSLengthIncludedPacketGetMessageLength(a2);
        if (MessageLength <= 0x20000)
        {
          v34 = a2 + 10;
          v48 = Length - 10;
          if (MessageLength)
          {
            v38 = "Start";
            v37 = 1;
            v35 = MessageLength;
          }

          else
          {
            v37 = 0;
            v35 = 0;
            v38 = "Ack";
          }
        }

        else
        {
          if ((a2[5] & 0x40) != 0)
          {
            v82 = MessageLength;
            v83 = EAPLogGetLogHandle();
            v84 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v83, v84))
            {
              goto LABEL_9;
            }

            *buf = 67109376;
            *v90 = v82;
            *&v90[4] = 1024;
            *&v90[6] = 0x20000;
            v21 = "received message too large, %d > %d";
            v22 = v83;
            v23 = v84;
            v24 = 14;
            goto LABEL_8;
          }

          v37 = 1;
          *(v12 + 128) = 1;
          v38 = "Start";
          v48 = v35;
          v34 = a2 + 6;
        }

        goto LABEL_45;
      }

      v38 = "Start";
      v37 = 1;
    }

    v48 = v35;
LABEL_45:
    if ((state - 1) < 2)
    {
      if (*(v12 + 40))
      {
        v49 = a2[1];
        if (*(v12 + 76) == v49)
        {
LABEL_79:
          v61 = *(v12 + 120);
          v62 = (v12 + 40);
          v63 = (v12 + 72);
LABEL_80:
          v25 = EAPTLSPacketCreate(2, 25, v49, v61, v62, v63);
          goto LABEL_81;
        }

        v50 = *(v12 + 56) + *(v12 + 72);
        if (v50 < *(v12 + 48))
        {
          *(v12 + 56) = v50;
          goto LABEL_79;
        }

        v85 = v38;
        v86 = v34;
        v73 = v48;
        memoryBufferClear(v12 + 40);
        v38 = v85;
        v34 = v86;
        v48 = v73;
        *(v12 + 72) = 0;
      }

      if ((v37 & 1) == 0)
      {
        v74 = v38;
        v75 = EAPLogGetLogHandle();
        v76 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v75, v76))
        {
          goto LABEL_9;
        }

        *buf = 136315138;
        *v90 = v74;
        v21 = "unexpected %s frame";
        v22 = v75;
        v23 = v76;
        v24 = 12;
        goto LABEL_8;
      }

      v49 = a2[1];
      if (*(v12 + 76) == v49)
      {
        if ((a2[5] & 0x40) != 0)
        {
LABEL_104:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          goto LABEL_80;
        }

LABEL_111:
        if (*(v12 + 140) == 1)
        {
          v25 = peap_tunnel(a1, a2, a4, v13, v14, v15, v16, v17);
        }

        else
        {
          v25 = peap_handshake(a1, a2[1], a4);
        }

        goto LABEL_81;
      }

      if (!*(v12 + 8))
      {
        v77 = v34;
        v78 = v48;
        memoryBufferAllocate(v12 + 8, v35);
        v48 = v78;
        v34 = v77;
      }

      v79 = v48;
      if (!memoryBufferAddData(v12 + 8, v34, v48))
      {
        v80 = EAPLogGetLogHandle();
        v81 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v80, v81))
        {
          goto LABEL_9;
        }

        *buf = 67109120;
        *v90 = v79;
        v21 = "fragment too large %d";
        v22 = v80;
        v23 = v81;
        v24 = 8;
        goto LABEL_8;
      }

      if (memoryBufferIsComplete(v12 + 8))
      {
        goto LABEL_111;
      }

      if ((a2[5] & 0x40) != 0)
      {
        v49 = a2[1];
        goto LABEL_104;
      }

      v51 = EAPLogGetLogHandle();
      v52 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v21 = "expecting more data but more fragments bit is not set, ignoring";
LABEL_54:
      v22 = v51;
      v23 = v52;
      v24 = 2;
      goto LABEL_8;
    }

    if (state)
    {
      v25 = 0;
LABEL_81:
      *(v12 + 76) = a2[1];
      v64 = *(v12 + 124);
      if (v64 == -1)
      {
        v64 = (a2[5] & 7) != 0;
        *(v12 + 124) = v64;
      }

      if (v25)
      {
        v25[5] = v25[5] & 0xF8 | v64 & 7;
      }

      goto LABEL_89;
    }

    if ((v36 & 0x20) == 0)
    {
      v51 = EAPLogGetLogHandle();
      v52 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v21 = "ignoring non PEAP start frame";
      goto LABEL_54;
    }

LABEL_31:
    v39 = *a1;
    v88 = 0;
    v40 = *(v39 + 352);
    if (v40 && v40 != (v39 + 360))
    {
      free(v40);
    }

    *(v39 + 352) = 0;
    *(v39 + 1384) = 0;
    if (*v39)
    {
      CFRelease(*v39);
      *v39 = 0;
    }

    my_CFRelease((v39 + 1528));
    memoryIOClearBuffers(v39 + 80);
    v41 = EAPTLSMemIOContextCreate(a1[10], 0, (v39 + 80), 0, &v88);
    if (!v41)
    {
      v55 = EAPLogGetLogHandle();
      v56 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = EAPSSLErrorString(v88);
        *buf = 136315394;
        *v90 = v57;
        *&v90[8] = 2048;
        *&v90[10] = v88;
        _os_log_impl(&dword_249EFB000, v55, v56, "EAPTLSMemIOContextCreate failed, %s (%ld)", buf, 0x16u);
      }

LABEL_75:
      if (v88)
      {
        v25 = 0;
        *(v12 + 132) = v88;
      }

      else
      {
        v60 = SSLHandshake(*v12);
        if (v60 == -9803)
        {
          v49 = a2[1];
          goto LABEL_79;
        }

        v65 = v60;
        v66 = EAPLogGetLogHandle();
        v67 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = EAPSSLErrorString(v65);
          *buf = 136315394;
          *v90 = v68;
          *&v90[8] = 1024;
          *&v90[10] = v65;
          _os_log_impl(&dword_249EFB000, v66, v67, "SSLHandshake failed, %s (%d)", buf, 0x12u);
        }

        v25 = 0;
        *(v12 + 132) = v65;
      }

      *(v12 + 104) = 2;
      goto LABEL_89;
    }

    v42 = v41;
    if (*(v39 + 1536) == 1 && (v43 = a1[3]) != 0 && (v88 = SSLSetPeerID(v41, v43, *(a1 + 8))) != 0)
    {
      v44 = EAPLogGetLogHandle();
      v45 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = EAPSSLErrorString(v88);
        *buf = 136315394;
        *v90 = v46;
        *&v90[8] = 2048;
        *&v90[10] = v88;
        v47 = "SSLSetPeerID failed, %s (%ld)";
LABEL_73:
        _os_log_impl(&dword_249EFB000, v44, v45, v47, buf, 0x16u);
      }
    }

    else
    {
      if (*(v39 + 108) != 1)
      {
        goto LABEL_62;
      }

      v53 = *(v39 + 112);
      if (!v53)
      {
        v88 = EAPTLSCopyIdentityTrustChain(a1[12], a1[10], (v39 + 112));
        if (v88)
        {
          v44 = EAPLogGetLogHandle();
          v45 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v44, v45))
          {
            v59 = EAPSSLErrorString(v88);
            *buf = 136315394;
            *v90 = v59;
            *&v90[8] = 2048;
            *&v90[10] = v88;
            v47 = "failed to find client cert/identity, %s (%ld)";
            goto LABEL_73;
          }

          goto LABEL_74;
        }

        v53 = *(v39 + 112);
      }

      v88 = SSLSetCertificate(v42, v53);
      if (!v88)
      {
LABEL_62:
        *v39 = v42;
        *(v39 + 104) = 0;
        *(v39 + 1396) = 0;
        *(v39 + 1526) = 0;
        *(v39 + 144) = 0;
        *(v39 + 72) = 0xFFFFFFFF00000000;
        *(v39 + 132) = 0;
        *(v39 + 140) = 0;
        *(v39 + 124) = -1;
        *(v39 + 128) = 0;
        *(v39 + 1537) = 0;
        goto LABEL_75;
      }

      v44 = EAPLogGetLogHandle();
      v45 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v44, v45))
      {
        v54 = EAPSSLErrorString(v88);
        *buf = 136315394;
        *v90 = v54;
        *&v90[8] = 2048;
        *&v90[10] = v88;
        v47 = "SSLSetCertificate failed, %s, (%ld)";
        goto LABEL_73;
      }
    }

LABEL_74:
    CFRelease(v42);
    goto LABEL_75;
  }

  v26 = *(v7 + 144);
  if (v26 == 1)
  {
    goto LABEL_14;
  }

  *(v7 + 144) = 2;
  *(v7 + 104) = 2;
  v27 = EAPLogGetLogHandle();
  v28 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v27, v28))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v27, v28, "Tearing down the EAP session as the server is either malicious or has a compliance issue", buf, 2u);
  }

LABEL_90:
  if (*(v7 + 104) == 2)
  {
    v69 = *(v7 + 132);
    if (v69)
    {
      *a5 = v69;
      v70 = 1001;
    }

    else
    {
      v70 = *(v7 + 136);
      if (v70)
      {
        v71 = v70 == 3;
      }

      else
      {
        v71 = 1;
      }

      if (v71)
      {
        v70 = 1;
      }
    }

    *a4 = v70;
  }

  return *(v7 + 104);
}

void peap_free_packet(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t peap_session_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if ((*(v2 + 328) != 6 || *(v2 + 124) || *(v2 + 104) != 1) && (*(v2 + 1397) != 1 || *(v2 + 144) != 1))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 1398;
}

uint64_t EAPClientModulePluginCopyIdentity(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 128);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0;
  }
}

_BYTE *peap_verify_server(uint64_t *a1, unsigned __int8 a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = EAPTLSVerifyServerCertificateChain(a1[10], *(v5 + 1528), 0, 0, (v5 + 1388));
  *(v5 + 1392) = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  LogHandle = EAPLogGetLogHandle();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v8))
  {
    v9 = *(v5 + 1392);
    v10 = *(v5 + 1388);
    v13[0] = 67109376;
    v13[1] = v9;
    v14 = 1024;
    v15 = v10;
    _os_log_impl(&dword_249EFB000, LogHandle, v8, "server certificate not trusted status %d %d", v13, 0xEu);
  }

  v11 = *(v5 + 1392);
  if (v11 == 3)
  {
    result = 0;
    *(v5 + 136) = 3;
    *a3 = 3;
  }

  else
  {
    if (!v11)
    {
LABEL_6:
      result = 0;
      *(v5 + 1396) = 1;
      return result;
    }

    *(v5 + 136) = v11;
    *a3 = v11;
    *(v5 + 132) = *(v5 + 1388);
    *(v5 + 104) = 2;
    SSLClose(*v5);
    return EAPTLSPacketCreate(2, 25, a2, *(v5 + 120), (v5 + 40), (v5 + 72));
  }

  return result;
}

char *peap_eap_process(uint64_t a1, unsigned __int8 *a2, char *a3, signed int *a4, int *a5, _BYTE *a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v36 = 0;
  *a6 = 0;
  v12 = *a2;
  if (v12 == 2)
  {
    v21 = a2[4];
    v22 = *(v11 + 152);
    if (v22)
    {
      LODWORD(v22) = EAPClientModulePluginEAPType(v22);
    }

    if (v22 != v21)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v12 != 1)
  {
    goto LABEL_15;
  }

  v13 = a2[4];
  if (a2[4])
  {
    v15 = *(v11 + 152);
    if (v15)
    {
      LODWORD(v15) = EAPClientModulePluginEAPType(v15);
    }

    if (v15 != v13)
    {
      v16 = a2[4];
      if (v16 <= 0x1A && ((1 << v16) & 0x4000050) != 0)
      {
        eap_client_free_0(v11);
        v17 = a2[4];
        v18 = *a1;
        *(v18 + 328) = 0;
        *(v18 + 336) = 0;
        if (*(v18 + 152))
        {
          LogHandle = EAPLogGetLogHandle();
          v20 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v20))
          {
            *buf = 0;
            _os_log_impl(&dword_249EFB000, LogHandle, v20, "eap_client_init: already initialized\n", buf, 2u);
          }

          goto LABEL_15;
        }

        v29 = EAPClientModuleLookup(v17);
        if (v29)
        {
          v30 = v29;
          my_CFRelease((v18 + 312));
          my_CFRelease((v18 + 320));
          *(v18 + 160) = 0u;
          *(v18 + 304) = 0;
          *(v18 + 272) = 0u;
          *(v18 + 288) = 0u;
          *(v18 + 240) = 0u;
          *(v18 + 256) = 0u;
          *(v18 + 208) = 0u;
          *(v18 + 224) = 0u;
          *(v18 + 176) = 0u;
          *(v18 + 192) = 0u;
          *(v18 + 176) = *(a1 + 16);
          *(v18 + 200) = *(a1 + 40);
          *(v18 + 208) = *(a1 + 48);
          *(v18 + 224) = *(a1 + 64);
          *(v18 + 232) = *(a1 + 72);
          *(v18 + 240) = *(a1 + 80);
          *(v18 + 344) = EAPClientModulePluginInit(v30, v18 + 160, v18 + 312, v18 + 348);
          *(v18 + 336) = EAPClientModulePluginEAPName(v30);
          *(v18 + 328) = v17;
          if (!*(v18 + 344))
          {
            *(v18 + 152) = v30;
            goto LABEL_15;
          }
        }

        if (*(v11 + 344) == 3)
        {
          *a5 = 3;
          save_last_packet(v11, a2);
          return 0;
        }

        v33 = EAPLogGetLogHandle();
        v34 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = a2[4];
          *buf = 67109120;
          v38 = v35;
          _os_log_impl(&dword_249EFB000, v33, v34, "eap_client_init type %d failed", buf, 8u);
        }

        result = 0;
        v32 = *(v11 + 344);
      }

      else
      {
        v31 = *(v11 + 1384);
        if (v31 <= 2)
        {
          *(v11 + 1384) = v31 + 1;
          buf[0] = inner_auth_types_0[v31];
          return EAPPacketCreate(a3, *a4, 2, a2[1], 3, buf, 1, a4);
        }

        result = 0;
        v32 = 5;
      }

      *a5 = v32;
      *(v11 + 104) = 2;
      return result;
    }

LABEL_15:
    if (*(v11 + 152))
    {
      my_CFRelease((v11 + 312));
      my_CFRelease((v11 + 320));
      v23 = *a1;
      *(v23 + 200) = *(a1 + 40);
      *(v23 + 208) = *(a1 + 48);
      *(v23 + 224) = *(a1 + 64);
      *(v23 + 232) = *(a1 + 72);
      *(v23 + 180) = *(a1 + 20);
      *(v23 + 240) = *(a1 + 80);
      v24 = EAPClientModulePluginProcess(*(v23 + 152), v23 + 160, a2, &v36, v23 + 344, v23 + 348);
      v25 = v36;
      if (v36)
      {
        *a6 = 1;
        *a4 = EAPPacketGetLength(v25);
      }

      if (v24 == 2)
      {
        *a5 = *(v11 + 344);
        v27 = 2;
      }

      else
      {
        if (v24 != 1)
        {
          if (!v24 && *(v11 + 344) == 3)
          {
            *(v11 + 312) = EAPClientModulePluginRequireProperties(*(v11 + 152), v11 + 160);
            save_last_packet(v11, a2);
            v26 = *(v11 + 344);
            *(v11 + 136) = v26;
            *a5 = v26;
          }

          goto LABEL_26;
        }

        v27 = 1;
      }

      *(v11 + 144) = v27;
LABEL_26:
      *(v11 + 320) = EAPClientModulePluginPublishProperties(*(v11 + 152), v11 + 160);
      return v36;
    }
  }

  return 0;
}

void peap_free(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    eap_client_free_0(*a1);
    v3 = *(v1 + 352);
    if (v3)
    {
      v4 = v3 == (v1 + 360);
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      free(v3);
    }

    *(v1 + 352) = 0;
    if (*v1)
    {
      CFRelease(*v1);
      *v1 = 0;
    }

    my_CFRelease((v1 + 112));
    my_CFRelease((v1 + 1528));
    memoryIOClearBuffers(v1 + 80);
    free(v1);
    *a1 = 0;
  }
}

uint64_t eapttls_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = malloc_type_malloc(0x638uLL, 0x10F00406210EC67uLL);
  bzero(v5, 0x638uLL);
  v5[108] = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSCertificateIsRequired", 0);
  *(v5 + 30) = *(a1 + 16);
  v6 = *(a1 + 80);
  if (v6 && (Value = CFDictionaryGetValue(v6, @"TTLSInnerAuthentication"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && (v9 = my_CFStringToCString(Value, 1536)) != 0)
  {
    v10 = v9;
    v11 = 0;
    while (strcmp(v10, auth_strings[v11]))
    {
      if (++v11 == 6)
      {
        free(v10);
        goto LABEL_9;
      }
    }

    free(v10);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 5;
    }
  }

  else
  {
LABEL_9:
    v12 = 5;
  }

  *(v5 + 33) = v12;
  v5[288] = my_CFDictionaryGetBooleanValue(*(a1 + 80), @"TLSEnableSessionResumption", 1);
  memoryIOInit(v5 + 10, v5 + 8, v5 + 40);
  *a1 = v5;
  *a3 = 0;
  return 0;
}

uint64_t eapttls_process(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, int *a4, _DWORD *a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  *a4 = 0;
  *a5 = 0;
  *a3 = 0;
  v8 = *a2;
  if (v8 == 4)
  {
    v26 = 2;
    goto LABEL_16;
  }

  if (v8 != 3)
  {
    if (v8 != 1)
    {
      goto LABEL_84;
    }

    v12 = *a1;
    Length = EAPPacketGetLength(a2);
    state = kSSLIdle;
    if (Length <= 5)
    {
      LogHandle = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v20))
      {
LABEL_9:
        v25 = 0;
LABEL_83:
        *a3 = v25;
        goto LABEL_84;
      }

      *buf = 67109376;
      *v89 = Length;
      *&v89[4] = 2048;
      *&v89[6] = 6;
      v21 = "length %d < %ld";
      goto LABEL_7;
    }

    if (*v12)
    {
      v27 = SSLGetSessionState(*v12, &state);
      if (v27)
      {
        v28 = v27;
        v29 = EAPLogGetLogHandle();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = EAPSSLErrorString(v28);
          *buf = 136315394;
          *v89 = v31;
          *&v89[8] = 2048;
          *&v89[10] = v28;
          _os_log_impl(&dword_249EFB000, v29, v30, "SSLGetSessionState failed, %s (%ld)", buf, 0x16u);
        }

        v25 = 0;
        *(v12 + 104) = 2;
        *(v12 + 124) = v28;
        goto LABEL_83;
      }
    }

    v32 = a2 + 6;
    v33 = Length - 6;
    v34 = a2[5];
    if ((v34 & 0x20) != 0)
    {
      if (state != kSSLHandshake || !*(v12 + 40) || *(v12 + 76) != a2[1])
      {
        state = kSSLIdle;
        goto LABEL_30;
      }

      v35 = 0;
      v36 = "Start";
    }

    else if (Length == 6)
    {
      v35 = 0;
      v36 = "Ack";
    }

    else
    {
      if ((a2[5] & 0x80) != 0)
      {
        if (Length <= 9)
        {
          LogHandle = EAPLogGetLogHandle();
          v20 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(LogHandle, v20))
          {
            goto LABEL_9;
          }

          *buf = 67109376;
          *v89 = Length;
          *&v89[4] = 2048;
          *&v89[6] = 10;
          v21 = "packet too short %d < %ld";
LABEL_7:
          v22 = LogHandle;
          v23 = v20;
          v24 = 18;
LABEL_8:
          _os_log_impl(&dword_249EFB000, v22, v23, v21, buf, v24);
          goto LABEL_9;
        }

        MessageLength = EAPTLSLengthIncludedPacketGetMessageLength(a2);
        v33 = MessageLength;
        if (MessageLength > 0x20000)
        {
          v56 = EAPLogGetLogHandle();
          v57 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v56, v57))
          {
            *buf = 67109376;
            *v89 = v33;
            *&v89[4] = 1024;
            *&v89[6] = 0x20000;
            _os_log_impl(&dword_249EFB000, v56, v57, "received message too large, %d > %d", buf, 0xEu);
          }

          v25 = 0;
          goto LABEL_82;
        }

        v32 = a2 + 10;
        v45 = Length - 10;
        if (MessageLength)
        {
          v36 = "Start";
          v35 = 1;
        }

        else
        {
          v35 = 0;
          v36 = "Ack";
        }

        goto LABEL_41;
      }

      v36 = "Start";
      v35 = 1;
    }

    v45 = v33;
LABEL_41:
    if ((state - 1) < 2)
    {
      if (*(v12 + 40))
      {
        v46 = a2[1];
        if (*(v12 + 76) == v46)
        {
LABEL_76:
          v60 = *(v12 + 120);
          v61 = (v12 + 40);
          v62 = (v12 + 72);
LABEL_77:
          v25 = EAPTLSPacketCreate(2, 21, v46, v60, v61, v62);
          goto LABEL_78;
        }

        v47 = *(v12 + 56) + *(v12 + 72);
        if (v47 < *(v12 + 48))
        {
          *(v12 + 56) = v47;
          goto LABEL_76;
        }

        v85 = v32;
        v71 = v36;
        v84 = v45;
        memoryBufferClear(v12 + 40);
        v45 = v84;
        v36 = v71;
        v32 = v85;
        *(v12 + 72) = 0;
      }

      if (v35)
      {
        v46 = a2[1];
        if (*(v12 + 76) == v46)
        {
          if ((a2[5] & 0x40) != 0)
          {
LABEL_98:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            goto LABEL_77;
          }

LABEL_109:
          if (*(v12 + 136) == 1)
          {
            v25 = eapttls_tunnel(a1, a2, a4, v13, v14, v15, v16, v17);
          }

          else
          {
            v25 = eapttls_handshake(a1, a2[1], a4);
          }

          goto LABEL_78;
        }

        if (!*(v12 + 8))
        {
          v76 = v32;
          v77 = v33;
          v78 = v45;
          memoryBufferAllocate(v12 + 8, v77);
          v45 = v78;
          v32 = v76;
        }

        v79 = v45;
        if (!memoryBufferAddData(v12 + 8, v32, v45))
        {
          v80 = EAPLogGetLogHandle();
          v81 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v80, v81))
          {
            goto LABEL_9;
          }

          *buf = 67109120;
          *v89 = v79;
          v21 = "fragment too large %d";
          v22 = v80;
          v23 = v81;
          v24 = 8;
          goto LABEL_8;
        }

        if (memoryBufferIsComplete(v12 + 8))
        {
          goto LABEL_109;
        }

        if ((a2[5] & 0x40) != 0)
        {
          v46 = a2[1];
          goto LABEL_98;
        }

        v48 = EAPLogGetLogHandle();
        v49 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v48, v49))
        {
          goto LABEL_9;
        }

        *buf = 0;
        v21 = "expecting more data but more fragments bit is not set, ignoring";
LABEL_50:
        v22 = v48;
        v23 = v49;
        v24 = 2;
        goto LABEL_8;
      }

      if (state != kSSLConnected || (v72 = *a1, !*(*a1 + 289)) || !*(v72 + 148) || *(v72 + 137) == 1)
      {
        v73 = v36;
        v74 = EAPLogGetLogHandle();
        v75 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v74, v75))
        {
          goto LABEL_9;
        }

        *buf = 136315138;
        *v89 = v73;
        v21 = "unexpected %s frame";
        v22 = v74;
        v23 = v75;
        v24 = 12;
        goto LABEL_8;
      }

      v82 = EAPLogGetLogHandle();
      v83 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v82, v83))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v82, v83, "server forcing re-auth after resume", buf, 2u);
      }

      v25 = eapttls_do_inner_auth(a1, a2[1]);
LABEL_78:
      *(v12 + 76) = a2[1];
      goto LABEL_83;
    }

    if (state)
    {
      v25 = 0;
      goto LABEL_78;
    }

    if ((v34 & 0x20) == 0)
    {
      v48 = EAPLogGetLogHandle();
      v49 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v21 = "ignoring non TTLS start frame";
      goto LABEL_50;
    }

LABEL_30:
    v37 = *a1;
    v87 = 0;
    if (*v37)
    {
      CFRelease(*v37);
      *v37 = 0;
    }

    my_CFRelease((v37 + 280));
    memoryIOClearBuffers(v37 + 80);
    v38 = EAPTLSMemIOContextCreate(a1[10], 0, (v37 + 80), 0, &v87);
    if (!v38)
    {
      v52 = EAPLogGetLogHandle();
      v53 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = EAPSSLErrorString(v87);
        *buf = 136315394;
        *v89 = v54;
        *&v89[8] = 2048;
        *&v89[10] = v87;
        _os_log_impl(&dword_249EFB000, v52, v53, "EAPTLSMemIOContextCreate failed, %s (%ld)", buf, 0x16u);
      }

LABEL_72:
      if (v87)
      {
        v25 = 0;
        *(v12 + 124) = v87;
      }

      else
      {
        v59 = SSLHandshake(*v12);
        if (v59 == -9803)
        {
          v46 = a2[1];
          goto LABEL_76;
        }

        v63 = v59;
        v64 = EAPLogGetLogHandle();
        v65 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = EAPSSLErrorString(v63);
          *buf = 136315394;
          *v89 = v66;
          *&v89[8] = 2048;
          *&v89[10] = v63;
          _os_log_impl(&dword_249EFB000, v64, v65, "SSLHandshake failed, %s (%ld)", buf, 0x16u);
        }

        v25 = 0;
        *(v12 + 124) = v63;
      }

LABEL_82:
      *(v12 + 104) = 2;
      goto LABEL_83;
    }

    v39 = v38;
    if (*(v37 + 288) == 1 && (v40 = a1[3]) != 0 && (v87 = SSLSetPeerID(v38, v40, *(a1 + 8))) != 0)
    {
      v41 = EAPLogGetLogHandle();
      v42 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = EAPSSLErrorString(v87);
        *buf = 136315394;
        *v89 = v43;
        *&v89[8] = 2048;
        *&v89[10] = v87;
        v44 = "SSLSetPeerID failed, %s (%ld)";
LABEL_70:
        _os_log_impl(&dword_249EFB000, v41, v42, v44, buf, 0x16u);
      }
    }

    else
    {
      if (*(v37 + 108) != 1)
      {
        goto LABEL_58;
      }

      v50 = *(v37 + 112);
      if (!v50)
      {
        v87 = EAPTLSCopyIdentityTrustChain(a1[12], a1[10], (v37 + 112));
        if (v87)
        {
          v41 = EAPLogGetLogHandle();
          v42 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v41, v42))
          {
            v58 = EAPSSLErrorString(v87);
            *buf = 136315394;
            *v89 = v58;
            *&v89[8] = 2048;
            *&v89[10] = v87;
            v44 = "failed to find client cert/identity, %s (%ld)";
            goto LABEL_70;
          }

          goto LABEL_71;
        }

        v50 = *(v37 + 112);
      }

      v87 = SSLSetCertificate(v39, v50);
      if (!v87)
      {
LABEL_58:
        *v37 = v39;
        *(v37 + 104) = 0;
        *(v37 + 124) = 0;
        *(v37 + 128) = 0;
        *(v37 + 136) = 0;
        *(v37 + 148) = 0;
        *(v37 + 292) = 0;
        *(v37 + 278) = 0;
        *(v37 + 72) = 0xFFFFFFFF00000000;
        *(v37 + 289) = 0;
        goto LABEL_72;
      }

      v41 = EAPLogGetLogHandle();
      v42 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v41, v42))
      {
        v51 = EAPSSLErrorString(v87);
        *buf = 136315394;
        *v89 = v51;
        *&v89[8] = 2048;
        *&v89[10] = v87;
        v44 = "SSLSetCertificate failed, %s (%ld)";
        goto LABEL_70;
      }
    }

LABEL_71:
    CFRelease(v39);
    goto LABEL_72;
  }

  if (*(v7 + 136) == 1 && (*(v7 + 148) & 1) == 0)
  {
    *a3 = eapttls_verify_server(a1, a2[1], a4);
  }

  v26 = *(v7 + 148);
  if (v26 == 1)
  {
LABEL_16:
    *(v7 + 104) = v26;
  }

LABEL_84:
  if (*(v7 + 104) == 2)
  {
    v67 = *(v7 + 124);
    if (v67)
    {
      *a5 = v67;
      v68 = 1001;
    }

    else
    {
      v68 = *(v7 + 128);
      if (v68)
      {
        v69 = v68 == 3;
      }

      else
      {
        v69 = 1;
      }

      if (v69)
      {
        v68 = 1;
      }
    }

    *a4 = v68;
  }

  return *(v7 + 104);
}

void eapttls_free_packet(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

__CFDictionary *eapttls_publish_props(uint64_t *a1)
{
  cipherSuite = 0;
  v1 = *a1;
  v2 = *(*a1 + 280);
  if (!v2)
  {
    return 0;
  }

  CFDataArray = EAPSecCertificateArrayCreateCFDataArray(v2);
  v14 = CFDataArray;
  if (!CFDataArray)
  {
    return 0;
  }

  v4 = CFDataArray;
  if (*(v1 + 132) == 5 && *(v1 + 136) == 1 && (v5 = *(v1 + 464)) != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v7 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"TLSServerCertificateChain", v4);
  v8 = MEMORY[0x277CBED28];
  if (!*(v1 + 289))
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v7, @"TLSSessionWasResumed", *v8);
  my_CFRelease(&v14);
  SSLGetNegotiatedCipher(*v1, &cipherSuite);
  if (cipherSuite)
  {
    LODWORD(valuePtr) = cipherSuite;
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v7, @"TLSNegotiatedCipher", v9);
    CFRelease(v9);
  }

  if (*(v1 + 296))
  {
    v10 = *(v1 + 480);
    v15 = *(v1 + 472);
    if (v15)
    {
      if (v10)
      {
        valuePtr = CFStringCreateWithCString(0, v10, 0x600u);
        CFDictionarySetValue(v7, @"InnerEAPTypeName", valuePtr);
        my_CFRelease(&valuePtr);
      }

      valuePtr = CFNumberCreate(0, kCFNumberIntType, &v15);
      CFDictionarySetValue(v7, @"InnerEAPType", valuePtr);
      my_CFRelease(&valuePtr);
    }
  }

  if (*(v1 + 128) == 3 && (*(v1 + 148) & 1) == 0)
  {
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, (v1 + 144));
    CFDictionarySetValue(v7, @"TLSTrustClientStatus", v11);
    CFRelease(v11);
  }

  return v7;
}

uint64_t eapttls_session_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 149))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 150;
}

_BYTE *eapttls_verify_server(uint64_t *a1, unsigned __int8 a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = EAPTLSVerifyServerCertificateChain(a1[10], *(v5 + 280), 0, 0, (v5 + 140));
  *(v5 + 144) = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  LogHandle = EAPLogGetLogHandle();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v8))
  {
    v10 = *(v5 + 140);
    v9 = *(v5 + 144);
    v13[0] = 67109376;
    v13[1] = v9;
    v14 = 1024;
    v15 = v10;
    _os_log_impl(&dword_249EFB000, LogHandle, v8, "server certificate not trusted status %d %d", v13, 0xEu);
  }

  v11 = *(v5 + 144);
  if (v11 == 3)
  {
    result = 0;
    *(v5 + 128) = 3;
    *a3 = 3;
  }

  else
  {
    if (!v11)
    {
LABEL_6:
      result = 0;
      *(v5 + 148) = 1;
      return result;
    }

    *(v5 + 128) = v11;
    *a3 = v11;
    *(v5 + 124) = *(v5 + 140);
    *(v5 + 104) = 2;
    SSLClose(*v5);
    return EAPTLSPacketCreate(2, 21, a2, *(v5 + 120), (v5 + 40), (v5 + 72));
  }

  return result;
}

_BYTE *eapttls_start_inner_auth(uint64_t *a1, uint64_t a2)
{
  if (*(*a1 + 289))
  {
    return EAPTLSPacketCreate(2, 21, a2, *(*a1 + 120), (*a1 + 40), (*a1 + 72));
  }

  else
  {
    return eapttls_do_inner_auth(a1, a2);
  }
}

_BYTE *eapttls_do_inner_auth(uint64_t *a1, unsigned __int8 a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  *(v4 + 137) = 1;
  v5 = *(v4 + 132);
  if (v5 <= 2)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v92 = 0;
        v6 = *(a1 + 12);
        v7 = EAPTLSComputeKeyData(*v4, "ttls challenge", 14, processed, 17);
        if (v7)
        {
          v8 = v7;
          LogHandle = EAPLogGetLogHandle();
          v10 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v10))
          {
            v11 = EAPSSLErrorString(v8);
            *buf = 136315394;
            *&buf[4] = v11;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            v12 = "EAPTLSComputeKeyData failed, %s (%ld)";
LABEL_38:
            v46 = LogHandle;
            v47 = v10;
            v48 = 22;
LABEL_79:
            _os_log_impl(&dword_249EFB000, v46, v47, v12, buf, v48);
            return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
          }

          return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
        }

        v60 = (v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v61 = v60 + 57;
        if (v60 + 57 <= 0)
        {
          v62 = -(-(v60 + 57) & 3);
        }

        else
        {
          v62 = (v60 + 57) & 3;
        }

        v63 = v60 - v62 + 61;
        v64 = malloc_type_malloc(v63, 0x539084FDuLL);
        if (v64)
        {
          v19 = v64;
          *v64 = 0x1000000;
          v65 = *(a1 + 12);
          v64[1] = bswap32((v65 + 8) & 0xFFFFFF);
          v66 = v64 + 2;
          memmove(v64 + 2, a1[5], v65);
          v67 = *(a1 + 12);
          if (v60 > v67)
          {
            bzero(v66 + v67, (v60 - v67));
          }

          v68 = v66 + v60;
          *v68 = 0x180000003C000000;
          *(v68 + 8) = *processed;
          *(v68 + 3) = 0x1900000003000000;
          v69 = processed[16];
          v68[32] = processed[16];
          chap_md5(v69, a1[8], *(a1 + 18), processed, 0x10u, v68 + 33);
          bzero(v68 + 49, v63 - v61);
          v70 = SSLWrite(*v4, v19, &v68[v63 - v61 + 49] - v19, &v92);
          if (!v70)
          {
            goto LABEL_58;
          }

          v26 = v70;
          v27 = EAPLogGetLogHandle();
          v28 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v27, v28))
          {
            goto LABEL_58;
          }

          goto LABEL_56;
        }

        v73 = EAPLogGetLogHandle();
        v74 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v73, v74))
        {
          return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
        }

        *buf = 0;
        v12 = "malloc failed";
LABEL_78:
        v46 = v73;
        v47 = v74;
        v48 = 2;
        goto LABEL_79;
      }

      goto LABEL_24;
    }

    *processed = 0;
    v32 = *(a1 + 18) + 15;
    v33 = (*(a1 + 12) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v34 = malloc_type_malloc(((v32 & 0xFFFFFFF0) + v33 + 16), 0xC4C6445EuLL);
    if (!v34)
    {
      v73 = EAPLogGetLogHandle();
      v74 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v73, v74))
      {
        return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
      }

      *buf = 0;
      v12 = "malloc failed";
      goto LABEL_78;
    }

    v19 = v34;
    v35 = (v32 & 0xFFFFFFF0);
    *v34 = 0x1000000;
    v36 = *(a1 + 12);
    v34[1] = bswap32((v36 + 8) & 0xFFFFFF);
    v37 = v34 + 2;
    memmove(v34 + 2, a1[5], v36);
    v38 = *(a1 + 12);
    if (v33 > v38)
    {
      bzero(v37 + v38, (v33 - v38));
    }

    v39 = (v37 + v33);
    *v39 = 0x2000000;
    v39[1] = bswap32(v32 & 0xFFFFF0 | 8);
    v40 = v37 + v33 + 8;
    memmove(v40, a1[8], *(a1 + 18));
    v41 = *(a1 + 18);
    if (v35 > v41)
    {
      bzero(&v40[v41], (v35 - v41));
    }

    v42 = SSLWrite(*v4, v19, &v40[v35] - v19, processed);
    if (!v42)
    {
      goto LABEL_58;
    }

    v26 = v42;
    v27 = EAPLogGetLogHandle();
    v28 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_58;
    }

LABEL_56:
    v71 = EAPSSLErrorString(v26);
    *buf = 136315394;
    *&buf[4] = v71;
    *&buf[12] = 2048;
    *&buf[14] = v26;
    v72 = buf;
LABEL_57:
    _os_log_impl(&dword_249EFB000, v27, v28, "SSLWrite failed, %s (%ld)", v72, 0x16u);
LABEL_58:
    free(v19);
    return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
  }

  if (v5 == 3)
  {
    v89 = 0;
    v43 = *(a1 + 12);
    v44 = EAPTLSComputeKeyData(*v4, "ttls challenge", 14, &v92, 9);
    if (v44)
    {
      v45 = v44;
      LogHandle = EAPLogGetLogHandle();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v10))
      {
        *buf = 136315394;
        *&buf[4] = EAPSSLErrorString(v45);
        *&buf[12] = 2048;
        *&buf[14] = v45;
        v12 = "EAPTLSComputeKeyData failed, %s (%ld)";
        goto LABEL_38;
      }

      return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
    }

    v75 = (v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v76 = v75 + 90;
    if (v75 + 90 <= 0)
    {
      v77 = -(-(v75 + 90) & 3);
    }

    else
    {
      v77 = (v75 + 90) & 3;
    }

    v78 = v75 - v77 + 94;
    v79 = malloc_type_malloc(v78, 0x9965995FuLL);
    if (v79)
    {
      v19 = v79;
      *v79 = 0x1000000;
      v80 = *(a1 + 12);
      v79[1] = bswap32((v80 + 8) & 0xFFFFFF);
      v81 = v79 + 2;
      memmove(v79 + 2, a1[5], v80);
      v82 = *(a1 + 12);
      if (v75 > v82)
      {
        bzero(v81 + v82, (v75 - v82));
      }

      v83 = v81 + v75;
      *v83 = 0x140000800B000000;
      *(v83 + 2) = 922812416;
      *(v83 + 12) = v92;
      *(v83 + 20) = 0x3E00008001000000;
      *(v83 + 7) = 922812416;
      v83[32] = v93;
      v83[33] = 1;
      *(v83 + 50) = 0;
      *(v83 + 42) = 0;
      *(v83 + 34) = 0;
      MSChap(&v92, a1[8], *(a1 + 18), buf);
      v84 = *buf;
      *(v83 + 74) = *&buf[16];
      *(v83 + 58) = v84;
      bzero(v83 + 82, v78 - v76);
      v85 = SSLWrite(*v4, v19, &v83[v78 - v76 + 82] - v19, &v89);
      if (!v85)
      {
        goto LABEL_58;
      }

      v86 = v85;
      v27 = EAPLogGetLogHandle();
      v28 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_58;
      }

      v87 = EAPSSLErrorString(v86);
      *processed = 136315394;
      *&processed[4] = v87;
      *&processed[12] = 2048;
      *&processed[14] = v86;
      v72 = processed;
      goto LABEL_57;
    }

    v73 = EAPLogGetLogHandle();
    v74 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v73, v74))
    {
      return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
    }

    *buf = 0;
    v12 = "malloc failed";
    goto LABEL_78;
  }

  if (v5 == 5)
  {
    *processed = 0;
    v13 = *(a1 + 12);
    v14 = v13 + 13;
    if (v13 + 13 <= 0)
    {
      v15 = -(-(v13 + 13) & 3);
    }

    else
    {
      v15 = (v13 + 13) & 3;
    }

    v16 = v13 - v15 + 17;
    if (!v15)
    {
      v16 = v14;
    }

    v17 = v16;
    v18 = malloc_type_malloc(v16, 0xBA6A896AuLL);
    if (!v18)
    {
      v73 = EAPLogGetLogHandle();
      v74 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v73, v74))
      {
        return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
      }

      *buf = 0;
      v12 = "malloc failed";
      goto LABEL_78;
    }

    v19 = v18;
    *v18 = 1325400064;
    *(v18 + 1) = bswap32(v14 & 0xFFFFFF);
    *(v18 + 4) = 2;
    v20 = (v18 + 8);
    EAPPacketSetLength((v18 + 8), (*(a1 + 24) + 5));
    v19[12] = 1;
    memmove(v19 + 13, a1[5], *(a1 + 12));
    if (v17 > v14)
    {
      bzero(&v20[*(a1 + 12) + 5], v17 - v14);
    }

    if (*(a1 + 8) == 1)
    {
      Mutable = CFStringCreateMutable(0, 0);
      Length = EAPPacketGetLength(v20);
      EAPPacketIsValid(v20, Length, Mutable);
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 138412290;
        *&buf[4] = Mutable;
        _os_log_impl(&dword_249EFB000, v23, v24, "TTLS Send EAP Payload:\n%@", buf, 0xCu);
      }

      CFRelease(Mutable);
    }

    v25 = SSLWrite(*v4, v19, v17, processed);
    if (!v25)
    {
      goto LABEL_58;
    }

    v26 = v25;
    v27 = EAPLogGetLogHandle();
    v28 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

LABEL_24:
  *processed = 0;
  v29 = *(a1 + 12);
  v30 = EAPTLSComputeKeyData(*v4, "ttls challenge", 14, v4 + 1572, 17);
  if (!v30)
  {
    v49 = (v29 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v50 = v49 + 98;
    if (v49 + 98 <= 0)
    {
      v51 = -(-(v49 + 98) & 3);
    }

    else
    {
      v51 = (v49 + 98) & 3;
    }

    v52 = v49 - v51 + 102;
    v53 = malloc_type_malloc(v52, 0x3982D34BuLL);
    if (!v53)
    {
      v73 = EAPLogGetLogHandle();
      v74 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v73, v74))
      {
        return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
      }

      *buf = 0;
      v12 = "malloc failed";
      goto LABEL_78;
    }

    v19 = v53;
    *v53 = 0x1000000;
    v54 = *(a1 + 12);
    v53[1] = bswap32((v54 + 8) & 0xFFFFFF);
    v55 = v53 + 2;
    memmove(v53 + 2, a1[5], v54);
    v56 = *(a1 + 12);
    if (v49 > v56)
    {
      bzero(v55 + v56, (v49 - v56));
    }

    v57 = v55 + v49;
    *v57 = 0x1C0000800B000000;
    *(v57 + 2) = 922812416;
    *(v57 + 12) = *(v4 + 1572);
    *(v57 + 28) = 0x3E00008019000000;
    *(v57 + 9) = 922812416;
    *(v57 + 20) = *(v4 + 1588);
    MSChapFillWithRandom((v4 + 1532), 0x10u);
    *(v57 + 42) = *(v4 + 1532);
    *(v57 + 58) = 0;
    MSChap2((v4 + 1572), (v4 + 1532), a1[5], a1[8], *(a1 + 18), v4 + 1548);
    v58 = *(v4 + 1548);
    *(v57 + 82) = *(v4 + 1564);
    *(v57 + 66) = v58;
    bzero(v57 + 90, v52 - v50);
    v59 = SSLWrite(*v4, v19, &v57[v52 - v50 + 90] - v19, processed);
    if (!v59)
    {
      goto LABEL_58;
    }

    v26 = v59;
    v27 = EAPLogGetLogHandle();
    v28 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v31 = v30;
  LogHandle = EAPLogGetLogHandle();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v10))
  {
    *buf = 136315394;
    *&buf[4] = EAPSSLErrorString(v31);
    *&buf[12] = 2048;
    *&buf[14] = v31;
    v12 = "EAPTLSComputeKeyData failed, %s (%ld)";
    goto LABEL_38;
  }

  return EAPTLSPacketCreate(2, 21, a2, *(v4 + 120), (v4 + 40), (v4 + 72));
}

_DWORD *MSChapFillWithRandom(_DWORD *result, unsigned int a2)
{
  if (a2 >= 4)
  {
    v2 = result;
    v3 = a2 >> 2;
    do
    {
      result = arc4random();
      *v2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t MSChap2(const void *a1, const void *a2, char *a3, UInt8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v16 = *MEMORY[0x277D85DE8];
  ChallengeHash(a2, a1, a3, &v13);
  v9 = password_to_unicode(a4, v7, data);
  CC_MD4(data, v9, &md);
  return ChallengeResponse(&v13, &md, a6, v10, v11);
}

uint64_t ChallengeHash(const void *a1, const void *a2, char *__s, void *a4)
{
  v5 = __s;
  v13 = *MEMORY[0x277D85DE8];
  memset(&v11, 0, sizeof(v11));
  v8 = strrchr(__s, 92);
  if (v8)
  {
    v5 = v8 + 1;
  }

  CC_SHA1_Init(&v11);
  CC_SHA1_Update(&v11, a1, 0x10u);
  CC_SHA1_Update(&v11, a2, 0x10u);
  v9 = strlen(v5);
  CC_SHA1_Update(&v11, v5, v9);
  result = CC_SHA1_Final(md, &v11);
  *a4 = *md;
  return result;
}

uint64_t ChallengeResponse(void *a1, __int128 *a2, uint64_t a3, double a4, uint8x8_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v12 = *a2;
  DesEncrypt(a1, &v12, a3, *&v12, a5);
  DesEncrypt(a1, &v12 + 7, (a3 + 8), v7, v8);
  return DesEncrypt(a1, &v12 | 0xE, (a3 + 16), v9, v10);
}

uint64_t DesEncrypt(void *dataIn, uint64_t a2, void *dataOut, uint8x8_t a4, uint8x8_t a5)
{
  v5 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 4);
  a4.i32[0] = *a2;
  v7 = vmovl_u8(a4).u64[0];
  key = v7.i8[0] & 0xFE;
  a5.i32[0] = *(a2 + 1);
  v8 = *(a2 + 5);
  v15 = ((v8 | (v6 << 8)) >> 5) & 0xFE;
  v9 = vand_s8(vshl_u16(vorr_s8(vshl_n_s16(v7, 8uLL), *&vmovl_u8(a5)), 0xFFFCFFFDFFFEFFFFLL), 0xFE00FE00FE00FELL);
  v14 = vuzp1_s8(v9, v9).u32[0];
  v10 = *(a2 + 6);
  v16 = ((v10 | (v8 << 8)) >> 6) & 0xFE;
  v17 = 2 * v10;
  do
  {
    *(&key + v5) = odd_parity[*(&key + v5)];
    ++v5;
  }

  while (v5 != 8);
  dataOutMoved = 0;
  result = CCCrypt(0, 1u, 0, &key, 8uLL, 0, dataIn, 8uLL, dataOut, 8uLL, &dataOutMoved);
  if (result)
  {
    return fprintf(*MEMORY[0x277D85DF8], "DESEncrypt: CCCrypt failed with %d\n", result);
  }

  return result;
}

BOOL MSChap2AuthResponseValid(UInt8 *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, char *a6, const void *a7)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v12 = password_to_unicode(a1, a2, data);
  memset(&c, 0, sizeof(c));
  CC_MD4(data, v12, md);
  CC_MD4(md, 0x10u, v21);
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, v21, 0x10u);
  CC_SHA1_Update(&c, a3, 0x18u);
  CC_SHA1_Update(&c, &magic1, 0x27u);
  CC_SHA1_Final(v22, &c);
  ChallengeHash(a4, a5, a6, v23);
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, v22, 0x14u);
  CC_SHA1_Update(&c, v23, 8u);
  CC_SHA1_Update(&c, &magic2, 0x29u);
  CC_SHA1_Final(v22, &c);
  v13 = 0;
  *md = 15699;
  v14 = v20;
  do
  {
    snprintf(__str, 3uLL, "%02X", v22[v13]);
    *(v14 - 1) = *__str;
    ++v13;
    v14 += 2;
  }

  while (v13 != 20);
  return memcmp(md, a7, 0x2AuLL) == 0;
}

uint64_t EAPClientModulePluginServerKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 24) + 80);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t eapttls_server_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 149))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 182;
}

void eapttls_free(CFTypeRef **a1)
{
  v1 = *a1;
  if (*a1)
  {
    eap_client_free_1(*a1);
    if (*v1)
    {
      CFRelease(*v1);
      *v1 = 0;
    }

    my_CFRelease(v1 + 14);
    my_CFRelease(v1 + 35);
    memoryIOClearBuffers((v1 + 10));
    free(v1);
    *a1 = 0;
  }
}

const char *EAPSecurityErrorString(int a1)
{
  if (a1 <= -9842)
  {
    switch(a1)
    {
      case -25300:
        return "errSecItemNotFound";
      case -25299:
        return "errSecDuplicateItem";
      case -25291:
        return "errSecNotAvailable";
      default:
        return "<unknown>";
    }
  }

  else
  {
    switch(a1)
    {
      case -9841:
        return "errSSLServerAuthCompleted";
      case -9840:
        return "<unknown>";
      case -9839:
        return "errSSLPeerUserCancelled";
      case -9838:
        return "errSSLPeerInternalError";
      case -9837:
        return "errSSLPeerInsufficientSecurity";
      case -9836:
        return "errSSLPeerProtocolVersion";
      case -9835:
        return "errSSLPeerExportRestriction";
      case -9834:
        return "errSSLPeerDecryptError";
      case -9833:
        return "errSSLPeerDecodeError";
      case -9832:
        return "errSSLPeerAccessDenied";
      case -9831:
        return "errSSLPeerUnknownCA";
      case -9830:
        return "errSSLIllegalParam";
      case -9829:
        return "errSSLPeerCertUnknown";
      case -9828:
        return "errSSLPeerCertExpired";
      case -9827:
        return "errSSLPeerCertRevoked";
      case -9826:
        return "errSSLPeerUnsupportedCert";
      case -9825:
        return "errSSLPeerBadCert";
      case -9824:
        return "errSSLPeerHandshakeFail";
      case -9823:
        return "errSSLPeerDecompressFail";
      case -9822:
        return "errSSLPeerRecordOverflow";
      case -9821:
        return "errSSLPeerDecryptionFail";
      case -9820:
        return "errSSLPeerBadRecordMac";
      case -9819:
        return "errSSLPeerUnexpectedMsg";
      case -9818:
        return "errSSLBadCipherSuite";
      case -9817:
        return "errSSLBufferOverflow";
      case -9816:
        return "errSSLClosedNoNotify";
      case -9815:
        return "errSSLCertNotYetValid";
      case -9814:
        return "errSSLCertExpired";
      case -9813:
        return "errSSLNoRootCert";
      case -9812:
        return "errSSLUnknownRootCert";
      case -9811:
        return "errSSLModuleAttach";
      case -9810:
        return "errSSLInternal";
      case -9809:
        return "errSSLCrypto";
      case -9808:
        return "errSSLBadCert";
      case -9807:
        return "errSSLXCertChainInvalid";
      case -9806:
        return "errSSLClosedAbort";
      case -9805:
        return "errSSLClosedGraceful";
      case -9804:
        return "errSSLSessionNotFound";
      case -9803:
        return "errSSLWouldBlock";
      case -9802:
        return "errSSLFatalAlert";
      case -9801:
        return "errSSLNegotiation";
      case -9800:
        return "errSSLProtocol";
      default:
        if (a1 == -50)
        {
          result = "errSecParam";
        }

        else
        {
          if (a1)
          {
            return "<unknown>";
          }

          result = "noErr";
        }

        break;
    }
  }

  return result;
}

uint64_t eapmschapv2_init(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 0;
  *a2 = 0;
  v4 = malloc_type_malloc(0x46CuLL, 0x1000040B413CCD7uLL);
  *a1 = v4;
  v4[104] = 0;
  *v4 = 0;
  *(v4 + 4) = 0;
  *(v4 + 3) = *(a1 + 20);
  return 0;
}

uint64_t eapmschapv2_process(unsigned int **a1, uint64_t a2, char **a3, int *a4, _DWORD *a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  *a4 = 0;
  *a5 = 0;
  *a3 = 0;
  if (*a2 != 1)
  {
    goto LABEL_90;
  }

  Length = EAPPacketGetLength(a2);
  v11 = Length;
  if (Length <= 8)
  {
    LogHandle = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v13))
    {
LABEL_84:
      v47 = 0;
      goto LABEL_85;
    }

    *buf = 67109376;
    *v74 = v11;
    *&v74[4] = 2048;
    *&v74[6] = 9;
    v14 = "eapmschapv2_request: length %d < %ld";
    goto LABEL_5;
  }

  v18 = *(a2 + 5);
  if (v18 == 4)
  {
    v70 = 0;
    v71 = 0;
    v19 = *a1;
    v20 = **a1;
    v21 = v20 > 5;
    v22 = (1 << v20) & 0x2A;
    if (v21 || v22 == 0)
    {
      goto LABEL_84;
    }

    v72 = 0;
    v24 = Length - 9;
    if (Length == 9)
    {
      v25 = 0;
      goto LABEL_48;
    }

    v25 = malloc_type_malloc(Length - 8, 0x8AFD7B42uLL);
    memcpy(v25, (a2 + 9), v24);
    *(v25 + v24) = 0;
    v26 = mschap2_message_int32_attr(v25, v24, "E=", &v72);
    mschap2_message_int32_attr(v25, v24, "R=", &v71);
    mschap2_message_int32_attr(v25, v24, "V=", &v70);
    v27 = strnstr(v25, "C=", v24);
    v28 = v24 < 0x23 || v27 == 0;
    v29 = v28;
    if (!v28)
    {
      v67 = v26;
      v68 = v29;
      v30 = v19;
      v31 = 0;
      v69 = v30;
      v32 = v30 + 14;
      buf[2] = 0;
      v33 = v27 + 3;
      do
      {
        *buf = *(v33 - 1);
        *(v32 + v31++) = strtoul(buf, 0, 16);
        v33 += 2;
      }

      while (v31 != 16);
      v19 = v69;
      v26 = v67;
      v29 = v68;
    }

    strnstr(v25, "M=", v24);
    if (!v26)
    {
      goto LABEL_48;
    }

    v34 = EAPLogGetLogHandle();
    v35 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v34, v35))
    {
      *buf = 67109632;
      *v74 = v72;
      *&v74[4] = 1024;
      *&v74[6] = v71;
      *&v74[10] = 1024;
      *&v74[12] = v70;
      _os_log_impl(&dword_249EFB000, v34, v35, "MSCHAPv2 Error = %d, Retry = %d, Version = %d", buf, 0x14u);
    }

    if (v29)
    {
      v36 = EAPLogGetLogHandle();
      v37 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v36, v37))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v36, v37, "MSCHAPv2 Failure Request does not contain challenge", buf, 2u);
      }

      goto LABEL_48;
    }

    if (v72 == 648)
    {
      if (v70 != 3 || !a1[8])
      {
        goto LABEL_48;
      }

      if (v19[3] != *(a1 + 5))
      {
        v54 = a1[10];
        if (v54)
        {
          Value = CFDictionaryGetValue(v54, @"NewPassword");
          if (Value)
          {
            v56 = my_CFStringToCString(Value, 134217984);
            if (v56)
            {
              v57 = v56;
              v58 = strlen(v56);
              v47 = EAPMSCHAPv2ChangePasswordPacketCreate(a1, *(a2 + 1), *(a2 + 6) + 1, v57, v58);
              free(v57);
              if (v47)
              {
                v59 = 3;
LABEL_81:
                *v19 = v59;
                goto LABEL_95;
              }

              goto LABEL_48;
            }
          }
        }
      }

      v47 = 0;
      *(v19 + 9) = 1;
    }

    else
    {
      if (!v71)
      {
        goto LABEL_48;
      }

      if (v19[3] != *(a1 + 5) && a1[8])
      {
        v62 = EAPMSCHAPv2ResponsePacketCreate(a1, *(a2 + 1), *(a2 + 6) + 1, 0);
        if (v62)
        {
          v47 = v62;
          v59 = 1;
          goto LABEL_81;
        }

LABEL_48:
        *v19 = 0x200000005;
        *a4 = 1;
        v47 = EAPPacketCreate(v19 + 105, 1024, 2, *(a2 + 1), 26, 0, 4, 0);
        v47[5] = 4;
        v47[6] = *(a2 + 6);
        *(v47 + 7) = 1024;
        goto LABEL_95;
      }

      v47 = 0;
      *(v19 + 8) = 1;
    }

    v53 = 3;
LABEL_94:
    *a4 = v53;
LABEL_95:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_85;
  }

  if (v18 == 3)
  {
    if (Length <= 0x32)
    {
      LogHandle = EAPLogGetLogHandle();
      v13 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v13))
      {
        goto LABEL_84;
      }

      *buf = 67109376;
      *v74 = v11;
      *&v74[4] = 2048;
      *&v74[6] = 51;
      v14 = "length %d < %ld";
LABEL_5:
      v15 = LogHandle;
      v16 = v13;
      v17 = 18;
LABEL_6:
      _os_log_impl(&dword_249EFB000, v15, v16, v14, buf, v17);
      goto LABEL_84;
    }

    v38 = *a1;
    v39 = **a1;
    if (v39 == 1 || v39 == 4)
    {
      v25 = 0;
      v41 = a1[8];
      v42 = *(a1 + 18);
    }

    else
    {
      if (v39 != 3)
      {
        goto LABEL_84;
      }

      v48 = CFDictionaryGetValue(a1[10], @"NewPassword");
      if (!v48)
      {
        v63 = EAPLogGetLogHandle();
        v64 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v63, v64))
        {
          goto LABEL_84;
        }

        *buf = 0;
        v14 = "NewPassword is missing";
        v15 = v63;
        v16 = v64;
        v17 = 2;
        goto LABEL_6;
      }

      v41 = my_CFStringToCString(v48, 134217984);
      v42 = strlen(v41);
      v25 = v41;
    }

    if (MSChap2AuthResponseValid(v41, v42, v38 + 8, v38 + 4, v38 + 14, a1[5], (a2 + 9)))
    {
      if (*v38 == 3)
      {
        v49 = EAPLogGetLogHandle();
        v50 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v49, v50))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v49, v50, "eapmschapv2_success_request: change password succeeded", buf, 2u);
        }
      }

      MSChap2_MPPEGetMasterKey(v41, v42, v38 + 8, buf);
      MSChap2_MPPEGetAsymetricStartKey(buf, v38 + 18, 16, 1, 1);
      MSChap2_MPPEGetAsymetricStartKey(buf, v38 + 22, 16, 0, 1);
      *(v38 + 104) = 1;
      *v38 = 4;
      v47 = EAPPacketCreate(v38 + 105, 1024, 2, *(a2 + 1), 26, 0, 1, 0);
      v47[5] = 3;
      goto LABEL_95;
    }

    v51 = EAPLogGetLogHandle();
    v52 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v51, v52))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v51, v52, "eapmschapv2_success_request: invalid server auth response", buf, 2u);
    }

    v47 = 0;
    *v38 = 0x200000005;
    v53 = 1;
    goto LABEL_94;
  }

  if (v18 != 1)
  {
    goto LABEL_84;
  }

  if (Length <= 0x19)
  {
    LogHandle = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v13))
    {
      goto LABEL_84;
    }

    *buf = 67109376;
    *v74 = v11;
    *&v74[4] = 2048;
    *&v74[6] = 26;
    v14 = "eapmschapv2_challenge: length %d < %ld";
    goto LABEL_5;
  }

  v43 = *a1;
  *(v43 + 104) = 0;
  *v43 = 0;
  *(v43 + 4) = 0;
  if (a1[8])
  {
    v44 = CFDictionaryGetValue(a1[10], @"EAPMSCHAPv2ServerChallenge");
    if (v44)
    {
      v45 = v44;
      if (CFDataGetLength(v44) != 16)
      {
        v60 = EAPLogGetLogHandle();
        v61 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v60, v61))
        {
          *buf = 134218240;
          *v74 = CFDataGetLength(v45);
          *&v74[8] = 2048;
          *&v74[10] = 16;
          _os_log_impl(&dword_249EFB000, v60, v61, "eapmschapv2_challenge: internal error %ld != %ld", buf, 0x16u);
        }

        v47 = 0;
        *a4 = 8;
        v43[1] = 2;
        goto LABEL_85;
      }

      v46 = *CFDataGetBytePtr(v45);
    }

    else
    {
      v46 = *(a2 + 10);
    }

    *(v43 + 14) = v46;
    v47 = EAPMSCHAPv2ResponsePacketCreate(a1, *(a2 + 1), *(a2 + 6), a4);
    if (v47)
    {
      *v43 = 1;
    }
  }

  else
  {
    v47 = 0;
    *(v43 + 8) = 1;
    *a4 = 3;
  }

LABEL_85:
  *a3 = v47;
  if (*v6 == 4)
  {
    v65 = 1;
    goto LABEL_89;
  }

  if (*v6 == 5)
  {
    v65 = 2;
LABEL_89:
    v6[1] = v65;
  }

LABEL_90:
  v6[3] = *(a1 + 5);
  return v6[1];
}

void eapmschapv2_free_packet(uint64_t a1, void *a2)
{
  if ((*a1 + 105) != a2)
  {
    free(a2);
  }
}

double MSChap2_MPPEGetMasterKey(UInt8 *a1, uint64_t a2, const void *a3, _OWORD *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = password_to_unicode(a1, a2, data);
  CC_MD4(data, v6, &md);
  CC_MD4(&md, 0x10u, v9);
  memset(&md, 0, sizeof(md));
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  CC_SHA1_Init(&md);
  CC_SHA1_Update(&md, v9, 0x10u);
  CC_SHA1_Update(&md, a3, 0x18u);
  CC_SHA1_Update(&md, "This is the MPPE Master Key", 0x1Bu);
  CC_SHA1_Final(v10, &md);
  result = *v10;
  *a4 = *v10;
  return result;
}

void *MSChap2_MPPEGetAsymetricStartKey(const void *a1, void *a2, int a3, int a4, int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v11, 0, sizeof(v11));
  if (a4 != a5)
  {
    v8 = &Magic2;
  }

  else
  {
    v8 = &Magic3;
  }

  *md = 0;
  v13 = 0;
  v14 = 0;
  CC_SHA1_Init(&v11);
  CC_SHA1_Update(&v11, a1, 0x10u);
  CC_SHA1_Update(&v11, &SHSpad1, 0x28u);
  CC_SHA1_Update(&v11, v8, 0x54u);
  CC_SHA1_Update(&v11, &SHSpad2, 0x28u);
  CC_SHA1_Final(md, &v11);
  if (a3 >= 16)
  {
    v9 = 16;
  }

  else
  {
    v9 = a3;
  }

  return memcpy(a2, md, v9);
}

uint64_t eapmschapv2_session_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 104))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 72;
}

BOOL PACTLVAttributeListParse(void *a1, unsigned __int16 *a2, uint64_t a3, __CFString *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  v26 = a1 + 6;
  v27 = a1 + 5;
  v28 = a1 + 3;
  v29 = a1 + 2;
  v24 = a1 + 1;
  v25 = a1 + 4;
  while (1)
  {
    if (v5 <= 3)
    {
      if (a4)
      {
        goto LABEL_60;
      }

      LogHandle = EAPLogGetLogHandle();
      v23 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(LogHandle, v23);
      if (!result)
      {
        return result;
      }

      goto LABEL_64;
    }

    v8 = a2[1];
    v9 = __rev16(v8);
    if (v9 + 4 > v5)
    {
      break;
    }

    v10 = bswap32(*a2) >> 16;
    v11 = v10 & 0x3FFF;
    if (a4)
    {
      v12 = "Unknown";
      if ((v11 - 1) <= 9)
      {
        v12 = off_278FBE028[v11 - 1];
      }

      v13 = v10 < 0;
      v14 = &unk_249F2FF71;
      if (v13)
      {
        v14 = " [mandatory]";
      }

      CFStringAppendFormat(a4, 0, @"%s PACTLV Attribute (type=%d) Length=%d%s\n", v12, v11, v9, v14);
      print_data_cfstr(a4, (a2 + 2), v9);
    }

    if (v11 <= 4)
    {
      if (v11 == 1)
      {
        if (!a1)
        {
          goto LABEL_55;
        }

        if (!v8)
        {
          goto LABEL_55;
        }

        v17 = a1;
        if (*a1)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (v11 == 2)
      {
        if (!a1 || !v8)
        {
          goto LABEL_55;
        }

        v17 = v24;
      }

      else
      {
        if (v11 != 4 || a1 == 0 || v8 == 0)
        {
          goto LABEL_55;
        }

        v17 = v25;
      }

      goto LABEL_53;
    }

    if (v11 <= 8)
    {
      if (v11 == 5)
      {
        if (!a1 || !v8)
        {
          goto LABEL_55;
        }

        v17 = v26;
      }

      else
      {
        if (v11 != 7 || a1 == 0 || v8 == 0)
        {
          goto LABEL_55;
        }

        v17 = v27;
      }

LABEL_53:
      if (!*v17)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    if (v11 == 9)
    {
      if (a1 && *v29)
      {
        goto LABEL_55;
      }

      v20 = PACTLVAttributeListParse(a1, a2 + 2, v9, a4);
      if (!a1)
      {
        goto LABEL_55;
      }

      if (!v8)
      {
        goto LABEL_55;
      }

      v17 = v29;
      if (!v20)
      {
        goto LABEL_55;
      }

LABEL_54:
      *v17 = a2;
      goto LABEL_55;
    }

    if (v11 == 10)
    {
      if (v9 < 2)
      {
        return 0;
      }

      if (a1)
      {
        v17 = v28;
        goto LABEL_53;
      }
    }

LABEL_55:
    a2 = (a2 + v9 + 4);
    v5 = (v5 - (v9 + 4));
    if (!v5)
    {
      return 1;
    }
  }

  if (a4)
  {
LABEL_60:
    CFStringAppendFormat(a4, 0, @"EAP-FAST: TLV attribute is too short (%d < %d)", v5, 4);
    return 0;
  }

  LogHandle = EAPLogGetLogHandle();
  v23 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(LogHandle, v23);
  if (!result)
  {
    return result;
  }

LABEL_64:
  *buf = 67109376;
  v31 = v5;
  v32 = 1024;
  v33 = 4;
  _os_log_impl(&dword_249EFB000, LogHandle, v23, "EAP-FAST: TLV attribute is too short (%d < %d)", buf, 0xEu);
  return 0;
}

BOOL save_pac(void *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v37 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v34 = Mutable;
  dict_add_tlv_as_data(Mutable, @"AuthorityID", a1[4], 0);
  v3 = a1[5];
  if (v3)
  {
    dict_add_tlv_as_string(Mutable, @"AuthorityIDInfo", v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dict_add_tlv_as_string(Mutable, @"InitiatorID", v4);
  }

  dict_add_tlv_as_data(Mutable, @"PACOpaque", a1[1], 1);
  dict_add_tlv_as_data(Mutable, @"PACInfo", a1[2], 0);
  v5 = a1[6];
  if (v5)
  {
    v6 = (v5 + 4);
    v7 = bswap32(*(v5 + 2)) >> 16;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = pac_list_copy();
  v35 = v8;
  if (!v8)
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v36 = MutableCopy;
    goto LABEL_15;
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v8);
  v36 = MutableCopy;
  pac = pac_list_find_pac(MutableCopy, (a1[4] + 4), bswap32(*(a1[4] + 2)) >> 16, v6, v7);
  if (pac == -1)
  {
LABEL_15:
    v11 = -1;
    goto LABEL_16;
  }

  v11 = pac;
  ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, pac);
  v13 = CFDictionaryGetValue(ValueAtIndex, @"PACKeyKeychainItemID");
  v37 = v13;
  if (v13)
  {
    v14 = v13;
    CFDictionarySetValue(Mutable, @"PACKeyKeychainItemID", v13);
    v15 = CFDataCreate(0, (*a1 + 4), bswap32(*(*a1 + 2)) >> 16);
    v39 = v15;
    v16 = EAPSecKeychainPasswordItemSet(0, v14, v15);
    if (v16 == -25300)
    {
      v43 = 0;
      v44 = 0;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      pac_keychain_init_items(v6, v7, &v40, &v44, &v43, &v41);
      v17 = EAPSecKeychainPasswordItemCreateWithAccess(0, v44, v14, v41, v43, v40, v15);
      if (v17)
      {
        LogHandle = EAPLogGetLogHandle();
        v29 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v29))
        {
          v30 = EAPSecurityErrorString(v17);
          *buf = 136315394;
          v46 = v30;
          v47 = 1024;
          v48 = v17;
          _os_log_impl(&dword_249EFB000, LogHandle, v29, "EAP-FAST: EAPSecKeychainPasswordItemCreateWithAccess failed,%s (%d)", buf, 0x12u);
        }
      }

      my_CFRelease(&v42);
      my_CFRelease(&v44);
      my_CFRelease(&v43);
      my_CFRelease(&v41);
      my_CFRelease(&v40);
    }

    else
    {
      v17 = v16;
      if (!v16)
      {
        my_CFRelease(&v39);
        goto LABEL_21;
      }

      v31 = EAPLogGetLogHandle();
      v32 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v31, v32))
      {
        *buf = 136315394;
        v46 = EAPSecurityErrorString(v17);
        v47 = 1024;
        v48 = v17;
        _os_log_impl(&dword_249EFB000, v31, v32, "EAP-FAST: EAPSecKeychainPasswordItemSet failed, %s (%d)", buf, 0x12u);
      }
    }

    my_CFRelease(&v39);
    if (!v17)
    {
      goto LABEL_21;
    }

LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

LABEL_16:
  v18 = *a1;
  v19 = bswap32(*(*a1 + 2)) >> 16;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  value = 0;
  pac_keychain_init_items(v6, v7, &v40, &v44, &v43, &v41);
  v39 = CFDataCreate(0, (v18 + 4), v19);
  UniqueWithAccess = EAPSecKeychainPasswordItemCreateUniqueWithAccess(0, v44, v41, v43, v40, v39, &value);
  if (UniqueWithAccess)
  {
    v21 = UniqueWithAccess;
    v22 = EAPLogGetLogHandle();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = EAPSecurityErrorString(v21);
      *buf = 136315394;
      v46 = v24;
      v47 = 1024;
      v48 = v21;
      _os_log_impl(&dword_249EFB000, v22, v23, "EAP-FAST: EAPSecKeychainPasswordItemCreateUniqueWithAccess failed,%s (%d)", buf, 0x12u);
    }
  }

  my_CFRelease(&v42);
  my_CFRelease(&v44);
  my_CFRelease(&v43);
  my_CFRelease(&v41);
  my_CFRelease(&v40);
  my_CFRelease(&v39);
  v37 = value;
  if (!value)
  {
    goto LABEL_31;
  }

  CFDictionarySetValue(Mutable, @"PACKeyKeychainItemID", value);
  my_CFRelease(&v37);
  if (v11 == -1)
  {
    CFArrayAppendValue(MutableCopy, Mutable);
    goto LABEL_23;
  }

LABEL_21:
  CFArraySetValueAtIndex(MutableCopy, v11, Mutable);
LABEL_23:
  v25 = *MEMORY[0x277CBF040];
  v26 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"PACList", v36, @"com.apple.network.eapclient.eapfast", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v27 = CFPreferencesSynchronize(@"com.apple.network.eapclient.eapfast", v25, v26) != 0;
LABEL_32:
  my_CFRelease(&v34);
  my_CFRelease(&v35);
  my_CFRelease(&v36);
  return v27;
}