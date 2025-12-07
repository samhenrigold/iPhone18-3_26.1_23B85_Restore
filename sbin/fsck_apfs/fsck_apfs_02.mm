uint64_t sub_10001B350(uint64_t a1, _OWORD *a2)
{
  v6 = a1;
  v4 = 160;
  v5 = 8;
  result = sub_1000397B8(dword_100080D00, 0, 0, &v6, &v5, 8, a2, &v4);
  if (result == 2)
  {
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return sub_10003B12C(dword_100080D00, 0, &v6, 8, a2, 160);
  }

  return result;
}

uint64_t sub_10001B3F0(uint64_t a1, uint64_t *a2, void *a3)
{
  *a3 = 0;
  *a2 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  if ((*(a1 + 152) & 0x10) != 0)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v8;
    v19 = v8;
    v16 = v8;
    v17 = v8;
    v14 = v8;
    v15 = v8;
    v12 = v8;
    v13 = v8;
    v10 = v8;
    v11 = v8;
    v6 = sub_10001B350(v4, &v10);
    if (!v6)
    {
      *a3 = *(a1 + 16);
      *a2 = v11;
    }
  }

  else
  {
    v6 = 0;
    *a2 = v4;
  }

  return v6;
}

uint64_t sub_10001B490@<X0>(uint64_t result@<X0>, int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v6 = dword_100080DE8;
  if (a2)
  {
    v7 = unk_100080DE0;
    v8 = *(&xmmword_100080DD0 + 1) + a5;
    *a6 = qword_100080D80 + a4;
    *(a6 + 8) = v8;
    v9 = qword_100080D90;
    *(a6 + 16) = v7 + a3;
    *(a6 + 24) = v9;
    v10 = qword_100080DA0;
    v11 = qword_100080DB0;
    *(a6 + 32) = qword_100080DA0;
    *(a6 + 40) = v11;
    if ((v6 & 0x40) == 0)
    {
      *(a6 + 48) = qword_100080DC0;
      if ((v6 & 0x800) == 0)
      {
        return result;
      }

      v10 = xmmword_100080DD0;
      goto LABEL_11;
    }

LABEL_10:
    *(a6 + 48) = v9;
    if ((v6 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v12 = unk_100080DE0;
  v13 = *(result + 144);
  v14 = *(&xmmword_100080DD0 + 1) + a5 - *(result + 136);
  *a6 = qword_100080D80 + a4 - *(result + 48);
  *(a6 + 8) = v14;
  v15 = v12 + a3 - v13;
  v16 = qword_100080D90;
  v17 = qword_100080D90 - *(result + 64);
  *(a6 + 16) = v15;
  *(a6 + 24) = v17;
  v10 = qword_100080DA0 - *(result + 80);
  v18 = qword_100080DB0 - *(result + 96);
  *(a6 + 32) = v10;
  *(a6 + 40) = v18;
  if ((v6 & 0x40) == 0)
  {
    *(a6 + 48) = qword_100080DC0 - *(result + 112);
    if ((v6 & 0x800) == 0)
    {
      return result;
    }

    v10 = xmmword_100080DD0 - *(result + 128);
    goto LABEL_11;
  }

  if ((*(result + 152) & 0x40) == 0)
  {
    v9 = v16 - *(result + 112);
    goto LABEL_10;
  }

  *(a6 + 48) = v17;
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_11:
  *(a6 + 56) = v10;
  return result;
}

char *sub_10001B5B8(uint64_t a1, char *a2, uint64_t *a3)
{
  sub_10001870C(a2 + 48, *a3, a1, "descendants");
  sub_10001870C(a2 + 136, a3[1], a1, "SAF descendants");
  sub_10001870C(a2 + 144, a3[2], a1, "dir-stats descendants");
  sub_10001870C(a2 + 64, a3[3], a1, "physical size");
  sub_10001870C(a2 + 80, a3[4], a1, "resource fork size");
  sub_10001870C(a2 + 96, a3[5], a1, "clone size");
  sub_10001870C(a2 + 112, a3[6], a1, "purgeable size");
  v6 = a3[7];

  return sub_10001870C(a2 + 128, v6, a1, "purgeable rsrc size");
}

uint64_t sub_10001B6B4(uint64_t result, void *a2)
{
  v10 = result;
  if (!result)
  {
    return result;
  }

  v3 = result;
  memset(__s1, 0, sizeof(__s1));
  if (!memcmp(__s1, a2, 0xA0uLL))
  {
    v12 = v3;
    if (qword_100080E28)
    {
      *&__s1[0] = a2[18];
      *(&__s1[0] + 1) = v3;
      v7 = sub_10003B708(&unk_100080DF0, 0, __s1, 16);
    }

    else
    {
      v7 = 0;
    }

    LODWORD(result) = sub_10003B708(dword_100080D00, 0, &v12, 8);
    if (result)
    {
      return result;
    }

    else
    {
      return v7;
    }
  }

  v4 = *(a2 + 78);
  if ((v4 & 1) == 0)
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
  }

  v5 = *(a2 + 38);
  if ((v5 & 0x20) != 0)
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
  }

  if ((v5 & 0x10) != 0)
  {
    if ((v5 & 0x80) != 0 || a2[4] || a2[3])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
    }
  }

  else
  {
    v6 = a2[3];
    if ((v5 & 0x80) != 0)
    {
      if (!v6 || a2[4] != v6)
      {
        return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
      }
    }

    else if (v6 || !a2[4])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
    }
  }

  if (((a2[19] & 0x10) == 0) == (v4 & 2) >> 1 || *a2 || (v4 & 4) == 0 && (a2[19] & 0x12) == 2 || !sub_10001AF84(a2) || a2[6] != a2[5] || a2[8] != a2[7])
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
  }

  if (v5)
  {
    if (a2[10] != a2[9])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
    }
  }

  else if (a2[9])
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
  }

  if ((v4 & 8) != 0 && (v5 & 4) != 0)
  {
    if (a2[12] != a2[11])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
    }
  }

  else if ((v4 & 8) != 0 || (v5 & 4) != 0)
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
  }

  if ((v5 & 0x50) == 0x40)
  {
    if ((v4 & 0x10) == 0 || (v5 & 8) == 0)
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
    }

    v8 = 0;
  }

  else
  {
    v8 = (v5 & 8) == 0;
  }

  if ((v4 & 0x20) != 0 && !v8)
  {
    if (a2[14] != a2[13])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
    }

    goto LABEL_49;
  }

  if ((!v8 | ((v4 & 0x20) >> 5)))
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
  }

LABEL_49:
  v9 = sub_10001AFC4(a2);
  if ((v4 & 0x100) != 0 || (v5 & 0x400) != 0 || !v9 || a2[2] != a2[1])
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 160);
  }

  return sub_10001BB80(v3, a2);
}

uint64_t sub_10001B920(uint64_t a1, uint64_t *__s2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v4;
  v21 = v4;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  v14 = v4;
  v15 = v4;
  v5 = 513;
  v12 = v4;
  v13 = v4;
  while (1)
  {
    if (!a1)
    {
      return 0;
    }

    v6 = a1;
    if (!--v5)
    {
      break;
    }

    v24 = 0u;
    v25 = 0u;
    __s1 = 0u;
    v23 = 0u;
    result = memcmp(&__s1, __s2, 0x40uLL);
    if (!result)
    {
      return result;
    }

    result = sub_10001B350(a1, &v12);
    if (result)
    {
      return result;
    }

    sub_10001B5B8(a1, &v12, __s2);
    result = sub_10001B6B4(a1, &v12);
    if (result)
    {
      return result;
    }

    a1 = v13;
    if (v13 && (BYTE8(v21) & 0x10) != 0)
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30 = v9;
      v31 = v9;
      v28 = v9;
      v29 = v9;
      v26 = v9;
      v27 = v9;
      v24 = v9;
      v25 = v9;
      __s1 = v9;
      v23 = v9;
      result = sub_10001B350(v13, &__s1);
      if (result)
      {
        return result;
      }

      v8 = v13;
      a1 = v23;
    }

    else
    {
      v8 = 0;
    }

    result = sub_10001BAD8(v8, __s2[2]);
    if (result)
    {
      return result;
    }

    v10 = v12;
    if (v12)
    {
      result = sub_10001B350(v12, &v12);
      if (result)
      {
        return result;
      }

      sub_10001B5B8(v10, &v12, __s2);
      result = sub_10001B6B4(v10, &v12);
      if (result)
      {
        return result;
      }
    }

    v11 = WORD4(v21);
    if ((BYTE8(v21) & 0x40) != 0)
    {
      __s2[6] = __s2[3];
      if ((v11 & 0x800) != 0)
      {
        __s2[7] = __s2[4];
      }
    }

    if (v6 == a1)
    {
      sub_100045744("detected chained-key loop involving dir-stats %llu\n", v6);
      sub_100049C40(0x59D, 92);
      return 0;
    }
  }

  sub_100045744("performed too many chained-key iterations (current id %llu); aborting dir-stats repairs\n", a1);
  sub_100049C40(0x590, 92);
  result = 0;
  byte_100080D40 = 1;
  return result;
}

uint64_t sub_10001BAD8(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v7[8] = v5;
      v8 = v5;
      v7[6] = v5;
      v7[7] = v5;
      v7[4] = v5;
      v7[5] = v5;
      v7[2] = v5;
      v7[3] = v5;
      v7[0] = v5;
      v7[1] = v5;
      result = sub_10001B350(a1, v7);
      if (!result)
      {
        v6 = __OFADD__(v8, a2);
        *&v8 = v8 + a2;
        if (v6)
        {
          sub_100045744("dir-stats object (id %llu): %s overflow\n", a1, "dir-stats descendants");
          *&v8 = 0x7FFFFFFFFFFFFFFFLL;
          sub_100049C40(0x56D, 84);
        }

        return sub_10001B6B4(a1, v7);
      }
    }
  }

  return result;
}

uint64_t sub_10001BB80(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  if (qword_100080E28)
  {
    v4[0] = *(a2 + 144);
    v4[1] = a1;
    v2 = sub_10003B708(&unk_100080DF0, 0, v4, 16);
  }

  else
  {
    v2 = 0;
  }

  LODWORD(result) = sub_10003B708(dword_100080D00, 0, &v5, 8);
  if (result)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001BC00(_DWORD *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, _BYTE *a6, unsigned int a7)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7u, a2, a3, 0, a4, a5, a6, a7);
  }

  sub_10002797C();
  return 0;
}

uint64_t sub_10001BC54(char *__s, uint64_t a2, __int128 *a3, mach_port_t *a4, uint64_t a5)
{
  outputStructCnt = 100;
  result = 22;
  if (__s && a4)
  {
    v11 = sub_10002E3D8(__s, 0, a4, 0, 0);
    if (v11)
    {

      return sub_10004F380(v11);
    }

    else
    {
      memset(v20 + 8, 170, 0x950uLL);
      v12 = a3[1];
      outputStruct = *a3;
      v19 = v12;
      *&v20[0] = a2;
      v13 = IOConnectCallStructMethod(*a4, 0x32u, &outputStruct, 0x28uLL, &outputStruct, &outputStructCnt);
      if (v13)
      {
        IOServiceClose(*a4);
      }

      if (a5)
      {
        v14 = v20[3];
        *(a5 + 64) = v20[2];
        *(a5 + 80) = v14;
        *(a5 + 96) = v20[4];
        v15 = v19;
        *a5 = outputStruct;
        *(a5 + 16) = v15;
        v16 = v20[1];
        *(a5 + 32) = v20[0];
        *(a5 + 48) = v16;
      }

      if (v13)
      {
        return sub_10004F380(v13);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001BD78(io_connect_t *a1)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!v2)
  {
    return 22;
  }

  v3 = IOConnectCallStructMethod(v2, 0x33u, 0, 0, 0, &outputStructCnt);
  if (v3)
  {
    return sub_10004F380(v3);
  }

  IOServiceClose(*a1);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_10001BDEC(char *a1, unsigned __int8 *uu, _OWORD *a3, char a4, uint64_t a5)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  result = 22;
  if (a5 && !is_null)
  {
    v17 = -1431655766;
    memset(__b, 170, sizeof(__b));
    v12 = sub_10002E3D8(a1, 0, &v17, 0, 0);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      uuid_copy(__b, uu);
      v14 = a3[1];
      *&__b[16] = *a3;
      *&__b[32] = v14;
      *&__b[56] = a5;
      __b[48] = a4;
      v13 = IOConnectCallStructMethod(v17, 0x3Bu, __b, 0x40uLL, 0, &outputStructCnt);
      IOServiceClose(v17);
      if (!v13)
      {
        return 0;
      }
    }

    return sub_10004F380(v13);
  }

  return result;
}

uint64_t sub_10001BEF4(char *a1, io_connect_t *a2)
{
  result = 22;
  if (a1 && a2)
  {
    if (*a2)
    {
      return 37;
    }

    else
    {
      v9 = v2;
      v10 = v3;
      if (*a1 == 114)
      {
        v6 = a1 + 1;
      }

      else
      {
        v6 = a1;
      }

      v8 = 0;
      v7 = sub_10002E3D8(v6, &v8, a2, 0, 0);
      return sub_10004F380(v7);
    }
  }

  return result;
}

uint64_t sub_10001BF60(char *a1, mach_port_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = 8;
  v16 = sub_10002E0DC(a1, 0);
  result = 22;
  if (a3 - 6 >= 0xFFFFFFFB && a2 && v16 <= 0x63)
  {
    memset(&outputStruct[4], 170, 0x958uLL);
    outputStruct[0] = __PAIR64__(v16, a3);
    outputStruct[1] = a4;
    outputStruct[2] = a5;
    outputStruct[3] = *a6;
    LOBYTE(outputStruct[4]) = *(a7 + 64);
    outputStruct[5] = a8;
    LOBYTE(outputStruct[6]) = a9;
    result = IOConnectCallStructMethod(a2, 0x40u, outputStruct, 0x38uLL, outputStruct, &v18);
    if (a3 <= 4 && ((1 << a3) & 0x1A) != 0)
    {
      *a6 = outputStruct[0];
    }

    if (result)
    {
      return sub_10004F380(result);
    }
  }

  return result;
}

uint64_t sub_10001C070(uint64_t connect)
{
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return connect;
}

unint64_t sub_10001C07C(unsigned int a1, unint64_t a2, unint64_t a3)
{
  v8 = 8;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (sysctlbyname("hw.memsize", &v9, &v8, 0, 0) == -1)
  {
    v6 = 0x4000000;
  }

  else
  {
    v6 = v9 / a1;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= a3)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10001C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_100080E30)
  {
    v6 = qword_100080E38;
    v7 = dword_100080E30;
    do
    {
      if (*v6 == a1)
      {
        return 0;
      }

      v6 += 3;
      --v7;
    }

    while (v7);
    v8 = qword_100080E38;
    if ((dword_100080E30 & (dword_100080E30 - 1)) != 0)
    {
      goto LABEL_9;
    }

    v8 = malloc_type_realloc(qword_100080E38, 24 * (2 * dword_100080E30), 0xF0040613C4080uLL);
    if (v8)
    {
      qword_100080E38 = v8;
      goto LABEL_9;
    }

    return 12;
  }

  v8 = malloc_type_malloc(0x18uLL, 0xF0040613C4080uLL);
  qword_100080E38 = v8;
  if (!v8)
  {
    return 12;
  }

LABEL_9:
  v9 = 0;
  v10 = dword_100080E30;
  v11 = &v8[24 * dword_100080E30];
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *v11 = a1;
  dword_100080E30 = v10 + 1;
  return v9;
}

