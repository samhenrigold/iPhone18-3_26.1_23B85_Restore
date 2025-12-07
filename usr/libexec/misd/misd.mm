void sub_100000FE0(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    sub_100001108(2u, "connection %p event from client", a2);
    xpc_connection_set_target_queue(a2, qword_100034BD8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000011E4;
    handler[3] = &unk_100030DC0;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }

  else if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
    sub_100001108(0, "xpc connection error: %s", string);
  }

  else
  {

    sub_100001108(0, "unknown message type");
  }
}

uint64_t sub_100001108(unsigned __int8 a1, const char *a2, ...)
{
  result = sub_100001170();
  if (result)
  {
    return os_log_with_args();
  }

  return result;
}

BOOL sub_100001170()
{
  if (qword_100034CB8)
  {
    return 1;
  }

  qword_100034CB8 = os_log_create("com.apple.MobileInternetSharing", "daemon");
  if (qword_100034CB8)
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100020A80(&v1);
    return v1;
  }

  return result;
}

void sub_1000011E4(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_uint64(object, off_100034860[0]) == 1000)
    {
      memset(buffer, 0, 32);
      xpc_connection_get_audit_token();
      if (sub_10000177C(buffer, "com.apple.MobileInternetSharing.allow"))
      {
        v5 = 1;
      }

      else
      {
        if (!sub_10000177C(buffer, "com.apple.vm.networking"))
        {
          sub_100001108(0, "%s: xpc client does not have any vmnet entitlement, nor is it root", "client_entitlement_check");
          pid = xpc_connection_get_pid(*(a1 + 32));
          proc_name(pid, buffer, 0x40u);
          sub_100001108(0, " %s[%d] client access check failed", buffer, pid);
          reply = xpc_dictionary_create_reply(object);
          if (reply)
          {
            v19 = reply;
            xpc_dictionary_set_uint64(reply, off_1000348C8[0], 0x7D2uLL);
            sub_100001CD4(*(a1 + 32), v19);
            xpc_release(v19);
          }

          else
          {
            sub_100001108(0, "xpc_dictionary_create_reply() failed");
          }

          return;
        }

        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }

    v11 = xpc_connection_copy_entitlement_value();
    if (v11)
    {
      v12 = v11;
      if (xpc_get_type(v11) == &_xpc_type_BOOL)
      {
        if (xpc_BOOL_get_value(v12))
        {
          v5 = v5 | 4;
        }

        else
        {
          v5 = v5;
        }
      }

      xpc_release(v12);
    }

    v13 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(object, off_100034860[0]);
    if (dword_100034BD0 || byte_100034BE8)
    {
      v15 = xpc_connection_get_pid(v13);
      proc_name(v15, buffer, 0x40u);
      v16 = sub_100008768(uint64);
      sub_100001108(2u, "%s ---> %s", buffer, v16);
    }

    switch(uint64)
    {
      case 0x3E8uLL:
        sub_1000017EC(v13, object, v5);
        break;
      case 0x3E9uLL:
        sub_1000099B4(v13, object);
        break;
      case 0x3EAuLL:
        sub_10000A900(v13, object);
        break;
      case 0x3EBuLL:
        sub_100001D48(v13, object);
        break;
      case 0x3ECuLL:
        sub_10000BE68(v13, object);
        break;
      case 0x3EDuLL:
        sub_10000C0A0(v13, object);
        break;
      case 0x3EEuLL:
        sub_10000C1B8(v13, object);
        break;
      case 0x3EFuLL:
        sub_10000C330(v13, object);
        break;
      case 0x3F0uLL:
        sub_10000C3F4(v13, object);
        break;
      case 0x3F1uLL:
        sub_10000C54C(v13, object);
        break;
      case 0x3F2uLL:
        sub_10000C6A4(v13, object);
        break;
      case 0x3F3uLL:
        sub_10000C7AC(v13, object);
        break;
      case 0x3F4uLL:
        sub_1000025BC(v13, object);
        break;
      case 0x3F5uLL:
        sub_10000BF70(v13, object);
        break;
      case 0x3F6uLL:
        sub_10000B050(v13, object);
        break;
      case 0x3F7uLL:
        sub_10000C908(v13, object);
        break;
      case 0x3F8uLL:
        sub_10000CDB8(v13, object);
        break;
      case 0x3F9uLL:
        sub_10000CFFC(v13, object);
        break;
      case 0x3FAuLL:
        sub_10000D32C(v13, object);
        break;
      case 0x3FBuLL:
        sub_10000D694(v13, object);
        break;
      case 0x3FFuLL:
        sub_10000BBE4(v13, object);
        break;
      case 0x400uLL:
        sub_10000A9F8(v13, object);
        break;
      case 0x401uLL:
        sub_10000AE40(v13, object);
        break;
      default:
        sub_100001108(0, "incorrect xpc request type");
        break;
    }

    if (dword_100034BD0 || byte_100034BE8)
    {
      sub_100008768(uint64);
      sub_100001108(2u, "%s <--- %s");
    }
  }

  else if (type == &_xpc_type_error)
  {
    v6 = *(a1 + 32);
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    sub_100001108(1u, "received connection error %p:%s", v6, string);
    v8 = *(a1 + 32);
    v9 = qword_100034C18;
    if (qword_100034C18)
    {
      do
      {
        v10 = *v9;
        if (*(v9[1] + 8) == v8)
        {
          sub_100001108(2u, "found client %p for connection %p", v9, v8);
          sub_10000267C(v9);
        }

        v9 = v10;
      }

      while (v10);
    }

    xpc_connection_cancel(v8);
  }

  else
  {

    sub_100001108(0, "unknown message type");
  }
}

BOOL sub_10000177C(uint64_t a1, uint64_t a2)
{
  v2 = xpc_copy_entitlement_for_token();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = xpc_get_type(v2) == &_xpc_type_BOOL && xpc_BOOL_get_value(v3);
  xpc_release(v3);
  return v4;
}

uint64_t sub_1000017EC(_xpc_connection_s *a1, xpc_object_t original, uint64_t a3)
{
  v3 = a3;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v7 = reply;
    v8 = sub_100001920(a1);
    if (v8 || (v8 = sub_100001968(a1, original)) != 0)
    {
      v9 = v8;
      v10 = sub_100001AD0(a1, v8, v3);
      if (v10)
      {
        v11 = v10;
        xpc_dictionary_set_uint64(v7, off_1000348C8[0], 0x7D1uLL);
        xpc_dictionary_set_string(v7, off_100034868[0], v11 + 48);
        v12 = 1;
LABEL_10:
        sub_100001CD4(a1, v7);
        xpc_release(v7);
        return v12;
      }

      sub_100001108(0, "client creation failed for connection %p", a1);
      sub_10000286C(v9);
    }

    else
    {
      sub_100001108(0, "unable to create endpoint for %p", a1);
    }

    xpc_dictionary_set_uint64(v7, off_1000348C8[0], 0x7D0uLL);
    v12 = 0;
    goto LABEL_10;
  }

  sub_100001108(0, "xpc_dictionary_create_reply() failed");
  return 0;
}

uint64_t *sub_100001920(uint64_t a1)
{
  result = &qword_100034C10;
  while (1)
  {
    result = *result;
    if (!result)
    {
      break;
    }

    if (result[1] == a1)
    {
      v3 = *(result + 6);
      if (!v3)
      {
        sub_100020DDC();
      }

      *(result + 6) = v3 + 1;
      return result;
    }
  }

  return result;
}

void *sub_100001968(const void *a1, void *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  v5 = v4;
  if (!v4)
  {
    sub_100001108(0, "malloc() failed for connection %p", a1);
    return v5;
  }

  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[1] = a1;
  *(v4 + 6) = 1;
  value = xpc_dictionary_get_value(a2, off_1000348C0[0]);
  if (!value)
  {
    sub_100001108(0, "message does not contain the endpoint connection");
LABEL_10:
    free(v5);
    return 0;
  }

  v7 = xpc_connection_create_from_endpoint(value);
  if (!v7)
  {
    sub_100001108(0, "xpc_connection_create_from_endpoint() failed");
    goto LABEL_10;
  }

  v8 = v7;
  v5[2] = v7;
  xpc_connection_set_target_queue(v7, qword_100034BD8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100002950;
  handler[3] = &unk_100030F70;
  handler[4] = v8;
  handler[5] = a1;
  handler[6] = v5;
  xpc_connection_set_event_handler(v8, handler);
  xpc_connection_resume(v8);
  *v5 = qword_100034C10;
  qword_100034C10 = v5;
  if (__CFADD__(dword_100034CF0++, 1))
  {
    sub_100020E60();
  }

  return v5;
}

char *sub_100001AD0(_xpc_connection_s *a1, uint64_t a2, int a3)
{
  pid = xpc_connection_get_pid(a1);
  v7 = malloc_type_malloc(0x1D0uLL, 0x1020040A43D5934uLL);
  v8 = v7;
  if (v7)
  {
    *(v7 + 26) = 0u;
    *(v7 + 27) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 25) = 0u;
    *(v7 + 22) = 0u;
    *(v7 + 23) = 0u;
    *(v7 + 20) = 0u;
    *(v7 + 21) = 0u;
    *(v7 + 18) = 0u;
    *(v7 + 19) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 17) = 0u;
    *(v7 + 14) = 0u;
    *(v7 + 15) = 0u;
    *(v7 + 12) = 0u;
    *(v7 + 13) = 0u;
    *(v7 + 10) = 0u;
    *(v7 + 11) = 0u;
    *(v7 + 8) = 0u;
    *(v7 + 9) = 0u;
    *(v7 + 6) = 0u;
    *(v7 + 7) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 5) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    *(v7 + 444) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 1) = a2;
    *(v7 + 115) = a3;
    *(v7 + 76) = pid;
    proc_name(pid, v7 + 308, 0x40u);
    snprintf(v8 + 48, 0x100uLL, "%s.%p-%p-%d", "com.apple.MobileInternetSharing", v8, a1, dword_100034CF4);
    sub_100001108(2u, "client created %s (%p) (%s), client connection %p remote connection %p", v8 + 308, v8, v8 + 48, a1, *(a2 + 16));
    v9 = qword_100034C18;
    if (qword_100034C18)
    {
      v10 = qword_100034C18;
      while (strncmp(v8 + 48, (v10 + 48), 0x100uLL) || *(*(v10 + 8) + 8) != a1)
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_100001108(0, "duplicate mis client id %s", v8 + 48);
      free(v8);
      return 0;
    }

    else
    {
LABEL_7:
      v11 = dword_100034CF4++;
      if (v11 == -1)
      {
        sub_100020EE4();
      }

      *v8 = v9;
      qword_100034C18 = v8;
      if (!v11)
      {
        sub_100001CA0();
        if (qword_100034CF8)
        {
          sub_100020EB8();
        }

        qword_100034CF8 = os_transaction_create();
      }
    }
  }

  return v8;
}

uint64_t sub_100001CA0()
{
  if (qword_100034CC0)
  {
    sub_100020AE8();
  }

  result = os_nexus_controller_create();
  qword_100034CC0 = result;
  return result;
}

void sub_100001CD4(_xpc_connection_s *a1, xpc_object_t object)
{
  v4 = xpc_copy_description(object);
  sub_100001108(2u, "sending reply %p:\n%s", a1, v4);
  free(v4);

  xpc_connection_send_message(a1, object);
}

BOOL sub_100001D48(_xpc_connection_s *a1, xpc_object_t original)
{
  value = 0;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    v7 = v6 != 0;
    if (v6)
    {
      sub_100001ED8(&value + 1, &value);
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
      xpc_dictionary_set_uint64(v5, off_1000348E8[0], HIDWORD(value));
      v8 = off_1000348F8[0];
      v9 = value;
      v10 = v5;
    }

    else
    {
      sub_100001108(0, "invalid client %p for connection %p", 0, a1);
      v8 = off_1000348C8[0];
      v10 = v5;
      v9 = 2000;
    }

    xpc_dictionary_set_uint64(v10, v8, v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108(0, "xpc_dictionary_create_reply() failed");
    return 0;
  }

  return v7;
}

uint64_t sub_100001E50(void *a1, uint64_t a2)
{
  string = xpc_dictionary_get_string(a1, off_100034868[0]);
  v4 = qword_100034C18;
  if (string)
  {
    v5 = qword_100034C18 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = string;
  do
  {
    if (!strncmp(v6, (v4 + 48), 0x100uLL) && *(*(v4 + 8) + 8) == a2)
    {
      break;
    }

    v4 = *v4;
  }

  while (v4);
  return v4;
}

uint64_t sub_100001ED8(_DWORD *a1, _DWORD *a2)
{
  result = sub_100001F40(0, 0, qword_100035150, dword_100035158, dword_10003515C, 0, 0);
  if (a1)
  {
    *a1 = qword_100035150;
  }

  if (a2)
  {
    *a2 = dword_100035158;
  }

  return result;
}

uint64_t sub_100001F40(int a1, char a2, int a3, int a4, int a5, _DWORD *a6, int a7)
{
  *v58 = 0;
  v57 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  sub_100001108(1u, "checking for carrier provisioning");
  v12 = sub_100013B38(&v58[1], v58, &v57);
  v13 = "is NOT";
  if (v12)
  {
    v14 = "is NOT";
  }

  else
  {
    v14 = "is";
  }

  if (v58[0])
  {
    v13 = "is";
  }

  sub_100001108(1u, "doauth(%d), tethering %s supported, user %s authenticated", a1, v14, v13);
  if (qword_100035150 == 1021)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = dword_100035158;
  v17 = dword_100035158 == 2 || dword_100035158 == 4;
  v18 = !v17;
  if (v12 || (v15 & v18) != 0)
  {
    v21 = 1020;
    if (qword_100035150 != 1020)
    {
      sub_100001108(0, "resetting netrb state %d, reason %d, tethering support %d", qword_100035150, dword_100035158, v12 == 0);
      LODWORD(qword_100035150) = 1020;
    }

    v20 = 45;
  }

  else if (qword_100035150 == 1020)
  {
    if (v58[0] == 1 && v57 == 1)
    {
      v19 = dword_10003514C;
      LODWORD(qword_100035150) = dword_10003514C;
      v20 = 45;
    }

    else
    {
      v19 = 1021;
      LODWORD(qword_100035150) = 1021;
      v16 = 3;
      dword_100035158 = 3;
      v20 = 80;
    }

    sub_100001108(0, "setting netrb state to %d, reason %d from %d", v19, v16, 1020);
    v21 = qword_100035150;
  }

  else
  {
    v20 = 45;
    v21 = qword_100035150;
  }

  byte_100035181 = v58[1] ^ 1;
  byte_100035182 = v57 ^ 1;
  if (v21 - 1024 <= 0xFFFFFFFC)
  {
    v17 = v12 == 0;
    v22 = v20;
    v23 = v17;
    sub_100001108(0, "state out of bounds or already reset %d", v21);
    if (byte_100034BB1)
    {
      v24 = 0;
    }

    else
    {
      v24 = a1;
    }

    v25 = (v23 & v24) == 0;
    v20 = v22;
    v26 = 1020;
    if (v25)
    {
      v27 = 1020;
    }

    else
    {
      v27 = 1021;
    }

    LODWORD(qword_100035150) = v27;
    dword_100035158 = 0;
    if (!v25)
    {
      v26 = 1021;
    }

    sub_100001108(0, "netrb state set to %d, reason %d", v26, 0);
    v21 = qword_100035150;
  }

  if (v21 >= 0x3FE)
  {
    v28 = HIDWORD(qword_100035150);
    v29 = HIDWORD(qword_100035150);
    v53 = a4;
    v54 = a3;
    if ((byte_100035180 & 1) != 0 || (byte_100035181 & 1) != 0 || byte_100035182 == 1)
    {
      if (HIDWORD(qword_100035150) == 1020)
      {
        HIDWORD(qword_100035150) = v21;
        v29 = v21;
      }

      v30 = 1022;
      LODWORD(qword_100035150) = 1022;
      dword_100035158 = 4;
    }

    else
    {
      if (HIDWORD(qword_100035150) >= 0x3FE)
      {
        LODWORD(qword_100035150) = HIDWORD(qword_100035150);
        *(&qword_100035150 + 4) = 1020;
        v31 = 1020;
        v30 = v29;
LABEL_60:
        v33 = "silent";
        if (a1)
        {
          v33 = "ask CT";
        }

        v50 = v33;
        v51 = byte_100035180;
        if ((v28 - 1020) > 3)
        {
          v34 = "UNKNOWN";
        }

        else
        {
          v34 = (&off_100031040)[v28 - 1020];
        }

        v49 = v34;
        v52 = v20;
        v35 = "UNKNOWN";
        if ((v31 - 1020) <= 3)
        {
          v35 = (&off_100031040)[v31 - 1020];
        }

        if (v21 == 1022)
        {
          v36 = "OFF";
        }

        else
        {
          v36 = "UNKNOWN";
        }

        if (v21 == 1023)
        {
          v36 = "ON";
        }

        v48 = v36;
        if (v30 == 1022)
        {
          v37 = "OFF";
        }

        else
        {
          v37 = "UNKNOWN";
        }

        if (v30 == 1023)
        {
          v38 = "ON";
        }

        else
        {
          v38 = v37;
        }

        v39 = dword_100035158;
        v40 = v35;
        v41 = sub_100017498(dword_100035158);
        if (v51)
        {
          v42 = "ON";
        }

        else
        {
          v42 = "OFF";
        }

        if (byte_100035181)
        {
          v43 = "OFF";
        }

        else
        {
          v43 = "ON";
        }

        if (byte_100035182)
        {
          v44 = "FALSE";
        }

        else
        {
          v44 = "TRUE";
        }

        sub_100001108(0, "set state: %s, pstate %s(%d)->%s(%d), state %s(%d)->%s(%d), reason %s(%d), airplane mode %s, cellular data plan %s, connection availability %s", v50, v49, v28, v40, v31, v48, v21, v38, v30, v41, v39, v42, v43, v44);
        v21 = qword_100035150;
        v20 = v52;
LABEL_88:
        a4 = v53;
        a3 = v54;
        if (v21 == 1023)
        {
          sub_100001108(0, "netrb state is ON");
          LODWORD(v32) = 0;
          goto LABEL_105;
        }

        v46 = (a2 & 4) == 0 || dword_100035158 == 4;
        if (v21 != 1022)
        {
          v46 = 1;
        }

        if (v46)
        {
          LODWORD(v32) = v20;
        }

        else
        {
          LODWORD(v32) = 0;
        }

        if (v21 == 1022 && v46)
        {
          sub_100001108(0, "netrb state is OFF");
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      v30 = v21;
    }

    v31 = v29;
    if (v21 == v30 && v28 == v29)
    {
      goto LABEL_88;
    }

    goto LABEL_60;
  }

  if (v21 != 1021)
  {
LABEL_104:
    LODWORD(v32) = v20;
    goto LABEL_105;
  }

  LODWORD(v32) = v20;
  if (a1)
  {
    if (dword_100035158 == 3)
    {
      v32 = 80;
    }

    else
    {
      v32 = 36;
    }

    dword_100035158 = sub_100017404(v32);
  }

LABEL_105:
  if (a7 && qword_100035150 >= 0x3FE)
  {
    dword_10003514C = qword_100035150;
  }

  dword_10003515C = v32;
  if (v32 != a5 || qword_100035150 != a3 || dword_100035158 != a4)
  {
    if (qword_100035150 != a3)
    {
      sub_1000152B0();
    }

    sub_10001536C(qword_100034D30);
    if (a6)
    {
      *a6 = 1;
    }
  }

  if (v32)
  {
    return 45;
  }

  else
  {
    return 0;
  }
}

id sub_100002478(uint64_t a1)
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v2 isDataPlanEnabled:a1];
}

id sub_10000257C(uint64_t a1)
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  return [(misCTClientSharedInstance *)v2 getTetheringStatus:a1];
}

BOOL sub_1000025BC(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    sub_100002648(original, a1);
    xpc_dictionary_set_uint64(reply, off_1000348C8[0], 0x7D1uLL);
    sub_100001CD4(a1, reply);
    xpc_release(reply);
  }

  else
  {
    sub_100001108(0, "xpc_dictionary_create_reply() failed");
  }

  return reply != 0;
}

void sub_100002648(void *a1, uint64_t a2)
{
  v2 = sub_100001E50(a1, a2);
  if (v2)
  {

    sub_10000267C(v2);
  }
}

void sub_10000267C(uint64_t a1)
{
  v2 = &qword_100034C18;
  for (i = qword_100034C18; i != a1; i = *i)
  {
    v2 = i;
  }

  *v2 = *i;
  if (!dword_100034CF4)
  {
    sub_100020F3C();
  }

  v4 = 0;
  --dword_100034CF4;
  v5 = a1 + 376;
  v6 = a1 + 432;
  do
  {
    while (1)
    {
      v7 = *(v5 + 8 * v4);
      if (!v7)
      {
        break;
      }

      *(v5 + 8 * v4) = v7[2];
      free(v7);
    }

    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * v4) = 0;
    if (v8 >= 1)
    {
      sub_10001612C(v4, v8);
    }

    ++v4;
  }

  while (v4 != 7);
  v9 = *(a1 + 8);
  if (v9)
  {
    sub_10000286C(v9);
  }

  if (*(a1 + 40))
  {
    sub_100001108(2u, "%s: legacy client %s, removing its port forwarding rules", "mis_client_release", (a1 + 308));
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 24);
      do
      {
        v12 = *v11;
        v13 = v10;
        if (v10 == v11)
        {
          v10 = *v10;
          *(a1 + 24) = v10;
        }

        else
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13 != v11);
          *v14 = *v13;
        }

        v11 = v12;
      }

      while (v12);
    }

    if (*(*(a1 + 40) + 288))
    {
      sub_100001108(2u, "%s: legacy client %s, stopping its service", "mis_client_release", (a1 + 308));
      sub_100006524(*(a1 + 40));
    }
  }

  else
  {
    sub_100001108(2u, "%s: stopping all networks of %s", "mis_client_release", (a1 + 308));
    v16 = *(a1 + 16);
    if (v16)
    {
      do
      {
        v17 = *(v16 + 488);
        sub_100005E14(v16, v15);
        v16 = v17;
      }

      while (v17);
    }
  }

  sub_100001108(2u, "detached from %s (%p)", (a1 + 308), a1);
  free(a1);
  if (!dword_100034CF4)
  {
    sub_100001108(2u, "no clients left; resuming idle timer");
    sub_100002920();
    if (!qword_100034CF8)
    {
      sub_100020F10();
    }

    os_release(qword_100034CF8);
    qword_100034CF8 = 0;
  }
}

void sub_10000286C(uint64_t *a1)
{
  v1 = *(a1 + 6);
  if (!v1)
  {
    sub_100020E34();
  }

  v3 = v1 - 1;
  *(a1 + 6) = v3;
  if (!v3)
  {
    if (a1[2])
    {
      sub_100001108(2u, "releasing remote connection %p to client", a1[2]);
      xpc_connection_cancel(a1[2]);
      xpc_release(a1[2]);
    }

    v4 = &qword_100034C10;
    for (i = qword_100034C10; i != a1; i = *i)
    {
      v4 = i;
    }

    *v4 = *i;
    free(a1);
    if (!dword_100034CF0)
    {
      sub_100020E08();
    }

    --dword_100034CF0;
  }
}

uint64_t sub_100002920()
{
  result = qword_100034CC0;
  if (qword_100034CC0)
  {
    result = os_nexus_controller_destroy();
    qword_100034CC0 = 0;
  }

  return result;
}

void sub_100002950(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  sub_100001108(1u, "event on remote connection %p from client connection %p", *(a1 + 32), *(a1 + 40));
  if (type == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = &qword_100034C10;
        while (1)
        {
          v6 = *v6;
          if (!v6)
          {
            break;
          }

          if (v6[2] == v5)
          {
            sub_100001108(2u, "found remote connection");
            if (!*(v6 + 6))
            {
              sub_100020E8C();
            }

            sub_100001108(1u, "XPC_ERROR_CONNECTION_INVALID for remote %p from connection %p", *(a1 + 32), *(a1 + 40));
            xpc_connection_cancel(*(a1 + 32));
            xpc_release(*(a1 + 32));
            *(*(a1 + 48) + 16) = 0;
            return;
          }
        }
      }
    }

    else if (object == &_xpc_error_termination_imminent)
    {
      sub_100001108(0, "XPC_ERROR_TERMINATION_IMMINENT for peer %p from connection %p");
    }

    else if (object == &_xpc_error_connection_interrupted)
    {
      sub_100001108(0, "XPC_ERROR_CONNECTION_INTERRUPTED for peer %p from connection %p");
    }
  }
}

