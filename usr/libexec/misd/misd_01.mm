BOOL sub_10000E754(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  if (a3 >= 0x81)
  {
    sub_100001108(0, "in6_are_prefix_equal: invalid prefix length(%d)\n", a3);
    return 0;
  }

  v6 = a3 >> 3;
  return !bcmp(a1, a2, v6) && ((v3 & 7) == 0 || a1[v6] >> (8 - (v3 & 7)) == a2[v6] >> (8 - (v3 & 7)));
}

void sub_10000E7F4(unsigned int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_uint64(v2, off_100034978[0], a1);
    sub_100001108(2u, "sending notification to clients");
    for (i = qword_100034C10; i; i = *i)
    {
      xpc_connection_send_message(*(i + 16), v3);
    }

    xpc_release(v3);
  }

  else
  {

    sub_100001108(0, "xpc_dictionary_create() failed");
  }
}

uint64_t sub_10000E8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 - 7) <= 0xFFFFFFFA)
  {
    sub_100020F94();
  }

  v4 = a2;
  if (a3 == 0xFFFFFFFFLL)
  {
    v6 = a2;
LABEL_9:
    v10 = a1 + 4 * v6;
    v11 = *(v10 + 432);
    *(v10 + 432) = v11 + 1;
    if (v11 == -1)
    {
      sub_100020F68();
    }

    return sub_1000160C0(v4, 1);
  }

  v7 = a1 + 376;
  v8 = *(a1 + 376 + 8 * a2);
  if (v8)
  {
    while (*v8 != a3)
    {
      v8 = v8[2];
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v13 = "duplicate device ID found on the list.";
  }

  else
  {
LABEL_7:
    v9 = malloc_type_malloc(0x18uLL, 0x10200406E52F545uLL);
    if (v9)
    {
      v6 = v4;
      *v9 = a3;
      v9[2] = v4;
      *(v9 + 2) = *(v7 + 8 * v4);
      *(v7 + 8 * v4) = v9;
      goto LABEL_9;
    }

    v13 = "failed to allocate memory.";
  }

  return sub_100001108(0, v13);
}

void sub_10000E9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 - 7) <= 0xFFFFFFFA)
  {
    sub_100020FC0();
  }

  v3 = a2;
  if (a3 == 0xFFFFFFFFLL)
  {
    v5 = a2;
  }

  else
  {
    v6 = a1 + 8 * a2;
    v7 = *(v6 + 376);
    if (!v7)
    {
      return;
    }

    v5 = a2;
    v8 = (v6 + 376);
    v9 = v7;
    while (*v9 != a3)
    {
      v9 = v9[2];
      if (!v9)
      {
        return;
      }
    }

    if (v7 != v9)
    {
      do
      {
        v10 = v7;
        v7 = v7[2];
      }

      while (v7 != v9);
      v8 = v10 + 2;
    }

    *v8 = v7[2];
    sub_100008C34(a3);
    free(v9);
  }

  v11 = *(a1 + 432 + 4 * v5);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v13 < 0 == v12)
  {
    *(a1 + 432 + 4 * v5) = v13;

    sub_10001612C(v3, 1u);
  }
}

uint64_t sub_10000EAA8(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a2 = sub_1000160B4();
  result = sub_100016188();
  *a3 = result;
  return result;
}

uint64_t sub_10000EADC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a2 - 7) <= 0xFFFFFFFA)
  {
    sub_100020FEC();
  }

  v3 = a1 + 4 * a2;
  v4 = *(v3 + 432);
  *(v3 + 432) = a3;
  if (v4 >= a3)
  {
    if (v4 > a3)
    {
      sub_10001612C(a2, v4 - a3);
    }
  }

  else
  {
    sub_1000160C0(a2, a3 - v4);
  }

  return 1;
}

uint64_t sub_10000EB3C(uint64_t a1)
{
  v16 = 0;
  *bytes = 0;
  v2 = *(a1 + 288);
  v3 = sub_100016464(bytes);
  if (v3)
  {
    v4 = v3;
    sub_100001108(0, "%s: mac address", "mis_vmnet_create_interface");
    return v4;
  }

  *(a1 + 360) = *bytes;
  *(a1 + 364) = v16;
  v5 = CFDataCreate(kCFAllocatorDefault, bytes, 6);
  if (!v5)
  {
    sub_100001108(0, "%s: network %p, CFDataCreate() failed", "mis_vmnet_create_interface", v2);
LABEL_19:
    v4 = 12;
LABEL_20:
    if (*(a1 + 352))
    {
      IOEthernetControllerSetDispatchQueue();
      CFRelease(*(a1 + 352));
      *(a1 + 352) = 0;
    }

    return v4;
  }

  v6 = v5;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_100001108(0, "%s: network %p, CFDictionaryCreateMutable() failed", "mis_vmnet_create_interface", v2);
    v13 = v6;
LABEL_18:
    CFRelease(v13);
    goto LABEL_19;
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, @"EnableMultiPages", kCFBooleanTrue);
  CFDictionarySetValue(v8, kIOEthernetHardwareAddress, v6);
  v9 = *(a1 + 12);
  if (v9)
  {
    sub_10000EEA8(v8, @"MaxTransferUnit", v9);
  }

  if (*(a1 + 389) == 1)
  {
    CFDictionarySetValue(v8, @"EnableTSO", kCFBooleanTrue);
  }

  if (*(a1 + 393) == 1)
  {
    CFDictionarySetValue(v8, @"EnableVirtIOHeader", kCFBooleanTrue);
    CFDictionarySetValue(v8, @"EnableCrossover", kCFBooleanTrue);
  }

  CFDictionarySetValue(v8, @"NamePrefix", @"vmenet");
  sub_10000EEA8(v8, @"SubType", 9);
  v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v10)
  {
    sub_100001108(0, "%s: network %p, CFDictionaryCreateMutable() failed", "mis_vmnet_create_interface", v2);
    CFRelease(v6);
    v13 = v8;
    goto LABEL_18;
  }

  v11 = v10;
  CFDictionarySetValue(v10, @"Product Name", @"VM network interface");
  CFDictionarySetValue(v11, kIOUserEthernetInterfaceRole, @"VMNET");
  CFDictionarySetValue(v11, @"HiddenInterface", kCFBooleanTrue);
  CFDictionarySetValue(v11, @"IsEphemeral", kCFBooleanTrue);
  CFDictionarySetValue(v8, kIOUserEthernetInterfaceMergeProperties, v11);
  v12 = IOEthernetControllerCreate();
  *(a1 + 352) = v12;
  if (v12)
  {
    IOEthernetControllerSetDispatchQueue();
    IOEthernetControllerRegisterBSDAttachCallback();
    if (IOEthernetControllerSetLinkStatus())
    {
      v4 = 22;
      sub_100001108(0, "%s: network %p, ethernet controller set link status failed");
    }

    else
    {
      sub_100003094(a1);
      v4 = 0;
    }
  }

  else
  {
    v4 = 12;
    sub_100001108(0, "%s: network %p, ethernet controller create failed");
  }

  CFRelease(v6);
  CFRelease(v11);
  CFRelease(v8);
  if (v4)
  {
    goto LABEL_20;
  }

  return v4;
}

