uint64_t sub_1002E94CC(unsigned __int8 *a1)
{
  if (!*(&xmmword_100B6B4C0 + 1))
  {
    return 118;
  }

  if (!sub_1002E92FC(a1))
  {
    return 4151;
  }

  v2 = sub_100007618(0x10uLL, 0x10200403D1E2031uLL);
  if (!v2)
  {
    return 106;
  }

  v9 = v2;
  v10 = sub_100018960(178, sub_1002E961C, v3, v4, v5, v6, v7, v8, *a1);
  if (v10)
  {
    v11 = v10;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not remove device from filter accept list %!", v11, a1 + 1);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_10000C1E8(v9);
  }

  else
  {
    v13 = *a1;
    v14 = *(a1 + 2);
    *(v9 + 6) = a1[6];
    *(v9 + 2) = v14;
    *v9 = v13;
    *(v9 + 1) = 0;
    if (qword_100B6B4D8)
    {
      *(qword_100B6B4D8 + 8) = v9;
      qword_100B6B4D8 = v9;
    }

    v11 = 0;
    if (!qword_100B6B4D0)
    {
      qword_100B6B4D0 = v9;
      qword_100B6B4D8 = v9;
    }
  }

  return v11;
}

uint64_t sub_1002E961C(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error removing device from filter accept list %!", a1);
      v25 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    sub_1001BAA68(a1, "Filter Accept List remove error");
  }

  if (!qword_100B6B4D0)
  {
    sub_1000D660C();
  }

  if (BYTE2(xmmword_100B6B4C0))
  {
    v1 = *(&xmmword_100B6B4C0 + 1);
    v2 = (BYTE2(xmmword_100B6B4C0) - 1);
    v3 = *(&xmmword_100B6B4C0 + 1);
    v4 = BYTE2(xmmword_100B6B4C0);
    while (*v3 != *qword_100B6B4D0 || *(v3 + 3) != *(qword_100B6B4D0 + 3))
    {
      --v2;
      v3 += 7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    --BYTE2(xmmword_100B6B4C0);
    v7 = BYTE2(xmmword_100B6B4C0);
    if (v2)
    {
      v8 = *(&xmmword_100B6B4C0 + 1) - BYTE2(xmmword_100B6B4C0) + 8 * BYTE2(xmmword_100B6B4C0);
      v9 = *v8;
      v10 = *(v8 + 4);
      *(v3 + 6) = *(v8 + 6);
      *(v3 + 4) = v10;
      *v3 = v9;
      v1 = *(&xmmword_100B6B4C0 + 1);
      v7 = BYTE2(xmmword_100B6B4C0);
    }

    v11 = (v1 - v7 + 8 * v7);
    *(v11 + 3) = 0;
    *v11 = 0;
  }

  else
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Device is not in the list anymore");
      v6 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  v12 = word_100B6B478;
  if (word_100B6B478)
  {
    v13 = 0;
    v14 = qword_100B6B4D0;
    do
    {
      v15 = *(qword_100B6B480[v13] + 8);
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v15(v14, 0);
        v14 = qword_100B6B4D0;
        v12 = word_100B6B478;
      }

      ++v13;
    }

    while (v13 < v12);
  }

  sub_1002E9A94();
  sub_1002BFDEC(1, v17, v18, v19, v20, v21, v22, v23);
  sub_1002B1E10(1);
  return sub_1002D9C80(1);
}

uint64_t sub_1002E9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(&xmmword_100B6B4C0 + 1))
  {
    return 118;
  }

  v8 = sub_100018960(176, sub_1002E989C, a3, a4, a5, a6, a7, a8, v11);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not remove device from filter accept list %!", v8);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v8;
}

uint64_t sub_1002E989C(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error clearing filter accept list %!", a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    sub_1001BAA68(a1, "Filter Accept List clear error");
  }

  bzero(*(&xmmword_100B6B4C0 + 1), 7 * xmmword_100B6B4C0);
  BYTE2(xmmword_100B6B4C0) = 0;
  sub_1002BFDEC(1, v1, v2, v3, v4, v5, v6, v7);
  sub_1002B1E10(1);

  return sub_1002D9C80(1);
}

uint64_t sub_1002E9984(int *a1)
{
  if (sub_1002E92FC(a1))
  {
    return 4152;
  }

  result = 0;
  v3 = BYTE2(xmmword_100B6B4C0);
  v4 = *(&xmmword_100B6B4C0 + 1) - BYTE2(xmmword_100B6B4C0) + 8 * BYTE2(xmmword_100B6B4C0);
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v4 + 6) = *(a1 + 6);
  *(v4 + 4) = v6;
  *v4 = v5;
  BYTE2(xmmword_100B6B4C0) = v3 + 1;
  return result;
}

void *sub_1002E99F0(unsigned int a1)
{
  LOWORD(xmmword_100B6B4C0) = a1;
  if (*(&xmmword_100B6B4C0 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B6B4C0 + 1));
  }

  result = sub_100007618(7 * a1, 0x1000040DEAB1946uLL);
  *(&xmmword_100B6B4C0 + 1) = result;
  BYTE2(xmmword_100B6B4C0) = 0;
  qword_100B6B4D8 = 0;
  qword_100B6B4D0 = 0;
  return result;
}

double sub_1002E9A5C()
{
  if (*(&xmmword_100B6B4C0 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B6B4C0 + 1));
  }

  result = 0.0;
  xmmword_100B6B4C0 = 0u;
  *&qword_100B6B4D0 = 0u;
  return result;
}

void sub_1002E9A94()
{
  if (qword_100B6B4D0)
  {
    v0 = *(qword_100B6B4D0 + 8);
    sub_10000C1E8(qword_100B6B4D0);
    qword_100B6B4D0 = v0;
    if (!v0)
    {
      qword_100B6B4D8 = 0;
    }
  }

  else
  {

    sub_1000D660C();
  }
}

uint64_t sub_1002E9AF0(uint64_t a1)
{
  if (qword_100B6B4E0)
  {
    return 119;
  }

  v4 = sub_100007618(0x18uLL, 0x60040149E097CuLL);
  qword_100B6B4E0 = v4;
  if (!v4)
  {
    return 106;
  }

  v1 = sub_10028E64C(42, 2, 10, 10, v4, sub_1002E9BF0);
  if (v1)
  {
    sub_10000C1E8(qword_100B6B4E0);
    qword_100B6B4E0 = 0;
    return v1;
  }

  if (!sub_10028E64C(43, 2, 10, 10, (qword_100B6B4E0 + 8), sub_1002E9EC8))
  {
    v1 = 0;
    *(qword_100B6B4E0 + 16) = a1;
    return v1;
  }

  v5 = sub_10028E908(*qword_100B6B4E0);
  sub_10000C1E8(qword_100B6B4E0);
  qword_100B6B4E0 = 0;
  return v5;
}

void sub_1002E9BF0(__int128 *a1, _BYTE *a2, int a3)
{
  if (!a2)
  {
    v10 = "buf";
    goto LABEL_40;
  }

  if (!a3)
  {
    v10 = "(length) > 0";
LABEL_40:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 425, v10);
  }

  v11 = a2;
  v12 = a3;
  v13 = a3;
  v14 = 65537;
  v4 = *a2;
  switch(*a2)
  {
    case 1:
      v5 = sub_1002EAC28(a1, &v11);
      goto LABEL_32;
    case 2:
      v5 = sub_1002EAF24(a1, &v11);
      goto LABEL_32;
    case 3:
      v5 = sub_1002EB148(a1, &v11);
      goto LABEL_32;
    case 4:
      v5 = sub_1002EB394(a1, &v11);
      goto LABEL_32;
    case 5:
      v5 = sub_1002EB49C(a1, &v11);
      goto LABEL_32;
    case 6:
      v8 = *(*(qword_100B6B4E0 + 16) + 40);
      if (v8)
      {
        goto LABEL_27;
      }

      v7 = 3;
      goto LABEL_33;
    case 7:
      v5 = sub_1002EB60C(a1, &v11);
      goto LABEL_32;
    case 8:
      sub_1002EB69C(a1, &v11);
      return;
    case 9:
      v8 = *(*(qword_100B6B4E0 + 16) + 64);
LABEL_27:
      v8(a1);
      return;
    case 0xA:
      v5 = sub_1002EB800(a1, &v11);
      goto LABEL_32;
    case 0xC:
      v5 = sub_1002EB8F8(a1, &v11);
      goto LABEL_32;
    case 0xD:
      (*(*(qword_100B6B4E0 + 16) + 88))(a1);
      return;
    case 0xE:
      v5 = sub_1002EBA54(a1, &v11);
      goto LABEL_32;
    case 0xF:
      v5 = sub_1002EBB50(a1, &v11);
      goto LABEL_32;
    case 0x10:
      v5 = sub_1002EBCB0(a1, &v11);
      goto LABEL_32;
    case 0x11:
      v5 = sub_1002EBE50(a1, &v11);
      goto LABEL_32;
    case 0x12:
      v5 = sub_1002EBF4C(a1, &v11);
      goto LABEL_32;
    case 0x13:
      v5 = sub_1002EC1AC(a1, &v11);
      goto LABEL_32;
    case 0x14:
      v5 = sub_1002EC3A8(a1, &v11);
      goto LABEL_32;
    case 0x15:
      v5 = sub_1002EC5A4(a1, &v11);
      goto LABEL_32;
    case 0x16:
      v5 = sub_1002EC754(a1, &v11);
LABEL_32:
      v7 = v5;
      if (v5)
      {
        goto LABEL_33;
      }

      return;
    default:
      if (sub_10000C240())
      {
        sub_10000AF54("Unhandled opcode: %u", v4);
        v6 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v7 = 1;
LABEL_33:
      if (sub_10000C240())
      {
        sub_10000AF54("Sending error %u", v7);
        v9 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v15[0] = v4;
      v15[1] = v7;
      v15[2] = 0;
      sub_1002E9FD4(a1, 8u, v15, 3uLL);
      return;
  }
}

uint64_t sub_1002E9EC8()
{
  v0 = *(*(qword_100B6B4E0 + 16) + 96);
  if (v0)
  {
    return v0();
  }

  return result;
}

uint64_t sub_1002E9EE4()
{
  if (!qword_100B6B4E0)
  {
    return 121;
  }

  result = sub_10028E908(*(qword_100B6B4E0 + 8));
  if (!result)
  {
    result = sub_10028E908(*qword_100B6B4E0);
    if (!result)
    {
      sub_10000C1E8(qword_100B6B4E0);
      result = 0;
      qword_100B6B4E0 = 0;
    }
  }

  return result;
}

uint64_t sub_1002E9F40(__int128 *a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  v6 = 1346454860;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_1002E9FD4(a1, 1u, &v6, 0xCuLL);
}

uint64_t sub_1002E9FD4(__int128 *a1, unsigned __int8 a2, char *a3, size_t a4)
{
  v14 = a2;
  if (!a1)
  {
    v9 = 1310;
    goto LABEL_10;
  }

  memset(&v13[1], 0, 96);
  if (a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = 0uLL;
  v8 = sub_10001FF10(v13, v7);
  if (v8)
  {
    v9 = v8;
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send PDU %u: %!", v14, v9);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return v9;
  }

  v10 = sub_10001F968(v13, &v14, 1uLL, 0);
  if (v10)
  {
    v9 = v10;
    sub_1000B7B40(v13);
    goto LABEL_10;
  }

  if (!a3 || (v9 = sub_10001F968(v13, a3, a4, 2u), !v9))
  {
    v9 = sub_1000B7EDC(0, 42, a1, v13, 1);
  }

  sub_1000B7B40(v13);
  result = 0;
  if (v9 && v9 != 412)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002EA118(__int128 *a1, char a2, char a3, char a4, char a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return sub_1002E9FD4(a1, 3u, v6, 4uLL);
}

uint64_t sub_1002EA154(uint64_t a1, int a2, int a3, __int16 a4, char a5)
{
  v11 = a4;
  BYTE1(v11) = HIBYTE(a4);
  BYTE2(v11) = a3 == 2;
  if (a1 && sub_1000ABD24(a1))
  {
    *(a1 + 127) = 257;
    *(a1 + 129) = a5;
    if (a2)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    result = sub_1002E9FD4(a1, 5u, &v11, v8);
    if (!result)
    {
      sub_1002C0B70(a1, 5u);
      return 0;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid Handle: 0x%x", a1);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002EA244(uint64_t a1)
{
  v2 = sub_1002E9FD4(a1, 6u, 0, 0);
  if (!v2)
  {
    *(a1 + 128) = 0;
    sub_1002C0B70(a1, 6u);
  }

  return v2;
}

uint64_t sub_1002EA2A4(__int128 *a1, char a2, __int16 a3)
{
  v4 = a2;
  v5 = a3;
  return sub_1002E9FD4(a1, 8u, &v4, 3uLL);
}

uint64_t sub_1002EA310(__int128 *a1, uint64_t a2, char a3)
{
  *&v6[3] = 0;
  *v6 = 0;
  sub_1000075EC(v6, a2, 6uLL);
  v6[6] = a3;
  return sub_1002E9FD4(a1, 0x10u, v6, 7uLL);
}

uint64_t sub_1002EA368(__int128 *a1, uint64_t a2, __int16 a3, uint64_t *a4)
{
  v8 = 0;
  v9 = 0;
  sub_1000075EC(&v8, a2, 6uLL);
  HIWORD(v8) = a3;
  v9 = *a4;
  return sub_1002E9FD4(a1, 0x12u, &v8, 0x10uLL);
}

uint64_t sub_1002EA3FC(__int128 *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  *(&v6[1] + 6) = 0;
  sub_1000075EC(v6, a2, 6uLL);
  *(v6 + 6) = *a3;
  return sub_1002E9FD4(a1, 0x13u, v6, 0x16uLL);
}

uint64_t sub_1002EA484(__int128 *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  *(&v6[1] + 6) = 0;
  sub_1000075EC(v6, a2, 6uLL);
  *(v6 + 6) = *a3;
  return sub_1002E9FD4(a1, 0x14u, v6, 0x16uLL);
}

BOOL sub_1002EA50C(unsigned int a1)
{
  v2 = 10 - sub_10029E664(43);
  if (v2 < a1)
  {
    if (sub_10000C240())
    {
      v3 = sub_10029E664(43);
      sub_10000AF54("LEA Queue full: request buffers %d, queue-size %d", a1, v3);
      v4 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  sub_10029E054();
  return v2 >= a1;
}

uint64_t sub_1002EA5B0(__int128 *a1, char *a2, size_t a3, char a4, int a5)
{
  v17 = a4;
  if (a1 && sub_1000ABD24(a1))
  {
    if (a5)
    {
      v9 = 412;
    }

    else
    {
      v9 = 625;
    }

    v10 = sub_100084230() && sub_100084230() < 0x7D0 || sub_100084230() >> 3 >= 0x271 && sub_100084230() >> 4 < 0x177 || sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F && sub_100084230() >= 0xBB8;
    memset(v16, 0, sizeof(v16));
    v12 = sub_10001FF10(v16, 2u);
    if (!v12)
    {
      v14 = sub_10001F968(v16, a2, a3, 2u);
      if (!v14)
      {
        if (!v10 || (v14 = sub_10001F968(v16, &v17, 1uLL, 0), !v14))
        {
          if (a5)
          {
            v14 = sub_1000B7EDC(0, 43, a1, v16, 1);
          }

          else
          {
            v14 = sub_100258D30(a1, v16, WORD2(v16[0]));
          }
        }
      }

      v12 = v14;
      sub_1000B7B40(v16);
    }

    if (v12 != v9)
    {
      if (v12)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send audio: %!", v12);
          v15 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send audio as handle is invalid");
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return v12;
}

uint64_t sub_1002EA7BC(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 1310;
  }

  if (a3 == 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  return sub_1002C1774(a1, a2, a2, 0, 300, v3, v3);
}

BOOL sub_1002EA7EC(unsigned __int16 *a1, int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  return sub_1002C3958(a1, a2, v3, v3);
}

uint64_t sub_1002EA804(uint64_t a1)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 1310;
  }

  if (*(a1 + 132) <= 4u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnecting LEA device before it is ready, tell the upper layer we failed");
      v2 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136446210;
        v5 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", &v4, 0xCu);
      }
    }

    *(a1 + 132) = 6;
    *(a1 + 140) = 5300;
  }

  return sub_1002BF944(a1, 19);
}

uint64_t sub_1002EA900(uint64_t a1)
{
  result = sub_1000CB318(a1);
  if (result)
  {

    return sub_1002DBE90(a1);
  }

  return result;
}

uint64_t sub_1002EA948(uint64_t a1)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 1310;
  }

  if (sub_100084230() >> 3 >= 0x271 && sub_100084230() >> 4 < 0x177)
  {
    return 0;
  }

  v2 = *(a1 + 148);
  if (v2 == 2)
  {
    v3 = 60;
  }

  else if (v2 == 1)
  {
    if (*(a1 + 104) <= 0x3Cu && *(a1 + 108) <= 0x3Cu)
    {
      return 0;
    }

    v3 = 40;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 104);
  if (v5 == v3 && *(a1 + 108) == v3 || v5 <= 0x1B && *(a1 + 108) < 0x1Cu)
  {
    return 0;
  }

  if (v2 == 2)
  {
    v6 = 4 * v3 + 60;
  }

  else if (v2 == 1)
  {
    v6 = 8 * v3 + 112;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x148)
  {
    v7 = 328;
  }

  else
  {
    v7 = v6;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LEA set data length %dB %dus", v3, v7);
    v8 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return sub_1002A0D10(a1);
}

void sub_1002EAB1C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("LEA setTxDataLengthExtendedCB %!", a1);
    v2 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1 && sub_10000C240())
  {
    sub_10000AF54("Set data length extended error status %!", a1);
    v3 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10080FEE0();
    }
  }
}

uint64_t sub_1002EAC28(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 48, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 48, "uint8_t LEA_RecvVersion(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 49, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_14;
  }

  v4 = *(a2 + 12);
  if (*(a2 + 10) - v4 <= 3)
  {
    *(a2 + 15) = 1;
LABEL_14:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 49, "uint8_t LEA_RecvVersion(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v14 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v14 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 50, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_15;
  }

  v5 = *(*a2 + v4);
  *(a2 + 12) = v4 + 4;
  if (*(a2 + 10) - (v4 + 4) <= 1)
  {
    *(a2 + 15) = 1;
LABEL_15:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 50, "uint8_t LEA_RecvVersion(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v15 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v15 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 51, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_16;
  }

  v6 = *(*a2 + (v4 + 4));
  *(a2 + 12) = v4 + 6;
  if (*(a2 + 10) - (v4 + 6) <= 1)
  {
    *(a2 + 15) = 1;
LABEL_16:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 51, "uint8_t LEA_RecvVersion(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v16 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v16 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 52, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_17;
  }

  v7 = *(*a2 + (v4 + 6));
  *(a2 + 12) = v4 + 8;
  if (*(a2 + 10) - (v4 + 8) <= 1)
  {
    *(a2 + 15) = 1;
LABEL_17:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 52, "uint8_t LEA_RecvVersion(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    goto LABEL_18;
  }

  v8 = *(*a2 + (v4 + 8));
  *(a2 + 12) = v4 + 10;
  if (*(a2 + 10) - (v4 + 10) <= 1)
  {
LABEL_18:
    *(a2 + 15) = 1;
    goto LABEL_19;
  }

  v9 = bswap32(v5);
  v10 = (*a2 + (v4 + 10));
  v11 = *v10;
  v12 = v10[1];
  *(a2 + 12) = v4 + 12;
  if (v9 == 1279607120 && (v6 - 1) <= 1u)
  {
    (**(qword_100B6B4E0 + 16))(a1, v6, v7, v8, v11 | (v12 << 8));
    return 0;
  }

LABEL_19:
  v13 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read version");
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v13;
}

uint64_t sub_1002EAF24(uint64_t a1, uint64_t *a2)
{
  if (!*(*(qword_100B6B4E0 + 16) + 8))
  {
    return 3;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 69, "uint16_t LEA_RecvSupportedCodecList(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 10) - *(a2 + 12);
  }

  __chkstk_darwin(a1);
  v7 = &v18 - v6;
  bzero(&v18 - v6, v8);
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 72, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v9 = *a2;
  v10 = *(a2 + 6);
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 72, "uint16_t LEA_RecvSupportedCodecList(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 5) - v10;
  }

  if (v11 >= v4)
  {
    if (v4)
    {
      v12 = (v9 + v10);
      v13 = v7;
      do
      {
        v14 = *v12++;
        *v13++ = v14;
      }

      while (v13 < &v7[v4]);
    }

    *(a2 + 6) += v4;
    if (*(a2 + 15))
    {
      v15 = 1;
    }

    else
    {
      v15 = v4 == 0;
    }

    if (!v15)
    {
      (*(*(qword_100B6B4E0 + 16) + 8))(a1, v7, v4);
      return 0;
    }
  }

  else
  {
    *(a2 + 15) = 1;
  }

  v5 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read supported codec list");
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v5;
}

