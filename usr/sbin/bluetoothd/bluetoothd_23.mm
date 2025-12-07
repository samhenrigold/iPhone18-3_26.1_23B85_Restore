void sub_1001C4B48(const void *a1, uint64_t a2)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    if (a2 < 0x65)
    {

      sub_1000045A8(a1, a2, 0, 253);
    }

    else if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008130B0();
    }
  }
}

void sub_1001C4BCC(_DWORD *a1, char *__s, _OWORD *a3)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v6 = strlen(__s);
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v7 = sub_1000E5EA8(a1);
    if (v7)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = a1 + 1;
    sub_100304AF8("LE Device: handle 0x%x, Name %s, Addr %:, pUUID %@", v8, __s, v9, a3, 16);
    v11 = 1;
    v12 = v8;
    v13 = v6;
    if (v6 > 0x4AuLL)
    {
      v6 = 74;
    }

    __memmove_chk();
    v10 = &v11 + v6;
    sub_1000075EC(v10 + 4, v9, 6uLL);
    *(v10 + 10) = *a3;
    sub_1000045A8(&v11, v6 + 26, 0, 253);
  }
}

void sub_1001C4D18(_BYTE *a1, uint64_t a2)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v2 = -1;
    *a1 = 2;
    sub_1000045A8(a1, a2, 0, 253);
    sub_1000045A8(&v2, 1, 0, 253);
  }
}

void sub_1001C4D74(_BYTE *a1, uint64_t a2, char a3)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v3 = -1;
    *a1 = a3;
    sub_1000045A8(a1, a2, 0, 253);
    sub_1000045A8(&v3, 1, 0, 253);
  }
}

void sub_1001C4DCC(_BYTE *a1, uint64_t a2)
{
  if ((byte_100B5C6E6 & 1) == 0)
  {
    v2 = -1;
    *a1 = 4;
    sub_1000045A8(a1, a2, 0, 253);
    sub_1000045A8(&v2, 1, 0, 253);
  }
}

uint64_t sub_1001C4E34(__int16 a1, __int16 a2, __int16 a3)
{
  v3 = &xmmword_100B5C832;
  if (BYTE9(xmmword_100B5C832))
  {
    v4 = &xmmword_100B5C832;
    v5 = 10;
    while (--v5)
    {
      v3 = (v4 + 10);
      v6 = *(v4 + 19);
      v4 = (v4 + 10);
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    *v3 = a1;
    *(v3 + 2) = 27;
    *(v3 + 2) = a2;
    *(v3 + 3) = a3;
    result = 1;
    *(v3 + 4) = 257;
  }

  return result;
}

uint64_t sub_1001C4E94(__int16 a1, __int16 a2, __int16 a3)
{
  v3 = &xmmword_100B5C832;
  if (BYTE9(xmmword_100B5C832))
  {
    v4 = &xmmword_100B5C832;
    v5 = 10;
    while (--v5)
    {
      v3 = (v4 + 10);
      v6 = *(v4 + 19);
      v4 = (v4 + 10);
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    *v3 = a1;
    *(v3 + 2) = 27;
    *(v3 + 2) = a2;
    *(v3 + 3) = a3;
    result = 1;
    *(v3 + 4) = 258;
  }

  return result;
}

uint64_t sub_1001C4EF4(int a1)
{
  v1 = 0;
  v2 = 10;
  v3 = &xmmword_100B5C832;
  do
  {
    if (*(v3 + 9) == 1 && *v3 == a1)
    {
      *(v3 + 4) = 0;
      *v3 = 0;
      v1 = 1;
    }

    v3 = (v3 + 10);
    --v2;
  }

  while (v2);
  return v1 & 1;
}

uint64_t sub_1001C4F3C()
{
  dword_100B5C892 = 0;
  xmmword_100B5C872 = 0u;
  unk_100B5C882 = 0u;
  xmmword_100B5C852 = 0u;
  unk_100B5C862 = 0u;
  xmmword_100B5C832 = 0u;
  unk_100B5C842 = 0u;
  return 1;
}

void sub_1001C4F60(id a1)
{
  qword_100B5C6D8 = os_log_create("com.apple.bluetooth", "PacketLogger.HCI");
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  qword_100B5C898 = dispatch_queue_create("HCI Tracing", v1);
}

void sub_1001C4FB8(id a1)
{
  name = 0;
  if (qword_100B5C8C0 != -1)
  {
    sub_100813124();
  }

  v1 = dword_100B5C8B8;
  if (!dword_100B5C8B8)
  {
    v8 = qword_100B5C6D8;
    if (!os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "Failed to get host port for calendar changes";
    v6 = v8;
    v7 = 2;
    goto LABEL_9;
  }

  v2 = mach_port_allocate(mach_task_self_, 1u, &name);
  if (v2)
  {
    v3 = v2;
    v4 = qword_100B5C6D8;
    if (!os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    v15 = v3;
    v5 = "Failed to allocate mach port for calendar changes: error %d";
    v6 = v4;
    v7 = 8;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    return;
  }

  v9 = name;
  if (qword_100B5C8A0 != -1)
  {
    sub_100812F50();
  }

  qword_100B5C8B0 = dispatch_source_create(&_dispatch_source_type_mach_recv, v9, 0, qword_100B5C898);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1001C5188;
  v10[3] = &unk_100AE58E0;
  v11 = name;
  v12 = v1;
  dispatch_source_set_event_handler(qword_100B5C8B0, v10);
  dispatch_activate(qword_100B5C8B0);
  sub_1001C5280(v1, name);
}

void sub_1001C5188(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  v2 = *(a1 + 32);
  *&v5[4] = 24;
  *&v5[12] = v2;
  v3 = mach_msg_receive(v5);
  v4 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "resetTimeReference, %X", buf, 8u);
  }

  qword_100B5C8D0 = sub_1001C5474();
  byte_100B5C820 = 1;
  sub_1001C5280(*(a1 + 36), *(a1 + 32));
  if (!v3)
  {
    mach_msg_destroy(v5);
  }
}

void sub_1001C5280(host_t a1, mach_port_t notify_port)
{
  v4 = host_request_notification(a1, (byte_100B5C8C8 & 1) == 0, notify_port);
  if (v4 == 4 && (byte_100B5C8C8 & 1) == 0)
  {
    byte_100B5C8C8 = 1;
    v4 = host_request_notification(a1, 0, notify_port);
  }

  if (v4)
  {
    v5 = qword_100B5C6D8;
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to register for calendar changes: error %d", v6, 8u);
    }
  }
}

void sub_1001C5378(id a1)
{
  v1 = mach_host_self();
  port = 0;
  special_port = host_get_special_port(v1, -1, 1, &port);
  v3 = special_port;
  if (special_port != 4)
  {
    if (special_port)
    {
      if (dword_100B5C8B8)
      {
        return;
      }

      goto LABEL_7;
    }

    mach_port_deallocate(mach_task_self_, v1);
    v1 = port;
  }

  dword_100B5C8B8 = v1;
  if (v1)
  {
    return;
  }

LABEL_7:
  v4 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to get mach host port: error %d", buf, 8u);
  }
}

unint64_t sub_1001C5474()
{
  v4 = 0;
  v3 = 0;
  v2 = 0;
  sub_1000D42DC(&v4, &v3);
  sub_100016250(&v2);
  v0 = v3 / 1000;
  if ((v3 / 1000) < SWORD2(v2))
  {
    LOWORD(v0) = v3 / 1000 + 1000;
  }

  return (v4 - v2 - ((v3 / 1000) < SWORD2(v2))) | ((v0 - WORD2(v2)) << 32);
}

uint64_t sub_1001C5500(uint64_t a1, uint64_t a2)
{
  lockdown_send();
  result = lockdown_send();
  if (result == -1)
  {
    *(a2 + 10) = 1;
  }

  return result;
}

void sub_1001C5550(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v4, "packet", *a2, *(a2 + 8));
  xpc_connection_send_message(a1, v4);

  xpc_release(v4);
}

void sub_1001C55D0(void *a1, char a2)
{
  v4 = qword_100B5C6D8;
  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Live Logging", buf, 2u);
  }

  if (byte_100B5C6E2)
  {
    if (a2)
    {
      Mutable = qword_100B5C8E0;
      if (!qword_100B5C8E0)
      {
        Mutable = CFSetCreateMutable(0, 0, 0);
        qword_100B5C8E0 = Mutable;
      }

      Count = CFSetGetCount(Mutable);
      CFSetSetValue(qword_100B5C8E0, a1);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_1001C595C;
      handler[3] = &unk_100AE59E0;
      handler[4] = a1;
      xpc_connection_set_event_handler(a1, handler);
      if (qword_100B5C8A0 != -1)
      {
        sub_100812F50();
      }

      xpc_connection_set_target_queue(a1, qword_100B5C898);
      xpc_connection_resume(a1);
      if (Count)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = qword_100B5C8D8;
      if (!qword_100B5C8D8)
      {
        v11 = CFSetCreateMutable(0, 0, 0);
        qword_100B5C8D8 = v11;
      }

      v12 = CFSetGetCount(v11);
      CFSetSetValue(qword_100B5C8D8, a1);
      if (v12)
      {
        goto LABEL_20;
      }
    }

    if (off_100B5C6F0)
    {
      v7 = off_100B5C6F0(1);
    }

LABEL_20:
    if (off_100BC9C10)
    {
      off_100BC9C10(v7);
    }

    if (word_100B5C808)
    {
      sub_1000C522C(qword_100B5C810, word_100B5C808);
    }

    return;
  }

  if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008132B4();
  }

  v8 = malloc_type_malloc(0x27uLL, 0x40F0C4A3uLL);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000A5B88(v8, 39, "Bluetooth Profile Required", 26, 0xFCu);
    sub_1000C522C(v9, v10);
    free(v9);
  }
}

void sub_1001C57E8(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    if (byte_100B5C6E8 == 1)
    {
      v4 = qword_100B5C6D8;
      if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        v5 = v10;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PacketLogger skipping authentication", v5, 2u);
      }
    }

    else
    {
      memset(v10, 0, sizeof(v10));
      xpc_connection_get_audit_token();
      v6 = xpc_copy_entitlement_for_token();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      v8 = xpc_dictionary_get_BOOL(v6, "com.apple.bluetooth.internal");
      xpc_release(v7);
      if (!v8)
      {
        return;
      }

      v4 = qword_100B5C6D8;
      if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v5 = &v9;
        goto LABEL_13;
      }
    }

    sub_1001C55D0(a2, 1);
    return;
  }

  if (type == &_xpc_type_error)
  {
    xpc_dictionary_get_string(a2, _xpc_error_key_description);
    if (os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008132F0();
    }

    sub_1001C37FC();
  }
}

void sub_1001C595C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    if (qword_100B5C8E0)
    {
      CFSetRemoveValue(qword_100B5C8E0, *(a1 + 32));
    }

    xpc_dictionary_get_string(object, _xpc_error_key_description);
    if (object != &_xpc_error_connection_invalid && os_log_type_enabled(qword_100B5C6D8, OS_LOG_TYPE_ERROR))
    {
      sub_100813360();
    }
  }

  else if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_expects_reply())
    {
      reply = xpc_dictionary_create_reply(object);
      if (reply)
      {
        v6 = reply;
        xpc_connection_send_message(*(a1 + 32), reply);

        xpc_release(v6);
      }
    }
  }
}

uint64_t sub_1001C5A5C(pthread_mutex_t *a1)
{
  v3.__sig = 0;
  *v3.__opaque = 0;
  if (pthread_mutexattr_init(&v3))
  {
    fprintf(__stderrp, "(0x%p) Failed to init mutex attr - %d!");
  }

  else if (pthread_mutexattr_settype(&v3, 2))
  {
    fprintf(__stderrp, "(0x%p) Failed to set mutex attr type - %d!");
  }

  else
  {
    if (!pthread_mutex_init(a1, &v3))
    {
      return 1;
    }

    fprintf(__stderrp, "(0x%p) Failed to init mutex - %d!");
  }

  return 0;
}

BOOL sub_1001C5B4C(pthread_mutex_t *a1)
{
  v2 = pthread_mutex_destroy(a1);
  if (v2)
  {
    fprintf(__stderrp, "(%p) Failed to destroy mutex - %d!", a1, v2);
  }

  return v2 == 0;
}

BOOL sub_1001C5BA4(pthread_t *a1, void *(__cdecl *a2)(void *), void *a3)
{
  memset(&v7, 0, sizeof(v7));
  pthread_attr_init(&v7);
  pthread_attr_setdetachstate(&v7, 2);
  return pthread_create(a1, &v7, a2, a3) == 0;
}

BOOL sub_1001C5C44(_opaque_pthread_t *a1, int a2)
{
  v3.sched_priority = a2;
  *v3.__opaque = 0;
  return pthread_setschedparam(a1, 2, &v3) == 0;
}

BOOL sub_1001C5C78(_opaque_pthread_t *a1, integer_t a2, integer_t a3, int a4, int a5)
{
  v9 = pthread_mach_thread_np(a1);
  get_default = 1;
  policy_infoCnt = 4;
  *policy_info = 0;
  v12 = 0;
  if (thread_policy_get(v9, 2u, policy_info, &policy_infoCnt, &get_default))
  {
    return 0;
  }

  if (a2)
  {
    policy_info[0] = a2;
    policy_info[1] = a3;
    LODWORD(v12) = a4;
  }

  HIDWORD(v12) = a5;
  return thread_policy_set(v9, 2u, policy_info, 4u) == 0;
}

uint64_t sub_1001C5D84(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, void, void, int), uint64_t *a3)
{
  if (!a1)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 277, "void _ACI_HRBReadEnhancedTransmitPowerLevelEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v17 = *(a3 + 5);
      v18 = *(a3 + 6);
      if ((v17 - v18) > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v19 = *a3;
          v16 = *(*a3 + v18);
          *(a3 + 6) = v18 + 2;
          if (v17 <= (v18 + 2))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 278, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *(a3 + 6) = v18 + 3;
          if (v17 <= (v18 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 279, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v15 = *(v19 + (v18 + 2));
          *(a3 + 6) = v18 + 4;
          if (v17 <= (v18 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 280, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v7 = *(v19 + (v18 + 3));
          *(a3 + 6) = v18 + 5;
          if (v17 <= (v18 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 281, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v8 = *(v19 + (v18 + 4));
          *(a3 + 6) = v18 + 6;
          if (v17 <= (v18 + 6))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 282, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v9 = *(v19 + (v18 + 5));
          *(a3 + 6) = v18 + 7;
          if (v17 <= (v18 + 7))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 283, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v10 = *(v19 + (v18 + 6));
          *(a3 + 6) = v18 + 8;
          if (v17 <= (v18 + 8))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 284, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v11 = *(v19 + (v18 + 7));
          *(a3 + 6) = v18 + 9;
          if (v17 <= (v18 + 9))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 285, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          result = *(v19 + (v18 + 8));
          *(a3 + 6) = v18 + 10;
          if (v17 <= (v18 + 10))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 286, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v12 = *(v19 + (v18 + 9));
          *(a3 + 6) = v18 + 11;
          if (v17 <= (v18 + 11))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 287, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v13 = *(v19 + (v18 + 10));
          *(a3 + 6) = v18 + 12;
          v14 = *(v19 + (v18 + 11));
          if (a2)
          {
            goto LABEL_6;
          }

          return result;
        }

        v20 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_27:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 277, v20);
      }
    }

    v20 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_27;
  }

  result = sub_10000C240();
  if (result && (sub_10000AF54("status %!", a1), v6 = sub_10000C050(0x54u), result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR), result))
  {
    sub_10080F604();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
LABEL_6:
    HIBYTE(v21) = v14;
    BYTE2(v21) = v13;
    BYTE1(v21) = v12;
    LOBYTE(v21) = result;
    return a2(a1, v16, v15, v7, v8, v9, v10, v11, v21);
  }

  return result;
}

void sub_1001C60DC(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 307, "void _ACI_HRBReadAFHChannelMapEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
LABEL_14:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 307, "ByteStream_NumReadBytesAvail(*pBs) >= (10)");
  }

  v8 = *(a3 + 6);
  v9 = *(a3 + 5);
  if (v9 - v8 <= 9)
  {
    goto LABEL_14;
  }

  v10 = *a3;
  v7 = *a3 + v8;
  *(a3 + 6) = v8 + 10;
  v6 = v10 + (v8 + 10);
  if (v9 - (v8 + 10) >= 0xA0)
  {
    *(a3 + 6) = v8 + 170;
  }

LABEL_10:
  if (a2)
  {
    a2(result, v7, v6);
  }
}

uint64_t sub_1001C61E8(void *a1, void (*a2)())
{
  v9 = 0;
  v10 = 0;
  result = sub_10001FFD8(&v9);
  if (!result)
  {
    if (HIBYTE(v10))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2908, "OI_STATUS _ACI_WriteLELocalSupportedFeatures(uint8_t *, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v10) - WORD2(v10) > 7)
    {
      if (BYTE6(v10) == 2)
      {
        *(v9 + WORD2(v10)) = *a1;
        WORD2(v10) += 8;
        return sub_100020078(64963, v9, BYTE4(v10), a2, sub_1001C62CC, v5, v6, v7);
      }

      v8 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2908, v8);
    }

    v8 = "ByteStream_NumReadBytesAvail(bs) >= (8)";
    goto LABEL_10;
  }

  return result;
}

