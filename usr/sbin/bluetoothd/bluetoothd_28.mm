void sub_100208418(int *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (!*(qword_100BC9C18 + 16))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No target registered; rejecting command");
      v9 = sub_10000C050(4u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_13;
  }

  if (a2 >= 0x10)
  {
    sub_1000D660C();
  }

  v6 = a3[3];
  if (!a3[3])
  {
    v11 = sub_1002090B0(a1, a2, a3);
    if (!v11)
    {
      return;
    }

    v12 = v11;
    if (sub_10000C240())
    {
      sub_10000AF54("Dispatched target handler for opcode=%d, cmd=%d failed: %!", a3[3], *a3, v12);
      v13 = sub_10000C050(4u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_50;
  }

  v7 = *a3;
  if ((v7 - 8) >= 3)
  {
    if (*a3)
    {
      if (v7 != 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Unknown command");
          v17 = sub_10000C050(4u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        v12 = 3301;
LABEL_47:
        if (sub_10000C240())
        {
          sub_10000AF54("Dispatched target handler for opcode=%d, cmd=%d failed: %!", a3[3], *a3, v12);
          v21 = sub_10000C050(4u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

LABEL_50:
        if (v12 == 3301)
        {
          v10 = 8;
        }

        else
        {
          v10 = 10;
        }

        goto LABEL_53;
      }

      if (v6 == 49)
      {
        v25 = -249;
        v26 = -1;
        v22 = 822550272;
        v23 = &v25;
        v24 = 5;
        if (*(a3 + 8) == 5 && ((v20 = **(a3 + 1), v20 == 255) || v20 == 7))
        {
          LOBYTE(v22) = 12;
          BYTE1(v25) = 72;
        }

        else
        {
          LOBYTE(v22) = 10;
        }
      }

      else
      {
        if (v6 != 48)
        {
          return;
        }

        LOWORD(v25) = 18439;
        v22 = 805773068;
        v23 = &v25;
        v24 = 5;
        v14 = *(qword_100BC9C18 + 24);
        HIWORD(v25) = *(v14 + 16);
        v26 = *(v14 + 18);
      }

      v16 = sub_100203D68(a1, a2, &v22);
LABEL_46:
      v12 = v16;
      if (!v16)
      {
        return;
      }

      goto LABEL_47;
    }

    if (v6 != 124)
    {
      return;
    }

    v15 = *(a3 + 8);
    if (*(a3 + 8) && (**(a3 + 1) & 0x7F) == 0x7E)
    {
      v16 = sub_1002090B0(a1, a2, a3);
      goto LABEL_46;
    }

    if (a3[1] != 9 || a3[2])
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Rejecting PASS THROUGH command directed at subunit <%d,%d>", a3[1], a3[2]);
        v18 = sub_10000C050(4u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *a3 = 10;
      sub_100203D68(a1, a2, a3);
      v15 = *(a3 + 8);
    }

    if (v15 >= 2)
    {
      v19 = *(a3 + 1);
      if (!v19[1])
      {
        (**(qword_100BC9C18 + 16))(a1, a2, *v19);
        return;
      }
    }

LABEL_13:
    v10 = 8;
LABEL_53:
    *a3 = v10;
    sub_100203D68(a1, a2, a3);
    return;
  }

  v8 = *(*(qword_100BC9C18 + 16) + 24);
  if (v8)
  {

    v8(a1, a2, a3);
  }
}

char *sub_10020881C(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned __int16 *a5)
{
  v7 = a2;
  if (a3 <= 114)
  {
    if (a3 != 112)
    {
      if (a3 != 113)
      {
        if (a3 == 114)
        {
          if (a4 == 11)
          {
            v9 = *(*(*(qword_100BC9C18 + 16) + 16) + 144);
            if (v9)
            {
              v10 = *(a5 + 2);
              v13 = *a5;
              v11 = (a5 + 3);
              v12 = v13;
LABEL_48:
              v29 = bswap32(v12) >> 16;

              return v9(a1, a2, v29, v10, v11);
            }

            goto LABEL_68;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Invalid length for changePath: %u (expecting == 11)", a4);
            v27 = sub_10000C050(4u);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_56;
            }
          }

LABEL_57:
          result = sub_1001BBBD8(4uLL, 0xD0DD9EF1uLL);
          v20 = result;
          v21 = 16842912;
          if (!result)
          {
            return result;
          }

          goto LABEL_58;
        }

        goto LABEL_22;
      }

      if (a4 <= 9)
      {
        if (!sub_10000C240())
        {
          goto LABEL_57;
        }

        sub_10000AF54("Invalid length for getFolderItems: %u (expecting >= 10)", a4);
        v22 = sub_10000C050(4u);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      v24 = *a5;
      v30 = *(a5 + 9);
      if ((v30 - 1) > 0xFDu || (v31 = 4 * v30 + 10, v31 == a4))
      {
        v33 = *(*(*(qword_100BC9C18 + 16) + 16) + 136);
        if (v33)
        {
          v34 = bswap32(*(a5 + 1));
          v35 = bswap32(*(a5 + 5));

          return v33(a1, a2, v24, v34, v35);
        }

        goto LABEL_68;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Invalid length for getFolderItems: %u (expecting %u)", a4, v31);
        v37 = sub_10000C050(4u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
LABEL_75:
          sub_10080F7A0();
        }
      }

LABEL_76:
      result = sub_1001BBBD8(4uLL, 0xD0DD9EF1uLL);
      v20 = result;
      v21 = 33620128;
      if (!result)
      {
        return result;
      }

      goto LABEL_58;
    }

    if (a4 == 2)
    {
      v15 = *(*(*(qword_100BC9C18 + 16) + 16) + 128);
      if (!v15)
      {
        goto LABEL_68;
      }

      v16 = bswap32(*a5) >> 16;
      goto LABEL_34;
    }

    if (!sub_10000C240())
    {
      goto LABEL_57;
    }

    sub_10000AF54("Invalid length for setBrowsedPlayer: %u (expecting == 2)", a4);
    v23 = sub_10000C050(4u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  switch(a3)
  {
    case 115:
      if (a4 > 0xB)
      {
        v24 = *a5;
        v25 = *(a5 + 11);
        if ((v25 - 1) > 0xFDu || (v26 = 4 * v25 + 12, v26 == a4))
        {
          v33 = *(*(*(qword_100BC9C18 + 16) + 16) + 152);
          if (v33)
          {
            v34 = a5 + 1;
            v35 = bswap32(*(a5 + 9)) >> 16;

            return v33(a1, a2, v24, v34, v35);
          }

LABEL_68:
          result = sub_1001BBBD8(4uLL, 0xD0DD9EF1uLL);
          v20 = result;
          v21 = 50397344;
          if (!result)
          {
            return result;
          }

LABEL_58:
          *v20 = v21;
          return sub_1001F2BC0(a1, 4366, v7, 2, v20, 4);
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Invalid length for getFolderItems: %u (expecting %u)", a4, v26);
          v36 = sub_10000C050(4u);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }
        }

        goto LABEL_76;
      }

      if (!sub_10000C240())
      {
        goto LABEL_57;
      }

      sub_10000AF54("Invalid length for getItemAttributes: %d (expecting more or equal to 12)", a4);
      v17 = sub_10000C050(4u);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    case 117:
      if (a4 == 1)
      {
        v15 = *(*(*(qword_100BC9C18 + 16) + 16) + 168);
        if (!v15)
        {
          goto LABEL_68;
        }

        v16 = *a5;
LABEL_34:

        return v15(a1, a2, v16);
      }

      if (!sub_10000C240())
      {
        goto LABEL_57;
      }

      sub_10000AF54("Invalid length for GetTotalNumberOfItems: %d (expecting equal to 1)", a4);
      v32 = sub_10000C050(4u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_10080F7A0();
      goto LABEL_57;
    case 128:
      if (a4 > 3)
      {
        v9 = *(*(*(qword_100BC9C18 + 16) + 16) + 160);
        if (v9)
        {
          v10 = bswap32(a5[1]) >> 16;
          v28 = *a5;
          v11 = a5 + 2;
          v12 = v28;
          goto LABEL_48;
        }

        goto LABEL_68;
      }

      if (!sub_10000C240())
      {
        goto LABEL_57;
      }

      sub_10000AF54("Invalid length for search: %d (expecting more or equal to 4)", a4);
      v14 = sub_10000C050(4u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
  }

LABEL_22:
  if (sub_10000C240())
  {
    sub_10000AF54("PDU 0x%x shouldn't be sent on the browsing channel", a3);
    v18 = sub_10000C050(4u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  result = sub_1001BBBD8(4uLL, 0xD0DD9EF1uLL);
  v20 = result;
  v21 = 65696;
  if (result)
  {
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_100208DE8()
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v0 = *(qword_100BC9C18 + 24);
  if (!v0)
  {
    return 121;
  }

  if (*(qword_100BC9C18 + 90) && !*(qword_100BC9C18 + 8))
  {
    return 141;
  }

  sub_10028BC78(*(v0 + 4));
  sub_1002F8018(**(qword_100BC9C18 + 24));
  v1 = qword_100BC9C18;
  *(qword_100BC9C18 + 16) = 0;
  if (*(v1 + 89))
  {
    v2 = 0;
    v3 = 24;
    do
    {
      v4 = *(*(*(v1 + 24) + 8) + v3);
      if (v4)
      {
        sub_10000C1E8(v4);
        *(*(*(qword_100BC9C18 + 24) + 8) + v3) = 0;
        v1 = qword_100BC9C18;
      }

      ++v2;
      v3 += 32;
    }

    while (v2 < *(v1 + 89));
  }

  v5 = *(v1 + 24);
  if (v5[1])
  {
    sub_10000C1E8(v5[1]);
    v5 = *(qword_100BC9C18 + 24);
    v5[1] = 0;
  }

  sub_10000C1E8(v5);
  *(qword_100BC9C18 + 24) = 0;

  return sub_100203B74();
}

uint64_t sub_100208F0C(int *a1, unsigned int a2, char a3, unsigned __int8 a4)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a1)
  {
    if ((a4 & 8) != 0)
    {
      v6[0] = a4;
      *(v6 + 1) = 9;
      BYTE3(v6[0]) = 124;
      v6[1] = v5;
      v6[2] = 2;
      v5[0] = a3;
      v5[1] = 0;
      return sub_100203D68(a1, a2, v6);
    }
  }

  else
  {
    sub_1000D660C();
  }

  return 101;
}

uint64_t sub_100208F8C(int *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a1)
  {
    if ((*a3 & 8) != 0)
    {

      return sub_100203D68(a1, a2, a3);
    }

    else
    {
      return 101;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100208FE8(uint64_t a1, unsigned int a2, const void *a3, size_t size)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a1 && a3)
  {
    v6 = size;
    v8 = size;
    v9 = sub_1001BBBD8(size, 0xA06EB1CEuLL);
    if (v9)
    {
      v10 = v9;
      memmove(v9, a3, v8);
      v11 = sub_1001F2BC0(a1, 4366, a2, 2, v10, v6);
      if (v11)
      {
        sub_10000C1E8(v10);
      }
    }

    else
    {
      return 106;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v11;
}

uint64_t sub_1002090B0(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(qword_100BC9C18 + 16);
  if (*(v4 + 16))
  {

    return sub_1002076E4(a1, a2, a3);
  }

  else
  {
    v6 = *(v4 + 8);
    if (v6)
    {
      v6(a1, a2, a3);
      return 0;
    }

    else
    {
      return 3301;
    }
  }
}

uint64_t sub_100209108()
{
  if (dword_100B5CD88)
  {
    return 0;
  }

  if (byte_100B5CD8C)
  {
    return 5;
  }

  v1 = IOServiceNameMatching("AppleBTMgmt");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    byte_100B5CD8C = 1;
    return 5;
  }

  v3 = MatchingService;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_100B5CD88))
  {
    if (qword_100B5CD90 != -1)
    {
      sub_1008133D0();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_1008133E4();
    }

    v0 = 5;
  }

  else
  {
    if (qword_100B5CD90 != -1)
    {
      sub_10081344C();
    }

    v4 = qword_100B5CD98;
    v0 = 0;
    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "AppleBTMgmt";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_mgmt_connect: Service %s connected!\n", &v6, 0xCu);
      v0 = 0;
    }
  }

  IOObjectRelease(v3);
  return v0;
}

uint64_t sub_1002092F8(unsigned __int8 a1)
{
  inputStruct = a1;
  v1 = sub_100209108();
  if (v1)
  {
    v2 = v1;
    if (qword_100B5CD90 != -1)
    {
      sub_100813460();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_100813474();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_100B5CD88, 2u, 0, 0, &inputStruct, 1uLL, 0, 0, 0, 0);
    if (v3)
    {
      v2 = v3;
      if (qword_100B5CD90 != -1)
      {
        sub_1008134DC();
      }

      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
      {
        sub_100813504();
      }
    }

    else
    {
      if (qword_100B5CD90 != -1)
      {
        sub_10081356C();
      }

      v4 = qword_100B5CD98;
      v2 = 0;
      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = inputStruct;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_set_trace_mode: set to %d!\n", buf, 8u);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100209508(unsigned __int8 a1)
{
  inputStruct = a1;
  v1 = sub_100209108();
  if (v1)
  {
    v2 = v1;
    if (qword_100B5CD90 != -1)
    {
      sub_100813594();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_1008135A8();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_100B5CD88, 3u, 0, 0, &inputStruct, 1uLL, 0, 0, 0, 0);
    if (v3)
    {
      v2 = v3;
      if (qword_100B5CD90 != -1)
      {
        sub_100813610();
      }

      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
      {
        sub_100813638();
      }
    }

    else
    {
      if (qword_100B5CD90 != -1)
      {
        sub_1008136A0();
      }

      v4 = qword_100B5CD98;
      v2 = 0;
      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = inputStruct;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_set_trace_level: set to %d!\n", buf, 8u);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100209718(uint64_t *a1)
{
  v2 = sub_100209108();
  if (v2)
  {
    v3 = v2;
    if (qword_100B5CD90 != -1)
    {
      sub_1008136C8();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_1008136DC();
    }
  }

  else
  {
    v4 = IOConnectCallMethod(dword_100B5CD88, 4u, 0, 0, a1, 0x20uLL, 0, 0, 0, 0);
    if (v4)
    {
      v3 = v4;
      if (qword_100B5CD90 != -1)
      {
        sub_100813744();
      }

      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
      {
        sub_100813758();
      }
    }

    else
    {
      if (qword_100B5CD90 != -1)
      {
        sub_1008137C0();
      }

      v5 = qword_100B5CD98;
      v3 = 0;
      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *a1;
        v7 = a1[1];
        v8 = a1[2];
        v9 = a1[3];
        *buf = 134218752;
        v12 = v6;
        v13 = 2048;
        v14 = v7;
        v15 = 2048;
        v16 = v8;
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "applebt_set_trace_mask: set to <%016llX%016llX%016llX%016llX>!\n", buf, 0x2Au);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100209950(int a1)
{
  inputStruct = a1;
  v1 = sub_100209108();
  if (v1)
  {
    v2 = v1;
    if (qword_100B5CD90 != -1)
    {
      sub_1008137D4();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_1008137E8();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_100B5CD88, 5u, 0, 0, &inputStruct, 4uLL, 0, 0, 0, 0);
    if (v3)
    {
      v2 = v3;
      if (qword_100B5CD90 != -1)
      {
        sub_100813850();
      }

      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
      {
        sub_100813878();
      }
    }

    else
    {
      if (qword_100B5CD90 != -1)
      {
        sub_1008138E0();
      }

      v4 = qword_100B5CD98;
      v2 = 0;
      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = inputStruct;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_set_capture_timeout: set to %d!\n", buf, 8u);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100209B60(int a1)
{
  inputStruct = a1;
  v1 = sub_100209108();
  if (v1)
  {
    v2 = v1;
    if (qword_100B5CD90 != -1)
    {
      sub_100813908();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_10081391C();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_100B5CD88, 6u, 0, 0, &inputStruct, 4uLL, 0, 0, 0, 0);
    v2 = v3;
    if (v3 != -536870201 && v3 != 0)
    {
      if (qword_100B5CD90 != -1)
      {
        sub_100813984();
      }

      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
      {
        sub_1008139AC();
      }
    }
  }

  return v2;
}

uint64_t sub_100209CBC(uint32_t a1, const void *a2, unsigned int a3)
{
  v6 = sub_100209108();
  if (v6)
  {
    v7 = v6;
    if (qword_100B5CD90 != -1)
    {
      sub_100813A14();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_100813A28();
    }
  }

  else
  {
    v8 = IOConnectCallMethod(dword_100B5CD88, a1, 0, 0, a2, a3, 0, 0, 0, 0);
    if (v8)
    {
      v7 = v8;
      if (qword_100B5CD90 != -1)
      {
        sub_100813A90();
      }

      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
      {
        sub_100813AA4();
      }
    }

    else
    {
      if (qword_100B5CD90 != -1)
      {
        sub_100813B0C();
      }

      v9 = qword_100B5CD98;
      v7 = 0;
      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "applebt_general_debug: completed!\n", buf, 2u);
        return 0;
      }
    }
  }

  return v7;
}

uint64_t sub_100209EA0(void *a1, size_t *a2)
{
  v4 = sub_100209108();
  if (v4)
  {
    v5 = v4;
    if (qword_100B5CD90 != -1)
    {
      sub_100813B20();
    }

    if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
    {
      sub_100813B34();
    }
  }

  else
  {
    output = 0;
    outputCnt = 1;
    v6 = IOConnectCallMethod(dword_100B5CD88, 7u, 0, 0, 0, 0, &output, &outputCnt, a1, a2);
    if (v6)
    {
      v5 = v6;
      if (qword_100B5CD90 != -1)
      {
        sub_100813B9C();
      }

      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_ERROR))
      {
        sub_100813BC4();
      }
    }

    else
    {
      *a2 = output;
      if (qword_100B5CD90 != -1)
      {
        sub_100813C2C();
      }

      v7 = qword_100B5CD98;
      v5 = 0;
      if (os_log_type_enabled(qword_100B5CD98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "applebt_read_crash_info: completed!\n", buf, 2u);
        return 0;
      }
    }
  }

  return v5;
}

void sub_10020A09C(int *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    sub_1000D660C();
  }

  v4 = *a1;
  if (*a1 > 9 || ((1 << *a1) & 0x301) == 0)
  {
    *a1 = 9;
    a1[1] = v4;
    if (*(a1 + 16))
    {
      v6 = sub_10029104C(*(a1 + 16), 436);
      if (v6)
      {
        v7 = v6;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_L2CAP_Disconnect failed in BNEP_FreeConnection %!\n", v7);
          v8 = sub_10000C050(7u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        a1[2] = v2;
        if (*(a1 + 16))
        {
          return;
        }
      }
    }

    sub_10020A174(a1, v2);
  }
}

void sub_10020A174(uint64_t result, unsigned int a2)
{
  if (*result)
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = a2;
    }

    v5 = *(result + 88);
    v18 = *(result + 96);
    v19 = *(result + 34);
    v20 = *(result + 38);
    if (*(qword_100B5CDA0 + 2))
    {
      v6 = 0;
      v7 = qword_100B5CDB0 - 152;
      while (1)
      {
        v7 += 152;
        if (v7 == result)
        {
          break;
        }

        if (*(qword_100B5CDA0 + 2) == ++v6)
        {
          goto LABEL_9;
        }
      }

      v8 = v6 + 1;
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

    v9 = *(result + 4);
    *result = 0;
    *(result + 34) = 0;
    *(result + 38) = 0;
    v10 = *(result + 16);
    if (v10)
    {
      sub_10000C1E8(v10);
      *(result + 16) = 0;
    }

    v11 = *(result + 48);
    if (v11)
    {
      sub_100306190(v11);
      *(result + 48) = 0;
    }

    if (sub_10002260C(*(result + 28)))
    {
      sub_10002242C(*(result + 28));
    }

    v13 = (result + 56);
    for (i = *(result + 56); i != v13; i = *v13)
    {
      v14 = sub_10030528C((result + 56));
      if (!*(v14 - 8))
      {
        (*(result + 104))(v8, v4);
      }

      sub_1000BB9CC(*(v14 - 3));
      sub_10000C1E8(v14 - 3);
    }

    v16 = (result + 72);
    for (j = *(result + 72); j != v16; j = *v16)
    {
      v17 = sub_10030528C((result + 72));
      if (!*(v17 - 8))
      {
        (*(result + 104))(v8, v4);
      }

      sub_10002242C(*(v17 - 1));
      sub_1000BB9CC(*(v17 - 3));
      sub_10000C1E8(v17 - 3);
    }

    sub_10020B5F8();
    if ((v9 - 5) < 2)
    {
LABEL_30:
      v5(v8, &v19, v4);
      return;
    }

    if (v9 != 7)
    {
      if (v9 != 2)
      {
        return;
      }

      goto LABEL_30;
    }

    v18(v8, v4);
  }
}

unsigned __int16 *sub_10020A38C(int a1)
{
  v1 = *qword_100B5CDA0;
  if (!*qword_100B5CDA0)
  {
    return 0;
  }

  for (i = qword_100B5CDA8; *i != a1; i += 8)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  return i;
}

uint64_t sub_10020A3C8(uint64_t a1)
{
  v1 = *(qword_100B5CDA0 + 2);
  if (*(qword_100B5CDA0 + 2))
  {
    v2 = 0;
    v3 = qword_100B5CDB0 - 152;
    while (1)
    {
      v3 += 152;
      if (v3 == a1)
      {
        break;
      }

      if (v1 == ++v2)
      {
        LOWORD(v1) = 0;
        return v1;
      }
    }

    LOWORD(v1) = v2 + 1;
  }

  return v1;
}

uint64_t sub_10020A414(int a1, uint64_t *a2, _WORD *a3)
{
  if (a2)
  {
    if (*(qword_100B5CDA0 + 2))
    {
      v3 = 0;
      for (i = qword_100B5CDB0; *(i + 32) != a1; i += 152)
      {
        if (*(qword_100B5CDA0 + 2) == ++v3)
        {
          return 404;
        }
      }

      *a2 = i;
      result = 0;
      if (a3)
      {
        *a3 = v3 + 1;
      }
    }

    else
    {
      return 404;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_10020A48C(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    if (HIDWORD(xmmword_100BCE240) || (result = sub_10020A5C4(), !result))
    {
      result = sub_1002967FC(a1, sub_10020A6E0);
      if (!result)
      {
        v7 = *qword_100B5CDA0;
        if (*qword_100B5CDA0)
        {
          v8 = qword_100B5CDA8;
          v9 = qword_100B5CDA8;
          v10 = *qword_100B5CDA0;
          do
          {
            v11 = *v9;
            v9 += 8;
            if (v11 == a2)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Rejecting registration for service already registered\n");
                v12 = sub_10000C050(7u);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              goto LABEL_18;
            }

            --v10;
          }

          while (v10);
          while (*v8)
          {
            v8 += 16;
            if (!--v7)
            {
              goto LABEL_18;
            }
          }

          result = 0;
          *v8 = a2;
          ++HIDWORD(xmmword_100BCE240);
          *(v8 + 8) = a3;
        }

        else
        {
LABEL_18:
          if (!HIDWORD(xmmword_100BCE240))
          {
            sub_1002969F8(a1);
            sub_10020A7F4();
          }

          return 104;
        }
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_10020A5C4()
{
  if (HIDWORD(xmmword_100BCE240))
  {
    return 119;
  }

  v1 = sub_1003045A0(7u);
  qword_100B5CDA0 = v1;
  if (v1[2] - 10 >= 0x123)
  {
    sub_1000D660C();
    v1 = qword_100B5CDA0;
  }

  if (v1[3] - 10 >= 0x123)
  {
    sub_1000D660C();
    v1 = qword_100B5CDA0;
  }

  qword_100B5CDA8 = sub_1001BBBD8(16 * *v1, 0x1080040EF48E34EuLL);
  qword_100B5CDB0 = sub_1001BBBD8(152 * *(qword_100B5CDA0 + 2), 0x10B0040624AF1AAuLL);
  if (*(qword_100B5CDA0 + 2))
  {
    v2 = 0;
    v3 = 56;
    do
    {
      sub_1003051D8((qword_100B5CDB0 + v3));
      sub_1003051D8((qword_100B5CDB0 + v3 + 16));
      ++v2;
      v3 += 152;
    }

    while (v2 < *(qword_100B5CDA0 + 2));
  }

  return 0;
}

void sub_10020A6E0(int a1, int *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_10020ACAC(a2);
  if (v6)
  {
    if (!*v6)
    {
      sub_1000D660C();
    }

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = sub_10020ACF8(a2);
    v7 = v8 != 0;
  }

  v12[0] = 0x2021388FFFF069BLL;
  memset(&v12[1], 0, 24);
  if (a1 == 4111)
  {
    v9 = &unk_100AE6EA8;
  }

  else
  {
    v9 = &unk_1008A3848;
  }

  v10 = sub_100290164(sub_10020AD64, sub_10020AE80, sub_10020AF68, v3, v12, v7, v9);
  if (v8)
  {
    if (v10)
    {
      sub_10020A09C(v8, v10);
    }

    else
    {
      *v8 = 1;
      *(v8 + 32) = v3;
      v11 = *a2;
      *(v8 + 38) = *(a2 + 2);
      *(v8 + 34) = v11;
    }
  }
}

void sub_10020A7F4()
{
  if (HIDWORD(xmmword_100BCE240))
  {
    sub_1000D660C();
  }

  qword_100B5CDA0 = sub_1003045A0(7u);
  if (*(qword_100B5CDA0 + 2))
  {
    v0 = 0;
    v1 = 0;
    do
    {
      if (qword_100B5CDB0 + v0 + 56 != *(qword_100B5CDB0 + v0 + 56))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Send queue to %: not empty\n", qword_100B5CDB0 + v0 + 34);
          v2 = sub_10000C050(7u);
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            v4 = sub_10000C0FC();
            *buf = 136446466;
            v7 = v4;
            v8 = 1024;
            v9 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }
      }

      if (qword_100B5CDB0 + v0 + 72 != *(qword_100B5CDB0 + v0 + 72))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Resend queue to %: not empty\n", qword_100B5CDB0 + v0 + 34);
          v3 = sub_10000C050(7u);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            v5 = sub_10000C0FC();
            *buf = 136446466;
            v7 = v5;
            v8 = 1024;
            v9 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }
      }

      ++v1;
      v0 += 152;
    }

    while (v1 < *(qword_100B5CDA0 + 2));
  }

  if (qword_100B5CDB0)
  {
    sub_10000C1E8(qword_100B5CDB0);
    qword_100B5CDB0 = 0;
  }

  if (qword_100B5CDA8)
  {
    sub_10000C1E8(qword_100B5CDA8);
    qword_100B5CDA8 = 0;
  }
}

uint64_t sub_10020AA28(uint64_t a1, int a2)
{
  if (!HIDWORD(xmmword_100BCE240))
  {
    return 408;
  }

  v2 = *(qword_100B5CDA0 + 2);
  if (*(qword_100B5CDA0 + 2))
  {
    v3 = (qword_100B5CDB0 + 40);
    while (!*(v3 - 4) || *v3 != a2)
    {
      v3 += 76;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    return 141;
  }

  else
  {
LABEL_7:
    v4 = *qword_100B5CDA0;
    if (*qword_100B5CDA0)
    {
      for (i = qword_100B5CDA8; *i != a2; i += 8)
      {
        if (!--v4)
        {
          return 120;
        }
      }

      sub_1002969F8(a1);
      *i = 0;
      sub_10020B5F8();
      return 0;
    }

    else
    {
      return 120;
    }
  }
}

uint64_t sub_10020AAE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int16 a5, __int16 a6, uint64_t a7)
{
  if (!a3 || !a2)
  {
    goto LABEL_15;
  }

  if (!*a3)
  {
    sub_1000D660C();
    if (!*a3)
    {
      return 101;
    }
  }

  if (!a3[1])
  {
    sub_1000D660C();
    if (!a3[1])
    {
      return 101;
    }
  }

  if (!a4)
  {
LABEL_15:
    sub_1000D660C();
    return 101;
  }

  if (HIDWORD(xmmword_100BCE240) || (v15 = sub_10020A5C4(), !v15))
  {
    v14 = sub_10020ACAC(a4);
    if (v14)
    {
      if (!*v14)
      {
        sub_1000D660C();
      }

      if (!HIDWORD(xmmword_100BCE240))
      {
        sub_1000D660C();
      }

      return 2008;
    }

    else
    {
      v17 = sub_10020ACF8(a4);
      if (v17)
      {
        v18 = v17;
        v21[0] = 0x2021388FFFF069BLL;
        memset(&v21[1], 0, 24);
        v15 = sub_10028F454(sub_10020AD64, sub_10020AE80, sub_10020AF68, a1, a4, v21, (v17 + 32), a7);
        if (v15)
        {
          sub_10020A09C(v18, v15);
        }

        else
        {
          v19 = *a3;
          v20 = a3[1];
          *(v18 + 88) = a2;
          *(v18 + 96) = v19;
          *(v18 + 112) = v20;
          LODWORD(v19) = *a4;
          *(v18 + 38) = *(a4 + 4);
          *(v18 + 34) = v19;
          *(v18 + 40) = a5;
          *(v18 + 42) = a6;
          *(v18 + 136) = *(a3 + 1);
          *v18 = 2;
        }
      }

      else
      {
        if (!HIDWORD(xmmword_100BCE240))
        {
          sub_1002969F8(a1);
          sub_10020A7F4();
        }

        return 104;
      }
    }
  }

  return v15;
}

uint64_t sub_10020ACAC(int *a1)
{
  v1 = *(qword_100B5CDA0 + 2);
  if (!*(qword_100B5CDA0 + 2))
  {
    return 0;
  }

  result = qword_100B5CDB0;
  v4 = *a1;
  v5 = *(a1 + 2);
  while (v4 != *(result + 34) || v5 != *(result + 38))
  {
    result += 152;
    if (!--v1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10020ACF8(int *a1)
{
  result = sub_10020ACAC(&dword_1008A55E0);
  if (result)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 32) = 0;
    v3 = *a1;
    *(result + 38) = *(a1 + 2);
    *(result + 34) = v3;
    *(result + 44) = 0;
    *(result + 48) = 0;
    ++HIDWORD(xmmword_100BCE240);
  }

  return result;
}

void sub_10020AD64(int a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6[0] = 0;
  v4 = *(qword_100B5CDA0 + 2);
  if (*(qword_100B5CDA0 + 2))
  {
    for (i = qword_100B5CDB0; *(i + 32) != a1; i += 152)
    {
      if (!--v4)
      {
        return;
      }
    }

    v7 = i;
    if (a4)
    {
      *(i + 32) = 0;
    }

    else
    {
      a4 = 2001;
      if (a2 >= 0x69B && a3 >= 0x69B)
      {
        if (*i == 2)
        {
          *i = 6;
          a4 = sub_10020B8AC(i, *(i + 40), *(i + 42));
          if (!a4)
          {
            return;
          }
        }

        else
        {
          if (*i == 1)
          {
            *i = 3;
            v6[1] = &v7;
            LOWORD(v6[0]) = 8;
            sub_10002195C(sub_10020B654, v6, 100, (i + 28));
            return;
          }

          a4 = 408;
        }
      }
    }

    sub_10020A09C(i, a4);
  }
}

void sub_10020AE80(uint64_t result, unsigned int a2)
{
  if (HIDWORD(xmmword_100BCE240))
  {
    v2 = *(qword_100B5CDA0 + 2);
    if (!*(qword_100B5CDA0 + 2))
    {
      return;
    }

    v3 = result;
    for (i = qword_100B5CDB0; *(i + 32) != v3; i += 152)
    {
      if (!--v2)
      {
        return;
      }
    }

    *(i + 32) = 0;
    v6 = *i;
    if (*i)
    {
      v7 = v6 == 9;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if ((v6 & 0xFFFFFFFE) != 8)
      {
        return;
      }
    }

    else
    {
      *i = 8;
      *(i + 4) = v6;
    }

    sub_10020A174(i, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("L2CAP disconnected, but BNEP terminated\n");
    v5 = sub_10000C050(7u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10020AF68(uint64_t result, char *a2, unsigned int a3)
{
  if (HIDWORD(xmmword_100BCE240))
  {
    v3 = *(qword_100B5CDA0 + 2);
    if (*(qword_100B5CDA0 + 2))
    {
      for (i = qword_100B5CDB0; *(i + 32) != result; i += 152)
      {
        if (!--v3)
        {
          return;
        }
      }

      sub_10020BE10(i, a2, a3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("L2CAP disconnected, but BNEP terminated\n");
    v5 = sub_10000C050(7u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10020B028(unsigned int a1, uint64_t a2, uint64_t *a3, int a4, __int128 *a5)
{
  if (!HIDWORD(xmmword_100BCE240))
  {
    return 408;
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (*(qword_100B5CDA0 + 2) >= a1)
  {
    v6 = qword_100B5CDB0 + 152 * a1;
    v7 = (v6 - 152);
    if (*(v6 - 152) == 4)
    {
      v15 = 0;
      if (a4)
      {
        if (a3)
        {
          if (*a3 || (sub_1000D660C(), *a3))
          {
            if (a3[1] || (sub_1000D660C(), a3[1]))
            {
              v5 = sub_100305BDC(sub_10020B1D8, (v6 - 118), a5, (v6 - 104), 1);
              if (!v5)
              {
                *(v6 - 152) = 5;
                v11 = *a3;
                v12 = a3[1];
                *(v6 - 64) = a2;
                *(v6 - 56) = v11;
                *(v6 - 40) = v12;
                *(v6 - 16) = *(a3 + 1);
                return v5;
              }

LABEL_21:
              sub_10020A09C(v7, 2014);
              return v5;
            }
          }
        }

        else
        {
          sub_1000D660C();
        }

        return 101;
      }

      sub_10020B980(v7, 2u, 4);
      if (*(v6 - 136))
      {
        v14 = *(v6 - 128);
        if (!v14)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep.c", 874, "(c->setupReqExtHeadersSize) > 0");
        }

        v17 = *(v6 - 136);
        LOWORD(v18) = v14;
        HIDWORD(v18) = 0x10000;
        WORD1(v18) = v14;
        sub_10020CCE8(v7, &v17, &v16, &v15);
        sub_10000C1E8(*(v6 - 136));
        v5 = 0;
        *(v6 - 136) = 0;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_21;
    }

    return 408;
  }

  return 2004;
}

void sub_10020B1D8(int a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v2 = *(qword_100B5CDA0 + 2);
  if (*(qword_100B5CDA0 + 2))
  {
    v4 = qword_100B5CDB0;
    while (*(v4 + 48) != a1)
    {
      v4 += 152;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    if (a2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
      *v4 = 7;
    }

    sub_10020B980(v4, 2u, v6);
    if (*(v4 + 16))
    {
      v7 = *(v4 + 24);
      if (!v7)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep.c", 806, "(c->setupReqExtHeadersSize) > 0");
      }

      v13 = *(v4 + 16);
      LOWORD(v14) = v7;
      HIDWORD(v14) = 0x10000;
      WORD1(v14) = v7;
      sub_10020CCE8(v4, &v13, &v12, &v11);
      sub_10000C1E8(*(v4 + 16));
      *(v4 + 16) = 0;
    }

    if (a2)
    {
      sub_10020A09C(v4, a2);
    }

    else
    {
      v8 = *(qword_100B5CDA0 + 2);
      if (*(qword_100B5CDA0 + 2))
      {
        v9 = 0;
        v10 = qword_100B5CDB0 - 152;
        while (1)
        {
          v10 += 152;
          if (v4 == v10)
          {
            break;
          }

          if (v8 == ++v9)
          {
            LOWORD(v8) = 0;
            goto LABEL_22;
          }
        }

        LOWORD(v8) = v9 + 1;
      }

LABEL_22:
      (*(v4 + 88))(v8, v4 + 34, 0);
    }
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("AcceptPolicyCB issued but no connection\n");
      v5 = sub_10000C050(7u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

uint64_t sub_10020B368(unsigned int a1)
{
  if (!HIDWORD(xmmword_100BCE240))
  {
    return 408;
  }

  if (*(qword_100B5CDA0 + 2) < a1)
  {
    return 2004;
  }

  v2 = qword_100B5CDB0 + 152 * a1;
  v3 = *(v2 - 152);
  v4 = v3 > 9;
  v5 = (1 << v3) & 0x301;
  if (v4 || v5 == 0)
  {
    return sub_10029104C(*(v2 - 120), 436);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020B3E0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, size_t a7, char *a8, unsigned __int16 a9)
{
  if (!HIDWORD(xmmword_100BCE240))
  {
    return 408;
  }

  if (*(qword_100B5CDA0 + 2) < a2)
  {
    return 2004;
  }

  v10 = qword_100B5CDB0 + 152 * a2;
  if (*(v10 - 152) != 7)
  {
    return 2006;
  }

  if (a3)
  {
    if (*(v10 - 118) ^ *a3 | *(v10 - 114) ^ *(a3 + 4))
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    if (a4)
    {
LABEL_11:
      if (xmmword_100BCDFD8 ^ *a4 | WORD2(xmmword_100BCDFD8) ^ *(a4 + 4))
      {
        v12 = a4;
      }

      else
      {
        v12 = 0;
      }

      if (!a8)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  v12 = 0;
  if (!a8)
  {
LABEL_26:
    sub_1000D660C();
    return 101;
  }

LABEL_19:
  if (!a1)
  {
    goto LABEL_26;
  }

  if (a9 >= 0x5DDu)
  {
    v9 = 142;
    if (a5 != 33024 || a9 > 0x5E0u)
    {
      return v9;
    }
  }

  *(v10 - 48) = a1;

  return sub_10020BA3C((v10 - 152), v11, v12, a5, a6, a7, a8, a9);
}

uint64_t sub_10020B528(unsigned int a1, int a2)
{
  if (!HIDWORD(xmmword_100BCE240))
  {
    return 408;
  }

  if (*(qword_100B5CDA0 + 2) < a1)
  {
    return 2004;
  }

  v3 = qword_100B5CDB0 + 152 * a1;
  v5 = *(v3 - 152);
  v4 = (v3 - 152);
  if (v5 != 7)
  {
    return 408;
  }

  v6 = a2 - 2020;
  if (!a2)
  {
    v6 = 0;
  }

  return sub_10020B980(v4, 4u, v6);
}

uint64_t sub_10020B590(unsigned int a1, int a2)
{
  if (!HIDWORD(xmmword_100BCE240))
  {
    return 408;
  }

  if (*(qword_100B5CDA0 + 2) < a1)
  {
    return 2004;
  }

  v3 = qword_100B5CDB0 + 152 * a1;
  v5 = *(v3 - 152);
  v4 = (v3 - 152);
  if (v5 != 7)
  {
    return 408;
  }

  v6 = a2 - 2030;
  if (!a2)
  {
    v6 = 0;
  }

  return sub_10020B980(v4, 6u, v6);
}

void sub_10020B5F8()
{
  v0 = HIDWORD(xmmword_100BCE240);
  if (!HIDWORD(xmmword_100BCE240))
  {
    sub_1000D660C();
    v0 = HIDWORD(xmmword_100BCE240);
  }

  HIDWORD(xmmword_100BCE240) = v0 - 1;
  if (v0 == 1)
  {

    sub_10020A7F4();
  }
}

uint64_t sub_10020B664(_DWORD *a1, void *a2)
{
  if (*a1 != 7 && (**(*a2 + 24) & 0x7F) != 1 || (result = sub_10020B6CC(a2), result == 410))
  {
    sub_1003051F4(a2 + 3, (a1 + 14));
    return 0;
  }

  return result;
}

uint64_t sub_10020B6CC(uint64_t a1)
{
  v2 = *(a1 + 18);
  if (!*(a1 + 18))
  {
    goto LABEL_8;
  }

  v8 = a1;
  v7[0] = 8;
  v3 = (a1 + 20);
  if (sub_10002260C(*(a1 + 20)))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("StartTimer called while timer already active\n");
      v4 = sub_10000C050(7u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10002242C(*v3);
  }

  v7[1] = &v8;
  v5 = sub_10002195C(sub_10020D268, v7, v2, (a1 + 20));
  if (!v5)
  {
LABEL_8:
    v5 = sub_1000B7EDC(sub_10020D024, *(*(a1 + 8) + 32), 0, *a1, 0);
    if (v5)
    {
      if (*(a1 + 18))
      {
        sub_10002242C(*(a1 + 20));
      }
    }

    else
    {
      sub_1003051F4((a1 + 24), *(a1 + 8) + 72);
    }
  }

  return v5;
}

uint64_t sub_10020B7EC(_DWORD *a1, char *a2, size_t a3, char a4, __int16 a5)
{
  v10 = sub_100007618(0x28uLL, 0x10200403D817979uLL);
  if (!v10)
  {
    return 106;
  }

  v11 = v10;
  v12 = sub_1003053B4(a2, a3, 1);
  if (!v12)
  {
    v14 = 106;
    goto LABEL_7;
  }

  v13 = v12;
  v11[16] = a4;
  *(v11 + 9) = a5;
  v11[17] = 0;
  *v11 = v12;
  *(v11 + 1) = a1;
  v14 = sub_10020B664(a1, v11);
  if (v14)
  {
    sub_10000C1E8(v13);
LABEL_7:
    sub_10000C1E8(v11);
  }

  return v14;
}

uint64_t sub_10020B8AC(uint64_t a1, __int16 a2, __int16 a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 44))
  {
    return 116;
  }

  v6 = sub_100007618(7uLL, 0x7E13B00DuLL);
  if (!v6)
  {
    return 106;
  }

  v7 = v6;
  *v6 = 257;
  v6[2] = 2;
  v6[4] = a3;
  v6[3] = HIBYTE(a3);
  v6[6] = a2;
  v6[5] = HIBYTE(a2);
  v8 = sub_1003045A0(7u);
  v9 = sub_10020B7EC(a1, v7, 7uLL, 1, *(v8 + 4));
  if (v9)
  {
    sub_10000C1E8(v7);
  }

  else
  {
    *(a1 + 44) |= 1u;
  }

  return v9;
}

uint64_t sub_10020B980(_DWORD *a1, unsigned int a2, __int16 a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2 > 6 || ((1 << a2) & 0x54) == 0)
  {
    sub_1000D660C();
  }

  v6 = sub_100007618(4uLL, 0x8E0EA014uLL);
  if (!v6)
  {
    return 106;
  }

  v7 = v6;
  *v6 = 1;
  v6[1] = a2;
  v6[3] = a3;
  v6[2] = HIBYTE(a3);
  v8 = sub_10020B7EC(a1, v6, 4uLL, 8, 0);
  if (v8)
  {
    sub_10000C1E8(v7);
  }

  return v8;
}

uint64_t sub_10020BA3C(_DWORD *a1, int *a2, int *a3, unsigned int a4, char *a5, size_t a6, char *a7, size_t a8)
{
  if (a1)
  {
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a7)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v16 = sub_1000B914C(3u);
  if (!v16)
  {
    return 106;
  }

  v17 = v16;
  if (a5)
  {
    v18 = sub_1003054C0(v16, a5, a6, 2u);
    if (v18)
    {
      v19 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("MBUF prepend failed\n");
        v20 = sub_10000C050(7u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_38;
    }

    LOBYTE(a5) = 0x80;
  }

  v21 = sub_100007618(0xFuLL, 0xA3D1CCFFuLL);
  if (!v21)
  {
    v19 = 106;
LABEL_38:
    sub_10000C1E8(v17);
    return v19;
  }

  v22 = v21;
  v23 = 4 * (a3 == 0);
  if (a3)
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  if (!a2)
  {
    v23 = v24;
  }

  *v21 = a5 | v23;
  if (!a2)
  {
    v26 = 1;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v25 = *a2;
  *(v21 + 5) = *(a2 + 2);
  *(v21 + 1) = v25;
  v26 = 7;
  if (a3)
  {
LABEL_21:
    v27 = *a3;
    v28 = &v21[v26];
    *(v28 + 2) = *(a3 + 2);
    *v28 = v27;
    v26 += 6;
  }

LABEL_22:
  *&v21[v26] = __rev16(a4);
  v29 = sub_1003054C0(v17, v21, v26 + 2, 1u);
  if (v29)
  {
    v19 = v29;
    if (!sub_10000C240())
    {
      goto LABEL_37;
    }

    sub_10000AF54("MBUF prepend failed\n");
    v30 = sub_10000C050(7u);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v31 = sub_10001F968(v17, a7, a8, 2u);
  if (v31)
  {
    v19 = v31;
    if (!sub_10000C240())
    {
      goto LABEL_37;
    }

    sub_10000AF54("MBUF append failed\n");
    v32 = sub_10000C050(7u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

LABEL_25:
    sub_10080F7A0();
LABEL_37:
    sub_10000C1E8(v22);
    goto LABEL_38;
  }

  v33 = sub_100007618(0x28uLL, 0x10200403D817979uLL);
  if (!v33)
  {
    v19 = 106;
    goto LABEL_37;
  }

  v34 = v33;
  *(v33 + 4) = 0;
  *v33 = v17;
  v33[1] = a1;
  v19 = sub_10020B664(a1, v33);
  if (v19)
  {
    sub_10000C1E8(v34);
    goto LABEL_37;
  }

  return v19;
}

void sub_10020BCD0(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(a1 + 44);
  if ((v4 & a2) != 0)
  {
    *(a1 + 44) = v4 & ~a2;
    v9 = (a1 + 72);
    while (1)
    {
      v9 = *v9;
      if (v9 == (a1 + 72))
      {
        break;
      }

      if (*(v9 - 8) == a2)
      {
        sub_10002242C(*(v9 - 1));
        sub_100305208(v9);
        sub_1000BB9CC(*(v9 - 3));
        sub_10000C1E8(v9 - 3);
        goto LABEL_9;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("CancelControlTimer called and no packet found\n");
      v10 = sub_10000C050(7u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_9:
    v11 = sub_10020A3C8(a1);
    switch(a2)
    {
      case 4:
        (*(a1 + 120))(v11, a3);
        break;
      case 2:
        (*(a1 + 128))(v11, a3);
        break;
      case 1:
        if (a3)
        {
          *a4 = 0;
          sub_10020A09C(a1, a3);
        }

        else
        {
          *a1 = 7;
          (*(a1 + 88))(v11, a1 + 34, 0);
        }

        break;
    }
  }
}

void sub_10020BE10(uint64_t result, char *a2, unsigned int a3)
{
  v29 = 0;
  v28 = 0;
  if (!a2)
  {
    v23 = "buf";
    goto LABEL_61;
  }

  if (!a3)
  {
    v23 = "(length) > 0";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1427, v23);
  }

  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v30 = a2;
  v31 = a3;
  v32 = a3;
  v33 = 65537;
  v4 = *a2;
  v5 = *a2 & 0x7F;
  v6 = *a2 & 0x80;
  v34 = *a2 & 0x80;
  if ((v5 - 2) >= 3)
  {
    if (v5 == 1)
    {
      v9 = sub_10020C2B0(result, &v30, &v34);
      if (!v9)
      {
        if (!v34)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

LABEL_38:
      if (sub_10000C240())
      {
        sub_10000AF54("BNEP failed parsing packet %!\n", v9);
        v16 = sub_10000C050(7u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }

    if (v5)
    {
LABEL_37:
      v9 = 411;
      goto LABEL_38;
    }
  }

  if ((v4 & 0x7E) == 2)
  {
    v24 = xmmword_100BCDFD8;
    v25 = WORD2(xmmword_100BCDFD8);
    v7 = 1;
  }

  else
  {
    if (a3 < 7)
    {
      v8 = 0;
      v7 = 1;
      HIBYTE(v33) = 1;
      goto LABEL_15;
    }

    v24 = *(a2 + 1);
    v25 = *(a2 + 5);
    v7 = 7;
    LOWORD(v33) = 7;
  }

  v8 = 1;
LABEL_15:
  if (v5 == 2 || v5 == 4)
  {
    v26 = *(result + 34);
    v27 = *(result + 38);
    if (v8)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

  if ((v8 & 1) == 0)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1229, "OI_STATUS ProcessEthernetHeader(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t, OI_BD_ADDR *, OI_BD_ADDR *, uint16_t *)");
    goto LABEL_35;
  }

  if ((a3 - v7) < 6)
  {
LABEL_35:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1233, "OI_STATUS ProcessEthernetHeader(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t, OI_BD_ADDR *, OI_BD_ADDR *, uint16_t *)");
    goto LABEL_36;
  }

  v13 = &a2[v7];
  v26 = *v13;
  v27 = *(v13 + 2);
  v7 += 6;
  LOWORD(v33) = v7;
LABEL_18:
  if ((a3 - v7) < 2)
  {
LABEL_36:
    HIBYTE(v33) = 1;
    goto LABEL_37;
  }

  v9 = bswap32(*&a2[v7]) >> 16;
  LOWORD(v33) = v7 + 2;
  if (!v6)
  {
LABEL_27:
    if (v5 == 1 || *result != 7)
    {
      return;
    }

    v14 = v29;
    v15 = v28;
    v36 = result;
    v35 = 0;
    if (v9 == 33024)
    {
      if (BYTE2(v33) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1270, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      if (HIBYTE(v33))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1270, "void RecvDataPacket(BNEP_CONNECTION *, OI_BYTE_STREAM *, OI_BD_ADDR *, OI_BD_ADDR *, uint16_t, uint8_t *, uint16_t)");
        HIBYTE(v33) = 1;
        if (BYTE2(v33) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1271, "(*bs).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_54;
      }

      v17 = v32;
      v21 = v33;
      if (v32 - v33 <= 1)
      {
        HIBYTE(v33) = 1;
LABEL_54:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1271, "void RecvDataPacket(BNEP_CONNECTION *, OI_BYTE_STREAM *, OI_BD_ADDR *, OI_BD_ADDR *, uint16_t, uint8_t *, uint16_t)");
        goto LABEL_55;
      }

      LOWORD(v33) = v33 + 2;
      if (v32 - (v21 + 2) < 2)
      {
LABEL_55:
        HIBYTE(v33) = 1;
        goto LABEL_56;
      }

      v9 = bswap32(*&v30[(v21 + 2)]) >> 16;
      v18 = v21 + 4;
      LOWORD(v33) = v18;
    }

    else
    {
      if (HIBYTE(v33))
      {
LABEL_56:
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", 411, 0);
          v22 = sub_10000C050(7u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }
        }

        return;
      }

      v17 = v32;
      v18 = v33;
    }

    v19 = v17 - v18;
    if ((v17 - v18) >= 0x5DDu)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received BNEP payload is too large, truncating\n");
        v20 = sub_10000C050(7u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v19 = 1500;
    }

    sub_10020A414(*(result + 32), &v36, &v35);
    (*(v36 + 112))(v35, &v24, &v26, v9, v14, v15, &v30[v33], v19);
    return;
  }

LABEL_20:
  v10 = sub_10020CCE8(result, &v30, &v29, &v28);
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  if (sub_10000C240())
  {
    sub_10000AF54("BNEP failed parsing extension headers %!\n", v11);
    v12 = sub_10000C050(7u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_23:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10020C2B0(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1328, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    v4 = "OI_STATUS RecvControlPacket(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t *)";
    v5 = 1328;
LABEL_4:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", v5, v4);
LABEL_114:
    *(a2 + 15) = 1;
    return 411;
  }

  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  if (v6 <= v7)
  {
    goto LABEL_114;
  }

  v9 = a1;
  v10 = *a2;
  v11 = v7 + 1;
  *(a2 + 6) = v7 + 1;
  v12 = *(v10 + v7);
  if (v12 > 2)
  {
    if (*(v10 + v7) <= 4u)
    {
      if (v12 != 3)
      {
        if (v12 != 4)
        {
          goto LABEL_30;
        }

        goto LABEL_18;
      }

      if (*a1 != 7)
      {
        return 0;
      }

      if (*(a1 + 136))
      {

        return sub_10020D3B0(a1, a2);
      }

      v30 = 4;
      goto LABEL_69;
    }

    if (v12 != 5)
    {
      if (v12 == 6)
      {
LABEL_18:
        if (*a1 != 7)
        {
          return 0;
        }

        v13 = *(v10 + v7);
        goto LABEL_20;
      }

LABEL_30:
      if (!a1)
      {
        sub_1000D660C();
      }

      result = sub_100007618(3uLL, 0x6432F79DuLL);
      if (!result)
      {
        return result;
      }

      v18 = result;
      *result = 1;
      *(result + 2) = v12;
      result = sub_10020B7EC(v9, result, 3uLL, 8, 0);
      if (!result)
      {
        return result;
      }

      sub_10000C1E8(v18);
      return 0;
    }

    if (*a1 != 7)
    {
      return 0;
    }

    if (*(a1 + 144))
    {

      return sub_10020D658(a1, a2);
    }

    v30 = 6;
LABEL_69:
    v31 = 1;
LABEL_70:
    sub_10020B980(a1, v30, v31);
    return 0;
  }

  if (!*(v10 + v7))
  {
    if (v6 <= v11)
    {
      goto LABEL_114;
    }

    *(a2 + 6) = v7 + 2;
    v15 = *(v10 + v11);
    if (sub_10000C240())
    {
      sub_10000AF54("Receive %s for command %d\n", "", v15);
      v16 = sub_10000C050(7u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v17 = 0x40002000100uLL >> (8 * v15);
    if (v15 >= 6)
    {
      LOBYTE(v17) = 0;
    }

    sub_10020BCD0(v9, v17 & 7, 117, a3);
    return 0;
  }

  if (v12 != 1)
  {
    if (v12 == 2)
    {
      if ((*a1 & 0xFFFFFFFE) != 6)
      {
        return 0;
      }

      v13 = 2;
LABEL_20:

      return sub_10020D958(a1, a2, v13, a3);
    }

    goto LABEL_30;
  }

  result = 0;
  if (*v9 > 7u || ((1 << *v9) & 0xB8) == 0)
  {
    return result;
  }

  v58 = v9;
  v59 = xmmword_1008A3890;
  if (v6 <= v11)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 900, "ByteStream_NumReadBytesAvail(*bs) >= 1");
  }

  v57 = 0;
  v19 = v7 + 2;
  *(a2 + 6) = v7 + 2;
  v20 = *(v10 + v11);
  if (v20 == 16)
  {
    if ((v6 - v19) <= 3)
    {
      *(a2 + 15) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 916, "OI_STATUS RecvSetupReq(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t *)");
      LOWORD(v21) = 0;
    }

    else
    {
      LOWORD(v21) = __rev16(*(v10 + v19 + 2));
      *(a2 + 6) = v7 + 6;
      if (v6 - (v7 + 6) >= 0xC)
      {
        v26 = (v10 + (v7 + 6));
        for (i = 4; i != 16; ++i)
        {
          v28 = *v26++;
          *(&v59 + i) = v28;
        }

        *(a2 + 6) = v7 + 18;
        if (sub_100237EDC(0, &v59))
        {
          goto LABEL_62;
        }

LABEL_86:
        sub_10020B980(v9, 2u, 1);
        return 2011;
      }
    }

    *(a2 + 15) = 1;
    goto LABEL_75;
  }

  if (v20 == 4)
  {
    if ((v6 - v19) <= 3)
    {
      *(a2 + 15) = 1;
      v4 = "OI_STATUS RecvSetupReq(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t *)";
      v5 = 927;
      goto LABEL_4;
    }

    v21 = bswap32(*(v10 + v19));
    *(a2 + 6) = v7 + 6;
    if (v21 < 0x10000)
    {
      v29 = *(a2 + 6);
      if (*(a2 + 5) - v29 <= 3)
      {
        goto LABEL_114;
      }

      v25 = bswap32(*(*a2 + v29));
      *(a2 + 6) = v29 + 4;
      if (v25 < 0x10000)
      {
        goto LABEL_88;
      }

      goto LABEL_85;
    }

    goto LABEL_86;
  }

  LOWORD(v21) = 0;
  if (v20 == 2)
  {
    if (v6 - v19 <= 1)
    {
      *(a2 + 15) = 1;
      v4 = "OI_STATUS RecvSetupReq(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t *)";
      v5 = 925;
      goto LABEL_4;
    }

    v22 = (v10 + v19);
    v23 = v22[1];
    v24 = *v22;
    *(a2 + 6) = v7 + 4;
    if ((v6 - (v7 + 4)) < 2)
    {
      goto LABEL_114;
    }

    LOWORD(v21) = v23 | (v24 << 8);
    LOWORD(v25) = __rev16(*(v10 + (v7 + 4)));
    *(a2 + 6) = v7 + 6;
    goto LABEL_87;
  }

LABEL_62:
  if (v20 == 16)
  {
LABEL_75:
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 934, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 934, "OI_STATUS RecvSetupReq(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t *)");
      v32 = *(a2 + 14);
      *(a2 + 15) = 1;
      if (v32 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 935, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      goto LABEL_119;
    }

    v33 = *(a2 + 5);
    v34 = *(a2 + 6);
    if (v33 - v34 <= 3)
    {
      *(a2 + 15) = 1;
LABEL_119:
      v4 = "OI_STATUS RecvSetupReq(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t *)";
      v5 = 935;
      goto LABEL_4;
    }

    v35 = *a2;
    v36 = *(*a2 + v34 + 2);
    *(a2 + 6) = v34 + 4;
    if (v33 - (v34 + 4) < 0xC)
    {
      goto LABEL_114;
    }

    LOWORD(v25) = __rev16(v36);
    v37 = (v35 + (v34 + 4));
    for (j = 4; j != 16; ++j)
    {
      v39 = *v37++;
      *(&v59 + j) = v39;
    }

    *(a2 + 6) = v34 + 16;
    if (sub_100237EDC(0, &v59))
    {
      goto LABEL_87;
    }

LABEL_85:
    sub_10020B980(v9, 2u, 2);
    return 2012;
  }

  LOWORD(v25) = 0;
LABEL_87:
  if (*(a2 + 15))
  {
    return 411;
  }

LABEL_88:
  if (!v21 || (v40 = sub_10020A38C(v21)) == 0)
  {
    a1 = v9;
    v30 = 2;
    goto LABEL_69;
  }

  v41 = v40;
  v42 = *v9;
  if (*v9 != 3)
  {
    if (v42 == 7)
    {
      if (*(v9 + 40) == v21 && *(v9 + 42) == v25)
      {
        a1 = v9;
        v30 = 2;
        v31 = 0;
      }

      else
      {
        a1 = v9;
        v30 = 2;
        v31 = 4;
      }

      goto LABEL_70;
    }

    if (v42 != 4)
    {
      result = sub_10000C240();
      if (!result)
      {
        return result;
      }

      sub_10000AF54("Received setup request in invalid state\n");
      v53 = sub_10000C050(7u);
      result = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10080F7A0();
      return 0;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Previous setup request not accepted in time, dropping\n");
      v43 = sub_10000C050(7u);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  v44 = *(v9 + 16);
  if (v44)
  {
    sub_10000C1E8(v44);
    *(v9 + 16) = 0;
  }

  if (!*a3)
  {
LABEL_130:
    *v9 = 4;
    *(v9 + 40) = v21;
    *(v9 + 42) = v25;
    sub_10002242C(*(v9 + 28));
    sub_10020A414(*(v9 + 32), &v58, &v57);
    (*(v41 + 1))(v57, v58 + 34, v21, v25);
    return 0;
  }

  v55 = v25;
  v45 = 0;
  *(v9 + 24) = 0;
  v46 = *(a2 + 6);
  v47 = -1;
  v48 = 128;
  v56 = v46;
  while (v48)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1564, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1564, "OI_STATUS SizeOfExtHeaders(OI_BYTE_STREAM *, uint16_t *)");
      v49 = *(a2 + 14);
      *(a2 + 15) = 1;
      if (v49 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1567, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      goto LABEL_109;
    }

    v50 = *(a2 + 5);
    if (v50 <= v46)
    {
      *(a2 + 15) = 1;
LABEL_109:
      v48 = v47 & 0x80;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1567, "OI_STATUS SizeOfExtHeaders(OI_BYTE_STREAM *, uint16_t *)");
LABEL_110:
      *(a2 + 15) = 1;
      *(v9 + 24) += v45 + 2;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1570, "OI_STATUS SizeOfExtHeaders(OI_BYTE_STREAM *, uint16_t *)");
      v52 = 0;
      goto LABEL_111;
    }

    v51 = *a2;
    *(a2 + 6) = v46 + 1;
    v47 = *(v51 + v46);
    v48 = v47 & 0x80;
    if (v50 <= (v46 + 1))
    {
      goto LABEL_110;
    }

    *(a2 + 6) = v46 + 2;
    v45 = *(v51 + v46 + 1);
    *(v9 + 24) += v45 + 2;
    v52 = *(a2 + 5) - *(a2 + 6);
LABEL_111:
    if (v52 < v45)
    {
      goto LABEL_114;
    }

    v46 = *(a2 + 6) + v45;
    *(a2 + 6) = v46;
    result = 411;
    if (*(a2 + 15))
    {
      return result;
    }
  }

  if (v56 > *(a2 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1577, "(size_t)(startPos) <= (size_t)((*bs).__size)");
  }

  *(a2 + 6) = v56;
  v54 = sub_100007618(*(v9 + 24), 0x190AEDF2uLL);
  *(v9 + 16) = v54;
  if (v54)
  {
    memmove(v54, (*a2 + *(a2 + 6)), *(v9 + 24));
    *a3 = 0;
    LOWORD(v25) = v55;
    goto LABEL_130;
  }

  return 106;
}

uint64_t sub_10020CCE8(uint64_t a1, uint64_t a2, uint64_t *a3, _WORD *a4)
{
  v27 = 0;
  *a3 = 0;
  *a4 = 0;
  v8 = *(a2 + 12);
  v9 = 255;
  v10 = "Ignoring invalid setup connection message in extension header\n";
  while (1)
  {
    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1505, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      break;
    }

    if (*(a2 + 10) <= v8)
    {
      *(a2 + 15) = 1;
      goto LABEL_31;
    }

    v11 = *a2;
    *(a2 + 12) = v8 + 1;
    v12 = *(a2 + 10);
    if (v12 <= (v8 + 1))
    {
      goto LABEL_32;
    }

    v13 = *(v11 + v8);
    v14 = *a2;
    v15 = v8 + 2;
    *(a2 + 12) = v15;
    v16 = *(v14 + v8 + 1);
    v17 = *a3;
    if ((v13 & 0x7F) != 0)
    {
      if (!v17)
      {
        if (v12 < v8)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1537, "(size_t)(startPos) <= (size_t)((*bs).__size)");
        }

        *(a2 + 12) = v8;
        *a3 = v14 + v8;
      }
    }

    else if (!v17)
    {
      if (v12 <= v15)
      {
        *(a2 + 15) = 1;
      }

      else
      {
        *(a2 + 12) = v8 + 3;
        v9 = *(v14 + v15);
      }

      if ((v9 - 1) > 1)
      {
        *(a2 + 12) = v15;
        result = sub_10020C2B0(a1, a2, &v27);
      }

      else
      {
        result = sub_10000C240();
        if (result)
        {
          v26 = a1;
          v22 = v10;
          sub_10000AF54(v10);
          v23 = sub_10000C050(7u);
          result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v24 = sub_10000C0FC();
            *buf = 136446466;
            v29 = v24;
            v30 = 1024;
            v31 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            result = 0;
          }

          v10 = v22;
          a1 = v26;
        }
      }

      goto LABEL_12;
    }

    result = 0;
    *a4 += v16 + 2;
LABEL_12:
    v19 = *(a2 + 10);
    v20 = v19 >= v8;
    v21 = v19 - v8;
    if (!v20)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1546, "(size_t)(startPos) <= (size_t)((*bs).__size)");
    }

    *(a2 + 12) = v8;
    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1547, "OI_STATUS BNEP_ProcessExtHeaders(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t **, uint16_t *)");
LABEL_36:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1547, "ByteStream_NumReadBytesAvail(*bs) >= (extLen + 2)");
    }

    if (v21 < v16 + 2)
    {
      goto LABEL_36;
    }

    v8 += v16 + 2;
    *(a2 + 12) = v8;
    if (result || (v13 & 0x80000000) == 0)
    {
      return result;
    }
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1505, "OI_STATUS BNEP_ProcessExtHeaders(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t **, uint16_t *)");
  v25 = *(a2 + 14);
  *(a2 + 15) = 1;
  if (v25 != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1508, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

LABEL_31:
  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1508, "OI_STATUS BNEP_ProcessExtHeaders(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t **, uint16_t *)");
LABEL_32:
  *(a2 + 15) = 1;
  return 411;
}

void sub_10020D024(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v20 = 0;
  if (HIDWORD(xmmword_100BCE240))
  {
    if (a4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Write failed - CID %d!\n", a1);
        v7 = sub_10000C050(7u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    if (sub_10020A414(a1, &v21, &v20))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Get connection failed for cid %d\n", a1);
        v8 = sub_10000C050(7u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v10 = (v21 + 72);
      while (1)
      {
        v10 = *v10;
        if (v10 == (v21 + 72))
        {
          break;
        }

        if (*(v10 - 3) == a2)
        {
          if (!*(v10 - 3))
          {
            v11 = *(v10 - 8) ? 0 : *(v21 + 104);
            sub_100305208(v10);
            sub_1000BB9CC(*(v10 - 3));
            sub_10000C1E8(v10 - 3);
            if (v11)
            {
              v11(v20, a4);
            }
          }

          goto LABEL_25;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Write confirmed for packet not in resend queue\n");
        v12 = sub_10000C050(7u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

LABEL_25:
      v13 = v21;
      if (*(v21 + 56) != v21 + 56)
      {
        v14 = sub_10030528C((v21 + 56));
        v15 = (v14 - 3);
        v16 = sub_10020B6CC((v14 - 3));
        if (v16)
        {
          v17 = v16;
          if (!*(v14 - 8))
          {
            v18 = *(v13 + 104);
            v19 = sub_10020A3C8(v13);
            v18(v19, v17);
          }

          sub_1000BB9CC(*v15);
          sub_10000C1E8(v15);
          sub_10020A09C(v13, v17);
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("L2CAP Write complete, but BNEP terminated\n");
    v9 = sub_10000C050(7u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10020D268(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(*v1 + 8);
  v4 = sub_10020A3C8(v3);
  sub_100305208((v2 + 24));
  if (*(v2 + 17) == 1)
  {
    sub_1000BB9CC(*v2);
    sub_10000C1E8(v2);

    sub_10020A09C(v3, 2005);
  }

  else
  {
    v5 = sub_10020B664(v3, v2);
    if (v5)
    {
      v6 = v5;
      if (sub_10000C240())
      {
        sub_10000AF54("Resend failed %!\n", v6);
        v7 = sub_10000C050(7u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v8 = *(v2 + 16);
      sub_1000BB9CC(*v2);
      sub_10000C1E8(v2);
      if (v8)
      {
        sub_10020BCD0(v3, v8, v6, &v9);
      }

      else
      {
        (*(v3 + 104))(v4, v6);
      }
    }

    else
    {
      ++*(v2 + 17);
    }
  }
}

uint64_t sub_10020D3B0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1029, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v20 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1029, "OI_STATUS RecvFilterNetReq(BNEP_CONNECTION *, OI_BYTE_STREAM *)");
LABEL_11:
    v9 = 0;
    *(a2 + 15) = 1;
    goto LABEL_12;
  }

  v4 = *(a2 + 12);
  if (*(a2 + 10) - v4 <= 1)
  {
    goto LABEL_11;
  }

  v5 = (*a2 + v4);
  v6 = v5[1];
  v7 = *v5;
  *(a2 + 12) = v4 + 2;
  if ((v6 & 3) != 0)
  {
    return 101;
  }

  v9 = v6 | (v7 << 8);
LABEL_12:
  v10 = v9 & 0xFFFC;
  v11 = sub_100007618(v9 & 0xFFFC, 0x100004052888210uLL);
  if (!v11)
  {
    return 106;
  }

  v12 = v11;
  v13 = v9 >> 2;
  if (v10)
  {
    v14 = v11 + 1;
    v15 = v13;
    while (1)
    {
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1040, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        break;
      }

      v17 = *(a2 + 12);
      if (*(a2 + 10) - v17 <= 1)
      {
        *(a2 + 15) = 1;
LABEL_23:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1041, "OI_STATUS RecvFilterNetReq(BNEP_CONNECTION *, OI_BYTE_STREAM *)");
LABEL_24:
        *(a2 + 15) = 1;
        v18 = *v14;
        goto LABEL_25;
      }

      *(v14 - 1) = bswap32(*(*a2 + v17)) >> 16;
      *(a2 + 12) = v17 + 2;
      if (*(a2 + 10) - (v17 + 2) < 2)
      {
        goto LABEL_24;
      }

      v18 = __rev16(*(*a2 + (v17 + 2)));
      *v14 = v18;
      *(a2 + 12) = v17 + 4;
LABEL_25:
      if (*(v14 - 1) > v18)
      {
        sub_10020B980(a1, 4u, 2);
      }

      v14 += 2;
      if (!--v15)
      {
        goto LABEL_28;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1040, "OI_STATUS RecvFilterNetReq(BNEP_CONNECTION *, OI_BYTE_STREAM *)");
    v16 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v16 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1041, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_23;
  }

LABEL_28:
  if (*(a2 + 15))
  {
    v8 = 411;
  }

  else
  {
    sub_10020A414(*(a1 + 32), &v21, &v20);
    (*(v21 + 136))(v20, v12, v13);
    v8 = 0;
  }

  sub_10000C1E8(v12);
  return v8;
}

uint64_t sub_10020D658(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1078, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v20 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1078, "OI_STATUS RecvFilterMultiAddrReq(BNEP_CONNECTION *, OI_BYTE_STREAM *)");
LABEL_11:
    v5 = 0;
    *(a2 + 15) = 1;
    goto LABEL_12;
  }

  v4 = *(a2 + 12);
  if (*(a2 + 10) - v4 <= 1)
  {
    goto LABEL_11;
  }

  v5 = __rev16(*(*a2 + v4));
  *(a2 + 12) = v4 + 2;
  HIDWORD(v6) = -1431655765 * v5;
  LODWORD(v6) = -1431655765 * v5;
  if ((v6 >> 2) > 0x15555555)
  {
    return 101;
  }

LABEL_12:
  v8 = (43691 * v5) >> 19;
  v9 = sub_100007618(12 * ((43691 * v5) >> 19), 0x10000403E1C8BA9uLL);
  if (!v9)
  {
    return 106;
  }

  v10 = v9;
  if (v5 >= 0xC)
  {
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v9;
    do
    {
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1089, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1089, "OI_STATUS RecvFilterMultiAddrReq(BNEP_CONNECTION *, OI_BYTE_STREAM *)");
      }

      else
      {
        v13 = *(a2 + 12);
        if (*(a2 + 10) - v13 >= 6)
        {
          v14 = *a2 + v13;
          v15 = *v14;
          *(v12 + 2) = *(v14 + 4);
          *v12 = v15;
          *(a2 + 12) += 6;
          goto LABEL_24;
        }
      }

      *(a2 + 15) = 1;
LABEL_24:
      if (*(a2 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1090, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1090, "OI_STATUS RecvFilterMultiAddrReq(BNEP_CONNECTION *, OI_BYTE_STREAM *)");
LABEL_29:
        *(a2 + 15) = 1;
        goto LABEL_30;
      }

      v16 = *(a2 + 12);
      if (*(a2 + 10) - v16 < 6)
      {
        goto LABEL_29;
      }

      v17 = *a2 + v16;
      v18 = *v17;
      *(v12 + 5) = *(v17 + 4);
      *(v12 + 6) = v18;
      *(a2 + 12) += 6;
LABEL_30:
      if (bswap64(*v12 | (*(v12 + 2) << 32)) > bswap64(*(v12 + 6) | (*(v12 + 5) << 32)))
      {
        sub_10020B980(a1, 6u, 65528);
      }

      v12 += 3;
      --v11;
    }

    while (v11);
  }

  if (*(a2 + 15))
  {
    v7 = 411;
  }

  else
  {
    sub_10020A414(*(a1 + 32), &v21, &v20);
    (*(v21 + 144))(v20, v10, v8);
    v7 = 0;
  }

  sub_10000C1E8(v10);
  return v7;
}

uint64_t sub_10020D958(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  if (!a2)
  {
    sub_1000D660C();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1000D660C();
    goto LABEL_3;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    sub_1000D660C();
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1175, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bnep/bnep_msg.c", 1175, "OI_STATUS RecvResponse(BNEP_CONNECTION *, OI_BYTE_STREAM *, uint8_t, uint8_t *)");
LABEL_19:
    *(a2 + 15) = 1;
    return 411;
  }

  v8 = *(a2 + 12);
  if (*(a2 + 10) - v8 <= 1)
  {
    goto LABEL_19;
  }

  v9 = __rev16(*(*a2 + v8));
  *(a2 + 12) = v8 + 2;
  switch(a3)
  {
    case 6u:
      if (v9)
      {
        v10 = v9 + 2030;
      }

      else
      {
        v10 = 0;
      }

      v11 = a1;
      v12 = 4;
      goto LABEL_28;
    case 4u:
      if (v9)
      {
        v10 = v9 + 2020;
      }

      else
      {
        v10 = 0;
      }

      v11 = a1;
      v12 = 2;
      goto LABEL_28;
    case 2u:
      if (v9)
      {
        v10 = v9 + 2010;
      }

      else
      {
        v10 = 0;
      }

      v11 = a1;
      v12 = 1;
LABEL_28:
      sub_10020BCD0(v11, v12, v10, a4);
      break;
  }

  return 0;
}

unint64_t sub_10020DAAC(_BYTE *a1, unsigned __int8 *a2, unint64_t a3)
{
  result = 2147483649;
  if (!a2)
  {
    return 2147483651;
  }

  if (!a3)
  {
    return 0x80000000;
  }

  v5 = *a2;
  *a1 = v5;
  if (!v5)
  {
    return 0x80000000;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      return 2147483650;
    }

    v5 = 9;
  }

  if (v5 <= a3)
  {
    memcpy(a1 + 1, a2 + 1, v5 - 1);
    return v5;
  }

  return result;
}

void sub_10020DB38(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  memset(v8, 0, 9);
  sub_1000040DC(a1);
  for (i = sub_10020DAAC(v8, v5, a2); !(i >> 31); i = sub_10020DAAC(v8, v5, a2))
  {
    switch(LOBYTE(v8[0]))
    {
      case 3u:
        *(a3 + 9) = 1;
        *(a3 + 12) = *(v8 + 1);
        break;
      case 2u:
        *a3 = *(v8 + 1);
        break;
      case 1u:
        *(a3 + 8) = 1;
        break;
    }

    v5 += i;
    a2 -= i;
  }

  if (i != 0x80000000)
  {
    sub_1000D660C();
    v7 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100813C54(i, v7);
    }
  }
}

uint64_t sub_10020DC44(int a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a1 <= 3)
  {
    if (a1 == 2)
    {
LABEL_10:
      v5 = a3;
      if (a3 >= 4)
      {
        v5 = *(a2 + 2) + 4;
      }

      goto LABEL_16;
    }

    if (a1 != 3)
    {
      goto LABEL_14;
    }

    v5 = a3;
    if (a3 >= 3)
    {
      v5 = *(a2 + 2) + 3;
    }
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 != 243 && a1 != 5)
      {
LABEL_14:
        sub_1000D660C();
        v6 = sub_10000C050(0x3Au);
        v5 = v3;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100813CCC(a1, v3, v6);
          v5 = v3;
        }

        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v5 = a3;
    if (a3 >= 2)
    {
      v5 = *(a2 + 1) + 2;
    }
  }

LABEL_16:
  if (v3 >= v5)
  {
    LOWORD(v3) = v5;
    return v3;
  }

  if (a1 != 2)
  {
    sub_1000D660C();
    v7 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109632;
      v10[1] = a1;
      v11 = 1024;
      v12 = v5;
      v13 = 2048;
      v14 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "applebt_get_hci_packet_length: WARNING! HCI packet length (type=%d, length=%d) is larger than actual packet length(%zu) - truncating!", v10, 0x18u);
    }

    return v3;
  }

  sub_1000C52F4(162);
  return sub_10020DDE8(v9);
}

uint64_t sub_10020DDE8(const char *a1)
{
  if (a1)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
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
    v13 = 0u;
    v14 = 0u;
    *v11 = 0u;
    v12 = 0u;
    __strlcpy_chk();
    __strlcpy_chk();
    __strlcat_chk();
    __strlcat_chk();
    LODWORD(qword_100B5DDB8) = open(v27, 131073);
    if ((qword_100B5DDB8 & 0x80000000) != 0)
    {
      if (sub_10000C240())
      {
        v4 = __error();
        v5 = strerror(*v4);
        sub_10000AF54("open(%s) failed (error = %s)", v27, v5);
        v6 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100813D54();
        }
      }
    }

    else
    {
      HIDWORD(qword_100B5DDB8) = open(v11, 131076);
      if ((qword_100B5DDB8 & 0x8000000000000000) == 0)
      {
        dword_100B5DDC0 = 0;
        dword_100B5DDC4 = 0;
        sub_1001C5D40(&stru_100B5DDC8);
        if (sub_1001C5BA4(&qword_100B5DDF8, sub_10020E1FC, 0))
        {
          sub_1001C5C44(qword_100B5DDF8, 63);
          sub_10022DBDC();
          return 0;
        }

        else
        {
          sub_1000C52F4(104);
          return sub_10020E0D4();
        }
      }

      if (sub_10000C240())
      {
        v7 = __error();
        v8 = strerror(*v7);
        sub_10000AF54("open(%s) failed (error = %s)", v11, v8);
        v9 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100813D54();
        }
      }

      close(qword_100B5DDB8);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("failed to open %s", a1);
      v10 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100813DD4();
      }
    }

    return 1201;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Need to know what VirtualCTRL to open, options cannot be NULL");
      v3 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100813DD4();
      }
    }

    return 114;
  }
}

uint64_t sub_10020E0D4()
{
  if (qword_100B5DDB8)
  {
    dword_100B5DDC0 = 1;
    close(SHIDWORD(qword_100B5DDB8));
    close(qword_100B5DDB8);
    while (!dword_100B5DDC4)
    {
      sub_1000B9C80(&stru_100B5DDC8);
    }

    sub_1001C5D64(&stru_100B5DDC8);
    qword_100B5DDB8 = 0;
  }

  return 0;
}

uint64_t sub_10020E164(char *__buf, int a2)
{
  if (!a2)
  {
    return 625;
  }

  v2 = a2;
  while (1)
  {
    v4 = write(qword_100B5DDB8, __buf, v2);
    if (v4 < 0)
    {
      break;
    }

    __buf += v4 & 0x7FFFFFFF;
    v2 -= v4;
    if (!v2)
    {
      return 625;
    }
  }

  v6 = __error();
  v7 = strerror(*v6);
  sub_100304AF8("VirtualCTRL write failed: %s", v7);
  return 1205;
}

uint64_t sub_10020E1FC()
{
  sub_1001C5D20("RxLoopVirtual");
  memset(&v8, 0, sizeof(v8));
  v0 = HIDWORD(qword_100B5DDB8);
  if (__darwin_check_fd_set_overflow(SHIDWORD(qword_100B5DDB8), &v8, 0))
  {
    *(v8.fds_bits + ((v0 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v0;
  }

  v1 = 4096;
  while (1)
  {
    v7 = v8;
    v2 = select(HIDWORD(qword_100B5DDB8) + 1, &v7, 0, 0, 0);
    if (!v2)
    {
      break;
    }

    if (v2 >= 1)
    {
      v3 = v1 >= 4096 ? 4096 : v1;
      if (read(SHIDWORD(qword_100B5DDB8), &unk_100B5DE00, v3) >= 1)
      {
        sub_1000031B0();
        v1 = sub_10022DBEC();
        sub_10000C198();
        if (!dword_100B5DDC0)
        {
          continue;
        }
      }
    }

    goto LABEL_13;
  }

  sub_1000D660C();
LABEL_13:
  if (dword_100B5DDC0)
  {
    sub_1000031B0();
    dword_100B5DDC4 = 1;
    j__pthread_cond_signal(&stru_100B5DDC8);
    sub_10000C198();
  }

  else
  {
    v4 = __error();
    v5 = strerror(*v4);
    sub_100304AF8("VirtualCTRL read failed: %s\n", v5);
  }

  return 0;
}

uint64_t sub_10020E384(__int16 *a1, unsigned int *a2)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  if (*a1 == -1)
  {
    sub_1000D660C();
    if (*a1 == -1)
    {
      return 101;
    }
  }

  if (a1[4] - 1 >= 2)
  {
    sub_1000D660C();
    if (a1[4] - 1 > 1)
    {
      return 101;
    }
  }

  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v4 = qword_100B5EE00;
  v5 = *(a1 + 3) != 0;
  if (*(a1 + 4))
  {
    ++v5;
  }

  if (*(a1 + 5))
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = (v6 + 10);
  v8 = sub_100007618(176 * v7, 0x10F20402C0286E3uLL);
  if (v8)
  {
    v9 = v8;
    v10 = sub_100007618(24 * v7, 0x10F20406C095635uLL);
    if (v10)
    {
      v11 = v10;
      v12 = sub_100007618(8uLL, 0x100004000313F17uLL);
      ptr = v12;
      if (v12)
      {
        v48 = a2;
        *v12 = *(a1 + 2);
        *v9 = 1;
        v9[1] = 2;
        *(v9 + 2) = *a1;
        *(v9 + 16) = 1;
        v9[9] = 2;
        *(v9 + 6) = a1[1];
        *(v9 + 32) = 1;
        v9[17] = 2;
        *(v9 + 10) = a1[2];
        *(v9 + 48) = 5;
        v9[25] = 1;
        *(v9 + 56) = *(a1 + 6);
        *(v9 + 64) = 1;
        v9[33] = 2;
        *(v9 + 18) = a1[4];
        *(v9 + 128) = 1;
        v9[65] = 4;
        *(v9 + 34) = *(a1 + 3);
        *(v9 + 144) = 1;
        v9[73] = 2;
        *(v9 + 38) = a1[5];
        *(v9 + 160) = 1;
        v9[81] = 8;
        *(v9 + 21) = v12;
        *(v11 + 2) = &unk_1008A38A0;
        *v11 = xmmword_100AE6ED8;
        *(v11 + 5) = 258;
        *(v11 + 24) = unk_100AE6EF0;
        *(v11 + 24) = 513;
        *(v11 + 56) = *v9;
        *(v11 + 36) = 514;
        *(v11 + 5) = *(v9 + 1);
        *(v11 + 48) = 515;
        *(v11 + 104) = *(v9 + 2);
        *(v11 + 60) = 516;
        *(v11 + 8) = *(v9 + 3);
        *(v11 + 72) = 517;
        *(v11 + 152) = *(v9 + 4);
        *(v11 + 84) = -24576;
        *(v11 + 11) = *(v9 + 8);
        *(v11 + 96) = -20481;
        *(v11 + 200) = *(v9 + 9);
        *(v11 + 108) = -24575;
        *(v11 + 14) = *(v9 + 10);
        v13 = *(a1 + 3);
        if (v13)
        {
          *(v9 + 80) = 8;
          v9[41] = strlen(v13);
          *(v9 + 11) = v13;
          v14 = 11;
          *(v11 + 120) = 11;
          *(v11 + 248) = *(v9 + 5);
        }

        else
        {
          v14 = 10;
        }

        v21 = *(a1 + 4);
        if (v21)
        {
          *(v9 + 96) = 4;
          v9[49] = strlen(v21);
          *(v9 + 13) = v21;
          v22 = &v11[24 * v14];
          *v22 = 257;
          *(v22 + 8) = *(v9 + 6);
          ++v14;
        }

        v23 = *(a1 + 5);
        if (v23)
        {
          *(v9 + 112) = 8;
          v9[57] = strlen(v23);
          *(v9 + 15) = v23;
          v24 = &v11[24 * v14];
          *v24 = 10;
          *(v24 + 8) = *(v9 + 7);
        }

        *&v55 = v11;
        WORD4(v55) = 10;
        *&v56 = v11 + 240;
        WORD4(v56) = v6;
        sub_1002F7E1C(&v55, &v54);
        v52 = 0u;
        v53 = 0u;
        v25 = (v6 + 9);
        v26 = 176 * v25;
        v27 = sub_100007618(v26, 0x10F20402C0286E3uLL);
        if (v27)
        {
          v28 = v27;
          size = 24 * v25;
          v29 = sub_100007618(24 * v25, 0x10F20406C095635uLL);
          if (v29)
          {
            v30 = v29;
            *v28 = 1;
            v28[1] = 2;
            *(v28 + 2) = *a1;
            *(v28 + 16) = 1;
            v28[9] = 2;
            *(v28 + 6) = a1[1];
            *(v28 + 32) = 1;
            v28[17] = 2;
            *(v28 + 10) = a1[2];
            *(v28 + 48) = 5;
            v28[25] = 1;
            *(v28 + 56) = *(a1 + 6);
            *(v28 + 64) = 1;
            v28[33] = 2;
            *(v28 + 18) = a1[4];
            *(v28 + 128) = 1;
            v28[65] = 4;
            *(v28 + 34) = *(a1 + 3);
            *(v28 + 144) = 1;
            v28[73] = 2;
            *(v28 + 38) = a1[5];
            *v29 = xmmword_100AE6ED8;
            *(v29 + 2) = &unk_1008A38A0;
            *(v29 + 5) = 258;
            *(v29 + 24) = unk_100AE6EF0;
            *(v29 + 24) = 513;
            *(v29 + 56) = *v28;
            *(v29 + 36) = 514;
            *(v29 + 5) = *(v28 + 1);
            *(v29 + 48) = 515;
            *(v29 + 104) = *(v28 + 2);
            *(v29 + 60) = 516;
            *(v29 + 8) = *(v28 + 3);
            *(v29 + 72) = 517;
            *(v29 + 152) = *(v28 + 4);
            *(v29 + 84) = -24576;
            *(v29 + 11) = *(v28 + 8);
            *(v29 + 96) = -20481;
            *(v29 + 200) = *(v28 + 9);
            v31 = *(a1 + 3);
            if (v31)
            {
              *(v28 + 80) = 8;
              v28[41] = strlen(v31);
              *(v28 + 11) = v31;
              v30[108] = 11;
              *(v30 + 14) = *(v28 + 5);
            }

            v32 = *(a1 + 4);
            if (v32)
            {
              *(v28 + 96) = 4;
              v28[49] = strlen(v32);
              *(v28 + 13) = v32;
              v30[108] = 257;
              *(v30 + 14) = *(v28 + 6);
            }

            v33 = *(a1 + 5);
            if (v33)
            {
              *(v28 + 112) = 8;
              v28[57] = strlen(v33);
              *(v28 + 15) = v33;
              v30[108] = 10;
              *(v30 + 14) = *(v28 + 7);
            }

            *&v52 = v30;
            WORD4(v52) = 9;
            *&v53 = v30 + 108;
            WORD4(v53) = v6;
            v15 = sub_1002F8134(v54, &v52);
            if (!_os_feature_enabled_impl())
            {
              v19 = 0;
              v18 = 0;
LABEL_75:
              if (v15)
              {
                goto LABEL_58;
              }

              v41 = sub_100007618(0x40uLL, 0x10A004061ABD173uLL);
              if (v41)
              {
                v42 = v41;
                *v41 = 0;
                v41[2] = v54;
                *(v41 + 2) = v9;
                *(v41 + 3) = v11;
                *(v41 + 4) = v28;
                *(v41 + 5) = v30;
                if (_os_feature_enabled_impl())
                {
                  v42[6] = v19;
                  v42[7] = v18;
                }

                if (v4)
                {
                  do
                  {
                    v43 = v4;
                    v4 = *v4;
                  }

                  while (v4);
                }

                else
                {
                  v43 = &qword_100B5EE00;
                }

                *v43 = v42;
                v15 = 0;
                if (v48)
                {
                  *v48 = v54;
                }

                return v15;
              }

              if (sub_10000C240())
              {
                sub_10000AF54("Device Identification Record: out of memory");
                v46 = sub_10000C050(0x3Du);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

LABEL_57:
              v15 = 106;
LABEL_58:
              sub_10000C1E8(v9);
              sub_10000C1E8(v11);
              if (ptr)
              {
                sub_10000C1E8(ptr);
              }

              if (v30)
              {
                sub_10000C1E8(v30);
              }

              if (v28)
              {
                sub_10000C1E8(v28);
              }

              goto LABEL_64;
            }

            v50 = 0u;
            v51 = 0u;
            v19 = sub_100007618(v26, 0x10F20402C0286E3uLL);
            if (v19)
            {
              v34 = sub_100007618(size, 0x10F20406C095635uLL);
              if (v34)
              {
                v18 = v34;
                *v19 = 1;
                v19[1] = 2;
                *(v19 + 2) = *a1;
                *(v19 + 16) = 1;
                v19[9] = 2;
                *(v19 + 6) = a1[1];
                *(v19 + 32) = 1;
                v19[17] = 2;
                *(v19 + 10) = a1[2];
                *(v19 + 48) = 5;
                v19[25] = 1;
                *(v19 + 56) = *(a1 + 6);
                *(v19 + 64) = 1;
                v19[33] = 2;
                *(v19 + 18) = a1[4];
                *(v19 + 128) = 1;
                v19[65] = 4;
                *(v19 + 34) = *(a1 + 3);
                *(v19 + 144) = 1;
                v19[73] = 2;
                *(v19 + 38) = a1[5];
                *v34 = xmmword_100AE6F08;
                *(v34 + 2) = &unk_1008A38A0;
                *(v34 + 5) = 259;
                *(v34 + 24) = unk_100AE6F20;
                *(v34 + 24) = 513;
                *(v34 + 56) = *v19;
                *(v34 + 36) = 514;
                *(v34 + 5) = *(v19 + 1);
                *(v34 + 48) = 515;
                *(v34 + 104) = *(v19 + 2);
                *(v34 + 60) = 516;
                *(v34 + 8) = *(v19 + 3);
                *(v34 + 72) = 517;
                *(v34 + 152) = *(v19 + 4);
                *(v34 + 84) = -24576;
                *(v34 + 11) = *(v19 + 8);
                *(v34 + 96) = -20481;
                *(v34 + 200) = *(v19 + 9);
                v35 = *(a1 + 3);
                if (v35)
                {
                  *(v19 + 80) = 8;
                  v19[41] = strlen(v35);
                  *(v19 + 11) = v35;
                  v18[108] = 11;
                  *(v18 + 14) = *(v19 + 5);
                }

                v36 = *(a1 + 4);
                if (v36)
                {
                  *(v19 + 96) = 4;
                  v19[49] = strlen(v36);
                  *(v19 + 13) = v36;
                  v18[108] = 257;
                  *(v18 + 14) = *(v19 + 6);
                }

                v37 = *(a1 + 5);
                if (v37)
                {
                  *(v19 + 112) = 8;
                  v19[57] = strlen(v37);
                  *(v19 + 15) = v37;
                  v18[108] = 10;
                  *(v18 + 14) = *(v19 + 7);
                }

                *&v50 = v18;
                WORD4(v50) = 9;
                *&v51 = v18 + 108;
                WORD4(v51) = v6;
                v15 = sub_1002F8134(v54, &v50);
                goto LABEL_75;
              }

              if (!sub_10000C240() || (sub_10000AF54("Device Identification Record: out of memory"), v45 = sub_10000C050(0x3Du), !os_log_type_enabled(v45, OS_LOG_TYPE_ERROR)))
              {
LABEL_88:
                v18 = 0;
                goto LABEL_57;
              }
            }

            else
            {
              if (!sub_10000C240())
              {
                goto LABEL_88;
              }

              sub_10000AF54("Device Identification Record: out of memory", size);
              v44 = sub_10000C050(0x3Du);
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }
            }

            sub_10080F7A0();
            goto LABEL_88;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Device Identification Record: out of memory", size);
            v40 = sub_10000C050(0x3Du);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v19 = 0;
          v18 = 0;
LABEL_56:
          v30 = 0;
          goto LABEL_57;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Device Identification Record: out of memory");
          v38 = sub_10000C050(0x3Du);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Device Supported Extended Features: out of memory");
        v20 = sub_10000C050(0x3Du);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v19 = 0;
      v18 = 0;
      v28 = 0;
      goto LABEL_56;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Device Identification Record: out of memory");
      v17 = sub_10000C050(0x3Du);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10000C1E8(v9);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Device Identification Record: out of memory");
    v16 = sub_10000C050(0x3Du);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v18 = 0;
  v19 = 0;
  v15 = 106;
LABEL_64:
  if (_os_feature_enabled_impl())
  {
    if (v18)
    {
      sub_10000C1E8(v18);
    }

    if (v19)
    {
      sub_10000C1E8(v19);
    }
  }

  return v15;
}

uint64_t sub_10020EE54(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1002F8018(a1);
  if (!v2)
  {
    v3 = qword_100B5EE00;
    if (qword_100B5EE00)
    {
      if (*(qword_100B5EE00 + 8) == v1)
      {
        sub_10000C1E8(*(qword_100B5EE00 + 16));
        sub_10000C1E8(v3[3]);
        sub_10000C1E8(v3[4]);
        sub_10000C1E8(v3[5]);
        v4 = &qword_100B5EE00;
        v5 = v3;
        if (_os_feature_enabled_impl())
        {
LABEL_10:
          sub_10000C1E8(v3[6]);
          sub_10000C1E8(v3[7]);
        }

        else
        {
          v5 = v3;
        }

LABEL_12:
        *v4 = *v5;
        sub_10000C1E8(v5);
      }

      else
      {
        v5 = qword_100B5EE00;
        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          if (*(v5 + 2) == v1)
          {
            sub_10000C1E8(v5[2]);
            sub_10000C1E8(v5[3]);
            sub_10000C1E8(v3[4]);
            sub_10000C1E8(v3[5]);
            v4 = v3;
            if (_os_feature_enabled_impl())
            {
              goto LABEL_10;
            }

            v4 = v3;
            goto LABEL_12;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_10020EF6C(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  if (!a5)
  {
    return 101;
  }

  v9 = a3;
  result = sub_1002158A4(a1, a2, a3, sub_10020F0B0, 1018, 0);
  if (!result)
  {
    sub_100215864(1);
    qword_100B5EE08 = sub_1001BBBD8(0x678uLL, 0x10B0040C090A76FuLL);
    if (qword_100B5EE08)
    {
      if (*(sub_1003045A0(0x10u) + 4))
      {
        v11 = *(sub_1003045A0(0x10u) + 4);
      }

      else
      {
        v11 = 100;
      }

      *(qword_100B5EE08 + 1634) = v11;
      if (*(sub_1003045A0(0x10u) + 6))
      {
        v12 = *(sub_1003045A0(0x10u) + 6);
      }

      else
      {
        v12 = 32;
      }

      v13 = 0;
      v14 = qword_100B5EE08;
      *(qword_100B5EE08 + 1632) = v12;
      *(v14 + 1608) = a5;
      *(v14 + 1639) = 0;
      *(v14 + 1616) = 0u;
      *(v14 + 1640) = a6;
      *(v14 + 1636) = v9;
      *(v14 + 1641) = 0;
      *(v14 + 1643) = 0;
      *(v14 + 1648) = a4;
      *(v14 + 1644) = 0;
      do
      {
        *(v14 + v13) = -1;
        v13 += 200;
      }

      while (v13 != 1600);
      return 0;
    }

    else
    {
      sub_100215E78();
      return 106;
    }
  }

  return result;
}

void sub_10020F0B0(uint64_t a1)
{
  v2 = (a1 + 4);
  v3 = sub_10020F83C(*(a1 + 4));
  v4 = qword_100B5EE08;
  if (!qword_100B5EE08)
  {
    return;
  }

  v5 = *a1;
  if (*a1 <= 2)
  {
    if (v5 == 1)
    {
      if (!*(a1 + 16))
      {
        v20[0] = 0;
        if (v3 == 8)
        {
          v3 = sub_100211B18(*(a1 + 4), *(a1 + 8));
          if (v3 == 8)
          {
            sub_1000D660C();
            return;
          }

          v4 = qword_100B5EE08;
        }

        v20[1] = v2;
        LOWORD(v20[0]) = 2;
        v17 = sub_10002195C(sub_100212510, v20, 600, (v4 + 200 * v3 + 8));
        if (v17)
        {
          v18 = v17;
          if (sub_10000C240())
          {
            sub_10000AF54("Register SLC timeout handler failed %!\n", v18);
            v19 = sub_10000C050(0x10u);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }

        return;
      }
    }

    else if (v5 == 2)
    {
      v10 = qword_100B5EE08 + 200 * v3;
      if (*(v10 + 4) == 1814 || *(v10 + 8))
      {
        *a1 = 1;
        *(a1 + 8) = v4 + 200 * v3 + 80;
        *(a1 + 16) = 1814;
      }

      (*(v4 + 1608))(a1);
      v11 = *(a1 + 4);

      sub_100211D2C(v11);
      return;
    }

LABEL_30:
    v16 = *(qword_100B5EE08 + 1608);

    v16(a1);
    return;
  }

  if (v5 == 3)
  {
    if ((*(qword_100B5EE08 + 1636) & 0x200) != 0 && (*(qword_100B5EE08 + 200 * v3 + 86) & 0x80) != 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("1.6 devices should not send SCO connection but +BCC.");
        v12 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_100216684(*v2, 0);
      return;
    }

    goto LABEL_30;
  }

  if (v5 != 5)
  {
    if (v5 == 7)
    {
      v6 = sub_1001F0C88(qword_100B5EE08 + 200 * v3 + 96, *(a1 + 8), *(a1 + 16));
      if (v6)
      {
        v7 = sub_10020F948(*v2, v6);
        if (v7)
        {
          v8 = v7;
          v9 = *v2;

          sub_100212578(v9, 2, v8);
        }
      }

      return;
    }

    goto LABEL_30;
  }

  (*(qword_100B5EE08 + 1608))(a1);
  v13 = *(qword_100B5EE08 + 1624);
  if (v13)
  {
    *(qword_100B5EE08 + 1624) = 0;
    v14 = *(a1 + 4);
    v15 = *(a1 + 8);

    v13(v14, v15);
  }
}

uint64_t sub_10020F38C()
{
  if (sub_1000D88C8() && *(qword_100B5EE08 + 1616))
  {
    *(qword_100B5EE08 + 1616) = 0;
  }

  v0 = sub_100215E78();
  if (!v0 && qword_100B5EE08)
  {
    sub_10000C1E8(qword_100B5EE08);
    qword_100B5EE08 = 0;
  }

  return v0;
}

uint64_t sub_10020F3E4(__int16 a1)
{
  if (!qword_100B5EE08)
  {
    return 408;
  }

  result = 0;
  *(qword_100B5EE08 + 1636) = a1;
  return result;
}

uint64_t sub_10020F408(char a1)
{
  if (!qword_100B5EE08)
  {
    return 408;
  }

  result = 0;
  *(qword_100B5EE08 + 1638) = a1 | 6;
  return result;
}

uint64_t sub_10020F430(uint64_t a1, char a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  v4 = qword_100B5EE08;
  if (*(qword_100B5EE08 + 1616))
  {
    return 119;
  }

  result = 0;
  *(qword_100B5EE08 + 1616) = a1;
  *(v4 + 1639) = a2;
  return result;
}

uint64_t sub_10020F488(uint64_t a1, const void *a2, size_t a3)
{
  v6 = sub_1000D88C8();
  result = 408;
  if (v6 && qword_100B5EE08)
  {
    v8 = sub_100007618(a3 + 1, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      memmove(v8, a2, a3);
      v9[a3] = 0;

      return sub_10020F54C(a1, 25, v9, a3, 1);
    }

    else
    {
      return 106;
    }
  }

  return result;
}

uint64_t sub_10020F54C(uint64_t a1, uint64_t a2, char *a3, size_t a4, int a5)
{
  v10 = sub_10020F83C(a1);
  if (v10 == 8)
  {
    return 1802;
  }

  v12 = v10;
  v13 = v10;
  v14 = qword_100B5EE08 + 200 * v10;
  if (*(v14 + 16))
  {
    if (*(v14 + 56) >= *(qword_100B5EE08 + 1632))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SendResponse failed: pending responses queue is full (%d)!\n", *(qword_100B5EE08 + 200 * v13 + 56));
        v19 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v11 = 104;
    }

    else
    {
      v15 = sub_100007618(0x28uLL, 0x10300406BE866E8uLL);
      if (v15)
      {
        *v15 = a2;
        v15[1] = a3;
        *(v15 + 8) = a4;
        *(v15 + 18) = a5;
        sub_1003051F4(v15 + 3, qword_100B5EE08 + 200 * v13 + 64);
        v11 = 0;
        ++*(qword_100B5EE08 + 200 * v13 + 56);
        return v11;
      }

      v11 = 106;
    }
  }

  else
  {
    if (a5)
    {
      v16 = sub_100212804;
    }

    else
    {
      v16 = sub_100212810;
    }

    v11 = sub_100216AC0(a1, v16, a3, a4);
    v17 = qword_100B5EE08;
    v18 = qword_100B5EE08 + 200 * v13;
    if (!v11)
    {
      *(v18 + 16) = a2;
      v20 = v17 + 200 * v13;
      *(v20 + 24) = a3;
      *(v20 + 32) = a4;
      *(v20 + 34) = a5;
      return v11;
    }

    *(v18 + 16) = 0;
  }

  if (!sub_10000C240() || (sub_10000AF54("SendResponse failed %!, type %d", v11, a2), v21 = sub_10000C050(0x10u), !os_log_type_enabled(v21, OS_LOG_TYPE_ERROR)))
  {
    if (!a5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  sub_10080F604();
  if (a5)
  {
LABEL_21:
    sub_10000C1E8(a3);
  }

LABEL_22:
  if (v11 == 104)
  {
    if (sub_1002165D4(a1, 104))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HandsfreeAG_Disconnect failed");
        v22 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    sub_10021281C(v12);
    return 104;
  }

  return v11;
}

uint64_t sub_10020F7D0(uint64_t a1)
{
  v1 = a1;
  if (!sub_1000D88C8())
  {
    return 408;
  }

  v2 = sub_10020F83C(v1);
  if (dword_100BCE270)
  {
    v3 = v2 == 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return *(qword_100B5EE08 + 200 * v2 + 86);
  }
}

uint64_t sub_10020F83C(int a1)
{
  v2 = qword_100B5EE08;
  if (qword_100B5EE08)
  {
    for (i = 0; i != 8; ++i)
    {
      v4 = *v2;
      v2 += 100;
      if (v4 == a1)
      {
        break;
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("agThis null. Can't find a cooked device for handle %d", a1);
      v5 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    LOBYTE(i) = 8;
  }

  return i;
}

uint64_t sub_10020F8DC(int a1)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  v2 = sub_10020F83C(a1);
  if (dword_100BCE270)
  {
    v3 = v2 == 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return *(qword_100B5EE08 + 200 * v2 + 88);
  }
}

uint64_t sub_10020F948(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 - 2707) <= 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Extended error specified without extended error code %d\n", v2);
      v4 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v2 = 2701;
  }

  return sub_10020F9D8(a1, v2);
}

uint64_t sub_10020F9D8(uint64_t a1, int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if ((a2 - 2707) > 1)
  {
    if ((a2 - 2707) < 0xFFFFFFFA)
    {
      v6 = 1;
    }

    else
    {
      v6 = (a2 - 2700);
    }

    if (!a2)
    {
      v6 = 0;
    }
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    v4 = qword_100B5EE08;
    v5 = 8;
    v6 = 1;
    while (*v4 != a1)
    {
      v4 += 100;
      if (!--v5)
      {
        goto LABEL_14;
      }
    }

    if (*(v4 + 136))
    {
      v7 = sub_100307404(v14, 0x1BuLL);
      if (!v7)
      {
        if (a2 == 2707)
        {
          v11 = sub_1003078F4(v14, "\r\n+CME ERROR: %d\r\n");
        }

        else
        {
          v11 = sub_1003078F4(v14, "\r\n+CMS ERROR: %d\r\n");
        }

        if (v11)
        {
          v7 = v11;
          sub_10030745C(v14);
        }

        else
        {
          v12 = sub_100307920(v14);
          v13 = strlen(v12);
          return sub_10020F54C(a1, 2, v12, v13, 1);
        }
      }

      return v7;
    }

    v6 = 1;
  }

LABEL_14:
  v9 = off_100AE6F38[v6];
  v10 = strlen(v9);

  return sub_10020F54C(a1, 2, v9, v10, 0);
}

uint64_t sub_10020FB48(uint64_t a1, unsigned int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (a2 > 0xF)
  {
    return 101;
  }

  if ((sub_10020F7D0(a1) & 0x10) == 0)
  {
    return 1808;
  }

  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100307404(v9, 0xCuLL);
  if (!v4)
  {
    v6 = sub_1003078F4(v9, "\r\n+VGM=%d\r\n", a2);
    if (v6)
    {
      v4 = v6;
      sub_10030745C(v9);
    }

    else
    {
      v7 = sub_100307920(v9);
      v8 = strlen(v7);
      return sub_10020F54C(a1, 7, v7, v8, 1);
    }
  }

  return v4;
}

uint64_t sub_10020FC20(uint64_t a1, unsigned int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (a2 > 0xF)
  {
    return 101;
  }

  if ((sub_10020F7D0(a1) & 0x10) == 0)
  {
    return 1808;
  }

  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100307404(v9, 0xCuLL);
  if (!v4)
  {
    v6 = sub_1003078F4(v9, "\r\n+VGS=%d\r\n", a2);
    if (v6)
    {
      v4 = v6;
      sub_10030745C(v9);
    }

    else
    {
      v7 = sub_100307920(v9);
      v8 = strlen(v7);
      return sub_10020F54C(a1, 8, v7, v8, 1);
    }
  }

  return v4;
}

uint64_t sub_10020FCF8(uint64_t a1, int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  *(qword_100B5EE08 + 1641) = a2;
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  v6 = 8;
  v7 = qword_100B5EE08;
  v8 = qword_100B5EE08;
  while (*v8 != a1)
  {
    v8 += 100;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  if (*(v8 + 140) == 2)
  {
    return 117;
  }

LABEL_11:
  v9 = 8;
  while (*v7 != a1)
  {
    v7 += 100;
    if (!--v9)
    {
      return 0;
    }
  }

  if (*(v7 + 140) != 1 || *(qword_100B5EE08 + 200 * v4 + 192) != 1)
  {
    return 0;
  }

  if (a2)
  {
    v10 = "\r\n+CIEV: 1,1\r\n";
  }

  else
  {
    v10 = "\r\n+CIEV: 1,0\r\n";
  }

  LODWORD(result) = sub_10020F54C(a1, 9, v10, 0xEuLL, 0);
  if (result == 408)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10020FE14(uint64_t a1, int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  *(qword_100B5EE08 + 1642) = a2;
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  v6 = 8;
  v7 = qword_100B5EE08;
  v8 = qword_100B5EE08;
  while (*v8 != a1)
  {
    v8 += 100;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  if (*(v8 + 140) == 2)
  {
    return 117;
  }

LABEL_11:
  v9 = 8;
  while (*v7 != a1)
  {
    v7 += 100;
    if (!--v9)
    {
      return 0;
    }
  }

  if (*(v7 + 140) != 1)
  {
    return 0;
  }

  v10 = qword_100B5EE08 + 200 * v4;
  v12 = *(v10 + 160);
  v11 = (v10 + 160);
  if (v12 == a2)
  {
    return 0;
  }

  *v11 = a2;
  if (a2)
  {
    v13 = "\r\n+CIEV: 2,1\r\n";
  }

  else
  {
    v13 = "\r\n+CIEV: 2,0\r\n";
  }

  LODWORD(result) = sub_10020F54C(a1, 10, v13, 0xEuLL, 0);
  if (result == 408)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10020FF34(uint64_t a1, unsigned int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (a2 > 4)
  {
    return 101;
  }

  *(qword_100B5EE08 + 1643) = a2;
  v6 = sub_10020F83C(a1);
  if (v6 == 8)
  {
    return 1802;
  }

  v18[0] = 0;
  v18[1] = 0;
  v7 = 8;
  v8 = qword_100B5EE08;
  v9 = qword_100B5EE08;
  while (*v9 != a1)
  {
    v9 += 100;
    if (!--v7)
    {
      goto LABEL_14;
    }
  }

  if (*(v9 + 140) == 2)
  {
    return 117;
  }

LABEL_14:
  v10 = 8;
  while (*v8 != a1)
  {
    v8 += 100;
    if (!--v10)
    {
      return 0;
    }
  }

  if (*(v8 + 140) != 1)
  {
    return 0;
  }

  v11 = qword_100B5EE08 + 200 * v6;
  v13 = *(v11 + 161);
  v12 = (v11 + 161);
  if (v13 == a2)
  {
    return 0;
  }

  *v12 = a2;
  v4 = sub_100307404(v18, 0xFuLL);
  if (!v4)
  {
    v14 = sub_1003078F4(v18, "\r\n+CIEV: 3,%c\r\n", a2 | 0x30);
    if (v14)
    {
      v4 = v14;
      sub_10030745C(v18);
    }

    else
    {
      v15 = sub_100307920(v18);
      v16 = strlen(v15);
      v17 = sub_10020F54C(a1, 11, v15, v16, 1);
      if (v17 == 408)
      {
        return 0;
      }

      else
      {
        return v17;
      }
    }
  }

  return v4;
}

uint64_t sub_1002100B0(uint64_t a1, unsigned int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if ((*(qword_100B5EE08 + 1636) & 1) == 0)
  {
    return 1808;
  }

  if (a2 > 2)
  {
    return 101;
  }

  *(qword_100B5EE08 + 1644) = a2;
  v6 = sub_10020F83C(a1);
  if (v6 == 8)
  {
    return 1802;
  }

  v7 = v6;
  v19[0] = 0;
  v19[1] = 0;
  v8 = 8;
  v9 = qword_100B5EE08;
  while (*v9 != a1)
  {
    v9 += 100;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  if (*(v9 + 140) == 2)
  {
    return 117;
  }

LABEL_16:
  if ((sub_10020F7D0(a1) & 2) == 0)
  {
    return 1808;
  }

  v10 = 8;
  for (i = qword_100B5EE08; *i != a1; i += 100)
  {
    v4 = 0;
    if (!--v10)
    {
      return v4;
    }
  }

  if (*(i + 140) != 1)
  {
    return 0;
  }

  v12 = qword_100B5EE08 + 200 * v7;
  v14 = *(v12 + 162);
  v13 = (v12 + 162);
  if (!(v14 | a2))
  {
    return 0;
  }

  *v13 = a2;
  v4 = sub_100307404(v19, 0xFuLL);
  if (!v4)
  {
    v15 = sub_1003078F4(v19, "\r\n+CIEV: 7,%c\r\n", a2 | 0x30);
    if (v15)
    {
      v4 = v15;
      sub_10030745C(v19);
    }

    else
    {
      v16 = sub_100307920(v19);
      v17 = strlen(v16);
      v18 = sub_10020F54C(a1, 15, v16, v17, 1);
      if (v18 == 408)
      {
        return 0;
      }

      else
      {
        return v18;
      }
    }
  }

  return v4;
}

uint64_t sub_100210250(uint64_t a1, unsigned int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (a2 > 5)
  {
    return 101;
  }

  *(qword_100B5EE08 + 1645) = a2;
  v6 = sub_10020F83C(a1);
  if (v6 == 8)
  {
    return 1802;
  }

  v13[0] = 0;
  v13[1] = 0;
  v7 = 8;
  for (i = qword_100B5EE08; *i != a1; i += 100)
  {
    if (!--v7)
    {
      return 0;
    }
  }

  if (*(i + 140) != 1 || *(qword_100B5EE08 + 200 * v6 + 195) != 1)
  {
    return 0;
  }

  v4 = sub_100307404(v13, 0xFuLL);
  if (!v4)
  {
    v9 = sub_1003078F4(v13, "\r\n+CIEV: 4,%d\r\n", a2);
    if (v9)
    {
      v4 = v9;
      sub_10030745C(v13);
    }

    else
    {
      v10 = sub_100307920(v13);
      v11 = strlen(v10);
      v12 = sub_10020F54C(a1, 12, v10, v11, 1);
      if (v12 == 408)
      {
        return 0;
      }

      else
      {
        return v12;
      }
    }
  }

  return v4;
}

uint64_t sub_10021038C(uint64_t a1, unsigned int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (a2 > 5)
  {
    return 101;
  }

  *(qword_100B5EE08 + 1646) = a2;
  v6 = sub_10020F83C(a1);
  if (v6 == 8)
  {
    return 1802;
  }

  v15[0] = 0;
  v15[1] = 0;
  v7 = 8;
  v8 = qword_100B5EE08;
  v9 = qword_100B5EE08;
  while (*v9 != a1)
  {
    v9 += 100;
    if (!--v7)
    {
      goto LABEL_14;
    }
  }

  if (*(v9 + 140) == 2)
  {
    return 117;
  }

LABEL_14:
  v10 = 8;
  while (*v8 != a1)
  {
    v8 += 100;
    if (!--v10)
    {
      return 0;
    }
  }

  if (*(v8 + 140) != 1 || *(qword_100B5EE08 + 200 * v6 + 193) != 1)
  {
    return 0;
  }

  v4 = sub_100307404(v15, 0xFuLL);
  if (!v4)
  {
    v11 = sub_1003078F4(v15, "\r\n+CIEV: 5,%d\r\n", a2);
    if (v11)
    {
      v4 = v11;
      sub_10030745C(v15);
    }

    else
    {
      v12 = sub_100307920(v15);
      v13 = strlen(v12);
      v14 = sub_10020F54C(a1, 13, v12, v13, 1);
      if (v14 == 408)
      {
        return 0;
      }

      else
      {
        return v14;
      }
    }
  }

  return v4;
}

uint64_t sub_100210500(uint64_t a1, int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  *(qword_100B5EE08 + 1647) = a2;
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  v6 = 8;
  v7 = qword_100B5EE08;
  v8 = qword_100B5EE08;
  while (*v8 != a1)
  {
    v8 += 100;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  if (*(v8 + 140) == 2)
  {
    return 117;
  }

LABEL_11:
  v9 = 8;
  while (*v7 != a1)
  {
    v7 += 100;
    if (!--v9)
    {
      return 0;
    }
  }

  if (*(v7 + 140) != 1 || *(qword_100B5EE08 + 200 * v4 + 194) != 1)
  {
    return 0;
  }

  if (a2)
  {
    v10 = "\r\n+CIEV: 6,1\r\n";
  }

  else
  {
    v10 = "\r\n+CIEV: 6,0\r\n";
  }

  LODWORD(result) = sub_10020F54C(a1, 14, v10, 0xEuLL, 0);
  if (result == 408)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10021061C(uint64_t a1)
{
  v2 = sub_10020F83C(a1);
  if (v2 == 8)
  {
    return 1802;
  }

  v4 = v2;
  v5 = *(qword_100B5EE08 + 200 * v2 + 152);
  v6 = strlen(v5);
  result = sub_10020F54C(a1, 16, v5, v6, 1);
  *(qword_100B5EE08 + 200 * v4 + 152) = 0;
  return result;
}

uint64_t sub_1002106A4(uint64_t a1, const char *a2, uint64_t a3, const char *a4, int a5)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (a2)
  {
    v9 = strlen(a2);
    if (v9 <= 32)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_7:
  v11 = strlen(a4);
  if (v11 <= 128)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:
  v25[0] = 0;
  v25[1] = 0;
  v13 = sub_100307404(v25, (v10 + v12 + 29));
  if (!v13)
  {
    if (v10 < 1 || (sub_10020F7D0(a1) & 4) == 0)
    {
      goto LABEL_23;
    }

    v14 = qword_100B5EE08;
    v15 = 8;
    while (*v14 != a1)
    {
      v14 += 100;
      if (!--v15)
      {
        goto LABEL_23;
      }
    }

    if (*(v14 + 132))
    {
      if (v12 < 1)
      {
        v16 = sub_1003078F4(v25, "\r\nRING\r\n\r\n+CLIP: %s,%d\r\n");
      }

      else
      {
        v16 = sub_1003078F4(v25, "\r\nRING\r\n\r\n+CLIP: %s,%d,,,%s\r\n");
      }
    }

    else
    {
LABEL_23:
      v16 = sub_1003078F4(v25, "\r\nRING\r\n");
    }

    v13 = v16;
    if (v16)
    {
      sub_10030745C(v25);
    }

    else
    {
      v17 = sub_10020F83C(a1);
      if (v17 == 8)
      {
        return 1802;
      }

      else
      {
        v18 = v17;
        v19 = *(qword_100B5EE08 + 200 * v17 + 152);
        if (v19)
        {
          sub_10000C1E8(v19);
          *(qword_100B5EE08 + 200 * v18 + 152) = 0;
        }

        v20 = sub_100307920(v25);
        v21 = qword_100B5EE08;
        *(qword_100B5EE08 + 200 * v18 + 152) = v20;
        if ((*(v21 + 1636) & 8) == 0 || *(v21 + 1600) > 1u || sub_100216A60(a1) || a5)
        {
          return sub_10021061C(a1);
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Not sending ring with name as SCO is not connected");
            v22 = sub_10000C050(0x10u);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          v23 = *(qword_100B5EE08 + 200 * v18 + 152);
          if (v23)
          {
            sub_10000C1E8(v23);
            v13 = 0;
            *(qword_100B5EE08 + 200 * v18 + 152) = 0;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v13;
}

uint64_t sub_100210908(uint64_t a1, int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if ((*(qword_100B5EE08 + 1636) & 4) == 0)
  {
    return 1808;
  }

  v10[0] = 0;
  v10[1] = 0;
  v4 = sub_100307404(v10, 0xDuLL);
  if (!v4)
  {
    v5 = 48;
    if (a2)
    {
      v5 = 49;
    }

    v6 = sub_1003078F4(v10, "\r\n+BVRA: %c\r\n", v5);
    if (v6)
    {
      v4 = v6;
      sub_10030745C(v10);
    }

    else
    {
      v7 = sub_100307920(v10);
      v8 = strlen(v7);
      return sub_10020F54C(a1, 19, v7, v8, 1);
    }
  }

  return v4;
}

uint64_t sub_1002109E0(uint64_t a1, const char *a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if ((*(qword_100B5EE08 + 1636) & 0x10) == 0)
  {
    return 1808;
  }

  if (a2)
  {
    v6 = strlen(a2);
    if (v6 > 32)
    {
      return 101;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10[0] = 0;
  v10[1] = 0;
  v4 = sub_100307404(v10, (v6 + 14));
  if (!v4)
  {
    v7 = sub_1003078F4(v10, "\r\n+BINP: %s\r\n", a2);
    if (v7)
    {
      v4 = v7;
      sub_10030745C(v10);
    }

    else
    {
      v8 = sub_100307920(v10);
      v9 = strlen(v8);
      return sub_10020F54C(a1, 17, v8, v9, 1);
    }
  }

  return v4;
}

uint64_t sub_100210AD0(uint64_t a1, const char *a2, uint64_t a3, const char *a4)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if ((*(qword_100B5EE08 + 1636) & 1) == 0 || (sub_10020F7D0(a1) & 2) == 0)
  {
    return 1808;
  }

  if (a2)
  {
    v9 = strlen(a2);
    if (v9 > 32)
    {
      return 101;
    }

    if (a4)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  LOWORD(v9) = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_10:
  v10 = strlen(a4);
  if (v10 > 128)
  {
    return 101;
  }

LABEL_14:
  v14[0] = 0;
  v14[1] = 0;
  v7 = sub_100307404(v14, (v9 + v10 + 23));
  if (!v7)
  {
    if (v10 < 1)
    {
      v11 = sub_1003078F4(v14, "\r\n+CCWA: %s,%d,1\r\n");
    }

    else
    {
      v11 = sub_1003078F4(v14, "\r\n+CCWA: %s,%d,1,%s\r\n");
    }

    v7 = v11;
    if (v11)
    {
      sub_10030745C(v14);
    }

    else
    {
      v12 = sub_100307920(v14);
      v13 = strlen(v12);
      return sub_10020F54C(a1, 18, v12, v13, 1);
    }
  }

  return v7;
}

uint64_t sub_100210C40(uint64_t a1, int a2)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if ((*(qword_100B5EE08 + 1636) & 8) == 0)
  {
    return 1808;
  }

  v13[0] = 0;
  v13[1] = 0;
  v5 = sub_100307404(v13, 0xDuLL);
  if (v5)
  {
    return v5;
  }

  v6 = 48;
  if (a2)
  {
    v6 = 49;
  }

  v7 = sub_1003078F4(v13, "\r\n+BSIR: %c\r\n", v6);
  if (v7)
  {
    v4 = v7;
    sub_10030745C(v13);
    return v4;
  }

  v9 = sub_100307920(v13);
  v10 = strlen(v9);
  v5 = sub_10020F54C(a1, 20, v9, v10, 1);
  if (v5)
  {
    return v5;
  }

  v11 = (qword_100B5EE08 + 128);
  v12 = 8;
  while (*(v11 - 64) != a1)
  {
    v4 = 0;
    v11 += 50;
    if (!--v12)
    {
      return v4;
    }
  }

  v4 = 0;
  *v11 = a2;
  return v4;
}

uint64_t sub_100210D50(uint64_t a1, const char *a2, int a3, int a4)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (!a2)
  {
    return 101;
  }

  v14[0] = 0;
  v14[1] = 0;
  v8 = strlen(a2);
  v9 = sub_100307404(v14, (v8 + 24));
  if (!v9)
  {
    v10 = sub_1003078F4(v14, "\r\n+CNUM: ,%s,%d,,%d\r\n", a2, a3, a4);
    if (v10)
    {
      v9 = v10;
      sub_10030745C(v14);
    }

    else
    {
      v12 = sub_100307920(v14);
      v13 = strlen(v12);
      return sub_10020F54C(a1, 22, v12, v13, 1);
    }
  }

  return v9;
}

uint64_t sub_100210E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, const char *a7, uint64_t a8, const char *a9)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if ((*(qword_100B5EE08 + 1636) & 0x40) == 0)
  {
    return 1808;
  }

  v17 = 101;
  if (a4 <= 5 && a5 <= 2)
  {
    v19 = a9;
    if (a7)
    {
      v20 = strlen(a7);
      if (v20 <= 32)
      {
        v21 = v20;
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

    if (a9)
    {
      v22 = strlen(a9);
      if (v22 <= 128)
      {
        v19 = v22;
      }

      else
      {
        v19 = 0;
      }
    }

    v37[0] = 0;
    v37[1] = 0;
    v23 = sub_100307404(v37, (v21 + v19 + 40));
    v24 = v21;
    v17 = v23;
    if (!v23)
    {
      if (a3)
      {
        v25 = 49;
      }

      else
      {
        v25 = 48;
      }

      if (a6)
      {
        v26 = 49;
      }

      else
      {
        v26 = 48;
      }

      if (v24 < 1 || v19 < 1)
      {
        if (v24 < 1)
        {
          v28 = sub_1003078F4(v37, "\r\n+CLCC: %d,%c,%d,%d,%c,,,\r\n");
LABEL_30:
          v17 = v28;
          if (v28)
          {
            sub_10030745C(v37);
          }

          else
          {
            v29 = sub_100307920(v37);
            v30 = strlen(v29);
            return sub_10020F54C(a1, 23, v29, v30, 1);
          }

          return v17;
        }

        v34 = a7;
        v35 = a8;
        v32 = a5;
        v33 = v26;
        v31 = a4;
        v27 = "\r\n+CLCC: %d,%c,%d,%d,%c,%s,%d\r\n";
      }

      else
      {
        v35 = a8;
        v36 = a9;
        v33 = v26;
        v34 = a7;
        v31 = a4;
        v32 = a5;
        v27 = "\r\n+CLCC: %d,%c,%d,%d,%c,%s,%d,%s\r\n";
      }

      v28 = sub_1003078F4(v37, v27, a2, v25, v31, v32, v33, v34, v35, v36);
      goto LABEL_30;
    }
  }

  return v17;
}

uint64_t sub_100210FF4(uint64_t a1, unsigned int a2, const char *a3)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  if (a2 <= 4)
  {
    v13[0] = 0;
    v13[1] = 0;
    if (a3)
    {
      v7 = strlen(a3);
      v8 = sub_100307404(v13, (v7 + 18));
      if (v8)
      {
        return v8;
      }

      v9 = sub_1003078F4(v13, "\r\n+COPS: %d,0,%s\r\n");
    }

    else
    {
      v8 = sub_100307404(v13, 0xDuLL);
      if (v8)
      {
        return v8;
      }

      v9 = sub_1003078F4(v13, "\r\n+COPS: %d\r\n");
    }

    v6 = v9;
    if (v9)
    {
      sub_10030745C(v13);
      return v6;
    }

    v10 = sub_100307920(v13);
    v11 = strlen(v10);
    return sub_10020F54C(a1, 24, v10, v11, 1);
  }

  return 101;
}

uint64_t sub_1002110E8(uint64_t a1, int a2)
{
  v15 = a1;
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  v14[0] = 0;
  v14[1] = 0;
  if ((*(qword_100B5EE08 + 1637) & 2) == 0)
  {
    return 2701;
  }

  v6 = v4;
  v7 = qword_100B5EE08 + 200 * v4;
  if ((*(v7 + 86) & 0x80) == 0)
  {
    return 2701;
  }

  if ((*(v7 + 144) & a2) == 0)
  {
    return 1812;
  }

  *(v7 + 164) = a2;
  result = sub_100307404(v14, 0xBuLL);
  if (!result)
  {
    if (sub_1003078F4(v14, "\r\n+BCS:%d\r\n", a2))
    {
      sub_10030745C(v14);
      return 412;
    }

    else
    {
      v8 = sub_100307920(v14);
      v9 = strlen(v8);
      result = sub_10020F54C(a1, 26, v8, v9, 1);
      if (!result)
      {
        v13[1] = &v15;
        v13[0] = 2;
        v10 = qword_100B5EE08;
        v11 = qword_100B5EE08 + 200 * v6;
        *(v11 + 168) = 1;
        if (*(v11 + 184))
        {
          v12 = sub_1000B11F4();
          v10 = qword_100B5EE08;
          *(qword_100B5EE08 + 200 * v6 + 184) = v12 - *(qword_100B5EE08 + 200 * v6 + 184);
        }

        sub_10002195C(sub_100211288, v13, (29 - (((((*(v10 + 200 * v6 + 184) + 99) >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2)), (v10 + 200 * v6 + 172));
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100211288(uint64_t a1)
{
  result = sub_10020F83C(**(a1 + 8));
  if (result != 8)
  {

    return sub_100212B70(result, 1809);
  }

  return result;
}

uint64_t sub_1002112CC(uint64_t a1, int a2)
{
  v13 = a1;
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  v6 = v4;
  v12[0] = 0;
  v12[1] = 0;
  result = sub_100307404(v12, 0xEuLL);
  if (!result)
  {
    if (sub_1003078F4(v12, "\r\n+APLAIC:%d\r\n", a2))
    {
      sub_10030745C(v12);
      return 412;
    }

    else
    {
      v7 = sub_100307920(v12);
      v8 = strlen(v7);
      result = sub_10020F54C(a1, 29, v7, v8, 1);
      if (!result)
      {
        v11[1] = &v13;
        v11[0] = 2;
        *(qword_100B5EE08 + 200 * v6 + 176) = 1;
        v9 = sub_1000B11F4();
        v10 = qword_100B5EE08 + 200 * v6;
        *(v10 + 184) = v9;
        sub_10002195C(sub_1002113E0, v11, 17, (v10 + 180));
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002113E0(uint64_t a1)
{
  result = sub_10020F83C(**(a1 + 8));
  if (result != 8)
  {

    return sub_100212C1C(result, 1820);
  }

  return result;
}

uint64_t sub_100211424(BOOL *a1, _BYTE *a2, _BYTE *a3)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  result = 0;
  v7 = qword_100B5EE08;
  *a1 = *(qword_100B5EE08 + 1642) != 0;
  *a2 = *(v7 + 1643);
  *a3 = *(v7 + 1644);
  return result;
}

uint64_t sub_100211490(char a1, char a2, unsigned int a3, unsigned int a4)
{
  if (!sub_1000D88C8())
  {
    return 408;
  }

  result = 101;
  if (a3 <= 5 && a4 <= 5)
  {
    result = 0;
    v9 = qword_100B5EE08;
    *(qword_100B5EE08 + 1641) = a1;
    v9[1647] = a2;
    v9[1646] = a3;
    v9[1645] = a4;
  }

  return result;
}

uint64_t sub_100211504(int a1)
{
  v1 = sub_10020F83C(a1);
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return qword_100B5EE08 + 200 * v1 + 80;
  }
}

uint64_t sub_100211538(uint64_t a1, int a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HandsfreeAG_SetupAoS - handle:%d", a1);
    v4 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1002168F8(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Trying to establish HandsfreeAoS while it's already established");
      v5 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100813E54();
      }
    }

    return 1806;
  }

  else
  {
    *buf = 0uLL;
    v6 = sub_100307404(buf, 8uLL);
    if (!v6)
    {
      v7 = sub_1003078F4(buf, "\r\n+HAOS:1,%d\r\n", a2);
      if (v7)
      {
        v6 = v7;
        sub_10030745C(buf);
      }

      else
      {
        *(qword_100B5EE08 + 200 * sub_10020F83C(a1) + 198) = 1;
        v8 = sub_100307920(buf);
        v9 = strlen(v8);
        return sub_10020F54C(a1, 28, v8, v9, 1);
      }
    }
  }

  return v6;
}

uint64_t sub_1002116EC(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HandsfreeAG_CloseAoSAudio - handle:%d", a1);
    v2 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *buf = 0uLL;
  v3 = sub_100307404(buf, 8uLL);
  if (!v3)
  {
    v4 = sub_1003078F4(buf, "\r\n+HAOS:2,0\r\n");
    if (v4)
    {
      v3 = v4;
      sub_10030745C(buf);
    }

    else
    {
      v5 = sub_100307920(buf);
      v6 = strlen(v5);
      return sub_10020F54C(a1, 28, v5, v6, 1);
    }
  }

  return v3;
}

uint64_t sub_10021181C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HandsfreeAG_TransitionToUnidirectionalAudio - handle:%d", a1);
    v2 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *buf = 0uLL;
  v3 = sub_100307404(buf, 8uLL);
  if (!v3)
  {
    v4 = sub_1003078F4(buf, "\r\n+HAOS:2,1\r\n");
    if (v4)
    {
      v3 = v4;
      sub_10030745C(buf);
    }

    else
    {
      v5 = sub_100307920(buf);
      v6 = strlen(v5);
      return sub_10020F54C(a1, 28, v5, v6, 1);
    }
  }

  return v3;
}

uint64_t sub_10021194C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_10020F83C(a1);
  if (v2 == 8)
  {
    return 1802;
  }

  *(qword_100B5EE08 + 200 * v2 + 198) = 0;

  return sub_100216734(v1);
}

uint64_t sub_1002119B0(int a1)
{
  v1 = sub_10020F83C(a1);
  if (v1 == 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(qword_100B5EE08 + 200 * v1 + 198);
  }

  return v2 & 1;
}

uint64_t sub_1002119F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  if ((*(qword_100B5EE08 + 1636) & 0x200) != 0 && (*(qword_100B5EE08 + 200 * v4 + 86) & 0x80) != 0)
  {
    if (a2)
    {

      return sub_100216734(a1);
    }

    else
    {

      return sub_10020F9D8(a1, 2701);
    }
  }

  else
  {

    return sub_100216684(a1, a2);
  }
}

uint64_t sub_100211AB0(uint64_t a1, int *a2)
{
  v3 = a1;
  result = sub_10020F83C(a1);
  if (result == 8 && (result = sub_100211B18(v3, a2), result == 8))
  {
    sub_1000D660C();
    return 255;
  }

  else
  {
    v5 = qword_100B5EE08 + 200 * result;
    *(v5 + 12) = 0;
    *(v5 + 4) = 0;
  }

  return result;
}

uint64_t sub_100211B18(int a1, int *a2)
{
  v3 = a1;
  if (sub_10020F83C(a1) != 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cooked device already exists %: !!", a2);
      v8 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 8;
  }

  v4 = 0;
  v5 = 0;
  v6 = qword_100B5EE08 + 80;
  while (*(v6 + v4) || *(v6 + v4 + 4) != 0)
  {
    ++v5;
    v4 += 200;
    if (v4 == 1600)
    {
      return 8;
    }
  }

  v9 = sub_100007618(*(qword_100B5EE08 + 1634), 0xEB281778uLL);
  v10 = qword_100B5EE08 + v4;
  *(qword_100B5EE08 + v4 + 120) = v9;
  if (!v9)
  {
    return 8;
  }

  sub_1003051D8((v10 + 64));
  sub_1001F1660(qword_100B5EE08 + v4 + 96, sub_100212CC8, *(qword_100B5EE08 + v4 + 120), *(qword_100B5EE08 + 1634));
  v11 = qword_100B5EE08;
  v12 = qword_100B5EE08 + v4;
  *v12 = v3;
  v13 = *a2;
  *(v12 + 84) = *(a2 + 2);
  *(v12 + 80) = v13;
  *(v12 + 12) = 1;
  *(v12 + 4) = 1802;
  *(v12 + 86) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 34) = 0;
  *(v12 + 128) = (*(v11 + 1636) >> 3) & 1;
  *(v12 + 140) = 0;
  *(v12 + 132) = 0;
  *(v12 + 160) = *(v11 + 1642);
  *(v12 + 162) = *(v11 + 1644);
  *(v12 + 164) = 0;
  *(v12 + 168) = 0;
  *(v12 + 172) = 0;
  *(v12 + 176) = 0;
  *(v12 + 180) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 16843009;
  *(v12 + 196) = 0;
  ++*(v11 + 1600);
  return v5;
}

void sub_100211CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100211D2C(a3);

  sub_100216F84(a1, a2);
}

double sub_100211D2C(int a1)
{
  v1 = 0;
  v2 = 0;
  while (*(qword_100B5EE08 + v1) != a1)
  {
    ++v2;
    v1 += 200;
    if (v2 == 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not find cooked device to destroy.");
        v4 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return result;
    }
  }

  sub_10021281C(v2);
  v5 = qword_100B5EE08;
  v6 = *(qword_100B5EE08 + v1 + 152);
  if (v6)
  {
    sub_10000C1E8(v6);
    v5 = qword_100B5EE08;
    *(qword_100B5EE08 + v1 + 152) = 0;
  }

  v7 = *(v5 + v1 + 8);
  if (v7)
  {
    sub_10002242C(v7);
    v5 = qword_100B5EE08;
  }

  sub_10000C1E8(*(v5 + v1 + 120));
  v8 = qword_100B5EE08;
  v9 = qword_100B5EE08 + v1;
  result = 0.0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0;
  *v9 = -1;
  --*(v8 + 1600);
  return result;
}

uint64_t sub_100211E38(int a1, char a2)
{
  v2 = 0;
  v3 = qword_100B5EE08;
  if (a2)
  {
    while (1)
    {
      v4 = *v3;
      v3 += 100;
      if (v4 == a1)
      {
        break;
      }

      if (++v2 == 8)
      {
        return 0;
      }
    }

    v6 = 1;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      v3 += 100;
      if (v5 == a1)
      {
        break;
      }

      if (++v2 == 8)
      {
        return 0;
      }
    }

    v6 = 0;
  }

  *(qword_100B5EE08 + 200 * v2 + 140) = v6;
  return 0;
}

uint64_t sub_100211EA4(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = sub_10020F83C(a1);
  if (v5 == 8)
  {
    return 1802;
  }

  v7 = qword_100B5EE08;
  if ((*(qword_100B5EE08 + 1636) & 0x200) == 0)
  {
    return 2701;
  }

  v8 = qword_100B5EE08 + 200 * v5;
  if ((*(v8 + 86) & 0x80) == 0)
  {
    return 2701;
  }

  v9 = v5;
  *(v8 + 144) = 0;
  if (a3)
  {
    v10 = a3;
    while (1)
    {
      v11 = *a2;
      if (v11 > 0x7F)
      {
        if (*a2 > 0x81u)
        {
          if (v11 == 130)
          {
            v12 = qword_100B5EE08 + 200 * v9;
            v13 = *(v12 + 144) | 0x400;
          }

          else
          {
            if (v11 != 255)
            {
LABEL_31:
              if (sub_10000C240())
              {
                sub_10000AF54("Unsupported codec ID: %d", *a2);
                v14 = sub_10000C050(0x10u);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v15 = sub_10000C0FC();
                  *buf = 136446466;
                  v19 = v15;
                  v20 = 1024;
                  v21 = 0xFFFF;
                  _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                }
              }

              goto LABEL_29;
            }

            v12 = qword_100B5EE08 + 200 * v9;
            v13 = *(v12 + 144) | 0x10;
          }
        }

        else if (v11 == 128)
        {
          v12 = qword_100B5EE08 + 200 * v9;
          v13 = *(v12 + 144) | 0x100;
        }

        else
        {
          if (v11 != 129)
          {
            goto LABEL_31;
          }

          v12 = qword_100B5EE08 + 200 * v9;
          v13 = *(v12 + 144) | 0x200;
        }
      }

      else if (*a2 > 0x3Fu)
      {
        if (v11 == 64)
        {
          v12 = qword_100B5EE08 + 200 * v9;
          v13 = *(v12 + 144) | 0x80;
        }

        else
        {
          if (v11 != 127)
          {
            goto LABEL_31;
          }

          v12 = qword_100B5EE08 + 200 * v9;
          v13 = *(v12 + 144) | 4;
        }
      }

      else if (v11 == 1)
      {
        v12 = qword_100B5EE08 + 200 * v9;
        v13 = *(v12 + 144) | 1;
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_31;
        }

        v12 = qword_100B5EE08 + 200 * v9;
        v13 = *(v12 + 144) | 2;
      }

      *(v12 + 144) = v13;
LABEL_29:
      ++a2;
      if (!--v10)
      {
        v7 = qword_100B5EE08;
        v16 = *(qword_100B5EE08 + 200 * v9 + 144);
        goto LABEL_35;
      }
    }
  }

  v16 = 0;
LABEL_35:
  v17 = v16 & *(v7 + 1648);
  if ((v17 & 0x100) != 0)
  {
    *(v7 + 200 * v9 + 88) |= 1uLL;
    if ((v17 & 0x80) == 0)
    {
LABEL_37:
      if ((v17 & 2) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }
  }

  else if ((v17 & 0x80) == 0)
  {
    goto LABEL_37;
  }

  *(v7 + 200 * v9 + 88) |= 4uLL;
  if ((v17 & 2) == 0)
  {
LABEL_38:
    if ((v17 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v7 + 200 * v9 + 88) |= 2uLL;
  if ((v17 & 4) == 0)
  {
LABEL_39:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v7 + 200 * v9 + 88) |= 8uLL;
  if ((v17 & 0x10) == 0)
  {
LABEL_40:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_48:
  *(v7 + 200 * v9 + 88) |= 0x10uLL;
  if ((v17 & 0x200) != 0)
  {
LABEL_41:
    *(v7 + 200 * v9 + 88) |= 0x20uLL;
  }

LABEL_42:
  result = 0;
  if ((v17 & 0x400) != 0)
  {
    *(v7 + 200 * v9 + 88) |= 0x40uLL;
  }

  return result;
}

uint64_t sub_1002121F8(int a1, _BYTE *a2, unsigned int a3)
{
  v5 = sub_10020F83C(a1);
  if (v5 == 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastConnect Device not connected");
      v6 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 1802;
  }

  else
  {
    if (a3 >= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = a3;
    }

    if (a3)
    {
      v9 = 0;
      v10 = (qword_100B5EE08 + 200 * v5);
      do
      {
        if (a3 <= 6)
        {
          if (v9 > 3)
          {
            if (v9 == 4)
            {
              if (a2[4])
              {
                if (a2[4] == 1)
                {
                  v10[193] = 1;
                }
              }

              else
              {
                v10[193] = 0;
              }
            }

            else if (v9 == 5)
            {
              if (a2[5])
              {
                if (a2[5] == 1)
                {
                  v10[194] = 1;
                }
              }

              else
              {
                v10[194] = 0;
              }
            }
          }

          else if (v9)
          {
            if (v9 == 3)
            {
              if (a2[3])
              {
                if (a2[3] == 1)
                {
                  v10[195] = 1;
                }
              }

              else
              {
                v10[195] = 0;
              }
            }
          }

          else if (*a2)
          {
            if (*a2 == 1)
            {
              v10[192] = 1;
            }
          }

          else
          {
            v10[192] = 0;
          }
        }

        ++v9;
      }

      while (v8 != v9);
    }

    return 0;
  }
}

uint64_t sub_100212350(int a1, __int16 a2)
{
  v3 = sub_10020F83C(a1);
  if (v3 == 8)
  {
    return 1802;
  }

  v5 = v3;
  result = 0;
  *(qword_100B5EE08 + 200 * v5 + 86) = a2;
  return result;
}

uint64_t sub_1002123B8(uint64_t a1, BOOL *a2, unsigned int a3)
{
  if (a3 < 7)
  {
    return 2701;
  }

  result = 0;
  v4 = qword_100B5EE08;
  *a2 = *(qword_100B5EE08 + 1641) != 0;
  a2[1] = v4[1642] != 0;
  a2[2] = v4[1643];
  a2[3] = v4[1645];
  a2[4] = v4[1646];
  a2[5] = v4[1647] != 0;
  a2[6] = v4[1644];
  return result;
}

uint64_t sub_100212428(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 7)
  {
    return 2701;
  }

  result = 0;
  *a2 = 84082945;
  *(a2 + 4) = 261;
  if ((*(qword_100B5EE08 + 1636) & 0xC0) == 0 || (*(qword_100B5EE08 + 1636) & 1) == 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(a2 + 6) = v5;
  return result;
}

uint64_t sub_100212478(int a1, _WORD *a2)
{
  if (sub_10020F83C(a1) == 8)
  {
    return 1802;
  }

  v4 = qword_100B5EE08;
  if ((*(qword_100B5EE08 + 1636) & 1) == 0)
  {
    return 2701;
  }

  v5 = *(qword_100B5EE08 + 1638);
  *a2 = v5 & 1;
  if ((*(v4 + 1636) & 0x80) != 0)
  {
    v6 = 30;
  }

  else
  {
    v6 = 10;
  }

  v7 = v6 & 0xFFFE | v5 & 1;
  *a2 = v7;
  v8 = *(v4 + 1638);
  result = 0;
  if ((v8 & 0x18) != 0)
  {
    *a2 = v7 & 0xFF9F | (32 * ((v8 >> 3) & 3));
  }

  return result;
}

uint64_t sub_100212510(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = sub_10020F83C(v1);
  if (v2 != 8)
  {
    *(qword_100B5EE08 + 200 * v2 + 4) = 1814;
  }

  return sub_1002165D4(v1, 1814);
}

uint64_t sub_100212578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_10020F83C(a1);
  if (v6 == 8)
  {

    return sub_1002165D4(v5, 1815);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = v6;
  v9 = (qword_100B5EE08 + 200 * v6);
  if (!v9[12])
  {
    if (v9[168] == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Error %! Response\n", a3);
        v11 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v12 = qword_100B5EE08;
      v13 = *(qword_100B5EE08 + 200 * v8 + 172);
      if (v13)
      {
        sub_10002242C(v13);
        v12 = qword_100B5EE08;
        *(qword_100B5EE08 + 200 * v8 + 172) = 0;
      }

      v14 = v12 + 200 * v8;
      *(v14 + 168) = 0;
      *(v14 + 184) = 0;
    }

    else
    {
      v15 = v9[176];
      v16 = sub_10000C240();
      if (v15 != 1)
      {
        if (v16)
        {
          sub_10000AF54("Error %! occurred while sending response, type %d\n", a3, a2);
          v19 = sub_10000C050(0x10u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v21 = __PAIR64__(a3, a2);
        WORD2(v20) = v5;
        LODWORD(v20) = 21;
        v12 = qword_100B5EE08;
        return (*(v12 + 1608))(&v20);
      }

      if (v16)
      {
        sub_10000AF54("Error %! Response\n", a3);
        v17 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v12 = qword_100B5EE08;
      v18 = *(qword_100B5EE08 + 200 * v8 + 180);
      if (v18)
      {
        sub_10002242C(v18);
        v12 = qword_100B5EE08;
        *(qword_100B5EE08 + 200 * v8 + 180) = 0;
      }

      *(v12 + 200 * v8 + 176) = 0;
    }

    LODWORD(v20) = 5;
    WORD2(v20) = v5;
    LODWORD(v21) = a3;
    return (*(v12 + 1608))(&v20);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Error %! occurred sending response, disconnecting\n", a3);
    v10 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  *(qword_100B5EE08 + 200 * v8 + 4) = a3;
  return sub_1002165D4(v5, a3);
}

uint64_t **sub_10021281C(unsigned int a1)
{
  v2 = qword_100B5EE08;
  v3 = qword_100B5EE08 + 200 * a1;
  v5 = *(v3 + 64);
  result = (v3 + 64);
  if (v5 != result)
  {
    do
    {
      v6 = sub_10030528C(result);
      if (!v6)
      {
        sub_1000D660C();
      }

      sub_100212578(*(qword_100B5EE08 + 200 * a1), *(v6 - 6), 122);
      if (*(v6 - 6) == 1)
      {
        sub_10000C1E8(*(v6 - 2));
      }

      sub_10000C1E8(v6 - 3);
      v2 = qword_100B5EE08;
      v7 = qword_100B5EE08 + 200 * a1;
      v8 = *(v7 + 64);
      result = (v7 + 64);
    }

    while (v8 != result);
  }

  *(v2 + 200 * a1 + 56) = 0;
  return result;
}

void sub_1002128D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v8 = sub_10020F83C(a1);
  if (qword_100B5EE08)
  {
    v9 = v8 == 8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    if (a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Write failed %!\n", a3);
        v11 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_100212578(a1, *(qword_100B5EE08 + 200 * v10 + 16), a3);
      if (!a4)
      {
        goto LABEL_22;
      }
    }

    else if (*(qword_100B5EE08 + 200 * v8 + 16) == 20)
    {
      v12 = (qword_100B5EE08 + 128);
      v13 = 8;
      while (*(v12 - 64) != a1)
      {
        v12 += 50;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      *v12 = a2[9] != 48;
      if (!a4)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_20:
      if (!a4)
      {
        goto LABEL_22;
      }
    }

    sub_10000C1E8(a2);
LABEL_22:
    v14 = v10;
    *(qword_100B5EE08 + 200 * v10 + 16) = 0;
    do
    {
      v15 = qword_100B5EE08 + 200 * v14;
      v17 = *(v15 + 64);
      v16 = (v15 + 64);
      if (v17 == v16)
      {
        break;
      }

      v18 = sub_10030528C(v16);
      if (!v18)
      {
        sub_1000D660C();
      }

      v20 = *(v18 - 6);
      v19 = (v18 - 3);
      v21 = sub_10020F54C(*(qword_100B5EE08 + 200 * v14), v20, v19[1], *(v19 + 8), *(v19 + 18));
      if (v21)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("SendResponse failed from SendNext %!, type %d\n", v21, *v19);
          v22 = sub_10000C050(0x10u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10080FE78(v27, &v28, v22);
          }
        }

        sub_100212578(*(qword_100B5EE08 + 200 * v14), *v19, v21);
      }

      v23 = qword_100B5EE08 + 200 * v14;
      v26 = *(v23 + 56);
      v24 = (v23 + 56);
      v25 = v26;
      if (v26)
      {
        *v24 = v25 - 1;
      }

      sub_10000C1E8(v19);
    }

    while (v21);
    return;
  }

  if (a4)
  {

    sub_10000C1E8(a2);
  }
}

uint64_t sub_100212B70(unsigned int a1, int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = qword_100B5EE08;
  result = *(qword_100B5EE08 + 200 * a1 + 172);
  if (result)
  {
    result = sub_10002242C(result);
    v3 = qword_100B5EE08;
    *(qword_100B5EE08 + 200 * a1 + 172) = 0;
  }

  v6 = v3 + 200 * a1;
  v8 = *(v6 + 168);
  v7 = (v6 + 168);
  if (v8 == 1)
  {
    *v7 = 0;
    v9 = v3 + 200 * a1;
    *(v9 + 184) = 0;
    LODWORD(v10) = 5;
    WORD2(v10) = *v9;
    LODWORD(v11) = a2;
    return (*(v3 + 1608))(&v10);
  }

  return result;
}

uint64_t sub_100212C1C(unsigned int a1, int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = qword_100B5EE08;
  result = *(qword_100B5EE08 + 200 * a1 + 180);
  if (result)
  {
    result = sub_10002242C(result);
    v3 = qword_100B5EE08;
    v6 = qword_100B5EE08 + 200 * a1;
    *(v6 + 180) = 0;
    *(v6 + 184) = 0;
  }

  v7 = v3 + 200 * a1;
  v9 = *(v7 + 176);
  v8 = (v7 + 176);
  if (v9 == 1)
  {
    *v8 = 0;
    LODWORD(v10) = 5;
    WORD2(v10) = *(v3 + 200 * a1);
    LODWORD(v11) = a2;
    return (*(v3 + 1608))(&v10);
  }

  return result;
}

uint64_t sub_100212CC8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = qword_100B5EE08;
  while (1)
  {
    v4 = (qword_100B5EE08 + 200 * v2);
    if (*(v4 + 13) == *(*(result + 32) + 8))
    {
      break;
    }

    if (++v2 == 8)
    {
      return result;
    }
  }

  v5 = *v4;
  v6 = *(result + 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = &off_100AE6F78;
  v8 = 32;
  while (strcmp(*(v7 - 1), v6))
  {
    v7 += 3;
    if (!--v8)
    {
      if ((!*(v3 + 200 * v2 + 12) || *(v3 + 1639)) && (v9 = *(v3 + 1616)) != 0)
      {

        return v9(v5, v1);
      }

      else
      {

        return sub_10020F9D8(v5, 2701);
      }
    }
  }

  if (*(v3 + 200 * v2 + 12) && *(v7 + 8) != 1)
  {
    v10 = 2701;
LABEL_26:
    result = sub_10020F948(v5, v10);
    if (!result)
    {
      return result;
    }

    v11 = result;
    v12 = v5;
    v13 = 2;
    goto LABEL_28;
  }

  result = (*v7)(v5, v1);
  if (result == 412)
  {
    return result;
  }

  v10 = result;
  if (result)
  {
    goto LABEL_26;
  }

  if (!*(qword_100B5EE08 + 1640))
  {
    return result;
  }

LABEL_20:
  result = sub_10020F9D8(v5, 0);
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = v5;
  v13 = 1;
LABEL_28:

  return sub_100212578(v12, v13, v11);
}

uint64_t sub_100212E9C(unsigned __int16 a1)
{
  v4 = 0;
  v5 = 0;
  v2 = 8;
  v3 = a1;
  (*(qword_100B5EE08 + 1608))(&v2);
  return 0;
}

uint64_t sub_100212EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  v6 = v4;
  v7 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v7)
  {
    return 134;
  }

  *(qword_100B5EE08 + 200 * v6 + 86) = sub_1003072F0(v7);
  v8 = sub_10020F83C(a1);
  if (v8 == 8)
  {
    v9 = 1802;
LABEL_21:
    v19 = a1;
    v20 = 5;
    v21 = v9;
LABEL_22:
    sub_100212578(v19, v20, v21);
    return 412;
  }

  v10 = v8;
  v24[0] = 0;
  v24[1] = 0;
  v11 = *(qword_100B5EE08 + 1636);
  v9 = sub_100307404(v24, 0x15uLL);
  if (v9)
  {
    goto LABEL_21;
  }

  if ((*(qword_100B5EE08 + 200 * v10 + 86) & 0x80) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 & 0xFDFF;
  }

  v13 = sub_10020F83C(a1);
  if (v13 == 8)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_100B5EE08 + 200 * v13 + 80;
  }

  v23 = 0;
  sub_10023DB58(v14, &v23);
  if (v23)
  {
    v15 = sub_1002F8670(v23);
    if (v15)
    {
      if (*(v15 + 10) < 0x107u)
      {
        v12 &= 0xF3FFu;
      }
    }
  }

  v16 = sub_1003078F4(v24, "\r\n+BRSF:%d\r\n", v12);
  if (v16)
  {
    v9 = v16;
    sub_10030745C(v24);
    goto LABEL_21;
  }

  v17 = sub_100307920(v24);
  v18 = strlen(v17);
  v9 = sub_10020F54C(a1, 5, v17, v18, 1);
  if (v9)
  {
    goto LABEL_21;
  }

  if (!*(qword_100B5EE08 + 200 * v6 + 12))
  {
    return 0;
  }

  v22 = sub_10020F9D8(a1, 0);
  if (v22)
  {
    v21 = v22;
    v19 = a1;
    v20 = 1;
    goto LABEL_22;
  }

  return 412;
}

uint64_t sub_1002130C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  if ((*(qword_100B5EE08 + 1636) & 0x200) == 0)
  {
    return 2701;
  }

  v6 = qword_100B5EE08 + 200 * v4;
  if ((*(v6 + 86) & 0x80) == 0)
  {
    return 2701;
  }

  v7 = v4;
  *(v6 + 144) = 0;
  v8 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (v8)
  {
    v9 = v8;
    while (sub_100307330(v9, "1"))
    {
      if (!sub_100307330(v9, "2"))
      {
        v10 = 2;
        goto LABEL_24;
      }

      if (!sub_100307330(v9, "127"))
      {
        v10 = 4;
        goto LABEL_24;
      }

      if (!sub_100307330(v9, "255"))
      {
        v10 = 16;
        goto LABEL_24;
      }

      if (!sub_100307330(v9, "256"))
      {
        v10 = 256;
        goto LABEL_24;
      }

      if (!sub_100307330(v9, "128"))
      {
        v10 = 128;
        goto LABEL_24;
      }

      if (!sub_100307330(v9, "129"))
      {
        v10 = 512;
        goto LABEL_24;
      }

      if (!sub_100307330(v9, "130"))
      {
        v10 = 1024;
LABEL_24:
        *(qword_100B5EE08 + 200 * v7 + 144) |= v10;
      }

      v9 = sub_1001F0A88(a2, (a2 + 24), 0);
      if (!v9)
      {
        goto LABEL_26;
      }
    }

    v10 = 1;
    goto LABEL_24;
  }

LABEL_26:
  v11 = qword_100B5EE08;
  v12 = qword_100B5EE08 + 200 * v7;
  v13 = *(v12 + 144) & *(qword_100B5EE08 + 1648);
  if ((v13 & 0x100) != 0)
  {
    *(v12 + 88) |= 1uLL;
    if ((v13 & 0x80) == 0)
    {
LABEL_28:
      if ((v13 & 2) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_28;
  }

  *(v11 + 200 * v7 + 88) |= 4uLL;
  if ((v13 & 2) == 0)
  {
LABEL_29:
    if ((v13 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v11 + 200 * v7 + 88) |= 2uLL;
  if ((v13 & 4) == 0)
  {
LABEL_30:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v11 + 200 * v7 + 88) |= 8uLL;
  if ((v13 & 0x10) == 0)
  {
LABEL_31:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_32;
    }

LABEL_45:
    *(v11 + 200 * v7 + 88) |= 0x20uLL;
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_44:
  *(v11 + 200 * v7 + 88) |= 0x10uLL;
  if ((v13 & 0x200) != 0)
  {
    goto LABEL_45;
  }

LABEL_32:
  if ((v13 & 0x400) != 0)
  {
LABEL_33:
    *(v11 + 200 * v7 + 88) |= 0x40uLL;
  }

LABEL_34:
  v14 = sub_10020F9D8(a1, 0);
  if (v14)
  {
    sub_100212578(a1, 1, v14);
  }

  if (!*(qword_100B5EE08 + 200 * v7 + 12))
  {
    v17 = 0;
    v15[0] = 28;
    v15[1] = a1;
    v16 = v13;
    (*(qword_100B5EE08 + 1608))(v15);
  }

  return 412;
}

uint64_t sub_1002133C0(__int16 a1, uint64_t a2)
{
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v3 = sub_1001F0A88(a2, (a2 + 24), &v9);
  if (!v3)
  {
    return 134;
  }

  v4 = &v3[v9];
  if (*(v4 - 1) != 59)
  {
    return 134;
  }

  *(v4 - 1) = 0;
  if (*v3 == 62)
  {
    LODWORD(v6) = 11;
    WORD2(v6) = a1;
    LOWORD(v7) = sub_1003072F0(v3 + 1);
  }

  else
  {
    LODWORD(v6) = 10;
    WORD2(v6) = a1;
    v7 = v3;
  }

  (*(qword_100B5EE08 + 1608))(&v6);
  return 0;
}

uint64_t sub_10021347C(unsigned __int16 a1, uint64_t a2)
{
  if ((*(qword_100B5EE08 + 1636) & 1) == 0)
  {
    return 2701;
  }

  v8 = 0;
  v9 = 0;
  v6 = 20;
  v7 = a1;
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v3)
  {
    return 134;
  }

  v4 = *v3;
  if (v4 == 48)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (v4 != 49)
  {
    return 134;
  }

  v5 = 1;
LABEL_9:
  BYTE4(v7) = v5;
  (*(qword_100B5EE08 + 1608))(&v6);
  return 0;
}

uint64_t sub_100213524(uint64_t a1, unsigned __int8 **a2)
{
  v4 = sub_10020F83C(a1);
  if (v4 != 8)
  {
    v6 = v4;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v20[0] = 0;
    v20[1] = 0;
    if (*(qword_100B5EE08 + 1639))
    {
      (*(qword_100B5EE08 + 1616))(a1, a2);
      if (!*a2)
      {
        goto LABEL_5;
      }

      return 412;
    }

    if (*(qword_100B5EE08 + 1636))
    {
      if (*a2 == 2)
      {
        LODWORD(v21) = 15;
        WORD2(v21) = a1;
        v10 = sub_1001F0A88(a2, a2 + 3, 0);
        if (!v10)
        {
          return 134;
        }

        v11 = sub_1003072F0(v10);
        LODWORD(v22) = v11;
        if ((*(qword_100B5EE08 + 1636) & 0x80) != 0 || v11 <= 4)
        {
          (*(qword_100B5EE08 + 1608))(&v21);
          return 0;
        }
      }

      else if (!*a2)
      {
        v5 = sub_100307404(v20, 0x1DuLL);
        if (v5)
        {
          return v5;
        }

        v7 = sub_1003078F4(v20, "\r\n+CHLD: (");
        if (!v7)
        {
          v8 = qword_100B5EE08;
          if (*(qword_100B5EE08 + 1638))
          {
            v7 = sub_100062468(v20, "0,");
            if (v7)
            {
              goto LABEL_20;
            }

            v8 = qword_100B5EE08;
          }

          if ((*(v8 + 1636) & 0x80) != 0)
          {
            v9 = "1,1x,2,2x";
          }

          else
          {
            v9 = "1,2";
          }

          v7 = sub_100062468(v20, v9);
          if (v7)
          {
            goto LABEL_20;
          }

          v13 = *(qword_100B5EE08 + 1638);
          if ((v13 & 8) != 0)
          {
            v7 = sub_100062468(v20, ",3");
            if (v7)
            {
              goto LABEL_20;
            }

            v13 = *(qword_100B5EE08 + 1638);
          }

          if ((v13 & 0x10) == 0 || (v7 = sub_100062468(v20, ",4"), !v7))
          {
            v7 = sub_100062468(v20, ")\r\n");
            if (!v7)
            {
              v14 = sub_100307920(v20);
              v15 = strlen(v14);
              v16 = sub_10020F54C(a1, 3, v14, v15, 1);
              if (v16)
              {
                v17 = a1;
                v18 = 3;
              }

              else
              {
                v19 = sub_10020F9D8(a1, 0);
                if (!v19)
                {
LABEL_5:
                  if (*(qword_100B5EE08 + 200 * v6 + 12))
                  {
                    sub_100215704(a1);
                  }

                  return 412;
                }

                v16 = v19;
                v17 = a1;
                v18 = 1;
              }

              sub_100212578(v17, v18, v16);
              return 412;
            }
          }
        }

LABEL_20:
        v5 = v7;
        sub_10030745C(v20);
        return v5;
      }
    }

    return 2701;
  }

  return 1802;
}

uint64_t sub_100213778(unsigned __int16 a1)
{
  v4 = 0;
  v5 = 0;
  v2 = 9;
  v3 = a1;
  (*(qword_100B5EE08 + 1608))(&v2);
  return 0;
}

uint64_t sub_1002137C0(uint64_t a1, _DWORD *a2)
{
  v2 = a1;
  if (*(qword_100B5EE08 + 1639))
  {
    (*(qword_100B5EE08 + 1616))(a1, a2);
    return 412;
  }

  v15[0] = 0;
  v15[1] = 0;
  if (!*a2)
  {
    v7 = *(qword_100B5EE08 + 1636);
    if ((v7 & 0xC0) == 0 || (v7 & 1) == 0)
    {
      v9 = "\r\n+CIND: (service,(0-1)),(call,(0-1)),(callsetup,(0-3)),(battchg,(0-5)),(signal,(0-5)),(roam,(0-1)),(callheld,(0-1))\r\n";
    }

    else
    {
      v9 = "\r\n+CIND: (service,(0-1)),(call,(0-1)),(callsetup,(0-3)),(battchg,(0-5)),(signal,(0-5)),(roam,(0-1)),(callheld,(0-2))\r\n";
    }

    v10 = 132;
    v11 = 0;
    goto LABEL_21;
  }

  if (*a2 == 1)
  {
    if (*(qword_100B5EE08 + 1636))
    {
      v3 = 23;
    }

    else
    {
      v3 = 21;
    }

    v4 = sub_100307404(v15, v3);
    if (v4)
    {
LABEL_23:
      v12 = v4;
LABEL_24:
      sub_100212578(v2, 4, v12);
      return 412;
    }

    if (*(qword_100B5EE08 + 1641))
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    if (*(qword_100B5EE08 + 1636))
    {
      v6 = sub_1003078F4(v15, "\r\n+CIND: %c,%c,%d,%d,%d,%c,%d\r\n", v5);
    }

    else
    {
      v6 = sub_1003078F4(v15, "\r\n+CIND: %c,%c,%d,%d,%d,%c\r\n");
    }

    v12 = v6;
    if (v6)
    {
      sub_10030745C(v15);
      goto LABEL_24;
    }

    v14 = sub_100307920(v15);
    v10 = strlen(v14);
    a1 = v2;
    v9 = v14;
    v11 = 1;
LABEL_21:
    v4 = sub_10020F54C(a1, 4, v9, v10, v11);
    if (!v4)
    {
      v4 = sub_10020F9D8(v2, 0);
      if (!v4)
      {
        return 412;
      }
    }

    goto LABEL_23;
  }

  return 2701;
}

uint64_t sub_100213970(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v3)
  {
    return 134;
  }

  v4 = v3;
  if ((sub_10020F7D0(a1) & 4) == 0)
  {
    return 2701;
  }

  v6 = *v4;
  if (v6 == 48)
  {
    v7 = qword_100B5EE08;
    v9 = 8;
    while (*v7 != a1)
    {
      v7 += 100;
      if (!--v9)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
    goto LABEL_17;
  }

  if (v6 != 49)
  {
    return 134;
  }

  v7 = qword_100B5EE08;
  v8 = 8;
  while (*v7 != a1)
  {
    v7 += 100;
    if (!--v8)
    {
      goto LABEL_18;
    }
  }

  v10 = 1;
LABEL_17:
  *(v7 + 33) = v10;
LABEL_18:
  v11 = sub_10020F9D8(a1, 0);
  if (v11)
  {
    sub_100212578(a1, 1, v11);
  }

  return 412;
}

uint64_t sub_100213A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    return 1802;
  }

  v6 = v4;
  v7 = qword_100B5EE08;
  if (*(qword_100B5EE08 + 1639))
  {
    v8 = 8;
    v9 = qword_100B5EE08;
    while (*v9 != a1)
    {
      v9 += 100;
      if (!--v8)
      {
        goto LABEL_35;
      }
    }

    *(v9 + 35) = 2;
LABEL_35:
    (*(v7 + 1616))(a1, a2);
    if (*(qword_100B5EE08 + 200 * v6 + 12) && ((*(qword_100B5EE08 + 1636) & 1) == 0 || (sub_10020F7D0(a1) & 2) == 0))
    {
      sub_100215704(a1);
    }

    return 412;
  }

  v10 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v10)
  {
LABEL_28:
    if (*(qword_100B5EE08 + 200 * v6 + 12) && ((*(qword_100B5EE08 + 1636) & 1) == 0 || (sub_10020F7D0(a1) & 2) == 0))
    {
      sub_100215704(a1);
    }

    v17 = sub_10020F9D8(a1, 0);
    if (v17)
    {
      sub_100212578(a1, 1, v17);
    }

    return 412;
  }

  v11 = 0;
  while (v11 != 3)
  {
    if (!v11 && *v10 != 51)
    {
      return 134;
    }

LABEL_27:
    ++v11;
    v10 = sub_1001F0A88(a2, (a2 + 24), 0);
    if (!v10)
    {
      goto LABEL_28;
    }
  }

  v12 = *v10;
  if (v12 == 48)
  {
    v13 = qword_100B5EE08;
    v15 = 8;
    while (*v13 != a1)
    {
      v13 += 100;
      if (!--v15)
      {
        goto LABEL_27;
      }
    }

    v16 = 0;
    goto LABEL_26;
  }

  if (v12 == 49)
  {
    v13 = qword_100B5EE08;
    v14 = 8;
    while (*v13 != a1)
    {
      v13 += 100;
      if (!--v14)
      {
        goto LABEL_27;
      }
    }

    v16 = 1;
LABEL_26:
    *(v13 + 35) = v16;
    goto LABEL_27;
  }

  return 101;
}

uint64_t sub_100213C50(__int16 a1, uint64_t a2)
{
  if (!sub_1001F0A88(a2, (a2 + 24), 0))
  {
    return 134;
  }

  memset(v5, 0, sizeof(v5));
  if ((*(qword_100B5EE08 + 1636) & 0x10) != 0)
  {
    LODWORD(v5[0]) = 14;
    WORD2(v5[0]) = a1;
    (*(qword_100B5EE08 + 1608))(v5);
    return 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Input request not supported, rejecting %d", *(qword_100B5EE08 + 1636));
      v3 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 2701;
  }
}

uint64_t sub_100213D20(unsigned __int16 a1)
{
  v4 = 0;
  v5 = 0;
  v2 = 12;
  v3 = a1;
  (*(qword_100B5EE08 + 1608))(&v2);
  return 0;
}

uint64_t sub_100213D68(__int16 a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if ((*(qword_100B5EE08 + 1636) & 4) != 0)
  {
    LODWORD(v7) = 13;
    WORD2(v7) = a1;
    v4 = sub_1001F0A88(a2, (a2 + 24), 0);
    if (v4)
    {
      v5 = *v4;
      if (v5 == 49)
      {
        v6 = 1;
        goto LABEL_12;
      }

      if (v5 == 48)
      {
        v6 = 0;
LABEL_12:
        LOBYTE(v8) = v6;
        (*(qword_100B5EE08 + 1608))(&v7);
        return 0;
      }
    }

    return 134;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Voice recognition not supported, rejecting");
    v2 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return 2701;
}

uint64_t sub_100213E50(__int16 a1, uint64_t a2)
{
  if ((*(qword_100B5EE08 + 1636) & 2) == 0)
  {
    return 2701;
  }

  v4 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v4)
  {
    return 101;
  }

  memset(v5, 0, sizeof(v5));
  if (*v4 != 48)
  {
    return 101;
  }

  LODWORD(v5[0]) = 16;
  WORD2(v5[0]) = a1;
  (*(qword_100B5EE08 + 1608))(v5);
  return 0;
}

uint64_t sub_100213EE4(uint64_t a1, unsigned __int8 **a2)
{
  if (*a2)
  {
    v3 = sub_1001F0A88(a2, a2 + 3, 0);
    if (v3)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v4 = *v3;
      if ((v4 - 48) < 0xA || v4 == 35 || v4 == 42 || (v4 - 65) <= 3)
      {
        LODWORD(v7) = 19;
        WORD2(v7) = a1;
        LOBYTE(v8) = v4;
        (*(qword_100B5EE08 + 1608))(&v7);
        return 0;
      }

      else
      {
        return 101;
      }
    }

    else
    {
      return 134;
    }
  }

  else
  {
    v6 = sub_10020F9D8(a1, 0);
    if (v6)
    {
      sub_100212578(a1, 1, v6);
    }

    return 412;
  }
}

uint64_t sub_100213FC4(unsigned __int16 a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v4 = 17;
  v5 = a1;
  v2 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v2)
  {
    return 134;
  }

  BYTE4(v5) = sub_1003072F0(v2);
  (*(qword_100B5EE08 + 1608))(&v4);
  return 0;
}

uint64_t sub_100214034(unsigned __int16 a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v4 = 18;
  v5 = a1;
  v2 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v2)
  {
    return 134;
  }

  BYTE4(v5) = sub_1003072F0(v2);
  (*(qword_100B5EE08 + 1608))(&v4);
  return 0;
}

uint64_t sub_1002140A4(__int16 a1, unsigned __int8 **a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (*a2 == 2)
  {
    v3 = sub_1001F0A88(a2, a2 + 3, 0);
    if (v3)
    {
      LODWORD(v5) = 26;
      WORD2(v5) = a1;
      LODWORD(v6) = sub_1003072F0(v3);
      goto LABEL_6;
    }

    return 134;
  }

  else
  {
    if (*a2 == 1)
    {
      LODWORD(v5) = 25;
      WORD2(v5) = a1;
LABEL_6:
      (*(qword_100B5EE08 + 1608))(&v5);
      return 0;
    }

    return 2701;
  }
}

uint64_t sub_10021414C(unsigned __int16 a1, _DWORD *a2)
{
  if (*a2 != 2)
  {
    return 2701;
  }

  v9 = v2;
  v10 = v3;
  v7 = 0;
  v8 = 0;
  v5 = 24;
  v6 = a1;
  (*(qword_100B5EE08 + 1608))(&v5);
  return 0;
}

uint64_t sub_1002141AC(unsigned __int16 a1)
{
  if ((*(qword_100B5EE08 + 1636) & 0x40) == 0)
  {
    return 2701;
  }

  v8 = v1;
  v9 = v2;
  v6 = 0;
  v7 = 0;
  v4 = 22;
  v5 = a1;
  (*(qword_100B5EE08 + 1608))(&v4);
  return 0;
}

uint64_t sub_100214208(uint64_t a1, unsigned __int8 **a2)
{
  if (*a2 == 2)
  {
    v5 = sub_1001F0A88(a2, a2 + 3, 0);
    if (v5 && sub_1003072F0(v5) == 3 && (v6 = sub_1001F0A88(a2, a2 + 3, 0)) != 0 && !sub_1003072F0(v6))
    {
      v7 = sub_10020F9D8(a1, 0);
      if (v7)
      {
        sub_100212578(a1, 1, v7);
      }

      return 412;
    }

    else
    {
      return 134;
    }
  }

  else if (*a2 == 1)
  {
    v10 = 0;
    v11 = 0;
    v8 = 23;
    v9 = a1;
    (*(qword_100B5EE08 + 1608))(&v8);
    return 0;
  }

  else
  {
    return 2701;
  }
}

uint64_t sub_1002142EC(uint64_t a1, uint64_t a2)
{
  if ((*(qword_100B5EE08 + 1636) & 0x100) == 0)
  {
    v3 = sub_10020F948(a1, 2707);
    if (!v3)
    {
      return 412;
    }

LABEL_3:
    sub_100212578(a1, 1, v3);
    return 412;
  }

  v5 = sub_1001F0A88(a2, (a2 + 24), 0);
  if (!v5)
  {
    return 134;
  }

  v6 = *v5;
  if (v6 == 48)
  {
    v7 = qword_100B5EE08;
    v9 = 8;
    while (*v7 != a1)
    {
      v7 += 100;
      if (!--v9)
      {
        goto LABEL_21;
      }
    }

    v10 = 0;
LABEL_20:
    *(v7 + 34) = v10;
LABEL_21:
    v3 = sub_10020F9D8(a1, 0);
    if (!v3)
    {
      return 412;
    }

    goto LABEL_3;
  }

  if (v6 == 49)
  {
    v7 = qword_100B5EE08;
    v8 = 8;
    while (*v7 != a1)
    {
      v7 += 100;
      if (!--v8)
      {
        goto LABEL_21;
      }
    }

    v10 = 1;
    goto LABEL_20;
  }

  return 101;
}

uint64_t sub_1002143EC(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 2)
  {
    return 2701;
  }

  v14[0] = 0;
  v14[1] = 0;
  v3 = sub_100307404(v14, 0x10uLL);
  if (!v3)
  {
    v5 = sub_1003078F4(v14, "\r\n+CSQ: %d,%d\r\n", byte_1008A38C8[*(qword_100B5EE08 + 1646)], 99);
    if (v5)
    {
      v6 = v5;
      sub_10030745C(v14);
      v7 = a1;
      v8 = 25;
      v9 = v6;
    }

    else
    {
      v10 = sub_100307920(v14);
      v11 = strlen(v10);
      v9 = sub_10020F54C(a1, 25, v10, v11, 1);
      if (v9)
      {
        v7 = a1;
        v8 = 25;
      }

      else
      {
        v12 = sub_10020F9D8(a1, 0);
        if (!v12)
        {
          return 412;
        }

        v9 = v12;
        v7 = a1;
        v8 = 1;
      }
    }

    sub_100212578(v7, v8, v9);
    return 412;
  }

  v4 = v3;
  sub_100212578(a1, 25, v3);
  return v4;
}

uint64_t sub_100214508(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 2)
  {
    return 2701;
  }

  v15[0] = 0;
  v15[1] = 0;
  v3 = sub_100307404(v15, 0xDuLL);
  if (!v3)
  {
    if (*(qword_100B5EE08 + 1642))
    {
      v5 = 4;
    }

    else if (*(qword_100B5EE08 + 1643) - 1 > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = dword_1008A38D0[(*(qword_100B5EE08 + 1643) - 1)];
    }

    v6 = sub_1003078F4(v15, "\r\n+CPAS: %d\r\n", v5);
    if (v6)
    {
      v7 = v6;
      sub_10030745C(v15);
      v8 = a1;
      v9 = 25;
      v10 = v7;
    }

    else
    {
      v11 = sub_100307920(v15);
      v12 = strlen(v11);
      v10 = sub_10020F54C(a1, 25, v11, v12, 1);
      if (v10)
      {
        v8 = a1;
        v9 = 25;
      }

      else
      {
        v13 = sub_10020F9D8(a1, 0);
        if (!v13)
        {
          return 412;
        }

        v10 = v13;
        v8 = a1;
        v9 = 1;
      }
    }

    sub_100212578(v8, v9, v10);
    return 412;
  }

  v4 = v3;
  sub_100212578(a1, 25, v3);
  return v4;
}