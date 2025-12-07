uint64_t sub_100059528(const __CFString *a1, const void *a2)
{
  v4 = _SCNetworkInterfaceCreateWithBSDName();
  if (v4)
  {
    v5 = v4;
    v6 = SCNetworkInterfaceSupportsLowDataMode();
    CFRelease(v5);
    if (v6)
    {
      TypeID = CFDictionaryGetTypeID();
      v10 = a2 && CFGetTypeID(a2) == TypeID && (valuePtr = 0, Value = CFDictionaryGetValue(a2, kSCPropEnableLowDataMode), v9 = CFNumberGetTypeID(), Value) && CFGetTypeID(Value) == v9 && CFNumberGetValue(Value, kCFNumberIntType, &valuePtr) && valuePtr != 0;
      return sub_10005B668(a1, v10);
    }

    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v16 = _os_log_pack_size();
      v17 = &v20[-((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "LowDataMode not supported with %@");
      *v19 = 138412290;
      *(v19 + 4) = a1;
      return __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v12 = _os_log_pack_size();
      v13 = &v20[-((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "Failed to create SCNetworkInterface for %@");
      *v15 = 138412290;
      *(v15 + 4) = a1;
      return __SC_log_send();
    }
  }

  return result;
}

const __CFString *sub_1000597CC(int a1)
{
  result = sub_100059E44();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      v4 = a1 == 2;
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return sub_10005A03C(v3, v4);
      }

      v5 = _os_log_pack_size();
      v6 = &v15 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%@: Wi-Fi using %sexpensive override");
      v9 = "in";
      if (a1 == 2)
      {
        v9 = "";
      }

      *v8 = 138412546;
      *(v8 + 4) = v3;
      *(v8 + 12) = 2080;
      *(v8 + 14) = v9;
    }

    else
    {
      v4 = sub_10005BAA0();
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return sub_10005A03C(v3, v4);
      }

      v10 = _os_log_pack_size();
      v11 = &v15 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "%@: Wi-Fi is %sexpensive");
      v14 = "";
      if (!v4)
      {
        v14 = "in";
      }

      *v13 = 138412546;
      *(v13 + 4) = v3;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v14;
    }

    __SC_log_send();
    return sub_10005A03C(v3, v4);
  }

  return result;
}

void sub_100059A40()
{
  if (qword_100081C50)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      v1 = &v3 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
      v2 = __error();
      *_os_log_pack_fill(v1, v0, *v2, &_mh_execute_header, "Wi-Fi expensive timer cancelled") = 0;
      __SC_log_send();
    }

    dispatch_source_cancel(qword_100081C50);
    dispatch_release(qword_100081C50);
    qword_100081C50 = 0;
  }
}

void sub_100059B80(const __CFDate *a1)
{
  sub_100059A40();
  if (!qword_100081C38)
  {
    qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = v15 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "Wi-Fi expensive expiration time %@");
    *v5 = 138412290;
    *(v5 + 4) = a1;
    __SC_log_send();
  }

  Current = CFAbsoluteTimeGetCurrent();
  AbsoluteTime = CFDateGetAbsoluteTime(a1);
  if (!qword_100081C38)
  {
    qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
  }

  v8 = AbsoluteTime - Current;
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v9 = _os_log_pack_size();
    v10 = v15 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "expiration %g - now %g = %g", v15[0], v15[1], v15[2]);
    *v12 = 134218496;
    *(v12 + 4) = AbsoluteTime;
    *(v12 + 12) = 2048;
    *(v12 + 14) = Current;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v8;
    __SC_log_send();
  }

  v13 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (v8 * 1000000000.0));
  v14 = qword_100081C58;
  if (!qword_100081C58)
  {
    v14 = dispatch_queue_create("com.apple.SystemConfiguration.LinkConfiguration", 0);
    qword_100081C58 = v14;
  }

  qword_100081C50 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
  dispatch_source_set_event_handler(qword_100081C50, &stru_10007B2D0);
  dispatch_source_set_timer(qword_100081C50, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(qword_100081C50);
}

uint64_t sub_100059E44()
{
  if (qword_100081C48)
  {
    return qword_100081C48;
  }

  v0 = SCNetworkInterfaceCopyAll();
  if (!v0)
  {
LABEL_10:
    qword_100081C48 = 0;
    return qword_100081C48;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
LABEL_9:
    CFRelease(v1);
    goto LABEL_10;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
    if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
    {
      if (BSDName && CFStringHasPrefix(BSDName, @"en"))
      {
        break;
      }
    }

    if (v3 == ++v4)
    {
      goto LABEL_9;
    }
  }

  v9 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
  CFRetain(v9);
  CFRelease(v1);
  qword_100081C48 = v9;
  if (v9)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      v11 = &v15 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "Wi-Fi is %@");
      v14 = qword_100081C48;
      *v13 = 138412290;
      *(v13 + 4) = v14;
      __SC_log_send();
    }
  }

  return qword_100081C48;
}

uint64_t sub_10005A03C(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  result = sub_10005A2BC("set_expensive");
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    if (CFStringGetCString(a1, buffer, 16, 0x8000100u))
    {
      result = sub_10005A438(v5, buffer, v2);
      if ((result & 0x80000000) == 0)
      {
        if (!qword_100081C38)
        {
          qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v6 = _os_log_pack_size();
          v7 = &buffer[-((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v8 = __error();
          v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "%s expensive on %s success", v15, *buffer);
          v10 = "enable";
          if (!v2)
          {
            v10 = "disable";
          }

          *v9 = 136315394;
          *(v9 + 4) = v10;
          *(v9 + 12) = 2080;
          *(v9 + 14) = buffer;
          return __SC_log_send();
        }
      }
    }

    else
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v11 = _os_log_pack_size();
        v12 = &buffer[-((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v13 = __error();
        v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "%s: can't convert %@ to string");
        *v14 = 136315394;
        *(v14 + 4) = "set_expensive";
        *(v14 + 12) = 2112;
        *(v14 + 14) = a1;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_10005A2BC(uint64_t a1)
{
  if (dword_1000816A0 < 0)
  {
    dword_1000816A0 = socket(2, 2, 0);
    if (dword_1000816A0 < 0)
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        v3 = v9 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        v4 = __error();
        v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "%s: socket() failed: %s", v9[0], v9[1]);
        v6 = __error();
        v7 = strerror(*v6);
        *v5 = 136315394;
        *(v5 + 4) = a1;
        *(v5 + 12) = 2080;
        *(v5 + 14) = v7;
        __SC_log_send();
      }
    }
  }

  return dword_1000816A0;
}

uint64_t sub_10005A438(int a1, uint64_t a2, int a3)
{
  v15 = 0u;
  v16 = 0u;
  __strlcpy_chk();
  LODWORD(v16) = a3 != 0;
  v6 = ioctl(a1, 0xC02069A1uLL, &v15);
  if ((v6 & 0x80000000) != 0)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v15 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "ioctl(%s, SIOCSIFEXPENSIVE %u failed, %s", v15, DWORD2(v15), v16);
      v11 = v16;
      v12 = __error();
      v13 = strerror(*v12);
      *v10 = 136315650;
      *(v10 + 4) = a2;
      *(v10 + 12) = 1024;
      *(v10 + 14) = v11;
      *(v10 + 18) = 2080;
      *(v10 + 20) = v13;
      __SC_log_send();
    }
  }

  return v6;
}

void sub_10005A5F0(id a1)
{
  sub_1000597CC(0);
  sub_100059A40();
  if ((dword_1000816A0 & 0x80000000) == 0)
  {
    close(dword_1000816A0);
    dword_1000816A0 = -1;
  }
}

uint64_t sub_10005A664(const __SCNetworkInterface *a1, uint64_t a2)
{
  result = SCNetworkInterfaceGetBSDName(a1);
  if (result)
  {
    v3 = result;
    result = __SCNetworkInterfaceCreateCapabilities();
    if (result != -1)
    {
      v4 = result;
      valuePtr = result;
      Value = CFDictionaryGetValue(qword_100081C18, v3);
      if (Value)
      {
        v6 = CFDictionaryGetValue(Value, @"_CAPABILITIES_");
        if (v6)
        {
          CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
        }
      }

      result = __SCNetworkInterfaceCreateCapabilities();
      if (result != v4)
      {
        v7 = result;
        v16 = 0u;
        v17 = 0u;
        _SC_cfstring_to_cstring();
        *&v17 = __PAIR64__(v4, v7);
        result = sub_10005A2BC("_SCNetworkInterfaceSetCapabilities");
        if (result != -1)
        {
          result = ioctl(result, 0x8020695AuLL, &v16);
          if (result == -1)
          {
            if (!qword_100081C38)
            {
              qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
            }

            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (result)
            {
              v8 = _os_log_pack_size();
              v9 = &v14 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
              v10 = __error();
              v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "%@: ioctl(SIOCSIFCAP) failed: %s");
              v12 = __error();
              v13 = strerror(*v12);
              *v11 = 138412546;
              *(v11 + 4) = v3;
              *(v11 + 12) = 2080;
              *(v11 + 14) = v13;
              return __SC_log_send();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_10005A888(const __SCNetworkInterface *a1, const void *a2)
{
  current = 0;
  available = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    v53 = 0u;
    memset(v54, 0, sizeof(v54));
    v51 = 0u;
    v52 = 0u;
    BSDName = SCNetworkInterfaceGetBSDName(a1);
    if (BSDName)
    {
      v6 = BSDName;
      if (SCNetworkInterfaceCopyMediaOptions(a1, &current, 0, &available, 0))
      {
        v7 = sub_10005B2BC(a2);
        if (v7 || (Value = CFDictionaryGetValue(qword_100081C18, v6), (v7 = sub_10005B2BC(Value)) != 0))
        {
          v9 = v7;
        }

        else
        {
          v9 = sub_10005B2BC(current);
          if (!v9)
          {
            v42 = 1;
LABEL_52:
            if (available)
            {
              CFRelease(available);
            }

            if (current)
            {
              CFRelease(current);
            }

            if ((v42 & 1) == 0)
            {
              CFRelease(v9);
            }

            return;
          }
        }

        if (!current || !CFEqual(current, v9))
        {
          v10 = available;
          v56.length = CFArrayGetCount(available);
          v56.location = 0;
          if (CFArrayContainsValue(v10, v56, v9))
          {
            MediaOptions = __SCNetworkInterfaceCreateMediaOptions();
            if (MediaOptions == -1)
            {
              goto LABEL_51;
            }

            v12 = MediaOptions;
            v13 = sub_10005A2BC("_SCNetworkInterfaceSetMediaOptions");
            if (v13 == -1)
            {
              goto LABEL_51;
            }

            v14 = v13;
            v53 = 0u;
            memset(v54, 0, sizeof(v54));
            _SC_cfstring_to_cstring();
            if (ioctl(v14, 0xC02C6948uLL, &v53) == -1)
            {
              if (!qword_100081C38)
              {
                qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
              }

              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_51;
              }

              v43 = _os_log_pack_size();
              v44 = &current - ((__chkstk_darwin(v43) + 15) & 0xFFFFFFFFFFFFFFF0);
              v45 = *__error();
              v29 = _os_log_pack_fill(v44, v43, v45, &_mh_execute_header, "%@: ioctl(SIOCGIFXMEDIA) failed: %s", current);
            }

            else
            {
              v51 = v53;
              v15 = v54[0] & 0xF0000000 | v12;
              v52 = v54[0] & 0xF0000000 | v12;
              if (!qword_100081C38)
              {
                qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
              }

              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v16 = _os_log_pack_size();
                v17 = &current - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
                v18 = __error();
                v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "old media settings: 0x%8.8x (0x%8.8x)", current, available);
                v20 = v54[0];
                v21 = v54[3];
                *v19 = 67109376;
                *(v19 + 4) = v20;
                *(v19 + 8) = 1024;
                *(v19 + 10) = v21;
                __SC_log_send();
              }

              if (!qword_100081C38)
              {
                qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
              }

              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v22 = _os_log_pack_size();
                v23 = &current - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
                v24 = __error();
                v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "new media settings: 0x%8.8x", current);
                *v25 = 67109120;
                v25[1] = v15;
                __SC_log_send();
              }

              if (ioctl(v14, 0xC0206937uLL, &v51) != -1)
              {
                goto LABEL_51;
              }

              if (!qword_100081C38)
              {
                qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
              }

              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_51;
              }

              v26 = _os_log_pack_size();
              v27 = &current - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
              v28 = *__error();
              v29 = _os_log_pack_fill(v27, v26, v28, &_mh_execute_header, "%@: ioctl(SIOCSIFMEDIA) failed: %s", current);
            }

            v46 = v29;
            v47 = __error();
            v48 = strerror(*v47);
            *v46 = 138412546;
            *(v46 + 4) = v6;
            *(v46 + 12) = 2080;
            *(v46 + 14) = v48;
          }

          else
          {
            if (!qword_100081C38)
            {
              qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
            }

            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_51;
            }

            v38 = _os_log_pack_size();
            v39 = &current - ((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0);
            v40 = __error();
            v41 = _os_log_pack_fill(v39, v38, *v40, &_mh_execute_header, "requested media settings unavailable for %@");
            *v41 = 138412290;
            *(v41 + 4) = v6;
          }

          __SC_log_send();
        }

LABEL_51:
        v42 = 0;
        goto LABEL_52;
      }

      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v34 = _os_log_pack_size();
        v35 = &current - ((__chkstk_darwin(v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = __error();
        v37 = _os_log_pack_fill(v35, v34, *v36, &_mh_execute_header, "no media options for %@");
        *v37 = 138412290;
        *(v37 + 4) = v6;
        __SC_log_send();
      }
    }

    else
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v30 = _os_log_pack_size();
        v31 = &current - ((__chkstk_darwin(v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        v32 = __error();
        v33 = _os_log_pack_fill(v31, v30, *v32, &_mh_execute_header, "no BSD interface name for %@");
        *v33 = 138412290;
        *(v33 + 4) = a1;
        __SC_log_send();
      }

      _SCErrorSet();
    }
  }

  else
  {

    _SCErrorSet();
  }
}

void sub_10005B088(const __SCNetworkInterface *a1, const void *a2)
{
  mtu_max = -1;
  mtu_cur = -1;
  mtu_min = -1;
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {
    v5 = BSDName;
    valuePtr = 0;
    if (SCNetworkInterfaceCopyMTU(a1, &mtu_cur, &mtu_min, &mtu_max))
    {
      if ((TypeID = CFDictionaryGetTypeID(), a2) && CFGetTypeID(a2) == TypeID && (Value = CFDictionaryGetValue(a2, kSCPropNetEthernetMTU), v8 = CFNumberGetTypeID(), Value) && CFGetTypeID(Value) == v8 || (v9 = CFDictionaryGetValue(qword_100081C18, v5)) != 0 && (Value = CFDictionaryGetValue(v9, kSCPropNetEthernetMTU)) != 0)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        if (valuePtr != mtu_cur && (mtu_min < 0 || valuePtr >= mtu_min) && (mtu_max < 0 || valuePtr <= mtu_max))
        {
          InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
          if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeBridge) && (MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces()) != 0 && (v12 = MemberInterfaces, CFArrayGetCount(MemberInterfaces)))
          {
            CFRetain(v12);
            if (SCBridgeInterfaceSetMemberInterfaces() && _SCBridgeInterfaceUpdateConfiguration())
            {
              sub_10005B3F4(v5, valuePtr);
              v13 = 0;
            }

            else
            {
              v13 = 1;
            }

            Count = CFArrayGetCount(v12);
            if (Count >= 1)
            {
              v15 = Count;
              for (i = 0; i != v15; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
                v18 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
                sub_10005B3F4(v18, valuePtr);
              }
            }

            SCBridgeInterfaceSetMemberInterfaces();
            CFRelease(v12);
            if ((v13 & 1) == 0)
            {
              _SCBridgeInterfaceUpdateConfiguration();
            }
          }

          else
          {
            sub_10005B3F4(v5, valuePtr);
          }
        }
      }
    }
  }
}

