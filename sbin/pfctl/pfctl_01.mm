uint64_t sub_10000B93C(const char *a1, char a2, int a3, void *a4)
{
  printf("table <%s>", a1);
  if ((a2 & 2) != 0)
  {
    printf(" const");
  }

  if (a2)
  {
    printf(" persist");
  }

  v7 = *a4;
  if (*a4)
  {
    do
    {
      if (v7[2])
      {
        printf(" file %s");
      }

      else
      {
        printf(" {");
        v8 = v7;
        do
        {
          v7 = v8;
          for (i = v8[1]; i; i = *(i + 104))
          {
            if (*(i + 81))
            {
              printf(" !");
            }

            else
            {
              printf(" ");
            }

            sub_1000006C8(i, *(i + 80), 0);
          }

          v8 = *v7;
        }

        while (*v7 && !v8[2]);
        printf(" }");
      }

      v7 = *v7;
    }

    while (v7);
  }

  if (a3 && !*a4)
  {
    printf(" { }");
  }

  return putchar(10);
}

uint64_t sub_10000BA8C(char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    LODWORD(v2) = 0;
    v3 = off_100030890[0];
    v4 = a1 + 1;
    do
    {
      v5 = strchr(v3, v1);
      if (!v5)
      {
        return 0xFFFFFFFFLL;
      }

      v2 = v2 | (1 << (v5 - v3));
      v6 = *v4++;
      v1 = v6;
    }

    while (v6);
    if (v2)
    {
      return v2;
    }
  }

  return 255;
}

