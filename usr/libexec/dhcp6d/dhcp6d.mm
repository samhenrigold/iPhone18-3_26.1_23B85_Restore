void start(int a1, uint64_t a2)
{
  if (a1 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a2 + 8);
  }

  v3 = sub_1000008BC(v2);
  if (!v3)
  {
    exit(1);
  }

  v4 = v3;
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, &_dispatch_main_q);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000008B4;
  handler[3] = &unk_10000C420;
  handler[4] = v4;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);
  signal(1, 1);
  dispatch_main();
}

void *sub_1000008BC(const char *a1)
{
  v25 = 0;
  v2 = sub_100000C68();
  if ((v2 & 0x80000000) != 0)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = &handler[-1] - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "socket() failed, %s", v23);
      v12 = __error();
      v13 = strerror(*v12);
      *v11 = 136315138;
      *(v11 + 4) = v13;
      __SC_log_send();
    }

    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_100000FDC();
  v25 = v4;
  if (!v4)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      v15 = &handler[-1] - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      *_os_log_pack_fill(v15, v14, *v16, &_mh_execute_header, "Can't load DUID") = 0;
      __SC_log_send();
    }

    close(v3);
LABEL_10:
    sub_1000037A0(&v25);
    return 0;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0x50uLL, 0x10F004095A59CC2uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = "/Library/Preferences/SystemConfiguration/com.apple.dhcp6d.plist";
  }

  v17 = strdup(v7);
  *(v6 + 2) = v5;
  *(v6 + 3) = v17;
  *v6 = v3;
  v18 = dispatch_source_create(&_dispatch_source_type_read, v3, 0, &_dispatch_main_q);
  *(v6 + 1) = v18;
  dispatch_set_context(v18, v3);
  dispatch_set_finalizer_f(*(v6 + 1), j__close);
  v19 = *(v6 + 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000011B4;
  handler[3] = &unk_10000C440;
  handler[4] = v6;
  dispatch_source_set_event_handler(v19, handler);
  sub_100001628(v6);
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = v6;
  v20 = SCDynamicStoreCreate(0, @"DHCPv6Server", sub_100002E50, &context);
  values = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
  v21 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  CFRelease(values);
  SCDynamicStoreSetNotificationKeys(v20, 0, v21);
  CFRelease(v21);
  *(v6 + 6) = v20;
  SCDynamicStoreSetDispatchQueue(v20, &_dispatch_main_q);
  dispatch_resume(*(v6 + 1));
  return v6;
}

uint64_t sub_100000C68()
{
  HIDWORD(v22) = 1;
  v0 = socket(30, 2, 0);
  v1 = v0;
  if ((v0 & 0x80000000) == 0)
  {
    *&v23.sa_len = 587341312;
    *&v23.sa_data[6] = 0;
    v25 = 0;
    v24 = 0;
    if (bind(v0, &v23, 0x1Cu))
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_6:
        close(v1);
        return 0xFFFFFFFFLL;
      }

      v2 = _os_log_pack_size();
      v3 = &v22 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      v4 = *__error();
      v5 = _os_log_pack_fill(v3, v2, v4, &_mh_execute_header, "bind failed, %s");
    }

    else if (ioctl(v1, 0x8004667EuLL, &v22 + 4) < 0)
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_6;
      }

      v16 = _os_log_pack_size();
      v17 = &v22 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v5 = _os_log_pack_fill(v17, v16, v18, &_mh_execute_header, "ioctl FIONBIO failed, %s");
    }

    else
    {
      if ((setsockopt(v1, 41, 61, &v22 + 4, 4u) & 0x80000000) == 0)
      {
        return v1;
      }

      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_6;
      }

      v19 = _os_log_pack_size();
      v20 = &v22 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *__error();
      v5 = _os_log_pack_fill(v20, v19, v21, &_mh_execute_header, "setsockopt(IPV6_PKTINFO) failed, %s");
    }

    v6 = v5;
    v7 = __error();
    v8 = strerror(*v7);
    *v6 = 136315138;
    *(v6 + 4) = v8;
    __SC_log_send();
    goto LABEL_6;
  }

  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v9 = _os_log_pack_size();
    v10 = &v22 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "socket failed, %s", v22);
    v13 = __error();
    v14 = strerror(*v13);
    *v12 = 136315138;
    *(v12 + 4) = v14;
    __SC_log_send();
  }

  return v1;
}

const void *sub_100000FDC()
{
  v0 = sub_1000037D8("/var/db/com.apple.dhcp6d.plist");
  v12 = v0;
  TypeID = CFDictionaryGetTypeID();
  if (v0 && CFGetTypeID(v0) == TypeID && (Value = CFDictionaryGetValue(v0, @"DUID"), v3 = CFDataGetTypeID(), Value) && CFGetTypeID(Value) == v3)
  {
    CFRetain(Value);
  }

  else
  {
    Value = sub_1000019C8();
    if (!Value)
    {
      goto LABEL_10;
    }
  }

  Mutable = CFStringCreateMutable(0, 0);
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  sub_100006A24(Mutable, BytePtr, Length);
  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    v8 = &v12 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "%@", v12);
    *v10 = 138412290;
    *(v10 + 4) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
LABEL_10:
  sub_1000037A0(&v12);
  return Value;
}

void sub_1000011BC(int *a1)
{
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  *&v27.msg_namelen = 28;
  *&v27.msg_iovlen = 1;
  v28[0] = v31;
  v28[1] = 1500;
  v27.msg_name = v29;
  v27.msg_iov = v28;
  v27.msg_control = &v32;
  *&v27.msg_controllen = 32;
  v2 = recvmsg(*a1, &v27, 0);
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (*__error() != 35)
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v9 = _os_log_pack_size();
        v10 = &v26 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = __error();
        v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "DHCPv6SocketRead: recvfrom failed %s (%d)", v26, DWORD2(v26));
        v13 = __error();
        v14 = strerror(*v13);
        v15 = *__error();
        *v12 = 136315394;
        *(v12 + 4) = v14;
        *(v12 + 12) = 1024;
        *(v12 + 14) = v15;
LABEL_8:
        __SC_log_send();
      }
    }
  }

  else
  {
    v4 = v2;
    if (v2 <= 3)
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      v5 = _os_log_pack_size();
      v6 = &v26 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "DHCPv6SocketRead: packet too short %ld < %d", v26, DWORD2(v26));
      *v8 = 134218240;
      *(v8 + 4) = v4;
      *(v8 + 12) = 1024;
      *(v8 + 14) = 4;
      goto LABEL_8;
    }

    if (v27.msg_controllen < 0xC)
    {
      goto LABEL_22;
    }

    msg_control = v27.msg_control;
    if (!v27.msg_control)
    {
      goto LABEL_22;
    }

    v17 = 0;
    *&v3 = 67109120;
    v26 = v3;
    do
    {
      if (msg_control[1] == 41)
      {
        if (msg_control[2] == 46)
        {
          if (*msg_control >= 0x20)
          {
            v17 = msg_control + 3;
          }
        }

        else
        {
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v18 = _os_log_pack_size();
            v19 = &v26 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
            v20 = __error();
            v21 = _os_log_pack_fill(v19, v18, *v20, &_mh_execute_header, "Why did we get control message type %d?", v26);
            v22 = msg_control[2];
            *v21 = v26;
            v21[1] = v22;
            __SC_log_send();
          }
        }
      }

      msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
    }

    while ((msg_control + 3) <= v27.msg_control + v27.msg_controllen);
    if (v17)
    {
      sub_100001E48(a1, v29, v31, v4, v17[4]);
    }

    else
    {
LABEL_22:
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = _os_log_pack_size();
        v24 = &v26 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        *_os_log_pack_fill(v24, v23, *v25, &_mh_execute_header, "DHCPv6SocketRead: missing IPV6_PKTINFO") = 0;
        __SC_log_send();
      }
    }
  }
}

void sub_100001628(uint64_t a1)
{
  v2 = sub_1000037D8(*(a1 + 24));
  v12 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (v2 && CFGetTypeID(v2) == TypeID)
  {
    v4 = CFDictionaryGetTypeID();
  }

  else
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v12 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "Failed to load '%s'", v12);
      v9 = *(a1 + 24);
      *v8 = 136315138;
      *(v8 + 4) = v9;
      __SC_log_send();
    }

    v4 = CFDictionaryGetTypeID();
    if (!v2)
    {
      v11 = 0;
      goto LABEL_11;
    }
  }

  if (CFGetTypeID(v2) == v4)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

LABEL_11:
  sub_1000017AC(a1, v11, v10);
  sub_1000037A0(&v12);
}

void sub_1000017AC(uint64_t a1, CFDictionaryRef theDict, __n128 a3)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"enabled_interfaces");
    TypeID = CFArrayGetTypeID();
    if (Value && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }

    v7 = CFDictionaryGetValue(theDict, @"options");
    v8 = CFDictionaryGetTypeID();
    if (v7 && CFGetTypeID(v7) != v8)
    {
      v7 = 0;
    }

    v9 = CFDictionaryGetValue(theDict, @"verbose");
    v10 = CFBooleanGetTypeID();
    if (v9)
    {
      if (CFGetTypeID(v9) == v10)
      {
        v11 = CFBooleanGetValue(v9);
        if (v11 != byte_100010000)
        {
          byte_100010000 = v11 != 0;
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v12 = _os_log_pack_size();
            v13 = &v17 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
            v14 = __error();
            v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "Verbose mode %s", v17);
            if (byte_100010000)
            {
              v16 = "enabled";
            }

            else
            {
              v16 = "disabled";
            }

            *v15 = 136315138;
            *(v15 + 4) = v16;
            __SC_log_send();
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
    Value = 0;
  }

  sub_100002E5C(a1, Value, a3);
  sub_100003678(a1, v7);
}

__CFData *sub_1000019C8()
{
  v0 = sub_10000541C(0);
  v24 = v0;
  if (!v0)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_13;
    }

    v13 = _os_log_pack_size();
    v14 = &v24 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v16 = _os_log_pack_fill(v14, v13, v15, &_mh_execute_header, "can't retrieve interface list", v24);
LABEL_12:
    *v16 = 0;
    __SC_log_send();
    v7 = 0;
    goto LABEL_14;
  }

  v1 = sub_100005320(v0);
  if (!v1)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_13;
    }

    v17 = _os_log_pack_size();
    v18 = &v24 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *__error();
    v16 = _os_log_pack_fill(v18, v17, v19, &_mh_execute_header, "can't find suitable interface for DUID", v24);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_100005C14(v1);
  v4 = sub_100005410(v2);
  v5 = sub_100005BF8(v2);
  v6 = sub_100006D3C(v3, v4, v5);
  if (!v6)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v20 = _os_log_pack_size();
      v21 = &v24 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = *__error();
      v16 = _os_log_pack_fill(v21, v20, v22, &_mh_execute_header, "failed to establish DUID", v24);
      goto LABEL_12;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  sub_100001CEC(v6);
  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    v9 = &v24 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "Derived DUID from %s", v24);
    nullsub_1();
    *v11 = 136315138;
    *(v11 + 4) = v12;
    __SC_log_send();
  }

LABEL_14:
  sub_100005B74(&v24);
  return v7;
}

void sub_100001CEC(void *a1)
{
  values = a1;
  v6 = CFDictionaryCreate(0, &off_10000C460, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if ((sub_1000038D8(v6, "/var/db/com.apple.dhcp6d.plist", 420) & 0x80000000) != 0)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      v2 = &v5 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &_mh_execute_header, "Failed to write DUID to %s", v5);
      *v4 = 136315138;
      *(v4 + 4) = "/var/db/com.apple.dhcp6d.plist";
      __SC_log_send();
    }
  }

  sub_1000037A0(&v6);
}