__CFDictionary *sub_10005B2BC(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, kSCPropNetEthernetMediaSubType);
  v4 = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != v4)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSCPropNetEthernetMediaSubType, Value);
  v6 = CFDictionaryGetValue(a1, kSCPropNetEthernetMediaOptions);
  v7 = CFArrayGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
    CFRelease(Mutable);
    return 0;
  }

  CFDictionaryAddValue(Mutable, kSCPropNetEthernetMediaOptions, v6);
  return Mutable;
}

uint64_t sub_10005B3F4(uint64_t a1, int a2)
{
  v15 = 0u;
  v16 = 0u;
  _SC_cfstring_to_cstring();
  LODWORD(v16) = a2;
  result = sub_10005A2BC("interfaceSetMTU");
  if (result != -1)
  {
    if (ioctl(result, 0x80206934uLL, &v15) == -1)
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v9 = _os_log_pack_size();
        v10 = &v15 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = __error();
        v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "%@: ioctl(SIOCSIFMTU) failed: %s", v15, v16);
        v13 = __error();
        v14 = strerror(*v13);
        *v12 = 138412546;
        *(v12 + 4) = a1;
        *(v12 + 12) = 2080;
        *(v12 + 14) = v14;
        return __SC_log_send();
      }
    }

    else
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v5 = _os_log_pack_size();
        v6 = &v15 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = __error();
        v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%@: set MTU to %d", v15, v16);
        *v8 = 138412546;
        *(v8 + 4) = a1;
        *(v8 + 12) = 1024;
        *(v8 + 14) = a2;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_10005B668(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  result = sub_10005A2BC("set_low_data_mode");
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    if (CFStringGetCString(a1, buffer, 16, 0x8000100u))
    {
      result = sub_10005B8E8(v5, buffer, v2);
      if ((result & 0x80000000) == 0)
      {
        if (!qword_100081C38)
        {
          qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v6 = _os_log_pack_size();
          v7 = &buffer[-((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          v8 = __error();
          v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "%s LowDataMode on %s", v15, *buffer);
          v10 = "enable";
          if (!v2)
          {
            v10 = "disable";
          }

          *v9 = 136315394;
          *(v9 + 4) = v10;
          *(v9 + 12) = 2080;
          *(v9 + 14) = buffer;
          return __SC_log_send();
        }
      }
    }

    else
    {
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v11 = _os_log_pack_size();
        v12 = &buffer[-((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v13 = __error();
        v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "%s: can't convert %@ to string");
        *v14 = 136315394;
        *(v14 + 4) = "set_low_data_mode";
        *(v14 + 12) = 2112;
        *(v14 + 14) = a1;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_10005B8E8(int a1, uint64_t a2, int a3)
{
  v15 = 0u;
  v16 = 0u;
  __strlcpy_chk();
  LODWORD(v16) = a3 != 0;
  v6 = ioctl(a1, 0xC02069CDuLL, &v15);
  if ((v6 & 0x80000000) != 0)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v15 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "ioctl(%s, SIOCSIFCONSTRAINED %u failed, %s", v15, DWORD2(v15), v16);
      v11 = v16;
      v12 = __error();
      v13 = strerror(*v12);
      *v10 = 136315650;
      *(v10 + 4) = a2;
      *(v10 + 12) = 1024;
      *(v10 + 14) = v11;
      *(v10 + 18) = 2080;
      *(v10 + 20) = v13;
      __SC_log_send();
    }
  }

  return v6;
}

id sub_10005BAA0()
{
  if (!objc_opt_class())
  {
    return 0;
  }

  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CWFInterface);
  [v1 activate];
  v2 = [objc_msgSend(v1 "currentScanResult")];
  [v1 invalidate];

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_10005BB50(uint64_t a1, uint64_t a2)
{
  if (qword_100081C60)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v3 = _os_log_pack_size();
      v4 = handler - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = *__error();
      v6 = _os_log_pack_fill(v4, v3, v5, &_mh_execute_header, "CategoryManagerServer: server already started");
LABEL_4:
      *v6 = 0;
      __SC_log_send();
      return 0;
    }
  }

  else
  {
    qword_100081C68 = a1;
    qword_100081C70 = a2;
    v7 = qword_100081C78;
    if (!qword_100081C78)
    {
      v7 = dispatch_queue_create("CategoryManagerServer", 0);
      qword_100081C78 = v7;
    }

    mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.NetworkCategoryManager", v7, 1uLL);
    if (mach_service)
    {
      v9 = mach_service;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_10005C11C;
      handler[3] = &unk_10007B338;
      handler[4] = mach_service;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_activate(v9);
      qword_100081C60 = v9;
      if (!qword_100081C78)
      {
        qword_100081C78 = dispatch_queue_create("CategoryManagerServer", 0);
      }

      os_state_add_handler();
      return 1;
    }

    else
    {
      qword_100081C60 = 0;
      qword_100081C68 = 0;
      qword_100081C70 = 0;
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v10 = _os_log_pack_size();
        v11 = handler - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = *__error();
        v6 = _os_log_pack_fill(v11, v10, v12, &_mh_execute_header, "CategoryManagerServer: failed to create server");
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_10005BDBC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10005BEAC;
  v3[3] = &unk_10007B2F8;
  v3[4] = &v4;
  v0 = qword_100081C78;
  if (!qword_100081C78)
  {
    v0 = dispatch_queue_create("CategoryManagerServer", 0);
    qword_100081C78 = v0;
  }

  dispatch_sync(v0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10005BEAC(uint64_t a1)
{
  v2 = S_CategorySessions;
  if (S_CategorySessions)
  {
    Mutable = 0;
    do
    {
      v4 = sub_10005DFB0(v2);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      }

      CFArrayAppendValue(Mutable, v4);
      CFRelease(v4);
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
}

void sub_10005BF7C(uint64_t a1)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 0x40000000;
    v2[2] = sub_10005C040;
    v2[3] = &unk_10007B318;
    v2[4] = a1;
    v1 = qword_100081C78;
    if (!qword_100081C78)
    {
      v1 = dispatch_queue_create("CategoryManagerServer", 0);
      qword_100081C78 = v1;
    }

    dispatch_sync(v1, v2);
  }
}

CFIndex sub_10005C040(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = CFArrayGetCount(v1);
  if (result >= 1)
  {
    v3 = result;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      result = sub_10005E250(ValueAtIndex);
      if (result)
      {
        v4 = 1;
      }
    }

    if (v4)
    {

      return sub_10005E5C0();
    }
  }

  return result;
}

void sub_10005C11C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10005C438;
    handler[3] = &unk_10007B358;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    v11 = qword_100081C78;
    if (!qword_100081C78)
    {
      v11 = dispatch_queue_create("CategoryManagerServer", 0);
      qword_100081C78 = v11;
    }

    xpc_connection_set_target_queue(object, v11);
    xpc_connection_activate(object);
  }

  else
  {
    string = type;
    if (type != &_xpc_type_error)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      v6 = _os_log_pack_size();
      v7 = handler - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "unknown event %p", handler[0]);
      v10 = 134217984;
LABEL_11:
      *v9 = v10;
      *(v9 + 4) = string;
      __SC_log_send();
      return;
    }

    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    v12 = __SC_log_enabled();
    if (object != &_xpc_error_connection_invalid)
    {
      if (!v12)
      {
        return;
      }

      v13 = _os_log_pack_size();
      v14 = handler - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v9 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "%s", handler[0]);
      v10 = 136315138;
      goto LABEL_11;
    }

    if (v12)
    {
      v16 = _os_log_pack_size();
      v17 = handler - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%s", handler[0]);
      *v19 = 136315138;
      *(v19 + 4) = string;
      __SC_log_send();
    }

    xpc_release(*(a1 + 32));
  }
}

void sub_10005C438(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);

  sub_10005C494(v2, a2);
}

void sub_10005C494(_xpc_connection_s *a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "Type");
    reply = xpc_dictionary_create_reply(object);
    v11 = reply;
    if (int64 != 3)
    {
      if (int64 == 2)
      {
        v12 = sub_10005CD0C(a1, object);
        if (!v11)
        {
          return;
        }
      }

      else if (int64 == 1)
      {
        v12 = sub_10005C828(a1, object);
        if (!v11)
        {
          return;
        }
      }

      else
      {
        v12 = 22;
        if (!v11)
        {
          return;
        }
      }

      goto LABEL_27;
    }

    if (!reply)
    {
      return;
    }

    context = xpc_connection_get_context(a1);
    if (context)
    {
      if (context != kCFBooleanTrue && context != kCFBooleanFalse)
      {
        goto LABEL_23;
      }
    }

    if (sub_10005D7AC(a1))
    {
      string = xpc_dictionary_get_string(object, "Category");
      if (string)
      {
        v21 = string;
        v22 = xpc_dictionary_get_string(object, "InterfaceName");
        context = sub_10005D138(v21, v22);
        if (context)
        {
LABEL_23:
          v18 = *(context + 9);
          if (v18)
          {
            xpc_dictionary_set_string(v11, "ActiveValue", v18);
          }

          v12 = 0;
          goto LABEL_27;
        }

        v12 = 2;
      }

      else
      {
        v12 = 22;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_27:
    xpc_dictionary_set_int64(v11, "Error", v12);
    remote_connection = xpc_dictionary_get_remote_connection(object);
    xpc_connection_send_message(remote_connection, v11);

    xpc_release(v11);
    return;
  }

  if (type == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {

      sub_10005CFF4(a1);
    }

    else if (object == &_xpc_error_connection_interrupted)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        v14 = &v23 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        v15 = *__error();
        v8 = _os_log_pack_fill(v14, v13, v15, &_mh_execute_header, "connection interrupted");
        goto LABEL_5;
      }
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v23 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = *__error();
      v8 = _os_log_pack_fill(v6, v5, v7, &_mh_execute_header, "unexpected event");
LABEL_5:
      *v8 = 0;
      __SC_log_send();
    }
  }
}

