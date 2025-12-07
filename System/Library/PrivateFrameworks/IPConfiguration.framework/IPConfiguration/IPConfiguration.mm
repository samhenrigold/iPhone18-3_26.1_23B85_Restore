uint64_t DHCPv6PDServiceCreate(const __CFString *a1, void *a2, unsigned int a3, uint64_t a4)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  keys = 0;
  v39 = 0;
  v40[0] = 0;
  v31 = 0;
  values = 0;
  v35 = 0;
  v36 = 0;
  IPConfigurationServiceGetTypeID();
  v37[0] = 0;
  if (a2)
  {
    inet_ntop(30, a2, v37, 0x2Eu);
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    v9 = &v29 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &dword_254970000, "%s(%@) prefix '%s' length %d");
    *v11 = 136315906;
    *(v11 + 4) = "DHCPv6PDServiceCreate";
    *(v11 + 12) = 2112;
    *(v11 + 14) = a1;
    *(v11 + 22) = 2080;
    *(v11 + 24) = v37;
    *(v11 + 32) = 1024;
    *(v11 + 34) = a3;
    __SC_log_send();
  }

  Instance = 0;
  if (a3 > 0x80 || !a1 || a4)
  {
    return Instance;
  }

  keys = *MEMORY[0x277CE1760];
  values = @"DHCPv6PD";
  if (!a2)
  {
    v13 = &v39;
    v14 = &v35;
    v15 = 1;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v40;
  v14 = &v36;
  v31 = sub_254978CFC(a2);
  v39 = @"RequestedPrefix";
  v35 = v31;
  v15 = 2;
  if (a3)
  {
LABEL_10:
    valuePtr = a3;
    v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v32 = v16;
    *v13 = @"RequestedPrefixLength";
    *v14 = v16;
    ++v15;
  }

LABEL_11:
  v17 = MEMORY[0x277CBF138];
  v18 = MEMORY[0x277CBF150];
  v19 = CFDictionaryCreate(0, &keys, &values, v15, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sub_254978A20(&v31);
  sub_254978A20(&v32);
  keys = @"IPv6Entity";
  values = v19;
  v20 = CFDictionaryCreate(0, &keys, &values, 1, v17, v18);
  CFRelease(v19);
  v21 = sub_254972D9C(a1, v20);
  CFRelease(v20);
  if (!v21)
  {
    goto LABEL_19;
  }

  pthread_once(&stru_27F612B90, sub_254971920);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  v33 = Instance;
  *(Instance + 16) = v21;
  v22 = dispatch_queue_create("DHCPv6PDService", 0);
  *(Instance + 40) = v22;
  if (!v22)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = _os_log_pack_size();
      v25 = &v29 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v24, *v26, &dword_254970000, "%s: dispatch_queue_create failed", v29);
      *v27 = 136315138;
      *(v27 + 4) = "DHCPv6PDServiceCreate";
      __SC_log_send();
    }

    goto LABEL_19;
  }

  v23 = sub_254972AF0(Instance, @"DHCPv6PDService", 0, sub_25497117C, 0, (Instance + 32));
  *(Instance + 24) = v23;
  if (!v23)
  {
LABEL_19:
    sub_254978A20(&v33);
    return v33;
  }

  return Instance;
}

void sub_25497117C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_254972880(a3);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = IPConfigurationServiceCopyInformation(v5);
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_254974198(v4[2]);
      }

      global_queue = v4[7];
      if (!global_queue)
      {
        global_queue = dispatch_get_global_queue(0, 0);
      }

      v9 = v4[6];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_254971AC8;
      block[3] = &unk_2797973A0;
      block[4] = v9;
      block[5] = v6;
      v11 = v7;
      dispatch_async(global_queue, block);
    }
  }
}

void DHCPv6PDServiceSetQueueAndHandler(uint64_t a1, const char *a2, const char *a3)
{
  block[7] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_2549713C0;
    block[3] = &unk_279797338;
    block[5] = a1;
    block[6] = a2;
    block[4] = a3;
    dispatch_sync(v4, block);
  }

  else
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = block - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &dword_254970000, "%s: service queue is NULL", block[0]);
      *v8 = 136315138;
      *(v8 + 4) = "DHCPv6PDServiceSetQueueAndHandler";
      __SC_log_send();
    }
  }
}

void sub_2549713C0(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = *(v2 + 48);
  if (v4)
  {
    _Block_release(v4);
    *(v2 + 48) = 0;
  }

  if (v3)
  {
    *(v2 + 48) = _Block_copy(v3);
  }

  v5 = *(v2 + 56);
  if (v5)
  {
    dispatch_release(v5);
    *(v2 + 56) = 0;
  }

  if (v1)
  {
    dispatch_retain(v1);
    *(v2 + 56) = v1;
  }
}

void DHCPv6PDServiceResume(uint64_t a1)
{
  block[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 && *(a1 + 16))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_2549715A8;
    block[3] = &unk_279797358;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      v4 = block - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = __error();
      v6 = _os_log_pack_fill(v4, v3, *v5, &dword_254970000, "%s: invalid object", block[0]);
      *v6 = 136315138;
      *(v6 + 4) = "DHCPv6PDServiceResume";
      __SC_log_send();
    }
  }
}

void sub_2549715B0(uint64_t a1)
{
  values[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 16;
  values[0] = IPConfigurationServiceGetNotificationKey(*(a1 + 16));
  v3 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
  SCDynamicStoreSetNotificationKeys(*(v2 + 8), v3, 0);
  CFRelease(v3);
  if (SCDynamicStoreSetDispatchQueue(*(v2 + 8), *(v2 + 24)))
  {
    if (sub_254973CD4(*v2))
    {
      return;
    }

    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &block[-1] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = *__error();
      v7 = _os_log_pack_fill(v5, v4, v6, &dword_254970000, "%s: IPConfigurationServiceStart failed");
LABEL_7:
      *v7 = 136315138;
      *(v7 + 4) = "DHCPv6PDServiceResumeSync";
      __SC_log_send();
    }
  }

  else
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = &block[-1] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = *__error();
      v7 = _os_log_pack_fill(v9, v8, v10, &dword_254970000, "%s: SCDynamicStoreSetDispatchQueue failed");
      goto LABEL_7;
    }
  }

  v12 = *(a1 + 48);
  global_queue = *(a1 + 56);
  sub_254978A20(v2);
  v13 = *(a1 + 24);
  if (v13)
  {
    SCDynamicStoreSetDispatchQueue(v13, 0);
    SCDynamicStoreSetNotificationKeys(*(a1 + 24), 0, 0);
  }

  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_254971C34;
  block[3] = &unk_2797973C8;
  block[4] = v12;
  dispatch_async(global_queue, block);
}

__n128 DHCPv6PDServiceInfoGetPrefix(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

const void *DHCPv6PDServiceInfoGetOptionData(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), @"DHCPv6");
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    CFArrayGetTypeID();
    return 0;
  }

  v5 = CFStringCreateWithFormat(0, 0, @"Option_%d", a2);
  v6 = CFDictionaryGetValue(Value, v5);
  CFRelease(v5);
  v7 = CFArrayGetTypeID();
  if (!v6)
  {
    return 0;
  }

  if (CFGetTypeID(v6) == v7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254971920()
{
  result = _CFRuntimeRegisterClass();
  qword_27F612C00 = result;
  return result;
}

void sub_254971948(const void **a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_254971ABC;
      block[3] = &unk_279797378;
      block[4] = a1;
      dispatch_sync(v3, block);
      v2 = a1[4];
    }

    sub_2549728D4(v2);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    SCDynamicStoreSetDispatchQueue(v4, 0);
    sub_254978A20(a1 + 3);
  }

  sub_254978A20(a1 + 2);
  v5 = a1[6];
  if (v5)
  {
    _Block_release(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    dispatch_release(v6);
    a1[7] = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    dispatch_release(v7);
    a1[5] = 0;
  }
}

__CFString *sub_254971A34(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<DHCPv6PDService %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"service = %@", a1[2]);
  CFStringAppend(Mutable, @"}");
  return Mutable;
}

