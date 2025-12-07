void sub_890(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  if (qword_C780 != -1)
  {
    sub_50D0();
  }

  if (off_C778)
  {
    off_C778(a1, a2, va);
  }

  else
  {
    vsyslog(a1, a2, va);
  }
}

uint64_t sub_938(uint64_t a1, uint64_t a2)
{
  if (qword_C790 != -1)
  {
    sub_50E4();
  }

  return qword_C788;
}

void spd_dump_cached_state(uint64_t a1, uint64_t a2)
{
  *v73 = 0u;
  memset(v74, 0, sizeof(v74));
  v2 = sub_938(a1, a2);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v5 = sub_938(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "\tCurrent default route reachability state:", buf, 2u);
  }

  v8 = sub_938(v6, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v9)
  {
    v11 = "true";
    if (!qword_C798)
    {
      v11 = "false";
    }

    if (byte_C7A0)
    {
      v12 = "reachable";
    }

    else
    {
      v12 = "not reachable";
    }

    *buf = 136315394;
    *v70 = v11;
    *&v70[8] = 2080;
    *&v70[10] = v12;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "\t\tMonitoring IPv4: %s, State: %s", buf, 0x16u);
  }

  v13 = sub_938(v9, v10);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v14)
  {
    v16 = "true";
    if (!qword_C7A8)
    {
      v16 = "false";
    }

    if (byte_C7B0)
    {
      v17 = "reachable";
    }

    else
    {
      v17 = "not reachable";
    }

    *buf = 136315394;
    *v70 = v16;
    *&v70[8] = 2080;
    *&v70[10] = v17;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "\t\tMonitoring IPv6: %s, State: %s", buf, 0x16u);
  }

  v18 = sub_938(v14, v15);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v21 = sub_938(v19, v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v22)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "\tCurrent clients spd is holding sockets for:", buf, 2u);
  }

  v24 = sub_938(v22, v23);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (v25)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "\t-------------------------------------------", buf, 2u);
  }

  v27 = xpc_event_module_get_queue_ptr;
  v28 = qword_C7B8;
  if (qword_C7B8)
  {
    v29 = 0;
    do
    {
      if (*(v28 + 64))
      {
        ++v29;
      }

      else
      {
        v30 = sub_938(v25, v26);
        v25 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
        if (v25)
        {
          v31 = *(v28 + 24);
          if ((*(v28 + 64) & 2) != 0)
          {
            v32 = "true";
          }

          else
          {
            v32 = "false";
          }

          if ((*(v28 + 64) & 4) != 0)
          {
            v33 = "true";
          }

          else
          {
            v33 = "false";
          }

          *buf = 136315906;
          *v70 = v28 + 48;
          *&v70[8] = 1024;
          *&v70[10] = v31;
          *&v70[14] = 2080;
          *&v70[16] = v32;
          v71 = 2080;
          v72 = v33;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "\tClient %s.%d, checked in socket before: %s, wakeup allowed: %s", buf, 0x26u);
        }

        v34 = *(v28 + 16);
        if (v34)
        {
          v68 = v29;
          v35 = 0;
          while (1)
          {
            v36 = *(v34 + 30);
            if (v36 == 255)
            {
              v37 = "UNKNOWN";
            }

            else
            {
              v37 = 0;
            }

            if (v36 == 128)
            {
              v37 = "GENERIC";
            }

            if (v36 == 4)
            {
              v37 = "LOOPBACK";
            }

            if (v36 == 2)
            {
              v38 = "WiFi";
            }

            else
            {
              v38 = 0;
            }

            if (v36 == 1)
            {
              v38 = "WWAN";
            }

            if (!v36)
            {
              v38 = "LOCAL";
            }

            if (v36 <= 3)
            {
              v39 = v38;
            }

            else
            {
              v39 = v37;
            }

            v40 = *(v34 + 45);
            if (v40 == 30)
            {
              v41 = v34 + 52;
              v42 = 30;
            }

            else
            {
              if (v40 != 2)
              {
                goto LABEL_60;
              }

              v41 = v34 + 6;
              v42 = 2;
            }

            v43 = inet_ntop(v42, v41, v73, 0x2Eu);
            if (!v43)
            {
LABEL_60:
              v43 = __strlcpy_chk();
            }

            v45 = sub_938(v43, v44);
            v25 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
            if (v25)
            {
              v46 = "ON";
              if (!v34[12])
              {
                v46 = "OFF";
              }

              *buf = 67109890;
              *v70 = v35;
              *&v70[4] = 2080;
              *&v70[6] = v73;
              *&v70[14] = 2080;
              *&v70[16] = v39;
              v71 = 2080;
              v72 = v46;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "      socket[%d]      %s : %s : %s", buf, 0x26u);
            }

            ++v35;
            v34 = *v34;
            if (!v34)
            {
              v29 = v68;
              break;
            }
          }
        }
      }

      v28 = *v28;
    }

    while (v28);
    v47 = v29 == 0;
    v27 = xpc_event_module_get_queue_ptr;
  }

  else
  {
    v48 = sub_938(v25, v26);
    v47 = 1;
    v25 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "\tNONE", buf, 2u);
    }
  }

  v49 = sub_938(v25, v26);
  v50 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);
  if (v50)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v52 = sub_938(v50, v51);
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
  if (v53)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "\tCurrent clients spd is notifying of wakeup:", buf, 2u);
  }

  v55 = sub_938(v53, v54);
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
  if (v56)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "\t-------------------------------------------", buf, 2u);
  }

  v58 = sub_938(v56, v57);
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_INFO);
  if (v47)
  {
    if (v59)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "\tNONE", buf, 2u);
    }
  }

  else
  {
    if (v59)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "\tsession client(s)", buf, 2u);
    }

    for (i = v27[247]; i; i = *i)
    {
      if (*(i + 64))
      {
        v62 = sub_938(v59, v60);
        v59 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
        if (v59)
        {
          v63 = *(i + 6);
          *buf = 136315394;
          *v70 = i + 48;
          *&v70[8] = 1024;
          *&v70[10] = v63;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "\t[name=%s, PID=%d]", buf, 0x12u);
        }
      }
    }
  }

  v64 = sub_938(v59, v60);
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);
  if (v65)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "\t-------------------------------------------", buf, 2u);
  }

  v67 = sub_938(v65, v66);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "", buf, 2u);
  }
}

void sub_112C(id a1)
{
  if (qword_C7C8)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_1350;
    v7[3] = &unk_C460;
    v7[4] = &v8;
    v2 = sub_1294(v7);
    byte_C7D0 = *(v9 + 24);
    v4 = sub_938(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (byte_C7D0)
      {
        v5 = "DOES";
      }

      else
      {
        v5 = "DOES NOT";
      }

      *buf = 136315138;
      v13 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Upon WiFi callback: this device %s support WoW", buf, 0xCu);
    }

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6 = sub_938(a1, v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_50F8();
    }
  }
}