uint64_t sub_1002EB148(uint64_t a1, uint64_t *a2)
{
  if (!*(*(qword_100B6B4E0 + 16) + 16))
  {
    return 3;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 97, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 97, "uint16_t LEA_RecvSelectCodec(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 98, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_13;
  }

  v5 = *(a2 + 6);
  if (*(a2 + 5) <= v5)
  {
    *(a2 + 15) = 1;
LABEL_13:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 98, "uint16_t LEA_RecvSelectCodec(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v13 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v13 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 99, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_14;
  }

  v6 = *a2;
  *(a2 + 6) = v5 + 1;
  if (*(a2 + 5) <= (v5 + 1))
  {
    *(a2 + 15) = 1;
LABEL_14:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 99, "uint16_t LEA_RecvSelectCodec(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v14 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v14 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 100, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_15;
  }

  v7 = *(v6 + v5);
  v8 = *a2;
  *(a2 + 6) = v5 + 2;
  if (*(a2 + 5) > (v5 + 2))
  {
    v9 = *(v8 + v5 + 1);
    v10 = *a2;
    *(a2 + 6) = v5 + 3;
    if (*(a2 + 5) > (v5 + 3))
    {
      v11 = *(v10 + v5 + 2);
      v12 = *a2;
      *(a2 + 6) = v5 + 4;
      (*(*(qword_100B6B4E0 + 16) + 16))(a1, v7, v9, v11, *(v12 + v5 + 3));
      return 0;
    }

    goto LABEL_16;
  }

  *(a2 + 15) = 1;
LABEL_15:
  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 100, "uint16_t LEA_RecvSelectCodec(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_16:
  *(a2 + 15) = 1;
  v4 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read select codec");
    v15 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v4;
}

uint64_t sub_1002EB394(uint64_t a1, uint64_t a2)
{
  v2 = *(*(qword_100B6B4E0 + 16) + 24);
  if (!v2)
  {
    return 3;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 122, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 122, "uint16_t LEA_RecvCodecReady(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
  }

  else
  {
    v5 = *(a2 + 12);
    if (*(a2 + 10) - v5 >= 2)
    {
      v6 = *(*a2 + v5);
      *(a2 + 12) = v5 + 2;
      v2(a1, v6);
      return 0;
    }
  }

  *(a2 + 15) = 1;
  v4 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read codec ready");
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v4;
}

uint64_t sub_1002EB49C(uint64_t a1, uint64_t *a2)
{
  if (!*(*(qword_100B6B4E0 + 16) + 32))
  {
    return 3;
  }

  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 145, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 145, "uint16_t LEA_RecvStartStream(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
  }

  else
  {
    v5 = *(a2 + 5);
    v6 = *(a2 + 6);
    if (v5 - v6 >= 2)
    {
      v7 = *a2;
      v8 = *(*a2 + v6);
      *(a2 + 6) = v6 + 2;
      if (v5 - (v6 + 2) >= 2)
      {
        v9 = *(v7 + (v6 + 2));
        *(a2 + 6) = v6 + 4;
LABEL_15:
        (*(*(qword_100B6B4E0 + 16) + 32))(a1, v8, v9);
        return 0;
      }

LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }
  }

  *(a2 + 15) = 1;
  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 146, "uint16_t LEA_RecvStartStream(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
  v8 = *(a2 + 15);
  if (!*(a2 + 15))
  {
    goto LABEL_14;
  }

  v4 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read start stream");
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v4;
}

uint64_t sub_1002EB60C(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(qword_100B6B4E0 + 16) + 48);
  if (!v2)
  {
    return 3;
  }

  v4 = *a2;
  v5 = *(a2 + 6);
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 181, "uint16_t LEA_RecvPassthrough(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 5) - v5;
  }

  v2(a1, v4 + v5, v6);
  return 0;
}

void sub_1002EB69C(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 194, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 194, "void LEA_RecvError(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 195, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_11;
  }

  v4 = *(a2 + 6);
  if (*(a2 + 5) <= v4)
  {
    *(a2 + 15) = 1;
LABEL_11:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 195, "void LEA_RecvError(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_12:
    *(a2 + 15) = 1;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to read error");
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v5 = *a2;
  *(a2 + 6) = v4 + 1;
  if (*(a2 + 5) - (v4 + 1) < 2)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + v4);
  v7 = *(*a2 + v4 + 1);
  *(a2 + 6) = v4 + 3;
  v8 = *(*(qword_100B6B4E0 + 16) + 56);

  v8(a1, v6, v7);
}

uint64_t sub_1002EB800(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 216, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 216, "uint16_t LEA_RecvSetVolume(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
  }

  else
  {
    v3 = *(a2 + 6);
    if (*(a2 + 5) > v3)
    {
      v4 = *a2;
      *(a2 + 6) = v3 + 1;
      (*(*(qword_100B6B4E0 + 16) + 72))(a1, *(v4 + v3));
      return 0;
    }
  }

  *(a2 + 15) = 1;
  v5 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read set volume");
    v6 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v5;
}

uint64_t sub_1002EB8F8(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 234, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 234, "uint16_t LEA_RecvCapabilities(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 235, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_9;
  }

  v4 = *(a2 + 6);
  if (*(a2 + 5) <= v4)
  {
    *(a2 + 15) = 1;
LABEL_9:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 235, "uint16_t LEA_RecvCapabilities(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    goto LABEL_10;
  }

  v5 = *a2;
  *(a2 + 6) = v4 + 1;
  if (*(a2 + 5) > (v4 + 1))
  {
    v6 = *(v5 + v4);
    v7 = *a2;
    *(a2 + 6) = v4 + 2;
    (*(*(qword_100B6B4E0 + 16) + 80))(a1, v6, *(v7 + v4 + 1));
    return 0;
  }

LABEL_10:
  *(a2 + 15) = 1;
  v8 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read capabilities");
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v8;
}

uint64_t sub_1002EBA54(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 262, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 262, "uint16_t LEA_RecvStateNoti(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_7:
    *(a2 + 15) = 1;
    goto LABEL_8;
  }

  v3 = *(a2 + 6);
  if (*(a2 + 5) <= v3)
  {
    goto LABEL_7;
  }

  v4 = *a2;
  *(a2 + 6) = v3 + 1;
  v5 = *(*(qword_100B6B4E0 + 16) + 104);
  if (v5)
  {
    v5(a1, *(v4 + v3));
    return 0;
  }

LABEL_8:
  v6 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read State Notification");
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v6;
}

uint64_t sub_1002EBB50(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 279, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 279, "uint16_t LEA_RecvLinkQualityNoti(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v3 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v3 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 280, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_10;
  }

  v4 = *(a2 + 6);
  if (*(a2 + 5) <= v4)
  {
    *(a2 + 15) = 1;
LABEL_10:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 280, "uint16_t LEA_RecvLinkQualityNoti(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    goto LABEL_11;
  }

  v5 = *a2;
  v6 = v4 + 1;
  *(a2 + 6) = v4 + 1;
  if (*(a2 + 5) <= (v4 + 1))
  {
LABEL_11:
    *(a2 + 15) = 1;
    goto LABEL_12;
  }

  v7 = *(v5 + v4);
  v8 = *a2;
  *(a2 + 6) = v4 + 2;
  v9 = *(*(qword_100B6B4E0 + 16) + 112);
  if (v9)
  {
    v9(a1, v7, *(v8 + v6));
    return 0;
  }

LABEL_12:
  v10 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read LinkQuality Notification");
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v10;
}

uint64_t sub_1002EBCB0(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 297, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v12 = 0;
  v11 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 297, "uint16_t LEA_RecvBondingStatus(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
  }

  else
  {
    v4 = *(a2 + 6);
    if (*(a2 + 5) - v4 >= 6)
    {
      sub_1000075EC(&v11, *a2 + v4, 6uLL);
      *(a2 + 6) += 6;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 298, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 298, "uint16_t LEA_RecvBondingStatus(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_13:
    *(a2 + 15) = 1;
    goto LABEL_14;
  }

  v5 = *(a2 + 6);
  if (*(a2 + 5) <= v5)
  {
    goto LABEL_13;
  }

  v6 = *a2;
  *(a2 + 6) = v5 + 1;
  v7 = *(*(qword_100B6B4E0 + 16) + 136);
  if (v7)
  {
    v7(a1, &v11, *(v6 + v5));
    return 0;
  }

LABEL_14:
  v8 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Bonding Status");
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v8;
}

uint64_t sub_1002EBE50(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 314, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 314, "uint16_t LEA_RecvBondingStatusRes(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_7:
    *(a2 + 15) = 1;
    goto LABEL_8;
  }

  v3 = *(a2 + 6);
  if (*(a2 + 5) <= v3)
  {
    goto LABEL_7;
  }

  v4 = *a2;
  *(a2 + 6) = v3 + 1;
  v5 = *(*(qword_100B6B4E0 + 16) + 120);
  if (v5)
  {
    v5(a1, *(v4 + v3));
    return 0;
  }

LABEL_8:
  v6 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Bonding Status Response");
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v6;
}

uint64_t sub_1002EBF4C(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 332, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v16 = 0;
  v15 = 0;
  v17 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 332, "uint16_t LEA_RecvCentralID(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
  }

  else
  {
    v4 = *(a2 + 6);
    if (*(a2 + 5) - v4 >= 6)
    {
      sub_1000075EC(&v15, *a2 + v4, 6uLL);
      *(a2 + 6) += 6;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 333, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 333, "uint16_t LEA_RecvCentralID(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    v5 = *(a2 + 14);
    *(a2 + 15) = 1;
    if (v5 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 334, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_18;
  }

  v6 = *(a2 + 6);
  if (*(a2 + 5) - v6 <= 1)
  {
    *(a2 + 15) = 1;
LABEL_18:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 334, "uint16_t LEA_RecvCentralID(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    goto LABEL_19;
  }

  v7 = *a2;
  v8 = *(*a2 + v6);
  *(a2 + 6) = v6 + 2;
  if (*(a2 + 5) - (v6 + 2) < 8)
  {
LABEL_19:
    *(a2 + 15) = 1;
    goto LABEL_20;
  }

  v9 = 0;
  v10 = v7 + (v6 + 2);
  do
  {
    *(&v17 + v9) = *(v10 + v9);
    ++v9;
  }

  while (v9 != 8);
  *(a2 + 6) = v6 + 10;
  v11 = *(*(qword_100B6B4E0 + 16) + 144);
  if (v11)
  {
    v11(a1, &v15, v8, &v17);
    return 0;
  }

LABEL_20:
  v12 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Central ID");
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v12;
}

uint64_t sub_1002EC1AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 351, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  WORD2(v12) = 0;
  LODWORD(v12) = 0;
  v13 = 0;
  v14 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 351, "uint16_t LEA_RecvIDInfo(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    LOWORD(v4) = *(a2 + 12);
  }

  else
  {
    v4 = *(a2 + 12);
    if (*(a2 + 10) - v4 >= 6)
    {
      sub_1000075EC(&v12, *a2 + v4, 6uLL);
      LOWORD(v4) = *(a2 + 12) + 6;
      *(a2 + 12) = v4;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 352, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 352, "uint16_t LEA_RecvIDInfo(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_15:
    *(a2 + 15) = 1;
    goto LABEL_16;
  }

  v5 = v4;
  if (*(a2 + 10) - v4 < 16)
  {
    goto LABEL_15;
  }

  v6 = 0;
  v7 = *a2 + v4;
  do
  {
    *(&v13 + v6) = *(v7 + v6);
    ++v6;
  }

  while (v6 != 16);
  *(a2 + 12) = v5 + 16;
  v8 = *(*(qword_100B6B4E0 + 16) + 152);
  if (v8)
  {
    v8(a1, &v12, &v13);
    return 0;
  }

LABEL_16:
  v9 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read ID info", v12, v13, v14);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v9;
}

uint64_t sub_1002EC3A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 369, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  WORD2(v12) = 0;
  LODWORD(v12) = 0;
  v13 = 0;
  v14 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 369, "uint16_t LEA_RecvEncryptionInfo(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
    LOWORD(v4) = *(a2 + 12);
  }

  else
  {
    v4 = *(a2 + 12);
    if (*(a2 + 10) - v4 >= 6)
    {
      sub_1000075EC(&v12, *a2 + v4, 6uLL);
      LOWORD(v4) = *(a2 + 12) + 6;
      *(a2 + 12) = v4;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 370, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 370, "uint16_t LEA_RecvEncryptionInfo(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_15:
    *(a2 + 15) = 1;
    goto LABEL_16;
  }

  v5 = v4;
  if (*(a2 + 10) - v4 < 16)
  {
    goto LABEL_15;
  }

  v6 = 0;
  v7 = *a2 + v4;
  do
  {
    *(&v13 + v6) = *(v7 + v6);
    ++v6;
  }

  while (v6 != 16);
  *(a2 + 12) = v5 + 16;
  v8 = *(*(qword_100B6B4E0 + 16) + 160);
  if (v8)
  {
    v8(a1, &v12, &v13);
    return 0;
  }

LABEL_16:
  v9 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Encryption Info", v12, v13, v14);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v9;
}

uint64_t sub_1002EC5A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 387, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  v14 = 0;
  v13 = 0;
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 387, "uint16_t LEA_RecvDisconnect(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
  }

  else
  {
    v4 = *(a2 + 12);
    if (*(a2 + 10) - v4 >= 6)
    {
      sub_1000075EC(&v13, *a2 + v4, 6uLL);
      *(a2 + 12) += 6;
      goto LABEL_7;
    }
  }

  *(a2 + 15) = 1;
LABEL_7:
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 388, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 388, "uint16_t LEA_RecvDisconnect(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_13:
    *(a2 + 15) = 1;
    goto LABEL_14;
  }

  v5 = *(a2 + 12);
  if (*(a2 + 10) - v5 <= 1)
  {
    goto LABEL_13;
  }

  v6 = (*a2 + v5);
  v7 = *v6;
  v8 = v6[1];
  *(a2 + 12) = v5 + 2;
  v9 = *(*(qword_100B6B4E0 + 16) + 168);
  if (v9)
  {
    v9(a1, &v13, v7 | (v8 << 8));
    return 0;
  }

LABEL_14:
  v10 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Disconnect");
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v10;
}

uint64_t sub_1002EC754(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 404, "(*bs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 404, "uint16_t LEA_RecvSiri(OI_HCI_CONNECTION_HANDLE, OI_BYTE_STREAM *)");
LABEL_7:
    *(a2 + 15) = 1;
    goto LABEL_8;
  }

  v3 = *(a2 + 6);
  if (*(a2 + 5) <= v3)
  {
    goto LABEL_7;
  }

  v4 = *a2;
  *(a2 + 6) = v3 + 1;
  v5 = *(*(qword_100B6B4E0 + 16) + 128);
  if (v5)
  {
    v5(a1, *(v4 + v3));
    return 0;
  }

LABEL_8:
  v6 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to read Siri");
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }

    return 2;
  }

  return v6;
}

