uint64_t sub_23EB4B80C(unsigned int a1, unsigned int a2, unsigned int a3, unint64_t a4, unsigned __int8 *a5, const char *a6, uint64_t a7)
{
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0x100030070706361;
  *(a7 + 16) = bswap32(a4);
  *(a7 + 20) = bswap32(a1);
  v10 = bswap32(a2);
  v11 = bswap32(a3);
  if (a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = "public";
  }

  *(a7 + 24) = v10;
  *(a7 + 28) = v11;
  strncpy((a7 + 48), v12, 0x20uLL);
  v13 = 0;
  for (i = 0; i != 32; ++i)
  {
    if (v13 > 0xF)
    {
      v13 = 0;
    }

    *(a7 + i + 48) ^= (i + 85) ^ byte_23EC21B0D[v13++];
  }

  return sub_23EB4B940(a7, a4, a5);
}

uint64_t sub_23EB4B8F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0;
    for (i = 0; i != result; ++i)
    {
      if (v2 > 0xF)
      {
        v2 = 0;
      }

      *(a2 + i) ^= (i + 85) ^ byte_23EC21B0D[v2++];
    }
  }

  return result;
}

uint64_t sub_23EB4B940(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  if (a2 == 0xFFFFFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v5 = sub_23EB4B99C(1u, 0x1388uLL, a3, v4);
  *(a1 + 8) = 0;
  *(a1 + 12) = bswap32(v5);
  result = sub_23EB4B99C(1u, 0x1388uLL, a1, 0x80uLL);
  *(a1 + 8) = bswap32(result);
  return result;
}

uint64_t sub_23EB4B99C(unsigned int a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = 5552;
  if (a2)
  {
    v4 = a2;
  }

  v5 = a1;
  for (i = HIWORD(a1); a4; a4 -= v7)
  {
    if (a4 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = a4;
    }

    v8 = v7;
    if (v7 >= 0x10)
    {
      do
      {
        v9 = v5 + *a3;
        v10 = v9 + i;
        v11 = v9 + a3[1];
        v12 = v10 + v11;
        v13 = v11 + a3[2];
        v14 = v12 + v13;
        v15 = v13 + a3[3];
        v16 = v14 + v15;
        v17 = v15 + a3[4];
        v18 = v16 + v17;
        v19 = v17 + a3[5];
        v20 = v18 + v19;
        v21 = v19 + a3[6];
        v22 = v20 + v21;
        v23 = v21 + a3[7];
        v24 = v22 + v23;
        v25 = v23 + a3[8];
        v26 = v24 + v25;
        v27 = v25 + a3[9];
        v28 = v26 + v27;
        v29 = v27 + a3[10];
        v30 = v28 + v29;
        v31 = v29 + a3[11];
        v32 = v30 + v31;
        v33 = v31 + a3[12];
        v34 = v32 + v33;
        v35 = v33 + a3[13];
        v36 = v34 + v35;
        v37 = v35 + a3[14];
        v38 = v36 + v37;
        v5 = v37 + a3[15];
        i = v38 + v5;
        a3 += 16;
        v8 -= 16;
      }

      while (v8 > 0xF);
    }

    v39 = v8;
    v40 = a3;
    if (v8)
    {
      do
      {
        v41 = *v40++;
        v5 += v41;
        i += v5;
        --v39;
      }

      while (v39);
      a3 += v8;
    }

    v5 %= 0xFFF1u;
    i %= 0xFFF1u;
  }

  return v5 | (i << 16);
}

BOOL sub_23EB4BAF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = sub_23EB4B99C(1u, 0x1388uLL, a1, 0x80uLL);
  *(a1 + 8) = v2;
  return v2 == bswap32(v3);
}

