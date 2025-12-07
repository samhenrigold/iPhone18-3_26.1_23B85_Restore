uint64_t sub_10003B8DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 == &unk_10007D940)
  {
    v5 = sub_100022BD8(*(a3 + 20));
    if (v5)
    {
      return *(v5 + 248);
    }

    a2 = *(a3 + 12);
    a1 = qword_10007D7A8;
  }

  else if (a1 == &unk_10007D9C8)
  {
    result = sub_10004AB1C();
    if (!result)
    {
      return qword_10007E7B0;
    }

    return result;
  }

  return sub_100032848(a1, a2);
}

char *sub_10003B96C(void *a1, unint64_t a2, char *a3, char a4, uint64_t *a5, int *a6)
{
  if (!a1[13])
  {
    v14 = 0;
    goto LABEL_5;
  }

  v12 = sub_10003532C(a1, (a1 != qword_10007D8B8) << 7, a2, a5);
  if (v12)
  {
    v13 = v12;
    sub_1000304FC(qword_10007E7B0, a5, v12, "domain creation");
    v14 = 0;
    *a6 = v13;
    return v14;
  }

  if (a1 != qword_10007D8B8)
  {
    v16 = sub_1000168E0("%s/%lu", a1[15], a2);
    sub_1000396D8(qword_10007E7B0, v16, 0, 0, 0, a5, 112);
    *a6 = 112;
    free(v16);
    return 0;
  }

  memset(v25, 0, sizeof(v25));
  v18 = "(premature birth)";
  if (!(a2 >> 31))
  {
    v19 = *(a5 + 5);
    if ((v19 & 0x80000000) == 0 && v19 == a2)
    {
      v20 = sub_100022BD8(a2);
      if (v20)
      {
        v21 = sub_1000245A0(v20);
      }

      else
      {
        v21 = sub_100045C2C(a5, v25);
      }

      v18 = v21;
    }
  }

  v22 = sub_100032848(qword_10007D8B8, a2);
  if (v22)
  {
    v23 = sub_100016A6C(a3, *(v22 + 968));
    v14 = 0;
    if (v23)
    {
      v15 = 37;
    }

    else
    {
      v15 = 134;
    }

    goto LABEL_6;
  }

  v24 = sub_10003136C(qword_10007D8B8, a2, v18, a3, 0, qword_10007E7B0, a5);
  v14 = v24;
  if (a4)
  {
    sub_10002C908(v24, 5, "Will be pending launches until told otherwise");
    *(v14 + 254) |= 0x8000u;
    sub_10002D82C(v14, a5, 0);
    return v14;
  }

  sub_10002D82C(v24, a5, 0);
  if (!v14)
  {
LABEL_5:
    v15 = 112;
LABEL_6:
    *a6 = v15;
  }

  return v14;
}

void sub_10003BBB4(void *a1, const char *a2, void *a3, uint64_t a4)
{
  if (!(*(a1[14] + 104))(a1, 5, 0, a1[15], a4, 0, 0))
  {
    for (i = 0; i != 23; ++i)
    {
      for (j = a1[i + 42]; j; j = *(j + 120))
      {
        v10 = strtonum(a2, 1, 0x7FFFFFFFLL, 0);
        if (v10)
        {
          if (sub_100023F20(j) != v10)
          {
            continue;
          }
        }

        else if (!sub_100016A4C((j + 1424), a2))
        {
          v11 = sub_100024564(j);
          if (!sub_100016A4C(v11, a2))
          {
            continue;
          }
        }

        v12 = sub_100022158(j, 1);
        xpc_array_set_string(a3, 0xFFFFFFFFFFFFFFFFLL, v12);
        free(v12);
      }
    }

    for (k = a1[40]; k; k = k[2])
    {
      sub_10003BBB4(k, a2, a3, a4);
    }
  }
}

void sub_10003BCE0(uint64_t a1)
{
  if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
  {
    _os_assumes_log_ctx();
  }

  xpc_release(*(a1 + 32));
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

uint64_t sub_10003BD50(uint64_t a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v7 = 0;
  v20 = a1 + 544;
  do
  {
    v8 = *(v20 + 8 * v7);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 88);
        v10 = sub_100026F08(v8);
        if (sub_100016A6C(v10, a2))
        {
          memset(v23, 0, sizeof(v23));
          v11 = sub_100026F08(v8);
          v12 = sub_100045C2C(a4, v23);
          sub_100020018(v8, 5, "Terminating with cryptex %s, caller = %s[%d]", v11, v12, *(a4 + 20));
          dispatch_group_enter(a3);
          v13 = *(v8 + 336);
          if (v13)
          {
            v14 = sub_1000157D8();
            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            block[2] = sub_10003BF60;
            block[3] = &unk_100079470;
            block[4] = a3;
            dispatch_group_notify(v13, v14, block);
          }

          else
          {
            *(v8 + 336) = a3;
          }

          *(v8 + 368) |= 0x8000u;
          v15 = sub_100023BF8(v8);
          v16 = v15;
          if ((v15 - 36) > 0x35 || ((1 << (v15 - 36)) & 0x20000000000003) == 0)
          {
            if (v15)
            {
              v17 = xpc_strerror();
              sub_10002C908(a1, 3, "Error during cryptex termination: %d - %s", v16, v17);
            }
          }
        }

        v8 = v9;
      }

      while (v9);
    }

    ++v7;
  }

  while (v7 != 13);
  result = *(a1 + 320);
  if (result)
  {
    do
    {
      v19 = *(result + 16);
      sub_10003BD50(result, a2, a3, a4);
      result = v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_10003BF68(uint64_t a1, void *a2, void *a3)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (*(a1 + 112) != &unk_10007D720)
  {
    a1 = *(a1 + 232);
  }

  v6 = *(a1 + 136);
  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_value(reply, "parent", v6);
  result = 0;
  *a3 = reply;
  return result;
}

uint64_t sub_10003BFEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 4294966992;
  }

  string = xpc_dictionary_get_string(a3, "name");
  if (!string)
  {
    return 4294966992;
  }

  v9 = string;
  value = xpc_dictionary_get_value(a3, "port");
  if (!value)
  {
    return 1102;
  }

  v11 = value;
  if (xpc_get_type(value) != &_xpc_type_mach_send)
  {
    return 1102;
  }

  uint64 = xpc_dictionary_get_uint64(a3, "flags");
  v14 = sub_10003A148(a1, a2, v9, ((2 * (uint64 & 1)) | (uint64 >> 6) & 1) ^ 1, v11, 0, 0);
  result = sub_10003C524(v14);
  if (!result)
  {
    reply = xpc_dictionary_create_reply(a3);
    result = 0;
    *a4 = reply;
  }

  return result;
}

uint64_t sub_10003C0DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 4294966992;
  }

  string = xpc_dictionary_get_string(a3, "name");
  if (!string)
  {
    return 4294966992;
  }

  v9 = string;
  uint64 = xpc_dictionary_get_uint64(a3, "flags");
  object = 0;
  v11 = sub_10003A148(a1, a2, v9, ((2 * (uint64 & 1)) | (uint64 >> 6) & 1) ^ 1, 0, &object, 0);
  v12 = sub_10003C524(v11);
  if (!v12)
  {
    reply = xpc_dictionary_create_reply(a3);
    xpc_mach_send_get_right();
    xpc_dictionary_set_mach_recv();
    xpc_release(object);
    *a4 = reply;
  }

  return v12;
}

uint64_t sub_10003C1CC(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 4294966992;
  }

  sub_10004AB28();
  if (xpc_dictionary_get_uint64(a3, "type") != 7)
  {
    v8 = (*(*(a1 + 112) + 104))(a1, 6, 0, *(a1 + 120), a2, 0, 0);
    if (v8)
    {
      v9 = v8;
      sub_1000304FC(a1, a2, v8, "endpoint lookup");
      return v9;
    }
  }

  string = xpc_dictionary_get_string(a3, "name");
  if (!string)
  {
    return 4294966992;
  }

  v11 = string;
  int64 = xpc_dictionary_get_int64(a3, "targetpid");
  if (int64 < 0)
  {
    return 22;
  }

  uuid = xpc_dictionary_get_uuid(a3, "instance");
  uint64 = xpc_dictionary_get_uint64(a3, "flags");
  v15 = uint64;
  v16 = uint64 >> 3;
  if ((((uint64 >> 3) & 4) != 0 || (uint64 & 0x100) != 0) && !uuid)
  {
    return 22;
  }

  if ((*(a1 + 1017) & 0x10) != 0 && (uint64 & 0x10) == 0 && *(a1 + 112) == &unk_10007D720 && sub_10004EC0C(v11))
  {
    memset(v27, 0, sizeof(v27));
    v24 = sub_100045C2C(a2, v27);
    sub_10002C908(a1, 5, "pending bootstrap lookup during user switch: name = %s, requestor = %s[%d]", v11, v24, a2[5]);
    if (*(a1 + 136))
    {
      right = xpc_mach_send_get_right();
    }

    else
    {
      right = 0;
    }

    sub_1000391EC(a1, right, a3, 2);
    return 0;
  }

  else
  {
    v17 = v15 & 8 | (2 * (v15 & 1)) | (v15 >> 7) & 1 | v16 & 0x64;
    v18 = sub_100039278(a1, v11, int64 & 0x7FFFFFFF, v17 ^ 1, uuid, 0, a2);
    v20 = v19;
    if (v19)
    {
      reply = xpc_dictionary_create_reply(a3);
      v22 = sub_10003C524(v20);
      xpc_dictionary_set_int64(reply, "error", v22);
    }

    else
    {
      reply = xpc_dictionary_create_reply(a3);
      v26 = sub_10004C9DC(v18, 1);
      xpc_dictionary_set_value(reply, "port", v26);
      if (*(v18 + 88) < 0)
      {
        xpc_dictionary_set_BOOL(reply, "non-launching", 1);
      }
    }

    if (sub_1000395A0(v18, v20, v11, int64 & 0x7FFFFFFF, v17 ^ 1, uuid, 0, a2))
    {
      sub_100039624(a1, reply, v11);
    }

    v9 = 0;
    *a4 = reply;
  }

  return v9;
}

uint64_t sub_10003C4C4(void *a1, void *a2)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 4294966992;
  }

  reply = xpc_dictionary_create_reply(a1);
  xpc_dictionary_set_value(reply, "rootport", *(qword_10007E7B0 + 136));
  result = 0;
  *a2 = reply;
  return result;
}

uint64_t sub_10003C524(uint64_t result)
{
  if (result <= 36)
  {
    if (!result)
    {
      return result;
    }

    if (result != 1)
    {
      if (result == 3)
      {
        return 1102;
      }

      return 1105;
    }

    return 1100;
  }

  if (result > 144)
  {
    if (result != 159)
    {
      if (result == 145)
      {
        return 1102;
      }

      return 1105;
    }

    return 1100;
  }

  if (result != 37)
  {
    if (result == 56)
    {
      return 1101;
    }

    return 1105;
  }

  return 1103;
}

uint64_t sub_10003C590(_DWORD *a1, _DWORD *a2, char *__s1, void *a4, xpc_object_t *a5)
{
  if (!strcmp(__s1, "SubmitJob"))
  {
    if (!a4 || xpc_get_type(a4) != &_xpc_type_dictionary && xpc_get_type(a4) != &_xpc_type_array)
    {
      return 22;
    }

    if (xpc_get_type(a4) == &_xpc_type_array)
    {
      *a5 = xpc_array_create(0, 0);
      if (xpc_array_get_count(a4))
      {
        v32 = 0;
        do
        {
          value = xpc_array_get_value(a4, v32);
          v34 = sub_10003D408(a1, a2, value, 0);
          xpc_array_set_uint64(*a5, 0xFFFFFFFFFFFFFFFFLL, v34);
          ++v32;
        }

        while (v32 < xpc_array_get_count(a4));
      }

      return 0;
    }

    v54[0] = 0;
    v13 = sub_10003D408(a1, a2, a4, v54);
    if (!v13)
    {
      v14 = v54[0];
      if (!v54[0])
      {
        goto LABEL_80;
      }

      v15 = v54[0][92];
      if ((v15 & 8) == 0)
      {
        goto LABEL_80;
      }

      v54[0][92] = v15 & 0xFFFFFFF7;
      *(a1 + 124) = v14;
      return 36;
    }

    return v13;
  }

  if (!strcmp(__s1, "RemoveJob"))
  {
    if (!a4 || xpc_get_type(a4) != &_xpc_type_string)
    {
      return 22;
    }

    string_ptr = xpc_string_get_string_ptr(a4);
    v53 = a1;
    v17 = sub_1000390A8(&v53, string_ptr);
    if (v17)
    {
      v18 = v17;
      v19 = v53;
      v20 = sub_100030410(v53, 4, 8, a2, 0, 0);
      if (v20 || (v20 = sub_100021F44(), v20))
      {
        v13 = v20;
        v52 = string_ptr;
        v21 = "service removal (%s)";
LABEL_41:
        v30 = v19;
LABEL_54:
        sub_1000304FC(v30, a2, v13, v21, v52);
        return v13;
      }

      bzero(v54, 0x400uLL);
      sub_1000350A8(a2[5], v54);
      sub_100020018(v18, 5, "%s: caller = %s, value = 0x%llx", "legacy-remove service", v54, 0);
      v49 = sub_10000B7FC();
      v50 = sub_10002DDAC(v19, v49, v18);
      v13 = v50;
      if (v50)
      {
        if (v50 != 36)
        {
          v51 = xpc_strerror();
          sub_100020018(v18, 3, "Could not stop service: name = %s, error = %d: %s", string_ptr, v13, v51);
        }

        return v13;
      }

      goto LABEL_90;
    }

    return 3;
  }

  if (!strcmp(__s1, "StartJob"))
  {
    if (!a4 || xpc_get_type(a4) != &_xpc_type_string)
    {
      return 22;
    }

    v22 = xpc_string_get_string_ptr(a4);
    v54[0] = a1;
    v23 = sub_1000390A8(v54, v22);
    if (!v23)
    {
      return 3;
    }

    v24 = v23;
    a1 = v54[0];
    v25 = sub_100030410(v54[0], 4, 8, a2, 0, 0);
    if (v25)
    {
      v13 = v25;
      v52 = v22;
      v21 = "service start (%s)";
LABEL_53:
      v30 = a1;
      goto LABEL_54;
    }

    v47 = sub_1000234BC(v24, 9);
    v13 = v47;
    if (v47 > 0x25 || ((1 << v47) & 0x3000000001) == 0)
    {
      return v13;
    }

LABEL_80:
    v48 = xpc_uint64_create(0);
    v13 = 0;
LABEL_81:
    *a5 = v48;
    return v13;
  }

  if (!strcmp(__s1, "StopJob"))
  {
    if (!a4 || xpc_get_type(a4) != &_xpc_type_string)
    {
      return 22;
    }

    v26 = xpc_string_get_string_ptr(a4);
    v53 = a1;
    v27 = sub_1000390A8(&v53, v26);
    if (v27)
    {
      v28 = v27;
      v19 = v53;
      v29 = sub_100030410(v53, 4, 8, a2, 0, 0);
      if (v29)
      {
        v13 = v29;
        v52 = v26;
        v21 = "service stop (%s)";
        goto LABEL_41;
      }

      bzero(v54, 0x400uLL);
      sub_1000350A8(a2[5], v54);
      sub_100020018(v28, 5, "%s: caller = %s, value = 0x%llx", "legacy-stop service", v54, 0);
      v13 = sub_1000235C4(v28, a2);
      if (v13)
      {
        return v13;
      }

LABEL_90:
      v48 = xpc_uint64_create(0);
      goto LABEL_81;
    }

    return 3;
  }

  if (!strcmp(__s1, "GetJob"))
  {
    if (!a4 || xpc_get_type(a4) != &_xpc_type_string)
    {
      return 22;
    }

    v38 = xpc_string_get_string_ptr(a4);
    v36 = a1;
    v37 = a2;
    v39 = 0;
LABEL_62:

    return sub_10003CE9C(v36, v37, v38, v39, a5);
  }

  if (!strcmp(__s1, "GetJobs"))
  {
    v35 = sub_100030410(a1, 5, 128, a2, 0, 0);
    if (!v35)
    {
      v40 = xpc_dictionary_create(0, 0, 0);
      v41 = 0;
      v42 = a1 + 84;
      do
      {
        for (i = *&v42[2 * v41]; i; i = *(i + 120))
        {
          v44 = sub_100023F54(i);
          if (v44)
          {
            v45 = v44;
            xpc_dictionary_set_value(v40, (i + 1424), v44);
            xpc_release(v45);
          }

          else
          {
            xpc_dictionary_set_uint64(v40, (i + 1424), 0x99uLL);
          }
        }

        ++v41;
      }

      while (v41 != 23);
      v13 = 0;
      *a5 = v40;
      return v13;
    }

    v13 = v35;
    v21 = "all services read";
    goto LABEL_53;
  }

  if (!strcmp(__s1, "CheckIn"))
  {
    v36 = a1;
    v37 = a2;
    v38 = 0;
    v39 = 1;
    goto LABEL_62;
  }

  if (!strcmp(__s1, "SetUserEnvironment"))
  {
    if (a4 && xpc_get_type(a4) == &_xpc_type_dictionary)
    {

      return sub_10003D054(a1, a2, a4, a5);
    }

    return 22;
  }

  if (!strcmp(__s1, "UnsetUserEnvironment"))
  {
    if (a4 && xpc_get_type(a4) == &_xpc_type_string)
    {
      v46 = xpc_string_get_string_ptr(a4);

      return sub_10003D124(a1, a2, v46);
    }

    return 22;
  }

  if (strcmp(__s1, "Shutdown"))
  {
    if (!strcmp(__s1, "SingleUser"))
    {
      sub_10002C908(a1, 5, "LAUNCH_KEY_SINGLEUSER never did anything anyway.");
    }

    else
    {
      if (strcmp(__s1, "GetResourceLimits") && strcmp(__s1, "SetResourceLimits"))
      {
        if (!strcmp(__s1, "GetResourceUsageSelf"))
        {
          v10 = a1;
          v11 = a2;
          v12 = 0;
          goto LABEL_95;
        }

        if (!strcmp(__s1, "GetResourceUsageChildren"))
        {
          v10 = a1;
          v11 = a2;
          v12 = -1;
LABEL_95:

          return sub_10003D328(v10, v11, v12, a5);
        }

        return 22;
      }

      sub_10002C908(a1, 5, "rlimit(3)? Really?");
    }

    return 126;
  }

  return sub_10003D1D4(a1, a2, a5);
}

void sub_10003CE38(char *__s1, void *a2, uint64_t a3)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v10 = 0;
  v8 = sub_10003C590(v6, v7, __s1, a2, &v10);
  if (v8)
  {
    v10 = xpc_uint64_create(v8);
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    xpc_release(v9);
  }

  *(a3 + 16) = v10;
}

uint64_t sub_10003CE9C(_DWORD *a1, _DWORD *a2, char *a3, int a4, void *a5)
{
  v6 = a4;
  v15 = a1;
  if (!a3 || !a4)
  {
    if (a3)
    {
      v9 = sub_1000390A8(&v15, a3);
    }

    else
    {
      v9 = sub_100039F7C(&v15, a2[5], 0);
    }

    v10 = v9;
    if (!v9 || *(v9 + 296))
    {
      return 3;
    }

    if (v6)
    {
      if (sub_100023F20(v9) != a2[5])
      {
        memset(v16, 0, sizeof(v16));
        sub_100045C2C(a2, v16);
        sub_10002C908(v15, 3, "Unprivileged caller tried to check into job's endpoints: caller = %s.%d, owner = %s");
        return 1;
      }

      v12 = sub_100023F54(v10);
      sub_10003D77C(v15, v10, a2, v12, 1);
    }

    else
    {
      v13 = v15;
      v14 = sub_100030410(v15, 5, 8, a2, 0, 0);
      if (v14)
      {
        v8 = v14;
        sub_1000304FC(v13, a2, v14, "service read");
        return v8;
      }

      sub_100023F20(v10);
      v12 = sub_100023F54(v10);
      sub_10003A840(v10, v12);
    }

    v8 = 0;
    *a5 = v12;
    return v8;
  }

  sub_10002C908(a1, 3, "Caller tried to check into a named job: %s");
  return 1;
}

uint64_t sub_10003D054(uint64_t a1, _DWORD *a2, uint64_t a3, xpc_object_t *a4)
{
  if ((*(*(a1 + 112) + 128) & 2) != 0)
  {
    v5 = sub_100030410(a1, 4, 8, a2, 0, 0);
    if (v5)
    {
      sub_1000304FC(a1, a2, v5, "set domain environment");
    }

    else
    {
      *a4 = xpc_uint64_create(0);
      xpc_dictionary_apply_f();
    }
  }

  else
  {
    sub_10002C908(a1, 3, "LAUNCH_KEY_SETUSERENVIRONMENT is only valid for user domains.", a4);
    return 125;
  }

  return v5;
}

uint64_t sub_10003D124(uint64_t a1, _DWORD *a2, char *a3)
{
  if ((*(*(a1 + 112) + 128) & 2) != 0)
  {
    sub_10002C908(a1, 3, "LAUNCH_KEY_UNSETUSERENVIRONMENT is only valid for user domains.");
    return 125;
  }

  else
  {
    v6 = sub_100030410(a1, 4, 8, a2, 0, 0);
    if (v6)
    {
      sub_1000304FC(a1, a2, v6, "unset domain environment");
    }

    else
    {
      sub_10003AB10(a1, a3, 0, 0);
    }
  }

  return v6;
}

uint64_t sub_10003D1D4(mach_port_context_t a1, _DWORD *a2, xpc_object_t *a3)
{
  v6 = sub_100030410(a1, 4, 8, a2, 0, 0);
  if (v6)
  {
    v7 = v6;
    sub_1000304FC(a1, a2, v6, "domain shutdown");
  }

  else
  {
    v8 = *(a1 + 1016);
    v7 = 37;
    if ((v8 & 2) == 0 && (v8 & 1) == 0)
    {
      bzero(v10, 0x400uLL);
      sub_1000350A8(a2[5], v10);
      sub_10002C908(a1, 196613, "legacy shutdown initiated by: %s", v10);
      sub_10002C908(a1, 5, "legacy shutdown, caller = %s", v10);
      v7 = sub_10000B774(*(a1 + 184), -1, a1);
      if (v7)
      {
        _os_assumes_log_ctx();
      }

      else
      {
        *(a1 + 184) = 0;
        *a3 = xpc_uint64_create(0);
      }
    }
  }

  return v7;
}

uint64_t sub_10003D328(uint64_t a1, _DWORD *a2, int a3, xpc_object_t *a4)
{
  v8 = sub_100030410(a1, 5, 8, a2, 0, 0);
  if (v8)
  {
    v9 = v8;
    sub_1000304FC(a1, a2, v8, "read resource usage");
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
    v10 = getrusage(a3, &v12);
    if (v10)
    {
      if (v10 == -1)
      {
        sub_100054F58(a1);
      }

      return *__error();
    }

    else
    {
      v9 = 0;
      *a4 = xpc_data_create(&v12, 0x90uLL);
    }
  }

  return v9;
}

uint64_t sub_10003D408(_DWORD *a1, uint64_t a2, xpc_object_t object, char **a4)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v10 = sub_10003D5A4(a1, object, a2);
    v12 = v11;
    if (v11 == 134 && sub_1000443C8(a1))
    {
      v13 = a1;
      do
      {
        v14 = v13;
        v13 = *(v13 + 29);
      }

      while (v13);
      v10 = sub_10003D5A4(v14, object, a2);
      v12 = v15;
    }

    result = 0;
    if (v12)
    {
      if (v12 != 17 && v12 != 37)
      {
        string = xpc_dictionary_get_string(object, "Label");
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v17 = sub_100045C2C(a2, &v20);
        v18 = *(a2 + 20);
        v19 = xpc_strerror();
        sub_10002C908(a1, 3, "Could not import service from caller: caller = %s[%d], service = %s, error = %d: %s", v17, v18, string, v12, v19);
        return v12;
      }
    }

    else if (a4)
    {
      *a4 = v10;
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = sub_100045C2C(a2, &v20);
    sub_10002C908(a1, 3, "Could not import service from caller: caller = %s[%d], job is not a dictionary", v8, *(a2 + 20));
    return 22;
  }

  return result;
}

