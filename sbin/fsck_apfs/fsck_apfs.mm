uint64_t sub_100000860(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        return ccsha3_384_di();
      }

      if (a1 == 8)
      {
        return ccsha3_512_di();
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return ccsha3_256_di();
      }

      return result;
    }

    return ccsha512_256_di();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return ccsha384_di();
    }

    if (a1 == 4)
    {
      return ccsha512_di();
    }

    return result;
  }

  if (a1 == 1)
  {
    return ccsha256_di();
  }

  if (a1 == 2)
  {
    return ccsha512_256_di();
  }

  return result;
}

uint64_t sub_100000934(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v20 = &v20;
    v11 = 2 * *a1;
    __chkstk_darwin(a1);
    bzero(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    __chkstk_darwin(v12);
    v15 = &v20 - v14;
    if (v16 >= 8)
    {
      memset(&v20 - v14, 170, v13);
    }

    ccdigest_init();
    v17 = 2 * (a2 & 0x7FFFFFFF);
    if (v17 > v7)
    {
      goto LABEL_18;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v17;
      a4 += v17;
    }

    while (v7 >= v17);
    if (v7)
    {
LABEL_18:
      do
      {
        if (v7 >= v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v18;
        v7 -= v18;
      }

      while (v7);
    }

    (a1[7])(a1, v15, a5);
    return cc_clear();
  }

  else
  {

    return ccdigest();
  }
}

char *sub_100000B78()
{
  byte_10007CEF0 = 1;
  byte_10007CEF1 = 0;
  if (!sub_100039748(&unk_10007CEF8, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 25, 0, 0, sub_100030CBC))
  {
    sub_10003B84C(&unk_10007CEF8, 0, 64);
  }

  result = sub_10001C108(&unk_10007CEF8, "clone mapping", sub_100000C60);
  if (result)
  {
    sub_100045744("failed to register the clone mapping tree in the fsck memory storage\n");

    return sub_100049C40(0x581, 12);
  }

  return result;
}

uint64_t sub_100000C60()
{
  if (qword_10007CF30)
  {
    result = sub_10003B928(&unk_10007CEF8, 0);
  }

  byte_10007CEF0 = 0;
  return result;
}

uint64_t sub_100000C9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v29[0] = 0xAAAAAAAAAAAAAAAALL;
  v29[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(v28, 170, 25);
  if (byte_10007CEF0 != 1)
  {
    return 0;
  }

  v3 = *(a2 + 40);
  if ((*(v3 + 48) & 4) == 0 || *(v3 + 1112))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v26 = 25;
  v27 = 16;
  v7 = sub_100039CDC(dword_10007CEF8, 0, v29, &v27, v28, &v26);
  if (!v7)
  {
    while (1)
    {
      v8 = v28[3];
      if ((v28[3] & 3) == 1)
      {
        break;
      }

      if ((v28[3] & 2) != 0)
      {
        v13 = v29[0];
        v34[0] = v29[0];
        v34[1] = 0;
        memset(v25, 170, 25);
        v32 = 25;
        v33 = 16;
        if (sub_1000397B8(dword_10007CEF8, 0, 1, v34, &v33, 16, v25, &v32) || v34[0] != v13)
        {
LABEL_23:
          if (v8)
          {
            sub_100045744("clone mapping (private_id %llu, file_id %llu) is orphan\n", v29[0], v29[1]);
            sub_100049C40(0x559, 92);
            *v25 = 0xE000000000000009;
            *&v25[8] = 19;
            *&v25[12] = *v29;
            v15 = sub_10000102C(a3, v25, 0, 0, 0);
            if (v15)
            {
              v4 = v15;
              v16 = *v29;
              v17 = strerror(v15);
              sub_10004565C("can't remove orphan clone mapping (private_id %llu, file_id %llu): %s (%d)\n", v16, *(&v16 + 1), v17, v4);
              sub_100049C40(0x548, v4);
              goto LABEL_31;
            }

            if ((v28[3] & 4) == 0)
            {
LABEL_29:
              v20 = sub_1000189F0;
              v21 = sub_1000063BC;
              goto LABEL_30;
            }

LABEL_15:
            v4 = 0;
            goto LABEL_31;
          }
        }

        else
        {
          v14 = 0;
          while (1)
          {
            v14 += (v25[24] >> 1) & 1;
            if (v14 > 1)
            {
              break;
            }

            v30 = 25;
            v31 = 16;
            if (sub_1000397B8(dword_10007CEF8, 0, 2, v34, &v31, 16, v25, &v30) || v34[0] != v13)
            {
              goto LABEL_23;
            }
          }

          if ((v8 & 1) == 0)
          {
            sub_100045744("clone mapping (private_id %llu, file_id %llu) is missing\n", v29[0], v29[1]);
            sub_100049C40(0x55A, 92);
            v18 = a3;
            v19 = 0;
            goto LABEL_36;
          }

          if ((v28[3] & 4) != 0)
          {
            v18 = a3;
            v19 = 1;
LABEL_36:
            v22 = sub_100001080(v18, v29, v28, v19);
            if (v22)
            {
              v4 = v22;
              goto LABEL_5;
            }

            v20 = sub_100018970;
            v21 = sub_100006328;
LABEL_30:
            v4 = sub_1000019C4(v29, v28, v20, v21);
LABEL_31:
            if (v4)
            {
              goto LABEL_5;
            }
          }
        }
      }

      v23 = 25;
      v24 = 16;
      v7 = sub_1000397B8(dword_10007CEF8, 0, 2, v29, &v24, 16, v28, &v23);
      if (v7)
      {
        goto LABEL_9;
      }
    }

    sub_100045744("found an orphan clone mapping (private_id %llu, file_id %llu)\n", v29[0], v29[1]);
    sub_100049C40(0x545, 92);
    *v25 = 0xE000000000000009;
    *&v25[8] = 19;
    *&v25[12] = *v29;
    v9 = sub_10000102C(a3, v25, 0, 0, 0);
    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = v9;
    v11 = *v29;
    v12 = strerror(v9);
    sub_100045744("can't add orphan clone mapping (private_id %llu, file_id %llu) to the fsck repairs: %s (%d)\n", v11, *(&v11 + 1), v12, v10);
    sub_100049C40(0x546, v10);
    goto LABEL_15;
  }

LABEL_9:
  if (v7 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v7;
  }

LABEL_5:
  sub_10003B928(dword_10007CEF8, 0);
  return v4;
}

uint64_t sub_10000102C(_DWORD *a1, char *a2, _BYTE *a3, unsigned int a4, uint64_t a5)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7u, a5, 0, 0, a2, 0x1Cu, a3, a4);
  }

  return sub_10002797C();
}