uint64_t sub_23EB4BB3C(int a1, uint64_t **a2)
{
  v2 = 1651861868;
  v3 = &qword_23EC201D8;
  while (v2 != a1)
  {
    v4 = *(v3 + 3);
    v3 = (v3 + 12);
    v2 = v4;
    if (!v4)
    {
      return 4294967291;
    }
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_23EB4BB70(uint64_t a1, unint64_t a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int *a7, _DWORD *a8, void *a9, unint64_t *a10)
{
  v10 = a2 - 36;
  if (a2 < 0x24)
  {
    return 4294967281;
  }

  if (strcmp(a1, "APPLE-FIRMWARE"))
  {
    return 4294967276;
  }

  if (a3)
  {
    v20 = a2 - 4;
    v21 = bswap32(*(a1 + a2 - 4));
    if (v21 != sub_23EB4B99C(1u, 0x1388uLL, a1, v20))
    {
      return 4294967290;
    }
  }

  v22 = *(a1 + 15);
  v23 = *(a1 + 24);
  v24 = *(a1 + 25);
  v25 = *(a1 + 26);
  if (a4)
  {
    *a4 = bswap32(*(a1 + 16));
  }

  if (a5)
  {
    *a5 = bswap32(*(a1 + 20));
  }

  if (a6)
  {
    *a6 = *(a1 + 27);
  }

  if (a7)
  {
    *a7 = (v22 << 24) | (v23 << 16) | (v24 << 8) | v25;
  }

  if (a8)
  {
    *a8 = bswap32(*(a1 + 28));
  }

  if (a9)
  {
    *a9 = a1 + 32;
  }

  result = 0;
  if (a10)
  {
    *a10 = v10;
  }

  return result;
}

_BYTE *sub_23EB4BD2C(int a1, _BYTE *a2)
{
  *a2 = HIBYTE(a1);
  a2[1] = BYTE2(a1);
  a2[2] = BYTE1(a1);
  a2[3] = a1;
  a2[4] = 0;
  return a2;
}

uint64_t sub_23EB4BD54(char *__s, size_t a2, _DWORD *a3)
{
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 != 4)
  {
    return 4294960553;
  }

  result = 0;
  *a3 = bswap32(*__s);
  return result;
}

uint64_t sub_23EB4BDAC(uint64_t result)
{
  if (result)
  {
    v1 = 1;
    v2 = &dword_278C668F0;
    while (v1 != result)
    {
      v3 = *v2;
      v2 += 12;
      v1 = v3;
      if (!v3)
      {
        return 0;
      }
    }

    return *(v2 - 32);
  }

  return result;
}

uint64_t sub_23EB4BDDC(uint64_t result)
{
  if (result)
  {
    v1 = 1;
    v2 = &dword_278C668F0;
    while (v1 != result)
    {
      v3 = *v2;
      v2 += 12;
      v1 = v3;
      if (!v3)
      {
        return 0;
      }
    }

    return *(v2 - 11);
  }

  return result;
}

BOOL sub_23EB4BE0C(int a1)
{
  v2 = 1651861868;
  v3 = "SnyD\r";
  while (v2 != a1)
  {
    v4 = *v3;
    v3 += 12;
    v2 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  if ((*(v3 - 4) & 0x5C) != 0)
  {
    return 0;
  }

LABEL_6:
  result = 1;
  if (a1 > 1818449522)
  {
    if (a1 > 1918980215)
    {
      if (a1 > 1937331018)
      {
        if (a1 == 1937331019 || a1 == 1937331540)
        {
          return 0;
        }

        v6 = 2004050793;
      }

      else
      {
        if (a1 == 1918980216 || a1 == 1937006964)
        {
          return 0;
        }

        v6 = 1937327724;
      }
    }

    else
    {
      if (a1 <= 1835626066)
      {
        if (a1 != 1818449523 && a1 != 1835090284)
        {
          v6 = 1835094130;
          goto LABEL_34;
        }

        return 0;
      }

      if (a1 == 1835626067 || a1 == 1885423186)
      {
        return 0;
      }

      v6 = 1886547529;
    }

LABEL_34:
    if (a1 != v6)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 1349676901)
  {
    if (a1 > 1668703601)
    {
      if (a1 == 1668703602 || a1 == 1717920116)
      {
        return 0;
      }

      v6 = 1769161027;
    }

    else
    {
      if (a1 == 1349676902 || a1 == 1635076676)
      {
        return 0;
      }

      v6 = 1668573549;
    }

    goto LABEL_34;
  }

  if (a1 > 1148808786)
  {
    if (a1 == 1148808787 || a1 == 1298223988)
    {
      return 0;
    }

    v6 = 1346918739;
    goto LABEL_34;
  }

  return a1 != 1094800672 && a1 != 1095783250;
}

uint64_t sub_23EB4C01C(int a1, int a2, void *a3)
{
  result = 4294960591;
  if (a1 == 2 && a3)
  {
    v7 = malloc_type_calloc(1uLL, 0x168uLL, 0x10300400F1396E7uLL);
    if (v7)
    {
      v8 = v7;
      v7[10] = 5;
      v7[58] = a2 | 0x20;
      *(v7 + 353) = 0;
      sub_23EB71D64((v7 + 44), 0, 0, -1);
      result = 0;
      *a3 = v8;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

uint64_t sub_23EB4C0BC(void *a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *a1;
  if (v2)
  {
    sub_23EB7CD20(v2);
    *a1 = 0;
  }

  sub_23EB4F8E0((a1 + 30));
  sub_23EB4F8E0((a1 + 37));
  sub_23EB71D7C((a1 + 22));
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

  v5 = a1[4];
  if (v5)
  {
    free(v5);
  }

  a1[44] = 0;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  free(a1);
  return 0;
}

uint64_t sub_23EB4C180(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  *(a1 + 8) = 1;
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  result = sub_23EB7CE44(v1);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23EB4C1D4(uint64_t a1, char *a2, _BYTE *a3, __int16 a4)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if (*(a1 + 45))
  {
    return 0;
  }

  v7 = a3;
  v8 = a2;
  if (!a2 || !*a2)
  {
    if (*(a1 + 16))
    {
      v8 = *(a1 + 16);
    }

    if (!v8)
    {
      return 4294960591;
    }
  }

  if (!a3 || !*a3)
  {
    if (*(a1 + 32))
    {
      v7 = *(a1 + 32);
    }

    if (!v7)
    {
      return 4294960591;
    }
  }

  v9 = *(a1 + 232);
  if (!*(a1 + 44))
  {
    v12 = sub_23EB4C4B0(a1, v8);
    if (v12)
    {
      return v12;
    }
  }

  v10 = v9 | a4;
  if ((v10 & 0x800) == 0 && !*(a1 + 352))
  {
    v13 = sub_23EB4C6BC(a1, v7);
    if (v13)
    {
      v5 = v13;
      if (v13 == -6723)
      {
        return v5;
      }

      if (v13 == -6754)
      {
        if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
        {
          sub_23EB75374(&dword_27E380E78, "OSStatus ACPClientSetUpConnection(ACPClientRef, const char *, const char *, ACPClientOptions)", 3000, "### bad password for %s/%##a\n", v8, a1 + 48);
        }

        return 4294967280;
      }

      if ((v10 & 0x400) != 0 || *(a1 + 24))
      {
        if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
        {
          sub_23EB75374(&dword_27E380E78, "OSStatus ACPClientSetUpConnection(ACPClientRef, const char *, const char *, ACPClientOptions)", 3000, "### secure auth required, but failed: %#m\n", v5);
        }

        if (v5 == -16 || v5 == -7)
        {
          return 4294960528;
        }

        else
        {
          return v5;
        }
      }

      if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
      {
        sub_23EB75374(&dword_27E380E78, "OSStatus ACPClientSetUpConnection(ACPClientRef, const char *, const char *, ACPClientOptions)", 3000, "### secure auth failed with %s/%##a: %#m\n", v8, a1 + 48, v5);
      }

      v12 = sub_23EB4C4B0(a1, v8);
      if (v12)
      {
        return v12;
      }
    }
  }

  if (*(a1 + 352) || *(a1 + 353) || (v10 & 0x260) == 0 || (v10 & 0x80) != 0)
  {
LABEL_21:
    v5 = 0;
    *(a1 + 45) = 1;
    return v5;
  }

  if ((v10 & 0x40) == 0)
  {
    v12 = sub_23EB4C4B0(a1, v8);
    if (v12)
    {
      return v12;
    }

    goto LABEL_21;
  }

  if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
  {
    sub_23EB75374(&dword_27E380E78, "OSStatus ACPClientSetUpConnection(ACPClientRef, const char *, const char *, ACPClientOptions)", 3000, "### security required, but not supported by the server\n");
  }

  return 4294960528;
}

uint64_t sub_23EB4C4B0(_DWORD **a1, char *a2)
{
  if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
  {
    sub_23EB75374(&dword_27E380E78, "OSStatus __ACPClientSetUpConnection_Connect(ACPClientRef, const char *)", 3000, "connecting to %s\n", a2);
  }

  sub_23EB4CC34(a1);
  v4 = sub_23EB7C610(a1);
  if (!v4)
  {
    v6 = sub_23EB7CED4(*a1, a2, 5009, *(a1 + 10));
    v4 = v6;
    if (v6 != -6723)
    {
      if (v6)
      {
        if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
        {
          sub_23EB75374(&dword_27E380E78, "OSStatus __ACPClientSetUpConnection_Connect(ACPClientRef, const char *)", 3000, "### failed to connect to %s: %#m\n", a2);
        }
      }

      else
      {
        v10 = 0;
        *(a1 + 44) = 1;
        v7 = sub_23EB7CE1C(*a1);
        v9 = 1;
        if (setsockopt(v7, 6, 1, &v9, 4u) && *__error())
        {
          __error();
        }

        *(a1 + 3) = 0u;
        v8 = a1 + 6;
        *(v8 + 6) = 0u;
        *(v8 + 7) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 5) = 0u;
        *(v8 + 2) = 0u;
        *(v8 + 3) = 0u;
        *(v8 + 1) = 0u;
        v10 = 128;
        if (!getpeername(v7, v8, &v10))
        {
          goto LABEL_27;
        }

        if (!*__error())
        {
          return 4294960596;
        }

        v4 = *__error();
        if (!v4)
        {
LABEL_27:
          if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
          {
            sub_23EB75374(&dword_27E380E78, "OSStatus __ACPClientSetUpConnection_Connect(ACPClientRef, const char *)", 3000, "connected  to %s/%##a\n", a2, v8);
          }

          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t sub_23EB4C6BC(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = 0;
  cf = 0;
  if (*(a1 + 24))
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = "admin";
  }

  v4 = sub_23EB6F348(0, &cf, "{%kO=%i%kO=%s}", @"state", 1, @"username", v3);
  if (v4)
  {
    v5 = v4;
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = sub_23EB4CCF4(a1, 26, cf, &v30);
  CFRelease(cf);
  cf = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  v8 = CFGetTypeID(v30);
  if (v8 != CFDictionaryGetTypeID())
  {
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(v30, @"modulus");
  if (!Value)
  {
    goto LABEL_29;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFDataGetTypeID())
  {
LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  v12 = CFDictionaryGetValue(v30, @"generator");
  if (!v12)
  {
LABEL_29:
    v6 = 0;
LABEL_30:
    v5 = 4294960584;
    goto LABEL_8;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFDataGetTypeID())
  {
    goto LABEL_27;
  }

  v15 = CFDictionaryGetValue(v30, @"salt");
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = v15;
  v17 = CFGetTypeID(v15);
  if (v17 != CFDataGetTypeID())
  {
    goto LABEL_27;
  }

  v18 = CFDictionaryGetValue(v30, @"publicKey");
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  if (v20 != CFDataGetTypeID())
  {
    goto LABEL_27;
  }

  SRP6a_client_method();
  v6 = SRP_new();
  if (!v6 || SRP_set_username())
  {
    goto LABEL_26;
  }

  CFDataGetBytePtr(v10);
  CFDataGetLength(v10);
  CFDataGetBytePtr(v13);
  CFDataGetLength(v13);
  CFDataGetBytePtr(v16);
  CFDataGetLength(v16);
  if (SRP_set_params())
  {
    goto LABEL_32;
  }

  if (SRP_gen_pub() || SRP_set_auth_password())
  {
    goto LABEL_26;
  }

  CFDataGetBytePtr(v19);
  CFDataGetLength(v19);
  if (SRP_compute_key())
  {
LABEL_32:
    v5 = 4294960559;
    goto LABEL_8;
  }

  if (SRP_respond())
  {
LABEL_26:
    v5 = 4294960534;
    goto LABEL_8;
  }

  v21 = sub_23EC0D2D0(&v32, 0x10uLL);
  if (v21)
  {
    goto LABEL_39;
  }

  CFRelease(v30);
  v30 = 0;
  v21 = sub_23EB6F348(0, &cf, "{%kO=%i%kO=%D%kO=%D%kO=%D}", @"state", 3, @"publicKey", MEMORY[0], MEMORY[8], @"response", MEMORY[0], MEMORY[8], @"iv", &v32, 16);
  if (v21)
  {
    goto LABEL_39;
  }

  v5 = sub_23EB4CCF4(a1, 26, cf, &v30);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v5)
  {
    goto LABEL_8;
  }

  v22 = CFGetTypeID(v30);
  if (v22 != CFDictionaryGetTypeID())
  {
LABEL_28:
    v5 = 4294960540;
    goto LABEL_8;
  }

  v23 = CFDictionaryGetValue(v30, @"response");
  if (!v23)
  {
    goto LABEL_30;
  }

  v24 = v23;
  v25 = CFGetTypeID(v23);
  if (v25 != CFDataGetTypeID())
  {
    goto LABEL_28;
  }

  v26 = CFDictionaryGetValue(v30, @"iv");
  if (!v26)
  {
    goto LABEL_30;
  }

  v27 = v26;
  v28 = CFGetTypeID(v26);
  if (v28 != CFDataGetTypeID())
  {
    goto LABEL_28;
  }

  if (CFDataGetLength(v27) == 16)
  {
    CFDataGetBytePtr(v24);
    CFDataGetLength(v24);
    if (SRP_verify())
    {
      v5 = 4294960542;
    }

    else
    {
      v21 = CCKeyDerivationPBKDF(2u, MEMORY[0], MEMORY[8], byte_23EC21AEC, 0x10uLL, 1u, 5u, derivedKey, 0x10uLL);
      if (v21 || (sub_23EB4F6C4((a1 + 240), derivedKey, &v32), v21 = CCKeyDerivationPBKDF(2u, MEMORY[0], MEMORY[8], byte_23EC21AFC, 0x10uLL, 1u, 7u, derivedKey, 0x10uLL), v21))
      {
LABEL_39:
        v5 = v21;
        goto LABEL_8;
      }

      BytePtr = CFDataGetBytePtr(v27);
      sub_23EB4F6C4((a1 + 296), derivedKey, BytePtr);
      *(a1 + 352) = 1;
      if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
      {
        sub_23EB75374(&dword_27E380E78, "OSStatus ACPClientAuthenticate(ACPClientRef, const char *)", 3000, "*** authenticated server %##a @ %N\n", a1 + 48);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 4294960553;
  }

LABEL_8:
  if (v6)
  {
    SRP_free();
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t sub_23EB4CC34(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *a1;
  if (v2)
  {
    sub_23EB7CD20(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 44);
  *(a1 + 44) = 0;
  *(a1 + 352) = 0;
  sub_23EB4F8E0(a1 + 240);
  sub_23EB4F8E0(a1 + 296);
  result = 0;
  if (v3)
  {
    if (dword_27E380E78 <= 800)
    {
      if (dword_27E380E78 != -1 || (result = sub_23EB74AC8(&dword_27E380E78, 0x320u), result))
      {
        sub_23EB75374(&dword_27E380E78, "ACPStatus ACPClientTearDownConnection(ACPClientRef, ACPClientOptions)", 800, "connection torn down: %#m\n", 0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23EB4CCF4(_BYTE *a1, uint64_t a2, const __CFString *a3, CFTypeRef *a4)
{
  v5 = a2;
  v25 = *MEMORY[0x277D85DE8];
  theData = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  *size = 0u;
  v7 = sub_23EB6E6A4(0, a3, &theData);
  if (v7)
  {
    return v7;
  }

  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  v8 = sub_23EB4D4BC(a1, 4u, "", v5, Length, BytePtr);
  CFRelease(theData);
  if (v8)
  {
    return v8;
  }

  v7 = sub_23EB4D208(a1, v11, 30000, &v17);
  if (v7)
  {
    return v7;
  }

  if (!LODWORD(size[0]))
  {
    return 4294960553;
  }

  v13 = malloc_type_malloc(LODWORD(size[0]), 0x7C988E67uLL);
  if (!v13)
  {
    return 4294960568;
  }

  v15 = v13;
  v8 = sub_23EB4DE88(a1, v14, 15000, LODWORD(size[0]), LODWORD(size[0]), v13, 0);
  if (!v8)
  {
    v8 = sub_23EB6EC4C(0, v15, LODWORD(size[0]), a4);
  }

  free(v15);
  return v8;
}

uint64_t sub_23EB4CE60(uint64_t a1, char a2, uint64_t a3, char *a4, char *a5, unsigned int a6, char **a7, void *a8)
{
  v8 = 4294960591;
  if (a4)
  {
    if (a5)
    {
      v16 = *(a1 + 232);
      v8 = sub_23EB4C1D4(a1, a4, a5, 0);
      if (!v8)
      {
        v17 = v16 | a2;
        v34 = 0;
        if (*(a1 + 352))
        {
          v18 = "";
        }

        else
        {
          v18 = a5;
        }

        v33 = a6;
        v19 = sub_23EB4D110(a1, v17 & 0xC, v18, 1, &v33);
        if (v19 || (v19 = sub_23EB4D208(a1, v20, a3, 0), v19))
        {
          v8 = v19;
          goto LABEL_10;
        }

        LODWORD(v34) = 0;
        v33 = 0;
        v8 = sub_23EB4D2E4(a1, v21, a3, &v33);
        if (!v8)
        {
          v24 = 0;
          while (1)
          {
            v25 = v33.u32[0];
            if (!v33.i32[0] || (v33.i8[4] & 1) != 0)
            {
              v30 = v34;
              if (v34 != 4)
              {
                if (dword_27E380E78 <= 8000)
                {
                  if (dword_27E380E78 != -1)
                  {
                    goto LABEL_40;
                  }

                  if (sub_23EB74AC8(&dword_27E380E78, 0x1F40u))
                  {
                    v25 = v33.u32[0];
                    v30 = v34;
LABEL_40:
                    sub_23EB75374(&dword_27E380E78, "ACPStatus ACPClientGetProperty(ACPClientRef, ACPClientOptions, ACPDuration, const char *, const char *, ACPPropertyCode, void *, size_t *)", 8000, "bad property size (code='%C', expected=%u, actual=%u)\n", v25, 4, v30);
                  }
                }

                v8 = 4294960553;
                goto LABEL_42;
              }

              v31 = sub_23EB4DE88(a1, v23, a3, 4, 4, &v34 + 4, 0);
              if (v31)
              {
                goto LABEL_35;
              }

              v32 = bswap32(HIDWORD(v34));
              HIDWORD(v34) = v32;
              if (v33.i8[4])
              {
                v8 = v32;
              }

              else
              {
                v8 = v8;
              }

              if (!v33.i32[0])
              {
                goto LABEL_42;
              }
            }

            else
            {
              v26 = malloc_type_malloc((v34 + 1), 0x100004077774924uLL);
              if (!v26)
              {
                v8 = 4294967293;
                break;
              }

              v24 = v26;
              v28 = sub_23EB4DE88(a1, v27, a3, v34, v34, v26, 0);
              if (v28)
              {
                v8 = v28;
                goto LABEL_43;
              }

              v24[v34] = 0;
              if ((v33.i8[4] & 2) != 0)
              {
                sub_23EB4B8F8(v34, v24);
              }

              if (a7)
              {
                *a7 = v24;
                v24 = 0;
              }

              if (a8)
              {
                *a8 = v34;
              }
            }

            LODWORD(v34) = 0;
            v33 = 0;
            v31 = sub_23EB4D2E4(a1, v29, a3, &v33);
            if (v31)
            {
LABEL_35:
              v8 = v31;
LABEL_42:
              if (!v24)
              {
                break;
              }

LABEL_43:
              free(v24);
              break;
            }
          }
        }

LABEL_10:
        if ((v17 & 4) == 0 || v8 == -6753 || v8 == 32 || v8 == 54)
        {
          sub_23EB4CC34(a1);
        }
      }
    }
  }

  return v8;
}

uint64_t sub_23EB4D110(_BYTE *a1, char a2, const char *a3, uint64_t a4, const void *a5)
{
  if (!a3)
  {
    return 4294960591;
  }

  v6 = a4;
  if (a1[352])
  {
    v9 = "";
  }

  else
  {
    v9 = a3;
  }

  v10 = 12 * a4;
  v11 = malloc_type_malloc(12 * a4, 0x10000403E1C8BA9uLL);
  if (!v11)
  {
    return 4294967293;
  }

  v12 = v11;
  memcpy(v11, a5, v10);
  if (v6)
  {
    v13 = v12;
    do
    {
      *v13 = vrev32_s8(*v13);
      v13[1].i32[0] = bswap32(v13[1].u32[0]);
      v13 = (v13 + 12);
      --v6;
    }

    while (v6);
  }

  v14 = sub_23EB4D4BC(a1, a2 & 0xC, v9, 0x14u, v10, v12);
  free(v12);
  return v14;
}

uint64_t sub_23EB4D208(_BYTE *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294960591;
  }

  memset(&v8[2], 0, 96);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = v8;
  }

  memset(v8, 0, 32);
  result = sub_23EB4DE88(a1, a2, a3, 128, 128, v5->i8, 0);
  if (!result)
  {
    if (sub_23EB4BAF0(v5))
    {
      *v5 = vrev32q_s8(*v5);
      v7 = v8;
      if (a4)
      {
        v7 = a4;
      }

      v7[1] = vrev32q_s8(v7[1]);
      result = bswap32(v7[2].u32[0]);
      v7[2].i32[0] = result;
    }

    else
    {
      return 4294967290;
    }
  }

  return result;
}

uint64_t sub_23EB4D2E4(_BYTE *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  if (!a4)
  {
    return 4294960591;
  }

  result = sub_23EB4DE88(a1, a2, a3, 12, 12, a4, 0);
  if (!result)
  {
    *a4 = vrev32_s8(*a4);
    a4[1].i32[0] = bswap32(a4[1].u32[0]);
  }

  return result;
}

uint64_t sub_23EB4D354(_BYTE *a1, char a2, uint64_t a3, char *a4, char *a5, unsigned int a6, char *a7, int a8)
{
  v8 = 4294960591;
  if (!a4)
  {
    return v8;
  }

  if (!a5)
  {
    return v8;
  }

  v8 = sub_23EB4C1D4(a1, a4, a5, 0);
  if (v8)
  {
    return v8;
  }

  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (a1[352])
  {
    v16 = "";
  }

  else
  {
    v16 = a5;
  }

  v17 = sub_23EB4D4BC(a1, a2 & 0xC, v16, 0x15u, 0xFFFFFFFFuLL, 0);
  if (!v17)
  {
    v17 = sub_23EB4D208(a1, v18, a3, 0);
    if (!v17)
    {
      v24 = a6;
      v25 = a8;
      v17 = sub_23EB4D5E0(a1, 0, &v24, a7);
      if (!v17)
      {
        v8 = sub_23EB4D690(a1, 0, 0);
        if (v8)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v17 = sub_23EB4D714(a1, v20, a3, &v22);
          if (v17)
          {
            break;
          }

          if (v8)
          {
            v21 = 1;
          }

          else
          {
            v21 = HIDWORD(v23) == 0;
          }

          if (v21)
          {
            v8 = v8;
          }

          else
          {
            v8 = HIDWORD(v23);
          }

          if (!v22.i32[0])
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  v8 = v17;
LABEL_11:
  if ((a2 & 4) == 0 || v8 == -6753 || v8 == 32 || v8 == 54)
  {
    sub_23EB4CC34(a1);
  }

  return v8;
}

uint64_t sub_23EB4D4BC(_BYTE *a1, unsigned int a2, const char *a3, unsigned int a4, size_t a5, unsigned __int8 *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  result = 4294960591;
  if (a1 && a3)
  {
    v10 = a2;
    if (a1[352])
    {
      v11 = "";
    }

    else
    {
      v11 = a3;
    }

    if (a6 || a5 == 0xFFFFFFFF || !a5)
    {
      memset(v12, 0, sizeof(v12));
      sub_23EB4B80C(a2 & 4 | (32 * ((a2 >> 3) & 1)), 0, a4, a5, a6, v11, v12);
      result = sub_23EB4DD94(a1, v10, 0x7FFFFFFF, 0x80uLL, v12);
      if (!result && a5 && a5 != 0xFFFFFFFF)
      {
        return sub_23EB4DD94(a1, v10, 0x7FFFFFFF, a5, a6);
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t sub_23EB4D5E0(_BYTE *a1, char a2, unsigned int *a3, char *a4)
{
  result = 4294960591;
  if (a1)
  {
    if (a3)
    {
      v9 = a3[2];
      if (a4 || !v9)
      {
        v10 = bswap32(a3[1] & 0xFFFFFFFD);
        v12[0] = bswap32(*a3);
        v12[1] = v10;
        v12[2] = bswap32(v9);
        result = sub_23EB4DD94(a1, a2, 0x7FFFFFFF, 0xCuLL, v12);
        if (!result)
        {
          v11 = a3[2];
          if (v11)
          {
            return sub_23EB4DD94(a1, a2, 0x7FFFFFFF, v11, a4);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EB4D690(_BYTE *a1, char a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v6 = 0;
  v7 = 0x4000000;
  v8 = bswap32(a3);
  result = sub_23EB4DD94(a1, a2, 0x7FFFFFFF, 0xCuLL, &v6);
  if (!result)
  {
    return sub_23EB4DD94(a1, a2, 0x7FFFFFFF, 4uLL, &v8);
  }

  return result;
}

uint64_t sub_23EB4D714(_BYTE *a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  if (!a4)
  {
    return 4294960591;
  }

  result = sub_23EB4DE88(a1, a2, a3, 12, 12, a4, 0);
  if (!result)
  {
    *a4 = vrev32_s8(*a4);
    v9 = a4[1].u32[0];
    a4[1].i32[0] = bswap32(v9);
    if (v9 == 0x4000000)
    {
      v10 = &a4[1] + 4;
      result = sub_23EB4DE88(a1, v8, a3, 4, 4, v10, 0);
      if (!result)
      {
        v11.i32[0] = *v10;
        v12 = vrev64_s16(*&vmovl_u8(v11));
        *v10 = vuzp1_s8(v12, v12).u32[0];
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t sub_23EB4D7D0(_BYTE *a1, char a2, uint64_t a3, char *a4, char *a5, unint64_t a6, unsigned __int8 *a7)
{
  v11 = a3;
  *&v26[12] = *MEMORY[0x277D85DE8];
  if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
  {
    sub_23EB75374(&dword_27E380E78, "ACPStatus ACPClientUpdateFirmware(ACPClientRef, ACPClientOptions, ACPDuration, const char *, const char *, ACPByteCount, const void *)", 3000, "updating firmware (host=%s, pass=%s, size=%u, data:)\n", a4, a5, a6);
  }

  v14 = 0;
  v23 = 0;
  v15 = 4294960591;
  if (a1 && a6 && a7)
  {
    if (a6 >= 3 && *a7 == 80 && a7[1] == 75)
    {
      v14 = 0;
      goto LABEL_21;
    }

    v16 = sub_23EB4BCA8(a7, a6, 0, 0, &v23, 0, 0);
    if (v16 == -20 || (v15 = v16, v16 == -15))
    {
      if (a6 >= 0x180001)
      {
        v14 = 0;
        v15 = 4294967281;
        goto LABEL_35;
      }

      v14 = malloc_type_malloc(0x180000uLL, 0x100004077774924uLL);
      if (!v14)
      {
        v15 = 4294967293;
        goto LABEL_35;
      }

      v21 = *&a7[a6 - 4];
      v22 = *&a7[a6 - 8];
      __memcpy_chk();
      bzero(&v14[a6 - 8], 1572872 - a6);
      *(v14 + 393214) = v22;
      *(v14 + 393215) = v21;
      if (v21 != bswap32(sub_23EB4B99C(1u, 0x1388uLL, v14, 0x17FFFCuLL)))
      {
        v15 = 4294967290;
        goto LABEL_35;
      }

      a7 = v14;
      a6 = 1572864;
      v11 = v11;
      goto LABEL_21;
    }

    v14 = 0;
    if (!v16)
    {
      v14 = 0;
      if (v23)
      {
        v15 = 4294967276;
        goto LABEL_35;
      }

LABEL_21:
      v17 = sub_23EB4DB08(a1, 0, a3, a4, a5, 3u, a6, a7);
      if (v17)
      {
LABEL_34:
        v15 = v17;
        goto LABEL_35;
      }

      if (a2)
      {
        v24 = 1633899086;
        v25 = 0;
        if ((a2 & 2) == 0)
        {
          v18 = 1;
LABEL_33:
          v17 = sub_23EB4DBF8(a1, 0, v11, a4, a5, v18, &v24);
          goto LABEL_34;
        }

        v19 = v26;
        v18 = 2;
      }

      else
      {
        if ((a2 & 2) == 0)
        {
          v15 = 0;
          goto LABEL_35;
        }

        v19 = &v24;
        v18 = 1;
      }

      *v19 = 1633899074;
      *(v19 + 2) = 0;
      goto LABEL_33;
    }
  }

LABEL_35:
  if (dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
  {
    sub_23EB75374(&dword_27E380E78, "ACPStatus ACPClientUpdateFirmware(ACPClientRef, ACPClientOptions, ACPDuration, const char *, const char *, ACPByteCount, const void *)", 3000, "updating firmware done (err=%#m)\n", v15);
  }

  if (v14)
  {
    free(v14);
  }

  return v15;
}

uint64_t sub_23EB4DB08(_BYTE *a1, char a2, uint64_t a3, char *a4, char *a5, unsigned int a6, size_t a7, unsigned __int8 *a8)
{
  v8 = 4294960591;
  if (a4 && a5 && (!a7 || a8))
  {
    v8 = sub_23EB4C1D4(a1, a4, a5, 0);
    if (!v8)
    {
      if (a1[352])
      {
        v15 = "";
      }

      else
      {
        v15 = a5;
      }

      v8 = sub_23EB4D4BC(a1, 0, v15, a6, a7, a8);
      if (!v8)
      {
        v8 = sub_23EB4D208(a1, v16, 0x7FFFFFFFLL, 0);
      }

      if ((a2 & 4) == 0 || v8 == -6753 || v8 == 32 || v8 == 54)
      {
        sub_23EB4CC34(a1);
      }
    }
  }

  return v8;
}

uint64_t sub_23EB4DBF8(_BYTE *a1, char a2, uint64_t a3, char *a4, char *a5, uint64_t a6, unsigned int *a7)
{
  v7 = 4294960591;
  if (a4)
  {
    if (a5)
    {
      v9 = a6;
      if (a6)
      {
        v10 = a7;
        if (a7)
        {
          v7 = sub_23EB4C1D4(a1, a4, a5, 0);
          if (!v7)
          {
            v20 = 0;
            v21 = 0;
            if (a1[352])
            {
              v14 = "";
            }

            else
            {
              v14 = a5;
            }

            v15 = sub_23EB4D4BC(a1, 0, v14, 0x15u, 0xFFFFFFFFuLL, 0);
            if (!v15)
            {
              v15 = sub_23EB4D208(a1, v16, a3, 0);
              if (!v15)
              {
                do
                {
                  if (v10[2])
                  {
                    v7 = 4294967281;
                    goto LABEL_12;
                  }

                  v15 = sub_23EB4D5E0(a1, 0, v10, 0);
                  if (v15)
                  {
                    goto LABEL_11;
                  }

                  v10 += 3;
                  --v9;
                }

                while (v9);
                v15 = sub_23EB4D690(a1, 0, 0);
                if (!v15)
                {
                  while (1)
                  {
                    v15 = sub_23EB4D714(a1, v18, a3, &v20);
                    if (v15)
                    {
                      break;
                    }

                    v7 = HIDWORD(v21);
                    if (HIDWORD(v21))
                    {
                      v19 = 1;
                    }

                    else
                    {
                      v19 = v20.i32[0] == 0;
                    }

                    if (v19)
                    {
                      goto LABEL_12;
                    }
                  }
                }
              }
            }

LABEL_11:
            v7 = v15;
LABEL_12:
            if ((a2 & 4) == 0 || v7 == -6753 || v7 == 54 || v7 == 32)
            {
              sub_23EB4CC34(a1);
            }
          }
        }
      }
    }
  }

  return v7;
}

size_t sub_23EB4DD94(_BYTE *a1, char a2, int a3, size_t size, char *a5)
{
  v5 = size;
  if (!size)
  {
    return v5;
  }

  if (*(a1 + 176))
  {
    v9 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v9)
    {
      return 4294960568;
    }

    v10 = v9;
    sub_23EB4F720(a1 + 30, a5, v5, v9);
    a5 = v10;
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 0;
    if ((a2 & 0x10) == 0)
    {
LABEL_5:
      v11 = (*(*a1 + 32))();
      goto LABEL_9;
    }
  }

  v11 = sub_23EB71DC4((a1 + 176), a5, v5);
LABEL_9:
  v5 = v11;
  if (v10)
  {
    free(v10);
  }

  return v5;
}

uint64_t sub_23EB4DE88(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7)
{
  if (!a1)
  {
    return 4294960591;
  }

  v11 = 0;
  result = (*(*a1 + 24))();
  if (!result)
  {
    if (a1[352] || a1[353])
    {
      sub_23EB4F720(a1 + 37, a6, v11, a6);
    }

    result = 0;
    if (a7)
    {
      *a7 = v11;
    }
  }

  return result;
}

uint64_t sub_23EB4DF48(void *a1, int a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  v3 = a1[26];
  if (!v3)
  {
    return 0;
  }

  result = (*(*a1 + 32))(*a1, a1[25], v3, (a2 / 1000));
  if (!result)
  {
    a1[26] = 0;
  }

  return result;
}

uint64_t sub_23EB4DFBC(_BYTE *a1, int a2, uint64_t a3, char *a4, char *a5, unsigned int a6, const __CFString *a7, unsigned int *a8)
{
  v35 = *MEMORY[0x277D85DE8];
  theData = 0;
  v8 = 4294960591;
  if (!a4)
  {
    return v8;
  }

  v9 = a5;
  if (!a5)
  {
    return v8;
  }

  v8 = sub_23EB4C1D4(a1, a4, a5, 0);
  if (v8)
  {
    return v8;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0;
  if (a1[352])
  {
    v9 = "";
  }

  if (a7)
  {
    v16 = sub_23EB6E6A4(*MEMORY[0x277CBECE8], a7, &theData);
    if (v16)
    {
      goto LABEL_8;
    }

    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v19 = malloc_type_malloc(Length + 4, 0x100004090D0E795uLL);
  if (!v19)
  {
    v8 = 4294960568;
    goto LABEL_23;
  }

  v20 = v19;
  *v19 = bswap32(a6);
  if (Length)
  {
    memcpy(v19 + 4, BytePtr, Length);
  }

  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  v8 = sub_23EB4D4BC(a1, a2 | 4u, v9, 0x18u, Length + 4, v20);
  free(v20);
  if (v8)
  {
    goto LABEL_23;
  }

  v16 = sub_23EB4D208(a1, v21, a3, &v27);
  if (!v16)
  {
    if (v28 != 4)
    {
      v8 = 4294960553;
      goto LABEL_23;
    }

    v16 = sub_23EB4DE88(a1, v22, a3, 4, 4, &v25, 0);
    if (!v16)
    {
      v23 = bswap32(v25);
      v25 = v23;
      v8 = 0;
      if (a8)
      {
        *a8 = v23;
      }

      goto LABEL_23;
    }
  }

LABEL_8:
  v8 = v16;
LABEL_23:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v8 == -6753 || v8 == 54 || v8 == 32)
  {
    sub_23EB4CC34(a1);
  }

  return v8;
}

uint64_t sub_23EB4E1FC(_BYTE *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v15 = 0;
  v16 = 0;
  v6 = sub_23EB4DE88(a1, a2, a2, 8, 8, &v16, 0);
  if (v6)
  {
    return v6;
  }

  v8 = HIDWORD(v16);
  v9 = bswap32(HIDWORD(v16));
  HIDWORD(v16) = v9;
  if (!v8)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = 0;
      *a3 = Mutable;
      return v6;
    }

    return 4294960568;
  }

  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  if (!v10)
  {
    return 4294960568;
  }

  v12 = v10;
  v13 = sub_23EB4DE88(a1, v11, a2, HIDWORD(v16), HIDWORD(v16), v10, 0);
  if (v13)
  {
    v6 = v13;
  }

  else
  {
    v6 = sub_23EB6EC4C(*MEMORY[0x277CBECE8], v12, HIDWORD(v16), &v15);
    if (!v6)
    {
      *a3 = v15;
    }
  }

  free(v12);
  return v6;
}

uint64_t sub_23EB4E32C(_BYTE *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, void *a6, uint64_t a7, const UInt8 *a8, unsigned int *a9)
{
  v14 = a2;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  cf = 0;
  v16 = *MEMORY[0x277CBECE8];
  v17 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v25, "{%kO=%O%kO={%@}}", @"function", a7, @"inputs", &v24);
  if (v17 || (v17 = sub_23EB6FE30(v16, v24, a8, a9), v17) || (v17 = sub_23EB4E49C(a1, v14, a3, a4, a5, v25, &cf), v17) || (sub_23EB6FF14(cf, &v22, "%kO:err", @"status"), v17))
  {
    v18 = v17;
  }

  else
  {
    v18 = v22;
    if (!v22)
    {
      if (a6)
      {
        Value = CFDictionaryGetValue(cf, @"outputs");
        if (Value)
        {
          v21 = Value;
          CFRetain(Value);
          v18 = 0;
          *a6 = v21;
        }

        else
        {
          v18 = 4294960554;
        }
      }

      else
      {
        v18 = 0;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v18;
}

uint64_t sub_23EB4E49C(_BYTE *a1, unsigned int a2, uint64_t a3, char *a4, char *a5, const __CFString *a6, CFTypeRef *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v13 = sub_23EB4C1D4(a1, a4, a5, 0);
  if (v13)
  {
    return v13;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  *size = 0u;
  theData = 0;
  v14 = a1[352];
  v15 = *MEMORY[0x277CBECE8];
  v16 = sub_23EB6E6A4(*MEMORY[0x277CBECE8], a6, &theData);
  if (!v16)
  {
    if (v14)
    {
      v17 = "";
    }

    else
    {
      v17 = a5;
    }

    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v13 = sub_23EB4D4BC(a1, a2, v17, 0x19u, Length, BytePtr);
    CFRelease(theData);
    if (v13)
    {
      goto LABEL_8;
    }

    v16 = sub_23EB4D208(a1, v20, a3, &v26);
    if (!v16)
    {
      if (LODWORD(size[0]))
      {
        v22 = malloc_type_malloc(LODWORD(size[0]), 0xAC9AC7E1uLL);
        if (v22)
        {
          v24 = v22;
          v13 = sub_23EB4DE88(a1, v23, a3, LODWORD(size[0]), LODWORD(size[0]), v22, 0);
          if (!v13)
          {
            v13 = sub_23EB6EC4C(v15, v24, LODWORD(size[0]), a7);
          }

          free(v24);
        }

        else
        {
          v13 = 4294960568;
        }
      }

      else
      {
        v13 = 4294960553;
      }

      goto LABEL_8;
    }
  }

  v13 = v16;
LABEL_8:
  if ((a2 & 4) == 0 || v13 == -6753 || v13 == 32 || v13 == 54)
  {
    sub_23EB4CC34(a1);
  }

  return v13;
}

uint64_t sub_23EB4E684(char **a1, const char *a2, const char *a3, int a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v14 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10F0040894D8A09uLL);
  if (v14)
  {
    v15 = v14;
    *v14 = 1634561902;
    v16 = v14 + 8;
    v17 = pthread_mutex_init((v14 + 8), 0);
    if (v17)
    {
      goto LABEL_3;
    }

    *(v15 + 9) = v16;
    v19 = strdup(a2);
    *(v15 + 12) = v19;
    if (!v19 || (v20 = strdup(a3), (*(v15 + 13) = v20) == 0))
    {
      v18 = 4294960568;
      goto LABEL_14;
    }

    *(v15 + 28) = a4;
    *(v15 + 15) = a6;
    *(v15 + 16) = a7;
    if (a5)
    {
      CFRetain(a5);
      *(v15 + 17) = a5;
    }

    v17 = sub_23EB4C01C(2, a4, v15 + 11);
    if (v17 || (v17 = sub_23EB4DFBC(*(v15 + 11), 0, 30000, *(v15 + 12), *(v15 + 13), 0, *(v15 + 17), 0), v17))
    {
LABEL_3:
      v18 = v17;
    }

    else
    {
      v18 = pthread_create(v15 + 18, 0, sub_23EB4E7EC, v15);
      if (!v18)
      {
        *(v15 + 19) = v15 + 144;
        *a1 = v15;
        return v18;
      }
    }

LABEL_14:
    sub_23EB4E93C(v15);
    return v18;
  }

  return 4294960568;
}

uint64_t sub_23EB4E7EC(uint64_t a1)
{
  v2 = a1 + 88;
  v3 = (a1 + 160);
  v4 = sub_23EB4E1FC(*(a1 + 88), 0x7FFFFFFFLL, (a1 + 160));
  if (v4)
  {
LABEL_5:
    if (v4 != -6723 && dword_27E380E78 <= 3000 && (dword_27E380E78 != -1 || sub_23EB74AC8(&dword_27E380E78, 0xBB8u)))
    {
      sub_23EB75374(&dword_27E380E78, "void *__ACPMonitoringClient_Thread(void *)", 3000, "[ACPMonitoring %p] read event error: %#m\n", a1);
    }

    v5 = (a1 + 72);
    pthread_mutex_lock(*(a1 + 72));
    v7 = *(a1 + 88);
    if (v7)
    {
      sub_23EB4C0BC(v7);
      v3 = v2;
LABEL_12:
      *v3 = 0;
    }
  }

  else
  {
    v5 = (a1 + 72);
    v6 = MEMORY[0x277D85CD0];
    while (1)
    {
      pthread_mutex_lock(*(a1 + 72));
      if (*(a1 + 80))
      {
        break;
      }

      ++*(a1 + 168);
      pthread_mutex_unlock(*(a1 + 72));
      dispatch_sync_f(v6, a1, sub_23EB4EB28);
      v4 = sub_23EB4E1FC(*(a1 + 88), 0x7FFFFFFFLL, (v2 + 72));
      if (v4)
      {
        goto LABEL_5;
      }
    }

    if (*v3)
    {
      CFRelease(*v3);
      goto LABEL_12;
    }
  }

  pthread_mutex_unlock(*v5);
  return 0;
}

uint64_t sub_23EB4E93C(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (*a1 != 1634561902)
  {
    return 4294960556;
  }

  v2 = *(a1 + 9);
  if (v2)
  {
    pthread_mutex_lock(v2);
    v3 = *(a1 + 9);
    v4 = a1[80];
    a1[80] = 1;
    if (v3)
    {
      pthread_mutex_unlock(v3);
    }

    if (v4)
    {
      return 4294960572;
    }
  }

  else
  {
    v6 = a1[80];
    a1[80] = 1;
    if (v6)
    {
      return 4294960572;
    }
  }

  if (pthread_main_np())
  {
    sub_23EB4EA28(a1);
  }

  else
  {
    v7 = *(a1 + 9);
    if (v7)
    {
      pthread_mutex_lock(v7);
      v8 = *(a1 + 9);
      v9 = *(a1 + 42);
      if (v8)
      {
        pthread_mutex_unlock(v8);
      }
    }

    else
    {
      v9 = *(a1 + 42);
    }

    if (!v9)
    {
      dispatch_async_f(MEMORY[0x277D85CD0], a1, sub_23EB4EA28);
    }
  }

  return 0;
}

void sub_23EB4EA28(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    pthread_mutex_lock(v2);
    v3 = *(a1 + 72);
    v4 = *(a1 + 168);
    if (v3)
    {
      pthread_mutex_unlock(v3);
    }
  }

  else
  {
    v4 = *(a1 + 168);
  }

  if (v4 <= 0)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      pthread_mutex_lock(v5);
      v6 = *(a1 + 88);
      if (v6)
      {
        *(v6 + 8) = 1;
        if (*v6)
        {
          sub_23EB7CE44(*v6);
        }
      }

      pthread_mutex_unlock(*(a1 + 72));
    }

    if (*(a1 + 152))
    {
      pthread_join(*(a1 + 144), 0);
      *(a1 + 152) = 0;
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      sub_23EB4C0BC(v7);
      *(a1 + 88) = 0;
    }

    v8 = *(a1 + 136);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 136) = 0;
    }

    v9 = *(a1 + 104);
    if (v9)
    {
      free(v9);
      *(a1 + 104) = 0;
    }

    v10 = *(a1 + 96);
    if (v10)
    {
      free(v10);
      *(a1 + 96) = 0;
    }

    v11 = *(a1 + 72);
    if (v11)
    {
      pthread_mutex_destroy(v11);
    }

    free(a1);
  }
}

void sub_23EB4EB28(void *context)
{
  if (!*(context + 80))
  {
    (*(context + 15))(0, *(context + 20), *(context + 16));
  }

  v2 = *(context + 20);
  if (v2)
  {
    CFRelease(v2);
    *(context + 20) = 0;
  }

  if (atomic_fetch_add(context + 42, 0xFFFFFFFF) == 1 && *(context + 80))
  {
    v3 = MEMORY[0x277D85CD0];

    dispatch_async_f(v3, context, sub_23EB4EA28);
  }
}

uint64_t sub_23EB4EBC4(int a1, unsigned __int8 *a2, unint64_t a3, int a4, __CFString **a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0;
  if (sub_23EB4BB3C(a1, &v23))
  {
LABEL_2:
    v10 = CFDataCreate(*MEMORY[0x277CBECE8], a2, a3);
    if (v10)
    {
LABEL_3:
      v11 = v10;
LABEL_4:
      result = 0;
      *a5 = v11;
      return result;
    }

    return 4294960568;
  }

  v13 = *(v23 + 1);
  if (v13 > 6)
  {
    if (v13 <= 10)
    {
      if (v13 != 7)
      {
        if (v13 != 8)
        {
          if (v13 == 10)
          {
            return 4294960562;
          }

          goto LABEL_2;
        }

        if (a3 == 6)
        {
          sub_23EB7E798(a2, 6, cStr);
          goto LABEL_54;
        }

        v11 = @"00:00:00:00:00:00";
LABEL_48:
        CFRetain(v11);
        goto LABEL_4;
      }

      if (a3 != 4)
      {
        v11 = @"0.0.0.0";
        goto LABEL_48;
      }

      __sprintf_chk(cStr, 0, 0x80uLL, "%u.%u.%u.%u", *a2, a2[1], a2[2], a2[3]);
      goto LABEL_54;
    }

    if (v13 == 11)
    {
      goto LABEL_2;
    }

    if (v13 == 12)
    {
      if (a3 != 16)
      {
        v11 = @"::";
        goto LABEL_48;
      }

      sub_23EB7E0B8(a2, 0, -1, 0xFFFFFFFF, cStr);
LABEL_54:
      v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      if (v10)
      {
        goto LABEL_3;
      }

      return 4294960568;
    }

    if (v13 != 13)
    {
      goto LABEL_2;
    }

    if (a3)
    {
      if (!sub_23EB6EC4C(*MEMORY[0x277CBECE8], a2, a3, &v22))
      {
        v11 = v22;
        goto LABEL_4;
      }

      v10 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v10)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (a1 == 1298223988)
      {
        v21 = CFArrayCreate(0, 0, 0, MEMORY[0x277CBF128]);
      }

      else
      {
        v21 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v11 = v21;
      if (v21)
      {
        goto LABEL_4;
      }
    }

    return 4294960568;
  }

  if (v13 > 3)
  {
    if (v13 == 4)
    {
      if (a3 == 2)
      {
        v17 = *a2;
        if (a4 < 1)
        {
          v18 = v17 | (a2[1] << 8);
        }

        else
        {
          v18 = a2[1] | (v17 << 8);
        }

        *cStr = v18;
      }

      else
      {
        *cStr = 0;
      }

      v19 = *MEMORY[0x277CBECE8];
      v20 = kCFNumberSInt32Type;
    }

    else
    {
      if (v13 != 5)
      {
        if (a3 == 1 && *a2)
        {
          v14 = MEMORY[0x277CBED28];
        }

        else
        {
          v14 = MEMORY[0x277CBED10];
        }

        v11 = *v14;
        goto LABEL_4;
      }

      if (a3 == 4)
      {
        if (a4 < 1)
        {
          v16 = *a2;
        }

        else
        {
          v16 = bswap32(*a2);
        }

        *cStr = v16;
      }

      else
      {
        *cStr = 0;
      }

      v19 = *MEMORY[0x277CBECE8];
      v20 = kCFNumberSInt64Type;
    }

LABEL_63:
    v10 = CFNumberCreate(v19, v20, cStr);
    if (v10)
    {
      goto LABEL_3;
    }

    return 4294960568;
  }

  if (v13 != 2)
  {
    if (v13 != 3)
    {
      goto LABEL_2;
    }

    if (a3 == 1)
    {
      v15 = *a2;
    }

    else
    {
      v15 = 0;
    }

    *cStr = v15;
    v19 = *MEMORY[0x277CBECE8];
    v20 = kCFNumberSInt16Type;
    goto LABEL_63;
  }

  v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], a2, a3, 0x8000100u, 0);
  if (v10)
  {
    goto LABEL_3;
  }

  return 4294960554;
}

uint64_t sub_23EB4EF94(int a1, const __CFString *cf, int a3, CFDataRef *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  __s = 0;
  v26 = 0;
  v25 = 0;
  valuePtr = 0;
  v8 = CFGetTypeID(cf);
  if (sub_23EB4BB3C(a1, &v29))
  {
LABEL_2:
    if (v8 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      v11 = 0;
      v12 = BytePtr;
      goto LABEL_4;
    }

    return 4294960540;
  }

  v16 = *(v29 + 1);
  if (v16 <= 5)
  {
    if (v16 > 3)
    {
      if (v16 == 4)
      {
        if (v8 != CFNumberGetTypeID())
        {
          return 4294960540;
        }

        if (CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) && (valuePtr + 0x8000) >> 15 <= 2)
        {
          v21 = bswap32(valuePtr) >> 16;
          if (a3 <= 0)
          {
            v22 = valuePtr;
          }

          else
          {
            v22 = v21;
          }

          LOWORD(v31) = v22;
          v11 = *MEMORY[0x277CBECE8];
          v12 = &v31;
          Length = 2;
LABEL_4:
          v13 = CFDataCreate(v11, v12, Length);
          if (v13)
          {
            v14 = v13;
LABEL_6:
            v15 = 0;
            *a4 = v14;
            return v15;
          }

          return 4294960568;
        }
      }

      else
      {
        if (v8 != CFNumberGetTypeID())
        {
          return 4294960540;
        }

        if (CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) && (valuePtr + 0x80000000) >> 31 <= 2)
        {
          v18 = bswap32(valuePtr);
          if (a3 <= 0)
          {
            v19 = valuePtr;
          }

          else
          {
            v19 = v18;
          }

          goto LABEL_66;
        }
      }
    }

    else
    {
      if (v16 == 2)
      {
        if (v8 != CFStringGetTypeID())
        {
          return 4294960540;
        }

        v17 = sub_23EB70FE4(cf, &__s, &v27);
        if (!v17)
        {
          v20 = strlen(__s);
          v14 = CFDataCreate(*MEMORY[0x277CBECE8], __s, v20);
          if (v27)
          {
            free(v27);
          }

          if (v14)
          {
            goto LABEL_6;
          }

          return 4294960568;
        }

        return v17;
      }

      if (v16 != 3)
      {
        goto LABEL_2;
      }

      if (v8 != CFNumberGetTypeID())
      {
        return 4294960540;
      }

      if (CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) && (valuePtr + 128) <= 0x17F)
      {
        v26 = valuePtr;
        goto LABEL_58;
      }
    }

    return 4294960586;
  }

  if (v16 <= 7)
  {
    if (v16 != 6)
    {
      if (v8 != CFStringGetTypeID())
      {
        return 4294960540;
      }

      if (CFStringGetLength(cf))
      {
        v17 = sub_23EB70FE4(cf, &__s, &v27);
        if (v17)
        {
          return v17;
        }

        v15 = sub_23EB7DE5C(__s, 0, &v25, 0, 0, 0, 0);
        if (v27)
        {
          free(v27);
        }

        if (v15)
        {
          return v15;
        }

        v19 = bswap32(v25);
      }

      else
      {
        v19 = 0;
      }

LABEL_66:
      v25 = v19;
      v11 = *MEMORY[0x277CBECE8];
      v12 = &v25;
      Length = 4;
      goto LABEL_4;
    }

    if (v8 != CFBooleanGetTypeID())
    {
      return 4294960540;
    }

    v26 = CFBooleanGetValue(cf) != 0;
LABEL_58:
    v11 = *MEMORY[0x277CBECE8];
    v12 = &v26;
    Length = 1;
    goto LABEL_4;
  }

  switch(v16)
  {
    case 8:
      if (v8 != CFStringGetTypeID())
      {
        return 4294960540;
      }

      v17 = sub_23EB70FE4(cf, &__s, &v27);
      if (v17)
      {
        return v17;
      }

      v15 = sub_23EB7E668(__s, 0xFFFFFFFFFFFFFFFFLL, 6, &v31);
      if (v27)
      {
        free(v27);
      }

      if (!v15)
      {
        v11 = *MEMORY[0x277CBECE8];
        v12 = &v31;
        Length = 6;
        goto LABEL_4;
      }

      break;
    case 12:
      if (v8 != CFStringGetTypeID())
      {
        return 4294960540;
      }

      if (!CFStringGetLength(cf))
      {
        v31 = 0uLL;
LABEL_68:
        v11 = *MEMORY[0x277CBECE8];
        v12 = &v31;
        Length = 16;
        goto LABEL_4;
      }

      v17 = sub_23EB70FE4(cf, &__s, &v27);
      if (v17)
      {
        return v17;
      }

      v15 = sub_23EB7D978(__s, 0, &v31, 0, 0, 0, 0);
      if (v27)
      {
        free(v27);
      }

      if (!v15)
      {
        goto LABEL_68;
      }

      break;
    case 13:
      v17 = sub_23EB6E6A4(*MEMORY[0x277CBECE8], cf, &v30);
      if (!v17)
      {
        v14 = v30;
        goto LABEL_6;
      }

      return v17;
    default:
      goto LABEL_2;
  }

  return v15;
}

uint64_t sub_23EB4F404(int a1, UInt8 *a2, size_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  result = sub_23EB4BB3C(a1, &v14);
  if (!result)
  {
    v8 = *(v14 + 1);
    result = 4294960561;
    if (v8 <= 5)
    {
      if ((v8 - 3) >= 3)
      {
        if (v8 != 2)
        {
          return result;
        }

        v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], a2, a3, 0x8000100u, 0);
        if (v9)
        {
LABEL_29:
          v11 = v9;
LABEL_33:
          result = 0;
          *a4 = v11;
          return result;
        }
      }

      else if (sub_23EB7F3B0(a2, a3, "%li", &v13) == 1)
      {
        *valuePtr = v13;
        v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, valuePtr);
        if (!v9)
        {
          return 4294960568;
        }

        goto LABEL_29;
      }

      return 4294960554;
    }

    if (v8 > 7)
    {
      if (v8 == 8)
      {
        result = sub_23EB7E668(a2, a3, 6, &v16);
        if (result)
        {
          return result;
        }

        sub_23EB7E798(&v16, 6, valuePtr);
      }

      else
      {
        if (v8 != 12)
        {
          return result;
        }

        result = sub_23EB7D978(a2, 0, &v16, 0, 0, 0, 0);
        if (result)
        {
          return result;
        }

        sub_23EB7E0B8(&v16, 0, -1, 0xFFFFFFFF, valuePtr);
      }
    }

    else
    {
      if (v8 == 6)
      {
        if (!strncmp(a2, "1", a3) || !strcasecmp(a2, "true") || !strcasecmp(a2, "yes"))
        {
          v10 = MEMORY[0x277CBED28];
        }

        else
        {
          if (strncmp(a2, "0", a3) && strcasecmp(a2, "false") && strcasecmp(a2, "no"))
          {
            return 4294960554;
          }

          v10 = MEMORY[0x277CBED10];
        }

        v11 = *v10;
        if (v11)
        {
          goto LABEL_33;
        }

        return 4294960554;
      }

      result = sub_23EB7DE5C(a2, 0, &v12, 0, 0, 0, 0);
      if (result)
      {
        return result;
      }

      sub_23EB765A4(v12, 0xFFFFFFFF, valuePtr);
    }

    v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], valuePtr, 0x8000100u);
    if (!v9)
    {
      return 4294960568;
    }

    goto LABEL_29;
  }

  return result;
}

__n128 sub_23EB4F6C4(CCCryptorRef *cryptorRef, void *key, __n128 *a3)
{
  *cryptorRef = 0;
  if (!CCCryptorCreate(0, 0, 2u, key, 0x10uLL, 0, cryptorRef))
  {
    result = *a3;
    *(cryptorRef + 1) = *a3;
    cryptorRef[5] = 0;
    *(cryptorRef + 48) = 0;
  }

  return result;
}

uint64_t sub_23EB4F720(void *dataIn, char *a2, unint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v8 = dataIn + 3;
  v9 = dataIn[5];
  if (a3 && v9)
  {
    do
    {
      v10 = *a2++;
      *a4++ = *(v8 + v9) ^ v10;
      v9 = (v9 + 1) & 0xFLL;
      --v5;
    }

    while (v5 && v9);
  }

  dataOutMoved = 0;
  dataIn[5] = v9;
  if (v5 < 0x10)
  {
LABEL_18:
    if (v5)
    {
      v19 = dataIn + 1;
      result = CCCryptorUpdate(*dataIn, dataIn + 1, 0x10uLL, v8, 0x10uLL, &dataOutMoved);
      if (result)
      {
        return result;
      }

      if (dataOutMoved != 16)
      {
        return 4294960553;
      }

      v20 = 15;
      do
      {
        if (++*(v19 + v20))
        {
          v22 = 1;
        }

        else
        {
          v22 = v20 == 0;
        }

        --v20;
      }

      while (!v22);
      v23 = 0;
      dataOutMoved = 0;
      do
      {
        v24 = *(v8 + v9++);
        a4[v23] = v24 ^ a2[v23];
        dataOutMoved = ++v23;
      }

      while (v5 != v23);
      if (!*(dataIn + 48))
      {
        result = 0;
        dataIn[5] = v9;
        return result;
      }
    }

    return 0;
  }

  v11 = dataIn + 1;
  while (1)
  {
    result = CCCryptorUpdate(*dataIn, dataIn + 1, 0x10uLL, v8, 0x10uLL, &dataOutMoved);
    if (result)
    {
      return result;
    }

    if (dataOutMoved != 16)
    {
      return 4294960553;
    }

    v13 = 15;
    do
    {
      v14 = *(v11 + v13);
      v15 = v14 + 1;
      *(v11 + v13) = v14 + 1;
      v17 = v13-- != 0;
    }

    while ((v15 & 0x100) != 0 && v17);
    v18 = 0;
    dataOutMoved = 0;
    do
    {
      a4[v18] = *(v8 + v18) ^ a2[v18];
      dataOutMoved = ++v18;
    }

    while (v18 != 16);
    a2 += 16;
    a4 += 16;
    v5 -= 16;
    if (v5 <= 0xF)
    {
      goto LABEL_18;
    }
  }
}

double sub_23EB4F8E0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CCCryptorRelease(v2);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_23EB4FA00(int a1, uint64_t a2, void *a3, void *a4)
{
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v10 = v7;
  if (a4)
  {
    v78 = v7;
    v11 = objc_msgSend_delegate(a4, v7, v8, v9);
    v14 = objc_msgSend_objectForKey_(a3, v12, @"BSAssistantProgressKey_DictionaryParameter", v13);
    if (a1 == 18)
    {
      CompletionDictFromAutoGuessResults = objc_msgSend_createCompletionDictFromAutoGuessResults_(a4, v15, v14, v16);
      objc_msgSend_setGuessCompletionDict_(a4, v18, CompletionDictFromAutoGuessResults, v19);
      if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v23 = objc_msgSend_guessCompletionDict(a4, v20, v21, v22);
        objc_msgSend_autoguessProgressComplete_(v11, v24, v23, v25);
      }

      v7 = objc_msgSend_autoGuessEngineComplete(a4, v20, v21, v22);
      goto LABEL_24;
    }

    if ((a1 - 5) <= 1 && v14)
    {
      v26 = sub_23EB6D22C(v14, 1, v14, v16);
    }

    else if ((a1 - 7) <= 1 && v14)
    {
      v26 = sub_23EB6D18C(v14, 1, v14, v16);
    }

    else
    {
      v26 = objc_msgSend_objectForKey_(a3, v15, @"BSAssistantProgressKey_StringParameter", v16);
    }

    v30 = v26;
    v31 = a1 - 3;
    if ((a1 - 3) > 0xE || ((0x7955u >> v31) & 1) == 0)
    {
      AutoGuessUISelector = objc_msgSend_lastAutoGuessUISelector(a4, v27, v28, v29);
      objc_msgSend_setCurrentAutoGuessUISelector_(a4, v55, AutoGuessUISelector, v56);
      ParamString = objc_msgSend_lastParamString(a4, v57, v58, v59);
      objc_msgSend_setCurrentParamString_(a4, v61, ParamString, v62);
      if (objc_msgSend_lastAutoGuessUISelector(a4, v63, v64, v65) != 14 && v11 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v69 = objc_msgSend_lastAutoGuessUISelector(a4, v66, v68, v67);
        v73 = objc_msgSend_lastParamString(a4, v70, v71, v72);
        objc_msgSend_autoguessProgressUpdated_paramString_(v11, v74, v69, v73);
      }

      objc_msgSend_setLastAutoGuessUISelector_(a4, v66, 14, v67);
      v7 = objc_msgSend_setLastParamString_(a4, v75, &stru_285145FE8, v76);
      goto LABEL_24;
    }

    v32 = dword_23EC21B30[v31];
    v33 = objc_msgSend_currentAutoGuessUISelector(a4, v27, v28, v29);
    objc_msgSend_setLastAutoGuessUISelector_(a4, v34, v33, v35);
    v39 = objc_msgSend_currentParamString(a4, v36, v37, v38);
    objc_msgSend_setLastParamString_(a4, v40, v39, v41);
    objc_msgSend_setCurrentAutoGuessUISelector_(a4, v42, v32, v43);
    v7 = objc_msgSend_setCurrentParamString_(a4, v44, v30, v45);
    v10 = v78;
    if (v11)
    {
      v7 = objc_opt_respondsToSelector();
      v10 = v78;
      if (v7)
      {
        v48 = objc_msgSend_currentAutoGuessUISelector(a4, v78, v46, v47);
        v52 = objc_msgSend_currentParamString(a4, v49, v50, v51);
        v7 = objc_msgSend_autoguessProgressUpdated_paramString_(v11, v53, v48, v52);
LABEL_24:
        v10 = v78;
      }
    }
  }

  return MEMORY[0x2821F96F8](v7, v10);
}

void *sub_23EB52350(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4);
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  if (v9 >= 2)
  {
    v11 = v9;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v34, v38, 16);
    if (v12)
    {
      v15 = v12;
      v16 = 0;
      v17 = *v35;
      do
      {
        v18 = 0;
        v32 = v16;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(a1);
          }

          v19 = objc_msgSend_valueForKey_(*(*(&v34 + 1) + 8 * v18), v13, @"name", v14);
          objc_msgSend_appendString_(v5, v20, v19, v21);
          if (v16 + 2 >= v11)
          {
            if (++v16 < v11)
            {
              v25 = MEMORY[0x277CCACA8];
              v26 = sub_23EB6CD3C(@"CommaListConjunction", qword_27E383800);
              valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v25, v27, v26, @"%@", 0, a2);
              objc_msgSend_appendString_(v5, v29, valid, v30);
            }
          }

          else
          {
            v22 = sub_23EB6CD3C(@"CommaListSeparator", qword_27E383800);
            objc_msgSend_appendString_(v5, v23, v22, v24);
            ++v16;
          }

          ++v18;
        }

        while (v15 != v18);
        v16 = v32 + v15;
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v13, &v34, v38, 16);
      }

      while (v15);
    }
  }

  return v5;
}

void *sub_23EB5252C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4);
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  if (v9 >= 2)
  {
    v11 = v9;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v34, v38, 16);
    if (v12)
    {
      v15 = v12;
      v16 = 0;
      v17 = *v35;
      do
      {
        v18 = 0;
        v32 = v16;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(a1);
          }

          v19 = objc_msgSend_valueForKey_(*(*(&v34 + 1) + 8 * v18), v13, @"SSID_STR", v14);
          objc_msgSend_appendString_(v5, v20, v19, v21);
          if (v16 + 2 >= v11)
          {
            if (++v16 < v11)
            {
              v25 = MEMORY[0x277CCACA8];
              v26 = sub_23EB6CD3C(@"CommaListConjunction", qword_27E383800);
              valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v25, v27, v26, @"%@", 0, a2);
              objc_msgSend_appendString_(v5, v29, valid, v30);
            }
          }

          else
          {
            v22 = sub_23EB6CD3C(@"CommaListSeparator", qword_27E383800);
            objc_msgSend_appendString_(v5, v23, v22, v24);
            ++v16;
          }

          ++v18;
        }

        while (v15 != v18);
        v16 = v32 + v15;
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v13, &v34, v38, 16);
      }

      while (v15);
    }
  }

  return v5;
}

uint64_t sub_23EB527E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (a3)
  {
    v8 = objc_msgSend_assistantCallback_withSelector_(a3, v6, a1, a2);
  }

  else
  {
    v8 = 4294960591;
  }

  return v8;
}

KeychainWrapper *sub_23EB5292C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_keychainWrapperWithMACAddress_(KeychainWrapper, a2, a1[4], a4);
  if (result)
  {
    v6 = result;
    v8 = a1[5];
    v7 = a1[6];
    sub_23EB6CD3C(@"keychainBaseStationDescription", @"AirPortSettings");

    return MEMORY[0x2821F9670](v6, sel_addGenericPassword_withLabel_andDescription_, v8, v7);
  }

  return result;
}

uint64_t sub_23EB52BB0(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v14, v18, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = objc_msgSend_keychainPasswordForMACAddress_(KeychainWrapper, v5, *(*(&v14 + 1) + 8 * i), v6);
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v14, v18, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return objc_msgSend_assistantCallbackKeychainPassword_forBaseStation_(*(a1 + 40), v13, v11, *(a1 + 48));
  }

  return result;
}

void *sub_23EB52DA4(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, a2, &v11, v15, 16);
  if (result)
  {
    v6 = result;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = objc_msgSend_keychainWrapperWithMACAddress_(KeychainWrapper, v4, *(*(&v11 + 1) + 8 * v8), v5);
        if (v9)
        {
          objc_msgSend_removeGenericPassword(v9, v4, v10, v5);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_23EB53AAC(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0;
  sub_23EBEB494(*(a1 + 32), @"BSAssistantCallback_KeychainServiceType", &v32);
  if (v2)
  {
    goto LABEL_2;
  }

  if (!v32)
  {
    goto LABEL_26;
  }

  if (objc_msgSend_isEqualToString_(v32, v3, @"keychainBaseStationType", v4))
  {
    v31 = 0;
    sub_23EBEB494(*(a1 + 32), @"BSAssistantCallback_KeychainAccounts", &v31);
    if (!v2)
    {
      if (v31)
      {
        v10 = objc_msgSend_copy(v31, v7, v8, v9);
        v31 = v10;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v33, 16);
        if (v12)
        {
          v15 = v12;
          v16 = *v28;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v10);
              }

              v18 = objc_msgSend_keychainPasswordForMACAddress_(KeychainWrapper, v13, *(*(&v27 + 1) + 8 * i), v14);
              if (v18)
              {
                NetworkPassword = v18;
                goto LABEL_28;
              }
            }

            v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v27, v33, 16);
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        NetworkPassword = 0;
LABEL_28:

        if (!NetworkPassword)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v31 = 0;
    sub_23EBEB494(*(a1 + 32), @"BSAssistantCallback_ScanInfo", &v31);
    if (!v2)
    {
      if (v31)
      {
        NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v20, v31, v21);
        if (!NetworkPassword)
        {
LABEL_29:
          v5 = -6727;
          goto LABEL_3;
        }

LABEL_24:
        v5 = sub_23EBEB5E8(*(a1 + 32), @"BSAssistantCallback_String", NetworkPassword, v22, v23, v24, v25, v26);
        if (!v5)
        {
          return sub_23EBEB6CC(*(a1 + 32), v5);
        }

        goto LABEL_3;
      }

LABEL_26:
      v5 = -6728;
      goto LABEL_3;
    }
  }

LABEL_2:
  v5 = v2;
LABEL_3:
  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]_block_invoke", 800, "failing inSelector: %d err: %m\n", *(a1 + 40));
  }

  return sub_23EBEB6CC(*(a1 + 32), v5);
}

uint64_t sub_23EB54398(const char *a1, const char *a2, const char *a3, uint64_t *a4)
{
  v4 = 0;
  theArray = 0;
  v5 = 4294960591;
  if (!a1 || !a2 || !a4)
  {
    goto LABEL_30;
  }

  v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040067EBA7CuLL);
  v4 = v10;
  if (!v10)
  {
    goto LABEL_29;
  }

  *v10 = 0;
  v11 = *MEMORY[0x277CBECE8];
  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a1, 0x8000100u);
  *(v4 + 24) = v12;
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = CFStringCreateWithCString(v11, a2, 0x8000100u);
  *(v4 + 32) = v13;
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = a3 ? a3 : "ACPBrowserSession";
  v15 = dispatch_queue_create(v14, 0);
  *(v4 + 8) = v15;
  if (!v15)
  {
    goto LABEL_29;
  }

  dispatch_set_context(v15, v4);
  dispatch_set_finalizer_f(*(v4 + 8), sub_23EB54650);
  sub_23EB546C8(v4, MEMORY[0x277D85CD0]);
  *(v4 + 40) = 0;
  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v4 + 48) = Mutable;
  if (!Mutable)
  {
    goto LABEL_29;
  }

  v20 = sub_23EC0F7A0(&theArray, v17, v18, v19);
  if (v20 == -6727)
  {
LABEL_28:
    v5 = 0;
    *a4 = v4;
    v4 = 0;
    goto LABEL_30;
  }

  v5 = v20;
  if (v20)
  {
    goto LABEL_30;
  }

  if (!theArray)
  {
    v5 = 4294960568;
LABEL_33:
    sub_23EB54650(v4);
    return v5;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (!LocalCenter)
  {
LABEL_29:
    v5 = 4294960568;
    goto LABEL_30;
  }

  v22 = LocalCenter;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_27:
    CFNotificationCenterAddObserver(v22, v4, sub_23EB5477C, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    goto LABEL_28;
  }

  v24 = Count;
  v25 = 0;
  while (1)
  {
    v38 = 0;
    v39 = 0;
    cf = 0;
    sub_23EB6FF14(theArray, &v39, "[*]", v25);
    if (v26)
    {
      break;
    }

    if (!v39)
    {
      goto LABEL_29;
    }

    v27 = sub_23EB61B14(v11, v39);
    if (!v27)
    {
      goto LABEL_29;
    }

    v30 = v27;
    v5 = sub_23EB62218(v27, &cf, v28, v29);
    CFRelease(v30);
    if (v5)
    {
      goto LABEL_30;
    }

    if (!cf)
    {
      goto LABEL_29;
    }

    v38 = 0;
    sub_23EB6FF14(cf, &v38, "%kO", @"kNetworkLinkManager_LinkChangeKey_WiFiName");
    v5 = sub_23EB54710(v4, v38, v39, v31, v32, v33, v34, v35);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      goto LABEL_30;
    }

    if (v24 == ++v25)
    {
      goto LABEL_27;
    }
  }

  v5 = v26;