uint64_t sub_10005C828(_xpc_connection_s *a1, void *a2)
{
  if (xpc_connection_get_context(a1))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &v35 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "%s: connection %p pid %d trying to register again", v35, v36, v37);
      pid = xpc_connection_get_pid(a1);
      *v7 = 136315650;
      *(v7 + 4) = "HandleRegister";
      *(v7 + 12) = 2048;
      *(v7 + 14) = a1;
      *(v7 + 22) = 1024;
      *(v7 + 24) = pid;
      __SC_log_send();
      return 22;
    }

    return 22;
  }

  if (sub_10005D558(a1, "com.apple.private.SCNetworkCategoryManager.manager"))
  {
    string = xpc_dictionary_get_string(a2, "Category");
    if (!string)
    {
      return 22;
    }

    v11 = string;
    v12 = xpc_dictionary_get_string(a2, "InterfaceName");
    int64 = xpc_dictionary_get_int64(a2, "Flags");
    if (!int64 || (result = 22, int64 == 1) && v12)
    {
      if (sub_10005D138(v11, v12))
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v14 = _os_log_pack_size();
          v15 = &v35 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
          v16 = __error();
          v17 = _os_log_pack_fill(v15, v14, *v16, &_mh_execute_header, "connection %p pid %d category %s already exists", v35, v36, v37);
          v18 = xpc_connection_get_pid(a1);
          *v17 = 134218498;
          *(v17 + 4) = a1;
          *(v17 + 12) = 1024;
          *(v17 + 14) = v18;
          *(v17 + 18) = 2080;
          *(v17 + 20) = v11;
          __SC_log_send();
        }

        return 17;
      }

      else
      {
        v24 = xpc_dictionary_get_string(a2, "ProcessName");
        v25 = sub_10005D1D8(a1, v24, v11, v12, int64);
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v26 = _os_log_pack_size();
          v27 = &v35 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
          v28 = __error();
          v29 = _os_log_pack_fill(v27, v26, *v28, &_mh_execute_header, "CategoryManager[Register]: %s[%d] category %s interface %s%s", v35, v36, v37, v38, v39);
          v30 = *(v25 + 7);
          v31 = *(v25 + 4);
          v32 = *(v25 + 5);
          v33 = "<any>";
          if (v12)
          {
            v33 = v12;
          }

          *v29 = 136316162;
          *(v29 + 4) = v31;
          if (int64)
          {
            v34 = " [no_default]";
          }

          else
          {
            v34 = "";
          }

          *(v29 + 12) = 1024;
          *(v29 + 14) = v30;
          *(v29 + 18) = 2080;
          *(v29 + 20) = v32;
          *(v29 + 28) = 2080;
          *(v29 + 30) = v33;
          *(v29 + 38) = 2080;
          *(v29 + 40) = v34;
          __SC_log_send();
        }

        sub_10005D424();
        return 0;
      }
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = &v35 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "%s: connection %p pid %d permission denied", v35, v36, v37);
      v23 = xpc_connection_get_pid(a1);
      *v22 = 136315650;
      *(v22 + 4) = "HandleRegister";
      *(v22 + 12) = 2048;
      *(v22 + 14) = a1;
      *(v22 + 22) = 1024;
      *(v22 + 24) = v23;
      __SC_log_send();
    }

    xpc_connection_set_context(a1, kCFBooleanFalse);
    return 1;
  }

  return result;
}

uint64_t sub_10005CD0C(_xpc_connection_s *a1, void *a2)
{
  context = xpc_connection_get_context(a1);
  if (context)
  {
    v5 = context;
    if (context != kCFBooleanTrue && context != kCFBooleanFalse)
    {
      string = xpc_dictionary_get_string(a2, "Value");
      v8 = string;
      v9 = *(v5 + 8);
      if (string && v9)
      {
        v10 = strcmp(*(v5 + 8), string) != 0;
      }

      else
      {
        v10 = (string | v9) != 0;
        if (!string)
        {
          v16 = 0;
          v17 = 1;
          if (!v9)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }

      v16 = strdup(v8);
      v17 = 0;
      if (!v9)
      {
LABEL_15:
        *(v5 + 8) = v16;
        if (v10)
        {
          v18 = *(v5 + 6);
          sub_10005E6F8();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v19 = _os_log_pack_size();
            v20 = &v28 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
            v21 = __error();
            v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "CategoryManager[ActivateValue]: %s[%d] category %s interface %s value %s", v28, v29, v30, v31, v32);
            v23 = *(v5 + 7);
            v24 = *(v5 + 4);
            v25 = *(v5 + 5);
            v26 = "<any>";
            if (v18)
            {
              v26 = v18;
            }

            v27 = "<none>";
            *v22 = 136316162;
            if (!v17)
            {
              v27 = v8;
            }

            *(v22 + 4) = v24;
            *(v22 + 12) = 1024;
            *(v22 + 14) = v23;
            *(v22 + 18) = 2080;
            *(v22 + 20) = v25;
            *(v22 + 28) = 2080;
            *(v22 + 30) = v26;
            *(v22 + 38) = 2080;
            *(v22 + 40) = v27;
            __SC_log_send();
          }

          sub_10005D424();
        }

        return 0;
      }

LABEL_14:
      free(v9);
      goto LABEL_15;
    }
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v11 = _os_log_pack_size();
    v12 = &v28 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "CategoryManager[ActivateValue]: no session %p", v28);
    *v14 = 134217984;
    *(v14 + 4) = a1;
    __SC_log_send();
  }

  return 22;
}

void sub_10005CFF4(_xpc_connection_s *a1)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v8 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "CategoryManagerServer: client %p went away", v8);
    *v5 = 134217984;
    *(v5 + 4) = a1;
    __SC_log_send();
  }

  context = xpc_connection_get_context(a1);
  if (context)
  {
    if (context != kCFBooleanTrue && context != kCFBooleanFalse)
    {
      sub_10005DBF0(context);
    }
  }
}

uint64_t sub_10005D138(char *__s2, const char *a2)
{
  for (i = S_CategorySessions; i; i = *i)
  {
    if (!strcmp(*(i + 40), __s2))
    {
      if (!a2)
      {
        break;
      }

      v5 = *(i + 48);
      if (!v5 || !strcmp(a2, v5))
      {
        break;
      }
    }
  }

  return i;
}

_OWORD *sub_10005D1D8(_xpc_connection_s *a1, const char *a2, const char *a3, const char *a4, int a5)
{
  v10 = malloc_type_malloc(0x50uLL, 0x10B0040F25E0655uLL);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  *(v10 + 2) = a1;
  *(v10 + 7) = xpc_connection_get_pid(a1);
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = "<unknown>";
  }

  *(v10 + 4) = strdup(v11);
  *(v10 + 5) = strdup(a3);
  *(v10 + 14) = a5;
  if (a4)
  {
    *(v10 + 6) = strdup(a4);
  }

  xpc_connection_set_finalizer_f(a1, sub_10005D610);
  xpc_connection_set_context(a1, v10);
  v12 = S_CategorySessions;
  *v10 = S_CategorySessions;
  if (v12)
  {
    *(v12 + 8) = v10;
  }

  S_CategorySessions = v10;
  *(v10 + 1) = &S_CategorySessions;
  *(v10 + 24) = 1;
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v13 = _os_log_pack_size();
    v14 = v22 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "%s: created %s [%d] category %s ifname %s session %p (connection %p)", v22[0], v22[1], v23, v24, v25, v26, v27);
    v17 = *(v10 + 7);
    v18 = "<any>";
    v19 = *(v10 + 4);
    v20 = *(v10 + 5);
    if (a4)
    {
      v18 = a4;
    }

    *v16 = 136316674;
    *(v16 + 4) = "CategorySessionCreate";
    *(v16 + 12) = 2080;
    *(v16 + 14) = v19;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v17;
    *(v16 + 28) = 2080;
    *(v16 + 30) = v20;
    *(v16 + 38) = 2080;
    *(v16 + 40) = v18;
    *(v16 + 48) = 2048;
    *(v16 + 50) = v10;
    *(v16 + 58) = 2048;
    *(v16 + 60) = a1;
    __SC_log_send();
  }

  return v10;
}

void sub_10005D424()
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    v1 = &v4 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
    v2 = __error();
    v3 = _os_log_pack_fill(v1, v0, *v2, &_mh_execute_header, "%s\n", v4);
    *v3 = 136315138;
    *(v3 + 4) = "SendNotification";
    __SC_log_send();
  }

  if (qword_100081C70)
  {
    CFRunLoopSourceSignal(qword_100081C70);
    if (qword_100081C68)
    {
      CFRunLoopWakeUp(qword_100081C68);
    }
  }
}

BOOL sub_10005D558(_xpc_connection_s *a1, uint64_t a2)
{
  if (!xpc_connection_get_euid(a1))
  {
    return 1;
  }

  v2 = xpc_connection_copy_entitlement_value();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = xpc_get_type(v2) == &_xpc_type_BOOL && xpc_BOOL_get_value(v3);
  xpc_release(v3);
  return v4;
}

void sub_10005D610(uint64_t a1)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = v12 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "%s: releasing %s [%d] %s session %p", v12[0], v12[1], v13, v14, v15);
    v6 = *(a1 + 28);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *v5 = 136316162;
    *(v5 + 4) = "CategorySessionRelease";
    *(v5 + 12) = 2080;
    *(v5 + 14) = v7;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v6;
    *(v5 + 28) = 2080;
    *(v5 + 30) = v8;
    *(v5 + 38) = 2048;
    *(v5 + 40) = a1;
    __SC_log_send();
  }

  free(*(a1 + 32));
  free(*(a1 + 40));
  v9 = *(a1 + 48);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 64) = 0;
  v11 = *(a1 + 72);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 72) = 0;
  if (*(a1 + 24))
  {
    sub_1000683CC();
  }

  free(a1);
}

uint64_t sub_10005D7AC(_xpc_connection_s *a1)
{
  context = xpc_connection_get_context(a1);
  if (context)
  {
    if (context == kCFBooleanFalse)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        return result;
      }

      v15 = _os_log_pack_size();
      v16 = &v25 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "%s: connection %p pid %d permission denied", v25, v26, v27);
      pid = xpc_connection_get_pid(a1);
      *v18 = 136315650;
      *(v18 + 4) = "connectionAllowManagerObserverAccess";
      *(v18 + 12) = 2048;
      *(v18 + 14) = a1;
      *(v18 + 22) = 1024;
      *(v18 + 24) = pid;
      __SC_log_send();
    }

    else if (context == kCFBooleanTrue)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v3 = _os_log_pack_size();
        v4 = &v25 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        v5 = __error();
        v6 = _os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "%s: connection %p pid %d access is allowed", v25, v26, v27);
        v7 = xpc_connection_get_pid(a1);
        *v6 = 136315650;
        *(v6 + 4) = "connectionAllowManagerObserverAccess";
        *(v6 + 12) = 2048;
        *(v6 + 14) = a1;
        *(v6 + 22) = 1024;
        *(v6 + 24) = v7;
        __SC_log_send();
        return 1;
      }

      return 1;
    }
  }

  else
  {
    v9 = sub_10005D558(a1, "com.apple.private.SCNetworkCategoryManager.observer");
    sub_10005E6F8();
    if (v9)
    {
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        v11 = &v25 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "%s: connection %p pid %d connection allowed access", v25, v26, v27);
        v14 = xpc_connection_get_pid(a1);
        *v13 = 136315650;
        *(v13 + 4) = "connectionAllowManagerObserverAccess";
        *(v13 + 12) = 2048;
        *(v13 + 14) = a1;
        *(v13 + 22) = 1024;
        *(v13 + 24) = v14;
        __SC_log_send();
      }

      xpc_connection_set_context(a1, kCFBooleanTrue);
      return 1;
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v20 = _os_log_pack_size();
      v21 = &v25 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      v23 = _os_log_pack_fill(v21, v20, *v22, &_mh_execute_header, "%s: connection %p pid %d missing entitlement, permission denied", v25, v26, v27);
      v24 = xpc_connection_get_pid(a1);
      *v23 = 136315650;
      *(v23 + 4) = "connectionAllowManagerObserverAccess";
      *(v23 + 12) = 2048;
      *(v23 + 14) = a1;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v24;
      __SC_log_send();
    }

    xpc_connection_set_context(a1, kCFBooleanFalse);
  }

  return 0;
}

void sub_10005DBF0(uint64_t *a1)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = v8 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "%s: invalidating %p", v8[0], v8[1]);
    *v5 = 136315394;
    *(v5 + 4) = "CategorySessionInvalidate";
    *(v5 + 12) = 2048;
    *(v5 + 14) = a1;
    __SC_log_send();
  }

  if (*(a1 + 24))
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1)
    {
      *(v6 + 8) = v7;
    }

    *v7 = v6;
    *(a1 + 24) = 0;
  }

  sub_10005D424();
}

os_state_data_s *__cdecl sub_10005DD34(id a1, os_state_hints_s *a2)
{

  return sub_10005DD8C();
}

_DWORD *sub_10005DD8C()
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v1 = S_CategorySessions;
  if (S_CategorySessions)
  {
    do
    {
      v2 = sub_10005DFB0(v1);
      if (v2)
      {
        v3 = v2;
        CFArrayAppendValue(Mutable, v2);
        CFRelease(v3);
      }

      v1 = *v1;
    }

    while (v1);
  }

  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(Mutable);
  Length = CFDataGetLength(Data);
  v6 = Length + 200;
  if ((Length + 200) <= 0x8000)
  {
    v12 = Length;
    v11 = malloc_type_calloc(1uLL, v6, 0xCF9002DFuLL);
    *v11 = 1;
    v11[1] = v12;
    __strlcpy_chk();
    BytePtr = CFDataGetBytePtr(Data);
    memcpy(v11 + 50, BytePtr, v12);
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = v15 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "%s: state data too large (%zu > %d)", v15[0], v15[1], v16);
      *v10 = 136315650;
      *(v10 + 4) = "CategoryManagerCopyOSStateData";
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      *(v10 + 22) = 1024;
      *(v10 + 24) = 0x8000;
      __SC_log_send();
    }

    v11 = 0;
  }

  CFRelease(Data);
  return v11;
}

