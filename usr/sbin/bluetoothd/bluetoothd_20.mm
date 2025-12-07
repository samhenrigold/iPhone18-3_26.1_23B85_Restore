uint64_t sub_10019CBAC(__int128 *a1, unsigned __int16 *a2, unsigned int a3)
{
  if (a3 <= 3)
  {
    *buf = 264;
    buf[2] = 4;
    return sub_100196E20(a1, buf, 3, 0);
  }

  v5 = *a2;
  v6 = a2[1];
  if (sub_10000C240())
  {
    sub_10000AF54("Received create channel for service %d, CID = %d from %p !", v6, v5, a1);
    v7 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v25 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1000B6E74(a1) || (v8 = sub_1000B7E7C(a1), v8 == -1))
  {
    v14 = a1;
    v15 = 1;
    return sub_10019FE00(v14, v15, v6, v5, 0);
  }

  v9 = v8;
  v10 = *(&xmmword_100B5A1A0 + v8);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = *(v10 + 8);
  v13 = 80;
  while (*(v12 + v13 - 40) != v6)
  {
    v13 += 88;
    if (!--v11)
    {
      goto LABEL_18;
    }
  }

  v16 = word_100B5A220;
  if (!word_100B5A220)
  {
LABEL_18:
    v14 = a1;
    v15 = 5;
    return sub_10019FE00(v14, v15, v6, v5, 0);
  }

  v17 = 0;
  v18 = v12 + v13 - 80;
  v19 = &byte_100B5A23C;
  while (!sub_100198FFC(v18, v17))
  {
    ++v17;
    v19 += 72;
    if (v16 == v17)
    {
      goto LABEL_18;
    }
  }

  if (*(v19 - 4) == 1)
  {
    if (sub_1000CC63C(a1))
    {
      v10 = *(&xmmword_100B5A1A0 + v9);
      goto LABEL_24;
    }

    v14 = a1;
    v15 = 3;
    return sub_10019FE00(v14, v15, v6, v5, 0);
  }

LABEL_24:
  if ((dword_100B5A90C & 0x10) != 0 && (*(v10 + 52) & 0x10) != 0)
  {
    v20 = 2576;
  }

  else
  {
    v20 = 2042;
  }

  if (sub_10019ABC0(a1, v9, *(v10 + 8) + v13 - 80, 1, v20))
  {
    v14 = a1;
    v15 = 6;
    return sub_10019FE00(v14, v15, v6, v5, 0);
  }

  *(sub_1000B12AC(*(*(*(&xmmword_100B5A1A0 + v9) + 8) + v13 - 16)) + 8) = v5;
  result = sub_10019FE00(a1, 0, v6, v5, *(*(*(*(&xmmword_100B5A1A0 + v9) + 8) + v13 - 16) + 4));
  v21 = *(*(&xmmword_100B5A1A0 + v9) + 8);
  if (result)
  {
    result = sub_10028E908(*(v21 + v13 - 16));
    *(*(*(&xmmword_100B5A1A0 + v9) + 8) + v13 - 16) = 0;
  }

  else
  {
    v22 = (v21 + v13);
    *(v22 - 14) = *(*(v22 - 2) + 4);
    *v22 = v19[5];
    v23 = *(v19 + 20);
    if (v23)
    {
      return v23(a1);
    }
  }

  return result;
}

void sub_10019CEC4(__int128 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown peer.");
      v9 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v7 = v6;
    if (!sub_1000B6E74(a1))
    {
      *buf = 264;
      v8 = 1;
      goto LABEL_9;
    }

    if (a3 <= 4)
    {
      *buf = 264;
      v8 = 4;
LABEL_9:
      buf[2] = v8;
      sub_100196E20(a1, buf, 3, 0);
      return;
    }

    v10 = *a2;
    v11 = *(a2 + 1);
    v12 = *(a2 + 3);
    if (sub_10000C240())
    {
      sub_10000AF54("Received accept channel for service %d, CID = %d from %p !", v11, v12, a1);
      v13 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v25 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v14 = *(&xmmword_100B5A1A0 + v7);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = *(v14 + 8);
      v18 = &byte_100B5A241;
      while (*(v17 + v16 + 40) != v11)
      {
        v18 += 72;
        v16 += 88;
        if (!--v15)
        {
          return;
        }
      }

      v19 = *(v17 + v16 + 64);
      if (v19)
      {
        if (v10)
        {
          sub_10028E908(v19);
          *(*(*(&xmmword_100B5A1A0 + v7) + 8) + v16 + 64) = 0;
        }

        else
        {
          *(sub_1000B12AC(v19) + 8) = v12;
          *(sub_1000B12AC(*(*(*(&xmmword_100B5A1A0 + v7) + 8) + v16 + 64)) + 16) = 4;
          v20 = *(*(&xmmword_100B5A1A0 + v7) + 8) + v16;
          *(v20 + 80) = *v18;
          *(v20 + 52) = *(*(v20 + 64) + 4);
          v21 = word_100B5A220;
          if (word_100B5A220)
          {
            for (i = &byte_100B5A23C; *(i - 1) != v11; i += 72)
            {
              if (!--v21)
              {
                return;
              }
            }

            v23 = *(i + 20);
            if (v23)
            {
              v23(a1);
            }
          }
        }
      }
    }
  }
}

