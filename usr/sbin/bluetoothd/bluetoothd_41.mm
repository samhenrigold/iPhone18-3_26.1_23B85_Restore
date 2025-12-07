void sub_1002B5048(uint64_t a1)
{
  v2 = sub_1002B4A90();
  if (!v2)
  {
    sub_1000D660C();
  }

  v3 = *(v2 + 6);
  v4 = *(v2 + 832);
  if (sub_10000C240())
  {
    sub_10000AF54("setPeriodicAdvDataPacketCompleteCb dataLeft:%d status:%!", (v3 - v4), a1);
    v5 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v7 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1 || v3 == v4 || (a1 = sub_1002B4EA4(v2), a1))
  {
    sub_1002B4D00(a1, v2);
  }
}

uint64_t sub_1002B5164()
{
  if (qword_100B660E0)
  {
    return qword_100B660E0();
  }

  return result;
}

uint64_t sub_1002B5178()
{
  if (off_100B660F0)
  {
    return off_100B660F0();
  }

  return result;
}

uint64_t sub_1002B518C(uint64_t result, uint64_t a2)
{
  if (off_100B660E8)
  {
    return off_100B660E8(result, a2);
  }

  return result;
}

uint64_t sub_1002B51A0()
{
  xmmword_100B66100 = 0u;
  unk_100B66110 = 0u;
  qword_100B66120 = 0;
  sub_1002DB89C(off_100AE9CB0);
  if (v0)
  {
    v1 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to add state callbacks : %!", v1);
      v2 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v3 = sub_1002CE244(off_100AE9CC8);
    if (v3)
    {
      v1 = v3;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to add GAP connections callbacks : %!", v1);
        v4 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      dword_100B66128 = 0;
      qword_100B66130 = 0;
      v1 = sub_10028E64C(4, 3, 16, 3, &xmmword_100B66100, sub_1002B6D1C);
      if (v1 || !xmmword_100B66100)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not register the l2cap : %!", v1);
          v5 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *sub_1000CD958(xmmword_100B66100) = 527;
        *(sub_1000CD958(xmmword_100B66100) + 2) = -1;
      }

      if (sub_10000C240())
      {
        v6 = sub_1000CD958(xmmword_100B66100);
        sub_10000AF54("ATT L2CAP channel MTU: %d", *v6);
        v7 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v13 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      qword_100B66138 = sub_1000BAE38(0, sub_1002B8F74);
      v8 = sub_1001BC1A4();
      if (v8)
      {
        v9 = v8;
        if (sub_10000C240())
        {
          sub_10000AF54("ATT classic registration failed with %!", v9);
          v10 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  return v1;
}

void sub_1002B5460()
{
  if (xmmword_100B66100)
  {
    sub_10028E908(xmmword_100B66100);
  }

  v0 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      v1 = v0[10];
      v2 = v0[6];
      if (v2)
      {
        sub_10000C1E8(v2);
      }

      if (off_100B660F8)
      {
        off_100B660F8(v0);
      }

      sub_10000C1E8(v0);
      v0 = v1;
    }

    while (v1);
  }

  sub_1002DB960(off_100AE9CB0);
  sub_1002CE3E4(off_100AE9CC8);
  qword_100B66120 = 0;
  xmmword_100B66100 = 0u;
  unk_100B66110 = 0u;
  if (qword_100B66138)
  {
    sub_1000BBDD0(qword_100B66138);
  }

  off_100B66140 = 0;
  dword_100B66128 = 0;
  qword_100B66130 = 0;
}

uint64_t sub_1002B5528(uint64_t (*a1)(void))
{
  if (off_100B66140)
  {
    return 119;
  }

  result = 0;
  off_100B66140 = a1;
  return result;
}

uint64_t sub_1002B554C(uint64_t (*a1)(void, void, void, void, void, void), uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B66118)
  {
    return 119;
  }

  result = 0;
  off_100B66118 = a1;
  qword_100B66120 = a2;
  return result;
}

void *sub_1002B5584(void *result)
{
  if (off_100B66118 == result)
  {
    off_100B66118 = 0;
    qword_100B66120 = 0;
  }

  return result;
}

uint64_t (*sub_1002B55A8(void *a1))(void)
{
  v1 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    return 0;
  }

  v2 = *(&xmmword_100B66100 + 1);
  while (v2 != a1)
  {
    v2 = *(v2 + 80);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  if (v4)
  {
    *(v4 + 80) = v3;
  }

  if (v3)
  {
    *(v3 + 88) = v4;
  }

  if (v1 == a1)
  {
    *(&xmmword_100B66100 + 1) = v3;
  }

  v5 = *(v2 + 48);
  if (v5)
  {
    sub_10000C1E8(v5);
  }

  v6 = *(v2 + 60);
  if (v6)
  {
    sub_10002242C(v6);
  }

  if (off_100B660F8)
  {
    off_100B660F8(v2);
  }

  v7 = sub_1000B47B8(qword_100B66138);
  for (ptr = v7; ptr; v7 = ptr)
  {
    while (1)
    {
      v8 = sub_1000BC720(v7);
      if (v8)
      {
        break;
      }

LABEL_25:
      sub_1000BC77C(qword_100B66138, ptr, 1);
      v7 = sub_1000B47B8(qword_100B66138);
      ptr = v7;
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    if (*v2 == *v8)
    {
      if ((*(v8 + 16) & 1) == 0)
      {
        sub_1002B5738();
      }

      goto LABEL_25;
    }

    sub_1000BC828(&ptr);
  }

LABEL_26:
  if (*v2 != qword_100B66130)
  {
LABEL_29:
    sub_10000C1E8(v2);
    return 0;
  }

  v14 = 0;
  v9 = sub_1000ABC7C(4u, &v14);
  if (!v9)
  {
    v10 = v14;
    *(v14 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    sub_1002B57A4();
    goto LABEL_29;
  }

  v12 = v9;
  if (sub_10000C240())
  {
    sub_10000AF54("_LE_ATT_RemoveATTSession %!", v12);
    v13 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_1000C52F4(v12);
  return sub_1002B5738();
}

uint64_t (*sub_1002B5738())(void)
{
  v0 = dword_100B66128;
  if (dword_100B66128 <= 0)
  {
    sub_1000D660C();
    v0 = dword_100B66128;
  }

  dword_100B66128 = v0 - 1;
  result = off_100B66140;
  if (v0 == 1 && off_100B66140 != 0)
  {

    return result();
  }

  return result;
}

void sub_1002B57A4()
{
  qword_100B66130 = 0;
  do
  {
    v0 = sub_1000BB054(qword_100B66138, 0);
    if (!v0)
    {
      break;
    }

    v1 = v0;
    if (!*v0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ATT_WriteCfm - Packet handle NULL");
        v2 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_1008145E4(&v8, &v9);
        }
      }
    }

    v3 = sub_1002B5FE0(*v1, v1[1]);
    v4 = v3;
    if (v3 != 412)
    {
      if (v3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_ATT_WriteCfm - Write Failed:%!", v4);
          v5 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1008145E4(&v6, &v7);
          }
        }
      }

      else
      {
        qword_100B66130 = *v1;
      }
    }

    if ((v1[2] & 1) == 0)
    {
      sub_1002B5738();
    }

    sub_1000BC14C(v1[1]);
    sub_10000C1E8(v1);
  }

  while (v4);
  if (!qword_100B66130)
  {
    sub_1002BA53C();
  }
}

uint64_t sub_1002B5934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  *a1 = a2;
  *(a1 + 18) = a3;
  *(a1 + 64) = 0;
  v4 = sub_1002B9F00(a2, a3);
  *(v3 + 72) = v4;
  if (!v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to allocate ATT DB Session");
      v5 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v3;
}

_BYTE *sub_1002B59BC(int *a1, char a2)
{
  if (sub_1002B5AD4(a1))
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Already have a session ATT");
    v4 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_4;
  }

  result = sub_1001BBBD8(0x68uLL, 0x10B004046EF2F03uLL);
  if (!result)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Failed to allocate the bearer");
    v10 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_4:
    sub_1000E09C0();
    return 0;
  }

  result[66] = a2;
  v6 = *a1;
  v7 = *(a1 + 2);
  *(result + 10) = 0;
  *(result + 6) = v7;
  *(result + 2) = v6;
  v8 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 80);
    }

    while (v8);
    *(result + 11) = v9;
    *(v9 + 80) = result;
  }

  else
  {
    *(&xmmword_100B66100 + 1) = result;
    *(result + 10) = 0;
    *(result + 11) = 0;
  }

  return result;
}

uint64_t sub_1002B5AD4(int *a1)
{
  result = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    v3 = *a1;
    v4 = *(a1 + 2);
    do
    {
      if (*(result + 8) == v3 && *(result + 12) == v4)
      {
        break;
      }

      result = *(result + 80);
    }

    while (result);
  }

  return result;
}

uint64_t sub_1002B5B0C(uint64_t a1, char a2)
{
  v4 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (*v4 != a1)
    {
      v4 = v4[10];
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Already have a session ATT");
    v9 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_13:
    sub_1000E09C0();
    return 0;
  }

LABEL_4:
  sub_1000CD5B8(a1);
  sub_1002BE5CC(a1);
  v5 = sub_1001BBBD8(0x68uLL, 0x10B004046EF2F03uLL);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("Failed to allocate the bearer");
    v10 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_13;
  }

  v5[66] = a2;
  v6 = *(a1 + 49);
  *(v5 + 6) = *(a1 + 53);
  *(v5 + 2) = v6;
  LOBYTE(v6) = *(a1 + 48);
  *(v5 + 10) = 0;
  v5[14] = v6;
  v7 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 80);
    }

    while (v7);
    *(v5 + 11) = v8;
    *(v8 + 80) = v5;
  }

  else
  {
    *(&xmmword_100B66100 + 1) = v5;
    *(v5 + 10) = 0;
    *(v5 + 11) = 0;
  }

  return sub_1002B5934(v5, a1, 23);
}

void *sub_1002B5C7C(uint64_t a1)
{
  result = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    do
    {
      if (*result == a1)
      {
        break;
      }

      result = result[10];
    }

    while (result);
  }

  return result;
}

uint64_t sub_1002B5CA4(unsigned __int16 *a1)
{
  v1 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    return 149;
  }

  while (1)
  {
    v3 = *v1;
    if (*v1 == a1)
    {
      break;
    }

    v1 = v1[10];
    if (!v1)
    {
      return 149;
    }
  }

  if (v1[9])
  {
    sub_1002BA214(a1);
    v3 = *v1;
  }

  if (!v3)
  {
    sub_1000D660C();
    v3 = *v1;
  }

  if (sub_1000ABD24(v3))
  {
    sub_1002BE6B0(*v1);
  }

  sub_1002B55A8(v1);
  return 0;
}

uint64_t sub_1002B5D28(int a1)
{
  for (result = *(&xmmword_100B66100 + 1); result; result = *(result + 80))
  {
    if (*(result + 16) == a1)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1002B5D50(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 80);
        if (!v2)
        {
          return 0;
        }
      }

      return *(a1 + 18);
    }
  }

  return v1;
}

uint64_t sub_1002B5D88(uint64_t result, __int16 a2)
{
  if (result)
  {
    v2 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (v2 != result)
      {
        v2 = *(v2 + 80);
        if (!v2)
        {
          return result;
        }
      }

      *(result + 18) = a2;
    }
  }

  return result;
}

uint64_t sub_1002B5DB4(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 80);
        if (!v2)
        {
          return 0;
        }
      }

      return *(a1 + 72);
    }
  }

  return v1;
}

uint64_t sub_1002B5DEC(__int128 *a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  if (!qword_100B66130)
  {
    v9 = sub_1002B5FE0(a1, a2);
    if (v9 != 412)
    {
      v8 = v9;
      if (!v9)
      {
        qword_100B66130 = a1;
        if (!a4)
        {
          return v8;
        }

        goto LABEL_28;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Wrote ATT MBUF - Write Failed:%! reliable:%d _queuedNonReliablePackets:%d", v8, a3, dword_100B66128);
        v14 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
          if (!a4)
          {
            return v8;
          }

          goto LABEL_28;
        }
      }

      goto LABEL_27;
    }

    if (qword_100B66130)
    {
      sub_1000D660C();
    }

LABEL_26:
    v8 = 0;
LABEL_27:
    if (!a4)
    {
      return v8;
    }

LABEL_28:
    *a4 = qword_100B66130 == 0;
    return v8;
  }

  if ((a3 & 1) == 0 && dword_100B66128 > 31)
  {
    v8 = 4001;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v10 = sub_100007618(0x18uLL, 0x1020040A95220FAuLL);
  if (!v10)
  {
    v8 = 106;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v11 = v10;
  *v10 = a1;
  *(v10 + 16) = a3;
  v12 = sub_1000B8BE0(v10 + 1, a2, 0);
  if (!v12)
  {
    sub_1000B8B8C(qword_100B66138, v11, 8);
    if ((a3 & 1) == 0)
    {
      v8 = 0;
      ++dword_100B66128;
      if (!a4)
      {
        return v8;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v8 = v12;
  if (sub_10000C240())
  {
    sub_10000AF54("Wrote ATT MBUF - OI_MBUF_Copy Failed:%!", v8);
    v13 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_10000C1E8(v11);
  if (a4)
  {
    goto LABEL_28;
  }

  return v8;
}

uint64_t sub_1002B5FE0(__int128 *a1, uint64_t a2)
{
  if (sub_1000B8B5C(a1))
  {
    v4 = *(&xmmword_100B66100 + 1);
    if (*(&xmmword_100B66100 + 1))
    {
      while (*v4 != a1)
      {
        v4 = *(v4 + 80);
        if (!v4)
        {
          goto LABEL_5;
        }
      }

      v8 = *(v4 + 16);
      if (!*(v4 + 16))
      {
        sub_1000D660C();
      }

      v6 = v8;
      goto LABEL_14;
    }

LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Can not find classic session in ATT WriteBuf");
      v5 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 4202;
  }

  if (!sub_1000ABD24(a1))
  {
    return 4202;
  }

  v6 = 4;
LABEL_14:

  return sub_1000B7EDC(sub_1002B8FBC, v6, a1, a2, 1);
}

uint64_t sub_1002B60E8(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 3;
  if (a1[3])
  {
    return 118;
  }

  v7 = a3;
  if (a3 < 0x17)
  {
    return 101;
  }

  if (*(a1 + 9) != 23)
  {
    return 146;
  }

  *(a1 + 56) = 1;
  a1[3] = a2;
  a1[4] = a4;
  *(a1 + 20) = 3;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
LABEL_12:
    result = 142;
    goto LABEL_13;
  }

  while (v8 != a1)
  {
    v8 = v8[10];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = sub_1001BBBD8(3uLL, 0x100004077774924uLL);
  a1[6] = v9;
  if (!v9)
  {
    result = 106;
    goto LABEL_13;
  }

  *v9 = 2;
  *(a1[6] + 1) = v7;
  result = sub_1002B6254(a1);
  if (result)
  {
LABEL_13:
    *v5 = 0;
    v5[1] = 0;
    *(v5 + 8) = 0;
    return result;
  }

  v10 = sub_1002B92E4(*a1);
  if (v10)
  {
    sub_1002B986C(v10, 1, 0);
    return 0;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Couldn't find server session for connection 0x%08x - can't change MTU!", *a1);
    v11 = sub_10000C050(0x44u);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002B6254(uint64_t a1)
{
  v11 = a1;
  if (!a1)
  {
    return 4002;
  }

  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  memset(v10, 0, sizeof(v10));
  if (*(v2 + 2) != 4)
  {
    goto LABEL_7;
  }

  if (!sub_1000ABD24(v2))
  {
    if (!sub_10000C240())
    {
      return 4003;
    }

    sub_10000AF54("Not valid LE connection handle");
    v5 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return 4003;
    }

    goto LABEL_19;
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_7:
    if (*(v2 + 2) || sub_1000B8B5C(v2))
    {
      goto LABEL_8;
    }

    if (!sub_10000C240())
    {
      return 4003;
    }

    sub_10000AF54("Not valid ACL connection handle");
    v6 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return 4003;
    }

LABEL_19:
    sub_1000E09C0();
    return 4003;
  }

LABEL_8:
  v3 = sub_10001FF10(v10, 1u);
  if (v3 || (v3 = sub_10001F968(v10, *(a1 + 48), *(a1 + 40), 2u), v3))
  {
    v4 = v3;
  }

  else
  {
    v8 = sub_1002B5DEC(*a1, v10, *(a1 + 56), 0);
    if (v8 == 412 || (v4 = v8, !v8))
    {
      if (*(a1 + 56) == 1)
      {
        v9[1] = &v11;
        v9[0] = 8;
        sub_10002195C(sub_1002B8FC0, v9, dword_100B53E28, (a1 + 60));
      }

      v4 = 0;
    }
  }

  sub_1000B7B40(v10);
  return v4;
}

uint64_t sub_1002B640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (*(a3 + 3) <= (*(a3 + 1) - 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = 5;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_13;
  }

  while (v8 != a1)
  {
    v8 = *(v8 + 80);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 18) >= 5u)
  {
    v11 = sub_1001BBBD8(5uLL, 0x100004077774924uLL);
    *(a1 + 48) = v11;
    if (v11)
    {
      memmove(v11, a3, *(a1 + 40));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_13:
    v6 = 142;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    sub_10000C1E8(v10);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B651C(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, unsigned int a5, const void *a6, unsigned int a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v9 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  v11 = a5;
  if (a5 <= (a4 - 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a8;
  *(a1 + 40) = a7 + 7;
  v16 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (v16 != a1)
    {
      v16 = *(v16 + 80);
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    LODWORD(v16) = *(a1 + 18);
  }

LABEL_13:
  if (v16 >= (a7 + 7))
  {
    v18 = sub_1001BBBD8((a7 + 7), 0x100004077774924uLL);
    *(a1 + 48) = v18;
    if (v18)
    {
      *v18 = 6;
      *(v18 + 1) = a4;
      *(v18 + 3) = v11;
      *(v18 + 5) = a3;
      memmove((*(a1 + 48) + 7), a6, a7);
      v10 = sub_1002B6254(a1);
      if (!v10)
      {
        return v10;
      }
    }

    else
    {
      v10 = 106;
    }
  }

  else
  {
    v10 = 142;
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    sub_10000C1E8(v19);
  }

  *(a1 + 48) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  return v10;
}

uint64_t sub_1002B6660(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (*(a3 + 3) <= (*(a3 + 1) - 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  v8 = (a3 + 5);
  v9 = *(a3 + 5) + 5;
  *(a1 + 40) = v9;
  v10 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_13;
  }

  while (v10 != a1)
  {
    v10 = *(v10 + 80);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 18) >= v9)
  {
    v13 = sub_1001BBBD8(v9, 0x100004077774924uLL);
    *(a1 + 48) = v13;
    if (v13)
    {
      v14 = *a3;
      v13[4] = *(a3 + 4);
      *v13 = v14;
      v15 = *v8;
      v16 = *(a3 + 21);
      sub_10007A978((*(a1 + 48) + 5), &v15, 1);
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_13:
    v6 = 142;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    sub_10000C1E8(v12);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = 3;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_12;
  }

  while (v8 != a1)
  {
    v8 = *(v8 + 80);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 18) >= 3u)
  {
    v11 = sub_1001BBBD8(3uLL, 0x100004077774924uLL);
    *(a1 + 48) = v11;
    if (v11)
    {
      memmove(v11, a3, *(a1 + 40));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_12:
    v6 = 142;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_10000C1E8(v9);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B68D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  *(a1 + 40) = 5;
  v8 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_12;
  }

  while (v8 != a1)
  {
    v8 = *(v8 + 80);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 18) >= 5u)
  {
    v11 = sub_1001BBBD8(5uLL, 0x100004077774924uLL);
    *(a1 + 48) = v11;
    if (v11)
    {
      memmove(v11, a3, *(a1 + 40));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
LABEL_12:
    v6 = 142;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_10000C1E8(v9);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B69D0(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = a2 != 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  v9 = *(a3 + 3);
  if (v9 > 0xFFFC)
  {
    goto LABEL_13;
  }

  v10 = v9 + 3;
  *(a1 + 40) = v9 + 3;
  v11 = *(&xmmword_100B66100 + 1);
  if (!*(&xmmword_100B66100 + 1))
  {
    goto LABEL_13;
  }

  while (v11 != a1)
  {
    v11 = *(v11 + 80);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 18) < v10)
  {
LABEL_13:
    v6 = 142;
    goto LABEL_14;
  }

  v14 = sub_1001BBBD8(v10, 0x100004077774924uLL);
  *(a1 + 48) = v14;
  if (!v14)
  {
    v6 = 106;
    goto LABEL_14;
  }

  v15 = *a3;
  v14[2] = *(a3 + 2);
  *v14 = v15;
  memmove((*(a1 + 48) + 3), *(a3 + 5), *(a3 + 3));
  v6 = sub_1002B6254(a1);
  if (v6)
  {
LABEL_14:
    v12 = *(a1 + 48);
    if (v12)
    {
      sub_10000C1E8(v12);
    }

    *(a1 + 48) = 0;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return v6;
  }

  if (a2)
  {
    return 0;
  }

  if (!dword_100B66128 && off_100B66140)
  {
    off_100B66140();
  }

  sub_10000C1E8(*(a1 + 48));
  v6 = 0;
  *(a1 + 48) = 0;
  return v6;
}

uint64_t sub_1002B6B34(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v5 = a1 + 24;
  if (*(a1 + 24))
  {
    return 118;
  }

  if (!*(a3 + 1))
  {
    return 101;
  }

  *(a1 + 56) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a4;
  v8 = *(a3 + 5) + 5;
  *(a1 + 40) = v8;
  v9 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (v9 != a1)
    {
      v9 = *(v9 + 80);
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v9) = *(a1 + 18);
  }

LABEL_12:
  if (v9 >= v8)
  {
    v10 = sub_1001BBBD8(v8, 0x100004077774924uLL);
    *(a1 + 48) = v10;
    if (v10)
    {
      v11 = *a3;
      v10[4] = *(a3 + 4);
      *v10 = v11;
      memmove((*(a1 + 48) + 5), *(a3 + 7), *(a3 + 5));
      v6 = sub_1002B6254(a1);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 106;
    }
  }

  else
  {
    v6 = 142;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    sub_10000C1E8(v12);
  }

  *(a1 + 48) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return v6;
}

uint64_t sub_1002B6C50(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1 + 24;
    if (!*(a1 + 24))
    {
      *(a1 + 56) = 1;
      *(a1 + 24) = a2;
      *(a1 + 32) = a4;
      *(a1 + 40) = 2;
      v8 = sub_1001BBBD8(2uLL, 0x100004077774924uLL);
      *(a1 + 48) = v8;
      if (v8)
      {
        *v8 = 24;
        *(*(a1 + 48) + 1) = a3;
        v6 = sub_1002B6254(a1);
        if (!v6)
        {
          return v6;
        }

        v9 = *(a1 + 48);
        if (v9)
        {
          sub_10000C1E8(v9);
        }

        *(a1 + 48) = 0;
        *v5 = 0;
        *(v5 + 8) = 0;
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = 106;
      }

      *(v5 + 16) = 0;
      return v6;
    }

    return 118;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

void sub_1002B6D1C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 2);
  if (v8 == 4)
  {
    if (!sub_1000ABD24(a1))
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 2);
  }

  if (!v8 && !sub_1000B8B5C(a1))
  {
LABEL_15:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("ATT error : not transport handle");
    v11 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_177:
    sub_1000E09C0();
    return;
  }

  if (!a2 || !a3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packet size.");
    v12 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_177;
  }

  if (!sub_1002B92E4(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle, there is no active session associated with the handle.");
      v13 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        sub_1000E09C0();
      }
    }

    return;
  }

  v9 = *a2;
  switch(*a2)
  {
    case 1u:
    case 3u:
    case 5u:
    case 7u:
    case 9u:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x11u:
    case 0x13u:
    case 0x17u:
    case 0x19u:
      v10 = *(&xmmword_100B66100 + 1);
      if (!*(&xmmword_100B66100 + 1))
      {
        return;
      }

      break;
    case 2u:
    case 4u:
    case 6u:
    case 8u:
    case 0xAu:
    case 0xCu:
    case 0xEu:
    case 0x10u:
    case 0x12u:
    case 0x16u:
    case 0x18u:
      goto LABEL_39;
    case 0x14u:
    case 0x15u:
    case 0x1Au:
    case 0x1Cu:
      goto LABEL_53;
    case 0x1Bu:
      if ((a3 - 1) >= 2u)
      {
        v30 = off_100B66118;
        if (off_100B66118)
        {
          v31 = *(a2 + 1);
          v32 = qword_100B66120;

          v30(a1, v31, a2 + 3, (a3 - 3), a4, v32);
        }
      }

      return;
    case 0x1Du:

      sub_1002B8018(a1, (a2 + 1), (a3 - 1), a4);
      return;
    case 0x1Eu:

      sub_1002BA980(a1);
      return;
    default:
      if (v9 == 82 || v9 == 210)
      {
LABEL_39:

        sub_1002BA9F0(a1, a2, a3, a4);
      }

      else
      {
LABEL_53:
        if (sub_10000C240())
        {
          sub_10000AF54("Received unknown opcode 0x%x", v9);
          v29 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1002B80E4(a1, v9);
      }

      return;
  }

  while (*v10 != a1)
  {
    v10 = v10[10];
    if (!v10)
    {
      return;
    }
  }

  if (*a2 > 0xCu)
  {
    if (*a2 <= 0x12u)
    {
      switch(v9)
      {
        case 13:
          v39 = v10[6];
          if (!v39 || *v39 != 12)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No read blob request matching this response. Ignoring.");
              v40 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_177;
              }
            }

            return;
          }

          break;
        case 15:
          v63 = v10[6];
          if (!v63 || *v63 != 14)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No read blob request matching this response. Ignoring.");
              v75 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_177;
              }
            }

            return;
          }

          break;
        case 17:
          v22 = v10[6];
          if (!v22 || *v22 != 16)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("No read blob request matching this response. Ignoring.");
              v71 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_177;
              }
            }

            return;
          }

          v23 = v10[3];
          sub_10002242C(*(v10 + 15));
          *(v10 + 15) = 0;
          sub_10000C1E8(v10[6]);
          v10[6] = 0;
          v10[3] = 0;
          v24 = (a3 - 1);
          if (v24 <= 4)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid read by group type payload size %d.", v24);
              v25 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            v26 = v10[4];
            v27 = v10;
            v28 = 4010;
            goto LABEL_208;
          }

          v84 = a2 + 1;
          v85 = a2[1];
          if (v85 < 4 || (v86 = (v24 - 1) / v85, (v24 - 1) % v85))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid read by group type payload size %d.", v24);
              v87 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            v26 = v10[4];
            v27 = v10;
            v28 = 4011;
            goto LABEL_208;
          }

          v109 = sub_100007618(16 * ((v24 - 1) / v85), 0x101004082113244uLL);
          v110 = v109;
          if (v109)
          {
            if (v86)
            {
              v111 = 0;
              v112 = v109;
              do
              {
                v113 = &v84[(v111 * v85 + 1)];
                v114 = v113[1];
                *v112 = v114 << 8;
                *v112 = *v113 | (v114 << 8);
                v115 = v113[3];
                v112[1] = v115 << 8;
                v112[1] = v113[2] | (v115 << 8);
                *(v112 + 1) = v113 + 4;
                ++v111;
                v112 += 8;
              }

              while (v111 < v86);
            }

            goto LABEL_241;
          }

          goto LABEL_240;
        default:
          goto LABEL_148;
      }