LABEL_30:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v4)
  {
    goto LABEL_33;
  }

  return v5;
}

void sub_23EB54650(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      dispatch_release(v2);
      a1[2] = 0;
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
      a1[3] = 0;
    }

    v4 = a1[4];
    if (v4)
    {
      CFRelease(v4);
      a1[4] = 0;
    }

    v5 = a1[6];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void sub_23EB546C8(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 16) = v3;
}

uint64_t sub_23EB54710(uint64_t a1, uint64_t a2, void *key, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 48);
  if (!v9)
  {
    return 4294960591;
  }

  if (a2)
  {
    result = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v9, "%kO=%O", a4, a5, a6, a7, a8, key);
    if (result)
    {
      return result;
    }
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 48), key);
  }

  return 0;
}

void sub_23EB5477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString *a5)
{
  if (a2)
  {
    v14 = 0;
    if (a5)
    {
      v15 = 0;
      sub_23EB6FF14(a5, &v15, "%kO", a4, @"kNetworkLinkManager_LinkChangeKey_IfName");
      if (!v7)
      {
        if (v15)
        {
          sub_23EB6FF14(a5, &v14, "%kO", @"kNetworkLinkManager_LinkChangeKey_WiFiName");
          if (!v8 || v8 == -6727)
          {
            sub_23EB54710(a2, v14, v15, v9, v10, v11, v12, v13);
          }
        }
      }
    }
  }
}