uint64_t sub_100002A8C(uint64_t a1)
{
  if (byte_100034BA0 == 255)
  {
    sub_100001108(0, "%s: can't allocate a new network, already at maximum number", "mis_network_add");
    return 12;
  }

  if ((*(a1 + 8) & 0x80) == 0)
  {
    v2 = *(a1 + 372);
    if (v2 >= 3)
    {
      sub_100001108(0, "%s: operation mode %u");
LABEL_26:
      sub_100001108(0, "%s: mis_network_validate, network", "mis_network_add");
      return 22;
    }

    if ((v2 | 2) == 2)
    {
      if (*(a1 + 376) & 2 | *(a1 + 392) & 0xE)
      {
        sub_100001108(0, "%s: host or bridged mode cannot have nat or ps flags, network %s v4 flag %d, v6 flag %d");
        goto LABEL_26;
      }

      if (v2 == 2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!(*(a1 + 376) & 2 | *(a1 + 392) & 0xE))
      {
        sub_100001108(0, "%s: nat mode needs at least 1 nat or ps flags, network %s");
        goto LABEL_26;
      }

      if (((*(a1 + 392) >> 2) & 1) + ((*(a1 + 392) >> 1) & 1) + ((*(a1 + 392) >> 3) & 1u) >= 2)
      {
        sub_100001108(0, "%s: only 1 of nat66, nat64, or ps can be selected, network %s");
        goto LABEL_26;
      }
    }

    v6 = (a1 + 380);
    if (!sub_10000FADC((a1 + 380)) || (v7 = (a1 + 384), !sub_10000FADC((a1 + 384))))
    {
      sub_100001108(0, "%s: gateway or mask is invalid, network %s");
      goto LABEL_26;
    }

    if ((sub_10000FCB8(*v7) & 1) == 0)
    {
      sub_100001108(0, "%s: mask is malformed, network %s");
      goto LABEL_26;
    }

    if (sub_100012234(*v7) >= 31)
    {
      sub_100001108(0, "%s: fewer addresses than /30, network %s");
      goto LABEL_26;
    }

    v8 = *v6;
    v9 = bswap32(*v6);
    if (HIWORD(v9) != 49320 && (v9 & 0xFF000000) != 0xA000000 && (v9 & 0xFFF00000) != 0xAC100000)
    {
      if (uuid_is_null((a1 + 536)))
      {
        sub_100001108(0, "%s: start addr is not private, network %s");
        goto LABEL_26;
      }

      v8 = *v6;
      v9 = bswap32(*v6);
    }

    if (v9 < bswap32(*v7 & v8))
    {
      sub_100001108(0, "%s: start addr is not in subnet, network %s");
      goto LABEL_26;
    }

    v10 = (a1 + 396);
    if ((*(a1 + 392) & 0x10) != 0)
    {
      v11 = *v10 == *in6addr_any.__u6_addr8 && *(a1 + 404) == *&in6addr_any.__u6_addr32[2];
      if (!v11 || *(a1 + 412))
      {
        sub_100001108(0, "%s: ra is disabled but v6 prefix/len is present", "mis_network_validate");
      }
    }

    else if (!sub_10000FBA4(v10, *(a1 + 412)) || !sub_10000FBA4((a1 + 416), *(a1 + 432)))
    {
      sub_100001108(0, "%s: v6 addr, network %s");
      goto LABEL_26;
    }

    v12 = (a1 + 472);
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (!sub_10000FADC(v12 + 2) || !sub_10000FC18((v12 + 1)))
      {
        sub_100001108(0, "%s: dhcp reservation, network %s");
        goto LABEL_26;
      }
    }

    v13 = *(a1 + 480);
    if (v13)
    {
      while (1)
      {
        v14 = *(v13 + 9);
        if (v14 != 2 && v14 != 30)
        {
          sub_100001108(0, "%s: port forwarding af, network %s");
          goto LABEL_26;
        }

        v16 = *(v13 + 8);
        if (v16 != 6 && v16 != 17)
        {
          sub_100001108(0, "%s: port forwarding proto, network %s");
          goto LABEL_26;
        }

        if (v14 == 2)
        {
          if (!sub_10000FADC(v13 + 2))
          {
            break;
          }

          v14 = *(v13 + 9);
        }

        if (v14 == 30 && !sub_10000FB40(v13 + 2))
        {
          break;
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      sub_100001108(0, "%s: port forwarding addr, network %s");
      goto LABEL_26;
    }

LABEL_14:
    sub_100001108(0, "%s: network %s passed validation");
    goto LABEL_7;
  }

  sub_100001108(2u, "%s: skipping auth network");
LABEL_7:
  *(a1 + 296) = 0;
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  snprintf((a1 + 40), 0x100uLL, "%s.%s-%016llx", "com.apple.MobileInternetSharing", "network", __buf);
  uuid_generate_random((a1 + 356));
  if ((*(a1 + 8) & 0x10) != 0)
  {
    v5 = *(a1 + 516);
  }

  else
  {
    v4 = *(a1 + 496);
    *(a1 + 488) = *(v4 + 16);
    *(v4 + 16) = a1;
    v5 = *(a1 + 516) + 1;
    ++*(v4 + 32);
  }

  *a1 = qword_100034C38;
  qword_100034C38 = a1;
  ++byte_100034BA0;
  *(a1 + 516) = v5 + 1;
  sub_100001108(0, "%s: created network %s", "mis_network_add", (a1 + 40));
  return 0;
}

_DWORD *sub_100002FB0()
{
  v0 = malloc_type_malloc(0x330uLL, 0x10A0040500E4F62uLL);
  bzero(v0 + 1, 0x32CuLL);
  *v0 = 1;
  return v0;
}

double sub_100003000()
{
  v0 = malloc_type_malloc(0x198uLL, 0x10A0040A0622200uLL);
  result = 0.0;
  *(v0 + 20) = 0u;
  *(v0 + 36) = 0u;
  *(v0 + 52) = 0u;
  *(v0 + 68) = 0u;
  *(v0 + 84) = 0u;
  *(v0 + 100) = 0u;
  *(v0 + 116) = 0u;
  *(v0 + 132) = 0u;
  *(v0 + 148) = 0u;
  *(v0 + 164) = 0u;
  *(v0 + 180) = 0u;
  *(v0 + 196) = 0u;
  *(v0 + 212) = 0u;
  *(v0 + 228) = 0u;
  *(v0 + 244) = 0u;
  *(v0 + 101) = 0;
  *v0 = 1;
  *(v0 + 4) = 0u;
  *(v0 + 260) = 0u;
  *(v0 + 276) = 0u;
  *(v0 + 292) = 0u;
  *(v0 + 308) = 0u;
  *(v0 + 324) = 0u;
  *(v0 + 340) = 0u;
  *(v0 + 356) = 0u;
  *(v0 + 372) = 0u;
  *(v0 + 388) = 0u;
  return result;
}

void sub_1000030A4(int *a1, uint64_t a2)
{
  if (!*a1)
  {
    sub_1000207F8();
  }

  v3 = *a1 - 1;
  *a1 = v3;
  if (!v3)
  {

    free(a1);
  }
}

void sub_1000030DC(_DWORD *a1)
{
  if (*a1 == 1)
  {
    v1 = qword_100034C30;
    if (qword_100034C30)
    {
      v2 = qword_100034C30;
      while (v2 != a1)
      {
        v2 = *(v2 + 280);
        if (!v2)
        {
          goto LABEL_14;
        }
      }

      if (qword_100034C30 == a1)
      {
        v4 = &qword_100034C30;
      }

      else
      {
        do
        {
          v3 = v1;
          v1 = *(v1 + 280);
        }

        while (v1 != a1);
        v4 = (v3 + 280);
      }

      *v4 = *(v1 + 280);
    }

LABEL_14:

    free(a1);
  }

  else
  {
    if (!*a1)
    {
      sub_100020824();
    }

    --*a1;
  }
}

_DWORD *sub_100003178()
{
  v0 = malloc_type_malloc(0x228uLL, 0x10600406C264405uLL);
  bzero(v0, 0x228uLL);
  v0[129] = 1;
  return v0;
}

void sub_1000031C4(void *a1)
{
  v1 = *(a1 + 129) - 1;
  *(a1 + 129) = v1;
  if (!v1)
  {
    free(a1);
  }
}

uint64_t sub_1000031DC(uint64_t a1, char *__s1)
{
  if (*(a1 + 296))
  {
    sub_100001108(0, "%s: cannot modify ext if of non-idle network %s");
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 24))
  {
    sub_100001108(0, "%s: ext if already exists, network %s");
    return 0xFFFFFFFFLL;
  }

  v5 = __s1;
  v6 = __s1 + 20;
  if (!__s1[20])
  {
    *(__s1 + 2) = 100;
    v8 = sub_100013BF8(__s1);
    if (v8)
    {
      v3 = v8;
      sub_100001108(0, "%s: mis_pdp_init");
      return v3;
    }

    if ((*(a1 + 392) & 4) != 0)
    {
      sub_100001108(0, "%s: [internal error] PHS network should use prefix sharing", "mis_network_set_external_interface");
      return 0;
    }
  }

  v7 = qword_100034C30;
  if (qword_100034C30)
  {
    while (strncmp((v7 + 20), v6, 0x100uLL))
    {
      if (*(v7 + 8) == 100 && *(v5 + 2) == 100)
      {
        sub_100001108(1u, "%s: reusing PDP if %s", "mis_network_set_external_interface", (v7 + 20));
      }

      v7 = *(v7 + 280);
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    sub_100001108(1u, "%s: ext_if %s already exists, reusing", "mis_network_set_external_interface", (v7 + 20));
    v3 = 17;
    v5 = v7;
  }

  else
  {
LABEL_14:
    if (!strncmp(v6, off_100034980[0], 0x10uLL))
    {
      qword_100034BA8 = v5;
      *(v5 + 194) |= 2u;
    }

    v3 = 0;
    *(v5 + 35) = qword_100034C30;
    qword_100034C30 = v5;
  }

  *(a1 + 528) = *(v5 + 98);
  *(v5 + 98) = a1;
  ++*(a1 + 516);
  ++*v5;
  *(a1 + 24) = v5;
  sub_100001108(1u, "%s: added ext if %s to network %s");
  return v3;
}

uint64_t sub_1000033FC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 296) - 3) > 1)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      while (strncmp((v7 + 20), (a2 + 20), 0x100uLL))
      {
        v7 = *(v7 + 280);
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      sub_100001108(0, "%s: int if %s already exists in network");
      return 4294967274;
    }

LABEL_9:
    v8 = *(a2 + 12);
    if (!v8 || v8 == *(a1 + 468))
    {
      __buf = 0;
      arc4random_buf(&__buf, 8uLL);
      *(a2 + 400) = __buf;
      v9 = *(a1 + 296);
      if (v9 == 2)
      {
        v11 = *(a1 + 16);
        if (!v11)
        {
          v20 = a1 + 40;
          v3 = "%s: [internal error] no gateway if on inflight network %s";
          goto LABEL_3;
        }

        if (*(v11 + 8) != 104)
        {
          v20 = a1 + 40;
          v3 = "%s: cannot modify int ifs when network %s is started AND it's gateway if is not a bridge";
          goto LABEL_3;
        }

        sub_100001108(2u, "%s: adding new int if member to bridge %s, network %s", "mis_network_add_internal_interface", (v11 + 20), (a1 + 40));
        v4 = sub_100019F70(a1, a2);
        if (v4)
        {
          sub_100001108(0, "%s: mis_bridge_add_extra_member, network %s, err %d");
          return v4;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if ((*(a1 + 352) & 2) != 0 && *(a1 + 372) != 2)
          {
            if (*(a1 + 32))
            {
              sub_100020850();
            }

            *(a1 + 16) = a2;
            ++*a2;
          }

          else
          {
            v12 = *(a1 + 16);
            if (v12)
            {
              if (*(v12 + 8) != 104)
              {
                sub_10002087C();
              }

              sub_100001108(2u, "%s: bridge if already exists", "mis_network_add_internal_interface");
              v13 = *(a2 + 12);
              if (v13 != *(*(a1 + 16) + 12))
              {
                v21 = *(*(a1 + 16) + 12);
                v22 = a1 + 40;
                v20 = *(a2 + 12);
                v3 = "%s: int if mtu %d different than bridge mtu %d, network %s";
                goto LABEL_3;
              }
            }

            else
            {
              v14 = malloc_type_malloc(0x198uLL, 0x10A0040A0622200uLL);
              *(v14 + 36) = 0u;
              *(v14 + 52) = 0u;
              *(v14 + 68) = 0u;
              *(v14 + 84) = 0u;
              *(v14 + 100) = 0u;
              *(v14 + 116) = 0u;
              *(v14 + 132) = 0u;
              *(v14 + 148) = 0u;
              *(v14 + 164) = 0u;
              *(v14 + 180) = 0u;
              *(v14 + 196) = 0u;
              *(v14 + 212) = 0u;
              *(v14 + 228) = 0u;
              *(v14 + 244) = 0u;
              *(v14 + 101) = 0;
              *(v14 + 4) = 0u;
              *(v14 + 260) = 0u;
              *(v14 + 276) = 0u;
              *(v14 + 292) = 0u;
              *(v14 + 308) = 0u;
              *(v14 + 324) = 0u;
              *(v14 + 340) = 0u;
              *(v14 + 356) = 0u;
              *(v14 + 372) = 0u;
              *(v14 + 388) = 0u;
              *(v14 + 20) = 0u;
              *v14 = 1;
              v15 = sub_10001A3C8(v14 + 20);
              if (v15)
              {
                v4 = v15;
                sub_100001108(0, "%s: mis_get_bridge_name");
                return v4;
              }

              v16 = *(a1 + 468);
              *(v14 + 2) = 104;
              *(v14 + 3) = v16;
              *(a1 + 16) = v14;
              v13 = *(a2 + 12);
            }

            v17 = *(a1 + 32);
            *(a1 + 32) = a2;
            *(a2 + 280) = v17;
            *(a2 + 288) = a1;
            ++*a2;
            v18 = (a2 + 20);
            v19 = sub_100010FD8(v18, v13);
            if (v19)
            {
              v4 = v19;
              sub_100001108(0, "%s: mis_setifmtu, int if %s, err %d", "mis_network_add_internal_interface", v18, v19);
              return v4;
            }

            a2 = *(a1 + 16);
          }

          *(a2 + 288) = a1;
          sub_100001108(1u, "%s: added gwy if %s to network %s", "mis_network_add_internal_interface", (a2 + 20), (a1 + 40));
          return 0;
        }

        sub_100001108(2u, "%s: network is starting %s", "mis_network_add_internal_interface", (a1 + 40));
        v4 = 0;
      }

      v10 = *(a1 + 32);
      *(a1 + 32) = a2;
      *(a2 + 280) = v10;
      *(a2 + 288) = a1;
      ++*a2;
      return v4;
    }

    v22 = a1 + 40;
    v23 = *(a1 + 468);
    v20 = a2 + 20;
    v21 = *(a2 + 12);
    v3 = "%s: mtu mismatch, if %s %d, network %s %d";
  }

  else
  {
    v20 = a1 + 40;
    v3 = "%s: network has already stopped, network %s";
  }

LABEL_3:
  sub_100001108(0, v3, "mis_network_add_internal_interface", v20, v21, v22, v23);
  return 4294967274;
}

BOOL sub_1000037D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x10) == 0)
  {
    sub_1000208A8();
  }

  v4 = *(a2 + 8);
  if ((v4 & 0x10) == 0 || ((v4 ^ v2) & 0x300) != 0)
  {
    return 0;
  }

  if ((v2 & v4 & 0x100) != 0)
  {
    is_null = uuid_is_null((a1 + 536));
    v8 = uuid_is_null((a2 + 536));
    if (!(v8 | is_null))
    {
      return uuid_compare((a1 + 536), (a2 + 536)) == 0;
    }

    if ((is_null == 0) == (v8 != 0))
    {
      return 0;
    }
  }

  if (*(a1 + 352) != *(a2 + 352))
  {
    return 0;
  }

  v9 = *(a1 + 372);
  if (v9 != *(a2 + 372))
  {
    return 0;
  }

  if (v9 != 2)
  {
    if (*(a1 + 376) != *(a2 + 376))
    {
      return 0;
    }

    v11 = *(a1 + 380);
    if (v11)
    {
      if (v11 != *(a2 + 380) || *(a1 + 384) != *(a2 + 384))
      {
        return 0;
      }
    }

    if (*(a1 + 392) != *(a2 + 392))
    {
      return 0;
    }

    if (*(a1 + 396) != 0 && (*(a2 + 8) & 0x20) != 0)
    {
      v13 = *(a1 + 396) == *(a2 + 396) && *(a1 + 404) == *(a2 + 404);
      if (!v13 || *(a1 + 412) != *(a2 + 412))
      {
        return 0;
      }
    }

    v12 = !*(a1 + 416) && *(a1 + 424) == 0;
    if (!v12 && (*(a2 + 8) & 0x40) != 0)
    {
      v14 = *(a1 + 416) == *(a2 + 416) && *(a1 + 424) == *(a2 + 424);
      if (!v14 || *(a1 + 432) != *(a2 + 432))
      {
        return 0;
      }
    }

    if (*(a1 + 468) != *(a2 + 468))
    {
      return 0;
    }
  }

  if (byte_100034BB0)
  {
    v10 = *(a2 + 24);
    return v10 && *(v10 + 8) == 100;
  }

  return !strncmp((a1 + 452), (a2 + 452), 0x10uLL);
}