intptr_t sub_1294(uint64_t a1)
{
  if (qword_C808 != -1)
  {
    sub_5134();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_3E38;
  block[3] = &unk_C630;
  block[4] = a1;
  CFRunLoopPerformBlock(qword_C818, kCFRunLoopCommonModes, block);
  CFRunLoopWakeUp(qword_C818);
  return dispatch_semaphore_wait(qword_C810, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_1350(uint64_t a1)
{
  result = WiFiManagerClientGetWoWCapability();
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void spd_cleanup_all_client_sockets(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        spd_cleanup_client_socket(result, v2);
        v2 = v3;
      }

      while (v3);
    }
  }
}

void spd_cleanup_client_socket(uint64_t a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    v4 = spd_stop_dispatch_events(a1, a2);
    if (a2[30] == 2 && byte_C7D0 == 1 && !--qword_C7D8)
    {
      v6 = sub_938(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Turning WoW OFF", v15, 2u);
      }

      sub_1294(&stru_C4A0);
    }

    v7 = *(a2 + 16);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = close(a2[18]);
    v10 = sub_938(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a2[18];
      v12 = *(a1 + 24);
      v15[0] = 67109376;
      v15[1] = v11;
      v16 = 1024;
      v17 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Successfully checked out socket [FD=%d] for client [PID=%d]", v15, 0xEu);
    }

    v13 = *a2;
    v14 = *(a2 + 1);
    if (*a2)
    {
      *(v13 + 8) = v14;
    }

    *v14 = v13;
    free(a2);
  }
}

uint64_t spd_stop_dispatch_events(uint64_t a1, uint64_t a2)
{
  result = 4;
  if (a1 && a2)
  {
    v5 = sub_938(4, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 24);
      v8 = *(a2 + 72);
      v11[0] = 67109376;
      v11[1] = v7;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Stopping to monitor socket events for client [PID=%d] and socket [FD=%d]", v11, 0xEu);
    }

    v9 = *(a2 + 96);
    if (v9)
    {
      dispatch_source_cancel(v9);
      dispatch_release(*(a2 + 96));
      *(a2 + 96) = 0;
    }

    v10 = *(a2 + 104);
    if (v10)
    {
      dispatch_source_cancel(v10);
      dispatch_release(*(a2 + 104));
      *(a2 + 104) = 0;
    }

    if (*(a2 + 112))
    {
      spd_cancel_reachability(a2, v6);
      CFRelease(*(a2 + 112));
      result = 0;
      *(a2 + 112) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1664(id a1)
{
  WiFiManagerClientSetWoWState();

  WiFiManagerClientSetType();
}

uint64_t spd_client_add(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pid = xpc_connection_get_pid(result);
    v4 = pid;
    v5 = &qword_C7B8;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (*(v5 + 6) == pid)
      {
        v6 = sub_938(pid, v3);
        result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v7 = "???";
          v8 = v5[4];
          if (v5[5])
          {
            v7 = v5[5];
          }

          v9 = *(v5 + 6);
          LODWORD(v24[0]) = 136315906;
          *(v24 + 4) = v7;
          WORD6(v24[0]) = 1024;
          *(v24 + 14) = v9;
          WORD1(v24[1]) = 2048;
          *(&v24[1] + 4) = v8;
          WORD6(v24[1]) = 2048;
          *(&v24[1] + 14) = v1;
          _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "existing client %s [%d], %p->%p", v24, 0x26u);
          return 0;
        }

        return result;
      }
    }

    result = malloc_type_calloc(1uLL, 0x48uLL, 0x10B004081547AA1uLL);
    if (result)
    {
      v10 = result;
      *(result + 24) = v4;
      *(result + 32) = v1;
      if (sub_19F4())
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 64) = *(v10 + 64) & 0xFB | v11;
      xpc_connection_get_audit_token();
      memset(&token, 0, sizeof(token));
      v12 = SecTaskCreateWithAuditToken(0, &token);
      v13 = v12;
      if (v12)
      {
        v14 = SecTaskCopySigningIdentifier(v12, 0);
        CFRelease(v13);
        if (v14)
        {
          Length = CFStringGetLength(v14);
          v13 = malloc_type_malloc(Length + 1, 0x21CBA50EuLL);
          if (!CFStringGetCString(v14, v13, Length + 1, 0x8000100u))
          {
            free(v13);
            v13 = 0;
          }

          CFRelease(v14);
        }

        else
        {
          v13 = 0;
        }
      }

      *(v10 + 40) = v13;
      xpc_retain(v1);
      *(v10 + 48) = 0;
      memset(v24, 0, sizeof(v24));
      v16 = proc_pidinfo(v4, 13, 1uLL, v24, 64);
      if (v16 == 64)
      {
        v16 = __strlcpy_chk();
      }

      v18 = qword_C7B8;
      *v10 = qword_C7B8;
      if (v18)
      {
        *(v18 + 8) = v10;
      }

      qword_C7B8 = v10;
      *(v10 + 8) = &qword_C7B8;
      v19 = sub_938(v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *(v10 + 40);
        if (!v20)
        {
          v20 = "???";
        }

        v21 = *(v10 + 24);
        v22 = *(v10 + 64);
        token.val[0] = 136315650;
        if ((v22 & 4) != 0)
        {
          v23 = "true";
        }

        else
        {
          v23 = "false";
        }

        *&token.val[1] = v20;
        LOWORD(token.val[3]) = 1024;
        *(&token.val[3] + 2) = v21;
        HIWORD(token.val[4]) = 2080;
        *&token.val[5] = v23;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "adding client %s [%d], wakeup allowed: %s", &token, 0x1Cu);
      }

      return 1;
    }
  }

  return result;
}

uint64_t *spd_client_find_by_pid(int a1)
{
  result = &qword_C7B8;
  do
  {
    result = *result;
  }

  while (result && *(result + 6) != a1);
  return result;
}

BOOL sub_19F4()
{
  v0 = xpc_connection_copy_entitlement_value();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (xpc_get_type(v0) != &_xpc_type_BOOL)
  {
    return 0;
  }

  return xpc_BOOL_get_value(v1);
}