void sub_1001C62CC(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (result && sub_10000C240() && (sub_10000AF54("status %d, hlCb 0x%x", result, a2), v4 = sub_10000C050(0x54u), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  a2(result);
}

uint64_t sub_1001C6358(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3634, "OI_STATUS _ACI_WriteCellularTxState(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65437, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3634, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

void sub_1001C6430(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!", result);
      v5 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v6 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4174, "void _ACI_PropLocalFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_14;
  }

  v7 = *(a3 + 12);
  if (*(a3 + 10) - v7 <= 3)
  {
LABEL_14:
    v8 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_16;
  }

  if (*(a3 + 14) != 1)
  {
    v8 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4174, v8);
  }

  v6 = *(*a3 + v7);
  *(a3 + 12) = v7 + 4;
  if (a2)
  {
LABEL_6:
    a2(result, v6);
  }
}

void sub_1001C6540(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4204, "void _ACI_PropRemoteFeaturesEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v8 = *(a3 + 5);
      v9 = *(a3 + 6);
      if (v8 - v9 > 1)
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          v11 = (*a3 + v9);
          v12 = *v11;
          v13 = v11[1];
          *(a3 + 6) = v9 + 2;
          if (v8 - (v9 + 2) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4205, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          v7 = v12 | (v13 << 8);
          v6 = *(v10 + (v9 + 2));
          *(a3 + 6) = v9 + 6;
          if (a2)
          {
            goto LABEL_6;
          }

          return;
        }

        v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4204, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  v7 = 0;
  if (a2)
  {
LABEL_6:
    a2(result, v7, v6);
  }
}

void sub_1001C6698(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *), uint64_t *a3)
{
  memset(v13, 0, sizeof(v13));
  if (!result)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4237, "void _ACI_PropLocalFeaturesExtendedEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    }

    else
    {
      v7 = *(a3 + 5);
      v8 = *(a3 + 6);
      if (v7 - v8 > 3)
      {
        if (*(a3 + 14) == 1)
        {
          v9 = *a3;
          v6 = *(*a3 + v8);
          *(a3 + 6) = v8 + 4;
          if (v7 - (v8 + 4) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4238, "ByteStream_NumReadBytesAvail(*pBs) >= (4)");
          }

          *(a3 + 6) = v8 + 8;
          if (v7 - (v8 + 8) < 32)
          {
            *(a3 + 15) = 1;
            if (!a2)
            {
              return;
            }
          }

          else
          {
            v10 = 0;
            v11 = v9 + (v8 + 8);
            do
            {
              *(v13 + v10) = *(v11 + v10);
              ++v10;
            }

            while (v10 != 32);
            *(a3 + 6) = v8 + 40;
            if (!a2)
            {
              return;
            }
          }

LABEL_6:
          a2(result, v6, v13);
          return;
        }

        v12 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4237, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_22;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("status %!", result);
    v5 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  v6 = 0;
  if (a2)
  {
    goto LABEL_6;
  }
}

uint64_t sub_1001C6854(__int16 a1, __int16 a2, void (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5708, "OI_STATUS _ACI_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = a1;
        v10 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5709, "OI_STATUS _ACI_AdjustLEInstantFactor(uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v14) - v10 > 1)
        {
          if (BYTE6(v14) == 2)
          {
            *(v13 + v10) = a2;
            *(v13 + WORD2(v14) + 1) = HIBYTE(a2);
            WORD2(v14) += 2;
            return sub_100020078(65079, v13, BYTE4(v14), a3, sub_1001C69E8, v7, v8, v9);
          }

          v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5709, v12);
        }

        v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_17;
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5708, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

void sub_1001C69E8(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 90, "void _ACI_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_8;
  }

  if (*(a3 + 5) <= *(a3 + 6))
  {
LABEL_8:
    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 91, "void _ACI_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
        v9 = 0;
      }

      else
      {
        v9 = *(a3 + 5) - *(a3 + 6);
      }

      sub_10000AF54("Invalid data size %d", v9);
      v10 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (a1 && sub_10000C240() && ((v6 = *(a3 + 6), v7 = *a3 + v6, !*(a3 + 15)) ? (v8 = *(a3 + 5) - v6) : (sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 96, "void _ACI_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)"), v8 = 0), sub_10000AF54("hlCb 0x%x, data %@", a2, v7, v8), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v12 = *a3;
  v13 = *(a3 + 6);
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 99, "void _ACI_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    v14 = 0;
  }

  else
  {
    v14 = *(a3 + 10) - v13;
  }

  a2(a1, v12 + v13, v14);
}

uint64_t sub_1001C6BAC(char a1, __int16 a2, __int16 a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)())
{
  v29 = 0;
  v30 = 0;
  result = sub_10001FFD8(&v29);
  if (!result)
  {
    if (HIBYTE(v30))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5722, "OI_STATUS _ACI_SetBTSCPageScan(_Bool, uint16_t, uint16_t, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v19 = WORD2(v30);
      if (WORD1(v30) > WORD2(v30))
      {
        if (BYTE6(v30) == 2)
        {
          ++WORD2(v30);
          *(v29 + v19) = a1;
          if (HIBYTE(v30))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5723, "OI_STATUS _ACI_SetBTSCPageScan(_Bool, uint16_t, uint16_t, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v30) - WORD2(v30) > 1)
          {
            if (BYTE6(v30) == 2)
            {
              *(v29 + WORD2(v30)) = a2;
              v20 = WORD2(v30) + 2;
              WORD2(v30) += 2;
              if (HIBYTE(v30))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5724, "OI_STATUS _ACI_SetBTSCPageScan(_Bool, uint16_t, uint16_t, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v30) - v20 > 1)
              {
                if (BYTE6(v30) == 2)
                {
                  *(v29 + v20) = a3;
                  *(v29 + WORD2(v30) + 1) = HIBYTE(a3);
                  v21 = WORD2(v30);
                  v22 = WORD2(v30) + 2;
                  WORD2(v30) += 2;
                  if (HIBYTE(v30))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5725, "OI_STATUS _ACI_SetBTSCPageScan(_Bool, uint16_t, uint16_t, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v30) > v22)
                  {
                    if (BYTE6(v30) == 2)
                    {
                      WORD2(v30) = v21 + 3;
                      *(v29 + v22) = a4;
                      if (HIBYTE(v30))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5726, "OI_STATUS _ACI_SetBTSCPageScan(_Bool, uint16_t, uint16_t, _Bool, _Bool, _Bool, _Bool, _Bool, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v23 = WORD2(v30);
                        if (WORD1(v30) > WORD2(v30))
                        {
                          if (BYTE6(v30) == 2)
                          {
                            ++WORD2(v30);
                            *(v29 + v23) = a5;
                            return sub_100020078(64776, v29, BYTE4(v30), a10, sub_1001C62CC, v16, v17, v18);
                          }

                          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5726, v28);
                        }
                      }

                      v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5725, v27);
                  }

                  v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5724, v26);
              }

              v26 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_30;
            }

            v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5723, v25);
          }

          v25 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5722, v24);
      }
    }

    v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001C6EB8(unint64_t a1, void (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    v5 = sub_10009A66C(a1);
    v12 = v5;
    v14 = BYTE6(v5);
    v13 = WORD2(v5);
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5964, "OI_STATUS _ACI_IncomingLEConnectionDenyListAdd(BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = v5;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5965, "OI_STATUS _ACI_IncomingLEConnectionDenyListAdd(BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v16) - WORD2(v16) > 5)
          {
            if (BYTE6(v16) == 2)
            {
              sub_1000075EC((v15 + WORD2(v16)), &v12 + 1, 6uLL);
              WORD2(v16) += 6;
              return sub_100020078(65485, v15, BYTE4(v16), a2, sub_1001C62CC, v7, v8, v9);
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5965, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5964, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001C703C(unint64_t a1, void (*a2)())
{
  v15 = 0;
  v16 = 0;
  result = sub_10001FFD8(&v15);
  if (!result)
  {
    v5 = sub_10009A66C(a1);
    v12 = v5;
    v14 = BYTE6(v5);
    v13 = WORD2(v5);
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5979, "OI_STATUS _ACI_IncomingLEConnectionDenyListRemove(BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = v5;
          if (HIBYTE(v16))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5980, "OI_STATUS _ACI_IncomingLEConnectionDenyListRemove(BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v16) - WORD2(v16) > 5)
          {
            if (BYTE6(v16) == 2)
            {
              sub_1000075EC((v15 + WORD2(v16)), &v12 + 1, 6uLL);
              WORD2(v16) += 6;
              return sub_100020078(65486, v15, BYTE4(v16), a2, sub_1001C62CC, v7, v8, v9);
            }

            v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5980, v11);
          }

          v11 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5979, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001C71C0(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65484, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001C721C(char a1, char a2, char a3, char a4, char a5, void (*a6)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (!result)
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6005, "OI_STATUS _ACI_LEAdvTxPowerIncrease(uint8_t, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v16) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6006, "OI_STATUS _ACI_LEAdvTxPowerIncrease(uint8_t, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v17 = WORD2(v27);
            if (WORD1(v27) > WORD2(v27))
            {
              if (BYTE6(v27) == 2)
              {
                ++WORD2(v27);
                *(v26 + v17) = a2;
                if (HIBYTE(v27))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6007, "OI_STATUS _ACI_LEAdvTxPowerIncrease(uint8_t, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v18 = WORD2(v27);
                  if (WORD1(v27) > WORD2(v27))
                  {
                    if (BYTE6(v27) == 2)
                    {
                      ++WORD2(v27);
                      *(v26 + v18) = a3;
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6008, "OI_STATUS _ACI_LEAdvTxPowerIncrease(uint8_t, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v19 = WORD2(v27);
                        if (WORD1(v27) > WORD2(v27))
                        {
                          if (BYTE6(v27) == 2)
                          {
                            ++WORD2(v27);
                            *(v26 + v19) = a4;
                            if (HIBYTE(v27))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6009, "OI_STATUS _ACI_LEAdvTxPowerIncrease(uint8_t, uint8_t, int8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v20 = WORD2(v27);
                              if (WORD1(v27) > WORD2(v27))
                              {
                                if (BYTE6(v27) == 2)
                                {
                                  ++WORD2(v27);
                                  *(v26 + v20) = a5;
                                  return sub_100020078(64978, v26, BYTE4(v27), a6, sub_1001C62CC, v13, v14, v15);
                                }

                                v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6009, v25);
                              }
                            }

                            v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_38;
                          }

                          v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6008, v24);
                        }
                      }

                      v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_34;
                    }

                    v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6007, v23);
                  }
                }

                v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_30;
              }

              v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6006, v22);
            }
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6005, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001C74F4(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6022, "OI_STATUS _ACI_ReadPowerCapState(uint16_t, BT_VSC_READ_POWERCAP_STATE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64810, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6022, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001C75CC(char a1, uint64_t a2, void (*a3)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6035, "OI_STATUS _ACI_EnhancedReadPowerCapState(uint16_t, uint8_t, BT_VSC_READ_POWERCAP_STATE_CB)");
    }

    else
    {
      v9 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v9) = a1;
          return sub_100020078(64810, v11, BYTE4(v12), a3, sub_1001C69E8, v6, v7, v8);
        }

        v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6035, v10);
      }
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001C76A4(__int16 a1, __int16 a2, char a3, unsigned int a4, char a5, char a6, char *a7, void (*a8)())
{
  v36 = 0;
  v37 = 0;
  result = sub_10001FFD8(&v36);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6047, "OI_STATUS _ACI_HCIPPGenericCmdV2(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_33;
  }

  if (WORD1(v37) - WORD2(v37) <= 1)
  {
LABEL_33:
    v30 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_35;
  }

  if (BYTE6(v37) != 2)
  {
    v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6047, v30);
  }

  *(v36 + WORD2(v37)) = a1;
  v20 = WORD2(v37) + 2;
  WORD2(v37) += 2;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6048, "OI_STATUS _ACI_HCIPPGenericCmdV2(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_37;
  }

  if (WORD1(v37) - v20 <= 1)
  {
LABEL_37:
    v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_39;
  }

  if (BYTE6(v37) != 2)
  {
    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6048, v31);
  }

  *(v36 + v20) = a2;
  *(v36 + WORD2(v37) + 1) = HIBYTE(a2);
  v21 = WORD2(v37);
  v22 = WORD2(v37) + 2;
  WORD2(v37) += 2;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6049, "OI_STATUS _ACI_HCIPPGenericCmdV2(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_41;
  }

  if (WORD1(v37) <= v22)
  {
LABEL_41:
    v32 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_43;
  }

  if (BYTE6(v37) != 2)
  {
    v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6049, v32);
  }

  WORD2(v37) = v21 + 3;
  *(v36 + v22) = a3;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6050, "OI_STATUS _ACI_HCIPPGenericCmdV2(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_45;
  }

  v23 = WORD2(v37);
  if (WORD1(v37) <= WORD2(v37))
  {
LABEL_45:
    v33 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_47;
  }

  if (BYTE6(v37) != 2)
  {
    v33 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_47:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6050, v33);
  }

  ++WORD2(v37);
  *(v36 + v23) = a4;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6051, "OI_STATUS _ACI_HCIPPGenericCmdV2(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_49;
  }

  v24 = WORD2(v37);
  if (WORD1(v37) <= WORD2(v37))
  {
LABEL_49:
    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_51;
  }

  if (BYTE6(v37) != 2)
  {
    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_51:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6051, v34);
  }

  ++WORD2(v37);
  *(v36 + v24) = a5;
  if (HIBYTE(v37))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6052, "OI_STATUS _ACI_HCIPPGenericCmdV2(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
    goto LABEL_53;
  }

  v25 = WORD2(v37);
  if (WORD1(v37) <= WORD2(v37))
  {
LABEL_53:
    v35 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_55;
  }

  if (BYTE6(v37) != 2)
  {
    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_55:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6052, v35);
  }

  ++WORD2(v37);
  *(v36 + v25) = a6;
  if (a4)
  {
    v26 = a4;
    while (!HIBYTE(v37))
    {
      v27 = WORD2(v37);
      if (WORD1(v37) <= WORD2(v37))
      {
        goto LABEL_30;
      }

      if (BYTE6(v37) != 2)
      {
        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_31;
      }

      v28 = *a7++;
      ++WORD2(v37);
      *(v36 + v27) = v28;
      if (!--v26)
      {
        return sub_100020078(64794, v36, BYTE4(v37), a8, sub_1001C69E8, v17, v18, v19);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6054, "OI_STATUS _ACI_HCIPPGenericCmdV2(uint16_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t *, BT_VSC_COMPLETE_CB)");
LABEL_30:
    v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_31:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6054, v29);
  }

  return sub_100020078(64794, v36, BYTE4(v37), a8, sub_1001C69E8, v17, v18, v19);
}

uint64_t sub_1001C7AC8(char a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, __int16 a11, char a12, char a13, char a14, __int16 a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, void (*a25)())
{
  v75 = 0;
  v76 = 0;
  result = sub_10001FFD8(&v75);
  if (!result)
  {
    if (HIBYTE(v76))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6069, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v37 = WORD2(v76);
      if (WORD1(v76) > WORD2(v76))
      {
        if (BYTE6(v76) == 2)
        {
          ++WORD2(v76);
          *(v75 + v37) = a1;
          if (HIBYTE(v76))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6070, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v76) - WORD2(v76) > 1)
          {
            if (BYTE6(v76) == 2)
            {
              *(v75 + WORD2(v76)) = a2;
              v38 = WORD2(v76);
              v39 = WORD2(v76) + 2;
              WORD2(v76) += 2;
              if (HIBYTE(v76))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6071, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v76) > v39)
              {
                if (BYTE6(v76) == 2)
                {
                  WORD2(v76) = v38 + 3;
                  *(v75 + v39) = a3;
                  if (HIBYTE(v76))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6072, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else
                  {
                    v40 = WORD2(v76);
                    if (WORD1(v76) > WORD2(v76))
                    {
                      if (BYTE6(v76) == 2)
                      {
                        ++WORD2(v76);
                        *(v75 + v40) = a4;
                        if (HIBYTE(v76))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6073, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                        }

                        else
                        {
                          v41 = WORD2(v76);
                          if (WORD1(v76) > WORD2(v76))
                          {
                            if (BYTE6(v76) == 2)
                            {
                              ++WORD2(v76);
                              *(v75 + v41) = a5;
                              if (HIBYTE(v76))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6074, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else
                              {
                                v42 = WORD2(v76);
                                if (WORD1(v76) > WORD2(v76))
                                {
                                  if (BYTE6(v76) == 2)
                                  {
                                    ++WORD2(v76);
                                    *(v75 + v42) = a6;
                                    if (HIBYTE(v76))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6075, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                    }

                                    else
                                    {
                                      v43 = WORD2(v76);
                                      if (WORD1(v76) > WORD2(v76))
                                      {
                                        if (BYTE6(v76) == 2)
                                        {
                                          ++WORD2(v76);
                                          *(v75 + v43) = a7;
                                          if (HIBYTE(v76))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6076, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                          }

                                          else
                                          {
                                            v44 = WORD2(v76);
                                            if (WORD1(v76) > WORD2(v76))
                                            {
                                              if (BYTE6(v76) == 2)
                                              {
                                                ++WORD2(v76);
                                                *(v75 + v44) = a8;
                                                if (HIBYTE(v76))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6077, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                }

                                                else
                                                {
                                                  v45 = WORD2(v76);
                                                  if (WORD1(v76) > WORD2(v76))
                                                  {
                                                    if (BYTE6(v76) == 2)
                                                    {
                                                      ++WORD2(v76);
                                                      *(v75 + v45) = a9;
                                                      if (HIBYTE(v76))
                                                      {
                                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6078, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                      }

                                                      else
                                                      {
                                                        v46 = WORD2(v76);
                                                        if (WORD1(v76) > WORD2(v76))
                                                        {
                                                          if (BYTE6(v76) == 2)
                                                          {
                                                            ++WORD2(v76);
                                                            *(v75 + v46) = a10;
                                                            if (HIBYTE(v76))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6079, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                            }

                                                            else if (WORD1(v76) - WORD2(v76) > 1)
                                                            {
                                                              if (BYTE6(v76) == 2)
                                                              {
                                                                *(v75 + WORD2(v76)) = a11;
                                                                v47 = WORD2(v76) + 2;
                                                                WORD2(v76) += 2;
                                                                if (HIBYTE(v76))
                                                                {
                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6080, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                }

                                                                else if (WORD1(v76) - v47 > 1)
                                                                {
                                                                  if (BYTE6(v76) == 2)
                                                                  {
                                                                    *(v75 + v47) = a12;
                                                                    *(v75 + WORD2(v76) + 1) = a13;
                                                                    v48 = WORD2(v76);
                                                                    v49 = WORD2(v76) + 2;
                                                                    WORD2(v76) += 2;
                                                                    if (HIBYTE(v76))
                                                                    {
                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6081, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                    }

                                                                    else if (WORD1(v76) > v49)
                                                                    {
                                                                      if (BYTE6(v76) == 2)
                                                                      {
                                                                        WORD2(v76) = v48 + 3;
                                                                        *(v75 + v49) = a14;
                                                                        if (HIBYTE(v76))
                                                                        {
                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6082, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                        }

                                                                        else if (WORD1(v76) - WORD2(v76) > 1)
                                                                        {
                                                                          if (BYTE6(v76) == 2)
                                                                          {
                                                                            *(v75 + WORD2(v76)) = a15;
                                                                            v50 = WORD2(v76) + 2;
                                                                            WORD2(v76) += 2;
                                                                            if (HIBYTE(v76))
                                                                            {
                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6083, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                            }

                                                                            else if (WORD1(v76) - v50 > 1)
                                                                            {
                                                                              if (BYTE6(v76) == 2)
                                                                              {
                                                                                *(v75 + v50) = a16;
                                                                                *(v75 + WORD2(v76) + 1) = a17;
                                                                                v51 = WORD2(v76) + 2;
                                                                                WORD2(v76) += 2;
                                                                                if (HIBYTE(v76))
                                                                                {
                                                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6084, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                                }

                                                                                else if (WORD1(v76) - v51 > 1)
                                                                                {
                                                                                  if (BYTE6(v76) == 2)
                                                                                  {
                                                                                    *(v75 + v51) = a18;
                                                                                    *(v75 + WORD2(v76) + 1) = a19;
                                                                                    v52 = WORD2(v76) + 2;
                                                                                    WORD2(v76) += 2;
                                                                                    if (HIBYTE(v76))
                                                                                    {
                                                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6085, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                                    }

                                                                                    else if (WORD1(v76) - v52 > 1)
                                                                                    {
                                                                                      if (BYTE6(v76) == 2)
                                                                                      {
                                                                                        *(v75 + v52) = a20;
                                                                                        *(v75 + WORD2(v76) + 1) = a21;
                                                                                        v53 = WORD2(v76) + 2;
                                                                                        WORD2(v76) += 2;
                                                                                        if (HIBYTE(v76))
                                                                                        {
                                                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6086, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                                        }

                                                                                        else if (WORD1(v76) - v53 > 1)
                                                                                        {
                                                                                          if (BYTE6(v76) == 2)
                                                                                          {
                                                                                            *(v75 + v53) = a22;
                                                                                            *(v75 + WORD2(v76) + 1) = a23;
                                                                                            v54 = WORD2(v76);
                                                                                            v55 = WORD2(v76) + 2;
                                                                                            WORD2(v76) += 2;
                                                                                            if (HIBYTE(v76))
                                                                                            {
                                                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6087, "OI_STATUS _ACI_HCIVSCLECSSetCapabilities(uint8_t, uint16_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                                                                            }

                                                                                            else if (WORD1(v76) > v55)
                                                                                            {
                                                                                              if (BYTE6(v76) == 2)
                                                                                              {
                                                                                                WORD2(v76) = v54 + 3;
                                                                                                *(v75 + v55) = a24;
                                                                                                return sub_100020078(65166, v75, BYTE4(v76), a25, sub_1001C69E8, v34, v35, v36);
                                                                                              }

                                                                                              v74 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_136:
                                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6087, v74);
                                                                                            }

                                                                                            v74 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                                            goto LABEL_136;
                                                                                          }

                                                                                          v73 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_132:
                                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6086, v73);
                                                                                        }

                                                                                        v73 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                                        goto LABEL_132;
                                                                                      }

                                                                                      v72 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_128:
                                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6085, v72);
                                                                                    }

                                                                                    v72 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                                    goto LABEL_128;
                                                                                  }

                                                                                  v71 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_124:
                                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6084, v71);
                                                                                }

                                                                                v71 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                                goto LABEL_124;
                                                                              }

                                                                              v70 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_120:
                                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6083, v70);
                                                                            }

                                                                            v70 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                            goto LABEL_120;
                                                                          }

                                                                          v69 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_116:
                                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6082, v69);
                                                                        }

                                                                        v69 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                        goto LABEL_116;
                                                                      }

                                                                      v68 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_112:
                                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6081, v68);
                                                                    }

                                                                    v68 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                                    goto LABEL_112;
                                                                  }

                                                                  v67 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_108:
                                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6080, v67);
                                                                }

                                                                v67 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                                goto LABEL_108;
                                                              }

                                                              v66 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_104:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6079, v66);
                                                            }

                                                            v66 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                                            goto LABEL_104;
                                                          }

                                                          v65 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_100:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6078, v65);
                                                        }
                                                      }

                                                      v65 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                      goto LABEL_100;
                                                    }

                                                    v64 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_96:
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6077, v64);
                                                  }
                                                }

                                                v64 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                                goto LABEL_96;
                                              }

                                              v63 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_92:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6076, v63);
                                            }
                                          }

                                          v63 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                          goto LABEL_92;
                                        }

                                        v62 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_88:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6075, v62);
                                      }
                                    }

                                    v62 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                    goto LABEL_88;
                                  }

                                  v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_84:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6074, v61);
                                }
                              }

                              v61 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_84;
                            }

                            v60 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_80:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6073, v60);
                          }
                        }

                        v60 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_80;
                      }

                      v59 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6072, v59);
                    }
                  }

                  v59 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_76;
                }

                v58 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6071, v58);
              }

              v58 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_72;
            }

            v57 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6070, v57);
          }

          v57 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_68;
        }

        v56 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6069, v56);
      }
    }

    v56 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_64;
  }

  return result;
}

void (**sub_1001C854C(void (**result)(uint64_t *a1, uint64_t a2), const void *a2))(uint64_t *a1, uint64_t a2)
{
  *result = sub_1001C8684;
  if (a2)
  {
    return memcpy(&off_100B5C8F0, a2, 0x218uLL);
  }

  return result;
}

uint64_t (*sub_1001C8574(void *a1))(void, void, void)
{
  memcpy(a1, off_100AE5A00, 0xA50uLL);

  return sub_10025793C(sub_1001C85B8);
}

unint64_t sub_1001C85B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!, opcode 0x%x, subOpcode %x, myopcode %x", a1, a2, a3, a2 & 0x3FF);
      v6 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 0x1C00000000000001uLL >> (a2 - 40);
    if ((a2 & 0x3FF) - 552 >= 0x3D)
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7 & 1;
}

void *sub_1001C8668(void *__src)
{
  if (__src)
  {
    return memcpy(&unk_100B5CB08, __src, 0x218uLL);
  }

  return __src;
}