void sub_1002EC850(uint64_t *a1, char a2)
{
  v4 = sub_100084230();
  v5 = v4 - 1;
  v6 = *(a1 + 14);
  if ((v4 - 1) > 0x7CE)
  {
    if (v6 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 35, "(*pData).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      v7 = 35;
      goto LABEL_8;
    }

    v104 = *(a1 + 6);
    if (*(a1 + 5) <= v104)
    {
      goto LABEL_9;
    }

    v9 = 0;
    v105 = *a1;
    *(a1 + 6) = v104 + 1;
    v113 = *(v105 + v104);
  }

  else
  {
    if (v6 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 33, "(*pData).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      v7 = 33;
LABEL_8:
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", v7, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
LABEL_9:
      v8 = 0;
      v113 = 0;
      v9 = 0;
      *(a1 + 15) = 1;
      goto LABEL_10;
    }

    v103 = *(a1 + 6);
    if (*(a1 + 5) - v103 < 4)
    {
      goto LABEL_9;
    }

    v113 = 0;
    v9 = *(*a1 + v103);
    *(a1 + 6) = v103 + 4;
  }

  v8 = 1;
LABEL_10:
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 37, "(*pData).__RWFlag == BYTESTREAM_READ");
  }

  if ((v8 & 1) == 0)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 37, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
    goto LABEL_201;
  }

  v10 = *(a1 + 6);
  if (*(a1 + 5) <= v10)
  {
LABEL_201:
    *(a1 + 15) = 1;
    return;
  }

  v11 = *a1;
  *(a1 + 6) = v10 + 1;
  v112 = *(v11 + v10);
  if (*(v11 + v10))
  {
    v12 = 0;
    v14 = (v4 - 2000) < 0x7D0 || (v4 - 5000) < 0x3E8;
    if (v113)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v113 > 1 && v14;
    v110 = v14;
    v17 = v113 > 2 && v14;
    v111 = v9;
    v18 = (v9 >> 1) & 1;
    if (v5 >= 0x7CF)
    {
      v18 = 0;
    }

    v19 = v18 | v15;
    v20 = v5 < 0x7CF || v16;
    if (v5 < 0x7CF)
    {
      v21 = 1;
    }

    else
    {
      v21 = v17;
    }

    v108 = v21;
    v109 = v20;
    v106 = v4 - 1;
    v107 = a2;
    do
    {
      v117 = 0u;
      *ptr = 0u;
      v116 = 0u;
      *size = 0u;
      BYTE10(v117) = v113;
      v118 = v111;
      BYTE1(ptr[1]) = a2;
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 45, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 45, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
      }

      else
      {
        v22 = *(a1 + 6);
        if (*(a1 + 5) - v22 >= 2)
        {
          v23 = *(*a1 + v22);
          *(a1 + 6) = v22 + 2;
          goto LABEL_44;
        }
      }

      v23 = 0;
      *(a1 + 15) = 1;
LABEL_44:
      WORD1(ptr[1]) = v23 & 0x1F;
      if (v5 <= 0x7CE)
      {
        BYTE4(ptr[1]) = (v23 >> 5) & 3;
      }

      BYTE14(v116) = (v23 & 0x80) != 0;
      BYTE13(v116) = BYTE1(v23) & 0x3F;
      BYTE12(v116) = (v23 & 0x4000) != 0;
      HIBYTE(v116) = v23 >> 15;
      v24 = (v23 & 0x1F) - 16;
      if (v24 < 0xE && ((0x2C2Du >> v24) & 1) != 0)
      {
        v25 = byte_1008A50C0[v24];
      }

      else
      {
        BYTE11(v116) = 1;
        v26 = sub_10000C240();
        if (v23)
        {
          if ((v23 & 4) != 0)
          {
            if (v26)
            {
              sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE & EXTENDED_ADVERTISING_EVENT_TYPE_DIRECTED_ADV");
              v33 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = sub_10000C0FC();
                *buf = 136446210;
                v120 = v34;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v25 = 1;
          }

          else
          {
            if (v26)
            {
              sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_CONNECTABLE");
              v29 = sub_10000C050(0x54u);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = sub_10000C0FC();
                *buf = 136446210;
                v120 = v30;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v25 = 0;
          }
        }

        else if ((v23 & 8) != 0)
        {
          if (v26)
          {
            sub_10000AF54("legacy=false EXTENDED_ADVERTISING_EVENT_TYPE_SCAN_RSP");
            v31 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = sub_10000C0FC();
              *buf = 136446210;
              v120 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v25 = 4;
        }

        else
        {
          if (v26)
          {
            sub_10000AF54("legacy=false LE_ADVERTISING_TYPE_NON_CONNECTABLE_UNDIRECTED");
            v27 = sub_10000C050(0x54u);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = sub_10000C0FC();
              *buf = 136446210;
              v120 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          v25 = 3;
        }
      }

      LOBYTE(size[0]) = v25 + 16 * BYTE13(v116) - 80;
      v35 = *(a1 + 14);
      if (v19)
      {
        if (v35 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 101, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 101, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
          v36 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v36 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 102, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

          goto LABEL_87;
        }

        v38 = *(a1 + 6);
        if (*(a1 + 5) <= v38)
        {
          *(a1 + 15) = 1;
LABEL_87:
          v45 = 102;
          goto LABEL_90;
        }

        v39 = *a1;
        *(a1 + 6) = v38 + 1;
        BYTE3(v117) = *(v39 + v38);
        if (*(a1 + 5) - (v38 + 1) >= 6)
        {
          v40 = (v38 + 1);
          v41 = *a1;
          v42 = &v117 + 4;
LABEL_85:
          sub_1000075EC(v42, v41 + v40, 6uLL);
          *(a1 + 6) += 6;
          goto LABEL_92;
        }
      }

      else
      {
        if (v35 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 104, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 104, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
          v37 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v37 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 105, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

LABEL_89:
          v45 = 105;
LABEL_90:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", v45, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
          goto LABEL_91;
        }

        v43 = *(a1 + 6);
        if (*(a1 + 5) <= v43)
        {
          *(a1 + 15) = 1;
          goto LABEL_89;
        }

        v44 = *a1;
        *(a1 + 6) = v43 + 1;
        BYTE1(size[0]) = *(v44 + v43);
        if (*(a1 + 5) - (v43 + 1) >= 6)
        {
          v40 = (v43 + 1);
          v41 = *a1;
          v42 = size + 2;
          goto LABEL_85;
        }
      }

LABEL_91:
      *(a1 + 15) = 1;
LABEL_92:
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 107, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 107, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v46 = *(a1 + 14) == 1;
      }

      else
      {
        v47 = *(a1 + 6);
        if (*(a1 + 5) > v47)
        {
          v48 = *a1;
          *(a1 + 6) = v47 + 1;
          v49 = *(v48 + v47);
          BYTE5(ptr[1]) = *(v48 + v47);
          v46 = 1;
          v50 = 1;
          goto LABEL_99;
        }

        v46 = 1;
      }

      v50 = 0;
      *(a1 + 15) = 1;
      v49 = BYTE5(ptr[1]);
LABEL_99:
      LOBYTE(v117) = v49 >> 7;
      BYTE1(v117) = (v49 & 0x40) != 0;
      BYTE2(v117) = (v49 & 0x20) != 0;
      if (!v46)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 113, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (!v50)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 113, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v61 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v61 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 114, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_112:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 114, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v62 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v62 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 115, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_113:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 115, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v63 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v63 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 116, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_114:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 116, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v64 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v64 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 117, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_115:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 117, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v65 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v65 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 118, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_116:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 118, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v66 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v66 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 119, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_117:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 119, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        goto LABEL_118;
      }

      v51 = *(a1 + 6);
      if (*(a1 + 5) <= v51)
      {
        *(a1 + 15) = 1;
        goto LABEL_112;
      }

      v52 = *a1;
      *(a1 + 6) = v51 + 1;
      BYTE6(ptr[1]) = *(v52 + v51);
      if (*(a1 + 5) <= (v51 + 1))
      {
        *(a1 + 15) = 1;
        goto LABEL_113;
      }

      v53 = *a1;
      *(a1 + 6) = v51 + 2;
      HIBYTE(ptr[1]) = *(v53 + v51 + 1);
      if (*(a1 + 5) <= (v51 + 2))
      {
        *(a1 + 15) = 1;
        goto LABEL_114;
      }

      v54 = *a1;
      v55 = v51 + 3;
      *(a1 + 6) = v51 + 3;
      LOBYTE(v116) = *(v54 + v51 + 2);
      if (*(a1 + 5) <= (v51 + 3))
      {
        *(a1 + 15) = 1;
        goto LABEL_115;
      }

      v56 = *a1;
      v57 = v51 + 4;
      *(a1 + 6) = v57;
      LOBYTE(ptr[1]) = *(v56 + v55);
      if (*(a1 + 5) - v57 <= 1)
      {
        *(a1 + 15) = 1;
        goto LABEL_116;
      }

      WORD1(v116) = *(*a1 + v57);
      v58 = v57 + 2;
      *(a1 + 6) = v57 + 2;
      if (*(a1 + 5) <= (v57 + 2))
      {
        *(a1 + 15) = 1;
        goto LABEL_117;
      }

      v59 = *a1;
      v60 = v57 + 3;
      *(a1 + 6) = v60;
      BYTE4(v116) = *(v59 + v58);
      if (*(a1 + 5) - v60 >= 6)
      {
        sub_1000075EC(&v116 + 5, *a1 + v60, 6uLL);
        *(a1 + 6) += 6;
        goto LABEL_119;
      }

LABEL_118:
      *(a1 + 15) = 1;
LABEL_119:
      if (!v110)
      {
        goto LABEL_139;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 123, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 123, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
LABEL_125:
        *(a1 + 15) = 1;
        v69 = LOWORD(size[1]);
        goto LABEL_126;
      }

      v67 = *(a1 + 6);
      if (*(a1 + 5) <= v67)
      {
        goto LABEL_125;
      }

      v68 = *a1;
      *(a1 + 6) = v67 + 1;
      v69 = *(v68 + v67);
      LOWORD(size[1]) = *(v68 + v67);
LABEL_126:
      v70 = sub_100007618(v69, 0x100004077774924uLL);
      ptr[0] = v70;
      if (v70)
      {
        v71 = LOWORD(size[1]);
        if (LOWORD(size[1]))
        {
          if (*(a1 + 14) != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 126, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

          v72 = v70;
          v73 = *a1;
          v74 = *(a1 + 6);
          if (*(a1 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 126, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
            v75 = 0;
          }

          else
          {
            v75 = *(a1 + 5) - v74;
          }

          if (v75 >= LOWORD(size[1]))
          {
            v76 = (v73 + v74);
            v77 = &v72[v71];
            do
            {
              v78 = *v76++;
              *v72++ = v78;
            }

            while (v72 < v77);
            *(a1 + 6) += LOWORD(size[1]);
          }

          else
          {
            *(a1 + 15) = 1;
          }

          v5 = v106;
          a2 = v107;
        }
      }

LABEL_139:
      if (!v19)
      {
        goto LABEL_150;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 131, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 131, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v79 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v79 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 132, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        goto LABEL_148;
      }

      v80 = *(a1 + 6);
      if (*(a1 + 5) <= v80)
      {
        *(a1 + 15) = 1;
LABEL_148:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 132, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        goto LABEL_149;
      }

      v81 = *a1;
      *(a1 + 6) = v80 + 1;
      BYTE1(size[0]) = *(v81 + v80);
      if (*(a1 + 5) - (v80 + 1) >= 6)
      {
        sub_1000075EC(size + 2, *a1 + (v80 + 1), 6uLL);
        *(a1 + 6) += 6;
        goto LABEL_150;
      }

LABEL_149:
      *(a1 + 15) = 1;
LABEL_150:
      if (!v109)
      {
        goto LABEL_192;
      }

      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 142, "(*pData).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 142, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v82 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v82 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 143, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

LABEL_163:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 143, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        v90 = *(a1 + 14);
LABEL_164:
        *(a1 + 15) = 1;
        if (v108)
        {
          if (v90 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 145, "(*pData).__RWFlag == BYTESTREAM_READ");
          }

          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 145, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
          v90 = *(a1 + 14);
LABEL_167:
          *(a1 + 15) = 1;
        }

        if (v90 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 147, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 147, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        goto LABEL_170;
      }

      v83 = *(a1 + 6);
      if (*(a1 + 5) <= v83)
      {
        *(a1 + 15) = 1;
        goto LABEL_163;
      }

      v84 = *a1;
      *(a1 + 6) = v83 + 1;
      BYTE8(v118) = *(v84 + v83);
      if (*(a1 + 5) <= (v83 + 1))
      {
        v90 = 1;
        goto LABEL_164;
      }

      v85 = *a1;
      *(a1 + 6) = v83 + 2;
      BYTE9(v118) = *(v85 + v83 + 1);
      if (v108)
      {
        v86 = *(a1 + 6);
        if (*(a1 + 5) <= v86)
        {
          v90 = 1;
          goto LABEL_167;
        }

        v87 = *a1;
        *(a1 + 6) = v86 + 1;
        BYTE10(v118) = *(v87 + v86);
      }

      v88 = *(a1 + 6);
      if (*(a1 + 5) - v88 >= 2)
      {
        WORD6(v118) = *(*a1 + v88);
        *(a1 + 6) = v88 + 2;
        v89 = 1;
        goto LABEL_171;
      }

LABEL_170:
      v89 = 0;
      *(a1 + 15) = 1;
LABEL_171:
      if (v5 <= 0x7CE)
      {
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 152, "(*pData).__RWFlag == BYTESTREAM_READ");
        }

        if (v89)
        {
          v91 = *(a1 + 6);
          if (*(a1 + 5) > v91)
          {
            v92 = *a1;
            *(a1 + 6) = v91 + 1;
            v93 = *(v92 + v91);
            LOWORD(size[1]) = *(v92 + v91);
LABEL_178:
            v94 = sub_100007618(v93, 0x100004077774924uLL);
            ptr[0] = v94;
            if (v94)
            {
              v95 = LOWORD(size[1]);
              if (LOWORD(size[1]))
              {
                if (*(a1 + 14) != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 155, "(*pData).__RWFlag == BYTESTREAM_READ");
                }

                v96 = v94;
                v97 = *a1;
                v98 = *(a1 + 6);
                if (*(a1 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 155, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
                  v99 = 0;
                }

                else
                {
                  v99 = *(a1 + 5) - v98;
                }

                if (v99 >= LOWORD(size[1]))
                {
                  v100 = (v97 + v98);
                  v101 = &v96[v95];
                  do
                  {
                    v102 = *v100++;
                    *v96++ = v102;
                  }

                  while (v96 < v101);
                  *(a1 + 6) += LOWORD(size[1]);
                }

                else
                {
                  *(a1 + 15) = 1;
                }

                v5 = v106;
                a2 = v107;
              }
            }

            goto LABEL_192;
          }
        }

        else
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 152, "void commonVseLeAppleExtAdvReportEvent(OI_BYTE_STREAM *, _Bool)");
        }

        *(a1 + 15) = 1;
        v93 = LOWORD(size[1]);
        goto LABEL_178;
      }

LABEL_192:
      sub_100008150(size);
      if (ptr[0])
      {
        sub_10000C1E8(ptr[0]);
      }

      ++v12;
    }

    while (v12 != v112);
  }
}

uint64_t sub_1002ED79C(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 167, "_Bool commonVseLeCisFlushStats(OI_BYTE_STREAM *, LeCisFlushStatsVSE *)");
    v2 = 0;
LABEL_4:
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("BT_VSE_LE_CIS_FLUSH_OCCURRED - Invalid data size %lu", v2);
    v4 = sub_10000C050(0x54u);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_31:
    sub_10080F7A0();
    return 0;
  }

  v2 = *(a1 + 5) - *(a1 + 6);
  if (v2 - 215 <= 0xFFFFFFFFFFFFFF3BLL)
  {
    goto LABEL_4;
  }

  *(a2 + 304) = 0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 173, "_Bool commonVseLeCisFlushStats(OI_BYTE_STREAM *, LeCisFlushStatsVSE *)");
    goto LABEL_47;
  }

  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  if (v5 <= v6)
  {
LABEL_47:
    v24 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_49;
  }

  if (*(a1 + 14) != 1)
  {
    v24 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_49:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 173, v24);
  }

  v7 = *a1;
  *(a1 + 6) = v6 + 1;
  *a2 = *(v7 + v6);
  if (v5 - (v6 + 1) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 174, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 2) = *(v7 + v6 + 1);
  *(a1 + 6) = v6 + 3;
  if ((v5 - (v6 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 175, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 4) = *(v7 + (v6 + 3));
  *(a1 + 6) = v6 + 5;
  if (v5 <= (v6 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 176, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v8 = v6 + 6;
  *(a1 + 6) = v6 + 6;
  v9 = *(v7 + (v6 + 5));
  *(a2 + 6) = v9;
  v10 = v5 - v8;
  if ((v9 - 1) <= 0xF && v10 == 13 * v9)
  {
    v11 = (a2 + 136);
    v12 = (a2 + 296);
    while (!*(a1 + 15))
    {
      v13 = *(a1 + 5);
      v14 = *(a1 + 6);
      if ((v13 - v14) <= 4)
      {
        goto LABEL_44;
      }

      if (*(a1 + 14) != 1)
      {
        v23 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_45;
      }

      v15 = *a1;
      *(v11 - 16) = *(*a1 + v14) | (*(*a1 + v14 + 4) << 32);
      *(a1 + 6) = v14 + 5;
      if ((v13 - (v14 + 5)) <= 4)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 185, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
      }

      *v11 = *(v15 + (v14 + 5)) | (*(v15 + (v14 + 5) + 4) << 32);
      *(a1 + 6) = v14 + 10;
      if (v13 <= (v14 + 10))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 186, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
      }

      *(a1 + 6) = v14 + 11;
      *(v12 - 32) = *(v15 + (v14 + 10));
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 187, "_Bool commonVseLeCisFlushStats(OI_BYTE_STREAM *, LeCisFlushStatsVSE *)");
LABEL_38:
        v22 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_39:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 187, v22);
      }

      v16 = *(a1 + 6);
      if (*(a1 + 5) <= v16)
      {
        goto LABEL_38;
      }

      if (*(a1 + 14) != 1)
      {
        v22 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_39;
      }

      v17 = *a1;
      *(a1 + 6) = v16 + 1;
      *(v12 - 16) = *(v17 + v16);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 188, "_Bool commonVseLeCisFlushStats(OI_BYTE_STREAM *, LeCisFlushStatsVSE *)");
LABEL_34:
        v21 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_35:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 188, v21);
      }

      v18 = *(a1 + 6);
      if (*(a1 + 5) <= v18)
      {
        goto LABEL_34;
      }

      if (*(a1 + 14) != 1)
      {
        v21 = "(*pBs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_35;
      }

      v19 = *a1;
      *(a1 + 6) = v18 + 1;
      *v12++ = *(v19 + v18);
      ++v11;
      if (!--v9)
      {
        return 1;
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 184, "_Bool commonVseLeCisFlushStats(OI_BYTE_STREAM *, LeCisFlushStatsVSE *)");
LABEL_44:
    v23 = "ByteStream_NumReadBytesAvail(*pBs) >= 5";
LABEL_45:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 184, v23);
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("BT_VSE_LE_CIS_FLUSH_OCCURRED - Invalid data size for entries %lu", v10);
    v20 = sub_10000C050(0x54u);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t sub_1002EDC0C(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 194, "_Bool commonVseLeCisTimeoutStats(OI_BYTE_STREAM *, LeCisTimeoutStatsVSE *)");
    v2 = 0;
    goto LABEL_13;
  }

  v2 = *(a1 + 5) - *(a1 + 6);
  if (v2 != 135)
  {
LABEL_13:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("BT_VSE_LE_CIS_TIMEOUT_STATS - Invalid data size %lu", v2);
      v9 = sub_10000C050(0x54u);
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F7A0();
        return 0;
      }
    }

    return result;
  }

  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 200, "_Bool commonVseLeCisTimeoutStats(OI_BYTE_STREAM *, LeCisTimeoutStatsVSE *)");
    goto LABEL_18;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (v4 <= v5)
  {
LABEL_18:
    v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_20;
  }

  if (*(a1 + 14) != 1)
  {
    v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_20:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 200, v10);
  }

  v6 = *a1;
  *(a1 + 6) = v5 + 1;
  *a2 = *(v6 + v5);
  if (v4 - (v5 + 1) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 201, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 2) = *(v6 + v5 + 1);
  *(a1 + 6) = v5 + 3;
  if ((v4 - (v5 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 202, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 4) = *(v6 + (v5 + 3));
  *(a1 + 6) = v5 + 5;
  if ((v4 - (v5 + 5)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 203, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 8) = *(v6 + (v5 + 5)) | (*(v6 + (v5 + 5) + 4) << 32);
  *(a1 + 6) = v5 + 10;
  if ((v4 - (v5 + 10)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 204, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 16) = *(v6 + (v5 + 10)) | (*(v6 + (v5 + 10) + 4) << 32);
  v7 = v5 + 15;
  *(a1 + 6) = v7;
  if (v4 - v7 <= 0x77)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 205, "ByteStream_NumReadBytesAvail(*pBs) >= (sizeof(LeCisTimeoutStatsVSECounters))");
  }

  memmove((a2 + 24), (v6 + v7), 0x78uLL);
  *(a1 + 6) += 120;
  return 1;
}

uint64_t sub_1002EDE84(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 211, "_Bool commonVseLeCisLinkQualityStats(OI_BYTE_STREAM *, LeCisLinkQualityStatsVSE *)");
    v2 = 0;
    goto LABEL_14;
  }

  v2 = *(a1 + 5) - *(a1 + 6);
  if (v2 != 140)
  {
LABEL_14:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("BT_VSE_LE_CIS_LINK_QUALITY_STATS - Invalid data size %lu", v2);
      v10 = sub_10000C050(0x54u);
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F7A0();
        return 0;
      }
    }

    return result;
  }

  *(a2 + 144) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 217, "_Bool commonVseLeCisLinkQualityStats(OI_BYTE_STREAM *, LeCisLinkQualityStatsVSE *)");
    goto LABEL_19;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (v4 <= v5)
  {
LABEL_19:
    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_21;
  }

  if (*(a1 + 14) != 1)
  {
    v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_21:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 217, v11);
  }

  v6 = *a1;
  *(a1 + 6) = v5 + 1;
  *a2 = *(v6 + v5);
  if (v4 - (v5 + 1) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 218, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 2) = *(v6 + v5 + 1);
  *(a1 + 6) = v5 + 3;
  if ((v4 - (v5 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 219, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a2 + 4) = *(v6 + (v5 + 3));
  *(a1 + 6) = v5 + 5;
  if ((v4 - (v5 + 5)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 220, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 8) = *(v6 + (v5 + 5)) | (*(v6 + (v5 + 5) + 4) << 32);
  *(a1 + 6) = v5 + 10;
  if ((v4 - (v5 + 10)) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 221, "ByteStream_NumReadBytesAvail(*pBs) >= 5");
  }

  *(a2 + 16) = *(v6 + (v5 + 10)) | (*(v6 + (v5 + 10) + 4) << 32);
  v7 = v5 + 15;
  *(a1 + 6) = v5 + 15;
  if (v4 <= (v5 + 15))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 222, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v8 = v5 + 16;
  *(a1 + 6) = v8;
  *(a2 + 24) = *(v6 + v7);
  if (v4 - v8 <= 0x7B)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/vse.c", 223, "ByteStream_NumReadBytesAvail(*pBs) >= (sizeof(LeCisLinkQualityStatsCountersV1))");
  }

  memmove((a2 + 25), (v6 + v8), 0x7CuLL);
  *(a1 + 6) += 124;
  return 1;
}

uint64_t sub_1002EE134(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2 == 1 || a2 >= 0x3E)
  {
    sub_1000D660C();
  }

  if (*qword_100BCE1F8)
  {
    v4 = 0;
    v5 = qword_100B6B4E8 - 88;
    while (1)
    {
      v5 += 88;
      if (v5 == a1)
      {
        break;
      }

      if (*qword_100BCE1F8 == ++v4)
      {
        goto LABEL_10;
      }
    }

    return (a2 | (v4 << 8));
  }

  else
  {
LABEL_10:
    sub_1000D660C();
    return 0;
  }
}

uint64_t sub_1002EE1C0(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v6 = (a1 + 16);
  while (1)
  {
    v6 = *v6;
    if (!v6 || v6 == (a1 + 16))
    {
      break;
    }

    if (*(v6 - 134) == a2)
    {
      result = 0;
      *a3 = v6 - 18;
      return result;
    }
  }

  return 912;
}

uint64_t sub_1002EE258(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (a2 < 2)
  {
    return 121;
  }

  v4 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 121;
  }

  for (i = (qword_100B6B4F8 + 24); *(i + 2) != a2 >> 1; i += 28)
  {
    if (!--v4)
    {
      return 121;
    }
  }

  result = sub_1002EE324(a1, a2, a3);
  if (!result)
  {
    v8 = *a3;
    *(v8 + 20) = 1;
    *(v8 + 40) = *(i - 1);
    v9 = *a3;
    *(*a3 + 160) = i[8];
    v10 = *i;
    if (v10 >= *(a1 + 4))
    {
      LOWORD(v10) = *(a1 + 4);
    }

    *(v9 + 16) = v10;
    *(v9 + 48) = *(i + 3);
  }

  return result;
}

uint64_t sub_1002EE324(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v6 = (a1 + 16);
  while (1)
  {
    v6 = *v6;
    if (!v6 || v6 == (a1 + 16))
    {
      break;
    }

    if (*(v6 - 134) == a2)
    {
      return 911;
    }
  }

  v9 = sub_1001BBBD8(0xA8uLL, 0x10E0040432F2197uLL);
  if (!v9)
  {
    return 106;
  }

  v10 = v9;
  v9[20] = 0;
  *(v9 + 4) = sub_1002EE134(a1, a2);
  *(v10 + 16) = a1;
  v10[10] = a2;
  *(v10 + 11) = 0;
  *(v10 + 8) = 127;
  *(v10 + 6) = 140;
  *(v10 + 13) = 0;
  *(v10 + 81) = 0;
  *(v10 + 22) = 50544511;
  *(v10 + 30) = 16847633;
  *(v10 + 14) = 0;
  sub_1003051F4(v10 + 18, a1 + 16);
  result = 0;
  *a3 = v10;
  return result;
}