char *sub_10003D5A4(_DWORD *a1, void *a2, uint64_t a3)
{
  v13 = sub_100030410(a1, 3, 8, a3, 0, 0);
  if (v13)
  {
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__str = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  v8 = sub_100045C2C(a3, v14);
  snprintf(__str, 0x80uLL, "(submitted by %s[%d])", v8, *(a3 + 20));
  if (sub_1000303D4(a2, "Label"))
  {
    v9 = 640;
  }

  else
  {
    v9 = 512;
  }

  v12[0] = sub_10002E45C;
  v12[1] = sub_10002E8A0;
  v12[2] = sub_10002E9E8;
  v12[3] = sub_10002EB84;
  v12[4] = sub_10002EBE8;
  v12[5] = sub_10002ECE8;
  v12[6] = a1;
  v10 = sub_10000312C(a1, a2, __str, a3, v12, v9, &v13);
  if (v10)
  {
    v6 = v10;
    sub_10001B5B8(v10, 33);
    sub_10002D910(a1, v6);
    v11 = *(v6 + 176);
    sub_10001B690(v6, 33);
    if ((v11 & 0x20000000) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (!v13)
    {
      sub_1000543E8();
    }

    return 0;
  }

  return v6;
}

void sub_10003D77C(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, int a5)
{
  v9 = xpc_dictionary_create(0, 0, 0);
  for (i = *(a2 + 192); i; i = *(i + 16))
  {
    value = xpc_dictionary_get_value(v9, (i + 216));
    if (value)
    {
      v12 = xpc_retain(value);
    }

    else
    {
      v12 = xpc_array_create(0, 0);
      xpc_dictionary_set_value(v9, (i + 216), v12);
    }

    *&v22 = 0;
    object = 0;
    v13 = sub_10001E820(i, a2, a3, &v22, 0, &object);
    if (v13)
    {
      v14 = v13;
      v15 = xpc_strerror();
      sub_100020018(a2, 3, "Could not activate socket group: %s: %d: %s", (i + 216), v14, v15);
    }

    else if (object)
    {
      for (j = 0; j < object; ++j)
      {
        xpc_array_set_fd(v12, 0xFFFFFFFFFFFFFFFFLL, *(v22 + 4 * j));
      }
    }

    xpc_release(v12);
  }

  v17 = a4;
  xpc_dictionary_set_value(a4, "Sockets", v9);
  xpc_release(v9);
  if (a5)
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    if ((*(a2 + 369) & 2) != 0)
    {
      sub_100020018(a2, 4, "The launch(3) APIs cannot be used to check in MultipleInstance endpoints.");
    }

    for (k = *(a2 + 152); k; k = *(k + 16))
    {
      object = 0;
      *&v20 = -1;
      *(&v20 + 1) = -1;
      v22 = v20;
      v23 = v20;
      DWORD1(v23) = 0;
      DWORD1(v23) = sub_100023F20(a2);
      if (sub_10003A148(a1, &v22, (k + 168), 0, 0, &object, 0))
      {
        sub_100020018(a2, 3, "Failed to activate endpoint for legacy check-in. Please just don't use this API: %s", (k + 168));
      }

      else
      {
        sub_100020018(a2, 4, "Endpoint has been activated through legacy launch(3) APIs. Please switch to XPC or bootstrap_check_in(): %s", (k + 168));
        xpc_mach_send_get_right();
        xpc_dictionary_set_mach_recv();
        xpc_release(object);
      }
    }

    xpc_dictionary_set_value(v17, "MachServices", v18);
    xpc_release(v18);
  }
}

void sub_10003D9E4(char *a1, xpc_object_t object, uint64_t a3)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(object);

    sub_10003AB10(a3, a1, string_ptr, 0);
  }
}

BOOL sub_10003DA64(id a1, unint64_t a2, void *a3)
{
  string_ptr = xpc_string_get_string_ptr(a3);
  sub_10000C808(string_ptr);
  return 1;
}

void sub_10003DA88(uint64_t a1, uint64_t a2)
{
  *(a1 + 184) = a2;
  v4 = a2;
  v5 = sub_1000157D8();
  *(a1 + 152) = dispatch_source_create(&_dispatch_source_type_mach_send, v4, 1uLL, v5);
  sub_10001BB18(a1, 10);
  dispatch_set_context(*(a1 + 152), a1);
  dispatch_source_set_event_handler_f(*(a1 + 152), sub_10002CF10);
  dispatch_source_set_mandatory_cancel_handler_f();
  dispatch_activate(*(a1 + 152));
  if (*(a1 + 112) == qword_10007D8B8)
  {
    v6 = *(a1 + 120);
    v7 = sub_1000157D8();
    *(a1 + 144) = dispatch_source_create(&_dispatch_source_type_proc, v6, 0x20000000uLL, v7);
    sub_10001BB18(a1, 12);
    dispatch_set_context(*(a1 + 144), a1);
    dispatch_source_set_event_handler_f(*(a1 + 144), sub_10003DC8C);
    v8 = sub_100022BD8(*(a1 + 120));
    if (v8 && !sub_100024730(v8))
    {
      sub_10002C908(a1, 5, "deferring exec source uncork");
      *(a1 + 1016) |= 0x200u;
    }

    else
    {
      sub_10002C908(a1, 5, "uncorking exec source upfront");
      dispatch_activate(*(a1 + 144));
    }
  }

  if ((a2 - 1) > 0xFFFFFFFD || sub_1000344C4(a2))
  {

    sub_10002CDD4(a1);
  }
}

void sub_10003DC34(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  if (handle - 1 <= 0xFFFFFFFD && sub_10000B760(handle))
  {
    _os_assumes_log();
  }

  dispatch_release(a1);
}

void sub_10003DC8C(unint64_t a1)
{
  sub_10002C908(a1, 5, "domain exec event");
  *(a1 + 1016) |= 0x80u;

  sub_10002CF10(a1);
}

char *sub_10003DCF0()
{

  return sub_10002C974(v0, 1);
}

char *sub_10003DD0C(uint64_t a1)
{

  return sub_100022158(a1, 1);
}

char *sub_10003DD30(uint64_t a1, uint64_t a2)
{

  return sub_100022158(a2, 1);
}

uint64_t sub_10003DD68(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
    sub_100054404();
  }

  v3 = reply;
  os_unfair_lock_lock_with_options();
  if (qword_10007E900 == a1)
  {
    qword_10007E908 = v3;
  }

  os_unfair_lock_unlock(&unk_10007E910);
  return v3;
}

void sub_10003DDD0(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(&unk_10007E910);
  qword_10007E900 = a1;
  qword_10007E908 = 0;

  os_unfair_lock_unlock(&unk_10007E910);
}

uint64_t sub_10003DE30(uint64_t a1, NSObject *a2, void *a3)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(&unk_10007E910);
  if (qword_10007E908)
  {
    v6 = qword_10007E908 == a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v6)
  {
    os_unfair_lock_assert_owner(&unk_10007E910);
    qword_10007E900 = 0;
    qword_10007E908 = 0;
    os_unfair_lock_unlock(&unk_10007E910);
    xpc_dictionary_handoff_reply();
  }

  else
  {
    os_unfair_lock_unlock(&unk_10007E910);
    dispatch_async(a2, a3);
  }

  return v7;
}

uint64_t sub_10003DEF0()
{
  if ((*(sub_10003283C() + 1016) & 4) == 0)
  {
    sub_100054404();
  }

  multiuser_flags = 0;
  v0 = mach_host_self();
  if (host_get_multiuser_config_flags(v0, &multiuser_flags))
  {
    return 0;
  }

  else
  {
    return multiuser_flags & 0x3FFFFFFF;
  }
}

uint64_t sub_10003DF3C()
{
  if ((*(sub_10003283C() + 1016) & 4) == 0)
  {
    sub_100054404();
  }

  if (qword_10007E918 != -1)
  {
    sub_10005513C();
  }

  return byte_10007E920;
}

void sub_10003DF80(id a1)
{
  multiuser_flags = 0;
  v1 = mach_host_self();
  if (host_get_multiuser_config_flags(v1, &multiuser_flags))
  {
    v2 = 0;
  }

  else
  {
    v2 = (multiuser_flags & 0x80000000) != 0;
  }

  v3 = v2;
  byte_10007E920 = v3;
}

uint64_t sub_10003DFC4(int *a1)
{
  v1 = *a1;
  memset(v3, 0, sizeof(v3));
  v4 = v1;
  if (v1 == -101)
  {
    strcpy(&v3[12], "system");
  }

  else
  {
    snprintf(&v3[12], 0xFFuLL, "user.%d", v1);
  }

  if (kpersona_alloc() == -1)
  {
    sub_10005455C();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10003E0F4()
{
  result = kpersona_dealloc();
  if (result == -1)
  {
    return sub_10005455C();
  }

  return result;
}

uint64_t sub_10003E11C(uint64_t a1)
{
  if (kpersona_pidinfo())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003E1D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = *a3;
  v4 = kpersona_find_by_type();
  if (v4 < 0)
  {
    v6 = v4;
    v7 = *__error();
    v8 = __error();
    v9 = strerror(*v8);
    sub_10004749C(4, "kpersona_find_by_type() failed with ret %d errno %d - %s", v6, v7, v9);
    *a3 = 0;
    return *__error();
  }

  else
  {
    result = 0;
    *a3 = v10;
  }

  return result;
}

uint64_t sub_10003E268(uint64_t a1)
{
  if (kpersona_info())
  {
    return 4294967293;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003E33C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = sub_10004AB10();
  if (!sub_10000E554(v7, 38))
  {
    return 144;
  }

  v8 = *(v7 + 5);
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(buffer, 0, sizeof(buffer));
  result = sub_100045BEC(v8, buffer);
  if (!result)
  {
    v14 = 0;
    result = sub_100041F90(v8, &v14);
    if (result)
    {
      if (v14)
      {
        sub_100054404();
      }
    }

    else if (*(&v16 + 1) == *(*v14 + 1160))
    {
      if (a2 == 1200)
      {
        v10 = *v14;
        reply = xpc_dictionary_create_reply(a3);
        v12 = reply;
        v13 = *(v10 + 640);
        if (v13)
        {
          xpc_dictionary_set_value(reply, "additional-properties", v13);
        }

        result = 0;
        *a4 = v12;
      }

      else
      {
        return 33;
      }
    }

    else
    {
      return 113;
    }
  }

  return result;
}

FILE *sub_10003E478(const char *a1)
{
  if (byte_10007F0E3)
  {
    return 0;
  }

  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/launchd.log", a1);
  if (!access(__str, 0))
  {
    bzero(v9, 0x400uLL);
    snprintf(v9, 0x400uLL, "%s/launchd.log.1", a1);
    if (!access(v9, 0))
    {
      bzero(v8, 0x400uLL);
      snprintf(v8, 0x400uLL, "%s/launchd.log.2", a1);
      renamex_np(v9, v8, 0x10u);
    }

    renamex_np(__str, v9, 0x10u);
  }

  v2 = open(__str, 536872449, 438);
  if (v2 < 0)
  {
    v5 = __error();
    sub_10000E3C4("launchd.log: open(%s): %d\n", __str, *v5);
    return 0;
  }

  v3 = fdopen(v2, "w");
  v4 = v3;
  if (v3)
  {
    setvbuf(v3, 0, 0, 0x4000uLL);
  }

  else
  {
    v7 = __error();
    sub_10000E3C4("launchd.log: fdopen(%s): %d\n", __str, *v7);
  }

  return v4;
}

uint64_t sub_10003E614(char *a1, xpc_object_t object, _BYTE *a3, _BYTE *a4)
{
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    type = xpc_get_type(object);
    xpc_type_get_name(type);
    sub_100015968(a3, 3, "Expected string for a feature flag, got %s");
    return 0;
  }

  v10 = sub_100016A6C(a1, "#IfFeatureFlagEnabled");
  string_ptr = xpc_string_get_string_ptr(object);
  v12 = strchr(string_ptr, 47);
  if (!v12)
  {
    sub_100015968(a3, 3, "Feature flag string must have domain/feature format: %s");
    return 0;
  }

  v13 = v12;
  if (strchr(v12 + 1, 47))
  {
    sub_100015968(a3, 3, "Feature flag string must not have multiple '/' separators: %s");
    return 0;
  }

  v14 = sub_100016744(string_ptr, v13 - string_ptr);
  v15 = j___os_feature_enabled_impl(v14, (v13 + 1));
  free(v14);
  a4[1] |= v10 ^ v15;
  result = 1;
  *a4 = 1;
  return result;
}

BOOL sub_10003E738(char *a1, xpc_object_t object, _BYTE *a3, _BYTE *a4)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_string)
  {
    v11 = sub_100016A6C(a1, "#IfVariant");
    string_ptr = xpc_string_get_string_ptr(object);
    a4[1] |= v11 ^ j__os_variant_check("com.apple.xpc.launchd", string_ptr);
    *a4 = 1;
  }

  else
  {
    v9 = xpc_get_type(object);
    name = xpc_type_get_name(v9);
    sub_100015968(a3, 3, "Expected string for a variant, got %s", name);
  }

  return type == &_xpc_type_string;
}

uint64_t *sub_10003E80C(void *a1, _BYTE *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_dictionary)
  {
    v8 = 0;
    v9 = 0uLL;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    applier = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10003EB1C;
    v13 = &unk_100079538;
    v16 = a2;
    v17 = &v8;
    v14 = &v22;
    v15 = &v18;
    xpc_dictionary_apply(a1, &applier);
    if (*(v23 + 24) == 1)
    {
      if (*(v19 + 24) == 1)
      {
        sub_100015968(a2, 3, "Found unsupported directives");
      }

      else if (v8)
      {
        if (v9 != 0)
        {
          _Block_object_dispose(&v18, 8);
          _Block_object_dispose(&v22, 8);
          v6 = 16;
          if (!BYTE1(v8))
          {
            v6 = 8;
          }

          v7 = *(&v8 + v6);
          if (v7)
          {
            return sub_10003E80C(v7, a2);
          }

          else
          {
            return 0;
          }
        }

        sub_100015968(a2, 3, "Either %s or %s must be present");
      }

      else
      {
        sub_100015968(a2, 3, "Missing conditions");
      }
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    empty = xpc_dictionary_create_empty();
    applier = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10003EAC0;
    v13 = &unk_100079510;
    v14 = a2;
    v15 = empty;
    xpc_dictionary_apply(a1, &applier);
    return empty;
  }

  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    empty = xpc_array_create_empty();
    applier = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10003EC0C;
    v13 = &unk_100079558;
    v14 = a2;
    v15 = empty;
    xpc_array_apply(a1, &applier);
    return empty;
  }

  return xpc_copy(a1);
}

uint64_t sub_10003EAC0(uint64_t a1, const char *a2, void *a3)
{
  v5 = sub_10003E80C(a3, *(a1 + 32));
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_value(*(a1 + 40), a2, v5);
    xpc_release(v6);
  }

  return 1;
}

uint64_t sub_10003EB1C(void *a1, char *__s1, uint64_t a3)
{
  v7 = a1[6];
  v6 = a1[7];
  v8 = &off_10007DAB8;
  v9 = 4;
  do
  {
    if (sub_100016A6C(__s1, *(v8 - 1)))
    {
      LOBYTE(v10) = (*v8)(__s1, a3, v7, v6);
      goto LABEL_10;
    }

    v8 += 2;
    --v9;
  }

  while (v9);
  if (sub_100016A6C(__s1, "#Then"))
  {
    *(v6 + 8) = a3;
LABEL_9:
    LOBYTE(v10) = 1;
    goto LABEL_10;
  }

  v10 = sub_100016A6C(__s1, "#Else");
  if (v10)
  {
    *(v6 + 16) = a3;
    goto LABEL_9;
  }

LABEL_10:
  *(*(a1[4] + 8) + 24) |= v10;
  *(*(a1[5] + 8) + 24) |= v10 ^ 1;
  return 1;
}

uint64_t sub_10003EC0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10003E80C(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    xpc_array_append_value(*(a1 + 40), v4);
    xpc_release(v5);
  }

  return 1;
}

void sub_10003EC5C(void *a1, uint64_t a2)
{
  if (a1[2] != -1 || a1[3] != -1)
  {
    sub_100054404();
  }

  if (a1[6])
  {
    sub_100054404();
  }

  v2 = a1[5];

  sub_10001B690(v2, 0);
}

void sub_10003ECB8(void *a1, uint64_t a2)
{
  if (a1[5])
  {
    sub_100054404();
  }

  if (sub_1000496D0(a1[4]))
  {
    sub_100054404();
  }

  if (sub_1000496D0(a1[7]))
  {
    sub_100054404();
  }

  if (a1[6])
  {
    v3 = a1[2];
    v4 = a1[3];
    if (v3)
    {
      *(v3 + 24) = v4;
    }

    *v4 = v3;
    a1[2] = -1;
    a1[3] = -1;
  }

  sub_10001B690(a1[4], 0);
  v5 = a1[7];

  sub_10001B690(v5, 0);
}

uint64_t sub_10003ED5C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    sub_100054404();
  }

  return result;
}

void sub_10003ED78(void *a1, uint64_t a2)
{
  if (a1[2] != -1 || a1[3] != -1)
  {
    sub_100054404();
  }

  if (a1[4] != -1 || a1[5] != -1)
  {
    sub_100054404();
  }

  v2 = a1[7];

  xpc_release(v2);
}