void sub_100001E48(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  memset(v102, 0, sizeof(v102));
  v99 = 0;
  v98[0] = 0;
  v98[1] = 0;
  v7 = *(a1 + 72);
  if (v7 < 1)
  {
    goto LABEL_14;
  }

  v11 = 0;
  while (*(*(a1 + 56) + 4 * v11) != a5)
  {
    if (v7 == ++v11)
    {
      goto LABEL_14;
    }
  }

  v12 = *(*(a1 + 64) + 8 * v11);
  if (v12)
  {
    if (*a3 == 11)
    {
      v97 = v12;
      v13 = sub_100007480(a3, a4, v102);
      v100 = v13;
      if (byte_100010000 == 1)
      {
        Mutable = CFStringCreateMutable(0, 0);
        DHCPv6PacketPrintToString(Mutable, a3, a4);
        if (v13)
        {
          sub_1000074E8(Mutable, v13);
        }

        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v96 = v13;
          v15 = _os_log_pack_size();
          v95 = &v92;
          v16 = &v92 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
          v17 = __error();
          v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "[%s] Receive from %s %@");
          v19 = inet_ntop(30, (a2 + 8), v101, 0x2Eu);
          *v18 = 136315650;
          *(v18 + 4) = v97;
          *(v18 + 12) = 2080;
          *(v18 + 14) = v19;
          *(v18 + 22) = 2112;
          *(v18 + 24) = Mutable;
          v13 = v96;
          __SC_log_send();
        }

        CFRelease(Mutable);
      }

      else
      {
        v30 = _SC_LOG_DEFAULT();
        v31 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v94 = v30;
          v32 = _os_log_pack_size();
          v95 = &v92;
          v33 = __chkstk_darwin(v32);
          v96 = v13;
          v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
          v35 = __error();
          v36 = _os_log_pack_fill(v34, v32, *v35, &_mh_execute_header, "[%s] Receive %s (%d) [%d bytes] from %s", v92, v93, v94, v95, v96);
          v37 = DHCPv6MessageTypeName(*a3);
          HIDWORD(v93) = v31;
          v38 = v37;
          v39 = *a3;
          v40 = inet_ntop(30, (a2 + 8), v101, 0x2Eu);
          *v36 = 136316162;
          *(v36 + 4) = v97;
          *(v36 + 12) = 2080;
          *(v36 + 14) = v38;
          *(v36 + 22) = 1024;
          *(v36 + 24) = v39;
          *(v36 + 28) = 1024;
          *(v36 + 30) = a4;
          *(v36 + 34) = 2080;
          *(v36 + 36) = v40;
          v13 = v96;
          __SC_log_send();
        }
      }

      if (v13)
      {
        v41 = sub_100007640(v13, 2, &v99, 0);
        if (v41)
        {
          v42 = v41;
          if (!sub_100006CF4(v41, v99))
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v74 = _os_log_pack_size();
              v75 = &v92 - ((__chkstk_darwin(v74) + 15) & 0xFFFFFFFFFFFFFFF0);
              v76 = *__error();
              v48 = _os_log_pack_fill(v75, v74, v76, &_mh_execute_header, "Request contains invalid SERVERID");
              goto LABEL_49;
            }

LABEL_56:
            sub_100007498(&v100);
            return;
          }

          Length = CFDataGetLength(*(a1 + 16));
          if (Length != v99 || (BytePtr = CFDataGetBytePtr(*(a1 + 16)), bcmp(v42, BytePtr, v99)))
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v45 = _os_log_pack_size();
              v46 = &v92 - ((__chkstk_darwin(v45) + 15) & 0xFFFFFFFFFFFFFFF0);
              v47 = *__error();
              v48 = _os_log_pack_fill(v46, v45, v47, &_mh_execute_header, "Request SERVERID doesn't match");
LABEL_49:
              *v48 = 0;
LABEL_55:
              __SC_log_send();
              goto LABEL_56;
            }

            goto LABEL_56;
          }
        }

        DHCPv6PacketSetMessageType(&v103, 7);
        v104 = *(a3 + 1);
        v105 = a3[3];
        sub_100007288(v98, &v106, 1496);
        v53 = sub_100007640(v13, 1, &v99, 0);
        if (!v53)
        {
          goto LABEL_33;
        }

        v54 = v53;
        if (!sub_100006CF4(v53, v99))
        {
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v77 = _os_log_pack_size();
            v78 = &v92 - ((__chkstk_darwin(v77) + 15) & 0xFFFFFFFFFFFFFFF0);
            v79 = *__error();
            v48 = _os_log_pack_fill(v78, v77, v79, &_mh_execute_header, "Request contains invalid CLIENTID");
            goto LABEL_49;
          }

          goto LABEL_56;
        }

        if (!sub_10000729C(v98, 1u, v99, v54, v102))
        {
          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_56;
          }

          v84 = _os_log_pack_size();
          v85 = &v92 - ((__chkstk_darwin(v84) + 15) & 0xFFFFFFFFFFFFFFF0);
          v86 = *__error();
          v83 = _os_log_pack_fill(v85, v84, v86, &_mh_execute_header, " failed to add CLIENTID, %s");
        }

        else
        {
LABEL_33:
          v55 = CFDataGetLength(*(a1 + 16));
          v56 = CFDataGetBytePtr(*(a1 + 16));
          if (sub_10000729C(v98, 2u, v55, v56, v102))
          {
            v57 = sub_100007640(v13, 6, &v99, 0);
            if (v57 && *(a1 + 32) && v99 >= 2)
            {
              v58 = v57;
              v59 = 0;
              while (1)
              {
                v60 = bswap32(v58[v59]);
                v61 = HIWORD(v60);
                v62 = sub_1000076EC(*(a1 + 32), SHIWORD(v60));
                if (v62)
                {
                  v63 = v62;
                  v64 = CFDataGetLength(v62);
                  v65 = CFDataGetBytePtr(v63);
                  if (!sub_10000729C(v98, v61, v64, v65, v102))
                  {
                    break;
                  }
                }

                if (++v59 >= v99 >> 1)
                {
                  goto LABEL_41;
                }
              }

              _SC_LOG_DEFAULT();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_56;
              }

              v87 = _os_log_pack_size();
              v88 = &v92 - ((__chkstk_darwin(v87) + 15) & 0xFFFFFFFFFFFFFFF0);
              v89 = __error();
              v90 = _os_log_pack_fill(v88, v87, *v89, &_mh_execute_header, "failed to add %s, %s", v92, v93);
              v91 = sub_100007034(v61);
              *v90 = 136315394;
              *(v90 + 4) = v91;
              *(v90 + 12) = 2080;
              *(v90 + 14) = v102;
            }

            else
            {
LABEL_41:
              v66 = sub_100007294(v98);
              v67 = sub_100002A14(a1, v5, (a2 + 8), &v103, (v66 + 4));
              v68 = v67;
              if (v67 <= 0x32 && ((1 << v67) & 0x4000000000041) != 0)
              {
                goto LABEL_56;
              }

              _SC_LOG_DEFAULT();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_56;
              }

              v69 = _os_log_pack_size();
              v70 = &v92 - ((__chkstk_darwin(v69) + 15) & 0xFFFFFFFFFFFFFFF0);
              v71 = __error();
              v72 = _os_log_pack_fill(v70, v69, *v71, &_mh_execute_header, "%s transmit failed, %s", v92, v93);
              v73 = strerror(v68);
              *v72 = 136315394;
              *(v72 + 4) = v97;
              *(v72 + 12) = 2080;
              *(v72 + 14) = v73;
            }

            goto LABEL_55;
          }

          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_56;
          }

          v80 = _os_log_pack_size();
          v81 = &v92 - ((__chkstk_darwin(v80) + 15) & 0xFFFFFFFFFFFFFFF0);
          v82 = *__error();
          v83 = _os_log_pack_fill(v81, v80, v82, &_mh_execute_header, "failed to add SERVERID, %s");
        }

        *v83 = 136315138;
        *(v83 + 4) = v102;
        goto LABEL_55;
      }

      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v49 = _os_log_pack_size();
        v50 = &v92 - ((__chkstk_darwin(v49) + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = __error();
        v52 = _os_log_pack_fill(v50, v49, *v51, &_mh_execute_header, "DHCPv6 options parse failed, %s", v92);
        *v52 = 136315138;
        *(v52 + 4) = v102;
        __SC_log_send();
      }
    }

    else
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v24 = _os_log_pack_size();
        v25 = &v92 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v25, v24, *v26, &_mh_execute_header, "Ignoring %s (%d) packet on interface %d (%d bytes)", v92, v93, v94, v95);
        v28 = DHCPv6MessageTypeName(*a3);
        v29 = *a3;
        *v27 = 136315906;
        *(v27 + 4) = v28;
        *(v27 + 12) = 1024;
        *(v27 + 14) = v29;
        *(v27 + 18) = 1024;
        *(v27 + 20) = v5;
        *(v27 + 24) = 1024;
        *(v27 + 26) = a4;
        __SC_log_send();
      }
    }
  }

  else
  {
LABEL_14:
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v20 = _os_log_pack_size();
      v21 = &v92 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      v23 = _os_log_pack_fill(v21, v20, *v22, &_mh_execute_header, "Interface %d not enabled, ignoring (%d bytes)", v92, v93);
      *v23 = 67109376;
      *(v23 + 4) = v5;
      *(v23 + 8) = 1024;
      *(v23 + 10) = a4;
      __SC_log_send();
    }
  }
}

uint64_t sub_100002A14(const char **a1, int a2, _OWORD *a3, unsigned __int8 *a4, uint64_t a5)
{
  v38 = a3;
  HIDWORD(v37) = a2;
  memset(v42, 0, sizeof(v42));
  if (byte_100010000 == 1)
  {
    Mutable = CFStringCreateMutable(0, 0);
    DHCPv6PacketPrintToString(Mutable, a4, a5);
    v9 = sub_100007480(a4, a5, v42);
    *v39 = v9;
    if (v9)
    {
      sub_1000074E8(Mutable, v9);
      sub_100007498(v39);
    }

    else
    {
      _SC_LOG_DEFAULT();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v20 = _os_log_pack_size();
        v36 = a1;
        v21 = &v33 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __error();
        v23 = _os_log_pack_fill(v21, v20, *v22, &_mh_execute_header, "parse options failed, %s", v33);
        *v23 = 136315138;
        *(v23 + 4) = v42;
        __SC_log_send();
        a1 = v36;
      }
    }

    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = _os_log_pack_size();
      v36 = &v33;
      v25 = &v33 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v24, *v26, &_mh_execute_header, "[%s] Transmit [%d bytes] to %s %@");
      v28 = a1;
      v29 = if_indextoname(HIDWORD(v37), v41);
      v30 = inet_ntop(30, v38, v40, 0x2Eu);
      *v27 = 136315906;
      *(v27 + 4) = v29;
      a1 = v28;
      *(v27 + 12) = 1024;
      *(v27 + 14) = a5;
      *(v27 + 18) = 2080;
      *(v27 + 20) = v30;
      *(v27 + 28) = 2112;
      *(v27 + 30) = Mutable;
      __SC_log_send();
    }

    CFRelease(Mutable);
  }

  else
  {
    _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v36 = a1;
      v11 = _os_log_pack_size();
      v35 = &v33;
      v12 = &v33 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "[%s] Transmit %s (%d) [%d bytes] to %s", v33, v34, v35, v36, v37);
      v15 = if_indextoname(HIDWORD(v37), v41);
      HIDWORD(v34) = v10;
      v16 = v15;
      v17 = DHCPv6MessageTypeName(*a4);
      v18 = *a4;
      v19 = inet_ntop(30, v38, v40, 0x2Eu);
      *v14 = 136316162;
      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v17;
      *(v14 + 22) = 1024;
      *(v14 + 24) = v18;
      *(v14 + 28) = 1024;
      *(v14 + 30) = a5;
      *(v14 + 34) = 2080;
      *(v14 + 36) = v19;
      a1 = v36;
      __SC_log_send();
    }
  }

  v31 = *a1;
  *&v39[12] = *(&xmmword_100009070 + 12);
  *v39 = xmmword_100009070;
  *&v39[8] = *v38;
  *&v39[2] = 8706;
  return sub_1000064CC(v31, SHIDWORD(v37), v39, a4, a5, -1);
}