uint64_t sub_10001C204()
{
  if (!qword_100080E48 || qword_100080E50 < qword_100080E48)
  {
    return 0;
  }

  v13[11] = v0;
  v13[12] = v1;
  if (qword_100080E50 >= qword_100080E40)
  {
    qword_100080E40 = qword_100080E50 + 52428800;
    sub_100045614("Allocated (%llu) MB for cached btrees in %u blocks, limit is (%llu) MB\n", qword_100080E50 >> 20, dword_100080E58, qword_100080E48 >> 20);
    if (dword_100080E30)
    {
      sub_100045614("Node counts:");
      if (dword_100080E30)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          v5 = *(qword_100080E38 + v3 + 8);
          v13[0] = 0;
          sub_10003B7B8(*(qword_100080E38 + v3), 0, v13);
          if (v4 >= (dword_100080E30 - 1))
          {
            v6 = "\n";
          }

          else
          {
            v6 = ",";
          }

          sub_100045614(" %s tree (%llu)%s", v5, v13[0], v6);
          ++v4;
          v3 += 24;
        }

        while (v4 < dword_100080E30);
      }
    }
  }

  result = 1;
  if (qword_100080E38 && dword_100080E30)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = qword_100080E38 + v7;
      v13[0] = 0;
      sub_10003B7B8(*(qword_100080E38 + v7), 0, v13);
      if (v13[0] > v9)
      {
        v10 = v11;
        v9 = v13[0];
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < dword_100080E30);
    if (v10)
    {
      v12 = sub_100045614("Disabling fsck cross checks of %s tree\n", *(v10 + 8));
      (*(v10 + 16))(v12);
      qword_100080E40 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_10001C3D8(size_t size, void *a2, void *a3)
{
  v5 = size;
  if (!qword_100080E48)
  {
    qword_100080E48 = sub_10001C07C(0x10u, 0x80000000uLL, 0);
  }

  if (dword_100080E58)
  {
    if ((dword_100080E58 & (dword_100080E58 - 1)) != 0)
    {
      goto LABEL_8;
    }

    v6 = malloc_type_realloc(qword_100080E60, 8 * (2 * dword_100080E58), 0x10040436913F5uLL);
    if (v6)
    {
      qword_100080E60 = v6;
      goto LABEL_8;
    }

    return 12;
  }

  qword_100080E60 = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
  if (!qword_100080E60)
  {
    return 12;
  }

LABEL_8:
  *a2 = ++dword_100080E58;
  v7 = malloc_type_calloc(1uLL, v5, 0xE56A0005uLL);
  *(qword_100080E60 + 8 * *a2 - 8) = v7;
  qword_100080E50 += v5;
  if (!v7)
  {
    return 12;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = v7;
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t sub_10001C500(unsigned int a1, uint64_t a2)
{
  result = 14;
  if (a2)
  {
    if (dword_100080E58 >= a2)
    {
      v4 = qword_100080E60 + 8 * a2;
      free(*(v4 - 8));
      result = 0;
      qword_100080E50 -= a1;
      *(v4 - 8) = 0;
    }
  }

  return result;
}

uint64_t sub_10001C564(uint64_t a1, uint64_t a2, void *a3)
{
  result = 14;
  if (a2 && dword_100080E58 >= a2)
  {
    v4 = *(qword_100080E60 + 8 * a2 - 8);
    if (v4)
    {
      result = 0;
      *a3 = v4;
    }
  }

  return result;
}

uint64_t sub_10001C59C(size_t __n, uint64_t a2, void *__src)
{
  v3 = 14;
  if (a2 && dword_100080E58 >= a2)
  {
    v4 = *(qword_100080E60 + 8 * a2 - 8);
    if (v4)
    {
      if (v4 != __src)
      {
        memcpy(v4, __src, __n);
      }

      return 0;
    }

    else
    {
      return 14;
    }
  }

  return v3;
}

uint64_t sub_10001C614()
{
  sub_100045428("fsck cache stats:\n");
  sub_10001C65C(1);
  sub_100045428("\n");

  return sub_10001C65C(0);
}

uint64_t sub_10001C65C(int a1)
{
  if (a1)
  {
    v1 = &unk_100080E68;
  }

  else
  {
    v1 = &unk_100080E98;
  }

  if (a1)
  {
    v2 = "hit";
  }

  else
  {
    v2 = "miss";
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v13 = v3;
  v14 = v3;
  if (a1)
  {
    v4 = &unk_100080E74;
  }

  else
  {
    v4 = &unk_100080EA4;
  }

  __sprintf_chk(v13, 0, 0x20uLL, "Cache %s count:", v2);
  sub_100045428("\t%-32s %u\n", v13, *(v1 + 2));
  __sprintf_chk(v13, 0, 0x20uLL, "Cache %s time:", v2);
  sub_100045428("\t%-32s %.2lf [usec]\n", v13, *v1);
  __sprintf_chk(v13, 0, 0x20uLL, "Cache average %s time:", v2);
  LODWORD(v5) = *(v1 + 2);
  sub_100045428("\t%-32s %.2lf [usec]\n", v13, *v1 / v5);
  sub_100045428("\tCache %s histogram:\n", v2);
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = __exp10(v6);
    v9 = v8;
    if (v6 >= 4)
    {
      v10 = v9 / 0xF4240;
      if (v6 == 7)
      {
        v7 /= 0xF4240uLL;
      }

      else
      {
        v10 = v9 / 0x3E8;
        v7 /= 0x3E8uLL;
      }
    }

    else
    {
      v10 = v8;
      if (!v6)
      {
        v11 = "usec";
        goto LABEL_18;
      }
    }

    v11 = off_100078740[(v6 - 1) / 3u];
LABEL_18:
    result = sub_100045428("\t\t[%4llu - %4llu) [%4s] = %d\n", v7, v10, v11, v4[v6++]);
    v7 = v9;
  }

  while (v6 != 8);
  return result;
}

uint64_t sub_10001C8D8(uint64_t *a1, __int128 *a2, int a3, unsigned int a4)
{
  v32 = 0;
  v8 = *(*a1 + 72);
  if (v8 && *(v8 + 128) == sub_10001CB80)
  {
    return 0;
  }

  v9 = malloc_type_malloc(0xB0uLL, 0x80040F50BA72EuLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = dword_10007C048;
  }

  if (v11 > 0x100000 || v11 % *(*a1 + 84) || vm_page_size < v11 && v11 % vm_page_size || vm_page_size > v11 && vm_page_size % v11)
  {
    v12 = 34;
  }

  else
  {
    v14 = *(*a1 + 72);
    v16 = v14[9];
    v15 = v14[10];
    v17 = v14[7];
    v9[8] = v14[8];
    v18 = v14[2];
    v19 = *v14;
    v9[1] = v14[1];
    v9[2] = v18;
    v21 = v14[5];
    v20 = v14[6];
    v22 = v14[4];
    v9[3] = v14[3];
    v9[4] = v22;
    v9[6] = v20;
    v9[7] = v17;
    v9[9] = v16;
    v9[10] = v15;
    *v9 = v19;
    v9[5] = v21;
    *(v9 + 16) = sub_10001CB80;
    *(v9 + 3) = sub_10001CBDC;
    *(v9 + 5) = sub_10001CC0C;
    *(v9 + 4) = sub_10001CE44;
    *(v9 + 6) = sub_10001CE4C;
    *(v9 + 8) = sub_10001CF9C;
    *(v9 + 9) = sub_10001D018;
    *(v9 + 11) = sub_10001D0A0;
    *(v9 + 18) = sub_10001D120;
    if (*(qword_10009BA60 + 40))
    {
      v23 = 0x4000000;
    }

    else
    {
      if (a3)
      {
        v24 = a3;
      }

      else
      {
        v24 = 8;
      }

      v23 = sub_10001C07C(v24, &_mh_execute_header, 0);
    }

    v25 = a4 != 0;
    v26 = *(*a1 + 84);
    v27 = v23 / v26;
    v28 = *(*a1 + 112);
    v29 = v28 * v26;
    if (v27 <= v28)
    {
      v30 = v23;
    }

    else
    {
      v30 = v29;
    }

    v31 = v30 / v11;
    sub_100045614("Requested cache size: %lluMB (%uk blocks * %ukB)\n", v30 >> 20, (v30 / v11) >> 10, v11 >> 10);
    v12 = sub_1000480B8(&v32, *a1, a2, *(*a1 + 72), v11, v31, 0x101u, 0, v25);
    if (!v12)
    {
      *(*a1 + 16) = v32;
      *(*a1 + 72) = v10;
      return v12;
    }
  }

  free(v10);
  sub_10002F398(*a1);
  *a1 = 0;
  return v12;
}

uint64_t sub_10001CB80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    free(*(a1 + 72));
    *(a1 + 72) = sub_10004853C(*(a1 + 16));
    sub_1000483CC(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  return sub_10002F398(a1);
}

double sub_10001CC0C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {

    sub_10001D304(a1, a2, a3, a4, a5, a9, a7, a8);
  }

  else
  {
    v16 = sub_10002F380(a1);
    v24 = 1;
    v23 = 0;
    if ((a9 & 0x10000) != 0)
    {
      v21 = *(sub_10004853C(*(a1 + 16)) + 40);

      LODWORD(a9) = a9 & 0xFFFEFFFF;
      v21(a1, a2, a3, a4, a5, 0, 0, a8, a9, 0);
    }

    else
    {
      v17 = v16 * a2;
      v18 = v16 * a3;
      if (byte_10009B0F0 == 1)
      {
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        tv_sec = __tp.tv_sec;
        v20 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        tv_sec = 0;
        v20 = 0;
      }

      if (!sub_100048780(*(a1 + 16), v17, v18, &v23, a5, a9, &v24, 0, a8))
      {
        if (byte_10009B0F0 == 1)
        {
          __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          sub_10001D50C(v24, tv_sec, v20, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, 0);
        }

        v22 = v23;
        memcpy(a4, *(v23 + 40), v18);
        return sub_100049474(*(a1 + 16), v22, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10001CE4C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 112))
  {
    return 0;
  }

  v4 = sub_10002F380(a1);
  v5 = *(a2 + 120);
  v6 = *(a2 + 128);
  v7 = *(a2 + 112);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (byte_10009B0F0 == 1)
  {
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v9 = SLODWORD(__tp.tv_nsec) / 1000;
  }

  else
  {
    tv_sec = 0;
    v9 = 0;
  }

  result = sub_100048608(*(a1 + 16), v5, &v11);
  if (!result)
  {
    if (byte_10009B0F0 == 1)
    {
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      sub_10001D50C(0, tv_sec, v9, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, *(a2 + 136));
    }

    memcpy(*(a2 + 104), (v7 + v6), v4);
    return sub_1000486DC(*(a1 + 16), v11);
  }

  return result;
}

uint64_t sub_10001D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002F380(a1);
  v7 = sub_10004853C(*(a1 + 16));
  v8 = (*(v7 + 88))(a1, a2, a3);
  if (!v8)
  {
    sub_100049780(*(a1 + 16), 0, v6 * a2, v6 * a3);
  }

  return v8;
}

uint64_t sub_10001D120(uint64_t a1, uint64_t a2)
{
  result = sub_1000484FC(*(a1 + 16), a2);
  if (!result)
  {
    v5 = *(sub_10004853C(*(a1 + 16)) + 144);

    return v5(a1, a2);
  }

  return result;
}

uint64_t sub_10001D180(uint64_t a1, uint64_t *a2)
{
  result = sub_10002FCDC(a1, a2);
  if (!result)
  {

    return sub_10001C8D8(a2, 0, 0, 0);
  }

  return result;
}

uint64_t sub_10001D1D4(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, int a5, unsigned int a6)
{
  result = sub_10002FCDC(a1, a3);
  if (!result)
  {

    return sub_10001C8D8(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10001D244(char *a1, uint64_t a2, uint64_t *a3, __int128 *a4, int a5, unsigned int a6)
{
  result = sub_10002FFDC(a1, a2, a3);
  if (!result)
  {

    return sub_10001C8D8(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10001D2B0(char *a1, uint64_t a2, uint64_t *a3)
{
  result = sub_10002FFDC(a1, a2, a3);
  if (!result)
  {

    return sub_10001C8D8(a3, 0, 0, 0);
  }

  return result;
}

void sub_10001D304(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  if (a3 <= 1 && (a6 & 0x10000) == 0)
  {
    v15 = *(a1 + 16);
    v16 = sub_10002F380(a1);
    v24 = sub_1000484F4(v15);
    tv_sec = 0;
    v18 = 0;
    v19 = v16;
    v20 = v16 * a2;
    v27 = 0;
    v26 = 1;
    if (byte_10009B0F0 == 1)
    {
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      tv_sec = __tp.tv_sec;
      v18 = SLODWORD(__tp.tv_nsec) / 1000;
    }

    v25 = tv_sec;
    if (!sub_100048780(*(a1 + 16), v20, v16, &v27, a5, a6, &v26, a7, a8))
    {
      if (byte_10009B0F0 == 1)
      {
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v21 = __tp.tv_sec;
        v22 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      if (v26 == 1)
      {
        if (byte_10009B0F0)
        {
          sub_10001D50C(1, v25, v18, v21, v22, 0);
        }

        v23 = v27;
        memcpy(a4, *(v27 + 40), v19);
        sub_100049474(*(a1 + 16), v23, 0);
        *(a7 + 14) = 0;
      }

      else
      {
        if (byte_10009B0F0)
        {
          *(a7 + 17) = 1000000 * (v21 - v25) - v18 + v22;
        }

        *(a7 + 13) = a4;
        *(a7 + 15) = v20 / v24 * v24;
        *(a7 + 16) = v20 % v24;
      }
    }
  }
}

uint64_t sub_10001D50C(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = result;
  v7 = a6 - a3 + a5 + 1000000 * (a4 - a2);
  if (v7)
  {
    result = sub_10004F1B0(a6 - a3 + a5 + 1000000 * (a4 - a2));
    v8 = result + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    v8 = 7;
  }

  if (v6)
  {
    v9 = &unk_100080E68;
  }

  else
  {
    v9 = &unk_100080E98;
  }

  ++*(v9 + 2);
  *v9 = *v9 + v7;
  v10 = &unk_100080EA4;
  if (v6)
  {
    v10 = &unk_100080E74;
  }

  ++v10[v8];
  return result;
}

uint64_t sub_10001D5B4(void *a1, const char *a2, uint64_t a3)
{
  v6 = sub_1000038F0();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v7;
  v12 = v7;
  snprintf(__str, 0x20uLL, "%s (%s)", a2, v6);
  v8 = 0;
  v9 = (a1 + 40);
  do
  {
    if (!strncmp(v9, __str, 0x20uLL))
    {
      break;
    }

    ++v8;
    v9 += 48;
  }

  while (v8 != 7);
  memmove(a1 + 46, a1 + 40, 48 * v8);
  __strlcpy_chk();
  result = sub_10000EC94();
  a1[44] = result;
  a1[45] = a3;
  return result;
}

char *sub_10001D6AC(unint64_t a1, char *__str, int a3)
{
  v6 = 0;
  LODWORD(v7) = 1;
  do
  {
    if (__ROR8__(0x1CAC083126E978D5 * (a1 / *(&unk_100076D90 + v6 + 1)), 3) >= 0x4189374BC6A7F0uLL)
    {
      v7 = (v6 + 2);
    }

    else
    {
      v7 = v7;
    }

    ++v6;
  }

  while (v6 != 4);
  v8 = snprintf(__str, a3, "%llu", a1 / 0xE8D4A51000);
  result = 0;
  if ((v8 & 0x80000000) == 0 && v8 <= a3)
  {
    if (v7 < 2)
    {
      return __str;
    }

    else
    {
      v10 = v7 - 1;
      v11 = &qword_100076D98;
      while (1)
      {
        v12 = *v11++;
        v13 = snprintf(&__str[v8], a3 - v8, ".%llu", a1 / v12 % 0x3E8);
        if (v13 < 0)
        {
          break;
        }

        v8 += v13;
        if (v8 > a3)
        {
          break;
        }

        if (!--v10)
        {
          return __str;
        }
      }

      return 0;
    }
  }

  return result;
}

char *sub_10001D82C(uint64_t a1, unsigned int a2)
{
  if (a1 && (v2 = *(a1 + 8)) != 0)
  {
    v3 = *(v2 + 180);
  }

  else
  {
    v3 = 100;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    return &unk_100081090 + 1024 * a2;
  }
}

char *sub_10001D860(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 180);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 184);
  for (result = &unk_100081090; ; result += 1024)
  {
    v6 = *v4++;
    if (v6 == a2)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10001D898(uint64_t a1, unsigned __int8 *uu1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 180))
  {
    v5 = 0;
    v6 = &unk_100081090;
    do
    {
      v7 = v6[5];
      if (v7)
      {
        if (!uuid_compare(uu1, (v7 + 240)))
        {
          return v6;
        }

        v2 = *(a1 + 8);
      }

      ++v5;
      v6 += 128;
    }

    while (v5 < *(v2 + 180));
  }

  return 0;
}

uint64_t sub_10001D914(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = qword_10009BA60;
  v4 = *(qword_10009BA60 + 24);
  if (v4 == -1)
  {
    *a2 = 0;
    if (result && (v6 = *(result + 8)) != 0)
    {
      v5 = *(v6 + 180);
    }

    else
    {
      v5 = 100;
    }
  }

  else
  {
    *a2 = v4;
    v5 = *(v3 + 24) + 1;
  }

  *a3 = v5;
  return result;
}

void sub_10001D95C()
{
  v0 = &unk_100081090;
  v1 = 100;
  do
  {
    sub_10002C998(v0);
    v0 += 128;
    --v1;
  }

  while (v1);
}

void sub_10001D998()
{
  sub_100046024();
  v0 = &unk_100081090;
  v1 = 100;
  do
  {
    sub_10002C998(v0);
    v0 += 128;
    --v1;
  }

  while (v1);
  sub_10002C8A8(&unk_100080EC8);
  sub_100045FC8();
  sub_1000449F0();
  v2 = qword_10009BA60;
  if (qword_10009BA60)
  {
    if (*(qword_10009BA60 + 56))
    {
      v8 = time(0);
      sub_100049DB4(*(qword_10009BA60 + 56), *(qword_10009BA60 + 32));
      v3 = *(qword_10009BA60 + 56);
      v4 = ctime(&v8);
      fprintf(v3, "fsck_apfs completed at %s", v4);
      fclose(*(qword_10009BA60 + 56));
      v2 = qword_10009BA60;
    }

    v5 = *(v2 + 64);
    if (v5)
    {
      sub_100049DB4(v5, *(v2 + 32));
      fclose(*(qword_10009BA60 + 64));
    }
  }

  sub_100049BCC();
  if (qword_10009BA58)
  {
    sub_1000474B8(qword_10009BA58);
  }

  v6 = qword_10009BA60;
  if (qword_10009BA60)
  {
    v7 = *(qword_10009BA60 + 8);
    if (v7)
    {
      if (*(qword_10009BA60 + 53) == 1)
      {
        sub_100046094(v7);
        v7 = *(qword_10009BA60 + 8);
      }

      free(v7);
      v6 = qword_10009BA60;
    }

    free(v6);
  }
}

void (__cdecl *sub_10001DAC0())(int)
{
  signal(2, sub_10001DB58);
  signal(1, sub_10001DB58);
  signal(15, sub_10001DB58);
  signal(3, sub_10001DB58);
  signal(10, sub_10001DB58);
  signal(11, sub_10001DB58);
  signal(4, sub_10001DB58);

  return signal(6, sub_10001DB58);
}

void sub_10001DB58(int a1)
{
  sub_100046024();
  v2 = &unk_100081090;
  v3 = 100;
  do
  {
    sub_10002CAA4(v2);
    v2 += 1024;
    --v3;
  }

  while (v3);
  sub_10002C980(qword_100080EC8);
  sub_100045FC8();
  if (qword_10009BA60)
  {
    v4 = *(qword_10009BA60 + 8);
    if (v4)
    {
      if (*(qword_10009BA60 + 53) == 1)
      {
        sub_100046094(v4);
      }
    }
  }

  _exit(a1 + 128);
}

void sub_10001DBD0(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 52428800;
  }

  else
  {
    v4 = 10485760;
  }

  if (a1)
  {
    v5 = &unk_10009A110;
  }

  else
  {
    v5 = &unk_10009A090;
  }

  sub_10001E320(v5, a2, v4);
  v5[14] = a3;
  *(v5 + 120) = 1;
}

void sub_10001DC28(int a1)
{
  if (a1)
  {
    v1 = &unk_10009A110;
  }

  else
  {
    v1 = &unk_10009A090;
  }

  sub_10001E44C(v1);
  v1[13] = 0;
  v1[14] = 0;
}

uint64_t sub_10001DC68(int a1, unint64_t a2, int a3)
{
  if (a1)
  {
    v6 = &unk_10009A110;
  }

  else
  {
    v6 = &unk_10009A090;
  }

  if (!sub_10001E4A8(v6))
  {
    return 0;
  }

  v7 = a1 ? &unk_10009A110 : &unk_10009A090;
  if (v7[80])
  {
    return 0;
  }

  v8 = sub_10001E8F4(v6, a2, 1uLL, a3 == 0);
  if (v8 == 17)
  {
    return 0;
  }

  v9 = v8;
  if (!v8)
  {
    if (a1)
    {
      v10 = &unk_10009A110;
    }

    else
    {
      v10 = &unk_10009A090;
    }

    if (v10[13] < a2)
    {
      v9 = 0;
      v10[13] = a2;
      return v9;
    }

    return 0;
  }

  if (v7[80])
  {
    return 0;
  }

  sub_10001E44C(v6);
  if (a1)
  {
    v12 = &unk_10009A110;
  }

  else
  {
    v12 = &unk_10009A090;
  }

  v12[13] = 0;
  v12[14] = 0;
  return v9;
}

uint64_t sub_10001DD4C(unint64_t a1, int a2)
{
  v3 = sub_10001DC68(a2 != 13, a1, 1);
  if (v3)
  {
    v4 = v3;
    sub_100045744("object (oid 0x%llx): Unable to mark omap entry in usefor omap space verification \n", a1);
    sub_100049C40(0x3D1, v4);
  }

  return 0;
}

uint64_t sub_10001DDB0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = &unk_10009A090;
  if (a3)
  {
    v11 = &unk_10009A110;
  }

  else
  {
    v11 = &unk_10009A090;
  }

  if (sub_10001E4A8(v11))
  {
    v12 = &unk_10009A0E0;
    if (a3)
    {
      v12 = &unk_10009A160;
    }

    if ((*v12 & 1) == 0)
    {
      if (a2)
      {
        v14 = *(*(a2 + 40) + 8);
      }

      else
      {
        v14 = 0;
      }

      v26 = 0;
      v15 = sub_100024058(v14);
      v16 = &unk_10009A100;
      if (a3)
      {
        v16 = &unk_10009A180;
      }

      v17 = *v16;
      if (a3)
      {
        v10 = &unk_10009A110;
      }

      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v25 = v18;
      v13 = sub_10001DFD0(a1, a2, v11, v18, v10[13] + 1, (v10[15] & 1) == 0, &v26, a4, a5);
      v19 = v26;
      if (v13)
      {
        v20 = 1;
      }

      else
      {
        v20 = v26 == 0;
      }

      if (v20)
      {
        goto LABEL_39;
      }

      v27 = 0;
      if (v14)
      {
        asprintf(&v27, "volume omap (fs_oid 0x%llx)");
      }

      else
      {
        asprintf(&v27, "container omap");
      }

      v21 = v27;
      if (*(v10 + 120) != 1)
      {
        goto LABEL_31;
      }

      v22 = sub_100023544(a1, a2, 1);
      if (v22)
      {
        v13 = v22;
        sub_100045744("%s: could not iterate reaper for omap space verification\n", v21);
        v23 = 978;
        goto LABEL_36;
      }

      if (sub_10001E4A8(v11))
      {
        v13 = sub_10001DFD0(a1, a2, v11, v25, v10[13] + 1, 1, &v26, a4, a5);
        v19 = v26;
      }

      else
      {
LABEL_31:
        v13 = 0;
      }

      if (v13 || !v19 || !a4)
      {
LABEL_37:
        if (v21)
        {
          free(v21);
        }

LABEL_39:
        *(v10 + 120) = 0;
        return v13;
      }

      sub_100045744("%s: %llu orphan mappings found\n", v21, v19);
      v13 = 0;
      v23 = 979;
LABEL_36:
      sub_100049C40(v23, -7);
      goto LABEL_37;
    }
  }

  return 0;
}

uint64_t sub_10001DFD0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, void *a7, uint64_t a8, uint64_t (*a9)(void))
{
  v29 = 0;
  v30 = 0;
  *a7 = 0;
  if (a4 < a5)
  {
    v13 = a4;
    while (sub_10001E6A4(a3, v13, a5 - v13, &v30))
    {
      if ((a6 & 1) == 0)
      {
        v20 = 0;
        *a7 = 1;
        return v20;
      }

      if ((sub_10001E7C8(a3, v30, a5 - v30, &v29) & 1) == 0)
      {
        v29 = a5;
      }

      if (a8)
      {
        if (v30 == v29 - 1)
        {
          sub_100045744("orphan omap mapping found for oid %llu\n");
        }

        else
        {
          sub_100045744("orphan omap mappings found for oid range %llu --> %llu\n");
        }
      }

      v13 = v29;
      if (*(qword_10009BA60 + 45) == 1)
      {
        v15 = a8;
        v16 = v30;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v35 = v17;
        v36 = v17;
        v33 = v17;
        v34 = v17;
        v32 = v17;
        v18 = sub_10002CF5C(a1, a2, &v37);
        if (v18)
        {
          return v18;
        }

        v31[0] = v16;
        v31[1] = 0;
        v19 = sub_10003A444(&v32, v37, 0, v31, 0x10u);
        if (v19)
        {
          v20 = v19;
          v26 = strerror(v19);
          sub_10004565C("unable to initialize omap tree iterator for repair: %s\n", v26);
          sub_100049C40(0x3DF, v20);
          return v20;
        }

        if ((BYTE8(v34) & 1) == 0)
        {
          v21 = v33;
          while (*v21 < v13)
          {
            ++*a7;
            v22 = a9();
            if (v22)
            {
              v20 = v22;
              goto LABEL_16;
            }

            v23 = (*(&v32 + 1))(&v32);
            if (v23)
            {
              v20 = v23;
              v24 = strerror(v23);
              sub_10004565C("error iterating omap tree for repair: %s\n", v24);
              sub_100049C40(0x3E1, v20);
              goto LABEL_16;
            }

            v21 = v33;
            if (BYTE8(v34) == 1)
            {
              break;
            }
          }
        }

        v20 = 0;
LABEL_16:
        if (v32)
        {
          (v32)(&v32);
        }

        if (v20)
        {
          return v20;
        }

        v13 = v29;
        a8 = v15;
      }

      if (v13 >= a5)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_10001E224(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = sub_10001DDB0(a1, a2, a3, 1, sub_10001E298);
  if (a3)
  {
    v5 = &unk_10009A110;
  }

  else
  {
    v5 = &unk_10009A090;
  }

  sub_10001E44C(v5);
  v5[13] = 0;
  v5[14] = 0;
  return v4;
}

uint64_t sub_10001E298(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4, _DWORD *a5)
{
  v6 = sub_100027D7C(a5, 2u, 0, 0, 0, a1, 0x10u, a3, 0x10u);
  v7 = v6;
  if (v6)
  {
    v8 = *a1;
    v9 = strerror(v6);
    sub_10004565C("object (oid 0x%llx): unable to add omap repair: %s\n", v8, v9);
    sub_100049C40(0x3E0, v7);
  }

  return v7;
}

void sub_10001E320(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!sub_100039748(a1, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 128, 0, 0, sub_100030C88))
  {
    sub_10003B84C(a1, 0, 64);
  }

  v6 = *(a1 + 24);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = -1;
  }

  if (v6 > a3)
  {
    v8 = -1;
  }

  else
  {
    v8 = a3 / v6;
  }

  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 96) = 1024;
  v9 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
  *(a1 + 88) = v9;
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 96);
    v12 = v11 - 1;
    if ((v11 - 1) > 7)
    {
      v14 = v12 >> 3;
      *v9 = 0;
      if (v12 >> 3 >= 2)
      {
        bzero(v9 + 1, (v14 - 1));
      }

      v13 = 510 << (v12 & 7);
      v10 += v14;
    }

    else
    {
      v13 = 255 << v11;
    }

    *v10 &= v13;
  }
}

void sub_10001E44C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }

  if (*(a1 + 56))
  {

    sub_10003B928(a1, 0);
  }
}

uint64_t sub_10001E4B8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  v9.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v9.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v12[6] = v9;
  v12[7] = v9;
  v12[4] = v9;
  v12[5] = v9;
  v12[2] = v9;
  v12[3] = v9;
  v12[0] = v9;
  v12[1] = v9;
  while (1)
  {
    result = sub_10001E5A4(a1, a2, v12);
    if (result)
    {
      break;
    }

    if (v5 >= 1024 - (a2 & 0x3FF))
    {
      v11 = 1024 - (a2 & 0x3FF);
    }

    else
    {
      v11 = v5;
    }

    memcpy((a4 + 8 * v8), v12 + ((a2 >> 3) & 0x78), v11 >> 3);
    a2 += v11;
    v8 += v11 >> 6;
    v5 -= v11;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001E5A4(uint64_t a1, unint64_t a2, int8x16_t *a3)
{
  v6 = a2 >> 10;
  v17 = a2 >> 10;
  v15 = 128;
  v16 = 8;
  v7 = sub_1000397B8(a1, 0, 0, &v17, &v16, 8, a3, &v15);
  v8 = v7;
  if ((v7 & 0xFFFFFFFD) != 0)
  {
    v9 = v17;
    v10 = strerror(v7);
    sub_10004565C("failed to find node at segment (%llu) : error %s\n", v9, v10);
    sub_100049C40(0x363, v8);
  }

  if (v8 == 2)
  {
    v11 = *(a1 + 88);
    if (v11 && *(a1 + 96) > v6 && ((*(v11 + (a2 >> 13)) >> ((a2 >> 10) & 7)) & 1) != 0)
    {
      v12 = 255;
    }

    else
    {
      v12 = 0;
    }

    v8 = 0;
    v13 = vdupq_n_s8(v12);
    a3[6] = v13;
    a3[7] = v13;
    a3[4] = v13;
    a3[5] = v13;
    a3[2] = v13;
    a3[3] = v13;
    *a3 = v13;
    a3[1] = v13;
  }

  return v8;
}

uint64_t sub_10001E6A4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  sub_10001E5A4(a1, a2, &v12);
  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      sub_10001E5A4(a1, v6, &v12);
      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> -((v6 & 0x3F) + v9)) & (-1 << v6) & v12.i64[i];
    if (v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t sub_10001E7C8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sub_10001E5A4(a1, a2, &v13);
  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      sub_10001E5A4(a1, v6, &v13);
      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v9)) & (-1 << v6);
    v11 = v13.i64[i] & v10;
    if (v11 != v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v11 ^ v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t sub_10001E8F4(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = sub_10001E5A4(a1, a2, &v17);
  if (!result)
  {
    if (a3)
    {
      v9 = (v6 >> 6) & 0xF;
      v10 = v6;
      while (1)
      {
        if (v9 >= 0x10)
        {
          result = sub_10001EA54(a1, v10, &v17);
          if (result)
          {
            return result;
          }

          result = sub_10001E5A4(a1, v6, &v17);
          if (result)
          {
            return result;
          }

          v9 = (v6 >> 6) & 0xF;
          v10 = v6;
        }

        v11 = 64 - (v6 & 0x3F);
        if (a3 < v11)
        {
          v11 = a3;
        }

        v12 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v11)) & (-1 << v6);
        v13 = v17.i64[v9];
        v14 = a4 ? 0 : (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v11)) & (-1 << v6);
        if ((v13 & v12) != v14)
        {
          break;
        }

        v15 = v13 & ~v12;
        v16 = v13 | v12;
        if (!a4)
        {
          v16 = v15;
        }

        v17.i64[v9] = v16;
        v6 += v11;
        ++v9;
        a3 -= v11;
        if (!a3)
        {
          return sub_10001EA54(a1, v10, &v17);
        }
      }

      return 17;
    }

    else
    {
      v10 = v6;
      return sub_10001EA54(a1, v10, &v17);
    }
  }

  return result;
}