uint64_t sub_10003EDF0(uint64_t a1, int a2, void *a3, xpc_object_t *a4)
{
  v7 = sub_10004AB10();
  v8 = a2 - 400;
  v9 = v7;
  v10 = 45;
  switch(v8)
  {
    case 0:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v86 = 0;
      v10 = sub_1000401D0(a3, 0, *(v9 + 20), 1, &v86);
      if (!v10)
      {
        reply = xpc_dictionary_create_reply(a3);
        *a4 = reply;
        if (v86)
        {
          v12 = *(v86 + 9);
        }

        else
        {
          v12 = 0;
        }

        xpc_dictionary_set_uint64(reply, "token", v12);
        return 0;
      }

      return v10;
    case 1:
      v37 = *(v7 + 5);
      v38 = a3;
      v39 = a4;
      return sub_100040420(v38, v39, v37);
    case 2:
      v14 = sub_100022BD8(*(v7 + 5));
      if (!v14)
      {
        return 1;
      }

      v15 = v14;
      string = xpc_dictionary_get_string(a3, "stream");
      uint64 = xpc_dictionary_get_uint64(a3, "token");
      v10 = 22;
      if (!string)
      {
        return v10;
      }

      v18 = uint64;
      if (!uint64 || !xpc_dictionary_expects_reply())
      {
        return v10;
      }

      v19 = *(v15 + 144);
      if (!v19)
      {
        return 3;
      }

      while (1)
      {
        v20 = *(v19 + 40);
        if (!strcmp((v20 + 40), string))
        {
          break;
        }

        v19 = *(v19 + 16);
        v10 = 3;
        if (!v19)
        {
          return v10;
        }
      }

      v68 = *(v20 + 16);
      if (!v68)
      {
        goto LABEL_103;
      }

      while (*(v68 + 72) != v18)
      {
        v68 = *(v68 + 32);
        if (!v68)
        {
          goto LABEL_103;
        }
      }

      v52 = xpc_dictionary_create_reply(a3);
      xpc_dictionary_set_string(v52, "name", (v68 + 88));
      goto LABEL_58;
    case 3:
      v46 = sub_100022BD8(*(v7 + 5));
      if (!v46)
      {
        return 1;
      }

      v47 = v46;
      v48 = xpc_dictionary_get_string(a3, "stream");
      if (!v48)
      {
        return 22;
      }

      v49 = v48;
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v50 = *(v47 + 144);
      if (!v50)
      {
        goto LABEL_53;
      }

      while (strcmp((*(v50 + 40) + 40), v49))
      {
        v50 = *(v50 + 16);
        if (!v50)
        {
LABEL_53:
          if ((*(v47 + 368) & 0x10) != 0)
          {
            return 124;
          }

          if (!sub_10000E554(v9, 7))
          {
            return 3;
          }

          LODWORD(v86) = 0;
          v51 = sub_10003F66C(v47, v49, 1, &v86);
          v10 = v86;
          if (v86)
          {
            return v10;
          }

          v50 = v51;
          if (!v51)
          {
            sub_100054404();
          }

          break;
        }
      }

      v52 = xpc_dictionary_create_reply(a3);
      sub_1000405C0(v52, v50);
LABEL_58:
      v10 = 0;
      goto LABEL_59;
    case 4:
      v53 = sub_100022BD8(*(v7 + 5));
      if (!v53)
      {
        return 1;
      }

      v54 = v53;
      v55 = xpc_dictionary_get_string(a3, "stream");
      v56 = xpc_dictionary_get_uint64(a3, "token");
      v10 = 22;
      if (!v55)
      {
        return v10;
      }

      v57 = v56;
      if (!v56 || !xpc_dictionary_expects_reply())
      {
        return v10;
      }

      v19 = *(v54 + 144);
      if (!v19)
      {
        return 3;
      }

      while (1)
      {
        v58 = *(v19 + 40);
        if (!strcmp((v58 + 40), v55))
        {
          break;
        }

        v19 = *(v19 + 16);
        v10 = 3;
        if (!v19)
        {
          return v10;
        }
      }

      v70 = *(v58 + 16);
      if (!v70)
      {
        goto LABEL_103;
      }

      while (*(v70 + 72) != v57)
      {
        v70 = *(v70 + 32);
        if (!v70)
        {
          goto LABEL_103;
        }
      }

      v73 = xpc_dictionary_get_BOOL(a3, "state");
      v74 = *(v70 + 80);
      *(v70 + 80) = v74 & 0xFE | v73;
      if (v73)
      {
        if ((v74 & 2) != 0)
        {
          v75 = 11;
        }

        else
        {
          v75 = 8;
        }

        v76 = sub_1000234BC(*(v70 + 48), v75);
        if (v76 > 0x25 || ((1 << v76) & 0x3000000001) == 0)
        {
          v78 = v76;
          v79 = *(v70 + 48);
          v80 = xpc_strerror();
          sub_100020018(v79, 3, "Could not spawn service in response to XPC event state change: %d: %s", v78, v80);
        }

        if ((*(v70 + 80) & 2) != 0)
        {
          sub_100040094(v70);
          sub_10001B690(v70, 0);
        }
      }

      v10 = 0;
      *a4 = xpc_dictionary_create_reply(a3);
      return v10;
    case 5:
    case 7:
      return v10;
    case 6:
      v41 = sub_100022BD8(*(v7 + 5));
      if (!v41)
      {
        return 1;
      }

      v42 = v41;
      v43 = xpc_dictionary_get_string(a3, "stream");
      if (!v43)
      {
        return 22;
      }

      v44 = v43;
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v45 = *(v42 + 144);
      if (!v45)
      {
        goto LABEL_44;
      }

      while (strcmp((*(v45 + 40) + 40), v44))
      {
        v45 = *(v45 + 16);
        if (!v45)
        {
LABEL_44:
          if ((*(v42 + 368) & 0x10) != 0)
          {
            return 124;
          }

          else
          {
            return 3;
          }
        }
      }

      if (*(v45 + 56))
      {
        v67 = xpc_dictionary_create_reply(a3);
        if ((xpc_pipe_routine_reply() & 0xFFFFFFDF) != 0)
        {
          _os_assumes_log();
        }

        xpc_release(v67);
        return 0;
      }

      else
      {
        if (*(v45 + 48))
        {
          if ((xpc_pipe_routine_reply() & 0xFFFFFFDF) != 0)
          {
            _os_assumes_log();
          }

          xpc_release(*(v45 + 48));
          *(v45 + 48) = 0;
        }

        v10 = 0;
        *(v45 + 48) = xpc_dictionary_create_reply(a3);
      }

      return v10;
    case 8:
      v59 = sub_100022BD8(*(v7 + 5));
      if (!v59)
      {
        return 1;
      }

      v60 = v59;
      v61 = xpc_dictionary_get_string(a3, "stream");
      v62 = xpc_dictionary_get_uint64(a3, "token");
      v10 = 22;
      if (!v61)
      {
        return v10;
      }

      v63 = v62;
      if (!v62 || !xpc_dictionary_expects_reply())
      {
        return v10;
      }

      v64 = *(v60 + 144);
      if (!v64)
      {
        return 3;
      }

      while (1)
      {
        v65 = *(v64 + 40);
        if (!strcmp((v65 + 40), v61))
        {
          break;
        }

        v64 = *(v64 + 16);
        v10 = 3;
        if (!v64)
        {
          return v10;
        }
      }

      v72 = *(v65 + 16);
      if (!v72)
      {
LABEL_107:
        v71 = *(v64 + 56);
        goto LABEL_108;
      }

      while (*(v72 + 72) != v63)
      {
        v72 = *(v72 + 32);
        if (!v72)
        {
          goto LABEL_107;
        }
      }

      xpc_dictionary_set_string(a3, "name", (v72 + 88));
      int64 = xpc_dictionary_get_int64(a3, "subscriber-pid");
      v86 = 0;
      v10 = sub_1000401D0(a3, v64, int64, 0, &v86);
      if (!v10)
      {
        v52 = xpc_dictionary_create_reply(a3);
        sub_1000405C0(v52, v64);
        if (v86)
        {
          v82 = *(v86 + 9);
        }

        else
        {
          v82 = 0;
        }

        xpc_dictionary_set_uint64(v52, "token", v82);
LABEL_59:
        *a4 = v52;
      }

      return v10;
    case 9:
      v31 = sub_100022BD8(*(v7 + 5));
      if (!v31)
      {
        return 1;
      }

      v32 = v31;
      v33 = xpc_dictionary_get_string(a3, "stream");
      v34 = xpc_dictionary_get_uint64(a3, "token");
      v10 = 22;
      if (!v33)
      {
        return v10;
      }

      v35 = v34;
      if (!v34 || !xpc_dictionary_expects_reply())
      {
        return v10;
      }

      v19 = *(v32 + 144);
      if (!v19)
      {
        return 3;
      }

      break;
    case 10:
      v13 = sub_10004074C;
      return sub_100040678(a3, a4, v7, v13);
    case 11:
      v13 = sub_1000409D8;
      return sub_100040678(a3, a4, v7, v13);
    case 12:
      v21 = sub_100022BD8(*(v7 + 5));
      if (!v21)
      {
        return 1;
      }

      v22 = v21;
      v23 = xpc_dictionary_get_string(a3, "stream");
      v24 = xpc_dictionary_get_string(a3, "name");
      value = xpc_dictionary_get_value(a3, "descriptor");
      v26 = xpc_dictionary_get_int64(a3, "subscriber-pid");
      v10 = 22;
      if (!v23)
      {
        return v10;
      }

      if (!v24)
      {
        return v10;
      }

      v27 = v26;
      if (!v26 || !value || xpc_get_type(value) != &_xpc_type_dictionary || !xpc_dictionary_expects_reply())
      {
        return v10;
      }

      v28 = sub_100022BD8(v27);
      if (!v28)
      {
        return 113;
      }

      v29 = *(v22 + 144);
      if (!v29)
      {
        return 3;
      }

      v30 = v28;
      while (strcmp((*(v29 + 40) + 40), v23))
      {
        v29 = *(v29 + 16);
        v10 = 3;
        if (!v29)
        {
          return v10;
        }
      }

      v83 = sub_10003FEB4(v30, v23, v24, value, 0);
      v84 = xpc_dictionary_create_reply(a3);
      v52 = v84;
      if (v83)
      {
        sub_1000405C0(v84, v29);
        v85 = *(v83 + 9);
      }

      else
      {
        v85 = 0;
      }

      xpc_dictionary_set_uint64(v52, "token", v85);
      goto LABEL_58;
    default:
      return 33;
  }

  while (1)
  {
    v36 = *(v19 + 40);
    if (!strcmp((v36 + 40), v33))
    {
      break;
    }

    v19 = *(v19 + 16);
    v10 = 3;
    if (!v19)
    {
      return v10;
    }
  }

  v69 = *(v36 + 16);
  if (v69)
  {
    while (*(v69 + 72) != v35)
    {
      v69 = *(v69 + 32);
      if (!v69)
      {
        goto LABEL_103;
      }
    }

    xpc_dictionary_set_string(a3, "name", (v69 + 88));
    v37 = xpc_dictionary_get_int64(a3, "subscriber-pid");
    v38 = a3;
    v39 = a4;
    return sub_100040420(v38, v39, v37);
  }

  else
  {
LABEL_103:
    v71 = *(v19 + 56);
LABEL_108:
    if (v71)
    {
      return 132;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_10003F66C(uint64_t a1, const char *a2, char a3, int *a4)
{
  v8 = sub_10002D754(*(a1 + 248));
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = sub_10003F854(v8, a2);
  v9 = v18[3];
  if ((a3 & 1) == 0 && !v9)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_10003F918;
    v16[3] = &unk_100079580;
    v16[4] = &v17;
    v16[5] = a2;
    sub_10003F8AC(v8, v16);
    v9 = v18[3];
  }

  if (v9)
  {
    v10 = sub_100022158(*(v9 + 32), 2);
    sub_100020018(a1, 3, "Event stream %s is already monitored by %s, ignoring", a2, v10);
    free(v10);
    v11 = 0;
    if (a4)
    {
      v12 = 17;
LABEL_14:
      *a4 = v12;
    }
  }

  else if (sub_100002D28(a1, 5))
  {
    v11 = sub_10001BCFC(0);
    v13 = sub_10001BD7C(a2);
    v11[5] = v13;
    *(v13 + 4) = v11;
    v14 = *(a1 + 144);
    v11[2] = v14;
    if (v14)
    {
      *(v14 + 24) = v11 + 2;
    }

    *(a1 + 144) = v11;
    v11[3] = a1 + 144;
    sub_10004954C(v8[4], a2, v11);
    v11[4] = a1;
    *(v11 + 56) = v11[7] & 0xF9 | (2 * (a3 & 3));
    sub_10003F968(v11, v8);
    if (a4)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    sub_100020018(a1, 3, "Non-system service tried to claim event stream %s", a2);
    v11 = 0;
    if (a4)
    {
      v12 = 150;
      goto LABEL_14;
    }
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

rb_tree_t **sub_10003F854(uint64_t a1, const void *a2)
{
  v3 = a1;
  result = sub_100049614(*(a1 + 32), a2);
  if (!result)
  {
    while (1)
    {
      v3 = *(v3 + 48);
      if (!v3)
      {
        break;
      }

      result = sub_100049614(*(v3 + 32), a2);
      if (result && (result[7] & 2) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10003F8AC(uint64_t result, uint64_t a2)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = result;
    do
    {
      v5 = *(v3 + 16);
      (*(a2 + 16))(a2);
      v3 = v5;
    }

    while (v5);
    result = *(v4 + 40);
    if (result)
    {
      do
      {
        v6 = *(result + 16);
        sub_10003F8AC(result, a2);
        result = v6;
      }

      while (v6);
    }
  }

  return result;
}

rb_tree_t **sub_10003F918(rb_tree_t **result, uint64_t a2)
{
  if (!*(result[4]->opaque[1] + 3))
  {
    v2 = result;
    result = sub_100049614(*(a2 + 32), result[5]);
    *(v2[4]->opaque[1] + 3) = result;
  }

  return result;
}

uint64_t sub_10003F968(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049614(*(a2 + 56), (*(a1 + 40) + 40));
  if (v4)
  {
    v5 = v4;
    sub_10001B5B8(v4, 46);
    v6 = v5[2];
    if (v6)
    {
      do
      {
        v7 = v6->opaque[4];
        if ((*(a1 + 56) & 4) != 0 && !sub_100002D28(v6->opaque[6], 6))
        {
          sub_100020018(v6->opaque[6], 4, "Rejecting untrusted event subscription on stream %s", (*(a1 + 40) + 40));
          v8 = v6->opaque[2];
          v9 = v6->opaque[3];
          if (v8)
          {
            v8[3] = v9;
          }

          *v9 = v8;
          v6->opaque[2] = -1;
          v6->opaque[3] = -1;
          sub_10003FC8C(v6, 1, 1);
          sub_10001B690(v6, 0);
        }

        else
        {
          sub_10003FC8C(v6, 0, 1);
          if ((sub_100040AD8(v6, a1, 1) & 1) == 0)
          {
            sub_100054404();
          }
        }

        v6 = v7;
      }

      while (v7);
    }

    sub_10004954C(*(a2 + 56), v5 + 5, 0);
    sub_10001B690(v5, 46);
    return 1;
  }

  else
  {
    if ((*(a1 + 56) & 2) != 0)
    {
      return 0;
    }

    v11 = *(a2 + 40);
    if (!v11)
    {
      return 0;
    }

    else
    {
      do
      {
        result = sub_10003F968(a1, v11);
        if (result)
        {
          break;
        }

        v11 = *(v11 + 16);
      }

      while (v11);
    }
  }

  return result;
}

uint64_t sub_10003FAEC(uint64_t a1, uint64_t a2)
{
  for (result = *(*(a1 + 40) + 16); result; result = *(result + 32))
  {
    if (*(result + 72) == a2)
    {
      break;
    }
  }

  return result;
}

void sub_10003FB28(uint64_t a1)
{
  v2 = sub_10002D754(*(*(a1 + 32) + 248));
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    *(v3 + 24) = v4;
  }

  *v4 = v3;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  sub_10004954C(v2[4], (*(a1 + 40) + 40), 0);
  v5 = *(*(a1 + 40) + 16);
  if (v5)
  {
    do
    {
      v6 = v5[4];
      v7 = sub_10002D754(*(v5[6] + 248));
      v8 = sub_10003FC1C(v7, (*(a1 + 40) + 40));
      sub_10003FC8C(v5, 0, 1);
      sub_10003FD48(v5, v8);
      v5 = v6;
    }

    while (v6);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    xpc_dictionary_set_int64(v9, "error", 124);
    if ((xpc_pipe_routine_reply() & 0xFFFFFFDF) != 0)
    {
      _os_assumes_log();
    }

    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
  }
}

char *sub_10003FC1C(uint64_t a1, const char *a2)
{
  v4 = sub_100049614(*(a1 + 56), a2);
  if (!v4)
  {
    v4 = sub_10001BD7C(a2);
    sub_10004954C(*(a1 + 56), a2, v4);
    sub_10001B690(v4, 0);
  }

  return v4;
}

void sub_10003FC8C(void *result, int a2, int a3)
{
  v3 = result[4];
  v4 = result[8];
  result[8] = 0;
  result[9] = 0;
  v5 = result[5];
  if (v3)
  {
    *(v3 + 40) = v5;
  }

  *v5 = v3;
  result[4] = -1;
  result[5] = -1;
  --*(v4 + 24);
  if (*(v4 + 32))
  {
    if (a3)
    {
      v6 = *(v4 + 32);

      sub_100040164(v6);
    }
  }

  else if (a2 && !*(v4 + 16))
  {
    v7 = *(sub_10002D754(*(result[6] + 248)) + 7);

    sub_10004954C(v7, (v4 + 40), 0);
  }
}

void sub_10003FD48(void *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    sub_100054404();
  }

  sub_100040B64(a1, a2);
}

uint64_t sub_10003FD70(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100049ECC(a2, a3, "%s => {", a4, a5, a6, a7, a8, a1 + 88);
  if (*(a1 + 80))
  {
    v16 = "1";
  }

  else
  {
    v16 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "keepalive = %s", v11, v12, v13, v14, v15, v16);
  sub_100049ECC(a2, a3 + 1, "service = %s", v17, v18, v19, v20, v21, *(a1 + 48) + 1424);
  sub_100049ECC(a2, a3 + 1, "stream = %s", v22, v23, v24, v25, v26, *(a1 + 64) + 40);
  v32 = *(*(a1 + 64) + 32);
  if (v32)
  {
    sub_100049ECC(a2, a3 + 1, "monitor = %s", v27, v28, v29, v30, v31, *(v32 + 32) + 1424);
  }

  sub_100049E5C(a2, a3 + 1, "descriptor = ", v27, v28, v29, v30, v31);
  sub_100017184(a2, a3 + 1, 0, *(a1 + 56), v33, v34, v35, v36);

  return sub_100049ECC(a2, a3, "}", v37, v38, v39, v40, v41);
}

char *sub_10003FEB4(void *a1, const char *a2, const char *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_10002D754(a1[31]);
  v11 = sub_10003F854(v10, a2);
  v12 = v11;
  if (v11 && (v11[7] & 4) != 0 && (sub_100002D28(a1, 6) & 1) == 0)
  {
    sub_100020018(a1, 4, "Rejecting untrusted event subscription on stream %s", a2);
    return 0;
  }

  v13 = (a1 + 17);
  v14 = strlen(a3);
  v15 = sub_10001BDCC(v14 + 1);
  strcpy(v15 + 88, a3);
  *(v15 + 6) = a1;
  *(v15 + 7) = xpc_retain(a4);
  v15[80] = v15[80] & 0xFD | (2 * (strcmp(a2, "com.apple.launchd.helper") == 0));
  v16 = a1[17];
  *(v15 + 2) = v16;
  if (v16)
  {
    *(v16 + 24) = v15 + 16;
  }

  *v13 = v15;
  *(v15 + 3) = v13;
  if (v12)
  {
    if ((sub_100040AD8(v15, v12, v5) & 1) == 0)
    {
      sub_100054404();
    }
  }

  else
  {
    v17 = sub_10003FC1C(v10, a2);
    sub_10003FD48(v15, v17);
  }

  v18 = sub_100033184(a1[31], a1, a2);
  v19 = strcmp(a2, "com.apple.iokit.matching");
  if (xpc_get_type(a4) == &_xpc_type_dictionary)
  {
    v20 = xpc_dictionary_get_BOOL(a4, "IOMatchLaunchStream");
    if (v19)
    {
LABEL_15:
      sub_10004C848(v18);
      return v15;
    }
  }

  else
  {
    v20 = 0;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  if (v20)
  {
    goto LABEL_15;
  }

  return v15;
}

void sub_100040094(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  if (v1)
  {
    *(v1 + 24) = v2;
  }

  *v2 = v1;
  a1[2] = -1;
  a1[3] = -1;
  sub_10003FC8C(a1, 1, 1);
}

void *sub_1000400BC(uint64_t a1)
{
  v2 = sub_10001BD3C(0);
  v3 = v2;
  if (a1)
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 40);
    v2[2] = v5;
    v2[6] = a1;
    if (v5)
    {
      *(v5 + 24) = v2 + 2;
    }

    *v4 = v2;
    v2[3] = v4;
  }

  v2[4] = sub_1000496EC();
  v3[7] = sub_1000496EC();
  v3[8] = 1;
  return v3;
}

rb_tree_t **sub_100040128(rb_tree_t **result)
{
  if ((result[9] & 1) == 0)
  {
    *(result + 72) |= 1u;
    return sub_10004964C(result[4], &stru_1000795C0);
  }

  return result;
}

void sub_10004014C(id a1, const char *a2, id a3)
{
  if (*(*(a3 + 5) + 16))
  {
    sub_100040164(a3);
  }
}

uint64_t sub_100040164(uint64_t a1)
{
  *(a1 + 56) |= 1u;
  if (*(a1 + 48))
  {
    if ((xpc_pipe_routine_reply() & 0xFFFFFFDF) != 0)
    {
      _os_assumes_log();
    }

    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  v2 = *(a1 + 32);

  return sub_1000232CC(v2);
}

uint64_t sub_1000401D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  if (a3)
  {
    v9 = sub_100022BD8(a3);
    if (!v9)
    {
      return 113;
    }
  }

  else
  {
    v9 = 0;
  }

  string = xpc_dictionary_get_string(a1, "stream");
  v12 = xpc_dictionary_get_string(a1, "name");
  value = xpc_dictionary_get_value(a1, "descriptor");
  uint64 = xpc_dictionary_get_uint64(a1, "token");
  result = 22;
  if (string && v12)
  {
    if (value && xpc_get_type(value) != &_xpc_type_dictionary)
    {
      return 22;
    }

    if (v9)
    {
      v15 = sub_1000403BC(v9, string, v12);
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = 0;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    if (!v15 && uint64)
    {
      v15 = *(*(a2 + 40) + 16);
      if (!v15)
      {
        goto LABEL_27;
      }

      while (v15[9] != uint64)
      {
        v15 = v15[4];
        if (!v15)
        {
          goto LABEL_27;
        }
      }

LABEL_21:
      if (value)
      {
        v16 = v15[7];
        if (v16)
        {
          if (xpc_equal(value, v16))
          {
            goto LABEL_30;
          }
        }
      }

      sub_10004749C(5, "Remove subscription with token %llu", v15[9]);
      v17 = v15[2];
      v18 = v15[3];
      if (v17)
      {
        *(v17 + 24) = v18;
      }

      *v18 = v17;
      v15[2] = -1;
      v15[3] = -1;
      sub_10003FC8C(v15, 1, a4);
      sub_10001B690(v15, 0);
LABEL_27:
      if (value)
      {
        v15 = sub_10003FEB4(v9, string, v12, value, a4);
      }

      else
      {
        v15 = 0;
      }

LABEL_30:
      result = 0;
      *a5 = v15;
      return result;
    }

LABEL_20:
    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1000403BC(uint64_t a1, char *__s2, const char *a3)
{
  for (i = *(a1 + 136); i; i = *(i + 16))
  {
    if (!strcmp((*(i + 64) + 40), __s2) && !strcmp((i + 88), a3))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100040420(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_100022BD8(a3);
  if (!v5)
  {
    return 113;
  }

  v6 = v5;
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  string = xpc_dictionary_get_string(a1, "stream");
  v8 = xpc_dictionary_get_string(a1, "name");
  if (!string)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    for (i = *(v6 + 136); i; i = *(i + 16))
    {
      v13 = *(i + 64);
      value = xpc_dictionary_get_value(v10, (v13 + 40));
      if (!value)
      {
        value = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_value(v10, (v13 + 40), value);
        xpc_release(value);
      }

      xpc_dictionary_set_value(value, (i + 88), *(i + 56));
    }

    goto LABEL_18;
  }

  if (!v8)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    for (j = *(v6 + 136); j; j = *(j + 16))
    {
      if (!strcmp((*(j + 64) + 40), string))
      {
        xpc_dictionary_set_value(v10, (j + 88), *(j + 56));
      }
    }

    goto LABEL_18;
  }

  v9 = sub_1000403BC(v6, string, v8);
  if (v9)
  {
    v10 = xpc_retain(*(v9 + 56));
LABEL_18:
    reply = xpc_dictionary_create_reply(a1);
    xpc_dictionary_set_value(reply, "event", v10);
    xpc_release(v10);
    result = 0;
    *a2 = reply;
    return result;
  }

  return 3;
}

void sub_1000405C0(void *a1, uint64_t a2)
{
  v4 = xpc_array_create(0, 0);
  for (i = *(*(a2 + 40) + 16); i; i = *(i + 32))
  {
    xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, *(i + 72));
    xpc_array_append_value(v4, *(i + 56));
  }

  xpc_dictionary_set_value(a1, "events", v4);
  xpc_release(v4);
  v6 = sub_10002D754(*(*(a2 + 32) + 248));
  xpc_dictionary_set_BOOL(a1, "initial-load-completed", v6[72] & 1);
  *(a2 + 56) &= ~1u;
}

uint64_t sub_100040678(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, xpc_object_t, uint64_t))
{
  empty = xpc_dictionary_create_empty();
  v9 = a4(a1, empty, a3);
  if (!v9)
  {
    reply = xpc_dictionary_create_reply(a1);
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_1000407C0;
    applier[3] = &unk_1000795E0;
    applier[4] = reply;
    xpc_dictionary_apply(empty, applier);
    *a2 = reply;
  }

  xpc_release(empty);
  return v9;
}

uint64_t sub_10004074C(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100040964;
  v4[3] = &unk_100079600;
  v4[4] = a2;
  return sub_1000407E0(a1, a3, v4);
}

uint64_t sub_1000407E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100022BD8(*(a2 + 20));
  if (v6)
  {
    v7 = v6;
    uint64 = xpc_dictionary_get_uint64(a1, "token");
    if (uint64)
    {
      v9 = uint64;
      v10 = sub_10002D754(*(v7 + 248));
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2000000000;
      v21 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2000000000;
      v19 = 0;
      v11 = *(v10 + 4);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = sub_10004097C;
      v15[3] = &unk_100079628;
      v15[5] = &v16;
      v15[6] = v9;
      v15[4] = v20;
      sub_10004964C(v11, v15);
      v12 = v17[3];
      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(v20, 8);
      if (v12)
      {
        (*(a3 + 16))(a3, v12);
        return 0;
      }

      else
      {
        v13 = 3;
        sub_10004749C(3, "no requestor found for token %llu", v9);
      }
    }

    else
    {
      sub_10004749C(3, "missing token in request from pid %d", *(a2 + 20));
      return 22;
    }
  }

  else
  {
    sub_10004749C(3, "can not find service for caller pid %d", *(a2 + 20));
    return 1;
  }

  return v13;
}

void *sub_10004097C(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(*(result[4] + 8) + 24) & 1) == 0)
  {
    v3 = *(*(a3 + 40) + 16);
    if (v3)
    {
      while (v3[9] != result[6])
      {
        v3 = v3[4];
        if (!v3)
        {
          return result;
        }
      }

      *(*(result[5] + 8) + 24) = v3[6];
      *(*(result[4] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_1000409D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100040A4C;
  v4[3] = &unk_100079648;
  v4[4] = a2;
  return sub_1000407E0(a1, a3, v4);
}

void sub_100040A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 800);
  v4 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_string(v4, "user", v3);
    sub_100020018(a2, 5, "returning username for get_uid_for_token: %s", *(a2 + 800));
  }

  else
  {
    v5 = *(*(a2 + 248) + 56);

    xpc_dictionary_set_uint64(v4, "uid", v5);
  }
}

uint64_t sub_100040AD8(void *a1, uint64_t a2, int a3)
{
  if ((*(a2 + 56) & 4) == 0 || (result = sub_100002D28(a1[6], 6), result))
  {
    sub_100040B64(a1, *(a2 + 40));
    v7 = sub_10002D754(*(*(a2 + 32) + 248));
    v8 = v7[8];
    a1[9] = v8;
    v7[8] = v8 + 1;
    if (v8 == -1)
    {
      v7[8] = 1;
    }

    if (a3)
    {
      sub_100040164(a2);
    }

    return 1;
  }

  return result;
}

void sub_100040B64(void *result, uint64_t a2)
{
  if (result[8])
  {
    sub_100054404();
  }

  v2 = *(a2 + 16);
  result[4] = v2;
  result[8] = a2;
  if (v2)
  {
    *(v2 + 40) = result + 4;
  }

  *(a2 + 16) = result;
  result[5] = a2 + 16;
  v3 = *(a2 + 24);
  *(a2 + 24) = v3 + 1;
  if (v3 == 512)
  {
    sub_10004749C(4, "Accumulated more than %d subscriptions for stream %s", 512, (a2 + 40));
  }
}

uint64_t sub_100040BF8(uint64_t a1, int a2, void *a3, xpc_object_t *a4)
{
  v7 = 33;
  v8 = sub_10004AB10();
  if (a2 > 903)
  {
    if (a2 != 904)
    {
      if (a2 == 906)
      {
        if (xpc_dictionary_expects_reply())
        {
          if (!sub_10000E554(v8, 23))
          {
            return 144;
          }

          string = xpc_dictionary_get_string(a3, "monitor_id");
          if (string)
          {
            v11 = launch_service_stats_disable(string);
LABEL_28:
            v7 = v11;
            if (!v11)
            {
              *a4 = xpc_dictionary_create_reply(a3);
            }

            return v7;
          }
        }
      }

      else
      {
        if (a2 != 905)
        {
          return v7;
        }

        if (xpc_dictionary_expects_reply())
        {
          if (sub_10000E554(v8, 23))
          {
            v9 = xpc_dictionary_get_string(a3, "monitor_id");
            uint64 = xpc_dictionary_get_uint64(a3, "capacity");
            v7 = 22;
            if (!v9 || !uint64)
            {
              return v7;
            }

            v11 = launch_service_stats_enable(v9, uint64);
            goto LABEL_28;
          }

          return 144;
        }
      }

      return 22;
    }

    if (!xpc_dictionary_expects_reply())
    {
      return 22;
    }

    v15 = 4294967195;
    reply = xpc_dictionary_create_reply(a3);
    xpc_dictionary_set_BOOL(reply, "enabled", 1);
    v16 = sub_1000443F4();
    if (v16)
    {
      v17 = v16;
      if (!sub_1000332CC(v16, 6, 0, v8))
      {
        v15 = *(v17 + 56);
      }
    }

    xpc_dictionary_set_uint64(reply, "foreground_uid", v15);
    v18 = sub_100022BD8(*(v8 + 5));
    if (v18)
    {
      v19 = *(v18 + 248);
      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v19 = sub_10004AB1C();
      if (v19)
      {
LABEL_21:
        v20 = *(v19 + 60);
        if (v20 == -101)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        goto LABEL_50;
      }
    }

    v21 = 0;
LABEL_50:
    xpc_dictionary_set_uint64(reply, "session_uid", v21);
    goto LABEL_51;
  }

  if (a2 != 902)
  {
    if (a2 != 903)
    {
      return v7;
    }

    if (!xpc_dictionary_expects_reply())
    {
      return 22;
    }

    v12 = xpc_dictionary_get_string(a3, "monitor_id");
    if (!v12)
    {
      return 22;
    }

    v13 = sub_1000011B4(v12);
    reply = xpc_dictionary_create_reply(a3);
    xpc_dictionary_set_BOOL(reply, "enabled", v13 != 0);
LABEL_51:
    v7 = 0;
    *a4 = reply;
    return v7;
  }

  region = 0;
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(v8, 23))
  {
    return 144;
  }

  v23 = xpc_dictionary_get_string(a3, "monitor_id");
  if (!v23)
  {
    return 22;
  }

  v24 = sub_1000011B4(v23);
  if (!v24)
  {
    return 96;
  }

  v25 = v24;
  value = xpc_dictionary_get_value(a3, "shmem");
  if (!value)
  {
    return 22;
  }

  v27 = xpc_shmem_map(value, &region);
  v28 = v27;
  v47 = region;
  if (region && v27 >= vm_page_size)
  {
    v29 = v27 / 0x3B;
    if (sub_100000E88(v25) < (v27 / 0x3B))
    {
      LODWORD(v29) = sub_100000E88(v25);
    }

    v30 = sub_100000E88(v25);
    v31 = xpc_dictionary_create(0, 0, 0);
    xarray = xpc_array_create(0, 0);
    if (v29)
    {
      v45 = v28;
      v32 = 0;
      v44 = v29;
      v33 = 59 * v29;
      v34 = (v30 - v29);
      do
      {
        v35 = sub_100000E90(v25, v34);
        v36 = *v35;
        v37 = xpc_dictionary_get_value(v31, *v35);
        if (v37)
        {
          count = xpc_uint64_get_value(v37);
        }

        else
        {
          count = xpc_array_get_count(xarray);
          xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, v36);
          xpc_dictionary_set_uint64(v31, v36, count);
        }

        v39 = &v47[v32];
        *v39 = count;
        *(v39 + 4) = *(v35 + 8);
        *(v39 + 20) = *(v35 + 24);
        v39[28] = *(v35 + 32);
        *(v39 + 29) = *(v35 + 33);
        *(v39 + 37) = *(v35 + 41);
        *(v39 + 45) = *(v35 + 49);
        *(v39 + 49) = *(v35 + 53);
        *(v39 + 51) = *(v35 + 55);
        v32 += 59;
        v34 = (v34 + 1);
      }

      while (v33 != v32);
      v40 = v44;
      v28 = v45;
    }

    else
    {
      v40 = 0;
    }

    xpc_release(v31);
    v42 = v25[5];
    sub_100000DD4(v25);
    v43 = xpc_dictionary_create_reply(a3);
    xpc_dictionary_set_uint64(v43, "count", v40);
    xpc_dictionary_set_uint64(v43, "dropped-count", v42);
    xpc_dictionary_set_value(v43, "labels", xarray);
    xpc_release(xarray);
    v7 = 0;
    *a4 = v43;
  }

  else
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    v7 = 22;
  }

  if (region && v28)
  {
    munmap(region, v28);
  }

  return v7;
}

char *sub_1000410C8(const char *a1)
{
  v3 = xmmword_1000577D8;
  v4 = 0;
  bzero(v5, 0x40CuLL);
  while (getattrlist(a1, &v3, v5, 0x40CuLL, 0) == -1)
  {
    if (*__error() != 35)
    {
      return 0;
    }
  }

  return sub_1000166EC(v6 + v6[0]);
}

char *sub_100041188(int a1)
{
  bzero(v4, 0x400uLL);
  if (a1 < 0)
  {
    v3 = __error();
    result = 0;
    *v3 = 9;
  }

  else
  {
    while (fcntl(a1, 50, v4) == -1)
    {
      if (*__error() != 35)
      {
        return 0;
      }
    }

    return sub_1000166EC(v4);
  }

  return result;
}