uint64_t sub_1000039CC(uint64_t a1)
{
  v2 = *(a1 + 380);
  if (v2 && (v3 = *(a1 + 384)) != 0 && (v4 = qword_100034C38) != 0)
  {
    v5 = bswap32(v3 & v2);
    v6 = v5 + bswap32(~v3);
    v7 = "%s: overlapping DHCP range between network %s and network %s";
    while (1)
    {
      if (*(v4 + 372) != 2)
      {
        if (uuid_compare((a1 + 356), (v4 + 356)))
        {
          v8 = *(v4 + 380);
          if (v8)
          {
            v9 = *(v4 + 384);
            if (v9)
            {
              v10 = bswap32(*(a1 + 384) & v8);
              v11 = v10 + bswap32(~v9);
              if (v6 >= v10 && v11 >= v5)
              {
                break;
              }
            }
          }
        }
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v13 = *&in6addr_any.__u6_addr32[2];
    v14 = *(a1 + 396) == *in6addr_any.__u6_addr8 && *(a1 + 404) == v13;
    if (!v14 && *(a1 + 412) && (v4 = qword_100034C38) != 0)
    {
      v7 = "%s: overlapping v6 range between network %s and network %s";
      while (1)
      {
        if (*(v4 + 372) != 2 && uuid_compare((a1 + 356), (v4 + 356)))
        {
          v15 = *(v4 + 396) == *in6addr_any.__u6_addr8 && *(v4 + 404) == v13;
          v16 = *(v4 + 412);
          if (v15 || !v16) && (sub_100003BD8(a1 + 396, *(a1 + 412), v4 + 396, v16))
          {
            break;
          }
        }

        v4 = *v4;
        if (!v4)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      if (*(a1 + 416) == *in6addr_any.__u6_addr8 && *(a1 + 424) == v13)
      {
        return 1;
      }

      if (!*(a1 + 432))
      {
        return 1;
      }

      v4 = qword_100034C38;
      if (!qword_100034C38)
      {
        return 1;
      }

      v7 = "%s: overlapping nat64 range between network %s and network %s";
      while (1)
      {
        if (*(v4 + 372) != 2 && uuid_compare((a1 + 356), (v4 + 356)))
        {
          v18 = *(v4 + 416) == *in6addr_any.__u6_addr8 && *(v4 + 424) == v13;
          v19 = *(v4 + 432);
          if (v18 || !v19) && (sub_100003BD8(a1 + 416, *(a1 + 432), v4 + 416, v19))
          {
            break;
          }
        }

        v4 = *v4;
        if (!v4)
        {
          return 1;
        }
      }
    }
  }

  sub_100001108(1u, v7, "mis_network_validate_resource_availability", a1 + 40, v4 + 40);
  return 0;
}

uint64_t sub_100003BD8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = 128 - a2;
  if (128 - a2 >= 1)
  {
    v5 = 15;
    do
    {
      v6 = 8 - v4;
      if (v4 > 8)
      {
        v6 = 0;
      }

      *(&v19[1] + v5) |= 0xFFu >> v6;
      v7 = v5-- != 0;
      if (!v7)
      {
        break;
      }

      v8 = v4 > 8;
      v4 -= 8;
    }

    while (v8);
  }

  v9 = 128 - a4;
  if (128 - a4 >= 1)
  {
    v10 = 15;
    do
    {
      v11 = 8 - v9;
      if (v9 > 8)
      {
        v11 = 0;
      }

      *(v19 + v10) |= 0xFFu >> v11;
      v7 = v10-- != 0;
      if (!v7)
      {
        break;
      }

      v8 = v9 > 8;
      v9 -= 8;
    }

    while (v8);
  }

  for (i = 0; i != 16; ++i)
  {
    v13 = *(&v19[1] + i);
    v14 = *(a3 + i);
    if (v13 > v14)
    {
      break;
    }

    if (v13 < v14)
    {
      return 0;
    }
  }

  for (j = 0; j != 16; ++j)
  {
    v16 = *(v19 + j);
    v17 = *(a1 + j);
    if (v16 > v17)
    {
      break;
    }

    if (v16 < v17)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_100003CE4(unsigned __int8 *uu1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  do
  {
    v4 = uuid_compare(uu1, (v2 + 356));
    result = v4 == 0;
    if (!v4)
    {
      break;
    }

    v2 = *(v2 + 488);
  }

  while (v2);
  return result;
}

uint64_t *sub_100003D38(unsigned __int8 *uu1)
{
  v2 = &qword_100034C38;
  do
  {
    v2 = *v2;
  }

  while (v2 && uuid_compare(uu1, v2 + 356));
  return v2;
}

uint64_t sub_100003D7C(uint64_t a1)
{
  if (*(a1 + 372) > 1u)
  {
    return 0;
  }

  v2 = sub_100011914((*(a1 + 16) + 20));
  if (v2)
  {
    v3 = v2;
    sub_100001108(0, "%s: mis_router_stop");
    return v3;
  }

  v4 = sub_1000117F4((*(a1 + 16) + 20));
  if (v4)
  {
    v3 = v4;
    sub_100001108(0, "%s: mis_router_start");
    return v3;
  }

  if (!*(a1 + 372) || (v5 = *(a1 + 376), (v5 & 2) != 0) || (*(a1 + 392) & 2) != 0)
  {
    v6 = sub_100011290((*(a1 + 16) + 20), (a1 + 380), (a1 + 384), 0);
    if (v6)
    {
      v3 = v6;
      sub_100001108(0, "%s: mis_aifaddr");
      return v3;
    }

    v5 = *(a1 + 376);
  }

  if ((v5 & 4) == 0)
  {
    v7 = sub_10001844C(a1);
    if (v7)
    {
      v3 = v7;
      sub_100001108(0, "%s: dhcp_start");
      return v3;
    }
  }

  v9 = *(a1 + 372);
  if (v9 && (*(a1 + 376) & 2) == 0 && (*(a1 + 392) & 2) == 0)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v11 = sub_100004080(a1);
  if (!v11)
  {
    v9 = *(a1 + 372);
    v10 = 1;
LABEL_25:
    if (v9 != 1)
    {
      v3 = 0;
      v13 = 0;
      goto LABEL_44;
    }

    if ((*(*(a1 + 24) + 752) & 1) == 0)
    {
      sub_10001D840(1);
      *(*(a1 + 24) + 752) = 1;
    }

    v12 = *(a1 + 352);
    v13 = (v12 & 1) == 0;
    if ((v12 & 1) == 0)
    {
      v14 = sub_100020464(a1);
      if (v14)
      {
        v3 = v14;
        sub_100001108(0, "%s: mis_network_configure_dns_proxy", "mis_network_setup_v4");
        goto LABEL_50;
      }
    }

    v15 = *(a1 + 376);
    if (v15)
    {
      goto LABEL_35;
    }

    if ((v15 & 2) != 0)
    {
      v3 = sub_10001BE98();
      if (v3)
      {
        sub_100001108(0, "%s: mis_pf_refresh_shared_mode_rules_v4", "mis_network_setup_v4");
        if (v12)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      v16 = "%s: add v4 pf rules";
    }

    else
    {
      if ((*(a1 + 392) & 2) == 0)
      {
LABEL_35:
        v3 = 0;
        goto LABEL_44;
      }

      v3 = sub_10001AFB0();
      if (v3)
      {
        sub_100001108(0, "%s: mis_pf_refresh_nat_rules_nat64");
        goto LABEL_44;
      }

      v16 = "%s: added nat64 pf rules";
    }

    sub_100001108(2u, v16, "mis_network_setup_v4");
LABEL_44:
    if (sub_10001B90C(2))
    {
      if (!v3)
      {
        return v3;
      }

      if (!v13)
      {
LABEL_50:
        if ((v5 & 4) != 0)
        {
          if (!v10)
          {
            return v3;
          }
        }

        else
        {
          sub_100017870(a1);
          if ((v10 & 1) == 0)
          {
            return v3;
          }
        }

        sub_100004208(a1);
        return v3;
      }
    }

    else
    {
      sub_100001108(0, "%s: mis_pf_refresh_vmnet_network_isolation_tables", "mis_network_setup_v4");
      v3 = 0xFFFFFFFFLL;
      if (!v13)
      {
        goto LABEL_50;
      }
    }

LABEL_49:
    sub_1000207C8(a1);
    goto LABEL_50;
  }

  v3 = v11;
  sub_100001108(0, "%s: mis_network_setup_routes, %d", "mis_network_setup_v4", v11);
  if ((v5 & 4) == 0)
  {
    sub_100017870(a1);
  }

  return v3;
}

uint64_t sub_100004080(uint64_t a1)
{
  v2 = if_nametoindex((*(a1 + 16) + 20));
  if (v2)
  {
    v3 = v2;
    v4 = socket(17, 3, 2);
    if (v4 < 0)
    {
      v9 = *__error();
      sub_100001108(0, "%s: socket: %m", "mis_network_setup_routes");
    }

    else
    {
      v5 = v4;
      v6 = sub_100006CF8(v4, 1, (*(a1 + 384) & *(a1 + 380)), *(a1 + 380), *(a1 + 384), (*(a1 + 16) + 20), 0, *(a1 + 380), 1);
      if (v6)
      {
        v7 = v6 == 17;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = sub_100006CF8(v5, 1, 0, *(a1 + 380), 0, (*(a1 + 16) + 20), v3, *(a1 + 380), 3);
        if (v8 && (v9 = v8, v8 != 17))
        {
          sub_100001108(0, "%s: failed to add default route");
        }

        else
        {
          sub_100001108(0, "%s: added routes for network %s", "mis_network_setup_routes", (a1 + 40));
          v9 = 0;
        }
      }

      else
      {
        v9 = v6;
        sub_100001108(0, "%s: failed to add subnet route");
      }

      close(v5);
    }
  }

  else
  {
    sub_100001108(0, "%s: if_nametoindex", "mis_network_setup_routes");
    return 19;
  }

  return v9;
}

uint64_t sub_100004208(uint64_t a1)
{
  v2 = if_nametoindex((*(a1 + 16) + 20));
  if (v2)
  {
    v3 = v2;
    v4 = socket(17, 3, 2);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      v6 = sub_100006CF8(v4, 2, (*(a1 + 384) & *(a1 + 380)), *(a1 + 380), *(a1 + 384), (*(a1 + 16) + 20), 0, *(a1 + 380), 0);
      if (v6)
      {
        v7 = v6;
        v8 = "%s: failed to delete subnet route";
      }

      else
      {
        v7 = sub_100006CF8(v5, 2, 0, *(a1 + 380), 0, (*(a1 + 16) + 20), v3, *(a1 + 380), 3);
        if (!v7)
        {
          sub_100001108(0, "%s: deleted routes for network %p");
          goto LABEL_10;
        }

        v8 = "%s: failed to delete default route";
      }

      sub_100001108(0, v8, "mis_network_remove_routes");
LABEL_10:
      close(v5);
      return v7;
    }

    v7 = *__error();
    sub_100001108(0, "%s: socket: %m", "mis_network_remove_routes");
  }

  else
  {
    sub_100001108(0, "%s: if_nametoindex", "mis_network_remove_routes");
    return 19;
  }

  return v7;
}

uint64_t sub_100004364(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 804);
  if (!a2 && !*(a1 + 740))
  {
    sub_100001108(1u, "%s: both existing and new v4 addresses are not present, skipping PREF64", "mis_network_v4_changed");
    goto LABEL_19;
  }

  if (!sub_10001F0CC() || byte_100034BEC)
  {
    v8 = sub_10000D6E4(a1, 1, 0);
    if (v8)
    {
      v9 = v8;
      if (v8 == 2)
      {
        sub_100001108(1u, "%s: NAT64 prefix doesn't exist on ext if %s", "mis_process_pref64", (a1 + 20));
      }

      else
      {
        sub_100001108(0, "%s: failed to query NAT64 prefix on ext if %s", "mis_process_pref64", (a1 + 20));
        if (v9 == 1)
        {
          return 12;
        }

        if (v9 == 3)
        {
          goto LABEL_6;
        }
      }
    }

    if (v6)
    {
      if (v6 != *(a1 + 804))
      {
        v7 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v6 = *(a1 + 804);
    }

    if (v6 == 1)
    {
      v10 = sub_10001F200();
      if (v10)
      {
        return v10;
      }
    }

LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  sub_100001108(1u, "%s: device currently has dual sim, skipping PREF64 configurations", "mis_process_pref64");
LABEL_6:
  v7 = v6 == 1;
LABEL_20:
  if ((*(a1 + 776) & 2) == 0)
  {
    v11 = *(a1 + 740);
    if (v11 | a2)
    {
      if (a2 || !v11)
      {
        *(a1 + 740) = a2;
        *(a1 + 744) = a3;
        if (!a2 || v11)
        {
          if ((*(a1 + 752) & 1) == 0)
          {
            sub_10001D840(1);
            *(a1 + 752) = 1;
          }

          sub_100001108(0, "%s: ext if %s, refreshed ext if v4", "mis_network_v4_changed", (a1 + 20));
          nullsub_2();
          if (!v7)
          {
            goto LABEL_29;
          }
        }

        else
        {
          for (i = *(a1 + 784); i; i = *(i + 528))
          {
            sub_100001108(0, "%s: network %s, performing full setup", "mis_network_v4_changed", (i + 40));
            if (*(i + 296) == 2)
            {
              v15 = sub_100003D7C(i);
              if (v15)
              {
                v10 = v15;
                sub_100001108(0, "%s: mis_network_setup_v4, network %s, err %d", "mis_network_v4_changed", (i + 40), v15);
                return v10;
              }
            }

            else
            {
              sub_100001108(2u, "%s: skipping network setup since network %s has not started", "mis_network_v4_changed", (i + 40));
            }
          }

          if (!v7)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_10001D840(0);
        *(a1 + 752) = 0;
        *(a1 + 740) = 0;
        *(a1 + 744) = a3;
        v12 = *(a1 + 804) == 1 && v7;
        sub_100001108(0, "%s: ext if %s, lost ext if v4 address", "mis_network_v4_changed", (a1 + 20));
        if (!v12)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_100001108(0, "%s: ext if %s, no ext if v4 change", "mis_network_v4_changed", (a1 + 20));
      if (!v7)
      {
LABEL_29:
        sub_100001108(0, "%s: success, ext if %s", "mis_network_v4_changed", (a1 + 20));
        return 0;
      }
    }

    sub_100001108(1u, "%s: resetting NETRB state due to PREF64 presence change", "mis_network_v4_changed");
    *(a1 + 804) = 0;
    sub_100015AA8();
    goto LABEL_29;
  }

  sub_100001108(2u, "%s is not for any external ext if", "mis_network_v4_changed");
  return 19;
}

uint64_t sub_1000046AC(uint64_t a1)
{
  if (*(a1 + 372) > 1u)
  {
    goto LABEL_44;
  }

  for (i = *(a1 + 32); i; i = *(i + 280))
  {
    v3 = sub_10001191C((i + 20));
    if (v3)
    {
      sub_100001108(0, "%s: mis_router6_start, if %s, err %d", "mis_network_setup_v6", (i + 20), v3);
    }
  }

  v4 = (*(a1 + 16) + 20);
  v5 = sub_10001191C(v4);
  if (!v5)
  {
    v7 = sub_100010BE4(v4);
    if (v7)
    {
      v6 = v7;
      sub_100001108(0, "%s: mis_ll_stop");
      return v6;
    }

    v8 = sub_1000100DC(v4);
    if (v8)
    {
      v6 = v8;
      sub_100001108(0, "%s: mis_protoattach6");
      return v6;
    }

    v9 = sub_1000105B4(v4);
    if (v9)
    {
      v6 = v9;
      sub_100001108(0, "%s: mis_ll_start");
      return v6;
    }

    if (*(a1 + 436) || *(a1 + 440) || *(a1 + 444) || *(a1 + 448))
    {
      inet_ntop(30, (a1 + 436), v23, 0x2Eu);
      v10 = 0;
      v11 = *(a1 + 412);
      __b = 0uLL;
      if (v11 >= 8)
      {
        v10 = v11 >> 3;
        memset(&__b, 255, v11 >> 3);
      }

      if (v11 <= 0)
      {
        v12 = -(-v11 & 7);
      }

      else
      {
        v12 = v11 & 7;
      }

      if (v12)
      {
        v23[v10 - 14] = 0xFF00u >> v12;
      }

      v13 = sub_1000113F4(v4, (a1 + 436), &__b, 0);
      if (v13)
      {
        v6 = v13;
        sub_100001108(0, "%s: mis_aifaddr6");
        return v6;
      }

      sub_100001108(0, "%s: added fixed addr %s/%d on %s", "mis_network_setup_v6", v23, *(a1 + 412), v4);
    }

    v14 = sub_10001F200();
    if (v14)
    {
      v6 = v14;
      sub_100001108(0, "%s: rtadvd_config_refresh, network %s");
      return v6;
    }

    if (*(a1 + 372) == 1)
    {
      v15 = *(a1 + 24);
      if ((*(v15 + 753) & 1) == 0)
      {
        *(v15 + 753) = 1;
        sub_10001D934(1);
      }

      if (*(a1 + 520))
      {
        sub_100001108(2u, "%s: skipping dns proxy since we already configured it for v4", "mis_network_setup_v6");
      }

      else
      {
        v20 = sub_100020464(a1);
        if (v20)
        {
          v6 = v20;
          sub_100001108(0, "%s: mis_network_configure_dns_proxy");
          return v6;
        }
      }

      v16 = *(a1 + 392);
      if ((v16 & 4) != 0)
      {
        v18 = sub_10001D2DC();
        if (v18)
        {
          v6 = v18;
          sub_100001108(0, "%s: mis_pf_refresh_nat_rules_v6, network %s, err %d");
          return v6;
        }
      }

      else if ((v16 & 8) != 0)
      {
        v17 = sub_10001A73C();
        if (v17)
        {
          v6 = v17;
          sub_100001108(0, "%s: mis_pf_refresh_prefix_sharing_rules, network %s, err %d", "mis_network_setup_v6", (a1 + 40), v17);
          return v6;
        }
      }
    }

    v19 = sub_100020044();
    if (v19)
    {
      v6 = v19;
      sub_100001108(0, "%s: dhcp6d_config_refresh, network %s");
      return v6;
    }

    if ((sub_10001B90C(30) & 1) == 0)
    {
      sub_100001108(0, "%s: mis_pf_refresh_vmnet_network_isolation_tables", "mis_network_setup_v6");
      return 0xFFFFFFFFLL;
    }

LABEL_44:
    sub_100001108(2u, "%s success, network %s", "mis_network_setup_v6", (a1 + 40));
    return 0;
  }

  v6 = v5;
  sub_100001108(0, "%s: mis_router6_start");
  return v6;
}

uint64_t sub_100004A70(uint64_t a1, void *a2)
{
  if (!byte_100034BE9)
  {
    if ((*(a1 + 776) & 2) != 0)
    {
      sub_100001108(2u, "%s is not for any external ext if", "mis_network_v6_addr_changed");
      return 19;
    }

    v5 = (a1 + 708);
    if (*a2 == *(a1 + 708) && a2[1] == *(a1 + 716))
    {
      v10 = *v5 == *in6addr_any.__u6_addr8 && *(a1 + 716) == *&in6addr_any.__u6_addr32[2];
      if (!v10 && (*(a1 + 753) & 1) == 0)
      {
        sub_10001D934(1);
        v2 = 0;
        *(a1 + 753) = 1;
        return v2;
      }

      return 0;
    }

    v7 = *&in6addr_any.__u6_addr32[2];
    if (*a2 == *in6addr_any.__u6_addr8 && a2[1] == v7)
    {
      if (*(a1 + 753) == 1)
      {
        sub_10001D840(0);
        *(a1 + 753) = 0;
        sub_100001108(0, "%s: lost v6 address, ext if %s");
        return 0;
      }
    }

    else if (*v5 != *in6addr_any.__u6_addr8 || *(a1 + 716) != v7)
    {
      *v5 = *a2;
      if ((*(a1 + 753) & 1) == 0)
      {
        sub_10001D934(1);
        *(a1 + 753) = 1;
      }

      nullsub_2();
      return 0;
    }

    if (*v5 == *in6addr_any.__u6_addr8 && *(a1 + 716) == v7)
    {
      *v5 = *a2;
      v12 = *(a1 + 784);
      if (v12)
      {
        while (1)
        {
          if (*(v12 + 296) == 2)
          {
            v13 = sub_1000046AC(v12);
            if (v13)
            {
              v2 = v13;
              sub_100001108(0, "%s: mis_network_setup_v6, network %s, err %d", "mis_network_v6_addr_changed", (v12 + 40), v13);
              return v2;
            }
          }

          else
          {
            sub_100001108(2u, "%s: skipping network %s since it's not started", "mis_network_v6_addr_changed", (v12 + 40));
          }

          v2 = 0;
          v12 = *(v12 + 528);
          if (!v12)
          {
            return v2;
          }
        }
      }
    }

    return 0;
  }

  sub_100001108(0, "%s: v6 is globally disabled");
  return 0;
}

uint64_t sub_100004C7C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 288);
  if (v4 == *a2)
  {
    if (!*(a1 + 288))
    {
      goto LABEL_13;
    }

    v5 = *(a1 + 325);
    if (v5 == a2[37] && sub_10000E754((a1 + 304), a2 + 16, v5) && *(a1 + 460) == a2[172] && *(a1 + 398) == *(a2 + 55) && *(a1 + 444) == *(a2 + 39) && *(a1 + 448) == *(a2 + 40) && *(a1 + 328) == *(a2 + 5) && *(a1 + 336) == *(a2 + 6) && *(a1 + 432) == *(a2 + 36))
    {
      v4 = *(a1 + 288);
LABEL_13:
      if (v4)
      {
        if ((*(a1 + 754) & 1) == 0)
        {
          v6 = sub_100011A98(a1 + 20, 1);
          if (v6)
          {
            sub_100001108(0, "%s: mis_set_proxy_prefixes, err %d");
          }

          else
          {
            *(a1 + 754) = 1;
            sub_10001D934(1);
            sub_100001108(2u, "%s: prefix invalid -> prefix valid");
          }

          return v6;
        }
      }

      else
      {
        sub_100001108(2u, "%s: no prefix -> no prefix", "mis_network_process_v6_prefix_change");
      }

      return 0;
    }
  }

  if (*(a1 + 288))
  {
    if ((*a2 & 1) == 0)
    {
      if (*(a1 + 754) != 1)
      {
        return 0;
      }

      *v51 = 0u;
      memset(v52, 0, sizeof(v52));
      v7 = inet_ntop(30, (a1 + 304), v51, 0x2Eu);
      if (v7)
      {
        sub_100001108(2u, "%s: %s -> no prefix", "mis_network_process_v6_prefix_change", v51);
        v8 = (a1 + 20);
        sub_100011A98(a1 + 20, 0);
        sub_10001D934(0);
        *(a1 + 754) = 0;
        v9 = sub_10001A73C();
        if (v9)
        {
          v10 = v9;
          sub_100001108(0, "%s: mis_pf_refresh_prefix_sharing_rules, ext_if %s, err %d", "mis_network_process_v6_prefix_change", v8, v9);
          return v10;
        }

        return 0;
      }

      goto LABEL_52;
    }
  }

  else if (*a2)
  {
    v11 = inet_ntop(30, a2 + 16, v53, 0x2Eu);
    if (v11)
    {
      sub_100001108(2u, "%s: no prefix -> %s", "mis_network_process_v6_prefix_change", v53);
      sub_100011A98(a1 + 20, 1);
      *(a1 + 754) = 1;
      *(a1 + 288) = *a2;
      v12 = *(a2 + 4);
      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
      *(a1 + 336) = *(a2 + 3);
      *(a1 + 352) = v12;
      *(a1 + 304) = v14;
      *(a1 + 320) = v13;
      v15 = *(a2 + 8);
      v17 = *(a2 + 5);
      v16 = *(a2 + 6);
      *(a1 + 400) = *(a2 + 7);
      *(a1 + 416) = v15;
      *(a1 + 368) = v17;
      *(a1 + 384) = v16;
      v19 = *(a2 + 10);
      v18 = *(a2 + 11);
      v20 = *(a2 + 9);
      *(a1 + 480) = *(a2 + 24);
      *(a1 + 448) = v19;
      *(a1 + 464) = v18;
      *(a1 + 432) = v20;
      sub_10001D934(1);
      v21 = *(a1 + 784);
      if (v21)
      {
        while (1)
        {
          if ((*(v21 + 392) & 8) != 0 && *(v21 + 296) == 2)
          {
            v22 = sub_1000046AC(v21);
            if (v22)
            {
              v6 = v22;
              sub_100001108(0, "%s: mis_network_setup_v6, network %s");
              return v6;
            }

            sub_100001108(2u, "%s: skipping network %s since it's not started", "mis_network_process_v6_prefix_change", (v21 + 40));
          }

          v21 = *(v21 + 528);
          if (!v21)
          {
            return 0;
          }
        }
      }

      return 0;
    }

    goto LABEL_49;
  }

  if (sub_10000E754((a1 + 304), a2 + 16, *(a1 + 325)))
  {
    if (!sub_10000E754((a1 + 304), a2 + 16, *(a1 + 325)))
    {
      return 0;
    }

    *v53 = 0u;
    memset(v54, 0, sizeof(v54));
    v11 = inet_ntop(30, a2 + 16, v53, 0x2Eu);
    if (v11)
    {
      sub_100001108(1u, "%s: prefix characteristics changed %s, ext if %s", "mis_network_process_v6_prefix_change", v53, (a1 + 20));
      *(a1 + 288) = *a2;
      v23 = *(a2 + 1);
      v24 = *(a2 + 2);
      v25 = *(a2 + 4);
      *(a1 + 336) = *(a2 + 3);
      *(a1 + 352) = v25;
      *(a1 + 304) = v23;
      *(a1 + 320) = v24;
      v26 = *(a2 + 5);
      v27 = *(a2 + 6);
      v28 = *(a2 + 8);
      *(a1 + 400) = *(a2 + 7);
      *(a1 + 416) = v28;
      *(a1 + 368) = v26;
      *(a1 + 384) = v27;
      v29 = *(a2 + 9);
      v30 = *(a2 + 10);
      v31 = *(a2 + 11);
      *(a1 + 480) = *(a2 + 24);
      *(a1 + 448) = v30;
      *(a1 + 464) = v31;
      *(a1 + 432) = v29;
      if ((*(a1 + 754) & 1) == 0)
      {
        sub_100011A98(a1 + 20, 1);
        sub_10001D934(1);
        *(a1 + 754) = 1;
        v32 = sub_10001A73C();
        if (v32)
        {
          sub_100001108(0, "%s: mis_pf_refresh_prefix_sharing_rules, ext if %s, err %d", "mis_network_process_v6_prefix_change", (a1 + 20), v32);
        }
      }

      v6 = sub_10001F200();
      if (v6)
      {
        goto LABEL_48;
      }

      return v6;
    }

LABEL_49:
    sub_100001108(v11, "%s: invalid new prefix");
    return 22;
  }

  *v51 = 0u;
  memset(v52, 0, sizeof(v52));
  *v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v7 = inet_ntop(30, (a1 + 304), v51, 0x2Eu);
  if (!v7)
  {
LABEL_52:
    sub_100001108(v7, "%s: [internal error] invalid old prefix");
    return 22;
  }

  v11 = inet_ntop(30, a2 + 16, v53, 0x2Eu);
  if (!v11)
  {
    goto LABEL_49;
  }

  sub_100001108(2u, "%s: prefix %s -> %s", "mis_network_process_v6_prefix_change", v51, v53);
  v33 = *(a1 + 336);
  *(a1 + 520) = *(a1 + 320);
  *(a1 + 536) = v33;
  v34 = *(a1 + 400);
  *(a1 + 584) = *(a1 + 384);
  *(a1 + 600) = v34;
  v35 = *(a1 + 368);
  *(a1 + 552) = *(a1 + 352);
  *(a1 + 568) = v35;
  *(a1 + 680) = *(a1 + 480);
  v36 = *(a1 + 464);
  *(a1 + 648) = *(a1 + 448);
  *(a1 + 664) = v36;
  v37 = *(a1 + 432);
  *(a1 + 616) = *(a1 + 416);
  *(a1 + 632) = v37;
  v38 = *(a1 + 304);
  *(a1 + 488) = *(a1 + 288);
  *(a1 + 504) = v38;
  *(a1 + 288) = *a2;
  v39 = *(a2 + 1);
  v40 = *(a2 + 2);
  v41 = *(a2 + 4);
  *(a1 + 336) = *(a2 + 3);
  *(a1 + 352) = v41;
  *(a1 + 304) = v39;
  *(a1 + 320) = v40;
  v42 = *(a2 + 5);
  v43 = *(a2 + 6);
  v44 = *(a2 + 8);
  *(a1 + 400) = *(a2 + 7);
  *(a1 + 416) = v44;
  *(a1 + 368) = v42;
  *(a1 + 384) = v43;
  v45 = *(a2 + 9);
  v46 = *(a2 + 10);
  v47 = *(a2 + 11);
  *(a1 + 480) = *(a2 + 24);
  *(a1 + 448) = v46;
  *(a1 + 464) = v47;
  *(a1 + 432) = v45;
  if ((*(a1 + 754) & 1) == 0)
  {
    sub_100001108(2u, "%s: prefix invalid -> prefix valid", "mis_network_process_v6_prefix_change");
    sub_100011A98(a1 + 20, 1);
    sub_10001D934(1);
    *(a1 + 754) = 1;
  }

  v48 = sub_10001A73C();
  if (v48)
  {
    sub_100001108(0, "%s: mis_pf_refresh_prefix_sharing_rules, ext if %s, err %d", "mis_network_process_v6_prefix_change", (a1 + 20), v48);
  }

  v49 = sub_10001F200();
  if (v49)
  {
    v6 = v49;
LABEL_48:
    sub_100001108(0, "%s: rtadvd_config_refresh, ext if %s, err %d");
    return v6;
  }

  v6 = sub_100020044();
  if (v6)
  {
    sub_100001108(0, "%s: dhcp6d_config_refresh, ext if %s, err %d");
  }

  return v6;
}

uint64_t sub_10000529C(const char *a1)
{
  v8 = 0;
  if (!a1 || !*a1)
  {
    sub_1000208D4();
  }

  if (getifaddrs(&v8))
  {
    v2 = *__error();
    sub_100001108(0, "getifaddrs: %m");
    v3 = v8;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_13;
  }

  v3 = v8;
  if (v8)
  {
    v4 = v8;
    while (1)
    {
      if (!strncmp(a1, v4->ifa_name, 0x10uLL))
      {
        ifa_addr = v4->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18)
          {
            break;
          }
        }
      }

      v4 = v4->ifa_next;
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    if (ifa_addr->sa_data[4] == 6)
    {
      ifa_data = v4->ifa_data;
      if (!ifa_data || *ifa_data != 209)
      {
        v2 = 0;
        if (!v3)
        {
          return v2;
        }

        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v2 = 22;
  if (v3)
  {
LABEL_13:
    freeifaddrs(v3);
  }

  return v2;
}

uint64_t sub_10000538C(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_100001108(0, "%s: network is not idle, %s", "mis_network_start", (a1 + 40));
    v3 = 37;
    goto LABEL_12;
  }

  if ((sub_1000039CC(a1) & 1) == 0)
  {
    sub_100001108(0, "%s: resource busy", "mis_network_start");
    v3 = 16;
    goto LABEL_12;
  }

  *(a1 + 296) = 1;
  v4 = *(a1 + 8);
  if ((v4 & 0x80) != 0)
  {
    sub_100001108(0, "%s: starting pdp for auth", "mis_network_start");
    v8 = sub_100013E58(a1);
    v3 = v8;
    if (!v8)
    {
      sub_1000057E8(a1, 0);
      goto LABEL_12;
    }

    if (v8 != 36)
    {
      sub_100001108(0, "%s: mis_pdp_start (auth), network %s, err %d", "mis_network_start", (a1 + 40), v8);
      sub_10001587C();
      goto LABEL_12;
    }

    sub_100001108(0, "%s: pdp auth in progress, network %s");
    goto LABEL_24;
  }

  v5 = *(a1 + 372);
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      if (*(a1 + 32))
      {
        if (*(*(a1 + 16) + 8) == 104)
        {
          v6 = sub_100005A1C(a1);
          if (v6)
          {
            v3 = v6;
            sub_100001108(0, "%s: mis_network_is_bridgeable, network %s");
          }

          else
          {
            v15 = sub_100019484(a1);
            if (v15)
            {
              v3 = v15;
              sub_100001108(0, "%s: mis_bridge_create, network %s");
            }

            else
            {
              v3 = sub_10001A200(a1);
              if (v3)
              {
                sub_100001108(0, "%s: mis_bridge_add_members, network %s");
              }
            }
          }

          goto LABEL_12;
        }

        sub_100001108(0, "%s: bridged mode gateway if must be bridge type, network %s");
      }

      else
      {
        sub_100001108(0, "%s: bridged mode has no internal interface, network %s");
      }

LABEL_45:
      v3 = 0;
      goto LABEL_12;
    }

    goto LABEL_54;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_100001108(0, "%s: no ext if, network %p", "mis_network_start", a1);
    v3 = 22;
    goto LABEL_12;
  }

  v10 = *(a1 + 16);
  v11 = v10[3];
  if (!v11)
  {
    v11 = 1500;
    v10[3] = 1500;
  }

  v10[4] = v11 - 40;
  if (*(v9 + 8) == 100)
  {
    if ((*(a1 + 376) & 2) != 0 || (*(a1 + 392) & 8) != 0)
    {
      if ((v4 & 0x10) != 0)
      {
        v12 = (a1 + 512);
      }

      else
      {
        v12 = (*(a1 + 496) + 460);
      }

      v16 = sub_100005A94(v10[2] == 101, *v12);
      sub_100001108(1u, "%s: mis_svc_is_available, err %d", "mis_network_start", v16);
    }

    v17 = sub_100013E58(a1);
    if (!v17)
    {
      sub_1000057E8(a1, 0);
      goto LABEL_54;
    }

    v3 = v17;
    if (v17 != 36)
    {
      sub_100001108(0, "%s: mis_pdp_start, network %s, err %d", "mis_network_start", (a1 + 40), v17);
      sub_10001587C();
      goto LABEL_12;
    }

    sub_100001108(0, "%s: tethering activation in progress, network %s");
LABEL_24:
    v3 = 36;
    goto LABEL_12;
  }

  if ((*(v9 + 776) & 2) != 0)
  {
    v14 = *(v9 + 12);
    if (!v14)
    {
      v14 = 1500;
      *(v9 + 12) = 1500;
    }

    *(v9 + 16) = v14 - 40;
    if (sub_10000D930() == -1)
    {
      sub_100001108(0, "%s: nwi_notifications_setup");
      goto LABEL_45;
    }
  }

  else
  {
    v13 = sub_10001113C((v9 + 20));
    *(v9 + 12) = v13;
    *(v9 + 16) = v13 - 40;
    if (sub_10000DDE4(v9))
    {
      sub_100001108(0, "%s: mis_setup_external_listeners");
      goto LABEL_45;
    }
  }

LABEL_54:
  v18 = sub_100005B08(a1);
  v3 = v18;
  if (v18)
  {
    sub_100001108(0, "%s: mis_network_start_continued, network %s, err %d", "mis_network_start", (a1 + 40), v18);
  }

LABEL_12:
  if ((*(a1 + 376) & 2) != 0 || (*(a1 + 392) & 8) != 0)
  {
    sub_100015B3C(v3);
  }

  if (v3 == 36)
  {
    sub_100001108(0, "%s: network %s in progress", "mis_network_start", (a1 + 40));
  }

  else if (v3)
  {
    sub_100005E14(a1, v2);
  }

  else
  {
    sub_100001108(0, "%s: network %s has been started", "mis_network_start", (a1 + 40));
    *(a1 + 296) = 2;
  }

  return v3;
}

void sub_1000057E8(uint64_t a1, uint64_t a2)
{
  if (a2 == 36 || !*(a1 + 24))
  {
    sub_100020900();
  }

  v3 = qword_100034C28;
  if (qword_100034C28)
  {
    v4 = a2;
    v5 = 0;
    while (1)
    {
      v6 = v3;
      v3 = *v3;
      v7 = v6[3];
      if (!v7 || *(v7 + 24) != *(a1 + 24))
      {
        goto LABEL_12;
      }

      v8 = *(a1 + 296);
      if (v8 == 1)
      {
        if (!v4)
        {
          v5 = sub_100005B08(a1);
          if (v5)
          {
            sub_100001108(0, "%s: mis_network_start_continued, network %s, err %d");
          }

          else
          {
            sub_100001108(2u, "%s: mis_network_start_continued done, network %s");
          }
        }

        v9 = v6[2];
        if (v9)
        {
          v10 = v6[1];
          if (v10)
          {
            if (v4 | v5)
            {
              xpc_dictionary_set_uint64(v6[2], off_1000348C8[0], 0x7D0uLL);
            }

            else
            {
              *(a1 + 296) = 2;
              sub_100001108(0, "%s: network %s has been started", "mis_network_complete_pdp", (a1 + 40));
              xpc_dictionary_set_uint64(v9, off_1000348C8[0], 0x7D1uLL);
              xpc_dictionary_set_string(v9, off_1000348E0[0], (a1 + 40));
              v11 = *(v6 + 8);
              if (v11 != -1)
              {
                xpc_dictionary_set_fd(v9, off_100034880[0], v11);
              }
            }

            sub_100001CD4(v10, v9);
            xpc_release(v9);
          }
        }

        if (v4 | v5)
        {
          sub_100005E14(a1, a2);
        }

        v12 = qword_100034C28;
        if (qword_100034C28 == v6)
        {
          v13 = &qword_100034C28;
        }

        else
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12 != v6);
        }

        *v13 = *v12;
        free(v6);
        --dword_100034BF0;
        if (!v3)
        {
          return;
        }
      }

      else
      {
        sub_100001108(2u, "%s: skipping network %s, state %d", "mis_network_complete_pdp", (a1 + 40), v8);
LABEL_12:
        if (!v3)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_100005A1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = sub_10000529C((v1 + 20));
    if (v2)
    {
      break;
    }

    v1 = *(v1 + 280);
    if (!v1)
    {
      return 0;
    }
  }

  v3 = v2;
  sub_100001108(0, "%s: mis_is_bridgeable, int if %s", "mis_network_is_bridgeable", (v1 + 20));
  return v3;
}

uint64_t sub_100005A94(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a1)
  {
    sub_100001108(1u, "checking for AUTH service availability");
  }

  v4 = sub_100015860(v3, v2);
  v5 = v4;
  if (v4)
  {
    v6 = strerror(v4);
    sub_100001108(1u, "service not available: %s", v6);
  }

  return v5;
}

uint64_t sub_100005B08(uint64_t a1)
{
  if (*(a1 + 296) != 1)
  {
    sub_100001108(0, "%s: network is not being started, %s");
    return 22;
  }

  if (*(a1 + 372) > 1u)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    sub_100001108(0, "%s: no gateway if, network %p");
    return 22;
  }

  if (*(v2 + 8) == 104 && !*(a1 + 32))
  {
    sub_100001108(0, "%s: no member ifs, network %p");
    return 22;
  }

  v3 = *(a1 + 376);
  if ((v3 & 4) != 0 || (v4 = sub_1000182E8(), !v4))
  {
    if ((*(a1 + 352) & 2) != 0)
    {
      sub_100001108(0, "%s: skipping bridging, gwy if '%s'", "mis_network_start_continued", (*(a1 + 16) + 20));
    }

    else
    {
      for (i = *(a1 + 32); i; i = *(i + 280))
      {
        if (!*(i + 20))
        {
          if (*(*(a1 + 16) + 8) != 101)
          {
            sub_10002092C((a1 + 32), (a1 + 40));
          }

          sub_100001108(0, "%s: skipping AUTH interface for bridgeability check", "mis_network_start_continued");
        }
      }

      if (sub_100005A1C(a1))
      {
        if (*(a1 + 32))
        {
          sub_100001108(0, "%s: at least 1 int if is not bridgeable", "mis_network_start_continued");
          v5 = 22;
          if ((v3 & 4) != 0)
          {
            return v5;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v9 = sub_100019484(a1);
        if (v9)
        {
          v5 = v9;
          sub_100001108(0, "%s: mis_bridge_create", "mis_network_start_continued");
          if ((v3 & 4) != 0)
          {
            return v5;
          }

          goto LABEL_37;
        }

        v11 = sub_10001A200(a1);
        if (v11)
        {
          v5 = v11;
          sub_100001108(0, "%s: mis_bridge_add_members, %d");
LABEL_36:
          if ((v3 & 4) != 0)
          {
            return v5;
          }

LABEL_37:
          sub_100018F38(a1);
          return v5;
        }
      }
    }

    if (*(a1 + 480))
    {
      v7 = sub_10001BB78();
      if (v7)
      {
        v5 = v7;
        sub_100001108(0, "%s: mis_pf_refresh_port_forwarding_rules, network %s, err %d");
        goto LABEL_36;
      }
    }

    v8 = sub_100003D7C(a1);
    if (v8)
    {
      v5 = v8;
      sub_100001108(0, "%s: mis_network_setup_v4 2, network %s, err %d");
      goto LABEL_36;
    }

    v10 = sub_1000046AC(a1);
    if (v10)
    {
      v5 = v10;
      sub_100001108(0, "%s: mis_network_setup_v6 2, network %s, err %d");
      goto LABEL_36;
    }

    if ((sub_10001B368() & 1) == 0)
    {
      sub_100001108(0, "%s: mis_pf_refresh_vmnet_network_isolation_ruleset", "mis_network_start_continued");
      v5 = 0xFFFFFFFFLL;
      if ((v3 & 4) != 0)
      {
        return v5;
      }

      goto LABEL_37;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      sub_100015C4C((v12 + 20), (*(a1 + 16) + 20));
    }

    return 0;
  }

  v5 = v4;
  sub_100001108(0, "%s: dhcp_init, err %d", "mis_network_start_continued", v4);
  return v5;
}

uint64_t sub_100005E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 296);
  if (!v3)
  {
    sub_100001108(2u, "%s: network %s is not started", "mis_network_stop", (a1 + 40));
  }

  if ((*(a1 + 8) & 0x110) == 0x100 && (*(a1 + 296) - 1) < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  *(a1 + 296) = v4;
  if (v3)
  {
    v5 = (*(a1 + 16) + 20);
    if (*(a1 + 372) != 2)
    {
      v6 = *(a1 + 24);
      if (v6)
      {
        if (*(v6 + 8) == 100)
        {
          sub_100014080(a1, a2);
        }

        else if ((*(v6 + 776) & 2) != 0)
        {
          sub_10000DCB4();
        }

        else
        {
          sub_10000E3A8(v6);
        }
      }
    }

    if (*(*(a1 + 16) + 8) == 104)
    {
      sub_100001108(2u, "%s: removing all members of %s, network %s", "mis_network_stop", v5, (a1 + 40));
      v7 = *(a1 + 32);
      if (v7)
      {
        do
        {
          v8 = *(v7 + 280);
          sub_10001A46C(*(a1 + 16), v7);
          v10 = *(a1 + 32);
          if (v10 == v7)
          {
            v12 = (a1 + 32);
          }

          else
          {
            do
            {
              v11 = v10;
              v10 = *(v10 + 280);
            }

            while (v10 != v7);
            v12 = (v11 + 280);
          }

          *v12 = *(v10 + 280);
          sub_1000030A4(v7, v9);
          v7 = v8;
        }

        while (v8);
      }
    }

    v13 = *(a1 + 372);
    v14 = *(a1 + 16);
    if (v13 != 2 && *(v14 + 8) != 101)
    {
      if (v13 == 1)
      {
        if ((*(a1 + 376) & 2) != 0)
        {
          v15 = sub_10001BE98();
          if (v15)
          {
            sub_100001108(0, "%s: mis_pf_refresh_shared_mode_rules_v4, network %s, err %d", "mis_network_stop", (a1 + 40), v15);
          }
        }

        if ((*(a1 + 392) & 4) != 0)
        {
          v16 = sub_10001D2DC();
          if (v16)
          {
            sub_100001108(0, "%s: mis_pf_refresh_nat_rules_v6, network %s, err %d", "mis_network_stop", (a1 + 40), v16);
          }
        }

        if ((*(a1 + 392) & 2) != 0 && sub_10001AFB0())
        {
          sub_100001108(0, "%s: mis_pf_refresh_nat_rules_nat64", "mis_network_stop");
        }
      }

      sub_10001B368();
      sub_10001B90C(0);
      sub_100018F38(a1);
      while (1)
      {
        v17 = *(a1 + 472);
        if (!v17)
        {
          break;
        }

        *(a1 + 472) = *v17;
        free(v17);
      }

      v18 = sub_10001F200();
      if (v18)
      {
        sub_100001108(0, "%s: rtadvd_config_refresh, err %d , network %s", "mis_network_stop", v18, (a1 + 40));
      }

      v19 = sub_100020044();
      if (v19)
      {
        sub_100001108(0, "%s: dhcp6d_config_refresh, err %d , network %s", "mis_network_stop", v19, (a1 + 40));
      }

      sub_1000207C8(a1);
      v20 = sub_100004208(a1);
      if (v20)
      {
        sub_100001108(0, "%s: mis_network_remove_routes, err %d, network %s", "mis_network_stop", v20, (a1 + 40));
      }

      if (*(a1 + 480))
      {
        v21 = sub_10001BB78();
        sub_100001108(0, "%s: mis_pf_refresh_port_forwarding_rules, err %d, network %s", "mis_network_stop", v21, (a1 + 40));
        while (1)
        {
          v22 = *(a1 + 480);
          if (!v22)
          {
            break;
          }

          *(a1 + 480) = *v22;
          free(v22);
        }
      }

      v23 = sub_100010BE4(v5);
      if (v23)
      {
        sub_100001108(0, "%s: mis_ll_stop, err %d, network %s", "mis_network_stop", v23, (a1 + 40));
      }

      sub_100011914(v5);
      sub_100011A90(v5);
      v24 = sub_10000F4E4(v5);
      if (v24)
      {
        sub_100001108(0, "%s: remove_addrs, err %d, network %s", "mis_network_stop", v24, (a1 + 40));
      }

      v25 = sub_10001095C(v5);
      if (v25)
      {
        sub_100001108(0, "%s: mis_protodetach, err %d, network %s", "mis_network_stop", v25, (a1 + 40));
      }

      v26 = sub_100010D20(v5);
      if (v26)
      {
        sub_100001108(0, "%s: mis_protodetach6, err %d, network %s", "mis_network_stop", v26, (a1 + 40));
      }

      sub_10001028C(v5, 1, 0, 0);
      v14 = *(a1 + 16);
    }

    if (*(v14 + 8) == 104)
    {
      v27 = sub_100019BF4(a1);
      if (v27)
      {
        sub_100001108(0, "%s: mis_bridge_destroy, err %d, network %s", "mis_network_stop", v27, (a1 + 40));
      }
    }

    v4 = *(a1 + 296);
  }

  if (v4 != 4)
  {
    sub_100001108(0, "%s: network %s reset to idle", "mis_network_stop", (a1 + 40));
    return 0;
  }

  v28 = *(a1 + 24);
  if (v28)
  {
    sub_100015DC8((v28 + 20), (*(a1 + 16) + 20));
    v29 = *(a1 + 24);
    v30 = *(v29 + 784);
    if (v30 == a1)
    {
      v32 = (v29 + 784);
    }

    else
    {
      do
      {
        v31 = v30;
        v30 = *(v30 + 528);
      }

      while (v30 != a1);
      v32 = (v31 + 528);
    }

    *v32 = *(v30 + 528);
    sub_1000030DC(v29);
    *(a1 + 24) = 0;
    v33 = *(a1 + 516);
    v34 = v33 != 0;
    v35 = v33 - 1;
    if (v35 == 0 || !v34)
    {
      sub_1000209BC();
    }

    *(a1 + 516) = v35;
  }

  v36 = *(a1 + 16);
  if (v36)
  {
    sub_1000030A4(v36, a2);
    *(a1 + 16) = 0;
  }

  if ((*(a1 + 8) & 0x10) == 0)
  {
    v37 = *(a1 + 496);
    v39 = (v37 + 16);
    v38 = *(v37 + 16);
    if (v38 != a1)
    {
      do
      {
        v40 = v38;
        v38 = *(v38 + 488);
      }

      while (v38 != a1);
      v39 = (v40 + 488);
    }

    *v39 = *(v38 + 488);
    --*(v37 + 32);
    v41 = *(a1 + 516);
    v34 = v41 != 0;
    v42 = v41 - 1;
    if (v42 == 0 || !v34)
    {
      sub_100020A40();
    }

    *(a1 + 516) = v42;
  }

  sub_100001108(0, "%s: network %s has been stopped", "mis_network_stop", (a1 + 40));
  v43 = &qword_100034C38;
  for (i = qword_100034C38; i != a1; i = *i)
  {
    v43 = i;
  }

  *v43 = *i;
  if (!byte_100034BA0)
  {
    sub_100020A14();
  }

  --byte_100034BA0;
  if (*(a1 + 296) == 2 && *(a1 + 504))
  {
    v45 = *(a1 + 32);
    if (v45)
    {
      info = 0;
      if (*(v45 + 4) < 2u)
      {
        goto LABEL_93;
      }

      v46 = mach_continuous_time();
      v47 = *(a1 + 504);
      v48 = v46 - v47;
      if (v46 < v47)
      {
        sub_1000209E8();
      }

      v49 = mach_timebase_info(&info);
      if (!v49)
      {
        v55 = *(a1 + 32);
        if (v55)
        {
          LODWORD(v50) = info.numer;
          LODWORD(v51) = info.denom;
          v56 = (v50 * 0.000000001 / v51 * v48);
          do
          {
            if (analytics_send_event_lazy())
            {
              v57 = "Event Posted";
            }

            else
            {
              v57 = "Event Post Failed";
            }

            sub_100001108(0, "%s: %s: iftype %d, duration %qu seconds", "mis_send_svc_usage_event", v57, *(v55 + 4), v56);
            v55 = *(v55 + 280);
          }

          while (v55);
        }

        goto LABEL_93;
      }

      v58 = v49;
      v52 = "%s: failed to retrieve time base error(%d)";
    }

    else
    {
      v52 = "%s: no internal interface";
    }

    sub_100001108(0, v52, "mis_send_svc_usage_event", v58);
  }

  else
  {
    sub_100001108(1u, "%s: service not started, ignoring event");
  }

LABEL_93:
  v53 = *(a1 + 516) - 1;
  *(a1 + 516) = v53;
  if (!v53)
  {
    free(a1);
  }

  return 0;
}

void sub_100006524(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (!v1 || (v2 = *(v1 + 16)) == 0)
  {
    sub_100001108(0, "%s: interface %s has no associated network or gateway if");
    return;
  }

  v3 = *(v2 + 8);
  if (v3 != 104)
  {
    if (v3 == 101)
    {
      sub_100001108(1u, "%s: done with pdp auth", "mis_network_delete_internal_interface");
      if (!*(v1 + 296))
      {
        return;
      }
    }

    else
    {
      sub_100001108(0, "%s: stopping network %s");
    }

    goto LABEL_15;
  }

  v6 = (v1 + 32);
  v5 = *(v1 + 32);
  if (!v5)
  {
LABEL_13:
    sub_100001108(0, "%s: interface %s does not belong to network %s");
    return;
  }

  v7 = *(v1 + 32);
  while (v7 != a1)
  {
    v7 = *(v7 + 280);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v5 != a1)
  {
    do
    {
      v8 = v5;
      v5 = *(v5 + 280);
    }

    while (v5 != a1);
    v6 = (v8 + 280);
  }

  *v6 = *(v5 + 280);
  sub_10001A46C(*(v1 + 16), a1);
  sub_1000030A4(v7, v9);
  if (!*(v1 + 32))
  {
    sub_100001108(1u, "%s: no internal interface left, stopping network %s");
LABEL_15:

    sub_100005E14(v1, v4);
  }
}

void sub_10000669C(uint64_t a1)
{
  if (*(a1 + 320) | *(a1 + 324))
  {
    sub_1000169F4(a1 + 320);
  }

  if (*(a1 + 360))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 364) == 0;
  }

  if (!v2)
  {
    sub_100016294(a1 + 360);
  }

  if (*(a1 + 352))
  {
    IOEthernetControllerSetLinkStatus();
    IOEthernetControllerSetDispatchQueue();
    CFRelease(*(a1 + 352));
    *(a1 + 352) = 0;
    if (dword_100034C20)
    {
      --dword_100034C20;
    }

    else
    {
      sub_100001108(0, "%s: [internal error] mis_vmnet_interfaces_cnt", "mis_remove_vmnet_interface");
    }

    v3 = *(a1 + 328);
    if (v3)
    {
      if (*(a1 + 344))
      {
        xpc_dictionary_set_uint64(v3, off_1000348C8[0], 0x7D3uLL);
        sub_100001CD4(*(a1 + 344), *(a1 + 328));
        xpc_release(*(a1 + 328));
        *(a1 + 328) = 0;
        *(a1 + 344) = 0;
      }
    }
  }
}

BOOL sub_1000067A8(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = HIBYTE(v1) == 10 || v1 >> 20 == 2753;
  v3 = HIWORD(v1);
  return v2 || v3 == 49320;
}

uint64_t sub_1000067D4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 468))
  {
    *(a1 + 468) = 1500;
  }

  v3 = *(a1 + 372);
  if (v3 > 1)
  {
    return 0;
  }

  v4 = *(a1 + 380);
  if (!v4)
  {
    if (!*(a1 + 384))
    {
      if (*(a2 + 460))
      {
        v5 = 18;
      }

      else
      {
        v5 = 128;
      }

      if (*(a2 + 460))
      {
        v6 = 2;
      }

      else
      {
        v6 = 64;
      }

      if (*(a2 + 460))
      {
        v7 = 34;
      }

      else
      {
        v7 = 192;
      }

      if (v3 == 1)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      if (v3 == 1)
      {
        v9 = v6;
      }

      else
      {
        v9 = v5;
      }

      if (v9 < v8)
      {
        while (1)
        {
          *__str.count = 0;
          *__str.hash = 0;
          *v19 = 0;
          snprintf(&__str, 0x10uLL, "%s%u.1", "192.168.", v9);
          if (inet_aton(&__str, v19) != 1)
          {
            break;
          }

          v10 = qword_100034C38;
          v4 = *v19;
          if (!qword_100034C38)
          {
LABEL_33:
            *(a1 + 380) = *v19;
            *(a1 + 384) = 0xFFFFFF;
            goto LABEL_34;
          }

          while (1)
          {
            if (*(v10 + 372) != 2)
            {
              v11 = bswap32(*(v10 + 384));
              if (v11 >= 0xFFFFFF00)
              {
                v11 = -256;
              }

              if ((bswap32(*(v10 + 380) ^ *v19) & v11) == 0)
              {
                break;
              }
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_33;
            }
          }

          ++v9;
          result = 0xFFFFFFFFLL;
          if (v9 == v8)
          {
            return result;
          }
        }

        sub_100001108(0, "%s: inet_aton trial_addr_str %s", "mis_network_get_default_inet_addr", &__str);
      }

      return 0xFFFFFFFFLL;
    }

    v4 = 0;
  }