void sub_100002E5C(uint64_t a1, const void *a2, __n128 a3)
{
  v28 = 0;
  v5 = *(a1 + 40);
  v27 = v5;
  if (byte_100010000 != 1 || sub_100003F28(v5, a2))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_28:
    LODWORD(v7) = 0;
    v6 = 0;
    v9 = 0;
    v15 = 1;
    goto LABEL_29;
  }

  _SC_LOG_DEFAULT();
  _SC_syslog_os_log_mapping();
  v16 = __SC_log_enabled();
  if (!a2)
  {
    if (v16)
    {
      v21 = _os_log_pack_size();
      v22 = &v26 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      *_os_log_pack_fill(v22, v21, *v23, &_mh_execute_header, "Enabled Interfaces: none") = 0;
      __SC_log_send();
      v15 = 1;
      LODWORD(v7) = 0;
      v6 = 0;
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v16)
  {
    v17 = _os_log_pack_size();
    v18 = &v26 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "Enabled Interfaces: %@");
    *v20 = 138412290;
    *(v20 + 4) = a2;
    __SC_log_send();
  }

LABEL_4:
  v6 = sub_100003C64(a2, &v28);
  v7 = v28;
  if (!v6)
  {
    v15 = 0;
LABEL_21:
    v9 = 0;
    goto LABEL_29;
  }

  v8 = if_nameindex();
  v9 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v8 && (if_name = v8->if_name) != 0)
      {
        v12 = v6[i];
        v13 = v8;
        while (strcmp(if_name, v12))
        {
          if_name = v13[1].if_name;
          ++v13;
          if (!if_name)
          {
            goto LABEL_12;
          }
        }

        if_index = v13->if_index;
      }

      else
      {
LABEL_12:
        if_index = 0;
      }

      v9[i] = if_index;
    }
  }

  if (v8)
  {
    if_freenameindex(v8);
  }

  LODWORD(v7) = v28;
  if (v9)
  {
    sub_10000317C(a1, v9, v6, v28, a3);
    v15 = 0;
    LODWORD(v7) = v28;
  }

  else
  {
    v15 = 0;
  }

LABEL_29:
  sub_100003310(a1, v9, v7, a3);
  v24 = *(a1 + 56);
  if (v24)
  {
    free(v24);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    free(v25);
  }

  *(a1 + 72) = v28;
  *(a1 + 56) = v9;
  *(a1 + 64) = v6;
  if ((v15 & 1) == 0)
  {
    CFRetain(a2);
  }

  *(a1 + 40) = a2;
  sub_1000037A0(&v27);
}

uint64_t sub_10000317C(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, __n128 a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a4;
    a5.n128_u64[0] = 136315138;
    v19 = a5;
    do
    {
      v10 = *(a2 + 4 * v8);
      if (v10)
      {
        v11 = *(a3 + 8 * v8);
        v12 = *(v7 + 72);
        if (v12 < 1)
        {
LABEL_8:
          result = sub_1000034C0(*v7, 80, v10);
          if (!result)
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (result)
            {
              v15 = _os_log_pack_size();
              v20 = &v19;
              v16 = &v19 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
              v17 = __error();
              v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "Added DHCPv6 multicast for interface %s", v19.n128_u64[0]);
              *v18 = v19.n128_u32[0];
              *(v18 + 4) = v11;
              result = __SC_log_send();
            }
          }
        }

        else
        {
          v13 = *(v7 + 56);
          while (1)
          {
            v14 = *v13++;
            if (v14 == v10)
            {
              break;
            }

            if (!--v12)
            {
              goto LABEL_8;
            }
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t sub_100003310(uint64_t result, int *a2, unsigned int a3, __n128 a4)
{
  if (*(result + 72) >= 1)
  {
    v4 = a3;
    v6 = result;
    v7 = 0;
    v8 = a3;
    a4.n128_u64[0] = 136315138;
    v18 = a4;
    v19 = a3;
    do
    {
      v9 = *(*(v6 + 56) + 4 * v7);
      if (v9)
      {
        v10 = *(*(v6 + 64) + 8 * v7);
        if (a2 && v4 >= 1)
        {
          v11 = a2;
          v12 = v8;
          while (1)
          {
            v13 = *v11++;
            if (v13 == v9)
            {
              break;
            }

            if (!--v12)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          result = sub_1000034C0(*v6, 81, v9);
          if (!result)
          {
            _SC_LOG_DEFAULT();
            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (result)
            {
              v14 = _os_log_pack_size();
              v15 = &v18 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
              v16 = __error();
              v17 = _os_log_pack_fill(v15, v14, *v16, &_mh_execute_header, "Removed DHCPv6 multicast for interface %s", v18.n128_u64[0]);
              *v17 = v18.n128_u32[0];
              *(v17 + 4) = v10;
              result = __SC_log_send();
              v4 = v19;
            }
          }
        }
      }

      ++v7;
    }

    while (v7 < *(v6 + 72));
  }

  return result;
}

uint64_t sub_1000034C0(int a1, int a2, int a3)
{
  HIDWORD(v14) = a3;
  v15[0] = xmmword_10000908C;
  memset(&v15[1] + 12, 0, 100);
  *(v15 + 12) = *(&xmmword_10000908C + 12);
  v5 = setsockopt(a1, 41, a2, &v14 + 4, 0x84u);
  if (v5)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      v7 = &v14 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "setsockopt(%s) if_index %d failed, %s", v14, LODWORD(v15[0]), *(&v15[0] + 1));
      if (a2 == 80)
      {
        v10 = "MCAST_JOIN_GROUP";
      }

      else
      {
        v10 = "MCAST_LEAVE_GROUP";
      }

      v11 = __error();
      v12 = strerror(*v11);
      *v9 = 136315650;
      *(v9 + 4) = v10;
      *(v9 + 12) = 1024;
      *(v9 + 14) = a3;
      *(v9 + 18) = 2080;
      *(v9 + 20) = v12;
      __SC_log_send();
    }
  }

  return v5;
}

void sub_100003678(uint64_t a1, const __CFDictionary *a2)
{
  if (!a2)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = sub_100007754(a2);
  if (!v3)
  {
    _SC_LOG_DEFAULT();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &v7 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      *_os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "Failed to create DHCPv6OptionsDictionary") = 0;
      __SC_log_send();
    }

    goto LABEL_5;
  }

LABEL_6:
  sub_1000037A0((a1 + 32));
  *(a1 + 32) = v3;
}

void sub_1000037A0(const void **a1)
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