void sub_10019D160(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if (!sub_10019F974(v6))
  {
    return;
  }

  if (a3 <= 4)
  {
    *buf = 264;
    v8 = 4;
LABEL_7:
    buf[2] = v8;
    sub_100196E20(a1, buf, 3, 0);
    return;
  }

  if (sub_1000B6E74(a1))
  {
LABEL_6:
    *buf = 264;
    v8 = 1;
    goto LABEL_7;
  }

  v9 = *a2;
  v35 = *a2;
  if (*(a2 + 3) >= 0x20u)
  {
    v10 = 32;
  }

  else
  {
    v10 = *(a2 + 3);
  }

  if (!*(a2 + 3) || v10 + 4 > a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service name length (%d) doesn't match data size (%d).", v10, a3);
      v11 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (a3 - v10 == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a2 + v10 + 4);
  }

  v13 = *(a2 + 2);
  if (sub_10000C240())
  {
    sub_10000AF54("Received service added on lm 0x%4x with service ID %d, eRTM %d", *a1, v9, v12 & 1);
    v14 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v37 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!sub_10019FB14(v7, a2 + 2, v10, a1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Service ID %d is not supported. OI_STATUS_WATCH_TS_REMOTE_UNSUPPORTED", v9);
    v32 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_49:
    sub_1000E09C0();
    return;
  }

  v15 = *(&xmmword_100B5A1A0 + v7);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    while (v17[10] != v9)
    {
      if (sub_100198434(v17, a2 + 2, v10, v13))
      {
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Already have this service name for this peer !");
        v34 = sub_10000C050(0x51u);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_49;
      }

      v17 += 22;
      if (!--v18)
      {
        goto LABEL_29;
      }
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Already have this service ID for this peer !");
    v33 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_29:
  v19 = sub_1001BBBD8(88 * (v16 + 1), 0x1020040CA479C79uLL);
  if (v19)
  {
    v20 = v19;
    v21 = *(&xmmword_100B5A1A0 + v7);
    v22 = *(v21 + 8);
    if (v22)
    {
      memmove(v19, v22, 88 * *(v21 + 16));
      sub_10000C1E8(*(*(&xmmword_100B5A1A0 + v7) + 8));
      v21 = *(&xmmword_100B5A1A0 + v7);
    }

    v23 = &v20[88 * *(v21 + 16)];
    *(v23 + 8) = v10;
    *(v23 + 9) = v13;
    *(v23 + 10) = v9;
    *(v23 + 44) = 0x100000001;
    memmove(v23, a2 + 2, v10);
    v24 = *(&xmmword_100B5A1A0 + v7);
    v25 = *(v24 + 16);
    v26 = &v20[88 * v25];
    *(v26 + 8) = 0;
    v26[56] = v12 & 1;
    v26[57] = (v12 & 2) != 0;
    *(v26 + 26) = 0;
    *(v24 + 8) = v20;
    *(v24 + 16) = v25 + 1;
    v27 = word_100B5A220;
    if (word_100B5A220)
    {
      if (v10 >= 0xF)
      {
        v28 = 15;
      }

      else
      {
        v28 = v10;
      }

      v29 = 0;
      v30 = byte_100B5A198 | (memcmp("com.apple.BT.TS", a2 + 2, v28) != 0);
      v31 = &byte_100B5A23C;
      while ((v30 & 1) == 0 || !sub_100198FFC(&v20[88 * v25], v29))
      {
        ++v29;
        v31 += 72;
        if (v27 == v29)
        {
          return;
        }
      }

      v20[88 * v25 + 54] = *v31;
      sub_1001984B8(a1, 1u, &v35);
    }
  }
}

void sub_10019D5BC(__int128 *a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service removed error: Invalid peer");
      v10 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    *buf = 264;
    v9 = 1;
    goto LABEL_12;
  }

  v7 = v6;
  if (!sub_10019F974(v6))
  {
    return;
  }

  if (a3 <= 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service removed error  Invalid peer");
      v8 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    *buf = 264;
    v9 = 4;
LABEL_12:
    buf[2] = v9;
    sub_100196E20(a1, buf, 3, 0);
    return;
  }

  v11 = *a2;
  v12 = *(&xmmword_100B5A1A0 + v7);
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_17:
    if (sub_10000C240())
    {
      sub_10000AF54("Got a remove request but can't find a service to remove.");
      v17 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_60;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(v12 + 8) + 40;
  while (*(v16 + v14) != v11)
  {
    ++v15;
    v14 += 88;
    if (v13 == v15)
    {
      goto LABEL_17;
    }
  }

  if (sub_10000C240())
  {
    v18 = *(*(&xmmword_100B5A1A0 + v7) + 8);
    v19 = v18 + v14;
    v20 = *(v18 + v14 + 44);
    v21 = v20 > 2 ? "unknown CL service state" : off_100AE4BC8[v20];
    v22 = *(v19 + 40);
    v23 = *(v19 + 48);
    v24 = v23 > 2 ? "unknown CL service state" : off_100AE4BC8[v23];
    sub_10000AF54("Received service removed on peerID %d, channelID %d, serviceID %d, ServiceState [local %s, remote %s], channel 0x%x", v7, v15, v22, v21, v24, *(v18 + v14 + 64));
    v25 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v48 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v26 = *(*(&xmmword_100B5A1A0 + v7) + 8) + v14;
  *(v26 + 48) = 2;
  if (!*(v26 + 64))
  {
    v29 = sub_1000B6E74(a1);
    v30 = *(&xmmword_100B5A1A0 + v7);
    if (v29 && (*(*(v30 + 8) + v14 + 55) & 1) == 0)
    {
      sub_1000D660C();
      v30 = *(&xmmword_100B5A1A0 + v7);
    }

    v31 = *(v30 + 8);
    if (*(v31 + v14 + 44) == 2)
    {
      if (!sub_10000C240())
      {
        goto LABEL_64;
      }

      sub_10000AF54("Initiated service removal, but received service removed, delay channel removal until remove cfm is received");
      v32 = sub_10000C050(0x51u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

LABEL_59:
      v39 = sub_10000C0FC();
      *buf = 136446210;
      v48 = v39;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
LABEL_64:
      v40 = a1;
      v41 = v11;
      v42 = 0;
      goto LABEL_65;
    }

    v43 = *(v30 + 16) - 1;
    *(v30 + 16) = v43;
    memmove((v31 + v14), (v31 + 88 * v43), 0x58uLL);
    v44 = *(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v43;
LABEL_63:
    *(v44 + 80) = 0;
    *(v44 + 48) = 0u;
    *(v44 + 64) = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0u;
    *v44 = 0u;
    goto LABEL_64;
  }

  if (!word_100B5A220)
  {
    v27 = 0;
    goto LABEL_48;
  }

  v27 = 0;
  v28 = &byte_100B5A23D;
  while ((!sub_1000B6E74(a1) || !sub_100198F90((*(*(&xmmword_100B5A1A0 + v7) + 8) + v14), v27)) && (sub_1000B6E74(a1) || !sub_100198FFC(*(*(&xmmword_100B5A1A0 + v7) + 8) + v14, v27)))
  {
    ++v27;
    v28 += 72;
    if (v27 >= word_100B5A220)
    {
      goto LABEL_48;
    }
  }

  if (*v28 != 1 || sub_1000B6E74(a1))
  {
LABEL_48:
    if (v27 < word_100B5A220)
    {
      v33 = &qword_100B5A228[9 * v27];
      if (*(v33 + 20) == 13)
      {
        *(*(&xmmword_100B5A1A0 + v7) + 75) = 0;
        if (sub_10019496C(a1, 0))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Force upgrade TS not ready B");
            v34 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = sub_10000C0FC();
              *buf = 136446210;
              v48 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }
        }
      }

      v36 = v33[6];
      v37 = *(&xmmword_100B5A1A0 + v7);
      if (v36)
      {
        v36(*(*(v37 + 8) + v14 + 52), 5101);
        v37 = *(&xmmword_100B5A1A0 + v7);
      }

      v38 = *(v37 + 8) + v14;
      if (*(v38 + 44) == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_64;
        }

        sub_10000AF54("Initiated service removal, but received service removed, delay channel removal until remove cfm is received");
        v32 = sub_10000C050(0x51u);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      v45 = *(v37 + 16) - 1;
      *(v37 + 16) = v45;
      sub_10028E908(*(v38 + 64));
      v46 = *(*(&xmmword_100B5A1A0 + v7) + 8);
      memmove((v46 + v14), (v46 + 88 * v45), 0x58uLL);
      v44 = *(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v45;
      goto LABEL_63;
    }

LABEL_60:
    v40 = a1;
    v41 = v11;
    v42 = 5;
LABEL_65:
    sub_1001A0040(v40, v41, v42);
  }
}

void sub_10019DB98(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (a3 < 3)
  {
    return;
  }

  v7 = v6;
  if (v6 == -1)
  {
    return;
  }

  v8 = *a2;
  if (sub_10000C240())
  {
    v9 = sub_1000B6E74(a1);
    v10 = "Peripheral";
    if (v9)
    {
      v10 = "Central";
    }

    sub_10000AF54("%s received service remove confirmation for id %d", v10, v8);
    v11 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v69 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = *(&xmmword_100B5A1A0 + v7);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (*(v14 + 40) == v8)
    {
      v15 = 0;
      v67 = 0;
LABEL_15:
      if (sub_10000C240())
      {
        v18 = *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v15 + 44);
        v19 = v18 > 2 ? "unknown CL service state" : off_100AE4BC8[v18];
        sub_10000AF54("Removal confirmed and local service exists, removing while in state %s ", v19);
        v22 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sub_10000C0FC();
          *buf = 136446210;
          v69 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v24 = *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v15 + 32);
      if (v24 >= 0x20)
      {
        v20 = 32;
      }

      else
      {
        v20 = v24;
      }

      v25 = sub_100007618(v20, 0xF0F4909DuLL);
      v21 = v25;
      if (v25)
      {
        memmove(v25, (*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v15), v20);
      }

      v64 = *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v15 + 36);
      v26 = sub_1000B6E74(a1);
      v27 = *(&xmmword_100B5A1A0 + v7);
      if (v26 || (v31 = *(v27 + 8) + 88 * v15, *(v31 + 48) == 2) && *(v31 + 44) == 2)
      {
        v28 = *(v27 + 16);
        if (v28 || (sub_1000D660C(), v27 = *(&xmmword_100B5A1A0 + v7), (v28 = *(v27 + 16)) != 0))
        {
          v29 = v28 - 1;
          *(v27 + 16) = v28 - 1;
          memmove((*(v27 + 8) + 88 * v15), (*(v27 + 8) + 88 * (v28 - 1)), 0x58uLL);
          v30 = *(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v29;
          *(v30 + 80) = 0;
          *(v30 + 48) = 0u;
          *(v30 + 64) = 0u;
          *(v30 + 16) = 0u;
          *(v30 + 32) = 0u;
          *v30 = 0u;
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("PeerID %d nb channels was zero when serviced was removed", v63);
          v62 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Peripheral resetting service-state for id %d, channel %d", v8, v15);
          v32 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = sub_10000C0FC();
            *buf = 136446210;
            v69 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v15 + 44) = 0x100000001;
      }

      goto LABEL_37;
    }

    v15 = 0;
    v16 = (v14 + 128);
    while (v13 - 1 != v15)
    {
      v17 = *v16;
      v16 += 22;
      ++v15;
      if (v17 == v8)
      {
        v67 = v15 >= v13;
        goto LABEL_15;
      }
    }
  }

  v64 = 0;
  v20 = 0;
  v21 = 0;
  v67 = 1;
LABEL_37:
  __s2 = v21;
  v66 = v20;
  v34 = word_100B5A19A;
  if (word_100B5A19A)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      if (*(*(&xmmword_100B5A1A0 + v35) + 16))
      {
        v37 = 0;
        v38 = 40;
        do
        {
          if (sub_1000B6E74(a1) && *(*(*(&xmmword_100B5A1A0 + v35) + 8) + v38) == v8)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Central waiting for more");
              v39 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = sub_10000C0FC();
                *buf = 136446210;
                v69 = v40;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v36 = 1;
          }

          ++v37;
          v38 += 88;
        }

        while (v37 < *(*(&xmmword_100B5A1A0 + v35) + 16));
        v34 = word_100B5A19A;
      }

      ++v35;
    }

    while (v35 < v34);
  }

  else
  {
    v36 = 0;
  }

  if ((v36 & 1) != 0 || !word_100B5A220)
  {
LABEL_82:
    v52 = __s2;
  }

  else
  {
    v41 = 0;
    v42 = qword_100B5A228;
    while (1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("receivedServiceRemovedCfm:  unregistering service[%d]= %d", v41, v8);
        v43 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = sub_10000C0FC();
          *buf = 136446210;
          v69 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      if (sub_1000B6E74(a1) && v8 == *(v42 + 9))
      {
        break;
      }

      if (((v67 | sub_1000B6E74(a1)) & 1) == 0)
      {
        v45 = &qword_100B5A228[9 * v41];
        if (v66 == *(v45 + 8) && !memcmp(*v45, __s2, v66))
        {
          v46 = *(v45 + 3);
          v47 = v64 == 1 && v46 == 0;
          v48 = v47;
          v49 = !v64 && v46 == 1;
          v50 = v49;
          v51 = v46 == 2 && v64 == 2;
          if (v51 || v48 || v50)
          {
            break;
          }
        }
      }

      ++v41;
      v42 += 9;
      if (v41 >= word_100B5A220)
      {
        goto LABEL_82;
      }
    }

    if (*(v42 + 21) && (!sub_1000B6E74(a1) || *(v42 + 9) == v8))
    {
      v54 = v42[8];
      v52 = __s2;
      if (sub_10000C240())
      {
        sub_10000AF54("Found matching services, unregistering serviceID %d, unregisterCb %p", v8, v54);
        v55 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = sub_10000C0FC();
          *buf = 136446210;
          v69 = v56;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v57 = *(v42 + 3);
      if (!__s2)
      {
        v58 = *(v42 + 8) >= 0x20u ? 32 : *(v42 + 8);
        v66 = v58;
        v59 = sub_100007618(v58, 0x2AA3C139uLL);
        v52 = v59;
        if (v59)
        {
          memmove(v59, *v42, v58);
        }
      }

      sub_10000C1E8(*v42);
      v60 = &qword_100B5A228[9 * --word_100B5A220];
      memmove(v42, v60, 0x48uLL);
      *v60 = 0u;
      *(v60 + 1) = 0u;
      *(v60 + 2) = 0u;
      *(v60 + 3) = 0u;
      v60[8] = 0;
      if (v54)
      {
        v54(v52, v66, v57);
      }
    }

    else
    {
      v52 = __s2;
      if (sub_10000C240())
      {
        sub_10000AF54("Got an unregister for something not being unregistered...");
        v61 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  if (v67 && !(v36 & 1 | (word_100B5A220 == 0)) && !sub_1000B6E74(a1) && sub_10000C240() && (sub_10000AF54("receivedServiceRemovedCfm: ignored, no matching local service"), v53 = sub_10000C050(0x51u), os_log_type_enabled(v53, OS_LOG_TYPE_ERROR)))
  {
    sub_1000E09C0();
    if (!v52)
    {
      return;
    }
  }

  else if (!v52)
  {
    return;
  }

  sub_10000C1E8(v52);
}

uint64_t sub_10019E3F0(void *a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Signaling error %d", *(a2 + 2));
    v4 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  result = sub_1000B7E7C(a1);
  if (result == -1 || (v6 = result, v7 = *(&xmmword_100B5A1A0 + result), (*(v7 + 73) & 1) != 0) || *(v7 + 74) != 1 || (result = sub_1000B6E74(a1), !result))
  {
    if (off_100BC9CA0)
    {
      return off_100BC9CA0(a1, 81, 3221, *(a2 + 2));
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received an Error response from the other side, we're not rxOK yet, and we're central, and we're pending version, this is a response for version msg");
      v8 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v10 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(*(&xmmword_100B5A1A0 + v6) + 74) = 0;
    sub_10019F180(a1);
    return sub_100197374(a1);
  }

  return result;
}

void sub_10019E584(unsigned __int16 *a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    sub_1000D660C();
  }

  if (*(*(&xmmword_100B5A1A0 + v2) + 72))
  {
    sub_1000D660C();
  }

  if (v2 != -1)
  {
    v3 = *(&xmmword_100B5A1A0 + v2);
    if ((*(v3 + 72) & 1) == 0)
    {
      *(v3 + 72) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("AssertPower for lm 0x%4x", *a1);
        v4 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v26 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1000C2558();
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1000B7E7C(a1);
  if (v5 == -1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection peerID is invalid");
    v14 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_23:
    sub_1000E09C0();
    return;
  }

  v6 = v5;
  v7 = *(*(&xmmword_100B5A1A0 + v5) + 48);
  if (v7 <= 7)
  {
    v8 = 20;
  }

  else
  {
    v8 = 21;
  }

  if (v7 <= 7)
  {
    v9 = 20;
  }

  else
  {
    v9 = 21;
  }

  v10 = sub_100007618(v9, 0x7A4486FCuLL);
  if (!v10)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection memory allocation failed");
    v15 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_23;
  }

  v11 = v10;
  sub_1001BADC4(&v24);
  sub_1001BAE20(&v23);
  sub_1001BAD68(&v22);
  v12 = v22 / 60;
  *v11 = 113;
  if (*(*(&xmmword_100B5A1A0 + v6) + 48) < 8u)
  {
    v13 = 2;
  }

  else
  {
    v11[2] = 0;
    v13 = 3;
  }

  v11[1] = 18;
  v16 = &v11[v13];
  *v16 = HIDWORD(v24);
  v17 = WORD1(v24);
  *(v16 + 2) = v24;
  *(v16 + 3) = v17;
  v18 = HIWORD(v23);
  *(v16 + 4) = WORD2(v23);
  *(v16 + 5) = v18;
  v19 = WORD1(v23);
  *(v16 + 6) = v23;
  *(v16 + 7) = v19;
  *(v16 + 8) = v12;
  *(qword_100B5A8F0 + 128) = sub_1001A0214;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending time info t1={%u,%u}, m1={%u,%u} GMT:%d index %d", v24, HIDWORD(v24), v23, HIDWORD(v23), v12, v13 + 18);
    v20 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = sub_10000C0FC();
      *buf = 136446210;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_100196E20(a1, v11, v8, 1))
  {
    sub_100199E24(a1);
  }
}

void sub_10019E914(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14 = 0;
  sub_1001BAE20(&v14);
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid peer for time data");
      v8 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }
  }

  else if (a3 > 0xF)
  {
    v9 = v6;
    v10 = *(&xmmword_100B5A1A0 + v6);
    *(v10 + 28) = v14;
    *(v10 + 40) = *a2;
    *(v10 + 36) = *(a2 + 4);
    *(v10 + 24) = *(a2 + 8);
    *(v10 + 20) = *(a2 + 12);
    *(v10 + 44) = 0;
    if (a3 == 18)
    {
      *(v10 + 44) = 60 * ((*(a2 + 17) << 8) | *(a2 + 16));
    }

    if (sub_10000C240())
    {
      v11 = *(&xmmword_100B5A1A0 + v9);
      sub_10000AF54("Received time info t1={%u,%u}, m1={%u,%u} at {%u,%u} GMT:%d", v11[9], v11[10], v11[5], v11[6], v14, HIDWORD(v14), v11[11]);
      v12 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_10000C0FC();
        *buf = 136446210;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Wrong size for time data");
    v7 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      sub_1000E09C0();
    }
  }
}

void sub_10019EB10(uint64_t a1, double *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 != -1)
  {
    v24 = 0;
    if (a3 > 0xF)
    {
      v10 = v6;
      v12 = *a2;
      v11 = *(a2 + 1);
      v27 = a2[1];
      sub_1001BAE88(v11 | (v12 << 32), *(*(&xmmword_100B5A1A0 + v6) + 20), &v27, &v24, v27, v7, v8);
      if (v13)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid time, newer is smaller ({%u,%u} vs {%u,%u})", v11, v12, *(*(&xmmword_100B5A1A0 + v10) + 20), *(*(&xmmword_100B5A1A0 + v10) + 24));
          v14 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        *(*(&xmmword_100B5A1A0 + v10) + 56) = 0;
      }

      else
      {
        if (sub_10000C240())
        {
          v15 = *(&xmmword_100B5A1A0 + v10);
          sub_10000AF54("Time was {%u,%u} at remote {%u,%u} received at {%u,%u}", v15[9], v15[10], v15[5], v15[6], v15[5], v15[8]);
          v16 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = sub_10000C0FC();
            *buf = 136446210;
            v26 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Remote TX of {%u,%u}", v11, v12);
          v18 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_10000C0FC();
            *buf = 136446210;
            v26 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Remote correction by {%u,%u}", v24, HIDWORD(v24));
          v20 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_10000C0FC();
            *buf = 136446210;
            v26 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v22 = *(&xmmword_100B5A1A0 + v10);
        v23 = *(v22 + 56);
        if (v23)
        {
          v23(a1, *(v22 + 36), *(v22 + 28), *(v22 + 20), v24, *(v22 + 44), *(v22 + 64));
          v22 = *(&xmmword_100B5A1A0 + v10);
        }

        *(v22 + 56) = 0;
        *(v22 + 20) = 0;
        *(v22 + 36) = 0;
        *(v22 + 28) = 0;
        *(v22 + 44) = 0;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Wrong size for time data");
      v9 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

uint64_t sub_10019EE10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = byte_100B5A098;
  if (byte_100B5A098)
  {
    v8 = result;
    v9 = 0;
    v10 = qword_100B5A0A0;
    do
    {
      if (*v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received cl data with size %d for session %d", a3, v9);
          v11 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = sub_10000C0FC();
            *buf = 136446210;
            v14 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        result = (*v10)(v8, a2, a3, v10[1], a4);
        v4 = byte_100B5A098;
      }

      ++v9;
      v10 += 2;
    }

    while (v9 < v4);
  }

  return result;
}

void sub_10019EF5C(__int128 *a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received DID Info for an unknown peer");
      v8 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a3 > 5)
  {
    if (!a2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1932, "data");
    }

    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    if (a3 == 6)
    {
      v12 = -1;
    }

    else
    {
      if ((a3 & 0xFFF8) == 0)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1939, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v12 = a2[3];
    }

    v13 = *(&xmmword_100B5A1A0 + v6);
    v13[50] = v9;
    v13[51] = v10;
    v13[52] = v11;
    v13[53] = v12;
    if (sub_10000C240())
    {
      sub_10000AF54("Received DeviceID for %: vid 0x%x pid 0x%x version 0x%x chipset 0x%x", a1 + 49, v9, v10, v11, v12);
      v14 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v16 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Data size error %d", a3);
      v7 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    *buf = 264;
    buf[2] = 1;
    sub_100196E20(a1, buf, 3, 0);
  }
}

void sub_10019F180(void *a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send services, peer is invalid for handle %p", a1);
      v10 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v3 = v2;
  if (!sub_10019F974(v2))
  {
    return;
  }

  if (*(*(&xmmword_100B5A1A0 + v3) + 48) <= 7u)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = v4 + 1;
  if (word_100B5A220)
  {
    v6 = 0;
    v7 = qword_100B5A228;
    v8 = v4 + 1;
    while (1)
    {
      v9 = v8;
      if (sub_10019FA7C(v7, a1, v3, v6))
      {
        v8 += *(v7 + 8) + 6;
        if (*(*(&xmmword_100B5A1A0 + v3) + 48) <= 7u && v8 >= 0x100)
        {
          break;
        }
      }

      ++v6;
      v7 += 9;
      if (v6 >= word_100B5A220)
      {
        LODWORD(v6) = 0;
        v9 = v8;
        goto LABEL_21;
      }
    }

    v11 = sub_10000C240();
    if (v11)
    {
      sub_10000AF54("Services limit found for peerID %d, remote version %d, pdu-size %d, temp pdu-size %d, index Limit %d", v3, *(*(&xmmword_100B5A1A0 + v3) + 48), v8, v9, v6);
      v12 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v57 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
    v9 = v4 + 1;
  }

LABEL_21:
  v13 = v9;
  v14 = sub_100007618(v9, 0xBFD68456uLL);
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v53 = v4;
  v16 = v6;
  v52 = v13;
  bzero(v14, v13);
  *v15 = 1;
  if (!word_100B5A220)
  {
    *&v55 = 0;
    goto LABEL_44;
  }

  v19 = 0;
  *&v55 = 0;
  v20 = qword_100B5A228;
  *&v18 = 136446210;
  v54 = v18;
  while (1)
  {
    v21 = *(v20 + 8) >= 0x20u ? 32 : *(v20 + 8);
    __chkstk_darwin(v17);
    v23 = &v52 - v22;
    bzero(&v52 - v22, v24);
    memcpy(v23, *v20, v21);
    v23[v21] = 0;
    if (sub_10019FA7C(v20, a1, v3, v19))
    {
      break;
    }

    v30 = "Skipping";
LABEL_35:
    v17 = sub_10000C240();
    if (v17)
    {
      sub_10000AF54("%s service %s requiresEncryption=%d unpublishing=%d, pduCounter %d", v30, v23, *(v20 + 16), *(v20 + 21), v5);
      v31 = sub_10000C050(0x51u);
      v17 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        v32 = sub_10000C0FC();
        *buf = v54;
        v57 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    ++v19;
    v20 += 9;
    if (v19 >= word_100B5A220)
    {
      goto LABEL_44;
    }
  }

  if (!v16 || v16 != v19)
  {
    v15[v5] = v21 + 5;
    v15[v5 + 1] = *(v20 + 18);
    v15[v5 + 2] = *(v20 + 19);
    v25 = v5 + 4;
    v15[v5 + 3] = *(v20 + 3);
    v26 = (v5 + 5);
    v15[v25] = v21;
    memmove(&v15[v26], *v20, v21);
    v27 = v26 + v21;
    v15[v27] = 0;
    v28 = *(v20 + 22);
    v15[v27] = v28;
    if (*(v20 + 23))
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    v15[v27] = v29 | v28;
    v5 = v27 + 1;
    *&v55 = (v55 + 1);
    v30 = "Sending";
    goto LABEL_35;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Exiting due to limit found for peerID %d, lNbServices %d, i %d, singleByteLengthIndex %d", v3, word_100B5A220, v16, v16);
    v33 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = sub_10000C0FC();
      *buf = v54;
      v57 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

LABEL_44:
  v35 = v5 - v53;
  if (*(*(&xmmword_100B5A1A0 + v3) + 48) < 8u)
  {
    v36 = 2;
  }

  else
  {
    v15[2] = HIBYTE(v35);
    v36 = 3;
  }

  v37 = v52;
  v38 = v55;
  v15[1] = v35;
  v15[v36] = v38;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending %d out of total %d registered services to %p, pduCounter %d", v38, word_100B5A220, a1, v5);
    v39 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = sub_10000C0FC();
      *buf = 136446210;
      v57 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v38)
  {
    v41 = sub_100196E20(a1, v15, v37, 1);
    if (v41 && sub_10000C240() && (sub_10000AF54("Sending services PDU failed with %!", v41), v42 = sub_10000C050(0x51u), os_log_type_enabled(v42, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (v16)
      {
        goto LABEL_55;
      }
    }

    else if (v16)
    {
LABEL_55:
      if (sub_10000C240())
      {
        sub_10000AF54("Sending left over services: singleByteLengthIndex is %d, lNbServices %d, adding services, status %!", v16, word_100B5A220, v41);
        v44 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = sub_10000C0FC();
          *buf = 136446210;
          v57 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (v16 < word_100B5A220)
      {
        v46 = &qword_100B5A228[9 * v16 + 1] + 4;
        *&v43 = 136446466;
        v55 = v43;
        do
        {
          if ((v46[9] & 1) == 0)
          {
            if (*(v46 - 4) >= 0x20u)
            {
              v47 = 32;
            }

            else
            {
              v47 = *(v46 - 4);
            }

            v48 = sub_100198190(a1, *(v46 + 3), *(v46 - 12), v47, *v46, v16);
            if (v48)
            {
              v49 = v48;
              if (sub_10000C240())
              {
                sub_10000AF54("Sending services added PDU failed with %!", v49);
                v50 = sub_10000C050(0x51u);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v51 = sub_10000C0FC();
                  *buf = v55;
                  v57 = v51;
                  v58 = 1024;
                  v59 = 0xFFFF;
                  _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                }
              }
            }
          }

          ++v16;
          v46 += 72;
        }

        while (v16 < word_100B5A220);
      }
    }
  }
}

void sub_10019F900(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("PhyStatsEnabled with error %!", result);
    v2 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

BOOL sub_10019F974(unsigned int a1)
{
  v1 = *(*(&xmmword_100B5A1A0 + a1) + 52);
  if ((v1 & 0x200) != 0 && sub_10000C240())
  {
    v3 = **(&xmmword_100B5A1A0 + a1);
    v4 = 49;
    if (*(v3 + 55))
    {
      v4 = 57;
    }

    sub_10000AF54("Peer %: does not support CL Services", v3 + v4);
    v5 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return (v1 & 0x200) == 0;
}

uint64_t sub_10019FA7C(uint64_t a1, const void *a2, uint64_t a3, unsigned int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 21))
  {
    return 0;
  }

  v6 = a3;
  if (*(a1 + 16) == 1 && !sub_1000CC63C(a2))
  {
    return 0;
  }

  v8 = &qword_100B5A228[9 * a4];
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10019FB14(v6, v9, v10, a2);
}

uint64_t sub_10019FB14(unsigned int a1, const void *a2, unsigned int a3, const void *a4)
{
  if (a2 && a3)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    if (a3 > 0x20)
    {
      __strlcpy_chk();
    }

    else
    {
      __strncpy_chk();
    }

    v11 = sub_1000B6E74(a4);
    if (a3 >= 0xF)
    {
      v12 = 15;
    }

    else
    {
      v12 = a3;
    }

    v13 = memcmp("com.apple.BT.TS", a2, v12);
    result = 1;
    if ((byte_100B5A198 & 1) == 0 && !v13)
    {
      v14 = *(&xmmword_100B5A1A0 + a1);
      if (*(v14 + 48) > 8u)
      {
        if (v11)
        {
          if ((dword_100B5A90C & 0x400) != 0 && (*(v14 + 53) & 8) != 0)
          {
            return result;
          }
        }

        else if ((dword_100B5A90C & 0x800) != 0 && (*(v14 + 53) & 4) != 0)
        {
          return result;
        }

        result = sub_10000C240();
        if (result)
        {
          v17 = **(&xmmword_100B5A1A0 + a1);
          v18 = 49;
          if (*(v17 + 55))
          {
            v18 = 57;
          }

          sub_10000AF54("Peer %: ver9 We do not support TS isCentral=%d isPhone=%d isWatch=%d . %s ", v17 + v18, v11, dword_100B5A90C & 0x100, dword_100B5A90C & 0x80, v21);
          v9 = sub_10000C050(0x51u);
          result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
LABEL_34:
            *buf = 136446210;
            v20 = sub_10000C0FC();
            v10 = buf;
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (v11)
        {
          if ((dword_100B5A90C & 0x100) != 0)
          {
            return result;
          }
        }

        else if ((dword_100B5A90C & 0x80) != 0)
        {
          return result;
        }

        result = sub_10000C240();
        if (result)
        {
          v15 = **(&xmmword_100B5A1A0 + a1);
          v16 = 49;
          if (*(v15 + 55))
          {
            v16 = 57;
          }

          sub_10000AF54("Peer %: We do not support TS isCentral=%d isPhone=%d isWatch=%d . %s ", v15 + v16, v11, dword_100B5A90C & 0x100, dword_100B5A90C & 0x80, v21);
          v9 = sub_10000C050(0x51u);
          result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            goto LABEL_34;
          }
        }
      }
    }
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Invalid service name query over %p", a4);
      v9 = sub_10000C050(0x51u);
      result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        LODWORD(v21[0]) = 136446210;
        *(v21 + 4) = sub_10000C0FC();
        v10 = v21;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", v10, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10019FE00(__int128 *a1, char a2, int a3, int a4, int a5)
{
  v10 = sub_1000B7E7C(a1);
  if (v10 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send accept channel, peer is invalid for handle %p", a1);
      v18 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 414;
  }

  else
  {
    v11 = v10;
    v12 = *(*(&xmmword_100B5A1A0 + v10) + 48);
    if (v12 <= 7)
    {
      v13 = 7;
    }

    else
    {
      v13 = 8;
    }

    if (v12 <= 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    v15 = sub_100007618(v14, 0xC198DF71uLL);
    if (v15)
    {
      v16 = v15;
      *v15 = 4;
      if (*(*(&xmmword_100B5A1A0 + v11) + 48) < 8u)
      {
        v17 = 2;
      }

      else
      {
        v15[2] = 0;
        v17 = 3;
      }

      v15[1] = 5;
      v21 = &v15[v17];
      *v21 = a2;
      *(v21 + 1) = a3;
      *(v21 + 3) = a5;
      if (sub_10000C240())
      {
        sub_10000AF54("Sending accept channel 0x%x(%d) / 0x%x(%d) for service %d to %p index %d", a4, a4, a5, a5, a3, a1, v17 + 5);
        v22 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v24 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      return sub_100196E20(a1, v16, v13, 1);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can not allocate memory for channel creation after acceptance");
        v20 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 106;
    }
  }
}

void sub_1001A0040(__int128 *a1, int a2, int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send accept channel, peer is invalid for handle %p", a1);
      v14 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v7 = v6;
    if (sub_10019F974(v6))
    {
      v8 = *(*(&xmmword_100B5A1A0 + v7) + 48);
      v9 = v8 <= 7 ? 5 : 6;
      v10 = v8 <= 7 ? 5 : 6;
      v11 = sub_100007618(v10, 0x5349237BuLL);
      if (v11)
      {
        v12 = v11;
        *v11 = 7;
        if (*(*(&xmmword_100B5A1A0 + v7) + 48) < 8u)
        {
          v13 = 2;
        }

        else
        {
          v11[2] = 0;
          v13 = 3;
        }

        v11[1] = 3;
        v15 = &v11[v13];
        *v15 = a2;
        v15[2] = a3;
        if (sub_10000C240())
        {
          sub_10000AF54("Sending removed service %d confirmation with error %d to %p index %d", a2, a3, a1, v13 + 3);
          v16 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v18 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_100196E20(a1, v12, v9, 1);
      }
    }
  }
}

void sub_1001A0214(unsigned __int16 *a1)
{
  v18 = 0;
  v21 = 0;
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection peerID is invalid");
    v10 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_1000E09C0();
    return;
  }

  v3 = v2;
  v4 = *(*(&xmmword_100B5A1A0 + v2) + 48);
  if (v4 <= 7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 <= 7)
  {
    v6 = 18;
  }

  else
  {
    v6 = 19;
  }

  v7 = sub_100007618(v6, 0x61574E84uLL);
  if (!v7)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection memory allocation failed");
    v11 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  v8 = v7;
  sub_1001BAE20(&v18);
  sub_1001BAE4C(&v21);
  *v8 = 114;
  if (*(*(&xmmword_100B5A1A0 + v3) + 48) < 8u)
  {
    v9 = 2;
  }

  else
  {
    v8[2] = 0;
    v9 = 3;
  }

  v8[1] = v6 - v5;
  v12 = &v8[v9];
  *v12 = HIDWORD(v18);
  v13 = WORD1(v18);
  *(v12 + 2) = v18;
  *(v12 + 3) = v13;
  numer_high = HIWORD(v21.numer);
  *(v12 + 4) = v21.numer;
  *(v12 + 5) = numer_high;
  denom_high = HIWORD(v21.denom);
  *(v12 + 6) = v21.denom;
  *(v12 + 7) = denom_high;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending time sync correction {%u,%u} with conversion {%u,%u} index %d", v18, HIDWORD(v18), v21.numer, v21.denom, v9 | 0x10);
    v16 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_10000C0FC();
      *buf = 136446210;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_100196E20(a1, v8, v6, 1);
  sub_100199E24(a1);
}

void sub_1001A0498()
{
  v0 = &byte_100B5A000;
  if (word_100B5A220)
  {
    v1 = 0;
    do
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Looping through service[%d][%d]= %d serviceType=%d", v1, BYTE5(qword_100B5A228[9 * v1 + 2]), WORD1(qword_100B5A228[9 * v1 + 2]), HIDWORD(qword_100B5A228[9 * v1 + 1]));
        v2 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          v3 = sub_10000C0FC();
          *buf = 136446210;
          *&buf[4] = v3;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      v4 = &qword_100B5A228[9 * v1];
      if (*(v4 + 21))
      {
        v5 = *(v4 + 3);
        if (*(v4 + 8) >= 0x20u)
        {
          v6 = 32;
        }

        else
        {
          v6 = *(v4 + 8);
        }

        v7 = sub_100007618(v6, 0x6B018DE2uLL);
        memmove(v7, *v4, v6);
        v8 = word_100B5A19A;
        if (!word_100B5A19A)
        {
          goto LABEL_26;
        }

        v23 = v1;
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(&xmmword_100B5A1A0 + v9);
          if (*(v11 + 16))
          {
            v12 = 0;
            v13 = 0;
            do
            {
              v14 = (*(v11 + 8) + v12);
              if (v14[8] == v6 && !memcmp(v14, v7, v6))
              {
                v15 = sub_1000B6E74(*v11);
                v16 = *(&xmmword_100B5A1A0 + v9);
                if (v15)
                {
                  v10 |= *(v16[1] + v12 + 36) == v5;
                }

                v17 = sub_1000B6E74(*v16);
                v11 = *(&xmmword_100B5A1A0 + v9);
                if (!v17)
                {
                  v10 |= sub_100198434((*(v11 + 8) + v12), v7, v6, v5);
                }
              }

              ++v13;
              v12 += 88;
            }

            while (v13 < *(v11 + 16));
            v8 = word_100B5A19A;
          }

          ++v9;
        }

        while (v9 < v8);
        v0 = &byte_100B5A000;
        v1 = v23;
        if (v10)
        {
          v1 = (v23 + 1);
        }

        else
        {
LABEL_26:
          v18 = v4[8];
          v28 = 0;
          *buf = 0u;
          v27 = 0u;
          if (*v4 && *(v4 + 8) - 1 <= 0x1F)
          {
            __strncpy_chk();
          }

          else
          {
            __strlcpy_chk();
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Looping through service[%d][%d]=%s id=%d serviceType=%d ToRemove", v1, *(v4 + 21), buf, *(v4 + 9), *(v4 + 8));
            v19 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = sub_10000C0FC();
              *v24 = 136446210;
              v25 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", v24, 0xCu);
            }
          }

          sub_10000C1E8(*v4);
          v21 = *(v0 + 272) - 1;
          *(v0 + 272) = v21;
          v22 = &qword_100B5A228[9 * v21];
          memmove(v4, v22, 0x48uLL);
          *v22 = 0u;
          *(v22 + 1) = 0u;
          *(v22 + 2) = 0u;
          *(v22 + 3) = 0u;
          v22[8] = 0;
          if (v18)
          {
            v18(v7, v6, v5);
          }
        }

        sub_10000C1E8(v7);
      }

      else
      {
        v1 = (v1 + 1);
      }
    }

    while (v1 < *(v0 + 272));
  }
}

uint64_t sub_1001A0840()
{
  sub_1001A170C(&dword_100B5A920);
  sub_1001A170C(&dword_100B5A924);
  byte_100B5A928 = 0;
  sub_1001A1584();

  return sub_10002195C(sub_1001A08B0, 0, 3, &dword_100B5A920);
}

uint64_t sub_1001A08B0()
{
  if ((byte_100B5A928 & 8) == 0)
  {
    return sub_1001A08D0(5);
  }

  byte_100B5A928 |= 0x10u;
  return result;
}

void sub_1001A08D0(uint64_t result)
{
  v1 = byte_100B5A928 & 7;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      if (result != 1)
      {
LABEL_17:
        if (result == 3)
        {

          sub_1001A15C0();
        }

        return;
      }

      sub_1001A16F0(10);
      v4 = byte_100B5A928 & 0xF8 | 3;
      goto LABEL_33;
    }

    if (v1 == 3)
    {
      return;
    }
  }

  else
  {
    if ((byte_100B5A928 & 7) == 0)
    {
      if (result == 1)
      {
LABEL_27:

        sub_1001A1598();
        return;
      }

      if (result != 2)
      {
        if (result != 5)
        {
          return;
        }

        sub_1001A1584();
        v2 = &dword_100B5A920;
        v3 = sub_1001A08B0;
LABEL_24:

        sub_10002195C(v3, 0, 3, v2);
        return;
      }

      sub_1001A16F0(8);
      sub_1001A15AC();
      sub_10002195C(sub_1001A0A90, 0, 3, &dword_100B5A924);
      v4 = byte_100B5A928 & 0xF8 | 1;
LABEL_33:
      byte_100B5A928 = v4;
      return;
    }

    if (v1 == 1)
    {
      if (result <= 3)
      {
        if (result == 1)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      if (result != 4)
      {
        if (result != 6)
        {
          return;
        }

        sub_1001A15AC();
        v2 = &dword_100B5A924;
        v3 = sub_1001A0A90;
        goto LABEL_24;
      }

      sub_1001A16F0(9);
      v4 = byte_100B5A928 & 0xF8 | 2;
      goto LABEL_33;
    }
  }

  sub_1001A1758("LE state machine, invalid state");
}

uint64_t sub_1001A0A90()
{
  if ((byte_100B5A928 & 8) == 0)
  {
    return sub_1001A08D0(6);
  }

  byte_100B5A928 |= 0x20u;
  return result;
}

void sub_1001A0AF8()
{
  v0 = byte_100B5A928;
  v1 = byte_100B5A928 & 0xF7;
  byte_100B5A928 &= ~8u;
  if ((v0 & 0x10) != 0)
  {
    byte_100B5A928 = v0 & 0xE7;
    sub_1001A08D0(5);
    v1 = byte_100B5A928;
  }

  if ((v1 & 0x20) != 0)
  {
    byte_100B5A928 = v1 & 0xDF;
    if ((v1 & 8) != 0)
    {
      byte_100B5A928 = v1;
    }

    else
    {

      sub_1001A08D0(6);
    }
  }
}

uint64_t sub_1001A0B88()
{
  if ((byte_100B5A929 & 1) == 0)
  {
    byte_100B5A929 = 1;
    return sub_1000228C0(sub_1001A0B7C, 0, 0);
  }

  return result;
}

uint64_t sub_1001A0BC8(uint64_t a1, unsigned int a2)
{
  if (byte_100B5A92D == 1)
  {
    sub_1000228C0(sub_100195A80, 0, 0);
  }

  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (a1 + v4);
      v7 = a2 - v5;
      v18 = 0;
      v17 = 0;
      v8 = byte_100B5A92C & 7;
      if (v8 == 2)
      {
        v11 = sub_1001A0F5C((a1 + v4), v7, &v18);
        v12 = v11;
        if (v11 > 5)
        {
          if (v11 > 7)
          {
            switch(v11)
            {
              case 8:
                v13 = 2;
                break;
              case 9:
                v13 = 3;
                break;
              case 10:
                v13 = 4;
                break;
              default:
LABEL_54:
                sub_1001A1758("RX: unknown message id");
LABEL_55:
                byte_100B5A92C &= 0xF8u;
                if (!v12 || v12 == 6)
                {
                  goto LABEL_52;
                }

LABEL_51:
                sub_100195B04();
                goto LABEL_52;
            }

LABEL_49:
            sub_1001A08D0(v13);
LABEL_50:
            byte_100B5A92C &= 0xF8u;
            goto LABEL_51;
          }

          if (v11 != 6)
          {
            v13 = 1;
            goto LABEL_49;
          }

          sub_100195A60();
LABEL_13:
          v10 = byte_100B5A92C & 0xF8;
LABEL_24:
          byte_100B5A92C = v10;
          goto LABEL_52;
        }

        if (v11 > 2)
        {
          if ((v11 - 3) < 2)
          {
            goto LABEL_55;
          }

          if (v11 != 5)
          {
            goto LABEL_54;
          }

          sub_100195A58();
          goto LABEL_50;
        }

        if (v11)
        {
          if (v11 == 1)
          {
            if (sub_100195B2C() && !sub_1001A0AB0())
            {
              sub_1001A16F0(3);
            }
          }

          else
          {
            if (v11 != 2)
            {
              goto LABEL_54;
            }

            sub_100195A50();
          }

          goto LABEL_50;
        }
      }

      else if (v8 == 1)
      {
        v18 = sub_1001A17C8((a1 + v4), v7, &v17);
        if (v17 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if ((byte_100B5A92C & 7) == 0)
        {
          v9 = *v6;
          if ((v9 - 2) >= 3)
          {
            if (!*v6)
            {
              nullsub_21();
LABEL_42:
              v18 = 1;
              goto LABEL_52;
            }

            if (v9 != 64)
            {
              if (sub_100195B2C() && !sub_1001A0AB0())
              {
                byte_100B5A92C = byte_100B5A92C & 0xF8 | 1;
                if (sub_10000C240())
                {
                  sub_10000AF54("xh4ds_uart_deliverbytes: garbage received when searching for new packet identifier: %x\n", *v6);
                  v14 = sub_10000C050(0x3Au);
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    v15 = sub_10000C0FC();
                    *buf = 136446466;
                    v20 = v15;
                    v21 = 1024;
                    v22 = 0xFFFF;
                    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                  }
                }

                nullsub_21();
                sub_1001A16F0(3);
              }

              goto LABEL_42;
            }

            sub_1001A0F48();
            v10 = byte_100B5A92C & 0xF8 | 2;
          }

          else
          {
            if (!sub_100195B2C() || sub_1001A0AC8())
            {
              goto LABEL_42;
            }

            v10 = byte_100B5A92C & 0xF8 | 1;
          }

          goto LABEL_24;
        }

        sub_1001A1758("RX: invalid state ");
      }

LABEL_52:
      v5 = v4 + v18;
      v4 = (v4 + v18);
    }

    while (v4 < a2);
  }

  return 0xFFFFLL;
}

uint64_t sub_1001A0F5C(unsigned __int8 *a1, unsigned int a2, _WORD *a3)
{
  if (!a2)
  {
LABEL_19:
    result = 0;
    *a3 = a2;
    return result;
  }

  v6 = 0;
  v7 = byte_100B5A930;
  while (1)
  {
    v8 = (v7 >> 4) & 7;
    if (v8 == 2)
    {
      break;
    }

    if (v8 == 1)
    {
      v11 = "tick";
      v12 = &off_100AE4BE0;
      while (*v11 != *a1)
      {
        v13 = v12[2];
        v12 += 2;
        v11 = v13;
        if (!v13)
        {
          qword_100B5A938 = 0;
          goto LABEL_20;
        }
      }

      qword_100B5A938 = v12;
      v17 = v7 & 0xFFFFFF80 | 0x21;
      byte_100B5A930 = v17;
      v10 = v17;
    }

    else if (v8)
    {
      sub_1001A1758("Scanner, no match");
      v10 = byte_100B5A930;
    }

    else
    {
      v9 = *a1;
      v10 = v7 & 0xFFFFFFF0 | (v7 + 1) & 0xF;
      byte_100B5A930 = v7 & 0xF0 | (v7 + 1) & 0xF;
      if (v9 != *(&qword_1008A3146 + (v7 & 0xF)))
      {
        goto LABEL_20;
      }

      if (((v7 + 1) & 0xFu) >= 8)
      {
        v10 = v7 & 0xFFFFFF80 | (v7 + 1) & 0xF | 0x10;
        byte_100B5A930 = v7 & 0x80 | (v7 + 1) & 0xF | 0x10;
      }
    }

LABEL_18:
    ++v6;
    ++a1;
    v7 = v10;
    if (v6 >= a2)
    {
      goto LABEL_19;
    }
  }

  v14 = *a1;
  v15 = qword_100B5A938;
  v16 = *qword_100B5A938;
  v10 = v7 & 0xFFFFFFF0 | (v7 + 1) & 0xF;
  byte_100B5A930 = v7 & 0xF0 | (v7 + 1) & 0xF;
  if (v14 == *(v16 + (v7 & 0xF)))
  {
    if (((v7 + 1) & 0xFu) >= 4)
    {
      *a3 = v6 + 1;
      byte_100B5A930 = v7 & 0x80;
      return *(v15 + 8);
    }

    goto LABEL_18;
  }

LABEL_20:
  byte_100B5A930 = v7 & 0x80;
  *a3 = v6;
  return 1;
}

void sub_1001A1100()
{
  byte_100B5A940 = 0;
  v0 = 3;
  do
  {
    qword_100B5A950 = *(&qword_100B5A950 + 4);
    dword_100B5A958 = 0;
    --v0;
  }

  while (v0);
  dword_100B5A944 = 0;
  word_100B5A948 = 0;
}

uint64_t sub_1001A113C(int a1)
{
  if (!(sub_1001A0AB0() | byte_100B5A940) && sub_100195B14() && !(qword_100B5A950 | dword_100B5A944))
  {
    return 1;
  }

  if (!sub_1001A0AB0())
  {
    sub_100195A48();
    if (!a1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (a1)
  {
LABEL_7:
    sub_1001A11BC();
  }

  return 0;
}

uint64_t sub_1001A11BC()
{
  v0 = dword_100B5A944;
  if (!dword_100B5A944)
  {
    v0 = qword_100B5A950;
    qword_100B5A950 = *(&qword_100B5A950 + 4);
    dword_100B5A958 = 0;
    dword_100B5A944 = v0;
  }

  if (v0 > 1)
  {
    if (v0 != 2 && v0 != 3)
    {
      goto LABEL_24;
    }

    sub_10022DBCC();
    sub_100195B04();
    goto LABEL_20;
  }

  if (!v0)
  {
    v1 = byte_100B5A940;
    if (!byte_100B5A940)
    {
      return sub_100195ACC();
    }

    if (sub_100195B14())
    {
      v2 = byte_100B5A940;
      if (qword_100B5A950 | dword_100B5A944)
      {
        goto LABEL_35;
      }

      if (byte_100B5A940)
      {
        sub_10022DBCC();
        sub_100195B04();
        v2 = byte_100B5A940 & 0xFE;
      }

      else if ((byte_100B5A940 & 2) != 0)
      {
        sub_10022DBCC();
        sub_100195B04();
        v2 = byte_100B5A940 & 0xFD;
      }

      else if ((byte_100B5A940 & 4) != 0)
      {
        sub_1001A1514(&dword_1008A316A);
        v2 = byte_100B5A940 & 0xFB;
      }

      else
      {
        if ((byte_100B5A940 & 8) == 0)
        {
          goto LABEL_35;
        }

        sub_1001A1514(&dword_1008A316E);
        v2 = byte_100B5A940 & 0xF7;
      }

      byte_100B5A940 = v2;
    }

    else
    {
      v2 = byte_100B5A940;
    }

LABEL_35:
    if (v2 == v1)
    {
      sub_100195A48();
      v2 = byte_100B5A940;
    }

    goto LABEL_26;
  }

  if (v0 == 1)
  {
    if (word_100B5A948 <= 9u || word_100B5A948 == 10)
    {
      sub_10022DBCC();
      sub_100195B04();
      ++word_100B5A948;
      if (dword_100B5A944)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_10022DBCC();
      sub_100195B04();
      word_100B5A948 = 0;
    }

LABEL_20:
    v3 = qword_100B5A950;
    qword_100B5A950 = *(&qword_100B5A950 + 4);
    dword_100B5A958 = 0;
    dword_100B5A944 = v3;
    if (!v3)
    {
      goto LABEL_25;
    }
  }

LABEL_24:
  sub_1001A0B88();
LABEL_25:
  v2 = byte_100B5A940;
LABEL_26:
  if (v2)
  {
    sub_1001A0B88();
  }

  return sub_100195ACC();
}

void sub_1001A1498()
{
  sub_10022DBCC();
  sub_100195B04();
  sub_100195A38();
}

uint64_t sub_1001A15DC(uint64_t result)
{
  if (dword_100B5A944 != result || qword_100B5A950 != 0)
  {
    v2 = &qword_100B5A950 + 1;
    v3 = -2;
    while (*(v2 - 1) != result)
    {
      ++v2;
      if (++v3 == 1)
      {
        goto LABEL_14;
      }
    }

    if (v3)
    {
      v4 = -v3;
      do
      {
        *(v2 - 1) = *v2;
        ++v2;
        --v4;
      }

      while (v4);
    }

    dword_100B5A958 = 0;
LABEL_14:
    v5 = 0;
    while (*(&qword_100B5A950 + v5))
    {
      v5 += 4;
      if (v5 == 12)
      {
        return sub_1001A0B88();
      }
    }

    *(&qword_100B5A950 + v5) = result;
    return sub_1001A0B88();
  }

  return result;
}

void sub_1001A16BC()
{
  sub_1001A0BBC();
  sub_1001A1100();
  sub_100195548();
  sub_1001A0840();

  sub_1001A0B70();
}

void sub_1001A16F0(int a1)
{
  if (a1 == 10)
  {
    sub_1001A16BC();
  }

  else if (a1 == 5)
  {
    sub_1001A1E60();
  }
}

uint64_t sub_1001A170C(unsigned int *a1)
{
  result = sub_10002260C(*a1);
  if (result)
  {
    v3 = *a1;

    return sub_10002242C(v3);
  }

  return result;
}

void sub_1001A1758(const char *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("%s", a1);
    v2 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v2);
    }
  }

  sub_1001A16BC();
}

uint64_t sub_1001A17C8(char *__src, int a2, _BYTE *a3)
{
  if (!a2)
  {
    LOWORD(v6) = 0;
    return v6;
  }

  v4 = a2;
  v6 = 0;
  v7 = qword_100B5A960;
  while (1)
  {
    v8 = *(v7 + 652);
    if (v8 <= 1)
    {
      if (v8 == 1)
      {
        v12 = *__src;
        if ((v12 - 1) >= 4u)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("unknown packet type received %d", v12);
            v23 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v33 = sub_10000C0FC();
              *buf = 136446466;
              v38 = v33;
              v39 = 1024;
              v40 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          v24 = qword_100B5A960;
          *(qword_100B5A960 + 652) = 4;
          *(v24 + 656) = 1;
          v13 = 5;
        }

        else
        {
          *(v7 + 4) = 0x2000300040003uLL >> (16 * ((v12 - 1) & 0xFu));
          *(v7 + 650) = v12;
          *(v7 + 6) = 0;
          *(v7 + 652) = 2;
          v13 = 10;
        }

        sub_1001A242C(v13);
        v7 = qword_100B5A960;
        if (*(qword_100B5A960 + 652) == 2)
        {
          --v4;
          ++v6;
          ++__src;
        }

        goto LABEL_57;
      }

      if (!v8)
      {
LABEL_60:
        *a3 = 1;
        LOWORD(v6) = v6 + v4;
        return v6;
      }

      goto LABEL_26;
    }

    if (v8 != 2)
    {
      break;
    }

    v14 = 0;
    v15 = *(v7 + 4);
    if (v15 >= (v4 - 1))
    {
      v16 = (v4 - 1);
    }

    else
    {
      v16 = *(v7 + 4);
    }

    v17 = v16 + 1;
    v18 = __src;
    while (v15)
    {
      v19 = *v18++;
      v20 = *(v7 + 6);
      *(v7 + 10 + v20) = v19;
      *(v7 + 6) = v20 + 1;
      LOWORD(v15) = v15 - 1;
      *(v7 + 4) = v15;
      if (++v14 >= v4)
      {
        if (v15)
        {
          v16 = v4;
          if (v17 != v4)
          {
            sub_1000D660C();
            v16 = v17;
          }

          goto LABEL_55;
        }

        ++v16;
        break;
      }
    }

    *(v7 + 652) = 3;
    v25 = *(v7 + 650);
    if (v25 > 2)
    {
      if (v25 != 4)
      {
        if (v25 != 3)
        {
LABEL_45:
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid packet type %d", *(qword_100B5A960 + 650));
            v27 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v35 = sub_10000C0FC();
              *buf = 136446466;
              v38 = v35;
              v39 = 1024;
              v40 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          v28 = qword_100B5A960;
          *(qword_100B5A960 + 652) = 4;
          *(v28 + 656) = 1;
          sub_1001A242C(5);
          sub_1000D660C();
          v16 = 0;
          goto LABEL_55;
        }

LABEL_44:
        v26 = *(v7 + 12);
        goto LABEL_50;
      }

      v26 = *(v7 + 11);
    }

    else
    {
      if (v25 == 1)
      {
        goto LABEL_44;
      }

      if (v25 != 2)
      {
        goto LABEL_45;
      }

      v26 = *(v7 + 12);
    }

LABEL_50:
    *(v7 + 4) = v26;
    v29 = *(v7 + 6) + v26;
    *(v7 + 8) = v29;
    if (v29 >= 0x281u)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("RxPacketHeader - bogus packet length (%d)", *(qword_100B5A960 + 8));
        v30 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v34 = sub_10000C0FC();
          *buf = 136446466;
          v38 = v34;
          v39 = 1024;
          v40 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      v31 = qword_100B5A960;
      *(qword_100B5A960 + 652) = 4;
      *(v31 + 656) = 1;
      sub_1001A242C(5);
    }

LABEL_55:
    v6 += v16;
    v7 = qword_100B5A960;
    if (!*(qword_100B5A960 + 4))
    {
      goto LABEL_61;
    }

    __src += v16;
    v4 -= v16;
LABEL_57:
    if (!v4)
    {
      return v6;
    }
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      goto LABEL_60;
    }

LABEL_26:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid receive state %d", *(qword_100B5A960 + 652));
      v21 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v32 = sub_10000C0FC();
        *buf = 136446466;
        v38 = v32;
        v39 = 1024;
        v40 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    v22 = qword_100B5A960;
    *(qword_100B5A960 + 652) = 4;
    *(v22 + 656) = 1;
    sub_1001A242C(5);
    sub_1000D660C();
    v7 = qword_100B5A960;
    goto LABEL_57;
  }

  if (v4 >= *(v7 + 4))
  {
    v9 = *(v7 + 4);
  }

  else
  {
    v9 = v4;
  }

  memmove((v7 + *(v7 + 6) + 10), __src, v9);
  v7 = qword_100B5A960;
  v10 = *(qword_100B5A960 + 4);
  *(qword_100B5A960 + 6) += v9;
  v6 += v9;
  v11 = v10 - v9;
  *(v7 + 4) = v11;
  if (v11)
  {
    v4 -= v9;
    __src += v9;
    goto LABEL_57;
  }