LABEL_34:
  v13 = *(a1 + 396) == *in6addr_any.__u6_addr8 && *(a1 + 404) == *&in6addr_any.__u6_addr32[2];
  if (!v13 || *(a1 + 412))
  {
    goto LABEL_48;
  }

  v17 = *(a1 + 384);
  data = v4;
  memset(&__str, 0, sizeof(__str));
  v16.tv_sec = 0;
  v16.tv_nsec = 0;
  if ((byte_100034C50 & 1) == 0)
  {
    if (gethostuuid(byte_100034C40, &v16))
    {
      v14 = __error();
      v15 = strerror(*v14);
      sub_100001108(0, "gethostuuid failed %s", v15);
    }

    else
    {
      byte_100034C50 = 1;
    }
  }

  CC_SHA256_Init(&__str);
  CC_SHA256_Update(&__str, &data, 4u);
  CC_SHA256_Update(&__str, &v17, 4u);
  if (byte_100034C50 == 1)
  {
    CC_SHA256_Update(&__str, byte_100034C40, 0x10u);
  }

  CC_SHA256_Final(v19, &__str);
  *(a1 + 396) = -3;
  *(a1 + 397) = *v19;
  *(a1 + 400) = *&v19[3];
  *(a1 + 404) = 0;
  *(a1 + 412) = 64;
  if (inet_ntop(30, (a1 + 396), &__str, 0x2Eu))
  {
    sub_100001108(1u, "%s: generated ULA prefix %s/%d, network %s", "mis_network_fill_default_options", &__str, *(a1 + 412), (a1 + 40));
LABEL_48:
    if (*(a1 + 372) == 1 && !*(a1 + 452))
    {
      snprintf((a1 + 452), 0x10uLL, "%s", off_100034980[0]);
      sub_100001108(2u, "%s: set ext if to any external", "mis_network_fill_default_options");
    }

    return 0;
  }

  sub_100001108(0, "%s: [internal error] invalid ULA prefix, network %s", "mis_network_fill_default_options", (a1 + 40));
  return 19;
}

uint64_t sub_100006B5C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 9);
  if (__PAIR64__(v3, *(a1 + 8)) == __PAIR64__(*(a2 + 9), *(a2 + 8)) && *(a1 + 12) == *(a2 + 12))
  {
    if (a3)
    {
      return 1;
    }

    if (*(a1 + 10) == *(a2 + 10))
    {
      if (v3 == 30)
      {
        if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
        {
          return 1;
        }
      }

      else if (v3 != 2 || *(a1 + 16) == *(a2 + 16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100006BE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 9);
  if (v4 == 30)
  {
    if ((*(a1 + 392) & 4) == 0)
    {
      sub_100001108(0, "%s: network %s is not nat66, but has v6 port forwarding rules");
      return 22;
    }

    v7 = (a1 + 396);
    if (!sub_100003BD8(a1 + 396, *(a1 + 412), a2 + 16, 128))
    {
      sub_100001108(0, "%s: int addr is not part of v6 network of %s");
      return 22;
    }

    if (*v7 == *(a2 + 16) && *(a1 + 404) == *(a2 + 24))
    {
      sub_100001108(0, "%s: int addr cannot be the same as prefix, network %s");
      return 22;
    }
  }

  else
  {
    if (v4 != 2)
    {
      return 22;
    }

    if ((*(a1 + 376) & 2) == 0)
    {
      sub_100001108(0, "%s: network %s is not nat44, but has v4 port forwarding rules");
      return 22;
    }

    v5 = *(a2 + 16);
    v6 = *(a1 + 380);
    if (((v6 ^ v5) & *(a1 + 384)) != 0)
    {
      sub_100001108(0, "%s: wrong subnet, network %s");
      return 22;
    }

    if (v5 == v6)
    {
      sub_100001108(0, "%s: int addr can't be gateway addr, network %s");
      return 22;
    }
  }

  return 0;
}

uint64_t sub_100006CF8(int a1, char a2, uint64_t a3, int a4, int a5, char *__s, __int16 a7, int a8, char a9)
{
  v26 = 0u;
  memset(v27, 0, 220);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  BYTE3(v19) = a2;
  BYTE2(v19) = 5;
  v13 = dword_100034800++;
  DWORD1(v20) = v13;
  if ((a9 & 1) == 0 && a3 == 0)
  {
    v15 = 2051;
  }

  else
  {
    v15 = 2305;
  }

  *(&v19 + 1) = v15 | 0x3700000000;
  if ((a9 & 2) != 0)
  {
    WORD2(v19) = a7;
    v15 |= 0x1000000u;
    DWORD2(v19) = v15;
  }

  WORD6(v24) = 528;
  LODWORD(v25) = a3;
  if ((v15 & 2) != 0)
  {
    v16 = &v26 + 12;
    WORD6(v25) = 528;
    LODWORD(v26) = a4;
  }

  else
  {
    v16 = v27;
    WORD6(v25) = 4628;
    BYTE1(v26) = strlen(__s);
    __memmove_chk();
  }

  *v16 = 528;
  *(v16 + 1) = a5;
  *(v16 + 8) = 4628;
  v17 = strlen(__s);
  v16[21] = v17;
  memmove(v16 + 24, __s, v17);
  *(v16 + 18) = 528;
  *(v16 + 10) = a8;
  LOWORD(v19) = v16 - (&v24 + 12) + 144;
  if (write(a1, &v19, (v16 - (&v24 + 12) + 144)) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

xpc_object_t sub_100006EC4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "iftype", *(*(a1 + 32) + 4));
  xpc_dictionary_set_uint64(v2, "duration", *(a1 + 40));
  return v2;
}

uint64_t sub_100006F24(void *a1, uint64_t a2)
{
  if (!a1 || xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    sub_100007A14("metadata is not dictionary object", a2);
    return 0;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam[0]);
  if (!value || (v7 = value, xpc_get_type(value) != &_xpc_type_dictionary))
  {
    sub_100007A14("metadata does not contain low latency flow parameter dictionary.", v6);
    return 0;
  }

  v70 = 0uLL;
  v69 = 0uLL;
  v8 = xpc_dictionary_get_value(v7, netrbClientIfnetTrafficDescriptorIpVersion[0]);
  if (v8 && (v9 = v8, xpc_get_type(v8) == &_xpc_type_uint64))
  {
    v33 = xpc_uint64_get_value(v9);
    v35 = v33;
    if (v33 != 4 && v33 != 96)
    {
      sub_100007A14("IP version (%hhu) is not supported or is invalid", v34);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v33;
    }

    v36 = xpc_dictionary_get_value(v7, netrbClientIfnetTrafficDescriptorLocalIp[0]);
    if (v36 && (v44 = v36, xpc_get_type(v36) == &_xpc_type_string))
    {
      string_ptr = xpc_string_get_string_ptr(v44);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      sub_100007A58("local IP is not present or has incorrect type", v37, v38, v39, v40, v41, v42, v43, v68);
      string_ptr = 0;
    }

    v46 = xpc_dictionary_get_value(v7, netrbClientIfnetTrafficDescriptorRemoteIp[0]);
    if (v46 && (v54 = v46, xpc_get_type(v46) == &_xpc_type_string))
    {
      v55 = xpc_string_get_string_ptr(v54);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      sub_100007A58("remote IP is not present or has incorrect type", v47, v48, v49, v50, v51, v52, v53, v68);
      v55 = 0;
    }

    if (v35 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v70 + 12) != 1 || v55 && inet_pton(2, v55, &v69 + 12) != 1)
      {
        sub_100007A14("local or remote IPv4 address is malformed.", v56, v68);
        return 0;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v70);
        *(a2 + 40) = HIDWORD(v69);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v70) != 1 || v55 && inet_pton(30, v55, &v69) != 1)
      {
        sub_100007A14("local or remote IPv6 address is malformed.", v65, v68);
        return 0;
      }

      if (a2)
      {
        v66 = v69;
        *(a2 + 12) = v70;
        *(a2 + 28) = v66;
      }
    }
  }

  else
  {
    sub_100007A14("IP version is not present");
  }

  v10 = xpc_dictionary_get_value(v7, netrbClientIfnetTrafficDescriptorIpProtocol[0]);
  if (v10 && (v18 = v10, xpc_get_type(v10) == &_xpc_type_uint64))
  {
    v57 = xpc_uint64_get_value(v18);
    if (v57 != 17 && v57 != 6)
    {
      sub_100007A14("IP protocol is not supported or is invalid.", v58, v68);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v57;
    }
  }

  else
  {
    sub_100007A58("IP protocol is not present or has incorrect type", v11, v12, v13, v14, v15, v16, v17, v68);
  }

  v19 = xpc_dictionary_get_value(v7, netrbClientIfnetTrafficDescriptorLocalPort[0]);
  if (v19)
  {
    v27 = v19;
    if (xpc_get_type(v19) != &_xpc_type_uint64)
    {
LABEL_21:
      sub_100007A14("Local port specified does not have UINT64 type.", v28, v68);
      return 0;
    }

    v29 = xpc_uint64_get_value(v27);
    if (v29 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      sub_100007A14("Illegal local port %llu", v30);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v29) >> 16;
    }
  }

  else
  {
    sub_100007A58("No local port specified.", v20, v21, v22, v23, v24, v25, v26, v68);
  }

  v31 = xpc_dictionary_get_value(v7, netrbClientIfnetTrafficDescriptorRemotePort[0]);
  if (v31)
  {
    v32 = v31;
    if (xpc_get_type(v31) != &_xpc_type_uint64)
    {
      goto LABEL_21;
    }

    v63 = xpc_uint64_get_value(v32);
    if (v63 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      sub_100007A14("Illegal remote port %llu", v64);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v63) >> 16;
    }
  }

  else
  {
    sub_100007A14("No local port specified.");
  }

  v60 = xpc_dictionary_get_value(v7, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout[0]);
  if (v60)
  {
    v61 = v60;
    if (xpc_get_type(v60) != &_xpc_type_uint64)
    {
      sub_100007A14("Connection idle timeout does not have UINT64 type.", v62, v68);
      return 0;
    }

    if (xpc_uint64_get_value(v61) >= 0x69781)
    {
      sub_100007A14("Connection idle timeout exceeds max limit of %u seconds", v67);
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000073A4(_BYTE *a1)
{
  if (!a1)
  {
    sub_100007A14("client handler is NULL");
    return 22;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!qword_100034C58)
  {
    sub_100007A14("client list is empty");
    return 22;
  }

  Count = CFArrayGetCount(qword_100034C58);
  if (!Count)
  {
    sub_100007A14("client is not added to the list");
    return 22;
  }

  v3 = Count;
  if (Count < 1)
  {
LABEL_13:
    sub_100007A14("unknown client");
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(qword_100034C58, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, off_100034A28[0], a1 + 2, 0x78uLL);
  v5 = a1[17];
  if (v5)
  {
    v6 = 0;
    do
    {
      v5 = *v5;
      v6 += 24;
    }

    while (v5);
    v7 = malloc_type_malloc(v6, 0xA056F487uLL);
    bzero(v7, v6);
    v8 = a1[17];
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *v8;
        v9[2] = *(v8 + 2);
        *v9 = v10;
        v9 += 3;
        v8 = *v8;
      }

      while (v8);
    }

    xpc_dictionary_set_data(*a2, off_100034A30[0], v7, v6);
    free(v7);
  }

  v11 = a1[18];
  if (v11)
  {
    v12 = 0;
    do
    {
      v11 = *v11;
      v12 += 32;
    }

    while (v11);
    v13 = malloc_type_malloc(v12, 0x95A4A4E9uLL);
    bzero(v13, v12);
    v14 = a1[18];
    if (v14)
    {
      v15 = v13;
      do
      {
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        v15 += 2;
        v14 = *v14;
      }

      while (v14);
    }

    xpc_dictionary_set_data(*a2, off_100034A38, v13, v12);
    free(v13);
  }

  return 0;
}

unint64_t sub_1000075BC(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t sub_100007620(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, off_100034A28[0], &length);
  if (length == 120)
  {
    v5 = *data;
    v6 = data[1];
    v7 = data[3];
    *(a2 + 32) = data[2];
    *(a2 + 48) = v7;
    *a2 = v5;
    *(a2 + 16) = v6;
    v8 = data[4];
    v9 = data[5];
    v10 = data[6];
    *(a2 + 112) = *(data + 14);
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 64) = v8;
    *(a2 + 120) = 0;
    v11 = (a2 + 120);
    *(a2 + 128) = 0;
    v12 = xpc_dictionary_get_data(a1, off_100034A30[0], &v23);
    if (v12 && v23 >= 0x18)
    {
      v13 = v23 / 0x18;
      v14 = v12 + 16;
      do
      {
        v15 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v16 = *(v14 - 2);
        *(v15 + 2) = *(v14 - 2);
        *(v15 + 6) = v16;
        v17 = *v14;
        v14 += 6;
        *(v15 + 4) = v17;
        *v15 = *v11;
        *v11 = v15;
        --v13;
      }

      while (v13);
    }

    result = xpc_dictionary_get_data(a1, off_100034A38, &v22);
    if (result)
    {
      if (v22 >= 0x20)
      {
        v19 = v22 >> 5;
        v20 = result + 8;
        do
        {
          v21 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *(v21 + 4) = *v20;
          *(v21 + 10) = *(v20 + 2);
          *(v21 + 1) = *(v20 + 8);
          *v21 = *(a2 + 128);
          *(a2 + 128) = v21;
          v20 += 32;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  else
  {
    sub_100007A14("%s: invalid serialized network", "_NETRBDeserializeNetworkConfig");
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  if (qword_100034C68 != -1)
  {
    sub_100020A6C();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = sub_100007620(a1, Instance + 16);
    if (v6)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    sub_100007A14("%s: _CFRuntimeCreateInstance", "_NETRBDeserializeNetwork");
    v6 = 6003;
  }

  *a2 = v5;
  return v6;
}

void *sub_1000078DC(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (sub_1000073A4(qword_100034C60))
    {
      sub_100007A14("%s: invalid network global client", "__NETRBNetworkRelease");
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, off_100034860[0], 0x401uLL);
      xpc_dictionary_set_string(v2, off_100034868[0], (qword_100034C60 + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, off_100034A08[0], value);
      sub_100007B3C(0, v2, &stru_100030C90);
      if (v2)
      {
        xpc_release(v2);
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  while (1)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      break;
    }

    *(a1 + 136) = *v4;
    free(v4);
  }

  while (1)
  {
    result = *(a1 + 144);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = *result;
    free(result);
  }

  return result;
}

BOOL sub_100007AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_100034C88;
  if (qword_100034C88)
  {
    sub_100007A58("cleaning up connection %p to daemon", a2, a3, a4, a5, a6, a7, a8, qword_100034C88);
    xpc_connection_cancel(qword_100034C88);
    xpc_release(qword_100034C88);
    qword_100034C88 = 0;
  }

  return v8 != 0;
}

uint64_t sub_100007B3C(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, off_100034860[0]) == 1000)
  {
    if (!qword_100034C80)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, off_1000348C0[0], qword_100034C80);
  }

  if (a1)
  {
    v13 = qword_100034C88 != 0;
    if (qword_100034C88)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100007D3C;
      handler[3] = &unk_100030CB8;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(qword_100034C88, xdict, a1, handler);
    }

    else
    {
      sub_100007A9C("connection to daemon does not exist", v6, v7, v8, v9, v10, v11, v12, v52);
    }

    return v13;
  }

  if (!qword_100034C88)
  {
    sub_100007A9C("connection to daemon does not exist", v6, v7, v8, v9, v10, v11, v12, v52);
    return 0;
  }

  v14 = xpc_connection_send_message_with_reply_sync(qword_100034C88, xdict);
  v22 = v14;
  if (v14)
  {
    type = xpc_get_type(v14);
    if (type != &_xpc_type_error)
    {
      v24 = type;
      if (type == &_xpc_type_dictionary)
      {
        if (xpc_dictionary_get_uint64(v22, off_1000348C8[0]) == 2002)
        {
          v44 = sub_100007A14("error: aborting XPC connection to daemon");
          sub_100007AE0(v44, v45, v46, v47, v48, v49, v50, v51);
        }

        v24 = &_xpc_type_dictionary;
      }

      else
      {
        v25 = sub_100007A14("unknown response");
        sub_100007AE0(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      goto LABEL_18;
    }

    string = xpc_dictionary_get_string(v22, _xpc_error_key_description);
    v34 = sub_100007A14("xpc_connection_send_message_with_reply_sync() received %s", string);
    sub_100007AE0(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    sub_100007AE0(0, v15, v16, v17, v18, v19, v20, v21);
    sub_100007A14("NULL response from xpc_connection_send_message_with_reply_sync");
  }

  v24 = &_xpc_type_error;
LABEL_18:
  if (v24 == &_xpc_type_dictionary)
  {
    v42 = v22;
  }

  else
  {
    v42 = 0;
  }

  (*(a3 + 16))(a3, v42);
  if (v22)
  {
    xpc_release(v22);
  }

  return 1;
}

uint64_t sub_100007D3C(uint64_t a1, xpc_object_t object, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!object)
  {
    sub_100007AE0(a1, 0, a3, a4, a5, a6, a7, a8);
    sub_100007A14("NULL response from xpc_connection_send_message_with_reply()");
    goto LABEL_10;
  }

  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_uint64(object, off_1000348C8[0]) != 2002)
    {
      goto LABEL_10;
    }

    v11 = sub_100007A14("error: aborting XPC connection to daemon");
  }

  else if (type == &_xpc_type_error)
  {
    xpc_dictionary_get_string(object, _xpc_error_key_description);
    v11 = sub_100007A14("error: %s");
  }

  else
  {
    v11 = sub_100007A14("unknown response");
  }

  sub_100007AE0(v11, v12, v13, v14, v15, v16, v17, v18);
LABEL_10:
  v19 = *(*(a1 + 32) + 16);

  return v19();
}