void *sub_100041248(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = open(a1, 0);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5;
  memset(&v9, 0, sizeof(v9));
  if (fstat(v5, &v9))
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1000412F0(v6, &v9, a2, a3, 0, 0);
  }

  sub_1000413F8(v6);
  return v7;
}

void *sub_1000412F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, ssize_t *a6)
{
  v10 = sub_100014514(*(a2 + 96), 0xB9878750uLL);
  v11 = read(a1, v10, *(a2 + 96));
  v12 = v11;
  if (v11 != *(a2 + 96))
  {
    if (v11 && (v11 != -1 || *__error()))
    {
      _os_assumes_log();
    }

    goto LABEL_8;
  }

  v13 = xpc_create_from_plist_with_string_cache();
  v14 = v13;
  if (v13)
  {
    if (xpc_get_type(v13) != &_xpc_type_dictionary)
    {
      xpc_release(v14);
LABEL_8:
      v14 = 0;
      goto LABEL_9;
    }

    if (a5 && a6)
    {
      *a6 = v12;
      *a5 = v10;
      return v14;
    }
  }

LABEL_9:
  free(v10);
  return v14;
}

int *sub_1000413F8(int *result)
{
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      if (*__error())
      {
        _os_assumes_log();
      }

      result = __error();
      if (*result == 9)
      {
        sub_100054404();
      }
    }
  }

  return result;
}

void *sub_100041458(const char *a1, uint64_t a2, uint64_t a3, void *a4, ssize_t *a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = open(a1, 0);
  if (v9 == -1)
  {
    return 0;
  }

  v10 = v9;
  memset(&v14, 0, sizeof(v14));
  v11 = fstat(v9, &v14);
  if (v11 | v14.st_uid || (v14.st_mode & 0x12) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1000412F0(v10, &v14, a2, a3, a4, a5);
  }

  sub_1000413F8(v10);
  return v12;
}

uint8_t *sub_100041558(mach_header_64 *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    a1 = _NSGetMachExecuteHeader();
  }

  size = 0;
  memset(&v9, 0, sizeof(v9));
  if (!dladdr(a1, &v9))
  {
    return 0;
  }

  result = getsectiondata(v9.dli_fbase, a2, a3, &size);
  if (result)
  {
    return xpc_create_from_plist_with_string_cache();
  }

  return result;
}

int *sub_1000415F0(FILE *a1)
{
  result = fclose(a1);
  if (result)
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    result = __error();
    if (*result == 9)
    {
      sub_100054404();
    }
  }

  return result;
}

BOOL sub_100041634(const char *a1)
{
  memset(&v4, 0, sizeof(v4));
  v1 = stat(a1, &v4);
  if (v1)
  {
    v2 = __error();
    if (v1 == -1 && *v2 != 2)
    {
      sub_10005455C();
    }
  }

  return v1 == 0;
}

void sub_1000416B0()
{
  v8 = 0;
  v9 = 0;
  if ((byte_10007F0E0 & 1) == 0 && sub_100041634("/System/Library/xpc/WorkloadProperties.plist"))
  {
    v0 = sub_100041540("/System/Library/xpc/WorkloadProperties.plist", &v8, &v9);
    v1 = v0;
    if (v0 && xpc_get_type(v0) == &_xpc_type_dictionary)
    {
      dictionary = xpc_dictionary_get_dictionary(v1, "SystemCallMasks");
      if (!dictionary || (v3 = dictionary, v21 = 0u, v22 = 0u, *v20 = 0u, v23[0] = 12, sysctlnametomib("kern.syscall_rejection_masks", v20, v23)))
      {
        xpc_release(v1);
        goto LABEL_9;
      }

      v16 = 0;
      v17 = &v16;
      v18 = 0x2000000000;
      v19 = 0;
      *&applier = _NSConcreteStackBlock;
      *(&applier + 1) = 0x40000000;
      *&v12[8] = *v20;
      *&v11 = sub_1000418C8;
      *(&v11 + 1) = &unk_100079698;
      *v12 = &v16;
      v13 = v21;
      v14 = v22;
      v15 = v23[0];
      xpc_dictionary_apply(v3, &applier);
      v4 = *(v17 + 6);
      _Block_object_dispose(&v16, 8);
      xpc_release(v1);
      if (!v4)
      {
LABEL_9:
        v5 = v8;
        v6 = v9;
        v11 = 0u;
        *v12 = 0u;
        applier = 0u;
        *&v12[16] = 12;
        if (sysctlnametomib("kern.workload_config", &applier, &v12[16]))
        {
          free(v8);
        }

        else
        {
          v7 = sysctl(&applier, *&v12[16], 0, 0, v5, v6);
          free(v8);
          if (v7)
          {
            sub_1000441E0("error parsing the workload properties plist in the kernel (%u)", v7);
          }
        }

        return;
      }
    }

    else
    {
      xpc_release(v1);
      v4 = 109;
    }

    sub_1000441E0("error parsing the workload properties plist in launchd (%u)", v4);
  }
}

uint64_t sub_1000418C8(uint64_t a1, char *__str, void *a3)
{
  __endptr = 0;
  strtol(__str, &__endptr, 10);
  if (*__str && !*__endptr)
  {
    array = xpc_dictionary_get_array(a3, "SystemCalls");
    if (array)
    {
      v9 = array;
      v10 = sub_10000FC98(0x800uLL, v8);
      sub_10000FD40(v10, "%s:", __str);
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = sub_100041AC8;
      applier[3] = &unk_100079670;
      applier[4] = *(a1 + 32);
      applier[5] = v10;
      xpc_array_apply(v9, applier);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        sub_10000FD04(v10);
      }

      else
      {
        v11 = sub_10000FCFC(v10);
        sub_10000FD04(v10);
        v12 = strlen(v11);
        v13 = sysctl((a1 + 40), *(a1 + 88), 0, 0, v11, v12);
        free(v11);
        if (!v13)
        {
          return 1;
        }

        *(*(*(a1 + 32) + 8) + 24) = v13;
        sub_100047654("com.apple.xpc.workload_properties", 65541, "sysctl failed with error (%i)");
      }
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 109;
      sub_100047654("com.apple.xpc.workload_properties", 65541, "invalid syscall mask array type (%i)");
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 109;
    sub_100047654("com.apple.xpc.workload_properties", 65541, "invalid syscall mask key: %s (%i)");
  }

  return 0;
}

BOOL sub_100041AC8(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_string)
  {
    v7 = *(a1 + 40);
    string_ptr = xpc_string_get_string_ptr(object);
    sub_10000FD40(v7, " %s", string_ptr);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 109;
    sub_100047654("com.apple.xpc.workload_properties", 65541, "invalid syscall mask value at index: %zu  (%i)", a2, *(*(*(a1 + 32) + 8) + 24));
  }

  return type == &_xpc_type_string;
}

void sub_100041B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 344);
  if (v2)
  {
    if (v2[10])
    {
      sub_100054404();
    }

    v4 = v2[9];
    if (v4)
    {
      do
      {
        v5 = *(v4 + 24);
        sub_100041C44(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = v2[6];
    if (v6)
    {
      xpc_release(v6);
      v2[6] = 0;
    }

    v7 = v2[7];
    if (v7)
    {
      xpc_release(v7);
      v2[7] = 0;
    }

    v8 = v2[8];
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = v2[4];
    v10 = v2[5];
    if (v9)
    {
      *(v9 + 40) = v10;
    }

    *v10 = v9;
    *(a1 + 344) = 0;

    free(v2);
  }
}

void sub_100041C44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    xpc_release(v2);
    *(a1 + 16) = 0;
  }

  dispatch_source_cancel(*(a1 + 8));
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 32) = v4;
  }

  *v4 = v3;

  free(a1);
}

BOOL sub_100041CA0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    sub_100054404();
  }

  v3 = sub_100046A64(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v4, "com.apple.private.xpc.launchd.job-manager");
    v5 = sub_100041D24(a2, string);
  }

  else
  {
    v5 = 0;
  }

  xpc_release(v4);
  return v5;
}

BOOL sub_100041D24(void *a1, const char *a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (xpc_get_type(a1) != &_xpc_type_string)
  {
    if (xpc_get_type(a1) != &_xpc_type_array || !xpc_array_get_count(a1))
    {
      return 0;
    }

    v7 = 0;
    do
    {
      string = xpc_array_get_string(a1, v7);
      v2 = sub_100016A6C(string, a2);
      if (v2)
      {
        break;
      }

      ++v7;
    }

    while (v7 < xpc_array_get_count(a1));
    return v2;
  }

  string_ptr = xpc_string_get_string_ptr(a1);

  return sub_100016A6C(string_ptr, a2);
}

BOOL sub_100041E00(uint64_t a1, void *a2)
{
  if (sub_10000E554(a1, 28))
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  return sub_100041CA0(a1, a2);
}

unsigned __int8 *sub_100041EA4(void *a1, _DWORD *a2, char a3, unint64_t a4, _OWORD *a5, char *a6, _DWORD *a7)
{
  string = xpc_dictionary_get_string(a1, "Label");
  if (string && sub_1000169A8(string, "com.apple."))
  {
    a4 |= 0x80uLL;
  }

  v19 = 0;
  v15 = sub_1000332D8(a2, a1, a6, a5, a4, &v19);
  v16 = v15;
  v17 = v19;
  if (v19)
  {
    if (v15)
    {
      sub_100054404();
    }

    result = 0;
  }

  else
  {
    if (!v15)
    {
      sub_100054404();
    }

    if ((a3 & 1) == 0)
    {
      sub_100026CDC(v15, 15);
    }

    sub_10002D90C();
    result = sub_100043370(v16);
  }

  *a7 = v17;
  return result;
}

uint64_t sub_100041F90(uint64_t a1, unsigned __int8 **a2)
{
  v3 = sub_100022BD8(a1);
  if (!v3)
  {
    return 113;
  }

  v5 = *(v3 + 344);
  if (!v5)
  {
    v5 = sub_100041FD8(v3, v4);
  }

  result = 0;
  *a2 = v5;
  return result;
}

unsigned __int8 *sub_100041FD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 344))
  {
    sub_100054404();
  }

  v3 = sub_100043370(a1);
  v4 = v3;
  *(v3 + 3) = *(a1 + 364);
  v5 = *(a1 + 352);
  if (v5)
  {
    sub_100043180(v3, v5);
  }

  *(a1 + 352) = 0;
  return v4;
}

uint64_t sub_100042068(uint64_t a1, int a2, void *a3, xpc_object_t *a4)
{
  v7 = sub_10004AB10();
  if (!sub_10000E554(v7, 27))
  {
    return 144;
  }

  switch(a2)
  {
    case 1000:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v8 = xpc_dictionary_get_value(a3, "plist");
      v9 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }

      if (xpc_get_type(v8) != &_xpc_type_dictionary)
      {
        v9 = 0;
LABEL_7:
        v10 = 22;
LABEL_158:
        if (v10)
        {
          return v10;
        }

        LODWORD(value[0]) = 0;
        if (xpc_dictionary_get_BOOL(a3, "monitor"))
        {
          v115 = sub_10004353C(v9, value);
          v116 = v115;
          v10 = LODWORD(value[0]);
          if (LODWORD(value[0]))
          {
            if (v115)
            {
              sub_100054404();
            }

            goto LABEL_165;
          }

          v117 = sub_10003DD68(a3);
          if (v116)
          {
            xpc_dictionary_set_mach_recv();
          }
        }

        else
        {
          v117 = sub_10003DD68(a3);
        }

        v10 = sub_100043728(v9, v117);
        if (!v10)
        {
          return v10;
        }

LABEL_165:
        v118 = *(*v9 + 248);
        v119 = (*v9 + 1424);
        v120 = xpc_strerror();
        sub_10002C908(v118, 3, "Start job failed: service = %s, error = %d: %s", v119, v10, v120);
        sub_10002DF94(v118, *v9);
        return v10;
      }

      string = xpc_dictionary_get_string(v9, "Label");
      LODWORD(value[0]) = 0;
      v106 = sub_1000328DC(a3, 0, value);
      v107 = value[0];
      if (LODWORD(value[0]))
      {
        v108 = xpc_strerror();
        sub_10004749C(3, "Submit job failed. Unable to find domain. Service = %s, error = %d: %s", string, v107, v108);
        v109 = value[0];
        if (!LODWORD(value[0]))
        {
          sub_1000543E8();
        }

        goto LABEL_156;
      }

      v111 = v106;
      v112 = sub_100043884(v9, v106, 0, v7, value);
      v9 = v112;
      v113 = value[0];
      if (!LODWORD(value[0]))
      {
        if (!v112)
        {
          sub_1000543CC();
        }

        v109 = 0;
        goto LABEL_157;
      }

      if (v112)
      {
        sub_100054404();
      }

      v114 = xpc_strerror();
      sub_10002C908(v111, 3, "Submit job failed: service = %s, error = %d: %s", string, v113, v114);
      v109 = value[0];
      if (LODWORD(value[0]))
      {
LABEL_156:
        v9 = 0;
LABEL_157:
        v10 = v109;
        goto LABEL_158;
      }

      goto LABEL_200;
    case 1001:
      LODWORD(value[0]) = 0;
      v66 = sub_1000439E8(a3, value);
      if (!v66)
      {
        return LODWORD(value[0]);
      }

      v67 = v66;
      v68 = sub_10004353C(v66, value);
      v10 = LODWORD(value[0]);
      if (!LODWORD(value[0]))
      {
        reply = xpc_dictionary_create_reply(a3);
        xpc_dictionary_set_mach_recv();
        sub_100043A70(v67, reply, 0);
        goto LABEL_131;
      }

      if (v68)
      {
        sub_100054404();
      }

      v69 = *v67;
      v70 = xpc_strerror();
      sub_100020018(v69, 3, "Could not monitor job: error = %d: %s", v10, v70);
      return LODWORD(value[0]);
    case 1002:
      LODWORD(value[0]) = 0;
      v47 = xpc_dictionary_copy_mach_send();
      if (!v47)
      {
        sub_10004749C(3, "no client port found");
        LODWORD(value[0]) = 22;
      }

      if (xpc_get_type(a3) != &_xpc_type_error && xpc_get_type(a3) != &_xpc_type_dictionary)
      {
        goto LABEL_65;
      }

      v48 = xpc_dictionary_get_value(a3, "client-reply-port");
      right = v48;
      if (!v48)
      {
        goto LABEL_66;
      }

      if (xpc_get_type(v48) == &_xpc_type_mach_send_once)
      {
        right = xpc_mach_send_once_extract_right();
        if ((right - 1) < 0xFFFFFFFE)
        {
          if (v47)
          {
            v100 = sub_1000439E8(a3, value);
            if (v100)
            {
              v101 = v100;
              for (i = *(v100 + 72); i; i = *(i + 24))
              {
                if (*i == v47)
                {
                  break;
                }
              }

              v103 = sub_10000B760(v47);
              if (v103)
              {
                sub_100054420(v103);
              }

              if (i)
              {
                if (!*(i + 16))
                {
                  v131 = *(i + 40);
                  reply_with_port = _xpc_dictionary_create_reply_with_port();
                  v133 = reply_with_port;
                  if (v131)
                  {
                    sub_100043A70(v101, reply_with_port, 0);
                    v10 = 0;
                    *a4 = v133;
                    *(i + 40) &= ~1u;
                  }

                  else
                  {
                    v10 = 0;
                    *(i + 16) = reply_with_port;
                  }

                  return v10;
                }

                sub_100020018(*v101, 5, "job is already monitored");
                v47 = 0;
                v104 = 37;
              }

              else
              {
                sub_100020018(*v101, 5, "job is not monitored, can't poll");
                v47 = 0;
                v104 = 3;
              }
            }

            else
            {
              sub_10004749C(3, "job not found, returning ENOSERVICE to %d with manual pipe reply", right);
              v104 = 113;
            }

            LODWORD(value[0]) = v104;
          }

          reply_from_port = xpc_pipe_create_reply_from_port();
          if (!reply_from_port)
          {
            sub_100054404();
          }

          v130 = reply_from_port;
          xpc_dictionary_set_int64(reply_from_port, "error", SLODWORD(value[0]));
          *a4 = v130;
LABEL_67:
          if (v47 - 1 <= 0xFFFFFFFD)
          {
            v50 = sub_10000B760(v47);
            if (v50)
            {
              sub_100054420(v50);
            }
          }

          return LODWORD(value[0]);
        }
      }

      else
      {
LABEL_65:
        right = 0;
      }

LABEL_66:
      sub_10004749C(3, "invalid client reply port %d", right);
      LODWORD(value[0]) = 22;
      goto LABEL_67;
    case 1003:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v135 = 0;
      v54 = sub_1000439E8(a3, &v135);
      if (!v54)
      {
        return v135;
      }

      v55 = *v54;
      if (sub_100041E00(v7, *(v54 + 48)))
      {
        v138 = 0u;
        v139 = 0u;
        *value = 0u;
        v137 = 0u;
        v56 = sub_100045C2C(v7, value);
        sub_100020018(v55, 5, "removing job: caller = %s", v56);
        v57 = sub_10002DF94(*(v55 + 248), v55);
        v135 = v57;
        if (v57 == 36)
        {
          return v135;
        }

        if (!v57)
        {
          *a4 = xpc_dictionary_create_reply(a3);
          return v135;
        }
      }

      else
      {
        v135 = 144;
      }

      xpc_strerror();
      sub_100020018(v55, 3, "Could not remove job: error = %d: %s");
      return v135;
    case 1004:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v35 = xpc_dictionary_get_string(a3, "manager");
      if (!v35)
      {
        return 22;
      }

      v36 = v35;
      empty = xpc_array_create(0, 0);
      for (j = qword_10007E928; j; j = *(j + 32))
      {
        if (sub_100041D24(*(j + 48), v36))
        {
          xpc_array_set_uuid(empty, 0xFFFFFFFFFFFFFFFFLL, (j + 16));
        }
      }

      goto LABEL_94;
    case 1005:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v81 = xpc_dictionary_get_string(a3, "label");
      if (!v81)
      {
        return 22;
      }

      v82 = v81;
      LODWORD(value[0]) = 0;
      v83 = sub_1000328DC(a3, 0, value);
      v10 = LODWORD(value[0]);
      if (LODWORD(value[0]))
      {
        return v10;
      }

      v84 = v83;
      v41 = sub_100030830(v83, v82);
      if (v41)
      {
        goto LABEL_99;
      }

      sub_10002C908(v84, 3, "Could not find job with label %s", v82);
      return 113;
    case 1006:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      LODWORD(value[0]) = 0;
      v87 = sub_1000439E8(a3, value);
      if (!v87)
      {
        return LODWORD(value[0]);
      }

      v88 = v87;
      if (*(v87 + 8) == 1)
      {
        v89 = xpc_dictionary_create_reply(a3);
        sub_100043A70(v88, v89, 0);
        LODWORD(value[0]) = xpc_pipe_routine_reply();
        if ((LODWORD(value[0]) | 0x20) != 0x20)
        {
          _os_assumes_log_ctx();
        }

        xpc_release(v89);
      }

      else
      {
        if (*(v87 + 80))
        {
          sub_100020018(*v87, 3, "Start job failed: another start request is already inflight");
          return 37;
        }

        v110 = sub_10003DD68(a3);
        sub_100043728(v88, v110);
      }

      return 0;
    case 1007:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v58 = xpc_dictionary_get_value(a3, "overlay");
      v59 = v58;
      if (v58)
      {
        if (xpc_get_type(v58) != &_xpc_type_dictionary)
        {
          return 22;
        }
      }

      v60 = xpc_dictionary_get_string(a3, "path");
      if (!v60)
      {
        return 22;
      }

      v61 = v60;
      v135 = 0;
      v62 = sub_1000328DC(a3, 0, &v135);
      v10 = v135;
      if (!v135)
      {
        v63 = v62;
        v64 = sub_1000166EC(v61);
        v65 = xpc_dictionary_create_reply(a3);
        value[0] = _NSConcreteStackBlock;
        value[1] = 0x40000000;
        *&v137 = sub_100043C94;
        *(&v137 + 1) = &unk_1000796F8;
        *&v138 = v65;
        *(&v138 + 1) = v63;
        *&v139 = v64;
        sub_100018E2C(v63, v61, v59, v7, value);
      }

      return v10;
    case 1008:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      int64 = xpc_dictionary_get_int64(a3, "pid");
      if (int64 < 1)
      {
        return 22;
      }

      value[0] = 0;
      v10 = sub_100041F90(int64, value);
      if (!v10)
      {
        reply = xpc_dictionary_create_reply(a3);
        xpc_dictionary_set_uuid(reply, "job-handle", (value[0] + 16));
        goto LABEL_131;
      }

      if (value[0])
      {
        sub_100054404();
      }

      return v10;
    case 1009:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      LODWORD(value[0]) = 0;
      v43 = sub_1000439E8(a3, value);
      if (!v43)
      {
        return LODWORD(value[0]);
      }

      v44 = v43;
      v45 = *(v43 + 48);
      v46 = v45 && *(v43 + 56) && sub_100041CA0(v7, v45);
      v98 = *v44;
      reply = xpc_dictionary_create_reply(a3);
      empty = sub_1000241D0(v98, v46);
      v80 = "attrs";
      v79 = reply;
      goto LABEL_128;
    case 1010:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v135 = 0;
      v90 = sub_1000439E8(a3, &v135);
      if (!v90)
      {
        return v135;
      }

      v91 = v90;
      uuid = xpc_dictionary_get_uuid(a3, "instance-uuid");
      value[0] = 0;
      value[1] = xpc_dictionary_get_string(a3, "sandbox-profile");
      *&v137 = xpc_dictionary_get_dictionary(a3, "envvars");
      v93 = *v91;
      v94 = sub_10002DFD8(*(*v91 + 248), *v91, uuid, 1, value, v7, &v135);
      if (v94)
      {
        v95 = v94;
        if (sub_100026CF8(v93))
        {
          sub_100026CDC(v95, 15);
        }

        v86 = sub_100043370(v95);
        if (v86)
        {
          goto LABEL_102;
        }
      }

      v96 = *v91;
      xpc_strerror();
      sub_100020018(v96, 4, "instance creation failed: %d %s");
      return v135;
    case 1011:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v33 = xpc_dictionary_create_reply(a3);
      v34 = sub_100043D94(v7, a3, v33);
      if (v34)
      {
        xpc_dictionary_set_int64(v33, "error", v34);
      }

      v10 = 0;
      *a4 = v33;
      return v10;
    case 1012:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v38 = xpc_dictionary_get_value(a3, "endpoint");
      if (!v38 || xpc_get_type(v38) != &_xpc_type_mach_send)
      {
        return 22;
      }

      v39 = xpc_mach_send_get_right();
      if ((v39 - 1) > 0xFFFFFFFD)
      {
        return 113;
      }

      v40 = sub_100032720(v39, 1);
      if (!v40)
      {
        return 113;
      }

      v41 = sub_10004CC54(v40);
LABEL_99:
      v85 = *(v41 + 344);
      if (!v85)
      {
        v86 = sub_100041FD8(v41, v42);
LABEL_102:
        v85 = v86;
      }

      reply = xpc_dictionary_create_reply(a3);
      xpc_dictionary_set_uuid(reply, "job-handle", (v85 + 16));
      goto LABEL_130;
    case 1013:
      LODWORD(value[0]) = 0;
      v86 = sub_1000439E8(a3, value);
      if (v86)
      {
        goto LABEL_102;
      }

      return LODWORD(value[0]);
    case 1014:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      array = xpc_dictionary_get_array(a3, "all-jobs");
      if (!array)
      {
        return 22;
      }

      v23 = array;
      if (xpc_get_type(array) != &_xpc_type_array)
      {
        return 22;
      }

      count = xpc_array_get_count(v23);
      if (count >> 61)
      {
        __break(1u);
LABEL_200:
        sub_1000543E8();
      }

      v25 = sub_100014514(8 * count, 0x1B0C97D0uLL);
      if (!xpc_array_get_count(v23))
      {
        xpc_array_get_count(v23);
        v26 = 0;
        goto LABEL_170;
      }

      v26 = 0;
      v27 = 0;
      break;
    case 1015:
      LODWORD(value[0]) = 0;
      v51 = sub_1000439E8(a3, value);
      if (!v51)
      {
        return LODWORD(value[0]);
      }

      v52 = v51;
      reply = xpc_dictionary_create_reply(a3);
      sub_100043A70(v52, reply, 1);
      goto LABEL_130;
    case 1016:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      uint64 = xpc_dictionary_get_uint64(a3, "coalition-id");
      v12 = sub_10001A5BC(uint64);
      v138 = 0u;
      v139 = 0u;
      *value = 0u;
      v137 = 0u;
      v13 = sub_100010B1C(v12);
      v14 = sub_100045C2C(v7, value);
      sub_10004749C(5, "Queried %zu attributed services: caller=%s[%d], coalition=%llu", v13, v14, *(v7 + 5), uint64);
      if (sub_100010B1C(v12))
      {
        v15 = 0;
        do
        {
          v16 = sub_100010AF4(v12, v15);
          v17 = sub_100022158(v16, 2);
          sub_10004749C(5, "  [%zu] => %s", v15, v17);
          free(v17);
          ++v15;
        }

        while (v15 < sub_100010B1C(v12));
      }

      empty = xpc_array_create_empty();
      if (sub_100010B1C(v12))
      {
        v19 = 0;
        do
        {
          v20 = sub_100010AF4(v12, v19);
          v21 = sub_100043370(v20);
          xpc_array_set_uuid(empty, 0xFFFFFFFFFFFFFFFFLL, v21 + 16);
          ++v19;
        }

        while (v19 < sub_100010B1C(v12));
      }

      goto LABEL_93;
    case 1017:
      if (!xpc_dictionary_expects_reply())
      {
        return 22;
      }

      v135 = 0;
      v71 = sub_1000439E8(a3, &v135);
      if (!v71)
      {
        return v135;
      }

      v72 = v71;
      v12 = sub_10001A534(*v71);
      v138 = 0u;
      v139 = 0u;
      *value = 0u;
      v137 = 0u;
      v73 = sub_100022158(*v72, 2);
      v74 = sub_100010B1C(v12);
      v75 = sub_100045C2C(v7, value);
      sub_10004749C(5, "Queried %zu attributed services: caller=%s[%d], service=%s", v74, v75, *(v7 + 5), v73);
      free(v73);
      empty = xpc_array_create_empty();
      if (sub_100010B1C(v12))
      {
        v76 = 0;
        do
        {
          v77 = sub_100010AF4(v12, v76);
          v78 = sub_100043370(v77);
          xpc_array_set_uuid(empty, 0xFFFFFFFFFFFFFFFFLL, v78 + 16);
          ++v76;
        }

        while (v76 < sub_100010B1C(v12));
      }

LABEL_93:
      sub_10001B690(v12, 0);
LABEL_94:
      v79 = xpc_dictionary_create_reply(a3);
      reply = v79;
      v80 = "handles";
LABEL_128:
      xpc_dictionary_set_value(v79, v80, empty);
      v99 = empty;
      goto LABEL_129;
    default:
      return 33;
  }

  do
  {
    v28 = xpc_array_get_value(v23, v27);
    LODWORD(value[0]) = 0;
    v29 = sub_1000328DC(v28, 0, value);
    v10 = LODWORD(value[0]);
    if (LODWORD(value[0]))
    {
      free(v25);
      return v10;
    }

    if (v26)
    {
      if (*v25 == v29)
      {
        goto LABEL_31;
      }

      v30 = 0;
      while (v26 - 1 != v30)
      {
        v31 = v25[++v30];
        if (v31 == v29)
        {
          if (v30 < v26)
          {
            goto LABEL_31;
          }

          break;
        }
      }
    }

    v25[v26++] = v29;
LABEL_31:
    ++v27;
  }

  while (v27 < xpc_array_get_count(v23));
  if (v26 > xpc_array_get_count(v23))
  {
    sub_100054404();
  }

  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      sub_10002D450(v25[k], 47);
    }

    v134 = 0;
    goto LABEL_171;
  }