LABEL_61:
  *a3 = 1;
  if (*(v7 + 656) == 1)
  {
    sub_1001A1D18();
  }

  else
  {
    sub_1001A1DE0();
  }

  return v6;
}

void sub_1001A1D18()
{
  v0 = qword_100B5A960;
  if (*(qword_100B5A960 + 650) != 4)
  {
    goto LABEL_9;
  }

  if (*(qword_100B5A960 + 8) != 6)
  {
    goto LABEL_9;
  }

  v1 = 0;
  LOBYTE(v2) = 1;
  v3 = &byte_1008A3173;
  do
  {
    v4 = (*(v3 - 1) & *(qword_100B5A960 + 10 + v1));
    v5 = *v3;
    v3 += 2;
    v2 = (v4 == v5) & v2;
    ++v1;
  }

  while (v1 != 6);
  if (v2)
  {
    *(qword_100B5A960 + 656) = 0;
    *(v0 + 652) = 1;
    *(v0 + 4) = 5;
    sub_1001A242C(0x7FFFLL);

    sub_10024D814();
  }

  else
  {
LABEL_9:
    sub_1001A242C(5);
    *(qword_100B5A960 + 652) = 4;
  }
}

uint64_t sub_1001A1DE0()
{
  if (*(qword_100B5A960 + 8) >= 0x281u)
  {
    sub_1000D660C();
  }

  v2[1] = 0;
  v2[0] = mach_continuous_time();
  sub_10000394C(*(qword_100B5A960 + 650), (qword_100B5A960 + 10), *(qword_100B5A960 + 8), v2);
  v0 = qword_100B5A960;
  *(qword_100B5A960 + 652) = 1;
  *(v0 + 4) = 5;
  return sub_1001A242C(0x7FFFLL);
}