void sub_254971AC8(uint64_t a1)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  if (v2)
  {
    v13 = 0;
    v12 = 0uLL;
    v11 = 0uLL;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CE1690]);
    TypeID = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v5 = CFDictionaryGetValue(Value, @"DelegatedPrefix");
        v6 = CFStringGetTypeID();
        if (v5)
        {
          if (CFGetTypeID(v5) == v6)
          {
            if (sub_254978AE0(v5, &v11))
            {
              v14 = 0;
              v7 = CFDictionaryGetValue(Value, @"DelegatedPrefixLength");
              if (sub_254978C38(v7, &v14))
              {
                LOBYTE(v12) = v14;
                v8 = CFDictionaryGetValue(Value, @"DelegatedPrefixValidLifetime");
                if (sub_254978C38(v8, &v14))
                {
                  DWORD1(v12) = v14;
                  v9 = CFDictionaryGetValue(Value, @"DelegatedPrefixPreferredLifetime");
                  if (sub_254978C38(v9, &v14))
                  {
                    DWORD2(v12) = v14;
                    v13 = *(a1 + 40);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 48));
  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t IPConfigurationForgetNetwork(const __CFString *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *sp = 0;
  sub_254972A34("Library");
  if (!a1 || !a2)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v12 = _os_log_pack_size();
    v13 = sp - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v12, *v14, &dword_254970000, "%s: interface and SSID must not be NULL", *sp);
    *v15 = 136315138;
    *(v15 + 4) = "IPConfigurationForgetNetwork";
    goto LABEL_11;
  }

  v4 = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.network.IPConfiguration", &sp[1]);
  if (v4)
  {
    v5 = v4;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v7 = _os_log_pack_size();
    v8 = sp - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &dword_254970000, "ipconfig_server_port, %s", *sp);
    v11 = mach_error_string(v5);
    *v10 = 136315138;
    *(v10 + 4) = v11;
    goto LABEL_11;
  }

  v39 = 0uLL;
  sub_254978A58(a1, &v39, 16, 0);
  values = a2;
  keys = @"SSID";
  v16 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Data = CFPropertyListCreateData(0, v16, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(v16);
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v20 = sub_2549784A8(sp[1], &v39, BytePtr, Length, sp);
  CFRelease(Data);
  if (v20)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v21 = _os_log_pack_size();
    v22 = sp - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v21, *v23, &dword_254970000, "ipconfig_forget_network(%s) failed, %s", *sp, values);
    v25 = mach_error_string(v20);
    *v24 = 136315394;
    *(v24 + 4) = &v39;
    *(v24 + 12) = 2080;
    *(v24 + 14) = v25;
    goto LABEL_11;
  }

  v26 = sp[0];
  sub_254978E24();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (v26)
  {
    if (result)
    {
      v27 = _os_log_pack_size();
      v28 = sp - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v27, *v29, &dword_254970000, "ipconfig_forget_network(%s) failed, %s", *sp, values);
      if (sp[0] <= 0x15)
      {
        v31 = off_2797973E8[sp[0]];
      }

      else
      {
        v31 = "<unknown>";
      }

      *v30 = 136315394;
      *(v30 + 4) = &v39;
      *(v30 + 12) = 2080;
      *(v30 + 14) = v31;
LABEL_11:
      __SC_log_send();
      return 0;
    }
  }

  else
  {
    if (result)
    {
      v32 = _os_log_pack_size();
      v33 = sp - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = __error();
      v35 = _os_log_pack_fill(v33, v32, *v34, &dword_254970000, "ipconfig_forget_network(%s) succeeded", *sp);
      *v35 = 136315138;
      *(v35 + 4) = &v39;
      __SC_log_send();
    }

    return 1;
  }

  return result;
}

const void *IPConfigurationCopyIPv4RouterInformation(const __CFString *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v51 = 0uLL;
  v50 = 0;
  v49 = 0;
  *sp = 0;
  v48 = 0;
  sub_254972A34("Library");
  if (!a1)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_254970000, "%s: interface must not be NULL", v46);
      *v14 = 136315138;
      *(v14 + 4) = "IPConfigurationCopyIPv4RouterInformation";
      goto LABEL_11;
    }

    goto LABEL_33;
  }

  v4 = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.network.IPConfiguration", &sp[1]);
  if (v4)
  {
    v5 = v4;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      v7 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &dword_254970000, "ipconfig_server_port, %s", v46);
      v10 = mach_error_string(v5);
      *v9 = 136315138;
      *(v9 + 4) = v10;
LABEL_11:
      __SC_log_send();
      Value = 0;
      v23 = 0;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v51 = 0uLL;
  sub_254978A58(a1, &v51, 16, 0);
  v15 = sub_254978830(sp[1], &v51, &v50, &v49, sp);
  if (v15)
  {
    v16 = v15;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      v18 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v17, *v19, &dword_254970000, "ipconfig_get_ipv4_router_info(%s) failed, %s", v46, *sp);
      v21 = mach_error_string(v16);
      *v20 = 136315394;
      *(v20 + 4) = &v51;
      *(v20 + 12) = 2080;
      *(v20 + 14) = v21;
      goto LABEL_11;
    }

    goto LABEL_33;
  }

  if (!v50)
  {
    if (sp[0])
    {
LABEL_23:
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v34 = _os_log_pack_size();
        v35 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = __error();
        v37 = _os_log_pack_fill(v35, v34, *v36, &dword_254970000, "ipconfig_get_ipv4_router_info(%s) failed, %s", v46, *sp);
        if (sp[0] <= 0x15)
        {
          v38 = off_2797973E8[sp[0]];
        }

        else
        {
          v38 = "<unknown>";
        }

        *v37 = 136315394;
        *(v37 + 4) = &v51;
        *(v37 + 12) = 2080;
        *(v37 + 14) = v38;
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_33;
    }

    v39 = _os_log_pack_size();
    v40 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = *__error();
    v33 = _os_log_pack_fill(v40, v39, v41, &dword_254970000, "ipconfig_get_ipv4_router() returned no information");
LABEL_32:
    *v33 = 0;
    goto LABEL_11;
  }

  v24 = sub_254978DAC(v50, v49);
  v48 = v24;
  MEMORY[0x259C20D70](*MEMORY[0x277D85F48], v50, v49);
  TypeID = CFDictionaryGetTypeID();
  if (!v24 || CFGetTypeID(v24) != TypeID)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_33;
    }

    v30 = _os_log_pack_size();
    v31 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *__error();
    v33 = _os_log_pack_fill(v31, v30, v32, &dword_254970000, "ipconfig_get_ipv4_router() returned invalid data");
    goto LABEL_32;
  }

  if (sp[0])
  {
    goto LABEL_23;
  }

  Value = CFDictionaryGetValue(v24, @"ARPResolvedHardwareAddress");
  v23 = CFDictionaryGetValue(v24, @"ARPResolvedIPAddress");
  if (!sub_25497282C(Value) || !sub_25497282C(v23))
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v42 = _os_log_pack_size();
      v43 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = *__error();
      v33 = _os_log_pack_fill(v43, v42, v44, &dword_254970000, "ipconfig_get_ipv4_router() missing properties");
      goto LABEL_32;
    }

LABEL_33:
    Value = 0;
    v23 = 0;
    goto LABEL_34;
  }

  CFRetain(Value);
  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v26 = _os_log_pack_size();
    v27 = &sp[-2] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v26, *v28, &dword_254970000, "ipconfig_get_ipv4_router_info(%s) success", v46);
    *v29 = 136315138;
    *(v29 + 4) = &v51;
    __SC_log_send();
  }

LABEL_34:
  if (a2)
  {
    if (v23)
    {
      CFRetain(v23);
    }

    *a2 = v23;
  }

  sub_254978A20(&v48);
  return Value;
}

const void *sub_25497282C(const void *a1)
{
  TypeID = CFStringGetTypeID();
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

_DWORD *sub_254972890(uint64_t a1)
{
  result = malloc_type_malloc(0x10uLL, 0x10C0040AE459949uLL);
  *result = a1;
  result[2] = 1;
  return result;
}

void sub_2549728D4(atomic_uint *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit == 1)
  {

    free(a1);
  }

  else if (add_explicit <= 0)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      v3 = v5 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v4 = __error();
      *_os_log_pack_fill(v3, v2, *v4, &dword_254970000, "IPConfigurationService: retain count already zero") = 0;
      __SC_log_send();
    }

    abort();
  }
}

void sub_254972A34(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_254972ABC;
  block[3] = &unk_279797498;
  block[4] = a1;
  if (qword_2815358A0 != -1)
  {
    dispatch_once(&qword_2815358A0, block);
  }
}

uint64_t sub_254972ABC(uint64_t a1)
{
  v1 = os_log_create("com.apple.IPConfiguration", *(a1 + 32));

  return sub_254978E18(v1);
}

SCDynamicStoreRef sub_254972AF0(uint64_t a1, const __CFString *a2, NSObject *a3, void (__cdecl *a4)(SCDynamicStoreRef, CFArrayRef, void *), uint64_t a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  context.version = xmmword_2866BF650;
  *&context.retain = *off_2866BF660;
  context.copyDescription = qword_2866BF670;
  v11 = sub_254972890(a1);
  context.info = v11;
  v12 = SCDynamicStoreCreate(0, a2, a4, &context);
  v26 = v12;
  if (!v12)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_13;
    }

    v18 = _os_log_pack_size();
    v19 = &v25 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *__error();
    v17 = _os_log_pack_fill(v19, v18, v20, &dword_254970000, "SCDynamicStoreCreate(%@) failed");
    goto LABEL_12;
  }

  v13 = v12;
  if (a5 && !SCDynamicStoreSetDisconnectCallBack())
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_13;
    }

    v21 = _os_log_pack_size();
    v22 = &v25 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *__error();
    v17 = _os_log_pack_fill(v22, v21, v23, &dword_254970000, "SCDynamicStoreSetDisconnectCallBack(%@) failed");
    goto LABEL_12;
  }

  if (!a3 || SCDynamicStoreSetDispatchQueue(v13, a3))
  {
    goto LABEL_15;
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v14 = _os_log_pack_size();
    v15 = &v25 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = *__error();
    v17 = _os_log_pack_fill(v15, v14, v16, &dword_254970000, "SCDynamicStoreSetDispatchQueue(%@) failed");
LABEL_12:
    *v17 = 138412290;
    *(v17 + 4) = a2;
    __SC_log_send();
  }

LABEL_13:
  sub_254978A20(&v26);
  if (v11)
  {
    sub_2549728D4(v11);
    v11 = 0;
  }

LABEL_15:
  *a6 = v11;
  return v26;
}

uint64_t sub_254972D9C(const __CFString *a1, const __CFDictionary *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v53 = 0;
  pthread_once(&stru_281535888, sub_254975544);
  *BOOLean = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  if (!a2)
  {
    Value = 1;
    goto LABEL_6;
  }

  if (!sub_254973610(a2, @"NoPublish", BOOLean))
  {
    goto LABEL_70;
  }

  if (BOOLean[0])
  {
    Value = CFBooleanGetValue(BOOLean[0]);
  }

  else
  {
    Value = 1;
  }

  v12 = @"MTU";
  v13 = CFDictionaryGetValue(a2, @"MTU");
  BOOLean[1] = v13;
  if (v13)
  {
    v14 = v13;
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(v14) != TypeID)
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_70;
      }