uint64_t spd_cleanup_client(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v14 = sub_938(0, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Request cleanup of NULL client", &v15, 2u);
    }

    return 5;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    do
    {
      v4 = *v3;
      spd_cleanup_client_socket(a1, v3);
      v3 = v4;
    }

    while (v4);
    if (*(a1 + 16))
    {
      v5 = sub_938(a1, 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_5148();
      }

      return 5;
    }
  }

  v6 = sub_938(a1, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v15 = 134218496;
    v16 = a1;
    v17 = 1024;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "cleaned up client %p with pid %d, connection %p", &v15, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    xpc_connection_cancel(v9);
    xpc_release(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    free(v10);
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  if (*a1)
  {
    *(v11 + 8) = v12;
  }

  *v12 = v11;
  free(a1);
  return 0;
}

uint64_t spd_log_event(uint64_t a1, uint64_t a2)
{
  result = 4;
  if (a1 && a2)
  {
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = a1 + 48;
    }

    v6 = sub_938(4, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 24);
      *buf = 136315906;
      v14 = a2;
      v15 = 2080;
      v16 = a1 + 48;
      v17 = 2080;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Logging event %s for client [name: %s, bundle ID: %s, PID=%d]", buf, 0x26u);
    }

    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s.%s", a2, v5);
    if (v9)
    {
      v11 = v9;
      v12 = sub_938(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_51C8(v11);
      }

      ADClientAddValueForScalarKey();
      CFRelease(v11);
      return 0;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t spd_notify_client_sessions_of_wake(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if ((*(a1 + 64) & 4) == 0)
  {
    v4 = sub_938(a1, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_5300();
    return 0;
  }

  spd_log_event(a1, "com.apple.spd.app_resume");
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "msg_type", 50);
    xpc_dictionary_set_int64(v7, "pid", v3);
    v10 = qword_C7B8;
    if (!qword_C7B8)
    {
      goto LABEL_19;
    }

    v11 = 0;
    do
    {
      while ((*(v10 + 64) & 1) != 0)
      {
        v12 = sub_938(v8, v9);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(v10 + 40);
          if (!v13)
          {
            v13 = "???";
          }

          v14 = *(v10 + 24);
          v15 = *(a1 + 40);
          if (!v15)
          {
            v15 = "???";
          }

          v16 = *(a1 + 24);
          *buf = 136315906;
          v19 = v13;
          v20 = 1024;
          v21 = v14;
          v22 = 2080;
          v23 = v15;
          v24 = 1024;
          v25 = v16;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Notifying %s [%d] to wake up %s [%d]", buf, 0x22u);
        }

        xpc_connection_send_message(*(v10 + 32), v7);
        v10 = *v10;
        v11 = 1;
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      v10 = *v10;
    }

    while (v10);
    if ((v11 & 1) == 0)
    {
LABEL_19:
      v17 = sub_938(v8, v9);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_5270();
      }
    }

LABEL_21:
    xpc_release(v7);
    return 0;
  }

  return 6;
}

uint64_t spd_start_dispatch_events(_DWORD *a1, uint64_t a2)
{
  v2 = 4;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = sub_938(a1, a2);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v6)
  {
    v8 = a1[6];
    v9 = *(a2 + 72);
    *buf = 67109376;
    v25 = v8;
    v26 = 1024;
    v27 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Starting to monitor socket events for client [PID=%d] and socket [FD=%d]", buf, 0xEu);
  }

  if (*(a2 + 96))
  {
    v10 = sub_938(v6, v7);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_537C();
    }
  }

  else
  {
    v13 = dispatch_source_create(&_dispatch_source_type_read, *(a2 + 72), 0, qword_C7C0);
    *(a2 + 96) = v13;
    if (v13)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_2220;
      handler[3] = &unk_C4C0;
      handler[4] = a1;
      dispatch_source_set_event_handler(v13, handler);
      dispatch_resume(*(a2 + 96));
      v11 = spd_setup_reachability(a1, a2);
      if (v11)
      {
        v15 = sub_938(v11, v12);
        v11 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          sub_53F0();
        }
      }

      v2 = 0;
      goto LABEL_14;
    }

    v19 = sub_938(0, v14);
    v11 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_5464();
    }
  }

  v2 = 5;
LABEL_14:
  if (*(a2 + 104))
  {
    v16 = sub_938(v11, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_54D8();
    }
  }

  else
  {
    v17 = dispatch_source_create(&_dispatch_source_type_sock, *(a2 + 72), 0x100uLL, qword_C7C0);
    *(a2 + 104) = v17;
    if (v17)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 0x40000000;
      v22[2] = sub_2578;
      v22[3] = &unk_C4E0;
      v22[4] = a1;
      v22[5] = a2;
      dispatch_source_set_event_handler(v17, v22);
      dispatch_resume(*(a2 + 104));
      return 0;
    }

    else
    {
      v20 = sub_938(0, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_554C();
      }
    }
  }

  return v2;
}

uint64_t sub_2220(uint64_t a1, uint64_t a2)
{
  v3 = sub_938(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 24);
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Data available for client [PID=%d], waking...", v7, 8u);
  }

  spd_notify_client_sessions_of_wake(*(a1 + 32), v4);
  return spd_stop_all_dispatch_events(*(a1 + 32));
}

uint64_t spd_stop_all_dispatch_events(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_stop_dispatch_events(a1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

uint64_t spd_setup_reachability(void *a1, uint64_t a2)
{
  v20.version = 0;
  memset(&v20.retain, 0, 24);
  v20.info = a1;
  if (!a1 || !a2)
  {
    v7 = sub_938(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (a2)
      {
        v16 = *(a2 + 72);
      }

      else
      {
        v16 = -1;
      }

      *buf = 134218240;
      v22 = a1;
      v23 = 1024;
      v24 = v16;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "NULL object(s) passed in for setting up reachability client [ADDR=%p] socket [FD=%d]", buf, 0x12u);
    }

    return 5;
  }

  v4 = *(a2 + 120);
  if (v4 && v4 != 255)
  {
    if (*(a2 + 112))
    {
      v8 = sub_938(a1, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_55C0();
      }
    }

    else
    {
      v9 = SCNetworkReachabilityCreateWithAddressPair(kCFAllocatorDefault, (a2 + 16), (a2 + 44));
      if (v9)
      {
        v11 = v9;
        v12 = SCNetworkReachabilitySetCallback(v9, spd_reachability_callback, &v20);
        if (v12)
        {
          v14 = SCNetworkReachabilitySetDispatchQueue(v11, qword_C7C0);
          if (v14)
          {
            result = 0;
            *(a2 + 112) = v11;
            return result;
          }

          v19 = sub_938(v14, v15);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_564C();
          }
        }

        else
        {
          v18 = sub_938(v12, v13);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_56C0();
          }
        }

        if (!*(a2 + 112))
        {
          CFRelease(v11);
        }
      }

      else
      {
        v17 = sub_938(0, v10);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_5734();
        }
      }
    }

    return 5;
  }

  v5 = sub_938(a1, a2);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Socket isn't AF_NET or AF_NET6 so we can't setup reachability", buf, 2u);
    return 0;
  }

  return result;
}

void sub_2578(uint64_t a1, uint64_t a2)
{
  v3 = sub_938(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 24);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "TCP KeepAlive received for client [PID=%d]", v6, 8u);
  }

  spd_log_event(*(a1 + 32), "com.apple.spd.tcp_keepalive");
  v5 = *(*(a1 + 40) + 104);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(*(a1 + 40) + 104));
    *(*(a1 + 40) + 104) = 0;
  }
}