uint64_t sub_10001EA54(uint64_t a1, unint64_t a2, const void *a3)
{
  v4 = *(a1 + 64);
  if (v4 <= a2)
  {
    sub_100045744("bitmap store: address %llu is beyond maximum allowed %llu\n", a2, v4);
    return 34;
  }

  v6 = a1;
  v18 = 0;
  sub_10003B7B8(a1, 0, &v18);
  if (v18 >= *(v6 + 72))
  {
    if ((*(v6 + 80) & 1) == 0)
    {
      sub_100045744("bitmap store: reached limit of %llu B-tree nodes\n", *(v6 + 72));
    }

    *(v6 + 80) = 1;
    return 12;
  }

  else
  {
    if (sub_1000081C4(a3, 0, 1024) && (v7 = *(v6 + 88)) != 0 && !sub_10001EF3C(v6, a2 >> 10))
    {
      v11 = *(v6 + 88);
      v12 = a2 >> 13;
      v13 = *(v11 + (a2 >> 13)) | (1 << ((a2 >> 10) & 7));
    }

    else
    {
      if (!sub_1000082B8(a3, 0, 1024, v7) || !*(v6 + 88) || sub_10001EF3C(v6, a2 >> 10))
      {
        v18 = a2 >> 10;
        v8 = sub_10003B12C(v6, 0, &v18, 8, a3, 128);
        v6 = v8;
        if (v8)
        {
          v9 = v18;
          v10 = strerror(v8);
          sub_10004565C("failed to insert node at segment (%llu) error : %s\n", v9, v10);
          sub_100049C40(0x1C9, v6);
        }

        return v6;
      }

      v11 = *(v6 + 88);
      v12 = a2 >> 13;
      v13 = *(v11 + (a2 >> 13)) & ~(1 << ((a2 >> 10) & 7));
    }

    *(v11 + v12) = v13;
    v18 = a2 >> 10;
    v14 = sub_10003B708(v6, 0, &v18, 8);
    LODWORD(v6) = v14;
    if ((v14 & 0xFFFFFFFD) != 0)
    {
      v15 = v18;
      v16 = strerror(v14);
      sub_10004565C("failed to remove node at segment (%llu) error : %s\n", v15, v16);
      sub_100049C40(0x1CA, v6);
    }

    if (v6 == 2)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_10001EC40(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = sub_10001E5A4(a1, a2, &v13);
  if (!result)
  {
    v9 = (v6 >> 6) & 0xF;
    while (a3)
    {
      if (v9 >= 0x10)
      {
        result = sub_10001E5A4(a1, v6, &v13);
        if (result)
        {
          return result;
        }

        v9 = (v6 >> 6) & 0xF;
      }

      v10 = 64 - (v6 & 0x3F);
      if (a3 < v10)
      {
        v10 = a3;
      }

      v11 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v10)) & (-1 << v6);
      v12 = v13.i64[v9] & v11;
      if (!a4)
      {
        v11 = 0;
      }

      a3 -= v10;
      v6 += v10;
      ++v9;
      if (v12 != v11)
      {
        return 17;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001ED64(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v28[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[6] = v6;
  v27[7] = v6;
  v27[4] = v6;
  v27[5] = v6;
  v27[2] = v6;
  v27[3] = v6;
  v27[0] = v6;
  v27[1] = v6;
  if (*(a1 + 88) && (v7 = *(a1 + 96), v7 >= 8))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + 88);
      v12 = *(v11 + v10);
      if (*(v11 + v10))
      {
        break;
      }

LABEL_13:
      ++v10;
      v9 += 0x2000;
      if (v10 >= v7 >> 3)
      {
        goto LABEL_3;
      }
    }

    v13 = 0;
    v14 = v9;
    while (1)
    {
      if ((v12 >> v13))
      {
        result = a2(v14, 1024, a3);
        if (result)
        {
          break;
        }
      }

      ++v13;
      v14 += 1024;
      if (v13 == 8)
      {
        v7 = *(a1 + 96);
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_3:
    v25 = 128;
    v26 = 8;
    if (sub_100039CDC(a1, 0, v28, &v26, v27, &v25))
    {
      return 0;
    }

    else
    {
      do
      {
        v15 = 0;
        v16 = v28[0] << 10;
        do
        {
          v17 = *(v27 + v15);
          if (v17)
          {
            v18 = 0;
            v19 = 1;
            do
            {
              if ((v19 & v17) != 0)
              {
                v20 = 0;
                do
                {
                  v21 = (v17 & (2 * v19)) == 0;
                  v19 *= 2;
                  ++v20;
                }

                while (!v21 && v20 + v18 < 0x40);
                result = a2(v18 | (v16 + (v15 << 6)), v20, a3);
                if (result)
                {
                  return result;
                }

                LODWORD(v18) = v18 + v20;
              }

              v19 *= 2;
              v18 = v18 + 1;
            }

            while (v18 < 0x40);
          }

          ++v15;
        }

        while (v15 != 16);
        v23 = 128;
        v24 = 8;
        v22 = sub_1000397B8(a1, 0, 2, v28, &v24, 8, v27, &v23);
        result = 0;
      }

      while (!v22);
    }
  }

  return result;
}

uint64_t sub_10001EF3C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 > a2)
  {
    return 0;
  }

  v5 = *(a1 + 88);
  v6 = 1 << -__clz(a2);
  v7 = malloc_type_realloc(v5, (v6 + 7) >> 3, 0x100004077774924uLL);
  if (v7)
  {
    v8 = v7;
    v9 = v6 - 1;
    v10 = v2 >> 3;
    v11 = 0xFFu >> (8 - (v2 & 7));
    if (v2 >> 3 == (v6 - 1) >> 3)
    {
      v12 = v11 | (510 << (v9 & 7));
      v13 = v2 >> 3;
    }

    else
    {
      v13 = v9 >> 3;
      v14 = &v7[v10];
      *v14 &= v11;
      if (v10 + 1 < v9 >> 3)
      {
        bzero(v14 + 1, (v13 - v10 - 2) + 1);
      }

      v12 = 510 << (v9 & 7);
    }

    v3 = 0;
    v8[v13] &= v12;
    *(a1 + 88) = v8;
    *(a1 + 96) = v6;
  }

  else
  {
    free(v5);
    sub_10004565C("failed to allocate memory for bitmap store\n");
    v3 = 12;
    sub_100049C40(0x3B2, 12);
  }

  return v3;
}

uint64_t sub_10001F078(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t sub_10001F0D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = -1;
  }

  v14 = a3;
  v15 = v7;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 16;
  v11 = 16;
  result = sub_10002CF5C(a1, a2, &v16);
  if (!result)
  {
    result = sub_1000397B8(v16, 0, 0xFFFFFFFFLL, &v14, &v11, 16, &v12, &v10);
    if (!result)
    {
      result = 92;
      if (v11 == 16 && v10 == 16)
      {
        if (v14 != a3)
        {
          return 2;
        }

        v9 = v12;
        if (v12)
        {
          return 2;
        }

        else
        {
          result = 0;
          *a5 = v13;
          *(a5 + 8) = HIDWORD(v12);
          *(a5 + 12) = v9;
          *(a5 + 16) = v15;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = a3;
  v7[1] = a4;
  v6[0] = vrev64_s32(a5[1]);
  v6[1] = *a5;
  result = sub_10002CF5C(a1, a2, &v8);
  if (!result)
  {
    return sub_10003B12C(v8, 0, v7, 0x10u, v6, 0x10u);
  }

  return result;
}

uint64_t sub_10001F210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 16;
  v21 = 16;
  result = sub_10002CD20(a1, a2, &v26);
  if (!result)
  {
    result = sub_10002CF5C(a1, a2, &v25);
    if (!result)
    {
      result = sub_1000397B8(v25, 0, 0, &v24, &v21, 16, &v22, &v20);
      if (!result)
      {
        result = 92;
        if (v21 == 16 && v20 == 16)
        {
          v11 = v22;
          if (v22)
          {
            return 2;
          }

          if (a5)
          {
            *a5 = v23;
            *(a5 + 8) = HIDWORD(v22);
            *(a5 + 12) = v11;
            *(a5 + 16) = *(&v24 + 1);
          }

          v12 = *(v26 + 64);
          if (v12)
          {
            v13 = v12 >= a4;
          }

          else
          {
            v13 = 0;
          }

          v14 = !v13;
          if (v14 != 1)
          {
            goto LABEL_22;
          }

          v19 = v24;
          v18[0] = 0xAAAAAAAAAAAAAAAALL;
          v18[1] = 0xAAAAAAAAAAAAAAAALL;
          result = sub_1000397B8(v25, 0, 4294967294, &v19, &v21, 16, v18, &v20);
          if ((result & 0xFFFFFFFD) == 0)
          {
            v15 = result;
            result = 92;
            if (v21 == 16 && v20 == 16)
            {
              if (v15 == 2 || v19 != a3)
              {
                LODWORD(result) = sub_10003B708(v25, 0, &v24, 16);
                v16 = result == 0;
                goto LABEL_23;
              }

LABEL_22:
              *(&v24 + 1) = *(*(a1 + 8) + 16);
              LODWORD(v22) = 1;
              LODWORD(result) = sub_10003B12C(v25, 0, &v24, 0x10u, &v22, 0x10u);
              v16 = result == 0;
              if (!v14)
              {
                v17 = 17;
LABEL_26:
                if (v16)
                {
                  return v17;
                }

                else
                {
                  return result;
                }
              }

LABEL_23:
              v17 = 0;
              goto LABEL_26;
            }
          }
        }
      }
    }
  }

  return result;
}

char *sub_10001F400(char *result)
{
  if (result[10] == 1 && qword_10009A1C8 == 0)
  {
    if (!sub_100039748(&xmmword_10009A190, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 21, 0, 0, sub_100030C88))
    {
      sub_10003B84C(&xmmword_10009A190, 0, 64);
    }

    result = sub_10001C108(&xmmword_10009A190, "phys extent", sub_10001F4EC);
    if (result)
    {
      sub_100045744("failed to register the phys extent tree in the fsck memory storage\n");

      return sub_100049C40(0x587, 12);
    }
  }

  return result;
}

uint64_t sub_10001F4EC()
{
  xmmword_10007C170 = 0u;
  unk_10007C180 = 0u;
  xmmword_10007C150 = 0u;
  unk_10007C160 = 0u;
  xmmword_10007C130 = 0u;
  unk_10007C140 = 0u;
  xmmword_10007C110 = 0u;
  unk_10007C120 = 0u;
  xmmword_10007C0F0 = 0u;
  unk_10007C100 = 0u;
  xmmword_10007C0D0 = 0u;
  unk_10007C0E0 = 0u;
  xmmword_10007C0B0 = 0u;
  unk_10007C0C0 = 0u;
  xmmword_10007C090 = 0u;
  unk_10007C0A0 = 0u;
  xmmword_10007C070 = 0u;
  unk_10007C080 = 0u;
  xmmword_10007C050 = 0u;
  *&qword_10007C060 = 0u;
  BYTE8(xmmword_10007C070) = 1;
  sub_10003B928(&xmmword_10009A190, 0);

  return sub_10003B928(&xmmword_10009A1D0, 0);
}

uint64_t sub_10001F568(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a4;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v7) = a5;
  return sub_10001F5AC(a1, a2, a3, 1, sub_10001F924, &v6);
}

uint64_t sub_10001F5AC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(_BYTE *, uint64_t), uint64_t a6)
{
  if (!qword_10009A1C8)
  {
    return 0;
  }

  v10 = a2;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = a2;
  memset(v26, 0, sizeof(v26));
  result = sub_1000206B4(&v27, v26, 4294967294);
  if (result == 2 && (result = sub_1000206B4(&v27, v26, 1), result == 2) && a4)
  {
    v27 = -1;
  }

  else
  {
    if (result == 2)
    {
      return 0;
    }

    if (result)
    {
LABEL_59:
      if (result == 12)
      {
        xmmword_10007C170 = 0u;
        unk_10007C180 = 0u;
        xmmword_10007C150 = 0u;
        unk_10007C160 = 0u;
        xmmword_10007C130 = 0u;
        unk_10007C140 = 0u;
        xmmword_10007C110 = 0u;
        unk_10007C120 = 0u;
        xmmword_10007C0F0 = 0u;
        unk_10007C100 = 0u;
        xmmword_10007C0D0 = 0u;
        unk_10007C0E0 = 0u;
        xmmword_10007C0B0 = 0u;
        unk_10007C0C0 = 0u;
        xmmword_10007C090 = 0u;
        unk_10007C0A0 = 0u;
        xmmword_10007C070 = 0u;
        unk_10007C080 = 0u;
        xmmword_10007C050 = 0u;
        *&qword_10007C060 = 0u;
        BYTE8(xmmword_10007C070) = 1;
        sub_10003B928(&xmmword_10009A190, 0);
        sub_10003B928(&xmmword_10009A1D0, 0);
        result = 0;
        *(a1 + 10) = 0;
      }

      return result;
    }
  }

  v13 = a3 + v10;
  if (a3 + v10 < v10)
  {
    return 0;
  }

  while (1)
  {
    v14 = v27;
    if (a4)
    {
      v15 = v27 - v10;
      if (v27 > v10)
      {
        v16 = v15 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
        *v26 = v16;
        v17 = v15 & 0xFFFFFFFFFFFFFFFLL;
        *&v26[16] = 0;
        v27 = v10;
        v14 = v10;
LABEL_17:
        v20 = v13 <= v14 || v13 - v14 >= v17;
        v19 = v13;
        if (v20)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    v16 = *v26;
    v17 = *v26 & 0xFFFFFFFFFFFFFFFLL;
    v18 = v10 <= v27 || v10 - v27 >= v17;
    v19 = v10;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = v19;
    v30[1] = *&v26[8];
    *(&v30[1] + 5) = *&v26[13];
    v21 = (v14 + v16 - v19) & 0xFFFFFFFFFFFFFFFLL;
    v30[0] = v16 & 0xF000000000000000 | v21;
    *v26 = (v17 - v21) | v16 & 0xF000000000000000;
    if (*&v26[16])
    {
      result = sub_1000207CC(&xmmword_10009A190, &v27, v26);
      if (result)
      {
        goto LABEL_59;
      }

      result = sub_1000207CC(&xmmword_10009A190, &v31, v30);
      if (result)
      {
        goto LABEL_59;
      }

      v14 = v27;
    }

LABEL_25:
    v22 = v14 - v10;
    if (v14 >= v10)
    {
      v23 = v22 < v13 - v10 && v13 - v10 >= (*v26 & 0xFFFFFFFFFFFFFFFuLL);
      if (v23 && v22 <= v13 - v10 - (*v26 & 0xFFFFFFFFFFFFFFFLL))
      {
        a5(v26, a6);
        if ((a4 & 1) != 0 || *&v26[16])
        {
          result = sub_1000207CC(&xmmword_10009A190, &v27, v26);
        }

        else
        {
          result = sub_10002075C(&xmmword_10009A190, &v27);
        }

        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    if (v29 && (*v28 & 0xFFFFFFFFFFFFFFFLL) + v29 == v14 && *&v28[16] == *&v26[16] && v28[20] == v26[20])
    {
      *v28 = ((*v26 & 0xFFFFFFFFFFFFFFFLL) + (*v28 & 0xFFFFFFFFFFFFFFFLL)) | *v28 & 0xF000000000000000;
      if (*&v28[16])
      {
        if (sub_10002075C(&xmmword_10009A190, &v27))
        {
          return 1;
        }

        result = sub_1000207CC(&xmmword_10009A190, &v29, v28);
        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    else
    {
      v29 = v14;
      *v28 = *v26;
      *&v28[13] = *&v26[13];
    }

    v25 = (*v26 & 0xFFFFFFFFFFFFFFFLL) + v14;
    if (v25 > v10)
    {
      v10 = v25;
    }

    result = sub_1000206B4(&v27, v26, 2);
    if (result != 2 || (a4 & 1) == 0)
    {
      break;
    }

    v27 = -1;
LABEL_54:
    if (v10 > v13)
    {
      return 0;
    }
  }

  if (!result)
  {
    goto LABEL_54;
  }

  if (result != 2)
  {
    goto LABEL_59;
  }

  return 0;
}

uint64_t sub_10001F924(uint64_t result, uint64_t a2)
{
  *(result + 8) = *a2;
  ++*(result + 16);
  if ((*(result + 20) & 1) == 0)
  {
    *(result + 20) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_10001F9A0(uint64_t a1)
{
  v2 = sub_10001FA6C(a1 + 48, &xmmword_10009A190);
  if (v2 || (v2 = sub_10001FA6C(a1 + 168, &xmmword_10009A1D0), v2))
  {
    v3 = v2;
    v4 = strerror(v2);
    sub_10004565C("unable to init physical extent tree iterator for repairs: %s\n", v4);
    sub_100049C40(0x461, v3);
    return v3;
  }

  else
  {
    *(a1 + 8) = sub_10001FB30;
    *(a1 + 16) = a1 + 288;
    *(a1 + 24) = a1 + 296;
    *(a1 + 32) = 0x1500000008;
    *(a1 + 317) = 1;

    return sub_10001FB30(a1);
  }
}

uint64_t sub_10001FA6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = sub_100039F68(a1, a2, 0, (a1 + 72), 8u, 8u, (a1 + 80), 21);
  if (v3)
  {
    v4 = v3;
    v5 = strerror(v3);
    sub_10004565C("unable to init physical extent tree iterator for repairs: %s\n", v5);
    sub_100049C40(0x460, v4);
LABEL_5:
    *(a1 + 40) = 1;
    goto LABEL_6;
  }

  if (a1 && (*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    v8 = *(a1 + 80);
    *(a1 + 104) = *(a1 + 72);
    v6 = v8 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_6:
  v6 = 0;
  *(a1 + 104) = -1;
LABEL_7:
  *(a1 + 112) = v6;
  return v4;
}

uint64_t sub_10001FB30(uint64_t a1)
{
  result = sub_100020858(a1 + 48);
  if (!result)
  {
    result = sub_100020858(a1 + 168);
    if (!result)
    {
      if (*(a1 + 208) == 1)
      {
        v3 = *(a1 + 88);
        *(a1 + 40) = v3;
        if (v3)
        {
          return 0;
        }

        v5 = 0;
        v4 = *(a1 + 72);
      }

      else
      {
        *(a1 + 40) = 0;
        if (*(a1 + 88))
        {
          v4 = 0;
        }

        else
        {
          v4 = *(a1 + 72);
        }

        v5 = *(a1 + 192);
      }

      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = *(a1 + 152);
      v9 = *(a1 + 272);
      v10 = v8 - v9;
      if (v8 >= v9)
      {
        v11 = *(a1 + 272);
      }

      else
      {
        v11 = *(a1 + 152);
      }

      if (v8 >= v9)
      {
        if (v8 <= v9)
        {
          v16 = *(a1 + 160);
          v17 = *(a1 + 280);
          if (v16 >= v17)
          {
            v10 = *(a1 + 280);
          }

          else
          {
            v10 = *(a1 + 160);
          }

          *(a1 + 152) = v10 + v8;
          *(a1 + 160) = v16 - v10;
          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v17 - v10;
          *(v6 + 8) = -1;
          v13 = *(v4 + 16) - *(v5 + 16);
          v14 = 0x2000000000000000;
        }

        else
        {
          v15 = *(a1 + 280);
          if (v15 < v10)
          {
            v10 = *(a1 + 280);
          }

          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v15 - v10;
          *(v6 + 8) = -1;
          v13 = -*(v5 + 16);
          v14 = 0x2000000000000000;
          v4 = v5;
        }
      }

      else
      {
        v12 = *(a1 + 160);
        v10 = v9 - v8;
        if (v12 < v9 - v8)
        {
          v10 = *(a1 + 160);
        }

        *(a1 + 152) = v10 + v8;
        *(a1 + 160) = v12 - v10;
        *(v6 + 8) = *(v4 + 8);
        v13 = *(v4 + 16);
        v14 = 0x1000000000000000;
      }

      result = 0;
      *(v6 + 16) = v13;
      *(v6 + 20) = *(v4 + 20);
      *v7 = v11;
      *v6 = v10 & 0xFFFFFFFFFFFFFFFLL | v14;
    }
  }

  return result;
}

uint64_t sub_10001FC90(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (a5 == 1)
  {
    if (a2)
    {
      v5 = *(*(a2 + 40) + 8);
    }

    else
    {
      v5 = 0;
    }

    return sub_1000422DC(result, a3, a4, v5, 0x40000000, a3, *(a2 + 56), 0, 0xFu, 2u);
  }

  return result;
}

uint64_t sub_10001FCF8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, char a5)
{
  v8 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v9 = *a4;
  v10 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v47 = *a4 >> 60;
  if (!qword_10009A1C8 || *(a2 + 14) == 1)
  {
    if ((a5 & 3) != 0)
    {
      return 92;
    }

    sub_10001FC90(a1, a2, v8, v10, v47);
    return 0;
  }

  v12 = a4;
  if (byte_10007C18D)
  {
    v44 = a5;
    v43 = a3;
    v14 = *algn_10007C068;
    v41 = a1;
    v42 = qword_10007C060;
    v15 = *qword_10007C060;
    v16 = **algn_10007C068 & 0xFFFFFFFFFFFFFFFLL;
    v46 = **algn_10007C068 >> 60;
  }

  else
  {
    v11 = sub_10001F9A0(&xmmword_10007C050);
    if (v11)
    {
      return v11;
    }

    v44 = a5;
    v43 = a3;
    v14 = *algn_10007C068;
    v41 = a1;
    v42 = qword_10007C060;
    v15 = *qword_10007C060;
    v16 = **algn_10007C068 & 0xFFFFFFFFFFFFFFFLL;
    v36 = **algn_10007C068 >> 60;
    LOBYTE(v46) = v36;
    if ((BYTE8(xmmword_10007C070) & 1) == 0)
    {
      sub_10001FC90(v41, a2, v15, v16, v36);
    }
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (v44)
  {
    return sub_1000203C4((a2 + 768), v43, 0, *(a2 + 56), 0, 0);
  }

  if (!v10)
  {
    v11 = 0;
    v37 = v46;
    goto LABEL_116;
  }

  v48 = 0;
  v40 = v9 & 0xF000000000000000;
  v45 = v12;
  do
  {
    while (1)
    {
      if (BYTE8(xmmword_10007C070))
      {
        v15 = -1;
      }

      v17 = v15 >= v8 ? v8 : v15;
      if (*(v14 + 20) == 1)
      {
        v18 = *(a2 + 56);
        if (v15 < v8)
        {
          if (v16 >= v8 - v15)
          {
            v19 = v8 - v15;
          }

          else
          {
            v19 = v16;
          }

          v15 += v19;
          v16 -= v19;
          if (v18)
          {
            goto LABEL_89;
          }

          goto LABEL_27;
        }

        if (v8 < v15)
        {
          if (v10 >= v15 - v8)
          {
            v19 = v15 - v8;
          }

          else
          {
            v19 = v10;
          }

          v8 += v19;
          v10 -= v19;
          if (v18)
          {
            goto LABEL_89;
          }

          goto LABEL_42;
        }

        if (v10 >= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v10;
        }

        v15 += v19;
        v16 -= v19;
        v8 += v19;
        v10 -= v19;
        if (v18)
        {
LABEL_56:
          v24 = 0xFFFFFFFFLL;
          goto LABEL_64;
        }
      }

      else
      {
        if (v15 < v8)
        {
          if (v16 >= v8 - v15)
          {
            v19 = v8 - v15;
          }

          else
          {
            v19 = v16;
          }

          v15 += v19;
          v16 -= v19;
LABEL_27:
          if (!*(v14 + 16))
          {
            goto LABEL_89;
          }

          sub_100049C40(0x462, 92);
          v20 = *(v14 + 16);
          HIDWORD(v48) |= v20 > 0;
          v21 = sub_100045744;
          if ((v48 & 0x100000000) != 0)
          {
            v21 = sub_10004565C;
          }

          v21("mismatch between extentref entry reference count (0) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v20, v17, v19);
          goto LABEL_79;
        }

        if (v8 < v15)
        {
          if (v10 >= v15 - v8)
          {
            v19 = v15 - v8;
          }

          else
          {
            v19 = v10;
          }

          v8 += v19;
          v10 -= v19;
LABEL_42:
          sub_100049C40(0x463, 92);
          v22 = *(v12 + 4);
          if (v22)
          {
            HIDWORD(v48) |= v22 < 0;
            v23 = sub_100045744;
            if ((v48 & 0x100000000) != 0)
            {
              v23 = sub_10004565C;
            }

            v23("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (0) for extent (%llu + %llu)\n", v22, v17, v19);
          }

          else
          {
            sub_100045744("invalid extent (%llu + %llu) with reference count (0)\n", v17, v19);
          }

LABEL_73:
          v24 = 0;
          goto LABEL_80;
        }

        v19 = v10 >= v16 ? v16 : v10;
        v15 += v19;
        v16 -= v19;
        v8 += v19;
        v10 -= v19;
      }

      if (*(v14 + 16) == *(v12 + 4))
      {
        goto LABEL_56;
      }

      sub_100049C40(0x464, 92);
      v25 = *(v12 + 4);
      v26 = *(v14 + 16);
      if ((v48 & 0x100000000) != 0 || v25 < v26)
      {
        HIDWORD(v48) = 1;
        sub_10004565C("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v25, v26, v17, v19);
      }

      else
      {
        HIDWORD(v48) = 0;
        sub_100045744("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v25, v26, v17, v19);
      }

      if (!*(v14 + 16))
      {
        goto LABEL_73;
      }

      v24 = 2;
LABEL_64:
      if (v46 != v47)
      {
        if ((v44 & 2) == 0)
        {
          sub_100049C40(0x465, 92);
        }

        sub_10004565C("invalid kind (expected %u, actual %u) for extent (%llu + %llu)\n", v46, v47, v17, v19);
        v24 = 2;
        HIDWORD(v48) = 1;
      }

      if ((v44 & 4) != 0)
      {
LABEL_78:
        HIDWORD(v48) = 1;
LABEL_79:
        v24 = 2;
        goto LABEL_80;
      }

      if (v46 == 1)
      {
        v27 = v45[1];
        HIDWORD(v48) |= v27 > 0xFFFFFFFFFFFFFFFDLL;
        v24 = v27 <= 0xFFFFFFFFFFFFFFFDLL ? v24 : 2;
      }

      else if (v46 == 2 && v45[1] != -1)
      {
        goto LABEL_78;
      }

      if ((v48 & (v24 == -1)) != 0)
      {
        goto LABEL_78;
      }

      if (v24 == -1)
      {
LABEL_82:
        v12 = v45;
        goto LABEL_89;
      }

LABEL_80:
      if (v48)
      {
        goto LABEL_81;
      }

      v28 = *v43;
      v29 = *v43 & 0xFFFFFFFFFFFFFFFLL;
      if (v17 >= v29)
      {
        if (v17 == v29)
        {
          if (v19 == (*v45 & 0xFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_84;
          }

          HIDWORD(v48) = 1;
        }

        else
        {
          v52 = *v43;
          v35 = v45[1];
          v49 = (v17 - v28) & 0xFFFFFFFFFFFFFFFLL | v40;
          v50 = v35;
          v51 = *(v45 + 4);
          HIDWORD(v48) = 1;
          v32 = sub_1000203C4((a2 + 768), &v52, &v49, *(a2 + 56), 2, 1);
          if (v32)
          {
            return v32;
          }
        }

LABEL_81:
        LOBYTE(v48) = 1;
        if (v24 != 2)
        {
          goto LABEL_82;
        }

        goto LABEL_85;
      }

LABEL_84:
      LOBYTE(v48) = 0;
LABEL_85:
      v52 = v17 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v30 = *(v14 + 8);
      v49 = v19 & 0xFFFFFFFFFFFFFFFLL | (v46 << 60);
      v50 = v30;
      v51 = *(v14 + 16);
      if (v24)
      {
        v31 = &v49;
      }

      else
      {
        v31 = 0;
      }

      v32 = sub_1000203C4((a2 + 768), &v52, v31, *(a2 + 56), v24, BYTE4(v48) & 1);
      v12 = v45;
      if (v32)
      {
        return v32;
      }

LABEL_89:
      if (!v16)
      {
        break;
      }

LABEL_94:
      if (!v10)
      {
        goto LABEL_113;
      }
    }

    if (BYTE8(xmmword_10007C070))
    {
      goto LABEL_93;
    }

    v33 = (*(&xmmword_10007C050 + 1))(&xmmword_10007C050);
    if (v33)
    {
      v11 = v33;
      v39 = strerror(v33);
      sub_10004565C("error iterating physical extent tree: %s\n", v39);
      sub_100049C40(0x466, v11);
      return v11;
    }

    if (BYTE8(xmmword_10007C070))
    {
LABEL_93:
      v16 = 0;
      goto LABEL_94;
    }

    v14 = *algn_10007C068;
    v42 = qword_10007C060;
    v15 = *qword_10007C060;
    v16 = **algn_10007C068 & 0xFFFFFFFFFFFFFFFLL;
    v34 = **algn_10007C068 >> 60;
    sub_10001FC90(v41, a2, *qword_10007C060, v16, v34);
    LOBYTE(v46) = v34;
  }

  while (v10);
LABEL_113:
  v37 = v46;
  if (v48)
  {
    v52 = *v43;
    v11 = sub_1000203C4((a2 + 768), &v52, 0, *(a2 + 56), 0, BYTE4(v48) & 1);
  }

  else
  {
    v11 = 0;
  }

LABEL_116:
  *v42 = v15;
  *v14 = v16 & 0xFFFFFFFFFFFFFFFLL | (v37 << 60);
  return v11;
}

uint64_t sub_1000203C4(_DWORD *a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v13 = a4;
  v14 = v6;
  if (a3)
  {
    v7 = 20;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100027D7C(a1, 5u, a5, 0, a6, &v13, 0x10u, a3, v7);
  v9 = v8;
  if (v8)
  {
    v10 = v14 & 0xFFFFFFFFFFFFFFFLL;
    v11 = strerror(v8);
    sub_10004565C("could not cache physical extent repair at %llu error: %s\n", v10, v11);
    sub_100049C40(0x336, v9);
  }

  return v9;
}

uint64_t sub_10002045C(uint64_t a1, uint64_t a2)
{
  if (!qword_10009A1C8)
  {
    return 0;
  }

  while ((BYTE8(xmmword_10007C070) & 1) == 0)
  {
    v5 = qword_10007C060;
    v4 = *algn_10007C068;
    if ((*(*algn_10007C068 + 20) != 1 || !*(a1 + 56)) && *(*algn_10007C068 + 16))
    {
      sub_100049C40(0x47D, 92);
      v6 = *(v4 + 4);
      v7 = v6 > 0;
      v8 = sub_100045744;
      if (v6 > 0)
      {
        v8 = sub_10004565C;
      }

      v8("mismatch between extentref entry reference count (0) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v6, *v5, *v4 & 0xFFFFFFFFFFFFFFFLL);
      v17 = *v5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v16 = -1431655766;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v9 = *v4;
      v16 = *(v4 + 4);
      v15 = v9;
      v10 = sub_1000203C4((a1 + 768), &v17, &v15, *(a1 + 56), 2, v7);
      if (v10)
      {
        return v10;
      }
    }

    v11 = (*(&xmmword_10007C050 + 1))(&xmmword_10007C050);
    if (v11)
    {
      v12 = v11;
      v13 = strerror(v11);
      sub_10004565C("error iterating physical extent tree: %s\n", v13);
      sub_100049C40(0x47E, v12);
      return v12;
    }
  }

  xmmword_10007C170 = 0u;
  unk_10007C180 = 0u;
  xmmword_10007C150 = 0u;
  unk_10007C160 = 0u;
  xmmword_10007C130 = 0u;
  unk_10007C140 = 0u;
  xmmword_10007C110 = 0u;
  unk_10007C120 = 0u;
  xmmword_10007C0F0 = 0u;
  unk_10007C100 = 0u;
  xmmword_10007C0D0 = 0u;
  unk_10007C0E0 = 0u;
  xmmword_10007C0B0 = 0u;
  unk_10007C0C0 = 0u;
  xmmword_10007C090 = 0u;
  unk_10007C0A0 = 0u;
  xmmword_10007C070 = 0u;
  unk_10007C080 = 0u;
  xmmword_10007C050 = 0u;
  *&qword_10007C060 = 0u;
  BYTE8(xmmword_10007C070) = 1;
  if (!a2)
  {
    sub_10003B928(&xmmword_10009A190, 0);
    sub_10003B928(&xmmword_10009A1D0, 0);
    return 0;
  }

  sub_10003B928(&xmmword_10009A1D0, 0);
  xmmword_10009A1D0 = xmmword_10009A190;
  unk_10009A1E0 = unk_10009A1A0;
  xmmword_10009A1F0 = xmmword_10009A1B0;
  unk_10009A200 = unk_10009A1C0;
  if (sub_10001C108(&xmmword_10009A1D0, "prev phys extent", sub_10001F4EC))
  {
    sub_100045744("failed to register the prev phys extent tree in the fsck memory storage\n");
    sub_100049C40(0x588, 12);
  }

  v12 = 0;
  xmmword_10009A1B0 = 0u;
  unk_10009A1C0 = 0u;
  xmmword_10009A190 = 0u;
  unk_10009A1A0 = 0u;
  return v12;
}

uint64_t sub_1000206B4(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!qword_10009A1C8)
  {
    return 2;
  }

  v10 = 8;
  v9 = 21;
  v4 = sub_1000397B8(&xmmword_10009A190, 0, a3, a1, &v10, 8, a2, &v9);
  v5 = v4;
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    v6 = *a1;
    v7 = strerror(v4);
    sub_10004565C("could not lookup extent at %llu for physical extent repair: %s\n", v6, v7);
    sub_100049C40(0x335, v5);
  }

  return v5;
}

BOOL sub_10002075C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10003B708(a1, 0, a2, 8);
  v4 = v3 != 0;
  if (v3)
  {
    v5 = *a2;
    v6 = strerror(v3 != 0);
    sub_10004565C("could not remove extent at %llu for physical extent repair: %s\n", v5, v6);
    sub_100049C40(0x2B1, v4);
  }

  return v4;
}

uint64_t sub_1000207CC(_DWORD *a1, uint64_t *a2, void *a3)
{
  v5 = sub_10003B12C(a1, 0, a2, 8, a3, 21);
  v6 = v5;
  if (v5)
  {
    v7 = *a2;
    v8 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v9 = strerror(v5);
    sub_10004565C("could not insert extent with range (%llu + %llu) for physical extent repair: %s\n", v7, v8, v9);
    sub_100049C40(0x34F, v6);
  }

  return v6;
}

uint64_t sub_100020858(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 40) & 1) != 0 || *(result + 112))
    {
      return 0;
    }

    else
    {
      result = (*(result + 8))(result);
      if (!result)
      {
        if (*(v1 + 40))
        {
          v2 = 0;
          v3 = -1;
        }

        else
        {
          v3 = *(v1 + 72);
          v2 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFLL;
        }

        result = 0;
        *(v1 + 104) = v3;
        *(v1 + 112) = v2;
      }
    }
  }

  return result;
}

uint64_t sub_1000208CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *(v2 + 1400);
  if (v3)
  {
    result = sub_1000209B8(a1, 1835754873, *(v2 + 1392), v3, (v2 + 72));
    if (result)
    {
      return result;
    }

    v2 = a1[1];
  }

  v5 = *(v2 + 1304);
  if (v5 && (*(qword_10009BA60 + 47) & 1) == 0)
  {
    result = sub_1000209B8(a1, 1801812339, *(v2 + 1296), v5, (v2 + 72));
    if (result)
    {
      return result;
    }

    v2 = a1[1];
  }

  sub_1000422DC(a1, *(v2 + 1392), *(v2 + 1400), 0, 0x40000000, *(v2 + 1392), 0, 0, 1u, 1u);
  sub_1000422DC(a1, *(a1[1] + 1296), *(a1[1] + 1304), 0, 0x40000000, *(a1[1] + 1296), 0, 0, 1u, 1u);
  return 0;
}

uint64_t sub_1000209B8(uint64_t *a1, uint64_t a2, uint64_t a3, size_t a4, unsigned __int8 *a5)
{
  v5 = a5;
  v8 = a2;
  v105 = 0xAAAAAAAAAAAAAAAALL;
  v104 = 0;
  v10 = sub_100021DF8(a1, a2, a3, a4, a5, &v105);
  if (v10)
  {
    return v10;
  }

  v13 = v105;
  if (v8 == 1869900147)
  {
    v14 = 14;
  }

  else
  {
    v14 = 12;
  }

  v15 = sub_100031CD8(v105, v14, *(a1[1] + 16), v8, 0, *(a1[1] + 36) * a4, v11, v12);
  if (v15)
  {
    v10 = v15;
    if (v8 > 1869900146)
    {
      if (v8 == 1869900147)
      {
        v16 = "OTI keybag";
        goto LABEL_184;
      }

      if (v8 == 1919247219)
      {
        sub_100045744("%s (%llu+%llu): block range isn't a valid keybag, skipping checks\n", "volume keybag", a3, a4);
        goto LABEL_191;
      }
    }

    else
    {
      if (v8 == 1801812339)
      {
        v16 = "container keybag";
        goto LABEL_184;
      }

      if (v8 == 1835754873)
      {
        v16 = "media keybag";
LABEL_184:
        sub_10004565C("%s (%llu+%llu): block range isn't a valid keybag, aborting\n", v16, a3, a4);
        goto LABEL_217;
      }
    }

    v16 = "unknown keybag";
    if (v8 == 1651273570)
    {
      v16 = "OTI blob";
    }

    goto LABEL_184;
  }

  v17 = (v13 + 32);
  v94 = *(a1[1] + 36) * a4;
  v101 = v13;
  v18 = (v13 + 32);
  if (v8 != 1869900147)
  {
    v19 = sub_100022314(a1, v18, v8, a3, a4, 2, 0x18uLL);
    if (v19)
    {
      goto LABEL_193;
    }

    v84 = v5;
    v48 = *(v13 + 9);
    if (v48 < 0x11)
    {
      v91 = 0;
      v93 = 16;
LABEL_188:
      v10 = sub_100022788(v17, v8, a3, a4, v91, v93, &v104);
      goto LABEL_189;
    }

    v49 = 0;
    v50 = &v13[v48 + 32];
    v51 = (v13 + 48);
    if (v8 == 1651273570)
    {
      v52 = "OTI blob";
    }

    else
    {
      v52 = "unknown keybag";
    }

    v91 = 0;
    v93 = 16;
    v53 = v94;
    v85 = v52;
    v87 = v13 + 32;
    while (1)
    {
      v96 = v50;
      v54 = *(v51 + 18);
      v55 = v54 + 24;
      if (((v54 + 24) & 0xF) != 0)
      {
        v55 = v54 - ((v54 + 24) & 0xF) + 40;
      }

      v103 = v55;
      v100 = v50 - v51;
      v88 = v55 - (v50 - v51);
      if (v55 > v50 - v51)
      {
        if (v8 > 1869900146)
        {
          v56 = v52;
          if (v8 == 1919247219)
          {
            v56 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v56 = "container keybag";
        }

        else
        {
          v56 = "media keybag";
          if (v8 != 1835754873)
          {
            v56 = v52;
          }
        }

        sub_10004565C("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", v56, a3, a4, v49, v55, v100, *(v13 + 9));
        sub_100049C40(0x4EE, -11);
        LODWORD(v54) = *(v51 + 18);
      }

      if (v54 >= 0x201)
      {
        if (v8 > 1869900146)
        {
          if (v8 == 1919247219)
          {
            v52 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v52 = "container keybag";
        }

        else if (v8 == 1835754873)
        {
          v52 = "media keybag";
        }

        sub_10004565C("%s (%llu+%llu): entry %u has size %u > maximum size %u\n", v52, a3, a4, v49, v103, 512);
        v10 = 92;
        v81 = 1066;
        goto LABEL_216;
      }

      if (v93 + v103 > v53)
      {
        if (v8 > 1869900146)
        {
          if (v8 == 1919247219)
          {
            v52 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v52 = "container keybag";
        }

        else if (v8 == 1835754873)
        {
          v52 = "media keybag";
        }

        sub_10004565C("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", v52, a3, a4, v49, v103, v93 + v103, v53);
        v10 = 92;
        v81 = 1067;
        goto LABEL_216;
      }

      if (!uuid_is_null(v51))
      {
        goto LABEL_105;
      }

      if (v8 > 1869900146)
      {
        v57 = v52;
        if (v8 == 1919247219)
        {
          v57 = "volume keybag";
        }
      }

      else if (v8 == 1801812339)
      {
        v57 = "container keybag";
      }

      else
      {
        v57 = "media keybag";
        if (v8 != 1835754873)
        {
          v57 = v52;
        }
      }

      sub_100045744("%s (%llu+%llu): UUID of entry %u is null\n", v57, a3, a4, v49);
      sub_100049C40(0x42C, -2);
      if (sub_10004758C(qword_10009BA58, "Remove entry with null UUID? "))
      {
        v98 = 1;
        v104 = 1;
      }

      else
      {
LABEL_105:
        v98 = 0;
      }

      if (v8 == 1835754873 && !uuid_is_null(v51) && uuid_compare(v51, (a1[1] + 72)))
      {
        *&out[29] = 0xAAAAAAAAAAAAAAAALL;
        *&v58 = 0xAAAAAAAAAAAAAAAALL;
        *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *out = v58;
        *&out[16] = v58;
        *&v106[29] = 0xAAAAAAAAAAAAAAAALL;
        *v106 = v58;
        *&v106[16] = v58;
        uuid_unparse(v51, out);
        uuid_unparse((a1[1] + 72), v106);
        sub_100045744("%s (%llu+%llu): UUID %s of entry %u (tag %u) is not the container UUID %s\n", "media keybag", a3, a4, out, v49, *(v51 + 16), v106);
        sub_100049C40(0x42D, -2);
      }

      if (!*(v51 + 16))
      {
        if (v8 > 1869900146)
        {
          v59 = v52;
          if (v8 == 1919247219)
          {
            v59 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v59 = "container keybag";
        }

        else
        {
          v59 = "media keybag";
          if (v8 != 1835754873)
          {
            v59 = v52;
          }
        }

        sub_100045744("%s (%llu+%llu): entry %u has 'unknown' tag type\n", v59, a3, a4, v49);
        sub_100049C40(0x42E, -5);
      }

      if (*(v51 + 20) || *(v51 + 21) || *(v51 + 22) || *(v51 + 23))
      {
        if (v8 > 1869900146)
        {
          v60 = v52;
          if (v8 == 1919247219)
          {
            v60 = "volume keybag";
          }
        }

        else if (v8 == 1801812339)
        {
          v60 = "container keybag";
        }

        else
        {
          v60 = "media keybag";
          if (v8 != 1835754873)
          {
            v60 = v52;
          }
        }

        sub_100045744("%s (%llu+%llu): entry %u has invalid padding\n", v60, a3, a4, v49);
        sub_100049C40(0x42F, -10);
      }

      if (v8 == 1801812339)
      {
        v61 = *(v51 + 16);
        if (v61 == 16 || v61 == 3)
        {
          v62 = v17;
          if (v61 == 16)
          {
            v63 = "OTI";
          }

          else
          {
            v63 = "unlock";
          }

          if (v61 == 16)
          {
            v64 = 1869900147;
          }

          else
          {
            v64 = 1919247219;
          }

          v65 = *(v51 + 18);
          if (v65 != 16)
          {
            sub_10004565C("%s (%llu+%llu): %s records entry %u does not contain a range (size %u)\n", "container keybag", a3, a4, v63, v49, v65);
            v10 = 92;
            v81 = 1072;
LABEL_216:
            sub_100049C40(v81, 92);
            goto LABEL_217;
          }

          v66 = *(v51 + 24);
          v67 = *(v51 + 32);
          v68 = *(a1[1] + 40);
          if (v68 - v67 < v66 || v68 <= v67 || v66 < 1 || v68 <= v66)
          {
            sub_10004565C("%s (%llu+%llu): %s records entry %u contains invalid range %llu+%llu\n", "container keybag", a3, a4, v63, v49, *(v51 + 24), v67);
            sub_100049C40(0x431, 92);
            if (v98)
            {
              v98 = 1;
LABEL_155:
              v17 = v62;
              goto LABEL_156;
            }

            v52 = v85;
            if (!sub_10004758C(qword_10009BA58, "Remove entry with invalid range? "))
            {
              goto LABEL_210;
            }

            v17 = v62;
            v98 = 1;
            v104 = 1;
            v13 = v101;
          }

          else
          {
            v69 = sub_1000209B8(a1, v64, v66, v67, v51);
            if (!v69)
            {
              if (!v98)
              {
                sub_100021B3C(a1, v64, *(v51 + 24), *(v51 + 32));
                v53 = v94;
                v17 = v62;
                v13 = v101;
                v52 = v85;
                if (v103 <= v100)
                {
                  goto LABEL_172;
                }

LABEL_163:
                if (!sub_10004758C(qword_10009BA58, "Fix the keybag size? "))
                {
                  goto LABEL_172;
                }

                v70 = 0;
                goto LABEL_165;
              }

              v98 = 1;
              v53 = v94;
              goto LABEL_155;
            }

            v10 = v69;
            if (v69 != 92)
            {
              goto LABEL_189;
            }

            v17 = v62;
            sub_10004565C("%s (%llu+%llu): %s records entry %u contains invalid keybag\n", "container keybag", a3, a4, v63, v49);
            sub_100049C40(0x5D8, 92);
            if (v98)
            {
              v98 = 1;
              v53 = v94;
LABEL_156:
              v13 = v101;
              v52 = v85;
              goto LABEL_157;
            }

            v53 = v94;
            v13 = v101;
            v52 = v85;
            if (!sub_10004758C(qword_10009BA58, "Remove entry with invalid keybag? "))
            {
LABEL_210:
              v10 = 92;
              goto LABEL_217;
            }

            v98 = 1;
            v104 = 1;
          }
        }
      }

LABEL_157:
      if (v103 <= v100)
      {
        if (!v98)
        {
          goto LABEL_172;
        }

        goto LABEL_168;
      }

      if ((v98 & 1) == 0)
      {
        goto LABEL_163;
      }

      v70 = 1;
LABEL_165:
      v71 = *(v13 + 9) + v88;
      *(v13 + 9) = v71;
      v72 = *(v13 + 17);
      if (v91 + 1 > v72)
      {
        *(v13 + 17) = v72 + 1;
      }

      v96 = v17 + v71;
      v104 = 1;
      if ((v70 & 1) == 0)
      {
LABEL_172:
        v78 = *(v51 + 18);
        v79 = v78 + 24;
        v80 = v78 - ((v78 + 24) & 0xF) + 40;
        if ((v79 & 0xF) == 0)
        {
          v80 = v79;
        }

        v51 += v80;
        ++v91;
        v93 += v103;
        v50 = v96;
        goto LABEL_175;
      }

LABEL_168:
      v73 = *(v51 + 18);
      v74 = v73 + 24;
      v75 = v73 - ((v73 + 24) & 0xF) + 40;
      if ((v74 & 0xF) != 0)
      {
        v76 = v75;
      }

      else
      {
        v76 = v74;
      }

      memmove(v51, (v51 + v76), v96 - (v51 + v76));
      memset_s((v96 - v76), v76, 0, v76);
      v77 = (*(v13 + 9) - v76);
      v52 = v85;
      v17 = v87;
      *(v13 + 9) = v77;
      --*(v13 + 17);
      v50 = &v87[v77];
LABEL_175:
      ++v49;
      if (v51 >= v50)
      {
        goto LABEL_188;
      }
    }
  }

  v19 = sub_100022314(a1, v18, 1869900147, a3, a4, 1, 0x28uLL);
  if (v19)
  {
    goto LABEL_193;
  }

  v20 = *(v13 + 9);
  if (v20 < 0x11)
  {
    v82 = 0;
    v24 = 16;
LABEL_186:
    v10 = sub_100022788(v17, 1869900147, a3, a4, v82, v24, &v104);
    goto LABEL_190;
  }

  v84 = v5;
  v99 = 0;
  v21 = 0;
  v90 = 0;
  v22 = v17 + v20;
  v23 = v13 + 48;
  v24 = 16;
  v86 = v13 + 32;
  while (1)
  {
    v102 = v22 - v23;
    if ((v22 - v23) <= 0x27)
    {
      v25 = v22;
      sub_10004565C("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", "OTI keybag", a3, a4, v21, 40, v102, *(v101 + 9));
      sub_100049C40(0x5DB, -11);
      v22 = v25;
    }

    if (!*(v23 + 16))
    {
      sub_10004565C("%s (%llu+%llu): entry %u has blob size == 0\n", "OTI keybag", a3, a4, v21);
      v10 = 92;
      v81 = 1500;
      goto LABEL_216;
    }

    if (*(v23 + 16) > 0x1000u)
    {
      sub_10004565C("%s (%llu+%llu): entry %u has blob size %u > maximum blob size %u\n", "OTI keybag", a3, a4, v21, 40, 4096);
      v10 = 92;
      v81 = 1501;
      goto LABEL_216;
    }

    v26 = v24 + 40;
    if (v24 + 40 > v94)
    {
      sub_10004565C("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", "OTI keybag", a3, a4, v21, 40, v24 + 40, v94);
      v10 = 92;
      v81 = 1502;
      goto LABEL_216;
    }

    v97 = v22;
    if (uuid_is_null(v23))
    {
      sub_100045744("%s (%llu+%llu): UUID of entry %u is null\n", "OTI keybag", a3, a4, v21);
      sub_100049C40(0x5DF, -2);
      v27 = sub_10004758C(qword_10009BA58, "Remove entry with null UUID? ");
      v95 = v27 != 0;
      v28 = v99;
      if (v27)
      {
        v28 = 1;
      }

      v99 = v28;
    }

    else
    {
      v95 = 0;
    }

    if (!*(v23 + 17))
    {
      sub_100045744("%s (%llu+%llu): entry %u has 'unknown' tag type\n", "OTI keybag", a3, a4, v21);
      sub_100049C40(0x5E0, -5);
    }

    v92 = v24;
    if (v23[36] || v23[37] || v23[38] || v23[39])
    {
      sub_100045744("%s (%llu+%llu): entry %u has invalid padding\n", "OTI keybag", a3, a4, v21);
      sub_100049C40(0x5E1, -10);
    }

    v29 = *(v23 + 3);
    v30 = *(v23 + 16);
    v31 = a1[1];
    v32 = *(v31 + 36);
    v33 = v30 / v32;
    if (v30 % v32)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = v33;
    }

    if (v29 < 1 || (v35 = *(v31 + 40), v35 <= v29) || (v35 > v34 ? (v36 = v35 - v34 >= v29) : (v36 = 0), !v36))
    {
      sub_10004565C("%s (%llu+%llu): entry %u has invalid blob range %llu+%llu\n", "OTI keybag", a3, a4, v21, *(v23 + 3), v34);
      sub_100049C40(0x5E2, 92);
      v17 = v86;
      v24 = v92;
      if (!v95)
      {
        v38 = sub_10004758C(qword_10009BA58, "Remove entry with invalid blob range? ");
LABEL_54:
        if (!v38)
        {
          goto LABEL_210;
        }

        v99 = 1;
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    v89 = v26;
    v37 = v34 * v32;
    if (v34 * v32 < 0x10000)
    {
      break;
    }

    sub_10004565C("%s (%llu+%llu): oti_ke_blob_len (%u) is too large\n", "OTI blob", v29, v34, v30);
    sub_100049C40(0x5D9, 92);
    v17 = v86;
    v24 = v92;
    v26 = v89;
LABEL_52:
    sub_10004565C("%s (%llu+%llu): entry %u has invalid blob\n", "OTI keybag", a3, a4, v21);
    sub_100049C40(0x5E3, 92);
    if (!v95)
    {
      v38 = sub_10004758C(qword_10009BA58, "Remove entry with invalid blob? ");
      goto LABEL_54;
    }

LABEL_56:
    if (v102 >= 0x28)
    {
      goto LABEL_62;
    }

    v43 = 1;
LABEL_58:
    v44 = *(v101 + 9) - v102 + 40;
    *(v101 + 9) = v44;
    v45 = *(v101 + 17);
    if (v90 + 1 > v45)
    {
      *(v101 + 17) = v45 + 1;
    }

    v22 = v17 + v44;
    if (!v43)
    {
      v99 = 1;
LABEL_64:
      ++v90;
      v23 += 40;
      v24 = v26;
      goto LABEL_65;
    }

    v97 = v22;
    v99 = 1;
LABEL_62:
    memmove(v23, v23 + 40, v97 - (v23 + 40));
    memset_s((v97 - 40), 0x28uLL, 0, 0x28uLL);
    v46 = (*(v101 + 9) - 40);
    *(v101 + 9) = v46;
    --*(v101 + 17);
    v22 = v17 + v46;
LABEL_65:
    ++v21;
    if (v23 >= v22)
    {
      v104 = v99;
      v5 = v84;
      v82 = v90;
      goto LABEL_186;
    }
  }

  *out = 0xAAAAAAAAAAAAAAAALL;
  v10 = sub_100021DF8(a1, 1651273570, v29, v34, v84, out);
  if (!v10)
  {
    v41 = v37;
    v42 = *out;
    if (sub_10003ED88(v23 + 2, *out, v41, 0, v39, v40))
    {
      sub_10004565C("%s (%llu+%llu): oti_ke_blob_cksum (0x%llx) is invalid for blob\n", "OTI blob", v29, v34, *(v23 + 2));
      v10 = 92;
      sub_100049C40(0x5DA, 92);
    }

    else
    {
      v10 = 0;
    }

    free(v42);
  }

  if (!v10)
  {
    v26 = v89;
    if (!v95)
    {
      sub_1000422DC(a1, v29, v34, 0, 0x40000000, v29, 0, 0, 0xDu, 1u);
      if (v102 > 0x27)
      {
        v17 = v86;
        v22 = v97;
        goto LABEL_64;
      }

      v47 = sub_10004758C(qword_10009BA58, "Fix the keybag size? ");
      v17 = v86;
      v24 = v92;
      v22 = v97;
      if (!v47)
      {
        goto LABEL_64;
      }

      v43 = 0;
      goto LABEL_58;
    }

    v17 = v86;
    v24 = v92;
    goto LABEL_56;
  }

  v17 = v86;
  v24 = v92;
  v26 = v89;
  if (v10 == 92)
  {
    goto LABEL_52;
  }

  v104 = v99;
LABEL_189:
  v5 = v84;
LABEL_190:
  if (!v10)
  {
LABEL_191:
    if (v104 == 1)
    {
      v19 = sub_100022174(a1, v8, a3, a4, v5, v105, v39, v40);
LABEL_193:
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_217:
  free(v105);
  return v10;
}

uint64_t sub_100021B3C(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a2 == 1869900147 || a2 == 1919247219)
  {
    v5 = 13;
  }

  else
  {
    v5 = 1;
  }

  return sub_1000422DC(a1, a3, a4, 0, 0x40000000, a3, 0, 0, v5, 1u);
}

uint64_t sub_100021BA0(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 1304);
  if (!v2 || (*(qword_10009BA60 + 47) & 1) != 0)
  {
    return 0;
  }

  v5 = *(v1 + 1296);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v3 = sub_100021DF8(a1, 1801812339, v5, v2, (v1 + 72), &v24);
  if (!v3)
  {
    v6 = v24;
    v7 = *(v24 + 36);
    if (v7 < 0x11)
    {
      goto LABEL_21;
    }

    v8 = 0;
    v9 = 0;
    v10 = v24 + v7 + 32;
    v11 = (v24 + 48);
    do
    {
      if (uuid_is_null(v11) || sub_10001D898(a1, v11) || (*&out[29] = 0xAAAAAAAAAAAAAAAALL, *&v17 = 0xAAAAAAAAAAAAAAAALL, *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL, *out = v17, *&out[16] = v17, uuid_unparse(v11, out), sub_100045744("%s (%llu+%llu): UUID %s of entry %u (tag %u) does not reference any volume\n", "container keybag", v5, v2, out, v8, v11[8]), sub_100049C40(0x445, -2), !sub_10004758C(qword_10009BA58, "Remove orphan entry? ")))
      {
        v14 = v11[9];
        v15 = v14 + 24;
        v16 = v14 - ((v14 + 24) & 0xF) + 40;
        if ((v15 & 0xF) == 0)
        {
          v16 = v15;
        }

        v11 = (v11 + v16);
      }

      else
      {
        v18 = v11[9];
        v19 = v18 + 24;
        v20 = v18 - ((v18 + 24) & 0xF) + 40;
        if ((v19 & 0xF) != 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = v19;
        }

        memmove(v11, v11 + v21, v10 - (v11 + v21));
        memset_s((v10 - v21), v21, 0, v21);
        v22 = (*(v6 + 36) - v21);
        *(v6 + 36) = v22;
        --*(v6 + 34);
        v10 = v6 + 32 + v22;
        v9 = 1;
      }

      ++v8;
    }

    while (v11 < v10);
    v6 = v24;
    if (v9)
    {
      v3 = sub_100022174(a1, 1801812339, v5, v2, (a1[1] + 72), v24, v12, v13);
    }

    else
    {
LABEL_21:
      v3 = 0;
    }

    free(v6);
  }

  return v3;
}

uint64_t sub_100021DF8(uint64_t *a1, int a2, uint64_t a3, size_t count, unsigned __int8 *a5, void *a6)
{
  if (HIDWORD(count) || (v10 = *(a1[1] + 36), (count * v10) >> 32))
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v16 = "OTI keybag";
        goto LABEL_18;
      }

      if (a2 == 1919247219)
      {
        v16 = "volume keybag";
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v16 = "container keybag";
        goto LABEL_18;
      }

      if (a2 == 1835754873)
      {
        v16 = "media keybag";
LABEL_18:
        sub_10004565C("%s (%llu+%llu): size is too large\n", v16, a3, count);
        v17 = 92;
        v18 = 1058;
        v19 = 92;
LABEL_19:
        sub_100049C40(v18, v19);
        return v17;
      }
    }

    v16 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v16 = "OTI blob";
    }

    goto LABEL_18;
  }

  v13 = malloc_type_calloc(count, v10, 0xC61E6867uLL);
  if (!v13)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v21 = "OTI keybag";
        goto LABEL_51;
      }

      if (a2 == 1919247219)
      {
        v21 = "volume keybag";
        goto LABEL_51;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v21 = "container keybag";
        goto LABEL_51;
      }

      if (a2 == 1835754873)
      {
        v21 = "media keybag";
LABEL_51:
        sub_10004565C("%s (%llu+%llu): failed to allocate memory\n", v21, a3, count);
        v17 = 12;
        v18 = 1059;
        v19 = 12;
        goto LABEL_19;
      }
    }

    v21 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v21 = "OTI blob";
    }

    goto LABEL_51;
  }

  v14 = v13;
  if (a2 == 1835754873)
  {
    v15 = sub_10002F3CC(*a1);
  }

  else if ((*(qword_10009BA60 + 20) & 0x80000000) != 0)
  {
    v22 = a1[1];
    v23 = *(qword_10009BA60 + 8);
    *&v26[0] = a3;
    *(&v26[0] + 1) = count;
    v26[1] = *(v22 + 1392);
    v15 = sub_10001BDEC(v23, a5, v26, 1, v14);
  }

  else
  {
    v15 = sub_100004474(*a1, a3, count, a5, v13);
  }

  v17 = v15;
  if (v15)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v24 = "OTI keybag";
        goto LABEL_45;
      }

      if (a2 == 1919247219)
      {
        v24 = "volume keybag";
        goto LABEL_45;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v24 = "container keybag";
        goto LABEL_45;
      }

      if (a2 == 1835754873)
      {
        v24 = "media keybag";
LABEL_45:
        v25 = strerror(v15);
        sub_10004565C("%s (%llu+%llu): failed to get keybag data: %s\n", v24, a3, count, v25);
        sub_100049C40(0x424, v17);
        free(v14);
        return v17;
      }
    }

    if (a2 == 1651273570)
    {
      v24 = "OTI blob";
    }

    else
    {
      v24 = "unknown keybag";
    }

    goto LABEL_45;
  }

  *a6 = v14;
  return v17;
}

uint64_t sub_100022174(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  sub_10003ED18(a6, (a6 + 8), (*(a1[1] + 36) * a4 - 8), 0, a7, a8);
  if (a2 == 1835754873)
  {
    v14 = sub_10002F4AC(*a1);
  }

  else
  {
    v15 = a1[1];
    v16 = *(qword_10009BA60 + 8);
    *&v21[0] = a3;
    *(&v21[0] + 1) = a4;
    v21[1] = *(v15 + 1392);
    v14 = sub_10001BDEC(v16, a5, v21, 0, a6);
  }

  v17 = v14;
  if (v14)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v18 = "OTI keybag";
        goto LABEL_17;
      }

      if (a2 == 1919247219)
      {
        v18 = "volume keybag";
        goto LABEL_17;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v18 = "container keybag";
        goto LABEL_17;
      }

      if (a2 == 1835754873)
      {
        v18 = "media keybag";
LABEL_17:
        v19 = strerror(v14);
        sub_10004565C("%s (%llu+%llu): failed to put keybag: %s\n", v18, a3, a4, v19);
        sub_100049C40(0x443, v17);
        return v17;
      }
    }

    if (a2 == 1651273570)
    {
      v18 = "OTI blob";
    }

    else
    {
      v18 = "unknown keybag";
    }

    goto LABEL_17;
  }

  return v17;
}