void sub_10000EEA8(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void sub_10000EF10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 288);
  v23 = 0x200000;
  if (!v3)
  {
    v6 = 0;
    v7 = 2;
LABEL_31:
    v13 = *(a2 + 328);
    if (!v13)
    {
      goto LABEL_40;
    }

    if (v7 != 36)
    {
      if (v7)
      {
        v14 = 2000;
      }

      else
      {
        v14 = 2001;
      }

      xpc_dictionary_set_uint64(v13, off_1000348C8[0], v14);
      if (v7 == 16)
      {
        xpc_dictionary_set_uint64(*(a2 + 328), off_1000348B8[0], 0x1770uLL);
      }

      sub_100001CD4(*(a2 + 344), *(a2 + 328));
      v13 = *(a2 + 328);
    }

LABEL_39:
    xpc_release(v13);
    *(a2 + 328) = 0;
    *(a2 + 344) = 0;
LABEL_40:
    sub_1000030A4(a2, a2);
    if (!v6)
    {
      return;
    }

    goto LABEL_41;
  }

  v4 = qword_100034C18;
  if ((*(v3 + 8) & 0x10) == 0)
  {
    if (qword_100034C18)
    {
      while (1)
      {
        v5 = v4[2];
        if (v5)
        {
          break;
        }

LABEL_7:
        v4 = *v4;
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      while (v5 != v3)
      {
        v5 = *(v5 + 488);
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_16;
    }

LABEL_15:
    sub_100001108(0, "%s: failed to find mis_client", "mis_vmnet_interface_attached_callback");
    return;
  }

  if (!qword_100034C18)
  {
    goto LABEL_15;
  }

  while (v4[5] != a2 || !*(a2 + 352) || !*(a2 + 328))
  {
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v8 = *(v3 + 32);
  IONetworkInterfaceObject = IOEthernetControllerGetIONetworkInterfaceObject();
  if (!IONetworkInterfaceObject)
  {
    sub_100001108(0, "network %p, getting network io object failed");
LABEL_29:
    v6 = 0;
    goto LABEL_30;
  }

  CFProperty = IORegistryEntryCreateCFProperty(IONetworkInterfaceObject, @"BSD Name", kCFAllocatorDefault, 0);
  v6 = CFProperty;
  if (!CFProperty)
  {
    sub_100001108(0, "network %p, getting bsd name failed");
LABEL_30:
    v7 = 12;
    goto LABEL_31;
  }

  CFStringGetCString(CFProperty, (a2 + 366), 16, 0x600u);
  __strlcpy_chk();
  sub_100001108(2u, "network %p bsd name %s", v3, (a2 + 20));
  CFRelease(v6);
  BSDSocket = IOEthernetControllerGetBSDSocket();
  *(a2 + 384) = BSDSocket;
  if (BSDSocket < 0)
  {
    sub_100001108(0, "network %p unable to get socket");
    goto LABEL_29;
  }

  if (setsockopt(BSDSocket, 0xFFFF, 4097, &v23, 4u) == -1)
  {
    v22 = 0;
    v24[0] = 4;
    if (sysctlbyname("kern.ipc.maxsockbuf", &v22, v24, 0, 0))
    {
      sub_100001108(0, "sysctl kern.ipc.maxsockbuf failed", v21);
LABEL_46:
      v6 = 0;
      v7 = *__error();
      goto LABEL_31;
    }

    v23 = v22;
    if (setsockopt(*(a2 + 384), 0xFFFF, 4097, &v23, 4u) == -1)
    {
      sub_100001108(0, "network %s, set SO_SNDBUF failed");
      goto LABEL_46;
    }
  }

  if (setsockopt(*(a2 + 384), 0xFFFF, 4098, &v23, 4u) == -1)
  {
    sub_100001108(0, "network %p, set SO_RCVBUF failed");
    goto LABEL_46;
  }

  v6 = malloc_type_malloc(0x28uLL, 0x10A0040D1175C0DuLL);
  if (!v6)
  {
    sub_100001108(0, "unable to create reply service object");
    goto LABEL_30;
  }

  if (!*(a2 + 12))
  {
    *(a2 + 12) = 1500;
  }

  if (*(a2 + 393))
  {
    v12 = 4;
  }

  else
  {
    v12 = *(a2 + 391);
    if (v12 != 1)
    {
      goto LABEL_52;
    }
  }

  *(a2 + 312) |= v12;
LABEL_52:
  if (*(a2 + 390) == 1)
  {
    *(a2 + 312) |= 2u;
  }

  v15 = sub_1000033FC(v3, a2);
  if (v15)
  {
    v7 = v15;
    sub_100001108(0, "%s: network %s, mis_network_add_interface failed");
    goto LABEL_31;
  }

  sub_100001108(1u, "%s: added interface %s(%llu) to network %s", "mis_vmnet_interface_attached_callback", (a2 + 20), *(a2 + 400), (v3 + 40));
  xpc_dictionary_set_uint64(*(a2 + 328), off_100034A18[0], *(a2 + 400));
  if (v8 || (v19 = sub_10000538C(v3)) == 0)
  {
    xpc_dictionary_set_fd(*(a2 + 328), off_100034880[0], *(a2 + 384));
    xpc_dictionary_set_uint64(*(a2 + 328), off_100034950[0], *(a2 + 12));
    if (*(v3 + 372) != 2)
    {
      v16 = *(v3 + 388);
      v17 = *(v3 + 380);
      if (!v16)
      {
        v16 = bswap32(bswap32(v17 | ~*(v3 + 384)) - 1);
      }

      sub_100013AA4(*(a2 + 328), off_100034960[0], v17);
      sub_100013AA4(*(a2 + 328), off_100034970[0], *(v3 + 384));
      sub_100013AA4(*(a2 + 328), off_100034968[0], v16);
      if (*(v3 + 372) == 1 && (*(v3 + 392) & 4) != 0)
      {
        *v24 = 0u;
        memset(v25, 0, sizeof(v25));
        inet_ntop(30, (v3 + 396), v24, 0x2Eu);
        v18 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v18, off_1000349A8[0], v24);
        xpc_dictionary_set_value(*(a2 + 328), off_100034998[0], v18);
        xpc_release(v18);
      }
    }

    xpc_dictionary_set_uuid(*(a2 + 328), off_100034A10[0], (v3 + 356));
    xpc_dictionary_set_uint64(*(a2 + 328), off_100034A18[0], *(a2 + 400));
    v7 = 0;
    goto LABEL_31;
  }

  v7 = v19;
  if (v19 != 36)
  {
    sub_100001108(0, "%s: network %p, mis_network_start failed");
    goto LABEL_31;
  }

  sub_1000097F8(v6, *(a2 + 344), *(a2 + 328), v3, *(a2 + 384));
  sub_100001108(2u, "reply enqueued %p for network %p", v6, v3);
  v13 = *(a2 + 328);
  if (v13)
  {
    goto LABEL_39;
  }

  sub_1000030A4(a2, v20);
LABEL_41:
  free(v6);
}

uint64_t sub_10000F4E4(const char *a1)
{
  v15 = 0;
  v14 = 0;
  v13 = 0uLL;
  if (getifaddrs(&v15) < 0)
  {
    v3 = *__error();
    sub_100001108(0, "getifaddrs: %m");
LABEL_24:
    if (v15)
    {
      freeifaddrs(v15);
    }
  }

  else
  {
    v2 = v15;
    if (v15)
    {
      v3 = 0;
      while (1)
      {
        ifa_addr = v2->ifa_addr;
        if (!ifa_addr)
        {
          goto LABEL_21;
        }

        sa_family = ifa_addr->sa_family;
        v6 = sa_family == 30 || sa_family == 2;
        if (!v6 || strncmp(a1, v2->ifa_name, 0x10uLL))
        {
          goto LABEL_21;
        }

        if (sa_family == 2)
        {
          v14 = *&ifa_addr->sa_data[2];
          v7.s_addr = v14;
          v8 = inet_ntoa(v7);
          snprintf(__str, 0x10uLL, "%s", v8);
          v9 = sub_10000F6C4(a1, &v14);
          if (v9)
          {
            v10 = v9;
            strerror(v9);
            sub_100001108(0, "mis_difaddr(%s,%s): %s");
            goto LABEL_16;
          }

          sub_100001108(0, "removed addr=%s on %s", __str, a1);
        }

        else
        {
          v13 = *&ifa_addr->sa_data[6];
          inet_ntop(30, &v13, v16, 0x2Eu);
          v11 = sub_10000F7EC(a1, &v13);
          if (v11)
          {
            v10 = v11;
            strerror(v11);
            sub_100001108(0, "mis_difaddr6(%s,%s): %s");
LABEL_16:
            if (v3)
            {
              v3 = v3;
            }

            else
            {
              v3 = v10;
            }

            goto LABEL_21;
          }

          sub_100001108(0, "removed addr=%s on %s", v16, a1);
        }

LABEL_21:
        v2 = v2->ifa_next;
        if (!v2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10000F6C4(const char *a1, _DWORD *a2)
{
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    v8 = strerror(*v7);
    sub_100001108(0, "socket: %s", v8);
    return *__error();
  }

  else
  {
    v5 = v4;
    v13 = 0;
    v14 = 0;
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      LOWORD(v13) = 528;
      HIDWORD(v13) = *a2;
    }

    if (ioctl(v5, 0x80206919uLL, __dst) == -1)
    {
      v6 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      sub_100001108(0, "SIOCDIFADDR: %s", v10);
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_10000F7EC(const char *a1, _OWORD *a2)
{
  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    v8 = strerror(*v7);
    sub_100001108(0, "socket: %s", v8);
    return *__error();
  }

  else
  {
    v5 = v4;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    memset(&__dst[16], 0, 32);
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      *&__dst[16] = 7708;
      *&__dst[24] = *a2;
    }

    if (ioctl(v5, 0x81206919uLL, __dst) == -1)
    {
      v6 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      sub_100001108(0, "SIOCDIFADDR_IN6: %s", v10);
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_10000F968(const char *a1)
{
  *buffer = 0x600000001;
  v14 = 0;
  v13 = 4;
  if (sysctl(buffer, 2u, &v14, &v13, 0, 0) < 0)
  {
    v10 = __error();
    v11 = strerror(*v10);
    sub_100001108(0, "failed to get max proc count (%s)", v11);
    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    sub_100001108(2u, "no current processes");
    return 0;
  }

  v2 = 4 * v14;
  v3 = malloc_type_malloc(4 * v14, 0x9EF32CB9uLL);
  if (!v3)
  {
    sub_100001108(0, "malloc() failed");
    return 0;
  }

  v4 = v3;
  v5 = proc_listallpids(v3, v2);
  if (v5 < 1)
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    v6 = v5;
    v7 = v4;
    while (1)
    {
      v8 = proc_pidpath(*v7, buffer, 0x400u);
      if (v8 >= 1)
      {
        *(buffer + v8) = 0;
        if (!strncmp(buffer, a1, 0x400uLL))
        {
          break;
        }
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    v9 = *v7;
  }

  free(v4);
  return v9;
}

BOOL sub_10000FC38(char *a1)
{
  if (a1)
  {
    HIDWORD(v2[0]) = 0;
    v2[1] = 0;
    return inet_pton(2, a1, v2 + 4) != 0;
  }

  else
  {
    sub_100001108(0, "ip address string is NULL");
    return 0;
  }
}

uint64_t sub_10000FCB8(unsigned int a1)
{
  LODWORD(result) = 0;
  v3 = 0;
  v4 = bswap32(a1);
  while (1)
  {
    v5 = v4 >> v3;
    if (!result)
    {
      result = v5 & 1;
      goto LABEL_6;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    result = 1;
LABEL_6:
    if (++v3 == 32)
    {
      return result;
    }
  }
}

uint64_t sub_10000FCF8(uint64_t a1, int a2)
{
  v9 = 0u;
  v10 = 0u;
  v3 = socket(2, 2, 0);
  if (v3 < 0)
  {
    v5 = *__error();
    sub_100001108(0, "socket: %m");
    if (v3 == -1)
    {
      return v5;
    }

    goto LABEL_12;
  }

  v9 = 0u;
  v10 = 0u;
  if (__strlcpy_chk() > 0xF)
  {
    v4 = "strlcpy: %s";
LABEL_11:
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    sub_100001108(0, v4, v7);
    goto LABEL_12;
  }

  if (ioctl(v3, 0xC0206911uLL, &v9) < 0)
  {
    v4 = "SIOCGIFFLAGS: %s";
    goto LABEL_11;
  }

  LOWORD(v10) = v10 | a2 & ~(a2 >> 31);
  if (ioctl(v3, 0x80206910uLL, &v9) < 0)
  {
    v4 = "SIOCSIFFLAGS: %s";
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:
  close(v3);
  return v5;
}

uint64_t sub_10000FE60(const char *a1)
{
  v10 = 0;
  v2 = sub_10000FCF8(a1, -1);
  v3 = v2;
  if (v2)
  {
    v4 = strerror(v2);
    sub_100001108(0, "setifflags: %s", v4);
  }

  sub_10000E4B4(a1, &v10 + 1, &v10);
  if (HIBYTE(v10))
  {
    v5 = sub_10000FF34(a1);
    v3 = v5;
    if (v5)
    {
      v6 = strerror(v5);
      sub_100001108(0, "protoattach failed (%s): %s", a1, v6);
    }
  }

  if (v10)
  {
    v7 = sub_1000100DC(a1);
    v3 = v7;
    if (v7)
    {
      v8 = strerror(v7);
      sub_100001108(0, "protoattach6 failed (%s): %s", a1, v8);
    }
  }

  return v3;
}

uint64_t sub_10000FF34(const char *a1)
{
  if (!a1)
  {
    sub_100021044();
  }

  if (!*a1)
  {
    sub_100021018();
  }

  v13 = 0u;
  v14 = 0u;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v8 = __error();
    v9 = strerror(*v8);
    sub_100001108(0, "socket: %s", v9);
    v4 = *__error();
    goto LABEL_13;
  }

  v3 = v2;
  v13 = 0u;
  v14 = 0u;
  if (__strlcpy_chk() >= 0x10)
  {
    v4 = *__error();
    v5 = "strlcpy: %s";
LABEL_6:
    v6 = __error();
    v7 = strerror(*v6);
    sub_100001108(0, v5, v7);
    goto LABEL_11;
  }

  if (ioctl(v3, 0xC0206950uLL, &v13) == -1 && *__error() != 17)
  {
    v4 = *__error();
    if (v4)
    {
      v5 = "SIOCPROTOATTACH: %s";
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_11:
  if (close(v3))
  {
    v10 = __error();
    v4 = *v10;
    v11 = strerror(*v10);
    sub_100001108(0, "close: %s", v11);
  }

LABEL_13:
  if (!v4)
  {
    sub_100001108(1u, "attached IPv4 protocol on %s", a1);
  }

  return v4;
}

uint64_t sub_1000100DC(const char *a1)
{
  if (!a1)
  {
    sub_10002109C();
  }

  if (!*a1)
  {
    sub_100021070();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    v4 = *__error();
    sub_100001108(0, "socket: %m");
  }

  else
  {
    v3 = v2;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    if (__strlcpy_chk() < 0x10)
    {
      if (ioctl(v3, 0xC080696EuLL, &v6) == -1 && *__error() != 17)
      {
        v4 = *__error();
        if (v4)
        {
          sub_100001108(0, "SIOCPROTOATTACH_IN6: %m");
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = *__error();
      sub_100001108(0, "strlcpy: %m");
    }

    if (close(v3))
    {
      v4 = *__error();
      sub_100001108(0, "close: %m");
    }
  }

  if (!v4)
  {
    sub_100001108(1u, "attached IPv6 protocol on %s", a1);
  }

  return v4;
}

uint64_t sub_10001028C(const char *a1, int a2, int a3, char a4)
{
  v26 = 0;
  v8 = sub_10000F4E4(a1);
  v9 = v8;
  if (v8)
  {
    v10 = strerror(v8);
    sub_100001108(0, "remove_addrs(%s): %s", a1, v10);
  }

  if ((a4 & 1) == 0)
  {
    v11 = sub_10000FCF8(a1, -1);
    v9 = v11;
    if (v11)
    {
      v12 = strerror(v11);
      sub_100001108(0, "setifflags: %s", v12);
    }
  }

  sub_10000E4B4(a1, &v26 + 1, &v26);
  v13 = HIBYTE(v26);
  if (HIBYTE(v26))
  {
    if ((a4 & 1) == 0)
    {
      v14 = sub_10000FF34(a1);
      v9 = v14;
      if (v14)
      {
        v15 = strerror(v14);
        sub_100001108(0, "protoattach(%s): %s", a1, v15);
      }
    }
  }

  v16 = v26;
  if (a2 && v26)
  {
    v17 = sub_100010458(a1);
    if (v17)
    {
      v18 = strerror(v17);
      sub_100001108(0, "mis_autoconf_start(%s): %s", a1, v18);
    }

    v19 = sub_1000105B4(a1);
    v9 = v19;
    if (v19)
    {
      v20 = strerror(v19);
      sub_100001108(0, "mis_ll_start(%s): %s", a1, v20);
    }

    if ((a4 & 1) == 0)
    {
      v21 = sub_1000100DC(a1);
      v9 = v21;
      if (v21)
      {
        v22 = strerror(v21);
        sub_100001108(0, "protoattach6(%s): %s", a1, v22);
      }
    }
  }

  if (a3)
  {
    sub_1000106E0(a1, 1);
  }

  if (v13 || v16)
  {
    v23 = sub_10000FCF8(a1, 1);
    v9 = v23;
    if (v23)
    {
      v24 = strerror(v23);
      sub_100001108(0, "setifflags: %s", v24);
    }
  }

  return v9;
}

uint64_t sub_100010458(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    v5 = __error();
    v6 = strerror(*v5);
    sub_100001108(0, "socket: %s", v6);
    return *__error();
  }

  else
  {
    v3 = v2;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC1206984uLL, &__dst) == -1)
    {
      v4 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      sub_100001108(0, "SIOCAUTOCONF_START: %s", v8);
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_1000105B4(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    v5 = __error();
    v6 = strerror(*v5);
    sub_100001108(0, "socket: %s", v6);
    return *__error();
  }

  else
  {
    v3 = v2;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    strncpy(__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC0806982uLL, __dst) == -1)
    {
      v4 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      sub_100001108(0, "SIOCLL_START: %s", v8);
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_1000106E0(const char *a1, int a2)
{
  v4 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", 0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000E61C(v4, a1);
    if (!v6)
    {
      sub_100001108(0, "Failed to find network service for %s", a1);
      v8 = 0xFFFFFFFFLL;
LABEL_18:
      CFRelease(v5);
      return v8;
    }

    v7 = v6;
    if (SCNetworkServiceGetEnabled(v6) == a2)
    {
      goto LABEL_4;
    }

    if (SCNetworkServiceSetEnabled(v7, a2))
    {
      if (SCPreferencesCommitChanges(v5))
      {
        if (SCPreferencesApplyChanges(v5))
        {
          v9 = "disabled";
          if (a2)
          {
            v9 = "enabled";
          }

          sub_100001108(1u, "network service status changed to %s for %s", v9, a1);
LABEL_4:
          v8 = 0;
LABEL_17:
          CFRelease(v7);
          goto LABEL_18;
        }

        sub_100001108(0, "SCPreferencesApplyChanges for %s failed");
      }

      else
      {
        sub_100001108(0, "SCPreferencesCommitChanges for %s failed");
      }
    }

    else
    {
      sub_100001108(0, "SCNetworkServiceSetEnabled for %s failed");
    }

    v8 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  sub_100001108(0, "SCPreferencesCreate for %s returned NULL", a1);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100010824(const char *a1, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    sub_1000106E0(a1, 0);
  }

  v5 = sub_10000F4E4(a1);
  if (v5)
  {
    sub_100001108(0, "%s: remove_addrs, if %s, err %d", "interface_quiesce_preamble", a1, v5);
  }

  if ((a3 & 1) == 0)
  {
    v6 = sub_10001095C(a1);
    if (v6)
    {
      sub_100001108(0, "%s: mis_protodetach, if %s, err %d", "interface_quiesce_preamble", a1, v6);
    }
  }

  v7 = sub_100010AA8(a1);
  if (v7)
  {
    sub_100001108(0, "%s: mis_autoconf_stop, if %s, err %d", "interface_quiesce_preamble", a1, v7);
  }

  v8 = sub_100010BE4(a1);
  if (v8)
  {
    sub_100001108(0, "%s: mis_ll_stop, if %s, err %d", "interface_quiesce_preamble", a1, v8);
  }

  if ((a3 & 1) == 0)
  {
    v9 = sub_100010D20(a1);
    if (v9)
    {
      sub_100001108(0, "%s: mis_protodetach6, if %s, err %d", "interface_quiesce_preamble", a1, v9);
    }
  }

  v10 = sub_10000FCF8(a1, -1);
  v11 = v10;
  if (v10)
  {
    sub_100001108(0, "%s: setifflags, if %s, err %d", "interface_quiesce_preamble", a1, v10);
  }

  return v11;
}

uint64_t sub_10001095C(const char *a1)
{
  v7 = 0u;
  v8 = 0u;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    sub_100001108(0, "socket: %m");
    v5 = *__error();
    goto LABEL_11;
  }

  v3 = v2;
  v7 = 0u;
  v8 = 0u;
  if (__strlcpy_chk() <= 0xF)
  {
    if (ioctl(v3, 0xC0206951uLL, &v7) != -1)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = "SIOCPROTODETACH: %m";
  }

  else
  {
    v4 = "strlcpy: %m";
  }

  v5 = *__error();
  sub_100001108(0, v4);
LABEL_9:
  if (close(v3))
  {
    v5 = *__error();
    sub_100001108(0, "close: %m");
  }

LABEL_11:
  if (!v5)
  {
    sub_100001108(1u, "detached IPv4 protocol on %s", a1);
  }

  return v5;
}

uint64_t sub_100010AA8(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    sub_100001108(0, "socket: %m");
    return *__error();
  }

  else
  {
    v3 = v2;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC1206985uLL, &__dst) == -1)
    {
      v4 = *__error();
      sub_100001108(0, "SIOCAUTOCONF_STOP: %m");
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_100010BE4(const char *a1)
{
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    sub_100001108(0, "socket: %m");
    return *__error();
  }

  else
  {
    v3 = v2;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    if (ioctl(v3, 0xC1206983uLL, &__dst) == -1)
    {
      v4 = *__error();
      sub_100001108(0, "SIOCLL_STOP: %m");
    }

    else
    {
      v4 = 0;
    }

    close(v3);
  }

  return v4;
}

uint64_t sub_100010D20(const char *a1)
{
  if (!a1)
  {
    sub_1000210F4();
  }

  if (!*a1)
  {
    sub_1000210C8();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = socket(30, 2, 0);
  if (v2 < 0)
  {
    v5 = *__error();
    sub_100001108(0, "socket: %m");
    goto LABEL_13;
  }

  v3 = v2;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (__strlcpy_chk() <= 0xF)
  {
    if (ioctl(v3, 0xC120696FuLL, &v7) != -1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v4 = "SIOCPROTODETACH: %m";
  }

  else
  {
    v4 = "strlcpy: %m";
  }

  v5 = *__error();
  sub_100001108(0, v4);
LABEL_11:
  if (close(v3))
  {
    v5 = *__error();
    sub_100001108(0, "close: %m");
  }

LABEL_13:
  if (!v5)
  {
    sub_100001108(1u, "detached IPv6 protocol on %s", a1);
  }

  return v5;
}

uint64_t sub_100010EC0(const char *a1)
{
  v2 = sub_10001095C(a1);
  if (v2)
  {
    sub_100001108(0, "%s: mis_protodetach, if %s, err %d", "interface_quiesce_detach", a1, v2);
  }

  v3 = sub_100010D20(a1);
  v4 = v3;
  if (v3)
  {
    sub_100001108(0, "%s: mis_protodetach6, if %s, err %d", "interface_quiesce_detach", a1, v3);
  }

  return v4;
}

uint64_t sub_100010F44(const char *a1)
{
  v5 = 0;
  if (!a1 || !*a1)
  {
    sub_100021120();
  }

  if (getifaddrs(&v5))
  {
    sub_100001108(0, "getifaddrs: %m");
  }

  else
  {
    v4 = &v5;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (!strncmp(a1, v4[1], 0x10uLL))
      {
        v2 = *(v4 + 4);
        goto LABEL_6;
      }
    }
  }

  v2 = 0;
LABEL_6:
  if (v5)
  {
    freeifaddrs(v5);
  }

  return v2;
}

uint64_t sub_100010FD8(const char *a1, int a2)
{
  if (!a1)
  {
    sub_100021178();
  }

  if (!*a1)
  {
    sub_10002114C();
  }

  v10 = 0u;
  v11 = 0u;
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    v6 = *__error();
    sub_100001108(0, "socket: %m");
    if (!v6)
    {
      return v6;
    }

    goto LABEL_14;
  }

  v5 = v4;
  v10 = 0u;
  v11 = 0u;
  if (__strlcpy_chk() < 0x10)
  {
    LODWORD(v11) = a2;
    if (ioctl(v5, 0x80206934uLL, &v10) == -1)
    {
      v7 = *__error();
      if (sub_10001113C(a1) == a2)
      {
        v6 = 0;
      }

      else
      {
        v6 = v7;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = *__error();
    sub_100001108(0, "strlcpy: %m");
  }

  close(v5);
  if (v6)
  {
LABEL_14:
    v8 = strerror(v6);
    sub_100001108(0, "SIOCSIFMTU: %s %d", v8, a2);
  }

  return v6;
}

uint64_t sub_10001113C(const char *a1)
{
  if (!a1)
  {
    sub_1000211D0();
  }

  if (!*a1)
  {
    sub_1000211A4();
  }

  v5 = 0u;
  v6 = 0u;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    sub_100001108(0, "socket: %m");
    goto LABEL_12;
  }

  v3 = v2;
  v5 = 0u;
  v6 = 0u;
  if (__strlcpy_chk() >= 0x10)
  {
    sub_100001108(0, "strlcpy: %m");
    close(v3);
LABEL_12:
    sub_100001108(0, "could not get mtu for %s, assuming 1500", a1);
    return 1500;
  }

  if (ioctl(v3, 0xC0206933uLL, &v5) == -1)
  {
    sub_100001108(0, "SIOCGIFMTU: %m");
  }

  if (close(v3))
  {
    sub_100001108(0, "close: %m");
  }

  result = v6;
  if (v6 <= 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100011290(const char *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v8 = socket(2, 2, 0);
  if (v8 < 0)
  {
    sub_100001108(0, "socket: %m");
    return *__error();
  }

  else
  {
    v9 = v8;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      LOWORD(v13) = 528;
      DWORD1(v13) = *a2;
    }

    if (a3)
    {
      LOWORD(v15) = 528;
      DWORD1(v15) = *a3;
    }

    if (a4 || a2 && (a4 = a2, (sub_100010F44(a1) & 0x10) != 0))
    {
      LOWORD(v14) = 528;
      DWORD1(v14) = *a4;
    }

    if (ioctl(v9, 0x8040691AuLL, __dst) == -1)
    {
      v10 = *__error();
      sub_100001108(0, "SIOCAIFADDR: %m");
    }

    else
    {
      v10 = 0;
    }

    close(v9);
  }

  return v10;
}

uint64_t sub_1000113F4(const char *a1, _OWORD *a2, __int128 *a3, int a4)
{
  v8 = socket(30, 2, 0);
  if (v8 < 0)
  {
    v11 = __error();
    v12 = strerror(*v11);
    sub_100001108(0, "socket: %s", v12);
    return *__error();
  }

  else
  {
    v9 = v8;
    v21 = 0;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    memset(&__dst[16], 0, 32);
    strncpy(__dst, a1, 0x10uLL);
    if (a2)
    {
      *&__dst[16] = 7708;
      *&__dst[24] = *a2;
    }

    if (a3)
    {
      WORD4(v18) = 7708;
      v19 = *a3;
    }

    DWORD1(v20) = a4;
    v22 = -1;
    if (ioctl(v9, 0x8080691AuLL, __dst) == -1)
    {
      v10 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      sub_100001108(0, "SIOCAIFADDR_IN6: %s", v14);
    }

    else
    {
      v10 = 0;
    }

    close(v9);
  }

  return v10;
}

uint64_t sub_100011568(uint64_t a1)
{
  v11 = 0;
  if (getifaddrs(&v11))
  {
    v2 = *__error();
    sub_100001108(0, "getifaddrs: %m");
  }

  else
  {
    v3 = v11;
    if (v11)
    {
      while (1)
      {
        ifa_addr = v3->ifa_addr;
        if (ifa_addr && ifa_addr->sa_family == 18 && ifa_addr->sa_data[4] == 6)
        {
          v5 = &ifa_addr->sa_len + ifa_addr->sa_data[3];
          v6 = *(v5 + 2);
          v7 = *(v5 + 6);
          if (*a1 == v6 && *(a1 + 4) == v7)
          {
            break;
          }
        }

        v3 = v3->ifa_next;
        if (!v3)
        {
          v2 = 0;
          goto LABEL_13;
        }
      }

      v2 = 22;
LABEL_13:
      v9 = v11;
    }

    else
    {
      v9 = 0;
      v2 = 0;
    }

    freeifaddrs(v9);
  }

  return v2;
}

uint64_t sub_100011634(const char *a1, int *a2, int a3)
{
  v12 = 0;
  if (!a2)
  {
    sub_1000211FC();
  }

  if (getifaddrs(&v12))
  {
    sub_100001108(0, "getifaddrs: %m");
    return 0;
  }

  else
  {
    v7 = v12;
    if (v12)
    {
      v8 = v12;
      while (strncmp(a1, v8->ifa_name, 0x10uLL) || (v8->ifa_flags & 0x10) == 0)
      {
        v8 = v8->ifa_next;
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      if (a3)
      {
        ifa_netmask = v8->ifa_netmask;
        if (ifa_netmask)
        {
          v11 = *&ifa_netmask->sa_data[2];
        }

        else
        {
          v11 = -1;
        }

        *a2 = v11;
      }

      v6 = 1;
    }

    else
    {
LABEL_9:
      v6 = 0;
    }

    freeifaddrs(v7);
  }

  return v6;
}

uint64_t sub_100011708(uint64_t a1)
{
  v8 = 0;
  v1 = (a1 + 20);
  if (!*(a1 + 20))
  {
    sub_100021228();
  }

  if (getifaddrs(&v8))
  {
    v3 = *__error();
    sub_100001108(0, "getifaddrs: %m");
  }

  else
  {
    v4 = v8;
    if (v8)
    {
      v5 = v8;
      while (1)
      {
        if (!strncmp(v1, v5->ifa_name, 0x10uLL))
        {
          ifa_addr = v5->ifa_addr;
          if (ifa_addr)
          {
            if (ifa_addr->sa_family == 30 && ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
            {
              break;
            }
          }
        }

        v5 = v5->ifa_next;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v3 = 0;
      *(a1 + 296) = *&ifa_addr->sa_data[6];
    }

    else
    {
LABEL_14:
      v3 = 6;
    }

    freeifaddrs(v4);
  }

  return v3;
}

uint64_t sub_1000117FC(const char *a1, int a2)
{
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    v8 = strerror(*v7);
    sub_100001108(0, "socket: %s", v8);
    return *__error();
  }

  else
  {
    v5 = v4;
    v13 = 0;
    v14 = 0;
    strncpy(__dst, a1, 0x10uLL);
    LODWORD(v13) = a2;
    if (ioctl(v5, 0xC020698DuLL, __dst) == -1)
    {
      v6 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      sub_100001108(0, "SIOCSETROUTERMODE: %s", v10);
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_100011924(const char *a1, int a2)
{
  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    v7 = __error();
    v8 = strerror(*v7);
    sub_100001108(0, "socket: %s", v8);
    return *__error();
  }

  else
  {
    v5 = v4;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    strncpy(&__dst, a1, 0x10uLL);
    LODWORD(v13) = a2;
    if (ioctl(v5, 0xC1206988uLL, &__dst) == -1)
    {
      v6 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      sub_100001108(0, "SIOCSETROUTERMODE_IN6: %s", v10);
    }

    else
    {
      v6 = 0;
    }

    close(v5);
  }

  return v6;
}

uint64_t sub_100011A98(uint64_t a1, int a2)
{
  v4 = socket(30, 2, 0);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    memset(v10, 0, sizeof(v10));
    __strlcpy_chk();
    if (ioctl(v5, 0xC030694CuLL, v10) < 0)
    {
      v8 = "SIOCGIFINFO_IN6 on %s: %m";
    }

    else
    {
      if (a2)
      {
        v6 = 32;
      }

      else
      {
        v6 = 0;
      }

      DWORD1(v11) = DWORD1(v11) & 0xFFFFFFDF | v6;
      v7 = 0;
      if ((ioctl(v5, 0xC0486957uLL, v10) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      v8 = "SIOCSIFINFO_FLAGS on %s: %m";
    }

    v7 = *__error();
    sub_100001108(0, v8, a1);
LABEL_11:
    close(v5);
    return v7;
  }

  sub_100001108(0, "socket: %m");
  return *__error();
}

uint64_t sub_100011BDC(posix_spawnattr_t *a1, posix_spawn_file_actions_t *a2)
{
  v4 = posix_spawn_file_actions_init(a2);
  if (v4)
  {
    v5 = v4;
    strerror(v4);
    sub_100001108(0, "spawn init: %s");
  }

  else
  {
    if (dword_100034BD0)
    {
      v6 = 0;
    }

    else
    {
      v6 = byte_100034BE8 == 0;
    }

    if (v6)
    {
      posix_spawn_file_actions_addopen(a2, 1, "/dev/null", 1, 0);
      posix_spawn_file_actions_addopen(a2, 2, "/dev/null", 1, 0);
    }

    v11 = 0;
    v7 = posix_spawnattr_init(a1);
    if (v7)
    {
      v5 = v7;
      posix_spawn_file_actions_destroy(a2);
      strerror(v5);
      sub_100001108(0, "posix_spawnattr_init(): %s");
    }

    else
    {
      v8 = posix_spawnattr_setflags(a1, 12);
      if (v8)
      {
        v5 = v8;
        posix_spawnattr_destroy(a1);
        posix_spawn_file_actions_destroy(a2);
        strerror(v5);
        sub_100001108(0, "posix_spawnattr_setflags(): %s");
      }

      else
      {
        v9 = posix_spawnattr_setsigmask(a1, &v11);
        if (v9)
        {
          v5 = v9;
          posix_spawnattr_destroy(a1);
          posix_spawn_file_actions_destroy(a2);
          strerror(v5);
          sub_100001108(0, "posix_spawnattr_setsigmask(): %s");
        }

        else
        {
          v11 = -1;
          v5 = posix_spawnattr_setsigdefault(a1, &v11);
          if (v5)
          {
            posix_spawnattr_destroy(a1);
            posix_spawn_file_actions_destroy(a2);
            strerror(v5);
            sub_100001108(0, "posix_spawnattr_setsigdefault(): %s");
          }
        }
      }
    }
  }

  return v5;
}

void sub_100011D88(const __CFArray *a1, const char *a2)
{
  Count = CFArrayGetCount(a1);
  v5 = CFStringCreateWithCString(0, a2, 0x600u);
  if (v5)
  {
    v6 = v5;
    v8.location = 0;
    v8.length = Count;
    if (!CFArrayContainsValue(a1, v8, v5))
    {
      CFArrayAppendValue(a1, v6);
    }

    CFRelease(v6);
  }
}

void sub_100011E1C(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);

    CFRelease(v6);
  }
}

void sub_100011E94(__CFDictionary *a1, const void *a2, __int16 a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t sub_100011EFC(CFPropertyListRef propertyList, const std::__fs::filesystem::path *a2, uid_t a3, gid_t a4, uint64_t a5, int a6)
{
  v6 = 22;
  if (propertyList && a2 && a5)
  {
    Data = CFPropertyListCreateData(kCFAllocatorDefault, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      v13 = Data;
      snprintf(__str, 0x400uLL, "%s-", a2);
      if (a6 == 1)
      {
        v14 = open_dprotected_np(__str, 1537, 4, 0, a5);
      }

      else
      {
        v14 = open(__str, 1537, a5);
      }

      v15 = v14;
      if (v14 < 0)
      {
        v6 = *__error();
        CFRelease(v13);
      }

      else
      {
        Length = CFDataGetLength(v13);
        BytePtr = CFDataGetBytePtr(v13);
        if (write(v15, BytePtr, Length) == Length)
        {
          rename(__str, a2, v18);
          if (v19)
          {
            v6 = v19;
            unlink(__str);
          }

          else
          {
            v6 = chown(a2, a3, a4);
          }
        }

        else
        {
          v6 = *__error();
        }

        CFRelease(v13);
        close(v15);
      }
    }

    else
    {
      return 12;
    }
  }

  return v6;
}

size_t sub_1000120A0(const char *a1, int *a2, int a3)
{
  memset(&v17, 0, sizeof(v17));
  v6 = stat(a1, &v17);
  *a2 = v6;
  if (v6 < 0)
  {
    return 0;
  }

  st_size = v17.st_size;
  if (v17.st_size)
  {
    v8 = malloc_type_malloc(v17.st_size, 0xA89F231CuLL);
    if (v8)
    {
      v9 = v8;
      if (a3 == 1)
      {
        v10 = open_dprotected_np(a1, 0, 4, 0);
      }

      else
      {
        v10 = open(a1, 0);
      }

      v12 = v10;
      if ((v10 & 0x80000000) == 0)
      {
        if (read(v10, v9, st_size) == st_size)
        {
          v13 = CFDataCreateWithBytesNoCopy(0, v9, st_size, kCFAllocatorNull);
          if (v13)
          {
            v14 = v13;
            st_size = CFPropertyListCreateWithData(kCFAllocatorDefault, v13, 0, 0, 0);
            if (!st_size)
            {
              *a2 = 12;
            }

            CFRelease(v14);
            goto LABEL_21;
          }

          st_size = 0;
          v15 = 12;
        }

        else
        {
          st_size = 0;
          v15 = *__error();
        }

        *a2 = v15;
LABEL_21:
        free(v9);
        close(v12);
        return st_size;
      }

      *a2 = *__error();
      free(v9);
      return 0;
    }

    st_size = 0;
    v11 = 12;
  }

  else
  {
    v11 = 22;
  }

  *a2 = v11;
  return st_size;
}

uint64_t sub_100012234(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = -32;
  while (((v1 >> v2) & 1) == 0)
  {
    if (__CFADD__(v2++, 1))
    {
      return 32;
    }
  }

  return -v2;
}

char *sub_10001225C(int a1, unsigned int a2)
{
  v12 = a1;
  v2 = bswap32(a2);
  v3 = -32;
  while (((v2 >> v3) & 1) == 0)
  {
    if (__CFADD__(v3++, 1))
    {
      byte_100034D00 = 0;
      v5 = 32;
      goto LABEL_8;
    }
  }

  byte_100034D00 = 0;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v5 = -v3;
LABEL_8:
  v6 = (v5 + 7) >> 3;
  v7 = &v12;
  do
  {
    v9 = *v7;
    v7 = (v7 + 1);
    v8 = v9;
    if (v6 == 1)
    {
      v10 = &unk_100025BF7;
    }

    else
    {
      v10 = ".";
    }

    snprintf(__str, 8uLL, "%d%s", v8, v10);
    __strlcat_chk();
    --v6;
  }

  while (v6);
LABEL_13:
  snprintf(__str, 8uLL, "/%d", v5);
  __strlcat_chk();
  return &byte_100034D00;
}

uint64_t sub_1000124AC(const char *a1, BOOL *a2)
{
  v4 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", 0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10000E61C(v4, a1);
    if (v6)
    {
      v7 = v6;
      Enabled = SCNetworkServiceGetEnabled(v6);
      *a2 = Enabled != 0;
      v9 = "disabled";
      if (Enabled)
      {
        v9 = "enabled";
      }

      sub_100001108(1u, "network service status for %s: %s", a1, v9);
      CFRelease(v7);
      v10 = 0;
    }

    else
    {
      sub_100001108(0, "%s: [non-critical] failed to find network service for %s", "mis_get_service_status", a1);
      v10 = 0xFFFFFFFFLL;
    }

    CFRelease(v5);
  }

  else
  {
    sub_100001108(0, "SCPreferencesCreate for %s returned NULL", a1);
    return 0xFFFFFFFFLL;
  }

  return v10;
}

uint64_t sub_100012594(void *a1, int a2, _DWORD *a3)
{
  v3 = a3;
  v4 = a2;
  *a3 = 0;
  if (a2 == 2)
  {
    v6 = &dword_100034C08;
    v39 = -6;
    v7 = &qword_100034BF8;
  }

  else
  {
    if (a2 != 30)
    {
      sub_100021254();
    }

    v6 = &dword_100034C0C;
    v39 = -7;
    v7 = &qword_100034C00;
  }

  interface_names = nwi_state_get_interface_names();
  if (interface_names)
  {
    v9 = malloc_type_malloc(8 * interface_names, 0x10040436913F5uLL);
    if (v9)
    {
      v10 = v9;
      v11 = nwi_state_get_interface_names();
      if (v11 >= 1)
      {
        v34 = v6;
        v12 = 0;
        v38 = 0;
        v36 = 0;
        v37 = v4;
        v13 = "IPv6";
        if (v4 == 2)
        {
          v13 = "IPv4";
        }

        v35 = v13;
        v14 = v11;
        while (1)
        {
          v15 = v10[v12];
          if (v15 && *v15 && if_nametoindex(v10[v12]))
          {
            if (nwi_state_get_ifstate())
            {
              flags = nwi_ifstate_get_flags();
              if ((flags | v39) == 0xFFFFFFFFFFFFFFFFLL)
              {
                if (v4 != 30)
                {
                  goto LABEL_34;
                }

                v33 = v3;
                v40 = 0;
                if (getifaddrs(&v40))
                {
                  sub_100001108(0, "%s: getifaddrs: %m", "mis_interface_has_routable_ipv6_addr");
                  goto LABEL_32;
                }

                v17 = v40;
                v32 = v40;
                if (v40)
                {
                  while (1)
                  {
                    ifa_addr = v17->ifa_addr;
                    if (ifa_addr)
                    {
                      if (ifa_addr->sa_family == 30 && !strncmp(v15, v17->ifa_name, 0x10uLL) && (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80))
                      {
                        break;
                      }
                    }

                    v17 = v17->ifa_next;
                    if (!v17)
                    {
                      free(v32);
                      goto LABEL_32;
                    }
                  }

                  free(v32);
                  v3 = v33;
LABEL_34:
                  sub_100001108(2u, "%s: nwi interface name %s found for %s", "mis_nwi_process_state", v15, v35);
                  v19 = v7;
                  while (1)
                  {
                    v19 = *v19;
                    if (!v19)
                    {
                      break;
                    }

                    if (!strncmp(v19 + 8, v15, 0x10uLL))
                    {
                      goto LABEL_45;
                    }
                  }

                  v20 = malloc_type_malloc(0x30uLL, 0x102004051B57111uLL);
                  if (!v20)
                  {
                    v30 = __error();
                    v31 = strerror(*v30);
                    sub_100001108(0, "%s: malloc failed:(%s) for nwi %s", "mis_nwi_process_state", v31, v15);
                    free(v10);
                    goto LABEL_59;
                  }

                  v19 = v20;
                  *(v20 + 1) = 0u;
                  *(v20 + 2) = 0u;
                  *v20 = 0u;
                  snprintf(v20 + 8, 0x10uLL, "%s", v15);
                  *v19 = *v7;
                  *v7 = v19;
                  if (v37 == 2)
                  {
                    v21 = __CFADD__(dword_100034CE8++, 1);
                    if (v21)
                    {
                      sub_1000212AC();
                    }
                  }

                  else
                  {
                    v21 = __CFADD__(dword_100034CEC++, 1);
                    if (v21)
                    {
                      sub_100021280();
                    }
                  }

                  HIDWORD(v38) = 1;
LABEL_45:
                  if (flags != v19[4])
                  {
                    v19[4] = flags;
                  }

                  v22 = sub_10001113C(v19 + 8);
                  v23 = HIDWORD(v38);
                  if (v22 != *(v19 + 6))
                  {
                    *(v19 + 6) = v22;
                    v23 = 1;
                  }

                  if (v38 >= v22)
                  {
                    v24 = v22;
                  }

                  else
                  {
                    v24 = v38;
                  }

                  if (v38)
                  {
                    v25 = v24;
                  }

                  else
                  {
                    v25 = v22;
                  }

                  *(v19 + 41) = 1;
                  LODWORD(v38) = v25;
                  HIDWORD(v38) = *(v19 + 40) ^ 1 | v23;
                  *(v19 + 7) = v36;
                  ++*v34;
                  ++v36;
                }

                else
                {
LABEL_32:
                  v3 = v33;
                }

                v4 = v37;
                goto LABEL_18;
              }

              sub_100001108(2u, "%s: skipped interface %s flags 0x%qx");
            }

            else
            {
              sub_100001108(0, "%s: no state info for %s");
            }
          }

          else
          {
            sub_100001108(0, "%s: bad interface in nwi state");
          }

LABEL_18:
          if (++v12 == v14)
          {
            goto LABEL_61;
          }
        }
      }

      v38 = 0;
LABEL_61:
      *v3 = v38;
      free(v10);
      v26 = BYTE4(v38);
    }

    else
    {
      v27 = __error();
      v28 = strerror(*v27);
      sub_100001108(0, "%s: malloc failed:(%s) for if_names", "mis_nwi_process_state", v28);
LABEL_59:
      nwi_state_release();
      v26 = 0;
      *a1 = 0;
    }
  }

  else
  {
    sub_100001108(0, "%s: no interfaces in nwi state", "mis_nwi_process_state");
    v26 = 0;
  }

  return v26 & 1;
}

ssize_t sub_100012A04(uint64_t a1)
{
  v1 = *(a1 + 32);
  data = dispatch_source_get_data(*(v1 + 768));
  sub_100001108(2u, "Estimated kernel prefix event bytes available: %ld", data);
  bzero(v12, 0x400uLL);
  handle = dispatch_source_get_handle(*(v1 + 768));
  result = read(handle, v12, 0x400uLL);
  if (result == -1)
  {
LABEL_15:
    result = *__error();
    if (result)
    {
      if (result != 35)
      {
        strerror(result);
        return sub_100001108(0, "recv() failed %s");
      }
    }

    return result;
  }

  v5 = result;
  while (2)
  {
    if (v5 >= 1)
    {
      v6 = 0;
      while (1)
      {
        v7 = &v12[v6];
        v6 += *&v12[v6];
        if (v6 > v5)
        {
          break;
        }

        if (v7[1] == 1 && v7[2] == 1 && v7[3] == 7 && v7[5] == 1 && if_nametoindex((v1 + 20)) == v7[28])
        {
          sub_100001108(2u, "received prefix event for %s", (v1 + 20));
          v11 = 0;
          memset(v10, 0, sizeof(v10));
          result = sub_100012C18(v1, v10);
          if (result)
          {
            return sub_100001108(0, "failed to get IPv6 configuration for %s");
          }

          for (i = *(v1 + 784); i; i = *(i + 528))
          {
            result = sub_100004C7C(v1, v10);
          }

          return result;
        }

        if (v6 >= v5)
        {
          goto LABEL_14;
        }
      }

      sub_100001108(2u, "missed SYSPROTO_EVENT event,buffer not big enough");
LABEL_14:
      bzero(v12, 0x400uLL);
      v8 = dispatch_source_get_handle(*(v1 + 768));
      result = read(v8, v12, 0x400uLL);
      v5 = result;
      if (result != -1)
      {
        continue;
      }

      goto LABEL_15;
    }

    return result;
  }
}

uint64_t sub_100012C18(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 464);
  v43[9] = *(a1 + 448);
  v43[10] = v4;
  v44 = *(a1 + 480);
  v5 = *(a1 + 400);
  v43[5] = *(a1 + 384);
  v43[6] = v5;
  v6 = *(a1 + 432);
  v43[7] = *(a1 + 416);
  v43[8] = v6;
  v7 = *(a1 + 336);
  v43[1] = *(a1 + 320);
  v43[2] = v7;
  v8 = *(a1 + 368);
  v43[3] = *(a1 + 352);
  v43[4] = v8;
  v9 = *(a1 + 304);
  v42 = *(a1 + 288);
  v43[0] = v9;
  v10 = (v9 | DWORD1(v9) | DWORD2(v9) | HIDWORD(v9)) == 0;
  *v45 = xmmword_1000234F0;
  __errnum = 0;
  v41 = 0;
  v11 = sub_100013188("ICMPV6CTL_ND6_DRLIST", v45, &v41, &__errnum);
  if (!v11)
  {
    v13 = __errnum;
    if (__errnum)
    {
      goto LABEL_3;
    }

    sub_100001108(0, "no usable default IPv6 router");
    return 0;
  }

  v12 = v41;
  v13 = __errnum;
  if (__errnum)
  {
LABEL_3:
    if (v13 != 2)
    {
      v14 = strerror(v13);
      sub_100001108(0, "%s, unable to get default router list: %s", (a1 + 20), v14);
    }

    v15 = 0;
    goto LABEL_6;
  }

  *v45 = xmmword_100023500;
  v41 = 0;
  __errnum = 0;
  v15 = sub_100013188("ICMPV6CTL_ND6_PRLIST", v45, &v41, &__errnum);
  if (!v15)
  {
    v13 = __errnum;
    if (!__errnum)
    {
      sub_100001108(0, "no usable IPv6 prefix information");
      v15 = 0;
      v13 = 2;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v39 = v41;
  v13 = __errnum;
  if (__errnum)
  {
LABEL_16:
    if (v13 != 2)
    {
      strerror(v13);
      sub_100001108(0, "%s, unable to get prefix list: %s");
    }

    goto LABEL_6;
  }

  v17 = (a1 + 20);
  v18 = if_nametoindex(v17);
  if (!v18)
  {
    v13 = *__error();
    sub_100001108(0, "if_nametoindex() failed %s: %m", v17);
    if ((v13 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_69;
    }

    sub_100001108(0, "%s, unable to get prefix and default router");
    goto LABEL_6;
  }

  if (v12 < 1)
  {
    goto LABEL_63;
  }

  v19 = v18;
  v34 = a2;
  v35 = v11;
  v36 = 0;
  v37 = 0;
  v38 = v12 + v11;
  v20 = v11;
  do
  {
    if (v39 >= 1 && v19 == *(v20 + 20))
    {
      v21 = v15;
      do
      {
        v22 = *(v21 + 33);
        if (v21[29] != 64)
        {
          goto LABEL_59;
        }

        if (v19 != *(v21 + 32) || v22 == 0)
        {
          goto LABEL_59;
        }

        v41 = 0;
        if (getifaddrs(&v41))
        {
          v24 = *__error();
          sub_100001108(0, "getifaddrs: %m");
        }

        else
        {
          v28 = v41;
          if (!v41)
          {
            goto LABEL_59;
          }

          while (1)
          {
            if (!strncmp(v17, v28->ifa_name, 0x10uLL))
            {
              ifa_addr = v28->ifa_addr;
              if (ifa_addr)
              {
                if (ifa_addr->sa_family == 30 && (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80) && *&ifa_addr->sa_data[6] == *(v21 + 1))
                {
                  break;
                }
              }
            }

            v28 = v28->ifa_next;
            if (!v28)
            {
              v24 = -1;
              goto LABEL_55;
            }
          }

          v24 = 0;
LABEL_55:
          if (v41)
          {
            free(v41);
          }
        }

        if (!v24)
        {
          v25 = *(v21 + 33);
          if (*(v21 + 33))
          {
            v26 = v21 + 80;
            while (*v26 != *(v20 + 1) || v26[1] != *(v20 + 2))
            {
              v26 = (v26 + 28);
              if (!--v25)
              {
                goto LABEL_59;
              }
            }

            if (v10 || (v36 = v21, v37 = v20, sub_10000E754(v43, v21 + 8, v21[29])))
            {
              v30 = v21;
              a2 = v34;
              v11 = v35;
              goto LABEL_68;
            }
          }
        }

LABEL_59:
        v21 += 28 * v22 + 72;
      }

      while (v21 < v39 + v15);
    }

    v20 += 48;
  }

  while (v20 < v38);
  a2 = v34;
  v11 = v35;
  v30 = v36;
  v20 = v37;
  if (v36 && v37)
  {
LABEL_68:
    memmove(a2 + 8, v30, 0x48uLL);
    v32 = *(v20 + 1);
    v31 = *(v20 + 2);
    *(a2 + 5) = *v20;
    *(a2 + 6) = v32;
    *(a2 + 7) = v31;
    *a2 = 1;
    inet_ntop(30, a2 + 16, v45, 0x2Eu);
    sub_100001108(1u, "found prefix: %s with prefix length %u for external interface %s", v45, a2[37], v17);
    v13 = 0;
  }

  else
  {
LABEL_63:
    sub_100001108(0, "no ipv6 default router or prefix information for %s", v17);
    v13 = 2;
  }

LABEL_69:
  if (*a2 == 1)
  {
    v33 = socket(30, 2, 0);
    if (v33 < 0)
    {
      v13 = *__error();
      sub_100001108(0, "socket: %m");
      if (v33 != -1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (__strlcpy_chk() < 0x10)
      {
        if (ioctl(v33, 0xC030694CuLL, a2 + 128) < 0)
        {
          v13 = *__error();
          sub_100001108(0, "SIOCGIFINFO_IN6 on %s: %m");
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = *__error();
        sub_100001108(0, "strlcpy: %m");
      }

LABEL_78:
      close(v33);
    }

    if (v13)
    {
      strerror(v13);
      sub_100001108(0, "unable to get ND info for %s: %s");
    }
  }

LABEL_6:
  if (v11)
  {
    free(v11);
  }

  if (v15)
  {
    free(v15);
  }

  if (v13 == 2)
  {
    return 0;
  }

  return v13;
}

void *sub_100013188(const char *a1, int *a2, size_t *a3, int *a4)
{
  size = 0;
  v8 = 1;
  while (1)
  {
    if (v8 != 1)
    {
      sub_100001108(0, "sysctl(%s): trying again (%d of %d)", a1, v8, 10);
    }

    if (sysctl(a2, 4u, 0, &size, 0, 0) < 0)
    {
      v10 = *__error();
LABEL_12:
      v11 = strerror(v10);
      sub_100001108(0, "sysctl(%s) failed: %s", a1, v11);
LABEL_14:
      v9 = 0;
      goto LABEL_17;
    }

    if (!size)
    {
      sub_100001108(0, "sysctl(%s): length is zero", a1);
      v10 = 0;
      goto LABEL_14;
    }

    v9 = malloc_type_malloc(size, 0x3EA7C6E2uLL);
    if (!v9)
    {
      sub_100001108(0, "sysctl(%s): malloc failed", a1);
      v10 = 12;
      goto LABEL_17;
    }

    if (!sysctl(a2, 4u, v9, &size, 0, 0))
    {
      break;
    }

    free(v9);
    v10 = *__error();
    if (*__error() != 12)
    {
      goto LABEL_12;
    }

    if (++v8 == 11)
    {
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_17:
  v12 = size;
  if (!v9)
  {
    v12 = 0;
  }

  *a3 = v12;
  *a4 = v10;
  return v9;
}

void sub_100013310(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v5 = (a3 + 20);
  v6 = "mis_dynamic_store_changed";
  sub_100001108(1u, "%s: processing %s", "mis_dynamic_store_changed", (a3 + 20));
  if (!*(a3 + 784))
  {
    sub_100001108(2u, "%s: interface %s is not associated with any network");
    return;
  }

  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    return;
  }

  v8 = Count;
  v9 = 0;
  v10 = (a3 + 740);
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v11 = kSCEntNetIPv4;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
    if (!CFStringHasSuffix(ValueAtIndex, v11))
    {
      if (!CFStringHasSuffix(ValueAtIndex, kSCEntNetIPv6))
      {
        goto LABEL_60;
      }

      v64 = in6addr_any;
      if (!ValueAtIndex || (v28 = *(a3 + 760)) == 0)
      {
        sub_100001108(0, "dynamic store ref or ipv6 key not present for %s", v5);
LABEL_67:
        v54 = *(a3 + 768);
        if (v54)
        {
          if (*(a3 + 288) != 1 || (v80 = 0, v78 = 0u, v79 = 0u, v76 = 0u, v77 = 0u, v74 = 0u, v75 = 0u, v72 = 0u, v73 = 0u, v70 = 0u, v71 = 0u, *buffer = 0u, v69 = 0u, sub_100004C7C(a3, buffer), (v54 = *(a3 + 768)) != 0))
          {
            dispatch_source_cancel(v54);
            dispatch_release(*(a3 + 768));
            *(a3 + 768) = 0;
          }
        }

        goto LABEL_60;
      }

      *v81 = 0;
      v82 = 0;
      v83 = 0;
      v29 = SCDynamicStoreCopyValue(v28, ValueAtIndex);
      if (!v29 || (TypeID = CFDictionaryGetTypeID(), v31 = CFGetTypeID(v29) == TypeID, v11 = kSCEntNetIPv4, !v31))
      {
        sub_100001108(2u, "ipv6 dictionary not present for %s", v5);
        goto LABEL_46;
      }

      Value = CFDictionaryGetValue(v29, kSCPropNetIPv6Addresses);
      if (Value)
      {
        v33 = Value;
        v34 = CFArrayGetTypeID();
        if (CFGetTypeID(v33) != v34)
        {
          v39 = "ipv6 array empty for %s";
          goto LABEL_64;
        }

        v35 = CFArrayGetCount(v33);
        v11 = kSCEntNetIPv4;
        if (v35)
        {
          v61 = v35;
          v36 = CFDictionaryGetValue(v29, kSCPropNetIPv6Flags);
          if (!v36)
          {
            sub_100001108(2u, "ipv6 flags empty for %s");
            goto LABEL_66;
          }

          v37 = v36;
          theArraya = CFArrayGetTypeID();
          if (CFGetTypeID(v37) == theArraya)
          {
            v58 = v37;
            v38 = CFArrayGetCount(v37);
            v39 = "ipv6 flags count mismatch for %s";
            v11 = kSCEntNetIPv4;
            if (v38 == v61)
            {
              theArray = v33;
              if (v61 >= 1)
              {
                v40 = 0;
                v63 = v10;
                while (1)
                {
                  v41 = CFArrayGetValueAtIndex(theArray, v40);
                  if (v41)
                  {
                    v42 = v41;
                    v43 = v5;
                    v44 = a2;
                    v45 = v8;
                    v46 = v6;
                    v47 = CFStringGetTypeID();
                    v31 = CFGetTypeID(v42) == v47;
                    v6 = v46;
                    v8 = v45;
                    a2 = v44;
                    v5 = v43;
                    v10 = v63;
                    if (v31)
                    {
                      CFStringGetCString(v42, buffer, 46, 0x600u);
                      if (inet_pton(30, buffer, &v82) == 1 && (v82.__u6_addr8[0] != 254 || (v82.__u6_addr8[1] & 0xC0) != 0x80))
                      {
                        valuePtr = 0;
                        v48 = CFArrayGetValueAtIndex(v58, v40);
                        if (CFNumberGetValue(v48, kCFNumberSInt32Type, &valuePtr))
                        {
                          if ((valuePtr & 0x109F) == 0)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }

                  if (v61 == ++v40)
                  {
                    goto LABEL_41;
                  }
                }

                v64 = v82;
                sub_100001108(2u, "found ipv6 address %s for %s", buffer, v5);
                CFRelease(v29);
                inet_ntop(30, (a3 + 708), buffer, 0x2Eu);
                inet_ntop(30, &v64, v81, 0x2Eu);
                sub_100001108(1u, "%s IPv6 address changed from %s to %s", v5, buffer, v81);
                sub_100004A70(a3, &v64);
                if (!*(a3 + 768) && sub_10000E0F8(a3))
                {
                  sub_100001108(0, "unable to listen to IPv6 prefix events");
                }

                v11 = kSCEntNetIPv4;
                goto LABEL_60;
              }

LABEL_41:
              sub_100001108(1u, "ipv6 is not present for %s", v5);
              v11 = kSCEntNetIPv4;
LABEL_46:
              if (!v29)
              {
                goto LABEL_67;
              }

              goto LABEL_66;
            }

            goto LABEL_65;
          }

          v39 = "ipv6 flags empty for %s";
LABEL_64:
          v11 = kSCEntNetIPv4;
LABEL_65:
          sub_100001108(2u, v39, v5);
          goto LABEL_66;
        }
      }

      sub_100001108(2u, "ipv6 array empty for %s");
LABEL_66:
      CFRelease(v29);
      goto LABEL_67;
    }

    if (!ValueAtIndex || (v13 = *(a3 + 760)) == 0)
    {
      sub_100001108(0, "dynamic store ref or IPv4 kSCEntNetIPv4 key not present for %s", v5);
      goto LABEL_87;
    }

    v14 = SCDynamicStoreCopyValue(v13, ValueAtIndex);
    if (v14)
    {
      break;
    }

    v65 = 0;
    v66 = 0;
LABEL_52:
    v50 = *v10;
    if (v50 != v66 || (v51 = *(a3 + 744), v51 != v65))
    {
      inet_ntop(2, v10, buffer, 0x10u);
      inet_ntop(2, &v66, v81, 0x10u);
      v52 = buffer;
      if (!*v10)
      {
        v52 = "";
      }

      v53 = v81;
      if (!v66)
      {
        v53 = "";
      }

      sub_100001108(1u, "%s IPv4 address changed from %s to %s", v5, v52, v53);
      LODWORD(v51) = v65;
      LODWORD(v50) = v66;
    }

    if (sub_100004364(a3, v50, v51))
    {
      v56 = v6;
      v55 = "%s: mis_network_v4_changed";
      goto LABEL_88;
    }

LABEL_60:
    if (++v9 == v8)
    {
      return;
    }
  }

  v15 = v14;
  v16 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v15) != v16)
  {
    sub_100001108(0, "%s, dynamic store IPv4 kSCEntNetIPv4 is not a CFDictionary");
    goto LABEL_86;
  }

  v17 = CFDictionaryGetValue(v15, kSCPropNetIPv4Addresses);
  if (!v17)
  {
    goto LABEL_43;
  }

  v18 = v17;
  v19 = CFArrayGetTypeID();
  if (CFGetTypeID(v18) != v19)
  {
    sub_100001108(0, "%s, dynamic store IPv4 address is not a CFArray");
    goto LABEL_86;
  }

  if (!CFArrayGetCount(v18))
  {
LABEL_43:
    v65 = 0;
    v66 = 0;
    CFRelease(v15);
    v11 = kSCEntNetIPv4;
    goto LABEL_52;
  }

  v20 = 1;
  if (sub_100011634(v5, &v65, 1))
  {
LABEL_50:
    v49 = CFArrayGetValueAtIndex(v18, 0);
    CFStringGetCString(v49, buffer, 16, 0x600u);
    if (inet_pton(2, buffer, &v66) != 1)
    {
      sub_100001108(0, "%s, inet_pton() failed for external address");
      goto LABEL_86;
    }

    CFRelease(v15);
    v11 = kSCEntNetIPv4;
    if ((v20 & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_52;
  }

  v21 = CFDictionaryGetValue(v15, kSCPropNetIPv4SubnetMasks);
  if (!v21)
  {
    sub_100001108(0, "%s, dynamic store network mask cannot be NULL");
    goto LABEL_86;
  }

  v22 = v21;
  v62 = v10;
  v23 = a2;
  v24 = v8;
  v25 = v6;
  v26 = CFArrayGetTypeID();
  if (CFGetTypeID(v22) != v26)
  {
    sub_100001108(0, "%s, dynamic store IPv4 network mask is not a CFArray");
    goto LABEL_86;
  }

  if (CFArrayGetCount(v22))
  {
    v27 = CFArrayGetValueAtIndex(v22, 0);
    CFStringGetCString(v27, buffer, 16, 0x600u);
    if (inet_pton(2, buffer, &v65) == 1)
    {
      v20 = 1;
    }

    else
    {
      sub_100001108(0, "%s, inet_pton() failed for external mask", v5);
      v20 = 0;
    }

    v6 = v25;
    v8 = v24;
    a2 = v23;
    v10 = v62;
    goto LABEL_50;
  }

  sub_100001108(0, "%s, dynamic store IPv4 network mask cannot be NULL");
LABEL_86:
  CFRelease(v15);
LABEL_87:
  v56 = v5;
  v55 = "%s, failed to get IPv4 configuration";
LABEL_88:
  sub_100001108(0, v55, v56, v57);
}

void sub_100013AA4(void *a1, const char *a2, int a3)
{
  v5 = a3;
  inet_ntop(2, &v5, string, 0x10u);
  xpc_dictionary_set_string(a1, a2, string);
}

uint64_t sub_100013B38(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  memset(v9, 0, sizeof(v9));
  result = sub_100002478(a1);
  if (!result)
  {
    result = sub_10000257C(v9);
    if (!result)
    {
      *a2 = BYTE1(v9[0]);
      v7 = BYTE2(v9[0]);
      *a3 = BYTE2(v9[0]);
      if (*a2 == 1 && v7)
      {
        v8 = DWORD1(v9[0]);
        sub_100016070(DWORD1(v9[0]), v6);
        sub_100001108(0, "maximum number of wireless tethered hosts is %d", v8);
        return 0;
      }

      else
      {
        return 45;
      }
    }
  }

  return result;
}

uint64_t sub_100013BF8(uint64_t a1)
{
  sub_100001108(2u, "%s: mis_pdp_refcnt %d", "mis_pdp_init", dword_100034D24);
  v2 = dword_100034D24++;
  if (v2 > 0)
  {
    return 0;
  }

  if (*(a1 + 8) == 100)
  {
    v3 = sub_100013CB4(a1, 1);
    if (!v3)
    {
      return v3;
    }
  }

  else
  {
    sub_100001108(0, "%s: [internal error] %s is not type MIS_IFTYPE_PDP", "mis_pdp_init", (a1 + 20));
    v3 = 22;
  }

  sub_100013D8C(a1);
  return v3;
}

uint64_t sub_100013CB4(uint64_t a1, int a2)
{
  if (dword_100034D24)
  {
    if (*(a1 + 794) == 1)
    {
      sub_100001108(0, "%s: %s is already up", "mis_pdp_context_validate", (a1 + 20));
      return 37;
    }

    else
    {
      if (a2)
      {
        sub_10001EFFC(1, sub_1000140B0, a1);
        sub_10001F0FC();
      }

      *(a1 + 793) = 1;
      sub_100001108(1u, "%s: mis_pdp_context_validate success", "mis_pdp_context_validate");
      return 0;
    }
  }

  else
  {
    sub_100001108(0, "%s: [internal error] mis_pdp_refcnt is 0", "mis_pdp_context_validate");
    return 19;
  }
}

uint64_t sub_100013D8C(uint64_t a1)
{
  if (*(a1 + 8) != 100)
  {
    sub_1000212D8();
  }

  if (!dword_100034D24)
  {
    sub_100021304();
  }

  result = sub_100001108(2u, "%s: mis_pdp_refcnt %d", "mis_pdp_context_cleanup", dword_100034D24);
  v3 = __OFSUB__(dword_100034D24--, 1);
  if ((dword_100034D24 < 0) ^ v3 | (dword_100034D24 == 0))
  {
    sub_10000E3A8(a1);
    *(a1 + 800) = 0;
    sub_10001EFFC(0, 0, 0);
    result = sub_10001EFBC(0);
    *(a1 + 793) = 0;
    if (*(a1 + 768) || *(a1 + 760))
    {
      return sub_100001108(0, "%s: [internal error] improperly cleaned up, ext_if %s", "mis_pdp_context_cleanup", (a1 + 20));
    }
  }

  return result;
}

uint64_t sub_100013E58(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 8) != 100)
  {
    sub_100021350(*(a1 + 24));
  }

  if (!dword_100034D24)
  {
    sub_100001108(0, "%s: no PDP interface initialized", "mis_pdp_start");
    return 19;
  }

  v3 = *(a1 + 8);
  *(v1 + 792) = (v3 & 0x80) != 0;
  if ((v3 & 0x80) == 0)
  {
    v6 = *(v1 + 800);
    if (*(v1 + 801) & 1) != 0 || (v6)
    {
      sub_100001108(1u, "%s: Ignoring PDP context activation request since PDP context is active(%d) or in-progress(%d)", "mis_pdp_activate", *(v1 + 801), v6);
      return 0;
    }

    sub_100001108(0, "%s: starting tethering activation", "mis_pdp_activate");
    v9 = sub_10001EFBC(1);
    if (!v9)
    {
      *(v1 + 800) = 1;
      sub_100001108(0, "%s: submitted tethering activation request to CC, waiting for callback, network %s", "mis_pdp_activate", (a1 + 40));
      return 36;
    }

    v5 = v9;
    sub_100001108(0, "%s: failed to activate tethering %d, network %s", "mis_pdp_activate", v9, (a1 + 40));
    goto LABEL_17;
  }

  memset(v10, 0, sizeof(v10));
  sub_100001108(0, "%s: starting tethering authentication", "mis_pdp_activate");
  v4 = sub_10000257C(v10);
  v5 = v4;
  if (v4)
  {
    sub_100001108(0, "%s: mis_ctinterface_get_tethering_status returned %d", "mis_pdp_activate", v4);
    sub_1000158A0(1021);
  }

  if ((v10[0] & 1) == 0)
  {
    v7 = 1020;
LABEL_15:
    sub_1000158A0(v7);
    goto LABEL_16;
  }

  if ((BYTE1(v10[0]) & 1) == 0)
  {
    v7 = 1021;
    goto LABEL_15;
  }

  sub_100015AFC();
LABEL_16:
  *(v1 + 792) = 0;
LABEL_17:
  if (v5 == 36)
  {
    return 36;
  }

  sub_1000057E8(a1, v5);
  if (v5 && v5 != 62)
  {
    sub_100001108(0, "%s: mis_pdp_activate, %d", "mis_pdp_start", v5);
  }

  return v5;
}

uint64_t sub_100014080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (*(v3 + 8) != 100)
  {
    sub_1000213A0();
  }

  return sub_100013D8C(v3);
}

uint64_t sub_1000140B0(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_100001108(0, "%s: CT callback for %s with NULL arg");
  }

  if (!a2 && (a1 - 1) <= 1)
  {
    v6 = "connection_state";
    if (a1 == 1)
    {
      v6 = "tethering_status";
    }

    sub_100001108(0, "%s: CT callback for %s with NULL info", "mis_pdp_ct_event_callback", v6);
  }

  if (!dword_100034D24 || (*(a3 + 793) & 1) == 0)
  {
    return sub_100001108(0, "%s: ignoring unexpected/invalid CT event for %s callback, refcnt %u, pdp %s");
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v14 = "false";
      if (*(a2 + 2))
      {
        v15 = "true";
      }

      else
      {
        v15 = "false";
      }

      v16 = *(a2 + 8) - 1;
      if (v16 > 3)
      {
        v17 = "unknown_state";
      }

      else
      {
        v17 = off_100030FF8[v16];
      }

      if (*(a3 + 800))
      {
        v14 = "true";
      }

      v18 = "event_tethering_status";
      result = sub_100001108(1u, "%s: conn_available: %s, conn_state: %s, conn_sts_wait: %s, new_ifname: %s, cur_ifname: %s", "event_tethering_status", v15, v17, v14, (a2 + 16), (a3 + 20));
      if ((*(a3 + 800) & 1) != 0 || *(a2 + 16) && (result = strncmp((a3 + 20), (a2 + 16), 0x100uLL), result))
      {
        if (*(a2 + 2) == 1 && *(a2 + 8) == 3)
        {
          goto LABEL_48;
        }
      }

      if (*(a3 + 794) != 1 || *(a2 + 2) == 1 && *(a2 + 8) == 3)
      {
LABEL_53:
        v10 = 0;
        goto LABEL_54;
      }

      sub_100001108(1u, "%s: tethering connection not available or active, teardown external interface");
    }

    else
    {
      if (a1 != 2)
      {
LABEL_28:
        result = sub_100001108(0, "%s: unhandled CT event(%d)", "mis_pdp_ct_event_callback", a1);
        v10 = 6;
        goto LABEL_54;
      }

      v8 = *a2 - 1;
      if (v8 > 3)
      {
        v9 = "unknown_state";
      }

      else
      {
        v9 = off_100030FF8[v8];
      }

      v19 = "false";
      if (*(a3 + 800))
      {
        v19 = "true";
      }

      v18 = "event_connection_status";
      result = sub_100001108(1u, "%s: conn_state: %s, conn_sts_wait: %s, new_ifname: %s, cur_ifname: %s", "event_connection_status", v9, v19, (a2 + 8), (a3 + 20));
      if (*a2 == 3)
      {
        if ((*(a3 + 800) & 1) != 0 || *(a2 + 8) && (result = strncmp((a3 + 20), (a2 + 8), 0x100uLL), result))
        {
LABEL_48:
          sub_100001108(1u, "%s: tethering connection active, setup external interface", v18);
          result = sub_1000144B0(a3);
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      if (*(a3 + 794) != 1)
      {
        goto LABEL_53;
      }

      sub_100001108(1u, "%s: tethering connection not active, teardown external interface");
    }

    result = sub_10001472C(a3);
    goto LABEL_52;
  }

  switch(a1)
  {
    case 3:
      sub_100001108(0, "%s: encountered a connection error trying to activate tethering, tearing down phs service", "event_connection_error");
      v10 = 45;
      v11 = a3;
      v12 = "event_connection_error";
      v13 = 45;
      break;
    case 4:
      sub_100001108(0, "%s: CoreTelephony connection was lost", "event_xpc_connection_invalidated");
      v10 = 36;
      v11 = a3;
      v12 = "event_xpc_connection_invalidated";
      v13 = 36;
      break;
    case 5:
      sub_100001108(0, "%s: CoreTelephony connection is now restored", "event_xpc_connection_restored");
      result = sub_100013CB4(a3, 0);
LABEL_52:
      v10 = result;
      goto LABEL_54;
    default:
      goto LABEL_28;
  }

  result = sub_10001478C(v11, v12, v13);
LABEL_54:
  *(a3 + 796) = v10;
  return result;
}

uint64_t sub_1000144B0(uint64_t a1)
{
  *__s2 = 0;
  v15 = 0;
  if (sub_10001F054(__s2))
  {
    sub_100001108(0, "unable to get interface name");
    v2 = 19;
    sub_100001108(0, "%s: mis_pdp_get_name_mtu failed %d", "mis_pdp_setup_external_interface", 19);
  }

  else
  {
    v3 = strncmp((a1 + 20), __s2, 0x100uLL);
    if (v3)
    {
      snprintf(__str, 0x10uLL, "%s", (a1 + 20));
      sub_10000E3A8(a1);
      v4 = qword_100034C38;
      if (qword_100034C38)
      {
        do
        {
          v5 = v4[3];
          if (v5 && !strncmp((a1 + 20), (v5 + 20), 0x10uLL))
          {
            sub_1000207C8(v4);
          }

          v4 = *v4;
        }

        while (v4);
      }

      sub_100001108(2u, "%s: done", "mis_stop_external_interface");
    }

    snprintf((a1 + 20), 0x100uLL, "%s", __s2);
    v6 = sub_10001113C((a1 + 20));
    *(a1 + 12) = v6;
    *(a1 + 16) = v6 - 40;
    if (v3)
    {
      v7 = qword_100034C38;
      if (qword_100034C38)
      {
        v8 = 0;
        do
        {
          v9 = v7[3];
          if (v9 && !strncmp((a1 + 20), (v9 + 20), 0x10uLL))
          {
            sub_100020464(v7);
            ++v8;
          }

          v7 = *v7;
        }

        while (v7);
        if (v8)
        {
          sub_10001BE98();
        }
      }

      else
      {
        v8 = 0;
      }

      sub_100001108(2u, "%s: done, affected networks %u", "mis_start_external_interface", v8);
      v6 = *(a1 + 12);
    }

    sub_100001108(0, "PDP interface is ready [%s, mtu=%d]", (a1 + 20), v6);
    v10 = sub_10000DDE4(a1);
    if (v10)
    {
      v11 = v10;
      sub_100001108(0, "%s: mis_setup_external_listeners failed %d", "mis_pdp_setup_external_interface", v10);
      v2 = v11;
    }

    else
    {
      sub_100001108(1u, "%s: mis_setup_external_listeners done for %s", "mis_pdp_setup_external_interface", (a1 + 20));
      v2 = 0;
    }
  }

  *(a1 + 800) = 0;
  *(a1 + 801) = v2 == 0;
  *(a1 + 794) = v2 == 0;
  sub_100015B3C(v2);
  for (i = *(a1 + 784); i; i = *(i + 528))
  {
    sub_1000057E8(i, v2);
  }

  return v2;
}

uint64_t sub_10001472C(_BYTE *a1)
{
  a1[801] = 0;
  a1[794] = 0;
  sub_10000E3A8(a1);
  if ((a1[795] & 1) == 0)
  {
    sub_10000E7F4(0x1388u);
    a1[795] = 1;
  }

  sub_100015B3C(36);
  a1[800] = 1;
  if (sub_10001587C() == 45)
  {
    return 45;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001478C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_100001108(0, "%s: %s err = %d", "reset_netrb_state", a2, a3);
  sub_10000E3A8(a1);
  *(a1 + 800) = 0;
  *(a1 + 793) = 0;
  sub_100015B3C(a3);

  return sub_1000158A0(1020);
}

uint64_t sub_100014804()
{
  byte_100034D28 = 1;
  v0 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.MobileInternetSharing", 0, 0);
  qword_100034D30 = v0;
  if (!v0)
  {
    v21 = SCError();
    SCErrorString(v21);
    sub_100001108(0, "%s: SCDynamicStoreCreate() failed: %s");
    return 12;
  }

  if (!SCDynamicStoreSetDispatchQueue(v0, qword_100034BD8))
  {
    v22 = SCError();
    SCErrorString(v22);
    sub_100001108(0, "%s: SCDynamicStoreSetDispatchQueue() failed: %s");
    return 12;
  }

  if (!SCDynamicStoreSetDisconnectCallBack())
  {
    v23 = SCError();
    SCErrorString(v23);
    sub_100001108(0, "%s: SCDynamicStoreSetDisconnectCallBack() failed: %s");
    return 12;
  }

  v1 = CFCopyHomeDirectoryURLForUser();
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v74 = 0;
  v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  if (!v3)
  {
    v24 = 12;
    goto LABEL_113;
  }

  v4 = v3;
  CFStringGetCString(v3, byte_100034D38, 1024, 0x600u);
  v5 = getpwnam("mobile");
  if (!v5)
  {
    v24 = 2;
    goto LABEL_112;
  }

  dword_100035138 = v5->pw_gid;
  if (qword_100035140)
  {
    free(qword_100035140);
  }

  v6 = strlen(byte_100034D38);
  v7 = malloc_type_malloc(v6 + 59, 0x4D411E74uLL);
  qword_100035140 = v7;
  if (!v7)
  {
LABEL_101:
    v24 = 12;
    goto LABEL_112;
  }

  snprintf(v7, v6 + 59, "%s%s", byte_100034D38, "/Library/Preferences/com.apple.MobileInternetSharing.plist");
  *&dword_10003514C = 0u;
  *&dword_10003515C = 0u;
  unk_10003516C = 0u;
  unk_10003517C = 0;
  dword_100035148[0] = 3;
  qword_100035150 = vdup_n_s32(0x3FCu);
  dword_10003515C = 0;
  if (!qword_100035140)
  {
    sub_1000213F8();
  }

  v75 = 0;
  v8 = sub_1000120A0(qword_100035140, &v75, 1);
  if (!v8)
  {
    sub_100001108(0, "%s: failed (%d) to read settings from %s", "read_settings", v75, qword_100035140);
    if (!v75)
    {
      sub_1000213CC();
    }

    v27 = 0;
    v28 = dword_100035148[0];
    goto LABEL_39;
  }

  v9 = v8;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v9) != TypeID || (Value = CFDictionaryGetValue(v9, @"Version")) == 0 || (v12 = Value, v13 = CFNumberGetTypeID(), CFGetTypeID(v12) != v13) || (v14 = CFDictionaryGetValue(v9, @"State")) == 0 || (v15 = v14, v16 = CFNumberGetTypeID(), CFGetTypeID(v15) != v16) || (v17 = CFDictionaryGetValue(v9, @"UState")) == 0 || (v18 = v17, v19 = v4, v20 = CFNumberGetTypeID(), v54 = CFGetTypeID(v18) == v20, v4 = v19, !v54))
  {
    sub_100001108(0, "%s: failed to get properties from plist file", "read_settings");
    v26 = 2;
LABEL_33:
    v75 = v26;
    goto LABEL_34;
  }

  if (!CFNumberGetValue(v12, kCFNumberIntType, dword_100035148) || !CFNumberGetValue(v15, kCFNumberIntType, &qword_100035150) || !CFNumberGetValue(v18, kCFNumberIntType, &dword_10003514C))
  {
    sub_100001108(0, "%s: failed to retrieve property values", "read_settings");
    v26 = 22;
    goto LABEL_33;
  }

  v75 = sub_1000174BC(v9);
LABEL_34:
  CFRelease(v9);
  v27 = v75 == 0;
  v28 = dword_100035148[0];
  if (!v75 && dword_100035148[0] == 3)
  {
    v29 = qword_100035150;
    v27 = 1;
    goto LABEL_41;
  }

LABEL_39:
  v29 = 1020;
  if (v28 != 3)
  {
    LODWORD(qword_100035150) = 1020;
  }

LABEL_41:
  if (dword_10003514C != 1023)
  {
    dword_10003514C = 1022;
  }

  v30 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", @"com.apple.radios.plist");
  qword_100035188 = v30;
  if (v30)
  {
    if (SCPreferencesSetCallback(v30, sub_10001518C, 0) && SCPreferencesSetDispatchQueue(qword_100035188, qword_100034BD8))
    {
      sub_1000151E8();
    }

    else
    {
      v31 = SCError();
      v32 = SCErrorString(v31);
      sub_100001108(0, "%s: radio pref callback setup failed: %s\n", "mis_set_load", v32);
      CFRelease(qword_100035188);
      qword_100035188 = 0;
    }
  }

  else
  {
    v33 = SCError();
    v34 = SCErrorString(v33);
    sub_100001108(0, "%s: SCPreferencesCreate() failed: %s\n", "mis_set_load", v34);
  }

  sub_100001F40(0, 0, v29, 0, 0, &v74, 0);
  if (!v74)
  {
    if (qword_100035150 != v29 || !v27)
    {
      sub_1000152B0();
    }

    sub_10001536C(qword_100034D30);
  }

  v76 = 0;
  Mutable = qword_1000351A0;
  if (!qword_1000351A0)
  {
    v37 = sub_1000120A0("/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", &v76, 0);
    if (v37)
    {
      v38 = v37;
      qword_1000351A0 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v37);
      CFRelease(v38);
      Mutable = qword_1000351A0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_1000351A0 = Mutable;
    }

    if (!Mutable)
    {
      sub_100001108(0, "CFDictionaryCreateMutable() failed");
      goto LABEL_101;
    }
  }

  v39 = &byte_100034D38[712];
  v40 = qword_100035190;
  if (!qword_100035190)
  {
    v41 = CFDictionaryGetValue(Mutable, @"MAC_ARRAY");
    v40 = v41 ? CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v41) : CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    qword_100035190 = v40;
    if (!v40)
    {
LABEL_100:
      sub_100001108(0, "CFArrayCreateMutable() failed");
      goto LABEL_101;
    }
  }

  if (!qword_100035198)
  {
    v42 = CFDictionaryGetValue(qword_1000351A0, @"MAC_IOUE_ARRAY");
    if (v42)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v42);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    }

    qword_100035198 = MutableCopy;
    if (MutableCopy)
    {
      v40 = qword_100035190;
      goto LABEL_73;
    }

    goto LABEL_100;
  }

LABEL_73:
  v72 = v4;
  v73 = v2;
  Count = CFArrayGetCount(v40);
  if (Count >= 1)
  {
    v45 = Count;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      v48 = v39;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v39 + 50), v46);
      if (ValueAtIndex)
      {
        v50 = ValueAtIndex;
        v51 = CFDictionaryGetTypeID();
        if (CFGetTypeID(v50) == v51)
        {
          v52 = CFDictionaryGetValue(v50, @"MAC_USED");
          v53 = CFBooleanGetTypeID();
          if (!v52 || (CFGetTypeID(v52) == v53 ? (v54 = v52 == kCFBooleanFalse) : (v54 = 0), !v54))
          {
            v55 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v50);
            if (!v55)
            {
              sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
              v24 = 12;
              v4 = v72;
LABEL_109:
              v2 = v73;
              goto LABEL_112;
            }

            v56 = v55;
            CFDictionarySetValue(v55, @"MAC_USED", kCFBooleanFalse);
            CFArraySetValueAtIndex(*(v48 + 50), v46, v56);
            CFRelease(v56);
            v47 = 1;
          }
        }
      }

      ++v46;
      v39 = v48;
      if (v45 == v46)
      {
        goto LABEL_87;
      }
    }
  }

  v47 = 0;
LABEL_87:
  v57 = &byte_100034D38[712];
  v58 = CFArrayGetCount(qword_100035198);
  if (v58 < 1)
  {
    v2 = v73;
LABEL_103:
    if ((v47 & 1) == 0)
    {
      v24 = 0;
      goto LABEL_111;
    }

    CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
    CFDictionarySetValue(qword_1000351A0, @"MAC_IOUE_ARRAY", *(v57 + 51));
    v69 = qword_1000351A0;
    v70 = geteuid();
    v71 = getgid();
    v76 = sub_100011EFC(v69, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v70, v71, 416, 0);
    v4 = v72;
    if (v76)
    {
      CFRelease(qword_100035190);
      CFRelease(*(v57 + 51));
      CFRelease(qword_1000351A0);
      qword_100035190 = 0;
      *(v57 + 51) = 0;
      qword_1000351A0 = 0;
      sub_100001108(0, "plist write failed for IOUE address");
      v24 = v76;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_109;
  }

  v59 = v58;
  v60 = 0;
  v2 = v73;
  while (1)
  {
    v61 = CFArrayGetValueAtIndex(*(v57 + 51), v60);
    if (!v61)
    {
      goto LABEL_98;
    }

    v62 = v61;
    v63 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v62) != v63)
    {
      goto LABEL_98;
    }

    v64 = CFDictionaryGetValue(v62, @"MAC_IOUE_USED");
    v65 = CFBooleanGetTypeID();
    if (v64)
    {
      if (CFGetTypeID(v64) == v65 && v64 == kCFBooleanFalse)
      {
        goto LABEL_98;
      }
    }

    v67 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v62);
    if (!v67)
    {
      break;
    }

    v68 = v67;
    CFDictionarySetValue(v67, @"MAC_IOUE_USED", kCFBooleanFalse);
    CFArraySetValueAtIndex(qword_100035198, v60, v68);
    CFRelease(v68);
    v47 = 1;
LABEL_98:
    ++v60;
    v57 = byte_100034D38 + 712;
    if (v59 == v60)
    {
      goto LABEL_103;
    }
  }

  sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
  v24 = 12;
LABEL_111:
  v4 = v72;
LABEL_112:
  CFRelease(v4);
LABEL_113:
  CFRelease(v2);
  return v24;
}

uint64_t sub_100015148(const __SCDynamicStore *a1)
{
  sub_100001108(0, "Restoring settings due to SC disconnection");

  return sub_10001536C(a1);
}

void sub_10001518C(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0 && qword_100035188)
  {
    sub_1000151E8();
    v2 = qword_100035150;
    v3 = dword_100035158;
    v4 = dword_10003515C;

    sub_100001F40(0, 0, v2, v3, v4, 0, 0);
  }
}

void sub_1000151E8()
{
  if (!qword_100035188)
  {
    sub_100021424();
  }

  Value = SCPreferencesGetValue(qword_100035188, @"AirplaneMode");
  if (Value)
  {
    v1 = Value;
    v2 = CFGetTypeID(Value);
    if (v2 == CFBooleanGetTypeID())
    {
      v3 = byte_100035180;
      v4 = CFBooleanGetValue(v1);
      if (v3 != (v4 != 0))
      {
        byte_100035180 = v4 != 0;
        v5 = "OFF";
        if (v4)
        {
          v5 = "ON";
        }

        sub_100001108(0, "Airplane Mode is %s", v5);
      }
    }
  }

  v6 = qword_100035188;

  SCPreferencesSynchronize(v6);
}

void sub_1000152B0()
{
  if (!qword_100035140)
  {
    sub_100021450();
  }

  v0 = sub_10001764C(1);
  if (v0)
  {
    v1 = v0;
    v2 = qword_100035140;
    v3 = geteuid();
    v4 = sub_100011EFC(v1, v2, v3, dword_100035138, 384, 1);
    v5 = "error";
    if (!v4)
    {
      v5 = "success";
    }

    sub_100001108(2u, "wrote changes: %s", v5);

    CFRelease(v1);
  }
}

uint64_t sub_10001536C(const __SCDynamicStore *a1)
{
  if (!a1)
  {
    sub_10002147C();
  }

  v2 = SCDynamicStoreKeyCreate(0, @"%@", @"com.apple.MobileInternetSharing");
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  v4 = sub_10001764C(0);
  if (v4)
  {
    v5 = v4;
    v36 = a1;
    v37 = v3;
    v35 = CFNumberCreate(0, kCFNumberIntType, &dword_100035158);
    CFDictionarySetValue(v5, @"Reason", v35);
    v34 = CFNumberCreate(0, kCFNumberIntType, &dword_10003515C);
    CFDictionarySetValue(v5, @"Errnum", v34);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v7 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    for (i = qword_1000351A8; i; i = *i)
    {
      v9 = CFStringCreateWithCString(0, (i + 12), 0x600u);
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
      count = xpc_array_get_count(*(i + 32));
      if (count)
      {
        v11 = count;
        for (j = 0; j != v11; ++j)
        {
          string = xpc_array_get_string(*(i + 32), j);
          v14 = CFStringCreateWithCString(0, string, 0x600u);
          CFArrayAppendValue(v7, v14);
          CFRelease(v14);
        }
      }
    }

    CFDictionarySetValue(v5, @"InternalInterfaces", v7);
    CFDictionarySetValue(v5, @"ExternalInterfaces", Mutable);
    v15 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    cf = CFNumberCreate(0, kCFNumberIntType, &dword_100035160);
    CFDictionarySetValue(v15, @"Max", cf);
    v16 = 0;
    v17 = 0;
    do
    {
      v17 += dword_100035148[v16 + 7];
      ++v16;
    }

    while (v16 != 7);
    valuePtr = v17;
    v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v15, @"Current", v32);
    if (!dword_100035160)
    {
      goto LABEL_15;
    }

    v18 = 0;
    v19 = 0;
    do
    {
      v19 += dword_100035148[v18 + 7];
      ++v18;
    }

    while (v18 != 7);
    if (v19 >= dword_100035160)
    {
      v20 = &kCFBooleanFalse;
    }

    else
    {
LABEL_15:
      v20 = &kCFBooleanTrue;
    }

    CFDictionarySetValue(v15, @"MoreAllowed", *v20);
    v22 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v23 = &unk_100035164;
    v24 = -2;
    v25 = 7;
    do
    {
      if (v24 <= 4)
      {
        v26 = *(&off_100031018 + v24);
        v27 = CFNumberCreate(0, kCFNumberIntType, v23);
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v22, v26, v27);
          CFRelease(v28);
        }
      }

      v23 += 4;
      ++v24;
      --v25;
    }

    while (v25);
    CFDictionarySetValue(v15, @"Type", v22);
    CFDictionarySetValue(v5, @"Hosts", v15);
    if (v15)
    {
      CFRelease(v15);
    }

    v3 = v37;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v29 = SCDynamicStoreSetValue(v36, v37, v5);
    v21 = v29 == 0;
    v30 = "success";
    if (!v29)
    {
      v30 = "error";
    }

    sub_100001108(0, "published changes: %s", v30);
    CFRelease(v5);
  }

  else
  {
    v21 = 12;
  }

  CFRelease(v3);
  return v21;
}

void sub_1000157AC()
{
  if (byte_100034D28 == 1)
  {
    if (qword_100035140)
    {
      free(qword_100035140);
      qword_100035140 = 0;
    }

    if (qword_100035188)
    {
      CFRelease(qword_100035188);
      qword_100035188 = 0;
    }

    if (qword_100035190)
    {
      CFRelease(qword_100035190);
      qword_100035190 = 0;
    }

    if (qword_100035198)
    {
      CFRelease(qword_100035198);
      qword_100035198 = 0;
    }

    if (qword_1000351A0)
    {
      CFRelease(qword_1000351A0);
      qword_1000351A0 = 0;
    }

    if (qword_100034D30)
    {
      SCDynamicStoreSetDispatchQueue(qword_100034D30, 0);
      CFRelease(qword_100034D30);
      qword_100034D30 = 0;
    }

    byte_100034D28 = 0;
  }
}

uint64_t sub_1000158C4(unsigned int a1, int a2, int a3)
{
  v3 = qword_100035150;
  v4 = dword_100035158;
  v5 = dword_10003515C;
  if (a2)
  {
    if (a3)
    {
      sub_1000214D4();
    }

    if (a1 != 1022)
    {
      sub_1000214A8();
    }

    if (dword_10003514C <= 0x3FE)
    {
      v6 = 1022;
    }

    else
    {
      v6 = dword_10003514C;
    }

    dword_100035158 = 0;
    dword_10003515C = 0;
    if ((byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || byte_100035182 == 1)
    {
      v18 = 0;
      v7 = 4;
      dword_100035158 = 4;
    }

    else
    {
      v18 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (qword_100035150 < 0x3FE && byte_100034BB1 == 0 && a1 > 0x3FD)
    {
      v6 = 1020;
    }

    else
    {
      v6 = a1;
    }

    v18 = dword_10003515C;
    v7 = dword_100035158;
  }

  if ((qword_100035150 - 1020) > 3)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = (&off_100031040)[(qword_100035150 - 1020)];
  }

  if ((v6 - 1020) > 3)
  {
    v12 = "UNKNOWN";
  }

  else
  {
    v12 = (&off_100031040)[v6 - 1020];
  }

  v13 = sub_100017498(v4);
  v14 = sub_100017498(v7);
  sub_100001108(1u, "set state: state %s(%d)->%s(%d), reason: %s(%d)->%s(%d),  errnum %d->%d", v10, v3, v12, v6, v13, v4, v14, v7, v5, v18);
  LODWORD(qword_100035150) = v6;
  if (a2)
  {
    v15 = v4;
  }

  else
  {
    v15 = dword_100035158;
  }

  if (a2)
  {
    v16 = v5;
  }

  else
  {
    v16 = dword_10003515C;
  }

  return sub_100001F40(0, 0, v3, v15, v16, 0, a3);
}

void sub_100015AA8()
{
  if (qword_100035150 == 1023)
  {
    sub_1000158C4(0x3FEu, 0, 0);

    sub_1000158C4(0x3FFu, 0, 0);
  }
}

uint64_t sub_100015B3C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_100017404(a1);
  if (v2 == 4 || (byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || (v3 = v2, byte_100035182 == 1))
  {
    v3 = 4;
  }

  v4 = dword_100035158;
  v5 = sub_100017498(dword_100035158);
  v6 = sub_100017498(v3);
  if ((qword_100035150 - 1020) > 3)
  {
    v7 = "UNKNOWN";
  }

  else
  {
    v7 = (&off_100031040)[(qword_100035150 - 1020)];
  }

  sub_100001108(2u, "set reason: %s(%d)->%s(%d), errnum %d->%d, state %s(%d), forced %d", v5, v4, v6, v3, dword_10003515C, v1, v7, qword_100035150, 0);
  if (v3 != dword_100035158 || dword_10003515C != v1)
  {
    dword_100035158 = v3;
    dword_10003515C = v1;
    sub_10001536C(qword_100034D30);
  }

  return 0;
}

uint64_t sub_100015C4C(char *__s1, const char *a2)
{
  v4 = &qword_1000351A8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (!strcmp(__s1, v4 + 12))
    {
      goto LABEL_8;
    }
  }

  v5 = malloc_type_malloc(0x28uLL, 0x10A00403AAC9C39uLL);
  if (!v5)
  {
    return 12;
  }

  v4 = v5;
  v5[4] = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = xpc_array_create(0, 0);
  v4[4] = v6;
  if (!v6)
  {
    free(v4);
    return 12;
  }

  snprintf(v4 + 12, 0x10uLL, "%s", __s1);
LABEL_8:
  count = xpc_array_get_count(v4[4]);
  if (count)
  {
    v8 = count;
    v9 = 0;
    while (1)
    {
      string = xpc_array_get_string(v4[4], v9);
      if (!strcmp(string, a2))
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_12;
      }
    }

    sub_100001108(0, "%s internal interface already present for external %s", string, v4 + 12);
    return 22;
  }

  else
  {
LABEL_12:
    xpc_array_set_string(v4[4], 0xFFFFFFFFFFFFFFFFLL, a2);
    v11 = *(v4 + 2);
    *(v4 + 2) = v11 + 1;
    if (!v11)
    {
      *v4 = qword_1000351A8;
      qword_1000351A8 = v4;
    }

    v12 = qword_100034D30;

    return sub_10001536C(v12);
  }
}

uint64_t sub_100015DC8(char *__s1, const char *a2)
{
  v4 = &qword_1000351A8;
  v5 = &qword_1000351A8;
  do
  {
    v5 = *v5;
    if (!v5)
    {
      sub_100001108(0, "%s, external interface not present in settings", __s1);
      return 0;
    }
  }

  while (strcmp(__s1, v5 + 12));
  v6 = v5[4];
  v7 = xpc_array_create(0, 0);
  count = xpc_array_get_count(v6);
  if (count)
  {
    v9 = count;
    v10 = 0;
    v11 = 0;
    v19 = count - 1;
LABEL_6:
    v12 = v11;
    do
    {
      string = xpc_array_get_string(v6, v12);
      if (!strcmp(string, a2))
      {
        v11 = v12 + 1;
        v10 = 1;
        if (v19 != v12)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }

      xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, string);
      ++v12;
    }

    while (v9 != v12);
    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_14:
    xpc_release(v6);
    v5[4] = v7;
    sub_100001108(2u, "found internal interface %s for external interface %s", a2, __s1);
    v15 = *(v5 + 2);
    if (!v15)
    {
      sub_100021500();
    }

    v16 = v15 - 1;
    *(v5 + 2) = v16;
    if (!v16)
    {
      for (i = qword_1000351A8; i != v5; i = *i)
      {
        v4 = i;
      }

      *v4 = *i;
      xpc_release(v5[4]);
      free(v5);
    }

    v18 = qword_100034D30;

    return sub_10001536C(v18);
  }

  else
  {
LABEL_19:
    xpc_release(v7);
    sub_100001108(0, "%s internal interface not present for %s external interface", a2, __s1);
    return 22;
  }
}

uint64_t sub_100015FA4(uint64_t a1, __int16 a2)
{
  if (dword_100034BC4)
  {
    v2 = dword_100034BC8 == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if (v2)
  {
    v4 = word_100034BCE;
    v5 = word_100034BCC;
    word_100034BCC = a1;
    word_100034BCE = a2;
    sub_10001A6F8();
    if (v5 != word_100034BCC || v4 != word_100034BCE)
    {
      sub_1000152B0();
      sub_10001536C(qword_100034D30);
    }
  }

  return v3;
}

_WORD *sub_100016044(_WORD *result, _WORD *a2)
{
  if (result)
  {
    *result = word_100034BCC;
  }

  if (a2)
  {
    *a2 = word_100034BCE;
  }

  return result;
}

uint64_t sub_100016070(uint64_t result, uint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
    sub_10002152C();
  }

  v3 = dword_100035160;
  dword_100035160 = result;
  if (v3 != result)
  {
    v4 = qword_100034D30;

    return sub_10001536C(v4);
  }

  return result;
}

uint64_t sub_1000160C0(int a1, int a2)
{
  if ((a1 - 7) <= 0xFFFFFFFA)
  {
    sub_1000215B0();
  }

  if (!a2)
  {
    sub_100021584();
  }

  v2 = dword_100035148[a1 + 7] + a2;
  if (!v2)
  {
    sub_100021558();
  }

  dword_100035148[a1 + 7] = v2;
  v3 = qword_100034D30;

  return sub_10001536C(v3);
}

uint64_t sub_10001612C(int a1, unsigned int a2)
{
  if ((a1 - 7) <= 0xFFFFFFFA)
  {
    sub_1000215DC();
  }

  v2 = dword_100035148[a1 + 7];
  if (v2)
  {
    v3 = v2 >= a2;
    v4 = v2 - a2;
    if (!v3)
    {
      v4 = 0;
    }

    dword_100035148[a1 + 7] = v4;
    sub_10001536C(qword_100034D30);
  }

  return 0;
}

uint64_t sub_100016188()
{
  v0 = 0;
  LODWORD(result) = 0;
  do
  {
    result = (dword_100035148[v0 + 7] + result);
    ++v0;
  }

  while (v0 != 7);
  return result;
}

BOOL sub_1000161B4()
{
  if (!dword_100035160)
  {
    return 1;
  }

  v0 = 0;
  v1 = 0;
  do
  {
    v1 += dword_100035148[v0 + 7];
    ++v0;
  }

  while (v0 != 7);
  return v1 < dword_100035160;
}

uint64_t sub_1000161FC(char *a1)
{
  v2 = off_100034980[0];
  v3 = &qword_1000351A8;
  do
  {
    v3 = *v3;
    if (!v3)
    {
      return 6;
    }
  }

  while (!strncmp(v3 + 12, v2, 0x10uLL));
  if (!if_nametoindex(v3 + 12))
  {
    sub_100021608();
  }

  snprintf(a1, 0x10uLL, "%s", v3 + 12);
  return 0;
}

uint64_t sub_100016294(uint64_t a1)
{
  if (!qword_1000351A0)
  {
    sub_100021660();
  }

  if (!qword_100035198)
  {
    sub_100021634();
  }

  Count = CFArrayGetCount(qword_100035198);
  if (Count < 1)
  {
    return 22;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100035198, v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v6) == TypeID)
      {
        Value = CFDictionaryGetValue(v6, @"MAC_IOUE");
        if (Value)
        {
          v9 = Value;
          v10 = CFDataGetTypeID();
          if (CFGetTypeID(v9) == v10)
          {
            BytePtr = CFDataGetBytePtr(v9);
            if (BytePtr)
            {
              if (*BytePtr == *a1 && *(BytePtr + 2) == *(a1 + 4))
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v3 == ++v4)
    {
      return 22;
    }
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v6);
  if (MutableCopy)
  {
    v16 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"MAC_IOUE_USED", kCFBooleanFalse);
    CFArraySetValueAtIndex(qword_100035198, v4, v16);
    CFRelease(v16);
    CFDictionarySetValue(qword_1000351A0, @"MAC_IOUE_ARRAY", qword_100035198);
    v17 = qword_1000351A0;
    LODWORD(v16) = geteuid();
    v18 = getgid();
    v13 = sub_100011EFC(v17, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v16, v18, 416, 0);
    if (v13)
    {
      sub_100001108(0, "plist write failed for IOUE address");
    }
  }

  else
  {
    v13 = 12;
    sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
  }

  return v13;
}

uint64_t sub_100016464(uint64_t a1)
{
  if (!qword_1000351A0)
  {
    sub_1000216B8();
  }

  if (!qword_100035198)
  {
    sub_10002168C();
  }

  Count = CFArrayGetCount(qword_100035198);
  if (Count < 1)
  {
LABEL_18:
    sub_100016760(bytes, 0);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v15 = Mutable;
      v16 = CFDataCreate(kCFAllocatorDefault, bytes, 6);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(v15, @"MAC_IOUE", v16);
        CFRelease(v17);
        *a1 = *bytes;
        *(a1 + 4) = v28;
        CFDictionarySetValue(v15, @"MAC_IOUE_USED", kCFBooleanTrue);
        CFArrayAppendValue(qword_100035198, v15);
        v18 = v15;
        goto LABEL_21;
      }

      sub_100001108(0, "CFDataCreate() failed");
      CFRelease(v15);
    }

    else
    {
      sub_100001108(0, "CFDictionaryCreateMutable() failed");
    }

    return 12;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100035198, v4);
    TypeID = CFDictionaryGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == TypeID)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"MAC_IOUE_USED");
        v8 = CFBooleanGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == v8 && Value != kCFBooleanTrue)
          {
            v10 = CFDictionaryGetValue(ValueAtIndex, @"MAC_IOUE");
            v11 = CFDataGetTypeID();
            if (v10)
            {
              if (CFGetTypeID(v10) == v11)
              {
                BytePtr = CFDataGetBytePtr(v10);
                if (BytePtr)
                {
                  v13 = BytePtr;
                  if (CFDataGetLength(v10) == 6 && !sub_100011568(v13))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v3 == ++v4)
    {
      goto LABEL_18;
    }
  }

  v24 = *v13;
  *(a1 + 4) = *(v13 + 4);
  *a1 = v24;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, ValueAtIndex);
  if (!MutableCopy)
  {
    sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
    return 12;
  }

  v26 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"MAC_IOUE_USED", kCFBooleanTrue);
  CFArraySetValueAtIndex(qword_100035198, v4, v26);
  v18 = v26;
LABEL_21:
  CFRelease(v18);
  CFDictionarySetValue(qword_1000351A0, @"MAC_IOUE_ARRAY", qword_100035198);
  v19 = qword_1000351A0;
  v20 = geteuid();
  v21 = getgid();
  v22 = sub_100011EFC(v19, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v20, v21, 416, 0);
  if (v22)
  {
    sub_100001108(0, "plist write failed for IOUE address");
  }

  return v22;
}

