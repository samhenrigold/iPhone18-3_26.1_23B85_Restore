char *sub_10001FA4C(uint64_t a1, const char *a2, const char *a3)
{
  v4 = sub_10001C0C8(a3);
  *(v4 + 2) = sub_1000166EC(a2);
  return v4;
}

void *sub_10001FA88(uint64_t a1, char *a2, const char *a3, void *a4)
{
  v7 = os_map_str_find();
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  if (!sub_100016A6C(a2, *(v7 + 16)))
  {
    sub_10004749C(65539, "CACHE INVARIANT VIOLATED: %s | %s != %s", a3, a2, v8[2]);
LABEL_6:
    v9 = sub_10001C0C8(a3);
    v9[2] = sub_1000166EC(a2);
    v9[3] = sub_10001B5B8(a4, 0);
    os_map_str_insert();
    return v9;
  }

  v9 = sub_10001B5B8(v8, 0);
  if (!v9)
  {
    goto LABEL_6;
  }

  return v9;
}

uint64_t sub_10001FBAC(uint64_t result, int a2)
{
  if (*result)
  {
    v2 = *(result + 72);
    v3 = *(result + 76);
    *(result + 4 * ((v3 + v2) & 0xF) + 8) = a2 - *result;
    if (v3 > 0xF)
    {
      *(result + 72) = (v2 + 1) & 0xF;
    }

    else
    {
      *(result + 76) = v3 + 1;
    }
  }

  *result = 0;
  return result;
}

uint64_t sub_10001FC1C(uint64_t a1)
{
  result = sub_10001FCC0(a1);
  if (result)
  {
    result = os_map_str_find();
    if (!result)
    {
      v3 = *(a1 + 576);
      v4 = *(a1 + 1056);
      v5 = sub_100014514(0x58uLL, 0x108004088972BE8uLL);
      v5[1] = 1;
      *v5 = v4;
      sub_1000166EC(v3);

      return os_map_str_insert();
    }
  }

  return result;
}

uint64_t sub_10001FCC0(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (!v2 || sub_100032A18(v2) != qword_10007D8B8 || (*(a1 + 1414) & 0x20) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 248) + 232);

  return sub_100032A28(v4);
}

uint64_t sub_10001FD2C(uint64_t a1)
{
  v2 = sub_100026FE0(a1);
  v3 = (a1 + 1056);
  if (v2)
  {
    v3 = v2;
  }

  return *v3;
}

uint64_t sub_10001FD60(uint64_t a1, uint64_t a2)
{
  if ((byte_10007F0F9 & 1) != 0 || (*(a1 + 1410) & 0x80) != 0)
  {
    return 0;
  }

  if (*(a2 + 32) == sub_10004A738(a1 + 1224, a2))
  {
    return 6;
  }

  return 0;
}

uint64_t sub_10001FDBC(uint64_t a1, uint64_t a2)
{
  if (byte_10007F0F9)
  {
    return 0;
  }

  if ((*(a1 + 1410) & 0x80) != 0)
  {
    return 0;
  }

  if (sub_10004A884(a1 + 1224))
  {
    v5 = 1;
  }

  else if (sub_10004A5D0(a1 + 1224))
  {
    v5 = sub_10004A5FC((a1 + 1224), v6) == 0;
  }

  else if (*(a1 + 1040))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if (*(a2 + 32) == (v5 & 1))
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001FE68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    v4 = 0;
    do
    {
      v4 |= sub_10003FB1C(v3);
      v3 = *(v3 + 16);
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if (*(a2 + 32) == (v4 & 1))
  {
    return 14;
  }

  else
  {
    return 0;
  }
}

void sub_10001FECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 512);
  if (v6)
  {
    do
    {
      v7 = *v6;
      if (a2 == 9 || *(v6 + 8) == a2)
      {
        v6[5] = sub_10001B5B8(a1, 24);
        v8 = sub_1000157D8();
        dispatch_async_f(v8, v6, sub_100027028);
        v9 = *v6;
        v10 = v6[1];
        if (*v6)
        {
          v9[1] = v10;
        }

        *v10 = v9;
        *v6 = -1;
        v6[1] = -1;
      }

      v6 = v7;
    }

    while (v7);
  }

  sub_10001B5B8(a1, 29);
  if ((a2 - 1) > 8)
  {
    v11 = "WILL_SPAWN";
  }

  else
  {
    v11 = off_100079070[(a2 - 1)];
  }

  sub_100020018(a1, 5, "internal event: %s, code = %ld", v11, a3);
  sub_100043090(a1, a2, a3);
  (*(a1 + 520))(a1, a2, a3, *(a1 + 568));

  sub_10001B690(a1, 29);
}

void sub_100020018(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v6 = sub_100022158(a1, 2);
  sub_1000474DC(v6, a2, a3, va, v3);
  free(v6);
}

uint64_t sub_100020084(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 528))(a1, a2, *(a1 + 568));
  if (result == 124)
  {
    return 0;
  }

  if (!result)
  {
    if ((*(a1 + 1416) & 2) != 0)
    {
      sub_100020018(a1, 5, "cannot spawn: service is configured as retain only");
    }

    else
    {
      if ((*(a1 + 1410) & 4) == 0)
      {
        v5 = *(a1 + 248);
        if (sub_100032A18(v5) == qword_10007D8B8)
        {
          v9 = qword_10007E210;
          if (qword_10007E210)
          {
            do
            {
              v10 = *v9;
              v11 = *(a1 + 256);
              v12 = *(v9 + 16);
              if (v11)
              {
                if (sub_100016A6C(v12, (v11 + 1424)))
                {
                  goto LABEL_31;
                }
              }

              else if (sub_100016A6C(v12, (a1 + 1424)))
              {
LABEL_31:
                sub_100020018(a1, 5, "matched global attach request before spawn");
                v17 = sub_100032A20(v5);
                xpc_dictionary_set_uint64(*(v9 + 24), "handle", v17);
                if ((*(a1 + 1413) & 4) != 0)
                {
                  xpc_dictionary_set_uuid(*(v9 + 24), "_instance", (a1 + 408));
                }

                sub_10004B2C8(dword_10007F068, *(v9 + 24));
                xpc_release(*(v9 + 24));
                v18 = *v9;
                v19 = *(v9 + 8);
                if (*v9)
                {
                  *(v18 + 8) = v19;
                }

                *v19 = v18;
                free(v9);
                *(a1 + 832) = a2;
                *(a1 + 1346) |= 8u;
                v21 = sub_100026CB4(a2, v20);
                sub_100020018(a1, 5, "service spawn reason '%s' pended until controller attaches", v21);
                sub_100027154(a1, 1);
                sub_100026CB4(a2, v22);
                sub_100020018(a1, 5, "pended spawn reason '%s': redriving controller attach request");
                return 36;
              }

              v9 = v10;
            }

            while (v10);
          }
        }

        v7 = *(a1 + 1144);
        if (v7 && v7 != a2)
        {
          v8 = sub_100026CB4(a2, v6);
          sub_100020018(a1, 5, "ignoring spawn reason '%s' due to filter", v8);
          return 102;
        }

        if (*(a1 + 840))
        {
          sub_100020018(a1, 5, "cannot spawn: service is throttled");
          return 36;
        }

        v13 = sub_100026FE0(a1);
        v14 = a1 + 1056;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = a1 + 1056;
        }

        if ((*(v15 + 1) & 1) != 0 || (a2 & 0xFFFFFFF7) == 3 || (*(a1 + 1408) & 0x4000) != 0)
        {
          goto LABEL_27;
        }

        v23 = sub_100026FE0(a1);
        v24 = sub_100026FE0(a1);
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a1 + 1056;
        }

        if (v23)
        {
          if (v25 == v14)
          {
            v26 = (a1 + 1224);
          }

          else
          {
            v26 = (v25 + 32);
          }

          if (!*v26)
          {
            goto LABEL_65;
          }

          v27 = sub_100026FE0(a1);
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = a1 + 1056;
          }

          if (v28 == v14)
          {
            v29 = (a1 + 1224);
          }

          else
          {
            v29 = (v28 + 32);
          }

          if (*v29 != 3)
          {
            if (!*v29)
            {
              sub_100020674(a1);
              goto LABEL_65;
            }

            v32 = 0;
LABEL_62:
            v33 = sub_100020674(a1);
            v34 = v33;
            v35 = v33 - v32;
            if (v33 > v32)
            {
              sub_100020018(a1, 5, "Service only ran for %llu seconds. Pushing respawn out by %llu seconds.", v32, v33 - v32);
              if (v34 > *(a1 + 852))
              {
                sub_100020018(a1, 4, "Exponential throttling is in effect for %llu seconds.", v35);
              }

LABEL_66:
              v36 = sub_10000F72C(a1);
              if (v36 <= v35)
              {
                v37 = v35;
              }

              else
              {
                v37 = v36;
              }

              if (v37)
              {
                v38 = v36 > v35;
                *(a1 + 824) = clock_gettime_nsec_np(_CLOCK_MONOTONIC) + 1000000000 * v35;
                sub_100027E70(a1, v37, a2, v38);
                return 36;
              }

LABEL_27:
              v16 = *(a1 + 424);
              if (v16 >= 2)
              {
                if (v16 != 2)
                {
                  v30 = sub_1000271DC(a1);
                  sub_1000441E0("Spawning a service in state %s", v30);
                }

                return 36;
              }

              else
              {
                sub_100027154(a1, 1);
                sub_10002729C(a1, a2);

                return sub_100027470(a1);
              }
            }

LABEL_65:
            v35 = 0;
            goto LABEL_66;
          }

          v31 = sub_10004A640(v29);
        }

        else
        {
          v31 = *(v25 + 8);
        }

        v32 = sub_10000B4A8(v31) / 0x3B9ACA00uLL;
        goto LABEL_62;
      }

      sub_100020018(a1, 5, "cannot spawn: service is in penalty box");
    }

    return 139;
  }

  return result;
}

void sub_100020488(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 840));
  *(a1 + 840) = 0;
  v2 = *(a1 + 856);
  if (v2)
  {
    sub_1000014C0(v2);
    *(a1 + 856) = 0;
  }

  sub_10002813C(a1, 0);
  v3 = sub_100026FE0(a1);
  v4 = a1 + 1056;
  if (v3)
  {
    v4 = v3;
  }

  *(v4 + 1) = 1;
  v5 = *(a1 + 832);
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  v6 = sub_100020084(a1, v5);
  sub_100020018(a1, 5, "deferred event: domain spawn response: %d", v6);
  if (v6 && v6 != 36)
  {
    if (v6 == 139)
    {
      sub_1000441E0("deferral event on service in penalty box");
    }

    v7 = xpc_strerror();
    sub_100020018(a1, 3, "Deferred spawn of service failed: %d: %s", v6, v7);
  }
}

uint64_t sub_100020564(uint64_t a1)
{
  result = *(a1 + 700);
  if (!result)
  {
    v3 = *(a1 + 256);
    if (v3)
    {
      return *(v3 + 700);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t sub_10002058C(uint64_t a1)
{
  sub_1000205EC(a1);
  v2 = sub_100026FE0(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1 + 1056;
  }

  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_100026FE0(a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1 + 1056;
  }

  return xpc_array_get_count(*(v5 + 16));
}

uint64_t sub_1000205EC(uint64_t a1)
{
  result = sub_100026FE0(a1);
  if (result)
  {
    v3 = result;
  }

  else
  {
    v3 = a1 + 1056;
  }

  if (*(v3 + 16))
  {
    v4 = sub_100026FE0(a1);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = a1 + 1056;
    }

    v6 = *(v5 + 16);
    v7 = sub_100027094(v6, qword_10007DC48);
    xpc_release(v6);
    result = sub_100026FE0(a1);
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = a1 + 1056;
    }

    *(v8 + 16) = v7;
  }

  return result;
}

unint64_t sub_100020674(uint64_t a1)
{
  sub_1000205EC(a1);
  if ((*(a1 + 1414) & 0x10) == 0)
  {
    return *(a1 + 852);
  }

  v2 = sub_100026FE0(a1);
  v3 = a1 + 1056;
  if (v2)
  {
    v3 = v2;
  }

  if (!*(v3 + 16))
  {
    return *(a1 + 852);
  }

  v4 = *(a1 + 1044);
  v5 = sub_10002058C(a1);
  v6 = v5 - v4;
  if (v5 <= v4)
  {
    return *(a1 + 852);
  }

  if (v6 > 0xB)
  {
    return 1200;
  }

  v8 = *(a1 + 852);
  if (!v8)
  {
    sub_100054404();
  }

  v9 = v8 << v6;
  if (v9 >= 0x4B0)
  {
    return 1200;
  }

  else
  {
    return v9;
  }
}

void sub_100020704(uint64_t a1, uint64_t a2)
{
  *(a2 + 180) = 0;
  *(a2 + 184) = 0;
  if (*(a1 + 1046) || (*(a1 + 1415) & 8) != 0)
  {
    v4 = *(a1 + 1408);
    if ((byte_10007F0E6 & 1) != 0 || (v4 & 0x20000000000) != 0)
    {
      if ((v4 & 0x800000000000000) != 0)
      {
        if (sub_1000207E8(a1) >= 2)
        {
          v6 = sub_10002086C(*(a1 + 1048));
          sub_100020018(a1, 4, "Enabling panic-on-crash due to consecutive crashes");
          *(a2 + 184) = v6;
          *(a2 + 180) = 1;
        }
      }

      else
      {
        *(a2 + 180) = *(a1 + 1046);
        v5 = *(a1 + 1048);
        if (v5)
        {
          *(a2 + 184) = sub_10002086C(v5);
        }
      }
    }

    else
    {

      sub_100020018(a1, 4, "Disallowing panic-on-crash behavior for non-system service");
    }
  }
}

size_t sub_1000207E8(uint64_t a1)
{
  v2 = sub_100026FE0(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1 + 1056;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = sub_100027094(*(v3 + 24), *(a1 + 1048));
  xpc_release(v4);
  *(v3 + 24) = v5;

  return xpc_array_get_count(v5);
}

uint64_t sub_10002086C(unint64_t a1)
{
  v2 = mach_continuous_time();
  sub_10000B548(a1);
  if (__CFADD__(v2, v3))
  {
    sub_1000441E0("Overflow calculating deadline: %lld + %lld", v2, v3);
  }

  return v2 + v3;
}

uint64_t sub_1000208C0(uint64_t a1)
{
  if ((*(a1 + 1416) & 2) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 1408);
  if ((v2 & 0x220000) == 0 && ((v2 & 0x400000) == 0 || *(a1 + 1040)))
  {
    if ((v2 & 4) != 0)
    {
      if (*(a1 + 1040))
      {
        v3 = 5;
      }

      else
      {
        v3 = 4;
      }

      goto LABEL_4;
    }

    if ((v2 & 0x10) != 0 && !*(a1 + 1040))
    {
      if ((~v2 & 0x80000001000) != 0)
      {
        v3 = 4;
      }

      else
      {
        v3 = 9;
      }

      goto LABEL_4;
    }

    v10 = sub_100026FE0(a1);
    v11 = a1 + 1056;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = a1 + 1056;
    }

    if (v12 == v11)
    {
      v13 = a1 + 1224;
    }

    else
    {
      v13 = v12 + 32;
    }

    if ((*(v13 + 48) & 2) != 0)
    {
      v14 = sub_100026FE0(a1);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = a1 + 1056;
      }

      if (v15 == v11)
      {
        v16 = a1 + 1224;
      }

      else
      {
        v16 = v15 + 32;
      }

      v17 = sub_10004A884(v16);
      v18 = sub_100026FE0(a1);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = a1 + 1056;
      }

      if (v17)
      {
        *(v19 + 1) = 1;
        goto LABEL_40;
      }

      if (v19 == v11)
      {
        v23 = a1 + 1224;
      }

      else
      {
        v23 = v19 + 32;
      }

      v24 = sub_10004A84C(v23);
      v25 = sub_100026FE0(a1);
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = a1 + 1056;
      }

      if (v27 == v11)
      {
        v28 = a1 + 1224;
      }

      else
      {
        v28 = v27 + 32;
      }

      if (v24)
      {
        if (!sub_10004A85C(v28))
        {
          if (*(a1 + 936) >= 31)
          {
            v29 = sub_100026FE0(a1);
            if (v29)
            {
              v30 = v29;
            }

            else
            {
              v30 = a1 + 1056;
            }

            *(v30 + 1) = 1;
          }

          if ((*(a1 + 1412) & 8) == 0)
          {
            goto LABEL_88;
          }
        }
      }

      else if (sub_10004A738(v28, v26))
      {
        v31 = sub_100026FE0(a1);
        v32 = v31 ? v31 : a1 + 1056;
        v33 = v32 == v11 ? a1 + 1224 : v32 + 32;
        if (*(v33 + 48))
        {
          v34 = sub_100026FE0(a1);
          if (v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = a1 + 1056;
          }

          if (*(v35 + 4) <= 2u)
          {
            v36 = sub_100026FE0(a1);
            if (v36)
            {
              v37 = v36;
            }

            else
            {
              v37 = a1 + 1056;
            }

            *(v37 + 1) = 1;
LABEL_88:
            v3 = 3;
            goto LABEL_4;
          }

          sub_100020018(a1, 5, "service exceeded successive crash limit. launch will be throttled");
        }
      }
    }

LABEL_40:
    v20 = *(a1 + 136);
    if (v20)
    {
      while ((sub_10004007C(v20) & 1) == 0)
      {
        v20 = *(v20 + 16);
        if (!v20)
        {
          goto LABEL_43;
        }
      }

      v3 = 8;
    }

    else
    {
LABEL_43:
      v21 = (a1 + 672);
      do
      {
        v21 = *v21;
        if (!v21)
        {
LABEL_11:
          v3 = 0;
          goto LABEL_12;
        }

        v22 = (v21[2])(a1, v21);
      }

      while (!v22);
      v3 = v22;
    }

    goto LABEL_4;
  }

  v3 = 7;
LABEL_4:
  if (byte_10007F051)
  {
    v4 = &dword_10007D718;
    v5 = 2;
    goto LABEL_9;
  }

  if (byte_10007F0F9 == 1)
  {
    v4 = dword_10007D6F8;
    v5 = 8;
LABEL_9:
    while (1)
    {
      v6 = *v4++;
      if (v6 == v3)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if ((*(a1 + 1412) & 8) != 0)
  {
    v7 = sub_100026FE0(a1);
    v8 = a1 + 1056;
    if (v7)
    {
      v8 = v7;
    }

    *(v8 + 1) = 1;
  }

  return v3;
}

uint64_t sub_100020B7C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2)
  {
    sub_100020018(a1, 4, "Overriding specified stdin path for inetd-compatible service.");
  }

  v9 = dup(a5);
  if (v9 != -1)
  {
    v10 = v9;
    if (a3)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = dup(a5);
      if (v11 == -1)
      {
        v12 = *__error();
        v14 = v10;
        goto LABEL_15;
      }
    }

    if (a4)
    {
      v13 = -1;
LABEL_11:
      v12 = 0;
      a1[172] = v10;
      a1[173] = v11;
      a1[174] = v13;
      return v12;
    }

    v13 = dup(a5);
    if (v13 != -1)
    {
      goto LABEL_11;
    }

    v12 = *__error();
    sub_1000413F8(v10);
    if (v11 == -1)
    {
      return v12;
    }

    v14 = v11;
LABEL_15:
    sub_1000413F8(v14);
    return v12;
  }

  return *__error();
}

uint64_t sub_100020C74(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 1168))
  {
    sub_100020018(a1, 5, "Abandoning PID %d and its process group", *(a1 + 1168));
    sub_10001B5B8(v1, 25);
    *(v1 + 1216) |= 0x20u;
    sub_100020D0C(v1, 1);
    v2 = *(v1 + 1408);
    sub_10001B690(v1, 25);
    if ((v2 & 0x20000000) != 0)
    {
      return 0;
    }
  }

  return v1;
}

void sub_100020D0C(uint64_t a1, char a2)
{
  v4 = *(a1 + 1168);
  v86 = 0uLL;
  *&v87 = 0;
  v5 = sub_100046BD4(v4, &v86);
  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = WORD2(v86);
  }

  if (v5)
  {
    v7 = v5;
    v8 = *(a1 + 1168);
    v9 = xpc_strerror();
    sub_100020018(a1, 4, "failed to query memory status priority for PID %d: %s (%d)", v8, v9, v7);
  }

  if ((a2 & 1) == 0 && (*(a1 + 1408) & 0x10000) == 0)
  {
    v10 = killpg(*(a1 + 1168), 15);
    if (v10)
    {
      v11 = v10;
      if (*__error() != 3)
      {
        v12 = __error();
        if (v11 == -1 && *v12 != 1)
        {
          sub_100054DE8(a1);
        }
      }
    }
  }

  if ((*(a1 + 1216) & 0x20) != 0)
  {
    sub_10004A648(a1 + 1224);
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    v14 = 0;
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v13 = (a1 + 1224);
    v14 = sub_100049F58((a1 + 1224), *(a1 + 1168), &v86);
    v15 = *(&v103 + 1) >> 10;
    v16 = v101 >> 10;
    if ((sub_100028820(a1) & 1) == 0)
    {
      v17 = sub_100026FE0(a1);
      v18 = v17 ? v17 : a1 + 1056;
      if (v18 != a1 + 1056 && (v18 + 32) != v13 && *(a1 + 1256) > *(v18 + 64))
      {
        v19 = *v13;
        v20 = *(a1 + 1240);
        v21 = *(a1 + 1256);
        *(v18 + 80) = *(a1 + 1272);
        *(v18 + 48) = v20;
        *(v18 + 64) = v21;
        *(v18 + 32) = v19;
      }
    }
  }

  v22 = *(a1 + 1224);
  if (v22 == 2)
  {
    sub_100020018(a1, 3, "wait4() failed");
  }

  else if (!v22)
  {
    sub_100054404();
  }

  if ((*(a1 + 1216) & 2) == 0)
  {
    if (*(a1 + 1224) == 1)
    {
      sub_100020018(a1, 4, "abandoned xpcproxy before exec", v80);
    }

    else
    {
      if (sub_10004A5D0(a1 + 1224))
      {
        v24 = sub_10004A5FC((a1 + 1224), v23);
        v25 = v24;
        if (v24 != 78)
        {
          if ((v24 - 64) > 0xE)
          {
            v26 = 0;
          }

          else
          {
            v26 = off_100078DB8[(v24 - 64)];
          }

          if (!v26)
          {
            v26 = "?";
          }

          sub_100020018(a1, 4, "xpcproxy could not exec: %d: %s", v24, v26);
        }

        v81 = v25;
        v27 = "xpcproxy exited due to exit(%d)";
      }

      else
      {
        v81 = v14;
        v27 = "xpcproxy exited due to %s";
      }

      sub_100020018(a1, 5, v27, v81);
    }
  }

  if (sub_10004A664(a1 + 1224))
  {
    sub_100020018(a1, 4, "removing service since it exited with consistent failure - %s", v14);
  }

  sub_100010B3C(570425428, *(a1 + 1168));
  v29 = sub_10000FC98(0x80uLL, v28);
  if (sub_10004A5D0(a1 + 1224))
  {
    sub_10004A5FC((a1 + 1224), v30);
    sub_10000FD40(v29, "exited due to exit(%d)");
  }

  else if (sub_10004A6A4((a1 + 1224)))
  {
    sub_10000FD40(v29, "exited due to %s");
  }

  else if (*(a1 + 1228))
  {
    sub_10000FD40(v29, "exited with exit reason (namespace: %d code: 0x%llx) - %s");
  }

  v31 = sub_10003339C(*(a1 + 248));
  if (v31)
  {
    sub_10000FD40(v29, " during %s", v31);
  }

  v32 = sub_10004A634(a1 + 1224);
  sub_10000FD40(v29, ", ran for %qums", v32 / 0xF4240);
  sub_100020018(a1, 5, "%s", *v29);
  sub_10000FD04(v29);
  if (*(a1 + 1272) & 2) != 0 && (*(a1 + 1272))
  {
    sub_100020018(a1, 5, "process exited in a dirty state");
  }

  free(v14);
  if (*(a1 + 864))
  {
    sub_10001BB40(a1, 31);
    dispatch_source_cancel(*(a1 + 864));
    dispatch_release(*(a1 + 864));
    *(a1 + 864) = 0;
  }

  if (*(a1 + 872))
  {
    sub_10001BB40(a1, 32);
    dispatch_source_cancel(*(a1 + 872));
    dispatch_release(*(a1 + 872));
    *(a1 + 872) = 0;
  }

  if ((*(a1 + 1412) & 8) != 0)
  {
    if (sub_10004A84C(a1 + 1224))
    {
      sub_100023C34(a1);
    }

    v34 = *(a1 + 136);
    if (v34)
    {
      do
      {
        v35 = v34[2];
        sub_100040094(v34);
        sub_10001B690(v34, 0);
        v34 = v35;
      }

      while (v35);
    }
  }

  if ((*(a1 + 1216) & 2) == 0)
  {
    if (byte_10007F0FA == 1)
    {
      nullsub_23();
    }

    if (*(a1 + 1204))
    {
      v36 = 89;
    }

    else if (sub_10004A8AC(a1 + 1224))
    {
      v36 = 80;
    }

    else if (sub_10004A8F4(a1 + 1224))
    {
      v36 = 162;
    }

    else if (sub_10004A8D0(a1 + 1224))
    {
      v36 = 163;
    }

    else
    {
      v36 = 153;
    }

    sub_1000288C4(a1, v36, 0);
  }

  if (sub_10004A738(a1 + 1224, v33) && (*(a1 + 1415) & 0x10) != 0)
  {
    sub_10002868C(a1);
    if (sub_1000207E8(a1) == *(a1 + 1044))
    {
      v37 = sub_1000245A0(a1);
      v38 = sub_1000168E0("critical process crashes: %s", v37);
      if (sub_100048DD8())
      {
        sub_10004749C(65538, "rebooting due to %s", v38);
        sub_100048E2C(v38);
        v39 = sub_10003283C();
        v40 = sub_1000311F4(v39, 2, 0, 0, 0);
        if (v40)
        {
          sub_10004749C(65538, "perform reboot failed: %d", v40);
        }
      }

      else
      {
        sub_100020018(a1, 5, "Feature disabled, device would have rebooted due to %s", v38);
      }

      free(v38);
    }
  }

  if (sub_10004A7E8(a1 + 1224))
  {
    *(a1 + 1416) |= 4u;
  }

  v41 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  sub_10000F1B0(a1, v41);
  if ((*(a1 + 1410) & 0x10) != 0)
  {
    sub_100020018(a1, 5, "service only configured to run once, removing");
    *(a1 + 368) |= 0x10u;
  }

  else
  {
    sub_10004A664(a1 + 1224);
  }

  if (sub_10004A738(a1 + 1224, v42))
  {
    v43 = sub_100026FE0(a1);
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = a1 + 1056;
    }

    ++*(v44 + 4);
    v45 = sub_100026FE0(a1);
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = a1 + 1056;
    }

    v47 = *(v46 + 4);
    v48 = sub_100026FE0(a1);
    if (v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = a1 + 1056;
    }

    if (v49 == a1 + 1056)
    {
      v50 = a1 + 1224;
    }

    else
    {
      v50 = v49 + 32;
    }

    if (*(v50 + 48))
    {
      v51 = &unk_10005CEA2;
    }

    else
    {
      v51 = " not";
    }

    sub_100020018(a1, 5, "service has crashed %u times in a row (last was%s dirty)", v47, v51);
    if (!sub_10004A840(a1 + 1224))
    {
      goto LABEL_123;
    }

    sub_100020018(a1, 5, "service has crashed into the shared cache area");
    v52 = sub_100026FE0(a1);
    v53 = *(a1 + 256);
    if (v52)
    {
      if (!v53)
      {
LABEL_118:
        v56 = sub_100026FE0(a1);
        if ((*(a1 + 1414) & 0x40) == 0)
        {
          if (v56)
          {
            v57 = v56;
          }

          else
          {
            v57 = (a1 + 1056);
          }

          *v57 = 1;
        }

        goto LABEL_123;
      }
    }

    else
    {
      if (!v53)
      {
        goto LABEL_118;
      }

      v52 = (v53 + 1056);
    }

    if ((*(v53 + 1414) & 0x40) == 0)
    {
      *v52 = 1;
      sub_100020018(a1, 5, "recorded reslide request for this instance in the original service");
    }

    goto LABEL_118;
  }

  if (sub_100028820(a1))
  {
    sub_100020018(a1, 5, "skipping successive crash reset");
  }

  else
  {
    v54 = sub_100026FE0(a1);
    v55 = a1 + 1056;
    if (v54)
    {
      v55 = v54;
    }

    *(v55 + 4) = 0;
  }