CFDictionaryRef sub_10005DFB0(void *a1)
{
  cf = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 28);
  v2 = a1[4];
  if (v2)
  {
    v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[9];
  if (v8)
  {
    v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  }

  else
  {
    v9 = 0;
  }

  v10 = v23;
  v11 = v21;
  v12 = a1[6];
  if (v12)
  {
    v13 = CFStringCreateWithCString(0, v12, 0x8000100u);
  }

  else
  {
    v13 = 0;
  }

  memset(v23, 0, sizeof(v23));
  memset(v21, 0, sizeof(v21));
  v14 = 3;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 7);
  v16 = v15;
  keys[0] = @"ProcessID";
  keys[1] = @"ProcessName";
  values[0] = cf;
  values[1] = v3;
  keys[2] = @"Category";
  values[2] = v5;
  if (v13)
  {
    v11 = &v21[1];
    v10 = &v23[1];
    v23[0] = @"InterfaceName";
    v21[0] = v13;
    v14 = 4;
  }

  if (v7)
  {
    *v10 = @"Value";
    *v11 = v7;
    ++v14;
  }

  if (v9)
  {
    keys[v14] = @"ActiveValue";
    values[v14++] = v9;
  }

  if (v15)
  {
    keys[v14] = @"Flags";
    values[v14++] = v15;
  }

  v17 = CFDictionaryCreate(0, keys, values, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v17;
}

uint64_t sub_10005E250(const __CFDictionary *a1)
{
  if (!CFDictionaryGetValue(a1, @"Category"))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = v21 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "%s: %@ missing %@");
      *v7 = 136315650;
      *(v7 + 4) = "CategoryManagerServerAckOne";
      *(v7 + 12) = 2112;
      *(v7 + 14) = a1;
      *(v7 + 22) = 2112;
      *(v7 + 24) = @"Category";
LABEL_19:
      __SC_log_send();
    }

    return 0;
  }

  v2 = _SC_cfstring_to_cstring();
  if (CFDictionaryGetValue(a1, @"InterfaceName"))
  {
    v3 = _SC_cfstring_to_cstring();
  }

  else
  {
    v3 = 0;
  }

  if (CFDictionaryGetValue(a1, @"Value"))
  {
    v8 = _SC_cfstring_to_cstring();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10005D138(v2, v3);
  if (!v9)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "%s: no session for %s/%s", v21[0], v21[1], v21[2]);
      v16 = "<any>";
      *v15 = 136315650;
      *(v15 + 4) = "CategoryManagerServerAckOne";
      *(v15 + 12) = 2080;
      if (v3)
      {
        v16 = v3;
      }

      *(v15 + 14) = v2;
      *(v15 + 22) = 2080;
      *(v15 + 24) = v16;
      goto LABEL_19;
    }

    return 0;
  }

  v10 = v9;
  v11 = *(v9 + 72);
  if (v8 && v11)
  {
    if (!strcmp(*(v9 + 72), v8))
    {
LABEL_32:
      v17 = 0;
      if (!v2)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!(v8 | v11))
  {
    goto LABEL_32;
  }

  if (v8)
  {
LABEL_23:
    v18 = strdup(v8);
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v18 = 0;
  if (v11)
  {
LABEL_24:
    free(v11);
  }

LABEL_25:
  *(v10 + 72) = v18;
  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_connection_send_message(*(v10 + 16), v19);
  xpc_release(v19);
  v17 = 1;
  if (v2)
  {
LABEL_26:
    CFAllocatorDeallocate(0, v2);
  }

LABEL_27:
  if (v3)
  {
    CFAllocatorDeallocate(0, v3);
  }

  if (v8)
  {
    CFAllocatorDeallocate(0, v8);
  }

  return v17;
}

uint64_t sub_10005E5C0()
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    v1 = &v5 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
    v2 = __error();
    v3 = _os_log_pack_fill(v1, v0, *v2, &_mh_execute_header, "%s: %@");
    *v3 = 136315394;
    *(v3 + 4) = "CategoryManagerServerNotifyStore";
    *(v3 + 12) = 2112;
    *(v3 + 14) = @"com.apple.scnetworkcategory";
    __SC_log_send();
  }

  return SCDynamicStoreNotifyValue(0, @"com.apple.scnetworkcategory");
}

os_log_t sub_10005E6F8()
{
  result = qword_100081C80;
  if (!qword_100081C80)
  {
    result = os_log_create("com.apple.SystemConfiguration", "PreferencesMonitor");
    qword_100081C80 = result;
  }

  return result;
}

const void *sub_10005E76C(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Category");
  TypeID = CFStringGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == TypeID)
  {
    return Value;
  }

  return 0;
}

const void *sub_10005E7F0(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"InterfaceName");
  TypeID = CFStringGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == TypeID)
  {
    return Value;
  }

  return 0;
}

const void *sub_10005E874(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Value");
  TypeID = CFStringGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == TypeID)
  {
    return Value;
  }

  return 0;
}

uint64_t sub_10005E8F8(const __CFDictionary *a1)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"Flags");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  return valuePtr;
}

void sub_10005E994()
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    v1 = &v6 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
    v2 = __error();
    *_os_log_pack_fill(v1, v0, *v2, &_mh_execute_header, "prime() called") = 0;
    __SC_log_send();
  }

  if (sub_10005EB4C())
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      v4 = &v6 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = __error();
      *_os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "CategoryManagerServer started") = 0;
      __SC_log_send();
    }
  }

  sub_10005ECC0(qword_100081C88, 2);
}

uint64_t sub_10005EB4C()
{
  memset(&context, 0, 72);
  context.perform = sub_10005FD40;
  v0 = CFRunLoopSourceCreate(0, 0, &context);
  Current = CFRunLoopGetCurrent();
  v2 = sub_10005BB50(Current, v0);
  if (v2)
  {
    v3 = CFRunLoopGetCurrent();
    CFRunLoopAddSource(v3, v0, kCFRunLoopDefaultMode);
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &context - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      *_os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "CategoryManagerServerStart failed") = 0;
      __SC_log_send();
    }
  }

  CFRelease(v0);
  return v2;
}

void sub_10005ECC0(SCPreferencesRef prefs, char a2)
{
  if ((a2 & 1) != 0 && (byte_100081CA8 & 1) == 0)
  {
    SCPreferencesSynchronize(prefs);
  }

  if ((a2 & 2) != 0)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &v11 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      *_os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "updating configuration") = 0;
      __SC_log_send();
    }

    if (qword_100081CA0)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      if (sub_100061328(&v11, prefs))
      {
        Count = CFArrayGetCount(qword_100081CA0);
        if (Count >= 1)
        {
          v8 = Count;
          for (i = 0; i != v8; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(qword_100081CA0, i);
            sub_100061460(&v11, ValueAtIndex);
          }
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    sub_10005FECC(prefs);
    sub_100060268(prefs);
    sub_100060518(qword_100081C90, prefs);
    if ((byte_100081CA8 & 1) == 0)
    {
      SCPreferencesSynchronize(prefs);
    }
  }
}

void sub_10005EEA0(__CFBundle *a1)
{
  *keys = *&off_10007B3B8;
  values = kCFBooleanTrue;
  v38 = kCFBooleanFalse;
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &values - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    *_os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "load() called", values, v38, keys[0], keys[1]) = 0;
    __SC_log_send();
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &values - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "  bundle ID = %@");
    Identifier = CFBundleGetIdentifier(a1);
    *v8 = 138412290;
    *(v8 + 4) = Identifier;
    __SC_log_send();
  }

  qword_100081C90 = SCDynamicStoreCreate(0, @"PreferencesMonitor.bundle", sub_10005F508, 0);
  if (!qword_100081C90)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

    v15 = _os_log_pack_size();
    v16 = &values - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    v18 = _os_log_pack_fill(v16, v15, v17, &_mh_execute_header, "SCDynamicStoreCreate() failed: %s");
LABEL_27:
    v34 = v18;
    v35 = SCError();
    v36 = SCErrorString(v35);
    *v34 = 136315138;
    *(v34 + 4) = v36;
    __SC_log_send();
    goto LABEL_28;
  }

  v10 = CFDictionaryCreate(0, keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100081C88 = SCPreferencesCreateWithOptions();
  CFRelease(v10);
  if (!qword_100081C88)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

    v19 = _os_log_pack_size();
    v20 = &values - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *__error();
    v18 = _os_log_pack_fill(v20, v19, v21, &_mh_execute_header, "SCPreferencesCreate() failed: %s");
    goto LABEL_27;
  }

  __SCNetworkConfigurationUpgrade();
  Value = SCPreferencesGetValue(qword_100081C88, @"Model");
  v12 = _SC_hw_model();
  if (!Value || (v13 = v12, Value == v12) || v12 && CFEqual(Value, v12))
  {
    v14 = SCNetworkSetCopyCurrent(qword_100081C88);
    if (v14)
    {
      byte_100081C98 = 1;
      CFRelease(v14);
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v22 = _os_log_pack_size();
      v23 = &values - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "Hardware model changed\n  created on %@\n  now on     %@");
      *v25 = 138412546;
      *(v25 + 4) = Value;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v13;
      __SC_log_send();
    }

    sub_10005F9DC(qword_100081C88, Value);
  }

  if (!SCPreferencesSetCallback(qword_100081C88, sub_10005ECC0, 0))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

    v28 = _os_log_pack_size();
    v29 = &values - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = *__error();
    v18 = _os_log_pack_fill(v29, v28, v30, &_mh_execute_header, "SCPreferencesSetCallBack() failed: %s");
    goto LABEL_27;
  }

  v26 = qword_100081C88;
  Current = CFRunLoopGetCurrent();
  if (SCPreferencesScheduleWithRunLoop(v26, Current, kCFRunLoopDefaultMode))
  {
    sub_10005FAD0(qword_100081C90);
    sub_10005F508(qword_100081C90, 0);
    return;
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v31 = _os_log_pack_size();
    v32 = &values - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = *__error();
    v18 = _os_log_pack_fill(v32, v31, v33, &_mh_execute_header, "SCPreferencesScheduleWithRunLoop() failed: %s");
    goto LABEL_27;
  }

LABEL_28:
  if (qword_100081C90)
  {
    CFRelease(qword_100081C90);
  }

  if (qword_100081C88)
  {
    CFRelease(qword_100081C88);
  }

  byte_100081C98 = 1;
}

void sub_10005F508(const __SCDynamicStore *a1, uint64_t a2)
{
  v3 = SCDynamicStoreCopyValue(a1, qword_100081D00);
  if (!v3)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_44;
  }

  v4 = v3;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v4) == TypeID)
  {
    v6 = CFDictionaryContainsKey(v4, @"*QUIET*") != 0;
    v7 = CFDictionaryContainsKey(v4, @"*TIMEOUT*") != 0;
    Value = CFDictionaryGetValue(v4, @"_Excluded_");
    v9 = CFArrayGetTypeID();
    if (Value && CFGetTypeID(Value) != v9)
    {
      Value = 0;
    }

    if (Value == qword_100081CB8 || Value && qword_100081CB8 && CFEqual(Value, qword_100081CB8) || !sub_100062E94(Value, &qword_100081D08, &qword_100081CB8))
    {
      v11 = 0;
    }

    else
    {
      if (qword_100081CB8)
      {
        v10 = CFStringCreateByCombiningStrings(0, qword_100081CB8, @",");
      }

      else
      {
        v10 = @"<empty>";
        CFRetain(@"<empty>");
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        v14 = &v28 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        v15 = __error();
        v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "excluded interface list changed: %@");
        *v16 = 138412290;
        *(v16 + 4) = v10;
        __SC_log_send();
      }

      CFRelease(v10);
      v11 = 1;
    }

    v17 = CFDictionaryGetValue(v4, @"_PreConfigured_");
    v18 = CFArrayGetTypeID();
    if (v17 && CFGetTypeID(v17) != v18)
    {
      v17 = 0;
    }

    if (v17 == qword_100081CB0 || v17 && qword_100081CB0 && CFEqual(v17, qword_100081CB0) || !sub_100062E94(v17, &qword_100081CE0, &qword_100081CB0))
    {
      v12 = 0;
    }

    else
    {
      if (qword_100081CB0)
      {
        v19 = CFStringCreateByCombiningStrings(0, qword_100081CB0, @",");
      }

      else
      {
        v19 = @"<empty>";
        CFRetain(@"<empty>");
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v20 = _os_log_pack_size();
        v28 = &v28;
        v21 = &v28 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __error();
        v23 = _os_log_pack_fill(v21, v20, *v22, &_mh_execute_header, "pre-configured interface list changed: %@");
        *v23 = 138412290;
        *(v23 + 4) = v19;
        __SC_log_send();
      }

      CFRelease(v19);
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v7 = 0;
    v6 = 0;
  }

  CFRelease(v4);
  if ((byte_100081C98 & 1) == 0 && (v7 || v6))
  {
    if (v6)
    {
      byte_100081C98 = 1;
      sub_1000631F0(qword_100081C88);
      if (!v7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      sub_1000631F0(qword_100081C88);
      if (!v7)
      {
        goto LABEL_44;
      }
    }

    if (!dword_100081D10++)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = _os_log_pack_size();
        v26 = &v28 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = __error();
        *_os_log_pack_fill(v26, v25, *v27, &_mh_execute_header, "Network configuration creation timed out waiting for IORegistry") = 0;
        __SC_log_send();
      }
    }
  }

LABEL_44:
  if (a2)
  {
    if (v11 | v12)
    {
      sub_10005ECC0(qword_100081C88, 2);
    }
  }
}

void sub_10005F9DC(const __SCPreferences *a1, uint64_t a2)
{
  Value = SCPreferencesGetValue(a1, kSCPrefSystem);
  if (Value)
  {
    v4 = Value;
    CFRetain(Value);
    __SCNetworkConfigurationSaveModel();
    SCPreferencesSetValue(a1, kSCPrefSystem, v4);

    CFRelease(v4);
  }

  else
  {

    __SCNetworkConfigurationSaveModel();
  }
}