uint64_t sub_100016760(unsigned __int16 *a1, const void *a2)
{
  if (!qword_100035190)
  {
    sub_100021710();
  }

  Count = CFArrayGetCount(qword_100035190);
  if (!qword_100035198)
  {
    sub_1000216E4();
  }

  v5 = CFArrayGetCount(qword_100035198);
  v6 = Count;
  v24 = Count;
  v25 = v5;
  v7 = Count;
  v8 = v5;
  do
  {
    if (a2)
    {
      CC_MD5(a2, 0x10u, md);
      *a1 = *md;
      a1[2] = v27;
      goto LABEL_6;
    }

    while (1)
    {
      while (1)
      {
        arc4random_buf(a1, 6uLL);
LABEL_6:
        *a1 = *a1 & 0xFC | 2;
        if (!sub_100011568(a1))
        {
          break;
        }

        if (a2)
        {
          return 22;
        }
      }

      LODWORD(v9) = 0;
      if (v6)
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_100035190, v9);
          TypeID = CFDictionaryGetTypeID();
          if (ValueAtIndex)
          {
            if (CFGetTypeID(ValueAtIndex) == TypeID)
            {
              Value = CFDictionaryGetValue(ValueAtIndex, @"MAC_ADDRESS");
              v13 = CFDataGetTypeID();
              if (Value)
              {
                if (CFGetTypeID(Value) == v13)
                {
                  BytePtr = CFDataGetBytePtr(Value);
                  if (BytePtr)
                  {
                    if (*a1 == *BytePtr && a1[2] == *(BytePtr + 2))
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          if (v7 == ++v9)
          {
            goto LABEL_24;
          }
        }

        v6 = v24;
      }

      if (v9 == v6)
      {
        break;
      }

      v6 = v24;
      if (a2)
      {
        return 22;
      }
    }

LABEL_24:
    if (v25)
    {
      v16 = 0;
      while (1)
      {
        v17 = CFArrayGetValueAtIndex(qword_100035198, v16);
        v18 = CFDictionaryGetTypeID();
        if (v17)
        {
          if (CFGetTypeID(v17) == v18)
          {
            v19 = CFDictionaryGetValue(v17, @"MAC_IOUE");
            v20 = CFDataGetTypeID();
            if (v19)
            {
              if (CFGetTypeID(v19) == v20)
              {
                v21 = CFDataGetBytePtr(v19);
                if (v21)
                {
                  if (*a1 == *v21 && a1[2] == *(v21 + 2))
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        if (v8 == ++v16)
        {
          return 0;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    v6 = v24;
  }

  while (!a2 && v16 != v25);
  if (v16 == v25)
  {
    return 0;
  }

  return 22;
}

uint64_t sub_1000169F4(uint64_t a1)
{
  if (!qword_1000351A0)
  {
    sub_100021768();
  }

  if (!qword_100035190)
  {
    sub_10002173C();
  }

  Count = CFArrayGetCount(qword_100035190);
  if (Count < 1)
  {
    return 22;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100035190, v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v6) == TypeID)
      {
        Value = CFDictionaryGetValue(v6, @"MAC_ADDRESS");
        if (Value)
        {
          v9 = Value;
          v10 = CFDataGetTypeID();
          if (CFGetTypeID(v9) == v10)
          {
            BytePtr = CFDataGetBytePtr(v9);
            if (BytePtr)
            {
              if (*BytePtr == *a1 && *(BytePtr + 2) == *(a1 + 4))
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v3 == ++v4)
    {
      return 22;
    }
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v6);
  if (MutableCopy)
  {
    v16 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"MAC_USED", kCFBooleanFalse);
    CFArraySetValueAtIndex(qword_100035190, v4, v16);
    CFRelease(v16);
    CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
    v17 = qword_1000351A0;
    LODWORD(v16) = geteuid();
    v18 = getgid();
    v13 = sub_100011EFC(v17, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v16, v18, 416, 0);
    if (v13)
    {
      sub_100001108(0, "plist write failed for IOUE address");
    }
  }

  else
  {
    v13 = 12;
    sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
  }

  return v13;
}

uint64_t sub_100016BC4(unsigned __int8 *a1, void *a2)
{
  memset(uu, 0, sizeof(uu));
  Count = CFArrayGetCount(qword_100035190);
  v5 = Count;
  if (a1 && Count)
  {
    uuid_unparse(a1, out);
    v6 = kCFAllocatorDefault;
    v7 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
    if (v7)
    {
      v8 = v7;
      if (v5 < 1)
      {
        goto LABEL_16;
      }

      v67 = a1;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100035190, v9);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          TypeID = CFDictionaryGetTypeID();
          if (CFGetTypeID(v11) == TypeID)
          {
            Value = CFDictionaryGetValue(v11, @"UUID_MAC");
            if (Value)
            {
              v14 = Value;
              v15 = CFStringGetTypeID();
              if (CFGetTypeID(v14) == v15)
              {
                if (CFEqual(v14, v8))
                {
                  break;
                }
              }
            }
          }
        }

        if (v5 == ++v9)
        {
          a1 = v67;
          goto LABEL_16;
        }
      }

      v46 = CFDictionaryGetValue(v11, @"MAC_USED");
      v47 = CFBooleanGetTypeID();
      if (v46)
      {
        v48 = kCFBooleanTrue;
        if (CFGetTypeID(v46) == v47 && v46 == kCFBooleanTrue)
        {
          sub_100001108(0, "MAC address associated with UUID %s is already being used");
          goto LABEL_18;
        }
      }

      else
      {
        v48 = kCFBooleanTrue;
      }

      v54 = CFDictionaryGetValue(v11, @"MAC_ADDRESS");
      if (v54)
      {
        v55 = v54;
        v56 = CFDataGetTypeID();
        if (CFGetTypeID(v55) == v56)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v11);
          if (!MutableCopy)
          {
            sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
            goto LABEL_61;
          }

          v27 = MutableCopy;
          Current = CFAbsoluteTimeGetCurrent();
          v31 = CFDateCreate(kCFAllocatorDefault, Current);
          if (!v31)
          {
            goto LABEL_87;
          }

          v59 = v31;
          CFDictionarySetValue(v27, @"MAC_TIME_USED", v31);
          CFDictionarySetValue(v27, @"MAC_USED", v48);
          CFRelease(v59);
          CFArraySetValueAtIndex(qword_100035190, v9, v27);
          CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
          v60 = qword_1000351A0;
          v61 = geteuid();
          v62 = getgid();
          v63 = sub_100011EFC(v60, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v61, v62, 416, 0);
          if (v63)
          {
            v16 = v63;
            goto LABEL_75;
          }

          v16 = sub_100017318(a2, v55, v67);
LABEL_89:
          CFRelease(v8);
          v45 = v27;
          goto LABEL_90;
        }
      }

      sub_100001108(0, "no MAC address for uuid");
LABEL_18:
      v16 = 22;
      goto LABEL_62;
    }

    goto LABEL_19;
  }

  if (a1)
  {
    uuid_unparse(a1, out);
    v6 = kCFAllocatorDefault;
    v7 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
    if (v7)
    {
      v8 = v7;
LABEL_16:
      if (!sub_100016760(bytes, a1))
      {
        v25 = 0;
        goto LABEL_39;
      }

      sub_100001108(0, "mac address conflict with given uuid");
      goto LABEL_18;
    }

LABEL_19:
    sub_100001108(v7, "CFStringCreateWithCString() failed");
    return 12;
  }

  uuid_generate(uu);
  uuid_unparse(uu, out);
  v6 = kCFAllocatorDefault;
  v17 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
  if (!v17)
  {
LABEL_35:
    sub_100001108(0, "CFStringCreateWithCString() failed");
    return 12;
  }

  v8 = v17;
  while (1)
  {
    if (v5 < 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      while (1)
      {
        v19 = CFArrayGetValueAtIndex(qword_100035190, v18);
        if (v19)
        {
          v20 = v19;
          v21 = CFDictionaryGetTypeID();
          if (CFGetTypeID(v20) == v21)
          {
            v22 = CFDictionaryGetValue(v20, @"UUID_MAC");
            if (v22)
            {
              v23 = v22;
              v24 = CFStringGetTypeID();
              if (CFGetTypeID(v23) == v24)
              {
                if (CFEqual(v23, v8))
                {
                  break;
                }
              }
            }
          }
        }

        if (v5 == ++v18)
        {
          goto LABEL_33;
        }
      }
    }

    if (v5 != v18)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (!sub_100016760(bytes, uu))
    {
      break;
    }

LABEL_34:
    CFRelease(v8);
    uuid_generate(uu);
    uuid_unparse(uu, out);
    v8 = CFStringCreateWithCString(kCFAllocatorDefault, out, 0x600u);
    if (!v8)
    {
      goto LABEL_35;
    }
  }

  v25 = 1;
  a1 = 0;
LABEL_39:
  Mutable = CFDictionaryCreateMutable(v6, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v27 = Mutable;
    CFDictionarySetValue(Mutable, @"UUID_MAC", v8);
    v28 = CFDataCreate(v6, bytes, 6);
    if (v28)
    {
      v29 = v28;
      CFDictionarySetValue(v27, @"MAC_ADDRESS", v28);
      CFRelease(v29);
      v30 = CFAbsoluteTimeGetCurrent();
      v31 = CFDateCreate(v6, v30);
      if (v31)
      {
        v32 = v31;
        CFDictionarySetValue(v27, @"MAC_TIME_USED", v31);
        CFRelease(v32);
        CFDictionarySetValue(v27, @"MAC_USED", kCFBooleanTrue);
        if (v5 < 138)
        {
          CFArrayAppendValue(qword_100035190, v27);
          goto LABEL_74;
        }

        v65 = v25;
        v68 = a1;
        v66 = a2;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          v36 = CFArrayGetValueAtIndex(qword_100035190, v33);
          if (v36)
          {
            v37 = v36;
            v38 = CFDictionaryGetTypeID();
            if (CFGetTypeID(v37) == v38)
            {
              v39 = CFDictionaryGetValue(v37, @"MAC_USED");
              v40 = CFBooleanGetTypeID();
              if (!v39 || (CFGetTypeID(v39) == v40 ? (v41 = v39 == kCFBooleanTrue) : (v41 = 0), !v41))
              {
                v42 = CFDictionaryGetValue(v37, @"MAC_TIME_USED");
                if (!v42 || (v43 = v42, v44 = CFDateGetTypeID(), CFGetTypeID(v43) != v44))
                {
                  v34 = v33;
LABEL_70:
                  a2 = v66;
                  if (!v35 && v5 == v33)
                  {
                    sub_100001108(0, "vm interface create exceeded limit");
                    v16 = 19;
                    goto LABEL_89;
                  }

                  CFArraySetValueAtIndex(qword_100035190, v34, v27);
                  a1 = v68;
                  v25 = v65;
LABEL_74:
                  CFDictionarySetValue(qword_1000351A0, @"MAC_ARRAY", qword_100035190);
                  v49 = qword_1000351A0;
                  v50 = geteuid();
                  v51 = getgid();
                  v16 = sub_100011EFC(v49, "/Library/Preferences/SystemConfiguration/com.apple.vmnet.plist", v50, v51, 416, 0);
                  if (v16)
                  {
LABEL_75:
                    sub_100001108(0, "plist write failed for MAC address");
                  }

                  else
                  {
                    v52 = CFDictionaryGetValue(v27, @"MAC_ADDRESS");
                    if (v25)
                    {
                      v53 = uu;
                    }

                    else
                    {
                      v53 = a1;
                    }

                    sub_100017318(a2, v52, v53);
                  }

                  goto LABEL_89;
                }

                if (v35)
                {
                  if (CFDateCompare(v35, v43, 0) == kCFCompareGreaterThan)
                  {
                    v35 = v43;
                    v34 = v33;
                  }
                }

                else
                {
                  v35 = v43;
                  v34 = v33;
                }
              }
            }
          }

          if (v5 == ++v33)
          {
            v33 = v5;
            goto LABEL_70;
          }
        }
      }

LABEL_87:
      sub_100001108(v31, "CFDateCreate() failed");
    }

    else
    {
      sub_100001108(0, "CFDataCreate() failed");
    }

    v16 = 12;
    goto LABEL_89;
  }

  sub_100001108(0, "CFDictionaryCreateMutable() failed");
LABEL_61:
  v16 = 12;
LABEL_62:
  v45 = v8;
LABEL_90:
  CFRelease(v45);
  return v16;
}

uint64_t sub_100017318(void *a1, CFDataRef theData, _OWORD *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (BytePtr)
  {
    snprintf(__str, 0x14uLL, "%02x:%02x:%02x:%02x:%02x:%02x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5]);
    xpc_dictionary_set_string(a1, off_100034878[0], __str);
    *uuid = *a3;
    xpc_dictionary_set_uuid(a1, off_100034870[0], uuid);
    return 0;
  }

  else
  {
    sub_100001108(0, "CFDataGetBytePtr() failed");
    return 12;
  }
}

uint64_t sub_100017404(uint64_t result)
{
  if (result > 35)
  {
    switch(result)
    {
      case '$':
        return 2;
      case 'P':
        return 3;
      case '-':
        return 1;
    }

    goto LABEL_12;
  }

  if (!result)
  {
    return result;
  }

  if (result == 4)
  {
    return 5;
  }

  if (result != 19)
  {
LABEL_12:
    sub_100001108(0, "errnum %d has no matching netrbReason value", result);
    return 6;
  }

  return 4;
}

const char *sub_100017498(unsigned int a1)
{
  if (a1 > 5)
  {
    return "UNKNOWN";
  }

  else
  {
    return (&off_100031060)[a1];
  }
}

uint64_t sub_1000174BC(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"ForwardedPorts");
  result = 0;
  if (!Value || dword_100034BC8)
  {
    return result;
  }

  v5 = CFArrayGetTypeID();
  if (CFGetTypeID(Value) != v5)
  {
    return 22;
  }

  if (CFArrayGetCount(Value) < 1)
  {
    return 22;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
  if (!ValueAtIndex)
  {
    return 22;
  }

  v7 = ValueAtIndex;
  v8 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v7) != v8)
  {
    return 22;
  }

  v9 = CFDictionaryGetValue(v7, @"Low");
  v10 = CFDictionaryGetValue(v7, @"High");
  if (!v9)
  {
    return 22;
  }

  v11 = v10;
  v12 = CFNumberGetTypeID();
  v13 = CFGetTypeID(v9);
  result = 22;
  if (v13 == v12 && v11)
  {
    v14 = CFNumberGetTypeID();
    if (CFGetTypeID(v11) == v14)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v9, kCFNumberShortType, &valuePtr + 2))
      {
        if (CFNumberGetValue(v11, kCFNumberShortType, &valuePtr))
        {
          word_100034BCC = HIWORD(valuePtr);
          word_100034BCE = valuePtr;
          sub_10001A6F8();
          return 0;
        }
      }
    }

    return 22;
  }

  return result;
}