uint64_t sub_1001A1E60()
{
  v0 = 0;
  LOBYTE(v1) = 1;
  do
  {
    v2 = v1;
    v1 = *(&dword_100B5A994 + v0);
    if (*(&dword_100B5A994 + v0))
    {
      byte_100B5A990 = *(&word_100B5A998 + v0);
      v3 = qword_100B5A9A0[v0];
      qword_100B5A970 = v3;
      qword_100B5A978 = v3;
      word_100B5A988 = v1;
      *(&dword_100B5A994 + v0) = 0;
      goto LABEL_7;
    }

    v0 = &_mh_execute_header.magic + 1;
  }

  while ((v2 & 1) != 0);
  v1 = word_100B5A988;
  if (!word_100B5A988)
  {
    return 0;
  }

  v3 = qword_100B5A978;
LABEL_7:
  if (v1 >= word_100B5A980)
  {
    v4 = word_100B5A980;
  }

  else
  {
    v4 = v1;
  }

  memmove(qword_100B5A968, v3, v4);
  qword_100B5A978 += v4;
  word_100B5A988 -= v4;
  byte_100B5A98C = 1;
  sub_10022DBCC();
  return 0;
}

uint64_t sub_1001A1F54(int a1, __int16 a2, int a3)
{
  if (*(qword_100B5A960 + 656))
  {
    return 129;
  }

  if (a1 == 2)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  if (sub_1001A113C(1) && byte_100B5A98C != 1)
  {
    if (!qword_100B5A968)
    {
      sub_1000D660C();
    }

    v14 = word_100B5A980;
    if (!word_100B5A980)
    {
      sub_1000D660C();
      v14 = word_100B5A980;
    }

    v15 = qword_100B5A968;
    result = 105;
    if (qword_100B5A968 && v14)
    {
      if (a3 + v7 <= v14)
      {
        *qword_100B5A968 = a1;
        *(v15 + 1) = a2;
        *(v15 + 3) = a3;
        if (a3)
        {
          sub_10001F6DC((v15 + v7));
        }

        qword_100B5A978 = 0;
        word_100B5A988 = 0;
      }

      else
      {
        v16 = v7 - 1;
        word_100B5A988 = v16 + a3;
        *qword_100B5A968 = a1;
        v17 = sub_100007618((v16 + a3), 0xEC0CE362uLL);
        qword_100B5A970 = v17;
        if (!v17)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_Malloc failed, unable to segment packet");
            v18 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return 106;
        }

        qword_100B5A978 = v17;
        *v17 = a2;
        *(v17 + 1) = a3;
        if (a3)
        {
          sub_10001F6DC(&v17[v16]);
        }
      }

      byte_100B5A990 = a1;
      byte_100B5A98C = 1;
      sub_10022DBCC();
      sub_100195B04();
      return 0;
    }
  }

  else
  {
    v8 = 0;
    for (i = 1; ; i = 0)
    {
      v10 = i;
      if (!*(&dword_100B5A994 + v8))
      {
        break;
      }

      v8 = &_mh_execute_header.magic + 1;
      if ((v10 & 1) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCIIfc_Send_Req, backlog queue is full, busy fail");
          v11 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_1000D660C();
        return 118;
      }
    }

    v12 = sub_100007618(a3 + v7, 0x6997F564uLL);
    v13 = v12;
    *v12 = a1;
    *(v12 + 1) = a2;
    v12[3] = a3;
    if (a1 == 2)
    {
      v12[4] = BYTE1(a3);
    }

    if (a3)
    {
      sub_10001F6DC(&v12[v7]);
    }

    result = 0;
    *(&word_100B5A998 + v8) = a1;
    *(&dword_100B5A994 + v8) = a3 + v7;
    qword_100B5A9A0[v8] = v13;
  }

  return result;
}

void sub_1001A21FC(uint64_t a1, __int16 a2, int a3)
{
  qword_100B5A968 = a1;
  word_100B5A980 = a2;
  if (a3 == 1216)
  {
    return;
  }

  v16 = 0;
  v17 = 0;
  v15 = 0;
  if (byte_100B5A98C)
  {
    if (!a3)
    {
      v3 = word_100B5A988;
      if (word_100B5A988)
      {
LABEL_26:
        if (v3 >= word_100B5A980)
        {
          v13 = word_100B5A980;
        }

        else
        {
          v13 = v3;
        }

        v14 = qword_100B5A978;
        memmove(qword_100B5A968, qword_100B5A978, v13);
        qword_100B5A978 = v14 + v13;
        word_100B5A988 -= v13;
        byte_100B5A98C = 1;
        sub_10022DBCC();
        return;
      }
    }

    byte_100B5A98C = 0;
    LODWORD(v17) = a3;
    BYTE4(v17) = byte_100B5A990;
    v16 = &v17;
    LOWORD(v15) = 8;
    v4 = sub_1000228C0(sub_1001A2810, &v15, 0);
    if (v4)
    {
      v5 = v4;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v5);
        v6 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    if (qword_100B5A970)
    {
      sub_10000C1E8(qword_100B5A970);
      qword_100B5A970 = 0;
      word_100B5A988 = 0;
    }

    v7 = 0;
    LOBYTE(v3) = 1;
    while (1)
    {
      v8 = v3;
      v3 = *(&dword_100B5A994 + v7);
      if (*(&dword_100B5A994 + v7))
      {
        break;
      }

      v7 = &_mh_execute_header.magic + 1;
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    byte_100B5A990 = *(&word_100B5A998 + v7);
    qword_100B5A970 = qword_100B5A9A0[v7];
    qword_100B5A978 = qword_100B5A970;
    word_100B5A988 = v3;
    *(&dword_100B5A994 + v7) = 0;
    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(&dword_100B5A994 + v10);
    if (v9)
    {
      break;
    }

    v9 = 1;
    v10 = 1;
  }

  while (!v11);
  if (v11 && sub_1001A113C(0))
  {
    v7 = 0;
    LOBYTE(v3) = 1;
    while (1)
    {
      v12 = v3;
      v3 = *(&dword_100B5A994 + v7);
      if (*(&dword_100B5A994 + v7))
      {
        goto LABEL_25;
      }

      v7 = 1;
      if ((v12 & 1) == 0)
      {
LABEL_23:
        v3 = word_100B5A988;
        if (word_100B5A988)
        {
          goto LABEL_26;
        }

        return;
      }
    }
  }
}

uint64_t sub_1001A242C(uint64_t a1)
{
  v2 = sub_10002260C(*qword_100B5A960);
  v3 = qword_100B5A960;
  if (v2)
  {
    v4 = *qword_100B5A960;

    return sub_1000B7ADC(v4, a1);
  }

  else
  {

    return sub_10002195C(sub_1001A24B0, 0, a1, v3);
  }
}

void sub_1001A24B0()
{
  v0 = qword_100B5A960;
  v1 = *(qword_100B5A960 + 652);
  if (v1 < 2)
  {
    if (*(qword_100B5A960 + 656) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("timed out waiting for reset response");
        v4 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v1 - 2 < 2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Timed out while receiving a packet");
      v2 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v3 = qword_100B5A960;
    *(qword_100B5A960 + 652) = 4;
    *(v3 + 656) = 1;
    sub_1001A242C(5);
    return;
  }

  if (v1 == 4)
  {
    if (*(qword_100B5A960 + 656) == 1)
    {

LABEL_16:
      sub_1001A2678();
      return;
    }

    *(qword_100B5A960 + 652) = 1;
    *(v0 + 4) = 5;
LABEL_22:

    sub_1001A242C(0x7FFFLL);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid receive state %d", *(qword_100B5A960 + 652));
    v5 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v6 = qword_100B5A960;
  *(qword_100B5A960 + 652) = 4;
  *(v6 + 656) = 1;
  sub_1001A242C(5);
  sub_1000D660C();
}

uint64_t sub_1001A2678()
{
  *(qword_100B5A960 + 656) = 0;
  v0 = sub_10001F958();
  v1 = qword_100B5A960;
  *(qword_100B5A960 + 656) = 1;
  if (v0)
  {
    v2 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("startResynchronize, OI_HCIIfc_Send failed %!", v2);
      v3 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_1001A242C(5);
  }

  else
  {
    *(v1 + 652) = 1;
    *(v1 + 4) = 5;

    return sub_1001A242C(20);
  }
}

uint64_t sub_1001A2754()
{
  qword_100B5A9A0[0] = 0;
  *algn_100B5A9A8 = 0;
  word_100B5A998 = 0;
  dword_100B5A994 = 0;
  result = sub_10022DB60();
  if (!result)
  {
    qword_100B5A960 = sub_1001BBBD8(0x294uLL, 0x100004038BAECBDuLL);
    sub_1001A16BC();
    v1 = qword_100B5A960;
    *(qword_100B5A960 + 652) = 1;
    *(v1 + 4) = 5;
    sub_1001A242C(0x7FFFLL);
    return 109;
  }

  return result;
}

uint64_t sub_1001A27DC()
{
  if (sub_1001A113C(1))
  {
    return 0;
  }

  else
  {
    return 109;
  }
}

void sub_1001A2810(uint64_t result)
{
  if ((*(qword_100B5A960 + 656) & 1) == 0)
  {
    sub_100256D50(*(*(result + 8) + 4), **(result + 8));
  }
}

uint64_t sub_1001A2834()
{
  if (sub_100195B48())
  {
    return 0;
  }

  sub_1001A1498();
  return 118;
}

uint64_t sub_1001A2860()
{
  result = dword_100B5A9B0;
  if (dword_100B5A9B0)
  {
    return sub_1000B7ADC(dword_100B5A9B0, word_100BC91F4);
  }

  return result;
}

unsigned __int8 *sub_1001A2890(uint64_t a1)
{
  result = sub_10002195C(sub_1001A2D80, 0, a1, &dword_100BC91F8);
  if (result)
  {
    sub_1000C52F4(result);
    return sub_1001A28D0(v2, v3);
  }

  return result;
}

void sub_1001A28D0(unsigned __int8 *result, unsigned int a2)
{
  if (a2 < 2)
  {
    return;
  }

  v2 = *result;
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1u:
        if (a2 != 2 || result[1] != 126)
        {
          return;
        }

        v4 = 0;
        v5 = 0;
        v6 = 1;
        break;
      case 2u:
        if (a2 != 2 || result[1] != 125)
        {
          return;
        }

        v4 = 0;
        v5 = 0;
        v6 = 2;
        break;
      case 3u:
        v3 = result[1];
        if (v3 == 252)
        {
          v4 = 0;
          v5 = 0;
          v6 = 3;
          break;
        }

        goto LABEL_22;
      default:
        return;
    }
  }

  else
  {
    if (*result <= 5u)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          return;
        }

LABEL_24:
        if (a2 != 2 || result[1] != 250)
        {
          return;
        }

        v5 = 0;
        v6 = 5;
        v4 = 1;
        goto LABEL_33;
      }

      v3 = result[1];
LABEL_22:
      if (v3 == 123)
      {
        v4 = 0;
        v5 = 0;
        v6 = 4;
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v2 == 6)
    {
      if (a2 != 2 || result[1] != 249)
      {
        return;
      }

      v4 = 0;
      v6 = 6;
      v5 = 1;
    }

    else
    {
      if (v2 != 7 || a2 != 2 || result[1] != 120)
      {
        return;
      }

      v4 = 0;
      v5 = 0;
      v6 = 7;
    }
  }

LABEL_33:
  if (dword_100BC91EC > 1)
  {
    if (dword_100BC91EC != 2)
    {
      if (dword_100BC91EC != 3)
      {
        if (dword_100BC91EC != 4 || !v5)
        {
          return;
        }

        v7 = 2;
LABEL_56:
        dword_100BC91EC = v7;
        return;
      }

      if (!v4)
      {
        return;
      }

      dword_100BC91EC = 2;
LABEL_57:
      v8 = &unk_1008A3182;
      goto LABEL_58;
    }

    if (v6 > 4)
    {
      if (v6 != 5)
      {
        if (v6 != 7)
        {
          return;
        }

        v7 = 3;
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v6 != 1)
    {
      if (v6 != 3)
      {
        return;
      }

      goto LABEL_47;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Transport resynching");
      v15 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    dword_100BC91EC = 0;
    sub_1001A39C4();
    sub_1001A2F3C();
    byte_100B5A9B7 = 1;
LABEL_83:
    sub_1001A2890(1);
    return;
  }

  if (!dword_100BC91EC)
  {
    if (v6 == 2)
    {
      dword_100BC91EC = 1;
      if (word_100BC91E8)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      if (HIBYTE(word_100BC91E8))
      {
        v11 = 16;
      }

      else
      {
        v11 = 0;
      }

      v8 = &word_100B5A9B4;
      word_100B5A9B4 = -1021;
      byte_100B5A9B6 = v10 | byte_100BC91F2 | v11;
      v9 = 3;
LABEL_59:

      sub_1001A4280(v8, v9, 15);
      return;
    }

    goto LABEL_51;
  }

  if (dword_100BC91EC != 1)
  {
    return;
  }

  if (v6 != 4)
  {
    if (v6 == 3)
    {
LABEL_47:
      v8 = &unk_1008A3180;
LABEL_58:
      v9 = 2;
      goto LABEL_59;
    }

LABEL_51:
    if (v6 != 1)
    {
      return;
    }

    v8 = &unk_1008A317E;
    goto LABEL_58;
  }

  dword_100BC91EC = 2;
  v12 = result[2];
  if (word_100BC91E8 == 1 && (result[2] & 8) == 0)
  {
    LOBYTE(word_100BC91E8) = 0;
  }

  if ((v12 & 0x10) == 0)
  {
    HIBYTE(word_100BC91E8) = 0;
  }

  v13 = v12 & 7;
  byte_100BC91F3 = v13;
  if (v13 > byte_100BC91F2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Configuration failed - device is not configuring link correctly");
      v14 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    dword_100BC91EC = 0;
    goto LABEL_83;
  }

  if (byte_100B5A9B7 == 1)
  {
    byte_100B5A9B7 = 0;

    sub_10024D814();
  }
}

uint64_t sub_1001A2CA0()
{
  dword_100B5A9B0 = 0;
  dword_100BC91EC = 0;
  byte_100B5A9B7 = 0;
  result = sub_10022DB60();
  if (!result)
  {
    byte_100BC91F2 = 4;
    word_100BC91F0 = 1024;
    word_100BC91E8 = 256;
    result = sub_1001A36B8();
    if (!result)
    {
      result = sub_1001A2EAC();
      if (!result)
      {
        dword_100BC91EC = 0;
        sub_1001A2890(1);
        return 109;
      }
    }
  }

  return result;
}

uint64_t sub_1001A2D24()
{
  if (dword_100BC91EC == 2)
  {
    return 0;
  }

  else
  {
    return 109;
  }
}

void sub_1001A2D80()
{
  if (dword_100BC91EC != dword_100B5A9BC)
  {
    dword_100B5A9B8 = 0;
    dword_100B5A9BC = dword_100BC91EC;
    if (!dword_100BC91EC)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (dword_100B5A9B8 < 26)
  {
    ++dword_100B5A9B8;
    if (!dword_100BC91EC)
    {
LABEL_4:
      v0 = 2;
      sub_1001A4280(&unk_1008A3186, 2uLL, 15);
LABEL_10:

      sub_1001A2890(v0);
      return;
    }

LABEL_6:
    if (dword_100BC91EC == 1)
    {
      sub_1001A4280(&word_100B5A9B4, 3uLL, 15);
      v0 = 2;
    }

    else
    {
      if (dword_100BC91EC != 4)
      {
        return;
      }

      sub_1001A4280(&unk_1008A3184, 2uLL, 15);
      v0 = 1;
    }

    goto LABEL_10;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("H5 transport error sending link packet: retry limit exceeded, giving up");
    v1 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000C52F4(112);
  sub_1001A2EA4();
}

uint64_t sub_1001A2EAC()
{
  if (!word_100BC91F0)
  {
    return 103;
  }

  qword_100B5A9C0 = 0;
  byte_100B5A9C8 = 0;
  word_100B5A9CA = word_100BC91F0 + 6;
  qword_100B5A9C0 = sub_1001BBBD8(0x10uLL, 0x1010040AEFA612BuLL);
  v0 = sub_1001BBBD8(word_100B5A9CA, 0x75E1F57CuLL);
  result = 0;
  *qword_100B5A9C0 = v0;
  return result;
}

uint64_t sub_1001A2F3C()
{
  byte_100B5A9C8 = 0;
  *(qword_100B5A9C0 + 12) = 0;
  return 0;
}

uint64_t sub_1001A2F58(unsigned __int8 *a1, uint64_t a2)
{
  v2 = qword_100B5A9C0;
  if (a2)
  {
    v3 = a1;
    while (1)
    {
      v4 = (a2 - 1);
      v6 = *v3++;
      v5 = v6;
      v7 = *(v2 + 3);
      if (v7 > 1)
      {
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            if (v5 != 192)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

LABEL_16:
          sub_1000D660C();
          v2 = qword_100B5A9C0;
          goto LABEL_72;
        }

        *(v2 + 3) = 1;
        if (v5 == 221)
        {
          v11 = *v2;
          v12 = *(v2 + 4);
          *(v2 + 4) = v12 + 1;
          v13 = -37;
        }

        else
        {
          if (v5 != 220)
          {
            *(v2 + 3) = 0;
            v3 = a1;
            v4 = a2;
            goto LABEL_72;
          }

          v11 = *v2;
          v12 = *(v2 + 4);
          *(v2 + 4) = v12 + 1;
          v13 = -64;
        }

        v11[v12] = v13;
      }

      else
      {
        if (!v7)
        {
          if (v5 == 192)
          {
            v10 = 1;
          }

          else
          {
            v10 = 2;
          }

          *(v2 + 3) = v10;
          *(v2 + 4) = 0;
          goto LABEL_72;
        }

        if (v7 != 1)
        {
          goto LABEL_16;
        }

        if (v5 == 219)
        {
          *(v2 + 3) = 3;
        }

        else
        {
          if (v5 == 192)
          {
            v32 = 0;
            v8 = *(v2 + 4);
            if (v8 <= 3)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Short packet %@", *v2, *(v2 + 4));
                v9 = sub_10000C050(0x3Au);
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_42;
                }
              }

LABEL_70:
              v2 = qword_100B5A9C0;
LABEL_71:
              *(v2 + 3) = 0;
              goto LABEL_72;
            }

            v16 = *v2;
            v17 = **v2;
            v18 = (*v2)[1];
            v19 = (*v2)[2];
            if (((v18 + **v2 + v19) ^ (*v2)[3]) != 0xFF)
            {
              if (!sub_10000C240())
              {
                goto LABEL_70;
              }

              sub_10000AF54("Header checksum error");
              v9 = sub_10000C050(0x3Au);
              if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              goto LABEL_42;
            }

            if ((v17 & 0x40) != 0)
            {
              LOWORD(v8) = v8 - 2;
              *(v2 + 4) = v8;
              v20 = &v16[v8];
              v21 = v16[1];
              v19 = v16[2];
            }

            else
            {
              v20 = 0;
              v21 = (*v2)[1];
            }

            v22 = ((v21 >> 4) | (16 * v19));
            if (v8 - 4 != v22)
            {
              if (!sub_10000C240())
              {
                goto LABEL_70;
              }

              sub_10000AF54("Wrong packet length header says %d read %d bytes", v22, *(v2 + 4) - 4);
              v9 = sub_10000C050(0x3Au);
              if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              goto LABEL_42;
            }

            v23 = v18 & 0xF;
            if (v23 == 15)
            {
              sub_1001A28D0(v16 + 4, (v21 >> 4) | (16 * v19));
              goto LABEL_70;
            }

            if (dword_100BC91EC != 2)
            {
              goto LABEL_70;
            }

            sub_1001A2860();
            if ((v17 & 0x40) != 0)
            {
              if ((word_100BC91E8 & 0x100) != 0)
              {
                v31 = -1;
                sub_1003046D8(*v2, *(v2 + 4), &v31);
                sub_100304714(v31, &v32);
                if (__PAIR64__(v20[1], *v20) == __PAIR64__(HIBYTE(v32), v32))
                {
                  goto LABEL_45;
                }

                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Data integrity error - discarding packet\n%@", *v2, *(v2 + 4));
                v9 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }
              }

              else
              {
                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Data integrity bit not allowed");
                v9 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }
              }

              goto LABEL_42;
            }

LABEL_45:
            sub_1001A45D4((v17 >> 3) & 7);
            if (v23 > 2)
            {
              if (v23 != 3)
              {
                if (v23 != 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_59;
              }

              if ((v17 & 0x80000000) != 0)
              {
                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Reliable flag not expected on SCO data packet");
                v9 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                goto LABEL_42;
              }

              *&buf[8] = 0;
              *buf = mach_continuous_time();
              buf[8] = 0;
              v27 = (*v2 + 4);
              v28 = 3;
            }

            else
            {
              if ((v23 - 1) >= 2)
              {
                if (!v23)
                {
                  goto LABEL_70;
                }

LABEL_74:
                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Unknown packet type");
                v9 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

LABEL_42:
                v24 = sub_10000C0FC();
                *buf = 136446466;
                *&buf[4] = v24;
                *&buf[12] = 1024;
                *&buf[14] = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                goto LABEL_70;
              }

LABEL_59:
              if ((v17 & 0x80000000) == 0)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("Data packets expected to have reliable flag set");
                  v25 = sub_10000C050(0x3Au);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v29 = sub_10000C0FC();
                    *buf = 136446466;
                    *&buf[4] = v29;
                    *&buf[12] = 1024;
                    *&buf[14] = 0xFFFF;
                    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                  }
                }
              }

              v26 = v17 & 7;
              if ((v17 & 7) != byte_100B5A9C8)
              {
                if (((~byte_100B5A9C8 + v17) & 7u) >= byte_100BC91F3)
                {
                  sub_1001A46E0(v26);
                }

                goto LABEL_70;
              }

              byte_100B5A9C8 = (v17 + 1) & 7;
              sub_1001A46E0(v26);
              *&buf[8] = 0;
              *buf = mach_continuous_time();
              buf[8] = 0;
              v27 = (*v2 + 4);
              v28 = v23;
            }

            sub_10000394C(v28, v27, v22, buf);
            goto LABEL_70;
          }

          v14 = *(v2 + 4);
          if (v14 == word_100B5A9CA)
          {
            goto LABEL_71;
          }

          v15 = *v2;
          *(v2 + 4) = v14 + 1;
          v15[v14] = v5;
        }
      }