LABEL_123:
  for (i = 688; i != 700; i += 4)
  {
    v59 = *(a1 + i);
    if (v59 != -1)
    {
      sub_1000413F8(v59);
      *(a1 + i) = -1;
    }
  }

  sub_100027154(a1, 8);
  if (*(a1 + 424) != 8)
  {
    sub_100054404();
  }

  if (sub_10004A84C(a1 + 1224) && !sub_10004A85C(a1 + 1224))
  {
    if (!*(a1 + 992))
    {
      *(a1 + 992) = sub_10001FB94();
    }

    v60 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    sub_10001FBF4(*(a1 + 992), v60 / 0xF4240);
  }

  if (*(a1 + 424) != 8)
  {
    sub_100054404();
  }

  v61 = *(a1 + 1168);
  if (*(a1 + 256))
  {
    v62 = *(a1 + 256);
  }

  else
  {
    v62 = a1;
  }

  v63 = *(a1 + 992);
  v84 = v16;
  v85 = v15;
  v82 = *(a1 + 1204);
  v83 = v6;
  if (v63 && (v64 = sub_10001FBFC(v63)) != 0)
  {
    v65 = sub_10001FC04(*(a1 + 992), v64 - 1);
  }

  else
  {
    v65 = -1;
  }

  v66 = (v62 + 1424);
  if (sub_10004A5D0(a1 + 1224))
  {
    v68 = 0;
    v69 = sub_10004A5FC((a1 + 1224), v67);
  }

  else
  {
    v68 = *(a1 + 1228);
    v69 = *(a1 + 1232);
  }

  v70 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v71 = sub_100000FE0(v61);
  v72 = *(a1 + 1180);
  if (!v71)
  {
    sub_10004749C(4, "No spawn timestamp found; service=%s, pid=%d", v66, v61);
  }

  *&v86 = _NSConcreteStackBlock;
  *(&v86 + 1) = 0x40000000;
  *&v87 = sub_1000289E0;
  *(&v87 + 1) = &unk_100078E30;
  *(&v90 + 1) = __PAIR64__(v65, v61);
  *&v88 = v66;
  *(&v88 + 1) = v71;
  *&v89 = v70 / 0xF4240;
  *(&v89 + 1) = v68;
  *&v90 = v69;
  *&v91 = __PAIR64__(v85, v84);
  WORD2(v92) = v83;
  DWORD2(v91) = v82 >> 8;
  HIDWORD(v91) = -1;
  LODWORD(v92) = v72;
  sub_1000011C4(&v86);
  sub_10001B5B8(a1, 25);
  sub_10001FECC(a1, 5, 0);
  free(*(a1 + 1152));
  *(a1 + 1152) = 0;
  sub_100027154(a1, 0);
  *(a1 + 1168) = 0;
  *(a1 + 1180) = 16;
  v73 = *(a1 + 1184);
  if (v73)
  {
    dispatch_source_cancel(v73);
    dispatch_release(*(a1 + 1184));
    *(a1 + 1184) = 0;
  }

  if (*(a1 + 1192))
  {
    sub_10001BB40(a1, 28);
    dispatch_source_cancel(*(a1 + 1192));
    dispatch_release(*(a1 + 1192));
    *(a1 + 1192) = 0;
  }

  v74 = *(a1 + 24);
  *(a1 + 1212) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1216) &= 0xF200u;
  v75 = *(a1 + 32);
  if (v74)
  {
    *(v74 + 32) = v75;
  }

  *v75 = v74;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  if ((*(a1 + 368) & 0x10) == 0 && (*(a1 + 1410) & 4) == 0)
  {
    v76 = sub_1000208C0(a1);
    if (v76)
    {
      v77 = sub_100020084(a1, v76);
      if (v77)
      {
        v78 = v77;
        if (v77 != 36 && v77 != 124)
        {
          v79 = xpc_strerror();
          sub_100020018(a1, 4, "Failed to respawn: %d: %s", v78, v79);
        }
      }
    }
  }

  if ((*(a1 + 368) & 0x10) == 0 && (*(a1 + 1410) & 4) != 0)
  {
    sub_100027154(a1, 1);
  }

  sub_100028868(a1, -1);
  sub_10001B690(a1, 25);
}

void sub_100021808(uint64_t *a1)
{
  v1 = *a1;
  data = dispatch_source_get_data(*(*a1 + 1184));
  v3 = data;
  if ((data & 0x40000000) == 0)
  {
    if ((data & 0x20000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100021880(v1);
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  ++*(v1 + 1200);
  if ((data & 0x20000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((data & 0x80000000) == 0)
  {
    return;
  }

LABEL_7:

  sub_100020D0C(v1, 0);
}

uint64_t sub_100021880(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  memset(buffer, 0, sizeof(buffer));
  result = sub_100028338(*(a1 + 1168), buffer);
  if (result)
  {
    result = _os_assumes_log_ctx();
    if ((*(a1 + 1216) & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_5:
    if (*(a1 + 424) > 4u)
    {
      return result;
    }

    sub_100027154(a1, 4);
    *(a1 + 1216) |= 2u;
    if ((*(a1 + 1412) & 8) == 0)
    {
      goto LABEL_16;
    }

    if (byte_10007F180 == 1)
    {
      v4 = *(a1 + 884);
      if (v4)
      {
        v5 = dispatch_time(0, 1000000000 * v4);
LABEL_15:
        v6 = sub_1000157D8();
        *(a1 + 872) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
        sub_10001BB18(a1, 32);
        dispatch_set_context(*(a1 + 872), a1);
        dispatch_source_set_timer(*(a1 + 872), v5, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_source_set_event_handler_f(*(a1 + 872), sub_100028A38);
        dispatch_activate(*(a1 + 872));
LABEL_16:
        sub_10001FECC(a1, 4, 0);
        sub_100028378(a1);
        v7 = sub_1000245A0(a1);
        v9 = sub_100026CB4(*(a1 + 1180), v8);
        v10 = sub_1000168E0("%s", v9);
        sub_100020018(a1, 5, "Successfully spawned %s[%d] because %s", v7, *(a1 + 1168), v10);
        free(v10);
        goto LABEL_17;
      }

      sub_100020018(a1, 4, "Skipping extension launch watchdog");
    }

    v5 = -1;
    goto LABEL_15;
  }

  *(a1 + 1160) = *(&v13 + 1);
  *(a1 + 1172) = DWORD2(v14);
  v3 = *(a1 + 1216);
  if ((v3 & 0x800) == 0)
  {
    v3 = v3 & 0xFFFFF3FF | HIWORD(LODWORD(buffer[0])) & 0x400 | 0x800;
    *(a1 + 1216) = v3;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_5;
  }

  free(*(a1 + 1152));
  *(a1 + 1152) = sub_1000166EC(v12);
LABEL_17:
  ++*(a1 + 1202);
  return sub_100028868(a1, *(a1 + 1168));
}

uint64_t sub_100021AF4(uint64_t a1, uint64_t a2, _OWORD *a3, unsigned int a4, uint64_t a5, const char *a6, ...)
{
  va_start(va, a6);
  memset(uu, 0, sizeof(uu));
  v13 = dyld_image_header_containing_address();
  if (!v13)
  {
    uuid_clear(uu);
    if (!a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000441E0("Cannot setup an event for proxyless spawns!");
  }

  _dyld_get_image_uuid();
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15[0] = 0;
  va_copy(&v15[1], va);
  vasprintf(v15, a6, va);
  sub_100021C08(*(a1 + 1256), v6 - v13, a4, uu, a2, a3, v15[0], "launchd(proxyless)");
  free(v15[0]);
  return a2;
}

void sub_100021C08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *uu, uint64_t a5, _OWORD *a6, const char *a7, const char *a8)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (a5 <= 85)
  {
    if (a5 > 79)
    {
      if (a5 == 80)
      {
        v16 = "FairPlay decryption failed on binary.";
      }

      else
      {
        if (a5 != 85)
        {
          goto LABEL_46;
        }

        v16 = "Program specified by service is malformed.";
      }
    }

    else
    {
      if (a5 != 8)
      {
        if (a5 == 32)
        {
          v15 = *(a1 + 700);
          if ((v15 || (v27 = *(a1 + 256)) != 0 && (v15 = *(v27 + 700)) != 0) && v15 != -1)
          {
            v16 = "Service could not notify controller.";
LABEL_44:
            v28 = a1;
            v29 = 4;
            goto LABEL_45;
          }
        }

        goto LABEL_46;
      }

      v16 = "Program specified by service is not a Mach-O executable file.";
    }

LABEL_42:
    v28 = a1;
    v29 = 3;
LABEL_45:
    sub_100020018(v28, v29, v16, v32, v33, v34, v35);
    goto LABEL_46;
  }

  if ((a5 - 114) < 2)
  {
    v17 = *(*(a1 + 248) + 56);
    v18 = xpc_strerror();
    if (v17)
    {
      v33 = v18;
      v34 = *(*(a1 + 248) + 56);
      v32 = a6;
      v16 = "Could not find uid associated with service: %d: %s %u";
    }

    else
    {
      v34 = *(a1 + 800);
      v35 = *(a1 + 808);
      v32 = a6;
      v33 = v18;
      v16 = "Could not find user/group associated with service: %d: %s %s/%s";
    }

    goto LABEL_44;
  }

  if (a5 == 86)
  {
    v19 = *(a1 + 920);
    if (v19)
    {
      memset(v36, 0, sizeof(v36));
      if (xpc_binprefs_count(v19))
      {
        v20 = 0;
        v21 = v36;
        v22 = 128;
        do
        {
          v23 = xpc_binprefs_cpu_type(v19, v20);
          if (v22 < 2)
          {
            v26 = 0;
          }

          else
          {
            v24 = "(invalid)";
            if ((v23 & 0xFEFFFFFF) - 1 <= 0x11)
            {
              v25 = &off_100078E50[v23 & 0xFEFFFFFF];
              if ((v23 & 0x1000000) == 0)
              {
                v25 = &off_100078EE8[v23];
              }

              v24 = *v25;
            }

            v26 = snprintf(v21, v22, "%u:%s ", v23, v24);
            if (v22 <= v26)
            {
              v26 = v22 - 1;
            }
          }

          v21 += v26;
          v22 -= v26;
          v20 = (v20 + 1);
        }

        while (v20 < xpc_binprefs_count(v19));
      }

      v32 = v36;
      v16 = "Program specified by service does not contain one of the requested architectures: %s";
    }

    else
    {
      v16 = "Program specified by service does not contain any valid architectures for this system.";
    }

    goto LABEL_42;
  }

  if (a5 == 111)
  {
    if (a6 >= 1)
    {
      if (a6 == 75)
      {
        v16 = "LaunchServices returned a bundle URL that does not match with the LoginItem's known association.";
      }

      else
      {
        v33 = xpc_strerror();
        v34 = sub_10001FB70(a1);
        v32 = a6;
        v16 = "Could not find and/or execute program specified by service: %d: %s: %s";
      }

      goto LABEL_44;
    }

    if ((a6 & 0x80000000) != 0)
    {
      v32 = a6;
      v33 = sub_10001FB70(a1);
      v16 = "Could not resolve CFBundleIdentifier specified by service: %d: %s";
      goto LABEL_44;
    }
  }

LABEL_46:
  v30 = xpc_strerror();
  sub_100020018(a1, 3, "Service could not initialize: %s, error 0x%llx - %s", a7, a5, v30);
  v31 = sub_1000106C0();
  sub_100020018(a1, 3, "initialization failure: %s: %s + %llu [%llu][%s]: 0x%llx", v31, a8, a2, a3, out, a5);
}

uint64_t sub_100021F4C(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 22;
  }

  if (*(a1 + 616))
  {
    return 37;
  }

  v5 = sub_100010D84(1, 0, object);
  v6 = sub_100010E34(v5);
  if (!v6)
  {
    return 22;
  }

  v7 = v6;
  length = xpc_data_get_length(v6);
  v9 = sub_100014514(length, 0x66270B2DuLL);
  if (xpc_data_get_bytes(v7, v9, 0, length) != length)
  {
    _os_assumes_log_ctx();
  }

  *(a1 + 616) = v9;
  *(a1 + 624) = length;
  *(a1 + 592) += length;
  xpc_release(v5);
  xpc_release(v7);
  return 0;
}

void *sub_100022084(void *result, xpc_object_t object)
{
  if (object)
  {
    v3 = result;
    result = xpc_get_type(object);
    if (result == &_xpc_type_data)
    {
      v4 = v3[75];
      if (v4)
      {
        free(v4);
        v3[74] -= *(v3 + 152);
      }

      length = xpc_data_get_length(object);
      v6 = sub_100014514(length, 0x178D890EuLL);
      result = xpc_data_get_bytes(object, v6, 0, length);
      if (result != length)
      {
        result = _os_assumes_log_ctx();
      }

      v3[75] = v6;
      *(v3 + 152) = length;
      v3[74] += length;
    }
  }

  return result;
}

char *sub_100022158(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
    sub_100054404();
  }

  v2 = a2;
  v4 = sub_10000FC98(0x40uLL, a2);
  v5 = *(a1 + 248);
  if (v5)
  {
    v6 = sub_10002C974(v5, 1);
    sub_10000FD40(v4, "%s/", v6);
    free(v6);
  }

  sub_10000FD40(v4, "%s", (a1 + 1424));
  if (v2 == 2)
  {
    v7 = *(a1 + 296);
    if (v7 > 0 || (v7 = *(a1 + 1168), v7 >= 1))
    {
      sub_10000FD40(v4, " [%d]", v7);
    }
  }

  v8 = sub_10000FCFC(v4);
  sub_10000FD04(v4);
  return v8;
}

_DWORD *sub_10002223C()
{
  sub_10004AB38(2, sub_10002228C);

  return sub_10004AB38(6, sub_1000225C8);
}

uint64_t sub_10002228C(uint64_t a1, int a2, void *a3, xpc_object_t *a4)
{
  v11 = -1;
  v7 = sub_100028B5C(a3, &v11);
  if (v11 == 36)
  {
    sub_10004B494(a3, "domain deferral");
    return 0;
  }

  v8 = v7;
  if (v7)
  {
    if (*(v7 + 424) == 2)
    {
      sub_100020018(v7, 5, "Deferring IPC (%d) while service is spawning", a2);
      sub_100028DB8(v8, a3, 1);
      return 0;
    }

    v10 = sub_10004AB10();
    result = 45;
    switch(a2)
    {
      case 700:
        result = sub_100028E20(v8, v10, a3, a4);
        break;
      case 701:
        result = sub_1000290D4(v8, v10, a3, a4);
        break;
      case 702:
        result = sub_1000292A8(v8, v10, a3, a4);
        break;
      case 703:
        result = sub_1000294B4(v8, v10, a3, a4);
        break;
      case 704:
        return sub_100029704(v8, v10, a3, a4);
      case 705:
        result = sub_100029C90(v8, v10, a3, a4);
        break;
      case 706:
        result = sub_100029F84(v8, v10, a3);
        break;
      case 707:
        result = sub_100029FF4(v8, v10, a3, a4);
        break;
      case 708:
        result = sub_10002A0CC(v8, v10, a3, a4);
        break;
      case 710:
        result = sub_10002A1A8(v8, v10, a3, a4);
        break;
      case 711:
        result = sub_10002A280(v8, v10, a3, a4);
        break;
      case 712:
        result = sub_10002A37C(v8, v10, a3, a4);
        break;
      case 713:
        result = sub_10002A440(v8, v10, a3, a4);
        break;
      case 715:
        result = sub_10002A66C(v8, v10, a3, a4);
        break;
      case 716:
        result = sub_10002A85C(v8, v10, a3, a4);
        break;
      case 717:
      case 724:
        return result;
      case 718:
        result = sub_10002A938(v8, v10, a3, a4);
        break;
      case 719:
        result = sub_10002A51C(v8, v10, a3, a4);
        break;
      case 720:
        result = sub_10002AA10(v8, a3, a4);
        break;
      case 721:
        result = sub_10002AA84(v8, v10, a3, a4);
        break;
      case 722:
        result = sub_10002AB70(v8, v10, a3, a4);
        break;
      case 723:
        result = sub_10002AC84(v8, v10, a3, a4);
        break;
      case 725:
        result = sub_10002AD38(v8, v10, a3, a4);
        break;
      default:
        result = 33;
        break;
    }
  }

  else
  {
    sub_10004B494(a3, "no service, code = %d", v11);
    result = v11;
    if (a2 == 704 && (v11 & 0xFFFFFFFE) == 0x70)
    {
      v10 = sub_10004AB10();
      return sub_100029704(v8, v10, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1000225C8(uint64_t a1, int a2, void *a3, void *a4)
{
  dword_10007E348 = *(sub_10004AB10() + 5);
  qword_10007E318 = sub_10003283C();
  v25 = -1;
  v7 = sub_100028B5C(a3, &v25);
  v8 = v25;
  if (v25 == 36)
  {
    return 0;
  }

  v9 = v7;
  if (a2 == 301 && v25 == 135)
  {
    v9 = &unk_10007E220;
  }

  else
  {
    if (!v7)
    {
      return v8;
    }

    v8 = 45;
    if ((a2 - 302) < 8 || a2 == 300)
    {
      return v8;
    }

    if (a2 != 301)
    {
      return 33;
    }
  }

  v10 = v9[31];
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v8 = 45;
  v11 = 0;
  switch(xpc_dictionary_get_uint64(a3, "outgsk"))
  {
    case 0uLL:
      goto LABEL_55;
    case 1uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v14 = *(v9 + 306);
      if (v14 == 2)
      {
        v12 = 11;
      }

      else if (v14)
      {
        v12 = *(v9 + 313);
      }

      else
      {
LABEL_31:
        v12 = 0;
      }

      goto LABEL_53;
    case 3uLL:
      v12 = getuid();
      goto LABEL_53;
    case 4uLL:
      v12 = getpid();
      goto LABEL_53;
    case 6uLL:
      if (sub_100032A18(v10) == &unk_10007D720 || sub_1000443C8(v10))
      {
        v13 = xpc_string_create("System");
        goto LABEL_54;
      }

      v8 = 125;
      goto LABEL_44;
    case 7uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = (v9[176] >> 2) & 1;
      goto LABEL_53;
    case 8uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = *(v9 + 224);
      goto LABEL_53;
    case 9uLL:
      goto LABEL_31;
    case 0xAuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = *(v9 + 212);
      goto LABEL_53;
    case 0xBuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v11 = xpc_dictionary_create(0, 0, 0);
      for (i = v9[128]; i; i = *i)
      {
        v16 = strrchr(i + 32, 61);
        *v16 = 0;
        xpc_dictionary_set_string(v11, i + 32, v16 + 1);
        *v16 = 61;
      }

      goto LABEL_55;
    case 0xCuLL:
    case 0x18uLL:
    case 0x1AuLL:
      v8 = 126;
      goto LABEL_44;
    case 0xDuLL:
      v12 = 32;
      goto LABEL_53;
    case 0xEuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      if ((*(v9 + 1412) & 2) == 0)
      {
        v8 = 3;
        goto LABEL_44;
      }

      v12 = *(v9 + 408);
      goto LABEL_53;
    case 0xFuLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = (v9[176] >> 16) & 1;
      goto LABEL_53;
    case 0x10uLL:
      if (*(v9 + 74))
      {
        goto LABEL_43;
      }

      v12 = (v9[176] >> 8) & 1;
      goto LABEL_53;
    case 0x12uLL:
      if (!*(v9 + 74))
      {
        v12 = (v9[176] >> 11) & 1;
LABEL_53:
        v13 = xpc_int64_create(v12);
LABEL_54:
        v11 = v13;
LABEL_55:
        uint64 = xpc_dictionary_get_uint64(a3, "ingsk");
        if (!uint64)
        {
          goto LABEL_94;
        }

        if (*(v9 + 74))
        {
          v8 = 135;
          goto LABEL_58;
        }

        v18 = uint64;
        value = xpc_dictionary_get_value(a3, "in");
        if (!value)
        {
          goto LABEL_94;
        }

        v20 = value;
        v8 = 45;
        if (v18 <= 14)
        {
          if (v18 > 9)
          {
            if (v18 == 10)
            {
              if (xpc_get_type(value) != &_xpc_type_int64)
              {
                goto LABEL_88;
              }

              *(v9 + 212) = xpc_int64_get_value(v20);
            }

            else if (v18 != 13)
            {
              if (v18 != 14)
              {
                goto LABEL_58;
              }

              if (xpc_get_type(value) != &_xpc_type_int64)
              {
                goto LABEL_88;
              }

              v9[176] |= 0x200000000uLL;
              *(v9 + 408) = xpc_int64_get_value(v20);
            }
          }

          else if (v18 != 2)
          {
            if (v18 != 7)
            {
              if (v18 != 8)
              {
                goto LABEL_58;
              }

              if (xpc_get_type(value) == &_xpc_type_int64)
              {
                if (*(v9 + 292))
                {
                  if (v9[111])
                  {
                    sub_100054404();
                  }

                  *(v9 + 224) = xpc_int64_get_value(v20);
                }

                goto LABEL_94;
              }

              goto LABEL_88;
            }

            if (xpc_get_type(value) != &_xpc_type_int64)
            {
LABEL_88:
              v8 = 22;
              goto LABEL_58;
            }

            v21 = v9[176] & 0xFFFFFFFFFFFFFFFBLL | (4 * (xpc_int64_get_value(v20) != 0));
            goto LABEL_93;
          }

LABEL_94:
          reply = xpc_dictionary_create_reply(a3);
          v23 = reply;
          if (v11)
          {
            xpc_dictionary_set_value(reply, "out", v11);
            xpc_release(v11);
          }

          v8 = 0;
          *a4 = v23;
          return v8;
        }

        if (v18 > 17)
        {
          if (v18 != 18 && v18 != 22 && v18 != 23)
          {
LABEL_58:
            if (v11)
            {
              xpc_release(v11);
            }

            return v8;
          }
        }

        else
        {
          if (v18 == 15)
          {
            if (xpc_get_type(value) == &_xpc_type_int64)
            {
              goto LABEL_88;
            }

            v21 = v9[176] & 0xFFFFFFFFFFFEFFFFLL | ((xpc_int64_get_value(v20) != 0) << 16);
LABEL_93:
            v9[176] = v21;
            goto LABEL_94;
          }

          if (v18 == 16)
          {
            if (xpc_get_type(value) == &_xpc_type_int64 && xpc_int64_get_value(v20))
            {
              v9[176] |= 0x100uLL;
            }

            goto LABEL_94;
          }
        }

        v8 = 126;
        goto LABEL_58;
      }

LABEL_43:
      v8 = 135;
LABEL_44:
      if (xpc_dictionary_get_uint64(a3, "ingsk"))
      {
        if (*(v9 + 74))
        {
          return 135;
        }

        else
        {
          return v8;
        }
      }

      return v8;
    default:
      goto LABEL_44;
  }
}

uint64_t sub_100022B5C(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  v2 = *(a1 + 344);
  if (v2)
  {
    return *(v2 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022BA0(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return (*(a1 + 1413) >> 2) & 1;
}

uint64_t sub_100022BD8(uint64_t a1)
{
  result = sub_100022C2C(a1);
  if (!result)
  {
    result = sub_100022CA8(a1);
    if (result)
    {

      return sub_100022C2C(a1);
    }
  }

  return result;
}

uint64_t sub_100022C2C(int a1)
{
  v2 = a1;
  for (result = qword_10007E068[sub_100016BA4(&v2, 4) % 0x35uLL]; result; result = *(result + 24))
  {
    if (*(result + 1168) == v2)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_100022CA8(uint64_t a1)
{
  v1 = a1;
  sub_100015820();
  if (!v1)
  {
    return 0;
  }

  __dmb(9u);
  v2 = qword_10007E218;
  if (!qword_10007E218)
  {
    return 0;
  }

  while (*(v2 + 1176) != v1)
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      return 0;
    }
  }

  if (*(v2 + 424) != 2)
  {
    sub_100054404();
  }

  sub_100020018(v2, 5, "speculatively converting service to spawned, pid=%d", v1);

  return sub_100022D58(v2, v1, 0, 1);
}

uint64_t sub_100022D58(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = a1;
  if ((*(a1 + 1216) & 0x80) != 0)
  {
    v8 = "xpcproxy";
  }

  else
  {
    v8 = "service";
  }

  if (*(a1 + 424) == 2)
  {
    sub_100015808();
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = (v7 + 24);
    if (v9)
    {
      *(v9 + 32) = v10;
    }

    *v10 = v9;
    *v11 = -1;
    *(v7 + 32) = -1;
    if (a3)
    {
      if ((*(v7 + 1216) & 0x80) != 0)
      {
        v12 = off_10007DC28[0];
        v13 = "trampoline";
      }

      else
      {
        v12 = sub_10001FB70(v7);
        v13 = "service";
      }

      v22 = *(v7 + 1180);
      if (a3 <= 0xD && ((1 << a3) & 0x2104) != 0)
      {
        v23 = *(v7 + 1408);
        if ((v23 & 0x4000000000000) == 0)
        {
          *(v7 + 1408) = v23 | 0x4000000000000;
          v24 = strerror(a3);
          sub_100020018(v7, 5, "Remove ability to use bypass the proxy: spawn failed: %d: %s", a3, v24);
        }
      }

      v25 = strerror(a3);
      sub_100020018(v7, 5, "%s spawn failed: %d: %s", v13, a3, v25);
      sub_10001B5B8(v7, 30);
      sub_10001FECC(v7, 1, a3);
      v26 = strerror(a3);
      sub_100020018(v7, 3, "Could not spawn process %s: %d: %s", v12, a3, v26);
      if ((*(v7 + 1411) & 0x20) == 0)
      {
        sub_10001B690(v7, 30);
        sub_100027154(v7, 0);
        if ((*(v7 + 1216) & 0x80) != 0)
        {
          if ((*(v7 + 368) & 0x10) != 0)
          {
            sub_100054404();
          }

          v27 = sub_100020674(v7);
          sub_100027E70(v7, v27, v22, 0);
        }

        sub_1000288C4(v7, a3, 0);
        goto LABEL_50;
      }

      sub_100020018(v7, 3, "Removed service on spawn failure");
      sub_100027154(v7, 0);
      sub_10001B690(v7, 30);
      return 0;
    }

    else
    {
      *(v7 + 1168) = a2;
      sub_100020018(v7, 5, "%s spawned with pid %d", v8, a2);
      sub_100010B3C(570425348, *(v7 + 1168));
      j__kdebug_trace();
      v15 = &qword_10007E068[sub_100016BA4((v7 + 1168), 4) % 0x35uLL];
      v16 = *v15;
      *(v7 + 24) = *v15;
      if (v16)
      {
        *(v16 + 32) = v11;
      }

      *v15 = v7;
      *(v7 + 32) = v15;
      v17 = *(v7 + 1168);
      v18 = sub_1000157D8();
      v19 = dispatch_source_create(&_dispatch_source_type_proc, v17, 0xE0000000uLL, v18);
      *(v7 + 1184) = v19;
      v20 = sub_10001B550(v7, 26, v19, 0);
      dispatch_set_context(*(v7 + 1184), v20);
      dispatch_source_set_event_handler_f(*(v7 + 1184), sub_100021808);
      dispatch_source_set_registration_handler_f(*(v7 + 1184), sub_10002B15C);
      dispatch_source_set_mandatory_cancel_handler_f();
      dispatch_activate(*(v7 + 1184));
      if ((*(v7 + 1409) & 0x80) != 0)
      {
        v21 = *(v7 + 192);
        if (v21)
        {
          v39 = 0;
          v40 = 0;
          v38 = 0;
          if (sub_10001E820(v21, v7, 0, &v40, &v39, &v38))
          {
            xpc_strerror();
            sub_100020018(v7, 3, "Could not activate inetd socket: %d: %s");
          }

          else
          {
            v28 = v40;
            v29 = *v40;
            v30 = v38;
            if (v38)
            {
              v31 = v39;
              while (1)
              {
                v32 = *v31++;
                if (v32 == 1)
                {
                  break;
                }

                ++v28;
                if (!--v30)
                {
                  goto LABEL_40;
                }
              }

              v29 = *v28;
            }

LABEL_40:
            v33 = sub_100020B7C(v7, *(v7 + 448), *(v7 + 456), *(v7 + 464), v29);
            if (v33)
            {
              strerror(v33);
              sub_100020018(v7, 3, "Could not setup inetd descriptors: %d: %s");
            }
          }
        }

        else
        {
          sub_100020018(v7, 3, "inetd-compatible service with no sockets.");
        }
      }

      sub_10001FECC(v7, 1, 0);
      if (*(v7 + 424) != 2)
      {
        sub_100054404();
      }

      sub_100027154(v7, 3);
      if (*(v7 + 424) != 3)
      {
        sub_100054404();
      }

      v34 = *(v7 + 1168);
      v35 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      sub_100000ECC(v34, v35 / 0xF4240);
      if ((*(v7 + 1216) & 0x80) == 0)
      {
        sub_100021880(v7);
      }

      if (a4)
      {
        sub_10001FECC(v7, 7, 0);
      }

      if ((*(v7 + 1216) & 0x100) != 0)
      {
        sub_100020018(v7, 5, "redriving pending stop");
        v36 = sub_10000B7FC();
        sub_1000235C4(v7, v36);
LABEL_50:
        *(v7 + 1216) &= ~0x100u;
      }
    }
  }

  else
  {
    sub_100020018(a1, 5, "spawn completed after a speculative conversion");
    if (a3)
    {
      sub_1000441E0("speculatively converted service to spawned, but spawn failed with error %d", a3);
    }

    if (*(v7 + 1176) != a2)
    {
      sub_100054404();
    }

    v14 = *(v7 + 1168);
    if (v14 && v14 != a2)
    {
      sub_1000441E0("speculatively converted service to spawned with PID %d, but the PID is %d", *(v7 + 1168), a2);
    }

    if (a4)
    {
      sub_100054404();
    }

    sub_10001FECC(v7, 8, 0);
  }

  return v7;
}

uint64_t sub_1000232CC(uint64_t result)
{
  v1 = result;
  if (*(result + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(result + 296), (result + 1424));
  }

  if (!*(result + 1168) && (*(result + 368) & 0x10) == 0)
  {
    result = sub_1000208C0(result);
    if (result)
    {

      return sub_100020084(v1, result);
    }
  }

  return result;
}

uint64_t sub_100023354(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 424) == 1)
  {
    sub_1000233C0(a1, a2);
  }

  v4 = sub_100026FE0(a1);
  v5 = a1 + 1056;
  if (v4)
  {
    v5 = v4;
  }

  *(v5 + 1) = 1;

  return sub_1000234BC(a1, a2);
}

void sub_1000233C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 424) != 1)
  {
    sub_100054404();
  }

  sub_100027154(a1, 0);
  v3 = *(a1 + 1408);
  if ((v3 & 0x40000) != 0)
  {
    v6 = *(a1 + 136);
    if (v6)
    {
      do
      {
        v7 = v6[2];
        if (sub_100040088(v6))
        {
          sub_100040094(v6);
          sub_10001B690(v6, 0);
        }

        v6 = v7;
      }

      while (v7);
      v3 = *(a1 + 1408);
    }

    *(a1 + 1408) = v3 & 0xFFFFFFFFFFFBFFFFLL;
    sub_100020018(a1, 5, "canceling penalty-box spawn");
  }

  else
  {
    v4 = *(a1 + 840);
    if (v4)
    {
      dispatch_source_cancel(v4);
      *(a1 + 840) = 0;
      *(a1 + 832) = 0;
      v5 = *(a1 + 856);
      if (v5)
      {
        sub_1000014C0(v5);
        *(a1 + 856) = 0;
      }

      sub_10002813C(a1, 0);
      sub_100020018(a1, 5, "canceling throttled spawn");
    }
  }

  sub_10001FECC(a1, 1, 89);
}

uint64_t sub_1000234BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  if (a2 == 11)
  {
    v4 = *(a1 + 1408);
    if ((v4 & 0x40000) == 0)
    {
      sub_1000441E0("retry launch on service that was not deferred");
    }

    *(a1 + 1408) = v4 & 0xFFFFFFFFFFFBFFFFLL;
    sub_100020018(a1, 5, "retry launch");
  }

  else if (*(a1 + 424) - 1 <= 1)
  {
    sub_100020018(a1, 5, "launch already in progress");
    return 36;
  }

  if ((*(a1 + 1410) & 4) != 0)
  {
    sub_100020018(a1, 5, "attempt to launch while in penalty box");
    return 139;
  }

  else if (*(a1 + 1168))
  {
    return 37;
  }

  else
  {

    return sub_100020084(a1, a2);
  }
}

uint64_t sub_1000235C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  if ((*(a1 + 368) & 0x10) != 0)
  {
    v4 = *(a1 + 144);
    if (v4)
    {
      do
      {
        v5 = v4[2];
        sub_10003FB28(v4);
        sub_10001B690(v4, 0);
        v4 = v5;
      }

      while (v5);
    }
  }

  v6 = *(a1 + 424);
  if (v6 == 1)
  {
    sub_1000233C0(a1, a2);
    return 89;
  }

  if (!*(a1 + 1168))
  {
    if (v6 == 2)
    {
      sub_100020018(a1, 5, "service spawning, defer stopping");
      if (*(a1 + 1168))
      {
        sub_100054404();
      }

      v11 = *(a1 + 1216);
      *(a1 + 1216) = v11 | 0x100;
      if ((v11 & 0x100) != 0)
      {
        return 37;
      }

      else
      {
        return 36;
      }
    }

    else
    {
      sub_100020018(a1, 5, "service not running, not stopping");
      return 37;
    }
  }

  if (v6 == 7)
  {
    v9 = (*(a1 + 536))(a1, *(a1 + 568));
    v7 = v9;
    if (v9)
    {
      sub_100020018(a1, 5, "cannot abandon languishing service: %d", v9);
      v10 = xpc_strerror();
      sub_100020018(a1, 4, "Cannot abandon languishing service: %d: %s", v7, v10);
    }

    else
    {
      sub_100020018(a1, 5, "abandoning languishing service");
      sub_100020C74(a1);
    }

    return v7;
  }

  return sub_10002377C(a1, 0, a2);
}

uint64_t sub_10002377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 424) - 3 >= 2)
  {
    sub_100020018(a1, 5, "service already stopped");
    return 37;
  }

  memset(v33, 0, sizeof(v33));
  if (!*(a1 + 1168))
  {
    sub_100054404();
  }

  v5 = a2;
  if ((sub_10000BAFC(a3) & 1) == 0)
  {
    v6 = sub_100046B54(*(a1 + 1168), v33);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 1168);
      v9 = mach_error_string(v6);
      sub_100020018(a1, 5, "could not get audit token for service (PID %d): %d: %s", v8, v7, v9);
      v10 = dword_10007DC3C;
      v11 = 3;
      goto LABEL_21;
    }
  }

  if (sub_100031138(*(a1 + 248), a3, a1) && !sub_10001A6A4(a3, v33, 9))
  {
    sub_100020018(a1, 5, "caller (PID %d) is not allowed to signal target process: %s", *(a3 + 20), (a1 + 1424));
    return 1;
  }

  if (*(a1 + 1216) & 2) == 0 || (byte_10007F0C5)
  {
    v32 = 0;
    v13 = sub_10002B26C(a1, a3, v33, &v32);
    if (v13 && v13 != 3)
    {
      _os_assumes_log();
    }

    if ((*(a1 + 1216) & 2) != 0)
    {
      if ((byte_10007F0C5 & 1) == 0)
      {
        sub_100054E1C(byte_10007F0C5);
      }

      v14 = "sudden shutdown";
    }

    else
    {
      v14 = "aborting trampoline";
    }

    goto LABEL_18;
  }

  if (v5 == 2)
  {
    v11 = sub_1000468E8(*(a1 + 1168), 3u, "extension check-in timeout", 2);
    *(a1 + 1204) = 9;
  }

  else
  {
    if (v5 == 1)
    {
      v14 = "force-kill";
LABEL_18:
      v15 = 9;
      v16 = a1;
      v17 = a3;
      v18 = 9;
LABEL_19:
      v11 = sub_10002B1A4(v16, v17, v33, v18, v14);
      *(a1 + 1204) = v15;
      goto LABEL_20;
    }

    if ((*(a1 + 1413) & 0x40) != 0)
    {
      if (v5)
      {
        sub_100054404();
      }

      v14 = "requested SIGTERM";
      v15 = 15;
      v16 = a1;
      v17 = a3;
      v18 = 15;
      goto LABEL_19;
    }

    if (v5)
    {
      sub_100054404();
    }

    v32 = 0;
    v11 = sub_10002B26C(a1, a3, v33, &v32);
    v30 = v32;
    *(a1 + 1204) = v32;
    if (!v11)
    {
      sub_100010B4C(570425424, *(a1 + 1168), v30);
      v31 = strsignal(*(a1 + 1204));
      sub_100020018(a1, 5, "signaled service: %s", v31);
    }
  }

LABEL_20:
  v10 = 0;
  if (!v11)
  {
    LOBYTE(v21) = *(a1 + 1204);
    goto LABEL_25;
  }

LABEL_21:
  v19 = strerror(v11);
  sub_100020018(a1, 5, "could not terminate service: %d: %s", v11, v19);
  v20 = strerror(v11);
  sub_100020018(a1, 3, "could not terminate service: %d: %s", v11, v20);
  if (!v10)
  {
    v10 = !sub_100046A70(*(a1 + 1168));
  }

  v21 = *(a1 + 1204) & 0xFFFFFF00 | 9;
  *(a1 + 1204) = v21;
LABEL_25:
  if (v21 == 15)
  {
    sub_100027154(a1, 5);
    v22 = sub_10002B4D4;
    if (!v10)
    {
      v10 = *(a1 + 848);
      v22 = sub_10002B4D4;
    }
  }

  else
  {
    if (v21 != 9)
    {
      v24 = strsignal(v21);
      sub_100020018(a1, 4, "Service was sent unexpected signal: %s", v24);
      v23 = sub_10002B2F0;
      v10 = 1;
      goto LABEL_34;
    }

    sub_100027154(a1, 6);
    if (!v10)
    {
      v10 = dword_10007DC3C;
    }

    v22 = sub_10002B2F0;
  }

  v23 = v22;
LABEL_34:
  if (v5 == 2)
  {
    v25 = 10;
  }

  else
  {
    v25 = v10;
  }

  v26 = strsignal(*(a1 + 1204));
  sub_100020018(a1, 5, "scheduling cleanup in %llu sec after sending %s", v25, v26);
  if (*(a1 + 1192))
  {
    sub_1000441E0("tried to overwrite service timeout_source");
  }

  v27 = sub_1000157D8();
  *(a1 + 1192) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v27);
  sub_10001BB18(a1, 28);
  dispatch_set_context(*(a1 + 1192), a1);
  dispatch_source_set_event_handler_f(*(a1 + 1192), v23);
  v28 = *(a1 + 1192);
  v29 = dispatch_time(0, 1000000000 * v25);
  dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_activate(*(a1 + 1192));
  return 0;
}