LABEL_47:
      v34 = _os_log_pack_size();
      v35 = &v52 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = *__error();
      v37 = _os_log_pack_fill(v35, v34, v36, &dword_254970000, "invalid '%@' option");
      *v37 = 138412290;
      *(v37 + 4) = v12;
LABEL_69:
      __SC_log_send();
      goto LABEL_70;
    }
  }

  v12 = @"APNName";
  v16 = CFDictionaryGetValue(a2, @"APNName");
  *&v55 = v16;
  if (v16)
  {
    v17 = v16;
    v18 = CFStringGetTypeID();
    if (CFGetTypeID(v17) != v18)
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_70;
      }

      goto LABEL_47;
    }
  }

  if (!sub_254973610(a2, @"ClearState", &v55 + 1) || !sub_254973610(a2, @"EnableL4S", &v56 + 1))
  {
    goto LABEL_70;
  }

  if (CFDictionaryContainsKey(a2, @"IPv4Entity"))
  {
    if (!sub_254973764(a2, &v57))
    {
      goto LABEL_70;
    }
  }

  else
  {
    LOBYTE(v56) = 1;
    if (!sub_2549738A4(a2, &v57))
    {
      goto LABEL_70;
    }
  }

LABEL_6:
  pthread_once(&stru_281535888, sub_254975544);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  v6 = (Instance + 16);
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  v53 = Instance;
  if (!Instance)
  {
    goto LABEL_70;
  }

  v7 = Instance;
  *v6 = 0;
  *(Instance + 24) = 0;
  sub_254978A58(a1, v6, 16, 0);
  v8 = sub_254978D68(0);
  *(v7 + 184) = v8;
  v9 = *MEMORY[0x277CBED28];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v67 = @"MonitorPID";
  v68 = @"NoPublish";
  v10 = BOOLean[0];
  if (!BOOLean[0])
  {
    v10 = v9;
  }

  v73 = 0;
  v62 = 0uLL;
  v63 = 0uLL;
  v64 = 0uLL;
  v65 = 0uLL;
  v66 = 0;
  v60 = v9;
  v61 = v10;
  if (BOOLean[1])
  {
    *&v69 = @"MTU";
    *&v62 = BOOLean[1];
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  *(&v67 + v11) = @"ServiceID";
  *(&v60 + v11) = v8;
  v19 = v11 + 1;
  v20 = v55;
  if (*(&v55 + 1))
  {
    v9 = *(&v55 + 1);
  }

  *(&v67 + v19) = @"ClearState";
  *(&v60 + v19) = v9;
  v21 = v11 + 2;
  if (v20)
  {
    *(&v67 + v21) = @"APNName";
    *(&v60 + v21) = v20;
    v21 = v11 + 3;
  }

  v22 = v56;
  if (v56)
  {
    v23 = *(&v57 + 1);
    if (*(&v57 + 1))
    {
      *(&v67 + v21) = @"PerformNUD";
      *(&v60 + v21++) = v23;
    }

    v24 = *(&v58 + 1);
    if (*(&v58 + 1))
    {
      *(&v67 + v21) = @"EnableDAD";
      *(&v60 + v21++) = v24;
    }

    v25 = v59;
    if (v59)
    {
      *(&v67 + v21) = @"EnableCLAT46";
      *(&v60 + v21++) = v25;
    }

    v26 = *(&v59 + 1);
    if (*(&v59 + 1))
    {
      *(&v67 + v21) = @"EnableDHCPv6";
      *(&v60 + v21++) = v26;
    }
  }

  v27 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    *(&v67 + v21) = @"EnableL4S";
    *(&v60 + v21++) = v27;
  }

  v28 = CFDictionaryCreate(0, &v67, &v60, v21, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v29 = v57;
  if (v22)
  {
    if (v57)
    {
      v30 = v58;
      if (v58)
      {
        v31 = *MEMORY[0x277CE1770];
        if (!CFDictionaryContainsKey(v57, *MEMORY[0x277CE1770]))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v29);
          CFDictionarySetValue(MutableCopy, v31, v30);
LABEL_58:
          v40 = MEMORY[0x277CE1690];
          goto LABEL_59;
        }
      }

      v32 = CFRetain(v29);
    }

    else
    {
      keys = *MEMORY[0x277CE1760];
      v77 = 0;
      values = *MEMORY[0x277CE1840];
      v75 = 0;
      if (v58)
      {
        v77 = *MEMORY[0x277CE1770];
        v75 = v58;
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }

      v32 = CFDictionaryCreate(0, &keys, &values, v38, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    MutableCopy = v32;
    goto LABEL_58;
  }

  if (v57)
  {
    v33 = CFRetain(v57);
  }

  else
  {
    v33 = CFDictionaryCreate(0, MEMORY[0x277CE1730], MEMORY[0x277CE1810], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  MutableCopy = v33;
  v40 = MEMORY[0x277CE1688];
LABEL_59:
  v41 = *v40;
  v67 = @"__IPConfigurationServiceOptions";
  v68 = v41;
  v60 = v28;
  v61 = MutableCopy;
  v42 = CFDictionaryCreate(0, &v67, &v60, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(v28);
  CFRelease(MutableCopy);
  *(v7 + 208) = v42;
  *(v7 + 216) = v22;
  if (Value)
  {
    NetworkServiceEntity = CFStringCreateWithFormat(0, 0, @"Plugin:IPConfigurationService:%@", *(v7 + 184));
  }

  else
  {
    v44 = MEMORY[0x277CE1690];
    if (!v22)
    {
      v44 = MEMORY[0x277CE1688];
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, *MEMORY[0x277CE1648], *(v7 + 184), *v44);
  }

  *(v7 + 56) = 0u;
  *(v7 + 192) = NetworkServiceEntity;
  v45 = *(v7 + 184);
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  sub_254978A58(v45, (v7 + 56), 128, 0);
  v46 = dispatch_queue_create("IPConfigurationService", 0);
  *(v7 + 48) = v46;
  if (!v46)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v48 = _os_log_pack_size();
      v49 = &v52 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = __error();
      *_os_log_pack_fill(v49, v48, *v50, &dword_254970000, "dispatch_queue_create failed") = 0;
      goto LABEL_69;
    }

LABEL_70:
    sub_254978A20(&v53);
    return v53;
  }

  v47 = sub_254972AF0(v7, @"IPConfigurationService", v46, nullsub_1, sub_254973B14, (v7 + 200));
  *(v7 + 40) = v47;
  if (!v47)
  {
    goto LABEL_70;
  }

  return v7;
}

uint64_t sub_254973610(const __CFDictionary *a1, const void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(Value) != TypeID))
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v8 = _os_log_pack_size();
      v9 = v12 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v8, *v10, &dword_254970000, "invalid '%@' option");
      *v11 = 138412290;
      *(v11 + 4) = a2;
      __SC_log_send();
      result = 0;
    }

    Value = 0;
  }

  else
  {
    result = 1;
  }

  *a3 = Value;
  return result;
}

uint64_t sub_254973764(const __CFDictionary *a1, const __CFDictionary **a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"IPv4Entity");
  if (!Value)
  {
    return 1;
  }

  v4 = Value;
  if (sub_2549747D8(Value))
  {
    *a2 = v4;
    return 1;
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v6 = _os_log_pack_size();
    v7 = v10 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &dword_254970000, "invalid '%@' option");
    *v9 = 138412290;
    *(v9 + 4) = @"IPv4Entity";
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_2549738A4(const __CFDictionary *a1, const __CFDictionary **a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  result = sub_254973610(a1, @"PerformNUD", a2 + 1);
  if (result)
  {
    result = sub_254973610(a1, @"EnableDAD", a2 + 3);
    if (result)
    {
      result = sub_254973610(a1, @"EnableCLAT46", a2 + 4);
      if (result)
      {
        result = sub_254973610(a1, @"EnableDHCPv6", a2 + 5);
        if (result)
        {
          v18[0] = 0;
          v18[1] = 0;
          v5 = @"IPv6Entity";
          Value = CFDictionaryGetValue(a1, @"IPv6Entity");
          if (Value)
          {
            v7 = Value;
            if (!sub_254974EE8(Value))
            {
              sub_254978E24();
              _SC_syslog_os_log_mapping();
              result = __SC_log_enabled();
              if (!result)
              {
                return result;
              }

              v14 = _os_log_pack_size();
              v15 = &v18[-1] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
              v16 = *__error();
              v13 = _os_log_pack_fill(v15, v14, v16, &dword_254970000, "invalid '%@' option");
              goto LABEL_18;
            }

            *a2 = v7;
          }

          v5 = @"IPv6LinkLocalAddress";
          v8 = CFDictionaryGetValue(a1, @"IPv6LinkLocalAddress");
          if (!v8)
          {
            return 1;
          }

          v9 = v8;
          if (sub_254978AE0(v8, v18) && LOBYTE(v18[0]) == 254 && (BYTE1(v18[0]) & 0xC0) == 0x80)
          {
            a2[2] = v9;
            return 1;
          }

          sub_254978E24();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (result)
          {
            v10 = _os_log_pack_size();
            v11 = &v18[-1] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
            v12 = *__error();
            v13 = _os_log_pack_fill(v11, v10, v12, &dword_254970000, "invalid '%@' option");
LABEL_18:
            *v13 = 138412290;
            *(v13 + 4) = v5;
            __SC_log_send();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_254973B14(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  result = sub_254972880(a2);
  if (result)
  {
    v3 = result;
    if (*(result + 32))
    {
      Value = CFDictionaryGetValue(*(result + 208), @"__IPConfigurationServiceOptions");
      if (Value)
      {
        v5 = Value;
        if (CFDictionaryContainsKey(Value, @"ClearState"))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
          CFDictionaryRemoveValue(MutableCopy, @"ClearState");
          v7 = CFDictionaryCreateMutableCopy(0, 0, *(v3 + 208));
          CFDictionarySetValue(v7, @"__IPConfigurationServiceOptions", MutableCopy);
          CFRelease(MutableCopy);
          CFRelease(*(v3 + 208));
          *(v3 + 208) = v7;
        }
      }

      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        v9 = v12 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &dword_254970000, "IPConfigurationService: re-establishing service over %s", v12[0]);
        *v11 = 136315138;
        *(v11 + 4) = v3 + 16;
        __SC_log_send();
      }

      return sub_254973EAC(v3, *(v3 + 32));
    }

    else
    {
      *(result + 217) = 1;
    }
  }

  return result;
}

uint64_t sub_254973CD4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  sp = 0;
  v2 = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.network.IPConfiguration", &sp);
  if (v2)
  {
    v3 = v2;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &block[-1] - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &dword_254970000, "ipconfig_server_port, %s", v11);
      v8 = mach_error_string(v3);
      *v7 = 136315138;
      *(v7 + 4) = v8;
      __SC_log_send();
    }
  }

  else if (!sub_254973EAC(a1, sp))
  {
    v10 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_25497417C;
    block[3] = &unk_279797510;
    block[4] = a1;
    v13 = sp;
    dispatch_sync(v10, block);
    return 1;
  }

  if (sp)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], sp);
  }

  return 0;
}