__CFDictionary *sub_10001764C(int a1)
{
  v14 = 3;
  valuePtr = 1020;
  if ((qword_100035150 & 0xFFFFFFFC) == 0x3FC)
  {
    valuePtr = qword_100035150;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (a1 && ((byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || byte_100035182 == 1))
    {
      valuePtr = HIDWORD(qword_100035150);
    }

    v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, @"State", v3);
      CFRelease(v4);
    }

    v5 = CFNumberCreate(0, kCFNumberIntType, &dword_10003514C);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(Mutable, @"UState", v5);
      CFRelease(v6);
    }

    v7 = CFNumberCreate(0, kCFNumberIntType, &v14);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(Mutable, @"Version", v7);
      CFRelease(v8);
    }

    if (!dword_100034BC8)
    {
      if (word_100034BCC | word_100034BCE)
      {
        v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (v9)
        {
          v10 = v9;
          v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v11)
          {
            v12 = v11;
            sub_100011E94(v11, @"Low", word_100034BCC);
            sub_100011E94(v12, @"High", word_100034BCE);
            CFArrayAppendValue(v10, v12);
            CFRelease(v12);
            CFDictionarySetValue(Mutable, @"ForwardedPorts", v10);
          }

          CFRelease(v10);
        }
      }
    }
  }

  return Mutable;
}