void sub_10005FAD0(const __SCDynamicStore *a1)
{
  qword_100081D18 = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  qword_100081D00 = SCDynamicStoreKeyCreate(0, @"%@InterfaceNamer", kSCDynamicStoreDomainPlugin);
  RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, a1, 0);
  if (RunLoopSource)
  {
    v3 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v3, kCFRunLoopDefaultMode);
    CFRelease(v3);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, qword_100081D18);
    CFArrayAppendValue(Mutable, qword_100081D00);
    v6 = SCDynamicStoreSetNotificationKeys(a1, Mutable, 0);
    CFRelease(Mutable);
    if (v6)
    {
      return;
    }

    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v17 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = *__error();
      v10 = _os_log_pack_fill(v8, v7, v9, &_mh_execute_header, "SCDynamicStoreSetNotificationKeys() failed: %s");
LABEL_7:
      v14 = v10;
      v15 = SCError();
      v16 = SCErrorString(v15);
      *v14 = 136315138;
      *(v14 + 4) = v16;
      __SC_log_send();
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &v17 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = *__error();
      v10 = _os_log_pack_fill(v12, v11, v13, &_mh_execute_header, "SCDynamicStoreCreateRunLoopSource() failed: %s");
      goto LABEL_7;
    }
  }

  byte_100081C98 = 1;
}

void sub_10005FD40()
{
  v0 = sub_10005BDBC();
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v1 = _os_log_pack_size();
    v2 = &v7 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = __error();
    v4 = _os_log_pack_fill(v2, v1, *v3, &_mh_execute_header, "%s: info %@");
    *v4 = 136315394;
    *(v4 + 4) = "categoryInformationChanged";
    *(v4 + 12) = 2112;
    *(v4 + 14) = v0;
    __SC_log_send();
  }

  v5 = qword_100081CA0;
  if (qword_100081CA0 == v0)
  {
    v6 = 0;
    if (qword_100081CA0)
    {
LABEL_8:
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 1;
    if (v0 && qword_100081CA0)
    {
      v6 = CFEqual(qword_100081CA0, v0) == 0;
      v5 = qword_100081CA0;
    }

    if (v5)
    {
      goto LABEL_8;
    }
  }

  qword_100081CA0 = v0;
  if (v6)
  {
    sub_10005ECC0(qword_100081C88, 2);
    sub_10005BF7C(v0);
  }
}

void sub_10005FECC(const __SCPreferences *a1)
{
  v2 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081CB0)
  {
    Count = CFArrayGetCount(qword_100081CB0);
    if (Count)
    {
      v4 = Count;
      v5 = SCNetworkSetCopyCurrent(a1);
      if (v5)
      {
        v6 = v5;
        v7 = SCNetworkServiceCopyAll(a1);
        if (v7)
        {
          v8 = v7;
          v9 = CFArrayGetCount(v7);
          if (v9 < 1)
          {
            CFRelease(v8);
          }

          else
          {
            v11 = v9;
            v34 = a1;
            v35 = v6;
            v12 = 0;
            v13 = 0;
            *&v10 = 136315138;
            v36 = v10;
            *&v10 = 138412290;
            v37 = v10;
            v38 = v4;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
              Interface = SCNetworkServiceGetInterface(ValueAtIndex);
              if (Interface)
              {
                BSDName = SCNetworkInterfaceGetBSDName(Interface);
                if (BSDName)
                {
                  v17 = BSDName;
                  v39.location = 0;
                  v39.length = v4;
                  if (CFArrayContainsValue(v2[406], v39, BSDName))
                  {
                    sub_10005E6F8();
                    _SC_syslog_os_log_mapping();
                    if (__SC_log_enabled())
                    {
                      v18 = _os_log_pack_size();
                      v19 = &v34 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
                      v20 = __error();
                      v21 = _os_log_pack_fill(v19, v18, *v20, &_mh_execute_header, "removing network service for %@");
                      *v21 = v37;
                      *(v21 + 4) = v17;
                      v2 = &selRef_qosMarkingIsEnabled_;
                      __SC_log_send();
                      v4 = v38;
                    }

                    if (SCNetworkServiceRemove(ValueAtIndex) || (sub_10005E6F8(), _SC_syslog_os_log_mapping(), !__SC_log_enabled()))
                    {
                      v12 = 1;
                    }

                    else
                    {
                      v22 = _os_log_pack_size();
                      v23 = &v34 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
                      v24 = __error();
                      v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "SCNetworkServiceRemove() failed: %s", v34);
                      v26 = SCError();
                      v27 = SCErrorString(v26);
                      *v25 = v36;
                      *(v25 + 4) = v27;
                      v2 = &selRef_qosMarkingIsEnabled_;
                      __SC_log_send();
                      v12 = 1;
                      v4 = v38;
                    }
                  }
                }
              }

              ++v13;
            }

            while (v11 != v13);
            CFRelease(v8);
            v6 = v35;
            if (v12 && !SCPreferencesCommitChanges(v34) && SCError() != 30)
            {
              sub_10005E6F8();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v28 = _os_log_pack_size();
                v29 = &v34 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
                v30 = __error();
                v31 = _os_log_pack_fill(v29, v28, *v30, &_mh_execute_header, "SCPreferencesCommitChanges() failed: %s", v34);
                v32 = SCError();
                v33 = SCErrorString(v32);
                *v31 = v36;
                *(v31 + 4) = v33;
                __SC_log_send();
              }
            }
          }
        }

        CFRelease(v6);
      }
    }
  }
}

void sub_100060268(const __SCPreferences *a1)
{
  v2 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081CB8)
  {
    Count = CFArrayGetCount(qword_100081CB8);
    if (Count)
    {
      v4 = Count;
      v5 = SCNetworkSetCopyCurrent(a1);
      if (v5)
      {
        v6 = v5;
        v7 = SCNetworkSetCopyServices(v5);
        if (v7)
        {
          v8 = v7;
          v9 = CFArrayGetCount(v7);
          if (v9 >= 1)
          {
            v11 = v9;
            v12 = 0;
            *&v10 = 136315138;
            v28 = v10;
            *&v10 = 138412290;
            v29 = v10;
            v30 = v4;
            v31 = v6;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
              Interface = SCNetworkServiceGetInterface(ValueAtIndex);
              if (Interface)
              {
                BSDName = SCNetworkInterfaceGetBSDName(Interface);
                if (BSDName)
                {
                  v16 = BSDName;
                  v32.location = 0;
                  v32.length = v4;
                  if (CFArrayContainsValue(v2[407], v32, BSDName))
                  {
                    sub_10005E6F8();
                    _SC_syslog_os_log_mapping();
                    if (__SC_log_enabled())
                    {
                      v17 = _os_log_pack_size();
                      v18 = &v28 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
                      v19 = __error();
                      v20 = v17;
                      v4 = v30;
                      v21 = _os_log_pack_fill(v18, v20, *v19, &_mh_execute_header, "excluding network service for %@");
                      *v21 = v29;
                      *(v21 + 4) = v16;
                      v6 = v31;
                      __SC_log_send();
                      v2 = &selRef_qosMarkingIsEnabled_;
                    }

                    if (!SCNetworkSetRemoveService(v6, ValueAtIndex))
                    {
                      sub_10005E6F8();
                      _SC_syslog_os_log_mapping();
                      if (__SC_log_enabled())
                      {
                        v22 = _os_log_pack_size();
                        v23 = &v28 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
                        v24 = __error();
                        v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "SCNetworkSetRemoveService() failed: %s", v28);
                        v26 = SCError();
                        v27 = SCErrorString(v26);
                        *v25 = v28;
                        *(v25 + 4) = v27;
                        v4 = v30;
                        v6 = v31;
                        __SC_log_send();
                        v2 = &selRef_qosMarkingIsEnabled_;
                      }
                    }
                  }
                }
              }

              ++v12;
            }

            while (v11 != v12);
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }
    }
  }
}

void sub_100060518(const __SCDynamicStore *a1, const __SCPreferences *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v5 = CFStringCreateWithFormat(0, 0, @"^%@.*", kSCDynamicStoreDomainSetup);
  CFArrayAppendValue(Mutable, v5);
  v87 = a1;
  v6 = SCDynamicStoreCopyMultiple(a1, 0, Mutable);
  CFRelease(Mutable);
  CFRelease(v5);
  if (v6)
  {
    qword_100081CC0 = CFDictionaryCreateMutableCopy(0, 0, v6);
    CFRelease(v6);
  }

  else
  {
    qword_100081CC0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  qword_100081CC8 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  Count = CFDictionaryGetCount(qword_100081CC0);
  if (Count < 1)
  {
    qword_100081CD0 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  else
  {
    v8 = Count;
    Typed = CFAllocatorAllocateTyped();
    CFDictionaryGetKeysAndValues(qword_100081CC0, Typed, 0);
    v10 = CFArrayCreate(0, Typed, v8, &kCFTypeArrayCallBacks);
    qword_100081CD0 = CFArrayCreateMutableCopy(0, 0, v10);
    CFRelease(v10);
    CFAllocatorDeallocate(0, Typed);
  }

  v11 = &selRef_qosMarkingIsEnabled_;
  qword_100081CD8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Current = CFAbsoluteTimeGetCurrent();
  v14 = CFDateCreate(0, Current);
  v15 = SCPreferencesCopyKeyList(a2);
  v16 = v15;
  if (!v15 || !CFArrayGetCount(v15))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_25;
    }

    v26 = _os_log_pack_size();
    v27 = &v84 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    *_os_log_pack_fill(v27, v26, *v28, &_mh_execute_header, "updateConfiguration(): no preferences") = 0;
LABEL_24:
    __SC_log_send();
    goto LABEL_25;
  }

  v17 = kSCPrefSystem;
  Value = SCPreferencesGetValue(a2, kSCPrefSystem);
  if (Value)
  {
    v19 = Value;
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v19) != TypeID)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_25;
      }