void sub_1001C8684(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 14) != 1)
  {
    v216 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_580;
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 334, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
    goto LABEL_579;
  }

  v4 = a1 + 6;
  v3 = *(a1 + 6);
  v5 = *(a1 + 5);
  if (v5 - v3 <= 1)
  {
LABEL_579:
    v216 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_580:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 334, v216);
  }

  v6 = a2;
  v7 = *a1;
  v8 = *(*a1 + v3);
  v9 = v3 + 2;
  *(a1 + 6) = v3 + 2;
  if (v8 > 59677)
  {
    switch(v8)
    {
      case 65281:
      case 65288:
        goto LABEL_461;
      case 65282:
      case 65283:
      case 65284:
      case 65285:
      case 65291:
      case 65292:
      case 65293:
      case 65294:
      case 65295:
      case 65303:
      case 65304:
      case 65308:
      case 65309:
      case 65310:
      case 65311:
      case 65313:
      case 65314:
      case 65316:
      case 65317:
      case 65318:
      case 65319:
      case 65320:
      case 65321:
      case 65323:
      case 65324:
      case 65325:
        goto LABEL_458;
      case 65286:
        v10 = qword_100B5C9E8;
        if (!qword_100B5C9E8)
        {
          goto LABEL_461;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 242;
        if (v5 != (v3 + 242))
        {
          sub_1000D660C();
          v10 = qword_100B5C9E8;
        }

        goto LABEL_272;
      case 65287:
        v10 = qword_100B5C9F0;
        if (!qword_100B5C9F0)
        {
          goto LABEL_461;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 112;
        if (v5 != (v3 + 112))
        {
          sub_1000D660C();
          v10 = qword_100B5C9F0;
        }

        goto LABEL_272;
      case 65289:
        v10 = qword_100B5C928;
        if (!qword_100B5C928)
        {
          goto LABEL_461;
        }

        v79 = v3 + 253;
        *v4 = v79;
        if (v5 != v79)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 688, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65290:
        v10 = qword_100B5C930;
        if (!qword_100B5C930)
        {
          goto LABEL_461;
        }

        v75 = v3 + 222;
        *v4 = v75;
        if (v5 != v75)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 702, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65296:
        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 990, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        v72 = (v3 + 2);
        v73 = *(v7 + v72);
        if (*(v7 + v72))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI_VSE_SCAN_CORE_EVENT - unexpected subEvent %u", v73);
            v74 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
LABEL_457:
              sub_1000E09C0();
            }
          }

LABEL_458:
          if (sub_10000C240())
          {
            sub_10000AF54("Unhandled Vendor Specific Event: 0x%x", v8);
            v159 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          goto LABEL_461;
        }

        if (!qword_100B5CA60)
        {
          goto LABEL_458;
        }

        v226 = 0uLL;
        LOWORD(v227[0]) = 0;
        if ((v5 - (v3 + 3)) <= 1)
        {
          *(a1 + 15) = 1;
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 999, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
        }

        else
        {
          LOWORD(v226) = *(v7 + (v3 + 3));
          v155 = v3 + 5;
          *v4 = v155;
          if ((v5 - v155) >= 6)
          {
            sub_1000075EC(&v226 + 2, v7 + v155, 6uLL);
            *v4 += 6;
            goto LABEL_476;
          }
        }

        *(a1 + 15) = 1;
LABEL_476:
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1000, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1000, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
          v164 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v164 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1001, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }
        }

        else
        {
          v184 = *(a1 + 6);
          if (*(a1 + 5) > v184)
          {
            v185 = *a1;
            *(a1 + 6) = v184 + 1;
            BYTE8(v226) = *(v185 + v184);
            if (*(a1 + 5) > (v184 + 1))
            {
              v186 = *a1;
              *(a1 + 6) = v184 + 2;
              BYTE9(v226) = *(v186 + (v184 + 1));
              if (*(a1 + 5) > (v184 + 2))
              {
                v187 = *a1;
                *(a1 + 6) = v184 + 3;
                BYTE10(v226) = *(v187 + (v184 + 2));
                if (*(a1 + 5) > (v184 + 3))
                {
                  v188 = *a1;
                  *(a1 + 6) = v184 + 4;
                  BYTE11(v226) = *(v188 + (v184 + 3));
                  if (*(a1 + 5) - (v184 + 4) > 1)
                  {
                    v189 = (v184 + 4);
                    WORD6(v226) = *(*a1 + v189);
                    *(a1 + 6) = v184 + 6;
                    if (*(a1 + 5) - (v184 + 6) > 1)
                    {
                      HIWORD(v226) = *(*a1 + (v184 + 6));
                      v190 = v184 + 8;
                      *(a1 + 6) = v189 + 4;
                      if (*(a1 + 5) > (v189 + 4))
                      {
                        v191 = *a1;
                        v192 = v189 + 5;
                        *(a1 + 6) = v192;
                        LOBYTE(v227[0]) = *(v191 + v190);
                        if (*(a1 + 5) > v192)
                        {
                          v193 = *a1;
                          *(a1 + 6) = v192 + 1;
                          BYTE1(v227[0]) = *(v193 + v192);
LABEL_555:
                          (qword_100B5CA60)(&v226);
                          goto LABEL_461;
                        }

LABEL_554:
                        *(a1 + 15) = 1;
                        goto LABEL_555;
                      }

                      *(a1 + 15) = 1;
LABEL_553:
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1007, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                      goto LABEL_554;
                    }

                    *(a1 + 15) = 1;
LABEL_552:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1006, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                    v214 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v214 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1007, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    goto LABEL_553;
                  }

                  *(a1 + 15) = 1;
LABEL_551:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1005, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                  v213 = *(a1 + 14);
                  *(a1 + 15) = 1;
                  if (v213 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1006, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  goto LABEL_552;
                }

                *(a1 + 15) = 1;
LABEL_550:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1004, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                v212 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v212 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1005, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                goto LABEL_551;
              }

              *(a1 + 15) = 1;
LABEL_549:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1003, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
              v211 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v211 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1004, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              goto LABEL_550;
            }

            *(a1 + 15) = 1;
LABEL_548:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1002, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
            v210 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v210 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1003, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            goto LABEL_549;
          }

          *(a1 + 15) = 1;
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1001, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
        v209 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v209 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1002, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_548;
      case 65297:
        v10 = qword_100B5C938;
        if (!qword_100B5C938)
        {
          goto LABEL_461;
        }

        v80 = v3 + 66;
        *v4 = v80;
        if (v5 != v80)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 716, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65298:
        v10 = qword_100B5C940;
        if (!qword_100B5C940)
        {
          goto LABEL_461;
        }

        v88 = v3 + 226;
        *v4 = v88;
        if (v5 != v88)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 730, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65299:
        v10 = qword_100B5C948;
        if (!qword_100B5C948)
        {
          goto LABEL_461;
        }

        v78 = v3 + 220;
        *v4 = v78;
        if (v5 != v78)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 744, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        goto LABEL_296;
      case 65300:
        v10 = qword_100B5C950;
        if (!qword_100B5C950)
        {
          goto LABEL_461;
        }

        v87 = v3 + 242;
        *v4 = v87;
        if (v5 != v87)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 758, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

LABEL_296:
        v50 = (v7 + v9);
        goto LABEL_297;
      case 65301:
        v10 = qword_100B5CA30;
        if (!qword_100B5CA30)
        {
          goto LABEL_461;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 35;
        if (v5 != (v3 + 35))
        {
          sub_1000D660C();
          v10 = qword_100B5CA30;
        }

        goto LABEL_272;
      case 65302:
        v10 = qword_100B5CA38;
        if (!qword_100B5CA38)
        {
          goto LABEL_461;
        }

        v11 = (v7 + v9);
        *v4 = v3 + 32;
        if (v5 != (v3 + 32))
        {
          sub_1000D660C();
          v10 = qword_100B5CA38;
        }

LABEL_272:
        v50 = v11;
        goto LABEL_297;
      case 65305:
        v51 = qword_100B5C9B0;
        if (!qword_100B5C9B0)
        {
          goto LABEL_458;
        }

        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1356, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v85 = (v7 + v9);
        v82 = *v85;
        v83 = v85[1];
        v84 = v3 + 4;
        *v4 = v3 + 4;
        if (v5 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1357, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        goto LABEL_286;
      case 65306:
        if (!off_100B5C9D0)
        {
          goto LABEL_458;
        }

        v62 = off_100B5CBE8;
        if (!off_100B5CBE8)
        {
          goto LABEL_458;
        }

        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1389, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        if ((v5 - (v3 + 3)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1390, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v63 = *(v7 + (v3 + 2));
        v64 = *(v7 + (v3 + 3));
        *v4 = v3 + 5;
        if (v5 <= (v3 + 5))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1391, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1392, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v65 = *(v7 + (v3 + 5));
        v66 = *(v7 + (v3 + 6));
        *v4 = v3 + 10;
        if ((v5 - (v3 + 10)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1393, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v67 = *(v7 + (v3 + 10));
        *v4 = v3 + 14;
        if (v5 <= (v3 + 14))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1394, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 15;
        if (v5 <= (v3 + 15))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1395, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v68 = *(v7 + (v3 + 14));
        *v4 = v3 + 16;
        v69 = *(v7 + (v3 + 15));
        if (v5 - (v3 + 16) < 2)
        {
          v71 = -1;
        }

        else
        {
          v70 = (v3 + 16);
          if (v5 - v70 <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1397, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v71 = *(v7 + v70);
          *v4 = v3 + 18;
        }

        (v62)(v63, v64, v65, v66, v67, v68, v69, v71);
        off_100B5C9D0(v63, v64, v65, v66, v67, v68, v69, v71);
        goto LABEL_461;
      case 65307:
        v89 = off_100B5C9D8;
        if (!off_100B5C9D8)
        {
          goto LABEL_458;
        }

        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1418, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v90 = *(v7 + (v3 + 2));
        *v4 = v3 + 4;
        if ((v5 - (v3 + 4)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1419, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v91 = *(v7 + (v3 + 4));
        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1420, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v92 = *(v7 + (v3 + 6));
        *v4 = v3 + 10;
        if ((v5 - (v3 + 10)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1421, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v93 = *(v7 + (v3 + 10));
        *v4 = v3 + 14;
        (v89)(v90, v91, v92, v93);
        goto LABEL_461;
      case 65312:
        v94 = (v5 - v9);
        if (v94 >= 0xB6)
        {
          v16 = qword_100B5C988;
          if (!qword_100B5C988)
          {
            goto LABEL_458;
          }

          v21 = v7 + v9;
          goto LABEL_80;
        }

        if (!sub_10000C240())
        {
          goto LABEL_458;
        }

        sub_10000AF54("HCI_VSE_DISCONNECTION_CTO_EVENT returned invalid length %d of data", v94);
        v150 = sub_10000C050(0x54u);
        if (!os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_458;
        }

        goto LABEL_457;
      case 65315:
        v51 = qword_100B5C9C0;
        if (!qword_100B5C9C0)
        {
          goto LABEL_458;
        }

        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1370, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v81 = (v7 + v9);
        v82 = *v81;
        v83 = v81[1];
        v84 = v3 + 4;
        *v4 = v3 + 4;
        if (v5 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1371, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

LABEL_286:
        v55 = v82 | (v83 << 8);
        *v4 = v3 + 5;
        v56 = *(v7 + v84);
        goto LABEL_287;
      case 65322:
        if (!off_100B5C960)
        {
          goto LABEL_461;
        }

        v86 = *(a1 + 6) + off_100B5C960(v7 + v9, (v5 - v9));
        *(a1 + 6) = v86;
        if (*(a1 + 15))
        {
          v77 = 582;
          goto LABEL_379;
        }

        if (*(a1 + 5) != v86)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 582, "ByteStream_NumReadBytesAvail(*pBs) == 0");
        }

        return;
      case 65326:
        if (!off_100B5C968)
        {
          goto LABEL_461;
        }

        v76 = *(a1 + 6) + off_100B5C968(v7 + v9, (v5 - v9));
        *(a1 + 6) = v76;
        if (!*(a1 + 15))
        {
          if (*(a1 + 5) != v76)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 598, "ByteStream_NumReadBytesAvail(*pBs) == 0");
          }

          return;
        }

        v77 = 598;
LABEL_379:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", v77, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
        goto LABEL_461;
      default:
        switch(v8)
        {
          case 65422:
            v16 = qword_100B5C978;
            if (!qword_100B5C978)
            {
              goto LABEL_461;
            }

            v17 = v5 - v9;
            if (v17 > 0xCD)
            {
              goto LABEL_412;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("BT_VSE_ACI_PHY_STATISTIC - Invalid data size %zu", v17);
              v18 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_466;
              }
            }

            goto LABEL_461;
          case 65423:
            v16 = qword_100B5C9F8;
            if (qword_100B5C9F8)
            {
              goto LABEL_319;
            }

            goto LABEL_461;
          case 65424:
          case 65425:
          case 65427:
          case 65429:
          case 65431:
          case 65433:
          case 65434:
          case 65435:
          case 65436:
          case 65437:
          case 65438:
          case 65439:
          case 65440:
          case 65443:
          case 65444:
            goto LABEL_458;
          case 65426:
            if ((v5 - v9) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 369, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v117 = (v7 + v9);
            v118 = *v117;
            v119 = v117[1];
            *v4 = v3 + 4;
            if (v5 <= (v3 + 4))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 370, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *(a1 + 6) = v3 + 5;
            v120 = *(v7 + (v3 + 4));
            v121 = sub_1000ABB80(v118 | (v119 << 8));
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 372, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
            }

            else
            {
              v122 = *(a1 + 5);
              v123 = *(a1 + 6);
              if (v122 - v123 > 3)
              {
                if (*(a1 + 14) == 1)
                {
                  v124 = *a1;
                  v125 = *(*a1 + v123);
                  *(a1 + 6) = v123 + 4;
                  if (v122 - (v123 + 4) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 373, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  v126 = *(v124 + (v123 + 4));
                  *v4 = v123 + 8;
                  if (v122 - (v123 + 8) <= 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 374, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                  }

                  v127 = *(v124 + (v123 + 8));
                  *v4 = v123 + 10;
                  if (v122 - (v123 + 10) <= 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 375, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                  }

                  v128 = v121;
                  v129 = *(v124 + (v123 + 10));
                  *v4 = v123 + 12;
                  if ((v129 & (v120 == 10)) != 0)
                  {
                    v120 = -118;
                  }

                  LODWORD(v226) = 0;
                  LODWORD(v225[0]) = 0;
                  sub_1000D42DC(&v226, v225);
                  v130 = v120 >= 2u && v128 == 0;
                  if (v130 || v120 == 10)
                  {
                    if (sub_10000C240())
                    {
                      sub_10000AF54("updateBTControllerClockCB size is zero");
                      v153 = sub_10000C050(0x54u);
                      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000E09C0();
                      }
                    }

                    goto LABEL_458;
                  }

                  if (off_100B5CA50)
                  {
                    off_100B5CA50(v128, v120, (v126 << 32) | v125, 0, v127, v226, LODWORD(v225[0]));
                  }

                  goto LABEL_461;
                }

                v218 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_613:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 372, v218);
              }
            }

            v218 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
            goto LABEL_613;
          case 65428:
            v60 = qword_100B5CA20;
            if (!qword_100B5CA20)
            {
              goto LABEL_461;
            }

            v106 = v5 - v9;
            if (v106 > 3)
            {
              if (v106 < 0x43)
              {
                v160 = v7 + v9;
                v161 = v106 - 4;
                if (v161 >= *(v160 + 1))
                {
                  v61 = v7 + v9;
                  goto LABEL_236;
                }

                if (!sub_10000C240())
                {
                  goto LABEL_461;
                }

                sub_10000AF54("HCI_VSE_ACI_BTC2AOP_MESSAGE - Invalid SPMI payload length %zd exceed expected %zd", *(v160 + 1), v161);
                v162 = sub_10000C050(0x54u);
                if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_461;
                }
              }

              else
              {
                if (!sub_10000C240())
                {
                  goto LABEL_461;
                }

                sub_10000AF54("HCI_VSE_ACI_BTC2AOP_MESSAGE - Invalid SPMI data size %zd exceeds %zd", v106, 0x42uLL);
                v157 = sub_10000C050(0x54u);
                if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_461;
                }
              }
            }

            else
            {
              if (!sub_10000C240())
              {
                goto LABEL_461;
              }

              sub_10000AF54("HCI_VSE_ACI_BTC2AOP_MESSAGE - Invalid SPMI data size %zd less then %zd", v106, 4uLL);
              v107 = sub_10000C050(0x54u);
              if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_461;
              }
            }

            goto LABEL_466;
          case 65430:
            v226 = 0uLL;
            if ((v5 - v9) <= 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 419, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
            }

            v108 = *(v7 + (v3 + 2));
            *(a1 + 6) = v3 + 4;
            v109 = sub_1000ABB80(v108);
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 421, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
            }

            else
            {
              v110 = *(a1 + 5);
              v111 = *(a1 + 6);
              if (v110 - v111 > 3)
              {
                if (*(a1 + 14) == 1)
                {
                  v112 = *a1;
                  *(a1 + 6) = v111 + 4;
                  if ((v110 - (v111 + 4)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 422, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  *v4 = v111 + 8;
                  if ((v110 - (v111 + 8)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 423, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  *v4 = v111 + 12;
                  if ((v110 - (v111 + 12)) <= 3)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 424, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
                  }

                  v113 = 0;
                  v114 = v111 + 16;
                  *v4 = v114;
                  v115 = v114;
                  do
                  {
                    if (v115 >= v110)
                    {
                      goto LABEL_582;
                    }

                    v116 = v115 + 1;
                    *v4 = v115 + 1;
                    *(&v227[-1] + v113++) = *(v112 + v115++);
                  }

                  while (v113 != 16);
                  if (v110 <= v116)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 429, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v116 + 1;
                  if (v110 <= (v116 + 1))
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 430, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v116 + 2;
                  if (v110 <= (v116 + 2))
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 431, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  *v4 = v116 + 3;
                  if ((v110 - (v116 + 3)) <= 1)
                  {
                    *(a1 + 15) = 1;
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 433, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                  }

                  else
                  {
                    *v4 = v116 + 5;
                    if (v110 > (v116 + 5))
                    {
                      *v4 = v116 + 6;
                      if (!v109)
                      {
                        if (sub_10000C240())
                        {
                          sub_10000AF54("updateBTControllerClockCB size is zero");
                          v156 = sub_10000C050(0x54u);
                          if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                          {
                            sub_1000E09C0();
                          }
                        }

                        goto LABEL_458;
                      }

                      if (off_100B5CA48)
                      {
                        off_100B5CA48(v109);
                      }

                      goto LABEL_461;
                    }
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 433, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                v217 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_610:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 421, v217);
              }
            }

            v217 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
            goto LABEL_610;
          case 65432:
            v101 = (v5 - v9);
            if (v101 < 8)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Sensor state report event returned invalid length %d of data", v101);
                v152 = sub_10000C050(0x54u);
                if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_457;
                }
              }

              goto LABEL_458;
            }

            if (!off_100B5CA78)
            {
              goto LABEL_461;
            }

            WORD2(v226) = 0;
            LODWORD(v226) = 0;
            if ((v5 - v9) <= 5)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 457, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
            }

            sub_1000075EC(&v226, v7 + v9, 6uLL);
            v102 = *(a1 + 6);
            *(a1 + 6) = v102 + 6;
            if (*(a1 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 458, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
            }

            else
            {
              v103 = *(a1 + 5);
              if (v103 > (v102 + 6))
              {
                if (*(a1 + 14) == 1)
                {
                  v104 = *a1;
                  *(a1 + 6) = v102 + 7;
                  if (v103 <= (v102 + 7))
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 459, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  v105 = *(v104 + (v102 + 6));
                  *v4 = v102 + 8;
                  off_100B5CA78(v226 | (WORD2(v226) << 32), v105, *(v104 + (v102 + 7)), v6);
                  goto LABEL_461;
                }

                v219 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_770:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 458, v219);
              }
            }

            v219 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_770;
          case 65441:
            v95 = qword_100B5C958;
            if (qword_100B5C958)
            {
              goto LABEL_334;
            }

            goto LABEL_458;
          case 65442:
            v95 = off_100B5C970;
            if (!off_100B5C970)
            {
              goto LABEL_461;
            }

LABEL_334:
            v95(v7 + v9, (v5 - v9));
            goto LABEL_461;
          case 65445:
            v16 = qword_100B5CAA8;
            if (!qword_100B5CAA8)
            {
              goto LABEL_461;
            }

            v132 = v5 - v9;
            if (v132 > 0x26)
            {
LABEL_412:
              v21 = v7 + v9;
              goto LABEL_80;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("HID_LATENCY_STATISTICS - Invalid data size %lu", v132);
              v133 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
LABEL_466:
                sub_1000E09C0();
              }
            }

            goto LABEL_461;
          case 65446:
            v134 = off_100B5CAC8;
            if (!off_100B5CAC8)
            {
              goto LABEL_458;
            }

            if (v5 <= v9)
            {
              *(a1 + 15) = 1;
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1438, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
            }

            else
            {
              *v4 = v3 + 3;
              if ((v5 - (v3 + 3)) > 1)
              {
                v135 = *(v7 + (v3 + 2));
                v136 = *(v7 + (v3 + 3));
                *v4 = v3 + 5;
                if ((v5 - (v3 + 5)) <= 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1439, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                }

                v137 = *(v7 + (v3 + 5));
                *v4 = v3 + 7;
                if (v5 <= (v3 + 7))
                {
                  v138 = 0;
                  *(a1 + 15) = 1;
                  v226 = 0u;
                  memset(v227, 0, 24);
                }

                else
                {
                  *v4 = v3 + 8;
                  v138 = *(v7 + (v3 + 7));
                  v226 = 0u;
                  memset(v227, 0, 24);
                  if (v138)
                  {
                    v221 = v135;
                    v139 = &v226;
                    v140 = v138;
                    while (1)
                    {
                      WORD2(v225[0]) = 0;
                      LODWORD(v225[0]) = 0;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1446, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a1 + 15))
                      {
                        break;
                      }

                      v142 = *(a1 + 6);
                      if (*(a1 + 5) <= v142)
                      {
                        *(a1 + 15) = 1;
LABEL_408:
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1454, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                        v147 = 0;
LABEL_409:
                        *(a1 + 15) = 1;
                        goto LABEL_410;
                      }

                      v143 = *a1;
                      v144 = v142 + 1;
                      *(a1 + 6) = v142 + 1;
                      v145 = *(v143 + v142);
                      v146 = v145 << 48;
                      if (v145 == 2)
                      {
                        v146 = 0;
                      }

                      if (v145 == 3)
                      {
                        v147 = 0x1000000000000;
                      }

                      else
                      {
                        v147 = v146;
                      }

                      if (*(a1 + 5) - v144 <= 5)
                      {
                        goto LABEL_409;
                      }

                      sub_1000075EC(v225, *a1 + v144, 6uLL);
                      *(a1 + 6) += 6;
LABEL_410:
                      *v139++ = v147 | (LOBYTE(v225[0]) << 40) | (BYTE1(v225[0]) << 32) | (BYTE2(v225[0]) << 24) | (BYTE3(v225[0]) << 16) | (BYTE4(v225[0]) << 8) | BYTE5(v225[0]);
                      if (!--v140)
                      {
                        (off_100B5CAC8)(v221, v137, v136, v138, &v226);
                        goto LABEL_461;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1446, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                    v141 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v141 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1454, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    goto LABEL_408;
                  }
                }

                (v134)(v135, v137, v136, v138, &v226);
                goto LABEL_461;
              }
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1438, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          case 65447:
            v96 = (v5 - v9);
            if (v96 < 0x37)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("HCI_VSE_FAST_LE_CONNECTION_READY_EVENT returned invalid length %d of data", v96);
                v151 = sub_10000C050(0x54u);
                if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_457;
                }
              }

              goto LABEL_458;
            }

            if (!off_100B5CAB0)
            {
              goto LABEL_458;
            }

            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            memset(v227, 0, sizeof(v227));
            if (v5 <= v9)
            {
              *(a1 + 15) = 1;
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1285, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
            }

            else
            {
              *v4 = v3 + 3;
              if ((v5 - (v3 + 3)) > 1)
              {
                v97 = *(v7 + (v3 + 2));
                v98 = *(v7 + (v3 + 3));
                *v4 = v3 + 5;
                if (v5 <= (v3 + 5))
                {
                  *(a1 + 15) = 1;
                  memset(v224, 0, 7);
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1289, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                }

                else
                {
                  *v4 = v3 + 6;
                  memset(v224, 0, 7);
                  if (v5 > (v3 + 6))
                  {
                    *v4 = v3 + 7;
                    LOBYTE(v224[0]) = *(v7 + (v3 + 6));
                    v99 = LOBYTE(v224[0]);
                    v100 = (v224[0] & 0xFE) == 2;
                    if (LOBYTE(v224[0]) == 3)
                    {
                      v99 = 1;
                      LOBYTE(v224[0]) = 1;
                    }

                    else if (LOBYTE(v224[0]) == 2)
                    {
                      v99 = 0;
                      LOBYTE(v224[0]) = 0;
                    }

                    if (*(a1 + 14) == 1)
                    {
                      v215 = *(a1 + 6);
                      if (*(a1 + 5) - v215 >= 6)
                      {
                        sub_1000075EC(v224 + 1, *a1 + v215, 6uLL);
                        *(a1 + 6) += 6;
                        v99 = LOBYTE(v224[0]);
                        v163 = (BYTE1(v224[0]) << 40) | (BYTE2(v224[0]) << 32) | (HIBYTE(v224[0]) << 24) | (LOBYTE(v224[1]) << 16) | (BYTE1(v224[1]) << 8) | BYTE2(v224[1]);
LABEL_471:
                        *(v223 + 3) = 0;
                        v223[0] = 0;
                        if (*(a1 + 14) != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1308, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        if (*(a1 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1308, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                        }

                        else
                        {
                          v165 = *(a1 + 6);
                          if (*(a1 + 5) - v165 >= 6)
                          {
                            sub_1000075EC(v223 + 1, *a1 + v165, 6uLL);
                            *(a1 + 6) += 6;
                            goto LABEL_483;
                          }
                        }

                        *(a1 + 15) = 1;
LABEL_483:
                        LOBYTE(v223[0]) = 1;
                        *(&v227[0] + 1) = (BYTE2(v223[0]) << 32) | (BYTE1(v223[0]) << 40) | (HIBYTE(v223[0]) << 24) | (LOBYTE(v223[1]) << 16) | (BYTE1(v223[1]) << 8) | BYTE2(v223[1]) | 0x1000000000000;
                        *(v222 + 3) = 0;
                        v222[0] = 0;
                        if (*(a1 + 14) != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1313, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        v166 = v163 | (v99 << 48);
                        if (*(a1 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1313, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                        }

                        else
                        {
                          v167 = *(a1 + 6);
                          if (*(a1 + 5) - v167 >= 6)
                          {
                            sub_1000075EC(v222 + 1, *a1 + v167, 6uLL);
                            *(a1 + 6) += 6;
                            goto LABEL_489;
                          }
                        }

                        *(a1 + 15) = 1;
LABEL_489:
                        v168 = BYTE2(v222[0]) << 32;
                        v169 = v168 | (BYTE1(v222[0]) << 40) | (HIBYTE(v222[0]) << 24) | (LOBYTE(v222[1]) << 16) | (BYTE1(v222[1]) << 8) | BYTE2(v222[1]) | 0x1000000000000;
                        if (v100)
                        {
                          v170 = v168 | (BYTE1(v222[0]) << 40) | (HIBYTE(v222[0]) << 24) | (LOBYTE(v222[1]) << 16) | (BYTE1(v222[1]) << 8) | BYTE2(v222[1]) | 0x1000000000000;
                        }

                        else
                        {
                          v170 = v166;
                        }

                        if (!v100)
                        {
                          v169 = 0;
                        }

                        *&v227[0] = v170;
                        *&v227[1] = v169;
                        if (*(a1 + 14) != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1319, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        if (*(a1 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1319, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                          v171 = *(a1 + 14);
                          *(a1 + 15) = 1;
                          if (v171 != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1320, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }
                        }

                        else
                        {
                          v172 = *(a1 + 6);
                          if (*(a1 + 5) - v172 > 1)
                          {
                            WORD4(v227[1]) = *(*a1 + v172);
                            *(a1 + 6) = v172 + 2;
                            if (*(a1 + 5) - (v172 + 2) > 1)
                            {
                              WORD5(v227[1]) = *(*a1 + (v172 + 2));
                              *(a1 + 6) = v172 + 4;
                              if (*(a1 + 5) - (v172 + 4) > 1)
                              {
                                WORD6(v227[1]) = *(*a1 + (v172 + 4));
                                v173 = v172 + 6;
                                *(a1 + 6) = v172 + 6;
                                if (*(a1 + 5) > (v172 + 6))
                                {
                                  v174 = *a1;
                                  v175 = v172 + 7;
                                  *(a1 + 6) = v175;
                                  BYTE14(v227[1]) = *(v174 + v173);
                                  if (*(a1 + 5) > v175)
                                  {
                                    v176 = v175;
                                    v177 = *a1;
                                    v178 = v175 + 1;
                                    *(a1 + 6) = v178;
                                    HIBYTE(v227[1]) = *(v177 + v176);
                                    if (*(a1 + 5) - v178 > 1)
                                    {
                                      v179 = v178;
                                      v180 = *a1;
                                      LOWORD(v228) = *(*a1 + v179);
                                      *(a1 + 6) = v179 + 2;
                                      if (*(a1 + 5) - (v179 + 2) > 1)
                                      {
                                        WORD1(v228) = *(v180 + (v179 + 2));
                                        v181 = v179 + 4;
                                        *(a1 + 6) = v181;
                                        v182 = 8;
                                        BYTE12(v228) = 8;
                                        v183 = *(a1 + 5) - v181;
LABEL_524:
                                        if (v183 >= v182)
                                        {
                                          __memmove_chk();
                                          v200 = *(a1 + 6) + BYTE12(v228);
                                          *(a1 + 6) = v200;
                                          if (*(a1 + 14) != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1331, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }

                                          if (*(a1 + 15))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1331, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                            v201 = *(a1 + 14);
                                            *(a1 + 15) = 1;
                                            if (v201 != 1)
                                            {
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1332, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                            }
                                          }

                                          else
                                          {
                                            if (*(a1 + 5) > v200)
                                            {
                                              v202 = *a1;
                                              *(a1 + 6) = v200 + 1;
                                              BYTE13(v228) = *(v202 + v200);
                                              if (*(a1 + 5) > (v200 + 1))
                                              {
                                                v203 = *a1;
                                                *(a1 + 6) = v200 + 2;
                                                BYTE14(v228) = *(v203 + (v200 + 1));
                                                if (*(a1 + 5) - (v200 + 2) > 1)
                                                {
                                                  LOWORD(v229) = *(*a1 + (v200 + 2));
                                                  *(a1 + 6) = v200 + 4;
                                                  if (*(a1 + 5) - (v200 + 4) > 1)
                                                  {
                                                    WORD1(v229) = *(*a1 + (v200 + 4));
                                                    *(a1 + 6) = v200 + 6;
                                                    if (*(a1 + 5) - (v200 + 6) > 1)
                                                    {
                                                      WORD2(v229) = *(*a1 + (v200 + 6));
                                                      *(a1 + 6) = v200 + 8;
                                                      if (*(a1 + 5) - (v200 + 8) > 1)
                                                      {
                                                        WORD3(v229) = *(*a1 + (v200 + 8));
                                                        *(a1 + 6) = v200 + 10;
                                                        if (*(a1 + 5) - (v200 + 10) >= 2)
                                                        {
                                                          WORD4(v229) = *(*a1 + (v200 + 10));
                                                          *(a1 + 6) = v200 + 12;
LABEL_545:
                                                          *&v226 = sub_1000ABB80(v98);
                                                          v225[2] = v227[1];
                                                          v225[3] = v228;
                                                          v225[4] = v229;
                                                          v225[0] = v226;
                                                          v225[1] = v227[0];
                                                          off_100B5CAB0(v97, v225);
                                                          goto LABEL_461;
                                                        }

LABEL_544:
                                                        *(a1 + 15) = 1;
                                                        goto LABEL_545;
                                                      }

                                                      *(a1 + 15) = 1;
LABEL_543:
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1337, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                                      goto LABEL_544;
                                                    }

                                                    *(a1 + 15) = 1;
LABEL_542:
                                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1336, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                                    v208 = *(a1 + 14);
                                                    *(a1 + 15) = 1;
                                                    if (v208 != 1)
                                                    {
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1337, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                    }

                                                    goto LABEL_543;
                                                  }

                                                  *(a1 + 15) = 1;
LABEL_541:
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1335, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                                  v207 = *(a1 + 14);
                                                  *(a1 + 15) = 1;
                                                  if (v207 != 1)
                                                  {
                                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1336, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                  }

                                                  goto LABEL_542;
                                                }

                                                *(a1 + 15) = 1;
LABEL_540:
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1334, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                                v206 = *(a1 + 14);
                                                *(a1 + 15) = 1;
                                                if (v206 != 1)
                                                {
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1335, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                                }

                                                goto LABEL_541;
                                              }

                                              *(a1 + 15) = 1;
LABEL_539:
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1333, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                              v205 = *(a1 + 14);
                                              *(a1 + 15) = 1;
                                              if (v205 != 1)
                                              {
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1334, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                              }

                                              goto LABEL_540;
                                            }

                                            *(a1 + 15) = 1;
                                          }

                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1332, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                          v204 = *(a1 + 14);
                                          *(a1 + 15) = 1;
                                          if (v204 != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1333, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }

                                          goto LABEL_539;
                                        }

                                        v220 = "ByteStream_NumReadBytesAvail(*pBs) >= (params.featuresLength)";
LABEL_778:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1329, v220);
                                      }

                                      *(a1 + 15) = 1;
                                      BYTE12(v228) = 8;
LABEL_523:
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1329, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                      v183 = 0;
                                      v182 = BYTE12(v228);
                                      goto LABEL_524;
                                    }

                                    *(a1 + 15) = 1;
LABEL_522:
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1326, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                    v199 = *(a1 + 14);
                                    *(a1 + 15) = 1;
                                    BYTE12(v228) = 8;
                                    if (v199 != 1)
                                    {
                                      v220 = "(*pBs).__RWFlag == BYTESTREAM_READ";
                                      goto LABEL_778;
                                    }

                                    goto LABEL_523;
                                  }

                                  *(a1 + 15) = 1;
LABEL_521:
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1325, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                  v198 = *(a1 + 14);
                                  *(a1 + 15) = 1;
                                  if (v198 != 1)
                                  {
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1326, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                  }

                                  goto LABEL_522;
                                }

                                *(a1 + 15) = 1;
LABEL_520:
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1324, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                                v197 = *(a1 + 14);
                                *(a1 + 15) = 1;
                                if (v197 != 1)
                                {
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1325, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                }

                                goto LABEL_521;
                              }

                              *(a1 + 15) = 1;
LABEL_519:
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1322, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                              v196 = *(a1 + 14);
                              *(a1 + 15) = 1;
                              if (v196 != 1)
                              {
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1324, "(*pBs).__RWFlag == BYTESTREAM_READ");
                              }

                              goto LABEL_520;
                            }

                            *(a1 + 15) = 1;
LABEL_518:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1321, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                            v195 = *(a1 + 14);
                            *(a1 + 15) = 1;
                            if (v195 != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1322, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            goto LABEL_519;
                          }

                          *(a1 + 15) = 1;
                        }

                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1320, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                        v194 = *(a1 + 14);
                        *(a1 + 15) = 1;
                        if (v194 != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1321, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        goto LABEL_518;
                      }

LABEL_470:
                      v163 = 0;
                      *(a1 + 15) = 1;
                      goto LABEL_471;
                    }

                    goto LABEL_768;
                  }
                }

                *(a1 + 15) = 1;
                if (*(a1 + 14) == 1)
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1304, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
                  v100 = 0;
                  v99 = 0;
                  goto LABEL_470;
                }

LABEL_768:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1304, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1285, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          case 65448:
            if (!off_100B5CA40)
            {
              goto LABEL_461;
            }

            v131 = *(a1 + 6) + off_100B5CA40(v7 + v9, (v5 - v9));
            *(a1 + 6) = v131;
            if (*(a1 + 15))
            {
              v77 = 639;
              goto LABEL_379;
            }

            if (*(a1 + 5) != v131)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 639, "ByteStream_NumReadBytesAvail(*pBs) == 0");
            }

            return;
          case 65449:
            if (!qword_100B5CAF8)
            {
              goto LABEL_458;
            }

            *&v234 = 0;
            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            memset(v227, 0, sizeof(v227));
            if (!sub_1002EDE84(a1, &v226))
            {
              goto LABEL_458;
            }

            (qword_100B5CAF8)(&v226);
            goto LABEL_461;
          case 65450:
            if (!qword_100B5CAE8)
            {
              goto LABEL_458;
            }

            v244 = 0;
            v242 = 0u;
            v243 = 0u;
            v240 = 0u;
            v241 = 0u;
            v238 = 0u;
            v239 = 0u;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            memset(v227, 0, sizeof(v227));
            if (!sub_1002ED79C(a1, &v226))
            {
              goto LABEL_458;
            }

            (qword_100B5CAE8)(&v226);
            goto LABEL_461;
          case 65451:
            if (!off_100B5CAF0)
            {
              goto LABEL_458;
            }

            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            memset(v227, 0, sizeof(v227));
            if (!sub_1002EDC0C(a1, &v226))
            {
              goto LABEL_458;
            }

            (off_100B5CAF0)(&v226);
            goto LABEL_461;
          default:
            if (v8 != 59678)
            {
              goto LABEL_458;
            }

            v10 = qword_100B5CAA0;
            if (!qword_100B5CAA0)
            {
              goto LABEL_458;
            }

            if (v5 <= v9)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1249, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 3;
            LOBYTE(v226) = *(v7 + (v3 + 2));
            if (v5 <= (v3 + 3))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1250, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 4;
            BYTE1(v226) = *(v7 + (v3 + 3));
            if (v5 <= (v3 + 4))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1251, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 5;
            BYTE2(v226) = *(v7 + (v3 + 4));
            if (v5 <= (v3 + 5))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1252, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 6;
            BYTE3(v226) = *(v7 + (v3 + 5));
            if (v5 <= (v3 + 6))
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1253, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            *v4 = v3 + 7;
            BYTE4(v226) = *(v7 + (v3 + 6));
            goto LABEL_213;
        }
    }
  }

  if (v8 > 12799)
  {
    if (v8 <= 59670)
    {
      if (v8 <= 59658)
      {
        if (v8 == 12800)
        {
          v41 = off_100B5C990;
          if (!off_100B5C990)
          {
            goto LABEL_458;
          }

          if (v5 <= v9)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1213, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1214, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v42 = *(v7 + (v3 + 2));
          v43 = v3 + 4;
          *v4 = v3 + 4;
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1215, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v44 = *(v7 + (v3 + 3));
          v45 = v3 + 5;
          *v4 = v45;
          (v41)(v42, v44, *(v7 + v43), v7 + v45, (v5 - v45));
          goto LABEL_461;
        }

        if (v8 != 13824)
        {
          goto LABEL_458;
        }

        if ((v5 - v9) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 914, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        v21 = *(v7 + (v3 + 2));
        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 915, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v22 = (v7 + (v3 + 6));
        v23 = *v22;
        v24 = v22[1];
        *v4 = v3 + 8;
        v16 = off_100B5C908;
        if (!off_100B5C908)
        {
          goto LABEL_461;
        }

        a2 = v23 | (v24 << 8);
        goto LABEL_80;
      }

      if (v8 == 59659)
      {
        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1024, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        v57 = *(v7 + (v3 + 2));
        if (v57 != 2)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("HCI_VSE_BLE_SCAN_CORE_EVENT - unexpected subEvent %u", v57);
            v149 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_457;
            }
          }

          goto LABEL_458;
        }

        v58 = off_100B5CA80;
        if (!off_100B5CA80)
        {
          goto LABEL_458;
        }

        LODWORD(v227[1]) = 0;
        if ((v5 - (v3 + 3)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1030, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        LODWORD(v226) = *(v7 + (v3 + 3));
        *v4 = v3 + 7;
        if ((v5 - (v3 + 7)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1031, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD1(v226) = *(v7 + (v3 + 7));
        *v4 = v3 + 11;
        if ((v5 - (v3 + 11)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1032, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD2(v226) = *(v7 + (v3 + 11));
        *v4 = v3 + 15;
        if ((v5 - (v3 + 15)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1033, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        HIDWORD(v226) = *(v7 + (v3 + 15));
        *v4 = v3 + 19;
        if ((v5 - (v3 + 19)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1034, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        LODWORD(v227[0]) = *(v7 + (v3 + 19));
        *v4 = v3 + 23;
        if ((v5 - (v3 + 23)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1035, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD1(v227[0]) = *(v7 + (v3 + 23));
        *v4 = v3 + 27;
        if ((v5 - (v3 + 27)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1036, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        DWORD2(v227[0]) = *(v7 + (v3 + 27));
        *v4 = v3 + 31;
        if ((v5 - (v3 + 31)) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1037, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
        }

        HIDWORD(v227[0]) = *(v7 + (v3 + 31));
        *v4 = v3 + 35;
        if (v5 <= (v3 + 35))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1038, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 36;
        LOBYTE(v227[1]) = *(v7 + (v3 + 35));
        v58(&v226);
        goto LABEL_461;
      }

      if (v8 == 59660)
      {
        if ((v5 - v9) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 849, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v30 = *(v7 + (v3 + 2));
        *v4 = v3 + 4;
        if (v5 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 850, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 5;
        v31 = *(v7 + (v3 + 4));
        if (off_100B5CB28)
        {
          off_100B5CB28(v30, v31);
        }

        if (v31 && off_100B5C910)
        {
          off_100B5C910(v30, v31);
        }

        goto LABEL_461;
      }

      if (v8 != 59668)
      {
        goto LABEL_458;
      }

      v10 = off_100B5CAD0;
      if (!off_100B5CAD0)
      {
        goto LABEL_458;
      }

      *&v228 = 0;
      v226 = 0u;
      memset(v227, 0, sizeof(v227));
      if (v5 <= v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1054, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 3;
      LOBYTE(v226) = *(v7 + (v3 + 2));
      if ((v5 - (v3 + 3)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1055, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD1(v226) = *(v7 + (v3 + 3));
      *v4 = v3 + 7;
      if (v5 <= (v3 + 7))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1056, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 8;
      BYTE8(v226) = *(v7 + (v3 + 7));
      if ((v5 - (v3 + 8)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1057, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      HIDWORD(v226) = *(v7 + (v3 + 8));
      *v4 = v3 + 12;
      if ((v5 - (v3 + 12)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1058, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      LODWORD(v227[0]) = *(v7 + (v3 + 12));
      *v4 = v3 + 16;
      if ((v5 - (v3 + 16)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1059, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD1(v227[0]) = *(v7 + (v3 + 16));
      *v4 = v3 + 20;
      if ((v5 - (v3 + 20)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1060, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD2(v227[0]) = *(v7 + (v3 + 20));
      *v4 = v3 + 24;
      if ((v5 - (v3 + 24)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1061, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      HIDWORD(v227[0]) = *(v7 + (v3 + 24));
      *v4 = v3 + 28;
      if ((v5 - (v3 + 28)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1062, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      LODWORD(v227[1]) = *(v7 + (v3 + 28));
      *v4 = v3 + 32;
      if ((v5 - (v3 + 32)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1063, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD1(v227[1]) = *(v7 + (v3 + 32));
      *v4 = v3 + 36;
      if ((v5 - (v3 + 36)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1064, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      DWORD2(v227[1]) = *(v7 + (v3 + 36));
      *v4 = v3 + 40;
      if ((v5 - (v3 + 40)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1065, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      HIDWORD(v227[1]) = *(v7 + (v3 + 40));
      *v4 = v3 + 44;
      if ((v5 - (v3 + 44)) <= 3)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1066, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
      }

      LODWORD(v228) = *(v7 + (v3 + 44));
      *v4 = v3 + 48;
      if (v5 <= (v3 + 48))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1067, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 49;
      BYTE4(v228) = *(v7 + (v3 + 48));
      if (v5 <= (v3 + 49))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1068, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 50;
      BYTE5(v228) = *(v7 + (v3 + 49));
      if (v5 <= (v3 + 50))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1069, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *v4 = v3 + 51;
      BYTE6(v228) = *(v7 + (v3 + 50));
LABEL_213:
      v50 = &v226;
LABEL_297:
      v10(v50);
      goto LABEL_461;
    }

    if (v8 > 59673)
    {
      switch(v8)
      {
        case 59674:
          v59 = v5 - v9;
          if ((v5 - v9) < 0xF4u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("HCI_VSE_MRC_TXBF_LOGGING_EVENT returned invalid length %d of data", v59);
              v148 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_457;
              }
            }

            goto LABEL_458;
          }

          v60 = off_100B5CA88;
          if (!off_100B5CA88)
          {
            goto LABEL_458;
          }

          v61 = v7 + v9;
LABEL_236:
          v60(v61);
          goto LABEL_461;
        case 59676:
          v10 = qword_100B5CA90;
          if (!qword_100B5CA90)
          {
            goto LABEL_458;
          }

          if (v5 <= v9)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1224, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          BYTE1(v226) = *(v7 + (v3 + 2));
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1225, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 4;
          BYTE2(v226) = *(v7 + (v3 + 3));
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1226, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 5;
          LOBYTE(v226) = *(v7 + (v3 + 4));
          if (v5 <= (v3 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1227, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 6;
          v20 = (v3 + 5);
          break;
        case 59677:
          v10 = qword_100B5CA98;
          if (!qword_100B5CA98)
          {
            goto LABEL_458;
          }

          if (v5 <= v9)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1236, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 3;
          LOBYTE(v226) = *(v7 + (v3 + 2));
          if (v5 <= (v3 + 3))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1237, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 4;
          BYTE1(v226) = *(v7 + (v3 + 3));
          if (v5 <= (v3 + 4))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1238, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 5;
          BYTE2(v226) = *(v7 + (v3 + 4));
          if (v5 <= (v3 + 5))
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1239, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          *v4 = v3 + 6;
          v20 = (v3 + 5);
          break;
        default:
          goto LABEL_458;
      }

      BYTE3(v226) = *(v7 + v20);
      goto LABEL_213;
    }

    if (v8 != 59671)
    {
      if (v8 != 59672)
      {
        goto LABEL_458;
      }

      v10 = qword_100B5CA70;
      if (!qword_100B5CA70)
      {
        goto LABEL_458;
      }

      v226 = 0u;
      memset(v227, 0, 28);
      if (v5 <= v9)
      {
        *(a1 + 15) = 1;
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1162, "void _ACI_EventHandler(OI_BYTE_STREAM *, _Bool)");
      }

      else
      {
        *v4 = v3 + 3;
        LOBYTE(v226) = *(v7 + (v3 + 2));
        if ((v5 - (v3 + 3)) > 3)
        {
          DWORD1(v226) = *(v7 + (v3 + 3));
          *v4 = v3 + 7;
          if ((v5 - (v3 + 7)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1163, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v226) = *(v7 + (v3 + 7));
          *v4 = v3 + 11;
          if ((v5 - (v3 + 11)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1164, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v226) = *(v7 + (v3 + 11));
          *v4 = v3 + 15;
          if ((v5 - (v3 + 15)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1165, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v227[0]) = *(v7 + (v3 + 15));
          *v4 = v3 + 19;
          if ((v5 - (v3 + 19)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1166, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD1(v227[0]) = *(v7 + (v3 + 19));
          *v4 = v3 + 23;
          if ((v5 - (v3 + 23)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1167, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v227[0]) = *(v7 + (v3 + 23));
          *v4 = v3 + 27;
          if ((v5 - (v3 + 27)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1168, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          HIDWORD(v227[0]) = *(v7 + (v3 + 27));
          *v4 = v3 + 31;
          if ((v5 - (v3 + 31)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1169, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          LODWORD(v227[1]) = *(v7 + (v3 + 31));
          *v4 = v3 + 35;
          if ((v5 - (v3 + 35)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1170, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD1(v227[1]) = *(v7 + (v3 + 35));
          *v4 = v3 + 39;
          if ((v5 - (v3 + 39)) <= 3)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1171, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
          }

          DWORD2(v227[1]) = *(v7 + (v3 + 39));
          v27 = v3 + 43;
LABEL_212:
          *v4 = v27;
          goto LABEL_213;
        }
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1162, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v10 = qword_100B5CA68;
    if (!qword_100B5CA68)
    {
      goto LABEL_458;
    }

    LODWORD(v241) = 0;
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v226 = 0u;
    memset(v227, 0, sizeof(v227));
    if ((v5 - v9) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1080, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v226) = *(v7 + (v3 + 2));
    *v4 = v3 + 6;
    if ((v5 - (v3 + 6)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1081, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v226) = *(v7 + (v3 + 6));
    *v4 = v3 + 10;
    if ((v5 - (v3 + 10)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1082, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v226) = *(v7 + (v3 + 10));
    *v4 = v3 + 14;
    if ((v5 - (v3 + 14)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1083, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v226) = *(v7 + (v3 + 14));
    *v4 = v3 + 18;
    if ((v5 - (v3 + 18)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1084, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v227[0]) = *(v7 + (v3 + 18));
    *v4 = v3 + 22;
    if ((v5 - (v3 + 22)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1085, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v227[0]) = *(v7 + (v3 + 22));
    *v4 = v3 + 26;
    if ((v5 - (v3 + 26)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1086, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v227[0]) = *(v7 + (v3 + 26));
    *v4 = v3 + 30;
    if ((v5 - (v3 + 30)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1087, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v227[0]) = *(v7 + (v3 + 30));
    *v4 = v3 + 34;
    if ((v5 - (v3 + 34)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1088, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v227[1]) = *(v7 + (v3 + 34));
    *v4 = v3 + 38;
    if ((v5 - (v3 + 38)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1089, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v227[1]) = *(v7 + (v3 + 38));
    *v4 = v3 + 42;
    v49 = v5 - (v3 + 42);
    if ((v49 & 0x1FFFE) == 0)
    {
      goto LABEL_213;
    }

    if (v49 <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1093, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v227[1]) = *(v7 + (v3 + 42));
    *v4 = v3 + 46;
    if ((v5 - (v3 + 46)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1094, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v227[1]) = *(v7 + (v3 + 46));
    *v4 = v3 + 50;
    if ((v5 - (v3 + 50)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1095, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v228) = *(v7 + (v3 + 50));
    *v4 = v3 + 54;
    if ((v5 - (v3 + 54)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1096, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v228) = *(v7 + (v3 + 54));
    *v4 = v3 + 58;
    if ((v5 - (v3 + 58)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1097, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v228) = *(v7 + (v3 + 58));
    *v4 = v3 + 62;
    if ((v5 - (v3 + 62)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1098, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v228) = *(v7 + (v3 + 62));
    *v4 = v3 + 66;
    if ((v5 - (v3 + 66)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1099, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v229) = *(v7 + (v3 + 66));
    *v4 = v3 + 70;
    if ((v5 - (v3 + 70)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1100, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v229) = *(v7 + (v3 + 70));
    *v4 = v3 + 74;
    if ((v5 - (v3 + 74)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1101, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v229) = *(v7 + (v3 + 74));
    *v4 = v3 + 78;
    if ((v5 - (v3 + 78)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1103, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v229) = *(v7 + (v3 + 78));
    *v4 = v3 + 82;
    if ((v5 - (v3 + 82)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1104, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v230) = *(v7 + (v3 + 82));
    *v4 = v3 + 86;
    if ((v5 - (v3 + 86)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1105, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v230) = *(v7 + (v3 + 86));
    *v4 = v3 + 90;
    if ((v5 - (v3 + 90)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1106, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v230) = *(v7 + (v3 + 90));
    *v4 = v3 + 94;
    if ((v5 - (v3 + 94)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1107, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v230) = *(v7 + (v3 + 94));
    *v4 = v3 + 98;
    if ((v5 - (v3 + 98)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1108, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v231) = *(v7 + (v3 + 98));
    *v4 = v3 + 102;
    if ((v5 - (v3 + 102)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1109, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v231) = *(v7 + (v3 + 102));
    *v4 = v3 + 106;
    if ((v5 - (v3 + 106)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1110, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v231) = *(v7 + (v3 + 106));
    *v4 = v3 + 110;
    if ((v5 - (v3 + 110)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1111, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v231) = *(v7 + (v3 + 110));
    *v4 = v3 + 114;
    if ((v5 - (v3 + 114)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1112, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v232) = *(v7 + (v3 + 114));
    *v4 = v3 + 118;
    if ((v5 - (v3 + 118)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1113, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v232) = *(v7 + (v3 + 118));
    *v4 = v3 + 122;
    if ((v5 - (v3 + 122)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1114, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v232) = *(v7 + (v3 + 122));
    *v4 = v3 + 126;
    if ((v5 - (v3 + 126)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1115, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v232) = *(v7 + (v3 + 126));
    *v4 = v3 + 130;
    if ((v5 - (v3 + 130)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1116, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v233) = *(v7 + (v3 + 130));
    *v4 = v3 + 134;
    if ((v5 - (v3 + 134)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1117, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v233) = *(v7 + (v3 + 134));
    *v4 = v3 + 138;
    if ((v5 - (v3 + 138)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1118, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v233) = *(v7 + (v3 + 138));
    *v4 = v3 + 142;
    if ((v5 - (v3 + 142)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1119, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v233) = *(v7 + (v3 + 142));
    *v4 = v3 + 146;
    if ((v5 - (v3 + 146)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1120, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v234) = *(v7 + (v3 + 146));
    *v4 = v3 + 150;
    if ((v5 - (v3 + 150)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1121, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v234) = *(v7 + (v3 + 150));
    *v4 = v3 + 154;
    if ((v5 - (v3 + 154)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1122, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v234) = *(v7 + (v3 + 154));
    *v4 = v3 + 158;
    if ((v5 - (v3 + 158)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1123, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v234) = *(v7 + (v3 + 158));
    *v4 = v3 + 162;
    if ((v5 - (v3 + 162)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1124, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v235) = *(v7 + (v3 + 162));
    *v4 = v3 + 166;
    if ((v5 - (v3 + 166)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1125, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v235) = *(v7 + (v3 + 166));
    *v4 = v3 + 170;
    if ((v5 - (v3 + 170)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1126, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v235) = *(v7 + (v3 + 170));
    *v4 = v3 + 174;
    if ((v5 - (v3 + 174)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1127, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    HIDWORD(v235) = *(v7 + (v3 + 174));
    *v4 = v3 + 176;
    if ((v5 - (v3 + 176)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1128, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    LODWORD(v236) = *(v7 + (v3 + 176));
    *v4 = v3 + 178;
    if ((v5 - (v3 + 178)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1129, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD1(v236) = *(v7 + (v3 + 178));
    *v4 = v3 + 180;
    if ((v5 - (v3 + 180)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1130, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD2(v236) = *(v7 + (v3 + 180));
    *v4 = v3 + 182;
    if ((v5 - (v3 + 182)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1131, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v236) = *(v7 + (v3 + 182));
    *v4 = v3 + 186;
    if ((v5 - (v3 + 186)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1132, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v237) = *(v7 + (v3 + 186));
    *v4 = v3 + 190;
    if ((v5 - (v3 + 190)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1133, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD1(v237) = *(v7 + (v3 + 190));
    *v4 = v3 + 192;
    if ((v5 - (v3 + 192)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1134, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    DWORD2(v237) = *(v7 + (v3 + 192));
    *v4 = v3 + 194;
    if ((v5 - (v3 + 194)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1135, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    HIDWORD(v237) = *(v7 + (v3 + 194));
    *v4 = v3 + 196;
    if ((v5 - (v3 + 196)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1136, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    LODWORD(v238) = *(v7 + (v3 + 196));
    *v4 = v3 + 198;
    if ((v5 - (v3 + 198)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1137, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v238) = *(v7 + (v3 + 198));
    *v4 = v3 + 202;
    if ((v5 - (v3 + 202)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1138, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v238) = *(v7 + (v3 + 202));
    *v4 = v3 + 206;
    if ((v5 - (v3 + 206)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1139, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v238) = *(v7 + (v3 + 206));
    *v4 = v3 + 210;
    if ((v5 - (v3 + 210)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1140, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v239) = *(v7 + (v3 + 210));
    *v4 = v3 + 214;
    if ((v5 - (v3 + 214)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1141, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v239) = *(v7 + (v3 + 214));
    *v4 = v3 + 218;
    if ((v5 - (v3 + 218)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1142, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v239) = *(v7 + (v3 + 218));
    *v4 = v3 + 222;
    if ((v5 - (v3 + 222)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1143, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v239) = *(v7 + (v3 + 222));
    *v4 = v3 + 226;
    if ((v5 - (v3 + 226)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1144, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v240) = *(v7 + (v3 + 226));
    *v4 = v3 + 230;
    if ((v5 - (v3 + 230)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1145, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD1(v240) = *(v7 + (v3 + 230));
    *v4 = v3 + 234;
    if ((v5 - (v3 + 234)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1146, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    DWORD2(v240) = *(v7 + (v3 + 234));
    *v4 = v3 + 238;
    if ((v5 - (v3 + 238)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1147, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    HIDWORD(v240) = *(v7 + (v3 + 238));
    *v4 = v3 + 242;
    if ((v5 - (v3 + 242)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1148, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    LODWORD(v241) = *(v7 + (v3 + 242));
    v27 = v3 + 246;
    goto LABEL_212;
  }

  if (v8 <= 8959)
  {
    if (v8 <= 4865)
    {
      if (v8 != 2048)
      {
        if (v8 == 2574)
        {
          sub_1002EC850(a1, a2);
          goto LABEL_461;
        }

        goto LABEL_458;
      }

      if ((v5 - v9) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 547, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v38 = (v7 + v9);
      v39 = *v38;
      v40 = v38[1];
      *v4 = v3 + 4;
      if ((v5 - (v3 + 4)) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 548, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *v4 = v3 + 6;
      if (!sub_1000ABB80(v39 | (v40 << 8)))
      {
        goto LABEL_458;
      }

      if (off_100B5C8F0)
      {
        off_100B5C8F0();
      }
    }

    else if (v8 == 4866)
    {
      v51 = off_100B5CCD0;
      if (!off_100B5CCD0)
      {
        goto LABEL_458;
      }

      if ((v5 - v9) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1468, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v52 = (v7 + v9);
      v53 = *v52;
      v54 = v52[1];
      *v4 = v3 + 4;
      if (v5 <= (v3 + 4))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1469, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      v55 = v53 | (v54 << 8);
      *v4 = v3 + 5;
      v56 = *(v7 + (v3 + 4)) != 0;
LABEL_287:
      v51(v55, v56);
    }

    else if (v8 == 5632)
    {
      if (v5 <= v9)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 474, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      v28 = v3 + 3;
      *v4 = v28;
      if (*(v7 + v9) != 1)
      {
        goto LABEL_458;
      }

      v29 = v5 - v28;
      if ((v29 & 0x1FFFE) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LostDevice size is zero");
          v158 = sub_10000C050(0x54u);
          if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_457;
          }
        }

        goto LABEL_458;
      }

      if (off_100B5C8F8)
      {
        off_100B5C8F8(v7 + v28, (v29 >> 1), v7 + v28 + (v29 >> 1), (v29 >> 1));
      }
    }

    else
    {
      if (v8 != 6400 || byte_100B5CD20 != 1)
      {
        goto LABEL_458;
      }

      if ((v5 - v9) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 835, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *v4 = v3 + 4;
      if (v5 - (v3 + 4) <= 0x1D)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 836, "ByteStream_NumReadBytesAvail(*pBs) >= (sizeof(reason))");
      }

      v12 = (v7 + (v3 + 4));
      v13 = *v12;
      v14 = *(v12 + 2);
      v15 = *(v12 + 6);
      BYTE12(v227[0]) = *(v12 + 14);
      DWORD2(v227[0]) = v15;
      *&v227[0] = v14;
      v226 = v13;
      *v4 = v3 + 34;
      BYTE13(v227[0]) = 0;
      sub_100304C44();
    }

    goto LABEL_461;
  }

  if (v8 > 9471)
  {
    if (v8 != 9472)
    {
      if (v8 == 11776)
      {
        if (v5 <= v9)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 526, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *v4 = v3 + 3;
        if (v5 <= (v3 + 3))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 527, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v32 = *(v7 + (v3 + 2));
        *v4 = v3 + 4;
        if ((v5 - (v3 + 4)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 528, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v33 = *(v7 + (v3 + 3));
        v34 = *(v7 + (v3 + 4));
        *v4 = v3 + 6;
        if ((v5 - (v3 + 6)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 529, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v35 = (v7 + (v3 + 6));
        v36 = *v35;
        v37 = v35[1];
        *v4 = v3 + 8;
        if (off_100B5CA00)
        {
          off_100B5CA00(v32, v33, v34, v36 | (v37 << 8));
        }
      }

      else
      {
        if (v8 != 12032)
        {
          goto LABEL_458;
        }

        v19 = v5 - v9;
        if ((v19 & 0x1FFFE) == 0)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("LostDevice size is zero");
            v154 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_457;
            }
          }

          goto LABEL_458;
        }

        if (off_100B5C8F8)
        {
          off_100B5C8F8(v7 + v9, (v19 >> 1), v7 + v9 + (v19 >> 1), (v19 >> 1));
        }
      }

      goto LABEL_461;
    }

    v16 = off_100B5CA08;
    if (!off_100B5CA08)
    {
      goto LABEL_458;
    }

LABEL_319:
    v21 = v7 + v9;
    a2 = (v5 - v9);
LABEL_80:
    v16(v21, a2);
    goto LABEL_461;
  }

  if (v8 == 8960)
  {
    if (v5 <= v9)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 948, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
    }

    *v4 = v3 + 3;
    if ((v5 - (v3 + 3)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 949, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v46 = *(v7 + (v3 + 2));
    v47 = *(v7 + (v3 + 3));
    *v4 = v3 + 5;
    if ((v5 - (v3 + 5)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 950, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v48 = *(v7 + (v3 + 5));
    *v4 = v3 + 9;
    if (off_100B5C9A8)
    {
      off_100B5C9A8(v46, v47, v48);
    }

    goto LABEL_461;
  }

  if (v8 != 9216)
  {
    goto LABEL_458;
  }

  if ((v5 - v9) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 930, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v25 = *(v7 + (v3 + 2));
  v26 = v3 + 4;
  *v4 = v3 + 4;
  if (v5 <= (v3 + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 931, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *v4 = v3 + 5;
  v16 = qword_100B5C9A0;
  if (qword_100B5C9A0)
  {
    a2 = *(v7 + v26);
    v21 = v25;
    goto LABEL_80;
  }

LABEL_461:
  if (*(a1 + 15))
  {
    sub_1000C52F4(136);
LABEL_582:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 427, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }
}

uint64_t sub_1001CCF08(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3031, "OI_STATUS _ACI_OlympicWriteLESettings(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64941, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3031, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CCFE0(_WORD *a1, char a2, char a3, void (*a4)())
{
  v20 = 0;
  v21 = 0;
  if (!sub_10001FFD8(&v20))
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5170, "OI_STATUS _ACI_OlympicEnableLEA(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v21) - WORD2(v21) > 3)
    {
      if (BYTE6(v21) == 2)
      {
        *(v20 + WORD2(v21)) = 0;
        v12 = WORD2(v21) + 4;
        WORD2(v21) += 4;
        if (HIBYTE(v21))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5171, "OI_STATUS _ACI_OlympicEnableLEA(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v21) > v12)
        {
          if (BYTE6(v21) == 2)
          {
            *(v20 + v12) = 0;
            v13 = WORD2(v21);
            v14 = ++WORD2(v21);
            if (HIBYTE(v21))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5172, "OI_STATUS _ACI_OlympicEnableLEA(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v21) > v14)
            {
              if (BYTE6(v21) == 2)
              {
                WORD2(v21) = v13 + 2;
                *(v20 + v14) = a3 | (16 * a2);
                if (HIBYTE(v21))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5173, "OI_STATUS _ACI_OlympicEnableLEA(OI_HCI_CONNECTION_HANDLE, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v21) - WORD2(v21) > 1)
                {
                  if (BYTE6(v21) == 2)
                  {
                    *(v20 + WORD2(v21)) = *a1;
                    v11 = BYTE4(v21) + 2;
                    WORD2(v21) += 2;
                    return sub_100020078(65456, v20, v11, a4, sub_1001C62CC, v8, v9, v10);
                  }

                  v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5173, v19);
                }

                v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_32;
              }

              v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5172, v18);
            }

            v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_28;
          }

          v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5171, v17);
        }

        v17 = "ByteStream_NumReadBytesAvail(bs) >= (1)";
        goto LABEL_24;
      }

      v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5170, v16);
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= (4)";
    goto LABEL_20;
  }

  v11 = BYTE4(v21);
  return sub_100020078(65456, v20, v11, a4, sub_1001C62CC, v8, v9, v10);
}

uint64_t sub_1001CD268(_WORD *a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5187, "OI_STATUS _ACI_EnableLEAStats(OI_HCI_CONNECTION_HANDLE, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5188, "OI_STATUS _ACI_EnableLEAStats(OI_HCI_CONNECTION_HANDLE, _Bool, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65322, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5188, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5187, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001CD3E4(int a1, void (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (a1 == 255)
  {
    return 101;
  }

  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1612, "OI_STATUS _ACI_OlympicWriteLeNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v8) = a1;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1613, "OI_STATUS _ACI_OlympicWriteLeNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v12) - WORD2(v12) > 1)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = -1;
              *(v11 + WORD2(v12) + 1) = -1;
              return sub_100020078(65277, v11, (BYTE4(v12) + 2), a2, sub_1001C62CC, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1613, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_19;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_15:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1612, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1001CD560(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3047, "OI_STATUS _ACI_OlympicWriteTxRxPairsMax(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64838, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3047, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CD638(_WORD *a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3015, "OI_STATUS _ACI_Olympic300KhzFreqMode(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = *a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3016, "OI_STATUS _ACI_Olympic300KhzFreqMode(OI_HCI_CONNECTION_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65446, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3016, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3015, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001CD7B4(unsigned int a1, void (*a2)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (a1 > 4)
  {
    return 101;
  }

  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1514, "OI_STATUS _ACI_OlympicWriteNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v14) - WORD2(v14) > 1)
    {
      if (BYTE6(v14) == 2)
      {
        *(v13 + WORD2(v14)) = -1;
        *(v13 + WORD2(v14) + 1) = -1;
        v8 = WORD2(v14);
        v9 = WORD2(v14) + 2;
        WORD2(v14) += 2;
        if (HIBYTE(v14))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1515, "OI_STATUS _ACI_OlympicWriteNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v14) > v9)
        {
          if (BYTE6(v14) == 2)
          {
            WORD2(v14) = v8 + 3;
            *(v13 + v9) = a1;
            if (HIBYTE(v14))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1516, "OI_STATUS _ACI_OlympicWriteNumOfCompletedPackets(uint8_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v14) - WORD2(v14) > 1)
            {
              if (BYTE6(v14) == 2)
              {
                *(v13 + WORD2(v14)) = -1;
                *(v13 + WORD2(v14) + 1) = -1;
                WORD2(v14) += 2;
                return sub_100020078(64893, v13, BYTE4(v14), a2, sub_1001C62CC, v5, v6, v7);
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1516, v12);
            }

            v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_26;
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1515, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_22;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1514, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1001CD9C4(char a1, _WORD *a2, void (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1533, "OI_STATUS _ACI_OlympicWriteDisableFEC(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v10) = a1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1534, "OI_STATUS _ACI_OlympicWriteDisableFEC(_Bool, OI_HCI_CONNECTION_HANDLE, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v14) - WORD2(v14) > 1)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = *a2;
              WORD2(v14) += 2;
              return sub_100020078(64872, v13, BYTE4(v14), a3, sub_1001C62CC, v7, v8, v9);
            }

            v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1534, v12);
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1533, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001CDB40(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2433, "OI_STATUS _ACI_ReadIpaEpaCount(uint8_t, BT_VSC_TRANSMIT_IPA_EPA_COUNTERS_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(64861, v10, BYTE4(v11), a2, sub_1001ED484, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2433, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CDC18(uint64_t a1, void (*a2)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5692, "OI_STATUS _ACI_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
    }

    else if (WORD1(v23) - WORD2(v23) > 1)
    {
      if (BYTE6(v23) == 2)
      {
        *(v22 + WORD2(v23)) = *a1;
        v8 = WORD2(v23);
        v9 = WORD2(v23) + 2;
        WORD2(v23) += 2;
        if (HIBYTE(v23))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5693, "OI_STATUS _ACI_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
        }

        else if (WORD1(v23) > v9)
        {
          if (BYTE6(v23) == 2)
          {
            v10 = *(a1 + 2);
            WORD2(v23) = v8 + 3;
            *(v22 + v9) = v10;
            if (HIBYTE(v23))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5694, "OI_STATUS _ACI_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
            }

            else
            {
              v11 = WORD2(v23);
              if (WORD1(v23) > WORD2(v23))
              {
                if (BYTE6(v23) == 2)
                {
                  v12 = *(a1 + 3);
                  ++WORD2(v23);
                  *(v22 + v11) = v12;
                  if (HIBYTE(v23))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5695, "OI_STATUS _ACI_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                  }

                  else
                  {
                    v13 = WORD2(v23);
                    if (WORD1(v23) > WORD2(v23))
                    {
                      if (BYTE6(v23) == 2)
                      {
                        v14 = *(a1 + 4);
                        ++WORD2(v23);
                        *(v22 + v13) = v14;
                        if (HIBYTE(v23))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5696, "OI_STATUS _ACI_AntennaPreference(BT_VSCAntPrefParams_t *, BT_VSC_BYTESTREAM_CB)");
                        }

                        else
                        {
                          v15 = WORD2(v23);
                          if (WORD1(v23) > WORD2(v23))
                          {
                            if (BYTE6(v23) == 2)
                            {
                              v16 = *(a1 + 5);
                              ++WORD2(v23);
                              *(v22 + v15) = v16;
                              return sub_100020078(65357, v22, BYTE4(v23), a2, sub_1001C69E8, v5, v6, v7);
                            }

                            v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5696, v21);
                          }
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                        goto LABEL_38;
                      }

                      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5695, v20);
                    }
                  }

                  v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5694, v19);
              }
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_30;
          }

          v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5693, v18);
        }

        v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_26;
      }

      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5692, v17);
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001CDF00(int a1, char a2, uint64_t a3, void (*a4)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (a1 && !result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2109, "OI_STATUS _ACI_OlympicCountryCodeSel(uint8_t, uint8_t, uint8_t, BT_VSC_BYTESTREAM_CB)");
    }

    else
    {
      v11 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v11) = a2;
          return sub_100020078(64817, v13, BYTE4(v14), a4, sub_1001C69E8, v8, v9, v10);
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_11:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2109, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1001CDFE8(int a1, char a2, uint64_t a3, void (*a4)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (a1 && !result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2127, "OI_STATUS _ACI_OlympicCountryCodeSelNonStream(uint8_t, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v11 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v11) = a2;
          return sub_100020078(64817, v13, BYTE4(v14), a4, sub_1001C62CC, v8, v9, v10);
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_11:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2127, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1001CE0D0(char a1, void (*a2)())
{
  v21 = 0;
  v22 = 0;
  v4 = sub_10001FFD8(&v21);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v4)
    {
      return v4;
    }

    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2999, "OI_STATUS _ACI_LEMetaSetZoneRSSI(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v13 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v13) = a1;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3000, "OI_STATUS _ACI_LEMetaSetZoneRSSI(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v22) - WORD2(v22) > 3)
          {
            if (BYTE6(v22) == 2)
            {
              *(v21 + WORD2(v22)) = -1;
              *(v21 + WORD2(v22) + 1) = -1;
              *(v21 + WORD2(v22) + 2) = -1;
              *(v21 + WORD2(v22) + 3) = -1;
              v14 = WORD2(v22) + 4;
              WORD2(v22) += 4;
              if (HIBYTE(v22))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3001, "OI_STATUS _ACI_LEMetaSetZoneRSSI(uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v22) - v14 > 3)
              {
                if (BYTE6(v22) == 2)
                {
                  *(v21 + v14) = -1;
                  *(v21 + WORD2(v22) + 1) = -1;
                  *(v21 + WORD2(v22) + 2) = -1;
                  *(v21 + WORD2(v22) + 3) = -1;
                  WORD2(v22) += 4;
                  v10 = v21;
                  v11 = BYTE4(v22);
                  v12 = 64984;
                  return sub_100020078(v12, v10, v11, a2, sub_1001C62CC, v5, v6, v7);
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3001, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_36;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3000, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_32;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2999, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  if (!v4)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2985, "OI_STATUS _ACI_LEMetaSetZoneRSSI(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v22);
      if (WORD1(v22) > WORD2(v22))
      {
        if (BYTE6(v22) == 2)
        {
          ++WORD2(v22);
          *(v21 + v8) = 14;
          if (HIBYTE(v22))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2987, "OI_STATUS _ACI_LEMetaSetZoneRSSI(uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v9 = WORD2(v22);
            if (WORD1(v22) > WORD2(v22))
            {
              if (BYTE6(v22) == 2)
              {
                ++WORD2(v22);
                *(v21 + v9) = -a1;
                v10 = v21;
                v11 = BYTE4(v22);
                v12 = 64993;
                return sub_100020078(v12, v10, v11, a2, sub_1001C62CC, v5, v6, v7);
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2987, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_44;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2985, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_40;
  }

  return v4;
}

uint64_t sub_1001CE460(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3064, "OI_STATUS _ACI_OlympicSetHiPrioRSSI(uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = -a1;
          return sub_100020078(64855, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3064, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CE53C(_WORD *a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, void (*a6)())
{
  v25 = 0;
  v26 = 0;
  result = sub_10001FFD8(&v25);
  if (!result)
  {
    if (HIBYTE(v26))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3099, "OI_STATUS _ACI_OlympicLESetDataLengthExtended(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v26) - WORD2(v26) > 1)
    {
      if (BYTE6(v26) == 2)
      {
        *(v25 + WORD2(v26)) = *a1;
        v16 = WORD2(v26) + 2;
        WORD2(v26) += 2;
        if (HIBYTE(v26))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3100, "OI_STATUS _ACI_OlympicLESetDataLengthExtended(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v26) - v16 > 1)
        {
          if (BYTE6(v26) == 2)
          {
            *(v25 + v16) = a2;
            *(v25 + WORD2(v26) + 1) = HIBYTE(a2);
            v17 = WORD2(v26) + 2;
            WORD2(v26) += 2;
            if (HIBYTE(v26))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3101, "OI_STATUS _ACI_OlympicLESetDataLengthExtended(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v26) - v17 > 1)
            {
              if (BYTE6(v26) == 2)
              {
                *(v25 + v17) = a3;
                *(v25 + WORD2(v26) + 1) = HIBYTE(a3);
                v18 = WORD2(v26) + 2;
                WORD2(v26) += 2;
                if (HIBYTE(v26))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3102, "OI_STATUS _ACI_OlympicLESetDataLengthExtended(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v26) - v18 > 1)
                {
                  if (BYTE6(v26) == 2)
                  {
                    *(v25 + v18) = a4;
                    *(v25 + WORD2(v26) + 1) = HIBYTE(a4);
                    v19 = WORD2(v26) + 2;
                    WORD2(v26) += 2;
                    if (HIBYTE(v26))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3103, "OI_STATUS _ACI_OlympicLESetDataLengthExtended(OI_HCI_CONNECTION_HANDLE, uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v26) - v19 > 1)
                    {
                      if (BYTE6(v26) == 2)
                      {
                        *(v25 + v19) = a5;
                        *(v25 + WORD2(v26) + 1) = HIBYTE(a5);
                        WORD2(v26) += 2;
                        return sub_100020078(64835, v25, BYTE4(v26), a6, sub_1001C62CC, v13, v14, v15);
                      }

                      v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3103, v24);
                    }

                    v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_38;
                  }

                  v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3102, v23);
                }

                v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_34;
              }

              v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3101, v22);
            }

            v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_30;
          }

          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3100, v21);
        }

        v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_26;
      }

      v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3099, v20);
    }

    v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001CE8A4(__int16 a1, __int16 a2, __int16 a3, __int16 a4, void (*a5)())
{
  v21 = 0;
  v22 = 0;
  result = sub_10001FFD8(&v21);
  if (!result)
  {
    if (HIBYTE(v22))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3118, "OI_STATUS _ACI_OlympicLEWriteSuggestedDefaultExtended(uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v22) - WORD2(v22) > 1)
    {
      if (BYTE6(v22) == 2)
      {
        *(v21 + WORD2(v22)) = a1;
        v14 = WORD2(v22) + 2;
        WORD2(v22) += 2;
        if (HIBYTE(v22))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3119, "OI_STATUS _ACI_OlympicLEWriteSuggestedDefaultExtended(uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v22) - v14 > 1)
        {
          if (BYTE6(v22) == 2)
          {
            *(v21 + v14) = a2;
            *(v21 + WORD2(v22) + 1) = HIBYTE(a2);
            v15 = WORD2(v22) + 2;
            WORD2(v22) += 2;
            if (HIBYTE(v22))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3120, "OI_STATUS _ACI_OlympicLEWriteSuggestedDefaultExtended(uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v22) - v15 > 1)
            {
              if (BYTE6(v22) == 2)
              {
                *(v21 + v15) = a3;
                *(v21 + WORD2(v22) + 1) = HIBYTE(a3);
                v16 = WORD2(v22) + 2;
                WORD2(v22) += 2;
                if (HIBYTE(v22))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3121, "OI_STATUS _ACI_OlympicLEWriteSuggestedDefaultExtended(uint16_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v22) - v16 > 1)
                {
                  if (BYTE6(v22) == 2)
                  {
                    *(v21 + v16) = a4;
                    *(v21 + WORD2(v22) + 1) = HIBYTE(a4);
                    WORD2(v22) += 2;
                    return sub_100020078(64837, v21, BYTE4(v22), a5, sub_1001C62CC, v11, v12, v13);
                  }

                  v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3121, v20);
                }

                v20 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_31;
              }

              v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3120, v19);
            }

            v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_27;
          }

          v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3119, v18);
        }

        v18 = "ByteStream_NumReadBytesAvail(bs) >= 2";
        goto LABEL_23;
      }

      v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3118, v17);
    }

    v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001CEB70(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(64836, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001CEBCC(char a1, void (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5396, "OI_STATUS _ACI_OlympicSetMinAFHLeChannels(uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(65502, v10, BYTE4(v11), a2, sub_1001C62CC, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5396, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001CECA4(char a1, int a2, __int16 a3, __int16 a4, __int16 a5, void (*a6)())
{
  v24 = 0;
  v25 = 0;
  result = sub_10001FFD8(&v24);
  if (!result)
  {
    if (HIBYTE(v25))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6323, "OI_STATUS _ACI_BTAudioSyncConfig(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v25);
      if (WORD1(v25) > WORD2(v25))
      {
        if (BYTE6(v25) == 2)
        {
          ++WORD2(v25);
          *(v24 + v16) = a1;
          if (HIBYTE(v25))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6324, "OI_STATUS _ACI_BTAudioSyncConfig(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v17 = WORD2(v25);
            if (WORD1(v25) > WORD2(v25))
            {
              if (BYTE6(v25) == 2)
              {
                ++WORD2(v25);
                *(v24 + v17) = a2;
                if ((a2 - 1) > 1)
                {
                  goto LABEL_16;
                }

                if (HIBYTE(v25))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6326, "OI_STATUS _ACI_BTAudioSyncConfig(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v25) - WORD2(v25) > 1)
                {
                  if (BYTE6(v25) == 2)
                  {
                    *(v24 + WORD2(v25)) = a4;
                    v18 = WORD2(v25) + 2;
                    WORD2(v25) += 2;
                    if (HIBYTE(v25))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6327, "OI_STATUS _ACI_BTAudioSyncConfig(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                    }

                    else if (WORD1(v25) - v18 > 1)
                    {
                      if (BYTE6(v25) == 2)
                      {
                        *(v24 + v18) = a5;
                        *(v24 + WORD2(v25) + 1) = HIBYTE(a5);
                        WORD2(v25) += 2;
LABEL_16:
                        if (HIBYTE(v25))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6329, "OI_STATUS _ACI_BTAudioSyncConfig(uint8_t, uint8_t, uint16_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                        }

                        else if (WORD1(v25) - WORD2(v25) > 1)
                        {
                          if (BYTE6(v25) == 2)
                          {
                            *(v24 + WORD2(v25)) = a3;
                            WORD2(v25) += 2;
                            return sub_100020078(65148, v24, BYTE4(v25), a6, sub_1001C62CC, v13, v14, v15);
                          }

                          v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6329, v21);
                        }

                        v21 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                        goto LABEL_32;
                      }

                      v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6327, v23);
                    }

                    v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                    goto LABEL_40;
                  }

                  v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6326, v22);
                }

                v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                goto LABEL_36;
              }

              v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6324, v20);
            }
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_28;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6323, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1001CEFDC(_WORD *a1, int a2, unsigned int a3, void (*a4)())
{
  v20 = 0;
  v21 = 0;
  result = sub_10001FFD8(&v20);
  if (!result)
  {
    if (HIBYTE(v21))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3082, "OI_STATUS _ACI_OlympicSetConnectionDescriptor(OI_HCI_CONNECTION_HANDLE, uint32_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v21);
      if (WORD1(v21) > WORD2(v21))
      {
        if (BYTE6(v21) == 2)
        {
          ++WORD2(v21);
          *(v20 + v12) = 1;
          if (HIBYTE(v21))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3083, "OI_STATUS _ACI_OlympicSetConnectionDescriptor(OI_HCI_CONNECTION_HANDLE, uint32_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v21) - WORD2(v21) > 1)
          {
            if (BYTE6(v21) == 2)
            {
              *(v20 + WORD2(v21)) = *a1;
              v13 = WORD2(v21) + 2;
              WORD2(v21) += 2;
              if (HIBYTE(v21))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3084, "OI_STATUS _ACI_OlympicSetConnectionDescriptor(OI_HCI_CONNECTION_HANDLE, uint32_t, uint16_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v21) - v13 > 3)
              {
                if (BYTE6(v21) == 2)
                {
                  *(v20 + v13) = a2;
                  *(v20 + WORD2(v21) + 1) = BYTE1(a2);
                  *(v20 + WORD2(v21) + 2) = BYTE2(a2);
                  *(v20 + WORD2(v21) + 3) = HIBYTE(a2);
                  v14 = WORD2(v21) + 4;
                  WORD2(v21) += 4;
                  if (HIBYTE(v21))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3085, "OI_STATUS _ACI_OlympicSetConnectionDescriptor(OI_HCI_CONNECTION_HANDLE, uint32_t, uint16_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v21) - v14 > 1)
                  {
                    if (BYTE6(v21) == 2)
                    {
                      v15 = a3 * 1.25;
                      *(v20 + v14) = v15;
                      *(v20 + WORD2(v21) + 1) = v15 >> 8;
                      WORD2(v21) += 2;
                      return sub_100020078(65474, v20, BYTE4(v21), a4, sub_1001C62CC, v9, v10, v11);
                    }

                    v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3085, v19);
                  }

                  v19 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_31;
                }

                v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3084, v18);
              }

              v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
              goto LABEL_27;
            }

            v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3083, v17);
          }

          v17 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_23;
        }

        v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3082, v16);
      }
    }

    v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001CF2C0(char a1, char a2, char a3, char a4, char a5, __int16 a6, __int16 a7, void (*a8)())
{
  v33 = 0;
  v34 = 0;
  result = sub_10001FFD8(&v33);
  if (!result)
  {
    if (HIBYTE(v34))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3467, "OI_STATUS _ACI_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v20 = WORD2(v34);
      if (WORD1(v34) > WORD2(v34))
      {
        if (BYTE6(v34) == 2)
        {
          ++WORD2(v34);
          *(v33 + v20) = a1;
          if (HIBYTE(v34))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3468, "OI_STATUS _ACI_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v21 = WORD2(v34);
            if (WORD1(v34) > WORD2(v34))
            {
              if (BYTE6(v34) == 2)
              {
                ++WORD2(v34);
                *(v33 + v21) = a2;
                if (HIBYTE(v34))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3469, "OI_STATUS _ACI_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v22 = WORD2(v34);
                  if (WORD1(v34) > WORD2(v34))
                  {
                    if (BYTE6(v34) == 2)
                    {
                      ++WORD2(v34);
                      *(v33 + v22) = a3;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3470, "OI_STATUS _ACI_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v23 = WORD2(v34);
                        if (WORD1(v34) > WORD2(v34))
                        {
                          if (BYTE6(v34) == 2)
                          {
                            ++WORD2(v34);
                            *(v33 + v23) = a4;
                            if (HIBYTE(v34))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3471, "OI_STATUS _ACI_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v24 = WORD2(v34);
                              if (WORD1(v34) > WORD2(v34))
                              {
                                if (BYTE6(v34) == 2)
                                {
                                  ++WORD2(v34);
                                  *(v33 + v24) = a5;
                                  if (HIBYTE(v34))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3472, "OI_STATUS _ACI_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else if (WORD1(v34) - WORD2(v34) > 1)
                                  {
                                    if (BYTE6(v34) == 2)
                                    {
                                      *(v33 + WORD2(v34)) = a7;
                                      v25 = WORD2(v34) + 2;
                                      WORD2(v34) += 2;
                                      if (HIBYTE(v34))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3473, "OI_STATUS _ACI_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                      }

                                      else if (WORD1(v34) - v25 > 1)
                                      {
                                        if (BYTE6(v34) == 2)
                                        {
                                          *(v33 + v25) = a6;
                                          *(v33 + WORD2(v34) + 1) = HIBYTE(a6);
                                          WORD2(v34) += 2;
                                          return sub_100020078(65342, v33, BYTE4(v34), a8, sub_1001C62CC, v17, v18, v19);
                                        }

                                        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3473, v32);
                                      }

                                      v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_52;
                                    }

                                    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3472, v31);
                                  }

                                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_48;
                                }

                                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3471, v30);
                              }
                            }

                            v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3470, v29);
                        }
                      }

                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3469, v28);
                  }
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3468, v27);
            }
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3467, v26);
      }
    }

    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001CF6D0(char a1, char a2, unsigned __int8 a3, char *a4, _WORD *a5, _WORD *a6, char a7, char a8, _WORD *a9, uint64_t a10, void (*a11)())
{
  v47 = 0;
  v48 = 0;
  result = sub_10001FFD8(&v47);
  if (result)
  {
    return result;
  }

  LOBYTE(v23) = 0;
  v25 = 3;
  v26 = a3;
  do
  {
    LOBYTE(v23) = (v26 & 1) + v23;
    v26 >>= 1;
    --v25;
  }

  while (v25);
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3501, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_60;
  }

  v27 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_60:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_62;
  }

  if (BYTE6(v48) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_62:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3501, v42);
  }

  ++WORD2(v48);
  *(v47 + v27) = a1;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3502, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_64;
  }

  v28 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_64:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_66;
  }

  if (BYTE6(v48) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_66:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3502, v43);
  }

  ++WORD2(v48);
  *(v47 + v28) = a2;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3503, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_68;
  }

  v29 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_68:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_70;
  }

  if (BYTE6(v48) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3503, v44);
  }

  ++WORD2(v48);
  *(v47 + v29) = a3;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3504, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_72;
  }

  v30 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_72:
    v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_74;
  }

  if (BYTE6(v48) != 2)
  {
    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_74:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3504, v45);
  }

  ++WORD2(v48);
  *(v47 + v30) = a7;
  if (HIBYTE(v48))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3505, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_76;
  }

  v31 = WORD2(v48);
  if (WORD1(v48) <= WORD2(v48))
  {
LABEL_76:
    v46 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_78;
  }

  if (BYTE6(v48) != 2)
  {
    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_78:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3505, v46);
  }

  ++WORD2(v48);
  *(v47 + v31) = a8;
  if (v23)
  {
    v23 = v23;
    v32 = v23;
    while (!HIBYTE(v48))
    {
      v33 = WORD2(v48);
      if (WORD1(v48) <= WORD2(v48))
      {
        goto LABEL_45;
      }

      if (BYTE6(v48) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_46;
      }

      v34 = *a4++;
      ++WORD2(v48);
      *(v47 + v33) = v34;
      if (!--v32)
      {
        v35 = v23;
        while (!HIBYTE(v48))
        {
          if (WORD1(v48) - WORD2(v48) <= 1)
          {
            goto LABEL_49;
          }

          if (BYTE6(v48) != 2)
          {
            v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
            goto LABEL_50;
          }

          *(v47 + WORD2(v48)) = *a5;
          WORD2(v48) += 2;
          ++a5;
          if (!--v35)
          {
            v36 = v23;
            while (!HIBYTE(v48))
            {
              if (WORD1(v48) - WORD2(v48) <= 1)
              {
                goto LABEL_53;
              }

              if (BYTE6(v48) != 2)
              {
                v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_54;
              }

              *(v47 + WORD2(v48)) = *a6;
              WORD2(v48) += 2;
              ++a6;
              if (!--v36)
              {
                while (!HIBYTE(v48))
                {
                  if (WORD1(v48) - WORD2(v48) <= 1)
                  {
                    goto LABEL_57;
                  }

                  if (BYTE6(v48) != 2)
                  {
                    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                    goto LABEL_58;
                  }

                  *(v47 + WORD2(v48)) = *a9;
                  v37 = BYTE4(v48) + 2;
                  WORD2(v48) += 2;
                  ++a9;
                  if (!--v23)
                  {
                    return sub_100020078(65346, v47, v37, a11, sub_1001C62CC, v20, v21, v22);
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3517, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_57:
                v41 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_58:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3517, v41);
              }
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3514, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_53:
            v40 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_54:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3514, v40);
          }
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3511, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_49:
        v39 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_50:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3511, v39);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3508, "OI_STATUS _ACI_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_45:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_46:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3508, v38);
  }

  v37 = BYTE4(v48);
  return sub_100020078(65346, v47, v37, a11, sub_1001C62CC, v20, v21, v22);
}

uint64_t sub_1001CFC6C(char a1, __int16 a2, char a3, __int16 a4, char a5, void (*a6)())
{
  v26 = 0;
  v27 = 0;
  result = sub_10001FFD8(&v26);
  if (!result)
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5431, "OI_STATUS _ACI_OlympicSetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v16 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v16) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5432, "OI_STATUS _ACI_OlympicSetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v27) - WORD2(v27) > 1)
          {
            if (BYTE6(v27) == 2)
            {
              *(v26 + WORD2(v27)) = a2;
              v17 = WORD2(v27);
              v18 = WORD2(v27) + 2;
              WORD2(v27) += 2;
              if (HIBYTE(v27))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5433, "OI_STATUS _ACI_OlympicSetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v27) > v18)
              {
                if (BYTE6(v27) == 2)
                {
                  WORD2(v27) = v17 + 3;
                  *(v26 + v18) = a3;
                  if (HIBYTE(v27))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5434, "OI_STATUS _ACI_OlympicSetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v27) - WORD2(v27) > 1)
                  {
                    if (BYTE6(v27) == 2)
                    {
                      *(v26 + WORD2(v27)) = a4;
                      v19 = WORD2(v27);
                      v20 = WORD2(v27) + 2;
                      WORD2(v27) += 2;
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5435, "OI_STATUS _ACI_OlympicSetExtendedScanLimits(_Bool, uint16_t, uint8_t, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v27) > v20)
                      {
                        if (BYTE6(v27) == 2)
                        {
                          WORD2(v27) = v19 + 3;
                          *(v26 + v20) = a5;
                          return sub_100020078(65354, v26, BYTE4(v27), a6, sub_1001C62CC, v13, v14, v15);
                        }

                        v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5435, v25);
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5434, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                  goto LABEL_34;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5433, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_30;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5432, v22);
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5431, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001CFF7C(char a1, __int16 a2, void (*a3)())
{
  v13 = 0;
  v14 = 0;
  result = sub_10001FFD8(&v13);
  if (!result)
  {
    if (HIBYTE(v14))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5460, "OI_STATUS _ACI_OlympicSetExtendedAdvLimits(_Bool, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v10 = WORD2(v14);
      if (WORD1(v14) > WORD2(v14))
      {
        if (BYTE6(v14) == 2)
        {
          ++WORD2(v14);
          *(v13 + v10) = a1;
          if (HIBYTE(v14))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5461, "OI_STATUS _ACI_OlympicSetExtendedAdvLimits(_Bool, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v14) - WORD2(v14) > 1)
          {
            if (BYTE6(v14) == 2)
            {
              *(v13 + WORD2(v14)) = a2;
              WORD2(v14) += 2;
              return sub_100020078(65356, v13, BYTE4(v14), a3, sub_1001C62CC, v7, v8, v9);
            }

            v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5461, v12);
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_17;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5460, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D00F4(char a1, __int16 a2, char a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5447, "OI_STATUS _ACI_SetExtendedScanBuffers(_Bool, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v12) = a1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5448, "OI_STATUS _ACI_SetExtendedScanBuffers(_Bool, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v19) - WORD2(v19) > 1)
          {
            if (BYTE6(v19) == 2)
            {
              *(v18 + WORD2(v19)) = a2;
              v13 = WORD2(v19);
              v14 = WORD2(v19) + 2;
              WORD2(v19) += 2;
              if (HIBYTE(v19))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5449, "OI_STATUS _ACI_SetExtendedScanBuffers(_Bool, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v19) > v14)
              {
                if (BYTE6(v19) == 2)
                {
                  WORD2(v19) = v13 + 3;
                  *(v18 + v14) = a3;
                  return sub_100020078(65355, v18, BYTE4(v19), a4, sub_1001C62CC, v9, v10, v11);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5449, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5448, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5447, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D02E8(uint64_t a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6267, "OI_STATUS _ACI_UpdateLEPhyDenylist(BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v13);
      if (WORD1(v13) > WORD2(v13))
      {
        if (BYTE6(v13) == 2)
        {
          ++WORD2(v13);
          *(v12 + v5) = BYTE6(a1);
          v11[0] = BYTE5(a1);
          v11[1] = BYTE4(a1);
          v11[2] = BYTE3(a1);
          v11[3] = BYTE2(a1);
          v11[4] = BYTE1(a1);
          v11[5] = a1;
          if (HIBYTE(v13))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6270, "OI_STATUS _ACI_UpdateLEPhyDenylist(BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v13) - WORD2(v13) > 5)
          {
            if (BYTE6(v13) == 2)
            {
              sub_1000075EC((v12 + WORD2(v13)), v11, 6uLL);
              WORD2(v13) += 6;
              return sub_100020078(65063, v12, BYTE4(v13), a2, sub_1001C62CC, v6, v7, v8);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6270, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 6267, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D047C(__int16 a1, char a2, char a3, void (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5331, "OI_STATUS _ACI_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v19) - WORD2(v19) > 1)
    {
      if (BYTE6(v19) == 2)
      {
        *(v18 + WORD2(v19)) = a1;
        v12 = WORD2(v19);
        v13 = WORD2(v19) + 2;
        WORD2(v19) += 2;
        if (HIBYTE(v19))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5332, "OI_STATUS _ACI_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v19) > v13)
        {
          if (BYTE6(v19) == 2)
          {
            WORD2(v19) = v12 + 3;
            *(v18 + v13) = a2;
            if (HIBYTE(v19))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5333, "OI_STATUS _ACI_SetHIDLatencyStats(OI_HCI_LM_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v14 = WORD2(v19);
              if (WORD1(v19) > WORD2(v19))
              {
                if (BYTE6(v19) == 2)
                {
                  ++WORD2(v19);
                  *(v18 + v14) = a3;
                  return sub_100020078(65072, v18, BYTE4(v19), a4, sub_1001C62CC, v9, v10, v11);
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5333, v17);
              }
            }

            v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
            goto LABEL_24;
          }

          v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5332, v16);
        }

        v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 5331, v15);
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D0670(__int16 a1, char a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4441, "OI_STATUS _ACI_OlympicSetLMPHalt(OI_HCI_LM_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v15) - WORD2(v15) > 1)
    {
      if (BYTE6(v15) == 2)
      {
        *(v14 + WORD2(v15)) = a1;
        v10 = WORD2(v15);
        v11 = WORD2(v15) + 2;
        WORD2(v15) += 2;
        if (HIBYTE(v15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4442, "OI_STATUS _ACI_OlympicSetLMPHalt(OI_HCI_LM_HANDLE, uint8_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v15) > v11)
        {
          if (BYTE6(v15) == 2)
          {
            WORD2(v15) = v10 + 3;
            *(v14 + v11) = a2;
            return sub_100020078(65339, v14, BYTE4(v15), a3, sub_1001C62CC, v7, v8, v9);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4442, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 4441, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001D07E8(__int16 a1, char a2, __int16 a3, void (*a4)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3552, "OI_STATUS _ACI_ConfigureSynchronizationEvent(const uint16_t, const uint, const uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v18) - WORD2(v18) > 1)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = a1;
        v12 = WORD2(v18);
        v13 = WORD2(v18) + 2;
        WORD2(v18) += 2;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3553, "OI_STATUS _ACI_ConfigureSynchronizationEvent(const uint16_t, const uint, const uint16_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v18) > v13)
        {
          if (BYTE6(v18) == 2)
          {
            WORD2(v18) = v12 + 3;
            *(v17 + v13) = a2;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3554, "OI_STATUS _ACI_ConfigureSynchronizationEvent(const uint16_t, const uint, const uint16_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v18) - WORD2(v18) > 1)
            {
              if (BYTE6(v18) == 2)
              {
                *(v17 + WORD2(v18)) = a3;
                WORD2(v18) += 2;
                return sub_100020078(65487, v17, BYTE4(v18), a4, sub_1001C62CC, v9, v10, v11);
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3554, v16);
            }

            v16 = "ByteStream_NumReadBytesAvail(bs) >= 2";
            goto LABEL_24;
          }

          v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3553, v15);
        }

        v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_20;
      }

      v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3552, v14);
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D09F8(char a1, _BYTE *a2, _WORD *a3, char a4, char a5, void (*a6)())
{
  v26 = 0;
  v27 = 0;
  if (!sub_10001FFD8(&v26))
  {
    if (HIBYTE(v27))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3958, "OI_STATUS _ACI_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v15 = WORD2(v27);
      if (WORD1(v27) > WORD2(v27))
      {
        if (BYTE6(v27) == 2)
        {
          ++WORD2(v27);
          *(v26 + v15) = a1;
          if (HIBYTE(v27))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3959, "OI_STATUS _ACI_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v27) - WORD2(v27) > 1)
          {
            if (BYTE6(v27) == 2)
            {
              *(v26 + WORD2(v27)) = *a3;
              v16 = WORD2(v27) + 2;
              WORD2(v27) += 2;
              if (HIBYTE(v27))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3960, "OI_STATUS _ACI_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v27) - v16 > 1)
              {
                if (BYTE6(v27) == 2)
                {
                  *(v26 + v16) = *a2;
                  *(v26 + WORD2(v27) + 1) = a2[1];
                  v17 = WORD2(v27);
                  v18 = WORD2(v27) + 2;
                  WORD2(v27) += 2;
                  if (HIBYTE(v27))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3961, "OI_STATUS _ACI_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                  }

                  else if (WORD1(v27) > v18)
                  {
                    if (BYTE6(v27) == 2)
                    {
                      WORD2(v27) = v17 + 3;
                      *(v26 + v18) = a4;
                      if (HIBYTE(v27))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3962, "OI_STATUS _ACI_EnableCisLinkQualityStats(uint8_t, OI_HCI_CONNECTION_HANDLE, OI_HCI_CONNECTION_HANDLE, uint8_t, uint8_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v19 = WORD2(v27);
                        if (WORD1(v27) > WORD2(v27))
                        {
                          if (BYTE6(v27) == 2)
                          {
                            ++WORD2(v27);
                            *(v26 + v19) = a5;
                            return sub_100020078(64884, v26, BYTE4(v27), a6, sub_1001C62CC, v12, v13, v14);
                          }

                          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_38:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3962, v25);
                        }
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_38;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3961, v24);
                  }

                  v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_34;
                }

                v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3960, v23);
              }

              v23 = "ByteStream_NumReadBytesAvail(bs) >= 2";
              goto LABEL_30;
            }

            v22 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3959, v22);
          }

          v22 = "ByteStream_NumReadBytesAvail(bs) >= 2";
          goto LABEL_26;
        }

        v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3958, v21);
      }
    }

    v21 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_22;
  }

  return sub_100020078(64884, v26, BYTE4(v27), a6, sub_1001C62CC, v12, v13, v14);
}

uint64_t sub_1001D0D10(int a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  v7 = sub_10001FFD8(&v12);
  if ((a1 & 0x10000) != 0)
  {
    if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() <= 0xBB7)
    {
      v8 = -2147483646;
    }

    else
    {
      v8 = -2147418110;
    }
  }

  else
  {
    v8 = 0;
  }

  if ((a1 & 0x40000) != 0)
  {
    v8 |= 0x80000004;
  }

  if ((a1 & 0x100000) != 0)
  {
    v8 |= 0x80000001;
  }

  if (!v7)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1630, "OI_STATUS _ACI_LEMetaEnableFeatures(uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v13) - WORD2(v13) > 3)
    {
      if (BYTE6(v13) == 2)
      {
        v9 = v8 | a1 & 0x15000002;
        *(v12 + WORD2(v13)) = v9;
        *(v12 + WORD2(v13) + 1) = BYTE1(v8);
        *(v12 + WORD2(v13) + 2) = BYTE2(v8);
        *(v12 + WORD2(v13) + 3) = HIBYTE(v9);
        WORD2(v13) += 4;
        return sub_100020078(65345, v12, BYTE4(v13), a2, sub_1001C62CC, v4, v5, v6);
      }

      v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1630, v11);
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_21;
  }

  return v7;
}

uint64_t sub_1001D0EB4(int a1, int a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1647, "OI_STATUS _ACI_LEMetaEnableFilteringFeatures(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v18) - WORD2(v18) > 3)
    {
      if (BYTE6(v18) == 2)
      {
        *(v17 + WORD2(v18)) = a1;
        *(v17 + WORD2(v18) + 2) = BYTE2(a1);
        *(v17 + WORD2(v18) + 3) = HIBYTE(a1);
        v10 = WORD2(v18) + 4;
        WORD2(v18) += 4;
        if (HIBYTE(v18))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1648, "OI_STATUS _ACI_LEMetaEnableFilteringFeatures(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v18) - v10 > 3)
        {
          if (BYTE6(v18) == 2)
          {
            *(v17 + v10) = a2;
            *(v17 + WORD2(v18) + 1) = BYTE1(a2);
            *(v17 + WORD2(v18) + 2) = BYTE2(a2);
            *(v17 + WORD2(v18) + 3) = HIBYTE(a2);
            v11 = WORD2(v18) + 4;
            WORD2(v18) += 4;
            if (HIBYTE(v18))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1649, "OI_STATUS _ACI_LEMetaEnableFilteringFeatures(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
            }

            else if (WORD1(v18) - v11 > 3)
            {
              if (BYTE6(v18) == 2)
              {
                *(v17 + v11) = 0;
                *(v17 + WORD2(v18) + 1) = 0;
                *(v17 + WORD2(v18) + 3) = 0;
                v12 = WORD2(v18) + 4;
                WORD2(v18) += 4;
                if (HIBYTE(v18))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1650, "OI_STATUS _ACI_LEMetaEnableFilteringFeatures(uint32_t, uint32_t, BT_VSC_COMPLETE_CB)");
                }

                else if (WORD1(v18) - v12 > 3)
                {
                  if (BYTE6(v18) == 2)
                  {
                    *(v17 + v12) = 0;
                    *(v17 + WORD2(v18) + 1) = 0;
                    *(v17 + WORD2(v18) + 3) = 0;
                    WORD2(v18) += 4;
                    return sub_100020078(64957, v17, BYTE4(v18), a3, sub_1001C62CC, v7, v8, v9);
                  }

                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1650, v16);
                }

                v16 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                goto LABEL_31;
              }

              v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1649, v15);
            }

            v15 = "ByteStream_NumReadBytesAvail(bs) >= 4";
            goto LABEL_27;
          }

          v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1648, v14);
        }

        v14 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_23;
      }

      v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1647, v13);
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D11F8(int a1, uint64_t a2, uint64_t a3, unsigned int a4, void (*a5)())
{
  v22 = 0;
  v23 = 0;
  result = sub_10001FFD8(&v22);
  if (a1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  if (!result)
  {
    if (HIBYTE(v23))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1729, "OI_STATUS _ACI_LEMetaAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v23);
      if (WORD1(v23) > WORD2(v23))
      {
        if (BYTE6(v23) == 2)
        {
          ++WORD2(v23);
          *(v22 + v12) = v11;
          if (HIBYTE(v23))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1730, "OI_STATUS _ACI_LEMetaAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v23) - WORD2(v23) > 5)
          {
            if (BYTE6(v23) == 2)
            {
              sub_1000075EC((v22 + WORD2(v23)), a2, 6uLL);
              v13 = WORD2(v23) + 6;
              WORD2(v23) += 6;
              v14 = v22;
              if (HIBYTE(v23))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1731, "OI_STATUS _ACI_LEMetaAddIrk(_Bool, const OI_BD_ADDR *, const uint8_t *, uint8_t, BT_VSC_COMPLETE_CB)");
                v15 = 0;
              }

              else
              {
                v15 = WORD1(v23) - v13;
              }

              if (v15 < a4)
              {
                v21 = "ByteStream_NumReadBytesAvail(bs) >= (IrkLength)";
              }

              else
              {
                if (BYTE6(v23) == 2)
                {
                  sub_1000075EC((v14 + v13), a3, a4);
                  WORD2(v23) += a4;
                  return sub_100020078(65279, v22, BYTE4(v23), a5, sub_1001C62CC, v16, v17, v18);
                }

                v21 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1731, v21);
            }

            v20 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_25:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1730, v20);
          }

          v20 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_25;
        }

        v19 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_21:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1729, v19);
      }
    }

    v19 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1001D1414(int a1, uint64_t a2, void (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (a1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1750, "OI_STATUS _ACI_LEMetaRemoveIrk(_Bool, const OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v8) = v7;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1751, "OI_STATUS _ACI_LEMetaRemoveIrk(_Bool, const OI_BD_ADDR *, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v15) - WORD2(v15) > 5)
          {
            if (BYTE6(v15) == 2)
            {
              sub_1000075EC((v14 + WORD2(v15)), a2, 6uLL);
              WORD2(v15) += 6;
              return sub_100020078(65279, v14, BYTE4(v15), a3, sub_1001C62CC, v9, v10, v11);
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1751, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1750, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D1590(void (*a1)())
{
  v6 = 0;
  v7 = 0;
  result = sub_10001FFD8(&v6);
  if (!result)
  {
    return sub_100020078(65274, v6, BYTE4(v7), a1, sub_1001C62CC, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1001D15EC(char a1, uint64_t a2, void (*a3)())
{
  v17 = 0;
  v18 = 0;
  result = sub_10001FFD8(&v17);
  if (!result)
  {
    if (HIBYTE(v18))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1776, "OI_STATUS _ACI_LEMetaAddFastIrkResolution(uint8_t, const BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v7 = WORD2(v18);
      if (WORD1(v18) > WORD2(v18))
      {
        if (BYTE6(v18) == 2)
        {
          ++WORD2(v18);
          *(v17 + v7) = a1;
          v16[0] = BYTE5(a2);
          v16[1] = BYTE4(a2);
          v16[2] = BYTE3(a2);
          v16[3] = BYTE2(a2);
          v16[4] = BYTE1(a2);
          v16[5] = a2;
          if (HIBYTE(v18))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1779, "OI_STATUS _ACI_LEMetaAddFastIrkResolution(uint8_t, const BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v18) - WORD2(v18) > 5)
          {
            if (BYTE6(v18) == 2)
            {
              sub_1000075EC((v17 + WORD2(v18)), v16, 6uLL);
              v11 = WORD2(v18);
              v12 = WORD2(v18) + 6;
              WORD2(v18) += 6;
              if (HIBYTE(v18))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1780, "OI_STATUS _ACI_LEMetaAddFastIrkResolution(uint8_t, const BTAddress, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v18) > v12)
              {
                if (BYTE6(v18) == 2)
                {
                  WORD2(v18) = v11 + 7;
                  *(v17 + v12) = BYTE6(a2);
                  return sub_100020078(65312, v17, BYTE4(v18), a3, sub_1001C62CC, v8, v9, v10);
                }

                v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1780, v15);
              }

              v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_24;
            }

            v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1779, v14);
          }

          v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
          goto LABEL_20;
        }

        v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1776, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1001D1804(void (*a1)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1798, "OI_STATUS _ACI_LEMetaPCFDisableServiceUUID(BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v6) = 2;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1799, "OI_STATUS _ACI_LEMetaPCFDisableServiceUUID(BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v7 = WORD2(v20);
            if (WORD1(v20) > WORD2(v20))
            {
              if (BYTE6(v20) == 2)
              {
                ++WORD2(v20);
                *(v19 + v7) = 1;
                if (HIBYTE(v20))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1800, "OI_STATUS _ACI_LEMetaPCFDisableServiceUUID(BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v8 = WORD2(v20);
                  if (WORD1(v20) > WORD2(v20))
                  {
                    if (BYTE6(v20) == 2)
                    {
                      ++WORD2(v20);
                      *(v19 + v8) = 2;
                      if (HIBYTE(v20))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1801, "OI_STATUS _ACI_LEMetaPCFDisableServiceUUID(BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v9 = WORD2(v20);
                        if (WORD1(v20) > WORD2(v20))
                        {
                          if (BYTE6(v20) == 2)
                          {
                            ++WORD2(v20);
                            *(v19 + v9) = 0;
                            if (HIBYTE(v20))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1802, "OI_STATUS _ACI_LEMetaPCFDisableServiceUUID(BT_VSC_COMPLETE_CB)");
                            }

                            else if (WORD1(v20) - WORD2(v20) > 1)
                            {
                              if (BYTE6(v20) == 2)
                              {
                                *(v19 + WORD2(v20)) = 0;
                                v10 = WORD2(v20) + 2;
                                WORD2(v20) += 2;
                                if (HIBYTE(v20))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1803, "OI_STATUS _ACI_LEMetaPCFDisableServiceUUID(BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v20) - v10 > 3)
                                {
                                  if (BYTE6(v20) == 2)
                                  {
                                    *(v19 + v10) = -1;
                                    *(v19 + WORD2(v20) + 1) = -1;
                                    *(v19 + WORD2(v20) + 2) = -1;
                                    *(v19 + WORD2(v20) + 3) = -1;
                                    v11 = WORD2(v20) + 4;
                                    WORD2(v20) += 4;
                                    if (HIBYTE(v20))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1804, "OI_STATUS _ACI_LEMetaPCFDisableServiceUUID(BT_VSC_COMPLETE_CB)");
                                    }

                                    else if (WORD1(v20) - v11 > 3)
                                    {
                                      if (BYTE6(v20) == 2)
                                      {
                                        *(v19 + v11) = -1;
                                        *(v19 + WORD2(v20) + 1) = -1;
                                        *(v19 + WORD2(v20) + 2) = -1;
                                        *(v19 + WORD2(v20) + 3) = -1;
                                        WORD2(v20) += 4;
                                        return sub_100020078(64998, v19, BYTE4(v20), a1, sub_1001C62CC, v3, v4, v5);
                                      }

                                      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1804, v18);
                                    }

                                    v18 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                    goto LABEL_52;
                                  }

                                  v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1803, v17);
                                }

                                v17 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                goto LABEL_48;
                              }

                              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1802, v16);
                            }

                            v16 = "ByteStream_NumReadBytesAvail(bs) >= (2)";
                            goto LABEL_44;
                          }

                          v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1801, v15);
                        }
                      }

                      v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1800, v14);
                  }
                }

                v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1799, v13);
            }
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1798, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1001D1C54(uint64_t a1, unsigned int a2, int a3, void (*a4)())
{
  v31 = 0;
  v32 = 0;
  result = sub_10001FFD8(&v31);
  if (!result)
  {
    if (a3)
    {
      if (HIBYTE(v32))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1832, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
      }

      else
      {
        v12 = WORD2(v32);
        if (WORD1(v32) > WORD2(v32))
        {
          if (BYTE6(v32) == 2)
          {
            v13 = 0;
            goto LABEL_11;
          }

          v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_70:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1832, v28);
        }
      }

      v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
      goto LABEL_70;
    }

    if (HIBYTE(v32))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1834, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v12 = WORD2(v32);
      if (WORD1(v32) > WORD2(v32))
      {
        if (BYTE6(v32) == 2)
        {
          v13 = 1;
LABEL_11:
          WORD2(v32) = v12 + 1;
          *(v31 + v12) = v13;
          if (a2 != 2)
          {
            if (a2 != 16)
            {
              sub_1000D660C();
            }

            if (HIBYTE(v32))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1839, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
            }

            else
            {
              v14 = WORD2(v32);
              if (WORD1(v32) > WORD2(v32))
              {
                v15 = BYTE6(v32);
                if (BYTE6(v32) != 2)
                {
                  v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  goto LABEL_64;
                }

LABEL_22:
                WORD2(v32) = v14 + 1;
                *(v31 + v14) = v15;
                if (HIBYTE(v32))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1844, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v17 = WORD2(v32);
                  if (WORD1(v32) > WORD2(v32))
                  {
                    if (BYTE6(v32) == 2)
                    {
                      ++WORD2(v32);
                      *(v31 + v17) = 2;
                      if (HIBYTE(v32))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1845, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v18 = WORD2(v32);
                        if (WORD1(v32) > WORD2(v32))
                        {
                          if (BYTE6(v32) == 2)
                          {
                            ++WORD2(v32);
                            *(v31 + v18) = 0;
                            if (a2)
                            {
                              v19 = a2;
                              while (!HIBYTE(v32))
                              {
                                v20 = WORD2(v32);
                                if (WORD1(v32) <= WORD2(v32))
                                {
                                  goto LABEL_44;
                                }

                                if (BYTE6(v32) != 2)
                                {
                                  v23 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                                  goto LABEL_45;
                                }

                                v21 = *(a1 - 1 + v19--);
                                ++WORD2(v32);
                                *(v31 + v20) = v21;
                                if ((v19 + 1) <= 1)
                                {
                                  goto LABEL_34;
                                }
                              }

                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1848, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
LABEL_44:
                              v23 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_45:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1848, v23);
                            }

LABEL_34:
                            if (HIBYTE(v32))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1851, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                            }

                            else if (WORD1(v32) - WORD2(v32) > 3)
                            {
                              if (BYTE6(v32) == 2)
                              {
                                *(v31 + WORD2(v32)) = -1;
                                *(v31 + WORD2(v32) + 1) = -1;
                                *(v31 + WORD2(v32) + 2) = -1;
                                *(v31 + WORD2(v32) + 3) = -1;
                                v22 = WORD2(v32) + 4;
                                WORD2(v32) += 4;
                                if (HIBYTE(v32))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1852, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
                                }

                                else if (WORD1(v32) - v22 > 3)
                                {
                                  if (BYTE6(v32) == 2)
                                  {
                                    *(v31 + v22) = -1;
                                    *(v31 + WORD2(v32) + 1) = -1;
                                    *(v31 + WORD2(v32) + 2) = -1;
                                    *(v31 + WORD2(v32) + 3) = -1;
                                    WORD2(v32) += 4;
                                    return sub_100020078(64998, v31, BYTE4(v32), a4, sub_1001C62CC, v9, v10, v11);
                                  }

                                  v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1852, v27);
                                }

                                v27 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                                goto LABEL_61;
                              }

                              v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1851, v26);
                            }

                            v26 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                            goto LABEL_57;
                          }

                          v25 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_53:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1845, v25);
                        }
                      }

                      v25 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_53;
                    }

                    v24 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_49:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1844, v24);
                  }
                }

                v24 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_49;
              }
            }

            v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_64:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1839, v16);
          }

          if (HIBYTE(v32))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1842, "OI_STATUS _ACI_LEMetaScanFilterUUID(uint8_t *, uint8_t, _Bool, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v14 = WORD2(v32);
            if (WORD1(v32) > WORD2(v32))
            {
              if (BYTE6(v32) == 2)
              {
                v15 = 1;
                goto LABEL_22;
              }

              v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_76:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1842, v30);
            }
          }

          v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_76;
        }

        v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_72:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1834, v29);
      }
    }

    v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_72;
  }

  return result;
}

uint64_t sub_1001D2198(void (*a1)())
{
  v15 = 0;
  v16 = 0;
  v2 = sub_10001FFD8(&v15);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v2)
    {
      return v2;
    }

    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1974, "OI_STATUS _ACI_LEMetaGetZoneCapacity(BT_VSC_GET_ZONE_CAPACITY_CB)");
    }

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = -1;
        *(v15 + WORD2(v16) + 1) = -1;
        *(v15 + WORD2(v16) + 2) = -1;
        *(v15 + WORD2(v16) + 3) = -1;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1975, "OI_STATUS _ACI_LEMetaGetZoneCapacity(BT_VSC_GET_ZONE_CAPACITY_CB)");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = -1;
            *(v15 + WORD2(v16) + 1) = -1;
            *(v15 + WORD2(v16) + 2) = -1;
            *(v15 + WORD2(v16) + 3) = -1;
            WORD2(v16) += 4;
            v7 = v15;
            v9 = sub_1001ED778;
            v8 = BYTE4(v16);
            return sub_100020078(64993, v7, v8, a1, v9, v3, v4, v5);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1975, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_26;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1974, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  if (!v2)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1962, "OI_STATUS _ACI_LEMetaGetZoneCapacity(BT_VSC_GET_ZONE_CAPACITY_CB)");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = 28;
          v7 = v15;
          v8 = BYTE4(v16);
          v9 = sub_1001ED640;
          return sub_100020078(64993, v7, v8, a1, v9, v3, v4, v5);
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1962, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_30;
  }

  return v2;
}

uint64_t sub_1001D2424(const void *a1, int a2, char a3, void (*a4)())
{
  LODWORD(v6) = a2;
  v52 = 0;
  v53 = 0;
  v8 = sub_10001FFD8(&v52);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v6 >= 0x15)
    {
      v6 = 21;
    }

    else
    {
      v6 = v6;
    }

    if (!v8)
    {
      v13 = v52;
      v14 = WORD2(v53);
      if (HIBYTE(v53))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2016, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
        v15 = 0;
      }

      else
      {
        v15 = WORD1(v53) - WORD2(v53);
      }

      if (v15 < v6)
      {
        v41 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
      }

      else
      {
        if (BYTE6(v53) == 2)
        {
          memmove((v13 + v14), a1, v6);
          WORD2(v53) += v6;
          if (WORD1(v53) <= 0x15u)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2017, "(size_t)(22) <= (size_t)((bs).__size)");
          }

          WORD2(v53) = 22;
          v16 = v52;
          if (HIBYTE(v53))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2018, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
            v17 = 0;
          }

          else
          {
            v17 = WORD1(v53) - 22;
          }

          if (v17 < v6)
          {
            v42 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v53) == 2)
            {
              memset((v16 + 22), 255, v6);
              WORD2(v53) += v6;
              v21 = WORD1(v53);
              if (WORD1(v53) <= 0x2Au)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2019, "(size_t)(43) <= (size_t)((bs).__size)");
              }

              WORD2(v53) = 43;
              if (HIBYTE(v53))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2020, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v53) != 43)
              {
                v22 = v52;
                WORD2(v53) = 44;
                *(v52 + 43) = a3;
                if ((v21 & 0xFFFC) == 0x2C)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2021, "ByteStream_NumReadBytesAvail(bs) >= 4");
                }

                *(v22 + 44) = -1;
                WORD2(v53) = 48;
                if (v21 <= 0x33)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2022, "ByteStream_NumReadBytesAvail(bs) >= 4");
                }

                *(v22 + 48) = -1;
                WORD2(v53) = 52;
                v23 = 64992;
                v24 = 52;
                return sub_100020078(v23, v22, v24, a4, sub_1001C62CC, v18, v19, v20);
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2020, "ByteStream_NumReadBytesAvail(bs) >= 1");
            }

            v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2018, v42);
        }

        v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2016, v41);
    }
  }

  else if (!v8)
  {
    if (v6 >= 0x15)
    {
      v6 = 21;
    }

    else
    {
      v6 = v6;
    }

    if (HIBYTE(v53))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1993, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v9 = WORD2(v53);
      if (WORD1(v53) > WORD2(v53))
      {
        if (BYTE6(v53) == 2)
        {
          ++WORD2(v53);
          *(v52 + v9) = 29;
          v10 = v52;
          v11 = WORD2(v53);
          if (HIBYTE(v53))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1994, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
            v12 = 0;
          }

          else
          {
            v12 = WORD1(v53) - WORD2(v53);
          }

          if (v12 < v6)
          {
            v44 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v53) == 2)
            {
              memmove((v10 + v11), a1, v6);
              v26 = WORD2(v53) + v6;
              WORD2(v53) += v6;
              v27 = v52;
              if (HIBYTE(v53))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1995, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                v28 = 0;
              }

              else
              {
                v28 = WORD1(v53) - v26;
              }

              v29 = (21 - v6);
              if (v28 < v29)
              {
                v45 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
              }

              else
              {
                if (BYTE6(v53) == 2)
                {
                  bzero((v27 + v26), (21 - v6));
                  v30 = WORD2(v53) + 21 - v6;
                  WORD2(v53) = v30;
                  v31 = v52;
                  if (HIBYTE(v53))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1996, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                    v32 = 0;
                  }

                  else
                  {
                    v32 = WORD1(v53) - v30;
                  }

                  if (v32 < v6)
                  {
                    v46 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                  }

                  else
                  {
                    if (BYTE6(v53) == 2)
                    {
                      memset((v31 + v30), 255, v6);
                      v33 = WORD2(v53) + v6;
                      WORD2(v53) = v33;
                      v34 = v52;
                      if (HIBYTE(v53))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1997, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                        v35 = 0;
                      }

                      else
                      {
                        v35 = WORD1(v53) - v33;
                      }

                      if (v35 < v29)
                      {
                        v47 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
                      }

                      else
                      {
                        if (BYTE6(v53) == 2)
                        {
                          bzero((v34 + v33), v29);
                          v36 = WORD2(v53) + v29;
                          WORD2(v53) += v29;
                          if (HIBYTE(v53))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1998, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                          }

                          else if (WORD1(v53) - v36 > 3)
                          {
                            if (BYTE6(v53) == 2)
                            {
                              *(v52 + v36) = a3;
                              *(v52 + WORD2(v53) + 1) = 0;
                              *(v52 + WORD2(v53) + 3) = 0;
                              v37 = WORD2(v53);
                              v38 = WORD2(v53) + 4;
                              WORD2(v53) += 4;
                              if (HIBYTE(v53))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1999, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                              }

                              else if (WORD1(v53) > v38)
                              {
                                if (BYTE6(v53) == 2)
                                {
                                  WORD2(v53) = v37 + 5;
                                  *(v52 + v38) = 0;
                                  if (HIBYTE(v53))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2000, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else
                                  {
                                    v39 = WORD2(v53);
                                    if (WORD1(v53) > WORD2(v53))
                                    {
                                      if (BYTE6(v53) == 2)
                                      {
                                        ++WORD2(v53);
                                        *(v52 + v39) = 0;
                                        if (HIBYTE(v53))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2001, "OI_STATUS _ACI_LEMetaAddZoneCapacity(const uint8_t *, uint16_t, uint8_t, BT_VSC_COMPLETE_CB)");
                                        }

                                        else
                                        {
                                          v40 = WORD2(v53);
                                          if (WORD1(v53) > WORD2(v53))
                                          {
                                            if (BYTE6(v53) == 2)
                                            {
                                              ++WORD2(v53);
                                              *(v52 + v40) = 0;
                                              v22 = v52;
                                              v24 = BYTE4(v53);
                                              v23 = 64993;
                                              return sub_100020078(v23, v22, v24, a4, sub_1001C62CC, v18, v19, v20);
                                            }

                                            v51 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_110:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2001, v51);
                                          }
                                        }

                                        v51 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                        goto LABEL_110;
                                      }

                                      v50 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_106:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2000, v50);
                                    }
                                  }

                                  v50 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                                  goto LABEL_106;
                                }

                                v49 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_102:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1999, v49);
                              }

                              v49 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                              goto LABEL_102;
                            }

                            v48 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_98:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1998, v48);
                          }

                          v48 = "ByteStream_NumReadBytesAvail(bs) >= 4";
                          goto LABEL_98;
                        }

                        v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      }

                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1997, v47);
                    }

                    v46 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1996, v46);
                }

                v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1995, v45);
            }

            v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1994, v44);
        }

        v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_82:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 1993, v43);
      }
    }

    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_82;
  }

  return v8;
}

uint64_t sub_1001D2C04(const void *a1, int a2, void (*a3)())
{
  LODWORD(v4) = a2;
  v41 = 0;
  v42 = 0;
  v6 = sub_10001FFD8(&v41);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v4 >= 0x15)
    {
      v4 = 21;
    }

    else
    {
      v4 = v4;
    }

    if (!v6)
    {
      v11 = v41;
      v12 = WORD2(v42);
      if (HIBYTE(v42))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2058, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
        v13 = 0;
      }

      else
      {
        v13 = WORD1(v42) - WORD2(v42);
      }

      if (v13 < v4)
      {
        v34 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
      }

      else
      {
        if (BYTE6(v42) == 2)
        {
          memmove((v11 + v12), a1, v4);
          WORD2(v42) += v4;
          if (WORD1(v42) <= 0x15u)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2059, "(size_t)(22) <= (size_t)((bs).__size)");
          }

          WORD2(v42) = 22;
          v14 = v41;
          if (HIBYTE(v42))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2060, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
            v15 = 0;
          }

          else
          {
            v15 = WORD1(v42) - 22;
          }

          if (v15 < v4)
          {
            v35 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v42) == 2)
            {
              memset((v14 + 22), 255, v4);
              WORD2(v42) += v4;
              v19 = WORD1(v42);
              if (WORD1(v42) <= 0x2Au)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2061, "(size_t)(43) <= (size_t)((bs).__size)");
              }

              WORD2(v42) = 43;
              if (HIBYTE(v42))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2062, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
              }

              else if (WORD1(v42) > 0x2Eu)
              {
                v20 = v41;
                *(v41 + 43) = -1;
                WORD2(v42) = 47;
                if ((v19 - 51) >= 0xFFFFFFFC)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2063, "ByteStream_NumReadBytesAvail(bs) >= 4");
                }

                *(v20 + 47) = -1;
                WORD2(v42) = 51;
                v21 = 64955;
                v22 = 51;
                return sub_100020078(v21, v20, v22, a3, sub_1001C62CC, v16, v17, v18);
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2062, "ByteStream_NumReadBytesAvail(bs) >= 4");
            }

            v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2060, v35);
        }

        v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2058, v34);
    }
  }

  else if (!v6)
  {
    if (v4 >= 0x15)
    {
      v4 = 21;
    }

    else
    {
      v4 = v4;
    }

    if (HIBYTE(v42))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2040, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v7 = WORD2(v42);
      if (WORD1(v42) > WORD2(v42))
      {
        if (BYTE6(v42) == 2)
        {
          ++WORD2(v42);
          *(v41 + v7) = 30;
          v8 = v41;
          v9 = WORD2(v42);
          if (HIBYTE(v42))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2041, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
            v10 = 0;
          }

          else
          {
            v10 = WORD1(v42) - WORD2(v42);
          }

          if (v10 < v4)
          {
            v37 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
          }

          else
          {
            if (BYTE6(v42) == 2)
            {
              memmove((v8 + v9), a1, v4);
              v24 = WORD2(v42) + v4;
              WORD2(v42) += v4;
              v25 = v41;
              if (HIBYTE(v42))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2042, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
                v26 = 0;
              }

              else
              {
                v26 = WORD1(v42) - v24;
              }

              v27 = (21 - v4);
              if (v26 < v27)
              {
                v38 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
              }

              else
              {
                if (BYTE6(v42) == 2)
                {
                  bzero((v25 + v24), (21 - v4));
                  v28 = WORD2(v42) + 21 - v4;
                  WORD2(v42) = v28;
                  v29 = v41;
                  if (HIBYTE(v42))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2043, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
                    v30 = 0;
                  }

                  else
                  {
                    v30 = WORD1(v42) - v28;
                  }

                  if (v30 < v4)
                  {
                    v39 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
                  }

                  else
                  {
                    if (BYTE6(v42) == 2)
                    {
                      memset((v29 + v28), 255, v4);
                      v31 = WORD2(v42) + v4;
                      WORD2(v42) = v31;
                      v32 = v41;
                      if (HIBYTE(v42))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2044, "OI_STATUS _ACI_LEMetaRemoveZone(const uint8_t *, uint16_t, BT_VSC_COMPLETE_CB)");
                        v33 = 0;
                      }

                      else
                      {
                        v33 = WORD1(v42) - v31;
                      }

                      if (v33 < v27)
                      {
                        v40 = "ByteStream_NumReadBytesAvail(bs) >= (21 - dataLen)";
                      }

                      else
                      {
                        if (BYTE6(v42) == 2)
                        {
                          bzero((v32 + v31), v27);
                          WORD2(v42) += v27;
                          v20 = v41;
                          v22 = BYTE4(v42);
                          v21 = 64993;
                          return sub_100020078(v21, v20, v22, a3, sub_1001C62CC, v16, v17, v18);
                        }

                        v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                      }

                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2044, v40);
                    }

                    v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2043, v39);
                }

                v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2042, v38);
            }

            v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2041, v37);
        }

        v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_68:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2040, v36);
      }
    }

    v36 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_68;
  }

  return v6;
}

uint64_t sub_1001D319C(void (*a1)())
{
  v15 = 0;
  v16 = 0;
  v2 = sub_10001FFD8(&v15);
  if (sub_100084230() < 0x7D0 || sub_100084230() > 0xF9F || sub_100084230() < 0xBB8)
  {
    if (v2)
    {
      return v2;
    }

    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2092, "OI_STATUS _ACI_LEMetaClearZone(BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v16) - WORD2(v16) > 3)
    {
      if (BYTE6(v16) == 2)
      {
        *(v15 + WORD2(v16)) = -1;
        *(v15 + WORD2(v16) + 1) = -1;
        *(v15 + WORD2(v16) + 2) = -1;
        *(v15 + WORD2(v16) + 3) = -1;
        v10 = WORD2(v16) + 4;
        WORD2(v16) += 4;
        if (HIBYTE(v16))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2093, "OI_STATUS _ACI_LEMetaClearZone(BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v16) - v10 > 3)
        {
          if (BYTE6(v16) == 2)
          {
            *(v15 + v10) = -1;
            *(v15 + WORD2(v16) + 1) = -1;
            *(v15 + WORD2(v16) + 2) = -1;
            *(v15 + WORD2(v16) + 3) = -1;
            WORD2(v16) += 4;
            v7 = v15;
            v8 = BYTE4(v16);
            v9 = 64985;
            return sub_100020078(v9, v7, v8, a1, sub_1001C62CC, v3, v4, v5);
          }

          v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_26:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2093, v13);
        }

        v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
        goto LABEL_26;
      }

      v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2092, v12);
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_22;
  }

  if (!v2)
  {
    if (HIBYTE(v16))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2080, "OI_STATUS _ACI_LEMetaClearZone(BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v6 = WORD2(v16);
      if (WORD1(v16) > WORD2(v16))
      {
        if (BYTE6(v16) == 2)
        {
          ++WORD2(v16);
          *(v15 + v6) = 32;
          v7 = v15;
          v8 = BYTE4(v16);
          v9 = 64993;
          return sub_100020078(v9, v7, v8, a1, sub_1001C62CC, v3, v4, v5);
        }

        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_30:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 2080, v14);
      }
    }

    v14 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_30;
  }

  return v2;
}

uint64_t sub_1001D342C(const void *a1, int a2, const void *a3, int a4, char a5, char a6, int a7, uint64_t a8, uint64_t a9, void (*a10)())
{
  LODWORD(v13) = a4;
  LODWORD(v15) = a2;
  v39 = 0;
  v40 = 0;
  result = sub_10001FFD8(&v39);
  if (v15 >= 0x16)
  {
    v15 = 22;
  }

  else
  {
    v15 = v15;
  }

  if (v13 >= 0x16)
  {
    v13 = 22;
  }

  else
  {
    v13 = v13;
  }

  if (result)
  {
    return result;
  }

  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3156, "OI_STATUS _ACI_LEMetaMatchingRules(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, _Bool, const BTAddress, BT_VSC_COMPLETE_CB)");
    goto LABEL_43;
  }

  v18 = WORD2(v40);
  if (WORD1(v40) <= WORD2(v40))
  {
LABEL_43:
    v34 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_45;
  }

  if (BYTE6(v40) != 2)
  {
    v34 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_45:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3156, v34);
  }

  if (v13 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v13;
  }

  ++WORD2(v40);
  *(v39 + v18) = v19;
  v20 = v39;
  v21 = WORD2(v40);
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3157, "OI_STATUS _ACI_LEMetaMatchingRules(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, _Bool, const BTAddress, BT_VSC_COMPLETE_CB)");
    v22 = 0;
  }

  else
  {
    v22 = WORD1(v40) - WORD2(v40);
  }

  if (v22 < v15)
  {
    v35 = "ByteStream_NumReadBytesAvail(bs) >= (dataLen)";
    goto LABEL_48;
  }

  if (BYTE6(v40) != 2)
  {
    v35 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3157, v35);
  }

  memmove((v20 + v21), a1, v15);
  WORD2(v40) += v15;
  if (WORD1(v40) <= 0x16u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3158, "(size_t)(23) <= (size_t)((bs).__size)");
  }

  WORD2(v40) = 23;
  v23 = v39;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3159, "OI_STATUS _ACI_LEMetaMatchingRules(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, _Bool, const BTAddress, BT_VSC_COMPLETE_CB)");
    v24 = 0;
  }

  else
  {
    v24 = WORD1(v40) - 23;
  }

  if (v24 < v13)
  {
    v36 = "ByteStream_NumReadBytesAvail(bs) >= (maskLen)";
    goto LABEL_52;
  }

  if (BYTE6(v40) != 2)
  {
    v36 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3159, v36);
  }

  memmove((v23 + 23), a3, v13);
  WORD2(v40) += v13;
  v28 = WORD1(v40);
  if (WORD1(v40) <= 0x2Cu)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3160, "(size_t)(45) <= (size_t)((bs).__size)");
  }

  WORD2(v40) = 45;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3161, "OI_STATUS _ACI_LEMetaMatchingRules(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, _Bool, const BTAddress, BT_VSC_COMPLETE_CB)");
    goto LABEL_55;
  }

  if (WORD1(v40) == 45)
  {
LABEL_55:
    v37 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_57;
  }

  if (BYTE6(v40) != 2)
  {
    v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3161, v37);
  }

  v29 = v39;
  WORD2(v40) = 46;
  *(v39 + 45) = a5;
  if (v28 <= 0x2E)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3162, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v30 = 47;
  WORD2(v40) = 47;
  *(v29 + 46) = a6;
  if (a7)
  {
    if (v28 - 49 >= 0xFFFFFFFE)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3164, "ByteStream_NumReadBytesAvail(bs) >= 2");
    }

    *(v29 + 47) = 0;
    v30 = 49;
    WORD2(v40) = 49;
  }

  if ((v28 - v30) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3165, "ByteStream_NumReadBytesAvail(bs) >= 4");
  }

  *(v29 + v30) = -1;
  *(v39 + WORD2(v40) + 1) = -1;
  *(v39 + WORD2(v40) + 2) = -1;
  *(v39 + WORD2(v40) + 3) = -1;
  v31 = WORD2(v40) + 4;
  WORD2(v40) += 4;
  if (HIBYTE(v40))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3166, "OI_STATUS _ACI_LEMetaMatchingRules(const uint8_t *, uint16_t, const uint8_t *, uint16_t, uint8_t, uint8_t, _Bool, _Bool, const BTAddress, BT_VSC_COMPLETE_CB)");
    goto LABEL_61;
  }

  if (WORD1(v40) - v31 <= 3)
  {
LABEL_61:
    v38 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_63;
  }

  if (BYTE6(v40) != 2)
  {
    v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_63:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/aci/aci_vsc.c", 3166, v38);
  }

  *(v39 + v31) = -1;
  *(v39 + WORD2(v40) + 1) = -1;
  *(v39 + WORD2(v40) + 2) = -1;
  *(v39 + WORD2(v40) + 3) = -1;
  v32 = BYTE4(v40) + 4;
  WORD2(v40) += 4;
  if (a7)
  {
    v33 = 64983;
  }

  else
  {
    v33 = 64982;
  }

  return sub_100020078(v33, v39, v32, a10, sub_1001C62CC, v25, v26, v27);
}