uint64_t sub_100023BF8(uint64_t a1)
{
  v2 = sub_10000B7FC();

  return sub_1000235C4(a1, v2);
}

void sub_100023C34(uint64_t result)
{
  v2 = *(result + 296);
  if (v2)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v2, (result + 1424));
  }

  if ((*(result + 1412) & 0x20) != 0)
  {

    sub_100023C7C(result);
  }
}

void sub_100023C7C(uint64_t result)
{
  for (i = *(result + 152); i; i = *(i + 16))
  {
    if ((*(i + 88) & 0x40) == 0)
    {
      sub_100020018(result, 5, "draining messages from %s", (i + 168));
      sub_10004D4A8(i);
    }
  }

  for (j = *(result + 184); j; j = *(j + 16))
  {
    if ((*(j + 88) & 0x40) == 0)
    {
      sub_100020018(result, 5, "draining messages from %s", (j + 168));
      sub_10004D4A8(j);
    }
  }
}

void sub_100023D2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 896))
  {
    if (*(a1 + 888))
    {
      sub_100054404();
    }

    v3 = sub_1000157D8();
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    *(a1 + 888) = v4;
    dispatch_set_context(v4, a1);
    v5 = *(a1 + 888);
    v6 = dispatch_time(0, 1000000000 * *(a1 + 896));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(a1 + 888), sub_100023DF0);
    v7 = *(a1 + 888);

    dispatch_activate(v7);
  }
}

void sub_100023DF0(uint64_t a1)
{
  v2 = sub_100020084(a1, 12);
  sub_100020018(a1, 5, "interval event: domain response: %d", v2);
  if (v2 && v2 != 36 && v2 != 124)
  {
    v3 = xpc_strerror();
    sub_100020018(a1, 3, "Interval spawn of service failed: %d: %s", v2, v3);
  }
}

void sub_100023E70(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 896))
  {
    v3 = *(a1 + 888);
    if (!v3)
    {
      sub_100054404();
    }

    dispatch_source_cancel(v3);
    dispatch_release(*(a1 + 888));
    *(a1 + 888) = 0;
  }
}

void sub_100023EB4(uint64_t a1)
{
  v2 = *(a1 + 888);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 888));
    *(a1 + 888) = 0;
  }
}

uint64_t sub_100023EEC(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return a1 + 376;
}

uint64_t sub_100023F20(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return *(a1 + 1168);
}

xpc_object_t sub_100023F54(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "Label", (a1 + 1424));
  xpc_dictionary_set_BOOL(v2, "OnDemand", (*(a1 + 1408) & 4) == 0);
  v3 = sub_100032A18(*(a1 + 248));
  if (v3 == &unk_10007D720)
  {
    v4 = "System";
  }

  else if (v3 == qword_10007D7A8)
  {
    v4 = "Background";
  }

  else
  {
    if (v3 != &unk_10007D830)
    {
      goto LABEL_9;
    }

    v4 = "Aqua";
  }

  xpc_dictionary_set_string(v2, "LimitLoadToSessionType", v4);
LABEL_9:
  if (sub_10004A8AC(a1 + 1224))
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (sub_10004A680((a1 + 1224)))
  {
    v5 = *(a1 + 1252);
  }

  else
  {
    v5 = 0;
  }

  xpc_dictionary_set_int64(v2, "LastExitStatus", v5);
  v6 = *(a1 + 1168);
  if (v6)
  {
    xpc_dictionary_set_int64(v2, "PID", v6);
  }

  v7 = *(a1 + 448);
  if (v7)
  {
    xpc_dictionary_set_string(v2, "StandardInPath", v7);
  }

  v8 = *(a1 + 456);
  if (v8)
  {
    xpc_dictionary_set_string(v2, "StandardOutPath", v8);
  }

  v9 = *(a1 + 464);
  if (v9)
  {
    xpc_dictionary_set_string(v2, "StandardErrorPath", v9);
  }

  v10 = *(a1 + 1408);
  if ((v10 & 0x100) != 0)
  {
    xpc_dictionary_set_BOOL(v2, "EnableTransactions", 1);
    v10 = *(a1 + 1408);
  }

  if ((v10 & 0x4000) != 0)
  {
    xpc_dictionary_set_BOOL(v2, "inetdCompatibility", 1);
    xpc_dictionary_set_BOOL(v2, "Wait", (*(a1 + 1408) & 0x8000) != 0);
  }

  v11 = *(a1 + 640);
  if (v11)
  {
    xpc_dictionary_set_value(v2, "_AdditionalProperties", v11);
  }

  v12 = sub_10001FB70(a1);
  xpc_dictionary_set_string(v2, "Program", v12);
  if (*(a1 + 428))
  {
    v13 = xpc_array_create(0, 0);
    if (*(a1 + 428))
    {
      v14 = 0;
      do
      {
        xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, *(*(a1 + 432) + 8 * v14++));
      }

      while (v14 < *(a1 + 428));
    }

    xpc_dictionary_set_value(v2, "ProgramArguments", v13);
    xpc_release(v13);
  }

  return v2;
}

xpc_object_t sub_1000241D0(uint64_t a1, char a2)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "extension", (*(a1 + 1408) & 0x800000000) != 0);
  xpc_dictionary_set_BOOL(v4, launch_extension_property_xpc_bundle, (*(a1 + 1408) & 2) != 0);
  v5 = *(a1 + 576);
  if (v5)
  {
    xpc_dictionary_set_string(v4, "bundle-id", v5);
  }

  xpc_dictionary_set_int64(v4, launch_extension_property_pid, *(a1 + 1168));
  if (*sub_10001FB7C(a1) == 47)
  {
    v6 = sub_10001FB7C(a1);
    xpc_dictionary_set_string(v4, "path", v6);
  }

  v7 = *(a1 + 248);
  if (sub_100032A18(v7) == qword_10007D8B8)
  {
    v8 = sub_100032A20(v7);
    v9 = v8;
    v10 = sub_100022BD8(v8);
    if (v10)
    {
      v11 = *(v10 + 576);
      if (v11)
      {
        xpc_dictionary_set_string(v4, launch_extension_property_host_bundle_id, v11);
      }
    }

    xpc_dictionary_set_int64(v4, launch_extension_property_host_pid, v9);
    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(a1 + 344);
  if (v12)
  {
    v13 = *(v12 + 56);
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = xpc_array_create(0, 0);
  for (i = *(a1 + 152); i; i = *(i + 16))
  {
    if ((*(i + 88) & 0x40) == 0)
    {
      v16 = sub_100016AEC(v13, (i + 168));
      v17 = sub_10004C8C4(i, v16);
      xpc_array_append_value(v14, v17);
      xpc_release(v17);
    }
  }

  for (j = *(a1 + 176); j; j = *(j + 16))
  {
    if ((*(j + 88) & 0x40) == 0)
    {
      v19 = sub_10004C8C4(j, 0);
      xpc_array_append_value(v14, v19);
      xpc_release(v19);
    }
  }

  for (k = *(a1 + 184); k; k = *(k + 16))
  {
    if ((*(k + 88) & 0x40) == 0)
    {
      v21 = sub_100016AEC(v13, (k + 168));
      v22 = sub_10004C8C4(k, v21);
      xpc_array_append_value(v14, v22);
      xpc_release(v22);
    }
  }

  if (xpc_array_get_count(v14))
  {
    xpc_dictionary_set_value(v4, launch_perfcheck_property_endpoints, v14);
  }

  xpc_release(v14);
  v23 = *(a1 + 256);
  if (!v23)
  {
    v23 = a1;
  }

  xpc_dictionary_set_string(v4, "label", (v23 + 1424));
  if ((*(a1 + 1413) & 4) != 0)
  {
    xpc_dictionary_set_uuid(v4, "instance", (a1 + 408));
  }

  xpc_dictionary_set_int64(v4, "jp-priority", *(a1 + 936));
  xpc_dictionary_set_value(v4, "additional-properties", *(a1 + 640));
  v24 = sub_10001FB70(a1);
  xpc_dictionary_set_string(v4, "program", v24);
  xpc_dictionary_set_uint64(v4, "process-type", *(a1 + 912));
  xpc_dictionary_set_BOOL(v4, "keep-alive", (*(a1 + 1408) & 0xCLL) != 0);
  xpc_dictionary_set_BOOL(v4, "run-at-load", (*(a1 + 1408) & 0x10) != 0);
  xpc_dictionary_set_BOOL(v4, "enable-transactions", *(a1 + 1408) & 0x100);
  xpc_dictionary_set_uint64(v4, "service-type", *(a1 + 356));
  xpc_dictionary_set_value(v4, "persist-to-boot-mode", *(a1 + 648));
  return v4;
}

uint64_t sub_100024564(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v2, (a1 + 1424));
  }

  return sub_10001FB70(a1);
}

char *sub_1000245A0(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  result = *(a1 + 1152);
  if (!result || *(a1 + 1202) <= 1u)
  {
    v3 = sub_10001FB70(a1);
    v4 = *(a1 + 1408);
    v5 = strrchr(v3, 47);
    v6 = v5;
    if ((v4 & 2) != 0)
    {
      if (v5)
      {
        v7 = strrchr(v5, 46);
        if (v7)
        {
          v3 = v7;
        }

        else
        {
          v3 = v6;
        }
      }
    }

    else if (v5)
    {
      v3 = v5;
    }

    return v3 + 1;
  }

  return result;
}

uint64_t sub_100024648(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return *(a1 + 584);
}

uint64_t sub_10002467C(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return *(a1 + 576);
}

uint64_t sub_1000246B0(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return a1 + 408;
}

uint64_t sub_1000246EC(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v2, (a1 + 1424));
  }

  *a2 = (*(a1 + 1408) & 0x8000) != 0;
  return (*(a1 + 1409) >> 6) & 1;
}

uint64_t sub_100024730(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return (*(a1 + 1216) >> 1) & 1;
}

uint64_t sub_100024768(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v1, (a1 + 1424));
  }

  return (*(a1 + 1413) >> 1) & 1;
}

FILE *sub_1000247AC(FILE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10007E210)
  {
    v9 = result;
    sub_100049ECC(result, a2 + 1, "pending global attachments = {", a4, a5, a6, a7, a8);
    v15 = qword_10007E210;
    if (qword_10007E210)
    {
      do
      {
        sub_100049ECC(v9, a2 + 2, "%s", v10, v11, v12, v13, v14, v15[2]);
        v15 = *v15;
      }

      while (v15);
    }

    return sub_100049ECC(v9, a2 + 1, "}", v10, v11, v12, v13, v14);
  }

  return result;
}

uint64_t sub_100024860(uint64_t a1, FILE *a2, uint64_t a3)
{
  v4 = *(a1 + 296);
  if (v4)
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v4, (a1 + 1424));
  }

  return sub_10002489C(a1, a2, a3);
}