LABEL_129:
      v123 = v10[3];
      sub_10002242C(*(v10 + 15));
      *(v10 + 15) = 0;
      sub_10000C1E8(v10[6]);
      v47 = v123;
      v10[6] = 0;
      v10[3] = 0;
      if (!v123)
      {
        return;
      }

      v43 = v10[4];
      v45 = a2 + 1;
      v44 = (a3 - 1);
      v46 = v10;
      goto LABEL_131;
    }

    switch(v9)
    {
      case 19:
        v48 = v10[6];
        if (!v48 || ((v49 = *v48, v49 != 210) ? (v50 = v49 == 18) : (v50 = 1), !v50))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("No read blob request matching this response. Ignoring.");
            v78 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_177;
            }
          }

          return;
        }

        v51 = a3 - 1;
        v37 = v10[3];
        sub_10002242C(*(v10 + 15));
        *(v10 + 15) = 0;
        sub_10000C1E8(v10[6]);
        v10[6] = 0;
        v10[3] = 0;
        if (v51)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid Write response length %d.", v51);
            v52 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
              if (!v37)
              {
                return;
              }

LABEL_109:
              v37(v10, 0, v10[4]);
              return;
            }
          }
        }

        break;
      case 23:
        v67 = v10[6];
        if (v67 && *v67 == 22)
        {
          v124 = v10[3];
          sub_10002242C(*(v10 + 15));
          *(v10 + 15) = 0;
          sub_10000C1E8(v10[6]);
          v10[6] = 0;
          v10[3] = 0;
          if ((a3 - 1) > 3u)
          {
            if (v124)
            {
              if ((a3 - 1) == 4)
              {
                v96 = 0;
              }

              else
              {
                v96 = a2 + 5;
              }

              v97 = *(a2 + 3);
              v98 = *(a2 + 1);
              v99 = v10[4];

              v124(v10, 0, v98, v97, v96, (a3 - 5), v99);
            }
          }

          else
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid prepare write response length %d.", (a3 - 1));
              v68 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            v124(v10, 4012, 0, 0, 0, 0, v10[4]);
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("No read blob request matching this response. Ignoring.");
          v77 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_177;
          }
        }

        return;
      case 25:
        v35 = v10[6];
        if (!v35 || *v35 != 24)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("No read blob request matching this response. Ignoring.");
            v72 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_177;
            }
          }

          return;
        }

        v36 = a3 - 1;
        v37 = v10[3];
        sub_10002242C(*(v10 + 15));
        *(v10 + 15) = 0;
        sub_10000C1E8(v10[6]);
        v10[6] = 0;
        v10[3] = 0;
        if (v36)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid execute write response length %d.", v36);
            v38 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
              if (!v37)
              {
                return;
              }

              goto LABEL_109;
            }
          }
        }

        break;
      default:
        goto LABEL_148;
    }

    if (!v37)
    {
      return;
    }

    goto LABEL_109;
  }

  if (*a2 > 6u)
  {
    if (v9 == 7)
    {
      v41 = v10[6];
      if (!v41 || *v41 != 6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("No Find by type value request matching this response. Ignoring.");
          v73 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_177;
          }
        }

        return;
      }

      v42 = a3 - 1;
      v122 = v10[3];
      sub_10002242C(*(v10 + 15));
      *(v10 + 15) = 0;
      sub_10000C1E8(v10[6]);
      v10[6] = 0;
      v10[3] = 0;
      if (v42 < 4u || (v42 & 3) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid find by type value payload size %d.", v42);
          v88 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v122(v10, 4022, 0, 0, v10[4]);
        return;
      }

      v43 = v10[4];
      v44 = v42 >> 2;
      v45 = a2 + 1;
      v46 = v10;
      v47 = v122;
LABEL_131:

      v47(v46, 0, v45, v44, v43);
      return;
    }

    if (v9 != 9)
    {
      if (v9 != 11)
      {
        goto LABEL_148;
      }

      v33 = v10[6];
      if (!v33 || *v33 != 10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("No read request matching this response. Ignoring.");
          v34 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }
        }

        return;
      }

      goto LABEL_129;
    }

    v64 = v10[6];
    if (!v64 || *v64 != 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No read by type request matching this response. Ignoring.");
        v76 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_177;
        }
      }

      return;
    }

    v23 = v10[3];
    sub_10002242C(*(v10 + 15));
    *(v10 + 15) = 0;
    sub_10000C1E8(v10[6]);
    v10[6] = 0;
    v10[3] = 0;
    v65 = (a3 - 1);
    if (v65 <= 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid read by type payload size %d.", v65);
        v66 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v26 = v10[4];
      v27 = v10;
      v28 = 4008;
LABEL_208:
      v23(v27, v28, 0, 0, 0, v26);
      return;
    }

    v94 = a2 + 1;
    v85 = a2[1];
    if (v85 < 2 || (v86 = (v65 - 1) / v85, (v65 - 1) % v85))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid read by type payload size %d.", v65);
        v95 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v26 = v10[4];
      v27 = v10;
      v28 = 4009;
      goto LABEL_208;
    }

    v116 = sub_100007618(16 * ((v65 - 1) / v85), 0x1010040749D3347uLL);
    v110 = v116;
    if (v116)
    {
      if (v86)
      {
        v117 = 0;
        v118 = v116;
        do
        {
          v119 = &v94[(v117 * v85 + 1)];
          v120 = v119[1];
          *v118 = v120 << 8;
          *v118 = *v119 | (v120 << 8);
          v118[1] = v119 + 2;
          ++v117;
          v118 += 2;
        }

        while (v117 < v86);
      }

      goto LABEL_241;
    }

LABEL_240:
    LOWORD(v86) = 0;
    v85 = 0;
LABEL_241:
    if (v23)
    {
      v23(v10, 0, v110, v86, v85, v10[4]);
    }

    sub_10000C1E8(v110);
    return;
  }

  if (v9 == 1)
  {

    sub_1002B84EC(v10, a2 + 1, (a3 - 1));
    return;
  }

  if (v9 != 3)
  {
    if (v9 == 5)
    {
      v14 = v10[6];
      if (v14 && *v14 == 4)
      {
        v15 = a3 - 1;
        v16 = v10[3];
        sub_10002242C(*(v10 + 15));
        *(v10 + 15) = 0;
        sub_10000C1E8(v10[6]);
        v10[6] = 0;
        v10[3] = 0;
        v17 = v15;
        if (v15 <= 4u)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid find information payload size %d.", v15);
            v18 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v19 = v10[4];
          v20 = v10;
          v21 = 4006;
LABEL_187:
          v16(v20, v21, 0, 0, v19);
          return;
        }

        v125 = a2 + 1;
        v79 = a2[1];
        if (v79 == 1)
        {
          v80 = 2;
        }

        else
        {
          v80 = 16 * (v79 == 2);
        }

        if (!v80 || (v81 = (v80 + 2), v82 = (v17 - 1) / v81, (v17 - 1) % v81))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid find information payload size %d (uuidSize == %u).", v17, v80);
            v83 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v19 = v10[4];
          v20 = v10;
          v21 = 4007;
          goto LABEL_187;
        }

        v102 = ((v17 - 1) / v81);
        ptr = sub_100007618(8 * (2 * v102 + v82), 0x1000040923A060DuLL);
        if (ptr)
        {
          if (v102)
          {
            v103 = 0;
            v104 = a2 + 3;
            v105 = ptr;
            do
            {
              v106 = v103 & 0xFFFE | 1;
              v107 = v125[v106 + 1];
              *v105 = v107 << 8;
              *v105 = v125[v106] | (v107 << 8);
              sub_10006A0FC(&v104[v106], v80, 1, &v126);
              v108 = v126;
              *(v105 + 5) = v127;
              *(v105 + 4) = v108;
              v105 += 24;
              v103 += (v80 + 2);
              --v102;
            }

            while (v102);
          }
        }

        else
        {
          LOWORD(v82) = 0;
        }

        if (v16)
        {
          v16(v10, 0, ptr, v82, v10[4]);
        }

        sub_10000C1E8(ptr);
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("No Find information request matching this response. Ignoring.");
        v70 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_177;
        }
      }

      return;
    }

LABEL_148:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown opcode 0x%x", v9);
      v69 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_177;
      }
    }

    return;
  }

  v53 = v10[6];
  if (v53 && *v53 == 2)
  {
    v54 = a3 - 1;
    v55 = v10[3];
    v56 = v53[1];
    v57 = v53[2];
    sub_10002242C(*(v10 + 15));
    *(v10 + 15) = 0;
    sub_10000C1E8(v10[6]);
    v10[6] = 0;
    v10[3] = 0;
    if (v54 == 2)
    {
      v58 = *(a2 + 1);
      if (v58 <= 0x17)
      {
        v58 = 23;
      }

      if ((v56 | (v57 << 8)) >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v56 | (v57 << 8);
      }

      LOWORD(v126) = v59;
      v60 = *(v10 + 9);
      if (v60 != 23 && v59 != v60)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("The negotiated MTU is different from a previously negotiated one: %u != %u", *(v10 + 9), v59);
          v61 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v62 = *(&xmmword_100B66100 + 1);
      if (*(&xmmword_100B66100 + 1))
      {
        while (v62 != v10)
        {
          v62 = v62[10];
          if (!v62)
          {
            goto LABEL_217;
          }
        }

        *(v10 + 9) = v59;
      }

LABEL_217:
      v100 = sub_1002B92E4(*v10);
      if (v100)
      {
        sub_1002B986C(v100, 0, &v126);
        if (!v55)
        {
          return;
        }
      }

      else if (sub_10000C240() && (sub_10000AF54("Couldn't find server session for connection 0x%08x - can't change MTU!", *v10), v101 = sub_10000C050(0x44u), os_log_type_enabled(v101, OS_LOG_TYPE_ERROR)))
      {
        sub_1000E09C0();
        if (!v55)
        {
          return;
        }
      }

      else if (!v55)
      {
        return;
      }

      v93 = v126;
      v90 = v10[4];
      v91 = v10;
      v92 = 0;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid MTU payload size %d.", v54);
        v89 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v90 = v10[4];
      v91 = v10;
      v92 = 4005;
      v93 = 0;
    }

    v55(v91, v92, v93, v90);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No MTU request matching this response. Ignoring.");
    v74 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_177;
    }
  }
}