uint64_t sub_23EB54824(uint64_t a1, uint64_t a2, char a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1070040319640ECuLL);
  if (!v6)
  {
    return 4294960568;
  }

  if (!a1)
  {
    return 4294960591;
  }

  *v6 = a1;
  v6[1] = a2;
  *(v6 + 16) = a3;
  dispatch_async_f(*(a1 + 8), v6, sub_23EB548B8);
  return 0;
}

void sub_23EB548B8(uint64_t **a1)
{
  if (dword_27E380F98 <= 3000 && (dword_27E380F98 != -1 || sub_23EB74AC8(&dword_27E380F98, 0xBB8u)))
  {
    sub_23EB75374(&dword_27E380F98, "void __StartBrowseEx2(void *)", 3000, "%s: starting browse\n", "__StartBrowseEx2");
  }

  if (!**a1 && !sub_23EC0D398(*a1, "ACPBrowserSession"))
  {
    sub_23EC0D48C(**a1, (*a1)[1]);
    sub_23EC0D528(**a1, sub_23EB54C90, *a1);
    v2 = 1;
    while (1)
    {
      v3 = *(a1 + 16) ? 0 : "local.";
      if (!sub_23EC0D530(**a1, "_airport._tcp", v3, a1[1], 0))
      {
        break;
      }

      if (dword_27E380F98 <= 5000 && (dword_27E380F98 != -1 || sub_23EB74AC8(&dword_27E380F98, 0x1388u)))
      {
        sub_23EB75374(&dword_27E380F98, "void __StartBrowseEx2(void *)", 5000, "### waiting for bonjour to become ready (%d)\n", v2);
      }

      sleep(1u);
      if (++v2 == 31)
      {
        goto LABEL_22;
      }
    }

    if (dword_27E380F98 <= 3000 && (dword_27E380F98 != -1 || sub_23EB74AC8(&dword_27E380F98, 0xBB8u)))
    {
      sub_23EB75374(&dword_27E380F98, "void __StartBrowseEx2(void *)", 3000, "AirPort discovery started\n");
    }
  }

LABEL_22:

  free(a1);
}

uint64_t sub_23EB54A9C(NSObject ***a1, const void *a2)
{
  result = 4294960591;
  if (a1 && a2)
  {
    if (*a1)
    {
      sub_23EC0D83C(*a1, a2, 1);
      return 0;
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

uint64_t sub_23EB54AE0(dispatch_queue_t *context)
{
  if (!context)
  {
    return 4294960591;
  }

  dispatch_async_f(context[1], context, sub_23EB54B24);
  return 0;
}

void sub_23EB54B24(dispatch_queue_t **result)
{
  if (result)
  {
    v2 = *result;
    if (v2)
    {
      sub_23EC0D788(v2);
      sub_23EC0D4D4(*result);
      *result = 0;
      if (dword_27E380F98 <= 3000 && (dword_27E380F98 != -1 || sub_23EB74AC8(&dword_27E380F98, 0xBB8u)))
      {

        sub_23EB75374(&dword_27E380F98, "void _ACPBrowserSession_StopBrowse(void *)", 3000, "AirPort discovery stopped\n");
      }
    }
  }
}

uint64_t sub_23EB54BC4(void *context)
{
  if (!context)
  {
    return 4294960591;
  }

  if (!*(context + 40))
  {
    *(context + 40) = 1;
    dispatch_async_f(*(context + 1), context, sub_23EB54C20);
  }

  return 0;
}

void sub_23EB54C20(dispatch_queue_t *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (LocalCenter)
  {
    CFNotificationCenterRemoveObserver(LocalCenter, a1, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0);
  }

  if (a1)
  {
    dispatch_async_f(a1[1], a1, sub_23EB54B24);
  }

  v3 = a1[1];

  dispatch_release(v3);
}

void sub_23EB54C90(int a1, CFDictionaryRef theDict, void *a3)
{
  v72[2] = *MEMORY[0x277D85DE8];
  if (a1 != 3)
  {
    if (a3)
    {
      if (*a3)
      {
        v5 = *MEMORY[0x277CBECE8];
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
        if (MutableCopy)
        {
          v7 = MutableCopy;
          v72[0] = 0;
          v70 = 0;
          sub_23EB6FF14(MutableCopy, v72, "%ks", "services");
          if (!v8)
          {
            if (v72[0])
            {
              Count = CFArrayGetCount(v72[0]);
              if (Count)
              {
                v10 = Count;
                if (Count >= 1)
                {
                  v11 = 0;
                  do
                  {
                    v69 = 0;
                    sub_23EB6FF14(v72[0], &v69, "[*]", v11, v62);
                    if (v12)
                    {
                      goto LABEL_6;
                    }

                    if (!v69)
                    {
                      goto LABEL_6;
                    }

                    sub_23EB6FF14(v69, &v70, "%ks", "ifname");
                    if (v13)
                    {
                      goto LABEL_6;
                    }

                    *key = 0;
                    sub_23EB6FF14(a3[6], key, "%kO", v70);
                    if (*key)
                    {
                      v62 = *key;
                      if (sub_23EB6FDFC(v5, v69, "%kO=%O", v14, v15, v16, v17, v18, @"wifiname"))
                      {
                        goto LABEL_6;
                      }
                    }
                  }

                  while (v10 != ++v11);
                }

                v19 = CFDictionaryGetValue(v7, @"txt");
                if (v19)
                {
                  v20 = v19;
                  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (Mutable)
                  {
                    theDicta = Mutable;
                    cf = 0;
                    value = 0;
                    valueLen = 0;
                    BytePtr = CFDataGetBytePtr(v20);
                    Length = CFDataGetLength(v20);
                    v24 = TXTRecordGetCount(Length, BytePtr);
                    if (v24)
                    {
                      v25 = v24;
                      v26 = 0;
                      v64 = *MEMORY[0x277CBED28];
                      do
                      {
                        if (!TXTRecordGetItemAtIndex(Length, BytePtr, v26, 0x20u, key, &valueLen, &value) && strlen(key) == 4)
                        {
                          v27 = bswap32(key[0]);
                          if (!sub_23EB4F404(v27, value, valueLen, &cf))
                          {
                            v33 = sub_23EB6FDFC(0, theDicta, "%kC=%O", v28, v29, v30, v31, v32, v27);
                            CFRelease(cf);
                            if (v27 == 1886547810 && !v33)
                            {
                              v39 = value;
                              v40 = valueLen;
                              v69 = 0;
                              v70 = value;
                              if (!sub_23EB6FDFC(0, theDicta, "%kO=[%@]", v34, v35, v36, v37, v38, @"problemArray"))
                              {
                                if (v40)
                                {
                                  v63 = BytePtr;
                                  v41 = v40;
                                  v42 = 0;
                                  v43 = &v39[v41];
                                  do
                                  {
                                    v44 = v43;
                                    if (sub_23EB7F740(v39, v43, 0x3Bu, v72, 16, 0, 0, &v70))
                                    {
                                      break;
                                    }

                                    sub_23EB6FDFC(0, v69, "%s", v45, v46, v47, v48, v49, v72);
                                    if (LOWORD(v72[0]) == 43)
                                    {
                                      v42 = 1;
                                    }

                                    v39 = v70;
                                    v43 = v44;
                                  }

                                  while (v70 < v44);
                                  BytePtr = v63;
                                  if (v42)
                                  {
                                    CFDictionarySetValue(theDicta, @"hasMoreProblems", v64);
                                  }
                                }
                              }
                            }
                          }
                        }

                        ++v26;
                      }

                      while (v25 > v26);
                    }

                    v70 = 0;
                    if (!CFDictionaryGetValue(theDicta, @"syVs"))
                    {
                      v72[0] = 0;
                      v55 = CFDictionaryGetValue(theDicta, @"syDs");
                      if (v55 && !sub_23EB70FE4(v55, v72, &v70))
                      {
                        v56 = v72[0];
                        v57 = strstr(v72[0], " V");
                        if (v57)
                        {
                          v56 = v57 + 2;
                        }

                        if (!sub_23EB7E800(v56, -1, 0))
                        {
                          v58 = CFStringCreateWithCString(v5, v56, 0x8000100u);
                          if (v58)
                          {
                            v59 = v58;
                            CFDictionarySetValue(theDicta, @"syVs", v58);
                            CFRelease(v59);
                          }
                        }
                      }

                      if (v70)
                      {
                        free(v70);
                      }
                    }

                    v60 = sub_23EB6FDFC(v5, v7, "%kO=%O", v50, v51, v52, v53, v54, @"txt");
                    CFRelease(theDicta);
                    if (!v60 && !sub_23EB6FED4(v7, theDicta))
                    {
                      if (a1 == 2)
                      {
                        if (dword_27E380F98 <= 3000 && (dword_27E380F98 != -1 || sub_23EB74AC8(&dword_27E380F98, 0xBB8u)))
                        {
                          sub_23EB75374(&dword_27E380F98, "void browserCallBack(BonjourBrowserEventType, CFDictionaryRef, void *)", 3000, "%s: removed service: %@\n", "browserCallBack", v7);
                        }

                        v61 = a3[4];
                        goto LABEL_62;
                      }

                      if (a1 == 1)
                      {
                        if (dword_27E380F98 <= 100 && (dword_27E380F98 != -1 || sub_23EB74AC8(&dword_27E380F98, 0x64u)))
                        {
                          sub_23EB75374(&dword_27E380F98, "void browserCallBack(BonjourBrowserEventType, CFDictionaryRef, void *)", 100, "%s: starting resolve for service: %@\n", "browserCallBack", v7);
                        }

                        v61 = a3[3];
LABEL_62:
                        sub_23EB55204(a3, v61, v7);
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_6:
          CFRelease(v7);
        }
      }
    }
  }
}

void sub_23EB55204(uint64_t a1, const void *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x600405BB7FD7CuLL);
  if (v6)
  {
    v7 = v6;
    *v6 = a2;
    CFRetain(a2);
    v7[1] = a3;
    CFRetain(a3);
    v8 = *(a1 + 16);

    dispatch_async_f(v8, v7, sub_23EB552A8);
  }
}

void sub_23EB552A8(uint64_t a1)
{
  if (dword_27E380F98 <= 3000 && (dword_27E380F98 != -1 || sub_23EB74AC8(&dword_27E380F98, 0xBB8u)))
  {
    sub_23EB75374(&dword_27E380F98, "void __NotifyServiceAsync(void *)", 3000, "%s: notify service\n", "__NotifyServiceAsync");
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (LocalCenter)
  {
    CFNotificationCenterPostNotificationWithOptions(LocalCenter, *a1, 0, *(a1 + 8), 1uLL);
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t sub_23EB56F7C(uint64_t inSystemSoundID)
{
  if (inSystemSoundID)
  {
    return AudioServicesDisposeSystemSoundID(inSystemSoundID);
  }

  return inSystemSoundID;
}

uint64_t sub_23EB5E054(void *a1, char *a2, __CFString *a3, uint64_t a4)
{
  if (objc_msgSend_length(a3, a2, a3, a4))
  {
    objc_msgSend_setText_(a1, v7, a3, v8);
  }

  else
  {
    objc_msgSend_setText_(a1, v7, @"\n", v8);
  }

  objc_msgSend_sizeToFit(a1, v9, v10, v11);
  objc_msgSend_setNeedsLayout(a1, v12, v13, v14);

  return objc_msgSend_setNeedsLayout(a2, v15, v16, v17);
}

void *sub_23EB5E1E8(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = sub_23EB6CDF8(a2);
    return (objc_msgSend_indexOfObject_(v2, v4, v3, v5) != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

id sub_23EB5E230(uint64_t a1, const char *a2)
{
  v6 = 0;
  if (a1 > 1651722063)
  {
    if (a1 != 1651722064 && a1 != 1651725131)
    {
      goto LABEL_8;
    }

    v4 = 63;
LABEL_12:
    v6 = v4;
    v5 = 3;
    return objc_msgSend_formatterForBSFormatter_withMaxLen_(APFormatter, a2, v5, v4);
  }

  if (a1 == 1651716432)
  {
    v4 = sub_23EBB4B34(1651721296);
    goto LABEL_12;
  }

  if (a1 == 1651720528)
  {
    v6 = sub_23EBB4B34(1651721296);
    return objc_msgSend_formatterForBSFormatter_withMaxLen_(APFormatter, v2, 1, v6);
  }

LABEL_8:
  v5 = sub_23EBB6C08(a1, &v6);
  result = 0;
  if (v5)
  {
    v4 = v6;
    if (v6)
    {
      return objc_msgSend_formatterForBSFormatter_withMaxLen_(APFormatter, a2, v5, v4);
    }
  }

  return result;
}

uint64_t sub_23EB61928(const __CFString *a1, CFTypeRef *a2)
{
  cf = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  sub_23EB6FF14(a1, &cf, "%kO.%kO", @"kNetworkLinkManager_LinkChangeKey_IPv4Dict", @"NetworkSignature");
  if (v4 == -6727)
  {
    sub_23EB6FF14(a1, &cf, "%kO.%kO", @"kNetworkLinkManager_LinkChangeKey_IPv6Dict", @"NetworkSignature");
    if (v4 == -6727)
    {
      sub_23EB6FF14(a1, &cf, "%kO.%kO.[*]", @"kNetworkLinkManager_LinkChangeKey_IPv6Dict", *MEMORY[0x277CE1758], 0);
      if (v4 == -6727)
      {
        sub_23EB6FF14(a1, &cf, "%kO.%kO.[*]", @"kNetworkLinkManager_LinkChangeKey_IPv4Dict", *MEMORY[0x277CE1728], 0);
      }
    }
  }

  v5 = 0;
  if (!v4)
  {
    v6 = cf;
    if (cf)
    {
      if (dword_27E381358 <= 800)
      {
        if (dword_27E381358 != -1 || (v7 = sub_23EB74AC8(&dword_27E381358, 0x320u), v6 = cf, v7))
        {
          sub_23EB75374(&dword_27E381358, "uint32_t _NetworkLinkManager_GetNetworkSignatureAndHashIdentifier(CFDictionaryRef, CFStringRef *)", 800, "hashStr: %@\n", v6);
          v6 = cf;
        }
      }

      v8 = CFGetTypeID(v6);
      if (v8 == CFStringGetTypeID() && (v12 = 0, __s = 0, !sub_23EB70FE4(v6, &__s, &v12)))
      {
        v10 = strlen(__s);
        v5 = sub_23EB79948(1u, 0, __s, v10);
        if (v12)
        {
          free(v12);
        }
      }

      else
      {
        v5 = 0;
      }

      if (a2)
      {
        *a2 = cf;
      }
    }
  }

  return v5;
}

uint64_t sub_23EB61B14(uint64_t a1, const void *a2)
{
  if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
  {
    sub_23EB75374(&dword_27E381358, "OSStatus _NetworkLinkManager_Create(CFAllocatorRef, CFStringRef, CFNetworkLinkManagerContextRef *)", 800, " \n");
  }

  if (!a2)
  {
    return 0;
  }

  if (!qword_27E3833C0)
  {
    qword_27E3833C0 = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 0;
    *(Instance + 32) = Instance;
    *(Instance + 40) = 0;
    *(Instance + 48) = 0;
    *(Instance + 56) = 0;
    v5 = *MEMORY[0x277CBECE8];
    v6 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], @"com.apple.airport.airportutility", sub_23EB62530, (Instance + 24));
    *(v4 + 16) = v6;
    if (v6)
    {
      v7 = SCPreferencesCreateWithAuthorization(v5, @"com.apple.airport.airportutility", 0, 0);
      *(v4 + 64) = v7;
      if (v7)
      {
        *(v4 + 88) = a2;
        CFRetain(a2);
        v8 = *(v4 + 88);
        if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
        {
          sub_23EB75374(&dword_27E381358, "OSStatus _NetworkLink_InitDynamicStoreInfo(CFNetworkLinkManagerContextRef, CFStringRef)", 800, " \n");
        }

        if (v8)
        {
          if (*(v4 + 16))
          {
            if (*(v4 + 64))
            {
              v9 = sub_23EB62830(v4, v8);
              if (v9)
              {
                v10 = v9;
                v11 = *MEMORY[0x277CE1648];
                NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, *MEMORY[0x277CE1648], v9, *MEMORY[0x277CE1688]);
                *(v4 + 80) = NetworkServiceEntity;
                if (NetworkServiceEntity)
                {
                  v13 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v11, v10, *MEMORY[0x277CE1690]);
                  *(v4 + 112) = v13;
                  if (v13)
                  {
                    v14 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v11, v10, *MEMORY[0x277CE1678]);
                    *(v4 + 104) = v14;
                    if (v14)
                    {
                      v15 = *(v4 + 16);
                      v16 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, *MEMORY[0x277CE1640], v10, *MEMORY[0x277CE1698]);
                      v17 = SCDynamicStoreCopyValue(v15, v16);
                      if (v16)
                      {
                        CFRelease(v16);
                      }

                      if (v17)
                      {
                        Value = CFDictionaryGetValue(v17, *MEMORY[0x277CE1790]);
                        if (Value)
                        {
                          v19 = CFEqual(Value, *MEMORY[0x277CE1660]);
                        }

                        else
                        {
                          v19 = 0;
                        }

                        CFRelease(v17);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      *(v4 + 120) = v19;
                      CFRelease(v10);
                      return v4;
                    }
                  }
                }

                CFRelease(v10);
              }
            }
          }
        }
      }
    }

    sub_23EB620FC(v4);
    return 0;
  }

  return v4;
}

uint64_t sub_23EB61DE4(uint64_t a1, CFTypeRef cf)
{
  v2 = 4294960591;
  if (!a1 || !cf)
  {
    return v2;
  }

  v5 = *(a1 + 96);
  if (v5 != cf && v5 != 0)
  {
    CFRelease(v5);
  }

  *(a1 + 96) = cf;
  CFRetain(cf);
  patterns = 0;
  if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
  {
    sub_23EB75374(&dword_27E381358, "OSStatus _NetworkLink_InitDynamicStoreMonitor(CFNetworkLinkManagerContextRef)", 800, " \n");
  }

  if (*(a1 + 16) && *(a1 + 64))
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = *MEMORY[0x277CE1648];
    v9 = *MEMORY[0x277CE1628];
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], *MEMORY[0x277CE1688]);
    if (NetworkServiceEntity)
    {
      v11 = NetworkServiceEntity;
      v2 = sub_23EB6F348(v7, &patterns, "[%O]", NetworkServiceEntity);
      CFRelease(v11);
      if (v2)
      {
        goto LABEL_31;
      }

      if (!patterns)
      {
        return 4294960568;
      }

      v12 = SCDynamicStoreKeyCreateNetworkServiceEntity(v7, v8, v9, *MEMORY[0x277CE1690]);
      if (v12)
      {
        v18 = v12;
        v2 = sub_23EB6FDFC(v7, patterns, "%O", v13, v14, v15, v16, v17, v12);
        CFRelease(v18);
        if (v2)
        {
          goto LABEL_31;
        }

        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v7, v8, v9, *MEMORY[0x277CE16A0]);
        if (NetworkInterfaceEntity)
        {
          v25 = NetworkInterfaceEntity;
          v2 = sub_23EB6FDFC(v7, patterns, "%O", v20, v21, v22, v23, v24, NetworkInterfaceEntity);
          CFRelease(v25);
          if (!v2)
          {
            if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
            {
              sub_23EB75374(&dword_27E381358, "OSStatus _NetworkLink_InitDynamicStoreMonitor(CFNetworkLinkManagerContextRef)", 800, "SCDynamicStoreSetNotificationKeys keys: %@ patterns: %@\n", 0, patterns);
            }

            v26 = SCDynamicStoreSetNotificationKeys(*(a1 + 16), 0, patterns);
            if (patterns)
            {
              CFRelease(patterns);
              patterns = 0;
            }

            if (v26)
            {
              goto LABEL_28;
            }

            v2 = SCError();
            if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
            {
              v30 = SCErrorString(v2);
              sub_23EB75374(&dword_27E381358, "OSStatus _NetworkLink_InitDynamicStoreMonitor(CFNetworkLinkManagerContextRef)", 800, "SCDynamicStoreSetNotificationKeys failed: %s\n", v30);
            }

            if (!v2)
            {
LABEL_28:
              RunLoopSource = SCDynamicStoreCreateRunLoopSource(v7, *(a1 + 16), 0);
              *(a1 + 72) = RunLoopSource;
              if (RunLoopSource)
              {
                Main = CFRunLoopGetMain();
                CFRunLoopAddSource(Main, *(a1 + 72), *MEMORY[0x277CBF058]);
                v2 = 0;
              }

              else
              {
                v2 = 4294960578;
              }
            }
          }

          goto LABEL_31;
        }
      }
    }

    v2 = 4294960568;
  }

LABEL_31:
  if (patterns)
  {
    CFRelease(patterns);
  }

  return v2;
}

uint64_t sub_23EB620FC(uint64_t a1)
{
  if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
  {
    sub_23EB75374(&dword_27E381358, "OSStatus NetworkLinkManager_Release(CFNetworkLinkManagerContextRef)", 800, " \n");
  }

  if (!a1)
  {
    return 4294960591;
  }

  if (*(a1 + 72))
  {
    SCDynamicStoreSetNotificationKeys(*(a1 + 16), 0, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, *(a1 + 72), *MEMORY[0x277CBF058]);
    v3 = *(a1 + 72);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 72) = 0;
    }
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 16) = 0;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 112) = 0;
  }

  result = *(a1 + 104);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a1 + 104) = 0;
  }

  return result;
}