LABEL_72:
      a2 = v4;
      a1 = v3;
      if (!v4)
      {
        v2 = qword_100B5A9C0;
        return word_100B5A9CA - *(v2 + 4);
      }
    }
  }

  return word_100B5A9CA - *(v2 + 4);
}

uint64_t sub_1001A36B8()
{
  if (!word_100BC91F0)
  {
    return 103;
  }

  qword_100B5A9D0 = 0;
  qword_100B5A9D8 = 0;
  qword_100B5A9E0 = 0;
  qword_100B5A9E8 = 0;
  qword_100B5A9F0 = 0;
  qword_100B5A9F8 = 0;
  word_100B5AA00 = 0;
  byte_100B5AA02 = 0;
  dword_100BC91FC = 0;
  dword_100B5AA04 = 0;
  byte_100B5AA08 = 0;
  dword_100B5AA0C = 0;
  byte_100B5AA10 = 0;
  byte_100B5AA11 = 0;
  if (byte_100BC91F2)
  {
    v0 = 0;
    v1 = 0;
    do
    {
      qword_100B5A9E0 = sub_1001BBBD8(0x18uLL, 0x1030040A9CFD972uLL);
      v2 = sub_1001BBBD8(word_100BC91F0, 0xB98D728AuLL);
      v3 = qword_100B5A9E0;
      *(qword_100B5A9E0 + 16) = v2;
      *v3 = v0;
      ++v1;
      v0 = v3;
    }

    while (v1 < byte_100BC91F2);
  }

  qword_100B5A9E8 = sub_1001BBBD8(0x18uLL, 0x1030040A9CFD972uLL);
  *(qword_100B5A9E8 + 16) = sub_1001BBBD8(0x102uLL, 0x1ED1D232uLL);
  qword_100B5A9F0 = sub_1001BBBD8(0x18uLL, 0x1030040A9CFD972uLL);
  *(qword_100B5A9F0 + 16) = sub_1001BBBD8(0x102uLL, 0x4CFE145AuLL);
  result = sub_10002195C(sub_1001A3890, 0, 0x7FFFLL, &dword_100B5AA04);
  if (!result)
  {

    return sub_10002195C(sub_1001A3964, 0, 0x7FFFLL, &dword_100B5AA0C);
  }

  return result;
}

void sub_1001A3890()
{
  byte_100B5AA08 = 0;
  v0 = sub_10002195C(sub_1001A3890, 0, 0x7FFFLL, &dword_100B5AA04);
  if (v0)
  {
    sub_1000C52F4(v0);
    sub_1001A3964();
  }

  else
  {
    v1 = qword_100B5A9D8;
    if (dword_100BC91EC == 2 && qword_100B5A9D8 != 0)
    {
      do
      {
        v3 = v1;
        v1 = *v1;
      }

      while (v1);
      if (qword_100B5A9D0 == qword_100B5A9F0)
      {
        *v3 = *qword_100B5A9D0;
        *qword_100B5A9D0 = v3;
      }

      else
      {
        *v3 = qword_100B5A9D0;
        qword_100B5A9D0 = qword_100B5A9D8;
      }

      qword_100B5A9D8 = 0;
      if (!dword_100BC91FC)
      {

        sub_1001A3DB4();
      }
    }
  }
}

uint64_t sub_1001A3964()
{
  if (byte_100B5AA10)
  {
    byte_100B5AA10 = 0;
    sub_1001A4280(0, 0, 0);
  }

  result = sub_10002195C(sub_1001A3964, 0, 0x7FFFLL, &dword_100B5AA0C);
  if (result)
  {
    sub_1000C52F4(result);
    return sub_1001A39C4();
  }

  return result;
}

uint64_t sub_1001A39C4()
{
  result = sub_1000B7ADC(dword_100B5AA04, 0x7FFF);
  if (!result)
  {
    result = sub_1000B7ADC(dword_100B5AA0C, 0x7FFF);
    if (!result)
    {
      v1 = qword_100B5A9E0;
      v2 = qword_100B5A9D8;
      if (qword_100B5A9D8)
      {
        do
        {
          v3 = *v2;
          qword_100B5A9D8 = *v2;
          if (*(v2 + 11) == 2)
          {
            *v2 = v1;
            qword_100B5A9E0 = v2;
            v3 = qword_100B5A9D8;
            v1 = v2;
          }

          v2 = v3;
        }

        while (v3);
      }

      v4 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v5 = *v4;
          qword_100B5A9D0 = *v4;
          if (*(v4 + 11) == 2)
          {
            *v4 = v1;
            qword_100B5A9E0 = v4;
            v1 = v4;
          }

          v4 = v5;
        }

        while (v5);
      }

      result = 0;
      dword_100BC91FC = 0;
      byte_100B5AA10 = 0;
      byte_100B5AA11 = 0;
      word_100B5AA00 = 0;
      byte_100B5AA02 = 0;
      byte_100B5AA08 = 0;
    }
  }

  return result;
}

void sub_1001A3AA8(uint64_t a1, __int16 a2, __int16 a3)
{
  v5 = a1;
  if ((a1 - 1) >= 4u)
  {
    sub_1000D660C();
  }

  v6 = dword_100BC91EC;
  if (dword_100BC91EC == 3)
  {
    sub_1001A287C();
    v6 = dword_100BC91EC;
    if (dword_100BC91EC == 4)
    {
      goto LABEL_11;
    }

    sub_1000D660C();
    v6 = dword_100BC91EC;
  }

  if (v6 != 2 && v6 != 4)
  {
    v13 = v5;
LABEL_24:

    sub_1001A3D60(v13);
    return;
  }

LABEL_11:
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v14 = qword_100B5A9E8;
      *(qword_100B5A9E8 + 11) = 1;
      *(v14 + 8) = a3 + 3;
      sub_10001F6DC((*(v14 + 16) + 3));
      v15 = qword_100B5A9E8;
      **(qword_100B5A9E8 + 16) = a2;
      *(*(v15 + 16) + 2) = a3;
      v16 = byte_100B5AA02;
      *(v15 + 10) = byte_100B5AA02;
      *v15 = 0;
      byte_100B5AA02 = (v16 + 1) & 7;
      v17 = &qword_100B5A9D0;
      v18 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v17 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      *v17 = v15;
      goto LABEL_37;
    }

    if (v5 == 2)
    {
      v8 = qword_100B5A9E0;
      if (!qword_100B5A9E0)
      {
        sub_1000D660C();
        v8 = qword_100B5A9E0;
      }

      qword_100B5A9E0 = *v8;
      *(v8 + 11) = 2;
      *(v8 + 8) = a3 + 4;
      sub_10001F6DC((*(v8 + 16) + 4));
      **(v8 + 16) = a2;
      *(*(v8 + 16) + 2) = a3;
      v9 = byte_100B5AA02;
      *(v8 + 10) = byte_100B5AA02;
      *v8 = 0;
      byte_100B5AA02 = (v9 + 1) & 7;
      v10 = &qword_100B5A9D0;
      v11 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      *v10 = v8;
      if (!qword_100B5A9E0)
      {
        goto LABEL_37;
      }

      v12 = 2;
      goto LABEL_36;
    }

LABEL_23:
    sub_1000D660C();
    goto LABEL_37;
  }

  if (v5 != 3)
  {
    goto LABEL_23;
  }

  if (v6 == 4)
  {
    v13 = 3;
    goto LABEL_24;
  }

  v19 = qword_100B5A9F0;
  *(qword_100B5A9F0 + 11) = 3;
  *(v19 + 8) = a3 + 3;
  sub_10001F6DC((*(v19 + 16) + 3));
  v20 = qword_100B5A9F0;
  **(qword_100B5A9F0 + 16) = a2;
  *(*(v20 + 16) + 2) = a3;
  if (*(v20 + 11))
  {
    v21 = 0;
  }

  else
  {
    v21 = byte_100B5AA11;
  }

  *(v20 + 10) = v21;
  if (qword_100B5A9D0 != v20)
  {
    *v20 = qword_100B5A9D0;
    qword_100B5A9D0 = v20;
  }

  v12 = 3;
LABEL_36:
  sub_1001A3D60(v12);
LABEL_37:
  if (!dword_100BC91FC)
  {

    sub_1001A3DB4();
  }
}

void sub_1001A3D60(char a1)
{
  v3 = a1;
  v2[1] = &v3;
  v2[0] = 1;
  v1 = sub_1000228C0(sub_1001A4760, v2, 0);
  if (v1)
  {
    sub_1000C52F4(v1);
    sub_1001A3DB4();
  }
}

void sub_1001A3DB4()
{
  v0 = qword_100B5A9D0;
  qword_100B5A9F8 = qword_100B5A9D0;
  v1 = *(qword_100B5A9D0 + 11);
  if (v1 > 4 || ((1 << v1) & 0x16) == 0)
  {
    v6 = 0;
  }

  else
  {
    v3 = &qword_100B5A9D8;
    v4 = -1;
    do
    {
      v3 = *v3;
      ++v4;
    }

    while (v3);
    v5 = byte_100BC91F3;
    if (v4 > byte_100BC91F3)
    {
      sub_1000D660C();
      v5 = byte_100BC91F3;
    }

    if (v5 == v4)
    {
      dword_100BC91FC = 0;
      return;
    }

    v0 = qword_100B5A9F8;
    v6 = *(qword_100B5A9F8 + 10) | 0xFFFFFF80;
    v1 = *(qword_100B5A9F8 + 11);
  }

  v11 = v6;
  qword_100B5A9D0 = *v0;
  *v0 = 0;
  dword_100BC91FC = 1;
  if (v1 != 15)
  {
    v6 |= 8 * byte_100B5AA11;
    LOBYTE(v11) = v6;
    if (byte_100B5AA10)
    {
      byte_100B5AA10 = 0;
      sub_1000B7ADC(dword_100B5AA0C, 0x7FFF);
      v0 = qword_100B5A9F8;
      v1 = *(qword_100B5A9F8 + 11);
    }
  }

  v7 = *(v0 + 8);
  v8 = v1 | (16 * v7);
  BYTE1(v11) = v8;
  BYTE2(v11) = v7 >> 4;
  *qword_100B5AA20 = -64;
  word_100B5AA2A = 1;
  if (HIBYTE(word_100BC91E8) != 1 || ((v9 = *(v0 + 11)) != 0 ? (v10 = v9 == 15) : (v10 = 1), v10))
  {
    HIBYTE(v11) = ~(v8 + v6 + (v7 >> 4));
  }

  else
  {
    LOBYTE(v11) = v6 | 0x40;
    HIBYTE(v11) = ~(v8 + (v6 | 0x40) + (v7 >> 4));
    word_100B5AA18 = -1;
    sub_1003046D8(&v11, 4, &word_100B5AA18);
    sub_1003046D8(*(qword_100B5A9F8 + 16), *(qword_100B5A9F8 + 8), &word_100B5AA18);
  }

  sub_1001A4784(&v11, 4);
  word_100B5AA00 = 0;
  sub_1001A2860();
  sub_1001A443C();
}

void sub_1001A3F9C(int a1, __int16 a2, unsigned int a3, const void *a4)
{
  if ((a1 - 1) >= 4u)
  {
    sub_1000D660C();
  }

  v8 = dword_100BC91EC;
  if (dword_100BC91EC == 3)
  {
    sub_1001A287C();
    v8 = dword_100BC91EC;
    if (dword_100BC91EC == 4)
    {
      goto LABEL_11;
    }

    sub_1000D660C();
    v8 = dword_100BC91EC;
  }

  if (v8 != 2 && v8 != 4)
  {
    v15 = a1;
LABEL_24:

    sub_1001A3D60(v15);
    return;
  }

LABEL_11:
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v16 = qword_100B5A9E8;
      *(qword_100B5A9E8 + 11) = 1;
      *(v16 + 8) = a3 + 3;
      memmove((*(v16 + 16) + 3), a4, a3);
      v17 = qword_100B5A9E8;
      **(qword_100B5A9E8 + 16) = a2;
      *(*(v17 + 16) + 2) = a3;
      v18 = byte_100B5AA02;
      *(v17 + 10) = byte_100B5AA02;
      *v17 = 0;
      byte_100B5AA02 = (v18 + 1) & 7;
      v19 = &qword_100B5A9D0;
      v20 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v19 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      *v19 = v17;
      goto LABEL_37;
    }

    if (a1 == 2)
    {
      v10 = qword_100B5A9E0;
      if (!qword_100B5A9E0)
      {
        sub_1000D660C();
        v10 = qword_100B5A9E0;
      }

      qword_100B5A9E0 = *v10;
      *(v10 + 11) = 2;
      *(v10 + 8) = a3 + 4;
      memmove((*(v10 + 16) + 4), a4, a3);
      **(v10 + 16) = a2;
      *(*(v10 + 16) + 2) = a3;
      v11 = byte_100B5AA02;
      *(v10 + 10) = byte_100B5AA02;
      *v10 = 0;
      byte_100B5AA02 = (v11 + 1) & 7;
      v12 = &qword_100B5A9D0;
      v13 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v12 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      *v12 = v10;
      if (!qword_100B5A9E0)
      {
        goto LABEL_37;
      }

      v14 = 2;
      goto LABEL_36;
    }

LABEL_23:
    sub_1000D660C();
    goto LABEL_37;
  }

  if (a1 != 3)
  {
    goto LABEL_23;
  }

  if (v8 == 4)
  {
    v15 = 3;
    goto LABEL_24;
  }

  v21 = qword_100B5A9F0;
  *(qword_100B5A9F0 + 11) = 3;
  *(v21 + 8) = a3 + 3;
  memmove((*(v21 + 16) + 3), a4, a3);
  v22 = qword_100B5A9F0;
  **(qword_100B5A9F0 + 16) = a2;
  *(*(v22 + 16) + 2) = a3;
  if (*(v22 + 11))
  {
    v23 = 0;
  }

  else
  {
    v23 = byte_100B5AA11;
  }

  *(v22 + 10) = v23;
  if (qword_100B5A9D0 != v22)
  {
    *v22 = qword_100B5A9D0;
    qword_100B5A9D0 = v22;
  }

  v14 = 3;
LABEL_36:
  sub_1001A3D60(v14);
LABEL_37:
  if (!dword_100BC91FC)
  {

    sub_1001A3DB4();
  }
}

void sub_1001A4280(void *__src, size_t __len, int a3)
{
  v3 = a3;
  v4 = __len;
  if (a3 && a3 != 15)
  {
    sub_1000D660C();
  }

  if (v4 >= 0x103)
  {
    sub_1000D660C();
    v6 = qword_100B5A9F0;
    *(qword_100B5A9F0 + 11) = v3;
    goto LABEL_8;
  }

  v6 = qword_100B5A9F0;
  *(qword_100B5A9F0 + 11) = v3;
  if (v4)
  {
LABEL_8:
    memmove(*(v6 + 16), __src, v4);
    v6 = qword_100B5A9F0;
    v3 = *(qword_100B5A9F0 + 11);
  }

  *(v6 + 8) = v4;
  v7 = byte_100B5AA11;
  if (v3)
  {
    v7 = 0;
  }

  *(v6 + 10) = v7;
  if (qword_100B5A9D0 != v6)
  {
    *v6 = qword_100B5A9D0;
    qword_100B5A9D0 = v6;
  }

  if (!dword_100BC91FC)
  {

    sub_1001A3DB4();
  }
}

void sub_1001A435C(uint64_t a1, __int16 a2, int a3)
{
  qword_100B5AA20 = a1;
  word_100B5AA28 = a2;
  word_100B5AA2A = 0;
  if (a3)
  {
    if (a3 == 1216)
    {
      return;
    }

    dword_100BC91FC = 2;
  }

  else if (dword_100BC91FC == 1)
  {

    goto LABEL_7;
  }

  if (qword_100B5A9D8 && (byte_100B5AA08 & 1) == 0)
  {
    v3 = sub_1000B7ADC(dword_100B5AA04, 2);
    if (!v3)
    {
      byte_100B5AA08 = 1;
      goto LABEL_12;
    }

    sub_1000C52F4(v3);
LABEL_7:
    sub_1001A443C();
    return;
  }

LABEL_12:
  if (qword_100B5A9D0)
  {

    sub_1001A3DB4();
  }

  else
  {
    dword_100BC91FC = 0;
  }
}

void sub_1001A443C()
{
  word_100B5AA00 += sub_1001A4784(*(qword_100B5A9F8 + 16) + word_100B5AA00, (*(qword_100B5A9F8 + 8) - word_100B5AA00));
  v0 = qword_100B5A9F8;
  v1 = word_100B5AA2A;
  if (*(qword_100B5A9F8 + 8) > word_100B5AA00)
  {
    goto LABEL_14;
  }

  v2 = word_100B5AA28;
  if (HIBYTE(word_100BC91E8) != 1 || (*(qword_100B5A9F8 + 11) ? (v3 = *(qword_100B5A9F8 + 11) == 15) : (v3 = 1), v3))
  {
    if (word_100B5AA28 == word_100B5AA2A)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    if ((word_100B5AA28 - word_100B5AA2A) <= 4u)
    {
      goto LABEL_14;
    }

    sub_100304714(word_100B5AA18, &v6);
    sub_1001A4784(&v6, 2);
    if (v2 == v1)
    {
      goto LABEL_14;
    }

    v0 = qword_100B5A9F8;
    v1 = word_100B5AA2A;
  }

  word_100B5AA2A = v1 + 1;
  *(qword_100B5AA20 + v1) = -64;
  dword_100BC91FC = 2;
  if (v0 != qword_100B5A9F0)
  {
    v4 = &qword_100B5A9D8;
    v5 = qword_100B5A9D8;
    if (qword_100B5A9D8)
    {
      do
      {
        v4 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    *v4 = v0;
  }

  qword_100B5A9F8 = 0;
LABEL_14:
  if (sub_10022DBCC() == 625)
  {
    sub_1001A435C(qword_100B5AA20, word_100B5AA28, 625);
  }
}

uint64_t sub_1001A45D4(uint64_t result)
{
  v1 = qword_100B5A9D8;
  if (!qword_100B5A9D8)
  {
    return result;
  }

  v2 = result + 7;
  if (((result + 7 - *(qword_100B5A9D8 + 10)) & 7u) >= byte_100BC91F3)
  {
    return result;
  }

  do
  {
    qword_100B5A9D8 = *v1;
    v3 = *(v1 + 11);
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        if (v3 == 4)
        {
          goto LABEL_9;
        }

        sub_1000D660C();
      }

      v4 = qword_100B5A9E0;
      *v1 = qword_100B5A9E0;
      qword_100B5A9E0 = v1;
      if (v4)
      {
        goto LABEL_10;
      }

      v3 = 2;
    }

LABEL_9:
    sub_100256D50(v3, 0);
LABEL_10:
    v1 = qword_100B5A9D8;
    if (!qword_100B5A9D8)
    {
      result = sub_1000B7ADC(dword_100B5AA04, 0x7FFF);
      byte_100B5AA08 = 0;
      return result;
    }
  }

  while (((v2 - *(qword_100B5A9D8 + 10)) & 7u) < byte_100BC91F3);
  v5 = dword_100B5AA04;

  return sub_1000B7ADC(v5, 2);
}

void sub_1001A46E0(char a1)
{
  if (((~a1 + byte_100B5AA11) & 7u) >= byte_100BC91F3)
  {
    byte_100B5AA11 = (a1 + 1) & 7;
  }

  if (!dword_100BC91FC)
  {
    v1 = byte_100B5AA10;
    v2 = ++byte_100B5AA10;
    if (v1)
    {
      if (byte_100BC91F3 == v2)
      {
        sub_1001A4280(0, 0, 0);
      }
    }

    else
    {
      sub_1000B7ADC(dword_100B5AA0C, 1);
    }
  }
}

void sub_1001A4760(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (dword_100BC91EC == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1215;
  }

  sub_100256D50(v1, v2);
}