uint64_t sub_100022314(uint64_t a1, unsigned __int16 *a2, int a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  v7 = *a2;
  if (!*a2)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v11 = "OTI keybag";
        goto LABEL_47;
      }

      if (a3 == 1919247219)
      {
        v11 = "volume keybag";
        goto LABEL_47;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v11 = "container keybag";
        goto LABEL_47;
      }

      if (a3 == 1835754873)
      {
        v11 = "media keybag";
LABEL_47:
        sub_10004565C("%s (%llu+%llu): version cannot be 0\n", v11, a4, a5);
        v15 = 92;
        v16 = 1061;
LABEL_74:
        sub_100049C40(v16, 92);
        return v15;
      }
    }

    v11 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v11 = "OTI blob";
    }

    goto LABEL_47;
  }

  if (v7 != a6)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v12 = "OTI keybag";
        goto LABEL_53;
      }

      if (a3 == 1919247219)
      {
        v12 = "volume keybag";
        goto LABEL_53;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v12 = "container keybag";
        goto LABEL_53;
      }

      if (a3 == 1835754873)
      {
        v12 = "media keybag";
LABEL_53:
        sub_100045744("%s (%llu+%llu): unknown version %u\n, skipping checks\n", v12, a4, a5, v7);
        v17 = 1062;
        v18 = -6;
LABEL_54:
        sub_100049C40(v17, v18);
        return 0;
      }
    }

    v12 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v12 = "OTI blob";
    }

    goto LABEL_53;
  }

  v8 = (*(*(a1 + 8) + 36) * a5);
  v9 = v8 / a7;
  if (v8 / a7 < a2[1])
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v10 = "OTI keybag";
        goto LABEL_67;
      }

      if (a3 == 1919247219)
      {
        v10 = "volume keybag";
        goto LABEL_67;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v10 = "container keybag";
        goto LABEL_67;
      }

      if (a3 == 1835754873)
      {
        v10 = "media keybag";
LABEL_67:
        sub_10004565C("%s (%llu+%llu): number of entries %u exceeds object capacity %lu\n", v10, a4, a5, a2[1], v9);
        v15 = 92;
        v16 = 1063;
        goto LABEL_74;
      }
    }

    v10 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v10 = "OTI blob";
    }

    goto LABEL_67;
  }

  if (*(a2 + 1) > v8)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v13 = "OTI keybag";
        goto LABEL_73;
      }

      if (a3 == 1919247219)
      {
        v13 = "volume keybag";
        goto LABEL_73;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v13 = "container keybag";
        goto LABEL_73;
      }

      if (a3 == 1835754873)
      {
        v13 = "media keybag";
LABEL_73:
        sub_10004565C("%s (%llu+%llu): number of bytes %u exceeds object size %u\n", v13, a4, a5, *(a2 + 1), v8);
        v15 = 92;
        v16 = 1064;
        goto LABEL_74;
      }
    }

    v13 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v13 = "OTI blob";
    }

    goto LABEL_73;
  }

  if (*(a2 + 8) || *(a2 + 9) || *(a2 + 10) || *(a2 + 11) || *(a2 + 12) || *(a2 + 13) || *(a2 + 14) || *(a2 + 15))
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v14 = "OTI keybag";
        goto LABEL_81;
      }

      if (a3 == 1919247219)
      {
        v14 = "volume keybag";
        goto LABEL_81;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v14 = "container keybag";
        goto LABEL_81;
      }

      if (a3 == 1835754873)
      {
        v14 = "media keybag";
LABEL_81:
        sub_100045744("%s (%llu+%llu): invalid padding\n", v14, a4, a5);
        v17 = 1065;
        v18 = -10;
        goto LABEL_54;
      }
    }

    v14 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v14 = "OTI blob";
    }

    goto LABEL_81;
  }

  return 0;
}