LABEL_20:
      v29 = _os_log_pack_size();
      v30 = &v84 - ((__chkstk_darwin(v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *__error();
      v32 = _os_log_pack_fill(v30, v29, v31, &_mh_execute_header, "updateConfiguration(): %@ is not a dictionary");
      *v32 = 138412290;
      *(v32 + 4) = v17;
LABEL_23:
      v11 = &selRef_qosMarkingIsEnabled_;
      goto LABEL_24;
    }

    sub_100062A18(a2, @"/", v19);
  }

  v21 = SCPreferencesGetValue(a2, kSCPrefCurrentSet);
  if (v21)
  {
    v17 = v21;
    v22 = CFStringGetTypeID();
    if (CFGetTypeID(v17) != v22)
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_25;
      }

      v33 = _os_log_pack_size();
      v34 = &v84 - ((__chkstk_darwin(v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = __error();
      v36 = _os_log_pack_fill(v34, v33, *v35, &_mh_execute_header, "updateConfiguration(): %@ is not a string");
      *v36 = 138412290;
      *(v36 + 4) = kSCPrefCurrentSet;
      goto LABEL_23;
    }

    v23 = SCPreferencesPathGetValue(a2, v17);
    if (v23)
    {
      v24 = v23;
      v25 = CFDictionaryGetTypeID();
      if (CFGetTypeID(v24) == v25)
      {
        sub_100062A18(a2, @"/", v24);
        CFDictionarySetValue(v12, kSCDynamicStorePropSetupCurrentSet, v17);
        goto LABEL_25;
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v78 = _os_log_pack_size();
      v106 = &v84;
      v79 = v14;
      v80 = &v84 - ((__chkstk_darwin(v78) + 15) & 0xFFFFFFFFFFFFFFF0);
      v81 = __error();
      v82 = v78;
      v11 = &selRef_qosMarkingIsEnabled_;
      v83 = _os_log_pack_fill(v80, v82, *v81, &_mh_execute_header, "%@ value (%@) not valid");
      *v83 = 138412546;
      *(v83 + 4) = kSCPrefCurrentSet;
      *(v83 + 12) = 2112;
      *(v83 + 14) = v17;
      v14 = v79;
      __SC_log_send();
    }
  }

LABEL_25:
  v85 = v16;
  v84 = v14;
  CFDictionarySetValue(v12, kSCDynamicStorePropSetupLastUpdated, v14);
  v37 = v11[411];
  v86 = v12;
  CFDictionarySetValue(v37, kSCDynamicStoreDomainSetup, v12);
  if (qword_100081CE0)
  {
    v38 = qword_100081CD8;
    v104 = CFArrayGetCount(qword_100081CE0);
    if (v104 >= 1)
    {
      v39 = 0;
      v103 = kSCValNetInterfaceTypeEthernet;
      v102 = kSCEntNetIPv4;
      v91 = kSCPropNetIPv4ConfigMethod;
      v90 = kSCValNetIPv4ConfigMethodDHCP;
      v101 = kSCEntNetIPv6;
      v89 = kSCPropNetIPv6ConfigMethod;
      v88 = kSCValNetIPv6ConfigMethodAutomatic;
      v100 = kSCEntNetInterface;
      v99 = kSCPropNetInterfaceDeviceName;
      v98 = kSCPropNetInterfaceHardware;
      v97 = kSCPropNetInterfaceType;
      v95 = kCFBooleanTrue;
      v94 = kSCEntNetProxies;
      v93 = kSCPropNetProxiesExceptionsList;
      v92 = kSCPropNetProxiesFTPPassive;
      v105 = kSCPropNetServicePrimaryRank;
      v96 = kSCPropUserDefinedName;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081CE0, v39);
        LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(ValueAtIndex);
        v42 = @"Preconfigured";
        if (LocalizedDisplayName)
        {
          v42 = LocalizedDisplayName;
        }

        v106 = v42;
        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
        if (InterfaceType)
        {
          v45 = InterfaceType;
        }

        else
        {
          v45 = v103;
        }

        v46 = _SC_copyInterfaceUUID();
        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v46, v102);
        TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides();
        v49 = CFDictionaryGetTypeID();
        if (!TemplateOverrides || CFGetTypeID(TemplateOverrides) != v49)
        {
          TemplateOverrides = qword_100081CE8;
          if (!qword_100081CE8)
          {
            keys = v91;
            values = v90;
            TemplateOverrides = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            qword_100081CE8 = TemplateOverrides;
          }
        }

        CFDictionarySetValue(v38, NetworkServiceEntity, TemplateOverrides);
        if (NetworkServiceEntity)
        {
          CFRelease(NetworkServiceEntity);
        }

        v50 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v46, v101);
        v51 = __SCNetworkInterfaceGetTemplateOverrides();
        v52 = CFDictionaryGetTypeID();
        if (!v51 || CFGetTypeID(v51) != v52)
        {
          v51 = qword_100081CF0;
          if (!qword_100081CF0)
          {
            keys = v89;
            values = v88;
            v51 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            qword_100081CF0 = v51;
          }
        }

        CFDictionarySetValue(v38, v50, v51);
        if (v50)
        {
          CFRelease(v50);
        }

        v53 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v46, v100);
        keys = v99;
        v114 = v98;
        v115 = @"HiddenConfiguration";
        v116 = v97;
        v54 = v96;
        v117 = v96;
        values = BSDName;
        v109 = v45;
        v110 = v95;
        v111 = v45;
        v112 = v106;
        v55 = CFDictionaryCreate(0, &keys, &values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v38, v53, v55);
        if (v53)
        {
          CFRelease(v53);
        }

        if (v55)
        {
          CFRelease(v55);
        }

        v56 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v46, v94);
        keys = v93;
        v114 = v92;
        v57 = qword_100081CF8;
        if (!qword_100081CF8)
        {
          *v118 = *&off_10007B3C8;
          valuePtr = 1;
          v58 = CFArrayCreate(0, v118, 2, &kCFTypeArrayCallBacks);
          values = v58;
          v59 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v109 = v59;
          qword_100081CF8 = CFDictionaryCreate(0, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFRelease(v58);
          CFRelease(v59);
          v57 = qword_100081CF8;
        }

        CFDictionarySetValue(v38, v56, v57);
        if (v56)
        {
          CFRelease(v56);
        }

        v60 = __SCNetworkInterfaceGetTemplateOverrides();
        v61 = CFStringGetTypeID();
        if (v60)
        {
          if (CFGetTypeID(v60) == v61)
          {
            v62 = v60;
          }

          else
          {
            v62 = 0;
          }
        }

        else
        {
          v62 = 0;
        }

        v63 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, v46, 0);
        keys = v54;
        v114 = 0;
        values = v106;
        v109 = 0;
        if (v62)
        {
          v114 = v105;
          v109 = v62;
          v64 = 2;
        }

        else
        {
          v64 = 1;
        }

        v65 = CFDictionaryCreate(0, &keys, &values, v64, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v38, v63, v65);
        if (v63)
        {
          CFRelease(v63);
        }

        if (v65)
        {
          CFRelease(v65);
        }

        if (v46)
        {
          CFRelease(v46);
        }

        ++v39;
      }

      while (v104 != v39);
    }
  }

  CFDictionaryApplyFunction(qword_100081CD8, sub_100062D94, 0);
  v66 = CFArrayGetCount(qword_100081CC8);
  if (v66 >= 1)
  {
    v67 = v66;
    for (i = 0; i != v67; ++i)
    {
      v69 = CFArrayGetValueAtIndex(qword_100081CC8, i);
      CFDictionaryRemoveValue(qword_100081CD8, v69);
    }
  }

  v70 = SCDynamicStoreSetMultiple(v87, qword_100081CD8, qword_100081CD0, 0);
  v71 = v85;
  if (!v70)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v72 = _os_log_pack_size();
      v73 = &v84 - ((__chkstk_darwin(v72) + 15) & 0xFFFFFFFFFFFFFFF0);
      v74 = __error();
      v75 = _os_log_pack_fill(v73, v72, *v74, &_mh_execute_header, "SCDynamicStoreSetMultiple() failed: %s", v84);
      v76 = SCError();
      v77 = SCErrorString(v76);
      *v75 = 136315138;
      *(v75 + 4) = v77;
      __SC_log_send();
    }
  }

  CFRelease(qword_100081CC0);
  CFRelease(qword_100081CD8);
  CFRelease(qword_100081CC8);
  CFRelease(qword_100081CD0);
  if (v86)
  {
    CFRelease(v86);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v71)
  {
    CFRelease(v71);
  }
}

uint64_t sub_100061328(void *a1, SCPreferencesRef prefs)
{
  v4 = SCNetworkSetCopyCurrent(prefs);
  a1[1] = v4;
  if (v4)
  {
    a1[2] = SCNetworkSetCopyServices(v4);
    *a1 = prefs;
    CFRetain(prefs);
    return 1;
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v6 = _os_log_pack_size();
      v7 = &v9 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      *_os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "No default set") = 0;
      __SC_log_send();
      return 0;
    }
  }

  return result;
}

void sub_100061460(SCPreferencesRef *a1, const __CFDictionary *a2)
{
  if (!sub_10005E76C(a2))
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v8 = _os_log_pack_size();
    v9 = &v17 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *__error();
    v11 = _os_log_pack_fill(v9, v8, v10, &_mh_execute_header, "%s: no category");
LABEL_9:
    *v11 = 136315138;
    *(v11 + 4) = "handleCategoryInfo";
    __SC_log_send();
    return;
  }

  v4 = SCNetworkCategoryCreate();
  if (!v4)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = &v17 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = *__error();
    v11 = _os_log_pack_fill(v13, v12, v14, &_mh_execute_header, "%s: failed to allocate category");
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_10005E874(a2);
  if (v6)
  {
    v7 = SCNetworkCategoryCopyServices();
  }

  else
  {
    v7 = 0;
  }

  v15 = sub_10005E8F8(a2);
  v16 = sub_10005E7F0(a2);
  if (v6 && v7)
  {
    sub_100061B4C(a1, v5, v6, v7, v16);
    CFRelease(v5);
LABEL_19:

    CFRelease(v7);
    return;
  }

  if (v16 && (v15 & 1) != 0)
  {
    sub_1000616E4(a1, v16);
  }

  CFRelease(v5);
  if (v7)
  {
    goto LABEL_19;
  }
}

void sub_1000616E4(SCPreferencesRef *a1, const void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
      goto LABEL_21;
    }

    v7 = Count;
    v8 = 0;
    v9 = 0;
    *&v6 = 136315650;
    v36 = v6;
    *&v6 = 136315906;
    v38 = v6;
    v37 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[2], v9);
      Interface = SCNetworkServiceGetInterface(ValueAtIndex);
      if (Interface)
      {
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        if (BSDName)
        {
          v13 = BSDName;
          if (CFEqual(a2, BSDName))
          {
            if (v8)
            {
              v14 = SCNetworkSetRemoveService(a1[1], ValueAtIndex);
              sub_10005E6F8();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v15 = _os_log_pack_size();
                v39 = v14;
                v16 = v8;
                v17 = v15;
                v40 = &v36;
                v18 = &v36 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
                v19 = __error();
                v20 = v17;
                v8 = v16;
                v21 = _os_log_pack_fill(v18, v20, *v19, &_mh_execute_header, "%s: remove service %@ (%@): %s");
                *v21 = v38;
                v22 = "SUCCESS";
                if (!v39)
                {
                  v22 = "FAILED";
                }

                *(v21 + 4) = "ensureDefaultServiceExistsForInterface";
                *(v21 + 12) = 2112;
                *(v21 + 14) = ValueAtIndex;
                *(v21 + 22) = 2112;
                *(v21 + 24) = v13;
                *(v21 + 32) = 2080;
                *(v21 + 34) = v22;
                a2 = v37;
                __SC_log_send();
              }
            }

            else
            {
              sub_10005E6F8();
              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v23 = _os_log_pack_size();
                v40 = &v36;
                v24 = &v36 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
                v25 = __error();
                v26 = _os_log_pack_fill(v24, v23, *v25, &_mh_execute_header, "%s: found service %@ (%@)");
                *v26 = v36;
                *(v26 + 4) = "ensureDefaultServiceExistsForInterface";
                *(v26 + 12) = 2112;
                *(v26 + 14) = ValueAtIndex;
                *(v26 + 22) = 2112;
                *(v26 + 24) = v13;
                __SC_log_send();
              }

              v8 = ValueAtIndex;
            }
          }
        }
      }

      ++v9;
    }

    while (v7 != v9);
    if (!v8)
    {
LABEL_21:
      sub_1000622A4(a1, a2);
      return;
    }

    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v27 = a2;
    v28 = _os_log_pack_size();
    v29 = &v36 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v28, *v30, &_mh_execute_header, "%s: TBD: ensure defaults for %@");
    *v31 = 136315394;
    *(v31 + 4) = "ensureDefaultServiceExistsForInterface";
    *(v31 + 12) = 2112;
    *(v31 + 14) = v27;
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v32 = _os_log_pack_size();
    v33 = &v36 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = __error();
    v35 = _os_log_pack_fill(v33, v32, *v34, &_mh_execute_header, "%s: no services", v36);
    *v35 = 136315138;
    *(v35 + 4) = "ensureDefaultServiceExistsForInterface";
  }

  __SC_log_send();
}

SCNetworkInterfaceRef sub_100061B4C(uint64_t a1, uint64_t a2, uint64_t a3, CFArrayRef theArray, const void *a5)
{
  v64 = a2;
  v65 = a3;
  v66 = a1;
  Count = CFArrayGetCount(theArray);
  __chkstk_darwin(Count);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v8 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v8;
  }

  bzero(&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v67 = theArray;
  v11 = CFArrayGetCount(theArray);
  v13 = v11;
  if (!a5)
  {
    if (v11 < 1)
    {
      return sub_100062730(v66, v9, 0);
    }

    v14 = 0;
    v38 = 0;
    *&v12 = 136315138;
    v62 = v12;
    *&v12 = 136315394;
    v63 = v12;
    *&v12 = 136315650;
    v61 = v12;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v67, v38);
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v40 = _os_log_pack_size();
        v41 = &v61 - ((__chkstk_darwin(v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = __error();
        v43 = _os_log_pack_fill(v41, v40, *v42, &_mh_execute_header, "%s: service %@");
        *v43 = v63;
        *(v43 + 4) = "insertCategoryServices";
        *(v43 + 12) = 2112;
        *(v43 + 14) = ValueAtIndex;
        __SC_log_send();
      }

      Interface = SCNetworkServiceGetInterface(ValueAtIndex);
      if (Interface)
      {
        v45 = Interface;
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        if (BSDName)
        {
          v47 = BSDName;
          if (v14 < 1)
          {
LABEL_32:
            v9[v14] = v47;
            sub_10005E6F8();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v49 = _os_log_pack_size();
              v50 = &v61 - ((__chkstk_darwin(v49) + 15) & 0xFFFFFFFFFFFFFFF0);
              v51 = __error();
              v52 = _os_log_pack_fill(v50, v49, *v51, &_mh_execute_header, "%s: added %@, count %d");
              *v52 = v61;
              *(v52 + 4) = "insertCategoryServices";
              *(v52 + 12) = 2112;
              *(v52 + 14) = v47;
              *(v52 + 22) = 1024;
              *(v52 + 24) = v14 + 1;
              __SC_log_send();
            }

            ++v14;
          }

          else
          {
            v48 = 0;
            while (!CFEqual(v9[v48], v47))
            {
              if (v14 == ++v48)
              {
                goto LABEL_32;
              }
            }
          }

          goto LABEL_40;
        }

        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v57 = _os_log_pack_size();
          v58 = &v61 - ((__chkstk_darwin(v57) + 15) & 0xFFFFFFFFFFFFFFF0);
          v59 = __error();
          v60 = _os_log_pack_fill(v58, v57, *v59, &_mh_execute_header, "%s: no name %@");
          *v60 = v63;
          *(v60 + 4) = "insertCategoryServices";
          *(v60 + 12) = 2112;
          *(v60 + 14) = v45;
          goto LABEL_39;
        }
      }

      else
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v53 = _os_log_pack_size();
          v54 = &v61 - ((__chkstk_darwin(v53) + 15) & 0xFFFFFFFFFFFFFFF0);
          v55 = __error();
          v56 = _os_log_pack_fill(v54, v53, *v55, &_mh_execute_header, "%s: no netif", v61);
          *v56 = v62;
          *(v56 + 4) = "insertCategoryServices";
LABEL_39:
          __SC_log_send();
        }
      }

LABEL_40:
      if (++v38 == v13)
      {
        goto LABEL_6;
      }
    }
  }

  *v9 = a5;
  v14 = 1;