uint64_t spd_cancel_reachability(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = SCNetworkReachabilitySetDispatchQueue(*(a1 + 112), 0);
    if (v2 == 1)
    {
      return 0;
    }

    v6 = sub_938(v2, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_57A8();
    }
  }

  else
  {
    v5 = sub_938(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_581C();
    }
  }

  return 5;
}

uint64_t spd_start_all_dispatch_events(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_start_dispatch_events(a1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

uint64_t spd_vet_socket(uint64_t a1)
{
  v52 = 0;
  *cStr = 0;
  v60 = 0;
  theString1 = 0;
  if (!a1)
  {
    return 4;
  }

  *v50 = 0;
  v3 = (a1 + 72);
  v2 = *(a1 + 72);
  v49 = 0;
  v3[12] = 255;
  v51 = 28;
  v4 = getsockname(v2, (v3 - 14), &v51);
  if (v4)
  {
    v6 = sub_938(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_5858();
    }

    return 46;
  }

  v51 = 28;
  v8 = getpeername(*(a1 + 72), (a1 + 44), &v51);
  if (v8)
  {
    v10 = sub_938(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_58E4();
    }

    return 46;
  }

  v12 = *(a1 + 17);
  if (v12 != 30)
  {
    if (v12 == 2 && *(a1 + 45) == 2)
    {
      goto LABEL_14;
    }

LABEL_21:
    v7 = 0;
    *(a1 + 120) = 0;
    return v7;
  }

  if (*(a1 + 45) != 30)
  {
    goto LABEL_21;
  }

LABEL_14:
  v50[1] = 4;
  if (v12 == 30)
  {
    v13 = 41;
  }

  else
  {
    v13 = 0;
  }

  v14 = getsockopt(*v3, v13, 9696, &v52, &v50[1]);
  if (v14)
  {
    v16 = sub_938(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_5970();
    }

    return 46;
  }

  v17 = v52;
  if (!v52 || (v17 = if_indextoname(v52, cStr)) == 0)
  {
    v27 = sub_938(v17, v15);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_5A54();
    }

    return 46;
  }

  v18 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x600u);
  if (v18)
  {
    v20 = v18;
    if (CFStringCompare(@"lo0", v18, 0) == kCFCompareEqualTo)
    {
      v7 = 0;
      *(a1 + 120) = 4;
      goto LABEL_59;
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = 0;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 0x40000000;
    v43[2] = sub_2C5C;
    v43[3] = &unk_C508;
    v43[4] = &v44;
    v43[5] = v20;
    v21 = sub_1294(v43);
    v23 = v45[3];
    if (v23)
    {
      if (byte_C7D0 == 1 && !qword_C7D8++)
      {
        v25 = sub_938(v21, v22);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Turning WoW ON", buf, 2u);
        }

        sub_1294(&stru_C548);
        v23 = v45[3];
      }

      v7 = 0;
      *(a1 + 128) = v23;
      v26 = 2;
      goto LABEL_33;
    }

    PacketContextActiveByServiceType = _CTServerConnectionGetPacketContextActiveByServiceType();
    v31 = PacketContextActiveByServiceType;
    v32 = HIDWORD(PacketContextActiveByServiceType);
    if (HIDWORD(PacketContextActiveByServiceType) || (v30 = v50[0], (v50[0] & 0x80000000) != 0))
    {
      v37 = sub_938(PacketContextActiveByServiceType, v30);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 67109632;
      v54 = v32;
      v55 = 1024;
      v56 = v31;
      v57 = 1024;
      v58 = v50[0];
      v38 = "CT acquire packet context failed, error=%d domain=%d pdp=%d";
    }

    else
    {
      v33 = _CTServerConnectionCopyPacketContextInterfaceName();
      v35 = v33;
      v36 = HIDWORD(v33);
      if (HIDWORD(v33) || (v33 = theString1) == 0)
      {
        v37 = sub_938(v33, v34);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }

        *buf = 67109632;
        v54 = v36;
        v55 = 1024;
        v56 = v35;
        v57 = 1024;
        v58 = v50[0];
        v38 = "CT acquire interface failed, error=%d domain=%d pdp=%d";
      }

      else
      {
        if (CFStringCompare(theString1, v20, 0))
        {
          if (*(a1 + 120) == 255)
          {
            v7 = 0;
            v26 = 128;
LABEL_33:
            *(a1 + 120) = v26;
LABEL_58:
            _Block_object_dispose(&v44, 8);
LABEL_59:
            CFRelease(v20);
            if (theString1)
            {
              CFRelease(theString1);
            }

            return v7;
          }

          goto LABEL_57;
        }

        v39 = _CTServerConnectionPacketContextAssertionCreate();
        v41 = v39;
        v42 = HIDWORD(v39);
        if (!HIDWORD(v39) && *(a1 + 128))
        {
          v7 = 0;
          v26 = 1;
          goto LABEL_33;
        }

        v37 = sub_938(v39, v40);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
LABEL_57:
          v7 = 5;
          goto LABEL_58;
        }

        *buf = 67109632;
        v54 = v42;
        v55 = 1024;
        v56 = v41;
        v57 = 1024;
        v58 = v50[0];
        v38 = "CT assertion failed, error=%d domain=%d pdp=%d";
      }
    }

    _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x14u);
    goto LABEL_57;
  }

  v28 = sub_938(0, v19);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_59E0();
  }

  return 6;
}

CFTypeRef sub_2C5C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = WiFiManagerClientGetDevice();
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void sub_2CC4(id a1)
{
  WiFiManagerClientSetWoWState();

  WiFiManagerClientSetType();
}

uint64_t spd_reachability_callback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_938(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a3 + 24);
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Reachability notifications fired for client [PID=%d]", v8, 8u);
    }

    result = spd_notify_client_sessions_of_wake(a3, v5);
    for (i = *(a3 + 16); i; i = *i)
    {
      result = spd_stop_dispatch_events(a3, i);
    }
  }

  return result;
}