uint64_t sub_100001080(_DWORD *a1, _OWORD *a2, uint64_t *a3, int a4)
{
  v28 = 0xE000000000000009;
  v29 = 19;
  v30 = *a2;
  v8 = *a3;
  v9 = a3 + 1;
  v10 = a3[1];
  if (v10)
  {
    v11 = 28;
  }

  else
  {
    v11 = 16;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 16 * (v10 != 0);
  }

  v13 = malloc_type_calloc(1uLL, v12 + 8, 0x100004000313F17uLL);
  v14 = v13;
  if (!v13)
  {
    sub_10004565C("can't allocate memory to insert a new clone mapping value\n");
    v18 = 12;
    sub_100049C40(0x53E, 12);
    goto LABEL_13;
  }

  if (!(v10 | v8))
  {
LABEL_17:
    *v14 = a3[2] & 0xFFFFFFFFFFFFFFLL | ((((a3[3] & 8) >> 3) & 1) << 56);
    if (a4 && (v22 = sub_10000102C(a1, &v28, 0, 0, 0), v22))
    {
      v18 = v22;
    }

    else
    {
      v18 = sub_10000102C(a1, &v28, v14, v12 + 8, 2);
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    v25 = a2;
    v23 = *a2;
    v24 = *(v25 + 1);
    v26 = strerror(v18);
    sub_10004565C("can't add clone mapping (private_id %llu, file_id %llu) for repairs: %s (%d)\n", v24, v23, v26, v18);
    sub_100049C40(0x544, v18);
    goto LABEL_22;
  }

  if (!*a3 || (v15 = sub_10004052C(v13 + 4, v12, 2, a3, 8u, 16), !v15))
  {
    if (*v9)
    {
      v19 = sub_10004052C(v14 + 4, v12, 1, v9, 8u, 16);
      if (v19)
      {
        v20 = v19;
        v21 = strerror(v19);
        sub_10004565C("can't add attribution tag for clone mapping: %s (%d)\n", v21, v20);
        sub_100049C40(0x540, v20);
        v18 = v20;
        goto LABEL_13;
      }
    }

    goto LABEL_17;
  }

  v16 = v15;
  v17 = strerror(v15);
  sub_10004565C("can't add dir stats key for clone mapping: %s (%d)\n", v17, v16);
  sub_100049C40(0x53F, v16);
  v18 = v16;
LABEL_13:
  free(v14);
  v14 = 0;
LABEL_22:
  free(v14);
  return v18;
}

uint64_t sub_1000012BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if ((*a3 & 0x100000000000000) != 0)
  {
    v6 = 9;
  }

  else
  {
    v6 = 1;
  }

  return sub_1000012D4(a1, a2, v6, a4, a5, v5 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t sub_1000012D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (byte_10007CEF0 != 1)
  {
    return 0;
  }

  memset(v35, 0, 25);
  v33 = a1;
  v34 = a2;
  v31 = 25;
  v32 = 16;
  v12 = sub_1000397B8(dword_10007CEF8, 0, 0, &v33, &v32, 16, v35, &v31);
  if (v12 != 2)
  {
    v13 = v12;
    if (v12)
    {
      v14 = strerror(v12);
      sub_10004565C("failed to search for clone mapping (private_id %llu,  file_id %llu): %s (%d)\n", a1, a2, v14, v13);
      sub_100049C40(0x54B, v13);
      return v13;
    }

    v30[24] = -86;
    if ((a3 & 2) != 0)
    {
      *v30 = v35[0];
      *&v30[9] = *(v35 + 9);
    }

    else
    {
      *&v30[8] = a4;
      *&v30[16] = a6;
      *v30 = a5;
    }

    v15 = *&v35[0];
    if (*&v35[0] != a5)
    {
      if ((a3 & 2) != 0)
      {
        v16 = *&v35[0];
      }

      else
      {
        v16 = a5;
      }

      if ((a3 & 2) != 0)
      {
        v15 = a5;
      }

      sub_100045744("clone mapping (private_id %llu, file_id %llu): dir stats key (%llu) != inode (id %llu) dir stats key (%llu)\n", a1, a2, v16, a2, v15);
      sub_100049C40(0x55B, -11);
      BYTE8(v35[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *&v35[0] = a5;
      }
    }

    v17 = *(&v35[0] + 1);
    if (*(&v35[0] + 1) == a4)
    {
      v18 = BYTE8(v35[1]);
      if (((a3 | BYTE8(v35[1])) & 0x10) != 0)
      {
        if ((a3 & 2) != 0)
        {
          goto LABEL_40;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if ((a3 & 2) != 0)
      {
        v19 = *(&v35[0] + 1);
      }

      else
      {
        v19 = a4;
      }

      if ((a3 & 2) != 0)
      {
        v17 = a4;
      }

      sub_100045744("clone mapping (private_id %llu, file_id %llu): attribution tag (%llu) != inode (id %llu) attribution tag (%llu)\n", a1, a2, v19, a2, v17);
      sub_100049C40(0x55C, -11);
      v20 = BYTE8(v35[1]);
      v18 = BYTE8(v35[1]) | 4;
      BYTE8(v35[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *(&v35[0] + 1) = a4;
        if (((a3 | v20) & 0x10) != 0)
        {
          goto LABEL_40;
        }
      }

      else if (((a3 | v20) & 0x10) != 0)
      {
LABEL_29:
        if (*&v35[1] != a6)
        {
          sub_100045744("clone mapping (private_id %llu, file_id %llu): compressed physical size (%llu) != inode (id %llu) compressed physical size (%llu)\n", a1, a2, a6, a2, *&v35[1]);
          sub_100049C40(0x56E, -11);
          v18 = BYTE8(v35[1]) | 4;
          BYTE8(v35[1]) |= 4u;
        }

        goto LABEL_40;
      }
    }

    v21 = *&v35[1];
    if (*&v35[1] != a6)
    {
      if ((a3 & 2) != 0)
      {
        v22 = *&v35[1];
      }

      else
      {
        v22 = a6;
      }

      if ((a3 & 2) != 0)
      {
        v21 = a6;
      }

      sub_100045744("clone mapping (private_id %llu, file_id %llu): physical size (%llu) != inode (id %llu) physical size (%llu)\n", a1, a2, v22, a2, v21);
      sub_100049C40(0x55D, -11);
      v18 = BYTE8(v35[1]) | 4;
      BYTE8(v35[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *&v35[1] = a6;
      }
    }

LABEL_40:
    if ((a3 & 8) != (v18 & 8))
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): purgeable status is different than inode (id %llu) purgeable status\n", a1, a2, a2);
      sub_100049C40(0x55E, -3);
      v18 = BYTE8(v35[1]) | 4;
      if ((a3 & 2) != 0)
      {
        v18 = BYTE8(v35[1]) & 0xF3 | 4 | a3 & 8;
      }
    }

    BYTE8(v35[1]) = v18 | a3 & 0xF7;
    if (v18 & 4 | a3 & 4)
    {
      byte_10007CEF1 = 1;
      v23 = sub_1000019C4(&v33, v30, sub_1000189F0, sub_1000063BC);
      if (v23)
      {
        return v23;
      }
    }

    goto LABEL_46;
  }

  *&v35[0] = a5;
  *(&v35[0] + 1) = a4;
  *&v35[1] = a6;
  BYTE8(v35[1]) |= a3;
LABEL_46:
  v24 = sub_10003B12C(dword_10007CEF8, 0, &v33, 16, v35, 25);
  v13 = v24;
  if (v24)
  {
    v25 = v33;
    v26 = v34;
    v27 = BYTE8(v35[1]);
    v28 = strerror(v24);
    sub_10004565C("failed to insert clone mapping (private_id %llu,  file_id %llu, flags 0x%x): %s (%d)\n", v25, v26, v27, v28, v13);
    sub_100049C40(0x54C, v13);
  }

  return v13;
}

uint64_t sub_10000164C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0x10)
  {
    return 0;
  }

  if ((*(a2 + 68) & 0x20) != 0)
  {
    a4 = 0;
  }

  if ((*(a2 + 68) & 0x20) != 0)
  {
    v8 = 18;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(a2 + 48);
  if ((v9 & 0x180000) == 0x80000 && *(a2 + 56) == 1)
  {
    v8 |= 8u;
  }

  return sub_1000012D4(*(a2 + 8), a1, (v9 >> 9) & 0x20 | v8, a5, a6, a4);
}

uint64_t sub_1000016B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_10007CEF0 != 1)
  {
    return 0;
  }

  v15[0] = 0;
  v15[1] = 0;
  v17 = 0;
  v16 = 0;
  v14[0] = a1;
  v14[1] = a2;
  v12 = 25;
  v13 = 16;
  v6 = sub_1000397B8(dword_10007CEF8, 0, 0, v14, &v13, 16, v15, &v12);
  if (v6)
  {
    v7 = v6;
    v8 = strerror(v6);
    sub_10004565C("failed to search for clone mapping (private_id %llu,  file_id %llu) to update compressed clone size: %s (%d)\n", a1, a2, v8, v7);
    sub_100049C40(0x56F, v7);
    return v7;
  }

  if (v17)
  {
    if (v16 != a3)
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): compressed physical size (%llu) != inode (id %llu) compressed physical size (%llu)\n", a1, a2, v16, a2, a3);
      sub_100049C40(0x570, -11);
      v7 = sub_1000019C4(v14, v15, sub_1000189F0, sub_1000063BC);
      if (v7)
      {
        return v7;
      }

      v17 |= 4u;
      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:
  v16 = a3;
  v9 = sub_10003B12C(dword_10007CEF8, 0, v14, 16, v15, 25);
  v7 = v9;
  if (v9)
  {
    v10 = strerror(v9);
    sub_10004565C("failed to update clone mapping (private_id %llu,  file_id %llu) with compressed clone size: %s (%d)\n", a1, a2, v10, v7);
    sub_100049C40(0x571, v7);
  }

  return v7;
}

uint64_t sub_100001850(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v17 = a1;
  v18 = 0;
  memset(v16, 170, 25);
  if (byte_10007CEF0)
  {
    v14 = 25;
    v15 = 16;
    v8 = sub_1000397B8(dword_10007CEF8, 0, 1, &v17, &v15, 16, v16, &v14);
    v9 = 0;
    if (v8)
    {
LABEL_9:
      if (v8 == 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }
    }

    else
    {
      while (v17 == a1)
      {
        if ((v16[3] & 2) != 0)
        {
          if (v9 < a3)
          {
            *(a2 + 8 * v9) = v18;
          }

          ++v9;
        }

        v12 = 25;
        v13 = 16;
        v8 = sub_1000397B8(dword_10007CEF8, 0, 2, &v17, &v13, 16, v16, &v12);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      v10 = 0;
    }

    if (v9 != a3)
    {
      sub_100045614("number of files in the clone mapping (%u) != dstream reference count (%u)\n", v9, a3);
      sub_100049C40(0x54E, 92);
    }

    if (a4)
    {
      *a4 = v9;
    }
  }

  else
  {
    v10 = 12;
    sub_100049C40(0x54D, 12);
  }

  return v10;
}

uint64_t sub_1000019C4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t)))
{
  if (*a2 && (v7 = a3(*a2, a2[2]), v7))
  {
    v8 = v7;
    v10 = *a1;
    v9 = a1[1];
    v11 = *a2;
    v12 = strerror(v7);
    sub_10004565C("clone mapping (private_id %llu, file_id %llu): failed to update dir stats %llu: %s (%d)\n", v10, v9, v11, v12, v8);
    sub_100049C40(0x58B, v8);
  }

  else
  {
    v13 = a2[1];
    if (v13)
    {
      v14 = a4(v13, a2[2], a3);
      v8 = v14;
      if (v14)
      {
        v16 = *a1;
        v15 = a1[1];
        v17 = a2[1];
        v18 = strerror(v14);
        sub_10004565C("clone mapping (private_id %llu, file_id %llu): failed to update attribution tag %llu: %s (%d)\n", v16, v15, v17, v18, v8);
        sub_100049C40(0x58C, v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void sub_100001AA0()
{
  if (!off_10009B0E8)
  {
    cpu_capabilities = _get_cpu_capabilities();
    v1 = sub_100001B6C;
    if ((cpu_capabilities & 0x4000000) == 0)
    {
      v2 = off_10009B0E8;
      if (off_10009B0E8)
      {
        return;
      }

      do
      {
        v3 = 0;
        for (i = 0; i != 8; ++i)
        {
          v5 = (v2 >> i) ^ v3;
          v6 = v3 >> 1;
          v3 = (v3 >> 1) ^ 0x82F63B78;
          if ((v5 & 1) == 0)
          {
            v3 = v6;
          }
        }

        dword_10009B588[v2++] = v3;
        v1 = sub_100001B40;
      }

      while (v2 != 256);
    }

    off_10009B0E8 = v1;
  }
}

uint64_t sub_100001B40(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = dword_10009B588[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t sub_100001B6C(uint64_t result, unsigned __int16 *a2, unint64_t a3)
{
  if ((a2 & 7) != 0)
  {
    if (!a3)
    {
      return result;
    }

    if (a2)
    {
      v4 = *a2;
      a2 = (a2 + 1);
      _W8 = v4;
      __asm { CRC32CB         W0, W0, W8 }

      result = _OFF;
      __asm { CRC32CB         W0, W0, W8 }

      --a3;
    }

    if (a3 >= 2 && (a2 & 3) != 0)
    {
      v11 = *a2++;
      _W9 = v11;
      __asm { CRC32CH         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CH         W0, W0, W9 }

      a3 -= 2;
    }

    if (a3 >= 4 && (a2 & 7) != 0)
    {
      v14 = *a2;
      a2 += 2;
      _W9 = v14;
      __asm { CRC32CW         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CW         W0, W0, W9 }

      a3 -= 4;
    }
  }

  if (a3 >= 8)
  {
    do
    {
      v17 = *a2;
      a2 += 4;
      _X8 = v17;
      __asm { CRC32CX         W0, W0, X8 }

      result = _OFF;
      __asm { CRC32CX         W0, W0, X8 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v20 = *a2;
    a2 += 2;
    _W9 = v20;
    __asm { CRC32CW         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CW         W0, W0, W9 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v23 = *a2++;
    _W9 = v23;
    __asm { CRC32CH         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CH         W0, W0, W9 }

    a3 -= 2;
  }

  if (a3)
  {
    _W8 = *a2;
    __asm { CRC32CB         W0, W0, W8 }

    result = _OFF;
    __asm { CRC32CB         W0, W0, W8 }
  }

  return result;
}

uint64_t sub_100001C14(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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
        if (v8 >= v9)
        {
          v7 = v9 < v8;
        }

        else
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

uint64_t sub_100001C74(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v6 = 3;
  for (i = qword_10009B988; ; i += 4)
  {
    sub_100002D6C(a1);
    if (*(i + 24) == 1)
    {
      v8 = i[1];
      if (v8 != *i)
      {
        result = a2(*i, v8 - *i, a3);
        if (result)
        {
          break;
        }
      }
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 24);
  if ((*(v2 + 144) & 1) == 0 || !*(v2 + 336))
  {
    return 0;
  }

  v4 = (v2 + 352);
  v5 = 8;
  while (1)
  {
    if (*v4 != *(v4 - 1))
    {
      result = a2();
      if (result)
      {
        break;
      }
    }

    v4 += 17;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001D64(uint64_t *a1, int8x16_t *a2, unsigned int a3, unint64_t a4, uint64_t *a5)
{
  v111 = 0;
  v109 = 0;
  v110 = 0xAAAAAAAAAAAAAAAALL;
  v108 = 0;
  v10 = a1[3];
  v11 = *(v10 + 32);
  v12 = malloc_type_malloc(v11, 0x62B68A1DuLL);
  v13 = malloc_type_malloc(v11, 0xA29E1BB8uLL);
  v112[0] = v13;
  v14 = malloc_type_malloc(v11, 0xA1803BAFuLL);
  v15 = v14;
  if (v12)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16 || v14 == 0)
  {
    sub_10004565C("Space Allocation: failed to allocate memory\n");
    v18 = 12;
    sub_100049C40(0x1FE, 12);
    if (v15)
    {
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  v107 = a1;
  v104 = v12;
  v98 = a2;
  v99 = v11;
  v96 = a3;
  v100 = a5;
  if (a3 - 1 > 2)
  {
    goto LABEL_26;
  }

  if (a3 == 3)
  {
    if (a4 - 5 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      v19 = a1[3];
      if (*(v19 + 144))
      {
        if (*(v19 + 336))
        {
          v20 = a4 + 7;
          v21 = v19 + 344;
          v22 = 8;
          do
          {
            v23 = v20 & 7;
            v24 = v21 + 136 * (v20 & 7);
            if (*(v24 + 128) == a4)
            {
              goto LABEL_25;
            }

            v20 = v23 + 1;
          }

          while (--v22);
        }
      }
    }

LABEL_26:
    v97 = 0;
    v24 = &qword_10007CF38;
    goto LABEL_27;
  }

  sub_100002D6C(a1);
  if (byte_10009B9E8 != 1)
  {
    goto LABEL_26;
  }

  v25 = &qword_10009B988[4 * a3];
  if (*(v25 + 24) == 1)
  {
    v24 = (v25 + 2);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_26;
    }

    v24 = &qword_10009B9B8;
    if ((byte_10009B9C0 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_25:
  v97 = 1;
LABEL_27:
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = *v24;
  v105 = v10 + *(v10 + 80);
  LODWORD(v24) = *(v10 + 36);
  v30 = -1;
  v102 = v29;
  do
  {
    if (v29 >= *(v10 + 48))
    {
      v29 = 0;
    }

    v31 = v29 / v24 / *(v10 + 40);
    if (*(v10 + 68))
    {
      v32 = *(v10 + 44);
      v33 = v31 / v32;
      if (v31 / v32 != v30)
      {
        v34 = *(v105 + 8 * v33);
        v35 = sub_10002F3CC(*v107);
        if (v35)
        {
          sub_10004565C("error (%d) getting cab %u @ %lld\n", v35, v33, v34);
          v38 = (*(v10 + 44) + *(v10 + 44) * v33) * *(v10 + 40);
LABEL_39:
          LODWORD(v24) = *(v10 + 36);
          v29 = (v38 * v24);
          v30 = v33;
          goto LABEL_40;
        }

        v32 = *(v10 + 44);
        v30 = v33;
      }

      v106 = v30;
      v39 = &v104[8 * (v31 - v32 * v30) + 40];
    }

    else
    {
      v106 = v30;
      v39 = (v105 + 8 * v31);
    }

    v40 = *v39;
    v41 = sub_10002F3CC(*v107);
    if (v41)
    {
      sub_10004565C("error (%d) getting cib %u @ %lld\n", v41, v31, v40);
      v38 = *(v10 + 40) + *(v10 + 40) * v31;
      v33 = v106;
      goto LABEL_39;
    }

    v24 = *(v10 + 36);
    v42 = *(v10 + 40) * *(v112[0] + 8);
    if (v28 == *(v10 + 64))
    {
      v43 = v102 / v24 - v42 + 1;
    }

    else
    {
      v43 = *(v112[0] + 9);
    }

    v30 = v106;
    v44 = v29 / v24 - v42;
    v111 = v44;
    if (v44 < v43)
    {
      v103 = v43 - 1;
      v101 = v43;
      while (1)
      {
        v45 = &v112[0][32 * v44];
        if (*(v45 + 8))
        {
          v46 = sub_10002F3CC(*v107);
          v44 = v111;
          if (v46)
          {
            sub_10004565C("error (%d) getting cib bitmap %d @ %lld\n", v46, v111, *(v45 + 8));
            v44 = v111 + 1;
            LODWORD(v24) = *(v10 + 36);
            v29 = ((v111 + 1 + *(v10 + 40) * v31) * v24);
            goto LABEL_72;
          }
        }

        if (v28 == *(v10 + 64) && v44 == v103)
        {
          v48 = v102 - *(v45 + 6);
        }

        else
        {
          v48 = *(v45 + 14) & 0xFFFFFLL;
        }

        v49 = v29 % *(v10 + 36);
        while (v48 > v49)
        {
          if (!*(v45 + 8))
          {
            v109 = 0;
LABEL_63:
            v108 = v48;
            v49 = v48;
            goto LABEL_64;
          }

          if (!sub_10000856C(0, v15, v49, v48 - v49, &v109))
          {
            break;
          }

          if (!sub_10000856C(1, v15, v109, v48 - v109, &v108))
          {
            goto LABEL_63;
          }

          v49 = v108;
LABEL_64:
          if (v26 + v27 == *(v45 + 6) + v109)
          {
            v50 = v26;
          }

          else
          {
            v27 = *(v45 + 6) + v109;
            v50 = 0;
          }

          v51 = v49 - v109;
          if (v49 - v109 >= a4 - v50)
          {
            v51 = a4 - v50;
          }

          v26 = v51 + v50;
          if (v51 + v50 >= a4)
          {
            *v100 = v27;
            goto LABEL_74;
          }
        }

        v24 = *(v10 + 36);
        v29 = v48 + v29 / v24 * v24;
        v44 = v111 + 1;
        v43 = v101;
LABEL_72:
        v111 = v44;
        if (v44 >= v43)
        {
          v30 = v106;
          break;
        }
      }
    }

LABEL_40:
    ++v28;
  }

  while (v28 <= *(v10 + 64));
LABEL_74:
  if (v26 < a4)
  {
    v18 = 28;
    sub_100049C40(0x1EF, 28);
    goto LABEL_76;
  }

  v52 = v26 + v27;
  if (v27 >= (v26 + v27))
  {
LABEL_88:
    v69 = sub_100002664(v107, v98, v10, v26, v36, v37);
    if (v69)
    {
      v70 = v69;
      v71 = strerror(v69);
      sub_10004565C("failed to update allocation counts: %s\n", v71);
      v72 = v70;
      sub_100049C40(0x1F1, v70);
      sub_100002664(v107, v98, v10, -v26, v73, v74);
      v53 = v52;
      v59 = v107;
      goto LABEL_106;
    }

    if (sub_10004217C(v27, v26, 0, 0, 0))
    {
      sub_100045744("fsck may bail out with overallocation - could not mark space allocated in fsck's version of the bitmap (%lld + %lld)\n", v27, v26);
    }

    if (v97)
    {
      v12 = v104;
      v18 = 0;
      if (v96 == 3)
      {
        goto LABEL_122;
      }

      if (byte_10009B9E0)
      {
        LODWORD(v75) = 2;
      }

      else
      {
        LODWORD(v75) = 1;
      }

      if (v96 == 2)
      {
        v75 = v75;
      }

      else
      {
        v75 = v96;
      }

      qword_10009B988[4 * v75 + 2] = v52 - 1;
      if (v15)
      {
LABEL_123:
        free(v15);
      }
    }

    else
    {
      v18 = 0;
      qword_10007CF38 = v52 - 1;
LABEL_76:
      v12 = v104;
      if (v15)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
    v53 = v27;
    while (1)
    {
      v54 = *(v10 + 36);
      v55 = v53 % v54;
      v56 = v54 - v53 % v54;
      if (v56 >= v52 - v53)
      {
        v57 = v52 - v53;
      }

      else
      {
        v57 = v56;
      }

      v58 = sub_10000ACA0(v107, v53, v15, &v110, v112, &v111, 1);
      if (!v110 || v58)
      {
        v72 = v58;
        v59 = v107;
        goto LABEL_106;
      }

      sub_1000083A8(v15, v55, v57, v110);
      v59 = v107;
      v60 = sub_10002F4AC(*v107);
      if (v60)
      {
        v72 = v60;
        sub_10004565C("error (%d) writing bitmap @ %lld\n", v60, v110);
        sub_100049C40(0x1FF, v72);
        goto LABEL_106;
      }

      v63 = v15;
      v64 = v52;
      v65 = v112[0];
      *&v112[0][32 * v111 + 60] -= v57;
      v66 = *(v65 + 1);
      sub_10003ED18(v65, (v65 + 8), (v99 - 8), 0, v61, v62);
      v67 = sub_10002F4AC(*v107);
      if (v67)
      {
        break;
      }

      v53 += v57;
      v52 = v64;
      v68 = v53 < v64;
      v15 = v63;
      if (!v68)
      {
        goto LABEL_88;
      }
    }

    v76 = v67;
    sub_10004565C("error (%d) writing cib %u @ %lld\n", v67, *(v112[0] + 8), v66);
    sub_100049C40(0x200, v76);
    v15 = v63;
    sub_10000849C(v63, v55, v57);
    v72 = v76;
    v59 = v107;
    v77 = sub_10002F4AC(*v107);
    if (v77)
    {
      v78 = v77;
      sub_10004565C("error (%d) writing bitmap @ %lld\n", v77, v110);
      sub_100049C40(0x1F0, v78);
      v72 = v78;
    }

LABEL_106:
    if (v27 < v53)
    {
      while (2)
      {
        v79 = sub_10000ACA0(v59, v27, v15, &v110, v112, &v111, 0);
        if (v110)
        {
          v80 = v79 == 0;
        }

        else
        {
          v80 = 0;
        }

        if (!v80)
        {
          break;
        }

        v81 = *(v10 + 36);
        v82 = v27 % v81;
        v83 = v81 - v27 % v81;
        if (v83 >= v53 - v27)
        {
          v84 = v53 - v27;
        }

        else
        {
          v84 = v83;
        }

        sub_10000849C(v15, v82, v84);
        v85 = sub_10002F4AC(*v59);
        if (v85)
        {
          v88 = v85;
          sub_10004565C("error (%d) writing bitmap @ %lld\n", v85, v110);
          v89 = 513;
          v90 = v88;
          goto LABEL_119;
        }

        v91 = v112[0];
        *&v112[0][32 * v111 + 60] += v84;
        v92 = *(v91 + 1);
        sub_10003ED18(v91, (v91 + 8), (v99 - 8), 0, v86, v87);
        v93 = sub_10002F4AC(*v59);
        if (v93)
        {
          v94 = v93;
          sub_10004565C("error (%d) writing cib %u @ %lld\n", v93, *(v112[0] + 8), v92);
          v89 = 514;
          v90 = v94;
LABEL_119:
          sub_100049C40(v89, v90);
        }

        v27 += v84;
        v59 = v107;
        if (v27 >= v53)
        {
          break;
        }

        continue;
      }
    }

    v12 = v104;
    v18 = v72;
LABEL_122:
    if (v15)
    {
      goto LABEL_123;
    }
  }

LABEL_124:
  if (v112[0])
  {
    free(v112[0]);
  }

  if (v12)
  {
    free(v12);
  }

  return v18;
}

uint64_t sub_100002664(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, double a5, int8x16_t a6)
{
  *(a3 + 72) -= a4;
  if (!a2)
  {
    goto LABEL_14;
  }

  v7 = a2[2].i64[1];
  v8 = *(v7 + 72);
  v9 = *(v7 + 88);
  v10 = v8 >= v9 ? *(v7 + 88) : *(v7 + 72);
  *(v7 + 88) = v9 + a4;
  v11 = v8 >= v9 + a4 ? v9 + a4 : v8;
  if (v9 < v11 || v9 + a4 < v10)
  {
    *(a3 + 192) += v11 - v10;
  }

  result = sub_100046EA0(a1, a2);
  if (!result)
  {
LABEL_14:
    v14 = *(a1 + 24);
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
    return sub_100026A10(a1, 0, v14, v15.i64, v15, a6);
  }

  return result;
}

uint64_t sub_10000270C(uint64_t *a1, int8x16_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, int a8, char a9, char a10)
{
  v61 = a7;
  v62 = a5;
  v10 = a1[3];
  v60 = 0;
  v11 = v10[8];
  v12 = a3 % v10[9];
  if (v12 + a4 > (8 * v11))
  {
    sub_10004565C("Spaceman Repair: Cannot modify more than a block's worth of bitmap\n", a2);
    v13 = 45;
    sub_100049C40(0x277, 45);
    return v13;
  }

  v20 = a6;
  if (!a6)
  {
    v20 = malloc_type_malloc(v11, 0xD4E60B18uLL);
    if (!v20)
    {
      sub_10004565C("Spaceman Repair: failed to allocate memory for the bitmap block\n");
      v13 = 12;
      v24 = 632;
LABEL_27:
      v25 = 12;
      goto LABEL_28;
    }
  }

  if (a7)
  {
    if (a6)
    {
      v21 = a7;
      if (a5)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  v61 = malloc_type_malloc(v11, 0x5681932DuLL);
  if (!v61)
  {
    sub_10004565C("Spaceman Repair: failed to allocate memory for the bitmap block\n");
    v13 = 12;
    v24 = 633;
    goto LABEL_27;
  }

LABEL_10:
  v22 = sub_10000ACA0(a1, a3, v20, &v62, &v61, 0, 1);
  if (v22)
  {
    v13 = v22;
    goto LABEL_29;
  }

  v21 = v61;
LABEL_13:
  v57 = v21[8];
  v23 = v10[9];
  v55 = v10[10];
  if ((a10 & 1) == 0 && sub_10000856C(a8 == 1, v20, v12, a4, &v60))
  {
    if (a8 == 1)
    {
      sub_10004565C("bitmap was not entirely unset, stopping allocation\n");
    }

    else
    {
      sub_10004565C("bitmap was not entirely set, stopping deallocation\n");
    }

    v13 = 22;
    v24 = 634;
    v25 = 22;
    goto LABEL_28;
  }

  if (a8 == 1)
  {
    sub_1000083A8(v20, v12, a4, 1);
  }

  else if (a8 == 2)
  {
    sub_10000849C(v20, v12, a4);
  }

  v26 = sub_10002F4AC(*a1);
  if (v26)
  {
    v13 = v26;
    sub_10004565C("error (%d) writing bitmap @ %lld\n", v26, v62);
    v24 = 635;
    v25 = v13;
LABEL_28:
    sub_100049C40(v24, v25);
    goto LABEL_29;
  }

  v28 = a3 / v23 - v55 * v57;
  v29 = sub_1000085F0(v20, 0, 0, *(v61 + 8 * v28 + 14) & 0xFFFFF);
  v32 = 0;
  v33 = v61;
  v54 = v28;
  v34 = v61 + 32 * v28;
  v36 = *(v34 + 15);
  v35 = v34 + 60;
  v37 = v29 - v36;
  if (v29 != v36)
  {
    *v35 = v29;
    v32 = v37;
  }

  v56 = v32;
  v38 = (v11 - 8);
  sub_10003ED18(v33, (v33 + 8), v38, 0, v30, v31);
  v39 = sub_10002F4AC(*a1);
  if (v39)
  {
    v13 = v39;
    sub_10004565C("error (%d) writing cib during deallocation\n", v39);
    sub_100049C40(0x27C, v13);
  }

  else
  {
    v42 = sub_100002664(a1, a2, v10, -v56, v40, v41);
    if (!v42)
    {
      if (a9)
      {
        if (a8 == 2)
        {
          sub_1000422B0(a3, a4, 0);
        }

        else if (a8 == 1)
        {
          sub_10004217C(a3, a4, 0, 0, 0);
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

    v13 = v42;
    v43 = strerror(v42);
    sub_10004565C("failed to update allocation counts: %s\n", v43);
    sub_100049C40(0x27D, v13);
    sub_100002664(a1, a2, v10, v56, v44, v45);
  }

  if (a8 == 1)
  {
    sub_10000849C(v20, v12, a4);
    sub_1000083A8(v20, v12, a4, v46);
  }

  v47 = sub_10002F4AC(*a1);
  if (v47)
  {
    v50 = v47;
    sub_10004565C("error (%d) writing bitmap @ %lld\n", v47, v62);
    v24 = 638;
    v25 = v50;
    goto LABEL_28;
  }

  v51 = v61;
  *(v61 + 8 * v54 + 15) -= v56;
  sub_10003ED18(v51, (v51 + 8), v38, 0, v48, v49);
  v52 = sub_10002F4AC(*a1);
  if (v52)
  {
    v53 = v52;
    sub_10004565C("error (%d) writing cib\n", v52);
    v24 = 639;
    v25 = v53;
    goto LABEL_28;
  }

LABEL_29:
  if (!a7 && v61)
  {
    free(v61);
  }

  if (!a6 && v20)
  {
    free(v20);
  }

  return v13;
}

uint64_t sub_100002BB8(uint64_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4 + a3;
  if (a4 + a3 <= a3)
  {
    return 0;
  }

  v7 = a3;
  v10 = *(a1[3] + 36);
  while (1)
  {
    v11 = v5 - v7 >= v10 + v7 / v10 * v10 - v7 ? v10 + v7 / v10 * v10 - v7 : v5 - v7;
    result = sub_10000270C(a1, a2, v7, v11, 0, 0, 0, a5, 1, 0);
    if (result)
    {
      break;
    }

    v7 += v11;
    if (v7 >= v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002C7C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5, uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  if (a2 + a1 > a3 && a4 + a3 > a1)
  {
    *a5 = 1;
    if (a1 <= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = a1;
    }

    v15 = v14 - a1;
    if (a2 - (v14 - a1) >= a3 - v14 + a4)
    {
      v16 = a3 - v14 + a4;
    }

    else
    {
      v16 = a2 - (v14 - a1);
    }

    result = a6(v14, v16, 1, a7);
    if (!result)
    {
      if (a3 <= a1 || (result = a6(a1, v15, 0, a7), !result))
      {
        if (a2 - v16 <= v15)
        {
          return 0;
        }

        result = a6(v16 + v14, a2 - v16 - v15, 0, a7);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t sub_100002D6C(uint64_t result)
{
  if ((byte_10009B9E8 & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = *(v2 + 32);
    v4 = *(v2 + 48);
    memset(v7, 170, sizeof(v7));
    if (is_mul_ok(v4, v3))
    {
      v5 = v4 * v3;
    }

    else
    {
      v5 = 0x40000000000;
    }

    result = sub_10002C0AC(0, v3, v4, v5, &v7[3], &v7[2]);
    if (!result)
    {
      v6 = v7[3] / v3 + v7[2];
      sub_10002C1B4(v3, v7[3], v7[2], v6, &v7[1], v7);
      qword_10009B990 = v7[1];
      unk_10009B998 = v7[2];
      qword_10009B988[0] = v7[2];
      byte_10009B9A0 = 1;
      qword_10009B9B0 = v6;
      qword_10009B9B8 = v7[1];
      qword_10009B9A8 = v7[1];
      byte_10009B9C0 = 1;
      result = sub_10002F3BC(*v1);
      if (!result)
      {
        result = sub_100046E98();
        if (result)
        {
          qword_10009B9B0 = v7[0];
          qword_10009B9B8 = v7[1];
          qword_10009B9A8 = v7[1];
          byte_10009B9C0 = 1;
          qword_10009B9D0 = v6;
          unk_10009B9D8 = v7[0];
          qword_10009B9C8 = v7[0];
          byte_10009B9E0 = 1;
        }
      }
    }

    byte_10009B9E8 = 1;
  }

  return result;
}

uint64_t sub_100002E7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = a3;
  v19 = a1;
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = &a1[a2];
  v17 = 0;
  v18 = -1431655766;
  v16 = 0;
  v15 = 1;
  do
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[6] = v8;
    v21[7] = v8;
    v21[5] = v8;
    v21[3] = v8;
    v21[4] = v8;
    v21[1] = v8;
    v21[2] = v8;
    v20[1] = v8;
    v21[0] = v8;
    v20[0] = v8;
    v14 = 0;
    v13 = 0;
    v9 = sub_100002FDC(&v19, v7, v6, v22, &v18, &v17, &v16, v21, v20, &v14, &v13, &v15);
    if (v9)
    {
      break;
    }

    v10 = v14;
    if (v14 >= 1)
    {
      if (v13 == 1)
      {
        sub_1000037B4(v21, v20, v14);
      }

      a4(v21, 4 * v10, a5);
    }
  }

  while (v19 < v7 || v17 > 0);
  return v9;
}

uint64_t sub_100002FDC(unsigned __int8 **a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
{
  v17 = *a6;
  v18 = *a7;
  if (*a6 >= 1 && v18 < v17)
  {
    v65 = 0;
    *a11 = 0;
    *a10 = 0;
    v18 = *a7;
    while (1)
    {
      if (v65 >= 1 && *(a5 + v18) && *(a5 + v18) < *(a9 - 1 + v65))
      {
        *a11 = 1;
      }

      *(a8 + 4 * v65) = a4[v18];
      v66 = *a7;
      *a7 = v66 + 1;
      LOBYTE(v66) = *(a5 + v66);
      v67 = *a10;
      *a10 = v67 + 1;
      *(a9 + v67) = v66;
      v18 = *a7;
      v17 = *a6;
      if (*a7 >= *a6 || !*(a5 + v18))
      {
        break;
      }

      v65 = *a10;
    }
  }

  if (v18 >= v17)
  {
    *a6 = 0;
    *a7 = 0;
    v20 = *a1;
    if (*a1 < a2)
    {
      v21 = a4 - 1;
      do
      {
        v23 = v20 + 1;
        *a1 = v20 + 1;
        v24 = *v20;
        result = 92;
        if (!*v20 || v24 == 47)
        {
          return result;
        }

        if ((v24 & 0x80) == 0)
        {
          result = 0;
          if (v24 - 91 < 0xFFFFFFE6)
          {
            v68 = 1;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v69 = *v20;
          }

          else
          {
            v69 = v24 | 0x20;
          }

          *a4 = v69;
          *a6 = 1;
          *a5 = 0;
          goto LABEL_143;
        }

        if (v24 - 225 > 0xB)
        {
          if (v24 - 194 <= 0x1D && v23 < a2)
          {
            v30 = *v23 ^ 0x80;
            if (v30 <= 0x3F)
            {
              v28 = ((v24 & 0x1F) << 6) | v30;
              v23 = v20 + 2;
              goto LABEL_44;
            }
          }
        }

        else if ((v20 + 2) < a2)
        {
          v26 = *v23 ^ 0x80;
          if (v26 <= 0x3F)
          {
            v27 = v20[2] ^ 0x80;
            if (v27 <= 0x3F)
            {
              v28 = ((v24 & 0xF) << 12) | (v26 << 6) | v27;
              v23 = v20 + 3;
              goto LABEL_44;
            }
          }
        }

        if (v24 > 0xEF)
        {
          if (v24 > 0xFD)
          {
            v33 = 0;
            goto LABEL_33;
          }

          if (v24 <= 0xF7)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          v32 = v24 > 0xFB;
        }

        else
        {
          v31 = v24 > 0xDF;
          v32 = v24 > 0xBF;
        }

        if (v32)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = v31;
        }

LABEL_33:
        v28 = -1;
        if (&v23[v33] <= a2)
        {
          v34 = v24 & ~(-1 << (6 - v33));
          if (v33 == 1 || (v33 == 2 || v33 == 3 && (v23 = v20 + 2, v35 = v20[1] ^ 0x80, v28 = -1, v35 <= 0x3F) && (v34 = v35 | (v34 << 6), v34 <= 0x10F)) && (v36 = *v23, ++v23, v37 = v36 ^ 0x80, v28 = -1, (v36 ^ 0x80u) <= 0x3F) && (v34 = v37 | (v34 << 6), (v34 & 0xFFE0) != 0x360))
          {
            v38 = *v23++;
            v39 = v38 ^ 0x80;
            if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < dword_10006EC60[v33]))
            {
              v28 = -1;
            }
          }
        }

LABEL_44:
        *a1 = v23;
        if (v28 < 1)
        {
          return result;
        }

        *a5 = 0;
        if (v28 >= 0xF0000)
        {
          if ((~v28 & 0xFFFE) == 0)
          {
            goto LABEL_144;
          }

LABEL_47:
          *a4 = v28;
          goto LABEL_55;
        }

        v40 = v28;
        if (v28 >> 10 >= 0xC9)
        {
          if ((v28 - 918016) < 0xFFFFFE00)
          {
            goto LABEL_144;
          }

          v40 = v28 - 711680;
        }

        v41 = word_10006EC70[v40 >> 8];
        if (!word_10006EC70[v40 >> 8])
        {
          goto LABEL_54;
        }

        if (v41 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v41 & 0xFF00) == 0xAD00)
        {
LABEL_54:
          *a4 = v28;
          *a5 = v41;
          goto LABEL_55;
        }

        if (((v40 >> 8) - 172) <= 0x2A)
        {
          goto LABEL_69;
        }

        v50 = word_1000717EC[16 * (v41 & 0xFFF) + (v40 >> 4)];
        if (!v50)
        {
LABEL_75:
          *a4 = v28;
          *a5 = v50;
          goto LABEL_76;
        }

        if (v50 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v50 & 0xFF00) == 0xAE00)
        {
          if ((word_10006F2BC[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = word_100072B0C[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = word_10007350C[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
        {
LABEL_69:
          v45 = v28 - 44032;
          v46 = v45 / 28;
          v47 = v45 / 588;
          v48 = (49933 * (v45 / 28)) >> 16;
          *(a5 + 1) = 0;
          v49 = v45 % 28;
          *a4 = v47 + 4352;
          a4[1] = (v46 - 21 * ((v48 >> 4) + ((v48 & 0x8000) >> 15)) + 4449);
          if (v49)
          {
            a4[2] = v49 + 4519;
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          goto LABEL_56;
        }

        if (v52 == 0xFFFF)
        {
LABEL_144:
          v54 = -1;
LABEL_145:
          *a6 = v54;
          return result;
        }

        if (((v52 + 1792) >> 8) <= 0xB6u)
        {
          if (!v52 || (v52 & 0xFF00) == 0xAD00)
          {
            *a4 = v28;
            *a5 = v52;
          }

          else
          {
            *a4 = v52;
          }

LABEL_76:
          if ((a3 & 1) == 0)
          {
            v51 = *a4;
            if (v51 <= 1279)
            {
              v28 = word_100072B0C[v51];
              goto LABEL_47;
            }
          }

LABEL_55:
          v42 = 1;
LABEL_56:
          *a6 = v42;
          goto LABEL_57;
        }

        v53 = (v52 - 45056) >> 12;
        v54 = -1;
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v53 != 1)
            {
              goto LABEL_145;
            }

            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_10006FFE6 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_10006F3D2 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&unk_10007051A + 2 * (v52 & 0x3FF));
            v59 = *v58;
            v55 = (v58 + 1);
            v57 = v59;
            goto LABEL_109;
          }

          if (v53 != 3)
          {
            if (v53 != 4)
            {
              goto LABEL_145;
            }

            v55 = 0;
            v56 = (&unk_100071590 + 4 * (v52 & 0x3FF));
            v57 = *v56;
            v70 = v56 + 1;
LABEL_109:
            v42 = v57 & 0xF;
            *a5 = v57 >> 4;
            if (v42 - 5 < 0xFFFFFFFC)
            {
              v54 = 0;
              goto LABEL_145;
            }

            goto LABEL_110;
          }

          if ((v52 & 0x800) != 0 && a3)
          {
            goto LABEL_47;
          }

          v55 = 0;
          v70 = (&unk_1000706A8 + 4 * (v52 & 0x7FF));
          v42 = 1;
        }

LABEL_110:
        v60 = 0;
        v74 = a3;
        v72 = a12;
        v73 = a2;
        v71 = v21;
        do
        {
          if (v55)
          {
            v62 = *v55;
            v55 += 2;
            v61 = v62;
          }

          else
          {
            v61 = *v70++;
          }

          a4[v60] = v61;
          if (v60)
          {
            v75 = v60;
            v76 = v55;
            v63 = sub_100003828(v61);
            v60 = v75;
            v55 = v76;
            *(a5 + v75) = v63;
          }

          ++v60;
          a3 = v74;
          a12 = v72;
          a2 = v73;
          v21 = v71;
        }

        while (v42 != v60);
        if ((v74 & 1) == 0)
        {
          v64 = *a4;
          if (v64 <= 1279)
          {
            *a4 = word_100072B0C[v64];
          }

          if (v42 < 2)
          {
            goto LABEL_55;
          }

          if (v71[v42] == 837)
          {
            v71[v42] = 953;
          }
        }

        *a6 = v42;
        if (v42 < 1)
        {
          return 92;
        }

LABEL_57:
        if (!*a5 || *a12 == 1)
        {
          result = 0;
LABEL_143:
          *a12 = 0;
          return result;
        }

        v43 = *a10;
        if ((v42 + *a10) > 32)
        {
          return 92;
        }

        v44 = 0;
        do
        {
          if (v43 >= 1 && *(a5 + v44) && *(a5 + v44) < *(a9 - 1 + v43))
          {
            *a11 = 1;
          }

          *(a8 + 4 * v43) = a4[v44];
          *(a9 + *a10) = *(a5 + v44++);
          v43 = *a10 + 1;
          *a10 = v43;
        }

        while (v44 < *a6);
        *a6 = 0;
        v20 = *a1;
      }

      while (*a1 < a2);
    }
  }

  return 0;
}

uint64_t sub_1000037B4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = a3 - 1;
      do
      {
        v5 = *(a2 + v4);
        if (v5 < *(a2 + v4 - 1))
        {
          v6 = *(result + 4 * v4);
          *(result + 4 * v4) = *(result + 4 * (v4 - 1));
          *(a2 + v4) = *(a2 + v4 - 1);
          *(result + 4 * (v4 - 1)) = v6;
          *(a2 + v4 - 1) = v5;
        }

        --v4;
      }

      while (v4 > v3);
      ++v3;
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t sub_100003828(int a1)
{
  if (a1 >= 983040)
  {
    return 0;
  }

  if (a1 == 953)
  {
    return 240;
  }

  v2 = a1 - 711680;
  if (a1 <= 205823)
  {
    v2 = a1;
  }

  LOWORD(v3) = word_10006EC70[v2 >> 8];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 44288;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v3;
  }

  v3 = word_1000717EC[16 * (v3 & 0xFFF) + (v2 >> 4)];
  if (!v3)
  {
    return v3;
  }

  if ((v3 & 0xFF00) == 0xAE00)
  {
    return 0;
  }

  if ((v3 & 0xFF00) == 0xAD00)
  {
    return v3;
  }

  v5 = word_10007350C[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000038FC()
{
  sub_100045428("usage: fsck_apfs [ [-q | -n | -y] [-r num] [-l] [-s] [-W] [-S] [-o] [-b num] [-c] [-C] [-d]\n\t\t[-E path] [-F | -M] [-g | -x] [-X] [-T [-D]] ] device\n");
  sub_100045428("       -q            quick check if the superblock and checkpoint superblock are valid.\n");
  sub_100045428("       -n            verify only (answer no to questions)\n");
  sub_100045428("       -y            always repair (answer yes to questions)\n");
  sub_100045428("       -l            live fsck (lock down for verify-only)\n");
  sub_100045428("       -s            print space verification summary\n");
  sub_100045428("       -S            skip iteration of snapshots, although no repairs can be made.\n");
  sub_100045428("       -o            repair overallocations; please do not run an older fsck_apfs on newer systems with this option\n");
  sub_100045428("       -b <num>      set default cache block size to <num> KiB\n");
  sub_100045428("       -c            enable cache statistics\n");
  sub_100045428("       -C            force a sync prior to freezing for live fsck\n");
  sub_100045428("       -d            print extra debugging information\n");
  sub_100045428("       -E <path>     write warning/error information to <path>; Use - for stdout\n");
  sub_100045428("       -F            force checking of encrypted volumes\n");
  sub_100045428("       -M            skip checks which require encrypted volumes to be unlocked\n");
  sub_100045428("       -g            print output in form suitable for automatic parsing\n");
  sub_100045428("       -x            print output in XML\n");
  sub_100045428("       -X            report progress to FSKit\n");
  sub_100045428("       -W            treat warnings as errors\n");
  sub_100045428("       -T            tree node repair\n");
  sub_100045428("       -D            scavenge disk\n");

  return sub_100045428("       -r <num>      read password for encrypted external volume from file descriptor <num>\n");
}

char *sub_100003A24(const char *a1, _DWORD *a2)
{
  properties = 0;
  *a2 = -1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  v5 = &a1[v4];
  if (*v5 == 114)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  if (strncmp(v6, "disk", 4uLL))
  {
    sub_100045744("%s: not a valid disk name/path\n", a1);
    return 0;
  }

  v7 = IOBSDNameMatching(kIOMasterPortDefault, 0, v6);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
  if (!MatchingService)
  {
    sub_100045744("%s: couldn't find APFS container\n", v6);
    v11 = 0;
    goto LABEL_35;
  }

  v9 = MatchingService;
  if (IOObjectConformsTo(MatchingService, "AppleAPFSSnapshot"))
  {
    parent[0] = -1431655766;
    ParentEntry = IORegistryEntryGetParentEntry(v9, "IOService", parent);
    if (ParentEntry)
    {
      sub_100045744("%s: error %d from IORegistryEntryGetParentEntry\n", v6, ParentEntry);
      v11 = 0;
LABEL_34:
      IOObjectRelease(v9);
      goto LABEL_35;
    }

    IOObjectRelease(v9);
    v9 = parent[0];
  }

  if (IOObjectConformsTo(v9, "AppleAPFSVolume"))
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v12;
    v30 = v12;
    v27 = v12;
    v28 = v12;
    v25 = v12;
    v26 = v12;
    *parent = v12;
    v24 = v12;
    entry = -1431655766;
    if (IORegistryEntryGetLocationInPlane(v9, "IOService", parent))
    {
      sub_100045744("%s: error %d from IORegistryEntryGetLocationInPlane\n");
      goto LABEL_33;
    }

    *a2 = atoi(parent) - 1;
    if (IORegistryEntryGetParentEntry(v9, "IOService", &entry) || (IOObjectRelease(v9), v9 = entry, IORegistryEntryGetParentEntry(entry, "IOService", &entry)))
    {
      sub_100045744("%s: error %d from IORegistryEntryGetParentEntry\n");
      goto LABEL_33;
    }

    IOObjectRelease(v9);
    v9 = entry;
  }

  else if (!IOObjectConformsTo(v9, "AppleAPFSMedia"))
  {
    parent[0] = -1431655766;
    if (!IORegistryEntryCreateIterator(v9, "IOService", 1u, parent))
    {
      v13 = IOIteratorNext(parent[0]);
      if (v13)
      {
        v14 = v13;
        while (!IOObjectConformsTo(v14, "AppleAPFSMedia"))
        {
          IOObjectRelease(v14);
          v14 = IOIteratorNext(parent[0]);
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        IOObjectRelease(parent[0]);
        v15 = v9;
        v9 = v14;
      }

      else
      {
LABEL_24:
        v15 = parent[0];
      }

      IOObjectRelease(v15);
    }
  }

  if (IORegistryEntryCreateCFProperties(v9, &properties, kCFAllocatorDefault, 0))
  {
    sub_100045744("%s: error %d from IORegistryEntryCreateCFProperties\n");
    goto LABEL_33;
  }

  Value = CFDictionaryGetValue(properties, @"BSD Name");
  if (!Value)
  {
    sub_100045744("%s: can't get BSD name of container\n");
    goto LABEL_33;
  }

  memset(v22, 170, sizeof(v22));
  v21 = 0xAAAAAAAAAAAAAAAALL;
  strcpy(__s1, "/dev/r");
  if (!CFStringGetCString(Value, &__s1[6], 26, 0x8000100u))
  {
    sub_100045744("%s: can't create path to container\n");
LABEL_33:
    v11 = 0;
    if (!v9)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v11 = 1;
  if (v9)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (properties)
  {
    CFRelease(properties);
  }

  if (v11)
  {
    return strdup(__s1);
  }

  return 0;
}

uint64_t start(int a1, char *const *a2)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v27 = 0u;
  v28 = 0xFFFFFFFFFFFFFFFFLL;
  DWORD1(v29) = 1;
  srandomdev();
  sub_100049B70();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v22 = 0;
  v23 = 0;
  v7 = 0;
  v8 = 0;
  while (2)
  {
    v26 = 0;
    v9 = getopt_long(a1, a2, "b:cCdE:fFglnMopqr:sSWxXyZTD", &off_10007C000, &v26);
    v10 = 1;
    switch(v9)
    {
      case 'C':
        BYTE1(v30) = 1;
        goto LABEL_41;
      case 'D':
        v8 |= 0x100u;
        BYTE4(v30) = 1;
        goto LABEL_41;
      case 'E':
        if (optarg)
        {
          if (*optarg == 45 && !optarg[1])
          {
            v13 = __stdoutp;
          }

          else
          {
            v13 = fopen(optarg, "w");
          }

          *&v31 = v13;
          v6 |= v13 == 0;
        }

        goto LABEL_41;
      case 'F':
        LOBYTE(v30) = 1;
        goto LABEL_41;
      case 'G':
      case 'H':
      case 'I':
      case 'J':
      case 'K':
      case 'L':
      case 'N':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'U':
      case 'V':
      case 'Y':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'e':
      case 'h':
      case 'i':
      case 'j':
      case 'k':
      case 'm':
      case 't':
      case 'u':
      case 'v':
      case 'w':
        goto LABEL_50;
      case 'M':
        HIBYTE(v29) = 1;
        goto LABEL_41;
      case 'S':
        v8 |= 0x10u;
        BYTE14(v29) = 1;
        goto LABEL_41;
      case 'T':
        v8 |= 0x80u;
        BYTE3(v30) = 1;
        goto LABEL_41;
      case 'W':
        BYTE2(v30) = 1;
        goto LABEL_41;
      case 'X':
        if (os_variant_has_internal_content())
        {
          BYTE6(v30) = 1;
          goto LABEL_41;
        }

        v10 = v5;
        v22 = 1;
        goto LABEL_42;
      case 'Z':
        BYTE4(v23) = 1;
        goto LABEL_41;
      case 'b':
        dword_10007C048 = strtoul(optarg, 0, 10) << 10;
        goto LABEL_41;
      case 'c':
        byte_10009B0F0 = 1;
        goto LABEL_41;
      case 'd':
        HIDWORD(v28) = 1;
        goto LABEL_41;
      case 'f':
        goto LABEL_42;
      case 'g':
        v14 = 2;
        goto LABEL_30;
      case 'l':
        v8 |= 1u;
        v4 = 1;
        BYTE10(v29) = 1;
        goto LABEL_41;
      case 'n':
        v8 |= 4u;
        LODWORD(v29) = 1;
        BYTE9(v29) = 1;
        goto LABEL_41;
      case 'o':
        v8 |= 0x20u;
        BYTE13(v29) = 1;
        goto LABEL_41;
      case 'p':
        v7 = 1;
        goto LABEL_41;
      case 'q':
        BYTE8(v29) = 1;
        if ((v8 & 2) == 0)
        {
          LODWORD(v29) = 1;
          BYTE9(v29) = 1;
        }

        v10 = v5;
        v8 |= 8u;
        goto LABEL_42;
      case 'r':
        v25 = 0xAAAAAAAAAAAAAAAALL;
        v12 = strtol(optarg, &v25, 0);
        if (*v25 || v12 < 0)
        {
          sub_100045428("Invalid file descriptor passed\n");
          return 64;
        }

        DWORD1(v28) = v12;
        goto LABEL_41;
      case 's':
        v8 |= 0x40u;
        BYTE11(v29) = 1;
        goto LABEL_41;
      case 'x':
        v14 = 3;
LABEL_30:
        DWORD1(v29) = v14;
        goto LABEL_41;
      case 'y':
        LODWORD(v29) = 2;
        v8 |= 2u;
        BYTE9(v29) = 0;
        BYTE14(v29) = 0;
        goto LABEL_41;
      default:
        if (!v9)
        {
          if (optarg)
          {
            __endptr = 0xAAAAAAAAAAAAAAAALL;
            v11 = strtol(optarg, &__endptr, 0);
            if (*__endptr || v11 > 0x64)
            {
              v16 = "Invalid volume index passed\n";
              goto LABEL_53;
            }

            DWORD2(v28) = v11;
            LOBYTE(v23) = 1;
          }

LABEL_41:
          v10 = v5;
LABEL_42:
          v5 = v10;
          continue;
        }

        if (v9 != -1 || (v15 = optind, a1 - optind != 1))
        {
LABEL_50:
          sub_1000038FC();
          return 64;
        }

        if ((v8 & 2) != 0 && (v8 & 5) != 0)
        {
          sub_1000038FC();
          sub_100045428("Conflicting options: [ -y ] option cannot be run with the [ -n | -l ] options\n");
          return 64;
        }

        if ((v8 & 0xD) == 1)
        {
          sub_1000038FC();
          sub_100045428("Missing required option: [ -l ] option requires the [ -n ] or [ -q ] option\n");
          return 64;
        }

        if ((v8 & 0x14) == 0x10)
        {
          sub_1000038FC();
          sub_100045428("Missing required option: [ -S ] option requires the [ -n ] option\n");
          return 64;
        }

        if ((v8 & 0x20) != 0 && (v8 & 0xC) != 0)
        {
          sub_1000038FC();
          sub_100045428("Conflicting options: [ -o ] option cannot be run with the [ -n | -q ] options\n");
          return 64;
        }

        if ((v8 & 0x80) != 0 && (v8 & 0xC) != 0)
        {
          sub_1000038FC();
          sub_100045428("Conflicting options: [ -T ] option cannot be run with the [ -n | -q ] options\n");
          return 64;
        }

        if ((v8 & 0x180) == 0x100)
        {
          sub_1000038FC();
          sub_100045428("Missing required option: [ -D ] option requires the [ -T ] option\n");
          return 64;
        }

        if ((~v8 & 0x48) == 0)
        {
          sub_1000038FC();
          sub_100045428("Conflicting options: [ -s ] option cannot be run with the [ -q ] option\n");
          return 64;
        }

        qword_10009BBA8 = a2[optind];
        byte_10009BBB0 = v4;
        sub_100001AA0();
        sub_10001DAC0();
        atexit(sub_10001D998);
        if (v23)
        {
          if ((v5 & 1) == 0)
          {
            goto LABEL_72;
          }

LABEL_84:
          sub_100045744("option -f is not implemented, ignoring\n");
          if (v6)
          {
            goto LABEL_85;
          }

LABEL_73:
          if (v7)
          {
            goto LABEL_74;
          }
        }

        else
        {
          sub_100044EF0();
          if (v5)
          {
            goto LABEL_84;
          }

LABEL_72:
          if ((v6 & 1) == 0)
          {
            goto LABEL_73;
          }

LABEL_85:
          sub_100045744("Could not open error file: %s\n", optarg);
          if (v7)
          {
LABEL_74:
            sub_100045744("option -p is not implemented, ignoring\n");
          }
        }

        if ((v23 & 0x100000000) != 0)
        {
          sub_100045744("option -Z is deprecated, ignoring\n");
        }

        if (v22)
        {
          sub_100045744("option -X is specified but FSKit is not present, ignoring\n");
        }

        v18 = a2[v15];
        if ((v23 & 1) == 0)
        {
          if (access(v18, 0))
          {
            v19 = __error();
            v20 = strerror(*v19);
            sub_10004565C("unable to access %s: %s\n", v18, v20);
            return 66;
          }

          *&v27 = v18;
          *(&v27 + 1) = sub_100003A24(v18, &v28 + 2);
          if (!*(&v27 + 1))
          {
            *(&v27 + 1) = strdup(v18);
            DWORD2(v28) = -1;
          }

          return sub_10004C028(&v27);
        }

        __endptr = 0xAAAAAAAAAAAAAAAALL;
        if (strnlen(v18, 9uLL) >= 9 && !strncmp(v18, "/dev/fd/", 8uLL))
        {
          v21 = strtol(v18 + 8, &__endptr, 0);
          v16 = "Invalid disk file-descriptor passed\n";
          if (*__endptr || v21 >= 0x80000000)
          {
LABEL_53:
            sub_100045428(v16);
            return 64;
          }

          LODWORD(v28) = v21;
          *&v27 = v18;
          *(&v27 + 1) = strdup(v18);
          return sub_10004C028(&v27);
        }

        sub_100045428("Invalid disk file-descriptor path\n");
        return 64;
    }
  }
}

uint64_t sub_100004474(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *src, uint64_t a5)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = v7;
  v16[2] = v7;
  *dst = v7;
  v16[0] = v7;
  v14[0] = dst;
  v14[2] = 0xAAAAAAAA00000000;
  uuid_copy(dst, src);
  uuid_copy(v16, src);
  v14[1] = 32;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v8;
  v13 = v8;
  v11[2] = v8;
  v11[3] = v8;
  v11[0] = v8;
  v11[1] = v8;
  v9 = sub_10000457C(v11, v14);
  if (!v9)
  {
    v9 = sub_10001C898(a1);
    free(v12[1]);
  }

  return v9;
}

uint64_t sub_10000457C(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = malloc_type_calloc(1uLL, v4 + 16, 0x1000040451B5BE8uLL);
  v6 = v5;
  if (v5)
  {
    v5[2] = v4;
    v5[3] = v4;
    memcpy(v5 + 8, v3, v4);
    result = 0;
    *v6 |= 0x10u;
  }

  else
  {
    result = 12;
  }

  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_100004610(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  *__s1 = 0u;
  v6 = sub_10000D7DC();
  memset(v33, 0, sizeof(v33));
  memset(v32, 170, sizeof(v32));
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v7 = *(qword_10009BA60 + 20);
  v34 = 0;
  if (v7 < 0)
  {
    v9 = 22;
LABEL_12:
    v15 = strerror(v9);
    sub_10004565C("Failed to get password for encrypted volume from provided file descriptor: %s\n", v15);
    return v9;
  }

  v8 = v6;
  v9 = sub_10004F5EC(v7, __s1, 0x80uLL, &v34);
  if (!v9)
  {
    __s1[v34] = 0;
  }

  if (close(v7))
  {
    v10 = __error();
    v11 = strerror(*v10);
    sub_10004565C("Failed to close password file descriptor: %s\n", v11);
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v32[2] = __s1;
  v32[3] = strnlen(__s1, 0x80uLL);
  v12 = sub_10000492C(a1, *(a1[1] + 1296), *(a1[1] + 1304), (a1[1] + 72), &v25);
  v13 = v25;
  if (v12)
  {
    v9 = v12;
  }

  else
  {
    v17 = sub_100004A1C(v25 + 32, (*(a2 + 40) + 240), 2, 0);
    if (v17)
    {
      v18 = *(v17 + 18);
      v32[0] = v17 + 24;
      v32[1] = v18;
      v19 = sub_100004A1C(v13 + 32, (*(a2 + 40) + 240), 3, 0);
      if (v19)
      {
        v20 = sub_10000492C(a1, *(v19 + 24), *(v19 + 32), (*(a2 + 40) + 240), &v26);
        if (v20)
        {
          v9 = v20;
          v14 = v26;
        }

        else
        {
          v27 = malloc_type_calloc(1uLL, 0x40uLL, 0xDCEA155CuLL);
          v14 = v26;
          if (v27)
          {
            v21 = 0;
            v28 = 64;
            LODWORD(v29) = 0;
            while (1)
            {
              v22 = sub_100004A1C(v14 + 32, byte_100076D0C, 3, v21);
              if (!v22)
              {
                break;
              }

              v21 = v22;
              v23 = *(v22 + 18);
              v30 = v22 + 24;
              v31 = v23;
              if (!(*(v8 + 8))(v33, &v32[2], &v30, v32, &v27))
              {
                v9 = sub_10000457C(a3, &v27);
                goto LABEL_10;
              }
            }

            v9 = 1;
            v24 = strerror(1);
            sub_10004565C("Failed to unwrap encrypted volume keybag using the provided password: %s\n", v24);
          }

          else
          {
            v9 = 12;
          }
        }
      }

      else
      {
        sub_10004565C("Failed to get keybag entry with tag %d for volume %s\n", 3, (*(a2 + 40) + 704));
        v14 = 0;
        v9 = 2;
      }

      goto LABEL_10;
    }

    v9 = 2;
    sub_10004565C("Failed to get keybag entry with tag %d for volume %s\n", 2, (*(a2 + 40) + 704));
  }

  v14 = 0;
LABEL_10:
  free(v13);
  free(v14);
  free(v27);
  return v9;
}

uint64_t sub_10000492C(uint64_t *a1, size_t a2, size_t count, unsigned __int8 *a4, void *a5)
{
  if (count >> 20 || (v6 = a2, a2 = *(a1[1] + 36), count * a2 >= 0x100000))
  {
    sub_10004565C("Keybag size is too large\n", a2);
    return 92;
  }

  else
  {
    v10 = malloc_type_calloc(count, a2, 0xE829BD6FuLL);
    if (v10)
    {
      v11 = v10;
      v12 = sub_100004474(*a1, v6, count, a4, v10);
      v13 = v12;
      if (v12)
      {
        v14 = strerror(v12);
        sub_10004565C("Failed to get keybag : %s\n", v14);
        free(v11);
      }

      else
      {
        *a5 = v11;
      }
    }

    else
    {
      sub_10004565C("Failed to allocate memory for keybag\n");
      return 12;
    }
  }

  return v13;
}

unint64_t sub_100004A1C(uint64_t a1, unsigned __int8 *uu, int a3, uint64_t a4)
{
  v6 = a1 + *(a1 + 4);
  if (a4)
  {
    v7 = *(a4 + 18);
    v8 = v7 + 24;
    v9 = v7 - ((v7 + 24) & 0xF) + 40;
    if ((v8 & 0xF) == 0)
    {
      v9 = v8;
    }

    v10 = a4 + v9;
  }

  else
  {
    v10 = a1 + 16;
  }

  while (v10 < v6)
  {
    if (*(v10 + 16) == a3 && (uuid_is_null(uu) || !uuid_compare(uu, v10)))
    {
      return v10;
    }

    v11 = *(v10 + 18);
    v12 = v11 + 24;
    v13 = v11 - ((v11 + 24) & 0xF) + 40;
    if ((v12 & 0xF) == 0)
    {
      v13 = v12;
    }

    v10 += v13;
  }

  return 0;
}

BOOL sub_100004AE0(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x19)
  {
    return 0;
  }

  if (*a1 != 0x6C7070612E6D6F63 || *(a1 + 7) != 0x2E736670612E656CLL)
  {
    return 0;
  }

  return *(a1 + 15) == 0x726F746167727570 && *(a1 + 23) == 11897;
}

uint64_t sub_100004B50(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  v20[0] = a4;
  v20[1] = a5;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = a3;
  v11 = sub_10002D04C(a1->i64, a2, &v18);
  if (!v11)
  {
    sub_10004565C("no snap_meta tree entry found for omap_snap entry with xid %llu\n", a3);
    if ((a6 & 1) == 0 && !sub_10004758C(qword_10009BA58, "Delete omap_snap entries? "))
    {
      return 89;
    }

    LODWORD(v20[0]) = v7 | 1;
    v12 = sub_10003B12C(v18, 0, &v19, 8, v20, 16);
    if (v12)
    {
      v11 = v12;
      v13 = strerror(v12);
      sub_10004565C("error updating omap_snap entry: %s\n", v13);
      v14 = 657;
LABEL_8:
      sub_100049C40(v14, v11);
      return v11;
    }

    v15 = sub_1000316E8(a1, *(*(a2 + 72) + 24), *(a2 + 112), *(*(a2 + 40) + 8), *(*(a2 + 72) + 8), *(a1->i64[1] + 16), 2);
    v11 = v15;
    if (v15)
    {
      v16 = strerror(v15);
      sub_10004565C("error updating the reap list: %s\n", v16);
      v14 = 658;
      goto LABEL_8;
    }
  }

  return v11;
}

uint64_t sub_100004C90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_10002D2DC(a1, a2, &v22);
  if (!v8)
  {
    sub_10004565C("no omap_snap tree entry found for snap_meta entry with xid %llu\n", *a3 & 0xFFFFFFFFFFFFFFFLL);
    if ((a5 & 1) == 0 && !sub_10004758C(qword_10009BA58, "Delete snap_meta entries? "))
    {
      return 89;
    }

    v9 = sub_10002B594(v22, *(a4 + 48), (a4 + 50));
    if (v9)
    {
      v8 = v9;
      if (v9 != 2)
      {
        v17 = strerror(v9);
        sub_10004565C("failed to remove snap_name entry: %s\n", v17);
        v18 = 660;
        goto LABEL_15;
      }

      sub_100045744("tried to remove snap_name entry but it's not there!\n");
    }

    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v24[10] = v10;
    *__str = v10;
    *v24 = v10;
    v11 = snprintf(__str, 0x2AuLL, "%s%s%llx", "com.apple.apfs.", "purgatory.", *a3 & 0xFFFFFFFFFFFFFFFLL);
    v12 = malloc_type_malloc(v11 + 51, 0x10000401FD4EAF9uLL);
    if (!v12)
    {
      sub_10004565C("failed to allocate memory for repair\n");
      v8 = 12;
      v18 = 704;
      v19 = 12;
LABEL_16:
      sub_100049C40(v18, v19);
      return v8;
    }

    v13 = v12;
    v14 = v11 + 1;
    v12[24] = v14;
    memcpy(v12 + 25, __str, v14);
    v15 = sub_10003B12C(v22, 0, a3, 8, v13, v14 + 50);
    if (v15)
    {
      v8 = v15;
      v16 = strerror(v15);
      sub_10004565C("error updating snap_meta entry: %s\n", v16);
      sub_100049C40(0x295, v8);
      free(v13);
      return v8;
    }

    v8 = sub_10002B470(v22, v13[24], v13 + 25, *a3 & 0xFFFFFFFFFFFFFFFLL);
    free(v13);
    if (!v8)
    {
      return v8;
    }

    v20 = strerror(v8);
    sub_10004565C("failed to insert snap_name entry: %s\n", v20);
    v18 = 662;
LABEL_15:
    v19 = v8;
    goto LABEL_16;
  }

  return v8;
}

uint64_t sub_100004ED8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  BYTE8(v23) = 1;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  BYTE8(v19) = 1;
  if (*(*(a2 + 72) + 56))
  {
    v6 = sub_10002D04C(a1, a2, &v27);
    if (v6)
    {
      v7 = v6;
      sub_10004565C("unable to init omap_snap tree for snapshot repair\n");
      v8 = 663;
LABEL_15:
      sub_100049C40(v8, v7);
      return v7;
    }

    v9 = sub_10003A444(v22, v27, 0, 0, 0);
    if (v9)
    {
      v7 = v9;
      v10 = strerror(v9);
      sub_10004565C("unable to init omap_snap tree iterator for snapshot repair: %s\n", v10);
      v8 = 664;
      goto LABEL_15;
    }
  }

  if (*(*(a2 + 40) + 152))
  {
    v11 = sub_10002D2DC(a1, a2, &v26);
    if (v11)
    {
      v7 = v11;
      sub_10004565C("unable to init snap_meta tree for snapshot repair\n");
      v12 = 665;
      goto LABEL_11;
    }

    v13 = sub_10003A444(v18, v26, 0, 0, 0);
    if (v13)
    {
      v7 = v13;
      v14 = strerror(v13);
      sub_10004565C("unable to init snap_meta tree iterator for snapshot repair: %s\n", v14);
      v12 = 666;
LABEL_11:
      sub_100049C40(v12, v7);
      if (*&v22[0])
      {
        (*&v22[0])(v22);
      }

      return v7;
    }
  }

  v15 = sub_10002C6E8(v22, v18, sub_10000508C, a3);
  v7 = v15;
  if (v15)
  {
    v16 = strerror(v15);
    sub_10004565C("error iterating trees during snapshot repair: %s\n", v16);
    v8 = 667;
    goto LABEL_15;
  }

  return v7;
}

uint64_t sub_10000508C(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (*a1 && (*(a1 + 16) < 8u || *(a1 + 20) < 0x10u))
  {
    return 22;
  }

  if (!v7)
  {
    return sub_100005160(a4, *v6, *v5, v5[1]);
  }

  if (*(a2 + 16) < 8u)
  {
    return 22;
  }

  v10 = *v7;
  if (*v7 >> 60 != 1)
  {
    result = 0;
    *a3 = 2;
    return result;
  }

  if (*(a2 + 20) < 0x32u)
  {
    return 22;
  }

  if (!v6)
  {
    return sub_1000051E4(a4, v7, v8);
  }

  v11 = *v6;
  if (*v6 < (v10 & 0xFFFFFFFFFFFFFFFuLL))
  {
    *a3 = 1;
    return sub_100005160(a4, v11, *v5, v5[1]);
  }

  if ((v10 & 0xFFFFFFFFFFFFFFFuLL) < v11)
  {
    *a3 = 2;
    return sub_1000051E4(a4, v7, v8);
  }

  return 0;
}

uint64_t sub_100005160(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (a3)
  {
    return 0;
  }

  sub_10004565C("no snap_meta tree entry found for omap_snap entry with xid %llu\n", a2);
  sub_100049C40(0x290, 92);
  return sub_100027D7C(a1, 3u, 0, 0, 1, &v6, 8u, v7, 0x10u);
}

uint64_t sub_1000051E4(_DWORD *a1, char *a2, uint64_t a3)
{
  if (sub_100004AE0(a3 + 50, *(a3 + 48)))
  {
    sub_100045744("found a snapshot in the purgatory (xid %llu) with no corresponding omap entry\n", *a2 & 0xFFFFFFFFFFFFFFFLL);
    return 0;
  }

  else
  {
    sub_10004565C("no omap_snap tree entry found for snap_meta entry with xid %llu\n", *a2 & 0xFFFFFFFFFFFFFFFLL);
    sub_100049C40(0x293, 92);
    return sub_100027D7C(a1, 4u, 0, 0, 1, a2, 8u, a3, *(a3 + 48) + 50);
  }
}

void sub_100005298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 48;
  if (!a3)
  {
    v3 = 40;
  }

  v4 = *(a2 + v3);
  byte_10007CF40 = 0;
  v5 = *(v4 + 964);
  if (v5 > 0x3F)
  {
    if (v5 != 576 && v5 != 64)
    {
      return;
    }
  }

  else
  {
    if (*(v4 + 964))
    {
      v6 = v5 == 2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      return;
    }
  }

  if (*(v4 + 1056) == *(v4 + 16) && (a3 || (*(*(a2 + 40) + 1064) & 2) == 0))
  {
    if (*(v4 + 1072))
    {
      if (!sub_100039748(&unk_10007CF48, 0, 0, 0x8000000, 2, 0, 0, 4096, 4, 8, 0, 0, sub_100030C54))
      {
        sub_10003B84C(&unk_10007CF48, 0, 64);
      }

      if (sub_10001C108(&unk_10007CF48, "doc id", sub_1000053DC))
      {
        sub_100045744("failed to register the doc id tree in the fsck memory storage\n");
        sub_100049C40(0x584, 12);
      }
    }

    dword_10007CF88 = 0;
    byte_10007CF40 = 1;
  }
}

uint64_t sub_1000053DC()
{
  result = sub_10003B928(&unk_10007CF48, 0);
  byte_10007CF40 = 0;
  return result;
}

uint64_t sub_100005408(uint64_t *a1, int8x16_t *a2, unint64_t a3, int *a4, uint64_t a5, _DWORD *a6)
{
  v6 = a2[3].i64[1];
  v37 = *a4;
  if (byte_10007CF40 != 1)
  {
    return 0;
  }

  v36 = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  if (qword_10007CF80)
  {
    v34 = 8;
    v35 = 4;
    v14 = sub_1000397B8(dword_10007CF48, 0, 0, &v37, &v35, 4, &v36, &v34);
    if (!v14)
    {
      if (v36)
      {
        if (v36 == a3)
        {
          goto LABEL_24;
        }

        sub_10004565C("inode with file-id %llu has doc-id %u but doc-id tree record has file-id %llu\n", a3, *a4, v36);
        sub_100049C40(0x3FB, 92);
        if (v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_10004565C("inode with file-id %llu has doc-id %u but doc-id is already in use\n", a3, *a4);
        sub_100049C40(0x3FC, 92);
        if (v6)
        {
          goto LABEL_17;
        }

        if (!sub_10004758C(qword_10009BA58, "Allocate new doc-id %u for file-id %llu? ", *(a5 + 48), a3))
        {
          return 92;
        }

        v30 = *(a5 + 48);
        *(a5 + 48) = v30 + 1;
        *a4 = v30;
        v31 = sub_100046EA0(a1, a2);
        if (v31)
        {
          v15 = v31;
          v32 = strerror(v31);
          sub_10004565C("failed to write apfs superblock : %s\n", v32);
          v24 = 1021;
          goto LABEL_27;
        }

        *a6 = 1;
        v37 = *a4;
      }

      v36 = a3;
LABEL_22:
      v20 = sub_100027D7C(a2[48].i32, 9u, 2, 0, 1, &v37, 4u, &v36, 8u);
      if (v20)
      {
        v15 = v20;
        v21 = v36;
        v22 = v37;
        v23 = strerror(v20);
        sub_10004565C("failed to insert doc-id tree repair for doc-id %u, file-id %llu : %s\n", v22, v21, v23);
        v24 = 1025;
LABEL_27:
        sub_100049C40(v24, v15);
        return v15;
      }

      goto LABEL_24;
    }

    v15 = v14;
    if (v14 != 2)
    {
      v18 = *a4;
      v19 = strerror(v14);
      sub_10004565C("failed to lookup doc-id %u error : %s\n", v18, v19);
      sub_100049C40(0x400, v15);
LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

    v11 = a2[3].i64[1];
  }

  v33 = -86;
  v16 = sub_10003FD88(a1, a2, v11, a3, &v33);
  if (v16)
  {
LABEL_18:
    v15 = v16;
    goto LABEL_19;
  }

  if (v33)
  {
LABEL_8:
    v17 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    sub_10004565C("inode with file-id %llu has doc-id %u but doc-id tree record is missing\n", a3, *a4);
    sub_100049C40(0x3FF, 92);
LABEL_17:
    v16 = sub_10002797C();
    goto LABEL_18;
  }

  v29 = a2[2].i64[1];
  if ((*(v29 + 1064) & 1) != 0 && *(v29 + 1088) < a3)
  {
    goto LABEL_8;
  }

  sub_10004565C("inode with file-id %llu has doc-id %u but doc-id tree record is missing\n", a3, *a4);
  sub_100049C40(0x3FE, 92);
  if (*(a2[2].i64[1] + 1072))
  {
    v15 = 0;
    v36 = a3;
    v17 = 1;
  }

  else
  {
    if (sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree building on next mount? "))
    {
      v16 = sub_1000057C4(a1, a2);
      goto LABEL_18;
    }

    v17 = 0;
    v15 = 92;
  }

LABEL_20:
  if (!v15)
  {
    if (v17)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (qword_10007CF80)
    {
      v36 = 0;
      v25 = sub_10003B12C(dword_10007CF48, 0, &v37, 4, &v36, 8);
      v15 = v25;
      if (!v25)
      {
        ++dword_10007CF88;
        return v15;
      }

      v26 = v37;
      v27 = strerror(v25);
      sub_10004565C("failed to mark cached doc-id tree record %d as verified error : %s\n", v26, v27);
      v24 = 1026;
      goto LABEL_27;
    }

    return 0;
  }

  return v15;
}

uint64_t sub_1000057C4(uint64_t *a1, int8x16_t *a2)
{
  *(a2[2].i64[1] + 1064) = *(a2[2].i64[1] + 1064) & 0xFFFFFFFC | 2;
  v2 = sub_100046EA0(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = strerror(v2);
    sub_10004565C("failed to write apfs superblock : %s\n", v4);
    sub_100049C40(0x3FA, v3);
  }

  else
  {
    byte_10007CF40 = 0;
  }

  return v3;
}

uint64_t sub_10000583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = -1431655766;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  if (qword_10007CF80 && (v15 = 0, sub_10003B724(&unk_10007CF48, 0, &v15), v15 != dword_10007CF88))
  {
    v13 = 8;
    v14 = 4;
    for (i = sub_100039CDC(&unk_10007CF48, 0, &v17, &v14, &v16, &v13); !i; i = sub_1000397B8(&unk_10007CF48, 0, 2, &v17, &v12, 4, &v16, &v11))
    {
      if (v16)
      {
        sub_100045744("doc-id tree: record exists for doc-id %u, file-id %llu but no inode references this doc-id\n", v17, v16);
        sub_100049C40(0x403, 92);
        if (a3)
        {
          sub_10002797C();
        }

        else
        {
          v7 = sub_100027D7C((a2 + 768), 9u, 0, 0, 0, &v17, 4u, 0, 0);
          if (v7)
          {
            v5 = v7;
            v9 = v17;
            v10 = strerror(v7);
            sub_10004565C("failed to add doc-id tree repair record, doc-id %u : %s\n", v9, v10);
            sub_100049C40(0x404, v5);
            goto LABEL_13;
          }
        }
      }

      v11 = 8;
      v12 = 4;
    }

    if (i == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = i;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:
  sub_10003B928(&unk_10007CF48, 0);
  byte_10007CF40 = 0;
  return v5;
}

uint64_t sub_1000059E8(uint64_t *a1, int8x16_t *a2, uint64_t a3)
{
  v6 = 6;
  if (!a3)
  {
    v6 = 5;
  }

  v7 = a2->i64[v6];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[2] = v8;
  v30[3] = v8;
  v30[0] = v8;
  v30[1] = v8;
  v9 = sub_100039748(v30, a1, a2, *(v7 + 1068) & 0xC0000000, *(v7 + 1068), 34, 0, *(a1[1] + 36), 4, 8, 0, *(v7 + 1072), sub_100030C54);
  if (v9)
  {
    v10 = v9;
    v11 = strerror(v9);
    sub_10004565C("failed to initialize the doc-id tree: %s\n", v11);
    v12 = 1031;
LABEL_5:
    sub_100049C40(v12, v10);
    return v10;
  }

  if (*(v7 + 1072))
  {
    if (byte_10007CF40 == 1)
    {
      LODWORD(v29[0]) = 0;
      if (qword_10007CF80)
      {
        v14 = sub_10003570C(v30, a3, sub_100005D60, v29, 0, 0);
        v10 = v14;
        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = strerror(v14);
        sub_10004565C("failed to populate cached doc-id tree : %s\n", v15);
        sub_100049C40(0x406, v10);
        byte_10007CF40 = 0;
        if (LODWORD(v29[0]))
        {
LABEL_24:
          sub_10003B928(dword_10007CF48, 0);
LABEL_25:
          if (v10)
          {
            return v10;
          }

          goto LABEL_26;
        }

        if (a3)
        {
          v16 = sub_10002797C();
        }

        else
        {
          if (!sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree building on next mount? "))
          {
            goto LABEL_23;
          }

          v16 = sub_1000057C4(a1, a2);
        }

        v10 = v16;
LABEL_23:
        if (byte_10007CF40)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v17 = sub_10003570C(v30, a3, 0, 0, 0, 0);
      if (v17)
      {
        v10 = v17;
        v18 = strerror(v17);
        sub_10004565C("failed to traverse doc-id tree : %s\n", v18);
        sub_100049C40(0x40A, v10);
        if (a3)
        {
          v19 = sub_10002797C();
        }

        else
        {
          if (!sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree building on next mount? "))
          {
            return v10;
          }

          v19 = sub_1000057C4(a1, a2);
        }

        v10 = v19;
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v20 = *(v7 + 1080);
  if (!v20)
  {
    return 0;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[2] = v21;
  v29[3] = v21;
  v29[0] = v21;
  v29[1] = v21;
  v22 = sub_100039748(v29, a1, a2, *(v7 + 1068) & 0xC0000000, *(v7 + 1068), 34, 0, *(a1[1] + 36), 4, 8, 0, v20, sub_100030C54);
  if (v22)
  {
    v10 = v22;
    v23 = strerror(v22);
    sub_10004565C("failed to initialize the prev doc-id tree: %s\n", v23);
    v12 = 1035;
    goto LABEL_5;
  }

  v24 = sub_10003570C(v29, a3, 0, 0, 0, 0);
  if (!v24)
  {
    return 0;
  }

  v25 = v24;
  v26 = strerror(v24);
  sub_10004565C("failed to traverse prev doc-id tree : %s\n", v26);
  sub_100049C40(0x40E, v25);
  if (a3)
  {
    return sub_10002797C();
  }

  v10 = 0;
  v28 = *(v7 + 964);
  if (v28 > 0x3F)
  {
    if (v28 != 64 && v28 != 576)
    {
      goto LABEL_40;
    }
  }

  else if (*(v7 + 964) && v28 != 2)
  {
LABEL_40:
    v10 = v25;
    if (!sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree cleanup on next mount? "))
    {
      return v10;
    }

    return sub_1000057C4(a1, a2);
  }

  return v10;
}

uint64_t sub_100005D60(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, void *a5, uint64_t a6, _DWORD *a7)
{
  v10 = *(a2 + 56);
  if (a7)
  {
    *a7 = 0;
  }

  if (byte_10007CF40 != 1)
  {
    return 0;
  }

  if (*a5)
  {
    v11 = sub_10003B12C(dword_10007CF48, 0, a3, 4, a5, 8);
    v12 = v11;
    if (v11)
    {
      strerror(v11);
      sub_10004565C("failed to insert cached doc-id record, doc-id %u,file-id %llu : %s\n");
    }
  }

  else
  {
    sub_10004565C("invalid doc-id record, file-id is 0 for doc-id %u\n", *a3);
    sub_100049C40(0x3F9, 92);
    if (v10)
    {
      v12 = sub_10002797C();
    }

    else
    {
      v14 = sub_100027D7C((a2 + 768), 9u, 0, 0, 1, a3, 4u, 0, 0);
      v12 = v14;
      if (v14)
      {
        strerror(v14);
        sub_10004565C("failed to add doc-id repair (deletion), doc-id %u : %s\n");
      }
    }
  }

  if (a7)
  {
    *a7 = v12;
  }

  return v12;
}

char *sub_100005EA4()
{
  if (!sub_100039748(&unk_10007CF90, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 80, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_10007CF90, 0, 64);
  }

  result = sub_10001C108(&unk_10007CF90, "file info", sub_100005F78);
  if (result)
  {
    sub_100045744("failed to register the file info tree in the fsck memory storage\n");

    return sub_100049C40(0x586, 12);
  }

  return result;
}

uint64_t sub_100005F78()
{
  if (qword_10007CFC8)
  {
    result = sub_10003B928(&unk_10007CF90, 0);
  }

  qword_10007D020 = 0;
  return result;
}

uint64_t sub_100005FD0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v9[0] = a5 & 0xFFFFFFFFFFFFFFFLL | 0xD000000000000000;
  v9[1] = a6 & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
  if (a1)
  {
    return sub_100027D7C(a1, 7u, a2, a3, a4, v9, 0x10u, a7, a8);
  }

  return sub_10002797C();
}

void sub_10000604C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  if (qword_10007CFC8)
  {
    sub_100006178(a2);
    if (!v16)
    {
      if (byte_10007D01A == 1)
      {
        if (!a8)
        {
          a8 = a2;
        }

        sub_100045744("file info: found more than one attribution tag with matching computed hash, invalid entry (hash %llu)\n", a8);
        sub_100049C40(0x557, 92);
        if (a7)
        {
          v17 = a7;
        }

        else
        {
          v17 = 9;
        }

        sub_100005FD0(a1, 0, 0, 1, v17, a8, 0, 0);
      }

      else
      {
        *&xmmword_10007CFD0 = a3;
        qword_10007CFE0 = a4;
        *&xmmword_10007CFF0 = a5;
        byte_10007D01A = 1;
        *&xmmword_10007D008 = a7;
        *(&xmmword_10007D008 + 1) = a8;
        word_10007D018 = a6;
      }
    }
  }
}

double sub_100006178(uint64_t a1)
{
  v9 = a1;
  if (!sub_100006A18(a1) && !qword_10007D020)
  {
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    v2 = 80;
    v3 = 8;
    if ((sub_1000397B8(dword_10007CF90, 0, 0, &v9, &v3, 8, &v4, &v2) & 0xFFFFFFFD) == 0)
    {
      qword_10007D020 = v9;
      xmmword_10007CFF0 = v6;
      *&qword_10007D000 = v7;
      *(&xmmword_10007D008 + 8) = v8;
      result = *&v5;
      xmmword_10007CFD0 = v4;
      *&qword_10007CFE0 = v5;
    }
  }

  return result;
}

void sub_100006234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10007CFC8)
  {
    sub_100006178(a2);
    if (!v6)
    {
      v7 = (*(&xmmword_10007CFD0 + 1))++ == -1;
      if (v7 << 63 >> 63 != v7)
      {
        sub_100045744("file info: computed count overflow for hash (%llu)\n", a2);
        *(&xmmword_10007CFD0 + 1) = -1;
        sub_100049C40(0x51A, 84);
      }

      v8 = __CFADD__(qword_10007CFE8, a3);
      qword_10007CFE8 += a3;
      if (v8)
      {
        sub_100045744("file info: computed size overflow for hash (%llu)\n", a2);
        qword_10007CFE8 = -1;
        sub_100049C40(0x51B, 84);
      }

      if (!qword_10007D000)
      {
        qword_10007D000 = a1;
      }
    }
  }
}

void sub_10000632C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_10007CFC8)
    {
      sub_100006178(a1);
      if (!v4)
      {
        v5 = __OFADD__(*(&xmmword_10007CFF0 + 1), a2);
        *(&xmmword_10007CFF0 + 1) += a2;
        if (v5)
        {
          sub_100045744("file info: clone size overflow for hash (%llu)\n", a1);
          *(&xmmword_10007CFF0 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          sub_100049C40(0x555, 84);
        }
      }
    }
  }
}

void sub_1000063C4(uint64_t a1, uint64_t a2)
{
  if (qword_10007CFC8)
  {
    sub_100006178(a1);
    if (!v4)
    {
      v5 = __CFADD__(qword_10007CFE8, a2);
      qword_10007CFE8 += a2;
      if (v5)
      {
        sub_100045744("file info: computed size overflow for hash (%llu)\n", a1);
        qword_10007CFE8 = -1;
        sub_100049C40(0x567, 84);
      }
    }
  }
}

uint64_t sub_100006454(uint64_t a1, void *a2, uint64_t a3)
{
  if (!qword_10007CFC8)
  {
    return 0;
  }

  v6 = sub_100006A18(0);
  if (v6)
  {
    v7 = v6;
    if (qword_10007CFC8)
    {
      sub_10003B928(dword_10007CF90, 0);
    }

    qword_10007D020 = 0;
    return v7;
  }

  v56[0] = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 + 96;
  }

  v48 = 0;
  v49 = 0;
  v50 = v8;
  v9 = malloc_type_malloc(0xEE0uLL, 0xA200E25EuLL);
  v10 = sub_1000019A8();
  if (!v9)
  {
    sub_100045744("file info: failed to allocate memory\n");
    v7 = 12;
    sub_100049C40(0x51D, 12);
    goto LABEL_17;
  }

  v11 = v10;
  v46 = 80;
  v47 = 8;
  v12 = sub_1000397B8(dword_10007CF90, 0, 1, v56, &v47, 8, &v51, &v46);
  if (v12)
  {
    v13 = v12 == 2;
LABEL_13:
    if (v13)
    {
      v7 = 0;
    }

    else
    {
      v7 = v12;
    }

    goto LABEL_17;
  }

  v35 = v11;
  v36 = 0;
  v15 = 0;
  v16 = -1;
  do
  {
    if (*(&v54 + 1))
    {
      v17 = *(&v54 + 1);
    }

    else
    {
      v17 = 9;
    }

    v18 = v55;
    if (v55)
    {
      v19 = v55;
    }

    else
    {
      v19 = v56[0];
    }

    if (v54 || BYTE10(v55) != 1)
    {
      if (*(&v54 + 1))
      {
        sub_100049C40(0x537, 92);
        v27 = sub_100005FD0(v8, 1, 26, 1, *(&v54 + 1), v19, 0, 0);
        if (v27)
        {
          return v27;
        }

        v18 = v55;
      }

      if (v18)
      {
        v27 = sub_100005FD0(v8, 1, 27, 1, 9, v19, v56, 8u);
        if (v27)
        {
          return v27;
        }
      }

      if ((BYTE10(v55) & 1) == 0)
      {
        v45 = 0xAAAAAAAAAAAAAAAALL;
        v39 = 0xD000000000000009;
        v40 = v56[0] & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
        v44 = 16;
        v43 = 3808;
        v28 = sub_10003F8AC(a1, a2, 0xDu, &v45);
        if (v28)
        {
          goto LABEL_67;
        }

        v29 = sub_1000397B8(v45, a3, 0, &v39, &v44, v44, v9, &v43);
        v7 = v29;
        if ((v29 & 0xFFFFFFFD) != 0)
        {
          goto LABEL_17;
        }

        if (v29 == 2 || sub_100006B08(&v39, v9, v43))
        {
          v15 += *(&v51 + 1);
          v48 = v15;
          if (v54 < v16)
          {
            v16 = v54;
          }

          v36 = 1;
          goto LABEL_60;
        }

        v30 = v9[1];
        v31 = *(&v51 + 1) + *v9;
        *&v51 = *v9;
        *(&v51 + 1) = v31;
        BYTE10(v55) = 1;
        *&v52 = v30;
        *(&v52 + 1) += v30;
        v32 = *(&v53 + 1) + v9[2];
        *&v53 = v9[2];
        *(&v53 + 1) = v32;
        WORD4(v55) = *(v9 + 12);
        *&v54 = 16;
        v28 = sub_10003B12C(dword_10007CF90, 0, v56, 8, &v51, 80);
        if (v28)
        {
LABEL_67:
          v7 = v28;
          goto LABEL_17;
        }
      }

      if (WORD4(v55) > 1u)
      {
        goto LABEL_60;
      }

      if (*(&v51 + 1) != v51)
      {
        sub_100045744("file info: attribution tag (hash %llu): total count (%llu) does not match computed count (%llu)\n", v56[0], v51, *(&v51 + 1));
        sub_100049C40(0x51F, 92);
        v39 = *(&v51 + 1);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v27 = sub_100005FD0(v8, 1, 28, 0, 9, v56[0], &v39, 0x1Au);
        if (v27)
        {
          return v27;
        }
      }

      if (*(&v52 + 1) != v52)
      {
        sub_100045744("file info: attribution tag (hash %llu): physical size (%llu) does not match computed size (%llu)\n", v56[0], v52, *(&v52 + 1));
        sub_100049C40(0x520, 92);
        v39 = 0;
        v40 = *(&v52 + 1);
        v41 = 0;
        v42 = 0;
        v27 = sub_100005FD0(v8, 1, 29, 0, 9, v56[0], &v39, 0x1Au);
        if (v27)
        {
          return v27;
        }
      }

      if (v35)
      {
        sub_100045614("file info: attribution tag (hash %llu) skipping clone size repair because the clone mapping repairs were aborted\n", v56[0]);
        goto LABEL_60;
      }

      if ((v53 & 0x8000000000000000) != 0)
      {
        sub_100045614("file info: attribution tag (hash %llu) skipping clone size repair: full clone size %llu > %llu\n", v56[0], v53, 0x7FFFFFFFFFFFFFFFLL);
        v33 = 1440;
LABEL_59:
        sub_100049C40(v33, 92);
        goto LABEL_60;
      }

      if ((*(&v53 + 1) & 0x8000000000000000) != 0)
      {
        sub_100045614("file info: attribution tag (hash %llu) skipping clone size repair because the computed clone size is negative\n", v56[0]);
        v33 = 1421;
        goto LABEL_59;
      }

      if (*(&v53 + 1) == v53)
      {
        goto LABEL_60;
      }

      sub_100045744("file info: attribution tag (hash %llu): full clone size (%llu) does not match computed size (%llu)\n", v56[0], v53, *(&v53 + 1));
      sub_100049C40(0x556, 92);
      v39 = 0;
      v40 = 0;
      v41 = *(&v53 + 1);
      v42 = 0;
      v24 = v56[0];
      v25 = &v39;
      v20 = v8;
      v21 = 1;
      v22 = 30;
      v23 = 9;
      v26 = 26;
    }

    else
    {
      sub_100045744("file info: orphan attribution tag with hash (%llu)\n", v56[0]);
      sub_100049C40(0x51E, 92);
      v20 = v8;
      v21 = 0;
      v22 = 0;
      v23 = v17;
      v24 = v19;
      v25 = 0;
      v26 = 0;
    }

    v27 = sub_100005FD0(v20, v21, v22, 0, v23, v24, v25, v26);
    if (v27)
    {
      return v27;
    }

LABEL_60:
    v37 = 80;
    v38 = 8;
    v34 = sub_1000397B8(dword_10007CF90, 0, 2, v56, &v38, 8, &v51, &v37);
  }

  while (!v34);
  if (v34 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v34;
  }

  if (v36)
  {
    v39 = v16 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    v12 = sub_10003FA04(a1, a2, a3, 0, &v39, 8u, sub_100006B98);
    v13 = v12 == -1;
    goto LABEL_13;
  }

LABEL_17:
  free(v9);
  sub_10003B928(dword_10007CF90, 0);
  return v7;
}

uint64_t sub_100006A18(uint64_t a1)
{
  if (qword_10007D020)
  {
    v1 = qword_10007D020 == a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v5 = qword_10007D020;
  if (xmmword_10007D008 != 0 || (*(&xmmword_10007CFD0 + 1) ? (v3 = *(&xmmword_10007CFD0 + 1) == xmmword_10007CFD0) : (v3 = 0), !v3 || (qword_10007CFE8 ? (v4 = qword_10007CFE8 == qword_10007CFE0) : (v4 = 0), !v4 || *(&xmmword_10007CFF0 + 1) != xmmword_10007CFF0)))
  {
    result = sub_10003B12C(dword_10007CF90, 0, &v5, 8, &xmmword_10007CFD0, 80);
LABEL_22:
    if (result)
    {
      return result;
    }

    goto LABEL_23;
  }

  result = sub_10003B708(dword_10007CF90, 0, &v5, 8);
  if (result != 2)
  {
    goto LABEL_22;
  }

LABEL_23:
  result = 0;
  qword_10007D020 = 0;
  return result;
}

BOOL sub_100006B08(uint64_t a1, uint64_t a2, int a3)
{
  *&__n[1] = 0;
  __n[0] = -21846;
  v4 = 1;
  if (!sub_100040474((a2 + 26), a3 - 26, 1, &__n[1], __n, 0, 0))
  {
    v5 = *(a1 + 8) & 0x1FFFFFFFFFFFFFLL;
    v6 = *&__n[1];
    v7 = strnlen(*&__n[1], __n[0]);
    return v5 != sub_10004F548(v6, v7);
  }

  return v4;
}

uint64_t sub_100006B98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v21 = 0;
  v22 = 0;
  v7 = sub_100040B74(a3, a4, 19, &v22);
  if (v7)
  {
    if (v7 == 2)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    v17 = 80;
    v18 = 8;
    if (!sub_1000397B8(dword_10007CF90, 0, 1, &v21, &v18, 8, v19, &v17))
    {
      while ((BYTE10(v20) & 1) != 0 || v22 != v21)
      {
        v15 = 80;
        v16 = 8;
        if (sub_1000397B8(dword_10007CF90, 0, 2, &v21, &v16, 8, v19, &v15))
        {
          return 0;
        }
      }

      sub_100045744("file info: inode (jobj_id 0x%llx) has unexpected attribution tag with hash (%llu)\n", *a1 & 0xFFFFFFFFFFFFFFFLL, v22);
      sub_100049C40(0x51C, 92);
      v10 = sub_100026C40(a5[2], *a1, 19);
      if (v10 || (v10 = sub_100026C04(a5[2], *a1 & 0xFFFFFFFFFFFFFFFLL, 0x10000000), v10))
      {
        v8 = v10;
        v11 = *a1 & 0xFFFFFFFFFFFFFFFLL;
        v12 = strerror(v10);
        sub_10004565C("inode (jobj_id %llu): unable to add repair for unexpected xfield: %s\n", v11, v12);
        sub_100049C40(0x536, v8);
        return v8;
      }

      v13 = *a5;
      v14 = a5[1] + 1;
      a5[1] = v14;
      if (v13 == v14)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }
}

char *sub_100006D30(uint64_t a1)
{
  qword_10007D028 = a1;
  if (!sub_100039748(&unk_10007D030, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 24, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_10007D030, 0, 64);
  }

  result = sub_10001C108(&unk_10007D030, "crypto", sub_100006E0C);
  if (result)
  {
    sub_100045744("failed to register the crypto tree in the fsck memory storage\n");

    return sub_100049C40(0x582, 12);
  }

  return result;
}

uint64_t sub_100006E0C()
{
  if (qword_10007D068)
  {
    result = sub_10003B928(&unk_10007D030, 0);
  }

  qword_10007D088 = 0;
  return result;
}

void sub_100006E48(uint64_t a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  if (qword_10007D068)
  {
    v8 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v9 = *(a1 + 40);
    v10 = *(v9 + 264);
    if (v8 == 4)
    {
      if ((v10 & 0x108) != 0 || (v10 & 1) != 0 && *(v9 + 976) | qword_10007D028)
      {
        goto LABEL_6;
      }
    }

    else if ((v10 & 9) == 0)
    {
LABEL_6:
      sub_100006FC4(v8);
      if (!v11)
      {
        BYTE8(xmmword_10007D070) = 1;
        LODWORD(xmmword_10007D070) = *a3;
      }

      return;
    }

    sub_100045744("found unexpected crypto state object (id %llu, refcnt %u)\n", *a2 & 0xFFFFFFFFFFFFFFFLL, *a3);
    sub_100049C40(0x340, -2);

    sub_100006F5C(a4, 0, 0, 0, a2, 0);
  }
}

uint64_t sub_100006F5C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  if (a1)
  {
    if (a6)
    {
      v7 = *(a6 + 22) + 24;
    }

    else
    {
      v7 = 0;
    }

    return sub_100027D7C(a1, 7u, a2, a3, a4, a5, 8u, a6, v7);
  }

  else
  {

    return sub_10002797C();
  }
}

double sub_100006FC4(uint64_t a1)
{
  v6 = a1;
  if (!sub_10000763C(a1) && !qword_10007D088)
  {
    v4 = 0uLL;
    v5 = 0;
    v2 = 24;
    v3 = 8;
    if ((sub_1000397B8(dword_10007D030, 0, 0, &v6, &v3, 8, &v4, &v2) & 0xFFFFFFFD) == 0)
    {
      qword_10007D088 = v6;
      result = *&v4;
      xmmword_10007D070 = v4;
      qword_10007D080 = v5;
    }
  }

  return result;
}

void sub_100007070(uint64_t a1, uint64_t a2)
{
  if (qword_10007D068)
  {
    v2 = *(a2 + 16);
    if ((v2 + 1) > 6 || ((1 << (v2 + 1)) & 0x43) == 0)
    {
      sub_100006FC4(*(a2 + 16));
      if (!v5)
      {
        if (v2 != 4 && v2 != a1 && !qword_10007D080)
        {
          qword_10007D080 = a1;
        }

        ++DWORD1(xmmword_10007D070);
      }
    }
  }
}

double sub_100007114(uint64_t *a1, uint64_t a2)
{
  if (qword_10007D068)
  {
    if (*(a2 + 7))
    {
      result = sub_100006FC4(4);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      v2 = *(a2 + 16);
      if (!v2)
      {
        return result;
      }

      if (v2 == 5)
      {
        return result;
      }

      v5 = *a1;
      result = sub_100006FC4(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v2 != 4 && (v5 & 0xFFFFFFFFFFFFFFFLL) != v2 && !qword_10007D080)
      {
        qword_10007D080 = v5 & 0xFFFFFFFFFFFFFFFLL;
      }
    }

    ++DWORD1(xmmword_10007D070);
  }

  return result;
}

double sub_1000071C4(uint64_t *a1, uint64_t a2)
{
  if (qword_10007D068)
  {
    if (*(a2 + 7))
    {
      result = sub_100006FC4(4);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      v2 = *(a2 + 16);
      if (!v2)
      {
        return result;
      }

      if (v2 == 5)
      {
        return result;
      }

      v5 = *a1;
      result = sub_100006FC4(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v2 != 4 && qword_10007D080 == (v5 & 0xFFFFFFFFFFFFFFFLL))
      {
        qword_10007D080 = 0;
      }
    }

    --DWORD1(xmmword_10007D070);
  }

  return result;
}

uint64_t sub_100007270(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!qword_10007D068)
  {
    return 0;
  }

  v35 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v6 = sub_10000763C(0);
  if (v6)
  {
LABEL_3:
    v7 = v6;
    goto LABEL_9;
  }

  v30 = 24;
  v31 = 8;
  v8 = sub_1000397B8(dword_10007D030, 0, 1, &v35, &v31, 8, &v32, &v30);
  if (v8)
  {
LABEL_6:
    if (v8 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v10 = v33;
    if (v33)
    {
      goto LABEL_24;
    }

    *v24 = 0xAAAAAAAAAAAAAAAALL;
    v29 = v35 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v27 = 3808;
    v28 = 8;
    v11 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x5B8D365AuLL);
    if (!v11)
    {
      break;
    }

    v7 = sub_10003F8AC(a1, a2, 7u, v24);
    if (!v7)
    {
      v7 = sub_1000397B8(*v24, qword_10007D028, 0, &v29, &v28, v28, v11, &v27);
    }

    if (v7 == 2)
    {
      free(v11);
      sub_10004565C("missing crypto state object (id %llu) referenced by %u file extents / dstreams\n", v35, HIDWORD(v32));
      sub_100049C40(0x345, 92);
      if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
      {
        *(a2 + 13) = 1;
      }

      else
      {
        v12 = v35;
        v13 = v34;
        v6 = sub_100007710(a1, a2, a3, v35, v35);
        if (v6)
        {
          goto LABEL_3;
        }

        if (v13)
        {
          v6 = sub_100007710(a1, a2, a3, v12, v13);
          if (v6)
          {
            goto LABEL_3;
          }
        }
      }
    }

    else
    {
      if (v7)
      {
        goto LABEL_35;
      }

      LOBYTE(v33) = 1;
      LODWORD(v32) = *v11;
      HIDWORD(v32) += v32;
      free(v11);
    }

    v10 = v33;
LABEL_24:
    if ((v10 & 1) != 0 && v35 != 4)
    {
      if (HIDWORD(v32))
      {
        if (v32 >= HIDWORD(v32))
        {
          sub_100045744("refcnt (%u) of crypto state object (id %llu) is greater than expected (%u)\n", v32, v35, HIDWORD(v32));
          sub_100049C40(0x348, -8);
          v29 = v35 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v25 = 0;
          *&v24[4] = 0;
          v26 = 0;
          *v24 = HIDWORD(v32);
          v14 = &v29;
          v15 = v24;
          v16 = a3;
          v17 = 1;
          v18 = 22;
          v19 = 0;
        }

        else
        {
          sub_10004565C("refcnt (%u) of crypto state object (id %llu) is less than expected (%u)\n", v32, v35, HIDWORD(v32));
          sub_100049C40(0x347, 92);
          v29 = v35 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v25 = 0;
          *&v24[4] = 0;
          v26 = 0;
          *v24 = HIDWORD(v32);
          v14 = &v29;
          v15 = v24;
          v16 = a3;
          v17 = 1;
          v18 = 22;
          v19 = 1;
        }
      }

      else
      {
        sub_100045744("found orphan crypto state object (id %llu, refcnt %u)\n", v35, v32);
        sub_100049C40(0x346, -8);
        *v24 = v35 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
        v14 = v24;
        v16 = a3;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v15 = 0;
      }

      v6 = sub_100006F5C(v16, v17, v18, v19, v14, v15);
      if (v6)
      {
        goto LABEL_3;
      }
    }

    v22 = 24;
    v23 = 8;
    v8 = sub_1000397B8(dword_10007D030, 0, 2, &v35, &v23, 8, &v32, &v22);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v7 = 12;
LABEL_35:
  free(v11);
  v20 = v35;
  v21 = strerror(v7);
  sub_10004565C("failed to look up crypto state object (id %llu): %s\n", v20, v21);
  sub_100049C40(0x3EE, v7);
LABEL_9:
  sub_10003B928(dword_10007D030, 0);
  return v7;
}

uint64_t sub_10000763C(uint64_t a1)
{
  if (qword_10007D088)
  {
    v1 = qword_10007D088 == a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = xmmword_10007D070;
  v4 = qword_10007D080;
  v5 = qword_10007D088;
  if (qword_10007D088 == 4 || v3 == 0 && (BYTE8(v3) & 1) != 0 || v3 != DWORD1(v3))
  {
    result = sub_10003B12C(dword_10007D030, 0, &v5, 8, &v3, 24);
    goto LABEL_9;
  }

  result = sub_10003B708(dword_10007D030, 0, &v5, 8);
  if (result != 2)
  {
LABEL_9:
    if (result)
    {
      return result;
    }
  }

  result = 0;
  qword_10007D088 = 0;
  return result;
}

uint64_t sub_100007710(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v10) = sub_10003F8AC(a1, a2, 3u, &v30);
  v11 = malloc_type_calloc(1uLL, 0x340uLL, 0x8A1E9A27uLL);
  v12 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x829F47D7uLL);
  v13 = v12;
  if (v10 || !v11 || !v12)
  {
    if (v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = 12;
    }

    sub_10004565C("unable to allocate memory to repair missing crypto state\n");
    v16 = 1084;
LABEL_13:
    sub_100049C40(v16, v10);
    goto LABEL_14;
  }

  v28 = 3808;
  v29 = 8;
  *v11 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v14 = sub_1000397B8(v30, qword_10007D028, 0, v11, &v29, 8, v12, &v28);
  if (!v14)
  {
LABEL_7:
    v15 = sub_10003F8AC(a1, a2, 6u, &v30);
    if (!v15)
    {
      v27 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
      v25 = 8;
      v26 = 0;
      v24 = 4;
      v18 = sub_1000397B8(v30, 0, 0, &v27, &v25, 8, &v26, &v24);
      if (v18 == 2)
      {
        goto LABEL_28;
      }

      v10 = v18;
      if (v18)
      {
        goto LABEL_14;
      }

      if (v11)
      {
        v19 = v13[1];
        v20 = v19 == a5;
        v21 = v19 == a5 ? v11 : 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v22 = sub_100007990(a1, a2, a3, a5, v21, v13, v28, a4);
      if (!v22)
      {
        v23 = !v11 || v20;
        if (v23 || (v22 = sub_100007990(a1, a2, a3, v13[1], v11, v13, v28, a4), !v22))
        {
LABEL_28:
          v33 = a1;
          v34 = a2;
          v35 = a3;
          v36 = v11;
          v37 = v13;
          v38 = a4;
          v31 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
          v32 = 0;
          v22 = sub_10003FA04(a1, a2, 0, 1, &v31, 0xAu, sub_100007E74);
        }
      }

      v10 = v22;
      goto LABEL_14;
    }

    v10 = v15;
    sub_10004565C("unable to get fsroot tree to repair missing crypto state\n");
    v16 = 1158;
    goto LABEL_13;
  }

  v10 = v14;
  if (v14 == 2)
  {
    v11 = 0;
    goto LABEL_7;
  }

LABEL_14:
  free(v11);
  free(v13);
  return v10;
}

uint64_t sub_100007990(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a5)
  {
    v14 = (*(a6 + 80) & 0xF000) == 0x8000;
  }

  else
  {
    v14 = 0;
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v15;
  v36 = v15;
  v34 = -21846;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  if (v14)
  {
    v17 = a3;
    v18 = sub_100040474((a6 + 92), a7 - 92, 8, &v38, &v34, 0, 0);
    if (v18)
    {
LABEL_8:
      v19 = *a5 & 0xFFFFFFFFFFFFFFFLL;
      v20 = strerror(v18);
      sub_10004565C("failed to get inode (id %llu) dstream: %s\n", v19, v20);
      sub_100049C40(0x43B, v18);
      return v18;
    }

    if (v34 < 0x28u)
    {
      v18 = 34;
      goto LABEL_8;
    }

    v21 = *(v38 + 32);
    v22 = *(v38 + 16);
    v35 = *v38;
    v36 = v22;
    v37 = v21;
    v16 = v22;
    a3 = v17;
  }

  v23 = v16 == a8 && v14;
  v30[2] = a1;
  v30[3] = a2;
  v28 = a3;
  v30[4] = a3;
  v30[5] = a8;
  v32 = 0;
  v31 = 0xAAAAAAAA00000000;
  BYTE4(v31) = v23;
  v33 = 0;
  if (v23)
  {
    LODWORD(v31) = *(a6 + 60);
  }

  v30[0] = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v30[1] = 0;
  v24 = sub_10003FA04(a1, a2, 0, 1, v30, 0x10u, sub_100007BE0);
  if (v24)
  {
    return v24;
  }

  if (v23)
  {
    v26 = v32;
    if (!v32)
    {
      v26 = -1;
    }

    *&v36 = v26;
    sub_100045744("found dstream (id %llu) with missing crypto state object (id %llu)\n", a4, a8);
    v24 = sub_100007D68(v28, 14, a5, &v35, 0x28u);
    if (v24)
    {
      return v24;
    }

    if (v32)
    {
      v29 = v32 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
      v24 = sub_100006F5C(v28, 1, 23, 1, &v29, 0);
      if (v24)
      {
        return v24;
      }
    }
  }

  v27 = v33 && v14;
  if (v27 && (v24 = sub_100007D68(v28, 16, a5, &v33, 8u), v24))
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007BE0(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3[2];
  if (v7 == a5[3])
  {
    v9 = a3[1];
    if (v9)
    {
      v9 = *a3 & 0xFFFFFFFFFFFFFFLL;
    }

    v10 = a5[6];
    v11 = __CFADD__(v10, v9);
    v12 = v10 + v9;
    a5[6] = v12;
    if (v11)
    {
      sub_100045744("sparse bytes overflow (current %llu, update %llu)\n", v12, v9);
      sub_100049C40(0x43A, 92);
      v7 = a5[3];
    }

    sub_10004565C("found fext (id %llu) with missing crypto state object (id %llu)\n", *a1 & 0xFFFFFFFFFFFFFFFLL, v7);
    v13 = a5[2];
    if (v13)
    {
      v15 = *a5;
      v14 = a5[1];
      result = sub_100027D7C(v13, 7u, 1, 0xBu, 1, a1, 0x10u, a3, 0x18u);
      if (!result)
      {
        v17 = a3[1];
        v18 = (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(v15 + 8) + 36);

        return sub_10001F974(v14, v17, v18);
      }
    }

    else
    {

      return sub_10002797C();
    }
  }

  else if (*(a5 + 36) == 1 && (v7 ? (v19 = a5[5] == 0) : (v19 = 0), v19))
  {
    v20 = 0;
    result = sub_100007DBC(*a5, a5[1], v7, *(a5 + 8), &v20);
    if (!result && v20 == 1)
    {
      a5[5] = a3[2];
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100007D68(_DWORD *a1, uint64_t a2, char *a3, _BYTE *a4, unsigned int a5)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7u, 1, a2, 1, a3, 8u, a4, a5);
  }

  return sub_10002797C();
}

uint64_t sub_100007DBC(uint64_t a1, void *a2, uint64_t a3, int a4, _BYTE *a5)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 7u, &v15);
  if (!result)
  {
    v13 = 0;
    v14 = a3 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v11 = 0;
    v12 = 0;
    v9 = 24;
    v10 = 8;
    LODWORD(result) = sub_1000397B8(v15, qword_10007D028, 0, &v14, &v10, 8, &v11, &v9);
    if (!result && (BYTE4(v12) & 0x1F) == a4)
    {
      *a5 = 1;
    }

    if (result == 2)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100007E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if ((*a3 & 1) == 0)
  {
    return 0;
  }

  v27[7] = v5;
  v27[8] = v6;
  if (*(a3 + 28) != a5[5])
  {
    return 0;
  }

  v10 = *(a3 + 4);
  v11 = (a1 + 10);
  sub_100045744("found xattr (id %llu, name %.*s) with missing crypto state\n", *a1 & 0xFFFFFFFFFFFFFFFLL, *(a1 + 8), (a1 + 10));
  v12 = *a5;
  v13 = a5[1];
  v23[2] = *a5;
  v23[3] = v13;
  v23[4] = a5[5];
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v14 = a5[3];
  LOBYTE(v24) = v14 != 0;
  HIDWORD(v24) = 0;
  v25 = 0;
  v26 = 0xAAAAAAAAAAAAAA00;
  if (v14)
  {
    HIDWORD(v24) = *(a5[4] + 60);
  }

  v23[0] = v10 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v23[1] = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003FA04(v12, v13, 0, 1, v23, 0x10u, sub_1000080CC);
  if (!result)
  {
    v15 = v25;
    v27[0] = v25;
    if (*(a1 + 8) == 23)
    {
      v16 = strncmp(v11, "com.apple.ResourceFork", 0x17uLL);
      v17 = v16 == 0;
      if (v15)
      {
        goto LABEL_14;
      }

      if (!v16)
      {
        v17 = 1;
        LOBYTE(v26) = 1;
        goto LABEL_15;
      }
    }

    else if (v25)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v17 = 0;
    v27[0] = -1;
LABEL_14:
    if ((v26 & 1) == 0)
    {
      return sub_100008168(a5[2], 1, 25, a1, v27, 8u);
    }

LABEL_15:
    result = sub_100008168(a5[2], 0, 0, a1, 0, 0);
    if (result)
    {
      return result;
    }

    v18 = a5[3];
    if (v18)
    {
      if (v17)
      {
        v21 = 0x8000;
        result = sub_100007D68(a5[2], 17, v18, &v21, 8u);
        if (result)
        {
          return result;
        }

        v22 = 0x4000;
        v18 = a5[3];
LABEL_28:
        result = sub_100007D68(a5[2], 18, v18, &v22, 8u);
        if (result)
        {
          return result;
        }

        return 0;
      }

      v19 = *(a1 + 8);
      if (v19 == 21)
      {
        if (!strncmp(v11, "com.apple.FinderInfo", 0x15uLL))
        {
          v20 = 256;
          goto LABEL_27;
        }
      }

      else if (v19 == 26 && !strncmp(v11, "com.apple.system.Security", 0x1AuLL))
      {
        v20 = 64;
LABEL_27:
        v22 = v20;
        goto LABEL_28;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000080CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 16);
  if (v7 == *(a5 + 16))
  {
    *(a5 + 40) = 1;
    return 0xFFFFFFFFLL;
  }

  else if (*(a5 + 24) == 1 && (v7 ? (v9 = *(a5 + 32) == 0) : (v9 = 0), v9))
  {
    v10 = 0;
    result = sub_100007DBC(*a5, *(a5 + 8), v7, *(a5 + 28), &v10);
    if (!result && v10 == 1)
    {
      *(a5 + 32) = *(a3 + 16);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100008168(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned int a6)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7u, a2, a3, 1, a4, *(a4 + 8) + 10, a5, a6);
  }

  return sub_10002797C();
}

BOOL sub_1000081C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  if (a3 >= 64)
  {
    v6 = (a1 + 8 * v4 + 8);
    while (-1 << v5 <= (*(v6 - 1) & (-1 << v5)) && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> -v5) & ~*v6) == 0))
    {
      ++v4;
      v7 = a3 - 64;
      ++v6;
      v8 = a3 <= 127;
      a3 -= 64;
      if (v8)
      {
        if (v7)
        {
          goto LABEL_14;
        }

        return 1;
      }
    }

    return 0;
  }

  v7 = a3;
  if (!a3)
  {
    return 1;
  }

LABEL_14:
  v9 = 64 - v5;
  v10 = ~(-1 << v7);
  v11 = v10 << v5;
  v12 = v10 >> (64 - v5);
  if (!v5)
  {
    v12 = 0;
  }

  v13 = (a1 + 8 * v4);
  return (v11 & ~((-1 << v5) & *v13)) == 0 && (v7 <= v9 || !v12 || (v12 & ~((0xFFFFFFFFFFFFFFFFLL >> v9) & v13[1])) == 0);
}

uint64_t sub_1000082B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 >= 64)
  {
    v7 = (a1 + 8 * v4 + 8);
    while (((-1 << v5) & *(v7 - 1)) == 0 && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> v6) & *v7) == 0))
    {
      ++v4;
      v8 = a3 - 64;
      ++v7;
      v9 = a3 <= 127;
      a3 -= 64;
      if (v9)
      {
        if (v8)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = a3;
  if (a3)
  {
LABEL_11:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (a1 + 8 * v4);
    if ((v11 & (-1 << v5) & *v13) != 0 || v8 > v6 && v12 && ((0xFFFFFFFFFFFFFFFFLL >> v6) & v12 & v13[1]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000083A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) = *(v7 - 1) & ~(-1 << v5) | (-1 << v5);
    if (v5)
    {
      *v7 |= 0xFFFFFFFFFFFFFFFFLL >> v6;
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_10:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (result + 8 * v4);
    *v13 = *v13 & ~v11 | v11 & (-1 << v5);
    if (v8 > v6)
    {
      if (v12)
      {
        v13[1] = v13[1] & ~v12 | v12 & (0xFFFFFFFFFFFFFFFFLL >> v6);
      }
    }
  }

  return result;
}

uint64_t sub_10000849C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) &= ~(-1 << v5);
    if (v5)
    {
      *v7 &= ~(0xFFFFFFFFFFFFFFFFLL >> v6);
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_13:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (v5)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = (result + 8 * v4);
    *v14 &= ~v11;
    if (v8 > v6)
    {
      if (v13)
      {
        v14[1] &= ~v13;
      }
    }
  }

  return result;
}

uint64_t sub_10000856C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
    return 0;
  }

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  v6 = (a2 + 8 * (a3 / 64));
  while (1)
  {
    v7 = a3 & 0x3F;
    if (a3 <= 0)
    {
      v7 = -(-a3 & 0x3F);
    }

    v8 = 64 - v7;
    v10 = *v6++;
    v9 = v10;
    if (64 - v7 >= a4)
    {
      v8 = a4;
    }

    v11 = __clz(__rbit64((v9 >> v7) ^ v5));
    if (v8 > v11)
    {
      break;
    }

    a3 += v8;
    v12 = a4 <= v8;
    a4 -= v8;
    if (v12)
    {
      return 0;
    }
  }

  *a5 = v11 + a3;
  return 1;
}

unint64_t sub_1000085F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    v8 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
    }

    v9 = (a1 + 8 * (a3 / 64));
    while (1)
    {
      v10 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v10 = -(-a3 & 0x3F);
      }

      v11 = 64 - v10;
      v13 = *v9++;
      v12 = v13;
      if (64 - v10 >= v8)
      {
        v11 = v8;
      }

      v14 = __clz(__rbit64((v12 >> v10) ^ v6));
      if (v11 > v14)
      {
        break;
      }

      a3 += v11;
      v15 = v8 <= v11;
      v8 -= v11;
      if (v15)
      {
        return result;
      }
    }

    v16 = v14 + a3;
    v17 = a4 - (v14 + a3);
    if (v17 < 1)
    {
      return result - v16 + a4;
    }

    v18 = v16 + 63;
    if (v16 >= 0)
    {
      v18 = v14 + a3;
    }

    v19 = (a1 + 8 * (v18 >> 6));
    v20 = v14 + a3;
    while (1)
    {
      v21 = v20 & 0x3F;
      if (v20 <= 0)
      {
        v21 = -(-v20 & 0x3F);
      }

      v22 = 64 - v21;
      v24 = *v19++;
      v23 = v24;
      if (64 - v21 >= v17)
      {
        v22 = v17;
      }

      v25 = __clz(__rbit64((v23 >> v21) ^ v7));
      if (v22 > v25)
      {
        break;
      }

      v20 += v22;
      v15 = v17 <= v22;
      v17 -= v22;
      if (v15)
      {
        return result - v16 + a4;
      }
    }

    a3 = v25 + v20;
    result = result - v16 + v25 + v20;
  }

  while ((v25 + v20) < a4);
  return result;
}

void *sub_100008714(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 + 63;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 63;
  }

  v7 = a2 - (v6 & 0xFFFFFFFFFFFFFFC0);
  v8 = 64 - v7;
  v9 = -1 << v7;
  v10 = (v6 & 0xC0) - a2;
  v11 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  if (a2 == (v6 & 0xFFFFFFFFFFFFFFC0))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  }

  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 + 63;
  }

  v14 = a4 - (v13 & 0xFFFFFFFFFFFFFFC0);
  v15 = 64 - v14;
  v16 = -1 << v14;
  v17 = 0xFFFFFFFFFFFFFFFFLL >> ((v13 & 0xC0u) - a4);
  if (result == a3 && a2 <= a4)
  {
    v18 = a5 + a2;
    v20 = a5 + a2 - 1;
    v19 = a5 + a2 < 1;
    v21 = a5 + a2 + 62;
    if (v19)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = a5 + a4;
    v24 = a5 + a4 - 1;
    v19 = a5 + a4 < 1;
    v25 = a5 + a4 + 62;
    if (!v19)
    {
      v25 = v24;
    }

    if (a5 <= 0)
    {
      v26 = -(-a5 & 0x3F);
    }

    else
    {
      v26 = a5 & 0x3F;
    }

    if (v26)
    {
      v19 = v18 < v26;
      v27 = v18 - v26;
      if (v19)
      {
        v27 += 63;
      }

      v28 = v27 >> 6;
      v19 = v23 < v26;
      v29 = v23 - v26;
      if (v19)
      {
        v29 += 63;
      }

      v30 = v29 >> 6;
      v31 = &result[v28];
      v32 = (*v31 & v9) >> v7;
      if (v26 >= v8)
      {
        v32 |= (v31[1] & v12) << v8;
      }

      v33 = ~(-1 << v26);
      v34 = v32 & v33;
      v35 = v33 << v14;
      if (v14)
      {
        v36 = v33 >> v15;
      }

      else
      {
        v36 = 0;
      }

      v37 = &a3[v30];
      *v37 = (v34 << v14) & v35 | *v37 & ~v35;
      if (v26 > v15 && v36)
      {
        v37[1] = v37[1] & ~v36 | (v34 >> v15) & v36;
      }

      a5 -= v26;
      v38 = v28 - 1;
      v39 = v30 - 1;
    }

    else
    {
      v38 = v22 >> 6;
      v39 = v25 >> 6;
    }

    if (a5 >= 64)
    {
      v55 = v6 >> 6;
      if (v38 >= v55)
      {
        v56 = ~v17;
        result += v38 + 1;
        v57 = &a3[v39 + 1];
        do
        {
          v58 = (*(result - 1) & v9) >> v7;
          if (v7)
          {
            v58 |= *result << v8;
          }

          *(v57 - 1) = *(v57 - 1) & ~v16 | (v58 << v14) & v16;
          if (v14)
          {
            *v57 = *v57 & v56 | (v58 >> v15);
          }

          if (a5 < 128)
          {
            break;
          }

          a5 -= 64;
          --result;
          --v57;
          v19 = v38-- <= v55;
        }

        while (!v19);
      }
    }

    return result;
  }

  v40 = v13 >> 6;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  v41 = v5 >> 6;
  if (a5 < 64)
  {
    v46 = a5;
    if (!a5)
    {
      return result;
    }

    goto LABEL_47;
  }

  v42 = ~v17;
  v43 = &a3[v40 + 1];
  v44 = &result[v41 + 1];
  do
  {
    v45 = (*(v44 - 1) & v9) >> v7;
    if (v7)
    {
      v45 |= *v44 << v8;
    }

    *(v43 - 1) = *(v43 - 1) & ~v16 | (v45 << v14) & v16;
    if (v14)
    {
      *v43 = *v43 & v42 | (v45 >> v15);
    }

    ++v41;
    ++v40;
    v46 = a5 - 64;
    ++v43;
    ++v44;
    v19 = a5 <= 127;
    a5 -= 64;
  }

  while (!v19);
  if (v46)
  {
LABEL_47:
    v47 = &result[v41];
    v48 = (*v47 & v9) >> v7;
    if (v7 && v46 >= v8)
    {
      v48 |= (v47[1] & v11) << v8;
    }

    v49 = ~(-1 << v46);
    v50 = v48 & v49;
    v51 = v49 << v14;
    v52 = v49 >> v15;
    if (v14)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v54 = &a3[v40];
    *v54 = (v50 << v14) & v51 | *v54 & ~v51;
    if (v46 > v15 && v53)
    {
      v54[1] = v54[1] & ~v53 | (v50 >> v15) & v53;
    }
  }

  return result;
}

uint64_t sub_100008A70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 << 6) - a3;
  sub_100008714(a1, a3, a1, 0, v5);

  return sub_10000849C(a1, v5, a3);
}

uint64_t sub_100008AD4(uint64_t result)
{
  if (dword_10007C040 >= 99)
  {
    dword_10007C040 = 100;
    return result;
  }

  v1 = result;
  v2 = ++dword_10007C040;
  v3 = *(result + 8);
  v4 = *(v3 + 48);
  if (!v4)
  {
    v4 = *(v3 + 40);
  }

  if ((*(v4 + 56) & 0x20) == 0)
  {
    v5 = &xmmword_10007D090 + 152 * v2;
    if (sub_100039748(v5, 0, v3, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100008C38) || sub_10003B84C(v5, 0, 66))
    {

      return sub_10003B928(v5, 0);
    }

    else
    {
      v6 = *(v1 + 8);
      if (v6)
      {
        v6 = *(*(v6 + 40) + 8);
      }

      *(v5 + 16) = v6;
      v5[144] = 0;
      v8 = 0xAAAAAAAAAAAAAAAALL;
      result = sub_10003B7B8(v1, 0, &v8);
      if (result)
      {
        v7 = 50;
      }

      else
      {
        v7 = v8;
        *(v5 + 17) = v8 / 0x64;
        if (v7 > 0x3E7)
        {
          return result;
        }

        if (v7 >= 0xA)
        {
          v7 = 10;
        }
      }

      *(v5 + 17) = v7;
    }
  }

  return result;
}

uint64_t sub_100008C38(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 >= 0x1C && a5 >= 0x1C)
  {
    result = sub_10003F384(a1, (a2 + 20), *(a2 + 16), (a4 + 20), *(a4 + 16), a6);
    if (!result)
    {
      if (*a6)
      {
        return 0;
      }

      if (*a2 > *a4)
      {
        goto LABEL_7;
      }

      if (*a2 >= *a4)
      {
        v12 = *(a2 + 8);
        v13 = *(a4 + 8);
        if (v12 > v13)
        {
LABEL_7:
          v11 = 1;
LABEL_10:
          result = 0;
          *a6 = v11;
          return result;
        }

        if (v12 >= v13)
        {
          return 0;
        }
      }

      v11 = -1;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_100008CF4(uint64_t a1, unsigned int *a2, unsigned int *a3, _BYTE *a4, uint64_t a5)
{
  v30 = -1431655766;
  v31 = -1431655766;
  v10 = *(a2 + 2);
  v11 = *(a3 + 1);
  if (!(v10 | v11))
  {
    v31 = 0;
    goto LABEL_10;
  }

  if (!v10)
  {
    v13 = 1;
LABEL_9:
    v31 = v13;
    goto LABEL_10;
  }

  if (!v11)
  {
    v13 = -1;
    goto LABEL_9;
  }

  result = sub_10003F384(a1, v10, a2[1], v11, *a3, &v31);
  if (result)
  {
    return result;
  }

LABEL_10:
  v14 = *(a3 + 2);
  v15 = *(a2 + 1);
  v16 = v14 | v15;
  if (v14 | v15)
  {
    if (v14)
    {
      if (v15)
      {
        result = sub_10003F384(a1, v14, a3[1], v15, *a2, &v30);
        if (result)
        {
          return result;
        }

        v16 = v30 > 0;
      }

      else
      {
        v16 = 0;
        v30 = -1;
      }
    }

    else
    {
      v16 = 1;
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  result = 0;
  v17 = (v31 > 0) & v16;
  *a4 = v17;
  if (a5 && v17)
  {
    v18 = *(a2 + 1);
    v19 = *(a3 + 1);
    if (!(v18 | v19))
    {
      v31 = 0;
      goto LABEL_29;
    }

    if (v18)
    {
      if (v19)
      {
        result = sub_10003F384(a1, v18, *a2, v19, *a3, &v31);
        if (result)
        {
          return result;
        }

LABEL_29:
        v21 = *(a2 + 2);
        v22 = *(a3 + 2);
        if (v21 | v22)
        {
          if (v21)
          {
            if (v22)
            {
              result = sub_10003F384(a1, v21, a2[1], v22, a3[1], &v30);
              if (result)
              {
                return result;
              }

              goto LABEL_38;
            }

            v23 = -1;
          }

          else
          {
            v23 = 1;
          }

          v30 = v23;
        }

        else
        {
          v30 = 0;
        }

LABEL_38:
        result = 0;
        if (v31 < 0)
        {
          v24 = a3;
        }

        else
        {
          v24 = a2;
        }

        v25 = *(v24 + 1);
        v26 = *v24;
        if (v30 >= 1)
        {
          v27 = a3;
        }

        else
        {
          v27 = a2;
        }

        v28 = *(v27 + 2);
        *(a5 + 8) = v25;
        *(a5 + 16) = v28;
        v29 = v27[1];
        *a5 = v26;
        *(a5 + 4) = v29;
        return result;
      }

      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    v31 = v20;
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_100008ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, unsigned int a9, unsigned int a10)
{
  v10 = a10;
  if (dword_10007C040 != 100)
  {
    if (*(&xmmword_10007D090 + 19 * dword_10007C040 + 7))
    {
      v12 = *(a1 + 8);
      if (v12)
      {
        if (!*(v12 + 56) && a6 && *(a1 + 48) == 14 && (a10 == 92 || a10 == 2))
        {
          v15 = &xmmword_10007D090 + 152 * dword_10007C040;
          if (*(v15 + 17) <= v15[144])
          {
            sub_100045744("reached invalid tree node limit %llu for fs_oid %llu\n", *(v15 + 17), *(*(v12 + 40) + 8));
            sub_10003B928(v15, 0);
          }

          else
          {
            v10 = sub_100009048(v15, a3, a4, a5, 0x7FFFFFFFFFFFFFFFLL, 0, a6, a7, 0, a8, a9, 0);
            if (!v10)
            {
              *(a2 + 74) = 1;
              if ((byte_100080BF4 & 1) == 0)
              {
                sub_100045744("aborting jobj validations for current fsck pass - trying to repair fsroot tree with invalid nodes\n");
              }

              byte_100080BF4 = 1;
              sub_1000147E8(*(a1 + 8));
              sub_1000053DC();
              v10 = 0;
              *(*(a1 + 8) + 9) = 0;
              ++v15[144];
              ++dword_100080BF0;
            }
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_100009048(_DWORD *a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, const void *a7, unsigned int a8, int a9, const void *a10, unsigned int a11, int a12)
{
  v17 = a8 + 20;
  v18 = malloc_type_malloc(v17, 0xE1A0581EuLL);
  v19 = malloc_type_malloc(a11 + 30, 0xEF630B10uLL);
  v20 = v19;
  if (v18)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    *v18 = a2;
    v18[1] = a3;
    *(v18 + 4) = a8;
    memcpy(v18 + 20, a7, a8);
    *(v20 + 4) = a4;
    *(v20 + 10) = a5;
    *v20 = a6;
    *(v20 + 18) = a9;
    *(v20 + 22) = a12;
    *(v20 + 26) = a11;
    if (a10)
    {
      memcpy(v20 + 30, a10, a11);
    }

    v24 = sub_10003B12C(a1, 0, v18, v17, v20, a11 + 30);
    v22 = v24;
    if (v24)
    {
      v25 = *(v18 + 20) & 0xFFFFFFFFFFFFFFFLL;
      v26 = strerror(v24);
      sub_10004565C("unable to insert tree node at key id %llu for repairs : %s\n", v25, v26);
      sub_100049C40(0x3F1, v22);
    }

LABEL_14:
    free(v18);
    if (!v20)
    {
      return v22;
    }

    goto LABEL_8;
  }

  v22 = 12;
  sub_100049C40(0x3F0, 12);
  if (v18)
  {
    goto LABEL_14;
  }

  if (v20)
  {
LABEL_8:
    free(v20);
  }

  return v22;
}

uint64_t sub_1000091D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (dword_10007C040 == 100)
  {
    return 0;
  }

  if (!*(&xmmword_10007D090 + 19 * dword_10007C040 + 7))
  {
    return 0;
  }

  v6 = &xmmword_10007D090 + 152 * dword_10007C040;
  v20[0] = 0;
  sub_10003B724(v6, 0, v20);
  if (!v20[0])
  {
    return 0;
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  memset(v20, 0, 80);
  v7 = sub_10002D5F0(a1, a2, &v21);
  if (v7)
  {
    return v7;
  }

  v7 = sub_100034410(v21, *(v21 + 56), 0, v20);
  if (v7)
  {
    return v7;
  }

  memset(v19, 0, sizeof(v19));
  v9 = sub_10003A444(v19, v6, 0, 0, 0);
  if (v9 || (v9 = sub_10002C648(v19, sub_10000947C, a3, 0), v9))
  {
    v8 = v9;
    v10 = strerror(v9);
    sub_10004565C("unable to enqueue tree node prune repairs: %s\n", v10);
    v11 = 1011;
LABEL_10:
    sub_100049C40(v11, v8);
    return v8;
  }

  if ((*(qword_10009BA60 + 51) & 1) == 0)
  {
    sub_100009510();
    return 0;
  }

  v12 = sub_10000958C((v6 + 64), a2);
  if (v12)
  {
    v8 = v12;
    v11 = 1053;
    goto LABEL_10;
  }

  v18[1] = v21;
  v18[2] = v20;
  v18[3] = v6;
  v18[4] = (v6 + 64);
  v8 = sub_10001DDB0(a1, a2, 1, 0, sub_10000961C);
  if (v8)
  {
    return v8;
  }

  if (!*(*(a2 + 40) + 216))
  {
    return 0;
  }

  if (*(qword_10009BA60 + 46))
  {
    return 0;
  }

  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v14 = sub_100046F1C(a1, a2, v18);
  if (v14 == 2)
  {
    return 0;
  }

  v8 = v14;
  if (!v14)
  {
    v8 = sub_100034410(v21, *(v21 + 56), v18[0], v20);
    if (!v8)
    {
      v17[0] = v21;
      v17[1] = v20;
      v17[2] = v18[0];
      v17[3] = v6 + 64;
      v15 = sub_10003A444(v19, v6, 0, 0, 0);
      if (v15 || (v15 = sub_10002C648(v19, sub_1000096CC, v17, 0), v15))
      {
        v8 = v15;
        v16 = strerror(v15);
        sub_10004565C("unable to iterate snap fsroot tree for tree node repairs: %s\n", v16);
        v11 = 1054;
        goto LABEL_10;
      }

      return 0;
    }
  }

  return v8;
}

uint64_t sub_10000947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v11 = *(a3 + 8);
  v6 = sub_100027D7C(a5, 6u, 0, 0, 1, (a1 + 20), *(a1 + 16), &v11, 2u);
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 20) & 0xFFFFFFFFFFFFFFFLL;
    v9 = strerror(v6);
    sub_10004565C("unable to add tree repair at key at id %llu : %s\n", v8, v9);
    sub_100049C40(0x3F2, v7);
  }

  return v7;
}

void sub_100009510()
{
  v1 = dword_10007C040;
  if (dword_10007C040 != 100)
  {
    v2 = &xmmword_10007D090 + 152 * dword_10007C040;
    dword_100080BF0 -= v2[144];
    v2[144] = 0;
    sub_10003B928(&xmmword_10007D090 + 152 * v1, 0);

    sub_10003B928((v2 + 64), 0);
  }
}

uint64_t sub_10000958C(uint64_t a1, uint64_t a2)
{
  result = sub_100039748(a1, 0, a2, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100008C38);
  if (!result)
  {

    return sub_10003B84C(a1, 0, 66);
  }

  return result;
}

uint64_t sub_10000961C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*a3)
  {
    return 0;
  }

  v7 = *a5;
  v8 = a5[1];
  v12 = 0;
  v10 = 0;
  if (!sub_100025548(*v7, *(v7 + 8), 0, *a1, a1[1], 0, 3, 14, &v12, 0, 0))
  {
    v10 = sub_10000A1E0(v7, v8, a5[2], a5[3], v12, *(a3 + 8), v9);
    free(v12);
  }

  return v10;
}

uint64_t sub_1000096CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 26);
  v8 = (a3 + 30);
  v9 = *a5;
  v24 = a5[1];
  if (v7)
  {
    v10 = a3 + 30;
  }

  else
  {
    v10 = 0;
  }

  v11 = a5[2];
  v12 = a5[3];
  v40 = 0;
  memset(v39, 170, sizeof(v39));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v13 = a1 + 20;
  v14 = sub_10003A0AC(&v34, v9, v11, 0xFFFFFFFE, (a1 + 20), *(a1 + 16), 1u);
  if (v14)
  {
    v15 = v14;
    v16 = strerror(v14);
    sub_10004565C("unable to iterate fsroot tree (xid %llu) for tree node repairs: %s\n", v11, v16);
    v17 = 1050;
LABEL_6:
    sub_100049C40(v17, v15);
    goto LABEL_20;
  }

  if ((BYTE8(v36) & 1) == 0)
  {
    while (1)
    {
      v18 = **(&v35 + 1);
      if (v40)
      {
        free(v40);
        v40 = 0;
      }

      v19 = sub_100025548(*v9, *(v9 + 8), 0, v18, v11, 0, 3, 14, &v40, v39, 0);
      if (v19)
      {
        goto LABEL_19;
      }

      memset(v33, 170, sizeof(v33));
      v32 = -21846;
      sub_1000346A4(v40, v24, 0, &v33[5], v33, (v40[9] - 1), &v33[1], &v32);
      v31 = 0;
      if (v7)
      {
        v15 = sub_10003F384(*(*(v9 + 8) + 40), *&v33[5], v33[0], v8, *(a3 + 26), &v31);
        if (v15 || (v31 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      v20 = *(a3 + 26);
      v28[0] = *(a1 + 16);
      v28[1] = v20;
      v29 = v13;
      v30 = v10;
      v25[0] = v33[0];
      v25[1] = v32;
      v26 = *&v33[5];
      v27 = *&v33[1];
      v19 = sub_10000A45C(v12, *(*(v9 + 8) + 40), v24, v40, v39[0], v11, v28, v25);
      if (v19)
      {
LABEL_19:
        v15 = v19;
        goto LABEL_20;
      }

      v21 = (*(&v34 + 1))(&v34);
      if (v21)
      {
        break;
      }

      if (BYTE8(v36) == 1)
      {
        goto LABEL_8;
      }
    }

    v15 = v21;
    v23 = strerror(v21);
    sub_10004565C("error iterating fsroot tree (xid %llu) for tree node repairs: %s\n", v11, v23);
    v17 = 1051;
    goto LABEL_6;
  }

LABEL_8:
  v15 = 0;
LABEL_20:
  if (v34)
  {
    (v34)(&v34);
  }

  if (v40)
  {
    free(v40);
  }

  return v15;
}

uint64_t sub_100009950(uint64_t *a1)
{
  if (!dword_100080BF0)
  {
    return 0;
  }

  if (*(qword_10009BA60 + 51) != 1)
  {
    return 92;
  }

  memset(v34, 0, sizeof(v34));
  v35 = malloc_type_malloc(0x354uLL, 0xF84EB4C2uLL);
  v2 = malloc_type_malloc(0x35EuLL, 0x4BB726FuLL);
  v36 = v2;
  v3 = malloc_type_malloc(0x354uLL, 0x27063778uLL);
  v4 = malloc_type_malloc(0x35EuLL, 0xBB9FEEC5uLL);
  v5 = v4;
  if (!v35 || !v2 || !v4 || !v3)
  {
    v7 = 12;
    sub_100049C40(0x41F, 12);
LABEL_13:
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v6 = sub_10004355C(a1, 0, sub_100009D48, a1, 0);
  if (v6 || (v6 = sub_100001C74(a1, sub_100009D80, a1), v6) || *(qword_10009BA60 + 52) == 1 && (v6 = sub_1000442D8(a1, sub_100009DA4, a1), v6))
  {
    v7 = v6;
    goto LABEL_14;
  }

  v9 = dword_10007C040;
  if (dword_10007C040 < 0)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if (dword_10007C040 >= 0x63)
  {
    v9 = 99;
  }

  v10 = (v9 + 1);
  v11 = &xmmword_10007D090;
  while (1)
  {
    v12 = v11[7];
    v31[2] = v11[6];
    v31[3] = v12;
    v32 = v11[8];
    v33 = *(v11 + 18);
    v13 = v11[3];
    v29[2] = v11[2];
    v30 = v13;
    v14 = v11[5];
    v31[0] = v11[4];
    v31[1] = v14;
    v15 = v11[1];
    v29[0] = *v11;
    v29[1] = v15;
    if (!v33)
    {
      goto LABEL_39;
    }

    if (!*(&v30 + 1))
    {
      goto LABEL_39;
    }

    v16 = sub_10001D860(a1, v32);
    if (!v16)
    {
      goto LABEL_39;
    }

    v28 = 0xAAAAAAAAAAAAAAAALL;
    memset(v27, 0, sizeof(v27));
    v17 = sub_10002D5F0(a1, v16, &v28);
    if (v17 || (v17 = sub_100034410(v28, *(v28 + 56), 0, v27), v17))
    {
      v7 = v17;
      goto LABEL_13;
    }

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    *&v34[0] = v28;
    *(&v34[0] + 1) = v31;
    bzero(v35, 0x354uLL);
    bzero(v36, 0x35EuLL);
    bzero(v3, 0x354uLL);
    bzero(v5, 0x35EuLL);
    v3[4] = 8;
    v18 = sub_100039F68(v25, v31, 0, v3, 0x354u, 0x354u, v5, 862);
    if (v18 || (v18 = sub_10002C648(v25, sub_100009EBC, v34, 0), v18))
    {
      v7 = v18;
      v20 = strerror(v18);
      sub_10004565C("unable to fix overlaps in candidate tree: %s\n", v20);
      v21 = 1056;
      goto LABEL_45;
    }

    v24[0] = v28;
    v24[1] = v27;
    memset(v23, 0, sizeof(v23));
    v19 = sub_10003A444(v23, v31, 0, 0, 0);
    if (v19)
    {
      break;
    }

    v19 = sub_10002C648(v23, sub_10000A020, v24, 0);
    if (v19)
    {
      break;
    }

    sub_10003B928(v29, 0);
    sub_10003B928(v31, 0);
LABEL_39:
    v7 = 0;
    v11 = (v11 + 152);
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  v7 = v19;
  v22 = strerror(v19);
  sub_10004565C("unable to enqueue tree node insertion repairs: %s\n", v22);
  v21 = 1057;
LABEL_45:
  sub_100049C40(v21, v7);
LABEL_14:
  free(v3);
LABEL_15:
  if (v5)
  {
    free(v5);
  }

  if (v35)
  {
    free(v35);
  }

  if (v36)
  {
    free(v36);
  }

  dword_100080BF0 = 0;
  dword_10007C040 = -1;
  return v7;
}

uint64_t sub_100009D48(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (a3 && a4 != 1)
  {
    sub_10000A64C(a2, a3, a5);
  }

  return 0;
}

uint64_t sub_100009DA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 8;
  v6 = malloc_type_calloc(8uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  v12 = v6;
  if (!v6)
  {
    return 12;
  }

  HIDWORD(v13) = 1;
  *v6 = a1;
  v6[1] = a2;
  v7 = sub_100001CF4(a3, sub_10000A8D0);
  if (v7 || (v7 = sub_100001C74(a3, sub_10000A8D0, &v12), v7))
  {
    v8 = v7;
  }

  else
  {
    if (SHIDWORD(v13) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        sub_10000A64C(*(v12 + v10), *(v12 + v10 + 8), a3);
        ++v11;
        v10 += 16;
      }

      while (v11 < SHIDWORD(v13));
    }

    v8 = 0;
  }

  if (v12)
  {
    free(v12);
  }

  return v8;
}

uint64_t sub_100009EBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v13 = a5[4];
  v12 = a5[5];
  v26 = 0;
  if (*(a5 + 16) != 1)
  {
LABEL_13:
    *(a5 + 16) = 1;
    bzero(a5[4], 0x354uLL);
    memcpy(a5[4], a1, a2);
    *(a5 + 5) = a2;
    bzero(a5[5], 0x35EuLL);
    memcpy(a5[5], a3, a4);
    result = 0;
    *(a5 + 6) = a4;
    return result;
  }

  v14 = *(v12 + 26);
  v15 = v12 + 30;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = *(a3 + 26);
  v17 = a3 + 30;
  if (!v16)
  {
    v17 = 0;
  }

  v23[0] = *(v13 + 16);
  v23[1] = v14;
  v24 = v13 + 20;
  v25 = v15;
  v20[0] = *(a1 + 16);
  v20[1] = v16;
  v21 = a1 + 20;
  v22 = v17;
  result = sub_100008CF4(*(*(v10 + 8) + 40), v23, v20, &v26, 0);
  if (!result)
  {
    v19 = v26;
    if (v26 == 1)
    {
      if (*(v13 + 8) <= *(a1 + 8))
      {
        result = sub_10000AA78(v11, v13, *(a5 + 5));
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_10000AA78(v11, a1, a2);
        if (result)
        {
          return result;
        }

        if (v19)
        {
          return 0;
        }
      }
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10000A020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = **a5;
  v8 = *(*a5 + 8);
  v9 = *(*a5 + 24);
  v10 = malloc_type_calloc(1uLL, v9, 0x7AD88AA1uLL);
  if (v10)
  {
    v11 = v10;
    if (!v8 || (v12 = *(v8 + 40), (*(v12 + 264) & 1) != 0))
    {
      v14 = 0;
      v13 = *v7;
    }

    else
    {
      v13 = *v7;
      if (*(v12 + 976))
      {
        v14 = 0;
      }

      else
      {
        v18 = *(v12 + 1096) != 0;
        v19 = *(v8 + 8 * v18 + 24);
        v20 = v8 + 96 * v18 + 832;
        if (v19)
        {
          v13 = v19;
          v14 = v20;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    v15 = sub_10002F454(v13, *(a3 + 10), v9 / *(v7[1] + 36), v11, v14, 0, 0, 0, 0);
    if (!v15)
    {
      memset(v25, 170, sizeof(v25));
      v24 = -21846;
      for (i = *(a3 + 18); ; i = (i + 1))
      {
        if (i > *(a3 + 22))
        {
          v15 = 0;
          goto LABEL_18;
        }

        sub_10003452C(v11, v6, i, &v25[5], v25, &v25[1], &v24);
        v17 = sub_100027D7C((v8 + 768), 6u, 2, 0, 1, *&v25[5], v25[0], *&v25[1], v24);
        if (v17)
        {
          break;
        }
      }

      v15 = v17;
      v21 = **&v25[5] & 0xFFFFFFFFFFFFFFFLL;
      v22 = strerror(v17);
      sub_10004565C("unable to add tree node repair at key id %llu : %s\n", v21, v22);
      sub_100049C40(0x41C, v15);
    }

LABEL_18:
    free(v11);
  }

  else
  {
    v15 = 12;
    sub_100049C40(0x436, 12);
  }

  return v15;
}

uint64_t sub_10000A1E0(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, double a7)
{
  if (*(a5 + 34) || sub_10003471C(a5, a2, 0, 0, a7))
  {
    return 0;
  }

  memset(v45, 170, 18);
  v44 = -21846;
  sub_1000346A4(a5, a2, 0, &v45[5], v45, (*(a5 + 36) - 1), &v45[1], &v44);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v15 = v45[0] + 20;
  v16 = malloc_type_calloc(1uLL, v45[0] + 20, 0x25D373DAuLL);
  v17 = v16;
  if (v16)
  {
    *v16 = -1;
    *(v16 + 1) = -1;
    v18 = v45[0];
    *(v16 + 4) = v45[0];
    memcpy(v16 + 20, *&v45[5], v18);
    v19 = sub_10003A0AC(&v39, a3, 0, 0xFFFFFFFE, v17, v15, 0);
    if (!v19)
    {
      if ((BYTE8(v41) & 1) == 0)
      {
        while (1)
        {
          v23 = v40;
          v24 = *(*(&v40 + 1) + 26);
          v38 = 0;
          v25 = v40 + 20;
          if (sub_10003F384(*(*(a1 + 8) + 40), (v40 + 20), *(v40 + 16), *&v45[1], v44, &v38) || v38 >= 1)
          {
            break;
          }

          v27 = *(&v23 + 1) + 30;
          if (!v24)
          {
            v27 = 0;
          }

          v28 = *(*(&v23 + 1) + 26);
          v35[0] = *(v23 + 16);
          v35[1] = v28;
          v36 = v25;
          v37 = v27;
          v32[0] = v45[0];
          v32[1] = v44;
          v33 = *&v45[5];
          v34 = *&v45[1];
          v29 = sub_10000A45C(a4, *(*(a1 + 8) + 40), a2, a5, a6, 0, v35, v32);
          if (v29)
          {
            v13 = v29;
            goto LABEL_11;
          }

          v30 = (*(&v39 + 1))(&v39);
          v13 = v30;
          if (v30)
          {
            v31 = strerror(v30);
            sub_10004565C("unable to iterate tree for tree node repairs: %s\n", v31);
            v21 = 1049;
            goto LABEL_8;
          }

          if (BYTE8(v41) == 1)
          {
            goto LABEL_11;
          }
        }
      }

      v13 = 0;
      goto LABEL_11;
    }

    v13 = v19;
    v20 = strerror(v19);
    sub_10004565C("unable to iterate tree for tree node repairs: %s\n", v20);
    v21 = 1048;
LABEL_8:
    v22 = v13;
  }

  else
  {
    v13 = 12;
    v21 = 1047;
    v22 = 12;
  }

  sub_100049C40(v21, v22);
LABEL_11:
  if (v39)
  {
    (v39)(&v39);
  }

  if (v17)
  {
    free(v17);
  }

  return v13;
}

uint64_t sub_10000A45C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v32 = 0;
  memset(v31, 170, sizeof(v31));
  if (sub_100008CF4(a2, a7, a8, &v32, v31) || v32 != 1)
  {
    return 0;
  }

  memset(v30, 170, sizeof(v30));
  v29 = 0;
  v28 = -21846;
  LODWORD(v14) = -1;
  v27 = -1;
  v15 = *(a4 + 36);
  if (v15)
  {
    do
    {
      v16 = v14;
      v14 = (v14 + 1);
      sub_10003452C(a4, a3, v14, &v30[2], &v29 + 1, v30, &v28);
      v17 = sub_10003F384(a2, v30[2], HIWORD(v29), v31[1], v31[0], &v27);
      v15 = *(a4 + 36);
      v18 = v17 == 0;
      v19 = v16 + 2 < v15 && v17 == 0;
    }

    while (v19 && v27 < 0);
    v27 = -1;
    if (v14 >= v15 || v17)
    {
      LODWORD(v20) = v14;
    }

    else
    {
      v20 = v14;
      do
      {
        sub_10003452C(a4, a3, v20, &v30[1], &v29, v30, &v28);
        v21 = sub_10003F384(a2, v30[1], v29, v31[2], HIDWORD(v31[0]), &v27);
        v20 = (v20 + 1);
        v15 = *(a4 + 36);
        v18 = v21 == 0;
      }

      while (v20 < v15 && v21 == 0 && v27 < 1);
    }
  }

  else
  {
    v18 = 1;
    LODWORD(v20) = -1;
  }

  v24 = v20 - 1;
  if (!v18 || v24 == v15)
  {
    return 0;
  }

  else
  {
    return sub_100009048(a1, *(a4 + 8), *(a4 + 16), *(a4 + 34), a5, a6, v30[2], HIWORD(v29), v14, v30[1], v29, v24);
  }
}

uint64_t sub_10000A64C(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = malloc_type_calloc(1uLL, *(a3[1] + 36), 0xE9F84ABCuLL);
  if (!v6)
  {
    sub_100049C40(0x435, 12);
    return 0;
  }

  v7 = v6;
  v8 = dword_10007C040;
  if (dword_10007C040 < 0)
  {
    goto LABEL_30;
  }

  v9 = 0;
  v10 = a2 + a1;
  if (dword_10007C040 >= 0x63)
  {
    v8 = 99;
  }

  v11 = (v8 + 1);
  v31 = v11;
  while (1)
  {
    v12 = &xmmword_10007D090 + 152 * v9;
    v13 = *(v12 + 7);
    v36[2] = *(v12 + 6);
    v36[3] = v13;
    v37 = *(v12 + 8);
    v38 = *(v12 + 18);
    v14 = *(v12 + 3);
    v34[2] = *(v12 + 2);
    v35 = v14;
    v15 = *(v12 + 5);
    v36[0] = *(v12 + 4);
    v36[1] = v15;
    v16 = *(v12 + 1);
    v34[0] = *v12;
    v34[1] = v16;
    if (!v38)
    {
      goto LABEL_29;
    }

    if (!*(&v35 + 1))
    {
      goto LABEL_29;
    }

    v17 = sub_10001D860(a3, v37);
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v33 = 0xAAAAAAAAAAAAAAAALL;
    memset(v32, 0, sizeof(v32));
    if (sub_10002D5F0(a3, v17, &v33) || sub_100034410(v33, *(v33 + 56), 0, v32))
    {
      goto LABEL_30;
    }

    v19 = *(v18 + 5);
    v20 = (*(v19 + 264) & 1) != 0 || *(v19 + 976) != 0;
    if (a1 < v10)
    {
      break;
    }

LABEL_28:
    v11 = v31;
LABEL_29:
    if (++v9 == v11)
    {
      goto LABEL_30;
    }
  }

  v21 = *(v33 + 24);
  v22 = *(v19 + 1096) != 0;
  v23 = v18 + 24;
  v24 = &v18[96 * (*(v19 + 1096) != 0) + 832];
  while (1)
  {
    v25 = *a3;
    if (v20)
    {
      v26 = 0;
    }

    else if (*&v23[8 * v22])
    {
      v25 = *&v23[8 * v22];
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (sub_10002F454(v25, a1, v21 / *(a3[1] + 36), v7, v26, 0, 0, 0, 0) || (*(v7 + 24) & 0xFFFFFFFE) == 2 && *(v7 + 28) == 14 && !sub_10003ED88(v7, (v7 + 8), v21 - 8, 0, v27, v28) && sub_10000A1E0(v33, v32, v34, v36, v7, a1, v29))
    {
      break;
    }

    if (v10 == ++a1)
    {
      a1 = v10;
      goto LABEL_28;
    }
  }

LABEL_30:
  free(v7);
  return 0;
}

uint64_t sub_10000A8D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if (*(a3 + 12) < 1)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  v8 = 0;
  v10 = -86;
  while (1)
  {
    result = sub_100002C7C(*(*a3 + 16 * v8), *(*a3 + 16 * v8 + 8), a1, a2, &v10, sub_10000A988, a3);
    if (result)
    {
      break;
    }

    v8 = *(a3 + 8);
    if ((v10 & 1) == 0)
    {
      *(a3 + 8) = ++v8;
    }

    if (v8 >= *(a3 + 12))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A988(uint64_t a1, uint64_t a2, int a3, int32x2_t *a4)
{
  v5 = *a4;
  v6 = a4[1].i32[0];
  if (a3)
  {
    memmove(&v5[16 * v6], &v5[16 * v6 + 16], 16 * (a4[1].i32[1] - v6));
    result = 0;
    --a4[1].i32[1];
    return result;
  }

  v10 = a4[1].i32[1];
  if (v10 != a4[2].i32[0])
  {
    goto LABEL_6;
  }

  a4[2].i32[0] = 2 * v10;
  v11 = malloc_type_realloc(v5, 32 * v10, 0x1000040451B5BE8uLL);
  if (v11)
  {
    v10 = a4[1].i32[1];
    v5 = v11;
LABEL_6:
    v12 = &v5[16 * v6];
    memmove(v12 + 16, v12, 16 * (v10 - v6));
    result = 0;
    *v12 = a1;
    *(v12 + 1) = a2;
    a4[1] = vadd_s32(a4[1], 0x100000001);
    return result;
  }

  free(v5);
  return 12;
}

uint64_t sub_10000AA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10003B708(a1, 0, a2, a3);
  v5 = v4;
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    v6 = *(a2 + 20) & 0xFFFFFFFFFFFFFFFLL;
    v7 = strerror(v4);
    sub_10004565C("unable to remove tree node at key id %llu for repairs : %s\n", v6, v7);
    sub_100049C40(0x416, v5);
  }

  return v5;
}

uint64_t sub_10000AAEC(uint64_t *a1, unint64_t a2, void **a3)
{
  v6 = a1[3];
  v7 = v6[20];
  v8 = *a3;
  if (!*a3)
  {
    v8 = malloc_type_malloc(v6[8], 0xFF691DB1uLL);
    if (!v8)
    {
      v17 = 526;
      sub_10004565C("Failed to allocate memory\n");
      goto LABEL_10;
    }
  }

  v9 = v6 + v7;
  v10 = a2 / v6[10];
  if (!v6[17])
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = malloc_type_malloc(v6[8], 0x74CB18D2uLL);
  if (!v11)
  {
    v17 = 527;
    sub_10004565C("Failed to allocate memory for cab\n");
LABEL_10:
    v16 = 12;
    sub_100049C40(v17, 12);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = v10 / v6[11];
  v14 = *&v9[8 * v13];
  v15 = sub_10002F3CC(*a1);
  if (v15)
  {
    v16 = v15;
    sub_10004565C("error (%d) getting cab %u @ %lld\n", v15, v13, v14);
    sub_100049C40(0x1D6, v16);
LABEL_15:
    free(v12);
    goto LABEL_16;
  }

  v9 = v12 + 40;
  LODWORD(v10) = v10 - v6[11] * v13;
LABEL_12:
  v18 = *&v9[8 * v10];
  v19 = sub_10002F3CC(*a1);
  v16 = v19;
  if (v19)
  {
    sub_10004565C("error (%d) getting cib %u @ %lld\n", v19, v10, v18);
    sub_100049C40(0x1D7, v16);
  }

  if (v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (!v16)
  {
LABEL_19:
    *a3 = v8;
    return v16;
  }

LABEL_17:
  if (v8 == *a3)
  {
    goto LABEL_19;
  }

  free(v8);
  return v16;
}

uint64_t sub_10000ACA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5, _DWORD *a6, int a7)
{
  v56 = 0;
  v12 = a1[3];
  v13 = a2 / *(v12 + 36);
  if (a5)
  {
    v56 = *a5;
  }

  v14 = sub_10000AAEC(a1, v13, &v56);
  if (v14)
  {
    v15 = v14;
    v56 = 0;
    v16 = strerror(v14);
    sub_10004565C("failed to get cib for chunk index %llu: %s\n", v13, v16);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  v17 = v56;
  v21 = v56 + 40;
  v53 = v13 % *(v12 + 40);
  v22 = &v56[32 * v53 + 40];
  v24 = *(v22 + 3);
  v23 = v22 + 24;
  v18 = v24;
  if (v24)
  {
    v25 = sub_10002F3CC(*a1);
    v15 = v25;
    if (v25)
    {
      v26 = v13 / *(v12 + 40);
      v19 = v53;
      sub_10004565C("error (%d) getting cib %d bitmap %d @ %lld\n", v25, v26, v53, v18);
      sub_100049C40(0x1D8, v15);
      goto LABEL_5;
    }

LABEL_39:
    v20 = a4;
    v19 = v53;
LABEL_40:
    if (!a6)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v52 = v23;
  sub_10000849C(a3, 0, *(v12 + 36));
  if (!a7)
  {
    v18 = 0;
    v15 = 2;
    goto LABEL_39;
  }

  v59 = 0;
  v27 = a1[3];
  v28 = v27[8];
  v57 = 0;
  v58 = 0;
  v29 = malloc_type_malloc(v28, 0xCF3215BFuLL);
  if (!v29)
  {
    sub_10004565C("Failed to allocate memory\n");
    sub_100049C40(0x20C, 12);
    goto LABEL_52;
  }

  v30 = v29;
  v50 = v21;
  if (!v27[40])
  {
LABEL_50:
    free(v30);
LABEL_52:
    v18 = 0;
    v15 = 28;
LABEL_53:
    sub_100049C40(0x210, v15);
    v19 = v53;
LABEL_5:
    v20 = a4;
    if ((v15 & 0xFFFFFFFD) != 0)
    {
      if (a6)
      {
        *a6 = 0;
      }

      if (a4)
      {
        v18 = 0;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    goto LABEL_40;
  }

  v31 = 0;
  v32 = 0;
  v33 = (8 * v28);
  v54 = v27 + v27[82];
  v51 = v29;
  while (1)
  {
    v34 = *&v54[2 * v32];
    v35 = a1[3];
    v36 = *(v35 + 164);
    if ((v36 & 0x7FFFFFFFu) <= v34)
    {
LABEL_22:
      sub_10004565C("error (%d) looking up spaceman IP bitmap block %u\n");
      goto LABEL_23;
    }

    v37 = *(v35 + 168);
    if (v36 < 0)
    {
      if (sub_100031504(a1, v37, v34, &v59, 0))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v59 = v37 + v34;
    }

    if (!sub_10002F3CC(*a1))
    {
      break;
    }

    sub_10004565C("error (%d) getting spaceman IP bitmap block %u @ %lld\n");
LABEL_23:
    ++v32;
    v31 += v33;
    if (v32 >= v27[40])
    {
      goto LABEL_50;
    }
  }

  if (!sub_10000856C(0, v30, 0, v33, &v58))
  {
    goto LABEL_23;
  }

  v38 = v58;
  v39 = v58 + v31;
  v40 = a1[3];
  v41 = *(v40 + 152);
  if ((v41 & 0x7FFFFFFFFFFFFFFFuLL) <= v39)
  {
    LODWORD(v43) = 22;
LABEL_34:
    v49 = v39;
    v45 = v43;
    sub_10004565C("error (%d) looking up spaceman IP block %llu\n", v43, v49);
    v46 = 543;
    goto LABEL_35;
  }

  v42 = *(v40 + 176);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v43 = v42 + v39;
    v57 = v43;
    goto LABEL_31;
  }

  v43 = sub_100031504(a1, v42, v58 + v31, &v57, 0);
  if (v43)
  {
    goto LABEL_34;
  }

  v38 = v58;
LABEL_31:
  sub_1000083A8(v51, v38, 1, v43);
  v44 = sub_10002F4AC(*a1);
  if (v44)
  {
    v45 = v44;
    sub_10004565C("error (%d) writing spaceman IP bitmap %d @ %lld\n", v44, v32, v59);
    v46 = 525;
LABEL_35:
    sub_100049C40(v46, v45);
    v30 = v51;
    goto LABEL_23;
  }

  v18 = v57;
  free(v51);
  if (!v18)
  {
    v15 = 92;
    goto LABEL_53;
  }

  v15 = 0;
  *v52 = v18;
  v48 = *(v12 + 16);
  v19 = v53;
  *&v50[32 * v53] = v48;
  v20 = a4;
  if (a6)
  {
LABEL_41:
    *a6 = v19;
  }

LABEL_42:
  if (v20)
  {
LABEL_43:
    *v20 = v18;
  }

LABEL_44:
  if (a5 && (!v15 || v17 == *a5))
  {
    *a5 = v17;
  }

  else
  {
    free(v17);
  }

  return v15;
}

uint64_t sub_10000B0A8(uint64_t *a1, int **a2, _DWORD *a3)
{
  v4 = *(a1 + 4);
  v5 = a1[1];
  v6 = *(v5 + 36);
  if (v4 >= v6)
  {
    v12 = 0;
    *(a1 + 376) = 1;
  }

  else
  {
    v9 = v4 + 1;
    if (v9 < v6 && (v10 = v5 + 32 * v9, (v11 = *(v10 + 64)) != 0))
    {
      v12 = sub_10002692C(*a1, 0, 0x40000000, v11, *(v10 + 40), 0x20000000, 8, 0, &a1[22 * (v9 & 1) + 3]);
      if (v12)
      {
        sub_100049C40(0x47A, v12);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a1;
    v14 = a1[1] + 40;
    v15 = *(a1 + 4);
    v16 = *(v14 + 32 * v15 + 24);
    *a3 = v15;
    if (v16)
    {
      v17 = sub_100026968(v13, 0, 0x40000000, v16, *(v14 + 32 * v15), 0x20000000, 8, 0, &a1[22 * (v15 & 1) + 3], a2, 0, 0);
      if (v17)
      {
        v18 = v17;
        sub_100049C40(0x47B, v17);
        if (v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = v18;
        }
      }
    }

    else
    {
      v19 = malloc_type_calloc(1uLL, *(v13[1] + 36), 0x5F4AE810uLL);
      *a2 = v19;
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12 == 0;
      }

      if (v20)
      {
        v12 = 12;
      }

      else
      {
        v12 = v12;
      }
    }

    ++*(a1 + 4);
  }

  return v12;
}

uint64_t sub_10000B220(uint64_t a1, uint64_t *a2, uint64_t a3, int **a4, _DWORD *a5)
{
  if (!a1)
  {
    return 22;
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 376) = 0;
  v8 = *(a3 + 64);
  if (v8)
  {
    v9 = sub_10002692C(a2, 0, 0x40000000, v8, *(a3 + 40), 0x20000000, 8, 0, a1 + 24);
    if (v9)
    {
      v10 = v9;
      sub_100049C40(0x47C, v9);
      return v10;
    }
  }

  return sub_10000B0A8(a1, a4, a5);
}

uint64_t sub_10000B318(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  if (v1 < *(v2 + 36))
  {
    v3 = *(v2 + 32 * v1 + 64);
    if (v3)
    {
      sub_100026998(*a1, 0, v3, a1 + 176 * (v1 & 1) + 24);
    }
  }

  return 0;
}

char *sub_10000B374(uint64_t a1)
{
  qword_100080BF8 = a1;
  if (!sub_100039748(&unk_100080C00, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 48, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_100080C00, 0, 64);
  }

  result = sub_10001C108(&unk_100080C00, "dstream", sub_10000B450);
  if (result)
  {
    sub_100045744("failed to register the dstream tree in the fsck memory storage\n");

    return sub_100049C40(0x583, 12);
  }

  return result;
}

uint64_t sub_10000B450()
{
  if (qword_100080C38)
  {
    result = sub_10003B928(&unk_100080C00, 0);
  }

  qword_100080C40 = 0;
  return result;
}

uint64_t sub_10000B48C(unint64_t a1)
{
  if (!qword_100080C40)
  {
    return 0;
  }

  if (qword_100080C40 >= a1)
  {
    if (qword_100080C40 > a1)
    {
      sub_10004565C("dstream (id %llu) is older than the current dstream (id %llu)\n", a1, qword_100080C40);
      v5 = 92;
      sub_100049C40(0x3B8, 92);
      return v5;
    }

    return 0;
  }

  v8 = qword_100080C40;
  if ((BYTE8(xmmword_100080C68) & 3) != 2)
  {
    if ((BYTE8(xmmword_100080C68) & 4) == 0)
    {
      goto LABEL_23;
    }

    if (!xmmword_100080C68 || xmmword_100080C68 != DWORD1(xmmword_100080C68))
    {
      goto LABEL_23;
    }
  }

  v1 = qword_100080C50;
  if (qword_100080C58)
  {
    v2 = (BYTE8(xmmword_100080C68) & 0x80) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v1 = qword_100080C58;
  }

  if ((BYTE8(xmmword_100080C68) & 0x18) == 0 && qword_100080C60 == v1)
  {
    sub_100038A68(qword_100080C40, DWORD1(xmmword_100080C68));
    v4 = sub_10003B708(dword_100080C00, 0, &v8, 8);
  }

  else
  {
LABEL_23:
    v4 = sub_10003B12C(dword_100080C00, 0, &v8, 8, &unk_100080C48, 48);
  }

  v5 = v4;
  if (!v4)
  {
    qword_100080C40 = 0;
  }

  return v5;
}

uint64_t sub_10000B5B8(unint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, int a6)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v12;
  v32 = v12;
  v30 = v12;
  v13 = sub_10000B48C(a1);
  if (v13)
  {
    return v13;
  }

  v13 = sub_10000B838(a2, &v30);
  if (v13)
  {
    return v13;
  }

  if ((BYTE8(v32) & 3) == 1)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0;
  }

  if ((BYTE8(v32) & 3) != 0 && !v15)
  {
    v16 = sub_10000CC64(&v30, a2, a1);
    sub_10004565C("found cloned xattr dstream (id %llu, object-ids %s)\n", a2, v16);
    free(v16);
    v14 = 92;
    v17 = 851;
LABEL_23:
    sub_100049C40(v17, 92);
    return v14;
  }

  if (a4)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = a5 | ((BYTE8(v32) & 0x20) >> 5);
  if (v19)
  {
    v20 = 32;
  }

  else
  {
    v20 = 0;
  }

  if (a6 | ((BYTE8(v32) & 0x40) >> 6))
  {
    v21 = 64;
  }

  else
  {
    v21 = 0;
  }

  v22 = WORD4(v32) & 0xFF9C | v18 | v21 | v20;
  WORD4(v32) = v22;
  if (v19 && DWORD1(v32))
  {
    v23 = sub_10000CC64(&v30, a2, a1);
    sub_10004565C("cloned dstream (id %llu, object-ids %s) is being truncated\n", a2, v23);
    free(v23);
    v14 = 92;
    v17 = 807;
    goto LABEL_23;
  }

  if (DWORD1(v32))
  {
    v24 = *(&v30 + 1);
    if (*(&v30 + 1) != a3)
    {
      if (*(&v30 + 1) > a3)
      {
        *(&v30 + 1) = a3;
        v24 = a3;
      }

      v22 |= 0x10u;
      WORD4(v32) = v22;
      a3 = v24;
    }
  }

  else
  {
    *&v30 = a1;
    *(&v30 + 1) = a3;
  }

  v25 = ++DWORD1(v32);
  v33 = a2;
  if (((v22 & 3) == 2 || (v22 & 4) != 0 && v32 && v32 == v25) && (v31 ? (v26 = (v22 & 0x80) == 0) : (v26 = 1), !v26 ? (v27 = v31) : (v27 = a3), (v22 & 0x18) == 0 && *(&v31 + 1) == v27))
  {
    sub_100038A68(a2, v25);
    v28 = sub_10003B708(dword_100080C00, 0, &v33, 8);
  }

  else
  {
    v28 = sub_10003B12C(dword_100080C00, 0, &v33, 8, &v30, 48);
  }

  v14 = v28;
  if (!v28)
  {
    if (a2 == a1)
    {
      v14 = 0;
      qword_100080C40 = a2;
      unk_100080C48 = v30;
      *&qword_100080C58 = v31;
      xmmword_100080C68 = v32;
      return v14;
    }

    return 0;
  }

  return v14;
}

uint64_t sub_10000B838(uint64_t a1, _OWORD *a2)
{
  v6 = a1;
  v4 = 48;
  v5 = 8;
  result = sub_1000397B8(dword_100080C00, 0, 0, &v6, &v5, 8, a2, &v4);
  if (result == 2)
  {
    *a2 = xmmword_100076D30;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 2) = 0;
    *(a2 + 20) &= 0xFE00u;
    return sub_10003B12C(dword_100080C00, 0, &v6, 8, a2, 48);
  }

  return result;
}

uint64_t sub_10000B91C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned int a6)
{
  v7 = a4;
  if (a1)
  {
    return sub_100027D7C(a1, 7u, 1, a2, a3, &v7, 8u, a5, a6);
  }

  return sub_10002797C();
}

uint64_t sub_10000B984(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  if (!qword_100080C38)
  {
    return 0;
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  if (qword_100080C40 == a1)
  {
    result = 0;
    qword_100080C58 = a2;
  }

  else
  {
    v5 = 48;
    v6 = 8;
    LODWORD(result) = sub_1000397B8(dword_100080C00, 0, 0, &v10, &v6, 8, &v7, &v5);
    if (result)
    {
      if (result == 2)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else
    {
      *&v8 = a2;
      return sub_10003B12C(dword_100080C00, 0, &v10, 8, &v7, 48);
    }
  }

  return result;
}

void sub_10000BA58(void *a1, _DWORD *a2)
{
  if (qword_100080C38)
  {
    sub_10000BABC(*a1 & 0xFFFFFFFFFFFFFFFLL);
    if (!v3)
    {
      WORD4(xmmword_100080C68) |= 4u;
      LODWORD(xmmword_100080C68) = *a2;
    }
  }
}

double sub_10000BABC(uint64_t a1)
{
  if (!sub_10000B48C(a1) && !qword_100080C40)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v5 = v3;
    v6 = v3;
    v4 = v3;
    if (!sub_10000B838(a1, &v4))
    {
      qword_100080C40 = a1;
      unk_100080C48 = v4;
      *&qword_100080C58 = v5;
      result = *&v6;
      xmmword_100080C68 = v6;
    }
  }

  return result;
}

void sub_10000BB38(void *a1, void *a2)
{
  if (qword_100080C38)
  {
    sub_10000BABC(*a1 & 0xFFFFFFFFFFFFFFFLL);
    if (!v4)
    {
      v5 = *a2 & 0xFFFFFFFFFFFFFFLL;
      if (v5)
      {
        v6 = a1[1];
        if (v6 != qword_100080C60)
        {
          WORD4(xmmword_100080C68) |= 8u;
          v6 = a1[1];
        }

        qword_100080C60 = v6 + v5;
      }

      else
      {
        WORD4(xmmword_100080C68) |= 8u;
      }
    }
  }
}

uint64_t sub_10000BBDC(uint64_t a1, void *a2, _WORD *a3)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  sub_10000BABC(*a2 & 0xFFFFFFFFFFFFFFFLL);
  v7 = v6;
  if (!v6)
  {
    v8 = a2[1] & 0xFFFFFFFFFFFFFFLL;
    v9 = *a3;
    v10 = *(*(a1 + 8) + 36);
    v11 = qword_100080C58;
    if (!qword_100080C58)
    {
      v11 = qword_100080C50;
    }

    WORD4(xmmword_100080C68) |= 0x80u;
    if (v8 >= v11)
    {
      sub_10004565C("data_hash: object (oid 0x%llx): Found unexpected hash at offset %llu (expected length %llu)\n", qword_100080C40, v8, v11);
      v7 = 92;
      v12 = 929;
    }

    else if (*a3)
    {
      if (v8 == qword_100080C60)
      {
        v7 = 0;
        qword_100080C60 = v8 + (v10 * v9);
        return v7;
      }

      sub_10004565C("data_hash: object (oid 0x%llx): Missing hash at offset %llu (found %llu)\n", qword_100080C40, qword_100080C60, v8);
      v7 = 92;
      v12 = 931;
    }

    else
    {
      sub_10004565C("data_hash: object (oid 0x%llx): Invalid length at offset %llu\n", qword_100080C40, v8);
      v7 = 92;
      v12 = 930;
    }

    sub_100049C40(v12, 92);
  }

  return v7;
}

uint64_t sub_10000BD20(void *a1, uint64_t *a2)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  result = sub_10000B48C(*a1 & 0xFFFFFFFFFFFFFFFLL);
  if (!result)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10 = v4;
    v11 = v4;
    v9 = v4;
    result = sub_10000B838(*a2, &v9);
    if (!result)
    {
      v5 = BYTE8(v11);
      WORD4(v11) |= 0x100u;
      v6 = *a2;
      v12 = *a2;
      if (((v5 & 3) == 2 || (v5 & 4) != 0 && v11 && v11 == DWORD1(v11)) && (v10 ? (v7 = (v5 & 0x80) == 0) : (v7 = 1), !v7 ? (v8 = v10) : (v8 = *(&v9 + 1)), (v5 & 0x18) == 0 && *(&v10 + 1) == v8))
      {
        sub_100038A68(v6, DWORD1(v11));
        return sub_10003B708(dword_100080C00, 0, &v12, 8);
      }

      else
      {
        return sub_10003B12C(dword_100080C00, 0, &v12, 8, &v9, 48);
      }
    }
  }

  return result;
}

uint64_t sub_10000BE34(void *a1)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v1;
  v8 = v1;
  v7[0] = v1;
  v9 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  if (qword_100080C40 == v9)
  {
    v2 = WORD4(xmmword_100080C68);
  }

  else
  {
    v5 = 48;
    v6 = 8;
    v4 = sub_1000397B8(&unk_100080C00, 0, 0, &v9, &v6, 8, v7, &v5);
    result = 0;
    if (v4)
    {
      return result;
    }

    v2 = WORD4(v8);
  }

  return (v2 >> 6) & 1;
}

uint64_t sub_10000BEE4(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v6 = *(a2 + 48);
  if (!v6)
  {
    v6 = *(a2 + 40);
  }

  v7 = *(v6 + 56);
  v43 = 1;
  if ((v7 & 0x20) != 0 && (v8 = sub_10004BB6C(a1, a2, qword_100080BF8, &v43, 0, 0, 0, 0), v8) || (v8 = sub_10000B48C(0xFFFFFFFFFFFFFFFFLL), v8))
  {
LABEL_7:
    v9 = v8;
    goto LABEL_13;
  }

  v41 = 48;
  v42 = 8;
  v10 = sub_1000397B8(dword_100080C00, 0, 1, &v47, &v42, 8, &v44, &v41);
  if (!v10)
  {
    v38 = v7;
    while (1)
    {
      sub_100038A68(v47, DWORD1(v46));
      if (DWORD1(v46))
      {
        break;
      }

      if ((BYTE8(v46) & 4) != 0)
      {
        sub_100045744("found orphan dstream id object (id %llu, refcnt %u)\n", v47, v46);
        sub_100049C40(0x256, -2);
        v8 = sub_10000C6B0(a3, 0, 0, 0, v47);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      if (*(&v45 + 1))
      {
        v12 = "sealed volume hash records";
        if ((BYTE8(v46) & 0x80) == 0)
        {
          v12 = "file extents";
        }

        sub_100045744("found orphan %s (id %llu, size %llu)\n", v12, v47, *(&v45 + 1));
        sub_100049C40(0x257, -2);
        if ((v7 & 0x20) == 0)
        {
          v8 = sub_10000C718(a1, a2, a3, v47, &v44, 0);
          if (v8)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_83:
      v39 = 48;
      v40 = 8;
      v10 = sub_1000397B8(dword_100080C00, 0, 2, &v47, &v40, 8, &v44, &v39);
      if (v10)
      {
        goto LABEL_10;
      }
    }

    if ((BYTE8(v46) & 3) != 1)
    {
LABEL_40:
      if (v45)
      {
        v18 = (BYTE8(v46) & 0x80) == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v19 = *(&v44 + 1);
      }

      else
      {
        v19 = v45;
      }

      if ((BYTE8(v46) & 8) != 0 || *(&v45 + 1) != v19)
      {
        LOBYTE(v48[0]) = 0;
        v20 = *(a2 + 48);
        if (!v20)
        {
          v20 = *(a2 + 40);
        }

        if ((*(v20 + 56) & 0x20) != 0)
        {
          goto LABEL_57;
        }

        if ((WORD4(v46) & 0x120) == 0)
        {
          if (DWORD1(v46) != 1)
          {
            goto LABEL_57;
          }

          v8 = sub_10003FD88(a1, a2, qword_100080BF8, v44, v48);
          if (v8)
          {
            goto LABEL_7;
          }

          if ((v48[0] & 1) == 0)
          {
LABEL_57:
            if ((v7 & 0x20) != 0)
            {
              if (v43 == 1)
              {
                if (v45)
                {
                  v21 = (BYTE8(v46) & 0x80) == 0;
                }

                else
                {
                  v21 = 1;
                }

                if (v21)
                {
                  v22 = *(&v44 + 1);
                }

                else
                {
                  v22 = v45;
                }

                sub_10004565C("sealed volume hash records (id %llu, size %llu) do not match size of dstream (%llu)\n", v47, *(&v45 + 1), v22);
                sub_100049C40(0x438, 92);
                if (a3)
                {
                  *(a2 + 13) = 1;
                }

                else
                {
                  sub_10002797C();
                }
              }
            }

            else
            {
              v8 = sub_10000C718(a1, a2, a3, v47, &v44, 1u);
              if (v8)
              {
                goto LABEL_7;
              }
            }
          }
        }

        if ((BYTE8(v46) & 0x10) == 0)
        {
          goto LABEL_83;
        }
      }

      else if ((BYTE8(v46) & 0x10) == 0)
      {
        goto LABEL_83;
      }

      v23 = v47;
      v56[0] = 0xAAAAAAAAAAAAAAAALL;
      v53 = 0xAAAAAAAAAAAAAAAALL;
      v52 = -21846;
      v51 = -1431655766;
      v24 = malloc_type_calloc(1uLL, 0x340uLL, 0x371221CAuLL);
      v25 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x95C9F63FuLL);
      v26 = malloc_type_calloc(1uLL, 8 * DWORD1(v46), 0x100004000313F17uLL);
      v27 = sub_10003F8AC(a1, a2, 3u, v56);
      v9 = v27;
      if (v24 && v25 && v26 && !v27)
      {
        v28 = sub_10000CE54(v23, v26, DWORD1(v46), &v51);
        if (v28)
        {
          v9 = v28;
          sub_10004565C("unable to get the file ids of dstream_id %llu\n", v23);
        }

        else
        {
          v29 = v51;
          if (v51 > DWORD1(v46))
          {
            v51 = DWORD1(v46);
            v29 = DWORD1(v46);
          }

          if (v29)
          {
            v30 = 0;
            while (1)
            {
              *v24 = v26[v30] & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
              v54 = 3808;
              v55 = 8;
              v31 = sub_1000397B8(v56[0], qword_100080BF8, 0, v24, &v55, 832, v25, &v54);
              if (v31)
              {
LABEL_97:
                v9 = v31;
                goto LABEL_78;
              }

              v32 = sub_100040474(v25 + 46, v54 - 92, 8, &v53, &v52, 0, 0);
              if (v32)
              {
                v9 = v32;
                goto LABEL_100;
              }

              if (v52 <= 0x27u)
              {
                break;
              }

              v33 = *(v53 + 8);
              if (v33 != *(&v44 + 1))
              {
                sub_10004565C("alloced_size (%llu) of dstream (id %llu, object-id %llu) does not match minimum found size (%llu)\n", v33, v23, v26[v30], *(&v44 + 1));
                sub_100049C40(0x2A0, 92);
                v48[0] = 0;
                v49 = 0u;
                v50 = 0;
                v48[1] = *(&v44 + 1);
                v31 = sub_10000B91C(a3, 13, 1, *v24, v48, 0x28u);
                if (v31)
                {
                  goto LABEL_97;
                }
              }

              if (++v30 >= v51)
              {
                v9 = 0;
                goto LABEL_78;
              }
            }

            v9 = 34;
LABEL_100:
            v34 = *v24 & 0xFFFFFFFFFFFFFFFLL;
            v35 = strerror(v9);
            sub_10004565C("failed to get inode (id %llu) dstream: %s\n", v34, v35);
            sub_100049C40(0x380, v9);
          }

          else
          {
            v9 = 0;
          }
        }
      }

      else
      {
        sub_10004565C("unable to init fsroot tree for dstream repair\n");
        sub_100049C40(0x355, v9);
LABEL_78:
        if (!v25)
        {
LABEL_80:
          if (v24)
          {
            free(v24);
          }

          LOBYTE(v7) = v38;
          if (v9)
          {
            goto LABEL_13;
          }

          goto LABEL_83;
        }
      }

      free(v25);
      goto LABEL_80;
    }

    if ((BYTE8(v46) & 4) != 0)
    {
      if (v46 >= DWORD1(v46))
      {
        if (v46 <= DWORD1(v46))
        {
          goto LABEL_40;
        }

        sub_100045744("refcnt (%u) of dstream id object (id %llu) is greater than expected (%u)\n", v46, v47, DWORD1(v46));
        sub_100049C40(0x2A2, -2);
        v13 = v47;
        v14 = a3;
        v15 = 1;
        v16 = 9;
        v17 = 0;
        goto LABEL_39;
      }

      sub_10004565C("refcnt (%u) of dstream id object (id %llu) is less than expected (%u)\n", v46, v47, DWORD1(v46));
      sub_100049C40(0x2C3, 92);
      v13 = v47;
      v14 = a3;
      v15 = 1;
      v16 = 9;
    }

    else
    {
      v48[0] = 0xAAAAAAAAAAAAAAAALL;
      v56[0] = v47 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
      LODWORD(v53) = 0;
      v54 = 4;
      v55 = 8;
      v9 = sub_10003F8AC(a1, a2, 6u, v48);
      if (!v9)
      {
        v9 = sub_1000397B8(v48[0], qword_100080BF8, 0, v56, &v55, v55, &v53, &v54);
      }

      if (v9 != 2)
      {
        if (v9)
        {
          v36 = v47;
          v37 = strerror(v9);
          sub_10004565C("failed to look up dstream id object (id %llu): %s\n", v36, v37);
          sub_100049C40(0x3EF, v9);
          goto LABEL_13;
        }

        sub_10004565C("refcnt (%u) of dstream id object (id %llu) is less than expected (%u)\n", v53, v47, DWORD1(v46) + v53);
        sub_100049C40(0x358, 92);
        LODWORD(v53) = v53 + DWORD1(v46);
        v8 = sub_10000C6B0(a3, 1, 9, 1, v47);
        if (v8)
        {
          goto LABEL_7;
        }

        WORD4(v46) &= ~0x10u;
        goto LABEL_40;
      }

      sub_10004565C("dstream (id %llu) does not have an associated dstream id object\n", v47);
      sub_100049C40(0x251, 92);
      v13 = v47;
      v14 = a3;
      v15 = 2;
      v16 = 0;
    }

    v17 = 1;
LABEL_39:
    v8 = sub_10000C6B0(v14, v15, v16, v17, v13);
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_10:
  if (v10 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v10;
  }

LABEL_13:
  sub_10003B928(dword_100080C00, 0);
  return v9;
}

uint64_t sub_10000C6B0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
    return sub_100027D7C(a1, 7u, a2, a3, a4, &v8, 8u, &v7, 4u);
  }

  else
  {

    return sub_10002797C();
  }
}

uint64_t sub_10000C718(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  *&v46 = 0xAAAAAAAAAAAAAAAALL;
  *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v45, 170, 24);
  if (*(a5 + 36))
  {
    v40 = *(a5 + 8);
  }

  else
  {
    v40 = 0;
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47[0] = v11;
  v47[1] = v11;
  v48 = v11;
  v49 = v11;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v12 = malloc_type_calloc(1uLL, 0x340uLL, 0xE0BC2888uLL);
  v13 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x27D18C27uLL);
  v14 = sub_10003F8AC(a1, a2, 8u, &v51);
  v15 = v14;
  if (!v12 || !v13 || v14)
  {
    sub_10004565C("unable to init fsroot tree for dstream repair\n");
    v19 = 795;
LABEL_10:
    sub_100049C40(v19, v15);
    goto LABEL_11;
  }

  v16 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  *v12 = v16;
  v12[1] = 0;
  v17 = sub_100039F68(v47, v51, qword_100080BF8, v12, 0x10u, 0x340u, v13, 3808);
  if (!v17)
  {
    v38 = a6;
    if (BYTE8(v48))
    {
      v21 = 0;
      v22 = v40;
LABEL_18:
      if (v22 != v21)
      {
        sub_10004565C("alloced_size (%llu) of dstream (id %llu) does not match calculated size (%llu)\n", v22, a4, *(a5 + 24));
      }

      if (v22 < v21)
      {
        sub_100049C40(0x3E3, 92);
        v23 = *&v45[0];
        v15 = sub_10000CFF8(v45, v22 - *(&v46 + 1));
        if (v15)
        {
          goto LABEL_11;
        }

        sub_10000CEC0(a1, a2, a3, 1, 10, v38, &v46, v45, v23 & 0xFFFFFFFFFFFFFFLL, (*(a5 + 40) & 0x40) != 0);
        goto LABEL_66;
      }

      if (v22 <= v21)
      {
        v15 = 0;
        goto LABEL_11;
      }

      if (v21)
      {
        v35 = 997;
      }

      else
      {
        v35 = 996;
      }

      sub_100049C40(v35, 92);
      *&v44 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *(&v44 + 1) = v21;
      memset(v43, 0, sizeof(v43));
      v15 = sub_10000CFF8(v43, v22 - v21);
      if (!v15)
      {
        sub_10000CEC0(a1, a2, a3, 2, 0, v38, &v44, v43, 0, 0);
LABEL_66:
        v15 = v24;
      }

LABEL_11:
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v37 = 0;
    v21 = 0;
    v22 = v40;
    while (1)
    {
      if (*v12 != v16)
      {
        goto LABEL_18;
      }

      v25 = v12[1];
      v26 = *v13 & 0xFFFFFFFFFFFFFFLL;
      if (v26)
      {
        if (v25 > v21 && v25 < v22)
        {
          sub_10004565C("found file extent gap (id %llu) at logical address %llu (expected %llu)\n", a4, v12[1], v21);
          sub_100049C40(0x255, 92);
          v29 = v12[1];
          *&v44 = *v12;
          *(&v44 + 1) = v21;
          memset(v43, 0, sizeof(v43));
          v30 = sub_10000CFF8(v43, v29 - v21);
          if (v30)
          {
LABEL_67:
            v15 = v30;
            goto LABEL_12;
          }

          sub_10000CEC0(a1, a2, a3, 2, 0, v38, &v44, v43, 0, 0);
          goto LABEL_50;
        }

        if (v25 >= v21 || v25 >= v22)
        {
          if (v25 < v22)
          {
            goto LABEL_51;
          }

          if (*(a5 + 36))
          {
            sub_10004565C("found file extent (id %llu) at logical address %llu beyond the end of the dstream %llu\n", a4, v12[1], v40);
          }

          else
          {
            sub_100045744("found orphan file extent (id %llu) at logical address %llu\n", a4, v25);
          }

          sub_100049C40(0x37F, 92);
        }

        else
        {
          sub_10004565C("found file extent overlap (id %llu) at logical address %llu (expected %llu)\n", a4, v12[1], v21);
          sub_100049C40(0x354, 92);
          v44 = *v12;
          memset(v43, 170, sizeof(v43));
          v41 = 24;
          v42 = 16;
          v31 = sub_1000397B8(v51, qword_100080BF8, 2, &v44, &v42, 16, v43, &v41);
          if (v31 || v42 != 16)
          {
            v32 = *(&v46 + 1);
LABEL_48:
            v33 = *&v45[0];
            v30 = sub_10000CFF8(v45, v12[1] - v32);
            if (v30)
            {
              goto LABEL_67;
            }

            sub_10000CEC0(a1, a2, a3, 1, 10, v38, &v46, v45, v33 & 0xFFFFFFFFFFFFFFLL, (*(a5 + 40) & 0x40) != 0);
LABEL_50:
            if (v30)
            {
              goto LABEL_67;
            }

LABEL_51:
            v21 = v12[1] + v26;
            v46 = *v12;
            v45[0] = *v13;
            *&v45[1] = v13[2];
            v37 = v26;
            goto LABEL_56;
          }

          v32 = *(&v46 + 1);
          if (v44 != *v12 || *(&v44 + 1) - *(&v46 + 1) != v37)
          {
            goto LABEL_48;
          }
        }

        sub_10000CEC0(a1, a2, a3, 0, 0, v38, v12, v13, 0, 0);
      }

      else
      {
        sub_10004565C("invalid zero-length extent (id %llu) at logical address %llu\n", a4, v25);
        sub_100049C40(0x31A, 92);
        sub_10000CEC0(a1, a2, a3, 0, 0, 1, v12, v13, 0, 0);
      }

      if (v30)
      {
        goto LABEL_67;
      }

LABEL_56:
      v34 = (*(&v47[0] + 1))(v47);
      if (v34)
      {
        v15 = v34;
        v36 = strerror(v34);
        sub_10004565C("error iterating fsroot tree during dstream repair: %s\n", v36);
        v19 = 796;
        goto LABEL_10;
      }

      v22 = v40;
      if (BYTE8(v48))
      {
        goto LABEL_18;
      }
    }
  }

  v15 = v17;
  v18 = strerror(v17);
  sub_10004565C("unable to init fsroot tree iterator for dstream repair: %s\n", v18);
LABEL_12:
  free(v13);
LABEL_13:
  if (v12)
  {
    free(v12);
  }

  return v15;
}

char *sub_10000CC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v6) = *(a1 + 36);
  v22 = v6;
  v7 = malloc_type_malloc(8 * (v6 + 1), 0x100004000313F17uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 36);
  if (v9)
  {
    if (v9 == 1)
    {
      *v7 = *a1;
      goto LABEL_9;
    }

    if (!sub_10000CE54(a2, v7, v9, &v22))
    {
      LODWORD(v6) = v22;
      LODWORD(v9) = *(a1 + 36);
      goto LABEL_9;
    }

    free(v8);
    return 0;
  }

LABEL_9:
  if (v6 > v9)
  {
    v22 = v9;
    LODWORD(v6) = v9;
  }

  *(v8 + v6) = a3;
  if (v6)
  {
    v11 = 0;
    v12 = 1;
    v6 = v6;
    do
    {
      v13 = *(v8 + v11);
      v14 = 1;
      if (v13 >= 0x3E8)
      {
        v15 = *(v8 + v11);
        do
        {
          v13 = v15 / 0x3E8;
          v14 += 3;
          v16 = v15 > 0xF423F;
          v15 /= 0x3E8uLL;
        }

        while (v16);
      }

      if (v13 >= 0xA)
      {
        do
        {
          ++v14;
          v16 = v13 > 0x63;
          v13 /= 0xAuLL;
        }

        while (v16);
      }

      v12 += v14 + 1;
      ++v11;
    }

    while (v11 != v6);
    v10 = malloc_type_malloc(v12, 0xDD739202uLL);
    if (v10)
    {
      v17 = 0;
      v18 = v8;
      while (1)
      {
        v19 = *v18++;
        v20 = snprintf(&v10[v17], v12 - v17, "%llu ", v19);
        if ((v20 & 0x80000000) != 0)
        {
          break;
        }

        v17 += v20;
        if (v17 >= v12)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_27;
        }
      }

      free(v10);
      v10 = 0;
    }
  }

  else
  {
    v10 = malloc_type_malloc(1uLL, 0xDD739202uLL);
  }

LABEL_27:
  free(v8);
  return v10;
}