uint64_t sub_254973EAC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x277D85DE8];
  HIDWORD(v22) = 0;
  Data = CFPropertyListCreateData(0, *(a1 + 208), kCFPropertyListBinaryFormat_v1_0, 0, 0);
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v7 = a1 + 16;
  v8 = sub_254977D2C(v2, (a1 + 16), BytePtr, Length, (a1 + 56), &v22 + 1);
  if (v8)
  {
LABEL_2:
    v9 = v8;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      v11 = &v22 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v10, *v12, &dword_254970000, "ipconfig_add_service(%s) failed, %s", v22, v23);
      v14 = mach_error_string(v9);
      *v13 = 136315394;
      *(v13 + 4) = v7;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v14;
LABEL_4:
      __SC_log_send();
    }
  }

  else
  {
    v16 = 0;
    while (HIDWORD(v22))
    {
      if (((HIDWORD(v22) == 15) & ~v16) == 0)
      {
        sub_254978E24();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          break;
        }

        v17 = _os_log_pack_size();
        v18 = &v22 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = __error();
        v20 = _os_log_pack_fill(v18, v17, *v19, &dword_254970000, "ipconfig_add_service(%s) failed: %s", v22, v23);
        if (HIDWORD(v22) <= 0x15)
        {
          v21 = off_279797578[HIDWORD(v22)];
        }

        else
        {
          v21 = "<unknown>";
        }

        *v20 = 136315394;
        *(v20 + 4) = v7;
        *(v20 + 12) = 2080;
        *(v20 + 14) = v21;
        goto LABEL_4;
      }

      sub_254977F50(v2, (a1 + 16), BytePtr, Length, &v22 + 1);
      v8 = sub_254977D2C(v2, (a1 + 16), BytePtr, Length, (a1 + 56), &v22 + 1);
      v16 = 1;
      if (v8)
      {
        goto LABEL_2;
      }
    }
  }

  CFRelease(Data);
  return HIDWORD(v22);
}

uint64_t sub_25497417C(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(a1 + 32);
  *(result + 32) = v1;
  if (*(result + 217))
  {
    return sub_254973EAC(result, v1);
  }

  return result;
}

BOOL sub_254974198(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 17;
  v1 = *(a1 + 48);
  if (v1 && *(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = sub_254974268;
    v4[3] = &unk_279797538;
    v4[4] = &v5;
    v4[5] = a1;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 6) == 0;
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_254974268(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = sub_254978660(*(*(a1 + 40) + 32), (*(a1 + 40) + 16), (*(a1 + 40) + 56), (*(*(a1 + 32) + 8) + 24));
  if (result)
  {
    v3 = result;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v4 = _os_log_pack_size();
      v5 = __error();
      v6 = _os_log_pack_fill(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4, *v5, &dword_254970000, "ipconfig_is_service_valid(%s %s) failed, %s", v11, v12, v13);
      v7 = *(a1 + 40);
      v8 = v7 + 16;
      v9 = v7 + 56;
      v10 = mach_error_string(v3);
      *v6 = 136315650;
      *(v6 + 4) = v8;
      *(v6 + 12) = 2080;
      *(v6 + 14) = v9;
      *(v6 + 22) = 2080;
      *(v6 + 24) = v10;
      return __SC_log_send();
    }
  }

  return result;
}

const void *IPConfigurationServiceCreate(const __CFString *a1, const __CFDictionary *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = v11 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &dword_254970000, "%s(%@)");
    *v7 = 136315394;
    *(v7 + 4) = "IPConfigurationServiceCreate";
    *(v7 + 12) = 2112;
    *(v7 + 14) = a1;
    __SC_log_send();
  }

  v8 = sub_254972D9C(a1, a2);
  v9 = v8;
  v11[0] = v8;
  if (v8 && !sub_254973CD4(v8))
  {
    sub_254978A20(v11);
    return v11[0];
  }

  return v9;
}

CFPropertyListRef IPConfigurationServiceCopyInformation(uint64_t a1)
{
  v1 = SCDynamicStoreCopyValue(*(a1 + 40), *(a1 + 192));
  v4 = v1;
  if (v1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v1) != TypeID)
    {
      sub_254978A20(&v4);
      return v4;
    }
  }

  return v1;
}

uint64_t IPConfigurationServiceRefreshConfiguration(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  HIDWORD(v15) = 0;
  v1 = a1 + 16;
  v2 = a1 + 56;
  result = sub_2549782D8(*(a1 + 32), (a1 + 16), (a1 + 56), &v15 + 1);
  if (result)
  {
    v4 = result;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v5 = _os_log_pack_size();
    v6 = &v15 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &dword_254970000, "ipconfig_refresh_service(%s %s) failed, %s", v15, v16, v17);
    v9 = mach_error_string(v4);
    *v8 = 136315650;
    *(v8 + 4) = v1;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v2;
    *(v8 + 22) = 2080;
    *(v8 + 24) = v9;
    return __SC_log_send();
  }

  if (HIDWORD(v15))
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v10 = _os_log_pack_size();
      v11 = &v15 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v10, *v12, &dword_254970000, "ipconfig_refresh_service(%s %s) failed: %s", v15, v16, v17);
      if (HIDWORD(v15) <= 0x15)
      {
        v14 = off_279797578[HIDWORD(v15)];
      }

      else
      {
        v14 = "<unknown>";
      }

      *v13 = 136315650;
      *(v13 + 4) = v1;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v2;
      *(v13 + 22) = 2080;
      *(v13 + 24) = v14;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_2549747D8(const __CFDictionary *a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CE1730]);
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  if (CFEqual(Value, *MEMORY[0x277CE1828]))
  {
    v36 = 0;
    v37[0] = 0;
    v4 = *MEMORY[0x277CE1728];
    v5 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1728]);
    v6 = CFArrayGetTypeID();
    if (!v5 || CFGetTypeID(v5) != v6)
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 0;
      }

      v14 = _os_log_pack_size();
      v15 = &v35 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v17 = _os_log_pack_fill(v15, v14, v16, &dword_254970000, "%@ missing/invalid");
      goto LABEL_19;
    }

    Count = CFArrayGetCount(v5);
    if (!Count)
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 0;
      }

      v26 = _os_log_pack_size();
      v27 = &v35 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *__error();
      v17 = _os_log_pack_fill(v27, v26, v28, &dword_254970000, "%@ empty array");
      goto LABEL_19;
    }

    v8 = Count;
    if (!sub_254974CB8(a1, *MEMORY[0x277CE1750], Count, &v36) || !sub_254974CB8(a1, *MEMORY[0x277CE1740], v8, v37))
    {
      return 0;
    }

    v9 = 2;
    if (v36)
    {
      v9 = 3;
    }

    if (v37[0])
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9;
    }

    v4 = *MEMORY[0x277CE1748];
    v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1748]);
    if (v11)
    {
      v12 = v11;
      v13 = CFStringGetTypeID();
      if (CFGetTypeID(v12) == v13)
      {
        ++v10;
        goto LABEL_29;
      }

      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return 0;
      }

      v32 = _os_log_pack_size();
      v33 = &v35 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = *__error();
      v17 = _os_log_pack_fill(v33, v32, v34, &dword_254970000, "%@ invalid");
LABEL_19:
      *v17 = 138412290;
      *(v17 + 4) = v4;