uint64_t spd_checkin_socket(_xpc_connection_s *a1, int a2, unsigned __int8 *a3)
{
  v39 = 0;
  pid = xpc_connection_get_pid(a1);
  v7 = pid;
  memset(&v38, 0, sizeof(v38));
  if (a3)
  {
    v8 = &qword_C7B8;
    do
    {
      v8 = *v8;
      if (!v8)
      {
        return 4;
      }
    }

    while (*(v8 + 6) != pid);
    v9 = v8 + 2;
    v10 = v8 + 2;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      pid = uuid_compare(v10 + 76, a3);
      if (!pid)
      {
        return 0;
      }
    }

    if (a2 == -1)
    {
      v17 = sub_938(pid, v6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_5C98();
      }

      return 5;
    }

    v14 = fstat(a2, &v38);
    if (v14)
    {
      v16 = sub_938(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_5AC4();
      }

      return 5;
    }

    if ((v38.st_mode & 0xF000) != 0xC000)
    {
      v24 = sub_938(v14, v15);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(v8 + 6);
        *buf = 67109120;
        v41 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Descriptor is not a socket, client [PID=%d]", buf, 8u);
      }

      return 5;
    }

    uuid_clear(a3);
    v18 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E004033DDB314uLL);
    if (v18)
    {
      v19 = v18;
      v18[18] = a2;
      v20 = v18 + 18;
      v21 = spd_vet_socket(v18);
      if (v21)
      {
        v11 = v21;
        if (v21 != 46)
        {
          v29 = sub_938(v21, v22);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_5C28();
            if (!v11)
            {
              return v11;
            }
          }

          else if (!v11)
          {
            return v11;
          }

          goto LABEL_40;
        }

        v23 = sub_938(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_5B34();
        }
      }

      else
      {
        if (!*(v19 + 120))
        {
          v30 = sub_938(v21, v22);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v41 = v7;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Client process [PID=%d] attempting to checkin non-AF_NET[6?] socket", buf, 8u);
          }

          v11 = 4;
          goto LABEL_40;
        }

        v26 = setsockopt(*v20, 0xFFFF, 4352, &v39, 4u);
        if (!v26)
        {
          uuid_generate_random((v19 + 76));
          uuid_copy(a3, (v19 + 76));
          v33 = *v9;
          *v19 = *v9;
          if (v33)
          {
            *(v33 + 8) = v19;
          }

          v8[2] = v19;
          *(v19 + 8) = v9;
          *(v8 + 64) |= 2u;
          v34 = sub_938(v31, v32);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = *v20;
            v36 = *(v8 + 6);
            v37 = v8[5];
            if (!v37)
            {
              v37 = "<NULL>";
            }

            *buf = 67109634;
            v41 = v35;
            v42 = 1024;
            v43 = v36;
            v44 = 2080;
            v45 = v37;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Successfully checked in socket [FD=%d] for client [PID=%d] with BundleID: %s", buf, 0x18u);
          }

          return 0;
        }

        v28 = sub_938(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_5BA4();
        }
      }

      v11 = 46;
LABEL_40:
      close(a2);
      free(v19);
      return v11;
    }

    close(a2);
    return 6;
  }

  else
  {
    v12 = sub_938(pid, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_5D08();
    }

    return 4;
  }
}

uint64_t spd_checkout_socket(_xpc_connection_s *a1, const unsigned __int8 *a2)
{
  pid = xpc_connection_get_pid(a1);
  v4 = &qword_C7B8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 6) == pid)
    {
      v5 = v4 + 2;
      while (1)
      {
        v5 = *v5;
        if (!v5)
        {
          break;
        }

        if (!uuid_compare(v5 + 76, a2))
        {
          spd_cleanup_client_socket(v4, v5);
          return 0;
        }
      }

      return 29;
    }
  }

  return 29;
}

uint64_t spd_checkout_all_sockets(_xpc_connection_s *a1)
{
  pid = xpc_connection_get_pid(a1);
  v2 = &qword_C7B8;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 29;
    }
  }

  while (*(v2 + 6) != pid);
  v3 = v2[2];
  if (v3)
  {
    do
    {
      v4 = *v3;
      spd_cleanup_client_socket(v2, v3);
      v3 = v4;
    }

    while (v4);
  }

  return 5;
}

uint64_t spd_start_monitoring_socket(_xpc_connection_s *a1, const unsigned __int8 *a2)
{
  pid = xpc_connection_get_pid(a1);
  v4 = &qword_C7B8;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      return 29;
    }
  }

  while (*(v4 + 6) != pid);
  v5 = (v4 + 2);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      return 4;
    }
  }

  while (uuid_compare((v5 + 76), a2));

  return spd_start_dispatch_events(v4, v5);
}

uint64_t spd_stop_monitoring_socket(_xpc_connection_s *a1, const unsigned __int8 *a2)
{
  pid = xpc_connection_get_pid(a1);
  v4 = &qword_C7B8;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      return 29;
    }
  }

  while (*(v4 + 6) != pid);
  v5 = (v4 + 2);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      return 4;
    }
  }

  while (uuid_compare((v5 + 76), a2));

  return spd_stop_dispatch_events(v4, v5);
}

uint64_t spd_start_monitoring_all_sockets_for_pid(_xpc_connection_s *a1, uint64_t a2)
{
  v2 = a2;
  if (xpc_connection_get_pid(a1) == a2 || (v3 = sub_19F4()))
  {

    return spd_start_monitoring_all_sockets_for_pid_priv(v2);
  }

  else
  {
    v6 = sub_938(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_5D78();
    }

    return 5;
  }
}

uint64_t spd_start_monitoring_all_sockets_for_pid_priv(int a1)
{
  v1 = &qword_C7B8;
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 29;
    }
  }

  while (*(v1 + 6) != a1);
  v2 = v1[2];
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_start_dispatch_events(v1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

uint64_t spd_stop_monitoring_all_sockets_for_pid(_xpc_connection_s *a1, uint64_t a2)
{
  v2 = a2;
  if (xpc_connection_get_pid(a1) == a2 || (v3 = sub_19F4()))
  {

    return spd_stop_monitoring_all_sockets_for_pid_priv(v2);
  }

  else
  {
    v6 = sub_938(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_5DF8();
    }

    return 5;
  }
}

uint64_t spd_stop_monitoring_all_sockets_for_pid_priv(int a1)
{
  v1 = &qword_C7B8;
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 29;
    }
  }

  while (*(v1 + 6) != a1);
  v2 = v1[2];
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    if (spd_stop_dispatch_events(v1, v2))
    {
      v3 = 5;
    }

    else
    {
      v3 = v3;
    }

    v2 = *v2;
  }

  while (v2);
  return v3;
}

void init_spd_plugin(uint64_t a1, uint64_t a2)
{
  v3 = sub_938(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "init_spd_plugin start", buf, 2u);
  }

  if (a1 && !qword_C7E8)
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    qword_C7E8 = v4;
    if (v4)
    {
      *v4 = a1;
      xpc_event_provider_create();
    }

    v6 = sub_938(0, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_5EB4();
    }
  }
}

void sub_3768(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_938(a1, a2);
  v7 = v6;
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_60F8();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v24 = 134218496;
      v25 = a1;
      v26 = 2048;
      v27 = a2;
      v28 = 2048;
      v29 = a3;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "spd_event_callback unhandled action: %ld, token: %llu, event: %p", &v24, 0x20u);
    }

    return;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_5EF0();
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  int64 = xpc_dictionary_get_int64(a3, "pid");
  v9 = xpc_dictionary_get_int64(a3, "msg_type");
  v11 = sub_938(v9, v10);
  v12 = v11;
  if (v9 != 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_5F74();
    }

    return;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v24 = 134218240;
    v25 = int64;
    v26 = 2048;
    v27 = a2;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "ADD event from pid %lld, spd_msg_type_init, token %llu", &v24, 0x16u);
  }

  if (qword_C7C0)
  {
    v13 = qword_C820;
    if (qword_C820)
    {
      goto LABEL_23;
    }

    v14 = xpc_connection_create(0, qword_C7C0);
    qword_C820 = v14;
    if (v14)
    {
      xpc_connection_set_event_handler(v14, &stru_C670);
      xpc_connection_resume(qword_C820);
      v13 = qword_C820;
      goto LABEL_23;
    }

    v16 = sub_938(0, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_5FF4();
    }
  }

  v13 = 0;