LABEL_170:
  v134 = 1;
LABEL_171:
  v121 = xpc_array_create_empty();
  if (xpc_array_get_count(v23))
  {
    v122 = 0;
    do
    {
      v123 = xpc_array_get_value(v23, v122);
      v124 = xpc_dictionary_create_empty();
      v125 = sub_100043D94(v7, v123, v124);
      if (v125)
      {
        xpc_dictionary_set_int64(v124, "error", v125);
      }

      xpc_array_set_value(v121, 0xFFFFFFFFFFFFFFFFLL, v124);
      xpc_release(v124);
      ++v122;
    }

    while (v122 < xpc_array_get_count(v23));
  }

  if ((v134 & 1) == 0)
  {
    v126 = v25;
    do
    {
      v127 = *v126++;
      sub_10002D4F0(v127, 47);
      --v26;
    }

    while (v26);
  }

  free(v25);
  reply = xpc_dictionary_create_reply(a3);
  xpc_dictionary_set_value(reply, "results", v121);
  v99 = v121;
LABEL_129:
  xpc_release(v99);
LABEL_130:
  v10 = 0;
LABEL_131:
  *a4 = reply;
  return v10;
}

void sub_100043090(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 344);
  if (v4)
  {
    if (a2 == 9)
    {
      sub_100043180(v4, 4);

      sub_100041B8C(a1, v7);
    }

    else
    {
      if (a2 == 5)
      {
        if (*(v4 + 8) != 1)
        {
          return;
        }

        v5 = 3;
      }

      else
      {
        if (a2 != 4)
        {
          return;
        }

        if (a3)
        {
          *(v4 + 12) = a3;
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      sub_100043180(v4, v5);
    }
  }

  else
  {
    switch(a2)
    {
      case 9:
        v6 = 4;
        break;
      case 5:
        if (*(a1 + 352) != 1)
        {
          return;
        }

        v6 = 3;
        break;
      case 4:
        if (a3)
        {
          v6 = 2;
        }

        else
        {
          v6 = 1;
        }

        break;
      default:
        return;
    }

    *(a1 + 352) = v6;
  }
}

void sub_100043180(void *a1, uint64_t a2)
{
  if (!a2)
  {
    sub_100054404();
  }

  *(a1 + 2) = a2;
  v3 = *a1;
  v4 = sub_100043510(*a1);
  sub_100020018(v3, 5, "job state = %s", v4);
  v5 = a1[10];
  if (v5)
  {
    sub_100043A70(a1, a1[10], 0);
    xpc_dictionary_set_uuid(v5, "job-handle", a1 + 16);
    if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
    {
      _os_assumes_log_ctx();
    }

    xpc_release(a1[10]);
    a1[10] = 0;
  }

  for (i = a1[9]; i; i = *(i + 24))
  {
    *(i + 40) |= 1u;
    if (*(i + 16))
    {
      sub_100043A70(a1, *(i + 16), 0);
      if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
      {
        _os_assumes_log_ctx();
      }

      xpc_release(*(i + 16));
      *(i + 16) = 0;
      *(i + 40) &= ~1u;
    }
  }
}

uint64_t sub_1000432D0(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (v1)
  {
    return *(v1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000432E8(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    result = xpc_get_type(object);
    if (result != &_xpc_type_string)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = xpc_array_get_count(object);
  if (result)
  {
    result = sub_100016B6C(object);
    if (result)
    {
LABEL_6:
      v5 = sub_100043370(a1);
      result = xpc_retain(object);
      *(v5 + 6) = result;
    }
  }

  return result;
}

unsigned __int8 *sub_100043370(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (!v1)
  {
    v1 = sub_100014514(0x58uLL, 0x10A00405996BFDAuLL);
    *(a1 + 344) = v1;
    *v1 = a1;
    uuid_generate(v1 + 16);
    v3 = qword_10007E928;
    *(v1 + 4) = qword_10007E928;
    if (v3)
    {
      *(v3 + 40) = v1 + 32;
    }

    qword_10007E928 = v1;
    *(v1 + 5) = &qword_10007E928;
  }

  return v1;
}

uint64_t sub_1000433EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      return sub_1000432E8(a2, v3);
    }
  }

  return result;
}

uint64_t sub_10004340C(uint64_t a1, xpc_object_t object)
{
  result = xpc_get_type(object);
  if (result == &_xpc_type_array)
  {
    result = xpc_array_get_count(object);
    if (result)
    {
      result = sub_100016B6C(object);
      if (result)
      {
        v5 = sub_100043370(a1);
        result = xpc_retain(object);
        *(v5 + 7) = result;
      }
    }
  }

  return result;
}

uint64_t sub_10004347C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      return sub_10004340C(a2, v3);
    }
  }

  return result;
}

void *sub_10004349C(uint64_t a1, xpc_object_t object)
{
  result = xpc_get_type(object);
  if (result == &_xpc_type_string)
  {
    v5 = sub_100043370(a1);
    result = xpc_retain(object);
    *(v5 + 8) = result;
  }

  return result;
}

void *sub_1000434F0(void *result, uint64_t a2)
{
  v2 = result[43];
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      return sub_10004349C(a2, v3);
    }
  }

  return result;
}

char *sub_100043510(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (v1 && (v2 = *(v1 + 8), v2 <= 4))
  {
    return (&off_100079718)[v2];
  }

  else
  {
    return 0;
  }
}

void *sub_10004353C(uint64_t *a1, int *a2)
{
  v4 = sub_10000B654(0x12u, 1u, 0);
  if (!v4)
  {
LABEL_11:
    v16 = *a1;
    v14 = 12;
    v17 = xpc_strerror();
    sub_100020018(v16, 3, "Failed to create a job monitor. error = %d: %s", 12, v17);
    v7 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  poly = 0;
  v6 = sub_10000B704(v4, &poly);
  if (v6 || !poly)
  {
    if (!v6)
    {
      _os_assumes_log();
    }

    v15 = sub_10000B774(v5, 0, 0);
    if (v15)
    {
      sub_100054420(v15);
    }

    goto LABEL_11;
  }

  v7 = sub_100014514(0x30uLL, 0x10A004099ABA332uLL);
  *v7 = v5;
  reply_with_port = _xpc_dictionary_create_reply_with_port();
  v7[2] = reply_with_port;
  if (!reply_with_port)
  {
    sub_100054404();
  }

  v11 = a1[9];
  v10 = a1 + 9;
  v9 = v11;
  v7[3] = v11;
  if (v11)
  {
    *(v9 + 32) = v7 + 3;
  }

  *v10 = v7;
  v7[4] = v10;
  v12 = sub_1000157D8();
  v13 = dispatch_source_create(&_dispatch_source_type_mach_send, v5, 1uLL, v12);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100043998;
  handler[3] = &unk_1000796B8;
  handler[4] = v7;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_source_set_mandatory_cancel_handler();
  dispatch_activate(v13);
  v14 = 0;
  v7[1] = v13;
LABEL_12:
  *a2 = v14;
  return v7;
}

uint64_t sub_100043728(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    sub_100054404();
  }

  if (*(a1 + 8) == 1)
  {
    sub_100054404();
  }

  v3 = *a1;
  *(a1 + 80) = a2;
  sub_10001B5B8(v3, 21);
  v4 = *a1;
  if (sub_1000038AC(*a1))
  {
    v5 = 137;
  }

  else
  {
    v6 = sub_100023354(v4, 15);
    if (v6 == 36)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    if (!v7)
    {
      v5 = v7;
      goto LABEL_18;
    }

    v5 = v6;
    if (v7 == 37)
    {
      if (sub_100023F20(*a1))
      {
        v5 = 0;
        goto LABEL_18;
      }

      v5 = 37;
    }
  }

  if (*(a1 + 80))
  {
    v8 = xpc_strerror();
    sub_100020018(v3, 3, "Start job failed: error = %d: %s", v5, v8);
    v9 = *(a1 + 80);
    xpc_dictionary_set_int64(v9, "error", v5);
    if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
    {
      _os_assumes_log_ctx();
    }

    *(a1 + 80) = 0;
    xpc_release(v9);
  }

LABEL_18:
  sub_10001B690(v3, 21);
  return v5;
}

unsigned __int8 *sub_100043884(void *a1, _DWORD *a2, char a3, uint64_t a4, int *a5)
{
  result = xpc_dictionary_get_value(a1, "_ManagedBy");
  if (result)
  {
    if (sub_100041CA0(a4, result))
    {
      memset(v21, 0, sizeof(v21));
      v11 = sub_100045C2C(a4, v21);
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *__str = 0u;
      v14 = 0u;
      snprintf(__str, 0x80uLL, "(submitted by %s.%d)", v11, *(a4 + 20));
      return sub_100041EA4(a1, a2, a3, 0x200uLL, a4, __str, a5);
    }

    result = 0;
    v12 = 144;
  }

  else
  {
    v12 = 109;
  }

  *a5 = v12;
  return result;
}

void sub_1000439A0(uint64_t a1)
{
  handle = dispatch_source_get_handle(*(a1 + 32));
  v3 = sub_10000B760(handle);
  if (v3)
  {
    sub_100054420(v3);
  }

  v4 = *(a1 + 32);

  dispatch_release(v4);
}

uint64_t sub_1000439E8(void *a1, int *a2)
{
  if (!a2)
  {
    sub_100054404();
  }

  uuid = xpc_dictionary_get_uuid(a1, "job-handle");
  if (uuid)
  {
    v4 = qword_10007E928;
    if (qword_10007E928)
    {
      v5 = uuid;
      while (uuid_compare((v4 + 16), v5))
      {
        v4 = *(v4 + 32);
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      v6 = 0;
    }

    else
    {
LABEL_7:
      v6 = 3;
    }
  }

  else
  {
    v4 = 0;
    v6 = 22;
  }

  *a2 = v6;
  return v4;
}

void sub_100043A70(uint64_t a1, xpc_object_t xdict, char a3)
{
  v6 = *a1;
  xpc_dictionary_set_uint64(xdict, "job-state", *(a1 + 8));
  v7 = *(v6 + 640);
  if (v7)
  {
    xpc_dictionary_set_value(xdict, "additional-properties", v7);
  }

  xpc_dictionary_set_BOOL(xdict, "removing", (*(v6 + 368) & 0x10) != 0);
  if (sub_100022BA0(v6))
  {
    v8 = sub_1000246B0(v6);
    xpc_dictionary_set_uuid(xdict, "instance", v8);
  }

  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      xpc_dictionary_set_string(xdict, "program", v10);
    }
  }

  v11 = *(a1 + 8);
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        return;
      }

      v13 = "error";
      v14 = xdict;
      v12 = 113;
      goto LABEL_15;
    }

    xpc_dictionary_set_int64(xdict, "wait4-status", 0);
    xpc_dictionary_set_uint64(xdict, "os-reason-ns", 7uLL);
    xpc_dictionary_set_uint64(xdict, "os-reason-code", 5uLL);
    xpc_dictionary_set_uint64(xdict, "os-reason-flags", 0);
  }

  else
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        return;
      }

      v12 = *(a1 + 12);
      v13 = "spawn-error";
      v14 = xdict;
LABEL_15:

      xpc_dictionary_set_int64(v14, v13, v12);
      return;
    }

    v15 = sub_100023F20(v6);
    xpc_dictionary_set_int64(xdict, "pid", v15);
    if ((a3 & 1) == 0)
    {
      return;
    }
  }

  v16 = sub_1000246E4(v6);
  if (sub_10004A680(v16))
  {
    xpc_dictionary_set_int64(xdict, "wait4-status", *(v16 + 28));
    xpc_dictionary_set_uint64(xdict, "os-reason-ns", *(v16 + 4));
    xpc_dictionary_set_uint64(xdict, "os-reason-code", *(v16 + 8));
    v17 = *(v16 + 16);

    xpc_dictionary_set_uint64(xdict, "os-reason-flags", v17);
  }
}

void sub_100043C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100043370(a2);
    xpc_dictionary_set_uuid(*(a1 + 32), "job-handle", v5 + 16);
    sub_100026CDC(a2, 15);
  }

  else
  {
    v6 = a3;
    if (!a3)
    {
      sub_100054404();
    }

    xpc_dictionary_set_int64(*(a1 + 32), "error", a3);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = xpc_strerror();
    sub_10002C908(v7, 4, "Could not submit extension %s: %d - %s", v8, v6, v9);
  }

  if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
  {
    _os_assumes_log_ctx();
  }

  xpc_release(*(a1 + 32));
  v10 = *(a1 + 48);

  free(v10);
}

uint64_t sub_100043D94(uint64_t a1, xpc_object_t object, void *a3)
{
  if (!object)
  {
    return 22;
  }

  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 22;
  }

  value = xpc_dictionary_get_value(object, "plist");
  if (!value)
  {
    return 22;
  }

  v8 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 22;
  }

  string = xpc_dictionary_get_string(v8, "Label");
  v17 = 0;
  v10 = sub_1000328DC(object, 0, &v17);
  result = v17;
  if (!v17)
  {
    v11 = sub_100043884(v8, v10, 1, a1, &v17);
    v12 = v11;
    v13 = v17;
    if (v17)
    {
      if (v11)
      {
        sub_100054404();
      }

LABEL_10:
      v14 = xpc_strerror();
      sub_10002C908(v10, 3, "Submit job failed: service = %s, error = %d: %s", string, v13, v14);
      if (v12)
      {
        sub_10002DF94(v10, *v12);
      }

      return v17;
    }

    if (xpc_dictionary_get_BOOL(object, "monitor"))
    {
      v15 = sub_10004353C(v12, &v17);
      v16 = v15;
      v13 = v17;
      if (v17)
      {
        if (v15)
        {
          sub_100054404();
        }

        goto LABEL_10;
      }

      xpc_dictionary_set_uuid(a3, "job-handle", v12 + 16);
      if (v16)
      {
        xpc_dictionary_set_mach_recv();
      }
    }

    else
    {
      xpc_dictionary_set_uuid(a3, "job-handle", v12 + 16);
    }

    sub_10002C908(v10, 5, "Submit job succeeded: service = %s", string);
    return 0;
  }

  return result;
}

BOOL sub_100043F4C(const char *a1)
{
  v7 = 0;
  if (sub_100045D60("kern.bootobjectspath", &v7))
  {
    v2 = v7 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    sub_10004749C(65540, "Unable to get boot-object-path. Giving up");
    return 0;
  }

  else
  {
    v4 = sub_1000168E0("%s/%s/%s", a1, v7, ".roots-installed");
    v5 = sub_100041634(v4);
    v3 = v5;
    if (v5)
    {
      sub_10004749C(65541, "Found cookie: %s");
    }

    else
    {
      sub_10004749C(65541, "No cookie: %s");
    }

    free(v7);
    free(v4);
  }

  return v3;
}

uint64_t sub_100044024(const char *a1)
{
  v2 = sub_1000168E0("%s/%s", a1, ".DarwinDepot");
  if (sub_100041634(v2) || (free(v2), v2 = sub_1000168E0("%s/%s", a1, ".roots-installed"), sub_100041634(v2)))
  {
    sub_10004749C(65541, "Found cookie: %s", v2);
    v3 = 1;
  }

  else
  {
    sub_10004749C(65541, "No cookie from system volume");
    v3 = 0;
  }

  free(v2);
  return v3;
}

BOOL sub_1000440E0(_BOOL8 result)
{
  if (result)
  {
    port = 0;
    v1 = mach_host_self();
    if (host_get_special_port(v1, -1, 3, &port))
    {
      _os_assumes_log();
      return 0;
    }

    else
    {
      memset(v4, 0, sizeof(v4));
      __strlcpy_chk();
      v2 = 0;
      if (sub_100051040(port, v4, &v2))
      {
        _os_assumes_log();
      }

      if (mach_port_deallocate(mach_task_self_, port))
      {
        _os_assumes_log();
      }

      return v2 != 0;
    }
  }

  return result;
}

void sub_1000441E0(char *a1, ...)
{
  va_start(va, a1);
  v2[0] = 0;
  va_copy(&v2[1], va);
  vasprintf(v2, a1, va);
  if (!v2[0])
  {
    v2[0] = a1;
  }

  sub_100044224(v2[0]);
}

void sub_100044244(char *a1, ...)
{
  va_start(va, a1);
  v2[0] = 0;
  va_copy(&v2[1], va);
  vasprintf(v2, a1, va);
  if (!v2[0])
  {
    v2[0] = a1;
  }

  sub_10004715C();
  syscall(55, 3072, v2[0]);
  _os_avoid_tail_call();
  __break(1u);
}

char *sub_1000442A0(uint64_t a1)
{
  if (sub_100032A18(a1) != &unk_10007D720)
  {
    sub_100054404();
  }

  v2 = sub_100044314();
  result = sub_10003136C(qword_10007D7A8, v2, 0, "iOSUser", 0, a1, &qword_10007F150);
  result[104] &= ~1u;
  return result;
}

uint64_t sub_100044314()
{
  __chkstk_darwin();
  result = sub_10003DEF0();
  if (!result)
  {
    bzero(v4, 0x1090uLL);
    v1 = sub_10001C270();
    if (v1)
    {
      v2 = v1;
      v3 = xpc_strerror();
      sub_1000441E0("unable to resolve 'mobile': %d - %s", v2, v3);
    }

    return v5;
  }

  return result;
}

uint64_t sub_1000443F4()
{
  v0 = sub_100044314();

  return sub_100032848(qword_10007D7A8, v0);
}

uint64_t sub_100044428(uint64_t a1, void *a2)
{
  if (sub_100032A18(a1) != &unk_10007D720)
  {
    sub_100054404();
  }

  if ((*(a1 + 1017) & 0x10) == 0)
  {
    v4 = sub_100044314();
    if (!sub_100032848(qword_10007D7A8, v4))
    {
      return 37;
    }

    *(a1 + 1016) |= 0x1000u;
    if (*(a1 + 176))
    {
      sub_100054404();
    }

    *(a1 + 176) = xpc_retain(a2);
    sub_10000FC5C();
    for (i = *(a1 + 320); i; i = *(i + 16))
    {
      if (*(i + 112) == qword_10007D7A8)
      {
        if (sub_100016A6C(*(i + 968), "iOSUser"))
        {
          if (*(i + 112) != qword_10007D7A8 || !sub_100016A6C(*(i + 968), "iOSUser"))
          {
            sub_100054404();
          }

          if (*(i + 168))
          {
            sub_100054404();
          }

          *(i + 168) = sub_100011A04();
        }

        sub_10002CDD4(i);
      }
    }

    return 0;
  }

  v6 = *(a1 + 176);
  if (!v6)
  {
    sub_100054404();
  }

  if (xpc_get_type(v6) == &_xpc_type_null)
  {
    if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
    {
      _os_assumes_log_ctx();
    }

    return 0;
  }

  xpc_dictionary_set_int64(*(a1 + 176), "error", 89);
  if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
  {
    _os_assumes_log_ctx();
  }

  xpc_release(*(a1 + 176));
  v7 = xpc_retain(a2);
  result = 0;
  *(a1 + 176) = v7;
  return result;
}

char *sub_100044600(uint64_t a1)
{
  if (sub_100032A18(a1) != &unk_10007D720)
  {
    sub_100054404();
  }

  v2 = sub_1000442A0(a1);
  v3 = *(a1 + 952);
  if (!v3)
  {
    sub_100054404();
  }

  *(v2 + 119) = xpc_retain(v3);
  sub_10002D82C(v2, &qword_10007F150, 0);
  sub_1000322E4(v2);
  return v2;
}

uint64_t sub_100044678(uint64_t a1)
{
  if (sub_100032A18(a1) != &unk_10007D720)
  {
    sub_100054404();
  }

  if ((*(a1 + 1017) & 0x10) == 0)
  {
    return 29;
  }

  v3 = sub_100044314();
  if (sub_100032848(qword_10007D7A8, v3))
  {
    return 37;
  }

  if (sub_10002CF00(a1))
  {
    return 16;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    xpc_release(v4);
    *(a1 + 176) = 0;
  }

  *(a1 + 1016) &= ~0x1000u;
  v5 = sub_100044600(a1);
  if (*(v5 + 14) != qword_10007D7A8 || (v6 = v5, !sub_100016A6C(*(v5 + 121), "iOSUser")))
  {
    sub_100054404();
  }

  if (*(v6 + 21))
  {
    sub_100054404();
  }

  v7 = *(v6 + 29);
  *(v6 + 21) = *(v7 + 168);
  *(v7 + 168) = 0;
  sub_10002CBB8(a1, 2);
  return 0;
}