CFPropertyListRef sub_1000037D8(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  if (stat(a1, &v11) < 0)
  {
    return 0;
  }

  st_size = v11.st_size;
  if (!v11.st_size)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v11.st_size, 0xE6DA7C8BuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = open(a1, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    read(v5, v4, st_size);
    close(v6);
  }

  v7 = CFDataCreateWithBytesNoCopy(0, v4, st_size, kCFAllocatorNull);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

uint64_t sub_1000038D8(CFPropertyListRef propertyList, const std::__fs::filesystem::path *a2, uint64_t a3)
{
  if (!propertyList)
  {
    return 0;
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 0;
  }

  v6 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  __nbyte = CFDataGetLength(v6);
  snprintf(__str, 0x400uLL, "%s-", a2);
  v8 = 5;
  while (1)
  {
    if (unlink(__str))
    {
      v9 = __stderrp;
      v10 = __error();
      v11 = strerror(*v10);
      fprintf(v9, "unlink(%s) failed, %s\n", __str, v11);
    }

    v12 = open(__str, 1793, a3);
    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 62)
    {
      fprintf(__stderrp, "open(%s) failed with ELOOP\n", __str);
      if (--v8)
      {
        continue;
      }
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v15 = v12;
  if (!__nbyte)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v16 = __nbyte;
  while (1)
  {
    v17 = write(v15, BytePtr, v16);
    if (v17 == -1)
    {
      break;
    }

LABEL_16:
    BytePtr += v17;
    v16 -= v17;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  if (*__error() == 4)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v18 = -1;
LABEL_20:
  if (v18 == __nbyte)
  {
LABEL_21:
    rename(__str, a2, v13);
    v14 = 0;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  close(v15);
LABEL_24:
  CFRelease(v6);
  return v14;
}

uint64_t sub_100003AC4(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
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

uint64_t sub_100003B4C(const __CFArray *a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  Count = CFArrayGetCount(a1);
  v9 = Count;
  v10 = 8 * Count;
  if (a2)
  {
    if (*a3 < v10)
    {
      return 0;
    }

    v12 = (a2 + v10);
  }

  else
  {
    v12 = 0;
  }

  if (Count >= 1)
  {
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
      TypeID = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != TypeID)
      {
        return 0;
      }

      if (a2)
      {
        v16 = *a3 - v10;
        if (v16 < 0)
        {
          return 0;
        }

        v17 = sub_100003AC4(ValueAtIndex, v12, v16, 0);
        *(a2 + 8 * v13) = v12;
        v12 += v17;
      }

      else
      {
        v17 = sub_100003AC4(ValueAtIndex, v12, 0, 0);
      }

      v10 += v17;
    }

    while (v9 != ++v13);
  }

  *a3 = (v10 + 7) & 0xFFFFFFF8;
  *a4 = v9;
  return 1;
}

void *sub_100003C64(const __CFArray *a1, _DWORD *a2)
{
  size = 0;
  *a2 = 0;
  if (!sub_100003B4C(a1, 0, &size, &size + 1))
  {
    return 0;
  }

  v4 = malloc_type_malloc(size, 0x10040436913F5uLL);
  if (!sub_100003B4C(a1, v4, &size, &size + 1))
  {
    free(v4);
    return 0;
  }

  *a2 = HIDWORD(size);
  return v4;
}

uint64_t sub_100003D04(const __CFString *a1, void *a2)
{
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

void *sub_100003DBC(const __CFArray *a1, int *a2)
{
  Count = CFArrayGetCount(a1);
  v5 = Count;
  if (!Count)
  {
    return 0;
  }

  v6 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
  v7 = v6;
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = v6;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      if ((sub_100003D04(ValueAtIndex, v9) & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if ((v5 & 0x7FFFFFFF) == v8)
      {
        goto LABEL_6;
      }
    }

    free(v7);
    return 0;
  }

LABEL_6:
  *a2 = v5;
  return v7;
}

uint64_t sub_100003F28(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFGetTypeID(a2))
  {
    return 0;
  }

  return CFEqual(a1, a2);
}

void sub_100003FAC(CFMutableStringRef theString, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (a4 && v9)
      {
        if (a4 != 32 || (v9 & 7) != 0)
        {
          v11[0] = a4;
          v11[1] = 0;
        }

        else
        {
          strcpy(v11, "  ");
        }
      }

      else
      {
        v11[0] = 0;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v11, *(a2 + v9++));
    }

    while (v10 != v9);
  }
}

UInt8 *sub_100004070(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x6F79A892uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

UInt8 *sub_100004128(const __CFString *a1, CFStringEncoding a2)
{
  v4.length = CFStringGetLength(a1);
  v4.location = 0;

  return sub_100004070(a1, v4, a2);
}

void *sub_100004188(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, char a5, char a6)
{
  v6 = a4;
  v7 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

  v8 = a1;
  v9 = *a4;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (!a3)
  {
    *&v74 = 0;
    v73 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v9 = 128;
    v10 = &v65;
    v65 = 0uLL;
    v66 = 0uLL;
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_87;
  }

  v73 = 0uLL;
  *&v74 = 0;
  v71 = 0uLL;
  v72 = 0uLL;
  v69 = 0uLL;
  v70 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v10 = a3;
  LOBYTE(v73) = 1;
LABEL_7:
  *(&v73 + 1) = v10;
  DWORD1(v74) = v9;
  *(&v74 + 1) = 0;
  *&v75 = 0;
  BYTE8(v75) = a5;
  if (a2 >= 1)
  {
    v12 = 0;
    v57 = a2;
    while (1)
    {
      v13 = *(v8 + 8 * v12);
      v61 = v74;
      v14 = strlen(v13);
      v15 = malloc_type_malloc(v14 + 26, 0x10300409B68AA8EuLL);
      v16 = malloc_type_malloc(0x30uLL, 0x101004044458BAAuLL);
      if (v16)
      {
        *(v16 + 28) = 0u;
        *v16 = 0u;
        v16[1] = 0u;
        *(v16 + 11) = 8;
        *(v16 + 4) = v16;
      }

      *v15 = v16;
      *(v15 + 1) = v15 + 24;
      if ((v14 & 0x80000000) == 0)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = v14 & 0x7FFFFFFF;
        v23 = (v14 + 1);
        while (1)
        {
          if (v17 == v22 || (v24 = v13[v17], v24 == 46))
          {
            if (!v21)
            {
              goto LABEL_22;
            }

            if (v21 > 63)
            {
              v53 = (v8 + 8 * v12);
              fprintf(__stderrp, "label length %d > %d\n", v21, 63);
              sub_100005164(v15);
              free(v15);
              if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
              {
                fprintf(__stderrp, "trying to set used to %d\n", v61);
              }

              else
              {
                LODWORD(v74) = v61;
              }

              goto LABEL_82;
            }

            sub_100004FD8(*v15, v19);
            *(*(v15 + 1) + v19) = v21;
            v20 += v21 + 1;
            v25 = v17 + 1;
            v19 = v17 + 1;
            v21 = 0;
          }

          else
          {
            *(*(v15 + 1) + v17 + 1) = v24;
            ++v21;
            v25 = v17 + 1;
          }

          v18 = v17 >= v22;
          v17 = v25;
          if (v25 == v23)
          {
            goto LABEL_22;
          }
        }
      }

      v20 = 0;
      v18 = 1;
LABEL_22:
      v59 = v12;
      if ((a6 & 1) != 0 && ((a6 & 2) == 0 || v18))
      {
        *(v15 + 4) = v20;
      }

      else
      {
        *(v15 + 4) = v20 + 1;
        *(*(v15 + 1) + v20) = 0;
      }

      if (BYTE8(v75) == 1)
      {
        break;
      }

      if ((sub_100005074(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_68:
      sub_100005164(v15);
      free(v15);
      v8 = a1;
      v12 = v59 + 1;
      if (v59 + 1 == v57)
      {
        v11 = v74;
        v7 = a3;
        v6 = a4;
        goto LABEL_71;
      }
    }

    v63 = v75;
    if (v75 < 1)
    {
      v28 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v62 = *(&v74 + 1);
      v29 = *(&v73 + 1);
      do
      {
        v30 = *(v62 + 8 * v26);
        if (!v30)
        {
          break;
        }

        v31 = 0;
        v32 = *(v30 + 40);
        v33 = *v15;
        v34 = *(*v15 + 40);
        do
        {
          v35 = v31;
          if (v32 < 1)
          {
            break;
          }

          if (v34 < 1)
          {
            break;
          }

          v36 = (v29 + *(*(v30 + 32) + 4 * v32 - 4));
          v37 = *v36;
          v38 = (*(v15 + 1) + *(v33[4] + 4 * v34 - 4));
          if (v37 != *v38)
          {
            break;
          }

          v39 = memcmp(v36 + 1, v38 + 1, v37);
          v31 = v35 + 1;
          --v32;
          --v34;
        }

        while (!v39);
        v40 = v35 > v28;
        if (v35 > v28)
        {
          v28 = v35;
        }

        if (v40)
        {
          v27 = v30;
        }

        ++v26;
      }

      while (v26 != v63);
      if (v27)
      {
        v41 = 0;
        v42 = *(v27 + 40) - v28;
LABEL_47:
        v43 = *v15;
        v44 = *(*v15 + 40);
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = v44 - v28;
          do
          {
            if (v45 >= v46)
            {
              v49 = *(*(v27 + 32) + 4 * v42);
              if (v46 == v45)
              {
                __src = bswap32(v49 | 0xC000) >> 16;
                if (!sub_100005074(&v65, &__src, 2))
                {
                  goto LABEL_76;
                }
              }

              ++v42;
              v47 = *v15;
            }

            else
            {
              v47 = *v15;
              v48 = *(*(*v15 + 32) + 4 * v45);
              if ((v41 & 1) == 0)
              {
                if (!sub_100005074(&v65, (*(v15 + 1) + v48), *(*(v15 + 1) + v48) + 1))
                {
                  goto LABEL_76;
                }

                v47 = *v15;
              }

              v49 = v48 + v61;
            }

            if (v45 > *(v47 + 10))
            {
              fprintf(__stderrp, "attempt to set offset 0x%x at index %d\n", v49, v45);
            }

            *(v47[4] + 4 * v45++) = v49;
          }

          while (v44 != v45);
          v43 = *v15;
        }

        v50 = SDWORD1(v75);
        if (DWORD1(v75) == v75)
        {
          if (DWORD1(v75))
          {
            DWORD1(v75) *= 2;
            v51 = reallocf(*(&v74 + 1), 16 * v50);
          }

          else
          {
            DWORD1(v75) = 8;
            v51 = malloc_type_malloc(0x40uLL, 0x2004093837F09uLL);
          }

          *(&v74 + 1) = v51;
        }

        else
        {
          v51 = *(&v74 + 1);
        }

        v52 = v75;
        LODWORD(v75) = v75 + 1;
        v51[v52] = v43;
        *v15 = 0;
        goto LABEL_68;
      }
    }

    if ((sub_100005074(&v65, *(v15 + 1), *(v15 + 4)) & 1) == 0)
    {
LABEL_76:
      v53 = (a1 + 8 * v59);
      if ((v74 & 0x80000000) != 0 || v74 > SDWORD1(v74))
      {
        fprintf(__stderrp, "trying to set used to %d\n", v61);
      }

      else
      {
        LODWORD(v74) = v61;
      }

      sub_100005164(v15);
      free(v15);
LABEL_82:
      v6 = a4;
      fprintf(__stderrp, "failed to add %s\n", *v53);
      if (a3)
      {
        v11 = v74;
      }

      else
      {
        v11 = 0;
      }

      v7 = 0;
      goto LABEL_86;
    }

    v27 = 0;
    v42 = 0;
    v41 = 1;
    goto LABEL_47;
  }

  v11 = 0;
LABEL_71:
  if (!v7)
  {
    v7 = malloc_type_malloc(v11, 0x7FF68011uLL);
    memcpy(v7, *(&v73 + 1), v11);
  }

LABEL_86:
  sub_100004F2C(&v65);
LABEL_87:
  *v6 = v11;
  return v7;
}

CFDataRef sub_1000047EC(const __CFArray *a1, char a2)
{
  length = 0;
  v3 = sub_100003C64(a1, &length);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_100004188(v3, length, 0, &length + 1, a2, 0);
  free(v4);
  v6 = CFDataCreate(0, v5, SHIDWORD(length));
  free(v5);
  return v6;
}

UInt8 *sub_10000487C(uint64_t a1)
{
  *&length[1] = a1;
  length[0] = 0;
  result = sub_100004188(&length[1], 1u, 0, length, 0, 3);
  if (result)
  {
    v2 = result;
    v3 = CFDataCreate(0, result, length[0]);
    free(v2);
    return v3;
  }

  return result;
}

UInt8 *sub_1000048EC(const __CFString *a1)
{
  result = sub_100004128(a1, 0x8000100u);
  if (result)
  {
    v2 = result;
    v3 = sub_10000487C(result);
    free(v2);
    return v3;
  }

  return result;
}

char *sub_100004930(uint64_t a1, unsigned int a2, int *a3)
{
  __src[0] = 0;
  memset(v11, 0, sizeof(v11));
  __src[1] = v11;
  __n = 0x8000000000;
  v4 = sub_100004A70(a1, a2, v11, 0);
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_malloc(__n + 8 * v4, 0x10040436913F5uLL);
    v7 = &v6[8 * v5];
    memcpy(v7, __src[1], __n);
    if (v5 >= 1)
    {
      v8 = 0;
      do
      {
        *&v6[v8] = v7;
        v7 += strlen(v7) + 1;
        v8 += 8;
      }

      while (8 * v5 != v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  if ((__src[0] & 1) == 0 && __src[1] && __src[1] != v11)
  {
    free(__src[1]);
  }

  return v6;
}

uint64_t sub_100004A70(uint64_t a1, unsigned int a2, _OWORD *a3, char a4)
{
  v4 = 0;
  __src = 46;
  v30 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v29 = 0;
  v4 = 0;
  v9 = 0;
  v10 = 0;
  v33[1] = 0x800000000;
  memset(v32, 0, sizeof(v32));
  v33[0] = v32;
  v28 = 1;
  v11 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v9 >= a2)
        {
          goto LABEL_44;
        }

        v12 = (a1 + v9);
        v13 = *v12;
        if ((~v13 & 0xC0) != 0)
        {
          break;
        }

        if (a4)
        {
          v23 = __stderrp;
          v24 = "single name with pointers\n";
          v25 = 26;
          goto LABEL_54;
        }

        if (v9 >= v10)
        {
          if (v11 <= 1)
          {
            v23 = __stderrp;
            v24 = "truncated pointer value\n";
            v25 = 24;
            goto LABEL_54;
          }

          v10 = (v10 + 2);
          v11 -= 2;
        }

        v14 = bswap32(*v12 & 0xFF3F);
        if (v9 <= HIWORD(v14))
        {
          v23 = __stderrp;
          v24 = "pointer points at or ahead of current position\n";
          v25 = 47;
          goto LABEL_54;
        }

        v9 = HIWORD(v14);
        if (v29 <= v9)
        {
          v23 = __stderrp;
          v24 = "attempt to create infinite loop\n";
          v25 = 32;
          goto LABEL_54;
        }

        if (SLODWORD(v33[1]) >= 1)
        {
          if (*v33[0] == v9)
          {
            continue;
          }

          v15 = 1;
          do
          {
            v16 = v15;
            if (LODWORD(v33[1]) == v15)
            {
              break;
            }

            v17 = *(v33[0] + v15++);
          }

          while (v17 != v9);
          if (v16 < LODWORD(v33[1]))
          {
            continue;
          }
        }

        v23 = __stderrp;
        v24 = "attempt to point off into the weeds\n";
        v25 = 36;
LABEL_54:
        fwrite(v24, v25, 1uLL, v23);
        goto LABEL_55;
      }

      if (v9 >= v10)
      {
        break;
      }

      if (!*v12)
      {
        goto LABEL_35;
      }

LABEL_21:
      if (SLODWORD(v33[1]) < 1)
      {
        goto LABEL_27;
      }

      if (*v33[0] != v9)
      {
        v18 = 1;
        do
        {
          v19 = v18;
          if (LODWORD(v33[1]) == v18)
          {
            break;
          }

          v20 = *(v33[0] + v18++);
        }

        while (v20 != v9);
        if (v19 >= LODWORD(v33[1]))
        {
LABEL_27:
          sub_100004FD8(v32, v9);
        }
      }

      if ((v28 & 1) == 0)
      {
        sub_100005074(a3, &__src, 1);
      }

      sub_100005074(a3, v12 + 1, v13);
      v28 = 0;
      v9 = v9 + v13 + 1;
    }

    if (v13 >= 0x40)
    {
      fprintf(__stderrp, "label length %d > %d\n");
      goto LABEL_40;
    }

    v21 = v13 + 1;
    if (v11 <= v13)
    {
      break;
    }

    v10 = v21 + v10;
    v11 -= v21;
    if (*v12)
    {
      goto LABEL_21;
    }

LABEL_35:
    if ((a4 & 2) != 0)
    {
      sub_100005074(a3, &__src, 1);
    }

    v28 = 1;
    sub_100005074(a3, &v30, 1);
    v4 = (v4 + 1);
    if (a4)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v29 = v10;
    v9 = v10;
    if (v22)
    {
      goto LABEL_43;
    }
  }

  fprintf(__stderrp, "label truncated %d < %d\n");
LABEL_40:
  v22 = 4;
LABEL_43:
  if (v22 == 4)
  {
    goto LABEL_55;
  }

LABEL_44:
  if (v4)
  {
    goto LABEL_60;
  }

  if (!*(a3 + 36))
  {
    v23 = __stderrp;
    v24 = "empty list\n";
    v25 = 11;
    goto LABEL_54;
  }

  if (a4)
  {
    v4 = 1;
    sub_100005074(a3, &v30, 1);
    goto LABEL_60;
  }

LABEL_55:
  if ((a3[8] & 1) == 0)
  {
    v26 = *(a3 + 17);
    if (v26)
    {
      if (v26 != a3)
      {
        free(v26);
      }
    }
  }

  v4 = 0;
  *(a3 + 18) = 0;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
LABEL_60:
  if (v33[0] && v33[0] != v32)
  {
    free(v33[0]);
  }

  return v4;
}

CFStringRef sub_100004E54(uint64_t a1, unsigned int a2, int a3)
{
  cStr[0] = 0;
  cStr[1] = v6;
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  HIDWORD(v8) = 128;
  if (!sub_100004A70(a1, a2, v6, v3))
  {
    return 0;
  }

  v4 = CFStringCreateWithCString(0, cStr[1], 0x8000100u);
  if ((cStr[0] & 1) == 0 && cStr[1] && cStr[1] != v6)
  {
    free(cStr[1]);
  }

  return v4;
}

void sub_100004F2C(_OWORD *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v2 = *(a1 + 17);
    if (v2 && v2 != a1)
    {
      free(v2);
    }
  }

  *(a1 + 18) = 0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v5 = a1 + 19;
  v4 = *(a1 + 19);
  if (v4)
  {
    if (*(a1 + 40) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        sub_100005164((*(a1 + 19) + v6));
        ++v7;
        v6 += 8;
      }

      while (v7 < *(a1 + 40));
      v4 = *v5;
    }

    free(v4);
  }

  *v5 = 0;
  *(a1 + 20) = 0;
}