LABEL_23:
  v17 = xpc_dictionary_create(0, 0, 0);
  v19 = v17;
  if (v17 && v13)
  {
    xpc_dictionary_set_connection(v17, "connection", v13);
    v22 = sub_938(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_6030();
    }

    xpc_event_provider_token_fire();
  }

  v23 = sub_938(v17, v18);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_60BC();
    if (!v19)
    {
      return;
    }
  }

  else if (!v19)
  {
    return;
  }

  xpc_release(v19);
}

uint64_t spd_init_state(uint64_t a1, uint64_t a2)
{
  qword_C7C0 = a1;
  if (!a1)
  {
    v19 = sub_938(0, a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_62A8();
    }

    return 0;
  }

  qword_C7E0 = _CTServerConnectionCreateWithIdentifier();
  if (!qword_C7E0)
  {
    v20 = sub_938(0, v2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_626C();
    }

    return 0;
  }

  qword_C7C8 = WiFiManagerClientCreate();
  if (!qword_C7C8)
  {
    v21 = sub_938(0, v3);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_6230();
    }

    return 0;
  }

  WoWCapability = WiFiManagerClientGetWoWCapability();
  byte_C7D0 = WoWCapability != 0;
  v6 = sub_938(WoWCapability, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (byte_C7D0)
    {
      v9 = "DOES";
    }

    else
    {
      v9 = "DOES NOT";
    }

    *&v26.sa_len = 136315138;
    *&v26.sa_data[2] = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "On launch: this device %s support WoW", &v26.sa_len, 0xCu);
  }

  if (byte_C7D0 == 1)
  {
    v10 = sub_938(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *&v26.sa_len = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Setting initial WoW state to OFF", &v26.sa_len, 2u);
    }

    WiFiManagerClientSetWoWState();
    v7 = WiFiManagerClientSetType();
  }

  *&v26.sa_len = _NSConcreteStackBlock;
  *&v26.sa_data[6] = 0x40000000;
  v27 = sub_4988;
  v28 = &unk_C6B8;
  v29 = qword_C7C8;
  if (qword_C828 != -1)
  {
    dispatch_once(&qword_C828, &v26);
  }

  if (!qword_C818)
  {
    v22 = sub_938(v7, v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_61F4();
    }

    return 0;
  }

  v11 = qword_C7F0;
  if (qword_C7F0 || (v11 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, qword_C7C0), (qword_C7F0 = v11) != 0))
  {
    dispatch_source_set_event_handler(v11, &stru_C588);
    dispatch_resume(qword_C7F0);
    signal(29, (&dword_0 + 1));
  }

  else
  {
    v24 = sub_938(0, v12);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_617C();
    }
  }

  *&v26.sa_data[6] = 0;
  LODWORD(v28) = 0;
  v27 = 0;
  *&v26.sa_len = 528;
  qword_C798 = sub_4B2C(&v26, v13);
  *&v26.sa_data[6] = 0;
  v27 = 0;
  LODWORD(v28) = 0;
  *&v26.sa_len = 7708;
  qword_C7A8 = sub_4B2C(&v26, v14);
  sub_4CC4(1, v15);
  v16 = qword_C7F8;
  if (qword_C7F8 || (v16 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, qword_C7C0), (qword_C7F8 = v16) != 0))
  {
    dispatch_source_set_event_handler(v16, &stru_C5C8);
    dispatch_resume(qword_C7F8);
    v18 = 1;
    signal(31, (&dword_0 + 1));
  }

  else
  {
    v25 = sub_938(0, v17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_61B8();
    }

    return 1;
  }

  return v18;
}

intptr_t sub_3E38(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = qword_C810;

  return dispatch_semaphore_signal(v1);
}

void sub_3E74(id a1, void *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_connection)
  {
    v3 = xpc_copy_description(a2);
    v5 = sub_938(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_62E4();
      if (!v3)
      {
LABEL_5:
        if (qword_C820)
        {
          xpc_connection_cancel(qword_C820);
          xpc_release(qword_C820);
          qword_C820 = 0;
        }

        return;
      }
    }

    else if (!v3)
    {
      goto LABEL_5;
    }

    free(v3);
    goto LABEL_5;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = a2;
  pid = xpc_connection_get_pid(a2);
  v7 = spd_client_add(v17[3]);
  v8 = v7;
  v10 = sub_938(v7, v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = v17[3];
      *buf = 134218496;
      v21 = qword_C820;
      v22 = 2048;
      v23 = v12;
      v24 = 1024;
      v25 = pid;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "listener %p got peer %p (pid %d)", buf, 0x1Cu);
    }

    xpc_connection_set_target_queue(v17[3], qword_C7C0);
    v13 = v17[3];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_40AC;
    v14[3] = &unk_C698;
    v14[4] = &v16;
    v15 = pid;
    xpc_connection_set_event_handler(v13, v14);
    xpc_connection_resume(v17[3]);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_6368();
    }

    xpc_connection_cancel(v17[3]);
  }

  _Block_object_dispose(&v16, 8);
}