LABEL_20:
      __SC_log_send();
      return 0;
    }

    goto LABEL_29;
  }

  if (!CFEqual(Value, *MEMORY[0x277CE1810]))
  {
    result = CFEqual(Value, *MEMORY[0x277CE1820]);
    if (!result)
    {
      return result;
    }

    goto LABEL_28;
  }

  v4 = *MEMORY[0x277CE1738];
  v19 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1738]);
  if (!v19)
  {
LABEL_28:
    v10 = 1;
    goto LABEL_29;
  }

  v20 = v19;
  v21 = CFStringGetTypeID();
  if (CFGetTypeID(v20) != v21)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v29 = _os_log_pack_size();
    v30 = &v35 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *__error();
    v17 = _os_log_pack_fill(v30, v29, v31, &dword_254970000, "invalid %@");
    goto LABEL_19;
  }

  v10 = 2;
LABEL_29:
  if (v10 == CFDictionaryGetCount(a1))
  {
    return 1;
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v22 = _os_log_pack_size();
    v23 = &v35 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v22, *v24, &dword_254970000, "IPv4 entity %@ contains extra properties");
    *v25 = 138412290;
    *(v25 + 4) = a1;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_254974CB8(const __CFDictionary *a1, const void *a2, uint64_t a3, void *a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  *a4 = 0;
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    goto LABEL_4;
  }

  TypeID = CFArrayGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v11 = _os_log_pack_size();
    v12 = v20 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v11, *v13, &dword_254970000, "%@ invalid");
    *v14 = 138412290;
    *(v14 + 4) = a2;
    __SC_log_send();
    return 0;
  }

  Count = CFArrayGetCount(Value);
  if (Count == a3)
  {
LABEL_4:
    *a4 = Value;
    return 1;
  }

  v15 = Count;
  sub_254978E24();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v16 = _os_log_pack_size();
    v17 = v20 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &dword_254970000, "%@ array size %ld != %ld");
    *v19 = 138412802;
    *(v19 + 4) = a2;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v15;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a3;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_254974EE8(const __CFDictionary *a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CE1760]);
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  if (!CFEqual(Value, *MEMORY[0x277CE1850]))
  {
    if (CFEqual(Value, *MEMORY[0x277CE1840]) || CFEqual(Value, *MEMORY[0x277CE1848]))
    {
      v14 = 1;
    }

    else
    {
      result = CFEqual(Value, @"DHCPv6PD");
      if (!result)
      {
        return result;
      }

      v4 = @"RequestedPrefix";
      v24 = CFDictionaryGetValue(a1, @"RequestedPrefix");
      if (v24)
      {
        v25 = v24;
        v26 = CFStringGetTypeID();
        if (CFGetTypeID(v25) != v26)
        {
          sub_254978E24();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            return result;
          }

          v37 = _os_log_pack_size();
          v38 = v46 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
          v39 = *__error();
          v30 = _os_log_pack_fill(v38, v37, v39, &dword_254970000, "%@ not a string");
          goto LABEL_42;
        }

        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v4 = @"RequestedPrefixLength";
      v34 = CFDictionaryGetValue(a1, @"RequestedPrefixLength");
      if (v34)
      {
        v35 = v34;
        v36 = CFNumberGetTypeID();
        if (CFGetTypeID(v35) != v36)
        {
          sub_254978E24();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            return result;
          }

          v40 = _os_log_pack_size();
          v41 = v46 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
          v42 = *__error();
          v30 = _os_log_pack_fill(v41, v40, v42, &dword_254970000, "%@ not a number");
          goto LABEL_42;
        }

        ++v14;
      }
    }

    goto LABEL_19;
  }

  v4 = *MEMORY[0x277CE1758];
  v5 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1758]);
  v6 = *MEMORY[0x277CE1778];
  v7 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1778]);
  v8 = CFArrayGetTypeID();
  if (!v5 || CFGetTypeID(v5) != v8 || (v9 = CFArrayGetTypeID(), !v7) || CFGetTypeID(v7) != v9)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v16 = _os_log_pack_size();
    v17 = v46 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill(v17, v16, v18, &dword_254970000, "IPv6 entity contains invalid %@ or %@");
LABEL_15:
    *v19 = 138412546;
    *(v19 + 4) = v4;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v6;
LABEL_43:
    __SC_log_send();
    return 0;
  }

  Count = CFArrayGetCount(v5);
  if (!Count)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v27 = _os_log_pack_size();
    v28 = v46 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = *__error();
    v30 = _os_log_pack_fill(v28, v27, v29, &dword_254970000, "IPv6 entity contains empty %@");
    goto LABEL_42;
  }

  if (Count != CFArrayGetCount(v7))
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v31 = _os_log_pack_size();
    v32 = v46 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = *__error();
    v19 = _os_log_pack_fill(v32, v31, v33, &dword_254970000, "IPv6 %@ and %@ are different sizes");
    goto LABEL_15;
  }

  v4 = *MEMORY[0x277CE1780];
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1780]);
  if (v11)
  {
    v12 = v11;
    v13 = CFStringGetTypeID();
    if (CFGetTypeID(v12) == v13)
    {
      v14 = 4;
      goto LABEL_19;
    }

    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v43 = _os_log_pack_size();
    v44 = v46 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = *__error();
    v30 = _os_log_pack_fill(v44, v43, v45, &dword_254970000, "%@ invalid");
LABEL_42:
    *v30 = 138412290;
    *(v30 + 4) = v4;
    goto LABEL_43;
  }

  v14 = 3;
LABEL_19:
  if (CFDictionaryGetCount(a1) == v14)
  {
    return 1;
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v20 = _os_log_pack_size();
    v21 = v46 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __error();
    v23 = _os_log_pack_fill(v21, v20, *v22, &dword_254970000, "IPv6 entity %@ contains extra properties");
    *v23 = 138412290;
    *(v23 + 4) = a1;
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_254975544()
{
  sub_254972A34("Library");
  result = _CFRuntimeRegisterClass();
  qword_281535898 = result;
  return result;
}

void sub_254975578(uint64_t a1)
{
  block[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_254975924;
      block[3] = &unk_279797558;
      block[4] = a1;
      dispatch_sync(v3, block);
      v2 = *(a1 + 200);
    }

    sub_2549728D4(v2);
    *(a1 + 200) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    SCDynamicStoreSetDispatchQueue(v4, 0);
    sub_254978A20((a1 + 40));
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    HIDWORD(v22) = 0;
    v7 = a1 + 16;
    v8 = a1 + 56;
    v9 = sub_254978108(v6, (a1 + 16), (a1 + 56), &v22 + 1);
    if (v9)
    {
      v10 = v9;
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_20:
        mach_port_deallocate(*MEMORY[0x277D85F48], *(a1 + 32));
        *(a1 + 32) = 0;
        goto LABEL_21;
      }

      v11 = _os_log_pack_size();
      v12 = &v21 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &dword_254970000, "ipconfig_remove_service_on_interface(%s %s) failed, %s", v21, v22, block[0]);
      v15 = mach_error_string(v10);
      *v14 = 136315650;
      *(v14 + 4) = v7;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v8;
      *(v14 + 22) = 2080;
      *(v14 + 24) = v15;
    }

    else
    {
      if (!HIDWORD(v22))
      {
        goto LABEL_20;
      }

      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_20;
      }

      v16 = _os_log_pack_size();
      v17 = &v21 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &dword_254970000, "ipconfig_remove_service_on_interface(%s %s) failed: %s", v21, v22, block[0]);
      if (HIDWORD(v22) <= 0x15)
      {
        v20 = off_279797578[HIDWORD(v22)];
      }

      else
      {
        v20 = "<unknown>";
      }

      *v19 = 136315650;
      *(v19 + 4) = v7;
      *(v19 + 12) = 2080;
      *(v19 + 14) = v8;
      *(v19 + 22) = 2080;
      *(v19 + 24) = v20;
    }

    __SC_log_send();
    goto LABEL_20;
  }

LABEL_21:
  sub_254978A20((a1 + 208));
  sub_254978A20((a1 + 192));
  sub_254978A20((a1 + 184));
}

__CFString *sub_254975898(char *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<IPConfigurationService %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"ifname = %s, serviceID = %s", a1 + 16, a1 + 56);
  CFStringAppend(Mutable, @"}");
  return Mutable;
}

_DWORD *PvDInfoRequestCreate(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (qword_27F612C10 != -1)
  {
    sub_254978E30();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0;
  v23 = Instance;
  if (Instance && (v9 = Instance, v10 = sub_254972890(Instance), (*(v9 + 16) = v10) != 0) && (v11 = dispatch_queue_create("PvDInfoRequestQueue", 0), v12 = *(v9 + 24), *(v9 + 24) = v11, v12, *(v9 + 24)))
  {
    *(v9 + 40) = 0;
    v13 = *(v9 + 56);
    *(v9 + 56) = 0;

    v14 = *(v9 + 48);
    *(v9 + 48) = 0;

    v15 = *(v9 + 64);
    *(v9 + 64) = 0;

    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    CFRetain(a1);
    if (a2)
    {
      CFRetain(a2);
    }

    *(v9 + 72) = a1;
    *(v9 + 80) = a2;
    *(v9 + 88) = a3;
    *(v9 + 96) = a4;
  }

  else
  {
    v16 = sub_254978E24();
    v17 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v24, 0, sizeof(v24));
      v18 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
      v19 = os_log_type_enabled(v16, v17) ? v18 : 2;
      v22 = 0;
      v20 = _os_log_send_and_compose_impl(v19, 0, v24, 256, &dword_254970000, v16, v17, "failed to create a PvDInfoRequest object", &v22, 2);
      __SC_log_send2();
      if (v20 != v24)
      {
        free(v20);
      }
    }

    sub_254978A20(&v23);
    return v23;
  }

  return v9;
}

void PvDInfoRequestSetCompletionHandler(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254975C30;
  block[3] = &unk_279797630;
  v12 = v5;
  v13 = a1;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, block);
}