uint64_t sub_100022788(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, _BYTE *a7)
{
  if (*(a1 + 2) == a5)
  {
    goto LABEL_16;
  }

  v13 = a5;
  if (a2 > 1869900146)
  {
    if (a2 == 1869900147)
    {
      v14 = "OTI keybag";
      goto LABEL_14;
    }

    if (a2 == 1919247219)
    {
      v14 = "volume keybag";
      goto LABEL_14;
    }

LABEL_9:
    v14 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v14 = "OTI blob";
    }

    goto LABEL_14;
  }

  if (a2 == 1801812339)
  {
    v14 = "container keybag";
    goto LABEL_14;
  }

  if (a2 != 1835754873)
  {
    goto LABEL_9;
  }

  v14 = "media keybag";
LABEL_14:
  sub_10004565C("%s (%llu+%llu): number of keys %u does not match number of entries found %u\n", v14, a3, a4, *(a1 + 2), a5);
  v15 = 92;
  sub_100049C40(0x444, 92);
  if (!sub_10004758C(qword_10009BA58, "Fix the number of keys? "))
  {
    return v15;
  }

  *(a1 + 2) = v13;
  *a7 = 1;
LABEL_16:
  if (*(a1 + 4) == a6)
  {
    return 0;
  }

  if (a2 > 1869900146)
  {
    if (a2 == 1869900147)
    {
      v16 = "OTI keybag";
    }

    else
    {
      if (a2 != 1919247219)
      {
        goto LABEL_25;
      }

      v16 = "volume keybag";
    }
  }

  else
  {
    if (a2 != 1801812339)
    {
      if (a2 == 1835754873)
      {
        v16 = "media keybag";
        goto LABEL_30;
      }

LABEL_25:
      v16 = "unknown keybag";
      if (a2 == 1651273570)
      {
        v16 = "OTI blob";
      }

      goto LABEL_30;
    }

    v16 = "container keybag";
  }

LABEL_30:
  sub_10004565C("%s (%llu+%llu): number of bytes %u does not match sum of all entries %u\n", v16, a3, a4, *(a1 + 4), a6);
  v15 = 92;
  sub_100049C40(0x432, 92);
  if (sub_10004758C(qword_10009BA58, "Fix the number of bytes? "))
  {
    v15 = 0;
    *(a1 + 4) = a6;
    *a7 = 1;
  }

  return v15;
}

char *sub_1000229E8(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 40), (*(v2 + 57) & 2) != 0))
  {
    v4 = *(v2 + 176);
    v5 = sub_10001C07C(0x64u, 0x38400000uLL, 0x5A00000uLL);
    byte_10009A210 = BYTE1(*(*(a1 + 40) + 56)) & 1;
    sub_10001E320(&unk_10009A218, v4, v5);
    if (!sub_100039748(&unk_10009A280, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 9, 0, 0, sub_100030C88))
    {
      sub_10003B84C(&unk_10009A280, 0, 64);
    }

    result = sub_10001C108(&unk_10009A280, "purgeable", sub_100022B40);
    if (result)
    {
      sub_100045744("failed to register the purgeable tree in the fsck memory storage\n");

      return sub_100049C40(0x5C1, 12);
    }
  }

  else
  {

    return sub_100045614("skipping purgeable cross checks\n");
  }

  return result;
}

uint64_t sub_100022B40()
{
  sub_10001E44C(&unk_10009A218);

  return sub_10003B928(&unk_10009A280, 0);
}

uint64_t sub_100022B7C(unint64_t a1)
{
  if (!sub_10001E4A8(&unk_10009A218))
  {
    return 0;
  }

  if (byte_10009A210 != 1)
  {
    v4 = sub_10001E8F4(&unk_10009A218, a1, 1uLL, 1);
    if (v4 != 17)
    {
LABEL_8:
      v3 = v4;
      goto LABEL_9;
    }

LABEL_7:
    v4 = sub_100022CF0(a1);
    goto LABEL_8;
  }

  v2 = sub_10001EC40(&unk_10009A218, a1, 1uLL, 1);
  if (!v2)
  {
    v3 = sub_10001E8F4(&unk_10009A218, a1, 1uLL, 0);
    if (!v3)
    {
      return v3;
    }

    sub_10004565C("can't unmark purgeable (file_id %llu) for cross checks\n", a1);
    sub_100049C40(0x5C3, 92);
LABEL_10:
    if (v3 == 34)
    {
      v5 = strerror(34);
      sub_100045744("failed to cross check purgeable record: %d (%s)\n", 34, v5);
      sub_100049C40(0x5C5, 0);
    }

    else
    {
      if (v3 != 12)
      {
        v7 = strerror(v3);
        sub_10004565C("failed to cross check purgeable record: %d (%s)\n", v3, v7);
        sub_100049C40(0x5C6, v3);
        return v3;
      }

      sub_100045744("aborting purgeable cross checks - out of memory\n");
      sub_100049C40(0x5C4, 12);
      sub_10001E44C(&unk_10009A218);
      sub_10003B928(dword_10009A280, 0);
    }

    return 0;
  }

  v3 = v2;
  if (v2 == 17)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

  return v3;
}

uint64_t sub_100022CF0(uint64_t a1)
{
  v8 = 0;
  v6 = a1;
  v7 = 0;
  v1 = sub_10003B12C(dword_10009A280, 0, &v6, 8, &v7, 9);
  v2 = v1;
  if (v1)
  {
    v3 = v6;
    v4 = strerror(v1);
    sub_10004565C("failed to insert purgeable (file_id %llu): %s (%d)\n", v3, v4, v2);
    sub_100049C40(0x5C2, v2);
  }

  return v2;
}

uint64_t sub_100022D78(uint64_t a1, unint64_t a2)
{
  if (!sub_10001E4A8(&unk_10009A218))
  {
    return 0;
  }

  if (byte_10009A210 == 1)
  {
    v4 = sub_10001E8F4(&unk_10009A218, a2, 1uLL, 1);
    if (v4 == 17)
    {
      sub_10004565C("purgeable inode (id %llu) was unexpectedly registered twice\n", a2);
      v5 = 92;
      sub_100049C40(0x5C7, 92);
LABEL_14:
      v9 = strerror(v5);
      sub_10004565C("failed to cross check purgeable inode: %d (%s)\n", v5, v9);
      sub_100049C40(0x5CC, v5);
      return v5;
    }

    v5 = v4;
    goto LABEL_10;
  }

  v6 = sub_10001EC40(&unk_10009A218, a2, 1uLL, 1);
  if (!v6)
  {
    v5 = sub_10001E8F4(&unk_10009A218, a2, 1uLL, 0);
    if (!v5)
    {
      return v5;
    }

    sub_10004565C("can't unmark purgeable (file_id %llu) for cross checks\n", a2);
    sub_100049C40(0x5CA, 92);
    goto LABEL_11;
  }

  v5 = v6;
  if (v6 != 17)
  {
LABEL_10:
    if (v5)
    {
      goto LABEL_11;
    }

    return v5;
  }

  sub_100045744("purgeable inode (id %llu) is missing a purgeable record\n", a2);
  sub_100049C40(0x5C8, -2);
  v7 = sub_100026C04((a1 + 768), a2, 0x80000);
  v5 = v7;
  if (v7)
  {
    v8 = strerror(v7);
    sub_10004565C("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", a2, v5, v8);
    sub_100049C40(0x5C9, v5);
LABEL_11:
    if (v5 != 12)
    {
      goto LABEL_14;
    }

    sub_100045744("aborting purgeable cross checks - out of memory\n");
    sub_100049C40(0x5CB, 12);
    sub_10001E44C(&unk_10009A218);
    sub_10003B928(dword_10009A280, 0);
    return 0;
  }

  return v5;
}

uint64_t sub_100022F40(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = 0;
  memset(v25, 170, 17);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  sub_10001ED64(&unk_10009A218, sub_100023240, a3);
  v19 = 0;
  sub_10003B724(dword_10009A280, 0, &v19);
  if (v19)
  {
    v5 = malloc_type_calloc(1uLL, 0x340uLL, 0x30AFF060uLL);
    v6 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x37CBAB78uLL);
    v7 = sub_10003F8AC(a1, a2, 3u, &v24);
    if (!v6 || !v5 || !v24)
    {
      sub_10004565C("unable to init fsroot tree to enque purgeable repairs\n");
      sub_100049C40(0x5D4, v7);
      goto LABEL_19;
    }

    v13 = a1;
    v14 = a2;
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v6 = 0;
    v5 = 0;
  }

  v17 = 9;
  v18 = 8;
  if (!sub_100039CDC(dword_10009A280, 0, &v26, &v18, &v25[1], &v17))
  {
    while (1)
    {
      *v5 = v26 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      v25[0] = 0x800000EE0;
      v8 = sub_1000397B8(v24, 0, 0, v5, v25 + 1, 832, v6, v25);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (v8 == 2)
      {
        goto LABEL_12;
      }

      v10 = v26;
      v11 = strerror(v8);
      sub_10004565C("unable to find inode (id %llu): %d (%s)\n", v10, v9, v11);
      sub_100049C40(0x5D5, v9);
LABEL_14:
      v15 = 9;
      v16 = 8;
      if (sub_1000397B8(dword_10009A280, 0, 2, &v26, &v16, 8, &v25[1], &v15))
      {
        goto LABEL_15;
      }
    }

    v25[1] = *(v6 + 5);
    if ((*(v6 + 50) & 0x18) == 0)
    {
LABEL_12:
      LOBYTE(v25[2]) |= 1u;
    }

    sub_10003B12C(dword_10009A280, 0, &v26, 8, &v25[1], 9);
    goto LABEL_14;
  }

LABEL_15:
  v19 = 0;
  sub_10003B724(dword_10009A280, 0, &v19);
  if (v19)
  {
    LODWORD(v21) = 16;
    v20 = 0xE000000000000007;
    v7 = sub_10003FA04(v13, v14, 0, 1, &v20, 0x1Cu, sub_100023334);
  }

  else
  {
    v7 = 0;
  }

LABEL_19:
  free(v5);
  free(v6);
  sub_10001E44C(&unk_10009A218);
  sub_10003B928(dword_10009A280, 0);
  return v7;
}

uint64_t sub_100023240(unint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2 + a1 <= a1)
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  do
  {
    if (byte_10009A210 == 1)
    {
      sub_100045744("purgeable inode (id %llu) is missing a purgeable record\n", v5);
      sub_100049C40(0x5D2, -2);
      v6 = sub_100026C04(a3, v5, 0x80000);
      v7 = v6;
      if (v6)
      {
        v8 = strerror(v6);
        sub_10004565C("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", v5, v7, v8);
        sub_100049C40(0x5D3, v7);
      }
    }

    else
    {
      v7 = sub_100022CF0(v5);
      if (v7)
      {
        return v7;
      }
    }

    ++v5;
    --v4;
  }

  while (v4);
  return v7;
}

uint64_t sub_100023334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = -86;
  v18 = *(a1 + 20);
  v14 = 9;
  v15 = 8;
  v7 = sub_1000397B8(dword_10009A280, 0, 0, &v18, &v15, 8, &v16, &v14);
  if (v7 == 2)
  {
    return 0;
  }

  v8 = v7;
  if (v7)
  {
    v10 = *(a1 + 20);
    v11 = strerror(v7);
    sub_10004565C("failed to search purgeable record (file id %llu) in the fsck_apfs tree: %d (%s)\n", v10, v8, v11);
    v12 = 1489;
    goto LABEL_11;
  }

  if (v17)
  {
    sub_100045744("found an orphan purgeable record (atime %llu, file_id %llu)\n", *(a1 + 12), *(a1 + 20));
    sub_100049C40(0x5CD, -2);
    v8 = sub_1000234CC(a5, *(a1 + 20), *(a1 + 12));
    if (!v8)
    {
      return v8;
    }

    sub_10004565C("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", *(a1 + 20), *(a1 + 12));
    v12 = 1486;
LABEL_11:
    sub_100049C40(v12, v8);
    return v8;
  }

  v9 = *(a1 + 12);
  if (v16 != v9)
  {
    sub_100045744("purgeable record (atime %llu, file_id %llu) is different than inode atime (%llu)\n", v9, *(a1 + 20), v16);
    sub_100049C40(0x5CF, -2);
    v8 = sub_1000234CC(a5, *(a1 + 20), *(a1 + 12));
    if (!v8)
    {
      return v8;
    }

    sub_10004565C("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", *(a1 + 20), *(a1 + 12));
    v12 = 1488;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1000234CC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xE000000000000007;
  v5 = 16;
  v6 = a3;
  v7 = a2;
  if (a1)
  {
    return sub_100027D7C(a1, 7u, 0, 0, 0, &v4, 0x1Cu, 0, 0);
  }

  return sub_10002797C();
}

uint64_t sub_100023544(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1[2];
  v7 = *(v6 + 104);
  v8 = *(v6 + 96);
  LODWORD(v21) = 0;
  DWORD1(v21) = v7;
  *(&v21 + 1) = *(v6 + 72);
  v22 = *(v6 + 80);
  v23 = v8;
  v24 = 0;
  v9 = sub_1000236D8(a1, a2, &v21, a3);
  if (v9)
  {
    return v9;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  while (2)
  {
    if (v12)
    {
      free(v12);
      v24 = 0;
    }

    memset(v20, 170, sizeof(v20));
    v13 = sub_100025548(a1, 0, 0x80000000, v11, 0, 0, 18, 0, &v24, v20, 0);
    if (!v13)
    {
      v12 = v24;
      for (i = *(v24 + 13); i != -1; i = *(v24 + 10 * i + 16))
      {
        v15 = &v12[5 * i];
        v16 = *(v15 + 19);
        v17 = v15[12];
        LODWORD(v21) = 0;
        *(&v21 + 4) = *(v15 + 68);
        HIDWORD(v21) = v16;
        v22 = *(v15 + 5);
        v23 = v17;
        v18 = sub_1000236D8(a1, a2, &v21, v3);
        if (v18)
        {
          v9 = v18;
          goto LABEL_15;
        }

        v12 = v24;
      }

      v11 = v12[4];
      if (v11)
      {
        continue;
      }

      v9 = 0;
      goto LABEL_16;
    }

    break;
  }

  v9 = v13;
  v19 = strerror(v13);
  sub_10004565C("Could not read nx_reaper_list object (oid (0x%llx)): %s\n", v11, v19);
LABEL_15:
  v12 = v24;
  if (v24)
  {
LABEL_16:
    free(v12);
  }

  return v9;
}

uint64_t sub_1000236D8(uint64_t *a1, uint64_t a2, __int128 *a3, int a4)
{
  v31 = 0;
  memset(v30, 170, sizeof(v30));
  v9 = *(a3 + 1);
  v8 = *(a3 + 2);
  if ((v9 & 0x10) == 0 || v8 != 11)
  {
    goto LABEL_12;
  }

  v10 = *(a3 + 2);
  if (!byte_10009B0F8[0])
  {
    v15 = 0;
LABEL_11:
    ++byte_10009B0F8[0];
    *&byte_10009B0F8[8 * v15 + 8] = v10;
    goto LABEL_12;
  }

  if (qword_10009B100 != v10)
  {
    v11 = &qword_10009B108;
    v12 = 1;
    do
    {
      v13 = v12;
      if (byte_10009B0F8[0] == v12)
      {
        break;
      }

      v14 = *v11++;
      ++v12;
    }

    while (v14 != v10);
    v15 = byte_10009B0F8[0];
    if (v13 >= byte_10009B0F8[0])
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v16 = *(a3 + 3);
  if ((v9 & 0x1A) != 0 || v16 == 0)
  {
    goto LABEL_17;
  }

  v20 = v8 & 0xC0000000;
  if (a4 == 1)
  {
    if (v20)
    {
      goto LABEL_17;
    }

    v22 = a2 ? *(*(a2 + 40) + 8) : 0;
    if (v22 != *(a3 + 2))
    {
      goto LABEL_17;
    }

    v21 = (v8 & 0xFFFE) == 2;
  }

  else
  {
    v21 = 1;
    if (!a4 && !v20 && v8 != 13)
    {
      goto LABEL_17;
    }
  }

  v23 = sub_100025548(a1, a2, v8 & 0xC0000000, v16, 0, v8 & 0x3FFF0000, v8, 0, &v31, v30, 0);
  if (v23)
  {
    v18 = v23;
    sub_10004565C("failed to read object (oid (0x%llx)) being reaped from disk \n", *(a3 + 3));
    sub_100049C40(0x22A, v18);
    goto LABEL_18;
  }

  if (v21)
  {
    v24 = *(v31 + 12);
    if (v24 > 0xC)
    {
      if (v24 == 13)
      {
        v29 = a3[1];
        v34 = *a3;
        v35 = v29;
        v36 = *(a3 + 4);
        v26 = sub_100024580(a1, &v34, v31);
LABEL_44:
        v18 = v26;
        if (v26)
        {
          goto LABEL_18;
        }

        goto LABEL_45;
      }

      if (v24 == 25)
      {
        v27 = a3[1];
        v34 = *a3;
        v35 = v27;
        v36 = *(a3 + 4);
        v26 = sub_100024854(a1, &v34, v31);
        goto LABEL_44;
      }
    }

    else
    {
      if (v24 - 2 < 2)
      {
        v25 = a3[1];
        v34 = *a3;
        v35 = v25;
        v36 = *(a3 + 4);
        v32 = *v30;
        v33 = *&v30[16];
        v26 = sub_1000240B8(a1, a2, &v34, v31, &v32, a4);
        goto LABEL_44;
      }

      if (v24 == 11)
      {
        v28 = a3[1];
        v34 = *a3;
        v35 = v28;
        v36 = *(a3 + 4);
        v26 = sub_100024370(a1, &v34, v31);
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if (v20 == 0x40000000)
  {
    sub_1000422DC(a1, *v30, (*&v30[8] / *(a1[1] + 36)), *(a3 + 2), 0x40000000, *(a3 + 3), 0, *(v31 + 12), *(v31 + 7), 5u);
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 0;
  if (a4 == 1 && !v20)
  {
    sub_10001DD4C(*(a3 + 3), *(a3 + 2));
    goto LABEL_17;
  }

LABEL_18:
  if (v31)
  {
    free(v31);
  }

  return v18;
}

uint64_t sub_1000239E0(uint64_t *a1)
{
  v41 = 0;
  memset(v42, 170, sizeof(v42));
  v1 = a1[2];
  v2 = *(v1 + 32);
  if (*(v1 + 40) >= v2)
  {
    sub_10004565C("reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", *(v1 + 40), v2);
    v3 = 92;
    v4 = 96;
    goto LABEL_5;
  }

  if ((*(v1 + 64) & 1) == 0)
  {
    sub_10004565C("reaper needs more cowbell, flags 0x%x\n", *(v1 + 64));
    v3 = 92;
    v4 = 97;
    goto LABEL_5;
  }

  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  if ((v7 == 0) == (v6 != 0))
  {
    sub_10004565C("reaper head (0x%llx) and tail (0x%llx) should be both valid or both invalid\n", *(v1 + 48), v6);
    v3 = 92;
    v4 = 98;
    goto LABEL_5;
  }

  if (!v7)
  {
LABEL_65:
    v3 = sub_100023544(a1, 0, 0);
    goto LABEL_6;
  }

  v9 = 0;
  v10 = *(v1 + 68);
  while (1)
  {
    if (v9)
    {
      free(v9);
    }

    v11 = sub_100025548(a1, 0, 0x80000000, v7, 0, 0, 18, 0, &v41, v42, 0);
    if (v11)
    {
      v3 = v11;
      sub_10004565C("verification/reading of the nx_reaper object failed\n");
      goto LABEL_6;
    }

    v12 = v41[11];
    v13 = (LODWORD(v42[1]) - 64) / 0x28;
    if (v13 != v12)
    {
      sub_10004565C("reap list object 0x%llx max record count %u different than expected %lu\n", v7, v41[11], v13);
      v3 = 92;
      v4 = 642;
      goto LABEL_5;
    }

    if (v41[12] > v12)
    {
      sub_10004565C("reap list object 0x%llx record count %u larger than max %u\n", v7, v41[12], v12);
      v3 = 92;
      v4 = 99;
      goto LABEL_5;
    }

    v14 = v41[13];
    if (v14 != -1 && v14 > v12)
    {
      sub_10004565C("reap list object 0x%llx first index %u larger than max %u\n", v7, v41[13], v12);
      v3 = 92;
      v4 = 100;
      goto LABEL_5;
    }

    v16 = v41[14];
    if (v16 != -1 && v16 > v12)
    {
      sub_10004565C("reap list object 0x%llx last index %u larger than max %u\n", v7, v41[13], v12);
      v3 = 92;
      v4 = 101;
      goto LABEL_5;
    }

    v18 = v41[15];
    if (v18 != -1 && v18 > v12)
    {
      sub_10004565C("reap list object 0x%llx free index %u larger than max %u\n", v7, v41[15], v12);
      v3 = 92;
      v4 = 102;
      goto LABEL_5;
    }

    v20 = *(v41 + 4);
    v21 = *(v1 + 56);
    if (v20)
    {
      if (v21 == v7)
      {
        sub_10004565C("reap list tail 0x%llx is not last reap list object, next 0x%llx\n", v7, v20);
        v3 = 92;
        v4 = 104;
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    if (v21 != v7)
    {
      break;
    }

LABEL_33:
    if (*(v1 + 68))
    {
      --v10;
      if (v20 && !v10)
      {
        sub_10004565C("reap list expected %u objects, but haven't seen last reap list object yet\n", *(v1 + 68));
        v3 = 92;
        v4 = 105;
        goto LABEL_5;
      }

      if (!v20 && v10)
      {
        sub_10004565C("reap list expected %u objects, but got last reap list object with %u more objects left\n", *(v1 + 68), v10);
        v3 = 92;
        v4 = 106;
        goto LABEL_5;
      }
    }

    v40 = &v40;
    v22 = 2 * v12;
    __chkstk_darwin(v11);
    v23 = &v40 - ((v22 + 15) & 0x3FFFFFFF0);
    if (v24)
    {
      memset(&v40 - ((v22 + 15) & 0x3FFFFFFF0), 170, v22);
    }

    else
    {
      v22 = 0;
    }

    bzero(v23, v22);
    v25 = v41;
    v26 = v41[13];
    if (v26 != -1)
    {
      v27 = 0;
      while (1)
      {
        v28 = v25[11];
        if (v26 >= v28)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v26, v7, v28);
          v38 = 556;
          goto LABEL_75;
        }

        if (*&v23[2 * v26] == 1)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v26, v7);
          v38 = 643;
          goto LABEL_75;
        }

        *&v23[2 * v26] = 1;
        v29 = v25[10 * v26 + 17];
        if (v29 >= 0x20)
        {
          sub_100045744("reaper list entry (index (%u) list oid (0x%llx)) : invalid flags (0x%x) set\n", v26, v7, v29);
          sub_100049C40(0x22D, -3);
          v25 = v41;
        }

        v30 = &v25[10 * v26];
        v31 = v30[17];
        if ((v31 & 1) == 0)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : is not valid as per flags(0x%x)\n", v26, v7, v31);
          v38 = 572;
          goto LABEL_75;
        }

        v32 = *(v30 + 10);
        if ((v32 - 1) <= 0x3FE)
        {
          break;
        }

        ++v27;
        v26 = v30[16];
        if (v26 == -1)
        {
          goto LABEL_52;
        }
      }

      sub_100045744("reaper list entry (index (%u) list oid (0x%llx)) : invalid nrle_fs_oid (0x%llx)\n", v26, v7, v32);
      v38 = 558;
      v39 = -2;
      goto LABEL_76;
    }

    v27 = 0;
LABEL_52:
    if (v27 != v25[12])
    {
      sub_10004565C("reap list object (oid 0x%llx) expected %u entries, found %u\n", v7, v25[12], v27);
      v38 = 644;
      goto LABEL_75;
    }

    v33 = v25[15];
    v34 = v25[11];
    if (v33 != -1)
    {
      v35 = v25 + 16;
      while (1)
      {
        if (v33 >= v34)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v33, v7, v34);
          v38 = 645;
          goto LABEL_75;
        }

        v36 = *&v23[2 * v33];
        if (v36 == 2)
        {
          break;
        }

        if (v36 == 1)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : entry is both occupied and free!\n", v33, v7);
          v38 = 646;
          goto LABEL_75;
        }

        *&v23[2 * v33] = 2;
        v33 = v35[10 * v33];
        if (v33 == -1)
        {
          goto LABEL_61;
        }
      }

      sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v33, v7);
      v38 = 647;
LABEL_75:
      v39 = 92;
LABEL_76:
      sub_100049C40(v38, v39);
      v3 = 92;
      goto LABEL_6;
    }

    if (v34)
    {
LABEL_61:
      v37 = 0;
      while (*&v23[2 * v37])
      {
        if (v34 == ++v37)
        {
          goto LABEL_64;
        }
      }

      sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : entry is not referenced\n", v37, v7);
      v38 = 648;
      goto LABEL_75;
    }

LABEL_64:
    v9 = v41;
    v7 = *(v41 + 4);
    if (!v7)
    {
      goto LABEL_65;
    }
  }

  sub_10004565C("last reap list object 0x%llx doesn't match tail 0x%llx\n", v7, v21);
  v3 = 92;
  v4 = 103;