uint64_t sub_100044778(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 1017) & 0x10) != 0 && *(a2 + 112) == qword_10007D7A8)
  {
    result = sub_100016A6C(*(a2 + 968), "iOSUser");
    if (result)
    {
      if (*(a2 + 112) != qword_10007D7A8 || (result = sub_100016A6C(*(a2 + 968), "iOSUser"), (result & 1) == 0))
      {
        sub_100054404();
      }

      v4 = *(a2 + 232);
      if (*(v4 + 168))
      {
        sub_100054404();
      }

      *(v4 + 168) = *(a2 + 168);
      *(a2 + 168) = 0;
    }
  }

  if ((*(v2 + 1017) & 0x10) != 0)
  {
    v5 = *(v2 + 320);
    if (v5)
    {
      while (*(v5 + 112) != qword_10007D7A8)
      {
        v5 = *(v5 + 16);
        if (!v5)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      if (sub_100032A18(v2) != &unk_10007D720)
      {
        sub_100054404();
      }

      v6 = sub_100044314();
      if (sub_100032848(qword_10007D7A8, v6))
      {
        sub_100054404();
      }

      v7 = *(v2 + 176);
      if (!v7)
      {
        sub_100054404();
      }

      if (xpc_get_type(v7) == &_xpc_type_dictionary)
      {
        v8 = sub_100044314();
        sub_100015410(v8);
        if ((xpc_pipe_routine_reply() | 0x20) != 0x20)
        {
          _os_assumes_log_ctx();
        }

        xpc_release(*(v2 + 176));
        result = xpc_null_create();
        *(v2 + 176) = result;
      }

      else
      {
        result = xpc_get_type(*(v2 + 176));
        if (result != &_xpc_type_null)
        {
          sub_100054404();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100044900(uint64_t a1, uint64_t a2)
{
  v4 = qword_10007E930;
  if (qword_10007E930)
  {
    if (xpc_get_type(qword_10007E930) != &_xpc_type_array)
    {
      sub_1000441E0("invalid type for persistent services");
    }

    xpc_array_apply(v4, &stru_100079760);
    xpc_release(v4);
    qword_10007E930 = 0;
  }

  if (qword_10007E938)
  {
    xpc_release(qword_10007E938);
    qword_10007E938 = 0;
  }

  if (qword_10007E940)
  {
    xpc_release(qword_10007E940);
    qword_10007E940 = 0;
  }

  if (a2)
  {
    qword_10007E930 = xpc_array_create_empty();
    qword_10007E938 = xpc_array_create_empty();
    sub_100044BC4(a1, qword_10007E930, a2);
    for (i = *(a1 + 320); i; i = *(i + 16))
    {
      sub_100044BC4(i, qword_10007E930, a2);
    }

    v6 = sub_10000D6FC();
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_1000453CC;
    applier[3] = &unk_100079798;
    applier[4] = qword_10007E938;
    xpc_array_apply(v6, applier);
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(empty, "services", qword_10007E930);
    xpc_dictionary_set_value(empty, "jetsam-properties", qword_10007E938);
    applier[0] = 0;
    serialization = xpc_make_serialization();
    if (serialization)
    {
      v9 = serialization;
      sub_10004749C(65541, "persistent object size is %zu bytes", applier[0]);
      v10 = applier[0];
      v11 = applier[0] + 16;
      if (applier[0] >= 0xFFFFFFFFFFFFFFF0)
      {
        sub_10004749C(65539, "overflow detected");
        free(v9);
        a2 = 84;
LABEL_19:
        xpc_release(empty);
        return a2;
      }

      v12 = sub_10004649C(applier[0] + 16);
      *v12 = 772498902;
      v12[1] = v11;
      memcpy(v12 + 2, v9, v10);
      readonly = xpc_shmem_create_readonly();
      if (readonly)
      {
        v14 = readonly;
        v15 = sub_1000016EC(a2);
        count = xpc_array_get_count(qword_10007E930);
        sub_10004749C(65541, "gathered %zu services to persist into %s", count, v15);
        v17 = xpc_array_get_count(qword_10007E938);
        sub_10004749C(65541, "gathered %zu jetsam property overlays to persist into %s", v17, v15);
        qword_10007E940 = v14;
        sub_100044D98(2, v18);
        return 0;
      }

      free(v12);
      sub_10004749C(65539, "failed to create shmem");
    }

    else
    {
      sub_10004749C(65539, "failed to serialize persistent object: %p");
    }

    a2 = 12;
    goto LABEL_19;
  }

  return a2;
}

void sub_100044BC4(uint64_t a1, void *a2, int a3)
{
  v6 = *(a1 + 112);
  if (v6 != &unk_10007D720)
  {
    if (v6 == qword_10007D7A8)
    {
      if (sub_1000443C8(a1))
      {
        goto LABEL_4;
      }

      v6 = *(a1 + 112);
    }

    sub_10004749C(65541, "Skipped persisting services in domain: %s", *(v6 + 112));
    return;
  }

LABEL_4:
  v7 = sub_1000016EC(a3);
  for (i = 0; i != 23; ++i)
  {
    for (j = *(a1 + 336 + 8 * i); j; j = j[7].i64[1])
    {
      v15 = 0;
      v10 = sub_10002CAD8(*(a1 + 112), &v15);
      if (!v15 && (j[88].i8[5] & 8) != 0)
      {
        v11 = v10;
        v12 = j[40].i64[1];
        if (v12)
        {
          if (sub_1000452B0(v12, v7))
          {
            v13 = j[41].i64[0];
            if (!v13 || !sub_100045384(v13))
            {
              sub_1000441E0("failed to serialize service plist: %s", j[89].i8);
            }

            *keys = *off_100079780;
            v19 = "plist";
            values = xpc_uint64_create(v11);
            v17 = vextq_s8(j[41], j[41], 8uLL);
            v14 = xpc_dictionary_create(keys, &values, 3uLL);
            xpc_array_append_value(a2, v14);
            sub_10004749C(65541, "persisting service %s (%s) into %s", j[89].i8, *(*(a1 + 112) + 112), v7);
          }
        }
      }
    }
  }
}

uint64_t sub_100044D98(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  v4 = &qword_10007DAF8;
  do
  {
    if (*(v4 - 1) == qword_10007DB40 && *v4 == result)
    {
      break;
    }

    v3 = v2 < 4;
    v4 += 2;
    ++v2;
  }

  while (v2 != 5);
  if (!v3)
  {
    sub_100054404();
  }

  qword_10007DB40 = result;
  return result;
}

void sub_100044E10(uint64_t a1, uint64_t a2)
{
  sub_100044D98(3, a2);
  if (qword_10007E948)
  {
    sub_100054404();
  }

  if (qword_10007E950)
  {
    sub_100054404();
  }

  init_port_set = 0;
  init_port_setCnt = 0;
  v2 = mach_ports_lookup(mach_task_self_, &init_port_set, &init_port_setCnt);
  if (v2)
  {
    sub_1000441E0("mach_ports_lookup() failed: %d", v2);
  }

  if (init_port_setCnt < 2 || (v3 = init_port_set[1], v3 + 1 <= 1))
  {
    v14 = 2;
    v4 = "no mach port for persistent services: %d";
    v5 = 65541;
LABEL_7:
    sub_10004749C(v5, v4, v14);
    return;
  }

  init_port_set = 0;
  if (sub_1000460D8(v3, 0x10uLL, &init_port_set, 1))
  {
    v4 = "failed to map persistent services header";
    goto LABEL_11;
  }

  if (*init_port_set != 772498902)
  {
    sub_10004749C(65539, "persistent services header magic is invalid");
LABEL_16:
    sub_10004749C(65539, "failed to validate services header: %d", 22);
    if (munmap(init_port_set, 0x10uLL) == -1)
    {
      goto LABEL_26;
    }

    return;
  }

  v6 = *(init_port_set + 1);
  if (v6 <= 0xF)
  {
    sub_10004749C(65539, "persistent services header size is less than header size");
    goto LABEL_16;
  }

  if (sub_100046150(v6, &init_port_set, 1))
  {
    sub_10004749C(65539, "failed to map persistent services");
    if (munmap(init_port_set, 0x10uLL) == -1)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*init_port_set == 772498902)
    {
      if (*(init_port_set + 1) > 0xFuLL)
      {
        init_port_setCnt = 0;
        v7 = sub_100045430(init_port_set, &init_port_setCnt);
        if (munmap(init_port_set, *(init_port_set + 1)) == -1)
        {
          sub_10005455C();
        }

        if (init_port_setCnt)
        {
          if (v7)
          {
            sub_100054404();
          }

          v14 = init_port_setCnt;
          v4 = "failed to restore persistent object: %d";
        }

        else
        {
          array = xpc_dictionary_get_array(v7, "services");
          if (!array)
          {
            sub_1000441E0("no services found in persistent object");
          }

          v9 = array;
          v10 = xpc_dictionary_get_array(v7, "jetsam-properties");
          if (!v10)
          {
            sub_1000441E0("no jetsam property overlays found in persistent object");
          }

          v11 = v10;
          if (xpc_get_type(v9) == &_xpc_type_array)
          {
            count = xpc_array_get_count(v9);
            sub_10004749C(65541, "validating %zu persistent services", count);
            if (xpc_array_apply(v9, &stru_1000797D8))
            {
              if (xpc_get_type(v11) == &_xpc_type_array)
              {
                v13 = xpc_array_get_count(v11);
                sub_10004749C(65541, "validating %zu jetsam property overlays", v13);
                qword_10007E950 = v11;
                qword_10007E948 = v9;
                return;
              }

              sub_10004749C(65539, "jetsam properties object is not an array");
              v4 = "persistent jetsam properties object is invalid";
              goto LABEL_11;
            }
          }

          else
          {
            sub_10004749C(65539, "persistent services object is not an array");
          }

          v4 = "persistent services object is invalid";
        }

LABEL_11:
        v5 = 65539;
        goto LABEL_7;
      }

      sub_10004749C(65539, "persistent services header size is less than header size");
    }

    else
    {
      sub_10004749C(65539, "persistent services header magic is invalid");
    }

    sub_10004749C(65539, "failed to validate remapped services header: %d", 22);
    if (munmap(init_port_set, *(init_port_set + 1)) == -1)
    {
LABEL_26:
      sub_10005455C();
    }
  }
}

void sub_10004519C(uint64_t a1, uint64_t a2)
{
  sub_100044D98(4, a2);
  if (qword_10007E950)
  {
    count = xpc_array_get_count(qword_10007E950);
    sub_10004749C(65541, "restoring %zu jetsam property overlays", count);
    xpc_array_apply(qword_10007E950, &stru_100079818);
    xpc_release(qword_10007E950);
    qword_10007E950 = 0;
  }

  if (qword_10007E948)
  {
    v3 = xpc_array_get_count(qword_10007E948);
    sub_10004749C(65541, "restoring %zu persistent services", v3);
    xpc_array_apply(qword_10007E948, &stru_100079858);
    xpc_release(qword_10007E948);
    qword_10007E948 = 0;
  }
}

BOOL sub_100045250(id a1, unint64_t a2, void *a3)
{
  if (xpc_get_type(a3) != &_xpc_type_dictionary)
  {
    sub_1000441E0("invalid type for persistent service[%zu]", a2);
  }

  xpc_release(a3);
  return 1;
}

BOOL sub_1000452B0(void *a1, char *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);

    return sub_100016A6C(a2, string_ptr);
  }

  else
  {
    if (xpc_get_type(a1) != &_xpc_type_array || !xpc_array_get_count(a1))
    {
      return 0;
    }

    v7 = 0;
    do
    {
      value = xpc_array_get_value(a1, v7);
      v4 = sub_1000452B0(value, a2);
      if (v4)
      {
        break;
      }

      ++v7;
    }

    while (v7 < xpc_array_get_count(a1));
    return v4;
  }
}

BOOL sub_100045384(uint64_t a1)
{
  serialization = xpc_make_serialization();
  v2 = serialization;
  if (serialization)
  {
    free(serialization);
  }

  return v2 != 0;
}

uint64_t sub_1000453CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!sub_100045384(a3))
  {
    sub_1000441E0("failed to serialize jetsam properties[%zu]", a2);
  }

  xpc_array_append_value(*(a1 + 32), a3);
  return 1;
}

uint64_t sub_100045430(uint64_t a1, int *a2)
{
  v3 = xpc_create_from_serialization();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    sub_10004749C(65539, "failed to deserialize persistent object");
    v4 = 22;
  }

  *a2 = v4;
  return v3;
}

BOOL sub_100045490(id a1, unint64_t a2, void *a3)
{
  if (xpc_get_type(a3) != &_xpc_type_dictionary)
  {
    sub_10004749C(65539, "services[%zu] is not a dictionary");
    return 0;
  }

  if (!xpc_dictionary_get_dictionary(a3, "plist"))
  {
    sub_10004749C(65539, "services[%zu] is missing or has invalid plist key");
    return 0;
  }

  if (!xpc_dictionary_get_uint64(a3, "xpc-domain"))
  {
    sub_10004749C(65539, "services[%zu] is missing or has invalid xpc-domain key");
    return 0;
  }

  if (!xpc_dictionary_get_string(a3, "origin"))
  {
    sub_10004749C(65539, "services[%zu] is missing or has invalid origin key");
    return 0;
  }

  return 1;
}

BOOL sub_100045558(id a1, unint64_t a2, void *a3)
{
  v4 = sub_10000C5CC(a3);
  if (v4)
  {
    sub_10004749C(65539, "failed to merge persisted jetsam property overlay[%zu]: %d", a2, v4);
  }

  return 1;
}

