uint64_t sub_10028D540()
{
  word_100B60268 = *(sub_1003045A0(0x2Fu) + 2);
  v0 = word_100B60268;
  if (word_100B60268 >= 0x101u)
  {
    sub_1000D660C();
    v0 = word_100B60268;
  }

  qword_100B60260 = sub_1001BBBD8(144 * v0, 0x10F0040D5BBB60FuLL);
  if (!qword_100B60260)
  {
    return 106;
  }

  result = 0;
  word_100B6026A = 1;
  return result;
}

uint64_t sub_10028D5C0(unsigned int a1, uint64_t a2)
{
  v7 = 0;
  if (sub_1000ABC7C(a1, &v7))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CID %d", a1);
      v4 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 403;
  }

  else
  {
    v6 = v7;
    if (*(v7 + 136))
    {
      sub_1000D660C();
    }

    result = 0;
    *(v6 + 136) = a2;
  }

  return result;
}

void sub_10028D6A8()
{
  if (!HIDWORD(xmmword_100BCE2E0))
  {
    return;
  }

  sub_100304AF8("L2CAP data dump:\n");
  v0 = qword_100B60260;
  if (word_100B60268)
  {
    v1 = qword_100B60260 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 0;
    goto LABEL_28;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = *(v0 + v3);
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        sub_100304AF8("FX ");
        sub_100304AF8("cid=0x%x ", *(v0 + v3 + 4));
        v15 = sub_1000CD958(v0 + v3);
        sub_100304AF8("mtu=%d ", *v15);
        v16 = sub_1000CD958(v0 + v3);
        sub_100304AF8("flushTO=%d ", *(v16 + 2));
        v17 = *(sub_1000CD958(v0 + v3) + 5);
        if (v17 <= 4)
        {
          sub_100304AF8(off_100AE9A48[v17], v20);
        }
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_22;
        }

        v8 = sub_1000B12AC((v0 + v3));
        v7 = "ENHFC";
        if (!*(v8 + 120))
        {
          v7 = "MAG";
        }

LABEL_17:
        sub_100304AF8("%s", v7);
        sub_100304AF8("localCID=0x%x ", *(v0 + v3 + 4));
        v9 = sub_1000B12AC((v0 + v3));
        sub_100304AF8("remoteCID=0x%x ", *(v9 + 8));
        sub_100304AF8("psm=0x%x ", *(v0 + v3 + 6));
        v10 = sub_1000B12AC((v0 + v3));
        sub_100304AF8("addr=%: ", v10 + 10);
        v11 = sub_1000B12AC((v0 + v3));
        sub_100304AF8("inMTU=%d ", *(v11 + 36));
        v12 = sub_1000B12AC((v0 + v3));
        sub_100304AF8("outMTU=%d ", *(v12 + 32));
        v13 = sub_1000B12AC((v0 + v3));
        sub_100304AF8("outFlushTO=%d ", *(v13 + 38));
        v14 = sub_1000B12AC((v0 + v3));
        sub_100304AF8("linkTO=%d ", *(v14 + 40));
        sub_100304AF8("\n");
        sub_10029D4DC((v0 + v3));
      }

LABEL_21:
      ++v4;
      sub_100304AF8("\n");
      goto LABEL_22;
    }

    if (v6 == 1)
    {
      sub_100304AF8("CL ");
      sub_100304AF8("cid=0x%x ", *(v0 + v3 + 4));
      sub_100304AF8("psm=0x%x ");
      goto LABEL_21;
    }

    v7 = "CO ";
    if (v6 == 2)
    {
      goto LABEL_17;
    }

LABEL_22:
    v0 = qword_100B60260;
    v3 += 144;
  }

  while (v5++ < word_100B60268 && qword_100B60260 != 0);
  v2 = v4;
LABEL_28:
  sub_100304AF8("%d channels in use\n", v2);

  nullsub_21();
}