uint64_t sub_23EB62218(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v4 = 4294960591;
  if (!a1 || !a2)
  {
    return v4;
  }

  v22 = 0;
  v23 = 0;
  if (!*(a1 + 120) || (v7 = sub_23EC0F870(&v23, a2, a3, a4), v7 == -6727))
  {
    Value = 0;
LABEL_10:
    v9 = SCDynamicStoreCopyValue(*(a1 + 16), *(a1 + 80));
    v10 = sub_23EB6248C(v9);
    v11 = SCDynamicStoreCopyValue(*(a1 + 16), *(a1 + 112));
    v12 = v11;
    if (!v10)
    {
      v10 = sub_23EB6248C(v11);
    }

    v13 = SCDynamicStoreCopyValue(*(a1 + 16), *(a1 + 104));
    if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
    {
      sub_23EB75374(&dword_27E381358, "OSStatus NetworkLinkManager_CopyLinkStatusDictionary(CFNetworkLinkManagerContextRef, CFDictionaryRef *)", 800, "linkState: %d wifiName: %@ ipDict: %@ ipV6Dict: %@\n", v10, Value, v9, v12);
    }

    v14 = *MEMORY[0x277CBECE8];
    v15 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v24, "{%kO=%O%kO=%b%kO=%i%kO=%O%kO=%O%kO=%O%kO=%O}", @"kNetworkLinkManager_LinkChangeKey_IfName", *(a1 + 88), @"kNetworkLinkManager_LinkChangeKey_IsAirPortService", *(a1 + 120), @"kNetworkLinkManager_LinkChangeKey_LinkState", v10, @"kNetworkLinkManager_LinkChangeKey_WiFiName", Value, @"kNetworkLinkManager_LinkChangeKey_IPv4Dict", v9, @"kNetworkLinkManager_LinkChangeKey_IPv6Dict", v12, @"kNetworkLinkManager_LinkChangeKey_DNSDict", v13);
    if (v15)
    {
      v4 = v15;
    }

    else if (v24)
    {
      v22 = 0;
      sub_23EB61928(v24, &v22);
      v4 = sub_23EB6FDFC(v14, v24, "%kO=%lli%kO=%O", v17, v18, v19, v20, v21, @"kNetworkLinkManager_LinkChangeKey_HashIdentifier");
      if (!v4)
      {
        *a2 = v24;
        v24 = 0;
      }
    }

    else
    {
      v4 = 4294960568;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    goto LABEL_24;
  }

  v4 = v7;
  if (!v7)
  {
    if (v23)
    {
      Value = CFDictionaryGetValue(v23, @"SSID_STR");
      if (v23)
      {
        CFRelease(v23);
        v23 = 0;
      }

      goto LABEL_10;
    }

    v4 = 4294960568;
  }

LABEL_24:
  if (v24)
  {
    CFRelease(v24);
  }

  return v4;
}

const __CFString *sub_23EB6248C(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v6 = 0;
    sub_23EB6FF14(result, &v6, "%kO", *MEMORY[0x277CE1728]);
    if (v2 == -6727)
    {
      sub_23EB6FF14(v1, &v6, "%kO", *MEMORY[0x277CE1758]);
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      result = v6;
      if (v6)
      {
        return (objc_msgSend_count(v6, v3, v4, v5) != 0);
      }
    }
  }

  return result;
}

void sub_23EB62530(const __SCDynamicStore *a1, CFArrayRef theArray, uint64_t a3)
{
  if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
  {
    sub_23EB75374(&dword_27E381358, "void _NetworkLink__DynamicStoreChanged(SCDynamicStoreRef, CFArrayRef, void *)", 800, "changedKeys: %@ \n", theArray);
  }

  if (a3)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v26 = 0;
      v7 = 0;
      v8 = *MEMORY[0x277CBECE8];
      v29 = *MEMORY[0x277CE1640];
      v28 = *MEMORY[0x277CE1698];
      key = *MEMORY[0x277CE1788];
      suffix = *MEMORY[0x277CE1688];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (!ValueAtIndex)
        {
          goto LABEL_32;
        }

        if (!*(a3 + 88))
        {
          goto LABEL_32;
        }

        v10 = ValueAtIndex;
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v8, ValueAtIndex, @"/");
        if (!ArrayBySeparatingStrings)
        {
          goto LABEL_32;
        }

        v12 = ArrayBySeparatingStrings;
        if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
        {
          v13 = CFArrayGetValueAtIndex(v12, 3);
          if (CFStringGetLength(v13) > 4)
          {
            NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v8, v29, v13, v28);
LABEL_16:
            v17 = SCDynamicStoreCopyValue(a1, NetworkServiceEntity);
            if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
            {
              sub_23EB75374(&dword_27E381358, "Boolean _NetworkLink__IsMyInterfaceName(CFNetworkLinkManagerContextRef, SCDynamicStoreRef, CFStringRef)", 800, "interface_key: %@ returned interface_dict: %@ \n", NetworkServiceEntity, v17);
            }

            if (NetworkServiceEntity)
            {
              CFRelease(NetworkServiceEntity);
            }

            CFRelease(v12);
            if (!v17)
            {
              goto LABEL_32;
            }

            Value = CFDictionaryGetValue(v17, key);
            if (Value)
            {
              v19 = CFEqual(Value, *(a3 + 88));
              CFRelease(v17);
              if (v19)
              {
                if (CFStringHasSuffix(v10, suffix))
                {
                  v20 = *(a3 + 80);
                  if (v20)
                  {
                    CFRelease(v20);
                  }

                  *(a3 + 80) = v10;
                  CFRetain(v10);
                }

                v26 = 1;
              }

              goto LABEL_32;
            }

            v12 = v17;
            goto LABEL_31;
          }

          v14 = sub_23EB62830(a3, v13);
          if (v14)
          {
            v15 = v14;
            NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v8, v29, v14, v28);
            CFRelease(v15);
            goto LABEL_16;
          }
        }

LABEL_31:
        CFRelease(v12);
LABEL_32:
        if (v6 == ++v7)
        {
          if (v26)
          {
            if (*(a3 + 96))
            {
              LocalCenter = CFNotificationCenterGetLocalCenter();
              if (LocalCenter)
              {
                v24 = LocalCenter;
                userInfo = 0;
                if (!sub_23EB62218(a3, &userInfo, v22, v23))
                {
                  if (userInfo)
                  {
                    CFNotificationCenterPostNotificationWithOptions(v24, *(a3 + 96), 0, userInfo, 1uLL);
                    if (userInfo)
                    {
                      CFRelease(userInfo);
                    }
                  }
                }
              }
            }
          }

          return;
        }
      }
    }
  }
}

CFStringRef sub_23EB62830(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = SCNetworkSetCopyCurrent(*(a1 + 64));
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SCNetworkSetCopyServices(v3);
  Count = CFArrayGetCount(v5);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        if (Interface)
        {
          v12 = Interface;
          if (SCNetworkInterfaceGetInterfaceType(Interface))
          {
            BSDName = SCNetworkInterfaceGetBSDName(v12);
            if (BSDName)
            {
              if (CFStringCompare(BSDName, a2, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }
          }
        }
      }

      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

    CFRetain(v10);
    ServiceID = SCNetworkServiceGetServiceID(v10);
    v14 = ServiceID;
    if (ServiceID)
    {
      CFRetain(ServiceID);
      if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
      {
        sub_23EB75374(&dword_27E381358, "CFStringRef _NetworkLink__CopyServiceIDForIfName(CFNetworkLinkManagerContextRef, CFStringRef)", 800, "inIfName: %@ mapped to foundServiceID: %@ \n", a2, v14);
      }
    }

    CFRelease(v10);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
  if (v5)
  {
LABEL_12:
    CFRelease(v5);
  }

LABEL_13:
  CFRelease(v4);
  return v14;
}

uint64_t sub_23EB62994(uint64_t a1)
{
  if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
  {
    sub_23EB75374(&dword_27E381358, "void __NetworkLinkDealloc(CFTypeRef)", 800, "\n");
  }

  return sub_23EB620FC(a1);
}

BOOL sub_23EB62A14(uint64_t a1, uint64_t a2)
{
  if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
  {
    sub_23EB75374(&dword_27E381358, "Boolean __NetworkLinkEqual(CFTypeRef, CFTypeRef)", 800, "\n");
  }

  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return CFStringCompare(*(a1 + 88), *(a2 + 88), 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

unint64_t sub_23EB62AB8(unint64_t a1)
{
  if (dword_27E381358 <= 800 && (dword_27E381358 != -1 || sub_23EB74AC8(&dword_27E381358, 0x320u)))
  {
    sub_23EB75374(&dword_27E381358, "CFHashCode __NetworkLinkHash(CFTypeRef)", 800, "\n");
  }

  return a1 >> 2;
}

CFStringRef sub_23EB62B28(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<NetworkLinkManager %p [%p]>{ifName = %@}", v1, v3, v1[2].length);
  }

  return result;
}

uint64_t sub_23EB652C0(uint64_t a1, uint64_t a2)
{
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "OSStatus _AssistantResourceManager_Create(CFAllocatorRef, CFStringRef, CFAssistantResourceManagerContextRef *)", 800, " \n");
  }

  if (!a2)
  {
    return 0;
  }

  if (!qword_27E3833C8)
  {
    qword_27E3833C8 = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E0040D8572FD4uLL);
    *(Instance + 16) = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    *v4 = Instance;
    v5 = dispatch_queue_create("AssistantResourceManager_Internal_queue", 0);
    v6 = *(Instance + 16);
    v6[9] = v5;
    dispatch_set_context(v5, v6);
    dispatch_set_finalizer_f(*(*(Instance + 16) + 72), sub_23EB65E30);
    v7 = *(Instance + 16);
    v7[2] = 0;
    v7[3] = v7;
    v7[5] = 0;
    v7[6] = 0;
    v7[4] = 0;
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", @"com.apple.airport.airportassistant", a2);
    *(*(Instance + 16) + 56) = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    sub_23EB65890(Instance, MEMORY[0x277D85CD0]);
    if (sub_23EB65EEC(*(Instance + 16)))
    {
      goto LABEL_12;
    }

    v12 = *(Instance + 16);
    if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
    {
      sub_23EB75374(&dword_27E3813F8, "OSStatus _AssistantResource_InitDynamicStoreInfo(AssistantResourceManagerPvtPtr)", 800, " \n");
    }

    if (!v12 || !*(v12 + 8) || (v13 = SCDynamicStoreKeyCreate(v8, @"%@:/%@/%@/%@", @"com.apple.airport.airportassistant", @"Resource", @"Application", @"Configuration"), (*(v12 + 64) = v13) == 0))
    {
LABEL_12:
      v10 = *(Instance + 16);
      if (!*(v10 + 104))
      {
        *(v10 + 104) = 1;
        *v10 = 0;
        dispatch_async_f(v10[9], v10, sub_23EB65940);
      }

      return 0;
    }
  }

  return Instance;
}

uint64_t sub_23EB65514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a1)
  {
    v3 = *(*(a1 + 16) + 72);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_23EB655D8;
    v6[3] = &unk_278C66E00;
    v6[6] = a2;
    v6[7] = a3;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(v3, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 4294960591;
    v10 = -6705;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t sub_23EB655D8(void *a1)
{
  *(*(a1[5] + 16) + 88) = a1[6];
  *(*(a1[5] + 16) + 96) = a1[7];
  v2 = a1[6];
  v3 = *(a1[5] + 16);
  if (v2)
  {
    result = sub_23EB65638(v3);
  }

  else
  {
    result = sub_23EB6580C(v3);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_23EB65638(uint64_t a1)
{
  keys = 0;
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "OSStatus _AssistantResourceManager_StartDynamicStoreMonitor(AssistantResourceManagerPvtPtr)", 800, " \n");
  }

  if (a1 && *(a1 + 8))
  {
    v2 = sub_23EB6F348(*MEMORY[0x277CBECE8], &keys, "[%O]", *(a1 + 64));
    if (!v2)
    {
      v3 = keys;
      if (!keys)
      {
        return 4294960568;
      }

      if (dword_27E3813F8 <= 800)
      {
        if (dword_27E3813F8 != -1 || (v4 = sub_23EB74AC8(&dword_27E3813F8, 0x320u), v3 = keys, v4))
        {
          sub_23EB75374(&dword_27E3813F8, "OSStatus _AssistantResourceManager_StartDynamicStoreMonitor(AssistantResourceManagerPvtPtr)", 800, "SCDynamicStoreSetNotificationKeys keys: %@ patterns: %@\n", v3, 0);
          v3 = keys;
        }
      }

      v5 = SCDynamicStoreSetNotificationKeys(*(a1 + 8), v3, 0);
      if (keys)
      {
        CFRelease(keys);
        keys = 0;
      }

      if (v5)
      {
        goto LABEL_16;
      }

      v2 = SCError();
      if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
      {
        v7 = SCErrorString(v2);
        sub_23EB75374(&dword_27E3813F8, "OSStatus _AssistantResourceManager_StartDynamicStoreMonitor(AssistantResourceManagerPvtPtr)", 800, "SCDynamicStoreSetNotificationKeys failed: %s\n", v7);
      }

      if (!v2)
      {
LABEL_16:
        SCDynamicStoreSetDispatchQueue(*(a1 + 8), *(a1 + 72));
        v2 = 0;
        *(a1 + 105) = 1;
      }
    }
  }

  else
  {
    v2 = 4294960591;
  }

  if (keys)
  {
    CFRelease(keys);
  }

  return v2;
}

uint64_t sub_23EB6580C(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (!*(a1 + 105))
  {
    return 0;
  }

  if (SCDynamicStoreSetNotificationKeys(*(a1 + 8), 0, 0) && SCDynamicStoreSetDispatchQueue(*(a1 + 8), 0))
  {
    result = 0;
    *(a1 + 105) = 0;
  }

  else
  {

    return SCError();
  }

  return result;
}

void sub_23EB65890(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 16);
  v5 = *(v4 + 80);
  if (v5)
  {
    dispatch_release(v5);
    v4 = *(a1 + 16);
  }

  *(v4 + 80) = v3;
}

uint64_t sub_23EB658E0(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v1 = *(a1 + 16);
  if (!*(v1 + 104))
  {
    *(v1 + 104) = 1;
    *v1 = 0;
    dispatch_async_f(v1[9], v1, sub_23EB65940);
  }

  return 0;
}

void sub_23EB65940(uint64_t a1)
{
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "void __AssistantResourceManager_ReleaseOnQueue(void *)", 800, " \n");
  }

  if (a1)
  {
    sub_23EB66360(a1);
    v2 = *(a1 + 72);
    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 72) = 0;
    }
  }
}