void start(int a1, char **a2)
{
  __endptr = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = basename(*a2);
  snprintf(&__str, 0x28uLL, "com.apple.misd.mainQ.%p", &qword_100034BD8);
  HIBYTE(__str.st_atimespec.tv_sec) = 0;
  qword_100034BD8 = dispatch_queue_create(&__str, 0);
  if (!qword_100034BD8)
  {
    sub_100001108(0, "failed to create main queue");
    goto LABEL_35;
  }

  memset(&__str, 0, sizeof(__str));
  if (!stat("/AppleInternal", &__str) && (__str.st_mode & 0xF000) == 0x4000 && (__str.st_mode & 0x140) != 0)
  {
    v5 = 1;
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    v5 = !stat("/System/Library/PreferenceBundles/CarrierSettings.bundle", &__str) && (__str.st_mode & 0xF000) == 0x4000 && (__str.st_mode & 0x140) != 0;
  }

  dword_100034BC4 = v5;
  while (1)
  {
    v6 = getopt(a1, a2, "Be:p:P:t:v");
    v7 = v6;
    if (v6 > 111)
    {
      switch(v6)
      {
        case 'p':
          goto LABEL_20;
        case 't':
          v9 = strtol(optarg, &__endptr, 0);
          if (!*optarg || *__endptr || v9 < 0)
          {
            fprintf(__stderrp, "Bad idle timeout: %s\n");
            goto LABEL_35;
          }

          break;
        case 'v':
          dword_100034BD0 = 1;
          break;
        default:
          goto LABEL_48;
      }
    }

    else if (v6 <= 79)
    {
      if (v6 != 66)
      {
        if (v6 == -1)
        {
          byte_100034BB0 = 1;
          if (dword_100034BD0)
          {
            sub_100008C30();
          }

          if (sub_100008790())
          {
            if (dword_100034BC4)
            {
              sub_100001108(0, "allowing special port forwarding for test fixtures");
              sub_10001A6F8();
            }

            *&__str.st_dev = 1;
            __str.st_ino = 0x200000000;
            sigaction(1, &__str, 0);
            sigaction(13, &__str, 0);
            sigaction(14, &__str, 0);
            sigaction(24, &__str, 0);
            sigaction(25, &__str, 0);
            sigaction(26, &__str, 0);
            sigaction(27, &__str, 0);
            sigaction(18, &__str, 0);
            sigaction(21, &__str, 0);
            sigaction(22, &__str, 0);
            sigaction(30, &__str, 0);
            sigaction(31, &__str, 0);
            sigaction(2, &__str, 0);
            sigaction(15, &__str, 0);
            sigaction(20, &__str, 0);
            v10 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, qword_100034BD8);
            qword_100034C98 = v10;
            if (v10)
            {
              dispatch_source_set_event_handler(v10, &stru_100030D20);
              dispatch_resume(qword_100034C98);
            }

            v11 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_100034BD8);
            qword_100034CA0 = v11;
            if (v11)
            {
              dispatch_source_set_event_handler(v11, &stru_100030D60);
              dispatch_resume(qword_100034CA0);
            }

            snprintf(&__str, 0x22uLL, "com.apple.misd.%p", &qword_100034BE0);
            BYTE1(__str.st_atimespec.tv_sec) = 0;
            qword_100034BE0 = dispatch_queue_create(&__str, 0);
            if (qword_100034BE0)
            {
              *(v14 + 6) = 0;
              block[0] = _NSConcreteStackBlock;
              block[1] = 0x40000000;
              block[2] = sub_1000084D4;
              block[3] = &unk_100030CE0;
              block[4] = &v13;
              dispatch_sync(qword_100034BD8, block);
              if (!*(v14 + 6))
              {
                sub_100008644();
                dispatch_main();
              }
            }

            else
            {
              sub_100001108(0, "failed to create process termination queue");
              *(v14 + 6) = 12;
            }
          }
        }

        else
        {
LABEL_48:
          sub_10000843C(v4);
        }

LABEL_35:
        sub_100008380(1);
      }

      dword_100034A40 = 0;
    }

    else if (v6 == 80)
    {
LABEL_20:
      if (dword_100034BC4)
      {
        v8 = strtol(optarg, &__endptr, 0);
        if (!*optarg || *__endptr || (v8 - 0x10000) <= 0xFFFFFFFFFFFF0000)
        {
          fprintf(__stderrp, "Bad port : %s\n");
          goto LABEL_35;
        }

        ++dword_100034BC8;
        if (v7 == 112)
        {
          word_100034BCC = v8;
        }

        else
        {
          word_100034BCE = v8;
        }
      }
    }

    else
    {
      if (v6 != 101)
      {
        goto LABEL_48;
      }

      __strlcpy_chk();
    }
  }
}

void sub_100008380(int a1)
{
  if (qword_100034C90)
  {
    xpc_connection_cancel(qword_100034C90);
    xpc_release(qword_100034C90);
    qword_100034C90 = 0;
  }

  if (qword_100034BD8)
  {
    dispatch_release(qword_100034BD8);
    qword_100034BD8 = 0;
  }

  if (qword_100034BE0)
  {
    dispatch_release(qword_100034BE0);
    qword_100034BE0 = 0;
  }

  if (qword_100034C98)
  {
    dispatch_source_cancel(qword_100034C98);
    dispatch_release(qword_100034C98);
    qword_100034C98 = 0;
  }

  if (qword_100034CA0)
  {
    dispatch_source_cancel(qword_100034CA0);
    dispatch_release(qword_100034CA0);
    qword_100034CA0 = 0;
  }

  sub_1000157AC();
  sub_1000086BC();
  sub_100001108(1u, "exit: %d", a1);
  sub_100008BD4();
  exit(a1);
}

uint64_t sub_10000843C(const char *a1)
{
  printf("Usage: %s ", a1);
  puts("[-Bcv6] [-e EXTIF] [-p LO] [-P HI] [-t TIMEOUT]");
  puts("\nptions:");
  puts("\t-B\tDisable bridge");
  puts("\t-v\tEnable verbose logging");
  puts("\t-e EXTIF\tExternal interface name");
  puts("\t-p LO\tPort forwarding range, LO");
  puts("\t-P HI\tPort forwarding range, HI");

  return puts("\t-t TIMEOUT\tIdle timeout");
}

void sub_1000084D4(uint64_t a1)
{
  sub_10001DA28();
  v2 = sub_100013B24();
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (v2)
  {
    strerror(*(*(*(a1 + 32) + 8) + 24));
    sub_100001108(0, "pdp: %s");
  }

  else
  {
    v3 = sub_100014804();
    *(*(*(a1 + 32) + 8) + 24) = v3;
    if (v3)
    {
      strerror(*(*(*(a1 + 32) + 8) + 24));
      sub_100001108(0, "settings: %s");
    }

    else
    {
      v4 = sub_100017DCC();
      if (v4)
      {
        v5 = v4;
        sub_100001108(0, "%s: dhcp_load");
      }

      else
      {
        sub_10002042C();
        v6 = sub_10001F12C();
        if (v6)
        {
          v5 = v6;
          sub_100001108(0, "%s: rtadvd_load");
        }

        else
        {
          v5 = sub_10001FFEC();
          if (v5)
          {
            sub_100001108(0, "%s: dhcp6d_load");
          }

          else
          {
            byte_100034CA8 = 1;
          }
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = v5;
      v7 = *(*(*(a1 + 32) + 8) + 24);
      if (v7)
      {
        v8 = strerror(v7);
        sub_100001108(0, "mis_global_load: %s", v8);
      }

      sub_1000192C8();
    }
  }
}

void sub_100008644()
{
  mach_service = xpc_connection_create_mach_service(off_100034858[0], qword_100034BD8, 1uLL);
  qword_100034C90 = mach_service;
  if (!mach_service)
  {
    sub_100001108(0, "could not start xpc listener");
    sub_100008380(12);
  }

  xpc_connection_set_event_handler(mach_service, &stru_100030DA0);
  v1 = qword_100034C90;

  xpc_connection_resume(v1);
}

void sub_1000086BC()
{
  if (byte_100034CA8)
  {
    sub_1000182D0();
    sub_10002044C();
    sub_10001F1BC();
    nullsub_2();
    byte_100034CA8 = 0;
  }

  else
  {
    sub_100001108(1u, "%s: already unloaded", "mis_global_unload");
  }
}

const char *sub_100008768(uint64_t a1)
{
  if ((a1 - 1000) > 0x19)
  {
    return "unknown";
  }

  else
  {
    return (&off_100030DE0)[a1 - 1000];
  }
}

uint64_t sub_100008790()
{
  if (qword_100034CB0)
  {
    return 1;
  }

  v1 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.MobileInternetSharing", @"com.apple.MIS.logging.plist");
  qword_100034CB0 = v1;
  if (v1)
  {
    if (SCPreferencesSetCallback(v1, sub_100008880, 0))
    {
      if (SCPreferencesSetDispatchQueue(qword_100034CB0, qword_100034BD8))
      {
        sub_100008880(qword_100034CB0, 3);
        return 1;
      }

      v2 = "SCPreferencesSetDispatchQueue() failed for logging: %s";
    }

    else
    {
      v2 = "SCPreferencesSetCallback() failed for logging: %s";
    }
  }

  else
  {
    v2 = "SCPreferencesCreate() failed for logging: %s";
  }

  v3 = SCError();
  v4 = SCErrorString(v3);
  sub_100001108(0, v2, v4);
  result = qword_100034CB0;
  if (qword_100034CB0)
  {
    CFRelease(qword_100034CB0);
    result = 0;
    qword_100034CB0 = 0;
  }

  return result;
}

void sub_100008880(const __SCPreferences *a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    sub_100001108(1u, "logging preference changed");
    Value = SCPreferencesGetValue(a1, @"MISDLogging");
    TypeID = CFBooleanGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        LODWORD(Value) = CFBooleanGetValue(Value);
      }

      else
      {
        LODWORD(Value) = 0;
      }
    }

    if (byte_100034BE8 != Value)
    {
      byte_100034BE8 = Value;
      if (!dword_100034BD0)
      {
        sub_100001170();
        v6 = "enabled";
        if (!Value)
        {
          v6 = "disabled";
        }

        sub_100001108(1u, "verbose mode %s", v6);
      }
    }

    v7 = SCPreferencesGetValue(a1, @"EnablePFLog");
    v8 = CFBooleanGetTypeID();
    if (v7 && CFGetTypeID(v7) == v8)
    {
      v9 = CFBooleanGetValue(v7);
    }

    else
    {
      v9 = 0;
    }

    if (v9 != byte_100034BED)
    {
      byte_100034BED = v9;
      if (v9)
      {
        v10 = "true";
      }

      else
      {
        v10 = "false";
      }

      sub_100001108(1u, "EnablePFLog %s", v10);
    }

    v11 = SCPreferencesGetValue(a1, @"IPv6OnlyPreferred");
    v12 = CFBooleanGetTypeID();
    v13 = v11 && CFGetTypeID(v11) == v12 && CFBooleanGetValue(v11) == 0;
    if (v13 != byte_100034BEA)
    {
      byte_100034BEA = v13;
      if (v13)
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }

      sub_100001108(1u, "DisableIPv6OnlyPreferred %s", v14);
    }

    v15 = SCPreferencesGetValue(a1, @"IPv6UsePREF64");
    v16 = CFBooleanGetTypeID();
    v17 = v15 && CFGetTypeID(v15) == v16 && CFBooleanGetValue(v15) == 0;
    if (v17 != byte_100034BEB)
    {
      byte_100034BEB = v17;
      if (v17)
      {
        v18 = "true";
      }

      else
      {
        v18 = "false";
      }

      sub_100001108(1u, "DisableIPv6UsePREF64 %s", v18);
    }

    v19 = SCPreferencesGetValue(a1, @"IPv6Enable");
    v20 = CFBooleanGetTypeID();
    v21 = v19 && CFGetTypeID(v19) == v20 && CFBooleanGetValue(v19) == 0;
    if (v21 != byte_100034BE9)
    {
      byte_100034BE9 = v21;
      if (v21)
      {
        v22 = "true";
      }

      else
      {
        v22 = "false";
      }

      sub_100001108(1u, "DisableIPv6 %s", v22);
    }

    v23 = SCPreferencesGetValue(a1, @"PREF64OnDualSim");
    v24 = CFBooleanGetTypeID();
    if (v23 && CFGetTypeID(v23) == v24)
    {
      v25 = CFBooleanGetValue(v23);
    }

    else
    {
      v25 = 0;
    }

    if (v25 != byte_100034BEC)
    {
      byte_100034BEC = v25;
      if (v25)
      {
        v26 = "true";
      }

      else
      {
        v26 = "false";
      }

      sub_100001108(1u, "EnablePREF64OnDualSim %s", v26);
    }

    SCPreferencesSynchronize(a1);
  }
}

void sub_100008BD4()
{
  v0 = qword_100034CB0;
  if (qword_100034CB0)
  {
    if (dword_100034BD0)
    {
      v1 = 0;
    }

    else
    {
      v1 = byte_100034BE8 == 0;
    }

    if (!v1)
    {
      byte_100034BE8 = 0;
      sub_100001170();
      v0 = qword_100034CB0;
    }

    CFRelease(v0);
    qword_100034CB0 = 0;
  }
}

uint64_t sub_100008C60(uint64_t a1, void *a2)
{
  v2 = qword_100034CC8;
  if (!qword_100034CC8)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v2[13];
    if (!a1 || sub_100009330(v2, a1))
    {
      v5 += sub_1000093E8(v2, a2);
    }

    v2 = v6;
  }

  while (v6);
  if (v5 && !qword_100034CC8)
  {
    sub_100001108(1u, "no filters left after this remove, freeing the GCD handle");
    dispatch_source_cancel(qword_100034CD0);
    dispatch_release(qword_100034CD0);
    qword_100034CD0 = 0;
  }

  return v5;
}

uint64_t sub_100008D14(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4, int a5)
{
  v34 = a3;
  if (qword_100034CC0)
  {
    sub_100001108(1u, "modifying low latency rules. remove: %d", a5);
    if ((a5 & 1) == 0)
    {
      v12 = qword_100034CC8;
      if (qword_100034CC8)
      {
        v13 = a4 / 0x3C + 2;
        while (!sub_100009330(v12, a2))
        {
          v12 = *(v12 + 104);
          if (!v12)
          {
            goto LABEL_10;
          }
        }

        sub_100001108(1u, "found matching low latency filter");
        v18 = *(v12 + 48);
        if (v18)
        {
          while (*v18 != a3)
          {
            v18 = v18[1];
            if (!v18)
            {
              goto LABEL_18;
            }
          }

          sub_100001108(0, "found matching device id in list, this means filter already exists");
          goto LABEL_12;
        }

LABEL_18:
        v19 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
        v20 = *(v12 + 48);
        *v19 = a3;
        v19[1] = v20;
        *(v12 + 48) = v19;
        if (v13 > *(v12 + 98))
        {
          *(v12 + 98) = v13;
          *(v12 + 96) = v13;
          sub_100001108(2u, "extending descriptor %p max_time to %hu", v12, (a4 / 0x3C + 2));
        }
      }

      else
      {
LABEL_10:
        v35 = 786433;
        v37 = 0uLL;
        v36 = 0;
        sub_100001108(1u, "%s: installing filter to ifname %s", "mis_lowlatency_add_descriptor", (*(a1 + 24) + 20));
        if (os_nexus_controller_add_traffic_rule())
        {
          sub_100001108(0, "add low latency rule failed with error code %u.\n", v14, v15);
          goto LABEL_12;
        }

        sub_100001108(2u, "did not find matching filter in list, adding new filter");
        v21 = malloc_type_malloc(0x70uLL, 0x1020040761EC19CuLL);
        v23 = a2[1];
        v22 = a2[2];
        *v21 = *a2;
        v21[1] = v23;
        v21[2] = v22;
        *(v21 + 13) = qword_100034CC8;
        qword_100034CC8 = v21;
        ++qword_100034CD8;
        v24 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
        *(v21 + 6) = 0;
        *(v21 + 7) = 0;
        *v24 = a3;
        v25 = a4 / 0x3C + 2;
        *(v21 + 48) = v25;
        *(v21 + 49) = v25;
        sub_100001108(2u, "initializing descriptor %p max_time to %hu", v21, v25);
        *(v21 + 10) = 0;
        *(v21 + 11) = 0;
        v26 = *(v21 + 7);
        v24[1] = *(v21 + 6);
        *(v21 + 6) = v24;
        *(v21 + 7) = v26 + 1;
        v21[4] = v37;
      }

      if (!qword_100034CD0)
      {
        v27 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100034BD8);
        qword_100034CD0 = v27;
        if (!v27)
        {
          sub_100001108(0, "failed to create GCD handle for filter traffic query timer", v28, v29, v33);
          goto LABEL_12;
        }

        dispatch_source_set_event_handler(v27, &stru_100030ED0);
        v30 = qword_100034CD0;
        v31 = dispatch_walltime(0, 60000000000);
        dispatch_source_set_timer(v30, v31, 0xDF8475800uLL, 0);
        byte_100034CE0 = 1;
        sub_100001108(2u, "created GCD handle and set timer to %d seconds", 60);
      }

      if (byte_100034CE0 == 1)
      {
        dispatch_resume(qword_100034CD0);
        byte_100034CE0 = 0;
      }

      v11 = "add";
      goto LABEL_27;
    }

    sub_100001108(2u, "device id is %llu", a3);
    v10 = sub_100008C60(a2, &v34);
    sub_100001108(1u, "removed %lu filters", v10);
    if (v10)
    {
      v11 = "remove";
LABEL_27:
      v17 = 1;
      sub_100001108(1u, "%s filter operation succeeded", v11);
      return v17;
    }
  }

  else
  {
    sub_100001108(0, "failed to add low latency rule, nexus controller not present.", a3, a4);
  }

LABEL_12:
  v16 = "add";
  if (a5)
  {
    v16 = "remove";
  }

  sub_100001108(0, "%s filter operation failed", v16);
  return 0;
}

uint64_t sub_100009124(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9) == 96)
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    v6 = socket(30, 2, 0);
    if (v6 < 0)
    {
      sub_100001108(0, "%s: failed to create socket: %m", "mis_translate_addr_for_clat46");
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    if (__strlcpy_chk() >= 0x10)
    {
      sub_100001108(0, "%s: failed to copy external interface name: %m");
      goto LABEL_9;
    }

    if (ioctl(v7, 0xC02469C9uLL, &v10) < 0)
    {
      sub_100001108(1u, "%s: ext interface %s does not have clat46 prefix: %m", "mis_translate_addr_for_clat46", (a1 + 20));
    }

    else
    {
      v8 = sub_10000D6E4(a1, 0, 0);
      if (v8 != 2)
      {
        if (!v8)
        {
          v9 = *(a2 + 8);
          if ((v9 & 4) != 0)
          {
            *(a2 + 12) = v11;
          }

          if ((v9 & 8) == 0 || (__memcpy_chk(), nw_nat64_synthesize_v6()))
          {
            v3 = 0;
            *(a2 + 9) = 96;
            goto LABEL_21;
          }

          sub_100001108(0, "%s: failed to synthesize remote address with NAT64 prefix");
        }

LABEL_9:
        v3 = 0xFFFFFFFFLL;
LABEL_21:
        close(v7);
        return v3;
      }
    }

    v3 = 0;
    goto LABEL_21;
  }

  sub_100001108(2u, "%s: steering rule does not specify IP version", "mis_translate_addr_for_clat46");
  return 0;
}