void sub_1002B8018(__int128 *a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4)
{
  if (a2 && a3 >= 2)
  {
    v9 = v4;
    v10 = v5;
    if (off_100B66118)
    {
      off_100B66118(a1, *a2, a2 + 1, (a3 - 2), a4, qword_100B66120);
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    if (!sub_10001FF10(v7, 1u))
    {
      v8 = 30;
      if (!sub_10001F968(v7, &v8, 1uLL, 0))
      {
        sub_1002B5DEC(a1, v7, 1, 0);
      }
    }

    sub_1000B7B40(v7);
  }
}

void sub_1002B80E4(uint64_t a1, char a2)
{
  __src[0] = 1;
  __src[1] = a2;
  v6 = 0;
  v7 = 6;
  v2 = *(&xmmword_100B66100 + 1);
  if (*(&xmmword_100B66100 + 1))
  {
    while (*v2 != a1)
    {
      v2 = *(v2 + 80);
      if (!v2)
      {
        return;
      }
    }

    *(v2 + 24) = 0;
    *(v2 + 56) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 5;
    v3 = sub_1001BBBD8(5uLL, 0x100004077774924uLL);
    *(v2 + 48) = v3;
    if (v3)
    {
      memmove(v3, __src, *(v2 + 40));
      if (!sub_1002B6254(v2))
      {
        return;
      }

      v4 = *(v2 + 48);
      if (v4)
      {
        sub_10000C1E8(v4);
      }
    }

    *(v2 + 48) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
  }
}

uint64_t sub_1002B81AC(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    if (!a1)
    {
      sub_1000D660C();
    }

    if (*(a1 + 86))
    {
      v2 = 625 * *(a1 + 86);
    }

    else
    {
      v2 = 7500;
    }

    if (*(a1 + 70))
    {
      v3 = 0;
      v4 = 527;
    }

    else
    {
      v6 = sub_1002C0F90(*(a1 + 108), *(a1 + 104), v2, *(a1 + 144), *(a1 + 148));
      if (v6)
      {
        v7 = v6 - 4;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Calculated MTU is zero for rx %d, tx %d, and CE %d us, probe %d", *(a1 + 108), *(a1 + 104), v2, *(a1 + 136));
          v8 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        v7 = 527;
      }

      v3 = v7;
      if (v7 >= 0x20Fu)
      {
        v4 = 527;
      }

      else
      {
        v4 = v7;
      }
    }

    if (sub_10000C240())
    {
      v9 = "peripheral";
      if (!*(a1 + 70))
      {
        v9 = "central";
      }

      sub_10000AF54("ATT %s MTU %d (calculated %d): for rx %d bytes, tx %d bytes, ce %d us, probestate %d", v9, v4, v3, *(a1 + 108), *(a1 + 104), v2, *(a1 + 136));
      v10 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v13 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid LE Handle");
      v5 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return v4;
}

__n128 sub_1002B83C8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  result.n128_u64[0] = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&qword_100B660E0), vceqzq_s64(*&off_100B660F0))));
  result.n128_u16[0] = vmaxv_u16(result.n128_u64[0]);
  if (result.n128_u8[0])
  {
    sub_1000D660C();
  }

  if (a1)
  {
    result = *a1;
    v3 = *(a1 + 16);
    *&qword_100B660E0 = *a1;
    *&off_100B660F0 = v3;
  }

  return result;
}

double sub_1002B842C()
{
  result = 0.0;
  *&qword_100B660E0 = 0u;
  *&off_100B660F0 = 0u;
  return result;
}

void sub_1002B8444(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1002B5AD4((a1 + 1));
  if (v4)
  {
    *(v4 + 65) = 1;
    if (*(v4 + 64) == 1)
    {
      *(v4 + 64) = 0;
      v5 = *(v4 + 48);
      if (v5)
      {
        if (*(v4 + 40))
        {
          if (a3 != 4832 && a3)
          {
            v6 = 251658240;
            LOBYTE(v6) = *v5;
            sub_1002B84EC(v4, &v6, 4);
          }

          else
          {

            sub_1002B6254(v4);
          }
        }
      }
    }
  }
}