uint64_t sub_10002489C(uint64_t a1, FILE *a2, uint64_t a3)
{
  v6 = sub_100022158(a1, 1);
  sub_100049ECC(a2, a3, "%s = {", v7, v8, v9, v10, v11, v6);
  free(v6);
  v17 = *(a1 + 256);
  if (v17)
  {
    sub_100049ECC(a2, a3 + 1, "original = %s", v12, v13, v14, v15, v16, v17 + 1424);
  }

  sub_100049ECC(a2, a3 + 1, "active count = %d", v12, v13, v14, v15, v16, *(a1 + 300));
  if (*(a1 + 264))
  {
    sub_100049ECC(a2, a3 + 1, "copy count = %d", v18, v19, v20, v21, v22, *(a1 + 264));
  }

  if (sub_10001FB7C(a1))
  {
    v28 = sub_10001FB7C(a1);
    sub_100049ECC(a2, a3 + 1, "path = %s", v29, v30, v31, v32, v33, v28);
  }

  if (*(a1 + 356) - 1 > 6)
  {
    v34 = "Unknown";
  }

  else
  {
    v34 = off_1000790B8[(*(a1 + 356) - 1)];
  }

  sub_100049ECC(a2, a3 + 1, "type = %s", v23, v24, v25, v26, v27, v34);
  v40 = *(a1 + 344);
  if (v40)
  {
    v41 = *(v40 + 48);
    if (v41)
    {
      type = xpc_get_type(v41);
      if (type == &_xpc_type_array)
      {
        sub_100049ECC(a2, a3 + 1, "managed_by = {", v35, v36, v37, v38, v39);
        v48 = *(*(a1 + 344) + 48);
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 0x40000000;
        applier[2] = sub_10002B6B4;
        applier[3] = &unk_100078FA0;
        applier[4] = a2;
        applier[5] = a3;
        xpc_array_apply(v48, applier);
        sub_100049ECC(a2, a3 + 1, "}", v49, v50, v51, v52, v53, v666);
      }

      else if (type == &_xpc_type_string)
      {
        string_ptr = xpc_string_get_string_ptr(*(*(a1 + 344) + 48));
        sub_100049ECC(a2, a3 + 1, "managed_by = %s", v43, v44, v45, v46, v47, string_ptr);
      }
    }

    v54 = *(a1 + 344);
    if (v54 && *(v54 + 56))
    {
      sub_100049ECC(a2, a3 + 1, "managedby_services = {", v35, v36, v37, v38, v39);
      v55 = *(*(a1 + 344) + 56);
      v693[0] = _NSConcreteStackBlock;
      v693[1] = 0x40000000;
      v693[2] = sub_10002B700;
      v693[3] = &unk_100078FC0;
      v693[4] = a2;
      v693[5] = a3;
      xpc_array_apply(v55, v693);
      sub_100049ECC(a2, a3 + 1, "}", v56, v57, v58, v59, v60);
    }
  }

  v61 = *(a1 + 296);
  if (v61)
  {
LABEL_379:
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", v61, (a1 + 1424));
  }

  v62 = *(a1 + 344);
  if (v62)
  {
    v63 = *(v62 + 64);
    if (v63)
    {
      v64 = xpc_string_get_string_ptr(v63);
      sub_100049ECC(a2, a3 + 1, "service jetsam coalition to join = %s", v65, v66, v67, v68, v69, v64);
    }
  }

  LOBYTE(v668) = sub_1000271DC(a1);
  sub_100049ECC(a2, a3 + 1, "state = %s", v70, v71, v72, v73, v74);
  if (*(a1 + 576))
  {
    v668 = *(a1 + 576);
    sub_100049ECC(a2, a3 + 1, "bundle id = %s", v77, v78, v79, v80, v81);
  }

  if ((*(a1 + 1412) & 8) != 0)
  {
    v668 = *(a1 + 584);
    sub_100049ECC(a2, a3 + 1, "extension point = %s", v77, v78, v79, v80, v81);
  }

  v82 = *(a1 + 704);
  if (v82)
  {
    *object_addr = 0u;
    v692 = 0u;
    DWORD1(v692) = v82;
    v697 = 0u;
    v698 = 0u;
    *object_type = 0u;
    v696 = 0u;
    LOBYTE(v668) = sub_100045C2C(object_addr, object_type);
    v685 = *(a1 + 704);
    sub_100049ECC(a2, a3 + 1, "controller = %s.%d", v83, v84, v85, v86, v87);
  }

  sub_100049F4C(a2, v75, v76, v77, v78, v79, v80, v81, v668);
  LOBYTE(v669) = sub_10001FB70(a1);
  sub_100049ECC(a2, a3 + 1, "program = %s", v88, v89, v90, v91, v92);
  if (*(a1 + 1280))
  {
    v669 = *(a1 + 1280);
    sub_100049ECC(a2, a3 + 2, "+ %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 428) || *(a1 + 1288))
  {
    sub_100049ECC(a2, a3 + 1, "arguments = {", v93, v94, v95, v96, v97);
    if (*(a1 + 428))
    {
      v103 = 0;
      do
      {
        sub_100049ECC(a2, a3 + 2, "%s", v98, v99, v100, v101, v102, *(*(a1 + 432) + 8 * v103++));
      }

      while (v103 < *(a1 + 428));
    }

    sub_100049ECC(a2, a3 + 1, "}", v98, v99, v100, v101, v102);
    if (*(a1 + 1288))
    {
      sub_100049F4C(a2, v104, v105, v106, v107, v108, v109, v110, v669);
      sub_100049ECC(a2, a3 + 1, "controller-supplied arguments = {", v111, v112, v113, v114, v115);
      if (xpc_array_get_count(*(a1 + 1288)))
      {
        v121 = 0;
        do
        {
          string = xpc_array_get_string(*(a1 + 1288), v121);
          if (string)
          {
            LOBYTE(v669) = string;
            sub_100049ECC(a2, a3 + 2, "%s", v123, v124, v125, v126, v127);
          }

          ++v121;
        }

        while (v121 < xpc_array_get_count(*(a1 + 1288)));
      }

      sub_100049ECC(a2, a3 + 1, "}", v116, v117, v118, v119, v120);
    }

    sub_100049F4C(a2, v104, v105, v106, v107, v108, v109, v110, v669);
  }

  v128 = *(a1 + 440);
  if (!v128)
  {
    if (!*(a1 + 1296))
    {
      goto LABEL_50;
    }

    v128 = "(unspecified)";
  }

  sub_100049ECC(a2, a3 + 1, "working directory = %s", v93, v94, v95, v96, v97, v128);
  if (*(a1 + 1296))
  {
    v670 = *(a1 + 1296);
    sub_100049ECC(a2, a3 + 2, "+ %s", v131, v132, v133, v134, v135);
  }

  sub_100049F4C(a2, v129, v130, v131, v132, v133, v134, v135, v670);
LABEL_50:
  if (*(a1 + 448))
  {
    v669 = *(a1 + 448);
    sub_100049ECC(a2, a3 + 1, "stdin path = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 456))
  {
    v669 = *(a1 + 456);
    sub_100049ECC(a2, a3 + 1, "stdout path = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 464))
  {
    v669 = *(a1 + 464);
    sub_100049ECC(a2, a3 + 1, "stderr path = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 472))
  {
    v669 = *(a1 + 472);
    sub_100049ECC(a2, a3 + 1, "container id = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 480))
  {
    v669 = *(a1 + 480);
    sub_100049ECC(a2, a3 + 1, "sandbox profile = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 488))
  {
    v669 = *(a1 + 488);
    sub_100049ECC(a2, a3 + 1, "subsystem root = %s", v93, v94, v95, v96, v97);
  }

  if (*(a1 + 1304))
  {
    sub_100049ECC(a2, a3 + 1, "controller-supplied environment = {", v93, v94, v95, v96, v97);
    *object_type = a2;
    *&object_type[2] = 0;
    *&v696 = a3 + 2;
    xpc_dictionary_apply_f();
    sub_100049ECC(a2, a3 + 1, "}", v136, v137, v138, v139, v140);
    sub_100049F4C(a2, v141, v142, v143, v144, v145, v146, v147, v669);
  }

  if (qword_10007F188)
  {
    sub_100049ECC(a2, a3 + 1, "global environment = {", v93, v94, v95, v96, v97);
    v153 = qword_10007F188;
    if (qword_10007F188)
    {
      do
      {
        sub_10001B880(v153, a3 + 2, a2);
        v153 = *v153;
      }

      while (v153);
    }

    sub_100049ECC(a2, a3 + 1, "}", v148, v149, v150, v151, v152);
    sub_100049F4C(a2, v154, v155, v156, v157, v158, v159, v160, v669);
  }

  if (*(*(a1 + 248) + 96))
  {
    sub_100049ECC(a2, a3 + 1, "inherited environment = {", v93, v94, v95, v96, v97);
    for (i = *(*(a1 + 248) + 96); i; i = *i)
    {
      sub_10001B880(i, a3 + 2, a2);
    }

    sub_100049ECC(a2, a3 + 1, "}", v161, v162, v163, v164, v165);
    sub_100049F4C(a2, v167, v168, v169, v170, v171, v172, v173, v669);
  }

  if (qword_10007F190)
  {
    sub_100049ECC(a2, a3 + 1, "default environment = {", v93, v94, v95, v96, v97);
    v179 = qword_10007F190;
    if (qword_10007F190)
    {
      do
      {
        sub_10001B880(v179, a3 + 2, a2);
        v179 = *v179;
      }

      while (v179);
    }

    sub_100049ECC(a2, a3 + 1, "}", v174, v175, v176, v177, v178);
    sub_100049F4C(a2, v180, v181, v182, v183, v184, v185, v186, v669);
  }

  if (*(a1 + 1032))
  {
    sub_100049ECC(a2, a3 + 1, "environment = {", v93, v94, v95, v96, v97);
    for (j = *(a1 + 1024); j; j = *j)
    {
      sub_10001B880(j, a3 + 2, a2);
    }

    sub_100049ECC(a2, a3 + 1, "}", v187, v188, v189, v190, v191);
    sub_100049F4C(a2, v193, v194, v195, v196, v197, v198, v199, v669);
  }

  v200 = sub_10002C974(*(a1 + 248), 2);
  sub_100049ECC(a2, a3 + 1, "domain = %s", v201, v202, v203, v204, v205, v200);
  free(v200);
  if (*(a1 + 800))
  {
    v671 = *(a1 + 800);
    sub_100049ECC(a2, a3 + 1, "username = %s", v206, v207, v208, v209, v210);
    v213 = *(a1 + 808);
    if (!v213)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v213 = *(a1 + 808);
    if (!v213)
    {
      goto LABEL_86;
    }
  }

  sub_100049ECC(a2, a3 + 1, "group = %s", v206, v207, v208, v209, v210, v213);
LABEL_85:
  sub_100049F4C(a2, v211, v212, v206, v207, v208, v209, v210, v671);
LABEL_86:
  if ((*(a1 + 1412) & 2) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "umask = %o", v206, v207, v208, v209, v210, *(a1 + 816));
  }

  v214 = sub_100020674(a1);
  sub_100049ECC(a2, a3 + 1, "minimum runtime = %u", v215, v216, v217, v218, v219, v214);
  if ((*(a1 + 1414) & 0x10) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "base minimum runtime = %u", v220, v221, v222, v223, v224, *(a1 + 852));
  }

  sub_100049ECC(a2, a3 + 1, "exit timeout = %u", v220, v221, v222, v223, v224, *(a1 + 848));
  if ((*(a1 + 1412) & 8) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "voluntary exit timeout = %u", v225, v226, v227, v228, v229, *(a1 + 880));
    if (byte_10007F180 == 1)
    {
      sub_100049ECC(a2, a3 + 1, "launch watchdog timeout = %u", v230, v231, v232, v233, v234, *(a1 + 884));
    }

    else
    {
      sub_100049ECC(a2, a3 + 1, "launch watchdog timeout = (globally disabled)", v230, v231, v232, v233, v234, v672);
    }
  }

  if (*(a1 + 904))
  {
    sub_100049ECC(a2, a3 + 1, "exception handler endpoint = %s", v225, v226, v227, v228, v229, *(a1 + 904));
  }

  sub_100049ECC(a2, a3 + 1, "runs = %u", v225, v226, v227, v228, v229, *(a1 + 1040));
  v235 = sub_100026FE0(a1);
  if (v235)
  {
    v242 = v235;
  }

  else
  {
    v242 = a1 + 1056;
  }

  v243 = *(v242 + 4);
  if (v243)
  {
    v673 = v243;
    sub_100049ECC(a2, a3 + 1, "successive crashes = %u", v237, v238, v239, v240, v241);
  }

  if (*(a1 + 1168))
  {
    sub_100049ECC(a2, a3 + 1, "pid = %d", v237, v238, v239, v240, v241, *(a1 + 1168));
    v245 = sub_100026CB4(*(a1 + 1180), v244);
    sub_100049ECC(a2, a3 + 1, "immediate reason = %s", v246, v247, v248, v249, v250, v245);
    sub_100049ECC(a2, a3 + 1, "forks = %hu", v251, v252, v253, v254, v255, *(a1 + 1200));
    sub_100049ECC(a2, a3 + 1, "execs = %hu", v256, v257, v258, v259, v260, *(a1 + 1202));
    if (*(a1 + 1216))
    {
      v266 = "1";
    }

    else
    {
      v266 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "initialized = %s", v261, v262, v263, v264, v265, v266);
    if ((*(a1 + 1216) & 2) != 0)
    {
      v272 = "1";
    }

    else
    {
      v272 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "trampolined = %s", v267, v268, v269, v270, v271, v272);
    if ((*(a1 + 1216) & 4) != 0)
    {
      v278 = "1";
    }

    else
    {
      v278 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "started suspended = %s", v273, v274, v275, v276, v277, v278);
    if ((*(a1 + 1216) & 8) != 0)
    {
      v284 = "1";
    }

    else
    {
      v284 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "proxy started suspended = %s", v279, v280, v281, v282, v283, v284);
    if ((*(a1 + 1216) & 0x80) != 0)
    {
      v290 = "1";
    }

    else
    {
      v290 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "uses proxy = %s", v285, v286, v287, v288, v289, v290);
    if ((*(a1 + 1412) & 8) != 0)
    {
      if ((*(a1 + 1216) & 0x40) != 0)
      {
        v296 = "1";
      }

      else
      {
        v296 = "0";
      }

      sub_100049ECC(a2, a3 + 1, "extension alive = %s", v291, v292, v293, v294, v295, v296);
    }

    if (*(a1 + 1212) >= 1)
    {
      sub_100049ECC(a2, a3 + 1, "trial factors memory limit = %d MB", v291, v292, v293, v294, v295, *(a1 + 1212));
    }

    if ((*(a1 + 1216) & 0x400) != 0)
    {
      v297 = "1";
    }

    else
    {
      v297 = "0";
    }

    if ((*(a1 + 1216) & 0x800) != 0)
    {
      v298 = "1";
    }

    else
    {
      v298 = "0";
    }

    sub_100049ECC(a2, a3 + 1, "checked allocations = %s (queried = %s)", v291, v292, v293, v294, v295, v297, v298);
    v304 = *(a1 + 1208);
    if (v304 > 7)
    {
      v305 = "unknown";
    }

    else
    {
      v305 = off_1000790F0[v304];
    }

    sub_100049ECC(a2, a3 + 1, "checked allocations reason = %s", v299, v300, v301, v302, v303, v305);
    v673 = *(a1 + 1210);
    sub_100049ECC(a2, a3 + 1, "checked allocations flags = 0x%x", v306, v307, v308, v309, v310);
  }

  v311 = *(a1 + 288);
  if (v311)
  {
    v673 = sub_100026CB4(v311, v236);
    sub_100049ECC(a2, a3 + 1, "pended spawn = %s", v312, v313, v314, v315, v316);
  }

  v317 = *(a1 + 292);
  if (v317)
  {
    v673 = sub_100026CB4(v317, v236);
    sub_100049ECC(a2, a3 + 1, "pended nondemand spawn = %s", v318, v319, v320, v321, v322);
  }

  v323 = *(a1 + 1144);
  if (v323)
  {
    v673 = sub_100026CB4(v323, v236);
    sub_100049ECC(a2, a3 + 1, "spawn reason filter = %s", v324, v325, v326, v327, v328);
  }

  v329 = *(a1 + 1224);
  switch(v329)
  {
    case 2:
      v330 = "last exit code = (failed reap)";
      goto LABEL_148;
    case 1:
      v330 = "last exit code = (abandoned)";
      goto LABEL_148;
    case 0:
      v330 = "last exit code = (never exited)";
LABEL_148:
      sub_100049ECC(a2, a3 + 1, v330, v237, v238, v239, v240, v241, v673, v685);
      goto LABEL_149;
  }

  if (sub_10004A6A4((a1 + 1224)))
  {
    v332 = sub_10004A6EC((a1 + 1224), v331);
    v673 = strsignal(v332);
    v330 = "last terminating signal = %s";
    goto LABEL_148;
  }

  if (sub_10004A5D0(a1 + 1224))
  {
    v484 = sub_10004A5FC((a1 + 1224), v483);
    if ((v484 - 64) > 0xE)
    {
      sub_100049ECC(a2, a3 + 1, "last exit code = %d", v485, v486, v487, v488, v489, v484, v685);
    }

    else
    {
      sub_100049ECC(a2, a3 + 1, "last exit code = %d: %s", v485, v486, v487, v488, v489, v484, off_100078DB8[(v484 - 64)]);
    }
  }

  else
  {
    if (sub_10004A904(a1 + 1224))
    {
      v330 = "last exit code = (extension watchdogged)";
      goto LABEL_148;
    }

    v659 = sub_10004A4D0(a1 + 1224, v658);
    v665 = "(unknown)";
    if (v659)
    {
      v665 = v659;
    }

    sub_100049ECC(a2, a3 + 1, "last exit reason = %s", v660, v661, v662, v663, v664, v665, v685);
  }

LABEL_149:
  if (sub_10004A84C(a1 + 1224))
  {
    v340 = sub_10004A4D0(a1 + 1224, v333);
    v346 = "(unknown)";
    if (v340)
    {
      v346 = v340;
    }

    sub_100049ECC(a2, a3 + 1, "last jetsam exit details = %s", v341, v342, v343, v344, v345, v346);
  }

  if (*(a1 + 672))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "semaphores = {", v347, v348, v349, v350, v351);
    for (k = *(a1 + 672); k; k = *k)
    {
      v709 = 0u;
      v710 = 0u;
      v707 = 0u;
      v708 = 0u;
      v705 = 0u;
      v706 = 0u;
      v703 = 0u;
      v704 = 0u;
      v701 = 0u;
      v702 = 0u;
      v699 = 0u;
      v700 = 0u;
      v697 = 0u;
      v698 = 0u;
      *object_type = 0u;
      v696 = 0u;
      sub_100049ECC(a2, a3 + 2, "%s%s => %u", v352, v353, v354, v355, v356, k[3], object_type, *(k + 32));
    }

    sub_100049ECC(a2, a3 + 1, "}", v352, v353, v354, v355, v356);
  }

  if (*(a1 + 136))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "event triggers = {", v358, v359, v360, v361, v362);
    for (m = *(a1 + 136); m; m = *(m + 16))
    {
      sub_10003FD70(m, a2, a3 + 2, v363, v364, v365, v366, v367);
    }

    sub_100049ECC(a2, a3 + 1, "}", v363, v364, v365, v366, v367);
  }

  if (*(a1 + 152))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "endpoints = {", v369, v370, v371, v372, v373);
    for (n = *(a1 + 152); n; n = *(n + 16))
    {
      if ((*(n + 88) & 0x40) == 0)
      {
        sub_10004CCB4(n, a2, a3 + 2, v374, v375, v376, v377, v378);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v374, v375, v376, v377, v378);
  }

  if (*(a1 + 160))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "dynamic endpoints = {", v380, v381, v382, v383, v384);
    for (ii = *(a1 + 160); ii; ii = *(ii + 16))
    {
      if ((*(ii + 88) & 0x40) == 0)
      {
        sub_10004CCB4(ii, a2, a3 + 2, v385, v386, v387, v388, v389);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v385, v386, v387, v388, v389);
  }

  if (*(a1 + 168))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "pid-local endpoints = {", v391, v392, v393, v394, v395);
    for (jj = *(a1 + 168); jj; jj = *(jj + 16))
    {
      if ((*(jj + 88) & 0x40) == 0)
      {
        sub_10004CCB4(jj, a2, a3 + 2, v396, v397, v398, v399, v400);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v396, v397, v398, v399, v400);
  }

  if (*(a1 + 184))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "instance-specific endpoints = {", v402, v403, v404, v405, v406);
    for (kk = *(a1 + 184); kk; kk = *(kk + 16))
    {
      if ((*(kk + 88) & 0x40) == 0)
      {
        sub_10004CCB4(kk, a2, a3 + 2, v407, v408, v409, v410, v411);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v407, v408, v409, v410, v411);
  }

  if (*(a1 + 176))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "event channels = {", v413, v414, v415, v416, v417);
    for (mm = *(a1 + 176); mm; mm = *(mm + 16))
    {
      if ((*(mm + 88) & 0x40) == 0)
      {
        sub_10004CCB4(mm, a2, a3 + 2, v418, v419, v420, v421, v422);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v418, v419, v420, v421, v422);
  }

  if (*(a1 + 192))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "sockets = {", v424, v425, v426, v427, v428);
    for (nn = *(a1 + 192); nn; nn = *(nn + 16))
    {
      sub_10001EBE8(nn, a2, a3 + 2, v429, v430, v431, v432, v433);
    }

    sub_100049ECC(a2, a3 + 1, "}", v429, v430, v431, v432, v433);
  }

  if (*(a1 + 200))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "instances = {", v435, v436, v437, v438, v439);
    for (i1 = *(a1 + 200); i1; i1 = *(i1 + 40))
    {
      sub_100049ECC(a2, a3 + 2, "%s,", v440, v441, v442, v443, v444, i1 + 1424);
    }

    sub_100049ECC(a2, a3 + 1, "}", v440, v441, v442, v443, v444);
  }

  if (*(a1 + 648))
  {
    sub_100049F4C(a2, v333, v334, v335, v336, v337, v338, v339, v674);
    sub_100049ECC(a2, a3 + 1, "persist to boot modes = {", v446, v447, v448, v449, v450);
    v451 = *(a1 + 648);
    v690[0] = _NSConcreteStackBlock;
    v690[1] = 0x40000000;
    v690[2] = sub_10002B7C0;
    v690[3] = &unk_100078FE0;
    v690[4] = a2;
    v690[5] = a3;
    xpc_array_apply(v451, v690);
    sub_100049ECC(a2, a3 + 1, "}", v452, v453, v454, v455, v456);
  }

  if ((*(a1 + 1416) & 2) != 0)
  {
    v457 = "1";
  }

  else
  {
    v457 = "0";
  }

  sub_100049ECC(a2, a3 + 1, "retain only = %s", v335, v336, v337, v338, v339, v457);
  sub_100049F4C(a2, v458, v459, v460, v461, v462, v463, v464, v675);
  v470 = *(a1 + 1372);
  if (v470 + 1 >= 2)
  {
    object_type[0] = 0;
    object_addr[0] = 0;
    if (mach_port_kernel_object(mach_task_self_, v470, object_type, object_addr))
    {
      sub_100049ECC(a2, a3 + 1, "dext checkin port = %#x [unable to get port information]", v471, v472, v473, v474, v475, *(a1 + 1372), v686, v689);
    }

    else
    {
      sub_100049ECC(a2, a3 + 1, "dext checkin port = %#x [type %u, object %#x]", v471, v472, v473, v474, v475, *(a1 + 1372), object_type[0], object_addr[0]);
    }

    sub_100049F4C(a2, v476, v477, v478, v479, v480, v481, v482, v677);
  }

  if (*(a1 + 304))
  {
    v676 = *(a1 + 304);
    sub_100049ECC(a2, a3 + 1, "persistent resource coalition = %s", v465, v466, v467, v468, v469);
  }

  sub_10002B834("resource", *(a1 + 312), a2, a3 + 1, v466, v467, v468, v469, v676);
  sub_10002B834("jetsam", *(a1 + 320), a2, a3 + 1, v490, v491, v492, v493, v678);
  v499 = *(a1 + 912);
  if (v499 >= 0x100)
  {
    v500 = v499 >> 8;
    if (v499 > 0x6FF)
    {
      v501 = &unk_10005CEA2;
    }

    else
    {
      v501 = qword_100079000[v500];
    }

    sub_100049ECC(a2, a3 + 1, "spawn type = %s (%lu)", v494, v495, v496, v497, v498, v501, v500);
  }

  v502 = *(a1 + 916);
  if (v502)
  {
    if (v502 > 6)
    {
      v503 = &unk_10005CEA2;
    }

    else
    {
      v503 = qword_100079038[v502];
    }

    sub_100049ECC(a2, a3 + 1, "spawn role = %s (%lu)", v494, v495, v496, v497, v498, v503, v502);
  }

  if (*(a1 + 920) || *(a1 + 1312))
  {
    sub_100049ECC(a2, a3 + 1, "binary order preference = {", v494, v495, v496, v497, v498);
    v509 = *(a1 + 920);
    if (v509 && xpc_binprefs_count(*(a1 + 920)))
    {
      v510 = 0;
      do
      {
        v511 = xpc_binprefs_cpu_type(v509, v510);
        v517 = "(invalid)";
        if ((v511 & 0xFEFFFFFF) - 1 <= 0x11)
        {
          v518 = &off_100078E50[v511 & 0xFEFFFFFF];
          if ((v511 & 0x1000000) == 0)
          {
            v518 = &off_100078EE8[v511];
          }

          v517 = *v518;
        }

        sub_100049ECC(a2, a3 + 2, "%s", v512, v513, v514, v515, v516, v517);
        v510 = (v510 + 1);
      }

      while (v510 < xpc_binprefs_count(v509));
    }

    v519 = *(a1 + 1312);
    if (v519 && xpc_binprefs_count(*(a1 + 1312)))
    {
      v520 = 0;
      do
      {
        v521 = xpc_binprefs_cpu_type(v519, v520);
        v527 = "(invalid)";
        if ((v521 & 0xFEFFFFFF) - 1 <= 0x11)
        {
          v528 = &off_100078E50[v521 & 0xFEFFFFFF];
          if ((v521 & 0x1000000) == 0)
          {
            v528 = &off_100078EE8[v521];
          }

          v527 = *v528;
        }

        sub_100049ECC(a2, a3 + 2, "+ %s", v522, v523, v524, v525, v526, v527);
        v520 = (v520 + 1);
      }

      while (v520 < xpc_binprefs_count(v519));
    }

    sub_100049ECC(a2, a3 + 1, "}", v504, v505, v506, v507, v508);
    sub_100049F4C(a2, v529, v530, v531, v532, v533, v534, v535, v679);
  }

  sub_100049ECC(a2, a3 + 1, "jetsam priority = %d", v494, v495, v496, v497, v498, *(a1 + 936));
  if ((*(a1 + 1336) & 0x80000000) == 0)
  {
    sub_100049ECC(a2, a3 + 1, "+ %d", v536, v537, v538, v539, v540, *(a1 + 1336));
  }

  v541 = *(a1 + 940);
  if (v541 >= 1)
  {
    if ((*(a1 + 932) & 4) != 0)
    {
      v542 = "hard";
    }

    else
    {
      v542 = "soft";
    }

    v680 = v542;
    v686 = *(a1 + 940);
LABEL_250:
    v543 = "jetsam memory limit (active, %s) = %d MB";
    goto LABEL_253;
  }

  if (!v541)
  {
    if ((*(a1 + 932) & 4) != 0)
    {
      v656 = "hard";
    }

    else
    {
      v656 = "soft";
    }

    v680 = v656;
    v686 = 0xFFFFFFFFLL;
    goto LABEL_250;
  }

  v543 = "jetsam memory limit (active) = (unlimited)";
LABEL_253:
  sub_100049ECC(a2, a3 + 1, v543, v536, v537, v538, v539, v540, v680, v686);
  v549 = *(a1 + 1340);
  if (v549 >= 1)
  {
    v681 = *(a1 + 1340);
    v550 = "+ %d MB";
LABEL_255:
    sub_100049ECC(a2, a3 + 1, v550, v544, v545, v546, v547, v548, v681);
    goto LABEL_257;
  }

  if (v549 < 0)
  {
    v550 = "+ (unlimited)";
    goto LABEL_255;
  }

LABEL_257:
  v551 = *(a1 + 944);
  if (v551 >= 1)
  {
    if ((*(a1 + 932) & 8) != 0)
    {
      v552 = "hard";
    }

    else
    {
      v552 = "soft";
    }

    v681 = v552;
    v687 = *(a1 + 944);
LABEL_262:
    v553 = "jetsam memory limit (inactive, %s) = %d MB";
    goto LABEL_265;
  }

  if (!v551)
  {
    if ((*(a1 + 932) & 8) != 0)
    {
      v657 = "hard";
    }

    else
    {
      v657 = "soft";
    }

    v681 = v657;
    v687 = 0xFFFFFFFFLL;
    goto LABEL_262;
  }

  v553 = "jetsam memory limit (inactive) = (unlimited)";
LABEL_265:
  sub_100049ECC(a2, a3 + 1, v553, v544, v545, v546, v547, v548, v681, v687);
  v560 = *(a1 + 1340);
  if (v560 >= 1)
  {
    v682 = *(a1 + 1340);
    v561 = "+ %d MB";
LABEL_267:
    sub_100049ECC(a2, a3 + 1, v561, v555, v556, v557, v558, v559, v682);
    goto LABEL_269;
  }

  if (v560 < 0)
  {
    v561 = "+ (unlimited)";
    goto LABEL_267;
  }