void sub_1002EE438(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    sub_1000D660C();
    v2 = *(a1 + 128);
  }

  if (*(v2 + 81) == *(a1 + 10) && *(v2 + 72))
  {
    sub_10029F2B4(*(v2 + 2));
  }

  if (*(a1 + 96) == 1)
  {
    *(a1 + 96) = 0;
    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 88) = 0;
      (*(a1 + 80))(*(a1 + 8), v3, 143);
    }
  }

  v4 = *(a1 + 128);
  v7 = *(v4 + 56);
  v6 = (v4 + 56);
  v5 = v7;
  if (v7 != v6)
  {
    do
    {
      v8 = *v5;
      if (*(v5 - 7) == *(a1 + 10))
      {
        sub_100305208(v5);
        sub_1000BB9CC(*(v5 - 2));
        if (*(v5 - 8) == 1)
        {
          sub_1002F0938(a1, 143);
        }

        sub_10000C1E8(v5 - 2);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }
}

void sub_1002EE524(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 128);
  if (!v4)
  {
    sub_1000D660C();
    v4 = *(a1 + 128);
  }

  sub_100306190(*(a1 + 56));
  sub_100305208((a1 + 144));
  v5 = *(a1 + 136);
  if (v5)
  {
    sub_10002242C(v5);
    *(a1 + 136) = 0;
  }

  sub_1002EE438(a1);
  sub_1002F1B10(a1);
  if (a2 && *(v4 + 16) == v4 + 16)
  {
    sub_1002EE5D0(v4, 0, *(a1 + 164));
  }

  sub_10000C1E8(a1);
}

uint64_t sub_1002EE5D0(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Shutting down session to %:", a1 + 6);
    v6 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v7 = *a1;
  if (!a2)
  {
    if (v7 != 9)
    {
      *a1 = 9;
      v8 = sub_1002F20AC(67, a1, 0);
      goto LABEL_12;
    }

    return 116;
  }

  if (v7 == 10)
  {
    return 116;
  }

  *a1 = 10;
  v8 = sub_10029104C(*(a1 + 1), a3);
LABEL_12:
  if (v8)
  {
    sub_1002EE888(a1, v8, 1);
  }

  return 0;
}

uint64_t sub_1002EE718(int a1)
{
  if (!dword_100BCE2F8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Rfcomm_GetSessionByCID");
      v4 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    return 0;
  }

  v1 = *qword_100BCE1F8;
  if (!*qword_100BCE1F8)
  {
    return 0;
  }

  for (result = qword_100B6B4E8; !*result || *(result + 2) != a1; result += 88)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002EE7C8(uint64_t a1)
{
  if (!dword_100BCE2F8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Rfcomm_GetSessionByAddr");
      v5 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    return 0;
  }

  v1 = *qword_100BCE1F8;
  if (!*qword_100BCE1F8)
  {
    return 0;
  }

  for (result = qword_100B6B4E8; ; result += 88)
  {
    if (*result)
    {
      if (*a1 == *(result + 6) && *(a1 + 4) == *(result + 10))
      {
        break;
      }
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002EE888(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (!*a1)
  {
    sub_1000D660C();
  }

  sub_1002F39C8(a1);
  sub_1002F3A04(a1);
  sub_1002F1EC8(a1);
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6 == (a1 + 16))
  {
LABEL_30:
    *a1 = 0;
    sub_1002F39C8(a1);
    sub_1002F3A04(a1);
    sub_1002F1EC8(a1);
    sub_1002EED2C();
    v21 = qword_100B6B4F0;
    if (qword_100B6B4F0)
    {
      do
      {
        v22 = *(v21 + 3);
        if (v22)
        {
          v22(*v21, a2);
        }

        else
        {
          v23 = *(v21 + 2);
          if (v23)
          {
            v23(*v21, 0, a2);
          }
        }

        v21 = *(qword_100B6B4F0 + 32);
        sub_10000C1E8(qword_100B6B4F0);
        qword_100B6B4F0 = v21;
      }

      while (v21);
    }

    qword_100B6B4F0 = 0;
    return;
  }

  v24 = 0;
  v25 = *(a1 + 82);
  v7 = (a1 + 16);
  do
  {
    while (1)
    {
      v8 = (v6 - 18);
      *(v6 + 5) = a2;
      v9 = *(v6 - 131);
      if (v9 > 1 || (a3 & 1) != 0 || (*(v6 - 124) & 1) != 0 || (v25 & 0x80000000) == 0)
      {
        break;
      }

      *(v6 - 131) = 0;
      *(v6 - 7) = 0;
      v24 = 1;
      *(v6 - 111) = 1;
      *(v6 - 63) = 0;
      *(v6 - 22) = 0;
      sub_1002F1B10((v6 - 18));
      v7 = *v7;
      v6 = *v7;
      if (*v7 == v5)
      {
        goto LABEL_29;
      }
    }

    if (v9 - 5 >= 4)
    {
      if (v9 == 9)
      {
        sub_1002EE524((v6 - 18), 0);
        goto LABEL_24;
      }

      v11 = 0;
      *(v6 - 131) = 9;
      v10 = *(v6 - 9);
    }

    else
    {
      *(v6 - 131) = 9;
      sub_1002EE438((v6 - 18));
      v10 = 0;
      v11 = **(v6 - 13);
    }

    v12 = *(v6 - 18);
    v13 = *(a1 + 10);
    v14 = *(a1 + 6);
    v15 = *(v6 - 68);
    sub_1002EE524(v8, 0);
    v16 = sub_100007618(0x28uLL, 0x10A0040C7231A41uLL);
    if (v16)
    {
      *v16 = v15;
      *(v16 + 2) = v14;
      *(v16 + 3) = (v14 | (v13 << 32)) >> 32;
      *(v16 + 1) = v12;
      *(v16 + 2) = v10;
      *(v16 + 3) = v11;
      *(v16 + 4) = 0;
      v17 = qword_100B6B4F0;
      if (qword_100B6B4F0)
      {
        do
        {
          v18 = v17;
          v17 = *(v17 + 32);
        }

        while (v17);
        *(v18 + 32) = v16;
      }

      else
      {
        qword_100B6B4F0 = v16;
      }
    }

    else
    {
      sub_1000D660C();
      if (sub_10000C240())
      {
        sub_10000AF54("Alloc RFCOMM link cache failed!");
        v19 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = sub_10000C0FC();
          *buf = 136446466;
          v28 = v20;
          v29 = 1024;
          v30 = 104;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }
    }

LABEL_24:
    v6 = *v5;
    v7 = (a1 + 16);
  }

  while (*v5 != v5);
  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_29:
  ++*(a1 + 82);
  *a1 = 1;
  sub_1002EEBC0(a1, *(a1 + 4));
}

uint64_t sub_1002EEBC0(uint64_t a1, unsigned int a2)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_1003045A0(0x28u);
  v11 = 327745535;
  v12 = 776;
  if (a2 <= 0x7F)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  v5 = v4 + a2;
  v10 = v5;
  if (v5 > 0x80u)
  {
    if (*(sub_1003045A0(0x28u) + 8) >= v5)
    {
      goto LABEL_9;
    }

    v6 = *(sub_1003045A0(0x28u) + 8);
  }

  else
  {
    v6 = 128;
  }

  v10 = v6;
LABEL_9:
  *(a1 + 12) = 1;
  *(a1 + 32) = 0;
  v7 = sub_10028F454(sub_1002F0808, sub_1002F0EF4, sub_1002F077C, 3, a1 + 6, &v10, (a1 + 2), &unk_1008A50D0);
  if (v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP_CreateConnection failed with result %!", v7);
      v8 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002EE888(a1, v7, 1);
  }

  else
  {
    *a1 = 2;
  }

  return v7;
}

void sub_1002EED2C()
{
  v0 = qword_100B6B500;
  if (qword_100B6B500 || (sub_1000D660C(), (v0 = qword_100B6B500) != 0))
  {
    if ((*v0)-- == 1)
    {

      sub_1002EFB28();
    }
  }
}

uint64_t sub_1002EED8C(uint64_t a1, __int16 a2, uint64_t *a3, uint64_t a4)
{
  v10 = 0;
  result = sub_1002EEDF8(a1, &v10, a3, a4);
  if (!result)
  {
    v8 = v10;
    v9 = *(a1 + 4);
    *(v10 + 6) = *a1;
    *(v8 + 10) = v9;
    *(v8 + 12) = 0;
    *(v8 + 32) = 0;
    *(v8 + 2) = a2;
    *a3 = v8;
  }

  return result;
}

uint64_t sub_1002EEDF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (!*qword_100BCE1F8)
  {
    return 104;
  }

  v5 = 0;
  v6 = qword_100B6B4E8;
  do
  {
    *a2 = v6;
    if (*v6)
    {
      if (*a1 == *(v6 + 6) && *(a1 + 4) == *(v6 + 10))
      {
        return 909;
      }
    }

    ++v5;
    v8 = *qword_100BCE1F8;
    v6 += 88;
  }

  while (v5 < v8);
  if (!*qword_100BCE1F8)
  {
    return 104;
  }

  for (i = qword_100B6B4E8; *i; i += 88)
  {
    if (!--v8)
    {
      return 104;
    }
  }

  *i = 0u;
  *(i + 80) = 0;
  *(i + 48) = 0u;
  *(i + 64) = 0u;
  *(i + 32) = 0u;
  *(i + 16) = 0u;
  *i = 1;
  *(i + 44) = 257;
  sub_1003051D8((i + 56));
  sub_1003051D8((i + 16));
  result = 0;
  *(i + 82) = 0;
  *a2 = i;
  ++*qword_100B6B500;
  return result;
}

uint64_t sub_1002EEF20(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 13))
  {
    sub_1000D660C();
  }

  v2 = sub_1002F1A00(a1);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("DLCI: %d", *(a1 + 10));
      v4 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    return v3;
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 128);
    if (v6 >= *(v7 + 4))
    {
      LOWORD(v6) = *(v7 + 4);
    }

    *(a1 + 16) = v6;
    v8 = *(a1 + 48);

    return sub_100305BDC(sub_1002EF014, (v7 + 6), v8, (a1 + 56), 0);
  }
}

void sub_1002EF014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002F0620(a1);
  if (v4)
  {
    v5 = v4;
    if (a2 || (a2 = sub_1002F3A7C(v4[16], 1, *(v4 + 10), 0, *(v4 + 8), *(v4 + 14)), a2))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("connection failed");
        v6 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      *(v5 + 164) = a2;
      (*(v5 + 72))(*(v5 + 8), 0, a2);
      sub_1002EE524(v5, 1);
    }
  }

  else
  {

    sub_100306190(a1);
  }
}

uint64_t sub_1002EF100()
{
  v0 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 0;
  }

  LOWORD(result) = 0;
  v2 = (qword_100B6B4F8 + 24);
  do
  {
    v4 = *v2;
    v2 += 28;
    v3 = v4;
    if (v4 <= result)
    {
      result = result;
    }

    else
    {
      result = v3;
    }

    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_1002EF144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 121;
  }

  v2 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 121;
  }

  for (i = (qword_100B6B4F8 + 26); *i != a2; i += 56)
  {
    if (!--v2)
    {
      return 121;
    }
  }

  (*(i - 18))(a1);
  return 0;
}

uint64_t sub_1002EF1B0(unsigned int a1, void *a2)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (a1 >> 8 >= *qword_100BCE1F8)
  {
    return 916;
  }

  v2 = (qword_100B6B4E8 + 88 * (a1 >> 8));
  if (!*v2)
  {
    return 916;
  }

  result = sub_1002EE1C0(v2, a1, a2);
  if (!result)
  {
    if (*(*a2 + 13) == 9)
    {
      return 927;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002EF24C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5, uint64_t a6)
{
  if (dword_100BCE2F8 || (v14 = sub_1002EF3EC(), !v14))
  {
    ++*qword_100B6B500;
    v13 = a4 < a3 && a4 != 0;
    v14 = 101;
    if (a3 && !v13 && a1 && a2)
    {
      v15 = *(qword_100BCE1F8 + 1);
      if (*(qword_100BCE1F8 + 1))
      {
        v16 = 0;
        v17 = 0;
        v18 = qword_100B6B4F8;
        do
        {
          if (*(v18 + 26))
          {
            v16 |= 1 << *(v18 + 26);
          }

          else if (!v17)
          {
            *(v18 + 24) = a3;
            v17 = v18;
          }

          v18 += 56;
          --v15;
        }

        while (v15);
        if (v17)
        {
          v19 = *a5;
          if ((v19 - 1) >= 0x1E)
          {
            v20 = 1;
          }

          else
          {
            v20 = *a5;
          }

          do
          {
            if (((v16 >> v20) & 1) == 0)
            {
              v14 = 0;
              *(v17 + 8) = a1;
              *(v17 + 16) = a2;
              *(v17 + 24) = a3;
              *(v17 + 40) = a4 / a3;
              *(v17 + 48) = a6;
              *(v17 + 26) = v20;
              *a5 = v20;
              return v14;
            }

            v20 = v20 % 0x1E + 1;
          }

          while (v20 != v19);
          if (sub_10000C240())
          {
            sub_10000AF54("No free channel numbers");
            v21 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_100815984();
            }
          }
        }
      }

      v14 = 104;
    }

    sub_1002EED2C();
  }

  return v14;
}

uint64_t sub_1002EF3EC()
{
  if (dword_100BCE2F8)
  {
    sub_1000D660C();
  }

  v0 = sub_1003045A0(0x32u);
  qword_100BCE1F8 = v0;
  if (!v0)
  {
    sub_1000D660C();
    v0 = qword_100BCE1F8;
    if (!qword_100BCE1F8)
    {
      return 127;
    }
  }

  qword_100B6B4F0 = 0;
  qword_100B6B4E8 = 0;
  qword_100B6B4F8 = 0;
  qword_100B6B500 = 0;
  qword_100B6B4E8 = sub_1001BBBD8(88 * *v0, 0x10A004017A26594uLL);
  if (!qword_100B6B4E8 || (qword_100B6B4F8 = sub_1001BBBD8(56 * *(qword_100BCE1F8 + 1), 0x10F0040A30AD163uLL)) == 0)
  {
    v2 = 106;
LABEL_11:
    if (qword_100B6B500)
    {
      sub_10000C1E8(qword_100B6B500);
      qword_100B6B500 = 0;
    }

    goto LABEL_15;
  }

  v1 = sub_1001BBBD8(4uLL, 0x100004052888210uLL);
  qword_100B6B500 = v1;
  if (v1)
  {
    *v1 = 0;
    v2 = sub_1002967FC(3, sub_1002F0D20);
    if (!v2)
    {
      dword_100BCE2F8 = 1;
      return v2;
    }

    goto LABEL_11;
  }

  v2 = 106;
LABEL_15:
  if (qword_100B6B4F8)
  {
    sub_10000C1E8(qword_100B6B4F8);
    qword_100B6B4F8 = 0;
  }

  if (qword_100B6B4E8)
  {
    sub_10000C1E8(qword_100B6B4E8);
    qword_100B6B4E8 = 0;
  }

  return v2;
}

uint64_t sub_1002EF558(int a1)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if ((a1 - 31) < 0xFFFFFFE2)
  {
    return 101;
  }

  v2 = *(qword_100BCE1F8 + 1);
  if (!*(qword_100BCE1F8 + 1))
  {
    return 120;
  }

  for (i = (qword_100B6B4F8 + 26); *i != a1; i += 56)
  {
    if (!--v2)
    {
      return 120;
    }
  }

  if (*qword_100BCE1F8)
  {
    v4 = 0;
    do
    {
      v5 = qword_100B6B4E8 + 88 * v4;
      if (*v5)
      {
        v8 = *(v5 + 16);
        v6 = (v5 + 16);
        for (j = v8; j && j != v6; j = *j)
        {
          if (*(j - 124) == 1 && *(j - 131) != 9 && a1 == *(j - 134) >> 1)
          {
            return 141;
          }
        }
      }

      ++v4;
    }

    while (v4 != *qword_100BCE1F8);
  }

  *i = 0;
  *(i - 1) = 0;
  sub_1002EED2C();
  return 0;
}

uint64_t sub_1002EF664(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (!a1 || !a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (*(a3 + 1) || *(a3 + 6))
  {
    sub_1000D660C();
  }

  v8 = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return 101;
  }

  v16 = 0;
  v9 = sub_1002EF1B0(a2, &v16);
  if (!v9)
  {
    v10 = v16;
    if (*(v16 + 88))
    {
      return 901;
    }

    else
    {
      v12 = *(v16 + 16);
      if (v8 <= v12 || a4)
      {
        *(v16 + 80) = a1;
        *(v10 + 88) = a3;
        sub_100305614(a3, v12);
        v13 = sub_1002F199C(v16);
        v14 = v16;
        if (v13)
        {
          *(v16 + 96) = 0;
          v9 = sub_1002F238C(*(v14 + 128), *(v14 + 10), a3, 0, 1);
          if (v9)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("DLCI: %d", *(v16 + 10));
              v15 = sub_10000C050(0x32u);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_100814348();
              }
            }

            *(v16 + 88) = 0;
          }
        }

        else
        {
          v9 = 0;
          *(v16 + 96) = 1;
        }
      }

      else
      {
        return 918;
      }
    }
  }

  return v9;
}

uint64_t sub_1002EF7E0(uint64_t a1, unsigned int a2, char *a3, size_t a4, int a5, uint64_t a6)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (a1)
  {
    v7 = 101;
    if (a3 && a4)
    {
      v10 = sub_1003053B4(a3, a4, a6);
      if (v10)
      {
        v11 = v10;
        *(v10 + 1) = a1;
        v7 = sub_1002EF664(sub_1002F0700, a2, v10, a5);
        if (v7)
        {
          sub_1000BB9CC(v11);
        }
      }

      else
      {
        return 106;
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v7;
}

uint64_t sub_1002EF8BC(uint64_t a1, void *a2, int *a3, char a4, unsigned int a5, unsigned int a6, _WORD *a7, uint64_t a8)
{
  v35 = 0;
  if (!dword_100BCE2F8)
  {
    v18 = sub_1002EF3EC();
    if (v18)
    {
      return v18;
    }
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  if (!a2[1])
  {
    sub_1000D660C();
    if (!a2[1])
    {
      return 101;
    }
  }

  if (!*a2)
  {
    sub_1000D660C();
    if (!*a2)
    {
      return 101;
    }
  }

  if (!a1 || !a3)
  {
LABEL_19:
    sub_1000D660C();
    return 101;
  }

  v34 = *qword_100B6B500;
  v17 = a6 < a5 && a6 != 0;
  v18 = 101;
  if (!a5 || v17)
  {
    goto LABEL_34;
  }

  if ((a4 - 31) < 0xE2u)
  {
    v18 = 910;
    goto LABEL_34;
  }

  v36 = sub_1002EE7C8(a3);
  v22 = v36;
  v33 = v36;
  if (!v36)
  {
    v25 = sub_1002EEDF8(a3, &v36, v20, v21);
    if (v25)
    {
      goto LABEL_33;
    }

    v29 = *(a3 + 2);
    v30 = *a3;
    v31 = v36;
    *(v36 + 6) = v30;
    *(v31 + 10) = v29;
    v25 = sub_1002EEBC0(v31, a5);
    if (v25)
    {
      goto LABEL_33;
    }

    v22 = v31;
  }

  v23 = ((*(v22 + 12) & 1) == 0) | (2 * (a4 & 0x7F));
  v24 = v22;
  v25 = sub_1002EE324(v22, v23, &v35);
  if (v25)
  {
LABEL_33:
    v18 = v25;
LABEL_34:
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_Connect failed");
      v32 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    if (dword_100BCE2F8)
    {
      if (*qword_100B6B500 <= v34)
      {
        if (!*qword_100B6B500)
        {
          sub_1002EFB28();
        }
      }

      else
      {
        sub_1002EED2C();
      }
    }

    return v18;
  }

  v26 = v24;
  v27 = v35;
  *(v35 + 72) = a1;
  *(v27 + 40) = a2;
  *(v27 + 16) = a5;
  if (a7)
  {
    *a7 = *(v27 + 8);
  }

  *(v27 + 160) = a6 / a5;
  *(v27 + 48) = a8;
  if (!v33 || *v26 != 7)
  {
    return 0;
  }

  v28 = sub_1002EEF20(v27);
  v18 = v28;
  if (v28)
  {
    *(v27 + 164) = v28;
    sub_1002EE524(v27, 1);
  }

  return v18;
}

void sub_1002EFB28()
{
  if (dword_100BCE2F8 != 1)
  {
    sub_1000D660C();
  }

  v0 = sub_1002969F8(3);
  if (v0)
  {
    sub_1000C52F4(v0);
    sub_1002EFBAC(v1, v2, v3);
  }

  else
  {
    if (qword_100B6B500)
    {
      sub_10000C1E8(qword_100B6B500);
      qword_100B6B500 = 0;
    }

    if (qword_100B6B4F8)
    {
      sub_10000C1E8(qword_100B6B4F8);
      qword_100B6B4F8 = 0;
    }

    if (qword_100B6B4E8)
    {
      sub_10000C1E8(qword_100B6B4E8);
      qword_100B6B4E8 = 0;
    }

    dword_100BCE2F8 = 0;
  }
}

uint64_t sub_1002EFBAC(uint64_t a1, unsigned int a2, int a3)
{
  v12 = 0;
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  if (!a1 && a3)
  {
    sub_1000D660C();
    return 101;
  }

  v6 = sub_1002EF1B0(a2, &v12);
  if (v6)
  {
    v5 = v6;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_Accept - linkhandle %d not found", v12);
      v7 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    return v5;
  }

  v8 = v12;
  if (*(v12 + 13) != 3)
  {
    return 408;
  }

  *(v12 + 72) = a1;
  v9 = *(v8 + 128);
  if (a3)
  {
    return sub_100305BDC(sub_1002EFD00, (v9 + 6), *(v8 + 48), (v8 + 56), 1);
  }

  v5 = sub_1002F20AC(15, v9, *(v8 + 10));
  v11 = v12;
  if (v5)
  {
    *(v12 + 164) = v5;
    sub_1002EE524(v11, 1);
  }

  else
  {
    if (!v12)
    {
      sub_1000D660C();
      v11 = v12;
    }

    v5 = 0;
    *(v11 + 13) = 9;
  }

  return v5;
}

void sub_1002EFD00(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1002F0620(a1);
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      if (sub_10000C240())
      {
        v8 = "";
        if (a3)
        {
          v8 = "Security failure, ";
        }

        sub_10000AF54("Policy enforcement failed, %s disconnecting ", v8);
        v9 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      *(v7 + 13) = 9;
      *(v7 + 164) = a2;
      (*(v7 + 72))(*(v7 + 8), 0, a2);
      v10 = sub_1002F20AC(15, *(v7 + 128), *(v7 + 10));
      if (v10)
      {
        v11 = v10;
        if (sub_10000C240())
        {
          sub_10000AF54("send DM failed");
          v12 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100814348();
          }
        }

        *(v7 + 164) = v11;
LABEL_21:
        sub_1002EE524(v7, 1);
      }
    }

    else
    {
      v13 = sub_1002F20AC(99, v6[16], *(v6 + 10));
      if (v13)
      {
        v14 = v13;
        if (sub_10000C240())
        {
          sub_10000AF54("connection failed");
          v15 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100814348();
          }
        }

        *(v7 + 13) = 9;
        *(v7 + 164) = v14;
        (*(v7 + 72))(*(v7 + 8), 0, v14);
        goto LABEL_21;
      }

      *(v7 + 13) = 4;
      v16 = *(v7 + 128);
      v17 = *(v7 + 10);
      v18 = *(v7 + 12);

      sub_1002F3E34(v16, 1, v17, v18, 0);
    }
  }

  else
  {

    sub_100306190(a1);
  }
}