LABEL_5:
  sub_100049C40(v4, 92);
LABEL_6:
  if (v41)
  {
    free(v41);
  }

  return v3;
}

BOOL sub_100024058(uint64_t a1)
{
  if (!byte_10009B0F8[0])
  {
    return 0;
  }

  if (qword_10009B100 == a1)
  {
    return 1;
  }

  v2 = &qword_10009B108;
  v3 = 1;
  do
  {
    v4 = v3;
    if (byte_10009B0F8[0] == v3)
    {
      break;
    }

    v5 = *v2++;
    ++v3;
  }

  while (v5 != a1);
  return v4 < byte_10009B0F8[0];
}

uint64_t sub_1000240B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v41 = 0;
  v42 = 0;
  v6 = *(a4 + 32);
  if ((v6 & 2) != 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  if ((v6 & 8) == 0)
  {
    v36 = *(*(a1 + 8) + 36);
    v13 = *(a3 + 8);
    if (v6)
    {
      v19 = a4 + *(a5 + 8);
      v20 = *(v19 - 24);
      v43 = *(v19 - 40);
      v44 = v20;
      *&v45 = *(v19 - 8);
    }

    else
    {
      v14 = *(a4 + 28);
      if (v14 > 0x24 || ((0x87BF631FFuLL >> v14) & 1) != 0)
      {
        sub_100045744("object (oid (0%llx)) being reaped : Invalid tree subtype (%u)\n", v8, v14);
        sub_100049C40(0x233, -5);
        return 22;
      }

      if ((0x100001C000uLL >> v14))
      {
        v15 = 0;
      }

      else
      {
        v15 = dword_100076DC0[v14];
      }

      DWORD1(v43) = *(*(a1 + 8) + 36);
      DWORD2(v43) = v15;
    }

    if (*(a4 + 36))
    {
      v21 = 0;
      v22 = v13 & 0xC0000000;
      v40 = -21846;
      v39 = -21846;
      v23 = v13 & 0xC0000000 | 3;
      v25 = a6 == 1 && v22 == 0;
      v35 = v25;
      while (1)
      {
        sub_10003452C(a4, &v43, v21, &v42, &v40, &v41, &v39);
        if (v39 != 8)
        {
          break;
        }

        v26 = *v41;
        *(a3 + 24) = *v41;
        *(a3 + 8) = v23;
        if (*(a4 + 34) < 2u)
        {
          if (v22 == 0x40000000)
          {
            v29 = DWORD1(v43) / v36;
            v30 = *(*(a1 + 8) + 40);
            if (v30 <= v29 || v26 < 1 || v30 <= v26 || v30 - v29 < v26)
            {
              sub_10004565C("invalid btree node address range (0x%llx+%llu)\n", v26, DWORD1(v43) / v36);
              v16 = 92;
              v17 = 1238;
              goto LABEL_45;
            }

            sub_1000422DC(a1, v26, v29, *(a3 + 16), 0x40000000, v26, 0, 3, *(a4 + 28), 5u);
          }

          else if (v35)
          {
            sub_10001DD4C(v26, v22 | 3);
          }
        }

        else
        {
          v27 = *(a3 + 16);
          v37[0] = *a3;
          v37[1] = v27;
          v38 = *(a3 + 32);
          v28 = sub_1000236D8(a1, a2, v37, a6);
          if (v28)
          {
            return v28;
          }
        }

        v21 = (v21 + 1);
        if (v21 >= *(a4 + 36))
        {
          return 0;
        }
      }

      sub_10004565C("btree node (oid (0%llx)) being reaped has invalid val_len (%u) at index (%d) \n", v8, v39, v21);
      v16 = 92;
      v17 = 559;
LABEL_45:
      v18 = 92;
      goto LABEL_11;
    }

    return 0;
  }

  sub_10004565C("btree node (oid (0%llx)) being reaped is hashed\n", *(a3 + 24));
  v16 = 22;
  v17 = 916;
  v18 = 22;
LABEL_11:
  sub_100049C40(v17, v18);
  return v16;
}

uint64_t sub_100024370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[2] = v6;
  v31[3] = v6;
  v31[0] = v6;
  v31[1] = v6;
  v29[2] = v6;
  v29[3] = v6;
  v29[0] = v6;
  v29[1] = v6;
  v7 = *(a2 + 16);
  v25 = *a2;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  memset(v28, 170, sizeof(v28));
  v24[1] = 0;
  v24[2] = 0;
  v24[0] = a1;
  v26 = v7;
  v27 = *(a2 + 32);
  if (!*(a3 + 48))
  {
    goto LABEL_9;
  }

  v8 = sub_100039748(v31, a1, 0, *(a3 + 40) & 0xC0000000, *(a3 + 40), 11, 0, *(*(a1 + 8) + 36), 16, 16, 0, *(a3 + 48), sub_10001F078);
  if (!v8)
  {
    v28[2] = 0;
    v28[3] = 0;
    v13 = sub_100039F68(v29, v31, 0, &v28[2], 0x10u, 0x10u, v28, 16);
    if (v13 || (v13 = sub_10002C648(v29, sub_100024A10, v24, 0), v13))
    {
      v9 = v13;
      v14 = *(a3 + 48);
      v15 = strerror(v13);
      sub_10004565C("Could not iterate omap tree to read reaper objects (oid 0x%llx): %s\n", v14, v15);
      v12 = 567;
      goto LABEL_7;
    }

    *(a2 + 8) = *(a3 + 40);
    *(a2 + 12) = *(*(a1 + 8) + 36);
    *(a2 + 24) = *(a3 + 48);
    *(a2 + 32) = 0;
    v16 = *(a2 + 16);
    v21 = *a2;
    v22 = v16;
    v23 = 0;
    v17 = sub_1000236D8(a1, 0, &v21, 0);
    if (v17)
    {
      return v17;
    }

LABEL_9:
    v18 = *(a3 + 56);
    if (!v18)
    {
      return 0;
    }

    *(a2 + 8) = *(a3 + 44);
    *(a2 + 12) = *(*(a1 + 8) + 36);
    *(a2 + 24) = v18;
    *(a2 + 32) = 0;
    v19 = *(a2 + 16);
    v21 = *a2;
    v22 = v19;
    v23 = 0;
    v17 = sub_1000236D8(a1, 0, &v21, 0);
    if (!v17)
    {
      return 0;
    }

    return v17;
  }

  v9 = v8;
  v10 = *(a3 + 48);
  v11 = strerror(v8);
  sub_10004565C("Could not initialize omap tree (oid 0x%llx): %s\n", v10, v11);
  v12 = 566;
LABEL_7:
  sub_100049C40(v12, v9);
  return v9;
}

uint64_t sub_100024580(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  bzero(v27, 0x400uLL);
  v28 = a3;
  v6 = *(a3 + 152);
  if (!v6)
  {
LABEL_16:
    v19 = *(a3 + 144);
    v20 = *(a3 + 120);
    v21 = *(a2 + 1);
    v35 = *a2;
    v36 = v21;
    *&v37 = a2[4];
    v10 = sub_100024AF4(a1, v27, &v35, 0, v19, v20);
    if (!v10)
    {
      *(a2 + 2) = 1073741835;
      *(a2 + 3) = *(*(a1 + 8) + 36);
      a2[3] = *(a3 + 128);
      a2[4] = 0;
      v22 = *(a2 + 1);
      v35 = *a2;
      v36 = v22;
      *&v37 = 0;
      return sub_1000236D8(a1, 0, &v35, 0);
    }

    return v10;
  }

  v7 = *a2;
  v8 = a2[2];
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[2] = v9;
  v40[3] = v9;
  v40[0] = v9;
  v40[1] = v9;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v37 = v9;
  v38 = v9;
  v35 = v9;
  v36 = v9;
  v33[0] = a1;
  v33[1] = v27;
  v33[2] = 0;
  v33[3] = v7;
  v33[4] = a2[1];
  v33[5] = v8;
  v34 = *(a2 + 3);
  LODWORD(v10) = sub_100039748(v40, a1, v27, *(a3 + 124) & 0xC0000000, *(a3 + 124), 16, 0, *(*(a1 + 8) + 36), 0, 0, 0, v6, sub_10003F384);
  v11 = malloc_type_calloc(1uLL, 0x340uLL, 0xC893D30DuLL);
  v12 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xE7670BF5uLL);
  v13 = v12;
  if (!v10 && v11 && v12)
  {
    v14 = sub_100039F68(&v35, v40, 0, v11, 8u, 0x340u, v12, 3808);
    if (v14 || (v14 = sub_10002C648(&v35, sub_100024C90, v33, 0), v14))
    {
      v10 = v14;
      v15 = *(v28 + 152);
      v16 = strerror(v14);
      sub_10004565C("Could not iterate snap meta tree to read reaper objects (oid 0x%llx): %s\n", v15, v16);
      sub_100049C40(0x23A, v10);
    }

    else
    {
      v24 = *(v28 + 124);
      v25 = *(*(a1 + 8) + 36);
      v26 = *(v28 + 152);
      *&v29 = v7;
      *(&v29 + 1) = __PAIR64__(v25, v24);
      v30 = v8;
      v31 = v26;
      v32 = 0;
      v10 = sub_1000236D8(a1, 0, &v29, 0);
    }

LABEL_12:
    free(v11);
    goto LABEL_13;
  }

  if (v10)
  {
    v10 = v10;
  }

  else
  {
    v10 = 12;
  }

  v17 = *(v28 + 152);
  v18 = strerror(v10);
  sub_10004565C("Could not initialize snap meta tree (oid 0x%llx): %s\n", v17, v18);
  sub_100049C40(0x239, v10);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v13)
  {
    free(v13);
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  return v10;
}

uint64_t sub_100024854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v22 = *a2;
  v25 = 0;
  v26 = 0;
  v21[1] = 0;
  v21[2] = 0;
  v21[0] = a1;
  v23 = v3;
  v24 = *(a2 + 32);
  if ((*(a3 + 27) & 0x40) != 0)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29[2] = v8;
    v29[3] = v8;
    v29[0] = v8;
    v29[1] = v8;
    v27[2] = v8;
    v27[3] = v8;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    v27[0] = v8;
    v27[1] = v8;
    v9 = sub_100039748(v29, a1, 0, 0x40000000, 2, 26, 0, *(*(a1 + 8) + 36), 8, 8, 0, *(a3 + 32), sub_100030C88);
    if (v9)
    {
      v4 = v9;
      v10 = *(a3 + 32);
      v11 = strerror(v9);
      sub_10004565C("Could not initialize gbitmap tree (oid 0x%llx): %s\n", v10, v11);
      v12 = 553;
    }

    else
    {
      v13 = sub_100039F68(v27, v29, 0, &v26, 8u, 8u, &v25, 8);
      if (!v13)
      {
        v13 = sub_10002C648(v27, sub_100024E40, v21, 0);
        if (!v13)
        {
          v17 = *(*(a1 + 8) + 36);
          *(a2 + 8) = 0x40000000;
          *(a2 + 12) = v17;
          *(a2 + 24) = *(a3 + 32);
          v18 = *(a2 + 16);
          v19[0] = *a2;
          v19[1] = v18;
          v20 = *(a2 + 32);
          v4 = sub_1000236D8(a1, 0, v19, 0);
          if (v4)
          {
            return v4;
          }

          return 0;
        }
      }

      v4 = v13;
      v14 = *(a3 + 32);
      v15 = strerror(v13);
      sub_10004565C("Could not iterate gbitmap tree to read reaper objects (oid 0x%llx): %s\n", v14, v15);
      v12 = 571;
    }

    sub_100049C40(v12, v4);
    return v4;
  }

  return 0;
}

uint64_t sub_100024A10(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a3;
  if (*a3)
  {
    return 0;
  }

  v7 = *(*a5 + 8);
  v8 = *(v7 + 36);
  v9 = v8 + a3[1] - 1;
  v10 = v9 / v8;
  v11 = *(a3 + 1);
  v12 = *(v7 + 40);
  if (v12 - v10 >= v11 && v12 > v10 && v11 >= 1 && v12 > v11)
  {
    if ((v5 & 0xE0) == 0x20)
    {
      v16 = 36;
    }

    else
    {
      v16 = 14;
    }

    v17 = a5[5];
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 13;
    }

    if (v17)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    sub_1000422DC(*a5, v11, v10, v17, 0, *a1, a1[1], v18, v19, 5u);
    return 0;
  }

  sub_10004565C("omap entry (oid 0x%llx): invalid ov_range (0x%llx+%llu)\n", *a1, v11, v9 / v8);
  v20 = 92;
  sub_100049C40(0x4D7, 92);
  return v20;
}

uint64_t sub_100024AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[2] = v10;
  v31[3] = v10;
  v31[0] = v10;
  v31[1] = v10;
  v29[2] = v10;
  v29[3] = v10;
  v29[0] = v10;
  v29[1] = v10;
  v11 = *(a3 + 16);
  v24 = *a3;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  memset(v27, 170, 20);
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a4;
  v25 = v11;
  v26 = *(a3 + 32);
  v12 = sub_100039748(v31, a1, a2, a6 & 0xC0000000, a6, 15, 0, *(*(a1 + 8) + 36), 0, 0, 0, a5, sub_10003F384);
  if (v12)
  {
    v13 = v12;
    v14 = strerror(v12);
    sub_10004565C("Could not initialize extentref tree (oid 0x%llx): %s\n", a5, v14);
    v15 = 548;
  }

  else
  {
    v28 = 0;
    v16 = sub_100039F68(v29, v31, 0, &v28, 8u, 0x340u, v27, 20);
    if (!v16)
    {
      v16 = sub_10002C648(v29, sub_100024D88, v23, 0);
      if (!v16)
      {
        v19 = *(*(a1 + 8) + 36);
        *(a3 + 8) = a6;
        *(a3 + 12) = v19;
        *(a3 + 24) = a5;
        *(a3 + 32) = 0;
        v20 = *(a3 + 16);
        v21[0] = *a3;
        v21[1] = v20;
        v22 = 0;
        return sub_1000236D8(a1, 0, v21, 0);
      }
    }

    v13 = v16;
    v17 = strerror(v16);
    sub_10004565C("Could not iterate extentref tree to read reaper objects(oid 0x%llx): %s\n", a5, v17);
    v15 = 568;
  }

  sub_100049C40(v15, v13);
  return v13;
}

uint64_t sub_100024C90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 >> 60 != 1)
  {
    return 0;
  }

  v9 = *a5;
  v10 = a5[1];
  v11 = *a3;
  v12 = *(a3 + 40);
  v13 = *(a5 + 5);
  v21[0] = *(a5 + 3);
  v21[1] = v13;
  v22 = a5[7];
  v14 = sub_100024AF4(v9, v10, v21, v5 & 0xFFFFFFFFFFFFFFFLL, v11, v12);
  if (!v14)
  {
    v15 = *(a3 + 8);
    v16 = *(*(*a5 + 8) + 40);
    if (v16 - 1 < v15 || v16 < 2 || v15 < 1 || v16 <= v15)
    {
      sub_10004565C("invalid sblock_oid (%llu)\n", *(a3 + 8));
      v14 = 92;
      sub_100049C40(0x4D9, 92);
      return v14;
    }

    sub_1000422DC(*a5, v15, 1uLL, a5[5], 0x40000000, v15, *a1 & 0xFFFFFFFFFFFFFFFLL, 13, 0, 5u);
    return 0;
  }

  return v14;
}

uint64_t sub_100024D88(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a3;
  if (*a3 >> 60 != 1)
  {
    return 0;
  }

  v6 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v7 = v5 & 0xFFFFFFFFFFFFFFFLL;
  v8 = *(*(*a5 + 8) + 40);
  if (v8 - (v5 & 0xFFFFFFFFFFFFFFFLL) >= v6 && v8 > v7 && v6 != 0 && v8 > v6)
  {
    sub_1000422DC(*a5, v6, v7, a5[5], 0x40000000, v6, a5[2], 0, 0xFu, 6u);
    return 0;
  }

  sub_10004565C("invalid extent address range (0x%llx+%llu)\n", v6, v7);
  v12 = 92;
  sub_100049C40(0x4D8, 92);
  return v12;
}

uint64_t sub_100024E40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a3 & 0x7FFFFFFFFFFFFFFFLL;
  v6 = *(*(*a5 + 8) + 40);
  if (v6 - 1 >= v5 && v6 >= 2 && v5 != 0 && v6 > v5)
  {
    sub_1000422DC(*a5, v5, 1uLL, a5[5], 0x40000000, v5, 0, 27, 0, 5u);
    return 0;
  }

  else
  {
    sub_10004565C("invalid gbitmap block oid 0x%llx\n", *a3 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 92;
    sub_100049C40(0x4DA, 92);
  }

  return v10;
}

uint64_t sub_100024EE0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v10 = a7;
  v13 = *(a1[1] + 36);
  v48 = 0uLL;
  v49 = 0;
  if (a3 == 0x80000000)
  {
    v14 = sub_100031300(a1, a4, a6, a7, &v48);
    if (v14)
    {
      v15 = v14;
      v16 = sub_100025298(v10, v9);
      v17 = strerror(v15);
      sub_10004565C("(oid 0x%llx) %s: _xp_lookup_obj(0x%llx): %s\n", a4, v16, a4, v17);
      v18 = 341;
LABEL_10:
      v24 = v15;
LABEL_44:
      sub_100049C40(v18, v24);
      return v15;
    }

LABEL_40:
    if (DWORD2(v48) && (v40 = DWORD2(v48) / v13, !(DWORD2(v48) % v13)))
    {
      v43 = *(a1[1] + 40);
      if (v43 - v40 >= v48 && v43 > v40 && v48 >= 1 && v43 > v48)
      {
        v15 = 0;
        *a9 = v48;
        *(a9 + 16) = v49;
        return v15;
      }

      v47 = sub_100025298(v10, v9);
      sub_10004565C("(oid 0x%llx) %s: invalid object address (0x%llx)\n", a4, v47, v48);
      v15 = 92;
      v18 = 346;
    }

    else
    {
      v41 = sub_100025298(v10, v9);
      sub_10004565C("(oid 0x%llx) %s: invalid object size (0x%x)\n", a4, v41, DWORD2(v48));
      v15 = 92;
      v18 = 345;
    }

    v24 = 92;
    goto LABEL_44;
  }

  if (a3 == 0x40000000)
  {
    *&v48 = a4;
    DWORD2(v48) = v13;
    goto LABEL_40;
  }

  v21 = sub_10001F0D4(a1, a2, a4, a5, &v48);
  if (!v21)
  {
    v25 = WORD6(v48);
    if (HIDWORD(v48) >= 0x800)
    {
      v26 = sub_100025298(v10, v9);
      sub_100045744("(oid 0x%llx) %s: invalid ov_flags (0x%x)\n", a4, v26, HIDWORD(v48));
      sub_100049C40(0x1DF, -3);
      v25 = WORD6(v48);
    }

    if ((v25 & 4) == 0 && (v25 & 0xE0) != 0)
    {
      v27 = sub_100025298(v10, v9);
      sub_100045744("(oid 0x%llx) %s: invalid ov_flags (0x%x), crypto key index set for unencrypted object\n", a4, v27, HIDWORD(v48));
      sub_100049C40(0x481, -3);
      v25 = WORD6(v48);
    }

    if ((v25 & 4) == 0 && (v25 & 0x700) != 0)
    {
      v28 = sub_100025298(v10, v9);
      sub_100045744("(oid 0x%llx) %s: invalid ov_flags (0x%x), tweak type set for unencrypted object\n", a4, v28, HIDWORD(v48));
      sub_100049C40(0x4D0, -3);
    }

    if (!a2)
    {
      if ((BYTE12(v48) & 4) == 0)
      {
        goto LABEL_40;
      }

      v33 = sub_100025298(v10, v9);
      sub_100045744("(oid 0x%llx) %s: invalid encryption type ov_flags (0x%x)\n", a4, v33, HIDWORD(v48));
      v34 = 480;
      goto LABEL_39;
    }

    v29 = *(a2 + 40);
    v30 = *(v29 + 264);
    if ((BYTE12(v48) & 4) != 0)
    {
      if ((v30 & 1) != 0 && !*(v29 + 976))
      {
        v31 = 854;
        v32 = "(oid 0x%llx) %s: should not be encrypted (ov_flags 0x%x)\n";
        goto LABEL_29;
      }
    }

    else if ((v30 & 1) == 0 && !*(v29 + 976))
    {
      v31 = 855;
      v32 = "(oid 0x%llx) %s: should be encrypted (ov_flags 0x%x)\n";
LABEL_29:
      v35 = sub_100025298(v10, v9);
      sub_100045744(v32, a4, v35, HIDWORD(v48));
      sub_100049C40(v31, -3);
    }

    if ((BYTE12(v48) & 4) == 0)
    {
      goto LABEL_40;
    }

    v36 = BYTE12(v48) >> 5;
    v37 = (v9 & 0xFFFFFFFE) != 0x24 || *(*(a2 + 40) + 1096) == 0;
    v38 = !v37;
    if (v36 == v38)
    {
      goto LABEL_40;
    }

    v39 = sub_100025298(v10, v9);
    sub_100045744("(oid 0x%llx) %s: invalid crypto key index (%u) given obj_subtype\n", a4, v39, v36);
    v34 = 1201;
LABEL_39:
    sub_100049C40(v34, -3);
    goto LABEL_40;
  }

  v15 = v21;
  if (v10 != 29 || v21 != 2)
  {
    v22 = sub_100025298(v10, v9);
    v23 = strerror(v15);
    sub_10004565C("(oid 0x%llx) %s: _omap_lookup_obj(0x%llx, 0x%llx): %s\n", a4, v22, a4, a5, v23);
    v18 = 344;
    goto LABEL_10;
  }

  return v15;
}