LABEL_269:
  v683 = sub_100026994(a1, v554);
  sub_100049ECC(a2, a3 + 1, "jetsamproperties category = %s", v562, v563, v564, v565, v566);
  if ((*(a1 + 1413) & 8) != 0)
  {
    sub_100049ECC(a2, a3 + 1, "submitted job. ignore execute allowed", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 948))
  {
    v683 = *(a1 + 948);
    sub_100049ECC(a2, a3 + 1, "jetsam thread limit = %d", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 952))
  {
    v683 = *(a1 + 952);
    sub_100049ECC(a2, a3 + 1, "jetsam address limit = %llu", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 960))
  {
    v683 = *(a1 + 960);
    sub_100049ECC(a2, a3 + 1, "jetsam soft port limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 964))
  {
    v683 = *(a1 + 964);
    sub_100049ECC(a2, a3 + 1, "jetsam hard port limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 968))
  {
    v683 = *(a1 + 968);
    sub_100049ECC(a2, a3 + 1, "jetsam soft file descriptor limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 972))
  {
    v683 = *(a1 + 972);
    sub_100049ECC(a2, a3 + 1, "jetsam hard file descriptor limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 976))
  {
    v683 = *(a1 + 976);
    sub_100049ECC(a2, a3 + 1, "jetsam soft kqworkloop limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 980))
  {
    v683 = *(a1 + 980);
    sub_100049ECC(a2, a3 + 1, "jetsam hard kqworkloop limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 984))
  {
    v683 = *(a1 + 984);
    sub_100049ECC(a2, a3 + 1, "jetsam wired memory limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 988))
  {
    v683 = *(a1 + 988);
    sub_100049ECC(a2, a3 + 1, "jetsam conclave memory limit = %u", v567, v568, v569, v570, v571);
  }

  if (*(a1 + 1034) || *(a1 + 1036))
  {
    v683 = *(a1 + 1034);
    v688 = *(a1 + 1036);
    v572 = "cpumon = %d%% over %u seconds";
  }

  else
  {
    v572 = "cpumon = default";
  }

  sub_100049ECC(a2, a3 + 1, v572, v567, v568, v569, v570, v571, v683, v688);
  if (*(a1 + 680))
  {
    sub_100049ECC(a2, a3 + 1, "resource limits = {", v573, v574, v575, v576, v577);
    for (i2 = *(a1 + 680); i2; i2 = *i2)
    {
      if (*(i2 + 35) == 1)
      {
        v697 = 0u;
        v698 = 0u;
        *object_type = 0u;
        v696 = 0u;
        if (i2[2] == 0x7FFFFFFFFFFFFFFFLL)
        {
          strcpy(object_type, "(infinity)");
        }

        else
        {
          snprintf(object_type, 0x40uLL, "%llu", i2[2]);
        }

        LOBYTE(v684) = sub_100046468(*(i2 + 16));
        sub_100049ECC(a2, a3 + 2, "%s (soft) => %s", v584, v585, v586, v587, v588);
      }

      if (*(i2 + 34) == 1)
      {
        v697 = 0u;
        v698 = 0u;
        *object_type = 0u;
        v696 = 0u;
        if (i2[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          strcpy(object_type, "(infinity)");
        }

        else
        {
          snprintf(object_type, 0x40uLL, "%llu", i2[3]);
        }

        LOBYTE(v684) = sub_100046468(*(i2 + 16));
        sub_100049ECC(a2, a3 + 2, "%s (hard) => %s", v589, v590, v591, v592, v593);
      }
    }

    sub_100049ECC(a2, a3 + 1, "}", v578, v579, v580, v581, v582);
    sub_100049F4C(a2, v594, v595, v596, v597, v598, v599, v600, v684);
  }

  if (*(a1 + 896))
  {
    LODWORD(v684) = *(a1 + 896);
    sub_100049ECC(a2, a3 + 1, "run interval = %u seconds", v573, v574, v575, v576, v577);
  }

  if ((*(a1 + 1414) & 0x10) != 0)
  {
    LOWORD(v684) = *(a1 + 1044);
    sub_100049ECC(a2, a3 + 1, "exponential throttling grace limit = %u", v573, v574, v575, v576, v577);
  }

  v601 = sub_100043510(a1);
  if (v601)
  {
    LOBYTE(v684) = v601;
    sub_100049ECC(a2, a3 + 1, "job state = %s", v603, v604, v605, v606, v607);
  }

  v608 = *(a1 + 1408);
  if ((v608 & 0x800000000000) != 0)
  {
    LODWORD(v684) = *(a1 + 1360);
    sub_100049ECC(a2, a3 + 1, "persona set at = %u", v603, v604, v605, v606, v607);
    v608 = *(a1 + 1408);
  }

  if ((v608 & 0x4000000000000) == 0)
  {
    if (*(a1 + 720) != -101)
    {
      LODWORD(v684) = *(a1 + 720);
      sub_100049ECC(a2, a3 + 1, "resolved uid = %d", v603, v604, v605, v606, v607);
    }

    if (*(a1 + 724) != -101)
    {
      LODWORD(v684) = *(a1 + 724);
      sub_100049ECC(a2, a3 + 1, "resolved gid = %d", v603, v604, v605, v606, v607);
      if (*(a1 + 792))
      {
        sub_100049ECC(a2, a3 + 1, "resolved groups = {", v603, v604, v605, v606, v607);
        if (*(a1 + 792) >= 1)
        {
          v614 = 0;
          do
          {
            sub_100049ECC(a2, a3 + 2, "%d", v609, v610, v611, v612, v613, *(a1 + 728 + 4 * v614++));
          }

          while (v614 < *(a1 + 792));
        }

        sub_100049ECC(a2, a3 + 1, "}", v609, v610, v611, v612, v613);
      }
    }
  }

  if (*(a1 + 1046))
  {
    LOBYTE(v684) = *(a1 + 1046);
    sub_100049ECC(a2, a3 + 1, "crash behavior = %x", v603, v604, v605, v606, v607);
  }

  v615 = *(a1 + 1408);
  if ((v615 & 0x800000000000000) != 0)
  {
    v616 = sub_100026FE0(a1);
    if (v616)
    {
      v622 = v616;
    }

    else
    {
      v622 = a1 + 1056;
    }

    count = *(v622 + 24);
    if (count)
    {
      count = xpc_array_get_count(count);
    }

    sub_100049ECC(a2, a3 + 1, "panic on consecutive crashes (%zd)", v617, v618, v619, v620, v621, count);
    v615 = *(a1 + 1408);
  }

  if ((v615 & 0x1000000000000000) != 0)
  {
    v624 = sub_100026FE0(a1);
    if (v624)
    {
      v630 = v624;
    }

    else
    {
      v630 = a1 + 1056;
    }

    v631 = *(v630 + 24);
    if (v631)
    {
      v631 = xpc_array_get_count(v631);
    }

    sub_100049ECC(a2, a3 + 1, "device recovery on crashes (%zd)", v625, v626, v627, v628, v629, v631);
  }

  v632 = *(a1 + 1376);
  if (*(a1 + 1376))
  {
    if (v632 == 1)
    {
      v633 = "1";
    }

    else
    {
      v633 = "0";
    }

    if (v632 == 2)
    {
      v634 = "managed";
    }

    else
    {
      v634 = v633;
    }

    sub_100049ECC(a2, a3 + 1, "multiple instances = %s", v603, v604, v605, v606, v607, v634);
  }

  if (*(a1 + 1384))
  {
    v684 = *(a1 + 1384);
    sub_100049ECC(a2, a3 + 1, "cryptex = %s", v603, v604, v605, v606, v607);
  }

  if (*(a1 + 1392))
  {
    v684 = *(a1 + 1392);
    sub_100049ECC(a2, a3 + 1, "conclave = %s", v603, v604, v605, v606, v607);
  }

  v61 = *(a1 + 296);
  if (v61)
  {
    goto LABEL_379;
  }

  if ((*(a1 + 1413) & 4) == 0)
  {
    sub_10000ED50(a1, a2, a3 + 1);
  }

  v635 = sub_10000FC98(0x80uLL, v602);
  sub_10002B8DC(v635, "partial import", *(a1 + 1408) & 1);
  sub_10002B8DC(v635, "xpc bundle", (*(a1 + 1408) >> 1) & 1);
  sub_10002B8DC(v635, "keepalive", (*(a1 + 1408) >> 2) & 1);
  sub_10002B8DC(v635, "runatload", (*(a1 + 1408) >> 4) & 1);
  sub_10002B8DC(v635, "low priority i/o", (*(a1 + 1408) >> 5) & 1);
  sub_10002B8DC(v635, "low priority background i/o", (*(a1 + 1408) >> 6) & 1);
  sub_10002B8DC(v635, "dataless file mode", *(a1 + 1364) != 0);
  sub_10002B8DC(v635, "exception handler", (*(a1 + 1408) >> 7) & 1);
  sub_10002B8DC(v635, "supports transactions", (*(a1 + 1408) >> 8) & 1);
  sub_10002B8DC(v635, "supports pressured exit", (*(a1 + 1408) >> 9) & 1);
  sub_10002B8DC(v635, "supports idle hysteresis", HIWORD(*(a1 + 1408)) & 1);
  sub_10002B8DC(v635, "enter kdp before kill", (*(a1 + 1408) >> 10) & 1);
  sub_10002B8DC(v635, "wait for debugger", (*(a1 + 1408) >> 11) & 1);
  sub_10002B8DC(v635, "app", (*(a1 + 1408) >> 12) & 1);
  sub_10002B8DC(v635, "system app", (*(a1 + 1408) >> 13) & 1);
  sub_10002B8DC(v635, "inetd-compatible", (*(a1 + 1408) >> 14) & 1);
  sub_10002B8DC(v635, "inetd listener", (*(a1 + 1408) >> 15) & 1);
  sub_10002B8DC(v635, "abandon process group", (*(a1 + 1408) >> 16) & 1);
  sub_10002B8DC(v635, "event monitor", (*(a1 + 1408) >> 17) & 1);
  sub_10002B8DC(v635, "penalty box", (*(a1 + 1408) >> 18) & 1);
  sub_10002B8DC(v635, "role account", (*(a1 + 1408) >> 19) & 1);
  sub_10002B8DC(v635, "launch only once", (*(a1 + 1408) >> 20) & 1);
  sub_10002B8DC(v635, "system support", (*(a1 + 1408) >> 21) & 1);
  sub_10002B8DC(v635, "initial system support", (*(a1 + 1408) >> 22) & 1);
  sub_10002B8DC(v635, "inferred program", (*(a1 + 1408) >> 24) & 1);
  sub_10002B8DC(v635, "ios home screen app", (*(a1 + 1408) >> 30) & 1);
  sub_10002B8DC(v635, "abandon coalition", *(a1 + 1408) >> 31);
  sub_10002B8DC(v635, "disable pointer auth", HIBYTE(*(a1 + 1408)) & 1);
  sub_10002B8DC(v635, "high bits aslr", (*(a1 + 1408) >> 34) & 1);
  v636 = sub_100026FE0(a1);
  if (v636)
  {
    v637 = v636;
  }

  else
  {
    v637 = (a1 + 1056);
  }

  sub_10002B8DC(v635, "reslide shared cache", *v637);
  sub_10002B8DC(v635, "disable resliding", (*(a1 + 1408) >> 54) & 1);
  sub_10002B8DC(v635, "extension", (*(a1 + 1408) >> 35) & 1);
  sub_10002B8DC(v635, "nano allocator", (*(a1 + 1408) >> 25) & 1);
  sub_10002B8DC(v635, "enable checked allocations", (*(a1 + 1408) >> 26) & 1);
  sub_10002B8DC(v635, "no initgroups", HIDWORD(*(a1 + 1408)) & 1);
  sub_10002B8DC(v635, "needs implicit endpoint", (*(a1 + 1408) >> 39) & 1);
  sub_10002B8DC(v635, "platform binary", (*(a1 + 1408) >> 41) & 1);
  sub_10002B8DC(v635, "is copy", (*(a1 + 1408) >> 42) & 1);
  sub_10002B8DC(v635, "disallow all lookups", (*(a1 + 1408) >> 44) & 1);
  sub_10002B8DC(v635, "always sigterm on shutdown", (*(a1 + 1408) >> 46) & 1);
  sub_10002B8DC(v635, "one-shot", (*(a1 + 368) >> 5) & 1);
  sub_10002B8DC(v635, "use maximum address space limit (for sanitizers)", (*(a1 + 1408) >> 49) & 1);
  sub_10002B8DC(v635, "null bootstrap port", (*(a1 + 1408) >> 51) & 1);
  sub_10002B8DC(v635, "exponential throttling", (*(a1 + 1408) >> 52) & 1);
  sub_10002B8DC(v635, "abandon during shutdown", (*(a1 + 1408) & 0x200000000000000) != 0);
  sub_10002B8DC(v635, "needs proxy", (*(a1 + 1408) >> 50) & 1);
  sub_10002B8DC(v635, "has spawn constraint", *(a1 + 624) != 0);
  sub_10002B8DC(v635, "tle system", *(a1 + 1000) == 1);
  sub_10002B8DC(v635, "has provenance", *(a1 + 608) != 0);
  if ((*(a1 + 932) & 0x10) != 0)
  {
    sub_10002B8DC(v635, "no EXC_RESOURCE during audio", 1);
  }

  sub_10002B8DC(v635, "checked allocations crashed", (*(a1 + 1416) >> 2) & 1);
  sub_100049F4C(a2, v638, v639, v640, v641, v642, v643, v644, v684);
  sub_100049ECC(a2, a3 + 1, "properties = %s", v645, v646, v647, v648, v649, *v635);
  sub_10000FD04(v635);
  return sub_100049ECC(a2, a3, "}", v650, v651, v652, v653, v654);
}

const char *sub_100026994(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1408);
  if ((v2 & 0x800000000) != 0)
  {
    return "extension";
  }

  if ((v2 & 2) != 0)
  {
    if (sub_10002CA94(*(a1 + 248)))
    {
      return "system xpcservice";
    }

    else
    {
      return "xpcservice";
    }
  }

  else if ((v2 & 0x2000) != 0)
  {
    return "system app";
  }

  else if ((v2 & 0x1000) != 0)
  {
    return "app";
  }

  else if (*(a1 + 912) == 1792)
  {
    return "DriverKit";
  }

  else
  {
    return "daemon";
  }
}

uint64_t sub_100026A24(uint64_t a1, FILE *a2, uint64_t a3)
{
  v5 = a1 + 1424;
  v6 = sub_100026994(a1, a2);
  return sub_100049ECC(a2, a3 + 1, "%s : %s", v7, v8, v9, v10, v11, v5, v6);
}

uint64_t sub_100026A78(const char *a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 74))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 74), a1 + 1424);
  }

  *__str = 0;
  v21 = 0;
  v22 = 0;
  if (*(a1 + 292))
  {
    snprintf(__str, 0x18uLL, "%d", *(a1 + 292));
  }

  else
  {
    strcpy(__str, "0");
  }

  *v17 = 0;
  v18 = 0;
  v19 = 0;
  v11 = *(a1 + 306);
  if (v11 == 2)
  {
    v17[4] = 0;
    v13 = 695363112;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v17[4] = 0;
    v13 = 694313256;
    goto LABEL_12;
  }

  if (v11)
  {
    if (sub_10004A5D0((a1 + 1224)))
    {
      sub_10004A5FC(a1 + 306, v14);
      snprintf(v17, 0x18uLL, "%d");
      return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v17, a1 + 1424);
    }

    if (sub_10004A6A4(a1 + 306))
    {
      sub_10004A6EC(a1 + 306, v15);
      snprintf(v17, 0x18uLL, "-%d");
      return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v17, a1 + 1424);
    }

    if (sub_10004A84C((a1 + 1224)))
    {
      v17[4] = 0;
      if (sub_10004A884((a1 + 1224)))
      {
        v13 = 694513704;
      }

      else
      {
        v13 = 695495208;
      }
    }

    else if (sub_10004A8F4((a1 + 1224)))
    {
      v17[4] = 0;
      v13 = 695427880;
    }

    else
    {
      if (!sub_10004A8AC((a1 + 1224)))
      {
        v12 = 63;
        goto LABEL_9;
      }

      v17[4] = 0;
      v13 = 695232040;
    }

LABEL_12:
    *v17 = v13;
    return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v17, a1 + 1424);
  }

  v12 = 45;
LABEL_9:
  *v17 = v12;
  return sub_100049ECC(a2, a3, "%8s %6s \t%s", a4, a5, a6, a7, a8, __str, v17, a1 + 1424);
}

uint64_t sub_100026C6C(uint64_t a1, const char *a2)
{
  for (i = *(a1 + 144); i; i = *(i + 16))
  {
    v4 = sub_10003FB10(i);
    if (!strcmp(v4, a2))
    {
      break;
    }
  }

  return i;
}

char *sub_100026CB4(uint64_t a1, uint64_t a2)
{
  if (a1 >= 0x11)
  {
    sub_100054404();
  }

  return off_100078CB0[a1];
}

BOOL sub_100026CE4(uint64_t a1, int a2)
{
  v2 = *(a1 + 1144);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_100026D08(uint64_t a1, unsigned __int8 *uu1)
{
  for (i = *(a1 + 200); i; i = *(i + 40))
  {
    if (!uuid_compare(uu1, (i + 408)))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100026D4C(mach_port_context_t a1, uint64_t a2)
{
  if ((*(a1 + 1411) & 0x20) != 0)
  {
    sub_100054404();
  }

  result = *(a1 + 1368);
  if (!result)
  {
    result = sub_10000B654(1u, 0, a1);
    *(a1 + 1368) = result;
  }

  return result;
}

uint64_t sub_100026D94(mach_port_context_t guard, uint64_t a2)
{
  if ((*(guard + 1411) & 0x20) == 0)
  {
    sub_100054404();
  }

  result = *(guard + 1368);
  if (result)
  {
    result = sub_10000B774(result, 0, guard);
    if (result)
    {
      sub_100054420(result);
    }

    *(guard + 1368) = 0;
  }

  return result;
}

uint64_t sub_100026DEC(uint64_t a1, uint64_t a2)
{
  if (byte_10007DC7C == 1)
  {
    return sub_100026E28(a1) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026E28(uint64_t a1)
{
  if ((*(a1 + 1414) & 4) != 0)
  {
    return 1;
  }

  if (sub_10003DF3C())
  {
    sub_100054404();
  }

  v2 = *(a1 + 700);
  if ((v2 || (v4 = *(a1 + 256)) != 0 && (v2 = *(v4 + 700)) != 0) && v2 != -1)
  {
    v3 = "it has a control port set";
LABEL_11:
    sub_100020018(a1, 5, "service will use proxy because %s", v3);
    return 1;
  }

  if ((*(a1 + 1346) & 0xA) != 0 || *(a1 + 1280))
  {
    v3 = "it is being debugged";
    goto LABEL_11;
  }

  if (*(a1 + 1296))
  {
    v3 = "its working directory has been overridden";
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_100026EE8(uint64_t a1)
{
  if ((*(a1 + 1413) & 0x80) != 0)
  {
    return *(a1 + 1360);
  }

  else
  {
    return sub_100033484(*(a1 + 248), (a1 + 1424));
  }
}

uint64_t sub_100026F28(uint64_t a1)
{
  result = *(a1 + 1400);
  if (!result)
  {
    *(a1 + 1400) = sub_100014514(0x18uLL, 0x80040D6874129uLL);
    os_map_64_init();
    return *(a1 + 1400);
  }

  return result;
}

uint64_t sub_100026F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100026F28(a1);
  v3 = os_map_64_delete();
  free(v3);

  return os_map_64_insert();
}

uint64_t sub_100026FE0(uint64_t a1)
{
  result = sub_10001FCC0(a1);
  if (result)
  {

    return os_map_str_find();
  }

  return result;
}

void sub_100027028(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  sub_10004B52C(*(a1 + 16), v3);
  xpc_release(v3);
  sub_10001B690(v2, 24);

  free(a1);
}

xpc_object_t sub_100027094(void *a1, __uint64_t a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v5 = 0;
  if (xpc_array_get_count(a1))
  {
    v6 = 0;
    do
    {
      uint64 = xpc_array_get_uint64(a1, v6);
      if (v4 < uint64)
      {
        _os_assumes_log();
      }

      else if (v4 - uint64 < a2)
      {
        if (!v5)
        {
          v5 = xpc_array_create(0, 0);
        }

        xpc_array_set_uint64(v5, 0xFFFFFFFFFFFFFFFFLL, uint64);
      }

      ++v6;
    }

    while (v6 < xpc_array_get_count(a1));
  }

  return v5;
}

void sub_100027154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 424);
  if (v2 != a2)
  {
    if (v2 == 2 && a2 != 0 && a2 != 3)
    {
      sub_100054E38(a2);
    }

    *(a1 + 424) = a2;
    if (a2 == 1)
    {
      sub_10001FECC(a1, 0, 0);
    }

    v6 = sub_1000271DC(a1);
    sub_100020018(a1, 5, "service state: %s", v6);
  }
}

const char *sub_1000271DC(uint64_t a1)
{
  v1 = *(a1 + 424);
  v2 = "not running";
  if (v1 > 4)
  {
    v5 = "languishing";
    v6 = "exited";
    if (v1 != 8)
    {
      v6 = "not running";
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    if (v1 == 6)
    {
      v2 = "SIGKILLed";
    }

    if (v1 == 5)
    {
      v2 = "SIGTERMed";
    }

    if (*(a1 + 424) <= 6u)
    {
      return v2;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (*(a1 + 424) <= 2u)
    {
      v3 = "spawn scheduled";
      if (v1 == 2)
      {
        v2 = "spawning";
      }

      v4 = v1 == 1;
      goto LABEL_22;
    }

    if (v1 == 3)
    {
      v2 = "xpcproxy";
      v3 = "spawned";
      v4 = (*(a1 + 1216) & 0x80) == 0;
LABEL_22:
      if (v4)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }

    if (v1 == 4)
    {
      return "running";
    }

    else
    {
      return "not running";
    }
  }
}

void sub_10002729C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 424) != 1)
  {
    sub_100054404();
  }

  v2 = a2;
  sub_100027154(a1, 2);
  if (*(a1 + 424) != 2)
  {
    sub_100054404();
  }

  if (*(a1 + 992))
  {
    v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    sub_10001FBAC(*(a1 + 992), v4 / 0xF4240);
  }

  v5 = sub_100026FE0(a1);
  v6 = a1 + 1056;
  if (v5)
  {
    v6 = v5;
  }

  *(v6 + 1) = 0;
  *(a1 + 1408) &= ~0x800000uLL;
  *(a1 + 1180) = v2;
  *(a1 + 1216) = *(a1 + 1216) & 0xFFF7 | (4 * *(a1 + 1346)) & 8;
  if (sub_100026E28(a1))
  {
    v7 = 128;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 1216) = *(a1 + 1216) & 0xFD7F | v7;
  v12 = 0;
  LOWORD(v8) = word_10007F132;
  if (word_10007F132)
  {
    LOBYTE(v9) = 7;
    goto LABEL_23;
  }

  if ((~*(a1 + 1346) & 0x24) == 0)
  {
    LOBYTE(v9) = 1;
LABEL_14:
    LOWORD(v8) = 1;
    goto LABEL_23;
  }

  if (!*(a1 + 1040) || (v9 = *(a1 + 1208), v9 == 1))
  {
    v10 = *(a1 + 1408);
    if ((v10 & 0x8000000) == 0 || (LOBYTE(v9) = 2, v12 = 2, (v10 & 0x4000000) == 0))
    {
      v11 = *(a1 + 248);
      if (v11 && *(v11 + 112) == qword_10007D8B8)
      {
        if (*(a1 + 356) == 5)
        {
          v8 = sub_100022BD8(*(v11 + 120));
          if (v8)
          {
            LOWORD(v8) = sub_100028224(v8, &v12);
            LOBYTE(v9) = v12;
          }

          else
          {
            LOBYTE(v9) = 4;
          }
        }

        else
        {
          LOWORD(v8) = 0;
          LOBYTE(v9) = 6;
        }
      }

      else
      {
        LOWORD(v8) = 0;
        LOBYTE(v9) = 3;
      }

      goto LABEL_23;
    }

    goto LABEL_14;
  }

  LOWORD(v8) = *(a1 + 1210);
LABEL_23:
  *(a1 + 1208) = v9;
  *(a1 + 1210) = v8;

  sub_10001224C(a1);
}

uint64_t sub_100027470(uint64_t a1)
{
  bzero(&v62, 0x728uLL);
  sub_100013350(&v62, 0);
  v65 = a1;
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = 0;
    do
    {
      if ((*(v2 + 88) & 0x40) == 0)
      {
        *(&v67[2] + v3++) = sub_10004BFA4(v2, 1);
        if (v3 == 128)
        {
          sub_100020018(a1, 4, "Skipping remaining service endpoints for importance boosting.");
          goto LABEL_20;
        }
      }

      v2 = *(v2 + 16);
    }

    while (v2);
    if (v3 <= 0x7F)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v3 = 0;
LABEL_9:
  v4 = *(a1 + 176);
  if (v4)
  {
    while (1)
    {
      if ((*(v4 + 88) & 0x40) == 0)
      {
        *(&v67[2] + v3++) = sub_10004BFA4(v4, 1);
        if (v3 == 128)
        {
          break;
        }
      }

      v4 = *(v4 + 16);
      if (!v4)
      {
        if (v3 > 0x7F)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

LABEL_20:
    sub_100020018(a1, 4, "Skipping remaining event endpoints for importance boosting.");
    goto LABEL_21;
  }

LABEL_14:
  v5 = *(a1 + 184);
  if (!v5)
  {
    goto LABEL_22;
  }

  while (1)
  {
    if ((*(v5 + 88) & 0x40) == 0)
    {
      *(&v67[2] + v3++) = sub_10004BFA4(v5, 1);
      if (v3 == 128)
      {
        break;
      }
    }

    v5 = *(v5 + 16);
    if (!v5)
    {
      goto LABEL_22;
    }
  }

LABEL_21:
  sub_100020018(a1, 4, "Skipping remaining instance endpoints for importance boosting.");
LABEL_22:
  v67[66] = v3;
  v6 = *(a1 + 904);
  if (v6)
  {
    v7 = sub_1000310B4(*(a1 + 248), v6);
    if (v7)
    {
      v68 = sub_10004BFA4(v7, 1);
      v8 = sub_10000B744(v68);
      if (v8)
      {
        sub_100054420(v8);
      }
    }

    else
    {
      sub_100020018(a1, 3, "Could not find exception endpoint for service: %s", *(a1 + 904));
    }
  }

  v9 = v68;
  if ((*(a1 + 1216) & 8) != 0)
  {
    v10 = 16524;
  }

  else
  {
    v10 = 16396;
  }

  if (posix_spawnattr_setflags(&v62, v10))
  {
    _os_assumes_log_ctx();
  }

  v77[0] = 0;
  if (posix_spawnattr_setsigmask(&v62, v77))
  {
    _os_assumes_log_ctx();
  }

  v74[0] = -1;
  if (posix_spawnattr_setsigdefault(&v62, v74))
  {
    _os_assumes_log_ctx();
  }

  if (posix_spawnattr_setprocesstype_np())
  {
    _os_assumes_log_ctx();
  }

  if (*(a1 + 916))
  {
    v11 = posix_spawnattr_set_darwin_role_np();
    if (v11)
    {
      sub_100054420(v11);
    }
  }

  if (*(a1 + 1392))
  {
    v12 = posix_spawnattr_set_conclave_id_np();
    if (v12)
    {
      sub_100054420(v12);
    }
  }

  if (posix_spawnattr_set_importancewatch_port_np())
  {
    _os_assumes_log_ctx();
  }

  if (posix_spawnattr_setjetsam_ext())
  {
    _os_assumes_log_ctx();
  }

  v13 = *(a1 + 992);
  if (v13)
  {
    v14 = sub_10001FBFC(v13);
    if (v14)
    {
      v15 = 0;
      v71 = 0u;
      v72 = 0u;
      v16 = v14;
      *__str = 0u;
      v70 = 0u;
      do
      {
        __str[v15] = sub_10001FC04(*(a1 + 992), v15);
        ++v15;
      }

      while (v16 != v15);
      if (posix_spawnattr_set_jetsam_ttr_np())
      {
        _os_assumes_log_ctx();
      }
    }
  }

  *__str = sub_100032D40(*(a1 + 248), a1, *(a1 + 1408) >> 31);
  *&__str[2] = v17;
  sub_10000E8A4(a1, &v62, 0, __str);
  *__str = sub_100032EA0(*(a1 + 248), a1);
  *&__str[2] = v18;
  sub_10000E8A4(a1, &v62, 1, __str);
  if ((*(a1 + 1413) & 0x80) != 0)
  {
    v19 = *(a1 + 1360);
  }

  else
  {
    v19 = sub_100033484(*(a1 + 248), (a1 + 1424));
  }

  if (v19 != -1)
  {
    if (posix_spawnattr_set_persona_np())
    {
      _os_assumes_log_ctx();
    }

    if (posix_spawnattr_set_persona_uid_np())
    {
      _os_assumes_log_ctx();
    }

    if (posix_spawnattr_set_persona_gid_np())
    {
      _os_assumes_log_ctx();
    }
  }

  if (v9 - 1 <= 0xFFFFFFFD)
  {
    v20 = sub_10000B900(&v62, v9);
    if (v20)
    {
      sub_100054420(v20);
    }
  }

  ++*(a1 + 1040);
  sub_10001A45C();
  v21 = mach_absolute_time();
  v22 = sub_100026FE0(a1);
  v23 = a1 + 1056;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = a1 + 1056;
  }

  *(v24 + 8) = v21;
  v25 = sub_100026FE0(a1);
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = a1 + 1056;
  }

  if (v27 == v23)
  {
    v28 = a1 + 1224;
  }

  else
  {
    v28 = v27 + 32;
  }

  if (sub_10004A738(v28, v26))
  {
    v30 = sub_100026FE0(a1);
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = a1 + 1056;
    }

    if (v31 == v23)
    {
      v32 = a1 + 1224;
    }

    else
    {
      v32 = v31 + 32;
    }

    if (!sub_10004A84C(v32) && (*(a1 + 1414) & 0x10) != 0)
    {
      v33 = sub_100026FE0(a1);
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = a1 + 1056;
      }

      sub_1000286E0((v34 + 16));
    }

    v35 = sub_100026FE0(a1);
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = a1 + 1056;
    }

    if (v36 == v23)
    {
      v37 = a1 + 1224;
    }

    else
    {
      v37 = v36 + 32;
    }

    if (!sub_10004A84C(v37) || ((v38 = sub_100026FE0(a1)) != 0 ? (v39 = v38) : (v39 = a1 + 1056), v39 != v23 ? (v40 = v39 + 32) : (v40 = a1 + 1224), sub_10004A85C(v40)))
    {
      if ((*(a1 + 1415) & 0x10) == 0)
      {
        sub_10002868C(a1);
      }
    }
  }

  else if ((*(a1 + 1415) & 0x10) == 0)
  {
    v41 = sub_100026FE0(a1);
    if ((*(a1 + 1415) & 0x18) != 0)
    {
      v42 = v41 ? v41 : a1 + 1056;
      if (*(v42 + 24))
      {
        sub_100020018(a1, 5, "Reseting consecutive crash history");
        xpc_release(*(v42 + 24));
        *(v42 + 24) = 0;
      }
    }
  }

  v43 = sub_100026CB4(*(a1 + 1180), v29);
  sub_100020018(a1, 5, "launching: %s", v43);
  sub_100015808();
  v44 = qword_10007E218;
  *(a1 + 24) = qword_10007E218;
  if (v44)
  {
    *(v44 + 32) = a1 + 24;
  }

  qword_10007E218 = a1;
  *(a1 + 32) = &qword_10007E218;
  if ((*(a1 + 1216) & 0x80) == 0)
  {
    v67[1] = sub_100001BE8(a1, v66, v67) - 244;
    v66[1] = *(a1 + 1328);
    *(a1 + 1328) = 0;
    v63[140] = *(a1 + 720);
    v64 = *(a1 + 792);
    __memcpy_chk();
    for (i = 0; i != 3; ++i)
    {
      v46 = *(a1 + 4 * i + 688);
      if (v46 != -1)
      {
        if (i == v46)
        {
          v47 = posix_spawn_file_actions_addinherit_np(v63, v46);
          if (v47)
          {
            sub_100054420(v47);
          }
        }

        else
        {
          v48 = posix_spawn_file_actions_adddup2(v63, v46, i);
          if (v48)
          {
            sub_100054420(v48);
          }
        }
      }
    }

    *(a1 + 1216) = *(a1 + 1216) & 0xFFFB | (4 * (*(v67[0] + 108) & 1));
    sub_100028378(a1);
    *(a1 + 1216) |= 1u;
    *(a1 + 1176) = 0;
    v49 = sub_1000166A0(&v62, 0x728uLL);
    v50 = sub_1000432D0(a1);
    v51 = sub_100015814();
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 0x40000000;
    v60[2] = sub_10002843C;
    v60[3] = &unk_100078D78;
    v60[4] = v49;
    v52 = sub_10003DE30(v50, v51, v60);
    v53 = 0;
    if (v50 && (v52 & 1) == 0)
    {
      sub_100020018(a1, 5, "couldn't handoff a spawn, asynced away");
      return 0;
    }

    return v53;
  }

  v61 = 0;
  v54 = off_10007DC28[0];
  *v77 = "xpcproxy";
  v78 = a1 + 1424;
  v79 = 0;
  v80 = 0;
  *v74 = 0;
  v75 = 0;
  v76 = 0;
  if (sub_100032A18(*(a1 + 248)) == qword_10007D8B8)
  {
    v55 = sub_100032A20(*(a1 + 248));
    snprintf(v74, 0x18uLL, "%lu", v55);
    v79 = v74;
  }

  if (posix_spawn_file_actions_addopen(v63, 0, "/dev/console", 0, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(v63, 1, "/dev/console", 1, 0) == -1)
  {
    sub_10005453C();
  }

  if (posix_spawn_file_actions_addopen(v63, 2, "/dev/console", 2, 0) == -1)
  {
    sub_10005453C();
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  *__str = 0u;
  v70 = 0u;
  sub_10004EABC((*(a1 + 1408) >> 25) & 0x400, __str);
  v56 = *(a1 + 700);
  if (!v56)
  {
    v57 = *(a1 + 256);
    if (!v57)
    {
      goto LABEL_133;
    }

    v56 = *(v57 + 700);
  }

  if (v56 - 1 < 0xFFFFFFFE)
  {
    v73 = __PAIR64__(v56, dword_10007F068);
    v58 = posix_spawnattr_set_registered_ports_np();
    if (v58)
    {
      sub_100054420(v58);
    }

    goto LABEL_134;
  }

LABEL_133:
  v73 = 0;
LABEL_134:
  if (posix_spawnattr_set_launch_type_np() == -1)
  {
    sub_10005453C();
  }

  v53 = posix_spawnp(&v61, v54, v63, &v62, v77, qword_10007F090);
  if (!v53 && v61 <= 0)
  {
    sub_100020018(a1, 3, "posix_spawnp() returned 0 but pid=%d", v61);
    v53 = 153;
  }

  sub_100028740(&v62, v53);
  sub_100022D58(a1, v61, v53, 0);
  return v53;
}

void sub_100027E70(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1000157D8();
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
  v10 = dispatch_time(0, 1000000000 * a2);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  sub_10001B5B8(a1, 27);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000280E4;
  handler[3] = &unk_100078D38;
  handler[4] = a1;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_source_set_mandatory_cancel_handler();
  dispatch_activate(v9);
  *(a1 + 840) = v9;
  *(a1 + 832) = a3;
  *(a1 + 1204) = *(a1 + 1204) | (a2 << 8);
  if (*(a1 + 296))
  {
    sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
  }

  v11 = a1;
  if ((*(a1 + 1413) & 4) != 0)
  {
    v11 = *(a1 + 256);
  }

  if (sub_1000169A8((v11 + 1424), "com.apple."))
  {
    v13 = (v11 + 1434);
  }

  else
  {
    v13 = (v11 + 1424);
  }

  v14 = sub_10000FC98(0x40uLL, v12);
  sub_10000FD40(v14, "%s throttled", v13);
  v16 = sub_10004A4D0(a1 + 1224, v15);
  if (v16)
  {
    sub_10000FD40(v14, " after %s", v16);
  }

  v17 = sub_10000FCFC(v14);
  sub_10000FD04(v14);
  v18 = sub_100001278(1, v17);
  if (!v19)
  {
    *(a1 + 856) = v18;
  }

  free(v17);
  sub_10002813C(a1, 1);
  if (a4 == 1)
  {
    sub_10000F0A4(a1);
  }

  sub_100027154(a1, 1);
  v20 = "urgent log submission";
  if (!a4)
  {
    v20 = "throttle";
  }

  sub_100020018(a1, 5, "service spawn deferred by %llu seconds due to %s", a2, v20);
}

void sub_1000280EC(uint64_t a1)
{
  sub_10000EF88(*(a1 + 32));
  sub_10001B690(*(a1 + 32), 27);
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void sub_10002813C(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a1[176] >= 0 == a2)
  {
    for (i = a1[19]; i; i = *(i + 16))
    {
      sub_10004D1D0(i, v2);
    }

    for (j = a1[22]; j; j = *(j + 16))
    {
      sub_10004D1D0(j, v2);
    }

    for (k = a1[23]; k; k = *(k + 16))
    {
      sub_10004D1D0(k, v2);
    }

    v8 = 0x8000000000000000;
    if (!v2)
    {
      v8 = 0;
    }

    a1[176] = v8 & 0x8000000000000000 | a1[176] & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = "unmarked";
    if (a2)
    {
      v4 = "marked";
    }

    sub_100020018(a1, 7, "Service already %s as throttled", v4);
  }
}

uint64_t sub_100028224(uint64_t a1, _BYTE *a2)
{
  if ((*(a1 + 1216) & 0x800) != 0)
  {
    *a2 = 5;
    v9 = *(a1 + 1216);
  }

  else
  {
    memset(buffer, 0, sizeof(buffer));
    v4 = *(a1 + 1168);
    v5 = sub_100028338(v4, buffer);
    if (v5)
    {
      v6 = v5;
      v7 = xpc_strerror();
      sub_100020018(a1, 4, "procinfo failed for PID %d: %s: %d", v4, v7, v6);
      result = 0;
      *a2 = 4;
      return result;
    }

    *a2 = 5;
    v9 = *(a1 + 1216);
    if ((v9 & 0x800) == 0)
    {
      v9 = v9 & 0xFFFFF3FF | HIWORD(LODWORD(buffer[0])) & 0x400 | 0x800;
      *(a1 + 1216) = v9;
    }
  }

  return (v9 >> 10) & 1;
}

uint64_t sub_100028338(int a1, void *buffer)
{
  if (j__proc_pidinfo(a1, 18, 1uLL, buffer, 192) == 192)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

double sub_100028378(uint64_t a1)
{
  free(*(a1 + 1280));
  *(a1 + 1280) = 0;
  v2 = *(a1 + 1288);
  if (v2)
  {
    xpc_release(v2);
    *(a1 + 1288) = 0;
  }

  free(*(a1 + 1296));
  *(a1 + 1296) = 0;
  v3 = *(a1 + 1304);
  if (v3)
  {
    xpc_release(v3);
    *(a1 + 1304) = 0;
  }

  free(*(a1 + 1312));
  *(a1 + 1312) = 0;
  v4 = *(a1 + 1328);
  if (v4)
  {
    xpc_release(v4);
    *(a1 + 1328) = 0;
  }

  v5 = *(a1 + 1320);
  if (v5)
  {
    if (sub_10000B760(v5))
    {
      _os_assumes_log_ctx();
    }

    *(a1 + 1320) = 0;
  }

  *(a1 + 1344) = 0;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 1336) = 0xFFFFFFFFLL;
  *(a1 + 1346) &= 0xC8u;
  return result;
}

void sub_10002843C()
{
  v0 = *(__chkstk_darwin() + 32);
  v1 = sub_100015814();
  dispatch_assert_queue_V2(v1);
  *(v0 + 1208) = _xpc_spawnattr_unpack_string(*(v0 + 1280), *(v0 + 1288), *(*(v0 + 1280) + 4));
  v2 = *(v0 + 1128);
  if (v2 == -101)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  bzero(block, 0x1090uLL);
  v4 = sub_10001C118(v3, block);
  if (v4)
  {
    LODWORD(v5) = v4;
    sub_100021AF4(v0, v4, 0, 0xC84u, 0, "launch_kern_credentials_resolve_by_uid(%d) failed");
  }

  else
  {
    LODWORD(v5) = sub_100013494(v0, *(v0 + 1280), *(v0 + 1288), block);
    if (!v5)
    {
      v6 = sub_100013FE4(v0, *(v0 + 1280), *(v0 + 1288), *(v0 + 1264));
      if (v6 || (v10 = *(v0 + 1272)) != 0 && (v6 = sub_10001418C(v0, v10)) != 0 || (v6 = sub_1000142E0(v0, *(v0 + 1280), *(v0 + 1288), 0, 0)) != 0)
      {
        LODWORD(v5) = v6;
      }

      else
      {
        if (((*(v0 + 1256) + 1176) & 3) != 0)
        {
          sub_100054404();
        }

        v11 = &_posix_spawnp;
        if ((*(*(v0 + 1280) + 240) & 0x1000) == 0)
        {
          v11 = &_posix_spawn;
        }

        v5 = (v11)();
        if (v5)
        {
          sub_100021AF4(v0, v5, 0, 0xCA9u, 0, "posix_spawn(%s) failed");
        }
      }
    }
  }

  v7 = *(v0 + 1256);
  v8 = *(v7 + 1176);
  sub_100028740(v0, v5);
  free(v0);
  v9 = sub_1000157D8();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10002880C;
  block[3] = &unk_100078D98;
  block[4] = v7;
  v13 = v8;
  v14 = v5;
  dispatch_async(v9, block);
}

void sub_10002868C(uint64_t result)
{
  if ((*(result + 1415) & 0x18) != 0)
  {
    v3 = sub_100026FE0(result);
    v4 = result + 1056;
    if (v3)
    {
      v4 = v3;
    }

    sub_1000286E0((v4 + 24));
  }
}

void sub_1000286E0(xpc_object_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    v1 = xpc_array_create(0, 0);
    *a1 = v1;
  }

  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);

  xpc_array_set_uint64(v1, 0xFFFFFFFFFFFFFFFFLL, v3);
}

void sub_100028740(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1808))
  {
    v3 = 0;
    do
    {
      if (sub_10000B790(*(a1 + 1296 + 4 * v3)))
      {
        _os_assumes_log_ctx();
      }

      ++v3;
    }

    while (v3 < *(a1 + 1808));
  }

  v4 = *(a1 + 1816);
  if (v4 + 1 >= 2)
  {
    v5 = sub_10000B760(v4);
    if (v5)
    {
      sub_100054420(v5);
    }
  }

  free(*(a1 + 1280));
  v6 = *(a1 + 1264);
  if (v6)
  {
    xpc_release(v6);
  }

  v7 = *(a1 + 1272);
  if (v7)
  {
    xpc_release(v7);
  }

  sub_1000133A8(a1);
}

uint64_t sub_100028820(uint64_t a1)
{
  result = sub_100026FE0(a1);
  if (result)
  {
    v3 = *(a1 + 248);

    return sub_10002CF00(v3);
  }

  return result;
}

uint64_t sub_100028868(uint64_t a1, int a2)
{
  v4 = *(a1 + 312);
  if (v4)
  {
    sub_100013100(v4, a2);
  }

  result = *(a1 + 320);
  if (result)
  {

    return sub_100013100(result, a2);
  }

  return result;
}

double sub_1000288C4(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 1216) & 0x200) != 0)
  {

    sub_100020018(a1, 5, "already handled failed init, ignoring");
  }

  else
  {
    v5 = a2;
    *(a1 + 1216) |= 0x200u;
    if ((*(a1 + 1412) & 0x20) != 0)
    {
      sub_100023C7C(a1);
    }

    if (v5 != 111 || a3 == 75)
    {
      if (!v5)
      {
        sub_100054404();
      }
    }

    else
    {
      v6 = *(a1 + 1408);
      if ((v6 & 0x80000000000) == 0)
      {
        if (*(a1 + 296))
        {
          sub_1000441E0("unmanaged service given to service interface. pid: %d service: %s", *(a1 + 296), (a1 + 1424));
        }

        if ((v6 & 0x20000000000) != 0)
        {
          v7 = sub_10001FB70(a1);
          sub_100020018(a1, 65539, "Missing executable detected. Job: '%s' Executable: '%s'", (a1 + 1424), v7);
        }
      }
    }

    sub_10001FECC(a1, 4, v5);

    return sub_100028378(a1);
  }

  return result;
}