uint64_t sub_23EB659C8(uint64_t a1, void *a2)
{
  cf = 0;
  v2 = 4294960591;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        if (*(v4 + 104))
        {
          return 4294960569;
        }

        else
        {
          v6 = sub_23EB663A0(*(v4 + 8), *(v4 + 64));
          v2 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%kO=%i}", @"kAssistantResourceManager_StateKey", v6);
          v7 = cf;
          if (v2)
          {
            if (cf)
            {
              CFRelease(cf);
            }
          }

          else if (cf)
          {
            if (dword_27E3813F8 <= 800)
            {
              if (dword_27E3813F8 != -1 || (v8 = sub_23EB74AC8(&dword_27E3813F8, 0x320u), v7 = cf, v8))
              {
                sub_23EB75374(&dword_27E3813F8, "OSStatus _AssistantResourceManager_CopyStatusDictionary(CFAssistantResourceManagerContextRef, CFDictionaryRef *)", 800, "statusDict: %@\n", v7);
                v7 = cf;
              }
            }

            v2 = 0;
            *a2 = v7;
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_23EB65ADC(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (a1)
  {
    v1 = *(*(a1 + 16) + 72);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_23EB65B9C;
    v4[3] = &unk_278C66E28;
    v4[4] = &v5;
    v4[5] = a1;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 4294960591;
    v8 = -6705;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_23EB65B9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    if (*(v3 + 104))
    {
      v4 = -6727;
    }

    else
    {
      v5 = sub_23EB663A0(*(v3 + 8), *(v3 + 64));
      if (v5 == 1)
      {
        valuePtr = getpid();
        v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
        if (v6)
        {
          v7 = v6;
          v8 = SCDynamicStoreAddTemporaryValue(*(*(v2 + 16) + 8), *(*(v2 + 16) + 64), v6);
          CFRelease(v7);
          if (v8)
          {
            goto LABEL_13;
          }

          v4 = SCError();
          if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
          {
            v9 = SCErrorString(v4);
            sub_23EB75374(&dword_27E3813F8, "OSStatus _AssistantResourceManager_AquireLock(CFAssistantResourceManagerContextRef)", 800, "SCDynamicStoreSetValue failed: %s\n", v9);
          }

          if (!v4)
          {
LABEL_13:
            v4 = 0;
          }
        }

        else
        {
          v4 = -6728;
        }
      }

      else if (v5 == 3)
      {
        v4 = 0;
      }

      else
      {
        v4 = -6709;
      }
    }
  }

  else
  {
    v4 = -6705;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

uint64_t sub_23EB65CE4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (a1)
  {
    v1 = *(*(a1 + 16) + 72);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_23EB65DA4;
    v4[3] = &unk_278C66E28;
    v4[4] = &v5;
    v4[5] = a1;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 4294960591;
    v8 = -6705;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_23EB65DA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    if (*(v3 + 104))
    {
      result = 4294960569;
    }

    else
    {
      v5 = *(v3 + 105);
      result = sub_23EB66360(v3);
      if (!result)
      {
        result = sub_23EB65EEC(v3);
        if (!result)
        {
          if (!v5 || (result = sub_23EB65638(v3), !result))
          {
            result = 0;
          }
        }
      }
    }
  }

  else
  {
    result = 4294960591;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_23EB65E30(void *a1)
{
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "void __AssistantResourceManager_Finalizer(void *)", 800, " \n");
  }

  if (a1)
  {
    v2 = a1[10];
    if (v2)
    {
      dispatch_release(v2);
      a1[10] = 0;
    }

    v3 = a1[8];
    if (v3)
    {
      CFRelease(v3);
      a1[8] = 0;
    }

    v4 = a1[7];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

uint64_t sub_23EB65EEC(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 4294960578;
  }

  v3 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], v2, sub_23EB65F60, (a1 + 16));
  *(a1 + 8) = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294960560;
  }
}

void sub_23EB65F60(int a1, CFArrayRef theArray, uint64_t a3)
{
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "void _AssistantResource__DynamicStoreChanged(SCDynamicStoreRef, CFArrayRef, void *)", 800, "changedKeys: %@ \n", theArray);
  }

  if (a3)
  {
    if (!*(a3 + 104))
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (ValueAtIndex && CFStringCompare(ValueAtIndex, *(a3 + 64), 0) == kCFCompareEqualTo)
          {
            v7 = 1;
          }
        }

        if (v7)
        {
          v10 = *a3;
          if (*a3)
          {
            if (*(a3 + 80))
            {
              if (*(a3 + 88))
              {
                if (!*(a3 + 104))
                {
                  v13 = 0;
                  if (!sub_23EB659C8(v10, &v13))
                  {
                    v11 = v13;
                    if (v13)
                    {
                      if (dword_27E3813F8 > 800)
                      {
                        goto LABEL_26;
                      }

                      if (dword_27E3813F8 == -1)
                      {
                        if (!sub_23EB74AC8(&dword_27E3813F8, 0x320u))
                        {
                          goto LABEL_26;
                        }

                        v11 = v13;
                      }

                      sub_23EB75374(&dword_27E3813F8, "OSStatus _SendResourceStatusChangedNotify(AssistantResourceManagerPvtPtr)", 800, "linkStatusDict: %@ \n", v11);
LABEL_26:
                      v12 = malloc_type_calloc(1uLL, 0x18uLL, 0xE0040BC9ECFC2uLL);
                      if (v12)
                      {
                        *v12 = v13;
                        *(v12 + 8) = *(a3 + 88);
                        dispatch_async_f(*(a3 + 80), v12, sub_23EB66124);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EB66124(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[1];
    if (!v3 || (v3(), (v2 = *a1) != 0))
    {
      CFRelease(v2);
    }
  }

  free(a1);
}

uint64_t sub_23EB6617C(uint64_t a1)
{
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "void __AssistantResourceDealloc(CFTypeRef)", 800, "\n");
  }

  return sub_23EB658E0(a1);
}

BOOL sub_23EB661FC(uint64_t a1, uint64_t a2)
{
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "Boolean __AssistantResourceEqual(CFTypeRef, CFTypeRef)", 800, "\n");
  }

  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return CFStringCompare(*(*(a1 + 16) + 64), *(*(a2 + 16) + 64), 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

unint64_t sub_23EB662A8(unint64_t a1)
{
  if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
  {
    sub_23EB75374(&dword_27E3813F8, "CFHashCode __AssistantResourceHash(CFTypeRef)", 800, "\n");
  }

  return a1 >> 2;
}

CFStringRef sub_23EB66318(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    return CFStringCreateWithFormat(v2, 0, @"<AssistantResourceManager %p", v1);
  }

  return result;
}

uint64_t sub_23EB66360(uint64_t a1)
{
  v2 = sub_23EB6580C(a1);
  if (!v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8) = 0;
    }
  }

  return v2;
}

uint64_t sub_23EB663A0(SCDynamicStoreRef store, const __CFString *a2)
{
  result = 0;
  if (store && a2)
  {
    v4 = SCDynamicStoreCopyValue(store, a2);
    if (v4)
    {
      v5 = v4;
      valuePtr = 0;
      CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
      CFRelease(v5);
      if (dword_27E3813F8 <= 800 && (dword_27E3813F8 != -1 || sub_23EB74AC8(&dword_27E3813F8, 0x320u)))
      {
        sub_23EB75374(&dword_27E3813F8, "eAssistantResourceState _GetStateForKey(SCDynamicStoreRef, CFStringRef)", 800, "found pid: %d\n", valuePtr);
      }

      v6 = valuePtr;
      if (v6 == getpid())
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_23EB674E0(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKey_(a1, a2, @"SSID_STR", a4);
  v8 = objc_msgSend_objectForKey_(a3, v6, @"SSID_STR", v7);

  return MEMORY[0x2821F9670](v5, sel_localizedCaseInsensitiveCompare_, v8, v9);
}

uint64_t sub_23EB67540(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_objectForKey_(a1, a2, @"SSID_STR", a4);
  if (!objc_msgSend_length(v6, v7, v8, v9))
  {
    v6 = objc_msgSend_objectForKey_(a1, v10, @"name", v11);
  }

  v12 = objc_msgSend_objectForKey_(a3, v10, @"SSID_STR", v11);
  if (!objc_msgSend_length(v12, v13, v14, v15))
  {
    v12 = objc_msgSend_objectForKey_(a3, v16, @"name", v17);
  }

  return MEMORY[0x2821F9670](v6, sel_localizedCaseInsensitiveCompare_, v12, v17);
}

uint64_t sub_23EB6A1FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFDictionaryContainsKey(result, @"txt"))
    {
      if (sub_23EB6A30C(v1))
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {

      return sub_23EC0FA60(v1, v2, v3, v4);
    }
  }

  return result;
}

const __CFDictionary *sub_23EB6A264(const __CFDictionary *result)
{
  if (result)
  {
    return (CFDictionaryContainsKey(result, @"txt") != 0);
  }

  return result;
}

uint64_t sub_23EB6A294(uint64_t result)
{
  if (result)
  {
    if (sub_23EB6A30C(result))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const __CFString *sub_23EB6A2C0(const __CFString *result)
{
  v1 = 0;
  if (result)
  {
    sub_23EB6FF14(result, &v1, "%kO.%kO:int", @"txt", @"syAP");
    return v1;
  }

  return result;
}

const __CFString *sub_23EB6A30C(const __CFString *a1)
{
  result = sub_23EB6C0E0(a1);
  if (result)
  {
    return (sub_23EB6C0E0(a1) != 0);
  }

  return result;
}

const __CFDictionary *sub_23EB6A344(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryContainsKey(result, @"txt");
    if (result)
    {
      return (CFDictionaryContainsKey(v1, @"connectionTypes") != 0);
    }
  }

  return result;
}

CFStringRef sub_23EB6A394(const __CFString *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  theString1 = 0;
  if (sub_23EB6A404(a1, &v4, &theString1))
  {
    return 0;
  }

  result = theString1;
  if (theString1)
  {
    return (CFStringCompare(theString1, a2, 0) == kCFCompareEqualTo);
  }

  return result;
}

uint64_t sub_23EB6A404(const __CFString *a1, void *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v3 = 4294960591;
  if (a1 && a2)
  {
    theArray = 0;
    sub_23EB6FF14(a1, &theArray, "%ks", "services");
    if (v6)
    {
      return v6;
    }

    if (!theArray)
    {
      return 4294960568;
    }

    Count = CFArrayGetCount(theArray);
    v3 = 4294960569;
    if (Count < 1)
    {
      return v3;
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      sub_23EB6FF14(theArray, &v13, "[*].%ks", v10, "wifiname");
      if (v11 != -6727)
      {
        break;
      }

      if (v9 == ++v10)
      {
        return 4294960569;
      }
    }

    sub_23EB6FF14(theArray, &v12, "[*].%ks", v10, "dnsName");
    if (v6)
    {
      return v6;
    }

    if (!v12)
    {
      return 4294960568;
    }

    *a2 = v12;
    v3 = 0;
    if (a3)
    {
      *a3 = v13;
    }
  }

  return v3;
}

void sub_23EB6A58C(const __CFString *a1, void *a2)
{
  v12 = 0;
  if (a1)
  {
    if (a2)
    {
      theArray = 0;
      sub_23EB6FF14(a1, &theArray, "%ks", "services");
      if (!v3)
      {
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v5 = Count;
            for (i = 0; v5 != i; ++i)
            {
              theString1 = 0;
              v11 = 0;
              sub_23EB6FF14(theArray, &theString1, "[*].%ks", i, "domain");
              if (v7 || !theString1)
              {
                break;
              }

              if (CFStringCompare(theString1, @"local.", 0) == kCFCompareEqualTo)
              {
                sub_23EB6FF14(theArray, &v11, "[*].%ks", i, "wifiname");
                if (v8 == -6727)
                {
                  sub_23EB6FF14(theArray, &v12, "[*].%ks", i, "dnsName");
                  if (!v9)
                  {
                    if (v12)
                    {
                      *a2 = v12;
                    }
                  }

                  return;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EB6A6F0(const __CFString *result)
{
  if (result)
  {
    if (CFDictionaryContainsKey(result, @"services"))
    {
      sub_23EB6A58C(result, &v3);
      if (v2)
      {
        if (sub_23EB6A404(result, &v3, 0))
        {
          sub_23EB6A768(result, &v3);
        }
      }
    }
  }
}

void sub_23EB6A768(const __CFString *a1, void *a2)
{
  v12 = 0;
  if (a1)
  {
    if (a2)
    {
      theArray = 0;
      sub_23EB6FF14(a1, &theArray, "%ks", "services");
      if (!v3)
      {
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v5 = Count;
            for (i = 0; v5 != i; ++i)
            {
              theString1 = 0;
              v11 = 0;
              sub_23EB6FF14(theArray, &theString1, "[*].%ks", i, "domain");
              if (v7 || !theString1)
              {
                break;
              }

              if (CFStringCompare(theString1, @"local.", 0))
              {
                sub_23EB6FF14(theArray, &v11, "[*].%ks", i, "wifiname");
                if (v8 == -6727)
                {
                  sub_23EB6FF14(theArray, &v12, "[*].%ks", i, "dnsName");
                  if (!v9)
                  {
                    if (v12)
                    {
                      *a2 = v12;
                    }
                  }

                  return;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EB6A8CC(const __CFString *a1, void *a2)
{
  v10 = 0;
  if (a1)
  {
    if (a2)
    {
      theArray = 0;
      sub_23EB6FF14(a1, &theArray, "%ks", "services");
      if (!v3)
      {
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v5 = Count;
            for (i = 0; v5 != i; ++i)
            {
              theString1 = 0;
              sub_23EB6FF14(theArray, &theString1, "[*].%ks", i, "domain");
              if (v7 || !theString1)
              {
                break;
              }

              if (CFStringCompare(theString1, @"local.", 0) == kCFCompareEqualTo)
              {
                sub_23EB6FF14(theArray, &v10, "[*].%ks", i, "dnsName");
                if (!v8)
                {
                  if (v10)
                  {
                    *a2 = v10;
                  }
                }

                return;
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EB6AA00(const __CFString *a1, int a2, void *a3)
{
  v8 = 0;
  if (!a1 || !a3)
  {
    return;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

LABEL_10:
      sub_23EB6A768(a1, &v8);
      goto LABEL_19;
    }
  }

  else
  {
    if (a2 == 2)
    {
      goto LABEL_14;
    }

    if (a2 == 4)
    {
      sub_23EB6A8CC(a1, &v8);
LABEL_19:
      if (v6 == -6727)
      {
        v7 = v8;
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (a2 != 3)
    {
      return;
    }
  }

  sub_23EB6A58C(a1, &v8);
  if (v6 != -6727)
  {
    goto LABEL_20;
  }

  v7 = v8;
  if (a2 || v8)
  {
LABEL_24:
    if (!v7)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_14:
  v6 = sub_23EB6A404(a1, &v8, 0);
  if (v6 == -6727)
  {
    v7 = v8;
    if (a2 || v8)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

LABEL_20:
  if (!v6)
  {
    v7 = v8;
    if (v8)
    {
LABEL_25:
      *a3 = v7;
    }
  }
}

uint64_t sub_23EB6AB20(const __CFString *a1, CFMutableArrayRef *a2)
{
  if (dword_27E381658 <= 800 && (dword_27E381658 != -1 || sub_23EB74AC8(&dword_27E381658, 0x320u)))
  {
    sub_23EB75374(&dword_27E381658, "OSStatus BSUtilities_CopyAllKeychainAccountKeysFromBaseStation(CFDictionaryRef, CFArrayRef *)", 800, "\n");
  }

  v4 = 4294960591;
  if (a1 && a2)
  {
    v22 = 0;
    sub_23EB6FF14(a1, &v22, "%kC", 2002865473);
    if (v5 == -6727)
    {
      goto LABEL_15;
    }

    v4 = v5;
    if (v5)
    {
      return v4;
    }

    if (v22)
    {
LABEL_15:
      v21 = 0;
      sub_23EB6FF14(a1, &v21, "%kC", 1918979393);
      if (v6 == -6727)
      {
        goto LABEL_41;
      }

      v4 = v6;
      if (v6)
      {
        return v4;
      }

      if (v21)
      {
LABEL_41:
        v19 = 0;
        sub_23EB6FF14(a1, &v19, "%kC", 1818316097);
        if (v7 == -6727)
        {
          goto LABEL_16;
        }

        v4 = v7;
        if (v7)
        {
          return v4;
        }

        if (v19)
        {
LABEL_16:
          v20 = 0;
          sub_23EB6FF14(a1, &v20, "%kC", 1918979378);
          v4 = v8;
          if (v8)
          {
            if (v8 != -6727)
            {
              return v4;
            }

            v9 = v20 != 0;
          }

          else
          {
            if (!v20)
            {
              return 4294960568;
            }

            v9 = 1;
          }

          if (!v22 && !v21 && !v9 && !v19)
          {
            return 4294960569;
          }

          v10 = *MEMORY[0x277CBECE8];
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v17 = Mutable;
            if (v22 && (v4 = sub_23EB6FDFC(v10, Mutable, "%O", v12, v13, v14, v15, v16, v22), v4) || v21 && (v4 = sub_23EB6FDFC(v10, v17, "%O", v12, v13, v14, v15, v16, v21), v4) || v19 && (v4 = sub_23EB6FDFC(v10, v17, "%O", v12, v13, v14, v15, v16, v19), v4) || v20 && (v4 = sub_23EB6FDFC(v10, v17, "%O", v12, v13, v14, v15, v16, v20), v4))
            {
              CFRelease(v17);
            }

            else
            {
              *a2 = v17;
            }

            return v4;
          }
        }
      }
    }

    return 4294960568;
  }

  return v4;
}

const __CFString *sub_23EB6ADC8(const __CFString *result)
{
  v1 = 0;
  if (result)
  {
    sub_23EB6FF14(result, &v1, "%ks.%ks", "txt", "raMA");
    return v1;
  }

  return result;
}

const __CFString *sub_23EB6AE14(const __CFString *result)
{
  v1 = 0;
  if (result)
  {
    sub_23EB6FF14(result, &v1, "%ks", "name");
    return v1;
  }

  return result;
}

CFArrayRef sub_23EB6AE58(CFArrayRef result)
{
  if (result)
  {
    v1 = result;
    v7 = 0;
    theArray = 0;
    sub_23EB6FF14(result, &theArray, "%ks", "services");
    if (v2)
    {
      if (v2 == -6727)
      {
        v9 = 0;
        sub_23EB6FF14(v1, &v9, "%ks.%ks", "txt", "raNm");
        return v9;
      }
    }

    else
    {
      result = theArray;
      if (!theArray)
      {
        return result;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        while (1)
        {
          sub_23EB6FF14(theArray, &v7, "[*].%ks", v5, "wifiname");
          if (v6 != -6727)
          {
            break;
          }

          result = 0;
          if (v4 == ++v5)
          {
            return result;
          }
        }

        if (!v6)
        {
          return v7;
        }
      }
    }

    return 0;
  }

  return result;
}

const __CFString *sub_23EB6AF6C(const __CFString *result)
{
  v1 = 0;
  if (result)
  {
    sub_23EB6FF14(result, &v1, "%ks.%ks", "txt", "raNm");
    return v1;
  }

  return result;
}

const __CFString *sub_23EB6AFB8(const __CFString *result)
{
  v1 = 0;
  if (result)
  {
    sub_23EB6FF14(result, &v1, "%ks.%ks:int", "txt", "raSt");
    return v1;
  }

  return result;
}

const __CFString *sub_23EB6B004(const __CFString *result)
{
  if (result)
  {
    v2 = 0;
    sub_23EB6FF14(result, &v2, "%ks.%kC:int", "txt", 1937327724);
    if (v1)
    {
      return 0;
    }

    else
    {
      return ((v2 >> 5) & 1);
    }
  }

  return result;
}

const __CFString *sub_23EB6B064(const __CFString *result)
{
  if (result)
  {
    v2 = 0;
    sub_23EB6FF14(result, &v2, "%ks.%ks", "txt", "bjSd");
    if (v1)
    {
      return 0;
    }

    else
    {
      return (v2 != 0);
    }
  }

  return result;
}

const __CFString *sub_23EB6B0C8(const __CFString *result)
{
  if (result)
  {
    v2 = 0;
    sub_23EB6FF14(result, &v2, "%ks.%kC:int", "txt", 1937327724);
    if (v1)
    {
      return 0;
    }

    else
    {
      return ((v2 >> 6) & 1);
    }
  }

  return result;
}

const __CFString *sub_23EB6B128(const __CFString *result)
{
  v1 = 0;
  if (result)
  {
    sub_23EB6FF14(result, &v1, "%kO.%kO:int", @"txt", @"suID");
    return v1;
  }

  return result;
}

BOOL sub_23EB6B174(const __CFString *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = sub_23EC0FA70(a1, a2, a3, a4);
    v11 = sub_23EC0FA70(a2, v8, v9, v10);
    v12 = v11;
    if (!v7 || v11)
    {
      result = 0;
      if (v7)
      {
        if (v7 != 3 && v7 != 102)
        {
          result = 1;
          if (v12)
          {
            if (v12 != 3 && v12 != 102)
            {
              v13 = 0;
              sub_23EB6FF14(a1, &v13, "%kO:int", @"CHANNEL");
              result = 0;
              if (v13 <= 14)
              {
                v14 = 0;
                sub_23EB6FF14(a2, &v14, "%kO:int", @"CHANNEL");
                return v14 > 14;
              }
            }
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const __CFString *sub_23EB6B268(const __CFString *result)
{
  if (result)
  {
    v2 = 0;
    sub_23EB6FF14(result, &v2, "%ks.%kC:int", "txt", 1937327724);
    if (v1)
    {
      return 0;
    }

    else
    {
      return ((v2 >> 17) & 1);
    }
  }

  return result;
}

uint64_t sub_23EB6B2C8(const void *a1, __CFArray **a2)
{
  v10 = 0;
  v2 = 4294960591;
  if (!a1 || !a2)
  {
    return v2;
  }

  value = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = Mutable;
    v2 = sub_23EB71A18(a1, &v10);
    if (!v2)
    {
      v7 = v10;
      if (v10)
      {
        while (sub_23EB71AC0(v7, 0, &value))
        {
          CFArrayAppendValue(v6, value);
          v7 = v10;
        }

        v2 = 0;
        *a2 = v6;
        goto LABEL_11;
      }

      v2 = 4294960568;
    }

    CFRelease(v6);
  }

  else
  {
    v2 = 4294960568;
  }

LABEL_11:
  if (v10)
  {
    sub_23EB71AB4(v10);
  }

  return v2;
}

CFIndex sub_23EB6B3A8(const __CFArray *a1, const __CFString *a2)
{
  i = -1;
  if (a1)
  {
    if (a2)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (!ValueAtIndex)
          {
            break;
          }

          if (sub_23EB6B424(ValueAtIndex, a2))
          {
            return i;
          }
        }

        return -1;
      }
    }
  }

  return i;
}

uint64_t sub_23EB6B424(const __CFString *a1, const __CFString *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    sub_23EB6FF14(a1, &v12, "%ks.%ks", "txt", "raMA");
    if ((v5 == -6727 || !v5 && v12) && ((sub_23EB6FF14(a1, &v11, "%ks.%ks", "txt", "raM2"), v6 == -6727) || !v6 && v11) && ((sub_23EB6FF14(a1, &v10, "%ks.%ks", "txt", "waMA"), v7 == -6727) || !v7 && v10) && ((sub_23EB6FF14(a1, &v9, "%ks.%ks", "txt", "laMA"), v8 == -6727) || !v8 && v9))
    {
      if (sub_23EBAFDF4(v12, a2) & 1) != 0 || v11 && (sub_23EBAFDF4(v11, a2))
      {
        return 1;
      }

      if (v10 && (sub_23EBAFDF4(v10, a2) & 1) != 0)
      {
        return 1;
      }

      result = v9;
      if (v9)
      {
        result = sub_23EBAFDF4(v9, a2);
        if (result)
        {
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFString *sub_23EB6B5A0(const __CFString *result)
{
  if (result)
  {
    v2 = 0;
    sub_23EB6FF14(result, &v2, "%ks.%kC:int", "txt", 1937327724);
    if (v1)
    {
      return 0;
    }

    else
    {
      return ((v2 >> 9) & 1);
    }
  }

  return result;
}

uint64_t sub_23EB6B600(const __CFString *a1, const __CFString *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = 0;
    sub_23EB6FF14(a2, &v5, "%ks", "BSSID");
    if (v4 || !v5)
    {
      return 0;
    }

    else
    {
      return sub_23EB6B424(a1, v5);
    }
  }

  return result;
}

BOOL sub_23EB6B674(const __CFString *a1, const __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v6 = 0;
    sub_23EB6FF14(a1, &v6, "%ks.%ks", "txt", "raMA");
    return !v4 && v6 && sub_23EB6B424(a2, v6) != 0;
  }

  return v2;
}

CFIndex sub_23EB6B6FC(const __CFString *a1, CFIndex a2, CFArrayRef theArray)
{
  result = -1;
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      result = -1;
      if (Count)
      {
        if (Count > a2)
        {
          theString1 = 0;
          while (1)
          {
            sub_23EB6FF14(theArray, &theString1, "[*].%kO", a2, @"SSID_STR");
            if (v8 != -6727)
            {
              if (!theString1)
              {
                return -1;
              }

              if (CFStringCompare(theString1, a1, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }

            if (Count == ++a2)
            {
              return -1;
            }
          }

          return a2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EB6B7D0(const __CFString *a1, int a2, uint64_t a3, const __CFArray *a4)
{
  result = -1;
  if (a1 && (a2 - 1) <= 2)
  {
    if (a2 == 3)
    {
      result = sub_23EB6B850(a1, 1, a4);
      if (result != -1)
      {
        return result;
      }

      a2 = 2;
    }

    return sub_23EB6B850(a1, a2, a4);
  }

  return result;
}

CFIndex sub_23EB6B850(const __CFString *a1, int a2, CFArrayRef theArray)
{
  if ((a2 - 1) > 1)
  {
    return -1;
  }

  v5 = a1;
  v6 = 0;
  while (1)
  {
    v7 = sub_23EB6B6FC(a1, v6, theArray);
    if (v7 == -1)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
    if (!ValueAtIndex)
    {
      return -1;
    }

    v12 = sub_23EC0FAC8(ValueAtIndex, v9, v10, v11);
    v13 = !v12 && a2 == 1;
    v14 = v12 && a2 == 2;
    if (v14 || v13)
    {
      break;
    }

    v6 = v7 + 1;
    a1 = v5;
  }

  return v7;
}

CFIndex sub_23EB6B8F0(const __CFString *a1, CFIndex a2, CFArrayRef theArray)
{
  result = -1;
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      result = -1;
      if (Count)
      {
        if (Count > a2)
        {
          v9 = 0;
          while (1)
          {
            sub_23EB6FF14(theArray, &v9, "[*].%ks", a2, "BSSID");
            if (v8 || !v9)
            {
              return -1;
            }

            if (sub_23EBAFDF4(a1, v9))
            {
              break;
            }

            if (Count == ++a2)
            {
              return -1;
            }
          }

          return a2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EB6B9B0(const __CFString *a1, CFArrayRef theArray)
{
  v2 = -1;
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        v2 = 0;
        v9 = 0;
        do
        {
          sub_23EB6FF14(theArray, &v9, "[*]", v2);
          if (v7 || !v9)
          {
            break;
          }

          if (sub_23EB6B600(a1, v9))
          {
            return v2;
          }

          ++v2;
        }

        while (v6 != v2);
        return -1;
      }
    }
  }

  return v2;
}

void sub_23EB6BA5C(CFArrayRef theArray, const __CFDate *a2, const __CFString **a3)
{
  if (theArray)
  {
    if (a3)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v14 = 0;
        theDate = 0;
        while (1)
        {
          sub_23EB6FF14(theArray, &v14, "[*]", v10);
          if (v11)
          {
            return;
          }

          if (!v14)
          {
            return;
          }

          sub_23EB6FF14(v14, &theDate, "%ks", "WiFiShim_PreferredNetwork_TimeAssociated");
          if (v12)
          {
            return;
          }

          v13 = theDate;
          if (!theDate)
          {
            return;
          }

          if (v9)
          {
            if (CFDateCompare(theDate, v9, 0) != kCFCompareGreaterThan)
            {
              goto LABEL_16;
            }

            v13 = theDate;
          }

          if (!a2)
          {
            goto LABEL_15;
          }

          if (CFDateCompare(v13, a2, 0) == kCFCompareLessThan)
          {
            v13 = theDate;
LABEL_15:
            v8 = v14;
            v9 = v13;
          }

LABEL_16:
          if (v7 == ++v10)
          {
            if (v8)
            {
              *a3 = v8;
            }

            return;
          }
        }
      }
    }
  }
}

const char *sub_23EB6BB98(const char *result)
{
  if (result)
  {
    result = strlen(result);
    if (result)
    {
      return (result <= sub_23EBB4B34(1918979693));
    }
  }

  return result;
}

char *sub_23EB6BBDC(char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    return sub_23EB84580(v1, v2);
  }

  return result;
}

const char *sub_23EB6BC14(const char *result)
{
  if (result)
  {
    result = strlen(result);
    if (result)
    {
      return (result <= sub_23EBB4B34(1937329773));
    }
  }

  return result;
}

const char *sub_23EB6BC58(const char *result)
{
  if (result)
  {
    result = strlen(result);
    if (result)
    {
      return (result <= sub_23EBB4B34(1937330263));
    }
  }

  return result;
}

const char *sub_23EB6BC9C(const char *result)
{
  if (result)
  {
    result = strlen(result);
    if (result)
    {
      return (result <= sub_23EBB4B34(1635077712));
    }
  }

  return result;
}

const char *sub_23EB6BCE0(const char *result)
{
  if (result)
  {
    result = strlen(result);
    if (result)
    {
      return (result <= sub_23EBB4B34(1718842224));
    }
  }

  return result;
}

CFTypeRef sub_23EB6BD24(const void *a1, _DWORD *a2)
{
  v12 = 0;
  v13 = 0;
  if (a1)
  {
    v10 = 0;
    v11 = 0;
    v3 = sub_23EB71A18(a1, &v12);
    v4 = v12;
    if (!v3 && v12)
    {
      while (sub_23EB71AC0(v12, &v11, &v10))
      {
        v5 = sub_23EBB4158(v11);
        if (v5 == 1684099956 || v5 == 1684886388 || v5 == 1684362100)
        {
          if (v10)
          {
            v8 = v5;
            if (!sub_23EB6F348(*MEMORY[0x277CBECE8], &v13, "{%kO=%O}", v11, v10) && a2 && v13)
            {
              *a2 = v8;
            }
          }

          break;
        }
      }

      v4 = v12;
    }

    if (v4)
    {
      sub_23EB71AB4(v4);
    }
  }

  return v13;
}

BOOL sub_23EB6BE18(const __CFString *a1, int *a2)
{
  if (!a1)
  {
    return 0;
  }

  theString1 = 0;
  v13 = 0;
  sub_23EB6FF14(a1, &v13, "%kC", 1684362100);
  if (v4 == -6727)
  {
    sub_23EB6FF14(a1, &v13, "%kC", 1684099956);
    if (v8 == -6727)
    {
      sub_23EB6FF14(a1, &v13, "%kC", 1684886388);
      v7 = 0;
      if (v9)
      {
        return v7;
      }

      v5 = v13;
      if (!v13)
      {
        return v7;
      }

      v6 = 1298753353;
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      v5 = v13;
      if (!v13)
      {
        return 0;
      }

      v6 = 1098015561;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    v5 = v13;
    if (!v13)
    {
      return 0;
    }

    v6 = 1165123913;
  }

  sub_23EB6FF14(v5, &theString1, "%kO", @"status");
  if (v10 || !theString1)
  {
    return 0;
  }

  v7 = CFStringCompare(theString1, @"starting", 0) == kCFCompareEqualTo;
  if (a2)
  {
    *a2 = v6;
  }

  return v7;
}

BOOL sub_23EB6BF64(const __CFString *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  theString1 = 0;
  v15 = 0;
  sub_23EB6FF14(a1, &v15, "%kC", 1684362100);
  if (v4 == -6727)
  {
    sub_23EB6FF14(a1, &v15, "%kC", 1684099956);
    if (v9 == -6727)
    {
      sub_23EB6FF14(a1, &v15, "%kC", 1684886388);
      v8 = 0;
      if (v10)
      {
        return v8;
      }

      v5 = v15;
      if (!v15)
      {
        return v8;
      }

      v6 = @"migrateComplete";
      v7 = @"migrateError";
    }

    else
    {
      if (v9)
      {
        return 0;
      }

      v5 = v15;
      if (!v15)
      {
        return 0;
      }

      v6 = @"archiveComplete";
      v7 = @"archiveError";
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    v5 = v15;
    if (!v15)
    {
      return 0;
    }

    v6 = @"eraseComplete";
    v7 = @"eraseError";
  }

  sub_23EB6FF14(v5, &theString1, "%kO", @"status");
  if (v11 || !theString1)
  {
    return 0;
  }

  v13 = CFStringCompare(theString1, v6, 0);
  v8 = v13 == kCFCompareEqualTo;
  if (a2 && v13 == kCFCompareEqualTo)
  {
    sub_23EB6FF14(v15, a2, "%kO:err", v7);
    return 1;
  }

  return v8;
}

const __CFString *sub_23EB6C0E0(const __CFString *result)
{
  if (result)
  {
    v1 = 0;
    sub_23EB6FF14(result, &v1, "%kO.%kO:int", @"txt", @"syAP");
    return (v1 == 118);
  }

  return result;
}

const __CFString *sub_23EB6C138(const __CFString *result)
{
  if (result)
  {
    v2 = 0;
    sub_23EB6FF14(result, &v2, "%ks.%kC:int", "txt", 1937327724);
    if (v1)
    {
      return 0;
    }

    else
    {
      return ((v2 & 0x18000) == 0x10000);
    }
  }

  return result;
}

BOOL sub_23EB6C1A0(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  v5 = 0;
  sub_23EB6FF14(a1, &v5, "%ks.%ks:vers", "txt", "syVs");
  result = v2 && (sub_23EB6FF14(a1, &v5, "%ks:vers", "syVs"), v3) || (v5 & 0xFFFFFF00) > 0x7318000 || (v5 & 0xFFFFFF00) == 0x7318000 && !v5;
  return result;
}

uint64_t sub_23EB6C254(const __CFString *a1, int a2)
{
  result = -1;
  if (a1)
  {
    if ((a2 - 1) <= 1)
    {
      cf = 0;
      sub_23EB6FF14(a1, &cf, "%kO", @"radios");
      v6 = v5;
      result = -1;
      if (!v6)
      {
        if (cf)
        {
          TypeID = CFArrayGetTypeID();
          if (TypeID == CFGetTypeID(cf))
          {
            Count = CFArrayGetCount(cf);
            if (Count >= 1)
            {
              v9 = Count;
              v10 = 0;
              while (1)
              {
                v12 = 0;
                sub_23EB6FF14(cf, &v12, "[*].%kO:int", v10, @"phymodes");
                if (v11)
                {
                  break;
                }

                if (a2 == 2)
                {
                  if ((v12 & 0xE) != 0)
                  {
                    return v10;
                  }
                }

                else if (a2 == 1 && (v12 & 0x70) != 0)
                {
                  return v10;
                }

                ++v10;
                result = -1;
                if (v9 == v10)
                {
                  return result;
                }
              }
            }
          }

          return -1;
        }
      }
    }
  }

  return result;
}

void sub_23EB6C388(const __CFString *a1, int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      theArray = 0;
      sub_23EB6FF14(a1, &theArray, "%kO", @"radios");
      if (!v8)
      {
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count)
          {
            if (a2)
            {
              v10 = Count;
              v11 = sub_23EB6C254(a1, a2);
              if (v11 == -1)
              {
                return;
              }

              v12 = v11;
              if (v11 >= v10)
              {
                return;
              }
            }

            else
            {
              v12 = 0;
            }

            sub_23EB6C464(a1, v12, a3, a4);
          }
        }
      }
    }
  }
}

void sub_23EB6C464(const __CFString *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    sub_23EB6FF14(a1, a4, "%kO.[*].%kO", @"radios", a2, a3);
  }
}

void sub_23EB6C4D0(const __CFString *a1, int a2, const void *a3, uint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      theArray = 0;
      sub_23EB6FF14(a1, &theArray, "%kO", @"radios");
      if (!v8)
      {
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count)
          {
            v10 = Count;
            if (a2)
            {
              v11 = sub_23EB6C254(a1, a2);
              if (v11 != -1 && v11 < v10)
              {
                sub_23EB6C5E4(a1, v11, a3, a4);
              }
            }

            else if (Count >= 1)
            {
              for (i = 0; i != v10; ++i)
              {
                sub_23EB6C5E4(a1, i, a3, a4);
                if (v13)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EB6C5E4(const __CFString *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a2 != -1)
  {
    theDict[3] = v4;
    theDict[4] = v5;
    theDict[0] = 0;
    sub_23EB6FF14(a1, theDict, "%kO.[*]", @"radios", a2);
    if (!v13)
    {
      if (theDict[0])
      {
        if (a4)
        {
          sub_23EB6FDFC(*MEMORY[0x277CBECE8], theDict[0], "%kO=%O", v8, v9, v10, v11, v12, a3);
        }

        else
        {
          CFDictionaryRemoveValue(theDict[0], a3);
        }
      }
    }
  }
}

CFPropertyListRef sub_23EB6C690(const void *a1)
{
  if (!CFPropertyListIsValid(a1, kCFPropertyListXMLFormat_v1_0))
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];

  return CFPropertyListCreateDeepCopy(v2, a1, 2uLL);
}

const char *sub_23EB6C6F0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_UTF8String(a1, a2, a3, a4);
  if (result)
  {

    return strlen(result);
  }

  return result;
}

__CFString *sub_23EB6C724(void *a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_UTF8String(a1, a2, a3, a4);
  v10 = objc_msgSend_UTF8ByteCount(a1, v7, v8, v9);
  v11 = sub_23EB7F574(v6, v10, a3);
  v12 = malloc_type_malloc(v11 + 1, 0xDE79C565uLL);
  if (!v12)
  {
    return &stru_285145FE8;
  }

  v13 = v12;
  memset(v12, 255, v11 + 1);
  v17 = objc_msgSend_UTF8String(a1, v14, v15, v16);
  memcpy(v13, v17, v11);
  *(v13 + v11) = 0;
  v19 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v18, v13, 4);
  free(v13);
  return v19;
}

uint64_t sub_23EB6C7E4(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_UTF8String(a3, a2, a3, a4);
  v10 = objc_msgSend_UTF8String(a1, v7, v8, v9);
  if (!v6)
  {
    return objc_msgSend_compare_(a1, v11, a3, v12);
  }

  v13 = v10;
  if (!v10)
  {
    return objc_msgSend_compare_(a1, v11, a3, v12);
  }

  v15 = 0;
  if (sub_23EB7DE5C(v6, 0, &v15, 0, 0, 0, 0) || !v15 || sub_23EB7DE5C(v13, 0, &v15 + 1, 0, 0, 0, 0) || !HIDWORD(v15))
  {
    return objc_msgSend_compare_(a1, v11, a3, v12);
  }

  if (HIDWORD(v15) < v15)
  {
    return -1;
  }

  return HIDWORD(v15) > v15;
}

uint64_t sub_23EB6C8B4(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_UTF8String(a3, a2, a3, a4);
  v10 = objc_msgSend_UTF8String(a1, v7, v8, v9);
  if (!v6)
  {
    return objc_msgSend_compare_(a1, v11, a3, v12);
  }

  v13 = v10;
  if (!v10 || sub_23EB7D978(v6, 0, &v18, 0, 0, 0, 0) || sub_23EB7D978(v13, 0, &v19, 0, 0, 0, 0))
  {
    return objc_msgSend_compare_(a1, v11, a3, v12);
  }

  v15 = bswap64(v19);
  v16 = bswap64(v18);
  if (v15 == v16 && (v15 = bswap64(*(&v19 + 1)), v16 = bswap64(*(&v18 + 1)), v15 == v16))
  {
    return 0;
  }

  else if (v15 < v16)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void *sub_23EB6C9D4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !objc_msgSend_length(a1, a2, a3, a4))
  {
    return a1;
  }

  if (objc_msgSend_length(a1, v5, v6, v7) == 1)
  {

    return objc_msgSend_uppercaseString(a1, v8, v9, v10);
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_msgSend_substringToIndex_(a1, v8, 1, v10);
    v17 = objc_msgSend_uppercaseString(v13, v14, v15, v16);
    v20 = objc_msgSend_substringFromIndex_(a1, v18, 1, v19);
    return objc_msgSend_stringWithFormat_(v12, v21, @"%@%@", v22, v17, v20);
  }
}

uint64_t sub_23EB6CB0C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4);
  v13 = v11;
  if (a3)
  {
    objc_msgSend_setObject_forKey_(v11, v12, a3, @"name");
  }

  if (a4)
  {
    objc_msgSend_setObject_forKey_(v13, v12, a4, @"object");
  }

  if (a5)
  {
    objc_msgSend_setObject_forKey_(v13, v12, a5, @"userInfo");
  }

  return objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(a1, v12, sel_postNotificationNameOnMainThreadHandler_, v13, a6);
}

uint64_t sub_23EB6CBC8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_objectForKey_(a3, a2, @"name", a4);
  v9 = objc_msgSend_objectForKey_(a3, v7, @"object", v8);
  objc_msgSend_objectForKey_(a3, v10, @"userInfo", v11);

  return MEMORY[0x2821F9670](a1, sel_postNotificationName_object_userInfo_, v6, v9);
}

BOOL sub_23EB6CC4C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_pathExtension(a1, a2, a3, a4);
  if (objc_msgSend_length(v5, v6, v7, v8) < 2)
  {
    return 0;
  }

  v11 = objc_msgSend_rangeOfString_(a1, v9, @"@", v10);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v16 = v11;
  v17 = objc_msgSend_length(a1, v12, v13, v14);
  return v17 - objc_msgSend_length(v5, v18, v19, v20) - 2 > v16;
}

id sub_23EB6CCD4(id result)
{
  if (qword_27E383800 != result)
  {
    v1 = result;

    result = v1;
    qword_27E383800 = result;
  }

  return result;
}

uint64_t sub_23EB6CD3C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_class();
  v8 = objc_msgSend_bundleForClass_(v4, v6, v5, v7);

  return objc_msgSend_localizedStringForKey_value_table_(v8, v9, a1, &stru_285145FE8, a2);
}

uint64_t sub_23EB6CDA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCABB8];
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a1, a4);

  return objc_msgSend_localizedStringFromNumber_numberStyle_(v4, v5, v6, 1);
}

void *sub_23EB6CE30(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (result)
  {
    result = objc_msgSend_UTF8String(result, a2, a3, a4);
    if (result)
    {
      sub_23EB4BD54(result, 0xFFFFFFFFFFFFFFFFLL, &v4);
      return v4;
    }
  }

  return result;
}

__CFString *sub_23EB6CE6C(uint64_t a1, int a2)
{
  v3 = sub_23EB4BDDC(a1) - 3;
  if (v3 < 8 && ((0xBFu >> v3) & 1) != 0)
  {
    v4 = &off_278C66E58[v3];
    return *v4;
  }

  if ((a2 - 2) < 3)
  {
    v4 = &off_278C66E98[a2 - 2];
    return *v4;
  }

  return &stru_285145FE8;
}

__CFString *sub_23EB6CEE0(unsigned int a1, int a2, int a3)
{
  if (a3)
  {
    v6 = 1937326416;
  }

  else
  {
    v6 = 1651725136;
  }

  sub_23EB4BD2C(v6, v23);
  v8 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v7, v23, 4);
  v12 = v8;
  if ((a2 - 5) > 0xFFFFFFFD)
  {
    v13 = &stru_285145FE8;
LABEL_8:
    if (objc_msgSend_length(v13, v9, v10, v11))
    {
      return v13;
    }

    goto LABEL_9;
  }

  v13 = sub_23EB6CFF8(v8, a1, v10, v11);
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a2 != 2)
  {
    return sub_23EB6CFF8(v12, 0, v10, v11);
  }

  if (a3)
  {
    v14 = @"longGenericAirPlayDeviceName";
  }

  else
  {
    v14 = @"shortGenericAirPlayDeviceName";
  }

  v15 = MEMORY[0x277CCA8D8];
  v16 = objc_opt_class();
  v19 = objc_msgSend_bundleForClass_(v15, v17, v16, v18);
  return objc_msgSend_localizedStringForKey_value_table_(v19, v20, v14, &stru_285145FE8, @"AirPortSettings");
}

__CFString *sub_23EB6CFF8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@.%lu", a4, a1, a2);
  v5 = MEMORY[0x277CCA8D8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v5, v7, v6, v8);
  v11 = objc_msgSend_localizedStringForKey_value_table_(v9, v10, v4, &stru_285145FE8, @"AirPortSettings");
  if (objc_msgSend_isEqualToString_(v11, v12, v4, v13))
  {
    v16 = MEMORY[0x277CCA8D8];
    v17 = objc_opt_class();
    v20 = objc_msgSend_bundleForClass_(v16, v18, v17, v19);
    v11 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, v4, &stru_285145FE8, @"GuestNetwork");
  }

  if (objc_msgSend_isEqual_(v4, v14, v11, v15))
  {
    return &stru_285145FE8;
  }

  else
  {
    return v11;
  }
}

__CFString *sub_23EB6D0E0(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v5 = a2;
  v7 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, a2, a1, a4);
  if (v7 >= 3)
  {
    if (v7 - 3 >= 2)
    {
      return &stru_285145FE8;
    }

    else
    {

      return objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v8, a1, v9);
    }
  }

  else
  {

    return sub_23EB6CEE0(v5, v7, a3);
  }
}

__CFString *sub_23EB6D18C(const __CFString *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result = objc_msgSend_string(MEMORY[0x277CCACA8], a2, a3, a4);
  if (a1)
  {
    if (v4 && sub_23EB6B0C8(a1))
    {
      v7 = sub_23EB6A2C0(a1);
      v8 = sub_23EB6A294(a1);

      return sub_23EB6CEE0(v7, v8, 0);
    }

    else
    {

      return sub_23EB6AE14(a1);
    }
  }

  return result;
}

__CFString *sub_23EB6D22C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result = objc_msgSend_string(MEMORY[0x277CCACA8], a2, a3, a4);
  if (a1)
  {
    if (v4 && objc_msgSend_scanInfoIsUnconfigured_(WiFiUtils, v7, a1, v8))
    {
      v9 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v7, a1, v8);
      v12 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v10, a1, v11);

      return sub_23EB6CEE0(v9, v12, 0);
    }

    else
    {

      return objc_msgSend_scanInfoNetworkName_(WiFiUtils, v7, a1, v8);
    }
  }

  return result;
}

__CFString *sub_23EB6D2F0(int a1)
{
  v1 = @"AirPortSetupTitle";
  if (a1 == 4)
  {
    v1 = @"AccessorySetupTitle";
  }

  if ((a1 & 0xFFFFFFFE) == 2)
  {
    return @"AirPlaySetupTitle";
  }

  else
  {
    return v1;
  }
}

char *sub_23EB6D320(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v20 = *MEMORY[0x277D85DE8];
  result = objc_msgSend_UTF8String(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    v17 = 0;
    v16 = 0;
    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
    v7 = strlen(result);
    v8 = sub_23EB7E668(v6, v7, 6, &v16);
    result = 0;
    if (!v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = sub_23EB7E798(&v16, 6, v18);
      v12 = objc_msgSend_stringWithCString_encoding_(v9, v11, v10, 4);
      if (v4)
      {
        return objc_msgSend_uppercaseString(v12, v13, v14, v15);
      }

      else
      {
        return objc_msgSend_lowercaseString(v12, v13, v14, v15);
      }
    }
  }

  return result;
}

uint64_t sub_23EB6D3EC(int a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = sub_23EBB65EC(v14, 0x11uLL, a2);
  v6 = objc_msgSend_stringWithCString_encoding_(v3, v5, v4, 4);
  v7 = MEMORY[0x277CCACA8];
  sub_23EB4BD2C(a1, v13);
  v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v8, v13, 4);
  return objc_msgSend_stringWithFormat_(v7, v10, @"%@%@", v11, v6, v9);
}

void *sub_23EB6D4A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  Object = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], a2, a1, a4);
  if (objc_msgSend_length(Object, v5, v6, v7) >= 5)
  {
    v11 = objc_msgSend_componentsSeparatedByString_(Object, v8, @".", v10);
    if (objc_msgSend_count(v11, v12, v13, v14))
    {
      Object = objc_msgSend_lastObject(v11, v8, v9, v10);
    }
  }

  return sub_23EB6CE30(Object, v8, v9, v10);
}

uint64_t sub_23EB6D520(int a1)
{
  sub_23EB4BD2C(a1, v5);
  v2 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v1, v5, 4);
  return sub_23EB6D55C(v2, v3);
}

uint64_t sub_23EB6D55C(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, a1, &stru_285145FE8, @"AirPortSettings");
  if (!objc_msgSend_isEqualToString_(a1, v10, v9, v11))
  {
    return v9;
  }

  v12 = MEMORY[0x277CCA8D8];
  v13 = objc_opt_class();
  v16 = objc_msgSend_bundleForClass_(v12, v14, v13, v15);

  return objc_msgSend_localizedStringForKey_value_table_(v16, v17, a1, &stru_285145FE8, @"GuestNetwork");
}

__CFString *sub_23EB6D620(int a1, const char *a2)
{
  sub_23EB4BD2C(a1, v8);
  v4 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v3, v8, 4);
  return sub_23EB6CFF8(v4, a2, v5, v6);
}

__CFString *sub_23EB6D66C(void *a1, unint64_t a2)
{
  v22 = 0;
  sub_23EC0C1A8(&v22, 0, 0);
  if (a2 && objc_msgSend_UTF8ByteCount(a1, v4, v5, v6) >= a2)
  {
    return &stru_285145FE8;
  }

  v7 = &stru_285145FE8;
  if (objc_msgSend_length(v22, v4, v5, v6))
  {
    v8 = MEMORY[0x277CCA8D8];
    v9 = objc_opt_class();
    v12 = objc_msgSend_bundleForClass_(v8, v10, v9, v11);
    v14 = objc_msgSend_localizedStringForKey_value_table_(v12, v13, @"genericUserOwnership", &stru_285145FE8, @"AirPortSettings");
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v15, v14, @"%@%@", 0, v22, a1);
    if (objc_msgSend_UTF8ByteCount(valid, v17, v18, v19) <= a2 || a2 == 0)
    {
      return valid;
    }
  }

  return v7;
}

__CFString *sub_23EB6D75C(unsigned int a1, int a2)
{
  v2 = sub_23EB6CEE0(a1, a2, 0);
  v3 = sub_23EBB4B34(1937329773);

  return sub_23EB6D66C(v2, v3);
}

__CFString *sub_23EB6D7A8(unsigned int a1, int a2)
{
  v2 = sub_23EB6CEE0(a1, a2, 0);
  v3 = sub_23EBB4B34(1937329773);
  if (!v3)
  {
    return v2;
  }

  v7 = v3;
  v11 = &stru_285145FE8;
  if (objc_msgSend_UTF8ByteCount(v2, v4, v5, v6) < v3 && objc_msgSend_UTF8ByteCount(v2, v8, v9, v10) <= v7)
  {
    return v2;
  }

  return v11;
}

__CFString *sub_23EB6D820(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v2, v4, v3, v5);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"genericWiFiNetwork", &stru_285145FE8, @"AirPortSettings");
  v9 = sub_23EBB4B34(1918979693);

  return sub_23EB6D66C(v8, v9);
}