void sub_254975C30(uint64_t a1)
{
  sub_254975D34(*(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 16);
  v4 = *(a1 + 40);
  v5 = dispatch_source_create(MEMORY[0x277D85CE0], 0, 0, v2);
  if (v5)
  {
    sub_254972870(v3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_25497704C;
    v9[3] = &unk_2797976E0;
    v11 = v3;
    v10 = v4;
    v6 = _Block_copy(v9);
    dispatch_source_set_event_handler(v5, v6);
    dispatch_activate(v5);
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 32);
  *(v7 + 32) = v5;
}

BOOL sub_254975D34(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 32));
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;

    sub_2549728D4(*(a1 + 16));
  }

  return v1 != 0;
}

void PvDInfoRequestCancel(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254975F98;
    block[3] = &unk_279797650;
    block[4] = a1;
    dispatch_sync(v2, block);
    v3 = *(a1 + 16);
    sub_254972870(v3);
    v4 = *(a1 + 24);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_254975FA0;
    v10[3] = &unk_279797650;
    v10[4] = v3;
    dispatch_async(v4, v10);
  }

  else
  {
    v5 = sub_254978E24();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v14, 0, sizeof(v14));
      if (*MEMORY[0x277CE1608] <= 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      if (os_log_type_enabled(v5, v6))
      {
        v8 = v7;
      }

      else
      {
        v8 = 2;
      }

      v12 = 136315138;
      v13 = "PvDInfoRequestCancel";
      v9 = _os_log_send_and_compose_impl(v8, 0, v14, 256, &dword_254970000, v5, v6, "%s: null request", &v12);
      __SC_log_send2();
      if (v9 != v14)
      {
        free(v9);
      }
    }
  }
}

void sub_254975FA0(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_254972880(*(a1 + 32));
  sub_2549728D4(*(a1 + 32));
  if (v2)
  {
    sub_25497611C(v2);
    sub_254976174(v2);
    *(v2 + 104) = 0;
  }

  else
  {
    v3 = sub_254978E24();
    v4 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v9, 0, sizeof(v9));
      if (*MEMORY[0x277CE1608] <= 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      if (os_log_type_enabled(v3, v4))
      {
        v6 = v5;
      }

      else
      {
        v6 = 2;
      }

      v8[0] = 0;
      v7 = _os_log_send_and_compose_impl(v6, 0, v9, 256, &dword_254970000, v3, v4, "request no longer valid", v8, 2);
      __SC_log_send2();
      if (v7 != v9)
      {
        free(v7);
      }
    }
  }
}

void sub_25497611C(uint64_t a1)
{
  sub_254976FF4(a1);
  v2 = *(a1 + 56);
  if (v2)
  {
    [v2 cancelRequest];
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;
  }

  *(a1 + 40) = 0;
}

double sub_254976174(uint64_t a1)
{
  sub_254978A20((a1 + 72));
  sub_254978A20((a1 + 80));
  sub_254978A20((a1 + 112));
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void PvDInfoRequestResume(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    sub_254972870(v2);
    v3 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254976388;
    block[3] = &unk_279797670;
    block[4] = a1;
    block[5] = v2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = sub_254978E24();
    v5 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v12, 0, sizeof(v12));
      if (*MEMORY[0x277CE1608] <= 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      if (os_log_type_enabled(v4, v5))
      {
        v7 = v6;
      }

      else
      {
        v7 = 2;
      }

      v10 = 136315138;
      v11 = "PvDInfoRequestResume";
      v8 = _os_log_send_and_compose_impl(v7, 0, v12, 256, &dword_254970000, v4, v5, "%s: null request", &v10);
      __SC_log_send2();
      if (v8 != v12)
      {
        free(v8);
      }
    }
  }
}

void sub_254976388(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = sub_254972880(v2);
  if (!v3)
  {
    v10 = sub_254978E24();
    v11 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      aBlock = 0u;
      v61 = 0u;
      v12 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
      v13 = os_log_type_enabled(v10, v11) ? v12 : 2;
      LOWORD(v59) = 0;
      v14 = _os_log_send_and_compose_impl(v13, 0, &aBlock, 256, &dword_254970000, v10, v11, "can't resume a NULL request", &v59, 2);
      __SC_log_send2();
      if (v14 != &aBlock)
      {
        free(v14);
      }
    }

    v15 = 0;
    goto LABEL_59;
  }

  v4 = v3;
  if (*(v3 + 40) == 1)
  {
    v5 = sub_254978E24();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      aBlock = 0u;
      v61 = 0u;
      if (*MEMORY[0x277CE1608] <= 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      if (os_log_type_enabled(v5, v6))
      {
        v8 = v7;
      }

      else
      {
        v8 = 2;
      }

      LOWORD(v59) = 0;
      v9 = _os_log_send_and_compose_impl(v8, 0, &aBlock, 256, &dword_254970000, v5, v6, "can't resume an active request", &v59, 2, v59);
      goto LABEL_46;
    }

LABEL_48:

    v15 = 0;
    goto LABEL_49;
  }

  if (*(v3 + 104))
  {
    v5 = sub_254978E24();
    v16 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_48;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    aBlock = 0u;
    v61 = 0u;
    if (*MEMORY[0x277CE1608] <= 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    if (os_log_type_enabled(v5, v16))
    {
      v18 = v17;
    }

    else
    {
      v18 = 2;
    }

    v9 = _os_log_send_and_compose_impl(v18, 0, &aBlock, 256, &dword_254970000, v5, v16, "can only resume an idle request, current state: %s", &v59);
LABEL_46:
    v35 = v9;
    __SC_log_send2();
    if (v35 != &aBlock)
    {
      free(v35);
    }

    goto LABEL_48;
  }

  v19 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.IPConfiguration.IPConfigurationHelper"];
  if (!v19)
  {
    v5 = sub_254978E24();
    v47 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_48;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    aBlock = 0u;
    v61 = 0u;
    if (*MEMORY[0x277CE1608] <= 0)
    {
      v48 = 2;
    }

    else
    {
      v48 = 3;
    }

    if (os_log_type_enabled(v5, v47))
    {
      v49 = v48;
    }

    else
    {
      v49 = 2;
    }

    v9 = _os_log_send_and_compose_impl(v49, 0, &aBlock, 256, &dword_254970000, v5, v47, "failed creating connection to xpc service '%s'", &v59);
    goto LABEL_46;
  }

  v15 = v19;
  v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2866C0148];
  [v15 setRemoteObjectInterface:v20];

  v21 = [v15 remoteObjectProxyWithErrorHandler:&unk_2866BF6D8];
  if (v21)
  {
    v22 = v21;
    objc_storeStrong((v4 + 48), v15);
    objc_storeStrong((v4 + 56), v22);
    v23 = sub_254978E24();
    v24 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      aBlock = 0u;
      v61 = 0u;
      v25 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
      v26 = os_log_type_enabled(v23, v24) ? v25 : 2;
      LODWORD(v59) = 136315138;
      *(&v59 + 4) = "com.apple.IPConfiguration.IPConfigurationHelper";
      v27 = _os_log_send_and_compose_impl(v26, 0, &aBlock, 256, &dword_254970000, v23, v24, "connecting to xpc service '%s'", &v59);
      __SC_log_send2();
      if (v27 != &aBlock)
      {
        free(v27);
      }
    }

    [*(v4 + 48) activate];
    *(v4 + 40) = 1;
    v28 = sub_254972880(v2);
    if (v28)
    {
      v29 = v28;
      v30 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v28 + 24));
      if (v30)
      {
        v31 = v29[2];
        sub_254972870(v31);
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 3221225472;
        *&v61 = sub_25497720C;
        *(&v61 + 1) = &unk_279797650;
        *&v62 = v31;
        v32 = _Block_copy(&aBlock);
        dispatch_source_set_event_handler(v30, v32);
        v33 = dispatch_time(0, 1000000 * v29[12]);
        dispatch_source_set_timer(v30, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_activate(v30);
      }

      else
      {
        v32 = sub_254978E24();
        v54 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          aBlock = 0u;
          v61 = 0u;
          v55 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
          v56 = os_log_type_enabled(v32, v54) ? v55 : 2;
          LOWORD(v59) = 0;
          v57 = _os_log_send_and_compose_impl(v56, 0, &aBlock, 256, &dword_254970000, v32, v54, "failed to create dispatch source for xpc", &v59, 2);
          __SC_log_send2();
          if (v57 != &aBlock)
          {
            free(v57);
          }
        }
      }

      v34 = v29[8];
      v29[8] = v30;
    }

    else
    {
      v34 = sub_254978E24();
      v50 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        aBlock = 0u;
        v61 = 0u;
        v51 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
        v52 = os_log_type_enabled(v34, v50) ? v51 : 2;
        LOWORD(v59) = 0;
        v53 = _os_log_send_and_compose_impl(v52, 0, &aBlock, 256, &dword_254970000, v34, v50, "can't schedule xpc, null object", &v59, 2);
        __SC_log_send2();
        if (v53 != &aBlock)
        {
          free(v53);
        }
      }
    }

    goto LABEL_69;
  }