void sub_100028A38(uint64_t a1)
{
  if ((sub_100046C18(*(a1 + 1168)) & 1) != 0 || (*(a1 + 1216) & 0xC) != 0)
  {

    sub_100020018(a1, 5, "service is being debugged, not timing out launch");
  }

  else
  {
    if (*(a1 + 872))
    {
      sub_10001BB40(a1, 32);
      dispatch_source_cancel(*(a1 + 872));
      dispatch_release(*(a1 + 872));
      *(a1 + 872) = 0;
    }

    sub_100020018(a1, 4, "Extension is hanging on launch. Killing.");
    sub_100020018(a1, 5, "killing extension hanging on launch");
    v2 = sub_10000B7FC();
    v3 = sub_10002377C(a1, 2, v2);
    v4 = v3;
    if (v3 > 0x25 || ((1 << v3) & 0x2000000009) == 0)
    {
      v5 = strerror(v3);
      sub_100020018(a1, 4, "Failed to kill hanging extension: %d: %s", v4, v5);
    }
  }
}

uint64_t sub_100028B5C(void *a1, int *a2)
{
  if (xpc_dictionary_get_BOOL(a1, "self"))
  {
    xpc_dictionary_get_audit_token();
    v4 = sub_100022BD8(0);
    if (v4)
    {
      v5 = v4;
      if (sub_1000329B4(*(v4 + 248), a1))
      {
        return v5;
      }

      v6 = 36;
    }

    else
    {
      v6 = 135;
    }

    v5 = 0;
LABEL_10:
    *a2 = v6;
    return v5;
  }

  value = xpc_dictionary_get_value(a1, "service-port");
  if (!value)
  {
    goto LABEL_13;
  }

  if (xpc_get_type(value) != &_xpc_type_mach_send)
  {
LABEL_7:
    v5 = 0;
    v6 = 22;
    goto LABEL_10;
  }

  right = xpc_mach_send_get_right();
  if ((right + 1) < 2)
  {
LABEL_13:
    int64 = xpc_dictionary_get_int64(a1, "pid");
    if (int64)
    {
      v5 = sub_100022BD8(int64);
      if (v5)
      {
        return v5;
      }

      goto LABEL_15;
    }

    v11 = sub_1000328DC(a1, 1, a2);
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    if (sub_1000329B4(v11, a1))
    {
      string = xpc_dictionary_get_string(a1, "name");
      if (!string)
      {
        goto LABEL_7;
      }

      v14 = string;
      v15 = sub_100030830(v12, string);
      if (v15)
      {
        goto LABEL_21;
      }

      v15 = sub_10003301C(v12, v14);
      if (v15)
      {
        goto LABEL_21;
      }

      if (!xpc_dictionary_get_BOOL(a1, "unidomain") || sub_100032A18(v12) != &unk_10007D720 || (v19 = sub_1000443F4()) == 0)
      {
LABEL_35:
        v5 = 0;
LABEL_15:
        v6 = 113;
        goto LABEL_10;
      }

      v20 = v19;
      if (sub_1000329B4(v19, a1))
      {
        v15 = sub_100030830(v20, v14);
        if (v15)
        {
LABEL_21:
          v5 = v15;
          uuid = xpc_dictionary_get_uuid(a1, "_instance");
          if (!uuid)
          {
            return v5;
          }

          v5 = *(v5 + 200);
          if (v5)
          {
            v17 = uuid;
            while (uuid_compare(v17, (v5 + 408)))
            {
              v5 = *(v5 + 40);
              if (!v5)
              {
                goto LABEL_35;
              }
            }

            return v5;
          }

          goto LABEL_35;
        }

        goto LABEL_35;
      }
    }

    v5 = 0;
    v6 = 36;
    goto LABEL_10;
  }

  v18 = sub_100032720(right, 0);
  if (!v18)
  {
    v5 = 0;
    v6 = 135;
    goto LABEL_10;
  }

  return sub_10004CC7C(v18);
}

xpc_object_t sub_100028DB8(uint64_t a1, void *a2, int a3)
{
  v6 = sub_100033434(*(a1 + 248));
  result = xpc_retain(a2);
  *(v6 + 3) = result;
  v6[8] = a3;
  v8 = (a1 + 512);
  v9 = *(a1 + 512);
  *v6 = v9;
  if (v9)
  {
    *(v9 + 8) = v6;
  }

  *v8 = v6;
  *(v6 + 1) = v8;
  return result;
}

uint64_t sub_100028E20(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  value = 0;
  sub_100010B3C(570425352, *(a1 + 1168));
  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  v8 = *(a1 + 700);
  if (!v8)
  {
    v9 = *(a1 + 256);
    if (!v9)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v8 = *(v9 + 700);
  }

  v10 = v8 == 0;
  if ((v8 - 1) <= 0xFFFFFFFD && (*(a1 + 1346) & 4) == 0)
  {
    sub_100020018(a1, 5, "blocking xpcproxy until controller configures the service");
    v11 = a1;
    v12 = a3;
    v13 = 3;
LABEL_13:
    sub_100028DB8(v11, v12, v13);
    return 0;
  }

LABEL_10:
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v15 = *(a1 + 1216);
  if ((v15 & 0x10) == 0)
  {
    v11 = a1;
    v12 = a3;
    v13 = 2;
    goto LABEL_13;
  }

  if (v15)
  {
    return 37;
  }

  reply = xpc_dictionary_create_reply(a3);
  buffer = 0;
  v17 = sub_100001BE8(a1, &value, &buffer);
  v18 = buffer;
  *(a1 + 1216) = *(a1 + 1216) & 0xFFFB | (4 * (*(buffer + 108) & 1));
  v19 = dispatch_data_create(v18, v17, 0, _dispatch_data_destructor_free);
  v20 = xpc_data_create_with_dispatch_data(v19);
  dispatch_release(v19);
  xpc_dictionary_set_value(reply, "blob", v20);
  xpc_release(v20);
  xpc_dictionary_set_value(reply, "ports", value);
  xpc_release(value);
  if (!v10)
  {
    xpc_dictionary_set_mach_send();
  }

  v21 = xpc_array_create(0, 0);
  for (i = 0; i != 3; ++i)
  {
    v23 = *(a1 + 4 * i + 688);
    if (v23 != -1)
    {
      xpc_array_set_fd(v21, 0xFFFFFFFFFFFFFFFFLL, v23);
      xpc_array_set_int64(v21, 0xFFFFFFFFFFFFFFFFLL, i);
    }
  }

  v24 = *(a1 + 1328);
  if (v24 && xpc_array_get_count(v24))
  {
    v25 = 0;
    do
    {
      v26 = xpc_array_get_value(*(a1 + 1328), v25);
      xpc_array_append_value(v21, v26);
      ++v25;
    }

    while (v25 < xpc_array_get_count(*(a1 + 1328)));
  }

  xpc_dictionary_set_value(reply, "fds", v21);
  xpc_release(v21);
  sub_100010B3C(570425356, *(a1 + 1168));
  sub_100028378(a1);
  result = 0;
  *(a1 + 1216) |= 1u;
  *a4 = reply;
  return result;
}

uint64_t sub_1000290D4(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  v32 = v8;
  v33 = v7;
  v34 = v6;
  v35 = v5;
  v36 = v4;
  if ((*(a1 + 1216) & 2) != 0)
  {
    return 131;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "pc");
  if (!uint64)
  {
    sub_100020018(a1, 3, "Failure info has no PC.", v13, v12, v11, v10, v9, v8, v7, v34, v35, v36, v14, v15);
    return 22;
  }

  v20 = uint64;
  v21 = xpc_dictionary_get_uint64(xdict, "line");
  if (!v21)
  {
    sub_100020018(a1, 3, "Failure info has no line number.", v13, v12, v11, v10, v9, v8, v33, v34, v35, v36, v14, v15);
    return 22;
  }

  v22 = v21;
  uuid = xpc_dictionary_get_uuid(xdict, "uuid");
  if (!uuid)
  {
    sub_100020018(a1, 3, "Failure info has no image UUID.", v13, v12, v11, v10, v9, v32, v33, v34, v35, v36, v14, v15);
    return 22;
  }

  v24 = uuid;
  v25 = xpc_dictionary_get_BOOL(xdict, "setup-event");
  string = xpc_dictionary_get_string(xdict, "string");
  int64 = xpc_dictionary_get_int64(xdict, "code");
  if (!int64)
  {
    return 22;
  }

  v28 = int64;
  v29 = xpc_dictionary_get_int64(xdict, "subcode");
  if (byte_10007F0FA == 1)
  {
    nullsub_23();
  }

  sub_100021C08(a1, v20, v22, v24, v28, v29, string, "xpcproxy");
  if (v25)
  {
    sub_100020018(a1, 5, "Service setup event to handle failure and will not launch until it fires.");
    *(a1 + 1408) |= 0x40000uLL;
  }

  sub_1000288C4(a1, v28, v29);
  reply = xpc_dictionary_create_reply(xdict);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_1000292A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if ((sub_10000E554(a2, 13) & 1) == 0)
  {
    memset(v25, 0, sizeof(v25));
    v18 = sub_100045C78(*(a2 + 20), v25);
    sub_100020018(a1, 4, "denied kick request from %s - missing entitlement %s", v18, "com.apple.private.xpc.service-attach");
    return 144;
  }

  v8 = xpc_dictionary_get_BOOL(a3, "unthrottle");
  if (v8)
  {
    v9 = sub_100026FE0(a1);
    v10 = a1 + 1056;
    if (v9)
    {
      v10 = v9;
    }

    *(v10 + 1) = 1;
  }

  v11 = xpc_dictionary_get_BOOL(a3, "suspended");
  v12 = xpc_dictionary_get_BOOL(a3, "kill");
  v13 = *(a1 + 1168);
  if (v12)
  {
    if (v13)
    {
      result = sub_1000235C4(a1, a2);
      if (result)
      {
        return result;
      }

      xpc_dictionary_set_BOOL(a3, "kill", 0);
      v15 = a1;
      v16 = a3;
      v17 = 5;
      goto LABEL_25;
    }
  }

  else if (v13)
  {
    v19 = a3;
LABEL_22:
    result = xpc_dictionary_create_reply(v19);
    if (!result)
    {
      return result;
    }

    v22 = result;
    v23 = *(a1 + 1168);
    v24 = "pid";
    goto LABEL_28;
  }

  if (v11)
  {
    *(a1 + 1346) |= 1u;
  }

  if (v8)
  {
    v20 = sub_100023354(a1, 9);
  }

  else
  {
    v20 = sub_1000234BC(a1, 9);
  }

  v21 = v20;
  if (v20 == 36)
  {
    v15 = a1;
    v16 = a3;
    v17 = 1;
LABEL_25:
    sub_100028DB8(v15, v16, v17);
    return 0;
  }

  v19 = a3;
  if (!v21)
  {
    goto LABEL_22;
  }

  result = xpc_dictionary_create_reply(a3);
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = v21;
  v24 = "error";
LABEL_28:
  xpc_dictionary_set_int64(v22, v24, v23);
  result = 0;
  *a4 = v22;
  return result;
}