void sub_100017870(uint64_t a1)
{
  v10 = 0;
  v1 = CFStringCreateWithCString(0, (*(a1 + 16) + 20), 0x600u);
  if (v1)
  {
    v2 = v1;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100001108(0, "CFArrayCreate() failed");
      v8 = v2;
LABEL_15:

      CFRelease(v8);
      return;
    }

    v4 = Mutable;
    CFArrayAppendValue(Mutable, v2);
    v5 = sub_1000179B0(v4, &v10);
    if (v5)
    {
      v6 = "dhcp_interface_config_remove: %s";
    }

    else
    {
      if (v10 != 1)
      {
        goto LABEL_14;
      }

      v9 = sub_10000F968("/usr/libexec/bootpd");
      if (!v9 || !kill(v9, 1))
      {
        goto LABEL_14;
      }

      v5 = *__error();
      v6 = "bootpd(HUP): %s";
    }

    v7 = strerror(v5);
    sub_100001108(0, v6, v7);
LABEL_14:
    CFRelease(v2);
    v8 = v4;
    goto LABEL_15;
  }

  sub_100001108(0, "CFStringCreateWithCString() failed");
}

uint64_t sub_1000179B0(const __CFArray *a1, _BYTE *a2)
{
  v35 = 0;
  Count = CFArrayGetCount(a1);
  v34 = a2;
  *a2 = 0;
  v4 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &v35, 0);
  TypeID = CFDictionaryGetTypeID();
  if (!v4)
  {
    return v35;
  }

  if (CFGetTypeID(v4) != TypeID)
  {
LABEL_41:
    CFRelease(v4);
    return v35;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v4);
  if (!MutableCopy)
  {
    sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
    goto LABEL_41;
  }

  v7 = MutableCopy;
  v30 = v4;
  v8 = sub_100019008(MutableCopy, @"Subnets");
  v9 = sub_100019008(v7, @"dhcp_enabled");
  v10 = sub_100019008(v7, @"ignore_allow_deny");
  v11 = sub_100019008(v7, @"detect_other_dhcp_server");
  cf = v7;
  v12 = sub_100019008(v7, @"ipv6_only_preferred");
  v4 = v12;
  v13 = Count;
  if (Count >= 1)
  {
    v14 = 0;
    v31 = v11;
    v32 = v12;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v14);
      v16 = CFStringGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v16)
      {
        v17 = v10;
        v18 = v9;
        *buffer = 0;
        v37 = 0;
        CFStringGetCString(ValueAtIndex, buffer, 16, 0x600u);
        sub_100001108(1u, "dhcp disabled interface: %s", buffer);
        if (v8)
        {
          v19 = CFArrayGetCount(v8);
          if (v19 >= 1)
          {
            v20 = v19;
            v21 = 0;
            while (1)
            {
              v22 = CFArrayGetValueAtIndex(v8, v21);
              v23 = CFDictionaryGetTypeID();
              if (v22)
              {
                if (CFGetTypeID(v22) == v23)
                {
                  Value = CFDictionaryGetValue(v22, @"interface");
                  v25 = CFStringGetTypeID();
                  if (Value)
                  {
                    if (CFGetTypeID(Value) == v25 && CFEqual(ValueAtIndex, Value))
                    {
                      break;
                    }
                  }
                }
              }

              if (v20 == ++v21)
              {
                goto LABEL_17;
              }
            }

            CFArrayRemoveValueAtIndex(v8, v21);
            *v34 = 1;
          }
        }

LABEL_17:
        v9 = v18;
        if (sub_100019098(v18, ValueAtIndex))
        {
          *v34 = 1;
        }

        v10 = v17;
        v4 = v32;
        if (sub_100019098(v17, ValueAtIndex))
        {
          *v34 = 1;
        }

        v11 = v31;
        v13 = Count;
        if (sub_100019098(v31, ValueAtIndex))
        {
          *v34 = 1;
        }

        if (sub_100019098(v32, ValueAtIndex))
        {
          *v34 = 1;
        }
      }

      ++v14;
    }

    while (v14 != v13);
  }

  if (*v34 == 1)
  {
    sub_100019130(cf, @"Subnets", v8, 1);
    sub_100019130(cf, @"dhcp_enabled", v9, 0);
    sub_100019130(cf, @"ignore_allow_deny", v10, 1);
    sub_100019130(cf, @"detect_other_dhcp_server", v11, 0);
    sub_100019130(cf, @"ipv6_only_preferred", v4, 1);
    v26 = geteuid();
    v27 = getgid();
    v35 = sub_100011EFC(cf, "/Library/Preferences/SystemConfiguration/bootpd.plist", v26, v27, 420, 0);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(cf);
  CFRelease(v30);
  if (v4)
  {
    goto LABEL_41;
  }

  return v35;
}