uint64_t sub_10028D9A0(int a1, uint64_t a2, void *a3)
{
  if (!sub_1000ABD24(a2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel");
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  if (!word_100B60268)
  {
    return 406;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = qword_100B60260;
    if (*(qword_100B60260 + v6) == 2 && *(sub_1000B12AC((qword_100B60260 + v6)) + 8) == a1 && *sub_1000B12AC((v8 + v6)) == a2)
    {
      break;
    }

    ++v7;
    v6 += 144;
    if (v7 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a3 = v8 + v6;
  return result;
}

uint64_t sub_10028DAA8(unsigned int a1, void *a2)
{
  v6 = 0;
  v3 = sub_1000ABC7C(a1, &v6);
  if (!v3)
  {
    v4 = v6;
    if (sub_1000B12AC(v6))
    {
      *a2 = *sub_1000B12AC(v4);
    }
  }

  return v3;
}

uint64_t sub_10028DB10(uint64_t a1, int a2, void *a3)
{
  if (!sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel");
      v13 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  if (!word_100B60268)
  {
    return 406;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = qword_100B60260;
    v9 = *(qword_100B60260 + v6);
    v10 = v9 == 4 || v9 == 2;
    if (v10 && *(sub_1000B12AC((qword_100B60260 + v6)) + 28) == a2)
    {
      v11 = sub_1000B12AC((v8 + v6));
      if (*(a1 + 48) == *(v11 + 10) && *(a1 + 52) == *(v11 + 14))
      {
        break;
      }
    }

    ++v7;
    v6 += 144;
    if (v7 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a3 = v8 + v6;
  return result;
}

uint64_t sub_10028DC28(uint64_t a1, int a2, void *a3)
{
  if (!sub_1000ABD24(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel");
      v13 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  if (!word_100B60268)
  {
    return 406;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = qword_100B60260;
    v9 = *(qword_100B60260 + v6);
    v10 = v9 == 4 || v9 == 2;
    if (v10 && *(sub_1000B12AC((qword_100B60260 + v6)) + 28) == a2)
    {
      v11 = sub_1000B12AC((v8 + v6));
      if (*(a1 + 49) == *(v11 + 10) && *(a1 + 53) == *(v11 + 14))
      {
        break;
      }
    }

    ++v7;
    v6 += 144;
    if (v7 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a3 = v8 + v6;
  return result;
}

uint64_t sub_10028DD40(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  if (a3 && (v7 = *a3, *a3))
  {
    if (sub_1000ABD24(a1))
    {
      if (a5)
      {
        *a5 = 0;
      }

      if (word_100B60268)
      {
        v23 = v7;
        v24 = a4;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = (qword_100B60260 + v13);
          if (*(qword_100B60260 + v13) == 2 && *(sub_1000B12AC((qword_100B60260 + v13)) + 120) == 1 && *(sub_1000B12AC(v16) + 28) == a2 && ((v17 = sub_1000B12AC(v16), *(a1 + 49) == *(v17 + 10)) ? (v18 = *(a1 + 53) == *(v17 + 14)) : (v18 = 0), v18))
          {
            *(v24 + 8 * v15) = v16;
            v19 = (v15 + 1);
            if (a5 && a6 && v15 >= v23)
            {
              *(a6 + 8 * (*a5)++) = v16;
            }
          }

          else
          {
            v19 = v15;
          }

          v15 = v19;
          ++v14;
          v13 += 144;
        }

        while (v14 < word_100B60268);
        *a3 = v19;
        if (v19)
        {
          return 0;
        }
      }

      else
      {
        *a3 = 0;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Invalid HCI handle provided - cannot retrieve channel");
      v22 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 406;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid number of channels parameter");
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }
}

uint64_t sub_10028DF3C(uint64_t a1, void *a2)
{
  if (!word_100B60268)
  {
    return 406;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *(qword_100B60260 + v4);
    if (v6 == 4 || v6 == 2)
    {
      v8 = sub_1000B12AC((qword_100B60260 + v4));
      v9 = *a1 == *(v8 + 10) && *(a1 + 4) == *(v8 + 14);
      if (v9 && !*(sub_1000B12AC((qword_100B60260 + v4)) + 16) && *(sub_1000B12AC((qword_100B60260 + v4)) + 25) == 1)
      {
        break;
      }
    }

    ++v5;
    v4 += 144;
    if (v5 >= word_100B60268)
    {
      return 406;
    }
  }

  result = 0;
  *a2 = qword_100B60260 + v4;
  return result;
}

_DWORD *sub_10028E018(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = word_100B60268;
  if (!word_100B60268)
  {
    return 0;
  }

  for (i = qword_100B60260; !qword_100B60260 || !*i || i[18] != a1; i += 36)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  return i;
}

uint64_t sub_10028E064(void *a1)
{
  *a1 = 0;
  *a1 = 6;
  v1 = word_100B60268;
  if (word_100B60268)
  {
    v2 = (qword_100B60260 + 4);
    do
    {
      if (*(v2 - 1) == 3)
      {
        v3 = *v2;
        if (v3 <= 0x3F)
        {
          *(a1 + (v3 >> 3)) |= 1 << (v3 & 7);
        }
      }

      v2 += 72;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_10028E0D0(uint64_t a1)
{
  v7 = 0;
  result = sub_1000ABC7C(a1, &v7);
  if (!result)
  {
    v3 = v7;
    v5 = *(v7 + 8);
    v4 = *(v7 + 16);
    v6 = *(v7 + 24);
    *(v7 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 80) += v6;
    if (v5)
    {

      return v5(a1, v4);
    }
  }

  return result;
}

void sub_10028E154(unsigned int a1)
{
  v4 = 0;
  if (sub_1000ABC7C(a1, &v4))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CID %d", a1);
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  else
  {
    v3 = v4;
    *(v4 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
  }
}

uint64_t sub_10028E1DC(uint64_t result)
{
  if (result)
  {
    return sub_10028E0D0(**(result + 8));
  }

  return result;
}

uint64_t sub_10028E1F0(uint64_t a1, uint64_t a2, __int128 *a3, char *a4, size_t a5)
{
  if (a1 && a4 && a5)
  {
    v20 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    result = sub_1000ABC7C(a2, &v20);
    if (!result)
    {
      if (a3 && (a3 = sub_1000E1FE8(a3)) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid address.", v13, v14, v15, v16, v17, v18, v19);
          v12 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 122;
      }

      else
      {
        sub_10001FF10(&v13, 1u);
        sub_10001F968(&v13, a4, a5, 2u);
        v11 = v20;
        *(&v13 + 1) = v20;
        result = sub_1000B7EDC(0, a2, a3, &v13, 0);
        if (!result)
        {
          *(v11 + 8) = a1;
          *(v11 + 16) = a4;
          *(v11 + 24) = a5;
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

void sub_10028E320(unsigned int a1, char a2, _WORD *a3)
{
  if (a2)
  {
    if (word_100B60268 >= 0x41u)
    {
      sub_1000D660C();
    }

    *a3 = a1 + 64;
  }

  else
  {
    if (!word_100B6026A)
    {
      sub_1000D660C();
    }

    if (word_100B60268 <= a1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/l2cap/chanman.c", 600, "index < maxChannels");
    }

    v5 = word_100B6026A;
    *a3 = a1 | (word_100B6026A << 8);
    if (v5 == 255)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 + 1;
    }

    word_100B6026A = v6;
    if (!v6)
    {

      sub_1000D660C();
    }
  }
}

uint64_t sub_10028E3EC(unsigned int a1, uint64_t *a2, char a3)
{
  if (a1 > 4 || ((1 << a1) & 0x16) == 0)
  {
    sub_1000D660C();
  }

  if (word_100B60268)
  {
    v6 = 0;
    v7 = qword_100B60260;
    while (*v7)
    {
      ++v6;
      v7 += 144;
      if (word_100B60268 == v6)
      {
        goto LABEL_8;
      }
    }

    if (*(v7 + 112))
    {
      sub_1000D660C();
    }

    if (*(v7 + 104))
    {
      sub_1000D660C();
    }

    if (*(v7 + 120))
    {
      sub_1000D660C();
    }

    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    sub_10028E320(v6, a3, (v7 + 4));
    *v7 = a1;
    switch(a1)
    {
      case 1u:
        v12 = sub_100007618(0x18uLL, 0xA00402214FCE6uLL);
        *(v7 + 104) = v12;
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
        break;
      case 2u:
        v11 = sub_100007618(0x88uLL, 0x10A004081157EC1uLL);
        *(v7 + 112) = v11;
        *v11 = 0u;
        v11[1] = 0u;
        v11[2] = 0u;
        v11[3] = 0u;
        v11[4] = 0u;
        v11[5] = 0u;
        v11[6] = 0u;
        v11[7] = 0u;
        *(v11 + 16) = 0;
        *(sub_1000B12AC(v7) + 16) = 0;
        *(sub_1000B12AC(v7) + 36) = 1024;
        *(sub_1000B12AC(v7) + 32) = 672;
        *(sub_1000B12AC(v7) + 34) = -1;
        *(sub_1000B12AC(v7) + 38) = -1;
        *(sub_1000B12AC(v7) + 40) = 5000;
        *(v7 + 72) = 0;
        *(sub_1000B12AC(v7) + 30) = 0;
        *(sub_1000B12AC(v7) + 17) = 0;
        *(sub_1000B12AC(v7) + 77) = 0;
        break;
      case 4u:
        v10 = sub_100007618(0x88uLL, 0x10A004081157EC1uLL);
        *(v7 + 112) = v10;
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        v10[4] = 0u;
        v10[5] = 0u;
        v10[6] = 0u;
        v10[7] = 0u;
        *(v10 + 16) = 0;
        break;
    }

    result = 0;
    *(v7 + 128) = 0;
    *(v7 + 76) = -1;
    *a2 = v7;
  }

  else
  {
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("No free channels found\n");
      v8 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  return result;
}

uint64_t sub_10028E64C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a2)
  {
    if (word_100B60268)
    {
      v8 = a4;
      v9 = a3;
      v10 = a2;
      v12 = (qword_100B60260 + 4);
      v13 = word_100B60268;
      do
      {
        if (*(v12 - 1) && *v12 == a1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("CID %d already regitered", a1);
            v17 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          return 402;
        }

        v12 += 72;
        --v13;
      }

      while (v13);
      v14 = 0;
      v15 = qword_100B60260;
      while (*(qword_100B60260 + v14))
      {
        v14 += 144;
        if (144 * word_100B60268 == v14)
        {
          return 104;
        }
      }

      v18 = qword_100B60260 + v14;
      if (*(qword_100B60260 + v14 + 112))
      {
        sub_1000D660C();
      }

      if (*(v18 + 104))
      {
        sub_1000D660C();
      }

      v19 = v15 + v14;
      if (*(v19 + 120))
      {
        sub_1000D660C();
      }

      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      v20 = sub_100007618(0x20uLL, 0x1080040DADD50E3uLL);
      *(v19 + 120) = v20;
      *v20 = 0u;
      v20[1] = 0u;
      *(v19 + 128) = 0;
      *(v19 + 4) = a1;
      *v19 = 3;
      *(v19 + 76) = -1;
      *(sub_1000CD958(v18) + 24) = a6;
      *sub_1000CD958(v18) = 672;
      *(sub_1000CD958(v18) + 2) = -1;
      *(sub_1000CD958(v18) + 4) = v10;
      *a5 = v18;
      sub_10029E064(*(v19 + 4), v9, v8, 0, (v19 + 96), *(v19 + 76));
      return 0;
    }

    else
    {
      return 104;
    }
  }

  else
  {
    sub_1000D660C();
    return 718;
  }
}

uint64_t sub_10028E848(uint64_t a1, int a2)
{
  if (word_100B60268)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = qword_100B60260;
      if (*(qword_100B60260 + v4) == 2 && *(sub_1000B12AC((qword_100B60260 + v4)) + 120) == 1 && *sub_1000B12AC((v6 + v4)) == a1 && *(sub_1000B12AC((v6 + v4)) + 28) == a2)
      {
        sub_10028E908((v6 + v4));
      }

      ++v5;
      v4 += 144;
    }

    while (v5 < word_100B60268);
  }

  return 0;
}

uint64_t sub_10028E908(int *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*a1 == 4 || *a1 == 2)
  {
    sub_10029D3EC(a1);
    if (!*(a1 + 14))
    {
      sub_1000D660C();
    }

    sub_1002AB7D0(a1);
  }

  sub_10029E4D4(*(a1 + 2));
  v3 = *(a1 + 6);
  if (v3)
  {
    sub_10000C1E8(v3);
  }

  *(a1 + 6) = 0;
  v4 = *a1;
  *a1 = 0;
  if (v4 == 1)
  {
    v11 = *(a1 + 13);
    v7 = a1 + 26;
    v10 = v11;
    if (!v11)
    {
      sub_1000D660C();
      v10 = *v7;
    }

    if (*v10)
    {
      sub_1000D660C();
      v10 = *v7;
    }

    sub_10000C1E8(v10);
    v5 = 0;
    goto LABEL_31;
  }

  if ((v4 == 4 || v4 == 2) && (sub_10002242C(*(*(a1 + 14) + 80)), sub_10002242C(*(*(a1 + 14) + 84)), sub_1000B8B5C(**(a1 + 14))))
  {
    v5 = sub_1000CD5B8(**(a1 + 14));
  }

  else
  {
    v5 = 0;
  }

  switch(v4)
  {
    case 2:
      goto LABEL_22;
    case 3:
      v12 = *(a1 + 15);
      v7 = a1 + 30;
      v6 = v12;
LABEL_30:
      sub_10000C1E8(v6);
LABEL_31:
      *v7 = 0;
      return v5;
    case 4:
LABEL_22:
      v8 = *(a1 + 14);
      v7 = a1 + 28;
      v6 = v8;
      v9 = v8[16];
      if (v9)
      {
        sub_10000C1E8(v9);
        v6 = *v7;
        *(*v7 + 128) = 0;
      }

      goto LABEL_30;
  }

  return v5;
}

uint64_t sub_10028EA60(uint64_t result, int **a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = *a2++;
      result = sub_10028E908(v4);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10028EA9C(__int16 a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8)
{
  v31 = 0;
  v16 = sub_10028E3EC(2u, &v31, 0);
  if (!v16)
  {
    v30 = a8;
    v17 = sub_1000E1FE8(a3);
    if (!v17)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_L2CAP_createChannelForFastConnect NULL Handle");
        v18 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v19 = v31;
    v20 = sub_1000B12AC(v31);
    v21 = *(a3 + 4);
    *(v20 + 10) = *a3;
    *(v20 + 14) = v21;
    *sub_1000B12AC(v19) = v17;
    *(sub_1000B12AC(v19) + 25) = 0;
    *(sub_1000B12AC(v19) + 28) = 0;
    v22 = *a2;
    *(sub_1000B12AC(v19) + 36) = v22;
    *(v19 + 3) = a1;
    *(sub_1000B12AC(v19) + 16) = 0;
    *(sub_1000B12AC(v19) + 24) = 1;
    *(sub_1000B12AC(v19) + 27) = 3;
    *(sub_1000B12AC(v19) + 26) = 3;
    *(sub_1000B12AC(v19) + 28) = 0;
    *(sub_1000B12AC(v19) + 52) = 0;
    *(sub_1000B12AC(v19) + 88) = a5;
    *(sub_1000B12AC(v19) + 96) = a4;
    *(v19 + 4) = a6;
    *(sub_1000B12AC(v19) + 48) = 0;
    *(sub_1000B12AC(v19) + 78) = 0;
    v23 = sub_10029CFF4(v19, 0, 0);
    if (v23)
    {
      v16 = v23;
      sub_10028E908(v19);
    }

    else
    {
      v25 = *(a2 + 2);
      if (!v25)
      {
        v25 = -1;
      }

      v19[19] = v25;
      v26 = *(a2 + 6);
      if (!v26)
      {
        v26 = 4;
      }

      *(a2 + 6) = v26;
      v27 = *(a2 + 7);
      if (!v27)
      {
        v27 = 5;
      }

      *(a2 + 7) = v27;
      sub_10023B994(v17);
      sub_10029E064(*(v19 + 2), *(a2 + 6), *(a2 + 7), 0, v19 + 12, v19[19]);
      v28 = sub_1000B12AC(v19);
      sub_1000CD5B8(*v28);
      *a7 = *(v19 + 2);
      *(v19 + 8) = v30;
      v16 = sub_10028F290(v19, a2);
      if (v16)
      {
        sub_10028E908(v19);
        if (sub_10000C240())
        {
          sub_10000AF54("OI_L2CAP_createChannelForFastConnect Failed to set channel params");
          v29 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  return v16;
}

uint64_t sub_10028ED44(uint64_t a1)
{
  v2 = sub_10028D534();
  if (*(sub_1003045A0(0x2Fu) + 2))
  {
    v3 = 0;
    v4 = 0xFFFF;
    do
    {
      v5 = *v2 == 4 || *v2 == 2;
      if (v5 && *sub_1000B12AC(v2) == a1 && *(sub_1000B12AC(v2) + 40) < v4)
      {
        v4 = *(sub_1000B12AC(v2) + 40);
      }

      ++v3;
      v2 += 36;
    }

    while (v3 < *(sub_1003045A0(0x2Fu) + 2));
    v6 = (1717986919 * (8 * v4)) >> 33;
    if (v4 == 65534)
    {
      LOWORD(v6) = 0;
    }

    if (v4 == 0xFFFF)
    {
      v7 = 32000;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 32000;
  }

  if (*(a1 + 140) == v7)
  {
    return 0;
  }

  return sub_10024756C(a1, v7);
}

void sub_10028EE5C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v17 = *(sub_1000B12AC(a1) + 88);
  v4 = *(a1 + 4);
  v5 = *(sub_1000B12AC(a1) + 16);
  sub_1000B12AC(a1);
  v16 = *(sub_1000B12AC(a1) + 96);
  v6 = *(sub_1000B12AC(a1) + 24);
  v7 = *sub_1000B12AC(a1);
  if (*(sub_1000B12AC(a1) + 17))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Disconnect notification for PSM: %x already pending on dispatcher", *(a1 + 6));
      v8 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    *(sub_1000B12AC(a1) + 20) = a2;
    *(sub_1000B12AC(a1) + 17) = 1;
    *(sub_1000B12AC(a1) + 16) = 0;
    sub_10029F2B4(v4);
    sub_10028E908(a1);
    if (sub_1000B8B5C(v7))
    {
      v9 = a2 == 1348 ? 68 : 19;
      sub_1000D2538(v7, v9);
      if (sub_1000B8B5C(v7))
      {
        sub_10028ED44(v7);
      }
    }

    v10 = *(a1 + 72);
    if (v10)
    {
      sub_100306190(v10);
    }

    v12 = a2 != 464 && v5 > 3;
    if (v5 == 2 || v12)
    {
      if (v17)
      {

        v17(v4, a2);
      }
    }

    else
    {
      if (v6)
      {
        v13 = v5 == 3;
      }

      else
      {
        v13 = 1;
      }

      v14 = v13;
      if (v16 && v14)
      {
        v15 = *(a1 + 4);

        v16(v15, 0, 0, a2);
      }
    }
  }
}

void sub_10028F064(int **a1, int a2, uint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    v19 = 0;
    while (1)
    {
      v6 = *(sub_1000B12AC(*v5) + 88);
      v7 = *(*v5 + 2);
      v8 = *(sub_1000B12AC(*v5) + 16);
      sub_1000B12AC(*v5);
      v9 = *(sub_1000B12AC(*v5) + 96);
      v10 = *(sub_1000B12AC(*v5) + 104);
      v11 = *(sub_1000B12AC(*v5) + 24);
      v12 = *sub_1000B12AC(*v5);
      if (*(sub_1000B12AC(*v5) + 17))
      {
        break;
      }

      *(sub_1000B12AC(*v5) + 20) = a3;
      *(sub_1000B12AC(*v5) + 17) = 1;
      *(sub_1000B12AC(*v5) + 16) = 0;
      sub_10029F2B4(*(*v5 + 2));
      sub_10028E908(*v5);
      if (sub_1000B8B5C(v12))
      {
        sub_1000D2538(v12, 19);
        if (sub_1000B8B5C(v12))
        {
          sub_10028ED44(v12);
        }
      }

      v13 = (*v5)[18];
      if (v13)
      {
        sub_100306190(v13);
      }

      v15 = a3 != 464 && v8 > 3;
      if (v8 == 2 || v15)
      {
        if (v6)
        {
          v6(v7, a3);
        }
      }

      else
      {
        if (v11)
        {
          v16 = v8 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        if (v9 | v10 && v17)
        {
          if (v9)
          {
            (v9)(*(*v5 + 2), 0, 0, a3);
          }

          else
          {
            if ((v19 & 1) == 0)
            {
              (v10)(0, *v5 + 1, 0, 0, a3);
            }

            v19 = 1;
          }
        }
      }

      ++v5;
      if (!--a2)
      {
        return;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Disconnect notification for PSM: %x already pending on dispatcher, cid:%d", *(*v5 + 3), *(*v5 + 2));
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

uint64_t sub_10028F290(int *a1, __int16 *a2)
{
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
  if (!a2[1] || a2[1] == 0xFFFF && (byte_100BCDFEA & 0x40) != 0 || (v4 = sub_10028D534(), !*(sub_1003045A0(0x2Fu) + 2)))
  {
LABEL_26:
    if (a2[2])
    {
      v13 = a2[2];
    }

    else
    {
      v13 = -2;
    }

    *(sub_1000B12AC(a1) + 40) = v13;
    v14 = *a2;
    *(sub_1000B12AC(a1) + 36) = v14;
    v15 = a2[1];
    v16 = sub_1000B12AC(a1);
    result = 0;
    *(v16 + 38) = v15;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      if (v4 != a1 && *v4 && *v4 != 3)
      {
        v7 = sub_1000B12AC(a1);
        v8 = sub_1000B12AC(v4);
        if (*(v7 + 10) == *(v8 + 10) && *(v7 + 14) == *(v8 + 14))
        {
          if (*(sub_1000B12AC(v4) + 38))
          {
            if (*(sub_1000B12AC(v4) + 38) != -1)
            {
              v10 = a2[1];
              if (v10 != *(sub_1000B12AC(v4) + 38))
              {
                break;
              }
            }
          }
        }
      }

      ++v5;
      v4 += 36;
      if (v5 >= *(sub_1003045A0(0x2Fu) + 2))
      {
        goto LABEL_26;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_Accept: conflicting flush timeout, cannot accept connection");
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1008141E8();
      }
    }

    sub_10028E908(a1);
    return 101;
  }

  return result;
}

uint64_t sub_10028F454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8)
{
  v38 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_L2CAP_Connect %: PSM = 0x%x, Cb 0x%x", a5, a4, sub_10028F7A4);
    v16 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v40 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a1 || !a8 || !a2 || !a3 || (a4 & 0x1010101) != 1 || !a7)
  {
    sub_1000D660C();
    return 101;
  }

  v17 = sub_10028F948(a6);
  if (!v17)
  {
    v17 = sub_10028E3EC(2u, &v38, 0);
    if (!v17)
    {
      *(sub_1000B12AC(v38) + 24) = 0;
      v20 = sub_1000B12AC(v38);
      v21 = *(a5 + 4);
      *(v20 + 10) = *a5;
      *(v20 + 14) = v21;
      v22 = v38;
      *(v38 + 3) = a4;
      *(sub_1000B12AC(v22) + 16) = 0;
      *(sub_1000B12AC(v38) + 88) = a2;
      *(sub_1000B12AC(v38) + 96) = a1;
      v23 = v38;
      *(v38 + 4) = a3;
      *(v23 + 8) = a8;
      if (a6)
      {
        v24 = *(a6 + 16);
        v25 = sub_1000B12AC(v23);
        if (v24)
        {
          v26 = *(a6 + 16);
          v27 = *v26;
          *(v25 + 50) = *(v26 + 4);
          *(v25 + 42) = v27;
        }

        else
        {
          *(v25 + 48) = 0;
        }

        v33 = *(a6 + 24);
        *(sub_1000B12AC(v38) + 78) = v33;
        v28 = sub_10029CFF4(v38, *(a6 + 12), *(a6 + 13));
        if (v28)
        {
          goto LABEL_22;
        }

        if (*(a6 + 8))
        {
          v30 = *(a6 + 8);
        }

        else
        {
          v30 = -1;
        }

        v29 = v38;
        v38[19] = v30;
        if (*(a6 + 6))
        {
          v32 = *(a6 + 6);
        }

        else
        {
          v32 = 4;
        }

        if (*(a6 + 7))
        {
          v31 = *(a6 + 7);
        }

        else
        {
          v31 = 5;
        }
      }

      else
      {
        *(sub_1000B12AC(v23) + 48) = 0;
        *(sub_1000B12AC(v38) + 78) = 0;
        v28 = sub_10029CFF4(v38, 0, 0);
        if (v28)
        {
          goto LABEL_22;
        }

        v29 = v38;
        v30 = -1;
        v38[19] = -1;
        v31 = 5;
        v32 = 4;
      }

      v18 = sub_10029E064(*(v29 + 2), v32, v31, 0, v29 + 12, v30);
      v34 = v38;
      if (v18)
      {
        goto LABEL_33;
      }

      *a7 = *(v38 + 2);
      if (!a6 || (v28 = sub_10028F290(v34, a6), !v28))
      {
        v35 = *(sub_1003045A0(0x28u) + 8);
        if (v35 <= *(sub_1000B12AC(v38) + 36))
        {
          v36 = (sub_1003045A0(0x28u) + 8);
        }

        else
        {
          v36 = (sub_1000B12AC(v38) + 36);
        }

        v37 = *v36;
        *(sub_1000B12AC(v38) + 36) = v37;
        v18 = sub_10023B6AC(sub_10028F7A4, a5);
        v34 = v38;
        if (!v18)
        {
          *(sub_1000B12AC(v38) + 25) = 1;
          return v18;
        }

        goto LABEL_33;
      }

LABEL_22:
      v18 = v28;
      v34 = v38;
LABEL_33:
      sub_10028E908(v34);
      return v18;
    }
  }

  return v17;
}

void sub_10028F7A4(uint64_t a1, int *a2, uint64_t a3)
{
  v13 = 0;
  v6 = sub_10028DF3C(a2, &v13);
  if (!v6)
  {
    if (*(sub_1000B12AC(v13) + 16) || *(sub_1000B12AC(v13) + 25) != 1)
    {
      sub_1000D660C();
    }

    if (!a1)
    {
      *sub_1000B12AC(v13) = a3;
      if (!a3)
      {
        sub_1000D660C();
      }

      if (*(a3 + 228))
      {
        *(sub_1000B12AC(v13) + 25) = 2;
        v9 = sub_1000B12AC(v13);
        if (!sub_100305BDC(sub_100290968, (v9 + 10), *(v13 + 8), v13 + 18, 0))
        {
          return;
        }
      }

      else
      {
        *(a3 + 228) = 1;
        v10 = sub_1002AD818(sub_100291C84, 1, a2, 2);
        if (!v10)
        {
          return;
        }

        v11 = v10;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not ask device for extended features, result is %!", v11);
          v12 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }

    sub_100291EC4(v13, a1);
    return;
  }

  v7 = v6;
  if (sub_10000C240())
  {
    sub_10000AF54("no waiting channel found for completed ACL link %: with %!", a2, v7);
    v8 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10028F948(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 < 0x80)
  {
    return 483;
  }

  if (v2 <= *(sub_1003045A0(0x28u) + 8))
  {
    if (a1[1] - 1280 < 0xFAFF)
    {
      return 484;
    }

    return 0;
  }

  if (sub_10000C240())
  {
    v4 = sub_1003045A0(0x28u);
    sub_10000AF54("Could not validate connect parameters: no resources, max %d, in %d", *(v4 + 8), *a1);
    v5 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 104;
}

void sub_10028FA18(uint64_t a1, uint64_t a2)
{
  if (sub_1000ABD24(a1))
  {
    v4 = *(a1 + 256);
    if (v4)
    {
      v5 = sub_1000BB054(v4, 0);
      if (v5)
      {
        v6 = v5;
        do
        {
          v39 = 0;
          if (!sub_1000ABC7C(*v6, &v39))
          {
            v7 = v39;
            v8 = *v39;
            if (a2)
            {
              if (v8 == 2)
              {
                v9 = *(sub_1000B12AC(v39) + 120);
                v10 = sub_1000B12AC(v39);
                if (v9 == 1)
                {
                  if (*(v10 + 104))
                  {
                    v11 = sub_1000B12AC(v39);
                    (*(v11 + 104))(0, v6, 0, 0, a2);
                  }

                  v12 = sub_1000B12AC(v39);
                  sub_10028E848(a1, *(v12 + 28));
                }

                else
                {
                  if (*(v10 + 96))
                  {
                    v36 = sub_1000B12AC(v39);
                    (*(v36 + 96))(*(v39 + 2), 0, 0, a2);
                  }

                  sub_10028E908(v39);
                }

                goto LABEL_25;
              }
            }

            else if (v8 == 2)
            {
              v13 = *(sub_1000B12AC(v39) + 120);
              v7 = v39;
              if (v13 == 1)
              {
                v45 = 0;
                memset(v44, 0, sizeof(v44));
                v43 = 0;
                memset(v42, 0, sizeof(v42));
                v38 = 5;
                v37 = 0;
                v41 = 0;
                v40 = 0;
                v14 = *sub_1000B12AC(v39);
                v15 = sub_1000B12AC(v39);
                sub_10028DD40(v14, *(v15 + 28), &v38, v44, &v37, v42);
                if (v37)
                {
                  for (i = 0; i < v37; ++i)
                  {
                    v17 = *(v42 + i);
                    *v17 = 0;
                    sub_10000C1E8(*(v17 + 112));
                  }
                }

                v18 = v38;
                if (v38)
                {
                  v19 = v44;
                  v20 = &v40;
                  do
                  {
                    v21 = *v19++;
                    *v20 = *(v21 + 4);
                    v20 = (v20 + 2);
                    --v18;
                  }

                  while (v18);
                }

                v22 = *sub_1000B12AC(v39);
                v23 = *(sub_1000B12AC(v39) + 28);
                v24 = *(v39 + 3);
                v25 = v38;
                v26 = *(sub_1000B12AC(v39) + 36);
                v27 = *(sub_1000B12AC(v39) + 72);
                v28 = sub_1000CAA48(v39);
                sub_1002DDAC4(v22, v23, v24, v25, &v40, v26, v27, v28);
                goto LABEL_25;
              }
            }

            v29 = *sub_1000B12AC(v7);
            v30 = *(sub_1000B12AC(v39) + 28);
            v31 = *(v39 + 3);
            v32 = *(v39 + 2);
            v33 = *(sub_1000B12AC(v39) + 36);
            v34 = *(sub_1000B12AC(v39) + 72);
            v35 = sub_1000CAA48(v39);
            sub_1002DD8F8(v29, v30, v31, v32, v33, v34, v35);
          }

LABEL_25:
          sub_10000C1E8(v6);
          v6 = sub_1000BB054(*(a1 + 256), 0);
        }

        while (v6);
      }

      sub_1000BBDD0(*(a1 + 256));
      *(a1 + 256) = 0;
    }
  }
}

void sub_10028FD18(uint64_t a1, uint64_t a2)
{
  if ((sub_1002DF898(a1) & 1) == 0)
  {

    sub_10028FA18(a1, a2);
  }
}

void sub_10028FD68(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000E5EA8(a1);

  sub_10028FA18(v4, a3);
}

uint64_t sub_10028FDB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 *a6, _WORD *a7)
{
  if (a1 && a2 && a3 && ((v12 = a4, (a4 - 1) < 0x7F) || (a4 & 0xFF80) == 0x80) && a7)
  {
    if (sub_1000ABD24(a5))
    {
      v14 = sub_10029006C(a6);
      if (v14)
      {
        return v14;
      }

      v37 = 0;
      v14 = sub_10028E3EC(2u, &v37, 1);
      if (v14)
      {
        return v14;
      }

      else
      {
        v17 = v37;
        *a7 = *(v37 + 2);
        *(sub_1000B12AC(v17) + 24) = 0;
        *sub_1000B12AC(v37) = a5;
        v18 = sub_1000B12AC(v37);
        v19 = *(a5 + 53);
        *(v18 + 10) = *(a5 + 49);
        *(v18 + 14) = v19;
        v20 = v37;
        *(v37 + 3) = v12;
        *(sub_1000B12AC(v20) + 16) = 1;
        *(sub_1000B12AC(v37) + 88) = a2;
        *(sub_1000B12AC(v37) + 96) = a1;
        v21 = v37;
        *(v37 + 4) = a3;
        *(sub_1000B12AC(v21) + 48) = 0;
        *(sub_1000B12AC(v37) + 78) = 0;
        v22 = sub_1002AB568();
        *(sub_1000B12AC(v37) + 28) = v22;
        v23 = *a6;
        *(sub_1000B12AC(v37) + 36) = v23;
        v24 = *(sub_1003045A0(0x28u) + 8);
        if (v24 <= *(sub_1000B12AC(v37) + 36))
        {
          v25 = (sub_1003045A0(0x28u) + 8);
        }

        else
        {
          v25 = (sub_1000B12AC(v37) + 36);
        }

        v26 = *v25;
        *(sub_1000B12AC(v37) + 36) = v26;
        v27 = a6[1];
        *(sub_1000B12AC(v37) + 72) = v27;
        v28 = sub_10028A258(v37, a6[4], a6[3]);
        if (v28)
        {
          v15 = v28;
          if (sub_10000C240())
          {
            sub_10000AF54("LE_L2CAP_InitLocalParams returned %!. Failed to initiate parameters. Aborting.\n", v15);
            v29 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          sub_10028E908(v37);
        }

        else
        {
          *(sub_1000B12AC(v37) + 25) = 1;
          v30 = *sub_1000B12AC(v37);
          v31 = *(sub_1000B12AC(v37) + 28);
          v32 = *(v37 + 3);
          v33 = *(v37 + 2);
          v34 = *(sub_1000B12AC(v37) + 36);
          v35 = *(sub_1000B12AC(v37) + 72);
          v36 = sub_1000CAA48(v37);
          sub_1002DD8F8(v30, v31, v32, v33, v34, v35, v36);
          return 0;
        }
      }
    }

    else
    {
      return 414;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v15;
}

uint64_t sub_10029006C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2 <= *(sub_1003045A0(0x28u) + 8))
    {
      if (v1[1] <= *v1)
      {
        return 0;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("MTU must be equal or greater than MPS (MPS=%d, MTU=%d)\n", v1[1], *v1);
          v4 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return 101;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not validate connect parameters: no resources");
        v3 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  return result;
}

uint64_t sub_100290164(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7)
{
  v56 = 0;
  v13 = sub_1000ABC7C(a4, &v56);
  if (!v13)
  {
    if (*(sub_1000B12AC(v56) + 16) != 2)
    {
      if (sub_10000C240())
      {
        v18 = sub_1000B12AC(v56);
        sub_10000AF54("Invalid State: %d", *(v18 + 16));
        v19 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 408;
    }

    if (!a6)
    {
      sub_1002906E0(v56, 530, 0);
      return 0;
    }

    if (!a1 || !a2 || !a3 || !a7)
    {
      sub_1000D660C();
      return 101;
    }

    v16 = sub_10028F948(a5);
    if (v16)
    {
      v14 = v16;
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Connect Params: %!", v14);
        v17 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }
      }

      return v14;
    }

    *(sub_1000B12AC(v56) + 96) = a1;
    *(sub_1000B12AC(v56) + 88) = a2;
    v21 = v56;
    *(v56 + 4) = a3;
    *(v21 + 8) = a7;
    if (a5)
    {
      v22 = *(a5 + 16);
      v23 = sub_1000B12AC(v21);
      if (v22)
      {
        v24 = *(a5 + 16);
        v25 = *v24;
        *(v23 + 50) = *(v24 + 4);
        *(v23 + 42) = v25;
      }

      else
      {
        *(v23 + 48) = 0;
      }

      v29 = *(a5 + 24);
      *(sub_1000B12AC(v56) + 78) = v29;
      v26 = sub_10029CFF4(v56, *(a5 + 12), *(a5 + 13));
      if (v26)
      {
LABEL_30:
        v14 = v26;
        if (!sub_10000C240())
        {
          goto LABEL_46;
        }

        sub_10000AF54("Flow init failed with %!, rejecting connection", v14);
        v30 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if (*(a5 + 8))
      {
        v31 = *(a5 + 8);
      }

      else
      {
        v31 = -1;
      }

      v32 = v56;
      v56[19] = v31;
      if (*(a5 + 6))
      {
        v33 = *(a5 + 6);
      }

      else
      {
        v33 = 4;
      }

      if (*(a5 + 7))
      {
        v34 = *(a5 + 7);
      }

      else
      {
        v34 = 5;
      }

      v28 = sub_10029E064(*(v32 + 2), v33, v34, 0, v32 + 12, v31);
      if (v28)
      {
        goto LABEL_43;
      }

      v36 = sub_10028F290(v56, a5);
      if (v36)
      {
        v14 = v36;
        sub_10028E908(v56);
        if (sub_10000C240())
        {
          sub_10000AF54("OI_ConnectMan_handleChannelParamConflicts failed: %!", v14);
          v37 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }
        }

        return v14;
      }
    }

    else
    {
      *(sub_1000B12AC(v21) + 48) = 0;
      *(sub_1000B12AC(v56) + 78) = 0;
      v26 = sub_10029CFF4(v56, 0, 0);
      if (v26)
      {
        goto LABEL_30;
      }

      v27 = v56;
      v56[19] = -1;
      v28 = sub_10029E064(*(v27 + 2), 4, 5u, 0, v27 + 12, 0xFFFFFFFF);
      if (v28)
      {
LABEL_43:
        v14 = v28;
        if (!sub_10000C240())
        {
          goto LABEL_46;
        }

        sub_10000AF54("Queue register failed with %!, rejecting connection", v14);
        v35 = sub_10000C050(0x2Fu);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    v38 = *(sub_1003045A0(0x28u) + 8);
    if (v38 <= *(sub_1000B12AC(v56) + 36))
    {
      v39 = (sub_1003045A0(0x28u) + 8);
    }

    else
    {
      v39 = (sub_1000B12AC(v56) + 36);
    }

    v40 = *v39;
    *(sub_1000B12AC(v56) + 36) = v40;
    v41 = v56;
    if (*(v56 + 8))
    {
      v42 = sub_1000B12AC(v56);
      v44 = sub_1002FD040(*v42, **(v56 + 8), *(*(v56 + 8) + 8), v43);
      v41 = v56;
      if (v44)
      {
        v45 = *sub_1000B12AC(v56);
        v46 = *(sub_1000B12AC(v56) + 29);
        v47 = *(v56 + 2);
        v55 = *(sub_1000B12AC(v56) + 8);
        v51 = sub_1002AB810("aaaa", 3, 0, v45, v46, v48, v49, v50, v47);
        if (v51)
        {
          v14 = v51;
          if (!sub_10000C240())
          {
            goto LABEL_46;
          }

          sub_10000AF54("Sending Pending response failed %!", v14, v55, 1, 1);
          v52 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v41 = v56;
      }
    }

    v53 = sub_1000B12AC(v41);
    v14 = sub_100305BDC(sub_100290968, (v53 + 10), *(v56 + 8), v56 + 18, 1);
    if (!v14)
    {
      *(sub_1000B12AC(v56) + 25) = 2;
      return v14;
    }

    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Policy Mgr for new connection failed %!", v14);
    v54 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

LABEL_45:
    sub_10080F7A0();
LABEL_46:
    sub_1002906E0(v56, v14, 0);
    return v14;
  }

  v14 = v13;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_ChanMan_GetChannel failed: %!", v14);
    v15 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_50:
      sub_10080F7A0();
    }
  }

  return v14;
}

void sub_1002906E0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v6 = *sub_1000B12AC(a1);
  v7 = *(sub_1000B12AC(a1) + 29);
  if (a2)
  {
    goto LABEL_4;
  }

  if (*(sub_1000B12AC(a1) + 16) != 2)
  {
    sub_1000D660C();
  }

  *(sub_1000B12AC(a1) + 25) = 3;
  v19 = *(a1 + 4);
  v31 = *(sub_1000B12AC(a1) + 8);
  v23 = sub_1002AB810("aaaa", 3, 0, v6, v7, v20, v21, v22, v19);
  if (v23)
  {
    v24 = v23;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to complete incoming connection %!", v24, v31, 0, 0);
      v25 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_4:
    v8 = sub_10000C240();
    if (a3)
    {
      if (v8)
      {
        sub_10000AF54("Incoming connection security failed");
        v9 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v10 = 3;
    }

    else
    {
      if (v8)
      {
        sub_10000AF54("Incoming connection refused: %!", a2);
        v11 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v10 = 4;
    }

    v12 = *(a1 + 4);
    v30 = *(sub_1000B12AC(a1) + 8);
    v16 = sub_1002AB810("aaaa", 3, 0, v6, v7, v13, v14, v15, v12);
    if (v16)
    {
      v17 = v16;
      if (sub_10000C240())
      {
        sub_10000AF54("SignalMan_ConnectRsp failed %!", v17, v30, v10, 0);
        v18 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    sub_10028EE5C(a1, (v10 + 450));
    return;
  }

  sub_100292754(a1);
  v26 = sub_1000B12AC(a1);
  v27 = sub_1000B7ADC(*(v26 + 80), 1);
  if (v27)
  {
    v28 = v27;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_SetFuncTimeout failed %!", v28, v31, 0, 0);
      v29 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100290968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028E018(a1);
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Policy enforcement failed %! - cid 0x%x, handle %d securityFailed %d", a2, *(v7 + 4), a1, a3);
        v8 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      if (!*(sub_1000B12AC(v7) + 24))
      {
        sub_10028EE5C(v7, a2);
        return;
      }

      goto LABEL_12;
    }

    if (*(sub_1000B12AC(v6) + 24))
    {
LABEL_12:
      sub_1002906E0(v7, a2, a3);
      return;
    }

    sub_100291EC4(v7, 0);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Channel not found in PolicyCB!");
    v9 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100290AA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 *a5, int a6)
{
  v50 = 0;
  v11 = sub_1000ABC7C(a4, &v50);
  if (v11 || !sub_1000B12AC(v50))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ChanMan_GetChannel failed: %!", v11);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return v11;
  }

  v13 = *sub_1000B12AC(v50);
  if (*(sub_1000B12AC(v50) + 16) != 2)
  {
    if (sub_10000C240())
    {
      v18 = sub_1000B12AC(v50);
      sub_10000AF54("Invalid State: %d", *(v18 + 16));
      v19 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 408;
  }

  if (!a6)
  {
    v17 = 4;
    goto LABEL_23;
  }

  if (!a5)
  {
LABEL_45:
    sub_1000D660C();
    return 101;
  }

  v14 = sub_1000CB318(v13);
  v15 = sub_1002DC0C8(v13);
  v49 = 0;
  if (v15)
  {
    sub_1002DC14C(v13, &v49);
  }

  if (*(a5 + 4) != 1)
  {
    if ((*(a5 + 5) & 1) != 0 && !sub_1002DBFE8(v13))
    {
      v17 = 6;
      goto LABEL_23;
    }

    goto LABEL_38;
  }

  if (!v14)
  {
    v17 = 8;
    goto LABEL_23;
  }

  if (v49 < 0x10u)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if ((v16 & 1) == 0)
  {
    if ((*(v13 + 170) | 2) != 3)
    {
      v17 = 5;
      goto LABEL_23;
    }

LABEL_38:
    if (a1 && a2 && a3)
    {
      v28 = sub_10029006C(a5);
      if (v28)
      {
        v11 = v28;
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid Connect Params: %!", v11);
          v29 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return v11;
      }

      *(sub_1000B12AC(v50) + 96) = a1;
      *(sub_1000B12AC(v50) + 88) = a2;
      v30 = v50;
      *(v50 + 4) = a3;
      *(sub_1000B12AC(v30) + 48) = 0;
      *(sub_1000B12AC(v50) + 78) = 0;
      v31 = *a5;
      *(sub_1000B12AC(v50) + 36) = v31;
      v32 = sub_10029CFF4(v50, 5, 0);
      if (v32 || (!*(a5 + 3) ? (v33 = -1) : (v33 = *(a5 + 3)), v34 = v50, v50[19] = v33, v32 = sub_10029E064(*(v34 + 2), 15, 5u, 0, v34 + 12, v33), v32))
      {
        v11 = v32;
        sub_10028E908(v50);
        return v11;
      }

      v45 = a5[1];
      *(sub_1000B12AC(v50) + 72) = v45;
      sub_10028A258(v50, a5[4], a5[3]);
      v46 = *(sub_1003045A0(0x28u) + 8);
      if (v46 <= *(sub_1000B12AC(v50) + 36))
      {
        v47 = (sub_1003045A0(0x28u) + 8);
      }

      else
      {
        v47 = (sub_1000B12AC(v50) + 36);
      }

      v48 = *v47;
      v17 = 0;
      *(sub_1000B12AC(v50) + 36) = v48;
      goto LABEL_23;
    }

    goto LABEL_45;
  }

  v17 = 7;
LABEL_23:
  v20 = v50;
  if (!v50)
  {
    sub_1000D660C();
  }

  v21 = *sub_1000B12AC(v20);
  v22 = *(sub_1000B12AC(v20) + 29);
  if (!v17 && *(sub_1000B12AC(v20) + 16) != 2)
  {
    sub_1000D660C();
  }

  v23 = *(v20 + 2);
  v24 = *(sub_1000B12AC(v20) + 36);
  v25 = *(sub_1000B12AC(v20) + 72);
  v26 = sub_1000CAA48(v20);
  v11 = sub_1002DD500(v21, v22, v23, v24, v25, v26, v17);
  *(sub_1000B12AC(v20) + 16) = 4;
  if (v11 && sub_10000C240() && (sub_10000AF54("SignalMan_LeChannelConnectionRsp failed %!", v11), v27 = sub_10000C050(0x2Fu), os_log_type_enabled(v27, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F7A0();
    if (v17)
    {
      goto LABEL_32;
    }
  }

  else if (v17)
  {
LABEL_32:
    sub_10028EE5C(v20, (v17 + 580));
    return v11;
  }

  v35 = sub_1000B12AC(v20);
  v36 = sub_1000CD5B8(*v35);
  if (v11)
  {
    if (sub_10000C240())
    {
      v37 = *sub_1000B12AC(v20);
      v38 = sub_1000B12AC(v20);
      sub_10000AF54("OI_Sar_SetMTU(%d, %d) failed %!", v37, *(v38 + 36), v11);
      v39 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  v40 = *(sub_1000B12AC(v20) + 96);
  v41 = *(v20 + 2);
  v42 = *(sub_1000B12AC(v20) + 36);
  v43 = sub_1000B12AC(v20);
  v40(v41, v42, *(v43 + 32), v36);
  return v11;
}

uint64_t sub_100290FA4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = sub_1000ABC7C(a1, &v8);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("GetChannel with cid %d failed with status %!", a1, v4);
      v5 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v6 = v8;
    if (!v8)
    {
      sub_1000D660C();
      v6 = v8;
    }

    *(sub_1000B12AC(v6) + 88) = a2;
  }

  return v4;
}

uint64_t sub_10029104C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("L2CAP Disconnect cid=%d(0x%x) , reason=%!", a1, a1, a2);
    v4 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1000ABC7C(a1, &v11))
  {
    return 404;
  }

  if (*(sub_1000B12AC(v11) + 17))
  {
    return 0;
  }

  if (*(sub_1000B12AC(v11) + 16) != 4 && *(sub_1000B12AC(v11) + 16) != 5)
  {
    return 408;
  }

  v6 = v11;
  v7 = *v11;
  if (*v11 == 2)
  {
    sub_10029ECE4(a1);
    v6 = v11;
    return sub_10029125C(v6, a2);
  }

  if (v7 != 4)
  {
    if (v7 == 3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't disconnect fixed of Magnet channels using the signal manager.");
        v8 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 403;
    }

    return sub_10029125C(v6, a2);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Magnet got messed up");
    v9 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000E771C(5006);
  v10 = sub_1000B12AC(v11);
  return sub_1002314B8(*v10);
}

uint64_t sub_10029125C(int *a1, uint64_t a2)
{
  if (!*sub_1000B12AC(a1))
  {
    sub_1000D660C();
  }

  *(sub_1000B12AC(a1) + 16) = 6;
  *(sub_1000B12AC(a1) + 20) = a2;
  v4 = *sub_1000B12AC(a1);
  v5 = sub_1002AB568();
  v6 = sub_1000B12AC(a1);
  v10 = sub_1002AB810("aa", 6, a1, v4, v5, v7, v8, v9, *(v6 + 8));
  if (v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send disconnect, closing channel");
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    sub_10028EE5C(a1, a2);
  }

  return v10;
}

uint64_t sub_10029135C(unsigned int a1)
{
  v11 = 0;
  if (sub_1000ABC7C(a1, &v11))
  {
    return 404;
  }

  if ((*v11 - 3) > 1)
  {
    if (*(sub_1000B12AC(v11) + 17))
    {
      return 0;
    }

    else if (*(sub_1000B12AC(v11) + 16) == 4)
    {
      v3 = v11;
      if (!*sub_1000B12AC(v11))
      {
        sub_1000D660C();
      }

      *(sub_1000B12AC(v3) + 16) = 6;
      *(sub_1000B12AC(v3) + 20) = 436;
      v4 = sub_1002AB568();
      *(sub_1000B12AC(v3) + 28) = v4;
      v5 = *sub_1000B12AC(v3);
      v6 = *(sub_1000B12AC(v3) + 28);
      v7 = *(v3 + 2);
      v8 = sub_1000B12AC(v3);
      v1 = sub_1002DE204(v5, v6, v7, *(v8 + 8));
      if (v1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send disconnect, closing channel");
          v9 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100813F70();
          }
        }

        sub_10028EE5C(v3, 436);
      }
    }

    else
    {
      return 408;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can't disconnect fixed of Magnet channels using the signal manager.");
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 403;
  }

  return v1;
}

uint64_t sub_10029150C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = sub_1000B12AC(a1);
  v41 = 0;
  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  v31 = 0;
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  bzero(&v29 - v6, v8);
  v9 = *(sub_1000B12AC(a1) + 32);
  v30 = &v29;
  if (v4 <= v9)
  {
    if (v4)
    {
      v13 = 0;
      *&v10 = 136446466;
      v29 = v10;
      while (1)
      {
        v14 = *(sub_1000B12AC(a1) + 60);
        if (v13)
        {
          v15 = -4;
        }

        else
        {
          v15 = -6;
        }

        v16 = v15 + v14;
        if ((v4 - v13) >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v4 - v13;
        }

        v18 = sub_10001F788(v7, a2, v17);
        if (v17 != v18)
        {
          v19 = v18;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to get the full payload size (%d), only got %d bytes", v17, v19);
            v20 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v26 = sub_10000C0FC();
              buf = v29;
              v43 = v26;
              v44 = 1024;
              v45 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", &buf, 0x12u);
            }
          }

          v17 = v19;
        }

        LOWORD(v32) = 2 * (v13 == 0) + v17;
        HIWORD(v32) = *(sub_1000B12AC(a1) + 8);
        if (v13)
        {
          sub_10001FF10(&v34 + 8, 2u);
          v21 = &v32;
          v22 = 4;
        }

        else
        {
          v31 = v4;
          sub_10001FF10(&v34 + 8, 3u);
          sub_10001F968(&v34 + 8, &v32, 4uLL, 0);
          v21 = &v31;
          v22 = 2;
        }

        sub_10001F968(&v34 + 8, v21, v22, 0);
        sub_10001F968(&v34 + 8, v7, v17, 2u);
        v33[0] = *(sub_1000B12AC(a1) + 38) == -1;
        v23 = *(a1 + 128);
        *&v35 = a1;
        *&v34 = v23;
        *(a1 + 128) = 0;
        v24 = sub_1000B12AC(a1);
        v25 = sub_1000B85D8(v33, *v24, 0, *(a1 + 4));
        v12 = v25;
        if (v25 != 412)
        {
          if (v25)
          {
            break;
          }
        }

        v13 = (v17 + v13);
        if (v13 == v4)
        {
          return v12;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("LE_L2CAP_FragmentWriteMBUF %!", v12);
        v27 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      return 531;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error, packet too large");
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 472;
  }

  return v12;
}

uint64_t sub_1002918D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a1)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  if (*a1 != 2 && *a1 != 4)
  {
    sub_1000D660C();
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v5 = *(a2 + 4);
  if (v5 <= *(sub_1000B12AC(a1) + 32))
  {
    v25 = v5 + 2 * (*(sub_1000B12AC(a1) + 78) != 0);
    v26 = *(sub_1000B12AC(a1) + 8);
    v27 = *(sub_1000B12AC(a1) + 9);
    sub_10001FF10(&v17 + 8, 2u);
    sub_10001F968(&v17 + 8, &v25, 4uLL, 0);
    sub_1000BAD68(&v17 + 8, a2);
    LOBYTE(v15) = *(sub_1000B12AC(a1) + 38) == -1;
    v9 = *(a1 + 128);
    *&v18 = a1;
    *&v17 = v9;
    *(a1 + 128) = 0;
    BYTE1(v15) = *(a2 + 8) == 626;
    v10 = sub_1000B12AC(a1);
    v11 = sub_1000B85D8(&v15, *v10, 0, *(a1 + 4));
    v8 = v11;
    if (v11)
    {
      if (v11 != 412)
      {
        if (sub_10000C240())
        {
          v12 = sub_1000B12AC(a1);
          sub_10000AF54("OI_ConnectMan_WriteMBUF %! to %p", v8, *v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
          v13 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000B7B40(&v17 + 8);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      v6 = sub_1000B12AC(a1);
      sub_10000AF54("MTU size (%d) exceeded! - data length = %d", *(v6 + 32), v5);
      v7 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 472;
  }

  return v8;
}

void sub_100291AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  if (sub_1000ABC7C(a1, &v15))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Data received for invalid CID %d, ignoring packet", a1);
      v10 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v15))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v13 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_12:
    sub_10080F7A0();
    return;
  }

  if (*(sub_1000B12AC(v15) + 16) == 4)
  {
    v11 = v15;
    v15[21] += a3;
    v12 = *(v11 + 5);
    if (v12)
    {
      v12(a1, a2, a3, 0, a4);
    }

    else
    {
      (*(v11 + 4))(a1, a2, a3, a4, a5);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Data received for connection not in OPEN state, ignoring packet with cid %d", a1);
    v14 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }
  }
}

void sub_100291C84(int *a1, uint64_t a2, int a3, _DWORD *a4, int a5, int a6)
{
  v23 = 0;
  v12 = sub_1000E1FE8(a1);
  v13 = v12;
  if (v12)
  {
    if (!a6)
    {
      if (a3 == 2 && a5 == 4)
      {
        *(v12 + 229) = *a4;
        if (*a4 < 0 && !sub_1002AD818(sub_100291C84, a2, a1, 3))
        {
          return;
        }
      }

      else if (a3 == 3 && a5 == 8)
      {
        *(v12 + 233) = *a4;
      }
    }

    v14 = &word_100B60278;
    v15 = 3;
    do
    {
      v16 = *(v14 - 1);
      if (v16 && ((*(v13 + 233 + (*v14 >> 3)) >> (*v14 & 7)) & 1) != 0)
      {
        v16(a1);
      }

      v14 += 8;
      --v15;
    }

    while (v15);
    goto LABEL_11;
  }

  sub_1000D660C();
  if (!sub_10000C240() || (sub_10000AF54("Received infoResponseCallback from %:, but it appears this device is no longer connected", a1), v17 = sub_10000C050(0x2Fu), !os_log_type_enabled(v17, OS_LOG_TYPE_ERROR)))
  {
LABEL_11:
    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_10080F7A0();
  if (!a2)
  {
    return;
  }

LABEL_12:
  v18 = sub_10028DF3C(a1, &v23);
  if (v18)
  {
    v19 = v18;
    if (sub_10000C240())
    {
      sub_10000AF54("no waiting channel found for completed ACL link %: %!", a1, v19);
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    if (*(sub_1000B12AC(v23) + 16) || *(sub_1000B12AC(v23) + 25) != 1)
    {
      sub_1000D660C();
    }

    *sub_1000B12AC(v23) = v13;
    *(sub_1000B12AC(v23) + 25) = 2;
    v21 = sub_1000B12AC(v23);
    v22 = sub_100305BDC(sub_100290968, (v21 + 10), *(v23 + 8), v23 + 18, 0);
    if (v22)
    {
      sub_100291EC4(v23, v22);
    }
  }
}

void sub_100291EC4(int *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
LABEL_3:

      sub_10028EE5C(a1, a2);
      return;
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

  if (*a1 == 3)
  {
    v4 = *sub_1000B12AC(a1);
    v5 = sub_1002AB568();
    v6 = *(sub_1000B12AC(a1) + 8);
    v10 = sub_1002AB810("aac", 12, a1, v4, v5, v7, v8, v9, v6);
  }

  else
  {
    if (sub_10029CA24(a1) && !sub_10029C92C(a1))
    {
      return;
    }

    v11 = *sub_1000B12AC(a1);
    v12 = sub_1002AB568();
    v10 = sub_1002AB810("aa", 2, a1, v11, v12, v13, v14, v15, *(a1 + 3));
  }

  if (!v10)
  {
    *(sub_1000B12AC(a1) + 16) = 1;
    *(sub_1000B12AC(a1) + 25) = 0;
  }
}

void sub_100291FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = 0;
  if (byte_100B602A0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting connect attempt, PTS error code is overriden to %d", byte_100B602A0);
      v10 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_14:
    sub_1002AB810("aaaa", 3, 0, a1, a4, v7, v8, v9, 0);
    return;
  }

  if ((a2 & 0x1010101) != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt to invalid PSM %d", 407, a2);
      v19 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_14;
  }

  v12 = sub_10023B994(a1);
  if (v12)
  {
    v13 = v12;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_LP_ConnectionAdded failed (%!), rejecting connection", v13);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_20:
    v21 = a1;
    v22 = a3;
    v23 = 4;
LABEL_21:
    sub_1002923EC(v21, v22, v23, a4, v14, v15, v16, v17);
    return;
  }

  if (sub_10028E3EC(2u, &v38, 0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to allocate channel, rejecting connection");
      v20 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_20;
  }

  v24 = v38;
  *(v38 + 3) = a2;
  v25 = sub_1000B12AC(v24);
  v26 = *(a1 + 52);
  *(v25 + 10) = *(a1 + 48);
  *(v25 + 14) = v26;
  *(sub_1000B12AC(v38) + 24) = 1;
  *sub_1000B12AC(v38) = a1;
  *(sub_1000B12AC(v38) + 8) = a3;
  *(sub_1000B12AC(v38) + 29) = a4;
  *(sub_1000B12AC(v38) + 16) = 2;
  if (sub_10000C240())
  {
    v27 = *(v38 + 2);
    v28 = *(v38 + 3);
    v29 = sub_1000B12AC(v38);
    sub_10000AF54("RecvConnectReq cid=%d psm=%d addr=%:", v27, v28, v29 + 10);
    v30 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = sub_10000C0FC();
      *buf = 136446210;
      v40 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v32 = sub_1000B12AC(v38);
  v33 = sub_100296D38(v32 + 10, *(v38 + 2), *(v38 + 3));
  v34 = v38;
  if (v33)
  {
    sub_10028E908(v38);
    if (sub_10000C240())
    {
      sub_10000AF54("Connection refused - invalid PSM");
      v35 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v21 = a1;
    v22 = a3;
    v23 = 2;
    goto LABEL_21;
  }

  if (*v38)
  {
    if ((*(a1 + 228) & 1) == 0)
    {
      *(a1 + 228) = 1;
      v36 = sub_1000B12AC(v34);
      if (sub_1002AD818(sub_100291C84, 0, (v36 + 10), 2))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not ask device for extended features.");
          v37 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }
}

uint64_t sub_1002923EC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1002AB810("aaaa", 3, 0, a1, a4, a6, a7, a8, 0);

  return sub_1000D2538(a1, 19);
}

void sub_100292450(uint64_t a1, int a2, __int16 a3, unsigned int a4, uint64_t a5, int a6)
{
  v27 = 0;
  memset(v26, 0, 44);
  if (sub_10028DB10(a1, a6, &v27))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvConnectRsp, unknown identifier 0x%x, ignoring", a6);
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v27))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v13 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  if (*sub_1000B12AC(v27) == a1)
  {
    if (*(sub_1000B12AC(v27) + 16) == 1)
    {
      if (a4 <= 1 && *(v27 + 2) != a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("RecvConnectRsp, wrong source CID (s/b %d, rcvd %d).  Dropping connection", *(v27 + 2), a2);
          v17 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        v18 = v27;
        v19 = 454;
        goto LABEL_35;
      }

      *(sub_1000B12AC(v27) + 8) = a3;
      *(sub_1000B12AC(v27) + 25) = 3;
      if (a4 == 1)
      {
        v15 = v27;
        v16 = sub_1003045A0(0x2Fu);
        sub_1002AB58C(v15, *(v16 + 8));
        return;
      }

      if (!a4)
      {
        if (sub_10029CB0C() && (*(a1 + 229) & 0x20) != 0)
        {
          sub_1000B12AC(v27);
        }

        v20 = v26;
        v21 = sub_10029C878(v27, 1, v26);
        if (v21 != 1)
        {
          if (v21 == 2)
          {
            v18 = v27;
            v19 = 461;
            goto LABEL_35;
          }

          v20 = 0;
        }

        sub_100292754(v27);
        v22 = v27;
        v23 = *(sub_1000B12AC(v27) + 36);
        v24 = *(sub_1000B12AC(v27) + 38);
        v25 = sub_1000B12AC(v27);
        sub_100292810(v22, v23, v24, *(v25 + 40), v20);
        return;
      }

      v18 = v27;
      v19 = a4 + 450;
LABEL_35:
      sub_10028EE5C(v18, v19);
      return;
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("RecvConnectRsp, unexpected connect RSP, ignoring");
    v14 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_10080F7A0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("RecvConnectRsp not excpected for this ACL handle");
    v12 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1008156F0();
    }
  }
}

uint64_t sub_100292754(int *a1)
{
  v9 = a1;
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = *(sub_1000B12AC(a1) + 16);
  v3 = sub_1000B12AC(a1);
  if (v2 == 4)
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  *(v3 + 16) = v4;
  v8[0] = 0;
  *(sub_1000B12AC(a1) + 26) = 0;
  *(sub_1000B12AC(a1) + 27) = 0;
  v8[1] = &v9;
  LOWORD(v8[0]) = 8;
  v5 = *(sub_1003045A0(0x2Fu) + 10);
  v6 = sub_1000B12AC(v9);
  return sub_10002195C(sub_10029598C, v8, v5, (v6 + 80));
}

uint64_t sub_100292810(int *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (*(sub_1000B12AC(a1) + 16) != 4 && *(sub_1000B12AC(a1) + 16) != 3 && *(sub_1000B12AC(a1) + 16) != 5)
  {
    if (sub_10000C240())
    {
      v26 = sub_1000B12AC(a1);
      sub_10000AF54("invalid state for config (%d)", *(v26 + 16));
      v27 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 408;
  }

  sub_1000B12AC(a1);
  sub_1000B12AC(a1);
  *(sub_1000B12AC(a1) + 36) = a2;
  *(sub_1000B12AC(a1) + 38) = a3;
  v10 = sub_1000B12AC(a1);
  v11 = sub_1000CD5B8(*v10);
  if (!v11)
  {
    if ((a3 - 1) <= 0xFFFD)
    {
      v15 = sub_1000B12AC(a1);
      v22 = sub_100018960(85, sub_100295BA0, v16, v17, v18, v19, v20, v21, *v15);
      if (v22)
      {
        v12 = v22;
        if (sub_10000C240())
        {
          sub_10000AF54("Write flushTO failed %!", v12, (858993460 * (8 * a3)) >> 32);
          v23 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }
        }

        return v12;
      }
    }

    if (a4 != 0xFFFF)
    {
      v24 = sub_1000B12AC(a1);
      v12 = sub_10028ED44(*v24);
      if (v12)
      {
        return v12;
      }
    }

    if (*(sub_1000B12AC(a1) + 25) != 3)
    {
      if (!a5)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    if (*a1 != 4 && *a1 != 2)
    {
      goto LABEL_41;
    }

    v25 = a1;
    if (!*(sub_1000B12AC(a1) + 38))
    {
      v25 = sub_10028D534();
      if (!*(sub_1003045A0(0x2Fu) + 2))
      {
        goto LABEL_41;
      }

      v28 = 0;
      while (1)
      {
        if (v25 != a1 && (*v25 == 4 || *v25 == 2))
        {
          v30 = *sub_1000B12AC(a1);
          if (v30 != *sub_1000B12AC(v25) && *(sub_1000B12AC(v25) + 38) && (*(sub_1000B12AC(v25) + 38) != -1 || (byte_100BCDFEA & 0x40) == 0))
          {
            break;
          }
        }

        ++v28;
        v25 += 36;
        if (v28 >= *(sub_1003045A0(0x2Fu) + 2))
        {
          goto LABEL_41;
        }
      }
    }

    if (*(sub_1000B12AC(v25) + 38) != 0xFFFF)
    {
      if (!a5)
      {
LABEL_42:
        if (*(sub_1000B12AC(a1) + 52))
        {
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
          sub_1000B12AC(a1);
        }
      }

LABEL_44:
      if (*(sub_1000B12AC(a1) + 16) == 4)
      {
        sub_100292754(a1);
      }

      v31 = *sub_1000B12AC(a1);
      v32 = sub_1002AB568();
      v33 = sub_1000B12AC(a1);
      sub_1002AB810("aamsfro", 4, a1, v31, v32, v34, v35, v36, *(v33 + 8));
      v12 = 0;
      *(sub_1000B12AC(a1) + 26) = 2;
      return v12;
    }

LABEL_41:
    if (!a5)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  v12 = v11;
  if (sub_10000C240())
  {
    v13 = sub_1000B12AC(a1);
    sub_10000AF54("OI_Sar_SetMTU(%d, %d) failed %!", *v13, a2, v12);
    v14 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      sub_10080F7A0();
    }
  }

  return v12;
}

void sub_100292C94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = a4;
  v69 = 0;
  v68 = *(sub_1003045A0(0x28u) + 8);
  v67 = -1;
  v66 = 1;
  memset(v65, 0, 44);
  v10 = sub_1000ABC7C(a3, &v69);
  if (v10)
  {
    v11 = v10;
    if (sub_10000C240())
    {
      sub_10000AF54("cid %d not found %!", a3, v11);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        sub_10080F7A0();
        return;
      }
    }

    return;
  }

  if (*v69 != 2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Ignoring configuration request on non-connection channel %d", a3);
      v14 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    return;
  }

  if (!sub_1000B12AC(v69))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid packets.");
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    return;
  }

  if (*sub_1000B12AC(v69) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ConnectMan_RecvConfigReq unexpected CID");
      v13 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }

    return;
  }

  v16 = v69;
  if (*v69 == 2)
  {
    v17 = *(sub_1000B12AC(v69) + 16);
    v16 = v69;
    if (v17 == 3)
    {
      v18 = *(sub_1000B12AC(v69) + 26);
      v16 = v69;
      if (!v18)
      {
        v19 = *(sub_1000B12AC(v69) + 27);
        v16 = v69;
        if (!v19)
        {
          v20 = *(sub_1000B12AC(v69) + 24);
          v16 = v69;
          if (v20)
          {
            v21 = sub_1000B12AC(v69);
            sub_10002242C(*(v21 + 80));
            sub_100292754(v69);
            v16 = v69;
          }
        }
      }
    }
  }

  if (*(sub_1000B12AC(v16) + 16) == 4)
  {
    sub_100292754(v69);
  }

  if ((*(sub_1000B12AC(v69) + 16) == 3 || *(sub_1000B12AC(v69) + 16) == 5) && !*(sub_1000B12AC(v69) + 27))
  {
    v22 = *(sub_1000B12AC(v69) + 16);
    if (*a5)
    {
      if (*(a5 + 2) < 0x30u || *(sub_1000B12AC(v69) + 16) == 5 && (v25 = *(a5 + 2), v25 < *(sub_1000B12AC(v69) + 32)))
      {
        v23 = 1;
        v24 = &v68;
      }

      else
      {
        v26 = *(a5 + 2);
        *(sub_1000B12AC(v69) + 32) = v26;
        v23 = 0;
        v24 = (sub_1000B12AC(v69) + 32);
      }

      v64 = v24;
    }

    else
    {
      v64 = 0;
      v23 = 0;
    }

    v27 = *a5;
    if ((*a5 & 2) != 0)
    {
      if (*(a5 + 3))
      {
        v28 = *(a5 + 3);
        *(sub_1000B12AC(v69) + 34) = v28;
        v27 = *a5;
      }

      else
      {
        v23 = 1;
      }
    }

    if ((v27 & 4) != 0 && *(a5 + 8) >= 2u)
    {
      v23 = 1;
    }

    v29 = sub_10029CB0C();
    if ((v27 & 0x10) == 0)
    {
      if (!v29 || (*(a1 + 229) & 0x20) == 0)
      {
        v30 = 0;
        goto LABEL_56;
      }

      *(sub_1000B12AC(v69) + 78) = 1;
      goto LABEL_55;
    }

    if (v29)
    {
      v31 = *(a5 + 20);
      if (v31 <= 1)
      {
        *(sub_1000B12AC(v69) + 78) = v31;
LABEL_55:
        v30 = sub_1000B12AC(v69) + 78;
LABEL_56:
        if ((*a5 & 8) != 0)
        {
          v34 = sub_10029CB2C(v69, a5, 1, v65);
          v23 = v34;
          if ((*a5 & 0x10) != 0)
          {
            if (v34 == 2)
            {
              v33 = 0;
            }

            else if (BYTE10(v65[0]) - 3 <= 1 && sub_10029CB0C())
            {
              v36 = *(a1 + 229);
              v33 = v65;
              if ((v36 & 0x20) != 0)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v33 = v65;
            }

            goto LABEL_75;
          }

          if (v34 == 2)
          {
            v33 = 0;
          }

          else if (BYTE10(v65[0]) - 3 <= 1 && sub_10029CB0C())
          {
            v35 = *(a1 + 229);
            v33 = v65;
            if ((v35 & 0x20) != 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v33 = v65;
          }
        }

        else
        {
          v33 = 0;
          if ((*a5 & 0x10) != 0)
          {
LABEL_75:
            *(sub_1000B12AC(v69) + 78) = 0;
            v30 = sub_1000B12AC(v69) + 78;
            goto LABEL_76;
          }
        }

        v30 = 0;
        *(sub_1000B12AC(v69) + 78) = 0;
LABEL_76:
        if ((*a5 & 0x20) != 0 && *(a5 + 25) > 1u)
        {
          v40 = v22;
          v41 = 0;
          v42 = 0;
          v23 = 1;
        }

        else
        {
          if (v23 == 2)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Critical negotiation : disconnecting.");
              v37 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            v38 = v69;
            v39 = 452;
LABEL_83:
            sub_10029125C(v38, v39);
            return;
          }

          v40 = v22;
          v41 = 0;
          v42 = v23 == 0;
          if (!v23 && !v6)
          {
            v23 = 0;
            v41 = 1;
            *(sub_1000B12AC(v69) + 27) = 1;
            v42 = 1;
          }
        }

        *(sub_1000B12AC(v69) + 29) = a2;
        if (v64)
        {
          *(sub_1000B12AC(v69) + 31) = 1;
        }

        if ((v6 & 1) == 0)
        {
          v43 = *(sub_1000B12AC(v69) + 31);
          v44 = sub_1000B12AC(v69);
          if (v43)
          {
            *(v44 + 31) = 0;
          }
        }

        if (!v33)
        {
          v33 = v65;
          v55 = sub_10029C878(v69, 1, v65);
          if (v55 != 1)
          {
            if (v55 == 2)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Critical negotiation : disconnecting.");
                v56 = sub_10000C050(0x2Fu);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }

              v38 = v69;
              if (v42)
              {
                v39 = 0;
              }

              else
              {
                v39 = (v23 + 450);
              }

              goto LABEL_83;
            }

            v33 = 0;
          }
        }

        v45 = v33 + 14;
        if (!v33)
        {
          v45 = 0;
        }

        v46 = v33 + 1;
        if (!v33)
        {
          v46 = 0;
        }

        v47 = v33 + 18;
        if (!v33)
        {
          v47 = 0;
        }

        v63 = v47;
        v61 = v45;
        v62 = v46;
        sub_100293468(v69, v23, v6);
        if (v41)
        {
          if (*(sub_1000B12AC(v69) + 26) == 3)
          {
            if (v40 != 5)
            {
              v48 = *(sub_1000B12AC(v69) + 32);
              v49 = sub_10029EED0(*(v69 + 2));
              if (v49)
              {
                v50 = v49;
                if (sub_10000C240())
                {
                  sub_10000AF54("Queue Tag serviced failed with status %!", v50, v61, v62, v63, v30);
                  v51 = sub_10000C050(0x2Fu);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    sub_10080F7A0();
                  }
                }
              }

              v52 = *(sub_1000B12AC(v69) + 96);
              v53 = *(v69 + 2);
              v54 = sub_1000B12AC(v69);
              v52(v53, *(v54 + 36), v48, 0);
            }
          }

          else if (!*(sub_1000B12AC(v69) + 26))
          {
            v57 = v69;
            v58 = *(sub_1000B12AC(v69) + 36);
            v59 = *(sub_1000B12AC(v69) + 38);
            v60 = sub_1000B12AC(v69);
            sub_100292810(v57, v58, v59, *(v60 + 40), v33);
          }
        }

        return;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("We don't support FCS.");
      v32 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v30 = 0;
    v23 = 1;
    goto LABEL_56;
  }
}

uint64_t sub_100293468(int *a1, int a2, char a3)
{
  v6 = *sub_1000B12AC(a1);
  v7 = *(sub_1000B12AC(a1) + 29);
  v8 = sub_1000B12AC(a1);
  result = sub_1002AB810("aaamsfro", 5, 0, v6, v7, v9, v10, v11, *(v8 + 8));
  if (!a2 && (a3 & 1) == 0)
  {
    *(sub_1000B12AC(a1) + 27) = 3;
    result = sub_1000B12AC(a1);
    if (*(result + 26) == 3)
    {
      v13 = sub_1000B12AC(a1);
      sub_10002242C(*(v13 + 80));
      *(sub_1000B12AC(a1) + 16) = 4;
      *(sub_1000B12AC(a1) + 25) = 0;
      result = sub_1000B12AC(a1);
      *(result + 28) = 0;
    }
  }

  return result;
}

void sub_1002935A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, __int16 a10)
{
  v35 = 0;
  memset(v34, 0, 44);
  v14 = sub_1000ABC7C(a3, &v35);
  if (v14)
  {
    v15 = v14;
    if (sub_10000C240())
    {
      sub_10000AF54("cid %d not found %!", a3, v15, *v34, *&v34[16], *&v34[24], *&v34[40]);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v35))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v18 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_10080F7A0();
    return;
  }

  if (*sub_1000B12AC(v35) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ConnectMan_RecvConfigRsp unexpected CID");
      v17 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }

    return;
  }

  if (*(sub_1000B12AC(v35) + 16) != 3 && *(sub_1000B12AC(v35) + 16) != 5 || *(sub_1000B12AC(v35) + 26) != 2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid state for configuration");
    v20 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  if (a10)
  {
    if (a8)
    {
      LODWORD(a8) = sub_10029CB2C(v35, a8, 0, v34);
    }

    if (a9)
    {
      v19 = *a9;
    }

    else
    {
      v19 = 0;
    }

    *(sub_1000B12AC(v35) + 78) = v19;
    if (a8 != 2)
    {
      v24 = v35;
      v25 = *(sub_1000B12AC(v35) + 36);
      v26 = *(sub_1000B12AC(v35) + 38);
      v27 = sub_1000B12AC(v35);
      sub_100292810(v24, v25, v26, *(v27 + 40), v34);
      return;
    }

    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1000B12AC(v35);
  if (a10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("config rsp = %!\n", v21 | 0x1CCu);
      v23 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10029125C(v35, (v21 + 450));
  }

  else
  {
    v28 = *(v22 + 16);
    if ((a4 & 1) == 0)
    {
      *(sub_1000B12AC(v35) + 26) = 3;
      if (*(sub_1000B12AC(v35) + 27) == 3)
      {
        *(sub_1000B12AC(v35) + 16) = 4;
        *(sub_1000B12AC(v35) + 25) = 0;
        v29 = sub_1000B12AC(v35);
        sub_10002242C(*(v29 + 80));
        *(sub_1000B12AC(v35) + 28) = 0;
      }
    }

    if (*(sub_1000B12AC(v35) + 26) == 3 && *(sub_1000B12AC(v35) + 27) == 3 && v28 != 5)
    {
      v30 = *(sub_1000B12AC(v35) + 32);
      v31 = *(sub_1000B12AC(v35) + 96);
      v32 = *(v35 + 2);
      v33 = sub_1000B12AC(v35);
      v31(v32, *(v33 + 36), v30, 0);
    }
  }
}

void sub_100293948(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v22 = 0;
  v8 = sub_1000ABC7C(a2, &v22);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("No channel exists for CID %d (%!)", a2, v9);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002AD1D8(a1, 2, 0, a2, v5, a4, v10, v11);
    return;
  }

  if (!sub_1000B12AC(v22))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v14 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_15:
    sub_10080F7A0();
    return;
  }

  if (*(sub_1000B12AC(v22) + 8) != v5)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid source CID %d", v5);
    v15 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_15;
  }

  if (*sub_1000B12AC(v22) == a1)
  {
    *(sub_1000B12AC(v22) + 29) = a4;
    v16 = *sub_1000B12AC(v22);
    v17 = *(sub_1000B12AC(v22) + 29);
    v18 = *(v22 + 2);
    sub_1000B12AC(v22);
    sub_1002AB810("aa", 7, 0, v16, v17, v19, v20, v21, v18);
    sub_10028EE5C(v22, 431);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_ConnectMan_RecvDisconnectReq unexpected CID");
    v13 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100815770();
    }
  }
}

void sub_100293B60(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v18 = 0;
  v8 = sub_1000ABC7C(a2, &v18);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("No channel exists for CID %d (%!)", a2, v9);
      v10 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002DE00C(a1, 2, 0, a2, v5, v4);
    return;
  }

  if (!sub_1000B12AC(v18))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v12 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_15:
    sub_10080F7A0();
    return;
  }

  if (*(sub_1000B12AC(v18) + 8) != v5)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid source CID %d", v5);
    v13 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_15;
  }

  if (*sub_1000B12AC(v18) == a1)
  {
    *(sub_1000B12AC(v18) + 29) = v4;
    v14 = *sub_1000B12AC(v18);
    v15 = *(sub_1000B12AC(v18) + 29);
    v16 = *(v18 + 2);
    v17 = sub_1000B12AC(v18);
    sub_1002DE3A8(v14, v15, v16, *(v17 + 8));
    sub_10028EE5C(v18, 431);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_ConnectMan_RecvDisconnectReq unexpected CID");
    v11 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100815770();
    }
  }
}

void sub_100293D68(uint64_t a1, int a2, unsigned int a3)
{
  v10 = 0;
  if (!sub_1000ABC7C(a3, &v10) && sub_1000B12AC(v10) && *(sub_1000B12AC(v10) + 16) == 6 && *(sub_1000B12AC(v10) + 8) == a2 && *(v10 + 2) == a3)
  {
    if (*sub_1000B12AC(v10) == a1)
    {
      *(sub_1000B12AC(v10) + 28) = 0;
      v8 = v10;
      v9 = sub_1000B12AC(v10);
      sub_10028EE5C(v8, *(v9 + 20));
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_ConnectMan_RecvDisconnectRsp unexpected CID");
      v7 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid packet");
    v6 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_100293EB0(uint64_t a1, unsigned int a2, int a3)
{
  v8 = 0;
  if (!sub_1000ABC7C(a2, &v8) && sub_1000B12AC(v8) && *(sub_1000B12AC(v8) + 16) == 6 && *(sub_1000B12AC(v8) + 8) == a3 && *(v8 + 2) == a2)
  {
    if (*sub_1000B12AC(v8) == a1)
    {
      sub_10028EE5C(v8, 436);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("LE_ConnectMan_RecvDisconnectRsp unexpected CID");
      v7 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100815770();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid packet");
    v6 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100293FE0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v36 = 0;
  if (byte_100B602A0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting connect attempt, PTS error code is overriden to %d", byte_100B602A0);
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v12 = byte_100B602A0;
    v13 = a1;
    v14 = a7;
    v15 = v9;
    return sub_1002DD500(v13, v14, v15, 0, 0, 0, v12);
  }

  if ((a2 - 1) >= 0x7F && (a2 & 0xFF80) != 0x80)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt due to invalid PSM %d", 582, a2);
      v21 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

LABEL_11:
    v13 = a1;
    v14 = a7;
    v15 = v9;
    v12 = 2;
    return sub_1002DD500(v13, v14, v15, 0, 0, 0, v12);
  }

  if ((a3 & 0xFFC0) != 0x40)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - Rejecting connect attempt due to source CID out of range", 589);
      v23 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v13 = a1;
    v14 = a7;
    v15 = v9;
    v12 = 9;
    return sub_1002DD500(v13, v14, v15, 0, 0, 0, v12);
  }

  v35 = 0;
  sub_10028D9A0(a3, a1, &v35);
  if (v35)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%! - Rejecting connect attempt due to source CID already connected", 10);
      v22 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v13 = a1;
    v14 = a7;
    v15 = v9;
    v12 = 10;
    return sub_1002DD500(v13, v14, v15, 0, 0, 0, v12);
  }

  if (sub_10028E3EC(2u, &v36, 1))
  {
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("%! - rejecting connect attempt due to ailure to allocate channel", 584);
    v24 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v25 = v36;
  *(v36 + 3) = a2;
  v26 = sub_1000B12AC(v25);
  v27 = *(a1 + 52);
  *(v26 + 10) = *(a1 + 48);
  *(v26 + 14) = v27;
  v28 = sub_1000B12AC(v36);
  v29 = *(a1 + 51);
  *(v28 + 121) = *(a1 + 48);
  *(v28 + 124) = v29;
  *(sub_1000B12AC(v36) + 24) = 1;
  *sub_1000B12AC(v36) = a1;
  *(sub_1000B12AC(v36) + 8) = v9;
  *(sub_1000B12AC(v36) + 29) = a7;
  if (14 * a5 < a4)
  {
    LOWORD(a4) = 14 * a5;
  }

  *(sub_1000B12AC(v36) + 32) = a4;
  *(sub_1000B12AC(v36) + 60) = a5;
  v30 = sub_10028A18C(v36, a6);
  if (v30)
  {
    sub_10028E908(v36);
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("%! - rejecting connect attempt due to failure to init remote parameters, returned %!(%d), ejecting connection", 584, v30, v30);
    v31 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_10080F7A0();
LABEL_32:
    v13 = a1;
    v14 = a7;
    v15 = v9;
    v12 = 4;
    return sub_1002DD500(v13, v14, v15, 0, 0, 0, v12);
  }

  *(sub_1000B12AC(v36) + 16) = 2;
  v33 = sub_1000B12AC(v36);
  result = sub_100296E7C(v33 + 121, a1, *(v36 + 2), *(v36 + 3), a7, a8);
  if (result)
  {
    sub_10028E908(v36);
    if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt due to failure to find a handler for this channel", 582);
      v34 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100294430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9)
{
  v44 = 0;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  if (byte_100B602A0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting connect attempt, PTS error code is overriden to %d", byte_100B602A0);
      v13 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v14 = byte_100B602A0;
    v15 = a1;
    v16 = a8;
    v17 = a3;
    v18 = a4;
  }

  else
  {
    if (((a2 - 1) < 0x7F || (a2 & 0xFF80) == 0x80) && sub_100297238(a2))
    {
      if (a5 < 0x40 || a6 < 0x40)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("%! - rejecting connect attempt due to invalid MTU (%d)/MPS (%d) size", a5, a6);
          v36 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        v15 = a1;
        v16 = a8;
        v17 = a3;
        v18 = a4;
        v14 = 11;
        return sub_1002DD6CC(v15, v16, v17, v18, 0, 0, 0, v14);
      }

      v23 = 0;
      v24 = 14 * a6;
      if (14 * a6 >= a5)
      {
        v24 = a5;
      }

      v42 = v24;
      do
      {
        v25 = *(a4 + 2 * v23);
        if ((v25 & 0xFFC0) != 0x40)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! - Rejecting connect attempt due to source CID out of range", 589);
            v37 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v15 = a1;
          v16 = a8;
          v17 = a3;
          v18 = a4;
          v14 = 9;
          return sub_1002DD6CC(v15, v16, v17, v18, 0, 0, 0, v14);
        }

        v43 = 0;
        sub_10028D9A0(v25, a1, &v43);
        if (v43)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! - Rejecting connect attempt due to source CID already connected", 10);
            v38 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v15 = a1;
          v16 = a8;
          v17 = a3;
          v18 = a4;
          v14 = 10;
          return sub_1002DD6CC(v15, v16, v17, v18, 0, 0, 0, v14);
        }

        if (sub_10028E3EC(2u, &v44, 1))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("%! - rejecting connect attempt due to failure to allocate channel", 584);
            v39 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          result = sub_1002DD500(a1, a8, *(a4 + 2 * v23), 0, 0, 0, 4);
          if (v23)
          {
            return sub_10028EA60(v23, v45);
          }

          return result;
        }

        v26 = v44;
        *(v45 + v23) = v44;
        *(v26 + 3) = a2;
        v27 = sub_1000B12AC(v26);
        v28 = *(a1 + 52);
        *(v27 + 10) = *(a1 + 48);
        *(v27 + 14) = v28;
        v29 = sub_1000B12AC(v44);
        v30 = *(a1 + 51);
        *(v29 + 121) = *(a1 + 48);
        *(v29 + 124) = v30;
        *(sub_1000B12AC(v44) + 24) = 1;
        *sub_1000B12AC(v44) = a1;
        v31 = *(a4 + 2 * v23);
        *(sub_1000B12AC(v44) + 8) = v31;
        *(sub_1000B12AC(v44) + 29) = a8;
        *(sub_1000B12AC(v44) + 32) = v42;
        *(sub_1000B12AC(v44) + 60) = a6;
        *(sub_1000B12AC(v44) + 120) = 1;
        v32 = sub_10028A18C(v44, a7);
        if (v32)
        {
          v40 = v32;
          sub_10028EA60((v23 + 1), v45);
          if (sub_10000C240())
          {
            sub_10000AF54("%! - rejecting connect attempt due to failure to init remote parameters, returned %!(%d), ejecting connection", 584, v40, v40);
            v41 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v15 = a1;
          v16 = a8;
          v17 = a3;
          v18 = a4;
          v14 = 4;
          return sub_1002DD6CC(v15, v16, v17, v18, 0, 0, 0, v14);
        }

        *(sub_1000B12AC(v44) + 16) = 2;
        ++v23;
      }

      while (a3 != v23);
      result = sub_100296FF8(a1 + 48, a1, a3, a4, *(v44 + 3), a8, a9);
      if (!result)
      {
        return result;
      }

      sub_10028EA60(a3, v45);
      if (sub_10000C240())
      {
        sub_10000AF54("%! - rejecting connect attempt due to failure to find a handler for this channel", 582);
        v34 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("%! - rejecting connect attempt due to invalid PSM %d", 582, a2);
      v35 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v15 = a1;
    v16 = a8;
    v17 = a3;
    v18 = a4;
    v14 = 2;
  }

  return sub_1002DD6CC(v15, v16, v17, v18, 0, 0, 0, v14);
}

void sub_1002949D4(uint64_t a1, __int16 a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  v40 = 0;
  if (sub_10028DC28(a1, a7, &v40))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeConnectRsp, unknown identifier 0x%x, ignoring", a7);
      v14 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(v40))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v16 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_10080F7A0();
    return;
  }

  if (*sub_1000B12AC(v40) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeConnectRsp not excpected for this ACL handle");
      v15 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1008156F0();
      }
    }

    return;
  }

  if (*(sub_1000B12AC(v40) + 16) != 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("RecvLeConnectRsp, unexpected connect RSP, ignoring");
    v22 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  if ((a6 - 7) >= 2 && a6 != 5)
  {
    if (a6)
    {
      v27 = v40;
      v28 = (a6 + 580);
    }

    else
    {
      if ((a2 & 0xFFC0) == 0x40)
      {
        *(sub_1000B12AC(v40) + 8) = a2;
        if (14 * a4 >= a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = 14 * a4;
        }

        *(sub_1000B12AC(v40) + 32) = v17;
        *(sub_1000B12AC(v40) + 60) = a4;
        v18 = sub_10028A18C(v40, a5);
        v19 = v18;
        if (v18)
        {
          v20 = v18;
          if (!sub_10000C240())
          {
            goto LABEL_51;
          }

          sub_10000AF54("LE_L2CAP_InitRemoteParams returned %d\n", v19);
          v21 = sub_10000C050(0x2Fu);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v30 = sub_10029CFF4(v40, 5, 0);
          v31 = v30;
          if (v30)
          {
            v20 = v30;
            if (!sub_10000C240())
            {
              goto LABEL_51;
            }

            sub_10000AF54("BT_L2CAP_Flow_InitChannel returned %d\n", v31);
            v32 = sub_10000C050(0x2Fu);
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_51;
            }
          }

          else
          {
            v20 = sub_10029E064(*(v40 + 2), 15, 5u, 0, v40 + 12, v40[19]);
            if (!v20)
            {
              goto LABEL_52;
            }

            if (!sub_10000C240() || (sub_10000AF54("BT_L2CAP_Queue_Register returned %d\n", v20), v33 = sub_10000C050(0x2Fu), !os_log_type_enabled(v33, OS_LOG_TYPE_ERROR)))
            {
LABEL_51:
              sub_10028EE5C(v40, 4);
LABEL_52:
              if (!v20)
              {
                v34 = sub_1000B12AC(v40);
                v35 = sub_1000CD5B8(*v34);
                *(sub_1000B12AC(v40) + 16) = 4;
                v36 = *(sub_1000B12AC(v40) + 96);
                v37 = *(v40 + 2);
                v38 = *(sub_1000B12AC(v40) + 36);
                v39 = sub_1000B12AC(v40);
                v36(v37, v38, *(v39 + 32), v35);
              }

              return;
            }
          }
        }

        sub_10080F7A0();
        goto LABEL_51;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("destination CID out of range");
        v29 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v27 = v40;
      v28 = 9;
    }

    sub_10028EE5C(v27, v28);
    return;
  }

  v23 = sub_100007618(2uLL, 0x1000040BDFB0063uLL);
  if (!v23)
  {
    sub_10028E908(v40);
    sub_10028EE5C(v40, 1164);
  }

  *v23 = *(v40 + 2);
  v24 = *(a1 + 256);
  if (!v24)
  {
    v24 = sub_1000BAE38(0, 0);
    *(a1 + 256) = v24;
  }

  sub_1000B8B8C(v24, v23, 0);
  if (sub_10000C240())
  {
    sub_10000AF54("Start Pairing");
    v25 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = sub_10000C0FC();
      *buf = 136446210;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1002E73A0(a1, 1);
}

void sub_100294ED4(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, int a5, int a6, uint64_t a7, int a8)
{
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v50 = a2;
  v49 = 0;
  v56 = 0;
  v55 = 0;
  v15 = sub_10028DD40(a1, a8, &v50, v59, &v49, v57);
  if (v49)
  {
    for (i = 0; i < v49; ++i)
    {
      v17 = *(v57 + i);
      *v17 = 0;
      sub_10000C1E8(*(v17 + 112));
    }
  }

  if (v15)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeEnhancedConnectRsp, unknown identifier 0x%x, ignoring", a8);
      v18 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  if (!sub_1000B12AC(*&v59[0]))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid packets.");
    v20 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_16:
    sub_10080F7A0();
    return;
  }

  if (*sub_1000B12AC(*&v59[0]) != a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("RecvLeEnhancedConnectRsp not excpected for this ACL handle");
      v19 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1008156F0();
      }
    }

    return;
  }

  if (*(sub_1000B12AC(*&v59[0]) + 16) != 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("RecvLeEnhancedConnectRsp, unexpected connect RSP, ignoring");
    v25 = sub_10000C050(0x2Fu);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_16;
  }

  if ((a7 & 0xFFFFFFFB) != 0)
  {
    if (a7 <= 8 && ((1 << a7) & 0x1A0) != 0)
    {
      v21 = sub_100007618(2uLL, 0x1000040BDFB0063uLL);
      if (!v21)
      {
        sub_10028F064(v59, a2, 1164);
      }

      *v21 = *(*&v59[0] + 4);
      v22 = *(a1 + 256);
      if (!v22)
      {
        v22 = sub_1000BAE38(0, 0);
        *(a1 + 256) = v22;
      }

      sub_1000B8B8C(v22, v21, 0);
      if (sub_10000C240())
      {
        sub_10000AF54("Start Pairing");
        v23 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = sub_10000C0FC();
          *buf = 136446210;
          v52 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1002E73A0(a1, 1);
      return;
    }

    v42 = (a7 + 580);
    v43 = a2;
LABEL_62:
    sub_10028F064(v59, v43, v42);
    return;
  }

  if (!a2)
  {
LABEL_60:
    v45 = *(sub_1000B12AC(*&v59[0]) + 104);
    v46 = *(sub_1000B12AC(*&v59[0]) + 36);
    v47 = sub_1000B12AC(*&v59[0]);
    v45(a2, &v55, v46, *(v47 + 32), a7);
    if ((a7 & 0xFFFFFFFB) == 0)
    {
      return;
    }

    v43 = a2;
    v42 = 1164;
    goto LABEL_62;
  }

  if (14 * a5 >= a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = 14 * a5;
  }

  v27 = a2;
  v28 = v59;
  v29 = &v55;
  while (1)
  {
    v31 = *a3++;
    v30 = v31;
    if ((v31 & 0xFFC0) != 0x40)
    {
      break;
    }

    *(sub_1000B12AC(*v28) + 8) = v30;
    *(sub_1000B12AC(*v28) + 32) = v26;
    *(sub_1000B12AC(*v28) + 60) = a5;
    v32 = *v28;
    *v29 = *(*v28 + 2);
    v33 = sub_10028A18C(v32, a6);
    v34 = v33;
    if (v33)
    {
      v35 = v33;
      if (!sub_10000C240())
      {
        goto LABEL_50;
      }

      sub_10000AF54("LE_L2CAP_InitRemoteParams returned %d\n", v34);
      v36 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v37 = sub_10029CFF4(*v28, 5, 0);
    v38 = v37;
    if (v37)
    {
      v35 = v37;
      if (!sub_10000C240())
      {
        goto LABEL_50;
      }

      sub_10000AF54("BT_L2CAP_Flow_InitChannel returned %d\n", v38);
      v36 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

LABEL_49:
      v39 = sub_10000C0FC();
      *buf = 136446466;
      v52 = v39;
      v53 = 1024;
      v54 = 0xFFFF;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      goto LABEL_50;
    }

    v35 = sub_10029E064(*(*v28 + 2), 15, 6u, 0, *v28 + 12, (*v28)[19]);
    if (!v35)
    {
      goto LABEL_51;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("BT_L2CAP_Queue_Register returned %d\n", v35);
      v36 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    sub_10028EE5C(*v28, 4);
LABEL_51:
    if (v35)
    {
      a7 = v35;
      goto LABEL_60;
    }

    v40 = sub_1000B12AC(*v28);
    sub_1000CD5B8(*v40);
    v41 = *v28++;
    *(sub_1000B12AC(v41) + 16) = 4;
    v29 = (v29 + 2);
    if (!--v27)
    {
      a7 = 0;
      goto LABEL_60;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("remote CID out of range");
    v44 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_10028EE5C(*v28, 9);
}

uint64_t sub_100295548(__int128 *a1, unsigned int a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v12 = sub_1003045A0(0x28u);
  if (a2)
  {
    v13 = *(v12 + 8);
    v14 = a2;
    v15 = v21;
    while (1)
    {
      v16 = sub_1000ABC7C(*a3, v15);
      if (v16 || v13 < a4)
      {
        break;
      }

      if (*(sub_1000B12AC(*v15) + 36) >= a4 || *(sub_1000B12AC(*v15) + 60) >= a5)
      {
        v19 = 483;
        return sub_1002DDCF0(a1, v6, v19);
      }

      *(sub_1000B12AC(*v15) + 36) = a4;
      *(sub_1000B12AC(*v15) + 60) = a5;
      if (*(sub_1000B12AC(*v15) + 112))
      {
        v18 = sub_1000B12AC(*v15);
        (*(v18 + 112))(*a3, a4, a5, 0);
      }

      ++v15;
      ++a3;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
      v19 = 589;
    }

    else
    {
      v19 = 483;
    }
  }

  else
  {
LABEL_13:
    v19 = 0;
  }

  return sub_1002DDCF0(a1, v6, v19);
}

uint64_t sub_1002956B0(uint64_t a1, uint64_t a2, int a3)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 5;
  result = sub_10028DD40(a1, a3, &v15, v16, 0, 0);
  if (!result && v15)
  {
    for (i = 0; i < v15; ++i)
    {
      v6 = *(sub_1000B12AC(*(v16 + i)) + 36);
      v7 = 14 * *(sub_1000B12AC(*(v16 + i)) + 60);
      v8 = sub_1000B12AC(*(v16 + i));
      if (v7 <= v6)
      {
        v9 = 14 * *(v8 + 60);
      }

      else
      {
        v9 = *(v8 + 36);
      }

      *(sub_1000B12AC(*(v16 + i)) + 32) = v9;
      result = sub_1000B12AC(*(v16 + i));
      if (*(result + 112))
      {
        v10 = *(sub_1000B12AC(*(v16 + i)) + 112);
        v11 = *(v16 + i);
        v12 = *(v11 + 4);
        v13 = *(sub_1000B12AC(v11) + 36);
        v14 = sub_1000B12AC(*(v16 + i));
        result = v10(v12, v13, *(v14 + 60), a2);
      }
    }
  }

  return result;
}

void sub_100295800(uint64_t a1, int a2, int a3)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 5;
  if (sub_10000C240())
  {
    sub_10000AF54("LE_ConnectMan_RecvCommandRejected Received id=%d result :%d", a3, a2);
    v6 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (!sub_10028DD40(a1, a3, &v7, v8, 0, 0))
  {
    sub_10028F064(v8, v7, 4700);
  }
}

uint64_t sub_1002958EC(uint64_t a1, __int16 a2)
{
  v2 = 0;
  while (qword_100B60270[v2] != a1)
  {
    v2 += 2;
    if (v2 == 6)
    {
      goto LABEL_6;
    }
  }

  qword_100B60270[v2] = 0;
LABEL_6:
  v3 = qword_100B60270;
  v4 = 3;
  while (*v3)
  {
    v3 += 2;
    if (!--v4)
    {
      return 104;
    }
  }

  v5 = 0;
  *v3 = a1;
  *(v3 + 4) = a2;
  return v5;
}

uint64_t sub_100295954(uint64_t a1)
{
  v1 = 0;
  while (qword_100B60270[v1] != a1)
  {
    v1 += 2;
    if (v1 == 6)
    {
      return 404;
    }
  }

  result = 0;
  qword_100B60270[v1] = 0;
  return result;
}

uint64_t sub_10029598C(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP Config Timeout on cid %d, psm %d", *(v1 + 4), *(v1 + 6));
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    sub_1000D660C();
  }

  if (*v1 != 2 || *(sub_1000B12AC(v1) + 16) != 3 || *(sub_1000B12AC(v1) + 26) || *(sub_1000B12AC(v1) + 27) || !*(sub_1000B12AC(v1) + 24))
  {
    if (sub_10000C240())
    {
      if (*v1 == 2)
      {
        v3 = sub_1000B12AC(v1);
        v4 = sub_100304810(v3 + 10);
      }

      else
      {
        v4 = "group";
      }

      sub_10000AF54("Configuration process timed out, remote device %s", v4);
      v5 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v6 = 464;
    return sub_10029125C(v1, v6);
  }

  sub_100292754(v1);
  if (sub_10029CB0C() && (*(*sub_1000B12AC(v1) + 229) & 0x20) != 0)
  {
    sub_1000B12AC(v1);
  }

  v8 = *(sub_1000B12AC(v1) + 36);
  v9 = *(sub_1000B12AC(v1) + 38);
  v10 = sub_1000B12AC(v1);
  result = sub_100292810(v1, v8, v9, *(v10 + 40), 0);
  if (result)
  {
    v6 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("ConfigReqHelper failed %!", v6);
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_10029125C(v1, v6);
  }

  return result;
}

void sub_100295BA0(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("Failed to write FlushTO %!", result);
    v2 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100295C20(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v27 = 0;
  if (!a3)
  {
    sub_1000D660C();
  }

  v28 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  if (a2 == 2)
  {
    v6 = *(a3 + 4);
    sub_10001FF10(&v19 + 8, 2u);
    v7 = v6;
    v8 = v6 >> 8;
    goto LABEL_5;
  }

  v9 = sub_1000ABC7C(a2, &v27);
  if (v9)
  {
    return v9;
  }

  if (*v27 == 3)
  {
    v10 = *(a3 + 4);
    if (v10 <= *sub_1000CD958(v27))
    {
      sub_10001FF10(&v19 + 8, 2u);
      if (a2 == 43)
      {
        LOBYTE(v18[0]) = a1[129] != 1;
LABEL_17:
        sub_1000BAD68(&v19 + 8, a3);
        if (v27)
        {
          v13 = *(v27 + 128);
          *(v27 + 128) = 0;
        }

        else
        {
          v13 = 0;
        }

        *&v19 = v13;
        v14 = sub_1000B85D8(v18, a1, 0, a2);
        v9 = v14;
        if (v14)
        {
          if (v14 != 412)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("OI_ConnectMan_WriteMBUF %!", v9);
              v15 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }

          sub_1000B7B40(&v19 + 8);
        }

        return v9;
      }

      v7 = v10;
      v8 = v10 >> 8;
LABEL_5:
      LOBYTE(v28) = v7;
      BYTE1(v28) = v8;
      HIWORD(v28) = a2;
      sub_10001F968(&v19 + 8, &v28, 4uLL, 0);
      if (a2 == 2)
      {
        LOBYTE(v18[0]) = 1;
        *&v20 = 0;
        if (v27)
        {
          *&v19 = *(v27 + 128);
          *(v27 + 128) = 0;
        }

        else
        {
          *&v19 = 0;
        }
      }

      else
      {
        LOBYTE(v18[0]) = *(sub_1000CD958(v27) + 2) == -1;
        *&v20 = v27;
      }

      goto LABEL_17;
    }

    if (sub_10000C240())
    {
      v11 = sub_1000CD958(v27);
      sub_10000AF54("MTU size (%d) exceeded! - data length = %d", *v11, v10);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 472;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CID %d is not a fixed channel", a2);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 532;
  }
}

void sub_100295EF0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  if (sub_1000ABC7C(a2, &v27))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can't find channel %d, dropping packet.", a2);
      v10 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v11 = v27;
    *(v27 + 84) += a4;
    if ((*(sub_1000CD958(v11) + 4) & 1) != 0 && !*(a1 + 2) || (*(sub_1000CD958(v27) + 4) & 2) != 0 && *(a1 + 2) == 4)
    {
      v12 = sub_1000CD958(v27);
      (*(v12 + 24))(a1, a3, a4, a5);
    }

    else
    {
      sub_1000D660C();
      if (sub_10000C240())
      {
        v20 = *(a1 + 2);
        v21 = sub_1000CD958(v27);
        sub_10000AF54("Fixed Channel 0x%x on wrong physical link 0x%x, should be 0x%x", a2, v20, *(v21 + 4));
        v22 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }

      v23 = sub_1000D6178(5u, v13, v14, v15, v16, v17, v18, v19, a1);
      v24 = sub_1000D6410(a1, v23);
      if (v24)
      {
        v25 = v24;
        if (sub_10000C240())
        {
          sub_10000AF54("Disconnect failed with status %!", v25, 19);
          v26 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10080FEE0();
          }
        }
      }
    }
  }
}

uint64_t sub_1002960B8()
{
  v0 = sub_1003045A0(0x2Fu);
  qword_100B602A8 = sub_1001BBBD8(16 * *v0, 0x1080040EF48E34EuLL);
  if (qword_100B602A8)
  {
    return 0;
  }

  else
  {
    return 106;
  }
}

uint64_t sub_100296104(unsigned int a1, uint64_t a2)
{
  v10 = 0;
  if (a2)
  {
    if (sub_1000ABC7C(a1, &v10))
    {
      return 434;
    }

    v4 = *sub_100297178(v10);
    if (!v4)
    {
      return 434;
    }

    if (*v4 != *a2 || *(v4 + 2) != *(a2 + 4))
    {
      while (1)
      {
        v6 = v4;
        v4 = v4[2];
        if (!v4)
        {
          return 434;
        }

        if (*v4 == *a2 && *(v4 + 2) == *(a2 + 4))
        {
          goto LABEL_18;
        }
      }
    }

    v6 = 0;
LABEL_18:
    v8 = v4[2];
    if (v6)
    {
      v9 = v6 + 2;
    }

    else
    {
      v9 = sub_100297178(v10);
    }

    *v9 = v8;
    sub_1000D2538(v4[1], 19);
    sub_10000C1E8(v4);
    return 0;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1002961E4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (!a3)
  {
    sub_1000D660C();
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    if (!*sub_100297178(a1))
    {
      return 426;
    }

    v6 = 2;
  }

  v19[0] = *(a3 + 4) + 2;
  v19[1] = 2;
  v19[2] = *(a1 + 6);
  sub_10001FF10(&v11 + 8, 2u);
  sub_10001F968(&v11 + 8, v19, 6uLL, 0);
  sub_1000BAD68(&v11 + 8, a3);
  LOBYTE(v10[0]) = 0;
  *&v11 = 0;
  *&v12 = a1;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = &xmmword_100B5FA50;
  }

  v8 = sub_1000B85D8(v10, v7, v6, *(a1 + 4));
  if (v8)
  {
    sub_1000B7B40(&v11 + 8);
  }

  return v8;
}

void sub_100296308(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 >= 6)
  {
    if (!a2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/l2cap/group.c", 509, "buf");
    }

    v4 = a3;
    v5 = *a2;
    if (!*a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("psm should be non-zero");
        v6 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100810070(v6);
        }
      }
    }

    if (*sub_1003045A0(0x2Fu))
    {
      v7 = 0;
      v8 = 0;
      v9 = v4 - 2;
      do
      {
        if (v5 == *(qword_100B602A8 + v7))
        {
          v10 = *(qword_100B602A8 + v7 + 8);
          if (v10)
          {
            v10(v5, a2 + 1, v9);
          }
        }

        ++v8;
        v7 += 16;
      }

      while (v8 < *sub_1003045A0(0x2Fu));
    }
  }
}

uint64_t sub_100296410(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_Init: configuration parameter is deprecated");
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1003045E4(a1, 47);
  }

  if (HIDWORD(xmmword_100BCE2E0))
  {
    return 0;
  }

  if (!sub_1003045A0(0x2Fu))
  {
    sub_1000D660C();
  }

  if (!sub_1003045A0(0x2Fu))
  {
    return 127;
  }

  v5 = sub_1003045A0(0x2Fu);
  qword_100B602B0 = sub_1001BBBD8(40 * *v5, 0x1080040E93A93CCuLL);
  if (!qword_100B602B0)
  {
    return 106;
  }

  v6 = sub_10028D540();
  if (v6)
  {
    v3 = v6;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ChanMan_Init failed %!", v3);
      v7 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_39:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v8 = sub_1002960B8();
    if (v8)
    {
      v3 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_GroupMan_Init failed %!", v3);
        v9 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v10 = sub_1002AB4A0();
      if (v10)
      {
        v3 = v10;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_SignalMan_Init failed %!", v3);
          v11 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v12 = sub_10029F16C();
        if (v12)
        {
          v3 = v12;
          if (sub_10000C240())
          {
            sub_10000AF54("Sar_Init failed %!", v3);
            v13 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v14 = sub_10029EF3C();
          if (v14)
          {
            v3 = v14;
            if (sub_10000C240())
            {
              sub_10000AF54("Queue_Init failed %!", v3);
              v15 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            if (BYTE9(xmmword_100BCE038) != 1 || (sub_10028FDA0(), !v16))
            {
              v3 = 0;
              HIDWORD(xmmword_100BCE2E0) = 1;
              return v3;
            }

            v3 = v16;
            if (sub_10000C240())
            {
              sub_10000AF54("LE_SecurityCbInit failed %!", v3);
              v17 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_100296718(unsigned __int16 *a1)
{
  for (i = 192; ; ++i)
  {
    v3 = i;
    if ((sub_100296770(i) & 1) == 0)
    {
      break;
    }

    if (v3 >= 0xFF)
    {
      return 104;
    }
  }

  result = 0;
  *a1 = i;
  return result;
}

uint64_t sub_100296770(int a1)
{
  if (!*sub_1003045A0(0x2Fu))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (*(qword_100B602B0 + v2) != a1 || *(qword_100B602B0 + v2 + 32) != 1)
  {
    ++v3;
    v2 += 40;
    if (v3 >= *sub_1003045A0(0x2Fu))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1002967FC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (!HIDWORD(xmmword_100BCE2E0))
  {
    sub_1000D660C();
  }

  if ((v3 & 0x1010101) != 1)
  {
    return 482;
  }

  return sub_100296870(v3, 0, a2, 0);
}

uint64_t sub_100296870(int a1, char a2, uint64_t a3, uint64_t a4)
{
  if (sub_100296CB0(a1) & 1) != 0 || (sub_100296770(a1))
  {
    return 402;
  }

  if (*sub_1003045A0(0x2Fu))
  {
    v9 = 0;
    v10 = 0;
    while (*(qword_100B602B0 + v9))
    {
      ++v10;
      v9 += 40;
      if (v10 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_8;
      }
    }

    result = 0;
    v12 = qword_100B602B0 + v9;
    *v12 = a1;
    *(v12 + 8) = a3;
    *(v12 + 16) = a4;
    *(v12 + 32) = a2;
    *(v12 + 33) = 1;
  }

  else
  {
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register L2CAP: no resources.");
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  return result;
}

uint64_t sub_100296978(int a1, uint64_t a2)
{
  if (!HIDWORD(xmmword_100BCE2E0))
  {
    sub_1000D660C();
  }

  if ((a1 - 1) >= 0x7F && (a1 & 0xFF80) != 0x80)
  {
    return 482;
  }

  return sub_100296870(a1, 1, 0, a2);
}

uint64_t sub_100296A00(int a1, int a2)
{
  v4 = sub_10028D534();
  if (!*sub_1003045A0(0x2Fu))
  {
    return 120;
  }

  v5 = 0;
  v6 = 0;
  while (*(qword_100B602B0 + v5) != a1 || *(qword_100B602B0 + v5 + 32) != a2)
  {
    ++v6;
    v5 += 40;
    if (v6 >= *sub_1003045A0(0x2Fu))
    {
      return 120;
    }
  }

  if (*(sub_1003045A0(0x2Fu) + 2))
  {
    v8 = 0;
    while (*v4 != 2 || !*(sub_1000B12AC(v4) + 16) || !*(sub_1000B12AC(v4) + 24) || *(v4 + 6) != a1)
    {
      v4 += 144;
      if (++v8 >= *(sub_1003045A0(0x2Fu) + 2))
      {
        goto LABEL_14;
      }
    }

    return 141;
  }

  else
  {
LABEL_14:
    result = 0;
    v9 = qword_100B602B0 + v5;
    *v9 = 0;
    *(v9 + 32) = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
  }

  return result;
}

uint64_t sub_100296B2C(int a1, char a2)
{
  sub_10028D534();
  if (!*sub_1003045A0(0x2Fu))
  {
    return 120;
  }

  v4 = 0;
  v5 = 0;
  while (*(qword_100B602B0 + v4) != a1 || *(qword_100B602B0 + v4 + 32) != 1)
  {
    ++v5;
    v4 += 40;
    if (v5 >= *sub_1003045A0(0x2Fu))
    {
      return 120;
    }
  }

  result = 0;
  *(qword_100B602B0 + v4 + 33) = a2;
  return result;
}

uint64_t sub_100296BCC(_WORD *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = 0;
  v3 = 61433;
  v4 = 4103;
  do
  {
    if (v2)
    {
      return 0;
    }

    if ((v4 & 0x101) != 1)
    {
      sub_1000D660C();
    }

    v5 = sub_100296CB0(v4);
    if ((v5 & 1) == 0)
    {
      *a1 = v4;
    }

    v2 = v5 ^ 1;
    v6 = v4 + 2;
    if (((v4 + 2) & 0x100) != 0)
    {
      v6 = v4 + 258;
    }

    if (v6 <= 0x1007u)
    {
      v4 = 4103;
    }

    else
    {
      v4 = v6;
    }

    --v3;
  }

  while (v3);
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate PSM: no resources.");
    v7 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 104;
}

uint64_t sub_100296CB0(int a1)
{
  if (!*sub_1003045A0(0x2Fu))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (*(qword_100B602B0 + v2) != a1 || *(qword_100B602B0 + v2 + 32))
  {
    ++v3;
    v2 += 40;
    if (v3 >= *sub_1003045A0(0x2Fu))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100296D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*sub_1003045A0(0x2Fu))
  {
    v6 = 0;
    v7 = 0;
    while (*(qword_100B602B0 + v6) != a3 || *(qword_100B602B0 + v6 + 32))
    {
      ++v7;
      v6 += 40;
      if (v7 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_6;
      }
    }

    (*(qword_100B602B0 + v6 + 8))(a3, a1, a2);
    return 0;
  }

  else
  {
LABEL_6:
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d over %d", 407, a3, 0);
      v8 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("addr %:", a1);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 407;
  }
}

uint64_t sub_100296E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*sub_1003045A0(0x2Fu))
  {
    v11 = 0;
    v12 = 0;
    while (*(qword_100B602B0 + v11) != a4 || *(qword_100B602B0 + v11 + 32) != 1 || *(qword_100B602B0 + v11 + 33) != 1)
    {
      ++v12;
      v11 += 40;
      if (v12 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_7;
      }
    }

    v16[0] = 0;
    v16[1] = 0;
    (*(qword_100B602B0 + v11 + 16))(a4, a2, a1, a3, a6, v16);
    return 0;
  }

  else
  {
LABEL_7:
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d over %d)", 407, a4, 1);
      v13 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("addr %:", a1);
      v14 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 407;
  }
}

uint64_t sub_100296FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*sub_1003045A0(0x2Fu))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (*(qword_100B602B0 + v13) == a5 && *(qword_100B602B0 + v13 + 32) == 1)
      {
        v15 = *(qword_100B602B0 + v13 + 24);
        if (v15)
        {
          break;
        }
      }

      ++v14;
      v13 += 40;
      if (v14 >= *sub_1003045A0(0x2Fu))
      {
        goto LABEL_7;
      }
    }

    v19[0] = 0;
    v19[1] = 0;
    v15(a5, a2, a1, a3, a4, a7, v19);
    return 0;
  }

  else
  {
LABEL_7:
    if (sub_10000C240())
    {
      sub_10000AF54("%! (%d over %d)", 407, a5, 1);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("addr %:", a1);
      v17 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 407;
  }
}

uint64_t sub_100297178(uint64_t a1)
{
  if (*a1 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid access: type %d, cid %d, psm %d", *a1, *(a1 + 4), *(a1 + 6));
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (*a1 != 1)
    {
      sub_1000D660C();
    }
  }

  result = *(a1 + 104);
  if (!result)
  {
    sub_1000D660C();
    return *(a1 + 104);
  }

  return result;
}

BOOL sub_100297238(int a1)
{
  if (!*sub_1003045A0(0x2Fu))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  while (*(qword_100B602B0 + v2) != a1)
  {
    ++v3;
    v2 += 40;
    if (v3 >= *sub_1003045A0(0x2Fu))
    {
      return 0;
    }
  }

  return *(qword_100B602B0 + v2 + 24) != 0;
}

uint64_t sub_1002972C0(uint64_t *a1, void *a2)
{
  if (getenv("BT_HCI_TRANSPORT"))
  {
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
    *__str = 0u;
    v19 = 0u;
    __strlcpy_chk();
    v4 = strtok(__str, ":");
    if (v4)
    {
      v5 = v4;
      sub_100304AF8("Searching for transport: %s\n", v4);
      v6 = &off_100AE9A70;
      do
      {
        v7 = *v6;
        if (!*v6)
        {
          sub_100304AF8("FATAL ERROR - HCI Transport\t%s could not be matched.\n", v5);
          return 1065;
        }

        ++v6;
      }

      while (strcmp(*(v7 + 8), v5));
      v8 = strtok(0, ":");
      if (v8)
      {
        v9 = sub_100297634(v8);
        if (!v9)
        {
          return 1065;
        }

        v10 = v9;
        v11 = strtok(0, ":");
        if (v11)
        {
          *(v10 + 16) = strdup(v11);
        }

        goto LABEL_26;
      }

      v10 = sub_100297634(*(v7 + 8));
      if (v10)
      {
LABEL_26:
        result = 0;
        *a1 = v10;
        *a2 = v7;
        return result;
      }
    }

    return 1065;
  }

  sub_100304AF8("BT_HCI_TRANSPORT not set - Attempting to read from plist.\n");
  v14 = sub_10009B9DC(v12, v13);
  if (v14 <= 4)
  {
    if (v14 <= 1)
    {
      if (!v14)
      {
        sub_100304AF8("HCI Transport is set to USB\n");
LABEL_39:
        result = 0;
        *a2 = &unk_100B51F48;
        v16 = &unk_100B51EC8;
        goto LABEL_40;
      }

      if (v14 != 1)
      {
LABEL_38:
        sub_100304AF8("HCI Transport is unknown - Setting to USB\n");
        goto LABEL_39;
      }

      sub_100304AF8("HCI Transport is set to H4\n");
      result = 0;
      v17 = &unk_100B519C8;
    }

    else if (v14 == 2)
    {
      sub_100304AF8("HCI Transport is set to H4DS\n");
      result = 0;
      v17 = &unk_100B51B10;
    }

    else if (v14 == 3)
    {
      sub_100304AF8("HCI Transport is set to H4BC\n");
      result = 0;
      v17 = &unk_100B51A68;
    }

    else
    {
      sub_100304AF8("HCI Transport is set to H5\n");
      result = 0;
      v17 = &unk_100B51BB0;
    }

    *a2 = v17;
    v16 = &unk_100B518C8;
    goto LABEL_40;
  }

  if (v14 <= 7)
  {
    if (v14 != 5)
    {
      if (v14 == 6)
      {
        sub_100304AF8("HCI Transport is set to APPLEBT\n");
        result = 0;
        *a2 = &unk_100B51820;
        v16 = &unk_100B517A0;
      }

      else
      {
        sub_100304AF8("HCI Transport is set to PCIE Skywalk\n");
        result = 0;
        *a2 = &unk_100B515E0;
        v16 = &unk_100B51560;
      }

      goto LABEL_40;
    }

    sub_100304AF8("BCSP Transport not supported - Setting to USB\n");
    goto LABEL_39;
  }

  if (v14 == 8)
  {
    sub_100304AF8("HCI Transport is set to PCIE SRS\n");
    result = 0;
    *a2 = &unk_100B51700;
    v16 = &unk_100B51680;
    goto LABEL_40;
  }

  if (v14 == 9)
  {
    sub_100304AF8("HCI Transport is set to APPLE PCIE\n");
    result = 0;
    *a2 = &unk_100B51E28;
    v16 = &unk_100B51DA8;
    goto LABEL_40;
  }

  if (v14 != 10)
  {
    goto LABEL_38;
  }

  sub_100304AF8("HCI Transport is set to virtual\n");
  result = 0;
  *a2 = &unk_100B53ED0;
  v16 = &unk_100B53E50;
LABEL_40:
  *a1 = v16;
  return result;
}

uint64_t sub_100297634(const char *a1)
{
  sub_100304AF8("Searching for driver: %s\n", a1);
  for (i = &off_100AE9AD8; ; ++i)
  {
    v3 = *i;
    if (!*i)
    {
      break;
    }

    if (!strcmp(*(v3 + 8), a1))
    {
      return v3;
    }
  }

  sub_100304AF8("FATAL ERROR - HCI Driver\t %s could not be matched.\n", a1);
  return v3;
}

void sub_1002976B0(unsigned __int16 *a1)
{
  v2 = *(a1 + 3);
  v3 = "???";
  v4 = "???";
  if (v2 <= 2)
  {
    v4 = off_100AE9B28[v2];
  }

  if (*(a1 + 2) == 1)
  {
    v3 = "E_RETRANSMIT_TX_XMIT";
  }

  if (*(a1 + 2))
  {
    v5 = v3;
  }

  else
  {
    v5 = "E_RETRANSMIT_TX_WAIT_F";
  }

  sub_100304AF8("cid=0x%x, txState=%s, rxState=%s, nextTxSeq=%d, expectedACKSeq=%d, expectedTxSeq=%d, bufferSeq=%d, remoteBusy=%d, localbusy=%d", *a1, v5, v4, a1[2], a1[3], a1[4], a1[5], *(a1 + 15), *(a1 + 16));
  sub_100304AF8("sRejListSize=%d, retryCount=%d, rnrSent=%d, rejActioned=%d, srejActioned=%d, sRejSaveReqSeq=%d, sendRej=%d, bufferSeqSrej=%d, framesSent=%d\n", a1[72], *(a1 + 146), *(a1 + 147), *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), a1[76], a1[77]);
  v6 = "YES";
  if (*(a1 + 40))
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (!*(a1 + 41))
  {
    v6 = "NO";
  }

  sub_100304AF8("retransmissionTimer=%s, monitorTimer=%s\n", v7, v6);
}

uint64_t sub_1002977D4(int *a1)
{
  *(*(sub_1000B12AC(a1) + 128) + 2) = 0;
  v2 = *(*(sub_1000B12AC(a1) + 128) + 16);
  v3 = *(sub_1000B12AC(a1) + 128);
  v4 = *(v3 + 14);
  *(v3 + 14) = 0;
  if (v2 == 1)
  {

    return sub_100297860(a1, 1, v4);
  }

  else
  {

    return sub_1000BC368(a1, 1, v4);
  }
}

uint64_t sub_100297860(uint64_t a1, char a2, char a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  v13 = 0u;
  v16 = 0;
  v11 = 0;
  LOBYTE(v12) = *(sub_1000B12AC(a1) + 38) == -1;
  *(&v12 + 1) = *sub_1000B12AC(a1);
  LODWORD(v13) = 0;
  WORD2(v13) = *(a1 + 4);
  WORD3(v13) = 256;
  BYTE8(v13) = 0;
  v6 = sub_1000B12AC(a1);
  v7 = (sub_1000BC224(a1, 2, a2, a3, *(*(v6 + 128) + 10), &v16 + 2) + 4);
  WORD5(v13) = 2 * (*(sub_1000B12AC(a1) + 78) != 0) + v7;
  v16 = (v7 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0));
  *(&v16 + 1) = ((v7 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0)) >> 8);
  WORD1(v16) = *(sub_1000B12AC(a1) + 8);
  sub_10001FF10(v14 + 8, 2u);
  sub_10001F968(v14 + 8, &v16, v7, 2u);
  if (*(sub_1000B12AC(a1) + 78))
  {
    sub_10029C6AC(v14 + 8, &v11);
    sub_10001F968(v14 + 8, &v11, 2uLL, 2u);
  }

  v8 = sub_1000BC58C(&v12);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send S-Frame %!.", v8);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(*(sub_1000B12AC(a1) + 128) + 147) = 1;
  }

  return v8;
}

uint64_t sub_100297A98(int *a1, char a2)
{
  result = sub_1000B12AC(a1);
  *(*(result + 128) + 156) = a2;
  return result;
}

uint64_t sub_100297AC4(int *a1, int a2)
{
  v3 = sub_1000B12AC(a1);
  v4 = sub_1000B47B8(*(*(v3 + 128) + 176));
  v8 = v4;
  if (v4)
  {
    while (1)
    {
      v5 = sub_1000BC720(v4);
      if (*(v5 + 38) == a2)
      {
        return *(v5 + 48);
      }

      sub_1000BC828(&v8);
      v4 = v8;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Could not find frame %d in retransmission list", a2);
      v7 = sub_10000C050(0x2Fu);
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000E09C0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100297B70(int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2 >> 7;
  v11 = *(*(sub_1000B12AC(a1) + 128) + 8);
  v12 = (a2 >> 1) & 0x3F;
  if ((v10 & 1) == 0)
  {
    if (v11 != v12)
    {
      goto LABEL_19;
    }

    v13 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v13 || v13 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v14 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v15 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v14 <= v13)
      {
        if (v13 - v15 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_19;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v15) & 0x3Fu) < v13)
      {
        goto LABEL_19;
      }
    }

    v19 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v19;
    sub_1000B4F34(a1, v13, 0);
    sub_1000B4B20(a1, a3, a4, a5);
LABEL_16:
    sub_1000B0390(a1);
    v20 = sub_1000B12AC(a1);
    result = 0;
    *(*(v20 + 128) + 3) = 0;
    return result;
  }

  if (v11 != v12)
  {
    goto LABEL_19;
  }

  v16 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v16 && v16 <= *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    goto LABEL_18;
  }

  v17 = *(*(sub_1000B12AC(a1) + 128) + 6);
  v18 = *(*(sub_1000B12AC(a1) + 128) + 6);
  if (v17 <= v16)
  {
    if (v16 - v18 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v18) & 0x3Fu) >= v16)
  {
LABEL_18:
    if (*(*(sub_1000B12AC(a1) + 128) + 2))
    {
      goto LABEL_19;
    }

    v36 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v36;
    sub_1000B4F34(a1, v16, 1);
    sub_1000B4B20(a1, a3, a4, a5);
    if (*(*(sub_1000B12AC(a1) + 128) + 148))
    {
      *(*(sub_1000B12AC(a1) + 128) + 148) = 0;
    }

    else
    {
      v37 = sub_1002993EC(a1, v16, 0);
      if (v37)
      {
        v38 = v37;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to retransmit I-Frames %!.", v38);
          v39 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      sub_1000BE1E4(a1, 0);
    }

    goto LABEL_16;
  }

LABEL_19:
  v22 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v23 = *(sub_1000B12AC(a1) + 54) + v22;
  v24 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v23 > 0x3F)
  {
    if (v12 < v24)
    {
      v26 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v26) & 0x3Fu) <= v12)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (v24 > v12)
    {
      goto LABEL_38;
    }

    v25 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v25 < v12)
    {
      goto LABEL_38;
    }
  }

  v27 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v28 = *(sub_1000B12AC(a1) + 54) + v27;
  v29 = *(*(sub_1000B12AC(a1) + 128) + 8);
  if (v28 > 0x3F)
  {
    if (v12 <= v29)
    {
      v30 = *(*(sub_1000B12AC(a1) + 128) + 8);
      if (v30 + *(sub_1000B12AC(a1) + 54) - 64 <= v12)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v12 <= v29)
  {
    goto LABEL_38;
  }

  v31 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v31 || v31 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v32 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v33 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v32 <= v31)
    {
      if (v31 - v33 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
LABEL_38:
        v35 = sub_1000B12AC(a1);
        sub_1002976B0(*(v35 + 128));
        return 544;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v33) & 0x3Fu) < v31)
    {
      goto LABEL_38;
    }
  }

  v34 = (a2 >> 7) & 1;
  if (v34 && *(*(sub_1000B12AC(a1) + 128) + 2))
  {
    goto LABEL_38;
  }

  sub_1000B4F34(a1, v31, v34);
  return 0;
}

uint64_t sub_10029809C(int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a2 >> 1) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    v11 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v11 || v11 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v12 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v13 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v12 <= v11)
      {
        if (v11 - v13 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_14;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v13) & 0x3Fu) < v11)
      {
        goto LABEL_14;
      }
    }

    if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && (*(*(sub_1000B12AC(a1) + 128) + 151) & 1) == 0 && *(*(sub_1000B12AC(a1) + 128) + 144) == 1)
    {
      sub_100299D40(a1, a3);
      sub_10029A130(a1);
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_10029A234(a1, a3, a4, a5);
      v14 = *(*(sub_1000B12AC(a1) + 128) + 152);
      *(*(sub_1000B12AC(a1) + 128) + 10) = v14;
      sub_1000B0390(a1);
      v15 = 0;
      *(*(sub_1000B12AC(a1) + 128) + 3) = 0;
      return v15;
    }
  }

LABEL_14:
  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    v16 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v16 || v16 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v17 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v18 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v17 <= v16)
      {
        if (v16 - v18 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_31;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v18) & 0x3Fu) < v16)
      {
        goto LABEL_31;
      }
    }

    if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && *(*(sub_1000B12AC(a1) + 128) + 151) == 1 && *(*(sub_1000B12AC(a1) + 128) + 144) == 1)
    {
      sub_100299D40(a1, a3);
      sub_10029A130(a1);
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_10029A234(a1, a3, a4, a5);
      v19 = *(*(sub_1000B12AC(a1) + 128) + 152);
      *(*(sub_1000B12AC(a1) + 128) + 10) = v19;
      v20 = sub_100299F14(a1);
      if (v20)
      {
        v21 = v20;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send a REJ %!", v21);
          v22 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v15 = 0;
      *(*(sub_1000B12AC(a1) + 128) + 3) = 1;
      return v15;
    }
  }