LABEL_6:
  result = sub_100062730(v66, v9, v14);
  if (v13 >= 1)
  {
    v17 = 0;
    *&v16 = 136315650;
    v63 = v16;
    *&v16 = 136315394;
    v62 = v16;
    while (1)
    {
      v18 = CFArrayGetValueAtIndex(v67, v17);
      ServiceQoSMarkingPolicy = SCNetworkCategoryGetServiceQoSMarkingPolicy();
      v20 = SCNetworkSetAddService(*(v66 + 8), v18);
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (v20)
      {
        break;
      }

      if (result)
      {
        v32 = _os_log_pack_size();
        v33 = &v61 - ((__chkstk_darwin(v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = __error();
        v35 = _os_log_pack_fill(v33, v32, *v34, &_mh_execute_header, "%s: can't add service %@ to set, %s");
        v36 = SCError();
        v37 = SCErrorString(v36);
        *v35 = v63;
        *(v35 + 4) = "insertCategoryServices";
        *(v35 + 12) = 2112;
        *(v35 + 14) = v18;
        *(v35 + 22) = 2080;
        *(v35 + 24) = v37;
LABEL_19:
        result = __SC_log_send();
      }

LABEL_20:
      if (v13 == ++v17)
      {
        return result;
      }
    }

    if (result)
    {
      v21 = _os_log_pack_size();
      v22 = &v61 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      v24 = _os_log_pack_fill(v22, v21, *v23, &_mh_execute_header, "%s: added service %@ to set");
      *v24 = v62;
      *(v24 + 4) = "insertCategoryServices";
      *(v24 + 12) = 2112;
      *(v24 + 14) = v18;
      __SC_log_send();
    }

    result = SCNetworkServiceGetInterface(v18);
    if (!result)
    {
      goto LABEL_20;
    }

    if (!ServiceQoSMarkingPolicy)
    {
      goto LABEL_20;
    }

    v25 = result;
    v26 = SCNetworkInterfaceSetQoSMarkingPolicy();
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_20;
    }

    v27 = _os_log_pack_size();
    v28 = &v61 - ((__chkstk_darwin(v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v27, *v29, &_mh_execute_header, "%s: %sset QoSMarkingPolicy on %@");
    *v30 = v63;
    v31 = "";
    if (!v26)
    {
      v31 = "FAILED to ";
    }

    *(v30 + 4) = "insertCategoryServices";
    *(v30 + 12) = 2080;
    *(v30 + 14) = v31;
    *(v30 + 22) = 2112;
    *(v30 + 24) = v25;
    goto LABEL_19;
  }

  return result;
}

void sub_1000622A4(SCPreferencesRef *a1, uint64_t a2)
{
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v31 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "%s: %@");
    *v7 = 136315394;
    *(v7 + 4) = "establishServiceForInterface";
    *(v7 + 12) = 2112;
    *(v7 + 14) = a2;
    __SC_log_send();
  }

  v8 = _SCNetworkInterfaceCreateWithBSDName();
  if (v8)
  {
    v9 = v8;
    v10 = SCNetworkServiceCreate(*a1, v8);
    v11 = _SC_copyInterfaceUUID();
    if (v11)
    {
      v12 = v11;
      if (!_SCNetworkServiceSetServiceID())
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v13 = _os_log_pack_size();
          v14 = &v31 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
          v15 = __error();
          v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "%s: failed to set serviceID for %@");
          *v16 = 136315394;
          *(v16 + 4) = "establishServiceForInterface";
          *(v16 + 12) = 2112;
          *(v16 + 14) = a2;
          __SC_log_send();
        }
      }

      CFRelease(v12);
    }

    if (SCNetworkServiceEstablishDefaultConfiguration(v10))
    {
      if (SCNetworkSetAddService(a1[1], v10))
      {
        goto LABEL_18;
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_18;
      }

      v17 = _os_log_pack_size();
      v18 = &v31 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v20 = _os_log_pack_fill(v18, v17, v19, &_mh_execute_header, "%s: can't add service for %@ to set, %s");
    }

    else
    {
      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_18:
        CFRelease(v10);
        CFRelease(v9);
        return;
      }

      v25 = _os_log_pack_size();
      v26 = &v31 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *__error();
      v20 = _os_log_pack_fill(v26, v25, v27, &_mh_execute_header, "%s: %@ failed to establish default, %s");
    }

    v28 = v20;
    v29 = SCError();
    v30 = SCErrorString(v29);
    *v28 = 136315650;
    *(v28 + 4) = "establishServiceForInterface";
    *(v28 + 12) = 2112;
    *(v28 + 14) = a2;
    *(v28 + 22) = 2080;
    *(v28 + 24) = v30;
    __SC_log_send();
    goto LABEL_18;
  }

  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v21 = _os_log_pack_size();
    v22 = &v31 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v21, *v23, &_mh_execute_header, "%s: can't create netif for %@");
    *v24 = 136315394;
    *(v24 + 4) = "establishServiceForInterface";
    *(v24 + 12) = 2112;
    *(v24 + 14) = a2;
    __SC_log_send();
  }
}

uint64_t sub_100062730(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    result = CFArrayGetCount(v4);
    if (result >= 1)
    {
      v9 = result;
      v10 = 0;
      *&v8 = 136315906;
      v28 = v8;
      v29 = v3;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), v10);
        result = SCNetworkServiceGetInterface(ValueAtIndex);
        if (result)
        {
          result = SCNetworkInterfaceGetBSDName(result);
          if (a3 >= 1)
          {
            v12 = result;
            if (result)
            {
              result = CFEqual(*a2, result);
              if (result)
              {
                goto LABEL_12;
              }

              v13 = 1;
              do
              {
                v14 = v13;
                if (a3 == v13)
                {
                  break;
                }

                result = CFEqual(a2[v13], v12);
                v13 = v14 + 1;
              }

              while (!result);
              if (v14 < a3)
              {
LABEL_12:
                v15 = SCNetworkSetRemoveService(*(v3 + 8), ValueAtIndex);
                sub_10005E6F8();
                _SC_syslog_os_log_mapping();
                result = __SC_log_enabled();
                if (result)
                {
                  v16 = v9;
                  v17 = _os_log_pack_size();
                  v31 = &v28;
                  v18 = __chkstk_darwin(v17);
                  v30 = v15;
                  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v20 = __error();
                  v21 = v17;
                  v9 = v16;
                  v3 = v29;
                  v22 = _os_log_pack_fill(v19, v21, *v20, &_mh_execute_header, "%s: remove service %@ (%@): %s");
                  *v22 = v28;
                  v23 = "SUCCESS";
                  if (!v30)
                  {
                    v23 = "FAILED";
                  }

                  *(v22 + 4) = "removeServicesForInterfaces";
                  *(v22 + 12) = 2112;
                  *(v22 + 14) = ValueAtIndex;
                  *(v22 + 22) = 2112;
                  *(v22 + 24) = v12;
                  *(v22 + 32) = 2080;
                  *(v22 + 34) = v23;
                  result = __SC_log_send();
                }
              }
            }
          }
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  else
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v24 = _os_log_pack_size();
      v25 = &v28 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v24, *v26, &_mh_execute_header, "%s: no services", v28);
      *v27 = 136315138;
      *(v27 + 4) = "removeServicesForInterfaces";
      return __SC_log_send();
    }
  }

  return result;
}

void sub_100062A18(const __SCPreferences *a1, const void *a2, const __CFDictionary *a3)
{
  v3 = a3;
  value = 0;
  if (CFDictionaryGetValueIfPresent(a3, kSCResvLink, &value) && (v3 = SCPreferencesPathGetValue(a1, value)) == 0)
  {
    sub_10005E6F8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = &v27 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "SCPreferencesPathGetValue(,%@,) failed: %s");
      v13 = value;
      v14 = SCError();
      v15 = SCErrorString(v14);
      *v12 = 138412546;
      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      *(v12 + 14) = v15;
      __SC_log_send();
    }
  }

  else if (!CFDictionaryContainsKey(v3, kSCResvInactive))
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%@%@", kSCDynamicStoreDomainSetup, a2);
    v7 = CFDictionaryGetValue(qword_100081CD8, v6);
    if (v7)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v16 = MutableCopy;
    Count = CFDictionaryGetCount(v3);
    if (Count >= 1)
    {
      v18 = Count;
      v28 = v6;
      Typed = CFAllocatorAllocateTyped();
      v20 = CFAllocatorAllocateTyped();
      CFDictionaryGetKeysAndValues(v3, Typed, v20);
      for (i = 0; i != v18; ++i)
      {
        v22 = v20[i];
        TypeID = CFDictionaryGetTypeID();
        if (v22 && CFGetTypeID(v22) == TypeID)
        {
          v24 = CFEqual(a2, @"/");
          v25 = "";
          if (!v24)
          {
            v25 = "/";
          }

          v26 = CFStringCreateWithFormat(0, 0, @"%@%s%@", a2, v25, Typed[i]);
          sub_100062A18(a1, v26, v20[i]);
          CFRelease(v26);
        }

        else
        {
          CFDictionarySetValue(v16, Typed[i], v20[i]);
        }
      }

      CFAllocatorDeallocate(0, Typed);
      CFAllocatorDeallocate(0, v20);
      v6 = v28;
    }

    if (CFDictionaryGetCount(v16) >= 1)
    {
      CFDictionarySetValue(qword_100081CD8, v6, v16);
    }

    CFRelease(v16);
    CFRelease(v6);
  }
}

void sub_100062D94(void *key, const void *a2)
{
  Value = CFDictionaryGetValue(qword_100081CC0, key);
  if (Value && CFEqual(Value, a2))
  {
    CFArrayAppendValue(qword_100081CC8, key);
  }

  v5 = qword_100081CD0;
  v10.length = CFArrayGetCount(qword_100081CD0);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v10, key);
  if (FirstIndexOfValue != -1)
  {
    v7 = FirstIndexOfValue;
    v8 = qword_100081CD0;

    CFArrayRemoveValueAtIndex(v8, v7);
  }
}

uint64_t sub_100062E94(const __CFArray *a1, CFTypeRef *a2, CFArrayRef *a3)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  if (*a3)
  {
    Count = CFArrayGetCount(*a3);
    CFRelease(*a3);
    *a3 = 0;
    v28 = Count > 0;
  }

  else
  {
    v28 = 0;
  }

  v31 = a3;
  if (!a1 || (v33 = CFArrayGetCount(a1), v33 < 1))
  {
    v29 = 0;
    goto LABEL_29;
  }

  v30 = a2;
  v29 = 0;
  v8 = 0;
  *&v7 = 138412290;
  v34 = v7;
  v32 = a1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    v10 = 10;
    while (1)
    {
      if (v10 != 10)
      {
        usleep(0x4E20u);
      }

      v11 = _SCNetworkInterfaceCreateWithBSDName();
      if (!v11)
      {
        sub_10005E6F8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v17 = _os_log_pack_size();
          v18 = &v27 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
          v19 = __error();
          v20 = _os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "could not create network interface for %@");
          *v20 = v34;
          *(v20 + 4) = ValueAtIndex;
          __SC_log_send();
        }

        goto LABEL_19;
      }

      v12 = v11;
      if (_SCNetworkInterfaceGetIOPath())
      {
        break;
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        v14 = &v27 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        v15 = __error();
        v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "could not get IOPath for %@");
        *v16 = v34;
        *(v16 + 4) = ValueAtIndex;
        __SC_log_send();
      }

      CFRelease(v12);
LABEL_19:
      if (!--v10)
      {
        a1 = v32;
        goto LABEL_26;
      }
    }

    Mutable = *v31;
    if (!*v31)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      *v31 = Mutable;
    }

    CFArrayAppendValue(Mutable, ValueAtIndex);
    v22 = *v30;
    a1 = v32;
    if (!*v30)
    {
      v22 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      *v30 = v22;
    }

    CFArrayAppendValue(v22, v12);
    CFRelease(v12);
    v29 = 1;
LABEL_26:
    ++v8;
  }

  while (v8 != v33);
LABEL_29:
  if (*v31)
  {
    v23 = CFArrayGetCount(*v31) == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v28 || !v23;
  v25 = v29;
  if (!v24)
  {
    return 1;
  }

  return v25;
}

void sub_1000631F0(const __SCPreferences *a1)
{
  for (i = a1; ; a1 = i)
  {
    if (SCPreferencesLock(a1, 1u))
    {
      Value = SCPreferencesGetValue(i, @"Model");
      v4 = _SC_hw_model();
      if (Value)
      {
        v5 = v4;
        if (Value != v4 && (!v4 || !CFEqual(Value, v4)))
        {
          sub_10005E6F8();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v6 = _os_log_pack_size();
            v7 = &v32 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
            v8 = __error();
            v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "Hardware model changed\n  created on %@\n  now on     %@");
            *v9 = 138412546;
            *(v9 + 4) = Value;
            *(v9 + 12) = 2112;
            *(v9 + 14) = v5;
            __SC_log_send();
          }

          sub_10005F9DC(i, Value);
        }
      }

      v10 = SCNetworkSetCopyCurrent(i);
      Default = v10;
      if (v10 || (Default = _SCNetworkSetCreateDefault()) != 0)
      {
        if (SCNetworkSetEstablishDefaultConfiguration())
        {
          if (SCPreferencesCommitChanges(i))
          {
            sub_10005E6F8();
            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v12 = _os_log_pack_size();
              v13 = &v32 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
              v14 = __error();
              *_os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "New network configuration saved") = 0;
              __SC_log_send();
            }

            goto LABEL_24;
          }

          v22 = SCError();
          if (v22 == 30)
          {
            byte_100081CA8 = 1;
LABEL_24:
            SCPreferencesApplyChanges(i);
            SCPreferencesUnlock(i);
LABEL_34:
            CFRelease(Default);
            return;
          }

          v15 = v22;
          SCPreferencesApplyChanges(i);
        }

        else
        {
          v15 = SCError();
          if (!v10)
          {
            SCNetworkSetRemove(Default);
          }
        }
      }

      else
      {
        v15 = SCError();
      }

      sub_10005E6F8();
      _SC_syslog_os_log_mapping();
      v23 = __SC_log_enabled();
      if (v15)
      {
        if (!v23)
        {
          goto LABEL_33;
        }

        v24 = _os_log_pack_size();
        v25 = &v32 - ((__chkstk_darwin(v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v25, v24, *v26, &_mh_execute_header, "Could not establish network configuration: %s", v32);
        v28 = SCErrorString(v15);
        *v27 = 136315138;
        *(v27 + 4) = v28;
      }

      else
      {
        if (!v23)
        {
          goto LABEL_33;
        }

        v29 = _os_log_pack_size();
        v30 = &v32 - ((__chkstk_darwin(v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        v31 = __error();
        *_os_log_pack_fill(v30, v29, *v31, &_mh_execute_header, "Network configuration not updated") = 0;
      }

      __SC_log_send();
LABEL_33:
      SCPreferencesUnlock(i);
      if (!Default)
      {
        return;
      }

      goto LABEL_34;
    }

    v2 = SCError();
    if (v2 != 3005)
    {
      break;
    }

    SCPreferencesSynchronize(i);
  }

  v16 = v2;
  sub_10005E6F8();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v17 = _os_log_pack_size();
    v18 = &v32 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "Could not acquire network configuration lock: %s", v32);
    v21 = SCErrorString(v16);
    *v20 = 136315138;
    *(v20 + 4) = v21;
    __SC_log_send();
  }
}