uint64_t sub_1002EFF1C(unsigned int a1, int a2)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v2 = a1;
  v7 = 0;
  if (a1 >> 8 >= *qword_100BCE1F8)
  {
    return 916;
  }

  v3 = (qword_100B6B4E8 + 88 * (a1 >> 8));
  if (!*v3)
  {
    return 916;
  }

  result = sub_1002EE1C0(v3, a1, &v7);
  if (!result)
  {
    if (*(v7 + 13) - 6 >= 4)
    {
      *(v7 + 164) = a2;
      result = sub_1002F20AC(67, v3, v2);
      if (!result)
      {
        v6 = v7;
        if (!v7)
        {
          sub_1000D660C();
          v6 = v7;
        }

        result = 0;
        *(v6 + 13) = 6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002F000C(unsigned int a1, uint64_t a2)
{
  if (!dword_100BCE2F8)
  {
    return 408;
  }

  v4 = 0;
  result = sub_1002EF1B0(a1, &v4);
  if (result)
  {
    return 120;
  }

  *v4 = a2;
  return result;
}

uint64_t sub_1002F0070(unsigned int a1, uint64_t a2)
{
  v10 = 0;
  result = sub_1002EF1B0(a1, &v10);
  if (!result)
  {
    v6 = v10;
    if (!v10)
    {
      sub_1000D660C();
      v6 = v10;
    }

    v7 = *(v6 + 128);
    if (v7)
    {
      goto LABEL_12;
    }

    sub_1000D660C();
LABEL_11:
    v7 = *(v10 + 128);
LABEL_12:
    v8 = (v7 + 6);
    goto LABEL_13;
  }

  if (result == 927)
  {
    goto LABEL_11;
  }

  v5 = qword_100B6B4F0;
  if (!qword_100B6B4F0)
  {
    return result;
  }

  while (*v5 != a1)
  {
    v5 = *(v5 + 4);
    if (!v5)
    {
      return result;
    }
  }

  v8 = v5 + 1;
LABEL_13:
  result = 0;
  v9 = *v8;
  *(a2 + 4) = v8[2];
  *a2 = v9;
  return result;
}

uint64_t sub_1002F011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, _WORD *a7, _WORD *a8, uint64_t a9, int a10)
{
  v14 = a4;
  v40 = 0;
  v41 = 0;
  if (!dword_100BCE2F8)
  {
    v19 = sub_1002EF3EC();
    if (v19)
    {
      return v19;
    }
  }

  v18 = sub_1002EEDF8(a3, &v41, a3, a4);
  if (v18)
  {
    v19 = v18;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_createChannelForFastConnect Allocate Session failed");
      v20 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    return v19;
  }

  v21 = v41;
  v22 = *(a3 + 4);
  v23 = v41;
  *(v41 + 6) = *a3;
  v24 = v23 + 6;
  *(v21 + 10) = v22;
  *(v21 + 32) = 0;
  sub_1003045A0(0x28u);
  if (a5 <= 0x7F)
  {
    v25 = 5;
  }

  else
  {
    v25 = 6;
  }

  v26 = v25 + a5;
  if ((v25 + a5) >= 0x81u)
  {
    if (*(sub_1003045A0(0x28u) + 8) < v26)
    {
      v26 = *(sub_1003045A0(0x28u) + 8);
    }
  }

  else
  {
    v26 = 128;
  }

  v34 = v26;
  v35 = 327745535;
  v36 = 776;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v27 = sub_10028EA9C(3, &v34, v24, sub_1002F0808, sub_1002F0EF4, sub_1002F077C, (v21 + 2), &unk_1008A50D0);
  if (v27)
  {
    v19 = v27;
    *v21 = 0;
    if (!sub_10000C240())
    {
      return v19;
    }

    sub_10000AF54("OI_RFCOMM_createChannelForFastConnect create L2CAP channel failed");
    v28 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return v19;
    }

    goto LABEL_18;
  }

  *a8 = *(v21 + 2);
  *(v21 + 12) = a10 != 0;
  v29 = (2 * v14);
  if (a10)
  {
    v30 = sub_1002EE324(v21, v29, &v40);
  }

  else
  {
    v30 = sub_1002EE258(v21, v29, &v40);
  }

  v19 = v30;
  *(v21 + 12) = a10 != 0;
  if (v30)
  {
    *v21 = 0;
    if (!sub_10000C240())
    {
      return v19;
    }

    sub_10000AF54("OI_RFCOMM_createChannelForFastConnect allocate link failed");
    v31 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      return v19;
    }

LABEL_18:
    sub_100814348();
    return v19;
  }

  v32 = v40;
  *(v40 + 72) = a1;
  *(v32 + 40) = a2;
  *(v32 + 16) = a5;
  if (a7)
  {
    *a7 = *(v32 + 8);
  }

  *(v32 + 160) = a6 / a5;
  *(v32 + 48) = a9;
  v19 = sub_1002F1A00(v32);
  *v21 = 7;
  return v19;
}

void sub_1002F03E8(uint64_t a1, unsigned int a2)
{
  v10 = 0;
  if (sub_1000ABC7C(a2, &v10))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_FastConnectSetSessionMaxFrameSize L2CAP signal channel not found");
      v3 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        sub_10080F604();
      }
    }
  }

  else
  {
    v4 = sub_1002EE7C8(a1);
    if (v4)
    {
      v5 = v4;
      v6 = *(sub_1000B12AC(v10) + 32);
      v7 = *(sub_1000B12AC(v10) + 36);
      if (v6 < v7)
      {
        v7 = v6;
      }

      if (v7 >= 0x85)
      {
        v8 = -6;
      }

      else
      {
        v8 = -5;
      }

      *(v5 + 4) = v8 + v7;
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_FastConnectSetSessionMaxFrameSize Session not found");
      v9 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }
  }
}

void sub_1002F04F0(uint64_t a1, unsigned int a2)
{
  v4 = sub_1002EE7C8(a1);
  v13 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v4 + 16;
    v7 = (v4 + 16);
    do
    {
      v8 = *v7;
      if (*v7 == v6)
      {
        break;
      }

      *(v8 - 131) = 0;
      sub_1002EE524((v8 - 18), 0);
      v7 = *v7;
    }

    while (v7);
    *v5 = 0;
    sub_1002F39C8(v5);
    sub_1002F3A04(v5);
    sub_1002F1EC8(v5);
    sub_1002EED2C();
    v9 = qword_100B6B4F0;
    if (qword_100B6B4F0)
    {
      do
      {
        v10 = v9[4];
        sub_10000C1E8(v9);
        qword_100B6B4F0 = v10;
        v9 = v10;
      }

      while (v10);
    }

    qword_100B6B4F0 = 0;
  }

  if (a2 && !sub_1000ABC7C(a2, &v13) && v13)
  {
    sub_10028E908(v13);
    v11 = sub_1000E1FE8(a1);
    if (v11)
    {
      sub_1000D27D8(v11);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_RFCOMM_destroyChannelForFastConnect NULL Handle");
      v12 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

void *sub_1002F0620(int a1)
{
  if (dword_100BCE2F8)
  {
    if (*qword_100BCE1F8)
    {
      v1 = 0;
      do
      {
        if (qword_100B6B4E8)
        {
          v2 = (qword_100B6B4E8 + 88 * v1);
          if (*v2)
          {
            v3 = v2 + 16;
            v4 = v3;
            while (1)
            {
              v4 = *v4;
              if (!v4 || v4 == v3)
              {
                break;
              }

              if (*(v4 - 22) == a1)
              {
                return v4 - 18;
              }
            }
          }
        }

        ++v1;
      }

      while (v1 != *qword_100BCE1F8);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_GetLinkByPolicyHandle");
    v6 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }

  return 0;
}

uint64_t sub_1002F0700(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  v6 = *(a2 + 1);
  if (!v6)
  {
    sub_1000D660C();
    v6 = *(a2 + 1);
  }

  v9 = 0;
  v8 = 0;
  sub_1003052C8(a2, &v9, &v8);
  return v6(a1, v9, v8, a3);
}

void sub_1002F077C(int a1, unsigned __int8 *a2, uint64_t a3)
{
  if (dword_100BCE2F8)
  {

    sub_1002F26B8(a1, a2, a3);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("%!", 103);
    v4 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002F0808(int a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (dword_100BCE2F8)
  {
    v7 = sub_1002EE718(a1);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    if ((*v7 & 0xFE) != 2)
    {
      sub_1000D660C();
    }

    if (a4)
    {

      sub_1002EE888(v8, a4, 0);
    }

    else
    {
      if (a3 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = a3;
      }

      if (v10 >= 0x85)
      {
        v11 = -6;
      }

      else
      {
        v11 = -5;
      }

      *(v8 + 4) = v11 + v10;
      if (*v8 == 2)
      {
        if (sub_1002F20AC(47, v8, 0))
        {
          return;
        }

        v12 = 5;
      }

      else
      {
        v12 = 4;
      }

      *v8 = v12;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("%!", 103);
    v9 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002F0938(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  *(a1 + 88) = 0;
  sub_1000BC0D0(v4);
  v5 = *(a1 + 80);
  v6 = *(a1 + 8);

  return v5(v6, v4, a2);
}

void sub_1002F0994(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v28 = 0;
  if (!a4 || !sub_10000C240() || (sub_10000AF54("RFCOMM Write failed %!", v4), v7 = sub_10000C050(0x32u), !os_log_type_enabled(v7, OS_LOG_TYPE_ERROR)))
  {
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_10080F7A0();
  if (!a2)
  {
LABEL_5:
    sub_1000D660C();
  }

LABEL_6:
  v8 = sub_1002EE718(a1);
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 72) != a2)
    {
      sub_1000D660C();
    }

    *(v9 + 72) = 0;
    sub_1000BB9CC(a2);
    v10 = *(v9 + 80);
    v11 = *(v9 + 81);
    if (v10 != 1)
    {
      goto LABEL_19;
    }

    v12 = sub_1002EE1C0(v9, *(v9 + 81), &v28);
    if (v12)
    {
      v13 = v12;
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v13, v11);
        v14 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }

    if (v4)
    {
      goto LABEL_19;
    }

    if (!sub_100305660(*(v28 + 88), *(v28 + 16)))
    {
      v4 = 0;
LABEL_19:
      if (*(v9 + 56) != v9 + 56)
      {
        v16 = sub_10030528C((v9 + 56));
        v17 = (v16 - 2);
        if (sub_1000B7EDC(sub_1002F0994, *(v9 + 2), 0, *(v16 - 2), 0))
        {
          sub_1000BB9CC(*v17);
          if (sub_10000C240())
          {
            sub_10000AF54("Write failed");
            v18 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }

        else
        {
          *(v9 + 80) = *(v16 - 4);
          *(v9 + 72) = *(v16 - 2);
        }

        sub_10000C1E8(v17);
      }

      if (v10)
      {
        v19 = v28;
        if (!v28)
        {
          sub_1000D660C();
          v19 = v28;
        }

        v20 = *(v19 + 88);
        *(v19 + 88) = 0;
        sub_1000BC0D0(v20);
        (*(v19 + 80))(*(v19 + 8), v20, v4);
      }

      else if (v11 && !sub_1002EE1C0(v9, v11, &v28))
      {
        v21 = v28;
        v22 = *(v28 + 11);
        *(v28 + 11) = 0;
        if (v22 == 15)
        {
          v25 = *(v21 + 13);
          if (v25 != 6 && v25 != 9)
          {
            sub_1000D660C();
            v25 = *(v21 + 13);
          }

          if (v25 == 9)
          {
            sub_1002EE524(v21, 1);
          }
        }

        else if (v22 == 99)
        {
          v23 = *(v21 + 13);
          if (v23 == 8)
          {
            v26 = *(v21 + 72);
            v27 = *(v21 + 8);
            sub_1002EE524(v21, 0);
            v26(v27, 0, 927);
          }

          else if (v23 == 7)
          {
            *(v21 + 164) = 927;
            sub_1002F2044(v21, 0);
          }
        }
      }

      return;
    }

    if (!sub_1002F199C(v28))
    {
      *(v28 + 96) = 1;
      return;
    }

    v24 = sub_1002F238C(v9, v11, *(v28 + 88), 0, 1);
    if (v24)
    {
      v4 = v24;
      if (v24 == 410)
      {
        sub_1000D660C();
        v4 = 410;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RFCOMM session has gone away - freeing orphaned MBUF %lx", a2);
      v15 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000BB9CC(a2);
  }
}

void sub_1002F0D20(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (dword_100BCE2F8)
  {
    v17 = sub_1002EE7C8(a2);
    if (v17 || sub_1002EED8C(a2, a3, &v17, v5))
    {
      v6 = a3;
      v7 = 0;
      v8 = 0;
LABEL_5:
      sub_100290164(sub_1002F0808, sub_1002F0EF4, sub_1002F077C, v6, v7, v8, &unk_1008A50D0);
      return;
    }

    v10 = v17;
    if (!v17)
    {
      sub_1000D660C();
      v10 = v17;
    }

    *v10 = 3;
    v15 = 0u;
    v16 = 0u;
    sub_1003045A0(0x28u);
    *(&v15 + 2) = 327745535;
    WORD3(v15) = 776;
    WORD6(v15) = 0;
    BYTE8(v16) = 0;
    v11 = sub_1002EF100();
    v12 = sub_1002EF100();
    if (v11 <= 0x7F)
    {
      v13 = 5;
    }

    else
    {
      v13 = 6;
    }

    LOWORD(v15) = v12 + v13;
    if ((v12 + v13) > 0x80u)
    {
      if (*(sub_1003045A0(0x28u) + 8) >= (v12 + v13))
      {
LABEL_20:
        v7 = &v15;
        v6 = a3;
        v8 = 1;
        goto LABEL_5;
      }

      v14 = *(sub_1003045A0(0x28u) + 8);
    }

    else
    {
      v14 = 128;
    }

    LOWORD(v15) = v14;
    goto LABEL_20;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%!", 103);
    v9 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002F0EF4(int a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("RFCOMM's L2CAP link disconnected result = %!", a2);
    v4 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BCE2F8)
  {
    v5 = sub_1002EE718(a1);
    if (v5)
    {
      sub_1002EE888(v5, a2, *v5 == 10);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("%!", 103);
    v6 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002F1040(uint64_t a1)
{
  sub_100304AF8("BTVirtualTransportRegisterCBs\n");
  if (a1 && *a1 && (v2 = *(a1 + 8)) != 0 && (v3 = *(a1 + 16)) != 0 && (v4 = *(a1 + 24)) != 0 && (v5 = *(a1 + 32)) != 0)
  {
    result = 0;
    off_100B6B508 = *a1;
    off_100B6B510 = v2;
    off_100B6B518 = v3;
    off_100B6B520 = v4;
    off_100B6B528 = v5;
  }

  else
  {
    sub_100304AF8("BTVirtualTransportRegisterCBs invalid cbs\n");
    return 114;
  }

  return result;
}

uint64_t sub_1002F10D8(uint64_t a1, uint64_t a2)
{
  if (qword_100B6B530 != -1)
  {
    sub_100815BAC();
  }

  if (qword_100B6B538)
  {
    return 0;
  }

  else
  {
    return 114;
  }
}

void sub_1002F111C(int a1, uint64_t a2, unsigned int a3)
{
  if (!off_100B6B520)
  {
    sub_1000D660C();
  }

  sub_100304AF8("BTVirtual transport send packet type: 0x%x\n", a1);
  if (a1 == 1)
  {
    v6 = 3;
    v7 = &qword_100B6B548;
  }

  else
  {
    if (a1 != 2)
    {
      sub_100304AF8("Virtual transport default packet type: 0x%x\n", a1);
      return;
    }

    v6 = 4;
    v7 = &qword_100B6B550;
  }

  v8 = *v7;
  v9 = v6;
  v10 = malloc_type_malloc(v6 + a3, 0x100004077774924uLL);
  if (!v10)
  {
    sub_100815BC0();
  }

  v11 = v10;
  *v10 = a2;
  v10[2] = a3;
  if (a1 == 2)
  {
    v10[3] = BYTE1(a3);
  }

  if (a3)
  {
    sub_10001F6DC(&v10[v9]);
  }

  else
  {
    sub_10001F480(a2);
  }

  sub_100304AF8("BTVirtual transport send packet type: 0x%x 0x%x\n", a1, a2);
  v12 = 0;
  if ((off_100B6B520(v8, v11, v9 + a3, &v12, 0xFFFFFFFFLL, sub_1002F1960) & 1) == 0 && (byte_100B6B540 & 1) == 0)
  {
    sub_100304AF8("Virtual transport write failed: type %u\n", a1);
    __break(1u);
  }
}

uint64_t sub_1002F12F8()
{
  sub_100304AF8("BTVirtual transport init");
  if (off_100B6B508)
  {
    v0 = off_100B6B510 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || off_100B6B518 == 0 || off_100B6B520 == 0 || off_100B6B528 == 0)
  {
    sub_100304AF8("BTVirtual transport init failed, callbacks error");
    return 633;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    byte_100B6B540 = 0;
    off_100B6B508(&v5);
    LODWORD(v5) = 2;
    DWORD2(v6) = 5000;
    LODWORD(v7) = v7 | 0xC;
    *(&v7 + 4) = 0x10200000020;
    LODWORD(v10) = 25;
    *&v6 = &stru_100AE9F38;
    *&v8 = &stru_100AE9F78;
    *(&v8 + 1) = &stru_100AE9FB8;
    if (!off_100B6B510(&v5, &qword_100B6B548) || (off_100B6B508(&v5), LODWORD(v5) = 3, DWORD2(v6) = 5000, LODWORD(v7) = v7 | 4, *(&v7 + 4) = 0xA2200000020, LODWORD(v10) = 33, *&v6 = &stru_100AE9FF8, *&v8 = &stru_100AEA038, *(&v8 + 1) = &stru_100AEA078, !off_100B6B510(&v5, &qword_100B6B550)))
    {
      sub_100815BDC("Virtual transport failed to create HCI transport\n");
    }

    off_100B6B508(&v5);
    LODWORD(v5) = 5;
    DWORD2(v6) = 5000;
    LODWORD(v7) = v7 | 0xC;
    *(&v7 + 4) = 0x10200000020;
    LODWORD(v10) = 25;
    *&v6 = &stru_100AEA0B8;
    *&v8 = &stru_100AEA0F8;
    *(&v8 + 1) = &stru_100AEA138;
    if ((off_100B6B510(&v5, &qword_100B6B558) & 1) == 0)
    {
      sub_100815BDC("Virtual transport failed to create LMP transport\n");
    }

    return 0;
  }
}

void sub_1002F1540(id a1, int a2, void *a3, unsigned int a4)
{
  sub_100304AF8("BTVirtual readCompletionBlock: %d\n", a2);

  sub_1002F15A8(4, a2, a3, a4);
}

void sub_1002F15A8(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = a4;
  sub_100304AF8("BTVirtual handle_read type %u, status 0x%x, size %d\n", a1, a2, a4);
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual read failed: type %u, status 0x%x\n", a1, a2);
    }

    return;
  }

  if (byte_100B6B540)
  {
    goto LABEL_7;
  }

  if (byte_100B6B560)
  {
    sub_100304AF8("BTVirtual handle_read OI_SNIFF_LogReceive\n");
    sub_1000040DC(a3);
LABEL_7:
    if (!a3)
    {
      return;
    }

    goto LABEL_8;
  }

  v8[1] = 0;
  v8[0] = mach_continuous_time();
  if (sub_100003668(a1, a3, v4) < v4)
  {
    LOWORD(v4) = sub_100003668(a1, a3, v4);
  }

  sub_100304AF8("BTVirtual handle_read OI_HCIIfc_DataReceived\n");
  sub_10000394C(a1, a3, v4, v8);
  if (a3)
  {
LABEL_8:
    free(a3);
  }
}

void sub_1002F16B8(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual transport HCI write failed: 0x%x\n", a2);
      __break(1u);
    }
  }
}

void sub_1002F1728(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual transport ACL write failed: 0x%x\n", a2);
      __break(1u);
    }
  }
}

void sub_1002F1790(id a1, int a2, void *a3, unsigned int a4)
{
  sub_100304AF8("BTVirtual LMP readCompletionBlock: %d\n", a2);

  sub_1002F15A8(7, a2, a3, a4);
}

void sub_1002F17F8(id a1, int a2, void *a3, unsigned int a4)
{
  if (a2)
  {
    if ((byte_100B6B540 & 1) == 0)
    {
      sub_100304AF8("Virtual transport LMP write failed: 0x%x\n", a2);
      __break(1u);
    }
  }
}

void sub_1002F1830()
{
  sub_100304AF8("BTVirtual transport free\n");
  if (off_100B6B528)
  {
    v0 = off_100B6B518 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    if (off_100B6B528(qword_100B6B548) && (off_100B6B518(&qword_100B6B548) & 1) == 0)
    {
      sub_100815BF4();
    }

    if (off_100B6B528(qword_100B6B550) && (off_100B6B518(&qword_100B6B550) & 1) == 0)
    {
      sub_100815C10();
    }

    if (off_100B6B528(qword_100B6B568) && (off_100B6B518(&qword_100B6B568) & 1) == 0)
    {
      sub_100815C2C();
    }

    if (off_100B6B528(qword_100B6B558))
    {
      if ((off_100B6B518(&qword_100B6B558) & 1) == 0)
      {
        sub_100815C48();
      }
    }
  }
}

uint64_t sub_1002F1928()
{
  sub_100304AF8("BTVirtual transport terminate\n");
  sub_10000C198();
  sub_1002F1830();
  sub_1000031B0();
  return 0;
}

void sub_1002F1960(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

BOOL sub_1002F199C(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 128);
  if (*(v2 + 44) != 1)
  {
    return *(a1 + 32) == 1 && (*(v2 + 45) & 1) != 0;
  }

  return *(a1 + 18) != 0;
}

uint64_t sub_1002F1A00(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 160);
  if (!*(a1 + 160))
  {
    result = 0;
    *(a1 + 162) = 0;
    goto LABEL_13;
  }

  if (v2 >= 0xFF)
  {
    v2 = 255;
  }

  *(a1 + 162) = v2;
  v3 = (a1 + 162);
  *(a1 + 163) = 0;
  v4 = sub_100007618(24 * v2, 0x10300407B68707EuLL);
  *(a1 + 104) = v4;
  if (v4)
  {
    if (*v3)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = sub_100007618(*(a1 + 16), 0x9A058AFCuLL);
        v8 = *(a1 + 104);
        v9 = &v8[v5];
        *v9 = v7;
        *(v9 + 4) = 0;
        if (!v7)
        {
          break;
        }

        ++v6;
        v5 += 24;
        if (v6 >= *v3)
        {
          goto LABEL_11;
        }
      }

      if (v6)
      {
        v11 = 0;
        do
        {
          sub_10000C1E8(*(*(a1 + 104) + v11));
          v11 += 24;
          --v6;
        }

        while (v6);
        v8 = *(a1 + 104);
      }

      sub_10000C1E8(v8);
      result = 106;
      goto LABEL_14;
    }

LABEL_11:
    result = 0;
LABEL_13:
    v3 = (a1 + 14);
LABEL_14:
    *v3 = 0;
    return result;
  }

  return 106;
}

uint64_t sub_1002F1B10(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 162))
  {
    v2 = sub_1002F1C10(a1);
    if (v2)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v4 += *(v2 + 8);
        v2 = sub_1002F1C10(a1);
        --v3;
      }

      while (v2);
      if (v3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%d rcv packets discarded (%d bytes total)", -v3, v4);
          v5 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }

    if (*(a1 + 162))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        sub_10000C1E8(*(*(a1 + 104) + v6));
        ++v7;
        v6 += 24;
      }

      while (v7 < *(a1 + 162));
      if (*(a1 + 162))
      {
        sub_10000C1E8(*(a1 + 104));
        *(a1 + 104) = 0;
        *(a1 + 162) = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1002F1C10(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  result = *(a1 + 112);
  if (result)
  {
    *(a1 + 112) = *(result + 16);
    if (result == *(a1 + 120))
    {
      *(a1 + 120) = 0;
    }

    --*(a1 + 163);
  }

  return result;
}

uint64_t sub_1002F1C64(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v6 = *(a1 + 16);
  if (v6 >= a3)
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    sub_1000D660C();
    v6 = *(a1 + 16);
  }

  if (v6 < a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received RFCOMM packet with larger payload size %d than set on link (%d)", a3, *(a1 + 16));
      v7 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 104;
  }

  if (!*(a1 + 162))
  {
    return 104;
  }

  v8 = 0;
  v9 = *(a1 + 104);
  while (1)
  {
    v10 = v9 + v8;
    if (!*(v9 + v8 + 8))
    {
      break;
    }

    v8 += 24;
    if (24 * *(a1 + 162) == v8)
    {
      return 104;
    }
  }

  *(v10 + 8) = a3;
  memmove(*v10, a2, a3);
  v12 = *(a1 + 104);
  if (!v12)
  {
    sub_1000D660C();
  }

  v13 = v12 + v8;
  v14 = (a1 + 112);
  if (*(a1 + 112))
  {
    v14 = (*(a1 + 120) + 16);
  }

  result = 0;
  *v14 = v13;
  *(v12 + v8 + 16) = 0;
  *(a1 + 120) = v13;
  ++*(a1 + 163);
  return result;
}

uint64_t sub_1002F1DA8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    sub_1000D660C();
  }

  if ((*(*(a1 + 128) + 44) & 1) == 0)
  {
    sub_1000D660C();
  }

  if (*(a1 + 14) + v2 >= 0x100)
  {
    sub_1000D660C();
  }

  result = sub_1002F25A0(*(a1 + 128), *(a1 + 10), 0, 0, v2);
  if (!result)
  {
    *(a1 + 14) += v2;
  }

  return result;
}