uint64_t sub_100017DCC()
{
  if (!dword_100034A48)
  {
    return 0;
  }

  v29 = 0;
  v0 = CFStringCreateWithCString(kCFAllocatorDefault, "com.apple.MobileInternetSharing", 0x600u);
  if (v0)
  {
    v1 = v0;
    v2 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &v29, 0);
    TypeID = CFDictionaryGetTypeID();
    if (v2 && CFGetTypeID(v2) == TypeID)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v2);
      v5 = MutableCopy;
      if (MutableCopy)
      {
        v6 = sub_100019008(MutableCopy, @"Subnets");
        if (v6)
        {
          v7 = v6;
          v8 = sub_100019008(v5, @"dhcp_enabled");
          v9 = sub_100019008(v5, @"ignore_allow_deny");
          v10 = sub_100019008(v5, @"detect_other_dhcp_server");
          v11 = sub_100019008(v5, @"ipv6_only_preferred");
          Count = CFArrayGetCount(v7);
          if (Count >= 1)
          {
            v13 = Count;
            v25 = 0;
            v27 = v9;
            v28 = v8;
            v26 = v10;
            while (2)
            {
              v14 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v7, v14);
                v16 = CFDictionaryGetTypeID();
                if (ValueAtIndex)
                {
                  if (CFGetTypeID(ValueAtIndex) == v16)
                  {
                    Value = CFDictionaryGetValue(ValueAtIndex, @"_creator");
                    v18 = CFStringGetTypeID();
                    if (Value)
                    {
                      if (CFGetTypeID(Value) == v18 && CFEqual(Value, v1))
                      {
                        break;
                      }
                    }
                  }
                }

                if (v13 == ++v14)
                {
                  v9 = v27;
                  v8 = v28;
                  v10 = v26;
                  if ((v25 & 1) == 0)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_37;
                }
              }

              v19 = CFDictionaryGetValue(ValueAtIndex, @"interface");
              v20 = CFStringGetTypeID();
              if (v19 && CFGetTypeID(v19) == v20)
              {
                v8 = v28;
                sub_100019098(v28, v19);
                v9 = v27;
                sub_100019098(v27, v19);
                sub_100019098(v26, v19);
                sub_100019098(v11, v19);
                v21 = v14;
                v10 = v26;
                CFArrayRemoveValueAtIndex(v7, v21);
                v13 = CFArrayGetCount(v7);
                v25 = 1;
                if (v13 > 0)
                {
                  continue;
                }

LABEL_37:
                sub_100019130(v5, @"Subnets", v7, 1);
                sub_100019130(v5, @"dhcp_enabled", v8, 0);
                sub_100019130(v5, @"ignore_allow_deny", v9, 1);
                sub_100019130(v5, @"detect_other_dhcp_server", v10, 0);
                sub_100019130(v5, @"ipv6_only_preferred", v11, 1);
                v23 = geteuid();
                v24 = getgid();
                v29 = sub_100011EFC(v5, "/Library/Preferences/SystemConfiguration/bootpd.plist", v23, v24, 420, 0);
                sub_100018EC8();
                goto LABEL_38;
              }

              break;
            }

            unlink("/Library/Preferences/SystemConfiguration/bootpd.plist");
            v9 = v27;
            v8 = v28;
            v10 = v26;
          }

LABEL_38:
          CFRelease(v1);
          if (v10)
          {
            CFRelease(v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          CFRelease(v7);
          if (!v8)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_100001108(0, "CFDictionaryCreateMutableCopy() failed");
      }
    }

    else
    {
      sub_100001108(2u, "no bootpd plist found");
      v5 = 0;
    }

    v11 = 0;
    v8 = v1;
LABEL_23:
    CFRelease(v8);
LABEL_24:
    if (v5)
    {
      CFRelease(v5);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_31;
  }

  sub_100001108(0, "CFStringCreateWithCString() failed");
LABEL_31:
  if (sub_1000181DC())
  {
    sub_1000123A8(@"com.apple.bootpd", "bootpd", 0);
  }

  byte_1000351B0 = 1;
  return 0;
}

uint64_t sub_1000181DC()
{
  v11 = 0;
  v0 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &v11, 0);
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"bootp_enabled");
  if (Value)
  {
    v3 = Value == kCFBooleanFalse;
  }

  else
  {
    v3 = 1;
  }

  if (v3 && ((v4 = CFDictionaryGetValue(v1, @"dhcp_enabled")) == 0 || v4 == kCFBooleanFalse) && ((v5 = CFDictionaryGetValue(v1, @"netboot_enabled")) == 0 || v5 == kCFBooleanFalse) && ((v6 = CFDictionaryGetValue(v1, @"old_netboot_enabled")) == 0 || v6 == kCFBooleanFalse))
  {
    v9 = CFDictionaryGetValue(v1, @"relay_enabled");
    if (v9)
    {
      v10 = v9 == kCFBooleanFalse;
    }

    else
    {
      v10 = 1;
    }

    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v1);
  return v7;
}

void sub_1000182D0()
{
  if (byte_1000351B0 == 1)
  {
    byte_1000351B0 = 0;
  }
}

uint64_t sub_1000182E8()
{
  if (dword_1000351B4 < 0)
  {
    v1 = -1;
    v0 = 2;
    goto LABEL_5;
  }

  if (!dword_1000351B4)
  {
    if (!dword_100034A48)
    {
      return 0;
    }

    if (access("/usr/libexec/bootpd", 0))
    {
      v0 = *__error();
      sub_100001108(0, "%s not available", "/usr/libexec/bootpd");
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (dword_100034A58 == -1)
      {
        if (notify_register_dispatch(DHCPSDisabledInterfacesNotificationKey, &dword_100034A58, qword_100034BD8, &stru_1000310B0))
        {
          sub_100001108(0, "notify_register_dispatch() failed for disabled interfaces");
          sub_100001108(0, "monitoring disabled interfaces failed");
          v1 = -1;
          v0 = 12;
          goto LABEL_5;
        }
      }

      else
      {
        sub_100001108(2u, "dhcp disabled monitoring already setup");
      }

      v3 = sub_1000123A8(@"com.apple.bootpd", "bootpd", 1);
      if (!v3)
      {
        goto LABEL_3;
      }

      v0 = v3;
      sub_100001108(0, "unable to load bootpd job");
    }

    v1 = -1;
    goto LABEL_5;
  }

LABEL_3:
  v0 = 0;
  v1 = dword_1000351B4 + 1;
LABEL_5:
  dword_1000351B4 = v1;
  return v0;
}

uint64_t sub_10001844C(uint64_t a1)
{
  if (dword_1000351B4 < 0)
  {
    sub_100001108(2u, "%s not available");
    return 19;
  }

  if (!dword_100034A48)
  {
    sub_100001108(2u, "%s not enabled");
    return 19;
  }

  if ((*(a1 + 8) & 4) != 0)
  {
    sub_100017870(a1);
    sub_100001108(2u, "%s: restaring dhcp for network %s", "dhcp_start", (a1 + 40));
  }

  v2 = 3600;
  __errnum = 12;
  *valuePtr = 3600;
  v3 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", @"com.apple.InternetSharing.default.plist");
  if (v3)
  {
    v4 = v3;
    v5 = SCPreferencesGetValue(v3, @"bootpd");
    TypeID = CFDictionaryGetTypeID();
    if (v5)
    {
      if (CFGetTypeID(v5) == TypeID)
      {
        v7 = CFDictionaryGetValue(v5, @"DHCPLeaseTimeSecs");
        v8 = CFNumberGetTypeID();
        if (v7)
        {
          if (CFGetTypeID(v7) == v8)
          {
            CFNumberGetValue(v7, kCFNumberIntType, valuePtr);
          }
        }
      }
    }

    CFRelease(v4);
    v2 = *valuePtr;
  }

  v10 = *(a1 + 372) == 1 && (v9 = *(a1 + 24), *(v9 + 8) == 100) && *(v9 + 804) == 1;
  v11 = *(a1 + 392);
  v12 = sub_1000120A0("/Library/Preferences/SystemConfiguration/bootpd.plist", &__errnum, 0);
  v13 = CFDictionaryGetTypeID();
  if (v12 && CFGetTypeID(v12) == v13)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v12);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v15 = MutableCopy;
  if (!MutableCopy)
  {
    sub_100001108(0, "CFDictionaryCreateMutable/Copy() failed");
    v18 = 0;
    if (!v12)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v92 = v2;
  v93 = v12;
  if ((v11 & 2) != 0)
  {
    v16 = 0;
    v10 = 1;
  }

  else
  {
    v16 = sub_100019008(MutableCopy, @"Subnets");
  }

  v19 = sub_100019008(v15, @"dhcp_enabled");
  v20 = sub_100019008(v15, @"ignore_allow_deny");
  v21 = sub_100019008(v15, @"detect_other_dhcp_server");
  v22 = sub_100019008(v15, @"ipv6_only_preferred");
  CFDictionaryRemoveValue(v15, @"dhcp_ignore_client_identifier");
  CFDictionarySetValue(v15, @"bootp_enabled", kCFBooleanFalse);
  v23 = v19;
  v24 = v19;
  v18 = v22;
  v25 = v20;
  sub_100011D88(v24, (*(a1 + 16) + 20));
  sub_100011D88(v20, (*(a1 + 16) + 20));
  value = v21;
  if (!v10 || (v21 = v18, !byte_100034BEA))
  {
    sub_100011D88(v21, (*(a1 + 16) + 20));
  }

  sub_100001108(2u, "config[%s]dhcp_enabled", (*(a1 + 16) + 20));
  v26 = v23;
  if ((v11 & 2) != 0)
  {
    goto LABEL_48;
  }

  v90 = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    goto LABEL_54;
  }

  v28 = Mutable;
  theArray = v16;
  v29 = sub_10001225C(*(a1 + 380), *(a1 + 384));
  sub_100011E1C(v28, @"name", v29);
  v30 = *(a1 + 384) & *(a1 + 380);
  v31.s_addr = v30;
  v32 = inet_ntoa(v31);
  sub_100011E1C(v28, @"net_address", v32);
  v33 = (*(a1 + 16) + 20);
  v34.s_addr = v30;
  v35 = inet_ntoa(v34);
  sub_100001108(2u, "config[%s]: Subnets:net_address [%s]", v33, v35);
  v36.s_addr = *(a1 + 384);
  v37 = inet_ntoa(v36);
  sub_100011E1C(v28, @"net_mask", v37);
  v38 = (*(a1 + 16) + 20);
  v39.s_addr = *(a1 + 384);
  v40 = inet_ntoa(v39);
  sub_100001108(2u, "config[%s]: Subnets:net_mask [%s]", v38, v40);
  if (*(a1 + 372) == 1)
  {
    v41.s_addr = *(a1 + 380);
    v42 = inet_ntoa(v41);
    sub_100011E1C(v28, @"dhcp_router", v42);
    v43 = (*(a1 + 16) + 20);
    v44.s_addr = *(a1 + 380);
    v45 = inet_ntoa(v44);
    sub_100001108(2u, "config[%s]: Subnets:dhcp_router [%s]", v43, v45);
    v46 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (!v46)
    {
LABEL_41:
      CFRelease(v28);
      goto LABEL_42;
    }

    v47 = v46;
    v48.s_addr = *(a1 + 380);
    v49 = inet_ntoa(v48);
    sub_100011D88(v47, v49);
    v50 = (*(a1 + 16) + 20);
    v51.s_addr = *(a1 + 380);
    v52 = inet_ntoa(v51);
    sub_100001108(2u, "config[%s]: Subnets:dhcp_domain_name_server [%s]", v50, v52);
    CFDictionarySetValue(v28, @"dhcp_domain_name_server", v47);
    CFRelease(v47);
  }

  sub_100011E1C(v28, @"_creator", "com.apple.MobileInternetSharing");
  CFDictionarySetValue(v28, @"allocate", kCFBooleanTrue);
  sub_10000EEA8(v28, @"lease_min", v92);
  sub_10000EEA8(v28, @"lease_max", v92);
  sub_100001108(2u, "config[%s]: Subnets:lease_{min,max} [%d]", (*(a1 + 16) + 20), v92);
  v53 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!v53)
  {
    goto LABEL_41;
  }

  v54 = v53;
  v55 = *(a1 + 380);
  v56 = *(a1 + 384);
  v57 = v56 & v55;
  if (v55 == (v56 & v55))
  {
    sub_100001108(0, "can't have the gateway at the subnet address");
LABEL_40:
    CFRelease(v54);
    CFRelease(v28);
    __errnum = 49;
LABEL_42:
    v16 = theArray;
    goto LABEL_54;
  }

  v58 = *(a1 + 388);
  if (!v58)
  {
    v59 = 1 << -sub_100012234(v56);
    if (v59 <= 3)
    {
      sub_10001225C(*(a1 + 380), *(a1 + 384));
      sub_100001108(0, "less than 2 hosts available on %s");
      goto LABEL_40;
    }

    v58 = bswap32(bswap32(v57) + v59 - 2);
  }

  v60 = v58;
  v61 = bswap32(bswap32(v55) + 1);
  v62.s_addr = v61;
  v63 = inet_ntoa(v62);
  sub_100011D88(v54, v63);
  v64 = (*(a1 + 16) + 20);
  v65.s_addr = v61;
  v66 = inet_ntoa(v65);
  sub_100001108(2u, "config[%s]: Subnets:net_range_min [%s]", v64, v66);
  v67.s_addr = v60;
  v68 = inet_ntoa(v67);
  sub_100011D88(v54, v68);
  v69 = (*(a1 + 16) + 20);
  v70.s_addr = v60;
  v71 = inet_ntoa(v70);
  sub_100001108(2u, "config[%s]: Subnets:net_range_max [%s]", v69, v71);
  CFDictionarySetValue(v28, @"net_range", v54);
  CFRelease(v54);
  sub_100011E1C(v28, @"interface", (*(a1 + 16) + 20));
  v16 = theArray;
  CFArrayAppendValue(theArray, v28);
  CFRelease(v28);
  CFDictionarySetValue(v15, @"Subnets", theArray);
  v10 = v90;
LABEL_48:
  CFDictionarySetValue(v15, @"dhcp_enabled", v26);
  CFDictionarySetValue(v15, @"ignore_allow_deny", v25);
  if (!v10)
  {
    v72 = @"detect_other_dhcp_server";
    v73 = v15;
    v74 = value;
    goto LABEL_52;
  }

  if (CFArrayGetCount(v18))
  {
    v72 = @"ipv6_only_preferred";
    v73 = v15;
    v74 = v18;
LABEL_52:
    CFDictionarySetValue(v73, v72, v74);
  }

  v75 = geteuid();
  v76 = getgid();
  __errnum = sub_100011EFC(v15, "/Library/Preferences/SystemConfiguration/bootpd.plist", v75, v76, 420, 0);
LABEL_54:
  if (value)
  {
    CFRelease(value);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  CFRelease(v15);
  v12 = v93;
  if (!v93)
  {
    goto LABEL_64;
  }

LABEL_63:
  CFRelease(v12);
LABEL_64:
  if (v18)
  {
    CFRelease(v18);
  }

  v17 = __errnum;
  if (__errnum)
  {
    v77 = strerror(__errnum);
    sub_100001108(0, "dhcp_config_create: %s", v77);
  }

  else
  {
    if (*(a1 + 472))
    {
      sub_100018D60();
    }

    *(a1 + 8) |= 4u;
    v17 = sub_100018EC8();
    if (!v17)
    {
      v78 = sub_10001225C(*(a1 + 380), *(a1 + 384));
      v79 = *(a1 + 16);
      v80 = (v79 + 20);
      v81 = *(v79 + 12);
      if (*(a1 + 372))
      {
        v82 = *(a1 + 24);
        v83 = (v82 + 20);
        v84 = *(v79 + 16);
        v85 = *(v82 + 12);
        v86 = *(v82 + 16);
        if (v84 >= v86)
        {
          v84 = v86;
        }
      }

      else
      {
        v85 = 0;
        v84 = *(v79 + 16);
        v83 = "(n/a, host-only)";
      }

      sub_100001108(0, "started: [DHCP subnet=%s on %s mtu=%d <---> %s mtu=%d] max-mss=%d", v78, v80, v81, v83, v85, v84);
      if (!*(a1 + 372))
      {
        v87.s_addr = *(a1 + 380);
        v88 = inet_ntoa(v87);
        snprintf(valuePtr, 0x10uLL, "%s", v88);
        sub_100001108(0, "  dns: %s", valuePtr);
      }

      return 0;
    }
  }

  return v17;
}

uint64_t sub_100018D60()
{
  v0 = fopen("/Library/Preferences/SystemConfiguration/bootptab", "w");
  if (v0)
  {
    v1 = v0;
    v2 = qword_100034C38;
    if (qword_100034C38)
    {
      v3 = 1;
      do
      {
        v16 = v2;
        if ((*(v2 + 296) - 3) >= 0xFFFFFFFE && (v4 = *(v2 + 472)) != 0)
        {
          do
          {
            if (v3 == 1)
            {
              fprintf(v1, "%%\n");
            }

            v5 = v3 + 1;
            v6 = *(v4 + 8);
            v7 = *(v4 + 9);
            v8 = *(v4 + 10);
            v9 = *(v4 + 11);
            v10 = *(v4 + 12);
            v11 = *(v4 + 13);
            v12.s_addr = *(v4 + 4);
            v13 = inet_ntoa(v12);
            fprintf(v1, "client%llu 1 %02x:%02x:%02x:%02x:%02x:%02x %s\n", v3, v6, v7, v8, v9, v10, v11, v13);
            v4 = *v4;
            ++v3;
          }

          while (v4);
        }

        else
        {
          v5 = v3;
        }

        v2 = *v16;
        v3 = v5;
      }

      while (*v16);
    }

    return fclose(v1);
  }

  else
  {
    v15 = __error();
    return sub_100001108(0, "%s: fopen, errno %d", "dhcp_bootptab_refresh", *v15);
  }
}

uint64_t sub_100018EC8()
{
  v0 = sub_10000F968("/usr/libexec/bootpd");
  if (!v0)
  {
    return 0;
  }

  v1 = kill(v0, 1);
  if (v1)
  {
    v2 = __error();
    v3 = strerror(*v2);
    sub_100001108(0, "bootpd(HUP): %s", v3);
  }

  return v1;
}

void sub_100018F38(uint64_t a1)
{
  if ((dword_1000351B4 & 0x80000000) == 0)
  {
    sub_100017870(a1);
    if (*(a1 + 472))
    {
      sub_100018D60();
    }

    v2 = dword_1000351B4;
    if (dword_1000351B4 == 1)
    {
      if (dword_100034A58 != -1)
      {
        sub_100001108(0, "%s: cancelling monitor DHCP interfaces", "dhcp_disable_monitoring_interfaces");
        notify_cancel(dword_100034A58);
        dword_100034A58 = -1;
      }

      if (sub_1000181DC())
      {
        sub_1000123A8(@"com.apple.bootpd", "bootpd", 0);
      }

      v2 = dword_1000351B4;
    }

    *(a1 + 8) ^= 4u;
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v4 < 0 == v3)
    {
      dword_1000351B4 = v4;
    }
  }
}