const char *sub_100025298(int a1, int a2)
{
  v2 = "nx";
  switch(a1)
  {
    case 1:
      return v2;
    case 2:
    case 3:
      if (a2 > 18)
      {
        if (a2 <= 32)
        {
          if (a2 == 19)
          {
            v3 = "oms: ";
            goto LABEL_42;
          }

          if (a2 == 26)
          {
            v3 = "gbitmap: ";
            goto LABEL_42;
          }
        }

        else
        {
          switch(a2)
          {
            case '!':
              v3 = "evict_mapping_tree: ";
              goto LABEL_42;
            case '$':
              v3 = "apfs_sec_root: ";
              goto LABEL_42;
            case '%':
              v3 = "clonegroup_tree: ";
              goto LABEL_42;
          }
        }
      }

      else if (a2 <= 13)
      {
        if (a2 == 10)
        {
          v3 = "extent_list: ";
          goto LABEL_42;
        }

        if (a2 == 11)
        {
          v3 = "om: ";
          goto LABEL_42;
        }
      }

      else
      {
        switch(a2)
        {
          case 14:
            v3 = "apfs_root: ";
            goto LABEL_42;
          case 15:
            v3 = "apfs_extentref: ";
            goto LABEL_42;
          case 16:
            v3 = "apfs_snap_meta: ";
            goto LABEL_42;
        }
      }

      v3 = &byte_10005C3F3;
LABEL_42:
      v4 = "btn";
      if (a1 == 2)
      {
        v4 = "bt";
      }

      v2 = byte_10009A2C0;
      snprintf(byte_10009A2C0, 0x28uLL, "%s%s", v3, v4);
      return v2;
    case 5:
      return "sm";
    case 6:
      return "cab";
    case 7:
      return "cib";
    case 8:
      return "sm_ip";
    case 11:
      return "om";
    case 12:
      return "cpm";
    case 13:
      return "apfs";
    case 15:
      return "extent";
    case 17:
      return "nr";
    case 18:
      return "nrl";
    case 20:
      return "efi_jumpstart";
    case 24:
      return "er_state";
    case 25:
      return "gbitmap";
    case 27:
      return "gbitmap_blk";
    case 29:
      return "snap_meta_ext";
    default:
      return "?";
  }
}

uint64_t sub_100025548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int **a9, uint64_t a10, char a11)
{
  if (a9)
  {
    return sub_10002558C(a1, a2, a3, a4, a5, a6, a7, a8, 0, a9, a10, a11);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10002558C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int **a10, uint64_t a11, char a12)
{
  v12 = a7;
  v13 = a6;
  v15 = a4;
  v17 = a2;
  v192 = a8;
  v18 = *(a1[1] + 36);
  v193 = 0uLL;
  v194 = 0;
  if (a9 && a10)
  {
    v191 = a3;
    v193 = *(a9 + 144);
    v19 = *(a9 + 168);
    v194 = *(a9 + 160);
    if (v19)
    {
      v181 = a5;
      *(a9 + 168) = 0;
      goto LABEL_7;
    }

    v38 = sub_100025298(a7, a8);
    sub_10004565C("(oid 0x%llx) %s: object read was finished already\n", v15, v38);
    v23 = 37;
    v39 = 1558;
    v40 = 37;
LABEL_34:
    sub_100049C40(v39, v40);
    return v23;
  }

  v20 = a1;
  v21 = sub_100024EE0(a1, a2, a3, a4, a5, a6, a7, a8, &v193);
  v22 = a5;
  v23 = v21;
  if (v21)
  {
    return v23;
  }

  v181 = v22;
  v191 = a3;
  v24 = DWORD2(v193);
  v19 = malloc_type_malloc(DWORD2(v193), 0xDA49114EuLL);
  a1 = v20;
  if (!v19)
  {
    v45 = sub_100025298(v12, v192);
    sub_10004565C("(oid 0x%llx) %s: malloc(%u)\n", v15, v45, v24);
    v23 = 12;
    v39 = 347;
    v40 = 12;
    goto LABEL_34;
  }

LABEL_7:
  v190 = a1;
  v25 = v194;
  v26 = HIDWORD(v193);
  v27 = *a1;
  if ((BYTE12(v193) & 4) == 0)
  {
    v28 = 0;
    v29 = 0;
    goto LABEL_24;
  }

  if ((WORD6(v193) & 0x700) == 0x100)
  {
    v28 = v15 ^ HIDWORD(v194) | v15 & 0xFFFFFFFF00000000 ^ (v194 << 32);
  }

  else
  {
    v28 = 0;
  }

  if ((WORD6(v193) & 0x700) == 0x100)
  {
    v29 = 4;
  }

  else
  {
    v29 = 0;
  }

  if (!v17)
  {
LABEL_24:
    v31 = 0;
    if (a9)
    {
      goto LABEL_25;
    }

LABEL_22:
    v185 = DWORD2(v193);
    v182 = v193;
    v32 = sub_10002F454(v27, v193, DWORD2(v193) / v18, v19, v31, 0, 0, v28, v29);
    if (v32)
    {
      v23 = v32;
      v35 = "dev_read";
      v36 = v182;
LABEL_31:
      v43 = sub_100025298(v12, v192);
      v44 = strerror(v23);
      sub_10004565C("(oid 0x%llx) %s: %s(%llu, %u): %s\n", v15, v43, v35, v36, v185 / v18, v44);
      sub_100049C40(0x15C, v23);
LABEL_32:
      free(v19);
      return v23;
    }

    if (a10)
    {
      goto LABEL_38;
    }

LABEL_43:
    v23 = 0;
    *(a9 + 144) = v193;
    *(a9 + 160) = v194;
    *(a9 + 168) = v19;
    return v23;
  }

  v30 = *(v17 + 8 * (BYTE12(v193) >> 5) + 24);
  if (v30)
  {
    v31 = v17 + 96 * (BYTE12(v193) >> 5) + 832;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v27 = *(v17 + 8 * (BYTE12(v193) >> 5) + 24);
  }

  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (!a10)
  {
    v185 = DWORD2(v193);
    v41 = v193;
    v42 = sub_10002F454(v27, v193, DWORD2(v193) / v18, v19, v31, 1, a9, v28, v29);
    if (v42)
    {
      v23 = v42;
      v35 = "dev_read_async";
      v36 = v41;
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  v37 = sub_10002F4A0(v27);
  v36 = v193;
  v185 = DWORD2(v193);
  if (v37)
  {
    v23 = v37;
    v35 = "dev_read_finish";
    goto LABEL_31;
  }

  v182 = v193;
LABEL_38:
  if (v17)
  {
    v47 = *(v17 + 40);
    v48 = (*(v47 + 264) & 1) == 0;
    v49 = *(v47 + 976) == 0;
    if (*(v47 + 976))
    {
      v48 = 1;
    }

    v178 = *(v47 + 1096) != 0;
    v179 = v48;
    if ((v13 & 0x20000000) != 0)
    {
      goto LABEL_245;
    }
  }

  else
  {
    v178 = 0;
    v179 = 0;
    v49 = 1;
    if ((v13 & 0x20000000) != 0)
    {
      goto LABEL_245;
    }
  }

  v165 = v49;
  v169 = 0;
  v50 = 0;
  v186 = 0;
  v175 = 0;
  v177 = (v26 & 4) != 0;
  v51 = v13 | ((v26 & 4) << 26);
  v188 = v26;
  v184 = v26 >> 5;
  v52 = v12 | v191;
  v172 = v17 + 24;
  v171 = v17 + 832;
  v164 = v192 & 0xFFFFFFFE;
  v53 = v185;
  v54 = 8 * v185;
  v55 = v185 - 8;
  v173 = v15 ^ HIDWORD(v25) | v15 & 0xFFFFFFFF00000000 ^ (v25 << 32);
  v176 = v17;
  v170 = v25;
  v166 = v12 | v191;
LABEL_46:
  v180 = v51;
  v174 = v52 | v51;
  while (1)
  {
    v57 = sub_10003ED88(v19, (v19 + 1), v185 - 8, 0, v33, v34);
    if (v57)
    {
      v58 = sub_100025298(v12, v192);
      sub_100045744("(oid 0x%llx) %s: invalid o_cksum (0x%llx)\n", v15, v58, *v19);
      sub_100049C40(0x15E, 92);
    }

    if (sub_1000082B8(v19, 0, 8 * v185, v56))
    {
      v122 = sub_100025298(v12, v192);
      sub_10004565C("(oid 0x%llx) %s: found zeroed-out block\n", v15, v122);
      v23 = 92;
      v123 = 845;
      v124 = 92;
LABEL_244:
      sub_100049C40(v123, v124);
      goto LABEL_254;
    }

    v61 = v19[1];
    if (v61 == v15)
    {
      v62 = 0;
      v63 = v186;
    }

    else
    {
      v64 = v186;
      if (!v57)
      {
        v65 = sub_100025298(v12, v192);
        sub_10004565C("(oid 0x%llx) %s: invalid o_oid (0x%llx)\n", v15, v65, v19[1]);
        sub_100049C40(0x15F, 92);
        v64 = v186;
        v61 = v19[1];
      }

      *v59.i8 = vcnt_s8((v61 ^ v15));
      v59.i16[0] = vaddlv_u8(*v59.i8);
      v63 = v64 + v59.i32[0];
      v62 = 92;
    }

    v183 = v50;
    v66 = v19[2];
    if (v66)
    {
      v67 = *(v190[1] + 16);
      if (v66 <= v67)
      {
        v23 = v62;
      }

      else
      {
        v23 = 92;
      }

      if (!v57 && v66 > v67)
      {
LABEL_64:
        v68 = v63;
        v69 = sub_100025298(v12, v192);
        sub_10004565C("(oid 0x%llx) %s: invalid o_xid (0x%llx)\n", v15, v69, v19[2]);
        v23 = 92;
        sub_100049C40(0x160, 92);
        v63 = v68;
        v54 = 8 * v185;
      }
    }

    else
    {
      if (!v57)
      {
        goto LABEL_64;
      }

      v23 = 92;
    }

    if (v25)
    {
      v70 = v19[2];
      if (v70 != v25)
      {
        if (!v57)
        {
          v71 = v63;
          v72 = sub_100025298(v12, v192);
          sub_10004565C("(oid 0x%llx) %s: invalid o_xid (0x%llx, expected 0x%llx)\n", v15, v72, v19[2], v25);
          sub_100049C40(0x371, 92);
          v63 = v71;
          v70 = v19[2];
        }

        *v59.i8 = vcnt_s8((v70 ^ v25));
        v59.i16[0] = vaddlv_u8(*v59.i8);
        v63 += v59.i32[0];
        v23 = 92;
      }
    }

    if (v12)
    {
      v73 = *(v19 + 12);
      if (v73 != v12)
      {
        if (!v57)
        {
          v74 = v63;
          v75 = sub_100025298(v12, v192);
          sub_10004565C("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v15, v75, *(v19 + 6), v174);
          sub_100049C40(0x161, 92);
          v63 = v74;
          v73 = *(v19 + 12);
        }

        v59.i32[0] = v73 ^ v12;
        *v59.i8 = vcnt_s8(*v59.i8);
        v59.i16[0] = vaddlv_u8(*v59.i8);
        v63 += v59.i32[0];
        v23 = 92;
      }
    }

    if (v192)
    {
      v76 = *(v19 + 7);
      if (v76 != v192)
      {
        if (v57)
        {
          v59.i32[0] = *(v19 + 7) ^ v192;
          *v59.i8 = vcnt_s8(*v59.i8);
          v59.i16[0] = vaddlv_u8(*v59.i8);
          v63 += v59.i32[0];
          v77 = *(v19 + 6);
          if ((v77 & 0xC0000000) == v191)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        v187 = v63;
        if (v192 != 33 || v76)
        {
          v79 = sub_100025298(v12, v192);
          sub_10004565C("(oid 0x%llx) %s: invalid o_subtype (0x%x, expected 0x%x)\n", v15, v79, *(v19 + 7), v192);
          v23 = 92;
          sub_100049C40(0x164, 92);
          v59.i32[0] = *(v19 + 14) ^ v192;
          *v59.i8 = vcnt_s8(*v59.i8);
          v59.i16[0] = vaddlv_u8(*v59.i8);
          v63 = v59.i32[0] + v187;
        }

        else
        {
          v78 = sub_100025298(v12, 33);
          sub_100045744("(oid 0x%llx) %s: using old subtype (0x%x, expected 0x%x)\n", v15, v78, *(v19 + 7), 33);
          if (!v23)
          {
            v175 |= sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) subtype? ", v15) != 0;
          }

          v63 = v187;
        }

        v54 = 8 * v185;
      }
    }

    v77 = *(v19 + 6);
    if ((v77 & 0xC0000000) == v191)
    {
      goto LABEL_92;
    }

    if (!v57)
    {
      v80 = v63;
      v81 = sub_100025298(v12, v192);
      sub_10004565C("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v15, v81, *(v19 + 6), v174);
      sub_100049C40(0x162, 92);
      v63 = v80;
      v77 = *(v19 + 6);
    }

LABEL_90:
    v59.i32[0] = *(v19 + 7) & 0xC0000000 ^ v191;
    *v59.i8 = vcnt_s8(*v59.i8);
    v59.i16[0] = vaddlv_u8(*v59.i8);
    v63 += v59.i32[0];
LABEL_91:
    v23 = 92;
LABEL_92:
    v82 = v180;
    v83 = v77 & 0x3FFF0000;
    if (v83 != v180)
    {
      if (v57 && v23)
      {
        goto LABEL_97;
      }

      v84 = v63;
      v85 = sub_100025298(v12, v192);
      sub_10004565C("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v15, v85, *(v19 + 6), v174);
      sub_100049C40(0x163, 92);
      if (v23)
      {
        v83 = v19[3] & 0x3FFF0000;
        v82 = v180;
        v63 = v84;
        v54 = 8 * v185;
LABEL_97:
        v59.i32[0] = v83 ^ v82;
        *v59.i8 = vcnt_s8(*v59.i8);
        v59.i16[0] = vaddlv_u8(*v59.i8);
        v63 += v59.i32[0];
        goto LABEL_98;
      }

      v107 = sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) flags? ", v15);
      v175 |= v107 != 0;
      if (v107)
      {
        v23 = 0;
      }

      else
      {
        v23 = 92;
      }

      v63 = v84;
      v54 = 8 * v185;
    }

LABEL_98:
    v186 = v63;
    if (v192 && v12 && v63 == 1)
    {
      v86 = sub_100025298(v12, v192);
      sub_10004565C("(oid 0x%llx) %s: found a bit flip in the header\n", v15, v86);
      sub_100049C40(0x3E9, 92);
      v87 = sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) header bit flip? ", v15);
      v88 = v188;
      if (v87)
      {
        v19[1] = v15;
        if (v25)
        {
          v19[2] = v25;
          v17 = v176;
          if (v57)
          {
LABEL_178:
            if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) checksum? ", v15))
            {
              v23 = 92;
              goto LABEL_254;
            }
          }

          LOBYTE(v175) = 1;
          goto LABEL_180;
        }

        v23 = 0;
        v175 = 1;
      }

      goto LABEL_104;
    }

    if (!v57)
    {
      break;
    }

    if (v63)
    {
      v89 = 1005;
      goto LABEL_110;
    }

    v195 = 0;
    if (!v53)
    {
      v89 = 1004;
      goto LABEL_110;
    }

    v163 = v57;
    v167 = v12;
    v168 = v15;
    v97 = v55;
    v98 = v54;
    v99 = 0;
    v100 = 0;
    LODWORD(v101) = -1431655766;
    do
    {
      v102 = v99 >> 3;
      v103 = 1 << (v99 & 7);
      *(v19 + v102) ^= v103;
      v104 = *v19;
      sub_10003ED18(&v195, (v19 + 1), v97, 0, v59, v60);
      if (v104 == *&v195)
      {
        v101 = v99;
      }

      else
      {
        v101 = v101;
      }

      if (v104 == *&v195)
      {
        ++v100;
      }

      *(v19 + v102) ^= v103;
      ++v99;
    }

    while (v98 != v99);
    if (!v100)
    {
      v89 = 1004;
      v15 = v168;
      v23 = v23;
      v12 = v167;
      v17 = v176;
      v54 = 8 * v185;
      v25 = v170;
      v53 = v185;
      v55 = v97;
      goto LABEL_110;
    }

    v15 = v168;
    v23 = v23;
    v12 = v167;
    v54 = 8 * v185;
    v55 = v97;
    if (v100 != 1)
    {
      v108 = sub_100025298(v167, v192);
      sub_10004565C("(oid 0x%llx) %s: could not repair object to match checksum: too many bit flip candidates (%d)\n", v168, v108, v100);
      v89 = 1003;
      v17 = v176;
      v25 = v170;
      v53 = v185;
LABEL_110:
      sub_100049C40(v89, 92);
      v88 = v188;
      if (!v23)
      {
        goto LABEL_178;
      }

      goto LABEL_111;
    }

    v105 = sub_100025298(v167, v192);
    sub_10004565C("(oid 0x%llx) %s: found a bit flip at index 0x%x\n", v168, v105, v101);
    v23 = 92;
    sub_100049C40(0x3EA, 92);
    v106 = sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) bit flip? ", v168);
    v25 = v170;
    v88 = v188;
    v53 = v185;
    v57 = v163;
    if (v106)
    {
      LOBYTE(v175) = 1;
      *(v19 + (v101 >> 3)) ^= 1 << (v101 & 7);
      v17 = v176;
LABEL_180:
      v125 = v184;
      goto LABEL_181;
    }

LABEL_104:
    v17 = v176;
    if (!v57)
    {
      break;
    }

    if (!v23)
    {
      goto LABEL_178;
    }

LABEL_111:
    v90 = v184;
    if ((v179 & ~v183 & v177 & 1) == 0 || v184 != 1 && !v178)
    {
      if ((v169 & 1) != 0 || ((v179 | v177) & 1) == 0)
      {
        goto LABEL_254;
      }

      if ((v88 & 4) != 0)
      {
        v114 = v88 & 0xFFFFFF1B;
      }

      else
      {
        v109 = v164 == 36;
        v110 = *(*(v17 + 40) + 1096) != 0;
        v111 = (v109 & v110) == 0;
        v112 = (v109 & v110) != 0 ? 256 : v110 << 8;
        v113 = v111 ? 0 : 32;
        v90 = v113 >> 5;
        v114 = v88 & 0xFFFFF81F | v112 | v113 | 4;
      }

      v115 = v190;
      v116 = *v190;
      v188 = v114;
      if ((v114 & 4) != 0)
      {
        v118 = 4 * ((v114 & 0x700) == 256);
        v119 = (v114 & 0x700) == 0x100 ? v173 : 0;
        if (v17)
        {
          if (*(v172 + 8 * (v114 >> 5)))
          {
            v116 = *(v172 + 8 * (v114 >> 5));
            v117 = v171 + 96 * (v114 >> 5);
          }

          else
          {
            v117 = 0;
          }

          v115 = v190;
        }

        else
        {
          v117 = 0;
        }
      }

      else
      {
        v117 = 0;
        v118 = 0;
        v119 = 0;
      }

      if (sub_10002F454(v116, v182, v53 / *(v115[1] + 36), v19, v117, 0, 0, v119, v118))
      {
        goto LABEL_254;
      }

      v184 = v90;
      v51 = v180 ^ 0x10000000;
      v120 = "unencrypted";
      if (v177)
      {
        v121 = "encrypted";
      }

      else
      {
        v121 = "unencrypted";
      }

      if ((v177 & 1) == 0)
      {
        v120 = "encrypted";
      }

      sub_100045744("failed to validate %s object, retrying as %s\n", v121, v120);
      v169 = 1;
      v177 ^= 1u;
      v53 = v185;
      v25 = v170;
      v50 = v183;
      v52 = v166;
      goto LABEL_46;
    }

    v91 = v184 ^ 1;
    v92 = v190;
    v93 = *v190;
    if ((v88 & 4) != 0)
    {
      v95 = 4 * ((v88 & 0x700) == 256);
      if ((v88 & 0x700) == 0x100)
      {
        v96 = v173;
      }

      else
      {
        v96 = 0;
      }

      if (v17)
      {
        if (*(v172 + 8 * (v91 & 7)))
        {
          v93 = *(v172 + 8 * (v91 & 7));
          v94 = v171 + 96 * (v91 & 7);
        }

        else
        {
          v94 = 0;
        }

        v92 = v190;
      }

      else
      {
        v94 = 0;
      }
    }

    else
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
    }

    if (sub_10002F454(v93, v182, v53 / *(v92[1] + 36), v19, v94, 0, 0, v96, v95))
    {
      goto LABEL_254;
    }

    v188 = v188 & 0xFFFFFF1F | (32 * (v91 & 7));
    v184 = v184 ^ 1;
    sub_100045744("failed to validate object with crypto key index (%u), retrying with (%u)\n", v91 ^ 1, v91);
    v50 = 1;
  }

  v125 = v184;
  if (v23)
  {
    goto LABEL_254;
  }

LABEL_181:
  if (v17)
  {
    v126 = (v191 | *(*(v17 + 40) + 264) & 1) == 0;
  }

  else
  {
    v126 = 0;
  }

  v127 = v188;
  v128 = v169;
  v129 = v192;
  if (!v192)
  {
    v129 = *(v19 + 7);
  }

  v130 = v180;
  v131 = v17 && (v129 & 0xFFFFFFFE) == 0x24 && *(*(v17 + 40) + 1096);
  if (((v169 | v183) & 1) == 0)
  {
    if (v165)
    {
      v134 = v125 != v131;
      if (v125 != v131)
      {
        v135 = sub_100025298(v12, v192);
        sub_100045744("(oid 0x%llx) %s: invalid crypto key index (%u), expected (%u)\n", v15, v135, v125, v131);
        v23 = 92;
        sub_100049C40(0x4B4, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) crypto key index? ", v15))
        {
          goto LABEL_254;
        }

        v127 = (v188 & 0xFFFFFF1F | (32 * (v125 & 7))) ^ 0x20;
        LOBYTE(v175) = 1;
        v130 = v180;
      }

      v133 = v170;
      if ((v177 & 1) != v126)
      {
        v136 = v127;
        v137 = sub_100025298(v12, v192);
        v138 = "unencrypted";
        if (v177)
        {
          v139 = "encrypted";
        }

        else
        {
          v139 = "unencrypted";
        }

        if (v126)
        {
          v138 = "encrypted";
        }

        sub_100045744("(oid 0x%llx) %s: object is %s but should be %s\n", v15, v137, v139, v138);
        sub_100049C40(0x374, -3);
        if (sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) encryption and omap flags? ", v15))
        {
          v140 = v182;
          if ((v136 & 4) != 0)
          {
            v127 = v136 & 0xFFFFFF1B;
          }

          else
          {
            v141 = *(*(v17 + 40) + 1096) != 0;
            if (v141 && v164 == 36)
            {
              v142 = 32;
            }

            else
            {
              v142 = 32 * v141;
            }

            v127 = v136 & 0xFFFFFF1F | v142 | 4;
          }

          v134 = 1;
          v53 = v185;
LABEL_272:
          v130 = v180 ^ 0x10000000;
          LOBYTE(v175) = 1;
          goto LABEL_233;
        }

        v140 = v182;
        v127 = v136;
        v53 = v185;
        goto LABEL_267;
      }
    }

    else
    {
      v134 = 0;
      v133 = v170;
    }

LABEL_232:
    v140 = v182;
LABEL_233:
    v149 = v12;
    if (!v12)
    {
      v149 = *(v19 + 12);
    }

    v150 = v192;
    if (!v192)
    {
      v150 = *(v19 + 7);
    }

    if (v175)
    {
      *(v19 + 6) = v130 | v149 | v191;
      *(v19 + 7) = v150;
      v195 = v140;
      v196 = v53;
      v197 = v127;
      v198 = v133;
      v151 = v127;
      v152 = sub_100026A10(v190, v17, v19, &v195, v59, v60);
      v127 = v151;
      if (v152)
      {
        v23 = v152;
        v153 = strerror(v152);
        sub_10004565C("error writing object: %s\n", v153);
        v123 = 880;
LABEL_243:
        v124 = v23;
        goto LABEL_244;
      }
    }

    if (v134)
    {
      v154 = v19[1];
      v155 = v19[2];
      v195 = v140;
      v196 = v185;
      v197 = v127;
      v198 = v133;
      v156 = sub_10001F1AC(v190, v17, v154, v155, &v195);
      if (v156)
      {
        v23 = v156;
        v157 = strerror(v156);
        sub_10004565C("error updating omap entry: %s\n", v157);
        v123 = 885;
        goto LABEL_243;
      }
    }

LABEL_245:
    v23 = 0;
    if (v191 && a12)
    {
      if ((v12 - 6) >= 3)
      {
        v158 = 1;
      }

      else
      {
        v158 = 9;
      }

      if (v17)
      {
        v159 = *(*(v17 + 40) + 8);
      }

      else
      {
        v159 = 0;
      }

      sub_1000422DC(v190, v193, (DWORD2(v193) / *(v190[1] + 36)), v159, v191, v15, v181, v12, v192, v158);
      v23 = 0;
    }

    goto LABEL_254;
  }

  if (v183)
  {
    if (v125 == v131)
    {
      v132 = sub_100025298(v12, v192);
      sub_10004565C("(oid 0x%llx) %s: object is encrypted with crypto key index (%u)but omap says it's encrypted with crypto key index (%u)\n", v15, v132, v125, v125 ^ 1);
      v23 = 92;
      sub_100049C40(0x4B3, 92);
      v133 = v170;
      if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) omap flags? ", v15))
      {
        goto LABEL_254;
      }

      v134 = 1;
      v127 = v188;
    }

    else
    {
      v143 = sub_100025298(v12, v192);
      sub_10004565C("(oid 0x%llx) %s: object is encrypted with crypto key index (%u) but should be encrypted with crypto key index (%u)\n", v15, v143, v125, v131);
      v23 = 92;
      sub_100049C40(0x4B2, 92);
      if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) crypto key index? ", v15))
      {
        goto LABEL_254;
      }

      v134 = 0;
      v127 = (v188 & 0xFFFFFF1F | (32 * (v125 & 7))) ^ 0x20;
      LOBYTE(v175) = 1;
      v133 = v170;
    }

    v130 = v180;
    v128 = v169;
  }

  else
  {
    v134 = 0;
    v133 = v170;
  }

  if ((v128 & 1) == 0)
  {
    goto LABEL_232;
  }

  v189 = v127;
  v144 = sub_100025298(v12, v192);
  if (v177)
  {
    v145 = "encrypted";
  }

  else
  {
    v145 = "unencrypted";
  }

  if ((v177 & 1) == v126)
  {
    if (v177)
    {
      v162 = "unencrypted";
    }

    else
    {
      v162 = "encrypted";
    }

    sub_10004565C("(oid 0x%llx) %s: object is %s but omap says it's %s\n", v15, v144, v145, v162);
    v23 = 92;
    sub_100049C40(0x373, 92);
    v140 = v182;
    if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) omap flags? ", v15))
    {
      goto LABEL_254;
    }

    v134 = 1;
    v127 = v189;