uint64_t sub_1002F1E20(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  result = sub_1002F199C(a1);
  if (result && *(a1 + 96) == 1)
  {
    result = sub_1002F238C(*(a1 + 128), *(a1 + 10), *(a1 + 88), 0, 1);
    if (!result)
    {
      *(a1 + 96) = 0;
    }
  }

  return result;
}

void sub_1002F1E80(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  for (i = v4; i && i != v2; i = *i)
  {
    sub_1002F1E20((i - 18));
  }
}

uint64_t sub_1002F1EC8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 40);

  return sub_10002242C(v2);
}

uint64_t sub_1002F1F04(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7[0] = 0;
  v3 = (a1 + 40);
  sub_10002242C(*(a1 + 40));
  v7[1] = &v8;
  LOWORD(v7[0]) = 8;
  v4 = sub_10002195C(sub_1002F1FC0, v7, a2, v3);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error registering session shutdown dispatch - %!", v4);
      v5 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v4;
}

void sub_1002F1FC0(uint64_t a1)
{
  v1 = sub_1002EE5D0(**(a1 + 8), 1, 930);
  if (v1)
  {
    v2 = v1;
    if (sub_10000C240())
    {
      sub_10000AF54("RFCOMM session shutdown failed - %!", v2);
      v3 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_1002F2044(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  *(a1 + 13) = 9;
  sub_1002EE438(a1);
  (**(a1 + 40))(*(a1 + 8), *(a1 + 164));

  sub_1002EE524(a1, a2);
}

uint64_t sub_1002F20AC(int a1, uint64_t a2, uint64_t a3)
{
  if (((a1 - 47) > 0x34 || ((1 << (a1 - 47)) & 0x10000000100001) == 0) && a1 != 15)
  {
    sub_1000D660C();
  }

  if (*(a2 + 12))
  {
    v6 = 67;
  }

  else
  {
    v6 = 99;
  }

  if (*(a2 + 12))
  {
    v7 = 47;
  }

  else
  {
    v7 = 15;
  }

  if (v7 == a1 || v6 == a1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v21 = 1;
  v20[0] = v9 | (4 * a3);
  v20[1] = a1 | 0x10;
  HIBYTE(v21) = sub_1002F37AC(v20, 3);
  v10 = sub_1003053B4(v20, 4uLL, 0);
  if (!v10)
  {
    return 106;
  }

  v11 = v10;
  v12 = sub_1002F2270(a2, a3, v10, 0);
  if (!v12)
  {
    v19 = 0;
    if (a3)
    {
      v15 = sub_1002EE1C0(a2, a3, &v19);
      if (v15)
      {
        return v15;
      }

      v16 = v19;
      *(v19 + 11) = a1;
      if (a1 == 47)
      {
        v17 = 2;
      }

      else
      {
        if (a1 != 67)
        {
          return 0;
        }

        v17 = 6;
      }

      *(v16 + 13) = v17;
    }

    else if (a1 != 47 && a1 != 67)
    {
      return 0;
    }

    sub_1002F3864(a2);
    return 0;
  }

  v13 = v12;
  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v13, a3);
    v14 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000BB9CC(v11);
  return v13;
}

uint64_t sub_1002F2270(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v8 = sub_1000B7EDC(sub_1002F0994, *(a1 + 2), 0, a3, 0);
  if (!v8)
  {
    v10 = 0;
    *(a1 + 80) = a4;
    *(a1 + 81) = a2;
    *(a1 + 72) = a3;
    return v10;
  }

  if (v8 == 410)
  {
    v9 = sub_100007618(0x20uLL, 0x10200408EAB821DuLL);
    if (v9)
    {
      *v9 = a3;
      v9[8] = a4;
      v9[9] = a2;
      sub_1003051F4(v9 + 2, a1 + 56);
      return 0;
    }

    return 106;
  }

  v11 = sub_100007618(0x20uLL, 0x10200408EAB821DuLL);
  if (!v11)
  {
    return 106;
  }

  v12 = v11;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 9) = a2;
  sub_1003051F4(v11 + 2, a1 + 56);
  v10 = sub_1002F1F04(a1, 0);
  if (v10)
  {
    sub_100305208(v12 + 2);
    sub_10000C1E8(v12);
  }

  return v10;
}

uint64_t sub_1002F238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a4;
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v10 = *(a3 + 4);
  v11 = sub_1002F2514(a1, v8, v10, v6, &v22);
  v21 = sub_1002F37AC(&v22, 2);
  v12 = sub_1000B914C(3u);
  if (!v12)
  {
    return 106;
  }

  v13 = v12;
  sub_10001F968(v12, &v22, v11, 0);
  sub_1000BAD68(v13, a3);
  sub_10001F968(v13, &v21, 1uLL, 0);
  if (*(a1 + 44) == 1 && v8 && v10)
  {
    v14 = sub_1002EE1C0(a1, v8, &v20);
    if (v14)
    {
      v15 = v14;
LABEL_18:
      sub_1000BB9CC(v13);
      return v15;
    }

    v16 = v20;
    v17 = *(v20 + 14);
    if (v17 + v6 >= 0x100)
    {
      sub_1000D660C();
      v16 = v20;
      LOBYTE(v17) = *(v20 + 14);
    }

    *(v16 + 14) = v17 + v6;
    v18 = *(v16 + 18);
    if (!v18)
    {
      sub_1000D660C();
      v16 = v20;
      v18 = *(v20 + 18);
    }

    *(v16 + 18) = v18 - 1;
  }

  v15 = sub_1002F2270(a1, v8, v13, a5);
  if (v15)
  {
    goto LABEL_18;
  }

  return v15;
}

uint64_t sub_1002F2514(uint64_t a1, char a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  if (*(a1 + 12))
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *a5 = v5 | (4 * a2);
  v6 = 2 * a3;
  if (a4)
  {
    a5[1] = -1;
    if (a3 < 0x80)
    {
      a5[2] = v6 | 1;
LABEL_11:
      result = 4;
      v8 = 3;
      goto LABEL_12;
    }

    a5[2] = v6;
    a5[3] = a3 >> 7;
    result = 5;
    v8 = 4;
  }

  else
  {
    a5[1] = -17;
    if (a3 >= 0x80)
    {
      a5[2] = v6;
      a4 = a3 >> 7;
      goto LABEL_11;
    }

    LOBYTE(a4) = v6 | 1;
    result = 3;
    v8 = 2;
  }

LABEL_12:
  a5[v8] = a4;
  return result;
}

uint64_t sub_1002F25A0(uint64_t a1, int a2, char *a3, size_t a4, unsigned int a5)
{
  v8 = a2;
  if (a2 && a4)
  {
    sub_1000D660C();
  }

  v10 = sub_1000B914C(3u);
  if (!v10)
  {
    return 106;
  }

  v11 = v10;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v12 = sub_1002F2514(a1, v8, a4, a5, &v16);
  v13 = sub_10001F968(v11, &v16, v12, 0);
  if (v13 || (v13 = sub_10001F968(v11, a3, a4, 0), v13) || (v18 = sub_1002F37AC(&v16, 2), v13 = sub_10001F968(v11, &v18, 1uLL, 0), v13))
  {
    v14 = v13;
  }

  else
  {
    v14 = sub_1002F2270(a1, v8, v11, 0);
    if (!v14)
    {
      return v14;
    }
  }

  sub_1000BB9CC(v11);
  return v14;
}

void sub_1002F26B8(int a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1002EE718(a1);
  if (!v5)
  {
    return;
  }

  if (a3 > 3)
  {
    v7 = v5;
    v8 = a2[1];
    v9 = v8 & 0xFFFFFFEF;
    if ((v8 & 0xFFFFFFEF) - 47 > 0x34 || ((1 << ((v8 & 0xEFu) - 47)) & 0x10000000100001) == 0)
    {
      if (v9 == 239)
      {
        if (sub_1002F3830(*a2, v8, a2[a3 - 1]))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("UIH FCS Error: %@", a2, a3);
            v12 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }
          }
        }

        else
        {

          sub_1002F3294(v7, a2, a3);
        }

        return;
      }

      if (v9 != 15)
      {
        return;
      }
    }

    if (sub_1002F37F0(*a2, v8, a2[2], a2[a3 - 1]))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FCS Error: %@", a2, a3);
        v11 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }
    }

    else if (v9 > 0x42u)
    {
      if (v9 == 67)
      {

        sub_1002F2DCC(v7, a2);
      }

      else if (v9 == 99)
      {

        sub_1002F2B0C(v7, a2);
      }
    }

    else if (v9 == 15)
    {

      sub_1002F3044(v7, a2);
    }

    else if (v9 == 47)
    {

      sub_1002F2940(v7, a2);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_Rfcomm_ReceiveFrame invalid frame length=%d", a3);
    v6 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      sub_10080F7A0();
    }
  }
}

unsigned __int8 *sub_1002F2940(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 1) != 0 && (a2[1] & 0x10) != 0)
  {
    v3 = result;
    if (((((v2 & 2) == 0) ^ result[12]) & 1) == 0)
    {
      v12 = 0;
      v4 = v2 >> 2;
      v5 = *result;
      if (v5 != 7)
      {
        if (v5 == 4 && v2 <= 3)
        {
          result = sub_1002F20AC(99, result, v2 >> 2);
          if (!result)
          {
            *v3 = 7;
          }

          return result;
        }

        return sub_1002F20AC(15, v3, v2 >> 2);
      }

      if (v2 > 0xF7 || v4 == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", 912, v2 >> 2);
          v9 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return sub_1002F20AC(15, v3, v2 >> 2);
      }

      if (sub_1002EE1C0(result, v2 >> 2, &v12))
      {
        v6 = sub_1002EE258(v3, v2 >> 2, &v12);
        if (v6)
        {
          v7 = v6;
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", v7, 0);
            v8 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return sub_1002F20AC(15, v3, v2 >> 2);
        }

        v10 = v12;
        if (!v12)
        {
          sub_1000D660C();
          v10 = v12;
        }
      }

      else
      {
        v10 = v12;
        if (*(v12 + 13) == 6)
        {
          return sub_1002F20AC(15, v3, v2 >> 2);
        }
      }

      *(v10 + 13) = 3;
      *(v10 + 10) = v4;
      result = sub_1002EF144((v3 + 6), v2 >> 3);
      if (!result)
      {
        return result;
      }

      v11 = v12;
      *(v12 + 164) = 921;
      sub_1002EE524(v11, 0);
      return sub_1002F20AC(15, v3, v2 >> 2);
    }
  }

  return result;
}

void sub_1002F2B0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  sub_1002F39C8(a1);
  v4 = *a2;
  if ((v4 & 1) == 0 || (a2[1] & 0x10) == 0 || ((v4 & 2) == 0) == a1[12])
  {
    return;
  }

  v20 = 0;
  v5 = v4 >> 2;
  v6 = *a1;
  if (v6 == 9)
  {
    if (v4 <= 3)
    {
      v16 = sub_10029104C(*(a1 + 1), 560);
      if (v16)
      {

        sub_1002EE888(a1, v16, 1);
      }

      else
      {
        *a1 = 10;
      }

      return;
    }

    if (sub_1002EE1C0(a1, v4 >> 2, &v20))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", 912, v5);
      v18 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_42:
      sub_10080F7A0();
      return;
    }

    v14 = v20;
LABEL_38:
    sub_1002F2044(v14, 1);
    return;
  }

  if (v6 != 7)
  {
    if (v6 == 5 && v4 <= 3)
    {
      *a1 = 7;
      v9 = *(a1 + 2);
      v7 = a1 + 16;
      v8 = v9;
      if (v9)
      {
        if (v8 != v7)
        {
          do
          {
            v20 = (v8 - 144);
            v10 = sub_1002EEF20((v8 - 144));
            if (v10)
            {
              v11 = v10;
              v12 = *(v8 + 1);
              (*(v8 - 9))(*(v8 - 68), 0, v10);
              *(v8 + 5) = v11;
              sub_1002EE524((v8 - 144), 1);
              v8 = v12;
            }

            v8 = *v8;
            if (v8)
            {
              v13 = v8 == v7;
            }

            else
            {
              v13 = 1;
            }
          }

          while (!v13);
        }
      }
    }

    return;
  }

  if (v5 == 1 || (v4 + 8) <= 0xBu)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", 101, v5);
      v17 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (sub_1002EE1C0(a1, v5, &v20))
  {
    return;
  }

  v14 = v20;
  v15 = *(v20 + 13);
  if (v15 == 6)
  {
    goto LABEL_38;
  }

  if (v15 == 2)
  {
    *(v20 + 13) = 4;
    sub_1002F3E34(a1, 1, v5, *(v14 + 12), 0);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", 408, *(v20 + 13));
    v19 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }
  }
}