void sub_40AC(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (type == &_xpc_type_dictionary)
  {
    if (!v7)
    {
      return;
    }

    v9 = xpc_get_type(*(v6 + 24));
    if (!object || v9 != &_xpc_type_connection || xpc_get_type(object) != &_xpc_type_dictionary)
    {
      return;
    }

    reply = xpc_dictionary_create_reply(object);
    pid = xpc_connection_get_pid(v7);
    v12 = &qword_C7B8;
    do
    {
      v12 = *v12;
    }

    while (v12 && *(v12 + 6) != pid);
    uuid = xpc_dictionary_get_uuid(object, "uuid");
    int64 = xpc_dictionary_get_int64(object, "pid");
    v15 = xpc_dictionary_get_BOOL(object, "legacy");
    v16 = xpc_dictionary_get_BOOL(object, "modern");
    if (!v12)
    {
      v32 = sub_938(v16, v17);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_6584(v7);
      }

      xpc_connection_cancel(v7);
      return;
    }

    v18 = v16;
    v19 = v12[8] & 4;
    if ((v12[8] & 4) == 0 && v15)
    {
      v20 = sub_938(v16, v17);
      v16 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        v21 = v12[5];
        if (!v21)
        {
          v21 = "???";
        }

        *v55 = 136315138;
        *&v55[4] = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "allowing wakeup for %s, was linked against old SDK", v55, 0xCu);
      }

      *(v12 + 64) |= 4u;
      v19 = 4;
    }

    if (v19 != 0 && v18)
    {
      v22 = sub_938(v16, v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v12[5];
        if (!v23)
        {
          v23 = "???";
        }

        *v55 = 136315138;
        *&v55[4] = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "blocking %s linked against modern SDK, use Local Push Connectivity instead", v55, 0xCu);
      }

      *(v12 + 64) &= ~4u;
    }

    v24 = xpc_dictionary_get_int64(object, "msg_type");
    v26 = sub_938(v24, v25);
    v27 = v26;
    if (v24 <= 29)
    {
      if (v24 <= 19)
      {
        if (v24 == 10)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v41 = v12[5];
            if (!v41)
            {
              v41 = "???";
            }

            v42 = *(v12 + 6);
            *v55 = 136315394;
            *&v55[4] = v41;
            *&v55[12] = 1024;
            *&v55[14] = v42;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_notification_register", v55, 0x12u);
          }

          v35 = 0;
          v36 = *(v12 + 64) | 1;
        }

        else
        {
          if (v24 != 11)
          {
            goto LABEL_98;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v33 = v12[5];
            if (!v33)
            {
              v33 = "???";
            }

            v34 = *(v12 + 6);
            *v55 = 136315394;
            *&v55[4] = v33;
            *&v55[12] = 1024;
            *&v55[14] = v34;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_notification_deregister", v55, 0x12u);
          }

          v35 = 0;
          v36 = v12[8] & 0xFE;
        }

        *(v12 + 64) = v36;
        goto LABEL_96;
      }

      if (v24 == 20)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v43 = v12[5];
          if (!v43)
          {
            v43 = "???";
          }

          v44 = *(v12 + 6);
          *v55 = 136315650;
          *&v55[4] = v43;
          *&v55[12] = 1024;
          *&v55[14] = v44;
          v56 = 1024;
          v57 = int64;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor_pid: %d", v55, 0x18u);
        }

        started = spd_start_monitoring_all_sockets_for_pid(v7, int64);
        goto LABEL_95;
      }

      if (v24 == 21)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v37 = v12[5];
          if (!v37)
          {
            v37 = "???";
          }

          v38 = *(v12 + 6);
          *v55 = 136315650;
          *&v55[4] = v37;
          *&v55[12] = 1024;
          *&v55[14] = v38;
          v56 = 1024;
          v57 = int64;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor_pid_stop: %d", v55, 0x18u);
        }

        started = spd_stop_monitoring_all_sockets_for_pid(v7, int64);
        goto LABEL_95;
      }
    }

    else if (v24 <= 39)
    {
      if (v24 == 30)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v50 = "???";
          if (v12[5])
          {
            v50 = v12[5];
          }

          v51 = *(v12 + 6);
          *v55 = 136315906;
          *&v55[4] = v50;
          *&v55[12] = 1024;
          *&v55[14] = v51;
          v56 = 1040;
          v57 = 16;
          v58 = 2096;
          v59 = uuid;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor: %{uuid_t}.16P", v55, 0x22u);
        }

        started = spd_start_monitoring_socket(v7, uuid);
        goto LABEL_95;
      }

      if (v24 == 31)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v39 = "???";
          if (v12[5])
          {
            v39 = v12[5];
          }

          v40 = *(v12 + 6);
          *v55 = 136315906;
          *&v55[4] = v39;
          *&v55[12] = 1024;
          *&v55[14] = v40;
          v56 = 1040;
          v57 = 16;
          v58 = 2096;
          v59 = uuid;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_monitor_stop: %{uuid_t}.16P", v55, 0x22u);
        }

        started = spd_stop_monitoring_socket(v7, uuid);
        goto LABEL_95;
      }
    }

    else
    {
      switch(v24)
      {
        case '(':
          v45 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
          if (v45)
          {
            v47 = v12[5];
            if (!v47)
            {
              v47 = "???";
            }

            v48 = *(v12 + 6);
            *v55 = 136315394;
            *&v55[4] = v47;
            *&v55[12] = 1024;
            *&v55[14] = v48;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_checkin", v55, 0x12u);
          }

          if ((v12[8] & 4) != 0)
          {
            *v55 = 0;
            *&v55[8] = 0;
            if (uuid && !uuid_is_null(uuid))
            {
              uuid_copy(v55, uuid);
            }

            else
            {
              uuid_clear(v55);
            }

            v54 = xpc_dictionary_dup_fd(object, "socket");
            v35 = spd_checkin_socket(v7, v54, v55);
            if (reply)
            {
              xpc_dictionary_set_uuid(reply, "uuid", v55);
            }
          }

          else
          {
            v49 = sub_938(v45, v46);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_6468(v7);
            }

            v35 = 33;
          }

          goto LABEL_96;
        case ')':
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v52 = "???";
            if (v12[5])
            {
              v52 = v12[5];
            }

            v53 = *(v12 + 6);
            *v55 = 136315906;
            *&v55[4] = v52;
            *&v55[12] = 1024;
            *&v55[14] = v53;
            v56 = 1040;
            v57 = 16;
            v58 = 2096;
            v59 = uuid;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_checkout: %{uuid_t}.16P", v55, 0x22u);
          }

          started = spd_checkout_socket(v7, uuid);
          goto LABEL_95;
        case '*':
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v28 = v12[5];
            if (!v28)
            {
              v28 = "???";
            }

            v29 = *(v12 + 6);
            *v55 = 136315394;
            *&v55[4] = v28;
            *&v55[12] = 1024;
            *&v55[14] = v29;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s [%d] spd_msg_type_socket_checkout_all", v55, 0x12u);
          }

          started = spd_checkout_all_sockets(v7);
LABEL_95:
          v35 = started;
LABEL_96:
          if (reply)
          {
            xpc_dictionary_set_int64(reply, "result", v35);
            xpc_connection_send_message(v7, reply);
            xpc_release(reply);
          }

          return;
      }
    }

LABEL_98:
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_64E8();
    }

    v35 = 5;
    goto LABEL_96;
  }

  if (v7)
  {
    v8 = &qword_C7B8;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (*(v8 + 6) == *(a1 + 40))
      {
        spd_cleanup_client(v8, v5);
        goto LABEL_39;
      }
    }

    v31 = sub_938(0, v5);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_63E8();
    }

LABEL_39:
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