BOOL sub_100009330(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 9);
  if (v2 != *(a2 + 9))
  {
    return 0;
  }

  if (v2 == 96)
  {
    if (*(a1 + 12) != *(a2 + 12) || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }

    if (*(a1 + 28) != *(a2 + 28) || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if (v2 != 4 || *(a1 + 24) != *(a2 + 24) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 44) == *(a2 + 44))
  {
    return *(a1 + 46) == *(a2 + 46);
  }

  return 0;
}

uint64_t sub_1000093E8(void *a1, void *a2)
{
  v4 = a1 + 6;
  result = a1[6];
  if (result)
  {
    while (1)
    {
      v6 = *(result + 8);
      if (!a2 || *result == *a2)
      {
        v7 = *v4;
        if (*v4 == result)
        {
          v9 = v4;
        }

        else
        {
          do
          {
            v8 = v7;
            v7 = *(v7 + 8);
          }

          while (v7 != result);
          v9 = (v8 + 8);
        }

        *v9 = *(v7 + 8);
        v10 = a1[7];
        if (!v10)
        {
          sub_100020B40();
        }

        a1[7] = v10 - 1;
        free(result);
        if (!a1[7])
        {
          break;
        }
      }

      result = v6;
      if (!v6)
      {
        return result;
      }
    }

    v11 = &qword_100034CC8;
    v12 = qword_100034CC8;
    if (qword_100034CC8 != a1)
    {
      do
      {
        v13 = v12;
        v12 = v12[13];
      }

      while (v12 != a1);
      v11 = v13 + 13;
    }

    *v11 = v12[13];
    if (!qword_100034CD8)
    {
      sub_100020B14();
    }

    --qword_100034CD8;
    v14 = os_nexus_controller_remove_traffic_rule();
    if (v14)
    {
      sub_100001108(0, "failed to remove steering rule with error %d", v14);
    }

    free(a1);
    return 1;
  }

  return result;
}

void sub_100009518(id a1)
{
  v1 = qword_100034CC8;
  if (qword_100034CC8)
  {
    v2 = 0;
    do
    {
      if ((PFStateQueryAppendTrafficDescriptor() & 1) == 0)
      {
        sub_100001108(0, "failed to append descriptor to query object, skipping query");
        return;
      }

      v1 = *(v1 + 104);
      --v2;
    }

    while (v1);
    if (!v2)
    {
      goto LABEL_7;
    }

    PFFindStatesByDescriptor();
  }

  else
  {
LABEL_7:
    sub_100001108(1u, "no filters are currently in effect, skipping query");
  }
}

void sub_1000095B4(id a1, BOOL a2, void *a3, void *a4)
{
  if (a2)
  {
    if (a3)
    {
      if (xpc_array_get_count(a3))
      {
        v5 = 0;
        do
        {
          v10 = 0;
          v9 = 0u;
          xpc_array_get_value(a3, v5);
          PFGetDescriptorStateDetails();
          v6 = qword_100034CC8;
          while (v6)
          {
            v7 = v6;
            v6 = *(v6 + 104);
            if (!uuid_compare((v7 + 64), &v9))
            {
              sub_100001108(1u, "found matching descriptor by uuid");
              if (v10 == 1 && *(v7 + 80) != 0)
              {
                sub_100001108(1u, "detected ongoing traffic during the timeout period, renewing timeout");
                sub_100001108(2u, "packet count in old %llu new %llu, packet count out old %llu new %llu", *(v7 + 80), 0, *(v7 + 88), 0);
                *(v7 + 80) = 0u;
                *(v7 + 96) = *(v7 + 98);
              }

              else
              {
                if (!*(v7 + 96))
                {
                  sub_100020B6C();
                }

                v8 = *(v7 + 96) - 1;
                *(v7 + 96) = v8;
                if (v8)
                {
                  sub_100001108(2u, "descriptor %p remaining time %hu");
                }

                else
                {
                  sub_1000093E8(v7, 0);
                  sub_100001108(1u, "%s descriptor from the list");
                }
              }

              break;
            }
          }

          ++v5;
        }

        while (v5 < xpc_array_get_count(a3));
      }
    }

    else
    {
      sub_100001108(0, "response is NULL", 0, a4);
    }
  }

  else
  {
    sub_100001108(0, "query of PF states returned error status", a3, a4);
  }

  if (!qword_100034CC8)
  {
    sub_100001108(1u, "no filters left after this query, freeing the GCD handle");
    dispatch_source_cancel(qword_100034CD0);
    dispatch_release(qword_100034CD0);
    qword_100034CD0 = 0;
  }

  if (a3)
  {
    xpc_release(a3);
  }
}

xpc_object_t sub_1000097F8(uint64_t a1, uint64_t a2, xpc_object_t object, uint64_t a4, int a5)
{
  if (!a1 || !a2 || !object || !a4)
  {
    sub_100020BC4();
  }

  result = xpc_retain(object);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 8) = a2;
  *(a1 + 16) = object;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 32) = a5;
  if (__CFADD__(dword_100034BF0++, 1))
  {
    sub_100020B98();
  }

  *a1 = qword_100034C28;
  qword_100034C28 = a1;
  return result;
}

void sub_100009894(uint64_t a1)
{
  if (!a1)
  {
    sub_100020C1C();
  }

  v2 = &qword_100034C28;
  v3 = &qword_100034C28;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = v3[3];
    if (v4 == a1)
    {
      for (i = qword_100034C28; i != v3; i = *i)
      {
        v2 = i;
      }

      *v2 = *i;
      if (!dword_100034BF0)
      {
        sub_100020BF0();
      }

      --dword_100034BF0;
      v7 = v3[1];
      v6 = v3[2];
      if (*(*(v4 + 16) + 8) == 101)
      {
        sub_100015B3C(4);
      }

      if (v6 && v7)
      {
        xpc_dictionary_set_uint64(v6, off_1000348C8[0], 0x7D3uLL);
        sub_100001CD4(v7, v6);
        xpc_release(v6);
      }

      sub_100001108(1u, "destroyed service request %s", (a1 + 40));

      free(v3);
      return;
    }
  }
}

BOOL sub_1000099B4(_xpc_connection_s *a1, xpc_object_t original)
{
  v74 = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply", "netrbStartService");
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (!v6)
  {
    v74 = 19;
    sub_100001108(0, "%s: mis_client_lookup");
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *(v6 + 32);
  if (v8 >= 2)
  {
    sub_100020C94();
  }

  if (v8 == 1)
  {
    v9 = *(v6 + 16);
    if (!v9)
    {
      sub_100020C48();
    }

    sub_100001108(2u, "%s: network %s already exists with client", "netrbStartService", (v9 + 40));
  }

  value = xpc_dictionary_get_value(original, off_100034930[0]);
  if (!value || (v11 = value, xpc_get_type(value) != &_xpc_type_dictionary))
  {
    v74 = 22;
    sub_100001108(0, "%s: missing or invalid netrbXPCInterfaceParam");
LABEL_15:
    v14 = 2000;
    goto LABEL_16;
  }

  v13 = xpc_dictionary_get_value(original, off_1000348D0[0]);
  if (!v13 || xpc_get_type(v13) != &_xpc_type_uint64 || (v15 = xpc_dictionary_get_value(original, off_1000348D8[0])) == 0 || xpc_get_type(v15) != &_xpc_type_uint64 || (v16 = xpc_dictionary_get_value(v11, off_100034940[0])) == 0 || (v17 = v16, xpc_get_type(v16) != &_xpc_type_uint64) || xpc_uint64_get_value(v17) != 1 && ((v21 = xpc_dictionary_get_value(v11, off_100034938[0])) == 0 || xpc_get_type(v21) != &_xpc_type_string))
  {
    v74 = 22;
    sub_100001108(0, "%s: missing required interface params");
    goto LABEL_15;
  }

  v18 = xpc_dictionary_get_value(v11, off_100034950[0]);
  if (!v18 || xpc_get_type(v18) == &_xpc_type_uint64)
  {
    v19 = xpc_dictionary_get_value(v11, off_100034988[0]);
    if (!v19 || xpc_get_type(v19) == &_xpc_type_uint64)
    {
      v20 = xpc_dictionary_get_value(v11, off_100034958[0]);
      if (!v20 || xpc_get_type(v20) == &_xpc_type_uint64)
      {
        v72 = v7;
        v22 = sub_100003178();
        uint64 = xpc_dictionary_get_uint64(original, off_1000348D0[0]);
        v24 = xpc_dictionary_get_uint64(v11, off_100034988[0]);
        v25 = xpc_dictionary_get_uint64(v11, off_100034940[0]);
        if (v25 == 1)
        {
          if (sub_100015B24(&v74))
          {
            v22[2] |= 0x90u;
            v74 = sub_100002A8C(v22);
            if (v74)
            {
              sub_100001108(0, "%s: mis_network_add, err %d");
LABEL_112:
              v33 = 0;
              goto LABEL_113;
            }

            v33 = sub_100002FB0();
            v34 = sub_1000031DC(v22, v33);
            v74 = v34;
            if (v34)
            {
              sub_100001108(0, "%s: mis_network_add_interface auth ext if, err %d", "netrbStartService", v34);
LABEL_113:
              v40 = 0;
              goto LABEL_114;
            }

            sub_100003000();
            *(v54 + 4) = 0x6500000001;
            *(v54 + 288) = v22;
            *(v22 + 2) = v54;
            *(v72 + 40) = v54;
            v40 = v54;
            sub_100003094(v54);
            v55 = sub_10000538C(v22);
            v74 = v55;
            if (!v55)
            {
LABEL_114:
              sub_1000031C4(v22);
LABEL_115:
              if (v40)
              {
                sub_1000030A4(v40, v30);
              }

              if (v33)
              {
                sub_1000030DC(v33);
              }

              goto LABEL_30;
            }

            if (v55 == 36)
            {
LABEL_105:
              v56 = malloc_type_malloc(0x28uLL, 0x10A0040D1175C0DuLL);
              sub_1000097F8(v56, a1, v5, v22, -1);
              goto LABEL_114;
            }

            v58 = "%s: mis_network_start (auth)";
LABEL_120:
            sub_100001108(0, v58, "netrbStartService", v69);
            goto LABEL_114;
          }

          sub_100001108(0, "%s: mis_set_authenticate_required false, err %d");
          goto LABEL_80;
        }

        v71 = v25;
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = uint64 == 201;
        }

        if (v26)
        {
          v27 = 500;
        }

        else
        {
          v27 = v24;
        }

        if ((uint64 - 200) < 2)
        {
          v28 = 1;
          v29 = 1;
        }

        else if ((uint64 - 202) >= 2)
        {
          if (uint64 != 204)
          {
            v74 = 22;
            sub_100001108(0, "%s: invalid op mode %d");
LABEL_80:
            v40 = 0;
LABEL_81:
            v33 = 0;
            goto LABEL_82;
          }

          v29 = 0;
          v28 = 2;
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }

        v22[93] = v28;
        if (v27 > 500)
        {
          if (v27 == 501)
          {
            goto LABEL_67;
          }

          if (v27 == 502)
          {
            v32 = v22[98] | 2;
LABEL_63:
            v22[98] = v32;
            goto LABEL_67;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_67;
          }

          if (v27 == 500)
          {
            if (v29)
            {
              v22[94] |= 2u;
              v31 = v22[98];
              if (byte_100034BB0 == 1)
              {
                v32 = v31 | 8;
              }

              else
              {
                v32 = v31 | 4;
              }

              goto LABEL_63;
            }

LABEL_67:
            v35 = xpc_dictionary_get_uint64(original, off_1000348D8[0]);
            if ((v35 - 302) >= 3 && v35 != 300)
            {
              if (v35 != 301)
              {
                v74 = 22;
                sub_100001108(0, "%s: invalid bridge type %d");
                goto LABEL_112;
              }

              v22[88] |= 2u;
            }

            string = xpc_dictionary_get_string(v11, off_100034938[0]);
            if (!string)
            {
              v74 = 22;
              sub_100001108(0, "%s: missing int if name");
              goto LABEL_112;
            }

            v37 = string;
            if ((v22[88] & 2) == 0 && sub_10000529C(string))
            {
              sub_100001108(0, "%s: int if %s is not bridgeable, converting network to no bridge", "netrbStartService", v37);
              v22[88] |= 2u;
            }

            v38 = xpc_dictionary_get_value(v11, off_100034990[0]);
            if (v38)
            {
              v39 = v38;
              if (xpc_get_type(v38) != &_xpc_type_dictionary)
              {
                v74 = 22;
                sub_100001108(0, "%s: invalid nat64 param");
                goto LABEL_112;
              }

              v53 = xpc_dictionary_get_value(v11, off_100034998[0]);
              if (v53)
              {
                if (xpc_get_type(v53) == &_xpc_type_dictionary)
                {
                  v74 = 22;
                  sub_100001108(0, "%s: legacy SPI doesn't support nat64+66");
                  goto LABEL_112;
                }

                goto LABEL_102;
              }

              v57 = xpc_dictionary_get_value(v39, off_1000349A0[0]);
              if (!v57 || xpc_get_type(v57) != &_xpc_type_string || (v61 = xpc_dictionary_get_value(v39, off_1000349A8[0])) == 0 || xpc_get_type(v61) != &_xpc_type_string)
              {
                v74 = 22;
                sub_100001108(0, "%s: missing or invalid required nat64 params");
                goto LABEL_112;
              }

              v62 = xpc_dictionary_get_string(v39, off_1000349A0[0]);
              if (inet_pton(30, v62, v22 + 104) != 1)
              {
                v74 = 22;
                sub_100001108(0, "%s: inet_pton, invalid netrbXPCDns64Prefix");
                goto LABEL_112;
              }

              v22[108] = 96;
              v63 = xpc_dictionary_get_string(v39, off_1000349A8[0]);
              if (inet_pton(30, v63, v22 + 99) != 1)
              {
                v74 = 22;
                sub_100001108(0, "%s: inet_pton, invalid netrbXPCRaPrefix 1");
                goto LABEL_112;
              }

              v22[103] = 64;
              v43 = v22[2] | 0x60;
            }

            else
            {
              v41 = xpc_dictionary_get_value(v11, off_100034998[0]);
              if (!v41)
              {
                goto LABEL_89;
              }

              v42 = v41;
              if (xpc_get_type(v41) != &_xpc_type_dictionary)
              {
LABEL_102:
                v74 = 22;
                sub_100001108(0, "%s: invalid nat66 param");
                goto LABEL_112;
              }

              v73 = 0;
              if (!sub_10000A670(v42, v22 + 396, &v73))
              {
                v33 = 0;
                v40 = 0;
                v74 = 22;
                goto LABEL_114;
              }

              v22[103] = v73;
              v43 = v22[2] | 0x20;
            }

            v22[2] = v43;
LABEL_89:
            v44 = xpc_dictionary_get_string(v11, off_100034960[0]);
            v45 = xpc_dictionary_get_string(v11, off_100034970[0]);
            v46 = xpc_dictionary_get_string(v11, off_100034968[0]);
            v47 = v44;
            if ((sub_10000A724(v22 + 88, v44, v46, v45) & 1) == 0)
            {
              v74 = 22;
              sub_100001108(0, "%s: validateSubnetParameters failed");
              goto LABEL_112;
            }

            v48 = xpc_dictionary_get_string(original, off_1000348F0[0]);
            if (v48)
            {
              __strlcpy_chk();
            }

            v22[2] |= 0x10u;
            v22[128] |= *(v72 + 460);
            sub_100003000();
            v50 = v49;
            v70 = (v49 + 20);
            __strlcpy_chk();
            v51 = xpc_dictionary_get_uint64(v11, off_100034950[0]);
            v40 = v50;
            *(v50 + 12) = v51;
            if (!v51)
            {
              *(v50 + 12) = 1500;
              v22[117] = 1500;
              sub_100001108(2u, "%s: using default mtu, network %s", "netrbStartService", v22 + 40);
            }

            v52 = &qword_100034C38;
            while (1)
            {
              v52 = *v52;
              if (!v52)
              {
                break;
              }

              if (sub_1000037D0(v22, v52))
              {
                if (v52[62])
                {
                  sub_100001108(0, "%s: legacy SPI cannot start interface on new networks", "netrbStartService");
                  v33 = 0;
                  v74 = 13;
                  goto LABEL_82;
                }

                sub_1000031C4(v22);
                sub_100002FA0(v52);
                v22 = v52;
                goto LABEL_141;
              }
            }

            if (byte_100034BB0 == 1 && v47 == 0 && v45 == 0)
            {
              inet_aton("172.20.10.1", v22 + 95);
              v22[96] = -251658241;
            }

            v74 = sub_1000067D4(v22, v72);
            if (v74)
            {
              sub_100001108(0, "%s: mis_network_fill_default_options, err %d");
              goto LABEL_81;
            }

            v74 = sub_100002A8C(v22);
            if (v74)
            {
              sub_100001108(0, "%s: mis_network_add");
              goto LABEL_81;
            }

LABEL_141:
            v64 = xpc_dictionary_get_value(original, off_1000348F0[0]);
            if (v64 && xpc_get_type(v64) != &_xpc_type_string)
            {
              v74 = 22;
              sub_100001108(0, "%s: invalid netrbXPCExtName, network %s");
              goto LABEL_81;
            }

            v74 = sub_1000033FC(v22, v50);
            if (v74)
            {
              sub_100001108(0, "%s: mis_network_add_interface int_if");
              goto LABEL_81;
            }

            *(v72 + 40) = v50;
            *(v50 + 4) = v71;
            if (v52)
            {
              v33 = 0;
LABEL_149:
              v65 = "(none)";
              v66 = (v33 + 5);
              if (!v33)
              {
                v66 = "(none)";
              }

              if (v22)
              {
                v65 = (v22 + 10);
              }

              sub_100001108(0, "%s: client %s requested new service (%s <-> %s), network %s", "netrbStartService", (v72 + 308), v70, v66, v65);
LABEL_82:
              if (!v22)
              {
                goto LABEL_115;
              }

              goto LABEL_114;
            }

            if (v22[93])
            {
              v33 = sub_100002FB0();
              if (v48)
              {
                __strlcpy_chk();
              }

              v67 = sub_1000031DC(v22, v33);
              v74 = v67;
              if (!v67)
              {
                if (v33[2] != 100)
                {
                  v33[3] = sub_10001113C(v33 + 20);
                  if (v33[2] != 100 && !if_nametoindex(v33 + 20))
                  {
                    v74 = 22;
                    sub_100001108(0, "%s: invalid ext if %s");
                    goto LABEL_114;
                  }
                }

LABEL_163:
                v68 = sub_10000538C(v22);
                v74 = v68;
                if (v68)
                {
                  if (v68 == 36)
                  {
                    goto LABEL_105;
                  }

                  v58 = "%s: mis_network_start";
                  goto LABEL_120;
                }

                goto LABEL_149;
              }

              if (v67 != 17)
              {
                v58 = "%s: mis_network_add_interface ext_if";
                goto LABEL_120;
              }

              sub_100001108(1u, "%s: ext if %s already exists", "netrbStartService", v33 + 20);
              sub_1000030DC(v33);
            }

            v33 = 0;
            goto LABEL_163;
          }
        }

        sub_100001108(0, "%s: invalid nat type", "netrbStartService");
        goto LABEL_67;
      }
    }
  }

  sub_100001108(0, "interface parameter object is not valid for optional parameters");
LABEL_30:
  if (v74 == 36)
  {
    goto LABEL_17;
  }

  if (v74)
  {
    v14 = 2000;
  }

  else
  {
    v14 = 2001;
  }

LABEL_16:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v14);
  sub_100001CD4(a1, v5);
LABEL_17:
  xpc_release(v5);
  return v74 == 0;
}

uint64_t sub_10000A670(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  string = xpc_dictionary_get_string(a1, off_1000349A8[0]);
  if (string)
  {
    if (inet_pton(30, string, a2) == 1)
    {
      if (*a2 == 253)
      {
        *a3 = 64;
        return 1;
      }

      sub_100001108(0, "NAT66 RA Prefix (%s) must start with fd00::/8");
    }

    else
    {
      sub_100001108(0, "NAT66 RA Prefix (%s) is invalid");
    }
  }

  else
  {
    sub_100001108(0, "NAT66 RA Prefix is missing/invalid");
  }

  return 0;
}

uint64_t sub_10000A724(_DWORD *a1, char *a2, char *a3, char *a4)
{
  if (!a2 && !a3 && !a4)
  {
    return 1;
  }

  if (a2 && a3 && a4)
  {
    if (sub_10000FC38(a2) && sub_10000FC38(a3) && sub_10000FC38(a4))
    {
      v9 = inet_addr(a2);
      v10 = inet_addr(a3);
      v11 = inet_addr(a4);
      if (sub_10000FCB8(v11) && sub_100012234(v11) < 31)
      {
        if (sub_1000067A8(v9) && sub_1000067A8(v10))
        {
          v12 = bswap32(v9);
          v13 = bswap32(v11 & v9);
          if (v12 >= v13)
          {
            if (v13 + ~(-1 << -sub_100012234(v11)) >= bswap32(v10))
            {
              v14 = bswap32(v12 + 1);
              a1[8] = v11;
              a1[9] = v10;
              if ((v11 & v9) != v9)
              {
                v14 = v9;
              }

              a1[7] = v14;
              return 1;
            }

            sub_100001108(0, "end address %s is beyond the allowed range of network mask");
          }

          else
          {
            sub_100001108(0, "start address %s is not in the subnet");
          }
        }

        else
        {
          sub_100001108(0, "start address %s and end address %s must beprivate addresses");
        }
      }

      else
      {
        sub_100001108(0, "mask %s is not valid");
      }
    }

    else
    {
      sub_100001108(0, "start address %s, end address %s or mask %s is invalid");
    }
  }

  else
  {
    sub_100001108(0, "missing dhcp parameters: start address %s, end address %s or mask %s");
  }

  return 0;
}

uint64_t sub_10000A900(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6 && (v7 = v6, (*(v6 + 460) & 1) != 0))
    {
      if (*(v6 + 32) >= 2u)
      {
        sub_100020CE0();
      }

      v10 = *(v6 + 40);
      if (v10)
      {
        v11 = *(v10 + 288);
        if (v11)
        {
          sub_100009894(v11);
          sub_100006524(v10);
          *(v7 + 40) = 0;
        }
      }

      v8 = 1;
      v9 = 2001;
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p", a1);
      v8 = 0;
      v9 = 2000;
    }

    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108(0, "xpc_dictionary_create_reply() failed");
    return 0;
  }

  return v8;
}

BOOL sub_10000A9F8(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply() failed", "netrbCreateNetwork");
    v11 = 12;
    return v11 == 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (!v6 || (v7 = v6, (*(v6 + 460) & 0x1B) == 0))
  {
    sub_100001108(0, "%s: invalid client for connection %p");
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(original, off_100034A08[0]);
  if (!value || (v9 = value, xpc_get_type(value) != &_xpc_type_dictionary))
  {
    sub_100001108(0, "%s: invalid network handle");
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = sub_100003178();
  if (sub_100007620(v9, (v10 + 88)))
  {
    sub_100001108(0, "%s: _NETRBDeserializeNetwork, err %d");
  }

  else
  {
    v10[2] |= 0x100u;
    *(v10 + 62) = v7;
    if (v10[93] == 1)
    {
      v14 = sub_100002FB0();
      v15 = v14;
      if (*(v10 + 452))
      {
        snprintf(v14 + 20, 0x10uLL, "%s", v10 + 452);
      }

      else
      {
        snprintf(v14 + 20, 0x10uLL, "%s", off_100034980[0]);
        sub_100001108(2u, "%s: set ext if to any external", "netrbCreateNetwork");
      }

      v16 = sub_1000031DC(v10, v15);
      if (v16)
      {
        v11 = v16;
        if (v16 != 17)
        {
          sub_100001108(0, "%s: mis_network_add_interface, network %s", "netrbCreateNetwork", v10 + 40);
          goto LABEL_10;
        }

        sub_100001108(1u, "%s: ext if already created", "netrbCreateNetwork");
        sub_1000030DC(v15);
      }
    }

    if (sub_1000067D4(v10, v7))
    {
      sub_100001108(0, "%s: mis_network_fill_default_options, err %d");
    }

    else if (sub_1000039CC(v10))
    {
      xpc_connection_get_audit_token();
      if ((*(v7 + 460) & 0x18) != 0 && byte_100034BA0 >= 0x20u)
      {
        v17 = qword_100034C38;
        if (qword_100034C38)
        {
          v18 = 0;
          do
          {
            if (*(v17 + 296) != 4)
            {
              v19 = *(v17 + 320) == *(v10 + 40) && *(v17 + 328) == *(v10 + 41);
              v20 = v19 && *(v17 + 336) == *(v10 + 42);
              if (v20 && *(v17 + 344) == *(v10 + 43))
              {
                ++v18;
              }
            }

            v17 = *v17;
          }

          while (v17);
          if (v18 >= 0x20u)
          {
            sub_100001108(0, "%s: too many networks under client %s", "netrbCreateNetwork", (v7 + 308));
            v11 = 16;
            goto LABEL_10;
          }
        }
      }

      if (!sub_100002A8C(v10))
      {
        sub_100001108(0, "%s: idle network %s created", "netrbCreateNetwork", v10 + 40);
        v11 = 0;
        goto LABEL_10;
      }

      sub_100001108(0, "%s: mis_network_add, err %d");
    }

    else
    {
      sub_100001108(0, "%s: unable to fulfill network");
    }
  }

LABEL_9:
  v11 = 12;
LABEL_10:
  if (v11)
  {
    v12 = 2000;
  }

  else
  {
    v12 = 2001;
  }

  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v12);
  if (!v11)
  {
    xpc_dictionary_set_uuid(v5, off_100034A10[0], v10 + 356);
    xpc_dictionary_set_uint64(v5, off_100034960[0], v10[95]);
    xpc_dictionary_set_uint64(v5, off_100034970[0], v10[96]);
    xpc_dictionary_set_data(v5, off_1000349A8[0], v10 + 99, 0x10uLL);
    xpc_dictionary_set_uint64(v5, off_1000349B0[0], v10[103]);
    xpc_dictionary_set_uint64(v5, off_100034A20[0], v10[117]);
  }

  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v10)
  {
    sub_1000031C4(v10);
  }

  return v11 == 0;
}