LABEL_31:
  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    v23 = (a2 >> 8) & 0x3F;
    if (*(*(sub_1000B12AC(a1) + 128) + 6) > v23 || v23 > *(*(sub_1000B12AC(a1) + 128) + 4))
    {
      v24 = *(*(sub_1000B12AC(a1) + 128) + 6);
      v25 = *(*(sub_1000B12AC(a1) + 128) + 6);
      if (v24 <= v23)
      {
        if (v23 - v25 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
        {
          goto LABEL_43;
        }
      }

      else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v25) & 0x3Fu) < v23)
      {
        goto LABEL_43;
      }
    }

    if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && *(*(sub_1000B12AC(a1) + 128) + 144) >= 2u)
    {
      sub_100299D40(a1, a3);
      sub_10029A130(a1);
      sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
      sub_10029A234(a1, a3, a4, a5);
      return 0;
    }
  }

LABEL_43:
  if (*(*(sub_1000B12AC(a1) + 128) + 8) != v10)
  {
    goto LABEL_52;
  }

  v26 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v26 || v26 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v27 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v28 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v27 <= v26)
    {
      if (v26 - v28 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_52;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v28) & 0x3Fu) < v26)
    {
      goto LABEL_52;
    }
  }

  if (((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2))
  {
    sub_100299D40(a1, a3);
    v37 = (*(*(sub_1000B12AC(a1) + 128) + 8) + 1) & 0x3F;
    *(*(sub_1000B12AC(a1) + 128) + 8) = v37;
    v38 = a1;
    v39 = (a2 >> 8) & 0x3F;
    v40 = (a2 >> 7) & 1;
LABEL_125:
    sub_1000B4F34(v38, v39, v40);
    return 0;
  }

LABEL_52:
  v29 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v30 = *(sub_1000B12AC(a1) + 54) + v29;
  v31 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v30 > 0x3F)
  {
    if (v10 < v31)
    {
      v33 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v33) & 0x3Fu) <= v10)
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    if (v31 > v10)
    {
      goto LABEL_73;
    }

    v32 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v32 < v10)
    {
      goto LABEL_73;
    }
  }

  v34 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v35 = *(sub_1000B12AC(a1) + 54) + v34;
  v36 = *(*(sub_1000B12AC(a1) + 128) + 8);
  if (v35 > 0x3F)
  {
    if (v10 <= v36)
    {
      v41 = *(*(sub_1000B12AC(a1) + 128) + 8);
      if (v41 + *(sub_1000B12AC(a1) + 54) - 64 <= v10)
      {
        goto LABEL_73;
      }
    }
  }

  else if (v10 <= v36)
  {
    goto LABEL_73;
  }

  v42 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v42 || v42 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v43 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v44 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v43 <= v42)
    {
      if (v42 - v44 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_73;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v44) & 0x3Fu) < v42)
    {
      goto LABEL_73;
    }
  }

  if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && (*(*(sub_1000B12AC(a1) + 128) + 151) & 1) == 0)
  {
    sub_100299D40(a1, a3);
    sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
    v61 = sub_100299DEC(a1, (a2 >> 1) & 0x3F);
    if (v61)
    {
      v62 = v61;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to send SREJ : %!", v62);
        v63 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    return 0;
  }

LABEL_73:
  v45 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v46 = *(sub_1000B12AC(a1) + 54) + v45;
  v47 = *(*(sub_1000B12AC(a1) + 128) + 10);
  if (v46 > 0x3F)
  {
    if (v10 < v47)
    {
      v49 = *(*(sub_1000B12AC(a1) + 128) + 10);
      if (((*(sub_1000B12AC(a1) + 54) + v49) & 0x3Fu) <= v10)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    if (v47 > v10)
    {
      goto LABEL_94;
    }

    v48 = *(*(sub_1000B12AC(a1) + 128) + 10);
    if (*(sub_1000B12AC(a1) + 54) + v48 < v10)
    {
      goto LABEL_94;
    }
  }

  v50 = *(*(sub_1000B12AC(a1) + 128) + 10);
  v51 = *(sub_1000B12AC(a1) + 54) + v50;
  v52 = *(*(sub_1000B12AC(a1) + 128) + 8);
  if (v51 > 0x3F)
  {
    if (v10 <= v52)
    {
      v53 = *(*(sub_1000B12AC(a1) + 128) + 8);
      if (v53 + *(sub_1000B12AC(a1) + 54) - 64 <= v10)
      {
        goto LABEL_94;
      }
    }
  }

  else if (v10 <= v52)
  {
    goto LABEL_94;
  }

  v54 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v54 || v54 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v55 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v56 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v55 <= v54)
    {
      if (v54 - v56 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
        goto LABEL_94;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v56) & 0x3Fu) < v54)
    {
      goto LABEL_94;
    }
  }

  if ((((a2 >> 7) & 1) == 0 || !*(*(sub_1000B12AC(a1) + 128) + 2)) && *(*(sub_1000B12AC(a1) + 128) + 151) == 1)
  {
    v40 = (a2 >> 7) & 1;
    v38 = a1;
    v39 = (a2 >> 8) & 0x3F;
    goto LABEL_125;
  }