uint64_t sub_1001A4784(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = word_100B5AA2A;
      if (word_100B5AA2A == word_100B5AA28)
      {
        break;
      }

      v5 = *(a1 + v3);
      if (v5 == 219 || v5 == 192)
      {
        if (word_100B5AA2A + 1 == word_100B5AA28)
        {
          break;
        }

        ++word_100B5AA2A;
        *(qword_100B5AA20 + v4) = -37;
        if (v5 == 219)
        {
          LOBYTE(v5) = -35;
        }

        else
        {
          LOBYTE(v5) = -36;
        }

        v4 = word_100B5AA2A;
      }

      word_100B5AA2A = v4 + 1;
      *(qword_100B5AA20 + v4) = v5;
      if (a2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    v2 = v3;
  }

LABEL_14:
  if (word_100B5AA2A > word_100B5AA28)
  {
    sub_1000D660C();
  }

  return v2;
}

uint64_t sub_1001A484C(unint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 < a2)
  {
    v7 = *a1;
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      v10 = v9 & 0xFC00;
      if (v10 == 55296)
      {
        if (v7 >= a2)
        {
          v15 = 1;
          goto LABEL_33;
        }

        v11 = *v7;
        if ((v11 & 0xFC00) == 0xDC00)
        {
          v8 = v11 + (v8 << 10) - 56613888;
          v7 = (v5 + 4);
        }

        else if (!a5)
        {
          goto LABEL_31;
        }
      }

      else if (!a5 && v10 == 56320)
      {
LABEL_31:
        v15 = 3;
        goto LABEL_33;
      }

      if (v8 < 0x10000)
      {
        v12 = 3;
      }

      else
      {
        v12 = 4;
      }

      if (v8 < 0x800)
      {
        v12 = 2;
      }

      if (v8 >= 0x80)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }

      v14 = v6 + v13;
      if (v14 > a4)
      {
        v15 = 2;
        goto LABEL_33;
      }

      if (v13 > 2u)
      {
        if (v13 != 3)
        {
          *--v14 = v8 & 0x3F | 0x80;
          v8 >>= 6;
        }

        *--v14 = v8 & 0x3F | 0x80;
        v8 >>= 6;
      }

      else if (v13 == 1)
      {
        goto LABEL_27;
      }

      *--v14 = v8 & 0x3F | 0x80;
      v8 >>= 6;
LABEL_27:
      *(v14 - 1) = byte_1008A3188[v13] | v8;
      v6 = v14 - 1 + v13;
      v5 = v7;
      if (v7 >= a2)
      {
        v15 = 0;
        v5 = v7;
        goto LABEL_33;
      }
    }
  }

  v15 = 0;
LABEL_33:
  *a1 = v5;
  *a3 = v6;
  return v15;
}

BOOL sub_1001A4998(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  v3 = &a1[a2];
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v2;
      }

      v4 = *--v3;
      if (v4 > -65)
      {
        return 0;
      }
    }

    v5 = *--v3;
    if (v5 > -65)
    {
      return 0;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v7 = *a1;
      return v7 > -63 && v7 < 0xF5;
    }

    if (a2 != 2)
    {
      return v2;
    }
  }

  v6 = *(v3 - 1);
  if (v6 > 0xBF)
  {
    return 0;
  }

  v7 = *a1;
  if (v7 > 0xEF)
  {
    if (v7 != 240)
    {
      if (v7 == 244)
      {
        if (v6 > 0x8F)
        {
          return 0;
        }

        v7 = 244;
        return v7 > -63 && v7 < 0xF5;
      }

      goto LABEL_28;
    }

    if (v6 < 0x90)
    {
      return 0;
    }

    v7 = 240;
  }

  else
  {
    if (v7 != 224)
    {
      if (v7 == 237)
      {
        if (v6 > 0x9F)
        {
          return 0;
        }

        v7 = 237;
        return v7 > -63 && v7 < 0xF5;
      }

LABEL_28:
      if ((v6 & 0x80) == 0)
      {
        return 0;
      }

      return v7 > -63 && v7 < 0xF5;
    }

    if (v6 < 0xA0)
    {
      return 0;
    }

    v7 = 224;
  }

  return v7 > -63 && v7 < 0xF5;
}

uint64_t sub_1001A4A8C(unsigned __int8 **a1, unint64_t a2, _WORD **a3, unint64_t a4, int a5)
{
  v7 = *a1;
  v8 = *a3;
  if (*a1 >= a2)
  {
LABEL_30:
    result = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v12 = *v7;
    v13 = byte_1008A318F[*v7];
    if (&v7[v13] >= a2)
    {
      result = 1;
      goto LABEL_36;
    }

    v14 = v13 + 1;
    if (!sub_1001A4998(v7, v13 + 1))
    {
      goto LABEL_35;
    }

    v15 = 0;
    if (v13 > 2)
    {
      if (v13 != 3)
      {
        if (v13 != 4)
        {
          if (v13 != 5)
          {
            goto LABEL_17;
          }

          v15 = v12 << 6;
          v16 = *++v7;
          v12 = v16;
        }

        v17 = v15 + v12;
        v18 = *++v7;
        v12 = v18;
        v15 = v17 << 6;
      }

      v19 = v15 + v12;
      v20 = *++v7;
      v12 = v20;
      v15 = v19 << 6;
LABEL_14:
      v21 = v15 + v12;
      v22 = *++v7;
      v12 = v22;
      v15 = v21 << 6;
      goto LABEL_15;
    }

    if (!v13)
    {
      v25 = 0;
      goto LABEL_16;
    }

    if (v13 != 1)
    {
      goto LABEL_14;
    }

LABEL_15:
    v23 = v15 + v12;
    v24 = *++v7;
    v12 = v24;
    v25 = v23 << 6;
LABEL_16:
    ++v7;
    v15 = v25 + v12;
LABEL_17:
    if (v8 >= a4)
    {
      v7 -= v14;
LABEL_33:
      result = 2;
      goto LABEL_36;
    }

    v26 = v15 - dword_1008A3290[v13];
    if (!HIWORD(v26))
    {
      break;
    }

    if (v26 >= 0x110000)
    {
      goto LABEL_22;
    }

    if ((v8 + 1) >= a4)
    {
      v7 -= v14;
      goto LABEL_33;
    }

    *v8 = ((v26 + 67043328) >> 10) - 10240;
    v8[1] = v26 & 0x3FF | 0xDC00;
    v8 += 2;
LABEL_27:
    if (v7 >= a2)
    {
      goto LABEL_30;
    }
  }

  if ((v26 & 0xF800) != 0xD800)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (a5)
  {
    LOWORD(v26) = -3;
LABEL_24:
    *v8++ = v26;
    goto LABEL_27;
  }

  v7 -= v14;
LABEL_35:
  result = 3;
LABEL_36:
  *a1 = v7;
  *a3 = v8;
  return result;
}

void sub_1001A4C5C(uint64_t result, uint64_t a2)
{
  if (*(qword_100BC9C18 + 32))
  {
    v4 = *(qword_100BC9C18 + 8);
    if (!v4)
    {
      sub_1000D660C();
      v4 = *(qword_100BC9C18 + 8);
    }

    if (!*v4)
    {
      sub_1000D660C();
    }

    v5 = sub_1002030D8(result, 1);
    if (v5)
    {
      v6 = qword_100BC9C18;
      if (*(qword_100BC9C18 + 88))
      {
        v7 = v5;
        v8 = 0;
        v9 = 0;
        do
        {
          if (*(*(v7 + 8) + v8))
          {
            sub_1001A4D20(result, v9, a2);
            v6 = qword_100BC9C18;
          }

          ++v9;
          v8 += 8;
        }

        while (v9 < *(v6 + 88));
      }
    }
  }
}

void sub_1001A4D20(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = a2;
  v5 = sub_1002030D8(a1, 1);
  if (v5)
  {
    v6 = *(qword_100BC9C18 + 8);
    if (v6)
    {
      v7 = v5;
      if (!*v6)
      {
        sub_1000D660C();
      }

      sub_10002242C(*(*(v7 + 8) + 8 * a2 + 4));
      *(*(v7 + 8) + 8 * a2 + 4) = 0;
      sub_100202FE8(v7, &v9);
      (**(qword_100BC9C18 + 8))(v7, v9, 0, a3);
      *(*(v7 + 8) + 8 * v9) = 0;
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_AVRCPController_CommandFailed called, but no controller exists");
      v8 = sub_10000C050(4u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100810070(v8);
      }
    }
  }
}

uint64_t sub_1001A4E24(uint64_t a1, int a2, uint64_t a3)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (!a1 || !a3)
  {
    sub_1000D660C();
    return 101;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  if (*(qword_100BC9C18 + 8))
  {
    return 119;
  }

  v8 = sub_1001BBBD8(0x18uLL, 0x10200405D21B11CuLL);
  v9 = qword_100BC9C18;
  *(qword_100BC9C18 + 32) = v8;
  if (!v8)
  {
    return 106;
  }

  v10 = sub_1001BBBD8(32 * *(v9 + 89), 0x1020040EC06A7F1uLL);
  v11 = qword_100BC9C18;
  v12 = *(qword_100BC9C18 + 32);
  v12[1] = v10;
  if (!v10)
  {
    sub_10000C1E8(v12);
    *(qword_100BC9C18 + 32) = 0;
    return 106;
  }

  if (*(v11 + 89))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      *(*(*(qword_100BC9C18 + 32) + 8) + v13 + 8) = sub_1001BBBD8(8 * *(v11 + 88), 0x10000404A09149AuLL);
      v15 = *(*(qword_100BC9C18 + 32) + 8) + v13;
      if (!*(v15 + 8))
      {
        break;
      }

      *v15 = 0;
      *(v15 + 4) = 0;
      ++v14;
      v11 = qword_100BC9C18;
      v13 += 32;
      if (v14 >= *(qword_100BC9C18 + 89))
      {
        goto LABEL_15;
      }
    }

    v5 = 106;
    goto LABEL_27;
  }

LABEL_15:
  *(v11 + 8) = a1;
  *(v11 + 48) = sub_1001A5174;
  *(v11 + 64) = sub_1001A528C;
  v16 = *(sub_1003045A0(4u) + 4);
  if (!v16)
  {
    v16 = 4;
  }

  *(*(qword_100BC9C18 + 32) + 16) = v16;
  v17 = *(sub_1003045A0(4u) + 6);
  if (!v17)
  {
    v17 = 8;
  }

  *(*(qword_100BC9C18 + 32) + 18) = v17;
  v18 = *(sub_1003045A0(4u) + 8);
  v19 = *(qword_100BC9C18 + 32);
  if (!v18)
  {
    v18 = 20;
  }

  *(v19 + 20) = v18;
  xmmword_100B5AA30 = xmmword_1008A3708;
  DWORD2(xmmword_100B5AA30) = a2;
  *&v27 = &unk_100AE4C80;
  WORD4(v27) = 4;
  *&v28 = *a3;
  WORD4(v28) = *(a3 + 8);
  xmmword_100B5AA30 = xmmword_1008A3708;
  DWORD2(xmmword_100B5AA30) = a2;
  *&v25 = &unk_100AE4CE0;
  WORD4(v25) = 4;
  *&v26 = *a3;
  WORD4(v26) = *(a3 + 8);
  v5 = sub_1002F7E1C(&v27, v19);
  sub_1002F8134(**(qword_100BC9C18 + 32), &v25);
  if (v5 || (v5 = sub_1002033F0(), v5))
  {
LABEL_27:
    sub_1002F8018(**(qword_100BC9C18 + 32));
    v20 = qword_100BC9C18;
    *(qword_100BC9C18 + 8) = 0;
    if (*(v20 + 89))
    {
      v21 = 0;
      v22 = 8;
      do
      {
        v23 = *(*(*(v20 + 32) + 8) + v22);
        if (v23)
        {
          sub_10000C1E8(v23);
          *(*(*(qword_100BC9C18 + 32) + 8) + v22) = 0;
          v20 = qword_100BC9C18;
        }

        ++v21;
        v22 += 32;
      }

      while (v21 < *(v20 + 89));
    }

    v24 = *(v20 + 32);
    if (v24[1])
    {
      sub_10000C1E8(v24[1]);
      v24 = *(qword_100BC9C18 + 32);
      v24[1] = 0;
    }

    sub_10000C1E8(v24);
    *(qword_100BC9C18 + 32) = 0;
  }

  return v5;
}