LABEL_49:
  if (*(v4 + 72))
  {
    v22 = sub_254978E24();
    v36 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      aBlock = 0u;
      v61 = 0u;
      v37 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
      v38 = os_log_type_enabled(v22, v36) ? v37 : 2;
      v39 = *(v4 + 72);
      v22 = v22;
      CStringPtr = CFStringGetCStringPtr(v39, 0x8000100u);
      LODWORD(v59) = 136315138;
      *(&v59 + 4) = CStringPtr;
      v41 = _os_log_send_and_compose_impl(v38, 0, &aBlock, 256, &dword_254970000, v22, v36, "failed xpc for pvdid '%s'", &v59);

      __SC_log_send2();
      if (v41 != &aBlock)
      {
        v42 = v41;
LABEL_68:
        free(v42);
        goto LABEL_69;
      }
    }

    goto LABEL_69;
  }

LABEL_59:
  v22 = sub_254978E24();
  v43 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    aBlock = 0u;
    v61 = 0u;
    v44 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
    v45 = os_log_type_enabled(v22, v43) ? v44 : 2;
    LOWORD(v59) = 0;
    LODWORD(v58) = 2;
    v46 = _os_log_send_and_compose_impl(v45, 0, &aBlock, 256, &dword_254970000, v22, v43, "failed to schedule xpc", &v59, v58);
    __SC_log_send2();
    if (v46 != &aBlock)
    {
      v42 = v46;
      goto LABEL_68;
    }
  }

LABEL_69:

  sub_2549728D4(*(a1 + 40));
}

uint64_t PvDInfoRequestCopyAdditionalInformation(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_254976E9C;
  v4[3] = &unk_279797698;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFDictionaryRef sub_254976E9C(uint64_t a1)
{
  result = CFDictionaryCreateCopy(0, *(*(a1 + 40) + 112));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_254976ED8()
{
  sub_254972A34("Library");
  result = _CFRuntimeRegisterClass();
  qword_27F612C08 = result;
  return result;
}

void sub_254976F0C(void *a1)
{
  sub_254975D34(a1);
  sub_254976FF4(a1);
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_254977040;
      block[3] = &unk_279797650;
      block[4] = a1;
      dispatch_sync(v3, block);
      v2 = a1[2];
    }

    sub_2549728D4(v2);
    a1[2] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    [v4 cancelRequest];
    v5 = a1[7];
    a1[7] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    [v6 invalidate];
    v7 = a1[6];
    a1[6] = 0;
  }

  sub_254976174(a1);
  v8 = a1[3];
  a1[3] = 0;
}

BOOL sub_254976FF4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 64));
    v3 = *(a1 + 64);
    *(a1 + 64) = 0;

    sub_2549728D4(*(a1 + 16));
  }

  return v1 != 0;
}

uint64_t sub_25497704C(uint64_t a1)
{
  result = sub_254972880(*(a1 + 40));
  if (result)
  {
    result = sub_254975D34(result);
    if (result)
    {
      v3 = *(*(a1 + 32) + 16);

      return v3();
    }
  }

  return result;
}

void sub_2549770A8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sub_254978E24();
  v4 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v10, 0, sizeof(v10));
    if (*MEMORY[0x277CE1608] <= 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v5;
    }

    else
    {
      v6 = 2;
    }

    v8 = 138412290;
    v9 = v2;
    v7 = _os_log_send_and_compose_impl(v6, 0, v10, 256, &dword_254970000, v3, v4, "couldn't get xpc remote object proxy with error '%@'", &v8, 12);
    __SC_log_send2();
    if (v7 != v10)
    {
      free(v7);
    }
  }
}

void sub_25497720C(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = sub_254972880(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    if (sub_254976FF4(v1))
    {
      v3 = *(v2 + 72);
      v4 = *(v2 + 80);
      v5 = [MEMORY[0x277CCACA8] stringWithCString:*(v2 + 88) encoding:4];
      if (v5)
      {
        v6 = *(v2 + 16);
        sub_254972870(v6);
        v7 = *(v2 + 56);
        *&v24 = MEMORY[0x277D85DD0];
        *(&v24 + 1) = 3221225472;
        *&v25 = sub_254977568;
        *(&v25 + 1) = &unk_279797720;
        *&v26 = v6;
        [v7 fetchPvDAdditionalInformationWithPvDID:v3 prefixesArray:v4 bindToInterface:v5 andCompletionHandler:&v24];
        *(v2 + 104) = 1;
      }

      else
      {
        v8 = sub_254978E24();
        v9 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
          v11 = os_log_type_enabled(v8, v9);
          v12 = *(v2 + 88);
          v13 = v11 ? v10 : 2;
          v22 = 136315138;
          v23 = v12;
          v14 = _os_log_send_and_compose_impl(v13, 0, &v24, 256, &dword_254970000, v8, v9, "couldn't create ifname '%s'", &v22);
          __SC_log_send2();
          if (v14 != &v24)
          {
            free(v14);
          }
        }

        if (*(v2 + 104) != 1)
        {
          v15 = sub_254978E24();
          v16 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            if (*MEMORY[0x277CE1608] <= 0)
            {
              v17 = 2;
            }

            else
            {
              v17 = 3;
            }

            v18 = os_log_type_enabled(v15, v16);
            v19 = *(v2 + 72);
            if (v18)
            {
              v20 = v17;
            }

            else
            {
              v20 = 2;
            }

            v22 = 138412290;
            v23 = v19;
            v21 = _os_log_send_and_compose_impl(v20, 0, &v24, 256, &dword_254970000, v15, v16, "couldn't schedule fetch for pvdid '%@'", &v22, 12);
            __SC_log_send2();
            if (v21 != &v24)
            {
              free(v21);
            }
          }

          sub_25497611C(v2);
          sub_254976174(v2);
          *(v2 + 104) = 0;
        }
      }
    }
  }
}

void sub_254977568(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_254972880(*(a1 + 32));
  v21 = v4;
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v6 = [v3 valueForKey:@"valid_fetch"];
    v7 = [v3 valueForKey:@"additional_information"];
    v8 = v7;
    if (v6 == *MEMORY[0x277CBED28] && v7 != 0)
    {
      v5[14] = v7;
    }

    if (v5[3])
    {
      v10 = v5[2];
      sub_254972870(v10);
      v11 = v5[3];
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 3221225472;
      *&v25 = sub_2549778D0;
      *(&v25 + 1) = &unk_279797670;
      *&v26 = v10;
      *(&v26 + 1) = v6;
      dispatch_async(v11, &block);
    }

    else
    {
      v16 = sub_254978E24();
      v17 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        block = 0u;
        if (*MEMORY[0x277CE1608] <= 0)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        if (os_log_type_enabled(v16, v17))
        {
          v19 = v18;
        }

        else
        {
          v19 = 2;
        }

        v22 = 136315138;
        v23 = "PvDInfoRequestCompletedCallback";
        v20 = _os_log_send_and_compose_impl(v19, 0, &block, 256, &dword_254970000, v16, v17, "%s: null request", &v22);
        __SC_log_send2();
        if (v20 != &block)
        {
          free(v20);
        }
      }
    }
  }

  else
  {
    v8 = sub_254978E24();
    v12 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      block = 0u;
      v13 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
      v14 = os_log_type_enabled(v8, v12) ? v13 : 2;
      v22 = 136315138;
      v23 = "PvDInfoRequestXPCCompletionHandler";
      v15 = _os_log_send_and_compose_impl(v14, 0, &block, 256, &dword_254970000, v8, v12, "%s: null object", &v22);
      __SC_log_send2();
      if (v15 != &block)
      {
        free(v15);
      }
    }
  }

  sub_254978A20(&v21);
  sub_2549728D4(*(a1 + 32));
}

void sub_2549778D0(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = sub_254972880(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40) == *MEMORY[0x277CBED10])
    {
      v5 = sub_254978E24();
      v19 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
        v21 = os_log_type_enabled(v5, v19) ? v20 : 2;
        LOWORD(v27) = 0;
        v22 = _os_log_send_and_compose_impl(v21, 0, &v29, 256, &dword_254970000, v5, v19, "xpc reply: failure", &v27, 2);
        __SC_log_send2();
        if (v22 != &v29)
        {
          free(v22);
        }
      }

      v8 = 3;
    }

    else
    {
      v4 = *(v2 + 112);
      v5 = sub_254978E24();
      v6 = _SC_syslog_os_log_mapping();
      v7 = __SC_log_enabled();
      if (v4)
      {
        v8 = 2;
        if (v7)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          if (*MEMORY[0x277CE1608] <= 0)
          {
            v9 = 2;
          }

          else
          {
            v9 = 3;
          }

          v10 = os_log_type_enabled(v5, v6);
          v11 = *(v3 + 112);
          if (v10)
          {
            v12 = v9;
          }

          else
          {
            v12 = 2;
          }

          v27 = 138412290;
          v28 = v11;
          v13 = _os_log_send_and_compose_impl(v12, 0, &v29, 256, &dword_254970000, v5, v6, "xpc reply: got addinfo dict:\n%@", &v27, 12);
          __SC_log_send2();
          if (v13 != &v29)
          {
            free(v13);
          }

          v8 = 2;
        }
      }

      else
      {
        if (v7)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v23 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
          v24 = os_log_type_enabled(v5, v6) ? v23 : 2;
          LOWORD(v27) = 0;
          v25 = _os_log_send_and_compose_impl(v24, 0, &v29, 256, &dword_254970000, v5, v6, "xpc reply: no internet", &v27, 2);
          __SC_log_send2();
          if (v25 != &v29)
          {
            free(v25);
          }
        }

        v8 = 0;
      }
    }

    *(v3 + 104) = v8;
    sub_25497611C(v3);
    v26 = *(v3 + 32);
    if (v26)
    {
      dispatch_source_merge_data(v26, 1uLL);
    }
  }

  else
  {
    v14 = sub_254978E24();
    v15 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = *MEMORY[0x277CE1608] <= 0 ? 2 : 3;
      v17 = os_log_type_enabled(v14, v15) ? v16 : 2;
      LOWORD(v27) = 0;
      v18 = _os_log_send_and_compose_impl(v17, 0, &v29, 256, &dword_254970000, v14, v15, "request no longer valid", &v27, 2);
      __SC_log_send2();
      if (v18 != &v29)
      {
        free(v18);
      }
    }
  }

  sub_2549728D4(*(a1 + 32));
}