BOOL sub_1000455A8(id a1, unint64_t a2, void *a3)
{
  uint64 = xpc_dictionary_get_uint64(a3, "xpc-domain");
  value = xpc_dictionary_get_value(a3, "plist");
  string = xpc_dictionary_get_string(a3, "origin");
  v7 = xpc_dictionary_get_string(value, "Label");
  v8 = sub_10002CB18(uint64);
  if (v8 == &unk_10007D720)
  {
    v10 = sub_10003283C();
    if (!v10)
    {
LABEL_15:
      sub_10004749C(65539, "failed to lookup domain for persisted service");
      goto LABEL_16;
    }
  }

  else
  {
    if (v8 != qword_10007D7A8)
    {
      sub_100054404();
    }

    v9 = 0;
    while (1)
    {
      v10 = qword_10007D7A8[v9];
      if (v10)
      {
        break;
      }

LABEL_7:
      if (++v9 == 11)
      {
        goto LABEL_15;
      }
    }

    while (!sub_1000443C8(v10))
    {
      v10 = *(v10 + 32);
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  v15 = 0;
  v11 = sub_100041E64(value, v10, string, &v15);
  v12 = v15;
  if (!v15)
  {
    sub_10004749C(65541, "successfully submitted persisted service: %s to %s domain");
    return 1;
  }

  if (v11)
  {
    sub_100054404();
  }

  v13 = xpc_strerror();
  sub_10004749C(65539, "persisted submit job failed: service = %s, error = %d: %s", v7, v12, v13);
  if (v15)
  {
LABEL_16:
    sub_10004749C(65539, "failed to restore service[%zu]: %d");
  }

  return 1;
}

void sub_10004575C()
{
  v0 = mach_host_self();
  host_reboot(v0, 4096);
  __break(1u);
}

void *sub_100045778(int a1)
{
  if (a1)
  {
    if (dlopen("/usr/lib/system/libsystem_notify.dylib", 1))
    {
      notify_set_options();
    }

    if (!dlopen("/usr/lib/system/libsystem_info.dylib", 1))
    {
LABEL_8:
      result = dlopen("/usr/lib/system/libsystem_trace.dylib", 1);
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    notify_set_options();
  }

  si_search_module_set_flags();
  si_search_module_set_flags();
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:

  return _os_trace_set_mode(256);
}

char *sub_100045838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v12, 0x408uLL);
  sub_100045AF8(a1, a2, a3, v12, 1032);
  if ((v6 & 0x80000000) == 0)
  {
    if (!v6)
    {
      return sub_100016744(&size[4], *size - 8);
    }

    return 0;
  }

  if (*__error() != 34)
  {
    return 0;
  }

  v8 = *size;
  v9 = sub_100014514(*size, 0xB78E53C6uLL);
  sub_100045AF8(a1, a2, a3, v9, v8);
  if (v10)
  {
    if (*__error() != 3 && *__error())
    {
      _os_assumes_log();
    }

    v7 = 0;
  }

  else
  {
    v7 = sub_100016744(&v9[1], v9->u32[1] - 8);
  }

  free(v9);
  return v7;
}

xpc_object_t sub_100045984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(&v13, 0x408uLL);
  if (a3 != 16 && a3 != 7)
  {
    return 0;
  }

  sub_100045AF8(a1, a2, a3, &v13, 1032);
  if (v6 < 0)
  {
    if (*__error() != 34)
    {
      return 0;
    }

    v8 = LODWORD(size[0]);
    v9 = sub_100014514(LODWORD(size[0]), 0xD230A7E8uLL);
    sub_100045AF8(a1, a2, a3, v9, v8);
    if (v10)
    {
      if (*__error() != 3 && *__error())
      {
        _os_assumes_log();
      }
    }

    else
    {
      v12 = v9->u32[1];
      if (v12 && v9->i32[0])
      {
        v7 = xpc_data_create(&v9[1], v12 - 8);
LABEL_19:
        free(v9);
        return v7;
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  if (v6 || !LODWORD(size[0]) || !v13)
  {
    return 0;
  }

  return xpc_data_create(size + 4, LODWORD(size[0]) - 8);
}

int8x8_t sub_100045AF8(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t *a4, uint64_t a5)
{
  if (a2)
  {
    csops_audittoken();
  }

  else
  {
    csops();
  }

  result = vrev32_s8(*a4);
  *a4 = result;
  return result;
}

xpc_object_t sub_100045B54(uint64_t a1, uint64_t a2)
{
  result = sub_100045984(a1, a2, 16);
  if (result)
  {
    v3 = result;
    bytes_ptr = xpc_data_get_bytes_ptr(result);
    length = xpc_data_get_length(v3);
    v6 = xpc_create_from_ce_der(bytes_ptr, length);
    xpc_release(v3);
    return v6;
  }

  return result;
}

uint64_t sub_100045BAC(int a1, void *buffer)
{
  if (proc_pidinfo(a1, 13, 1uLL, buffer, 64) == 64)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

uint64_t sub_100045BEC(int a1, void *buffer)
{
  if (proc_pidinfo(a1, 18, 1uLL, buffer, 192) == 192)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

char *sub_100045C2C(uint64_t a1, char *a2)
{
  v3 = sub_100045BAC(*(a1 + 20), a2);
  v4 = "(dead-on-arrival)";
  if (v3 != 3)
  {
    v4 = "(confusing)";
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return a2 + 16;
  }
}

char *sub_100045C78(int a1, char *a2)
{
  buffer = 0u;
  memset(v8, 0, sizeof(v8));
  v4 = sub_100045BAC(a1, &buffer);
  v5 = "(unknown)";
  if (!v4)
  {
    v5 = v8;
  }

  snprintf(a2, 0x20uLL, "%s[%d]", v5, a1);
  return a2;
}

uint64_t sub_100045D20(int a1, void *buffer)
{
  if (proc_pidinfo(a1, 20, 1uLL, buffer, 40) == 40)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

size_t sub_100045D60(const char *a1, char **a2)
{
  *__error() = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__s1 = 0u;
  v12 = 0u;
  size = 128;
  v4 = sysctlbyname(a1, __s1, &size, 0, 0);
  v5 = v4;
  if (size)
  {
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    size = 128;
    *__error() = 12;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (*__error() != 12)
  {
    return 0;
  }

LABEL_6:
  if (size != 128 || *__error() != 12)
  {
    v7 = 0;
    v8 = __s1;
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_16:
    *a2 = strdup(v8);
    goto LABEL_17;
  }

  if (sysctlbyname(a1, 0, &size, 0, 0))
  {
    return 0;
  }

  if (size < 0x81)
  {
    v7 = 0;
    v8 = __s1;
    goto LABEL_16;
  }

  v8 = sub_100014514(size, 0xDA5AEC60uLL);
  v9 = sysctlbyname(a1, v8, &size, 0, 0);
  v7 = v8;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_11:
  size = 0;
LABEL_17:
  free(v7);
  return size;
}

uint64_t sub_100045EF0(const char *a1, void *a2)
{
  v7 = 0;
  if (sysctlbyname(a1, 0, &v7, 0, 0))
  {
    return 0;
  }

  if (v7 == 8)
  {
    return 8 * (sysctlbyname(a1, a2, &v7, 0, 0) == 0);
  }

  if (v7 != 4)
  {
    return 0;
  }

  v6 = 0;
  v5 = sysctlbyname(a1, &v6, &v7, 0, 0);
  result = 0;
  if (!v5)
  {
    *a2 = v6;
    return 8;
  }

  return result;
}

uint64_t sub_100045FDC(const char *a1, void *a2, size_t a3)
{
  result = sysctlbyname(a1, 0, 0, a2, a3);
  if (result)
  {
    v4 = result;
    result = __error();
    if (v4 == -1 && *result != 2)
    {
      return sub_10005455C();
    }
  }

  return result;
}

uint64_t sub_100046060(char *a1, const char *a2, uint64_t a3)
{
  v5 = strstr(a1, a2);
  if (v5)
  {
    __endptr = 0;
    v6 = &v5[strlen(a2)];
    v7 = strtoul(v6, &__endptr, 10);
    if (v6 != __endptr)
    {
      return v7;
    }
  }

  return a3;
}

uint64_t sub_1000460D8(mem_entry_name_port_t object, mach_vm_size_t size, mach_vm_address_t *a3, int a4)
{
  address = 0;
  result = mach_vm_map(mach_task_self_, &address, size, 0, 1, object, 0, a4 ^ 1, 67, 67, 2u);
  if (!result)
  {
    *a3 = address;
  }

  return result;
}

uint64_t sub_100046150(mach_vm_size_t size, mach_vm_address_t *a2, int a3)
{
  v6 = 67;
  cur_protection = 67;
  target_address = 0;
  result = mach_vm_remap(mach_task_self_, &target_address, size, 0, 16385, mach_task_self_, *a2, a3 ^ 1, &cur_protection, &v6, 2u);
  if (!result)
  {
    *a2 = target_address;
  }

  return result;
}

uint64_t sub_1000461D4(int a1, rlim_t *a2, rlim_t *a3)
{
  v8.rlim_cur = 0;
  v8.rlim_max = 0;
  result = getrlimit(a1, &v8);
  if (!result)
  {
    rlim_cur = v8.rlim_cur;
    if (v8.rlim_cur == 0x7FFFFFFFFFFFFFFFLL)
    {
      rlim_cur = -1;
    }

    if (v8.rlim_max == 0x7FFFFFFFFFFFFFFFLL)
    {
      rlim_max = -1;
    }

    else
    {
      rlim_max = v8.rlim_max;
    }

    *a2 = rlim_cur;
    *a3 = rlim_max;
  }

  return result;
}

uint64_t sub_100046230(int a1, unint64_t a2, rlim_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = a2;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = a3;
  }

  if (a1 == 8)
  {
    v8 = "kern.maxfilesperproc";
    v9 = "kern.maxfiles";
    goto LABEL_11;
  }

  if (a1 == 7)
  {
    v8 = "kern.maxprocperuid";
    v9 = "kern.maxproc";
LABEL_11:
    sub_100046328(v9, v7, a4);
    sub_100046328(v8, v6, v4);
  }

  v13.rlim_cur = v6;
  v13.rlim_max = v7;
  if (v4)
  {
    v12.rlim_cur = 0;
    v12.rlim_max = 0;
    if (!getrlimit(a1, &v12))
    {
      rlim_max = 0x7FFFFFFFFFFFFFFFLL;
      if (v12.rlim_max == 0x7FFFFFFFFFFFFFFFLL || (rlim_max = v12.rlim_max, v7 < v12.rlim_max))
      {
        v13.rlim_max = rlim_max;
      }
    }
  }

  result = setrlimit(a1, &v13);
  if (result)
  {
    return _os_assumes_log();
  }

  return result;
}

uint64_t sub_100046328(const char *a1, unint64_t a2, int a3)
{
  v10 = 0x7FFFFFFF;
  v9 = 4;
  result = sysctlbyname(a1, &v10, &v9, 0, 0);
  if (!a3 || !result && v9 == 4 && (v10 & 0x80000000) == 0 && v10 < a2)
  {
    if (a2 >> 31)
    {
      v7 = 0x7FFFFFFF;
    }

    else
    {
      v7 = a2;
    }

    v8 = v7;
    return sysctlbyname(a1, 0, 0, &v8, 4uLL);
  }

  return result;
}

uint64_t sub_1000463D0(char *__s2, unint64_t a2, rlim_t a3, uint64_t a4)
{
  v8 = 9;
  for (i = &dword_10007DB50; ; i += 4)
  {
    result = strcmp(*(i - 1), __s2);
    if (!result)
    {
      break;
    }

    if (!--v8)
    {
      return result;
    }
  }

  v11 = *i;

  return sub_100046230(v11, a2, a3, a4);
}

uint64_t sub_100046468(int a1)
{
  v1 = &dword_10007DB50;
  v2 = 9;
  while (*v1 != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

vm_address_t sub_10004649C(uint64_t a1)
{
  address = 0;
  if (vm_allocate(mach_task_self_, &address, (a1 + vm_page_size - 1) & -vm_page_size, -268435453))
  {
    _os_assumes_log();
  }

  return address;
}

vm_address_t sub_100046508(uint64_t a1)
{
  address = 0;
  if (vm_allocate(mach_task_self_, &address, (a1 + vm_page_size - 1) & -vm_page_size, -268435455))
  {
    _os_assumes_log();
  }

  return address;
}

void sub_100046594(int a1, uint64_t a2)
{
  v2 = a2;
  if (a1 == 1)
  {
    sub_100010B3C(570425404, 0);
    reboot(v2);
    if (*__error() == 16)
    {
      sub_10004663C();
    }

    goto LABEL_8;
  }

  if (a1 == 2)
  {
    sub_10004575C();
  }

  if (a1 != 3)
  {
    sub_100010B3C(570425404, 2);
    sub_100046650(v2);
LABEL_8:
    __error();
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  sub_100010B3C(570425404, 1);
  sub_100048D04("recovery-mode");
  __break(1u);
}

void sub_10004663C()
{
  while (1)
  {
    pause();
  }
}

uint64_t sub_100046650(char a1)
{
  v14 = 0;
  v2 = _NSGetArgv();
  v3 = "-s";
  if ((a1 & 2) == 0)
  {
    v3 = 0;
  }

  __argv[0] = **v2;
  __argv[1] = v3;
  __argv[2] = 0;
  v12 = 0;
  sub_100015410(0);
  v11[0] = 1;
  if ((sub_10003DF3C() & 1) == 0 && sysctlbyname("vm.shared_region_pivot", 0, 0, v11, 4uLL) == -1)
  {
    goto LABEL_21;
  }

  unsetenv("XPC_IN_REM");
  unsetenv("XPC_IN_REM_DEVELOPMENT");
  if (setenv("XPC_USERSPACE_REBOOTED", "1", 1) == -1)
  {
    goto LABEL_19;
  }

  if (posix_spawnattr_init(&v14))
  {
    _os_assumes_log();
  }

  if (posix_spawnattr_setflags(&v14, 16448))
  {
    _os_assumes_log();
  }

  v4 = sub_100048DB4();
  if (!v4)
  {
LABEL_17:
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_BOOL(empty, "on-system-volume", 1);
    xpc_dictionary_set_string(empty, "signing-identifier", "com.apple.xpc.launchd");
    xpc_dictionary_set_int64(empty, "validation-category", 1);
    v7 = sub_100010D84(1, 0, empty);
    v8 = sub_100010E34(v7);
    xpc_data_get_bytes_ptr(v8);
    xpc_data_get_length(v8);
    if (amfi_launch_constraint_set_spawnattr())
    {
LABEL_20:
      _os_assert_log();
      _os_crash();
      __break(1u);
LABEL_21:
      __error();
      _os_assert_log();
      _os_crash();
      __break(1u);
      goto LABEL_22;
    }

    v9 = _NSGetEnviron();
    posix_spawn(&v12, "/sbin/launchd", 0, &v14, __argv, *v9);
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_19:
    __error();
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v5 = sub_1000016EC(v4);
  if (setenv("XPC_USERSPACE_REBOOT_TO_BOOT_MODE", v5, 1) == -1)
  {
LABEL_22:
    __error();
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_23:
    __error();
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  if (!sub_100048DCC() || setenv("XPC_IN_REM_DEVELOPMENT", "1", 1) != -1)
  {
    v11[2] = 0;
    if (!sub_100044E04())
    {
      _os_assumes_log();
    }

    v11[0] = 0;
    v11[1] = _xpc_shmem_get_mach_port();
    if (posix_spawnattr_set_registered_ports_np() == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_24:
  __error();
  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t sub_1000468E8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = terminate_with_reason();
  if (result)
  {
    if (*__error() == 3)
    {
      return 0;
    }

    else
    {
      return *__error();
    }
  }

  return result;
}

uint64_t sub_100046938()
{
  v0 = kill(-1, 9);
  if (v0)
  {
    if (*__error() == 1)
    {
      sub_10004749C(65540, "kill(-1, SIGKILL) returned EPERM (expected at most twice)");
    }

    else if (v0 == -1)
    {
      sub_10005455C();
    }
  }

  return v0;
}

uint64_t sub_1000469E0(uint64_t a1, int a2)
{
  if (!csops_audittoken())
  {
    return a2 == 0;
  }

  if (*__error() == 3)
  {
    return 0;
  }

  result = *__error();
  if (result)
  {
    _os_assumes_log();
    return 0;
  }

  return result;
}

BOOL sub_100046A70(pid_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  if (kill(a1, 0))
  {
    return *__error() != 3;
  }

  return 1;
}

uint64_t sub_100046ABC(pid_t a1, int a2)
{
  result = kill(a1, a2);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_100046B18(pid_t a1, int *a2, int a3, rusage *a4)
{
  if (wait4(a1, a2, a3, a4) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046B54(int pid, integer_t *a2)
{
  tn = 0;
  task_info_outCnt = 8;
  v3 = task_name_for_pid(mach_task_self_, pid, &tn);
  if (!v3)
  {
    v3 = task_info(tn, 0xFu, a2, &task_info_outCnt);
    mach_port_deallocate(mach_task_self_, tn);
  }

  return v3;
}

uint64_t sub_100046BD4(uint64_t a1, uint64_t a2)
{
  v2 = memorystatus_control();
  result = 0;
  if (v2 != 24)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_100046C18(int a1)
{
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  if (!sub_100045BAC(a1, v2))
  {
    return (v3 >> 1) & 1;
  }

  _os_assumes_log();
  return 0;
}

void sub_100046CAC(const char *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  *__str = 0u;
  v2 = 0u;
  snprintf(__str, 0xA0uLL, "XPC API Misuse: %s", a1);
  qword_10007DCB8 = __str;
  __break(1u);
}

void sub_100046D04(uint64_t a1)
{
  free(*(a1 + 24));
  v2 = *(a1 + 48);

  free(v2);
}

uint64_t sub_100046D40(const char *a1)
{
  if (atomic_load_explicit(byte_10007E978, memory_order_acquire))
  {
    v1 = 3;
  }

  else
  {
    v1 = 65539;
  }

  sub_10004749C(v1, "%s", a1);
  return 1;
}

void sub_100046D94()
{
  if (qword_10007E958 != -1)
  {
    sub_100055150();
  }

  mkdir(off_10007DC18[0], 0x1C0u);
  if ((byte_10007F0E3 & 1) == 0)
  {
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "/private/%s", "/var/run/syslog");
    v14 = 0u;
    memset(v15, 0, sizeof(v15));
    v12 = 0u;
    v13 = 0u;
    v10 = 0;
    v11 = 0u;
    v10.sa_family = 1;
    strncpy(v10.sa_data, __str, 0x67uLL);
    v0 = socket(1, 2, 0);
    if (v0 == -1)
    {
      v4 = *__error();
      __error();
      v5 = xpc_strerror();
      sub_10004749C(65539, "Could not create system logger socket: error = %d: %s", v4, v5);
      goto LABEL_22;
    }

    v1 = v0;
    if (unlink(v10.sa_data) == -1 && *__error() != 2)
    {
      __error();
      __error();
      xpc_strerror();
      sub_10004749C(65539, "Could not unlink previous system logger socket: error = %d: %s");
    }

    else
    {
      v2 = bind(v1, &v10, 0x6Au);
      if (!v2)
      {
        goto LABEL_16;
      }

      v3 = v2;
      while (*__error() == 35 || *__error() == 4)
      {
        v3 = bind(v1, &v10, 0x6Au);
        if (!v3)
        {
          goto LABEL_16;
        }
      }

      if (v3 != -1)
      {
LABEL_16:
        if (chmod(v10.sa_data, 0x1B6u) == -1)
        {
          v6 = *__error();
          __error();
          v7 = xpc_strerror();
          sub_10004749C(65539, "Could not make system logger socket world-writable: error = %d: %s", v6, v7);
          if (unlink(v10.sa_data) == -1)
          {
            sub_10005453C();
          }
        }

        else
        {
          _os_log_simple_reinit_4launchd();
          dword_10007DBD8 = v1;
        }

        goto LABEL_22;
      }

      __error();
      __error();
      xpc_strerror();
      sub_10004749C(65539, "Could not bind to system logger socket: error = %d: %s");
    }

    sub_1000413F8(v1);
  }

LABEL_22:
  dispatch_activate(qword_10007E960);
  atomic_store(1u, byte_10007E978);
  v8 = off_10007DC30;
  v9 = getpid();
  sub_1000470CC(65541, "launchd logging initialized. name: %s pid: %d", v8, v9);
}

void sub_100047058()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  qword_10007E968 = dispatch_queue_create("com.apple.xpc.launchd.logq", v0);
  qword_10007E960 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, qword_10007E968);
  dispatch_source_set_event_handler(qword_10007E960, &stru_100079C68);
  qword_10007F170 = 0;
  qword_10007F178 = &qword_10007F170;
}

void sub_1000470CC(uint64_t a1, char *a2, ...)
{
  va_start(va, a2);
  sub_1000474DC(0, a1, a2, va, v2);
  dispatch_sync(qword_10007E968, &stru_100079C28);
}

void sub_100047120()
{
  sub_1000470CC(5, "bye");
  v0 = qword_10007E968;

  dispatch_suspend(v0);
}

void sub_100047170(id a1)
{
  sub_1000471B4();
  if (qword_10007E970)
  {
    v1 = fileno(qword_10007E970);

    fcntl(v1, 51);
  }
}

uint64_t sub_1000471B4()
{
  v17 = 0;
  v18 = &v17;
  if ((atomic_load_explicit(byte_10007E978, memory_order_acquire) & 1) == 0)
  {
    v0 = sub_1000168E0("Flushing logs before initialization. Early logs may not be written to file.");
    v1 = sub_10004768C(4, 0, v0, 0);
    sub_100047788(v1, 0);
    sub_10001B690(v1, 0);
  }

  os_unfair_lock_lock(&stru_10007E97C);
  if (qword_10007F170)
  {
    *v18 = qword_10007F170;
    v18 = qword_10007F178;
    qword_10007F170 = 0;
    qword_10007F178 = &qword_10007F170;
  }

  v2 = qword_10007E980;
  qword_10007E980 = 0;
  v3 = qword_10007E988;
  qword_10007E988 = 0;
  os_unfair_lock_unlock(&stru_10007E97C);
  v4 = v17;
  if (v17)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = qword_10007E990;
      if (!qword_10007E990)
      {
        goto LABEL_16;
      }

      if (*(qword_10007E990 + 16) != *(v4 + 16) || !sub_100016A6C(*(qword_10007E990 + 24), *(v4 + 24)) || !sub_100016A6C(*(v7 + 48), *(v4 + 48)))
      {
        break;
      }

      ++qword_10007E998;
LABEL_18:
      v17 = *(v17 + 80);
      if (!v17)
      {
        v18 = &v17;
      }

      sub_10001B690(v4, 0);
      ++v5;
      v4 = v17;
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    v8 = qword_10007E990;
    if (qword_10007E990)
    {
      if (qword_10007E998)
      {
        v9 = sub_1000168E0("Last log repeated %llu times", qword_10007E998);
        v10 = sub_10004768C(5, 0, v9, 0);
        sub_100047788(v10, 0);
        sub_10001B690(v10, 0);
        v8 = qword_10007E990;
      }

      sub_10001B690(v8, 0);
      qword_10007E990 = 0;
    }

LABEL_16:
    qword_10007E990 = sub_10001B5B8(v4, 0);
    qword_10007E998 = 0;
    v16 = 0;
    sub_100047788(v4, &v16);
    if (v16)
    {
      ++v6;
    }

    goto LABEL_18;
  }

  v6 = 0;
  v5 = 0;
LABEL_23:
  if (v5 == v2)
  {
    if (v3)
    {
LABEL_25:
      v11 = sub_1000168E0("%lld file logs dropped [in-flight %lld]: %lld os_log_simple logs dropped", v3, v2, v6);
      v12 = 4;
      goto LABEL_29;
    }
  }

  else
  {
    _os_assumes_log();
    if (v3)
    {
      goto LABEL_25;
    }
  }

  if (v2 < dword_10007DC78)
  {
    goto LABEL_31;
  }

  v11 = sub_1000168E0("Flushed %lld logs [limit: %d]", v2, dword_10007DC78);
  v12 = 5;
LABEL_29:
  v13 = sub_10004768C(v12, 0, v11, 0);
  v14 = v13;
  if (v13)
  {
    sub_100047788(v13, 0);
    sub_10001B690(v14, 0);
  }

LABEL_31:
  result = qword_10007E970;
  if (qword_10007E970)
  {
    return fflush(qword_10007E970);
  }

  return result;
}

void sub_1000474DC(const char *a1, uint64_t a2, char *a3, va_list a4, uint64_t a5)
{
  if ((a2 & 0xFFFEu) <= 5)
  {
    v13[5] = v5;
    v13[6] = v6;
    v8 = a2;
    v13[0] = 0;
    if (vasprintf(v13, a3, a4) != -1)
    {
      v10 = sub_10004768C(v8, a1, v13[0], a5);
      v11 = v10;
      if ((atomic_load_explicit(byte_10007E978, memory_order_acquire) & 1) == 0 && BYTE4(v10[1].tv_sec) == 1)
      {
        v12 = sub_100047A74(v10);
        sub_10000E350("%s|%s", off_10007DC30, v12);
        BYTE4(v11[1].tv_sec) = 0;
        free(v12);
      }

      if (qword_10007E958 != -1)
      {
        sub_100055170();
      }

      os_unfair_lock_lock(&stru_10007E97C);
      if (qword_10007E980 >> 4 < 0x271)
      {
        v11[5].tv_sec = 0;
        *qword_10007F178 = v11;
        qword_10007F178 = &v11[5];
        ++qword_10007E980;
        os_unfair_lock_unlock(&stru_10007E97C);
        dispatch_source_merge_data(qword_10007E960, 1uLL);
      }

      else
      {
        ++qword_10007E988;
        os_unfair_lock_unlock(&stru_10007E97C);
        sub_10001B690(v11, 0);
      }
    }
  }
}

timeval *sub_10004768C(int a1, const char *a2, __darwin_time_t a3, uint64_t a4)
{
  v9 = sub_10001BE58(0);
  v10 = v9;
  if ((a1 & 0x10000) != 0 || (byte_10007F135 & 1) != 0 || dword_10007DBD8 == -1)
  {
    v9[20] = 1;
  }

  if ((a1 & 0x20000) != 0)
  {
    v9[23] = 1;
  }

  *(v9 + 21) = 257;
  *(v9 + 4) = a1;
  if (a2)
  {
    v11 = sub_1000166EC(a2);
  }

  else
  {
    v11 = 0;
  }

  *&v10[1].tv_usec = v11;
  v10[3].tv_sec = a3;
  gettimeofday(v10 + 2, 0);
  if (!a4)
  {
    a4 = v4;
  }

  *&v10[3].tv_usec = a4;
  v10[4].tv_sec = os_log_simple_now();
  v13 = 0;
  pthread_threadid_np(0, &v13);
  *&v10[4].tv_usec = v13;
  return v10;
}

void sub_100047788(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 21) == 1)
  {
    if (dword_10007DBD8 == -1 || (byte_10007F0E3 & 1) != 0)
    {
      v4 = 0;
      if (!a2)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (!xmmword_10007E9C0)
    {
      *&xmmword_10007E9C0 = getpid();
      *&v16 = 0;
      v14 = 0u;
      v15 = 0u;
      buffer = 0u;
      v7 = getpid();
      proc_pidinfo(v7, 17, 0, &buffer, 56);
      *(&xmmword_10007E9C0 + 1) = v14;
      *&xmmword_10007E9D0 = v15;
      uuid_copy(&xmmword_10007E9E0 + 8, &buffer);
      uuid_copy(byte_10007E9F8, &buffer);
      uuid_clear(&xmmword_10007EA00 + 8);
      _dyld_get_shared_cache_uuid();
      qword_10007EA18 = _NSGetMachExecuteHeader();
    }

    v17 = xmmword_10007E9E0;
    v18 = unk_10007E9F0;
    v19 = xmmword_10007EA00;
    v20 = qword_10007EA10;
    buffer = xmmword_10007E9A0;
    v14 = *algn_10007E9B0;
    v15 = xmmword_10007E9C0;
    v16 = xmmword_10007E9D0;
    LOBYTE(buffer) = os_log_simple_type_from_asl();
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *(&buffer + 1) = *(a1 + 24);
    *&v14 = v8;
    v10 = *(a1 + 72);
    *(&v14 + 1) = *(a1 + 64);
    *(&v16 + 1) = v10;
    *&v17 = v9 - qword_10007EA18;
    v4 = _os_log_simple_send();
    if (a2)
    {
LABEL_5:
      *a2 = v4;
    }
  }

LABEL_6:
  v5 = sub_100047A74(a1);
  if (v5)
  {
    v6 = v5;
    if (*(a1 + 20) == 1)
    {
      sub_10000E3C4("%s|%s", off_10007DC30, v5);
    }

    if (*(a1 + 23) == 1)
    {
      if (*(a1 + 16) < 8u)
      {
        if (record_system_event_as_kernel())
        {
          __error();
          sub_10004749C(3, "Unable to record system event. Result: %d errno: %d Message: %s");
        }
      }

      else
      {
        sub_10004749C(3, "Log level out of bounds for system state conversion: %d");
      }
    }

    if (*(a1 + 22) == 1)
    {
      v11 = qword_10007E970;
      if (qword_10007E970 || (v11 = sub_10003E478(off_10007DC18[0]), (qword_10007E970 = v11) != 0))
      {
        v12 = strlen(v6);
        fwrite(v6, 1uLL, v12, v11);
        if (qword_10007DC70 >= 1)
        {
          qword_10007EA20 += v12;
          if (qword_10007EA20 >= qword_10007DC70)
          {
            sub_1000415F0(qword_10007E970);
            qword_10007E970 = 0;
            qword_10007EA20 = 0;
          }
        }
      }
    }

    free(v6);
  }

  else
  {
    sub_10000E290("_launch_log_format failed");
  }
}

char *sub_100047A74(uint64_t a1)
{
  *__str = 0;
  v5 = 0;
  memset(v6, 0, sizeof(v6));
  memset(&v3, 0, sizeof(v3));
  localtime_r((a1 + 32), &v3);
  snprintf(__str, 0x1BuLL, "%04d-%02d-%02d %02d:%02d:%02d.%06d", v3.tm_year + 1900, v3.tm_mon + 1, v3.tm_mday, v3.tm_hour, v3.tm_min, v3.tm_sec, *(a1 + 40));
  if (*(a1 + 24))
  {
    return sub_1000168E0("%s (%s) <%s>: %s\n");
  }

  else
  {
    return sub_1000168E0("%s <%s>: %s\n");
  }
}

void sub_100047B94(char *key, uint64_t a2)
{
  if (!qword_10007F138)
  {
    sub_1000441E0("boot task dictionary is not populated", a2);
  }

  v3 = a2;
  value = xpc_dictionary_get_value(qword_10007F138, key);
  if (!value)
  {
    sub_1000441E0("undefined boot task %s", key);
  }

  v5 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    sub_1000441E0("boot task %s is not a dictionary", key);
  }

  if (sub_100047C8C(key, v5))
  {

    sub_100047DD0(key, v5, v3);
  }

  else
  {

    sub_100047654(key, 196613, "Skipping boot-task");
  }
}

uint64_t sub_100047C8C(const char *a1, xpc_object_t xdict)
{
  if (xpc_dictionary_get_BOOL(xdict, "PerformAlways"))
  {
    v4 = 1;
  }

  else
  {
    if ((byte_10007F100 != 1 || xpc_dictionary_get_BOOL(xdict, "PerformAfterUserspaceReboot") || xpc_dictionary_get_BOOL(xdict, "PerformAfterUserspaceRebootOnly")) && ((byte_10007F100 & 1) != 0 || !xpc_dictionary_get_BOOL(xdict, "PerformAfterUserspaceRebootOnly")))
    {
      v5 = xpc_dictionary_get_BOOL(xdict, "PerformInRestore");
      if (byte_10007F0E4 != 1 || v5)
      {
        v7 = xpc_dictionary_get_BOOL(xdict, "PerformInLeanTestEnvironment");
        if (byte_10007F0E1 != 1 || v7)
        {
          v4 = byte_10007F0E5 ^ 1 | xpc_dictionary_get_BOOL(xdict, "PerformInBaseSystem");
          return v4 & 1;
        }

        sub_10004749C(65543, "%s not set, Skipping boot-task: %s", "PerformInLeanTestEnvironment", a1);
      }
    }

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100047DD0(const char *a1, void *a2, int a3)
{
  sub_100047654(a1, 196613, "Doing boot task");
  sub_100010B58(570425413, a1);
  if (xpc_dictionary_get_string(a2, "Block"))
  {
    if (xpc_dictionary_get_string(a2, "Program"))
    {
      sub_100054404();
    }

    if (xpc_dictionary_get_value(a2, "ProgramArguments"))
    {
      sub_100054404();
    }

    string = xpc_dictionary_get_string(a2, "Block");
    if (!string)
    {
      sub_1000441E0("Malformed boot-task (missing block key): %s", a1);
    }

    v7 = sub_10002B950(string);
    v7[2]();
    _Block_release(v7);
    return sub_100010B58(570425414, a1);
  }

  value = xpc_dictionary_get_value(a2, "RebootOnExitCode");
  if (value)
  {
    v10 = value;
    if (xpc_get_type(value) == &_xpc_type_int64)
    {
      v11 = xpc_int64_get_value(v10);
      sub_10004749C(65543, "%s: will reboot if exits with code: %d", a1, v11);
    }
  }

  if (xpc_dictionary_get_BOOL(a2, "RemoveOnSuccess"))
  {
    v12 = sub_1000490EC(a2);
    memset(&v67, 0, sizeof(v67));
    if (stat(v12, &v67))
    {
      return sub_100010B58(570425414, a1);
    }
  }

  *&v67.st_dev = *off_100079D48;
  *&v67.st_uid = *&off_100079D58;
  v13 = sub_1000490EC(a2);
  if (!v13)
  {
    sub_1000441E0("boot task has no program");
  }

  v14 = v13;
  v15 = xpc_dictionary_get_value(a2, "ProgramArguments");
  if (v15)
  {
    v16 = v15;
    if (xpc_get_type(v15) != &_xpc_type_array)
    {
      goto LABEL_105;
    }

    v17 = xpc_retain(v16);
  }

  else
  {
    v17 = xpc_array_create(0, 0);
  }

  v18 = v17;
  if (!xpc_array_get_count(v17))
  {
    xpc_array_set_string(v18, 0xFFFFFFFFFFFFFFFFLL, v14);
  }

  v19 = xpc_dictionary_get_BOOL(a2, "PassLaunchBootModeAsArgument");
  if (v19)
  {
    v21 = sub_10000184C(v19, v20);
    if (v21)
    {
      xpc_array_set_string(v18, 0xFFFFFFFFFFFFFFFFLL, v21);
    }
  }

  count = xpc_array_get_count(v18);
  v23 = count + 1;
  if (((count == -1) << 63) >> 63 != (count == -1) || v23 >> 61)
  {
    __break(1u);
LABEL_105:
    sub_1000441E0("boot task argument vector is not an array");
  }

  v24 = count;
  v25 = sub_100014514(8 * v23, 0x814A2B55uLL);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      v27 = xpc_array_get_string(v18, i);
      if (v27)
      {
        v25[i] = v27;
      }
    }
  }

  v66 = 0;
  v28 = posix_spawnattr_init(&v66);
  if (v28)
  {
    sub_100054420(v28);
  }

  v29 = posix_spawnattr_setflags(&v66, 16524);
  if (v29)
  {
    sub_100054420(v29);
  }

  if ((a3 & 1) == 0)
  {
    xpc_dictionary_get_BOOL(a2, "AllowCrash");
    v30 = xpc_dictionary_get_value(a2, "RebootOnExitCode");
    if (!v30 || xpc_get_type(v30) != &_xpc_type_int64)
    {
      xpc_dictionary_get_BOOL(a2, "RequireSuccess");
    }

    v31 = posix_spawnattr_set_crash_behavior_np();
    if (v31)
    {
      sub_100054420(v31);
    }
  }

  v32 = posix_spawnattr_setprocesstype_np();
  if (v32)
  {
    sub_100054420(v32);
  }

  v33 = posix_spawnattr_set_launch_type_np();
  if (v33)
  {
    sub_100054420(v33);
  }

  v65 = 0;
  v34 = posix_spawnattr_setsigmask(&v66, &v65);
  if (v34)
  {
    sub_100054420(v34);
  }

  v64 = -1;
  v35 = posix_spawnattr_setsigdefault(&v66, &v64);
  if (v35)
  {
    sub_100054420(v35);
  }

  v63 = 0;
  if (posix_spawn_file_actions_init(&v63) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(&v63, 0, "/dev/console", 0x20000, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(&v63, 1, "/dev/console", 131073, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(&v63, 2, "/dev/console", 131074, 0) == -1)
  {
    sub_10005453C();
  }

  v36 = mach_host_self();
  v37 = sub_10000B9C0(v36);
  v38 = mach_host_self();
  sub_100048C5C(v38, 0);
  if ((a3 & 4) != 0)
  {
    if (qword_10007EA38)
    {
      v69 = 0;
      mach_port = _xpc_shmem_get_mach_port();
      if (posix_spawnattr_set_registered_ports_np() == -1)
      {
        sub_10005453C();
      }
    }

    else
    {
      sub_10004749C(65539, "Skipping setting up shared memory with cache loader");
    }
  }

  v62 = 0;
  v39 = posix_spawnp(&v62, v14, &v63, &v66, v25, &v67);
  if (posix_spawn_file_actions_destroy(&v63) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawnattr_destroy(&v66) == -1)
  {
    sub_10005453C();
  }

  free(v25);
  xpc_release(v18);
  v40 = mach_host_self();
  sub_100048C5C(v40, v37);
  if (v39)
  {
    v41 = (a3 & 1) == 0 && xpc_dictionary_get_BOOL(a2, "RequireRun");
    if (v39 != 2)
    {
      v51 = strerror(v39);
      sub_100047654(a1, 196611, "posix_spawn(): %d: %s", v39, v51);
      if (!v41)
      {
        return sub_100010B58(570425414, a1);
      }

      memset(&v67, 0, 64);
      v52 = strerror(v39);
      snprintf(&v67, 0x40uLL, "posix_spawn: %d: %s", v39, v52);
      v50 = &v67;
LABEL_70:
      sub_100048D0C(a1, v50);
    }

    if (v41)
    {
      v48 = 196611;
    }

    else
    {
      v48 = 196613;
    }

    v49 = "optional";
    if (v41)
    {
      v49 = "required";
    }

    sub_100047654(a1, v48, "%s boot task not present", v49);
    if (v41)
    {
      v50 = "required boot task executable not found";
      goto LABEL_70;
    }
  }

  else
  {
    v42 = v62;
    v43 = xpc_dictionary_get_string(a2, "CSIdentityOverride");
    mach_port = 0;
    if (csops() || (mach_port & 0x4000000) == 0)
    {
      v59 = sub_1000490EC(a2);
      sub_100044244("boot task is not a platform binary (%s, %s)", a1, v59);
    }

    *__error() = 0;
    v44 = sub_100045830(v42, 0);
    v45 = sub_1000490EC(a2);
    v46 = v45;
    if (!v44)
    {
      v60 = __error();
      sub_1000441E0("failed to get the code signing identity for a boot-task (%s, %s) errno: %d", a1, v46, *v60);
    }

    if (v43)
    {
      v47 = sub_1000166EC(v43);
    }

    else
    {
      v53 = strrchr(v45, 47);
      if (v53)
      {
        v54 = v53 + 1;
      }

      else
      {
        v54 = v46;
      }

      v47 = sub_1000168E0("com.apple.%s", v54);
    }

    v55 = v47;
    if (!v47)
    {
      sub_100054404();
    }

    if (strcmp(v47, v44))
    {
      v61 = sub_1000490EC(a2);
      sub_100044244("code signing identity mismatch for a boot-task (%s, %s) observed=%s expected=%s", a1, v61, v44, v55);
    }

    free(v44);
    free(v55);
    if (kill(v62, 19) == -1)
    {
      v56 = *__error();
      if (v56)
      {
        sub_100054420(v56);
      }
    }

    v57 = v62;
    if (xpc_dictionary_get_BOOL(a2, "Async"))
    {
      if (a3)
      {
        sub_1000441E0("Async boot task %s must not have flags", a1);
      }

      empty = qword_10007F060;
      if (!qword_10007F060)
      {
        empty = xpc_dictionary_create_empty();
        qword_10007F060 = empty;
      }

      xpc_dictionary_set_int64(empty, a1, v57);
    }

    else
    {
      sub_100049180(a1, a2, a3, v57);
    }
  }

  return sub_100010B58(570425414, a1);
}

void sub_100048590()
{
  bzero(&v12, 0x878uLL);
  if (statfs("/", &v12) == -1)
  {
    __error();
    _os_assumes_log();
  }

  else if (v12.f_flags)
  {
    sub_100047B94("fsck", 0);
  }

  sub_100047B94("mount-phase-1", 0);
  sub_100047B94("data-protection", 0);
  sub_100047B94("finish-obliteration", 0);
  sub_100047B94("detect-installed-roots", 0);
  sub_100047B94("select-boot-mode", 0);
  sub_100047B94("commit-boot-mode", 0);
  if (sub_100033390())
  {
    sub_100047B94("rem-enable-fuse", 0);
  }

  sub_100047B94("restore-datapartition", 0);
  sub_100047B94("mount-phase-2", 0);
  sub_100047B94("init-with-data-volume", 0);
  sub_100047B94("fixup-mobile-tmp", 0);
  sub_100047B94("MSUEarlyBootTask", 0);
  sub_100047B94("MobileAssetEarlyBootTask", 0);
  sub_100047B94("fips", 0);
  if (os_variant_is_darwinos())
  {
    sub_100047B94("darwinos-boot-task", 0);
  }

  sub_100047B94("keybag", 0);
  sub_100047B94("usermanagerd", 0);
  sub_100047B94("dirs_cleaner", 0);
  sub_100047B94("dirs_cleaner-usr", 0);
  sub_100046D94();
  if ((byte_10007F0E4 & 1) == 0 && (byte_10007F0E5 & 1) == 0)
  {
    nullsub_23();
  }

  sub_100047B94("xpcroleaccountd", 0);
  sub_100047B94("init_featureflags", 0);
  j__libSystem_init_after_boot_tasks_4launchd();
  if ((byte_10007F0E4 & 1) == 0 && (byte_10007F0E5 & 1) == 0 && (byte_10007F100 & 1) == 0)
  {
    v0 = ne_session_initialize_necp_drop_all();
    if (v0)
    {
      v1 = v0;
      v2 = strerror(v0);
      sub_10004749C(65539, "Could not opt into Always-On VPN: %d: %s", v1, v2);
    }
  }

  sub_100047B94("auearlyboot", 0);
  sub_100047B94("tzinit", 0);
  sub_100047B94("finish-restore", 0);
  sub_100047B94("finish-demo-restore", 0);
  sub_10004E490();
  sub_100047B94("sysstatuscheck", 0);
  sub_100047B94("prng_seedctl", 0);
  if ((byte_10007F0E4 & 1) == 0)
  {
    v3 = open("/var/run/utmpx", 512, 438);
    if (v3 != -1)
    {
      sub_1000413F8(v3);
    }

    remove("/etc/nologin", v4);
  }

  v5 = sub_10001AB48();
  v6 = v5;
  if (v5)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v6);
    v9 = xpc_shmem_create(bytes_ptr, (length + vm_page_size - 1) & -vm_page_size);
    if (!v9)
    {
      sub_100054404();
    }

    qword_10007EA38 = v9;
  }

  sub_100047B94("launchd_cache_loader", 4);
  if (qword_10007EA38)
  {
    xpc_release(qword_10007EA38);
    qword_10007EA38 = 0;
  }

  nullsub_23();
  sub_100047B94("workload-properties-init", 0);
  sub_100047B94("init-exclavekit", 0);
  if (qword_10007F060)
  {
    xpc_dictionary_apply(qword_10007F060, &stru_100079D28);
    xpc_release(qword_10007F060);
    qword_10007F060 = 0;
  }

  sub_10001AC80(v6);
  if (v6)
  {
    xpc_release(v6);
  }

  sub_100011BD4();
  sub_100047654("boot", 196613, "Early boot complete. Continuing system boot.");
  sub_1000324D4();
  sub_10004519C(v10, v11);
}

void sub_1000489A4()
{
  if ((byte_10007F100 & 1) == 0 && sysctlbyname("kern.hostname", 0, 0, "localhost", 0xAuLL) == -1)
  {
    sub_10005453C();
  }

  sub_10001055C();
  if ((byte_10007F100 & 1) == 0)
  {
    v5 = 0u;
    v6 = 0u;
    LODWORD(v5) = 3174252;
    v0 = socket(2, 2, 0);
    if (v0 == -1)
    {
      sub_10005455C();
    }

    else
    {
      v1 = v0;
      if (ioctl(v0, 0xC0206911uLL, &v5) == -1 || (LOWORD(v6) = v6 | 1, ioctl(v1, 0x80206910uLL, &v5) == -1) || (memset(&v7[1] + 4, 0, 32), *(v7 + 4) = 0u, *(&v7[3] + 1) = 0, strcpy(v7, "lo0"), DWORD1(v7[1]) = 16777343, LOWORD(v7[1]) = 528, DWORD1(v7[3]) = 255, LOWORD(v7[3]) = 528, ioctl(v1, 0x8040691AuLL, v7) == -1))
      {
        sub_100055194(v1);
      }

      else
      {
        sub_1000413F8(v1);
      }
    }

    if ((byte_10007F100 & 1) == 0)
    {
      v2 = socket(30, 2, 0);
      if (v2 == -1)
      {
        sub_10005455C();
      }

      else
      {
        v3 = v2;
        v5 = 0u;
        v6 = 0u;
        LODWORD(v5) = 3174252;
        if (ioctl(v2, 0xC0206911uLL, &v5) == -1 || (memset(v7, 0, sizeof(v7)), v8 = 0u, v9 = 0u, v11 = 0, v10 = 0u, strcpy(v7, "lo0"), *(&v7[1] + 8) = in6addr_loopback, LOWORD(v7[1]) = 7708, *&v9 = -1, *(&v9 + 1) = -1, WORD4(v8) = 7708, v12 = -1, ioctl(v3, 0x8080691AuLL, v7) == -1) && *__error() != 17)
        {
          sub_100055194(v3);
        }

        else
        {
          sub_1000413F8(v3);
        }
      }
    }
  }

  sub_100047B94("exclaves-boot", 0);
  v4 = sub_1000157D8();
  dispatch_async(v4, &stru_100079CE8);
}

uint64_t sub_100048C5C(task_t a1, mach_port_t new_port)
{
  if (byte_10007F130)
  {
    v3 = 7168;
  }

  else
  {
    v3 = 10240;
  }

  if (mach_task_self_ == a1)
  {

    return task_set_exception_ports(a1, v3, new_port, -1610612732, 1);
  }

  else
  {
    v5 = mach_host_self();

    return host_set_exception_ports(v5, v3, new_port, -1610612732, 1);
  }
}

void sub_100048D0C(const char *a1, const char *a2)
{
  if (a2)
  {
    v2 = sub_1000168E0("%s - %s", a1, a2);
  }

  else
  {
    v2 = sub_1000166EC(a1);
  }

  v3 = v2;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x40uLL, "boot task failure: %s", v2);
  pthread_setname_np(__str);
  sub_10004749C(196608, "Boot task failed: %s", v3);
  sub_10004749C(196608, "Panicking in 3 seconds.");
  sleep(3u);
  sub_100044244("boot task failure: %s", v3);
}

void sub_100048E2C(const char *a1)
{
  v1 = qword_10007EA30;
  qword_10007EA30 = sub_1000166EC(a1);

  free(v1);
}

void sub_100048E6C()
{
  __argv[0] = "devicerecoverytool";
  __argv[1] = "--recovery-reason";
  __argv[2] = qword_10007EA30;
  __argv[3] = 0;
  v14 = 0;
  v0 = posix_spawnattr_init(&v14);
  if (v0)
  {
    sub_100054420(v0);
  }

  v1 = posix_spawnattr_setflags(&v14, 16396);
  if (v1)
  {
    sub_100054420(v1);
  }

  v2 = posix_spawnattr_set_launch_type_np();
  if (v2)
  {
    sub_100054420(v2);
  }

  v13 = 0;
  v3 = posix_spawnattr_setsigmask(&v14, &v13);
  if (v3)
  {
    sub_100054420(v3);
  }

  v12 = -1;
  v4 = posix_spawnattr_setsigdefault(&v14, &v12);
  if (v4)
  {
    sub_100054420(v4);
  }

  v11 = 0;
  if (posix_spawn_file_actions_init(&v11) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(&v11, 0, "/dev/console", 0x20000, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(&v11, 1, "/dev/console", 131073, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(&v11, 2, "/dev/console", 131074, 0) == -1)
  {
    sub_10005453C();
  }

  *__envp = *off_100079D48;
  v17 = *&off_100079D58;
  v10 = 0;
  v5 = posix_spawnp(&v10, "/usr/libexec/devicerecoverytool", &v11, &v14, __argv, __envp);
  if (!v5)
  {
    v9 = 0;
    v6 = waitpid(v10, &v9, 0);
    if (v6 == v10)
    {
      if ((v9 & 0x7F) != 0x7F)
      {
        if ((v9 & 0x7F) != 0)
        {
          strsignal(v9 & 0x7F);
          sub_10004749C(65539, "%s exited with signal = %s");
        }

        else if (BYTE1(v9))
        {
          sub_10004749C(65539, "%s exited with exit code = %d");
        }
      }
    }

    else
    {
      v7 = *__error();
      if (v7)
      {
        sub_100054420(v7);
      }
    }
  }

  if (posix_spawnattr_destroy(&v14) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_destroy(&v11) == -1)
  {
    sub_10005453C();
  }

  if (v5)
  {
    v8 = strerror(v5);
    sub_10004749C(65539, "spawn of %s failed: %s", "/usr/libexec/devicerecoverytool", v8);
  }
}

char *sub_1000490EC(void *a1)
{
  result = xpc_dictionary_get_string(a1, "Program");
  if (!result)
  {
    result = xpc_dictionary_get_value(a1, "ProgramArguments");
    if (result)
    {
      v3 = result;
      if (xpc_get_type(result) == &_xpc_type_array)
      {
        result = xpc_array_get_count(v3);
        if (result)
        {

          return xpc_array_get_string(v3, 0);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100049180(const char *a1, void *a2, char a3, pid_t pid)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v26, 0, sizeof(v26));
  v7 = sub_100049F58(v24, pid, v26);
  if (LODWORD(v24[0]) != 3)
  {
    v23 = sub_1000490EC(a2);
    sub_1000441E0("failed to reap boot-task (%s, %s)", a1, v23);
  }

  v8 = v7;
  if (a3)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = xpc_dictionary_get_BOOL(a2, "RequireSuccess");
    v10 = xpc_dictionary_get_BOOL(a2, "RebootOnSuccess");
    v11 = xpc_dictionary_get_BOOL(a2, "AssumeSingleUserSuccess");
    value = xpc_dictionary_get_value(a2, "RebootOnExitCode");
    if (value)
    {
      v13 = value;
      if (xpc_get_type(value) == &_xpc_type_int64)
      {
        v14 = xpc_int64_get_value(v13);
        goto LABEL_8;
      }
    }
  }

  v14 = -1;
LABEL_8:
  v16 = sub_10004A5D0(v24) && sub_10004A5FC(v24, v15) == 0;
  if (xpc_dictionary_get_BOOL(a2, "RemoveOnSuccess"))
  {
    v17 = sub_1000490EC(a2);
    v18 = v17 ? v16 : 0;
    if (v18 == 1)
    {
      v19 = v17;
      sub_10004749C(65543, "%s: exited successfully, removing", a1);
      if (remove(v19, v20) == -1 && *__error() != 2 && *__error())
      {
        _os_assumes_log();
      }
    }
  }

  if (sub_10004A5D0(v24) && sub_10004A5FC(v24, v21) == v14)
  {
    sub_100047654(a1, 196615, "rebooting on exit code: %d");
LABEL_38:
    sub_100046594(1, 0);
  }

  if (v16)
  {
    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (sub_10004A5D0(v24))
    {
      v22 = 196615;
    }

    else
    {
      v22 = 196611;
    }

    sub_100047654(a1, v22, "exited due to %s", v8);
    if (!v11)
    {
LABEL_24:
      if (v16)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  v16 |= byte_10007F0E2;
  if (v16)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (v9)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *__str = 0u;
    v28 = 0u;
    snprintf(__str, 0x80uLL, "exited due to %s", v8);
    sub_100048D0C(a1, __str);
  }

LABEL_32:
  if ((v10 & v16) == 1)
  {
    sub_100047654(a1, 196615, "rebooting after success");
    goto LABEL_38;
  }

  free(v8);
}

BOOL sub_1000494B0(id a1, const char *a2, void *a3)
{
  value = xpc_dictionary_get_value(qword_10007F138, a2);
  LODWORD(a3) = xpc_int64_get_value(a3);
  sub_10004749C(196615, "waiting for boot-task %s with pid %d", a2, a3);
  sub_100049180(a2, value, 0, a3);
  return 1;
}

void sub_10004954C(uint64_t a1, const void *a2, void *a3)
{
  if (*(a1 + 24) == 4981)
  {
    node = rb_tree_find_node(*(a1 + 16), a2);
    if (node)
    {
      v7 = node;
      rb_tree_remove_node(*(a1 + 16), node);
      os_release(v7[4]);
      free(v7[3]);
      free(v7);
    }

    if (a3)
    {
      v8 = sub_100014514(0x28uLL, 0x9004093B45C08uLL);
      v8[3] = sub_1000166EC(a2);
      v8[4] = os_retain(a3);
      if (rb_tree_insert_node(*(a1 + 16), v8) != v8)
      {
        sub_100054404();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

rb_tree_t **sub_100049614(rb_tree_t **result, const void *a2)
{
  if (*(result + 6) == 4981)
  {
    result = rb_tree_find_node(result[2], a2);
    if (result)
    {
      return result[4];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

rb_tree_t **sub_10004964C(rb_tree_t **result, uint64_t a2)
{
  if (*(result + 6) == 4981)
  {
    v3 = result;
    result = rb_tree_iterate(result[2], 0, 1u);
    if (result)
    {
      v4 = result;
      do
      {
        (*(a2 + 16))(a2, v4[3], v4[4]);
        result = rb_tree_iterate(v3[2], v4, 1u);
        v4 = result;
      }

      while (result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_1000496D0(size_t result)
{
  if (*(result + 24) == 4981)
  {
    return rb_tree_count(*(result + 16));
  }

  __break(1u);
  return result;
}

void *sub_1000496EC()
{
  v0 = sub_10001BBAC(0);
  v1 = sub_100014514(0x40uLL, 0x80040A284212CuLL);
  v0[2] = v1;
  rb_tree_init(v1, &off_10007DBE0);
  *(v0 + 6) = 4981;
  return v0;
}

void sub_100049748(uint64_t a1)
{
  if (*(a1 + 24) == 4981)
  {
    *(a1 + 24) = 0;
    v3 = rb_tree_iterate(*(a1 + 16), 0, 1u);
    if (v3)
    {
      v4 = v3;
      do
      {
        v5 = rb_tree_iterate(*(a1 + 16), v4, 1u);
        rb_tree_remove_node(*(a1 + 16), v4);
        os_release(v4[4]);
        free(v4[3]);
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(a1 + 16);

    free(v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000497F4(uint64_t a1)
{
  if (xpc_make_serialization())
  {
    sub_100054404();
  }

  sub_100054404();
}

uint64_t sub_100049864(uint64_t a1)
{
  result = xpc_create_from_serialization();
  if (!result)
  {
    sub_100054404();
  }

  return result;
}

void sub_10004988C(uint64_t a1, const void *a2, void *a3)
{
  v6 = sub_100049614(*(a1 + 16), a2);
  v7 = v6;
  if (!v6)
  {
    if (sub_1000496D0(*(a1 + 16)) >= *(a1 + 24))
    {
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x2000000000;
      v17[3] = -1;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2000000000;
      v16 = 0;
      v8 = *(a1 + 16);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = sub_100049C20;
      v12[3] = &unk_100079D90;
      v12[4] = v17;
      v12[5] = &v13;
      sub_10004964C(v8, v12);
      string = xpc_dictionary_get_string(v14[3], "key");
      pointer = xpc_dictionary_get_pointer();
      (*(a1 + 40))(string, pointer);
      sub_10004954C(*(a1 + 16), string, 0);
      os_release(pointer);
      if (sub_1000496D0(*(a1 + 16)) >= *(a1 + 24))
      {
        sub_100054404();
      }

      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(v17, 8);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "key", a2);
  }

  os_retain(a3);
  xpc_dictionary_set_pointer();
  v11 = *(a1 + 32);
  *(a1 + 32) = v11 + 1;
  xpc_dictionary_set_uint64(v7, "timestamp", v11);
  if (!v6)
  {
    sub_10004954C(*(a1 + 16), a2, v7);
    xpc_release(v7);
  }
}

rb_tree_t **sub_100049A74(uint64_t a1, const void *a2)
{
  result = sub_100049614(*(a1 + 16), a2);
  if (result)
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = v4 + 1;
    xpc_dictionary_set_uint64(result, "timestamp", v4);
    pointer = xpc_dictionary_get_pointer();

    return os_retain(pointer);
  }

  return result;
}

void *sub_100049AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001BF78(0);
  v4[2] = sub_1000496EC();
  v4[3] = a1;
  v4[4] = 1;
  v4[5] = a2;
  return v4;
}

void sub_100049B34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100049BB8;
  v3[3] = &unk_100079D68;
  v3[4] = a1;
  sub_10004964C(v2, v3);
  os_release(*(a1 + 16));
}

void sub_100049BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pointer = xpc_dictionary_get_pointer();
  (*(*(a1 + 32) + 40))(a2, pointer);

  os_release(pointer);
}

uint64_t sub_100049C20(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    sub_100054404();
  }

  result = xpc_dictionary_get_uint64(object, "timestamp");
  v6 = *(*(a1 + 32) + 8);
  if (result < *(v6 + 24))
  {
    *(v6 + 24) = result;
    *(*(*(a1 + 40) + 8) + 24) = object;
  }

  return result;
}

uint64_t sub_100049C94(void *a1, void *a2, uint64_t a3)
{
  value = xpc_dictionary_get_value(a1, "shmem");
  if (!value)
  {
    return 22;
  }

  region = 0;
  v7 = xpc_shmem_map(value, &region);
  if (region)
  {
    v8 = v7 >= vm_page_size;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v10 = fmemopen(region, v7, "w");
    if (v10)
    {
      v11 = v10;
      (*(a3 + 16))(a3, v10);
      v12 = ftello(v11);
      if (v12 <= 0x40000000)
      {
        v13 = v12;
        reply = xpc_dictionary_create_reply(a1);
        *a2 = reply;
        xpc_dictionary_set_uint64(reply, "bytes-written", v13);
        v9 = 0;
      }

      else
      {
        v9 = 153;
      }

      sub_1000415F0(v11);
    }

    else
    {
      if (*__error())
      {
        _os_assumes_log();
      }

      v9 = 9;
    }
  }

  else
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    v9 = 22;
  }

  if (region)
  {
    if (!v7)
    {
      sub_100054404();
    }

    munmap(region, v7);
  }

  return v9;
}

FILE *sub_100049DE0(FILE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    do
    {
      result = sub_100049E30(v9, "\t", a3, a4, a5, a6, a7, a8);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100049E5C(FILE *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a2)
  {
    v10 = a2;
    do
    {
      sub_100049E30(a1, "\t", a3, a4, a5, a6, a7, a8);
      --v10;
    }

    while (v10);
  }

  return vfprintf(a1, a3, va);
}

uint64_t sub_100049ECC(FILE *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a2)
  {
    v10 = a2;
    do
    {
      sub_100049E30(a1, "\t", a3, a4, a5, a6, a7, a8);
      --v10;
    }

    while (v10);
  }

  vfprintf(a1, a3, va);
  return sub_100049E30(a1, "\n", v11, v12, v13, v14, v15, v16);
}

char *sub_100049F58(int *a1, pid_t pid, uint64_t a3)
{
  *(a1 + 6) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  flags = 0;
  if (j__proc_get_dirty(pid, &flags))
  {
    _os_assumes_log();
  }

  *(a1 + 48) = a1[12] & 0xFC | flags & 2 | ((flags & 4) != 0);
  if (j__proc_pidinfo(pid, 25, 1uLL, a1 + 1, 24) != 24 && *__error() != 2 && *__error())
  {
    _os_assumes_log();
  }

  if (j__proc_pid_rusage(pid, 6, a3))
  {
    _os_assumes_log();
  }

  *(a1 + 2) = *(a3 + 80);
  v6 = a1[6];
  if (v6 >= 0x1401)
  {
    sub_1000441E0("retrieved exit reason with invalid reason buffer size");
  }

  if (v6)
  {
    v7 = sub_100014514(0x20uLL, 0x1000040E0EAB150uLL);
    *(v7 + 3) = sub_100014514(v6, 0x1A9BFA44uLL);
    v7[5] = v6;
    if (proc_pidinfo(pid, 24, 1uLL, v7, 32) == 32)
    {
      goto LABEL_16;
    }

    if (*__error())
    {
      _os_assumes_log();
    }

    free(*(v7 + 3));
    free(v7);
  }

  v7 = 0;
LABEL_16:
  if (sub_100046B18(pid, a1 + 7, 0, 0))
  {
    _os_assumes_log();
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  *a1 = v9;
  if (!v7)
  {
LABEL_58:
    v37 = sub_10004A4D0(a1, v8);
    if (!v37)
    {
      v37 = "(unknown reason)";
    }

    v33 = sub_1000166EC(v37);
    goto LABEL_61;
  }

  v10 = sub_10004A4D0(a1, v8);
  v11 = *(v7 + 3);
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v7[5];
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = v11 + v12;
  v14 = v11 + 4;
  if (v11 + 4 <= (v11 + v12))
  {
    v15 = *(v7 + 3);
    do
    {
      v42 = v14 + *(v15 + 4);
      if (v42 > v13 || *v15 == -242132755)
      {
        break;
      }

      if (*v15 == 4098)
      {
        goto LABEL_23;
      }

      v14 = (v42 + 16);
      v15 = v42;
    }

    while (v42 + 16 <= v13);
  }

  v15 = 0;
  v13 = 0;
LABEL_23:
  if (v15 + 16 > v13 || (v16 = *(v15 + 4), v15 + 16 + v16 > v13))
  {
LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  v43 = *v15;
  if ((*v15 & 0xFFFFFFF0) == 0x20)
  {
    v43 = 17;
  }

  if (v43 <= 2309)
  {
    if (v43 == 17 || v43 == 19)
    {
      goto LABEL_92;
    }

    goto LABEL_89;
  }

  if (v43 != 2312)
  {
    if (v43 == 2310 && v16 == 112 && (*(v15 + 8) & 0x8F) == 0)
    {
      LODWORD(v16) = 104;
      goto LABEL_92;
    }

LABEL_89:
    v45 = *(v15 + 8) & 0xF;
    v27 = v16 >= v45;
    v46 = v16 - v45;
    if (v27)
    {
      LODWORD(v16) = v46;
    }

    else
    {
      LODWORD(v16) = 0;
    }

    goto LABEL_92;
  }

  if (v16 != 32 || (*(v15 + 8) & 0x8F) != 0)
  {
    goto LABEL_89;
  }

  LODWORD(v16) = 24;
LABEL_92:
  v47 = (v15 + 16);
  if (strnlen((v15 + 16), v16) >= v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v47;
  }

LABEL_26:
  v18 = 0;
  v50[0] = 0;
  if (*v7 == 2)
  {
    v19 = v11 + v7[5];
    v20 = v11 + 4;
    if ((v11 + 4) > v19)
    {
      goto LABEL_28;
    }

    v48 = v10;
    v21 = 0;
    v22 = -1;
    do
    {
      v23 = v11[1];
      v24 = (v20 + v23);
      if (v20 + v23 > v19)
      {
        break;
      }

      v25 = *v11;
      if (*v11 == -242132755)
      {
        break;
      }

      if ((v25 & 0xFFFFFFF0) == 0x20)
      {
        v25 = 17;
      }

      if (v25 == 54)
      {
        v30 = v11[2] & 0xF;
        v27 = v23 >= v30;
        v31 = v23 - v30;
        if (!v27)
        {
          v31 = 0;
        }

        if (v31 != 4)
        {
          sub_1000441E0("PID size for exit reason mismatch");
        }

        v22 = v11[4];
      }

      else if (v25 == 55)
      {
        v26 = v11[2] & 0xF;
        v27 = v23 >= v26;
        v28 = v23 - v26;
        v29 = v27 ? v28 : 0;
        v21 = v11 + 4;
        if (strnlen(v11 + 16, v29) >= v29)
        {
          sub_1000441E0("kernel returned invalid sender procname for signal");
        }
      }

      v20 = v24 + 4;
      v11 = v24;
    }

    while ((v24 + 4) <= v19);
    v10 = v48;
    if (!v21 || v22 == -1)
    {
LABEL_28:
      asprintf(v50, "(signal info malformed)");
    }

    else
    {
      asprintf(v50, "sent by %s[%d]");
    }

    v18 = v50[0];
  }

  v32 = 0;
  v33 = 0;
  v50[0] = v10;
  v50[1] = v17;
  v50[2] = v18;
  do
  {
    v34 = v50[v32];
    if (v34)
    {
      if (v33)
      {
        v35 = sub_1000168E0("%s | %s", v33, v34);
      }

      else
      {
        v35 = sub_1000166EC(v34);
      }

      v36 = v35;
      free(v33);
      v33 = v36;
    }

    ++v32;
  }

  while (v32 != 3);
  free(v18);
  free(*(v7 + 3));
  free(v7);
  if (!v33)
  {
    goto LABEL_58;
  }

LABEL_61:
  v38 = *a1;
  if (*a1 == 3)
  {
    if (a1[1] || (a1[7] & 0x7F) != 0)
    {
      return v33;
    }

    free(v33);
    v40 = sub_10004A5FC(a1, v39);
    v33 = sub_1000168E0("exit(%d)", v40);
    v38 = *a1;
  }

  if (!v38)
  {
    sub_100054404();
  }

  return v33;
}