LABEL_267:
    v130 = v180;
    goto LABEL_233;
  }

  if (v126)
  {
    v146 = "encrypted";
  }

  else
  {
    v146 = "unencrypted";
  }

  sub_10004565C("(oid 0x%llx) %s: object is %s but should be %s\n", v15, v144, v145, v146);
  v23 = 92;
  sub_100049C40(0x372, 92);
  if (sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) encryption? ", v15))
  {
    if ((v189 & 4) != 0)
    {
      v127 = v189 & 0xFFFFFF1B;
    }

    else
    {
      v147 = *(*(v17 + 40) + 1096) != 0;
      if (v147 && v164 == 36)
      {
        v148 = 32;
      }

      else
      {
        v148 = 32 * v147;
      }

      v127 = v189 & 0xFFFFFF1F | v148 | 4;
    }

    v140 = v182;
    goto LABEL_272;
  }

LABEL_254:
  if ((v12 - 4) > 0xFFFFFFFD || v23 | v191)
  {
    if (!v23)
    {
      goto LABEL_259;
    }

    goto LABEL_32;
  }

  v160 = sub_10001DC68(v17 != 0, v15, 1);
  if (v160)
  {
    v161 = v160;
    sub_100045744("object (oid 0x%llx): Unable to mark omap entry in use for omap space verification \n", v15);
    sub_100049C40(0x3D4, v161);
  }

LABEL_259:
  *a10 = v19;
  v23 = 0;
  if (a11)
  {
    *a11 = v193;
    *(a11 + 16) = v194;
  }

  return v23;
}

uint64_t sub_10002692C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    return sub_10002558C(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100026968(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int **a10, uint64_t a11, char a12)
{
  if (a9)
  {
    v12 = a10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 22;
  }

  else
  {
    return sub_10002558C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }
}

double sub_100026998(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 168))
  {
    v5 = *(a4 + 156);
    v6 = *a1;
    if ((v5 & 4) != 0)
    {
      if (a2)
      {
        v7 = *(a2 + 8 * (v5 >> 5) + 24);
        if (v7)
        {
          v6 = v7;
        }
      }
    }

    sub_10002F4A0(v6);
    free(*(a4 + 168));
  }

  result = 0.0;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_100026A10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  sub_10003ED18(a3, (a3 + 8), (*(a4 + 2) - 8), 0, a5, a6);
  v10 = *(a4 + 3);
  v11 = *a1;
  if ((v10 & 4) != 0)
  {
    if ((*(a4 + 3) & 0x700) == 0x100)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    if ((*(a4 + 3) & 0x700) == 0x100)
    {
      v14 = *(a3 + 8) ^ HIDWORD(a4[2]) | *(a3 + 8) & 0xFFFFFFFF00000000 ^ (a4[2] << 32);
    }

    else
    {
      v14 = 0;
    }

    if (a2)
    {
      v15 = v10 >> 5;
      v16 = *(a2 + 8 * v15 + 24);
      v17 = a2 + 96 * v15 + 832;
      if (v16)
      {
        v11 = v16;
        v12 = v17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v18 = sub_10002F4BC(v11, *a4, (*(a4 + 2) / *(a1[1] + 36)), a3, v12, v14, v13);
  if (v18)
  {
    v19 = *(a3 + 8);
    v20 = sub_100025298(*(a3 + 24), *(a3 + 28));
    v21 = *a4;
    v22 = *(a4 + 2) / *(a1[1] + 36);
    v23 = strerror(v18);
    sub_10004565C("(oid 0x%llx) %s: dev_write(%llu, %u): %s\n", v19, v20, v21, v22, v23);
    sub_100049C40(0x166, v18);
  }

  if (a2)
  {
    *(a2 + 12) = 1;
  }

  return v18;
}

uint64_t sub_100026B74(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100026BB0(a1, &v5, &v4, 8u, 17);
}

uint64_t sub_100026BB0(_DWORD *a1, char *a2, _BYTE *a3, unsigned int a4, uint64_t a5)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7u, 1, a5, 0, a2, 8u, a3, a4);
  }

  return sub_10002797C();
}

uint64_t sub_100026C04(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100026BB0(a1, &v5, &v4, 8u, 18);
}

uint64_t sub_100026C40(_DWORD *a1, uint64_t a2, char a3)
{
  v5 = a2;
  v4 = a3;
  if (a1)
  {
    return sub_100027D7C(a1, 7u, 1, 0xFu, 0, &v5, 8u, &v4, 1u);
  }

  sub_10002797C();
  return 0;
}

void sub_100026C9C(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, unsigned __int16 *a5, BOOL *a6)
{
  v8 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  if (v8 != xmmword_10009A2E8)
  {
    sub_100045744("extended attribute (id %llu, name %.*s) is orphan\n", v8, *(a4 + 8), (a4 + 10));
    sub_100049C40(0x3C1, -2);
    sub_100027170(a2, a4, *(a4 + 8) + 10);
    goto LABEL_43;
  }

  v12 = *(a4 + 8);
  if (!strncmp((a4 + 10), "com.apple.decmpfs", v12) && (dword_10009A334 & 0x40000020) != 0)
  {
    BYTE8(xmmword_10009A318) = 1;
    v16 = a5[1];
    dword_10009A330 = v16;
    v17 = *a5;
    if ((v17 & 2) != 0)
    {
      if (v16 > 0xF)
      {
        v27 = *(a5 + 1);
        if (v27 == 1668116582)
        {
          v28 = *(a5 + 2);
          byte_10009A328 = sub_1000271C4(v28);
          byte_10009A329 = (v28 + 0x7FFFFFFF) < 2;
          dword_10009A32C = v28;
          goto LABEL_43;
        }

        sub_100045744("compression xattr (id %llu): compression magic is unknown: 0x%x\n", v8, v27);
        v14 = 1220;
      }

      else
      {
        sub_100045744("compression xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v8, v16, 16);
        v14 = 1219;
      }

      v18 = 92;
      goto LABEL_42;
    }

    if (!*a5 || (v17 & 1) != 0)
    {
      goto LABEL_43;
    }

    sub_100045744("compression xattr (id %llu): internal flags are invalid (0x%x)\n", v8, v17);
    v14 = 1221;
    goto LABEL_13;
  }

  if (strncmp((a4 + 10), "com.apple.ResourceFork", v12))
  {
    if (strncmp((a4 + 10), "com.apple.system.fs.speculative_telemetry", v12))
    {
      goto LABEL_43;
    }

    v13 = sub_10000EC94();
    if ((BYTE11(xmmword_10009A2F8) & 0x20) != 0)
    {
      v24 = v13;
      v25 = *a5;
      if ((v25 & 4) == 0)
      {
        sub_100045744("speculative download xattr (id %llu): invalid flags: 0x%x\n", v8, v25);
        sub_100049C40(0x5B6, -3);
        v26 = sub_10004758C(qword_10009BA58, "set missing flag? (0x%x) ", 4);
        LOWORD(v25) = *a5;
        if (v26)
        {
          LOWORD(v25) = v25 | 4;
          *a5 = v25;
          *a3 = 1;
        }
      }

      if (v25)
      {
        v29 = *(a5 + 6);
        sub_100045744("speculative download xattr (id %llu): shouldn't be stream based\n", v8);
        sub_100049C40(0x5B7, -5);
        if (v29 > 0xB)
        {
          goto LABEL_43;
        }

        sub_100045744("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v8, a5[1], 12);
        v14 = 1464;
      }

      else
      {
        if (a5[1] > 0xBu)
        {
          v30 = *(a5 + 4);
          if (*(a5 + 4))
          {
            sub_100045744("speculative download xattr (id %llu): unknown version: %u\n", v8, v30);
            v14 = 1466;
            v18 = -6;
          }

          else
          {
            LODWORD(v32) = *(a5 + 5);
            v33 = a5[3];
            v34 = *(a5 + 1);
            if (v32 >= 6)
            {
              v36 = *(a5 + 5);
              v32 = *(a5 + 1);
              sub_100045744("speculative download xattr (id %llu): unknown purge reason: %u\n", v8, v36);
              sub_100049C40(0x5BB, -3);
              v34 = v32;
              LOBYTE(v32) = v36;
            }

            if (v33 >= 0x40)
            {
              v37 = v34;
              sub_100045744("speculative download xattr (id %llu): unknown flags: %x\n", v8, v33);
              sub_100049C40(0x5BC, -3);
              v35 = sub_10000ED68(a1, v33, 63);
              v34 = v37;
              if (v35)
              {
                *a3 = 1;
                *a5 = v30;
                *(a5 + 1) = v32;
                a5[1] = v33 & 0x3F;
                *(a5 + 2) = v37;
              }
            }

            if (v34 <= v24)
            {
              goto LABEL_43;
            }

            sub_100045744("speculative download xattr (id %llu): pristine time (%llu) is greater than current time (%llu)\n", v8, v34, v24);
            v14 = 1469;
            v18 = -4;
          }

          goto LABEL_42;
        }

        sub_100045744("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v8, a5[1], 12);
        v14 = 1465;
      }

      v18 = -11;
LABEL_42:
      sub_100049C40(v14, v18);
LABEL_43:
      if (a6)
      {
        *a6 = v8 != xmmword_10009A2E8;
      }

      return;
    }

    sub_100045744("speculative download xattr (id %llu): found outside of an SAF dir stats hierarchy\n", v8);
    v14 = 1461;
LABEL_13:
    v18 = -3;
    goto LABEL_42;
  }

  if ((*a5 & 2) != 0)
  {
    v19 = a5[1];
LABEL_23:
    if (v19)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    HIDWORD(xmmword_10009A318) = v23;
    goto LABEL_43;
  }

  v19 = *(a5 + 6);
  v20 = *(a5 + 10);
  *&xmmword_10009A318 = v20;
  if (!*(&xmmword_10009A2E8 + 1) || (sub_1000185E4(*(&xmmword_10009A2E8 + 1), v20), !v21) && ((WORD2(qword_10009A338) & 0xF000) != 0x8000 || (BYTE8(xmmword_10009A2F8) & 2) == 0 || (DWORD2(xmmword_10009A2F8) & 0x180000) != 0x80000 || qword_10009A338 != 1 || (dword_10009A334 & 0x40000020) != 0x20 || (sub_100018A74(*(&xmmword_10009A2E8 + 1), v20), !v31)))
  {
    if (!xmmword_10009A2F8)
    {
      goto LABEL_23;
    }

    sub_1000063C4(xmmword_10009A2F8, v20);
    if (!v22)
    {
      goto LABEL_23;
    }
  }
}

uint64_t sub_100027170(_DWORD *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7u, 0, 0, 0, a2, a3, 0, 0);
  }

  return sub_10002797C();
}

BOOL sub_1000271C4(int a1)
{
  if (a1 != 2 && (a1 - 1) <= 0xD)
  {
    return (a1 & 1) == 0;
  }

  if ((a1 + 0x7FFFFFFF) >= 2)
  {
    sub_100045744("inode (id %llu): unknown compression type: %u\n", xmmword_10009A2E8, a1);
    sub_100049C40(0x4C2, 92);
  }

  return 0;
}

uint64_t sub_100027244(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = xmmword_10009A2E8;
  if (!xmmword_10009A2E8)
  {
    return 0;
  }

  v7 = dword_10009A334;
  if ((dword_10009A334 & 0x20) != 0)
  {
    if ((BYTE8(xmmword_10009A318) & 1) == 0)
    {
      if (qword_10009A348 != xmmword_10009A2E8)
      {
        v10 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350);
        qword_10009A348 = v3;
        if (v10)
        {
          return v10;
        }
      }

      if (byte_10009A350)
      {
        return 0;
      }

      sub_100045744("inode (id %llu): has the compression bsdflag, but doesn't have the compression xattr\n", xmmword_10009A2E8);
      sub_100049C40(0x4C8, -3);
    }

    if (byte_10009A328 != 1 || HIDWORD(xmmword_10009A318) == 2)
    {
      goto LABEL_19;
    }

    v14 = xmmword_10009A2E8;
    if (qword_10009A348 != xmmword_10009A2E8)
    {
      v10 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350);
      qword_10009A348 = v14;
      if (v10)
      {
        return v10;
      }
    }

    if (byte_10009A350)
    {
      return 0;
    }

    sub_100045744("inode (id %llu): Resource Fork xattr is missing or empty for compressed file\n", xmmword_10009A2E8);
    sub_100049C40(0x4C6, 92);
    v28 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v27) = 32;
    v8 = sub_100026BB0(a3, &v28, &v27, 4u, 20);
    if (!v8 && dword_10009A330 == 16)
    {
      v28 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
      v29 = 18;
      strcpy(v30, "com.apple.decmpfs");
      v8 = sub_100027170(a3, &v28, 28);
    }

    if (!v8)
    {
LABEL_19:
      v7 = dword_10009A334;
      if ((dword_10009A334 & 0x40000000) != 0 || byte_10009A329 != 1)
      {
        goto LABEL_3;
      }

      sub_100045744("inode (id %llu): compression type is dataless, but the dataless bsd_flag is not set\n", xmmword_10009A2E8);
      sub_100049C40(0x4FD, -3);
      v28 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      LODWORD(v27) = 0x40000000;
      v8 = sub_100026BB0(a3, &v28, &v27, 4u, 19);
      if (!v8)
      {
        v7 = dword_10009A334;
        goto LABEL_3;
      }
    }

    sub_10004565C("inode (id %llu): failed to enqueue to the repairs\n", xmmword_10009A2E8);
    sub_100049C40(0x4D2, v8);
    goto LABEL_51;
  }

LABEL_3:
  if ((v7 & 0x40000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v7 & 0x20) != 0)
  {
    if (BYTE8(xmmword_10009A318))
    {
      if (byte_10009A329)
      {
        goto LABEL_4;
      }

      v15 = xmmword_10009A2E8;
      if (qword_10009A348 == xmmword_10009A2E8 || (v10 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350), qword_10009A348 = v15, !v10))
      {
        if ((byte_10009A350 & 1) == 0)
        {
          sub_100045744("inode (id %llu): dataless bsd_flag is set, but the compression type is different: 0x%x\n", xmmword_10009A2E8, dword_10009A32C);
          v16 = 1226;
LABEL_69:
          sub_100049C40(v16, -3);
LABEL_4:
          v8 = 0;
          v9 = HIDWORD(xmmword_10009A318);
          if ((dword_10009A334 & 0x20) == 0 || HIDWORD(xmmword_10009A318) != 2)
          {
LABEL_52:
            if (v9)
            {
              if (v9 == 1)
              {
LABEL_64:
                xmmword_10009A318 = 0u;
                *&byte_10009A328 = 0u;
                qword_10009A338 = 0;
                xmmword_10009A2F8 = 0u;
                xmmword_10009A308 = 0u;
                xmmword_10009A2E8 = 0u;
                *&dword_10009A32C = -1;
                return v8;
              }

              v18 = WORD4(xmmword_10009A2F8) & 0x8000;
              v19 = ~DWORD2(xmmword_10009A2F8) & 0x4000;
              if (v8)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v19 = ~DWORD2(xmmword_10009A2F8) & 0x8000;
              v18 = WORD4(xmmword_10009A2F8) & 0x4000;
              if (v8)
              {
                goto LABEL_60;
              }
            }

            if (v19)
            {
              sub_100045744("inode (id %llu): need to set internal_flags 0x%llx\n", xmmword_10009A2E8, v19);
              sub_100049C40(0x5A9, 92);
              v27 = v19;
              v28 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
              v20 = sub_100026BB0(a3, &v28, &v27, 8u, 17);
              v8 = v20;
              if (v20)
              {
                v21 = xmmword_10009A2E8;
                v22 = strerror(v20);
                sub_10004565C("inode (id %llu): can't add internal flags repair: %d (%s)\n", v21, v8, v22);
                sub_100049C40(0x5AA, v8);
                goto LABEL_64;
              }
            }

LABEL_60:
            if (v18)
            {
              if (!v8)
              {
                sub_100045744("inode (id %llu): need to clear internal_flags 0x%llx\n", xmmword_10009A2E8, v18);
                sub_100049C40(0x5AB, 92);
                v27 = v18;
                v28 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
                v23 = sub_100026BB0(a3, &v28, &v27, 8u, 18);
                v8 = v23;
                if (v23)
                {
                  v24 = xmmword_10009A2E8;
                  v25 = strerror(v23);
                  sub_10004565C("inode (id %llu): can't add internal flags repair: %d (%s)\n", v24, v8, v25);
                  sub_100049C40(0x5AC, v8);
                }
              }
            }

            goto LABEL_64;
          }

          if (sub_1000271C4(dword_10009A32C))
          {
            if ((BYTE8(xmmword_10009A2F8) & 0x10) != 0)
            {
              v8 = sub_1000016B8(*(&xmmword_10009A308 + 1), xmmword_10009A2E8, xmmword_10009A318);
            }

            else
            {
              v8 = 0;
            }

            if (xmmword_10009A308)
            {
              sub_1000387BC(*(&xmmword_10009A308 + 1), xmmword_10009A2E8, xmmword_10009A318);
            }
          }

          else
          {
            v8 = 0;
          }

LABEL_51:
          v9 = HIDWORD(xmmword_10009A318);
          goto LABEL_52;
        }

        return 0;
      }
    }

    else
    {
      v17 = xmmword_10009A2E8;
      if (qword_10009A348 == xmmword_10009A2E8 || (v10 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350), qword_10009A348 = v17, !v10))
      {
        if ((byte_10009A350 & 1) == 0)
        {
          sub_100045744("inode (id %llu): dataless bsd_flag is set, but the compression xattr is missing\n", xmmword_10009A2E8);
          v16 = 1237;
          goto LABEL_69;
        }

        return 0;
      }
    }

    return v10;
  }

  sub_100045744("inode (id %llu): dataless bsd_flag is set, but compression bsd_flag is not\n", xmmword_10009A2E8);
  sub_100049C40(0x4D3, -3);
  if (BYTE8(xmmword_10009A318) == 1 && byte_10009A329 == 1)
  {
    v28 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v27) = 32;
    v12 = a3;
    v13 = 19;
  }

  else
  {
    v28 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v27) = 0x40000000;
    v12 = a3;
    v13 = 20;
  }

  v8 = sub_100026BB0(v12, &v28, &v27, 4u, v13);
  if (!v8)
  {
    goto LABEL_4;
  }

  sub_10004565C("inode (id %llu): failed to enqueue to the repairs\n", xmmword_10009A2E8);
  sub_100049C40(0x4D4, v8);
  return v8;
}

uint64_t sub_1000278CC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100027244(a1, a2, a3);
  if (!result)
  {
    *&xmmword_10009A2E8 = a4;
    *(&xmmword_10009A2E8 + 1) = a6;
    dword_10009A334 = *(a5 + 68);
    v14 = *(a5 + 48);
    *&xmmword_10009A2F8 = a7;
    *(&xmmword_10009A2F8 + 1) = v14;
    *&xmmword_10009A308 = a8;
    *(&xmmword_10009A308 + 1) = *(a5 + 8);
    LODWORD(qword_10009A338) = *(a5 + 56);
    WORD2(qword_10009A338) = *(a5 + 80);
  }

  return result;
}

double sub_10002794C(uint64_t a1)
{
  qword_10009A340 = a1;
  xmmword_10009A318 = 0u;
  *&byte_10009A328 = 0u;
  xmmword_10009A2E8 = 0u;
  xmmword_10009A2F8 = 0u;
  xmmword_10009A308 = 0u;
  qword_10009A338 = 0;
  result = NAN;
  *&dword_10009A32C = -1;
  return result;
}

uint64_t sub_10002797C()
{
  if ((byte_10009A354 & 1) == 0)
  {
    sub_100045744("snapshot fsroot / file key rolling / doc-id / clone group tree corruptions are not repaired; they'll go away once the snapshot is deleted\n");
    byte_10009A354 = 1;
  }

  return 0;
}

uint64_t sub_1000279BC(uint64_t a1, uint64_t a2)
{
  result = sub_100039748(a1, 0, a2, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100027A4C);
  if (!result)
  {

    return sub_10003B84C(a1, 0, 66);
  }

  return result;
}

uint64_t sub_100027A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  result = 22;
  if (a3 < 2)
  {
    return result;
  }

  v8 = a5;
  if (a5 < 2)
  {
    return result;
  }

  v11 = a3;
  result = sub_100028998(a2, a3, a4, a5);
  *a6 = result;
  if (result)
  {
    return 0;
  }

  v13 = *a2 & 0xF;
  if (v13 > 4)
  {
    if ((*a2 & 0xFu) <= 7)
    {
      if (v13 - 6 >= 2)
      {
        if (v13 != 5)
        {
          return result;
        }

        result = 22;
        if (v11 != 18 || v8 != 18)
        {
          return result;
        }

        v14 = *(a2 + 2);
        v15 = *(a4 + 2);
        if (v14 < v15)
        {
          result = 0;
          v16 = -1;
LABEL_53:
          *a6 = v16;
          return result;
        }

        if (v14 > v15)
        {
          result = 0;
          v16 = 1;
          goto LABEL_53;
        }

        v19 = (a2 + 10);
        v20 = (a4 + 10);
        v21 = a1;
        v17 = 8;
        v18 = 8;
LABEL_32:

        return sub_10003F384(v21, v19, v17, v20, v18, a6);
      }

LABEL_29:
      result = 22;
      if (v11 < 0xD || v8 < 0xD)
      {
        return result;
      }

      v17 = v11 - 5;
      v18 = v8 - 5;
      v19 = (a2 + 5);
      v20 = (a4 + 5);
      v21 = a1;
      goto LABEL_32;
    }

    if (v13 != 8)
    {
      if (v13 == 9)
      {
        result = 22;
        if (v11 == 6 && v8 == 6)
        {

          return sub_100030C54(a1, (a2 + 2), 4, (a4 + 2), 4, a6);
        }
      }

      else if (v13 == 10)
      {
        result = 22;
        if (v11 == 27 && v8 == 27)
        {

          return sub_10003F258(a1, (a2 + 2), 0x19uLL, (a4 + 2), 0x19u, a6);
        }
      }

      return result;
    }

    result = 22;
    if (v11 != 10 || v8 != 10)
    {
      return result;
    }

    v26 = *(a2 + 2);
    v27 = *(a4 + 2);
    v28 = v26;
    v24 = &v28;
    v25 = &v27;
    return sub_100030C88(a1, v24, 8, v25, 8, a6);
  }

  if ((*a2 & 0xFu) > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        return result;
      }

      goto LABEL_29;
    }

    result = 22;
    if (v11 != 10 || v8 != 10)
    {
      return result;
    }

    v23 = *(a2 + 2);
    v29 = *(a4 + 2);
    v30 = v23;
    v24 = &v30;
    v25 = &v29;
    return sub_100030C88(a1, v24, 8, v25, 8, a6);
  }

  if (v13 >= 2)
  {
    result = 22;
    if (v11 == 18 && v8 == 18)
    {
      v22 = *(a2 + 2);
      v31 = *(a4 + 2);
      v32 = v22;
      return sub_10001F078(a1, &v32, 16, &v31, 16, a6);
    }
  }

  else
  {
    result = 22;
    if (v11 == 18 && v8 == 18)
    {
      v34 = *(a2 + 2);
      v33 = *(a4 + 2);
      return sub_100001C14(a1, &v34, 16, &v33, 16, a6);
    }
  }

  return result;
}

uint64_t sub_100027D7C(_DWORD *a1, unsigned int a2, int a3, unsigned int a4, char a5, char *a6, unsigned int a7, _BYTE *a8, unsigned int a9)
{
  if (a5)
  {
    v13 = 2048;
  }

  else
  {
    v13 = 0;
    result = 0;
    v15 = dword_10009A358++;
    if (v15 > 999998)
    {
      return result;
    }
  }

  v16 = a9;
  v17 = a2 & 0xF | (16 * (a3 & 3)) & 0x3F | ((a4 & 0x1F) << 6);
  v18 = v13 | 0xA000;
  if (!a3 && (a2 > 6 || ((1 << a2) & 0x5C) == 0))
  {
    a8 = 0;
    v16 = 0;
  }

  v19 = v17 | v18;
  result = 22;
  if (a2 > 4)
  {
    if (a2 > 7)
    {
      if (a2 == 8)
      {
        if (a7 == 8 && v16 == 24)
        {
          v33 = v17 | v18;
          v34 = *a6;
          v20 = &v33;
          v21 = a1;
          v22 = 10;
          v24 = a8;
          v25 = 24;
          return sub_10003B12C(v21, 0, v20, v22, v24, v25);
        }
      }

      else if (a2 == 9)
      {
        if (a7 == 4 && 8 * (a3 != 0) == v16)
        {
          v31 = v17 | v18;
          v32 = *a6;
          v20 = &v31;
          v21 = a1;
          v22 = 6;
          goto LABEL_44;
        }
      }

      else if (a2 == 10 && a7 >= 9 && (!a8 || v16 >= 0xC))
      {
        v29 = v17 | v18;
        *v30 = *a6;
        *&v30[9] = *(a6 + 9);
        v20 = &v29;
        v21 = a1;
        v22 = 27;
        goto LABEL_44;
      }

      return result;
    }

    if (a2 - 6 >= 2)
    {
      if (a2 == 5 && a7 == 16)
      {
        v35 = v17 | v18;
        v36 = *a6;
        v20 = &v35;
LABEL_18:
        v21 = a1;
        v22 = 18;
LABEL_44:
        v24 = a8;
        v25 = v16;
        return sub_10003B12C(v21, 0, v20, v22, v24, v25);
      }

      return result;
    }

LABEL_27:
    if (a7 - 833 < 0xFFFFFCC7)
    {
      return result;
    }

    if (a3 == 1)
    {
      v23 = 0;
      if (a4 <= 0xF && ((1 << a4) & 0x8140) != 0)
      {
        if (!v16)
        {
          return result;
        }

        v23 = *a8;
      }
    }

    else
    {
      v23 = 0;
    }

    v26 = malloc_type_malloc(a7 + 5, 0x99220D33uLL);
    if (!v26)
    {
      return 12;
    }

    v27 = v26;
    *v26 = v19;
    *(v26 + 1) = a7;
    v26[4] = v23;
    memcpy(v26 + 5, a6, a7);
    v28 = sub_10003B12C(a1, 0, v27, a7 + 5, a8, v16);
    free(v27);
    return v28;
  }

  if (a2 > 2)
  {
    if (a2 != 3)
    {
      goto LABEL_27;
    }

    if (a7 != 8 || v16 != 16)
    {
      return result;
    }

    v37 = v17 | v18;
    v38 = *a6;
    v20 = &v37;
    v21 = a1;
    v22 = 10;
LABEL_40:
    v24 = a8;
    v25 = 16;
    return sub_10003B12C(v21, 0, v20, v22, v24, v25);
  }

  if (a2 >= 2)
  {
    if (a2 != 2 || a7 != 16 || v16 != 16)
    {
      return result;
    }

    v39 = v17 | v18;
    v40 = *a6;
    v20 = &v39;
    v21 = a1;
    v22 = 18;
    goto LABEL_40;
  }

  if (a7 == 16 && 8 * (a3 != 0) == v16)
  {
    v41 = v17 | v18;
    v42 = *a6;
    v20 = &v41;
    goto LABEL_18;
  }

  return result;
}