uint64_t sub_254977D2C(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, _OWORD *a5, _DWORD *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  msg.msgh_id = 0;
  *(&v22 + 1) = 0;
  v24 = 0u;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  *&msg.msgh_size = 0u;
  v20 = 1;
  v21 = a3;
  LODWORD(v22) = 16777472;
  DWORD1(v22) = a4;
  *(&v22 + 1) = *MEMORY[0x277D85EF8];
  v23 = *a2;
  LODWORD(v24) = a4;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4E2700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(&msg, 3, 0x48u, 0xB0u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v12;
    }

    if (msg.msgh_id == 71)
    {
      v12 = 4294966988;
    }

    else if (msg.msgh_id == 20107)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 168)
        {
          if (!msg.msgh_remote_port)
          {
            v12 = HIDWORD(v21);
            if (!HIDWORD(v21))
            {
              v15 = v27;
              a5[4] = v26;
              a5[5] = v15;
              v16 = *v29;
              a5[6] = v28;
              a5[7] = v16;
              v17 = v23;
              *a5 = v22;
              a5[1] = v17;
              v18 = v25;
              a5[2] = v24;
              a5[3] = v18;
              *a6 = *&v29[16];
              return v12;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v13 = 1;
          }

          else
          {
            v13 = HIDWORD(v21) == 0;
          }

          if (v13)
          {
            v12 = 4294966996;
          }

          else
          {
            v12 = HIDWORD(v21);
          }

          goto LABEL_24;
        }
      }

      v12 = 4294966996;
    }

    else
    {
      v12 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v12;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v12;
}

uint64_t sub_254977F50(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, int *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a3;
  v16 = 16777472;
  v17 = a4;
  v18 = *MEMORY[0x277D85EF8];
  v19 = *a2;
  v20 = a4;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = reply_port;
  *&v13.msgh_voucher_port = 0x4E2A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&v13, 3, 0x48u, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v10;
    }

    if (v13.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (v13.msgh_id == 20110)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 40)
        {
          if (!v13.msgh_remote_port)
          {
            v10 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a5 = v16;
              return v10;
            }

            goto LABEL_24;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v15) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v13);
    return v10;
  }

  mig_put_reply_port(v13.msgh_local_port);
  return v10;
}

uint64_t sub_254978108(mach_port_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a3[4];
  v8 = a3[6];
  v9 = a3[7];
  v28 = a3[5];
  v29 = v8;
  v30 = v9;
  v10 = *a3;
  v11 = a3[1];
  v22 = v6;
  v23 = v10;
  v12 = a3[2];
  v13 = a3[3];
  v24 = v11;
  v25 = v12;
  v21 = *MEMORY[0x277D85EF8];
  v27 = v7;
  v26 = v13;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x4E2D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v16 = mach_msg(&msg, 3, 0xB0u, 0x30u, msgh_local_port, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v17;
    }

    if (msg.msgh_id == 71)
    {
      v17 = 4294966988;
    }

    else if (msg.msgh_id == 20113)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v17 = v22;
            if (!v22)
            {
              *a4 = DWORD1(v22);
              return v17;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v18 = 1;
          }

          else
          {
            v18 = v22 == 0;
          }

          if (v18)
          {
            v17 = 4294966996;
          }

          else
          {
            v17 = v22;
          }

          goto LABEL_24;
        }
      }

      v17 = 4294966996;
    }

    else
    {
      v17 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v17;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v17;
}

uint64_t sub_2549782D8(mach_port_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a3[4];
  v8 = a3[6];
  v9 = a3[7];
  v28 = a3[5];
  v29 = v8;
  v30 = v9;
  v10 = *a3;
  v11 = a3[1];
  v22 = v6;
  v23 = v10;
  v12 = a3[2];
  v13 = a3[3];
  v24 = v11;
  v25 = v12;
  v21 = *MEMORY[0x277D85EF8];
  v27 = v7;
  v26 = v13;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x4E2E00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v16 = mach_msg(&msg, 3, 0xB0u, 0x30u, msgh_local_port, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v17;
    }

    if (msg.msgh_id == 71)
    {
      v17 = 4294966988;
    }

    else if (msg.msgh_id == 20114)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v17 = v22;
            if (!v22)
            {
              *a4 = DWORD1(v22);
              return v17;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v18 = 1;
          }

          else
          {
            v18 = v22 == 0;
          }

          if (v18)
          {
            v17 = 4294966996;
          }

          else
          {
            v17 = v22;
          }

          goto LABEL_24;
        }
      }

      v17 = 4294966996;
    }

    else
    {
      v17 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v17;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v17;
}

uint64_t sub_2549784A8(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, int *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a3;
  v16 = 16777472;
  v17 = a4;
  v18 = *MEMORY[0x277D85EF8];
  v19 = *a2;
  v20 = a4;
  reply_port = mig_get_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = reply_port;
  *&v13.msgh_voucher_port = 0x4E2F00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&v13, 3, 0x48u, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v13.msgh_local_port);
      return v10;
    }

    if (v13.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (v13.msgh_id == 20115)
    {
      if ((v13.msgh_bits & 0x80000000) == 0)
      {
        if (v13.msgh_size == 40)
        {
          if (!v13.msgh_remote_port)
          {
            v10 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a5 = v16;
              return v10;
            }

            goto LABEL_24;
          }
        }

        else if (v13.msgh_size == 36)
        {
          if (v13.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v15) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v13);
    return v10;
  }

  mig_put_reply_port(v13.msgh_local_port);
  return v10;
}

uint64_t sub_254978660(mach_port_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a3[4];
  v8 = a3[6];
  v9 = a3[7];
  v28 = a3[5];
  v29 = v8;
  v30 = v9;
  v10 = *a3;
  v11 = a3[1];
  v22 = v6;
  v23 = v10;
  v12 = a3[2];
  v13 = a3[3];
  v24 = v11;
  v25 = v12;
  v21 = *MEMORY[0x277D85EF8];
  v27 = v7;
  v26 = v13;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x4E3500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v16 = mach_msg(&msg, 3, 0xB0u, 0x30u, msgh_local_port, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v17;
    }

    if (msg.msgh_id == 71)
    {
      v17 = 4294966988;
    }

    else if (msg.msgh_id == 20121)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v17 = v22;
            if (!v22)
            {
              *a4 = DWORD1(v22);
              return v17;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v18 = 1;
          }

          else
          {
            v18 = v22 == 0;
          }

          if (v18)
          {
            v17 = 4294966996;
          }

          else
          {
            v17 = v22;
          }

          goto LABEL_24;
        }
      }

      v17 = 4294966996;
    }

    else
    {
      v17 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v17;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v17;
}

uint64_t sub_254978830(int a1, _OWORD *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(&msg_4[16], 0, 32);
  v17 = 0u;
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x277D85EF8];
  *&msg_4[28] = *a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x4E3600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    v10 = *&msg_4[8];
  }

  else
  {
    v10 = reply_port;
  }

  v11 = mach_msg(&msg, 3, 0x30u, 0x44u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else
  {
    if (!v11)
    {
      if (*&msg_4[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&msg_4[16] == 20122)
      {
        if (msg < 0)
        {
          v12 = 4294966996;
          if (*&msg_4[20] == 1 && *msg_4 == 60 && !*&msg_4[4] && msg_4[35] == 1)
          {
            v13 = *&msg_4[36];
            if (*&msg_4[36] == v17)
            {
              v12 = 0;
              *a3 = *&msg_4[24];
              *a4 = v13;
              *a5 = DWORD1(v17);
              return v12;
            }
          }
        }

        else if (*msg_4 == 36)
        {
          v12 = 4294966996;
          if (*&msg_4[28])
          {
            if (*&msg_4[4])
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = *&msg_4[28];
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v12;
    }

    mig_dealloc_reply_port(*&msg_4[8]);
  }

  return v12;
}

void sub_254978A20(const void **a1)
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

uint64_t sub_254978A58(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

uint64_t sub_254978AE0(const __CFString *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 64, 0x600u);
  if (result)
  {
    return inet_pton(30, buffer, a2) == 1;
  }

  return result;
}

uint64_t sub_254978B98(const __CFString *a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254978A58(a1, __str, 64, 0);
  v3 = strtoul(__str, 0, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  if (*__error() == 34)
  {
    return 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t sub_254978C38(const __CFString *a1, _DWORD *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    CFBooleanGetTypeID();
    CFNumberGetTypeID();
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return (sub_254978B98(a1, a2) & 1) != 0;
  }

  v6 = CFBooleanGetTypeID();
  if (CFGetTypeID(a1) != v6)
  {
    v7 = CFNumberGetTypeID();
    if (CFGetTypeID(a1) == v7)
    {
      result = CFNumberGetValue(a1, kCFNumberSInt32Type, a2);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  *a2 = CFBooleanGetValue(a1);
  return 1;
}

CFStringRef sub_254978CFC(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = inet_ntop(30, a1, v3, 0x2Eu);
  return CFStringCreateWithCString(0, v1, 0x600u);
}

CFStringRef sub_254978D68(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

const __CFData *sub_254978DAC(UInt8 *bytes, int a2)
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