LABEL_94:
  if (!*(*(sub_1000B12AC(a1) + 128) + 144) || !*(*(sub_1000B12AC(a1) + 128) + 144))
  {
    goto LABEL_114;
  }

  v57 = 0;
  while (*(*(sub_1000B12AC(a1) + 128) + 2 * v57 + 18) != v10)
  {
    if (*(*(sub_1000B12AC(a1) + 128) + 144) <= ++v57)
    {
      goto LABEL_114;
    }
  }

  if (*(*(sub_1000B12AC(a1) + 128) + 144) && *(*(sub_1000B12AC(a1) + 128) + 18) == v10)
  {
    goto LABEL_114;
  }

  v58 = (a2 >> 8) & 0x3F;
  if (*(*(sub_1000B12AC(a1) + 128) + 6) > v58 || v58 > *(*(sub_1000B12AC(a1) + 128) + 4))
  {
    v59 = *(*(sub_1000B12AC(a1) + 128) + 6);
    v60 = *(*(sub_1000B12AC(a1) + 128) + 6);
    if (v59 <= v58)
    {
      if (v58 - v60 > *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
      {
LABEL_114:
        if (*(*(sub_1000B12AC(a1) + 128) + 8 * v10 + 184))
        {
          v64 = (a2 >> 8) & 0x3F;
          if (*(*(sub_1000B12AC(a1) + 128) + 6) <= v64 && v64 <= *(*(sub_1000B12AC(a1) + 128) + 4))
          {
            goto LABEL_121;
          }

          v65 = *(*(sub_1000B12AC(a1) + 128) + 6);
          v66 = *(*(sub_1000B12AC(a1) + 128) + 6);
          if (v65 > v64)
          {
            if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v66) & 0x3Fu) < v64)
            {
              goto LABEL_123;
            }

            goto LABEL_121;
          }

          if (v64 - v66 <= *(*(*(sub_1000B12AC(a1) + 128) + 176) + 32))
          {
LABEL_121:
            if (((a2 >> 7) & 1) != 0 && *(*(sub_1000B12AC(a1) + 128) + 2))
            {
              goto LABEL_123;
            }

            v40 = (a2 >> 7) & 1;
            v38 = a1;
            v39 = (a2 >> 8) & 0x3F;
            goto LABEL_125;
          }
        }

LABEL_123:
        v67 = sub_1000B12AC(a1);
        sub_1002976B0(*(v67 + 128));
        return 545;
      }
    }

    else if (((*(*(*(sub_1000B12AC(a1) + 128) + 176) + 32) + v60) & 0x3Fu) < v58)
    {
      goto LABEL_114;
    }
  }

  if (((a2 >> 7) & 1) != 0 && *(*(sub_1000B12AC(a1) + 128) + 2))
  {
    goto LABEL_114;
  }

  sub_100299D40(a1, a3);
  sub_1000B4F34(a1, (a2 >> 8) & 0x3F, (a2 >> 7) & 1);
  LOWORD(a3) = *(*(sub_1000B12AC(a1) + 128) + 18);
  memset(__src, 0, 126);
  if (*(*(sub_1000B12AC(a1) + 128) + 144) >= 2u)
  {
    v70 = 0;
    while (1)
    {
      v15 = sub_100299B28(a1, a3, 0);
      if (v15)
      {
        break;
      }

      if (v70 == 62)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not find txSeq %d in our SREJ list", v10);
          v75 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        goto LABEL_130;
      }

      LODWORD(a3) = *(*(sub_1000B12AC(a1) + 128) + 2 * v70++ + 20);
      if (a3 == v10)
      {
        LOBYTE(a3) = v10;
        goto LABEL_142;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send SREJ: %!", v15);
      v71 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_142:
    v72 = *(*(sub_1000B12AC(a1) + 128) + 144);
    if ((v72 + ~v70) >= 0x40u)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Number of sRejFramesRemaining is too large %d", (v72 + ~v70));
        v73 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          sub_1008157EC(v73);
        }
      }

      goto LABEL_130;
    }

    sub_1000B12AC(a1);
    __memmove_chk();
    *(__src + (v72 + ~v70)) = a3;
    v74 = sub_1000B12AC(a1);
    memmove((*(v74 + 128) + 18), __src, 0x7EuLL);
    *(*(sub_1000B12AC(a1) + 128) + 144) = v72 - v70;
    if (v15)
    {
      goto LABEL_131;
    }
  }

  else
  {
    sub_1000D660C();
LABEL_130:
    v15 = 538;
LABEL_131:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send SREJ list : %!", v15);
      v69 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v15;
}