uint64_t sub_1000294B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if ((sub_10000E554(a2, 13) & 1) == 0)
  {
    memset(v30, 0, sizeof(v30));
    v22 = sub_100045C78(*(a2 + 20), v30);
    sub_100020018(a1, 4, "denied attach request from %s - missing entitlement %s", v22, "com.apple.private.xpc.service-attach");
    return 144;
  }

  v8 = xpc_dictionary_get_BOOL(a3, "kill");
  v9 = xpc_dictionary_get_BOOL(a3, "run");
  v10 = xpc_dictionary_get_BOOL(a3, "proxy");
  v11 = xpc_dictionary_get_BOOL(a3, "pended");
  v12 = *(a1 + 1346);
  v13 = v12 | 1;
  v14 = v12 & 0xFC | 2;
  if (!v11 && v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  *(a1 + 1346) = v15;
  v16 = *(a1 + 1168);
  if (!v11 && (v8 || v10))
  {
    if (v16)
    {
      v17 = sub_1000235C4(a1, a2);
      if (v17 != 37)
      {
        v18 = v17;
        if (v17)
        {
          sub_100028378(a1);
          return v18;
        }
      }

      xpc_dictionary_set_BOOL(a3, "pended", 1);
      v19 = a1;
      v20 = a3;
      v21 = 5;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (!v16)
  {
LABEL_17:
    if (!v9 || (v25 = sub_100020084(a1, 9), v25 == 36))
    {
      xpc_dictionary_set_BOOL(a3, "pended", 1);
      v19 = a1;
      v20 = a3;
      v21 = 1;
LABEL_24:
      sub_100028DB8(v19, v20, v21);
      return 0;
    }

    v26 = v25;
    if (v25)
    {
      reply = xpc_dictionary_create_reply(a3);
      if (reply)
      {
        v28 = reply;
        xpc_dictionary_set_int64(reply, "error", v26);
        *a4 = v28;
      }

      sub_100028378(a1);
      return 0;
    }
  }

  v23 = xpc_dictionary_create_reply(a3);
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  xpc_dictionary_set_int64(v23, "pid", *(a1 + 1168));
  v18 = 0;
  *a4 = v24;
  return v18;
}

uint64_t sub_100029704(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  value[0] = -1;
  string = xpc_dictionary_get_string(xdict, "name");
  if (!string)
  {
    sub_10004749C(3, "no name, failing");
    v18 = 22;
LABEL_17:
    value[0] = v18;
    v20 = sub_10000BC10(xdict, "service-ctl-reply-port");
    goto LABEL_18;
  }

  v9 = string;
  if ((sub_10000E554(a2, 13) & 1) == 0)
  {
    v55 = 0u;
    v56 = 0u;
    *&value[1] = 0u;
    v54 = 0u;
    v19 = sub_100045C2C(a2, &value[1]);
    sub_10004749C(3, "Non-entitled process tried to control service %s: %s.%d", v9, v19, *(a2 + 20));
    v18 = 144;
    goto LABEL_17;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "type");
  v11 = xpc_dictionary_get_uint64(xdict, "handle");
  if (uint64 == 5 && !v11)
  {
    sub_10004749C(5, "will attach to %s next time it is spawned", v9);
    v12 = &qword_10007E210;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (!strcmp(v12[2], v9))
      {
        sub_10004749C(5, "canceling old global attach request to %s", v9);
        sub_10002ADF8(v12);
        v13 = *v12;
        v14 = v12[1];
        if (*v12)
        {
          *(v13 + 1) = v14;
        }

        *v14 = v13;
        *v12 = -1;
        v12[1] = -1;
        xpc_release(v12[3]);
        free(v12);
        break;
      }
    }

    v15 = sub_100014514(0x20uLL, 0xF004009F7A1C4uLL);
    v16 = v15;
    v17 = qword_10007E210;
    *v15 = qword_10007E210;
    if (v17)
    {
      *(v17 + 8) = v15;
    }

    qword_10007E210 = v15;
    v15[1] = &qword_10007E210;
LABEL_14:
    v16[2] = v9;
    v18 = 0;
    v16[3] = xpc_retain(xdict);
    return v18;
  }

  if (a1)
  {
    v20 = sub_10000BC10(xdict, "service-ctl-reply-port");
    if ((v20 - 1) >= 0xFFFFFFFE)
    {
      sub_10004749C(3, "no reply expected, failing");
      v18 = 22;
    }

    else
    {
      if (*(a1 + 700))
      {
        v55 = 0u;
        v56 = 0u;
        *&value[1] = 0u;
        v54 = 0u;
        v49[1] = 0;
        v50 = 0;
        v49[0] = 0;
        HIDWORD(v50) = *(a1 + 704);
        v51 = 0;
        v52 = *(a1 + 708);
        v24 = sub_100045C2C(v49, &value[1]);
        v25 = HIDWORD(v50);
        v26 = sub_100045C2C(a2, &value[1]);
        sub_100020018(a1, 4, "Replacing controller %s[%d] with %s[%d]", v24, v25, v26, *(a2 + 20));
        sub_10002AE70(a1, v27);
      }

      mach_send = _xpc_dictionary_extract_mach_send();
      if (mach_send - 1 < 0xFFFFFFFE)
      {
        v29 = mach_send;
        reply_from_port = xpc_pipe_create_reply_from_port();
        if (!reply_from_port)
        {
          sub_100054404();
        }

        v31 = reply_from_port;
        *(a1 + 704) = *(a2 + 20);
        *(a1 + 708) = *(a2 + 28);
        *(a1 + 700) = v29;
        v32 = sub_1000157D8();
        v33 = dispatch_source_create(&_dispatch_source_type_mach_send, v29, 1uLL, v32);
        *(a1 + 712) = v33;
        dispatch_set_context(v33, a1);
        dispatch_source_set_event_handler_f(*(a1 + 712), sub_10002AEC0);
        dispatch_source_set_mandatory_cancel_handler_f();
        dispatch_activate(*(a1 + 712));
        v34 = *(a1 + 1168);
        if (v34)
        {
          xpc_dictionary_set_int64(v31, "pid", v34);
          xpc_dictionary_set_BOOL(v31, "configurable", 0);
        }

        v18 = 0;
        *a4 = v31;
        value[0] = 0;
        goto LABEL_45;
      }

      sub_100020018(a1, 4, "Got dead control port");
      v18 = 57;
    }

    value[0] = v18;
LABEL_45:
    if ((*(a1 + 1346) & 8) != 0)
    {
      sub_100020018(a1, 5, "controller attached, spawning");
      v43 = *(a1 + 832);
      *(a1 + 832) = 0;
      v44 = sub_100020084(a1, v43);
      if (v44)
      {
        v45 = v44;
        if (v44 != 36)
        {
          if (v44 == 139)
          {
            sub_1000441E0("deferral event on service waiting for controller");
          }

          v46 = xpc_strerror();
          sub_100020018(a1, 3, "service spawn failed after attach: %d: %s", v45, v46);
        }
      }

      *(a1 + 1346) &= ~8u;
    }

    goto LABEL_18;
  }

  v35 = sub_1000328DC(xdict, 1, value);
  if (v35)
  {
    v36 = v35;
    sub_10002C908(v35, 5, "will attach to %s next time it's created", v9);
    v37 = (v36 + 48);
    v38 = (v36 + 48);
    while (1)
    {
      v38 = *v38;
      if (!v38)
      {
        break;
      }

      if (!strcmp(v38[2], v9))
      {
        sub_10002C908(v36, 5, "canceling old domain attach request to %s", v9);
        sub_10002ADF8(v38);
        v39 = *v38;
        v40 = v38[1];
        if (*v38)
        {
          *(v39 + 1) = v40;
        }

        *v40 = v39;
        *v38 = -1;
        v38[1] = -1;
        xpc_release(v38[3]);
        free(v38);
        break;
      }
    }

    v41 = sub_100014514(0x20uLL, 0xF004009F7A1C4uLL);
    v16 = v41;
    v42 = *v37;
    *v41 = *v37;
    if (v42)
    {
      *(v42 + 8) = v41;
    }

    *v37 = v41;
    v41[1] = v37;
    goto LABEL_14;
  }

  v47 = value[0];
  v48 = xpc_strerror();
  sub_10004749C(3, "couldn't find domain to attach to %s, error %d - %s", v9, v47, v48);
  v20 = sub_10000BC10(xdict, "service-ctl-reply-port");
  v18 = value[0];
LABEL_18:
  if (v18 && (v20 - 1) <= 0xFFFFFFFD)
  {
    v21 = xpc_pipe_create_reply_from_port();
    if (!v21)
    {
      sub_100054404();
    }

    v22 = v21;
    xpc_dictionary_set_int64(v21, "error", value[0]);
    *a4 = v22;
    return value[0];
  }

  return v18;
}

uint64_t sub_100029C90(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v8 = *(a1 + 704);
  v9 = a1;
  if (!v8)
  {
    v9 = *(a1 + 256);
    if (!v9)
    {
      v9 = a1;
    }

    v8 = *(v9 + 704);
    if (!v8)
    {
      return 142;
    }
  }

  if (v8 != *(a2 + 20) || *(v9 + 708) != *(a2 + 28))
  {
    return 142;
  }

  if ((*(a1 + 1346) & 4) != 0)
  {
    return 37;
  }

  string = xpc_dictionary_get_string(a3, "program");
  if (string)
  {
    *(a1 + 1280) = sub_1000166EC(string);
  }

  value = xpc_dictionary_get_value(a3, "argv");
  if (value)
  {
    v12 = value;
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      *(a1 + 1288) = xpc_retain(v12);
    }
  }

  v13 = xpc_dictionary_get_string(a3, "cwd");
  if (v13)
  {
    *(a1 + 1296) = sub_1000166EC(v13);
  }

  v14 = xpc_dictionary_get_value(a3, "environment");
  if (v14)
  {
    v15 = v14;
    if (xpc_get_type(v14) == &_xpc_type_dictionary)
    {
      *(a1 + 1304) = xpc_retain(v15);
    }
  }

  uint64 = xpc_dictionary_get_uint64(a3, "binpref");
  v17 = xpc_dictionary_get_uint64(a3, "archpref");
  if (uint64)
  {
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = -1;
    }

    xpc_binprefs_alloc();
    *(a1 + 1312) = v19;
    xpc_binprefs_add(v19, uint64, v18);
  }

  v20 = xpc_dictionary_get_value(a3, "fds");
  if (v20)
  {
    v21 = v20;
    if (xpc_get_type(v20) == &_xpc_type_array)
    {
      *(a1 + 1328) = xpc_retain(v21);
    }
  }

  mach_send = _xpc_dictionary_extract_mach_send();
  if (!mach_send)
  {
    goto LABEL_30;
  }

  if ((*(a1 + 1372) + 1) >= 2)
  {
    v30 = sub_10000B760(mach_send);
    if (v30)
    {
      sub_100054420(v30);
    }

    sub_100020018(a1, 3, "Cannot set configure key endpoint on service: service has dext checkin port %#x", *(a1 + 1372));
    return 22;
  }

  *(a1 + 1320) = mach_send;
LABEL_30:
  int64 = xpc_dictionary_get_int64(a3, "jetsam-flags");
  if (int64)
  {
    *(a1 + 1344) = int64;
  }

  v24 = xpc_dictionary_get_int64(a3, "jetsam-priority");
  if (v24 >= 1)
  {
    *(a1 + 1336) = v24;
  }

  v25 = xpc_dictionary_get_int64(a3, "jetsam-memlimit");
  if (v25)
  {
    *(a1 + 1340) = v25;
  }

  if (xpc_dictionary_get_BOOL(a3, "nano-allocator"))
  {
    *(a1 + 1346) |= 0x10u;
  }

  v26 = xpc_dictionary_get_BOOL(a3, "checked-allocations");
  v27 = *(a1 + 1346);
  if (v26)
  {
    v27 |= 0x20u;
    *(a1 + 1346) = v27;
  }

  if ((v27 & 1) == 0)
  {
    v27 = *(a1 + 1346) & 0xFE | xpc_dictionary_get_BOOL(a3, "suspended");
  }

  *(a1 + 1346) = v27 | 4;
  sub_10001FECC(a1, 3, 0);
  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_100029F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v6 = *(a1 + 704);
  if (!v6 || v6 != *(a2 + 20) || *(a1 + 708) != *(a2 + 28))
  {
    return 1;
  }

  sub_10002AE70(a1, v5);
  return 0;
}

uint64_t sub_100029FF4(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = sub_1000332CC(*(a1 + 248), 5, 0, a2);
  if (v8)
  {
    v9 = v8;
    sub_10002AF10(a1, a2, v8, "service blame");
  }

  else
  {
    reply = xpc_dictionary_create_reply(a3);
    if (reply)
    {
      v12 = reply;
      v13 = sub_100026CB4(*(a1 + 1180), v11);
      v14 = sub_1000168E0("%s", v13);
      xpc_dictionary_set_string(v12, "reason", v14);
      free(v14);
      v9 = 0;
      *a4 = v12;
    }

    else
    {
      return 22;
    }
  }

  return v9;
}

uint64_t sub_10002A0CC(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = sub_1000332CC(*(a1 + 248), 5, 0, a2);
  if (v8)
  {
    v9 = v8;
    sub_10002AF10(a1, a2, v8, "service print");
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_10002B044;
    v11[3] = &unk_100078F80;
    v11[4] = a1;
    return sub_100049C94(a3, a4, v11);
  }

  return v9;
}

uint64_t sub_10002A1A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 248);
  if (sub_100032A18(v8) != qword_10007D8B8)
  {
    return 125;
  }

  if (sub_100032A20(v8) != *(a2 + 20))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  value = xpc_dictionary_get_value(a3, "bootstrap");
  v11 = *(a1 + 632);
  if (v11)
  {
    xpc_release(v11);
    *(a1 + 632) = 0;
  }

  if (value)
  {
    *(a1 + 632) = xpc_retain(value);
  }

  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A280(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 248);
  if (sub_100032A18(v8) != qword_10007D8B8)
  {
    return 125;
  }

  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v10 = *(a1 + 256);
  if (!v10)
  {
    v10 = a1;
  }

  v11 = *(v10 + 632);
  reply = xpc_dictionary_create_reply(a3);
  v13 = reply;
  if (v11)
  {
    xpc_dictionary_set_value(reply, "bootstrap", v11);
  }

  memset(v14, 0, sizeof(v14));
  sub_100032D30(v8, v14);
  xpc_dictionary_set_data(v13, "creator", v14, 0x20uLL);
  result = 0;
  *a4 = v13;
  return result;
}

uint64_t sub_10002A37C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (*(a1 + 296))
  {
    return 113;
  }

  v9 = *(a1 + 344);
  v11 = v9 && (v10 = *(v9 + 48)) != 0 && *(v9 + 56) && sub_100041CA0(a2, v10);
  reply = xpc_dictionary_create_reply(a3);
  v13 = sub_1000241D0(a1, v11);
  xpc_dictionary_set_value(reply, "attrs", v13);
  xpc_release(v13);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A440(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 3))
  {
    return 144;
  }

  if (!*(a1 + 1168))
  {
    return 3;
  }

  v8 = xpc_dictionary_get_BOOL(a3, "deferred");
  if ((*(a1 + 1216) & 2) != 0)
  {
    reply = xpc_dictionary_create_reply(a3);
    xpc_dictionary_set_int64(reply, "pid", *(a1 + 1168));
    result = 0;
    *a4 = reply;
  }

  else
  {
    if (v8)
    {
      return 3;
    }

    xpc_dictionary_set_BOOL(a3, "deferred", 1);
    sub_100028DB8(a1, a3, 4);
    return 0;
  }

  return result;
}

uint64_t sub_10002A51C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 3))
  {
    return 144;
  }

  if (*(a1 + 1040) && *(a1 + 1224))
  {
    if (sub_10004A5D0(a1 + 1224))
    {
      v8 = 1;
    }

    else if (sub_10004A680((a1 + 1224)))
    {
      if (*(a1 + 1228))
      {
        v8 = 128;
      }

      else
      {
        v8 = 64;
      }
    }

    else
    {
      v8 = 64;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 1228);
  v11 = *(a1 + 1232);
  reply = xpc_dictionary_create_reply(a3);
  v13 = reply;
  if (*(a1 + 1040) && *(a1 + 364) == 80)
  {
    xpc_dictionary_set_uint64(reply, "termination-state", 0x80uLL);
    v10 = 9;
    v11 = 10;
LABEL_14:
    xpc_dictionary_set_uint64(v13, "os-namespace", v10);
    xpc_dictionary_set_uint64(v13, "os-code", v11);
    goto LABEL_15;
  }

  xpc_dictionary_set_uint64(reply, "termination-state", v8);
  if (v8 == 128)
  {
    goto LABEL_14;
  }

LABEL_15:
  result = 0;
  *a4 = v13;
  return result;
}

uint64_t sub_10002A66C(uint64_t a1, uint64_t a2, xpc_object_t xdict, void *a4)
{
  v8 = xpc_dictionary_get_BOOL(xdict, "yesno");
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  v9 = *(a1 + 864);
  if (v8)
  {
    if (v9)
    {
      sub_100020018(a1, 5, "extension already attempting clean exit");
      return 36;
    }

    if (*(a1 + 424) > 4u)
    {
      goto LABEL_12;
    }

    sub_100020018(a1, 5, "extension attempting to exit cleanly");
    v11 = sub_1000157D8();
    *(a1 + 864) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
    sub_10001BB18(a1, 31);
    dispatch_set_context(*(a1 + 864), a1);
    v12 = *(a1 + 864);
    v13 = dispatch_time(0, 1000000000 * *(a1 + 880));
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(a1 + 864), sub_10002B050);
    dispatch_activate(*(a1 + 864));
  }

  else
  {
    if (!v9)
    {
      sub_100020018(a1, 5, "extension already interrupted clean exit attempt");
      return 37;
    }

    if (*(a1 + 424) >= 5u)
    {
LABEL_12:
      sub_100020018(a1, 5, "extension is being stopped");
      return 124;
    }

    sub_100020018(a1, 5, "extension canceled clean exit attempt");
    sub_10001BB40(a1, 31);
    dispatch_source_cancel(*(a1 + 864));
    dispatch_release(*(a1 + 864));
    *(a1 + 864) = 0;
  }

  reply = xpc_dictionary_create_reply(xdict);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A85C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if ((*(a1 + 1412) & 8) == 0)
  {
    return 137;
  }

  if (*(a2 + 20) != *(a1 + 1168))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!*(a1 + 872))
  {
    return 37;
  }

  sub_100020018(a1, 5, "extension checked in as alive");
  sub_10001BB40(a1, 32);
  dispatch_source_cancel(*(a1 + 872));
  dispatch_release(*(a1 + 872));
  *(a1 + 872) = 0;
  *(a1 + 1216) |= 0x40u;
  reply = xpc_dictionary_create_reply(a3);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002A938(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + 1168) != *(a2 + 20))
  {
    return 1;
  }

  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  v7 = sub_10001FB88(a1);
  v8 = *(a1 + 256);
  if (v8)
  {
    v7 = sub_10001FB88(v8);
  }

  if (!v7)
  {
    return 113;
  }

  reply = xpc_dictionary_create_reply(a3);
  v10 = sub_100049864(v7);
  xpc_dictionary_set_value(reply, "xpcservice-dict", v10);
  xpc_release(v10);
  xpc_dictionary_set_string(reply, "identifier", *(a1 + 576));
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002AA10(uint64_t a1, void *a2, void *a3)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  reply = xpc_dictionary_create_reply(a2);
  v7 = reply;
  if ((*(a1 + 1413) & 4) != 0)
  {
    xpc_dictionary_set_uuid(reply, "instance", (a1 + 408));
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_10002AA84(uint64_t a1, _OWORD *a2, void *a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  uuid = xpc_dictionary_get_uuid(a3, "instance");
  if (!uuid)
  {
    return 22;
  }

  v9 = uuid;
  if (!sub_10000E554(a2, 30))
  {
    return 144;
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    while (uuid_compare(v9, (v10 + 408)))
    {
      v10 = *(v10 + 40);
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    return 37;
  }

  else
  {
LABEL_7:
    v13 = 0;
    sub_10002DFD8(*(a1 + 248), a1, v9, 0, 0, a2, &v13);
    v11 = v13;
    if (!v13)
    {
      *a4 = xpc_dictionary_create_reply(a3);
    }
  }

  return v11;
}

uint64_t sub_10002AB70(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  uuid = xpc_dictionary_get_uuid(a3, "instance");
  if (!uuid)
  {
    return 22;
  }

  v9 = uuid;
  if (!sub_10000E554(a2, 30))
  {
    return 144;
  }

  v10 = *(a1 + 200);
  if (!v10)
  {
    return 113;
  }

  while (uuid_compare(v9, (v10 + 408)))
  {
    v10 = *(v10 + 40);
    if (!v10)
    {
      return 113;
    }
  }

  result = sub_10002DF94(*(v10 + 248), v10);
  if (!result)
  {
    reply = xpc_dictionary_create_reply(a3);
    goto LABEL_15;
  }

  if (result == 36)
  {
    reply = xpc_dictionary_create_reply(a3);
    sub_100026D4C(v10, v13);
    v14 = xpc_mach_send_create_with_disposition();
    xpc_dictionary_set_value(reply, "monitor", v14);
    xpc_release(v14);
LABEL_15:
    result = 0;
    *a4 = reply;
  }

  return result;
}

uint64_t sub_10002AC84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 30))
  {
    return 144;
  }

  empty = xpc_array_create_empty();
  for (i = *(a1 + 200); i; i = *(i + 40))
  {
    xpc_array_set_uuid(empty, 0xFFFFFFFFFFFFFFFFLL, (i + 408));
  }

  reply = xpc_dictionary_create_reply(a3);
  xpc_dictionary_set_value(reply, "uuids", empty);
  xpc_release(empty);
  result = 0;
  *a4 = reply;
  return result;
}

uint64_t sub_10002AD38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!xpc_dictionary_expects_reply())
  {
    return 22;
  }

  if (!sub_10000E554(a2, 39))
  {
    return 144;
  }

  reply = xpc_dictionary_create_reply(a3);
  v9 = sub_100022158(a1, 1);
  if (v9)
  {
    v10 = v9;
    xpc_dictionary_set_string(reply, "service-name", v9);
    free(v10);
  }

  else
  {
    xpc_dictionary_set_string(reply, "service-name", "Unknown service");
  }

  result = 0;
  *a4 = reply;
  return result;
}

void sub_10002ADF8(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 24));
  if (reply)
  {
    v2 = reply;
    xpc_dictionary_set_int64(reply, "error", 89);
    if ((xpc_pipe_routine_reply() & 0xFFFFFFDF) != 0)
    {
      _os_assumes_log();
    }

    xpc_release(v2);
  }
}

void sub_10002AE70(uint64_t a1, uint64_t a2)
{
  *(a1 + 704) = 0;
  *(a1 + 700) = 0;
  if ((*(a1 + 1346) & 4) != 0)
  {
    sub_100028378(a1);
  }

  sub_100002B90(a1, a2);
}

void sub_10002AEC4(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  if (sub_10000B760(handle))
  {
    _os_assumes_log();
  }

  dispatch_release(a1);
}

void sub_10002AF10(uint64_t a1, _DWORD *a2, uint64_t a3, const char *a4)
{
  if (a3 != 124)
  {
    v5 = a3;
    if (a3 == 154)
    {
      v8 = 65539;
    }

    else
    {
      v8 = 3;
    }

    memset(v14, 0, sizeof(v14));
    v9 = sub_100045C2C(a2, v14);
    v10 = a2[5];
    v11 = xpc_strerror();
    sub_100020018(a1, v8, "Caller not allowed to perform action: %s.%d, action = %s, code = %d: %s, uid = %u, euid = %u, gid = %u, egid = %u, asid = %u", v9, v10, a4, v5, v11, a2[3], a2[1], a2[4], a2[2], a2[6]);
    v12 = a2[5];
    v13 = xpc_strerror();
    sub_100020018(a1, 5, "violation: %s.%d, action = %s, code = %d: %s, uid = %u, euid = %u, gid = %u, egid = %u, asid = %u", v9, v12, a4, v5, v13, a2[3], a2[1], a2[4], a2[2], a2[6]);
  }
}

void sub_10002B050(uint64_t a1)
{
  sub_10001BB40(a1, 31);
  dispatch_source_cancel(*(a1 + 864));
  dispatch_release(*(a1 + 864));
  *(a1 + 864) = 0;
  if (sub_100046C18(*(a1 + 1168)))
  {

    sub_100020018(a1, 5, "extension is being debugged; not timing out exit");
  }

  else
  {
    sub_100020018(a1, 4, "Extension remained dirty for too long after trying to exit. Killing.");
    sub_100020018(a1, 5, "extension timed out trying to exit; killing");
    v2 = sub_10000B7FC();
    v3 = sub_10002377C(a1, 1, v2);
    v4 = v3;
    if (v3 > 0x25 || ((1 << v3) & 0x2000000009) == 0)
    {
      v5 = strerror(v3);
      sub_100020018(a1, 4, "Failed to kill extension. It may linger forever: %d: %s", v4, v5);
    }
  }
}

void sub_10002B15C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v3 + 1216);
  if ((v4 & 0x10) != 0)
  {
    sub_1000441E0("proc source registration handler invoked twice", v1, v2);
  }

  *(v3 + 1216) = v4 | 0x10;

  sub_10001FECC(v3, 2, 0);
}

uint64_t sub_10002B1A4(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, const char *a5)
{
  v6 = a4;
  if (sub_10000BAFC(a2))
  {
    v10 = sub_100046ABC(*(a1 + 1168), v6);
  }

  else
  {
    v10 = sub_100046AE0(a2, a3);
  }

  v11 = v10;
  if (v10)
  {
    sub_100054E5C(v10, a1, a5);
  }

  else
  {
    sub_100010B4C(570425424, *(a1 + 1168), v6);
    v12 = strsignal(v6);
    sub_100020018(a1, 5, "signaled service for %s: %s", a5, v12);
  }

  return v11;
}

uint64_t sub_10002B26C(uint64_t a1, void *a2, _OWORD *a3, int *a4)
{
  if (sub_10000BAFC(a2))
  {
    v8 = *(a1 + 1168);

    return j__proc_terminate(v8, a4);
  }

  else
  {

    return sub_1000469A8(a2, a3);
  }
}

void sub_10002B2F0(uint64_t a1)
{
  sub_100020018(a1, 5, "exceeded sigkill timeout: %u", dword_10007DC3C);
  sub_100020018(a1, 4, "Service did not exit %u seconds after SIGKILL.", dword_10007DC3C);
  memset(buffer, 0, sizeof(buffer));
  if (sub_100045BAC(*(a1 + 1168), buffer))
  {
    _os_assumes_log();
  }

  else if (HIDWORD(buffer[0]) == 5)
  {
    sub_100020018(a1, 5, "service is already a zombie");
    sub_100020D0C(a1, 0);
    return;
  }

  sub_100020018(a1, 5, "service is still not a zombie, abandoning");
  v2 = (*(a1 + 536))(a1, *(a1 + 568));
  if (v2)
  {
    v3 = v2;
    v4 = xpc_strerror();
    sub_100020018(a1, 5, "cannot safely abandon: %d: %s", v3, v4);
    sub_100020018(a1, 4, "Cannot safely abandon service instance. Leaving it to languish. This may lead to deadlocks.");
    sub_100027154(a1, 7);
    sub_10001FECC(a1, 6, 0);
  }

  else
  {
    sub_100020018(a1, 5, "abandoning");
    sub_100020018(a1, 4, "Abandoning service instance. This may lead to deadlocks.");
    v5 = *(a1 + 1168);
    global_queue = dispatch_get_global_queue(0, 0);
    v7 = dispatch_source_create(&_dispatch_source_type_proc, v5, 0x80000000uLL, global_queue);
    dispatch_set_context(v7, v7);
    dispatch_source_set_event_handler_f(v7, sub_10002B640);
    dispatch_activate(v7);
    sub_100020C74(a1);
  }
}

void sub_10002B4D4(uint64_t a1)
{
  v2 = *(a1 + 248);
  memset(v10, 0, sizeof(v10));
  if (byte_10007F0C4 != 1 || *(a1 + 1046) || sub_100032A18(v2) == qword_10007D8B8 && (v6 = sub_10003283C(), (sub_10002CF00(v6) & 1) == 0))
  {
    sub_100020018(a1, 4, "Service did not exit %u seconds after SIGTERM. Sending SIGKILL.", *(a1 + 848));
    v3 = sub_10000B7FC();
    sub_10002B1A4(a1, v3, v10, 9, "SIGTERM timeout");
  }

  else
  {
    sub_100020018(a1, 4, "Service did not exit %u seconds after SIGTERM. Terminating with a crash report.", *(a1 + 848));
    v7 = sub_1000468E8(*(a1 + 1168), 4u, "SIGTERM timeout", 0);
    if (v7)
    {
      v8 = v7;
      v9 = strerror(v7);
      sub_100020018(a1, 5, "could not terminate service after SIGTERM timeout: %d: %s", v8, v9);
    }
  }

  *(a1 + 1204) = 9;
  sub_100027154(a1, 6);
  v4 = *(a1 + 1192);
  v5 = dispatch_time(0, 1000000000 * dword_10007DC3C);
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(a1 + 1192), sub_10002B2F0);
}

void sub_10002B640(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  v6 = 0;
  if (waitpid(handle, &v6, 0) == -1)
  {
    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    sub_10004749C(3, "Could not reap abandoned service instance: %d: %s", v3, v5);
  }

  dispatch_release(a1);
}

uint64_t sub_10002B6B4(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  string_ptr = xpc_string_get_string_ptr(xstring);
  sub_100049ECC(v3, v4 + 2, "%s", v6, v7, v8, v9, v10, string_ptr);
  return 1;
}