uint64_t sub_10000AE40(_xpc_connection_s *a1, xpc_object_t original)
{
  cf = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply() failed", "netrbRemoveNetwork");
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (v6 && (v7 = v6, (*(v6 + 460) & 0x1B) != 0))
  {
    value = xpc_dictionary_get_value(original, off_100034A08[0]);
    if (!value || (v9 = value, xpc_get_type(value) != &_xpc_type_dictionary))
    {
      v10 = "%s: invalid network handle";
LABEL_7:
      sub_100001108(0, v10, "netrbRemoveNetwork", v18, v19);
LABEL_8:
      v11 = 0;
      v12 = 2000;
      goto LABEL_12;
    }

    if (_NETRBDeserializeNetwork(v9, &cf))
    {
      v18 = 2;
      v10 = "%s: _NETRBDeserializeNetwork, err %d";
      goto LABEL_7;
    }

    v14 = sub_1000078AC(cf);
    v15 = sub_100003D38((v14 + 4));
    if (!v15)
    {
      sub_100001108(0, "%s: no network found");
      goto LABEL_8;
    }

    v16 = v15;
    if (v15[62] != v7)
    {
      v18 = (v15 + 5);
      v19 = v7 + 308;
      v10 = "%s: network %s is not owned by client %s";
      goto LABEL_7;
    }

    if (!*(v15 + 74))
    {
      v11 = 1;
      sub_100001108(1u, "%s: stopped idle network %s", "netrbRemoveNetwork", v15 + 40);
      sub_100005E14(v16, v17);
      goto LABEL_11;
    }

    *(v15 + 74) = 3;
  }

  else
  {
    sub_100001108(0, "%s: invalid client for connection %p", "netrbRemoveNetwork", a1);
  }

  v11 = 1;
LABEL_11:
  v12 = 2001;
LABEL_12:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v12);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

BOOL sub_10000B050(_xpc_connection_s *a1, xpc_object_t original)
{
  cf = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply() failed", "netrbCreateInterface");
    v10 = 12;
    return v10 == 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (!v6)
  {
    sub_100001108(0, "%s: invalid client for connection %p");
    goto LABEL_8;
  }

  v7 = v6;
  value = xpc_dictionary_get_value(original, off_100034A08[0]);
  if (value)
  {
    v9 = value;
    if (xpc_get_type(value) != &_xpc_type_dictionary)
    {
      sub_100001108(0, "%s: wrong network id type");
LABEL_8:
      v11 = 0;
      v12 = 0;
      v10 = 12;
LABEL_9:
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D0uLL);
      sub_100001CD4(a1, v5);
      xpc_release(v5);
      goto LABEL_10;
    }

    if ((*(v7 + 460) & 0x1B) == 0)
    {
      sub_100001108(0, "%s: client has no access to network APIs, client %s");
      goto LABEL_8;
    }

    sub_100001108(2u, "%s: network handle was passed in", "netrbCreateInterface");
    if (_NETRBDeserializeNetwork(v9, &cf))
    {
      sub_100001108(0, "%s: _NETRBDeserializeNetwork");
      goto LABEL_8;
    }

    v19 = sub_1000078AC(cf);
    if (uuid_is_null((v19 + 4)))
    {
      sub_100001108(0, "%s: invalid auth token");
      goto LABEL_8;
    }

    v22 = sub_100003D38((v19 + 4));
    if (!v22)
    {
      sub_100001108(0, "%s: no network related to id");
      goto LABEL_8;
    }

    v23 = v22;
    sub_100001108(2u, "%s: adding interface to existing network %s", "netrbCreateInterface", v22 + 40);
    sub_100002FA0(v23);
    if (uuid_is_null(v23 + 356))
    {
      v12 = 0;
      string = 0;
      v52 = 0;
      v24 = 0;
      v53 = 0;
      v25 = 0;
      v23[62] = v7;
LABEL_85:
      if (sub_1000067D4(v23, v7))
      {
        sub_100001108(0, "%s: mis_network_fill_default_options, err %d");
LABEL_91:
        v10 = 12;
        v11 = v23;
        goto LABEL_9;
      }

      if (sub_100002A8C(v23))
      {
        sub_100001108(0, "%s: mis_network_add");
        goto LABEL_91;
      }

      sub_100001108(2u, "%s: created network %s, creating vmnet interface", "netrbCreateInterface", v23 + 40);
LABEL_100:
      if ((v23[1] & 0x10) == 0 && !sub_100003CE4(v23 + 356, v7))
      {
        sub_100001108(0, "%s: network %s doesn't belong to client %s", "netrbCreateInterface", v23 + 40, (v7 + 308));
      }

      sub_100003000();
      v14 = v42;
      *(v42 + 288) = v23;
      *(v42 + 12) = *(v23 + 117);
      *(v42 + 389) = xpc_dictionary_get_BOOL(original, off_100034890[0]);
      *(v14 + 390) = v25;
      *(v14 + 391) = xpc_dictionary_get_BOOL(original, off_1000348B0[0]);
      *(v14 + 393) = xpc_dictionary_get_BOOL(original, off_100034898[0]);
      if (*(v23 + 93) == 2)
      {
        *(v14 + 392) = xpc_dictionary_get_BOOL(original, off_1000348A0[0]);
        v43 = sub_10001113C((v23[3] + 20));
        *(v14 + 12) = v43;
        *(v23 + 117) = v43;
      }

      if (xpc_dictionary_get_value(original, off_100034888[0]) && !xpc_dictionary_get_BOOL(original, off_100034888[0]))
      {
        if ((v23[1] & 0x10) != 0 && (*(v7 + 460) & 8) != 0)
        {
          sub_100001108(0, "%s: limited client must allocate mac address on legacy networks", "netrbCreateInterface");
          xpc_dictionary_set_uint64(v5, off_1000348B8[0], 0x1771uLL);
LABEL_128:
          v10 = 0;
          v11 = v23;
          goto LABEL_11;
        }
      }

      else
      {
        uuid = xpc_dictionary_get_uuid(original, off_100034870[0]);
        if (sub_100016BC4(uuid, v5))
        {
          v45 = "%s: mac address";
          goto LABEL_124;
        }

        v46 = xpc_dictionary_get_string(v5, off_100034878[0]);
        v47 = sub_1000075BC(v46);
        *(v14 + 320) = v47;
        *(v14 + 324) = WORD2(v47);
        *(v14 + 388) = 1;
      }

      if (v24 && v53)
      {
        xpc_dictionary_set_string(v5, off_100034960[0], v24);
        xpc_dictionary_set_string(v5, off_100034970[0], v53);
      }

      if (string)
      {
        xpc_dictionary_set_string(v5, off_1000348F0[0], string);
      }

      if (v52)
      {
        xpc_dictionary_set_string(v5, off_1000349A8[0], v52);
      }

      if ((v23[1] & 0x10) != 0)
      {
        *(v7 + 40) = v14;
      }

      ++dword_100034C20;
      v48 = sub_10000EB3C(v14);
      if (!v48)
      {
        *(v14 + 328) = v5;
        *(v14 + 344) = a1;
        v45 = "%s: VM interface create submitted, waiting for mis_vmnet_interface_attached_callback";
        goto LABEL_127;
      }

      v45 = "%s: interface creation";
LABEL_124:
      LOBYTE(v48) = 0;
LABEL_127:
      sub_100001108(v48, v45, "netrbCreateInterface");
      goto LABEL_128;
    }

    v25 = 0;
    v52 = 0;
    v53 = 0;
    v24 = 0;
    string = 0;
LABEL_98:
    v12 = 0;
    goto LABEL_100;
  }

  uint64 = xpc_dictionary_get_uint64(original, off_1000348D0[0]);
  if ((*(v7 + 460) & 0xB) == 0)
  {
    sub_100001108(0, "%s: client has no access to legacy APIs, client %s", "netrbCreateInterface", (v7 + 308));
    v11 = 0;
    v12 = 0;
LABEL_26:
    v10 = 13;
    goto LABEL_9;
  }

  v17 = uint64;
  v11 = sub_100003178();
  v18 = xpc_dictionary_get_uint64(original, off_100034950[0]);
  if (v18 <= 0x4000)
  {
    if (v18)
    {
      if (v17 == 204)
      {
        sub_100001108(0, "%s: bridged mode doesn't support setting the MTU");
        goto LABEL_30;
      }
    }

    else
    {
      v18 = 1500;
    }

    v11[117] = v18;
    sub_100001108(2u, "%s: creating a network based on XPC request", "netrbCreateInterface");
    if (v17 > 202)
    {
      if (v17 == 203)
      {
LABEL_48:
        v20 = 0;
        v11[93] = 0;
        goto LABEL_49;
      }

      if (v17 == 204)
      {
        v11[93] = 2;
        v21 = xpc_dictionary_get_string(original, off_1000348F0[0]);
        if (!v21 || (v20 = v21, !*v21))
        {
          sub_100001108(0, "%s: bridged mode has no ext if", "netrbCreateInterface");
          v14 = 0;
          v12 = 0;
          v10 = 0;
          goto LABEL_11;
        }

LABEL_49:
        v26 = xpc_dictionary_get_uuid(original, off_1000349B8[0]);
        if (v26)
        {
          if (v17 == 202)
          {
            v27 = v26;
            v28 = xpc_dictionary_get_string(original, off_1000349C0[0]);
            v29 = xpc_dictionary_get_string(original, off_100034970[0]);
            if ((v28 == 0) != (v29 != 0))
            {
              if (v28)
              {
                v30 = v29;
                if (inet_pton(2, v28, v11 + 95) != 1)
                {
                  sub_100001108(0, "%s: invalid v4 gateway addr %s");
                  goto LABEL_131;
                }

                if (inet_pton(2, v30, v11 + 96) != 1)
                {
                  sub_100001108(0, "%s: invalid v4 mask %s");
                  goto LABEL_131;
                }
              }

              v31 = xpc_dictionary_get_string(original, off_1000349C8[0]);
              if (!v31 || inet_pton(30, v31, v11 + 109) == 1)
              {
                v32 = v20;
                uuid_copy(v11 + 536, v27);
LABEL_60:
                v50 = 0;
                v52 = 0;
                v53 = 0;
LABEL_61:
                v33 = v11[93];
                v12 = sub_100002FB0();
                v34 = off_100034980[0];
                if (v33 != 1)
                {
                  v34 = v32;
                }

                snprintf(v11 + 452, 0x10uLL, "%s", v34);
                v35 = off_100034980[0];
                if (v33 != 1)
                {
                  v35 = v32;
                }

                snprintf(v12 + 20, 0x10uLL, "%s", v35);
                v36 = sub_1000031DC(v11, v12);
                if (v36)
                {
                  v10 = v36;
                  if (v36 != 17)
                  {
                    sub_100001108(0, "%s: mis_network_add_interface, network %s", "netrbCreateInterface", v11 + 40);
                    goto LABEL_9;
                  }

                  sub_100001108(1u, "%s: anyexternal if already created", "netrbCreateInterface");
                  sub_1000030DC(v12);
                  v12 = 0;
                }

                string = v32;
                v11[2] |= 0x110u;
                v37 = xpc_dictionary_get_BOOL(original, off_1000348A8[0]);
                v25 = v37;
                if (v37)
                {
                  v11[2] |= 0x200u;
                }

                v23 = &qword_100034C38;
                v24 = v50;
                do
                {
                  v23 = *v23;
                  if (!v23)
                  {
                    v23 = v11;
                    goto LABEL_85;
                  }
                }

                while (!sub_1000037D0(v11, v23));
                if (v23[62])
                {
                  sub_100001108(0, "%s: legacy SPI cannot be used with new networks", "netrbCreateInterface");
                  goto LABEL_26;
                }

                sub_1000031C4(v11);
                if (v12)
                {
                  sub_1000030DC(v12);
                }

                sub_100002FA0(v23);
                goto LABEL_98;
              }

              sub_100001108(0, "%s: invalid v6 addr %s");
            }

            else
            {
              sub_100001108(0, "%s: legacy network identifier's ip address and mask must be both or nothing");
            }
          }

          else
          {
            sub_100001108(0, "%s: network identifier (legacy) is only for NETRB_LOCAL_ONLY_MODE");
          }
        }

        else
        {
          if (v17 == 204)
          {
            v32 = v20;
            goto LABEL_60;
          }

          v38 = xpc_dictionary_get_string(original, off_100034960[0]);
          v39 = xpc_dictionary_get_string(original, off_100034970[0]);
          v40 = xpc_dictionary_get_string(original, off_100034968[0]);
          v41 = xpc_dictionary_get_value(original, off_100034998[0]);
          v53 = v39;
          if (sub_10000A724(v11 + 88, v38, v40, v39))
          {
            if (!v41)
            {
              v50 = v38;
              v32 = v20;
              v52 = 0;
              goto LABEL_61;
            }

            if (v11[93] == 1)
            {
              if (xpc_get_type(v41) == &_xpc_type_dictionary)
              {
                v49 = xpc_dictionary_get_string(v41, off_1000349A8[0]);
                if (v49)
                {
                  v50 = v38;
                  v52 = v49;
                  if (inet_pton(30, v49, v11 + 99) == 1)
                  {
                    v32 = v20;
                    v11[103] = 64;
                    goto LABEL_61;
                  }

                  sub_100001108(0, "%s: inet_pton, v6 prefix");
                }

                else
                {
                  sub_100001108(0, "%s: nat66 missing RA prefix");
                }
              }

              else
              {
                sub_100001108(0, "%s: nat66 object is not dictionary");
              }
            }

            else
            {
              sub_100001108(0, "%s: NAT66 param passed under non-shared mode");
            }
          }

          else
          {
            sub_100001108(0, "%s: validateSubnetParameters failed");
          }
        }

LABEL_131:
        v12 = 0;
        v10 = 22;
        goto LABEL_9;
      }
    }

    else
    {
      if ((v17 - 200) < 2)
      {
        v20 = 0;
        v11[93] = 1;
        v11[94] |= 2u;
        v11[98] |= 4u;
        goto LABEL_49;
      }

      if (v17 == 202)
      {
        v11[94] |= 4u;
        v11[98] |= 0x10u;
        goto LABEL_48;
      }
    }

    sub_100001108(0, "%s: invalid op mode %d");
    goto LABEL_131;
  }

  sub_100001108(0, "%s: invalid MTU %u");
LABEL_30:
  v10 = 0;
  v12 = 0;
LABEL_10:
  v14 = 0;
  if (v11)
  {
LABEL_11:
    sub_1000031C4(v11);
  }

  if (v12)
  {
    sub_1000030DC(v12);
  }

  if (v14)
  {
    sub_1000030A4(v14, v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10 == 0;
}

uint64_t sub_10000BBE4(_xpc_connection_s *a1, xpc_object_t original)
{
  cf = 0;
  reply = xpc_dictionary_create_reply(original);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply() failed", "netrbRemoveInterface");
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(original, a1);
  if (!v6)
  {
    sub_100001108(0, "%s: invalid client for connection %p", "netrbRemoveInterface", a1);
    goto LABEL_8;
  }

  v7 = v6;
  value = xpc_dictionary_get_value(original, off_100034A08[0]);
  if (value)
  {
    if (_NETRBDeserializeNetwork(value, &cf))
    {
      v9 = "%s: _NETRBDeserializeNetwork";
LABEL_12:
      sub_100001108(0, v9, "netrbRemoveInterface", v19, v20);
      goto LABEL_13;
    }

    v12 = sub_1000078AC(cf);
    if (uuid_is_null((v12 + 4)))
    {
      v9 = "%s: no network id";
      goto LABEL_12;
    }

    v14 = sub_100003D38((v12 + 4));
    if (!v14)
    {
      sub_100001108(0, "%s: network id doesn't exist");
      goto LABEL_13;
    }

    v15 = v14;
    if (((v14[1] & 0x10 ^ 0x1B) & *(v7 + 460)) == 0)
    {
      if ((v14[1] & 0x10) != 0)
      {
        v18 = "legacy";
      }

      else
      {
        v18 = "network";
      }

      v19 = v18;
      v20 = v7 + 308;
      v9 = "%s: client has no access to %s APIs, client %s";
      goto LABEL_12;
    }

    uint64 = xpc_dictionary_get_uint64(original, off_100034A18[0]);
    if (!uint64)
    {
      sub_100001108(0, "%s: interface id is invalid");
      goto LABEL_13;
    }

    v17 = v15[4];
    if (!v17)
    {
LABEL_23:
      v9 = "%s: network has no such interface";
      goto LABEL_12;
    }

    while (*(v17 + 400) != uint64)
    {
      v17 = *(v17 + 280);
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    sub_100001108(2u, "%s: removing interface %s from network %s", "netrbRemoveInterface", v15 + 40, (v17 + 20));
    sub_100006524(v17);
LABEL_8:
    v10 = 1;
    v11 = 2001;
    goto LABEL_14;
  }

  sub_100001108(0, "%s: missing network object");
LABEL_13:
  v10 = 0;
  v11 = 2000;
LABEL_14:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v11);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

BOOL sub_10000BE68(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    if (sub_100001E50(original, a1))
    {
      uint64 = xpc_dictionary_get_uint64(original, off_1000348E8[0]);
      if ((uint64 - 1024) > 0xFFFFFFFB)
      {
        if (uint64 < 0x3FE)
        {
          v9 = sub_1000158A0(uint64);
        }

        else
        {
          v9 = sub_100015A84(uint64);
        }

        v7 = v9 == 0;
        if (v9)
        {
          v8 = 2000;
        }

        else
        {
          v8 = 2001;
        }

        goto LABEL_14;
      }

      sub_100001108(0, "%d, not a valid state");
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p");
    }

    v7 = 0;
    v8 = 2000;
LABEL_14:
    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v8);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v7;
  }

  sub_100001108(0, "xpc_dictionary_create_reply() failed");
  return 0;
}

uint64_t sub_10000BF70(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    *string = 0;
    v12 = 0;
    v6 = sub_100001E50(original, a1);
    if (v6 && (*(v6 + 460) & 1) != 0)
    {
      v9 = sub_1000161FC(string);
      v7 = off_1000348C8[0];
      if (!v9)
      {
        xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
        xpc_dictionary_set_string(v5, off_1000348F0[0], string);
        v8 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p", a1);
      v7 = off_1000348C8[0];
    }

    xpc_dictionary_set_uint64(v5, v7, 0x7D0uLL);
    v8 = 0;
LABEL_8:
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v8;
  }

  sub_100001108(0, "xpc_dictionary_create_reply() failed");
  return 0;
}

uint64_t sub_10000C0A0(_xpc_connection_s *a1, xpc_object_t original)
{
  LODWORD(value) = 0;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6 && (*(v6 + 460) & 1) != 0)
    {
      sub_100016044(&value + 1, &value);
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
      xpc_dictionary_set_uint64(v5, off_100034900[0], WORD1(value));
      xpc_dictionary_set_uint64(v5, off_100034908[0], value);
      v7 = 1;
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p", a1);
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D0uLL);
      v7 = 0;
    }

    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108(0, "xpc_dictionary_create_reply() failed");
    return 0;
  }

  return v7;
}

uint64_t sub_10000C1B8(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6 && (*(v6 + 460) & 1) != 0)
    {
      value = xpc_dictionary_get_value(original, off_100034900[0]);
      if (value && xpc_get_type(value) == &_xpc_type_uint64 && (v9 = xpc_dictionary_get_uint64(original, off_100034900[0]), v9 < 0x10000))
      {
        v12 = v9;
        v13 = xpc_dictionary_get_value(original, off_100034908[0]);
        if (v13)
        {
          if (xpc_get_type(v13) == &_xpc_type_uint64)
          {
            uint64 = xpc_dictionary_get_uint64(original, off_100034908[0]);
            if (uint64 < 0x10000)
            {
              v7 = sub_100015FA4(v12, uint64);
              if (v7)
              {
                v10 = 2001;
              }

              else
              {
                v10 = 2000;
              }

              goto LABEL_11;
            }
          }
        }

        sub_100001108(0, "high port is not valid");
      }

      else
      {
        sub_100001108(0, "low port is not valid");
      }
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p");
    }

    v7 = 0;
    v10 = 2000;
LABEL_11:
    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v10);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v7 & 1;
  }

  sub_100001108(0, "xpc_dictionary_create_reply failed");
  v7 = 0;
  return v7 & 1;
}

BOOL sub_10000C330(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    if (sub_100001E50(original, a1))
    {
      v6 = sub_1000161B4();
      if (v6)
      {
        v7 = 2001;
      }

      else
      {
        v7 = 2000;
      }
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p", a1);
      v6 = 0;
      v7 = 2000;
    }

    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v7);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108(0, "xpc_dictionary_create_reply() failed");
    return 0;
  }

  return v6;
}

uint64_t sub_10000C3F4(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6)
    {
      uint64 = xpc_dictionary_get_uint64(original, off_100034910[0]);
      v8 = uint64;
      if ((uint64 - 7) > 0xFFFFFFFA)
      {
        value = xpc_dictionary_get_value(original, netrbClientHostDeviceId[0]);
        if (value && xpc_get_type(value) == &_xpc_type_uint64)
        {
          v11 = xpc_dictionary_get_uint64(original, off_100034948[0]);
        }

        else
        {
          v11 = 0xFFFFFFFFLL;
        }

        sub_10000E8A8(v6, v8, v11);
        v6 = 1;
        v9 = 2001;
        goto LABEL_13;
      }

      sub_100001108(0, "invalid iftype %d", uint64);
      v6 = 0;
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p", a1);
    }

    v9 = 2000;
LABEL_13:
    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v6;
  }

  sub_100001108(0, "xpc_dictionary_create_reply() failed");
  return 0;
}

uint64_t sub_10000C54C(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6)
    {
      uint64 = xpc_dictionary_get_uint64(original, off_100034910[0]);
      v8 = uint64;
      if ((uint64 - 7) > 0xFFFFFFFA)
      {
        value = xpc_dictionary_get_value(original, netrbClientHostDeviceId[0]);
        if (value && xpc_get_type(value) == &_xpc_type_uint64)
        {
          v11 = xpc_dictionary_get_uint64(original, off_100034948[0]);
        }

        else
        {
          v11 = 0xFFFFFFFFLL;
        }

        sub_10000E9B8(v6, v8, v11);
        v6 = 1;
        v9 = 2001;
        goto LABEL_13;
      }

      sub_100001108(0, "invalid iftype %d", uint64);
      v6 = 0;
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p", a1);
    }

    v9 = 2000;
LABEL_13:
    xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
    return v6;
  }

  sub_100001108(0, "xpc_dictionary_create_reply failed");
  return 0;
}

BOOL sub_10000C6A4(_xpc_connection_s *a1, xpc_object_t original)
{
  value = 0;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    v7 = v6 != 0;
    if (v6)
    {
      sub_10000EAA8(v6, &value + 1, &value);
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
      xpc_dictionary_set_uint64(v5, off_100034918[0], HIDWORD(value));
      v8 = off_100034920[0];
      v9 = value;
      v10 = v5;
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p", a1);
      v8 = off_1000348C8[0];
      v10 = v5;
      v9 = 2000;
    }

    xpc_dictionary_set_uint64(v10, v8, v9);
    sub_100001CD4(a1, v5);
    xpc_release(v5);
  }

  else
  {
    sub_100001108(0, "xpc_dictionary_create_reply() failed");
    return 0;
  }

  return v7;
}

uint64_t sub_10000C7AC(_xpc_connection_s *a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    v6 = sub_100001E50(original, a1);
    if (v6)
    {
      v7 = v6;
      uint64 = xpc_dictionary_get_uint64(original, off_100034910[0]);
      if ((uint64 - 7) > 0xFFFFFFFA)
      {
        if (xpc_dictionary_get_value(original, off_100034928[0]))
        {
          v10 = xpc_dictionary_get_uint64(original, off_100034928[0]);
          if (sub_10000EADC(v7, uint64, v10))
          {
            v9 = 1;
            v11 = 2001;
LABEL_13:
            xpc_dictionary_set_uint64(v5, off_1000348C8[0], v11);
            sub_100001CD4(a1, v5);
            xpc_release(v5);
            return v9;
          }

          sub_100001108(1u, "%s: mis_client_set_host_count");
        }

        else
        {
          sub_100001108(0, "host count is not present");
        }
      }

      else
      {
        sub_100001108(0, "invalid iftype %d");
      }
    }

    else
    {
      sub_100001108(0, "invalid client for connection %p");
    }

    v9 = 0;
    v11 = 2000;
    goto LABEL_13;
  }

  sub_100001108(0, "xpc_dictionary_create_reply() failed");
  return 0;
}

uint64_t sub_10000C908(_xpc_connection_s *a1, void *a2)
{
  sub_100001108(2u, "%s:", "netrbAddPortForwardingRule");
  reply = xpc_dictionary_create_reply(a2);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply", "netrbAddPortForwardingRule");
    return 0;
  }

  v5 = reply;
  v15 = 0;
  v6 = sub_100001E50(a2, a1);
  v7 = v6;
  if (!v6)
  {
    sub_100001108(0, "%s: mis_client_lookup");
LABEL_10:
    v9 = 0;
    v10 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (*(v6 + 16))
  {
    v8 = "%s: this SPI is only for legacy clients";
LABEL_9:
    sub_100001108(0, v8, "netrbAddPortForwardingRule");
    goto LABEL_10;
  }

  if ((*(*(*(v6 + 40) + 288) + 8) & 0x10) == 0)
  {
    v8 = "%s: legacy client has non-legacy network handle";
    goto LABEL_9;
  }

  v10 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  *v10 = 0u;
  v10[1] = 0u;
  if ((sub_10000CB58(a2, v10 + 8, v10 + 6, v10 + 9, v10 + 1, v10 + 5, &v15) & 1) == 0)
  {
    sub_100001108(0, "%s: get_port_forwarding_info");
    goto LABEL_25;
  }

  if (sub_100006BE8(*(*(v7 + 40) + 288), v10))
  {
    sub_100001108(0, "%s: mis_network_validate_port_forwarding_rule, network %s, err %d");
LABEL_25:
    v9 = 0;
    goto LABEL_11;
  }

  if (sub_10000CD28(v10))
  {
    sub_100001108(0, "%s: duplicate rule");
    goto LABEL_25;
  }

  *v10 = *(v7 + 24);
  *(v7 + 24) = v10;
  v14 = sub_10001BB78();
  if (!v14)
  {
    v9 = 1;
    v12 = 2001;
    v11 = 1;
    goto LABEL_13;
  }

  sub_100001108(0, "%s: mis_pf_refresh_port_forwarding_rules, network %s, err %d", "netrbAddPortForwardingRule", (*(*(v7 + 40) + 288) + 40), v14);
  v11 = 0;
  v9 = 1;
LABEL_12:
  v12 = 2000;
LABEL_13:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v12);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v11)
  {
    return 1;
  }

  if (v9)
  {
    *(v7 + 24) = **(v7 + 24);
  }

  if (v10)
  {
    free(v10);
  }

  return 0;
}