uint64_t sub_100299018(int *a1)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 156) != 1 || !*(sub_1000B12AC(a1) + 70))
  {
    return 0;
  }

  if (*(*(sub_1000B12AC(a1) + 128) + 164))
  {
    v2 = *(*(sub_1000B12AC(a1) + 128) + 164);
    v3 = sub_1000B12AC(a1);
    v4 = sub_1000B7ADC(v2, (5243 * (*(v3 + 70) >> 2)) >> 17);
  }

  else
  {
    v10[1] = a1 + 1;
    v10[0] = 2;
    v7 = (5243 * (*(sub_1000B12AC(a1) + 70) >> 2)) >> 17;
    v8 = sub_1000B12AC(a1);
    v4 = sub_10002195C(sub_10029A2D4, v10, v7, (*(v8 + 128) + 164));
  }

  v5 = v4;
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register timer %!", v5);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v5;
}

double sub_10029915C(uint64_t a1)
{
  if (*(sub_1000B12AC(a1) + 128))
  {
    v2 = *(sub_1000B12AC(a1) + 128);
    sub_1000BBDD0(*(v2 + 22));
  }

  else
  {
    v2 = sub_100007618(0x2C8uLL, 0x10300400E0FA8D3uLL);
    *(sub_1000B12AC(a1) + 128) = v2;
  }

  *v2 = *(a1 + 4);
  v2[2] = 1;
  *(v2 + 7) = 0;
  v2[16] = 0;
  *(v2 + 3) = 0;
  v2[11] = 0;
  *(v2 + 18) = 0;
  *(v2 + 38) = 0;
  v2[156] = 1;
  *(v2 + 20) = 0;
  *(v2 + 42) = 0;
  v3 = sub_1000BAE38(0, 0);
  result = 0.0;
  *(v2 + 184) = 0u;
  v5 = v2 + 184;
  *(v5 - 1) = v3;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 19) = 0u;
  *(v5 + 20) = 0u;
  *(v5 + 21) = 0u;
  *(v5 + 22) = 0u;
  *(v5 + 23) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 25) = 0u;
  *(v5 + 26) = 0u;
  *(v5 + 27) = 0u;
  *(v5 + 28) = 0u;
  *(v5 + 29) = 0u;
  *(v5 + 30) = 0u;
  *(v5 + 31) = 0u;
  *(v5 + 64) = 0;
  *(v5 + 130) = 0;
  return result;
}