int *sub_100004FD8(int *result, size_t size)
{
  v2 = size;
  v3 = result;
  v4 = result[11];
  if (v4 == result[10])
  {
    result[11] = 2 * v4;
    v5 = *(result + 4);
    v6 = 8 * v4;
    if (v5 == v3)
    {
      v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
      *(v3 + 4) = v7;
      result = memmove(v7, v3, 4 * v3[10]);
    }

    else
    {
      result = reallocf(v5, v6);
      *(v3 + 4) = result;
    }
  }

  v8 = *(v3 + 4);
  v9 = v3[10];
  v3[10] = v9 + 1;
  *(v8 + 4 * v9) = v2;
  return result;
}

uint64_t sub_100005074(uint64_t a1, void *__src, int a3)
{
  v6 = *(a1 + 148);
  v7 = v6 - *(a1 + 144);
  if (v7 < a3)
  {
    if (*(a1 + 128) == 1)
    {
      fprintf(__stderrp, "user-supplied buffer failed to add data with length %d (> %d)\n", a3, v7);
      return 0;
    }

    if (a3 <= 128)
    {
      v9 = 128;
    }

    else
    {
      v9 = a3;
    }

    v10 = v6 + v9;
    *(a1 + 148) = v10;
    v11 = *(a1 + 136);
    if (v11 == a1)
    {
      v12 = malloc_type_malloc(v10, 0xDF09CD32uLL);
      *(a1 + 136) = v12;
      memcpy(v12, a1, *(a1 + 144));
    }

    else
    {
      *(a1 + 136) = reallocf(v11, v10);
    }
  }

  memcpy((*(a1 + 136) + *(a1 + 144)), __src, a3);
  *(a1 + 144) += a3;
  return 1;
}

void sub_100005164(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = v3 == v2;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        free(v3);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void *sub_1000051B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100006224(a1);
  a1[2] = a2;
  a1[3] = a3;
  return result;
}

void sub_1000051EC(uint64_t *a1)
{
  v1 = a1;
  v3 = 0;
  while (sub_10000629C(a1, 0, &v3))
  {
    if (v3)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v2();
      }
    }

    a1 = v1;
  }

  sub_10000622C(v1);
}

__n128 sub_100005254(__n128 *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  if (v2)
  {
    result = *a1;
    *v2 = *a1;
  }

  return result;
}

uint64_t sub_10000529C(uint64_t *a1, char *__s2)
{
  v4 = -104;
  v5 = -1;
  while (1)
  {
    v6 = a1 ? *(a1 + 2) : 0;
    if (++v5 >= v6)
    {
      break;
    }

    v7 = v4 + 104;
    v8 = *a1;
    v9 = strcmp((*a1 + v4 + 104), __s2);
    v4 = v7;
    if (!v9)
    {
      return v8 + v7;
    }
  }

  return 0;
}