void sub_1002B84EC(uint64_t *a1, unsigned __int8 *a2, int a3)
{
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  if (a3 != 4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid error payload size %d.", a3);
      v10 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v6 = a2[3];
  v7 = a1[6];
  if (!v7)
  {
    return;
  }

  v8 = *a2;
  if (*v7 != v8)
  {
    return;
  }

  if (((v6 < 0x10) & (0x9120u >> v6)) != 0 && (*(a1 + 65) & 1) == 0)
  {
    if (sub_1002DC0C8(*a1))
    {
      if ((sub_1000CB318(*a1) & 1) == 0)
      {
        if (v6 != 15)
        {
          if (v6 == 8)
          {
            if (!sub_10000C240())
            {
              goto LABEL_71;
            }

            sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHORIZATION");
            v13 = sub_10000C050(0x44u);
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }

          if (v6 != 5)
          {
            goto LABEL_7;
          }
        }

        v12 = sub_1002DBE90(*a1);
LABEL_72:
        if (v12 == 4804 || !v12)
        {
          *(a1 + 64) = 1;
          sub_10002242C(*(a1 + 15));
          return;
        }

        goto LABEL_7;
      }

      if (sub_1002DBFE8(*a1))
      {
        if (v6 != 12)
        {
          goto LABEL_7;
        }

        goto LABEL_64;
      }

      switch(v6)
      {
        case 0xC:
LABEL_64:
          v12 = sub_1002B8A34(a1);
          goto LABEL_72;
        case 8:
          if (!sub_10000C240())
          {
            goto LABEL_71;
          }

          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHORIZATION");
          v13 = sub_10000C050(0x44u);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_71;
          }

          break;
        case 5:
          if (!sub_10000C240())
          {
            goto LABEL_71;
          }

          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHENTICATION");
          v13 = sub_10000C050(0x44u);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_71;
          }

          break;
        default:
          goto LABEL_7;
      }

LABEL_70:
      *buf = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
LABEL_71:
      v12 = sub_1002E73A0(*a1, 1);
      goto LABEL_72;
    }

    switch(v6)
    {
      case 0xF:
        if (sub_10000C240())
        {
          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_ENCRYPTION startAutoPairing=%d", *(a1 + 67));
          v11 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
LABEL_61:
            *buf = 136446210;
            v15 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        break;
      case 8:
        if (!sub_10000C240())
        {
          goto LABEL_71;
        }

        sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHORIZATION");
        v13 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      case 5:
        if (sub_10000C240())
        {
          sub_10000AF54("GATT is Asking to pair due to LE_ATT_ERROR_INSUFFICIENT_AUTHENTICATION startAutoPairing=%d", *(a1 + 67));
          v11 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_61;
          }
        }

        break;
      default:
        goto LABEL_7;
    }

    if (*(a1 + 67) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_7:
  sub_10002242C(*(a1 + 15));
  *(a1 + 15) = 0;
  a1[3] = 0;
  v9 = a1[6];
  if (v9)
  {
    sub_10000C1E8(v9);
  }

  a1[6] = 0;
  if (v8 <= 13)
  {
    if (v8 <= 7)
    {
      if (v8 == 2)
      {
        v3(a1, v6, 0, a1[4]);
        return;
      }

      if (v8 != 4 && v8 != 6)
      {
        return;
      }

LABEL_32:
      (v3)(a1, v6, 0, 0, a1[4]);
      return;
    }

    if (v8 != 8)
    {
      if (v8 != 10 && v8 != 12)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_37:
    (v3)(a1, v6, 0, 0, 0, a1[4]);
    return;
  }

  if (v8 <= 21)
  {
    if (v8 == 14)
    {
      goto LABEL_32;
    }

    if (v8 == 16)
    {
      goto LABEL_37;
    }

    if (v8 != 18)
    {
      return;
    }

LABEL_36:
    (v3)(a1, v6, a1[4]);
    return;
  }

  if (v8 == 22)
  {
    (v3)(a1, v6, 0, 0, 0, 0, a1[4]);
    return;
  }

  if (v8 == 24 || v8 == 210)
  {
    goto LABEL_36;
  }
}

uint64_t sub_1002B8A34(uint64_t *a1)
{
  v9 = 0;
  v2 = sub_1002DC14C(*a1, &v9);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to retrieve LTK size : %!.", v3);
      v4 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (v9 == 16)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Already using max key size. Erroring out.");
      v5 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1424;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("GATT is Asking to pair due to short encryption link");
      v6 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_10000C0FC();
        *buf = 136446210;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return sub_1002E73A0(*a1, 1);
  }

  return v3;
}

void sub_1002B8BB8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a3 != 702)
  {
    if (a3 || !sub_1000ABD24(a2))
    {
      if (sub_10000C240())
      {
        v9 = a2 ? *a2 : 0;
        sub_10000AF54("GATT connection notification from lmHandle 0x%x (%x) with status %!", v9, a2, a3);
        v10 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
      v5 = *(&xmmword_100B66100 + 1);
      if (*(&xmmword_100B66100 + 1))
      {
        while (*v5 != a2)
        {
          v5 = *(v5 + 80);
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        if (!sub_10000C240())
        {
          goto LABEL_24;
        }

        sub_10000AF54("ATT already has a bearer for this !");
        v11 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

LABEL_23:
        sub_1000E09C0();
LABEL_24:
        sub_1000D660C();
        return;
      }

LABEL_7:
      v6 = sub_1000BE280(a2);
      v7 = sub_1002B5B0C(a2, !v6);
      if (!v7)
      {
        if (!sub_10000C240())
        {
          goto LABEL_24;
        }

        sub_10000AF54("ATT failed to create session");
        v12 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v8 = qword_100B660E0;
      if (qword_100B660E0)
      {

        (v8)(a2, v7, 0);
      }
    }
  }
}

void sub_1002B8D48(unsigned __int16 *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_1002B5CA4(a1);
    if (v4)
    {
      v5 = v4;
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Session destroy failed with %!", v5);
        v6 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    if (off_100B660E8)
    {
      off_100B660E8(a1, a2);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("_GATT_LE_DisconnectedCB lmhandle 0x%x (0x%x) is not valid with reason %!", 0, 0, a2);
    v7 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002B8E34(unsigned __int16 *a1, uint64_t a2)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  if (a2)
  {
    if (sub_10000C240())
    {
      if (a1)
      {
        v4 = *a1;
      }

      else
      {
        v4 = 0;
      }

      sub_10000AF54("GATT ready notification from lmHandle 0x%x (%x) with error %!", v4, a1, a2);
      v6 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (a1)
    {
      sub_1002BA624(a1);
    }

    if (off_100B660F0)
    {
      v5 = *(&xmmword_100B66100 + 1);
      if (*(&xmmword_100B66100 + 1))
      {
        while (*v5 != a1)
        {
          v5 = *(v5 + 80);
          if (!v5)
          {
            goto LABEL_13;
          }
        }

        v7 = *(v5 + 66);
        v8 = sub_1002B81AC(a1);
        v9 = off_100B660F0;
        if (off_100B660F0)
        {

          (v9)(a1, v7, v8, 0);
        }
      }

      else
      {
LABEL_13:

        sub_1000D660C();
      }
    }
  }
}

void sub_1002B8F74(void *ptr)
{
  if (ptr)
  {
    v2 = ptr[1];
    if (v2)
    {
      sub_1000BC14C(v2);
    }

    sub_10000C1E8(ptr);
  }
}

void sub_1002B8FC0(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = *(&xmmword_100B66100 + 1);
  if (v1)
  {
    v3 = *(&xmmword_100B66100 + 1) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_7:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Bearer is not valid");
    v4 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_9;
  }

  while (v2 != v1)
  {
    v2 = v2[10];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v5 = *v1;
  v6 = sub_10000C240();
  if (!v5)
  {
    if (!v6)
    {
      return;
    }

    sub_10000AF54("Bearer handle is not valid");
    v9 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_9:
    sub_1000E09C0();
    return;
  }

  if (v6)
  {
    sub_10000AF54("Timeout waiting for ATT response, forcing a disconnect.");
    v7 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v13 = *(v1 + 2);
  v14 = *(v1 + 6);
  v12 = *(v1 + 14);
  if (*v1)
  {
    if (*(*v1 + 2))
    {
      if (*(*v1 + 2) != 4)
      {
        return;
      }

      v8 = sub_1002D1EAC(&v12);
    }

    else
    {
      v8 = sub_1001BCD64((*(v1 + 8) << 40) | (*(v1 + 9) << 32) | (*(v1 + 10) << 24) | (*(v1 + 11) << 16) | (*(v1 + 12) << 8) | *(v1 + 13));
    }

    v10 = v8;
    if (v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT disconnect timedout with status %!", v10);
        v11 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_1002B9188()
{
  v0 = sub_1001BBBD8(0x10uLL, 0x10200408CB94CA5uLL);
  *(&xmmword_100B66170 + 1) = v0;
  if (v0)
  {
    v1 = v0;
    result = 0;
    *v1 = 1;
    word_100B66180 = 1;
    LOBYTE(xmmword_100B66160) = 1;
    LOBYTE(xmmword_100B66170) = 1;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to allocate zero-index handle!");
      v3 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4013;
  }

  return result;
}

double sub_1002B9234()
{
  result = 0.0;
  xmmword_100B66190 = 0u;
  *&qword_100B661A0 = 0u;
  xmmword_100B66170 = 0u;
  *&word_100B66180 = 0u;
  xmmword_100B66160 = 0u;
  xmmword_100B661C0 = 0u;
  *&xmmword_100B661D0 = 0u;
  *&xmmword_100B661E0 = 0u;
  off_100B661F0 = 0;
  dword_100B661F8 = 0;
  return result;
}

__n128 sub_1002B926C(uint64_t a1)
{
  result.n128_u64[0] = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(xmmword_100B661C0), vceqzq_s64(*&xmmword_100B661D0))));
  result.n128_u16[0] = vmaxv_u16(result.n128_u64[0]);
  if ((result.n128_u8[0] & 1) == 0 && *a1 && *(a1 + 8) && *(a1 + 16))
  {
    if (*(a1 + 24))
    {
      result = *a1;
      v2 = *(a1 + 16);
      v3 = *(a1 + 32);
      off_100B661F0 = *(a1 + 48);
      *&xmmword_100B661D0 = v2;
      *&xmmword_100B661E0 = v3;
      xmmword_100B661C0 = result;
    }
  }

  return result;
}

void *sub_1002B92E4(uint64_t a1)
{
  result = *(&xmmword_100B66160 + 1);
  if (*(&xmmword_100B66160 + 1))
  {
    do
    {
      if (*result == a1)
      {
        break;
      }

      result = result[3];
    }

    while (result);
  }

  return result;
}

uint64_t sub_1002B930C(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if (!*(a2 + 32))
  {
    sub_1000D660C();
  }

  if (a3 >= 0x201)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Number of requested handles (%d) exceeds maximum allowed (%d)", a3, 512);
      v6 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4016;
  }

  if (a1)
  {
    v8 = *(*(*(&xmmword_100B66170 + 1) + 16 * a1 + 8) + 24);
  }

  else
  {
    v8 = 0xFFFF;
  }

  v9 = word_100B66180;
  v10 = a1 + 1;
  if (a1 + 1 < word_100B66180 && v8 > a1)
  {
    v12 = *(&xmmword_100B66170 + 1);
    do
    {
      v13 = (*(&xmmword_100B66170 + 1) + 16 * v10);
      v14 = *v13;
      if (v14 == 2)
      {
        v15 = *(*(v13 + 1) + 24);
      }

      else if (*v13)
      {
        v15 = v10;
      }

      else
      {
        if (a3 && v10 < word_100B66180)
        {
          v15 = v10;
          if (v10 <= v8)
          {
            v14 = 0;
            v16 = v10;
            v17 = (*(&xmmword_100B66170 + 1) + 16 * v10);
            while (1)
            {
              v18 = *v17;
              v17 += 16;
              if (v18)
              {
                break;
              }

              ++v14;
              v15 = v16 + 1;
              if (v16 + 1 < word_100B66180 && v16 < v8)
              {
                ++v16;
                if (v14 < a3)
                {
                  continue;
                }
              }

              goto LABEL_32;
            }

            v15 = v16;
          }
        }

        else
        {
          v15 = v10;
        }

LABEL_32:
        if (v14 == a3)
        {
          *v13 = 2;
          v9 = v10;
          goto LABEL_45;
        }
      }

      v10 = v15 + 1;
    }

    while (v15 + 1 < word_100B66180 && v15 < v8);
  }

  if (a1)
  {
    if (!sub_10000C240())
    {
      goto LABEL_49;
    }

    sub_10000AF54("No room for %d attributes in group [0x%04x -> 0x%04x]", a3 + 1, a1, v8);
    v19 = sub_10000C050(0x44u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v20 = sub_1001BBBD8(16 * (word_100B66180 + a3) + 16, 0x10200408CB94CA5uLL);
  if (v20)
  {
    v12 = v20;
    v21 = *(&xmmword_100B66170 + 1);
    if (!*(&xmmword_100B66170 + 1))
    {
      sub_1000D660C();
      v21 = *(&xmmword_100B66170 + 1);
    }

    memmove(v12, v21, 16 * word_100B66180);
    sub_10000C1E8(*(&xmmword_100B66170 + 1));
    *(&xmmword_100B66170 + 1) = v12;
    word_100B66180 += a3 + 1;
    *(v12 + 16 * v9) = 2;
    LOWORD(v10) = v9;
    if (v9)
    {
LABEL_45:
      result = 0;
      *(v12 + 2 * v9 + 1) = a2;
      *a2 = v10;
      *(a2 + 24) = v10 + a3;
      return result;
    }

    goto LABEL_49;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate new handle map of size %d", a3 + word_100B66180 + 1);
    v22 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_48:
      sub_1000E09C0();
    }
  }

LABEL_49:
  if (sub_10000C240())
  {
    sub_10000AF54("Can't add attribute to parent handle 0x%04x, with 0x%04x extra handles", a1, a3);
    v23 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4017;
}

void sub_1002B9630(unsigned int a1, int a2)
{
  v2 = *(&xmmword_100B66170 + 1);
  v3 = *(&xmmword_100B66170 + 1) + 16 * a1;
  if (*v3 == 2)
  {
    v4 = *(v3 + 8);
    v5 = v4[12];
    v6 = *v4;
    if (v6 <= v5)
    {
      v8 = 16 * v6;
      v9 = v5 - v6 + 1;
      do
      {
        *(v2 + v8) = 3;
        if (a2)
        {
          v10 = *(v2 + v8 + 8);
          if (v10)
          {
            sub_10000C1E8(v10);
            v2 = *(&xmmword_100B66170 + 1);
          }
        }

        *(v2 + v8 + 8) = 0;
        v8 += 16;
        --v9;
      }

      while (v9);
    }

    if (word_100B66180 - 1 == v5)
    {

      sub_1002B9704();
    }
  }
}

void sub_1002B9704()
{
  v0 = word_100B66180;
  if (word_100B66180)
  {
    v1 = word_100B66180 - 1;
    if (word_100B66180 == 1)
    {
LABEL_10:
      v6 = 0;
      v0 = 1;
    }

    else
    {
      v2 = word_100B66180 - 1;
      v3 = (*(&xmmword_100B66170 + 1) + 16 * v1);
      while (1)
      {
        v5 = *v3;
        v3 -= 16;
        v4 = v5;
        v6 = v2;
        if (v5 != 3 && v4 != 0)
        {
          break;
        }

        --v2;
        v0 = v6;
        if (!v2)
        {
          goto LABEL_10;
        }
      }
    }

    if (v1 > v6)
    {
      v8 = sub_1001BBBD8(16 * v0, 0x10200408CB94CA5uLL);
      if (v8)
      {
        v9 = v8;
        memmove(v8, *(&xmmword_100B66170 + 1), 16 * v0);
        sub_10000C1E8(*(&xmmword_100B66170 + 1));
        *(&xmmword_100B66170 + 1) = v9;
        word_100B66180 = v0;
        if (v6)
        {
          v10 = v9 + 24;
          v11 = v6;
          do
          {
            if (*(v10 - 8) == 2)
            {
              v12 = *v10;
              if (*v10)
              {
                if (*(v12 + 24) > v6)
                {
                  *(v12 + 24) = v6;
                }
              }
            }

            v10 += 2;
            --v11;
          }

          while (v11);
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Failed to allocate new handle map of size %d", v0);
        v13 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

void sub_1002B986C(uint64_t a1, int a2, _WORD *a3)
{
  v5 = &xmmword_100B66160 + 1;
  do
  {
    v6 = *v5;
    v5 = (*v5 + 24);
  }

  while (v6 != a1 && v6 != 0);
  if (v6)
  {
    if (a2)
    {
      if (*(a1 + 16) == 1)
      {
        sub_1000D660C();
      }

      *(a1 + 16) = 1;
    }

    else
    {
      if (!a3)
      {
        sub_1000D660C();
      }

      *(a1 + 16) = 0;
      *(a1 + 8) = *a3;
      v9 = *(&xmmword_100B661D0 + 1);

      v9(a1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Couldn't find active session %p!", a1);
    v8 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002B995C(uint64_t a1, __int16 a2, int a3, const void *a4, int a5)
{
  v24 = 0;
  v10 = &xmmword_100B66160 + 1;
  do
  {
    v11 = *v10;
    v10 = (*v10 + 24);
  }

  while (v11 != a1 && v11 != 0);
  if (v11)
  {
    if (xmmword_100B66170 == 1)
    {
      if (*(a1 + 16))
      {
        return 146;
      }

      else
      {
        v16 = sub_1001BBBD8(*(a1 + 8), 0x100004077774924uLL);
        if (v16)
        {
          v17 = v16;
          if (a3)
          {
            v18 = 27;
          }

          else
          {
            v18 = 29;
          }

          *v16 = v18;
          *(v16 + 1) = a2;
          if (*(a1 + 8) - 3 < a5)
          {
            LOWORD(a5) = *(a1 + 8) - 3;
          }

          memmove(v16 + 3, a4, a5);
          if ((a3 & 1) == 0 && *(a1 + 12) && (sub_1000D660C(), *(a1 + 12)))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Session 0x%x already has an outstanding indication!", a1);
              v19 = sub_10000C050(0x44u);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            sub_10000C1E8(v17);
            return 4020;
          }

          else
          {
            v13 = sub_1002B9C28(*a1, v17, (a5 + 3), &v24);
            sub_10000C1E8(v17);
            if (v13)
            {
              if (sub_10000C240())
              {
                v20 = "indication";
                if (a3)
                {
                  v20 = "notification";
                }

                sub_10000AF54("Failed to send %s for session 0x%x with result %!", v20, a1, v13);
                v21 = sub_10000C050(0x44u);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }
            }

            else
            {
              LOBYTE(xmmword_100B66170) = v24;
              if ((a3 & 1) == 0)
              {
                v23[1] = a1;
                v23[0] = 8;
                sub_10002195C(sub_1002B9CD8, v23, dword_100B53E28, (a1 + 12));
              }

              return 0;
            }
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to allocate memory for update");
            v22 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          return 4019;
        }
      }
    }

    else
    {
      return 410;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Couldn't find active session %p!", a1);
      v14 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4018;
  }

  return v13;
}

uint64_t sub_1002B9C28(__int128 *a1, char *a2, size_t a3, BOOL *a4)
{
  memset(v12, 0, sizeof(v12));
  v8 = sub_10001FF10(v12, 1u);
  if (v8 || (v8 = sub_10001F968(v12, a2, a3, 2u), v8))
  {
    v9 = v8;
  }

  else
  {
    v11 = sub_1002B5DEC(a1, v12, 1, a4);
    if (v11 == 412)
    {
      v9 = 0;
    }

    else
    {
      v9 = v11;
    }
  }

  sub_1000B7B40(v12);
  return v9;
}

void sub_1002B9CD8(uint64_t a1)
{
  v1 = *(&xmmword_100B66160 + 1);
  if (!*(&xmmword_100B66160 + 1))
  {
    return;
  }

  v2 = **(a1 + 8);
  while (1)
  {
    v3 = *v1;
    if (*v1 == v2)
    {
      break;
    }

    v1 = *(v1 + 24);
    if (!v1)
    {
      return;
    }
  }

  if (!sub_10000C240() || (sub_10000AF54("Timed out waiting for indication response - disconnecting!"), v4 = sub_10000C050(0x44u), !os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    if (v2)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (sub_10000C240())
    {
      v9 = 0;
LABEL_24:
      sub_10000AF54("Invalid transport %d in Indication Response Timeout Handler", v9);
      v10 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_26:
    sub_1000D660C();
    return;
  }

  sub_1000E09C0();
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (!v3[2])
  {
    v7 = sub_1001BCD64((v3[48] << 40) | (v3[49] << 32) | (v3[50] << 24) | (v3[51] << 16) | (v3[52] << 8) | v3[53]);
    goto LABEL_14;
  }

  if (v3[2] != 4)
  {
    if (sub_10000C240())
    {
      v9 = v3[2] == 4;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  *(v11 + 3) = 0;
  v11[0] = 0;
  v5 = sub_1002D0158(v3, v11, 0);
  v6 = 0;
  if (!v5)
  {
    *(v2 + 132) = 6;
    *(v2 + 140) = 4541;
    v7 = sub_1002D1EAC(v11);
LABEL_14:
    v6 = v7;
  }

  if (v6 && sub_10000C240())
  {
    sub_10000AF54("ATT disconnect failure during Indication response with status %!", v6);
    v8 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002B9EB0()
{
  v0 = word_100B66180;
  if (word_100B66180 >= 0x100uLL)
  {
    LOBYTE(result) = 0;
    v2 = *(&xmmword_100B66170 + 1);
    do
    {
      v4 = *v2;
      v2 += 16;
      v3 = v4;
      if (result)
      {
        result = 1;
        if (v3 == 2)
        {
          return result;
        }
      }

      else
      {
        if (v3)
        {
          v5 = v3 == 3;
        }

        else
        {
          v5 = 1;
        }

        LOBYTE(result) = v5;
      }

      --v0;
    }

    while (v0);
  }

  return 0;
}

_WORD *sub_1002B9F00(uint64_t a1, __int16 a2)
{
  v4 = sub_1001BBBD8(0x28uLL, 0x102004033BF8BFCuLL);
  v5 = v4;
  if (v4)
  {
    v6 = *(&xmmword_100B66160 + 1);
    *v4 = a1;
    v4[4] = a2;
    sub_1000CD5B8(a1);
    while (v6)
    {
      v7 = v6;
      v6 = *(v6 + 24);
      if (!v6)
      {
        *(v7 + 24) = v5;
        *(v5 + 4) = v7;
        goto LABEL_10;
      }
    }

    *(&xmmword_100B66160 + 1) = v5;
LABEL_10:
    sub_1002B9FDC(a1, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate new DB session!");
    v8 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v5;
}

void sub_1002B9FDC(uint64_t a1, int a2)
{
  v2 = word_100B661A8;
  if (word_100B661A8)
  {
    v3 = *(&xmmword_100B66190 + 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v6 = 0;
    v7 = qword_100B661A0;
    v8 = 1;
    v9 = word_100B661A8;
    do
    {
      v10 = (v7 + v6);
      if (!a1 || *v10 == a1)
      {
        if (a2)
        {
          sub_1002BA9F0(*(v7 + v6), *(v7 + v6 + 8), *(v7 + v6 + 16), 0);
        }

        sub_10000C1E8(*(v7 + v6 + 8));
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        --v9;
        v2 = word_100B661A8;
        v7 = qword_100B661A0;
        v11 = *(&xmmword_100B66190 + 1) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v8 >= v2)
      {
        break;
      }

      v6 += 24;
      ++v8;
    }

    while (v11);
    if (v9 != v2)
    {
      if (!v9)
      {
        v13 = 0;
        v15 = qword_100B661A0;
        goto LABEL_26;
      }

      v12 = sub_1001BBBD8(24 * v9, 0x1030040118C0280uLL);
      if (v12)
      {
        v13 = v12;
        v14 = word_100B661A8;
        v15 = qword_100B661A0;
        if (word_100B661A8)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = &v15[v16];
            if (*&v15[v16])
            {
              if (v18 >= v9)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("Not enough allocation to update stalled request");
                  v24 = sub_10000C050(0x44u);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                sub_10000C1E8(v13);
                return;
              }

              v20 = v18++;
              v21 = &v13[24 * v20];
              v22 = *v19;
              *(v21 + 2) = *(v19 + 2);
              *v21 = v22;
              v15 = qword_100B661A0;
              v14 = word_100B661A8;
            }

            ++v17;
            v16 += 24;
          }

          while (v17 < v14);
        }

LABEL_26:
        sub_10000C1E8(v15);
        qword_100B661A0 = v13;
        word_100B661A8 = v9;
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Failed to allocate room for updated stall queue");
        v23 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

void sub_1002BA214(unsigned __int16 *a1)
{
  v2 = *(&xmmword_100B66160 + 1);
  v3 = sub_1002BCE9C(a1, 1);
  for (i = 0; v3; v3 = sub_1002BCE9C(a1, 1))
  {
    sub_1002BA3E8(v3);
    ++i;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE_ATT_DB_DestroySession dequeue count: %d", i);
    v5 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v2)
  {
    while (*v2 != a1)
    {
      v2 = v2[3];
      if (!v2)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to find the DB session to destroy!");
      v6 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
    v2 = 0;
  }

  v7 = *(v2 + 3);
  if (v7)
  {
    sub_10002242C(v7);
    xmmword_100B661D0(v2);
  }

  if (xmmword_100B661E0)
  {
    xmmword_100B661E0(0, v2, 0, 0, 0);
  }

  sub_1002B9FDC(a1, 0);
  v9 = v2[3];
  v8 = v2[4];
  v10 = (v8 + 12);
  if (!v8)
  {
    v10 = &xmmword_100B66160 + 1;
  }

  *v10 = v9;
  if (v9)
  {
    *(v9 + 4) = v8;
  }

  sub_10000C1E8(v2);
}

void sub_1002BA3E8(uint64_t a1)
{
  if (xmmword_100B66190)
  {
    v2 = 0;
    v3 = 72 * (xmmword_100B66190 - 1);
    for (i = 72; ; i += 72)
    {
      v5 = (qword_100B66188 + i - 72);
      if (v5 == a1 && *a1 == *v5)
      {
        break;
      }

      ++v2;
      v3 -= 72;
      if (xmmword_100B66190 == v2)
      {
        return;
      }
    }

    v6 = xmmword_100B66190 - 1;
    if (xmmword_100B66190 == 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = sub_1001BBBD8(72 * (xmmword_100B66190 - 1), 0x10B0040592477A1uLL);
      v8 = v7;
      if (v2)
      {
        memmove(v7, qword_100B66188, i - 72);
      }

      if (v6 > v2)
      {
        memmove((v8 + i - 72), (qword_100B66188 + i), v3);
      }
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      sub_10000C1E8(v9);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      sub_10000C1E8(v10);
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      sub_10002242C(v11);
    }

    sub_10000C1E8(qword_100B66188);
    qword_100B66188 = v8;
    LOWORD(xmmword_100B66190) = v6;
  }
}

void sub_1002BA558(int a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Overriding ATT MTU to %d", a1);
    v2 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v4 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  word_100B661FC = a1;
}

uint64_t sub_1002BA624(uint64_t a1)
{
  v16[2] = 0;
  *v16 = 3;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  if (!a1 && sub_10000C240() && (sub_10000AF54("LE ATT DB Handle MTU Change Request null hci handle"), v3 = sub_10000C050(0x44u), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (i)
    {
      goto LABEL_12;
    }
  }

  else if (i)
  {
    goto LABEL_12;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE ATT DB Handle MTU Change Request session not found");
    v4 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_1000D660C();
LABEL_12:
  v5 = *(i + 18);
  if (!*(i + 18))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No pending ATT MTU requests");
      v7 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v18 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return 0;
  }

  *(i + 18) = 0;
  if (a1 && !*(a1 + 2))
  {
    v6 = *(i + 8);
  }

  else
  {
    v6 = word_100B661FC;
    if (!word_100B661FC)
    {
      v6 = sub_1002B81AC(a1);
    }
  }

  if (v5 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(i + 8);
  if (v9 != 23 && v8 != v9)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("The negotiated MTU is different from a previously negotiated one: %u != %u", *(i + 8), v8);
      v10 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  *&v16[1] = v8;
  if (sub_10000C240())
  {
    sub_10000AF54("MTU response: desiredMTU %d, remoteMTU %d", v6, v5);
    v11 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v18 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1002B9C28(a1, v16, 3uLL, 0))
  {
    *buf = 513;
    LOBYTE(v18) = 17;
    return sub_1002B9C28(a1, buf, 5uLL, 0);
  }

  *(i + 8) = v8;
  v13 = sub_1002D4758(a1, v8);
  if (!v13)
  {
    if (off_100B661F0)
    {
      off_100B661F0(i, v8);
    }

    return 0;
  }

  v12 = v13;
  if (sub_10000C240())
  {
    sub_10000AF54("ATT DB failed to set GATT MTU");
    v14 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v12;
}

uint64_t sub_1002BA980(uint64_t a1)
{
  v1 = *(&xmmword_100B66160 + 1);
  if (!*(&xmmword_100B66160 + 1))
  {
    return 4202;
  }

  while (*v1 != a1)
  {
    v1 = *(v1 + 24);
    if (!v1)
    {
      return 4202;
    }
  }

  v3 = *(v1 + 12);
  if (!v3)
  {
    return 4203;
  }

  sub_10002242C(v3);
  *(v1 + 12) = 0;
  xmmword_100B661D0(v1);
  return 0;
}

void sub_1002BA9F0(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1000ABD24(a1) && !sub_1000B8B5C(a1) || !a2 || !a3)
  {
    return;
  }

  if ((xmmword_100B66160 & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Ignoring request as ATT database is not initialized!");
      v10 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }
    }

    return;
  }

  if ((*a2 | 0x80) == 0xD2 || (v11 = sub_1002BCE9C(a1, 0)) == 0)
  {
    v8 = *(&xmmword_100B66160 + 1);
    if (*(&xmmword_100B66160 + 1))
    {
      while (*v8 != a1)
      {
        v8 = *(v8 + 24);
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if (sub_10000C240())
      {
        v9 = a1 ? *a1 : 0;
        sub_10000AF54("Couldn't find active session for ATT Request lmHandle 0x%x request %d", v9, *a2);
        v14 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1000D660C();
    }

    v15 = *a2;
    if (*(&xmmword_100B66190 + 1))
    {
      if ((v15 | 0x80) == 0xD2)
      {
        return;
      }

      v16 = word_100B661A8;
      if (word_100B661A8)
      {
        v17 = qword_100B661A0;
        while (*v17 != a1)
        {
          v17 += 3;
          if (!--v16)
          {
            goto LABEL_30;
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Ignoring request as connection 0x%x already has one in the stall queue", a1);
          v25 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_79;
          }
        }

        return;
      }

LABEL_30:
      v18 = sub_100007618(a3, 0x100004077774924uLL);
      if (v18)
      {
        v19 = v18;
        memmove(v18, a2, a3);
        v20 = sub_1001BBBD8(24 * word_100B661A8 + 24, 0x1030040118C0280uLL);
        if (v20)
        {
          v21 = v20;
          v22 = &v20[24 * word_100B661A8];
          *v22 = a1;
          *(v22 + 1) = v19;
          *(v22 + 8) = a3;
          *(v22 + 18) = 0;
          *(v22 + 11) = 0;
          if (qword_100B661A0)
          {
            memmove(v20, qword_100B661A0, 24 * word_100B661A8);
            sub_10000C1E8(qword_100B661A0);
          }

          qword_100B661A0 = v21;
          ++word_100B661A8;
          return;
        }

        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Failed to add new request to stall queue");
        v27 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
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

        sub_10000AF54("Failed to backup stalled request");
        v26 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

LABEL_79:
      sub_1000E09C0();
      return;
    }

    v23 = 4201;
    if (*a2 <= 0xDu)
    {
      if (*a2 <= 7u)
      {
        switch(v15)
        {
          case 2:
            v24 = sub_1002BAF18(a1, a2, a3);
            break;
          case 4:
            v24 = sub_1002BB160(a1, a2, a3);
            break;
          case 6:
            v24 = sub_1002BB4C8(a1, a2, a3, a4);
            break;
          default:
            goto LABEL_77;
        }

        goto LABEL_71;
      }

      if (v15 != 8)
      {
        if (v15 != 10 && v15 != 12)
        {
          goto LABEL_77;
        }

        v24 = sub_1002BBD14(a1, a2, a3, a4);
        goto LABEL_71;
      }
    }

    else
    {
      if (*a2 > 0x15u)
      {
        if (*a2 <= 0x1Du)
        {
          if (v15 != 22)
          {
            if (v15 == 24)
            {
              v24 = sub_1002BCBBC(a1, a2, a3, a4);
              goto LABEL_71;
            }

LABEL_77:
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("LE_ATT_DB_ProcessClientRequest opcode 0x%x failed with %!", *a2, v23);
            v29 = sub_10000C050(0x44u);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            goto LABEL_79;
          }

          goto LABEL_59;
        }

        if (v15 != 30)
        {
          if (v15 != 82)
          {
            goto LABEL_77;
          }

          goto LABEL_59;
        }

        v24 = sub_1002BA980(a1);
LABEL_71:
        v23 = v24;
        if (v24 > 4309)
        {
          if (v24 == 4310)
          {
            return;
          }

          v28 = 4540;
        }

        else
        {
          if (!v24)
          {
            return;
          }

          v28 = 4300;
        }

        if (v24 == v28)
        {
          return;
        }

        goto LABEL_77;
      }

      if (v15 == 14)
      {
        v24 = sub_1002BC0AC(a1, a2, a3, a4);
        goto LABEL_71;
      }

      if (v15 != 16)
      {
        if (v15 != 18)
        {
          goto LABEL_77;
        }

LABEL_59:
        v24 = sub_1002BC4DC(a1, a2, a3);
        goto LABEL_71;
      }
    }

    v24 = sub_1002BB820(a1, a2, a3, a4);
    goto LABEL_71;
  }

  v12 = v11;
  if (sub_10000C240())
  {
    sub_10000AF54("Ignoring request [%@] as connection 0x%x is already pending transaction %d", a2, a3, a1, *v12);
    v13 = sub_10000C050(0x44u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }
  }
}

uint64_t sub_1002BAF18(uint64_t a1, uint64_t a2, int a3)
{
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  if (a1)
  {
    if (!i)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE ATT DB Handle MTU Change Request session not found");
        v7 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_1000D660C();
    }

    if (a3 != 3)
    {
      *buf = 513;
      v10 = 4;
LABEL_21:
      LOBYTE(v15) = v10;
      return sub_1002B9C28(a1, buf, 5uLL, 0);
    }

    v8 = *(a2 + 1);
    *(i + 18) = v8;
    if (v8 <= 0x16)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid requested MTU %d", *(i + 18));
        v9 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      *buf = 513;
      v10 = 17;
      goto LABEL_21;
    }

    if (*(a1 + 132) == 7)
    {
      return sub_1002BA624(a1);
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("Peer asked for MTU:%d while link is not ready, waiting for link to be ready", *(i + 18));
        v13 = sub_10000C050(0x44u);
        result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          *buf = 136446210;
          v15 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          return 0;
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE ATT DB Handle MTU Change Request null hci handle");
      v11 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 414;
  }

  return result;
}

uint64_t sub_1002BB160(__int128 *a1, char *a2, unsigned int a3)
{
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  if (a3 <= 4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack Find Information Request");
      v5 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v28 = 1025;
    v6 = 4;
    goto LABEL_33;
  }

  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  if (v9 <= (v8 - 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle(s) (0x%04x, 0x%04x) for Find Information Request", v8, v9);
      v23 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v6 = 1;
    LOBYTE(v28) = 1;
    BYTE1(v28) = v7;
    HIWORD(v28) = v8;
    goto LABEL_33;
  }

  v10 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  if (!v10)
  {
    LOBYTE(v28) = 1;
    BYTE1(v28) = v7;
    HIWORD(v28) = v8;
    v6 = 17;
    goto LABEL_33;
  }

  v11 = v10;
  v27 = v7;
  v12 = *(i + 8);
  *v10 = 5;
  if (v8 > v9 || (v13 = word_100B66180, v8 >= word_100B66180))
  {
LABEL_27:
    sub_10000C1E8(v11);
    LOBYTE(v28) = 1;
    BYTE1(v28) = v27;
    HIWORD(v28) = v8;
    v6 = 10;
LABEL_33:
    v29 = v6;
    return sub_1002B9C28(a1, &v28, 5uLL, 0);
  }

  v14 = 0;
  v15 = *(&xmmword_100B66170 + 1);
  v16 = 16 * v8;
  v17 = v8;
  v18 = 1;
  do
  {
    if (*(v15 + v16) == 2)
    {
      v19 = *(*(v15 + v16 + 8) + 4);
      if (v14)
      {
        if (v14 != v19)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v19 == 2)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        v21 = v18++;
        *(v11 + v21) = v20;
        v14 = v19;
      }

      if (v12 - v18 < v14 + 2)
      {
        goto LABEL_35;
      }

      *(v11 + v18) = v17;
      v22 = v18 + 2;
      *(v11 + (v18 + 1)) = BYTE1(v17);
      sub_10007A978(v11 + (v18 + 2), (*(*(&xmmword_100B66170 + 1) + v16 + 8) + 4), 1);
      v18 = v22 + v14;
      v13 = word_100B66180;
      v15 = *(&xmmword_100B66170 + 1);
    }

    if (v17 >= v9)
    {
      break;
    }

    ++v17;
    v16 += 16;
  }

  while (v17 < v13);
  if (v18 == 1)
  {
    goto LABEL_27;
  }

LABEL_35:
  if (!sub_1002B9C28(a1, v11, v18, 0))
  {
    sub_10000C1E8(v11);
    return 0;
  }

  LOBYTE(v28) = 1;
  BYTE1(v28) = v27;
  HIWORD(v28) = v8;
  v29 = 17;
  v25 = sub_1002B9C28(a1, &v28, 5uLL, 0);
  sub_10000C1E8(v11);
  result = 0;
  if (v25)
  {
    if (v25 != 412)
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("ATT Send status %!", v25);
        v26 = sub_10000C050(0x44u);
        result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_10080F604();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002BB4C8(__int128 *a1, _DWORD *a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  *ptr = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  LODWORD(v23) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v24 + 1) = i;
  if (a3 <= 6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack Find By Type Value Request");
      v9 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LODWORD(v21[0]) = 1537;
    v10 = 4;
    goto LABEL_9;
  }

  *v28 = *a2;
  *&v28[3] = *(a2 + 3);
  v11 = *&v28[1];
  if (*&v28[3] <= (*&v28[1] - 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle(s) (0x%04x, 0x%04x) for Find By Type Value Request", *&v28[1], *&v28[3]);
      v16 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v21[0]) = 1;
    BYTE1(v21[0]) = v28[0];
    WORD1(v21[0]) = *&v28[1];
    BYTE4(v21[0]) = 1;
    return sub_1002B9C28(a1, v21, 5uLL, 0);
  }

  if (a3 != 7)
  {
    v29 = a2 + 7;
    v30 = a3 - 7;
  }

  v12 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  ptr[1] = v12;
  if (!v12)
  {
    LOBYTE(v21[0]) = 1;
    BYTE1(v21[0]) = v28[0];
    WORD1(v21[0]) = *&v28[1];
    v10 = 17;
LABEL_9:
    BYTE4(v21[0]) = v10;
    return sub_1002B9C28(a1, v21, 5uLL, 0);
  }

  LOWORD(v26) = *(i + 8);
  WORD1(v26) = 1;
  *v12 = 7;
  v13 = sub_1002BD07C(v28, &v23, v4);
  v14 = v13;
  if (v13 == 240)
  {
    *(&v23 + 1) = sub_1002BD2BC;
    v18 = sub_100007618(a3, 0x100004077774924uLL);
    *(&v26 + 1) = v18;
    LOWORD(v27) = a3;
    if (v18)
    {
      memmove(v18, a2, a3);
      v21[2] = *ptr;
      v21[3] = v26;
      v22 = v27;
      v21[0] = v23;
      v21[1] = v24;
      sub_1002BD518(v21);
      return 4540;
    }

    goto LABEL_26;
  }

  if (v13)
  {
    LOBYTE(v21[0]) = 1;
    BYTE1(v21[0]) = v28[0];
    WORD1(v21[0]) = v11;
    BYTE4(v21[0]) = v13;
    goto LABEL_28;
  }

  v15 = ptr[1];
  if (sub_1002B9C28(a1, ptr[1], WORD1(v26), 0))
  {
LABEL_26:
    LOBYTE(v21[0]) = 1;
    BYTE1(v21[0]) = v28[0];
    WORD1(v21[0]) = v11;
    BYTE4(v21[0]) = 17;
LABEL_28:
    v19 = sub_1002B9C28(a1, v21, 5uLL, 0);
    sub_10000C1E8(ptr[1]);
    if (v19)
    {
      if (v19 != 412)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("ATT Send status %!", v19);
          v20 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }

    goto LABEL_33;
  }

  sub_10000C1E8(v15);
LABEL_33:
  if (v14)
  {
    return (v14 + 4300);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BB820(unsigned __int16 *a1, unsigned __int8 *a2, unsigned int a3, char a4)
{
  v7 = *a2;
  v36 = 0;
  *ptr = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  LODWORD(v32) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v33 + 1) = i;
  if (a3 != 7 && a3 != 21)
  {
    if (sub_10000C240())
    {
      v22 = "Type";
      if (v7 == 16)
      {
        v22 = "Group Type";
      }

      sub_10000AF54("Could not unpack Read By %s Request", v22);
      v23 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v24 = *a2;
    v37[0] = 1;
    v37[1] = v24;
    *&v37[2] = 0;
    v21 = 4;
    goto LABEL_52;
  }

  v9 = *(a2 + 1);
  v10 = *(a2 + 3);
  sub_10006A0FC((a2 + 5), (a3 - 5), 1, v37);
  v11 = *v37;
  v12 = *&v37[4];
  v44[0] = *&v37[6];
  *(v44 + 6) = *&v37[12];
  if (v10 <= (v9 - 1))
  {
    if (sub_10000C240())
    {
      v19 = "Type";
      if (v7 == 16)
      {
        v19 = "Group Type";
      }

      sub_10000AF54("Invalid handle(s) (0x%04x, 0x%04x) for Read By %s Request", v9, v10, v19);
      v20 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v21 = 1;
    v37[0] = 1;
    v37[1] = v7;
    *&v37[2] = v9;
    goto LABEL_52;
  }

  if (v7 == 16)
  {
    v13 = xmmword_100B661C0;
    if (!xmmword_100B661C0)
    {
      sub_1000D660C();
      v13 = xmmword_100B661C0;
    }

    *v37 = v11;
    *&v37[4] = v12;
    *&v37[6] = v44[0];
    *&v37[12] = *(v44 + 6);
    if ((v13(v37) & 1) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid grouping type 0x%x for Read By Group Type Request", v12);
        v26 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      *v37 = 4097;
      *&v37[2] = v9;
      v21 = 16;
      goto LABEL_52;
    }
  }

  if (!i)
  {
    if (sub_10000C240())
    {
      v25 = a1 ? *a1 : 0;
      sub_10000AF54("Couldn't find active session for lmHandle 0x%x, Read By Type Request failed", v25);
      v30 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v37[0] = 1;
    v37[1] = v7;
    *&v37[2] = v9;
    v21 = 14;
    goto LABEL_52;
  }

  LOWORD(ptr[0]) = v9;
  v14 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  ptr[1] = v14;
  if (!v14)
  {
    v37[0] = 1;
    v37[1] = v7;
    *&v37[2] = v9;
    v21 = 17;
LABEL_52:
    v37[4] = v21;
    return sub_1002B9C28(a1, v37, 5uLL, 0);
  }

  LOWORD(v35) = *(i + 8);
  if (v7 == 16)
  {
    v15 = 17;
  }

  else
  {
    v15 = 9;
  }

  WORD1(v35) = 1;
  *v14 = v15;
  v41 = v11;
  v42 = v12;
  *v43 = v44[0];
  *&v43[6] = *(v44 + 6);
  v16 = sub_1002BD724(v7, v9, v10, &v41, 0, &v32, a4);
  if (v16 == 240)
  {
    *(&v32 + 1) = sub_1002BD95C;
    v17 = sub_100007618(a3, 0x100004077774924uLL);
    *(&v35 + 1) = v17;
    LOWORD(v36) = a3;
    if (v17)
    {
      memmove(v17, a2, a3);
      v38 = *ptr;
      v39 = v35;
      v40 = v36;
      *v37 = v32;
      *&v37[16] = v33;
      sub_1002BD518(v37);
      return 4540;
    }

    v37[0] = 1;
    v37[1] = v7;
    *&v37[2] = ptr[0];
    v37[4] = 17;
    v28 = sub_1002B9C28(a1, v37, 5uLL, 0);
    sub_10000C1E8(ptr[1]);
    result = 4540;
    if (v28 && v28 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v28);
        v29 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4540;
    }
  }

  else
  {
    v27 = sub_1002BDC1C(*a2, &v32, v16);
    sub_10000C1E8(ptr[1]);
    if (v27)
    {
      return v27 + 4300;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002BBD14(__int128 *a1, char *a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v8 = *a2;
  memset(v31, 0, 5);
  v30 = 0;
  *ptr = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  LODWORD(v26) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v27 + 1) = i;
  if (v8 == 12)
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  if (v10 != a3)
  {
    if (sub_10000C240())
    {
      v13 = "Read";
      if (v8 == 12)
      {
        v13 = "Read Blob";
      }

      sub_10000AF54("Could not unpack %s Request", v13);
      v14 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v15 = *a2;
    LOBYTE(v24[0]) = 1;
    BYTE1(v24[0]) = v15;
    WORD1(v24[0]) = 0;
    v12 = 4;
    goto LABEL_20;
  }

  __memmove_chk();
  if (v8 == 12 && *(v31 + 3) >= 0x201u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid offset (%u) for Read By Group Type Request", *(v31 + 3));
      v11 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v24[0]) = 1;
    BYTE1(v24[0]) = v31[0];
    WORD1(v24[0]) = *(v31 + 1);
    v12 = 7;
    goto LABEL_20;
  }

  v17 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
  ptr[1] = v17;
  if (!v17)
  {
    LOBYTE(v24[0]) = 1;
    BYTE1(v24[0]) = v31[0];
    WORD1(v24[0]) = *(v31 + 1);
    v12 = 17;
LABEL_20:
    BYTE4(v24[0]) = v12;
    return sub_1002B9C28(a1, v24, 5uLL, 0);
  }

  LOWORD(v29) = *(i + 8);
  if (v8 == 12)
  {
    v18 = 13;
  }

  else
  {
    v18 = 11;
  }

  WORD1(v29) = 1;
  *v17 = v18;
  v19 = sub_1002BD724(LOBYTE(v31[0]), *(v31 + 1), *(v31 + 1), 0, *(v31 + 3), &v26, v4);
  if (v19 == 240)
  {
    *(&v26 + 1) = sub_1002BD95C;
    v20 = sub_100007618(a3, 0x100004077774924uLL);
    *(&v29 + 1) = v20;
    LOWORD(v30) = a3;
    if (v20)
    {
      memmove(v20, a2, a3);
      v24[2] = *ptr;
      v24[3] = v29;
      v25 = v30;
      v24[0] = v26;
      v24[1] = v27;
      sub_1002BD518(v24);
      return 4540;
    }

    LOBYTE(v24[0]) = 1;
    BYTE1(v24[0]) = v31[0];
    WORD1(v24[0]) = *(v31 + 1);
    BYTE4(v24[0]) = 17;
    v22 = sub_1002B9C28(a1, v24, 5uLL, 0);
    sub_10000C1E8(ptr[1]);
    result = 4540;
    if (v22 && v22 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v22);
        v23 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4540;
    }
  }

  else
  {
    v21 = sub_1002BDC1C(*a2, &v26, v19);
    sub_10000C1E8(ptr[1]);
    if (v21)
    {
      return v21 + 4300;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002BC0AC(__int128 *a1, unsigned __int8 *a2, unsigned int a3, char a4)
{
  v5 = a2;
  v40 = 0;
  *ptr = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  LODWORD(v36) = dword_100B661F8;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  *(&v37 + 1) = i;
  if (a3 < 5 || (v8 = a3 - 1, ((a3 - 1) & 1) != 0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack Read Multiple Request");
      v16 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LODWORD(v34[0]) = 3585;
    v17 = 4;
  }

  else
  {
    v10 = a2 + 1;
    v9 = *a2;
    if ((v8 & 0x1FFFE) != 0)
    {
      v11 = 0;
      while (1)
      {
        v12 = *&v10[2 * v11];
        if (v12 >= word_100B66180)
        {
          break;
        }

        v13 = *(&xmmword_100B66170 + 1) + 16 * v12;
        if (*v13 != 2)
        {
          break;
        }

        v14 = sub_1002BDD34(a1, *(*(v13 + 8) + 26), 1);
        if (v14)
        {
          v26 = v14;
          if (sub_10000C240())
          {
            sub_10000AF54("Handle 0x%04x does not have read permissions!", v12);
            v27 = sub_10000C050(0x44u);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          LOBYTE(v34[0]) = 1;
          BYTE1(v34[0]) = v9;
          WORD1(v34[0]) = v12;
          BYTE4(v34[0]) = v26;
          return sub_1002B9C28(a1, v34, 5uLL, 0);
        }

        if (++v11 >= (v8 >> 1))
        {
          v15 = 0;
          v5 = a2;
          goto LABEL_21;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Handle 0x%04x is invalid!", v12);
        v25 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v17 = 1;
      LOBYTE(v34[0]) = 1;
      BYTE1(v34[0]) = v9;
      WORD1(v34[0]) = v12;
    }

    else
    {
      v15 = 14;
LABEL_21:
      v19 = sub_1001BBBD8(*(i + 8), 0x100004077774924uLL);
      ptr[1] = v19;
      if (v19)
      {
        v20 = v19;
        LOWORD(v39) = *(i + 8);
        WORD1(v39) = 1;
        *v19 = 15;
        if ((v8 & 0x1FFFE) != 0)
        {
          v21 = v5;
          v22 = 0;
          v23 = (v8 >> 1);
          while (1)
          {
            LOWORD(ptr[0]) = *&v10[2 * v22];
            v24 = sub_1002BD724(v9, LOWORD(ptr[0]), LOWORD(ptr[0]), 0, 0, &v36, a4);
            v15 = v24;
            if (v24)
            {
              break;
            }

            if (++v22 >= v23)
            {
              goto LABEL_40;
            }
          }

          if (v24 == 240)
          {
            *(&v36 + 1) = sub_1002BD95C;
            v28 = sub_100007618(a3, 0x100004077774924uLL);
            *(&v39 + 1) = v28;
            LOWORD(v40) = a3;
            if (v28)
            {
              memmove(v28, v21, a3);
              v34[2] = *ptr;
              v34[3] = v39;
              v35 = v40;
              v34[0] = v36;
              v34[1] = v37;
              sub_1002BD518(v34);
            }

            else
            {
              LOBYTE(v34[0]) = 1;
              BYTE1(v34[0]) = v9;
              WORD1(v34[0]) = ptr[0];
              BYTE4(v34[0]) = 17;
              v30 = sub_1002B9C28(a1, v34, 5uLL, 0);
              sub_10000C1E8(ptr[1]);
              result = 4540;
              if (!v30 || v30 == 412)
              {
                return result;
              }

              if (sub_10000C240())
              {
                sub_10000AF54("ATT Send status %!", v30);
                v31 = sub_10000C050(0x44u);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }
            }

            return 4540;
          }

LABEL_40:
          v20 = ptr[1];
          v5 = v21;
        }

        v29 = sub_1002BDC1C(*v5, &v36, v15);
        sub_10000C1E8(v20);
        if (v29)
        {
          return v29 + 4300;
        }

        else
        {
          return 0;
        }
      }

      LOBYTE(v34[0]) = 1;
      BYTE1(v34[0]) = v9;
      WORD1(v34[0]) = 0;
      v17 = 17;
    }
  }

  BYTE4(v34[0]) = v17;
  return sub_1002B9C28(a1, v34, 5uLL, 0);
}

uint64_t sub_1002BC4DC(__int128 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = *a2;
  for (i = *(&xmmword_100B66160 + 1); i; i = *(i + 24))
  {
    if (*i == a1)
    {
      break;
    }
  }

  v8 = dword_100B661F8;
  if (v6 == 82)
  {
    v11 = 0;
    v10 = "Write Command";
  }

  else
  {
    v9 = "Prepare Write Request";
    if (v6 == 18)
    {
      v9 = "Write Request";
    }

    if (v6 == 210)
    {
      v10 = "Signed Write Command";
    }

    else
    {
      v10 = v9;
    }

    v11 = v6 == 210;
    if (a3 <= 0xE && v6 == 210)
    {
      goto LABEL_31;
    }
  }

  v13 = a3 < 5 && v6 == 22;
  if (a3 < 3 || v13)
  {
LABEL_31:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not unpack %s", v10);
      v20 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if ((v6 | 4) != 0x16)
    {
      return 4021;
    }

    LODWORD(v59[0]) = 1;
    v19 = 4;
LABEL_38:
    BYTE4(v59[0]) = v19;
    return sub_1002B9C28(a1, v59, 5uLL, 0);
  }

  v14 = *(a2 + 1);
  if (v6 == 22)
  {
    v15 = 5;
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  v15 = 3;
  if (v11)
  {
LABEL_37:
    LOBYTE(v59[0]) = 1;
    BYTE1(v59[0]) = v6;
    WORD1(v59[0]) = v14;
    v19 = 6;
    goto LABEL_38;
  }

LABEL_24:
  if (!*(a2 + 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle (0x%04x) for %s", 0, v10);
      v22 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if ((v6 | 4) == 0x16)
    {
      v19 = 1;
      LOBYTE(v59[0]) = 1;
      BYTE1(v59[0]) = v6;
      WORD1(v59[0]) = 0;
      goto LABEL_38;
    }

    return 4021;
  }

  v58 = a3 - v15;
  if (v6 == 22)
  {
    v16 = *(a2 + 1);
    v17 = *(i + 8);
    if ((v17 - 5) < (a3 - v15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Prepare Write sent with ValueLength=%d which is larger than allowed (ATT_MTU-5=%d)", v58, *(i + 8) - 5);
        v18 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      LOWORD(v59[0]) = 5633;
      WORD1(v59[0]) = v16;
      v19 = 13;
      goto LABEL_38;
    }
  }

  else
  {
    if (v6 != 18)
    {
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v31 = 0;
      goto LABEL_60;
    }

    v16 = *(a2 + 1);
    v17 = *(i + 8);
  }

  v23 = sub_1001BBBD8(v17, 0x100004077774924uLL);
  if (!v23)
  {
    LOBYTE(v59[0]) = 1;
    BYTE1(v59[0]) = v6;
    WORD1(v59[0]) = v16;
    v19 = 17;
    goto LABEL_38;
  }

  v24 = v23;
  v25 = *(i + 8);
  if (*a2 == 18)
  {
    v26 = 19;
  }

  else
  {
    v26 = 23;
  }

  *v23 = v26;
  v8 = dword_100B661F8;
  v27 = 1;
  if (v6 == 22 && !xmmword_100B661E0)
  {
    v28 = v23;
    if (sub_10000C240())
    {
      sub_10000AF54("No callback provided to handle Prepare Writes!");
      v29 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v30 = 6;
    LOWORD(v14) = v16;
LABEL_83:
    LOBYTE(v59[0]) = 1;
    BYTE1(v59[0]) = v6;
    WORD1(v59[0]) = v14;
    BYTE4(v59[0]) = v30;
    v45 = sub_1002B9C28(a1, v59, 5uLL, 0);
    v24 = v28;
    goto LABEL_87;
  }

  v14 = v16;
  v31 = v16;
LABEL_60:
  if (v14 >= word_100B66180)
  {
    v40 = 1;
    goto LABEL_74;
  }

  v32 = v14;
  v33 = *(&xmmword_100B66170 + 1) + 16 * v14;
  if (*v33 != 2 || (v34 = *(v33 + 8)) == 0)
  {
    v40 = 1;
    goto LABEL_73;
  }

  v51 = v31;
  v52 = v27;
  v54 = v25;
  ptr = v24;
  if (*(&xmmword_100B661E0 + 1))
  {
    v35 = *(v33 + 8);
    v36 = sub_10004E15C((v34 + 4), &xmmword_1008A4A80);
    v34 = v35;
    if (!v36)
    {
      v37 = sub_10004E15C((v35 + 4), &xmmword_1008A4A94);
      v34 = v35;
      if (!v37)
      {
        v38 = sub_10004E15C((v35 + 4), &xmmword_1008A4AA8);
        v34 = v35;
        if (!v38)
        {
          (*(&xmmword_100B661E0 + 1))(v35, i);
          v34 = v35;
        }
      }
    }
  }

  v39 = v34;
  v40 = sub_1002BDD34(*i, *(v34 + 26), 0);
  LOWORD(v14) = v32;
  v24 = ptr;
  v27 = v52;
  v25 = v54;
  v31 = v51;
  if (!v40)
  {
    v41 = *(v39 + 40);
    if (v41)
    {
      v40 = v41(v39);
      v31 = v51;
      v27 = v52;
      v25 = v54;
      v24 = ptr;
LABEL_73:
      LOWORD(v14) = v32;
      goto LABEL_74;
    }

    v40 = 3;
  }

LABEL_74:
  if ((v6 | 4) == 0x16)
  {
    if (v40 != 240)
    {
      v30 = v40;
      if (!v40)
      {
        v42 = v14;
        v43 = v24;
        v30 = sub_1002B9C28(a1, v24, v27, 0);
        if (v30)
        {
          LOBYTE(v59[0]) = 1;
          BYTE1(v59[0]) = v6;
          WORD1(v59[0]) = v42;
          BYTE4(v59[0]) = 17;
          v44 = sub_1002B9C28(a1, v59, 5uLL, 0);
          v45 = 0;
          v30 = v44;
        }

        else
        {
          v45 = 0;
        }

        v24 = v43;
        goto LABEL_87;
      }

      v28 = v24;
      goto LABEL_83;
    }

    v46 = v31;
    v53 = v27;
    v55 = v25;
    ptra = v24;
    v47 = v14;
    v48 = sub_100007618(a3, 0x100004077774924uLL);
    if (v48)
    {
      v49 = v48;
      memmove(v48, a2, a3);
      v59[0] = v8;
      v59[1] = sub_1002BE04C;
      v59[2] = 0;
      v59[3] = i;
      v60 = v46;
      v61 = 0;
      v62 = 0;
      v63 = ptra;
      v64 = v55;
      v65 = v53;
      v66 = 0;
      v67 = v49;
      v68 = a3;
      v69 = 0;
      v70 = 0;
      sub_1002BD518(v59);
      return 4540;
    }

    LOBYTE(v59[0]) = 1;
    BYTE1(v59[0]) = v6;
    WORD1(v59[0]) = v47;
    BYTE4(v59[0]) = 17;
    v45 = sub_1002B9C28(a1, v59, 5uLL, 0);
    v30 = 240;
    v24 = ptra;
  }

  else
  {
    v45 = 0;
    v30 = v40;
  }

LABEL_87:
  if (v24)
  {
    sub_10000C1E8(v24);
  }

  if (v45)
  {
    if (v45 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v45);
        v50 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }
  }

  if (v30)
  {
    return (v30 + 4300);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BCBBC(__int128 *a1, char *a2, int a3, uint64_t a4)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  LODWORD(v21) = dword_100B661F8;
  v6 = *(&xmmword_100B66160 + 1);
  if (*(&xmmword_100B66160 + 1))
  {
    do
    {
      if (*v6 == a1)
      {
        break;
      }

      v6 = v6[3];
    }

    while (v6);
  }

  *(&v22 + 1) = v6;
  if (a3 != 2)
  {
    LODWORD(v20[0]) = 6145;
    BYTE4(v20[0]) = 4;
    return sub_1002B9C28(a1, v20, 5uLL, 0);
  }

  if (xmmword_100B661E0)
  {
    xmmword_100B661E0(dword_100B661F8, v6, a2[1] != 0, sub_1002BE31C, a4);
    v20[0] = 0;
    if (*(&xmmword_100B66190 + 1))
    {
      sub_1000D660C();
    }

    v7 = sub_100007618(0x48uLL, 0x10B0040592477A1uLL);
    *(&xmmword_100B66190 + 1) = v7;
    if (!v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to backup Execute Write Request");
        v19 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 17;
    }

    *v7 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v7[8] = v25;
    *(v7 + 2) = v9;
    *(v7 + 3) = v10;
    *(v7 + 1) = v8;
    v20[1] = &v21;
    LOWORD(v20[0]) = 4;
    v11 = sub_10002195C(sub_1002BE298, v20, 100, (*(&xmmword_100B66190 + 1) + 16));
    v12 = v11;
    if (v11)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to create dispatch timer for execute write with result %!", v12);
        v13 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_10000C1E8(*(&xmmword_100B66190 + 1));
      *(&xmmword_100B66190 + 1) = 0;
      return 17;
    }

    result = 0;
    ++dword_100B661F8;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No callback provided to handle Execute Writes");
      v15 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v16 = *a2;
    LOBYTE(v20[0]) = 1;
    BYTE1(v20[0]) = v16;
    WORD1(v20[0]) = 0;
    BYTE4(v20[0]) = 6;
    v17 = sub_1002B9C28(a1, v20, 5uLL, 0);
    result = 4306;
    if (v17 && v17 != 412)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ATT Send status %!", v17);
        v18 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4306;
    }
  }

  return result;
}

uint64_t sub_1002BCE9C(unsigned __int16 *a1, int a2)
{
  if (sub_1000ABD24(a1) || sub_1000B8B5C(a1))
  {
    v4 = 0;
  }

  else
  {
    if (sub_10000C240() && (sub_10000AF54("Invalid Handle, allow %d", a2), v8 = sub_10000C050(0x44u), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (!a2)
      {
        return 0;
      }
    }

    else if (!a2)
    {
      return 0;
    }

    v4 = 1;
  }

  v5 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    result = qword_100B66188;
    if (qword_100B66188)
    {
      while (1)
      {
        v7 = *(result + 24);
        if (!v7)
        {
          break;
        }

        if (*v7 == a1)
        {
          return result;
        }

        result += 72;
        if (!--v5)
        {
          return 0;
        }
      }

      v11 = sub_10000C240();
      if (v4)
      {
        if (!v11)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle session is NULL, lmHandle invalid");
        v12 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        if (!v11)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle session is NULL lmHandle=%d", *a1);
        v14 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }
    }

    else
    {
      v9 = sub_10000C240();
      if (v4)
      {
        if (!v9)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle response is NULL, lmHandle invalid");
        v10 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        if (!v9)
        {
          return 0;
        }

        sub_10000AF54("findResponseByHCIHandle response is NULL lmHandle=%d", *a1);
        v13 = sub_10000C050(0x44u);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }
    }

    sub_1000E09C0();
  }

  return 0;
}

uint64_t sub_1002BD07C(uint64_t a1, unsigned int *a2, char a3)
{
  __n_2[1] = 0;
  v31 = 0;
  __n_2[0] = 2;
  WORD2(__n_2[0]) = *(a1 + 5);
  v4 = *(a1 + 1);
  if (*(a1 + 1))
  {
    v6 = v4 > *(a1 + 3) || v4 >= word_100B66180;
    if (!v6)
    {
      v8 = 16 * v4;
      do
      {
        if (*(*(&xmmword_100B66170 + 1) + v8) == 2)
        {
          if (*(a2 + 24) - *(a2 + 25) < 4)
          {
            return 0;
          }

          v9 = *(*(&xmmword_100B66170 + 1) + v8 + 8);
          if (sub_10004E15C(v9 + 4, __n_2))
          {
            *(a2 + 16) = v4;
            if (!*(a1 + 7))
            {
              goto LABEL_17;
            }

            v10 = sub_100007618(0x200uLL, 0x89DF7909uLL);
            __n = 0;
            if (!v10)
            {
              return 17;
            }

            v11 = v10;
            LOBYTE(v28) = a3;
            v12 = (*(v9 + 4))(v9, 0, v10, 512, &__n, *a2, *(a2 + 3), sub_1002BD2BC, v28);
            if (v12)
            {
              v26 = v12;
              sub_10000C1E8(v11);
              return v26;
            }

            if (__n == *(a1 + 15) && !memcmp(v11, *(a1 + 7), __n))
            {
              sub_10000C1E8(v11);
LABEL_17:
              v13 = *v9;
              v14 = *(a2 + 5);
              v15 = *(a2 + 25);
              *(a2 + 25) = v15 + 1;
              *(v14 + v15) = v13;
              v16 = v9[1];
              v17 = *(a2 + 5);
              v18 = *(a2 + 25);
              *(a2 + 25) = v18 + 1;
              *(v17 + v18) = v16;
              v19 = v9[24];
              v20 = *(a2 + 5);
              v21 = *(a2 + 25);
              *(a2 + 25) = v21 + 1;
              *(v20 + v21) = v19;
              v22 = v9[25];
              v23 = *(a2 + 5);
              v24 = *(a2 + 25);
              *(a2 + 25) = v24 + 1;
              *(v23 + v24) = v22;
              goto LABEL_18;
            }

            sub_10000C1E8(v11);
          }
        }

LABEL_18:
        v6 = v4++ >= *(a1 + 3);
        v8 += 16;
      }

      while (!v6 && v4 < word_100B66180);
    }
  }

  if (*(a2 + 25) == 1)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

void sub_1002BD2BC(int a1, int a2, void *__s1, size_t __n)
{
  v4 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    v5 = __n;
    for (i = qword_100B66188; *i != a1; i += 72)
    {
      if (!--v4)
      {
        return;
      }
    }

    v9 = *(i + 56);
    if (!v9 || (v10 = *(i + 64), v10 <= 7))
    {
      sub_1000D660C();
      v9 = *(i + 56);
      LOWORD(v10) = *(i + 64);
    }

    *v28 = *v9;
    *&v28[3] = *(v9 + 3);
    v29 = v9 + 7;
    v30 = v10 - 7;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to read value at attribute handle 0x%04x with result %d", *(i + 32), a2);
        v11 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v12 = **(i + 24);
      v31 = 1;
      v32 = v28[0];
      v33 = *&v28[1];
      v34 = a2;
      goto LABEL_14;
    }

    if (v5 == (v10 - 7) && !memcmp(__s1, v9 + 7, v5))
    {
      v13 = *(*(&xmmword_100B66170 + 1) + 16 * *(i + 32) + 8);
      v14 = *v13;
      v15 = *(i + 40);
      v16 = *(i + 50);
      *(i + 50) = v16 + 1;
      *(v15 + v16) = v14;
      v17 = v13[1];
      v18 = *(i + 40);
      v19 = *(i + 50);
      *(i + 50) = v19 + 1;
      *(v18 + v19) = v17;
      v20 = v13[24];
      v21 = *(i + 40);
      v22 = *(i + 50);
      *(i + 50) = v22 + 1;
      *(v21 + v22) = v20;
      LOBYTE(v13) = v13[25];
      v23 = *(i + 40);
      v24 = *(i + 50);
      *(i + 50) = v24 + 1;
      *(v23 + v24) = v13;
    }

    v25 = *(i + 32) + 1;
    *&v28[1] = v25;
    v26 = sub_1002BD07C(v28, i, 0);
    if (v26 != 240)
    {
      if (v26)
      {
        v27 = **(i + 24);
        v31 = 1;
        v32 = v28[0];
        v33 = v25;
        v34 = v26;
        v12 = v27;
      }

      else
      {
        if (!sub_1002B9C28(**(i + 24), *(i + 40), *(i + 50), 0))
        {
          goto LABEL_15;
        }

        v12 = **(i + 24);
        v31 = 1;
        v32 = v28[0];
        v33 = v25;
        v34 = 17;
      }

LABEL_14:
      sub_1002B9C28(v12, &v31, 5uLL, 0);
LABEL_15:
      sub_1002BA3E8(i);
    }
  }
}

void sub_1002BD518(void *a1)
{
  v2 = sub_1001BBBD8(72 * xmmword_100B66190 + 72, 0x10B0040592477A1uLL);
  if (v2)
  {
    v3 = v2;
    v11[0] = 0;
    v4 = &v2[72 * xmmword_100B66190];
    *v4 = *a1;
    v5 = a1[8];
    v7 = *(a1 + 2);
    v6 = *(a1 + 3);
    *(v4 + 1) = *(a1 + 1);
    *(v4 + 2) = v7;
    *(v4 + 3) = v6;
    *(v4 + 8) = v5;
    v11[1] = a1;
    LOWORD(v11[0]) = 4;
    v8 = sub_10002195C(sub_1002BD684, v11, 100, &v2[72 * xmmword_100B66190 + 16]);
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to create dispatch timer for async response with result %!", v9);
        v10 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_10000C1E8(v3);
    }

    else
    {
      if (qword_100B66188)
      {
        memmove(v3, qword_100B66188, 72 * xmmword_100B66190);
        sub_10000C1E8(qword_100B66188);
      }

      qword_100B66188 = v3;
      LOWORD(xmmword_100B66190) = xmmword_100B66190 + 1;
      ++dword_100B661F8;
    }
  }
}

uint64_t sub_1002BD684(uint64_t result)
{
  v1 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    result = **(result + 8);
    for (i = qword_100B66188; *i != result; i += 18)
    {
      if (!--v1)
      {
        return result;
      }
    }

    i[4] = 0;
    v3 = *(&xmmword_100B661C0 + 1);
    if (!*(&xmmword_100B661C0 + 1))
    {
      sub_1000D660C();
      v3 = *(&xmmword_100B661C0 + 1);
      result = *i;
    }

    v3(result);
    v4 = *(i + 1);
    v5 = *i;

    return v4(v5, 241, 0, 0);
  }

  return result;
}

uint64_t sub_1002BD724(int a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, unsigned int *a6, char a7)
{
  v9 = &dword_100B653A0[792];
  if (a1 == 8 || a1 == 16 || (v10 = 1, a2) && word_100B66180 > a2 && *(*(&xmmword_100B66170 + 1) + 16 * a2) == 2)
  {
    v10 = 0;
    if (a2 - 1 < a3 && word_100B66180 > a2)
    {
      v11 = 16 * a2;
      v12 = a2;
      v13 = a3;
      while (1)
      {
        *(a6 + 16) = v12;
        if (*(*(&xmmword_100B66170 + 1) + v11) == 2)
        {
          v14 = *(*(&xmmword_100B66170 + 1) + v11 + 8);
          v25 = 0;
          if (!a4 || sub_10004E15C((v14 + 4), a4))
          {
            if (*(&xmmword_100B661E0 + 1) && !sub_10004E15C((v14 + 4), &xmmword_1008A4A80) && !sub_10004E15C((v14 + 4), &xmmword_1008A4A94) && !sub_10004E15C((v14 + 4), &xmmword_1008A4AA8))
            {
              (*(&xmmword_100B661E0 + 1))(v14, *(a6 + 3));
            }

            v15 = sub_1002BDD34(**(a6 + 3), *(v14 + 26), 1);
            if (v15)
            {
              return v15;
            }

            v16 = v9;
            v17 = sub_100007618(0x200uLL, 0x4D14EDFFuLL);
            if (!v17)
            {
              return 17;
            }

            v18 = v17;
            LOBYTE(v21) = a7;
            v19 = (*(v14 + 32))(v14, a5, v17, 512, &v25, *a6, *(a6 + 3), sub_1002BD95C, v21);
            if (v19 || (v19 = sub_1002BDE98(a1, v14, v18, v25, a6), v19))
            {
              v10 = v19;
              sub_10000C1E8(v18);
              return v10;
            }

            sub_10000C1E8(v18);
            v9 = v16;
          }
        }

        v10 = 0;
        if (v12 < v13)
        {
          ++v12;
          v11 += 16;
          if (v12 < *(v9 + 192))
          {
            continue;
          }
        }

        return v10;
      }
    }
  }

  return v10;
}

void sub_1002BD95C(int a1, int a2, void *a3, int a4)
{
  v4 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    for (i = qword_100B66188; *i != a1; i += 72)
    {
      if (!--v4)
      {
        return;
      }
    }

    v7 = **(i + 56);
    v8 = *(i + 32);
    if (v8 >= word_100B66180 || (v9 = *(*(&xmmword_100B66170 + 1) + 16 * v8 + 8)) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Attribute handle 0x%04x is no longer available for transaction ID %d", *(i + 32), a1);
        v10 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      LOBYTE(a2) = 14;
      goto LABEL_18;
    }

    if (a2 || (LOBYTE(a2) = sub_1002BDE98(**(i + 56), v9, a3, a4, i), a2))
    {
LABEL_18:
      sub_1002BDC1C(v7, i, a2);
      sub_1002BA3E8(i);
      return;
    }

    LOBYTE(a2) = 0;
    if (v7 > 11)
    {
      if (v7 == 12)
      {
        goto LABEL_18;
      }

      if (v7 != 16)
      {
LABEL_28:
        v14 = *(i + 56);
        if (!v14 || (v15 = *(i + 64), v15 <= 1))
        {
          sub_1000D660C();
          v15 = *(i + 64);
          v14 = *(i + 56);
        }

        v16 = (v15 - 1) / 2;
        v17 = v14 + 1;
        if (v15 >= 3)
        {
          v19 = 0;
          do
          {
            if (*(v17 + 2 * v19) == *(i + 32))
            {
              break;
            }

            ++v19;
          }

          while (v19 < v16);
          v18 = v19 + 1;
        }

        else
        {
          v18 = 1;
        }

        if (v16 <= v18)
        {
          LOBYTE(a2) = 0;
          goto LABEL_18;
        }

        while (1)
        {
          v20 = *(v17 + 2 * v18);
          *(i + 32) = v20;
          a2 = sub_1002BD724(v7, v20, v20, 0, 0, i, 0);
          if (a2)
          {
            goto LABEL_26;
          }

          if (v16 <= ++v18)
          {
            goto LABEL_18;
          }
        }
      }
    }

    else if (v7 != 8)
    {
      if (v7 == 10)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    v11 = *(i + 56);
    if (!v11 || (v12 = *(i + 64), v12 <= 5))
    {
      sub_1000D660C();
      v11 = *(i + 56);
      LOBYTE(v12) = *(i + 64);
    }

    v23 = 0uLL;
    v24 = 0;
    v13 = *(v11 + 3);
    sub_10006A0FC((v11 + 5), (v12 - 5), 1, &v23);
    v21 = v23;
    v22 = v24;
    a2 = sub_1002BD724(v7, (*(i + 32) + 1), v13, &v21, 0, i, 0);
LABEL_26:
    if (a2 == 240)
    {
      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_1002BDC1C(int a1, uint64_t a2, int a3)
{
  v4 = a1;
  if ((a1 == 16 || a1 == 8) && a3 == 0)
  {
    if (*(a2 + 50) == 1)
    {
      a3 = 10;
    }

    else
    {
      a3 = 0;
    }
  }

  v7 = *(a2 + 24);
  v8 = &xmmword_100B66160 + 1;
  do
  {
    v9 = *v8;
    v8 = (*v8 + 3);
  }

  while (v9 != v7 && v9 != 0);
  if (v9)
  {
    if (a3 && a3 != 243 && (a1 != 16 && a1 != 8 || *(a2 + 50) < 2u))
    {
      v15 = *(a2 + 32);
      v13 = *v7;
      v19[0] = 1;
      v19[1] = v4;
      v20 = v15;
      v21 = a3;
      v14 = v19;
      goto LABEL_28;
    }

    LOBYTE(result) = sub_1002B9C28(*v7, *(a2 + 40), *(a2 + 50), 0);
    if (result)
    {
      v12 = *(a2 + 32);
      v13 = **(a2 + 24);
      v16[0] = 1;
      v16[1] = v4;
      v17 = v12;
      v18 = 17;
      v14 = v16;
LABEL_28:
      LOBYTE(result) = sub_1002B9C28(v13, v14, 5uLL, 0);
    }
  }

  else
  {
    LOBYTE(result) = 6;
  }

  return result;
}

uint64_t sub_1002BDD34(uint64_t a1, int a2, int a3)
{
  v3 = a2;
  v10 = 0;
  if (a2 & 0x15) == 0 && (a3)
  {
    return 2;
  }

  if ((a2 & 0x2A) == 0 && !a3)
  {
    return 3;
  }

  if (a3)
  {
    v6 = 20;
  }

  else
  {
    v6 = 40;
  }

  if ((v6 & a2) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    goto LABEL_33;
  }

  if (*(a1 + 2) == 4)
  {
    v7 = sub_1002DC0C8(a1);
    v8 = sub_1000CB318(a1);
    v10 = sub_1002DBFE8(a1);
    goto LABEL_20;
  }

  if (*(a1 + 2))
  {
LABEL_33:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid physical link at permission check");
      v9 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = sub_1002FCF64(a1, &v10);
    v8 = sub_1002FCEB8(a1);
  }

LABEL_20:
  if ((v3 & 0x3C) != 0 && (v8 & 1) == 0 && !v7)
  {
    return 5;
  }

  if (v8)
  {
    if ((v3 & 0xC) != 0 && (v10 & 1) == 0)
    {
      return 5;
    }
  }

  else if ((v3 & 0x3C) != 0)
  {
    return 15;
  }

  return 0;
}

uint64_t sub_1002BDE98(int a1, char *a2, void *__src, int a4, uint64_t a5)
{
  if (a1 <= 11)
  {
    if (a1 == 8)
    {
      v6 = 2;
      v7 = 253;
      v8 = -4;
      goto LABEL_9;
    }

LABEL_5:
    if (*(a5 + 48) - *(a5 + 50) >= a4)
    {
      LOWORD(v9) = a4;
    }

    else
    {
      LOWORD(v9) = *(a5 + 48) - *(a5 + 50);
    }

    goto LABEL_23;
  }

  if (a1 != 16)
  {
    goto LABEL_5;
  }

  v6 = 4;
  v7 = 251;
  v8 = -6;
LABEL_9:
  v10 = *(a5 + 48);
  v11 = v10 + v8;
  if (v10 < 0x101)
  {
    v7 = v11;
  }

  if (a4 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a4;
  }

  v12 = *(a5 + 50);
  v13 = v6 + v9;
  if (*(a5 + 48) - v12 < v6 + v9)
  {
    return -13;
  }

  v15 = *(a5 + 40);
  if (v12 >= 2 && *(v15 + 1))
  {
    if (v13 != *(v15 + 1))
    {
      return 13;
    }
  }

  else
  {
    *(a5 + 50) = v12 + 1;
    *(v15 + v12) = v13;
    v15 = *(a5 + 40);
    LODWORD(v12) = *(a5 + 50);
  }

  v16 = *a2;
  *(a5 + 50) = v12 + 1;
  *(v15 + v12) = v16;
  v17 = a2[1];
  v18 = *(a5 + 40);
  v19 = *(a5 + 50);
  *(a5 + 50) = v19 + 1;
  *(v18 + v19) = v17;
  if (a1 == 16)
  {
    v20 = a2[24];
    v21 = *(a5 + 40);
    v22 = *(a5 + 50);
    *(a5 + 50) = v22 + 1;
    *(v21 + v22) = v20;
    v23 = a2[25];
    v24 = *(a5 + 40);
    v25 = *(a5 + 50);
    *(a5 + 50) = v25 + 1;
    *(v24 + v25) = v23;
  }

LABEL_23:
  memmove((*(a5 + 40) + *(a5 + 50)), __src, v9);
  v26 = *(a5 + 50) + v9;
  *(a5 + 50) = v26;
  if (*(a5 + 48) == v26)
  {
    return -13;
  }

  else
  {
    return 0;
  }
}

void sub_1002BE04C(int a1, int a2)
{
  v2 = xmmword_100B66190;
  if (xmmword_100B66190)
  {
    for (i = qword_100B66188; *i != a1; i += 72)
    {
      if (!--v2)
      {
        return;
      }
    }

    v5 = *(i + 56);
    v6 = *v5;
    v7 = &xmmword_100B66160 + 1;
    do
    {
      v8 = *v7;
      v7 = (*v7 + 24);
    }

    while (v8 != *(i + 24) && v8 != 0);
    if (!v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid session detected in buildWriteResponseAsync()");
        v13 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_29;
    }

    if (v6 == 22)
    {
      v10 = *(i + 64) - 1;
      v11 = *(i + 50);
      if (v10 > *(i + 48) - v11)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Write rejected: response->responseBuffer buffer space (%d) is too small for response->context (%d).", *(*(i + 24) + 8) - *(i + 50), *(i + 64) - 1);
          v12 = sub_10000C050(0x44u);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        a2 = 245;
        goto LABEL_24;
      }

      memmove((*(i + 40) + v11), v5 + 1, v10);
      *(i + 50) = *(i + 64) + *(i + 50) - 1;
    }

    if (!a2)
    {
      if (!sub_1002B9C28(**(i + 24), *(i + 40), *(i + 50), 0))
      {
        goto LABEL_29;
      }

      v18 = *(i + 32);
      v16 = **(i + 24);
      v19[0] = 1;
      v19[1] = v6;
      v20 = v18;
      v21 = 17;
      v17 = v19;
LABEL_28:
      sub_1002B9C28(v16, v17, 5uLL, 0);
LABEL_29:
      sub_1002BA3E8(i);
      return;
    }

LABEL_24:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to write value to attribute handle 0x%04x with result %d", *(i + 32), a2);
      v14 = sub_10000C050(0x44u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v15 = *(i + 32);
    v16 = **(i + 24);
    v22[0] = 1;
    v22[1] = v6;
    v23 = v15;
    v24 = a2;
    v17 = v22;
    goto LABEL_28;
  }
}

void sub_1002BE298(uint64_t result)
{
  v1 = *(&xmmword_100B66190 + 1);
  if (*(&xmmword_100B66190 + 1))
  {
    v2 = **(result + 8);
    if (**(&xmmword_100B66190 + 1) == v2)
    {
      *(*(&xmmword_100B66190 + 1) + 16) = 0;
      v3 = *(&xmmword_100B661C0 + 1);
      if (!*(&xmmword_100B661C0 + 1))
      {
        sub_1000D660C();
        v3 = *(&xmmword_100B661C0 + 1);
        v2 = *v1;
      }

      v3(v2);
      v4 = *v1;

      sub_1002BE31C(v4, 241, 0);
    }
  }
}

void sub_1002BE31C(int a1, int a2, uint64_t a3)
{
  v3 = *(&xmmword_100B66190 + 1);
  if (*(&xmmword_100B66190 + 1) && **(&xmmword_100B66190 + 1) == a1)
  {
    if (a2)
    {
      if (word_100B66180)
      {
        v5 = 0;
        v6 = (*(&xmmword_100B66170 + 1) + 8);
        while (*(v6 - 8) != 2 || *v6 != a3)
        {
          ++v5;
          v6 += 2;
          if (word_100B66180 == v5)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        LOWORD(v5) = 0;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Execute write failed at attribute handle 0x%04x with result %d", *(v3 + 32), a2);
        v7 = sub_10000C050(0x44u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v8 = **(v3 + 24);
      v13[0] = 6145;
      v13[1] = v5;
      v14 = a2;
      v9 = v13;
    }

    else
    {
      v10 = 25;
      if (!sub_1002B9C28(**(*(&xmmword_100B66190 + 1) + 24), &v10, 1uLL, 0))
      {
LABEL_17:
        sub_10000C1E8(*(&xmmword_100B66190 + 1));
        *(&xmmword_100B66190 + 1) = 0;
        sub_1002B9FDC(0, 1);
        return;
      }

      v8 = **(v3 + 24);
      v11 = 6145;
      v12 = 17;
      v9 = &v11;
    }

    sub_1002B9C28(v8, v9, 5uLL, 0);
    goto LABEL_17;
  }
}

const char *sub_1002BE488(unsigned int a1)
{
  if (a1 > 7)
  {
    return "unknown";
  }

  else
  {
    return off_100AE9CF8[a1];
  }
}

void sub_1002BE4AC()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Resetting LE_Connection state");
    v0 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = 136446210;
      v2 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, " %{public}s", &v1, 0xCu);
    }
  }

  byte_100B66200 = 0;
  byte_100B66224 = 0;
  byte_100B66201 = 0;
  byte_100B66228 = 0;
  qword_100B66214 = 0;
  *&word_100B6621C = 0;
  qword_100B6620C = 0;
}

void sub_1002BE598()
{
  byte_100B66200 = 0;
  byte_100B66224 = 0;
  byte_100B66201 = 0;
  byte_100B66228 = 0;
  qword_100B66214 = 0;
  *&word_100B6621C = 0;
  qword_100B6620C = 0;
}

void sub_1002BE5CC(uint64_t a1)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 236) < 255)
    {
      atomic_fetch_add_explicit((a1 + 236), 1u, memory_order_relaxed);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Reached max connection retain count. Not incrementing ref count");
        v2 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      if (*(a1 + 148) <= 254)
      {
        sub_1000D660C();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This command is only available to LE devices.");
    v3 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002BE6B0(uint64_t a1)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  if (sub_1000ABD24(a1))
  {
    v2 = *(a1 + 236);
    if (v2 < 255)
    {
      if (v2 <= 0)
      {
        sub_1000D660C();
      }

      atomic_fetch_add_explicit((a1 + 236), 0xFFFFFFFF, memory_order_relaxed);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Reached max connection retain count. Not decrementing ref count");
        v3 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      if (*(a1 + 148) <= 254)
      {
        sub_1000D660C();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("LE connection is invalid, can't decrement");
    v4 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002BE7A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, _WORD *a5, int *a6, _WORD *a7, uint64_t a8, char a9)
{
  if (byte_100B66200 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending attempt already in progress.");
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1309;
  }

  if (byte_100B66201 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending cancel connection already in progress.");
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1319;
  }

  if (a9 & a8) == 0xFF || (byte_100B66202)
  {
    if (sub_1000E5EA8(a1))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Already connected to this address.");
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 133;
    }

    if ((a8 - 240) <= 0xE)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid advertising handle %x", a8);
      v21 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if (a9 <= -2)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid subevent %x", a9);
      v23 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if ((a2 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan interval %d", a2);
      v24 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if ((a3 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan window %d", a3);
      v25 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if (a5 >= 0x1F5)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid connection latency %d", a5);
      v26 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    v27 = (a4 / 1.25);
    if ((v27 - 3201) <= 0xF384u)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid connection interval %dms", a4);
      v28 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if (v27 - 8 <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = (v27 - 8);
    }

    LODWORD(v30) = (3 * a5 + 3) * v27;
    if (v30 >= 0x259)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Connection latency (%d) and connection interval (%d ms) are in a range taht will cause issues", a5, a4 + 10);
      v31 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_56;
    }

    if ((a7 - 8) <= 0xFFFFFFF8)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid initPHYs %x", a7);
      v32 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

LABEL_56:
      sub_1000E09C0();
      return 101;
    }

    v59 = v29;
    v34 = v27 * 1.25;
    if (v30 <= (104858 * ((5 * v34) & 0x7FFFu)) >> 19)
    {
      LOWORD(v30) = ((104858 * ((5 * v34) & 0x7FFFu)) >> 16) >> 3;
    }

    if (v30 >= 0x258u)
    {
      v30 = 600;
    }

    else
    {
      v30 = v30;
    }

    v60 = v30;
    sub_1000841FC(&dword_100B66203);
    if (sub_10000C240())
    {
      v42 = dword_100B66203 ? "Random" : "Public";
      sub_10000AF54("Connecting with interval:%dms-%dms, latency=%d, timeout=%dms, initPHYs=%x connectingAddress=%s:%:, advHandle=%x subevent=%x", (v59 * 1.25), v34, a5, 2 * ((5 * v60) & 0x7FFF), a7, v42, &dword_100B66203 + 1, a8, a9);
      log = sub_10000C050(0x42u);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v69 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *buf = a2;
    *&buf[2] = a2;
    LOWORD(v69) = a2;
    v67[0] = a3;
    v67[1] = a3;
    v67[2] = a3;
    v66[0] = v59;
    v66[1] = v59;
    v66[2] = v59;
    v65[0] = (a4 / 1.25);
    v65[1] = v65[0];
    v65[2] = v65[0];
    v64[0] = a5;
    v64[1] = a5;
    v64[2] = a5;
    v63[0] = v60;
    v63[1] = v60;
    v63[2] = v60;
    v62 = 2;
    v61 = 131074;
    if (byte_100B66202 == 1)
    {
      v56 = v65;
      v57 = v64;
      v54 = v67;
      v55 = v66;
      v52 = a7;
      v53 = buf;
      v50 = *a1;
      v51 = a1 + 1;
      v48 = 0;
      v49 = dword_100B66203;
      v47 = a9;
      v43 = sub_1000D6178(0x101u, v35, v36, v37, v38, v39, v40, v41, a8);
    }

    else if (byte_100B6620A == 1)
    {
      v56 = v63;
      v57 = &v61;
      v54 = v65;
      v55 = v64;
      v52 = v67;
      v53 = v66;
      v50 = a7;
      v51 = buf;
      v48 = *a1;
      v49 = (a1 + 1);
      v47 = dword_100B66203;
      v43 = sub_1000D6178(0xD9u, v35, v36, v37, v38, v39, v40, v41, 0);
    }

    else
    {
      v56 = 2;
      v57 = a6;
      v54 = a5;
      v55 = v60;
      v52 = v59;
      v53 = (a4 / 1.25);
      v50 = a1 + 1;
      v51 = dword_100B66203;
      v48 = 0;
      v49 = *a1;
      v47 = a3;
      v43 = sub_1000D6178(0xADu, v35, v36, v37, v38, v39, v40, v41, a2);
    }

    v10 = v43;
    if (v43)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not connect to device %!", v10, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        v44 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else
    {
      byte_100B66200 = 1;
      LOBYTE(qword_100B6620C) = 1;
      v45 = *(a1 + 2);
      v46 = a1[6];
      *(&qword_100B6620C + 3) = *a1;
      BYTE1(qword_100B66214) = v46;
      *(&qword_100B6620C + 7) = v45;
      WORD1(qword_100B66214) = a2;
      WORD2(qword_100B66214) = a3;
      HIWORD(qword_100B66214) = a4;
      word_100B6621C = a5;
      word_100B6621E = v60;
      word_100B66220 = a6;
      byte_100B66222 = a7;
      BYTE1(qword_100B6620C) = a8;
      BYTE2(qword_100B6620C) = a9;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, V2 command not supported.");
      v22 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 152;
  }

  return v10;
}

uint64_t sub_1002BEFAC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, int *a6, int *a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  v78 = 0;
  v77 = 0;
  if (byte_100B66200 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending attempt already in progress.");
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1309;
  }

  if (byte_100B66201 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, pending cancel connection already in progress.");
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1319;
  }

  if ((a10 & a9) != 0xFF && (byte_100B66202 & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot connect to device, V2 command not supported.");
      v24 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 152;
  }

  v76 = 0;
  v19 = sub_1002E996C(&v76);
  if (!v76)
  {
LABEL_17:
    if (a9 - 240 <= 0xE)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid advertising handle %x", a9);
      v22 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if (a10 <= -2)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid subevent %x", a10);
      v23 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if ((a1 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan interval %d", a1);
      v26 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if ((a2 - 16385) <= 0xFFFFC002)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid scan window %d", a2);
      v27 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if (a5 >= 0x1F5)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid connection latency %d", a5);
      v28 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_72;
    }

    if (a4 <= (a3 - 1))
    {
      if (!a3 || a4 != a3 && a4)
      {
        if (!sub_10000C240())
        {
          return 101;
        }

        sub_10000AF54("Invalid min/max connection interval %d/%d", a3, a4);
        v32 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          return 101;
        }

        goto LABEL_72;
      }

      v33 = a3 / 1.25;
      v34 = v33;
      if ((v33 - 6) >= 0xC7B)
      {
        if (!sub_10000C240())
        {
          return 101;
        }

        sub_10000AF54("Invalid connection interval %dms", a3);
        v35 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          return 101;
        }

        goto LABEL_72;
      }

      if (v34 < 0xC78)
      {
        if (v34 > 0xE)
        {
          LOWORD(a4) = v34 + 8;
          v29 = a3;
          LOWORD(v34) = v34 - 8;
        }

        else
        {
          LOWORD(a4) = v34 | 0x10;
          v29 = a3;
        }

        LOWORD(a3) = v34;
      }

      else
      {
        v29 = a3;
        a4 = v33;
        LOWORD(a3) = v34 - 16;
      }
    }

    else
    {
      v29 = (a4 + a3) >> 1;
      if (sub_10000C240())
      {
        sub_10000AF54("overriding min/max connection intervals to %d-%dms (%dms)", a3, a4, v29);
        v30 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = sub_10000C0FC();
          *buf = 136446210;
          v80 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    v36 = (3 * a5 + 3) * a4;
    if (v36 < 0x259)
    {
      if ((a7 - 8) > 0xFFFFFFF8)
      {
        v66 = a4;
        v67 = v29;
        if (v36 <= (104858 * ((5 * (v29 * 1.25)) & 0x7FFFu)) >> 19)
        {
          LOWORD(v36) = ((104858 * ((5 * (v29 * 1.25)) & 0x7FFFu)) >> 16) >> 3;
        }

        if (v36 >= 0x258u)
        {
          v40 = 600;
        }

        else
        {
          v40 = v36;
        }

        sub_1000841FC(&dword_100B66203);
        if (sub_10000C240())
        {
          v48 = dword_100B66203 ? "Random" : "Public";
          sub_10000AF54("Connecting with interval:%dms-%dms, latency=%d, timeout=%dms, initPHYs=%x connectingAddress=%s:%:, advHandle=%x subevent=%x", (a3 * 1.25), (a4 * 1.25), a5, 2 * ((5 * v40) & 0x7FFF), a7, v48, &dword_100B66203 + 1, a9, a10);
          v49 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = sub_10000C0FC();
            *buf = 136446210;
            v80 = v50;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *buf = a1;
        *&buf[2] = a1;
        LOWORD(v80) = a1;
        v75[0] = a2;
        v75[1] = a2;
        v75[2] = a2;
        v74[0] = a3;
        v74[1] = a3;
        v74[2] = a3;
        v73[0] = a4;
        v73[1] = a4;
        v73[2] = a4;
        v72[0] = a5;
        v72[1] = a5;
        v72[2] = a5;
        v71[0] = v40;
        v71[1] = v40;
        v71[2] = v40;
        v70 = 2;
        v69 = 131074;
        v51 = v40;
        if (byte_100B66202 == 1)
        {
          v64 = v73;
          v65 = v72;
          v62 = v75;
          v63 = v74;
          v52 = a9;
          v60 = a7;
          v61 = buf;
          v58 = 0;
          v59 = &v77;
          v56 = 1;
          v57 = dword_100B66203;
          v55 = a10;
          v53 = sub_1000D6178(0x101u, v41, v42, v43, v44, v45, v46, v47, a9);
        }

        else
        {
          v52 = a9;
          if (byte_100B6620A == 1)
          {
            v64 = v71;
            v65 = &v69;
            v62 = v73;
            v63 = v72;
            v60 = v75;
            v61 = v74;
            v58 = a7;
            v59 = buf;
            v56 = 0;
            v57 = &v77;
            v55 = dword_100B66203;
            v53 = sub_1000D6178(0xD9u, v41, v42, v43, v44, v45, v46, v47, 1);
          }

          else
          {
            v64 = 2;
            v65 = a6;
            v62 = a5;
            v63 = v51;
            v58 = &v77;
            v59 = dword_100B66203;
            v56 = 1;
            v57 = 0;
            v55 = a2;
            v60 = a3;
            v61 = v66;
            v53 = sub_1000D6178(0xADu, v41, v42, v43, v44, v45, v46, v47, a1);
          }
        }

        v11 = v53;
        if (v53)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Could not start auto-connect : %!", v11, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
            v54 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        else
        {
          byte_100B66200 = 1;
          LOBYTE(qword_100B6620C) = 0;
          WORD1(qword_100B66214) = a1;
          WORD2(qword_100B66214) = a2;
          HIWORD(qword_100B66214) = v67;
          word_100B6621C = a5;
          word_100B6621E = v51;
          word_100B66220 = a6;
          byte_100B66222 = a7;
          BYTE1(qword_100B6620C) = v52;
          BYTE2(qword_100B6620C) = a10;
        }

        return v11;
      }

      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Invalid initPHYs %x", a7);
      v38 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("Connection latency (%d) and connection interval (%d ms) are in a range taht will cause issues", a5, v29 + 10);
      v37 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }
    }

LABEL_72:
    sub_1000E09C0();
    return 101;
  }

  v20 = v19;
  v21 = 0;
  while (!sub_1000E5EA8(v20))
  {
    ++v21;
    v20 = (v20 + 7);
    if (v21 >= v76)
    {
      goto LABEL_17;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Already connected to this address.");
    v25 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 133;
}

BOOL sub_1002BF904(int a1, unsigned __int16 a2)
{
  if (byte_100B66200 != 1)
  {
    return 0;
  }

  return WORD1(qword_100B66214) == a1 && WORD2(qword_100B66214) == a2;
}

uint64_t sub_1002BF944(uint64_t a1, uint64_t a2)
{
  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 124) == 7)
    {
      return 0;
    }

    else
    {
      v17 = a2;
      v13 = sub_1000D6178(5u, v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_1000D6410(a1, v13);
      if (v11)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not disconnect LE device %!", v11, v17);
          v15 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(a1 + 124) = 7;
      }

      sub_100256830(a1, v14);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.");
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return v11;
}

uint64_t sub_1002BFA54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B66200)
  {
    if (byte_100B66201 != 1 || (a1 & 1) != 0)
    {
      byte_100B66224 = a1;
      v8 = sub_100018960(174, sub_1002BFB50, a3, a4, a5, a6, a7, a8, v11);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to cancel a connection : %!", v8);
          v9 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        byte_100B66201 = 1;
      }
    }

    else
    {
      v8 = 0;
      byte_100B66224 = 0;
    }
  }

  else
  {
    v12 = 0;
    while (sub_1000C08D0(&v12))
    {
      if (*(v12 + 132) != 7)
      {
        return 1302;
      }
    }

    return 1301;
  }

  return v8;
}

void sub_1002BFB50(uint64_t a1)
{
  v1 = a1;
  v5 = a1;
  v2 = byte_100B66224;
  if (sub_10000C240())
  {
    sub_10000AF54("connectionCancelCb lConnectionInProgress %d, lRestartConnectionInProgress %d, lCancelConnectionInProgress %d lCancelConnectionDeferInProgress %d - %!", byte_100B66200, byte_100B66224, byte_100B66201, byte_100B66228, v1);
    v3 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
    }
  }

  if (v1 == 712)
  {
    if (byte_100B66201 == 1 && (byte_100B66228 & 1) == 0)
    {
      *(&buf + 1) = &v5;
      *&buf = 4;
      byte_100B66228 = 1;
      sub_10002195C(sub_1002C43C0, &buf, 1, 0);
      return;
    }

    byte_100B66201 = 0;
    byte_100B66228 = 0;
    byte_100B66200 = 0;
    v1 = 712;
  }

  else
  {
    byte_100B66201 = 0;
    byte_100B66228 = 0;
    if (v1 == 702)
    {
      if ((byte_100B66200 & 1) == 0)
      {
        sub_1000D660C();
      }

      byte_100B66200 = 0;
      if (byte_100B66224 == 1)
      {
        if (qword_100B6620C)
        {
          sub_1002BE7A0(&qword_100B6620C + 3, WORD1(qword_100B66214), WORD2(qword_100B66214), HIWORD(qword_100B66214), word_100B6621C, word_100B66220, byte_100B66222, BYTE1(qword_100B6620C), SBYTE2(qword_100B6620C));
        }

        else
        {
          sub_1002BEFAC(WORD1(qword_100B66214), WORD2(qword_100B66214), HIWORD(qword_100B66214), 0, word_100B6621C, word_100B66220, byte_100B66222, 0, BYTE1(qword_100B6620C), SBYTE2(qword_100B6620C));
        }
      }

      else if (qword_100B6620C)
      {
        v1 = 0;
        LOBYTE(qword_100B6620C) = 0;
        goto LABEL_25;
      }
    }

    else
    {
      if (v1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Unexpected error code %! for connection cancel.", v1);
          v4 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        goto LABEL_25;
      }

      if ((byte_100B66200 & 1) == 0)
      {
        sub_1000D660C();
      }
    }

    v1 = 0;
  }

LABEL_25:
  byte_100B66224 = 0;
  if ((v2 & 1) == 0)
  {
    sub_1002CF444(v1);
  }
}

uint64_t sub_1002BFDEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 & 1) != 0 || byte_100B66200 != 1 || (byte_100B66224)
  {
    return 0;
  }

  else
  {
    return sub_1002BFA54(1, a2, a3, a4, a5, a6, a7, a8);
  }
}

BOOL sub_1002BFE1C(unsigned int a1)
{
  v6 = 0;
  for (result = sub_1000C08D0(&v6); result; result = sub_1000C08D0(&v6))
  {
    if (v6[52] > 0x1Bu || v6[54] >= 0x1Cu)
    {
      v3 = sub_1002BFF20(v6, a1);
      if (v3)
      {
        v4 = v3;
        if (v3 != 4000)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("ClassicSynchronousConfigChanged LE scaling completed with error %!", v4);
            v5 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              sub_1008145E4(&v7, &v8);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002BFF20(unsigned __int16 *a1, unsigned int a2)
{
  v95 = a1[54];
  v3 = a1[43];
  v4 = a1[57];
  if (sub_100084230() >> 3 >= 0x271 && sub_100084230() >> 4 < 0x177)
  {
    return 4000;
  }

  v91 = v4;
  v94 = 0;
  if (sub_1000E4F48(&v94))
  {
    v6 = 0;
    v7 = 0;
    v8 = "LE_ScaleDataLength lmHandle 0x%x SCO found voicelmHandle 0x%x _ceClassicAllowance %d interval %d piconets %d";
    do
    {
      v9 = *(v94 + 60);
      if (*(v94 + 60) && !*(v94 + 56))
      {
        if (v9 <= 6)
        {
          v10 = 2500;
        }

        else
        {
          v10 = 625 * v9 - 1250;
        }

        if (v9 <= 0xC)
        {
          if (sub_10000C240())
          {
            v11 = *a1;
            v12 = *v94;
            v13 = v8;
            v14 = *(v94 + 60);
            v15 = sub_1002415B0();
            v85 = v14;
            v8 = v13;
            sub_10000AF54(v13, v11, v12, v10, v85, v15);
            v16 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = sub_10000C0FC();
              *buf = 136446210;
              v97 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }

            v7 = 1;
          }

          else
          {
            v7 = 1;
          }
        }

        v18 = sub_1002415B0();
        v19 = v10 - 625;
        if (v18 <= 1)
        {
          v19 = v10;
        }

        if (v6 <= v19)
        {
          v6 = v19;
        }
      }
    }

    while (sub_1000E4F48(&v94));
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v20 = 625 * v3;
  v93 = 0;
  v22 = 0;
  while (sub_1000C08D0(&v93))
  {
    if (*(v93 + 124) != 7 && *(v93 + 128) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ScaleDataLength lmHandle 0x%x LEA streaming found voicelmHandle 0x%x", *a1, *v93);
        v23 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = sub_10000C0FC();
          *buf = 136446210;
          v97 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v22 = 1;
    }
  }

  v25 = 625 * v3;
  if (v6 < v20)
  {
    v25 = v6;
  }

  if (v6)
  {
    v26 = v25;
  }

  else
  {
    v26 = 625 * v3;
  }

  v27 = *(a1 + 36);
  v28 = *(a1 + 37);
  if (v28 == 2)
  {
    v29 = 360;
    v30 = 2;
  }

  else if (v28 == 3)
  {
    v29 = 1276;
    v30 = 6;
  }

  else
  {
    v29 = 412;
    v30 = 3;
  }

  v31 = a1[54];
  if (v27 == 2)
  {
    v32 = 60;
    v33 = 2;
  }

  else if (v27 == 3)
  {
    v32 = 976;
    v33 = 6;
  }

  else
  {
    v32 = 112;
    v33 = 3;
  }

  if (v29 + v32 + (a1[52] << v30) + (v31 << v33) > v26 || (*(a1 + 297) & 1) != 0 || (a1[149] & 1) != 0)
  {
    if (a1[56] <= v31)
    {
      v34 = a1[54];
    }

    else
    {
      v34 = a1[56];
    }

    LOWORD(v21) = a1[40];
    v35 = sub_1002C0CE0(v34, &v95, v26, (v21 * 1.25), 1, v27, v28);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("lmHandle 0x%x CE %d is larger than calculated symmetric pair, do not scale", *a1, v26);
      v53 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = sub_10000C0FC();
        *buf = 136446210;
        v97 = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v35 = a1[52];
    v95 = a1[54];
  }

  if (*(a1 + 70) == 1 && a1[57] == v6 && (v35 > a1[52] || v95 > a1[54]))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Peripheral optimal[tx %d, rx %d] is larger than connection[tx %d, rx %d], scaling down lmHandle 0x%x ", v35, v95, a1[52], a1[54], *a1);
      v36 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = sub_10000C0FC();
        *buf = 136446210;
        v97 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v35 >= a1[52])
    {
      v35 = a1[52];
    }

    else
    {
      v35 = v35;
    }

    v38 = v95;
    if (v95 >= a1[54])
    {
      v38 = a1[54];
    }

    v95 = v38;
  }

  a1[57] = v6;
  if (word_100B66226)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("EDL: Tx length override to %d", word_100B66226);
      v39 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = sub_10000C0FC();
        *buf = 136446210;
        v97 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v35 = word_100B66226;
    v41 = word_100B66226 == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = *(a1 + 36);
  v43 = 4 * v35 + 60;
  if (v35 <= 0x42)
  {
    v43 = 328;
  }

  if (v35 <= 0x1A)
  {
    v44 = 328;
  }

  else
  {
    v44 = 8 * v35 + 112;
  }

  if (v42 != 1)
  {
    v44 = (v35 << 6) + 976;
  }

  if (v42 == 2)
  {
    v45 = v43;
  }

  else
  {
    v45 = v44;
  }

  if (v22)
  {
    LOBYTE(v46) = 28;
  }

  else
  {
    LOBYTE(v46) = byte_100B53E18;
  }

  if (v22)
  {
    v47 = 63;
  }

  else
  {
    v47 = byte_100B53E19;
  }

  if (!v41 || !((v6 != 0) & v7 | v22 & 1) || *(a1 + 32) != 1)
  {
    goto LABEL_121;
  }

  if (v42 == 2)
  {
    if (v47 <= 0x42u)
    {
      v55 = 328;
    }

    else
    {
      v55 = 4 * v47 + 60;
    }

    if (v55 >= v45 && v35 <= v47)
    {
LABEL_121:
      v52 = 0;
      goto LABEL_122;
    }

    v86 = v55;
    v88 = v47;
    v90 = v47;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_ScaleDataLength Capping Tx with 2M for lmHandle 0x%x ceClassicAllowance %d txTime %d >= %d optimalTxBytes %d Cap txTime and optimalTxBytes rxPhy %d", *a1, v6, v45, v86, v35, *(a1 + 36));
      v57 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = sub_10000C0FC();
        *buf = 136446210;
        v97 = v58;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v47 = v90;
    v35 = v88;
    v52 = 1;
  }

  else
  {
    if (v42 != 1)
    {
      goto LABEL_121;
    }

    v48 = 8 * v46 + 112;
    if (v46 <= 0x1Au)
    {
      v48 = 328;
    }

    if (v48 >= v45 && v35 <= v46)
    {
      goto LABEL_121;
    }

    v87 = v48;
    v89 = v47;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_ScaleDataLength Capping Tx with 1M for lmHandle 0x%x ceClassicAllowance %d txTime %d >= %d optimalTxBytes %d Cap txTime and optimalTxBytes rxPhy %d", *a1, v6, v45, v87, v35, *(a1 + 36));
      v50 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = sub_10000C0FC();
        *buf = 136446210;
        v97 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v52 = 1;
    v35 = v46;
    v47 = v89;
  }

LABEL_122:
  *(a1 + 298) = v52;
  v59 = *(a1 + 37);
  if (v59 == 2)
  {
    v60 = 4 * v95 + 60;
    v61 = v95 > 0x42u;
  }

  else
  {
    if (v59 != 1)
    {
      v62 = (v95 << 6) + 976;
      goto LABEL_130;
    }

    v60 = 8 * v95 + 112;
    v61 = v95 > 0x1Au;
  }

  if (v61)
  {
    v62 = v60;
  }

  else
  {
    v62 = 328;
  }

LABEL_130:
  if ((v6 != 0) & v7 | v22 & 1 && *(a1 + 32) == 1)
  {
    if (v59 == 2)
    {
      v46 = v47;
      if (v47 <= 0x42u)
      {
        v67 = 328;
      }

      else
      {
        v67 = 4 * v47 + 60;
      }

      if (v67 < v62 || v95 > v47)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_ScaleDataLength Capping Rx with 2M for lmHandle 0x%x ceClassicAllowance %d rxTime %d >= %d optimalRxBytes %d Cap rxTime and optimalRxBytes txPhy %d", *a1, v6, v62, v67, v95, *(a1 + 37));
          v83 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = sub_10000C0FC();
            *buf = 136446210;
            v97 = v84;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v95 = v46;
        v66 = 1;
        goto LABEL_149;
      }
    }

    else if (v59 == 1)
    {
      v46 = v46;
      v63 = v46 <= 0x1Au ? 328 : 8 * v46 + 112;
      if (v63 < v62 || v95 > v46)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_ScaleDataLength Capping Rx with 1M for lmHandle 0x%x ceClassicAllowance %d rxTime %d >= %d optimalRxBytes %d Cap rxTime and optimalRxBytes txPhy %d", *a1, v6, v62, v63, v95, *(a1 + 37));
          v64 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = sub_10000C0FC();
            *buf = 136446210;
            v97 = v65;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v95 = v46;
        v66 = 1;
        goto LABEL_149;
      }
    }
  }

  v66 = 0;
  v46 = v95;
LABEL_149:
  *(a1 + 297) = v66;
  v68 = a1[40];
  v69 = 8 * sub_1002C0F90(v46, v35, v26, *(a1 + 36), *(a1 + 37));
  if (v69)
  {
    v69 = v69 * (0x3E8u / (v68 * 1.25)) / 0x3E8;
  }

  *(a1 + 61) = v69;
  *(a1 + 62) = sub_1002C0F90(v95, v35, v20, *(a1 + 36), *(a1 + 37));
  sub_100194E7C(a1);
  if (v35 == a1[52] && v95 == a1[54])
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Tx length is already at best-fit, exiting");
      v70 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = sub_10000C0FC();
        *buf = 136446210;
        v97 = v71;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v5 = 4000;
  }

  else
  {
    v5 = sub_1002A0D10(a1);
  }

  if (sub_10000C240())
  {
    if (a2 > 7)
    {
      v72 = "UNKNOWN";
    }

    else
    {
      v72 = off_100AE9D38[a2];
    }

    v73 = v95;
    v74 = a1[56];
    v75 = *(a1 + 34);
    v76 = "unknown";
    if (v75 == 1)
    {
      v76 = "complete";
    }

    if (v75)
    {
      v77 = v76;
    }

    else
    {
      v77 = "idle";
    }

    v78 = *(a1 + 61);
    v79 = sub_1002415B0();
    sub_10000AF54("Reason %s Selected %d with optimal [tx %d, rx %d], all-time rx %d,  CE %d, calc-CE %d, tput %d, classic-alw [%d -> %d], probe: %s, piconets %d, status %!. Current: tx[%d, %d] rx[%d, %d] lmHandle 0x%x ", v72, v35, v35, v73, v74, v26, v26, v78, v91, v6, v77, v79, v5, a1[52], a1[53], a1[54], a1[55], *a1);
    v80 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = sub_10000C0FC();
      *buf = 136446210;
      v97 = v81;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v5;
}

void sub_1002C0B70(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 - 5 >= 3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_LEAConfigChanged Unexpected reason %d", a2);
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v8 = 0;
    while (sub_1000C08D0(&v8))
    {
      if ((v8[52] > 0x1Bu || v8[54] >= 0x1Cu) && v8 != a1 && (*(v8 + 127) & 1) == 0)
      {
        v4 = sub_1002BFF20(v8, a2);
        if (v4)
        {
          v5 = v4;
          if (v4 != 4000)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("LE_LEAConfigChanged LE scaling completed with error %!", v5);
              v6 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                sub_1008145E4(&v9, &v10);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002C0CE0(unsigned int a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, int a7)
{
  v28 = a3;
  if (sub_10000C240())
  {
    v10 = "dynamic";
    if (a5)
    {
      v10 = "static";
    }

    sub_10000AF54("Finding bestfit for %s-rx %d, ce %d, interval %d", v10, a1, v28, a4);
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v30 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = 0;
  v13 = 251;
  v14 = 23;
  v15 = a1;
  v16 = 251;
  do
  {
    if (a1 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = a1;
    }

    v18 = a5;
    if (a5)
    {
      v19 = v17;
    }

    else
    {
      v19 = v13;
    }

    v20 = 8 * sub_1002C0F90(v19, v13, v28, a6, a7);
    if (v20)
    {
      v20 = v20 * (0x3E8 / a4) / 0x3E8;
    }

    if (v20 > v12)
    {
      v16 = v13;
      v15 = v19;
      v12 = v20;
    }

    if (v13 == 251)
    {
      v13 = 240;
    }

    else
    {
      v13 -= 10;
    }

    --v14;
    a5 = v18;
  }

  while (v14);
  if (a2)
  {
    *a2 = v15;
  }

  if (v15 <= a1)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  if ((v21 & 1) == 0 && v18)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Optimal length is [tx %d, rx %d] yielding %d kbps", v16, v15, v12);
    v22 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_10000C0FC();
      *buf = 136446210;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v16;
}