uint64_t sub_1001A5174(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (*(qword_100BC9C18 + 8))
  {
    v5 = result;
    v6 = *a3;
    result = sub_1002030D8(result, 1);
    if (result)
    {
      v7 = result;
      v8 = *(result + 8);
      if (*(v8 + 8 * a2) == 2)
      {
        sub_10002242C(*(v8 + 8 * a2 + 4));
        v9 = *(v7 + 8);
        *(v9 + 8 * a2 + 4) = 0;
        if (v6 != 15)
        {
          *(v9 + 8 * a2) = 3;
        }

        if (*(a3 + 8))
        {
          v10 = qword_100BC9C18;
          if ((**(a3 + 1) & 0x7F) == 0 && *(*(qword_100BC9C18 + 8) + 8))
          {
            result = sub_100204460(v5, a2, a3);
            goto LABEL_12;
          }
        }

        else
        {
          v10 = qword_100BC9C18;
        }

        result = (**(v10 + 8))(v5, a2, a3, 0);
LABEL_12:
        if (v6 != 15)
        {
          *(*(v7 + 8) + 8 * a2) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001A528C()
{
  v0 = *(*(qword_100BC9C18 + 8) + 16);
  if (v0)
  {
    return v0();
  }

  return result;
}

uint64_t sub_1001A52AC()
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v0 = *(qword_100BC9C18 + 32);
  if (!v0)
  {
    return 121;
  }

  if (*(qword_100BC9C18 + 90) && !*(qword_100BC9C18 + 16))
  {
    return 141;
  }

  sub_1002F8018(*v0);
  v1 = qword_100BC9C18;
  *(qword_100BC9C18 + 8) = 0;
  if (*(v1 + 89))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(*(v1 + 32) + 8) + v3);
      if (v4)
      {
        sub_10000C1E8(v4);
        *(*(*(qword_100BC9C18 + 32) + 8) + v3) = 0;
        v1 = qword_100BC9C18;
      }

      ++v2;
      v3 += 32;
    }

    while (v2 < *(v1 + 89));
  }

  v5 = *(v1 + 32);
  if (v5[1])
  {
    sub_10000C1E8(v5[1]);
    v5 = *(qword_100BC9C18 + 32);
    v5[1] = 0;
  }

  sub_10000C1E8(v5);
  *(qword_100BC9C18 + 32) = 0;

  return sub_100203B74();
}

uint64_t sub_1001A53C0(int *a1, unsigned __int8 *a2, char a3)
{
  v4 = xmmword_1008A32A8;
  v5 = 0;
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a1 && a2)
  {
    *(&v4 + 1) = v6;
    LOWORD(v5) = 2;
    v6[0] = a3;
    v6[1] = 0;
    return sub_1001A5440(a1, a2, &v4);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1001A5440(int *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v19 = 0;
  if (!*(qword_100BC9C18 + 8))
  {
    return 3309;
  }

  v20 = 0;
  v6 = sub_1001A56B8(a1, &v19, &v20);
  if (!v6)
  {
    if (a3[3])
    {
      v7 = (*(qword_100BC9C18 + 32) + 16);
    }

    else
    {
      v8 = *(qword_100BC9C18 + 32);
      v9 = v8 + 20;
      v10 = v8 + 18;
      v7 = (*a3 ? v9 : v10);
    }

    v11 = *v7;
    v12 = v19;
    v13 = v20;
    v21[0] = v19;
    v21[1] = v20;
    v22[0] = 16;
    v22[1] = v21;
    if (sub_10002260C(*(*(v19 + 8) + 8 * v20 + 4)) || (v6 = sub_1000228C0(sub_1001A5780, v22, (*(v12 + 8) + 8 * v13 + 4)), !v6))
    {
      v14 = sub_1000B7ADC(*(*(v12 + 8) + 8 * v13 + 4), v11);
      if (v14)
      {
        v6 = v14;
        sub_10002242C(*(*(v12 + 8) + 8 * v13 + 4));
        v15 = *(v12 + 8) + 8 * v13;
LABEL_15:
        *(v15 + 4) = 0;
        return v6;
      }

      v16 = sub_100203D68(a1, v20, a3);
      if (v16)
      {
        v6 = v16;
        v17 = v20;
        sub_10002242C(*(*(v12 + 8) + 8 * v20 + 4));
        v15 = *(v12 + 8) + 8 * v17;
        goto LABEL_15;
      }

      *(*(v12 + 8) + 8 * v20) = 2;
      v6 = 0;
      if (a2)
      {
        *a2 = v20;
      }
    }
  }

  return v6;
}

uint64_t sub_1001A55F0(int *a1, char a2)
{
  v5 = 0x1000050581900;
  HIBYTE(v5) = a2;
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a1)
  {
    v4[0] = 2304;
    v4[1] = &v5;
    v4[2] = 8;
    return sub_1001A5440(a1, &v3, v4);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1001A569C(int *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (xmmword_100BCE240)
  {
    return sub_1001A5440(a1, a2, a3);
  }

  else
  {
    return 408;
  }
}

uint64_t sub_1001A56B8(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (!a3)
  {
    sub_1000D660C();
  }

  v6 = sub_1002030D8(a1, 1);
  if (!v6)
  {
    return 120;
  }

  if (!*(qword_100BC9C18 + 88))
  {
    return 118;
  }

  v7 = *(v6 + 16);
  v8 = *(qword_100BC9C18 + 88);
  while (1)
  {
    v9 = v7 % *(qword_100BC9C18 + 88);
    if (!*(*(v6 + 8) + 8 * v9))
    {
      break;
    }

    ++v7;
    if (!--v8)
    {
      return 118;
    }
  }

  v10 = 0;
  *a2 = v6;
  *(v6 + 16) = (v9 + 1) % *(qword_100BC9C18 + 88);
  *a3 = v9;
  return v10;
}

void sub_1001A5780(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = v1[8];
  v4 = 8 * v1[8];
  v5 = *(*v1 + 8) + v4;
  *v5 = 4;
  *(v5 + 4) = 0;
  sub_1001A4D20(v2, v3, 3312);
  *(*(v2 + 8) + v4) = 0;
}

uint64_t sub_1001A57D4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    v3 = "data";
    goto LABEL_6;
  }

  if (!a3)
  {
    v3 = "(len) > 0";
LABEL_6:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 128, v3);
  }

  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 36) = 0x10000;
  *(result + 34) = a3;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1001A5834(int *a1, uint64_t a2)
{
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  if (a2)
  {
    v3 = *(a2 + 8);
    if (*(a2 + 8))
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = (*a2 + 24 * i);
        v7 = *v6;
        if (v7 > 0x48)
        {
          if (*v6 > 0x70u)
          {
            if (v7 == 113)
            {
              v12 = *a1;
              if ((*a1 & 2) == 0)
              {
                *(a1 + 3) = v6 + 8;
                v9 = v12 | 2;
                goto LABEL_28;
              }
            }

            else if (v7 == 195)
            {
              a1[12] = *(v6 + 2);
              v9 = *a1 | 0x4000;
LABEL_28:
              *a1 = v9;
            }
          }

          else if (v7 == 73)
          {
            *(a1 + 7) = v6 + 8;
            *(a1 + 64) = 1;
          }

          else if (v7 == 76)
          {
            v30 = 0;
            v28 = 0u;
            v29 = 0u;
            sub_1001A57D4(&v28, *(v6 + 2), *(v6 + 4));
            if (HIBYTE(v30))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 142, "OI_STATUS CopyParamData(OI_OBEX_BYTESEQ *, BIP_REQUEST_HEADERS *)");
LABEL_82:
              v3 = *(a2 + 8);
              continue;
            }

            v13 = WORD1(v30);
            if (WORD1(v30) <= WORD2(v30))
            {
              goto LABEL_82;
            }

            v14 = BYTE6(v30);
            v15 = *(&v29 + 1);
            v16 = WORD1(v30) - 3;
            v17 = WORD1(v30) - 1;
            v18 = v29;
            while (2)
            {
              if (v13 < v18)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 107, "(size_t)(bk->nextTagPos) <= (size_t)((bk->bs).__size)");
              }

              if (v13 == v18)
              {
                goto LABEL_82;
              }

              if (v14 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 115, "(bk->bs).__RWFlag == BYTESTREAM_READ");
              }

              if (v13 <= (v18 + 1))
              {
                return 411;
              }

              v19 = v18 + 2;
              v20 = *(v15 + v18 + 1);
              if ((v13 - v19) < v20)
              {
                return 411;
              }

              v21 = *(v15 + v18);
              v22 = (v18 + 2);
              if (v21 > 5)
              {
                if (*(v15 + v18) <= 7u)
                {
                  if (v21 == 6)
                  {
                    if (v20 != 4)
                    {
                      return 411;
                    }

                    if (v16 <= v22)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 195, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                    }

                    a1[20] = bswap32(*(v15 + v19));
                    v23 = v18 + 6;
                    v24 = 256;
                  }

                  else
                  {
                    v23 = v18 + 2;
                    if (v21 != 7)
                    {
                      goto LABEL_81;
                    }

                    if (v20 != 1)
                    {
                      return 411;
                    }

                    if (v13 <= v19)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 203, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                    }

                    v23 = v18 + 3;
                    *(a1 + 84) = *(v15 + v19);
                    v24 = 512;
                  }
                }

                else if (v21 == 8)
                {
                  if (v20 != 1)
                  {
                    return 411;
                  }

                  if (v13 <= v19)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 211, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                  }

                  v23 = v18 + 3;
                  *(a1 + 85) = *(v15 + v19);
                  v24 = 1024;
                }

                else if (v21 == 9)
                {
                  if (v20 != 16)
                  {
                    return 411;
                  }

                  if (v16 <= v22)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 219, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                  }

                  a1[22] = bswap32(*(v15 + v19));
                  if (v13 - (v18 + 6) <= 0xB)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 220, "ByteStream_NumReadBytesAvail(bk.bs) >= (sizeof(req->serviceId.base))");
                  }

                  v25 = (v15 + (v18 + 6));
                  v26 = *v25;
                  a1[25] = *(v25 + 2);
                  *(a1 + 23) = v26;
                  v23 = v18 + 18;
                  v24 = 2048;
                }

                else
                {
                  v23 = v18 + 2;
                  if (v21 != 10)
                  {
                    goto LABEL_81;
                  }

                  if (v20 != 1)
                  {
                    return 411;
                  }

                  if (v13 <= v19)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 228, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                  }

                  v23 = v18 + 3;
                  *(a1 + 104) = *(v15 + v19);
                  v24 = 4096;
                }
              }

              else if (*(v15 + v18) <= 2u)
              {
                if (v21 == 1)
                {
                  if (v20 != 2)
                  {
                    return 411;
                  }

                  if (v17 <= v22)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 155, "ByteStream_NumReadBytesAvail(bk.bs) >= 2");
                  }

                  *(a1 + 33) = bswap32(*(v15 + v19)) >> 16;
                  v23 = v18 + 4;
                  v24 = 8;
                }

                else
                {
                  v23 = v18 + 2;
                  if (v21 != 2)
                  {
                    goto LABEL_81;
                  }

                  if (v20 != 2)
                  {
                    return 411;
                  }

                  if (v17 <= v22)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 163, "ByteStream_NumReadBytesAvail(bk.bs) >= 2");
                  }

                  *(a1 + 34) = bswap32(*(v15 + v19)) >> 16;
                  v23 = v18 + 4;
                  v24 = 16;
                }
              }

              else if (v21 == 3)
              {
                if (v20 != 1)
                {
                  return 411;
                }

                if (v13 <= v19)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 171, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                }

                v23 = v18 + 3;
                *(a1 + 70) = *(v15 + v19);
                v24 = 32;
              }

              else
              {
                if (v21 != 4)
                {
                  v23 = v18 + 2;
                  if (v21 == 5)
                  {
                    if (v20 != 4)
                    {
                      return 411;
                    }

                    if (v16 <= v22)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 187, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                    }

                    a1[19] = bswap32(*(v15 + v19));
                    v23 = v18 + 6;
                    v24 = 128;
                    break;
                  }

LABEL_81:
                  v18 = v19 + v20;
                  if (v13 <= v23)
                  {
                    goto LABEL_82;
                  }

                  continue;
                }

                if (v20 != 4)
                {
                  return 411;
                }

                if (v16 <= v22)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 179, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                }

                a1[18] = bswap32(*(v15 + v19));
                v23 = v18 + 6;
                v24 = 64;
              }

              break;
            }

            *a1 |= v24;
            goto LABEL_81;
          }
        }

        else if (*v6 > 0x41u)
        {
          if (v7 != 66)
          {
            if (v7 == 72)
            {
              *(a1 + 7) = v6 + 8;
              *(a1 + 64) = 0;
            }

            continue;
          }

          v11 = *a1;
          if ((*a1 & 0x8000) == 0)
          {
            *(a1 + 1) = v6 + 8;
            v9 = v11 | 0x8000;
            goto LABEL_28;
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 48)
            {
              continue;
            }

            v8 = *a1;
            if ((*a1 & 4) != 0)
            {
              continue;
            }

            *(a1 + 4) = v6 + 8;
            v9 = v8 | 4;
            goto LABEL_28;
          }

          v10 = *a1;
          if ((*a1 & 1) == 0)
          {
            *(a1 + 2) = v6 + 8;
            v9 = v10 | 1;
            goto LABEL_28;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001A5DEC(uint64_t a1, uint64_t (*a2)(void))
{
  sub_100304AF8("APPLE PCIe register error handler\n");
  if (qword_100B5AA40)
  {
    sub_100304AF8("APPLE PCIe error handler already registered\n");
  }

  else if (a2)
  {
    off_100B5AA48 = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1001A5EFC;
    aBlock[3] = &unk_100AE4E00;
    aBlock[4] = a1;
    qword_100B5AA40 = _Block_copy(aBlock);
    if (qword_100B5AA40)
    {
      if (!qword_100B5AB58 || !CentauriControllerRegisterUniqueErrorHandlerWithQueue())
      {
        return 1;
      }

      sub_100304AF8("APPLE PCIe transport error handler register failed 0x%08x\n");
    }

    else
    {
      sub_100304AF8("APPLE PCIe failed to allocate error handler\n");
    }
  }

  else
  {
    sub_100304AF8("APPLE PCIe shutdown check callback is null\n");
  }

  return 0;
}

void sub_1001A5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100304AF8("APPLE PCIe error source %u code %u\n", a2, a3);
  if (a2 <= 1)
  {
    if (!a2)
    {
      v8 = sub_1001A61D8(a3);
      v9 = snprintf(&xmmword_100B5AA50, 0x100uLL, "beta: %s", v8);
      if (v9 <= 0xFF)
      {
        v10 = v9;
        if (!strcmp(v8, "unknown error"))
        {
          snprintf(&xmmword_100B5AA50 + v10, 256 - v10, " (err code: %u)", a3);
        }
      }

      if (a3 != 7 && a3)
      {
        goto LABEL_21;
      }

LABEL_18:
      byte_100B5AB50 = 1;
LABEL_21:
      sub_100304AF8("APPLE PCIe transport error source %u reason: %s\n", a2, &xmmword_100B5AA50);
      v12 = a2 == 1000 && a3 == 0;
      (*(a1 + 32))(&xmmword_100B5AA50, 1, v12, 0);
      byte_100B5AB50 = 0;
      return;
    }

    if (a2 == 1)
    {
      snprintf(&xmmword_100B5AA50, 0x100uLL, "airship: 0x%x", a3);
      if ((a3 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 == 2)
  {
    v16 = a3;
    v7 = "centauri debug: 0x%x";
    goto LABEL_20;
  }

  if (a2 != 1000)
  {
LABEL_12:
    v16 = a2;
    v17 = a3;
    v7 = "beta error source %u code %u";
LABEL_20:
    snprintf(&xmmword_100B5AA50, 0x100uLL, v7, v16, v17);
    goto LABEL_21;
  }

  if ((a3 - 3) > 1)
  {
    v19 = 0;
    v18 = 4;
    if (!sysctlbyname("kern.willuserspacereboot", &v19, &v18, 0, 0) && v19 > 0)
    {
      sub_100304AF8("userspace reboot in progress\n");
      strcpy(&xmmword_100B5AA50, "centauri controller: userspace reboot");
      (*(a1 + 32))();
      return;
    }

    if (a3 > 2)
    {
      v13 = "unknown error";
    }

    else
    {
      v13 = off_100AE4F40[a3];
    }

    v14 = snprintf(&xmmword_100B5AA50, 0x100uLL, "centauri controller: %s", v13);
    if (v14 <= 0xFF)
    {
      v15 = v14;
      if (!strcmp(v13, "unknown error"))
      {
        snprintf(&xmmword_100B5AA50 + v15, 256 - v15, " (err code: %u)");
      }
    }

    goto LABEL_21;
  }

  v6 = "exit";
  if (a3 == 3)
  {
    v6 = "entry";
  }

  sub_100304AF8("APPLE PCIe driver S2R %s notification\n", v6);
}

const char *sub_1001A61D8(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "unknown error";
  }

  else
  {
    return off_100AE4F58[a1];
  }
}

uint64_t sub_1001A61FC(uint64_t a1)
{
  sub_100304AF8("APPLE PCIe register timesync handler\n");
  if (qword_100B5AB68)
  {
    sub_100304AF8("APPLE PCIe timesync handler already registered\n");
  }

  else
  {
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1001A6304;
    aBlock[3] = &unk_100AE4E20;
    aBlock[4] = a1;
    qword_100B5AB68 = _Block_copy(aBlock);
    if (qword_100B5AB68)
    {
      if (!qword_100B5AB70)
      {
        return 1;
      }

      airship_ch_timesync_set_event_handler();
      if (!airship_ch_timesync_open())
      {
        result = 1;
        byte_100B5AB78 = 1;
        return result;
      }

      sub_100304AF8("airship failed to open timesync: 0x%08x\n");
    }

    else
    {
      sub_100304AF8("APPLE PCIe failed to allocate timesync handler\n");
    }
  }

  return 0;
}

void sub_1001A6304(uint64_t a1, unint64_t *a2)
{
  if (a2)
  {
    v6[3] = 0;
    v6[4] = 0;
    if (mach_get_times())
    {
      sub_100304AF8("APPLE PCIe invalid timestamps ret 0x%08x cont_time %llu abs_time %llu\n");
    }

    else
    {
      v5 = a2[1];
      if (is_mul_ok(*a2, 0x3E8uLL))
      {
        v6[1] = 1000 * *a2;
        v6[2] = 0;
        v6[0] = v5;
        (*(a1 + 32))(v6);
      }

      else
      {
        sub_100304AF8("APPLE PCIe BT timestamp overflow: data->chipset_time %llu\n");
      }
    }
  }

  else
  {

    sub_100304AF8("APPLE PCIe timesync data is invalid\n");
  }
}

uint64_t sub_1001A63E4(char *a1, uint64_t a2, uint64_t a3, char **a4)
{
  sub_100304AF8("APPLE PCIe collect logs\n", a2, a3);
  if (!qword_100B5AB58)
  {
    sub_100304AF8("APPLE PCIe collect logs before transport init\n");
    if (!&_CentauriControllerCreateWithParameters)
    {
      v8 = 3758097136;
      sub_100304AF8("Apple PCIe failed to load controller framework\n");
      return v8;
    }

    v7 = CentauriControllerCreateWithParameters();
    if (v7)
    {
      v8 = v7;
      sub_100304AF8("Apple PCIe failed to create controller handle 0x%08x\n");
      return v8;
    }
  }

  if (strstr(a1, "full chip reset: firmware halted"))
  {
    v6 = 1;
  }

  else
  {
    v6 = strstr(a1, "full chip reset: firmware failed to halt") != 0;
  }

  v9 = CentauriControllerCollectLogsWithOptions();
  v8 = v9;
  if (v9 && !v6)
  {
    sub_100304AF8("APPLE PCIe transport failed to collect logs 0x%08x\n", v9);
    goto LABEL_12;
  }

  if (v9)
  {
LABEL_12:
    if (a4)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_19:
    sub_100304AF8("APPLE PCIe transport extract panic string helper\n");
    if (CentauriControllerGetCrashlogs() == -536870160 && v6)
    {
      v12 = 1;
      do
      {
        usleep(0x186A0u);
        v13 = CentauriControllerGetCrashlogs() != -536870160 || !v6;
        if (v13)
        {
          break;
        }
      }

      while (v12++ < 0x63);
    }

    sub_100304AF8("APPLE PCIe transport failed to get cached crashlogs 0x%08x\n");
    *a4 = 0;
    goto LABEL_31;
  }

  if (a4)
  {
    goto LABEL_19;
  }

LABEL_31:
  if (!qword_100B5AB58)
  {
    CentauriControllerFree();
  }

  return v8;
}

uint64_t sub_1001A6850()
{
  sub_10000C198();
  sub_1001A6A08(&qword_100B51C50);
  sub_1001A6A08(qword_100B51C80);
  sub_1001A6A08(&qword_100B51CB0);
  sub_1001A6A08(qword_100B51CE0);
  sub_1001A6A08(&qword_100B51D10);
  sub_1001A6A08(qword_100B51D40);
  sub_1001A6A08(qword_100B51D70);
  sub_1000031B0();
  if (qword_100B5AB70)
  {
    if (byte_100B5AB78 == 1)
    {
      v0 = dispatch_time(0, 120000000000);
      airship_ch_timesync_close();
      byte_100B5AB78 = 0;
      if (dispatch_semaphore_wait(qword_100B5AB80, v0))
      {
        sub_100304AF8("Apple PCIe timed out waiting to close timesync\n");
      }
    }

    airship_ch_timesync_destroy();
    qword_100B5AB70 = 0;
  }

  if (qword_100B5AB80)
  {
    dispatch_release(qword_100B5AB80);
    qword_100B5AB80 = 0;
  }

  if (qword_100B5AB88)
  {
    dispatch_release(qword_100B5AB88);
    qword_100B5AB88 = 0;
  }

  if (!off_100B5AA48 || off_100B5AA48())
  {
    if (dword_100B51DA0 != -1)
    {
      notify_cancel(dword_100B51DA0);
      dword_100B51DA0 = -1;
    }

    if (qword_100BC9200)
    {
      dispatch_sync(qword_100BC9200, &stru_100AE4E60);
      dispatch_release(qword_100BC9200);
      qword_100BC9200 = 0;
    }

    if (qword_100B5AB68)
    {
      _Block_release(qword_100B5AB68);
      qword_100B5AB68 = 0;
    }

    if (qword_100B5AB58)
    {
      CentauriControllerFree();
      qword_100B5AB58 = 0;
    }

    if (qword_100B5AB60)
    {
      dispatch_release(qword_100B5AB60);
      qword_100B5AB60 = 0;
    }

    if (qword_100B5AA40)
    {
      _Block_release(qword_100B5AA40);
      qword_100B5AA40 = 0;
    }
  }

  return 0;
}

void sub_1001A6A08(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a1[5])
  {
    airship_ch_interface_close();
    airship_ch_interface_destroy();
    a1[5] = 0;
  }

  v2 = a1[4];
  if (v2)
  {
    pthread_join(v2, 0);
    a1[4] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
    a1[3] = 0;
  }
}

void sub_1001A6A7C(id a1)
{
  sub_10021D2D4();

  sub_10021D2A4();
}

void sub_1001A6AA4()
{
  v2 = 0;
  if (sub_10021D41C(@"FWLoggingEnabled", &v2))
  {
    if (byte_100B5AB90 == 1 && v2 == byte_100B5AB91)
    {
      sub_100304AF8("%s:%06u No change in profile configuration\n");
    }

    else
    {
      byte_100B5AB90 = 1;
      v1 = sub_10021CDB0(v2 & 1);
      if (v1)
      {
        if (sub_10021CC30())
        {
          sub_10021D23C(&v1);
          byte_100B5AB91 = v2;
          sub_100304AF8("%s:%06u debug profile present -> %d");
        }

        else
        {
          sub_100304AF8("%s:%06u cannot create xpc connection");
        }
      }

      else
      {
        sub_100304AF8("%s:%06u cannot create xpc message");
      }
    }
  }

  else
  {
    sub_100304AF8("%s:%06u unable to check if profile is installed");
  }
}

uint64_t sub_1001A6BD0()
{
  byte_100B5AB92 = 0;
  sub_100304AF8("using airship\n");
  if (!&_CentauriControllerCreateWithParameters)
  {
    sub_100304AF8("failed to load controller framework\n");
    return 633;
  }

  if (!&_airship_ch_interface_create)
  {
    sub_100304AF8("failed to load airship framework\n");
    return 633;
  }

  sub_10000C198();
  qword_100B5AB70 = airship_ch_timesync_create();
  if (!qword_100B5AB70)
  {
    sub_100304AF8("Apple PCIe failed to create timesync handle\n");
    goto LABEL_33;
  }

  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  qword_100BC9200 = dispatch_queue_create("com.apple.corecapture.configure.bt", v0);
  if (!qword_100BC9200)
  {
    sub_100304AF8("Apple PCIe failed to create profile monitor queue\n");
    goto LABEL_33;
  }

  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  qword_100B5AB88 = dispatch_queue_create("com.apple.bluetoothd.applepcie-timesync", v1);
  airship_ch_timesync_set_queue();
  qword_100B5AB80 = dispatch_semaphore_create(0);
  airship_ch_timesync_set_close_handler();
  if (qword_100B5AB68)
  {
    airship_ch_timesync_set_event_handler();
    if (airship_ch_timesync_open())
    {
      sub_100304AF8("airship failed to open timesync: 0x%08x\n");
LABEL_33:
      byte_100B5AB50 = 1;
LABEL_34:
      sub_1000031B0();
      sub_1001A6850();
      return 633;
    }

    byte_100B5AB78 = 1;
  }

  if ((sub_1001A7230(&qword_100B51C50) & 1) == 0)
  {
    sub_100304AF8("hci init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51C80) & 1) == 0)
  {
    sub_100304AF8("acl init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(&qword_100B51CB0) & 1) == 0)
  {
    sub_100304AF8("sco init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51CE0) & 1) == 0)
  {
    sub_100304AF8("le init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(&qword_100B51D10) & 1) == 0)
  {
    sub_100304AF8("lea init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51D40) & 1) == 0)
  {
    sub_100304AF8("lla init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51D70) & 1) == 0)
  {
    sub_100304AF8("lmp init failed\n");
    goto LABEL_33;
  }

  if (!qword_100B5AB60)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    qword_100B5AB60 = dispatch_queue_create("com.apple.bluetoothd.applepcie-error", v2);
    if (!qword_100B5AB60)
    {
      sub_100304AF8("failed to create error queue\n");
      goto LABEL_34;
    }
  }

  if (!qword_100B5AB58)
  {
    if (CentauriControllerCreateWithParameters())
    {
      sub_100304AF8("Apple PCIe failed to create controller handle 0x%08x\n");
      goto LABEL_34;
    }

    if (qword_100B5AA40 && CentauriControllerRegisterUniqueErrorHandlerWithQueue())
    {
      sub_100304AF8("APPLE PCIe transport error handler register failed 0x%08x\n");
      goto LABEL_34;
    }
  }

  if (dword_100B51DA0 == -1)
  {
    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &dword_100B51DA0, qword_100BC9200, &stru_100AE4EE0);
    dispatch_async(qword_100BC9200, &stru_100AE4F20);
  }

  sub_1000031B0();
  return 0;
}

uint64_t sub_1001A6F18(int a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v9 = sub_100258628(a2);
        v10 = qword_100B51C80;
        if (v9 == 2)
        {
          v10 = &qword_100B51D10;
          v11 = 5;
        }

        else
        {
          v11 = 4;
        }

        if (v9 == 1)
        {
          v8 = qword_100B51CE0;
        }

        else
        {
          v8 = v10;
        }

        if (v9 == 1)
        {
          v7 = 4;
        }

        else
        {
          v7 = v11;
        }

        v6 = v9 != 1 && v9 == 2;
        goto LABEL_25;
      }

      goto LABEL_32;
    }

    v6 = 0;
    v7 = 3;
    v8 = &qword_100B51C50;
  }

  else
  {
    if (a1 == 3)
    {
LABEL_5:
      v6 = 0;
      if (sub_100258180())
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }

      v8 = &qword_100B51CB0;
      goto LABEL_25;
    }

    if (a1 != 5)
    {
      if (a1 == 243)
      {
        goto LABEL_5;
      }

LABEL_32:
      sub_100304AF8("unknown default packet type: 0x%x\n", a1);
      return 101;
    }

    v6 = 1;
    v7 = 5;
    v8 = &qword_100B51D10;
  }

LABEL_25:
  v12 = *(v8 + 2);
  if (a3 + v7 <= v12)
  {
    v14 = v8[2];
    bzero(v14, v12);
    if (v6)
    {
      *v14 = v5;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v14[v15];
    *v16 = a2;
    v16[1] = a3;
    if (a3)
    {
      sub_10001F6DC(&v14[v7]);
    }

    else
    {
      sub_10001F480(a2);
    }

    v17 = airship_ch_interface_write();
    result = 625;
    if ((byte_100B5AB92 & 1) == 0)
    {
      if (v17)
      {
        sub_100304AF8("airship tx failed 0x%08x\n", v17);
        return 1205;
      }
    }
  }

  else
  {
    sub_100304AF8("oversize packet: %u (max %u)\n", a3 + v7, v12);
    return 142;
  }

  return result;
}

uint64_t sub_1001A7118()
{
  sub_100304AF8("Apple PCIe FLR\n");
  if (qword_100B5AB58)
  {
    goto LABEL_2;
  }

  sub_100304AF8("APPLE PCIe reset before transport init\n");
  if (!&_CentauriControllerCreateWithParameters)
  {
    sub_100304AF8("Apple PCIe failed to load controller framework\n");
    return 1205;
  }

  if (CentauriControllerCreateWithParameters())
  {
    sub_100304AF8("Apple PCIe failed to create controller handle 0x%08x\n");
    return 1205;
  }

LABEL_2:
  v0 = CentauriControllerReset();
  v1 = v0;
  if (v0)
  {
    sub_100304AF8("Apple PCIe failed to reset beta 0x%08x\n", v0);
  }

  if (!qword_100B5AB58)
  {
    CentauriControllerFree();
  }

  if (v1)
  {
    return 1205;
  }

  else
  {
    return 0;
  }
}

void sub_1001A71F8(id a1)
{
  sub_100304AF8("Apple PCIe timesync close handler\n");
  v1 = qword_100B5AB80;

  dispatch_semaphore_signal(v1);
}

uint64_t sub_1001A7230(unsigned int *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = airship_ch_interface_create();
  *(a1 + 5) = v2;
  if (!v2)
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("failed to create %s airship\n");
    goto LABEL_9;
  }

  if (airship_ch_interface_open())
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("airship failed to open %s: 0x%08x\n");
LABEL_9:
    sub_1001A6A08(a1);
    return 0;
  }

  if (airship_ch_interface_get_ring_sizes())
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("airship failed to get ring sizes %s: 0x%08x\n");
    goto LABEL_9;
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, v4, 0x100004077774924uLL);
    *(a1 + 2) = v5;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  v6 = a1[3];
  if (!v6)
  {
    return 1;
  }

  v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  *(a1 + 3) = v7;
  if (!v7)
  {
LABEL_16:
    sub_1001A73AC(*a1);
    sub_100304AF8("calloc failed for %s\n");
    goto LABEL_9;
  }

  if (pthread_create(a1 + 4, 0, sub_1001A73D4, a1))
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("airship failed to create %s rx thread\n");
    goto LABEL_9;
  }

  sub_1001C5C44(*(a1 + 4), 63);
  return 1;
}

const char *sub_1001A73AC(int a1)
{
  if ((a1 - 64) > 7)
  {
    return "unknown";
  }

  else
  {
    return off_100AE4FB0[a1 - 64];
  }
}

uint64_t sub_1001A73D4(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v1 = airship_ch_interface_read();
  sub_100304AF8("read from airship failed 0x%08x\n", v1);
  return 0;
}

void *sub_1001A757C()
{
  v0 = sub_10025AFBC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = 0;
  v3 = &unk_100B5AB94;
  v4 = &unk_100B5AB94;
  while (1)
  {
    Value = CFDictionaryGetValue(v1, off_100AE4FF0[v2]);
    if (!Value)
    {
      break;
    }

    v6 = Value;
    v7 = CFDictionaryGetValue(Value, @"item_size");
    if (!v7)
    {
      break;
    }

    CFNumberGetValue(v7, kCFNumberSInt32Type, v4);
    v8 = CFDictionaryGetValue(v6, @"item_count");
    if (!v8)
    {
      break;
    }

    CFNumberGetValue(v8, kCFNumberSInt32Type, v4 + 44);
    v4 += 4;
    if (++v2 == 11)
    {
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  CFRelease(v1);
  return v3;
}

uint64_t sub_1001A7664(uint64_t a1)
{
  qword_100B5ABF0 = sub_1000BAE38(sub_1001A7658, sub_1001A7660);
  v2 = sub_10028BDC8(a1, 1);
  v5 = 0;
  v4 = 0;
  sub_10028BF0C(a1, &v4);
  return (*(*qword_100BC9C18 + 32))(&v4, a1, v2);
}

uint64_t sub_1001A7700(uint64_t a1)
{
  v1 = a1;
  sub_1000BBDD0(qword_100B5ABF0);
  qword_100B5ABF0 = 0;
  v4 = 0;
  v3 = 0;
  sub_10028BF0C(v1, &v3);
  return (*(*qword_100BC9C18 + 40))(&v3);
}

uint64_t sub_1001A7768(uint64_t a1, unsigned __int16 **a2, int a3)
{
  if (a3 == 2)
  {
    if (!sub_10000C248(qword_100B5ABF0))
    {
      sub_1000D660C();
    }

    sub_100302C60(qword_100B5ABF0, 1);
    return 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    sub_10028BF0C(a1, &v7);
    v9 = 0;
    v3 = sub_100306F34(*(*a2 + 1), **a2, &v9, 8);
    if (!v3)
    {
      (**(*(qword_100BC9C18 + 16) + 32))(&v7, a1, &v9);
    }
  }

  return v3;
}

uint64_t sub_1001A7850(uint64_t a1, unsigned __int16 **a2, int a3, int a4)
{
  if (a4 == 1719)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVRCP BIP client issued OBEX ABORT message!");
      v4 = sub_10000C050(4u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (!sub_10000C248(qword_100B5ABF0))
    {
      sub_1000D660C();
    }

    sub_100302C60(qword_100B5ABF0, 1);
    return 0;
  }

  if (**a2 == 8)
  {
    v22 = 0;
    v21 = 0;
    sub_10028BF0C(a1, &v21);
    v23 = 0;
    v5 = sub_100306F34(*(*a2 + 1), **a2, &v23, 8);
    v9 = a2[1];
    if (v9)
    {
      v10 = *v9 - 1;
      while (v10 != -1)
      {
        v11 = *(v9 + 1);
        v12 = *(v11 + v10--);
        if (v12 == 42)
        {
          v13 = v10 + 2;
          v14 = v10;
          v15 = *(v11 + v10) - 48;
          if (v15 > 9)
          {
            v16 = 0;
          }

          else
          {
            LOWORD(v16) = 0;
            v17 = 0;
            do
            {
              v16 = (v16 + v15 * __exp10(v17++));
              v15 = *(v11 + --v14) - 48;
            }

            while (v15 < 0xA);
          }

          v20 = *(v11 + v13);
          if ((v20 - 48) > 9)
          {
            v19 = 0;
          }

          else
          {
            v19 = 0;
            do
            {
              v19 = v20 + 10 * v19 - 48;
              v20 = *(v11 + ++v13);
            }

            while ((v20 - 48) < 0xA);
          }

          goto LABEL_25;
        }
      }
    }

    v16 = 200;
    v19 = 200;
LABEL_25:
    if (!v5)
    {
      (*(*(*(qword_100BC9C18 + 16) + 32) + 8))(&v21, a1, &v23, v16, v19);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid image handle length %d", **a2);
      v18 = sub_10000C050(4u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 1736;
  }

  return v5;
}

uint64_t sub_1001A7AF4(uint64_t a1, unsigned __int16 **a2, int a3)
{
  if (a3 == 2)
  {
    if (!sub_10000C248(qword_100B5ABF0))
    {
      sub_1000D660C();
    }

    sub_100302C60(qword_100B5ABF0, 1);
    return 0;
  }

  else if (**a2 == 8)
  {
    v9 = 0;
    v8 = 0;
    sub_10028BF0C(a1, &v8);
    v10 = 0;
    v3 = sub_100306F34(*(*a2 + 1), **a2, &v10, 8);
    if (!v3)
    {
      (*(*(*(qword_100BC9C18 + 16) + 32) + 16))(&v8, a1, &v10);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid image handle length %d", **a2);
      v6 = sub_10000C050(4u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 1736;
  }

  return v3;
}

uint64_t sub_1001A7C40(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v25 = 0;
  sub_100307404(&v24, 0x400uLL);
  v23 = 0;
  asprintf(&v23, "<image-properties version=1.0 handle=%s>\n", a2);
  sub_100062468(&v24, v23);
  free(v23);
  if (a6)
  {
    v11 = 0;
    do
    {
      v12 = "variant";
      if (!v11)
      {
        v12 = "native";
      }

      v13 = *(a3 + v11);
      if (v13 == 2)
      {
        v14 = "PNG";
      }

      else
      {
        v14 = "";
      }

      if (v13 == 1)
      {
        v15 = "JPEG";
      }

      else
      {
        v15 = v14;
      }

      asprintf(&v23, "<%s encoding=%s pixel=%d*%d />\n", v12, v15, *(a4 + 2 * v11), *(a5 + 2 * v11));
      sub_100062468(&v24, v23);
      free(v23);
      ++v11;
    }

    while (a6 != v11);
  }

  asprintf(&v23, "</image-properties>\n");
  sub_100062468(&v24, v23);
  free(v23);
  v16 = WORD2(v24);
  sub_100302C18(qword_100B5ABF0, v25, WORD2(v24));
  v22[1] = sub_1000BA5F8(qword_100B5ABF0);
  v22[0] = v16;
  v21[0] = 0;
  v21[1] = v22;
  v21[2] = 0;
  v17 = sub_10028C0F4(a1, v21, 0);
  if (v17)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_GetImagePropertiesResponse failed with error %!", v17);
      v18 = sub_10000C050(4u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000BB054(qword_100B5ABF0, 1);
  }

  sub_10030745C(&v24);
  return v17;
}

uint64_t sub_1001A7E38(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  sub_100302C18(qword_100B5ABF0, a2, a3);
  v12[1] = sub_1000BA5F8(qword_100B5ABF0);
  v12[0] = a3;
  v8 = 0u;
  v10 = v12;
  v11 = 0;
  v9 = a3;
  v5 = sub_10028C114(v4, &v8, 0);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_GetImageResponse failed with error %!", v5);
      v6 = sub_10000C050(4u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000BB054(qword_100B5ABF0, 1);
  }

  return v5;
}

uint64_t sub_1001A7F10(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = a1;
  sub_100302C18(qword_100B5ABF0, a2, a3);
  v9[1] = sub_1000BA5F8(qword_100B5ABF0);
  v9[0] = a3;
  v8[0] = 0;
  v8[1] = v9;
  v8[2] = 0;
  v5 = sub_10028C0F4(v4, v8, 0);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_GetLinkedThumbnailResponse failed with error %!", v5);
      v6 = sub_10000C050(4u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000BB054(qword_100B5ABF0, 1);
  }

  return v5;
}

void sub_1001A7FE4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001A806C;
  block[3] = &unk_100AE5048;
  block[4] = a1;
  if (qword_100B5ABF8 != -1)
  {
    dispatch_once(&qword_100B5ABF8, block);
  }
}

void sub_1001A807C(int a1)
{
  if (a1 || qword_100B5AC08)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1001A8138;
    block[3] = &unk_100AE5068;
    v2 = a1;
    if (qword_100B5AC08 != -1)
    {
      dispatch_once(&qword_100B5AC08, block);
    }
  }

  else if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
  {
    sub_1008101E8();
  }
}

void sub_1001A8138(uint64_t result)
{
  v1 = (result + 32);
  v2 = vld1q_dup_f32(v1);
  if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1008A33C0, vaddq_s32(v2, xmmword_1008A33B0)))) & 1) == 0 && os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
  {
    sub_100810228();
  }
}

uint64_t sub_1001A81A8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 0xE)
  {
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1008102DC();
    return 0;
  }

  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 181, "buf");
  }

  v6 = a1;
  v7 = a2;
  v8 = a2;
  v4 = *(a1 + 13);
  v9 = 65551;
  v5 = *(a1 + 14);
  result = sub_100005FEC(v4);
  if (result)
  {
    if (v2 - 15 < v5)
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100810268();
      return 0;
    }

    if (v4 == 255)
    {
      return 0;
    }

    result = 1;
    switch(v4)
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x16u:
      case 0x17u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x38u:
      case 0x39u:
      case 0x3Cu:
      case 0x3Du:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x52u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
        return result;
      case 7u:
        result = sub_1001A8354(&v6);
        break;
      case 8u:
        result = sub_1001A8574(&v6);
        break;
      case 0xCu:
        result = sub_1001A8D18(&v6);
        break;
      case 0xEu:
        result = sub_1001A8968(&v6);
        break;
      case 0x15u:
        result = sub_1001A8F18(&v6);
        break;
      case 0x18u:
        result = sub_1001A9200(&v6);
        break;
      case 0x2Fu:
        result = sub_1001A93FC(&v6);
        break;
      case 0x33u:
        result = sub_1001A9618(&v6);
        break;
      case 0x3Bu:
        result = sub_1001A9814(&v6);
        break;
      case 0x3Eu:
        result = sub_1001A9A10(&v6);
        break;
      case 0x51u:
        result = sub_1001A9BD8(&v6);
        break;
      case 0x59u:
        result = sub_1001A876C(&v6);
        break;
      default:
        return 0;
    }
  }

  return result;
}