CFMutableArrayRef sub_100019008(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {

    return CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, Value);
  }

  else
  {

    return CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }
}

const __CFArray *sub_100019098(const __CFArray *result, const void *a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    v8.location = 0;
    v8.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v8, a2);
    if (FirstIndexOfValue == -1)
    {
      return 0;
    }

    else
    {
      v6 = FirstIndexOfValue;
      v7 = Count - 1;
      do
      {
        CFArrayRemoveValueAtIndex(v3, v6);
        v9.location = 0;
        v9.length = v7;
        v6 = CFArrayGetFirstIndexOfValue(v3, v9, a2);
        --v7;
      }

      while (v6 != -1);
      return 1;
    }
  }

  return result;
}

void sub_100019130(__CFDictionary *a1, const void *a2, CFArrayRef theArray, int a4)
{
  if (!theArray)
  {
    return;
  }

  if (CFArrayGetCount(theArray))
  {
    v8 = a1;
    v9 = a2;
    v10 = theArray;
LABEL_10:

    CFDictionarySetValue(v8, v9, v10);
    return;
  }

  if (!a4)
  {
    v10 = kCFBooleanFalse;
    v8 = a1;
    v9 = a2;
    goto LABEL_10;
  }

  CFDictionaryRemoveValue(a1, a2);
}

void sub_1000191E4(id a1, int a2)
{
  sub_100001108(0, "received dhcp disable notification");
  if (dword_100034A58 == -1)
  {

    sub_100001108(1u, "dhcp disabled interfaces monitoring already stopped");
  }

  else
  {
    v2 = DHCPSCopyDisabledInterfaces();
    if (v2)
    {
      v3 = v2;
      TypeID = CFArrayGetTypeID();
      if (CFGetTypeID(v3) == TypeID)
      {
        if (CFArrayGetCount(v3))
        {
          v5 = 0;
          sub_1000179B0(v3, &v5);
          if (v5 == 1)
          {
            sub_100018EC8();
          }
        }
      }

      CFRelease(v3);
    }
  }
}

void sub_1000192C8()
{
  v3 = 0;
  v13 = 0;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__dst = 0u;
  *__n = 0u;
  if (getifaddrs(&v3))
  {
    __error();
    sub_100001108(0, "getifaddrs: %m");
  }

  else
  {
    v0 = socket(2, 2, 0);
    if (v0 < 0)
    {
      __error();
      sub_100001108(0, "socket: %m");
    }

    else
    {
      v1 = v0;
      for (i = v3; i; i = i->ifa_next)
      {
        if (strnstr(i->ifa_name, "bridge", 0x10uLL))
        {
          v13 = 0;
          v12 = 0u;
          v10 = 0u;
          v11 = 0u;
          v8 = 0u;
          v9 = 0u;
          v6 = 0u;
          v7 = 0u;
          *__dst = 0u;
          *__n = 0u;
          strncpy(__dst, i->ifa_name, 0x10uLL);
          if (ioctl(v1, 0xC0946990uLL, __dst) != -1 && LODWORD(__n[0]) && !strncmp(__n + 4, "com.apple.MobileInternetSharing", LODWORD(__n[0])) && sub_100019760(i->ifa_name))
          {
            sub_100001108(0, "unable to destroy interface %s", i->ifa_name);
          }
        }
      }

      close(v1);
    }

    freeifaddrs(v3);
  }

  byte_1000351B8 = 1;
}

uint64_t sub_100019484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 8) != 104)
  {
    sub_100021794();
  }

  v2 = (v1 + 20);
  if (!if_nametoindex((v1 + 20)) || (sub_100001108(0, "%s: %s already exists, deleting", "mis_bridge_create", v2), v3 = sub_100019760(v2), !v3))
  {
    *__dst = 0u;
    *v10 = 0u;
    v5 = socket(2, 2, 0);
    if (v5 < 0)
    {
      v4 = *__error();
      sub_100001108(0, "socket: %m");
      if (v5 == -1)
      {
        if (!v4)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *__dst = 0u;
      *v10 = 0u;
      if (__strlcpy_chk() <= 0xF)
      {
        if ((ioctl(v5, 0xC020697AuLL, __dst) & 0x80000000) == 0)
        {
          v4 = 0;
          goto LABEL_17;
        }

        v6 = "SIOCIFCREATE2: %m";
      }

      else
      {
        v6 = "strlcpy: %m";
      }

      v4 = *__error();
      sub_100001108(0, v6);
    }

LABEL_17:
    close(v5);
    if (!v4)
    {
LABEL_18:
      memset(v10, 0, sizeof(v10));
      *__dst = 0u;
      v8 = socket(2, 2, 0);
      if (v8 < 0)
      {
        v4 = *__error();
        sub_100001108(0, "socket: %m");
        if (v8 == -1)
        {
          if (!v4)
          {
LABEL_26:
            v4 = sub_10000FCF8(v2, 1);
            if (!v4)
            {
              goto LABEL_11;
            }

            sub_100001108(0, "%s: setifflags");
LABEL_28:
            sub_100019AC0(v2);
            return v4;
          }

LABEL_23:
          sub_100001108(0, "%s: bridge_add_desc");
          goto LABEL_28;
        }
      }

      else
      {
        strncpy(__dst, v2, 0x10uLL);
        strcpy(&v10[4], "com.apple.MobileInternetSharing");
        memset(&v10[36], 0, 96);
        *v10 = 31;
        if (ioctl(v8, 0xC094698FuLL, __dst) < 0)
        {
          v4 = *__error();
          sub_100001108(0, "SIOCSIFDESC: %m");
        }

        else
        {
          v4 = 0;
        }
      }

      close(v8);
      if (!v4)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

LABEL_10:
    sub_100001108(0, "%s: bridge_create");
    goto LABEL_11;
  }

  v4 = v3;
  sub_100001108(0, "%s: failed to delete %s");
LABEL_11:
  sub_100001108(2u, "%s: created bridge %s", "mis_bridge_create", v2);
  return v4;
}

uint64_t sub_100019760(char *a1)
{
  if (!a1)
  {
    sub_1000217EC();
  }

  if (!*a1)
  {
    sub_1000217C0();
  }

  memset(v12, 0, 12);
  if (!if_nametoindex(a1))
  {
    v6 = 0;
    goto LABEL_26;
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v6 = *__error();
    sub_100001108(0, "socket: %m");
    v5 = 0;
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v3 = malloc_type_realloc(0, 0x2000uLL, 0x27C9CF9DuLL);
    if (!v3)
    {
      sub_100001108(0, "realloc() failed: %m");
      v5 = 0;
      v6 = 12;
LABEL_20:
      close(v2);
      goto LABEL_21;
    }

    v4 = 0x2000;
    while (1)
    {
      v5 = v3;
      bzero(v3, v4);
      LODWORD(v12[0]) = v4;
      *(v12 + 4) = v5;
      if (__strlcpy_chk() >= 0x10)
      {
        v6 = *__error();
        sub_100001108(0, "strlcpy: %m");
        goto LABEL_19;
      }

      v14 = xmmword_100023520;
      v15 = v12;
      if (ioctl(v2, 0xC028697BuLL, &v13) < 0)
      {
        v6 = *__error();
        sub_100001108(0, "SIOCGDRVSPEC: %m");
        goto LABEL_19;
      }

      if (LODWORD(v12[0]) + 80 < v4)
      {
        break;
      }

      v15 = 0;
      v4 = (2 * v4);
      v13 = 0u;
      v14 = 0u;
      v3 = malloc_type_realloc(v5, v4, 0x27C9CF9DuLL);
      if (!v3)
      {
        sub_100001108(0, "realloc() failed: %m");
        free(v5);
        v5 = 0;
        v6 = 12;
        goto LABEL_19;
      }
    }

    v6 = 0;
  }

LABEL_19:
  if (v2 != -1)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v5 && v6)
  {
    free(v5);
    *(v12 + 4) = 0;
LABEL_25:
    sub_100001108(0, "unable to get bridge members");
    goto LABEL_26;
  }

  if (v6)
  {
    goto LABEL_25;
  }

  if (LODWORD(v12[0]) >= 0x50)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v12 + 4) + v8;
      if ((*(v12 + 4))[v8])
      {
        sub_100001108(2u, "removing bridge %s, member: %s", a1, *(v12 + 4) + v8);
        sub_100011914(v10);
        sub_100011A90(v10);
        sub_10000FE60(v10);
        v11 = sub_10001A2D4(a1, v10);
        sub_10001028C(v10, 1, 1, 1);
        if (v11)
        {
          sub_100001108(0, "unable to delete interface %s member: %s", a1, v10);
        }
      }

      ++v9;
      v8 += 80;
    }

    while (v9 < LODWORD(v12[0]) / 0x50uLL);
  }

  sub_100011914(a1);
  sub_100011A90(a1);
  sub_100010824(a1, 0, 0);
  v6 = sub_100019AC0(a1);
LABEL_26:
  if (*(v12 + 4))
  {
    free(*(v12 + 4));
    *(v12 + 4) = 0;
  }

  if (v6)
  {
    sub_100001108(0, "unable to destroy interface %s", a1);
  }

  return v6;
}

uint64_t sub_100019AC0(const char *a1)
{
  v5 = 0u;
  v6 = 0u;
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v3 = *__error();
    sub_100001108(0, "socket: %m");
    if (v2 == -1)
    {
      return v3;
    }
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    if (__strlcpy_chk() < 0x10)
    {
      if (ioctl(v2, 0x80206979uLL, &v5) < 0)
      {
        v3 = *__error();
        sub_100001108(0, "SIOCIFDESTROY: %m");
      }

      else
      {
        sub_100001108(2u, "destroyed interface %s", a1);
        v3 = 0;
      }
    }

    else
    {
      v3 = *__error();
      sub_100001108(0, "strlcpy: %m");
    }
  }

  close(v2);
  return v3;
}

uint64_t sub_100019BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 8) != 104)
  {
    sub_100021818();
  }

  if (sub_10000FCF8(v1 + 20, -1))
  {
    sub_100001108(0, "%s: setifflags, attempting bridge_destroy", "mis_bridge_destroy");
  }

  v2 = sub_100019AC0((v1 + 20));
  if (v2)
  {
    sub_100001108(0, "%s: bridge_destroy", "mis_bridge_destroy");
  }

  return v2;
}

uint64_t sub_100019C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 8) != 104)
  {
    sub_100021844();
  }

  if (*(a1 + 372) != 2)
  {
    sub_100021870();
  }

  v2 = *(a1 + 24);
  v3 = sub_100019D40(v2 + 20, (v1 + 20));
  if (v3)
  {
    v4 = v3;
    sub_100001108(0, "%s: add_bridge_member");
  }

  else if (*(v2 + 776))
  {
    v4 = sub_100019E38(v2 + 20, (v1 + 20), 0x8000);
    if (v4)
    {
      sub_100001108(0, "%s: adjust_bridge_member_flags");
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_100019D40(uint64_t a1, const char *a2)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (__strlcpy_chk() < 0x10)
  {
    v4 = socket(2, 2, 0);
    if (v4 < 0)
    {
      v3 = *__error();
      sub_100001108(0, "socket: %m", v7, v8, v9, v10, v11);
    }

    else
    {
      v5 = v4;
      v3 = sub_10001A578(a2, v4, 0, "BRDGADD", &v7, 1);
      close(v5);
    }
  }

  else
  {
    v3 = *__error();
    sub_100001108(0, "strlcpy: %m", v7, v8, v9, v10, v11);
  }

  return v3;
}

uint64_t sub_100019E38(uint64_t a1, const char *a2, int a3)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (__strlcpy_chk() < 0x10)
  {
    v6 = socket(2, 2, 0);
    if (v6 < 0)
    {
      v5 = *__error();
      sub_100001108(0, "socket: %m", v9);
    }

    else
    {
      v7 = v6;
      v5 = sub_10001A578(a2, v6, 2, "BRDGGIFFLGS", &v9, 0);
      if (!v5)
      {
        LODWORD(v10) = v10 | a3;
        v5 = sub_10001A578(a2, v7, 3, "BRDGSIFFLGS", &v9, 1);
      }

      close(v7);
    }
  }

  else
  {
    v5 = *__error();
    sub_100001108(0, "strlcpy: %m", v9);
  }

  return v5;
}

uint64_t sub_100019F70(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 16) + 8) != 104)
  {
    sub_10002189C();
  }

  v3 = sub_100019FE0(a1, a2);
  v4 = v3;
  if (v3)
  {
    sub_100001108(0, "%s: mis_bridge_add_int_if, network %s, err %d", "mis_bridge_add_extra_member", (a1 + 40), v3);
  }

  return v4;
}

uint64_t sub_100019FE0(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v2 = *(a1 + 16);
  if (*(v2 + 8) != 104)
  {
    sub_1000218C8();
  }

  v5 = (a2 + 20);
  if (sub_1000124AC((a2 + 20), &v17))
  {
    sub_100001108(0, "%s: [non-critical] mis_get_service_status", "mis_bridge_add_int_if");
  }

  v6 = sub_100010824(v5, v17, 0);
  if (v6)
  {
    v7 = v6;
    sub_100001108(0, "%s: interface_quiesce_preamble", "mis_bridge_add_int_if");
LABEL_28:
    sub_100001108(0, "%s: added %s as member of %s", "mis_bridge_add_int_if", v5, (v2 + 20));
    return v7;
  }

  v8 = sub_1000117F4(v5);
  if (v8)
  {
    v7 = v8;
    sub_100001108(0, "%s: mis_router_start", "mis_bridge_add_int_if");
LABEL_27:
    sub_10001028C(v5, 1, v17, 0);
    goto LABEL_28;
  }

  v9 = sub_100019D40(v5, (v2 + 20));
  if (v9)
  {
    v7 = v9;
    sub_100001108(0, "%s: add_bridge_member, int if %s, bridge if %s, err %d", "mis_bridge_add_int_if", v5, (v2 + 20), v9);
LABEL_26:
    sub_100011914(v5);
    goto LABEL_27;
  }

  v10 = sub_100010EC0(v5);
  if (v10)
  {
    v7 = v10;
    sub_100001108(0, "%s: interface_quiesce_detach");
LABEL_25:
    sub_10001A2D4(v5, v2 + 20);
    goto LABEL_26;
  }

  v11 = sub_10000FCF8(v5, 1);
  if (v11)
  {
    v7 = v11;
    sub_100001108(0, "%s: setifflags");
    goto LABEL_25;
  }

  v12 = *(a2 + 312);
  v13 = (v12 << 10) & 0x800;
  if ((v12 & 4) != 0)
  {
    v14 = v13 | 0x20000;
  }

  else if (v12)
  {
    v14 = v13 | 0x10000;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = 2048;
  }

  v15 = sub_100019E38(v5, (v2 + 20), v14);
  if (v15)
  {
    v7 = v15;
    sub_100001108(0, "%s: adjust_bridge_member_flags");
    goto LABEL_25;
  }

LABEL_22:
  if ((*(a1 + 392) & 6) == 0)
  {
    return 0;
  }

  v7 = sub_10001191C(v5);
  if (v7)
  {
    sub_100001108(0, "%s: mis_router6_start");
    goto LABEL_25;
  }

  return v7;
}

uint64_t sub_10001A200(uint64_t a1)
{
  if (*(*(a1 + 16) + 8) != 104)
  {
    sub_1000218F4();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    while (1)
    {
      v3 = sub_100019FE0(a1, v2);
      if (v3)
      {
        break;
      }

      v2 = *(v2 + 280);
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v4 = v3;
    sub_100001108(0, "%s: mis_bridge_add_int_if, network %s", "mis_bridge_add_members", a1 + 40);
    goto LABEL_10;
  }

LABEL_5:
  if (*(a1 + 372) != 2)
  {
    return 0;
  }

  v4 = sub_100019C80(a1);
  if (v4)
  {
    sub_100001108(0, "%s: mis_bridge_add_ext_if, network %s");
LABEL_10:
    sub_100001108(0, "%s: mis_bridge_add_members", "mis_bridge_add_members");
  }

  return v4;
}

uint64_t sub_10001A2D4(const char *a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (__strlcpy_chk() < 0x10)
  {
    v4 = socket(2, 2, 0);
    if (v4 < 0)
    {
      v3 = *__error();
      sub_100001108(0, "socket: %m", v7, v8, v9, v10, v11);
    }

    else
    {
      v5 = v4;
      v3 = sub_10001A578(a1, v4, 1, "BRDGDEL", &v7, 1);
      close(v5);
    }
  }

  else
  {
    v3 = *__error();
    sub_100001108(0, "strlcpy: %m", v7, v8, v9, v10, v11);
  }

  return v3;
}

uint64_t sub_10001A3C8(char *__str)
{
  if (!__str)
  {
    sub_100021920();
  }

  v2 = 100;
  while (1)
  {
    snprintf(__str, 0x10uLL, "%s%d", "bridge", v2);
    if (!if_nametoindex(__str))
    {
      break;
    }

    if (++v2 == 0x7FFFFFFF)
    {
      return 22;
    }
  }

  sub_100001108(2u, "creating interface: %s", __str);
  return 0;
}

void sub_10001A46C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 104)
  {
    sub_10002194C((a1 + 20));
  }

  if (sub_100011A90((a2 + 20)))
  {
    sub_100001108(0, "%s: mis_router6_stop failed", "mis_bridge_delete_member");
  }

  if (sub_100011914((a2 + 20)))
  {
    sub_100001108(0, "%s: mis_router_stop failed", "mis_bridge_delete_member");
  }

  if (sub_10000FE60((a2 + 20)))
  {
    sub_100001108(0, "%s: interface_back_attach failed", "mis_bridge_delete_member");
  }

  if (sub_10001A2D4((a1 + 20), a2 + 20))
  {
    sub_100001108(0, "%s: delete_bridge_member failed");
  }

  else if (sub_10001028C((a2 + 20), 1, 1, 1))
  {
    sub_100001108(0, "%s: interface_back failed");
  }

  sub_10000669C(a2);
}

uint64_t sub_10001A578(const char *a1, int a2, uint64_t a3, const char *a4, const char *a5, int a6)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  if (__strlcpy_chk() < 0x10)
  {
    *&v19 = a3;
    *(&v19 + 1) = 80;
    v20 = a5;
    if (a6)
    {
      v14 = ioctl(a2, 0x8028697BuLL, &v18);
    }

    else
    {
      v14 = ioctl(a2, 0xC028697BuLL, &v18);
    }

    if (v14 < 0)
    {
      v16 = __error();
      v13 = *v16;
      strerror(*v16);
      sub_100001108(0, "ioctl(%s, %s, %s) %s: failed %s");
    }

    else
    {
      v15 = "SIOCGDRVSPEC";
      if (a6)
      {
        v15 = "SIOCSDRVSPEC";
      }

      sub_100001108(2u, "ioctl(%s, %s, %s) %s: success", a1, a5, v15, a4);
      return 0;
    }
  }

  else
  {
    v12 = __error();
    v13 = *v12;
    strerror(*v12);
    sub_100001108(0, "strlcpy: %s");
  }

  return v13;
}

void sub_10001A6F8()
{
  v0 = word_100034BCC;
  if (word_100034BCC <= word_100034BCE)
  {
    if (word_100034BCC)
    {
      v1 = 1;
    }

    else
    {
      v1 = word_100034BCE == 0;
    }

    if (!v1)
    {
      word_100034BCC = word_100034BCE;
    }
  }

  else
  {
    if (word_100034BCE)
    {
      word_100034BCC = word_100034BCE;
    }

    word_100034BCE = v0;
  }
}

uint64_t sub_10001A73C()
{
  v0 = PFUserCreate();
  if (v0)
  {
    v1 = v0;
    v2 = PFUserBeginRules();
    v3 = qword_100034C38;
    if (qword_100034C38)
    {
      v4 = 1;
      do
      {
        if ((*(v3 + 296) - 1) <= 1 && *(v3 + 372) == 1 && (*(v3 + 392) & 8) != 0)
        {
          v5 = sub_10001A938((*(v3 + 16) + 20), v1, v2);
          if (v5)
          {
            v9 = v5;
            sub_100001108(0, "%s: mis_pf_configure_block_ip6, network %s, err %d", "mis_pf_refresh_prefix_sharing_rules", (v3 + 40), v5);
            goto LABEL_15;
          }

          v6 = *(v3 + 24);
          if (*(v6 + 754) == 1)
          {
            v7 = sub_10001AAB0((v6 + 20), (*(v3 + 16) + 20), v1, v2, (v6 + 304), *(v6 + 325));
            if (v7)
            {
              v9 = v7;
              sub_100001108(0, "%s: mis_pf_configure_pass_ip6_prefix, network %s, err %d");
              goto LABEL_15;
            }
          }

          v8 = sub_10001AD54((*(v3 + 16) + 20), v1, v2);
          if (v8)
          {
            v9 = v8;
            sub_100001108(0, "%s: mis_pf_configure_pass_ip6_linklocal, network %s, err %d");
            goto LABEL_15;
          }

          v4 = 0;
        }

        v3 = *v3;
      }

      while (v3);
      if (v4)
      {
        goto LABEL_14;
      }

      PFUserCommitRules();
      v9 = 0;
    }

    else
    {
LABEL_14:
      v9 = 0;
LABEL_15:
      PFUserClearRules();
      PFUserDeleteRules();
    }

    PFUserRelease();
  }

  else
  {
    sub_100001108(0, "%s: PFUserCreate", "mis_pf_refresh_prefix_sharing_rules");
    return 12;
  }

  return v9;
}

uint64_t sub_10001A938(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      xpc_dictionary_set_uint64(v7, kPFAction, 1uLL);
      xpc_dictionary_set_uint64(v7, kPFDirection, 1uLL);
      xpc_dictionary_set_string(v7, kPFInterface, a1);
      xpc_dictionary_set_uint64(v7, kPFFamily, 0x1EuLL);
      xpc_dictionary_set_uint64(v9, kPFSubReturnType, 8uLL);
      xpc_dictionary_set_value(v7, kPFReturnOptions, v9);
      xpc_release(v9);
      if (sub_10001B868(a2, a3, v7))
      {
        v10 = 0;
      }

      else
      {
        sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_block_ip6");
        v10 = 22;
      }
    }

    else
    {
      sub_100001108(0, "unable to create return option xpc dictionary");
      v10 = 12;
    }

    xpc_release(v7);
  }

  else
  {
    sub_100001108(0, "unable to create rule xpc dictionary");
    return 12;
  }

  return v10;
}

uint64_t sub_10001AAB0(const char *a1, const char *a2, uint64_t a3, uint64_t a4, const void *a5, int a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12)
  {
    v13 = v12;
    xpc_dictionary_set_uint64(v12, kPFAction, 0);
    xpc_dictionary_set_uint64(v13, kPFDirection, 1uLL);
    xpc_dictionary_set_string(v13, kPFInterface, a2);
    xpc_dictionary_set_uint64(v13, kPFFamily, 0x1EuLL);
    xpc_dictionary_set_uint64(v13, kPFKeepState, 1uLL);
    v14 = if_nametoindex(a1);
    if (v14)
    {
      xpc_dictionary_set_uint64(v13, kPFRTableID, v14);
      v15 = xpc_dictionary_create(0, 0, 0);
      if (v15)
      {
        v16 = v15;
        inet_ntop(30, a5, v22, 0x2Eu);
        snprintf(__str, 0x36uLL, "%s/%d", v22, a6);
        xpc_dictionary_set_string(v16, kPFSubAddress, __str);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          v18 = v17;
          xpc_dictionary_set_string(v17, kPFSubAddressLabel, kPFAny);
          xpc_dictionary_set_value(v13, kPFFrom, v16);
          xpc_dictionary_set_value(v13, kPFTo, v18);
          if (sub_10001B868(a3, a4, v13))
          {
            v19 = 0;
          }

          else
          {
            sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_pass_ip6_prefix");
            v19 = 22;
          }

          xpc_release(v16);
          xpc_release(v18);
          goto LABEL_14;
        }

        sub_100001108(0, "unable to create dst address xpc dictionary");
        xpc_release(v16);
      }

      else
      {
        sub_100001108(0, "unable to create src address xpc dictionary");
      }

      v19 = 12;
    }

    else
    {
      sub_100001108(0, "if_nametoindex(%s)", a1);
      v19 = 6;
    }

LABEL_14:
    xpc_release(v13);
    return v19;
  }

  sub_100001108(0, "unable to create rule xpc dictionary");
  return 12;
}

uint64_t sub_10001AD54(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *string = 0u;
    v15 = 0u;
    xpc_dictionary_set_uint64(v6, kPFAction, 0);
    xpc_dictionary_set_uint64(v7, kPFDirection, 1uLL);
    xpc_dictionary_set_string(v7, kPFInterface, a1);
    xpc_dictionary_set_uint64(v7, kPFFamily, 0x1EuLL);
    xpc_dictionary_set_uint64(v7, kPFKeepState, 1uLL);
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      strcpy(string, "fe80::/10");
      xpc_dictionary_set_string(v8, kPFSubAddress, string);
      v10 = xpc_dictionary_create(0, 0, 0);
      if (v10)
      {
        v11 = v10;
        xpc_dictionary_set_string(v10, kPFSubAddressLabel, kPFAny);
        xpc_dictionary_set_value(v7, kPFFrom, v9);
        xpc_dictionary_set_value(v7, kPFTo, v11);
        if (sub_10001B868(a2, a3, v7))
        {
          v12 = 0;
        }

        else
        {
          sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_pass_ip6_linklocal");
          v12 = 22;
        }

        xpc_release(v9);
        xpc_release(v11);
        goto LABEL_12;
      }

      sub_100001108(0, "unable to create dst address xpc dictionary");
      xpc_release(v9);
    }

    else
    {
      sub_100001108(0, "unable to create src address xpc dictionary");
    }

    v12 = 12;