int8x16_t sub_10000BB08(int8x16_t *a1, unsigned int a2, int8x16_t result, int8x16_t a4)
{
  v4 = a2;
  a1[1] = 0uLL;
  v6 = a1 + 1;
  v7 = a2 - 32;
  if (a2 < 0x20)
  {
    v9 = 0;
  }

  else
  {
    v8 = v7 >> 5;
    memset(&a1[1], 255, (4 * v8 + 4));
    v9 = (v8 + 1);
    v10 = vdupq_n_s64(v8);
    a4 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(xmmword_100027B60, v10), vcgtq_u64(xmmword_100027B50, v10)), vuzp1q_s32(vcgtq_u64(xmmword_100027B40, v10), vcgtq_u64(xmmword_100027B30, v10)));
    *a4.i8 = vmovn_s16(a4);
    v11.i8[1] = -32;
    v11.i16[1] = -7968;
    v11.i32[1] = -522133280;
    v11.i8[0] = v7;
    *result.i8 = vbsl_s8(*a4.i8, v4, v11);
    result.i8[0] = vaddv_s8(*result.i8);
    v4 = result.i8[0];
  }

  if (v4)
  {
    v12 = v4 ^ 0x1F;
    if (v12 >= 0x1E)
    {
      v12 = 30;
    }

    v13 = v12 ^ 0x1F;
    v14 = ((v12 ^ 0x1F) + 3) & 0x3C;
    v15 = vdupq_n_s32(v13 - 1);
    a4.i32[0] = v6->i32[v9];
    v16 = xmmword_100027B70;
    v17 = 4;
    v18.i64[0] = 0x100000001;
    v18.i64[1] = 0x100000001;
    v19.i64[0] = 0x300000003;
    v19.i64[1] = 0x300000003;
    do
    {
      v20 = a4;
      a4 = vorrq_s8(a4, vshlq_u32(v18, v16));
      v16 = vaddq_s32(v16, v19);
      v17 -= 4;
    }

    while (v14 + v17 != 4);
    result = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v17), xmmword_100027B80), v15), v20, a4);
    *result.i8 = vorr_s8(*result.i8, *&vextq_s8(result, result, 8uLL));
    v6->i32[v9] = bswap32(result.i32[0] | result.i32[1]);
  }

  if (!a1[2].i8[8])
  {
    result = vandq_s8(a1[1], *a1);
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000BC88(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = result;
    while (1)
    {
      v5 = *(v3 + 40);
      if (v5 != 3)
      {
        if (a2 == 2 && v5 == 2)
        {
          if (sub_100000ACC(v3 + 16) >= 33)
          {
            sub_10000BB08(v4, 0x20u, v6, v7);
          }
        }

        else if (a2 != 2)
        {
          goto LABEL_12;
        }

        if (*(v3 + 20) || *(v3 + 24) || *(v3 + 28))
        {
          v8 = __stderrp;
          v9 = sub_100000ACC(v3 + 16);
          fprintf(v8, "netmask %u invalid for IPv4 address\n", v9);
          return 1;
        }
      }

LABEL_12:
      v4 = v4[6].i64[1];
      if (!v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10000BD68()
{
  v17 = 0;
  if (getifaddrs(&v17) < 0)
  {
    sub_100020A34();
  }

  v0 = v17;
  if (!v17)
  {
    v16 = 0;
    v1 = 0;
    goto LABEL_31;
  }

  v1 = 0;
  do
  {
    sa_family = v0->ifa_addr->sa_family;
    v3 = sa_family > 0x1E;
    v4 = (1 << sa_family) & 0x40040004;
    if (v3 || v4 == 0)
    {
      goto LABEL_28;
    }

    v6 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
    if (!v6)
    {
      sub_100020A18();
    }

    v7 = v6;
    ifa_addr = v0->ifa_addr;
    v9 = ifa_addr->sa_family;
    v6[80] = v9;
    *(v6 + 24) = v0->ifa_flags;
    if (v9 == 30)
    {
      if (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80 || *&ifa_addr[1].sa_data[6])
      {
        *(v6 + 21) = 0;
        v10 = v6 + 84;
        goto LABEL_20;
      }

      *&ifa_addr[1].sa_data[6] = __rev16(*&ifa_addr->sa_data[8]);
      *&ifa_addr->sa_data[8] = 0;
      v9 = v6[80];
    }

    *(v6 + 21) = 0;
    v10 = v6 + 84;
    if (v9 != 30)
    {
      if (v9 == 2)
      {
        *v6 = *&v0->ifa_addr->sa_data[2];
        *(v6 + 4) = *&v0->ifa_netmask->sa_data[2];
        ifa_dstaddr = v0->ifa_dstaddr;
        if (ifa_dstaddr)
        {
          *(v6 + 12) = *&ifa_dstaddr->sa_data[2];
          v12 = v0->ifa_dstaddr;
          if (v12)
          {
            *(v6 + 16) = *&v12->sa_data[2];
          }
        }
      }

      goto LABEL_24;
    }

LABEL_20:
    *v6 = *&v0->ifa_addr->sa_data[6];
    *(v6 + 1) = *&v0->ifa_netmask->sa_data[6];
    v13 = v0->ifa_dstaddr;
    if (v13)
    {
      *(v6 + 3) = *&v13->sa_data[6];
      v14 = v0->ifa_dstaddr;
      if (v14)
      {
        *(v6 + 4) = *&v14->sa_data[6];
      }
    }

    *v10 = *&v0->ifa_addr[1].sa_data[6];
LABEL_24:
    v15 = strdup(v0->ifa_name);
    v7[11] = v15;
    if (!v15)
    {
      sub_1000209FC();
    }

    v7[13] = 0;
    v7[14] = v7;
    if (v1)
    {
      *(*(v1 + 112) + 104) = v7;
      *(v1 + 112) = v7;
    }

    else
    {
      v1 = v7;
    }

LABEL_28:
    v0 = v0->ifa_next;
  }

  while (v0);
  v16 = v17;
LABEL_31:
  qword_100030D40 = v1;
  freeifaddrs(v16);
}

uint64_t sub_10000BF5C(char *__s2)
{
  v2 = qword_100030D40;
  if (qword_100030D40 || (sub_10000BD68(), (v2 = qword_100030D40) != 0))
  {
    do
    {
      if (*(v2 + 80) == 18 && !strncmp(*(v2 + 88), __s2, 0x10uLL))
      {
        break;
      }

      v2 = *(v2 + 104);
    }

    while (v2);
  }

  return v2;
}

int8x16_t *sub_10000BFC8(char *a1, char a2)
{
  v3 = a1;
  if (!strncmp(a1, "self", 0x10uLL))
  {
    v3 = 0;
  }

  v4 = qword_100030D40;
  if (qword_100030D40 || (sub_10000BD68(), (v4 = qword_100030D40) != 0))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if ((a2 & 2) != 0)
    {
      v9 = 48;
    }

    else
    {
      v9 = 16 * (a2 & 4);
    }

    while (1)
    {
      if (sub_10000C1D0(v3, v4) || (a2 & 2) != 0 && (*(v4 + 80) != 2 || (*(v4 + 96) & 2) == 0) || (a2 & 4) != 0 && (*(v4 + 96) & 0x10) == 0 || (a2 & 1) != 0 && *(v4 + 84))
      {
        v10 = v5;
      }

      else
      {
        v10 = *(v4 + 88);
        if (!v5 || strcmp(v5, *(v4 + 88)))
        {
          v7 = 0;
          v6 = 0;
        }

        v11 = *(v4 + 80);
        if ((a2 & 8) == 0)
        {
LABEL_21:
          if (v11 == 2)
          {
            v7 = 1;
          }

          else
          {
            v6 = 1;
          }

          v12 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          if (!v12)
          {
            sub_100020A18();
          }

          v14 = v12;
          v15 = *(v4 + 80);
          v12[5].i8[0] = v15;
          v16 = *(v4 + v9);
          *v12 = v16;
          if (a2)
          {
            v17 = sub_100000ACC(v4 + 16);
            v12 = v14;
          }

          else if (v15 == 2)
          {
            if ((~*(v4 + 96) & 0x2008) == 0)
            {
              v12[1] = *(v4 + 16);
              goto LABEL_42;
            }

            v17 = 32;
          }

          else
          {
            v17 = 128;
          }

          sub_10000BB08(v12, v17, v16, v13);
LABEL_42:
          v14[5].i32[1] = *(v4 + 84);
          v14[6].i64[1] = 0;
          v14[7].i64[0] = v14;
          if (v8)
          {
            *(v8[7].i64[0] + 104) = v14;
            v8[7].i64[0] = v14;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_10;
        }

        if (v11 == 2 && v7)
        {
          v7 = 1;
        }

        else
        {
          if (v11 != 30 || !v6)
          {
            goto LABEL_21;
          }

          v6 = 1;
        }
      }

LABEL_10:
      v4 = *(v4 + 104);
      v5 = v10;
      if (!v4)
      {
        return v8;
      }
    }
  }

  return 0;
}

uint64_t sub_10000C1D0(char *__s2, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2 != 30 && v2 != 2)
  {
    return 1;
  }

  if (!__s2 || !*__s2)
  {
    return 0;
  }

  v5 = *(a2 + 88);
  result = strcmp(v5, __s2);
  if (result)
  {
    v6 = strlen(__s2);
    if (v6 - 16 >= 0xFFFFFFFFFFFFFFF1 && (v7 = v6, __s2[v6 - 1] - 48 >= 0xA) && !strncmp(v5, __s2, v6))
    {
      return v5[v7] - 58 < 0xFFFFFFF6;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

int8x16_t *sub_10000C294(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2;
    __endptr = 0;
    v4 = v2 + 1;
    v5 = strtol(v2 + 1, &__endptr, 0);
    if (!__endptr || (__endptr != v4 ? (v6 = *__endptr == 0) : (v6 = 0), !v6 || (v7 = v5, v5 >= 129)))
    {
      fprintf(__stderrp, "invalid netmask '%s'\n");
      return 0;
    }

    v8 = strlen(a1);
    v9 = strlen(v3);
    v10 = malloc_type_malloc(v8 - v9 + 1, 0xF3C89226uLL);
    if (!v10)
    {
      sub_100020A50();
    }

    v11 = v10;
    v12 = strlen(a1);
    v13 = strlen(v3);
    strlcpy(v11, a1, v12 - v13 + 1);
    v14 = v7;
    v15 = v7;
  }

  else
  {
    v16 = strdup(a1);
    if (!v16)
    {
      sub_100020A6C();
    }

    v11 = v16;
    v15 = 0x80;
    v14 = 32;
    v7 = -1;
  }

  v17 = sub_10000C444(v11, v7);
  if (v17 || (v17 = sub_10000C600(a1)) != 0 || (v17 = sub_10000C6C8(v11, v15)) != 0)
  {
    v18 = v17;
    v19 = 0;
  }

  else
  {
    v18 = sub_10000C7A4(v11, v14, v15);
    v19 = v18 == 0;
  }

  free(v11);
  if (!v18 || v19)
  {
    fprintf(__stderrp, "no IP address found for %s\n");
    return 0;
  }

  return v18;
}

int8x16_t *sub_10000C444(const char *a1, int a2)
{
  v3 = strdup(a1);
  if (!v3)
  {
    sub_100020A88();
  }

  v4 = v3;
  v5 = strrchr(v3, 58);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      if (!strcmp(v6 + 1, "network"))
      {
        v8 = 1;
      }

      else if (!strcmp(v6 + 1, "broadcast"))
      {
        v8 = 2;
      }

      else if (!strcmp(v6 + 1, "peer"))
      {
        v8 = 4;
      }

      else
      {
        if (v6[1] != 48 || v6[2])
        {
          goto LABEL_22;
        }

        v8 = 8;
      }

      v7 |= v8;
      *v6 = 0;
      v6 = strrchr(v4, 58);
      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = 0;
LABEL_16:
  if ((v7 & (v7 - 1) & 6) != 0)
  {
    v9 = __stderrp;
    v10 = "illegal combination of interface modifiers\n";
    v11 = 43;
LABEL_21:
    fwrite(v10, v11, 1uLL, v9);
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if ((a2 & 0x80000000) == 0 && (v7 & 3) != 0)
  {
    v9 = __stderrp;
    v10 = "network or broadcast lookup, but extra netmask given\n";
    v11 = 53;
    goto LABEL_21;
  }

  if (!sub_10000BF5C(v4) && strncmp(v4, "self", 0x10uLL))
  {
    goto LABEL_22;
  }

  v14 = sub_10000BFC8(v4, v7);
  v12 = v14;
  if ((a2 & 0x80000000) == 0 && v14)
  {
    v17 = v14;
    do
    {
      v15 = sub_10000BB08(v17, a2, v15, v16);
      v17 = v17[6].i64[1];
    }

    while (v17);
  }

LABEL_23:
  free(v4);
  return v12;
}

int8x16_t *sub_10000C600(char *a1)
{
  v9 = 0;
  if (strrchr(a1, 47))
  {
    v2 = inet_net_pton(2, a1, &v9, 4uLL);
    v3 = v2;
    if (v2 == -1)
    {
      return 0;
    }
  }

  else
  {
    if (inet_pton(2, a1, &v9) != 1)
    {
      return 0;
    }

    v3 = 32;
  }

  v4 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
  if (!v4)
  {
    sub_100020A18();
  }

  v7 = v4;
  v4[5].i64[1] = 0;
  v4[5].i8[0] = 2;
  v4->i32[0] = v9;
  sub_10000BB08(v4, v3, v5, v6);
  v7[6].i64[1] = 0;
  v7[7].i64[0] = v7;
  return v7;
}

int8x16_t *sub_10000C6C8(const char *a1, unsigned __int8 a2)
{
  v9 = 0;
  memset(&v10.ai_socktype, 0, 40);
  v10.ai_socktype = 2;
  *&v10.ai_flags = 0x1E00000004;
  v3 = 0;
  if (!getaddrinfo(a1, "0", &v10, &v9))
  {
    v4 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
    if (!v4)
    {
      sub_100020A18();
    }

    v3 = v4;
    v4[5].i64[1] = 0;
    v4[5].i8[0] = 30;
    v6 = v9;
    v7 = *&v9->ai_addr->sa_data[6];
    *v4 = v7;
    v4[5].i32[1] = *&v6->ai_addr[1].sa_data[6];
    sub_10000BB08(v4, a2, v7, v5);
    freeaddrinfo(v6);
    v3[6].i64[1] = 0;
    v3[7].i64[0] = v3;
  }

  return v3;
}

int8x16_t *sub_10000C7A4(const char *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v5 = strdup(a1);
  if (!v5)
  {
    sub_100020AC0();
  }

  v6 = v5;
  v26 = 0;
  v7 = strrchr(v5, 58);
  if (v7 && *v7 == 58 && v7[1] == 48 && !v7[2])
  {
    v8 = 0;
    *v7 = 0;
  }

  else
  {
    v8 = 1;
  }

  memset(&v27, 0, sizeof(v27));
  v27.ai_socktype = 1;
  if (getaddrinfo(v6, 0, &v27, &v26))
  {
    free(v6);
    return 0;
  }

  v10 = v26;
  if (v26)
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    while (1)
    {
      ai_family = v10->ai_family;
      if (ai_family != 30 && ai_family != 2)
      {
        break;
      }

      if (v8)
      {
        v23 = v12;
        v15 = v11;
LABEL_18:
        v16 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
        if (!v16)
        {
          sub_100020AA4();
        }

        v19 = v16;
        v16[5].i64[1] = 0;
        v20 = v10->ai_family;
        v16[5].i8[0] = v20;
        ai_addr = v10->ai_addr;
        if (v20 == 2)
        {
          v16->i32[0] = *&ai_addr->sa_data[2];
          v22 = a2;
        }

        else
        {
          v17 = *&ai_addr->sa_data[6];
          *v16 = v17;
          v16[5].i32[1] = *&v10->ai_addr[1].sa_data[6];
          v22 = a3;
        }

        sub_10000BB08(v16, v22, v17, v18);
        v19[6].i64[1] = 0;
        v19[7].i64[0] = v19;
        if (v9)
        {
          *(v9[7].i64[0] + 104) = v19;
          v9[7].i64[0] = v19;
        }

        else
        {
          v9 = v19;
        }

        goto LABEL_30;
      }

      if (ai_family == 2)
      {
        v23 = 1;
        v15 = v11;
        if (!v12)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

      v15 = 1;
      v23 = v12;
      if (!v11)
      {
        goto LABEL_18;
      }

      v23 = v12;
LABEL_30:
      v10 = v10->ai_next;
      v11 = v15;
      v12 = v23;
      if (!v10)
      {
        v24 = v26;
        goto LABEL_33;
      }
    }

    v23 = v12;
LABEL_23:
    v15 = v11;
    goto LABEL_30;
  }

  v24 = 0;
  v9 = 0;
LABEL_33:
  freeaddrinfo(v24);
  free(v6);
  return v9;
}

uint64_t sub_10000C9A8(void **a1, char *a2, uint64_t a3)
{
  v3 = a3;
  if (*a2 == 33)
  {
    v5 = 0;
    do
    {
      v5 ^= 1u;
      v6 = *++a2;
    }

    while (v6 == 33);
  }

  else
  {
    v5 = 0;
  }

  v7 = sub_10000C294(a2);
  if (v7)
  {
    v8 = v7;
    v9 = sub_10000CA4C(a1, v7, v3, v5);
    do
    {
      v10 = *(v8 + 13);
      free(v8);
      v8 = v10;
    }

    while (v10);
  }

  else
  {
    *__error() = 0;
    return 0xFFFFFFFFLL;
  }

  return v9;
}

uint64_t sub_10000CA4C(void **a1, __int128 *a2, int a3, int a4)
{
  while (1)
  {
    v13 = 0;
    v12 = 0uLL;
    BYTE2(v13) = *(a2 + 81) ^ a4;
    LOBYTE(v13) = *(a2 + 80);
    v8 = sub_100000ACC((a2 + 1));
    BYTE1(v13) = v8;
    v9 = *(a2 + 80);
    if (v9 == 30)
    {
      v12 = *a2;
      v10 = 128;
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_13;
      }

      LODWORD(v12) = *a2;
      v10 = 32;
    }

    if (a3)
    {
      break;
    }

    if (v10 < v8)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (sub_10000EA4C(a1, &v12))
    {
      return 0xFFFFFFFFLL;
    }

    a2 = *(a2 + 13);
    if (!a2)
    {
      return 0;
    }
  }

  if (!a4 && v10 == v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  *__error() = 22;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000CB30(void **a1, int a2, uint64_t a3)
{
  bzero(&v7, 0x404uLL);
  v6 = a2;
  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020ADC();
  }

  return sub_10000EA4C(a1, &v6);
}

uint64_t sub_10000CBDC(unsigned int *a1, int a2, const char *a3)
{
  v6 = sub_10000EC0C(a1, 0);
  if (!v6)
  {
LABEL_6:
    sub_100020AF8();
  }

  v7 = v6;
  while (*v7 != a2 || strcmp(a3, v7 + 4))
  {
    v7 = sub_10000EC0C(a1, v7);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  return v7[257];
}

uint64_t sub_10000CC54(int a1, uint64_t a2, unint64_t a3, int a4)
{
  v5[0] = *(a2 + 4) - a4;
  v5[1] = 1032;
  v6 = *(a2 + 16) + 1032 * a4;
  return ioctl(a1, a3, v5);
}

uint64_t sub_10000CC9C(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4, int a5)
{
  __s1 = 0;
  if (!dword_100030D54)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3 <= 1 ? 1 : a3;
  v10 = sub_10000CE24(a1, &__s1);
  if (v10 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  if (!v10)
  {
    puts("No queue in use");
  }

  v12 = __s1;
  if (__s1)
  {
    v13 = a4 & 0x400;
    v14 = __s1;
    do
    {
      if (!a2 || !strcmp(v14, a2))
      {
        if (v13)
        {
          sub_100011AC4("ALTQ:");
        }

        sub_10000D068(a1, v14, 0, v9, a4);
        v13 = 0;
      }

      v14 = *(v14 + 41);
    }

    while (v14);
  }

  if (a5 && v11)
  {
    while (1)
    {
      putchar(10);
      fflush(__stdoutp);
      sleep(v9);
      result = sub_10000CE24(a1, &__s1);
      if (result == -1)
      {
        break;
      }

      v16 = result;
      v12 = __s1;
      if (__s1)
      {
        v17 = __s1;
        do
        {
          if (!a2 || !strcmp(v17, a2))
          {
            sub_10000D068(a1, v17, 0, v9, a4);
          }

          v17 = *(v17 + 41);
        }

        while (v17);
      }

      if (v16 < 1)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    sub_10000D198(v12);
    return 0;
  }

  return result;
}

uint64_t sub_10000CE24(int a1, uint64_t *a2)
{
  v16 = 0u;
  memset(v17, 0, 328);
  v13 = 0;
  v12 = 0;
  v14 = 0;
  bzero(__src, 0x5F8uLL);
  if (ioctl(a1, 0xC158442FuLL, &v16))
  {
    warn("DIOCGETALTQS");
    return 0xFFFFFFFFLL;
  }

  v4 = DWORD1(v16);
  if (DWORD1(v16) != dword_100030C3C && *a2)
  {
    sub_10000D198(*a2);
    *a2 = 0;
    v4 = DWORD1(v16);
  }

  dword_100030C3C = v4;
  v5 = DWORD2(v16);
  if (DWORD2(v16))
  {
    for (i = 0; v5 != i; ++i)
    {
      DWORD2(v16) = i;
      if (ioctl(a1, 0xC1584430uLL, &v16))
      {
        warn("DIOCGETALTQ");
        return 0xFFFFFFFFLL;
      }

      if (LODWORD(v17[20]))
      {
        v12 = __PAIR64__(i, DWORD1(v16));
        v13 = __src;
        LODWORD(v14) = 1488;
        if (ioctl(a1, 0xC0184432uLL, &v12))
        {
          warn("DIOCGETQSTATS");
          return 0xFFFFFFFFLL;
        }

        v7 = sub_10000D1E0(*a2, &v17[4], v17);
        if (v7)
        {
          v8 = v7;
          memcpy((v7 + 344), __src, 0x5D0uLL);
          sub_10000D260(v8);
        }

        else
        {
          memcpy(__dst, v17, sizeof(__dst));
          memcpy(v10, __src, sizeof(v10));
          sub_10000D330(a2, __dst, v10);
        }
      }
    }
  }

  return v5;
}

uint64_t sub_10000D068(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a3;
    v9 = result;
    sub_100002FBC(a2, a3, 0, 0);
    if (*(a2 + 336))
    {
      putchar(123);
      for (i = *(a2 + 336); i; i = *(i + 328))
      {
        printf("%s", (i + 64));
        if (!*(i + 328))
        {
          break;
        }

        printf(", ");
      }

      putchar(125);
    }

    result = putchar(10);
    if ((a5 & 4) != 0)
    {
      result = sub_10000D434(result, a2, a4, a5);
    }

    if ((a5 & 0x200) != 0)
    {
      v11 = *(a2 + 320);
      v12 = sub_100003908(*(a2 + 56));
      result = printf("  [ qid=%u ifname=%s ifbandwidth=%s ]\n", v11, a2, v12);
    }

    for (j = *(a2 + 336); j; j = *(j + 328))
    {
      result = sub_10000D068(v9, j, (v7 + 1), a4, a5);
    }
  }

  return result;
}

void sub_10000D198(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[42];
      if (v2)
      {
        sub_10000D198(v2);
      }

      v3 = v1[41];
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10000D1E0(uint64_t a1, const char *a2, const char *a3)
{
  v3 = a1;
  if (a1)
  {
    while (strcmp((v3 + 64), a2) || strcmp(v3, a3))
    {
      v6 = *(v3 + 336);
      if (v6)
      {
        v7 = sub_10000D1E0(v6, a2, a3);
        if (v7)
        {
          return v7;
        }
      }

      v3 = *(v3 + 328);
      if (!v3)
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t sub_10000D260(uint64_t result)
{
  if (!*(result + 320))
  {
    return result;
  }

  v1 = *(result + 1832);
  v2 = *(result + 48) - 1;
  if (v2 <= 3)
  {
    v3 = qword_100027BA0[v2];
    v4 = *(result + qword_100027BC0[v2]);
    v5 = *(result + v3);
    if (v1)
    {
      goto LABEL_4;
    }

LABEL_13:
    *(result + 1856) = v4;
    *(result + 1864) = v5;
    v11 = 1;
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v6 = *(result + 1856);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7)
  {
    *(result + 1840) = (v8 + *(result + 1840) * (v1 - 1)) / v1;
  }

  v9 = *(result + 1864);
  v7 = v5 >= v9;
  v10 = v5 - v9;
  if (v7)
  {
    *(result + 1848) = (v10 + *(result + 1848) * (v1 - 1)) / v1;
  }

  *(result + 1856) = v4;
  *(result + 1864) = v5;
  if (v1 <= 7)
  {
    v11 = v1 + 1;
LABEL_14:
    *(result + 1832) = v11;
  }

  return result;
}

uint64_t sub_10000D330(uint64_t *a1, const char *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x750uLL, 0x10A004020F05D53uLL);
  if (!v6)
  {
    sub_100020B14();
  }

  v7 = v6;
  memcpy(v6, a2, 0x148uLL);
  memcpy(v7 + 43, a3, 0x5F8uLL);
  v7[41] = 0;
  v7[42] = 0;
  v8 = *a1;
  if (*a1)
  {
    if (a2[128])
    {
      v9 = sub_10000D1E0(v8, a2 + 128, a2);
      if (!v9)
      {
        errx(1, "parent %s not found", a2 + 128);
      }

      v10 = *(v9 + 336);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *(v10 + 328);
        }

        while (v10);
        a1 = (v11 + 328);
      }

      else
      {
        a1 = (v9 + 336);
      }
    }

    else
    {
      do
      {
        v12 = v8;
        v8 = *(v8 + 328);
      }

      while (v8);
      a1 = (v12 + 328);
    }
  }

  *a1 = v7;

  return sub_10000D260(v7);
}

uint64_t sub_10000D434(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a2[80])
  {
    v4 = a4;
    v5 = a3;
    v6 = a2[12];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        memcpy(__dst, a2 + 86, sizeof(__dst));
        return sub_10000D604(__dst, v5, v4);
      }

      else if (v6 == 4)
      {
        memcpy(__dst, a2 + 86, sizeof(__dst));
        return sub_10000D794(__dst, v5, v4);
      }
    }

    else if (v6 == 1)
    {
      memcpy(__dst, a2 + 86, sizeof(__dst));
      return sub_10000D52C(__dst, v5, v4);
    }

    else if (v6 == 2)
    {
      memcpy(__dst, a2 + 86, sizeof(__dst));
      return sub_10000D6CC(__dst, v5, v4);
    }
  }

  return result;
}

uint64_t sub_10000D52C(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  result = printf("  [ qlength: %3d/%3d  borrows: %6u  suspends: %6u ]\n", *(a1 + 84), *(a1 + 72), *(a1 + 44), *(a1 + 52));
  if ((a3 & 0x10000) != 0 && *(a1 + 92) == 2)
  {
    result = sub_10000D85C(a1 + 96);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D604(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  result = printf("  [ qlength: %3d/%3d ]\n", *(a1 + 8), *(a1 + 12));
  if ((a3 & 0x10000) != 0 && *(a1 + 56) == 2)
  {
    result = sub_10000D85C(a1 + 64);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D6CC(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264));
  result = printf("  [ qlength: %3d/%3d ]\n", *(a1 + 228), *(a1 + 232));
  if ((a3 & 0x10000) != 0 && *(a1 + 288) == 2)
  {
    result = sub_10000D85C(a1 + 296);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D794(uint64_t a1, int a2, int a3)
{
  printf("  [ pkts: %10llu  bytes: %10llu  dropped pkts: %6llu bytes: %6llu ]\n", *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  result = printf("  [ qlength: %3d/%3d ]\n", *(a1 + 8), *(a1 + 12));
  if ((a3 & 0x10000) != 0 && *(a1 + 48) == 2)
  {
    result = sub_10000D85C(a1 + 56);
  }

  if (*(a1 + 1488) >= 2)
  {
    v7 = *(a1 + 1504) / a2;
    v8 = sub_100003908(*(a1 + 1496) * 8.0 / a2);
    return printf("  [ measured: %7.1f packets/s, %s/s ]\n", v7, v8);
  }

  return result;
}

uint64_t sub_10000D85C(uint64_t a1)
{
  v2 = *(a1 + 12);
  putchar(10);
  printf("  [ early drop: %12llu  rlimit drop: %11llu  marked: %11llu ]\n", *(a1 + 48), *(a1 + 56), *(a1 + 72));
  printf("  [ penalized: %13llu  rehash cnt: %12llu  current: %10u ]\n", *(a1 + 80), *(a1 + 120), v2);
  sub_10000DB3C(*(a1 + 104));
  printf("  [ deque avg: %13s  ", byte_100030C40);
  sub_10000DB3C(*(a1 + 112));
  printf("rehash intvl: %11s]\n", byte_100030C40);
  sub_10000DB3C(*(a1 + 96));
  printf("  [ holdtime: %14s  ", byte_100030C40);
  sub_10000DB3C(*(a1 + 88));
  printf("pboxtime: %14s ]\n", byte_100030C40);
  printf("  [ allocation: %12u  drop thresh: %11u ]\n", *a1, *(a1 + 4));
  printf("  [ flow controlled: %7llu  adv feedback: %10llu ]\n", *(a1 + 136), *(a1 + 144));
  printf("\n\t\t\t\tCurrent bins (set %d)", v2);
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    printf("\n\tLevel: %d\n", v3);
    v6 = 0;
    v7 = a1 + 160 + (v2 << 9) + (v3 << 8);
    do
    {
      if ((v6 & 3) == 0)
      {
        printf("\t%6d:\t", v6 | 1);
      }

      if (*(v7 + 8 * v6) < 1)
      {
        printf("[           ]");
      }

      else
      {
        printf("[%1.4f %4u]");
      }

      if (v6)
      {
        if ((++v6 & 3) == 0)
        {
          putchar(10);
        }
      }

      else
      {
        v6 = 1;
      }
    }

    while (v6 != 32);
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  printf("\n\t\t\t\tWarm up bins (set %d)", v2 ^ 1);
  v8 = 0;
  v9 = a1 + 160 + ((v2 ^ 1) << 9);
  v10 = 1;
  do
  {
    v11 = v10;
    printf("\n\tLevel: %d\n", v8);
    v12 = 0;
    v13 = v9 + (v8 << 8);
    do
    {
      if ((v12 & 3) == 0)
      {
        printf("\t%6d:\t", v12 | 1);
      }

      if (*(v13 + 8 * v12) < 1)
      {
        printf("[           ]");
      }

      else
      {
        printf("[%1.4f %4u]");
      }

      if (v12)
      {
        if ((++v12 & 3) == 0)
        {
          putchar(10);
        }
      }

      else
      {
        v12 = 1;
      }
    }

    while (v12 != 32);
    v10 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);

  return putchar(10);
}

uint64_t sub_10000DB3C(unint64_t a1)
{
  v1 = a1;
  if (a1 < 0x3B9ACA00)
  {
    if (a1 < 0xF4240)
    {
      if (a1 < 0x3E8)
      {
        v3 = "nsec";
        return snprintf(byte_100030C40, 0x20uLL, "%-4.2Lf %4s", v1, v3);
      }

      v2 = 1000.0;
      v3 = "usec";
    }

    else
    {
      v2 = 1000000.0;
      v3 = "msec";
    }
  }

  else
  {
    v2 = 1000000000.0;
    v3 = "sec ";
  }

  v1 = v1 / v2;
  return snprintf(byte_100030C40, 0x20uLL, "%-4.2Lf %4s", v1, v3);
}

uint64_t sub_10000DBEC(const void *a1, _DWORD *a2, int a3)
{
  bzero(__dst, 0x450uLL);
  v9 = a3;
  if (a1)
  {
    memcpy(__dst, a1, 0x428uLL);
  }

  if (ioctl(dword_1000309F0, 0xC450443CuLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_10000DCB8(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  if (a2 < 0 || !a1 && a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  bzero(v9, 0x450uLL);
  v14 = a4;
  v10 = a1;
  v11 = 1064;
  v12 = a2;
  if (ioctl(dword_1000309F0, 0xC450443DuLL, v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a3)
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_10000DDA0(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  if (a2 < 0 || !a1 && a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  bzero(v9, 0x450uLL);
  v14 = a4;
  v10 = a1;
  v11 = 1064;
  v12 = a2;
  if (ioctl(dword_1000309F0, 0xC450443EuLL, v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a3)
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_10000DE88(const void *a1, uint64_t a2, int *a3, int a4)
{
  if (a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    bzero(__dst, 0x450uLL);
    v14 = a4;
    if (a1)
    {
      memcpy(__dst, a1, sizeof(__dst));
    }

    v11 = a2;
    v12 = 1064;
    v13 = v5;
    result = ioctl(dword_1000309F0, 0xC450443FuLL, __dst);
    if (!result)
    {
      *a3 = v13;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000DF88(const void *a1, uint64_t a2, int *a3, int a4)
{
  if (a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    bzero(__dst, 0x450uLL);
    v14 = a4;
    if (a1)
    {
      memcpy(__dst, a1, sizeof(__dst));
    }

    v11 = a2;
    v12 = 1200;
    v13 = v5;
    result = ioctl(dword_1000309F0, 0xC4504440uLL, __dst);
    if (!result)
    {
      *a3 = v13;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E088(void *__src, _DWORD *a2, unsigned int a3)
{
  if (!__src)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v6 = 0u;
  v7 = 0u;
  v8 = a3;
  memcpy(__dst, __src, sizeof(__dst));
  if (ioctl(dword_1000309F0, 0xC4504442uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = DWORD2(v7);
  }

  return result;
}

uint64_t sub_10000E154(void *__src, uint64_t a2, int a3, _DWORD *a4, unsigned int a5)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = 20;
  v12 = a3;
  if (ioctl(dword_1000309F0, 0xC4504443uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a4)
  {
    *a4 = DWORD1(v13);
  }

  return result;
}

uint64_t sub_10000E24C(void *__src, uint64_t a2, int a3, _DWORD *a4, unsigned int a5)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = 20;
  v12 = a3;
  if (ioctl(dword_1000309F0, 0xC4504444uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a4)
  {
    *a4 = DWORD2(v13);
  }

  return result;
}

uint64_t sub_10000E344(void *__src, uint64_t a2, int a3, int *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, unsigned int a8)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v20 = 0u;
  v21 = a8;
  memcpy(__dst, __src, sizeof(__dst));
  v17 = a2;
  v18 = 20;
  v19 = a3;
  if (a4)
  {
    v15 = *a4;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v20) = v15;
  if (ioctl(dword_1000309F0, 0xC4504445uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    *a5 = DWORD1(v20);
  }

  if (a6)
  {
    *a6 = DWORD2(v20);
  }

  if (a7)
  {
    *a7 = HIDWORD(v20);
  }

  result = 0;
  if (a4)
  {
    *a4 = v20;
  }

  return result;
}

uint64_t sub_10000E488(void *__src, uint64_t a2, int *a3, unsigned int a4)
{
  if (__src && a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    v12 = 0u;
    v13 = a4;
    memcpy(__dst, __src, sizeof(__dst));
    v9 = a2;
    v10 = 20;
    v11 = v5;
    result = ioctl(dword_1000309F0, 0xC4504446uLL, __dst);
    if (!result)
    {
      *a3 = v11;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E57C(void *__src, uint64_t a2, int *a3, unsigned int a4)
{
  if (__src && a3 && (v5 = *a3, (*a3 & 0x80000000) == 0) && (a2 || !v5))
  {
    v12 = 0u;
    v13 = a4;
    memcpy(__dst, __src, sizeof(__dst));
    v9 = a2;
    v10 = 96;
    v11 = v5;
    result = ioctl(dword_1000309F0, 0xC4504447uLL, __dst);
    if (!result)
    {
      *a3 = v11;
      return result;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000E670(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  if (a2 < 0 || !a1 && a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  bzero(v9, 0x450uLL);
  v14 = a4;
  v10 = a1;
  v11 = 1064;
  v12 = a2;
  if (ioctl(dword_1000309F0, 0xC4504441uLL, v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a3)
  {
    *a3 = v13;
  }

  return result;
}

uint64_t sub_10000E758(void *__src, uint64_t a2, int a3, _DWORD *a4, unsigned int a5)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = 20;
  v12 = a3;
  if (ioctl(dword_1000309F0, 0xC4504449uLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a4)
  {
    *a4 = DWORD1(v13);
  }

  return result;
}

uint64_t sub_10000E850(void *__src, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5, int a6, int a7)
{
  if (!__src || a3 < 0 || !a2 && a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v17 = 0u;
  v18 = a7;
  memcpy(__dst, __src, sizeof(__dst));
  v14 = a2;
  v15 = 20;
  v16 = a3;
  v19 = a6;
  if (ioctl(dword_1000309F0, 0xC450444DuLL, __dst))
  {
    return 0xFFFFFFFFLL;
  }

  if (a4)
  {
    *a4 = DWORD1(v17);
  }

  result = 0;
  if (a5)
  {
    *a5 = v17;
  }

  return result;
}

uint64_t sub_10000E964(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a3)
  {
    goto LABEL_7;
  }

  v4 = *a3;
  if (*a3 < 0 || !a2 && v4)
  {
    goto LABEL_7;
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  if (a1)
  {
    if (__strlcpy_chk() > 0xF)
    {
LABEL_7:
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }

    v4 = *a3;
  }

  *&v8 = a2;
  DWORD2(v8) = 168;
  HIDWORD(v8) = v4;
  result = ioctl(dword_1000309F0, 0xC0284457uLL, &v7);
  if (!result)
  {
    *a3 = HIDWORD(v8);
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000EA4C(void **a1, void *__src)
{
  if (!a1 || ((v4 = *a1, v4 >= 1) ? (v5 = __src == 0) : (v5 = 1), !v5 ? (v6 = v4 >= 7) : (v6 = 1), v6))
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v8 = qword_1000309A8[v4];
  v9 = *(a1 + 1);
  if (v9 == *(a1 + 2))
  {
    if (!sub_10000EAF8(a1, 0))
    {
      v9 = *(a1 + 1);
      goto LABEL_15;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_15:
  memcpy(a1[2] + v8 * v9, __src, v8);
  result = 0;
  ++*(a1 + 1);
  return result;
}

uint64_t sub_10000EAF8(void **a1, unsigned int a2)
{
  if (!a1 || (v3 = *a1, (v3 - 7) <= 0xFFFFFFF9))
  {
    v4 = __error();
    v5 = 22;
LABEL_4:
    *v4 = v5;
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 2);
  if (a2 && v7 >= a2)
  {
    return 0;
  }

  v8 = qword_1000309A8[v3];
  if (v7)
  {
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = (2 * v7);
    }

    if ((v9 & 0x80000000) != 0 || 0xFFFFFFFFFFFFFFFFLL / v8 <= v9)
    {
      v4 = __error();
      v5 = 12;
      goto LABEL_4;
    }

    v10 = malloc_type_realloc(a1[2], v8 * v9, 0xF80DFD9CuLL);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v10;
    bzero(&v10[v8 * *(a1 + 2)], v8 * (v9 - *(a1 + 2)));
    a1[2] = v11;
    LODWORD(v11) = v9;
  }

  else
  {
    if (a2 <= 64)
    {
      v11 = 64;
    }

    else
    {
      v11 = a2;
    }

    v12 = malloc_type_calloc(v8, v11, 0x99FABC16uLL);
    a1[2] = v12;
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  *(a1 + 2) = v11;
  return result;
}

unsigned int *sub_10000EC0C(unsigned int *result, uint64_t a2)
{
  if (result)
  {
    v2 = *result;
    if ((v2 - 7) >= 0xFFFFFFFA && (v3 = result[1]) != 0)
    {
      if (a2)
      {
        v4 = qword_1000309A8[v2];
        v5 = (a2 - *(result + 2)) / v4;
        v6 = a2 + v4;
        if (v5 >= v3 - 1)
        {
          return 0;
        }

        else
        {
          return v6;
        }
      }

      else
      {
        return *(result + 2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10000EC68(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 16) = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_10000ECA4(uint64_t a1, const char *a2, uint64_t a3, unsigned int (*a4)(uint64_t, _BYTE *, uint64_t))
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 == 45 && !a2[1])
  {
    v7 = __stdinp;
    goto LABEL_8;
  }

  v7 = sub_100013B04(a2, "r");
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
LABEL_8:
    while (1)
    {
      for (i = byte_1000309E0; ; byte_1000309E0 = i)
      {
        if (i < 0)
        {
          if (!__maskrune(i, 0x4000uLL))
          {
            break;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[i] & 0x4000) == 0)
        {
          break;
        }

        if (feof(v7))
        {
          break;
        }

        i = fgetc(v7);
      }

      if (byte_1000309E0 != 35)
      {
        break;
      }

      do
      {
        if (feof(v7))
        {
          break;
        }

        byte_1000309E0 = fgetc(v7);
      }

      while (byte_1000309E0 != 10);
    }

    if (feof(v7))
    {
      v8 = 0;
      byte_1000309E0 = 32;
      goto LABEL_34;
    }

    v10 = 0;
    while (1)
    {
      if (v10 <= 255)
      {
        v12[v10++] = byte_1000309E0;
      }

      byte_1000309E0 = fgetc(v7);
      if (feof(v7))
      {
        break;
      }

      if (byte_1000309E0 < 0)
      {
        if (__maskrune(byte_1000309E0, 0x4000uLL))
        {
          break;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[byte_1000309E0] & 0x4000) != 0)
      {
        break;
      }
    }

    if (v10 >= 256)
    {
      break;
    }

    v12[v10] = 0;
    if (a4(a1, v12, a3))
    {
      goto LABEL_33;
    }
  }

  *__error() = 22;
LABEL_33:
  v8 = 0xFFFFFFFFLL;
LABEL_34:
  if (v7 != __stdinp)
  {
    fclose(v7);
  }

  return v8;
}

char *sub_10000EEC8(int a1)
{
  if (a1 == 3)
  {
    return "Table does not exist";
  }

  if (a1 == 2)
  {
    return "Anchor or Ruleset does not exist";
  }

  return strerror(a1);
}

uint64_t sub_10000EF18(uint64_t a1, char **a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, size_t a7)
{
  v12 = a1;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  if (!a4)
  {
    sub_10001069C();
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  v68[1] = 0;
  v69 = 0;
  v68[0] = 0;
  bzero(__src, 0x428uLL);
  if (a3)
  {
    if (strlen(a3) >= 0x20)
    {
      sub_10001069C();
    }

    if (__strlcpy_chk() >= 0x20)
    {
      sub_100020B30();
    }
  }

  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020B30();
  }

  v13 = a7 & 8;
  v14 = v13 >> 2;
  if (*a4 == 45)
  {
    if (*(a4 + 1) == 70 && !*(a4 + 2))
    {
      if (v12 || a5)
      {
        sub_10001069C();
      }

      if ((a7 & 0x108) != 8 && sub_10000DBEC(__src, &v67, v13 >> 2))
      {
        goto LABEL_168;
      }

      sub_10001019C(a7, "%d tables deleted");
      goto LABEL_61;
    }

    if (*(a4 + 1) == 115 && !*(a4 + 2))
    {
      if ((a7 & 0x80) != 0)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      LODWORD(v70) = v18;
      if (v12 || a5)
      {
        sub_10001069C();
      }

      v19 = a7 & 0x108;
      v20 = HIDWORD(v70);
      do
      {
        sub_10000EAF8(&v70, v20);
        HIDWORD(v70) = v71;
        if ((a7 & 0x80) != 0)
        {
          if (v19 != 8 && sub_10000DF88(__src, v72, &v70 + 1, v13 >> 2))
          {
            goto LABEL_168;
          }
        }

        else if (v19 != 8 && sub_10000DE88(__src, v72, &v70 + 1, v13 >> 2))
        {
          goto LABEL_168;
        }

        v20 = HIDWORD(v70);
      }

      while (SHIDWORD(v70) > v71);
      if ((a7 & 0x400) != 0 && SHIDWORD(v70) >= 1)
      {
        sub_100011AC4("TABLES:");
      }

      for (i = sub_10000EC0C(&v70, 0); i; i = sub_10000EC0C(&v70, i))
      {
        if ((a7 & 0x80) != 0)
        {
          v73 = *(i + 1176);
          if ((a7 & 0x200) != 0 || (*(i + 1056) & 4) != 0)
          {
            v21 = 1;
            sub_10001022C(i, 1, a7 & 0x200);
            printf("\tAddresses:   %d\n", *(i + 1184));
            v22 = ctime(&v73);
            printf("\tCleared:     %s", v22);
            printf("\tReferences:  [ Anchors: %-18d Rules: %-18d ]\n", *(i + 1192), *(i + 1188));
            printf("\tEvaluations: [ NoMatch: %-18llu Match: %-18llu ]\n", *(i + 1168), *(i + 1160));
            v23 = 0;
            do
            {
              v24 = 0;
              v25 = 3 * v23;
              v26 = v21;
              v27 = &off_10002CD20[v25];
              v28 = (i + 1064 + 8 * v25);
              do
              {
                printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", v27[v24++], *v28, v28[6]);
                ++v28;
              }

              while (v24 != 3);
              v21 = 0;
              v23 = 1;
            }

            while ((v26 & 1) != 0);
          }
        }

        else
        {
          sub_10001022C(i, a7 & 4, a7 & 0x200);
        }
      }

      goto LABEL_170;
    }
  }

  if (!strcmp(a4, "kill"))
  {
    if (v12 || a5)
    {
      sub_10001069C();
    }

    if ((a7 & 0x108) != 8 && sub_10000DDA0(__src, 1, &v67, v13 >> 2))
    {
      goto LABEL_168;
    }

    sub_10001019C(a7, "%d table deleted");
    goto LABEL_61;
  }

  if (!strcmp(a4, "flush"))
  {
    if (v12 || a5)
    {
      sub_10001069C();
    }

    if ((a7 & 0x108) != 8 && sub_10000E088(__src, &v67, v13 >> 2))
    {
      goto LABEL_168;
    }

    sub_10001019C(a7, "%d addresses deleted");
    goto LABEL_61;
  }

  if (!strcmp(a4, "add"))
  {
    LODWORD(v70) = 3;
    if (sub_100010334(&v70, v12, a2, a5, 0))
    {
      goto LABEL_169;
    }

    v76 |= 1u;
    if ((a7 & 0x108) != 8 && sub_10000DCB8(__src, 1, &v67 + 1, v13 >> 2) && *__error() != 1)
    {
      goto LABEL_168;
    }

    if (!HIDWORD(v67) || (sub_10000FE48(v75), sub_10001019C(a7, "%d table created", HIDWORD(v67)), (a7 & 8) == 0))
    {
      v76 &= ~1u;
      if ((a7 & 0x108) == 8 || !sub_10000E154(__src, v72, SHIDWORD(v70), &v67 + 1, v14 | a7 & 4))
      {
        sub_10001019C(a7, "%d/%d addresses added", HIDWORD(v67), HIDWORD(v70));
        if ((a7 & 4) != 0)
        {
          v15 = sub_10000EC0C(&v70, 0);
          if (v15)
          {
            v16 = v15;
            do
            {
              if ((a7 & 0x80) != 0 || v16[19])
              {
                sub_1000103F8(v16, 0, a7 & 0x40);
              }

              v16 = sub_10000EC0C(&v70, v16);
              i = 0;
            }

            while (v16);
            goto LABEL_170;
          }
        }

        goto LABEL_61;
      }

      goto LABEL_168;
    }
  }

  else
  {
    if (!strcmp(a4, "delete"))
    {
      LODWORD(v70) = 3;
      if (!sub_100010334(&v70, v12, a2, a5, 0))
      {
        if ((a7 & 0x108) == 8 || !sub_10000E24C(__src, v72, SHIDWORD(v70), &v67, v14 | a7 & 4))
        {
          sub_10001019C(a7, "%d/%d addresses deleted", v67, HIDWORD(v70));
          if ((a7 & 4) != 0)
          {
            v29 = sub_10000EC0C(&v70, 0);
            if (v29)
            {
              v30 = v29;
              do
              {
                if ((a7 & 0x80) != 0 || v30[19])
                {
                  sub_1000103F8(v30, 0, a7 & 0x40);
                }

                v30 = sub_10000EC0C(&v70, v30);
                i = 0;
              }

              while (v30);
              goto LABEL_170;
            }
          }

          goto LABEL_61;
        }

        goto LABEL_168;
      }

      goto LABEL_169;
    }

    if (strcmp(a4, "replace"))
    {
      if (!strcmp(a4, "expire"))
      {
        v73 = 0;
        LODWORD(v70) = 4;
        LODWORD(v68[0]) = 3;
        if (v12 != 1 || a5)
        {
          sub_10001069C();
        }

        v32 = strtonum(*a2, 0, 0xFFFFFFFFLL, &v73);
        if (v73)
        {
          errx(1, "expiry time: %s", v73);
        }

        v33 = v32;
        v34 = a7 & 0x108;
        v35 = HIDWORD(v70);
        do
        {
          sub_10000EAF8(&v70, v35);
          HIDWORD(v70) = v71;
          if (v34 == 8)
          {
            break;
          }

          if (sub_10000E57C(__src, v72, &v70 + 1, v13 >> 2))
          {
            goto LABEL_168;
          }

          v35 = HIDWORD(v70);
        }

        while (SHIDWORD(v70) > v71);
        v36 = sub_10000EC0C(&v70, 0);
        if (v36)
        {
          v37 = v36;
          do
          {
            if (time(0) - *(v37 + 11) > v33 && sub_10000EA4C(v68, v37))
            {
              sub_100020B4C();
            }

            v37 = sub_10000EC0C(&v70, v37);
          }

          while (v37);
        }

        if (v34 != 8 && sub_10000E24C(__src, v69, SHIDWORD(v68[0]), &v67, v14 | a7 & 4))
        {
          goto LABEL_168;
        }

        sub_10001019C(a7, "%d/%d addresses expired", v67, HIDWORD(v68[0]));
        if ((a7 & 4) != 0)
        {
          v38 = sub_10000EC0C(v68, 0);
          if (v38)
          {
            v39 = v38;
            do
            {
              if ((a7 & 0x80) != 0 || v39[19])
              {
                sub_1000103F8(v39, 0, a7 & 0x40);
              }

              v39 = sub_10000EC0C(v68, v39);
            }

            while (v39);
          }
        }

        goto LABEL_61;
      }

      if (!strcmp(a4, "show"))
      {
        if ((a7 & 4) != 0)
        {
          v40 = 4;
        }

        else
        {
          v40 = 3;
        }

        LODWORD(v70) = v40;
        if (v12 || a5)
        {
          sub_10001069C();
        }

        v41 = a7 & 0x108;
        v42 = HIDWORD(v70);
        do
        {
          sub_10000EAF8(&v70, v42);
          HIDWORD(v70) = v71;
          if ((a7 & 4) != 0)
          {
            if (v41 != 8 && sub_10000E57C(__src, v72, &v70 + 1, v13 >> 2))
            {
              goto LABEL_168;
            }
          }

          else if (v41 != 8 && sub_10000E488(__src, v72, &v70 + 1, v13 >> 2))
          {
            goto LABEL_168;
          }

          v42 = HIDWORD(v70);
        }

        while (SHIDWORD(v70) > v71);
        v43 = sub_10000EC0C(&v70, 0);
        if (v43)
        {
          v44 = v43;
          v64 = a7;
          do
          {
            if ((a7 & 4) != 0)
            {
              v73 = *(v44 + 11);
              sub_1000103F8(v44, 0, a7 & 0x40);
              v45 = ctime(&v73);
              printf("\tCleared:     %s", v45);
              v46 = 0;
              v47 = 1;
              do
              {
                v48 = v47;
                v49 = &off_10002CD20[3 * v46];
                v50 = &v44[4 * v46 + 6];
                v51 = &v44[4 * v46 + 14];
                printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", *v49, *v50, *v51);
                printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", v49[1], *(v50 + 1), *(v51 + 1));
                v47 = 0;
                v46 = 1;
              }

              while ((v48 & 1) != 0);
              LOBYTE(a7) = v64;
            }

            else
            {
              sub_1000103F8(v44, 0, a7 & 0x40);
            }

            v44 = sub_10000EC0C(&v70, v44);
            i = 0;
          }

          while (v44);
          goto LABEL_170;
        }

        goto LABEL_61;
      }

      if (strcmp(a4, "test"))
      {
        if (!strcmp(a4, "zero"))
        {
          if (v12 || a5)
          {
            sub_10001069C();
          }

          if ((a7 & 0x108) != 8 && sub_10000E670(__src, 1, &v66, v14 | 0x10))
          {
            goto LABEL_168;
          }

          sub_10001019C(a7, "%d table/stats cleared");
        }

        else
        {
          warnx("pfctl_table: unknown command '%s'", a4);
        }

LABEL_61:
        i = 0;
LABEL_170:
        sub_10000EC68(&v70);
        sub_10000EC68(v68);
        return i;
      }

      LODWORD(v70) = 3;
      LODWORD(v68[0]) = 3;
      if (!sub_100010334(&v70, v12, a2, a5, 1))
      {
        if ((a7 & 0x80) != 0)
        {
          v14 |= 0x20u;
          v52 = sub_10000EC0C(&v70, 0);
          if (v52)
          {
            v53 = v52;
            do
            {
              if (sub_10000EA4C(v68, v53))
              {
                sub_100020B4C();
              }

              v53 = sub_10000EC0C(&v70, v53);
            }

            while (v53);
          }
        }

        if ((a7 & 0x108) == 8)
        {
          v54 = 0;
          goto LABEL_192;
        }

        if (!sub_10000E758(__src, v72, SHIDWORD(v70), &v65, v14))
        {
          v54 = v65;
LABEL_192:
          sub_10001019C(a7, "%d/%d addresses match", v54, HIDWORD(v70));
          if ((a7 & 0x84) == 4)
          {
            v59 = sub_10000EC0C(&v70, 0);
            if (v59)
            {
              v60 = v59;
              do
              {
                if (v60[19] == 1)
                {
                  sub_1000103F8(v60, 0, a7 & 0x40);
                }

                v60 = sub_10000EC0C(&v70, v60);
              }

              while (v60);
            }
          }

          if ((a7 & 0x80) != 0)
          {
            v61 = sub_10000EC0C(&v70, 0);
            if (v61)
            {
              v62 = v61;
              v63 = 0;
              do
              {
                v63 = sub_10000EC0C(v68, v63);
                sub_1000103F8(v63, v62, a7 & 0x40);
                v62 = sub_10000EC0C(&v70, v62);
              }

              while (v62);
            }
          }

          i = 2 * (v65 < SHIDWORD(v70));
          goto LABEL_170;
        }

LABEL_168:
        sub_100010140();
      }

LABEL_169:
      i = 0xFFFFFFFFLL;
      goto LABEL_170;
    }

    LODWORD(v70) = 3;
    if (sub_100010334(&v70, v12, a2, a5, 0))
    {
      goto LABEL_169;
    }

    v76 |= 1u;
    if ((a7 & 0x108) != 8 && sub_10000DCB8(__src, 1, &v67 + 1, v13 >> 2) && *__error() != 1)
    {
      goto LABEL_168;
    }

    if (!HIDWORD(v67) || (sub_10000FE48(v75), sub_10001019C(a7, "%d table created", HIDWORD(v67)), (a7 & 8) == 0))
    {
      v76 &= ~1u;
      while (1)
      {
        v31 = v71;
        LODWORD(v73) = v71;
        if ((a7 & 0x108) == 8)
        {
          break;
        }

        if (sub_10000E344(__src, v72, SHIDWORD(v70), &v73, &v67 + 1, &v67, &v66 + 1, v14 | a7 & 4))
        {
          goto LABEL_168;
        }

        v31 = v73;
        if (v73 <= v71)
        {
          break;
        }

        sub_10000EAF8(&v70, v73);
      }

      HIDWORD(v70) = v31;
      if (HIDWORD(v67))
      {
        sub_10001019C(a7, "%d addresses added", HIDWORD(v67));
      }

      if (v67)
      {
        sub_10001019C(a7, "%d addresses deleted", v67);
      }

      v56 = BYTE4(v66);
      if (HIDWORD(v66))
      {
        sub_10001019C(a7, "%d addresses changed", HIDWORD(v66));
        v56 = HIDWORD(v66) != 0;
      }

      if (!v67 && (v56 & 1) == 0)
      {
        sub_10001019C(a7, "no changes");
      }

      if ((a7 & 4) != 0)
      {
        v57 = sub_10000EC0C(&v70, 0);
        if (v57)
        {
          v58 = v57;
          do
          {
            if ((a7 & 0x80) != 0 || v58[19])
            {
              sub_1000103F8(v58, 0, a7 & 0x40);
            }

            v58 = sub_10000EC0C(&v70, v58);
            i = 0;
          }

          while (v58);
          goto LABEL_170;
        }
      }

      goto LABEL_61;
    }
  }

  return 0;
}

uint64_t sub_10000FCC8(uint64_t a1, char **a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, size_t a7)
{
  if (!a3 || !a4)
  {
    sub_10001069C();
  }

  return sub_10000EF18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10000FD50(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  bzero(v11, 0x428uLL);
  if (__strlcpy_chk() > 0x1F || __strlcpy_chk() >= 0x400)
  {
    sub_100020B68();
  }

  v11[264] = a2;
  return sub_10000E850(v11, *(a5 + 16), *(a5 + 4), 0, 0, a6, 16 * (a3 != 0));
}

void sub_10000FE48(const char *a1)
{
  v2 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 1;
  do
  {
    sub_10000EAF8(&v7, v2);
    HIDWORD(v7) = v8;
    if (sub_10000DE88(0, v9, &v7 + 1, 64))
    {
      sub_10002098C();
    }

    v2 = HIDWORD(v7);
  }

  while (SHIDWORD(v7) > v8);
  v3 = sub_10000EC0C(&v7, 0);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      if ((v4[264] & 4) != 0 && (!a1 || !strcmp(a1, v4 + 1024)))
      {
        if (*v4)
        {
          if (v6 && !strcmp(v6, v4 + 1024))
          {
            v6 = 0;
            ++v5;
          }
        }

        else
        {
          v6 = (v4 + 256);
        }
      }

      v4 = sub_10000EC0C(&v7, v4);
    }

    while (v4);
    if (v5 == 1)
    {
      warnx("warning: namespace collision with <%s> global table.");
    }

    else if (v5 >= 2)
    {
      warnx("warning: namespace collisions with %d global tables.");
    }
  }

  sub_10000EC68(&v7);
}

uint64_t sub_10000FF8C(uint64_t a1, __int16 a2)
{
  v4 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 5;
  do
  {
    sub_10000EAF8(&v10, v4);
    HIDWORD(v10) = v11;
    if (sub_10000E964(a1, v12, &v10 + 1))
    {
      sub_100010140();
      return 1;
    }

    v4 = HIDWORD(v10);
  }

  while (SHIDWORD(v10) > v11);
  if ((a2 & 0x400) != 0)
  {
    sub_100011AC4("INTERFACES:");
  }

  result = sub_10000EC0C(&v10, 0);
  if (result)
  {
    v6 = result;
    do
    {
      v13 = *(v6 + 144);
      printf("%s", v6);
      if (a2 & 4) != 0 && (*(v6 + 153))
      {
        printf(" (skip)");
      }

      putchar(10);
      if ((a2 & 0x80) != 0)
      {
        v7 = ctime(&v13);
        printf("\tCleared:     %s", v7);
        printf("\tReferences:  [ States:  %-18d Rules: %-18d ]\n", *(v6 + 156), *(v6 + 160));
        for (i = 0; i != 8; ++i)
        {
          v9 = i >> 2;
          printf("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n", (&(&off_10002CD50[4 * v9])[2 * ((i >> 1) & 1)])[i & 1], *(v6 + 16 + 32 * v9 + 16 * ((i >> 1) & 1) + 8 * (i & 1)), *(v6 + 80 + 32 * v9 + 16 * ((i >> 1) & 1) + 8 * (i & 1)));
        }
      }

      result = sub_10000EC0C(&v10, v6);
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100010140()
{
  v0 = __stderrp;
  v1 = __progname;
  v2 = __error();
  v3 = sub_10000EEC8(*v2);
  return fprintf(v0, "%s: %s.\n", v1, v3);
}

size_t sub_10001019C(size_t result, const char *a2, ...)
{
  va_start(va, a2);
  if ((result & 0x10) == 0)
  {
    v2 = result;
    vfprintf(__stderrp, a2, va);
    if ((v2 & 0x100) != 0)
    {
      v3 = __stderrp;
      v4 = " (dummy).\n";
      v5 = 10;
    }

    else
    {
      v3 = __stderrp;
      if ((v2 & 8) != 0)
      {
        v4 = " (syntax only).\n";
        v5 = 16;
      }

      else
      {
        v4 = ".\n";
        v5 = 2;
      }
    }

    return fwrite(v4, v5, 1uLL, v3);
  }

  return result;
}

uint64_t sub_10001022C(uint64_t result, int a2, int a3)
{
  v3 = result;
  if (a3 || (*(result + 1056) & 4) != 0)
  {
    if (a2)
    {
      v4 = *(result + 1056);
      v5 = 104;
      if ((v4 & 0x20) == 0)
      {
        v5 = 45;
      }

      v6 = 114;
      if ((v4 & 0x10) == 0)
      {
        v6 = 45;
      }

      v13 = v6;
      v14 = v5;
      v7 = 105;
      if ((v4 & 8) == 0)
      {
        v7 = 45;
      }

      v8 = 97;
      if ((v4 & 4) == 0)
      {
        v8 = 45;
      }

      v12 = v7;
      v9 = 112;
      if ((v4 & 1) == 0)
      {
        v9 = 45;
      }

      v10 = 99;
      if ((*(result + 1056) & 2) == 0)
      {
        v10 = 45;
      }

      printf("%c%c%c%c%c%c\t%s", v10, v9, v8, v12, v13, v14, (result + 1024));
      if (*v3)
      {
        printf("\t%s", v3);
      }

      return putchar(10);
    }

    else
    {
      v11 = (result + 1024);

      return puts(v11);
    }
  }

  return result;
}

uint64_t sub_100010334(void **a1, int a2, char **a3, const char *a4, uint64_t a5)
{
  while (a2)
  {
    --a2;
    v10 = *a3++;
    if (sub_10000C9A8(a1, v10, a5))
    {
      if (*__error())
      {
        warn("cannot decode %s");
      }

      return 0xFFFFFFFFLL;
    }
  }

  result = sub_10000ECA4(a1, a4, a5, sub_10000C9A8);
  if (result)
  {
    warn("cannot load %s");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000103F8(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v30 = xmmword_100027CA0;
  v31 = unk_100027CB0;
  v32 = xmmword_100027CC0;
  v33 = unk_100027CD0;
  v26 = xmmword_100027C60;
  v27 = unk_100027C70;
  v28 = xmmword_100027C80;
  v29 = unk_100027C90;
  v22 = xmmword_100027C20;
  v23 = unk_100027C30;
  v24 = xmmword_100027C40;
  v25 = unk_100027C50;
  *v18 = *"{error}";
  v19 = *&algn_100027BE8[8];
  v20 = xmmword_100027C00;
  v21 = unk_100027C10;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = v6[19];
  if (v7 > 8)
  {
    v8 = 63;
  }

  else
  {
    v8 = aMadczxY[v6[19]];
  }

  v9 = a1[16];
  if (v9 == 30)
  {
    v10 = 128;
  }

  else
  {
    v10 = 32;
  }

  inet_ntop(v9, a1, v18, 0x100u);
  if (a1[18])
  {
    v11 = 33;
  }

  else
  {
    v11 = 32;
  }

  printf("%c %c%s", v8, v11, v18);
  if (v10 > a1[17])
  {
    printf("/%d", a1[17]);
  }

  if (a2 && v7)
  {
    if (__strlcpy_chk() >= 0x100)
    {
      sub_100020B84();
    }

    inet_ntop(a2[16], a2, v18, 0x100u);
    v12 = 32;
    if (a2[18])
    {
      v12 = 33;
    }

    printf("\t%c%s", v12, v18);
    if (v10 > a2[17])
    {
      printf("/%d");
    }
  }

  else if (a2 && !v7)
  {
    printf("\t nomatch");
  }

  if (a3 && v10 == a1[17])
  {
    __strlcpy_chk();
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    v15[1] = a1[16];
    if (v15[1] == 2)
    {
      *&v15[4] = *a1;
      v13 = 16;
    }

    else
    {
      *&v15[8] = *a1;
      v13 = 28;
    }

    v15[0] = v13;
    if (!getnameinfo(v15, v13, v17, 0x401u, 0, 0, 4))
    {
      printf("\t(%s)", v17);
    }
  }

  return putchar(10);
}

void sub_10001069C()
{
  fprintf(__stderrp, "usage: %s [-AdeghmNnOqRrvz] ", __progname);
  fwrite("[-a anchor] [-D macro=value] [-F modifier]\n", 0x2BuLL, 1uLL, __stderrp);
  fwrite("\t[-f file] [-i interface] [-K host | network] ", 0x2EuLL, 1uLL, __stderrp);
  fwrite("[-k host | network]\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t[-o level] [-p device] [-s modifier] [-w interval]\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("\t[-t table -T command [address ...]] [-x level]\n", 0x30uLL, 1uLL, __stderrp);
  exit(1);
}

uint64_t sub_100010758(int a1, char a2)
{
  if (ioctl(a1, 0x20004401uLL))
  {
    if (*__error() == 17)
    {
      sub_100020BBC();
    }

    sub_100020BA0();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("pf enabled\n", 0xBuLL, 1uLL, __stderrp);
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442AuLL) && *__error() != 17)
  {
    sub_100020BD8();
  }

  return 0;
}

uint64_t sub_10001080C(int a1, char a2, uint64_t a3)
{
  v6 = a3;
  if (ioctl(a1, 0x40084408uLL, &v6))
  {
    sub_100020BF4();
  }

  if ((a2 & 0x10) == 0)
  {
    fprintf(__stderrp, "pf enabled\nToken : %llu\n", v6);
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442AuLL) && *__error() != 17)
  {
    sub_100020BD8();
  }

  return 0;
}

uint64_t sub_1000108B0(int a1, char a2)
{
  if (ioctl(a1, 0x20004402uLL))
  {
    if (*__error() == 2)
    {
      sub_100020C2C();
    }

    sub_100020C10();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("pf disabled\n", 0xCuLL, 1uLL, __stderrp);
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442BuLL) && *__error() != 2)
  {
    sub_100020C48();
  }

  return 0;
}

uint64_t sub_100010964(int a1, char a2, uint64_t a3)
{
  v6 = a3;
  v7 = 0;
  if (ioctl(a1, 0xC0104409uLL, &v6))
  {
    if (*__error() == 2)
    {
      sub_100020C2C();
    }

    if (*__error() == 22)
    {
      sub_100020C80();
    }

    sub_100020C64();
  }

  if ((a2 & 0x10) == 0)
  {
    if (v7)
    {
      fprintf(__stderrp, "disable request successful. %llu more pf enable reference(s) remaining, pf still enabled.\n", v7);
    }

    else
    {
      fwrite("pf disabled\n", 0xCuLL, 1uLL, __stderrp);
    }
  }

  if (dword_100030D54 && ioctl(a1, 0x2000442BuLL) && *__error() != 2)
  {
    sub_100020C48();
  }

  return 0;
}

uint64_t sub_100010A54(int a1, char a2)
{
  if (ioctl(a1, 0x20004416uLL))
  {
    sub_100020C9C();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("pf: statistics cleared\n", 0x17uLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010AB0(int a1, char a2)
{
  if ((a2 & 8) == 0)
  {
    v5 = 0x10000000000;
    memset(v4, 0, sizeof(v4));
    if (ioctl(a1, 0xC028445AuLL, v4))
    {
      sub_100020CB8();
    }

    if ((a2 & 0x10) == 0)
    {
      fwrite("pf: interface flags reset\n", 0x1AuLL, 1uLL, __stderrp);
    }
  }

  return 0;
}

uint64_t sub_100010B60(int a1, char a2, uint64_t a3)
{
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = 6;
  if (sub_10000CB30(v7, 0, a3) || sub_10000CB30(v7, 1, a3) || sub_10000CC54(a1, v7, 0xC0104451uLL, 0) || sub_10000CC54(a1, v7, 0xC0104452uLL, 0))
  {
    sub_100020CD4();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("rules cleared\n", 0xEuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010C34(int a1, char a2, uint64_t a3)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = 6;
  if (sub_10000CB30(v6, 5, a3) || sub_10000CC54(a1, v6, 0xC0104451uLL, 0) || sub_10000CC54(a1, v6, 0xC0104452uLL, 0))
  {
    sub_100020CF0();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("dummynet cleared\n", 0x11uLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010CF0(int a1, char a2, uint64_t a3)
{
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = 6;
  if (sub_10000CB30(v7, 2, a3) || sub_10000CB30(v7, 3, a3) || sub_10000CB30(v7, 4, a3) || sub_10000CC54(a1, v7, 0xC0104451uLL, 0) || sub_10000CC54(a1, v7, 0xC0104452uLL, 0))
  {
    sub_100020D0C();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("nat cleared\n", 0xCuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010DD8(int a1, char a2)
{
  if (!dword_100030D54)
  {
    return 0xFFFFFFFFLL;
  }

  v5[1] = 0;
  v5[2] = 0;
  v5[0] = 6;
  if (sub_10000CB30(v5, 6, "") || sub_10000CC54(a1, v5, 0xC0104451uLL, 0) || sub_10000CC54(a1, v5, 0xC0104452uLL, 0))
  {
    sub_100020D28();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("altq cleared\n", 0xDuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010EB0(int a1, char a2)
{
  if (ioctl(a1, 0x20004455uLL))
  {
    sub_100020D44();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("source tracking entries cleared\n", 0x20uLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_100010F0C(int a1, const char *a2, char a3)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (a2 && __strlcpy_chk() >= 0x10)
  {
    errx(1, "invalid interface: %s", a2);
  }

  if (ioctl(a1, 0xC0D84412uLL, v7))
  {
    sub_100020D60();
  }

  if ((a3 & 0x10) == 0)
  {
    fprintf(__stderrp, "%d states cleared\n", LOBYTE(v7[0]));
  }

  return 0;
}

void sub_100011010(char *a1, void *a2)
{
  __errstrp = 0;
  v4 = strchr(a1, 47);
  if (v4)
  {
    v13 = 0;
    *v4 = 0;
    v5 = v4 + 1;
    v6 = strtonum(v4 + 1, 0, 128, &__errstrp);
    if (__errstrp)
    {
      errx(1, "prefix is %s: %s", __errstrp, v5);
    }

    v7 = v6;
    memset(&v14, 0, sizeof(v14));
    v14.ai_flags = 4;
    v8 = getaddrinfo(a1, 0, &v14, &v13);
    if (v8)
    {
      sub_100020D7C(v8);
    }

    v9 = v13;
    ai_family = v13->ai_family;
    if (ai_family == 2 && v7 >= 33)
    {
      sub_100020DC0();
    }

    if (ai_family == 30 && v7 >= 129)
    {
      sub_100020DA4();
    }

    if (ai_family == 30)
    {
      v11 = (v7 >> 3);
      v12 = v7 & 7;
      *a2 = 0;
      a2[1] = 0;
      if (v11 >= 1)
      {
        memset(a2, 255, v11);
      }

      if (v12)
      {
        *(a2 + v11) = 0xFF00u >> v12;
      }
    }

    else if (ai_family == 2)
    {
      *a2 = bswap32(0xFFFFFFFFFFLL << (32 - v7));
    }

    freeaddrinfo(v9);
  }
}

uint64_t sub_10001115C(int a1, uint64_t a2, char a3)
{
  v30 = 0;
  v31 = 0;
  memset(v20, 0, sizeof(v20));
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v21 = -1;
  v22 = 0xFFFFFFFFFFFFFFFFLL;
  *&v29.sa_len = -1;
  *&v29.sa_data[6] = -1;
  sub_100011010(qword_100030D58, &v21);
  v5 = getaddrinfo(qword_100030D58, 0, 0, &v30);
  if (v5)
  {
    sub_100020D7C(v5);
  }

  v6 = v30;
  if (v30)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      ai_addr = v6->ai_addr;
      if (ai_addr)
      {
        if (*&v29.sa_len != *&ai_addr->sa_len || *&v29.sa_data[6] != *&ai_addr->sa_data[6])
        {
          v29 = *ai_addr;
          ai_family = v6->ai_family;
          v20[0] = ai_family;
          if (ai_family == 30)
          {
            *&v20[8] = *&ai_addr->sa_data[6];
          }

          else
          {
            if (ai_family != 2)
            {
              sub_100020DF8(ai_family);
            }

            *&v20[8] = *&ai_addr->sa_data[2];
          }

          ++v8;
          if (dword_100030D68 < 2)
          {
            if (ioctl(a1, 0xC088445BuLL, v20))
            {
              sub_100020DDC();
            }

            v9 += v20[0];
            v20[0] = v30->ai_family;
          }

          else
          {
            *(&v24[1] + 1) = -1;
            *&v25 = -1;
            *&v28.sa_len = -1;
            *&v28.sa_data[6] = -1;
            sub_100011010(qword_100030D60, &v24[1] + 1);
            v13 = getaddrinfo(qword_100030D60, 0, 0, &v31);
            if (v13)
            {
              sub_100020D7C(v13);
            }

            v14 = v31;
            if (v31)
            {
              v7 = 0;
              do
              {
                v15 = v14->ai_addr;
                if (v15 && v14->ai_family == v20[0] && (*&v28.sa_len != *&v15->sa_len || *&v28.sa_data[6] != *&v15->sa_data[6]))
                {
                  v28 = *v15;
                  if (v20[0] == 30)
                  {
                    *(v24 + 8) = *&v15->sa_data[6];
                  }

                  else
                  {
                    if (v20[0] != 2)
                    {
                      errx(1, "Unknown address family %d", v20[0]);
                    }

                    DWORD2(v24[0]) = *&v15->sa_data[2];
                  }

                  if (ioctl(a1, 0xC088445BuLL, v20))
                  {
                    sub_100020DDC();
                  }

                  ++v7;
                  v9 += v20[0];
                  v20[0] = v14->ai_family;
                }

                v14 = v14->ai_next;
              }

              while (v14);
              v17 = v31;
            }

            else
            {
              v17 = 0;
              v7 = 0;
            }

            freeaddrinfo(v17);
          }
        }
      }

      v6 = v6->ai_next;
    }

    while (v6);
    v18 = v30;
  }

  else
  {
    v18 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  freeaddrinfo(v18);
  if ((a3 & 0x10) == 0)
  {
    fprintf(__stderrp, "killed %d src nodes from %d sources and %d destinations\n", v9, v8, v7);
  }

  return 0;
}

uint64_t sub_10001143C(int a1, uint64_t a2, char a3)
{
  v22 = 0;
  v23 = 0;
  memset(v24, 0, sizeof(v24));
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v25 = -1;
  v26 = 0xFFFFFFFFFFFFFFFFLL;
  *&v21.sa_len = -1;
  *&v21.sa_data[6] = -1;
  if (a2 && __strlcpy_chk() >= 0x10)
  {
    errx(1, "invalid interface: %s");
  }

  sub_100011010(qword_100030D70, &v25);
  v5 = getaddrinfo(qword_100030D70, 0, 0, &v22);
  if (v5)
  {
    sub_100020D7C(v5);
  }

  v6 = v22;
  if (v22)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      ai_addr = v6->ai_addr;
      if (ai_addr)
      {
        if (*&v21.sa_len != *&ai_addr->sa_len || *&v21.sa_data[6] != *&ai_addr->sa_data[6])
        {
          v21 = *ai_addr;
          ai_family = v6->ai_family;
          v24[0] = ai_family;
          if (ai_family == 30)
          {
            *&v24[8] = *&ai_addr->sa_data[6];
          }

          else
          {
            if (ai_family != 2)
            {
              sub_100020DF8(ai_family);
            }

            *&v24[8] = *&ai_addr->sa_data[2];
          }

          ++v8;
          if (dword_100030D80 < 2)
          {
            if (ioctl(a1, 0xC0D84429uLL, v24))
            {
              sub_100020E20();
            }

            v9 += v24[0];
            v24[0] = v22->ai_family;
          }

          else
          {
            *(&v28[1] + 1) = -1;
            *&v29 = -1;
            *&v20.sa_len = -1;
            *&v20.sa_data[6] = -1;
            sub_100011010(qword_100030D78, &v28[1] + 1);
            v13 = getaddrinfo(qword_100030D78, 0, 0, &v23);
            if (v13)
            {
              sub_100020D7C(v13);
            }

            v14 = v23;
            if (v23)
            {
              v7 = 0;
              do
              {
                v15 = v14->ai_addr;
                if (v15 && v14->ai_family == v24[0] && (*&v20.sa_len != *&v15->sa_len || *&v20.sa_data[6] != *&v15->sa_data[6]))
                {
                  v20 = *v15;
                  if (v24[0] == 30)
                  {
                    *(v28 + 8) = *&v15->sa_data[6];
                  }

                  else
                  {
                    if (v24[0] != 2)
                    {
                      errx(1, "Unknown address family %d");
                    }

                    DWORD2(v28[0]) = *&v15->sa_data[2];
                  }

                  if (ioctl(a1, 0xC0D84429uLL, v24))
                  {
                    sub_100020E20();
                  }

                  ++v7;
                  v9 += v24[0];
                  v24[0] = v14->ai_family;
                }

                v14 = v14->ai_next;
              }

              while (v14);
              v17 = v23;
            }

            else
            {
              v17 = 0;
              v7 = 0;
            }

            freeaddrinfo(v17);
          }
        }
      }

      v6 = v6->ai_next;
    }

    while (v6);
    v18 = v22;
  }

  else
  {
    v18 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  freeaddrinfo(v18);
  if ((a3 & 0x10) == 0)
  {
    fprintf(__stderrp, "killed %d states from %d sources and %d destinations\n", v9, v8, v7);
  }

  return 0;
}

uint64_t sub_100011758(int a1, void *a2, int a3, int a4, char a5, const void *a6)
{
  bzero(v19, 0x470uLL);
  memcpy(v24, a6, sizeof(v24));
  v23 = a5;
  v22 = a3;
  v20 = a4;
  if (ioctl(a1, 0xC4704435uLL, v19))
  {
    v14 = "DIOCGETADDRS";
LABEL_10:
    warn(v14);
    return 0xFFFFFFFFLL;
  }

  v12 = v21;
  *a2 = 0;
  a2[1] = a2;
  if (v12)
  {
    v13 = 0;
    v14 = "DIOCGETADDR";
    while (1)
    {
      v21 = v13;
      if (ioctl(a1, 0xC4704436uLL, v19))
      {
        break;
      }

      v15 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL);
      if (!v15)
      {
        sub_100020928();
      }

      v16 = v15;
      memmove(v15, &v25, 0x58uLL);
      v16[6] = 0;
      v17 = a2[1];
      v16[7] = v17;
      *v17 = v16;
      a2[1] = v16 + 6;
      if (v12 == ++v13)
      {
        return 0;
      }
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t *sub_1000118D8(uint64_t *result, uint64_t a2)
{
  for (i = *result; *result; i = *result)
  {
    v3 = (i + 48);
    v4 = *(i + 48);
    v5 = *(i + 56);
    v6 = (v4 + 56);
    if (!v4)
    {
      v6 = result + 1;
    }

    *v6 = v5;
    *v5 = v4;
    *v3 = 0;
    v7 = *(a2 + 8);
    *(i + 56) = v7;
    *v7 = i;
    *(a2 + 8) = v3;
  }

  return result;
}

void *sub_100011924(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = result[6];
      v4 = result[7];
      v5 = (v3 + 56);
      if (!v3)
      {
        v5 = a1 + 1;
      }

      *v5 = v4;
      *v4 = v3;
      free(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

uint64_t sub_100011974(uint64_t result, __int16 a2)
{
  v3 = result;
  if ((a2 & 0x200) != 0)
  {
    printf("  [ Skip steps: ");
    v4 = 0;
    v5 = v3 + 128;
    do
    {
      if (*(v5 + v4 * 8) != *(v3 + 948) + 1)
      {
        printf("%s=", off_10002CD90[v4]);
        if (*(v5 + v4 * 8) == -1)
        {
          printf("end ");
        }

        else
        {
          printf("%u ");
        }
      }

      ++v4;
    }

    while (v4 != 8);
    puts("]");
    result = printf("  [ queue: qname=%s qid=%u pqname=%s pqid=%u ]\n", (v3 + 272), *(v3 + 936), (v3 + 336), *(v3 + 940));
  }

  if ((a2 & 4) != 0)
  {
    result = printf("  [ Evaluations: %-8llu  Packets: %-8llu  Bytes: %-10llu  States: %-6u]\n", *(v3 + 648), *(v3 + 664) + *(v3 + 656), *(v3 + 680) + *(v3 + 672), *(v3 + 904));
    if ((a2 & 0x200) == 0)
    {
      return printf("  [ Inserted: uid %u pid %u ]\n", *(v3 + 956), *(v3 + 960));
    }
  }

  return result;
}

uint64_t sub_100011AC4(char *a1)
{
  if (!dword_1000309F4)
  {
    putchar(10);
  }

  dword_1000309F4 = 0;

  return puts(a1);
}

uint64_t sub_100011B10(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v10 = strlen(a2);
  v11 = v10;
  v12 = 1024 - v10;
  if (*a2)
  {
    snprintf(&a2[v10], v12, "/%s");
  }

  else
  {
    snprintf(&a2[v10], v12, "%s");
  }

  bzero(&v30, 0xC20uLL);
  memcpy(v33, a2, sizeof(v33));
  if ((a3 & 0x400) != 0)
  {
    if (ioctl(a1, 0xCC204406uLL, &v30))
    {
      goto LABEL_65;
    }

    v43 = 2;
    if (ioctl(a1, 0xCC204406uLL, &v30))
    {
      goto LABEL_65;
    }

    if (a4)
    {
      if (a4 != 1 || !dword_100030D50)
      {
        goto LABEL_15;
      }

      v13 = "LABEL COUNTERS:";
    }

    else
    {
      v13 = "FILTER RULES:";
    }

    sub_100011AC4(v13);
    goto LABEL_15;
  }

  v43 = 2;
  if (ioctl(a1, 0xCC204406uLL, &v30))
  {
    goto LABEL_65;
  }

LABEL_15:
  v27 = v11;
  v14 = v32;
  if ((a3 & 0x20) != 0)
  {
    v30 = 1;
  }

  if (v32)
  {
    v15 = 0;
    while (1)
    {
      v32 = v15;
      if (ioctl(a1, 0xCC204407uLL, &v30))
      {
        break;
      }

      if (sub_100011758(a1, v37, v15, v31, 2, a2))
      {
LABEL_62:
        result = 0xFFFFFFFFLL;
        goto LABEL_63;
      }

      if (a4)
      {
        if (a4 == 1 && v36[0])
        {
          printf("%s ", v36);
          printf("%llu %llu %llu %llu %llu %llu %llu\n", v38, v40 + v39, v42 + v41, v39, v41, v40, v42);
        }
      }

      else
      {
        if ((a3 & 0x400) != 0 && v36[0])
        {
          dword_100030D50 = 1;
        }

        sub_10000AA50(v35, v34, a3 & 0x280);
        putchar(10);
        sub_100011974(v35, a3);
      }

      sub_100011924(v37);
      if (v14 == ++v15)
      {
        goto LABEL_30;
      }
    }

LABEL_66:
    v11 = v27;
    warn("DIOCGETRULE");
    goto LABEL_67;
  }

LABEL_30:
  v43 = 0;
  if (ioctl(a1, 0xCC204406uLL, &v30))
  {
LABEL_65:
    warn("DIOCGETRULES");
LABEL_67:
    result = 0xFFFFFFFFLL;
    goto LABEL_64;
  }

  v16 = v32;
  if (v32)
  {
    v17 = 0;
    v18 = (a3 >> 2) & 1;
    v19 = v34;
    if (a6 < 1)
    {
      LOBYTE(v18) = 1;
    }

    v28 = v18;
    v26 = v32;
    do
    {
      v32 = v17;
      if (ioctl(a1, 0xCC204407uLL, &v30))
      {
        goto LABEL_66;
      }

      if (sub_100011758(a1, v37, v17, v31, 0, a2))
      {
        goto LABEL_62;
      }

      if (a4)
      {
        if (a4 == 1 && v36[0])
        {
          printf("%s ", v36);
          printf("%llu %llu %llu %llu %llu %llu %llu\n", v38, v40 + v39, v42 + v41, v39, v41, v40, v42);
        }
      }

      else
      {
        v20 = v19;
        if ((a3 & 0x400) != 0 && v36[0])
        {
          dword_100030D50 = 1;
        }

        if ((v28 & 1) == 0)
        {
          v21 = a6;
          do
          {
            printf("  ");
            --v21;
          }

          while (v21);
        }

        v19 = v20;
        if (v34[0])
        {
          v22 = strrchr(v20, 95);
          if (v22)
          {
            if (v22 == v20 || (a3 & 0x4000) != 0 || *(v22 - 1) == 47)
            {
LABEL_54:
              v23 = strrchr(v20, 47);
              if (v23)
              {
                v19 = v23 + 1;
              }

              sub_10000AA50(v35, v19, a3 & 0x280);
              puts(" {");
              sub_100011974(v35, a3);
              sub_100011B10(a1, a2, a3, 0, v19, a6 + 1);
              if ((v28 & 1) == 0)
              {
                v24 = a6;
                do
                {
                  printf("  ");
                  --v24;
                }

                while (v24);
              }

              puts("}");
              v19 = v20;
              v16 = v26;
              goto LABEL_60;
            }
          }

          else if ((a3 & 0x4000) != 0)
          {
            goto LABEL_54;
          }
        }

        sub_10000AA50(v35, v20, a3 & 0x280);
        putchar(10);
        sub_100011974(v35, a3);
      }

LABEL_60:
      sub_100011924(v37);
      ++v17;
    }

    while (v17 != v16);
  }

  result = 0;
LABEL_63:
  v11 = v27;
LABEL_64:
  a2[v11] = 0;
  return result;
}

uint64_t sub_100012040(int a1, __int16 a2, const void *a3)
{
  v6 = a2 & 0x400;
  bzero(v14, 0xC20uLL);
  memcpy(v17, a3, sizeof(v17));
  v7 = 0;
  while (1)
  {
    v8 = dword_100027D80[v7];
    v21 = v8;
    if (ioctl(a1, 0xCC204406uLL, v14))
    {
      warn("DIOCGETRULES");
      return 0xFFFFFFFFLL;
    }

    v9 = v16;
    if (v16)
    {
      break;
    }

LABEL_11:
    if (++v7 == 3)
    {
      return 0;
    }
  }

  v10 = v6;
  v11 = 0;
  v12 = v10 == 0;
  while (1)
  {
    v16 = v11;
    if (ioctl(a1, 0xCC204407uLL, v14))
    {
      break;
    }

    if (sub_100011758(a1, v20, v11, v15, v8, a3))
    {
      return 0xFFFFFFFFLL;
    }

    if (!v12)
    {
      sub_100011AC4("TRANSLATION RULES:");
    }

    sub_10000AA50(v19, v18, a2 & 0x80);
    putchar(10);
    sub_100011974(v19, a2);
    sub_100011924(v20);
    ++v11;
    v12 = 1;
    if (v9 == v11)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  warn("DIOCGETRULE");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000121EC(int a1, __int16 a2, const void *a3)
{
  bzero(v10, 0xC20uLL);
  memcpy(v13, a3, sizeof(v13));
  v17 = 11;
  if (ioctl(a1, 0xCC204406uLL, v10))
  {
    warn("DIOCGETRULES");
  }

  else
  {
    v6 = v12;
    if (!v12)
    {
      return 0;
    }

    v7 = 0;
    for (i = (a2 & 0x400) == 0; ; i = 1)
    {
      v12 = v7;
      if (ioctl(a1, 0xCC204407uLL, v10))
      {
        break;
      }

      if (sub_100011758(a1, v16, v7, v11, 11, a3))
      {
        return 0xFFFFFFFFLL;
      }

      if (!i)
      {
        sub_100011AC4("DUMMYNET RULES:");
      }

      sub_10000AA50(v15, v14, a2 & 0x80);
      putchar(10);
      sub_100011974(v15, a2);
      sub_100011924(v16);
      if (v6 == ++v7)
      {
        return 0;
      }
    }

    warn("DIOCGETRULE");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100012374(int a1, __int16 a2)
{
  v4 = 0;
  v5 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    LODWORD(v13) = v5;
    if (v5)
    {
      v6 = malloc_type_realloc(v4, v5, 0x696471CEuLL);
      if (!v6)
      {
        sub_100020E3C();
      }

      v4 = v6;
      v14 = v6;
    }

    if (ioctl(a1, 0xC0104454uLL, &v13) < 0)
    {
      warn("DIOCGETSRCNODES");
      v8 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }

    v7 = v13;
    if (v13 + 16 < v5)
    {
      break;
    }

    v8 = 0;
    if (!v13 || !(v13 | v5))
    {
      goto LABEL_20;
    }

    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v13;
    }

    v5 = 2 * v9;
  }

  v10 = v14;
  if ((a2 & 0x400) != 0 && v13 >= 1)
  {
    sub_100011AC4("SOURCE TRACKING NODES:");
    v7 = v13;
  }

  if (v7 >= 1)
  {
    v11 = 0;
    do
    {
      sub_10000A828(v10, a2);
      v10 += 152;
      v11 += 152;
    }

    while (v11 < v13);
  }

  v8 = 0;
LABEL_20:
  free(v4);
  return v8;
}

uint64_t sub_1000124A4(int a1, const char *a2, __int16 a3)
{
  v3 = a3;
  v6 = 0;
  v7 = 0;
  v8 = a3 & 0x400;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    LODWORD(v16) = v7;
    if (v7)
    {
      v9 = malloc_type_realloc(v6, v7, 0x45CF0466uLL);
      if (!v9)
      {
        sub_100020E3C();
      }

      v6 = v9;
      v17 = v9;
    }

    if (ioctl(a1, 0xC0104419uLL, &v16) < 0)
    {
      warn("DIOCGETSTATES");
      v11 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    v10 = v16;
    if (v16 + 16 < v7)
    {
      break;
    }

    v11 = 0;
    if (!v16 || !(v16 | v7))
    {
      goto LABEL_22;
    }

    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v16;
    }

    v7 = 2 * v12;
  }

  if (v16 >= 1)
  {
    v13 = 0;
    v14 = v17;
    do
    {
      if (!a2 || !strcmp(v14 + 8, a2))
      {
        if (v8)
        {
          sub_100011AC4("STATES:");
        }

        sub_100000F0C(v14, v3);
        v8 = 0;
        v10 = v16;
      }

      v13 += 297;
      v14 += 297;
    }

    while (v13 < v10);
  }

  v11 = 0;
LABEL_22:
  free(v6);
  return v11;
}

uint64_t sub_1000126C4(int a1)
{
  v7 = 0;
  v8 = 0;
  if (ioctl(a1, 0xC0104405uLL, &v7) < 0)
  {
    if (*__error() != 2)
    {
      warn("DIOCGETSTARTERS");
      return 0xFFFFFFFFLL;
    }

    puts("No pf starter references held");
  }

  else
  {
    v2 = malloc_type_malloc(2 * v7, 0xC34C9F46uLL);
    if (!v2)
    {
      sub_1000207D0();
    }

    v3 = v2;
    v8 = v2;
    if (ioctl(a1, 0xC0104405uLL, &v7) < 0)
    {
      free(v3);
      if (*__error() == 2)
      {
        sub_100020E74();
      }

      sub_100020E58();
    }

    v4 = v8;
    sub_100011AC4("TOKENS:");
    printf("%-8s %-28s %-24s %-s\n", "PID", "Process Name", "TOKEN", "TIMESTAMP");
    if (v7 >= 1)
    {
      v5 = 0;
      do
      {
        sub_1000125FC(v4);
        v5 += 84;
        v4 += 84;
      }

      while (v5 < v7);
    }
  }

  return 0;
}

uint64_t sub_100012810(int a1, __int16 a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (ioctl(a1, 0xC1B84415uLL, v4))
  {
    warn("DIOCGETSTATUS");
    return 0xFFFFFFFFLL;
  }

  else
  {
    if ((a2 & 0x400) != 0)
    {
      sub_100011AC4("INFO:");
    }

    sub_10000A2B4(v4, a2);
    return 0;
  }
}

uint64_t sub_1000128F0(int a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    sub_100011AC4("TIMEOUTS:");
  }

  v7 = 0;
  v3 = "tcp.first";
  if ("tcp.first")
  {
    v4 = &off_10002C4A8;
    do
    {
      v5 = *(v4 - 2);
      LODWORD(v7) = v5;
      if (ioctl(a1, 0xC008441EuLL, &v7))
      {
        sub_100020E90();
      }

      printf("%-20s %10d", v3, HIDWORD(v7));
      if ((v5 & 0xFFFFFFFE) == 0x16)
      {
        printf(" states");
      }

      else
      {
        putchar(115);
      }

      putchar(10);
      v3 = *v4;
      v4 += 2;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_1000129DC(int a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    sub_100011AC4("LIMITS:");
  }

  v3 = "states";
  v8 = 0;
  v4 = &off_10002CDE0;
  v5 = 6;
  do
  {
    LODWORD(v8) = *(v4 - 2);
    if (ioctl(a1, 0xC0084427uLL, &v8))
    {
      sub_100020EAC();
    }

    printf("%-13s ", v3);
    if (HIDWORD(v8) == -1)
    {
      puts("unlimited");
    }

    else
    {
      printf("hard limit %8u\n", HIDWORD(v8));
    }

    v6 = *v4;
    v4 += 2;
    v3 = v6;
    --v5;
  }

  while (v5);
  return 0;
}

uint64_t sub_100012AC4(uint64_t a1, uint64_t *a2, char a3)
{
  if ((*(a1 + 4) & 8) == 0 && ioctl(*a1, 0xC4704433uLL, a1 + 544))
  {
    sub_100020EC8();
  }

  *(a1 + 562) = a3;
  for (i = *a2; i; i = *(i + 48))
  {
    v7 = *(i + 16);
    *(a1 + 1592) = *i;
    *(a1 + 1608) = v7;
    v8 = *(i + 32);
    v9 = *(i + 48);
    v10 = *(i + 64);
    *(a1 + 1672) = *(i + 80);
    *(a1 + 1640) = v9;
    *(a1 + 1656) = v10;
    *(a1 + 1624) = v8;
    if ((*(a1 + 4) & 8) == 0 && ioctl(*a1, 0xC4704434uLL, a1 + 544))
    {
      sub_100020EE4();
    }
  }

  return 0;
}

uint64_t sub_100012B94(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_100002738(*(a2 + 1004));
  if (v6 == 6)
  {
    sub_100020F38((a2 + 1004));
  }

  v7 = *(a1 + 1704);
  if (*a3 && !*(a2 + 776))
  {
    v8 = malloc_type_calloc(1uLL, 0x720uLL, 0x10A0040674384F5uLL);
    *(a2 + 776) = v8;
    if (!v8)
    {
      sub_100020F1C();
    }

    sub_100002758(v8 + 144);
    *(*(a2 + 776) + 1728) = *(a2 + 776);
    if (__strlcpy_chk() >= 0x400)
    {
      sub_100020F00();
    }

    v9 = strrchr(a3, 47);
    if (v9 && !*v9)
    {
      err(1, "pfctl_add_rule: bad anchor name %s", a3);
    }

    if (__strlcpy_chk() >= 0x40)
    {
      sub_100020F00();
    }
  }

  v10 = malloc_type_calloc(1uLL, 0x410uLL, 0x10A2040FAB20DA7uLL);
  if (!v10)
  {
    sub_100020928();
  }

  v11 = v10;
  memmove(v10, a2, 0x410uLL);
  v11[72] = 0;
  v11[73] = v11 + 72;
  for (i = *(a2 + 576); i; i = *(a2 + 576))
  {
    v13 = (i + 48);
    v14 = *(i + 48);
    v15 = *(i + 56);
    v16 = (v14 + 56);
    if (!v14)
    {
      v16 = (a2 + 584);
    }

    *v16 = v15;
    *v15 = v14;
    *v13 = 0;
    v17 = v11[73];
    *(i + 56) = v17;
    *v17 = i;
    v11[73] = v13;
  }

  v18 = v7 + 96 * v6;
  v11[70] = 0;
  v19 = *(*(v18 + 1184) + 8);
  v11[71] = v19;
  *v19 = v11;
  *(*(v18 + 1184) + 8) = v11 + 70;
  return 0;
}

uint64_t sub_100012D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 1696);
  v7 = *(v6 + 4);
  v8 = *(a1 + 12);
  if ((v8 & 4) != 0)
  {
    if (sub_10000CB30(v6, 2, a2) || sub_10000CB30(*(a1 + 1696), 3, a2) || sub_10000CB30(*(a1 + 1696), 4, a2))
    {
      return 1;
    }

    v8 = *(a1 + 12);
  }

  if (*(a1 + 32) == a3 && dword_100030D54 != 0 && (v8 & 0x10) != 0)
  {
    if (sub_10000CB30(*(a1 + 1696), 6, a2))
    {
      return 2;
    }

    v8 = *(a1 + 12);
  }

  v12 = *(a1 + 1696);
  if ((v8 & 2) == 0)
  {
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (sub_10000CB30(*(a1 + 1696), 0, a2) || sub_10000CB30(*(a1 + 1696), 1, a2))
  {
    return 3;
  }

  v8 = *(a1 + 12);
  v12 = *(a1 + 1696);
  if ((v8 & 0x40) != 0)
  {
LABEL_18:
    if (!sub_10000CB30(v12, 5, a2))
    {
      v8 = *(a1 + 12);
      v12 = *(a1 + 1696);
      goto LABEL_25;
    }

    return 3;
  }

LABEL_25:
  if ((v8 & 0x20) != 0)
  {
    if (sub_10000CB30(v12, 7, a2))
    {
      return 4;
    }

    v12 = *(a1 + 1696);
  }

  if (sub_10000CC54(*a1, v12, 0xC0104451uLL, v7))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012ED0(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = strlen(a2);
  v11 = v10;
  *(a1 + 1704) = a3[72];
  v12 = 1024 - v10;
  if (*a2)
  {
    snprintf(&a2[v10], v12, "/%s");
  }

  else
  {
    snprintf(&a2[v10], v12, "%s");
  }

  if (!v5)
  {
LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  v13 = *(a1 + 4);
  if (!*a3[12 * a4 + 4])
  {
    if ((v13 & 4) != 0)
    {
      putchar(10);
    }

    goto LABEL_14;
  }

  if ((v13 & 4) != 0)
  {
    puts(" {");
    v13 = *(a1 + 4);
  }

  if ((v13 & 8) == 0)
  {
    v14 = sub_100012D5C(a1, a2, a3[72]);
    if (v14)
    {
      v15 = v14;
      printf("pfctl_load_rulesets: pfctl_ruleset_trans %d\n", v14);
      goto LABEL_35;
    }
  }

  v16 = 0;
LABEL_15:
  if (a4 == 1 && *(a1 + 8))
  {
    sub_100005544(a1, a3);
  }

  v17 = &a3[12 * a4];
  v20 = v17[4];
  v19 = (v17 + 4);
  for (i = v20; ; i = *v19)
  {
    v21 = *i;
    if (!*i)
    {
      break;
    }

    v22 = v21[70];
    v23 = v21[71];
    v24 = i + 1;
    if (v22)
    {
      v24 = (v22 + 568);
    }

    *v24 = v23;
    *v23 = v22;
    sub_1000130E4(a1, a2, v21, v5);
    v25 = v21[97];
    if (v25)
    {
      v26 = sub_100012ED0(a1, a2, (v25 + 1152), a4, (v5 + 1));
      if (v26)
      {
        v15 = v26;
        goto LABEL_35;
      }
    }

    else if ((*(a1 + 4) & 4) != 0)
    {
      putchar(10);
    }

    free(v21);
  }

  if ((v16 & 1) == 0 && (*(a1 + 4) & 4) != 0)
  {
    if (v5 >= 2)
    {
      v27 = v5 - 1;
      do
      {
        printf("  ");
        --v27;
      }

      while (v27);
    }

    puts("}");
  }

  v15 = 0;
LABEL_35:
  a2[v11] = 0;
  return v15;
}

uint64_t sub_1000130E4(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v8 = sub_100002738(*(a3 + 1004));
  v9 = strlen(a2);
  bzero(v18, 0xC20uLL);
  if ((*(a1 + 4) & 8) == 0)
  {
    v19 = sub_10000CBDC(*(a1 + 1696), v8, a2);
  }

  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020F60();
  }

  v10 = *(a3 + 776);
  if (v10 && *(v10 + 1756))
  {
    v11 = 1024 - v9;
    if (*a2)
    {
      snprintf(&a2[v9], v11, "/%s");
    }

    else
    {
      snprintf(&a2[v9], v11, "%s");
    }
  }

  v12 = *(a1 + 4);
  if ((v12 & 8) == 0)
  {
    if (*(a3 + 1004) == 13)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a3 + 1013);
    }

    sub_100012AC4(a1, (a3 + 576), v13);
    v20 = *(a1 + 548);
    memcpy(v21, a3, sizeof(v21));
    if (*(a3 + 776) && __strlcpy_chk() >= 0x400)
    {
      sub_100020F60();
    }

    if (ioctl(*a1, 0xCC204404uLL, v18))
    {
      sub_100020F7C();
    }

    v12 = *(a1 + 4);
  }

  if ((v12 & 4) != 0)
  {
    v14 = v12 & 0x80;
    if ((v12 & 0x80) == 0 && a4 >= 1)
    {
      do
      {
        printf("  ");
        --a4;
      }

      while (a4);
      v14 = *(a1 + 4) & 0x80;
    }

    v15 = *(a3 + 776);
    if (v15)
    {
      v16 = (v15 + 64);
    }

    else
    {
      v16 = "";
    }

    sub_10000AA50(a3, v16, v14);
  }

  a2[v9] = 0;
  sub_100011924((a3 + 576));
  return 0;
}

uint64_t sub_100013318(uint64_t a1, const void *a2)
{
  if (dword_100030D54 && (dword_100030D84 & 0x10) != 0)
  {
    memcpy((*(a1 + 1680) + 16), a2, 0x148uLL);
    if ((*(a1 + 4) & 8) == 0 && ioctl(*a1, 0xC158442DuLL, *(a1 + 1680)))
    {
      if (*__error() == 6)
      {
        sub_100020FB4();
      }

      if (*__error() == 19)
      {
        errx(1, "%s: driver does not support altq", a2);
      }

      sub_100020F98();
    }

    sub_100002E3C((*(a1 + 1680) + 16));
  }

  return 0;
}

uint64_t sub_1000133DC(uint64_t a1, const char *a2, unsigned int a3, int a4, const char *a5, uint64_t a6)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  qword_100030D88 = 0;
  bzero(&unk_100030D90, 0x720uLL);
  sub_100002758(qword_100031210);
  qword_100031450 = &unk_100030D90;
  if (a6)
  {
    v12 = *(a6 + 4);
    v13 = a6;
  }

  else
  {
    v12 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 6;
    v13 = &v22;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  bzero(&v26, 0x778uLL);
  bzero(v25, 0x428uLL);
  v14 = malloc_type_calloc(1uLL, 0x400uLL, 0x1969BA41uLL);
  if (!v14)
  {
    goto LABEL_50;
  }

  v15 = v14;
  if (__strlcpy_chk() >= 0x400)
  {
    warnx("pfctl_rules: strlcpy");
    goto LABEL_55;
  }

  v26 = __PAIR64__(a3, a1);
  v27 = a4;
  v28 = dword_100030D84;
  v16 = malloc_type_calloc(1uLL, 0x720uLL, 0x10A0040674384F5uLL);
  v33 = v16;
  if (!v16)
  {
LABEL_50:
    warnx("pfctl_rules: calloc");
    goto LABEL_55;
  }

  v17 = v16;
  sub_100002758(v16 + 144);
  v17[216] = v33;
  if (__strlcpy_chk() >= 0x400)
  {
    sub_100020F00();
  }

  if (__strlcpy_chk() >= 0x40)
  {
    sub_100020F00();
  }

  v30 = v33;
  v29 = 0;
  if (*a5)
  {
    v28 &= ~0x10u;
  }

  v31 = v34;
  v32 = v13;
  sub_100013884(&v26);
  if ((a3 & 8) != 0)
  {
    if ((sub_10002054C(a2, &v26) & 0x80000000) != 0)
    {
LABEL_47:
      if (a6)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_56:
      if ((a3 & 8) != 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (sub_100012D5C(&v26, a5, v33))
    {
      warnx("pfctl_rules");
      goto LABEL_55;
    }

    v18 = v28;
    if (dword_100030D54 && (v28 & 0x10) != 0)
    {
      v34[1] = sub_10000CBDC(v13, 6, a5);
      v18 = v28;
    }

    if ((v18 & 0x20) != 0)
    {
      v19 = sub_10000CBDC(v13, 7, a5);
      *(v30 + 1736) = v19;
    }

    if ((sub_10002054C(a2, &v26) & 0x80000000) != 0)
    {
      warnx("Syntax error in config file: pf rules not loaded");
      goto LABEL_55;
    }
  }

  v20 = v28;
  if ((v28 & 2) != 0)
  {
    if (sub_100012ED0(&v26, v15, v17 + 144, 0, 0))
    {
      goto LABEL_46;
    }

    v20 = v28;
  }

  if ((v20 & 4) != 0)
  {
    if (sub_100012ED0(&v26, v15, v17 + 144, 2, 0) || sub_100012ED0(&v26, v15, v17 + 144, 4, 0) || sub_100012ED0(&v26, v15, v17 + 144, 3, 0))
    {
      goto LABEL_46;
    }

    v20 = v28;
    if ((v28 & 2) != 0)
    {
LABEL_26:
      if (!sub_100012ED0(&v26, v15, v17 + 144, 1, 0))
      {
        v20 = v28;
        goto LABEL_28;
      }

LABEL_46:
      if ((a3 & 8) != 0)
      {
        goto LABEL_47;
      }

      warnx("Unable to load rules into kernel");
LABEL_55:
      if (a6)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_56;
    }
  }

  else if ((v20 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  if ((v20 & 0x40) != 0 && sub_100012ED0(&v26, v15, v17 + 144, 5, 0))
  {
    goto LABEL_46;
  }

  if (dword_100030D54 && (v28 & 0x10) != 0 && sub_100003E54())
  {
    warnx("errors in altq config");
    goto LABEL_55;
  }

  if (!*a5 && sub_10002072C(a1, &v26, v13) == -1)
  {
    warnx("load anchors");
    goto LABEL_55;
  }

  result = 0;
  if ((a3 & 8) == 0 && !a6)
  {
    if (*a5 || !sub_100013990(&v26))
    {
      result = sub_10000CC54(a1, v13, 0xC0104452uLL, v12);
      if (!result)
      {
        return result;
      }

      warn("DIOCXCOMMIT");
    }

LABEL_41:
    if (sub_10000CC54(a1, v13, 0xC0104453uLL, v12))
    {
      sub_100020FD0();
    }

LABEL_42:
    exit(1);
  }

  return result;
}

uint64_t sub_100013884(uint64_t a1)
{
  v4 = 0;
  *(a1 + 1728) = xmmword_100027CF0;
  *(a1 + 1744) = xmmword_100027D00;
  *(a1 + 1760) = xmmword_100027D10;
  *(a1 + 1776) = xmmword_100027D20;
  *(a1 + 1792) = xmmword_100027D30;
  *(a1 + 1808) = xmmword_100027D40;
  *(a1 + 1824) = xmmword_100027D50;
  *(a1 + 1840) = xmmword_100027D60;
  *v5 = 0x500000006;
  v3 = 8;
  result = sysctl(v5, 2u, &v4, &v3, 0, 0);
  if (v4 <= 0x10000000)
  {
    *(a1 + 1852) = 100000;
  }

  *(a1 + 1856) = 1;
  return result;
}

uint64_t sub_100013990(int32x2_t *a1)
{
  if ((dword_100030D84 & 8) == 0)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v1 = 0;
  do
  {
    if ((v2->i8[5] & 0x20) == 0 || v2[237].i8[v3 + 2])
    {
      a1 = sub_100013B9C(v2, v3, v2[229].i32[v3]);
      if (a1)
      {
        v1 = 1;
      }

      else
      {
        v1 = v1;
      }
    }

    ++v3;
  }

  while (v3 != 6);
  if (v2[237].i8[2] && !v2[236].i8[6] && !v2[236].i8[7])
  {
    v4 = v2[229].i32[0] / 0xAu;
    v2[236].i16[3] = 257;
    v2[227] = vmul_s32(vdup_n_s32(v4), 0xC00000006);
  }

  for (i = 0; i != 26; ++i)
  {
    if ((v2->i8[5] & 0x20) == 0 || v2[234].i8[i])
    {
      a1 = sub_100013BE4(v2, i, v2[216].i32[i]);
      if (a1)
      {
        v1 = 1;
      }

      else
      {
        v1 = v1;
      }
    }
  }

  if ((((v2->i8[5] & 0x20) == 0 || v2[238].i8[0]) && ((a1 = sub_100013C34(v2, v2[232].i32[0]), a1) ? (v1 = 1) : (v1 = v1), (v2->i8[5] & 0x20) == 0) || v2[238].i8[2]) && ((a1 = sub_100013C84(v2, *&v2[233]), a1) ? (v1 = 1) : (v1 = v1), (v2->i8[5] & 0x20) == 0) || v2[238].i8[1])
  {
    if (sub_100013D34(a1, v2[232].i32[1]))
    {
      return 1;
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

FILE *sub_100013B04(const char *a1, const char *a2)
{
  v2 = fopen(a1, a2);
  v3 = v2;
  if (v2)
  {
    memset(&v6, 0, sizeof(v6));
    v4 = fileno(v2);
    if (fstat(v4, &v6))
    {
      fclose(v3);
      return 0;
    }

    else if ((v6.st_mode & 0xF000) == 0x4000)
    {
      fclose(v3);
      v3 = 0;
      *__error() = 21;
    }
  }

  return v3;
}

uint64_t sub_100013B9C(int *a1, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  result = ioctl(*a1, 0xC0084428uLL, v4);
  if (result)
  {
    sub_100020FEC();
    return 1;
  }

  return result;
}

uint64_t sub_100013BE4(int *a1, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  result = ioctl(*a1, 0xC008441DuLL, v4);
  if (result)
  {
    warnx("DIOCSETTIMEOUT");
    return 1;
  }

  return result;
}

uint64_t sub_100013C34(int *a1, int a2)
{
  v3 = a2;
  result = ioctl(*a1, 0xC0044418uLL, &v3);
  if (result)
  {
    warnx("DIOCSETDEBUG");
    return 1;
  }

  return result;
}

uint64_t sub_100013C84(int *a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = 0;
  if (a2 && __strlcpy_chk() > 0xF)
  {
    warnx("pfctl_load_logif: strlcpy");
  }

  else
  {
    result = ioctl(*a1, 0xC0104414uLL, v4);
    if (!result)
    {
      return result;
    }

    warnx("DIOCSETSTATUSIF");
  }

  return 1;
}

uint64_t sub_100013D34(uint64_t a1, int a2)
{
  v3 = a2;
  result = ioctl(dword_1000309F0, 0xC0044456uLL, &v3);
  if (result)
  {
    warnx("DIOCSETHOSTID");
    return 1;
  }

  return result;
}

uint64_t sub_100013D88(uint64_t a1, char *a2, int a3)
{
  if (!strcasecmp(a2, "states"))
  {
    v8 = &off_10002CDD0;
LABEL_7:
    v10 = *(v8 + 2);
    *(a1 + 4 * v10 + 1832) = a3;
    *(a1 + v10 + 1898) = 1;
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set limit %s %d\n", a2, a3);
    }

    return 0;
  }

  else
  {
    v6 = &off_10002CDD0;
    v7 = 6;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = strcasecmp(a2, v6[2]);
      v6 = v8;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    warnx("Bad pool name.");
    return 1;
  }
}

uint64_t sub_100013E5C(uint64_t a1, char *a2, int a3, int a4)
{
  if ((dword_100030D84 & 8) == 0)
  {
    return 0;
  }

  if (!"tcp.first")
  {
    goto LABEL_11;
  }

  v9 = &off_10002C498;
  if (strcasecmp(a2, "tcp.first"))
  {
    while (1)
    {
      v10 = v9[2];
      if (!v10)
      {
        break;
      }

      v9 += 2;
      if (!strcasecmp(a2, v10))
      {
        goto LABEL_7;
      }
    }

LABEL_11:
    warnx("Bad timeout name.");
    return 1;
  }

LABEL_7:
  result = 0;
  v11 = *(v9 + 2);
  *(a1 + 4 * v11 + 1728) = a3;
  *(a1 + v11 + 1872) = 1;
  if (!a4 && (*(a1 + 4) & 4) != 0)
  {
    printf("set timeout %s %d\n", a2, a3);
    return 0;
  }

  return result;
}

uint64_t sub_100013F44(uint64_t a1, char *a2)
{
  if ((dword_100030D84 & 8) == 0)
  {
    return 0;
  }

  if (!strcasecmp(a2, "normal"))
  {
    v6 = off_10002CE40;
  }

  else
  {
    v4 = off_10002CE40;
    v5 = 5;
    while (--v5)
    {
      v6 = v4 + 2;
      v7 = strcasecmp(a2, v4[2]);
      v4 = v6;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v6 = &unk_10002CE90;
  }

LABEL_9:
  v8 = v6[1];
  if (!v8)
  {
    warnx("invalid state timeouts optimization");
    return 1;
  }

  v9 = *v8;
  if (!*v8)
  {
LABEL_14:
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set optimization %s\n", a2);
    }

    return 0;
  }

  v10 = v8 + 2;
  while (1)
  {
    v11 = 1;
    if (sub_100013E5C(a1, v9, *(v10 - 2), 1))
    {
      return v11;
    }

    v12 = *v10;
    v10 += 2;
    v9 = v12;
    if (!v12)
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_100014050(uint64_t a1, char *__s1)
{
  if ((dword_100030D84 & 8) != 0)
  {
    if (!strcmp(__s1, "none"))
    {
      free(*(a1 + 1864));
      *(a1 + 1864) = 0;
    }

    else
    {
      v4 = strdup(__s1);
      *(a1 + 1864) = v4;
      if (!v4)
      {
        sub_100021024();
      }
    }

    *(a1 + 1906) = 1;
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set loginterface %s\n", __s1);
    }
  }

  return 0;
}

uint64_t sub_1000140E0(uint64_t a1, unsigned int a2)
{
  if ((dword_100030D84 & 8) != 0)
  {
    *(a1 + 1860) = bswap32(a2);
    *(a1 + 1905) = 1;
    if ((*(a1 + 4) & 4) != 0)
    {
      printf("set hostid 0x%08x\n", a2);
    }
  }

  return 0;
}

uint64_t sub_100014138(uint64_t a1, char *__s1)
{
  if ((dword_100030D84 & 8) != 0)
  {
    if (!strcmp(__s1, "none"))
    {
      v4 = 0;
    }

    else if (!strcmp(__s1, "urgent"))
    {
      v4 = 1;
    }

    else if (!strcmp(__s1, "misc"))
    {
      v4 = 2;
    }

    else
    {
      if (strcmp(__s1, "loud"))
      {
        warnx("unknown debug level %s", __s1);
        return 0xFFFFFFFFLL;
      }

      v4 = 3;
    }

    *(a1 + 1856) = v4;
    v7 = 0;
    *(a1 + 1904) = 1;
    v5 = *(a1 + 4);
    if ((v5 & 8) == 0)
    {
      if (ioctl(dword_1000309F0, 0xC0044418uLL, &v7))
      {
        sub_100021040();
      }

      v5 = *(a1 + 4);
    }

    if ((v5 & 4) != 0)
    {
      printf("set debug %s\n", __s1);
    }
  }

  return 0;
}

uint64_t sub_10001424C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((dword_100030D84 & 8) != 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v10 = a3;
    if (__strlcpy_chk() >= 0x10)
    {
      sub_100021094();
    }

    if ((*(a1 + 4) & 8) == 0)
    {
      v6 = *a1;
      if (a4)
      {
        if (ioctl(v6, 0xC0284459uLL, v8))
        {
          sub_10002105C();
        }
      }

      else if (ioctl(v6, 0xC028445AuLL, v8))
      {
        sub_100021078();
      }
    }
  }

  return 0;
}

size_t sub_10001432C(int a1, int a2, char a3)
{
  v7 = a2;
  result = ioctl(a1, 0xC0044418uLL, &v7);
  if (result)
  {
    sub_100021040();
  }

  if ((a3 & 0x10) == 0)
  {
    fwrite("debug level set to '", 0x14uLL, 1uLL, __stderrp);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v5 = "misc";
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_10;
        }

        v5 = "loud";
      }
    }

    else
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v5 = "urgent";
          v6 = 6;
LABEL_14:
          fwrite(v5, v6, 1uLL, __stderrp);
          return fwrite("'\n", 2uLL, 1uLL, __stderrp);
        }

LABEL_10:
        v5 = "<invalid>";
        v6 = 9;
        goto LABEL_14;
      }

      v5 = "none";
    }

    v6 = 4;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100014428(int a1, char a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (!ioctl(a1, 0xC158442FuLL, v4))
  {
    return 1;
  }

  if (*__error() != 19)
  {
    sub_1000210B0();
  }

  if ((a2 & 0x10) == 0)
  {
    fwrite("No ALTQ support in kernel\nALTQ related functions disabled\n", 0x3AuLL, 1uLL, __stderrp);
  }

  return 0;
}

uint64_t sub_10001450C(uint64_t a1, uint64_t a2, const void *a3)
{
  bzero(&v10, 0x444uLL);
  memcpy(v11, a3, sizeof(v11));
  if (ioctl(a1, 0xC444443AuLL, &v10))
  {
    if (*__error() != 22)
    {
      sub_1000210CC();
    }

    fprintf(__stderrp, "Anchor '%s' not found.\n", a3);
    return 0xFFFFFFFFLL;
  }

  v7 = v10;
  if (v10)
  {
    v8 = 0;
    while (1)
    {
      v10 = v8;
      if (ioctl(a1, 0xC444443BuLL, &v10))
      {
        sub_1000210E8();
      }

      if (v12[0] != 6713439)
      {
        v9[0] = 0;
        if (v11[0])
        {
          __strlcat_chk();
          __strlcat_chk();
        }

        __strlcat_chk();
        if ((a2 & 4) != 0 || v9[0] != 95)
        {
          printf("  %s\n", v9);
          if ((a2 & 4) != 0)
          {
            if (sub_10001450C(a1, a2, v9))
            {
              break;
            }
          }
        }
      }

      if (v7 == ++v8)
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

const char *sub_1000146E0(char *__s, const char **a2)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = strlen(__s);
    v6 = a2 + 1;
    do
    {
      if (!strncmp(__s, v4, v5))
      {
        break;
      }

      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  return v4;
}

void start(uint64_t a1, char **a2)
{
  __endptr = 0;
  if (a1 < 2)
  {
LABEL_2:
    sub_10001069C();
  }

  v3 = a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (2)
  {
    v7 = getopt(v3, a2, "a:AdD:eEqf:F:gGhi:k:K:mMnNOo:p:rRs:t:T:vx:X:w:z");
    switch(v7)
    {
      case 'A':
        dword_100030D84 |= 0x10u;
        continue;
      case 'B':
      case 'C':
      case 'G':
      case 'H':
      case 'I':
      case 'J':
      case 'L':
      case 'P':
      case 'Q':
      case 'S':
      case 'U':
      case 'V':
      case 'W':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'l':
      case 'u':
      case 'y':
        goto LABEL_2;
      case 'D':
        if ((sub_100020670(optarg) & 0x80000000) != 0)
        {
          warnx("could not parse macro definition %s", optarg);
        }

        continue;
      case 'E':
        v5 = v5 | 0x1000;
        v4 = 2;
        continue;
      case 'F':
        qword_1000314B8 = sub_1000146E0(optarg, off_1000309F8);
        v4 = 2;
        if (qword_1000314B8)
        {
          continue;
        }

        warnx("Unknown flush modifier '%s'");
        goto LABEL_60;
      case 'K':
        v8 = dword_100030D68;
        if (dword_100030D68 >= 2)
        {
          warnx("can only specify -K twice", v36);
LABEL_60:
          sub_10001069C();
        }

        v9 = optarg;
        ++dword_100030D68;
        v10 = &qword_100030D58;
LABEL_40:
        v10[v8] = v9;
        v4 = 2;
        continue;
      case 'M':
        dword_1000314C8 = 1;
        continue;
      case 'N':
        dword_100030D84 |= 4u;
        continue;
      case 'O':
        dword_100030D84 |= 8u;
        continue;
      case 'R':
        dword_100030D84 |= 2u;
        continue;
      case 'T':
        qword_1000314E8 = sub_1000146E0(optarg, off_100030AF8);
        if (qword_1000314E8)
        {
          continue;
        }

        warnx("Unknown table command '%s'");
        goto LABEL_60;
      case 'X':
        *__error() = 0;
        v11 = strtoull(optarg, &__endptr, 0);
        if (optarg != __endptr && !*__endptr)
        {
          v6 = v11;
          v5 = v5 | 0x8000;
          v4 = 2;
          if (!*__error())
          {
            continue;
          }
        }

        warnx("Invalid token value '%s'");
        goto LABEL_60;
      case 'a':
        qword_1000314B0 = optarg;
        continue;
      case 'd':
        v5 = v5 | 1;
        v4 = 2;
        continue;
      case 'e':
        v5 = v5 | 2;
        v4 = 2;
        continue;
      case 'f':
        qword_1000314D0 = optarg;
        warnx("Use of -f option, could result in flushing of rules\npresent in the main ruleset added by the system at startup.\nSee /etc/pf.conf for further details.\n");
        v4 = 2;
        continue;
      case 'g':
        v5 = v5 | 0x200;
        continue;
      case 'i':
        qword_1000314C0 = optarg;
        continue;
      case 'k':
        v8 = dword_100030D80;
        if (dword_100030D80 >= 2)
        {
          warnx("can only specify -k twice", v36);
          goto LABEL_60;
        }

        v9 = optarg;
        ++dword_100030D80;
        v10 = &qword_100030D70;
        goto LABEL_40;
      case 'm':
        v5 = v5 | 0x2000;
        continue;
      case 'n':
        v5 = v5 | 8;
        continue;
      case 'o':
        qword_100030D48 = sub_1000146E0(optarg, off_100030A50);
        if (!qword_100030D48)
        {
          warnx("Unknown optimization '%s'");
          goto LABEL_60;
        }

        v5 = v5 | 0x800;
        continue;
      case 'p':
        off_1000309E8 = optarg;
        continue;
      case 'q':
        v5 = v5 | 0x10;
        continue;
      case 'r':
        v5 = v5 | 0x40;
        continue;
      case 's':
        qword_1000314D8 = sub_1000146E0(optarg, off_100030A70);
        if (qword_1000314D8)
        {
          continue;
        }

        warnx("Unknown show modifier '%s'");
        goto LABEL_60;
      case 't':
        qword_1000314E0 = optarg;
        continue;
      case 'v':
        v5 = (v5 << 9) & 0x10000 | (((v5 >> 2) & 1) << 7) | v5 | 4;
        continue;
      case 'w':
        *__error() = 0;
        dword_1000314F8 = strtoul(optarg, &__endptr, 0);
        if (optarg != __endptr && !*__endptr && !*__error() && dword_1000314F8 > 0)
        {
          continue;
        }

        warnx("Invalid interval value '%s'");
        goto LABEL_60;
      case 'x':
        qword_1000314F0 = sub_1000146E0(optarg, off_100030B50);
        v4 = 2;
        if (qword_1000314F0)
        {
          continue;
        }

        warnx("Unknown debug level '%s'");
        goto LABEL_60;
      case 'z':
        v5 = v5 | 0x20;
        v4 = 2;
        continue;
      default:
        if (v7 != -1)
        {
          goto LABEL_2;
        }

        if (qword_1000314E8)
        {
          v3 = (v3 - optind);
          a2 += optind;
          v12 = *qword_1000314E8;
          if (v12 == 108)
          {
            dword_100030D84 |= 0x20u;
            qword_1000314E8 = 0;
            goto LABEL_66;
          }

          v4 = 2 * (memchr("acdefkrz", v12, 9uLL) != 0);
        }

        else if (optind != v3)
        {
          warnx("unknown command line argument: %s ...");
          goto LABEL_60;
        }

        if (!dword_100030D84)
        {
          dword_100030D84 = -1;
        }

LABEL_66:
        v13 = malloc_type_calloc(1uLL, 0x400uLL, 0x85DA6AD0uLL);
        if (!v13)
        {
          errx(1, "pfctl: calloc", v36);
        }

        v14 = v13;
        bzero(__s1, 0x400uLL);
        if (qword_1000314B0)
        {
          v15 = strlen(qword_1000314B0);
          v16 = qword_1000314B0 + v15;
          v17 = (qword_1000314B0 + v15 - 1);
          if (*v17 == 42)
          {
            if (v15 >= 2)
            {
              v19 = *(v16 - 2);
              v18 = (v16 - 2);
              if (v19 == 47)
              {
                v17 = v18;
              }
            }

            *v17 = 0;
            v5 = v5 | 0x4000;
          }

          if (__strlcpy_chk() >= 0x400)
          {
            errx(1, "anchor name '%s' too long");
          }

          dword_100030D84 &= 0x66u;
        }

        if ((v5 & 8) != 0)
        {
          dword_1000309F0 = open(off_1000309E8, 0);
          v22 = v5 | 0x100;
          if (dword_1000309F0 < 0)
          {
            v22 = v5;
          }

          v5 = v22 & 0xFFFF6FFC;
          qword_1000314F0 = 0;
          qword_1000314D8 = 0;
          qword_1000314B8 = 0;
          v23 = 1;
        }

        else
        {
          v20 = open(off_1000309E8, v4);
          dword_1000309F0 = v20;
          if (v20 == -1)
          {
            err(1, "%s", off_1000309E8);
          }

          v23 = sub_100014428(v20, v5);
        }

        dword_100030D54 = v23;
        if (v5)
        {
          sub_1000108B0(dword_1000309F0, v5);
        }

        if ((v5 & 0x8000) != 0)
        {
          sub_100010964(dword_1000309F0, v5, v6);
        }

        if (qword_1000314D8)
        {
          v26 = *qword_1000314D8;
          switch(*qword_1000314D8)
          {
            case 'R':
              sub_1000126C4(dword_1000309F0);
              break;
            case 'S':
              sub_100012374(dword_1000309F0, v5);
              break;
            case 'T':
              sub_10000FCA4(__s1, v5);
              break;
            case 'U':
            case 'V':
            case 'W':
            case 'X':
            case 'Y':
            case 'Z':
            case '[':
            case '\\':
            case ']':
            case '^':
            case '_':
            case 'b':
            case 'c':
            case 'e':
            case 'f':
            case 'g':
            case 'h':
            case 'j':
            case 'k':
            case 'p':
              break;
            case 'a':
              v5 = v5 | 0x400;
              sub_100008E4C(dword_1000309F0);
              sub_100012040(dword_1000309F0, v5, __s1);
              sub_100011B10(dword_1000309F0, v14, v5, 0, __s1, 0);
              sub_1000121EC(dword_1000309F0, v5, __s1);
              sub_10000CC9C(dword_1000309F0, qword_1000314C0, dword_1000314F8, v5, 0);
              sub_1000124A4(dword_1000309F0, qword_1000314C0, v5);
              sub_100012374(dword_1000309F0, v5);
              sub_100012810(dword_1000309F0, v5);
              sub_100011B10(dword_1000309F0, v14, v5, 1, __s1, 0);
              sub_1000128F0(dword_1000309F0, v5);
              sub_1000129DC(dword_1000309F0, v5);
              sub_10000FCA4(__s1, v5);
              goto LABEL_148;
            case 'd':
              sub_1000121EC(dword_1000309F0, v5, __s1);
              break;
            case 'i':
              sub_100012810(dword_1000309F0, v5);
              break;
            case 'l':
              sub_100008E4C(dword_1000309F0);
              v31 = dword_1000309F0;
              v32 = v14;
              v33 = v5;
              v34 = 1;
              goto LABEL_151;
            case 'm':
              sub_1000129DC(dword_1000309F0, v5);
              break;
            case 'n':
              sub_100008E4C(dword_1000309F0);
              sub_100012040(dword_1000309F0, v5, __s1);
              break;
            case 'o':
              sub_100008E4C(dword_1000309F0);
LABEL_148:
              sub_10000902C(v5);
              break;
            case 'q':
              sub_10000CC9C(dword_1000309F0, qword_1000314C0, dword_1000314F8, v5, v5 & 0x80);
              break;
            case 'r':
              sub_100008E4C(dword_1000309F0);
              v31 = dword_1000309F0;
              v32 = v14;
              v33 = v5;
              v34 = 0;
LABEL_151:
              sub_100011B10(v31, v32, v33, v34, __s1, 0);
              break;
            case 's':
              sub_1000124A4(dword_1000309F0, qword_1000314C0, v5);
              break;
            case 't':
              sub_1000128F0(dword_1000309F0, v5);
              break;
            default:
              if (v26 == 65)
              {
                sub_10001450C(dword_1000309F0, v5, __s1);
              }

              else if (v26 == 73)
              {
                sub_10000FF8C(qword_1000314C0, v5);
              }

              break;
          }
        }

        if ((v5 & 0x20) != 0 && !qword_1000314D8)
        {
          sub_100011B10(dword_1000309F0, v14, v5, 2, __s1, 0);
        }

        v24 = qword_1000314B8;
        if (qword_1000314B8)
        {
          if (__s1[0] == 95 || strstr(__s1, "/_"))
          {
            goto LABEL_130;
          }

          v27 = *v24;
          if (v27 > 0x6D)
          {
            if (*v24 <= 0x70u)
            {
              if (v27 == 110)
              {
                sub_100010CF0(dword_1000309F0, v5, __s1);
              }

              else if (v27 == 111)
              {
                sub_100008314(dword_1000309F0);
              }
            }

            else
            {
              switch(v27)
              {
                case 'q':
                  sub_100010DD8(dword_1000309F0, v5);
                  break;
                case 's':
                  sub_100010F0C(dword_1000309F0, qword_1000314C0, v5);
                  break;
                case 'r':
                  sub_100010B60(dword_1000309F0, v5, __s1);
                  break;
              }
            }
          }

          else if (*v24 <= 0x60u)
          {
            if (v27 == 83)
            {
              sub_100010EB0(dword_1000309F0, v5);
            }

            else if (v27 == 84)
            {
              sub_10000EEF4(__s1, v5);
            }
          }

          else
          {
            switch(v27)
            {
              case 'a':
                sub_100010B60(dword_1000309F0, v5, __s1);
                sub_100010CF0(dword_1000309F0, v5, __s1);
                sub_100010C34(dword_1000309F0, v5, __s1);
                sub_10000EEF4(__s1, v5);
                if (!__s1[0])
                {
                  sub_100010DD8(dword_1000309F0, v5);
                  sub_100010F0C(dword_1000309F0, qword_1000314C0, v5);
                  sub_100010EB0(dword_1000309F0, v5);
                  sub_100010A54(dword_1000309F0, v5);
                  sub_100008314(dword_1000309F0);
                  sub_100010AB0(dword_1000309F0, v5);
                }

                break;
              case 'd':
                sub_100010C34(dword_1000309F0, v5, __s1);
                break;
              case 'i':
                sub_100010A54(dword_1000309F0, v5);
                break;
            }
          }
        }

        if (dword_100030D80)
        {
          sub_10001143C(dword_1000309F0, qword_1000314C0, v5);
        }

        if (dword_100030D68)
        {
          sub_10001115C(dword_1000309F0, v21, v5);
        }

        if (qword_1000314E8)
        {
          v25 = sub_10000FCC8(v3, a2, qword_1000314E0, qword_1000314E8, qword_1000314D0, __s1, v5);
          qword_1000314D0 = 0;
        }

        else
        {
          v25 = 0;
        }

        if (qword_100030D48 && *qword_100030D48 - 110 <= 2)
        {
          v28 = dword_100027D8C[(*qword_100030D48 - 110)];
        }

        else
        {
          v28 = 1;
        }

        v29 = qword_1000314D0;
        if (qword_1000314D0)
        {
          if ((dword_100030D84 & 8) == 0 || __s1[0] || (sub_100010AB0(dword_1000309F0, v5 | 0x10), (v29 = qword_1000314D0) != 0))
          {
            v30 = __s1[0];
            if (v5 & 0x2008 | __s1[0])
            {
LABEL_124:
              if (v30 != 95 && !strstr(__s1, "/_"))
              {
                if (sub_1000133DC(dword_1000309F0, v29, v5, v28, __s1, 0))
                {
                  v25 = 1;
                }

                else if ((v5 & 8) == 0 && (dword_100030D84 & 0x20) != 0)
                {
                  sub_10000FE48(0);
                }

                goto LABEL_155;
              }

LABEL_130:
              errx(1, "anchor names beginning with '_' cannot be modified from the command line");
            }

            if ((dword_100030D84 & 8) == 0)
            {
              goto LABEL_123;
            }

            if (sub_100007BF4(dword_1000309F0, v5, "/etc/pf.os"))
            {
              v25 = 1;
            }

            v29 = qword_1000314D0;
            if (qword_1000314D0)
            {
LABEL_123:
              v30 = __s1[0];
              goto LABEL_124;
            }
          }
        }

LABEL_155:
        if ((v5 & 2) != 0)
        {
          sub_100010758(dword_1000309F0, v5);
        }

        if ((v5 & 0x1000) != 0)
        {
          sub_10001080C(dword_1000309F0, v5, v6);
        }

        if (qword_1000314F0)
        {
          v35 = *qword_1000314F0 - 108;
          if (v35 <= 9 && ((0x207u >> v35) & 1) != 0)
          {
            sub_10001432C(dword_1000309F0, dword_100027D98[(*qword_1000314F0 - 108)], v5);
          }
        }

        exit(v25);
    }
  }
}

uint64_t strtonum(const char *__numstr, uint64_t __minval, uint64_t __maxval, const char **__errstrp)
{
  v23 = 0;
  v21 = "invalid";
  v20 = 22;
  v19 = "too small";
  v18 = 34;
  v17 = "too large";
  v16 = 34;
  v22 = *__error();
  *__error() = 0;
  if (__minval > __maxval || (__endptr = 0, v8 = strtoll(__numstr, &__endptr, 10), __endptr == __numstr) || *__endptr)
  {
    v9 = 0;
    v10 = &v20;
    v11 = &v21;
    goto LABEL_5;
  }

  v14 = v8;
  if (v8 != 0x8000000000000000)
  {
    if (v8 < __minval)
    {
      v9 = 0;
      v10 = &v18;
      v11 = &v19;
      goto LABEL_5;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*__error() != 34)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        if (__maxval == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = &v22;
          v11 = &v23;
          goto LABEL_5;
        }
      }

      goto LABEL_19;
    }

LABEL_18:
    if (v14 <= __maxval)
    {
      v10 = &v22;
      v11 = &v23;
      v9 = v14;
      goto LABEL_5;
    }

LABEL_19:
    v9 = 0;
    v10 = &v16;
    v11 = &v17;
    goto LABEL_5;
  }

  v15 = __error();
  v9 = 0;
  v10 = &v18;
  v11 = &v19;
  if (*v15 != 34 && __minval == 0x8000000000000000)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (__errstrp)
  {
    *__errstrp = *v11;
  }

  v12 = *v10;
  *__error() = v12;
  return v9;
}

uint64_t sub_100015820()
{
  __chkstk_darwin();
  v504 = 0;
  v0 = 0;
  v1 = &unk_100031000;
  v503 = &v506[1];
  v517 = 0u;
  v518 = 0u;
  v500 = &v547;
  v501 = &v549;
  v502 = v555;
  v515 = 0u;
  v516 = 0u;
  v2 = v590;
  v3 = 200;
  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  *v506 = 0u;
  dword_100031508 = 0;
  dword_10003150C = -2;
  __src = v590;
  v4 = v591;
  v5 = v591;
  while (1)
  {
    *v4 = v0;
    if (&v5[2 * v3 - 2] <= v4)
    {
      if (v3 >> 4 > 0x270 || ((2 * v3) >= 0x2710 ? (v3 = 10000) : (v3 *= 2), (v6 = malloc_type_malloc(210 * v3 + 207, 0x1000040BDFB0063uLL)) == 0))
      {
        sub_10001D73C("memory exhausted");
        v492 = 2;
        goto LABEL_1769;
      }

      v7 = v6;
      v8 = ((v4 - v5) >> 1) + 1;
      memcpy(v6, v5, 2 * v8);
      memcpy(&v7[208 * ((2 * v3 + 207) / 0xD0u)], __src, 208 * v8);
      if (v5 != v591)
      {
        free(v5);
      }

      if (v3 <= v8)
      {
        v492 = 1;
        v5 = v7;
        goto LABEL_1769;
      }

      v4 = &v7[2 * v8 - 2];
      v2 = &v7[208 * ((2 * v3 + 207) / 0xD0u) - 208 + 208 * v8];
      __src = &v7[208 * ((2 * v3 + 207) / 0xD0u)];
      v5 = v7;
    }

    v9 = word_100027DD8[v0];
    if (v9 == -575)
    {
      goto LABEL_29;
    }

    v10 = v1[323];
    if (v10 == -2)
    {
      v10 = sub_10001CFAC();
      v1[323] = v10;
    }

    if (v10 <= 0)
    {
      v11 = 0;
      v1[323] = 0;
    }

    else
    {
      v11 = v10 > 0x185 ? 2 : byte_1000283E8[v10];
    }

    v12 = v11 + v9;
    if ((v11 + v9) > 0x345 || v11 != word_10002856E[v12])
    {
LABEL_29:
      v21 = word_100029286[v0];
      if (!word_100029286[v0])
      {
        goto LABEL_34;
      }

LABEL_30:
      v22 = byte_100029896[v21];
      v23 = &v2[-26 * v22];
      *v506 = v23[13];
      v24 = v23[14];
      v25 = v23[15];
      v26 = v23[17];
      v509 = v23[16];
      v510 = v26;
      v507 = v24;
      v508 = v25;
      v27 = v23[18];
      v28 = v23[19];
      v29 = v23[21];
      v513 = v23[20];
      v514 = v29;
      v511 = v27;
      v512 = v28;
      v30 = v23[22];
      v31 = v23[23];
      v32 = v23[25];
      v517 = v23[24];
      v518 = v32;
      v515 = v30;
      v516 = v31;
      switch(v21)
      {
        case 18:
          ++*(qword_100030C60 + 36);
          goto LABEL_1413;
        case 19:
          v206 = sub_10001D5F8(*v2, 0);
          if (v206)
          {
            free(*v2);
            qword_100030C60 = v206;
            if (!qword_100031880 || (v207 = dword_100031888, --dword_100031888, v207 <= 0))
            {
              v208 = dword_100031878;
              if (dword_100031878 <= 126)
              {
                ++dword_100031878;
                byte_10003188C[v208] = 10;
              }
            }

            goto LABEL_1413;
          }

          sub_10001D73C("failed to include file %s");
          goto LABEL_1547;
        case 20:
          v47 = *v2;
          if (!strcmp(*v2, "none"))
          {
            goto LABEL_63;
          }

          if (!strcmp(v47, "basic"))
          {
            goto LABEL_61;
          }

          if (!strcmp(v47, "profile"))
          {
            goto LABEL_62;
          }

          sub_10001D73C("unknown ruleset-optimization %s");
          goto LABEL_1549;
        case 21:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_854;
          }

          dword_100030C78 = 1;
          v300 = sub_100013F44(qword_100030C68, *v2);
          v69 = *v2;
          if (!v300)
          {
            goto LABEL_1412;
          }

          sub_10001D73C("unknown optimization %s");
          goto LABEL_1547;
        case 22:
          v72 = qword_100030C68;
          v73 = *(qword_100030C68 + 4);
          if ((v73 & 0x800) == 0)
          {
            *(qword_100030C68 + 4) = v73 | 0x800;
            *(v72 + 8) = *v2;
          }

          goto LABEL_1413;
        case 27:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_854;
          }

          dword_100030C78 = 1;
          v68 = sub_100014050(qword_100030C68, *v2);
          v69 = *v2;
          if (!v68)
          {
            goto LABEL_1412;
          }

          sub_10001D73C("error setting loginterface %s");
          goto LABEL_1547;
        case 28:
          v70 = *v2;
          if (*v2 && v70 < &_mh_execute_header)
          {
            if (!sub_1000140E0(qword_100030C68, v70))
            {
              goto LABEL_1413;
            }

            sub_10001D73C("error setting hostid %08x");
          }

          else
          {
            sub_10001D73C("hostid must be non-zero", v494);
          }

          goto LABEL_1549;
        case 29:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            puts("set block-policy drop");
          }

          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 1;
          byte_100030C70 = 0;
          goto LABEL_1413;
        case 30:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            puts("set block-policy return");
          }

          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 1;
          byte_100030C70 = 1;
          goto LABEL_1413;
        case 31:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            if (*v2 == 1)
            {
              v54 = "yes";
            }

            else
            {
              v54 = "no";
            }

            printf("set require-order %s\n", v54);
          }

          dword_100030BA8 = *v2;
          goto LABEL_1413;
        case 32:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            printf("set fingerprints %s\n", *v2);
          }

          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_854;
          }

          dword_100030C78 = 1;
          if (*(*(qword_100030C68 + 1704) + 64) || !sub_100007BF4(*qword_100030C68, *(qword_100030C68 + 4), *v2))
          {
            goto LABEL_1164;
          }

          sub_10001D73C("error loading fingerprints %s");
          goto LABEL_1547;
        case 33:
          if ((*(qword_100030C68 + 4) & 4) == 0)
          {
            goto LABEL_1208;
          }

          if (*v2)
          {
            if (*v2 != 0x10000)
            {
              goto LABEL_1208;
            }

            v96 = "set state-policy if-bound";
          }

          else
          {
            v96 = "set state-policy floating";
          }

          puts(v96);
LABEL_1208:
          dword_100030C74 = *v2;
          goto LABEL_1413;
        case 34:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
LABEL_854:
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering", v494);
          }

          else
          {
            dword_100030C78 = 1;
            v75 = sub_100014138(qword_100030C68, *v2);
            v69 = *v2;
            if (!v75)
            {
              goto LABEL_1412;
            }

            sub_10001D73C("error setting debuglevel %s");
          }

          goto LABEL_1547;
        case 35:
          if (!sub_10001D82C(*v2))
          {
            goto LABEL_1413;
          }

          sub_10001D73C("error setting skip interface(s)", v494);
          goto LABEL_1549;
        case 36:
        case 42:
        case 79:
        case 81:
        case 83:
          v506[0] = *v2;
          goto LABEL_1413;
        case 37:
          v506[0] = strdup("all");
          if (!v506[0])
          {
            sub_10002141C();
          }

          goto LABEL_1413;
        case 38:
          if (asprintf(v506, "%s %s", *(v2 - 26), *v2) == -1)
          {
            sub_100021400();
          }

          v81 = *(v2 - 26);
          goto LABEL_863;
        case 40:
          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            printf("%s = %s\n", *(v2 - 52), *v2);
          }

          v280 = sub_10001D99C(*(v2 - 52), *v2, 0);
          v81 = *(v2 - 52);
          if (v280 == -1)
          {
            goto LABEL_1774;
          }

LABEL_863:
          free(v81);
          goto LABEL_1164;
        case 41:
          *c = 0;
          if (asprintf(c, "%lld", *v2) == -1)
          {
            sub_10001D73C("string: asprintf", v494);
            goto LABEL_1549;
          }

          if ((*(qword_100030C68 + 4) & 4) != 0)
          {
            printf("%s = %s\n", *(v2 - 52), *c);
          }

          v108 = sub_10001D99C(*(v2 - 52), *c, 0);
          v81 = *(v2 - 52);
          if (v108 == -1)
          {
LABEL_1774:
            err(1, "cannot store variable %s", v81);
          }

          free(v81);
          v69 = *c;
          goto LABEL_1412;
        case 43:
        case 94:
          goto LABEL_265;
        case 50:
          v281 = qword_100030C68;
          v282 = vadd_s32(*(qword_100030C68 + 16), 0x100000001);
          *(qword_100030C68 + 16) = v282;
          *(v281 + 24) = 1;
          snprintf(c, 0x40uLL, "_%d", v282.i32[1]);
          v283 = sub_10000281C(c);
          if (!v283)
          {
            sub_1000213E4();
          }

          v284 = *(v283 + 72);
          v285 = qword_100030C68;
          *(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 32) = v284;
          *(v285 + 1704) = v284;
          goto LABEL_1413;
        case 51:
          v49 = qword_100030C68;
          *(qword_100030C68 + 1712) = *(qword_100030C68 + 1704);
          v50 = *(v49 + 16) - 1;
          *(v49 + 16) = v50;
          *(v49 + 1704) = *(v49 + 8 * v50 + 32);
          goto LABEL_1413;
        case 53:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          v55 = (v2 - 208);
          if (dword_100030BA8 && dword_100030C78 >= 6)
          {
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering");
            v56 = *v55;
            if (!*v55)
            {
              goto LABEL_1549;
            }

            goto LABEL_1548;
          }

          dword_100030C78 = 5;
          v237 = *v55;
          if (*v55 && (*v237 == 95 || strstr(*v55, "/_")))
          {
LABEL_887:
            free(v237);
            sub_10001D73C("anchor names beginning with '_' are reserved for internal use", v494);
            goto LABEL_1549;
          }

          bzero(c, 0x410uLL);
          v354 = *(qword_100030C68 + 16);
          if (*(qword_100030C68 + 32 + 8 * v354 + 8))
          {
            v355 = *v55;
            if (!*v55)
            {
              v355 = (*(qword_100030C68 + 1712) + 64);
            }

            sub_100002C50(c, *(qword_100030C68 + 32 + 8 * v354) + 1152, v355);
            if (!v553)
            {
              sub_1000213C8();
            }

            v356 = *(qword_100030C68 + 1712);
            if (v356 != v553)
            {
              if (*(v553 + 1756))
              {
                sub_10001D73C("inline anchor '%s' already exists");
                goto LABEL_1549;
              }

              sub_10001DAB8(v356 + 1152, v553 + 1152);
              v356 = *(qword_100030C68 + 1712);
            }

            sub_100002B50((v356 + 1152));
            *(qword_100030C68 + 1712) = v553;
          }

          else if (!*v55)
          {
LABEL_1253:
            sub_10001D73C("anchors without explicit rules must specify a name", v494);
            goto LABEL_1549;
          }

          HIBYTE(v568) = *(v2 - 364);
          v571 = *(v2 - 1246);
          v576 = *(v2 - 208);
          v563 = *(v2 - 39);
          v554 = *(v2 - 21);
          if (*(v2 - 13) && __strlcpy_chk() >= 0x40 || *(v2 - 12) && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1583;
          }

          v573 = *(v2 - 88);
          if (sub_10001DBA4(c, *(v2 - 16)))
          {
            goto LABEL_1549;
          }

          free(*(v2 - 16));
          v578 = *(v2 - 184);
          v579 = *(v2 - 183);
          v395 = *(v2 - 184);
          if ((v395 & ~v579) != 0)
          {
LABEL_1402:
            sub_10001D73C("flags always false", v494);
            goto LABEL_1549;
          }

          v396 = v579 | v395;
          if (v396 || *(v2 - 48))
          {
            v397 = *(v2 - 78);
            if (v397)
            {
              do
              {
                if (*v397 == 6)
                {
                  goto LABEL_1469;
                }

                v397 = *(v397 + 8);
              }

              while (v397);
              if (v396)
              {
                sub_10001D73C("flags only apply to tcp");
              }

              v241 = *(v2 - 48);
LABEL_1400:
              if (v241)
              {
                sub_10001D73C("OS fingerprinting only applies to tcp", v494);
              }

              goto LABEL_1549;
            }
          }

LABEL_1469:
          v584 = *(v2 - 42);
          if (*(v2 - 38))
          {
LABEL_1451:
            sub_10001D73C("cannot specify state handling on anchors", v494);
            goto LABEL_1549;
          }

          if (*(v2 - 12) && __strlcpy_chk() >= 0x40)
          {
LABEL_1583:
            sub_10001D73C("tag too long, max %u chars");
            goto LABEL_1549;
          }

          v573 = *(v2 - 88);
          v451 = *(v2 - 52);
          v452 = v576;
          if (v451)
          {
            v453 = v576 == 0;
          }

          else
          {
            v453 = 0;
          }

          if (v453)
          {
            v452 = *(v451 + 80);
            v576 = *(v451 + 80);
            while (1)
            {
              v451 = *(v451 + 104);
              if (!v451)
              {
                break;
              }

              if (*(v451 + 80) != v452)
              {
                v452 = 0;
                v576 = 0;
                break;
              }
            }
          }

          v454 = *(v2 - 50);
          if (v454)
          {
            v455 = v452 == 0;
          }

          else
          {
            v455 = 0;
          }

          if (v455)
          {
            v456 = *(v454 + 80);
            v576 = *(v454 + 80);
            while (1)
            {
              v454 = *(v454 + 104);
              if (!v454)
              {
                break;
              }

              if (*(v454 + 80) != v456)
              {
                v576 = 0;
                break;
              }
            }
          }

          if (*(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 40))
          {
            v457 = (*(qword_100030C68 + 1712) + 64);
          }

          else
          {
            v457 = *v55;
          }

          sub_10001DC08(c, *(v2 - 130), 0, *(v2 - 78), *(v2 - 48), *(v2 - 52), *(v2 - 51), *(v2 - 50), *(v2 - 49), *(v2 - 25), *(v2 - 24), *(v2 - 22), v457);
          free(*v55);
          *(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 40) = 0;
          goto LABEL_1413;
        case 54:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 3)
          {
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering");
            v278 = (v2 - 156);
LABEL_872:
            v56 = *v278;
            goto LABEL_1548;
          }

          dword_100030C78 = 2;
          bzero(c, 0x410uLL);
          LOBYTE(v568) = 2;
          v301 = (v2 - 156);
          if (!*(v2 - 156))
          {
            sub_10001D73C("anchors without explicit reules must specify a name", v494);
            goto LABEL_1549;
          }

          v302 = *(v2 - 260);
          HIBYTE(v568) = v302;
          v303 = *(v2 - 624);
          v576 = *(v2 - 624);
          v304 = *(v2 + 1);
          if (v304)
          {
            v304 = 256;
            v567 = 256;
          }

          if (*(v2 + 5))
          {
            v304 |= 0x800u;
            v567 = v304;
          }

          if (*(v2 + 6))
          {
            if (v302)
            {
LABEL_1189:
              sub_10001D73C("reassemble tcp rules can not specify direction", v494);
              goto LABEL_1549;
            }

            v304 |= 0x1000u;
            v567 = v304;
          }

          if (*(v2 + 2))
          {
            v580 = *(v2 + 2);
          }

          if (*(v2 + 3))
          {
            v566 = *(v2 + 3);
          }

          v305 = *(v2 + 4);
          if (v305)
          {
            v567 = v304 | v305;
          }

          v554 = *(v2 + 7);
          if (!v303)
          {
            v306 = *(v2 - 26);
            if (v306)
            {
              v303 = *(v306 + 80);
              v576 = *(v306 + 80);
              while (1)
              {
                v306 = *(v306 + 104);
                if (!v306)
                {
                  break;
                }

                if (*(v306 + 80) != v303)
                {
                  v303 = 0;
                  v576 = 0;
                  break;
                }
              }
            }
          }

          v307 = *(v2 - 24);
          if (v307)
          {
            v308 = v303 == 0;
          }

          else
          {
            v308 = 0;
          }

          if (v308)
          {
            v309 = *(v307 + 80);
            v576 = *(v307 + 80);
            while (1)
            {
              v307 = *(v307 + 104);
              if (!v307)
              {
                break;
              }

              if (*(v307 + 80) != v309)
              {
                v576 = 0;
                break;
              }
            }
          }

          v310 = *(v2 - 104);
          v311 = *(v2 - 52);
          v313 = *(v2 - 23);
          v312 = *(v2 - 22);
          v314 = *(v2 - 26);
          v315 = *(v2 - 25);
          v316 = *(v2 - 24);
LABEL_998:
          sub_10001DC08(c, v310, 0, v311, v312, v314, v315, v316, v313, 0, 0, 0, *v301);
          goto LABEL_999;
        case 55:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 > 4)
          {
            goto LABEL_871;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v568) = 4;
          v576 = *(v2 - 624);
          v317 = v576;
          v554 = *v2;
          if (v576)
          {
            goto LABEL_987;
          }

          v318 = *(v2 - 26);
          if (!v318)
          {
            goto LABEL_987;
          }

          v317 = *(v318 + 80);
          v576 = *(v318 + 80);
          while (1)
          {
            v318 = *(v318 + 104);
            if (!v318)
            {
              break;
            }

            if (*(v318 + 80) != v317)
            {
              v317 = 0;
              v576 = 0;
              break;
            }
          }

LABEL_987:
          v319 = *(v2 - 24);
          if (v319)
          {
            v320 = v317 == 0;
          }

          else
          {
            v320 = 0;
          }

          if (v320)
          {
            v321 = *(v319 + 80);
            v576 = *(v319 + 80);
            while (1)
            {
              v319 = *(v319 + 104);
              if (!v319)
              {
                break;
              }

              if (*(v319 + 80) != v321)
              {
                v576 = 0;
                break;
              }
            }
          }

          v310 = *(v2 - 104);
          v311 = *(v2 - 52);
          v313 = *(v2 - 23);
          v312 = *(v2 - 22);
          v314 = *(v2 - 26);
          v315 = *(v2 - 25);
          goto LABEL_997;
        case 56:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
            goto LABEL_871;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v568) = 8;
          v576 = *(v2 - 624);
          v61 = v576;
          v554 = *v2;
          if (v576)
          {
            goto LABEL_143;
          }

          v62 = *(v2 - 26);
          if (!v62)
          {
            goto LABEL_143;
          }

          v61 = *(v62 + 80);
          v576 = *(v62 + 80);
          while (1)
          {
            v62 = *(v62 + 104);
            if (!v62)
            {
              break;
            }

            if (*(v62 + 80) != v61)
            {
              v61 = 0;
              v576 = 0;
              break;
            }
          }

LABEL_143:
          v63 = *(v2 - 24);
          if (v63)
          {
            v64 = v61 == 0;
          }

          else
          {
            v64 = 0;
          }

          if (v64)
          {
            v65 = *(v63 + 80);
            v576 = *(v63 + 80);
            while (1)
            {
              v63 = *(v63 + 104);
              if (!v63)
              {
                break;
              }

              if (*(v63 + 80) != v65)
              {
                v576 = 0;
                break;
              }
            }
          }

          if (*(v2 - 25))
          {
            sub_10001D73C("source port parameter not supported in rdr-anchor", v494);
            goto LABEL_1549;
          }

          v313 = *(v2 - 23);
          if (v313)
          {
            if (*(v313 + 8))
            {
              sub_10001D73C("destination port list expansion not supported in rdr-anchor", v494);
              goto LABEL_1549;
            }

            if (*(v313 + 4) != 2)
            {
              sub_10001D73C("destination port operators not supported in rdr-anchor", v494);
              goto LABEL_1549;
            }

            LOWORD(v521) = *v313;
            WORD1(v521) = *(*(v2 - 23) + 1);
            BYTE4(v521) = (*(v2 - 23))[4];
            v315 = *(v2 - 25);
            v313 = *(v2 - 23);
          }

          else
          {
            v315 = 0;
          }

          v310 = *(v2 - 104);
          v311 = *(v2 - 52);
          v312 = *(v2 - 22);
          v314 = *(v2 - 26);
LABEL_997:
          v316 = *(v2 - 24);
          v301 = (v2 - 130);
          goto LABEL_998;
        case 57:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
LABEL_871:
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering");
            v278 = (v2 - 130);
            goto LABEL_872;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v568) = 6;
          v576 = *(v2 - 156);
          v554 = *v2;
          v174 = *(v2 - 52);
          if (v174)
          {
            if (*(v174 + 1))
            {
              sub_10001D73C("proto list expansion not supported in binat-anchor", v494);
              goto LABEL_1549;
            }

            v577 = *v174;
            free(*(v2 - 52));
          }

          if (*(v2 - 26) || *(v2 - 25) || *(v2 - 24) || *(v2 - 23))
          {
            sub_10001D73C("fromto parameter not supported in binat-anchor", v494);
            goto LABEL_1549;
          }

          v301 = (v2 - 130);
          sub_100012B94(qword_100030C68, c, *(v2 - 130));
LABEL_999:
          v69 = *v301;
          goto LABEL_1412;
        case 58:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          v236 = (v2 - 182);
          v237 = *(v2 - 182);
          if (v237 && (*v237 == 95 || strstr(*(v2 - 182), "/_")))
          {
            goto LABEL_887;
          }

          bzero(c, 0x410uLL);
          LOBYTE(v568) = 11;
          if (!*v236)
          {
            goto LABEL_1253;
          }

          HIBYTE(v568) = *(v2 - 312);
          v571 = *(v2 - 1038);
          v576 = *(v2 - 156);
          v563 = *(v2 + 13);
          v554 = *(v2 + 31);
          if (v2[13] && __strlcpy_chk() >= 0x40 || v2[14] && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1583;
          }

          v573 = *(v2 + 120);
          if (sub_10001DBA4(c, v2[10]))
          {
            goto LABEL_1549;
          }

          free(v2[10]);
          v578 = *(v2 + 24);
          v579 = *(v2 + 25);
          v238 = *(v2 + 24);
          if ((v238 & ~v579) != 0)
          {
            goto LABEL_1402;
          }

          v239 = v579 | v238;
          if (!v239 && !*(v2 - 22))
          {
            goto LABEL_1450;
          }

          v240 = *(v2 - 52);
          if (!v240)
          {
            goto LABEL_1450;
          }

          while (*v240 != 6)
          {
            v240 = *(v240 + 8);
            if (!v240)
            {
              if (v239)
              {
                sub_10001D73C("flags only apply to tcp");
              }

              v241 = *(v2 - 22);
              goto LABEL_1400;
            }
          }

LABEL_1450:
          v584 = *(v2 + 10);
          if (*(v2 + 14))
          {
            goto LABEL_1451;
          }

          if (v2[14] && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1583;
          }

          v573 = *(v2 + 120);
          v427 = *(v2 - 26);
          v428 = v576;
          if (v427 && !v576)
          {
            v428 = *(v427 + 80);
            v576 = *(v427 + 80);
            while (1)
            {
              v427 = *(v427 + 104);
              if (!v427)
              {
                break;
              }

              if (*(v427 + 80) != v428)
              {
                v428 = 0;
                v576 = 0;
                break;
              }
            }
          }

          v429 = *(v2 - 24);
          if (v429)
          {
            v430 = v428 == 0;
          }

          else
          {
            v430 = 0;
          }

          if (v430)
          {
            v431 = *(v429 + 80);
            v576 = *(v429 + 80);
            while (1)
            {
              v429 = *(v429 + 104);
              if (!v429)
              {
                break;
              }

              if (*(v429 + 80) != v431)
              {
                v576 = 0;
                break;
              }
            }
          }

          sub_10001DC08(c, *(v2 - 104), 0, *(v2 - 52), *(v2 - 22), *(v2 - 26), *(v2 - 25), *(v2 - 24), *(v2 - 23), v2[1], v2[2], v2[4], *v236);
          free(*v236);
          goto LABEL_1413;
        case 59:
          v499 = v22;
          v76 = strlen((*(qword_100030C68 + 1704) + 64));
          v77 = (v2 - 52);
          if (v76 + strlen(*(v2 - 52)) + 1 <= 0x3FF)
          {
            v287 = malloc_type_calloc(1uLL, 0x20uLL, 0xB004013ACE7CCuLL);
            if (!v287)
            {
              sub_1000213AC();
            }

            v288 = v287;
            v289 = malloc_type_malloc(0x400uLL, 0xC994E5FCuLL);
            v288[2] = v289;
            if (!v289)
            {
              sub_100021390();
            }

            v290 = *(qword_100030C68 + 1704);
            v292 = *(v290 + 64);
            v291 = (v290 + 64);
            if (v292)
            {
              snprintf(v289, 0x400uLL, "%s/%s", v291, *v77);
            }

            else
            {
              __strlcpy_chk();
            }

            v358 = strdup(*v2);
            v288[3] = v358;
            if (!v358)
            {
              sub_100021374();
            }

            v359 = off_100030BA0;
            *v288 = 0;
            v288[1] = v359;
            *v359 = v288;
            off_100030BA0 = v288;
            free(*v77);
            free(*v2);
            goto LABEL_1200;
          }

          sub_10001D73C("anchorname %s too long, max %u\n", *(v2 - 52), 1023);
          v78 = *v77;
          goto LABEL_1261;
        case 60:
          WORD1(v506[0]) = 0;
          BYTE1(v506[0]) = 0;
          if (*(v2 - 52))
          {
            v215 = 3;
          }

          else
          {
            v215 = 2;
          }

          goto LABEL_1055;
        case 61:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 > 2)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 2;
          bzero(c, 0x410uLL);
          LOBYTE(v568) = *(v2 - 1456);
          v48 = *(v2 - 312);
          HIBYTE(v568) = v48;
          v569 = *(v2 - 1040);
          v570 = *(v2 - 1039);
          if (*(v2 - 1038))
          {
            sub_10001D73C("scrub rules do not support 'quick'", v494);
            goto LABEL_1549;
          }

          v576 = *(v2 - 156);
          v357 = *(v2 + 1);
          if (v357)
          {
            v357 = 256;
            v567 = 256;
          }

          if (*(v2 + 5))
          {
            v357 |= 0x800u;
            v567 = v357;
          }

          if (!*(v2 + 6))
          {
            goto LABEL_1311;
          }

          if (!v48)
          {
            v357 |= 0x1000u;
            v567 = v357;
LABEL_1311:
            if (*(v2 + 2))
            {
              v580 = *(v2 + 2);
            }

            if (*(v2 + 3))
            {
              v566 = *(v2 + 3);
            }

            v385 = *(v2 + 4);
            if (v385)
            {
              v567 = v357 | v385;
            }

            v554 = *(v2 + 7);
            sub_10001DC08(c, *(v2 - 104), 0, *(v2 - 52), *(v2 - 22), *(v2 - 26), *(v2 - 25), *(v2 - 24), *(v2 - 23), 0, 0, 0, "");
            goto LABEL_1413;
          }

          goto LABEL_1189;
        case 62:
          v264 = &xmmword_1000315E0;
          v265 = 0uLL;
          goto LABEL_838;
        case 63:
          v212 = &xmmword_1000315E0;
          goto LABEL_841;
        case 64:
          v60 = 0uLL;
          xmmword_1000315E0 = 0u;
          *&dword_1000315F0 = 0u;
          goto LABEL_186;
        case 67:
          if (!DWORD1(xmmword_1000315E0))
          {
            DWORD1(xmmword_1000315E0) = 1;
            goto LABEL_1413;
          }

          sub_10001D73C("no-df cannot be respecified", v494);
          goto LABEL_1549;
        case 68:
          if (xmmword_1000315E0)
          {
            sub_10001D73C("min-ttl cannot be respecified", v494);
          }

          else
          {
            if (*v2 < 0x100)
            {
              LODWORD(xmmword_1000315E0) = xmmword_1000315E0 | 1;
              DWORD2(xmmword_1000315E0) = *v2;
              goto LABEL_1413;
            }

            sub_10001D73C("illegal min-ttl value %d");
          }

          goto LABEL_1549;
        case 69:
          if ((xmmword_1000315E0 & 2) != 0)
          {
            sub_10001D73C("max-mss cannot be respecified", v494);
          }

          else
          {
            if (*v2 < 0x10000)
            {
              LODWORD(xmmword_1000315E0) = xmmword_1000315E0 | 2;
              HIDWORD(xmmword_1000315E0) = *v2;
              goto LABEL_1413;
            }

            sub_10001D73C("illegal max-mss value %d");
          }

          goto LABEL_1549;
        case 70:
          if ((xmmword_1000315E0 & 4) == 0)
          {
            LODWORD(xmmword_1000315E0) = xmmword_1000315E0 | 4;
            dword_1000315F0 = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("fragcache cannot be respecified", v494);
          goto LABEL_1549;
        case 71:
          v140 = *v2;
          if (strcasecmp(*v2, "tcp"))
          {
            sub_10001D73C("scrub reassemble supports only tcp, not '%s'");
            goto LABEL_1547;
          }

          free(v140);
          if (!dword_1000315F8)
          {
            dword_1000315F8 = 1;
            goto LABEL_1413;
          }

          sub_10001D73C("reassemble tcp cannot be respecified", v494);
          goto LABEL_1549;
        case 72:
          if (!dword_1000315F4)
          {
            dword_1000315F4 = 1;
            goto LABEL_1413;
          }

          sub_10001D73C("random-id cannot be respecified", v494);
          goto LABEL_1549;
        case 73:
          if (!*v2)
          {
            goto LABEL_859;
          }

          dword_1000315FC = *v2;
          goto LABEL_1413;
        case 74:
          v209 = if_nametoindex(*v2);
          if (v209)
          {
            dword_1000315FC = v209;
            goto LABEL_1413;
          }

          sub_10001D73C("invalid rtable interface name", v494);
          goto LABEL_1549;
        case 75:
LABEL_63:
          LODWORD(v506[0]) = 0;
          goto LABEL_1413;
        case 76:
          v39 = 512;
          goto LABEL_856;
        case 77:
          v39 = 1024;
          goto LABEL_856;
        case 78:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 > 5)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 5;
          v124 = *(v2 - 52);
          if (!v124)
          {
            goto LABEL_1164;
          }

          v496 = v2 - 623;
          v497 = v2 - 622;
          v498 = v2 - 78;
          v499 = v22;
          while (2)
          {
            bzero(c, 0x410uLL);
            v568 = 257;
            v569 = *v498;
            v570 = *v496;
            v571 = *v497;
            v576 = *(v2 - 52);
            if (sub_10001DBA4(c, *v2))
            {
              goto LABEL_1549;
            }

            v554 = *(v2 + 2);
            v125 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
            if (!v125)
            {
              sub_100021358();
            }

            v126 = v125;
            if (__strlcpy_chk() > 0xF)
            {
              goto LABEL_1309;
            }

            v126[16] = 1;
            if (*(v124 + 17))
            {
              v127 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
              if (!v127)
              {
                sub_100020A18();
              }

              v130 = v127;
              v127[2].i8[8] = 2;
              sub_10000BB08(v127, 0x80u, v128, v129);
              if (__strlcpy_chk() > 0xF)
              {
                v126 = v130;
                v22 = v499;
LABEL_1309:
                v248 = v126;
LABEL_1203:
                free(v248);
                sub_10001D73C("interface name too long", v494);
                goto LABEL_1549;
              }

              v131 = malloc_type_malloc(0x78uLL, 0x10B20409DAB6FE4uLL);
              if (!v131)
              {
                sub_10002133C();
              }

              v132 = v131;
              memmove(v131, v130, 0x78uLL);
              v130[2].i8[9] = 1;
            }

            else
            {
              v130 = sub_10000BFC8(v126, 1);
              v132 = 0;
              v133 = 0;
              if (!v130)
              {
                goto LABEL_325;
              }
            }

            sub_10001DC08(c, v126, 0, 0, 0, v130, 0, 0, 0, 0, 0, 0, "");
            v133 = v132;
LABEL_325:
            if ((*(v124 + 20) & 8) != 0)
            {
              free(v133);
              v22 = v499;
            }

            else
            {
              v134 = v133;
              bzero(c, 0x410uLL);
              v568 = 257;
              v569 = *v498;
              v571 = *v497;
              v576 = *(v2 - 52);
              v135 = sub_10001DBA4(c, *v2);
              v22 = v499;
              if (v135)
              {
                goto LABEL_1549;
              }

              v554 = *(v2 + 2);
              v136 = v134;
              if (v134 || (v136 = sub_10000BFC8(v124, 0)) != 0)
              {
                sub_10001DC08(c, 0, 0, 0, 0, v136, 0, 0, 0, 0, 0, 0, "");
              }
            }

            v124 = *(v124 + 24);
            if (!v124)
            {
              goto LABEL_1164;
            }

            continue;
          }

        case 80:
          goto LABEL_789;
        case 82:
          v91 = *v2;
          *(*(*(v2 - 52) + 4) + 24) = *v2;
          *(*(v2 - 52) + 4) = v91;
          v33 = *(v2 - 52);
          goto LABEL_292;
        case 84:
          *(*(v2 - 26) + 17) = 1;
LABEL_789:
          v33 = *(v2 - 26);
          goto LABEL_292;
        case 85:
          xmmword_100031600 = 0uLL;
          goto LABEL_1413;
        case 86:
          v251 = &xmmword_100031600;
          goto LABEL_749;
        case 87:
          xmmword_100031600 = 0uLL;
          v506[1] = 0;
LABEL_265:
          v506[0] = 0;
          goto LABEL_1413;
        case 90:
          if (xmmword_100031600)
          {
            goto LABEL_787;
          }

          *&xmmword_100031600 = *v2;
          goto LABEL_1413;
        case 91:
          if (!*v2)
          {
            goto LABEL_859;
          }

          DWORD2(xmmword_100031600) = *v2;
          goto LABEL_1413;
        case 92:
          v245 = if_nametoindex(*v2);
          if (!v245)
          {
            goto LABEL_859;
          }

          DWORD2(xmmword_100031600) = v245;
          goto LABEL_1413;
        case 93:
          v33 = 1;
          goto LABEL_292;
        case 95:
          v137 = (v2 - 52);
          v138 = *(v2 - 52);
          if (strlen(v138) >= 0x20)
          {
            sub_10001D73C("table name too long, max %d chars");
            goto LABEL_399;
          }

          if ((*(qword_100030C68 + 12) & 0x20) == 0 || (v295 = sub_10001E6BC(v138, v2), v138 = *v137, !v295))
          {
            free(v138);
            v336 = v2[1];
            if (v336)
            {
              do
              {
                v337 = *(v336 + 2);
                if (v337)
                {
                  free(v337);
                }

                v338 = *(v336 + 1);
                if (v338)
                {
                  do
                  {
                    v339 = v338[13];
                    free(v338);
                    v338 = v339;
                  }

                  while (v339);
                }

                v340 = *v336;
                free(v336);
                v336 = v340;
              }

              while (v340);
            }

            goto LABEL_1413;
          }

          v56 = *v137;
          goto LABEL_1548;
        case 96:
          xmmword_100031610 = 0uLL;
          qword_100031620 = &xmmword_100031610 + 8;
          goto LABEL_1413;
        case 97:
          *v506 = xmmword_100031610;
          v100 = qword_100031620;
          goto LABEL_498;
        case 98:
          v251 = &xmmword_100031610;
          xmmword_100031610 = 0uLL;
          qword_100031620 = &xmmword_100031610 + 8;
          *&v507 = &xmmword_100031610 + 8;
LABEL_749:
          *v506 = *v251;
          goto LABEL_1413;
        case 101:
          v279 = *v2;
          if (!strcmp(*v2, "const"))
          {
            v334 = 2;
          }

          else
          {
            if (strcmp(v279, "persist"))
            {
              sub_10001D73C("invalid table option '%s'");
              goto LABEL_1547;
            }

            v334 = 1;
          }

          LODWORD(xmmword_100031610) = xmmword_100031610 | v334;
LABEL_1164:
          v69 = *v2;
          goto LABEL_1412;
        case 102:
          DWORD1(xmmword_100031610) = 1;
          goto LABEL_1413;
        case 103:
          v261 = *(v2 - 26);
          if (!v261)
          {
            goto LABEL_771;
          }

          while (1)
          {
            v262 = *(v261 + 40);
            if (*(v261 + 40))
            {
              break;
            }

            v261 = *(v261 + 104);
            if (!v261)
            {
LABEL_771:
              v263 = malloc_type_calloc(1uLL, 0x18uLL, 0x3004039D06D92uLL);
              if (!v263)
              {
                sub_100021320();
              }

              v263[1] = *(v2 - 26);
LABEL_828:
              *v263 = 0;
              *qword_100031620 = v263;
              qword_100031620 = v263;
              DWORD1(xmmword_100031610) = 1;
              goto LABEL_1413;
            }
          }

          if (*(v261 + 40) <= 2u)
          {
            if (v262 == 1)
            {
              sub_10001D73C("no-route is not permitted inside tables", v494);
              goto LABEL_1549;
            }

            if (v262 == 2)
            {
              sub_10001D73C("dynamic addresses are not permitted inside tables", v494);
              goto LABEL_1549;
            }
          }

          else
          {
            switch(v262)
            {
              case 3:
                sub_10001D73C("tables cannot contain tables", v494);
                goto LABEL_1549;
              case 5:
                sub_10001D73C("urpf-failed is not permitted inside tables", v494);
                goto LABEL_1549;
              case 6:
                sub_10001D73C("address ranges are not permitted inside tables", v494);
                goto LABEL_1549;
            }
          }

          sub_10001D73C("unknown address type %d");
          goto LABEL_1549;
        case 104:
          v263 = malloc_type_calloc(1uLL, 0x18uLL, 0x3004039D06D92uLL);
          if (!v263)
          {
            sub_100021320();
          }

          v263[2] = *v2;
          goto LABEL_828;
        case 105:
          if (dword_100030BA8 && dword_100030C78 > 3)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 3;
          memset(c, 0, sizeof(c));
          v521 = 0u;
          v522 = 0u;
          v523 = 0u;
          v524 = 0u;
          v525 = 0u;
          v526 = 0u;
          v527 = 0u;
          v528 = 0u;
          v529 = 0u;
          v530 = 0u;
          v531 = 0u;
          v532 = 0u;
          v533 = 0u;
          *&v534 = 0;
          if (*(v2 - 98))
          {
            *&c[48] = *(v2 - 98);
            HIDWORD(v526) = *(v2 - 55);
            *&c[52] = *(v2 - 56);
            if (*v2)
            {
              if (!sub_10001E83C(c, *(v2 - 78), *v2, *(v2 - 51), *(v2 - 50), (v2 - 49)))
              {
                goto LABEL_1413;
              }
            }

            else
            {
              sub_10001D73C("no child queues specified", v494);
            }
          }

          else
          {
            sub_10001D73C("no scheduler specified!", v494);
          }

          goto LABEL_1549;
        case 106:
          *&v534 = 0;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 4)
          {
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering");
            v278 = (v2 - 78);
            goto LABEL_872;
          }

          dword_100030C78 = 3;
          memset(c, 0, sizeof(c));
          v521 = 0uLL;
          v522 = 0uLL;
          v523 = 0uLL;
          v524 = 0uLL;
          v525 = 0uLL;
          v526 = 0uLL;
          v527 = 0uLL;
          v528 = 0uLL;
          v529 = 0uLL;
          v530 = 0uLL;
          v531 = 0uLL;
          v532 = 0uLL;
          v533 = 0uLL;
          *&v534 = 0;
          v299 = (v2 - 78);
          if (__strlcpy_chk() >= 0x40)
          {
            sub_10001D73C("queue name too long (max %d chars)", 63);
            v56 = *v299;
            goto LABEL_1548;
          }

          free(*v299);
          if (*(v2 - 4))
          {
            sub_10001D73C("cannot specify tbrsize for queue", v494);
            goto LABEL_1549;
          }

          if (*(v2 - 6) >= 0x100u)
          {
            goto LABEL_1250;
          }

          DWORD2(v526) = *(v2 - 6);
          if ((*(v2 - 26) & 0x20) != 0)
          {
            v384 = *(v2 - 5);
            DWORD1(v526) |= 1u;
          }

          else
          {
            v384 = *(v2 - 6);
          }

          DWORD2(v526) = v384;
          HIDWORD(v526) = *(v2 - 3);
          *&c[48] = *(v2 - 46);
          if (!sub_10001ED08(c, *(v2 - 52), *v2, *(v2 - 25), *(v2 - 24), (v2 - 23)))
          {
            goto LABEL_1413;
          }

          sub_10001D73C("errors in queue definition", v494);
          goto LABEL_1549;
        case 107:
          qword_1000316E8 = 0x8000000000;
          xmmword_1000316C8 = 0u;
          unk_1000316D8 = 0u;
          xmmword_1000316A8 = 0u;
          unk_1000316B8 = 0u;
          xmmword_100031688 = 0u;
          unk_100031698 = 0u;
          xmmword_100031668 = 0u;
          unk_100031678 = 0u;
          xmmword_100031648 = 0u;
          unk_100031658 = 0u;
          xmmword_100031628 = 0u;
          *&word_100031638 = 0u;
          dword_1000316E0 = 1;
          word_100031638 = 100;
          goto LABEL_1413;
        case 108:
          v175 = &xmmword_100031628;
          v516 = xmmword_1000316C8;
          v517 = unk_1000316D8;
          v518.i64[0] = qword_1000316E8;
          v512 = xmmword_100031688;
          v513 = unk_100031698;
          v514 = xmmword_1000316A8;
          v515 = unk_1000316B8;
          v508 = xmmword_100031648;
          v509 = unk_100031658;
          v510 = xmmword_100031668;
          v511 = unk_100031678;
          goto LABEL_690;
        case 109:
          qword_1000316E8 = 0x8000000000;
          xmmword_100031628 = 0u;
          *&word_100031638 = 0u;
          xmmword_100031688 = 0u;
          unk_100031698 = 0u;
          xmmword_1000316C8 = 0u;
          unk_1000316D8 = 0u;
          xmmword_1000316A8 = 0u;
          unk_1000316B8 = 0u;
          xmmword_100031668 = 0u;
          unk_100031678 = 0u;
          xmmword_100031648 = 0u;
          unk_100031658 = 0u;
          dword_1000316E0 = 1;
          word_100031638 = 100;
          v512 = 0u;
          v513 = 0u;
          v510 = 0u;
          v511 = 0u;
          v508 = 0u;
          v509 = 0u;
          *v506 = 0u;
          v507 = *&word_100031638;
          v518.i64[0] = 0x8000000000;
          v516 = 0u;
          v517 = unk_1000316D8;
          v514 = 0u;
          v515 = 0u;
          goto LABEL_1413;
        case 112:
          if ((xmmword_100031628 & 1) == 0)
          {
            LODWORD(xmmword_100031628) = xmmword_100031628 | 1;
            *(&xmmword_100031628 + 8) = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("bandwidth cannot be respecified", v494);
          goto LABEL_1549;
        case 113:
          if ((xmmword_100031628 & 4) != 0)
          {
            sub_10001D73C("priority cannot be respecified", v494);
          }

          else if ((xmmword_100031628 & 0x20) != 0)
          {
LABEL_924:
            sub_10001D73C("priority and weight are mutually exclusive", v494);
          }

          else
          {
            if (*v2 < 0x100)
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 4;
              dword_1000316E0 = *v2;
              goto LABEL_1413;
            }

LABEL_1250:
            sub_10001D73C("priority out of range: max 255", v494);
          }

          goto LABEL_1549;
        case 114:
          if ((xmmword_100031628 & 0x10) != 0)
          {
            sub_10001D73C("qlimit cannot be respecified", v494);
          }

          else
          {
            if (!*(v2 + 1))
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 0x10;
              HIDWORD(qword_1000316E8) = *v2;
              goto LABEL_1413;
            }

            sub_10001D73C("qlimit number too big", v494);
          }

          goto LABEL_1549;
        case 115:
          if ((xmmword_100031628 & 2) == 0)
          {
            LODWORD(xmmword_100031628) = xmmword_100031628 | 2;
            v40 = *v2;
            *(&xmmword_100031648 + 8) = *(v2 + 1);
            unk_100031640 = v40;
            v41 = *(v2 + 2);
            v42 = *(v2 + 3);
            v43 = *(v2 + 4);
            *(&xmmword_100031688 + 8) = *(v2 + 5);
            unk_100031680 = v43;
            *(&xmmword_100031668 + 8) = v42;
            unk_100031660 = v41;
            v44 = *(v2 + 6);
            v45 = *(v2 + 7);
            v46 = *(v2 + 8);
            *(&xmmword_1000316C8 + 8) = *(v2 + 9);
            unk_1000316C0 = v46;
            *(&xmmword_1000316A8 + 8) = v45;
            unk_1000316A0 = v44;
            goto LABEL_1413;
          }

          sub_10001D73C("scheduler cannot be respecified", v494);
          goto LABEL_1549;
        case 116:
          if ((xmmword_100031628 & 8) != 0)
          {
            sub_10001D73C("tbrsize cannot be respecified", v494);
          }

          else
          {
            if (!*(v2 + 1))
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 8;
              LODWORD(qword_1000316E8) = *v2;
              goto LABEL_1413;
            }

            sub_10001D73C("tbrsize number too big", v494);
          }

          goto LABEL_1549;
        case 117:
          if ((xmmword_100031628 & 0x20) != 0)
          {
            sub_10001D73C("weight cannot be respecified", v494);
          }

          else
          {
            if ((xmmword_100031628 & 4) != 0)
            {
              goto LABEL_924;
            }

            if (!*(v2 + 1))
            {
              LODWORD(xmmword_100031628) = xmmword_100031628 | 0x20;
              dword_1000316E4 = *v2;
              goto LABEL_1413;
            }

            sub_10001D73C("weight number too big", v494);
          }

          goto LABEL_1549;
        case 118:
          *c = 0;
          LODWORD(v506[1]) = 0;
          v170 = strtold(*v2, c);
          v171 = v170;
          if (!*c)
          {
            goto LABEL_1324;
          }

          v172 = **c;
          if (v172 <= 0x4A)
          {
            if (v172 == 37)
            {
              if (!*(*c + 1))
              {
                if (v170 <= 0.0 || v170 > 100.0)
                {
                  sub_10001D73C("bandwidth spec out of range");
                  goto LABEL_1547;
                }

                LOWORD(v506[1]) = v170;
                WORD1(v506[1]) = 2;
                v171 = 0.0;
LABEL_1324:
                free(*v2);
                v506[0] = v171;
                if (v171 == 0.0)
                {
                  goto LABEL_1413;
                }

LABEL_1325:
                WORD1(v506[1]) = 1;
                goto LABEL_1413;
              }

LABEL_1246:
              sub_10001D73C("unknown unit %s");
              goto LABEL_1547;
            }

            if (v172 != 71 || *(*c + 1) != 98 || *(*c + 2))
            {
              goto LABEL_1246;
            }

            v342 = 1000000000.0;
          }

          else if (v172 == 75)
          {
            if (*(*c + 1) != 98 || *(*c + 2))
            {
              goto LABEL_1246;
            }

            v342 = 1000.0;
          }

          else
          {
            if (v172 != 77)
            {
              if (v172 == 98 && !*(*c + 1))
              {
                goto LABEL_1324;
              }

              goto LABEL_1246;
            }

            if (*(*c + 1) != 98 || *(*c + 2))
            {
              goto LABEL_1246;
            }

            v342 = 1000000.0;
          }

          v171 = v171 * v342;
          goto LABEL_1324;
        case 119:
          if ((*v2 & 0x8000000000000000) != 0)
          {
            sub_10001D73C("bandwidth number too big", v494);
            goto LABEL_1549;
          }

          LOWORD(v506[1]) = 0;
          v506[0] = *v2;
          if (!v506[0])
          {
            goto LABEL_1413;
          }

          goto LABEL_1325;
        case 120:
          LODWORD(v506[0]) = 1;
          DWORD2(v508) = 0;
          goto LABEL_1413;
        case 121:
          LODWORD(v506[0]) = 1;
          DWORD2(v508) = *(v2 - 26);
          goto LABEL_1413;
        case 122:
          LODWORD(v506[0]) = 3;
          LODWORD(v506[1]) = 0;
          goto LABEL_1413;
        case 123:
          LODWORD(v506[0]) = 3;
          LODWORD(v506[1]) = *(v2 - 26);
          goto LABEL_1413;
        case 124:
          LODWORD(v506[0]) = 2;
          v51 = v503;
          *v503 = 0u;
          *(v51 + 1) = 0u;
          *(v51 + 2) = 0u;
          *(v51 + 3) = 0u;
          *(v51 + 4) = 0u;
          *(v51 + 5) = 0u;
          *(v51 + 6) = 0u;
          *(v51 + 7) = 0u;
          *(v51 + 8) = 0u;
          v51[18] = 0;
          goto LABEL_1413;
        case 125:
          LODWORD(v506[0]) = 2;
          v142 = *(v2 - 12);
          v143 = v503;
          *v503 = *(v2 - 13);
          *(v143 + 1) = v142;
          v144 = *(v2 - 11);
          v145 = *(v2 - 10);
          v146 = *(v2 - 8);
          *(v143 + 4) = *(v2 - 9);
          *(v143 + 5) = v146;
          *(v143 + 2) = v144;
          *(v143 + 3) = v145;
          v147 = *(v2 - 7);
          v148 = *(v2 - 6);
          v149 = *(v2 - 5);
          v143[18] = *(v2 - 8);
          *(v143 + 7) = v148;
          *(v143 + 8) = v149;
          *(v143 + 6) = v147;
          goto LABEL_1413;
        case 126:
          LODWORD(v506[0]) = 4;
          v66 = v503;
          *v503 = 0u;
          *(v66 + 1) = 0u;
          *(v66 + 2) = 0u;
          *(v66 + 3) = 0u;
          v66[8] = 0;
          goto LABEL_1413;
        case 127:
          LODWORD(v506[0]) = 4;
          v273 = v503;
          *v503 = *(v2 - 13);
          v274 = *(v2 - 12);
          v275 = *(v2 - 11);
          v276 = *(v2 - 10);
          v273[8] = *(v2 - 18);
          *(v273 + 2) = v275;
          *(v273 + 3) = v276;
          *(v273 + 1) = v274;
          goto LABEL_1413;
        case 128:
        case 129:
        case 131:
        case 132:
          v33 = v506[0] | *v2;
          goto LABEL_292;
        case 130:
          v106 = *v2;
          if (!strcmp(*v2, "default"))
          {
            p_proto = 0x2000;
          }

          else
          {
            if (!strcmp(v106, "borrow"))
            {
              p_proto = 32;
              goto LABEL_1151;
            }

            if (!strcmp(v106, "red"))
            {
LABEL_1006:
              p_proto = 1;
            }

            else if (!strcmp(v106, "ecn") || !strcmp(v106, "red-ecn"))
            {
LABEL_1005:
              p_proto = 3;
            }

            else if (!strcmp(v106, "blue"))
            {
              p_proto = 0x10000;
            }

            else
            {
              if (strcmp(v106, "blue-ecn"))
              {
                if (!strcmp(v106, "sfb"))
                {
                  p_proto = 0x20000;
                  goto LABEL_1151;
                }

                if (!strcmp(v106, "sfb-ecn"))
                {
                  p_proto = 131074;
                  goto LABEL_1151;
                }

                if (strcmp(v106, "rio"))
                {
                  if (*v106 != 102 || v106[1] != 99 || v106[2])
                  {
                    sub_10001D73C("unknown cbq flag %s");
                    goto LABEL_1547;
                  }

                  p_proto = 0x40000;
                  goto LABEL_1151;
                }

                goto LABEL_1462;
              }

              p_proto = 65538;
            }
          }

          goto LABEL_1151;
        case 133:
          v205 = *v2;
          if (!strcmp(*v2, "default"))
          {
            p_proto = 4096;
            goto LABEL_1151;
          }

          if (!strcmp(v205, "red"))
          {
            goto LABEL_1006;
          }

          if (!strcmp(v205, "ecn") || !strcmp(v205, "red-ecn"))
          {
            goto LABEL_1005;
          }

          if (!strcmp(v205, "blue"))
          {
            p_proto = 256;
          }

          else if (!strcmp(v205, "blue-ecn"))
          {
            p_proto = 258;
          }

          else
          {
            if (strcmp(v205, "sfb"))
            {
              if (!strcmp(v205, "sfb-ecn"))
              {
                p_proto = 514;
                goto LABEL_1151;
              }

              if (strcmp(v205, "rio"))
              {
                if (*v205 != 102 || v205[1] != 99 || v205[2])
                {
                  sub_10001D73C("unknown priq flag %s");
                  goto LABEL_1547;
                }

                p_proto = 1024;
                goto LABEL_1151;
              }

LABEL_1462:
              p_proto = 4;
              goto LABEL_1151;
            }

            p_proto = 512;
          }

LABEL_1151:
          v506[0] = p_proto;
          goto LABEL_1152;
        case 134:
          v264 = &xmmword_1000316F0;
          qword_100031780 = 0;
          v265 = 0uLL;
          *(&xmmword_100031768 + 8) = 0u;
          goto LABEL_830;
        case 135:
          v212 = &xmmword_1000316F0;
          v512 = xmmword_100031750;
          v513 = *&dword_100031760;
          v514 = *(&xmmword_100031768 + 8);
          v515.i64[0] = qword_100031780;
          v508 = *(&xmmword_100031708 + 8);
          v509 = xmmword_100031720;
          v510 = xmmword_100031730;
          v511 = unk_100031740;
LABEL_841:
          v277 = v212[1];
          *v506 = *v212;
          v507 = v277;
          goto LABEL_1413;
        case 138:
          if (byte_100031748)
          {
            goto LABEL_832;
          }

          v269 = *v2;
          v270 = (&xmmword_100031730 + 8);
          goto LABEL_1068;
        case 139:
          v221 = v2 - 78;
          if (*(v2 - 78) >> 31)
          {
            goto LABEL_745;
          }

          if (byte_100031748)
          {
            goto LABEL_832;
          }

          v222 = *(v2 - 65);
          v223 = &xmmword_100031720;
          goto LABEL_1194;
        case 140:
          if (byte_100031718)
          {
            goto LABEL_816;
          }

          v269 = *v2;
          v270 = &xmmword_100031708;
          goto LABEL_1068;
        case 141:
          v221 = v2 - 78;
          if (*(v2 - 78) >> 31)
          {
            goto LABEL_745;
          }

          if (byte_100031718)
          {
LABEL_816:
            sub_10001D73C("realtime already specified", v494);
            goto LABEL_1549;
          }

          v222 = *(v2 - 65);
          v223 = &xmmword_1000316F0;
          goto LABEL_1194;
        case 142:
          if (byte_100031778)
          {
            goto LABEL_936;
          }

          v269 = *v2;
          v270 = &xmmword_100031768;
          goto LABEL_1068;
        case 143:
          v221 = v2 - 78;
          if (*(v2 - 78) >> 31)
          {
LABEL_745:
            sub_10001D73C("timing in curve out of range", v494);
            goto LABEL_1549;
          }

          if (!byte_100031778)
          {
            v222 = *(v2 - 65);
            v223 = &xmmword_100031750;
LABEL_1194:
            *v223 = v222;
            *(v223 + 4) = *v221;
            *(v223 + 24) = *(v2 - 13);
            *(v223 + 40) = 1;
            goto LABEL_1413;
          }

LABEL_936:
          sub_10001D73C("upperlimit already specified", v494);
          goto LABEL_1549;
        case 144:
          v52 = *v2;
          if (!strcmp(*v2, "default"))
          {
            v326 = 4096;
          }

          else if (!strcmp(v52, "red"))
          {
            v326 = 1;
          }

          else if (!strcmp(v52, "ecn") || !strcmp(v52, "red-ecn"))
          {
            v326 = 3;
          }

          else if (!strcmp(v52, "blue"))
          {
            v326 = 256;
          }

          else if (!strcmp(v52, "blue-ecn"))
          {
            v326 = 258;
          }

          else if (!strcmp(v52, "sfb"))
          {
            v326 = 512;
          }

          else if (!strcmp(v52, "sfb-ecn"))
          {
            v326 = 514;
          }

          else if (!strcmp(v52, "rio"))
          {
            v326 = 4;
          }

          else
          {
            if (*v52 != 102 || v52[1] != 99 || v52[2])
            {
              sub_10001D73C("unknown hfsc flag %s");
LABEL_1547:
              v56 = *v2;
              goto LABEL_1548;
            }

            v326 = 1024;
          }

          LODWORD(qword_100031780) = qword_100031780 | v326;
          goto LABEL_1152;
        case 145:
          v264 = &xmmword_100031788;
          qword_1000317C8 = 0;
          v265 = 0uLL;
          goto LABEL_837;
        case 146:
          v175 = &xmmword_100031788;
          v508 = *(&xmmword_1000317A0 + 8);
          v509 = xmmword_1000317B8;
          *&v510 = qword_1000317C8;
LABEL_690:
          v242 = v175[1];
          *v506 = *v175;
          v507 = v242;
          goto LABEL_1413;
        case 149:
          if (byte_1000317B0)
          {
            goto LABEL_832;
          }

          v269 = *v2;
          v270 = &xmmword_1000317A0;
LABEL_1068:
          *v270 = v269;
          *(v270 + 16) = 1;
          goto LABEL_1413;
        case 150:
          if (!byte_1000317B0)
          {
            xmmword_100031788 = *(v2 - 39);
            dword_100031798 = *(v2 - 52);
            xmmword_1000317A0 = *(v2 - 13);
            byte_1000317B0 = 1;
            goto LABEL_1413;
          }

LABEL_832:
          sub_10001D73C("linkshare already specified", v494);
          goto LABEL_1549;
        case 151:
          v92 = *v2;
          v93 = &xmmword_1000317B8;
          goto LABEL_1065;
        case 152:
          LODWORD(qword_1000317C8) = *v2;
          goto LABEL_1413;
        case 153:
          v53 = *v2;
          if (!strcmp(*v2, "default"))
          {
            v327 = 4096;
          }

          else if (!strcmp(v53, "red"))
          {
            v327 = 1;
          }

          else if (!strcmp(v53, "ecn") || !strcmp(v53, "red-ecn"))
          {
            v327 = 3;
          }

          else if (!strcmp(v53, "blue"))
          {
            v327 = 256;
          }

          else if (!strcmp(v53, "blue-ecn"))
          {
            v327 = 258;
          }

          else if (!strcmp(v53, "sfb"))
          {
            v327 = 512;
          }

          else if (!strcmp(v53, "sfb-ecn"))
          {
            v327 = 514;
          }

          else if (!strcmp(v53, "rio"))
          {
            v327 = 4;
          }

          else
          {
            if (*v53 != 102 || v53[1] != 99 || v53[2])
            {
              sub_10001D73C("unknown fairq flag %s");
              goto LABEL_1547;
            }

            v327 = 1024;
          }

          HIDWORD(qword_1000317C8) |= v327;
LABEL_1152:
          v69 = *v2;
          goto LABEL_1412;
        case 154:
        case 220:
        case 230:
        case 240:
        case 253:
        case 338:
        case 363:
        case 387:
        case 409:
        case 435:
          goto LABEL_545;
        case 155:
        case 157:
        case 221:
        case 223:
        case 231:
        case 233:
        case 241:
        case 244:
        case 254:
        case 256:
        case 272:
        case 274:
        case 281:
        case 283:
        case 290:
        case 292:
        case 303:
        case 305:
        case 307:
        case 309:
        case 339:
        case 351:
        case 352:
        case 359:
        case 361:
        case 410:
        case 418:
        case 420:
          goto LABEL_31;
        case 156:
        case 222:
        case 232:
        case 242:
        case 255:
        case 273:
        case 282:
        case 291:
        case 304:
        case 306:
        case 337:
        case 353:
        case 360:
        case 421:
          v33 = *(v2 - 26);
          goto LABEL_292;
        case 158:
          v79 = *v2;
          v35 = v2 - 52;
          *(*(*(v2 - 52) + 20) + 152) = *v2;
          *(*(v2 - 52) + 20) = v79;
          goto LABEL_291;
        case 159:
          v506[0] = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
          if (!v506[0])
          {
            sub_100021304();
          }

          if (__strlcpy_chk() < 0x40)
          {
            free(*v2);
            v325 = v506[0];
            *(v506[0] + 19) = 0;
            *(v325 + 20) = v325;
            goto LABEL_1413;
          }

          sub_10001D73C("queue name '%s' too long (max %d chars)");
          goto LABEL_779;
        case 160:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 6)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 5;
          bzero(c, 0x410uLL);
          LOBYTE(v568) = *(v2 - 1664);
          v272 = *(v2 - 1663);
          if (v272 == 8 || v272 == 4)
          {
            v567 = *(v2 - 1663);
            v564 = *(v2 - 831);
            v565 = *(v2 - 830);
          }

          else if (v272 == 1)
          {
            v567 = 1;
            v583 = *(v2 - 1662);
          }

          HIBYTE(v568) = *(v2 - 364);
          v569 = *(v2 - 1248);
          v570 = *(v2 - 1247);
          v571 = *(v2 - 1246);
          v563 = *(v2 + 13);
          v554 = *(v2 + 31);
          v576 = *(v2 - 156);
          if (v2[13] && __strlcpy_chk() >= 0x40 || v2[14] && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1583;
          }

          v573 = *(v2 + 120);
          if (sub_10001DBA4(c, v2[10]))
          {
            goto LABEL_1549;
          }

          free(v2[10]);
          v349 = *(v2 + 24);
          v578 = *(v2 + 24);
          v579 = *(v2 + 25);
          v350 = v579;
          v351 = *(v2 + 24);
          if ((v351 & ~v579) != 0)
          {
            goto LABEL_1402;
          }

          v352 = v579 | v351;
          if (!v352 && !*(v2 - 22))
          {
            goto LABEL_1327;
          }

          v353 = *(v2 - 52);
          if (!v353)
          {
            goto LABEL_1327;
          }

          while (*v353 != 6)
          {
            v353 = *(v353 + 8);
            if (!v353)
            {
              if (v352)
              {
                sub_10001D73C("flags only apply to tcp");
              }

              if (!*(v2 - 22))
              {
                goto LABEL_1549;
              }

              goto LABEL_1133;
            }
          }

LABEL_1327:
          if (*(v2 + 10))
          {
            v584 = *(v2 + 10);
            v567 |= 0x2000u;
          }

          if (*(v2 + 11))
          {
            v584 = *(v2 + 11);
            v567 |= 0x4000u;
          }

          if (*(v2 + 12))
          {
            v584 = *(v2 + 12);
            v567 |= 0x8000u;
          }

          v575 = *(v2 + 56);
          v386 = v568;
          if (!v575 && !v568)
          {
            v575 = (*v2 & 8) == 0;
          }

          v499 = v22;
          v387 = v2[8];
          if (!v387)
          {
            LODWORD(v498) = 0;
            LOBYTE(v418) = 0;
            v417 = 1;
            goto LABEL_1474;
          }

          v388 = 0;
          v389 = 0;
          LODWORD(v498) = 0;
          while (1)
          {
            v390 = *v387;
            if (*v387 > 4)
            {
              break;
            }

            if (v390 > 1)
            {
              if (v390 == 2)
              {
                if (v498)
                {
                  sub_10001D73C("state option 'source-track' multiple definitions", v494);
                  goto LABEL_1262;
                }

                LODWORD(v498) = v387[4];
              }

              else
              {
                if (v390 != 3)
                {
                  if (v560)
                  {
                    sub_10001D73C("state option 'max-src-conn' multiple definitions", v494);
                    goto LABEL_1262;
                  }

                  if (!*(v387 + 1))
                  {
                    sub_10001D73C("'max-src-conn' must be > 0", v494);
                    goto LABEL_1262;
                  }

                  v560 = *(v387 + 1);
                  goto LABEL_1368;
                }

                if (v559)
                {
                  sub_10001D73C("state option 'max-src-states' multiple definitions", v494);
                  goto LABEL_1262;
                }

                if (!*(v387 + 1))
                {
                  sub_10001D73C("'max-src-states' must be > 0", v494);
                  goto LABEL_1262;
                }

                v559 = *(v387 + 1);
              }

              v392 = v567 | 0x20;
LABEL_1378:
              v567 = v392;
              goto LABEL_1379;
            }

            if (!v390)
            {
              if (v557)
              {
                sub_10001D73C("state option 'max' multiple definitions", v494);
                goto LABEL_1262;
              }

              v557 = *(v387 + 1);
              goto LABEL_1379;
            }

            if (v390 == 1)
            {
              if ((v567 & 0x10) != 0)
              {
                sub_10001D73C("state option 'sync' multiple definitions", v494);
                goto LABEL_1262;
              }

              v392 = v567 | 0x10;
              goto LABEL_1378;
            }

LABEL_1379:
            v394 = *(v387 + 5);
            free(v387);
            v387 = v394;
            if (!v394)
            {
              v386 = v568;
              v349 = v578;
              v350 = v579;
              v417 = v388 == 0;
              v418 = v389 != 0;
LABEL_1474:
              if (!v386 && !v349 && !v350 && !*(v2 + 18) && (*v2 & 1) == 0 && v575)
              {
                v578 = sub_10000BA8C("S");
                v579 = sub_10000BA8C("SA");
              }

              if (v557)
              {
                v419 = v417;
              }

              else
              {
                v419 = 0;
              }

              if (v419)
              {
                v555[11] = vmul_s32(vdup_n_s32(v557 / 0xA), 0xC00000006);
              }

              v420 = v567;
              if ((v567 & 0x20) != 0)
              {
                if (v498 == 2 && v558)
                {
                  sub_10001D73C("'max-src-nodes' is incompatible with 'source-track global'", v494);
                  goto LABEL_1262;
                }

                if (v498 == 2 && v560)
                {
                  sub_10001D73C("'max-src-conn' is incompatible with 'source-track global'", v494);
                  goto LABEL_1262;
                }

                if (v498 == 2 && v562)
                {
                  sub_10001D73C("'max-src-conn-rate' is incompatible with 'source-track global'", v494);
                  goto LABEL_1262;
                }

                if (v556 < v562)
                {
                  v556 = v562;
                }

                if (v498 == 3)
                {
                  v420 = v567 | 0x60;
                  v567 |= 0x60u;
                }
              }

              if (v575 != 0 && !v418)
              {
                v420 |= dword_100030C74;
                v567 = v420;
              }

              if (*(v2 + 18))
              {
                v567 = v420 | 2;
              }

              v581 = *(v2 + 19);
              v421 = *(v2 - 26);
              v422 = v576;
              if (v421 && !v576)
              {
                v422 = *(v421 + 80);
                v576 = *(v421 + 80);
                while (1)
                {
                  v421 = *(v421 + 104);
                  if (!v421)
                  {
                    break;
                  }

                  if (*(v421 + 80) != v422)
                  {
                    v422 = 0;
                    v576 = 0;
                    break;
                  }
                }
              }

              v423 = *(v2 - 24);
              if (v423)
              {
                v424 = v422 == 0;
              }

              else
              {
                v424 = 0;
              }

              if (v424)
              {
                v422 = *(v423 + 80);
                v576 = *(v423 + 80);
                while (1)
                {
                  v423 = *(v423 + 104);
                  if (!v423)
                  {
                    break;
                  }

                  if (*(v423 + 80) != v422)
                  {
                    v422 = 0;
                    v576 = 0;
                    break;
                  }
                }
              }

              v425 = *(v2 - 824);
              if (*(v2 - 824))
              {
                if (!HIBYTE(v568))
                {
                  sub_10001D73C("direction must be explicit with rules that specify routing", v494);
                  goto LABEL_1262;
                }

                v582 = *(v2 - 824);
                v551 = *(v2 - 823);
                v426 = *(v2 - 102);
                if (v426)
                {
                  *v501 = *v426;
                }
              }

              else
              {
                v425 = v582;
              }

              v446 = v2 - 104;
              if (v425 < 2)
              {
                goto LABEL_1829;
              }

              v447 = *v446;
              if (*v446 && !v422)
              {
                v448 = *(v447 + 80);
                v576 = v447[80];
                while (1)
                {
                  v447 = *(v447 + 13);
                  if (!v447)
                  {
                    break;
                  }

                  if (*(v447 + 80) != v448)
                  {
                    v576 = 0;
                    break;
                  }
                }
              }

              sub_10001F1D4(v2 - 104, &v576);
              v449 = *v446;
              if (!*v446)
              {
                sub_10001D73C("no routing address with matching address family found.", v494);
                goto LABEL_1262;
              }

              if ((v551 & 0xF) != 4)
              {
                if ((v551 & 0xF) == 0)
                {
                  if (*(v449 + 13) || (v469 = *(v449 + 40), v469 == 3) || v469 == 2 && ((v449[41] & 8) == 0 || (v449[strlen(*v446) - 1] - 48) >= 0xA))
                  {
                    v551 |= 4u;
                    goto LABEL_1575;
                  }
                }

                v470 = sub_10001F284(v449, "tables are only supported in round-robin routing pools");
                v22 = v499;
                if (!v470)
                {
                  v449 = *v446;
                  if ((v551 & 0xF) == 4)
                  {
                    goto LABEL_1576;
                  }

                  v471 = sub_10001F2F0(*v446, "interface (%s) is only supported in round-robin routing pools");
                  v22 = v499;
                  if (!v471)
                  {
LABEL_1575:
                    v449 = *v446;
                    goto LABEL_1576;
                  }
                }

                goto LABEL_1549;
              }

LABEL_1576:
              if (!*(v449 + 13) || (v551 & 0xF) == 4)
              {
LABEL_1829:
                if (v2[11])
                {
                  if (__strlcpy_chk() >= 0x40)
                  {
                    sub_10001D73C("rule qname too long (max %d chars)");
                    goto LABEL_1262;
                  }

                  free(v2[11]);
                }

                if (v2[12])
                {
                  if (__strlcpy_chk() >= 0x40)
                  {
                    sub_10001D73C("rule pqname too long (max %d chars)");
                    goto LABEL_1262;
                  }

                  free(v2[12]);
                }

                v467 = *(v2 + 121);
                if (v575)
                {
                  if (v467 <= 1)
                  {
                    LOBYTE(v467) = 1;
                  }

                  v586 = v467;
                }

                else if (*(v2 + 121))
                {
                  sub_10001D73C("extfilter requires keep state", v494);
                  goto LABEL_1262;
                }

                sub_10001DC08(c, *(v2 - 130), *v446, *(v2 - 52), *(v2 - 22), *(v2 - 26), *(v2 - 25), *(v2 - 24), *(v2 - 23), v2[1], v2[2], v2[4], "");
LABEL_1200:
                v22 = v499;
                goto LABEL_1413;
              }

              sub_10001D73C("r.rpool.opts must be PF_POOL_ROUNDROBIN", v494);
LABEL_1262:
              v22 = v499;
              goto LABEL_1549;
            }
          }

          if (v390 > 6)
          {
            switch(v390)
            {
              case 7:
                if (v546[0])
                {
                  sub_10001D73C("multiple 'overload' table definitions", v494);
                  goto LABEL_1262;
                }

                if (__strlcpy_chk() >= 0x20)
                {
                  sub_10001D73C("state option: strlcpy", v494);
                  goto LABEL_1262;
                }

                v585 = v387[4];
                break;
              case 8:
                if (v389)
                {
                  sub_10001D73C("state locking option: multiple definitions", v494);
                  goto LABEL_1262;
                }

                v567 |= *(v387 + 1);
                v389 = 1;
                break;
              case 9:
                v391 = *(v387 + 1);
                if (*(v502 + v391))
                {
                  sub_10001D73C("state timeout %s multiple definitions");
                  goto LABEL_1262;
                }

                if ((v391 & 0xFFFFFFFE) == 0x16)
                {
                  v388 = 1;
                }

                *(v502 + v391) = *(v387 + 2);
                break;
            }

            goto LABEL_1379;
          }

          if (v390 == 5)
          {
            if (v561)
            {
              sub_10001D73C("state option 'max-src-conn-rate' multiple definitions", v494);
              goto LABEL_1262;
            }

            v393 = *(v387 + 1);
            if (!v393 || !*(v387 + 2))
            {
              sub_10001D73C("'max-src-conn-rate' values must be > 0", v494);
              goto LABEL_1262;
            }

            if (v393 > 0x418937)
            {
              sub_10001D73C("'max-src-conn-rate' maximum rate must be < %u");
              goto LABEL_1262;
            }

            v561 = *(v387 + 1);
            v562 = *(v387 + 2);
          }

          else
          {
            if (v558)
            {
              sub_10001D73C("state option 'max-src-nodes' multiple definitions", v494);
              goto LABEL_1262;
            }

            if (!*(v387 + 1))
            {
              sub_10001D73C("'max-src-nodes' must be > 0", v494);
              goto LABEL_1262;
            }

            v558 = *(v387 + 1);
          }

LABEL_1368:
          v392 = v567 | 0x60;
          goto LABEL_1378;
        case 161:
          v264 = &xmmword_1000317D0;
          v265 = 0uLL;
LABEL_830:
          v264[6] = v265;
          v264[7] = v265;
          v264[4] = v265;
          v264[5] = v265;
LABEL_837:
          v264[2] = v265;
          v264[3] = v265;
LABEL_838:
          *v264 = v265;
          v264[1] = v265;
          goto LABEL_1413;
        case 162:
          v510 = xmmword_100031810;
          v511 = *&qword_100031820;
          v512 = *(&xmmword_100031828 + 8);
          v513 = *&qword_100031840;
          *v506 = xmmword_1000317D0;
          v507 = *&qword_1000317E0;
          v508 = xmmword_1000317F0;
          v509 = *&dword_100031800;
          goto LABEL_1413;
        case 163:
          *(&xmmword_100031828 + 8) = 0u;
          *&qword_100031840 = 0u;
          xmmword_100031810 = 0u;
          *&qword_100031820 = 0u;
          xmmword_1000317F0 = 0u;
          *&dword_100031800 = 0u;
          xmmword_1000317D0 = 0u;
          *&qword_1000317E0 = 0u;
          *v506 = 0u;
          v507 = 0u;
          v508 = 0u;
          v509 = 0u;
          v510 = 0u;
          v511 = 0u;
          v512 = 0u;
          v513 = 0u;
          goto LABEL_1413;
        case 166:
          if (*(&xmmword_1000317D0 + 1))
          {
            *(*(*v2 + 3) + 16) = *(&xmmword_1000317D0 + 1);
          }

          *(&xmmword_1000317D0 + 1) = *v2;
          goto LABEL_1413;
        case 167:
          if (qword_1000317E0)
          {
            *(*(*v2 + 3) + 16) = qword_1000317E0;
          }

          qword_1000317E0 = *v2;
          goto LABEL_1413;
        case 168:
          if ((xmmword_1000317D0 & 1) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 1;
            byte_1000317E8 |= *v2;
            byte_1000317E9 |= *(v2 + 1);
            word_1000317EA |= *(v2 + 1);
            word_1000317EC |= *(v2 + 2);
            goto LABEL_1413;
          }

          sub_10001D73C("flags cannot be redefined", v494);
          goto LABEL_1549;
        case 169:
          if ((xmmword_1000317D0 & 2) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 2;
            *&xmmword_1000317F0 = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("icmp-type cannot be redefined", v494);
          goto LABEL_1549;
        case 170:
          if ((xmmword_1000317D0 & 4) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 4;
            DWORD2(xmmword_1000317F0) = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("tos cannot be redefined", v494);
          goto LABEL_1549;
        case 171:
          if ((xmmword_1000317D0 & 0x20) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 0x20;
            HIDWORD(xmmword_1000317F0) = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("dscp cannot be redefined", v494);
          goto LABEL_1549;
        case 172:
          if ((xmmword_1000317D0 & 0x40) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 0x40;
            dword_100031800 = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("sc cannot be redefined", v494);
          goto LABEL_1549;
        case 173:
          if ((xmmword_1000317D0 & 8) == 0)
          {
            LODWORD(xmmword_1000317D0) = xmmword_1000317D0 | 8;
            dword_100031808 = *v2;
            *&xmmword_100031810 = v2[1];
            goto LABEL_1413;
          }

          sub_10001D73C("modulate or keep cannot be redefined", v494);
          goto LABEL_1549;
        case 174:
          DWORD2(xmmword_100031810) = 1;
          goto LABEL_1413;
        case 175:
          HIDWORD(xmmword_100031810) = 1;
          goto LABEL_1413;
        case 176:
          if (!qword_100031820)
          {
            qword_100031820 = *v2;
            goto LABEL_1413;
          }

LABEL_787:
          sub_10001D73C("label cannot be redefined", v494);
          goto LABEL_1549;
        case 177:
          if (xmmword_100031828)
          {
            sub_10001D73C("queue cannot be redefined", v494);
            goto LABEL_1549;
          }

          v92 = *v2;
          v93 = &xmmword_100031828;
LABEL_1065:
          *v93 = v92;
          goto LABEL_1413;
        case 178:
          qword_100031838 = *v2;
          goto LABEL_1413;
        case 179:
          qword_100031840 = *v2;
          byte_100031848 = *(v2 - 52);
          goto LABEL_1413;
        case 180:
          v267 = floor(*v2 * 4294967300.0 + 0.5);
          if (v267 >= 0.0 && v267 <= 4294967300.0)
          {
            v268 = v267;
            if (v267 <= 1)
            {
              v268 = 1;
            }

            dword_100031804 = v268;
            goto LABEL_1413;
          }

          sub_10001D73C("invalid probability: %lf");
          goto LABEL_1549;
        case 181:
          if (!*v2)
          {
            goto LABEL_859;
          }

          dword_10003184C = *v2;
          goto LABEL_1413;
        case 182:
          v80 = if_nametoindex(*v2);
          if (!v80)
          {
            goto LABEL_859;
          }

          dword_10003184C = v80;
          goto LABEL_1413;
        case 183:
          if ((xmmword_1000317D0 & 0x20) == 0)
          {
            byte_100031849 = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("extfilter cannot be redefined", v494);
          goto LABEL_1549;
        case 184:
          *c = 0;
          v57 = strtod(*v2, c);
          v58 = *c;
          v59 = **c;
          if (v59 == 37)
          {
            v57 = v57 * 0.01;
            ++*c;
            v59 = *(v58 + 1);
          }

          if (!v59)
          {
            free(*v2);
            v506[0] = *&v57;
            goto LABEL_1413;
          }

          sub_10001D73C("invalid probability: %s");
          goto LABEL_1547;
        case 185:
          *v506 = *v2;
          goto LABEL_1413;
        case 186:
        case 202:
        case 227:
        case 329:
        case 334:
        case 355:
        case 413:
          LODWORD(v506[0]) = 0;
          goto LABEL_1413;
        case 187:
          v271 = *(v2 + 2);
          LODWORD(v506[0]) = *v2;
          WORD2(v506[0]) = v271;
          v215 = 1;
LABEL_1055:
          LOBYTE(v506[0]) = v215;
          goto LABEL_1413;
        case 188:
          if (byte_100030C70)
          {
            v37 = 8;
          }

          else
          {
            v37 = 0;
          }

          goto LABEL_438;
        case 189:
          BYTE1(v506[0]) = 0;
          goto LABEL_524;
        case 190:
          BYTE1(v506[0]) = 1;
LABEL_524:
          *(v506 + 2) = 0;
          goto LABEL_1413;
        case 191:
          if (*(v2 - 26) >= 0x100)
          {
            sub_10001D73C("illegal ttl value %d");
            goto LABEL_1549;
          }

          BYTE1(v506[0]) = 1;
          WORD1(v506[0]) = *(v2 - 26);
LABEL_934:
          WORD2(v506[0]) = 0;
          goto LABEL_1413;
        case 192:
        case 193:
          v37 = 4;
          goto LABEL_438;
        case 194:
          BYTE1(v506[0]) = 4;
          WORD1(v506[0]) = *(v2 - 26);
          v71 = 771;
          goto LABEL_1158;
        case 195:
          BYTE1(v506[0]) = 4;
          WORD1(v506[0]) = 771;
          goto LABEL_775;
        case 196:
          BYTE1(v506[0]) = 4;
          WORD1(v506[0]) = *(v2 - 78);
LABEL_775:
          WORD2(v506[0]) = *(v2 - 26);
          goto LABEL_1413;
        case 197:
          v37 = 8;
LABEL_438:
          BYTE1(v506[0]) = v37;
          *(v506 + 2) = 17040131;
          goto LABEL_1413;
        case 198:
          v158 = *v2;
          v159 = 2;
          goto LABEL_641;
        case 199:
          if (*v2 > 0xFF)
          {
            goto LABEL_271;
          }

          v33 = *v2 | 0x300;
          goto LABEL_292;
        case 200:
          v158 = *v2;
          v159 = 30;
LABEL_641:
          v230 = sub_10001F380(v158, v159);
          v506[0] = v230;
          free(*v2);
          if (!v230)
          {
            goto LABEL_1549;
          }

          goto LABEL_1413;
        case 201:
          if (*v2 > 0xFF)
          {
LABEL_271:
            sub_10001D73C("invalid icmp code %lu");
            goto LABEL_1549;
          }

          v33 = *v2 | 0x100;
          goto LABEL_292;
        case 203:
          v39 = 1;
          goto LABEL_856;
        case 204:
        case 228:
          v39 = 2;
          goto LABEL_856;
        case 205:
          goto LABEL_704;
        case 206:
          goto LABEL_739;
        case 207:
          LOWORD(v506[0]) = 0;
          goto LABEL_704;
        case 208:
          LOWORD(v506[0]) = *v2;
LABEL_704:
          BYTE2(v506[0]) = 0;
          goto LABEL_1413;
        case 209:
          BYTE2(v506[0]) = 1;
          goto LABEL_702;
        case 210:
          v74 = *(v2 - 104);
          goto LABEL_738;
        case 211:
          v74 = *v2;
LABEL_738:
          LOWORD(v506[0]) = v74;
LABEL_739:
          BYTE2(v506[0]) = 1;
          goto LABEL_1413;
        case 212:
          v38 = 1;
          goto LABEL_736;
        case 213:
          LOBYTE(v506[0]) = *(v2 - 208) | 1;
          v67 = *(v2 - 207);
          goto LABEL_604;
        case 214:
          v38 = *v2;
          BYTE2(v506[0]) = *(v2 + 2);
          goto LABEL_736;
        case 215:
          LOBYTE(v506[0]) = *v2 | *(v2 - 416);
          BYTE1(v506[0]) = *(v2 + 1);
          if (BYTE1(v506[0]))
          {
            goto LABEL_1413;
          }

          v67 = *(v2 - 415);
          goto LABEL_604;
        case 216:
          v38 = 2;
          goto LABEL_736;
        case 217:
        case 218:
          v38 = 4;
LABEL_736:
          LOWORD(v506[0]) = v38;
          goto LABEL_1413;
        case 219:
          *c = 0;
          LOBYTE(v506[0]) = 0;
          v176 = *v2;
          if (!strncmp(*v2, "pflog", 5uLL))
          {
            v333 = strtonum(v176 + 5, 0, 255, c);
            if (!*c)
            {
              free(*v2);
              BYTE1(v506[0]) = v333;
              goto LABEL_1413;
            }

            v495 = *c;
            sub_10001D73C("%s: %s");
          }

          else
          {
            sub_10001D73C("%s: should be a pflog interface");
          }

          goto LABEL_1547;
        case 224:
          v82 = *v2;
          v35 = v2 - 52;
          *(*(*(v2 - 52) + 4) + 24) = *v2;
          *(*(v2 - 52) + 4) = v82;
          goto LABEL_291;
        case 225:
          v506[0] = *v2;
          v506[0][16] = *(v2 - 26);
          goto LABEL_1413;
        case 226:
          v506[0] = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
          if (!v506[0])
          {
            sub_1000212E8();
          }

          v246 = __strlcpy_chk();
          v247 = *v2;
          if (v246 <= 0xF)
          {
            v323 = sub_10000BF5C(v247);
            if (v323)
            {
              *(v506[0] + 5) = *(v323 + 96);
            }

            free(*v2);
            v324 = v506[0];
            v506[0][16] = 0;
            *(v324 + 3) = 0;
            *(v324 + 4) = v324;
            goto LABEL_1413;
          }

          free(v247);
          v248 = v506[0];
          goto LABEL_1203;
        case 229:
          v39 = 30;
          goto LABEL_856;
        case 234:
        case 275:
        case 308:
        case 310:
          v34 = *v2;
          v35 = v2 - 52;
          *(*(*(v2 - 52) + 2) + 8) = *v2;
          *(*(v2 - 52) + 2) = v34;
          goto LABEL_291;
        case 235:
          v249 = *v2;
          if (!*v2)
          {
            sub_10001D73C("proto 0 cannot be used", v494);
            goto LABEL_1549;
          }

          v250 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
          v506[0] = v250;
          if (!v250)
          {
            sub_1000212CC();
          }

          *v250 = v249;
          goto LABEL_1219;
        case 236:
          v110 = getprotobyname(*v2);
          if (!v110)
          {
            sub_10001D73C("unknown protocol %s");
            goto LABEL_1547;
          }

          p_proto = v110->p_proto;
          goto LABEL_1151;
        case 237:
          if (*v2 < 0x100)
          {
            goto LABEL_1413;
          }

          sub_10001D73C("protocol outside range", v494);
          goto LABEL_1549;
        case 238:
          *&v508 = 0;
          v60 = 0uLL;
LABEL_186:
          *v506 = v60;
          v507 = v60;
          goto LABEL_1413;
        case 239:
          *v506 = *(v2 - 26);
          *&v508 = *(v2 - 26);
          v507 = *v2;
          goto LABEL_1413;
        case 243:
          v197 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300408DF105C4uLL);
          v506[0] = v197;
          if (!v197)
          {
            sub_1000212B0();
          }

          *v197 = *v2;
          *(v506[0] + 3) = v506[0];
          goto LABEL_1413;
        case 245:
        case 284:
        case 293:
          v36 = *v2;
          v35 = v2 - 52;
          *(*(*(v2 - 52) + 3) + 16) = *v2;
          *(*(v2 - 52) + 3) = v36;
          goto LABEL_291;
        case 246:
        case 248:
          v506[1] = 0;
          goto LABEL_545;
        case 247:
          goto LABEL_215;
        case 249:
          v95 = *v2;
          if (!*v2)
          {
            goto LABEL_215;
          }

          while (v95[40] != 5)
          {
            v95 = *(v95 + 13);
            if (!v95)
            {
LABEL_215:
              *v506 = *v2;
              goto LABEL_1413;
            }
          }

          goto LABEL_1209;
        case 250:
          v506[0] = *v2;
          v506[1] = 0;
          goto LABEL_1413;
        case 251:
          v506[0] = *(v2 - 52);
          goto LABEL_785;
        case 252:
          v506[0] = 0;
          goto LABEL_785;
        case 257:
          v166 = v2 - 52;
          v266 = *(v2 - 52);
          if (*v2)
          {
            if (v266)
            {
              *(*(v266 + 112) + 104) = *v2;
              goto LABEL_783;
            }

            v506[0] = *v2;
          }

          else
          {
            v506[0] = *(v2 - 52);
          }

          goto LABEL_1413;
        case 258:
          v33 = *v2;
          if (*v2)
          {
            do
            {
              *(v33 + 81) = *(v2 - 26);
              v33 = *(v33 + 104);
            }

            while (v33);
LABEL_31:
            v33 = *v2;
          }

          goto LABEL_292;
        case 259:
          v94 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v506[0] = v94;
          if (!v94)
          {
            sub_100021294();
          }

          v94[40] = 1;
          goto LABEL_289;
        case 260:
          v94 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v506[0] = v94;
          if (!v94)
          {
            sub_100021294();
          }

          v94[40] = 5;
LABEL_289:
          *(v94 + 13) = 0;
          v94[81] = *(v2 - 26);
          *(v94 + 14) = v94;
          goto LABEL_1413;
        case 261:
          v101 = sub_10000C294(*v2);
          v506[0] = v101;
          v102 = *v2;
          goto LABEL_228;
        case 262:
          v499 = v22;
          v252 = (v2 - 52);
          v253 = sub_10000C294(*(v2 - 52));
          if (!v253 || (v254 = v253, (v255 = sub_10000C294(*v2)) == 0))
          {
            free(*v252);
            free(*v2);
            sub_10001D73C("could not parse host specification");
            goto LABEL_1262;
          }

          v256 = v255;
          if (v254[5].u8[0] != v255[5].u8[0] || v254[2].i8[8] || v255[2].i8[8] || ((v257 = sub_100000ACC(v254[1].i64), v254[5].i8[0] != 2) ? (v258 = 128) : (v258 = 32), v257 != v258 || ((v259 = sub_100000ACC(v256[1].i64), v256[5].i8[0] != 2) ? (v260 = 128) : (v260 = 32), v259 != v260 || v254[6].i64[1] || v254[5].i8[1] || v256[6].i64[1] || v256[5].i8[1])))
          {
            free(v254);
            free(v256);
            free(*v252);
            free(*v2);
            sub_10001D73C("invalid address range", v494);
            goto LABEL_1262;
          }

          v254[1] = *v256;
          v254[2].i8[8] = 6;
          v506[0] = v254;
          free(v256);
          free(*v252);
          free(*v2);
          goto LABEL_1200;
        case 263:
          *c = 0;
          if (asprintf(c, "%s/%lld", *(v2 - 52), *v2) == -1)
          {
            sub_100021278();
          }

          free(*(v2 - 52));
          goto LABEL_227;
        case 264:
          *c = 0;
          if (asprintf(c, "%lld/%lld", *(v2 - 52), *v2) == -1)
          {
            sub_100021278();
          }

LABEL_227:
          v101 = sub_10000C294(*c);
          v506[0] = v101;
          v102 = *c;
LABEL_228:
          free(v102);
          if (v101)
          {
            goto LABEL_1413;
          }

          sub_10001D73C("could not parse host specification", v494);
          goto LABEL_1549;
        case 266:
          if (*v2 <= 0x80)
          {
            v293 = *(v2 - 52);
            for (v506[0] = v293; v293; v293 = v293[6].i64[1])
            {
              v30 = sub_10000BB08(v293, *v2, v30, v31);
            }

            goto LABEL_1413;
          }

          sub_10001D73C("bit number too big", v494);
          goto LABEL_1549;
        case 267:
          if (strlen(*(v2 - 26)) >= 0x20)
          {
            sub_10001D73C("table name '%s' too long");
LABEL_1112:
            v56 = *(v2 - 26);
LABEL_1548:
            free(v56);
            goto LABEL_1549;
          }

          v297 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v506[0] = v297;
          if (!v297)
          {
            sub_10002125C();
          }

          v297[40] = 3;
          if (__strlcpy_chk() >= 0x20)
          {
            sub_100021240();
          }

          free(*(v2 - 26));
LABEL_929:
          v298 = v506[0];
          *(v506[0] + 13) = 0;
          *(v298 + 14) = v298;
LABEL_1413:
          v398 = &v2[-26 * v22];
          v4 -= 2 * v22;
          v2 = v398 + 26;
          *(v398 + 13) = *v506;
          v399 = v507;
          v400 = v508;
          v401 = v510;
          *(v398 + 16) = v509;
          *(v398 + 17) = v401;
          *(v398 + 14) = v399;
          *(v398 + 15) = v400;
          v402 = v511;
          v403 = v512;
          v404 = v514;
          *(v398 + 20) = v513;
          *(v398 + 21) = v404;
          *(v398 + 18) = v402;
          *(v398 + 19) = v403;
          v405 = v515;
          v406 = v516;
          v407 = v518;
          *(v398 + 24) = v517;
          *(v398 + 25) = v407;
          *(v398 + 22) = v405;
          *(v398 + 23) = v406;
          v408 = word_100029A52[v21] - 147;
          v409 = *v4 + word_100029DC8[v408];
          if (v409 <= 0x345 && word_10002856E[v409] == *v4)
          {
            v13 = word_100028BFA[v409];
          }

          else
          {
            v13 = word_100029F1A[v408];
          }

          v1 = &unk_100031000;
          goto LABEL_1561;
        case 268:
          v184 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v506[0] = v184;
          if (!v184)
          {
            sub_10002121C(v2);
          }

          v184[40] = 4;
          if (__strlcpy_chk() >= 0x20)
          {
            sub_10001D73C("route label too long, max %u chars");
LABEL_779:
            free(*v2);
            v56 = v506[0];
            goto LABEL_1548;
          }

          v322 = v506[0];
          *(v506[0] + 13) = 0;
          *(v322 + 14) = v322;
          goto LABEL_1152;
        case 270:
          *c = 0;
          if (sub_10001F428(*v2, c) == -1)
          {
            sub_10001D73C("%s is not a number");
            goto LABEL_1547;
          }

          p_proto = *c;
          goto LABEL_1151;
        case 271:
          v118 = *(v2 - 26);
          v119 = *v118;
          v499 = v22;
          if (v119 < 0)
          {
            v120 = __maskrune(v119, 0x100uLL);
          }

          else
          {
            v120 = _DefaultRuneLocale.__runetype[v119] & 0x100;
          }

          if (!v120)
          {
            sub_10001D73C("invalid interface name '%s'", v118);
            v78 = v118;
            goto LABEL_1261;
          }

          v328 = *(v2 - 26);
          v329 = strrchr(v328, 58);
          if (v329)
          {
            v330 = v329;
            v331 = 0;
            do
            {
              if (!strcmp(v330 + 1, "network"))
              {
                v332 = 1;
              }

              else if (!strcmp(v330 + 1, "broadcast"))
              {
                v332 = 2;
              }

              else if (!strcmp(v330 + 1, "peer"))
              {
                v332 = 4;
              }

              else
              {
                if (v330[1] != 48 || v330[2])
                {
                  sub_10001D73C("interface %s has bad modifier", v328);
                  v78 = v118;
                  goto LABEL_1261;
                }

                v332 = 8;
              }

              v331 |= v332;
              *v330 = 0;
              v328 = *(v2 - 26);
              v330 = strrchr(v328, 58);
            }

            while (v330);
          }

          else
          {
            v331 = 0;
          }

          if ((v331 & (v331 - 1) & 6) != 0)
          {
            free(v118);
            sub_10001D73C("illegal combination of interface modifiers", v494);
            goto LABEL_1262;
          }

          v360 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v506[0] = v360;
          v22 = v499;
          if (!v360)
          {
            sub_100020A18();
          }

          v360[5].i8[0] = 0;
          sub_10000BB08(v360, 0x80u, v361, v362);
          v363 = v506[0];
          v506[0][40] = 2;
          v363[41] = v331;
          v364 = __strlcpy_chk();
          free(v118);
          v248 = v506[0];
          if (v364 < 0x10)
          {
            *(v506[0] + 13) = 0;
            *(v248 + 14) = v248;
            goto LABEL_1413;
          }

          goto LABEL_1203;
        case 276:
          v191 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
          v506[0] = v191;
          if (!v191)
          {
            sub_100021200();
          }

          *v191 = *v2;
          *(v506[0] + 1) = *(v2 + 1);
          v192 = v506[0];
          if (*(v2 + 2))
          {
            LOBYTE(v193) = 9;
          }

          else
          {
            LOBYTE(v193) = 2;
          }

          goto LABEL_1218;
        case 277:
          if (*(v2 + 2))
          {
            goto LABEL_349;
          }

          v83 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
          v506[0] = v83;
          if (!v83)
          {
            sub_100021200();
          }

          *v83 = *v2;
          v84 = *(v2 + 1);
          goto LABEL_1217;
        case 278:
          if (*(v2 - 102) || *(v2 + 2))
          {
LABEL_349:
            sub_10001D73C("':' cannot be used with an other port operator", v494);
            goto LABEL_1549;
          }

          v366 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
          v506[0] = v366;
          if (!v366)
          {
            sub_100021200();
          }

          *v366 = *(v2 - 104);
          v84 = *v2;
LABEL_1217:
          *(v506[0] + 1) = v84;
          v193 = *(v2 - 52);
          v192 = v506[0];
LABEL_1218:
          v192[4] = v193;
          goto LABEL_1219;
        case 279:
          v85 = *v2;
          v86 = strchr(*v2, 58);
          if (v86)
          {
            v87 = v86;
            *v86 = 0;
            v88 = sub_10001F4B4(*v2);
            if (v88 == -1)
            {
              goto LABEL_1547;
            }

            v89 = v88;
            v90 = sub_10001F4B4(v87 + 1);
            if (v90 == -1)
            {
              goto LABEL_1547;
            }

            v506[0] = __PAIR64__(v90, v89);
            LODWORD(v506[1]) = 9;
          }

          else
          {
            LODWORD(v506[0]) = sub_10001F4B4(v85);
            if (LODWORD(v506[0]) == -1)
            {
              goto LABEL_1547;
            }

            HIDWORD(v506[0]) = 0;
            LODWORD(v506[1]) = 0;
          }

          goto LABEL_1152;
        case 280:
          v196 = *v2;
          if (*v2 < 0x10000)
          {
            goto LABEL_713;
          }

          sub_10001D73C("illegal port value %lu");
          goto LABEL_1549;
        case 285:
          v204 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v506[0] = v204;
          if (!v204)
          {
            sub_1000211E4();
          }

          goto LABEL_607;
        case 286:
          if (*v2 == 0x7FFFFFFF && (*(v2 - 26) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_553;
          }

          v123 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v506[0] = v123;
          if (!v123)
          {
            sub_1000211E4();
          }

          goto LABEL_552;
        case 287:
          v122 = v2 - 52;
          if (*(v2 - 52) == 0x7FFFFFFF || *v2 == 0x7FFFFFFF)
          {
LABEL_553:
            sub_10001D73C("user unknown requires operator = or !=", v494);
            goto LABEL_1549;
          }

          v123 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v506[0] = v123;
          if (!v123)
          {
            sub_1000211E4();
          }

          goto LABEL_1114;
        case 288:
          v227 = *v2;
          if (!strcmp(*v2, "unknown"))
          {
            goto LABEL_873;
          }

          v202 = getpwnam(v227);
          if (v202)
          {
            goto LABEL_630;
          }

          sub_10001D73C("unknown user %s");
          goto LABEL_1547;
        case 289:
          v33 = *v2;
          if (*v2 < 0x7FFFFFFF)
          {
            goto LABEL_292;
          }

          sub_10001D73C("illegal uid value %lu");
          goto LABEL_1549;
        case 294:
          v204 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v506[0] = v204;
          if (!v204)
          {
            sub_1000211C8();
          }

LABEL_607:
          *v204 = *v2;
          *(v506[0] + 1) = *v2;
          v217 = v506[0];
          v506[0][8] = 2;
          *(v217 + 2) = 0;
          *(v217 + 3) = v217;
          goto LABEL_1413;
        case 295:
          if (*v2 == 0x7FFFFFFF && (*(v2 - 26) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_576;
          }

          v123 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v506[0] = v123;
          if (!v123)
          {
            sub_1000211C8();
          }

LABEL_552:
          v203 = *v2;
          goto LABEL_1115;
        case 296:
          v122 = v2 - 52;
          if (*(v2 - 52) == 0x7FFFFFFF || *v2 == 0x7FFFFFFF)
          {
LABEL_576:
            sub_10001D73C("group unknown requires operator = or !=", v494);
            goto LABEL_1549;
          }

          v123 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
          v506[0] = v123;
          if (!v123)
          {
            sub_1000211C8();
          }

LABEL_1114:
          v203 = *v122;
LABEL_1115:
          *v123 = v203;
          *(v506[0] + 1) = *v2;
          v348 = v506[0];
          v506[0][8] = *(v2 - 52);
          *(v348 + 2) = 0;
          *(v348 + 3) = v348;
          goto LABEL_1413;
        case 297:
          v201 = *v2;
          if (!strcmp(*v2, "unknown"))
          {
LABEL_873:
            v228 = 0x7FFFFFFFLL;
          }

          else
          {
            v202 = getgrnam(v201);
            if (!v202)
            {
              sub_10001D73C("unknown group %s");
              goto LABEL_1547;
            }

LABEL_630:
            v228 = v202[4];
          }

          goto LABEL_1410;
        case 298:
          v33 = *v2;
          if (*v2 < 0x7FFFFFFF)
          {
            goto LABEL_292;
          }

          sub_10001D73C("illegal gid value %lu");
          goto LABEL_1549;
        case 299:
          v116 = sub_10000BA8C(*v2);
          if ((v116 & 0x80000000) == 0)
          {
            free(*v2);
            LOBYTE(v506[0]) = v116;
            goto LABEL_1413;
          }

          sub_10001D73C("bad flags %s");
          goto LABEL_1547;
        case 300:
          LOBYTE(v506[0]) = *(v2 - 416);
          goto LABEL_603;
        case 301:
          LOBYTE(v506[0]) = 0;
LABEL_603:
          v67 = *v2;
LABEL_604:
          BYTE1(v506[0]) = v67;
          goto LABEL_1413;
        case 302:
LABEL_702:
          LOWORD(v506[0]) = 0;
          goto LABEL_1413;
        case 311:
          v117 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v506[0] = v117;
          if (!v117)
          {
            sub_1000211AC();
          }

          v117[1] = *v2;
          *v506[0] = 0;
          goto LABEL_299;
        case 312:
          v97 = sub_1000099DC((*(v2 - 52) - 1), *v2, 2);
          if (v97)
          {
            free(*v2);
            v98 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
            v506[0] = v98;
            if (!v98)
            {
              sub_1000211AC();
            }

            v98[1] = *(v2 - 52);
            *v506[0] = *(v97 + 9) + 1;
            v506[0][2] = 1;
            v99 = v506[0];
            *(v506[0] + 1) = 0;
            *(v99 + 2) = v99;
            goto LABEL_1413;
          }

          sub_10001D73C("unknown icmp-code %s");
          goto LABEL_1547;
        case 313:
          if (*v2 >= 0x100)
          {
            goto LABEL_273;
          }

          v105 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v506[0] = v105;
          if (!v105)
          {
            sub_1000211AC();
          }

          v105[1] = *(v2 - 52);
          *v506[0] = *v2 + 1;
LABEL_299:
          v506[0][2] = 1;
          goto LABEL_1219;
        case 314:
          v220 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v506[0] = v220;
          if (!v220)
          {
            sub_1000211AC();
          }

          v220[1] = *v2;
          *v506[0] = 0;
          goto LABEL_905;
        case 315:
          v224 = sub_1000099DC((*(v2 - 52) - 1), *v2, 30);
          if (v224)
          {
            free(*v2);
            v225 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
            v506[0] = v225;
            if (!v225)
            {
              sub_1000211AC();
            }

            v225[1] = *(v2 - 52);
            v226 = *(v224 + 9);
LABEL_904:
            *v506[0] = v226 + 1;
LABEL_905:
            v506[0][2] = 58;
LABEL_1219:
            v367 = v506[0];
            *(v506[0] + 1) = 0;
            *(v367 + 2) = v367;
            goto LABEL_1413;
          }

          sub_10001D73C("unknown icmp6-code %s");
          goto LABEL_1547;
        case 316:
          if (*v2 >= 0x100)
          {
LABEL_273:
            sub_10001D73C("illegal icmp-code %lu");
            goto LABEL_1549;
          }

          v294 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
          v506[0] = v294;
          if (!v294)
          {
            sub_1000211AC();
          }

          v294[1] = *(v2 - 52);
          v226 = *v2;
          goto LABEL_904;
        case 317:
          v229 = sub_1000098D8(*v2, 2);
          if (v229)
          {
            goto LABEL_715;
          }

          sub_10001D73C("unknown icmp-type %s");
          goto LABEL_1547;
        case 318:
          v177 = *v2;
          if (*v2 < 0x100)
          {
            goto LABEL_685;
          }

          sub_10001D73C("illegal icmp-type %lu");
          goto LABEL_1549;
        case 319:
          v229 = sub_1000098D8(*v2, 30);
          if (!v229)
          {
            sub_10001D73C("unknown icmp6-type %s");
            goto LABEL_1547;
          }

LABEL_715:
          v228 = *(v229 + 8) + 1;
          goto LABEL_1410;
        case 320:
          v177 = *v2;
          if (*v2 >= 0x100)
          {
            sub_10001D73C("illegal icmp6-type %lu");
            goto LABEL_1549;
          }

LABEL_685:
          v33 = (v177 + 1);
          goto LABEL_292;
        case 321:
          v243 = *v2;
          if (!strcmp(*v2, "lowdelay"))
          {
            v244 = 16;
          }

          else if (!strcmp(v243, "throughput"))
          {
            v244 = 8;
          }

          else if (!strcmp(v243, "reliability"))
          {
            v244 = 4;
          }

          else
          {
            if (*v243 != 48 || v243[1] != 120)
            {
              v506[0] = 0;
LABEL_1213:
              sub_10001D73C("illegal tos value %s");
              goto LABEL_1547;
            }

            v244 = strtoul(v243, 0, 16);
          }

          v506[0] = v244;
          if (!v244 || v244 >= 256)
          {
            goto LABEL_1213;
          }

          goto LABEL_1411;
        case 322:
          v103 = *v2;
          v506[0] = v103;
          if (v103 && v103 < 256)
          {
            goto LABEL_1413;
          }

          sub_10001D73C("illegal tos value %s");
          goto LABEL_1549;
        case 323:
          v232 = *v2;
          v233 = **v2;
          if (v233 != 69 || v232[1] != 70 || v232[2])
          {
            if (!strcmp(*v2, "af11"))
            {
              v341 = 40;
            }

            else if (!strcmp(v232, "af12"))
            {
              v341 = 48;
            }

            else
            {
              if (strcmp(v232, "af13"))
              {
                if (!strcmp(v232, "af21"))
                {
                  v369 = 72;
                }

                else if (!strcmp(v232, "af22"))
                {
                  v369 = 80;
                }

                else if (!strcmp(v232, "af23"))
                {
                  v369 = 88;
                }

                else if (!strcmp(v232, "af31"))
                {
                  v369 = 104;
                }

                else if (!strcmp(v232, "af32"))
                {
                  v369 = 112;
                }

                else if (!strcmp(v232, "af33"))
                {
                  v369 = 120;
                }

                else
                {
                  if (strcmp(v232, "af41"))
                  {
                    if (!strcmp(v232, "af42"))
                    {
                      v450 = 144;
                    }

                    else
                    {
                      if (strcmp(v232, "af43"))
                      {
                        if (v233 == 48 && v232[1] == 120)
                        {
                          v234 = v232;
                          v235 = 16;
                        }

                        else
                        {
                          v234 = v232;
                          v235 = 10;
                        }

                        v341 = strtoul(v234, 0, v235);
                        v506[0] = v341;
                        if (!v341)
                        {
                          goto LABEL_1546;
                        }

LABEL_1223:
                        if (v341 >= 65)
                        {
                          goto LABEL_1546;
                        }

LABEL_1411:
                        v69 = *v2;
                        goto LABEL_1412;
                      }

                      v450 = 152;
                    }

                    v506[0] = v450;
LABEL_1546:
                    sub_10001D73C("illegal dscp value %s");
                    goto LABEL_1547;
                  }

                  v369 = 136;
                }

LABEL_1545:
                v506[0] = v369;
                goto LABEL_1546;
              }

              v341 = 56;
            }

            v506[0] = v341;
            goto LABEL_1223;
          }

          v369 = 184;
          goto LABEL_1545;
        case 324:
          v185 = *v2;
          v186 = **v2;
          if (v186 == 98)
          {
            if (v185[1] == 101 && !v185[2])
            {
              v228 = 16;
              goto LABEL_1410;
            }

            if (strcmp(*v2, "bk_sys"))
            {
              if (v185[1] != 107 || v185[2])
              {
                v499 = v22;
LABEL_1070:
                v335 = 0;
                goto LABEL_1071;
              }

              v228 = 18;
LABEL_1410:
              v506[0] = v228;
              goto LABEL_1411;
            }
          }

          else if (strcmp(*v2, "bk_sys"))
          {
            v499 = v22;
            if (v186 != 114)
            {
              goto LABEL_1070;
            }

            if (v185[1] != 100)
            {
              v335 = 1;
LABEL_1071:
              if (strcmp(v185, "oam"))
              {
                if (v186 == 97 && v185[1] == 118)
                {
                  if (!v185[2])
                  {
                    v365 = 21;
                    goto LABEL_1461;
                  }

                  if (!v335)
                  {
                    goto LABEL_1181;
                  }
                }

                else if ((v335 & 1) == 0)
                {
LABEL_1176:
                  if (v186 != 118)
                  {
LABEL_1181:
                    if (strcmp(v185, "ctl"))
                    {
                      v506[0] = 0;
                      sub_10001D73C("illegal sc value %s", *v2);
                      v78 = *v2;
LABEL_1261:
                      free(v78);
                      goto LABEL_1262;
                    }

                    v365 = 25;
                    goto LABEL_1461;
                  }

                  if (v185[1] == 105 && !v185[2])
                  {
                    v365 = 23;
                  }

                  else
                  {
                    if (v185[1] != 111 || v185[2])
                    {
                      goto LABEL_1181;
                    }

                    v365 = 24;
                  }

LABEL_1461:
                  v506[0] = v365;
                  v22 = v499;
                  goto LABEL_1411;
                }

LABEL_1174:
                if (v185[1] == 118 && !v185[2])
                {
                  v365 = 22;
                  goto LABEL_1461;
                }

                goto LABEL_1176;
              }

LABEL_1204:
              v365 = 20;
              goto LABEL_1461;
            }

            if (v185[2])
            {
              if (strcmp(v185, "oam"))
              {
                goto LABEL_1174;
              }

              goto LABEL_1204;
            }

            v228 = 19;
            goto LABEL_1410;
          }

          v228 = 17;
          goto LABEL_1410;
        case 325:
        case 335:
        case 356:
LABEL_61:
          v39 = 1;
          goto LABEL_856;
        case 326:
        case 437:
          v39 = 2;
          goto LABEL_856;
        case 327:
        case 336:
        case 438:
LABEL_62:
          v39 = 3;
          goto LABEL_856;
        case 328:
          v39 = 0x10000;
          goto LABEL_856;
        case 330:
        case 411:
          LODWORD(v506[0]) = 0;
          v506[1] = 0;
          goto LABEL_1413;
        case 331:
          v107 = 1;
          goto LABEL_621;
        case 332:
          v107 = 2;
          goto LABEL_621;
        case 333:
          v107 = 3;
LABEL_621:
          LODWORD(v506[0]) = v107;
          goto LABEL_785;
        case 340:
          v104 = *v2;
          v35 = v2 - 52;
          *(*(*(v2 - 52) + 6) + 40) = *v2;
          *(*(v2 - 52) + 6) = v104;
          goto LABEL_291;
        case 341:
          if (*(v2 + 1))
          {
            goto LABEL_917;
          }

          v139 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v139;
          if (!v139)
          {
            sub_100021174();
          }

          *v139 = 0;
          goto LABEL_421;
        case 342:
          v231 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v231;
          if (!v231)
          {
            sub_100021174();
          }

          *v231 = 1;
          goto LABEL_914;
        case 343:
          if (*(v2 + 1))
          {
            goto LABEL_917;
          }

          v111 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v111;
          if (!v111)
          {
            sub_100021174();
          }

          v112 = 3;
          goto LABEL_420;
        case 344:
          if (*(v2 + 1))
          {
            goto LABEL_917;
          }

          v111 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v111;
          if (!v111)
          {
            sub_100021174();
          }

          v112 = 4;
          goto LABEL_420;
        case 345:
          if (*(v2 - 103) || *(v2 + 1))
          {
            goto LABEL_917;
          }

          v181 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v181;
          if (!v181)
          {
            sub_100021174();
          }

          *v181 = 5;
          *(v506[0] + 1) = *(v2 - 52);
          v182 = v506[0];
          *(v506[0] + 2) = *v2;
          *(v182 + 5) = 0;
          *(v182 + 6) = v182;
          goto LABEL_1413;
        case 346:
          v137 = (v2 - 52);
          if (strlen(*(v2 - 52)) >= 0x20)
          {
            sub_10001D73C("table name '%s' too long");
LABEL_399:
            v56 = *v137;
            goto LABEL_1548;
          }

          v506[0] = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          if (!v506[0])
          {
            sub_100021174();
          }

          if (__strlcpy_chk() >= 0x20)
          {
            sub_100021190();
          }

          free(*v137);
          *v506[0] = 7;
LABEL_913:
          v506[0][4] = *v2;
LABEL_914:
          v296 = v506[0];
          *(v506[0] + 5) = 0;
          *(v296 + 6) = v296;
          goto LABEL_1413;
        case 347:
          if (*(v2 + 1))
          {
            goto LABEL_917;
          }

          v111 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v111;
          if (!v111)
          {
            sub_100021174();
          }

          v112 = 6;
LABEL_420:
          *v111 = v112;
LABEL_421:
          *(v506[0] + 1) = *v2;
          goto LABEL_914;
        case 348:
          v183 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v183;
          if (!v183)
          {
            sub_100021174();
          }

          *v183 = 2;
          goto LABEL_913;
        case 349:
          v179 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
          v506[0] = v179;
          if (!v179)
          {
            sub_100021174();
          }

          *v179 = 8;
          *(v506[0] + 1) = *v2;
          goto LABEL_914;
        case 350:
          if (*(v2 + 1))
          {
            goto LABEL_917;
          }

          v499 = v22;
          v160 = "tcp.first";
          v161 = *(v2 - 26);
          if (!"tcp.first")
          {
            goto LABEL_1087;
          }

          v162 = &off_10002C498;
          if (!strcmp("tcp.first", *(v2 - 26)))
          {
            goto LABEL_394;
          }

          do
          {
            v160 = v162[2];
            if (!v160)
            {
LABEL_1087:
              sub_10001D73C("illegal timeout name %s");
              goto LABEL_1260;
            }

            v163 = strcmp(v162[2], v161);
            v162 += 2;
          }

          while (v163);
LABEL_394:
          if (strchr(v160, 46))
          {
            free(v161);
            v164 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004009A20EE3uLL);
            v506[0] = v164;
            if (!v164)
            {
              sub_100021174();
            }

            *v164 = 9;
            *(v506[0] + 1) = *(v162 + 2);
            v165 = v506[0];
            *(v506[0] + 2) = *v2;
            *(v165 + 5) = 0;
            *(v165 + 6) = v165;
            goto LABEL_1200;
          }

          sub_10001D73C("illegal state timeout %s");
LABEL_1260:
          v78 = *(v2 - 26);
          goto LABEL_1261;
        case 354:
          v506[0] = *(v2 - 78);
          v506[1] = *(v2 - 26);
          goto LABEL_1413;
        case 357:
          v153 = *v2;
          v154 = strchr(*v2, 58);
          if (v154)
          {
            v155 = v154 + 1;
            if (v154[1] == 42 && !v154[2])
            {
              *v154 = 0;
              LODWORD(v506[0]) = sub_10001F4B4(*v2);
              if (LODWORD(v506[0]) == -1)
              {
                goto LABEL_1547;
              }

              *(v506 + 4) = &_mh_execute_header;
            }

            else
            {
              *v154 = 0;
              LODWORD(v506[0]) = sub_10001F4B4(*v2);
              if (LODWORD(v506[0]) == -1)
              {
                goto LABEL_1547;
              }

              v156 = sub_10001F4B4(v155);
              HIDWORD(v506[0]) = v156;
              if (v156 == -1)
              {
                goto LABEL_1547;
              }

              if (LODWORD(v506[0]) == v156)
              {
                HIDWORD(v506[0]) = 0;
              }

              LODWORD(v506[1]) = 0;
            }
          }

          else
          {
            LODWORD(v506[0]) = sub_10001F4B4(v153);
            if (LODWORD(v506[0]) == -1)
            {
              goto LABEL_1547;
            }

            HIDWORD(v506[0]) = 0;
            LODWORD(v506[1]) = 0;
          }

          goto LABEL_1411;
        case 358:
          v196 = *v2;
          if (*v2 >= 0x10000)
          {
            sub_10001D73C("illegal port value %ld");
            goto LABEL_1549;
          }

LABEL_713:
          HIDWORD(v506[0]) = 0;
          LODWORD(v506[1]) = 0;
          v39 = bswap32(v196) >> 16;
LABEL_856:
          LODWORD(v506[0]) = v39;
          goto LABEL_1413;
        case 362:
          v114 = *v2;
          v35 = v2 - 52;
          *(*(*(v2 - 52) + 14) + 104) = *v2;
          *(*(v2 - 52) + 14) = *(v114 + 14);
LABEL_291:
          v33 = *v35;
          goto LABEL_292;
        case 364:
          v121 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v506[0] = v121;
          if (!v121)
          {
            sub_10002113C();
          }

          goto LABEL_601;
        case 365:
          v115 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v506[0] = v115;
          if (!v115)
          {
            sub_10002113C();
          }

          goto LABEL_597;
        case 366:
          v506[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
          if (!v506[0])
          {
            sub_100021158();
          }

          *v506[0] = arc4random();
          *(v506[0] + 1) = arc4random();
          *(v506[0] + 2) = arc4random();
          *(v506[0] + 3) = arc4random();
          goto LABEL_1413;
        case 367:
          v218 = *v2;
          if (**v2 == 48 && v218[1] == 120)
          {
            if (strlen(*v2) != 34)
            {
              free(v218);
              sub_10001D73C("hex key must be 128 bits (32 hex digits) long", v494);
              goto LABEL_1549;
            }

            v219 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
            v506[0] = v219;
            if (!v219)
            {
              sub_100021158();
            }

            if (sscanf(*v2, "0x%8x%8x%8x%8x", v219, v219 + 4, v219 + 8, v219 + 12) != 4)
            {
              free(v506[0]);
              free(*v2);
              sub_10001D73C("invalid hex key", v494);
              goto LABEL_1549;
            }
          }

          else
          {
            memset(c, 0, 104);
            v506[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
            if (!v506[0])
            {
              sub_100021158();
            }

            CC_SHA256_Init(c);
            v286 = strlen(*v2);
            CC_SHA256_Update(c, *v2, v286);
            CC_SHA256_Final(md, c);
            *v506[0] = *md;
            *v506[0] = bswap32(*v506[0]);
            *(v506[0] + 1) = bswap32(*(v506[0] + 1));
            *(v506[0] + 1) = vrev32_s8(*(v506[0] + 8));
          }

          goto LABEL_1411;
        case 368:
          xmmword_100031850 = 0uLL;
          qword_100031860 = 0;
          goto LABEL_1413;
        case 369:
          *v506 = xmmword_100031850;
          v100 = qword_100031860;
          goto LABEL_498;
        case 370:
          xmmword_100031850 = 0uLL;
          qword_100031860 = 0;
          v506[1] = 0;
          *&v507 = 0;
          goto LABEL_545;
        case 373:
          if (DWORD2(xmmword_100031850))
          {
            goto LABEL_615;
          }

          v113 = 1;
          goto LABEL_513;
        case 374:
          if (DWORD2(xmmword_100031850))
          {
            goto LABEL_615;
          }

          v113 = 2;
          goto LABEL_513;
        case 375:
          if (DWORD2(xmmword_100031850))
          {
            goto LABEL_615;
          }

          DWORD2(xmmword_100031850) = 3;
          qword_100031860 = *v2;
          goto LABEL_1413;
        case 376:
          if (DWORD2(xmmword_100031850))
          {
LABEL_615:
            sub_10001D73C("pool type cannot be redefined", v494);
            goto LABEL_1549;
          }

          v113 = 4;
LABEL_513:
          DWORD2(xmmword_100031850) = v113;
          goto LABEL_1413;
        case 377:
          if (!HIDWORD(xmmword_100031850))
          {
            HIDWORD(xmmword_100031850) = 1;
            goto LABEL_1413;
          }

          sub_10001D73C("static-port cannot be redefined", v494);
          goto LABEL_1549;
        case 378:
          if ((xmmword_1000317D0 & 2) == 0)
          {
            LODWORD(xmmword_100031850) = xmmword_100031850 | 2;
            BYTE4(xmmword_100031850) |= 0x20u;
            goto LABEL_1413;
          }

          sub_10001D73C("sticky-address cannot be redefined", v494);
          goto LABEL_1549;
        case 379:
          v198 = *v2;
          if (strcmp(*v2, "apd"))
          {
            v199 = *v198;
            if (v199 == 101)
            {
              if (v198[1] == 105 && !v198[2])
              {
                v200 = 3;
                goto LABEL_1047;
              }
            }

            else if (v199 == 97 && v198[1] == 100 && !v198[2])
            {
              v200 = 2;
LABEL_1047:
              LODWORD(v506[0]) = v200;
              goto LABEL_1411;
            }

            sub_10001D73C("unknown extfilter/extmap mode.", v494);
            goto LABEL_1549;
          }

          v200 = 1;
          goto LABEL_1047;
        case 380:
          qword_100031868 = 0;
          goto LABEL_1413;
        case 381:
          v157 = HIDWORD(qword_100031868);
          if (!HIDWORD(qword_100031868))
          {
            v157 = 1;
            HIDWORD(qword_100031868) = 1;
          }

          if (qword_100031868 < v157)
          {
            LODWORD(qword_100031868) = v157;
          }

          v33 = qword_100031868;
          goto LABEL_292;
        case 382:
          qword_100031868 = 0;
          goto LABEL_545;
        case 385:
          if (SHIDWORD(qword_100031868) < 1)
          {
            HIDWORD(qword_100031868) = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("extfilter cannot be redefined.", v494);
          goto LABEL_1549;
        case 386:
          if (qword_100031868 < 1)
          {
            LODWORD(qword_100031868) = *v2;
            goto LABEL_1413;
          }

          sub_10001D73C("extmap cannot be redefined.", v494);
          goto LABEL_1549;
        case 388:
          v121 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v506[0] = v121;
          if (!v121)
          {
            sub_10002113C();
          }

LABEL_601:
          *v121 = *v2;
          v216 = v506[0];
          *(v506[0] + 4) = 0;
          *(v216 + 1) = 0;
          goto LABEL_1413;
        case 389:
          v115 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
          v506[0] = v115;
          if (!v115)
          {
            sub_10002113C();
          }

LABEL_597:
          *v115 = *(v2 - 52);
          v213 = v506[0];
          v214 = *(v2 + 2);
          *(v506[0] + 1) = *v2;
          *(v213 + 4) = v214;
          goto LABEL_1413;
        case 390:
          LOWORD(v506[0]) = 0;
          goto LABEL_934;
        case 391:
          LOWORD(v506[0]) = 1;
          goto LABEL_934;
        case 392:
          LOBYTE(v506[0]) = 1;
          goto LABEL_509;
        case 393:
          LOBYTE(v506[0]) = 0;
LABEL_509:
          BYTE1(v506[0]) = *v2;
          v71 = *(v2 + 1);
          goto LABEL_1158;
        case 394:
          if (*(v2 - 104))
          {
            if (*v2)
            {
              goto LABEL_591;
            }

            v194 = 5;
          }

          else
          {
            v194 = 4;
          }

          goto LABEL_1157;
        case 395:
          if (*(v2 - 104))
          {
            if (*v2)
            {
              goto LABEL_591;
            }

            v194 = 14;
          }

          else
          {
            v194 = 13;
          }

LABEL_1157:
          LOBYTE(v506[0]) = v194;
          BYTE1(v506[0]) = *v2;
          WORD1(v506[0]) = *(v2 + 1);
          v71 = *(v2 + 2);
LABEL_1158:
          WORD2(v506[0]) = v71;
          goto LABEL_1413;
        case 396:
          if (*(v2 - 104))
          {
            if (*v2)
            {
              goto LABEL_591;
            }

            v194 = 9;
          }

          else
          {
            v194 = 8;
          }

          goto LABEL_1157;
        case 397:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
            goto LABEL_825;
          }

          dword_100030C78 = 4;
          bzero(c, 0x410uLL);
          LOBYTE(v568) = *(v2 - 2080);
          v574 = *(v2 - 2079);
          v569 = *(v2 - 2078);
          v570 = *(v2 - 2076);
          v141 = *(v2 - 1664);
          v576 = *(v2 - 1664);
          if ((v568 - 13) > 1u)
          {
            if (v141)
            {
              goto LABEL_1102;
            }

LABEL_1095:
            v343 = *(v2 - 156);
            if (v343 && (v344 = *(v343 + 80)) != 0 && !*(v343 + 84) || (v345 = *(v2 - 154)) != 0 && (v344 = *(v345 + 80)) != 0 && !*(v345 + 84))
            {
              v576 = v344;
            }

            goto LABEL_1102;
          }

          if (!v141)
          {
            goto LABEL_1095;
          }

          if (v141 != 30)
          {
            sub_10001D73C("nat64 can only match on inet6", v494);
            goto LABEL_1549;
          }

LABEL_1102:
          if (*(v2 - 130) && __strlcpy_chk() >= 0x40 || *(v2 - 103) && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1583;
          }

          v573 = *(v2 - 208);
          v554 = *(v2 - 156);
          v346 = v568;
          if (v568 <= 0xEu && ((1 << v568) & 0x4220) != 0)
          {
            if (*(v2 - 52))
            {
              sub_10001D73C("translation rule with 'no' does not need '->'", v494);
              goto LABEL_1549;
            }

            goto LABEL_1710;
          }

          v380 = (v2 - 52);
          v381 = *(v2 - 52);
          if (!v381 || (v382 = *v381) == 0)
          {
            sub_10001D73C("translation rule requires '-> address'", v494);
            goto LABEL_1549;
          }

          v383 = v576;
          if (!v576)
          {
            if (*(v382 + 84))
            {
              v383 = 0;
            }

            else
            {
              v383 = *(v382 + 80);
              v576 = v383;
            }
          }

          if (v568 == 13)
          {
            v458 = 2;
          }

          else
          {
            v458 = v383;
          }

          v552[0] = v458;
          sub_10001F1D4(*v380, v552);
          if (!sub_10001F558(**v380, v552[0]) && !sub_10000BC88(**v380, v552[0]))
          {
            v499 = v22;
            v459 = *(*v380 + 2);
            v460 = bswap32(v459) >> 16;
            LOWORD(v550) = v460;
            if (v568 == 4 || v568 == 13)
            {
              v468 = *(*v380 + 3);
              HIWORD(v550) = bswap32(v468) >> 16;
              if (!(v459 | v468))
              {
                LOWORD(v550) = 0x8000;
                LOWORD(v460) = -16385;
                goto LABEL_1697;
              }

              if (!v468)
              {
LABEL_1697:
                HIWORD(v550) = v460;
              }
            }

            else if (v568 == 8)
            {
              v461 = *v380;
              v462 = *(*v380 + 3);
              if (!v462 && *(v461 + 4) && (v472 = *(v2 - 153)) != 0)
              {
                v460 = (bswap32(v472[1]) >> 16) + (bswap32(*(v461 + 4)) >> 16) - (bswap32(*v472) >> 16);
              }

              else
              {
                v460 = bswap32(v462) >> 16;
              }

              goto LABEL_1697;
            }

            v473 = *(v2 - 50);
            v551 = v473;
            v474 = *v380;
            if ((v473 & 0xF) == 0 && ((v478 = *v474, *(*v474 + 104)) || (v484 = *(v478 + 40), v484 == 3) || v484 == 2 && ((*(v478 + 41) & 8) == 0 || (*(strlen(*v474) + v478 - 1) - 48) >= 0xA)))
            {
              v475 = 4;
              v551 = 4;
              v474 = *v380;
            }

            else
            {
              v475 = v473;
              if ((v473 & 0xF) != 4)
              {
                v476 = sub_10001F284(*v474, "tables are only supported in round-robin redirection pools");
                v22 = v499;
                if (v476)
                {
                  goto LABEL_1549;
                }

                v475 = v551;
                v474 = *v380;
                if ((v551 & 0xF) != 4)
                {
                  v477 = sub_10001F2F0(*v474, "interface (%s) is only supported in round-robin redirection pools");
                  v22 = v499;
                  if (v477)
                  {
                    goto LABEL_1549;
                  }

                  v474 = *v380;
                  v475 = v551;
                }
              }
            }

            v479 = v475 & 0xF;
            if (*(*v474 + 104))
            {
              if (v479 != 4)
              {
                sub_10001D73C("only round-robin valid for multiple redirection addresses", v494);
                goto LABEL_1262;
              }

              v346 = v568;
LABEL_1709:
              v22 = v499;
              goto LABEL_1710;
            }

            v346 = v568;
            if (v479 == 1 && v568 == 13)
            {
              sub_10001D73C("nat64 doesn't support bitmask pool type", v494);
              goto LABEL_1262;
            }

            if (v479 != 3)
            {
              goto LABEL_1709;
            }

            v22 = v499;
            if (v568 == 13)
            {
              sub_10001D73C("nat64 doesn't support source-hash pool type");
              goto LABEL_1549;
            }

LABEL_1710:
            v480 = *(v2 - 24);
            if (v480)
            {
              *v501 = *v480;
            }

            if (*(v2 - 204))
            {
              v551 |= *(v2 - 204);
            }

            if (*(v2 - 49))
            {
              if (v346 != 4)
              {
                sub_10001D73C("the 'static-port' option is only valid with nat rules", v494);
                goto LABEL_1549;
              }

              if (v550 != -32768 && HIWORD(v550) != 49151)
              {
                sub_10001D73C("the 'static-port' option can't be used when specifying a port range", v494);
                goto LABEL_1549;
              }

              v550 = 0;
LABEL_1727:
              v481 = *v2;
              if (*(v2 - 49) && v481 >= 2)
              {
                sub_10001D73C("state-port requires extmap apd", v494);
                goto LABEL_1549;
              }
            }

            else
            {
              v481 = *v2;
              if (v346 != 4)
              {
                if (v481 || *(v2 + 1))
                {
                  sub_10001D73C("use extfilter/extmap options only on nat rules.", v494);
                  goto LABEL_1549;
                }

                goto LABEL_1727;
              }
            }

            v587 = v481;
            v586 = *(v2 + 1);
            v482 = *(v2 - 52);
            if (v482)
            {
              v483 = *v482;
            }

            else
            {
              v483 = 0;
            }

            sub_10001DC08(c, *(v2 - 234), v483, *(v2 - 182), *(v2 - 152), *(v2 - 156), *(v2 - 155), *(v2 - 154), *(v2 - 153), 0, 0, 0, "");
            v69 = *(v2 - 52);
LABEL_1412:
            free(v69);
            goto LABEL_1413;
          }

LABEL_1549:
          v2 -= 26 * v22;
          v4 -= 2 * v22;
          v0 = *v4;
          v1 = &unk_100031000;
          goto LABEL_1550;
        case 398:
          v544 = 0u;
          v545 = 0u;
          v542 = 0u;
          v543 = 0u;
          v540 = 0u;
          v541 = 0u;
          v538 = 0u;
          v539 = 0u;
          v536 = 0u;
          v537 = 0u;
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v530 = 0u;
          v531 = 0u;
          v528 = 0u;
          v529 = 0u;
          v526 = 0u;
          v527 = 0u;
          v524 = 0u;
          v525 = 0u;
          v522 = 0u;
          v523 = 0u;
          v521 = 0u;
          memset(c, 0, sizeof(c));
          if (dword_100030BA8 && dword_100030C78 >= 5)
          {
LABEL_825:
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering", v494);
            goto LABEL_1549;
          }

          dword_100030C78 = 4;
          v210 = (v2 - 104);
          v211 = *(v2 - 104);
          if (!v211)
          {
            goto LABEL_589;
          }

          do
          {
            if (*(v211 + 40) == 5)
            {
LABEL_1209:
              sub_10001D73C("%s");
              goto LABEL_1549;
            }

            v211 = *(v211 + 104);
          }

          while (v211);
LABEL_589:
          bzero(c, 0x410uLL);
          if (*(v2 - 676))
          {
            if (*(v2 - 2288))
            {
LABEL_591:
              sub_10001D73C("pass not valid with no", v494);
              goto LABEL_1549;
            }

            v368 = 7;
          }

          else
          {
            v368 = 6;
          }

          LOBYTE(v568) = v368;
          v574 = *(v2 - 2288);
          v569 = *(v2 - 2287);
          v570 = *(v2 - 2284);
          v576 = *(v2 - 1872);
          LOBYTE(v370) = v576;
          if (!v576)
          {
            v371 = *(v2 - 156);
            if (v371 && (v370 = *(v371 + 80)) != 0 || *v210 && (LOBYTE(v370) = *(*v210 + 80), v370))
            {
              v576 = v370;
            }

            else if (!*v2 || (v410 = **v2) == 0 || (v370 = *(v410 + 80), v576 = v370, !v370))
            {
              sub_10001D73C("address family (inet/inet6) undefined", v494);
              goto LABEL_1549;
            }
          }

          v552[0] = v370;
          v372 = (v2 - 260);
          v373 = *(v2 - 260);
          if (v373)
          {
            v530 = *v373;
            v572 = *(*v372 + 16);
            free(*v372);
          }

          if (*(v2 - 78) && __strlcpy_chk() >= 0x40 || *(v2 - 51) && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1583;
          }

          v573 = *(v2 - 104);
          v554 = *(v2 - 52);
          v374 = *(v2 - 208);
          if (v374)
          {
            v577 = *v374;
            free(*(v2 - 208));
          }

          v375 = (v2 - 156);
          v376 = *(v2 - 156);
          if (v376 && (sub_10001F284(v376, "invalid use of table <%s> as the source address of a binat rule") || *v375 && sub_10001F2F0(*v375, "invalid use of interface (%s) as the source address of a binat rule")))
          {
            goto LABEL_1549;
          }

          v377 = *v2;
          if (*v2)
          {
            if (*v377)
            {
              if (sub_10001F284(*v377, "invalid use of table <%s> as the redirect address of a binat rule"))
              {
                goto LABEL_1549;
              }

              v378 = *v2;
              if (*v2)
              {
                if (*v378 && sub_10001F2F0(*v378, "invalid use of interface (%s) as the redirect address of a binat rule"))
                {
                  goto LABEL_1549;
                }
              }
            }
          }

          v379 = *v375;
          if (!*v375)
          {
            goto LABEL_1537;
          }

          if (*(v379 + 104))
          {
            goto LABEL_1290;
          }

          v432 = v576;
          if (*(v379 + 40) == 2)
          {
            *(v379 + 80) = v576;
            v379 = *v375;
          }

          if (*(v379 + 80) != v432)
          {
            goto LABEL_1589;
          }

          if (sub_10000BC88(v379, v432))
          {
            goto LABEL_1549;
          }

          v433 = **v375;
          v434 = *(*v375 + 32);
          *&c[16] = *(*v375 + 16);
          *&c[32] = v434;
          *c = v433;
          free(*v375);
LABEL_1537:
          v435 = *v210;
          if (*v210)
          {
            if (*(v435 + 104))
            {
LABEL_1290:
              sub_10001D73C("multiple binat ip addresses", v494);
              goto LABEL_1549;
            }

            if (*(v435 + 80) && *(v435 + 80) != v576)
            {
LABEL_1589:
              sub_10001D73C("binat ip versions must match");
              goto LABEL_1549;
            }

            if (sub_10000BC88(v435, v576))
            {
              goto LABEL_1549;
            }

            v463 = **v210;
            v464 = *(*v210 + 2);
            *&c[80] = *(*v210 + 1);
            *&c[96] = v464;
            *&c[64] = v463;
            BYTE8(v521) = *(*v210 + 81);
            free(*v210);
          }

          v465 = *v2;
          if (v568 == 7)
          {
            if (v465)
            {
              sub_10001D73C("'no binat' rule does not need '->'");
              goto LABEL_1549;
            }

LABEL_1754:
            sub_100012B94(qword_100030C68, c, "");
            goto LABEL_1413;
          }

          if (!v465 || !*v465)
          {
            sub_10001D73C("'binat' rule requires '-> address'");
            goto LABEL_1549;
          }

          sub_10001F1D4(v465, &v576);
          if (sub_10001F558(**v2, v576))
          {
            goto LABEL_1549;
          }

          v466 = **v2;
          if (*(v466 + 104))
          {
            sub_10001D73C("binat rule must redirect to a single address");
            goto LABEL_1549;
          }

          if (sub_10000BC88(v466, v576))
          {
            goto LABEL_1549;
          }

          if (v576 == 2 && !*&c[16] || v576 == 30 && !*&c[16] && !*&c[20] && !*&c[24] && !*&c[28])
          {
            goto LABEL_1752;
          }

          if (v576 == 30)
          {
            v491 = **v2;
            if (*&c[28] != v491[7] || *&c[24] != v491[6] || *&c[20] != v491[5])
            {
              goto LABEL_1765;
            }

            v490 = v491[4];
          }

          else
          {
            if (v576 != 2)
            {
              goto LABEL_1765;
            }

            v490 = *(**v2 + 16);
          }

          if (*&c[16] == v490)
          {
LABEL_1752:
            v547 = 0;
            v548 = v500;
            v485 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL);
            if (!v485)
            {
              sub_100021120();
            }

            v486 = **v2;
            v487 = *v486;
            v488 = v486[2];
            v485[1] = v486[1];
            v485[2] = v488;
            *v485 = v487;
            *(v485 + 6) = 0;
            *(v485 + 64) = 0;
            v489 = v548;
            *(v485 + 7) = v548;
            *v489 = v485;
            v548 = (v485 + 3);
            free(*v2);
            goto LABEL_1754;
          }

LABEL_1765:
          sub_10001D73C("'binat' source mask and redirect mask must be the same");
          goto LABEL_1549;
        case 399:
          qword_100031870 = 0;
          goto LABEL_1413;
        case 400:
          v33 = qword_100031870;
          goto LABEL_292;
        case 401:
          qword_100031870 = 0;
LABEL_545:
          v506[0] = 0;
          goto LABEL_1413;
        case 404:
          v178 = *v2;
          goto LABEL_520;
        case 405:
          v178 = *(v2 - 26);
LABEL_520:
          v195 = 0x4000;
          goto LABEL_528;
        case 406:
          v178 = *v2;
          goto LABEL_527;
        case 407:
          v178 = *(v2 - 26);
LABEL_527:
          v195 = 0x8000;
LABEL_528:
          LODWORD(qword_100031870) = v178;
          HIDWORD(qword_100031870) = v195;
          goto LABEL_1413;
        case 408:
          bzero(c, 0x410uLL);
          if (*(v2 - 468))
          {
            v187 = 12;
          }

          else
          {
            v187 = 11;
          }

          LOBYTE(v568) = v187;
          HIBYTE(v568) = *(v2 - 364);
          v569 = *(v2 - 1248);
          v570 = *(v2 - 1247);
          v571 = *(v2 - 1246);
          v563 = *(v2 - 39);
          v554 = *(v2 - 21);
          v576 = *(v2 - 208);
          if (*(v2 - 13) && __strlcpy_chk() >= 0x40 || *(v2 - 12) && __strlcpy_chk() >= 0x40)
          {
            goto LABEL_1583;
          }

          v573 = *(v2 - 88);
          if (sub_10001DBA4(c, *(v2 - 16)))
          {
            goto LABEL_1549;
          }

          free(*(v2 - 16));
          v578 = *(v2 - 184);
          v579 = *(v2 - 183);
          v188 = *(v2 - 184);
          if ((v188 & ~v579) != 0)
          {
            goto LABEL_1402;
          }

          v189 = v579 | v188;
          if (!v189 && !*(v2 - 48))
          {
            goto LABEL_1293;
          }

          v190 = *(v2 - 78);
          if (!v190)
          {
            goto LABEL_1293;
          }

          while (*v190 != 6)
          {
            v190 = *(v190 + 8);
            if (!v190)
            {
              if (v189)
              {
                sub_10001D73C("flags only apply to tcp");
              }

              if (!*(v2 - 48))
              {
                goto LABEL_1549;
              }

LABEL_1133:
              sub_10001D73C("OS fingerprinting only apply to tcp", v494);
              goto LABEL_1549;
            }
          }

LABEL_1293:
          v584 = *(v2 - 42);
          if (*(v2 - 38))
          {
            sub_10001D73C("Dummynet rules must be stateless", v494);
            goto LABEL_1549;
          }

          v575 = 0;
          if (*(v2 - 34))
          {
            v567 |= 2u;
          }

          v581 = *(v2 - 33);
          v411 = *(v2 - 52);
          v412 = v576;
          if (v411)
          {
            v413 = v576 == 0;
          }

          else
          {
            v413 = 0;
          }

          if (!v413)
          {
            goto LABEL_1434;
          }

          v412 = *(v411 + 80);
          v576 = *(v411 + 80);
          do
          {
            v411 = *(v411 + 104);
            if (!v411)
            {
              goto LABEL_1434;
            }
          }

          while (*(v411 + 80) == v412);
          v412 = 0;
          v576 = 0;
LABEL_1434:
          v414 = *(v2 - 50);
          if (v414)
          {
            v415 = v412 == 0;
          }

          else
          {
            v415 = 0;
          }

          if (v415)
          {
            v416 = *(v414 + 80);
            v576 = *(v414 + 80);
            do
            {
              v414 = *(v414 + 104);
              if (!v414)
              {
                goto LABEL_1443;
              }
            }

            while (*(v414 + 80) == v416);
            v576 = 0;
          }

LABEL_1443:
          if (!*(v2 - 15) && !*(v2 - 14))
          {
            if (*v2)
            {
              v588 = *v2;
              v589 = *(v2 + 1);
            }

            sub_10001DC08(c, *(v2 - 130), 0, *(v2 - 78), *(v2 - 48), *(v2 - 52), *(v2 - 51), *(v2 - 50), *(v2 - 49), *(v2 - 25), *(v2 - 24), *(v2 - 22), "");
            goto LABEL_1413;
          }

          sub_10001D73C("Cannot specify an altq queue with a dummynet rule", v494);
          goto LABEL_1549;
        case 412:
          LODWORD(v506[0]) = *(v2 - 52);
LABEL_785:
          v506[1] = *v2;
          goto LABEL_1413;
        case 414:
          if (!*v2)
          {
            goto LABEL_859;
          }

          LODWORD(v506[0]) = *v2;
          goto LABEL_1413;
        case 415:
          v173 = if_nametoindex(*v2);
          if (v173)
          {
            LODWORD(v506[0]) = v173;
            goto LABEL_1413;
          }

LABEL_859:
          sub_10001D73C("invalid rtable id", v494);
          goto LABEL_1549;
        case 416:
          v150 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          v506[0] = v150;
          if (!v150)
          {
            sub_100021104();
          }

          v150[5].i64[1] = *v2;
          sub_10000BB08(v150, 0x80u, v151, v152);
          goto LABEL_929;
        case 417:
          v506[0] = *(v2 - 26);
          *(v506[0] + 11) = *(v2 - 52);
          goto LABEL_1413;
        case 419:
          v166 = v2 - 52;
          v167 = *(v2 - 52);
          v168 = *(v167 + 80);
          if (!v167[80])
          {
            *(v167 + 80) = (*v2)[80];
            v167 = *v166;
            v168 = *(*v166 + 80);
          }

          if (v168 == *(*v2 + 80))
          {
            *(*(v167 + 14) + 104) = *v2;
LABEL_783:
            *(*v166 + 14) = *(*v2 + 14);
            v33 = *v166;
LABEL_292:
            v506[0] = v33;
            goto LABEL_1413;
          }

          sub_10001D73C("all pool addresses must be in the same address family", v494);
          goto LABEL_1549;
        case 422:
          v506[0] = 0;
          LOWORD(v506[1]) = 0;
          goto LABEL_1413;
        case 423:
          v506[0] = 0;
          LOWORD(v506[1]) = 1;
          goto LABEL_1413;
        case 424:
          v506[0] = *(v2 - 26);
          v169 = 2;
          goto LABEL_497;
        case 425:
          v506[0] = *(v2 - 26);
          v169 = 4;
          goto LABEL_497;
        case 426:
          v506[0] = *(v2 - 26);
          v169 = 3;
LABEL_497:
          LOBYTE(v506[1]) = v169;
          BYTE1(v506[1]) = *(v2 + 4) | *(v2 + 8);
          v100 = v2[2];
          if (v100)
          {
LABEL_498:
            *&v507 = v100;
          }

          goto LABEL_1413;
        case 427:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
            goto LABEL_466;
          }

          dword_100030C78 = 1;
          if (*v2 >> 32)
          {
            goto LABEL_917;
          }

          v347 = sub_100013E5C(qword_100030C68, *(v2 - 26), *v2, 0);
          v69 = *(v2 - 26);
          if (!v347)
          {
            goto LABEL_1412;
          }

          sub_10001D73C("unknown timeout %s");
          goto LABEL_1112;
        case 430:
          if (dword_100030BA8 && dword_100030C78 >= 2)
          {
LABEL_466:
            sub_10001D73C("Rules must be in order: options, normalization, queueing, translation, filtering", v494);
          }

          else
          {
            dword_100030C78 = 1;
            if (*v2 >> 32)
            {
LABEL_917:
              sub_10001D73C("only positive values permitted", v494);
              goto LABEL_1549;
            }

            v180 = sub_100013D88(qword_100030C68, *(v2 - 26), *v2);
            v69 = *(v2 - 26);
            if (!v180)
            {
              goto LABEL_1412;
            }

            v495 = *v2;
            sub_10001D73C("unable to set limit %s %u");
          }

          goto LABEL_1112;
        case 436:
          if (strcmp(*v2, "yes"))
          {
            sub_10001D73C("invalid value '%s', expected 'yes' or 'no'");
            goto LABEL_1547;
          }

          v228 = 1;
          goto LABEL_1410;
        case 439:
          v39 = 5;
          goto LABEL_856;
        case 440:
          v39 = 4;
          goto LABEL_856;
        case 441:
          v39 = 7;
          goto LABEL_856;
        case 442:
          v39 = 6;
          goto LABEL_856;
        default:
          goto LABEL_1413;
      }
    }

    v13 = word_100028BFA[v12];
    if (v13 <= 0)
    {
      break;
    }

    if (v12 == 232)
    {
      v492 = 0;
      goto LABEL_1769;
    }

    v14 = v504 - 1;
    if (!v504)
    {
      v14 = 0;
    }

    v504 = v14;
    if (v10 >= 1)
    {
      v1[323] = -2;
    }

    v15 = unk_1000315C0;
    *(v2 + 23) = xmmword_1000315B0;
    *(v2 + 24) = v15;
    *(v2 + 25) = xmmword_1000315D0;
    v16 = unk_100031580;
    *(v2 + 19) = xmmword_100031570;
    *(v2 + 20) = v16;
    v17 = unk_1000315A0;
    *(v2 + 21) = xmmword_100031590;
    *(v2 + 22) = v17;
    v18 = unk_100031540;
    *(v2 + 15) = xmmword_100031530;
    *(v2 + 16) = v18;
    v19 = unk_100031560;
    *(v2 + 17) = xmmword_100031550;
    *(v2 + 18) = v19;
    v20 = unk_100031520;
    *(v2 + 13) = xmmword_100031510;
    *(v2 + 14) = v20;
    v2 += 26;
LABEL_1561:
    v4 += 2;
    v0 = v13;
  }

  if (word_100028BFA[v12])
  {
    v21 = -v13;
    goto LABEL_30;
  }

LABEL_34:
  v1 = &unk_100031000;
  if (v504 == 3)
  {
    if (dword_10003150C <= 0)
    {
      if (!dword_10003150C)
      {
        goto LABEL_1766;
      }
    }

    else
    {
      dword_10003150C = -2;
    }
  }

  else if (!v504)
  {
    ++dword_100031508;
    sub_10001D73C("syntax error");
  }

LABEL_1550:
  if (word_100027DD8[v0] >= -1 && v0 == 1)
  {
LABEL_1560:
    v440 = unk_1000315C0;
    *(v2 + 23) = xmmword_1000315B0;
    *(v2 + 24) = v440;
    *(v2 + 25) = xmmword_1000315D0;
    v441 = unk_100031580;
    *(v2 + 19) = xmmword_100031570;
    *(v2 + 20) = v441;
    v442 = unk_1000315A0;
    *(v2 + 21) = xmmword_100031590;
    *(v2 + 22) = v442;
    v443 = unk_100031540;
    *(v2 + 15) = xmmword_100031530;
    *(v2 + 16) = v443;
    v444 = unk_100031560;
    *(v2 + 17) = xmmword_100031550;
    *(v2 + 18) = v444;
    v445 = unk_100031520;
    *(v2 + 13) = xmmword_100031510;
    *(v2 + 14) = v445;
    v2 += 26;
    v13 = 3;
    v504 = 3;
    goto LABEL_1561;
  }

  while (v4 != v5)
  {
    v438 = *(v4 - 1);
    v4 -= 2;
    v437 = v438;
    v2 -= 26;
    if (word_100027DD8[v438] >= -1 && v437 == 1)
    {
      goto LABEL_1560;
    }
  }

LABEL_1766:
  v492 = 1;
LABEL_1769:
  if (v5 != v591)
  {
    free(v5);
  }

  return v492;
}