void sub_1002F2DCC(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 1) == 0 || (a2[1] & 0x10) == 0)
  {
    return;
  }

  v18 = 0;
  if (((v2 & 2) == 0) != a1[12])
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%! (%d)", 917, 0);
    v4 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = v2 >> 2;
  if (v2 > 0xF7 || v5 == 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%! (%d)", 920, v5);
    v7 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_7:
    sub_10080F7A0();
    return;
  }

  if (*a1 != 7)
  {
    goto LABEL_22;
  }

  if (v2 <= 3)
  {
    v8 = sub_1003045A0(0x32u);
    if (*(v8 + 10))
    {
      v9 = *(v8 + 10);
    }

    else
    {
      v9 = 30;
    }

    *a1 = 8;
    sub_1002F1F04(a1, v9);
LABEL_22:

    sub_1002F20AC(99, a1, v5);
    return;
  }

  if (sub_1002EE1C0(a1, v2 >> 2, &v18))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DLCI %d not found", v5);
      v10 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v11 = sub_1002F20AC(99, a1, v5);
    v12 = v18;
    v13 = *(v18 + 13);
    if (v13 != 6)
    {
      if (v13 == 5)
      {
        *(v18 + 13) = 7;
        if (v11)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("RFCOMM send command failed with result : %!", v11);
            v14 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v15 = v18;
          *(v18 + 164) = 933;
          sub_1002F2044(v15, 0);
        }
      }

      else
      {
        v16 = *(v18 + 72);
        if (v16)
        {
          *(v18 + 13) = 8;
          if (v11)
          {
            v17 = *(v12 + 8);
            sub_1002EE524(v12, 0);
            v16(v17, 0, 927);
          }
        }
      }
    }
  }
}

void sub_1002F3044(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 1) == 0 || ((v2 & 2) == 0) == a1[12])
  {
    return;
  }

  v15 = 0;
  v5 = sub_1002EE1C0(a1, v2 >> 2, &v15);
  if (!v5)
  {
    if ((a2[1] & 0x10) == 0 && (*(v15 + 13) | 4) == 6)
    {
      return;
    }

    v8 = *a1;
    if (v8 != 7)
    {
      if (v8 == 5)
      {
        sub_1002F39C8(a1);
        sub_1002EE5D0(a1, 0, 929);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Unexpected DM received");
        v9 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }
      }

      return;
    }

    if (v2 >> 2 == 1 || (v2 + 8) < 0xCu)
    {
      return;
    }

    if ((*(v15 + 13) | 4) == 6)
    {
      sub_1002F39C8(a1);
    }

    else
    {
      sub_1002F3A04(a1);
    }

    v10 = v15;
    v11 = *(v15 + 13);
    if (v11 > 9)
    {
LABEL_24:
      if (v11 < 3)
      {
        v12 = *(v15 + 72);
        if (v12)
        {
          *(v15 + 164) = 934;
          v12(*(v10 + 8), 0, 913);
          sub_1002EE524(v15, 1);
          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Received unsolicited remote reject, ignore");
          v14 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }
        }
      }

      return;
    }

    if (((1 << v11) & 0x38) != 0)
    {
      v13 = 934;
    }

    else
    {
      if (((1 << v11) & 0x180) == 0)
      {
        if (((1 << v11) & 0x240) == 0)
        {
          goto LABEL_24;
        }

LABEL_30:
        sub_1002F2044(v10, 1);
        return;
      }

      v13 = 927;
    }

    *(v15 + 164) = v13;
    goto LABEL_30;
  }

  v6 = v5;
  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", v6, v2 >> 2);
    v7 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_34:
      sub_10080F7A0();
    }
  }
}

void sub_1002F3294(_BYTE *result, unsigned __int8 *a2, int a3)
{
  v33 = 0;
  v3 = *a2;
  if (v3)
  {
    if (result[12] == 1)
    {
      if ((v3 & 2) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", 917, 0);
          v6 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }
        }

        return;
      }
    }

    else if ((v3 & 2) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", 917, 0);
        v7 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }

      return;
    }

    v8 = a2[2];
    if (v8)
    {
      v9 = v8 >> 1;
      v10 = 3;
    }

    else
    {
      v9 = (v8 | (a2[3] << 8)) >> 1;
      v10 = 4;
    }

    v11 = a2[1];
    if ((v11 & 0x10) != 0)
    {
      if (result[44] != 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", 917, 0);
          v17 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }
        }

        return;
      }

      v12 = a2[v10++];
    }

    else
    {
      v12 = 0;
    }

    if (v9 + v10 + 1 != a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", 917, 0);
        v16 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }

      return;
    }

    if (*result != 7)
    {
      return;
    }

    v13 = v3 >> 2;
    if (v3 > 0xF7 || v13 == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", 917, v13);
        v18 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }
      }

      return;
    }

    v14 = &a2[v10];
    if (v3 <= 3)
    {
      v15 = &a2[v10];

      sub_1002F4044(result, v15, v9);
      return;
    }

    v19 = sub_1002EE1C0(result, v3 >> 2, &v33);
    if (v19)
    {
      v20 = v19;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v20, v13);
      v21 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_41;
    }

    if (result[44] == 1)
    {
      if ((v11 & 0x10) != 0 && v12)
      {
        v22 = v33;
        v23 = *(v33 + 18);
        if (v12 >= (v23 ^ 0xFFFFu))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", 922, v13);
            v26 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          sub_1002EFF1C(*(v33 + 8), 922);
          return;
        }

        v24 = v23 + v12;
        *(v33 + 18) = v24;
        if (v12 == v24)
        {
          sub_1002F1E20(v22);
        }
      }

      v25 = v33;
      if (!v9)
      {
        if ((*(v33 + 33) & 1) != 0 || result[44] != 1)
        {
          return;
        }

        goto LABEL_68;
      }

      if (*(v33 + 14))
      {
        --*(v33 + 14);
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Received data when remote credits = 0!");
        v27 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    v25 = v33;
    if (*(v33 + 33))
    {
      if (!v9)
      {
        return;
      }

      if (result[44] == 1)
      {
        v28 = *(v33 + 14);
        if (v28 <= *(qword_100BCE1F8 + 2))
        {
          if (*(v33 + 162))
          {
            v29 = *(v33 + 162) - (v28 + *(v33 + 163));
          }

          else
          {
            v29 = ~v28;
          }

          if (sub_1002F1DA8(v33, v29))
          {
            return;
          }

          v25 = v33;
        }
      }

LABEL_73:
      (*(*(v25 + 40) + 8))(*(v25 + 8), v14, v9);
      return;
    }

    if ((result[44] & 1) == 0)
    {
      if (!v9)
      {
        return;
      }

      goto LABEL_73;
    }

LABEL_68:
    v30 = sub_1002F1C64(v25, v14, v9);
    if (!v30)
    {
      return;
    }

    v31 = v30;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Save received packet failed in Receive_UIH %! (%d)", v31, v13);
    v32 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_41:
    sub_10080F7A0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", 917, 0);
    v4 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002F37AC(char *a1, int a2)
{
  if (a2)
  {
    v2 = -1;
    do
    {
      v3 = *a1++;
      --a2;
      v2 = byte_1008A5100[(v3 ^ v2)];
    }

    while (a2);
    return ~v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F37F0(char a1, char a2, char a3, int a4)
{
  if ((byte_1008A5100[(byte_1008A5100[(byte_1008A5100[~a1] ^ a2)] ^ a3)] ^ a4) == 0xFF)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_1002F3830(char a1, char a2, int a3)
{
  if ((byte_1008A5100[(byte_1008A5100[~a1] ^ a2)] ^ a3) == 0xFF)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_1002F3864(uint64_t a1)
{
  v4 = a1;
  v3[0] = 0;
  v1 = (a1 + 32);
  sub_10002242C(*(a1 + 32));
  v3[1] = &v4;
  LOWORD(v3[0]) = 8;
  return sub_10002195C(sub_1002F38D8, v3, *(qword_100BCE1F8 + 4), v1);
}

uint64_t sub_1002F38D8(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Timeout occurred");
    v2 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v2);
    }
  }

  return sub_1002EE5D0(**(a1 + 8), 1, 931);
}

uint64_t sub_1002F394C(uint64_t a1)
{
  v4 = a1;
  if (!a1)
  {
    sub_1000D660C();
  }

  v3[0] = 0;
  sub_10002242C(*(a1 + 36));
  v3[1] = &v4;
  LOWORD(v3[0]) = 8;
  return sub_10002195C(sub_1002F38D8, v3, *(qword_100BCE1F8 + 8), (a1 + 36));
}

uint64_t sub_1002F39C8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 32);

  return sub_10002242C(v2);
}

uint64_t sub_1002F3A04(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 36);

  return sub_10002242C(v2);
}

uint64_t sub_1002F3A40(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 36);

  return sub_100304F30(v2);
}

uint64_t sub_1002F3A7C(uint64_t a1, int a2, unsigned int a3, unsigned __int8 a4, __int16 a5, char a6)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v12 = -125;
  }

  else
  {
    v12 = -127;
  }

  LOBYTE(v19[0]) = v12;
  HIBYTE(v19[0]) = 17;
  if (a3 >= 0x40)
  {
    sub_1000D660C();
  }

  memset(&v19[1] + 1, 0, 7);
  LOBYTE(v19[1]) = a3;
  if (a2)
  {
    v13 = -16;
  }

  else
  {
    v13 = -32;
  }

  if (*(a1 + 44))
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 44))
  {
    v15 = a6;
  }

  else
  {
    v15 = 0;
  }

  HIBYTE(v19[1]) = v14;
  v19[2] = a4;
  v19[3] = a5;
  LOBYTE(v19[4]) = 0;
  HIBYTE(v19[4]) = v15;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  v18 = 0;
  v16 = sub_1002F25A0(a1, 0, v19, 0xAuLL, 0);
  if (!v16)
  {
    v16 = sub_1002EE1C0(a1, a3, &v18);
    if (v16)
    {
      sub_1000D660C();
    }

    if (!*(v18 + 13))
    {
      *(v18 + 13) = 1;
    }
  }

  return v16;
}

uint64_t sub_1002F3BE0(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  if ((a4 & 0x80) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_RfcommMux_TEST invalid size=%d", a4);
      v9 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 114;
  }

  else
  {
    if (a2)
    {
      v7 = 35;
    }

    else
    {
      v7 = 33;
    }

    v10[0] = v7;
    v10[1] = (2 * a4) | 1;
    __memmove_chk();
    if (a2)
    {
      sub_1002F394C(a1);
    }

    return sub_1002F25A0(a1, 0, v10, (a4 + 2), 0);
  }
}

uint64_t sub_1002F3D4C(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v4 = -93;
  }

  else
  {
    v4 = -95;
  }

  v6[0] = v4;
  v6[1] = 1;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v6, 2uLL, 0);
}

uint64_t sub_1002F3DC0(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v4 = 99;
  }

  else
  {
    v4 = 97;
  }

  v6[0] = v4;
  v6[1] = 1;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v6, 2uLL, 0);
}

uint64_t sub_1002F3E34(uint64_t a1, int a2, char a3, char a4, int a5)
{
  v11 = 0;
  if (a2)
  {
    v6 = -29;
  }

  else
  {
    v6 = -31;
  }

  v10[0] = v6;
  if (a5)
  {
    v11 = (16 * a5) | 3;
    v7 = 5;
    v8 = 7;
  }

  else
  {
    a4 |= 1u;
    v7 = 4;
    v8 = 5;
  }

  v10[1] = v8;
  v10[3] = a4;
  v10[2] = (4 * a3) | 3;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v10, v7, 0);
}

uint64_t sub_1002F3ED4(uint64_t a1, int a2, char a3, uint64_t a4)
{
  memset(&v11[1] + 1, 0, 7);
  if (a2)
  {
    v5 = -109;
  }

  else
  {
    v5 = -111;
  }

  LOBYTE(v11[0]) = v5;
  LOBYTE(v11[1]) = (4 * a3) | 3;
  if (a4)
  {
    if (*(a4 + 2) > 8u)
    {
      return 903;
    }

    HIBYTE(v11[1]) = *(a4 + 2);
    v8 = *(a4 + 3);
    if (v8 > 3)
    {
      return 904;
    }

    v9 = *(a4 + 4);
    if ((v9 | 4) != 4)
    {
      return 905;
    }

    v10 = *(a4 + 5);
    if ((v10 | 8) != 8)
    {
      return 906;
    }

    if (((*(a4 + 6) >> 4) | (16 * *(a4 + 6))) > 3u)
    {
      return 907;
    }

    LOBYTE(v11[2]) = *(a4 + 6) | v10 | v9 | v8;
    if (*(a4 + 7) > 0x20u)
    {
      return 908;
    }

    HIBYTE(v11[2]) = *(a4 + 7);
    v11[3] = *(a4 + 8);
    v11[4] = *a4;
    v7 = 8;
  }

  else
  {
    v7 = 1;
  }

  HIBYTE(v11[0]) = (2 * v7) | 1;
  if (a2)
  {
    sub_1002F394C(a1);
  }

  return sub_1002F25A0(a1, 0, v11, v7 | 2u, 0);
}

void sub_1002F4044(uint64_t a1, char *a2, int a3)
{
  v3 = a1;
  v4 = *a2;
  v5 = *a2 & 0xFC;
  v6 = a2[1] >> 1;
  if (v6 + 2 != a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid RFCOMM packet received, command (%d), force disconnect the link", v4 & 0xFC);
      v11 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10023BD60(v3 + 6);
    return;
  }

  HIDWORD(v9) = v5 - 16;
  LODWORD(v9) = v5 - 16;
  v8 = v9 >> 4;
  if (v8 <= 6)
  {
    if (v8 <= 3)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          if (v5 != 32)
          {
            sub_1000D660C();
            v4 = *a2;
          }

          if ((v4 & 2) != 0)
          {

            sub_1002F3BE0(v3, 0, (a2 + 2), v6);
          }

          else
          {
            sub_1002F3A04(v3);
            v10 = *(v3 + 48);
            if (v10)
            {
              v10(v3 + 6, a2 + 2, v6);
              *(v3 + 48) = 0;
              return;
            }

            if (sub_10000C240())
            {
              sub_10000AF54("Mux_ReceiveTEST, receive response but no outstanding command, ignoring");
              v45 = sub_10000C050(0x32u);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_124;
              }
            }
          }

          return;
        }

LABEL_70:
        LOWORD(v95) = 785;
        BYTE2(v95) = v4 & 0xFE;
        sub_1002F25A0(a1, 0, &v95, 3uLL, 0);
        return;
      }

      if (v6 == 1)
      {

        sub_1002F3A40(a1);
        return;
      }

      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", 917, 0);
      v31 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_124:
      sub_10080F7A0();
      return;
    }

    if (v8 != 4)
    {
      if (v8 != 5)
      {
        goto LABEL_70;
      }

      if (!a1)
      {
        sub_1000D660C();
        v4 = *a2;
      }

      if ((v4 & 2) != 0)
      {
        sub_1002F3DC0(v3, 0);
        if ((*(v3 + 44) & 1) == 0)
        {
          *(v3 + 45) = 0;
        }

        return;
      }

      goto LABEL_67;
    }

    v95 = 0;
    if (v6 != 2)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", 917, 0);
      v33 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v30 = a2[2];
    v13 = v30 >> 2;
    if (v30 > 0xF7 || v13 == 1)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", 917, v30 >> 2);
      v40 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    if ((v4 & 2) == 0)
    {
LABEL_63:
      sub_1002F3A04(a1);
      return;
    }

    v52 = a2[3];
    v53 = sub_1002EE1C0(a1, v30 >> 2, &v95);
    if (!v53)
    {
      LOWORD(v92) = 1361;
      BYTE2(v92) = v30 | 3;
      BYTE3(v92) = v52;
      sub_1002F25A0(v3, 0, &v92, 4uLL, 0);
      v79 = *(*(v95 + 40) + 16);
      if (v79)
      {
        v79(*(v95 + 8), v52 & 0xF);
      }

      return;
    }

    v54 = v53;
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", v54, v30 >> 2);
      v55 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
LABEL_131:
        sub_10080F7A0();
      }
    }

LABEL_96:
    sub_1002F20AC(15, v3, v13);
    return;
  }

  if (v8 > 8)
  {
    if (v8 == 9)
    {
      if (!a1)
      {
        sub_1000D660C();
        v4 = *a2;
      }

      if ((v4 & 2) != 0)
      {
        sub_1002F3D4C(v3, 0);
        if ((*(v3 + 44) & 1) == 0)
        {
          *(v3 + 45) = 1;

          sub_1002F1E80(v3);
        }

        return;
      }

LABEL_67:
      a1 = v3;

      goto LABEL_63;
    }

    if (v8 != 13)
    {
      goto LABEL_70;
    }

    if (!a1)
    {
      sub_1000D660C();
    }

    v95 = 0;
    v13 = a2[2] >> 2;
    v20 = a2[3];
    if (v6 == 2)
    {
      v21 = 0;
    }

    else
    {
      if (v6 != 3)
      {
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("%! (%d)", 917, v13);
        v38 = sub_10000C050(0x32u);
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_124;
      }

      v21 = ((a2[4] << 6) >> 7) & (a2[4] >> 4);
    }

    v35 = sub_1002EE1C0(v3, v13, &v95);
    if (v35)
    {
      v36 = v35;
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v36, v13);
        v37 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if ((*a2 & 2) == 0)
      {
        return;
      }

      goto LABEL_96;
    }

    if ((*a2 & 2) != 0)
    {
      sub_1002F3E34(v3, 0, v13, v20, v21);
      v51 = v95;
      if ((*(v3 + 44) & 1) == 0)
      {
        if ((v20 & 2) != 0)
        {
          *(v95 + 32) = 0;
        }

        else
        {
          *(v95 + 32) = 1;
          sub_1002F1E20(v51);
          v51 = v95;
        }
      }

      v88 = *(*(v51 + 40) + 24);
      if (v88)
      {
        v88(*(v51 + 8), v20 & 0xCE, v21);
      }

      return;
    }

    sub_1002F3A04(v3);
    v41 = v95;
    if (*(v95 + 13) != 4)
    {
      return;
    }

    *(v95 + 13) = 5;
    if (*(v3 + 44) == 1)
    {
      v42 = *(v41 + 162);
      if (*(v41 + 162))
      {
        v43 = *(v41 + 14);
        if (v42 < v43)
        {
          sub_1000D660C();
          v41 = v95;
          LOBYTE(v42) = *(v95 + 162);
          LOBYTE(v43) = *(v95 + 14);
        }

        v44 = v42 - (v43 + *(v41 + 163));
        if (!v44)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v44 = -1;
      }

      if (sub_1002F1DA8(v41, v44))
      {
        return;
      }

      v41 = v95;
    }