const char *sub_100005320(uint64_t a1)
{
  result = sub_10000529C(a1, "en0");
  if (!result)
  {
    if (a1 && (v3 = *(a1 + 8), v3 >= 1))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *(a1 + 8);
      do
      {
        if (v4 >= v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = *a1 + 104 * v4;
        }

        v9 = *(v8 + 18);
        if (v9 == 6 || v9 == 144)
        {
          if (v5)
          {
            if (strcmp(v8, v5) < 0)
            {
              v5 = v8;
            }
          }

          else
          {
            v5 = v8;
          }
        }

        else if (!v6)
        {
          if (*(v8 + 74))
          {
            v6 = v8;
          }

          else
          {
            v6 = 0;
          }
        }

        ++v4;
      }

      while (v4 != v3);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (v6)
    {
      v10 = v5 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void **sub_10000541C(uint64_t *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v3 = v2;
  if (v2 && !sub_10000547C(v2, a1))
  {
    free(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_10000547C(void **a1, uint64_t *a2)
{
  v65 = a2;
  v66 = 0;
  memset(v68, 0, 44);
  *a1 = 0;
  v3 = getifaddrs(&v66);
  v4 = v66;
  if (v3 < 0)
  {
    goto LABEL_88;
  }

  if (!v66)
  {
LABEL_90:
    result = *a1;
    if (*a1)
    {
      free(result);
      result = 0;
      *a1 = 0;
    }

    return result;
  }

  v5 = 0;
  v6 = v66;
  while (v6->ifa_addr)
  {
    v6 = v6->ifa_next;
    --v5;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (!v5)
  {
LABEL_88:
    if (v4)
    {
      freeifaddrs(v4);
    }

    goto LABEL_90;
  }

LABEL_8:
  v7 = -v5;
  v8 = malloc_type_malloc(104 * -v5, 0x1080040821398E0uLL);
  *a1 = v8;
  if (!v8)
  {
    v4 = v66;
    goto LABEL_88;
  }

  v9 = socket(2, 2, 0);
  v4 = v66;
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_88;
  }

  v11 = v9;
  *(a1 + 2) = 0;
  *(a1 + 3) = v7;
  v12 = 104;
  if (!v4)
  {
    goto LABEL_84;
  }

  v62 = kSCNetworkInterfaceTypeIEEE80211;
  *&v10 = 136315906;
  v63 = v10;
  do
  {
    ifa_addr = v4->ifa_addr;
    if (!ifa_addr)
    {
      goto LABEL_82;
    }

    ifa_name = v4->ifa_name;
    sa_family = ifa_addr->sa_family;
    if (sa_family == 2)
    {
      v22 = 104 * (a1[1] & ~(*(a1 + 2) >> 31));
      v23 = -104;
      do
      {
        v24 = v23 + 104;
        if (v22 == v23 + 104)
        {
          goto LABEL_31;
        }

        v25 = *a1;
        v26 = strcmp(*a1 + v23 + 104, ifa_name);
        v23 = v24;
      }

      while (v26);
      if (v25)
      {
        v27 = v25 + v24;
LABEL_33:
        v39 = *&ifa_addr->sa_data[2];
        ifa_netmask = v4->ifa_netmask;
        if (ifa_netmask)
        {
          v41 = *&ifa_netmask->sa_data[2];
        }

        else
        {
          v41 = 0;
        }

        if ((*(v27 + 16) & 2) != 0 && (ifa_dstaddr = v4->ifa_dstaddr) != 0)
        {
          v49 = *&ifa_dstaddr->sa_data[2];
        }

        else
        {
          v49 = 0;
        }

        v50 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v50)
        {
          *v50 = v39;
          v50[1] = v41;
          v50[2] = v41 & v39;
          v50[3] = v49;
        }

        sub_100005250();
        goto LABEL_82;
      }

LABEL_31:
      v38 = sub_100005E68(a1, ifa_name);
      if (v38)
      {
        v27 = v38;
        *(v38 + 16) = v4->ifa_flags;
        ifa_addr = v4->ifa_addr;
        goto LABEL_33;
      }

      sub_100006ED4();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (sa_family != 18)
      {
        goto LABEL_82;
      }

      v16 = 104 * (a1[1] & ~(*(a1 + 2) >> 31));
      v17 = -104;
      do
      {
        v18 = v17 + 104;
        if (v16 == v17 + 104)
        {
          goto LABEL_25;
        }

        v19 = *a1;
        v20 = strcmp(*a1 + v17 + 104, ifa_name);
        v17 = v18;
      }

      while (v20);
      if (v19)
      {
        v21 = v19 + v18;
LABEL_27:
        v29 = ifa_addr->sa_data[4];
        if (v29 < 0x11)
        {
          *(v21 + 74) = v29;
        }

        else
        {
          sub_100006ED4();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v30 = v11;
            v31 = _os_log_pack_size();
            v64 = &v61;
            v32 = &v61 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
            v33 = __error();
            v34 = v31;
            v11 = v30;
            v35 = _os_log_pack_fill(v32, v34, *v33, &_mh_execute_header, "%s: link type %d address length %d > %ld", v61, v62, v63, *(&v63 + 1));
            v36 = ifa_addr->sa_data[2];
            v37 = ifa_addr->sa_data[4];
            *v35 = v63;
            *(v35 + 4) = ifa_name;
            *(v35 + 12) = 1024;
            *(v35 + 14) = v36;
            *(v35 + 18) = 1024;
            *(v35 + 20) = v37;
            *(v35 + 24) = 2048;
            *(v35 + 26) = 16;
            __SC_log_send();
          }

          *(v21 + 74) = 16;
          v29 = 16;
        }

        memmove((v21 + 56), &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6], v29);
        v42 = ifa_addr->sa_data[2];
        *(v21 + 75) = v42;
        *(v21 + 72) = *ifa_addr->sa_data;
        ifa_data = v4->ifa_data;
        if (ifa_data)
        {
          v42 = *ifa_data;
        }

        *(v21 + 18) = v42;
        v44 = sub_100005CB0(v11, ifa_name);
        if ((v44 & 0x100000) != 0)
        {
          *(v21 + 19) |= 3u;
        }

        *(v21 + 20) = (v44 >> 14) & 1;
        if (sub_100005C1C(v11, ifa_name, v68))
        {
          if (SLODWORD(v68[2]) < 1)
          {
            v46 = 0;
            v45 = 0;
            v47 = 0;
          }

          else
          {
            v45 = (BYTE8(v68[1]) & 2) << 31;
            if (BYTE8(v68[1]))
            {
              v46 = (DWORD2(v68[1]) >> 2) & 1;
            }

            else
            {
              v46 = 0;
            }

            if ((BYTE8(v68[1]) & 1) == 0)
            {
              v45 = 0;
            }

            v47 = 1;
            if ((BYTE8(v68[1]) & 1) == 0)
            {
              v47 = 0;
            }
          }

          *(v21 + 80) = v47 | v45;
          *(v21 + 88) = v46;
          if ((v68[1] & 0xE0) == 0x80)
          {
            *(v21 + 19) |= 1u;
          }
        }

        v54 = sub_100005F00(v11, ifa_name);
        *(v21 + 96) = v54;
        if (*(v21 + 18) == 6)
        {
          v67 = 0;
          if (!v65 || (sub_1000060B8(v65, ifa_name, v54, &v67) & 1) == 0)
          {
            v55 = CFStringCreateWithCString(0, ifa_name, 0x8000100u);
            v56 = _SCNetworkInterfaceCreateWithBSDName();
            if (v56)
            {
              v57 = v56;
              InterfaceType = SCNetworkInterfaceGetInterfaceType(v56);
              if (InterfaceType)
              {
                if (CFEqual(InterfaceType, v62))
                {
                  v59 = v67;
                  v67 |= 1u;
                  if (*ifa_name == 101 && *(ifa_name + 1) == 110)
                  {
                    v67 = v59 | 9;
                  }
                }
              }

              if (_SCNetworkInterfaceIsTetheredHotspot())
              {
                v67 |= 4u;
              }

              if (_SCNetworkInterfaceIsCarPlay())
              {
                v67 |= 0x10u;
              }

              CFRelease(v57);
            }

            CFRelease(v55);
          }

          if (v67)
          {
            *(v21 + 19) |= v67;
          }
        }

        goto LABEL_82;
      }

LABEL_25:
      v28 = sub_100005E68(a1, ifa_name);
      if (v28)
      {
        v21 = v28;
        *(v28 + 16) = v4->ifa_flags;
        goto LABEL_27;
      }

      sub_100006ED4();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_82;
      }
    }

    v51 = _os_log_pack_size();
    v52 = &v61 - ((__chkstk_darwin(v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = *__error();
    *_os_log_pack_fill(v52, v51, v53, &_mh_execute_header, "interfaces: S_next_entry returns NULL") = 0;
    __SC_log_send();
LABEL_82:
    v4 = v4->ifa_next;
  }

  while (v4);
  v12 = 104 * *(a1 + 2) + 104;
LABEL_84:
  *a1 = reallocf(*a1, v12);
  if (v66)
  {
    freeifaddrs(v66);
  }

  close(v11);
  return 1;
}

void sub_100005B74(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(v2 + 8) >= 1)
      {
        v3 = 0;
        v4 = 24;
        do
        {
          sub_1000051EC((*v2 + v4));
          ++v3;
          v4 += 104;
        }

        while (v3 < *(v2 + 8));
      }

      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_100005BF8(uint64_t a1)
{
  v1 = *(a1 + 75);
  if (v1 == 144)
  {
    v2 = 24;
  }

  else
  {
    v2 = -1;
  }

  if (v1 == 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100005C1C(int a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 28) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02C6938uLL, a3) != -1)
  {
    return 1;
  }

  if (*__error() != 102)
  {
    return 0;
  }

  *(a3 + 24) = 3;
  result = 1;
  *(a3 + 32) = 1;
  return result;
}

uint64_t sub_100005CB0(int a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC020698EuLL, &v11) != -1)
  {
    return v12;
  }

  sub_100006ED4();
  __error();
  _SC_syslog_os_log_mapping();
  __error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%s: SIOCGIFEFLAGS failed status, %s", v11, *(&v11 + 1));
    v9 = __error();
    v10 = strerror(*v9);
    *v8 = 136315394;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    __error();
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_100005E68(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2 >= *(a1 + 3))
  {
    return 0;
  }

  v3 = *a1;
  *(a1 + 2) = v2 + 1;
  v4 = v3 + 104 * v2;
  *(v4 + 96) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  __strlcpy_chk();
  sub_1000051B4((v4 + 24), j__free, sub_100005254);
  return v4;
}

uint64_t sub_100005F00(int a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02069D9uLL, &v11) != -1)
  {
    return v12;
  }

  sub_100006ED4();
  __error();
  _SC_syslog_os_log_mapping();
  __error();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &v11 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%s: SIOCGIFGENERATIONID failed status, %s", v11, *(&v11 + 1));
    v9 = __error();
    v10 = strerror(*v9);
    *v8 = 136315394;
    *(v8 + 4) = a2;
    *(v8 + 12) = 2080;
    *(v8 + 14) = v10;
    __error();
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_1000060B8(uint64_t *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  result = sub_10000529C(a1, a2);
  if (result)
  {
    if (*(result + 96) == a3)
    {
      *a4 = *(result + 19);
      sub_100006ED4();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        v9 = &v13 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "%s re-using flags 0x%x (generation %qu)\n", v13, v14, v15);
        v12 = *a4;
        *v11 = 136315650;
        *(v11 + 4) = a2;
        *(v11 + 12) = 1024;
        *(v11 + 14) = v12;
        *(v11 + 18) = 2048;
        *(v11 + 20) = a3;
        __SC_log_send();
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100006224(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_10000622C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_10000625C(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006278(uint64_t a1, int a2)
{
  if (*a1 && *(a1 + 12) > a2)
  {
    return *(*a1 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000629C(uint64_t *a1, signed int a2, void *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(a1 + 3);
    if (v6 > a2)
    {
      if (a3)
      {
        *a3 = *(v3 + 8 * a2);
      }

      if (v6 + ~a2 >= 1)
      {
        memmove((*a1 + 8 * a2), (*a1 + 8 * a2 + 8), 8 * (v6 + ~a2));
        v6 = *(a1 + 3);
      }

      *(a1 + 3) = v6 - 1;
      return 1;
    }
  }

  return result;
}

BOOL sub_100006324(uint64_t *a1, uint64_t a2)
{
  result = sub_100006368(a1);
  if (result)
  {
    v5 = *a1;
    v6 = *(a1 + 3);
    *(a1 + 3) = v6 + 1;
    *(v5 + 8 * v6) = a2;
    return 1;
  }

  return result;
}

BOOL sub_100006368(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (!v2)
  {
    if (!v3)
    {
      v3 = 16;
      *(a1 + 8) = 16;
    }

    *(a1 + 12) = 0;
    v4 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
    goto LABEL_7;
  }

  if (v3 == *(a1 + 12))
  {
    *(a1 + 8) = 2 * v3;
    v4 = malloc_type_realloc(v2, 16 * v3, 0x80040B8603338uLL);
LABEL_7:
    *a1 = v4;
    return v4 != 0;
  }

  return 1;
}

void sub_100006404(CFMutableStringRef theString, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 >= 1)
  {
    v12 = v4;
    v13 = v5;
    v9 = 0;
    v10 = a3;
    do
    {
      if (v9)
      {
        if (a4 != 32 || (v9 & 7) != 0)
        {
          v11[0] = a4;
          v11[1] = 0;
        }

        else
        {
          strcpy(v11, "  ");
        }
      }

      else
      {
        v11[0] = 0;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v11, *(a2 + v9++));
    }

    while (v10 != v9);
  }
}

uint64_t sub_1000064CC(int a1, int a2, void *a3, uint64_t a4, int a5, int a6)
{
  v6 = a5;
  v11[0] = a4;
  v11[1] = a5;
  v10.msg_name = a3;
  *(&v10.msg_namelen + 1) = 0;
  v10.msg_namelen = 28;
  v10.msg_iov = v11;
  *(&v10.msg_iovlen + 1) = 0;
  v10.msg_iovlen = 1;
  v10.msg_control = &v12;
  if (a6 >= 0)
  {
    v7 = 48;
  }

  else
  {
    v7 = 32;
  }

  v10.msg_controllen = v7;
  v10.msg_flags = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 46;
  v12 = 0x2900000020;
  v16 = 0;
  LODWORD(v15) = a2;
  if ((a6 & 0x80000000) == 0)
  {
    *(&v15 + 4) = 0x2900000010;
    HIDWORD(v15) = 47;
    v16 = a6;
  }

  v8 = sendmsg(a1, &v10, 0);
  result = 0;
  if (v8 != v6)
  {
    return *__error();
  }

  return result;
}

__CFDictionary *sub_1000065C0(uint64_t a1, int a2)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFNumberCreate(0, kCFNumberShortType, (a1 + 4));
  v21 = v5;
  if (!v5)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServicePriority, v5);
  v6 = CFRetain(*(a1 + 8));
  v20 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAuthenticationDomainName, v6);
  v7 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v19 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *(a1 + 24);
  if (a2)
  {
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = sub_100003EBC((*(a1 + 16) + v10));
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(v8, v11);
          CFRelease(v12);
        }

        v10 += 16;
      }

      while (v10 < 16 * *(a1 + 24));
    }
  }

  else if (v9 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_100003E74(*(*(a1 + 16) + v13));
      if (v14)
      {
        v15 = v14;
        CFArrayAppendValue(v8, v14);
        CFRelease(v15);
      }

      v13 += 4;
    }

    while (v13 < 4 * *(a1 + 24));
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAddresses, v8);
  v16 = CFDataCreate(0, *(a1 + 32), *(a1 + 40));
  v18 = v16;
  if (v16)
  {
    CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServiceParameters, v16);
  }

  else
  {
LABEL_18:
    sub_1000037A0(Mutable);
  }

  sub_1000037A0(&v21);
  sub_1000037A0(&v20);
  sub_1000037A0(&v19);
  sub_1000037A0(&v18);
  return Mutable;
}