uint64_t sub_10000CB58(void *a1, _BYTE *a2, _WORD *a3, _BYTE *a4, void *a5, _WORD *a6, const char **a7)
{
  value = xpc_dictionary_get_value(a1, off_1000349D0[0]);
  if (!value || (v14 = value, xpc_get_type(value) != &_xpc_type_dictionary))
  {
    sub_100001108(0, "port forwarding rule missing/invalid");
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  uint64 = xpc_dictionary_get_uint64(v14, off_1000349F8[0]);
  *a4 = uint64;
  if (uint64 != 2 && uint64 != 30)
  {
    sub_100001108(0, "port forwarding rule invalid address family");
    goto LABEL_4;
  }

  if (a2)
  {
    v19 = xpc_dictionary_get_uint64(v14, off_1000349E0[0]);
    *a2 = v19;
    if (v19 != 6 && v19 != 17)
    {
      sub_100001108(0, "port forwarding rule contains missing/invalid protocol");
      goto LABEL_4;
    }
  }

  if (a3)
  {
    v21 = xpc_dictionary_get_uint64(v14, off_1000349E8[0]);
    *a3 = v21;
    if (!v21)
    {
      sub_100001108(0, "port forwarding rule invalid/missing external port");
      goto LABEL_4;
    }
  }

  if (a6)
  {
    v22 = xpc_dictionary_get_uint64(v14, off_100034A00[0]);
    *a6 = v22;
    if (!v22)
    {
      sub_100001108(0, "port forwarding rule invalid/missing internal port");
      goto LABEL_4;
    }
  }

  if (a5)
  {
    string = xpc_dictionary_get_string(v14, off_1000349F0[0]);
    v15 = string;
    if (!string)
    {
      sub_100001108(0, "port forwarding rule missing/invalid internal address");
LABEL_5:
      result = 0;
      if (!a7)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!inet_pton(*a4, string, a5))
    {
      sub_100001108(0, "port forwarding rule invalid internal address '%s'");
      goto LABEL_5;
    }
  }

  else
  {
    v15 = 0;
  }

  result = 1;
  if (a7)
  {
LABEL_6:
    *a7 = v15;
  }

  return result;
}

uint64_t sub_10000CD28(uint64_t a1)
{
  v1 = qword_100034C18;
  if (qword_100034C18)
  {
    do
    {
      v3 = v1[5];
      if (v3)
      {
        v4 = *(v3 + 288);
        if (*(v4 + 372) == 1)
        {
          if (*(v4 + 296))
          {
            v5 = v1 + 3;
            while (1)
            {
              v5 = *v5;
              if (!v5)
              {
                break;
              }

              if (sub_100006B5C(v5, a1, 0))
              {
                return 1;
              }
            }
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_10000CDB8(_xpc_connection_s *a1, void *a2)
{
  sub_100001108(2u, "%s:", "netrbRemovePortForwardingRule");
  reply = xpc_dictionary_create_reply(a2);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply", "netrbRemovePortForwardingRule");
    return 0;
  }

  v5 = reply;
  v6 = sub_100001E50(a2, a1);
  v7 = v6;
  if (!v6)
  {
    sub_100001108(0, "%s: mis_client_lookup", "netrbRemovePortForwardingRule");
    v8 = 0;
LABEL_11:
    v9 = 2000;
    goto LABEL_12;
  }

  if (*(v6 + 16))
  {
    sub_100001108(0, "%s: this SPI is only for legacy clients");
LABEL_9:
    v8 = 0;
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if ((*(*(*(v6 + 40) + 288) + 8) & 0x10) == 0)
  {
    sub_100001108(0, "%s: legacy client has non-legacy network handle");
    goto LABEL_9;
  }

  v8 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  *v8 = 0u;
  v8[1] = 0u;
  if ((sub_10000CB58(a2, v8 + 8, v8 + 6, v8 + 9, 0, 0, 0) & 1) == 0)
  {
    sub_100001108(0, "%s: get_port_forwarding_info");
    goto LABEL_10;
  }

  v12 = (v7 + 24);
  v11 = *(v7 + 24);
  if (!v11)
  {
    goto LABEL_29;
  }

  v13 = 0;
  do
  {
    v14 = *v11;
    if (sub_100006B5C(v11, v8, 1))
    {
      v15 = *v12;
      if (*v12 == v11)
      {
        v16 = (v7 + 24);
      }

      else
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15 != v11);
      }

      *v16 = *v15;
      v13 = 1;
    }

    v11 = v14;
  }

  while (v14);
  if ((v13 & 1) == 0)
  {
LABEL_29:
    sub_100001108(0, "%s: nothing to remove");
    goto LABEL_10;
  }

  if (sub_10001BB78())
  {
    sub_100001108(0, "%s: mis_pf_refresh_port_forwarding_rules, network %s, err %d");
    goto LABEL_10;
  }

  v7 = 1;
  v9 = 2001;
LABEL_12:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v8)
  {
    free(v8);
  }

  return v7;
}

uint64_t sub_10000CFFC(_xpc_connection_s *a1, void *a2)
{
  sub_100001108(2u, "%s:", "netrbGetPortForwardingRules");
  reply = xpc_dictionary_create_reply(a2);
  if (!reply)
  {
    sub_100001108(0, "%s: xpc_dictionary_create_reply", "netrbGetPortForwardingRules");
    return 0;
  }

  v5 = reply;
  string[0] = 0;
  v6 = sub_100001E50(a2, a1);
  if (!v6)
  {
    sub_100001108(0, "%s: mis_client_lookup");
    goto LABEL_9;
  }

  v7 = v6;
  if (*(v6 + 16))
  {
    sub_100001108(0, "%s: this SPI is only for legacy clients");
LABEL_9:
    v8 = 0;
    v9 = 2000;
    goto LABEL_10;
  }

  if ((*(*(*(v6 + 40) + 288) + 8) & 0x10) == 0)
  {
    sub_100001108(0, "%s: legacy client has non-legacy network handle");
    goto LABEL_9;
  }

  if (sub_10000CB58(a2, 0, 0, string, 0, 0, 0))
  {
    v12 = *(v7 + 24);
    if (!v12)
    {
      goto LABEL_35;
    }

    v10 = 0;
    v13 = string[0];
    do
    {
      if (*(v12 + 9) == v13)
      {
        v14 = v13;
        if (!v10)
        {
          v10 = xpc_array_create(0, 0);
          v14 = *(v12 + 9);
        }

        v15 = *(v12 + 8);
        v16 = *(v12 + 6);
        v17 = *(v12 + 5);
        if ((v14 == 30 || v14 == 2) && *(v12 + 5) && inet_ntop(v14, v12 + 2, &string[1], 0x2Eu))
        {
          v18 = xpc_dictionary_create(0, 0, 0);
          v19 = v18;
          if (v15)
          {
            xpc_dictionary_set_uint64(v18, off_1000349E0[0], v15);
          }

          if (v16)
          {
            xpc_dictionary_set_uint64(v19, off_1000349E8[0], v16);
          }

          xpc_dictionary_set_uint64(v19, off_1000349F8[0], v14);
          xpc_dictionary_set_uint64(v19, off_100034A00[0], v17);
          xpc_dictionary_set_string(v19, off_1000349F0[0], &string[1]);
        }

        else
        {
          v19 = 0;
        }

        xpc_array_append_value(v10, v19);
        xpc_release(v19);
      }

      v12 = *v12;
    }

    while (v12);
    if (v10)
    {
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D1uLL);
      xpc_dictionary_set_value(v5, off_1000349D8[0], v10);
      v8 = 1;
    }

    else
    {
LABEL_35:
      sub_100001108(2u, "%s: no rules found", "netrbGetPortForwardingRules");
      xpc_dictionary_set_uint64(v5, off_1000348C8[0], 0x7D0uLL);
      v10 = 0;
      v8 = 0;
    }

    goto LABEL_11;
  }

  v8 = 1;
  v9 = 2001;
LABEL_10:
  xpc_dictionary_set_uint64(v5, off_1000348C8[0], v9);
  v10 = 0;
LABEL_11:
  sub_100001CD4(a1, v5);
  xpc_release(v5);
  if (v10)
  {
    xpc_release(v10);
  }

  return v8;
}

uint64_t sub_10000D32C(_xpc_connection_s *a1, void *a2)
{
  sub_100001108(1u, "adding low latency flow descriptor");

  return sub_10000D37C(a1, a2, 0);
}

uint64_t sub_10000D37C(_xpc_connection_s *a1, void *a2, int a3)
{
  if (!sub_100001E50(a2, a1))
  {
    sub_100001108(0, "invalid client for connection %p");
LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  v6 = qword_100034C38;
  if (!qword_100034C38)
  {
    goto LABEL_18;
  }

  v7 = 0;
  do
  {
    if (!v7)
    {
      v8 = v6[3];
      if (!v8 || (*(v8 + 776) & 2) != 0)
      {
        v7 = 0;
      }

      else if (*(v8 + 8) == 100)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    v6 = *v6;
  }

  while (v6);
  if (!v7)
  {
LABEL_18:
    v9 = "%s: no interface to install steering rules";
LABEL_27:
    sub_100001108(0, v9, "netrbModifyLowLatencyFlow", v23);
    goto LABEL_28;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  if ((sub_100006F24(a2, &v24) & 1) == 0)
  {
    v23 = v7 + 40;
    v9 = "%s: netrbInitIfnetTrafficDescriptor, network %s";
    goto LABEL_27;
  }

  if (BYTE9(v24) == 4 && (~BYTE8(v24) & 0x14) == 0 && PFQueryGatewayAddrAndPortForDescriptor())
  {
    DWORD2(v25) = 0;
    WORD6(v26) = 0;
    sub_100001108(1u, "%s: PFSetGatewayAddrAndPortForDescriptor success", "netrbModifyLowLatencyFlow");
  }

  else
  {
    sub_100001108(1u, "%s: deleting local addr and port", "netrbModifyLowLatencyFlow");
    BYTE8(v24) &= 0xEBu;
  }

  if ((sub_100009124(*(v7 + 24), &v24) & 0x80000000) != 0)
  {
    v9 = "%s: failed to translate addresses for 464xlat";
    goto LABEL_27;
  }

  LOBYTE(v24) = 2;
  WORD1(v24) = 48;
  DWORD1(v24) = 3;
  value = xpc_dictionary_get_value(a2, netrbClientLowLatencyFlowParam[0]);
  v11 = xpc_dictionary_get_value(value, netrbClientIfnetTrafficDescriptorDeviceId[0]);
  if (v11 && (v12 = v11, xpc_get_type(v11) == &_xpc_type_uint64))
  {
    v13 = xpc_uint64_get_value(v12);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  v20 = xpc_dictionary_get_value(value, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout[0]);
  if (v20 && (v21 = v20, xpc_get_type(v20) == &_xpc_type_uint64))
  {
    v22 = xpc_uint64_get_value(v21);
    sub_100001108(1u, "setting connection idle timeout %llu", v22);
  }

  else
  {
    v22 = 300;
  }

  v14 = sub_100008D14(v7, &v24, v13, v22, a3);
LABEL_29:
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v16 = reply;
    if (v14)
    {
      v17 = 2001;
    }

    else
    {
      v17 = 2000;
    }
  }

  else
  {
    v17 = 2000;
    do
    {
      sub_100001108(0, "failed to create xpc reply dictionary.");
      v18 = xpc_dictionary_create_reply(a2);
    }

    while (!v18);
    v16 = v18;
    v14 = 0;
  }

  xpc_dictionary_set_uint64(v16, off_1000348C8[0], v17);
  sub_100001CD4(a1, v16);
  xpc_release(v16);
  return v14 & 1;
}

uint64_t sub_10000D694(_xpc_connection_s *a1, void *a2)
{
  sub_100001108(1u, "removing low latency flow descriptor");

  return sub_10000D37C(a1, a2, 1);
}

uint64_t sub_10000D6E4(uint64_t a1, char a2, char *a3)
{
  if (*(a1 + 804) != 1 || (a2 & 1) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = socket(30, 2, 0);
    if (v6 < 0)
    {
      sub_100001108(0, "%s: failed to create socket: %m", "mis_query_nat64_prefix");
      *(a1 + 804) = -1;
      return 1;
    }

    v7 = v6;
    if (__strlcpy_chk() >= 0x10)
    {
      sub_100001108(0, "%s: failed to copy interface name: %m", "mis_query_nat64_prefix");
      v5 = 1;
LABEL_13:
      *(a1 + 804) = -1;
LABEL_14:
      close(v7);
      return v5;
    }

    if (ioctl(v7, 0xC06069C1uLL, &v12) < 0)
    {
      sub_100001108(1u, "%s: interface %s does not have nat64 prefix: %m");
      goto LABEL_12;
    }

    if ((v14 - 13) <= 0xFFFFFFF3)
    {
      sub_100001108(0, "%s: invalid NAT64 prefix length");
LABEL_12:
      v5 = 2;
      goto LABEL_13;
    }

    *(a1 + 804) = 1;
    if (*(a1 + 688) == v13 && *(a1 + 696) == *(&v13 + 1) && *(a1 + 704) == v14)
    {
      sub_100001108(1u, "%s: same nat64 prefix", "mis_query_nat64_prefix");
      if (a3)
      {
        v11 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      *(a1 + 688) = v13;
      *(a1 + 704) = v14;
      if (a3)
      {
        v11 = 1;
LABEL_27:
        *a3 = v11;
      }
    }

    sub_100001108(1u, "%s: successfully queried the NAT64 prefix of external interface %s", "mis_query_nat64_prefix", (a1 + 20));
    v5 = 0;
    goto LABEL_14;
  }

  sub_100001108(0, "%s: using cached NAT64 prefix", "mis_query_nat64_prefix");
  return 0;
}

uint64_t sub_10000D930()
{
  if (dword_100034A54 != -1)
  {
    return 0;
  }

  notify_key = nwi_state_get_notify_key();
  if (!notify_register_dispatch(notify_key, &dword_100034A54, qword_100034BD8, &stru_100030F50))
  {
    sub_10000D9C0();
    sub_10001D840(1);
    sub_10001D934(1);
    return 0;
  }

  sub_100001108(0, "notify_register_dispatch() for NWI key failed");
  result = 0xFFFFFFFFLL;
  dword_100034A54 = -1;
  return result;
}

uint64_t sub_10000D9C0()
{
  v0 = dword_100034C08;
  v1 = dword_100034C0C;
  v18 = 0;
  if (dword_100034A54 == -1)
  {
    v11 = "nwi notifications turned off";
LABEL_20:

    return sub_100001108(2u, v11);
  }

  v17 = nwi_state_copy();
  if (!v17)
  {
    v11 = "nwi_state_copy returned no state";
    goto LABEL_20;
  }

  sub_100001108(2u, "%s: resetting nwi_active in v4 and v6 nwi lists", "nwi_change_process");
  for (i = qword_100034BF8; i; i = *i)
  {
    *(i + 40) = *(i + 41);
    *(i + 28) = -1;
  }

  for (j = qword_100034C00; j; j = *j)
  {
    *(j + 40) = *(j + 41);
    *(j + 28) = -1;
  }

  dword_100034C08 = 0;
  dword_100034C0C = 0;
  result = sub_100012594(&v17, 2, &v18 + 1);
  if (v17)
  {
    v5 = result;
    result = sub_100012594(&v17, 30, &v18);
    if (v17)
    {
      v6 = (v0 != dword_100034C08) | v5;
      v7 = (v1 != dword_100034C0C) | result;
      if (v0 != dword_100034C08) | v5 & 1 || (v7)
      {
        v8 = qword_100034C38;
        if (qword_100034C38)
        {
          v9 = off_100034980[0];
          while (1)
          {
            v10 = v8[3];
            if (v10)
            {
              if (!strncmp((v10 + 20), v9, 4uLL))
              {
                break;
              }
            }

            v8 = *v8;
            if (!v8)
            {
              goto LABEL_45;
            }
          }

          v12 = HIDWORD(v18);
          if (SHIDWORD(v18) >= v18)
          {
            v12 = v18;
          }

          if (!v12)
          {
            v12 = 1500;
          }

          *(v10 + 12) = v12;
          *(v10 + 16) = v12 - 40;
          if (v6)
          {
            sub_10001BE98();
            v13 = qword_100034BF8;
            if (qword_100034BF8)
            {
              while (*(v13 + 40) != 1 || (*(v13 + 41) & 1) != 0)
              {
                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_34;
                }
              }

              nullsub_2();
            }
          }

LABEL_34:
          if ((v7 & (byte_100034BE9 == 0)) == 1)
          {
            sub_10001D2DC();
            v14 = qword_100034C00;
            if (qword_100034C00)
            {
              while (*(v14 + 40) != 1 || (*(v14 + 41) & 1) != 0)
              {
                v14 = *v14;
                if (!v14)
                {
                  goto LABEL_41;
                }
              }

              nullsub_2();
            }

LABEL_41:
            v15 = sub_10001F200();
            if (v15)
            {
              sub_100001108(0, "%s: rtadvd_config_refresh, %d", "nwi_change_process", v15);
            }

            v16 = sub_100020044();
            if (v16)
            {
              sub_100001108(0, "%s: dhcp6d_config_refresh, %d", "nwi_change_process", v16);
            }
          }
        }
      }

LABEL_45:

      return nwi_state_release();
    }
  }

  return result;
}

uint64_t sub_10000DCB4()
{
  result = dword_100034A54;
  if (dword_100034A54 != -1)
  {
    notify_cancel(dword_100034A54);
    dword_100034A54 = -1;
    v1 = qword_100034BF8;
    if (qword_100034BF8)
    {
      do
      {
        v2 = qword_100034BF8;
        if (qword_100034BF8 == v1)
        {
          v3 = &qword_100034BF8;
        }

        else
        {
          do
          {
            v3 = v2;
            v2 = *v2;
          }

          while (v2 != v1);
        }

        v4 = *v1;
        *v3 = *v2;
        free(v1);
        if (!dword_100034CE8)
        {
          sub_100020D2C();
        }

        --dword_100034CE8;
        v1 = v4;
      }

      while (v4);
    }

    v5 = qword_100034C00;
    if (qword_100034C00)
    {
      do
      {
        v6 = qword_100034C00;
        if (qword_100034C00 == v5)
        {
          v7 = &qword_100034C00;
        }

        else
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6 != v5);
        }

        v8 = *v5;
        *v7 = *v6;
        free(v5);
        if (!dword_100034CEC)
        {
          sub_100020D58();
        }

        --dword_100034CEC;
        v5 = v8;
      }

      while (v8);
    }

    sub_10001D840(0);
    result = sub_10001D934(0);
  }

  dword_100034C08 = 0;
  dword_100034C0C = 0;
  return result;
}

uint64_t sub_10000DDE4(uint64_t a1)
{
  v1 = (a1 + 20);
  if (!*(a1 + 20))
  {
    sub_100020DB0();
  }

  if ((*(a1 + 776) & 2) != 0)
  {
    sub_100020D84();
  }

  if (*(a1 + 8) != 102)
  {
    v3 = sub_10000E0F8(a1);
    if (v3)
    {
      v4 = v3;
      sub_100001108(0, "unable to listen to IPv6 prefix events");
      return v4;
    }
  }

  if (!*(a1 + 760))
  {
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = a1;
    v9 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.MobileInternetSharing", sub_100013310, &context);
    *(a1 + 760) = v9;
    if (v9)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v6 = CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x600u);
        if (v6)
        {
          NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v6, kSCEntNetIPv4);
          if (NetworkInterfaceEntity)
          {
            CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
            v8 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v6, kSCEntNetIPv6);
            if (v8)
            {
              CFArrayAppendValue(Mutable, v8);
              SCDynamicStoreSetNotificationKeys(*(a1 + 760), Mutable, 0);
              v10 = SCDynamicStoreSetDispatchQueue(*(a1 + 760), qword_100034BD8);
              if (v10)
              {
                sub_100013310(v10, Mutable, a1);
                goto LABEL_8;
              }

              v15 = SCError();
              v16 = SCErrorString(v15);
              sub_100001108(0, "%s: SCDynamicStoreSetDispatchQueue() failed: %s", "mis_set_dynamic_store_notification", v16);
              v4 = 22;
LABEL_22:
              v13 = *(a1 + 760);
              if (v13)
              {
                SCDynamicStoreSetDispatchQueue(v13, 0);
                CFRelease(*(a1 + 760));
                *(a1 + 760) = 0;
              }

              goto LABEL_24;
            }

            sub_100001108(0, "%s: failed to create v6 key for %s", "mis_set_dynamic_store_notification", v1);
LABEL_21:
            v4 = 12;
            goto LABEL_22;
          }

          sub_100001108(0, "%s: failed to create v4 key for %s", "mis_set_dynamic_store_notification", v1);
LABEL_20:
          v8 = 0;
          goto LABEL_21;
        }

        sub_100001108(0, "%s: CFStringCreateWithCString failed for %s", "mis_set_dynamic_store_notification", v1);
LABEL_19:
        NetworkInterfaceEntity = 0;
        goto LABEL_20;
      }

      sub_100001108(0, "%s: failed to create notify keys array for %s", "mis_set_dynamic_store_notification", v1);
    }

    else
    {
      v11 = __error();
      v12 = strerror(*v11);
      sub_100001108(0, "%s: SCDynamicStoreCreate failed for %s: %s", "mis_set_dynamic_store_notification", v1, v12);
      Mutable = 0;
    }

    v6 = 0;
    goto LABEL_19;
  }

  sub_100001108(0, "%s: already setup, %s", "mis_set_dynamic_store_notification", v1);
  Mutable = 0;
  v6 = 0;
  NetworkInterfaceEntity = 0;
  v8 = 0;
LABEL_8:
  sub_100001108(0, "%s: success, interface %s", "mis_set_dynamic_store_notification", v1);
  v4 = 0;
LABEL_24:
  if (v8)
  {
    CFRelease(v8);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    sub_100001108(0, "unable to set dynamic store notification");
    sub_10000E3A8(a1);
  }

  return v4;
}

uint64_t sub_10000E0F8(uint64_t a1)
{
  v12 = 1;
  if (*(a1 + 768))
  {
    return 0;
  }

  v14 = 0;
  v13 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v3 = socket(32, 3, 1);
  v4 = v3;
  if (v3 == -1)
  {
    sub_100001108(0, "socket() failed");
  }

  else
  {
    v13 = 0x100000001;
    v14 = 7;
    if (ioctl(v3, 0x800C6502uLL, &v13) == -1)
    {
      sub_100001108(0, "ioctl(, SIOCSKEVFILT,) failed\n");
    }

    else
    {
      if (ioctl(v4, 0x8004667EuLL, &v12) != -1)
      {
        v5 = dispatch_source_create(&_dispatch_source_type_read, v4, 0, qword_100034BD8);
        *(a1 + 768) = v5;
        if (v5)
        {
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 0x40000000;
          handler[2] = sub_100012A04;
          handler[3] = &unk_100030F90;
          handler[4] = a1;
          dispatch_source_set_event_handler(v5, handler);
          v6 = *(a1 + 768);
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 0x40000000;
          v9[2] = sub_100012C10;
          v9[3] = &unk_100030FB0;
          v10 = v4;
          dispatch_source_set_cancel_handler(v6, v9);
          dispatch_resume(*(a1 + 768));
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
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
          v1 = sub_100012C18(a1, &v15);
          if (!v1)
          {
            sub_100004C7C(a1, &v15);
            return v1;
          }

          sub_100001108(0, "failed to get IPv6 configuration for %s", (a1 + 20));
        }

        else
        {
          sub_100001108(0, "dispatch_source_create() failed");
          v1 = 12;
        }

        goto LABEL_13;
      }

      sub_100001108(0, "ioctl(, FIONBIO,) failed");
    }
  }

  v1 = *__error();
LABEL_13:
  v7 = *(a1 + 768);
  if (v7)
  {
    dispatch_source_cancel(v7);
    dispatch_release(*(a1 + 768));
    *(a1 + 768) = 0;
  }

  if (v4 != -1)
  {
    close(v4);
  }

  return v1;
}

uint64_t sub_10000E3A8(uint64_t a1)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (*(a1 + 288) == 1)
  {
    sub_100004C7C(a1, v6);
    *(a1 + 288) = 0;
  }

  v2 = *(a1 + 784);
  if (v2)
  {
    while ((*(v2 + 392) & 8) != 0)
    {
      v2 = *(v2 + 528);
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    sub_100004A70(a1, &in6addr_any);
  }

LABEL_8:
  if (*(a1 + 740))
  {
    sub_100004364(a1, 0, 0);
  }

  v3 = *(a1 + 760);
  if (v3)
  {
    SCDynamicStoreSetDispatchQueue(v3, 0);
    CFRelease(*(a1 + 760));
    *(a1 + 760) = 0;
  }

  v4 = *(a1 + 768);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 768));
    *(a1 + 768) = 0;
  }

  return 0;
}

void sub_10000E4B4(const char *a1, Boolean *a2, Boolean *a3)
{
  v6 = SCPreferencesCreate(0, @"com.apple.MobileInternetSharing", 0);
  *a2 = 0;
  *a3 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = sub_10000E61C(v6, a1);
    if (v8)
    {
      v9 = v8;
      v10 = SCNetworkServiceCopyProtocol(v8, kSCNetworkProtocolTypeIPv4);
      if (v10)
      {
        v11 = v10;
        *a2 = SCNetworkProtocolGetEnabled(v10);
        CFRelease(v11);
      }

      v12 = SCNetworkServiceCopyProtocol(v9, kSCNetworkProtocolTypeIPv6);
      if (v12)
      {
        v13 = v12;
        *a3 = SCNetworkProtocolGetEnabled(v12);
        CFRelease(v13);
      }

      v14 = "disabled";
      if (*a2 == 1)
      {
        v15 = "enabled";
      }

      else
      {
        v15 = "disabled";
      }

      if (*a3 == 1)
      {
        v14 = "enabled";
      }

      sub_100001108(1u, "interface protocol status for %s IPv4: %s, IPv6: %s", a1, v15, v14);
      CFRelease(v9);
    }

    else
    {
      sub_100001108(0, "%s: failed to find network service for %s", "mis_if_check_configuration", a1);
    }

    CFRelease(v7);
  }

  else
  {
    sub_100001108(0, "SCPreferencesCreate for %s returned NULL", a1);
  }
}

CFTypeRef sub_10000E61C(const __SCPreferences *a1, const char *a2)
{
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x600u);
  if (v4)
  {
    v5 = v4;
    v6 = SCNetworkSetCopyCurrent(a1);
    if (v6)
    {
      v7 = v6;
      v8 = SCNetworkSetCopyServices(v6);
      if (v8)
      {
        v9 = v8;
        Count = CFArrayGetCount(v8);
        if (Count < 1)
        {
LABEL_10:
          v16 = 0;
        }

        else
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
            Interface = SCNetworkServiceGetInterface(ValueAtIndex);
            if (Interface)
            {
              BSDName = SCNetworkInterfaceGetBSDName(Interface);
              if (BSDName)
              {
                if (CFEqual(BSDName, v5))
                {
                  break;
                }
              }
            }

            if (v11 == ++v12)
            {
              goto LABEL_10;
            }
          }

          v16 = CFRetain(ValueAtIndex);
        }

        CFRelease(v9);
      }

      else
      {
        sub_100001108(0, "SCNetworkSetCopyServices failed for (%s)", a2);
        v16 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      sub_100001108(0, "SCNetworkSetCopyCurrent failed for (%s)", a2);
      v16 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    sub_100001108(0, "CFStringCreateWithCString() failed for (%s)", a2);
    return 0;
  }

  return v16;
}