uint64_t sub_100318170@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for TightbeamDecoder();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamDecoder.init(message:)();
  v7 = TightbeamDecoder.decode(as:)();
  v8 = TightbeamDecoder.decode(as:)();
  v9 = TightbeamDecoder.decode(as:)();
  v10 = TightbeamDecoder.decode(as:)();
  v11 = TightbeamDecoder.decode(as:)();
  v12 = TightbeamDecoder.decode(as:)();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 17) = v10;
  *(a2 + 18) = v11;
  *(a2 + 19) = v12;
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003182A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TightbeamMessage.BufferUsage();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v10, enum case for TightbeamMessage.BufferUsage.writing(_:), v7);
  v13 = a3;
  v14 = a4;
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  if (!v4)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v8 + 8))(v10, v7);
  return v15;
}

uint64_t sub_100318470(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3)
{
  v5 = type metadata accessor for TightbeamEncoder();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamMessage.encoder()();
  TightbeamEncoder.encode(_:)(a2);
  TightbeamEncoder.encode(_:)(a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100318558(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TightbeamMessage.BufferUsage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for TightbeamMessage.BufferUsage.reading(_:), v3);
  type metadata accessor for TransportError();
  sub_100318B5C(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
  _s9Tightbeam0A7MessageV17withBufferPointer3for__xAC0D5UsageO_Srys5UInt8VGxACnq_YKXEtq_YKs5ErrorR_r0_lFZ();
  (*(v4 + 8))(v6, v3);
  if (v2)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_10031871C@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for TightbeamDecoder();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TightbeamDecoder.init(message:)();
  v7 = TightbeamDecoder.decode(as:)();
  v8 = TightbeamDecoder.decode(as:)();
  *a2 = v7;
  a2[1] = v8;
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100318808(uint64_t result)
{
  if (result == 64)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (result >= 3u)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100318828(uint64_t result)
{
  if (result > 3u)
  {
    switch(result)
    {
      case 0x10u:
        return 5;
      case 8u:
        return 4;
      case 4u:
        return 3;
    }

    return 6;
  }

  if (result >= 3u)
  {
    return 6;
  }

  return result;
}

void type metadata accessor for TransportError()
{
  if (!qword_10042FE18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10042FE18);
    }
  }
}

uint64_t sub_1003188C4(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10031892C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003189FC()
{
  result = qword_10042FA28;
  if (!qword_10042FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FA28);
  }

  return result;
}

unint64_t sub_100318A54()
{
  result = qword_10042FA30;
  if (!qword_10042FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FA30);
  }

  return result;
}

uint64_t sub_100318B5C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WifiScanData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WifiScanData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WifiScanData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BufferUsageStatistics(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BufferUsageStatistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BufferUsageStatistics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t rpc_afk_interface_find_with_timeout(const char *a1, const char *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, double a6)
{
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  interface = rpctools_find_interface(__str, "AFKEndpointInterface", a6);
  *a4 = interface;
  if (interface)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a5 && interface)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = rpctools_find_interface(__str, "AFKEndpointInterface", a6);
    *a5 = v13;
    if (v13)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t rpctools_find_interface(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v8);
      }

      else
      {
        v9 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v9);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v11 = IONotificationPortCreate(kIOMainPortDefault);
  if (v11)
  {
    v12 = v11;
    RunLoopSource = IONotificationPortGetRunLoopSource(v11);
    if (RunLoopSource)
    {
      v14 = RunLoopSource;
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      if (IOServiceAddMatchingNotification(v12, "IOServiceFirstMatch", MutableCopy, sub_100319230, notification, &notification[1]))
      {
        v15 = 0;
        notification[0] = 0;
      }

      else
      {
        v16 = IOIteratorNext(notification[1]);
        v15 = 0;
        notification[0] = v16;
        if (a3 != 0.0 && !v16)
        {
          if (a3 >= 0.0)
          {
            v17 = CFAbsoluteTimeGetCurrent();
            v15 = CFRunLoopTimerCreate(kCFAllocatorDefault, v17 + a3, 0.0, 0, 0, sub_100319280, 0);
            CFRunLoopAddTimer(Current, v15, kCFRunLoopDefaultMode);
          }

          else
          {
            v15 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v14, kCFRunLoopDefaultMode);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v12);
      if (v15)
      {
        CFRunLoopRemoveTimer(Current, v15, kCFRunLoopDefaultMode);
        CFRunLoopTimerInvalidate(v15);
        CFRelease(v15);
      }
    }

    else
    {
      IONotificationPortDestroy(v12);
    }
  }

  return notification[0];
}

void sub_100319230(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void sub_100319280()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

char *rpc_get_matching_server(const char *a1)
{
  v5 = 0;
  v1 = sub_100319318(0, a1, &v5);
  v2 = v5;
  if (v1 || !*v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = strdup(*v5);
  }

  sub_100319448(v2);
  return v3;
}

uint64_t sub_100319318(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&stru_10042FE20))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = qword_10048B980;
    if (qword_10048B980)
    {
      v9 = 0;
      do
      {
        v9 += sub_100319858(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = sub_1003197F0(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      sub_100319448(v6);
      v6 = 0;
    }

    else
    {
      v7 = qword_10048B980;
      if (qword_10048B980)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (sub_100319858(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&stru_10042FE20);
  }

  *a3 = v6;
  return v7;
}

void sub_100319448(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

void **rpc_get_all_matching_servers(const char *a1)
{
  v2 = 0;
  sub_100319318(0, a1, &v2);
  return v2;
}

char *rpc_get_server_by_name(const char *a1)
{
  v7 = 0;
  v2 = sub_100319318(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!v2)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  sub_100319448(v4);
  return v3;
}

void rpc_release_server(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t rpc_interface_open_with_timeout(const char *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  if (!pthread_mutex_lock(&stru_10042FE20))
  {
    v13 = qword_10048B980;
    if (!qword_10048B980)
    {
      goto LABEL_7;
    }

    while (strcmp(v13, a1) || strcmp((v13 + 128), a2))
    {
      v13 = *(v13 + 224);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = (*(v13 + 192))(*(v13 + 200), a3, a4, a5);
    if (v12 == 5)
    {
LABEL_7:
      v17 = 0;
      if (a5)
      {
        v14 = &v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = rpc_afk_interface_find_with_timeout(a1, a2, a3, &v17 + 1, v14, a6);
      if (v15)
      {
        return v15;
      }

      *a4 = tb_endpoint_create_with_data();
      if (a5)
      {
        *a5 = tb_endpoint_create_with_data();
      }

      v12 = 0;
    }

    pthread_mutex_unlock(&stru_10042FE20);
    return v12;
  }

  return 6;
}

uint64_t rpc_register_static_route(const char *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (strlen(a1) > 0x3F || strlen(a2) > 0x3F || strlen(a3) > 0x3F)
  {
    return 3;
  }

  v10 = malloc_type_malloc(0xE8uLL, 0xF83BD267uLL);
  if (!v10)
  {
    return 4;
  }

  v11 = v10;
  v10[28] = 0;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 4) = 0u;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  v11[24] = a4;
  v11[25] = a5;
  if (pthread_mutex_lock(&stru_10042FE20))
  {
    free(v11);
    return 6;
  }

  else
  {
    v11[28] = qword_10048B980;
    qword_10048B980 = v11;
    pthread_mutex_unlock(&stru_10042FE20);
    return 0;
  }
}

uint64_t sub_1003197F0(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

void rpc_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_100319858(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}

uint64_t shmem_map(const char *a1, uint64_t a2, void *a3)
{
  v5 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
  v6 = v5;
  if (v5)
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v7 = IOServiceMatching("AFKSharedMemoryRegion");
    if (v7)
    {
      v8 = v7;
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v7);
      CFRelease(v8);
      if (MutableCopy)
      {
        v10 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(MutableCopy, @"IONameMatch", v10);
        }

        else
        {
          v11 = MutableCopy;
          MutableCopy = 0;
        }

        CFRelease(v11);
      }
    }

    else
    {
      MutableCopy = 0;
    }

    *notification = 0;
    v13 = IONotificationPortCreate(kIOMasterPortDefault);
    RunLoopSource = IONotificationPortGetRunLoopSource(v13);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    if (IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", MutableCopy, sub_100319B38, notification, &notification[1]))
    {
      *v6 = 0;
LABEL_12:
      v12 = 5;
      goto LABEL_19;
    }

    notification[0] = IOIteratorNext(notification[1]);
    if (!notification[0])
    {
      CFRunLoopRun();
    }

    v16 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v16, RunLoopSource, kCFRunLoopDefaultMode);
    IOObjectRelease(notification[1]);
    IONotificationPortDestroy(v13);
    v17 = notification[0];
    *v6 = notification[0];
    if (!v17)
    {
      goto LABEL_12;
    }

    if (!IOServiceOpen(v17, mach_task_self_, 0x61666B6Du, v6 + 1) && !IOConnectMapMemory64(*(v6 + 1), 1u, mach_task_self_, v6 + 1, v6 + 2, 1u))
    {
      v12 = 0;
      goto LABEL_20;
    }

    v12 = 6;
  }

  else
  {
    v12 = 4;
  }

LABEL_19:
  shmem_unmap(v6);
  v6 = 0;
LABEL_20:
  *a3 = v6;
  return v12;
}

uint64_t shmem_unmap(io_object_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      IOServiceClose(v2);
    }

    if (*a1)
    {
      IOObjectRelease(*a1);
    }

    free(a1);
  }

  return 0;
}

uint64_t shmem_get_address(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t shmem_get_size(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_100319B38(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

unint64_t sub_100319BB8()
{
  result = qword_10042FE60;
  if (!qword_10042FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FE60);
  }

  return result;
}

uint64_t sub_100319C1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100319D1C();
  v6 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v6)
  {
    v7 = v6[2 * *v6];

    v8._countAndFlagsBits = 35;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);

    v9._countAndFlagsBits = a3;
    v9._object = a4;
    String.append(_:)(v9);

    return v7;
  }

  else
  {
  }

  return a3;
}

unint64_t sub_100319D1C()
{
  result = qword_10042FE68;
  if (!qword_10042FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10042FE68);
  }

  return result;
}

uint64_t Logger._fault(_:function:file:line:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v11 = a5;
  v14 = a1();
  v16 = v15;
  v17 = sub_100319F74(a6, a7, v8);
  v19 = v18;
  v20 = sub_100319F74(a3, a4, v11);
  v22 = sub_100319C1C(v17, v19, v20, v21);
  v24 = v23;

  v25 = static os_log_type_t.fault.getter();
  v26 = Logger.logObject.getter();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_10000234C(v22, v24, &v30);
    *(v27 + 12) = 2080;
    v28 = sub_10000234C(v14, v16, &v30);

    *(v27 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v26, v25, "fault,func,%s,message,%s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  reportBug(type:subType:subTypeContext:fatalCallback:)(0x746C756166, 0xE500000000000000, v22, v24, 0, 0, 0, 0);
}

unint64_t sub_100319F74(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

void Logger._fatal(_:function:file:line:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = a1();
  v17 = v16;
  v34 = a8;
  v18 = sub_100319F74(a6, a7, a8);
  v20 = v19;
  v21 = sub_100319F74(a3, a4, a5);
  v23 = sub_100319C1C(v18, v20, v21, v22);
  v25 = v24;

  v26 = static os_log_type_t.error.getter();
  v27 = Logger.logObject.getter();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_10000234C(v23, v25, &v35);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_10000234C(v15, v17, &v35);
    _os_log_impl(&_mh_execute_header, v27, v26, "fatal,func,%s,message,%s", v28, 0x16u);
    swift_arrayDestroy();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v15;
  *(v29 + 24) = v17;
  *(v29 + 32) = a6;
  *(v29 + 40) = a7;
  *(v29 + 48) = v34;
  *(v29 + 56) = a9;
  swift_bridgeObjectRetain_n();

  reportBug(type:subType:subTypeContext:fatalCallback:)(0x6C61746166, 0xE500000000000000, v23, v25, v15, v17, sub_10031B220, v29);

  [objc_opt_self() sleepForTimeInterval:10.0];
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v30._object = 0x80000001003B0E60;
  v30._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v30);
  Double.write<A>(to:)();
  v31 = v35;
  v32 = v36;
  v35 = v15;
  v36 = v17;

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10031A640()
{
  v0 = type metadata accessor for Logger();
  sub_100036108(v0, qword_10048BBF8);
  sub_100005DF0(v0, qword_10048BBF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10031A8D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100036108(v5, a2);
  sub_100005DF0(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10031AEE4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_100036108(v8, a2);
  v9 = sub_100005DF0(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_100005DF0(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t sub_10031AFD0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_100005DF0(v4, a2);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = *(a2 - 8);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    v16[0] = 7104878;
    v16[1] = 0xE300000000000000;
  }

  else
  {
    v14 = a2;
    v15 = a3;
    v11 = sub_10000DA60(&v13);
    (*(v10 + 32))(v11, v9, a2);
    sub_10002351C(&v13, v16);
  }

  sub_100024A2C(&qword_10042FE70, &qword_100399FC0);
  _print_unlocked<A, B>(_:_:)();
  return sub_100002580(v16);
}

void reportBug(type:subType:subTypeContext:fatalCallback:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v62 = a7;
  v14 = type metadata accessor for Logger();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v57 = &v54 - v18;
  v19 = [objc_allocWithZone(NSProcessInfo) init];
  v63 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  v20 = String._bridgeToObjectiveC()();
  v54 = a1;
  v21 = String._bridgeToObjectiveC()();
  v55 = a3;
  v22 = String._bridgeToObjectiveC()();
  v56 = a5;
  if (a6)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v59 = v19;
  v24 = [v19 processName];
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v25 = [v63 signatureWithDomain:v20 type:v21 subType:v22 subtypeContext:v23 detectedProcess:v24 triggerThresholdValues:0];

  if (!v25)
  {
    v39 = sub_10031AA80();
    v41 = v60;
    v40 = v61;
    (*(v60 + 16))(v17, v39, v61);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v62;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "reportBugBlocking,signature,nil", v46, 2u);
    }

    v47 = (*(v41 + 8))(v17, v40);
    v48 = v59;
    if (v45)
    {
      v45(v47);
    }

    isa = v63;
    goto LABEL_26;
  }

  v26 = v62;
  if (v62)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 6.0;
  }

  v28 = sub_10031AA80();
  v30 = v60;
  v29 = v61;
  v31 = v57;
  (*(v60 + 16))(v57, v28, v61);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v34 = 136315906;
    *(v34 + 4) = sub_10000234C(v54, a2, aBlock);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_10000234C(v55, a4, aBlock);
    *(v34 + 22) = 2080;
    if (a6)
    {
      v35 = v56;
    }

    else
    {
      v35 = 45;
    }

    v36 = v31;
    if (a6)
    {
      v37 = a6;
    }

    else
    {
      v37 = 0xE100000000000000;
    }

    v38 = sub_10000234C(v35, v37, aBlock);

    *(v34 + 24) = v38;
    *(v34 + 32) = 2048;
    *(v34 + 34) = v27;
    _os_log_impl(&_mh_execute_header, v32, v33, "reportBug,type:%s,subtype:%s,context:%s,delay:%f", v34, 0x2Au);
    swift_arrayDestroy();

    v26 = v62;

    (*(v30 + 8))(v36, v61);
  }

  else
  {

    (*(v30 + 8))(v31, v29);
  }

  aBlock[0] = 0;
  v48 = v25;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  if (aBlock[0])
  {

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v50 = swift_allocObject();
    v51 = v58;
    *(v50 + 16) = v26;
    *(v50 + 24) = v51;
    aBlock[4] = sub_10031BEA8;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10031BE18;
    aBlock[3] = &unk_100407858;
    v52 = _Block_copy(aBlock);
    sub_100022B94(v26, v51);

    v53 = v63;
    [v63 snapshotWithSignature:isa delay:0 events:0 payload:0 actions:v52 reply:v27];
    _Block_release(v52);

LABEL_26:
    return;
  }

  __break(1u);
}

uint64_t sub_10031B8C0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  if (a1)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v15;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v16 = sub_10031BED8(v48), (v17 & 1) != 0))
    {
      sub_100002524(*(a1 + 56) + 32 * v16, v49);
      sub_10031BF1C(v48);
      sub_10031BF70();
      if (swift_dynamicCast())
      {
        v18 = v46;
        v19 = [v46 BOOLValue];
        v20 = sub_10031AA80();
        v21 = *(v3 + 16);
        if (v19)
        {
          v21(v14, v20, v2);
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "reportBug,successful", v24, 2u);
          }

          return (*(v3 + 8))(v14, v2);
        }

        v21(v12, v20, v2);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v34, v35))
        {
LABEL_25:

          return (*(v3 + 8))(v12, v2);
        }

        v36 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = v44;
        *v36 = 136315138;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v37;
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v38 = sub_10031BED8(v48), (v39 & 1) != 0))
        {
          sub_100002524(*(a1 + 56) + 32 * v38, v49);
          sub_10031BF1C(v48);
          if (swift_dynamicCast())
          {
            v40 = v46;
            v41 = v47;
LABEL_24:
            v42 = sub_10000234C(v40, v41, &v45);

            *(v36 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v34, v35, "reportBug,failed,reason,%s ", v36, 0xCu);
            sub_100002580(v44);

            goto LABEL_25;
          }
        }

        else
        {
          sub_10031BF1C(v48);
        }

        v41 = 0xE700000000000000;
        v40 = 0x6E776F6E6B6E75;
        goto LABEL_24;
      }
    }

    else
    {
      sub_10031BF1C(v48);
    }

    v26 = sub_10031AA80();
    (*(v3 + 16))(v9, v26, v2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "reportBug,response,malformed", v29, 2u);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    v30 = sub_10031AA80();
    (*(v3 + 16))(v6, v30, v2);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "reportBug,response,nil", v33, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10031BE18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_10031BEA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = sub_10031B8C0(a1);
  if (v2)
  {
    return v2(result);
  }

  return result;
}

unint64_t sub_10031BED8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10031BFBC(a1, v4);
}

unint64_t sub_10031BF70()
{
  result = qword_100430FE0;
  if (!qword_100430FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100430FE0);
  }

  return result;
}

unint64_t sub_10031BFBC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10031C084(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10031BF1C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10031C1DC()
{
  if (qword_10048BE68 != -1)
  {
    swift_once();
  }

  return qword_10048BE70;
}

unint64_t sub_10031C238(unint64_t result)
{
  if (qword_10048BE68 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_10048BE78))
  {
    if (qword_10048BE70)
    {
      return result * qword_10048BE78 / qword_10048BE70;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall machAbsTimeNs()()
{
  v0 = mach_absolute_time();

  return sub_100004790(v0);
}

Swift::UInt64 __swiftcall machContTimeNs()()
{
  v0 = mach_continuous_time();

  return sub_100004790(v0);
}

uint64_t sub_10031C340()
{
  type metadata accessor for TimesSync();
  result = swift_initStaticObject();
  qword_10048BE58 = result;
  return result;
}

uint64_t *sub_10031C36C()
{
  if (qword_10048BE50 != -1)
  {
    swift_once();
  }

  return &qword_10048BE58;
}

uint64_t static TimesSync.instance.getter()
{
  type metadata accessor for TimesSync();

  return swift_initStaticObject();
}

uint64_t sub_10031C3EC()
{
  v1 = (*(*v0 + 192))();
  if (v2)
  {
    return 1;
  }

  v4 = v1;
  result = mach_continuous_time();
  if (qword_10048BE60 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  if (!__CFADD__(v4, qword_100435290))
  {
    return v4 + qword_100435290 < result;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10031C498()
{
  if (qword_10048BE60 != -1)
  {
    swift_once();
  }

  return &qword_100435290;
}

uint64_t sub_10031C4E8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - v8;
  result = (*(*v0 + 112))(v7);
  if (result)
  {
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    mach_get_times();
    if (v29 < v28)
    {
      __break(1u);
    }

    v11 = sub_100004790(v29 - v28);
    (*(*v0 + 152))(v11);
    v12 = v27 * 0.000000001 + v26;
    v13 = sub_100004790(v29);
    (*(*v0 + 176))(v12 - v13 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970);
    (*(*v0 + 200))(v29, 0);
    v14 = sub_10031A9BC();
    v25 = v3;
    v15 = *(v3 + 16);
    v15(v9, v14, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349824;
      swift_beginAccess();
      *(v18 + 4) = v28;
      *(v18 + 12) = 2050;
      swift_beginAccess();
      *(v18 + 14) = v29;
      *(v18 + 22) = 2050;
      swift_beginAccess();
      v19 = v27;
      *(v18 + 24) = v26;
      *(v18 + 32) = 2050;
      *(v18 + 34) = v19;
      _os_log_impl(&_mh_execute_header, v16, v17, "TimeSync,mat,%{public}llu,mct,%{public}llu,tp,%{public}ld,%{public}ld", v18, 0x2Au);
    }

    v20 = *(v25 + 8);
    v20(v9, v2);
    v15(v6, v14, v2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349312;
      *(v23 + 4) = (*(*v1 + 144))() * 0.000000001;
      *(v23 + 12) = 2050;
      *(v23 + 14) = (*(*v1 + 168))();
      _os_log_impl(&_mh_execute_header, v21, v22, "TimeSync,mct-mat,%{public}f,cfa-mct,%{public}f", v23, 0x16u);
    }

    return (v20)(v6, v2);
  }

  return result;
}

uint64_t sub_10031C954()
{
  (*(*v0 + 120))();
  v1 = *(*v0 + 144);

  return v1();
}

uint64_t sub_10031C9BC()
{
  (*(*v0 + 120))();
  v1 = *(*v0 + 168);

  return v1();
}

unint64_t sub_10031CA38()
{
  result = sub_10031C238(0x174876E800uLL);
  qword_100435290 = result;
  return result;
}

uint64_t sub_10031CA64()
{
  if (qword_10048BE60 != -1)
  {
    swift_once();
  }

  return qword_100435290;
}

uint64_t sub_10031CAE8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10031CB5C(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_10031CBD4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_10031CC38()
{
  result = sub_10031CC84();
  qword_10048BE70 = result;
  qword_10048BE78 = v1;
  return result;
}

uint64_t sub_10031CC84()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &info - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  info = 0x100000001;
  if (mach_timebase_info(&info))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!info.numer)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!info.denom)
  {
    goto LABEL_9;
  }

  v4 = sub_10031AA80();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    swift_beginAccess();
    denom = info.denom;
    *(v7 + 4) = info.numer;
    *(v7 + 8) = 1024;
    *(v7 + 10) = denom;
    _os_log_impl(&_mh_execute_header, v5, v6, "ticksInfo,numer,%u,denom,%u", v7, 0xEu);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  return info.numer;
}

void sub_10031CEEC(uint64_t a1)
{
  type metadata accessor for PlatformInfo();
  v1 = swift_allocObject();
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  *(v1 + 64) = deviceClassNumber == 1;
  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5;
  v7 = MobileGestalt_get_deviceClassNumber();

  *(v1 + 65) = v7 == 6;
  v8 = MobileGestalt_get_current_device();
  if (!v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v8;
  exclaveCapability = MobileGestalt_get_exclaveCapability();

  *(v1 + 66) = exclaveCapability;
  v11 = MobileGestalt_get_current_device();
  if (!v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v11;
  deviceSupportsAOP = MobileGestalt_get_deviceSupportsAOP();

  *(v1 + 67) = deviceSupportsAOP;
  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v14;
  v16 = MobileGestalt_get_deviceClassNumber();

  v17 = v16 == 1 && MGGetProductType() != 1260109173;
  *(v1 + 68) = v17;
  v18 = MobileGestalt_get_current_device();
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  deviceSupportsAOP2 = MobileGestalt_get_deviceSupportsAOP2();

  *(v1 + 69) = deviceSupportsAOP2;
  v21 = MobileGestalt_get_current_device();
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  isVirtualDevice = MobileGestalt_get_isVirtualDevice();

  *(v1 + 70) = isVirtualDevice;
  v24 = MobileGestalt_get_current_device();
  if (!v24)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = v24;
  v26 = MobileGestalt_get_isVirtualDevice();

  *(v1 + 71) = v26 ^ 1;
  v27 = MobileGestalt_get_current_device();
  if (!v27)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v28 = v27;
  mobileWifi = MobileGestalt_get_mobileWifi();

  *(v1 + 72) = mobileWifi;
  v30 = MobileGestalt_get_current_device();
  if (!v30)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = v30;
  v32 = MobileGestalt_copy_productType_obj();

  if (!v32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(v1 + 16) = v33;
  *(v1 + 24) = v35;
  v36 = MobileGestalt_get_current_device();
  if (!v36)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v37 = v36;
  v38 = MobileGestalt_copy_hwModelStr_obj();

  if (!v38)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(v1 + 32) = v39;
  *(v1 + 40) = v41;
  v42 = MobileGestalt_get_current_device();
  if (!v42)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v43 = v42;
  v44 = MobileGestalt_copy_productVersion_obj();

  if (v44)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    *(v1 + 48) = v45;
    *(v1 + 56) = v47;
    qword_10048BE88 = v1;
    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t *sub_10031D1B0()
{
  if (qword_10048BE80 != -1)
  {
    swift_once();
  }

  return &qword_10048BE88;
}

uint64_t static PlatformInfo.instance.getter()
{
  if (qword_10048BE80 != -1)
  {
    swift_once();
  }
}

uint64_t PlatformInfo.product.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PlatformInfo.model.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PlatformInfo.osVer.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

id sub_10031D2EC()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    return (deviceClassNumber == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10031D33C()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    return (deviceClassNumber == 6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10031D3CC()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      return (MGGetProductType() != 1260109173);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031D458()
{
  if (*(v0 + 69) == 1)
  {
    return *(v0 + 68);
  }

  else
  {
    return 0;
  }
}

id sub_10031D494()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    isVirtualDevice = MobileGestalt_get_isVirtualDevice();

    return (isVirtualDevice ^ 1u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10031D4F8(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031D54C()
{
  v6 = v0[2];

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v3 = v0[6];
  v2 = v0[7];

  v4._countAndFlagsBits = v3;
  v4._object = v2;
  String.append(_:)(v4);

  return v6;
}

uint64_t sub_10031D5C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v5 = v0[2];

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return v5;
}

uint64_t sub_10031D618()
{
  if ((*(*v0 + 176))() & 1) != 0 || ((*(*v0 + 184))())
  {
    v1 = (*(*v0 + 216))() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *PlatformInfo.deinit()
{

  return v0;
}

uint64_t PlatformInfo.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 73, 7);
}

unint64_t static ALUAFUsages.getKappaUsages()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10031AFAC();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "getKappaUsages()", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v8 = objc_opt_self();
  v9 = [v8 currentEstimates];
  sub_10031DBB4();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_5:

    v11 = [v8 lastKnownEstimates];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_6:
  v12 = sub_10031DD30(v10);
  v14 = v13;

  if (!v14)
  {
    return sub_10031E064(&_swiftEmptyArrayStorage);
  }

  sub_100024A2C(&qword_1004301B8, &qword_10039A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100374440;
  *(inited + 32) = 0xD00000000000001ALL;
  v16 = inited + 32;
  *(inited + 40) = 0x80000001003B1000;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  v17 = sub_10031E064(inited);
  swift_setDeallocating();
  sub_10031E178(v16);
  return v17;
}

unint64_t sub_10031DBB4()
{
  result = qword_1004301B0;
  if (!qword_1004301B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004301B0);
  }

  return result;
}

unint64_t sub_10031DC00(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10031DC78(a1, a2, v4);
}

unint64_t sub_10031DC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10031DD30(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 32);
LABEL_6:
    v11 = v10;
    v12 = [v10 countryCode];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10031AFAC();
      (*(v3 + 16))(v8, v17, v2);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_10000234C(v14, v16, &v27);
        _os_log_impl(&_mh_execute_header, v18, v19, "RD countryCode: %s", v20, 0xCu);
        sub_100002580(v21);
      }

      (*(v3 + 8))(v8, v2);
      return v14;
    }

LABEL_11:
    v22 = sub_10031AFAC();
    (*(v3 + 16))(v6, v22, v2);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No estimate from RD", v25, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_10031E064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_100430260, &qword_10039A1E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10031DC00(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10031E178(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_1004301C0, &qword_10039A1B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10031E21C()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

unint64_t sub_10031E27C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024A2C(&qword_100430508, &unk_10039ACE0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100323E60(&v22, v24);
        sub_100323E60(v24, v25);
        sub_100323E60(v25, &v23);
        result = sub_10031DC00(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100002580(v11);
          result = sub_100323E60(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100323E60(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10031E4D4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10031E50C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10031E564(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

double sub_10031E5BC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1003230F8(a2, v6);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

double sub_10031E5FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_10031E27C(&_swiftEmptyDictionarySingleton);
  if (!*(a1 + 16))
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v9 = sub_10031DC00(0xD000000000000011, 0x80000001003B1040);
  if ((v10 & 1) == 0)
  {
    v13 = 0;
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v11 = (*(a1 + 56) + 16 * v9);
  v13 = *v11;
  v12 = v11[1];

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = sub_10031DC00(0xD00000000000001DLL, 0x80000001003B1060);
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = (*(a1 + 56) + 16 * v14);
  v18 = *v16;
  v17 = v16[1];

LABEL_10:

  *&v23 = 0;
  *(&v23 + 1) = v8;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v25 = v13;
  *(&v25 + 1) = v12;
  *&v26 = v18;
  *(&v26 + 1) = v17;
  v27[0] = 0;
  v27[1] = v8;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = v13;
  v27[5] = v12;
  v27[6] = v18;
  v27[7] = v17;
  sub_100323308(&v23, &v22);
  sub_100323340(v27);
  v19 = v24;
  *a4 = v23;
  a4[1] = v19;
  result = *&v25;
  v21 = v26;
  a4[2] = v25;
  a4[3] = v21;
  return result;
}

uint64_t sub_10031E78C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_10031E818(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

id sub_10031E860()
{
  v0 = *sub_10033AC88();

  return v0;
}

id sub_10031E88C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_10031E8D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_10031E95C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *sub_10031E9F4()
{
  type metadata accessor for ALLaunchManager();
  v0 = swift_allocObject();
  result = sub_10031EB14();
  qword_100435298 = v0;
  return result;
}

uint64_t sub_10031EA30()
{
  v0 = swift_allocObject();
  sub_10031EB14();
  return v0;
}

uint64_t *sub_10031EA68()
{
  if (qword_10048BE90 != -1)
  {
    swift_once();
  }

  return &qword_100435298;
}

uint64_t sub_10031EAB8()
{
  if (qword_10048BE90 != -1)
  {
    swift_once();
  }
}

void *sub_10031EB14()
{
  v1 = v0;
  v87 = type metadata accessor for Logger();
  v76 = *(v87 - 8);
  v2 = __chkstk_darwin(v87);
  v75 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v74 - v4;
  v6 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  __chkstk_darwin(v6 - 8);
  v85 = &v74 - v7;
  v86 = type metadata accessor for ALScanServices();
  v81 = *(v86 - 8);
  __chkstk_darwin(v86);
  v88 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v0[2] = 0;
  v13 = v0 + 2;
  v0[3] = sub_10032395C(&_swiftEmptyArrayStorage);
  v83 = v0 + 3;
  v14 = sub_10033AC88();
  v15 = *v14;
  v0[4] = *v14;
  v0[5] = &_swiftEmptySetSingleton;
  v0[6] = &_swiftEmptySetSingleton;
  v16 = *((swift_isaMask & *v15) + 0xD0);
  v17 = v15;
  v16();

  swift_allocObject();
  swift_weakInit();
  sub_100323B4C();
  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v18 = sub_100323370();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  *&v91 = v19;
  sub_1003220F8(&_swiftEmptyArrayStorage);
  v20 = v91;
  swift_beginAccess();
  *v13 = v20;

  v22 = *(v20 + 16);
  if (!v22)
  {

    v84 = 0;
    v62 = v76;
LABEL_33:
    v63 = v75;
    launchlog.getter(v75);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v90[0] = v67;
      *v66 = 136315138;
      swift_beginAccess();

      sub_100024A2C(&qword_100430268, &unk_10039A220);
      sub_100323E70(&qword_100430270, &protocol conformance descriptor for ALScanServices);
      v68 = Dictionary.description.getter();
      v69 = v63;
      v71 = v70;

      v72 = sub_10000234C(v68, v71, v90);

      *(v66 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "Extension service dict: %s", v66, 0xCu);
      sub_100002580(v67);

      (*(v62 + 8))(v69, v87);
    }

    else
    {

      (*(v62 + 8))(v63, v87);
    }

    sub_100004820(v84, 0);
    return v1;
  }

  v74 = v1;
  v23 = 0;
  v84 = 0;
  v82 = (v81 + 48);
  v79 = (v81 + 32);
  v77 = v81 + 16;
  v78 = (v81 + 8);
  v24 = (v76 + 8);
  v89 = v22 - 1;
  v25 = 32;
  *&v21 = 138412290;
  v80 = v21;
  v26 = v86;
  v27 = v85;
  do
  {
    v28 = *(v20 + v25);
    v30 = *(v20 + v25 + 32);
    v29 = *(v20 + v25 + 48);
    v92 = *(v20 + v25 + 16);
    v93 = v30;
    v94 = v29;
    v91 = v28;
    if (!*(&v30 + 1))
    {
      sub_100323308(&v91, v90);
      goto LABEL_10;
    }

    sub_100323308(&v91, v90);

    ALScanServices.init(rawValue:)();
    if ((*v82)(v27, 1, v26) == 1)
    {
      sub_1000059A8(v27, &qword_100431AA0, &qword_10039A210);
LABEL_10:
      launchlog.getter(v5);
      sub_100323308(&v91, v90);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      sub_100323340(&v91);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = v91;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = v80;
        *(v34 + 4) = v33;
        *v35 = v33;
        v36 = v33;
        v26 = v86;
        _os_log_impl(&_mh_execute_header, v31, v32, "Extension %@ did not specify a valid service", v34, 0xCu);
        sub_1000059A8(v35, &unk_10042F020, &qword_100399AE0);
        v27 = v85;

        sub_100323340(&v91);
      }

      else
      {
        sub_100323340(&v91);
      }

      (*v24)(v5, v87);
      goto LABEL_28;
    }

    v37 = v88;
    (*v79)(v88, v27, v26);
    v38 = v83;
    swift_beginAccess();
    sub_100004820(v84, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = *v38;
    v40 = v90[0];
    *v38 = 0x8000000000000000;
    v42 = sub_100321EC8(v37);
    v43 = v40[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_37;
    }

    v46 = v41;
    if (v40[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003225B4();
        v40 = v90[0];
      }
    }

    else
    {
      sub_1003221EC(v45, isUniquelyReferenced_nonNull_native);
      v40 = v90[0];
      v47 = sub_100321EC8(v88);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_39;
      }

      v42 = v47;
    }

    v49 = v81;
    *v83 = v40;
    if ((v46 & 1) == 0)
    {
      v40[(v42 >> 6) + 8] |= 1 << v42;
      (*(v49 + 16))(v40[6] + *(v49 + 72) * v42, v88, v26);
      *(v40[7] + 8 * v42) = &_swiftEmptyArrayStorage;
      v50 = v40[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_38;
      }

      v40[2] = v52;
    }

    v53 = v40[7];
    v54 = *(v53 + 8 * v42);
    sub_100323308(&v91, v90);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 8 * v42) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_100321CB0(0, *(v54 + 2) + 1, 1, v54);
      *(v53 + 8 * v42) = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_100321CB0((v56 > 1), v57 + 1, 1, v54);
      *(v53 + 8 * v42) = v54;
    }

    v27 = v85;
    *(v54 + 2) = v57 + 1;
    v58 = &v54[64 * v57];
    v59 = v91;
    v60 = v92;
    v61 = v94;
    *(v58 + 4) = v93;
    *(v58 + 5) = v61;
    *(v58 + 2) = v59;
    *(v58 + 3) = v60;
    swift_endAccess();
    sub_100323340(&v91);
    v26 = v86;
    (*v78)(v88, v86);
    v84 = sub_10031F8BC;
LABEL_28:
    if (v89 == v23)
    {

      v1 = v74;
      v62 = v76;
      goto LABEL_33;
    }

    ++v23;
    v25 += 64;
  }

  while (v23 < *(v20 + 16));
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10031F5CC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = *a1;
  launchlog.getter(&v27 - v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v29 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v28 = v4;
    v15 = v14;
    v16 = v7;
    v17 = swift_slowAlloc();
    v30[0] = v17;
    *v15 = 136315138;
    if (v10)
    {
      v18 = 28271;
    }

    else
    {
      v18 = 6710895;
    }

    if (v10)
    {
      v19 = 0xE200000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10000234C(v18, v19, v30);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "published isScreenOn state changed to: %s", v15, 0xCu);
    sub_100002580(v17);
    v7 = v16;

    v4 = v28;
  }

  v21 = *(v4 + 8);
  v21(v9, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((v29 & 1) == 0)
    {
      (*(*Strong + 272))(Strong);
    }
  }

  else
  {
    launchlog.getter(v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no self", v26, 2u);
    }

    return (v21)(v7, v3);
  }
}

char *sub_10031F8CC()
{
  result = (*(*v0 + 120))();
  if (result)
  {
    v2 = 0;
    v3 = *(result + 2);
    v4 = &_swiftEmptyArrayStorage;
LABEL_3:
    v5 = &result[64 * v2];
    while (1)
    {
      if (v3 == v2)
      {

        return v4;
      }

      if (v2 >= *(result + 2))
      {
        break;
      }

      v6 = (v5 + 64);
      ++v2;
      v7 = *(v5 + 9);
      v5 += 64;
      if (v7)
      {
        v8 = result;
        v9 = *v6;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100321DBC(0, *(v4 + 2) + 1, 1, v4);
        }

        v11 = *(v4 + 2);
        v10 = *(v4 + 3);
        if (v11 >= v10 >> 1)
        {
          v4 = sub_100321DBC((v10 > 1), v11 + 1, 1, v4);
        }

        result = v8;
        *(v4 + 2) = v11 + 1;
        v12 = &v4[16 * v11];
        *(v12 + 4) = v9;
        *(v12 + 5) = v7;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10031F9F8(uint64_t (**a1)(char *, char *, uint64_t))
{
  v200 = a1;
  v1 = sub_100024A2C(&qword_100430278, &qword_10039A230);
  __chkstk_darwin(v1 - 8);
  v167 = &v162 - v2;
  v169 = type metadata accessor for ALBtAdvertisement();
  v196 = *(v169 - 8);
  __chkstk_darwin(v169);
  v4 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  __chkstk_darwin(v5 - 8);
  v189 = &v162 - v6;
  v201 = type metadata accessor for ALScanServices();
  v194 = *(v201 - 8);
  v7 = __chkstk_darwin(v201);
  v177 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v191 = &v162 - v9;
  v184 = type metadata accessor for ALNIPresenceNotification();
  v183 = *(v184 - 8);
  v10 = __chkstk_darwin(v184);
  v180 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v198 = &v162 - v13;
  __chkstk_darwin(v12);
  v181 = &v162 - v14;
  v15 = sub_100024A2C(&qword_100430280, &qword_10039A238);
  v16 = __chkstk_darwin(v15 - 8);
  v188 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v162 - v18;
  v20 = type metadata accessor for ALNIPresenceNotifications();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v193 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v176 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v179 = &v162 - v28;
  v29 = __chkstk_darwin(v27);
  v163 = &v162 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v162 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v162 - v35;
  __chkstk_darwin(v34);
  v38 = &v162 - v37;
  launchlog.getter(&v162 - v37);
  v39 = *(v21 + 16);
  v40 = v23;
  v195 = v20;
  v39(v23, v200, v20);
  v41 = Logger.logObject.getter();
  LODWORD(v190) = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v41, v190);
  v43 = &qword_100398ED0[38];
  v168 = v4;
  v192 = v24;
  v199 = v36;
  v162 = v33;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    *&v204[0] = v187;
    *v44 = 136315138;
    v45 = v41;
    ALNIPresenceNotifications.presenceResults.getter();
    v46 = Dictionary.description.getter();
    v48 = v47;

    (*(v21 + 8))(v40, v195);
    v49 = sub_10000234C(v46, v48, v204);
    v36 = v199;

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v45, v190, "Notifications to launch %s", v44, 0xCu);
    sub_100002580(v187);

    v50 = *(v193 + 8);
    v193 += 8;
    v190 = v50;
    v50(v38, v192);
    v43 = qword_100398ED0 + 304;
  }

  else
  {

    (*(v21 + 8))(v40, v195);
    v51 = *(v193 + 8);
    v193 += 8;
    v190 = v51;
    v51(v38, v24);
  }

  v52 = ALNIPresenceNotifications.presenceResults.getter();
  v54 = 0;
  v56 = v52 + 64;
  v55 = *(v52 + 64);
  v182 = v52;
  v57 = 1 << *(v52 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v55;
  v173 = (v57 + 63) >> 6;
  v195 = (v183 + 16);
  v200 = (v183 + 32);
  v186 = (v194 + 48);
  v175 = (v194 + 32);
  v174 = (v194 + 16);
  v187 = (v194 + 8);
  v194 = v183 + 8;
  v166 = (v196 + 48);
  v164 = (v196 + 32);
  v165 = (v196 + 8);
  v60 = &qword_100430288;
  *&v53 = v43[261];
  v178 = v53;
  v61 = v184;
  v62 = v198;
  v196 = v19;
  v185 = v52 + 64;
  while (v59)
  {
    v64 = v61;
    v65 = v54;
LABEL_21:
    v68 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v69 = v68 | (v65 << 6);
    v70 = (*(v182 + 48) + 16 * v69);
    v71 = *v70;
    v72 = v70[1];
    v73 = v183;
    v74 = v181;
    (*(v183 + 16))(v181, *(v182 + 56) + *(v183 + 72) * v69, v64);
    v75 = sub_100024A2C(&qword_100430288, &qword_10039A240);
    v76 = *(v75 + 48);
    v77 = v188;
    *v188 = v71;
    *(v77 + 1) = v72;
    v78 = v77;
    v79 = v74;
    v61 = v64;
    (*(v73 + 32))(&v77[v76], v79, v64);
    (*(*(v75 - 8) + 56))(v78, 0, 1, v75);

    v62 = v198;
    v19 = v196;
    v36 = v199;
LABEL_22:
    sub_100323BB0(v78, v19);
    v80 = sub_100024A2C(&qword_100430288, &qword_10039A240);
    v81 = (*(*(v80 - 8) + 48))(v19, 1, v80);
    v82 = v189;
    if (v81 == 1)
    {
    }

    (*v200)(v62, &v19[*(v80 + 48)], v61);
    ALNIPresenceNotification.service.getter();
    if ((*v186)(v82, 1, v201) == 1)
    {
      sub_1000059A8(v82, &qword_100431AA0, &qword_10039A210);
      v83 = v176;
      launchlog.getter(v176);
      v84 = v180;
      (*v195)(v180, v62, v61);
      v85 = Logger.logObject.getter();
      v86 = v62;
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v203 = v89;
        *v88 = v178;
        v90 = ALNIPresenceNotification.description.getter();
        v92 = v91;
        v93 = *v194;
        (*v194)(v180, v184);
        v94 = sub_10000234C(v90, v92, &v203);

        *(v88 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v85, v87, "Could not find client to launch for device: %s", v88, 0xCu);
        sub_100002580(v89);
        v61 = v184;

        v190(v83, v192);
        v62 = v198;
        v93(v198, v61);
      }

      else
      {

        v63 = *v194;
        (*v194)(v84, v61);
        v190(v83, v192);
        v63(v86, v61);
        v62 = v86;
      }

      v19 = v196;
      goto LABEL_9;
    }

    v95 = v191;
    v96 = v201;
    (*v175)(v191, v82, v201);
    launchlog.getter(v36);
    v97 = v177;
    (*v174)(v177, v95, v96);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v203 = v101;
      *v100 = v178;
      v102 = ALScanServices.rawValue.getter();
      v103 = v97;
      v105 = v104;
      v106 = *v187;
      (*v187)(v103, v201);
      v107 = sub_10000234C(v102, v105, &v203);

      *(v100 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v98, v99, "device adv service: %s", v100, 0xCu);
      sub_100002580(v101);
      v60 = v106;
      v61 = v184;

      v36 = v199;
    }

    else
    {

      v60 = *v187;
      (*v187)(v97, v201);
    }

    v108 = (v190)(v36, v192);
    v109 = (*(*v197 + 144))(v108);
    v110 = v191;
    v62 = v198;
    v111 = v179;
    if (*(v109 + 16) && (v112 = sub_100321EC8(v191), (v113 & 1) != 0))
    {
      v114 = *(*(v109 + 56) + 8 * v112);

      v115 = ALNIPresenceNotification.deviceId.getter();
      v172 = v116;
      if (!v116)
      {
        goto LABEL_34;
      }

      v170 = v115;
      v117 = v167;
      ALNIPresenceNotification._deviceAdvertisement.getter();
      v118 = v169;
      if ((*v166)(v117, 1, v169) == 1)
      {

        sub_1000059A8(v117, &qword_100430278, &qword_10039A230);
        v111 = v179;
LABEL_34:
        launchlog.getter(v111);

        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v171 = v60;
          v123 = v122;
          v203 = v122;
          *v121 = v178;
          v124 = Array.description.getter();
          v126 = v125;

          v127 = sub_10000234C(v124, v126, &v203);

          *(v121 + 4) = v127;
          v62 = v198;
          _os_log_impl(&_mh_execute_header, v119, v120, "Attempted to launch: %s but missing device adv", v121, 0xCu);
          sub_100002580(v123);
          v61 = v184;

          v190(v179, v192);
          (v171)(v191, v201);
        }

        else
        {

          v190(v111, v192);
          (v60)(v191, v201);
        }

        (*v194)(v62, v61);
LABEL_9:
        v36 = v199;
        goto LABEL_10;
      }

      v130 = (*v164)(v168, v117, v118);
      v131 = (*(*v197 + 216))(v130);
      v36 = v170;
      v132 = sub_100321214(v170, v172, v131);

      v171 = v60;
      if (v132)
      {
        goto LABEL_50;
      }

      v133 = *(v114 + 16);
      v134 = v168;
      if (v133)
      {
        v135 = *(*v197 + 264);
        v136 = (v114 + 32);
        do
        {
          v137 = *v136;
          v138 = v136[1];
          v139 = v136[3];
          v204[2] = v136[2];
          v204[3] = v139;
          v204[0] = v137;
          v204[1] = v138;
          sub_100323308(v204, &v203);
          v135(v204, v134);
          sub_100323340(v204);
          v136 += 4;
          --v133;
        }

        while (v133);
      }

      v140 = v163;
      launchlog.getter(v163);
      v141 = v172;

      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.default.getter();

      v144 = os_log_type_enabled(v142, v143);
      v36 = v199;
      if (v144)
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v203 = v146;
        *v145 = v178;
        v147 = v170;
        *(v145 + 4) = sub_10000234C(v170, v172, &v203);
        _os_log_impl(&_mh_execute_header, v142, v143, "Adding deviceId %s to backoff", v145, 0xCu);
        sub_100002580(v146);
        v141 = v172;

        v190(v140, v192);
        v148 = v191;
      }

      else
      {

        v190(v140, v192);
        v148 = v191;
        v147 = v170;
      }

      v149 = (*(*v197 + 232))(&v203);
      sub_100322834(v202, v147, v141);

      v149(&v203, 0);
      (*v165)(v168, v169);
      (v171)(v148, v201);
      v62 = v198;
      v61 = v184;
      (*v194)(v198, v184);
    }

    else
    {

      (v60)(v110, v201);
      (*v194)(v62, v61);
    }

LABEL_10:
    v56 = v185;
    v60 = &qword_100430288;
  }

  if (v173 <= v54 + 1)
  {
    v66 = v54 + 1;
  }

  else
  {
    v66 = v173;
  }

  v67 = v66 - 1;
  while (1)
  {
    v65 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v65 >= v173)
    {
      v128 = sub_100024A2C(&qword_100430288, &qword_10039A240);
      v129 = v188;
      (*(*(v128 - 8) + 56))(v188, 1, 1, v128);
      v59 = 0;
      v54 = v67;
      v78 = v129;
      goto LABEL_22;
    }

    v59 = *(v56 + 8 * v65);
    ++v54;
    if (v59)
    {
      v64 = v61;
      v54 = v65;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_50:
  v151 = v162;
  launchlog.getter(v162);

  v152 = v172;

  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    *v155 = 136315394;
    v156 = Array.description.getter();
    v157 = v36;
    v159 = v158;

    v160 = sub_10000234C(v156, v159, &v203);

    *(v155 + 4) = v160;
    *(v155 + 12) = 2080;
    v161 = sub_10000234C(v157, v152, &v203);

    *(v155 + 14) = v161;
    _os_log_impl(&_mh_execute_header, v153, v154, "Already launched extension:%s for deviceId:%s", v155, 0x16u);
    swift_arrayDestroy();

    v190(v151, v192);
    (*v165)(v168, v169);
    (v171)(v191, v201);
    return (*v194)(v198, v184);
  }

  else
  {

    v190(v151, v192);
    (*v165)(v168, v169);
    (v60)(v191, v201);
    return (*v194)(v62, v61);
  }
}

uint64_t sub_100321214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10032130C(__int128 *a1)
{
  v58 = type metadata accessor for Logger();
  v57 = *(v58 - 8);
  v2 = __chkstk_darwin(v58);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v51 - v5;
  v61 = a1[3];
  v56 = *(&v61 + 1);
  if (!*(&v61 + 1))
  {
    goto LABEL_13;
  }

  v7 = v61;
  v8 = sub_100024A2C(&qword_100430298, &qword_10039A250);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 1, 1, v11);
  v55 = v7;
  v13 = String._bridgeToObjectiveC()();
  v15 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v12 + 8))(v10, v11);
  }

  v17 = [objc_allocWithZone(LSApplicationIdentity) initWithBundleIdentifier:v13 URL:v15 personaUniqueString:0 personaType:4];

  v18 = [objc_opt_self() identityForLSApplicationIdentity:v17];
  if (v18)
  {
    v19 = v6;
    v20 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v21 = ALBtAdvertisement.identifier.getter();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    sub_100024A2C(&qword_1004302A0, &qword_10039A258);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100374440;
    v60[0] = 0x646975757462;
    v60[1] = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    v52 = v23;
    *(inited + 72) = v23;
    *(inited + 80) = v24;

    sub_100323C20(inited);
    swift_setDeallocating();
    sub_1000059A8(inited + 32, &qword_1004302A8, &qword_10039A260);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 setUserInfo:isa];

    v27 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v28 = v18;
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 initWithSceneProvidingProcess:v28 configurationIdentifier:v29];

    v31 = objc_opt_self();
    v53 = v30;
    v54 = v20;
    v32 = [v31 newHandleWithDefinition:v30 configurationContext:v20];
    v33 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    launchlog.getter(v6);

    sub_10000A0A4(&v61, v60, &qword_1004302B0, &qword_10039A268);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    sub_1000059A8(&v61, &qword_1004302B0, &qword_10039A268);

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_10000234C(v55, v56, v60);
      *(v36 + 12) = 2080;
      v37 = sub_10000234C(v52, v24, v60);

      *(v36 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v34, v35, "launching bundleId:%s btuuid:%s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v57 + 8))(v19, v58);
    [v32 activateWithContext:v33];
  }

  else
  {
LABEL_13:
    launchlog.getter(v4);
    sub_100323308(a1, v60);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    sub_100323340(a1);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v59 = v41;
      *v40 = 136315138;
      sub_100024A2C(&qword_100430290, &qword_10039A248);
      v42 = swift_allocObject();
      v43 = *a1;
      v44 = a1[1];
      v42[1] = xmmword_100374440;
      v42[2] = v43;
      v45 = a1[2];
      v46 = a1[3];
      v42[3] = v44;
      v42[4] = v45;
      v42[5] = v46;
      sub_100323308(a1, v60);
      v47 = Array.description.getter();
      v49 = v48;

      v50 = sub_10000234C(v47, v49, &v59);

      *(v40 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "Extension: %s did not specify a target bundleId", v40, 0xCu);
      sub_100002580(v41);
    }

    (*(v57 + 8))(v4, v58);
  }
}

uint64_t sub_100321A74()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  launchlog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Screen off clearing backoff", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = (*(*v1 + 232))(v13);
  v11 = v10;

  *v11 = &_swiftEmptySetSingleton;
  return v9(v13, 0);
}

uint64_t sub_100321C18()
{

  return v0;
}

uint64_t sub_100321C58()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

char *sub_100321CB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_100430290, &qword_10039A248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100321DBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_1004304D0, &qword_10039A330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100321EC8(uint64_t a1)
{
  type metadata accessor for ALScanServices();
  sub_100323E70(&qword_100430270, &protocol conformance descriptor for ALScanServices);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100321F4C(a1, v2);
}

unint64_t sub_100321F4C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for ALScanServices();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100323E70(&qword_1004304E0, &protocol conformance descriptor for ALScanServices);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_1003220F8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100321CB0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003221EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ALScanServices();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100024A2C(&qword_1004304D8, &unk_10039A338);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100323E70(&qword_100430270, &protocol conformance descriptor for ALScanServices);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

char *sub_1003225B4()
{
  v1 = v0;
  v33 = type metadata accessor for ALScanServices();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024A2C(&qword_1004304D8, &unk_10039A338);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_100322834(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100322BE4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100322984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100024A2C(&qword_1004304C8, &qword_10039A328);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100322BE4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100322984(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100322D64();
      goto LABEL_16;
    }

    sub_100322EC0(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100322D64()
{
  v1 = v0;
  sub_100024A2C(&qword_1004304C8, &qword_10039A328);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_100322EC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100024A2C(&qword_1004304C8, &qword_10039A328);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

double sub_1003230F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10031E27C(&_swiftEmptyDictionarySingleton);
  v4 = [a1 attributes];
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v5 + 16) && (v6 = sub_10031DC00(0xD000000000000011, 0x80000001003B1040), (v7 & 1) != 0))
  {
    sub_100002524(*(v5 + 56) + 32 * v6, &v28);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = *(&v24 + 1);
    }

    else
    {
      v10 = 0;
    }

    if (!*(v5 + 16))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    if (!*(v5 + 16))
    {
LABEL_19:
      v14 = 0;
      v15 = 0;
      goto LABEL_20;
    }
  }

  v11 = sub_10031DC00(0xD00000000000001DLL, 0x80000001003B1060);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_100002524(*(v5 + 56) + 32 * v11, v36);
  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v29;
  }

  else
  {
    v15 = 0;
  }

LABEL_20:
  v16 = [a1 bundleIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v24 = 0;
  *(&v24 + 1) = v5;
  *&v25 = v17;
  *(&v25 + 1) = v19;
  *&v26 = v9;
  *(&v26 + 1) = v10;
  *&v27 = v14;
  *(&v27 + 1) = v15;
  v28 = 0;
  v29 = v5;
  v30 = v17;
  v31 = v19;
  v32 = v9;
  v33 = v10;
  v34 = v14;
  v35 = v15;
  sub_100323308(&v24, v23);
  sub_100323340(&v28);
  v20 = v25;
  *a2 = v24;
  a2[1] = v20;
  result = *&v26;
  v22 = v27;
  a2[2] = v26;
  a2[3] = v22;
  return result;
}

uint64_t sub_100323370()
{
  v0 = type metadata accessor for Logger();
  v48 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v52 = &v46 - v4;
  v5 = objc_opt_self();
  sub_100024A2C(&qword_1004304E8, &qword_10039A348);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10039A200;
  v7 = objc_allocWithZone(_EXQuery);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithExtensionPointIdentifier:v8];

  *(v6 + 32) = v9;
  sub_10000ABCC(0, &qword_1004304F0, _EXQuery_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v5 executeQueries:isa];

  sub_10000ABCC(0, &qword_1004304F8, _EXExtensionIdentity_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v52;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v47 = v3;
    v16 = 0;
    v54 = (v48 + 8);
    v55 = v12 & 0xC000000000000001;
    v17 = &_swiftEmptyArrayStorage;
    *&v13 = 136315138;
    v50 = v13;
    v51 = v0;
    v56 = result;
    v49 = v12;
    do
    {
      if (v55)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v12 + 8 * v16 + 32);
      }

      v19 = v18;
      sub_1003230F8(v19, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100321CB0(0, *(v17 + 2) + 1, 1, v17);
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_100321CB0((v20 > 1), v21 + 1, 1, v17);
      }

      *(v17 + 2) = v21 + 1;
      v22 = &v17[64 * v21];
      v23 = v58[0];
      v24 = v58[1];
      v25 = v58[3];
      *(v22 + 4) = v58[2];
      *(v22 + 5) = v25;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      launchlog.getter(v15);
      v26 = v19;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v57 = v30;
        *v29 = v50;
        v31 = [v26 attributes];
        v53 = v17;
        v32 = v31;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = Dictionary.description.getter();
        v35 = v34;

        v36 = v33;
        v12 = v49;
        v17 = v53;
        v37 = sub_10000234C(v36, v35, &v57);

        *(v29 + 4) = v37;
        v15 = v52;
        _os_log_impl(&_mh_execute_header, v27, v28, "found extension: %s", v29, 0xCu);
        sub_100002580(v30);

        v0 = v51;
      }

      else
      {
      }

      (*v54)(v15, v0);
      ++v16;
    }

    while (v56 != v16);

    v3 = v47;
  }

  else
  {

    v17 = &_swiftEmptyArrayStorage;
  }

  launchlog.getter(v3);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v41;
    *v40 = 136315138;

    v42 = Array.description.getter();
    v44 = v43;

    v45 = sub_10000234C(v42, v44, &v57);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "found %s extensions", v40, 0xCu);
    sub_100002580(v41);
  }

  (*(v48 + 8))(v3, v0);
  if (!*(v17 + 2))
  {

    return 0;
  }

  return v17;
}

unint64_t sub_10032395C(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100430500, &qword_10039A350);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100024A2C(&qword_1004304D8, &unk_10039A338);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000A0A4(v9, v5, &qword_100430500, &qword_10039A350);
      result = sub_100321EC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ALScanServices();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100323B4C()
{
  result = qword_100431A90;
  if (!qword_100431A90)
  {
    sub_100024BB0(&qword_100431A80, &qword_10039A218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431A90);
  }

  return result;
}

uint64_t sub_100323BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430280, &qword_10039A238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100323C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_1004304C0, &qword_10039A320);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A0A4(v4, v13, &qword_1004302A8, &qword_10039A260);
      result = sub_10031BED8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100323E60(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 sub_100323D5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100323D70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100323DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_100323E60(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100323E70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ALScanServices();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100323EE8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_100323F5C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100323FEC()
{
  v1 = *(v0 + 48);

  return v1;
}

Swift::UInt64 sub_100324070(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v200 = a1;
  v191 = type metadata accessor for ALBtAdvertisement();
  v177 = *(v191 - 8);
  v7 = __chkstk_darwin(v191);
  v172 = v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v180 = v170 - v10;
  __chkstk_darwin(v9);
  v199 = v170 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v198 = v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v178 = v170 - v17;
  v18 = __chkstk_darwin(v16);
  v190 = v170 - v19;
  v20 = __chkstk_darwin(v18);
  v181 = v170 - v21;
  __chkstk_darwin(v20);
  v23 = v170 - v22;
  v4[3] = &_swiftEmptyArrayStorage;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = a2;
  v4[7] = a3;
  v175 = a3;

  v24 = sub_100334FA4();
  v25 = *(**v24 + 104);

  v25(&v201, 0xD000000000000011, 0x80000001003B1180, &type metadata for String);

  if (v202)
  {
    v26 = v201;
  }

  else
  {
    v26 = 0xD000000000000016;
  }

  if (v202)
  {
    v27 = v202;
  }

  else
  {
    v27 = 0x80000001003B11A0;
  }

  v28 = *(**v24 + 104);

  v28(&v201, 0xD000000000000016, 0x80000001003B11C0, &type metadata for Double);

  if (v202)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = *&v201;
  }

  corelog.getter(v23);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v193 = v12;
  v179 = v13;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v201 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_10000234C(v26, v27, &v201);
    *(v33 + 12) = 2048;
    *(v33 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "ALBtReplayerCSV,path,%s,interval,%f", v33, 0x16u);
    sub_100002580(v34);
  }

  v192 = *(v13 + 8);
  v192(v23, v12);
  v35 = v26;
  v174 = v200;
  v36 = ALDataGenerationBase.init(queue:interval:)(v174, v29);
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);

  v200 = v35;
  URL.init(fileURLWithPath:)();
  v41 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v41 - 8);
  static String.Encoding.utf8.getter();
  v42 = String.init(contentsOf:encoding:)();
  v44 = v43;

  result = sub_100325678(0x7FFFFFFFFFFFFFFFLL, 1, v42, v44, v45);
  v189 = 0;
  v194 = *(result + 16);
  v195 = result;
  v48 = v193;
  if (v194)
  {
    v49 = 0;
    v188 = v195 + 32;
    v182 = v179 + 8;
    v171 = (v177 + 16);
    v170[1] = v177 + 32;
    v176 = (v177 + 8);
    *&v47 = 134218242;
    v173 = v47;
    v187 = v36;
    v186 = v170;
    v185 = v37;
    v184 = v38;
    v183 = v40;
    do
    {
      if (v49 >= *(v195 + 16))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (!v49)
      {
        goto LABEL_16;
      }

      v198 = v49;
      v50 = (v188 + 32 * v49);
      v51 = *v50;
      v52 = *v50 >> 14;
      v53 = v50[1] >> 14;
      swift_bridgeObjectRetain_n();
      if (v52 == v53)
      {
        v54 = Substring.subscript.getter();
        v56 = v55;
        v58 = v57;
        v60 = v59;

        v61 = sub_100326770(0, 1, 1, &_swiftEmptyArrayStorage);
        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_100326770((v62 > 1), v63 + 1, 1, v61);
        }

        *(v61 + 2) = v63 + 1;
        v64 = &v61[32 * v63];
        *(v64 + 4) = v54;
        *(v64 + 5) = v56;
        *(v64 + 6) = v58;
        *(v64 + 7) = v60;
        if (v63 != 5)
        {
          goto LABEL_49;
        }

        goto LABEL_23;
      }

      v200 = &_swiftEmptyArrayStorage;
      v72 = v51;
      do
      {
        while (Substring.subscript.getter() != 44 || v73 != 0xE100000000000000)
        {
          v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v74)
          {
            goto LABEL_35;
          }

          result = Substring.index(after:)();
          v52 = result >> 14;
          if (result >> 14 == v53)
          {
            goto LABEL_43;
          }
        }

LABEL_35:
        if (v52 < v72 >> 14)
        {
          goto LABEL_106;
        }

        v75 = Substring.subscript.getter();
        v77 = v76;
        v196 = v79;
        v197 = v78;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v80 = v200;
        }

        else
        {
          v80 = sub_100326770(0, *(v200 + 2) + 1, 1, v200);
        }

        v82 = *(v80 + 2);
        v81 = *(v80 + 3);
        if (v82 >= v81 >> 1)
        {
          v80 = sub_100326770((v81 > 1), v82 + 1, 1, v80);
        }

        *(v80 + 2) = v82 + 1;
        v200 = v80;
        v83 = &v80[32 * v82];
        *(v83 + 4) = v75;
        *(v83 + 5) = v77;
        v84 = v196;
        *(v83 + 6) = v197;
        *(v83 + 7) = v84;
        result = Substring.index(after:)();
        v72 = result;
        v52 = result >> 14;
      }

      while (result >> 14 != v53);
LABEL_43:
      if (v53 < v72 >> 14)
      {
        goto LABEL_108;
      }

      v85 = Substring.subscript.getter();
      v87 = v86;
      v89 = v88;
      v91 = v90;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v61 = v200;
      }

      else
      {
        v61 = sub_100326770(0, *(v200 + 2) + 1, 1, v200);
      }

      v93 = *(v61 + 2);
      v92 = *(v61 + 3);
      if (v93 >= v92 >> 1)
      {
        v61 = sub_100326770((v92 > 1), v93 + 1, 1, v61);
      }

      *(v61 + 2) = v93 + 1;
      v94 = &v61[32 * v93];
      *(v94 + 4) = v85;
      *(v94 + 5) = v87;
      *(v94 + 6) = v89;
      *(v94 + 7) = v91;
      if (v93 != 5)
      {
LABEL_49:

        v95 = v181;
        corelog.getter(v181);

        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v201 = v99;
          *v98 = v173;
          *(v98 + 4) = v198;
          *(v98 + 12) = 2080;
          v100 = static String._fromSubstring(_:)();
          v102 = v101;

          v103 = sub_10000234C(v100, v102, &v201);

          *(v98 + 14) = v103;
          _os_log_impl(&_mh_execute_header, v96, v97, "line %ld: '%s' is ill-formed. Please follow [mac],[timestamp(ns)],[channel],[rssidB],[antennaIndex],[deviceInfoKw]. Skip!", v98, 0x16u);
          sub_100002580(v99);

          v48 = v193;
          result = (v192)(v95, v193);
          goto LABEL_55;
        }

        v48 = v193;
        result = (v192)(v95, v193);
LABEL_15:
        v36 = v187;
        v37 = v185;
        v38 = v184;
        v40 = v183;
        v49 = v198;
        goto LABEL_16;
      }

LABEL_23:
      v200 = v61;
      ALBtAdvertisement.init()();
      result = v200;
      v65 = v190;
      if (*(v200 + 2) < 2uLL)
      {
        goto LABEL_107;
      }

      v66 = *(v200 + 8);
      v67 = *(v200 + 9);
      if ((v67 ^ v66) >= 0x4000)
      {
        v69 = *(v200 + 10);
        v68 = *(v200 + 11);
        v70 = v189;
        sub_1003282AC(*(v200 + 8), *(v200 + 9), v69, v68, 10);
        if ((v71 & 0x100) != 0)
        {
          v104 = v70;

          sub_100327458(v66, v67, v69, v68, 10);
          v106 = v105;

          if (v106)
          {
            v189 = v70;
            v65 = v190;
            goto LABEL_53;
          }
        }

        else
        {
          v65 = v190;
          if (v71)
          {
            v189 = v70;
            goto LABEL_53;
          }

          v104 = v70;
        }

        result = ALBtAdvertisement._machContTimeNs.setter();
        if (*(v200 + 2))
        {
          v115 = *(v200 + 4);
          v116 = *(v200 + 5);
          if ((v116 ^ v115) < 0x4000)
          {
            v36 = v187;
            v119 = v104;
          }

          else
          {
            v118 = *(v200 + 6);
            v117 = *(v200 + 7);
            v119 = v104;
            sub_1003282AC(*(v200 + 4), *(v200 + 5), v118, v117, 16);
            v36 = v187;
            if ((v120 & 0x100) != 0)
            {

              sub_100327458(v115, v116, v118, v117, 16);

              v119 = v104;
            }
          }

          result = ALBtAdvertisement._mac.setter();
          if (*(v200 + 2) >= 3uLL)
          {
            v121 = *(v200 + 12);
            v122 = *(v200 + 13);
            if ((v122 ^ v121) < 0x4000)
            {
              LOBYTE(v127) = 1;
            }

            else
            {
              v124 = *(v200 + 14);
              v123 = *(v200 + 15);
              v125 = sub_1003281DC(*(v200 + 12), *(v200 + 13), v124, v123, 10, sub_10032885C);
              if ((v125 & 0x10000000000) != 0)
              {

                v126 = sub_100326ED0(v121, v122, v124, v123, 10);

                v125 = v126;
              }

              v127 = (v125 & &_mh_execute_header) >> 32;
            }

            LOBYTE(v201) = v127 & 1;
            result = ALBtAdvertisement._channel.setter();
            if (*(v200 + 2) >= 4uLL)
            {
              v128 = *(v200 + 16);
              v129 = *(v200 + 17);
              if ((v129 ^ v128) < 0x4000)
              {
                LOBYTE(v134) = 1;
              }

              else
              {
                v131 = *(v200 + 18);
                v130 = *(v200 + 19);
                v132 = sub_1003281DC(*(v200 + 16), *(v200 + 17), v131, v130, 10, sub_10032885C);
                if ((v132 & 0x10000000000) != 0)
                {

                  v133 = sub_100326ED0(v128, v129, v131, v130, 10);

                  v132 = v133;
                }

                v134 = (v132 & &_mh_execute_header) >> 32;
              }

              LOBYTE(v201) = v134 & 1;
              result = ALBtAdvertisement._rssidB.setter();
              if (*(v200 + 2) >= 5uLL)
              {
                v135 = *(v200 + 20);
                v136 = *(v200 + 21);
                if ((v136 ^ v135) < 0x4000)
                {
                  LOBYTE(v141) = 1;
                }

                else
                {
                  v138 = *(v200 + 22);
                  v137 = *(v200 + 23);
                  v139 = sub_1003281DC(*(v200 + 20), *(v200 + 21), v138, v137, 10, sub_10032885C);
                  if ((v139 & 0x10000000000) != 0)
                  {

                    v140 = sub_100326ED0(v135, v136, v138, v137, 10);

                    v139 = v140;
                  }

                  v141 = (v139 & &_mh_execute_header) >> 32;
                }

                LOBYTE(v201) = v141 & 1;
                result = ALBtAdvertisement._antennaIndex.setter();
                if (*(v200 + 2) >= 6uLL)
                {
                  v142 = *(v200 + 24);
                  v143 = *(v200 + 25);
                  v145 = *(v200 + 26);
                  v144 = *(v200 + 27);

                  if ((v143 ^ v142) < 0x4000)
                  {
                    v189 = v119;

                    LOBYTE(v147) = 1;
                  }

                  else
                  {
                    v146 = sub_1003281DC(v142, v143, v145, v144, 10, sub_100328CC8);
                    v189 = v119;
                    if ((v146 & 0x10000000000) != 0)
                    {
                      v146 = sub_100326948(v142, v143, v145, v144, 10);
                    }

                    v147 = (v146 & &_mh_execute_header) >> 32;
                  }

                  LOBYTE(v201) = v147 & 1;
                  v148 = v199;
                  ALBtAdvertisement._deviceInfoKw.setter();
                  (*v171)(v180, v148, v191);
                  swift_beginAccess();
                  v149 = *(v36 + 24);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v36 + 24) = v149;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v149 = sub_100326598(0, v149[2] + 1, 1, v149);
                    *(v36 + 24) = v149;
                  }

                  v152 = v149[2];
                  v151 = v149[3];
                  if (v152 >= v151 >> 1)
                  {
                    v149 = sub_100326598((v151 > 1), v152 + 1, 1, v149);
                  }

                  v149[2] = v152 + 1;
                  v153 = v177;
                  v154 = v191;
                  (*(v177 + 32))(v149 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v152, v180, v191);
                  *(v36 + 24) = v149;
                  swift_endAccess();
                  result = (*(v153 + 8))(v199, v154);
                  v37 = v185;
                  v38 = v184;
                  v40 = v183;
                  v49 = v198;
                  v48 = v193;
                  goto LABEL_16;
                }

LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
                goto LABEL_115;
              }

LABEL_112:
              __break(1u);
              goto LABEL_113;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

LABEL_53:

      corelog.getter(v65);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v107, v108))
      {

        v48 = v193;
        v192(v65, v193);
        result = (*v176)(v199, v191);
        goto LABEL_15;
      }

      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v201 = v110;
      *v109 = v173;
      *(v109 + 4) = v198;
      *(v109 + 12) = 2080;
      v111 = static String._fromSubstring(_:)();
      v113 = v112;

      v114 = sub_10000234C(v111, v113, &v201);

      *(v109 + 14) = v114;
      _os_log_impl(&_mh_execute_header, v107, v108, "line %ld: '%s' is ill-formed. Timestamp cannot convert to Uint64. Note that timestamp unit should be ns. Skip!", v109, 0x16u);
      sub_100002580(v110);

      v48 = v193;
      v192(v65, v193);
      result = (*v176)(v199, v191);
LABEL_55:
      v49 = v198;
      v36 = v187;
      v37 = v185;
      v38 = v184;
      v40 = v183;
LABEL_16:
      ++v49;
    }

    while (v49 != v194);
  }

  (*(v38 + 8))(v40, v37);
  swift_beginAccess();
  if (!*(*(v36 + 24) + 16))
  {
    goto LABEL_101;
  }

  result = machContTimeNs()();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_114;
  }

  v155 = result;
  result = swift_beginAccess();
  v156 = *(v36 + 24);
  if (!*(v156 + 16))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    return result;
  }

  v157 = v48;
  v158 = v177;
  v159 = v172;
  v160 = v191;
  (*(v177 + 16))(v172, v156 + ((*(v158 + 80) + 32) & ~*(v158 + 80)), v191);
  v161 = ALBtAdvertisement._machContTimeNs.getter();
  v163 = v162;
  (*(v158 + 8))(v159, v160);
  result = swift_endAccess();
  if (v163)
  {
    v164 = 0;
  }

  else
  {
    v164 = v161;
  }

  if (v164 < 0)
  {
    goto LABEL_116;
  }

  v165 = v155 - v164;
  swift_beginAccess();
  *(v36 + 40) = v165;
  v48 = v157;
LABEL_101:
  corelog.getter(v178);

  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = v48;
    v169 = swift_slowAlloc();
    *v169 = 134218240;
    *(v169 + 4) = *(*(v36 + 24) + 16);
    *(v169 + 12) = 2048;
    swift_beginAccess();
    *(v169 + 14) = *(v36 + 40);

    _os_log_impl(&_mh_execute_header, v166, v167, "Total bt advs from file: %ld. Offset is %lld", v169, 0x16u);
    v48 = v168;
  }

  else
  {
  }

  v192(v178, v48);
  return v36;
}

uint64_t sub_100325678@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_44:
    a1 = sub_100326770((a5 > 1), v6, 1, a1);
LABEL_36:
    *(a1 + 16) = v6;
    v32 = (a1 + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return a1;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    a1 = sub_100326770(0, 1, 1, &_swiftEmptyArrayStorage);
    v5 = *(a1 + 16);
    a5 = *(a1 + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = &_swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 4294959064;
  v42 = a1;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = String.subscript.getter();
        v9 = v19;
        a1 = sub_100327E5C(v18, v19);
        if ((a1 & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = a1;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = String.index(after:)();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = String.index(after:)();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return a1;
    }

    v21 = String.subscript.getter();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_100326770(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_100326770((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = String.index(after:)();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = String.subscript.getter();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    a1 = sub_100326770(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  a1 = v43;
LABEL_40:
  v37 = *(a1 + 16);
  v36 = *(a1 + 24);
  if (v37 >= v36 >> 1)
  {
    a1 = sub_100326770((v36 > 1), v37 + 1, 1, a1);
  }

  *(a1 + 16) = v37 + 1;
  v38 = (a1 + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return a1;
}

int64_t sub_100325A60()
{
  v1 = v0;
  v95 = type metadata accessor for Logger();
  v85 = *(v95 - 8);
  v2 = __chkstk_darwin(v95);
  v86 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v82 - v4;
  v103 = type metadata accessor for ALBtAdvertisement();
  v6 = *(v103 - 8);
  v7 = __chkstk_darwin(v103);
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v88 = &v82 - v10;
  __chkstk_darwin(v9);
  v94 = &v82 - v11;
  v12 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  v84 = type metadata accessor for ALBtNotification();
  v83 = *(v84 - 8);
  v15 = __chkstk_darwin(v84);
  v82 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v82 - v17;
  ALBtNotification.init()();
  static ALTimeStamp.now()();
  v19 = type metadata accessor for ALTimeStamp();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  ALBtNotification._timestamp.setter();
  v96 = v18;
  v20 = ALBtNotification._simulated.setter();
  v21 = (*v1 + 184);
  v22 = (*v1 + 160);
  v23 = *v22;
  v108 = *v21;
  v106 = v21;
  v24 = (v108)(v20);
  v104 = v23;
  v105 = v22;
  v25 = *(v23() + 16);

  if (v24 >= v25)
  {
LABEL_23:
    v70 = v96;
    v71 = *(ALBtNotification._advertisements.getter() + 16);

    if (v71)
    {
      corelog.getter(v86);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 134217984;
        swift_beginAccess();
        v75 = ALBtNotification._advertisements.getter();
        swift_endAccess();
        v76 = *(v75 + 16);

        *(v74 + 4) = v76;
        v70 = v96;
        _os_log_impl(&_mh_execute_header, v72, v73, "One BT notification from file, count: %ld", v74, 0xCu);
      }

      (*(v85 + 8))(v86, v95);
      v77 = v1[6];
      swift_beginAccess();
      v78 = v83;
      v79 = v82;
      v80 = v84;
      (*(v83 + 16))(v82, v70, v84);
      v77(v79);
      v81 = *(v78 + 8);
      v81(v79, v80);
      return (v81)(v70, v80);
    }

    else
    {
      return (*(v83 + 8))(v70, v84);
    }
  }

  else
  {
    v101 = v6 + 16;
    v98 = v6 + 8;
    v91 = (v6 + 32);
    v92 = (v85 + 8);
    *&v27 = 136315138;
    v87 = v27;
    v97 = v5;
    while (1)
    {
      v28 = (v108)(v26);
      result = v104();
      if ((v28 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v28 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v100 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v102 = *(v6 + 72);
      v30 = v94;
      v31 = v103;
      v99 = *(v6 + 16);
      v99(v94, result + v100 + v102 * v28, v103);
      v32 = ALBtAdvertisement._machContTimeNs.getter();
      v34 = v33;
      v35 = *(v6 + 8);
      result = v35(v30, v31);
      if (v34)
      {
        goto LABEL_38;
      }

      if (v32 < 0)
      {
        goto LABEL_30;
      }

      result = (*(*v1 + 208))(result);
      v36 = v32 + result;
      if (__OFADD__(v32, result))
      {
        goto LABEL_31;
      }

      result = machContTimeNs()();
      if (result < 0)
      {
        goto LABEL_32;
      }

      if (v36 >= result)
      {
        goto LABEL_23;
      }

      corelog.getter(v5);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v107[0] = v40;
        *v39 = v87;
        v41 = v108();
        result = v104();
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v41 >= *(result + 16))
        {
          goto LABEL_37;
        }

        v42 = v88;
        v90 = v38;
        v43 = v6;
        v44 = v103;
        v99(v88, result + v100 + v41 * v102, v103);

        v45 = ALBtAdvertisement.description.getter();
        v89 = v37;
        v46 = v1;
        v47 = v45;
        v49 = v48;
        v50 = v44;
        v6 = v43;
        v35(v42, v50);
        v51 = v47;
        v1 = v46;
        v52 = sub_10000234C(v51, v49, v107);

        *(v39 + 4) = v52;
        v53 = v89;
        _os_log_impl(&_mh_execute_header, v89, v90, "One BT adv from file: %s", v39, 0xCu);
        sub_100002580(v40);

        v54 = (*v92)(v97, v95);
      }

      else
      {

        v54 = (*v92)(v5, v95);
      }

      v55 = (v108)(v54);
      result = v104();
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v55 >= *(result + 16))
      {
        goto LABEL_34;
      }

      v56 = v100;
      v57 = result + v100 + v55 * v102;
      v58 = v93;
      v99(v93, v57, v103);

      v59 = ALBtNotification._advertisements.modify();
      v61 = v60;
      v62 = *v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v61 = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = sub_100326598(0, *(v62 + 2) + 1, 1, v62);
        *v61 = v62;
      }

      v65 = *(v62 + 2);
      v64 = *(v62 + 3);
      if (v65 >= v64 >> 1)
      {
        v62 = sub_100326598((v64 > 1), v65 + 1, 1, v62);
        *v61 = v62;
      }

      *(v62 + 2) = v65 + 1;
      (*v91)(&v62[v56 + v65 * v102], v58, v103);
      v59(v107, 0);
      result = (*(*v1 + 200))(v107);
      if (__OFADD__(*v66, 1))
      {
        goto LABEL_35;
      }

      ++*v66;
      v67 = (result)(v107, 0);
      v68 = (v108)(v67);
      v69 = *(v104() + 16);

      v5 = v97;
      if (v68 >= v69)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003264CC()
{
}

uint64_t sub_1003264FC()
{
  v0 = ALDataGenerationBase.deinit();

  return v0;
}

uint64_t sub_100326534()
{
  v0 = ALDataGenerationBase.deinit();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void *sub_100326598(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(&unk_100431430, &unk_10039A880);
  v10 = *(type metadata accessor for ALBtAdvertisement() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ALBtAdvertisement() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100326770(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_100430648, &qword_10039A3A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10032687C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(24);
  v3._object = 0x80000001003B12C0;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 8238;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unsigned __int8 *sub_100326948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_10032839C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1003279E8(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100326ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_10032839C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1003279E8(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100327458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_10032839C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1003279E8(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1003279E8(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100327A68(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100327A68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100037C48(v9, 0), v12 = sub_100327BC0(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100327BC0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100327DE0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100327DE0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100327DE0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_100327E5C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_100327FAC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_100327FAC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100328044(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1003280B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100328044(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100327DE0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003280B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_1003281DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = 0;
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = _StringObject.sharedUTF8.getter();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v17 = BYTE4(result) & 1;
    v15 = result | ((BYTE4(result) & 1) << 32);
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1003282AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1003283F0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_10032839C()
{
  result = qword_100430640;
  if (!qword_100430640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430640);
  }

  return result;
}

uint64_t sub_1003283F0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100327DE0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_10032885C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100327DE0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_100328CC8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100327DE0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void sub_100329144(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_10032918C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_100329218(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_1003292E8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_100329368(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_100329450(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1003294A8(a1, a2, a3);
  return v6;
}

uint64_t sub_1003294A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = v4;
  *(v4 + 40) = 0u;
  v8 = (v4 + 40);
  *(v8 + 1) = 0u;
  v9 = v8 + 2;
  *(v8 - 3) = a1;
  *(v8 - 2) = a2;
  *(v8 - 1) = a3;
  type metadata accessor for PlatformInfo();
  v27 = a1;

  static PlatformInfo.instance.getter();
  v26 = dispatch thunk of PlatformInfo.aop2Enabled.getter();

  v10 = sub_100334FA4();
  v11 = *(**v10 + 104);

  v11(v29, 0x756D695369466957, 0xED0000646574616CLL, &type metadata for Bool);

  if (LOBYTE(v29[0]) != 2 && (v29[0] & 1) != 0)
  {
    type metadata accessor for ALWiFiSimulated();
    v12 = sub_10033EAC4(v27, a2, a3);
    swift_beginAccess();
    *v8 = v12;
    goto LABEL_22;
  }

  v13 = *(**v10 + 104);

  v13(v29, 0x6C70655269466957, 0xEF56534364657961, &type metadata for Bool);

  if (LOBYTE(v29[0]) != 2 && (v29[0] & 1) != 0)
  {
    type metadata accessor for ALWiFiReplayerCSV();
    v14 = sub_10033F0B4(v27, a2, a3);
    swift_beginAccess();
    v8[1] = v14;
    goto LABEL_22;
  }

  v15 = *(**v10 + 104);

  v15(v29, 0x726F43686365654CLL, 0xED00006946695765, &type metadata for Bool);

  if (LOBYTE(v29[0]) != 2)
  {
    v16 = a2;
    if ((v29[0] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    type metadata accessor for ALLeechCoreWiFi();
    v17 = sub_100332874(v27, v16, a3);
    swift_beginAccess();
    *v9 = v17;
    goto LABEL_22;
  }

  if ((v26 & 1) == 0)
  {
    static PlatformInfo.instance.getter();
    v18 = dispatch thunk of PlatformInfo.hasMobileWiFi.getter();

    v16 = a2;
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v16 = a2;
LABEL_13:
  v19 = *(**v10 + 104);

  v19(v29, 0xD000000000000018, 0x80000001003B12E0, &type metadata for Bool);

  if (LOBYTE(v29[0]) == 2)
  {
    v20 = v27;
  }

  else
  {
    v20 = v27;
    if (v29[0])
    {
      type metadata accessor for ALLeechCoreWiFi();
      v21 = sub_100332874(v27, sub_100329940, 0);
      swift_beginAccess();
      *v9 = v21;
    }
  }

  v22 = *(**v10 + 104);

  v22(v29, 0x504F41686365654CLL, 0xED00006946695732, &type metadata for Bool);

  v23 = v29[0];
  if (LOBYTE(v29[0]) == 2)
  {
    v23 = v26;
  }

  if (v23)
  {
    type metadata accessor for ALWiFiLeechAOP2();
    v24 = sub_10032D9F4(v20, v16, a3);
    swift_beginAccess();
    v8[3] = v24;
  }

  else
  {
  }

LABEL_22:

  return v28;
}

uint64_t sub_100329940(uint64_t a1)
{
  v3 = type metadata accessor for ALWiFiNotification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v9);
  (*(v4 + 16))(v6, a1, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = v7;
    v13 = v12;
    v19 = swift_slowAlloc();
    v23 = v19;
    *v13 = 136315138;
    v14 = ALWiFiNotification.description.getter();
    v21 = v1;
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_10000234C(v14, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "#WiFi,LeechCoreWiFiAsReference,%s", v13, 0xCu);
    sub_100002580(v19);

    return (*(v22 + 8))(v9, v20);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v22 + 8))(v9, v7);
  }
}

uint64_t sub_100329BF0()
{

  return v0;
}

uint64_t sub_100329C38()
{

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100329CBC()
{
  type metadata accessor for ALCoreAnalyticsManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 88) = &off_100407B00;
  *(v0 + 96) = &off_100407B88;
  v1 = *(**sub_100334FA4() + 104);

  v1(&v5, 0xD000000000000017, 0x80000001003B1570, &type metadata for Double);

  if (v6)
  {
    v2 = 6.0;
  }

  else
  {
    v2 = v5;
  }

  *(v0 + 80) = v2 * SecInHr.getter();
  *(v0 + 72) = machContTimeSec()();
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v3 = dispatch thunk of PlatformInfo.aop2Enabled.getter();

  *(v0 + 16) = v3 & 1;
  qword_10048BEA0 = v0;
  return result;
}

uint64_t static ALCoreAnalyticsManager.instance.getter()
{
  if (qword_10048BE98 != -1)
  {
    swift_once();
  }
}

void sub_100329E68(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a1;
  v8 = UsToMin.getter();
  sub_100329EFC(a4, v8 * v7);
  if (a4 > 1.0)
  {
    v9 = *(v4 + 32);
    v10 = __CFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
LABEL_9:
      __break(1u);
      return;
    }

    *(v4 + 32) = v11;
  }

  v12 = *(v4 + 24);
  v10 = __CFADD__(v12, a3);
  v13 = v12 + a3;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 24) = v13;

  sub_1000040B4();
}

void sub_100329EFC(double a1, double a2)
{
  v3 = v2;
  v42 = type metadata accessor for Logger();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10032AB90(&_swiftEmptyArrayStorage);
  v10 = (v9 + 16);
  sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v12 = *(v9 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v12;
  *(v9 + 16) = 0x8000000000000000;
  sub_10032A8AC(isa, 0x6E65637265507442, 0xED00006C6C754674, isUniquelyReferenced_nonNull_native);
  *(v9 + 16) = aBlock[0];
  v14 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v15 = *(v9 + 16);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v15;
  *(v9 + 16) = 0x8000000000000000;
  sub_10032A8AC(v14, 0x7265666675427442, 0xEC000000657A6953, v16);
  v17 = 0;
  v18 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v19 = *(v3 + 96);
  do
  {
    if (*(v19 + 16) == v17)
    {
      break;
    }

    v20 = *(v19 + 32 + 8 * v17++);
  }

  while (v20 < a2);
  v21 = Double._bridgeToObjectiveC()().super.super.isa;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v18;
  *v10 = 0x8000000000000000;
  sub_10032A8AC(v21, 0x656C7341656D6954, 0xEA00000000007065, v22);
  v23 = 0;
  v24 = aBlock[0];
  *v10 = aBlock[0];
  v25 = *(v3 + 88);
  do
  {
    if (*(v25 + 16) == v23)
    {
      break;
    }

    v26 = *(v25 + 32 + 8 * v23++);
  }

  while (v26 < a1);
  v27 = Double._bridgeToObjectiveC()().super.super.isa;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v24;
  *(v9 + 16) = 0x8000000000000000;
  sub_10032A8AC(v27, 0x6372655069666957, 0xEF6C6C7546746E65, v28);
  v29 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v30 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v29;
  *(v9 + 16) = 0x8000000000000000;
  sub_10032A8AC(v30, 0x6666754269666957, 0xEE00657A69537265, v31);
  *(v9 + 16) = aBlock[0];
  corelog.getter(v8);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    swift_beginAccess();
    sub_10000ABCC(0, &unk_1004309B0, NSObject_ptr);

    v36 = Dictionary.description.getter();
    v38 = v37;

    v39 = sub_10000234C(v36, v38, aBlock);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "CoreAnalytics, send wake event: %{public}s", v34, 0xCu);
    sub_100002580(v35);
  }

  (*(v6 + 8))(v8, v42);
  v40 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10032AC94;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10032A44C;
  aBlock[3] = &unk_100407D48;
  v41 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v41);
}

Class sub_10032A44C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000ABCC(0, &unk_1004309B0, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void *ALCoreAnalyticsManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ALCoreAnalyticsManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 104, 7);
}

Swift::Int sub_10032A608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024A2C(&unk_1004309C0, &qword_10039A498);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10032A8AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10031DC00(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10032A608(v16, a4 & 1);
      v11 = sub_10031DC00(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10032AA24();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_10032AA24()
{
  v1 = v0;
  sub_100024A2C(&unk_1004309C0, &qword_10039A498);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10032AB90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&unk_1004309C0, &qword_10039A498);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10031DC00(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10032ACD4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_10032AD5C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  sub_10032ADC4(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_10032ADC4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v14 = a1;

  corelog.getter(v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v15, v16, "debounce.init,%{public}f", v17, 0xCu);
  }

  else
  {
  }

  (*(v11 + 8))(v13, v10);
  return v5;
}

uint64_t sub_10032AF80(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  *&result = COERCE_DOUBLE((*(*a1 + 120))(v9));
  if ((v13 & 1) == 0)
  {
    v14 = result;
    if (*&result <= a2)
    {
      corelog.getter(v8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134349312;
        *(v20 + 4) = a2;
        *(v20 + 12) = 2050;
        *(v20 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v18, v19, "debounce.workItem,callback,mctnow,%{public}f,last,%{public}f", v20, 0x16u);
      }

      (*(v5 + 8))(v8, v4);
      *&result = COERCE_DOUBLE(sub_100008264(0, 1));
    }

    else
    {
      corelog.getter(v11);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134349312;
        *(v17 + 4) = a2;
        *(v17 + 12) = 2050;
        *(v17 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "debounce.workItem,skip,mctnow,%{public}f,last,%{public}f", v17, 0x16u);
      }

      *&result = COERCE_DOUBLE((*(v5 + 8))(v11, v4));
    }
  }

  return result;
}

uint64_t sub_10032B200()
{

  return v0;
}

uint64_t sub_10032B230()
{

  return _swift_deallocClassInstance(v0, 72, 7);
}

void *sub_10032B2A8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10032B33C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_10032B3D4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_10032B4A4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_10032B584(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_10032B5CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 95;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10032B65C()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_10032B68C()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return 19;
  }

  v2 = *(*v1 + 144);

  v2(v3);

  return 36;
}

uint64_t DataVendorService.__allocating_init(queue:)(void *a1)
{
  v2 = swift_allocObject();
  DataVendorService.init(queue:)(a1);
  return v2;
}

char *DataVendorService.init(queue:)(void *a1)
{
  v2 = v1;
  v89 = type metadata accessor for Logger();
  v4 = *(v89 - 8);
  v5 = __chkstk_darwin(v89);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v87 = &v76 - v8;
  v9 = __chkstk_darwin(v7);
  v83 = &v76 - v10;
  __chkstk_darwin(v9);
  v82 = &v76 - v11;
  v81 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v81);
  v80 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v79 - 8);
  __chkstk_darwin(v79);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 64) = 0u;
  v86 = v2 + 64;
  *(v2 + 80) = 0u;
  v76 = v2 + 80;
  v90 = v2 + 16;
  *(v2 + 112) = 0;
  v77 = (v2 + 112);
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xE100000000000000;
    v19 = 95;
  }

  *(v2 + 120) = v19;
  *(v2 + 128) = v21;
  *(v2 + 24) = a1;
  v85 = a1;
  v84 = sub_100334FA4();
  v22 = *(**v84 + 104);

  v22(v91, 0x4244656C62616E45, 0xE800000000000000, &type metadata for Bool);

  v88 = v4;
  if (LOBYTE(v91[0]) != 2 && (v91[0] & 1) != 0)
  {
    type metadata accessor for ALDatabase();
    v23 = sub_100354C88();
    swift_beginAccess();
    *(v2 + 32) = v23;
  }

  sub_100024B00();
  v24 = *(v2 + 128);
  v91[0] = *(v2 + 120);
  v91[1] = v24;

  v25._countAndFlagsBits = 7627310;
  v25._object = 0xE300000000000000;
  String.append(_:)(v25);
  static DispatchQoS.userInteractive.getter();
  (*(v13 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v79);
  v91[0] = &_swiftEmptyArrayStorage;
  sub_100015758(&qword_1004180F8, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100024A2C(&qword_100418100, &qword_10039A500);
  sub_100006DDC(&qword_100418108, &qword_100418100, &qword_10039A500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v2 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = v82;
  kappalog.getter(v82);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v91[0] = v30;
    *v29 = 136315394;
    type metadata accessor for PlatformInfo();
    static PlatformInfo.instance.getter();
    v31 = PlatformInfo.product.getter();
    v33 = v32;

    v34 = sub_10000234C(v31, v33, v91);

    *(v29 + 4) = v34;
    *(v29 + 12) = 1024;
    static PlatformInfo.instance.getter();
    v35 = dispatch thunk of PlatformInfo.supportsSMA()();

    *(v29 + 14) = v35 & 1;
    _os_log_impl(&_mh_execute_header, v27, v28, "product type: %s supportsSMA: %{BOOL}d", v29, 0x12u);
    sub_100002580(v30);
  }

  v36 = *(v88 + 8);
  v37 = v89;
  v36(v26, v89);
  v38 = v87;
  v39 = v83;
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v40 = dispatch thunk of PlatformInfo.hasExclave.getter();

  if (v40)
  {
    type metadata accessor for AONSenseExclave.Service();
    sub_100015758(&qword_100430AF8, 255, type metadata accessor for AONSenseExclave.Service, &unk_10039B838);
    _s9Tightbeam8ConclaveV7service3for2asxSS_xmtSo10tb_error_taYKAA0A19ServiceInitProtocolRzlFZ();
    v74 = v91[0];
    v75 = v77;
    swift_beginAccess();
    *v75 = v74;
  }

  else
  {
    exlog.getter(v39);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "not supported", v43, 2u);
    }

    v36(v39, v37);
  }

  sub_100024A2C(&qword_100430AD0, &qword_10039A508);
  v44 = *(v2 + 24);
  v45 = static ALKappaConfigNotifications.serializedIndications.getter();
  *(v2 + 96) = sub_10033C0B4(v44, v45, v46);
  v47 = *(**v84 + 104);

  v47(v91, 0x414D656C62616E45, 0xE800000000000000, &type metadata for Bool);

  if (LOBYTE(v91[0]) == 2 || (v91[0] & 1) != 0)
  {
    static PlatformInfo.instance.getter();
    v48 = dispatch thunk of PlatformInfo.supportsSMA()();

    v49 = 0;
    if (v48)
    {
      type metadata accessor for ALMobileAssets();
      swift_beginAccess();
      v50 = *(v2 + 112);
      v51 = *(v2 + 120);
      v52 = *(v2 + 128);

      v49 = sub_10035CA98(v53, v50, v51, v52);
    }
  }

  else
  {
    v49 = 0;
  }

  *(v2 + 104) = v49;
  sub_100024A2C(&qword_100430AD8, &qword_10039A510);
  v54 = v85;
  *(v2 + 48) = sub_10033C0B4(v54, sub_10032C50C, 0);
  sub_100024A2C(&qword_100430AE0, &qword_10039A518);
  *(v2 + 56) = sub_10033C0B4(*(v2 + 40), sub_10032C524, 0);
  type metadata accessor for ALWiFiResultHub();
  v55 = swift_allocObject();
  *(v55 + 16) = v2;
  *(v55 + 24) = v54;
  v56 = v54;

  v57 = sub_100329450(v56, sub_10000EA34, v55);
  swift_beginAccess();
  *(v2 + 64) = v57;

  type metadata accessor for ALBtResultHub();
  v58 = *(v2 + 40);

  v59 = sub_10034A728(v58, sub_10000770C, v2);
  swift_beginAccess();
  *(v2 + 72) = v59;

  v60 = type metadata accessor for AONSenseFF();
  v92 = v60;
  v93 = sub_100015758(&qword_100430AE8, 255, type metadata accessor for AONSenseFF, &protocol conformance descriptor for AONSenseFF);
  v61 = sub_10000DA60(v91);
  (*(v60[-1].Description + 13))(v61, 0, v60);
  LOBYTE(v60) = isFeatureEnabled(_:)();
  sub_100002580(v91);
  if (v60)
  {
    type metadata accessor for ALNIResultHub();
    v62 = sub_10032E12C(*(v2 + 40), sub_10032C53C, 0);
    swift_beginAccess();
    *(v2 + 88) = v62;

    type metadata accessor for ALBTScanRequestResultHub();
    v63 = *(v2 + 40);

    v64 = sub_10034AB98(v63, sub_10032D7B8, v2);
    swift_beginAccess();
    *(v2 + 80) = v64;
  }

  v65 = *(v2 + 104);
  if (v65)
  {

    kappalog.getter(v38);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Calling initMobileAsset()", v68, 2u);
    }

    v69 = (v36)(v38, v37);
    (*(*v65 + 184))(v69);
  }

  type metadata accessor for ALServiceDelegate();
  v92 = type metadata accessor for DataVendorService();
  v93 = sub_100015758(&qword_100430AF0, v70, type metadata accessor for DataVendorService, &protocol conformance descriptor for DataVendorService);
  v91[0] = v2;

  v71 = ALServiceDelegate.__allocating_init(queue:dataService:)(v56, v91);
  swift_beginAccess();
  v72 = *(v2 + 16);
  *(v2 + 16) = v71;

  return v2;
}

uint64_t sub_10032C53C(uint64_t a1)
{
  v2 = *(**sub_10031EA68() + 256);

  v2(a1);
}

uint64_t sub_10032C5B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchTime();
  v6 = *(v28 - 8);
  v7 = __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "ALDataVendorService is alive", v18, 2u);
  }

  (*(v13 + 8))(v15, v12);
  v26 = *(v1 + 24);
  static DispatchTime.now()();
  v19 = v11;
  + infix(_:_:)();
  v27 = *(v6 + 8);
  v20 = v28;
  v27(v9, v28);
  aBlock[4] = sub_10032D8F4;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100407E10;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  sub_100015758(&qword_100430F40, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  v23 = v32;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);
  (*(v33 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
  v27(v19, v20);
}

uint64_t sub_10032CA74(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for DataClient(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v58 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - v17;
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v21 = dispatch thunk of ALProtoRequest.isWiFiResult()();
  v59 = a1;
  v60 = a2;
  if (v21)
  {
    corelog.getter(v20);
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v56 = v13;
      v28 = v27;
      v29 = swift_slowAlloc();
      v57 = v12;
      v30 = v8;
      v31 = v3;
      v32 = v29;
      *v28 = 138543362;
      *(v28 + 4) = v24;
      *v29 = v24;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "Add wifi client %{public}@", v28, 0xCu);
      sub_1000059A8(v32, &unk_10042F020, &qword_100399AE0);
      v3 = v31;
      v8 = v30;
      v12 = v57;

      v13 = v56;
    }

    (*(v13 + 8))(v20, v12);
    v34 = type metadata accessor for ALResultOptions();
    (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
    sub_10033BD80(v24, v8, v11);
    (*(**(v3 + 48) + 176))(v11);
    sub_10001543C(v11);
    a2 = v60;
    result = dispatch thunk of ALProtoRequest.isBtResult()();
    if ((result & 1) == 0)
    {
LABEL_3:
      v23 = *(v3 + 104);
      if (!v23)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else
  {
    result = dispatch thunk of ALProtoRequest.isBtResult()();
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  corelog.getter(v18);
  v35 = a2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v57 = v3;
    v39 = v38;
    v40 = v13;
    v41 = swift_slowAlloc();
    *v39 = 138543362;
    *(v39 + 4) = v35;
    *v41 = v35;
    v42 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "Add BT client %{public}@", v39, 0xCu);
    sub_1000059A8(v41, &unk_10042F020, &qword_100399AE0);
    v13 = v40;

    v3 = v57;
  }

  (*(v13 + 8))(v18, v12);
  v43 = type metadata accessor for ALResultOptions();
  (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
  sub_10033BD80(v35, v8, v11);
  (*(**(v3 + 56) + 176))(v11);
  result = sub_10001543C(v11);
  a2 = v60;
  v23 = *(v3 + 104);
  if (v23)
  {
LABEL_11:

    if (dispatch thunk of ALProtoRequest.isKappaConfigResult()())
    {
      kappalog.getter(v58);
      v44 = a2;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = v12;
        v48 = v3;
        v49 = v47;
        v50 = v13;
        v51 = swift_slowAlloc();
        *v49 = 138543362;
        *(v49 + 4) = v44;
        *v51 = v44;
        v52 = v44;
        _os_log_impl(&_mh_execute_header, v45, v46, "Add Kappa client %{public}@", v49, 0xCu);
        sub_1000059A8(v51, &unk_10042F020, &qword_100399AE0);
        v13 = v50;

        v3 = v48;
        v12 = v57;
      }

      (*(v13 + 8))(v58, v12);
      v53 = type metadata accessor for ALResultOptions();
      (*(*(v53 - 8) + 56))(v8, 1, 1, v53);
      sub_10033BD80(v44, v8, v11);
      v54 = *(**(v3 + 96) + 208);

      v54(v11, sub_10032D920, v23);

      return sub_10001543C(v11);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10032D124(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  corelog.getter(v20 - v9);
  v11 = a3;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v7;
    v16 = v6;
    v17 = v15;
    *v14 = 138543362;
    *(v14 + 4) = v11;
    *v15 = v11;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "subscribeDataService %{public}@", v14, 0xCu);
    sub_1000059A8(v17, &unk_10042F020, &qword_100399AE0);
    v6 = v16;
    v7 = v20[0];
  }

  (*(v7 + 8))(v10, v6);
  type metadata accessor for ALProtoRequest(0);
  sub_1000150EC(a1, a2);
  ALProtoRequest.__allocating_init(data:)(a1, a2);
  (*(*v20[1] + 384))();
}

uint64_t sub_10032D488()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "cleanup client list upon client disconnected", v8, 2u);
  }

  v9 = (*(v3 + 8))(v5, v2);
  v10 = (*(*v1[6] + 184))(v9);
  v11 = (*(*v1[7] + 184))(v10);
  return (*(*v1[12] + 184))(v11);
}

id *DataVendorService.deinit()
{

  return v0;
}

uint64_t DataVendorService.__deallocating_deinit()
{
  DataVendorService.deinit();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10032D7B8(uint64_t a1)
{
  result = (*(*v1 + 312))();
  if (result)
  {
    sub_100024A2C(&qword_100418C80, &qword_10039A620);
    v4 = type metadata accessor for ALBtNotification();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100374440;
    (*(v5 + 16))(v7 + v6, a1, v4);
    sub_10032F834(v7);
  }

  return result;
}

uint64_t sub_10032D9F4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10032DA4C(a1, a2, a3);
  return v6;
}

uint64_t sub_10032DA4C(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  corelog.getter(&v26 - v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "#WiFi, Leeching on AOP2", v14, 2u);
  }

  v27 = *(v6 + 8);
  v27(v11, v5);
  v15 = sub_100334FA4();
  v16 = *(**v15 + 104);

  v16(&v31, 0xD000000000000016, 0x80000001003B16F0, &type metadata for Double);

  if (v32)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = v31;
  }

  type metadata accessor for ALRPCInterface();
  v18 = a1;
  v19 = ALRPCInterface.__allocating_init(queue:interval:)(v18, v17);
  *(v29 + 16) = v19;

  sub_100004064();

  dispatch thunk of ALRPCInterface.regAnalytics(onLocCompAnalytics:)();

  swift_beginAccess();
  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  *(v20 + 24) = a3;

  dispatch thunk of ALRPCInterface.regWifi(onWiFi:)();

  v21 = *(**v15 + 104);

  v21(&v30, 0xD000000000000017, 0x80000001003B1710, &type metadata for Bool);

  if (v30 == 2 || (v30 & 1) != 0)
  {
    corelog.getter(v9);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "#WiFi, Enable AOP2 Wifi Reception", v24, 2u);
    }

    v27(v9, v5);

    dispatch thunk of ALRPCInterface.activate(enable:)();
  }

  return v29;
}

uint64_t sub_10032DE4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  return a2(a1);
}

void sub_10032E04C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

id sub_10032E0A0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

void sub_10032E0E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_10032E12C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10032E184(a1, a2, a3);
  return v6;
}

void *sub_10032E184(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v4[5] = 0;
  v4[6] = sub_10033206C(&_swiftEmptyArrayStorage);
  v14 = sub_10033AC88();
  v15 = *v14;
  v4[7] = *v14;
  v4[8] = &_swiftEmptySetSingleton;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v16 = *((swift_isaMask & *v15) + 0xD0);
  v17 = v15;
  v25 = a1;
  v26 = a3;

  v16(v18);

  swift_allocObject();
  swift_weakInit();
  sub_100323B4C();
  Publisher<>.sink(receiveValue:)();

  (*(v11 + 8))(v13, v10);
  v19 = v24;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  nilog.getter(v19);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "ALNIResultHub init", v22, 2u);
  }

  else
  {
  }

  (*(v27 + 8))(v19, v28);
  return v4;
}

uint64_t sub_10032E4C4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = *a1;
  nilog.getter(&v27 - v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v29 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v28 = v4;
    v15 = v14;
    v16 = v7;
    v17 = swift_slowAlloc();
    v30[0] = v17;
    *v15 = 136315138;
    if (v10)
    {
      v18 = 28271;
    }

    else
    {
      v18 = 6710895;
    }

    if (v10)
    {
      v19 = 0xE200000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10000234C(v18, v19, v30);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "published isScreenOn state changed to: %s", v15, 0xCu);
    sub_100002580(v17);
    v7 = v16;

    v4 = v28;
  }

  v21 = *(v4 + 8);
  v21(v9, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((v29 & 1) == 0)
    {
      (*(*Strong + 304))(Strong);
    }
  }

  else
  {
    nilog.getter(v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no self", v26, 2u);
    }

    return (v21)(v7, v3);
  }
}

uint64_t sub_10032E7B4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for ALNIPresenceNotifications();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 200))(v5);
  ALNIPresenceNotifications.init(presenceResults:)();
  v8 = ALNIPresenceNotifications.presenceResults.getter();
  sub_1003309CC(v8);

  ALNIPresenceNotifications.presenceResults.setter();
  v9 = *(ALNIPresenceNotifications.presenceResults.getter() + 16);

  if (!v9)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v11 = (*(*v1 + 152))(v10);
  v11(v7);
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_10032EA70(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100430D98, &qword_10039A658);
  __chkstk_darwin(v2 - 8);
  v67 = v62 - v3;
  v76 = type metadata accessor for ALNIDevicePresencePreset();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v63 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100024A2C(&qword_100430DA0, &qword_10039A660);
  __chkstk_darwin(v70);
  v74 = v62 - v5;
  v6 = sub_100024A2C(&unk_100431470, &qword_10039A668);
  v7 = __chkstk_darwin(v6 - 8);
  v65 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = v62 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v62 - v12;
  __chkstk_darwin(v11);
  v15 = v62 - v14;
  v16 = type metadata accessor for ALNIPresenceNotification();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Logger();
  v20 = *(v69 - 8);
  __chkstk_darwin(v69);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v22);
  v23 = *(v17 + 16);
  v77 = a1;
  v62[0] = v23;
  v62[1] = v17 + 16;
  v23(v19, a1, v16);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v66 = v16;
  v75 = v17;
  v71 = v13;
  v72 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_10000234C(0xD00000000000001ELL, 0x80000001003B1760, v78);
    *(v27 + 12) = 2080;
    v28 = ALNIPresenceNotification.description.getter();
    v29 = v16;
    v31 = v30;
    (*(v17 + 8))(v19, v29);
    v32 = sub_10000234C(v28, v31, v78);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s %s", v27, 0x16u);
    swift_arrayDestroy();
    v15 = v72;

    v13 = v71;
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  (*(v20 + 8))(v22, v69);
  ALNIPresenceNotification.region.getter();
  v33 = v73;
  v34 = v76;
  (*(v73 + 104))(v13, enum case for ALNIDevicePresencePreset.sensorMax(_:), v76);
  (*(v33 + 56))(v13, 0, 1, v34);
  v35 = *(v70 + 48);
  v36 = v74;
  sub_10000A0A4(v15, v74, &unk_100431470, &qword_10039A668);
  sub_10000A0A4(v13, v36 + v35, &unk_100431470, &qword_10039A668);
  v37 = *(v33 + 48);
  if (v37(v36, 1, v34) == 1)
  {
    sub_1000059A8(v13, &unk_100431470, &qword_10039A668);
    sub_1000059A8(v15, &unk_100431470, &qword_10039A668);
    v38 = v37(v36 + v35, 1, v34);
    v39 = v77;
    if (v38 == 1)
    {
      sub_1000059A8(v36, &unk_100431470, &qword_10039A668);
      v40 = v75;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v41 = v64;
  sub_10000A0A4(v36, v64, &unk_100431470, &qword_10039A668);
  if (v37(v36 + v35, 1, v34) == 1)
  {
    sub_1000059A8(v71, &unk_100431470, &qword_10039A668);
    sub_1000059A8(v72, &unk_100431470, &qword_10039A668);
    (*(v33 + 8))(v41, v34);
    v39 = v77;
LABEL_9:
    sub_1000059A8(v36, &qword_100430DA0, &qword_10039A660);
    v40 = v75;
    goto LABEL_10;
  }

  v54 = v63;
  (*(v33 + 32))(v63, v36 + v35, v34);
  sub_100332260();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v33 + 8);
  v56(v54, v34);
  sub_1000059A8(v71, &unk_100431470, &qword_10039A668);
  sub_1000059A8(v72, &unk_100431470, &qword_10039A668);
  v56(v41, v34);
  sub_1000059A8(v36, &unk_100431470, &qword_10039A668);
  v40 = v75;
  v39 = v77;
  if (v55)
  {
LABEL_14:
    result = ALNIPresenceNotification.deviceId.getter();
    if (v57)
    {
      v58 = result;
      v59 = v57;
      v60 = v67;
      (*(v40 + 56))(v67, 1, 1, v66);
      v61 = (*(*v68 + 216))(v78);
      sub_10032F388(v60, v58, v59);
      return v61(v78, 0);
    }

    return result;
  }

LABEL_10:
  v42 = v65;
  ALNIPresenceNotification.region.getter();
  v43 = v37(v42, 1, v34);
  sub_1000059A8(v42, &unk_100431470, &qword_10039A668);
  if (v43 == 1)
  {
    goto LABEL_14;
  }

  result = ALNIPresenceNotification.deviceId.getter();
  if (v45)
  {
    v46 = result;
    v47 = v45;
    v48 = v67;
    v49 = v39;
    v50 = v66;
    (v62[0])(v67, v49, v66);
    (*(v40 + 56))(v48, 0, 1, v50);
    v51 = v68;
    v52 = (*(*v68 + 216))(v78);
    sub_10032F388(v48, v46, v47);
    v53 = v52(v78, 0);
    return (*(*v51 + 280))(v53);
  }

  return result;
}

uint64_t sub_10032F388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100024A2C(&qword_100430D98, &qword_10039A658);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ALNIPresenceNotification();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000059A8(a1, &qword_100430D98, &qword_10039A658);
    sub_100331204(a2, a3, v9);

    return sub_1000059A8(v9, &qword_100430D98, &qword_10039A658);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100331560(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10032F560()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "ni invalidated", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return (*(*v1 + 184))(0);
}

id *sub_10032F6F4()
{

  return v0;
}

uint64_t sub_10032F73C()
{

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_10032F834(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100430278, &qword_10039A230);
  v5 = __chkstk_darwin(v4 - 8);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v87 - v7;
  v118 = type metadata accessor for ALNIPresenceNotification();
  v114 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v87 - v11;
  v13 = type metadata accessor for ALBtAdvertisement();
  v88 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v104 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v87 - v16;
  v106 = type metadata accessor for Logger();
  v18 = *(v106 - 8);
  v19 = __chkstk_darwin(v106);
  v108 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = *(*v1 + 176);
  v119 = *v1 + 176;
  v120 = v24;
  v25 = (v24)(v21);
  if (v25)
  {
  }

  else
  {
    v26 = (*(*v1 + 224))();
    v27 = (*((swift_isaMask & *v26) + 0xB8))();

    if ((v27 & 1) == 0)
    {
      return;
    }

    nilog.getter(v23);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v124 = v18;
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "starting NI", v30, 2u);
      v18 = v124;
    }

    (*(v18 + 1))(v23, v106);
    type metadata accessor for ALNearbyInteraction();
    v31 = (*(*v2 + 128))();
    v126[3] = type metadata accessor for ALNIResultHub();
    v126[4] = &off_100407F50;
    v126[0] = v2;

    v32 = sub_100338924(v31, v126);
    (*(*v2 + 184))(v32);
  }

  v95 = *(a1 + 16);
  if (v95)
  {
    v33 = 0;
    v34 = *(type metadata accessor for ALBtNotification() - 8);
    v94 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v121 = v88 + 16;
    v116 = v114 + 16;
    v112 = (v88 + 48);
    v111 = (v114 + 8);
    v123 = v88 + 8;
    v102 = (v114 + 48);
    v89 = (v88 + 56);
    v101 = (v18 + 8);
    v92 = "didUpdateRegion(notification:)";
    v93 = *(v34 + 72);
    *&v35 = 136315650;
    v91 = v35;
    v103 = v8;
    v113 = v12;
    v117 = v2;
    v100 = v13;
    do
    {
      v36 = ALBtNotification.advertisements.getter();
      v37 = *(v36 + 16);
      if (v37)
      {
        v97 = v33;
        v38 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v96 = v36;
        v39 = v36 + v38;
        v122 = *(v88 + 72);
        v124 = *(v88 + 16);
        (v124)(v17, v36 + v38, v13);
        while (1)
        {
          v40 = ALBtAdvertisement.identifier.getter();
          v42 = v13;
          if (v41)
          {
            v43 = v40;
            v44 = v41;
            v45 = v42;
            v46 = v120();
            if (v46)
            {
              v47 = v46;
              (*((swift_isaMask & *v46) + 0xB0))(v17);
            }

            v48 = (*(*v2 + 200))();
            if (*(v48 + 16) && (v49 = sub_10031DC00(v43, v44), (v50 & 1) != 0))
            {
              v51 = *(v48 + 56) + *(v114 + 72) * v49;
              v52 = v118;
              v115 = *(v114 + 16);
              v115(v12, v51, v118);

              ALNIPresenceNotification._deviceAdvertisement.getter();
              if ((*v112)(v8, 1, v45) == 1)
              {
                sub_1000059A8(v8, &qword_100430278, &qword_10039A230);
                v53 = (*(*v117 + 216))(v126);
                v54 = sub_100330554(v125, v43, v44);
                if ((*v102)(v55, 1, v52))
                {
                  (v54)(v125, 0);

                  v53(v126, 0);
                  v56 = v113;
                  v57 = v45;
                  v58 = v104;
                  v59 = v108;
                  v60 = v124;
                }

                else
                {
                  v110 = v54;
                  v61 = v90;
                  v60 = v124;
                  (v124)(v90, v17, v45);
                  (*v89)(v61, 0, 1, v45);
                  ALNIPresenceNotification._deviceAdvertisement.setter();
                  v110(v125, 0);
                  v57 = v45;

                  v53(v126, 0);
                  v56 = v113;
                  v58 = v104;
                  v59 = v108;
                }

                nilog.getter(v59);
                v62 = v105;
                v115(v105, v56, v118);
                (v60)(v58, v17, v57);
                v63 = Logger.logObject.getter();
                v107 = static os_log_type_t.default.getter();
                v64 = os_log_type_enabled(v63, v107);
                v65 = v111;
                v110 = (v111 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                v66 = v123;
                v115 = (v123 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                v2 = v117;
                if (v64)
                {
                  v67 = v111;
                  v68 = v62;
                  v69 = swift_slowAlloc();
                  v99 = swift_slowAlloc();
                  v126[0] = v99;
                  *v69 = v91;
                  *(v69 + 4) = sub_10000234C(0xD00000000000001CLL, v92 | 0x8000000000000000, v126);
                  *(v69 + 12) = 2080;
                  v70 = ALNIPresenceNotification.description.getter();
                  v98 = v63;
                  v72 = v71;
                  v109 = *v67;
                  v109(v68, v118);
                  v73 = sub_10000234C(v70, v72, v126);

                  *(v69 + 14) = v73;
                  *(v69 + 22) = 2080;
                  v74 = ALBtAdvertisement.description.getter();
                  v76 = v75;
                  v77 = v58;
                  v78 = *v123;
                  v13 = v100;
                  (*v123)(v77, v100);
                  v79 = sub_10000234C(v74, v76, v126);
                  v12 = v113;

                  *(v69 + 24) = v79;
                  v80 = v98;
                  _os_log_impl(&_mh_execute_header, v98, v107, "%s matching device: %s with adv: %s", v69, 0x20u);
                  swift_arrayDestroy();

                  v81 = (*v101)(v108, v106);
                  v82 = v118;
                  v8 = v103;
                }

                else
                {

                  v83 = *v66;
                  v84 = v58;
                  v85 = v100;
                  (*v66)(v84, v100);
                  v86 = v62;
                  v82 = v118;
                  v109 = *v65;
                  v109(v86, v118);
                  v81 = (*v101)(v59, v106);
                  v8 = v103;
                  v13 = v85;
                  v78 = v83;
                  v12 = v113;
                }

                (*(*v2 + 280))(v81);
                v109(v12, v82);
                v78(v17, v13);
              }

              else
              {

                (*v111)(v12, v52);
                (*v123)(v17, v45);
                sub_1000059A8(v8, &qword_100430278, &qword_10039A230);
                v2 = v117;
                v13 = v45;
              }
            }

            else
            {

              v13 = v45;
              (*v123)(v17, v45);
            }
          }

          else
          {
            (*v123)(v17, v13);
          }

          v39 += v122;
          if (!--v37)
          {
            break;
          }

          (v124)(v17, v39, v13);
        }

        v33 = v97;
      }

      else
      {
      }

      ++v33;
    }

    while (v33 != v95);
  }
}

uint64_t (*sub_100330554(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100331A10(v6, a2, a3);
  return sub_1003305DC;
}

void sub_1003305DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Int sub_10033064C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for ALNIPresenceNotification();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_1003309CC(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100330B2C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100330E0C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100330B2C(unint64_t *a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v32 = a1;
  v4 = sub_100024A2C(&qword_100430278, &qword_10039A230);
  __chkstk_darwin(v4 - 8);
  v39 = &v30 - v5;
  v38 = type metadata accessor for ALNIPresenceNotification();
  result = __chkstk_darwin(v38);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v10 = 0;
  v40 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v36 = v7 + 16;
  v37 = v7;
  v35 = v7 + 8;
  v18 = v7;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v41 = (v16 - 1) & v16;
LABEL_11:
    v22 = v19 | (v10 << 6);
    v23 = v40[7];
    v24 = *(v18 + 72);
    v34 = v22;
    v25 = v38;
    (*(v18 + 16))(v9, v23 + v24 * v22, v38);

    v26 = v39;
    ALNIPresenceNotification._deviceAdvertisement.getter();
    v27 = type metadata accessor for ALBtAdvertisement();
    v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
    sub_1000059A8(v26, &qword_100430278, &qword_10039A230);
    (*(v18 + 8))(v9, v25);

    v16 = v41;
    if (v28 != 1)
    {
      *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_100330E84(v32, v31, v33, v40);
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_100330E84(v32, v31, v33, v40);
    }

    v21 = v12[v10];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100330E0C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100330B2C(result, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_100330E84(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = type metadata accessor for ALNIPresenceNotification();
  v54 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    Hasher.init(_seed:)();

    v52 = v27;
    String.hash(into:)();
    result = Hasher._finalize()();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100331204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10031DC00(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100331790();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ALNIPresenceNotification();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_100331374(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ALNIPresenceNotification();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_100331374(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ALNIPresenceNotification() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100331560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10031DC00(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100331790();
      goto LABEL_7;
    }

    sub_10033064C(v15, a4 & 1);
    v26 = sub_10031DC00(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for ALNIPresenceNotification();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1003316E0(v12, a2, a3, a1, v18);
}

uint64_t sub_1003316E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ALNIPresenceNotification();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_100331790()
{
  v1 = v0;
  v35 = type metadata accessor for ALNIPresenceNotification();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void (*sub_100331A10(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100332038(v7);
  v7[9] = sub_100331B1C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100331ABC;
}

void sub_100331ABC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100331B1C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for ALNIPresenceNotification();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_100024A2C(&qword_100430D98, &qword_10039A658) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_10031DC00(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        (*(v13 + 32))(v18, *(*v5 + 56) + *(v13 + 72) * v21, v11);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_100331DF8;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_100331790();
      goto LABEL_16;
    }

    sub_10033064C(v24, a4 & 1);
    v28 = sub_10031DC00(a2, a3);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100331DF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_10000A0A4(v5, v6, &qword_100430D98, &qword_10039A658);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      v11 = *(*(v2 + 4) + 32);
      v11(*(v2 + 6), *(v2 + 8), *(v2 + 3));
      v12 = *v10;
      v13 = *(v2 + 11);
      v14 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 5);
        v17 = *v2;
        v16 = *(v2 + 1);
        v11(v15, v14, *(v2 + 3));
        sub_1003316E0(v13, v17, v16, v15, v12);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(v2 + 9);
    sub_10000A0A4(v5, v18, &qword_100430D98, &qword_10039A658);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v19 != 1)
    {
      v22 = *(v2 + 2);
      v11 = *(*(v2 + 4) + 32);
      v11(*(v2 + 7), *(v2 + 9), *(v2 + 3));
      v12 = *v22;
      v13 = *(v2 + 11);
      v14 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 4) + 72) * v13, v14, *(v2 + 3));
      goto LABEL_10;
    }
  }

  sub_1000059A8(v9, &qword_100430D98, &qword_10039A658);
  if (v8)
  {
    v20 = *(v2 + 11);
    v21 = **(v2 + 2);
    sub_1003322DC(*(v21 + 48) + 16 * v20);
    sub_100331374(v20, v21);
  }

LABEL_10:
  v23 = *(v2 + 9);
  v24 = *(v2 + 10);
  v26 = *(v2 + 7);
  v25 = *(v2 + 8);
  v28 = *(v2 + 5);
  v27 = *(v2 + 6);
  sub_1000059A8(v24, &qword_100430D98, &qword_10039A658);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);

  free(v2);
}

uint64_t (*sub_100332038(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100332060;
}

unint64_t sub_10033206C(uint64_t a1)
{
  v2 = sub_100024A2C(&unk_100430F30, &qword_10039A6E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000A0A4(v9, v5, &unk_100430F30, &qword_10039A6E0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10031DC00(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ALNIPresenceNotification();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100332260()
{
  result = qword_100430DA8;
  if (!qword_100430DA8)
  {
    type metadata accessor for ALNIDevicePresencePreset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430DA8);
  }

  return result;
}

uint64_t sub_100332330(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v32 = type metadata accessor for Logger();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v13 = &v30 - v12;
  v33 = a1;
  v14 = *(a1 + 16);
  if (v14 >= 2)
  {
    v34 = *(v11 + 16);
    v35 = v11 + 16;
    v15 = v33 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = (v11 + 8);
    v17 = *&v36;
    v31 = (v3 + 8);
    v37 = *(v11 + 72);
    for (i = 1; ; ++i)
    {
      if (!v14)
      {
        __break(1u);
        return result;
      }

      v20 = v34;
      v34(v13, v15, v6);
      v20(v9, v15 + v37, v6);
      v21 = ALWiFiScanSingleAccessPoint._ageSec.getter();
      if ((v21 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }

      v22 = *&v21;
      v23 = ALWiFiScanSingleAccessPoint._ageSec.getter();
      if ((v23 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }

      if (*&v23 > v22)
      {
        break;
      }

      v19 = *v16;
      (*v16)(v9, v6, v22, *&v23);
      result = (v19)(v13, v6);
LABEL_4:
      --v14;
      v15 += v37;
      if (v14 == 1)
      {
        return result;
      }
    }

    if ((v36 & 0x100000000) != 0)
    {
LABEL_10:
      v24 = *v16;
      (*v16)(v9, v6);
      (v24)(v13, v6);
    }

    else
    {
      v27 = vabds_f32(v22, *&v23);
      v28 = *v16;
      (*v16)(v9, v6);
      result = (v28)(v13, v6);
      if (v27 <= v17)
      {
        goto LABEL_4;
      }
    }

    v25 = corelog.getter(v5);
    __chkstk_darwin(v25);
    v26 = BYTE4(v36);
    *(&v30 - 8) = v36;
    *(&v30 - 28) = v26 & 1;
    *(&v30 - 3) = i;
    v29 = 54;
    Logger._fault(_:function:file:line:)(sub_1003326B0, (&v30 - 6), "checkInOrder(_:toleranceSec:)", 29, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);
    result = (*v31)(v5, v32);
    goto LABEL_4;
  }

  return result;
}

void sub_1003326B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v5._object = 0x80000001003B1A20;
  v5._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v5);
  LODWORD(v14[0]) = v1;
  BYTE4(v14[0]) = v2;
  DefaultStringInterpolation.appendInterpolation<A>(_:)(v14, &type metadata for Float, &protocol witness table for Float);
  v6._countAndFlagsBits = 44;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v14[0] = v3;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 44;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v4 + 16);
  if (v9 >= v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for ALWiFiScanSingleAccessPoint();
  v11._countAndFlagsBits = ALWiFiScanSingleAccessPoint.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 44;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  if (v10 > v3)
  {
    v13._countAndFlagsBits = ALWiFiScanSingleAccessPoint.description.getter();
    String.append(_:)(v13);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100332874(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_100334B14(a1, a2, a3);

  return v6;
}

uint64_t sub_1003328DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100334B14(a1, a2, a3);

  return v4;
}

uint64_t sub_100332920()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = (*(*v0 + 184))([objc_allocWithZone(CWFInterface) init]);
  v17 = (*(*v0 + 176))(v16);
  if (v17)
  {
    v18 = v17;
    v32 = v3;
    v33 = v2;
    corelog.getter(v15);
    v19 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = [v19 serviceType];

      _os_log_impl(&_mh_execute_header, v20, v21, "#WiFi, Leeching CoreWiFi %{public}ld", v22, 0xCu);
    }

    else
    {

      v20 = v19;
    }

    v24 = (*(v10 + 8))(v15, v9);
    v25 = *(*v1 + 128);
    v26 = (v25)(v24);
    [v19 setTargetQueue:v26];

    v41 = sub_100006D7C;
    v42 = v1;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100004830;
    v40 = &unk_100407FD8;
    v27 = _Block_copy(&aBlock);

    [v19 setEventHandler:v27];
    _Block_release(v27);
    v28 = v25();
    v41 = sub_100334CAC;
    v42 = v1;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100003EE4;
    v40 = &unk_100408000;
    v29 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v36 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520, &protocol conformance descriptor for [A]);
    v30 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v32 + 8))(v5, v30);
    (*(v34 + 8))(v8, v35);
  }

  else
  {
    corelog.getter(v13);
    Logger._fault(_:function:file:line:)(sub_100332EC8, 0, "regCoreWiFi()", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);
    return (*(v10 + 8))(v13, v9);
  }
}

void *sub_100332EE4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - v8;
  result = (*(*v0 + 176))(v7);
  if (result)
  {
    v11 = result;
    [result activate];
    v12 = 0;
    v32 = (v3 + 8);
    *&v13 = 134349056;
    v31 = v13;
    v30 = v9;
    do
    {
      v14 = *(&off_100407FA0 + v12 + 32);
      v33 = 0;
      if ([v11 startMonitoringEventType:v14 error:&v33])
      {
        v15 = v33;
        corelog.getter(v9);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = v31;
          *(v18 + 4) = v14;
          _os_log_impl(&_mh_execute_header, v16, v17, "#WiFi,startMonitoringEventType,%{public}ld", v18, 0xCu);
        }

        (*v32)(v9, v2);
      }

      else
      {
        v19 = v33;
        v20 = _convertNSErrorToError(_:)();

        swift_willThrow();
        corelog.getter(v6);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = v31;
          *(v23 + 4) = v14;
          _os_log_impl(&_mh_execute_header, v21, v22, "#WiFi,activate,catch,%{public}ld", v23, 0xCu);
          v9 = v30;
        }

        (*v32)(v6, v2);
        (*(*v1 + 296))(v20);
      }

      v12 += 8;
    }

    while (v12 != 24);
    v24 = [v11 BSSID];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    (*(*v1 + 320))(v26, v28);
  }

  return result;
}

uint64_t sub_1003332D8(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v43 = &v40 - v7;
  v8 = __chkstk_darwin(v6);
  v42 = &v40 - v9;
  v10 = __chkstk_darwin(v8);
  v41 = &v40 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  corelog.getter(&v40 - v15);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v5;
    v21 = v2;
    v22 = v1;
    v23 = v20;
    *v19 = 134349314;
    swift_getErrorValue();
    *(v19 + 4) = dispatch thunk of Error._code.getter();

    *(v19 + 12) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "#WiFi,exceptionHandling,code,%{public}ld,%{public}@", v19, 0x16u);
    sub_10000ACB4(v23);
    v1 = v22;
    v2 = v21;
    v5 = v40;
  }

  else
  {
  }

  v25 = *(v2 + 8);
  v25(v16, v1);
  swift_getErrorValue();
  v26 = dispatch thunk of Error._code.getter();
  if (v26 <= 4096)
  {
    if (v26 == 60)
    {
      v27 = v43;
      corelog.getter(v43);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "#WiFi,exceptionHandling,timeout";
        goto LABEL_19;
      }

LABEL_20:

      v14 = v27;
      return (v25)(v14, v1);
    }

    if (v26 == 82)
    {
      v27 = v42;
      corelog.getter(v42);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "#WiFi,exceptionHandling,poweredOff";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v26 == 4097)
  {
    v27 = v41;
    corelog.getter(v41);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "#WiFi,exceptionHandling,interrupted";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v26 != 4099)
  {
LABEL_14:
    v37 = corelog.getter(v5);
    __chkstk_darwin(v37);
    v39 = 136;
    Logger._fault(_:function:file:line:)(sub_100334CD8, (&v40 - 4), "exceptionHandling(_:)", 21, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);
    v14 = v5;
    return (v25)(v14, v1);
  }

  corelog.getter(v14);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v1;
    v35 = swift_slowAlloc();
    *v35 = 67240192;
    type metadata accessor for PlatformInfo();
    static PlatformInfo.instance.getter();
    v36 = dispatch thunk of PlatformInfo.virtual.getter();

    *(v35 + 4) = v36 & 1;
    _os_log_impl(&_mh_execute_header, v32, v33, "#WiFi,exceptionHandling,unloaded,virtual,%{BOOL,public}d", v35, 8u);
    v1 = v34;
  }

  return (v25)(v14, v1);
}

uint64_t sub_100333868(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000DB14(a1, a2);
  (*(*v2 + 208))(v9, v10 & 1);
  corelog.getter(v8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      a1 = 1953722220;
      v15 = 0xE400000000000000;
    }

    v16 = sub_10000234C(a1, v15, &v19);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "#WiFi,updateAssociatedMac,%s", v13, 0xCu);
    sub_100002580(v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100333A74()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v74 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v74 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v74 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v74 - v16;
  v18 = (*(*v0 + 176))(v15);
  if (!v18 || (v19 = v18, v20 = [v18 backgroundScanCache], v19, !v20))
  {
    corelog.getter(v5);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "processBackgroundScanCache,backgroundScanCache,nil", v59, 2u);
    }

    return (v2[1])(v5, v1);
  }

  v85 = v14;
  v87 = sub_10000ABCC(0, &qword_100430FC0, CWFScanResult_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v89 = v21 >> 62;
  if (v21 >> 62)
  {
LABEL_87:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_88:

    corelog.getter(v17);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "processBackgroundScanCache,empty", v73, 2u);
    }

    return (v2[1])(v17, v1);
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_88;
  }

LABEL_5:
  v81 = v11;
  v82 = v8;
  v84 = v1;
  v24 = 0;
  v25 = 0;
  v8 = (v21 & 0xC000000000000001);
  v1 = v21 & 0xFFFFFFFFFFFFFF8;
  v90 = v21 + 32;
  v83 = (v2 + 1);
  if (v21 < 0)
  {
    v26 = v21;
  }

  else
  {
    v26 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v86 = v26;
  v79 = v1 + 32;
  v80 = v0;
  *&v22 = 134349312;
  v76 = v22;
  *&v22 = 138477827;
  v77 = v22;
  v91 = v23;
  v92 = v21 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v88 = v24;
    v11 = ((2 * v25) | 1);
    v24 = v25;
    while (1)
    {
      if (v8)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v1 + 16))
        {
          goto LABEL_81;
        }

        v27 = *(v21 + 8 * v24 + 32);
      }

      v2 = v27;
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v24)
      {
        v28 = [v27 timestamp];
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_82;
        }

        v17 = v24 - 1;
        if (__OFSUB__(v24, 1))
        {
          goto LABEL_83;
        }

        v0 = v28;
        if (v8)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          if (v17 >= *(v1 + 16))
          {
            goto LABEL_86;
          }

          v29 = *(v90 + 8 * v17);
        }

        v30 = v29;
        v1 = [v29 timestamp];

        if (v1 < 0)
        {
          goto LABEL_84;
        }

        v31 = v0 - v1;
        if (v0 - v1 < 0)
        {
          v31 = v1 - v0;
        }

        v23 = v91;
        v1 = v92;
        if (v31 > 0x773593FF)
        {
          break;
        }
      }

      ++v24;
      v11 += 2;
      if (v25 == v23)
      {
        v24 = v88;
LABEL_61:
        if (v89)
        {
          v61 = _CocoaArrayWrapper.endIndex.getter();
          if (v24 < v61)
          {
            v60 = v61;
            result = _CocoaArrayWrapper.endIndex.getter();
            if (result < v24)
            {
              goto LABEL_94;
            }

            result = _CocoaArrayWrapper.endIndex.getter();
LABEL_68:
            if (result < v60)
            {
              goto LABEL_95;
            }

            if (v8)
            {

              if (v24 != v60)
              {
                v62 = v24;
                do
                {
                  v63 = v62 + 1;
                  _ArrayBuffer._typeCheckSlowPath(_:)(v62);
                  v62 = v63;
                }

                while (v60 != v63);
              }
            }

            else
            {
            }

            v65 = v79;
            v64 = v80;
            if (v89)
            {
              v1 = _CocoaArrayWrapper.subscript.getter();
              v65 = v67;
              v24 = v68;
              v66 = v69;
            }

            else
            {
              v66 = (2 * v60) | 1;
            }

            v94 = sub_100024A2C(&qword_100430FC8, &qword_10039A728);
            v95 = sub_100006E30(&unk_100430FD0, &qword_100430FC8, &qword_10039A728, &protocol conformance descriptor for ArraySlice<A>);
            v70 = swift_allocObject();
            v93[0] = v70;
            v70[2] = v1;
            v70[3] = v65;
            v70[4] = v24;
            v70[5] = v66;
            (*(*v64 + 304))(v93, 1);
            return sub_100002580(v93);
          }
        }

        else
        {
          v60 = *(v1 + 16);
          if (v24 < v60)
          {
            result = *(v1 + 16);
            if (result < v24)
            {
              goto LABEL_94;
            }

            goto LABEL_68;
          }
        }
      }
    }

    corelog.getter(v85);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v35 = swift_slowAlloc();
      *v35 = v76;
      *(v35 + 4) = v24;
      *(v35 + 12) = 2050;
      *(v35 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v32, v33, "processBackgroundScanCache,newGroup,idx,%{public}ld,start,%{public}ld", v35, 0x16u);
      v1 = v92;
    }

    v78 = *v83;
    v78(v85, v84);
    corelog.getter(v81);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    LODWORD(v75) = v37;
    if (os_log_type_enabled(v36, v37))
    {
      v74 = v36;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = v77;
      if (v8)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v90 + 8 * v17);
      }

      *(v38 + 4) = v40;
      *v39 = v40;
      v41 = v74;
      _os_log_impl(&_mh_execute_header, v74, v75, "processBackgroundScanCache,newGroup,pre,%{private}@", v38, 0xCu);
      sub_10000ACB4(v39);

      v36 = v41;
    }

    v78(v81, v84);
    corelog.getter(v82);
    v42 = v2;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = v77;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "processBackgroundScanCache,newGroup,new,%{private}@", v45, 0xCu);
      sub_10000ACB4(v46);
      v1 = v92;
    }

    result = (v78)(v82, v84);
    v49 = v88;
    if (v24 < v88)
    {
      __break(1u);
      break;
    }

    if (v89)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v49)
      {
        break;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_44;
    }

    result = *(v1 + 16);
    if (result < v88)
    {
      break;
    }

LABEL_44:
    if (result < v24)
    {
      goto LABEL_93;
    }

    if (!v8 || v49 == v24)
    {
    }

    else
    {
      if (v49 >= v24)
      {
        goto LABEL_96;
      }

      v50 = v49;
      do
      {
        v51 = v50 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v50);
        v50 = v51;
      }

      while (v24 != v51);
    }

    v75 = v42;
    if (v89)
    {

      v78 = _CocoaArrayWrapper.subscript.getter();
      v17 = v53;
      v52 = v54;
      v11 = v55;
    }

    else
    {
      v78 = v1;
      v17 = v79;
      v52 = v88;
    }

    v2 = &qword_10039A728;
    v94 = sub_100024A2C(&qword_100430FC8, &qword_10039A728);
    v95 = sub_100006E30(&unk_100430FD0, &qword_100430FC8, &qword_10039A728, &protocol conformance descriptor for ArraySlice<A>);
    v56 = swift_allocObject();
    v0 = v80;
    v93[0] = v56;
    v56[2] = v78;
    v56[3] = v17;
    v56[4] = v52;
    v56[5] = v11;
    (*(*v0 + 304))(v93, 1);

    sub_100002580(v93);
    v23 = v91;
    if (v25 == v91)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_100334508()
{

  return v0;
}

uint64_t sub_100334540()
{

  return _swift_deallocClassInstance(v0, 88, 7);
}

unsigned __int8 *sub_100334590(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1003279E8(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100334B14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  v5 = (v3 + 80);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v6 = a1;

  v7 = *(**sub_100334FA4() + 104);

  v7(&v13, 0xD000000000000020, 0x80000001003B19F0, &type metadata for Double);

  if (v14)
  {
    v8 = 3.0;
  }

  else
  {
    v8 = v13;
  }

  type metadata accessor for ALDebounce();
  v9 = v6;

  v10 = sub_10032AD5C(v9, sub_100008BBC, v3, v8);
  swift_beginAccess();
  *v5 = v10;

  (*(*v4 + 280))(v11);
  return v4;
}

uint64_t sub_100334CD8()
{
  _StringGuts.grow(_:)(34);
  v0._object = 0x80000001003B19A0;
  v0._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100334D78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(48);

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._object = 0x80000001003B1970;
  v6._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v6);
  v7 = [v2 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return 0x47422C6946695723;
}

uint64_t sub_100334E88()
{
  v0._countAndFlagsBits = 0x6E6F2C6946695723;
  v0._object = 0xED00002C61746144;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100334F78(uint64_t a1)
{
  type metadata accessor for PersistentConfig();
  result = swift_initStaticObject();
  qword_10048BF38 = result;
  return result;
}

uint64_t *sub_100334FA4()
{
  if (qword_10048BF30 != -1)
  {
    swift_once();
  }

  return &qword_10048BF38;
}

uint64_t static PersistentConfig.instance.getter(uint64_t a1)
{
  type metadata accessor for PersistentConfig();

  return swift_initStaticObject();
}

unint64_t sub_100335024(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dictionaryForKey:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v8 = dispatch thunk of PlatformInfo.systemVersionDescriptionNoSpace()();
  v10 = v9;

  if (!*(v7 + 16))
  {

    goto LABEL_11;
  }

  v11 = sub_10031DC00(v8, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_11:
    v18 = sub_100335270(v7);

    return v18;
  }

  sub_100002524(*(v7 + 56) + 32 * v11, v20);

  sub_100323E60(v20, v21);
  sub_100002524(v21, v20);
  sub_100024A2C(&qword_1004311D8, &unk_10039A7B0);
  if (!swift_dynamicCast())
  {
LABEL_13:
    sub_100002580(v21);
    return 0;
  }

  if (!*(v19 + 16) || (v14 = sub_10031DC00(a1, a2), (v15 & 1) == 0))
  {

    goto LABEL_13;
  }

  v16 = *(*(v19 + 56) + 8 * v14);
  swift_unknownObjectRetain();
  sub_100002580(v21);

  *&v20[0] = v16;
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100335270(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024A2C(&qword_1004312B0, &qword_10039A808);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_100002524(*(a1 + 56) + 32 * v12, v27);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v16 = v26;
        sub_100323E60(v25, &v22);

        swift_dynamicCast();
        v17 = v23;
        result = sub_10031DC00(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          *(v2[7] + 8 * v9) = v17;
          result = swift_unknownObjectRelease();
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          *(v2[7] + 8 * result) = v17;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1003354B0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dictionaryForKey:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v7 + 16) && (v8 = sub_10031DC00(a1, a2), (v9 & 1) != 0))
  {
    sub_100002524(*(v7 + 56) + 32 * v8, v12);

    v10 = 1;
  }

  else
  {

    v10 = 0;
    memset(v12, 0, sizeof(v12));
  }

  sub_100335D50(v12);
  return v10;
}

BOOL sub_1003355F4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100323E60(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100335D50(v5);
  return v2 != 0;
}

uint64_t sub_100335718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v12 = *a3;
  v11 = a3[1];
  (*(v13 + 16))(&v16 - v9, a1);
  v14 = *(**a2 + 112);

  return v14(v10, v12, v11, v7);
}

uint64_t sub_100335838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(*v4 + 96))())
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 valueForKey:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100323E60(&v22, v23);
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    v17 = &qword_10042EF90;
    v18 = &qword_100399100;
LABEL_12:
    sub_100024A2C(v17, v18);
    v19 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v19 ^ 1u, 1, a3);
  }

  v12 = (*(*v4 + 80))(a1, a2);
  if (v12)
  {
    v13 = v12;
    if (*(v12 + 16) && (v14 = sub_10031DC00(a1, a2), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_unknownObjectRetain();
    }

    else
    {

      v16 = 0;
    }

    *&v23[0] = v16;
    v17 = &unk_1004311E0;
    v18 = &unk_10039A7C0;
    goto LABEL_12;
  }

  v21 = *(*(a3 - 8) + 56);

  return v21(a4, 1, 1, a3);
}

uint64_t sub_100335A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100335DB8(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*sub_100335AEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = a2;
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  sub_100335838(a2, a3, a4, v13);
  return sub_100335C1C;
}

void sub_100335C1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);

    sub_100335DB8(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    sub_100335DB8(v4, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_100335D50(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_10042EF90, &qword_100399100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100335DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  (*(v7 + 16))(v9, a1, v6);
  v11 = *(a4 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, a4) != 1)
  {
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v9, a4);
  }

  v13 = String._bridgeToObjectiveC()();

  [v10 setObject:v12 forKey:v13];

  swift_unknownObjectRelease();
}

void *sub_100335FF8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_10033603C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *sub_100336084(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[5] = 0;
  v6[6] = 0;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  sub_1003361A0();
  sub_100336864();

  return v6;
}

void *sub_1003360FC(void *a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = *(*v3 + 216);
  v5 = a1;

  v7 = v4(v6);
  (*(*v3 + 224))(v7);

  return v3;
}

uint64_t sub_1003361A0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  scanlog.getter(&v31 - v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Reg discovery BT on AP from CB", v17, 2u);
  }

  v18 = *(v9 + 8);
  v18(v14, v8);
  v19 = (*(*v1 + 168))([objc_allocWithZone(CBDiscovery) init]);
  v20 = (*(*v1 + 160))(v19);
  if (v20)
  {
    v21 = v20;
    v22 = *(*v1 + 112);
    v23 = v22();
    [v21 setDispatchQueue:v23];

    [v21 addDiscoveryType:29];
    [v21 setUseCase:269];
    [v21 setDiscoveryFlags:0x2000000];
    v41 = sub_100336E0C;
    v42 = v1;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100336784;
    v40 = &unk_100408138;
    v24 = _Block_copy(&aBlock);

    [v21 setDevicesBufferedHandler:v24];
    _Block_release(v24);
    v25 = v22();
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v1;
    v41 = sub_100336E78;
    v42 = v26;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100003EE4;
    v40 = &unk_100408188;
    v27 = _Block_copy(&aBlock);

    v28 = v21;
    static DispatchQoS.unspecified.getter();
    v36 = &_swiftEmptyArrayStorage;
    sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v34 + 8))(v4, v29);
    (*(v32 + 8))(v7, v33);
  }

  else
  {
    scanlog.getter(v12);
    Logger._fault(_:function:file:line:)(sub_100336768, 0, "regDiscovery()", 14, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreBluetooth.swift", 78, 2);
    return (v18)(v12, v8);
  }
}

uint64_t sub_100336784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100338464();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1003367F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100336864()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  scanlog.getter(&v31 - v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Reg leeching BT on AP from CB", v17, 2u);
  }

  v18 = *(v9 + 8);
  v18(v14, v8);
  v19 = (*(*v1 + 192))([objc_allocWithZone(CBDiscovery) init]);
  v20 = (*(*v1 + 184))(v19);
  if (v20)
  {
    v21 = v20;
    v22 = *(*v1 + 112);
    v23 = v22();
    [v21 setDispatchQueue:v23];

    [v21 setDiscoveryFlags:0x10120001C080];
    v41 = sub_100004898;
    v42 = v1;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100004830;
    v40 = &unk_1004081B0;
    v24 = _Block_copy(&aBlock);

    [v21 setDeviceFoundHandler:v24];
    _Block_release(v24);
    v25 = v22();
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v1;
    v41 = sub_100338114;
    v42 = v26;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100003EE4;
    v40 = &unk_100408200;
    v27 = _Block_copy(&aBlock);

    v28 = v21;
    static DispatchQoS.unspecified.getter();
    v36 = &_swiftEmptyArrayStorage;
    sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v34 + 8))(v4, v29);
    (*(v32 + 8))(v7, v33);
  }

  else
  {
    scanlog.getter(v12);
    Logger._fault(_:function:file:line:)(sub_100336E98, 0, "regLeeching()", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreBluetooth.swift", 78, 2);
    return (v18)(v12, v8);
  }
}

void sub_100336E0C(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  (*(*v1 + 240))(a1);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100336EBC(unint64_t a1)
{
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Logger();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ALBtAdvertisement();
  v71 = *(v76 - 8);
  v7 = __chkstk_darwin(v76);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v72 = &v52 - v13;
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xE100000000000000;
    v16 = 95;
  }

  aBlock = v16;
  v79 = v18;

  v19._countAndFlagsBits = 0x666675622E74622ELL;
  v19._object = 0xEB00000000647265;
  String.append(_:)(v19);

  String.utf8CString.getter();

  v52 = os_transaction_create();

  v75 = swift_allocObject();
  *(v75 + 16) = &_swiftEmptyArrayStorage;
  v69 = v9;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v72;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_20:
    v45 = v53;
    v46 = (*(*v53 + 112))();
    v47 = swift_allocObject();
    v47[2] = v52;
    v47[3] = v45;
    v47[4] = v75;
    v82 = sub_1003381E0;
    v83 = v47;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_100003EE4;
    v81 = &unk_1004082C8;
    v48 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v49 = v54;
    static DispatchQoS.unspecified.getter();
    v77 = &_swiftEmptyArrayStorage;
    sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v50 = v56;
    v51 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);
    swift_unknownObjectRelease();

    (*(v58 + 8))(v50, v51);
    (*(v55 + 8))(v49, v57);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = v72;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (result >= 1)
  {
    v23 = v4;
    v24 = 0;
    v74 = (v71 + 16);
    v65 = v71 + 32;
    v66 = a1 & 0xC000000000000001;
    v63 = (v23 + 8);
    v64 = (v71 + 8);
    *&v20 = 136315138;
    v60 = v20;
    v62 = a1;
    v61 = v6;
    v67 = result;
    v68 = v12;
    do
    {
      if (v66)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(a1 + 8 * v24 + 32);
      }

      v73 = v27;
      sub_1000050EC(v73, v22);
      v28 = *v74;
      (*v74)(v12, v22, v76);
      v29 = *(v75 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100326598(0, v29[2] + 1, 1, v29);
        *(v75 + 16) = v29;
      }

      v31 = v29[2];
      v30 = v29[3];
      if (v31 >= v30 >> 1)
      {
        v29 = sub_100326598((v30 > 1), v31 + 1, 1, v29);
      }

      v29[2] = v31 + 1;
      v32 = v76;
      (*(v71 + 32))(v29 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v31, v12, v76);
      *(v75 + 16) = v29;
      scanlog.getter(v6);
      v33 = v69;
      v22 = v72;
      v28(v69, v72, v32);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock = v37;
        *v36 = v60;
        v38 = ALBtAdvertisement.description.getter();
        v40 = v39;
        v41 = *v64;
        (*v64)(v33, v76);
        v42 = sub_10000234C(v38, v40, &aBlock);

        *(v36 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v34, v35, "#BT,onDevicesBuffered,%s", v36, 0xCu);
        sub_100002580(v37);
        v43 = v70;
        v6 = v61;

        a1 = v62;

        (*v63)(v6, v43);
        v44 = v72;
        v41(v72, v76);
        v22 = v44;
      }

      else
      {

        v25 = *v64;
        v26 = v76;
        (*v64)(v33, v76);
        (*v63)(v6, v70);
        v25(v22, v26);
      }

      ++v24;
      v12 = v68;
    }

    while (v67 != v24);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003377B8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  result = __chkstk_darwin(v7);
  v12 = &v25 - v11;
  if (!a1)
  {
    return result;
  }

  swift_getErrorValue();
  swift_errorRetain();
  result = dispatch thunk of Error._code.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result == -71142)
  {
    scanlog.getter(v9);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "#BT,onCBError,interrupted,%{public}@", v20, 0xCu);
      sub_1000059A8(v21, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }

    v12 = v9;
  }

  else if (result == -71148)
  {
    scanlog.getter(v12);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "#BT,onCBError,bluetoothdUnloaded,%{public}@", v15, 0xCu);
      sub_1000059A8(v16, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }
  }

  else
  {
    v23 = scanlog.getter(v6);
    __chkstk_darwin(v23);
    v24 = 135;
    Logger._fault(_:function:file:line:)(sub_10033830C, (&v25 - 4), "onCBError(_:)", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreBluetooth.swift", 78, 2);

    v12 = v6;
  }

  return (*(v3 + 8))(v12, v2);
}

id *sub_100337BC0()
{

  return v0;
}

uint64_t sub_100337BF8()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100337C48@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v41 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v14);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v10;
    v19 = v6;
    v20 = a3;
    v21 = v18;
    *v18 = 67109376;
    *(v18 + 4) = a2 & 1;
    *(v18 + 8) = 256;
    *(v18 + 10) = [v15 primaryBudSide];

    _os_log_impl(&_mh_execute_header, v16, v17, "ALBtAdvInfoType7.Placement,isLeftBud,%{BOOL}d,budSide,%hhu", v21, 0xBu);
    a3 = v20;
    v6 = v19;
    v10 = v39;
  }

  else
  {

    v16 = v15;
  }

  (*(v12 + 8))(v14, v11);
  v22 = [v15 primaryBudSide];
  if (v22 == 2)
  {
    v30 = &selRef_secondaryPlacement;
    if ((a2 & 1) == 0)
    {
      v30 = &selRef_primaryPlacement;
    }

    v31 = [v15 *v30];
    v25 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    v32 = &enum case for ALBtAdvInfoType7.Placement.onNeck(_:);
    v33 = &enum case for ALBtAdvInfoType7.Placement.disabled(_:);
    if (v31 != 7)
    {
      v33 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v31 != 6)
    {
      v32 = v33;
    }

    v34 = &enum case for ALBtAdvInfoType7.Placement.offEar(_:);
    if (v31 != 5)
    {
      v34 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v31 == 4)
    {
      v34 = &enum case for ALBtAdvInfoType7.Placement.onEar(_:);
    }

    if (v31 <= 5)
    {
      v32 = v34;
    }

    if (v31 == 3)
    {
      v25 = &enum case for ALBtAdvInfoType7.Placement.inCase(_:);
    }

    if (v31 == 2)
    {
      v25 = &enum case for ALBtAdvInfoType7.Placement.outOfEar(_:);
    }

    if (v31 == 1)
    {
      v25 = &enum case for ALBtAdvInfoType7.Placement.inEar(_:);
    }

    if (v31 > 3)
    {
      v25 = v32;
    }

    v10 = v40;
  }

  else
  {
    if (v22 != 1)
    {
      v36 = 1;
      v35 = v41;
      return (*(v35 + 56))(a3, v36, 1, v6);
    }

    v23 = &selRef_primaryPlacement;
    if ((a2 & 1) == 0)
    {
      v23 = &selRef_secondaryPlacement;
    }

    v24 = [v15 *v23];
    v25 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    v26 = &enum case for ALBtAdvInfoType7.Placement.onNeck(_:);
    v27 = &enum case for ALBtAdvInfoType7.Placement.disabled(_:);
    if (v24 != 7)
    {
      v27 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v24 != 6)
    {
      v26 = v27;
    }

    v28 = &enum case for ALBtAdvInfoType7.Placement.onEar(_:);
    v29 = &enum case for ALBtAdvInfoType7.Placement.offEar(_:);
    if (v24 != 5)
    {
      v29 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v24 != 4)
    {
      v28 = v29;
    }

    if (v24 <= 5)
    {
      v26 = v28;
    }

    if (v24 == 3)
    {
      v25 = &enum case for ALBtAdvInfoType7.Placement.inCase(_:);
    }

    if (v24 == 2)
    {
      v25 = &enum case for ALBtAdvInfoType7.Placement.outOfEar(_:);
    }

    if (v24 == 1)
    {
      v25 = &enum case for ALBtAdvInfoType7.Placement.inEar(_:);
    }

    if (v24 > 3)
    {
      v25 = v26;
    }
  }

  v35 = v41;
  (*(v41 + 104))(v10, *v25, v6);
  (*(v35 + 32))(a3, v10, v6);
  v36 = 0;
  return (*(v35 + 56))(a3, v36, 1, v6);
}

uint64_t sub_100338084@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 6)
  {
    v6 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
  }

  else
  {
    v6 = *(&off_100408340 + (a1 - 1));
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void sub_100338134(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[4] = a1;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1003367F8;
  v6[3] = a2;
  v5 = _Block_copy(v6);

  [v3 activateWithCompletion:v5];
  _Block_release(v5);
}

uint64_t sub_1003381E0()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  v2 = *(*v1 + 248);

  v2(v3, 0);
}

uint64_t sub_10033826C()
{
  _StringGuts.grow(_:)(20);
  v0._object = 0x80000001003B1BC0;
  v0._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10033830C()
{
  _StringGuts.grow(_:)(27);
  v0._object = 0x80000001003B1BA0;
  v0._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v0);
  swift_getErrorValue();
  dispatch thunk of Error._code.getter();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 44;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_100338464()
{
  result = qword_100431440;
  if (!qword_100431440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100431440);
  }

  return result;
}

id sub_1003384E4()
{
  v0 = objc_allocWithZone(NISession);

  return [v0 init];
}

id sub_10033851C()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100338570(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_100338628@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100338638@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client;
  swift_beginAccess();
  return sub_100338690(v1 + v3, a1);
}

uint64_t sub_100338690(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100431460, &unk_10039A890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100338700(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client;
  swift_beginAccess();
  sub_100338760(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100338760(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100431460, &unk_10039A890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100338830()
{
  v0 = *(**sub_100334FA4() + 104);

  v0(v2, 0x6F4D74736554696ELL, 0xEB000000006C6564, &type metadata for String);

  if (v2[1])
  {
    return v2[0];
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1003388E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction__testModel);

  return v1;
}

char *sub_100338968(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
  *&v3[v6] = [objc_allocWithZone(NISession) init];
  v7 = &v3[OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = *(**sub_100334FA4() + 104);

  v8(&v33, 0x6F4D74736554696ELL, 0xEB000000006C6564, &type metadata for String);

  v9 = 0x80000001003B1C00;
  v10 = v33;
  if (v34)
  {
    v9 = v34;
  }

  else
  {
    v10 = 0xD000000000000015;
  }

  v11 = &v3[OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction__testModel];
  *v11 = v10;
  v11[1] = v9;
  v12 = objc_allocWithZone(NIRegionPredicate);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithName:v13 devicePresencePreset:1];

  v15 = objc_allocWithZone(NIRegionPredicate);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithName:v16 devicePresencePreset:5];

  v18 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v33 = 0;
  v19 = v14;
  v20 = v17;
  v21 = [v18 initWithInnerBoundary:v19 outerBoundary:v20 error:&v33];
  if (v21)
  {
    v22 = v21;
    v23 = v33;

    [v22 setAllowedDevices:4];
    v32.receiver = v3;
    v32.super_class = type metadata accessor for ALNearbyInteraction();
    v24 = objc_msgSendSuper2(&v32, "init");
    v25 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
    swift_beginAccess();
    v26 = *&v24[v25];
    v27 = v24;
    [v26 setDelegate:v27];
    [*&v24[v25] setDelegateQueue:a1];
    v28 = *&v24[v25];
    [v28 runWithConfiguration:v22];

    v29 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client;
    swift_beginAccess();
    sub_100338760(a2, &v27[v29]);
    swift_endAccess();

    return v27;
  }

  else
  {
    v31 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_100338CDC()
{
  (*((swift_isaMask & *v0) + 0xB8))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALNearbyInteraction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100338E44(void *a1, void *a2, void *a3)
{
  v6 = sub_100024A2C(&unk_100431470, &qword_10039A668);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  ALNIPresenceNotification.init()();
  static ALTimeStamp.now()();
  v12 = type metadata accessor for ALTimeStamp();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  ALNIPresenceNotification._timestamp.setter();
  ALNIPresenceNotification._simulated.setter();
  if (a1 && (v13 = [a1 deviceIdentifier]) != 0)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ALNIPresenceNotification._deviceId.setter();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    ALNIPresenceNotification._deviceId.setter();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  v15 = a2;
  v16 = [v15 devicePresencePreset];
  v17 = type metadata accessor for ALNIDevicePresencePreset();
  v18 = *(v17 - 8);
  if (v16 > 6)
  {
    v19 = &enum case for ALNIDevicePresencePreset.unspecified(_:);
  }

  else
  {
    v19 = *(&off_1004083A0 + v16);
  }

  (*(*(v17 - 8) + 104))(v8, *v19, v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  ALNIPresenceNotification._region.setter();

LABEL_10:
}

void sub_1003391C8()
{
  v1 = v0;
  v2 = ALBtAdvertisement.rssidB.getter();
  if ((v2 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  ALBtAdvertisement.identifier.getter();
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = ALBtAdvertisement.channel.getter();
  if ((v5 & 0x100000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = ALBtAdvertisement.machContTimeSec.getter();
  if (v8)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = *&v7;
  v10 = objc_allocWithZone(NIBluetoothSample);
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 initWithRSSI:v11 identifier:v12 model:v6 channel:v3 machContinuousTimeSeconds:v9];

  v14 = (*((swift_isaMask & *v1) + 0x68))();
  v15 = [v14 devicePresenceNotifier];

  [v15 notifyBluetoothSample:v13];
}

void sub_10033935C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "tearing down", v8, 2u);
  }

  v9 = (*(v3 + 8))(v5, v2);
  v10 = (*((swift_isaMask & *v1) + 0x68))(v9);
  [v10 invalidate];
}

uint64_t sub_100339548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 devicePresencePreset];
  v4 = type metadata accessor for ALNIDevicePresencePreset();
  v5 = *(*(v4 - 8) + 104);
  if (v3 > 6)
  {
    v6 = &enum case for ALNIDevicePresencePreset.unspecified(_:);
  }

  else
  {
    v6 = *(&off_1004083A0 + v3);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_100339604(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_100024A2C(&unk_100431470, &qword_10039A668);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v11 - 8);
  v60 = &v54 - v12;
  v13 = type metadata accessor for ALNIPresenceNotification();
  v63 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v66 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v54 - v16;
  v17 = type metadata accessor for Logger();
  v64 = *(v17 - 8);
  v65 = v17;
  __chkstk_darwin(v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v19);
  v58 = a3;
  v20 = a3;
  v21 = a1;
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v61 = a2;
  v59 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v56 = v10;
    v27 = v26;
    v28 = swift_slowAlloc();
    v55 = v4;
    v29 = v22;
    v30 = a2;
    v31 = v28;
    v32 = swift_slowAlloc();
    v57 = v13;
    v33 = v32;
    v70[0] = v32;
    *v27 = 136315906;
    *(v27 + 4) = sub_10000234C(0xD000000000000031, 0x80000001003B1D10, v70);
    *(v27 + 12) = 2112;
    *(v27 + 14) = v21;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v29;
    *v31 = v21;
    v31[1] = v30;
    v22 = v29;
    v4 = v55;
    *(v27 + 32) = 2112;
    *(v27 + 34) = v20;
    v31[2] = v58;
    v34 = v21;
    v35 = v22;
    v36 = v20;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s object: %@, region: %@, previousRegion: %@", v27, 0x2Au);
    sub_100024A2C(&unk_10042F020, &qword_100399AE0);
    swift_arrayDestroy();

    sub_100002580(v33);
    v13 = v57;

    v10 = v56;
  }

  v37 = (*(v64 + 8))(v19, v65);
  (*((swift_isaMask & *v4) + 0x80))(v70, v37);
  v38 = v66;
  if (!v70[3])
  {
    return sub_1000059A8(v70, &qword_100431460, &unk_10039A890);
  }

  v39 = v22;
  sub_10000D9FC(v70, v67);
  sub_1000059A8(v70, &qword_100431460, &unk_10039A890);
  v40 = v68;
  v41 = v69;
  sub_10000D9B8(v67, v68);
  ALNIPresenceNotification.init()();
  v42 = v60;
  static ALTimeStamp.now()();
  v43 = type metadata accessor for ALTimeStamp();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  ALNIPresenceNotification._timestamp.setter();
  ALNIPresenceNotification._simulated.setter();
  v44 = [v59 deviceIdentifier];
  if (v44)
  {
    v45 = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ALNIPresenceNotification._deviceId.setter();
  if (v61)
  {
    v47 = v39;
    v48 = [v47 devicePresencePreset];
    v49 = type metadata accessor for ALNIDevicePresencePreset();
    v50 = *(v49 - 8);
    if (v48 > 6)
    {
      v51 = &enum case for ALNIDevicePresencePreset.unspecified(_:);
    }

    else
    {
      v51 = *(&off_1004083A0 + v48);
    }

    (*(*(v49 - 8) + 104))(v10, *v51, v49);
    (*(v50 + 56))(v10, 0, 1, v49);
    v38 = v66;
    ALNIPresenceNotification._region.setter();
  }

  v53 = v62;
  v52 = v63;
  (*(v63 + 32))(v62, v38, v13);
  (*(v41 + 16))(v53, v40, v41);
  (*(v52 + 8))(v53, v13);
  return sub_100002580(v67);
}

uint64_t sub_100339C38(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v6);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_10000234C(0xD00000000000001DLL, 0x80000001003B1CF0, v20);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s invalidated %@", v9, 0x16u);
    sub_1000059A8(v10, &unk_10042F020, &qword_100399AE0);

    sub_100002580(v11);
  }

  v13 = (*(v4 + 8))(v6, v3);
  (*((swift_isaMask & *v2) + 0x80))(v20, v13);
  if (!v20[3])
  {
    return sub_1000059A8(v20, &qword_100431460, &unk_10039A890);
  }

  sub_10000D9FC(v20, v17);
  sub_1000059A8(v20, &qword_100431460, &unk_10039A890);
  v14 = v18;
  v15 = v19;
  sub_10000D9B8(v17, v18);
  (*(v15 + 8))(v14, v15);
  return sub_100002580(v17);
}

id sub_100339F2C()
{
  v0 = [objc_opt_self() sharedBacklight];

  return v0;
}

uint64_t sub_100339FD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10033A04C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_10033A100(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*sub_10033A16C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10033B910;
}

uint64_t sub_10033A22C(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100431578, &qword_10039A950);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100024A2C(&qword_100431570, &qword_10039A948);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10033A364(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100024A2C(&qword_100431578, &qword_10039A950);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8ALDaemon11ALBacklight__state[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100024A2C(&qword_100431570, &qword_10039A948);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10033B914;
}

uint64_t sub_10033A504()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10033A578@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10033A630(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*sub_10033A69C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10033A740;
}

void sub_10033A744(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10033A7C8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_100024A2C(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10033A840(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100024A2C(&unk_100431580, &unk_10039A9A0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10033A978(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8ALDaemon11ALBacklight__isScreenOn;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100024A2C(&unk_100431580, &unk_10039A9A0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10033AAE8;
}

void sub_10033AAEC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id sub_10033AC54()
{
  result = [objc_allocWithZone(type metadata accessor for ALBacklight(0)) init];
  qword_1004352A0 = result;
  return result;
}

uint64_t *sub_10033AC88()
{
  if (qword_10048BF60 != -1)
  {
    swift_once();
  }

  return &qword_1004352A0;
}

id sub_10033ACD8()
{
  if (qword_10048BF60 != -1)
  {
    swift_once();
  }

  v0 = qword_1004352A0;

  return v0;
}

char *sub_10033AD34()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100431578, &qword_10039A950);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v26 - v3;
  v4 = sub_100024A2C(&qword_100431590, &unk_10039A9B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v26 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService;
  *&v1[v11] = [objc_opt_self() sharedBacklight];
  *&v1[OBJC_IVAR____TtC8ALDaemon11ALBacklight_cancellables] = &_swiftEmptySetSingleton;
  backlightlog.getter(v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v7;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "init", v14, 2u);
    v7 = v27;
  }

  (*(v8 + 8))(v10, v7);
  v15 = [*&v1[v11] backlightState];
  swift_beginAccess();
  v33 = v15;
  type metadata accessor for BLSBacklightState(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v16 = ([*&v1[v11] backlightState] & 0xFFFFFFFFFFFFFFFELL) == 2;
  swift_beginAccess();
  LOBYTE(v33) = v16;
  Published.init(initialValue:)();
  swift_endAccess();
  v17 = type metadata accessor for ALBacklight(0);
  v32.receiver = v1;
  v32.super_class = v17;
  v18 = objc_msgSendSuper2(&v32, "init");
  v19 = *&v18[OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService];
  v20 = v18;
  v21 = [v19 addObserver:v20];
  v22 = v28;
  (*((swift_isaMask & *v20) + 0xA0))(v21);
  sub_100006E30(&qword_1004315A8, &qword_100431578, &qword_10039A950, &protocol conformance descriptor for Published<A>.Publisher);
  v23 = v29;
  Publisher.map<A>(_:)();
  (*(v30 + 8))(v22, v2);
  v24 = (*((swift_isaMask & *v20) + 0xE0))(v31);
  sub_100006E30(&qword_1004315B0, &qword_100431590, &unk_10039A9B0, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publisher<>.assign(to:)();
  (*(v5 + 8))(v23, v4);
  v24(v31, 0);

  return v20;
}

id sub_10033B28C()
{
  [*&v0[OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALBacklight(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10033B49C(void *a1, uint64_t a2, uint64_t a3, void *a4, const char *a5, ...)
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  sub_10033B594(v8, a5);
  swift_unknownObjectRelease();
}

void *sub_10033B52C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for ALBacklight(uint64_t a1)
{
  result = qword_10048BF98;
  if (!qword_10048BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10033B594(void *a1, const char *a2, ...)
{
  v4 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  backlightlog.getter(v9);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = [v10 state];

    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 0xCu);
  }

  else
  {

    v11 = v10;
  }

  (*(v7 + 8))(v9, v6);
  v14 = [v10 state];
  return (*((swift_isaMask & *v4) + 0x90))(v14);
}

void sub_10033B760(uint64_t a1)
{
  sub_10033B868(319);
  if (v1 <= 0x3F)
  {
    sub_10033B8C0(319, &qword_100431648, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10033B868(uint64_t a1)
{
  if (!qword_100431640)
  {
    type metadata accessor for BLSBacklightState(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100431640);
    }
  }
}

void sub_10033B8C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10033B920(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*sub_10033B960(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10033B9AC;
}

void sub_10033B9AC(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_10033B9EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALResultOptions();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10033BA58@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DataClient(0) + 20);

  return sub_10033BA9C(v3, a1);
}

uint64_t sub_10033BA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033BB0C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DataClient(0) + 20);

  return sub_10033BB50(a1, v3);
}

uint64_t sub_10033BB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033BC34(uint64_t a1, char a2)
{
  result = type metadata accessor for DataClient(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10033BCF0(uint64_t a1, char a2)
{
  result = type metadata accessor for DataClient(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10033BD80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ALResultOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v10 = type metadata accessor for DataClient(0);
  v11 = v10[5];
  v17 = *(v7 + 56);
  v17(a3 + v11, 1, 1, v6);
  v12 = a3 + v10[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a3 + v10[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  swift_unknownObjectWeakAssign();

  if ((*(v7 + 48))(a2, 1, v6) == 1)
  {
    return sub_1000059A8(a2, &qword_100430B00, &unk_10039A528);
  }

  v15 = *(v7 + 32);
  v15(v9, a2, v6);
  sub_1000059A8(a3 + v11, &qword_100430B00, &unk_10039A528);
  v15((a3 + v11), v9, v6);
  return (v17)(a3 + v11, 0, 1, v6);
}

BOOL sub_10033BF70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t sub_10033BFE0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_10033C034(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_10033C07C()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_10033C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = &_swiftEmptyArrayStorage;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a1;
  return result;
}

uint64_t sub_10033C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = &_swiftEmptyArrayStorage;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = a1;
  return v3;
}

uint64_t sub_10033C134(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DataClient(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v17 = v1[7];
  sub_100015140(a1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(v3 + 80);
  *(v14 + 24) = v1;
  sub_10033DA84(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = sub_10033DAE8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100408448;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

uint64_t sub_10033C45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100015140(a2, v7);
  v8 = (*(*a1 + 160))(v16);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_10033D7A8(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_10033D7A8((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  sub_10033DA84(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14);
  return v8(v16, 0);
}

uint64_t sub_10033C5F8()
{
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  static DispatchTime.now()();
  *v8 = 1000;
  (*(v6 + 104))(v8, enum case for DispatchTimeInterval.milliseconds(_:), v5);
  + infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v16 = *(v10 + 8);
  v16(v13, v9);
  v20 = *(v0 + 56);
  aBlock[4] = sub_10033DB4C;
  v27 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100408470;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  v18 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);
  (*(v24 + 8))(v2, v18);
  (*(v21 + 8))(v4, v23);
  v16(v15, v9);
}

void sub_10033C9F8(void *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for Logger();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataClient(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5 - 8);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v51 = &v44 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - v12;
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v44 = v2;
  v16 = *(v2 + 160);
  v46 = a1;
  v45 = v16(v52);
  v18 = v17;
  v19 = *v17;
  v20 = *(*v17 + 16);
  if (v20)
  {
    v21 = 0;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v23 = *(v6 + 72);
      sub_100015140(v19 + v22 + v23 * v21, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10001543C(v15);
      if (!Strong)
      {
        break;
      }

      if (v20 == ++v21)
      {
        v21 = *(*v18 + 16);
        v25 = v21;
        goto LABEL_25;
      }
    }

    v25 = v21 + 1;
    v26 = *v18;
    v27 = *(*v18 + 16);
    if (v27 - 1 == v21)
    {
      goto LABEL_25;
    }

    v28 = v22 + v23 * v25;
    while (v25 < v27)
    {
      sub_100015140(v26 + v28, v13);
      v29 = swift_unknownObjectWeakLoadStrong();
      sub_10001543C(v13);
      if (v29)
      {

        if (v25 != v21)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          v30 = *v18;
          v31 = *(*v18 + 16);
          if (v21 >= v31)
          {
            goto LABEL_32;
          }

          sub_100015140(v30 + v22 + v21 * v23, v51);
          if (v25 >= v31)
          {
            goto LABEL_33;
          }

          sub_100015140(v30 + v28, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v18 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = sub_10033DF5C(v30);
            *v18 = v30;
          }

          if (v21 >= v30[2])
          {
            goto LABEL_34;
          }

          sub_10033E178(v50, v30 + v22 + v21 * v23);
          if (v25 >= *(*v18 + 16))
          {
            goto LABEL_35;
          }

          sub_10033E178(v51, *v18 + v28);
        }

        ++v21;
      }

      ++v25;
      v26 = *v18;
      v27 = *(*v18 + 16);
      v28 += v23;
      if (v25 == v27)
      {
        if (v25 < v21)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v21 = 0;
    v25 = 0;
LABEL_25:
    sub_10033E0B8(v21, v25);
    v45(v52, 0);
    v33 = v47;
    corelog.getter(v47);
    v34 = v46;
    swift_retain_n();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52[0] = v38;
      *v37 = 136446466;
      v39 = _typeName(_:qualified:)();
      v41 = sub_10000234C(v39, v40, v52);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2048;
      v43 = *((*(*v34 + 144))(v42) + 16);

      *(v37 + 14) = v43;

      _os_log_impl(&_mh_execute_header, v35, v36, "Remove all disconnected %{public}s client, remaining %ld", v37, 0x16u);
      sub_100002580(v38);
    }

    else
    {
    }

    (*(v48 + 8))(v33, v49);
  }
}

uint64_t sub_10033CF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v21[0] = *v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataClient(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v21[1] = v4[7];
  sub_100015140(a1, v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(v21[0] + 80);
  *(v17 + 24) = v4;
  sub_10033DA84(v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v22;
  v18[1] = a3;
  aBlock[4] = sub_10033DB54;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_1004084C0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v9, v7);
  (*(v10 + 8))(v12, v23);
}

uint64_t sub_10033D280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for DataClient(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  v16 = (*(*a1 + 144))(v13);
  v17 = *(v16 + 16);
  v44 = v9;
  if (v17)
  {
    v39 = a1;
    v40 = a2;
    v41 = v12;
    v42 = a4;
    v43 = a3;
    v18 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = *(v9 + 72);
    v20 = &_swiftEmptyArrayStorage;
    do
    {
      sub_100015140(v18, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        v23 = [Strong processIdentifier];

        sub_10001543C(v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10033D980(0, *(v20 + 2) + 1, 1, v20);
        }

        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        if (v25 >= v24 >> 1)
        {
          v20 = sub_10033D980((v24 > 1), v25 + 1, 1, v20);
        }

        *(v20 + 2) = v25 + 1;
        *&v20[4 * v25 + 32] = v23;
      }

      else
      {
        sub_10001543C(v15);
      }

      v18 += v19;
      --v17;
    }

    while (v17);

    a3 = v43;
    a2 = v40;
    v12 = v41;
    a1 = v39;
  }

  else
  {

    v20 = &_swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v26);
  *(&v38 - 2) = a2;
  v27 = *(sub_10033D5EC(sub_10033DDD8, (&v38 - 4), v20) + 16);

  if (!v27)
  {
    sub_100015140(a2, v12);
    v29 = (*(*a1 + 160))(v45);
    v31 = v30;
    v32 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v31 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_10033D7A8(0, v32[2] + 1, 1, v32);
      *v31 = v32;
    }

    v34 = v44;
    v36 = v32[2];
    v35 = v32[3];
    if (v36 >= v35 >> 1)
    {
      v32 = sub_10033D7A8((v35 > 1), v36 + 1, 1, v32);
      *v31 = v32;
    }

    v32[2] = v36 + 1;
    sub_10033DA84(v12, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36);
    v28 = v29(v45, 0);
  }

  return a3(v28);
}

uint64_t sub_10033D5EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 4 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_10033DE38(0, v8[2] + 1, 1);
          v8 = v15;
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          result = sub_10033DE38((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        v8[2] = v10 + 1;
        *(v8 + v10 + 8) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_10033D744()
{

  return v0;
}

uint64_t sub_10033D774()
{
  sub_10033D744();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void *sub_10033D7A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(&qword_1004316F8, &qword_10039AAE0);
  v10 = *(type metadata accessor for DataClient(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DataClient(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10033D980(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_1004316F0, &qword_10039AAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10033DA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033DAE8()
{
  v1 = *(type metadata accessor for DataClient(0) - 8);
  v2 = *(v0 + 24);
  v3 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10033C45C(v2, v3);
}

uint64_t sub_10033DB54()
{
  v1 = *(type metadata accessor for DataClient(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_10033D280(v3, v0 + v2, v5, v6);
}

void sub_10033DC10(uint64_t a1)
{
  sub_10033DCA8(319);
  if (v1 <= 0x3F)
  {
    sub_10033DD00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10033DCA8(uint64_t a1)
{
  if (!qword_1004316B8)
  {
    type metadata accessor for ALResultOptions();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1004316B8);
    }
  }
}

void sub_10033DD00()
{
  if (!qword_100418648)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100418648);
    }
  }
}

void *sub_10033DDD8(int *a1)
{
  v1 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result processIdentifier];

    return (v1 == v4);
  }

  return result;
}

char *sub_10033DE38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10033DE58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10033DE58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024A2C(&qword_1004316F0, &qword_10039AAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_10033DF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for DataClient(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10033E0B8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10033D7A8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10033DF70(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10033E178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10033E220()
{
  v0 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  ALWiFiScanSingleAccessPoint.init()();
  v3 = sub_10033ED80(0xFFFFFFFFFFFFFFFFLL);
  ALWiFiScanSingleAccessPoint._mac.setter();
  sub_100024A2C(&unk_10042F2F0, &unk_100399850);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100374440;
  *(v4 + 56) = &type metadata for UInt64;
  *(v4 + 64) = &protocol witness table for UInt64;
  *(v4 + 32) = v3;
  v5._countAndFlagsBits = String.init(format:_:)();
  v10[0] = 0x2D6D6F646E6172;
  v10[1] = 0xE700000000000000;
  String.append(_:)(v5);

  ALWiFiScanSingleAccessPoint._ssid.setter();
  result = sub_10033ECF4(0x3DuLL);
  if (__OFSUB__(0, result + 20))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v10[0]) = 0;
    ALWiFiScanSingleAccessPoint._rssidB.setter();
    sub_10033ECF4(0xEuLL);
    LOBYTE(v10[0]) = 0;
    ALWiFiScanSingleAccessPoint._channel.setter();
    sub_10033ED80(0x20000000000001uLL);
    ALWiFiScanSingleAccessPoint._isAph.setter();
    sub_10033ED80(0x20000000000001uLL);
    ALWiFiScanSingleAccessPoint._isMoving.setter();
    v7 = enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:);
    v8 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v2, v7, v8);
    (*(v9 + 56))(v2, 0, 1, v8);
    return ALWiFiScanSingleAccessPoint._band.setter();
  }

  return result;
}

uint64_t sub_10033E474@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v29 - v7;
  v9 = type metadata accessor for Logger();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v12 - 8);
  v14 = v29 - v13;
  ALWiFiScanResult.init()();
  static ALTimeStamp.now()();
  v15 = type metadata accessor for ALTimeStamp();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v31 = a1;
  ALWiFiScanResult._scanTimestamp.setter();
  v16 = sub_10033ED80(0x29uLL);
  corelog.getter(v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Simulating AP count %ld", v19, 0xCu);
  }

  result = (*(v30 + 1))(v11, v9);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16)
  {
    v29[0] = v3 + 8;
    v29[1] = v3 + 32;
    v30 = v6;
    do
    {
      sub_10033E220();
      (*(v3 + 16))(v6, v8, v2);
      v21 = ALWiFiScanResult._accessPoints.modify();
      v23 = v22;
      v24 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_10000DFC4(0, v24[2] + 1, 1, v24);
        *v23 = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_10000DFC4((v26 > 1), v27 + 1, 1, v24);
        *v23 = v24;
      }

      v24[2] = v27 + 1;
      v28 = v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27;
      v6 = v30;
      (*(v3 + 32))(v28, v30, v2);
      v21(v32, 0);
      result = (*(v3 + 8))(v8, v2);
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_10033E86C()
{
  v0 = sub_100024A2C(&qword_1004317D0, &unk_10039AB20);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  ALWiFiNotification.init()();
  static ALTimeStamp.now()();
  v9 = type metadata accessor for ALTimeStamp();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  ALWiFiNotification._timestamp.setter();
  sub_10033E474(v5);
  v10 = type metadata accessor for ALWiFiScanResult();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  ALWiFiNotification._scanResult.setter();
  ALWiFiNotification._simulated.setter();
  ALWiFiNotification._available.setter();
  v11 = enum case for ALWiFiNotification.ScanType.normal(_:);
  v12 = type metadata accessor for ALWiFiNotification.ScanType();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v2, v11, v12);
  (*(v13 + 56))(v2, 0, 1, v12);
  return ALWiFiNotification._scanType.setter();
}

uint64_t sub_10033EAC4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_10033EE0C(a1, a2, a3);

  return v6;
}

uint64_t sub_10033EB28(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10033EE0C(a1, a2, a3);

  return v3;
}

uint64_t sub_10033EB5C()
{
  v1 = type metadata accessor for ALWiFiNotification();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033E86C();
  (*(v0 + 24))(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10033EC7C()
{
  v0 = ALDataGenerationBase.deinit();

  return v0;
}

uint64_t sub_10033ECAC()
{
  v0 = ALDataGenerationBase.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_10033ECF4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10033ED80(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033EE0C(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(**sub_100334FA4() + 104);

  v10(&v18, 0xD000000000000019, 0x80000001003B1E10, &type metadata for Double);

  if (v19)
  {
    v11 = 6.0;
  }

  else
  {
    v11 = v18;
  }

  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  corelog.getter(v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "ALWiFiSimulated,interval,%f,sec", v14, 0xCu);
  }

  (*(v7 + 8))(v9, v6);
  return ALDataGenerationBase.init(queue:interval:)(v17, v11);
}

uint64_t sub_10033F074(double a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

unint64_t sub_10033F108(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v186 = a1;
  v7 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v7 - 8);
  v167 = &v149 - v8;
  v161 = type metadata accessor for ALWiFiScanResult();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v159 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v158 = *(v157 - 8);
  v10 = __chkstk_darwin(v157);
  v156 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v162 = &v149 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v185 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v168 = &v149 - v18;
  v19 = __chkstk_darwin(v17);
  v179 = &v149 - v20;
  __chkstk_darwin(v19);
  v22 = &v149 - v21;
  v4[3] = &_swiftEmptyArrayStorage;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = a2;
  v4[7] = a3;
  v164 = a3;

  v23 = sub_100334FA4();
  v24 = *(**v23 + 104);

  v24(&v188, 0xD000000000000013, 0x80000001003B1E30, &type metadata for String);

  v25 = v188;
  if (!v189)
  {
    v25 = 0xD000000000000018;
  }

  v187 = v25;
  if (v189)
  {
    v26 = v189;
  }

  else
  {
    v26 = 0x80000001003B1E50;
  }

  v27 = *(**v23 + 104);

  v27(&v188, 0xD00000000000001ALL, 0x80000001003B1E70, &type metadata for Double);

  if (v189)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = *&v188;
  }

  corelog.getter(v22);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v180 = v14;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v188 = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_10000234C(v187, v26, &v188);
    *(v32 + 12) = 2048;
    *(v32 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "ALWiFiReplayerCSV,path,%s,interval,%f", v32, 0x16u);
    sub_100002580(v33);
  }

  v182 = *(v14 + 8);
  v182(v22, v13);
  v34 = v13;
  v163 = v186;
  v35 = ALDataGenerationBase.init(queue:interval:)(v163, v28);
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);

  URL.init(fileURLWithPath:)();
  v40 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v40 - 8);
  static String.Encoding.utf8.getter();
  v41 = String.init(contentsOf:encoding:)();
  v165 = v26;
  v178 = v39;
  result = sub_100325678(0x7FFFFFFFFFFFFFFFLL, 1, v41, v42, &v190);
  v44 = *(result + 16);
  v45 = v44 == 0;
  v183 = v44;
  if (v44)
  {
    *&v153[8] = 0;
    v46 = 0;
    v47 = 0;
    v176 = result + 32;
    v169 = v180 + 8;
    v152 = (v158 + 16);
    v151 = v158 + 8;
    v150 = v158 + 32;
    v154 = 1;
    *(&v48 + 1) = 2;
    v149 = xmmword_100374440;
    *&v48 = 134218242;
    v166 = v48;
    v155 = &_swiftEmptyArrayStorage;
    v172 = v13;
    v175 = v35;
    v171 = &v149;
    v174 = v36;
    v173 = v37;
    v170 = result;
    *v153 = v44 == 0;
    while (2)
    {
      v49 = v47;
      v50 = v178;
      v177 = v49;
LABEL_17:
      if (v46 >= *(result + 16))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v51 = v46++;
      if (!v51)
      {
        goto LABEL_16;
      }

      v186 = v46;
      v181 = v51;
      v52 = (v176 + 32 * v51);
      v53 = *v52;
      v54 = *v52 >> 14;
      v55 = v52[1] >> 14;
      swift_bridgeObjectRetain_n();
      if (v54 == v55)
      {
        v56 = Substring.subscript.getter();
        v58 = v57;
        v60 = v59;
        v62 = v61;

        v63 = sub_100326770(0, 1, 1, &_swiftEmptyArrayStorage);
        v65 = *(v63 + 2);
        v64 = *(v63 + 3);
        if (v65 >= v64 >> 1)
        {
          v63 = sub_100326770((v64 > 1), v65 + 1, 1, v63);
        }

        *(v63 + 2) = v65 + 1;
        v66 = &v63[32 * v65];
        *(v66 + 4) = v56;
        *(v66 + 5) = v58;
        *(v66 + 6) = v60;
        *(v66 + 7) = v62;
        if (v65 != 4)
        {
          goto LABEL_45;
        }

LABEL_48:
        v187 = v63;

        result = ALWiFiScanSingleAccessPoint.init()();
        v100 = *&v153[4];
        if (!*(v187 + 2))
        {
          goto LABEL_98;
        }

        v102 = *(v187 + 4);
        v101 = *(v187 + 5);
        v35 = v175;
        v36 = v174;
        v37 = v173;
        if ((v101 ^ v102) >= 0x4000)
        {
          v104 = *(v187 + 6);
          v103 = *(v187 + 7);
          sub_1003282AC(*(v187 + 4), *(v187 + 5), v104, v103, 16);
          if ((v105 & 0x100) != 0)
          {
            v106 = v100;

            sub_100327458(v102, v101, v104, v103, 16);
            v108 = v107;

            if (v108)
            {
              v100 = v106;
            }

            else
            {
              v100 = v106;
            }
          }
        }

        result = ALWiFiScanSingleAccessPoint._mac.setter();
        if (*(v187 + 2) >= 3uLL)
        {
          v110 = *(v187 + 12);
          v109 = *(v187 + 13);
          if ((v109 ^ v110) >= 0x4000)
          {
            v112 = *(v187 + 14);
            v111 = *(v187 + 15);
            if ((sub_100341984(*(v187 + 12), *(v187 + 13), v112, v111, 10) & 0x10000000000) != 0)
            {

              sub_100326ED0(v110, v109, v112, v111, 10);
            }
          }

          LOBYTE(v188) = 0;
          result = ALWiFiScanSingleAccessPoint._channel.setter();
          if (*(v187 + 2) < 4uLL)
          {
            goto LABEL_100;
          }

          v114 = *(v187 + 16);
          v113 = *(v187 + 17);
          if ((v113 ^ v114) < 0x4000)
          {
            v34 = v172;
          }

          else
          {
            v116 = *(v187 + 18);
            v115 = *(v187 + 19);
            if ((sub_100341984(*(v187 + 16), *(v187 + 17), v116, v115, 10) & 0x10000000000) != 0)
            {

              sub_100326ED0(v114, v113, v116, v115, 10);
            }

            v34 = v172;
          }

          LOBYTE(v188) = 0;
          result = ALWiFiScanSingleAccessPoint._rssidB.setter();
          if (*(v187 + 2) < 5uLL)
          {
            goto LABEL_101;
          }

          *&v153[4] = v100;
          sub_100341A4C(*(v187 + 20), *(v187 + 21), *(v187 + 22), *(v187 + 23), 1702195828, 0xE400000000000000);
          result = ALWiFiScanSingleAccessPoint._isMoving.setter();
          if (*(v187 + 2) < 2uLL)
          {
            goto LABEL_102;
          }

          v117 = COERCE_DOUBLE(Double.init(_:)());
          if (v118)
          {
            v117 = 0.0;
          }

          v47 = *&v117;
          if (v154)
          {
            v119 = *&v117;
          }

          else
          {
            v119 = v177;
          }

          if (vabdd_f64(*&v119, v117) >= 2.22044605e-16)
          {
            sub_100340678(v119, 0, v155);

            sub_100024A2C(&qword_1004311C0, &qword_100399AB0);
            v126 = v158;
            v127 = (*(v158 + 80) + 32) & ~*(v158 + 80);
            v128 = swift_allocObject();
            *(v128 + 16) = v149;
            v129 = *(v126 + 16);
            v155 = v128;
            v130 = v128 + v127;
            v131 = v162;
            v132 = v157;
            v129(v130, v162, v157);
            (*(v126 + 8))(v131, v132);
          }

          else
          {
            (*v152)(v156, v162, v157);
            v120 = v155;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v120 = sub_1003417A8(0, v120[2] + 1, 1, v120, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
            }

            v155 = v120;
            v122 = v120[2];
            v121 = v120[3];
            if (v122 >= v121 >> 1)
            {
              v155 = sub_1003417A8((v121 > 1), v122 + 1, 1, v155, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
            }

            v123 = v158;
            v124 = v157;
            (*(v158 + 8))(v162, v157);
            v125 = v155;
            v155[2] = v122 + 1;
            (*(v123 + 32))(v125 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v122, v156, v124);
          }

          v154 = 0;
          v46 = v186;
          result = v170;
          v45 = v153[0];
          if (v186 == v183)
          {
            v49 = v47;
            v50 = v178;
LABEL_82:
            v133 = v155;
            goto LABEL_84;
          }

          continue;
        }

        goto LABEL_99;
      }

      break;
    }

    v187 = &_swiftEmptyArrayStorage;
    v67 = v53;
    while (Substring.subscript.getter() != 44 || v68 != 0xE100000000000000)
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
LABEL_31:
        if (v54 < v67 >> 14)
        {
          goto LABEL_95;
        }

        v70 = Substring.subscript.getter();
        v184 = v71;
        v185 = v70;
        v73 = v72;
        v75 = v74;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v76 = v187;
        }

        else
        {
          v76 = sub_100326770(0, *(v187 + 2) + 1, 1, v187);
        }

        v78 = *(v76 + 2);
        v77 = *(v76 + 3);
        if (v78 >= v77 >> 1)
        {
          v76 = sub_100326770((v77 > 1), v78 + 1, 1, v76);
        }

        *(v76 + 2) = v78 + 1;
        v187 = v76;
        v79 = &v76[32 * v78];
        v80 = v184;
        *(v79 + 4) = v185;
        *(v79 + 5) = v80;
        *(v79 + 6) = v73;
        *(v79 + 7) = v75;
        result = Substring.index(after:)();
        v67 = result;
        v54 = result >> 14;
        if (result >> 14 == v55)
        {
LABEL_39:
          if (v55 < v67 >> 14)
          {
            goto LABEL_96;
          }

          v81 = Substring.subscript.getter();
          v83 = v82;
          v85 = v84;
          v87 = v86;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v63 = v187;
          }

          else
          {
            v63 = sub_100326770(0, *(v187 + 2) + 1, 1, v187);
          }

          v89 = *(v63 + 2);
          v88 = *(v63 + 3);
          if (v89 >= v88 >> 1)
          {
            v63 = sub_100326770((v88 > 1), v89 + 1, 1, v63);
          }

          *(v63 + 2) = v89 + 1;
          v90 = &v63[32 * v89];
          *(v90 + 4) = v81;
          *(v90 + 5) = v83;
          *(v90 + 6) = v85;
          *(v90 + 7) = v87;
          if (v89 == 4)
          {
            goto LABEL_48;
          }

LABEL_45:

          v91 = v179;
          corelog.getter(v179);

          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v188 = v95;
            *v94 = v166;
            *(v94 + 4) = v181;
            *(v94 + 12) = 2080;
            v96 = static String._fromSubstring(_:)();
            v98 = v97;

            v99 = sub_10000234C(v96, v98, &v188);

            *(v94 + 14) = v99;
            _os_log_impl(&_mh_execute_header, v92, v93, "line %ld: '%s' is ill-formed. Please follow [mac],[timestamp],[channel],[rssidB],[isMoving]. Skip!", v94, 0x16u);
            sub_100002580(v95);
          }

          else
          {
          }

          v34 = v172;
          v182(v91, v172);
          v35 = v175;
          v36 = v174;
          v37 = v173;
          v50 = v178;
          result = v170;
          v46 = v186;
          v49 = v177;
LABEL_16:
          if (v46 == v183)
          {
            v45 = v154;
            goto LABEL_82;
          }

          goto LABEL_17;
        }
      }

      else
      {
        result = Substring.index(after:)();
        v54 = result >> 14;
        if (result >> 14 == v55)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_31;
  }

  v49 = 0;
  v133 = &_swiftEmptyArrayStorage;
  v50 = v178;
LABEL_84:

  sub_100340678(v49, v45 & 1, v133);

  (*(v37 + 8))(v50, v36);
  swift_beginAccess();
  if (*(*(v35 + 24) + 16))
  {
    v134 = machContTimeSec()();
    result = swift_beginAccess();
    v135 = *(v35 + 24);
    if (!*(v135 + 16))
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v136 = v160;
    v137 = v159;
    v138 = v161;
    (*(v160 + 16))(v159, v135 + ((*(v136 + 80) + 32) & ~*(v136 + 80)), v161);
    ALWiFiScanResult._scanTimestamp.getter();
    v139 = v167;
    (*(v136 + 8))(v137, v138);
    swift_endAccess();
    v140 = type metadata accessor for ALTimeStamp();
    v141 = *(v140 - 8);
    result = (*(v141 + 48))(v139, 1, v140);
    if (result == 1)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v142 = v139;
    v143 = COERCE_DOUBLE(ALTimeStamp.machContinuousTimeSec.getter());
    v145 = v144;
    result = (*(v141 + 8))(v142, v140);
    if (v145)
    {
LABEL_104:
      __break(1u);
      return result;
    }

    swift_beginAccess();
    *(v35 + 40) = v134 - v143;
  }

  else
  {
  }

  corelog.getter(v168);

  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    *v148 = 134218240;
    *(v148 + 4) = *(*(v35 + 24) + 16);

    *(v148 + 12) = 2048;
    swift_beginAccess();
    *(v148 + 14) = *(v35 + 40);
    _os_log_impl(&_mh_execute_header, v146, v147, "Total Wifi scans from file: %ld. Offset is %f", v148, 0x16u);
  }

  else
  {
  }

  v182(v168, v34);
  return v35;
}

uint64_t sub_100340678(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-v7];
  v9 = type metadata accessor for ALWiFiScanResult();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v11);
  v16 = &v25[-v15];
  if (*(a3 + 16))
  {
    ALWiFiScanResult.init()();
    ALTimeStamp.init(machContinuousTimeSec:)();
    v17 = type metadata accessor for ALTimeStamp();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    ALWiFiScanResult._scanTimestamp.setter();

    ALWiFiScanResult._accessPoints.setter();
    (*(v10 + 16))(v13, v16, v9);
    v18 = (*(*v4 + 176))(v25);
    v20 = v19;
    v21 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v20 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1003417A8(0, v21[2] + 1, 1, v21, &unk_100431910, &qword_10039AB78, &type metadata accessor for ALWiFiScanResult);
      *v20 = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1003417A8((v23 > 1), v24 + 1, 1, v21, &unk_100431910, &qword_10039AB78, &type metadata accessor for ALWiFiScanResult);
      *v20 = v21;
    }

    v21[2] = v24 + 1;
    (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v13, v9);
    v18(v25, 0);
    return (*(v10 + 8))(v16, v9);
  }

  return result;
}

void sub_1003409A0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_1004317D0, &unk_10039AB20);
  __chkstk_darwin(v2 - 8);
  v126 = &v123 - v3;
  v4 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v4 - 8);
  v125 = &v123 - v5;
  v124 = type metadata accessor for ALWiFiNotification();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v128 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Logger();
  v7 = *(v137 - 8);
  v8 = __chkstk_darwin(v137);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v141 = (&v123 - v11);
  v12 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v13 = __chkstk_darwin(v12 - 8);
  v127 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v130 = &v123 - v16;
  __chkstk_darwin(v15);
  v139 = &v123 - v17;
  v146 = type metadata accessor for ALWiFiScanResult();
  v140 = *(v146 - 8);
  v18 = __chkstk_darwin(v146);
  v129 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v133 = &v123 - v21;
  v22 = __chkstk_darwin(v20);
  v138 = &v123 - v23;
  v24 = (*v0)[23];
  v25 = (*v0 + 23);
  v27 = (*v0 + 20);
  v26 = *v27;
  v28 = (v24)(v22);
  v30 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    v144 = v140 + 8;
    v145 = v140 + 16;
    v136 = (v7 + 8);
    *&v29 = 136315138;
    v132 = v29;
    v142 = v0;
    v143 = v27;
    v131 = v10;
    v147 = v26;
    v148 = v25;
    v149 = v24;
    while (1)
    {
      v31 = *(v26() + 16);

      if (v30 >= v31)
      {
        break;
      }

      v33 = (v149)(v32);
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v35 = v147();
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v34 >= *(v35 + 16))
      {
        goto LABEL_37;
      }

      v36 = v140;
      v37 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v38 = *(v140 + 72);
      v39 = v35 + v37 + v38 * v34;
      v40 = *(v140 + 16);
      v41 = v138;
      v42 = v146;
      v40(v138, v39, v146);
      v43 = v139;
      ALWiFiScanResult._scanTimestamp.getter();
      v44 = *(v36 + 8);
      v45 = v41;
      v46 = v43;
      v44(v45, v42);
      v47 = type metadata accessor for ALTimeStamp();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v46, 1, v47) == 1)
      {
        goto LABEL_48;
      }

      v49 = ALTimeStamp.machContinuousTimeSec.getter();
      v50 = v46;
      v51 = *&v49;
      v53 = v52;
      (*(v48 + 8))(v50, v47);
      if (v53)
      {
        goto LABEL_49;
      }

      v1 = v142;
      v55 = ((*v142)[26])(v54) + v51;
      if (v55 >= machContTimeSec()())
      {
        break;
      }

      v56 = v141;
      corelog.getter(v141);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v134 = v58;
        v135 = v57;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v150[0] = v60;
        *v59 = v132;
        v61 = v149();
        v62 = v147();
        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v61 >= *(v62 + 16))
        {
          goto LABEL_40;
        }

        v63 = v62 + v37 + v61 * v38;
        v64 = v133;
        v65 = v146;
        v40(v133, v63, v146);

        v66 = ALWiFiScanResult.description.getter();
        v68 = v67;
        v44(v64, v65);
        v69 = sub_10000234C(v66, v68, v150);

        *(v59 + 4) = v69;
        v70 = v135;
        _os_log_impl(&_mh_execute_header, v135, v134, "One Wifi scan from file was discarded: %s. Please decrease TickIntervalSec", v59, 0xCu);
        sub_100002580(v60);

        (*v136)(v141, v137);
        v1 = v142;
      }

      else
      {

        (*v136)(v56, v137);
      }

      v71 = (*v1)[25](v150);
      v26 = v147;
      v73 = v149;
      if (__OFADD__(*v72, 1))
      {
        goto LABEL_38;
      }

      ++*v72;
      v74 = v71(v150, 0);
      v75 = (v73)(v74);
      v30 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_18;
      }
    }
  }

  v76 = v149;
  v77 = v149();
  v78 = v147;
  v79 = *(v147() + 16);

  if (v77 >= v79)
  {
    return;
  }

  v81 = (v76)(v80);
  v82 = v78();
  if ((v81 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v81 >= *(v82 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v83 = v140;
  v139 = ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v138 = *(v140 + 72);
  v84 = &v139[v82 + v138 * v81];
  v85 = v129;
  v86 = v146;
  v141 = *(v140 + 16);
  (v141)(v129, v84, v146);
  v87 = v130;
  ALWiFiScanResult._scanTimestamp.getter();
  v88 = *(v83 + 8);
  v88(v85, v86);
  v89 = type metadata accessor for ALTimeStamp();
  v90 = *(v89 - 8);
  if ((*(v90 + 48))(v87, 1, v89) == 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v91 = COERCE_DOUBLE(ALTimeStamp.machContinuousTimeSec.getter());
  v92 = v87;
  v94 = v93;
  (*(v90 + 8))(v92, v89);
  v95 = v131;
  if (v94)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v97 = ((*v1)[26])(v96) + v91;
  if (v97 < machContTimeSec()())
  {
    corelog.getter(v95);

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = v78;
      v101 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v150[0] = v135;
      *v101 = v132;
      v102 = v149();
      v103 = v100();
      if ((v102 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v134 = v99;
      if (v102 >= *(v103 + 16))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v104 = v133;
      v105 = v146;
      (v141)(v133, &v139[v103 + v102 * v138], v146);

      v106 = ALWiFiScanResult.description.getter();
      v108 = v107;
      v88(v104, v105);
      v109 = sub_10000234C(v106, v108, v150);

      *(v101 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v98, v134, "One Wifi scan from file: %s", v101, 0xCu);
      sub_100002580(v135);

      (*v136)(v131, v137);
      v1 = v142;
      v78 = v147;
    }

    else
    {

      (*v136)(v95, v137);
    }

    v110 = v128;
    ALWiFiNotification.init()();
    v111 = v127;
    static ALTimeStamp.now()();
    (*(v90 + 56))(v111, 0, 1, v89);
    v112 = ALWiFiNotification._timestamp.setter();
    v113 = (v149)(v112);
    v114 = v78();
    if ((v113 & 0x8000000000000000) == 0)
    {
      if (v113 < *(v114 + 16))
      {
        v115 = v125;
        v116 = v146;
        (v141)(v125, &v139[v114 + v113 * v138], v146);

        (*(v140 + 56))(v115, 0, 1, v116);
        ALWiFiNotification._scanResult.setter();
        ALWiFiNotification._simulated.setter();
        ALWiFiNotification._available.setter();
        v117 = enum case for ALWiFiNotification.ScanType.normal(_:);
        v118 = type metadata accessor for ALWiFiNotification.ScanType();
        v119 = *(v118 - 8);
        v120 = v126;
        (*(v119 + 104))(v126, v117, v118);
        (*(v119 + 56))(v120, 0, 1, v118);
        ALWiFiNotification._scanType.setter();
        v121 = (*v1)[25](v150);
        if (!__OFADD__(*v122, 1))
        {
          ++*v122;
          v121(v150, 0);
          (v1[6])(v110);
          (*(v123 + 8))(v110, v124);
          return;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

void *sub_1003417A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100341984(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10032885C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_100341A4C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_100341B30(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t ALDataGenerationBase.__allocating_init(queue:interval:)(void *a1, double a2)
{
  swift_allocObject();
  v4 = sub_100341E04(a1, a2);

  return v4;
}

uint64_t ALDataGenerationBase.init(queue:interval:)(void *a1, double a2)
{
  v3 = sub_100341E04(a1, a2);

  return v3;
}

uint64_t sub_100341C00(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 120))(result);
  }

  return result;
}

uint64_t ALDataGenerationBase.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100341E04(uint64_t a1, double a2)
{
  v44 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = __chkstk_darwin(v8);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  v17 = (v2 + 16);
  sub_10030F660();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1003424BC(&unk_10042F750, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100024A2C(&qword_100431A50, &unk_10039ABE0);
  sub_100006DDC(&unk_10042F760, &qword_100431A50, &unk_10039ABE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v14 + 8))(v16, v13);
  swift_beginAccess();
  *v17 = v18;
  swift_unknownObjectRelease();
  if (*v17)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v19 = v38;
    static DispatchTime.now()();
    v20 = v12;
    + infix(_:_:)();
    v21 = v40;
    v22 = *(v39 + 8);
    v22(v19, v40);
    v24 = v41;
    v23 = v42;
    *v41 = 0;
    v25 = v43;
    (*(v23 + 104))(v24, enum case for DispatchTimeInterval.nanoseconds(_:), v43);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    (*(v23 + 8))(v24, v25);
    v22(v20, v21);
    if (*v17)
    {
      swift_getObjectType();
      v26 = swift_allocObject();
      v27 = v45;
      swift_weakInit();
      aBlock[4] = sub_1003424B4;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000025CC;
      aBlock[3] = &unk_1004085F0;
      v28 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v29 = v32;
      static DispatchQoS.unspecified.getter();
      v30 = v34;
      sub_100309480();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v28);
      swift_unknownObjectRelease();
      (*(v36 + 8))(v30, v37);
      (*(v33 + 8))(v29, v35);

      if (*(v27 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.activate()();
        swift_unknownObjectRelease();
      }
    }
  }

  return v45;
}

uint64_t sub_1003424BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100342504()
{
  v0._countAndFlagsBits = 0x6F7272456B636954;
  v0._object = 0xEA00000000002072;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double sub_100342594()
{
  v0 = *(**sub_100334FA4() + 104);

  v0(&v2, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

  result = v2;
  if (v3)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_100342668(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

id sub_1003426A8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1003426EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(**sub_100334FA4() + 104);

  v7(&v10, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

  v8 = v10;
  if (v11)
  {
    v8 = 5.0;
  }

  *(v6 + 16) = v8;
  *(v6 + 32) = a3;
  *(v6 + 40) = a1;
  *(v6 + 24) = a2;
  return v6;
}

uint64_t sub_1003427CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(**sub_100334FA4() + 104);

  v7(&v10, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

  v8 = v10;
  if (v11)
  {
    v8 = 5.0;
  }

  *(v3 + 16) = v8;
  *(v3 + 32) = a3;
  *(v3 + 40) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_10034289C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v14);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = (*(*v0 + 104))();
    _os_log_impl(&_mh_execute_header, v15, v16, "starting boost timer for %f", v17, 0xCu);
  }

  v18 = (*(v12 + 8))(v14, v11);
  v27 = (*(*v0 + 152))(v18);
  v19 = static DispatchTime.now()();
  (*(*v0 + 104))(v19);
  + infix(_:_:)();
  v20 = v29;
  v28 = *(v28 + 8);
  (v28)(v8, v29);
  aBlock[4] = sub_1003497AC;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100408640;
  v21 = _Block_copy(aBlock);

  v22 = v30;
  static DispatchQoS.unspecified.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520, &protocol conformance descriptor for [A]);
  v23 = v33;
  v24 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v34 + 8))(v23, v24);
  (*(v31 + 8))(v22, v32);
  (v28)(v10, v20);
}

uint64_t sub_100342DB4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "timer fired from original block", v8, 2u);
  }

  v9 = (*(v3 + 8))(v5, v2);
  v10 = (*(*a1 + 128))(v9);
  v10();
}

uint64_t sub_100342F30()
{

  return v0;
}

uint64_t sub_100342F58()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100342F98()
{
  v1 = (v0 + OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__onData);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100342FF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__onData);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1003430F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__services;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1003431F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__boostTimer;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1003432B0()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__queue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100343304(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__queue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1003433BC()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100343410(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_100343514(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - v10;
  *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__boostTimer] = 0;
  v12 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
  v13 = sub_10033AC88();
  v14 = *v13;
  *&v4[v12] = *v13;
  *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth_cancellables] = &_swiftEmptySetSingleton;
  v15 = &v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__onData];
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__queue] = a1;
  v16 = v14;

  v33 = a1;
  result = sub_1003490D8();
  v18 = result;
  v19 = 0;
  v20 = &_swiftEmptyArrayStorage;
  v34 = &_swiftEmptyArrayStorage;
  v21 = *(result + 2);
  while (1)
  {
    if (v21 == v19)
    {

      *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__services] = v20;
      v24 = type metadata accessor for ALScanCoreBluetooth();
      v35.receiver = v4;
      v35.super_class = v24;
      v25 = objc_msgSendSuper2(&v35, "init");
      v26 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
      swift_beginAccess();
      v27 = *&v25[v26];
      v28 = *((swift_isaMask & *v27) + 0xD0);
      v29 = v25;
      v30 = v27;
      v28();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100006E30(&qword_100431A90, &qword_100431A80, &qword_10039A218, &protocol conformance descriptor for Published<A>.Publisher);
      Publisher<>.sink(receiveValue:)();

      (*(v9 + 8))(v11, v8);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return v29;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    v22 = *(v18 + 8 * v19++ + 32);
    if (v22)
    {
      v32 = v11;
      v23 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31[1] = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 = v34;
      v11 = v32;
    }
  }

  __break(1u);
  return result;
}

void sub_100343894(unsigned __int8 *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = *a1;
  launchlog.getter(&v26 - v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v28 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v27 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v15 = 136315138;
    if (v10)
    {
      v17 = 28271;
    }

    else
    {
      v17 = 6710895;
    }

    if (v10)
    {
      v18 = 0xE200000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_10000234C(v17, v18, v29);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "published isScreenOn state changed to: %s", v15, 0xCu);
    sub_100002580(v16);

    v4 = v27;
  }

  v20 = *(v4 + 8);
  v20(v9, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (v28)
    {
      (*((swift_isaMask & *Strong) + 0x120))();
    }

    else
    {
      (*((swift_isaMask & *Strong) + 0x128))();
    }
  }

  else
  {
    launchlog.getter(v7);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "no self", v25, 2u);
    }

    v20(v7, v3);
  }
}

uint64_t sub_100343BAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v59 = (&v57 - v10);
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v13 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v57 - v14;
  v63 = type metadata accessor for ALBtNotification();
  v65 = *(v63 - 8);
  v16 = __chkstk_darwin(v63);
  v64 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  ALBtNotification.init()();

  ALBtNotification._advertisements.setter();
  ALBtNotification._isScreenOn.setter();
  ALBtNotification._simulated.setter();
  static ALTimeStamp.now()();
  v20 = type metadata accessor for ALTimeStamp();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  ALBtNotification._timestamp.setter();
  scanlog.getter(v12);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v61 = v6;
    v62 = v5;
    v23 = swift_slowAlloc();
    v66 = COERCE_DOUBLE(swift_slowAlloc());
    *v23 = 136315650;
    *(v23 + 4) = sub_10000234C(0xD000000000000022, 0x80000001003B1B20, &v66);
    *(v23 + 12) = 2082;
    swift_beginAccess();
    v24 = ALBtNotification.description.getter();
    v26 = sub_10000234C(v24, v25, &v66);

    *(v23 + 14) = v26;
    *(v23 + 22) = 2050;
    if (!*(a1 + 16))
    {
      __break(1u);
      return result;
    }

    type metadata accessor for ALBtAdvertisement();
    v28 = COERCE_DOUBLE(sub_100344450());
    if (v29)
    {
      v28 = -1.0;
    }

    *(v23 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s,notif,%{public}s,delayMs,%{public}f", v23, 0x20u);
    swift_arrayDestroy();

    v30 = v61;
    v5 = v62;
    v31 = v12;
    v32 = *(v61 + 8);
    v33 = v32(v31, v62);
  }

  else
  {

    v34 = v12;
    v32 = *(v6 + 8);
    v33 = v32(v34, v5);
    v30 = v6;
  }

  v35 = *((swift_isaMask & *v2) + 0xB0);
  v36 = v35(v33);
  v37 = v35;
  v38 = v64;
  v39 = v65;
  if (v36)
  {

    v41 = v63;
  }

  else
  {
    v58 = v37;
    v42 = v59;
    scanlog.getter(v59);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "creating timer", v45, 2u);
    }

    v61 = v30;
    v62 = v5;
    v59 = v32;
    v46 = v32(v42, v5);
    v57 = (*((swift_isaMask & *v3) + 0xC8))(v46);
    v47 = swift_allocObject();
    *(v47 + 16) = v3;
    type metadata accessor for ALScanBoostTimer();
    v48 = swift_allocObject();
    v49 = v3;
    v50 = *(**sub_100334FA4() + 104);

    v50(&v66, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

    v51 = v66;
    if (v67)
    {
      v51 = 5.0;
    }

    *(v48 + 16) = v51;
    v52 = v57;
    *(v48 + 32) = v47;
    *(v48 + 40) = v52;
    *(v48 + 24) = sub_1003497E0;
    v53 = (*((swift_isaMask & *v49) + 0xB8))(v48);
    v54 = v58(v53);
    if (v54)
    {
      (*(*v54 + 184))(v54);
    }

    v40 = (*((swift_isaMask & *v49) + 0x138))(v54);
    v41 = v63;
    v38 = v64;
    v39 = v65;
  }

  v55 = (*((swift_isaMask & *v3) + 0x80))(v40);
  swift_beginAccess();
  (*(v39 + 16))(v38, v19, v41);
  v55(v38);
  v56 = *(v39 + 8);
  v56(v38, v41);

  return (v56)(v19, v41);
}

uint64_t sub_100344450()
{
  v0 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  ALBtNotification._timestamp.getter();
  v3 = type metadata accessor for ALTimeStamp();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000059A8(v2, &qword_100418C70, qword_10039A8A0);
LABEL_3:
    *&result = 0.0;
    return result;
  }

  v6 = COERCE_DOUBLE(ALTimeStamp._machAbsoluteTimeSec.getter());
  v8 = v7;
  (*(v4 + 8))(v2, v3);
  if (v8)
  {
    *&result = v6;
  }

  else
  {
    v9 = ALBtAdvertisement._machContTimeNs.getter();
    if (v10)
    {
      goto LABEL_3;
    }

    v11 = v9;
    v12 = v6 * MsInSec.getter();
    *&result = v12 - UsToSec.getter() * v11;
  }

  return result;
}

uint64_t sub_1003448A4(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1003448D4(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1003448E4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100344914(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void *sub_10034496C()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_1003449E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALScanServices();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100344A94(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ALScanAdv(0) + 36);

  return sub_100349954(a1, v3);
}

uint64_t sub_100344B20@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = *(type metadata accessor for ALScanAdv(0) + 36);
  v12 = type metadata accessor for ALScanServices();
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  *(a4 + 40) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 12) = 0;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (!*(a1 + 16))
  {
    v24 = a3;

    goto LABEL_7;
  }

  v16 = v13;
  v17 = a3;

  v18 = sub_10031DC00(v16, v15);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_7:
    v22 = 0;
    v23 = 1;
    goto LABEL_8;
  }

  sub_100002524(*(a1 + 56) + 32 * v18, v43);
  v21 = swift_dynamicCast();
  v22 = v42;
  if (!v21)
  {
    v22 = 0;
  }

  v23 = v21 ^ 1;
LABEL_8:
  *(a4 + 16) = v22;
  *(a4 + 20) = v23;
  v25 = [a3 identifier];

  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = UUID.uuidString.getter();
  v32 = v31;
  (*(v27 + 8))(v29, v26);
  *(a4 + 24) = v30;
  *(a4 + 32) = v32;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {
  }

  v35 = sub_10031DC00(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
  }

  sub_100002524(*(a1 + 56) + 32 * v35, v43);

  sub_100024A2C(&qword_100431AA8, &qword_10039ABF0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v39 = v42;
  if (v42 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_13;
    }
  }

  result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

LABEL_13:
  if ((v39 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v39 + 32);
LABEL_16:

    ALScanServices.init(uuid:)();
    return sub_100349954(v10, a4 + v11);
  }

  __break(1u);
  return result;
}

void sub_100344ED8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = type metadata accessor for ALScanService();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ALScanServices();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 40) = 0;
  v10 = type metadata accessor for ALScanAdv(0);
  v11 = *(v7 + 56);
  v36 = *(v10 + 36);
  v11(a2 + v36, 1, 1, v6);
  *(a2 + 8) = [v37 bleRSSI];
  *(a2 + 12) = 0;
  *(a2 + 16) = [v37 bleChannel];
  *(a2 + 20) = 0;
  v12 = [v37 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  if (([v37 discoveryFlags] & 0x80000000) != 0)
  {
    v18 = [v37 watchSetupData];
    if (v18)
    {
      v19 = v18;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = *(v7 + 104);
      v32 = enum case for ALScanServices.Testing(_:);
      v31 = v23;
      v23(v9);
      ALScanServices.service.getter();
      (*(v7 + 8))(v9, v6);
      v24 = ALScanService._testingCustomWatchData.getter();
      v33 = v11;
      v26 = v25;
      (*(v34 + 8))(v5, v35);
      v27 = sub_10009F948(v20, v22, v24, v26);
      sub_100005B2C(v20, v22);

      v28 = v26;
      v11 = v33;
      sub_100005B2C(v24, v28);
      if (v27)
      {
        v29 = v36;
        sub_1000059A8(a2 + v36, &qword_100431AA0, &qword_10039A210);
        v31(a2 + v29, v32, v6);
LABEL_13:
        v11(a2 + v29, 0, 1, v6);
        return;
      }
    }

    else
    {
    }

    v29 = v36;
    sub_1000059A8(a2 + v36, &qword_100431AA0, &qword_10039A210);
    (*(v7 + 104))(a2 + v29, enum case for ALScanServices.FE25(_:), v6);
    goto LABEL_13;
  }

  v17 = v37;
}

void *sub_100345294()
{
  v1 = OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1003452E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_1003453E4(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral) = 0;
  v6 = a1;

  v7 = sub_100343514(v6, a2, a3);
  v8 = *((swift_isaMask & *v7) + 0xC8);
  v9 = v7;
  v10 = v8();
  sub_100024A2C(&qword_100431AB8, &qword_10039ABF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10036C830;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  sub_1003499C4(inited);
  swift_setDeallocating();
  sub_100024A2C(&qword_100431AC0, &unk_10039AC00);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(CBCentralManager);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithDelegate:v9 queue:v10 options:isa];

  v17 = OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral;
  swift_beginAccess();
  v18 = *&v9[v17];
  *&v9[v17] = v16;

  return v9;
}

uint64_t sub_1003455F4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Reg central scan BT on AP from CB", v8, 2u);
  }

  v9 = (*(v3 + 8))(v5, v2);
  v10 = (*((swift_isaMask & *v1) + 0x98))(v9);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 >= 1)
  {
    return (*((swift_isaMask & *v1) + 0x168))(result);
  }

  return result;
}

void sub_1003457E4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  scanlog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "cbcentral starting boost scan", v8, 2u);
  }

  v9 = (*(v3 + 8))(v5, v2);
  v10 = (*((swift_isaMask & *v1) + 0x150))(v9);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 isScanning];
    if (v12)
    {
      v12 = [v11 stopScan];
    }

    (*((swift_isaMask & *v1) + 0x98))(v12);
    sub_10000ABCC(0, &unk_100431AC8, CBUUID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100024A2C(&qword_100431AB8, &qword_10039ABF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10036C800;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v15;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v16;
    *(inited + 120) = &type metadata for Int;
    *(inited + 96) = 30;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v17;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 30;
    sub_1003499C4(inited);
    swift_setDeallocating();
    sub_100024A2C(&qword_100431AC0, &unk_10039AC00);
    swift_arrayDestroy();
    v18 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 scanForPeripheralsWithServices:isa options:v18];
  }
}

void sub_100345B2C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "cbcentral stopping boost scan", v8, 2u);
  }

  v9 = (*(v3 + 8))(v5, v2);
  v10 = (*((swift_isaMask & *v1) + 0x150))(v9);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 isScanning];
    if (v12)
    {
      v12 = [v11 stopScan];
    }

    (*((swift_isaMask & *v1) + 0x168))(v12);
  }
}

void sub_100345D1C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - v7;
  v9 = (*((swift_isaMask & *v0) + 0x150))(v6);
  if (v9)
  {
    v10 = v9;
    scanlog.getter(v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "screen off stopping cbcentral scan", v13, 2u);
    }

    (*(v2 + 8))(v8, v1);
    [v10 stopScan];
  }

  else
  {
    scanlog.getter(v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "could not stop cbcentral scan on screen off, no _btCentral", v16, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_100345F74()
{
  (*((swift_isaMask & *v0) + 0x168))();
  v1 = *((swift_isaMask & *v0) + 0xB8);

  return v1(0);
}

void sub_100346008()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((swift_isaMask & *v0) + 0x150))(v3);
  if (v6)
  {
    v7 = v6;
    scanlog.getter(v5);
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v25 = v7;
      v12 = v11;
      v24 = swift_slowAlloc();
      v26 = v24;
      *v12 = 136315138;
      (*((swift_isaMask & *v8) + 0x98))();
      sub_10000ABCC(0, &unk_100431AC8, CBUUID_ptr);
      v13 = Array.description.getter();
      v23 = v1;
      v14 = v13;
      v16 = v15;

      v17 = sub_10000234C(v14, v16, &v26);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting scan with services: %s", v12, 0xCu);
      sub_100002580(v24);

      v7 = v25;

      v18 = (*(v2 + 8))(v5, v23);
    }

    else
    {

      v18 = (*(v2 + 8))(v5, v1);
    }

    (*((swift_isaMask & *v8) + 0x98))(v18);
    sub_10000ABCC(0, &unk_100431AC8, CBUUID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100024A2C(&qword_100431AB8, &qword_10039ABF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100374440;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v21;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_1003499C4(inited);
    swift_setDeallocating();
    sub_1000059A8(inited + 32, &qword_100431AC0, &unk_10039AC00);
    v22 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v7 scanForPeripheralsWithServices:isa options:v22];
  }
}

uint64_t sub_1003463DC(uint64_t a1)
{
  v55 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v1 - 8);
  v68 = v1;
  __chkstk_darwin(v1);
  v65 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v10 = type metadata accessor for ALScanAdv(0);
  __chkstk_darwin(v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ALBtAdvertisement();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v59 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v56 = &v53 - v18;
  v58 = v19;
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0xE100000000000000;
    v24 = 95;
  }

  aBlock = v24;
  v71 = v26;

  v27._countAndFlagsBits = 0x756F662E7462632ELL;
  v27._object = 0xEA0000000000646ELL;
  String.append(_:)(v27);

  String.utf8CString.getter();

  v57 = os_transaction_create();

  sub_100349AF4(v55, v12);
  ALBtAdvertisement.init()();
  LOBYTE(aBlock) = v12[12];
  ALBtAdvertisement._rssidB.setter();
  LOBYTE(aBlock) = v12[20];
  ALBtAdvertisement._channel.setter();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();

  ALBtAdvertisement._identifier.setter();
  sub_10000A0A4(&v12[*(v10 + 36)], v9, &qword_100431AA0, &qword_10039A210);
  ALBtAdvertisement._service.setter();
  sub_100349B58(v12);
  scanlog.getter(v6);
  v28 = *(v14 + 16);
  v29 = v56;
  v28(v56, v21, v13);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53 = v6;
    v54 = v28;
    aBlock = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_10000234C(0xD000000000000012, 0x80000001003B20B0, &aBlock);
    *(v32 + 12) = 2080;
    v34 = ALBtAdvertisement.description.getter();
    v35 = v29;
    v37 = v36;
    v38 = *(v14 + 8);
    v55 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = v38;
    (v38)(v35, v13);
    v39 = sub_10000234C(v34, v37, &aBlock);

    *(v32 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s, %s", v32, 0x16u);
    swift_arrayDestroy();
    v28 = v54;

    v40 = (*(v60 + 8))(v53, v61);
  }

  else
  {

    v41 = *(v14 + 8);
    v55 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = v41;
    (v41)(v29, v13);
    v40 = (*(v60 + 8))(v6, v61);
  }

  v42 = v62;
  v43 = (*((swift_isaMask & *v62) + 0xC8))(v40);
  v44 = v59;
  v28(v59, v21, v13);
  v45 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v46 = swift_allocObject();
  v61 = v21;
  *(v46 + 16) = v57;
  *(v46 + 24) = v42;
  (*(v14 + 32))(v46 + v45, v44, v13);
  v74 = sub_100349BB4;
  v75 = v46;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_100003EE4;
  v73 = &unk_1004086E0;
  v47 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v48 = v42;
  v49 = v63;
  static DispatchQoS.unspecified.getter();
  v69 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520, &protocol conformance descriptor for [A]);
  v50 = v65;
  v51 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  swift_unknownObjectRelease();

  (*(v67 + 8))(v50, v51);
  (*(v64 + 8))(v49, v66);
  (v56)(v61, v13);
}

uint64_t sub_100346C54(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  ALBtAdvertisement.init()();
  v7[12] = *(a1 + 12);
  ALBtAdvertisement._rssidB.setter();
  v7[8] = *(a1 + 20);
  ALBtAdvertisement._channel.setter();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();

  ALBtAdvertisement._identifier.setter();
  v5 = type metadata accessor for ALScanAdv(0);
  sub_10000A0A4(a1 + *(v5 + 36), v4, &qword_100431AA0, &qword_10039A210);
  ALBtAdvertisement._service.setter();
  return sub_100349B58(a1);
}

id sub_100346E94(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  scanlog.getter(&v37 - v12);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  p_align = &stru_100415FE8.align;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v37 = v11;
    v19 = v4;
    v20 = v8;
    v21 = v2;
    v22 = v5;
    v23 = v18;
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_10000234C(0xD000000000000020, 0x80000001003B20D0, &v38);
    *(v23 + 12) = 2048;
    *(v23 + 14) = [v14 state];

    _os_log_impl(&_mh_execute_header, v15, v16, "%s state:%ld", v23, 0x16u);
    sub_100002580(v24);
    p_align = (&stru_100415FE8 + 24);

    v5 = v22;
    v2 = v21;
    v8 = v20;
    v4 = v19;
    v11 = v37;
  }

  else
  {
  }

  v25 = *(v5 + 8);
  v25(v13, v4);
  result = [v14 *(p_align + 260)];
  if (result >= 5)
  {
    if (result == 5)
    {
      scanlog.getter(v11);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "powered on", v29, 2u);
      }

      v30 = (v25)(v11, v4);
      return (*((swift_isaMask & *v2) + 0x130))(v30);
    }

    else
    {
      v31 = p_align;
      scanlog.getter(v8);
      v32 = v14;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = [v32 *(v31 + 260)];

        _os_log_impl(&_mh_execute_header, v33, v34, "unknown central manager state: %ld", v36, 0xCu);
      }

      else
      {

        v33 = v32;
      }

      return (v25)(v8, v4);
    }
  }

  return result;
}

void *sub_10034730C()
{
  v1 = OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__btDiscovery;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100347358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__btDiscovery;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100347410()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = 95;
  }

  v3._countAndFlagsBits = 0x2E6E61637374622ELL;
  v3._object = 0xED0000646E756F66;
  String.append(_:)(v3);

  return v2;
}

uint64_t sub_1003474E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel);

  return v1;
}

char *sub_100347568(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__btDiscovery) = 0;
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE100000000000000;
    v9 = 95;
  }

  v12 = (v3 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel);

  v13._countAndFlagsBits = 0x2E6E61637374622ELL;
  v13._object = 0xED0000646E756F66;
  String.append(_:)(v13);

  *v12 = v9;
  v12[1] = v11;
  v14 = a1;

  v15 = sub_100343514(v14, a2, a3);
  v16 = *((swift_isaMask & *v15) + 0x130);
  v17 = v15;
  v16();

  return v17;
}

uint64_t sub_1003476FC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v56 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v51 - v10;
  scanlog.getter(v51 - v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "CBDiscovery scan request start", v14, 2u);
  }

  v15 = *(v6 + 8);
  v15(v11, v5);
  v16 = [objc_allocWithZone(CBDiscovery) init];
  v17 = (*((swift_isaMask & *v1) + 0x160))(v16);
  v18 = (*((swift_isaMask & *v1) + 0x158))(v17);
  if (!v18)
  {
    scanlog.getter(v9);
    Logger._fault(_:function:file:line:)(sub_10034A724, 0, "regScan()", 9, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);
    return (v15)(v9, v5);
  }

  v19 = v18;
  v20 = *((swift_isaMask & *v1) + 0xC8);
  v21 = (swift_isaMask & *v1) + 200;
  v22 = v20();
  [v19 setDispatchQueue:v22];

  [v19 addDiscoveryType:23];
  [v19 setDiscoveryFlags:0x202000000];
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  v65 = sub_100349FA0;
  v66 = v23;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100004830;
  v64 = &unk_100408730;
  v24 = _Block_copy(&aBlock);
  v25 = v1;

  [v19 setDeviceFoundHandler:v24];
  _Block_release(v24);
  v26 = [v19 setBleScanRate:50];
  v27 = (*((swift_isaMask & *v25) + 0x98))(v26);
  v28 = v27;
  if (v27 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {

    v41 = (v20)(v42);
LABEL_16:
    v43 = v41;
    v44 = swift_allocObject();
    *(v44 + 16) = v19;
    *(v44 + 24) = v25;
    v65 = sub_10034A028;
    v66 = v44;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100003EE4;
    v64 = &unk_100408780;
    v45 = _Block_copy(&aBlock);
    v46 = v25;
    v47 = v19;
    v48 = v54;
    static DispatchQoS.unspecified.getter();
    v60 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520, &protocol conformance descriptor for [A]);
    v49 = v56;
    v50 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v58 + 8))(v49, v50);
    (*(v55 + 8))(v48, v57);
  }

  aBlock = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v51[0] = v25;
    v51[1] = v21;
    v52 = v20;
    v53 = v19;
    v31 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v28 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v34 = [objc_allocWithZone(CBServiceUUIDParamInfo) init];
      v35 = [v33 data];
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005B2C(v36, v38);
      [v34 setServiceUUID:isa];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v29 != v31);

    v19 = v53;
    v25 = v51[0];
    v41 = (v52)(v40);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100347ED0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  scanlog.getter(&v16 - v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "cbdiscovery starting boost scan", v11, 2u);
  }

  v12 = *(v3 + 8);
  v13 = v12(v8, v2);
  v14 = (*((swift_isaMask & *v1) + 0x158))(v13);
  if (v14)
  {
    v15 = v14;
    [v14 setBleScanRate:50];
  }

  else
  {
    scanlog.getter(v6);
    Logger._fault(_:function:file:line:)(sub_10034A724, 0, "startBoostScan()", 16, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);
    v12(v6, v2);
  }
}

void sub_100348104()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  scanlog.getter(&v16 - v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "cbdiscovery stopping boost scan", v11, 2u);
  }

  v12 = *(v3 + 8);
  v13 = v12(v8, v2);
  v14 = (*((swift_isaMask & *v1) + 0x158))(v13);
  if (v14)
  {
    v15 = v14;
    [v14 setBleScanRate:0];
  }

  else
  {
    scanlog.getter(v6);
    Logger._fault(_:function:file:line:)(sub_100336768, 0, "stopBoostScan()", 15, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);
    v12(v6, v2);
  }
}

uint64_t sub_100348338(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for ALScanAdv(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ALBtAdvertisement();
  v46 = *(v53 - 8);
  v18 = *(v46 + 64);
  v19 = __chkstk_darwin(v53);
  v42 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  String.utf8CString.getter();
  v45 = os_transaction_create();

  v22 = a1;
  sub_100344ED8(v22, v17);
  ALBtAdvertisement.init()();
  LOBYTE(aBlock[0]) = v17[12];
  ALBtAdvertisement._rssidB.setter();
  LOBYTE(aBlock[0]) = v17[20];
  ALBtAdvertisement._channel.setter();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();

  ALBtAdvertisement._identifier.setter();
  sub_10000A0A4(&v17[*(v15 + 44)], v13, &qword_100431AA0, &qword_10039A210);
  ALBtAdvertisement._service.setter();
  sub_100349B58(v17);
  scanlog.getter(v10);
  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "onDeviceFound,%@", v26, 0xCu);
    sub_1000059A8(v27, &unk_10042F020, &qword_100399AE0);
  }

  v29 = (*(v43 + 8))(v10, v44);
  v44 = (*((swift_isaMask & *v2) + 0xC8))(v29);
  v30 = v46;
  v31 = v42;
  v32 = v53;
  (*(v46 + 16))(v42, v21, v53);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  *(v34 + 24) = v2;
  (*(v30 + 32))(v34 + v33, v31, v32);
  aBlock[4] = sub_10034A708;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_1004087D0;
  v35 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v36 = v2;
  v37 = v47;
  static DispatchQoS.unspecified.getter();
  v54 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520, &protocol conformance descriptor for [A]);
  v38 = v50;
  v39 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v44;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  swift_unknownObjectRelease();

  (*(v51 + 8))(v38, v39);
  (*(v48 + 8))(v37, v49);
  (*(v30 + 8))(v21, v53);
}

uint64_t sub_100348A20(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  if (!a1)
  {
    return result;
  }

  v30 = result;
  swift_getErrorValue();
  swift_errorRetain();
  result = dispatch thunk of Error._code.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result == -71142)
  {
    scanlog.getter(v13);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "onCBError,interrupted,%{public}@", v24, 0xCu);
      sub_1000059A8(v25, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }

    v16 = v13;
  }

  else if (result == -71148)
  {
    scanlog.getter(v16);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "onCBError,bluetoothdUnloaded,%{public}@", v19, 0xCu);
      sub_1000059A8(v20, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }
  }

  else
  {
    v27 = scanlog.getter(v10);
    __chkstk_darwin(v27);
    v28 = a3;
    Logger._fault(_:function:file:line:)(a2, (&v29 - 4), "onCBError(_:)", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);

    v16 = v10;
  }

  return (*(v7 + 8))(v16, v30);
}

uint64_t sub_100348E1C()
{
}

id sub_100348E78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100348F00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(&qword_100431D88, &unk_10039ACF0);
  v10 = *(type metadata accessor for ALScanServices() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ALScanServices() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1003490D8()
{
  v57 = type metadata accessor for ALCBUUID();
  v50 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ALScanService();
  v1 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  __chkstk_darwin(v3 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for ALScanServices();
  v59 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = type metadata accessor for Logger();
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(**sub_10031EA68() + 248);

  v16 = v14(v15);

  if (!v16)
  {
    return &_swiftEmptyArrayStorage;
  }

  v52 = v11;
  scanlog.getter(v13);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v58 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v61 = v51;
    *v20 = 136315138;
    v21 = Array.description.getter();
    v23 = sub_10000234C(v21, v22, &v61);

    *(v20 + 4) = v23;
    v16 = v58;
    _os_log_impl(&_mh_execute_header, v17, v18, "found requests %s", v20, 0xCu);
    sub_100002580(v51);
  }

  result = (v60[1])(v13, v52);
  if (!*(v16 + 16))
  {
LABEL_21:

    return &_swiftEmptyArrayStorage;
  }

  v25 = *(v16 + 16);
  v49 = v1;
  v26 = 0;
  v27 = (v59 + 48);
  v28 = (v59 + 32);
  v29 = v16 + 40;
  v60 = &_swiftEmptyArrayStorage;
  v52 = v10;
  do
  {
    if (v26 >= *(v16 + 16))
    {
      __break(1u);
      return result;
    }

    ALScanServices.init(rawValue:)();
    if ((*v27)(v5, 1, v6) == 1)
    {
      result = sub_1000059A8(v5, &qword_100431AA0, &qword_10039A210);
    }

    else
    {
      v30 = *v28;
      (*v28)(v10, v5, v6);
      v31 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100348F00(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v60 = v31;
      if (v33 >= v32 >> 1)
      {
        v60 = sub_100348F00((v32 > 1), v33 + 1, 1, v60);
      }

      v34 = v59;
      v35 = v60;
      v60[2] = v33 + 1;
      v36 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33;
      v10 = v52;
      result = (v30)(v36, v52, v6);
    }

    ++v26;
    v29 += 16;
    v16 = v58;
  }

  while (v25 != v26);

  v61 = &_swiftEmptyArrayStorage;
  v37 = v60[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  v38 = *(v59 + 16);
  v39 = v60 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v51 = *(v59 + 72);
  v52 = v38;
  v40 = (v49 + 8);
  v41 = (v50 + 8);
  v58 = v6;
  v59 += 16;
  v42 = (v59 - 8);
  do
  {
    v43 = v53;
    v44 = v58;
    (v52)(v53, v39, v58);
    v45 = v54;
    ALScanServices.service.getter();
    v46 = v56;
    ALScanService.uuid.getter();
    (*v40)(v45, v55);
    ALCBUUID.cbuuid.getter();
    (*v41)(v46, v57);
    (*v42)(v43, v44);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v61[2] >= v61[3] >> 1)
    {
      v50 = v61[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v39 += v51;
    --v37;
  }

  while (v37);
  v47 = v61;

  return v47;
}

uint64_t sub_100349860()
{
  v0._object = 0x80000001003B1B20;
  v0._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x2C726F7272652CLL;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t type metadata accessor for ALScanAdv(uint64_t a1)
{
  result = qword_10048C0C0;
  if (!qword_10048C0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100349954(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003499C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_100430508, &unk_10039ACE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A0A4(v4, &v13, &qword_100431AC0, &unk_10039AC00);
      v5 = v13;
      v6 = v14;
      result = sub_10031DC00(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100323E60(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100349AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ALScanAdv(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100349B58(uint64_t a1)
{
  v2 = type metadata accessor for ALScanAdv(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100349BE0(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for ALScanAdv(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  if (([a3 integerValue] & 0x8000000000000000) != 0 && objc_msgSend(a3, "integerValue") >= -120)
  {
    v32 = v3;
    scanlog.getter(v16);
    v24 = a3;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v31 = a1;
      v28 = v27;
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v24;
      *v29 = v24;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "found advertisement with rssi:%@", v28, 0xCu);
      sub_1000059A8(v29, &unk_10042F020, &qword_100399AE0);

      a1 = v31;
    }

    (*(v11 + 8))(v16, v10);

    sub_100344B20(a2, [v24 intValue], a1, v9);
    (*((swift_isaMask & *v32) + 0x170))(v9);
    return sub_100349B58(v9);
  }

  else
  {
    scanlog.getter(v14);
    v17 = a3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "cbcentral invalid rssi: %@", v20, 0xCu);
      sub_1000059A8(v21, &unk_10042F020, &qword_100399AE0);
    }

    return (*(v11 + 8))(v14, v10);
  }
}

void sub_100349FA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = objc_autoreleasePoolPush();
  (*((swift_isaMask & *v3) + 0x170))(a1);

  objc_autoreleasePoolPop(v4);
}

void sub_10034A028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v6[4] = sub_10034A698;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1003367F8;
  v6[3] = &unk_100408840;
  v4 = _Block_copy(v6);
  v5 = v2;

  [v1 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_10034A100()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10034A1CC()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 24);
  sub_100024A2C(&unk_100431430, &unk_10039A880);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100374440;
  (*(v2 + 16))(v5 + v3, v0 + v3, v1);
  (*((swift_isaMask & *v4) + 0x118))(v5, 1);
}

uint64_t sub_10034A314()
{
  _StringGuts.grow(_:)(23);
  v0._object = 0x80000001003B2240;
  v0._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v0);
  swift_getErrorValue();
  dispatch thunk of Error._code.getter();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 44;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void sub_10034A488(uint64_t a1)
{
  sub_10034A574(319);
  if (v1 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418640, &type metadata for Int32);
    if (v2 <= 0x3F)
    {
      sub_1000B2498(319, &qword_100431C80, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_10034A5D8(319);
        if (v4 <= 0x3F)
        {
          sub_10034A640(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10034A574(uint64_t a1)
{
  if (!qword_100431C68)
  {
    sub_100024BB0(&unk_100431C70, &unk_10039AC90);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100431C68);
    }
  }
}

void sub_10034A5D8(uint64_t a1)
{
  if (!qword_100431C88)
  {
    sub_10000ABCC(255, &qword_100431C90, CBPeripheral_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100431C88);
    }
  }
}

void sub_10034A640(uint64_t a1)
{
  if (!qword_100431C98)
  {
    type metadata accessor for ALScanServices();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100431C98);
    }
  }
}

uint64_t sub_10034A728(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10034A780(a1, a2, a3);
  return v6;
}

void *sub_10034A780(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  v6 = (v3 + 24);
  *(v3 + 32) = 0;
  v7 = (v3 + 32);
  *(v3 + 40) = 0;
  v8 = (v3 + 40);
  *(v3 + 16) = a1;
  v18 = a1;
  v9 = sub_100334FA4();
  v10 = *(**v9 + 104);

  v10(v19, 0x616C756D69535442, 0xEB00000000646574, &type metadata for Bool);

  if (LOBYTE(v19[0]) == 2 || (v19[0] & 1) == 0)
  {
    v12 = *(**v9 + 104);

    v12(v19, 0x79616C7065525442, 0xED00005653436465, &type metadata for Bool);

    if (LOBYTE(v19[0]) == 2 || (v19[0] & 1) == 0)
    {
      v14 = *(**v9 + 104);

      v14(v19, 0x726F43686365654CLL, 0xEB00000000544265, &type metadata for Bool);

      if (LOBYTE(v19[0]) == 2 || (v19[0] & 1) != 0)
      {
        type metadata accessor for ALLeechCoreBluetooth();
        swift_beginAccess();
        v15 = sub_100336084(*(v3 + 16), a2, a3);

        swift_beginAccess();
        *v8 = v15;
      }

      else
      {
      }
    }

    else
    {
      type metadata accessor for ALBtReplayerCSV();
      v13 = sub_10032401C(v18, a2, a3);
      swift_beginAccess();
      *v7 = v13;
    }
  }

  else
  {
    type metadata accessor for ALBtSimulated();
    v11 = sub_10035C5E4(v18, a2, a3);
    swift_beginAccess();
    *v6 = v11;
  }

  return v4;
}

uint64_t sub_10034AA40()
{

  return v0;
}

uint64_t sub_10034AA78()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

void *sub_10034AAC8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_10034AB0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void *sub_10034AB54()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_10034AB98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10034ABF0(a1, a2, a3);
  return v6;
}

id *sub_10034ABF0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[3] = 0;
  v5 = v3 + 3;
  v3[4] = 0;
  v6 = v3 + 4;
  v3[2] = a1;
  v7 = a1;
  v8 = sub_100334FA4();
  v9 = *(**v8 + 104);

  v9(v17, 0xD000000000000011, 0x80000001003B2260, &type metadata for Bool);

  if (LOBYTE(v17[0]) == 2 || (v17[0] & 1) != 0)
  {
    type metadata accessor for ALCentralCoreBluetooth();
    swift_beginAccess();
    v10 = sub_100345398(v3[2], a2, a3);

    swift_beginAccess();
    v11 = *v5;
    *v5 = v10;
  }

  else
  {
    v13 = *(**v8 + 104);

    v13(v17, 0xD000000000000013, 0x80000001003B2280, &type metadata for Bool);

    if (LOBYTE(v17[0]) == 2 || (v17[0] & 1) == 0)
    {

      return v4;
    }

    type metadata accessor for ALDiscoveryCoreBluetooth();
    v14 = sub_10034751C(v7, a2, a3);
    swift_beginAccess();
    v11 = *v6;
    *v6 = v14;
  }

  return v4;
}

uint64_t sub_10034AE18()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

ALDaemon::ALWiFiScanRow::Band_optional __swiftcall ALWiFiScanRow.Band.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int sub_10034AF78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10034AFF0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10034B16C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034B1B4()
{
  result = qword_100431FB0;
  if (!qword_100431FB0)
  {
    sub_100024BB0(&qword_10042F720, &qword_100399AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FB0);
  }

  return result;
}

unint64_t sub_10034B2CC()
{
  result = qword_100431FB8;
  if (!qword_100431FB8)
  {
    sub_100024BB0(&qword_10042F720, &qword_100399AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FB8);
  }

  return result;
}

void (*ALWiFiScanRow._mac.modify(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034B1B4();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return sub_10034B4B8;
}

void sub_10034B4B8(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t ALWiFiScanRow._ssid.getter()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034B890();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10034B6A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034B890();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10034B7B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_10034B890()
{
  result = qword_100431FC0;
  if (!qword_100431FC0)
  {
    sub_100024BB0(&qword_1004302B0, &qword_10039A268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FC0);
  }

  return result;
}

uint64_t ALWiFiScanRow._ssid.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034B9EC@<X0>(void *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_10000D9B8(a3, a3[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a4 = 0;
  return result;
}

uint64_t sub_10034BAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034BB84();
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_10034BB84()
{
  result = qword_100431FC8;
  if (!qword_100431FC8)
  {
    sub_100024BB0(&qword_1004302B0, &qword_10039A268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FC8);
  }

  return result;
}

void (*ALWiFiScanRow._ssid.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034B890();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_10034BD68;
}

void sub_10034BD68(void **a1, char a2)
{
  v3 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

unint64_t sub_10034BF04()
{
  result = qword_100431FD0;
  if (!qword_100431FD0)
  {
    sub_100024BB0(&qword_100431FD8, &qword_10039ADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FD0);
  }

  return result;
}

unint64_t sub_10034C004()
{
  result = qword_100431FE0;
  if (!qword_100431FE0)
  {
    sub_100024BB0(&qword_100431FD8, &qword_10039ADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FE0);
  }

  return result;
}

void (*ALWiFiScanRow._rssiDb.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034BF04();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034C1E4;
}

void sub_10034C1E4(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034C3AC()
{
  result = qword_100431FF8;
  if (!qword_100431FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FF8);
  }

  return result;
}

uint64_t sub_10034C420@<X0>(void *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a3 = 0;
  return result;
}

uint64_t sub_10034C560(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(&qword_100431FF0, &qword_10039AE28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034C5D8()
{
  result = qword_100432008;
  if (!qword_100432008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432008);
  }

  return result;
}

void (*ALWiFiScanRow._mode.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034C560(&qword_100431FE8, sub_10034C3AC, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  return sub_10034C7B0;
}

void sub_10034C7B0(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034C938@<X0>(void *a2@<X1>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t (*a6)(void)@<X6>, _BYTE *a7@<X8>)
{
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  sub_100024A2C(a4, a5);
  a6();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a7 = 0;
  return result;
}

void (*ALWiFiScanRow._channel.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034BF04();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034CB9C;
}

void sub_10034CB9C(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034CCE4()
{
  result = qword_100432010;
  if (!qword_100432010)
  {
    sub_100024BB0(&qword_100432018, &qword_10039AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432010);
  }

  return result;
}

unint64_t sub_10034CDE4()
{
  result = qword_100432020;
  if (!qword_100432020)
  {
    sub_100024BB0(&qword_100432018, &qword_10039AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432020);
  }

  return result;
}

void (*ALWiFiScanRow._ageSec.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034CCE4();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034CFC4;
}

void sub_10034CFC4(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034D0E4()
{
  result = qword_100432028;
  if (!qword_100432028)
  {
    sub_100024BB0(&qword_100432030, &qword_10039AEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432028);
  }

  return result;
}

uint64_t sub_10034D18C(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034D260();
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_10034D260()
{
  result = qword_100432038;
  if (!qword_100432038)
  {
    sub_100024BB0(&qword_100432030, &qword_10039AEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432038);
  }

  return result;
}

void (*ALWiFiScanRow._isAppleHotspot.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_10034D438;
}

void sub_10034D438(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034D51C(uint64_t a1)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

uint64_t sub_10034D628@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v5;
  return result;
}

uint64_t sub_10034D774(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034D844@<X0>(void *a2@<X1>, _BYTE *a4@<X8>)
{
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a4 = 0;
  return result;
}

void (*ALWiFiScanRow._isMoving.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_10034DA84;
}

void sub_10034DA84(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034DBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a4(a2, a3, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10034DD1C@<X0>(uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(uint64_t, uint64_t, void *)@<X6>, _BYTE *a6@<X8>)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a5(a3, a4, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  *a6 = v11;
  return result;
}

uint64_t sub_10034DE84(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034DF4C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(&qword_100432048, &qword_10039AF08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034DFC4()
{
  result = qword_100432050;
  if (!qword_100432050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432050);
  }

  return result;
}

uint64_t sub_10034E038(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034E0FC@<X0>(void *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a3 = 0;
  return result;
}

uint64_t sub_10034E1D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a6(a4, a5, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_10034E310()
{
  result = qword_100432060;
  if (!qword_100432060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432060);
  }

  return result;
}

void (*ALWiFiScanRow._band.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034DF4C(&qword_100432040, sub_10034DFC4, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  return sub_10034E4E8;
}

void sub_10034E4E8(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034E5E0(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v4 | (v5 << 32);
}

uint64_t sub_10034E718@<X0>(uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a3();
  PersistentModel.getValue<A>(forKey:)();

  *a4 = v7;
  *(a4 + 4) = v8;
  return result;
}

uint64_t sub_10034E85C(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034EA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*ALWiFiScanRow._frequencyKhz.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034BF04();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034EC90;
}

void sub_10034EC90(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

double ALWiFiScanRow._cfAbsoluteTimeSec.getter()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10034EE7C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  PersistentModel.getValue<A>(forKey:)();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10034EF88(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ALWiFiScanRow._cfAbsoluteTimeSec.setter(double a1)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*ALWiFiScanRow._cfAbsoluteTimeSec.modify(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_10034F30C;
}

void sub_10034F30C(void **a1)
{
  v1 = *a1;
  *(*a1 + 1) = *(*a1 + 2);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034F410(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

uint64_t sub_10034F53C@<X0>(uint64_t *a1@<X0>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a3();
  PersistentModel.getValue<A>(forKey:)();

  *a4 = v7;
  *(a4 + 8) = v8;
  return result;
}

uint64_t sub_10034F680(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_10034F74C()
{
  result = qword_100432068;
  if (!qword_100432068)
  {
    sub_100024BB0(&qword_100432070, &qword_10039AF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432068);
  }

  return result;
}

uint64_t sub_10034F7E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034F8E4@<X0>(void *a3@<X2>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t (*a7)(uint64_t, uint64_t)@<X7>, _BYTE *a8@<X8>)
{
  sub_10000D9B8(a3, a3[3]);
  swift_getKeyPath();
  v12 = sub_100024A2C(a5, a6);
  a7(v12, v13);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a8 = 0;
  return result;
}

uint64_t sub_10034F9B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a5(v6, v7);
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_10034FABC()
{
  result = qword_100432078;
  if (!qword_100432078)
  {
    sub_100024BB0(&qword_100432070, &qword_10039AF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432078);
  }

  return result;
}

void (*ALWiFiScanRow._machContinuousTimeSec.modify(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  sub_10034F74C();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return sub_10034FCA8;
}

void sub_10034FCA8(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t ALWiFiScanRow.__allocating_init(mac:ssid:rssiDb:mode:channel:ageSec:isAppleHotspot:isMoving:band:frequencyKhz:cfAbsoluteTimeSec:machContinuousTimeSec:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, char a18, char *a19, int a20, char a21, double a22, char a23, uint64_t a24, char a25)
{
  v25 = swift_allocObject();
  *(v25 + 56) = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  *(v25 + 64) = swift_getOpaqueTypeConformance2();
  sub_10000DA60((v25 + 32));
  static PersistentModel.createBackingData<A>()();
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  sub_10034B2CC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 16) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 17) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
  sub_10034C004();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 18) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 19) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 20) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432018, &qword_10039AE80);
  sub_10034CDE4();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 21) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 22) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 23) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 24) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 25) = 0;
  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8((v25 + 32), *(v25 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432070, &qword_10039AF88);
  sub_10034FABC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 26) = 0;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v25;
}

void *ALWiFiScanRow.init(mac:ssid:rssiDb:mode:channel:ageSec:isAppleHotspot:isMoving:band:frequencyKhz:cfAbsoluteTimeSec:machContinuousTimeSec:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, char a18, char *a19, int a20, char a21, double a22, char a23, uint64_t a24, char a25)
{
  v26 = v25;
  *(v25 + 56) = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  *(v25 + 64) = swift_getOpaqueTypeConformance2();
  sub_10000DA60((v25 + 32));
  static PersistentModel.createBackingData<A>()();
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  sub_10034B2CC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 16) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 17) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
  sub_10034C004();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 18) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 19) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 20) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432018, &qword_10039AE80);
  sub_10034CDE4();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 21) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 22) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 23) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 24) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 25) = 0;
  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8((v26 + 32), *(v26 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432070, &qword_10039AF88);
  sub_10034FABC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v25 + 26) = 0;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v25;
}

uint64_t sub_10035141C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ALWiFiScanRow(0);
  a1[3] = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(a1);
  return static PersistentModel.createBackingData<A>()();
}

uint64_t sub_10035153C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_10000D9FC(v3 + 32, a2);
}

uint64_t sub_100351588(uint64_t a1, uint64_t *a2)
{
  sub_10000D9FC(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_100002580((v3 + 32));
  sub_10002351C(v5, v3 + 32);
  return swift_endAccess();
}

uint64_t ALWiFiScanRow.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_100002580((v1 + 32));
  sub_10002351C(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t (*ALWiFiScanRow.persistentBackingData.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 32, v4);
  return sub_1003516D4;
}

uint64_t ALWiFiScanRow.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ALWiFiScanRow.init(backingData:)(a1);
  return v2;
}

void *ALWiFiScanRow.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  *(v1 + 56) = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  sub_10000DA60((v1 + 32));
  static PersistentModel.createBackingData<A>()();
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  sub_10034B2CC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 16) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 17) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
  sub_10034C004();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 18) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 19) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 20) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432018, &qword_10039AE80);
  sub_10034CDE4();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 21) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 22) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 23) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310, &protocol conformance descriptor for <A> A?);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 24) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 25) = 0;
  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432070, &qword_10039AF88);
  sub_10034FABC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 26) = 0;
  ObservationRegistrar.init()();
  *(v1 + 23) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100002580((v1 + 32));
  sub_10002351C(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t ALWiFiScanRow.deinit()
{
  sub_100002580((v0 + 32));
  v1 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ALWiFiScanRow.__deallocating_deinit()
{
  sub_100002580(v0 + 4);
  v1 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100351F34(uint64_t a1, void *a2)
{
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_100351FBC()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1003520C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_1003521CC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352298(uint64_t a1)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352360(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_1003523FC(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_100352560;
}

void sub_100352560(void **a1)
{
  v1 = *a1;
  *(*a1 + 1) = *(*a1 + 2);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10035264C(void *a1, double a2, uint64_t a3, uint64_t a4)
{
  sub_10000D9B8(a1, a1[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

double sub_1003526D0()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_1003527D4@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1003528E0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1003529B8(double a1)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352A8C(double a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  sub_10034B16C(a4, a5, a6);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_100352B20(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_100352C84;
}

void sub_100352C84(void **a1)
{
  v1 = *a1;
  *(*a1 + 1) = *(*a1 + 2);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_100352DCC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352EB4(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*sub_100352F78(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_1003530D0;
}

void sub_1003530D0(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_1003531C4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_10035326C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v3;
}

uint64_t sub_10035337C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *a4 = v6;
  return result;
}

uint64_t sub_1003534CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_100353568(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_1003536C0;
}

void sub_1003536C0(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_100353798(char a1, void *a2)
{
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_100353820()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100353924@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100353A30(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100353B00(char a1)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100353BCC(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_100353C68(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_100353DC0;
}

void sub_100353DC0(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t *sub_100353E98(uint64_t a1, char a2, char a3, char a4, double a5)
{
  v5 = swift_allocObject();
  v5[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  v5[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  sub_10000D9B8(v5 + 2, v5[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v5 + 2, v5[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v5 + 2, v5[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v5 + 2, v5[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v5 + 2, v5[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v5;
}

uint64_t *sub_10035414C(uint64_t a1, char a2, char a3, char a4, double a5)
{
  v6 = v5;
  v5[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  v5[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  sub_10000D9B8(v6 + 2, v6[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v6 + 2, v6[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v6 + 2, v6[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v6 + 2, v6[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10000D9B8(v6 + 2, v6[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v5;
}

uint64_t sub_100354418@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ALBTScanRow(0);
  a1[3] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(a1);
  return static PersistentModel.createBackingData<A>()();
}

uint64_t sub_10035453C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_10000D9FC(v3 + 16, a2);
}

uint64_t sub_100354588(uint64_t a1, uint64_t *a2)
{
  sub_10000D9FC(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_100002580((v3 + 16));
  sub_10002351C(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t ALBTScanRow.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_100002580((v1 + 16));
  sub_10002351C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*ALBTScanRow.persistentBackingData.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 16, v4);
  return sub_1003546D4;
}

uint64_t *ALBTScanRow.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  sub_100002580(v2 + 2);
  sub_10002351C(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t *ALBTScanRow.init(backingData:)(__int128 *a1)
{
  v1[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v1 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  sub_100002580(v1 + 2);
  sub_10002351C(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t ALBTScanRow.deinit()
{
  sub_100002580((v0 + 16));
  v1 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ALBTScanRow.__deallocating_deinit()
{
  sub_100002580(v0 + 2);
  v1 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100354BF8(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_100354C88()
{
  v0 = swift_allocObject();
  sub_100354CC0();
  return v0;
}

void sub_100354CC0()
{
  v1 = type metadata accessor for Logger();
  v85 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v76 = (&v67 - v5);
  v6 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v6 - 8);
  v86 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModelConfiguration();
  v84 = *(v8 - 8);
  __chkstk_darwin(v8);
  v83 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v77 = v0;
  v0[3] = 0;
  v0[2] = 0;
  v75 = v0 + 2;
  v68 = v0 + 3;
  v0[4] = 0;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 URLsForDirectory:5 inDomains:1];

  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v80 = v1;
  v17 = *(v11 + 16);
  v18 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v74 = v10;
  v72 = v11 + 16;
  v81 = v17;
  v17(&v67 - v13, v18, v10);

  __chkstk_darwin(v19);
  v82 = &v67 - v13;
  v73 = &v67 - v13;
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = objc_opt_self();
  v21 = [v20 mainBundle];
  v22 = [v21 infoDictionary];

  if (!v22)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v71 = v11;
  v78 = v4;
  v79 = v8;
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v23 + 16) || (v24 = sub_10031DC00(0xD000000000000012, 0x80000001003B2340), (v25 & 1) == 0))
  {
LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  sub_100002524(*(v23 + 56) + 32 * v24, v89);

  sub_100323E60(v89, &v90);
  swift_dynamicCast();
  v26 = v87;
  v27 = v88;
  v69 = sub_100334FA4();
  v28 = *(**v69 + 104);

  v28(&v90, 0xD000000000000010, 0x80000001003B2360, &type metadata for String);

  if (!*(&v90 + 1))
  {
    *&v89[0] = v26;
    *(&v89[0] + 1) = v27;

    v30._countAndFlagsBits = 0x336C71732E64735FLL;
    v30._object = 0xE800000000000000;
    String.append(_:)(v30);
  }

  v31 = v74;
  __chkstk_darwin(v29);
  v32 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = &v67 - v32;
  URL.appendingPathComponent(_:)();

  v33 = [v20 mainBundle];
  v34 = [v33 bundleIdentifier];

  v70 = &v67;
  v74 = &v67;
  if (v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __chkstk_darwin(v35);
  v81(&v67 - v32, v86, v31);
  static ModelConfiguration.CloudKitDatabase.automatic.getter();
  v36 = v83;
  ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  type metadata accessor for ModelContainer();
  sub_100024A2C(&qword_1004320A0, &qword_10039B068);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10036C830;
  v38 = type metadata accessor for ALWiFiScanRow(0);
  v39 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = type metadata accessor for ALBTScanRow(0);
  v41 = sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);
  *(v37 + 48) = v40;
  *(v37 + 56) = v41;
  sub_100024A2C(&qword_1004320A8, &qword_10039B070);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100374440;
  v43 = v79;
  *(v42 + 56) = v79;
  *(v42 + 64) = sub_10034B16C(&qword_1004320B0, &type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
  v44 = sub_10000DA60((v42 + 32));
  (*(v84 + 16))(v44, v36, v43);
  v45 = ModelContainer.__allocating_init(for:configurations:)();
  v46 = v75;
  swift_beginAccess();
  *v46 = v45;

  v47 = v80;
  v48 = v78;
  swift_beginAccess();
  if (*v46)
  {
    type metadata accessor for ModelContext();
    swift_allocObject();

    v49 = ModelContext.init(_:)();
    v50 = v68;
    swift_beginAccess();
    *v50 = v49;
  }

  else
  {
    v51 = v76;
    corelog.getter(v76);
    Logger._fault(_:function:file:line:)(sub_100355948, 0, "init()", 6, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALDatabase.swift", 68, 2);
    (*(v85 + 8))(v51, v47);
  }

  v52 = corelog.getter(v48);
  v76 = &v67;
  __chkstk_darwin(v52);
  v53 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81(v53, v86, v31);
  v54 = Logger.logObject.getter();
  v55 = v31;
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v89[0] = v58;
    *v57 = 136446210;
    v59 = URL.absoluteString.getter();
    v61 = v60;
    v62 = *(v71 + 8);
    v62(v53, v55);
    v63 = sub_10000234C(v59, v61, v89);

    *(v57 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v54, v56, "Database file in use: %{public}s", v57, 0xCu);
    sub_100002580(v58);

    v43 = v79;
    (*(v85 + 8))(v78, v80);
  }

  else
  {

    v62 = *(v71 + 8);
    v62(&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v55);
    (*(v85 + 8))(v48, v47);
  }

  v64 = *(**v69 + 104);

  v64(v89, 0xD000000000000016, 0x80000001003B23D0, &type metadata for Double);

  (*(v84 + 8))(v83, v43);
  v62(v86, v55);
  v62(v82, v55);
  v62(v73, v55);
  if (BYTE8(v89[0]))
  {
    v65 = 24.0;
  }

  else
  {
    v65 = *v89;
  }

  v66 = v77;
  swift_beginAccess();
  v66[4] = v65;
}

uint64_t sub_100355964()
{
  v96 = type metadata accessor for Logger();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v3 = __chkstk_darwin(v2 - 8);
  v108 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v107 = &v91 - v5;
  v6 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v7 = __chkstk_darwin(v6 - 8);
  v97 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v9;
  v10 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  v11 = __chkstk_darwin(v10 - 8);
  v98 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v91 - v13;
  v14 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v111 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v17 - 8);
  v19 = &v91 - v18;
  v20 = type metadata accessor for ALWiFiScanResult();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v116 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 128))(v22);
  if (!result)
  {
    return result;
  }

  v25 = result;
  ALWiFiNotification._scanResult.getter();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000059A8(v19, &unk_10042F310, &unk_100399860);
    v26 = 0;
LABEL_24:
    dispatch thunk of ModelContext.save()();
    if (!v26)
    {
    }

    v87 = v94;
    v88 = corelog.getter(v94);
    __chkstk_darwin(v88);
    v89 = 129;
    Logger._fault(_:function:file:line:)(sub_10035AF94, (&v91 - 4), "insert(_:)", 10, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALDatabase.swift", 68, 2);

    return (*(v95 + 8))(v87, v96);
  }

  v92 = v21;
  v27 = *(v21 + 32);
  v93 = v20;
  v27(v116, v19, v20);
  v28 = ALWiFiScanResult._accessPoints.getter();
  v106 = *(v28 + 16);
  if (!v106)
  {
    v26 = 0;
LABEL_23:

    (*(v92 + 8))(v116, v93);
    goto LABEL_24;
  }

  result = type metadata accessor for ALWiFiScanRow(0);
  v29 = result;
  v30 = 0;
  v26 = 0;
  v105 = v28 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
  v104 = v111 + 16;
  v99 = (v111 + 8);
  v118 = v16;
  v103 = v25;
  v102 = v14;
  v101 = v28;
  v100 = result;
  while (v30 < *(v28 + 16))
  {
    v35 = *(v111 + 72);
    v113 = v30;
    (*(v111 + 16))(v16, v105 + v35 * v30, v14);
    v36 = swift_allocObject();
    *(v36 + 56) = sub_100024A2C(&qword_100432080, &qword_10039AF90);
    v117 = type metadata accessor for ALWiFiScanRow;
    v37 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
    v119 = v29;
    v120 = v29;
    v121 = v37;
    v122 = v37;
    *(v36 + 64) = swift_getOpaqueTypeConformance2();
    sub_10000DA60((v36 + 32));
    v112 = v37;
    static PersistentModel.createBackingData<A>()();
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    v119 = 0;
    LOBYTE(v120) = 1;
    v115 = v26;
    sub_100024A2C(&qword_10042F720, &qword_100399AB8);
    sub_10034B2CC();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 16) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    v119 = 0;
    v120 = 0;
    sub_100024A2C(&qword_1004302B0, &qword_10039A268);
    sub_10034BB84();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 17) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LODWORD(v119) = 0;
    BYTE4(v119) = 1;
    v38 = sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
    sub_10034C004();
    v114 = v38;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 18) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LOBYTE(v119) = 4;
    sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
    sub_10034C560(&qword_100432000, sub_10034C5D8, &protocol conformance descriptor for <A> A?);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 19) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LODWORD(v119) = 0;
    BYTE4(v119) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 20) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LODWORD(v119) = 0;
    BYTE4(v119) = 1;
    sub_100024A2C(&qword_100432018, &qword_10039AE80);
    sub_10034CDE4();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 21) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LOBYTE(v119) = 2;
    sub_100024A2C(&qword_100432030, &qword_10039AEB0);
    sub_10034D260();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 22) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LOBYTE(v119) = 2;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 23) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LOBYTE(v119) = 4;
    sub_100024A2C(&qword_100432048, &qword_10039AF08);
    sub_10034DF4C(&qword_100432058, sub_10034E310, &protocol conformance descriptor for <A> A?);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 24) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    LODWORD(v119) = 0;
    BYTE4(v119) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 25) = 0;
    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    v119 = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_10000D9B8((v36 + 32), *(v36 + 56));
    swift_getKeyPath();
    v119 = 0;
    LOBYTE(v120) = 1;
    sub_100024A2C(&qword_100432070, &qword_10039AF88);
    sub_10034FABC();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v36 + 26) = 0;
    ObservationRegistrar.init()();
    v119 = v36;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v91 - 4) = v36;
    *(&v91 - 3) = 0;
    v40 = sub_10034B16C(&qword_100431FA0, v117, &protocol conformance descriptor for ALWiFiScanRow);
    v26 = v115;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v41 = swift_getKeyPath();
    __chkstk_darwin(v41);
    *(&v91 - 3) = 0;
    *(&v91 - 4) = v36;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v42 = swift_getKeyPath();
    __chkstk_darwin(v42);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v43 = swift_getKeyPath();
    __chkstk_darwin(v43);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v44 = swift_getKeyPath();
    __chkstk_darwin(v44);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v45 = swift_getKeyPath();
    __chkstk_darwin(v45);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v46 = swift_getKeyPath();
    __chkstk_darwin(v46);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v47 = swift_getKeyPath();
    __chkstk_darwin(v47);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v48 = swift_getKeyPath();
    __chkstk_darwin(v48);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v49 = swift_getKeyPath();
    __chkstk_darwin(v49);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v50 = swift_getKeyPath();
    __chkstk_darwin(v50);
    HIDWORD(v90) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v119 = v36;
    v51 = swift_getKeyPath();
    __chkstk_darwin(v51);
    *(&v91 - 4) = v36;
    *(&v91 - 3) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v52 = ALWiFiScanSingleAccessPoint._mac.getter();
    v119 = v36;
    v53 = swift_getKeyPath();
    __chkstk_darwin(v53);
    *(&v91 - 4) = v36;
    *(&v91 - 3) = v52;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v54 = ALWiFiScanSingleAccessPoint._ssid.getter();
    v119 = v36;
    v55 = swift_getKeyPath();
    __chkstk_darwin(v55);
    *(&v91 - 4) = v36;
    *(&v91 - 3) = v54;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v56 = ALWiFiScanSingleAccessPoint._rssidB.getter();
    v119 = v36;
    v57 = swift_getKeyPath();
    __chkstk_darwin(v57);
    v89 = v36;
    LODWORD(v90) = v56;
    BYTE4(v90) = BYTE4(v56) & 1;
    v117 = v40;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v58 = v110;
    ALWiFiScanSingleAccessPoint._mode.getter();
    v59 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    LODWORD(v37) = v61(v58, 1, v59);
    sub_1000059A8(v58, &qword_10041C780, &qword_100374180);
    if (v37 != 1)
    {
      v62 = v98;
      ALWiFiScanSingleAccessPoint._mode.getter();
      result = v61(v62, 1, v59);
      if (result == 1)
      {
        goto LABEL_30;
      }

      ALWiFiScanSingleAccessPoint.Mode.rawValue.getter();
      (*(v60 + 8))(v62, v59);
    }

    v119 = v36;
    v63 = swift_getKeyPath();
    __chkstk_darwin(v63);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    ALWiFiScanSingleAccessPoint._channel.getter();
    v119 = v36;
    v64 = swift_getKeyPath();
    __chkstk_darwin(v64);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v65 = ALWiFiScanSingleAccessPoint._ageSec.getter();
    v119 = v36;
    v66 = swift_getKeyPath();
    __chkstk_darwin(v66);
    LODWORD(v90) = v65;
    BYTE4(v90) = BYTE4(v65) & 1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    ALWiFiScanSingleAccessPoint._isAph.getter();
    v119 = v36;
    v67 = swift_getKeyPath();
    __chkstk_darwin(v67);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    LOBYTE(v65) = ALWiFiScanSingleAccessPoint._isMoving.getter();
    v119 = v36;
    v68 = swift_getKeyPath();
    __chkstk_darwin(v68);
    v89 = v36;
    LOBYTE(v90) = v65;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v69 = v109;
    ALWiFiScanSingleAccessPoint._band.getter();
    v70 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
    v71 = *(v70 - 8);
    v72 = *(v71 + 48);
    v73 = v72(v69, 1, v70);
    sub_1000059A8(v69, &qword_10042F320, &qword_100399870);
    if (v73 != 1)
    {
      v74 = v97;
      ALWiFiScanSingleAccessPoint._band.getter();
      result = v72(v74, 1, v70);
      if (result == 1)
      {
        goto LABEL_29;
      }

      ALWiFiScanSingleAccessPoint.Band.rawValue.getter();
      (*(v71 + 8))(v74, v70);
    }

    v119 = v36;
    v75 = swift_getKeyPath();
    __chkstk_darwin(v75);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v76 = ALWiFiScanSingleAccessPoint._frequencyKhz.getter();
    v119 = v36;
    v77 = swift_getKeyPath();
    __chkstk_darwin(v77);
    v89 = v36;
    LODWORD(v90) = v76;
    BYTE4(v90) = BYTE4(v76) & 1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v78 = v107;
    ALWiFiScanResult._scanTimestamp.getter();
    v79 = type metadata accessor for ALTimeStamp();
    v80 = *(v79 - 8);
    v81 = *(v80 + 48);
    if (v81(v78, 1, v79) == 1)
    {
      sub_1000059A8(v78, &qword_100418C70, qword_10039A8A0);
LABEL_19:
      v82 = 0;
      goto LABEL_20;
    }

    v82 = ALTimeStamp.cfAbsoluteTimeSec.getter();
    v84 = v83;
    (*(v80 + 8))(v78, v79);
    if (v84)
    {
      goto LABEL_19;
    }

LABEL_20:
    v119 = v36;
    v85 = swift_getKeyPath();
    __chkstk_darwin(v85);
    v89 = v36;
    v90 = v82;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v86 = v108;
    ALWiFiScanResult._scanTimestamp.getter();
    if (v81(v86, 1, v79) == 1)
    {
      sub_1000059A8(v86, &qword_100418C70, qword_10039A8A0);
      v31 = 0;
    }

    else
    {
      v31 = ALTimeStamp.machContinuousTimeSec.getter();
      v33 = v32;
      (*(v80 + 8))(v86, v79);
      if (v33)
      {
        v31 = 0;
      }
    }

    v14 = v102;
    v28 = v101;
    v30 = v113 + 1;
    v119 = v36;
    v34 = swift_getKeyPath();
    __chkstk_darwin(v34);
    *(&v91 - 4) = v36;
    *(&v91 - 3) = v31;
    LOBYTE(v89) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v29 = v100;
    dispatch thunk of ModelContext.insert<A>(_:)();

    v16 = v118;
    result = (*v99)(v118, v14);
    if (v106 == v30)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_100357550(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v144 = *(v3 - 8);
  __chkstk_darwin(v3);
  v4 = sub_100024A2C(&qword_1004317D0, &unk_10039AB20);
  __chkstk_darwin(v4 - 8);
  v6 = &v98 - v5;
  v7 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  __chkstk_darwin(v7 - 8);
  v114 = &v98 - v8;
  v119 = type metadata accessor for ALWiFiNotification();
  v128 = *(v119 - 8);
  v9 = __chkstk_darwin(v119);
  v118 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = &v98 - v11;
  v12 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v12 - 8);
  v113 = &v98 - v13;
  v116 = type metadata accessor for ALTimeStamp();
  v145 = *(v116 - 8);
  __chkstk_darwin(v116);
  v123 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  __chkstk_darwin(v15 - 8);
  v135 = &v98 - v16;
  v17 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  __chkstk_darwin(v17 - 8);
  v136 = &v98 - v18;
  v142 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v138 = *(v142 - 8);
  v19 = __chkstk_darwin(v142);
  v141 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v98 - v21;
  v115 = type metadata accessor for ALWiFiScanResult();
  v23 = *(v115 - 8);
  __chkstk_darwin(v115);
  v137 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100024A2C(&qword_1004324A8, &unk_10039B6A0);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v98 - v28;
  v30 = (*(*v1 + 128))(v27);
  if (!v30)
  {
    return &_swiftEmptyArrayStorage;
  }

  v143 = v3;
  v147 = v22;
  v111 = v6;
  v31 = v30;
  v32 = sub_100024A2C(&qword_100432430, &unk_10039B660);
  v121 = &v98;
  __chkstk_darwin(v32 - 8);
  v34 = &v98 - v33;
  v35 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
  v36 = *(v35 - 8);
  (*(v36 + 16))(v34, a1, v35);
  (*(v36 + 56))(v34, 0, 1, v35);
  type metadata accessor for ALWiFiScanRow(0);
  v146 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
  FetchDescriptor.init(predicate:sortBy:)();
  v122 = v31;
  v38 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v26 + 8))(v29, v25);

  v40 = sub_10035BAF0(v39);
  v100 = 0;
  v120 = v38;

  v41 = v40[8];
  v125 = v40 + 8;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v126 = v43 & v41;
  v124 = (v42 + 63) >> 6;
  v134 = (v138 + 16);
  v133 = v138 + 32;
  v132 = v138 + 8;
  v110 = (v145 + 16);
  v109 = (v145 + 56);
  v108 = (v23 + 16);
  v107 = (v23 + 56);
  v106 = enum case for ALWiFiNotification.ScanType.cached(_:);
  v105 = (v128 + 16);
  v104 = v128 + 8;
  v103 = (v145 + 8);
  v102 = (v23 + 8);
  v44 = v40;
  v101 = v128 + 32;

  v45 = 0;
  v127 = &_swiftEmptyArrayStorage;
LABEL_7:
  v46 = &unk_10039AF60;
  v47 = &qword_10041C7A8;
  v48 = &qword_100374198;
  v49 = &qword_1004311C0;
  v50 = &qword_100399AB0;
  v51 = v125;
  v52 = v124;
  result = v126;
  while (result)
  {
LABEL_13:
    v54 = *(v44[7] + ((v45 << 9) | (8 * __clz(__rbit64(result)))));
    if (v54 >> 62)
    {
      v56 = v46;
      v57 = result;
      v58 = v47;
      v59 = v48;
      v60 = v49;
      v61 = v50;
      v62 = _CocoaArrayWrapper.endIndex.getter();
      v50 = v61;
      v49 = v60;
      v48 = v59;
      v47 = v58;
      v52 = v124;
      v51 = v125;
      v55 = v62;
      result = v57;
      v46 = v56;
    }

    else
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result &= result - 1;
    if (v55)
    {
      v126 = result;
      v99 = v44;

      result = ALWiFiScanResult.init()();
      v63 = 0;
      v131 = v54 & 0xC000000000000001;
      v112 = v54 & 0xFFFFFFFFFFFFFF8;
      v98 = v54 + 32;
      v130 = v54;
      v129 = v55;
      do
      {
        if (v131)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v64 = result;
          v65 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v63 >= *(v112 + 16))
          {
            goto LABEL_51;
          }

          v64 = *(v54 + 8 * v63 + 32);

          v65 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_50;
          }
        }

        v139 = v65;
        v140 = v63;
        ALWiFiScanSingleAccessPoint.init()();
        v66 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
        v148 = v64;
        swift_getKeyPath();
        v67 = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034B1B4();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._mac.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034B890();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._ssid.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        v143 = sub_10034BF04();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v148) = BYTE4(v148);
        ALWiFiScanSingleAccessPoint._rssidB.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034C560(&qword_100431FE8, sub_10034C3AC, &protocol conformance descriptor for <A> A?);
        PersistentModel.getValue<A>(forKey:)();

        v144 = v66;
        v145 = v67;
        if (v148 == 4)
        {
          v68 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
          (*(*(v68 - 8) + 56))(v136, 1, 1, v68);
        }

        else
        {
          v148 = v64;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          result = v148;
          if (v148 == 4)
          {
            goto LABEL_56;
          }

          ALWiFiScanSingleAccessPoint.Mode.init(rawValue:)();
        }

        ALWiFiScanSingleAccessPoint._mode.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v148) = BYTE4(v148);
        ALWiFiScanSingleAccessPoint._channel.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034CCE4();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v148) = BYTE4(v148);
        ALWiFiScanSingleAccessPoint._ageSec.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034D0E4();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._isAph.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._isMoving.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034DF4C(&qword_100432040, sub_10034DFC4, &protocol conformance descriptor for <A> A?);
        PersistentModel.getValue<A>(forKey:)();

        if (v148 == 4)
        {
          v69 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
          (*(*(v69 - 8) + 56))(v135, 1, 1, v69);
        }

        else
        {
          v148 = v64;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          result = v148;
          if (v148 == 4)
          {
            goto LABEL_55;
          }

          ALWiFiScanSingleAccessPoint.Band.init(rawValue:)();
        }

        v70 = v147;
        ALWiFiScanSingleAccessPoint._band.setter();
        v148 = v64;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v148) = BYTE4(v148);
        ALWiFiScanSingleAccessPoint._frequencyKhz.setter();
        (*v134)(v141, v70, v142);
        v71 = ALWiFiScanResult._accessPoints.modify();
        v73 = v72;
        v74 = *v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v73 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = sub_10035A214(0, v74[2] + 1, 1, v74, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
          *v73 = v74;
        }

        v77 = v74[2];
        v76 = v74[3];
        if (v77 >= v76 >> 1)
        {
          v74 = sub_10035A214((v76 > 1), v77 + 1, 1, v74, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
          *v73 = v74;
        }

        v74[2] = v77 + 1;
        v78 = v138;
        v79 = v142;
        (*(v138 + 32))(v74 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v77, v141, v142);
        v71(&v148, 0);

        result = (*(v78 + 8))(v147, v79);
        v63 = v140 + 1;
        v80 = v129;
        v54 = v130;
      }

      while (v139 != v129);
      ALTimeStamp.init(cfAbsoluteTimeSec:)();
      result = v80 - 1;
      if (__OFSUB__(v80, 1))
      {
        goto LABEL_52;
      }

      if (v131)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if (result >= *(v112 + 16))
        {
          goto LABEL_54;
        }

        v81 = *(v98 + 8 * result);
      }

      v148 = v81;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_10034F74C();
      PersistentModel.getValue<A>(forKey:)();

      v82 = v123;
      ALTimeStamp._machContinuousTimeSec.setter();
      v83 = v113;
      v84 = v116;
      (*v110)(v113, v82, v116);
      v85 = *v109;
      (*v109)(v83, 0, 1, v84);
      v86 = v137;
      ALWiFiScanResult._scanTimestamp.setter();
      v87 = v117;
      ALWiFiNotification.init()();
      static ALTimeStamp.now()();
      v85(v83, 0, 1, v84);
      ALWiFiNotification._timestamp.setter();
      v88 = v114;
      v89 = v115;
      (*v108)(v114, v86, v115);
      (*v107)(v88, 0, 1, v89);
      ALWiFiNotification._scanResult.setter();
      ALWiFiNotification._available.setter();
      v90 = type metadata accessor for ALWiFiNotification.ScanType();
      v91 = *(v90 - 8);
      v92 = v111;
      (*(v91 + 104))(v111, v106, v90);
      (*(v91 + 56))(v92, 0, 1, v90);
      ALWiFiNotification._scanType.setter();
      (*v105)(v118, v87, v119);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_10035A214(0, v127[2] + 1, 1, v127, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
      }

      v44 = v99;
      v94 = v127[2];
      v93 = v127[3];
      if (v94 >= v93 >> 1)
      {
        v127 = sub_10035A214((v93 > 1), v94 + 1, 1, v127, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
      }

      v95 = v128;
      v96 = v119;
      (*(v128 + 8))(v117, v119);
      (*v103)(v123, v116);
      (*v102)(v137, v115);
      v97 = v127;
      v127[2] = v94 + 1;
      (*(v95 + 32))(v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v94, v118, v96);
      goto LABEL_7;
    }
  }

  while (1)
  {
    v53 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v53 >= v52)
    {

      return v127;
    }

    result = v51[v53];
    ++v45;
    if (result)
    {
      v45 = v53;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_100358D00(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = __chkstk_darwin(v3);
  result = (*(*v1 + 128))(v4);
  if (result)
  {
    type metadata accessor for ALWiFiScanRow(0);
    v6 = sub_100024A2C(&qword_100432430, &unk_10039B660);
    __chkstk_darwin(v6 - 8);
    v8 = &v11 - v7;
    v9 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a1, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    sub_1000059A8(v8, &qword_100432430, &unk_10039B660);
    dispatch thunk of ModelContext.save()();
  }

  return result;
}

unint64_t sub_100359000(double a1, double a2)
{
  v4 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v11 = a1;
  v12 = a2;
  v13 = type metadata accessor for ALWiFiScanRow(0);
  Predicate.init(_:)();
  v8 = sub_100357550(v7);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_10035911C(double a1, double a2)
{
  v4 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  v12 = type metadata accessor for ALWiFiScanRow(0);
  Predicate.init(_:)();
  sub_100358D00(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100359230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v64 = a2;
  v57 = *a1;
  v6 = sub_100024A2C(&qword_100432438, &qword_10039B670);
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  v62 = *(v7 + 64);
  __chkstk_darwin(v6);
  v63 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = &v43 - v63;
  v67 = sub_100024A2C(&qword_100432440, &qword_10039B678);
  v70 = *(v67 - 8);
  v60 = *(v70 + 64);
  __chkstk_darwin(v67);
  v61 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v43 - v61;
  v11 = sub_100024A2C(&qword_100432448, &qword_10039B680);
  v12 = *(v11 - 8);
  v58 = *(v12 + 64);
  __chkstk_darwin(v11);
  v59 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v43 - v59;
  v54 = sub_100006E30(&qword_100432450, &qword_100432448, &qword_10039B680, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v15 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v15;
  v15(v14, v11);
  v16 = sub_100024A2C(&qword_100432458, &qword_10039B688);
  v69 = *(v16 - 8);
  v52 = *(v69 + 64);
  __chkstk_darwin(v16);
  v53 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v43 - v53;
  v71 = a3;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v20 = *(v19 - 8);
  v50 = v20[8];
  __chkstk_darwin(v19);
  v51 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v43 - v51;
  v49 = v20[13];
  v49(&v43 - v51, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v19);
  v48 = sub_100006E30(&qword_100432460, &qword_100432440, &qword_10039B678, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v47 = sub_100006E30(&qword_100432468, &qword_100432458, &qword_10039B688, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v23 = v67;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v46 = v20[1];
  v46(v22, v19);
  v24 = *(v69 + 8);
  v69 += 8;
  v45 = v24;
  v24(v18, v16);
  v25 = *(v70 + 8);
  v70 += 8;
  v44 = v25;
  v26 = (v25)(v10, v23);
  v27 = __chkstk_darwin(v26);
  v28 = &v43 - v63;
  v29 = __chkstk_darwin(v27);
  v30 = &v43 - v61;
  __chkstk_darwin(v29);
  v31 = &v43 - v59;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v32 = v56(v31, v11);
  __chkstk_darwin(v32);
  v33 = &v43 - v53;
  v71 = a4;
  v34 = static PredicateExpressions.build_Arg<A>(_:)();
  __chkstk_darwin(v34);
  v35 = &v43 - v51;
  v49(&v43 - v51, enum case for PredicateExpressions.ComparisonOperator.lessThanOrEqual(_:), v19);
  v36 = v67;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v46(v35, v19);
  v45(v33, v16);
  v44(v30, v36);
  v37 = sub_100024A2C(&qword_100432470, &unk_10039B690);
  v38 = v64;
  v64[3] = v37;
  v38[4] = sub_10035B848();
  sub_10000DA60(v38);
  sub_100006E30(&qword_1004324A0, &qword_100432438, &qword_10039B670, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v39 = v68;
  v40 = v65;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v41 = *(v66 + 8);
  v41(v28, v40);
  return (v41)(v39, v40);
}

uint64_t sub_1003599B8()
{
  result = (*(*v0 + 104))();
  if (result)
  {
    dispatch thunk of ModelContainer.erase()();
  }

  return result;
}

uint64_t sub_100359A1C()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t (*sub_100359AA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 32, v4);
  return sub_10035BF70;
}

void sub_100359B38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_10000D9FC(*a1, v2 + 40);
    swift_beginAccess();
    sub_100002580((v3 + 32));
    sub_10002351C((v2 + 40), v3 + 32);
    swift_endAccess();
    sub_100002580(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100002580((v3 + 32));
    sub_10002351C(v2, v3 + 32);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_100359CD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

Swift::Int sub_100359D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  Hasher.init(_seed:)();
  sub_10034B16C(a1, a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100359E48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t (*sub_100359E98(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 16, v4);
  return sub_10035BF74;
}

void sub_100359F28(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_10000D9FC(*a1, v2 + 40);
    swift_beginAccess();
    sub_100002580((v3 + 16));
    sub_10002351C((v2 + 40), v3 + 16);
    swift_endAccess();
    sub_100002580(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100002580((v3 + 16));
    sub_10002351C(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int sub_100359FE4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10035A0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10035A194(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow, &protocol conformance descriptor for ALBTScanRow);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void *sub_10035A214(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_10035A3F0(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10035A43C(v2, a1);
}

unint64_t sub_10035A43C(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10035A4A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100024A2C(&qword_1004324B0, &unk_10039B6B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t _s8ALDaemon13ALWiFiScanRowC14schemaMetadataSay9SwiftData6SchemaC08PropertyG0VGvgZ_0()
{
  sub_100024A2C(&qword_1004324B8, &qword_10039B6C0);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003833A0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t _s8ALDaemon11ALBTScanRowC14schemaMetadataSay9SwiftData6SchemaC08PropertyE0VGvgZ_0()
{
  sub_100024A2C(&qword_1004324B8, &qword_10039B6C0);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10036D780;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_10035AEF4()
{
  _StringGuts.grow(_:)(41);
  v0._object = 0x80000001003B2670;
  v0._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10035AF94()
{
  _StringGuts.grow(_:)(39);
  v0._object = 0x80000001003B2620;
  v0._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_10035B054()
{
  result = qword_1004320D0;
  if (!qword_1004320D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004320D0);
  }

  return result;
}

unint64_t sub_10035B0AC()
{
  result = qword_1004320D8;
  if (!qword_1004320D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004320D8);
  }

  return result;
}

uint64_t sub_10035B420(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of ALWiFiScanRow.__allocating_init(mac:ssid:rssiDb:mode:channel:ageSec:isAppleHotspot:isMoving:band:frequencyKhz:cfAbsoluteTimeSec:machContinuousTimeSec:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 192);
  v17 = a5 | ((HIDWORD(a5) & 1) << 32);
  v18 = a7 | ((HIDWORD(a7) & 1) << 32);
  v19 = a8 | ((HIDWORD(a8) & 1) << 32);
  LOBYTE(a13) = a13 & 1;
  v22 = a11 | ((HIDWORD(a11) & 1) << 32);
  v20 = a2 & 1;

  return v16(a1, v20, a3, a4, v17, a6, v18, v19, a9, a10, v22, a12, a13, a14);
}

uint64_t sub_10035B5F0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10035B700()
{
  result = qword_100432420;
  if (!qword_100432420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432420);
  }

  return result;
}

unint64_t sub_10035B754()
{
  result = qword_100432428;
  if (!qword_100432428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432428);
  }

  return result;
}

uint64_t sub_10035B7A8()
{
  _StringGuts.grow(_:)(38);
  v0._object = 0x80000001003B25A0;
  v0._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_10035B848()
{
  result = qword_100432478;
  if (!qword_100432478)
  {
    sub_100024BB0(&qword_100432470, &unk_10039B690);
    sub_10035B8C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432478);
  }

  return result;
}

unint64_t sub_10035B8C0()
{
  result = qword_100432480;
  if (!qword_100432480)
  {
    sub_100024BB0(&qword_100432438, &qword_10039B670);
    sub_10035B940();
    sub_10035B9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432480);
  }

  return result;
}

unint64_t sub_10035B940()
{
  result = qword_100432488;
  if (!qword_100432488)
  {
    sub_100024BB0(&qword_100432440, &qword_10039B678);
    sub_100006E30(&qword_100432490, &qword_100432448, &qword_10039B680, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432488);
  }

  return result;
}

unint64_t sub_10035B9D8()
{
  result = qword_100432498;
  if (!qword_100432498)
  {
    sub_100024BB0(&qword_100432458, &qword_10039B688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432498);
  }

  return result;
}

uint64_t sub_10035BA50()
{
  _StringGuts.grow(_:)(36);
  v0._object = 0x80000001003B25F0;
  v0._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v0);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void *sub_10035BAF0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_23:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    v20 = v6;
    swift_getKeyPath();
    sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow, &protocol conformance descriptor for ALWiFiScanRow);
    PersistentModel.getValue<A>(forKey:)();

    v7 = sub_10035A3F0(*&v5);
    v9 = _swiftEmptyDictionarySingleton[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      goto LABEL_21;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_10035A4A4(v12, 1);
      v7 = sub_10035A3F0(*&v5);
      if ((v13 & 1) != (v14 & 1))
      {
        break;
      }
    }

    if (v13)
    {
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v7);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v15 = v7;
      sub_100024A2C(&qword_1004304E8, &qword_10039A348);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10039A200;
      *(v16 + 32) = v5;
      _swiftEmptyDictionarySingleton[(v15 >> 6) + 8] |= 1 << v15;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v15) = v5;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v15) = v16;
      v17 = _swiftEmptyDictionarySingleton[2];
      v11 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v11)
      {
        goto LABEL_22;
      }

      _swiftEmptyDictionarySingleton[2] = v18;
    }

    if (v20 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10035BFEC(uint64_t a1)
{
  ALBtAdvertisement.init()();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();
  sub_10033ED80(0xFFFFFFFFFFFFFFFFLL);
  ALBtAdvertisement._mac.setter();
  result = sub_10033ECF4(0x3DuLL);
  if (__OFSUB__(0, result + 20))
  {
    __break(1u);
  }

  else
  {
    ALBtAdvertisement._rssidB.setter();
    sub_10033ECF4(0xEuLL);
    ALBtAdvertisement._channel.setter();
    sub_10033ECF4(0x14uLL);
    return ALBtAdvertisement._antennaIndex.setter();
  }

  return result;
}

uint64_t sub_10035C098@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALBtAdvertisement();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  __chkstk_darwin(v9 - 8);
  v32 = &v31 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  ALBtNotification.init()();
  v15 = sub_10033ED80(0x29uLL);
  corelog.getter(v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v11;
    *v18 = 134217984;
    *(v18 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Simulating BT advertisement count %ld", v18, 0xCu);
    v11 = v37;
  }

  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v37 = v15;
    if (v15)
    {
      v20 = 0;
      v34 = v3 + 32;
      v35 = (v3 + 16);
      v33 = v3 + 8;
      v36 = v6;
      do
      {
        ALBtAdvertisement.init()();
        machContTimeNs()();
        ALBtAdvertisement._machContTimeNs.setter();
        *v39 = 0;
        swift_stdlib_random();
        while (!*v39)
        {
          *v39 = 0;
          swift_stdlib_random();
        }

        ALBtAdvertisement._mac.setter();
        *v39 = 0;
        swift_stdlib_random();
        if (61 * v39[0] <= 0x38)
        {
          do
          {
            *v39 = 0;
            swift_stdlib_random();
          }

          while (61 * v39[0] < 0x39);
        }

        LOBYTE(v39[0]) = 0;
        ALBtAdvertisement._rssidB.setter();
        do
        {
          *v39 = 0;
          swift_stdlib_random();
        }

        while (((14 * v39[0]) & 0xFFFFFFFC) == 0);
        LOBYTE(v39[0]) = 0;
        ALBtAdvertisement._channel.setter();
        do
        {
          *v39 = 0;
          swift_stdlib_random();
        }

        while (((20 * v39[0]) & 0xFFFFFFF0) == 0);
        LOBYTE(v39[0]) = 0;
        ALBtAdvertisement._antennaIndex.setter();
        (*v35)(v6, v8, v2);
        v21 = ALBtNotification._advertisements.modify();
        v23 = v22;
        v24 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_100326598(0, v24[2] + 1, 1, v24);
          *v23 = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = sub_100326598((v26 > 1), v27 + 1, 1, v24);
          *v23 = v24;
        }

        ++v20;
        v24[2] = v27 + 1;
        v28 = v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27;
        v6 = v36;
        (*(v3 + 32))(v28, v36, v2);
        v21(v39, 0);
        (*(v3 + 8))(v8, v2);
      }

      while (v20 != v37);
    }

    v29 = v32;
    static ALTimeStamp.now()();
    v30 = type metadata accessor for ALTimeStamp();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    ALBtNotification._timestamp.setter();
    return ALBtNotification._simulated.setter();
  }

  return result;
}

uint64_t sub_10035C5E4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_10035C794(a1, a2, a3);

  return v6;
}

uint64_t sub_10035C648(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10035C794(a1, a2, a3);

  return v3;
}

uint64_t sub_10035C67C()
{
  v1 = type metadata accessor for ALBtNotification();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035C098(v4);
  (*(v0 + 24))(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10035C794(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(**sub_100334FA4() + 104);

  v10(&v18, 0xD000000000000017, 0x80000001003B2720, &type metadata for Double);

  if (v19)
  {
    v11 = 6.0;
  }

  else
  {
    v11 = v18;
  }

  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  corelog.getter(v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "ALBtSimulated,interval,%f,sec", v14, 0xCu);
  }

  (*(v7 + 8))(v9, v6);
  return ALDataGenerationBase.init(queue:interval:)(v17, v11);
}

uint64_t sub_10035CA50(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

void *sub_10035CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[5] = 0;
  result[6] = a2;
  result[2] = a1;
  result[3] = a3;
  result[4] = a4;
  return result;
}

void *sub_10035CAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = 0;
  v4[6] = a2;
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = a4;
  return v4;
}

uint64_t sub_10035CB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  if (a1)
  {
    swift_errorRetain();
    kappalog.getter(v12);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "mapAsset cb error: %@", v17, 0xCu);
      sub_1000059A8(v18, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    kappalog.getter(&v24 - v13);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "mapAsset cb, updating config", v22, 2u);
    }

    (*(v9 + 8))(v14, v8);
    return sub_10035EE10(a2, a3, a4);
  }
}

uint64_t sub_10035CDC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v74 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v75 = &v72 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v72 - v12;
  __chkstk_darwin(v11);
  v15 = &v72 - v14;
  kappalog.getter(&v72 - v14);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v77 = v6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v79 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10000234C(a1, a2, &v79);
    _os_log_impl(&_mh_execute_header, v16, v17, "rta %s", v19, 0xCu);
    sub_100002580(v20);

    v6 = v77;
  }

  v21 = *(v6 + 8);
  v21(v15, v5);
  v22 = v5;
  kappalog.getter(v13);
  v23 = v74;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v79 = v27;
    *v26 = 136315138;
    v28 = [v23 name];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v13;
    v30 = v5;
    v31 = v29;
    v32 = v21;
    v34 = v33;

    v35 = v31;
    v22 = v30;
    v36 = sub_10000234C(v35, v34, &v79);
    v21 = v32;

    *(v26 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v24, v25, "rta %s", v26, 0xCu);
    sub_100002580(v27);

    v32(v74, v30);
  }

  else
  {

    v21(v13, v5);
  }

  v37 = v75;
  kappalog.getter(v75);
  v38 = v23;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v78 = v22;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v79 = v43;
    *v42 = 136315138;
    v44 = sub_100024A2C(&qword_100430298, &qword_10039A250);
    v74 = &v72;
    v45 = *(*(v44 - 8) + 64);
    __chkstk_darwin(v44 - 8);
    v46 = &v72 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = [v38 location];
    v72 = &v72;
    v48 = __chkstk_darwin(v47);
    v73 = v21;
    if (v48)
    {
      v49 = v48;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v53 = type metadata accessor for URL();
    v54 = *(v53 - 8);
    (*(v54 + 56))(v46, v50, 1, v53);
    sub_100361294(v46, v46);
    if ((*(v54 + 48))(v46, 1, v53) == 1)
    {
      sub_1000059A8(v46, &qword_100430298, &qword_10039A250);
      v55 = 0xE300000000000000;
      v56 = 7104878;
    }

    else
    {
      v57 = URL.absoluteString.getter();
      v55 = v58;
      (*(v54 + 8))(v46, v53);
      v56 = v57;
    }

    v59 = sub_10000234C(v56, v55, &v79);

    *(v42 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v39, v40, "rta %s", v42, 0xCu);
    sub_100002580(v43);

    v52 = v78;
    v51 = v75;
    v21 = v73;
  }

  else
  {

    v51 = v37;
    v52 = v22;
  }

  v21(v51, v52);
  v60 = v76;
  kappalog.getter(v76);
  v61 = v38;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v79 = v65;
    *v64 = 136315138;
    v66 = [v61 metadata];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = Dictionary.description.getter();
    v69 = v68;

    v70 = sub_10000234C(v67, v69, &v79);

    *(v64 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "rta %s", v64, 0xCu);
    sub_100002580(v65);

    return (v21)(v76, v78);
  }

  else
  {

    return (v21)(v60, v78);
  }
}

uint64_t sub_10035D598()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  kappalog.getter(&v39 - v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Entered updateKappaConfig()", v17, 2u);
  }

  v18 = *(v3 + 8);
  v19 = v18(v14, v2);
  v20 = (*(*v1 + 112))(v19);
  if (v20)
  {
    v21 = v20;
    v22 = v1[2];
    sub_10035E9C8(v20, v22);
    type metadata accessor for PlatformInfo();
    static PlatformInfo.instance.getter();
    v23 = dispatch thunk of PlatformInfo.hasExclave.getter();

    if (v23)
    {
      v39 = v2;
      v24 = *(**sub_100334FA4() + 104);

      v24(&v40, 0x4D74736554414D53, 0xEB0000000065646FLL, &type metadata for Bool);

      if (v40 != 2 && (v40 & 1) != 0)
      {

        kappalog.getter(v12);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        v27 = os_log_type_enabled(v25, v26);
        v28 = v39;
        if (v27)
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "SMATestMode true", v29, 2u);
        }

        v18(v12, v28);
        return sub_10035EE10(v1[6], v1[3], v1[4]);
      }

      kappalog.getter(v9);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v39;
      if (v36)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "SMATestMode false", v38, 2u);
      }

      v18(v9, v37);
      sub_100360344(v21, v22, v1[6], v1[3], v1[4]);
    }
  }

  kappalog.getter(v6);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "attempted update before setting assetSetUsages", v33, 2u);
  }

  return v18(v6, v2);
}

uint64_t sub_10035DA0C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (!a1)
  {
    kappalog.getter(v6);
    v9 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v9, v14))
    {
      v8 = v6;
      goto LABEL_8;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, v14, "subscribe succeeded", v15, 2u);
    v8 = v6;
    goto LABEL_6;
  }

  kappalog.getter(&v17 - v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "subscribe failed: %@", v11, 0xCu);
    sub_1000059A8(v12, &unk_10042F020, &qword_100399AE0);

LABEL_6:
  }

LABEL_8:

  return (*(v3 + 8))(v8, v2);
}

void sub_10035DC50()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024A2C(&qword_100432690, &qword_10039B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100374440;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001003B2740;
  type metadata accessor for ALUAFUsages();
  *(inited + 48) = static ALUAFUsages.getKappaUsages()();
  v7 = sub_10035ED0C(inited);
  swift_setDeallocating();
  sub_1000059A8(inited + 32, &qword_100432698, &qword_10039B728);
  v8 = (*(*v1 + 120))(v7);
  v9 = (*(*v1 + 112))(v8);
  if (v9)
  {
    v10 = v9;
    v11 = v1[4];
    v20 = v1[3];
    v21 = v11;

    v12._countAndFlagsBits = 0x697263736275732ELL;
    v12._object = 0xEB00000000726562;
    String.append(_:)(v12);
    v13 = v20;
    v14 = v21;
    v15 = *(v1[2] + 56);
    sub_100360854(v10, v13, v14, v15);
  }

  else
  {
    kappalog.getter(v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "assetSetUsages is nil", v18, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_10035DEF0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  kappalog.getter(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Registering for regulatory domain updates", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, v1, sub_10035E348, kRegulatoryDomainUpdateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_10035E070(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v12 == a3)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        kappalog.getter(v9);

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v23 = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_10000234C(a2, a3, &v23);
          _os_log_impl(&_mh_execute_header, v15, v16, "Darwin notification for unknown reason: %s", v17, 0xCu);
          sub_100002580(v18);
        }

        return (*(v6 + 8))(v9, v5);
      }
    }

    sub_10035DC50();
  }

  kappalog.getter(v11);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "self disappeared in RD callback", v22, 2u);
  }

  return (*(v6 + 8))(v11, v5);
}

void sub_10035E348(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_100360D1C(a2, a3);
}

uint64_t sub_10035E3C8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  kappalog.getter(aBlock - v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Entered initMobileAsset()", v11, 2u);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  sub_10035DC50();
  v13 = [objc_opt_self() sharedManager];
  v14 = String._bridgeToObjectiveC()();
  v15 = *(*(v1 + 16) + 56);
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100360828;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000025CC;
  aBlock[3] = &unk_100408B40;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = [v13 observeAssetSet:v14 queue:v18 handler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  sub_10035DEF0();
  kappalog.getter(v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Completed initMobileAsset()", v22, 2u);
  }

  return (v12)(v6, v2);
}

uint64_t sub_10035E6FC(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  kappalog.getter(&v17 - v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Entered observeAssetSet() cb", v10, 2u);
  }

  v11 = *(v2 + 8);
  v11(v7, v1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 144))(Strong);
  }

  else
  {
    kappalog.getter(v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ALMobileAssets self disappeared in observeAssetSet callback", v16, 2u);
    }

    return (v11)(v5, v1);
  }
}

void *sub_10035E940()
{

  return v0;
}

uint64_t sub_10035E978()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10035E9C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  if (*(a1 + 16) && (v9 = sub_10031DC00(0xD000000000000012, 0x80000001003B2740), (v10 & 1) != 0))
  {
    v11 = *(*(a1 + 56) + 8 * v9);
  }

  else
  {
    v11 = sub_10031E064(&_swiftEmptyArrayStorage);
  }

  kappalog.getter(v8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending update message to locationd", v14, 2u);
  }

  (*(v5 + 8))(v8, v4);
  sub_100024A2C(&qword_1004326B8, &unk_10039B740);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100374440;
  *(v15 + 32) = v11;
  (*(*a2 + 192))();
}

unint64_t sub_10035ED0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_1004326B0, &qword_10039B738);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10031DC00(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10035EE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v11 = v25 - v10;
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v14 = dispatch thunk of PlatformInfo.hasExclave.getter();

  if ((v14 & 1) == 0)
  {
    return result;
  }

  if (!a1)
  {
    exlog.getter(v13);
    v23 = 85;
    Logger._fault(_:function:file:line:)(sub_10035CB04, 0, "exReadKappaAsset(ek:bundle:)", 28, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALMobileAssets.swift", 72, 2);
    return (*(v7 + 8))(v13, v6);
  }

  v25[2] = a2;
  v26 = a3;

  v16._object = 0x80000001003B2850;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v16);
  v17 = v26;
  String.utf8CString.getter();
  v18 = os_transaction_create();

  if (!v18)
  {
    v22 = exlog.getter(v13);
    __chkstk_darwin(v22);
    v24 = v17;
    v23 = 93;
    Logger._fault(_:function:file:line:)(sub_1003611CC, &v25[-4], "exReadKappaAsset(ek:bundle:)", 28, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALMobileAssets.swift", 72, 2);

    return (*(v7 + 8))(v13, v6);
  }

  exlog.getter(v11);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "transaction: reading an already mapped asset...", v21, 2u);
  }

  (*(v7 + 8))(v11, v6);
  sub_1003616CC();
  swift_unknownObjectRelease();
}

uint64_t sub_10035F280(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v163 = &v158 - v8;
  v9 = __chkstk_darwin(v7);
  v166 = &v158 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v158 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v158 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v158 - v18;
  v20 = __chkstk_darwin(v17);
  v165 = (&v158 - v21);
  v22 = __chkstk_darwin(v20);
  v24 = &v158 - v23;
  __chkstk_darwin(v22);
  v26 = &v158 - v25;
  v27 = [a1 assets];
  if (v27)
  {
    v28 = v27;
    v160 = v24;
    v161 = v13;
    v169 = a1;
    v170 = v3;
    v164 = v16;
    v167 = v2;
    sub_10000ABCC(0, &qword_1004326C0, UAFAsset_ptr);
    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 1 << *(v29 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;

    v35 = 0;
    if (v32)
    {
      while (1)
      {
        v36 = v35;
LABEL_10:
        v37 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v38 = v37 | (v36 << 6);
        v39 = (*(v29 + 48) + 16 * v38);
        v40 = *v39;
        v41 = v39[1];
        v42 = *(*(v29 + 56) + 8 * v38);

        v43 = v42;
        sub_10035CDC8(v40, v41, v43);

        if (!v32)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return result;
      }

      if (v36 >= v33)
      {
        break;
      }

      v32 = *(v29 + 64 + 8 * v36);
      ++v35;
      if (v32)
      {
        v35 = v36;
        goto LABEL_10;
      }
    }

    v44 = String._bridgeToObjectiveC()();
    v45 = v169;
    v46 = [v169 assetNamed:v44];

    v162 = v46;
    if (v46)
    {
      v47 = v46;
      kappalog.getter(v26);
      v48 = v47;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v167;
      if (v51)
      {
        v53 = swift_slowAlloc();
        v54 = v52;
        v55 = swift_slowAlloc();
        v171 = v55;
        *v53 = 136315138;
        v56 = [v48 name];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_10000234C(v57, v59, &v171);

        *(v53 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v49, v50, "allClients %s", v53, 0xCu);
        sub_100002580(v55);
        v52 = v54;
        v45 = v169;
      }

      v61 = *(v170 + 8);
      v61(v26, v52);
      v62 = v160;
      kappalog.getter(v160);
      v63 = v48;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      v66 = os_log_type_enabled(v64, v65);
      v168 = v61;
      if (v66)
      {
        v67 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v171 = v159;
        *v67 = 136315138;
        v68 = sub_100024A2C(&qword_100430298, &qword_10039A250);
        v158 = &v158;
        v69 = *(*(v68 - 8) + 64);
        __chkstk_darwin(v68 - 8);
        v70 = &v158 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        v71 = __chkstk_darwin([v63 location]);
        if (v71)
        {
          v72 = v71;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v84 = type metadata accessor for URL();
        v85 = *(v84 - 8);
        (*(v85 + 56))(v70, v73, 1, v84);
        sub_100361294(v70, v70);
        if ((*(v85 + 48))(v70, 1, v84) == 1)
        {
          v86 = 7104878;
          sub_1000059A8(v70, &qword_100430298, &qword_10039A250);
          v87 = 0xE300000000000000;
        }

        else
        {
          v86 = URL.absoluteString.getter();
          v87 = v88;
          (*(v85 + 8))(v70, v84);
        }

        v45 = v169;
        v89 = sub_10000234C(v86, v87, &v171);

        *(v67 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v64, v65, "allClients %s", v67, 0xCu);
        sub_100002580(v159);

        v83 = v160;
        v52 = v167;
        v61 = v168;
      }

      else
      {

        v83 = v62;
      }

      v61(v83, v52);
      v90 = v165;
      kappalog.getter(v165);
      v91 = v63;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v171 = v95;
        *v94 = 136315138;
        v96 = [v91 metadata];
        v97 = v52;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v98 = Dictionary.description.getter();
        v100 = v99;

        v101 = sub_10000234C(v98, v100, &v171);
        v52 = v97;
        v45 = v169;

        *(v94 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v92, v93, "allClients %s", v94, 0xCu);
        sub_100002580(v95);
        v61 = v168;

        v102 = v165;
      }

      else
      {

        v102 = v90;
      }

      v61(v102, v52);
      v81 = v164;
    }

    else
    {
      kappalog.getter(v19);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      v79 = os_log_type_enabled(v77, v78);
      v52 = v167;
      v80 = v170;
      v81 = v164;
      if (v79)
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "allClients missing from set", v82, 2u);
      }

      v61 = *(v80 + 8);
      v61(v19, v52);
    }

    v103 = String._bridgeToObjectiveC()();
    v104 = [v45 assetNamed:v103];

    if (v104)
    {
      v105 = v104;
      kappalog.getter(v81);
      v106 = v105;
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();

      v109 = os_log_type_enabled(v107, v108);
      v168 = v61;
      if (v109)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v171 = v111;
        *v110 = 136315138;
        v112 = [v106 name];
        v113 = v52;
        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        v117 = v114;
        v52 = v113;
        v118 = sub_10000234C(v117, v116, &v171);

        *(v110 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v107, v108, "country %s", v110, 0xCu);
        sub_100002580(v111);
        v61 = v168;

        v119 = v164;
        v120 = v113;
      }

      else
      {

        v119 = v81;
        v120 = v52;
      }

      v61(v119, v120);
      v125 = v161;
      kappalog.getter(v161);
      v126 = v106;
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v171 = v130;
        *v129 = 136315138;
        v131 = sub_100024A2C(&qword_100430298, &qword_10039A250);
        v169 = &v158;
        v132 = *(*(v131 - 8) + 64);
        __chkstk_darwin(v131 - 8);
        v133 = &v158 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
        v134 = [v126 location];
        v165 = &v158;
        v135 = __chkstk_darwin(v134);
        if (v135)
        {
          v136 = v135;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v137 = 0;
        }

        else
        {
          v137 = 1;
        }

        v140 = type metadata accessor for URL();
        v141 = *(v140 - 8);
        (*(v141 + 56))(v133, v137, 1, v140);
        sub_100361294(v133, v133);
        if ((*(v141 + 48))(v133, 1, v140) == 1)
        {
          v142 = 7104878;
          sub_1000059A8(v133, &qword_100430298, &qword_10039A250);
          v143 = 0xE300000000000000;
        }

        else
        {
          v142 = URL.absoluteString.getter();
          v143 = v144;
          (*(v141 + 8))(v133, v140);
        }

        v145 = sub_10000234C(v142, v143, &v171);

        *(v129 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v127, v128, "country %s", v129, 0xCu);
        sub_100002580(v130);

        v138 = v161;
        v52 = v167;
        v61 = v168;
      }

      else
      {

        v138 = v125;
      }

      v61(v138, v52);
      v146 = v166;
      kappalog.getter(v166);
      v147 = v126;
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v171 = v151;
        *v150 = 136315138;
        v152 = [v147 metadata];
        v153 = v52;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v154 = Dictionary.description.getter();
        v156 = v155;

        v157 = sub_10000234C(v154, v156, &v171);

        *(v150 + 4) = v157;
        _os_log_impl(&_mh_execute_header, v148, v149, "country %s", v150, 0xCu);
        sub_100002580(v151);

        return (v168)(v166, v153);
      }

      v139 = v146;
    }

    else
    {
      v121 = v163;
      kappalog.getter(v163);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v122, v123, "country missing from set", v124, 2u);
      }

      else
      {
      }

      v139 = v121;
    }

    return (v61)(v139, v52);
  }

  else
  {
    kappalog.getter(v6);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "No assets in kappaAssetSet", v76, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

void sub_100360344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v16 = dispatch thunk of PlatformInfo.hasExclave.getter();

  if (v16)
  {
    v40 = a4;
    v17 = [objc_opt_self() sharedManager];
    v18 = String._bridgeToObjectiveC()();
    v19 = *(a1 + 16);
    v39 = "BTSimulationIntervalSec";
    if (v19 && (sub_10031DC00(0xD000000000000012, 0x80000001003B2740), (v20 & 1) != 0))
    {

      v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v21.super.isa = 0;
    }

    v22 = [v17 retrieveAssetSet:v18 usages:v21.super.isa];

    kappalog.getter(v15);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "retrieveAssetSet cb", v25, 2u);
    }

    v26 = *(v10 + 8);
    v26(v15, v9);
    if (v22)
    {
      v27 = v22;
      v28 = *(**sub_100334FA4() + 104);

      v28(aBlock, 0xD000000000000013, 0x80000001003B28C0, &type metadata for Bool);

      if (LOBYTE(aBlock[0]) == 2)
      {
        v29 = v40;
      }

      else
      {
        v29 = v40;
        if (aBlock[0])
        {
          sub_10035F280(v27);
        }
      }

      v34 = String._bridgeToObjectiveC()();
      v35 = *(v41 + 56);
      v36 = swift_allocObject();
      v36[2] = a3;
      v36[3] = v29;
      v36[4] = a5;
      aBlock[4] = sub_100361288;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003367F8;
      aBlock[3] = &unk_100408C08;
      v37 = _Block_copy(aBlock);

      [v27 mapAsset:v34 queue:v35 completion:v37];
      _Block_release(v37);
    }

    else
    {
      kappalog.getter(v13);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_10000234C(0xD000000000000012, v39 | 0x8000000000000000, aBlock);
        _os_log_impl(&_mh_execute_header, v30, v31, "kappaAssetSet is nil, name: %s", v32, 0xCu);
        sub_100002580(v33);
      }

      v26(v13, v9);
    }
  }
}

void sub_100360854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v40 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  kappalog.getter(v38 - v9);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v39 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[1] = a2;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    sub_100024A2C(&qword_1004326A0, &qword_10039B730);
    v17 = Dictionary.description.getter();
    v19 = sub_10000234C(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "subscribing with usages %s", v14, 0xCu);
    sub_100002580(v16);
  }

  v20 = *(v6 + 8);
  v20(v10, v5);
  sub_10031E064(&_swiftEmptyArrayStorage);
  v21 = objc_allocWithZone(UAFAssetSetSubscription);
  v22 = String._bridgeToObjectiveC()();
  sub_100024A2C(&qword_1004326A0, &qword_10039B730);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v24 = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v21 initWithName:v22 assetSets:isa usageAliases:v24];

  if (v25)
  {
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 sharedManager];
    v29 = String._bridgeToObjectiveC()();
    sub_100024A2C(&qword_1004304E8, &qword_10039A348);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10039A200;
    *(v30 + 32) = v27;
    sub_10000ABCC(0, &qword_1004326A8, UAFAssetSetSubscription_ptr);
    v31 = v27;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = sub_10035DA0C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003367F8;
    aBlock[3] = &unk_100408BB8;
    v33 = _Block_copy(aBlock);
    [v28 subscribe:v29 subscriptions:v32 queue:v41 completion:v33];
    _Block_release(v33);
  }

  else
  {
    v34 = v40;
    kappalog.getter(v40);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "failed to initialize subscription", v37, 2u);
    }

    v20(v34, v39);
  }
}

uint64_t sub_100360D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  kappalog.getter(&v33 - v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received RD darwin notification", v17, 2u);
  }

  v18 = *(v9 + 8);
  v18(v14, v8);
  if (a1 && a2)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = *(*(a1 + 16) + 56);
    v23 = swift_allocObject();

    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v19;
    v24[4] = v21;
    aBlock[4] = sub_1003611C0;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003EE4;
    aBlock[3] = &unk_100408B90;
    v25 = _Block_copy(aBlock);
    v26 = v22;

    static DispatchQoS.unspecified.getter();
    v38 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v27 = v34;
    v28 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v36 + 8))(v27, v28);
    (*(v33 + 8))(v7, v35);
  }

  else
  {
    kappalog.getter(v12);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Darwin callback param nil", v32, 2u);
    }

    return (v18)(v12, v8);
  }
}

unint64_t sub_1003611CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(31);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return 0xD00000000000001DLL;
}

uint64_t sub_100361248()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100361294(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430298, &qword_10039A250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100361340()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(-v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003613B8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(-v2);
  return Hasher._finalize()();
}

uint64_t sub_1003613FC@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100362488(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100361438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003627BC();
  v5 = sub_100362810();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100361490(uint64_t a1)
{
  v2 = type metadata accessor for TightbeamEndpoint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v7 = ClientConnection.init(endpoint:)();
  (*(v3 + 8))(a1, v2);
  *(v6 + 16) = v7;
  return v6;
}

uint64_t sub_1003615B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v7 = ClientConnection.init(endpoint:)();
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_1003616CC()
{
  v0 = type metadata accessor for TightbeamDecoder();
  v30 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TightbeamEncoder();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TightbeamMessage();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = __chkstk_darwin(v4);
  v6 = __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - v10;
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = v33;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v14)
  {
    v16 = v36;
    type metadata accessor for TransportError();
    sub_100362590(&qword_10042FA08, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    result = swift_allocError();
    *v18 = v16;
    return result;
  }

  v29 = v2;
  v33 = v0;
  v15 = *(v31 + 32);
  v15(v11, v13, v32);
  TightbeamMessage.encoder()();
  TightbeamEncoder.encode(_:)(0x2D6BD2AE3072EDDAuLL);
  TightbeamEncoder.complete()();
  _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
  v15(v11, v8, v32);
  v19 = v29;
  TightbeamDecoder.init(message:)();
  v20 = TightbeamDecoder.decode(as:)();
  if (!v20)
  {
    return (*(v30 + 8))(v19, v33);
  }

  v21 = v33;
  v22 = v30;
  if (v20 == 1)
  {
    v23 = TightbeamDecoder.decode(as:)();
    v24 = sub_100362488(v23);
    if (v24 != 11)
    {
      LOBYTE(v34) = v24;
      v25 = v24;
      sub_10036249C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v26 = v25;
      return (*(v22 + 8))(v19, v21);
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v34 = 0xD000000000000021;
    v35 = 0x80000001003B2A90;
    v37 = v23;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100361BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v9 = ClientConnection.init(endpoint:)();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_100361D20(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_10000D9FC(a2, v8 + 24);
  (*(v5 + 16))(v7, a1, v4);
  sub_100024A2C(&qword_1004326D0, &qword_10039B750);
  swift_allocObject();
  *(v8 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v5 + 8))(a1, v4);
  return v8;
}

uint64_t sub_100361E7C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TightbeamEndpoint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D9FC(a2, v3 + 24);
  (*(v7 + 16))(v9, a1, v6);
  sub_100024A2C(&qword_1004326D0, &qword_10039B750);
  swift_allocObject();
  *(v3 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v7 + 8))(a1, v6);
  return v3;
}

uint64_t sub_100361FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = a2;
  v5 = v3;
  v7 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  v8 = __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TightbeamEncoder();
  v13 = *(v12 - 8);
  v28 = *(v13 + 56);
  v28(v11, 1, 1, v12);
  v31 = a1;
  v14 = TightbeamDecoder.decode(as:)();
  if (v14 != 0x2D6BD2AE3072EDDALL)
  {
    v26 = v14;
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v33 = 0xD00000000000002ELL;
    v34 = 0x80000001003B2A60;
    v35 = v26;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = v5[6];
  v16 = v5[7];
  sub_10000D9B8(v5 + 3, v15);
  (*(v16 + 8))(v15, v16);
  if (!v4)
  {
    v19 = 11;
    v18 = v32;
    goto LABEL_6;
  }

  v33 = v4;
  swift_errorRetain();
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  v17 = swift_dynamicCast();
  v18 = v32;
  if (!v17)
  {

    goto LABEL_20;
  }

  v19 = v35;

LABEL_6:
  _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
  v28(v18, 0, 1, v12);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) != 1)
  {
    sub_1003188C4(v11);
  }

  sub_10031892C(v18, v11);
  if (!v20(v11, 1, v12))
  {
    if (v19 == 11)
    {
      TightbeamEncoder.encode(_:)(0);
    }

    else
    {
      TightbeamEncoder.encode(_:)(1u);
      TightbeamEncoder.encode(_:)(-v19);
    }
  }

  v21 = (v20)(v11, 1, v12);
  v22 = v21;
  if (v21 == 1)
  {
    v23 = v29;
  }

  else
  {
    v23 = v29;
    if (v21)
    {
      sub_1003188C4(v11);
      v22 = 1;
    }

    else
    {
      TightbeamEncoder.complete()();
    }
  }

  v24 = type metadata accessor for TightbeamMessage();
  return (*(*(v24 - 8) + 56))(v23, v22, 1, v24);
}

uint64_t sub_100362444@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100361FC4(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_100362488(int a1)
{
  if ((a1 + 10) < 0xB)
  {
    return -a1;
  }

  else
  {
    return 11;
  }
}

unint64_t sub_10036249C()
{
  result = qword_1004326C8;
  if (!qword_1004326C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004326C8);
  }

  return result;
}

unint64_t sub_1003624F4()
{
  result = qword_1004326D8;
  if (!qword_1004326D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004326D8);
  }

  return result;
}

uint64_t sub_100362590(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003627BC()
{
  result = qword_1004328D0;
  if (!qword_1004328D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004328D0);
  }

  return result;
}

unint64_t sub_100362810()
{
  result = qword_1004328D8;
  if (!qword_1004328D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004328D8);
  }

  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall ALBtNotifications.description()()
{
  v0 = ALBtNotifications.description()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t TightbeamDecoder.decode(as:)()
{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}