uint64_t sub_10029925C(int *a1)
{
  result = sub_1000B12AC(a1);
  v3 = *(result + 128);
  if (v3)
  {
    for (i = 184; i != 696; i += 8)
    {
      v5 = *(v3 + i);
      if (v5)
      {
        sub_1000B034C(v5);
        *(v3 + i) = 0;
      }
    }

    v6 = *(v3 + 696);
    if (v6)
    {
      sub_10000C1E8(v6);
      *(v3 + 696) = 0;
    }

    sub_1000B4BB0(a1);
    sub_1000B47C0(a1);
    v7 = *(v3 + 168);
    if (v7)
    {
      sub_10002242C(v7);
      *(v3 + 168) = 0;
    }

    v8 = *(v3 + 176);
    if (v8)
    {
      v9 = sub_1000B47B8(v8);
      for (j = v9; j; v9 = j)
      {
        v10 = sub_1000BC720(v9);
        v11 = v10[5];
        if (v11)
        {
          sub_1000BC14C(v11);
        }

        sub_10000C1E8(v10);
        sub_1000BC828(&j);
      }

      sub_1000BBDD0(*(v3 + 176));
    }

    sub_10000C1E8(v3);
    result = sub_1000B12AC(a1);
    *(result + 128) = 0;
  }

  return result;
}