LABEL_216:
    v89 = *(v41 + 72);
    if (v89)
    {
      v89(*(v41 + 8), *(v41 + 16), 0);
      *(v95 + 72) = 0;
    }

    return;
  }

  if (v8 == 7)
  {
    if (!a1)
    {
      sub_1000D660C();
    }

    v95 = 0;
    if (v6 != 8)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Mux_ReceivePN invalid cmdLen=%d, shall be=%d", v6, 8);
      v32 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v13 = a2[2] & 0x3F;
    if (v13 == 1 || v13 >= 0x3E)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", 917, v13);
      v39 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v22 = *a2;
    v23 = a2[3];
    v24 = a2[4];
    v25 = *(a2 + 3);
    v26 = a2[9] & 7;
    v27 = sub_1002EE1C0(v3, v13, &v95);
    if (v27)
    {
      if ((v22 & 2) == 0)
      {
        v28 = v27;
        if (sub_10000C240())
        {
          sub_10000AF54("%! (%d)", v28, v13);
          v29 = sub_10000C050(0x32u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return;
      }

      v60 = sub_1002EE258(v3, v13, &v95);
      if (v60)
      {
        v61 = v60;
        if (!sub_10000C240())
        {
          goto LABEL_96;
        }

        sub_10000AF54("%! (%d)", v61, v13);
        v62 = sub_10000C050(0x32u);
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_96;
        }

        goto LABEL_131;
      }

LABEL_147:
      v63 = v95;
      if (*(v95 + 13))
      {
        v64 = v24 & 0x3F;
        v65 = v25;
        v66 = v3;
        v67 = v13;
        v68 = 0;
      }

      else
      {
        v83 = *(v95 + 16);
        if (v83 >= v25)
        {
          *(v95 + 16) = v25;
          LOWORD(v83) = v25;
        }

        if (v23 < 0xF0)
        {
          v68 = 0;
          *(v3 + 44) = 0;
          *(v63 + 14) = 0;
        }

        else
        {
          *(v3 + 44) = 1;
          *(v63 + 18) = v26;
          v84 = sub_1002F1A00(v63);
          if (v84)
          {
            v85 = v84;
            if (sub_10000C240())
            {
              sub_10000AF54("%! (%d)", v85, v13);
              v86 = sub_10000C050(0x32u);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            v87 = v95;
            if (!v95)
            {
              sub_1000D660C();
              v87 = v95;
            }

            *(v87 + 13) = 9;
            goto LABEL_96;
          }

          LOWORD(v83) = *(v95 + 16);
          v68 = *(v95 + 14);
        }

        v64 = v24 & 0x3F;
        v65 = v83;
        v66 = v3;
        v67 = v13;
      }

      sub_1002F3A7C(v66, 0, v67, v64, v65, v68);
      return;
    }

    if ((v22 & 2) != 0)
    {
      goto LABEL_147;
    }

    if (*(v95 + 13) != 1)
    {
      return;
    }

    sub_1002F3A04(v3);
    *(v3 + 44) = (v23 & 0xF0) == 224;
    v56 = v95;
    if (*(v95 + 16) >= v25)
    {
      *(v95 + 16) = v25;
      if ((v23 & 0xF0) != 0xE0)
      {
        goto LABEL_220;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", 917, v13);
        v57 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (sub_1002F20AC(67, v3, v13))
      {
        return;
      }

      v58 = v95;
      *(v95 + 164) = 918;
      v59 = *(v58 + 72);
      if (v59)
      {
        v59(0, 0, 918);
        v58 = v95;
      }

      sub_1002EE524(v58, 1);
      if ((*(v3 + 44) & 1) == 0)
      {
LABEL_220:
        if (!sub_1002F20AC(47, v3, v13))
        {
          v90 = v95;
          if (!v95)
          {
            sub_1000D660C();
            v90 = v95;
          }

          *(v90 + 13) = 2;
        }

        return;
      }

      v56 = v95;
    }

    *(v56 + 18) = v26;
    goto LABEL_220;
  }

  v96 = 0;
  v94 = 0;
  v95 = 0;
  v12 = a2[2];
  v13 = v12 >> 2;
  if (v12 > 0xF7 || v13 == 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%! (%d)", 917, v13);
    v34 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_124;
  }

  if (v6 != 8)
  {
    if (v6 != 1)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", 917, v13);
      v50 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_124;
    }

    v14 = sub_1002EE1C0(a1, v12 >> 2, &v94);
    if (v14)
    {
      v15 = v14;
      if (sub_10000C240())
      {
        sub_10000AF54("Receive RPN with result %! on DLCI %d", v15, v13);
        v16 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v92 = 50806655;
      v93 = 4881;
      if ((v4 & 2) != 0)
      {
        v17 = sub_1002F3ED4(v3, 0, v13, &v92);
        if (v17)
        {
          v18 = v17;
          if (sub_10000C240())
          {
            sub_10000AF54("%! (%d)", v18, v13);
            v19 = sub_10000C050(0x32u);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }
      }

      return;
    }

    if ((v4 & 2) != 0)
    {
      v80 = sub_1002F3ED4(v3, 0, v13, v94 + 22);
      if (!v80)
      {
        return;
      }

      v81 = v80;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v81, v13);
      v82 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Mux_ReceiveRPN, command is parameter report but C/R bit is not set, ignoring");
      v69 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

LABEL_226:
    sub_10080F7A0();
    return;
  }

  BYTE2(v95) = a2[3];
  v46 = vand_s8(vdup_n_s16(a2[4]), 0x30000800040003);
  *(&v95 + 3) = vuzp1_s8(v46, v46).u32[0];
  HIBYTE(v95) = a2[5] & 0x3F;
  v96 = *(a2 + 3);
  LOWORD(v95) = *(a2 + 4);
  v47 = sub_1002EE1C0(a1, v13, &v94);
  if (v47)
  {
    if ((v4 & 2) == 0)
    {
      v48 = v47;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("%! (%d)", v48, v13);
      v49 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_226;
    }

    v71 = sub_1002EE258(v3, v13, &v94);
    if (v71)
    {
      v72 = v71;
      if (sub_10000C240())
      {
        sub_10000AF54("%! (%d)", v72, v13);
        v73 = sub_10000C050(0x32u);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_96;
    }

LABEL_160:
    v74 = *(*(v94 + 40) + 32);
    if (v74)
    {
      v74(*(v94 + 8), &v95);
    }

    v75 = v95;
    if (v95)
    {
      *(v94 + 24) = BYTE2(v95);
      if ((v75 & 2) == 0)
      {
LABEL_164:
        if ((v75 & 4) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_198;
      }
    }

    else if ((v95 & 2) == 0)
    {
      goto LABEL_164;
    }

    *(v94 + 25) = BYTE3(v95);
    if ((v75 & 4) == 0)
    {
LABEL_165:
      if ((v75 & 8) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_199;
    }

LABEL_198:
    *(v94 + 26) = BYTE4(v95);
    if ((v75 & 8) == 0)
    {
LABEL_166:
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_200;
    }

LABEL_199:
    *(v94 + 27) = BYTE5(v95);
    if ((v75 & 0x10) == 0)
    {
LABEL_167:
      if ((v75 & 0x20) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_201;
    }

LABEL_200:
    *(v94 + 28) = BYTE6(v95);
    if ((v75 & 0x20) == 0)
    {
LABEL_168:
      if ((v75 & 0x40) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_202;
    }

LABEL_201:
    *(v94 + 30) = v96;
    if ((v75 & 0x40) == 0)
    {
LABEL_169:
      if ((v75 & 0x100) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_203;
    }

LABEL_202:
    *(v94 + 31) = HIBYTE(v96);
    if ((v75 & 0x100) == 0)
    {
LABEL_170:
      if ((v75 & 0x200) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_204;
    }

LABEL_203:
    *(v94 + 29) = *(v94 + 29) & 0xFE | HIBYTE(v95) & 1;
    if ((v75 & 0x200) == 0)
    {
LABEL_171:
      if ((v75 & 0x400) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_205;
    }

LABEL_204:
    *(v94 + 29) = *(v94 + 29) & 0xFD | HIBYTE(v95) & 2;
    if ((v75 & 0x400) == 0)
    {
LABEL_172:
      if ((v75 & 0x800) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_206;
    }

LABEL_205:
    *(v94 + 29) = *(v94 + 29) & 0xFB | HIBYTE(v95) & 4;
    if ((v75 & 0x800) == 0)
    {
LABEL_173:
      if ((v75 & 0x1000) == 0)
      {
        goto LABEL_174;
      }

      goto LABEL_207;
    }

LABEL_206:
    *(v94 + 29) = *(v94 + 29) & 0xF7 | HIBYTE(v95) & 8;
    if ((v75 & 0x1000) == 0)
    {
LABEL_174:
      if ((v75 & 0x2000) == 0)
      {
LABEL_176:
        v76 = sub_1002F3ED4(v3, 0, v13, &v95);
        if (!v76)
        {
          return;
        }

        v77 = v76;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("%! (%d)", v77, 0);
        v78 = sub_10000C050(0x32u);
        if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_226;
      }

LABEL_175:
      *(v94 + 29) = *(v94 + 29) & 0xDF | HIBYTE(v95) & 0x20;
      goto LABEL_176;
    }

LABEL_207:
    *(v94 + 29) = *(v94 + 29) & 0xEF | HIBYTE(v95) & 0x10;
    if ((v75 & 0x2000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

  if ((v4 & 2) != 0)
  {
    goto LABEL_160;
  }

  if (*(v94 + 64))
  {
    sub_1002F3A04(v3);
    v70 = v94;
    *(v94 + 22) = v95;
    *(v70 + 30) = v96;
    (*(v70 + 64))(*(v70 + 8), &v95);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Mux_ReceiveRPN, unsolicited response, ignoring");
    v91 = sub_10000C050(0x32u);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_226;
    }
  }
}

uint64_t sub_1002F5018(int a1, char a2, unsigned int a3, __int16 a4, int a5)
{
  v9 = sub_1002EE718(a1);
  if (!v9)
  {
    return 114;
  }

  v19 = 0;
  v10 = 2 * (a2 & 0x7Fu);
  if (v10 >= 0x3E)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d)", 917, v10);
      v11 = sub_10000C050(0x32u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 114;
  }

  v12 = v9;
  if (sub_1002EE1C0(v9, v10, &v19))
  {
    if (!sub_10000C240())
    {
      return 114;
    }

    sub_10000AF54("Could not find link for DLCI (%d)", v10);
    v13 = sub_10000C050(0x32u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return 114;
    }

    goto LABEL_9;
  }

  v14 = v19;
  if (*(v19 + 13))
  {
    return 114;
  }

  if (*(v19 + 16) >= a3)
  {
    *(v19 + 16) = a3;
  }

  if (a5)
  {
    *(v12 + 44) = 1;
    *(v14 + 18) = a4;
    v16 = sub_1002F1A00(v14);
    if (v16)
    {
      v17 = v16;
      if (!sub_10000C240())
      {
        return 114;
      }

      sub_10000AF54("%! (%d)", v17, v10);
      v18 = sub_10000C050(0x32u);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        return 114;
      }

LABEL_9:
      sub_10080F7A0();
      return 114;
    }

    v14 = v19;
  }

  else
  {
    LOBYTE(a4) = 0;
    *(v12 + 44) = 0;
  }

  result = 0;
  *(v14 + 14) = a4;
  *(v14 + 13) = 5;
  return result;
}

uint64_t sub_1002F51BC(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*(a1 + 8) && !*(a1 + 16))
  {
    sub_1000D660C();
    if (!*(a1 + 8) && !*(a1 + 16))
    {
      return 101;
    }
  }

  if (dword_100BCE2FC)
  {
    return 924;
  }

  v8 = sub_100007618(0x18uLL, 0x10A0040AE3F5B3BuLL);
  qword_100B6B570 = v8;
  if (!v8)
  {
    return 106;
  }

  v8[1] = a1;
  v8[2] = a3;
  *(a1 + 172) = 0;
  *(a1 + 24) = 0;
  *(v8[1] + 64) = 0;
  v9 = v8[1];
  *(v9 + 166) = 0;
  *v8 = a2;
  *(v8 + 4) = 0;
  v6 = sub_1002F5AE8(sub_1002F52E0, sub_1002F54AC, v9);
  if (v6)
  {
    if (qword_100B6B570)
    {
      sub_10000C1E8(qword_100B6B570);
      qword_100B6B570 = 0;
    }
  }

  else
  {
    dword_100BCE2FC = 1;
  }

  return v6;
}

uint64_t sub_1002F52E0(uint64_t a1)
{
  if (a1 == 834)
  {
    v4 = *(qword_100B6B570 + 8);
    v1 = 834;
  }

  else
  {
    v1 = a1;
    if (!a1)
    {
      v10 = 0u;
      v11 = 0u;
      v9[0] = 0;
      v8[0] = 0;
      LOBYTE(v10) = 3;
      WORD1(v10) = 2;
      DWORD2(v10) = 3;
      v2 = *(qword_100B6B570 + 8);
      if (*(v2 + 8))
      {
        DWORD2(v11) = *(v2 + 8);
        v3 = 4;
      }

      else
      {
        *(&v11 + 1) = *(v2 + 16);
        v3 = 16;
      }

      LOBYTE(v11) = 3;
      WORD1(v11) = v3;
      LOBYTE(v9[0]) = 6;
      WORD1(v9[0]) = 2;
      v9[1] = &v10;
      LOBYTE(v8[0]) = 6;
      WORD1(v8[0]) = 6;
      v8[1] = &unk_1008A5208;
      result = sub_1002F69AC(sub_1002F54E8, v9, v8);
      if (result)
      {
        *(*(qword_100B6B570 + 8) + 172) = result;
        return sub_1002F59B0();
      }

      return result;
    }

    v5 = qword_100B6B570;
    if ((*qword_100B6B570)--)
    {
      result = sub_1002F5AE8(sub_1002F52E0, sub_1002F54AC, *(v5 + 8));
      if (!result)
      {
        return result;
      }

      v1 = result;
      v5 = qword_100B6B570;
    }

    v4 = *(v5 + 8);
  }

  return sub_1002F59F4(v4, v1);
}

uint64_t sub_1002F54AC()
{
  v0 = *(qword_100B6B570 + 8);
  v1 = *(v0 + 172);
  if (!v1)
  {
    if (*(v0 + 164) && (*(qword_100B6B570 + 4) & 1) != 0)
    {
      v1 = 0;
    }

    else
    {
      v1 = 923;
      *(v0 + 172) = 923;
    }
  }

  return sub_1002F59F4(v0, v1);
}

uint64_t sub_1002F54E8(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    if (*(a1 + 2))
    {
      v5 = 0;
      while (1)
      {
        v6 = *(a1 + 8) + 16 * v5;
        if (*(v6 + 2) >= 2u)
        {
          v7 = 0;
          do
          {
            v8 = *(v6 + 8) + 16 * v7;
            v35 = 0;
            v36 = 0;
            v9 = *(v8 + 8);
            if (v9 > 255)
            {
              switch(v9)
              {
                case 512:
                  *(*(qword_100B6B570 + 8) + 166) = *(v8 + 24);
                  break;
                case 257:
                  v24 = *(v8 + 16);
                  if (v24 == 8 || v24 == 4)
                  {
                    if (*(v8 + 18) >= 0x63u)
                    {
                      v26 = 99;
                    }

                    else
                    {
                      v26 = *(v8 + 18);
                    }

                    memmove((*(qword_100B6B570 + 8) + 64), *(v8 + 24), v26);
                    *(*(qword_100B6B570 + 8) + v26 + 64) = 0;
                  }

                  break;
                case 256:
                  v14 = *(v8 + 16);
                  if (v14 == 8 || v14 == 4)
                  {
                    if (*(v8 + 18) >= 0x27u)
                    {
                      v16 = 39;
                    }

                    else
                    {
                      v16 = *(v8 + 18);
                    }

                    memmove((*(qword_100B6B570 + 8) + 24), *(v8 + 24), v16);
                    *(*(qword_100B6B570 + 8) + v16 + 24) = 0;
                  }

                  break;
              }
            }

            else if (v9 == 1)
            {
              if ((*(v8 + 16) & 0xFE) == 6)
              {
                v17 = *(qword_100B6B570 + 8);
                v18 = *(v17 + 8);
                LOBYTE(v35) = 3;
                if (v18)
                {
                  WORD1(v35) = 4;
                  LODWORD(v36) = v18;
                }

                else
                {
                  WORD1(v35) = 16;
                  v36 = *(v17 + 16);
                }

                if (*(v8 + 18))
                {
                  v27 = 0;
                  v28 = 0;
                  while (!sub_100237F64(*(v8 + 24) + v27, &v35))
                  {
                    ++v28;
                    v27 += 16;
                    if (v28 >= *(v8 + 18))
                    {
                      goto LABEL_63;
                    }
                  }

                  *(qword_100B6B570 + 4) = 1;
                }
              }
            }

            else if (v9 == 4)
            {
              if ((*(v8 + 16) & 0xFE) == 6 && *(v8 + 18))
              {
                v19 = 0;
                v20 = 0;
                do
                {
                  v21 = *(v8 + 24);
                  *buf = xmmword_1008A5270;
                  if ((*(v21 + v19) & 0xFE) == 6)
                  {
                    v22 = v21 + v19;
                    if (*(v21 + v19 + 2))
                    {
                      if (sub_100237F64(*(v22 + 8), buf))
                      {
                        v23 = *(v22 + 8);
                        if (*(v23 + 16) == 1 && *(v23 + 18) == 1)
                        {
                          *(*(qword_100B6B570 + 8) + 164) = *(v23 + 24);
                        }
                      }
                    }
                  }

                  ++v20;
                  v19 += 16;
                }

                while (v20 < *(v8 + 18));
              }
            }

            else if (v9 == 9 && (*(v8 + 16) & 0xFE) == 6)
            {
              v10 = *(v8 + 24);
              if ((*v10 & 0xFE) == 6)
              {
                v11 = *(v10 + 8);
                if (*(v11 + 2) >= 2u && *(v11 + 16) == 1)
                {
                  *(*(qword_100B6B570 + 8) + 168) = *(v11 + 24);
                  if (sub_10000C240())
                  {
                    sub_10000AF54("Profile Version: %x", *(*(qword_100B6B570 + 8) + 168));
                    v12 = sub_10000C050(0x33u);
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                    {
                      v13 = sub_10000C0FC();
                      *buf = 136446210;
                      *&buf[4] = v13;
                      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                    }
                  }
                }
              }
            }

LABEL_63:
            v29 = v7 + 3;
            v7 += 2;
          }

          while (v29 < *(v6 + 2));
        }

        v30 = qword_100B6B570;
        v31 = *(qword_100B6B570 + 8);
        if (*(v31 + 164))
        {
          if (*(qword_100B6B570 + 4) == 1)
          {
            break;
          }
        }

        *(v31 + 164) = 0;
        *(v31 + 24) = 0;
        *(*(v30 + 8) + 64) = 0;
        if (++v5 >= *(a1 + 2))
        {
          goto LABEL_67;
        }
      }

      sub_1002F6CD4();
    }

    else
    {
LABEL_67:
      if (a2)
      {
        result = sub_1002F6C78();
        v32 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v32 = 923;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("OI_SDP_ContinueCurrentReq returned %!", v32);
        v33 = sub_10000C050(0x33u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100810070(v33);
        }
      }

      *(*(qword_100B6B570 + 8) + 172) = v32;
    }

    return sub_1002F59B0();
  }

  *(*(qword_100B6B570 + 8) + 172) = a3;

  return sub_1002F59B0();
}

uint64_t sub_1002F59B0()
{
  result = sub_1002F61A8();
  if (result)
  {
    v1 = result;
    v2 = *(qword_100B6B570 + 8);

    return sub_1002F59F4(v2, v1);
  }

  return result;
}

uint64_t sub_1002F59F4(uint64_t a1, uint64_t a2)
{
  v4 = qword_100B6B570;
  if (*(qword_100B6B570 + 8) != a1)
  {
    sub_1000D660C();
    v4 = qword_100B6B570;
  }

  v6 = v4[2];
  sub_10000C1E8(v4);
  qword_100B6B570 = 0;
  dword_100BCE2FC = 0;

  return v6(a1, a2);
}

uint64_t sub_1002F5A7C(unsigned int a1, _WORD *a2)
{
  v3 = 0;
  v4[0] = 262147;
  v4[1] = a1;
  if (sub_1002F8294(v4, 1u, a2, &v3, 0))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (xmmword_100BCE300)
  {
    return 821;
  }

  if (!*(sub_1003045A0(0x34u) + 2))
  {
    sub_1000D660C();
  }

  if (!*sub_1003045A0(0x34u))
  {
    sub_1000D660C();
  }

  if (xmmword_100BCE300)
  {
    v3 = 140;
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("SDP client init failed %!", v3);
      v8 = sub_10000C050(0x34u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    return v3;
  }

  v9 = sub_1001BBBD8(0x60uLL, 0x10900402CEF74E7uLL);
  qword_100B6B580 = v9;
  if (!v9)
  {
    v3 = 106;
    goto LABEL_10;
  }

  if (byte_100B6B578 == 1)
  {
    v10 = 1024;
    v9[44] = 1024;
    LODWORD(xmmword_100BCE300) = 1;
    v14 = 0u;
    v15 = 0u;
    WORD2(v14) = 5000;
    LODWORD(v14) = -64512;
  }

  else
  {
    v10 = v9[44];
    LODWORD(xmmword_100BCE300) = 1;
    v15 = 0uLL;
    *(&v14 + 1) = 0;
    *(&v14 + 2) = 327745535;
    if (!v10)
    {
      v10 = *sub_1003045A0(0x34u);
    }

    LOWORD(v14) = v10;
    if (v10 <= 0x80)
    {
      v11 = 128;
      goto LABEL_23;
    }
  }

  if (v10 <= *(sub_1003045A0(0x28u) + 8))
  {
    goto LABEL_24;
  }

  v11 = *(sub_1003045A0(0x28u) + 8);
LABEL_23:
  LOWORD(v14) = v11;
LABEL_24:
  WORD3(v14) = 772;
  WORD6(v14) = 0;
  BYTE8(v15) = 0;
  v12 = sub_10028F454(sub_1002F5D1C, sub_1002F5ECC, sub_1002F5ED0, 1, a3, &v14, (qword_100B6B580 + 4), &unk_1008A5280);
  if (v12)
  {
    v3 = v12;
    sub_1002F60F8();
  }

  else
  {
    v13 = qword_100B6B580;
    *qword_100B6B580 = 0;
    *(v13 + 72) = a2;
    *(v13 + 80) = a1;
    if (off_100B6B588)
    {
      off_100B6B588(1);
    }

    return 0;
  }

  return v3;
}