void sub_1000067A4(uint64_t a1)
{
  if (a1)
  {
    sub_1000037A0((a1 + 8));
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

__CFDictionary *sub_100006804(unsigned __int16 *a1, int a2)
{
  v31 = 0;
  v32 = 0;
  if (a2 < 23 || ((v2 = bswap32(a1[1]) >> 16, v3 = a2 - 4, (v2 - 256) >= 0xFF01u) ? (v4 = v3 >= v2) : (v4 = 0), !v4 || (v5 = *a1, v6 = a1 + 2, (v32 = sub_100004E54((a1 + 2), v2, 0)) == 0) || (v7 = v3 - v2 - 2, (v3 - v2) < 2) || ((v8 = (v6 + v2), v11 = *v8, v9 = (v8 + 1), v10 = v11, v12 = v11 >> 8, v7 >= v12) ? (v13 = (v12 & 0xF) == 0) : (v13 = 0), !v13)))
  {
    sub_1000037A0(&v32);
LABEL_14:
    sub_1000037A0(&v31);
    return v31;
  }

  v15 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
  v16 = v15;
  if (v10 < 0x100)
  {
    goto LABEL_32;
  }

  v17 = 0;
  v18 = bswap32(v5) >> 16;
  v19 = v12 >> 4;
  if ((v12 >> 4) <= 1)
  {
    LODWORD(v19) = 1;
  }

  do
  {
    v20 = *v9++;
    v21 = v20;
    v22 = ~v20;
    v23 = v20 | DWORD1(v20) | DWORD2(v20);
    v24 = HIDWORD(v20);
    v25 = (v23 | HIDWORD(v20)) == 0;
    if (v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24 == 0x1000000;
    }

    v27 = v26;
    if (v22 && !v25 && (v27 & 1) == 0)
    {
      *(v15 + v17++) = v21;
    }

    LOWORD(v7) = v7 - 16;
    LODWORD(v19) = v19 - 1;
  }

  while (v19);
  if (!v17)
  {
LABEL_32:
    sub_1000037A0(&v32);
    if (v16)
    {
      free(v16);
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v28 = malloc_type_malloc(v7, 0x100004077774924uLL);
    memcpy(v28, v9, v7);
  }

  else
  {
    v28 = 0;
  }

  v29 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
  *(v29 + 6) = 0u;
  *(v29 + 22) = 0u;
  v29[2] = 0u;
  *v29 = 1;
  *(v29 + 2) = v18;
  *(v29 + 1) = v32;
  *(v29 + 2) = v16;
  *(v29 + 6) = v17;
  *(v29 + 4) = v28;
  *(v29 + 20) = v7;
  v30 = sub_1000065C0(v29, 1);
  sub_1000067A4(v29);
  return v30;
}

void sub_100006A24(CFMutableStringRef theString, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 < 2)
  {
    v6 = 2;
LABEL_3:
    CFStringAppendFormat(theString, 0, @"DUID too short (%d < %d), Data = { ", a3, v6);
    sub_100003FAC(theString, a2, v3, 32);

    CFStringAppendCString(theString, " }", 0x600u);
    return;
  }

  v7 = bswap32(*a2) >> 16;
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        if (a3 >= 0x12)
        {
          memset(out, 0, 37);
          uuid_unparse(a2 + 2, out);
          CFStringAppendFormat(theString, 0, @"DUID UUID %s", out);
          return;
        }

        v6 = 18;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v8 = a3 - 4;
    if (a3 < 4)
    {
      v6 = 4;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LL HW %d Addr ", bswap32(a2[1]) >> 16);
    v10 = a2 + 2;
LABEL_24:
    v9 = theString;
    v11 = v8;
    v12 = 58;
    goto LABEL_25;
  }

  if (v7 == 1)
  {
    v8 = a3 - 8;
    if (a3 < 8)
    {
      v6 = 8;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID LLT HW %d Time %u Addr ", bswap32(a2[1]) >> 16, bswap32(*(a2 + 1)));
    v10 = a2 + 4;
    goto LABEL_24;
  }

  if (v7 == 2)
  {
    v8 = a3 - 6;
    if (a3 < 6)
    {
      v6 = 6;
      goto LABEL_3;
    }

    CFStringAppendFormat(theString, 0, @"DUID EN Num %d Id ", __rev16(a2[2]));
    v10 = a2 + 3;
    goto LABEL_24;
  }

LABEL_15:
  CFStringAppendFormat(theString, 0, @"DUID (unrecognized type=%d): ", v7);
  v9 = theString;
  v10 = a2;
  v11 = v3;
  v12 = 32;
LABEL_25:

  sub_100003FAC(v9, v10, v11, v12);
}

BOOL sub_100006CF4(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = (bswap32(*a1) >> 16) - 1;
  return v2 <= 3u && dword_1000090C0[v2] <= a2;
}

__CFData *sub_100006D3C(const void *a1, int a2, unsigned int a3)
{
  v5 = a2;
  v6 = a2 + 8;
  Mutable = CFDataCreateMutable(0, v6);
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 256;
  *(MutableBytePtr + 1) = bswap32(a3) >> 16;
  memcpy(MutableBytePtr + 8, a1, v5);
  memset(&v11, 0, sizeof(v11));
  v11.tm_year = 100;
  v11.tm_mday = 1;
  v9 = timegm(&v11);
  *(MutableBytePtr + 1) = bswap32(time(0) - v9);
  return Mutable;
}

const char *DHCPv6MessageTypeName(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "<unknown";
  }

  else
  {
    return off_10000C468[a1];
  }
}

void DHCPv6PacketPrintToString(CFMutableStringRef theString, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 > 3)
  {
    v6 = *a2;
    v7 = DHCPv6MessageTypeName(*a2);
    CFStringAppendFormat(theString, 0, @"DHCPv6 %s (%d) Transaction ID 0x%06x Length %d\n", v7, v6, bswap32((a2[1] << 8) | (a2[2] << 16) | (a2[3] << 24)), a3);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Packet too short %d < %d\n", a3, 4);
  }
}

uint64_t sub_100006EE0(int a1)
{
  result = 1;
  switch(a1)
  {
    case 1:
    case 2:
      result = 2;
      break;
    case 3:
      result = 7;
      break;
    case 4:
    case 7:
    case 9:
    case 10:
    case 11:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 40:
      return result;
    case 5:
      result = 8;
      break;
    case 6:
    case 8:
      result = 3;
      break;
    case 12:
    case 22:
    case 23:
      result = 5;
      break;
    case 13:
      result = 9;
      break;
    case 14:
      result = 0;
      break;
    case 21:
    case 24:
      result = 6;
      break;
    case 25:
      result = 11;
      break;
    case 26:
      result = 12;
      break;
    case 39:
      result = 14;
      break;
    case 41:
    case 42:
      goto LABEL_7;
    default:
      if (a1 == 103)
      {
LABEL_7:
        result = 10;
      }

      else if (a1 == 144)
      {
        result = 13;
      }

      else
      {
        result = 1;
      }

      break;
  }

  return result;
}

const char *sub_100007034(int a1)
{
  v1 = a1 - 1;
  result = "CLIENTID";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "SERVERID";
      break;
    case 2:
      result = "IA_NA";
      break;
    case 3:
      result = "IA_TA";
      break;
    case 4:
      result = "IAADDR";
      break;
    case 5:
      result = "ORO";
      break;
    case 6:
      result = "PREFERENCE";
      break;
    case 7:
      result = "ELAPSED_TIME";
      break;
    case 8:
      result = "RELAY_MSG";
      break;
    case 9:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
      goto LABEL_6;
    case 10:
      result = "AUTH";
      break;
    case 11:
      result = "UNICAST";
      break;
    case 12:
      result = "STATUS_CODE";
      break;
    case 13:
      result = "RAPID_COMMIT";
      break;
    case 14:
      result = "USER_CLASS";
      break;
    case 15:
      result = "VENDOR_CLASS";
      break;
    case 16:
      result = "VENDOR_OPTS";
      break;
    case 17:
      result = "INTERFACE_ID";
      break;
    case 18:
      result = "RECONF_MSG";
      break;
    case 19:
      result = "RECONF_ACCEPT";
      break;
    case 20:
      result = "SIP_SERVER_D";
      break;
    case 21:
      result = "SIP_SERVER_A";
      break;
    case 22:
      result = "DNS_SERVERS";
      break;
    case 23:
      result = "DOMAIN_LIST";
      break;
    case 24:
      result = "IA_PD";
      break;
    case 25:
      result = "IAPREFIX";
      break;
    case 38:
      result = "CLIENT_FQDN";
      break;
    case 40:
      result = "POSIX_TIMEZONE";
      break;
    case 41:
      result = "TZDB_TIMEZONE";
      break;
    default:
      if ("CLIENTID" == 103)
      {
        result = "CAPTIVE_PORTAL_URL";
      }

      else if ("CLIENTID" == 144)
      {
        result = "DNS_ENCRYPTED_SERVERS";
      }

      else
      {
LABEL_6:
        result = "<unknown>";
      }

      break;
  }

  return result;
}

uint64_t sub_100007288(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = 0;
  return result;
}

BOOL sub_10000729C(uint64_t a1, unsigned int a2, size_t __len, void *__src, char *a5)
{
  v6 = *(a1 + 8) - *(a1 + 12);
  v7 = __len + 4;
  *a5 = 0;
  if (v6 < __len + 4)
  {
    v11 = sub_100007034(a2);
    snprintf(a5, 0x100uLL, "No room for option %s (%d), %d < %d", v11, a2, v6, v7);
  }

  else
  {
    v9 = (*a1 + *(a1 + 12));
    *v9 = __rev16(a2);
    v9[1] = __rev16(__len);
    if (__len)
    {
      memmove(v9 + 2, __src, __len);
    }

    *(a1 + 12) += v7;
  }

  return v6 >= v7;
}

_OWORD *sub_100007360(unsigned __int16 *a1, signed int a2, char *a3)
{
  v10 = 0uLL;
  sub_100006224(&v10);
  if (a2 >= 4)
  {
    v7 = a1;
    while (1)
    {
      v8 = (bswap32(v7[1]) >> 16) + 4;
      v6 = a2 - v8;
      if (a2 < v8)
      {
        break;
      }

      sub_100006324(&v10, v7);
      v7 = (v7 + v8);
      a2 -= v8;
      if (v6 < 4)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      sub_100007034(bswap32(*v7) >> 16);
      snprintf(a3, 0x100uLL, "truncated option %s (%d) at offset %d, left %d < need %d");
    }
  }

  else
  {
    v6 = a2;
LABEL_6:
    if (!v6)
    {
      result = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
      *result = v10;
      return result;
    }

    if (a3)
    {
      snprintf(a3, 0x100uLL, "truncated buffer at offset %d\n");
    }
  }

  sub_10000622C(&v10);
  return 0;
}

_OWORD *sub_100007480(uint64_t a1, int a2, char *a3)
{
  v3 = __OFSUB__(a2, 4);
  v4 = a2 - 4;
  if (v4 < 0 != v3)
  {
    return 0;
  }

  else
  {
    return sub_100007360((a1 + 4), v4, a3);
  }
}

void sub_100007498(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_10000622C(v1);

    free(v1);
  }
}

void sub_1000074F0(__CFString *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000625C(a2);
  v7 = v6;
  CFStringAppendFormat(a1, 0, @"Options[%d] = {\n", v6);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = sub_100006278(a2, i);
      v10 = *v9;
      v11 = v9[1];
      if (a3 >= 1)
      {
        v12 = a3;
        do
        {
          CFStringAppendFormat(a1, 0, @"  ");
          --v12;
        }

        while (v12);
      }

      CFStringAppendFormat(a1, 0, @"  ");
      sub_100007E68(a1, bswap32(v10) >> 16, bswap32(v11) >> 16, v9 + 2, a3);
    }
  }

  if (a3 >= 1)
  {
    do
    {
      CFStringAppendFormat(a1, 0, @"  ");
      LODWORD(a3) = a3 - 1;
    }

    while (a3);
  }

  CFStringAppendFormat(a1, 0, @"}\n");
}

unsigned __int16 *sub_100007640(uint64_t a1, int a2, unsigned int *a3, int *a4)
{
  v8 = sub_10000625C(a1);
  v9 = v8;
  if (a4)
  {
    v10 = *a4;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= v8)
  {
    return 0;
  }

  while (1)
  {
    v11 = sub_100006278(a1, v10);
    if (a2 == bswap32(*v11) >> 16)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  if (a4)
  {
    *a4 = v10 + 1;
  }

  *a3 = bswap32(v11[1]) >> 16;
  return v11 + 2;
}

const void *sub_1000076EC(const __CFDictionary *a1, __int16 a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(a1, v3);
  CFRelease(v4);
  return Value;
}

CFMutableDictionaryRef sub_100007754(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  Mutable = CFDictionaryCreateMutable(0, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v31 = Mutable;
  v5 = malloc_type_malloc(16 * v3, 0xC0040B8AA526DuLL);
  v6 = &v5[v3];
  CFDictionaryGetKeysAndValues(a1, v5, v6);
  if (v3 >= 1)
  {
    v8 = 0;
    *&v7 = 138412290;
    v28 = v7;
    v29 = Mutable;
    v30 = &v5[v3];
    do
    {
      v9 = v5[v8];
      v10 = v6[v8];
      if (CFStringHasPrefix(v9, @"dhcp_"))
      {
        v33.length = CFStringGetLength(v9) - 5;
        v33.location = 5;
        v11 = sub_100004070(v9, v33, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          v13 = 7;
          v14 = &off_10000C4E0;
          while (strcasecmp(v12, *v14))
          {
            v14 += 2;
            if (!--v13)
            {
              goto LABEL_11;
            }
          }

          v15 = *(v14 - 4);
          if (!v15)
          {
LABEL_11:
            if ((*v12 - 48) > 9 || (LOWORD(v15) = strtoul(v12, 0, 0), !v15))
            {
              _SC_LOG_DEFAULT();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_20;
              }

              v19 = _os_log_pack_size();
              v20 = &v28 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
              v21 = __error();
              v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "Ignoring unsupported option '%@'");
              *v22 = v28;
              *(v22 + 4) = v9;
              goto LABEL_19;
            }
          }

          v16 = sub_100007AD8(v15, v10);
          if (v16)
          {
            v17 = v16;
            valuePtr = v15;
            v18 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
            CFDictionarySetValue(Mutable, v18, v17);
            CFRelease(v18);
            CFRelease(v17);
            goto LABEL_20;
          }

          _SC_LOG_DEFAULT();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v23 = _os_log_pack_size();
            v24 = &v28 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
            v25 = __error();
            v26 = _os_log_pack_fill(v24, v23, *v25, &_mh_execute_header, "Failed to handle '%@'");
            *v26 = v28;
            *(v26 + 4) = v9;
LABEL_19:
            __SC_log_send();
            Mutable = v29;
          }

LABEL_20:
          free(v12);
          v6 = v30;
        }
      }

      ++v8;
    }

    while (v8 != v3);
  }

  free(v5);
  if (!CFDictionaryGetCount(Mutable))
  {
    sub_1000037A0(&v31);
    return v31;
  }

  return Mutable;
}