uint64_t sub_10029936C(int *a1, char a2, char a3)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 16) == 1)
  {

    return sub_100297860(a1, a2, a3);
  }

  else
  {

    return sub_1000BC368(a1, a2, a3);
  }
}

uint64_t sub_1002993EC(uint64_t a1, int a2, char a3)
{
  v6 = *(sub_1000B12AC(a1) + 128);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v7 = sub_1000B47B8(*(v6 + 176));
  v19 = v7;
  if (v7)
  {
    v8 = a3 ^ 1;
    while (*(sub_1000BC720(v7) + 38) != a2)
    {
      sub_1000BC828(&v19);
      v7 = v19;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v11 = v19;
    do
    {
      v12 = sub_1000BC720(v19);
      sub_100302C18(v20, v12, 8);
    }

    while ((sub_1000BC828(&v19) & 1) != 0);
    sub_100302D00(*(v6 + 176), v11, 0);
    v13 = sub_1000B47B8(v20);
    v19 = v13;
    if (v13)
    {
      while (1)
      {
        v14 = sub_1000BC720(v13);
        if (*(sub_1000B12AC(a1) + 67))
        {
          v15 = *(v14 + 48);
          if (v15 >= *(sub_1000B12AC(a1) + 67))
          {
            break;
          }
        }

        if ((v8 & 1) == 0)
        {
          *(v6 + 14) = 1;
        }

        if (sub_10029E9E4(v14))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to retransmit packet.");
            v16 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = sub_10000C0FC();
              *buf = 136446466;
              v23 = v17;
              v24 = 1024;
              v25 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          sub_1000BBBC4(*(v6 + 176), v14, 8, sub_1000BBE38);
        }

        sub_1000BC828(&v19);
        v13 = v19;
        v8 = 1;
        if (!v19)
        {
          goto LABEL_22;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Retry count exceeded");
        v18 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_10029104C(*(a1 + 4), 436);
      return 541;
    }

    else
    {
LABEL_22:
      sub_100302BB4(v20);
      if (!*(*(sub_1000B12AC(a1) + 128) + 160))
      {
        sub_1000BBA6C(a1);
      }

      return 0;
    }
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find the IFrame with reqSeq %d", a2);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 540;
  }
}

uint64_t sub_1002996D4(int *a1)
{
  *(*(sub_1000B12AC(a1) + 128) + 154) = 0;
  v2 = *(*(sub_1000B12AC(a1) + 128) + 16);
  if (v2 == 1)
  {
    sub_100297860(a1, 0, 1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  if (*(*(sub_1000B12AC(a1) + 128) + 15) == 1)
  {
    v4 = sub_1000B12AC(a1);
    if (sub_10000C248(*(*(v4 + 128) + 176)))
    {
      sub_1000BBA6C(a1);
    }
  }

  if ((*(*(sub_1000B12AC(a1) + 128) + 16) & 1) == 0 && !*(*(sub_1000B12AC(a1) + 128) + 154))
  {
    sub_1000BC368(a1, 0, v2 ^ 1);
    v3 = 0;
  }

  return sub_1000BE1E4(a1, v3);
}

uint64_t sub_1002997C8(uint64_t a1, int a2)
{
  result = sub_1000B12AC(a1);
  if (a2 == 1 && *(*(result + 128) + 2) != 1)
  {
    sub_1000B4BB0(a1);
    v5 = sub_1000B12AC(a1);
    if (sub_10000C248(*(*(v5 + 128) + 176)))
    {
      v6 = sub_1000BBA6C(a1);
      if (v6)
      {
        v7 = v6;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to restart retransmission timer : %!", v7);
          v8 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }

    *(*(sub_1000B12AC(a1) + 128) + 2) = 1;
    return sub_1000BE23C(*(a1 + 4));
  }

  return result;
}

uint64_t sub_1002998A0(uint64_t a1, int a2, int a3)
{
  v6 = *(sub_1000B12AC(a1) + 128);
  v7 = sub_1000B47B8(*(v6 + 176));
  ptr = v7;
  if (!v7)
  {
LABEL_18:
    if (!*(*(sub_1000B12AC(a1) + 128) + 160))
    {
      sub_1000B4BB0(a1);
      sub_1000BBA6C(a1);
    }

    return 0;
  }

  while (1)
  {
    v8 = sub_1000BC720(v7);
    if (*(v8 + 38) == a2)
    {
      break;
    }

    sub_1000BC828(&ptr);
    v7 = ptr;
    if (!ptr)
    {
      goto LABEL_18;
    }
  }

  v9 = v8;
  if (!*(sub_1000B12AC(a1) + 67) || (v10 = *(v9 + 48), v10 < *(sub_1000B12AC(a1) + 67)))
  {
    if (a3)
    {
      *(v6 + 14) = 1;
    }

    if (sub_10029E9E4(v9))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to retransmit packet.");
        v11 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else
    {
      sub_1000BC77C(*(v6 + 176), ptr, 0);
    }

    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Retry count exceeded");
    v12 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  sub_10029104C(*(a1 + 4), 436);
  return 542;
}

uint64_t sub_100299A2C(int *a1)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 144))
  {
    v2 = *(sub_1000B12AC(a1) + 128);
    v3 = sub_1000B12AC(a1);
    v4 = sub_100299B28(a1, *(v2 + 2 * *(*(v3 + 128) + 144) + 16), 1);
    if (v4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to send SREJ : %!", v4);
        v5 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Nothing queued in SREJ list.");
      v6 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 539;
  }

  return v4;
}

uint64_t sub_100299B28(uint64_t a1, char a2, char a3)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  v12 = 0u;
  v15 = 0;
  v10 = 0;
  LOBYTE(v11) = *(sub_1000B12AC(a1) + 38) == -1;
  *(&v11 + 1) = *sub_1000B12AC(a1);
  LODWORD(v12) = 0;
  WORD2(v12) = *(a1 + 4);
  WORD3(v12) = 256;
  BYTE8(v12) = 0;
  v6 = (sub_1000BC224(a1, 3, 0, a3, a2, &v15 + 2) + 4);
  WORD5(v12) = 2 * (*(sub_1000B12AC(a1) + 78) != 0) + v6;
  v15 = (v6 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0));
  *(&v15 + 1) = ((v6 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0)) >> 8);
  WORD1(v15) = *(sub_1000B12AC(a1) + 8);
  sub_10001FF10(v13 + 8, 2u);
  sub_10001F968(v13 + 8, &v15, v6, 2u);
  if (*(sub_1000B12AC(a1) + 78))
  {
    sub_10029C6AC(v13 + 8, &v10);
    sub_10001F968(v13 + 8, &v10, 2uLL, 2u);
  }

  v7 = sub_1000BC58C(&v11);
  if (v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send S-Frame %!.", v7);
      v8 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v7;
}

uint64_t sub_100299D40(int *a1, uint64_t a2)
{
  if (*(*(sub_1000B12AC(a1) + 128) + 8 * *(a2 + 2) + 184))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Got the same frame twice (txSeq=%d", *(a2 + 2));
      v4 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  result = sub_1000B12AC(a1);
  *(*(result + 128) + 8 * *(a2 + 2) + 184) = a2;
  return result;
}

uint64_t sub_100299DEC(int *a1, unsigned __int8 a2)
{
  v4 = *(*(sub_1000B12AC(a1) + 128) + 8);
  v5 = a2 + 64;
  if (v4 <= a2)
  {
    v5 = a2;
  }

  v6 = v5;
  if (v5 <= v4)
  {
LABEL_6:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v7 = sub_100299B28(a1, v4 & 0x3F, 0);
      if (v7)
      {
        break;
      }

      v8 = *(sub_1000B12AC(a1) + 128);
      *(v8 + 2 * *(*(sub_1000B12AC(a1) + 128) + 144) + 18) = v4 & 0x3F;
      v9 = sub_1000B12AC(a1);
      ++*(*(v9 + 128) + 144);
      LOBYTE(v4) = v4 + 1;
      if (v6 <= v4)
      {
        goto LABEL_6;
      }
    }

    v10 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send SREJ : %!", v10);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  *(*(sub_1000B12AC(a1) + 128) + 8) = (a2 + 1) & 0x3F;
  return v10;
}

uint64_t sub_100299F14(uint64_t a1)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  v9 = 0u;
  v12 = 0;
  v7 = 0;
  LOBYTE(v8) = *(sub_1000B12AC(a1) + 38) == -1;
  *(&v8 + 1) = *sub_1000B12AC(a1);
  LODWORD(v9) = 0;
  WORD2(v9) = *(a1 + 4);
  WORD3(v9) = 256;
  BYTE8(v9) = 0;
  v2 = sub_1000B12AC(a1);
  v3 = (sub_1000BC224(a1, 1, 0, 0, *(*(v2 + 128) + 8), &v12 + 2) + 4);
  WORD5(v9) = 2 * (*(sub_1000B12AC(a1) + 78) != 0) + v3;
  v12 = (v3 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0));
  *(&v12 + 1) = ((v3 - 4 + 2 * (*(sub_1000B12AC(a1) + 78) != 0)) >> 8);
  WORD1(v12) = *(sub_1000B12AC(a1) + 8);
  sub_10001FF10(v10 + 8, 2u);
  sub_10001F968(v10 + 8, &v12, v3, 2u);
  if (*(sub_1000B12AC(a1) + 78))
  {
    sub_10029C6AC(v10 + 8, &v7);
    sub_10001F968(v10 + 8, &v7, 2uLL, 2u);
  }

  v4 = sub_1000BC58C(&v8);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send S-Frame %!.", v4);
      v5 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v4;
}

uint64_t sub_10029A130(int *a1)
{
  v2 = sub_1000B12AC(a1);
  v3 = *(*(v2 + 128) + 144);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  bzero(&v11 - v4, v6);
  result = sub_1000B12AC(a1);
  v8 = *(result + 128);
  if ((v3 & 0xFE) != 0)
  {
    v9 = (v3 - 1);
    memmove(v5, (v8 + 20), v9);
    v10 = sub_1000B12AC(a1);
    memmove((*(v10 + 128) + 18), v5, v9);
    result = sub_1000B12AC(a1);
    --*(*(result + 128) + 144);
  }

  else
  {
    *(v8 + 144) = 0;
  }

  return result;
}

void sub_10029A234(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(sub_1000B12AC(a1) + 128);
  v9 = *(a2 + 2);
  if (v9 == *(v8 + 152))
  {
    for (i = (v8 + 184 + 8 * v9); *i; i = (v8 + 184 + 8 * v9))
    {
      sub_1000B4C04(a1, *i, a3, a4);
      *(v8 + 152) = (*(v8 + 152) + 1) & 0x3F;
      *i = 0;
      v9 = (v9 + 1) & 0x3F;
    }
  }
}

void sub_10029A2D4(uint64_t a1)
{
  v1 = **(a1 + 8);
  v13 = 0;
  if (sub_1000ABC7C(v1, &v13))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Monitor timer triggered on a released channel (0x%x), this is bad.", v1);
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(*(sub_1000B12AC(v13) + 128) + 164) = 0;
    v3 = v13;
    if (*(*(sub_1000B12AC(v13) + 128) + 2))
    {
      sub_1000D660C();
      return;
    }

    v4 = *(*(sub_1000B12AC(v3) + 128) + 146);
    if (v4 >= *(sub_1000B12AC(v3) + 67))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Monitor timeout expired");
        v9 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_10029104C(*(v3 + 2), 436);
    }

    else
    {
      v5 = *(*(sub_1000B12AC(v3) + 128) + 146) + 1;
      *(*(sub_1000B12AC(v3) + 128) + 146) = v5;
      v6 = sub_10029936C(v3, 1, 0);
      if (v6)
      {
        v7 = v6;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send RR or RNR : %!", v7);
          v8 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v10 = sub_100299018(v3);
        if (v10)
        {
          v11 = v10;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to start monitor timer %!.", v11);
            v12 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }
          }
        }
      }
    }
  }
}