uint64_t sub_23EB6E6A4(CFAllocatorRef allocator, const __CFString *a2, CFTypeRef *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (qword_27E3816D8 == -1)
  {
    qword_27E3816E0 = CFArrayGetTypeID();
    qword_27E3816E8 = CFBooleanGetTypeID();
    qword_27E3816F0 = CFDataGetTypeID();
    qword_27E3816F8 = CFDateGetTypeID();
    qword_27E381700 = CFDictionaryGetTypeID();
    qword_27E381708 = CFNumberGetTypeID();
    qword_27E3816D8 = CFStringGetTypeID();
  }

  Mutable = CFDataCreateMutable(allocator, 0);
  cf = Mutable;
  if (!Mutable)
  {
    return 4294960568;
  }

  v25 = 0u;
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
  v10 = 0u;
  CFDataAppendBytes(Mutable, "CFB0", 4);
  v7 = sub_23EB6E824(&cf, a2);
  if (v7)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    CFDataAppendBytes(cf, "END!", 4);
    *a3 = cf;
  }

  return v7;
}

uint64_t sub_23EB6E824(uint64_t a1, const __CFString *a2)
{
  bytes = 0;
  valuePtr = 0;
  length = 0;
  v4 = CFGetTypeID(a2);
  if (v4 == qword_27E3816D8)
  {
    bytes = 112;
    CFDataAppendBytes(*a1, &bytes, 1);
    v5 = CFStringGetLength(a2);
    if (v5 >= 1)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v47.location = v7;
        v47.length = v6;
        v8 = CFStringGetBytes(a2, v47, 0x8000100u, 0, 0, (a1 + 8), 256, &length);
        if (v8 < 1)
        {
          return 4294960561;
        }

        v9 = v8;
        CFDataAppendBytes(*a1, (a1 + 8), length);
        v7 += v9;
        v10 = v6 <= v9;
        v6 -= v9;
      }

      while (!v10);
    }

    v11 = *a1;
    BytePtr = "";
    goto LABEL_16;
  }

  if (v4 == qword_27E381708)
  {
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    sub_23EB6F290(a1, valuePtr);
    return 0;
  }

  if (v4 == qword_27E3816E8)
  {
    if (*MEMORY[0x277CBED28] == a2)
    {
      v13 = 9;
    }

    else
    {
      v13 = 8;
    }

    bytes = v13;
    goto LABEL_15;
  }

  if (v4 == qword_27E3816F0)
  {
    v17 = CFDataGetLength(a2);
    v18 = v17 | 0x40;
    if (v17 >= 15)
    {
      v18 = 79;
    }

    bytes = v18;
    CFDataAppendBytes(*a1, &bytes, 1);
    if (v17 >= 15)
    {
      sub_23EB6F290(a1, v17);
    }

    BytePtr = CFDataGetBytePtr(a2);
    v11 = *a1;
    v14 = v17;
    goto LABEL_17;
  }

  if (v4 == qword_27E3816F8)
  {
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v46 = &v37 + 4;
    v45 = &v37;
    v44 = &v36 + 4;
    v43 = &v36;
    v42 = &v35 + 4;
    v41 = &v35;
    Default = CFAllocatorGetDefault();
    v20 = CFCalendarCreateWithIdentifier(Default, *MEMORY[0x277CBEE80]);
    if (v20)
    {
      v21 = v20;
      MEMORY[0x23EF1E1F0](a2);
      CFCalendarDecomposeAbsoluteTime(v21, v22, "yMdHms", &v46, &v45, &v44, &v43, &v42, &v41);
      CFRelease(v21);
    }

    LOBYTE(v46) = 48;
    BYTE1(v46) = HIDWORD(v37) >> 6;
    BYTE2(v46) = (4 * BYTE4(v37)) | (v37 >> 2) & 3;
    BYTE3(v46) = (v37 << 6) | (2 * (BYTE4(v36) & 0x1F)) | ((v36 & 0x10) != 0);
    BYTE4(v46) = (16 * v36) | (BYTE4(v35) >> 2) & 0xF;
    BYTE5(v46) = v35 & 0x3F | (BYTE4(v35) << 6);
    v11 = *a1;
    BytePtr = &v46;
    v14 = 6;
    goto LABEL_17;
  }

  if (v4 == qword_27E381700)
  {
    bytes = -48;
    CFDataAppendBytes(*a1, &bytes, 1);
    Count = CFDictionaryGetCount(a2);
    if (Count >= 1)
    {
      v24 = Count;
      v25 = malloc_type_malloc(16 * Count, 0xC0040B8AA526DuLL);
      if (!v25)
      {
        return 4294960568;
      }

      v26 = v25;
      CFDictionaryGetKeysAndValues(a2, v25, &v25[v24]);
      v27 = v26;
      v28 = v24;
      while (1)
      {
        v29 = sub_23EB6E824(a1, *v27);
        if (v29)
        {
          break;
        }

        v29 = sub_23EB6E824(a1, v27[v24]);
        if (v29)
        {
          break;
        }

        ++v27;
        if (!--v28)
        {
          free(v26);
          goto LABEL_43;
        }
      }

      v15 = v29;
      free(v26);
      return v15;
    }

LABEL_43:
    bytes = 0;
LABEL_15:
    v11 = *a1;
    BytePtr = &bytes;
LABEL_16:
    v14 = 1;
LABEL_17:
    CFDataAppendBytes(v11, BytePtr, v14);
    return 0;
  }

  if (v4 != qword_27E3816E0)
  {
    return 4294960561;
  }

  bytes = -96;
  CFDataAppendBytes(*a1, &bytes, 1);
  v30 = CFArrayGetCount(a2);
  if (v30 < 1)
  {
    goto LABEL_43;
  }

  v31 = v30;
  v32 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v32);
    v34 = sub_23EB6E824(a1, ValueAtIndex);
    if (v34)
    {
      return v34;
    }

    if (v31 == ++v32)
    {
      goto LABEL_43;
    }
  }
}