CFDataRef sub_100007AD8(int a1, const __CFString *a2)
{
  v3 = sub_100006EE0(a1);
  TypeID = CFDataGetTypeID();
  if (!a2)
  {
    CFStringGetTypeID();
    CFArrayGetTypeID();
    return a2;
  }

  if (CFGetTypeID(a2) == TypeID)
  {

    return CFRetain(a2);
  }

  v6 = CFStringGetTypeID();
  if (CFGetTypeID(a2) == v6)
  {
    if (v3 == 6)
    {

      return sub_1000048EC(a2);
    }

    else
    {
      if (v3 == 5)
      {
        *bytes = 0;
        v16 = 0;
        if (sub_100003D04(a2, bytes))
        {
          return CFDataCreate(0, bytes, 16);
        }

        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_29;
        }

        return 0;
      }

      return sub_100004170(a2);
    }
  }

  else
  {
    v7 = CFArrayGetTypeID();
    if (CFGetTypeID(a2) != v7)
    {
      return 0;
    }

    if (v3 != 6)
    {
      if (v3 == 5)
      {
        *bytes = 0;
        v8 = sub_100003DBC(a2, bytes);
        if (v8)
        {
          v9 = v8;
          a2 = CFDataCreate(0, v8, 16 * *bytes);
          free(v9);
          return a2;
        }

        _SC_LOG_DEFAULT();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
LABEL_29:
          v10 = _os_log_pack_size();
          v11 = &bytes[-((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v12 = *__error();
          v13 = _os_log_pack_fill(v11, v10, v12, &_mh_execute_header, "invalid IPv6 address '%@'");
          *v13 = 138412290;
          *(v13 + 4) = a2;
          __SC_log_send();
        }
      }

      return 0;
    }

    return sub_1000047EC(a2, 0);
  }
}

void sub_100007E68(__CFString *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v10 = sub_100007034(a2);
  CFStringAppendFormat(a1, 0, @"%s (%d) Length %d: ", v10, a2, a3);
  switch(sub_100006EE0(a2))
  {
    case 0u:
      return;
    case 2u:
      sub_100006A24(a1, a4, a3);
      goto LABEL_79;
    case 3u:
      if (a3 >= 2)
      {
        v23 = 0;
        v24 = a3 & 0xFFFE;
        do
        {
          v25 = bswap32(a4[v23]);
          v26 = HIWORD(v25);
          if ((v23 * 2))
          {
            v27 = ", ";
          }

          else
          {
            v27 = &unk_1000091B1;
          }

          if (a2 == 6)
          {
            v37 = sub_100007034(HIWORD(v25));
            CFStringAppendFormat(a1, 0, @"%s%s (%d)", v27, v37, v26);
          }

          else
          {
            CFStringAppendFormat(a1, 0, @"%s%d", v27, HIWORD(v25), v39);
          }

          ++v23;
        }

        while (v24 != (v23 * 2));
      }

      goto LABEL_79;
    case 4u:
      if (a3 >= 4)
      {
        v21 = 0;
        do
        {
          if ((v21 * 2))
          {
            v22 = ", ";
          }

          else
          {
            v22 = &unk_1000091B1;
          }

          CFStringAppendFormat(a1, 0, @"%s%d", v22, bswap32(*&a4[v21]));
          v21 += 2;
        }

        while ((a3 & 0xFFFC) != (v21 * 2));
      }

      goto LABEL_79;
    case 5u:
      if (a3 >= 0x10)
      {
        v14 = 0;
        do
        {
          if (v14)
          {
            v15 = ", ";
          }

          else
          {
            v15 = &unk_1000091B1;
          }

          v16 = inet_ntop(30, a4, v41, 0x2Eu);
          CFStringAppendFormat(a1, 0, @"%s%s", v15, v16);
          ++v14;
          a4 += 8;
        }

        while (a3 >> 4 != v14);
      }

      goto LABEL_71;
    case 6u:
      *v41 = 0;
      v17 = sub_100004930(a4, a3, v41);
      if (v17)
      {
        v18 = v17;
        if (*v41 >= 1)
        {
          v19 = 0;
          do
          {
            if (v19)
            {
              v20 = ", ";
            }

            else
            {
              v20 = &unk_1000091B1;
            }

            CFStringAppendFormat(a1, 0, @"%s%s", v20, *&v18[8 * v19++]);
          }

          while (v19 < *v41);
        }

        free(v18);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" Invalid");
LABEL_69:
        if (a3)
        {
          CFStringAppendFormat(a1, 0, @" Data ");
          sub_1000064C4(a1, a4, a3);
        }
      }

LABEL_71:
      CFStringAppendFormat(a1, 0, @"\n", v35, v36, v39);
      return;
    case 7u:
      if (a3 <= 0xB)
      {
        CFStringAppendFormat(a1, 0, @" IA_NA option is too short %d < %d\n", a3, 12, v39);
        return;
      }

      v28 = a3 - 12;
      CFStringAppendFormat(a1, 0, @" IA_NA IAID=%d T1=%d T2=%d", bswap32(*a4), bswap32(*(a4 + 1)), bswap32(*(a4 + 2)));
      goto LABEL_62;
    case 8u:

      sub_100008614(a1, a4, a3, a5);
      return;
    case 9u:
      if (a3 > 1)
      {
        v31 = bswap32(*a4);
        v32 = HIWORD(v31);
        v33 = (a3 - 2);
        v34 = sub_1000087F4(HIWORD(v31));
        if (v33)
        {
          CFStringAppendFormat(a1, 0, @" STATUS_CODE %s (%d) '%.*s'\n", v34, v32, v33, a4 + 1);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @" STATUS_CODE %s (%d)\n", v34, v32, v39);
        }
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" STATUS_CODE option is too short %d < %d\n", a3, 2, v39);
      }

      return;
    case 0xAu:
      *v41 = CFStringCreateWithBytes(kCFAllocatorDefault, a4, a3, 0x8000100u, 0);
      CFStringAppendFormat(a1, 0, @" %@\n", *v41);
      goto LABEL_57;
    case 0xBu:
      if (a3 <= 0xB)
      {
        CFStringAppendFormat(a1, 0, @" IA_PD option is too short %d < %d\n", a3, 12, v39);
        return;
      }

      v28 = a3 - 12;
      CFStringAppendFormat(a1, 0, @" IA_PD IAID=%d T1=%d T2=%d", bswap32(*a4), bswap32(*(a4 + 1)), bswap32(*(a4 + 2)));
LABEL_62:
      if (!v28)
      {
        goto LABEL_79;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *v41 = 0u;
      v42 = 0u;
      v29 = sub_100007360(a4 + 6, v28, v41);
      if (v29)
      {
        v30 = v29;
        CFStringAppendFormat(a1, 0, @" ");
        sub_1000074F0(a1, v30, (a5 + 1));
        sub_10000622C(v30);
        free(v30);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @" options invalid:\n\t%s\n", v41, v38, v40);
      }

      return;
    case 0xCu:

      sub_100008700(a1, a4, a3, a5);
      return;
    case 0xDu:
      *v41 = sub_100006804(a4, a3);
      CFStringAppendFormat(a1, 0, @"%@\n", *v41);
LABEL_57:
      sub_1000037A0(v41);
      return;
    case 0xEu:
      if (!a3)
      {
        CFStringAppendFormat(a1, 0, @" CLIENT_FQDN option is too short %d < %d\n", a3, 1, v39);
        return;
      }

      v11 = *a4;
      CFStringAppendFormat(a1, 0, @" CLIENT_FQDN flags 0x%x", v11);
      if (!v11)
      {
        goto LABEL_10;
      }

      CFStringAppendFormat(a1, 0, @" [");
      if ((v11 & 4) != 0)
      {
        CFStringAppendFormat(a1, 0, @" N");
        if ((v11 & 2) == 0)
        {
LABEL_7:
          if ((v11 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }
      }

      else if ((v11 & 2) == 0)
      {
        goto LABEL_7;
      }

      CFStringAppendFormat(a1, 0, @" O");
      if (v11)
      {
LABEL_8:
        CFStringAppendFormat(a1, 0, @" S");
      }

LABEL_9:
      CFStringAppendFormat(a1, 0, @" ]");
LABEL_10:
      v12 = a3 - 1;
      printf("LENGTH %d\n", v12);
      if (v12)
      {
        v13 = sub_100004E54(a4 + 1, v12, 1);
        SCPrint();
        if (v13)
        {
          CFStringAppendFormat(a1, 0, @" domain-name %@", v13);
          CFRelease(v13);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @" domain-name bad, raw bytes <", 0);
          sub_1000064C4(a1, a4 + 1, v12);
          CFStringAppendFormat(a1, 0, @">");
        }
      }

LABEL_79:

      CFStringAppendFormat(a1, 0, @"\n");
      return;
    default:
      goto LABEL_69;
  }
}

void sub_100008614(CFMutableStringRef theString, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 23)
  {
    v5 = a4;
    v7 = a3 - 24;
    v8 = inet_ntop(30, a2, v12, 0x2Eu);
    CFStringAppendFormat(theString, 0, @" IAADDR %s Preferred %d Valid=%d", v8, bswap32(*(a2 + 4)), bswap32(*(a2 + 5)));
    if (v7)
    {
      sub_100008818(theString, a2 + 12, v7, v5);
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"\n", v9, v10, v11);
    }
  }

  else
  {
    CFStringAppendFormat(theString, 0, @" IAADDR option is too short %d < %d\n", a4, a3, 24);
  }
}

void sub_100008700(CFMutableStringRef theString, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 24)
  {
    v5 = a4;
    v7 = a3 - 25;
    v8 = inet_ntop(30, (a2 + 9), v12, 0x2Eu);
    CFStringAppendFormat(theString, 0, @" IAPREFIX %s/%d Preferred %d Valid=%d", v8, *(a2 + 8), bswap32(*a2), bswap32(*(a2 + 4)));
    if (v7)
    {
      sub_100008818(theString, (a2 + 25), v7, v5);
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"\n", v9, v10, v11);
    }
  }

  else
  {
    CFStringAppendFormat(theString, 0, @" IAPREFIX option is too short %d < %d\n", a4, a3, 25);
  }
}

const char *sub_1000087F4(unsigned int a1)
{
  if (a1 > 0x16)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_10000C548)[a1];
  }
}

void sub_100008818(__CFString *a1, unsigned __int16 *a2, signed int a3, int a4)
{
  memset(v8, 0, sizeof(v8));
  v6 = sub_100007360(a2, a3, v8);
  if (v6)
  {
    v7 = v6;
    CFStringAppendFormat(a1, 0, @" ");
    sub_1000074F0(a1, v7, (a4 + 1));
    sub_10000622C(v7);
    free(v7);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" options invalid:\n\t%s\n", v8);
  }
}