void sub_10029A4CC(uint64_t a1)
{
  v1 = **(a1 + 8);
  v10 = 0;
  if (sub_1000ABC7C(v1, &v10))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Monitor timer triggered on a released channel (0x%x), this is bad.", v1);
      v2 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(*(sub_1000B12AC(v10) + 128) + 160) = 0;
    v3 = v10;
    if (*(*(sub_1000B12AC(v10) + 128) + 2) == 1)
    {
      v4 = sub_10029936C(v3, 1, 0);
      if (v4)
      {
        v5 = v4;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send RR or RNR : %!", v5);
          v6 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        *(*(sub_1000B12AC(v3) + 128) + 146) = 1;
        v7 = sub_100299018(v3);
        if (v7)
        {
          v8 = v7;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to start monitor timer %!.", v8);
            v9 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        *(*(sub_1000B12AC(v3) + 128) + 2) = 0;
      }
    }

    else
    {
      sub_1000D660C();
    }
  }
}

void sub_10029A660(uint64_t result, __int16 a2, int a3)
{
  qword_100B602C0 = result;
  word_100B602C8 = a2;
  if (a3 != 1216)
  {
    v11 = v3;
    v12 = v4;
    if ((byte_100B602CC & 1) == 0)
    {
      sub_1000D660C();
    }

    v9[0] = 8;
    byte_100B602CC = 0;
    sub_100016250(&unk_100B602D4);
    v10[0] = a3;
    v10[1] = byte_100B602D0;
    v9[1] = v10;
    v6 = sub_1000228C0(sub_10029A754, v9, 0);
    if (v6)
    {
      v7 = v6;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v7);
        v8 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100814864();
        }
      }
    }
  }
}

uint64_t sub_10029A764()
{
  result = sub_10022DBFC();
  if (!result)
  {
    v1 = sub_1001BBBD8(0x810uLL, 0x10000408A62FA49uLL);
    qword_100B602E0 = v1;
    v1[509] = 4;
    *(v1 + 2060) = 0;
    if (*(v1 + 2040) == 1)
    {
      *(v1 + 2040) = 0;
    }

    qword_100B602E8 = 0;
    sub_100016250(&unk_100B602D4);
    *(qword_100B602E0 + 2049) = 0;
    sub_10029B140(5);
    return 109;
  }

  return result;
}

uint64_t sub_10029A7F0()
{
  if (*(qword_100B602E0 + 2036) == 4)
  {
    return 109;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029A818(int a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (a1 != 1 && (*(qword_100B602E0 + 2040) & 1) != 0)
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

  if (byte_100B602CC == 1)
  {
    sub_1000D660C();
    return 118;
  }

  else
  {
    if (!qword_100B602C0)
    {
      sub_1000D660C();
    }

    v9 = word_100B602C8;
    if (!word_100B602C8)
    {
      sub_1000D660C();
      v9 = word_100B602C8;
    }

    v10 = qword_100B602C0;
    v6 = 105;
    if (qword_100B602C0 && v9)
    {
      if (a3 + v7 <= v9)
      {
        *qword_100B602C0 = v5;
        *(v10 + 1) = a2;
        *(v10 + 3) = a3;
        if (a3)
        {
          sub_10001F6DC((v10 + v7));
        }

        else
        {
          sub_10001F480(a2);
        }

        byte_100B602D0 = v5;
        byte_100B602CC = 1;
        v6 = sub_10022DBCC();
        if (v6)
        {
          sub_100016250(&unk_100B602D4);
          byte_100B602CC = 0;
        }

        v11 = qword_100B602E0;
        if (*(qword_100B602E0 + 2040) == 1 && *(qword_100B602E0 + 2036) == 4)
        {
          *(qword_100B602E0 + 2049) = 0;
          *(v11 + 2036) = 1;
          *(v11 + 2042) = 5;
          sub_10029B140(0x7FFFLL);
        }
      }

      else
      {
        sub_1000D660C();
        return 105;
      }
    }
  }

  return v6;
}

uint64_t sub_10029A998(unsigned __int8 *__src, int a2)
{
  if (a2)
  {
    v2 = a2;
    while (1)
    {
      v4 = qword_100B602E0;
      if (*(qword_100B602E0 + 2040) == 1)
      {
        *buf = 0;
        v34 = 0;
        sub_1001BAE20(&v34);
        sub_1001BAE88(v34, qword_100B602E8, dword_100B602F0, buf, v5, v6, v7);
        if (v8)
        {
          v9 = v8;
          if (sub_10000C240())
          {
            sub_10000AF54("OI_AbsoluteTime_Diff returned %!", v9);
            v10 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_10080FE78(v35, &v36, v10);
            }
          }
        }

        if ((*&buf[4] | (*buf << 32)) >= 0x12A153440)
        {
          sub_1000C52F4(112);
        }

        j__usleep(0);
        v4 = qword_100B602E0;
      }

      v11 = *(v4 + 2036);
      if (v11 <= 1)
      {
        if (v11 == 1)
        {
          v16 = *__src;
          if ((v16 - 1) >= 4u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("unknown packet type received %d", v16);
              v25 = sub_10000C050(0x3Au);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v30 = sub_10000C0FC();
                *buf = 136446466;
                *&buf[4] = v30;
                v38 = 1024;
                v39 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }

            sub_100304AF8("VirtualCTRL: unknown packet type received %d\n", v16);
            sub_10029B384(240);
          }

          else
          {
            *(v4 + 2042) = 0x2000300040003uLL >> (16 * ((v16 - 1) & 0xFu));
            *(v4 + 2048) = v16;
            *(v4 + 2044) = 0;
            *(v4 + 2036) = 2;
            sub_10029B140(20);
          }

          if (*(qword_100B602E0 + 2036) == 2)
          {
            --v2;
            ++__src;
          }

          goto LABEL_62;
        }

        if (!v11)
        {
          goto LABEL_63;
        }

        goto LABEL_32;
      }

      if (v11 == 2)
      {
        break;
      }

      if (v11 != 3)
      {
        if (v11 == 4)
        {
          goto LABEL_63;
        }

LABEL_32:
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid receive state %d", *(qword_100B602E0 + 2036));
          v24 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v29 = sub_10000C0FC();
            *buf = 136446466;
            *&buf[4] = v29;
            v38 = 1024;
            v39 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        sub_100304AF8("VirtualCTRL: Invalid receive state %d\n", *(qword_100B602E0 + 2036));
        sub_10029B384(242);
        sub_1000D660C();
        goto LABEL_62;
      }

      if (v2 >= *(v4 + 2042))
      {
        v12 = *(v4 + 2042);
      }

      else
      {
        v12 = v2;
      }

      memmove((v4 + *(v4 + 2044) + 4), __src, v12);
      v13 = qword_100B602E0;
      v14 = *(qword_100B602E0 + 2042);
      v2 -= v12;
      *(qword_100B602E0 + 2044) += v12;
      __src += v12;
      v15 = v14 - v12;
      *(v13 + 2042) = v15;
      if (!v15)
      {
LABEL_57:
        if (*(v13 + 2040) == 1)
        {
          sub_10029B4C0();
        }

        else
        {
          if (*(v13 + 2046) >= 0x7F1u)
          {
            sub_1000D660C();
          }

          sub_10029B544();
        }
      }

LABEL_62:
      if (!v2)
      {
        goto LABEL_63;
      }
    }

    v17 = 0;
    v18 = *(v4 + 2042);
    v19 = __src;
    while (v18)
    {
      v20 = *v19++;
      v21 = *(v4 + 2044);
      *(v4 + 2044) = v21 + 1;
      *(v4 + 4 + v21) = v20;
      v18 = *(v4 + 2042) - 1;
      *(v4 + 2042) = v18;
      if (++v17 >= v2)
      {
        v17 = v2;
        if (v18)
        {
          goto LABEL_56;
        }

        break;
      }
    }

    *(v4 + 2036) = 3;
    v22 = *(v4 + 2048);
    if (v22 > 2)
    {
      if (v22 == 4)
      {
        v23 = *(v4 + 5);
LABEL_51:
        *(v4 + 2042) = v23;
        v27 = *(v4 + 2044) + v23;
        *(v4 + 2046) = v27;
        if (v27 >= 0x7F1u)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("RxPacketHeader - bogus packet length (%d)", *(qword_100B602E0 + 2046));
            v28 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v31 = sub_10000C0FC();
              *buf = 136446466;
              *&buf[4] = v31;
              v38 = 1024;
              v39 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          sub_100304AF8("VirtualCTRL: RxPacketHeader - bogus packet length (%d)\n", *(qword_100B602E0 + 2046));
          sub_10029B384(244);
        }

        goto LABEL_56;
      }

      if (v22 != 3)
      {
        goto LABEL_46;
      }
    }

    else if (v22 != 1)
    {
      if (v22 == 2)
      {
        v23 = *(v4 + 6);
        goto LABEL_51;
      }

LABEL_46:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid packet type %d", *(qword_100B602E0 + 2048));
        v26 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v32 = sub_10000C0FC();
          *buf = 136446466;
          *&buf[4] = v32;
          v38 = 1024;
          v39 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      sub_100304AF8("VirtualCTRL: Invalid packet type %d\n", *(qword_100B602E0 + 2048));
      sub_10029B384(240);
      sub_1000D660C();
      v17 = 0;
LABEL_56:
      __src += v17;
      v2 -= v17;
      v13 = qword_100B602E0;
      if (!*(qword_100B602E0 + 2042))
      {
        goto LABEL_57;
      }

      goto LABEL_62;
    }

    v23 = *(v4 + 6);
    goto LABEL_51;
  }

LABEL_63:
  if (*(qword_100B602E0 + 2042))
  {
    return *(qword_100B602E0 + 2042);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_10029AF90(int a1, __int16 a2, size_t __len, void *__src)
{
  v4 = a1;
  if (a1 != 1 && (*(qword_100B602E0 + 2040) & 1) != 0)
  {
    return 129;
  }

  v6 = 4;
  if (a1 == 2)
  {
    v6 = 5;
  }

  if (byte_100B602CC == 1)
  {
    sub_1000D660C();
    return 118;
  }

  else
  {
    v7 = qword_100B602C0;
    if (qword_100B602C0)
    {
      v8 = word_100B602C8 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 105;
    }

    else
    {
      *qword_100B602C0 = a1;
      *(v7 + 1) = a2;
      *(v7 + 3) = __len;
      memmove((v7 + v6), __src, __len);
      byte_100B602D0 = v4;
      byte_100B602CC = 1;
      v9 = sub_10022DBCC();
      v5 = v9;
      if (v9)
      {
        sub_100016250(&unk_100B602D4);
        byte_100B602CC = 0;
      }

      v10 = qword_100B602E0;
      if (*(qword_100B602E0 + 2040) == 1 && *(qword_100B602E0 + 2036) == 4)
      {
        *(qword_100B602E0 + 2049) = 0;
        *(v10 + 2036) = 1;
        *(v10 + 2042) = 5;
        sub_10029B140(0x7FFFLL);
      }
    }
  }

  return v5;
}

double sub_10029B0D0(int a1)
{
  if (a1)
  {
    if ((*(qword_100B602E0 + 2040) & 1) == 0)
    {
      *(qword_100B602E0 + 2040) = 1;
      sub_1001BAE20(&qword_100B602E8);

      return sub_1001BAE4C(dword_100B602F0);
    }
  }

  else
  {
    if (*(qword_100B602E0 + 2040))
    {
      *(qword_100B602E0 + 2040) = 0;
    }

    qword_100B602E8 = 0;
  }

  return result;
}

uint64_t sub_10029B140(uint64_t a1)
{
  v2 = sub_10002260C(*qword_100B602E0);
  v3 = qword_100B602E0;
  if (v2)
  {
    v4 = *qword_100B602E0;

    return sub_1000B7ADC(v4, a1);
  }

  else
  {

    return sub_10002195C(sub_10029B1C4, 0, a1, v3);
  }
}

void sub_10029B1C4()
{
  v0 = qword_100B602E0;
  v1 = *(qword_100B602E0 + 2036);
  if (v1 < 2)
  {
    if (*(qword_100B602E0 + 2040) != 1)
    {
LABEL_14:

      sub_10029B140(0x7FFFLL);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("timed out waiting for reset response %d", *(qword_100B602E0 + 2036));
      v3 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  else
  {
    if (v1 - 2 < 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Timed out while receiving a packet. Current state:%d", *(qword_100B602E0 + 2036));
        v2 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }

      sub_100304AF8("VirtualCTRL: Timed out while receiving a packet. Current state:%d\n", *(qword_100B602E0 + 2036));
      sub_10029B384(241);
      return;
    }

    if (v1 == 4)
    {
      if (*(qword_100B602E0 + 2040))
      {
        return;
      }

      *(qword_100B602E0 + 2049) = 0;
      *(v0 + 2036) = 1;
      *(v0 + 2042) = 5;
      goto LABEL_14;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid receive state %d", *(qword_100B602E0 + 2036));
      v4 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100814864();
      }
    }

    sub_100304AF8("VirtualCTRL: Invalid receive state %d\n", *(qword_100B602E0 + 2036));
    sub_10029B384(243);
    sub_1000D660C();
  }
}

uint64_t sub_10029B384(uint64_t a1)
{
  v1 = a1;
  if (sub_10000C240())
  {
    sub_10000AF54("RxErrorDetected:%d", v1);
    v2 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1008148EC();
    }
  }

  v3 = qword_100B602E0;
  if ((*(qword_100B602E0 + 2040) & 1) == 0)
  {
    *(qword_100B602E0 + 4) = 272;
    *(v3 + 6) = v1;
    *(v3 + 2046) = 3;
    *(v3 + 2048) = 4;
    sub_10029B440();
    v3 = qword_100B602E0;
  }

  *(v3 + 2036) = 4;
  sub_10029B0D0(1);
  return sub_10029B140(5);
}

void sub_10029B440()
{
  v0 = qword_100B602E0;
  if (*(qword_100B602E0 + 2046) >= 0x7F1u)
  {
    sub_1000D660C();
    v0 = qword_100B602E0;
  }

  *(v0 + 2049) = 0;
  *(v0 + 2036) = 1;
  *(v0 + 2042) = 5;
  sub_10029B140(0x7FFFLL);
  v1[1] = 0;
  v1[0] = mach_continuous_time();
  sub_10000394C(*(qword_100B602E0 + 2048), (qword_100B602E0 + 4), *(qword_100B602E0 + 2046), v1);
}

void sub_10029B4C0()
{
  if (*(qword_100B602E0 + 2048) == 4 && *(qword_100B602E0 + 2046) == 6)
  {
    v0 = 0;
    LOBYTE(v1) = 1;
    v2 = &byte_1008A4869;
    do
    {
      v3 = (*(v2 - 1) & *(qword_100B602E0 + 4 + v0));
      v4 = *v2;
      v2 += 2;
      v1 = (v3 == v4) & v1;
      ++v0;
    }

    while (v0 != 6);
    if (v1)
    {
      if (*(qword_100B602E0 + 2040) == 1)
      {
        *(qword_100B602E0 + 2040) = 0;
      }

      qword_100B602E8 = 0;
      sub_10029B440();
    }
  }
}

void sub_10029B544()
{
  v0 = qword_100B602E0;
  if (*(qword_100B602E0 + 2046) >= 0x7F1u)
  {
    sub_1000D660C();
    v0 = qword_100B602E0;
  }

  if (*(v0 + 2060))
  {

    sub_100304AF8("Rx routing suspended during stack termination!\n");
  }

  else
  {
    *(v0 + 2049) = 0;
    *(v0 + 2036) = 1;
    *(v0 + 2042) = 5;
    sub_10029B140(0x7FFFLL);
    v1[1] = 0;
    v1[0] = mach_continuous_time();
    sub_10000394C(*(qword_100B602E0 + 2048), (qword_100B602E0 + 4), *(qword_100B602E0 + 2046), v1);
  }
}

char *sub_10029B614(char *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10029B644(const void *a1, unsigned int a2, void *a3, int a4)
{
  v22 = 0uLL;
  v21 = 0uLL;
  v20 = *"1pmt";
  v8 = a2;
  __memmove_chk();
  if (a2 <= 0xF)
  {
    v9 = 16 - a2;
    v10 = v8;
    do
    {
      v11 = v9 - a2;
      if (v9 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = v9;
      }

      memmove(&v22 + v10, a1, v12);
      v10 += v8;
      v9 = v11;
    }

    while (v10 < 0x10);
  }

  if (!a4)
  {
    v16 = sub_100240BD0(&v22, 0x746D7031u, &v21);
    if (v16)
    {
      v14 = v16;
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating ILK %!", v14);
        v17 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return v14;
    }

    goto LABEL_16;
  }

  v13 = sub_100240D0C(&v22, &v20, &v21);
  if (!v13)
  {
LABEL_16:
    v14 = sub_100240BD0(&v21, 0x6C656272u, a3);
    if (v14)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating LTK %!", v14);
        v18 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }
    }

    return v14;
  }

  v14 = v13;
  if (sub_10000C240())
  {
    sub_10000AF54("SMP_Crypto_h7 failed creating ILK %!", v14);
    v15 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      sub_10080F604();
    }
  }

  return v14;
}

uint64_t sub_10029B850(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v20 = 0uLL;
  v19 = 0uLL;
  v18 = *"2pmt";
  __memmove_chk();
  if (a2 <= 0xF)
  {
    v7 = 16 - a2;
    v8 = a2;
    do
    {
      v9 = v7 - a2;
      if (v7 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = v7;
      }

      memmove(&v20 + v8, a3, v10);
      v8 += a2;
      v7 = v9;
    }

    while (v8 < 0x10);
  }

  if (!a4)
  {
    v14 = sub_100240BD0(&v20, 0x746D7032u, &v19);
    if (v14)
    {
      v12 = v14;
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating ILK %!", v12);
        v15 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return v12;
    }

    goto LABEL_16;
  }

  v11 = sub_100240D0C(&v20, &v18, &v19);
  if (!v11)
  {
LABEL_16:
    v12 = sub_100240BD0(&v19, 0x62726C65u, a3);
    if (v12)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SMP_Crypto_h6 failed creating LK %!", v12);
        v16 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }
    }

    return v12;
  }

  v12 = v11;
  if (sub_10000C240())
  {
    sub_10000AF54("SMP_Crypto_h7 failed creating ILTK %!", v12);
    v13 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      sub_10080F604();
    }
  }

  return v12;
}