id sub_1000636BC()
{
  v0 = qword_100081D30;
  if (!qword_100081D30)
  {
    v1 = os_log_create("com.apple.SystemConfiguration", "QoSMarking");
    v2 = qword_100081D30;
    qword_100081D30 = v1;

    v0 = qword_100081D30;
  }

  return v0;
}

void sub_100065CFC(id a1)
{
  qword_100081D38 = objc_alloc_init(QoSMarkingController);

  _objc_release_x1();
}

void sub_100066630(__CFBundle *a1)
{
  v2 = sub_1000636BC();
  v3 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
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
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v4 = _sc_log <= 0 ? 2 : 3;
    v52 = 0uLL;
    v53 = 0uLL;
    v5 = os_log_type_enabled(v2, v3) ? v4 : 2;
    LOWORD(v50) = 0;
    v6 = _os_log_send_and_compose_impl(v5, 0, &v52, 256, &_mh_execute_header, v2, v3, "load() called", &v50, 2);
    __SC_log_send2();
    if (v6 != &v52)
    {
      free(v6);
    }
  }

  v7 = sub_1000636BC();
  v8 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
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
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v9 = _sc_log <= 0 ? 2 : 3;
    v52 = 0uLL;
    v53 = 0uLL;
    v10 = os_log_type_enabled(v7, v8) ? v9 : 2;
    v11 = v7;
    Identifier = CFBundleGetIdentifier(a1);
    v50 = 138412290;
    v51 = Identifier;
    LODWORD(v49) = 12;
    v13 = _os_log_send_and_compose_impl(v10, 0, &v52, 256, &_mh_execute_header, v11, v8, "  bundle ID = %@", &v50, v49);

    __SC_log_send2();
    if (v13 != &v52)
    {
      free(v13);
    }
  }

  if (objc_opt_class())
  {
    qword_100081D48 = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
    InfoDictionary = CFBundleGetInfoDictionary(a1);
    TypeID = CFDictionaryGetTypeID();
    if (InfoDictionary && CFGetTypeID(InfoDictionary) == TypeID)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"QoSMarking_AppleAudioVideoCalls_BundleIDs");
      v17 = CFArrayGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v17)
        {
          v18 = Value;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(&qword_100081D20, v18);
      v19 = CFDictionaryGetValue(InfoDictionary, @"QoSMarking_AppleAudioVideoCalls_ExecutablePaths");
      v20 = CFArrayGetTypeID();
      if (v19)
      {
        if (CFGetTypeID(v19) == v20)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      objc_storeStrong(&qword_100081D28, v21);
    }

    v22 = SCDynamicStoreCreate(0, @"QoS Marking Configuraton plug-in", sub_100066D44, 0);
    if (v22)
    {
      v23 = v22;
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v25 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      CFArrayAppendValue(Mutable, qword_100081D48);
      NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetQoSMarkingPolicy);
      CFArrayAppendValue(v25, NetworkInterfaceEntity);
      CFRelease(NetworkInterfaceEntity);
      LODWORD(NetworkInterfaceEntity) = SCDynamicStoreSetNotificationKeys(v23, Mutable, v25);
      CFRelease(Mutable);
      CFRelease(v25);
      if (!NetworkInterfaceEntity)
      {
        v30 = sub_1000636BC();
        v44 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
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
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          if (_sc_log <= 0)
          {
            v45 = 2;
          }

          else
          {
            v45 = 3;
          }

          v52 = 0uLL;
          v53 = 0uLL;
          if (os_log_type_enabled(v30, v44))
          {
            v46 = v45;
          }

          else
          {
            v46 = 2;
          }

          v30 = v30;
          v47 = SCError();
          SCErrorString(v47);
          v35 = _os_log_send_and_compose_impl(v46, 0, &v52, 256, &_mh_execute_header, v30, v44, "SCDynamicStoreSetNotificationKeys() failed: %s", &v50);
          goto LABEL_64;
        }

LABEL_66:

        CFRelease(v23);
        return;
      }

      v27 = qword_100081D68;
      if (!qword_100081D68)
      {
        v28 = dispatch_queue_create("com.apple.SystemConfiguration.QoSMarking", 0);
        v29 = qword_100081D68;
        qword_100081D68 = v28;

        v27 = qword_100081D68;
      }

      if (!SCDynamicStoreSetDispatchQueue(v23, v27))
      {
        v30 = sub_1000636BC();
        v31 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
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
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          if (_sc_log <= 0)
          {
            v32 = 2;
          }

          else
          {
            v32 = 3;
          }

          v52 = 0uLL;
          v53 = 0uLL;
          if (os_log_type_enabled(v30, v31))
          {
            v33 = v32;
          }

          else
          {
            v33 = 2;
          }

          v30 = v30;
          v34 = SCError();
          SCErrorString(v34);
          v35 = _os_log_send_and_compose_impl(v33, 0, &v52, 256, &_mh_execute_header, v30, v31, "SCDynamicStoreSetDispatchQueue() failed: %s", &v50);
LABEL_64:
          v48 = v35;

          __SC_log_send2();
          if (v48 != &v52)
          {
            free(v48);
          }

          goto LABEL_66;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v36 = sub_1000636BC();
      v37 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
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
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v38 = _sc_log <= 0 ? 2 : 3;
        v52 = 0uLL;
        v53 = 0uLL;
        v39 = os_log_type_enabled(v36, v37) ? v38 : 2;
        v40 = v36;
        v41 = SCError();
        v42 = SCErrorString(v41);
        v50 = 136315138;
        v51 = v42;
        v43 = _os_log_send_and_compose_impl(v39, 0, &v52, 256, &_mh_execute_header, v40, v37, "SCDynamicStoreCreate() failed: %s", &v50);

        __SC_log_send2();
        if (v43 != &v52)
        {
          free(v43);
        }
      }
    }
  }
}

void sub_100066D44(SCDynamicStoreRef store, CFArrayRef keys)
{
  if (!qword_100081D60)
  {
    qword_100081D60 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompInterface);
  }

  v4 = SCDynamicStoreCopyMultiple(store, keys, 0);
  Count = CFArrayGetCount(keys);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    v28 = kSCPropNetQoSMarkingWhitelistedAppIdentifiers;
    v27 = kSCPropNetQoSMarkingAllowListAppIdentifiers;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(keys, v7);
      if (CFEqual(ValueAtIndex, qword_100081D48))
      {
        if (v4)
        {
          Value = CFDictionaryGetValue(v4, ValueAtIndex);
          TypeID = CFDictionaryGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == TypeID)
            {
              v11 = CFDictionaryGetValue(Value, kSCPropNetInterfaces);
              v12 = CFArrayGetTypeID();
              if (v11)
              {
                if (CFGetTypeID(v11) == v12)
                {
                  v13 = objc_autoreleasePoolPush();
                  v14 = +[QoSMarkingController sharedController];
                  [v14 setInterfaces:v11];

                  objc_autoreleasePoolPop(v13);
                }
              }
            }
          }
        }

        else
        {
          CFDictionaryGetTypeID();
        }
      }

      else
      {
        v15 = qword_100081D60;
        if (CFStringHasPrefix(ValueAtIndex, qword_100081D60))
        {
          MutableCopy = CFStringCreateMutableCopy(0, 0, ValueAtIndex);
          v30.length = CFStringGetLength(v15);
          v30.location = 0;
          CFStringDelete(MutableCopy, v30);
          location = CFStringFind(MutableCopy, @"/", 0).location;
          if (location != -1)
          {
            v18 = location;
            v31.length = CFStringGetLength(MutableCopy) - location;
            v31.location = v18;
            CFStringDelete(MutableCopy, v31);
          }

          if (MutableCopy)
          {
            if (v4)
            {
              v19 = CFDictionaryGetValue(v4, ValueAtIndex);
              v20 = v19;
              if (v19)
              {
                v21 = CFDictionaryGetValue(v19, v28);
                if (v21)
                {
                  v22 = v21;
                  v23 = CFDictionaryGetValue(v20, v27);
                  v24 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v20);
                  v20 = v24;
                  if (!v23)
                  {
                    CFDictionarySetValue(v24, v27, v22);
                  }

                  CFDictionaryRemoveValue(v20, v28);
                }

                else
                {
                  CFRetain(v20);
                }
              }
            }

            else
            {
              v20 = 0;
            }

            v25 = objc_autoreleasePoolPush();
            v26 = +[QoSMarkingController sharedController];
            [v26 setPolicy:v20 forInterface:MutableCopy];

            objc_autoreleasePoolPop(v25);
            if (v20)
            {
              CFRelease(v20);
            }

            CFRelease(MutableCopy);
          }
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_100067124(const char *a1, int a2)
{
  v15 = a2;
  if (sysctlbyname(a1, 0, 0, &v15, 4uLL) != -1)
  {
    v3 = sub_1000636BC();
    v4 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_22;
    }

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
    v20 = 0u;
    v21 = 0u;
    v5 = _sc_log <= 0 ? 2 : 3;
    v6 = os_log_type_enabled(v3, v4) ? v5 : 2;
    v16 = 136315394;
    v17 = a1;
    v18 = 1024;
    v19 = v15;
    v7 = _os_log_send_and_compose_impl(v6, 0, &v20, 256, &_mh_execute_header, v3, v4, "QoS marking policy: sysctl %s=%d", &v16, 18);
    __SC_log_send2();
    if (v7 == &v20)
    {
      goto LABEL_22;
    }

    v8 = v7;
    goto LABEL_21;
  }

  if (*__error() == 2)
  {
    return;
  }

  v3 = sub_1000636BC();
  v9 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
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
    v20 = 0u;
    v21 = 0u;
    v10 = _sc_log <= 0 ? 2 : 3;
    v11 = os_log_type_enabled(v3, v9) ? v10 : 2;
    v3 = v3;
    v12 = __error();
    v13 = strerror(*v12);
    v16 = 136315138;
    v17 = v13;
    v14 = _os_log_send_and_compose_impl(v11, 0, &v20, 256, &_mh_execute_header, v3, v9, "sysctlbyname() failed: %s", &v16);

    __SC_log_send2();
    if (v14 != &v20)
    {
      v8 = v14;
LABEL_21:
      free(v8);
    }
  }

LABEL_22:
}

void sub_10006745C()
{

  dispatch_once(&qword_100081758, &stru_100079B58);
}

void sub_1000674F0()
{

  dispatch_once(&qword_100081798, &stru_100079DA8);
}

void sub_100067558()
{

  dispatch_once(&qword_100081788, &stru_100079D68);
}

void sub_1000675C0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "cleanup : %5u", v2, 8u);
}

void sub_100067664(int *a1, uint64_t *a2, os_log_t log)
{
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2112;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "open    : %5u : %@", v5, 0x12u);
}

void sub_1000676F4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "close   : %5u", v3, 8u);
}

void sub_100067770(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 44);
  v4 = *(a1 + 40);
  v6 = 136315650;
  if (v3)
  {
    v5 = "t ";
  }

  else
  {
    v5 = "  ";
  }

  v7 = v5;
  v8 = 1024;
  v9 = v4;
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "add  %s : %5u : %@", &v6, 0x1Cu);
}

void sub_10006798C()
{

  dispatch_once(&qword_1000818B8, &stru_10007A5B0);
}

void sub_100067B04()
{

  dispatch_once(&qword_100081898, &stru_10007A510);
}

void sub_100067BF0()
{

  dispatch_once(&qword_100081928, &stru_10007A730);
}

void sub_100067D10()
{

  dispatch_once(&qword_100081950, &stru_10007A860);
}

void sub_100067DFC()
{
  sub_1000471E4();

  dispatch_once(&qword_100081AD8, &stru_10007ACD0);
}

void sub_100067EBC()
{
  sub_1000471E4();

  dispatch_once(&qword_100081AE8, &stru_10007AD10);
}

void sub_1000680B4()
{

  dispatch_once(&qword_100081B58, &stru_10007AF00);
}

void sub_1000681D0()
{

  dispatch_once(&qword_100081B98, &stru_10007AFA0);
}

void sub_100068294()
{

  dispatch_once(&qword_100081BC0, &stru_10007B0A0);
}

void sub_1000682FC()
{

  dispatch_once(&qword_100081BD8, &stru_10007B190);
}

void sub_100068364()
{

  dispatch_once(&qword_100081BF0, &stru_10007B230);
}

void sub_1000683F8()
{

  dispatch_once(&qword_100081D58, &stru_10007B3F8);
}

void sub_100068460()
{

  dispatch_once(&qword_100081D40, &stru_10007B3D8);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}