uint64_t sub_23EB6EC4C(const __CFAllocator *a1, unsigned __int8 *a2, unint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (a3 < 5)
  {
    return 4294960553;
  }

  if (*a2 == 809649731)
  {
    v7 = &a2[a3];
    v9 = (a2 + 4);
    v4 = sub_23EB6ED2C(a1, &v9, &a2[a3], &cf);
    if (v4)
    {
      if (!cf)
      {
        return v4;
      }
    }

    else
    {
      if (!cf)
      {
        return 4294960554;
      }

      if (v7 - v9 < 4)
      {
        v4 = 4294960553;
      }

      else
      {
        if (*v9 == 558124613)
        {
          v4 = 0;
          *a4 = cf;
          return v4;
        }

        v4 = 4294960580;
      }
    }

    CFRelease(cf);
    return v4;
  }

  return 4294960580;
}

uint64_t sub_23EB6ED2C(const __CFAllocator *a1, unsigned __int8 **a2, unsigned __int8 *a3, __CFDictionary **a4)
{
  value = 0;
  cf = 0;
  v4 = *a2;
  if (*a2 >= a3)
  {
    return 4294960546;
  }

  v9 = 0;
  valuePtr = 0;
  v11 = v4 + 1;
  v10 = *v4;
  v49 = v4 + 1;
  v12 = v10 >> 4;
  v13 = 4294960561;
  if (v10 >> 4 <= 3)
  {
    if (!v12)
    {
      v9 = 0;
      if (v10)
      {
        if (v10 == 9)
        {
          v25 = MEMORY[0x277CBED28];
        }

        else
        {
          if (v10 != 8)
          {
            Mutable = 0;
            goto LABEL_72;
          }

          v25 = MEMORY[0x277CBED10];
        }

        Mutable = CFRetain(*v25);
      }

      else
      {
LABEL_52:
        Mutable = v9;
      }

      goto LABEL_66;
    }

    if (v12 == 1)
    {
      v49 = v4;
      if ((v10 & 0xF0) == 0x10)
      {
        v34 = 1 << (v10 & 0xF);
        if (v34 <= a3 - v11)
        {
          v37 = 0;
          v38 = v34 + 1;
          do
          {
            v39 = *v11++;
            v37 = v39 | (v37 << 8);
            --v38;
          }

          while (v38 > 1);
          valuePtr = v37;
          v49 = v11;
          Mutable = CFNumberCreate(a1, kCFNumberSInt64Type, &valuePtr);
          if (Mutable)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        goto LABEL_48;
      }

LABEL_49:
      v9 = 0;
      Mutable = 0;
      v13 = 4294960540;
      goto LABEL_72;
    }

    Mutable = 0;
    if (v12 != 3)
    {
      goto LABEL_72;
    }

    if (a3 - v11 < 5)
    {
      goto LABEL_48;
    }

    v16 = v4[1];
    v17 = v4[2];
    v18 = v4[3];
    v19 = v4[4];
    v20 = v4[5];
    v49 = v4 + 6;
    v21 = CFCalendarCreateWithIdentifier(a1, *MEMORY[0x277CBEE80]);
    v9 = v21;
    if (v21)
    {
      at = 0.0;
      if (CFCalendarComposeAbsoluteTime(v21, &at, "yMdHms", (v17 >> 2) | (v16 << 6), (v18 >> 6) & 0xFFFFFFF3 | (4 * (v17 & 3)), (v18 >> 1) & 0x1F, (v19 >> 4) & 0xFFFFFFEF | (16 * (v18 & 1)), (v20 >> 6) & 0xFFFFFFC3 | (4 * (v19 & 0xF)), v20 & 0x3F))
      {
        Mutable = CFDateCreate(a1, at);
        CFRelease(v9);
        if (Mutable)
        {
LABEL_66:
          v9 = 0;
          v13 = 0;
          *a4 = Mutable;
          *a2 = v49;
LABEL_67:
          Mutable = 0;
          goto LABEL_72;
        }

        goto LABEL_68;
      }

      CFRelease(v9);
      v9 = 0;
    }

LABEL_70:
    Mutable = 0;
    goto LABEL_71;
  }

  if (v10 >> 4 > 9)
  {
    if (v12 != 10)
    {
      Mutable = 0;
      if (v12 != 13)
      {
        goto LABEL_72;
      }

      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        while (1)
        {
          v22 = sub_23EB6ED2C(a1, &v49, a3, &cf);
          if (v22)
          {
            v13 = v22;
            v9 = 0;
            goto LABEL_72;
          }

          v23 = cf;
          if (!cf)
          {
            goto LABEL_66;
          }

          v24 = sub_23EB6ED2C(a1, &v49, a3, &value);
          if (v24)
          {
            break;
          }

          v9 = value;
          if (!value)
          {
            goto LABEL_41;
          }

          CFDictionarySetValue(Mutable, v23, value);
          CFRelease(v23);
          cf = 0;
          CFRelease(v9);
          value = 0;
        }

        v13 = v24;
        v9 = 0;
        goto LABEL_73;
      }

      goto LABEL_68;
    }

    v9 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (v9)
    {
      while (1)
      {
        v32 = sub_23EB6ED2C(a1, &v49, a3, &value);
        if (v32)
        {
          break;
        }

        v33 = value;
        if (!value)
        {
          goto LABEL_52;
        }

        CFArrayAppendValue(v9, value);
        CFRelease(v33);
        value = 0;
      }

      v13 = v32;
      goto LABEL_67;
    }

    goto LABEL_70;
  }

  if (v12 == 4)
  {
    v26 = v10 & 0xF;
    valuePtr = v26;
    if ((v10 & 0xF) != 0xF)
    {
LABEL_39:
      if (v26 > a3 - v11)
      {
LABEL_40:
        v9 = 0;
        Mutable = 0;
LABEL_41:
        v13 = 4294960546;
        goto LABEL_72;
      }

      Mutable = CFDataCreate(a1, v11, v26);
      if (Mutable)
      {
        v35 = &v11[v26];
LABEL_59:
        v49 = v35;
        goto LABEL_66;
      }

LABEL_68:
      v9 = 0;
LABEL_71:
      v13 = 4294960568;
      goto LABEL_72;
    }

    if (v11 >= a3)
    {
      goto LABEL_40;
    }

    v27 = *v11;
    if ((*v11 & 0xF0) == 0x10)
    {
      v11 = v4 + 2;
      v28 = 1 << (v27 & 0xF);
      if (v28 <= a3 - v11)
      {
        v26 = 0;
        v29 = v28 + 1;
        do
        {
          v30 = v26;
          v31 = *v11++;
          v26 = v31 | (v26 << 8);
          --v29;
        }

        while (v29 > 1);
        valuePtr = v26;
        v49 = v11;
        if ((v30 << 8) >> 31)
        {
          v9 = 0;
          Mutable = 0;
          v13 = 4294960586;
          goto LABEL_72;
        }

        goto LABEL_39;
      }

LABEL_48:
      v9 = 0;
      Mutable = 0;
      v13 = 4294960553;
      goto LABEL_72;
    }

    goto LABEL_49;
  }

  Mutable = 0;
  if (v12 != 7)
  {
    goto LABEL_72;
  }

  if (v11 >= a3)
  {
LABEL_10:
    v9 = 0;
    Mutable = 0;
    v13 = 4294960569;
    goto LABEL_72;
  }

  v15 = v4 + 1;
  while (*v15)
  {
    if (++v15 == a3)
    {
      goto LABEL_10;
    }
  }

  v36 = CFStringCreateWithCString(a1, v11, 0x8000100u);
  if (v36 || (v36 = CFStringCreateWithCString(a1, v11, 0x500u)) != 0)
  {
    Mutable = v36;
LABEL_58:
    v35 = v15 + 1;
    goto LABEL_59;
  }

  v41 = strdup(v11);
  v9 = v41;
  if (!v41)
  {
    goto LABEL_70;
  }

  v42 = *v41;
  v43 = v41;
  if (*v41)
  {
    v44 = (v41 + 1);
    v43 = v41;
    do
    {
      if ((v42 & 0x80) == 0)
      {
        *v43++ = v42;
      }

      v45 = *v44++;
      v42 = v45;
    }

    while (v45);
  }

  *v43 = 0;
  Mutable = CFStringCreateWithCString(a1, v41, 0x8000100u);
  free(v9);
  if (Mutable)
  {
    goto LABEL_58;
  }

  v9 = 0;
  v13 = 4294960554;
LABEL_72:
  v23 = cf;
  if (cf)
  {
LABEL_73:
    CFRelease(v23);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

void sub_23EB6F290(CFMutableDataRef *a1, unint64_t a2)
{
  if (a2 > 0xFF)
  {
    if (a2 >> 16)
    {
      if (HIDWORD(a2))
      {
        bytes = 19;
        v4 = 8;
      }

      else
      {
        bytes = 18;
        v4 = 4;
      }
    }

    else
    {
      bytes = 17;
      v4 = 2;
    }
  }

  else
  {
    bytes = 16;
    v4 = 1;
  }

  CFDataAppendBytes(*a1, &bytes, 1);
  v6 = bswap64(a2);
  CFDataAppendBytes(*a1, &v6 - v4 + 8, v4);
}

uint64_t sub_23EB6F380(const __CFAllocator *a1, __CFArray *cf, CFTypeRef *a3, const UInt8 *a4, unsigned int *a5)
{
  v5 = cf;
  v104 = *MEMORY[0x277D85DE8];
  cfa = 0;
  v100 = a5;
  v98 = 0;
  if (!a4)
  {
    v10 = 0;
LABEL_6:
    v11 = 4294960591;
    goto LABEL_180;
  }

  v6 = a4;
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFArrayGetTypeID())
    {
      v9 = 0;
      v10 = v5;
    }

    else
    {
      v10 = 0;
      if (v8 != CFDictionaryGetTypeID())
      {
LABEL_167:
        v11 = 4294960540;
        goto LABEL_177;
      }

      v9 = v5;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v96 = *MEMORY[0x277CBEE80];
  v95 = *MEMORY[0x277CBED28];
  v94 = *MEMORY[0x277CBED10];
  v12 = v10;
  v10 = 0;
  while (1)
  {
    v13 = *v6;
    if (v13 <= 0x5C)
    {
      break;
    }

    switch(v13)
    {
      case ']':
        goto LABEL_15;
      case '{':
        Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          goto LABEL_166;
        }

        v16 = Mutable;
        v11 = sub_23EB6FE40(v12, v9, &cfa, Mutable, &v98);
        CFRelease(v16);
        if (v11)
        {
          goto LABEL_177;
        }

        v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
        if (!v18)
        {
          goto LABEL_166;
        }

        v15 = 0;
        goto LABEL_27;
      case '}':
LABEL_15:
        if (!v10)
        {
          v11 = 4294960554;
          goto LABEL_177;
        }

        v14 = *v10;
        v15 = *(v10 + 1);
        v16 = *(v10 + 2);
        free(v10);
        v10 = v14;
        goto LABEL_153;
    }

LABEL_36:
    v24 = 0;
    if (*v6)
    {
      while (v13 != 59)
      {
        if (v13 == 61)
        {
          v30 = cfa;
          v11 = 4294960554;
          if (cfa || !v9)
          {
            goto LABEL_178;
          }

          cfa = CFStringCreateWithBytes(a1, v6, v24, 0x8000100u, 0);
          if (!cfa)
          {
            goto LABEL_173;
          }

          goto LABEL_51;
        }

        v13 = v6[++v24];
        if (!v13)
        {
          break;
        }
      }
    }

    v25 = CFStringCreateWithBytes(a1, v6, v24, 0x8000100u, 0);
    if (!v25)
    {
      goto LABEL_166;
    }

    v26 = v25;
    v11 = sub_23EB6FE40(v12, v9, &cfa, v25, &v98);
    CFRelease(v26);
    if (v11)
    {
      goto LABEL_177;
    }

    if (!v13)
    {
LABEL_169:
      v11 = 0;
      if (a3)
      {
        *a3 = v98;
        v98 = 0;
      }

      goto LABEL_177;
    }

LABEL_51:
    v6 += v24;
    v15 = v12;
    v16 = v9;
LABEL_153:
    ++v6;
    v12 = v15;
    v9 = v16;
  }

  if (v13 != 37)
  {
    if (v13 == 91)
    {
      v17 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
      if (!v17)
      {
        goto LABEL_166;
      }

      v15 = v17;
      v11 = sub_23EB6FE40(v12, v9, &cfa, v17, &v98);
      CFRelease(v15);
      if (v11)
      {
        goto LABEL_177;
      }

      v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
      if (!v18)
      {
        goto LABEL_166;
      }

      v16 = 0;
LABEL_27:
      *v18 = v10;
      *(v18 + 1) = v12;
      v10 = v18;
      *(v18 + 2) = v9;
      goto LABEL_153;
    }

    if (!*v6)
    {
      goto LABEL_169;
    }

    goto LABEL_36;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    for (i = 0; ; ++i)
    {
      v23 = v6[i + 1];
      if (v23 != 35)
      {
        break;
      }
    }

    if (v23 == 46)
    {
      break;
    }

    if (v23 != 108)
    {
      v27 = &v6[i + 1];
      v29 = -1;
      goto LABEL_58;
    }

    ++v20;
    v21 += i;
    v6 += i + 1;
  }

  v27 = &v6[i + 2];
  v23 = *v27;
  if (v23 == 42)
  {
    v28 = v100;
    v100 += 2;
    v29 = *v28;
    if ((v29 & 0x80000000) == 0)
    {
      v27 = &v6[i + 3];
      v23 = *v27;
      goto LABEL_58;
    }

    goto LABEL_172;
  }

  v31 = v23 - 48;
  if ((v23 - 48) > 9)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    do
    {
      v29 = v31 + 10 * v29;
      v32 = *++v27;
      v23 = v32;
      v31 = v32 - 48;
    }

    while ((v32 - 48) < 0xA);
    if ((v29 & 0x80000000) != 0)
    {
LABEL_172:
      v11 = 4294960553;
      goto LABEL_177;
    }
  }

LABEL_58:
  v33 = v21 + i;
  v11 = 4294960579;
  if (v23 <= 96)
  {
    if (v23 > 78)
    {
      if (v23 != 79)
      {
        if (v23 != 84)
        {
          if (v23 != 85)
          {
            goto LABEL_177;
          }

          v45 = v100;
          v100 += 2;
          if (!*v45)
          {
            goto LABEL_171;
          }

          v46 = sub_23EB7F164(*v45, 0, bytes);
          v47 = 0;
          goto LABEL_90;
        }

        if (v29 != -1)
        {
          goto LABEL_177;
        }

        v91 = a3;
        v93 = v5;
        v69 = v100;
        v100 += 2;
        v92 = *v69;
        v100 = v69 + 4;
        v70 = v69[2];
        v100 = v69 + 6;
        v71 = v69[4];
        v100 = v69 + 8;
        v72 = v69[6];
        v100 = v69 + 10;
        v73 = v69[8];
        v100 = v69 + 12;
        v74 = v69[10];
        v75 = CFCalendarCreateWithIdentifier(a1, v96);
        if (v75)
        {
          v76 = v75;
          at = 0.0;
          if (CFCalendarComposeAbsoluteTime(v75, &at, "yMdHms", v92, v70, v71, v72, v73, v74))
          {
            v77 = CFDateCreate(a1, at);
            CFRelease(v76);
            v5 = v93;
            if (!v77)
            {
              goto LABEL_166;
            }

            v11 = sub_23EB6FE40(v12, v9, &cfa, v77, &v98);
            CFRelease(v77);
            if (!v11)
            {
              v15 = v12;
              v16 = v9;
              v6 = v27;
              a3 = v91;
              goto LABEL_153;
            }

            goto LABEL_177;
          }

          CFRelease(v76);
        }

        v11 = 4294960568;
        v5 = v93;
        goto LABEL_177;
      }

LABEL_97:
      if (v29 != -1)
      {
        goto LABEL_177;
      }

      v53 = v100;
      v100 += 2;
      v54 = *v53;
      if (!*v53)
      {
        goto LABEL_103;
      }

      if (v33 != 2)
      {
        if (v33 == 1)
        {
          DeepCopy = CFPropertyListCreateDeepCopy(a1, *v53, 2uLL);
          if (!DeepCopy)
          {
            goto LABEL_166;
          }

          goto LABEL_151;
        }

        v65 = v12;
        v66 = v9;
        v64 = *v53;
LABEL_140:
        v79 = sub_23EB6FE40(v65, v66, &cfa, v64, &v98);
        if (v79)
        {
          v11 = v79;
          goto LABEL_177;
        }

        goto LABEL_152;
      }

      v30 = cfa;
      v11 = 4294960591;
      if (cfa || !v9)
      {
LABEL_178:
        if (v30)
        {
          CFRelease(v30);
        }

        goto LABEL_180;
      }

      v78 = CFGetTypeID(*v53);
      if (v78 != CFDictionaryGetTypeID())
      {
        goto LABEL_167;
      }

      *&at = v9;
      v102 = 0;
      CFDictionaryApplyFunction(v54, sub_23EB7181C, &at);
      v11 = v102;
      if (!v102)
      {
        goto LABEL_152;
      }

LABEL_177:
      v30 = cfa;
      goto LABEL_178;
    }

    if (v23 == 64)
    {
      if (v29 != -1)
      {
        goto LABEL_177;
      }

      v60 = v100;
      v100 += 2;
      v61 = *v60;
      if (v61)
      {
        if (v12)
        {
          v62 = v12;
        }

        else
        {
          v62 = v9;
        }

        *v61 = v62;
        goto LABEL_152;
      }

LABEL_171:
      v11 = 4294960591;
      goto LABEL_177;
    }

    if (v23 == 67)
    {
      if (v29 != -1)
      {
        goto LABEL_177;
      }

      v67 = v100;
      v100 += 2;
      *bytes = bswap32(*v67);
      v52 = bytes;
      v51 = a1;
      v50 = 4;
      v68 = 0;
LABEL_150:
      DeepCopy = CFStringCreateWithBytes(v51, v52, v50, v68, 0);
      if (!DeepCopy)
      {
        goto LABEL_166;
      }

      goto LABEL_151;
    }

    if (v23 != 68)
    {
      goto LABEL_177;
    }

LABEL_80:
    if (v29 != -1)
    {
      goto LABEL_177;
    }

    v41 = v100;
    v100 += 2;
    v42 = *v41;
    v100 = v41 + 4;
    v43 = v41[2];
    if (!v42 && v43)
    {
      goto LABEL_171;
    }

    DeepCopy = CFDataCreate(a1, v42, v43);
    if (!DeepCopy)
    {
      goto LABEL_166;
    }

LABEL_151:
    v82 = DeepCopy;
    v11 = sub_23EB6FE40(v12, v9, &cfa, DeepCopy, &v98);
    CFRelease(v82);
    if (v11)
    {
      goto LABEL_177;
    }

    goto LABEL_152;
  }

  if (v23 <= 104)
  {
    if (v23 != 97)
    {
      if (v23 == 98)
      {
        if (v29 != -1)
        {
          goto LABEL_177;
        }

        v63 = v100;
        v100 += 2;
        if (*v63)
        {
          v64 = v95;
        }

        else
        {
          v64 = v94;
        }

        v65 = v12;
        v66 = v9;
        goto LABEL_140;
      }

      if (v23 != 100)
      {
        goto LABEL_177;
      }

      goto LABEL_80;
    }

    v55 = v100;
    v100 += 2;
    v56 = *v55;
    if (v56 == 0.0)
    {
      goto LABEL_171;
    }

    if (v33 == 2)
    {
      v57 = sub_23EB720C0(bytes, 64, "%##a", *&v56);
      if (v57 <= 0)
      {
LABEL_174:
        v11 = 4294960596;
        goto LABEL_177;
      }
    }

    else
    {
      v57 = sub_23EB720C0(bytes, 64, "%.*a", v29, v56);
      if (v57 < 1)
      {
        goto LABEL_174;
      }
    }

    v50 = v57;
    v52 = bytes;
    v51 = a1;
    goto LABEL_149;
  }

  if (v23 > 110)
  {
    if (v23 != 111)
    {
      if (v23 != 115)
      {
        goto LABEL_177;
      }

      v48 = v100;
      v100 += 2;
      v49 = *v48;
      if (*v48)
      {
        if ((v29 & 0x80000000) == 0)
        {
          v50 = sub_23EB7F45C(*v48, v29);
          v51 = a1;
          v52 = v49;
LABEL_149:
          v68 = 134217984;
          goto LABEL_150;
        }

        v47 = a1;
        v46 = *v48;
LABEL_90:
        DeepCopy = CFStringCreateWithCString(v47, v46, 0x8000100u);
        if (!DeepCopy)
        {
          goto LABEL_166;
        }

        goto LABEL_151;
      }

LABEL_103:
      if (cfa)
      {
        CFRelease(cfa);
        cfa = 0;
      }

      goto LABEL_152;
    }

    goto LABEL_97;
  }

  if (v23 == 105)
  {
    if (v29 != -1)
    {
      goto LABEL_177;
    }

    v58 = v100;
    v100 += 2;
    if (v20 == 2)
    {
      v59 = *v58;
    }

    else
    {
      *&v59 = *v58;
    }

    at = v59;
    DeepCopy = CFNumberCreate(a1, kCFNumberSInt64Type, &at);
    if (!DeepCopy)
    {
LABEL_166:
      v11 = 4294960568;
      goto LABEL_177;
    }

    goto LABEL_151;
  }

  if (v23 != 107)
  {
    goto LABEL_177;
  }

  v30 = cfa;
  v11 = 4294960554;
  if (cfa || !v9)
  {
    goto LABEL_178;
  }

  v34 = v27[1];
  v11 = 4294960579;
  if (v34 <= 0x54)
  {
    if (v34 == 67)
    {
      if (v29 != -1)
      {
        goto LABEL_177;
      }

      v83 = v100;
      v100 += 2;
      *bytes = bswap32(*v83);
      v39 = bytes;
      v38 = a1;
      v37 = 4;
      v40 = 0;
LABEL_157:
      v84 = CFStringCreateWithBytes(v38, v39, v37, v40, 0);
      goto LABEL_163;
    }

    if (v34 != 79)
    {
      goto LABEL_177;
    }

LABEL_144:
    if (v29 != -1)
    {
      goto LABEL_177;
    }

    v80 = v100;
    v100 += 2;
    v81 = *v80;
    cfa = v81;
    if (v81)
    {
      CFRetain(v81);
      goto LABEL_164;
    }

    goto LABEL_6;
  }

  if (v34 == 85)
  {
    if (v29 != -1)
    {
      goto LABEL_177;
    }

    v85 = v100;
    v100 += 2;
    if (*v85)
    {
      v86 = sub_23EB7F164(*v85, 0, bytes);
      v87 = 0;
      goto LABEL_162;
    }

    goto LABEL_171;
  }

  if (v34 == 111)
  {
    goto LABEL_144;
  }

  if (v34 != 115)
  {
    goto LABEL_177;
  }

  v35 = v100;
  v100 += 2;
  v36 = *v35;
  if (!*v35)
  {
    goto LABEL_171;
  }

  if ((v29 & 0x80000000) == 0)
  {
    v37 = sub_23EB7F45C(*v35, v29);
    v38 = a1;
    v39 = v36;
    v40 = 134217984;
    goto LABEL_157;
  }

  v87 = a1;
  v86 = *v35;
LABEL_162:
  v84 = CFStringCreateWithCString(v87, v86, 0x8000100u);
LABEL_163:
  cfa = v84;
  if (v84)
  {
LABEL_164:
    v88 = v27[2];
    v27 += 2;
    if (v88 != 61)
    {
      goto LABEL_177;
    }

LABEL_152:
    v15 = v12;
    v16 = v9;
    v6 = v27;
    goto LABEL_153;
  }

LABEL_173:
  v11 = 4294960568;
LABEL_180:
  if (!v5 && v98)
  {
    CFRelease(v98);
  }

  if (v10)
  {
    do
    {
      v89 = *v10;
      free(v10);
      v10 = v89;
    }

    while (v89);
  }

  return v11;
}