BOOL sub_1001A8354(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1548, "_Bool Filter_OI_DHCI_REMOTE_NAME_REQUEST_COMPLETE_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0xFE)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810358();
      return 0;
    }

    return result;
  }

  if (v2 <= 6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1554, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 7;
  *(a1 + 6) = v1 + 7;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1557, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1558, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 247)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1561, "ByteStream_NumReadBytesAvail(*pBs) >= (248)");
  }

  v6 = v5 + v4;
  *(v6 + 240) = 0;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  *(a1 + 6) += 248;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1563, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1565, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 255;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1566, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001A8574(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1572, "_Bool Filter_OI_DHCI_ENCRYPTION_CHANGE_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_19;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 3)
  {
LABEL_19:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008103D4();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1578, "ByteStream_NumReadBytesAvail(*pBs) >= (1+2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1581, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1582, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if (v3 <= v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1585, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  *(v5 + (v1 + 3)) = 0;
  ++*(a1 + 6);
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1587, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1589, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 4;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1590, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001A876C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1597, "_Bool Filter_OI_DHCI_ENCRYPTION_CHANGE_V2_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 4)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810450();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1603, "ByteStream_NumReadBytesAvail(*pBs) >= (1+2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1606, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1607, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1611, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 1)");
  }

  *(v5 + (v1 + 3)) = 0;
  *(a1 + 6) += 2;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1613, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1615, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 5;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1616, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001A8968(uint64_t *a1)
{
  v1 = *(a1 + 5);
  if (v1 <= 0xE)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1197, "(size_t)(13 + 2) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = 15;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1198, "_Bool Filter_OI_DHCI_COMMAND_COMPLETE_EVENT(OI_BYTE_STREAM *)");
LABEL_5:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10081054C();
    return 0;
  }

  if (v1 - 15 <= 3)
  {
    goto LABEL_5;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1206, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v1 == 15)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008104CC();
      return 0;
    }
  }

  else
  {
    *(a1 + 6) = 16;
    if (v1 <= 0x11)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1208, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v4 = *(*a1 + 16);
    *(a1 + 6) = 18;
    result = 1;
    if (v4 > 4096)
    {
      if (v4 <= 0x2000)
      {
        if ((v4 - 5121) > 0xA)
        {
          goto LABEL_37;
        }

        if (((1 << (v4 - 1)) & 0x777) != 0)
        {
          return result;
        }

        if (v4 == 5128)
        {

          return sub_1001AF300(a1);
        }

        else
        {
          if ((v4 - 4097) > 9)
          {
            goto LABEL_47;
          }

LABEL_37:
          if (((1 << (v4 - 1)) & 0x31F) != 0)
          {
            return result;
          }

          if (v4 == 4103)
          {

            return sub_1001AF108(a1);
          }

          else
          {
LABEL_47:
            if ((v4 - 6145) > 8 || ((1 << (v4 - 1)) & 0x1CF) == 0)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        switch(v4)
        {
          case 8193:
          case 8194:
          case 8195:
          case 8197:
          case 8198:
          case 8199:
          case 8200:
          case 8201:
          case 8202:
          case 8203:
          case 8204:
          case 8206:
          case 8207:
          case 8208:
          case 8209:
          case 8210:
          case 8212:
          case 8213:
          case 8218:
          case 8219:
          case 8220:
          case 8221:
          case 8222:
          case 8223:
          case 8224:
          case 8225:
          case 8226:
          case 8227:
          case 8228:
          case 8231:
          case 8232:
          case 8233:
          case 8234:
          case 8235:
          case 8236:
          case 8237:
          case 8238:
          case 8239:
          case 8240:
          case 8241:
          case 8243:
          case 8244:
          case 8245:
          case 8246:
          case 8247:
          case 8248:
          case 8249:
          case 8250:
          case 8251:
          case 8252:
          case 8253:
          case 8254:
          case 8255:
          case 8256:
          case 8257:
          case 8258:
          case 8260:
          case 8261:
          case 8262:
          case 8263:
          case 8264:
          case 8265:
          case 8266:
          case 8281:
          case 8282:
          case 8283:
          case 8284:
          case 8285:
          case 8288:
          case 8290:
          case 8291:
          case 8293:
          case 8295:
          case 8300:
          case 8302:
          case 8303:
          case 8308:
          case 8317:
          case 8318:
          case 8319:
          case 8320:
          case 8321:
          case 8322:
          case 8323:
          case 8324:
          case 8325:
          case 8326:
          case 8327:
          case 8329:
            return result;
          case 8215:

            result = sub_1001AF4F8(a1);
            break;
          case 8216:

            result = sub_1001AF6F8(a1);
            break;
          default:
            return 0;
        }
      }
    }

    else if (v4 <= 3072)
    {
      v5 = (v4 - 1032) > 0x3D || ((1 << (v4 - 8)) & 0x200819F801040079) == 0;
      if (v5 && ((v4 - 2057) > 8 || ((1 << (v4 - 9)) & 0x179) == 0) && (v4 - 1026) >= 3)
      {
        return 0;
      }
    }

    else
    {
      switch(v4)
      {
        case 3073:
        case 3075:
        case 3077:
        case 3080:
        case 3082:
        case 3083:
        case 3084:
        case 3085:
        case 3089:
        case 3090:
        case 3091:
        case 3093:
        case 3094:
        case 3095:
        case 3096:
        case 3097:
        case 3098:
        case 3099:
        case 3100:
        case 3101:
        case 3102:
        case 3103:
        case 3104:
        case 3105:
        case 3106:
        case 3107:
        case 3108:
        case 3109:
        case 3110:
        case 3111:
        case 3112:
        case 3113:
        case 3114:
        case 3115:
        case 3116:
        case 3117:
        case 3118:
        case 3119:
        case 3121:
        case 3123:
        case 3126:
        case 3127:
        case 3128:
        case 3129:
        case 3130:
        case 3131:
        case 3132:
        case 3133:
        case 3134:
        case 3135:
        case 3138:
        case 3139:
        case 3140:
        case 3141:
        case 3142:
        case 3143:
        case 3144:
        case 3145:
        case 3154:
        case 3157:
        case 3158:
        case 3160:
        case 3161:
        case 3162:
        case 3163:
        case 3168:
        case 3169:
        case 3170:
        case 3171:
        case 3173:
        case 3174:
        case 3175:
        case 3176:
        case 3177:
        case 3178:
        case 3180:
        case 3181:
        case 3182:
        case 3183:
        case 3184:
        case 3185:
        case 3186:
        case 3187:
        case 3193:
        case 3194:
        case 3195:
        case 3196:
        case 3204:
          return result;
        case 3081:

          result = sub_1001AE6C4(a1);
          break;
        case 3092:

          result = sub_1001AE8BC(a1);
          break;
        case 3153:

          result = sub_1001AEAE0(a1);
          break;
        case 3159:

          result = sub_1001AECFC(a1);
          break;
        case 3197:

          result = sub_1001AEF00(a1);
          break;
        default:
          return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001A8D18(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1623, "_Bool Filter_OI_DHCI_READ_REMOTE_VERSION_INFORMATION_COMPLETE_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 7)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008105C8();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1628, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1631, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1632, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1637, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 2 + 2)");
  }

  v6 = v5 + v4;
  *(v6 + 4) = 0;
  *v6 = 0;
  *(a1 + 6) += 5;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1639, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1641, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 8;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1642, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

uint64_t sub_1001A8F18(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1649, "_Bool Filter_OI_DHCI_RETURN_LINK_KEYS_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_4;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 == v2)
  {
LABEL_4:
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_100810740();
    }

    return 0;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1655, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v1 <= v2)
  {
    *(a1 + 15) = 1;
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_100810644();
    }

    return 0;
  }

  v5 = *a1;
  v6 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  v7 = *(v5 + v2);
  v8 = *(a1 + 4);
  if (~v2 + v1 < 22 * v7)
  {
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_1008106C4();
    }

    return 0;
  }

  if (!*(v5 + v2))
  {
    return 1;
  }

  v9 = 0;
  LOWORD(v10) = *(a1 + 4);
  do
  {
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1661, "_Bool Filter_OI_DHCI_RETURN_LINK_KEYS_EVENT(OI_BYTE_STREAM *)");
LABEL_38:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1661, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
    }

    if (v1 - v6 <= 5)
    {
      goto LABEL_38;
    }

    v11 = v6 + 6;
    *(a1 + 6) = v6 + 6;
    *(a1 + 14) = 15;
    if (!v10)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1664, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
    }

    *(a1 + 6) = 0;
    *(a1 + 14) = 2;
    *(a1 + 5) = v10;
    if ((v6 + 6) > v10)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1665, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v11;
    if (v10 - v11 <= 15)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1668, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
    }

    v12 = (v5 + v11);
    *v12 = 0;
    v12[1] = 0;
    *(a1 + 6) += 16;
    if (v8 > *(a1 + 5))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1670, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v8;
    if (*(a1 + 14) == 2)
    {
      *(a1 + 5) = v8;
    }

    *(a1 + 14) = 15;
    v5 = *a1;
    if (!*a1 || (v10 = *(a1 + 4), !*(a1 + 4)))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1672, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
    }

    v6 += 22;
    *(a1 + 6) = 0;
    *(a1 + 14) = 1;
    *(a1 + 5) = v10;
    if (v10 < v6)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1673, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v6;
    ++v9;
    v3 = 1;
    LOWORD(v1) = v10;
  }

  while (v7 > v9);
  return v3;
}

BOOL sub_1001A9200(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1681, "_Bool Filter_OI_DHCI_LINK_KEY_NOTIFICATION_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x16)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008107B8();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1686, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1689, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1690, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1693, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1695, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1697, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 22;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1698, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001A93FC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1705, "_Bool Filter_OI_DHCI_EXTENDED_INQUIRY_RESULT_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0xFE)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810834();
      return 0;
    }

    return result;
  }

  if (v2 <= 14)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1710, "ByteStream_NumReadBytesAvail(*pBs) >= (1+6+1+1+3+2+1)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 15;
  *(a1 + 6) = v1 + 15;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1713, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1714, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 239)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1717, "ByteStream_NumReadBytesAvail(*pBs) >= (240)");
  }

  v6 = (v5 + v4);
  v6[13] = 0u;
  v6[14] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  *(a1 + 6) += 240;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1719, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1721, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 255;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1722, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001A9618(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1729, "_Bool Filter_OI_DHCI_USER_CONFIRMATION_REQUEST_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 9)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008108B0();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1734, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1737, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1738, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1741, "ByteStream_NumReadBytesAvail(*pBs) >= (4)");
  }

  *(v5 + (v1 + 6)) = 0;
  *(a1 + 6) += 4;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1743, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1745, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 10;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1746, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001A9814(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1753, "_Bool Filter_OI_DHCI_USER_PASSKEY_NOTIFICATION_EVENT(OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 9)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081092C();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1758, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1761, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1762, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1765, "ByteStream_NumReadBytesAvail(*pBs) >= (4)");
  }

  *(v5 + (v1 + 6)) = 0;
  *(a1 + 6) += 4;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1767, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1769, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 10;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1770, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}