LABEL_12:
    xpc_release(v7);
    return v12;
  }

  sub_100001108(0, "unable to create rule xpc dictionary");
  return 12;
}

uint64_t sub_10001AFB0()
{
  v0 = PFUserCreate();
  if (!v0)
  {
    sub_100001108(0, "%s: PFUserCreate", "mis_pf_refresh_nat_rules_nat64");
    return 12;
  }

  v1 = v0;
  v2 = PFUserBeginRules();
  v3 = qword_100034C38;
  if (!qword_100034C38)
  {
    v10 = 0;
    goto LABEL_29;
  }

  v4 = 1;
  while (1)
  {
    if ((*(v3 + 296) - 1) > 1 || *(v3 + 372) != 1 || (*(v3 + 392) & 2) == 0)
    {
      goto LABEL_18;
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    if (!v5)
    {
      sub_100001108(0, "unable to create rule xpc dictionary");
      goto LABEL_25;
    }

    v6 = v5;
    v7 = xpc_dictionary_create(0, 0, 0);
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      inet_ntop(2, (*(v3 + 24) + 740), string, 0x10u);
      inet_ntop(30, (v3 + 416), v14, 0x2Eu);
      sub_100001108(2u, "%s: nat64 prefix is %s, v4 is %s", "mis_pf_configure_nat64", v14, string);
      snprintf(__str, 0x32uLL, "%s/%u", v14, *(v3 + 432));
      xpc_dictionary_set_uint64(v6, kPFAction, 0xDuLL);
      xpc_dictionary_set_uint64(v6, kPFFamily, 0x1EuLL);
      xpc_dictionary_set_string(v8, kPFSubAddress, __str);
      xpc_dictionary_set_value(v6, kPFTo, v8);
      xpc_dictionary_set_string(v9, kPFSubAddress, string);
      xpc_dictionary_set_uint64(v9, kPFSubLowPort, 0x8000uLL);
      xpc_dictionary_set_uint64(v9, kPFSubHighPort, 0xBFFFuLL);
      xpc_dictionary_set_uint64(v9, kPFSubPortOperator, 0);
      xpc_dictionary_set_value(v6, kPFNATRDRAddress, v9);
      if (sub_10001B868(v1, v2, v6))
      {
        v10 = 0;
        v11 = 1;
      }

      else
      {
        sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_nat64");
        v11 = 0;
        v10 = 22;
      }
    }

    else
    {
      sub_100001108(0, "unable to create natAddr xpc dictionary");
      v11 = 0;
      v10 = 12;
    }

    xpc_release(v6);
    xpc_release(v8);
    if (v9)
    {
      xpc_release(v9);
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_26;
    }

    v4 = 0;
LABEL_18:
    v3 = *v3;
    if (!v3)
    {
      v10 = 0;
      if (v4)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  sub_100001108(0, "unable to create dstAddr xpc dictionary");
  xpc_release(v6);
LABEL_25:
  v10 = 12;
LABEL_26:
  sub_100001108(0, "%s: mis_pf_configure_nat64 1", "mis_pf_refresh_nat_rules_nat64");
  if (v4)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (!v10)
  {
    PFUserCommitRules();
    goto LABEL_30;
  }

LABEL_29:
  PFUserClearRules();
  PFUserDeleteRules();
LABEL_30:
  PFUserRelease();
  return v10;
}

uint64_t sub_10001B368()
{
  v0 = PFUserCreate();
  v1 = PFUserBeginRules();
  if (sub_10001B614(v0, v1, 2u) && sub_10001B614(v0, v1, 0x1Eu))
  {
    v2 = &qword_100034C38;
    do
    {
      v2 = *v2;
      if (!v2)
      {
        PFUserDeleteRules();
        goto LABEL_15;
      }
    }

    while ((*(v2 + 74) - 1) > 1 || *(v2 + 93) == 2 || (*(v2 + 9) & 1) == 0);
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, kPFAction, 1uLL);
    xpc_dictionary_set_BOOL(v3, kPFQuick, 1);
    xpc_dictionary_set_uint64(v3, kPFFamily, 2uLL);
    xpc_dictionary_set_string(v4, kPFSubTable, "network_isolation_table_v4");
    xpc_dictionary_set_value(v3, kPFFrom, v4);
    xpc_dictionary_set_value(v3, kPFTo, v4);
    if (!sub_10001B868(v0, v1, v3))
    {
      goto LABEL_11;
    }

    xpc_release(v3);
    xpc_release(v4);
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, kPFAction, 1uLL);
    xpc_dictionary_set_BOOL(v5, kPFQuick, 1);
    xpc_dictionary_set_uint64(v5, kPFFamily, 0x1EuLL);
    xpc_dictionary_set_string(v6, kPFSubTable, "network_isolation_table_v6");
    xpc_dictionary_set_value(v5, kPFFrom, v6);
    xpc_dictionary_set_value(v5, kPFTo, v6);
    if (!sub_10001B868(v0, v1, v5))
    {
      goto LABEL_11;
    }

    xpc_release(v5);
    xpc_release(v6);
    if ((PFUserCommitRules() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v7 = 1;
    if (v0)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
    if (v0)
    {
LABEL_12:
      PFUserRelease();
    }
  }

  return v7;
}

uint64_t sub_10001B614(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = qword_100034C38;
  if (!qword_100034C38)
  {
    return 1;
  }

  v7 = a3;
  while (1)
  {
    if (*(v3 + 296) - 1) <= 1 && *(v3 + 372) != 2 && (*(v3 + 9))
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v8, kPFAction, 0);
      xpc_dictionary_set_string(v8, kPFInterface, (*(v3 + 16) + 20));
      xpc_dictionary_set_BOOL(v8, kPFQuick, 1);
      xpc_dictionary_set_uint64(v8, kPFFamily, v7);
      xpc_dictionary_set_uint64(v8, kPFKeepState, 1uLL);
      v9 = xpc_dictionary_create(0, 0, 0);
      if (a3 == 30)
      {
        inet_ntop(30, (v3 + 396), __s, 0x32u);
        v11 = strlen(__s);
        snprintf(&__s[v11], 50 - v11, "/%u", *(v3 + 412));
      }

      else
      {
        if (a3 != 2)
        {
          sub_100021998();
        }

        v10 = sub_100012234(*(v3 + 384));
        inet_net_ntop(2, (v3 + 380), v10, __s, 0x13uLL);
      }

      xpc_dictionary_set_string(v9, kPFSubAddress, __s);
      xpc_dictionary_set_value(v8, kPFFrom, v9);
      xpc_dictionary_set_value(v8, kPFTo, v9);
      if (v9)
      {
        xpc_release(v9);
      }

      v12 = sub_10001B868(a1, a2, v8);
      xpc_release(v8);
      if (!v12)
      {
        break;
      }
    }

    v3 = *v3;
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10001B868(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if (byte_100034BED)
  {
    v6 = qword_1000351D0;
    if (!qword_1000351D0)
    {
      qword_1000351D0 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(qword_1000351D0, kPFSubLogFlags, 1uLL);
      v6 = qword_1000351D0;
    }

    xpc_dictionary_set_value(xdict, kPFLog, v6);
  }

  return _PFUserAddRule(a1, a2, xdict);
}

uint64_t sub_10001B90C(int a1)
{
  v2 = PFUserCreate();
  v3 = PFTableCreate();
  v4 = PFTableCreate();
  PFTableBegin();
  PFTableBegin();
  v5 = qword_100034C38;
  if (!qword_100034C38)
  {
LABEL_24:
    PFTableDelete();
    PFTableDelete();
    goto LABEL_25;
  }

  v6 = 0;
  do
  {
    while ((*(v5 + 296) - 1) <= 1 && *(v5 + 372) != 2 && (*(v5 + 9) & 1) != 0)
    {
      switch(a1)
      {
        case 0:
          goto LABEL_11;
        case 30:
          goto LABEL_12;
        case 2:
LABEL_11:
          v7 = sub_100012234(*(v5 + 384));
          inet_net_ntop(2, (v5 + 380), v7, string, 0x32uLL);
          v8 = xpc_string_create(string);
          PFTableAddAddress();
          xpc_release(v8);
          if (!a1)
          {
LABEL_12:
            inet_net_ntop(30, (v5 + 396), *(v5 + 412), string, 0x32uLL);
            v9 = xpc_string_create(string);
            PFTableAddAddress();
            xpc_release(v9);
          }

          break;
      }

      v5 = *v5;
      v6 = 1;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    v5 = *v5;
  }

  while (v5);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  switch(a1)
  {
    case 0:
LABEL_19:
      if (!PFTableCommit())
      {
        goto LABEL_22;
      }

      if (a1)
      {
        break;
      }

LABEL_21:
      if (PFTableCommit())
      {
        break;
      }

LABEL_22:
      v10 = 0;
      if (v3)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    case 30:
      goto LABEL_21;
    case 2:
      goto LABEL_19;
  }

LABEL_25:
  v10 = 1;
  if (v3)
  {
LABEL_26:
    CFRelease(v3);
  }

LABEL_27:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v2)
  {
    PFUserRelease();
  }

  return v10;
}

uint64_t sub_10001BB78()
{
  v0 = PFUserCreate();
  if (v0)
  {
    v1 = v0;
    v2 = PFUserBeginRules();
    v3 = qword_100034C38;
    if (qword_100034C38)
    {
      v4 = 1;
      while (1)
      {
        if ((*(v3 + 296) - 1) <= 1 && *(v3 + 372) == 1)
        {
          v5 = *(v3 + 480);
          if (v5)
          {
            break;
          }
        }

LABEL_10:
        v3 = *v3;
        if (!v3)
        {
          goto LABEL_14;
        }
      }

      while (1)
      {
        v6 = sub_10001BD40(v3, v5, v1, v2);
        if (v6)
        {
          break;
        }

        v5 = *v5;
        if (!v5)
        {
          v4 = 0;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = 1;
LABEL_14:
      v8 = qword_100034C18;
      if (!qword_100034C18)
      {
LABEL_24:
        if ((v4 & 1) == 0)
        {
          PFUserCommitRules();
          v7 = 0;
          goto LABEL_28;
        }

        v7 = 0;
LABEL_27:
        PFUserClearRules();
        PFUserDeleteRules();
LABEL_28:
        PFUserRelease();
        return v7;
      }

      while (1)
      {
        v9 = v8[5];
        if (v9)
        {
          v10 = *(v9 + 288);
          if (v10)
          {
            if ((*(v10 + 296) - 1) <= 1 && *(v10 + 372) == 1)
            {
              v11 = v8[3];
              if (v11)
              {
                break;
              }
            }
          }
        }

LABEL_23:
        v8 = *v8;
        if (!v8)
        {
          goto LABEL_24;
        }
      }

      while (1)
      {
        v6 = sub_10001BD40(*(v8[5] + 288), v11, v1, v2);
        if (v6)
        {
          break;
        }

        v11 = *v11;
        if (!v11)
        {
          v4 = 0;
          goto LABEL_23;
        }
      }
    }

    v7 = v6;
    goto LABEL_27;
  }

  sub_100001108(0, "%s: PFUserCreate", "mis_pf_refresh_port_forwarding_rules");
  return 12;
}

uint64_t sub_10001BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 24);
  if ((*(v8 + 776) & 2) != 0)
  {
    if (*(a2 + 9) == 30)
    {
      v10 = &qword_100034C00;
      while (1)
      {
        v10 = *v10;
        if (!v10)
        {
          break;
        }

        v11 = sub_10001DD2C(v10 + 8, *(a2 + 8), *(a2 + 12), *(a2 + 12), *(a2 + 10), *(a2 + 10), *(a2 + 9), (a2 + 16), a3, a4);
        if (v11)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v12 = &qword_100034BF8;
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        v11 = sub_10001DD2C(v12 + 8, *(a2 + 8), *(a2 + 12), *(a2 + 12), *(a2 + 10), *(a2 + 10), *(a2 + 9), (a2 + 16), a3, a4);
        if (v11)
        {
LABEL_12:
          v9 = v11;
          sub_100001108(0, "%s: mis_pf_configure_rdr, network %s (anyexternal)", "mis_pf_insert_port_forwarding_rule", a1 + 40);
          return v9;
        }
      }
    }

    return 0;
  }

  else
  {
    v9 = sub_10001DD2C((v8 + 20), *(a2 + 8), *(a2 + 12), *(a2 + 12), *(a2 + 10), *(a2 + 10), *(a2 + 9), (a2 + 16), a3, a4);
    if (v9)
    {
      sub_100001108(0, "%s: mis_pf_configure_rdr, network %s (non-anyexternal)");
    }
  }

  return v9;
}

uint64_t sub_10001BE98()
{
  v0 = PFUserCreate();
  if (!v0)
  {
    sub_100001108(0, "%s: PFUserCreate", "mis_pf_refresh_shared_mode_rules_v4");
    return 12;
  }

  v1 = v0;
  v2 = PFUserBeginRules();
  v3 = qword_100034C30;
  if (qword_100034C30)
  {
    v4 = 1;
    do
    {
      v5 = *(v3 + 784);
      if (v5)
      {
        while ((*(v3 + 776) & 2) != 0 || (*(v5 + 296) - 1) > 1 || *(v5 + 372) != 1 || (*(v5 + 376) & 2) == 0)
        {
          v5 = *(v5 + 528);
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        v6 = sub_10001C678((v3 + 20), 0, 0, v1, v2);
        v4 = 0;
        if (v6)
        {
          v7 = v6;
          sub_100001108(0, "%s: mis_pf_ifscrub 1");
          goto LABEL_107;
        }
      }

LABEL_10:
      v3 = *(v3 + 280);
    }

    while (v3);
  }

  else
  {
    v4 = 1;
  }

  v8 = &qword_100034BA8;
  v9 = qword_100034BF8;
  if (qword_100034BA8)
  {
    v10 = qword_100034BF8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    do
    {
      if (*(v9 + 41) == 1)
      {
        v11 = sub_10001C678((v9 + 8), 0, 0, v1, v2);
        v4 = 0;
        if (v11)
        {
          v7 = v11;
          sub_100001108(0, "%s: mis_pf_ifscrub 2");
          goto LABEL_107;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  v12 = qword_100034C38;
  if (!qword_100034C38)
  {
LABEL_69:
    for (i = qword_100034C30; i; i = *(i + 280))
    {
      v47 = *(i + 784);
      if (v47)
      {
        while ((*(i + 776) & 2) != 0 || (*(v47 + 296) - 1) > 1 || *(v47 + 372) != 1 || (*(v47 + 376) & 2) == 0)
        {
          v47 = *(v47 + 528);
          if (!v47)
          {
            goto LABEL_76;
          }
        }

        v48 = sub_10001D00C((i + 20), v1, v2, 2u);
        if (v48)
        {
          v7 = v48;
          sub_100001108(0, "%s: mis_pf_configure_ext_filters 1");
          goto LABEL_107;
        }

        v4 = 0;
      }

LABEL_76:
      ;
    }

    v49 = qword_100034BF8;
    if (*v8)
    {
      v50 = qword_100034BF8 == 0;
    }

    else
    {
      v50 = 1;
    }

    if (!v50)
    {
      do
      {
        if (*(v49 + 41) == 1)
        {
          v51 = sub_10001D00C((v49 + 8), v1, v2, 2u);
          if (v51)
          {
            v7 = v51;
            sub_100001108(0, "%s: mis_pf_configure_ext_filters 2");
            goto LABEL_107;
          }

          v4 = 0;
        }

        v49 = *v49;
      }

      while (v49);
    }

    v7 = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_107;
  }

  while (1)
  {
    if ((*(v12 + 296) - 1) > 1 || *(v12 + 372) != 1 || (*(v12 + 376) & 2) == 0)
    {
      goto LABEL_68;
    }

    v13 = *(v12 + 16);
    if (*(v13 + 16) >= *(*(v12 + 24) + 16))
    {
      v14 = *(*(v12 + 24) + 16);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    v15 = sub_10001C678((v13 + 20), 0, v14, v1, v2);
    if (v15)
    {
      v7 = v15;
      sub_100001108(0, "%s: mis_pf_ifscrub 3");
      goto LABEL_107;
    }

    v16 = sub_10001C678((*(v12 + 16) + 20), 0x32u, 0, v1, v2);
    if (v16)
    {
      v7 = v16;
      sub_100001108(0, "%s: mis_pf_ifscrub 4");
      goto LABEL_107;
    }

    if (!inet_ntop(2, (v12 + 380), v54, 0x10u))
    {
      v7 = 22;
      sub_100001108(0, "%s: inet_ntop");
      goto LABEL_104;
    }

    v17 = *(v12 + 24);
    if ((*(v17 + 776) & 2) == 0)
    {
      v18 = bswap32(*(v12 + 384));
      if ((v18 & 0x80000000) != 0)
      {
        v27 = 0;
        do
        {
          v28 = v27-- + 30;
        }

        while (((v18 >> v28) & 1) != 0);
        v19 = -v27;
      }

      else
      {
        v19 = 0;
      }

      v29 = sub_10001C7F4((v17 + 20), 2u, v54, v19, v1, v2);
      if (v29)
      {
        v7 = v29;
        sub_100001108(0, "%s: mis_pf_configure_nat_outbound 1");
        goto LABEL_104;
      }

      v30 = sub_10001CAD0((*(v12 + 24) + 20), (*(v12 + 16) + 20), v1, v2);
      if (v30)
      {
        v7 = v30;
        sub_100001108(0, "%s: mis_pf_configure_int_filters");
        goto LABEL_104;
      }

      goto LABEL_52;
    }

    v20 = qword_100034BF8;
    if (qword_100034BF8)
    {
      break;
    }

LABEL_52:
    v31 = *(v12 + 16);
    v32 = *(v12 + 384);
    v53 = *(v12 + 380);
    v33 = xpc_dictionary_create(0, 0, 0);
    if (!v33)
    {
      sub_100001108(0, "unable to create rule xpc dictionary");
      goto LABEL_102;
    }

    v34 = v33;
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
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *__str = 0u;
    v57 = 0u;
    xpc_dictionary_set_uint64(v33, kPFAction, 5uLL);
    xpc_dictionary_set_string(v34, kPFInterface, (v31 + 20));
    xpc_dictionary_set_uint64(v34, kPFFamily, 2uLL);
    v35 = xpc_dictionary_create(0, 0, 0);
    if (!v35)
    {
      sub_100001108(0, "unable to create src address xpc dictionary");
      goto LABEL_101;
    }

    v36 = v35;
    v37 = v8;
    inet_ntop(2, &v53, string, 0x10u);
    xpc_dictionary_set_string(v36, kPFSubAddress, string);
    v38 = xpc_dictionary_create(0, 0, 0);
    if (!v38)
    {
      sub_100001108(0, "unable to create dst address xpc dictionary");
      xpc_release(v36);
LABEL_101:
      xpc_release(v34);
LABEL_102:
      v7 = 12;
LABEL_103:
      sub_100001108(0, "%s: mis_pf_configure_nonat");
      goto LABEL_104;
    }

    v39 = v38;
    v40 = bswap32(v32);
    if ((v40 & 0x80000000) != 0)
    {
      v42 = 0;
      do
      {
        v43 = v42-- + 30;
      }

      while (((v40 >> v43) & 1) != 0);
      v41 = -v42;
    }

    else
    {
      v41 = 0;
    }

    snprintf(__str, 0x100uLL, "%s/%d", string, v41);
    xpc_dictionary_set_string(v39, kPFSubAddress, __str);
    xpc_dictionary_set_value(v34, kPFFrom, v36);
    xpc_dictionary_set_value(v34, kPFTo, v39);
    v44 = sub_10001B868(v1, v2, v34);
    if (v44)
    {
      v7 = 0;
    }

    else
    {
      sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_nonat");
      v7 = 22;
    }

    xpc_release(v36);
    xpc_release(v39);
    xpc_release(v34);
    if (!v44)
    {
      goto LABEL_103;
    }

    if (byte_1000351C4 == 1 && (*(*(v12 + 24) + 776) & 2) == 0)
    {
      v45 = sub_10001CCAC((*(v12 + 16) + 20), *(v12 + 380), *(v12 + 384), v1, v2);
      if (v45)
      {
        v7 = v45;
        sub_100001108(0, "%s: mis_pf_configure_ftp_proxy");
        goto LABEL_104;
      }
    }

    v4 = 0;
    v8 = v37;
LABEL_68:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_69;
    }
  }

  while (1)
  {
    if (*(v20 + 41) == 1)
    {
      v21 = bswap32(*(v12 + 384));
      if ((v21 & 0x80000000) != 0)
      {
        v23 = 0;
        do
        {
          v24 = v23-- + 30;
        }

        while (((v21 >> v24) & 1) != 0);
        v22 = -v23;
      }

      else
      {
        v22 = 0;
      }

      v25 = sub_10001C7F4((v20 + 8), 2u, v54, v22, v1, v2);
      if (v25)
      {
        v7 = v25;
        sub_100001108(0, "%s: mis_pf_configure_nat_outbound 2");
        goto LABEL_104;
      }

      v26 = sub_10001CC20((v20 + 8), 2, v1, v2);
      if (v26)
      {
        break;
      }
    }

    v20 = *v20;
    if (!v20)
    {
      goto LABEL_52;
    }
  }

  v7 = v26;
  sub_100001108(0, "%s: mis_pf_configure_port_forwarding_rules");
LABEL_104:
  if ((v4 & 1) == 0)
  {
LABEL_105:
    if (!v7)
    {
      PFUserCommitRules();
      goto LABEL_108;
    }
  }

LABEL_107:
  PFUserClearRules();
  PFUserDeleteRules();
LABEL_108:
  PFUserRelease();
  return v7;
}

uint64_t sub_10001C678(const char *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    sub_100001108(0, "unable to create xpc rule dictionary");
    return 12;
  }

  v11 = v10;
  xpc_dictionary_set_uint64(v10, kPFAction, 2uLL);
  xpc_dictionary_set_uint64(v11, kPFProtocol, a2);
  xpc_dictionary_set_string(v11, kPFInterface, a1);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    sub_100001108(0, "unable to create sub dictionary");
    xpc_release(v11);
    return 12;
  }

  v13 = v12;
  xpc_dictionary_set_uint64(v12, kPFSubScrubMaxMSS, a3);
  xpc_dictionary_set_uint64(v13, kPFSubScrubFlags, 0x100uLL);
  xpc_dictionary_set_value(v11, kPFScrubOptions, v13);
  if (sub_10001B868(a4, a5, v11))
  {
    v14 = 0;
  }

  else
  {
    sub_100001108(0, "%s: unable to add rule", "mis_pf_ifscrub");
    v14 = 22;
  }

  xpc_release(v13);
  xpc_release(v11);
  return v14;
}

uint64_t sub_10001C7F4(const char *a1, unsigned int a2, const char *a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    sub_100001108(0, "unable to create nat xpc dictionary");
    return 12;
  }

  v13 = v12;
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
  v22 = 0u;
  v23 = 0u;
  *__str = 0u;
  v21 = 0u;
  snprintf(__str, 0x100uLL, "%s:0", a1);
  xpc_dictionary_set_string(v13, kPFSubDynInterface, __str);
  xpc_dictionary_set_uint64(v13, kPFSubLowPort, 0x8000uLL);
  xpc_dictionary_set_uint64(v13, kPFSubHighPort, 0xBFFFuLL);
  xpc_dictionary_set_uint64(v13, kPFSubPortOperator, 0);
  v14 = xpc_dictionary_create(0, 0, 0);
  if (!v14)
  {
    sub_100001108(0, "unable to create rule xpc dictionary");
    xpc_release(v13);
    return 12;
  }

  v15 = v14;
  xpc_dictionary_set_uint64(v14, kPFAction, 4uLL);
  xpc_dictionary_set_string(v15, kPFInterface, a1);
  xpc_dictionary_set_uint64(v15, kPFFamily, a2);
  xpc_dictionary_set_uint64(v15, kPFExtFilter, 3uLL);
  xpc_dictionary_set_uint64(v15, kPFExtMap, 3uLL);
  v16 = xpc_dictionary_create(0, 0, 0);
  if (v16)
  {
    v17 = v16;
    snprintf(__str, 0x100uLL, "%s/%d", a3, a4);
    xpc_dictionary_set_string(v17, kPFSubAddress, __str);
    xpc_dictionary_set_value(v15, kPFFrom, v17);
    xpc_dictionary_set_value(v15, kPFNATRDRAddress, v13);
    if (sub_10001B868(a5, a6, v15))
    {
      v18 = 0;
    }

    else
    {
      sub_100001108(0, "%s: unable to add rule", "mis_pf_configure_nat_outbound");
      v18 = 22;
    }

    xpc_release(v13);
  }

  else
  {
    sub_100001108(0, "unable to create src address xpc dictionary");
    v18 = 12;
    v17 = v13;
  }

  xpc_release(v17);
  xpc_release(v15);
  return v18;
}