intptr_t sub_4988(uint64_t a1)
{
  v3 = 0;
  memset(&v4, 0, sizeof(v4));
  qword_C830 = dispatch_semaphore_create(0);
  pthread_attr_init(&v4);
  pthread_attr_setdetachstate(&v4, 2);
  pthread_create(&v3, &v4, sub_4A44, *(a1 + 32));
  pthread_attr_destroy(&v4);
  return dispatch_semaphore_wait(qword_C830, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_4A44(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  v3 = sub_938(Current, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_6604();
  }

  qword_C818 = Current;
  dispatch_semaphore_signal(qword_C830);
  WiFiManagerClientRegisterDeviceAttachmentCallback();
  v4 = WiFiManagerClientScheduleWithRunLoop();
  v6 = sub_938(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_66E0();
  }

  CFRunLoopRun();
  v9 = sub_938(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_6778();
  }

  return 0;
}

const __SCNetworkReachability *sub_4B2C(sockaddr *address, uint64_t a2)
{
  if (!address || ((v3 = address->sa_family, v3 != 2) ? (v4 = v3 == 30) : (v4 = 1), !v4))
  {
    v13 = sub_938(address, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (address)
      {
        sa_family = address->sa_family;
      }

      else
      {
        sa_family = 0;
      }

      v18[0] = 67109120;
      v18[1] = sa_family;
      _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Invalid sockaddr or address family %d", v18, 8u);
    }

    return 0;
  }

  v5 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, address);
  if (!v5)
  {
    v15 = sub_938(0, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_68F8();
    }

    return 0;
  }

  v7 = v5;
  v8 = SCNetworkReachabilitySetCallback(v5, sub_4EC8, 0);
  if (!v8)
  {
    v16 = sub_938(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_6884();
    }

    goto LABEL_19;
  }

  v10 = SCNetworkReachabilitySetDispatchQueue(v7, qword_C7C0);
  if (!v10)
  {
    v12 = sub_938(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_6810();
    }

LABEL_19:
    CFRelease(v7);
    return 0;
  }

  return v7;
}

void sub_4CC4(char a1, uint64_t a2)
{
  v3 = byte_C7A0;
  v4 = byte_C7B0;
  flags = 0;
  if (qword_C798 && SCNetworkReachabilityGetFlags(qword_C798, &flags))
  {
    byte_C7A0 = (flags & 2) != 0;
    v5 = ((flags >> 1) & 1) != v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_C7A8;
  if (qword_C7A8)
  {
    v6 = SCNetworkReachabilityGetFlags(qword_C7A8, &flags);
    if (v6)
    {
      byte_C7B0 = (flags & 2) != 0;
      v5 |= ((flags >> 1) & 1) != v4;
    }
  }

  v7 = sub_938(v6, a2);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v8)
  {
    v10 = "not reachable";
    if (v3)
    {
      v11 = "reachable";
    }

    else
    {
      v11 = "not reachable";
    }

    if (byte_C7A0)
    {
      v12 = "reachable";
    }

    else
    {
      v12 = "not reachable";
    }

    *buf = 136315906;
    v19 = v11;
    if (v4)
    {
      v13 = "reachable";
    }

    else
    {
      v13 = "not reachable";
    }

    v20 = 2080;
    v21 = v12;
    if (byte_C7B0)
    {
      v10 = "reachable";
    }

    v22 = 2080;
    v23 = v13;
    v24 = 2080;
    v25 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "IPv4: %s->%s, IPv6: %s->%s", buf, 0x2Au);
  }

  if ((v5 & 1) != 0 && (a1 & 1) == 0 && ((byte_C7A0 & 1) != 0 || byte_C7B0 == 1))
  {
    v14 = sub_938(v8, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Transitioning from Not Reachable -> Reachable. Waking up all VoIP clients", buf, 2u);
    }

    for (i = qword_C7B8; i; i = *i)
    {
      if ((*(i + 64) & 3) == 2)
      {
        spd_notify_client_sessions_of_wake(i, v15);
      }
    }
  }
}

void sub_4EC8()
{
  if (!dword_C838++)
  {
    v2 = dispatch_time(0, 300000000);
    v3 = qword_C7C0;

    dispatch_after(v2, v3, &stru_C6F8);
  }
}

void sub_4F24(id a1)
{
  v2 = sub_938(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = dword_C838;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Accumulating %d change(s)", v4, 8u);
  }

  dword_C838 = 0;
  sub_4CC4(0, v3);
}

void sub_50B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

void sub_50F8()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5148()
{
  sub_5080(__stack_chk_guard);
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_51C8(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0x600u);
  sub_4FF8();
  sub_5068();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x1Cu);
}

void sub_5270()
{
  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_5300()
{
  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_537C()
{
  sub_5080(__stack_chk_guard);
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_53F0()
{
  sub_5080(__stack_chk_guard);
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_5464()
{
  sub_5080(__stack_chk_guard);
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_54D8()
{
  sub_5080(__stack_chk_guard);
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_554C()
{
  sub_5080(__stack_chk_guard);
  sub_4FE0();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_55C0()
{
  v0 = __error();
  strerror(*v0);
  sub_5034();
  sub_504C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_564C()
{
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_56C0()
{
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5734()
{
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_57A8()
{
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_581C()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5858()
{
  v0 = __error();
  strerror(*v0);
  sub_5034();
  sub_504C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_58E4()
{
  v0 = __error();
  strerror(*v0);
  sub_5034();
  sub_504C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_5970()
{
  sub_50A4();
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5A54()
{
  sub_50A4();
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5AC4()
{
  sub_50A4();
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5B34()
{
  sub_5074();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5C28()
{
  sub_5074();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5C98()
{
  sub_50A4();
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5D08()
{
  sub_5074();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_5D78()
{
  sub_5074();
  sub_508C();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_5DF8()
{
  sub_5074();
  sub_508C();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_5E78()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5EB4()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_5EF0()
{
  LODWORD(v3) = 136315906;
  sub_4FF8();
  sub_5014();
  WORD2(v6) = v0;
  HIWORD(v6) = v1;
  sub_50B0(&dword_0, v1, v2, "%s:%d ADD event: %p, token %lld", v3, v4, v5, v6);
}

void sub_5FF4()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_6030()
{
  v1[0] = 136315394;
  sub_4FF8();
  *(&v1[3] + 2) = 1903;
  _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "%s:%d xpc_event_provider_token_fire", v1, 0x12u);
}

void sub_60BC()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_60F8()
{
  LODWORD(v3) = 136315906;
  sub_4FF8();
  sub_5014();
  WORD2(v6) = v0;
  HIWORD(v6) = v1;
  sub_50B0(&dword_0, v1, v2, "%s:%d REMOVE event: %p, token %lld", v3, v4, v5, v6);
}

void sub_617C()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_61B8()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_61F4()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_6230()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_626C()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_62A8()
{
  sub_505C();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_6368()
{
  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_6468(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  sub_5074();
  sub_504C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_64E8()
{
  sub_4FF8();
  sub_4FD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_6584(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  sub_5074();
  sub_504C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_6604()
{
  pthread_self();
  sub_5068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x3Au);
}

void sub_66E0()
{
  pthread_self();
  sub_4FF8();
  sub_5014();
  sub_5068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x1Cu);
}

void sub_6778()
{
  pthread_self();
  sub_4FF8();
  sub_5014();
  sub_5068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x1Cu);
}

void sub_6810()
{
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_6884()
{
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_68F8()
{
  sub_5028();
  sub_5008();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void xpc_event_module_get_queue()
{
    ;
  }
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}