uint64_t sub_10002B700(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  string_ptr = xpc_string_get_string_ptr(xstring);
  sub_100049ECC(v3, v4 + 2, "%s", v6, v7, v8, v9, v10, string_ptr);
  return 1;
}

xpc_type_t sub_10002B74C(uint64_t a1, xpc_object_t object, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 16);
  result = xpc_get_type(object);
  if (result == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(object);
    return sub_100049ECC(v5, v6, "%s => %s", v9, v10, v11, v12, v13, a1, string_ptr);
  }

  return result;
}

uint64_t sub_10002B7C0(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    string_ptr = xpc_string_get_string_ptr(object);
    sub_100049ECC(v6, v5 + 2, "%s", v8, v9, v10, v11, v12, string_ptr);
  }

  return 1;
}

uint64_t sub_10002B834(uint64_t result, uint64_t a2, FILE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!result)
  {
    sub_100054404();
  }

  if (a2)
  {
    sub_100049ECC(a3, a4, "%s coalition = {", a4, a5, a6, a7, a8, result);
    sub_100012F9C(a2, a3, a4 + 1, v12, v13, v14, v15, v16);
    sub_100049ECC(a3, a4, "}", v17, v18, v19, v20, v21);

    return sub_100049F4C(a3, v22, v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

void sub_10002B8DC(uint64_t a1, const char *a2, int a3)
{
  if (a3)
  {
    if (*(a1 + 16))
    {
      sub_10000FD40(a1, " | ");
    }

    sub_10000FD40(a1, "%s", a2);
  }
}

void *sub_10002B950(char *__s1)
{
  v2 = &off_100079138;
  v3 = 8;
  while (strcmp(__s1, *(v2 - 1)))
  {
    v2 += 2;
    if (!--v3)
    {
      sub_1000441E0("Unable to find boot task block for: %s", __s1);
    }
  }

  v4 = *v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10002BE68;
  aBlock[3] = &unk_1000791B0;
  aBlock[4] = v4;
  return _Block_copy(aBlock);
}

void sub_10002BA0C()
{
  if (sub_100001878())
  {

    sub_10004749C(65541, "Boot mode forced.");
  }

  else
  {
    v0 = getenv("XPC_USERSPACE_REBOOT_TO_BOOT_MODE");
    if (v0)
    {
      v1 = v0;
      if (sub_100001750(v0) != 7)
      {
        sub_1000441E0("userspace reboot into boot mode not allowed: %s", v1);
      }

      sub_10004749C(65541, "Setting boot mode to %s", v1);
      sub_1000017CC(7);
      if (setenv("XPC_IN_REM", "1", 1) == -1)
      {
        sub_10005453C();
      }

      v2 = unsetenv("XPC_USERSPACE_REBOOT_TO_BOOT_MODE");
      if (v2 < 0)
      {
        sub_10004749C(65540, "failed to unset env: XPC_USERSPACE_REBOOT_TO_BOOT_MODE: %d", v2);
      }
    }
  }
}

void sub_10002BB0C()
{
  if (sub_1000018D8(7))
  {
    v0 = getenv("XPC_IN_REM_DEVELOPMENT");
    if (sub_100016A6C(v0, "1"))
    {

      sub_10004749C(65541, "Not calling into AMFI to enable REM.");
    }

    else
    {
      sub_10004749C(65541, "Calling into AMFI to enable REM.");

      j__amfi_restricted_execution_mode_enable(v1);
    }
  }
}

void sub_10002BB9C(uint64_t a1, uint64_t a2)
{
  sub_10000184C(a1, a2);
  os_variant_init_4launchd();
  _os_trace_update_with_datavolume_4launchd();

  sub_10004E754();
}

void sub_10002BBCC()
{
  v0 = mkpath_np("/private/var/mobile/tmp", 0x1FFu);
  if (v0)
  {
    if (v0 == 17)
    {
      sub_100047654("fixup-mobile-tmp", 196613, "%s already exists, skipping");
      goto LABEL_16;
    }

    v11 = strerror(v0);
    v9 = "could not set create %s: %s";
LABEL_15:
    sub_100047654("fixup-mobile-tmp", 196611, v9, "/private/var/mobile/tmp", v11);
    goto LABEL_16;
  }

  if (chmod("/private/var/mobile/tmp", 0x3FFu) < 0)
  {
    v1 = __error();
    v2 = strerror(*v1);
    sub_100047654("fixup-mobile-tmp", 196611, "could not chmod 1777 on %s: %s", "/private/var/mobile/tmp", v2);
  }

  if (chown("/private/var/mobile/tmp", 0x1F5u, 0x1F5u) < 0)
  {
    v3 = __error();
    v4 = strerror(*v3);
    sub_100047654("fixup-mobile-tmp", 196611, "could not chown mobile/mobile %s: %s", "/private/var/mobile/tmp", v4);
  }

  v5 = open_dprotected_np("/private/var/mobile/tmp", 0, 0, 1);
  if (v5 == -1)
  {
    __error();
    v10 = __error();
    v11 = strerror(*v10);
    v9 = "could not open %s: %s";
    goto LABEL_15;
  }

  v6 = v5;
  if (fcntl(v5, 64, 4))
  {
    __error();
    v7 = __error();
    v8 = strerror(*v7);
    sub_100047654("fixup-mobile-tmp", 196611, "could not set protection class on %s: %s", "/private/var/mobile/tmp", v8);
  }

  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

LABEL_16:
  sub_100047654("fixup-mobile-tmp", 196613, "Finished boot task");
  byte_10007F050 = 1;
}

uint64_t sub_10002BD98()
{
  v0 = sub_100044024("/");
  v2 = v0;
  if ((v0 & 1) != 0 || (result = sub_100043F4C("/private/preboot"), v2 = result, result))
  {
    sub_10004749C(65541, "Found roots installed cookie");
    result = sysctlbyname("kern.roots_installed", 0, 0, &v2, 8uLL);
    if (result)
    {
      sub_100054420(result);
    }
  }

  return result;
}

void sub_10002BE1C()
{
  v0 = exclaves_boot();
  if (v0)
  {
    if (v0 != 46)
    {
      sub_10004749C(65541, "exclaves_boot failed: %d", v0);
    }
  }
}

uint64_t sub_10002BE7C(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v9 = 1;
  if (a2 <= 4)
  {
    if (a2 == 2)
    {
      return *(a5 + 4) != 0;
    }

    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v9;
      }

      goto LABEL_9;
    }

    if ((sub_1000336A8(a5) & 1) == 0)
    {
      if ((a3 & 8) != 0 && !sub_10001A604(a5, "job-creation", 1))
      {
        return v9;
      }

      if (!a6 || (sub_100017D88(a6) & 1) == 0)
      {
        if (*(a5 + 4))
        {
          return v9;
        }

        v13 = *(a5 + 20);
        if (v13 == getpid())
        {
          if (!a6)
          {
            return 0;
          }
        }

        else
        {
          v14 = sub_10001A604(a5, "job-creation", 1);
          v9 = !v14;
          if (!a6 || !v14)
          {
            return v9;
          }
        }

        v15 = *(a7 + 16) || (*(a7 + 4) & 0x12) != 0;
        if ((a3 & 0x10) == 0 && v15)
        {
          return 122;
        }

        else
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (a2 == 5)
  {
    if ((sub_1000336A8(a5) & 1) == 0)
    {
      if ((a3 & 8) == 0 || sub_10001A604(a5, "forbidden-launchd-operation", 1))
      {
        return !sub_10001A604(a5, "process-info-pidinfo", 1);
      }

      return v9;
    }

    return 0;
  }

  if (a2 == 6)
  {
    return 0;
  }

  if (a2 != 7)
  {
    return v9;
  }

LABEL_9:
  if (sub_1000336A8(a5))
  {
    return 0;
  }

  if ((a3 & 8) == 0 || sub_10001A604(a5, "forbidden-launchd-operation", 1))
  {
    if ((a3 & 4) != 0)
    {
      return 125;
    }

    return *(a5 + 4) != 0;
  }

  return v9;
}

void sub_10002C044(void *a1)
{
  sub_10002C908(a1, 5, "cleaning up");
  v2 = a1[4];
  v3 = a1[5];
  if (v2)
  {
    *(v2 + 40) = v3;
  }

  *v3 = v2;
  a1[4] = -1;
  a1[5] = -1;
  sub_10001B5B8(a1, 3);
  v4 = sub_1000157D8();

  dispatch_async_f(v4, a1, sub_1000335D8);
}

uint64_t sub_10002C0CC(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (!a1 || !(v13 = sub_1000443C8(a1)))
  {
    v16 = 1;
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        if ((a3 & 0x100) != 0)
        {
          if (sub_10000E554(a5, 16))
          {
            return 0;
          }

          else
          {
            return 144;
          }
        }

        return v16;
      }

      if (a2 == 2)
      {
        return 45;
      }

      if (a2 != 3 || (a3 & 8) != 0 && !sub_10001A604(a5, "job-creation", 1))
      {
        return v16;
      }

      if ((a3 & 1) != 0 && a6 && !*(a7 + 16) && (*(a7 + 4) & 0x12) == 0)
      {
        return 0;
      }

      if (*(a5 + 12) != a4)
      {
        return *(a5 + 4) != 0;
      }

      if (a6)
      {
        v18 = *(a7 + 16);
        if (!v18 && (*(a7 + 4) & 0x12) == 0)
        {
          return 0;
        }

        if (v18 != a4 || (*(a7 + 4) & 2) != 0)
        {
          return 122;
        }
      }

      return !sub_10001A604(a5, "job-creation", 1);
    }

    if (a2 > 5)
    {
      if (a2 == 6)
      {
        if (*(a5 + 12) == a4)
        {
          return 0;
        }

        else
        {
          return 144;
        }
      }

      if (a2 != 7)
      {
        return v16;
      }
    }

    else if (a2 != 4)
    {
      if ((a3 & 8) != 0 && !sub_10001A604(a5, "forbidden-launchd-operation", 1))
      {
        return v16;
      }

      v17 = "process-info-pidinfo";
      goto LABEL_32;
    }

    if ((a3 & 8) == 0)
    {
      goto LABEL_33;
    }

    v17 = "forbidden-launchd-operation";
LABEL_32:
    if (sub_10001A604(a5, v17, 1))
    {
LABEL_33:
      if (*(a5 + 12) == a4)
      {
        return 0;
      }

      return *(a5 + 4) != 0;
    }

    return v16;
  }

  return sub_10002BE7C(v13, a2, a3, v14, a5, a6, a7);
}

void sub_10002C304(void *a1)
{
  sub_10002C908(a1, 5, "cleaning up");
  if (a1[27])
  {
    v2 = sub_100014514(0x30uLL, 0x10A004003EBAF2CuLL);
    v2[4] = dword_10007F068;
    *(v2 + 3) = a1[27];
    a1[27] = 0;
    v3 = sub_1000157D8();
    dispatch_async_f(v3, v2, sub_1000336FC);
  }

  v4 = a1[4];
  v5 = a1[5];
  if (v4)
  {
    *(v4 + 40) = v5;
  }

  *v5 = v4;
  a1[4] = -1;
  a1[5] = -1;
  sub_10001B5B8(a1, 3);
  v6 = sub_1000157D8();

  dispatch_async_f(v6, a1, sub_1000335D8);
}

uint64_t sub_10002C3E8(uint64_t a1, int a2, char a3, unint64_t a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      if (!(a4 >> 31))
      {
        v19 = *(a5 + 20);
        if ((v19 & 0x80000000) == 0 && v19 == a4)
        {
          return 0;
        }
      }

      if (sub_10000E554(a5, 13))
      {
        return 0;
      }

      v20 = a5;
      v21 = 2;
      return sub_10000E554(v20, v21) ^ 1;
    }

    if (a2 == 2)
    {
      return 125;
    }

    if (a2 != 3)
    {
      return 1;
    }

    if (!a1)
    {
      return 131;
    }

    if (a6)
    {
      v12 = *(a1 + 120);
      if (v12 >> 31 || (v13 = *(a5 + 20), (v13 & 0x80000000) != 0) || v12 != v13)
      {
        if (sub_10000E554(a5, 2))
        {
          return 0;
        }

        else
        {
          return 144;
        }
      }

      if ((a3 & 1) != 0 || sub_100017D88(a6) && !*(a7 + 16) && (*(a7 + 4) & 0x12) == 0)
      {
        return 0;
      }

      v15 = *(a1 + 240);
      if (v15)
      {
        if (sub_1000169A8(a6, v15))
        {
          v16 = strlen(*(a1 + 240));
          v17 = &a6[v16];
          if (a6[v16 - 1] == 47 || strlen(a6) == v16 || *v17 == 47)
          {
            return 0;
          }
        }
      }

      if ((sub_10000E554(a5, 0) & 1) != 0 || sub_10000E554(a5, 1))
      {
        return 0;
      }
    }

    return 147;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      if (!(a4 >> 31) && (v9 = *(a5 + 20), (v9 & 0x80000000) == 0) && v9 == a4 || (v10 = *(a5 + 4)) == 0 || a1 && v10 == *(a1 + 56))
      {
        if (sub_10001A604(a5, "process-info-pidinfo", 1))
        {
          return 0;
        }
      }

      return 1;
    }

    if (!(a4 >> 31))
    {
      v22 = *(a5 + 20);
      if ((v22 & 0x80000000) == 0 && v22 == a4)
      {
        return 0;
      }
    }

    v20 = a5;
    v21 = 0;
    return sub_10000E554(v20, v21) ^ 1;
  }

  if (a2 != 6)
  {
    return 1;
  }

  v23 = *(a5 + 20);
  return (a4 & 0xFFFFFFFF80000000) != 0 || v23 != a4 || v23 < 0;
}

void sub_10002C61C(uint64_t a1)
{
  if ((*(a1 + 1017) & 0x20) != 0)
  {
    sub_1000441E0("system domain deallocated");
  }

  for (i = 336; i != 520; i += 8)
  {
    if (*(a1 + i))
    {
      sub_1000441E0("domain deallocated with services");
    }
  }

  if (os_map_str_count())
  {
    sub_1000441E0("domain deallocated with service stubs");
  }

  os_map_str_destroy();
  if (*(a1 + 960))
  {
    os_map_str_clear();
    os_map_str_destroy();
    free(*(a1 + 960));
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    --*(a1 + 80);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (*v3)
    {
      do
      {
        v6 = v5;
        *(v5 + 1) = v4;
        *v4 = v5;
        *v3 = -1;
        *(v3 + 1) = -1;
        sub_10001BAA8(v3);
        --*(a1 + 80);
        v5 = *v6;
        v4 = *(v6 + 1);
        v3 = v6;
      }

      while (*v6);
    }

    else
    {
      v6 = v3;
    }

    *v4 = 0;
    *v6 = -1;
    *(v6 + 1) = -1;
    sub_10001BAA8(v6);
  }

  if (*(a1 + 32) != -1 || *(a1 + 40) != -1)
  {
    sub_1000441E0("domain disposal while still in the domains list");
  }

  if (*(a1 + 16) != -1 || *(a1 + 24) != -1)
  {
    sub_1000441E0("domain disposal while still in the children list");
  }

  if (*(a1 + 208))
  {
    _os_assumes_log_ctx();
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    v8 = *v7;
    v9 = v7[1];
    if (*v7)
    {
      do
      {
        v10 = v8;
        v8[1] = v9;
        *v9 = v8;
        *v7 = -1;
        v7[1] = -1;
        j__free(v7);
        v8 = *v10;
        v9 = v10[1];
        v7 = v10;
      }

      while (*v10);
    }

    else
    {
      v10 = *(a1 + 96);
    }

    *v9 = 0;
    *v10 = -1;
    v10[1] = -1;
    j__free(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    do
    {
      v12 = *v11;
      if ((*(a1 + 1016) & 0x80) != 0)
      {
        sub_10004B2C8(dword_10007F068, v11[3]);
      }

      xpc_release(v11[3]);
      v13 = *v11;
      v14 = v11[1];
      if (*v11)
      {
        v13[1] = v14;
      }

      *v14 = v13;
      free(v11);
      v11 = v12;
    }

    while (v12);
  }

  free(*(a1 + 312));
  free(*(a1 + 968));
  v15 = *(a1 + 248);
  if (v15)
  {
    xpc_release(v15);
  }

  v16 = *(a1 + 240);
  if (v16)
  {
    free(v16);
  }

  v17 = *(a1 + 984);
  if (v17)
  {
    sub_10001B690(v17, 0);
  }

  v18 = *(a1 + 168);
  if (v18)
  {
    sub_10001C4DC(v18);
    *(a1 + 168) = 0;
  }

  v19 = *(a1 + 136);

  xpc_release(v19);
}

BOOL sub_10002C89C(id a1, const char *a2, void *a3)
{
  free(a2);
  free(a3);
  return 1;
}

void sub_10002C908(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v6 = sub_10002C974(a1, 2);
  sub_1000474DC(v6, a2, a3, va, v3);
  free(v6);
}

char *sub_10002C974(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
    sub_100054404();
  }

  v2 = a2;
  v4 = sub_10000FC98(0x80uLL, a2);
  v5 = v4;
  v6 = *(a1 + 112);
  if (v6 == &unk_10007D720)
  {
    sub_10000FD40(v4, "system");
  }

  else if (v6 == &unk_10007D830)
  {
    sub_10000FD40(v4, "gui/%u");
  }

  else
  {
    sub_10000FD40(v4, "%s/%lu");
  }

  if (v2 == 2)
  {
    v7 = *(a1 + 112);
    if (v7 == qword_10007D8B8)
    {
      sub_10000FD40(v5, " [%s]");
    }

    else if (v7 == &unk_10007D830)
    {
      sub_10000FD40(v5, " [%lu]");
    }
  }

  v8 = sub_10000FCFC(v5);
  sub_10000FD04(v5);
  return v8;
}

uint64_t sub_10002CAD8(uint64_t a1, _DWORD *a2)
{
  v2 = 6;
  for (i = &off_10007DA58; *i != a1; i += 2)
  {
    if (!--v2)
    {
      *a2 = 112;
      return 0xFFFFFFFFLL;
    }
  }

  *a2 = 0;
  return *(i - 2);
}

uint64_t sub_10002CB18(int a1)
{
  v1 = &off_10007DA58;
  v2 = 6;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

void sub_10002CB4C(uint64_t result, int a2)
{
  v2 = *(result + 208);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 8) == a2)
      {
        sub_10004B52C(*(v2 + 4), v2[3]);
        v5 = *v2;
        v6 = v2[1];
        if (*v2)
        {
          v5[1] = v6;
        }

        *v6 = v5;
        *v2 = -1;
        v2[1] = -1;
      }

      v2 = v4;
    }

    while (v4);
  }
}

void sub_10002CBB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    do
    {
      v4 = *v2;
      if (*(v2 + 8) == a2)
      {
        v5 = sub_1000157D8();
        dispatch_async_f(v5, v2, sub_1000336FC);
        v6 = *v2;
        v7 = v2[1];
        if (*v2)
        {
          v6[1] = v7;
        }

        *v7 = v6;
        *v2 = -1;
        v2[1] = -1;
      }

      v2 = v4;
    }

    while (v4);
  }
}

void *sub_10002CC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 188);
  *(a1 + 188) = v2 + 1;
  if (v2 < 0)
  {
    sub_1000441E0("underflow of active count during activate", a2);
  }

  if (v2)
  {

    return sub_10001BB18(a1, a2);
  }

  else
  {
    if ((*(a1 + 1016) & 0x10) != 0)
    {
      sub_1000441E0("activation of deactivated domain", a2);
    }

    return sub_10001B5B8(a1, a2);
  }
}

void sub_10002CCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 188);
  *(a1 + 188) = v2 - 1;
  if (v2 <= 0)
  {
    sub_1000441E0("underflow of active count during deactivate", a2);
  }

  if (v2 == 1)
  {
    v5 = *(a1 + 1016);
    if ((v5 & 1) == 0)
    {
      sub_1000441E0("inactive domain is not shutting down");
    }

    if ((v5 & 0x10) != 0)
    {
      sub_1000441E0("domain already deactivated");
    }

    for (i = 336; i != 520; i += 8)
    {
      if (*(a1 + i))
      {
        sub_1000441E0("domain cleaning up with services still in list");
      }
    }

    if ((v5 & 0x800) != 0)
    {
      sub_10003E0F4();
      v5 = *(a1 + 1016);
    }

    *(a1 + 1016) = v5 | 0x10;
    v7 = *(a1 + 112);
    if (*(v7 + 128))
    {
      v8 = *(a1 + 136);
      if (v8)
      {
        LODWORD(v8) = xpc_mach_send_get_right();
      }

      sub_10004AE6C(v8);
      v7 = *(a1 + 112);
    }

    (*(v7 + 96))(a1);

    sub_10001B690(a1, a2);
  }

  else
  {

    sub_10001BB40(a1, a2);
  }
}

void sub_10002CDD4(uint64_t a1)
{
  sub_10002C908(a1, 5, "slaying domain");
  v2 = *(a1 + 1016);
  if (v2 & 2) != 0 || (v2)
  {

    sub_10002C908(a1, 5, "already shutting down or slain");
  }

  else
  {
    if (*(a1 + 152))
    {
      sub_10001BB40(a1, 10);
      dispatch_set_context(*(a1 + 152), *(a1 + 152));
      dispatch_source_cancel(*(a1 + 152));
      *(a1 + 152) = 0;
      *(a1 + 184) = 0;
      v2 = *(a1 + 1016);
    }

    if (*(a1 + 144))
    {
      if ((v2 & 0x200) != 0)
      {
        sub_10002C908(a1, 5, "uncorking exec source for disposal");
        dispatch_activate(*(a1 + 144));
        *(a1 + 1016) &= ~0x200u;
      }

      sub_10001BB40(a1, 12);
      dispatch_release(*(a1 + 144));
      *(a1 + 144) = 0;
      v2 = *(a1 + 1016);
    }

    *(a1 + 1016) = v2 | 2;
    v3 = sub_1000157D8();

    dispatch_async_f(v3, a1, sub_10002CF10);
  }
}

void sub_10002CF10(unint64_t a1)
{
  if (*(a1 + 1016))
  {
    sub_1000441E0("multiple invocations of death handler for domain");
  }

  sub_10002C908(a1, 5, "shutting down");
  if (*(a1 + 112) == &unk_10007D720)
  {
    sub_100014840(v2, v3);
  }

  *(a1 + 272) = mach_absolute_time();
  *(a1 + 1016) |= 2u;
  sub_1000145F8(a1, 3);
  for (i = 0; i != 7; ++i)
  {
    while (1)
    {
      v5 = *(a1 + 648 + 8 * i);
      if (!v5)
      {
        break;
      }

      sub_10002C908(a1, 5, "removing unmanaged service: %s", (v5 + 1424));
      sub_10003467C(a1, v5);
      if (*(v5 + 152))
      {
        sub_10002C908(a1, 3, "Unmanaged service with non-dynamic endpoints: %s", (v5 + 1424));
        v6 = *(v5 + 152);
        if (v6)
        {
          do
          {
            v7 = *(v6 + 16);
            sub_10002C908(a1, 3, "Removing unexpected non-dynamic endpoint: %s", (v6 + 168));
            sub_10004D3E4(v6);
            v6 = v7;
          }

          while (v7);
        }
      }

      if (*(v5 + 176))
      {
        sub_10002C908(a1, 3, "Unmanaged service with event endpoints: %s", (v5 + 1424));
        v8 = *(v5 + 176);
        if (v8)
        {
          do
          {
            v9 = *(v8 + 16);
            sub_10002C908(a1, 3, "Removing unexpected event endpoint: %s", (v8 + 168));
            sub_10004D3E4(v8);
            v8 = v9;
          }

          while (v9);
        }
      }

      v10 = *(v5 + 160);
      if (v10)
      {
        do
        {
          v11 = *(v10 + 16);
          sub_10002C908(a1, 5, "removing unmanaged endpoint: %s", (v10 + 168));
          sub_10004D3E4(v10);
          v10 = v11;
        }

        while (v11);
      }

      v12 = *(v5 + 168);
      if (v12)
      {
        do
        {
          v13 = *(v12 + 16);
          sub_10002C908(a1, 5, "removing unmanaged pid-local endpoint: %s", (v12 + 168));
          sub_10004D3E4(v12);
          v12 = v13;
        }

        while (v13);
      }

      if (*(v5 + 300) >= 3)
      {
        sub_1000441E0("extra activation on unmanaged service");
      }

      sub_100033864(a1, v5);
    }
  }

  sub_1000145F8(a1, 4);
  v14 = *(a1 + 328);
  while (v14)
  {
    v15 = v14;
    v14 = *(v14 + 104);
    sub_10002C908(a1, 5, "removing semi-active service: %s", (v15 + 1424));
    v16 = sub_10000B7FC();
    v17 = sub_10002DDAC(a1, v16, v15);
    if (v17 && v17 != 36)
    {
      sub_1000441E0("failure to remove semi-active service");
    }
  }

  sub_1000145F8(a1, 5);
  for (j = 0; j != 13; ++j)
  {
    v19 = *(a1 + 544 + 8 * j);
    while (v19)
    {
      while (1)
      {
        v20 = v19;
        v19 = *(v19 + 88);
        sub_10002C908(a1, 5, "removing active service: %s", (v20 + 1424));
        v21 = sub_10000B7FC();
        v22 = sub_10002DDAC(a1, v21, v20);
        if (v22)
        {
          if (v22 != 36)
          {
            break;
          }
        }

        if (!v19)
        {
          goto LABEL_30;
        }
      }

      _os_assumes_log_ctx();
    }

LABEL_30:
    ;
  }

  sub_1000145F8(a1, 6);
  for (k = 0; k != 23; ++k)
  {
    v24 = *(a1 + 336 + 8 * k);
    while (v24)
    {
      v25 = v24;
      v24 = *(v24 + 120);
      if (!*(v25 + 300) && (*(v25 + 368) & 1) == 0)
      {
        v26 = sub_10000B7FC();
        if (sub_10002DDAC(a1, v26, v25))
        {
          sub_1000441E0("failed to remove inactive service");
        }
      }
    }
  }

  os_map_str_clear();
  sub_1000145F8(a1, 7);
  for (m = 0; m != 31; ++m)
  {
    v28 = *(a1 + 704 + 8 * m);
    if (v28)
    {
      do
      {
        v29 = v28[4];
        if (v28[9])
        {
          sub_100033FA0(v28);
        }

        v28 = v29;
      }

      while (v29);
    }
  }

  sub_1000145F8(a1, 8);
  for (n = *(a1 + 320); n; n = *(n + 16))
  {
    sub_10002CDD4(n);
  }

  sub_1000145F8(a1, 9);
  *(a1 + 1016) |= 1u;
  if (*(a1 + 152))
  {
    sub_10001BB40(a1, 10);
    dispatch_set_context(*(a1 + 152), *(a1 + 152));
    dispatch_source_cancel(*(a1 + 152));
    *(a1 + 152) = 0;
    *(a1 + 184) = 0;
  }

  if (*(a1 + 144))
  {
    if ((*(a1 + 1017) & 2) != 0)
    {
      sub_10002C908(a1, 5, "uncorking exec source for disposal");
      dispatch_activate(*(a1 + 144));
      *(a1 + 1016) &= ~0x200u;
    }

    sub_10001BB40(a1, 12);
    dispatch_release(*(a1 + 144));
    *(a1 + 144) = 0;
  }

  sub_1000145F8(a1, 10);
  sub_10002CB4C(a1, 1);
  if (*(a1 + 112) == &unk_10007D720 && qword_10007E7C0)
  {
    dispatch_release(qword_10007E7C0);
  }

  v31 = *(a1 + 160);
  if (v31)
  {
    dispatch_source_cancel(v31);
    *(a1 + 160) = 0;
  }

  sub_1000145F8(a1, 11);

  sub_10002CCB4(a1, 11);
}