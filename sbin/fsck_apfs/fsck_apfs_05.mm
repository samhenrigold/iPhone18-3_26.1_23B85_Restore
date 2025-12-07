uint64_t sub_10003F6E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7)
{
  v30[1] = 0xAAAAAAAAAAAAAAAALL;
  v25[0] = 0;
  v25[1] = a3;
  v27 = 0xAAAAAAAA00000EE0;
  v28 = a6;
  v29 = a7;
  v30[0] = 0;
  LOWORD(v30[1]) = a5;
  v26 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xA93B1C53uLL);
  if (v26)
  {
    v11 = sub_10002D5F0(a1, a2, v25);
    if (v11)
    {
      v12 = v11;
      sub_10004565C("failed to init fsroot tree for lookup in directory\n");
      v13 = 1285;
    }

    else
    {
      v14 = sub_10003F964(&v29 + 8, a4);
      if (!v14)
      {
        while (SDWORD2(v29) >= 1)
        {
          v16 = *(v30[0] + --DWORD2(v29));
          v23 = v16 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
          v24 = 0;
          v21 = v23;
          v22 = 0;
          v17 = *(a2[5] + 56);
          if ((v17 & 9) != 0)
          {
            v18 = &v21;
          }

          else
          {
            v18 = &v23;
          }

          if ((v17 & 9) != 0)
          {
            v19 = 12;
          }

          else
          {
            v19 = 10;
          }

          v20 = sub_10003FA04(a1, a2, a3, 1, v18, v19, sub_10003FBEC);
          if (v20)
          {
            return v20;
          }
        }

        v12 = 0;
        goto LABEL_8;
      }

      v12 = v14;
      sub_10004565C("failed to allocate dir-stack memory for lookup in directory\n");
      v13 = 1286;
    }

    sub_100049C40(v13, v12);
LABEL_8:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_10;
  }

  sub_10004565C("failed to allocate memory for lookup in directory\n");
  v12 = 12;
  sub_100049C40(0x504, 12);
LABEL_10:
  if (v30[0])
  {
    free(v30[0]);
  }

  return v12;
}

uint64_t sub_10003F8AC(uint64_t a1, void *a2, unsigned int a3, uint64_t *a4)
{
  if (a3 <= 5)
  {
    if (a3 - 3 >= 3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          return sub_10002D394(a1, a2, a4);
        }

        return 22;
      }

      return sub_10002D2DC(a1, a2, a4);
    }

    return sub_10002D5F0(a1, a2, a4);
  }

  if (a3 <= 0x13)
  {
    if (((1 << a3) & 0x3600) != 0)
    {
      return sub_10002D5F0(a1, a2, a4);
    }

    if (((1 << a3) & 0xD0000) != 0)
    {
LABEL_12:
      if (*(a2[5] + 1096))
      {
        return sub_10002D6C4(a1, a2, a4);
      }

      return sub_10002D5F0(a1, a2, a4);
    }

    if (a3 == 11)
    {
      return sub_10002D2DC(a1, a2, a4);
    }
  }

  if (a3 - 6 < 2)
  {
    goto LABEL_12;
  }

  if (a3 == 8)
  {
    v5 = a2[6];
    if (!v5)
    {
      v5 = a2[5];
    }

    if ((*(v5 + 56) & 0x20) != 0)
    {
      return sub_10002D44C(a1, a2, a4);
    }

    goto LABEL_12;
  }

  return 22;
}

uint64_t sub_10003F964(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 4);
  if (*a1 >= v4)
  {
    if (v5 > 4095)
    {
      return 12;
    }

    v7 = v4 ? 2 * v4 : 32;
    v6 = malloc_type_realloc(*(a1 + 8), 8 * v7, 0x100004000313F17uLL);
    if (!v6)
    {
      return 12;
    }

    *(a1 + 8) = v6;
    *(a1 + 4) = v7;
    v5 = *a1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v8 = 0;
  *a1 = v5 + 1;
  v6[v5] = a2;
  return v8;
}

uint64_t sub_10003FA04(uint64_t a1, void *a2, uint64_t a3, int a4, unsigned __int8 *a5, unsigned int a6, uint64_t (*a7)(void))
{
  v12 = *a5 >> 60;
  if (v12 == 14)
  {
    LODWORD(v12) = a5[8];
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_10003F8AC(a1, a2, v12, &v33);
  if (v13)
  {
    v14 = v13;
    v15 = strerror(v13);
    sub_10004565C("unable to init fsroot tree: %s\n", v15);
    v16 = 1085;
LABEL_7:
    sub_100049C40(v16, v14);
    return v14;
  }

  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v17;
  v32 = v17;
  v29 = v17;
  v30 = v17;
  v28 = v17;
  v18 = sub_10003A444(&v28, v33, a3, a5, a6);
  if (v18)
  {
    v14 = v18;
    v19 = strerror(v18);
    sub_10004565C("unable to init fsroot tree iterator: %s\n", v19);
    v16 = 1086;
    goto LABEL_7;
  }

  if (v29)
  {
    v21 = *a5 >> 60;
    if (v21 == 14)
    {
      LODWORD(v21) = a5[8];
    }

    v22 = *v29 >> 60;
    if (v22 == 14)
    {
      LODWORD(v22) = *(v29 + 8);
    }

    v23 = v21 == v22;
  }

  else
  {
    v23 = 0;
  }

  LODWORD(v14) = 0;
  if ((BYTE8(v30) & 1) == 0)
  {
    v24 = a4 ^ 1;
    if (v23 | v24)
    {
      while (1)
      {
        if (v23)
        {
          v25 = a7();
          if (v25)
          {
            break;
          }
        }

        v25 = (*(&v28 + 1))(&v28);
        if (v25)
        {
          break;
        }

        if (v29)
        {
          v26 = *a5 >> 60;
          if (v26 == 14)
          {
            LODWORD(v26) = a5[8];
          }

          v27 = *v29 >> 60;
          if (v27 == 14)
          {
            LODWORD(v27) = *(v29 + 8);
          }

          v23 = v26 == v27;
        }

        else
        {
          v23 = 0;
        }

        LODWORD(v14) = 0;
        if ((BYTE8(v30) & 1) != 0 || ((v23 | v24) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v14) = v25;
    }
  }

LABEL_32:
  if (v28)
  {
    (v28)(&v28);
  }

  if (v14 == -1)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t sub_10003FBEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v20 = 8;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v21 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  *(a5 + 24) = 3808;
  v9 = sub_1000397B8(*a5, v7, 0, &v21, &v20, 8, v8, (a5 + 24));
  if (v9)
  {
    v10 = v9;
    if (v9 == 2)
    {
      return 0;
    }

    v13 = *a3;
    v14 = strerror(v9);
    sub_10004565C("unable to load inode (oid 0x%llx) for lookup in purgatory directory: %s\n", v13, v14);
    v15 = 1281;
LABEL_16:
    sub_100049C40(v15, v10);
    return v10;
  }

  v11 = (*(a5 + 32))(&v21, v20, v8, *(a5 + 24), *(a5 + 40));
  if (!v11)
  {
    if ((v8[40] & 0xF000) == 0x4000)
    {
      v10 = sub_10003F964(a5 + 48, *a3);
      if (!v10)
      {
        return v10;
      }

      sub_100049C40(0x503, v10);
      if (*(a5 + 64) != 1)
      {
        sub_10004565C("failed to allocate dir-stack memory for lookup in directory\n");
        return v10;
      }

      if ((*(a5 + 65) & 1) == 0)
      {
        v16 = strerror(v10);
        sub_100045744("failed to allocate dir-stack memory for lookup in directory: %s; results may be incomplete\n", v16);
        v10 = 0;
        *(a5 + 65) = 1;
        return v10;
      }
    }

    return 0;
  }

  v10 = v11;
  if (v11 != -1)
  {
    v17 = *a3;
    v18 = strerror(v11);
    sub_10004565C("failed to run predicate callback on inode (oid 0x%llx) for lookup in directory: %s\n", v17, v18);
    v15 = 1282;
    goto LABEL_16;
  }

  v12 = *(a5 + 56);
  if (v12)
  {
    free(v12);
  }

  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10003FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v42 = 0;
  v39 = 3808;
  v40 = 8;
  *a5 = 0;
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v10 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xC514A027uLL);
  if (!v10)
  {
    sub_10004565C("failed to allocate memory for file lookup in purgatory directory\n");
    v13 = 12;
    sub_100049C40(0x32C, 12);
    return v13;
  }

  v11 = v10;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v12 = sub_10002D5F0(a1, a2, &v42);
  if (v12)
  {
    v13 = v12;
    sub_10004565C("failed to init fsroot tree for file lookup in purgatory directory\n");
    v14 = 805;
LABEL_5:
    sub_100049C40(v14, v13);
    goto LABEL_57;
  }

  if ((v6 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_56;
  }

  v15 = 0;
  v37 = a3;
  while (1)
  {
    v16 = malloc_type_calloc(1uLL, 0x340uLL, 0xF4F6693FuLL);
    v17 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x50A9EED1uLL);
    v18 = v17;
    if (v16 && v17)
    {
      v38 = v15;
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v50 = v19;
      v51 = v19;
      *__str = v19;
      v49 = v19;
      snprintf(__str, 0x40uLL, "0x%llx-dead", v6);
      v45 = 0;
      v20 = *(*(a2 + 40) + 56);
      v44 = 18;
      v21 = strlen(__str);
      *a5 = 0;
      v22 = sub_10002D5F0(a1, a2, &v45);
      if (v22)
      {
        v13 = v22;
        sub_10004565C("failed to init fsroot tree for file lookup in directory\n");
        sub_100049C40(0x329, v13);
        a3 = v37;
        v15 = v38;
        goto LABEL_52;
      }

      v31 = v21 + 1;
      *v16 = 0x9000000000000003;
      if ((v20 & 9) != 0)
      {
        v43 = -1;
        if (sub_100002E7C(__str, v21, (v20 >> 3) & 1, sub_100040D58, &v43))
        {
          a3 = v37;
          v15 = v38;
LABEL_47:
          if ((*a5 & 1) != 0 && *v18 != v6)
          {
            v13 = 0;
            *a5 = 0;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_52;
        }

        __memcpy_chk();
        v16[2] = v31 & 0x3FF | (v43 << 10);
        v32 = v21 + 13;
      }

      else
      {
        __memcpy_chk();
        *(v16 + 4) = v31;
        v32 = v21 + 11;
      }

      LODWORD(v47) = v32;
      a3 = v37;
      v33 = sub_1000397B8(v45, v37, 0, v16, &v47, 832, v18, &v44);
      v15 = v38;
      if (v33 != 2)
      {
        v13 = v33;
        if (v33)
        {
          v34 = strerror(v33);
          sub_10004565C("unable to load drec (oid 0x%llx) for file lookup in directory\n: %s\n", 3, v34);
          sub_100049C40(0x321, v13);
          goto LABEL_52;
        }

        *a5 = 1;
      }

      goto LABEL_47;
    }

    sub_10004565C("failed to allocate memory for file lookup in purgatory directory\n");
    v13 = 12;
    sub_100049C40(0x32B, 12);
    if (!v16)
    {
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      free(v18);
      goto LABEL_17;
    }

LABEL_52:
    free(v16);
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v13)
    {
      goto LABEL_57;
    }

    if (*a5)
    {
      goto LABEL_56;
    }

    v47 = 0xAAAAAAAAAAAAAAAALL;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    *__str = 0u;
    v45 = 0x9000000000000003;
    v46 = 0;
    *a5 = 0;
    v23 = sub_10002D5F0(a1, a2, &v47);
    if (v23)
    {
      v13 = v23;
      sub_10004565C("failed to init fsroot tree for file lookup in directory\n");
      v24 = 810;
LABEL_23:
      sub_100049C40(v24, v13);
      goto LABEL_24;
    }

    v25 = sub_10003A444(__str, v47, a3, &v45, 0xCu);
    if (v25)
    {
      v13 = v25;
      v26 = strerror(v25);
      sub_10004565C("unable to initialize fsroot tree iterator for file lookup in directory: %s\n", v26);
      v24 = 803;
      goto LABEL_23;
    }

    while (1)
    {
      if ((BYTE8(v50) & 1) != 0 || *v49 != 0x9000000000000003)
      {
        v13 = 0;
        goto LABEL_24;
      }

      if (**(&v49 + 1) == v6)
      {
        break;
      }

      v29 = (*&__str[8])(__str);
      if (v29)
      {
        v13 = v29;
        v30 = strerror(v29);
        sub_10004565C("error iterating fsroot tree for file lookup in directory: %s\n", v30);
        v24 = 804;
        goto LABEL_23;
      }
    }

    v13 = 0;
    *a5 = 1;
LABEL_24:
    if (*__str)
    {
      (*__str)(__str);
    }

    if (v13)
    {
      goto LABEL_57;
    }

    if (*a5)
    {
      goto LABEL_56;
    }

    v41 = v6 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    v39 = 3808;
    v27 = sub_1000397B8(v42, a3, 0, &v41, &v40, v40, v11, &v39);
    v13 = v27;
    if (v27)
    {
      break;
    }

    v6 = *v11;
    if ((*v11 - 3) <= 0xFFFFFFFFFFFFFFFDLL && v15++ < 0x1FF)
    {
      continue;
    }

    goto LABEL_57;
  }

  if (v27 != 2)
  {
    v36 = strerror(v27);
    sub_10004565C("unable to load inode (oid 0x%llx) for file lookup in purgatory directory: %s\n", v6, v36);
    v14 = 802;
    goto LABEL_5;
  }

LABEL_56:
  v13 = 0;
LABEL_57:
  free(v11);
  return v13;
}

uint64_t sub_1000402AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return sub_100039748(a1, a2, a3, *(*(a3 + 40) + 120) & 0xC0000000, *(*(a3 + 40) + 120), 15, 0, *(*(a2 + 8) + 36), 0, 0, 0, *(*(a3 + 40) + 144), sub_10003F384);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_10002D2DC(a2, a3, &v17);
  if (!v8)
  {
    v9 = malloc_type_malloc(0x340uLL, 0x41C81BDDuLL);
    v10 = malloc_type_malloc(0xEE0uLL, 0x6316D6F7uLL);
    v11 = v10;
    if (v9 && v10)
    {
      *v9 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      v15 = 3808;
      v16 = 8;
      v12 = sub_1000397B8(v17, 0, 0, v9, &v16, 832, v10, &v15);
      if (v12)
      {
        v8 = v12;
        v13 = strerror(v12);
        sub_10004565C("failed to lookup extentref tree oid at snap_xid %llu : %s\n", a4, v13);
      }

      else
      {
        v8 = sub_100039748(a1, a2, a3, v11[10] & 0xC0000000, v11[10], 15, 0, *(*(a2 + 8) + 36), 0, 0, 0, *v11, sub_10003F384);
      }
    }

    else
    {
      sub_10004565C("failed to allocate memory for the extentref tree\n");
      v8 = 12;
      if (!v9)
      {
LABEL_12:
        if (v11)
        {
          free(v11);
        }

        return v8;
      }
    }

    free(v9);
    goto LABEL_12;
  }

  return v8;
}

uint64_t sub_100040474(unsigned __int16 *a1, unsigned int a2, int a3, void *a4, _WORD *a5, _DWORD *a6, unsigned int *a7)
{
  if (a2 < 4)
  {
    return 92;
  }

  v7 = *a1;
  if (!*a1)
  {
    return 2;
  }

  if (a1[1] + 4 * v7 + 4 > a2)
  {
    return 92;
  }

  v8 = 0;
  v9 = 0;
  for (i = a1 + 3; ; i += 2)
  {
    v11 = *i;
    if (*(i - 2) == a3)
    {
      break;
    }

    v9 += (v11 + 7) & 0x1FFF8;
    if (v7 == ++v8)
    {
      return 2;
    }
  }

  v13 = a1[1];
  if (v11 > v13 || v13 - v11 < v9)
  {
    return 92;
  }

  if (a4)
  {
    *a4 = &a1[2 * v7 + 2] + v9;
  }

  if (a5)
  {
    *a5 = v11;
  }

  if (a6)
  {
    *a6 = v8;
  }

  result = 0;
  if (a7)
  {
    *a7 = v9;
  }

  return result;
}

uint64_t sub_10004052C(unsigned __int16 *a1, unsigned int a2, char a3, const void *a4, unsigned int a5, char a6)
{
  if (a2 < 4)
  {
    return 92;
  }

  v11 = (a5 + 7) & 0xFFF8;
  v13 = a1 + 2;
  v12 = *a1;
  if (*a1)
  {
    v14 = a1[1];
    if (4 * v12 + v11 + v14 + 8 > a2)
    {
      return 92;
    }

    v15 = 0;
    v16 = a1 + 3;
    v17 = *a1;
    do
    {
      v18 = *v16;
      v16 += 2;
      v15 += (v18 + 7) & 0x1FFF8;
      --v17;
    }

    while (v17);
    if (v15 >= 0x10000)
    {
      sub_10004565C("xf: xf total size (%u) is larger than UINT16_MAX\n", v15);
      v19 = 92;
      sub_100049C40(0x43F, 92);
      return v19;
    }
  }

  else
  {
    if (a2 < (v11 | 4u))
    {
      return 92;
    }

    v15 = 0;
    LODWORD(v14) = a1[1];
  }

  v20 = &v13[2 * v12];
  if (v15 != v14)
  {
    if (v15 <= v14)
    {
      sub_100045744("xf: xf_used_data (%u) is larger than expected (%u)\n", v14, v15);
      sub_100049C40(0x440, -11);
      if (sub_10004758C(qword_10009BA58, "Fix xf_used_data? "))
      {
        bzero(v20 + v15, a1[1] - v15);
        a1[1] = v15;
        LOWORD(v14) = v15;
        goto LABEL_14;
      }
    }

    return 92;
  }

LABEL_14:
  memmove(v20 + 2, v20, v14);
  v21 = *a1;
  v22 = &v13[2 * v21];
  *v22 = a3;
  *(v22 + 1) = a6;
  v22[1] = a5;
  *a1 = v21 + 1;
  memcpy(v20 + a1[1] + 4, a4, a5);
  if (a5 != v11)
  {
    bzero(v20 + a5 + a1[1] + 4, (v11 - a5));
  }

  v19 = 0;
  a1[1] += v11;
  return v19;
}

uint64_t sub_100040708(unsigned __int16 *a1, unsigned int *a2, int a3)
{
  __dst = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v6 = a1 + 2;
  v5 = *a1;
  result = sub_100040474(a1, *a2, a3, &__dst, &v15, &v14, &v13);
  if (!result)
  {
    v8 = (v15 + 7) & 0x1FFF8;
    v9 = (a1[1] + 7) & 0x1FFF8;
    v10 = v8 + v13;
    if (v9 >= v10)
    {
      memmove(__dst, __dst + v8, v9 - v10);
      a1[1] -= v8;
      memmove(&v6[2 * v14], &v6[2 * v14 + 2], 4 * (*a1 + ~v14));
      v11 = *a1 - 1;
      *a1 = v11;
      memmove(&v6[2 * v11], &v6[2 * v5], a1[1]);
      v12 = *a1;
      if (*a1)
      {
        v12 = a1[1] + 4 * v12 + 4;
      }

      result = 0;
      *a2 = v12;
    }

    else
    {
      return 92;
    }
  }

  return result;
}

uint64_t sub_100040818(int a1, uint64_t a2, void *a3, int *a4)
{
  if (a1 <= 15)
  {
    switch(a1)
    {
      case 3:
        v4 = 92;
        v5 = 92;
        goto LABEL_18;
      case 9:
        v4 = 18;
        v5 = 18;
        goto LABEL_18;
      case 13:
        v4 = 26;
        v5 = 26;
        goto LABEL_18;
    }
  }

  else if (a1 > 18)
  {
    if (a1 == 19)
    {
      v4 = 8;
      v5 = 8;
      goto LABEL_18;
    }

    if (a1 == 20)
    {
      v4 = 12;
      v5 = 12;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 == 16)
    {
      v4 = 24;
      v5 = 24;
      goto LABEL_18;
    }

    if (a1 == 18)
    {
      v4 = 52;
      v5 = 52;
LABEL_18:
      v6 = 0;
      *a3 = a2 + v4;
      *a4 = v5;
      return v6;
    }
  }

  sub_10004565C("unknown obj type (%u) to add xfields\n", a1);
  v6 = 22;
  sub_100049C40(0x565, 22);
  return v6;
}

uint64_t sub_10004093C(uint64_t a1, const void *a2, unsigned int *a3, uint64_t a4, const void *a5, uint64_t a6, void (*a7)(uint64_t, const void *, uint64_t), uint64_t *a8)
{
  v12 = a4;
  v15 = a1;
  v25 = 0;
  v16 = sub_100040AD8(a1, a2, *a3, a4, a6, &v25);
  v17 = v16;
  if ((v16 & 0xFFFFFFFD) == 0)
  {
    if (v16 != 2)
    {
      a7(v25, a5, a6);
      return 0;
    }

    v27 = 0;
    v26 = 0;
    v18 = sub_100040818(v15, a2, &v27, &v26);
    if (!v18)
    {
      v20 = *a3;
      v21 = v26;
      v22 = a6 + *a3 + 4 * (*a3 == v26) + 4;
      v23 = malloc_type_calloc(1uLL, v22, 0x92A0DDBEuLL);
      *a8 = v23;
      if (!v23)
      {
        sub_10004565C("failed to allocate memory to add an xfield\n");
        v17 = 12;
        sub_100049C40(0x441, 12);
        return v17;
      }

      memcpy(v23, a2, *a3);
      *a3 = v22;
      v18 = sub_100040818(v15, *a8, &v27, &v26);
      if (!v18)
      {
        v24 = v27;
        if (v20 == v21)
        {
          bzero(v27, v22 - v21);
        }

        v18 = sub_10004052C(v24, v22 - v21, v12, a5, a6, 16);
        if (!v18)
        {
          return 0;
        }
      }
    }

    return v18;
  }

  return v17;
}

uint64_t sub_100040AD8(int a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v13 = 0;
  v12 = 0;
  v11 = 0;
  result = sub_100040818(a1, a2, &v12, &v11);
  if (!result)
  {
    if (a3 == v11)
    {
      return 2;
    }

    else
    {
      result = sub_100040474(v12, a3 - v11, a4, a6, &v13, 0, 0);
      if (!result)
      {
        if (v13 == a5)
        {
          return 0;
        }

        else
        {
          return 34;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100040B74(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = 0;
  result = sub_100040AD8(3, a1, a2, a3, 8, &v7);
  v6 = 0;
  if (!result)
  {
    v6 = *v7;
  }

  *a4 = v6;
  return result;
}

unint64_t sub_100040BD0(uint64_t a1, int a2)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100040AD8(3, a1, a2, 8, 40, &v10))
  {
    return 0;
  }

  v11 = 0;
  v5 = sub_100040AD8(3, a1, a2, 13, 8, &v11);
  v6 = 0;
  if (!v5)
  {
    v6 = *v11;
  }

  v7 = *(v10 + 8);
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_100040CC0(uint64_t *a1, void *a2)
{
  v2 = __CFADD__(*a1, *a2);
  v3 = *a1 + *a2;
  *a1 = v3;
  if (v2)
  {
    sub_100045744("sparse bytes overflow (current %llu, update %llu)\n", v3, *a2);
    sub_100049C40(0x442, 92);
    *a1 = -1;
  }
}

uint64_t sub_100040D58(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = off_10009B0E8(*a3, a1, a2);
  *a3 = result;
  return result;
}

char *sub_100040D98(unsigned int a1)
{
  if (a1 < 0x15)
  {
    return off_100078A30[a1];
  }

  v1 = byte_10009A401;
  snprintf(byte_10009A401, 0x20uLL, "Unknown type %d", a1);
  return v1;
}

double sub_100040DF8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 40);
  dword_10009A428 = *(v2 + 36);
  v4 = sub_10001C07C(0x64u, 0x38400000uLL, 0x5A00000uLL);
  if (!sub_100039748(dword_10009BA68, 0, 0, 0x8000000, 2, 0, 0, 4096, 32, 16, 0, 0, sub_100041030))
  {
    sub_10003B84C(dword_10009BA68, 0, 64);
  }

  byte_10009A430 = 1;
  if (!sub_100039748(dword_10009BAA8, 0, 0, 0x8000000, 2, 0, 0, 4096, 24, 16, 0, 0, sub_100041064))
  {
    sub_10003B84C(dword_10009BAA8, 0, 64);
  }

  v5 = &unk_10009BAE8;
  v6 = 3;
  do
  {
    if (!sub_100039748(v5, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_1000410C0))
    {
      sub_10003B84C(v5, 0, 64);
    }

    v5 += 64;
    --v6;
  }

  while (v6);
  byte_10009A431 = 1;
  sub_10001E320(&unk_10009B430, v3, v4);
  byte_10009A432 = 0;
  byte_10009A433 = 1;
  sub_10001E320(&unk_10009B500, v3, v4);
  bzero(&unk_10009A438, 0x640uLL);
  v7 = 0;
  v8 = *(a1 + 8);
  for (i = 184; i != 984; i += 8)
  {
    v10 = *(v8 + i);
    if (v10)
    {
      v11 = 16 * v7++;
      *(&unk_10009A438 + v11) = v10;
    }
  }

  result = 0.0;
  xmmword_10009AAA8 = 0u;
  unk_10009AAB8 = 0u;
  xmmword_10009AA88 = 0u;
  unk_10009AA98 = 0u;
  xmmword_10009AA78 = 0u;
  return result;
}

uint64_t sub_100041064(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  if (*a2 > *a4)
  {
    goto LABEL_2;
  }

  if (*a2 < *a4)
  {
    goto LABEL_4;
  }

  v8 = a2[1];
  v9 = a4[1];
  if (v8 > v9)
  {
LABEL_2:
    v6 = 1;
    goto LABEL_5;
  }

  if (v8 < v9)
  {
LABEL_4:
    v6 = -1;
    goto LABEL_5;
  }

  v10 = a2[2];
  v11 = a4[2];
  v12 = v10 > v11;
  if (v10 >= v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v12)
  {
    v6 = 1;
  }

LABEL_5:
  *a6 = v6;
  return 0;
}

uint64_t sub_1000410C0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = a2[1];
  v7 = a4[1];
  if (v6 <= v7)
  {
    if (v6 >= v7)
    {
      if (*a2 <= *a4)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 < *a4)
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  *a6 = v8;
  return 0;
}

void sub_100041108()
{
  sub_10003B928(dword_10009BA68, 0);
  sub_10003B928(dword_10009BAA8, 0);
  v0 = &unk_10009B430;
  v1 = 3;
  do
  {
    sub_10001E44C(v0);
    v0 += 104;
    --v1;
  }

  while (v1);
  v2 = &unk_10009BAE8;
  v3 = 3;
  do
  {
    if (v2[7])
    {
      sub_10003B928(v2, 0);
    }

    v2 += 8;
    --v3;
  }

  while (v3);
}

uint64_t sub_100041190(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8)
{
  v18 = 0;
  result = sub_10003B724(dword_10009BA68, 0, &v18);
  if (byte_10009A430 == 1 && v18 <= 0x31)
  {
    v17[1] = a2;
    v18 = a3;
    v19 = a4;
    v22 = a5;
    v23 = a6;
    v20 = a7;
    v21 = a8;
    v17[0] = a1;
    return sub_10003B12C(dword_10009BA68, 0, &v18, 32, v17, 16);
  }

  return result;
}

uint64_t sub_100041258(unint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8, char a9)
{
  memset(v36, 0, sizeof(v36));
  v28 = 0;
  v29 = 0;
  v30 = a3;
  v31 = a4;
  v34 = a5;
  v35 = a6;
  v32 = a7;
  v33 = a8;
  v26 = 16;
  v27 = 32;
  if (sub_1000397B8(dword_10009BA68, 0, 1, v36, &v27, 32, &v28, &v26))
  {
    return 0;
  }

  v20 = a8;
  while (1)
  {
    if (a2 + a1 <= v28 || v29 + v28 <= a1)
    {
      goto LABEL_10;
    }

    if (sub_1000413EC(v36, &v30))
    {
      break;
    }

    a9 = 0;
LABEL_10:
    v21 = 16;
    v22 = 32;
    if (sub_1000397B8(dword_10009BA68, 0, 2, v36, &v22, 32, &v28, &v21))
    {
      return 0;
    }
  }

  if (a9)
  {
    v25[0] = 0;
    v25[1] = 0;
    v23 = 16;
    v24 = 32;
    if (sub_1000397B8(dword_10009BA68, 0, 0, &v30, &v24, 32, v25, &v23))
    {
      sub_100041190(a1, a2, a3, a4, a5, a6, a7, v20);
    }
  }

  return 1;
}

uint64_t sub_1000413EC(uint64_t a1, uint64_t a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v3)
  {
    v14 = *(a1 + 24);
    v15 = *(a2 + 24);
    if (v14 > v15)
    {
      return 1;
    }

    if (v14 < v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *(a1 + 12);
  v8 = *(a2 + 12);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 14);
  v10 = *(a2 + 14);
  v11 = v9 >= v10;
  v12 = v9 == v10;
  if (v9 >= v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (!v12 && v11)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

BOOL sub_100041484()
{
  v1 = 0;
  sub_10003B724(dword_10009BA68, 0, &v1);
  return v1 != 0;
}

uint64_t sub_1000414C4()
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0;
  v6 = 0;
  v3 = 16;
  v4 = 32;
  for (result = sub_1000397B8(dword_10009BA68, 0, 1, &v7, &v4, 32, &v5, &v3); !result; result = sub_1000397B8(dword_10009BA68, 0, 2, &v7, &v2, 32, &v5, &v1))
  {
    sub_100045744("Overlapping object: (oid : 0x%llx) (type : %u) (subtype : %u), (%llu + %llu)\n", v8, WORD6(v7), HIWORD(v7), v5, v6);
    v1 = 16;
    v2 = 32;
  }

  return result;
}

uint64_t sub_100041594(uint64_t *a1)
{
  v107 = 0u;
  v108 = 0u;
  v105 = 0;
  v106 = 0;
  v103 = 16;
  v104 = 32;
  v2 = 0;
  if (sub_1000397B8(dword_10009BA68, 0, 1, &v107, &v104, 32, &v105, &v103))
  {
    return v2;
  }

  do
  {
    if (DWORD2(v107) != 0x40000000 || *(&v108 + 1) != 0 || WORD6(v107) != 0 || HIWORD(v107) != 15)
    {
      goto LABEL_60;
    }

    v101 = 0xAAAAAAAAAAAAAAAALL;
    v102 = 0xAAAAAAAAAAAAAAAALL;
    v100 = 0;
    v98[0] = 0;
    v98[1] = 0;
    v99 = 0;
    v96 = 20;
    v97 = 8;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    if (!sub_100041258(v105, v106, v107, 0x40000000, v108, 0, 0, 15, 0))
    {
      v109 = v107;
      v110 = v108;
      sub_10003B708(dword_10009BA68, 0, &v109, 32);
      v8 = 0;
      goto LABEL_52;
    }

    v7 = sub_10001D860(a1, v107);
    v8 = v7;
    if (!v7)
    {
      sub_100045744("repair_overlapped_extents: unable to find volume for fs_oid 0x%llx\n", v107);
      v12 = 604;
      v13 = 2;
      goto LABEL_51;
    }

    v9 = *(v7 + 5);
    v10 = *(v9 + 976);
    if (*(v9 + 264))
    {
      if (v10)
      {
LABEL_26:
        sub_10004565C("repair_overlapped_extents: encryption is rolling for fs_oid 0x%llx\n", v107);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = 16;
        }

        v12 = 605;
        v13 = 16;
        goto LABEL_51;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_26;
      }

      if (v7[8] == 1)
      {
        v11 = sub_100046258(v7, a1, 2);
        if (v11)
        {
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v11;
          }

          goto LABEL_52;
        }
      }
    }

    v14 = sub_10003F8AC(a1, v8, 8u, &v102);
    if (v14)
    {
      v15 = v14;
      sub_10004565C("repair_overlapped_extents: unable to init fsroot for fs_oid 0x%llx\n", v107);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v15;
      }

      v12 = 606;
      goto LABEL_50;
    }

    v16 = sub_10002D394(a1, v8, &v101);
    if (v16)
    {
      v15 = v16;
      sub_10004565C("repair_overlapped_extents: unable to init extentref tree for fs_oid 0x%llx\n", v107);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v15;
      }

      v12 = 607;
      goto LABEL_50;
    }

    v100 = v108 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v17 = sub_1000397B8(v101, 0, 0, &v100, &v97, v97, v98, &v96);
    if (v17)
    {
      v15 = v17;
      v75 = v108;
      v18 = v107;
      v19 = strerror(v17);
      sub_10004565C("repair_overlapped_extents: unable to load pext 0x%llx for fs_oid 0x%llx: %s\n", v75, v18, v19);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v15;
      }

      v12 = 608;
      goto LABEL_50;
    }

    v76 = v99;
    sub_100045614("repair_overlapped_extents: allocate space for block_count 0x%llx\n", v106);
    v20 = sub_100001D64(a1, v8, 3u, v106, &v95);
    if (v20)
    {
      v15 = v20;
      v21 = v106;
      v22 = strerror(v20);
      sub_10004565C("repair_overlapped_extents: unable to allocate space for block_count 0x%llx: %s\n", v21, v22);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v15;
      }

      v12 = 609;
      goto LABEL_50;
    }

    sub_100045614("repair_overlapped_extents: copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx\n", v105, v95, v106);
    v28 = sub_100031B78(a1, v105, v95, v106);
    if (v28)
    {
      v29 = v28;
      v30 = v106;
      v71 = v95;
      v77 = v105;
      v31 = strerror(v28);
      sub_10004565C("repair_overlapped_extents: failed to copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx: %s\n", v77, v71, v30, v31);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v29;
      }

      goto LABEL_52;
    }

    v100 = v95 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    sub_100045614("repair_overlapped_extents: insert target pext 0x%llx\n", v95);
    v32 = sub_10003B12C(v101, 0, &v100, v97, v98, v96);
    if (v32)
    {
      v15 = v32;
      v78 = v95;
      v33 = v107;
      v34 = strerror(v32);
      sub_10004565C("repair_overlapped_extents: unable to insert target pext 0x%llx for fs_oid 0x%llx: %s\n", v78, v33, v34);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v15;
      }

      v12 = 613;
LABEL_50:
      v13 = v15;
LABEL_51:
      sub_100049C40(v12, v13);
      goto LABEL_52;
    }

    v92 = v107;
    v93 = v108;
    v94 = 0;
    v88 = 16;
    v89 = 24;
    if (sub_1000397B8(dword_10009BAA8, 0, 1, &v92, &v89, 24, &v90, &v88))
    {
      v65 = 0;
LABEL_73:
      v100 = v108 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      sub_100045614("repair_overlapped_extents: remove source pext 0x%llx\n", v108);
      v35 = sub_10003B708(v101, 0, &v100, v97);
      if (v35)
      {
        v36 = v35;
        v72 = v108;
        v37 = v107;
        v38 = strerror(v35);
        sub_10004565C("repair_overlapped_extents: unable to remove source pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v72, v37, v38);
        if (!v2)
        {
          LODWORD(v2) = v36;
        }

        sub_100049C40(0x269, v36);
      }

      v109 = v107;
      v110 = v108;
      sub_10003B708(dword_10009BA68, 0, &v109, 32);
      v39 = sub_100041EF0(a1, v8, v105, v106);
      if (v2)
      {
        v40 = v2;
      }

      else
      {
        v40 = v39;
      }

      if (v39)
      {
        v2 = v40;
      }

      else
      {
        v2 = v2;
      }

      goto LABEL_83;
    }

    v65 = 0;
    v46 = 0;
    while (1)
    {
      v109 = 0uLL;
      *&v110 = 0;
      v85 = 24;
      v86 = 16;
      if (v92 != v107 || v93 != v108)
      {
        break;
      }

      v73 = v46 + 1;
      v68 = v46;
      v87[0] = v94 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v87[1] = v91;
      sub_100045614("repair_overlapped_extents: load fext 0x%llx 0x%llx\n", v94, v91);
      v47 = sub_1000397B8(v102, 0, 0, v87, &v86, v86, &v109, &v85);
      if (v47)
      {
        v48 = v47;
        v66 = v91;
        v69 = v94;
        v49 = v107;
        v50 = strerror(v47);
        sub_10004565C("repair_overlapped_extents: unable to load fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v69, v66, v49, v50);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v48;
        }

        v51 = 614;
      }

      else
      {
        *(&v109 + 1) = v95;
        sub_100045614("repair_overlapped_extents: update fext 0x%llx 0x%llx\n", v94, v91);
        v52 = sub_10003B12C(v102, 0, v87, v86, &v109, v85);
        if (!v52)
        {
          ++v65;
          v55 = v68;
          goto LABEL_106;
        }

        v48 = v52;
        v67 = v91;
        v70 = v94;
        v53 = v107;
        v54 = strerror(v52);
        sub_10004565C("repair_overlapped_extents: unable to update fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v70, v67, v53, v54);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v48;
        }

        v51 = 615;
      }

      sub_100049C40(v51, v48);
      v55 = v73;
LABEL_106:
      v83 = 16;
      v84 = 24;
      v56 = sub_1000397B8(dword_10009BAA8, 0, 2, &v92, &v84, 24, &v90, &v83);
      v46 = v55;
      if (v56)
      {
        goto LABEL_116;
      }
    }

    v55 = v46;
LABEL_116:
    if (!v55)
    {
      goto LABEL_73;
    }

    v41 = v76;
    if (v55 != v76)
    {
      v100 = v108 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v99 = v55;
      sub_100045614("repair_overlapped_extents: update source pext 0x%llx\n", v108);
      v61 = sub_10003B12C(v101, 0, &v100, v97, v98, v96);
      if (v61)
      {
        v62 = v61;
        v74 = v108;
        v63 = v107;
        v64 = strerror(v61);
        sub_10004565C("repair_overlapped_extents: unable to update source pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v74, v63, v64);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v62;
        }

        sub_100049C40(0x268, v62);
      }

LABEL_83:
      v41 = v76;
    }

    if (v65)
    {
      if (v65 != v41)
      {
        v100 = v95 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        v99 = v65;
        sub_100045614("repair_overlapped_extents: update target pext 0x%llx\n", v95);
        v42 = sub_10003B12C(v101, 0, &v100, v97, v98, v96);
        if (v42)
        {
          v43 = v42;
          v79 = v95;
          v44 = v107;
          v45 = strerror(v42);
          sub_10004565C("repair_overlapped_extents: unable to target update target pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v79, v44, v45);
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v43;
          }

          sub_100049C40(0x26A, v43);
        }
      }

      v95 = 0;
    }

    else
    {
      v100 = v95 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      sub_100045614("repair_overlapped_extents: remove target pext 0x%llx\n", v95);
      v57 = sub_10003B708(v101, 0, &v100, v97);
      if (v57)
      {
        v58 = v57;
        v80 = v95;
        v59 = v107;
        v60 = strerror(v57);
        sub_10004565C("repair_overlapped_extents: unable to remove target pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v80, v59, v60);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v58;
        }

        sub_100049C40(0x26B, v58);
      }
    }

    sub_100049BF0();
LABEL_52:
    if (v95)
    {
      sub_100045614("repair_overlapped_extents: free space for target_paddr 0x%llx block_count 0x%llx\n", v95, v106);
      v23 = sub_100002C74(a1, v8, v95, v106);
      if (v23)
      {
        v24 = v23;
        v25 = v95;
        v26 = v106;
        v27 = strerror(v23);
        sub_10004565C("repair_overlapped_extents: unable to free space for target_paddr 0x%llx block_count 0x%llx: %s\n", v25, v26, v27);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v24;
        }

        sub_100049C40(0x26C, v24);
      }
    }

    if (v8)
    {
      sub_100046458(v8);
    }

LABEL_60:
    v81 = 16;
    v82 = 32;
  }

  while (!sub_1000397B8(dword_10009BA68, 0, 2, &v107, &v82, 32, &v105, &v81));
  return v2;
}

uint64_t sub_100041EF0(uint64_t *a1, int8x16_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  memset(v32, 0, sizeof(v32));
  v30 = 0;
  v31 = 0;
  v8 = sub_10001E8F4(&unk_10009B430, a3, a4, 0);
  if (v8)
  {
    v9 = v8;
    v10 = strerror(v8);
    sub_100045744("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v5, v4, v10);
    sub_100049C40(0x26D, v9);
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 16;
  v28 = 32;
  if (!sub_1000397B8(dword_10009BA68, 0, 1, v32, &v28, 32, &v30, &v27))
  {
    v11 = v4 + v5;
    do
    {
      if (v11 > v30 && v31 + v30 > v5)
      {
        if (v5 <= v30)
        {
          v13 = v30;
        }

        else
        {
          v13 = v5;
        }

        if (v11 - v13 >= v30 - v13 + v31)
        {
          v14 = v30 - v13 + v31;
        }

        else
        {
          v14 = v11 - v13;
        }

        sub_10004217C(v13, v14, WORD6(v32[0]), HIWORD(v32[0]), 0);
      }

      v25 = 16;
      v26 = 32;
    }

    while (!sub_1000397B8(dword_10009BA68, 0, 2, v32, &v26, 32, &v30, &v25));
  }

  v15 = 0;
  if (sub_10001E7C8(&unk_10009B430, v5, v4, &v29))
  {
    do
    {
      v24 = 0xAAAAAAAAAAAAAAAALL;
      v16 = v4 + v5;
      v17 = v4 + v5 - v29;
      if (sub_10001E6A4(&unk_10009B430, v29, v17, &v24))
      {
        v17 = v24 - v29;
      }

      sub_100045614("free_overlapped_range: free space for source_paddr 0x%llx block_count 0x%llx\n", v29, v17);
      v18 = sub_100002C74(a1, a2, v29, v17);
      if (v18)
      {
        v19 = v18 == 17;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = v18;
        v21 = v29;
        v22 = strerror(v18);
        sub_10004565C("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v21, v17, v22);
        if (v15)
        {
          v15 = v15;
        }

        else
        {
          v15 = v20;
        }

        sub_100049C40(0x26E, v20);
      }

      v5 = v29 + v17;
      v4 = v16 - v5;
    }

    while ((sub_10001E7C8(&unk_10009B430, v5, v16 - v5, &v29) & 1) != 0);
  }

  return v15;
}

uint64_t sub_10004213C(uint64_t a1, uint64_t *a2)
{
  v2 = 100;
  for (i = &qword_10009A440; ; i += 2)
  {
    v4 = *(i - 1);
    if (!v4)
    {
      return 2;
    }

    if (v4 == a1)
    {
      break;
    }

    if (!--v2)
    {
      return 2;
    }
  }

  result = 0;
  *a2 = *i;
  return result;
}

uint64_t sub_10004217C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v8 = 208;
  if (!a5)
  {
    v8 = 0;
  }

  result = sub_10001E8F4(&unk_10009B430 + v8, a1, a2, 1);
  if (!result)
  {
    if (*(qword_10009BA60 + 43) == 1)
    {

      return sub_100042220(v6, v5, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100042220(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if (a1 || a2 != 15)
  {
    if (a1 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2;
    }

    if (a1 > 3)
    {
      v5 = a1;
    }

    if (v5 >= 0x25)
    {
      sub_100045744("Invalid object type/subtype (type : %u) (subtype : %u)\n", a1, a2);
      v4 = 9;
    }

    else
    {
      v4 = dword_100077018[v5];
    }
  }

  else
  {
    v4 = 8;
  }

  *(&xmmword_10009AA78 + v4) += a3;
  return 0;
}

uint64_t sub_1000422B0(unint64_t a1, unint64_t a2, int a3)
{
  v3 = 208;
  if (!a3)
  {
    v3 = 0;
  }

  return sub_10001E8F4(&unk_10009B430 + v3, a1, a2, 0);
}

uint64_t sub_1000422DC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10)
{
  v10 = a8;
  if (*(qword_10009BA60 + 44) == 1)
  {

    return sub_100041258(a2, a3, a4, a5, a6, a7, a8, a9, 1);
  }

  v18 = sub_10004217C(a2, a3, a8, a9, (a10 >> 3) & 1);
  if (v18)
  {
    if (v18 != 12)
    {
      if (v18 == 17)
      {
        sub_100049C40(0x451, 17);
        sub_100041190(a2, a3, a4, a5, a6, a7, v10, a9);
        goto LABEL_11;
      }

      v19 = strerror(v18);
      sub_100045744("object oid %llu/xid %llu/type 0x%x/subtype 0x%x: unable to mark range %llu+%llu allocated for space verification: %s\n", a6, a7, v10, a9, a2, a3, v19);
    }

    sub_100049C40(0x437, -7);
    byte_10007C6B8 = 0;
  }

LABEL_11:
  if (a4)
  {
    v20 = &qword_10009A440;
    v21 = 100;
    do
    {
      v22 = *(v20 - 1);
      if (!v22)
      {
        break;
      }

      if (v22 == a4)
      {
        *v20 += a3;
        goto LABEL_19;
      }

      v20 += 2;
      --v21;
    }

    while (v21);
    if ((a10 & 4) == 0)
    {
      sub_100045744("unable to mark allocated blocks for volume oid %llu\n", a4);
    }
  }

LABEL_19:

  return sub_10000D218(a3, a4 != 0);
}

double sub_1000424B0(uint64_t a1)
{
  v2 = sub_1000422DC(a1, 0, 1uLL, 0, 0x40000000, 0, 0, 1, &_mh_execute_header, &_mh_execute_header >> 32);
  v19 = a1;
  v20 = 0xC00000000;
  v3 = *(a1 + 8);
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = sub_100031608(a1, v5, sub_100042738, &v19);
    if (v6)
    {
      byte_10007C6B8 = 0;
      sub_100045744("object (oid 0x%llx): Unable to mark nx checkpoint desc range (0x%llx + %u) allocated for space verification\n", 0, *(*(a1 + 8) + 112), *(*(a1 + 8) + 104));
      v6 = sub_100049C40(0x1D1, -7);
    }
  }

  else
  {
    v6 = sub_1000422DC(v2, v5, v4, 0, 0x40000000, v5, 0, 0, 0xCu, 1u);
  }

  v7 = *(a1 + 8);
  v8 = *(v7 + 108);
  v9 = *(v7 + 120);
  if ((v8 & 0x80000000) != 0)
  {
    v10 = sub_100031608(a1, v9, sub_100042738, &v19);
    if (v10)
    {
      byte_10007C6B8 = 0;
      sub_100045744("object (oid 0x%llx): Unable to mark nx checkpoint data range (0x%llx + %u) allocated for space verification\n", 0, *(*(a1 + 8) + 120), *(*(a1 + 8) + 108));
      v10 = sub_100049C40(0x1D2, -7);
    }
  }

  else
  {
    v10 = sub_1000422DC(v6, v9, v8, 0, 0x40000000, v9, 0, v20, HIDWORD(v20), 1u);
  }

  v20 = 8;
  v11 = *(a1 + 24);
  v12 = *(v11 + 164);
  v13 = *(v11 + 168);
  if ((v12 & 0x80000000) != 0)
  {
    v14 = sub_100031608(a1, v13, sub_100042738, &v19);
    if (v14)
    {
      byte_10007C6B8 = 0;
      sub_100045744("object (oid 0x%llx): Unable to mark spaceman ip bitmap range (0x%llx + %u) allocated for space verification\n", 0, *(*(a1 + 24) + 168), *(*(a1 + 24) + 164));
      v14 = sub_100049C40(0x1D3, -7);
    }
  }

  else
  {
    v14 = sub_1000422DC(v10, v13, v12, 0, 0x40000000, v13, 0, 8, &_mh_execute_header, &_mh_execute_header >> 32);
  }

  v15 = *(a1 + 24);
  v16 = *(v15 + 152);
  v17 = *(v15 + 176);
  if ((v16 & 0x8000000000000000) != 0)
  {
    if (sub_100031608(a1, v17, sub_100042738, &v19))
    {
      byte_10007C6B8 = 0;
      sub_100045744("object (oid 0x%llx): Unable to mark spaceman ip range (0x%llx + %llu) allocated for space verification\n", 0, *(*(a1 + 24) + 176), *(*(a1 + 24) + 152));
      sub_100049C40(0x1D4, -7);
    }
  }

  else
  {
    sub_1000422DC(v14, v17, v16, 0, 0x40000000, v17, 0, v20, HIDWORD(v20), 1u);
  }

  return result;
}

uint64_t sub_10004277C(uint64_t a1, int a2, uint64_t a3, char *__s1, char *__s2, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, _BYTE *a9, _DWORD *a10)
{
  v82 = a3;
  v80 = a2;
  v77 = a10;
  v16 = memcmp(__s1, __s2, (a6 + 7) >> 3);
  if (!v16)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if (a7)
    {
LABEL_88:
      v66 = v26;
      v67 = (a7)(a1, v23, v24, 1, a8);
      if (v67)
      {
        *v77 = v67;
      }

      (a7)(a1, v25, v66, 2, a8);
    }

    return 0;
  }

  v73 = a8;
  v17 = 8 * ((a6 + 63) >> 6);
  __chkstk_darwin(v16);
  v19 = (v17 + 15) & 0x3FFFFFFFFFFFFFF0;
  v20 = &v69 - v19;
  if (v21 > 0x3F)
  {
    v27 = memset(&v69 - v19, 170, 8 * ((a6 + 63) >> 6));
    __chkstk_darwin(v27);
    v22 = &v69 - v19;
    memset(&v69 - v19, 170, 8 * ((a6 + 63) >> 6));
    v28 = 0;
    do
    {
      v29 = *&__s1[v28];
      v30 = *&__s2[v28];
      *&v20[v28] = v29 & ~v30;
      *&v22[v28] = v30 & ~v29;
      v28 += 8;
    }

    while (v17 != v28);
  }

  else
  {
    __chkstk_darwin(v18);
    v22 = &v69 - v19;
  }

  v86 = 0;
  a8 = v73;
  if (!a6)
  {
    if (byte_10007C6B8 == 1)
    {
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v25 = 0;
    v26 = 0;
LABEL_87:
    if (a7)
    {
      goto LABEL_88;
    }

    return 0;
  }

  v71 = &v69;
  v72 = v22;
  v78 = a1;
  v24 = 0;
  v81 = 0;
  do
  {
    v31 = sub_100042E28(v82, v20, &v86, a6);
    v33 = v31;
    v34 = v32;
    if (a9 && v32)
    {
      *a9 = 1;
    }

    if (a7)
    {
      if (v24)
      {
        if (v24 + v81 == v31)
        {
          v24 += v32;
          continue;
        }

        v35 = a7(v78);
        if (v35)
        {
          *v77 = v35;
        }
      }

      v81 = v33;
      v24 = v34;
    }
  }

  while (v86 < a6);
  a1 = v78;
  if ((byte_10007C6B8 & 1) == 0)
  {
    v25 = 0;
    v26 = 0;
    v23 = v81;
    goto LABEL_87;
  }

  v26 = 0;
  v79 = 0;
  v83 = 0;
  while (1)
  {
    v74 = v26;
    v36 = sub_100042E28(v82, v72, &v83, a6);
    v38 = v37;
    v87 = 0;
    v88 = 8;
    v39 = malloc_type_calloc(8uLL, 0x18uLL, 0x100004057661CB1uLL);
    v86 = v39;
    if (!v39)
    {
      return 12;
    }

    *v39 = v36;
    v39[1] = v38;
    v41 = v80;
    *(v39 + 16) = v80;
    HIDWORD(v87) = 1;
    if ((v41 & 1) == 0)
    {
      v56 = *(a1 + 24);
      v57 = *(v56 + 152);
      v58 = *(v56 + 176);
      if ((v57 & 0x8000000000000000) != 0)
      {
        v59 = sub_100031608(a1, v58, sub_1000442F0, &v86);
      }

      else
      {
        v89 = *(v56 + 176);
        v90 = v57;
        v59 = sub_1000442F0(v39, v58, &v89, v40, &v86);
      }

      v50 = v59;
      v26 = v74;
      if (v59)
      {
        v43 = 0;
        v75 = 1;
        goto LABEL_57;
      }

      if (SHIDWORD(v87) < 1)
      {
        v43 = 0;
        v50 = 0;
        v75 = 1;
        v26 = v74;
        goto LABEL_57;
      }
    }

    v70 = v36;
    v69 = v38;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v75 = 1;
LABEL_26:
    v76 = v44;
    v45 = &v86[3 * v42];
    v46 = *v45;
    v47 = *(v45 + 1);
    v89 = 0;
    v90 = v46;
    v85 = 0xAAAAAAAAAAAAAAAALL;
    v48 = v45[16];
    v49 = sub_1000443B4(v48 ^ 1u, &v89, &v85, 4294967294);
    if (v49 == 2)
    {
      v49 = sub_1000443B4(v48 ^ 1u, &v89, &v85, 1);
      if (v49 == 2)
      {
        goto LABEL_35;
      }
    }

    v50 = v49;
    if (v49)
    {
      goto LABEL_46;
    }

    v51 = v47 + v46;
    v52 = v90;
    if (v90 >= v51)
    {
      goto LABEL_35;
    }

    v53 = 0;
    while (1)
    {
      LODWORD(v87) = v42;
      BYTE5(v88) = v80;
      v84 = -86;
      v54 = sub_100002C7C(v86[3 * v42], v86[3 * v42 + 1], v52, v85, &v84, sub_100044454, &v86);
      if (v54)
      {
        return v54;
      }

      v53 |= v84;
      v55 = sub_1000443B4(v48 ^ 1u, &v89, &v85, 2);
      if (v55)
      {
        break;
      }

      v52 = v90;
      if (v90 >= v51)
      {
        if ((v53 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_41:
        v44 = v76;
LABEL_42:
        if (++v42 >= SHIDWORD(v87))
        {
          goto LABEL_55;
        }

        goto LABEL_26;
      }
    }

    v50 = v55;
    if (v55 == 2)
    {
      if (v53)
      {
        goto LABEL_41;
      }

LABEL_35:
      v44 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
      if (v44)
      {
        *v44 = *&v86[3 * v42];
        v44[2] = 0;
        v75 = 0;
        if (v43)
        {
          v76[2] = v44;
        }

        else
        {
          v43 = v44;
        }

        goto LABEL_42;
      }

      v75 = 0;
LABEL_55:
      v50 = 0;
      a8 = v73;
      v26 = v74;
      a1 = v78;
      v38 = v69;
LABEL_56:
      v36 = v70;
    }

    else
    {
LABEL_46:
      a8 = v73;
      v26 = v74;
      v38 = v69;
      v36 = v70;
      a1 = v78;
      if (v43)
      {
        do
        {
          v60 = v43[2];
          free(v43);
          v43 = v60;
        }

        while (v60);
        v26 = v74;
        goto LABEL_56;
      }
    }

LABEL_57:
    if (v86)
    {
      free(v86);
      v26 = v74;
    }

    if (v50)
    {
      return v50;
    }

    if ((v75 & 1) == 0)
    {
      v86 = v36;
      v87 = v38;
      v88 = 0;
      if (!v43)
      {
        v43 = &v86;
      }

      while (1)
      {
        v61 = v43[2];
        if (a9 && v43[1])
        {
          *a9 = 1;
        }

        if (!a7)
        {
          goto LABEL_75;
        }

        v63 = *v43;
        v62 = v43[1];
        if (!v26)
        {
          goto LABEL_74;
        }

        if (v26 + v79 != v63)
        {
          break;
        }

        v26 += v62;
LABEL_75:
        if (v43 != &v86)
        {
          v64 = v43;
          v65 = v26;
          free(v64);
          v26 = v65;
        }

        v43 = v61;
        if (!v61)
        {
          goto LABEL_78;
        }
      }

      a7(a1);
LABEL_74:
      v79 = v63;
      v26 = v62;
      goto LABEL_75;
    }

    if ((v80 & 1) == 0 && byte_10009A433 == 1)
    {
      *(&xmmword_10009AA78 + 1) += v38;
    }

LABEL_78:
    if (v83 >= a6)
    {
      v23 = v81;
      v25 = v79;
      goto LABEL_87;
    }
  }
}

uint64_t sub_100042E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v14 = 0;
  v15 = v8;
  if (sub_10000856C(1, a2, v8, a4 - v8, &v15))
  {
    v9 = v15;
  }

  else
  {
    v15 = a4;
    v9 = a4;
  }

  v10 = sub_10000856C(0, a2, v9, a4 - v9, &v14);
  v11 = v14;
  v12 = v15;
  if (!v10)
  {
    v11 = a4;
  }

  *a3 = v11;
  return v12 + a1;
}

uint64_t sub_100042EBC(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, char *a5, uint64_t a6, _DWORD *a7)
{
  result = sub_10001E4B8(&unk_10009B500, a2 & 0xFFFFFFFFFFFFFFC0, (a2 + a3 - (a2 & 0xFFFFFFFFFFFFFFC0) + 63) & 0xFFFFFFFFFFFFFFC0, a4);
  if (!result)
  {
    sub_100008A70(a4, (8 * dword_10009A428 + 128) >> 6, a2 & 0x3F);
    return sub_10004277C(a1, 1, a2, a4, a5, a3, sub_100042F8C, a6, 0, a7);
  }

  return result;
}

uint64_t sub_100042F8C(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = *a5;
  if (a4 == 1)
  {
    v12 = "underallocation";
  }

  else
  {
    v12 = "overallocation";
  }

  if (a4 == 1)
  {
    sub_10004565C("underallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, v11);
    sub_100049C40(0x4F4, 92);
  }

  else
  {
    sub_100045744("overallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, v11);
    v5 = 92;
    sub_100049C40(0x4F5, 92);
    if (*(qword_10009BA60 + 45) != 1)
    {
      return v5;
    }
  }

  if (!sub_10004758C(qword_10009BA58, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v12, a2, a3, *a5))
  {
    return 92;
  }

  v13 = malloc_type_calloc(1uLL, *(a1[1] + 36), 0x4921D8E2uLL);
  if (v13)
  {
    v14 = v13;
    v15 = sub_10002F3CC(*a1);
    if (v15)
    {
      v5 = v15;
      sub_10004565C("Failed to fix %s\n", v12);
      v16 = 1271;
    }

    else
    {
      v17 = a5[2] + a2;
      v18 = v17 - a5[1];
      if (a4 == 1)
      {
        sub_1000083A8(v14, v18, a3, v17);
      }

      else
      {
        sub_10000849C(v14, v18, a3);
      }

      v5 = sub_10002F4AC(*a1);
      if (!v5)
      {
        free(v14);
        sub_100049BF0();
        return v5;
      }

      sub_10004565C("Failed to fix %s\n", v12);
      v16 = 1272;
    }

    sub_100049C40(v16, v5);
    free(v14);
  }

  else
  {
    sub_100045744("failed to allocate memory for the bitmap block\n");
    v5 = 12;
    sub_100049C40(0x4F6, 12);
  }

  return v5;
}

uint64_t sub_1000431A4(uint64_t *a1)
{
  v49 = 0;
  v2 = a1[3];
  v3 = *(v2 + 328);
  v4 = dword_10009A428;
  LODWORD(v5) = *(v2 + 160);
  v48 = 0;
  v6 = malloc_type_calloc(1uLL, dword_10009A428, 0x32792C78uLL);
  v7 = malloc_type_calloc(1uLL, dword_10009A428 + 16, 0x100004000313F17uLL);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    sub_100045744("failed to allocate memory for the bitmap block\n");
    v5 = 12;
    v9 = 1273;
    v10 = 12;
    goto LABEL_7;
  }

  v11 = v7;
  if (!v5)
  {
    goto LABEL_49;
  }

  v12 = 0;
  v41 = v2 + v3;
  v39 = v5;
  v40 = 8 * v4;
  v42 = (8 * v4) >> 6;
  while (1)
  {
    v13 = *(v41 + 2 * v12);
    v14 = a1[3];
    v15 = *(v14 + 164);
    if ((v15 & 0x7FFFFFFFu) <= v13)
    {
      LODWORD(v5) = 22;
LABEL_48:
      sub_10004565C("error (%d) looking up spaceman IP bitmap block at index %u\n", v5, v12);
      sub_100049C40(0x4FA, v5);
LABEL_49:
      free(v6);
      free(v11);
      if (v49)
      {
        return v49;
      }

      else
      {
        return v5;
      }
    }

    v16 = *(v14 + 168);
    if ((v15 & 0x80000000) == 0)
    {
      v48 = v16 + v13;
      goto LABEL_14;
    }

    v17 = sub_100031504(a1, v16, v13, &v48, 0);
    if (v17)
    {
      LODWORD(v5) = v17;
      goto LABEL_48;
    }

LABEL_14:
    v18 = sub_10002F3CC(*a1);
    if (v18)
    {
      LODWORD(v5) = v18;
      sub_10004565C("error (%d) reading spaceman IP bitmap block at index %u, addr 0x%llx\n", v18, v12, v48);
      sub_100049C40(0x4FB, v5);
      goto LABEL_49;
    }

    bzero(v11, *(a1[1] + 36));
    if (v12 == *(v2 + 160) - 1)
    {
      v19 = *(v2 + 152);
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v2 + 32));
    }

    else
    {
      v20 = (8 * *(v2 + 32));
      v19 = *(v2 + 152);
    }

    v46 = 0;
    v47 = 0;
    v43 = v48;
    v44 = 0;
    v45 = 0;
    if (v19 < 0)
    {
      break;
    }

    v21 = v12 * v40;
    v22 = a1[3];
    v23 = *(v22 + 152);
    if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) <= v21)
    {
      v37 = 22;
LABEL_54:
      sub_10004565C("error (%d) looking up spaceman IP block address at index %u\n", v37, v21);
      sub_100049C40(0x500, v37);
      return v37;
    }

    v24 = *(v22 + 176);
    if (v23 < 0)
    {
      v36 = sub_100031504(a1, v24, v12 * v40, &v47, &v46);
      if (v36)
      {
        v37 = v36;
        goto LABEL_54;
      }

      v25 = v47;
    }

    else
    {
      v25 = v24 + v21;
      v47 = v25;
    }

    v44 = v25;
    v35 = sub_100042EBC(a1, v25, v20, v11, v6, &v43, &v49);
    if (v35)
    {
LABEL_40:
      LODWORD(v5) = v35;
      goto LABEL_49;
    }

LABEL_38:
    if (++v12 == v39)
    {
      LODWORD(v5) = 0;
      goto LABEL_49;
    }
  }

  if (!v20)
  {
    goto LABEL_38;
  }

  v26 = 0;
  v27 = 0;
  v28 = v12 * v40;
  while (2)
  {
    v29 = a1[3];
    v30 = *(v29 + 152);
    if ((v30 & 0x7FFFFFFFFFFFFFFFuLL) <= v27 + v28)
    {
      v5 = 22;
      goto LABEL_45;
    }

    v31 = *(v29 + 176);
    if ((v30 & 0x8000000000000000) == 0)
    {
      v32 = v31 + v27 + v28;
      v47 = v32;
LABEL_29:
      if (v26 >= v20 - v27)
      {
        v34 = v20 - v27;
      }

      else
      {
        v34 = v26;
      }

      v45 = v27;
      v46 = v34;
      v44 = v32;
      v35 = sub_100042EBC(a1, v32, v34, v11, v6, &v43, &v49);
      if (v35)
      {
        goto LABEL_40;
      }

      sub_100008A70(v6, v42, v46);
      v26 = v46;
      v27 += v46;
      if (v27 >= v20)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v33 = sub_100031504(a1, v31, v27 + v28, &v47, &v46);
  if (!v33)
  {
    v26 = v46;
    v32 = v47;
    goto LABEL_29;
  }

  v5 = v33;
LABEL_45:
  sub_10004565C("error (%d) looking up spaceman IP block address at index %llu\n", v5, v27 + v28);
  v9 = 1276;
  v10 = v5;
LABEL_7:
  sub_100049C40(v9, v10);
  return v5;
}

uint64_t sub_10004355C(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t), char **a4, int a5)
{
  v10 = a1[3];
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v11 = *(v10 + 36);
  v12 = *(v10 + 48);
  v67 = 0u;
  memset(v66, 0, sizeof(v66));
  if (byte_10009B480 == 1)
  {
    byte_10007C6B8 = 0;
  }

  if (!a3 && !a5)
  {
    return 0;
  }

  v14 = sub_100043AB4(a1);
  if (v14)
  {
    v13 = v14;
    v15 = strerror(v14);
    sub_10004565C("error (%s) failed to populate free queue trees \n", v15);
    sub_100049C40(0x4FE, v13);
    return v13;
  }

  v61 = a2;
  v16 = malloc_type_malloc(*(a1[1] + 36), 0xA326E274uLL);
  v17 = malloc_type_malloc(*(a1[1] + 36), 0xCE3BE2C4uLL);
  v69 = v17;
  if (!v16 || !v17)
  {
    sub_100045744("Space Verification: failed to allocate memory for the bitmap block\n");
    v45 = 12;
    sub_100049C40(0x1D9, 12);
    goto LABEL_58;
  }

  if (v61)
  {
    *v61 = 0;
  }

  v56 = a5;
  if (v12)
  {
    v59 = a3;
    v60 = v12;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &v62;
    if (a4)
    {
      v21 = a4;
    }

    v57 = v16;
    v58 = v21;
    while (1)
    {
      if (!v18 || v69 && BYTE8(v67) == 1)
      {
        v22 = v20 / *(v10 + 36);
        v23 = sub_10000AAEC(a1, v22, &v69);
        if (v23)
        {
          v45 = v23;
          v50 = strerror(v23);
          sub_10004565C("error (%s) failed to get cib for chunk index %llu \n", v50, v22);
          goto LABEL_58;
        }

        v24 = sub_10000B220(v66, a1, v69, &v70, &v68);
        v12 = v60;
        if (v24)
        {
          goto LABEL_46;
        }
      }

      bzero(v16, *(a1[1] + 36));
      if (v12 + v18 >= v11)
      {
        v25 = v11;
      }

      else
      {
        v25 = v12 + v18;
      }

      v24 = sub_10001E4B8(&unk_10009B430, v20, (v25 + 63) & 0x1FFFFFFC0, v16);
      if (v24)
      {
        goto LABEL_46;
      }

      v62 = v70;
      v64 = -1431655766;
      v63 = v68;
      v65 = v69;
      v24 = sub_10004277C(a1, 0, v20, v16, v70, v25, v59, v58, &byte_10009A432, &v71);
      if (v24)
      {
        goto LABEL_46;
      }

      v26 = sub_1000085F0(v70, 0, 0, v25);
      v27 = v26;
      if (v61)
      {
        *v61 += v25 - v26;
      }

      v28 = a1[1];
      v29 = *(v28 + 1248);
      if (v29)
      {
        v72[0] = 0xAAAAAAAAAAAAAAAALL;
        v30 = sub_10004F16C(v20, v25, *(v28 + 1240), v29, v72);
        v31 = v27;
        if (v30)
        {
          v31 = v27 - sub_1000085F0(v70, 0, v18 + v72[0], v18 + v72[0] + v30);
        }
      }

      else
      {
        v31 = v26;
      }

      v32 = v69;
      v33 = &v69[32 * v68];
      v35 = *(v33 + 15);
      v34 = v33 + 60;
      v36 = v35 & 0xFFFFF;
      v37 = v27 & 0xFFFFF;
      if (v37 != v36)
      {
        byte_10009A432 = 1;
        if (v56)
        {
          sub_10004565C("cib: ci_free_count (%u) is not valid (%llu) (ci_addr 0x%llx)\n", v36, v37, v20);
          if (!sub_10004758C(qword_10009BA58, "Fix ci_free_count (%u)? ", *v34 & 0xFFFFF))
          {
            v42 = 92;
            v43 = 676;
            v44 = 92;
            goto LABEL_38;
          }

          *v34 = v37 | (*v34 >> 20);
          v40 = *(a1[1] + 36);
          v72[0] = v32[1];
          v72[1] = v40;
          v72[2] = 0;
          v41 = sub_100026A10(a1, 0, v32, v72, v38, v39);
          if (v41)
          {
            v42 = v41;
            v43 = 675;
            v44 = v42;
LABEL_38:
            sub_100049C40(v43, v44);
            v71 = v42;
            goto LABEL_40;
          }

          sub_100049BF0();
        }
      }

LABEL_40:
      v16 = v57;
      if (v70)
      {
        free(v70);
        v70 = 0;
      }

      v24 = sub_10000B0A8(v66, &v70, &v68);
      v12 = v60;
      if (v24)
      {
LABEL_46:
        v45 = v24;
        goto LABEL_58;
      }

      v19 += v31;
      v20 += v11;
      v18 -= v11;
      if (v20 >= v60)
      {
        goto LABEL_48;
      }
    }
  }

  v19 = 0;
LABEL_48:
  if (*(v10 + 72) == v19)
  {
    v45 = 0;
    v46 = v56;
  }

  else
  {
    byte_10009A432 = 1;
    v46 = v56;
    if (!v56)
    {
      v45 = 0;
      goto LABEL_58;
    }

    v47 = sub_100043DC4(a1, v19);
    v45 = v47;
    if (v47)
    {
      v71 = v47;
    }
  }

  v48 = *(v10 + 48) - v19;
  v49 = *(v10 + 240);
  if (v49 > v48)
  {
    byte_10009A432 = 1;
    if (v46)
    {
      sub_10004565C("sm : free queue tree has sfq_count (%llu) greater than available block count (%llu)\n", v49, v48);
      sub_100049C40(0x307, 92);
      v71 = 92;
    }
  }

LABEL_58:
  if (v71)
  {
    v51 = 1;
  }

  else
  {
    v51 = v45 == 0;
  }

  if (v51)
  {
    LODWORD(v13) = v71;
  }

  else
  {
    LODWORD(v13) = v45;
  }

  v52 = sub_10000B318(v66);
  v53 = v52;
  if (v52)
  {
    v54 = strerror(v52);
    sub_10004565C("failed to finish pending reads from the bitmap iterator: %d (%s)", v53, v54);
    sub_100049C40(0x5E4, v53);
  }

  if (v70)
  {
    free(v70);
    v70 = 0;
  }

  if (v16)
  {
    free(v16);
  }

  if (v69)
  {
    free(v69);
  }

  byte_10009A433 = 0;
  if (v13)
  {
    return v13;
  }

  else
  {
    return v53;
  }
}

uint64_t sub_100043AB4(uint64_t *a1)
{
  if (byte_10009A431 != 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 49;
  for (i = &unk_10009BAE8; ; i += 64)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[3] = v5;
    v22[4] = v5;
    v22[1] = v5;
    v22[2] = v5;
    v22[0] = v5;
    v21 = v2 == 0;
    v6 = sub_10002CE54(a1, v2, &v23);
    if (v6)
    {
      return v6;
    }

    if (*(v23 + 56))
    {
      v7 = sub_10003A444(v22, v23, 0, 0, 0);
      if (v7 || (v7 = sub_10002C648(v22, sub_100044558, &v21, 0), v7))
      {
        v14 = v7;
        v15 = strerror(v7);
        sub_10004565C("failed to iterate the spaceman free queue tree: %s\n", v15);
        sub_100049C40(0x314, v14);
        return v14;
      }

      if ((v21 & 2) != 0)
      {
        break;
      }
    }

LABEL_16:
    if (++v2 == 3)
    {
      v14 = 0;
      byte_10009A431 = 0;
      return v14;
    }
  }

  v8 = v23;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[2] = v9;
  v30[3] = v9;
  v30[0] = v9;
  v30[1] = v9;
  v29[3] = v9;
  v29[4] = v9;
  v29[1] = v9;
  v29[2] = v9;
  v28[4] = v9;
  v29[0] = v9;
  v28[2] = v9;
  v28[3] = v9;
  v28[0] = v9;
  v28[1] = v9;
  v27[3] = v9;
  v27[4] = v9;
  v27[1] = v9;
  v27[2] = v9;
  v27[0] = v9;
  if (!sub_100039748(v30, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_1000410C0))
  {
    sub_10003B84C(v30, 0, 64);
  }

  v10 = sub_10003A444(v29, v8, 0, 0, 0);
  if (v10 || (v10 = sub_10002C648(v29, sub_1000447A4, v30, 0), v10))
  {
    v14 = v10;
    v16 = strerror(v10);
    sub_10004565C("error copying on-disk free queue tree into reordered tree in memory: %s\n", v16);
    v17 = 923;
    goto LABEL_27;
  }

  v24 = v3;
  v26 = -1431655766;
  v25 = v2;
  v11 = sub_10003A444(v28, v30, 0, 0, 0);
  if (v11)
  {
    v14 = v11;
LABEL_25:
    v18 = strerror(v14);
    sub_10004565C("unable to init iterators for free queue tree repair: %s\n", v18);
    v17 = 924;
    goto LABEL_27;
  }

  v12 = sub_10003A444(v27, i, 0, 0, 0);
  if (v12)
  {
    v14 = v12;
    if (*&v28[0])
    {
      (*&v28[0])(v28);
    }

    goto LABEL_25;
  }

  v13 = sub_10002C6E8(v28, v27, sub_100044810, &v24);
  if (!v13)
  {
    sub_10003B928(v30, 0);
    goto LABEL_16;
  }

  v14 = v13;
  v19 = strerror(v13);
  sub_10004565C("error iterating trees during free queue tree repair: %s\n", v19);
  v17 = 925;
LABEL_27:
  sub_100049C40(v17, v14);
  sub_10003B928(v30, 0);
  return v14;
}

uint64_t sub_100043DC4(uint64_t a1, uint64_t a2)
{
  sub_10004565C("sm: sm_free_count (%llu) is not valid (%llu) (sm_dev %d)\n", *(*(a1 + 24) + 72), a2, 0);
  if (sub_10004758C(qword_10009BA58, "Fix sm_free_count (%llu)? ", *(*(a1 + 24) + 72)))
  {
    v5 = *(a1 + 24);
    *(v5 + 72) = a2;
    v10 = *(a1 + 88);
    v11 = *(a1 + 104);
    v6 = sub_100026A10(a1, 0, v5, v10.i64, v10, v4);
    if (!v6)
    {
      sub_100049BF0();
      return v6;
    }

    v7 = 677;
    v8 = v6;
  }

  else
  {
    v6 = 92;
    v7 = 678;
    v8 = 92;
  }

  sub_100049C40(v7, v8);
  return v6;
}

uint64_t sub_100043E8C(uint64_t *a1)
{
  v12 = 0;
  v2 = sub_100043AB4(a1);
  if (v2)
  {
    v3 = v2;
    v4 = strerror(v2);
    sub_10004565C("error (%s) failed to populate free queue trees \n", v4);
    sub_100049C40(0x4FF, v3);
  }

  else
  {
    LODWORD(v3) = sub_1000431A4(a1);
    if ((byte_10009A433 & 1) != 0 || (byte_10009A432 & 1) != 0 || (v5 = qword_10009BA60, *(qword_10009BA60 + 44) == 1))
    {
      v6 = sub_10004355C(a1, &v12, sub_100044040, 0, 1);
      v5 = qword_10009BA60;
    }

    else
    {
      v6 = 0;
    }

    if (*(v5 + 43) == 1)
    {
      v7 = v12;
      sub_100045428("\nSpace allocation summary:\n\n");
      sub_100045428("%-20s%-15s\n", "category", "block count");
      sub_100045428("%-20s%-15s\n", "--------", "-----------");
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(&xmmword_10009AA78 + v8 * 8);
        if (v10)
        {
          v9 += v10;
          sub_100045428("%-20s%-15llu\n", off_100078AD0[v8], v10);
        }

        ++v8;
      }

      while (v8 != 10);
      sub_100045428("\nTotal blocks marked by fsck: %llu\n", v9);
      sub_100045428("Total blocks allocated by spaceman: %llu\n\n", v7);
    }

    if (v3)
    {
      return v3;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t sub_100044040(uint64_t *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
  if (a4 == 1)
  {
    v12 = "underallocation";
  }

  else
  {
    v12 = "overallocation";
  }

  if (a4 == 1)
  {
    sub_10004565C("underallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", "Main", a2, a3, v11);
    sub_100049C40(0x1DA, 92);
  }

  else
  {
    sub_100045744("overallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", "Main", a2, a3, v11);
    sub_100049C40(0x1DB, 92);
    if ((*(qword_10009BA60 + 45) & 1) == 0)
    {
      if (a2 != 1)
      {
        return 92;
      }

      v13 = a1[1];
      if (*(v13 + 36) != 4096 || !(*(v13 + 40) >> 29))
      {
        return 92;
      }
    }
  }

  if (!sub_10004758C(qword_10009BA58, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v12, a2, a3, v11))
  {
    return 92;
  }

  v5 = sub_10000270C(a1, 0, a2, a3, v11, *a5, *(a5 + 16), a4, 0, 0);
  if (v5)
  {
    sub_10004565C("Failed to fix %s\n", v12);
    sub_100049C40(0x316, v5);
  }

  else
  {
    sub_100049BF0();
  }

  return v5;
}

uint64_t sub_1000441E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t), uint64_t a5)
{
  if (sub_10001E4A8(&unk_10009B430))
  {
    v9 = a3 + a2;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    while (v9 > a2 && sub_10001E7C8(&unk_10009B430, a2, v9 - a2, &v15))
    {
      if (sub_10001E6A4(&unk_10009B430, v15, v9 - v15, &v14))
      {
        v10 = v14;
      }

      else
      {
        v14 = v9;
        v10 = v9;
      }

      v11 = a4(v15, v10 - v15, a5);
      a2 = v14;
      if (v11)
      {
        return v11;
      }
    }

    return 0;
  }

  else
  {
    sub_10004565C("unexpected: space verification data structure not initialized");
    v12 = 22;
    sub_100049C40(0x434, 22);
  }

  return v12;
}

uint64_t sub_1000442F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8) = 0;
  *(a5 + 21) = 1;
  if (*(a5 + 12) < 1)
  {
    return 0;
  }

  v13 = v5;
  v14 = v6;
  v9 = 0;
  v12 = -86;
  do
  {
    v10 = *a5 + 24 * v9;
    if ((*(v10 + 16) & 1) == 0)
    {
      result = sub_100002C7C(*v10, *(v10 + 8), *a3, *(a3 + 8), &v12, sub_100044454, a5);
      if (result)
      {
        return result;
      }

      v9 = *(a5 + 8);
      if ((v12 & 1) == 0)
      {
        *(a5 + 8) = ++v9;
      }
    }
  }

  while (v9 < *(a5 + 12));
  return 0;
}

uint64_t sub_1000443B4(unsigned int a1, void *a2, void *a3, uint64_t a4)
{
  v11 = 16;
  v10 = 8;
  v5 = sub_1000397B8(&unk_10009BAE8 + 64 * a1, 0, a4, a2, &v11, 16, a3, &v10);
  v6 = v5;
  if ((v5 & 0xFFFFFFFD) != 0)
  {
    v7 = a2[1];
    v8 = strerror(v5);
    sub_10004565C("Space Verification: failed to lookup paddr (%llu) : error %s\n", v7, v8);
    sub_100049C40(0x364, v6);
  }

  return v6;
}

uint64_t sub_100044454(uint64_t a1, uint64_t a2, int a3, char **a4)
{
  v7 = *(a4 + 2);
  v8 = v7;
  if (a3)
  {
    v9 = *a4;
    *(a4 + 20) = (*a4)[24 * v7 + 16];
    v10 = 21;
LABEL_7:
    result = 0;
    v14 = v9 + 24 * v8;
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = *(a4 + v10);
    *(a4 + 2) = v7 + 1;
    return result;
  }

  v11 = *(a4 + 3);
  v12 = *a4;
  if (v11 != *(a4 + 4))
  {
LABEL_6:
    memmove(&v12[24 * v7 + 24], &v12[24 * v7], 24 * (v11 - v7));
    v7 = *(a4 + 2);
    ++*(a4 + 3);
    v9 = *a4;
    v10 = 20;
    goto LABEL_7;
  }

  *(a4 + 4) = 2 * v11;
  v12 = malloc_type_realloc(v12, 48 * v11, 0x100004057661CB1uLL);
  if (v12)
  {
    *a4 = v12;
    v11 = *(a4 + 3);
    goto LABEL_6;
  }

  free(*a4);
  *a4 = 0;
  return 12;
}

uint64_t sub_100044558(__int128 *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 22;
  if (a2 == 16 && (a4 & 0xFFFFFFF7) == 0)
  {
    v7 = *a5 & 1;
    v29 = *a1;
    v8 = 1;
    if (a3 && a4)
    {
      v8 = *a3;
    }

    v28 = v8;
    v9 = v29;
    v27 = *a1;
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v10 = v7 ^ 1;
    v11 = sub_1000443B4(v7 ^ 1, &v27, &v26, 4294967294);
    if (v11 == 2 && (v11 = sub_1000443B4(v10, &v27, &v26, 1), v12 = v10, v11 == 2))
    {
LABEL_27:
      v22 = sub_10003B12C(&unk_10009BAE8 + 16 * v12, 0, &v29, 16, &v28, 8);
      v5 = v22;
      if (v22)
      {
        v23 = *(&v29 + 1);
        v24 = strerror(v22);
        sub_10004565C("Space Verification: failed to insert paddr (%llu) error : %s\n", v23, v24);
        sub_100049C40(0x365, v5);
      }
    }

    else
    {
      v5 = v11;
      if (!v11)
      {
        v13 = v9;
        v14 = v8;
        v15 = *(&v9 + 1);
        do
        {
          if (*(&v27 + 1) >= (v14 + v15))
          {
            v12 = v10;
            goto LABEL_27;
          }

          if (v26 + *(&v27 + 1) > v15)
          {
            sub_100045744("found spaceman free queue tree entry (0x%llx+%llu, xid %llu) which overlaps with existing range (0x%llx+%llu)\n", *(&v9 + 1), v8, v9, *(&v27 + 1), v26);
            sub_100049C40(0x1CE, -7);
            *a5 |= 2u;
            if (v15 >= *(&v27 + 1))
            {
              v16 = *(&v27 + 1);
            }

            else
            {
              v16 = v15;
            }

            if (v15 - v16 + v14 <= *(&v27 + 1) - v16 + v26)
            {
              v14 = *(&v27 + 1) - v16 + v26;
            }

            else
            {
              v14 += v15 - v16;
            }

            if (v13 <= v27)
            {
              v13 = v27;
            }

            v17 = sub_10003B708(&unk_10009BAE8 + 64 * v10, 0, &v27, 16);
            if (v17)
            {
              v18 = v17;
              v19 = *(&v27 + 1);
              v20 = strerror(v17);
              sub_10004565C("Space Verification: failed to remove paddr (%llu) error : %s\n", v19, v20);
              sub_100049C40(0x366, v18);
            }

            *&v29 = v13;
            *(&v29 + 1) = v16;
            v15 = v16;
            v28 = v14;
          }

          v21 = sub_1000443B4(v10, &v27, &v26, 2);
        }

        while (!v21);
        v5 = v21;
        v12 = v10;
        if (v21 == 2)
        {
          goto LABEL_27;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1000447A4(const void *a1, uint64_t a2, uint64_t *a3, int a4, _DWORD *a5)
{
  if ((a4 & 0xFFFFFFF7) != 0)
  {
    return 22;
  }

  v8 = 1;
  if (a3)
  {
    if (a4)
    {
      v8 = *a3;
    }
  }

  v9[1] = v5;
  v9[2] = v6;
  v9[0] = v8;
  return sub_10003B12C(a5, 0, a1, a2, v9, 8);
}

uint64_t sub_100044810(uint64_t *a1, uint64_t *a2, int *a3, _DWORD **a4)
{
  v4 = *a1;
  if (!*a1)
  {
    sub_10004565C("unexpected end of iteration while repairing free queue tree\n");
    return 22;
  }

  v6 = a1[1];
  v7 = *a2;
  if (!*a2)
  {
LABEL_15:
    v14 = 1;
    result = sub_100027D7C(*a4, *(a4 + 2), 0, 0, 1, v4, 0x10u, v6, 8u);
    goto LABEL_19;
  }

  v8 = a2[1];
  v9 = *(v7 + 8);
  v10 = *(v4 + 8);
  if (v9 != v10)
  {
    v12 = *v6;
    goto LABEL_9;
  }

  if (*v7 == *v4 && *v8 == *v6)
  {
    return 0;
  }

  if (*v7 <= *v4)
  {
    v12 = *v6;
    if (*v8 <= *v6)
    {
LABEL_9:
      if (v9 <= v10 || v9 - v10 < v12)
      {
        sub_10004565C("unexpected on-disk range 0x%llx+%llu xid %llu and in-memory range 0x%llx+%llu xid %llu while repairing free queue tree\n", a2, a3, a4);
        return 22;
      }

      goto LABEL_15;
    }
  }

  v14 = 2;
  result = sub_100027D7C(*a4, *(a4 + 2), 2, 0, 1, v7, 0x10u, v8, 8u);
LABEL_19:
  if (!result)
  {
    *a3 = v14;
  }

  return result;
}

FILE *sub_100044948(const char *a1)
{
  v1 = open(a1, 777, 438);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v3;
  *v6.st_qspare = v3;
  v6.st_birthtimespec = v3;
  *&v6.st_size = v3;
  v6.st_mtimespec = v3;
  v6.st_ctimespec = v3;
  *&v6.st_uid = v3;
  v6.st_atimespec = v3;
  *&v6.st_dev = v3;
  if (!fstat(v1, &v6) && (v6.st_mode & 0xF000) == 0x8000)
  {
    return fdopen(v2, "a");
  }

  close(v2);
  v5 = __error();
  result = 0;
  *v5 = 1;
  return result;
}

void sub_1000449F0()
{
  dword_10007C6C0 = 0;
  v0 = qword_10009AAC8;
  v1 = qword_10009AAD8;
  v2 = qword_10009AAF8;
  if (qword_10009AAC8)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_10009AAD8 == 0;
  }

  if (v3 && qword_10009AAF8 == 0)
  {
    return;
  }

  v5 = qword_10009AAD0;
  v17 = time(0);
  if (v1)
  {
    v6 = ctime(&v17);
    sub_100044D10(2, &qword_10009AAC8, "fsck_apfs completed at %s\n", v6, 0);
  }

  else
  {
    if (!v0)
    {
      goto LABEL_43;
    }

    if (qword_10009BBA8)
    {
      v7 = qword_10009BBA8;
    }

    else
    {
      v7 = "UNKNOWN-DEV";
    }

    v8 = ctime(&v17);
    fprintf(v0, "%s: fsck_apfs completed at %s\n", v7, v8);
  }

  if (!v0 || dword_10009B568)
  {
    if (v0)
    {
      if (v2 | v1 && dword_10009B568 != 0)
      {
        pthread_mutex_lock(&stru_10007C6C8);
        pthread_cond_broadcast(&stru_10009AB08);
        pthread_mutex_unlock(&stru_10007C6C8);
        pthread_join(qword_10009AB38, 0);
        pthread_join(qword_10009AB40, 0);
        if (v2)
        {
          free(v2);
        }

        qword_10009AAF0 = 0;
        qword_10009AAF8 = 0;
        qword_10009AB00 = 0;
        if (v1)
        {
          free(v1);
        }

        qword_10009AAD0 = 0;
        qword_10009AAD8 = 0;
        qword_10009AAE0 = 0;
        fflush(v0);
        fclose(v0);
        qword_10009AAC8 = 0;
        goto LABEL_43;
      }
    }

    if (v1)
    {
      if (getuid() || (fflush(__stdoutp), fflush(__stderrp), !fork()))
      {
        memset(__b, 170, sizeof(__b));
        fclose(__stdoutp);
        fclose(__stdinp);
        fclose(__stderrp);
        if (getuid())
        {
          v10 = getuid();
          v11 = getpwuid(v10);
          if (!v11)
          {
            goto LABEL_43;
          }

          v12 = __b;
          snprintf(__b, 0x400uLL, "%s/Library/Logs/fsck_apfs.log", v11->pw_dir);
        }

        else
        {
          v12 = "/var/log/fsck_apfs.log";
        }

        v13 = 1;
        while (1)
        {
          v14 = v13;
          v15 = sub_100044948(v12);
          if (v15)
          {
            if (v5)
            {
              break;
            }
          }

          if (*__error() == 30)
          {
            sleep(1u);
            v13 = 0;
            if (v14)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v16 = v15;
        fwrite(v1, v5 - v1, 1uLL, v15);
        fflush(v16);
        fclose(v16);
        qword_10009AAC8 = 0;
        free(v1);
        qword_10009AAD0 = 0;
        qword_10009AAD8 = 0;
        qword_10009AAE0 = 0;
      }
    }
  }

  else
  {
    fflush(v0);
    fclose(v0);
    qword_10009AAC8 = 0;
  }

LABEL_43:
  if (qword_10009AAF8)
  {
    free(qword_10009AAF8);
  }

  if (qword_10009AAD8)
  {
    free(qword_10009AAD8);
  }
}

uint64_t sub_100044D10(uint64_t result, uint64_t a2, char *__format, const char *a4, va_list a5)
{
  v18 = 0;
  if (*(a2 + 8) && *(a2 + 16))
  {
    v8 = result;
    if (result == 1)
    {
      v18 = a5;
    }

    if (dword_10009B568 && *a2 == __stdoutp)
    {
      pthread_mutex_lock(&stru_10007C6C8);
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = v9 - v10;
    if (v8 == 1)
    {
      result = vsnprintf(*(a2 + 8), v11 - (v9 - v10), __format, a5);
    }

    else
    {
      result = snprintf(v9, v11 - (v9 - v10), "%s", a4);
    }

    if (v11 - (v9 - v10) >= result)
    {
      v9 += result;
    }

    else
    {
      if (result >= 4096)
      {
        v13 = (result + 4095) & 0x7FFFF000;
      }

      else
      {
        v13 = 4096;
      }

      v14 = v11 + v13;
      if (!((v11 + v13) >> 20))
      {
        result = malloc_type_realloc(v10, v14, 0xB86594F6uLL);
        if (result)
        {
          v15 = result;
          v16 = result + v12;
          if (v8 == 1)
          {
            result = vsnprintf((result + v12), v14 - v12, __format, v18);
          }

          else
          {
            result = snprintf((result + v12), v14 - v12, "%s", a4);
          }

          v17 = result;
          if (v14 - v12 < result)
          {
            v17 = 0;
          }

          v9 = (v16 + v17);
          v10 = v15;
          v11 = v14;
        }
      }
    }

    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    if (dword_10009B568)
    {
      if (*a2 == __stdoutp)
      {
        pthread_cond_signal(&stru_10009AB08);
        return pthread_mutex_unlock(&stru_10007C6C8);
      }
    }
  }

  return result;
}

uint64_t sub_100044EF0()
{
  v0 = qword_10009AAC8;
  setlinebuf(__stdoutp);
  result = setlinebuf(__stderrp);
  dword_10009B568 = byte_10009BBB0;
  if (!v0)
  {
    result = sub_100044948("/var/log/fsck_apfs.log");
    if (result)
    {
      v2 = result;
      qword_10009AAC8 = result;
      setlinebuf(result);
      if (dword_10009B568)
      {
        v3 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (v3 && result)
        {
          *v3 = 0;
          qword_10009AAD0 = v3;
          qword_10009AAD8 = v3;
          qword_10009AAE0 = 4096;
          *result = 0;
          qword_10009AAE8 = __stdoutp;
          qword_10009AAF0 = result;
          qword_10009AAF8 = result;
          qword_10009AB00 = 4096;
          v7 = time(0);
          v4 = ctime(&v7);
          result = sub_100044D10(2, &qword_10009AAC8, "\nfsck_apfs started at %s", v4, 0);
          if (dword_10009B568)
          {
            pthread_cond_init(&stru_10009AB08, 0);
            pthread_create(&qword_10009AB38, 0, sub_1000450C8, &qword_10009AAE8);
            return pthread_create(&qword_10009AB40, 0, sub_1000450C8, &qword_10009AAC8);
          }
        }
      }

      else
      {
        v7 = time(0);
        if (qword_10009BBA8)
        {
          v5 = qword_10009BBA8;
        }

        else
        {
          v5 = "UNKNOWN-DEV";
        }

        v6 = ctime(&v7);
        fprintf(v2, "\n%s: fsck_apfs started at %s", v5, v6);
        return fflush(v2);
      }
    }

    else
    {
      dword_10009B568 = 0;
    }
  }

  return result;
}

uint64_t sub_1000450C8(uint64_t a1)
{
  v2 = *a1;
  memset(__b, 170, sizeof(__b));
  v3 = 0;
  while (dword_10007C6C0 || *(a1 + 8) != *(a1 + 16))
  {
    pthread_mutex_lock(&stru_10007C6C8);
    while (dword_10007C6C0 && *(a1 + 8) == *(a1 + 16))
    {
      v4 = pthread_cond_wait(&stru_10009AB08, &stru_10007C6C8);
      if (v4)
      {
        fprintf(__stderrp, "error %d from cond wait\n", v4);
        break;
      }
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      pthread_mutex_unlock(&stru_10007C6C8);
    }

    else
    {
      if (v7 < 0x400)
      {
        __memcpy_chk();
        v8 = v6;
      }

      else
      {
        memcpy(__b, *(a1 + 16), 0x3FFuLL);
        memmove(v6, (v6 + 1023), v7 - 1023);
        v8 = v5 - 1023;
        v7 = 1023;
      }

      __b[v7] = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = v6;
      pthread_mutex_unlock(&stru_10007C6C8);
      v9 = __b[0];
      if (__b[0])
      {
        v10 = __b;
        do
        {
          v11 = v10++;
          if (v9)
          {
            while (v9 != 10)
            {
              v12 = *v10++;
              v9 = v12;
              if (!v12)
              {
                goto LABEL_19;
              }
            }

            *(v10 - 1) = 0;
            v13 = "\n";
          }

          else
          {
LABEL_19:
            --v10;
            v13 = &byte_10005C3F3;
          }

          if (v2 == __stdoutp || *v11 == 0 || v3)
          {
            fprintf(v2, "%s%s");
          }

          else
          {
            fprintf(v2, "%s: %s%s");
          }

          v3 = *v13 != 10;
          v9 = *v10;
        }

        while (*v10);
      }

      fflush(v2);
    }
  }

  return 0;
}

uint64_t sub_10004530C(uint64_t a1, const char *a2)
{
  byte_10009AB48 = 0;
  if (dword_10009B568)
  {

    return sub_100044D10(2, &qword_10009AAC8, "%s", a2, 0);
  }

  else
  {
    result = qword_10009AAC8;
    if (qword_10009AAC8)
    {
      fprintf(qword_10009AAC8, "%s: ", qword_10009BBA8);
      byte_10009AB48 = 1;
      v4 = qword_10009AAC8;

      return fputs(a2, v4);
    }
  }

  return result;
}

uint64_t sub_1000453E8(int a1, char *a2)
{
  if (dword_10009B568)
  {
    return sub_100044D10(2, &qword_10009AAE8, "%s", a2, 0);
  }

  else
  {
    return fputs(a2, __stdoutp);
  }
}

uint64_t sub_100045454(char *__format, va_list a2)
{
  v9 = a2;
  v10 = a2;
  byte_10009AB48 = 0;
  if (qword_10009BA60 && *(qword_10009BA60 + 36) == 3)
  {
    __s = 0xAAAAAAAAAAAAAAAALL;
    vasprintf(&__s, __format, v10);
    v3 = __s;
    if (__s)
    {
      v4 = strlen(__s);
      v7[0] = 0xAAAAAAAA00000000;
      v7[1] = __s;
      v7[2] = 0x100000005;
      v7[3] = 0xAAAAAAAA00000000;
      v7[4] = 0;
      if (v4)
      {
        if (__s[v4 - 1] == 10)
        {
          __s[v4 - 1] = 0;
          v3 = __s;
        }
      }

      sub_10004788C(qword_10009BA58, v7, v3, 0);
      free(__s);
    }
  }

  else if (dword_10009B568)
  {
    sub_100044D10(1, &qword_10009AAE8, __format, 0, v10);
  }

  else
  {
    vfprintf(__stderrp, __format, v10);
  }

  if (dword_10009B568)
  {
    return sub_100044D10(1, &qword_10009AAC8, __format, 0, v9);
  }

  result = qword_10009AAC8;
  if (qword_10009AAC8)
  {
    if (byte_10009AB48)
    {
      if (!strchr(__format, 10))
      {
        return vfprintf(qword_10009AAC8, __format, v9);
      }

      v6 = 0;
    }

    else
    {
      fprintf(qword_10009AAC8, "%s: ", qword_10009BBA8);
      v6 = strchr(__format, 10) == 0;
    }

    byte_10009AB48 = v6;
    return vfprintf(qword_10009AAC8, __format, v9);
  }

  return result;
}

char *sub_100045614(char *result, ...)
{
  va_start(va, result);
  if (qword_10009BA60)
  {
    if (*(qword_10009BA60 + 28))
    {
      return sub_100045454(result, va);
    }
  }

  return result;
}

void sub_100045694(const char *a1, const char *a2, va_list a3)
{
  v5 = strlen(a1);
  v6 = vsnprintf(0, 0, a2, a3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6 + 1;
    v8 = malloc_type_malloc(v7 + v5, 0xF1CC683DuLL);
    v9 = strcpy(v8, a1);
    vsnprintf(&v9[v5], v7, a2, a3);
    sub_100045428("%s", v8);
    free(v8);
  }
}

void sub_100045744(const char *a1, ...)
{
  va_start(va, a1);
  v2 = strlen(a1);
  v3 = off_10009B0E8(0, a1, v2) & 0x3FF;
  v4 = byte_10009AB49[v3];
  if (v4 <= 49)
  {
    byte_10009AB49[v3] = v4 + 1;
    sub_100045694("warning: ", a1, va);
    if (byte_10009AB49[v3] == 50)
    {
      sub_100045428("Too many warnings of this type generated; suppressing subsequent ones.\n");
    }
  }
}

char *sub_1000457E8(unsigned __int16 *a1)
{
  v2 = *(a1 + 2);
  if ((v2 & 0x1Fu) <= 0x1A)
  {
    v3 = v2 & 0x1F | 0x40;
  }

  else
  {
    v3 = 63;
  }

  if ((v2 & 0x1F) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 48;
  }

  sub_100045614("vers: %u.%u flags: %#x class: %c os: ", *a1, a1[1], *(a1 + 1), v4);
  sub_100045614("%d%d-%d", HIBYTE(*(a1 + 3)), (*(a1 + 3) << 8) >> 24, *(a1 + 3));
  return sub_100045614(" revision: %u key len: %u", a1[8], a1[9]);
}

void sub_100045938(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4, unsigned int a5)
{
  if (a3 > 7)
  {
    v10 = *a2;
    if (a3 <= 0xB && (v10 & 0xF000000000000000) == 0xE000000000000000)
    {
      sub_100045614("obj-id: %8lld type: ???\n");
    }

    else
    {
      v11 = v10 >> 60;
      if (v10 >> 60 == 14)
      {
        LODWORD(v11) = *(a2 + 8);
      }

      v19 = -1431655766;
      v20 = -1431655766;
      v12 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v13 = sub_100040D98(v11);
      sub_100045614("obj-id: %8lld type: %-11s\n", v12, v13);
      if (sub_10003EF3C(*(a1 + 40), a2, a3, &v20) || sub_10003F058(a2, a4, a5, &v19))
      {
        sub_10004565C("key size (%u)/val size (%u) is invalid\n");
      }

      else if (v20 <= a3)
      {
        if (v19 <= a5)
        {
          switch(v11)
          {
            case 1:
              sub_100045614(" extentref_tree_oid: %lld sblock_oid: %lld change_time: %llu create_time: %llu\n", *a4, *(a4 + 1), *(a4 + 3), *(a4 + 2));
              sub_100045614(" extentref_Tree_type: %u flags: %u name: '%.*s' name_len: %u\n");
              break;
            case 2:
              sub_100045614("refcnt %d len %lld owning_obj_id %lld\n");
              break;
            case 3:
              sub_100045614("private-id: %lld parent-id: %lld cr/mtime: %lld/%lld \n", *(a4 + 1), *a4, *(a4 + 2), *(a4 + 3));
              if ((a4[40] & 0xF000) == 0x4000)
              {
                sub_100045614("gen-count: %u nchildren: %d \n");
              }

              else if (*(a4 + 14) >= 2)
              {
                sub_100045614("nlink: %d \n");
              }

              sub_100045614("def-prot-class: %d \n", *(a4 + 15));
              if (a4[41])
              {
                sub_100045614("pad1: 0x%x \n", a4[41]);
              }

              if (*(a4 + 42))
              {
                sub_100045614("uncompressed-size: 0x%llx \n", *(a4 + 42));
              }

              sub_100045614("uid/gid/mode: %d/%d/0x%x bsd_flags: 0x%x internal_flags: 0x%llx name: %s\n");
              break;
            case 4:
              v15 = a4[1];
              v16 = a5 - 4;
              if (v16 >= v15)
              {
                LODWORD(v16) = a4[1];
              }

              sub_100045614("flags: 0x%x data-len: %d name: %.*s\n", *a4, v15, v16, a4 + 4);
              if (*a4)
              {
                sub_100045614(" out-of-line data size: %lld (under obj-id: %lld / crypto-id: %lld)\n");
              }

              else
              {
                sub_100045614(" embedded data size: %d\n");
              }

              break;
            case 5:
              sub_100045614("sib-id: %lld parent-id: %lld name: %.*s\n");
              break;
            case 6:
              sub_100045614("refcnt %d\n");
              break;
            case 7:
              v17 = *(a4 + 2);
              v18 = *(a4 + 5);
              sub_100045614("refcnt: %d \n", *a4);
              sub_1000457E8(&v17);
              break;
            case 8:
              sub_100045614("logical addr: %lld  phys-block-num: %lld  crypto-id: %lld  len: %lld  flags: %x\n");
              break;
            case 9:
              if ((*(*(a1 + 40) + 56) & 9) != 0)
              {
                sub_100045614("file-id: %6lld flags: %d date-added: %lld hash: 0x%x name-len: %d name: %.*s\n");
              }

              else
              {
                sub_100045614("file-id: %6lld flags: %d date-added: %lld name-len: %d name: %.*s\n");
              }

              break;
            case 10:
              sub_100045614("num children: %lld total size: %lld gen-count: %lld\n", *a4, *(a4 + 1), *(a4 + 3));
              if (*(a4 + 2))
              {
                sub_100045614(" chained-key: %lld\n");
              }

              break;
            case 11:
              sub_100045614(" name: '%.*s' name_len: %u snap_xid: %lld\n");
              break;
            case 12:
              sub_100045614("sib-map: %lld\n");
              break;
            case 13:
              v14 = HIBYTE(*(a2 + 8));
              if (v14 == 2)
              {
                sub_100045614(" type: %u hash: 0x%llx total_count: %llu physical_size: %llu flags: 0x%x\n");
              }

              else if (v14 == 1)
              {
                sub_100045614(" type: %u logical addr: %lld\n");
              }

              else
              {
                sub_100045614(" type: %u\n");
              }

              break;
            case 16:
              sub_100045614(" atime: %llu file_id: %llu file_size: %llu dstream_id: %llu flags: 0x%x owning_uid: %u\n");
              break;
            case 17:
              sub_100045614(" file_id: %llu dstream_id: %llu\n");
              break;
            case 18:
              sub_100045614(" descendants: %llu phys_size: %llu resource_fork_size: %llu gen_count: %llu chained_key: %llu flags: 0x%x\n");
              break;
            case 19:
              sub_100045614(" private_id: %llu, file_id: %llu\n");
              break;
            default:
              return;
          }
        }

        else
        {
          sub_10004565C("val size is too small, actual: %u, minimum: %u\n");
        }
      }

      else
      {
        sub_10004565C("key size is too small, actual: %u, minimum: %u\n");
      }
    }
  }

  else
  {

    sub_100045614("obj-id: ??? type: ???\n", a2);
  }
}

char *sub_100045F58()
{
  AssertionID = 0;
  if (IOPMAssertionCreateWithName(@"PreventUserIdleDisplaySleep", 0xFFu, @"Running FSCK", &AssertionID))
  {
    v0 = "failed!";
  }

  else
  {
    dword_10009AF4C = AssertionID;
    v0 = "succeeded.";
  }

  return sub_100045614("Disabling idle sleep, %s\n", v0);
}

char *sub_100045FC8()
{
  result = dword_10009AF4C;
  if (dword_10009AF4C)
  {
    dword_10009AF4C = 0;
    v1 = IOPMAssertionRelease(result);
    v2 = "failed!";
    if (!v1)
    {
      v2 = "succeeded.";
    }

    return sub_100045614("Enabling idle sleep, %s\n", v2);
  }

  return result;
}

uint64_t sub_100046024()
{
  v0 = dword_10007CE88;
  if ((dword_10007CE88 & 0x80000000) == 0)
  {
    dword_10007CE88 = -1;
    fcntl(v0, 54, 0);
    result = close(v0);
  }

  if (dword_10009AF50)
  {
    v2 = dword_10009AF50;
    dword_10009AF50 = 0;
    return sub_10001BD78(&v2);
  }

  return result;
}

uint64_t sub_100046094(const char *a1)
{
  result = open(a1, 2);
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

BOOL sub_1000460CC(const char *a1)
{
  v1 = sub_10002DDB4(a1);
  v2 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    iterator = 0;
    IORegistryEntryGetChildIterator(MatchingService, "IOService", &iterator);
    if (iterator)
    {
      v5 = IOIteratorNext(iterator);
      if (!v5)
      {
LABEL_8:
        IOObjectRelease(iterator);
        v11 = 0;
LABEL_16:
        IOObjectRelease(v4);
        return v11;
      }

      v6 = v5;
      v7 = kCFAllocatorDefault;
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v6, @"IOMatchCategory", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v9 = CFProperty;
          v10 = CFEqual(CFProperty, @"IOStorage");
          CFRelease(v9);
          if (v10)
          {
            break;
          }
        }

        IOObjectRelease(v6);
        v6 = IOIteratorNext(iterator);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      IOObjectRelease(iterator);
    }

    else
    {
      v7 = kCFAllocatorDefault;
      v6 = v4;
    }

    v12 = IORegistryEntryCreateCFProperty(v6, @"Status", v7, 0);
    if (v12)
    {
      v13 = v12;
      v11 = CFEqual(v12, @"Corrupt") != 0;
      CFRelease(v13);
    }

    else
    {
      v11 = 0;
    }

    IOObjectRelease(v6);
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_100046258(const char **a1, uint64_t *a2, char a3)
{
  v6 = sub_10002DF68(*a1);
  v7 = v6;
  if (v6)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v27 = v8;
  if (a2)
  {
    v9 = *(a2[1] + 36);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v25 = a3;
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = (a1 + 104);
  v26 = a1;
  v13 = (a1 + 3);
  for (i = 1; ; i = 0)
  {
    v15 = &v12[12 * v10];
    *(v15 + 64) = v10;
    v16 = &v13[v10];
    if (*v16)
    {
      v17 = sub_10001C8D8(v16, v15, v27, v11);
LABEL_13:
      v18 = v17;
      if (v17)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    if (a2)
    {
      break;
    }

    v19 = sub_10002FFDC(*v26, a3 & 3, v16);
    if (v19)
    {
      goto LABEL_30;
    }

LABEL_23:
    v21 = i & v7;
    v10 = 1;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(qword_10009BA60 + 20) & 0x80000000) == 0)
  {
    v19 = sub_100004610(a2, v26, v15);
    if (v19)
    {
      goto LABEL_30;
    }

    v20 = dup(*(qword_10009BA60 + 16));
    if ((v20 & 0x80000000) == 0)
    {
      v17 = sub_10001D1D4(v20, a3 & 3, v16, v15, v27, v11);
      goto LABEL_13;
    }

    v18 = *__error();
    if (v18)
    {
      goto LABEL_31;
    }

LABEL_14:
    if (a2 && *v16)
    {
      sub_10002F3A4(*v16);
    }

    goto LABEL_23;
  }

  if (!*(qword_10009BA60 + 72) || (v19 = sub_100004610(a2, v26, v15), !v19))
  {
    a3 = v25;
    v17 = sub_10001D244(*v26, v25 & 3, v16, v15, v27, v11);
    goto LABEL_13;
  }

LABEL_30:
  v18 = v19;
LABEL_31:
  v22 = *v26;
  v23 = strerror(v18);
  sub_10004565C("device %s failed to open with error: %s\n", v22, v23);
  return v18;
}

void sub_100046458(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 24;
  v3 = a1 + 832;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v2 + 8 * v1);
    if (v6)
    {
      sub_10002F398(v6);
      *(v2 + 8 * v1) = 0;
    }

    v7 = v3 + 96 * v1;
    if (*(v7 + 72))
    {
      sub_100004AD8(v7);
    }

    v4 = 0;
    v1 = 1;
  }

  while ((v5 & 1) != 0);
}

uint64_t sub_1000464C8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(qword_10009BA60 + 16) != -1)
  {
    *a2 = 0;
    *(a2 + 2) = 0;
    goto LABEL_3;
  }

  v6 = sub_1000467A0(*(qword_10009BA60 + 8), 1, a2, (a2 + 1), (a2 + 2), (a2 + 8));
  if (v6)
  {
    v7 = v6;
    v8 = *(qword_10009BA60 + 8);
    v9 = strerror(v6);
    sub_10004565C("dev_is_mounted(%s) failed with error: %s\n", v8, v9);
    v10 = 153;
LABEL_7:
    sub_100049C40(v10, v7);
    return 66;
  }

  if ((*a2 & 1) == 0)
  {
LABEL_3:
    if (*(qword_10009BA60 + 41) != 1)
    {
      v4 = 0;
      *(a2 + 32) = 18;
      return v4;
    }

    goto LABEL_4;
  }

  v12 = qword_10009BA60;
  if (*(a2 + 1) != 1)
  {
    if (*(qword_10009BA60 + 24) == -1)
    {
      *(a2 + 16) = 1;
    }

    else
    {
      v14 = sub_1000467A0(*qword_10009BA60, 0, (a2 + 16), (a2 + 17), (a2 + 18), (a2 + 24));
      if (v14)
      {
        v7 = v14;
        v15 = *qword_10009BA60;
        v16 = strerror(v14);
        sub_10004565C("dev_is_mounted(%s) failed with error: %s\n", v15, v16);
        v10 = 155;
        goto LABEL_7;
      }

      if ((*(a2 + 16) & 1) == 0)
      {
        v17 = qword_10009BA60;
        if (*(qword_10009BA60 + 41) != 1)
        {
          *(a2 + 32) = 18;
          *(a2 + 40) = 1;
          sub_10004565C("live repair of a volume in mounted container %s is not supported yet.\n", *(v17 + 8));
          v4 = 64;
          v13 = 158;
          v18 = 64;
          goto LABEL_34;
        }

        if ((*(qword_10009BA60 + 40) & 1) == 0)
        {
          if (*(qword_10009BA60 + 42))
          {
            goto LABEL_26;
          }

          sub_10004565C("container %s is mounted with write access; please re-run with -l.\n", *(qword_10009BA60 + 8));
          v4 = 65;
          v13 = 589;
          goto LABEL_33;
        }

        if (*(qword_10009BA60 + 42))
        {
          goto LABEL_26;
        }

LABEL_31:
        v4 = 0;
        *a3 = 1;
        return v4;
      }
    }

    if (*(qword_10009BA60 + 41) != 1)
    {
      sub_10004565C("container %s is mounted with write access.\n", *(qword_10009BA60 + 8));
      v4 = 65;
      v13 = 157;
      goto LABEL_33;
    }

    if (*(qword_10009BA60 + 40) != 1 || *(a2 + 18) != 1 || (*(qword_10009BA60 + 42) & 1) != 0)
    {
      if (*(qword_10009BA60 + 42) == 1)
      {
LABEL_26:
        v4 = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        return v4;
      }

      sub_10004565C("container %s is mounted with write access; please re-run with -l.\n", *(qword_10009BA60 + 8));
      v4 = 65;
      v13 = 156;
LABEL_33:
      v18 = 65;
LABEL_34:
      sub_100049C40(v13, v18);
      return v4;
    }

    goto LABEL_31;
  }

  if (*(qword_10009BA60 + 41) != 1)
  {
    if (*(a2 + 2) == 1)
    {
      *(a2 + 32) = 0x4000000000012;
      sub_10004565C("container %s is mounted. repairs in a mounted container is not supported yet.\n", *(v12 + 8));
      v4 = 65;
      v13 = 857;
    }

    else
    {
      sub_10004565C("container %s is mounted.\n", *(qword_10009BA60 + 8));
      v4 = 65;
      v13 = 154;
    }

    goto LABEL_33;
  }

LABEL_4:
  v4 = 0;
  *(a2 + 32) = 0;
  return v4;
}

uint64_t sub_1000467A0(const char *a1, int a2, _BYTE *a3, _BYTE *a4, char *a5, void **a6)
{
  v8 = a4;
  *a3 = 0;
  *a4 = 1;
  *a5 = 0;
  *a6 = 0;
  v10 = sub_10002DDB4(a1);
  v11 = strlen(v10);
  v12 = getfsstat(0, 0, 2);
  if ((v12 & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_34;
  }

  v13 = 2168 * v12;
  v14 = malloc_type_malloc(2168 * v12, 0x100004087E0324AuLL);
  v15 = v14;
  if (!v14 || (v16 = getfsstat(v14, v13, 2), (v16 & 0x80000000) != 0))
  {
LABEL_34:
    v28 = *__error();
  }

  else
  {
    if (v16)
    {
      v30 = v8;
      v17 = v16;
      v18 = v15;
      while (1)
      {
        f_mntfromname = v18->f_mntfromname;
        if (!strcmp(v18->f_mntfromname, "root_device"))
        {
          f_mntfromname = devname(v18->f_fsid.val[0], 0x6000u);
        }

        v20 = strrchr(f_mntfromname, 64);
        if (v20)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = f_mntfromname;
        }

        v22 = sub_10002DDB4(v21);
        if (strncmp(v22, v10, v11))
        {
          goto LABEL_31;
        }

        v23 = v22[v11];
        if (v22[v11])
        {
          if (a2)
          {
            if (v23 != 115)
            {
              goto LABEL_31;
            }

LABEL_17:
            f_flags = v18->f_flags;
            if ((f_flags & 0x4000) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

          if (v23 != 115 || (v18->f_flags & 0x40000000) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (a2)
        {
          goto LABEL_17;
        }

        f_flags = v18->f_flags;
        if ((f_flags & 0x40000000) == 0)
        {
LABEL_18:
          v25 = 0;
          goto LABEL_26;
        }

LABEL_24:
        if (*a3)
        {
          goto LABEL_27;
        }

        v25 = 1;
LABEL_26:
        *a5 = v25;
LABEL_27:
        *a3 = 1;
        if ((f_flags & 1) == 0)
        {
          *v30 = 0;
        }

        if (!*a6)
        {
          v27 = strdup(v18->f_mntonname);
          *a6 = v27;
          if (!v27)
          {
            v8 = v30;
            goto LABEL_34;
          }
        }

LABEL_31:
        ++v18;
        if (!--v17)
        {
          v28 = 0;
          v8 = v30;
          goto LABEL_35;
        }
      }
    }

    v28 = 0;
  }

LABEL_35:
  if ((*a3 & 1) == 0)
  {
    *v8 = 0;
  }

  if (v15)
  {
    free(v15);
  }

  if (v28 && *a6)
  {
    free(*a6);
    *a6 = 0;
  }

  return v28;
}

uint64_t sub_1000469C4(uint64_t *a1, uint64_t a2)
{
  v3 = *(qword_10009BA60 + 16);
  if (v3 == -1)
  {
    v4 = sub_10001D2B0(*(qword_10009BA60 + 8), a2, a1);
  }

  else
  {
    v4 = sub_10001D180(v3, a1);
  }

  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = *(qword_10009BA60 + 8);
  v7 = strerror(v4);
  sub_10004565C("device %s failed to open with error: %s\n", v6, v7);
  sub_100049C40(0xA3, v5);
  return 66;
}

uint64_t sub_100046A58(uint64_t a1, char a2, _BYTE *a3)
{
  v14 = -1431655766;
  v15 = -1431655766;
  sub_10001D914(a1, &v15, &v14);
  *a3 = 0;
  for (i = v15; i < v14; ++i)
  {
    v7 = sub_10001D82C(a1, i);
    v8 = *v7;
    if (!*v7)
    {
      v9 = *(qword_10009BA60 + 8);
      v16 = 0;
      asprintf(&v16, "/dev/r%ss%d", (v9 + 6), i + 1);
      v8 = v16;
      *v7 = v16;
      if (!v8)
      {
        sub_10004565C("failed to allocate memory for device path\n");
        sub_100049C40(0xA4, 12);
        return 71;
      }
    }

    if ((*(qword_10009BA60 + 40) & 1) == 0 && (*(qword_10009BA60 + 47) & 1) == 0)
    {
      v10 = sub_10002DF14(v8);
      *a3 |= v10;
      if (v10)
      {
        if (*(qword_10009BA60 + 48) == 1)
        {
          *strrchr(*v7, 115) = 0;
          v7[8] = 1;
          *a3 = 0;
        }

        v11 = sub_100046258(v7, 0, a2);
        if (v11)
        {
          sub_100049C40(0x9F, v11);
          return 66;
        }
      }

      if ((*(qword_10009BA60 + 20) & 0x80000000) != 0)
      {
        v12 = v7[8];
      }

      else
      {
        v12 = 1;
      }

      v7[8] = v12;
    }
  }

  return 0;
}

uint64_t sub_100046BE8(uint64_t a1, char a2)
{
  v18 = -1431655766;
  v19 = -1431655766;
  sub_10001D914(a1, &v19, &v18);
  if (dword_10009AF50)
  {
    v4 = v18;
  }

  else
  {
    v21 = -1431655766;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[4] = v8;
    v20[5] = v8;
    v20[2] = v8;
    v20[3] = v8;
    v20[0] = v8;
    v20[1] = v8;
    v9 = *(a1 + 8);
    v10 = *(qword_10009BA60 + 8);
    v11 = *(v9 + 1392);
    v17[0] = *(v9 + 1296);
    v17[1] = v11;
    v12 = sub_10001BC54(v10, (a2 & 3) != 0, v17, &dword_10009AF50, v20);
    if (v12)
    {
      v13 = v12;
      v14 = *(qword_10009BA60 + 8);
      v15 = strerror(v12);
      sub_10004565C("failed to enable crypto I/O mode for container %s: %s\n", v14, v15);
      sub_100049C40(0x3B1, v13);
      return 66;
    }

    v4 = v18;
    for (i = v19; i < v18; v4 = v18)
    {
      sub_10001D82C(a1, i)[8] = *(v20 + i) != 0;
      ++i;
    }
  }

  v5 = v19;
  if (v19 < v4)
  {
    do
    {
      v6 = sub_10001D82C(a1, v5);
      if ((v6[8] & 1) == 0)
      {
        sub_100046458(v6);
      }

      ++v5;
    }

    while (v5 < v18);
  }

  return 0;
}

uint64_t sub_100046D6C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    v4 = *(a2 + 8);
  }

  v5 = open(v4, 0);
  dword_10007CE88 = v5;
  if (v5 < 0)
  {
    v10 = *__error();
    v11 = strerror(v10);
    sub_10004565C("could not open %s to freeze the volume: %s\n", v4, v11);
    sub_100049C40(0xA1, v10);
    return 66;
  }

  if (a3)
  {
    v13 = 0;
    result = ffsctl(v5, 0x80044A62uLL, &v13, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v8 = strerror(v7);
    sub_10004565C("could not sync and freeze volume: %s\n", v8);
    v9 = 1081;
  }

  else
  {
    result = fcntl(v5, 53, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v12 = strerror(v7);
    sub_10004565C("could not freeze volume: %s\n", v12);
    v9 = 162;
  }

  sub_100049C40(v9, v7);
  return 71;
}

uint64_t sub_100046EA0(uint64_t *a1, int8x16_t *a2)
{
  sub_10001D5B4(a2[2].i64[1], "fsck_apfs", *(a2[2].i64[1] + 16));
  v4 = a2[2].i64[1];
  v7 = a2[5];
  v8 = a2[6].i64[0];
  result = sub_100026A10(a1, 0, v4, v7.i64, v7, v5);
  if (!result)
  {
    *(qword_10009BA60 + 53) = 1;
  }

  return result;
}

uint64_t sub_100046F1C(uint64_t *a1, uint64_t a2, void *a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *a3 = -1;
  v14 = 8;
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = 16;
  v4 = sub_10002D04C(a1, a2, &v15);
  if (!v4)
  {
    v7 = v15;
    v8 = 0xFFFFFFFFLL;
    v9 = a3;
    v10 = 8;
    while (1)
    {
      v11 = sub_1000397B8(v7, 0, v8, v9, &v14, v10, v13, &v12);
      v4 = v11;
      if ((v11 & 0xFFFFFFFD) != 0)
      {
        break;
      }

      if (v11)
      {
        return v4;
      }

      if ((v13[0] & 3) == 0)
      {
        return 0;
      }

      v7 = v15;
      v10 = v14;
      v8 = 4294967294;
      v9 = a3;
    }
  }

  v5 = strerror(v4);
  sub_10004565C("unable to lookup latest snap xid: %s\n", v5);
  return v4;
}

void sub_100047000(uint64_t a1, const char *a2, va_list a3)
{
  if (!a1)
  {
    return;
  }

  memset(__b, 170, sizeof(__b));
  v5 = vsnprintf(__b, 0x400uLL, a2, a3);
  if (v5 < 0x401)
  {
LABEL_10:
    if (*(a1 + 56) == 1)
    {
      v11 = *(a1 + 48);
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (!v11)
      {
        return;
      }
    }

    v11(a1, __b);
    return;
  }

  v6 = v5;
  v7 = v5 + 1;
  v8 = malloc_type_malloc(v7, 0x6FBDF0F3uLL);
  if (!v8)
  {
    strcpy(__b, "* * * cannot allocate memory * * *\n");
    goto LABEL_10;
  }

  v9 = v8;
  if (v7 <= vsnprintf(v8, v6, a2, a3))
  {
    strcpy(__b, " * * * cannot allocate memory * * *\n");
    free(v9);
    goto LABEL_10;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10(a1, v9);
  }

  free(v9);
}

uint64_t sub_100047190(FILE **a1, char *a2)
{
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = __stdoutp;
  }

  fputs(a2, v2);

  return fflush(v2);
}

const char *sub_1000471E4(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100078B20[a1 - 1];
  }
}

_BYTE *sub_10004720C(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 1;
  do
  {
    a1 = strchr(a1 + 1, 37);
    v2 += 5;
  }

  while (a1);
  v3 = strlen(v1);
  v4 = malloc_type_calloc(1uLL, v3 + v2, 0xFC76B622uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *v1;
    v7 = v4;
    if (*v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      do
      {
        if (v8)
        {
          v11 = v6 - 65;
          v12 = ((1 << (v6 - 65)) & 0x94E17D0094407DLL) == 0;
          v8 = v11 > 0x37 || v12;
          v7 = v10;
        }

        else
        {
          *v10 = v6;
          v7 = v10 + 1;
          if (*v1 == 37)
          {
            if (v1[1] == 37)
            {
              v8 = 0;
              v7 = v10 + 2;
              v10[1] = 37;
              ++v1;
            }

            else
            {
              v7 += sprintf(v10 + 1, "%d$@", ++v9);
              v8 = 1;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v13 = *++v1;
        v6 = v13;
        v10 = v7;
      }

      while (v13);
    }

    *v7 = 0;
  }

  return v5;
}

FILE **sub_100047360()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040D577FD4FuLL);
  v1 = v0;
  if (v0)
  {
    if (sub_1000473DC(v0, &unk_10007C190) == -1)
    {
      sub_1000474B8(v1);
      return 0;
    }

    else
    {
      v1[5] = sub_100047190;
    }
  }

  return v1;
}

uint64_t sub_1000473DC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (!*(a2 + 8))
      {
        return 0;
      }

      v5 = 0;
      v6 = (a2 + 48);
      do
      {
        v7 = *v6;
        v6 += 5;
        ++v5;
      }

      while (v7);
      v8 = malloc_type_realloc(*(a1 + 32), 8 * (*(a1 + 24) + v5), 0x2004093837F09uLL);
      if (v8)
      {
        *(a1 + 32) = v8;
        v9 = *(a1 + 24);
        v10 = 8 * v9;
        v11 = v5;
        do
        {
          *(*(a1 + 32) + v10) = v4;
          v10 += 8;
          v4 += 40;
          --v11;
        }

        while (v11);
        v12 = *(a1 + 32);
        v13 = v9 + v5;
        *(a1 + 24) = v13;
        qsort(v12, v13, 8uLL, sub_1000476F4);
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_1000474B8(FILE **a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    if (a1[1])
    {
      fclose(*a1);
    }

    v3 = a1[8];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t sub_10004751C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_100047538(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_100047554(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_100047570(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 20) = a2;
  return result;
}

uint64_t sub_10004758C(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) != 1)
  {
    v22 = *(a1 + 20);
    if (v22 == 2)
    {
      v23 = 1;
    }

    else
    {
      v23 = -1;
    }

    if (v22 == 1)
    {
      return 0;
    }

    else
    {
      return v23;
    }
  }

  v4 = 0;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    va_copy(v27, va);
    sub_100047000(a1, a2, va);
    v11 = *(a1 + 20);
    if (v11 == 1)
    {
      v21 = 0;
      v24 = "NO\n";
      goto LABEL_30;
    }

    if (v11 == 2)
    {
      v21 = 1;
      v24 = "YES\n";
LABEL_30:
      sub_100047164(a1, v24, v5, v6, v7, v8, v9, v10);
      return v21;
    }

    v26 = 0xAAAAAAAAAAAAAAAALL;
    v12 = fgetln(__stdinp, &v26);
    if (v12)
    {
      v19 = v26 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_12;
    }

    v20 = *v12;
    if (v20 <= 0x4D)
    {
      break;
    }

    if (*v12 > 0x6Du)
    {
      if (v20 == 110)
      {
        return 0;
      }

      if (v20 == 121)
      {
        return 1;
      }
    }

    else
    {
      if (v20 == 78)
      {
        return 0;
      }

      if (v20 == 89)
      {
        return 1;
      }
    }

LABEL_13:
    ++v4;
  }

  if (v20 != 10)
  {
    goto LABEL_13;
  }

LABEL_12:
  if (v4 < 0xA)
  {
    goto LABEL_13;
  }

  sub_100047164(a1, "\n", v13, v14, v15, v16, v17, v18);
  return 0;
}

const void **sub_100047720(const void **result, int a2)
{
  __key = a2;
  if (result)
  {
    result = bsearch(&__key, result[4], *(result + 6), 8uLL, sub_10004770C);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

char *sub_100047770(int a1, const char *a2, va_list a3)
{
  v8 = 0;
  v7 = 0;
  v3 = a1 - 1;
  if ((a1 - 1) > 8)
  {
    v4 = &byte_10005C3F3;
    v5 = &byte_10005C3F3;
  }

  else
  {
    v4 = off_100078B68[v3];
    v5 = *(&off_100078BB0 + v3);
  }

  vasprintf(&v7, a2, a3);
  if (!v7)
  {
    return 0;
  }

  asprintf(&v8, "%s%s%s\n", v4, v7, v5);
  free(v7);
  return v8;
}

uint64_t sub_10004780C(uint64_t a1, uint64_t a2, const char *a3, va_list a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_1000517D0();
  }

  v5 = *(a2 + 16);
  if (v5 == 8)
  {
    return 0;
  }

  v6 = sub_100047770(v5, a3, a4);
  if (v6)
  {
    v13 = v6;
    sub_100047164(a1, "%s", v7, v8, v9, v10, v11, v12, v6);
    free(v13);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10004788C(uint64_t a1, unsigned int *a2, char *a3, uint64_t *a4)
{
  v5 = *(a2 + 1);
  if (v5 != a3)
  {
    sub_1000517FC();
  }

  v7 = sub_10004720C(v5);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v7;
  sub_100047164(a1, "<plist version=1.0>\n", v8, v9, v10, v11, v12, v13);
  sub_100047164(a1, "\t<dict>\n", v15, v16, v17, v18, v19, v20);
  v21 = sub_1000471E4(a2[4]);
  sub_100047164(a1, "\t\t<key>%s</key> <string>%s</string>\n", v22, v23, v24, v25, v26, v27, "fsck_msg_type", v21);
  if (*a2 != 119)
  {
    if (a2[5])
    {
      v34 = "1";
    }

    else
    {
      v34 = "0";
    }

    sub_100047164(a1, "\t\t<key>%s</key> <integer>%s</integer>\n", v28, v29, v30, v31, v32, v33, "fsck_verbosity", v34);
    sub_100047164(a1, "\t\t<key>%s</key> <integer>%u</integer>\n", v35, v36, v37, v38, v39, v40, "fsck_msg_number", *a2);
    sub_100047164(a1, "\t\t<key>%s</key> <string>%s</string>\n", v41, v42, v43, v44, v45, v46, "fsck_msg_string", v14);
  }

  if (a2[6] >= 1)
  {
    sub_100047164(a1, "\t\t<key>%s</key>\n", v28, v29, v30, v31, v32, v33, "parameters");
    sub_100047164(a1, "\t\t<array>\n", v47, v48, v49, v50, v51, v52);
    if (a2[6] >= 1)
    {
      for (i = 0; i < a2[6]; ++i)
      {
        v60 = *(*(a2 + 4) + 4 * i);
        if (v60 > 5)
        {
          if (v60 <= 7)
          {
            if (v60 == 6)
            {
              v81 = a4++;
              sub_100047C78(*v81);
              v63 = v82;
              sub_100047164(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v83, v84, v85, v86, v87, v88, "directory", v82);
            }

            else
            {
              v72 = a4++;
              sub_100047C78(*v72);
              v63 = v73;
              sub_100047164(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v74, v75, v76, v77, v78, v79, "volumename", v73);
            }

            goto LABEL_31;
          }

          if (v60 == 8)
          {
            goto LABEL_26;
          }

          if (v60 == 9)
          {
            v105 = a4++;
            sub_100047C78(*v105);
            v63 = v106;
            sub_100047164(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v107, v108, v109, v110, v111, v112, "fstype", v106);
LABEL_31:
            free(v63);
            continue;
          }

          if (v60 != 10)
          {
            goto LABEL_33;
          }

          v70 = a4++;
          sub_100047164(a1, "\t\t\t<integer>%llu</integer>\n", v53, v54, v55, v56, v57, v58, *v70);
        }

        else
        {
          if (v60 > 2)
          {
            if (v60 == 3)
            {
              v89 = a4++;
              sub_100047C78(*v89);
              v63 = v90;
              sub_100047164(a1, "\t\t\t<string>%s</string>\n", v91, v92, v93, v94, v95, v96, v90, v121);
            }

            else if (v60 == 4)
            {
              v97 = a4++;
              sub_100047C78(*v97);
              v63 = v98;
              sub_100047164(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v99, v100, v101, v102, v103, v104, "path", v98);
            }

            else
            {
              v61 = a4++;
              sub_100047C78(*v61);
              v63 = v62;
              sub_100047164(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v64, v65, v66, v67, v68, v69, "file", v62);
            }

            goto LABEL_31;
          }

          if (v60 == 1)
          {
LABEL_26:
            v80 = a4++;
            sub_100047164(a1, "\t\t\t<integer>%d</integer>\n", v53, v54, v55, v56, v57, v58, *v80);
            continue;
          }

          if (v60 != 2)
          {
LABEL_33:
            v113 = a4++;
            sub_100047164(a1, "\t\t\t<integer>%p</integer>\n", v53, v54, v55, v56, v57, v58, *v113);
            continue;
          }

          v71 = a4++;
          sub_100047164(a1, "\t\t\t<integer>%ld</integer>\n", v53, v54, v55, v56, v57, v58, *v71);
        }
      }
    }

    sub_100047164(a1, "\t\t</array>\n", v53, v54, v55, v56, v57, v58);
  }

  sub_100047164(a1, "\t</dict>\n", v28, v29, v30, v31, v32, v33);
  sub_100047164(a1, "</plist>\n", v114, v115, v116, v117, v118, v119);
  free(v14);
  return 0;
}

void sub_100047C78(uint64_t a1)
{
  __chkstk_darwin(a1);
  if (v1)
  {
    v2 = v1;
    v3 = __s1;
    bzero(__s1, 0x1801uLL);
    while (1)
    {
      v4 = *v2;
      if (v4 <= 0x26)
      {
        if (v4 == 34)
        {
          *v3 = 1869967654;
          *(v3 + 2) = 15220;
          goto LABEL_15;
        }

        if (v4 == 38)
        {
          *v3 = 1886216486;
          v3[4] = 59;
          v5 = 5;
          goto LABEL_18;
        }

        if (!*v2)
        {
          strdup(__s1);
          return;
        }
      }

      else
      {
        switch(v4)
        {
          case '\'':
            *v3 = 1869635878;
            *(v3 + 2) = 15219;
LABEL_15:
            v5 = 6;
            goto LABEL_18;
          case '<':
            *v3 = 997485606;
            goto LABEL_13;
          case '>':
            *v3 = 997484326;
LABEL_13:
            v5 = 4;
            goto LABEL_18;
        }
      }

      *v3 = v4;
      v5 = 1;
LABEL_18:
      v3 += v5;
      ++v2;
    }
  }
}

uint64_t sub_100047DCC(uint64_t a1, uint64_t a2, char *a3, unsigned int *a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_100051828();
  }

  v6 = sub_10004720C(a3);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v6;
  v14 = *(a2 + 16) - 1;
  if (v14 > 8)
  {
    v15 = 63;
  }

  else
  {
    v15 = dword_100077100[v14];
  }

  if (*a2 != 119)
  {
    sub_100047164(a1, "(%c,%s,%d)\n", v7, v8, v9, v10, v11, v12, v15, v6, *(a2 + 24));
  }

  if (*(a2 + 24) >= 1)
  {
    for (i = 0; i < *(a2 + 24); ++i)
    {
      v18 = *(*(a2 + 32) + 4 * i);
      if (v18 > 7)
      {
        if (v18 == 8)
        {
          v22 = a4;
          a4 += 2;
          sub_100047164(a1, "(%d %%)\n", v7, v8, v9, v10, v11, v12, *v22);
          continue;
        }

        if (v18 == 9)
        {
LABEL_13:
          v19 = a4;
          a4 += 2;
          sub_100047164(a1, "%s\n", v7, v8, v9, v10, v11, v12, *v19);
          continue;
        }

        if (v18 != 10)
        {
          goto LABEL_24;
        }

        v20 = a4;
        a4 += 2;
        sub_100047164(a1, "%llu\n", v7, v8, v9, v10, v11, v12, *v20);
      }

      else
      {
        if ((v18 - 3) < 5)
        {
          goto LABEL_13;
        }

        if (v18 == 1)
        {
          v24 = a4;
          a4 += 2;
          sub_100047164(a1, "%d\n", v7, v8, v9, v10, v11, v12, *v24);
          continue;
        }

        if (v18 != 2)
        {
LABEL_24:
          v23 = a4;
          a4 += 2;
          sub_100047164(a1, "%p\n", v7, v8, v9, v10, v11, v12, *v23);
          continue;
        }

        v21 = a4;
        a4 += 2;
        sub_100047164(a1, "%ld\n", v7, v8, v9, v10, v11, v12, *v21);
      }
    }
  }

  free(v13);
  return 0;
}

uint64_t sub_100047FFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = sub_100047720(a1, a2);
  if (!v9)
  {
    sub_100051854();
  }

  v10 = v9;
  v11 = *(a1 + 16) - 1;
  if (v11 > 3)
  {
    v12 = sub_100047FF4;
  }

  else
  {
    v12 = off_100078BF8[v11];
  }

  *(a1 + 56) = 1;
  sub_10004780C(a1, v9, v9[1], va);
  *(a1 + 56) = 0;
  return (v12)(a1, v10, v10[1], va);
}

uint64_t sub_1000480B8(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, char a9)
{
  if (!a1)
  {
    return 22;
  }

  v11 = a6;
  if (a6 > 0x10000 && (a9 & 1) != 0)
  {
    v11 = 0x10000;
  }

  else
  {
    while (a5 > 0x10000 && v11 < 0x10000 || a5 > 0x1000 && v11 < 0x400)
    {
      a5 >>= 1;
      v11 *= 2;
    }

    while (a5 <= 0xFFF && v11 > 0x400 || !HIWORD(a5) && v11 > 0x10000)
    {
      a5 *= 2;
      v11 >>= 1;
    }
  }

  result = 34;
  if (a5 - 65537 >= 0xFFFF0FFF && v11 - 65537 >= 0xFFFF03FF)
  {
    v18 = *(a2 + 84);
    v19 = malloc_type_calloc(1uLL, 0x118uLL, 0x10E004027214369uLL);
    if (v19)
    {
      v20 = v19;
      *(v19 + 4) = a2;
      *(v19 + 5) = a4;
      *(v19 + 12) = v18;
      *(v19 + 7) = *(a2 + 112);
      *(v19 + 18) = a7;
      if (a3)
      {
        v21 = *a3;
        *(v19 + 200) = a3[1];
        *(v19 + 184) = v21;
        v22 = a3[2];
        v23 = a3[3];
        v24 = a3[4];
        *(v19 + 264) = a3[5];
        *(v19 + 248) = v24;
        *(v19 + 232) = v23;
        *(v19 + 216) = v22;
      }

      v25 = malloc_type_calloc(1uLL, 8 * a7, 0x2004093837F09uLL);
      *(v20 + 8) = v25;
      if (v25)
      {
        v26 = v11 * a5;
        do
        {
          if (a5 % v18)
          {
            sub_1000483CC(v20);
            return 34;
          }

          v27 = v11;
          v28 = a5;
          v29 = mmap(0, v26, 3, 4098, -1, 0);
          v30 = v29;
          *(v20 + 15) = v29;
          if (v29 != -1)
          {
            break;
          }

          v11 = 0;
          a5 = 0x10000;
          v31 = v26 > 0x400000;
          v26 = 0;
        }

        while (v31);
        if (v29 != -1)
        {
          *(v20 + 14) = v29;
          if (a8)
          {
            v32 = getpagesize();
            v33 = v27 * v28;
            if (v33)
            {
              v34 = &v30[v33];
              do
              {
                *v30 = 0;
                v30 += v32;
              }

              while (v30 < v34);
              v30 = *(v20 + 15);
            }
          }

          v35 = v27 - 1;
          if (v27 == 1)
          {
            v36 = v30;
          }

          else
          {
            do
            {
              v36 = &v30[v28];
              *v30 = v36;
              v30 = v36;
              --v35;
            }

            while (v35);
          }

          *v36 = 0;
          *(v20 + 32) = v27;
          *(v20 + 19) = v28;
          *(v20 + 20) = v27;
          v37 = malloc_type_malloc(0x900uLL, 0x10A0040E6181C31uLL);
          if (v37)
          {
            v38 = v37;
            bzero(v37, 0x900uLL);
            v39 = 0;
            v40 = v38 + 48;
            v41 = vdupq_n_s64(0x2FuLL);
            do
            {
              v42 = vorrq_s8(vdupq_n_s64(v39), xmmword_100076F20);
              if (vmovn_s64(vcgtq_u64(v41, v42)).u8[0])
              {
                *(v40 - 6) = v40;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2FuLL), v42)).i32[1])
              {
                *v40 = v40 + 6;
              }

              v39 += 2;
              v40 += 12;
            }

            while (v39 != 48);
            result = 0;
            *(v20 + 19) = v38;
            *(v20 + 17) = v38;
            *a1 = v20;
            *v20 = v20;
            *(v20 + 1) = v20;
            *(v20 + 2) = v20 + 16;
            *(v20 + 3) = v20 + 16;
            return result;
          }
        }
      }

      sub_1000483CC(v20);
    }

    return 12;
  }

  return result;
}

uint64_t sub_1000483CC(unsigned int *a1)
{
  if (a1)
  {
    if (*(a1 + 17))
    {
      for (i = *(a1 + 18); i; i = *i)
      {
        v3 = i[5];
        if (v3 && (i[2] & 0x80000000) != 0)
        {
          free(v3);
        }
      }

      for (j = *(a1 + 19); j; j = *j)
      {
        v5 = j[5];
        if (v5 && (j[2] & 0x80000000) != 0)
        {
          free(v5);
        }
      }

      free(*(a1 + 17));
    }

    if (*(a1 + 14))
    {
      sub_100048548(a1);
      munmap(*(a1 + 14), a1[20] * a1[19]);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = a1[18];
      if (v7)
      {
        for (k = 0; k < v7; ++k)
        {
          v9 = *(*(a1 + 8) + 8 * k);
          if (v9)
          {
            do
            {
              v10 = v9[2];
              free(v9);
              v9 = v10;
            }

            while (v10);
            v7 = a1[18];
          }
        }

        v6 = *(a1 + 8);
      }

      free(v6);
    }

    *(a1 + 34) = 0;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    free(a1);
  }

  return 0;
}

uint64_t sub_1000484FC(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 76) % a2)
  {
    return 34;
  }

  result = 0;
  v4 = *(a1 + 56) * *(a1 + 48) / a2;
  *(a1 + 48) = a2;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_10004853C(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_100048548(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 16;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 64) + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *(v5 + 40);
          if (v6)
          {
            if ((v6 & 4) != 0)
            {
              v7 = a1 + 184;
            }

            else
            {
              v7 = 0;
            }

            result = sub_100049854(a1, v5, v7);
            if (result)
            {
              return result;
            }

            *(v5 + 40) &= ~1u;
            --*(a1 + 84);
          }

          v5 = *(v5 + 16);
        }

        while (v5);
        v3 = *(a1 + 72);
      }
    }
  }

  *(a1 + 88) = 0;
  (*(*(a1 + 40) + 80))(*(a1 + 32), 1);
  return 0;
}

uint64_t sub_100048608(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a2 / *(a1 + 76) * *(a1 + 76) % *(a1 + 72);
  if (a3)
  {
    *a3 = 0;
  }

  v6 = *(*(a1 + 64) + 8 * v5);
  if (!v6)
  {
    return 2;
  }

  while (*(v6 + 48) != a2)
  {
    v6 = *(v6 + 16);
    if (!v6)
    {
      return 2;
    }
  }

  if (!*(v6 + 112))
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_14;
  }

  v7 = (*(*(a1 + 40) + 48))(*(a1 + 32));
  if (v7)
  {
    v9 = *(v6 + 56);
    *v9 = *(a1 + 120);
    *(a1 + 120) = v9;
    ++*(a1 + 128);
    *(v6 + 56) = 0;
  }

  free(*(v6 + 112));
  *(v6 + 112) = 0;
  if (a3)
  {
LABEL_14:
    if (!v7)
    {
      *a3 = v6;
    }
  }

  return v7;
}

uint64_t sub_1000486DC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (!v2)
  {
    return 37;
  }

  *(a2 + 44) = v2 - 1;
  sub_100048718(a1, a2, 0);
  return 0;
}

void *sub_100048718(void *result, uint64_t *a2, int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    if (v4)
    {
      *(v3 + 8) = v4;
      *a2[1] = v3;
    }
  }

  if (*(a2 + 11))
  {
    v5 = result[2];
    *a2 = v5;
    v6 = result + 2;
    result = v5;
  }

  else if (a3)
  {
    *a2 = result;
    v6 = result[1];
  }

  else
  {
    v6 = result;
    result = *result;
    *a2 = result;
  }

  a2[1] = v6;
  result[1] = a2;
  *a2[1] = a2;
  return result;
}

uint64_t sub_100048780(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7, __int128 *a8, uint64_t a9)
{
  v15 = *(a1 + 76);
  if ((a6 & 4) != 0 && v15 != *(a1 + 48))
  {
    return 45;
  }

  v69 = 0xAAAAAAAAAAAAAAAALL;
  v16 = a2 / v15 * v15;
  v17 = (a1 + 144);
  while (1)
  {
    v17 = *v17;
    if (!v17)
    {
      break;
    }

    v18 = v17[3];
    v19 = v18 < a2 || v18 >= a2 + a3;
    if (!v19)
    {
      return 11;
    }
  }

  v64 = (a1 + 144);
  v65 = a2 % v15;
  v21 = sub_100048CCC(a1, v16, &v69, a5, a6, a7, a8 != 0, a9);
  v20 = v21;
  if (a8 && (*a7 & 1) == 0)
  {
    v26 = v69;
    v27 = *(a1 + 32);
    if (!v69)
    {
      v28 = *(a1 + 72);
      v29 = sub_100049A4C(v16, a5, a9, a6);
      if (!v29)
      {
        return 12;
      }

      v26 = v29;
      v29[3] = 0;
      v30 = *(a1 + 64);
      v31 = *(v30 + 8 * (v16 % v28));
      v29[2] = v31;
      if (v31)
      {
        *(v31 + 24) = v29;
      }

      *(v30 + 8 * (v16 % v28)) = v29;
    }

    v32 = v26[7];
    if (v32)
    {
      if (!v26[14])
      {
        return 14;
      }

      *(a8 + 14) = v32;
      ++*(v26 + 11);
      sub_100048718(a1, v26, 0);
      return 0;
    }

    v34 = *(a1 + 48);
    v35 = v16 / v34;
    v36 = *(a1 + 56) - 1;
    v19 = v36 >= v16 / v34;
    v37 = v36 - v16 / v34;
    if (!v19)
    {
      return 6;
    }

    v38 = *(a1 + 76) / v34;
    if (v37 < v38)
    {
      v39 = v37 + 1;
    }

    else
    {
      v39 = v38;
    }

    v40 = sub_100049AC0(*(v27 + 16));
    v26[7] = v40;
    if (v40)
    {
      v41 = malloc_type_malloc(0x68uLL, 0x10A2040BE83C1C8uLL);
      v26[14] = v41;
      if (v41)
      {
        v42 = *a8;
        v43 = a8[2];
        v41[1] = a8[1];
        v41[2] = v43;
        *v41 = v42;
        v44 = a8[3];
        v45 = a8[4];
        v46 = a8[5];
        *(v41 + 12) = *(a8 + 12);
        v41[4] = v45;
        v41[5] = v46;
        v41[3] = v44;
        v20 = (*(*(a1 + 40) + 40))(v27, v35, v39, v26[7], a5, 1, v26[14], v26[12], *(v26 + 26), 0);
        if (v20)
        {
          v47 = *(v27 + 16);
          v48 = v26[7];
          *v48 = *(v47 + 120);
          *(v47 + 120) = v48;
          ++*(v47 + 128);
          v26[7] = 0;
          free(v26[14]);
          v26[14] = 0;
        }

        else
        {
          *(a8 + 14) = v26[7];
          ++*(v26 + 11);
          sub_100048718(a1, v26, 0);
        }

        return v20;
      }

      v59 = *(v27 + 16);
      v60 = v26[7];
      *v60 = *(v59 + 120);
      *(v59 + 120) = v60;
      ++*(v59 + 128);
      v26[7] = 0;
    }

    return 12;
  }

  if (v21)
  {
    return v20;
  }

  v22 = *(a1 + 152);
  if (!v22)
  {
    return 55;
  }

  *(a1 + 152) = *v22;
  *a4 = v22;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = 0;
  if (v16 / *(a1 + 76) == (a2 + a3 - 1) / *(a1 + 76))
  {
    v23 = v69;
    *(v22 + 40) = *(v69 + 56) + v65;
    ++*(v23 + 44);
    sub_100048718(a1, v23, 0);
LABEL_16:
    v24 = v64;
    v25 = *v64;
    if (*v64)
    {
      *v22 = v25;
      *(v22 + 8) = 0;
      v24 = (v25 + 8);
    }

    v20 = 0;
    *v24 = v22;
    ++*(a1 + 160);
    return v20;
  }

  *(v22 + 16) = 0x80000000;
  v68 = -86;
  if (a8)
  {
    *v22 = *(a1 + 152);
    *(a1 + 152) = v22;
    return 45;
  }

  v49 = malloc_type_malloc(a3, 0xF03CC91FuLL);
  *(v22 + 40) = v49;
  if (!v49)
  {
    return 12;
  }

  v50 = *(a1 + 76) - v65;
  v51 = a3 - v50;
  memcpy(v49, (*(v69 + 56) + v65), v50);
  v52 = v69;
  ++*(v69 + 44);
  sub_100048718(a1, v52, 0);
  if (!v51)
  {
LABEL_52:
    ++*(a1 + 176);
    goto LABEL_16;
  }

  v53 = v16 + *(a1 + 76);
  while (1)
  {
    v54 = sub_100048CCC(a1, v53, &v69, a5, a6, &v68, 0, 0);
    if (v54)
    {
      break;
    }

    v55 = *(a1 + 76);
    if (v51 >= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = v51;
    }

    memcpy((*(v22 + 40) + v50), *(v69 + 56), v56);
    v57 = v69;
    ++*(v69 + 44);
    v58 = *(a1 + 76);
    sub_100048718(a1, v57, 0);
    if ((v68 & 1) == 0)
    {
      *a7 = 0;
    }

    v50 += v56;
    v53 += v58;
    v51 -= v56;
    if (!v51)
    {
      goto LABEL_52;
    }
  }

  v20 = v54;
  free(*(v22 + 40));
  *(v22 + 40) = 0;
  if (!v50)
  {
    v61 = v53 - *(a1 + 76);
    v62 = sub_100048CCC(a1, v61, &v69, a5, a6, a7, 0, 0);
    if (v62)
    {
      return v62;
    }

    else
    {
      do
      {
        v63 = v69;
        --*(v69 + 44);
        sub_100048718(a1, v63, 0);
        v20 = sub_100048CCC(a1, v61, &v69, a5, a6, a7, 0, 0);
      }

      while (!v20);
    }
  }

  return v20;
}

uint64_t sub_100048CCC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6, int a7, uint64_t a8)
{
  result = 22;
  if (!a3 || !a6)
  {
    return result;
  }

  v10 = a7;
  v13 = a2 % *(a1 + 72);
  *a6 = 0;
  *a3 = 0;
  v14 = *(a1 + 64);
  v15 = *(v14 + 8 * v13);
  if (v15)
  {
    v16 = *(v14 + 8 * v13);
    while (v16[6] != a2)
    {
      v16 = v16[2];
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    if (v15 != v16)
    {
      v18 = v16[2];
      v19 = v16[3];
      if (v18)
      {
        *(v18 + 24) = v19;
      }

      *(v19 + 16) = v18;
    }

    if (v16[7] && !v16[14])
    {
      *a6 = 1;
    }
  }

  else
  {
LABEL_7:
    if (a7)
    {
      ++*(a1 + 160);
      return 2;
    }

    v17 = sub_100049A4C(a2, a4, a8, a5);
    if (!v17)
    {
      return 12;
    }

    v16 = v17;
    v14 = *(a1 + 64);
  }

  if (*(v14 + 8 * v13) != v16)
  {
    v16[3] = 0;
    v20 = *(v14 + 8 * v13);
    v16[2] = v20;
    if (v20)
    {
      *(v20 + 24) = v16;
    }

    *(v14 + 8 * v13) = v16;
  }

  if (v10)
  {
    goto LABEL_26;
  }

  if (v16[7])
  {
    if (v16[14])
    {
      sub_100048608(a1, a2, 0);
    }

    goto LABEL_26;
  }

  v21 = sub_100049AC0(a1);
  v16[7] = v21;
  if (!v21)
  {
    return 12;
  }

  v22 = *(a1 + 48);
  if (a2 % v22 || *(a1 + 76) % v22)
  {
    return 22;
  }

  if (*(a1 + 56) - 1 < a2 / v22)
  {
    return 6;
  }

  result = (*(*(a1 + 40) + 40))(*(a1 + 32));
  if (!result)
  {
    ++*(a1 + 168);
LABEL_26:
    result = 0;
    *a3 = v16;
  }

  return result;
}

uint64_t sub_100048EBC(_DWORD *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a5;
  v16 = a1[19];
  if ((a8 & 4) != 0 && v16 != a1[12])
  {
    return 45;
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a6;
  v28 = -86;
  v17 = a1[26];
  if (v17)
  {
    v32 = v17 | a6;
  }

  else if ((a6 & 1) == 0)
  {
    if (a1[22])
    {
      result = sub_100048548(a1);
      if (result)
      {
        return result;
      }
    }
  }

  v18 = a3 / v16 * v16;
  result = sub_100048CCC(a1, v18, &v33, a7, a8, &v28, 0, a9);
  if (result)
  {
    return result;
  }

  v20 = a3 - v18;
  v21 = a1[19];
  if (a3 - v18 + a4 <= v21)
  {
    result = sub_100049090(a1, &v29, v33, v11, a7);
    if (result)
    {
      return result;
    }

    goto LABEL_22;
  }

  v22 = v21 - v20;
  v31 = v21 - v20;
  result = sub_100049090(a1, &v29, v33, v11, a7);
  if (result)
  {
    return result;
  }

  v23 = a4 - v22;
  if (a4 == v22)
  {
LABEL_22:
    result = 0;
    ++a1[41];
    return result;
  }

  v24 = a1[19];
  v25 = v18 + v24;
  while (1)
  {
    v26 = v23 >= v24 ? v24 : v23;
    sub_100048CCC(a1, v25, &v33, a7, a8, &v28, 0, 0);
    v27 = *(v33 + 48);
    v31 = v26;
    v29 = a2 + v22;
    v30 = v27;
    result = sub_100049090(a1, &v29, v33, v11, a7);
    if (result)
    {
      return result;
    }

    v22 += v26;
    v24 = a1[19];
    v25 += v24;
    v23 -= v26;
    if (!v23)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_100049090(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a2 + 8) % *(a1 + 76);
  if (*(a1 + 104))
  {
    v11 = *(a2 + 16);
    v12 = *(a3 + 64);
    if (v12)
    {
      v13 = *(a3 + 80);
      if (v13)
      {
        v14 = *(a3 + 72);
        if (v13 != v11 || v14 != v10)
        {
          v15 = v14 + v13;
          memcpy(v12, *(a3 + 56), v14);
          memcpy((*(a3 + 64) + v15), (*(a3 + 56) + v15), *(a1 + 76) - v15);
          *(a3 + 72) = 0;
          *(a3 + 80) = 0;
        }
      }
    }

    else
    {
      v16 = sub_100049AC0(a1);
      *(a3 + 64) = v16;
      if (!v16)
      {
        return 12;
      }

      memcpy(v16 + v10, (*(a3 + 56) + v10), v11);
      *(a3 + 72) = v10;
      v17 = *(a3 + 40);
      *(a3 + 80) = v11;
      *(a3 + 84) = v17;
      *(a3 + 32) = *(a1 + 96);
      *(a1 + 96) = a3;
      ++*(a1 + 92);
    }
  }

  memcpy((*(a3 + 56) + v10), *a2, *(a2 + 16));
  v18 = *(a2 + 8);
  v19 = *(a1 + 76);
  v20 = *(a1 + 48);
  v21 = (v18 % v19) / v20;
  LODWORD(v19) = (v18 + *(a2 + 16) - 1) % v19;
  v22 = a3 + 88;
  v23 = v21 >> 3;
  v24 = v19 / v20;
  v25 = 255 << (v21 & 7);
  if (v21 >> 3 == v24 >> 3)
  {
    v26 = (0xFFu >> (~v24 & 7)) & v25;
  }

  else
  {
    *(v22 + v23) |= v25;
    if (v23 + 1 < v24 >> 3)
    {
      memset((a3 + v23 + 89), 255, ((v24 >> 3) - v23 - 2) + 1);
    }

    v26 = 0xFFu >> (~v24 & 7);
    v23 = v24 >> 3;
  }

  *(v22 + v23) |= v26;
  v27 = *(a2 + 20) & 3;
  if (v27)
  {
    v28 = *(a3 + 40);
    if ((v28 & 1) == 0)
    {
      ++*(a1 + 84);
    }

    *(a3 + 40) = v28 | v27;
    goto LABEL_18;
  }

  result = sub_100049854(a1, a3, a5);
  if (!result)
  {
LABEL_18:
    sub_100048718(a1, a3, a4);
    return 0;
  }

  return result;
}

uint64_t sub_1000492BC(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 37;
  }

  result = 0;
  *(a1 + 104) = 1;
  ++*(a1 + 88);
  return result;
}

uint64_t sub_1000492EC(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    return 37;
  }

  v1 = *(a1 + 96);
  if (v1)
  {
    v2 = *(a1 + 128);
    v3 = *(a1 + 120);
    do
    {
      v4 = *(v1 + 64);
      *v4 = v3;
      *(a1 + 120) = v4;
      ++v2;
      *(v1 + 64) = 0;
      *(v1 + 84) = 0;
      v1 = *(v1 + 32);
      v3 = v4;
    }

    while (v1);
    *(a1 + 128) = v2;
  }

  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  v5 = *(a1 + 80);
  v6 = v5 - *(a1 + 84);
  v7 = v5 >> 2;
  v8 = v6 >= 0x101 && v6 >= v7;
  if (v8 && *(a1 + 88) < 0x400u)
  {
    return 0;
  }

  result = sub_100048548(a1);
  if (!result)
  {
    return 84;
  }

  return result;
}

uint64_t sub_10004938C(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    return 22;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = -1;
    while (1)
    {
      v4 = *(v2 + 64);
      if (!v4)
      {
        return 14;
      }

      if (++v3 >= *(a1 + 92))
      {
        return 14;
      }

      v5 = *(v2 + 80);
      v6 = *(v2 + 56);
      if (v5)
      {
        memcpy(v6 + *(v2 + 72), (v4 + *(v2 + 72)), v5);
        v6 = *(v2 + 64);
      }

      else
      {
        *(v2 + 56) = v4;
      }

      *v6 = *(a1 + 120);
      *(a1 + 120) = v6;
      ++*(a1 + 128);
      *(v2 + 64) = 0;
      v7 = *(v2 + 84);
      *(v2 + 40) = v7;
      *(v2 + 84) = 0;
      if ((v7 & 1) == 0)
      {
        --*(a1 + 84);
      }

      v2 = *(v2 + 32);
      if (!v2)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    result = 0;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    --*(a1 + 88);
  }

  return result;
}

double sub_100049474(uint64_t a1, uint64_t *a2, int a3)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v6 = a2[3];
  v7 = v6 / *(a1 + 76) * *(a1 + 76);
  v19 = -86;
  if (!sub_100048CCC(a1, v7, &v20, 0, 0, &v19, 0, 0))
  {
    if ((a2[2] & 0x80000000) != 0)
    {
      v10 = *(a2 + 8) + v6 - v7 - *(a1 + 76);
      v11 = v20;
      if ((*(v20 + 40) & 2) == 0)
      {
        --*(v20 + 44);
      }

      sub_100048718(a1, v11, a3);
      if (v10)
      {
        v12 = v7 + *(a1 + 76);
        do
        {
          sub_100048CCC(a1, v12, &v20, 0, 0, &v19, 0, 0);
          v13 = *(a1 + 76);
          if (v10 >= v13)
          {
            v14 = v10 - v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v20;
          if ((*(v20 + 40) & 2) == 0)
          {
            --*(v20 + 44);
          }

          sub_100048718(a1, v15, a3);
          v12 += *(a1 + 76);
          v16 = v10 > v13;
          v10 = v14;
        }

        while (v16);
      }

      free(a2[5]);
    }

    else
    {
      v9 = v20;
      if ((*(v20 + 40) & 2) == 0)
      {
        --*(v20 + 44);
      }

      sub_100048718(a1, v9, a3);
    }

    v17 = *a2;
    v18 = a2[1];
    if (*a2)
    {
      *(v17 + 8) = v18;
    }

    if (v18)
    {
      *v18 = v17;
    }

    if (*(a1 + 144) == a2)
    {
      *(a1 + 144) = *a2;
    }

    result = 0.0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    *a2 = *(a1 + 152);
    *(a1 + 152) = a2;
  }

  return result;
}

uint64_t sub_100049628(uint64_t a1, _DWORD *a2)
{
  if (a2[11])
  {
    return 16;
  }

  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (v4)
  {
    *(v4 + 24) = v5;
  }

  if (v5)
  {
    v6 = (v5 + 16);
  }

  else
  {
    v6 = (*(a1 + 64) + 8 * (*(a2 + 6) % *(a1 + 72)));
  }

  *v6 = v4;
  if (!*(a2 + 7) || (result = sub_1000496C8(a1, a2), !result))
  {
    *(a2 + 14) = 0;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    free(a2);
    return 0;
  }

  return result;
}

uint64_t sub_1000496C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    v5 = a1 + 184;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) != 0 || *(a2 + 64))
  {
    if (*(a1 + 104))
    {
      return 16;
    }

    if (*(a1 + 88))
    {
      result = sub_100048548(a1);
      if (result)
      {
        return result;
      }

      v4 = *(a2 + 40);
    }

    else
    {
      result = sub_100049854(a1, a2, v5);
      if (result)
      {
        return result;
      }

      v4 = *(a2 + 40) & 0xFFFFFFFE;
      *(a2 + 40) = v4;
      --*(a1 + 84);
    }
  }

  result = 0;
  if ((v4 & 2) == 0)
  {
    v7 = *(a2 + 56);
    *v7 = *(a1 + 120);
    *(a1 + 120) = v7;
    ++*(a1 + 128);
  }

  return result;
}

uint64_t sub_100049780(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = a2;
  v4 = *(a1 + 76);
  if (a2)
  {
    v5 = *(a1 + 76);
  }

  else
  {
    v5 = a3 % v4 + a4;
  }

  if (!v5)
  {
    return 0;
  }

  v10 = -86;
  v7 = a3 - a3 % v4;
  while (!a2)
  {
    sub_100048CCC(a1, v7, &v11, 0, 0, &v10, 1, 0);
    a2 = v11;
    if (v11)
    {
      break;
    }

LABEL_13:
    a2 = 0;
    v11 = 0;
    v9 = *(a1 + 76);
    v7 += v9;
    v5 -= v9;
    if (!v5)
    {
      return 0;
    }
  }

  if (!*(a2 + 44))
  {
    if (*(a2 + 56))
    {
      result = sub_1000496C8(a1, a2);
      if (result)
      {
        return result;
      }

      a2 = v11;
    }

    *(a2 + 56) = 0;
    goto LABEL_13;
  }

  return 16;
}

uint64_t sub_100049854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v4 = *(a1 + 48);
  if (v3 % v4)
  {
    return 22;
  }

  v6 = *(a1 + 76);
  v7 = v6 / v4;
  if (v6 % v4)
  {
    return 22;
  }

  result = 0;
  if (v7 >= 1)
  {
    v9 = (v7 - 1) >> 3;
    if ((v9 & 0x80000000) == 0)
    {
      v12 = *(a2 + 56);
      v13 = (a2 + 88);
      do
      {
        v14 = 0;
        v15 = (v9 + 1);
        v16 = v13;
        while (1)
        {
          v18 = *v16++;
          v17 = v18;
          if (v18)
          {
            break;
          }

          v14 += 8;
          if (!--v15)
          {
            return 0;
          }
        }

        if ((v17 & 1) == 0)
        {
          do
          {
            v19 = v17;
            ++v14;
            v17 >>= 1;
          }

          while ((v19 & 2) == 0);
        }

        result = 0;
        if (v14 >= v7 || v14 == -1)
        {
          break;
        }

        LODWORD(v20) = 0;
        do
        {
          v20 = (v20 + 1);
        }

        while (((v13[(v20 + v14) >> 3] >> ((v20 + v14) & 7)) & 1) != 0);
        v21 = v14 >> 3;
        v22 = v14 + v20 - 1;
        v23 = v22 >> 3;
        v24 = 0xFFu >> (8 - (v14 & 7));
        if (v22 >> 3 == v14 >> 3)
        {
          v25 = (510 << (v22 & 7)) | v24;
          v23 = v14 >> 3;
        }

        else
        {
          v26 = &v13[v21];
          *v26 &= v24;
          if (v21 + 1 < v23)
          {
            bzero(v26 + 1, (v23 - v21 - 2) + 1);
          }

          v25 = 510 << (v22 & 7);
        }

        v13[v23] &= v25;
        result = (*(*(a1 + 40) + 72))(*(a1 + 32), (v3 + (*(a1 + 48) * v14)) / *(a1 + 48), v20, v12 + (*(a1 + 48) * v14), a3, *(a2 + 96), *(a2 + 104), 0);
        if (result)
        {
          break;
        }

        ++*(a1 + 172);
        v7 = *(a1 + 76) / *(a1 + 48);
        if (v7 < 1)
        {
          break;
        }

        v9 = (v7 - 1) >> 3;
      }

      while ((v9 & 0x80000000) == 0);
    }
  }

  return result;
}

void *sub_100049A4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = malloc_type_calloc(0x78uLL, 1uLL, 0x10A0040F6E85490uLL);
  if (result)
  {
    result[6] = a1;
    if (a2)
    {
      *(result + 10) |= 4u;
    }

    result[12] = a3;
    *(result + 26) = a4 & 0xFFFEFFFF;
  }

  return result;
}

void *sub_100049AC0(uint64_t a1)
{
  result = *(a1 + 120);
  if (result && *(a1 + 128))
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 8);
  if (v4 == a1)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v4;
    v5 = v4[1];
    *(v6 + 8) = v5;
    *v5 = v6;
    if ((v4[5] & 1) == 0 && !*(v4 + 11))
    {
      break;
    }

    v7 = *(a1 + 16);
    *v4 = v7;
    v4[1] = a1 + 16;
    *(v7 + 8) = v4;
    *v4[1] = v4;
    v4 = *(a1 + 8);
    if (v4 == a1)
    {
      return 0;
    }
  }

  sub_100049628(a1, v4);
  result = *(a1 + 120);
  if (result)
  {
LABEL_3:
    v3 = *(a1 + 128);
    if (v3)
    {
      *(a1 + 120) = *result;
      *(a1 + 128) = v3 - 1;
      return result;
    }

    return 0;
  }

  return result;
}

time_t sub_100049B70()
{
  result = time(0);
  qword_10009AF58 = result;
  qword_10009AF60 = &byte_10005C3F3;
  dword_10009AF68 = 1;
  dword_10009AF6C = -1;
  dword_10009AF70 = 0;
  dword_10009AF74 = 1;
  return result;
}

BOOL sub_100049C04()
{
  v0 = dword_10009AF74;
  if (dword_10009AF74 <= 4)
  {
    ++dword_10009AF74;
  }

  return v0 < 5;
}

char *sub_100049C40(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = -1;
  }

  if ((v3 + 11) >= 0xA)
  {
    v8 = dword_10009B07C;
    v9 = dword_10009B07C;
    v10 = dword_10009AF6C;
    if (dword_10009B07C < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = 0;
      while (dword_10009B080[v11] != dword_10009AF6C)
      {
        if (dword_10009B07C == ++v11)
        {
          LODWORD(v11) = dword_10009B07C;
          goto LABEL_15;
        }
      }

      ++dword_10009B094[v11];
    }

LABEL_15:
    if (v11 == v9 && v8 <= 4 && v10 >= 1)
    {
      dword_10009B080[v9] = v10;
      dword_10009B094[v9] = 1;
      dword_10009B07C = v9 + 1;
    }

    free(qword_10009AF78);
    result = strdup(qword_10009AF60);
    qword_10009AF78 = result;
    dword_10009B0A8 = dword_10009AF68;
    dword_10009AF6C = v2;
    dword_10009AF70 = v3;
    v7 = &dword_10009AF88;
    v4 = dword_10009AF88;
    goto LABEL_20;
  }

  v4 = dword_10009AF84;
  if (dword_10009AF84 <= 20)
  {
    v5 = (-2 - v3);
    v6 = dword_10009AF8C[v5];
    if (v6 <= 4)
    {
      *(&unk_10009AFB4 + 5 * v5 + v6) = result;
      dword_10009AF8C[v5] = v6 + 1;
      v7 = &dword_10009AF84;
LABEL_20:
      *v7 = v4 + 1;
    }
  }

  return result;
}

uint64_t sub_100049DB4(FILE *a1, int a2)
{
  v3 = &byte_10005C3F3;
  v4 = "n";
  if (a2 != 1)
  {
    v4 = &byte_10005C3F3;
  }

  if (a2 == 2)
  {
    v4 = "y";
  }

  if (qword_10009AF78)
  {
    v3 = qword_10009AF78;
  }

  fprintf(a1, "dev=%s vers=%s default_ans=%s result=%d ", v3, "2632.40.15.0.2", v4, dword_10009AF70);
  if (dword_10009AF84)
  {
    v5 = 0;
    v6 = &dword_10009AFB8;
    do
    {
      v7 = dword_10009AF8C[v5];
      if (v7 >= 1)
      {
        fprintf(a1, "wr=%d wl=%d", -2 - v5, *(&unk_10009AFB4 + 5 * v5));
        if (v7 != 1)
        {
          v8 = v7 - 1;
          v9 = v6;
          do
          {
            v10 = *v9++;
            fprintf(a1, ":%d", v10);
            --v8;
          }

          while (v8);
        }

        fputc(32, a1);
      }

      ++v5;
      v6 += 5;
    }

    while (v5 != 10);
  }

  if (dword_10009B07C >= 1)
  {
    v11 = 0;
    do
    {
      fprintf(a1, "pl=%d:%d ", dword_10009B080[v11], dword_10009B094[v11]);
      ++v11;
    }

    while (v11 < dword_10009B07C);
  }

  v12 = dword_10009B0A8;
  v13 = dword_10009AF6C;
  v14 = dword_10009AF80;
  v15 = time(0);
  return fprintf(a1, "fp=%d fl=%d repairs=%d time=%ld iter=%d\n", v12, v13, v14, (v15 - qword_10009AF58 + 59) / 60, dword_10009AF74);
}

uint64_t sub_100049FC8(uint64_t a1, int a2, uint64_t *a3, int a4, void *a5)
{
  if (a2 == 8 && a4 == 16)
  {
    v6 = *a3;
    v5 = a3[1];
    v7 = *(*(*a5 + 8) + 40);
    if (v7 - v5 >= *a3 && v7 > v5 && v6 >= 1 && v7 > v6)
    {
      v11 = 0;
      a5[1] += v5;
    }

    else
    {
      sub_10004565C("invalid range: 0x%llx+%llu\n", *a3, v5);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    sub_10004565C("unexpected key (%u) / val (%u) size in extent list tree\n", a2, a4);
    v11 = 92;
    sub_100049C40(0x218, 92);
  }

  return v11;
}

uint64_t sub_10004A074(uint64_t a1, int a2, void *a3, int a4, void *a5)
{
  if (a2 == 8 && a4 == 16)
  {
    v5 = a5[1];
    v6 = a3[1];
    v7 = *a5 - *a3;
    if (v7 > v6 - v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (v7 < v6 && v6 >= v5)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (*a5 >= *a3)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004565C("unexpected key (%u) / val (%u) size in extent list tree\n", a2, a4);
    v11 = 92;
    sub_100049C40(0x219, 92);
  }

  return v11;
}

uint64_t sub_10004A0FC(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 32);
  v4 = *(a1 + 8);
  v5 = *(v4 + 36);
  if (v3 != v5)
  {
    sub_10004565C("spaceman block size %u doesn't match NX superblock block size %u\n", *(v2 + 32), v5);
    v22 = 92;
    v23 = 131;
    goto LABEL_39;
  }

  v6 = *(v2 + 48);
  v7 = *(v4 + 40);
  if (v6 != v7)
  {
    sub_10004565C("spaceman block count %llu doesn't match NX superblock block count %llu\n", *(v2 + 48), v7);
    v22 = 92;
    v23 = 132;
    goto LABEL_39;
  }

  v8 = *(v2 + 36);
  if (v8 != 8 * v3)
  {
    sub_10004565C("spaceman blocks per chunk %u is inconsistent with block size %u\n", *(v2 + 36), v3);
    v22 = 92;
    v23 = 133;
    goto LABEL_39;
  }

  if (*(v2 + 40) != (v3 - 40) >> 5)
  {
    sub_10004565C("spaceman chunks per cib %u is inconsistent with block size %u\n", *(v2 + 40), v3);
    v22 = 92;
    v23 = 138;
    goto LABEL_39;
  }

  if (*(v2 + 44) != (v3 - 40) >> 3)
  {
    sub_10004565C("spaceman cibs per cab %u is inconsistent with block size %u\n", *(v2 + 44), v3);
    v22 = 92;
    v23 = 139;
    goto LABEL_39;
  }

  v11 = *(a1 + 96);
  if (*(v2 + 96) != 0 || *(v2 + 112) || *(v2 + 116) || *(v2 + 120))
  {
    sub_10004565C("spaceman tier2 fields should be empty but they aren't\n");
    sub_100049C40(0x5C0, -6);
    v6 = *(v2 + 48);
    v8 = *(v2 + 36);
  }

  v12 = *(v2 + 56);
  if (v6 % v8)
  {
    v13 = v6 / v8 + 1;
  }

  else
  {
    v13 = v6 / v8;
  }

  if (v12 != v13)
  {
    sub_10004565C("spaceman chunk count %llu is inconsistent with block count %llu and blocks per chunk %u\n", v12, v6, v8);
    v22 = 92;
    v23 = 134;
    goto LABEL_39;
  }

  v14 = *(v2 + 64);
  v15 = *(v2 + 40);
  v16 = v12 / v15;
  if (v12 % v15)
  {
    ++v16;
  }

  if (v16 != v14)
  {
    sub_10004565C("spaceman cib count %u is inconsistent with chunk count %llu and chunks per cib %u\n", v14, *(v2 + 56), v15);
    v22 = 92;
    v23 = 135;
    goto LABEL_39;
  }

  v17 = *(v2 + 44);
  v18 = v14 / v17;
  if (v14 % v17)
  {
    ++v18;
  }

  if (v18 == 1)
  {
    v18 = 0;
  }

  v19 = *(v2 + 68);
  if (v19 != v18)
  {
    sub_10004565C("spaceman cab count %u is inconsistent with cib count %u and cibs per cab %u\n", v19, *(v2 + 64), v17);
    v22 = 92;
    v23 = 140;
    goto LABEL_39;
  }

  if (*(v2 + 72) > v6)
  {
    sub_10004565C("spaceman free count is too large: %llu > %llu\n", *(v2 + 72), v6);
    sub_100049C40(0x93, -8);
    v12 = *(v2 + 56);
    v14 = *(v2 + 64);
    v18 = *(v2 + 68);
  }

  v20 = v12 + v14 + v18;
  v21 = *(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v21 != 3 * v20)
  {
    sub_10004565C("spaceman ip block count is bad: %lld\n", *(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 92;
    v23 = 142;
    goto LABEL_39;
  }

  if ((*(v2 + 32) + 8 * ((v21 + 63) >> 6) - 1) / *(v2 + 32) != *(v2 + 160))
  {
    sub_10004565C("spaceman ip bm block count is bad: %d\n", *(v2 + 160));
    v22 = 92;
    v23 = 143;
    goto LABEL_39;
  }

  v92 = a1;
  v93 = 0;
  if (!sub_10004AE10(a1, &v92))
  {
    if (v93 != (*(v2 + 164) & 0x7FFFFFFF))
    {
      sub_10004565C("spaceman IP bitmap blocks field is %u, but sum of ranges is %llu\n", *(v2 + 164) & 0x7FFFFFFF, v93);
      v22 = 92;
      v23 = 576;
      goto LABEL_39;
    }

    v93 = 0;
    if (sub_10004AE78(a1, sub_100049FC8, &v92))
    {
      sub_10004565C("spaceman IP range is invalid: 0x%llx+0x%llx\n", *(v2 + 176), *(v2 + 152));
      v22 = 92;
      v23 = 145;
      goto LABEL_39;
    }

    v86 = v11;
    v25 = *(v2 + 152);
    if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != v93)
    {
      sub_10004565C("spaceman IP blocks field is %llu, but sum of ranges is %llu\n", v25 & 0x7FFFFFFFFFFFFFFFLL, v93);
      v22 = 92;
      v23 = 577;
      goto LABEL_39;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = *(v2 + 164);
      if ((v26 & 0x80000000) == 0)
      {
        v27 = *(v2 + 168);
        v28 = *(v2 + 176);
        v29 = v28 + v25;
        if (v27 < v29)
        {
          v30 = v27 + v26;
          if (v28 < v30)
          {
            sub_10004565C("spaceman ip bm range (%llu, %llu) overlaps with spaceman ip range (%llu, %llu)\n", v27, v30, *(v2 + 176), v29);
            v22 = 92;
            v23 = 146;
            goto LABEL_39;
          }
        }
      }
    }

    v31 = *(v2 + 184);
    v32 = *(*(a1 + 8) + 40);
    if (v31 > v32)
    {
      sub_10004565C("spaceman fs_reserve_block_count %llu is greater than nx_block_count %llu\n", *(v2 + 184), v32);
      sub_100049C40(0x2F4, 92);
      v31 = *(v2 + 184);
    }

    if (*(v2 + 192) > v31)
    {
      sub_100045744("spaceman fs_reserve_alloc_count %llu is greater than sm_fs_reserve_block_count %llu\n", *(v2 + 192), v31);
      sub_100049C40(0x2F5, -7);
    }

    if ((*(v2 + 144) & 1) == 0)
    {
      v33 = 336;
LABEL_105:
      LODWORD(__base) = 0;
      DWORD1(__base) = v33;
      v53 = *(v2 + 160);
      v54 = *(v2 + 164);
      DWORD2(__base) = *(v2 + 324);
      HIDWORD(__base) = 8 * v53;
      LODWORD(v95) = *(v2 + 328);
      DWORD1(v95) = 2 * v53;
      DWORD2(v95) = *(v2 + 332);
      HIDWORD(v95) = 2 * v54;
      LODWORD(v96) = *(v2 + 80);
      v55 = *(v2 + 68);
      if (!v55)
      {
        v55 = *(v2 + 64);
      }

      DWORD1(v96) = 8 * v55;
      qsort(&__base, 5uLL, 8uLL, sub_10004AEE0);
      for (i = 0; i != 40; i += 8)
      {
        v58 = *(&__base + i);
        v59 = *(&__base + i + 4);
        if (v86 < v58 || v59 > v86 - v58)
        {
          sub_10004565C("spaceman struct range %u+%u lies outside the struct itself (size %u)\n", v58, *(&__base + i + 4), v86);
          v62 = 92;
          v63 = 578;
          goto LABEL_124;
        }

        if (i == 32)
        {
          break;
        }

        if (v59 > *(&__base + i + 8) - v58)
        {
          sub_10004565C("spaceman struct ranges %u+%u and %u+%u overlap\n", v58, v59, *(&__base + i + 8), *(&__base + i + 12));
          v62 = 92;
          v63 = 579;
          goto LABEL_124;
        }
      }

      v61 = *(v2 + 322);
      if (*(v2 + 320) == 0xFFFF)
      {
        if (v61 == 0xFFFF)
        {
          goto LABEL_122;
        }

LABEL_121:
        sub_10004565C("spaceman sm_ip_bm_free_head %u and sm_ip_bm_free_tail %u do not point to a valid list\n", *(v2 + 320), v61);
        v62 = 92;
        v63 = 760;
        goto LABEL_124;
      }

      if (v61 == 0xFFFF)
      {
        v61 = 0xFFFF;
        goto LABEL_121;
      }

LABEL_122:
      v64 = *(v2 + 164);
      if ((v64 & 0x7FFF0000) != 0)
      {
        sub_10004565C("spaceman sm_ip_bm_block_count %u is too large\n", *(v2 + 164));
        v62 = 92;
        v63 = 778;
LABEL_124:
        sub_100049C40(v63, 92);
        return v62;
      }

      v90 = &v86;
      v65 = v2 + *(v2 + 332);
      v66 = 2 * v64;
      __chkstk_darwin(v56);
      v68 = &v86 - v67;
      if (v69)
      {
        memset(&v86 - v67, 170, v66);
      }

      else
      {
        v66 = 0;
      }

      bzero(v68, v66);
      v70 = *(v2 + 320);
      do
      {
        if (v70 == 0xFFFF)
        {
          goto LABEL_135;
        }

        v71 = v70;
        if ((*(v2 + 164) & 0x7FFFFFFFu) <= v70)
        {
          sub_10004565C("spaceman sm_ip_bm_free_next index %u does not lie in ip bm range\n", v70);
          v62 = 92;
          v85 = 764;
          goto LABEL_164;
        }

        if (*&v68[2 * v70] == 2)
        {
          sub_10004565C("spaceman ip bm list has a loop\n");
          v62 = 92;
          v85 = 765;
          goto LABEL_164;
        }

        *&v68[2 * v70] = 2;
        v70 = *(v65 + 2 * v70);
      }

      while (v70 != 0xFFFF);
      if (*(v2 + 322) != v71)
      {
        sub_10004565C("spaceman sm_ip_bm_free_tail %u does not point to the last index on the free list %u\n", *(v2 + 322), v71);
        v62 = 92;
        v85 = 761;
LABEL_164:
        sub_100049C40(v85, 92);
        return v62;
      }

LABEL_135:
      v72 = *(v2 + 160);
      if (v72)
      {
        v73 = 0;
        v74 = v2 + *(v2 + 324);
        v75 = v2 + *(v2 + 328);
        v62 = 92;
        while (1)
        {
          v76 = *(v2 + 16);
          if (*(v74 + 8 * v73) > v76)
          {
            sub_10004565C("spaceman ip bitmap block xid is invalid: %llu > %llu\n", *(v74 + 8 * v73), v76);
            v62 = 92;
            v85 = 149;
            goto LABEL_164;
          }

          v77 = *(v75 + 2 * v73);
          v78 = *(v2 + 164) & 0x7FFFFFFF;
          if (v78 <= v77)
          {
            sub_10004565C("spaceman ip bitmap block address is invalid: %hu > %u\n", *(v75 + 2 * v73), v78);
            v62 = 92;
            v85 = 150;
            goto LABEL_164;
          }

          v79 = *&v68[2 * *(v75 + 2 * v73)];
          if (v79 == 1)
          {
            break;
          }

          if (v79 == 2)
          {
            sub_10004565C("spaceman ip bitmap %u at index %u was on the free list\n", *(v75 + 2 * v73), v73);
            v62 = 92;
            v85 = 770;
            goto LABEL_164;
          }

          if (*(v65 + 2 * v77) != -1)
          {
            sub_10004565C("spaceman ip bitmap %u at index %u is not invalidated on the free list\n", *(v75 + 2 * v73), v73);
            sub_100049C40(0x30B, 92);
            if (!sub_10004758C(qword_10009BA58, "Invalidate spaceman ip bm free list at index at index %u? ", *(v75 + 2 * v73)))
            {
              return v62;
            }

            *(v65 + 2 * *(v75 + 2 * v73)) = -1;
            *a2 = 1;
            v72 = *(v2 + 160);
            v77 = *(v75 + 2 * v73);
          }

          *&v68[2 * v77] = 1;
          if (++v73 >= v72)
          {
            goto LABEL_145;
          }
        }

        sub_10004565C("spaceman ip bitmap %u at index %u was referenced by a previous entry in sm_ip_bitmap \n", *(v75 + 2 * v73), v73);
        v62 = 92;
        v85 = 780;
        goto LABEL_164;
      }

LABEL_145:
      v80 = *(v2 + 164) & 0x7FFFFFFF;
      if (v80)
      {
        v81 = 0;
        while (*&v68[2 * v81])
        {
          if (v80 == ++v81)
          {
            goto LABEL_149;
          }
        }

        sub_10004565C("spaceman ip bitmap block at index [%u] is neither on the sm_ip_bitmap[] nor on the free list\n", v81);
        v62 = 92;
        v85 = 773;
        goto LABEL_164;
      }

LABEL_149:
      v82 = *(v2 + 80);
      v91 = 0;
      v83 = *(v2 + 68);
      if (v83)
      {
        v84 = sub_10004AEF8(a1, v2 + v82, v83, &v91);
        if (v84)
        {
          return v84;
        }
      }

      else
      {
        v84 = sub_10004B0E0(a1, v2 + v82, 0, *(v2 + 64), &v91);
        if (v84)
        {
          return v84;
        }
      }

      if (v91 != *(v2 + 72))
      {
        sub_100045744("spaceman free count %llu does not match sum of free counts %llu\n", *(v2 + 72), v91);
        sub_100049C40(0x24C, -7);
      }

      return 0;
    }

    v34 = *(v2 + 336);
    if (v34 == 1)
    {
      if (*(v2 + 340) != 2520)
      {
        sub_10004565C("unexpected spaceman struct size %u != %u\n", *(v2 + 340), 2520);
        v22 = 92;
        v23 = 603;
        goto LABEL_39;
      }
    }

    else
    {
      if (!v34)
      {
        sub_10004565C("spaceman struct is versioned but version is 0\n");
        v22 = 92;
        v23 = 602;
        goto LABEL_39;
      }

      sub_100045744("unknown spaceman struct version %u > %u\n", *(v2 + 336), 1);
    }

    v35 = 0;
    v87 = v2 + 344;
    v90 = (v2 + 608);
    v89 = -7;
    while (1)
    {
      v36 = (v87 + 136 * v35);
      __base = *v36;
      v99 = v36[5];
      v100 = v36[6];
      v101 = v36[7];
      v102 = *(v36 + 16);
      v95 = v36[1];
      v96 = v36[2];
      v97 = v36[3];
      v98 = v36[4];
      v37 = __base != 0;
      if (__base != 0)
      {
        v38 = *(&__base + 1) - __base;
        if (*(&__base + 1) < __base || (__base & 0x8000000000000000) != 0 || (v39 = *(v2 + 48), v39 <= __base) || v39 <= v38 || v39 - v38 < __base)
        {
          sub_100045744("spaceman datazone current boundaries (%llu -> %llu) is not a valid address range on disk\n", __base, *(&__base + 1));
          sub_100049C40(0x3BA, -7);
        }
      }

      v40 = 0;
      v41 = 0;
      do
      {
        v42 = *(&__base + v40 + 16);
        v43 = *(&v95 + v40 + 8);
        v44 = *(&__base + v40 + 16) != 0;
        if (*(&__base + v40 + 16) != 0)
        {
          if ((v45 = v43 - v42, v43 < v42) || (v42 & 0x8000000000000000) != 0 || ((v46 = *(v2 + 48), v46 > v42) ? (v47 = v46 > v45) : (v47 = 0), v47 ? (v48 = v46 - v45 >= v42) : (v48 = 0), !v48))
          {
            sub_100045744("spaceman datazone previous boundaries (%llu -> %llu) is not a valid address range on disk\n", *(&__base + v40 + 16), v43);
            sub_100049C40(0x3BB, -7);
          }
        }

        v41 |= v44;
        v40 += 16;
      }

      while (v40 != 112);
      v49 = v102;
      if (v102 > 4u)
      {
        break;
      }

      if (v102)
      {
        goto LABEL_89;
      }

      if (v37 || v41 & 1 | (WORD1(v102) != 0))
      {
        sub_100045744("spaceman datazone zone id is zero but other fields are initialized\n", v86);
        sub_100049C40(0x3BD, 92);
        v50 = 1;
        goto LABEL_90;
      }

      v50 = 1;
LABEL_92:
      v88 = v35;
      if (v35 <= 6)
      {
        v51 = v90;
        v52 = v89;
        do
        {
          if ((v50 & 1) == 0 && v49 == *v51)
          {
            sub_100045744("spaceman datazone duplicate zone id (%hu) for allocation zones at indices (%hu, %hu)\n", v49, v88, v52 + 8);
            sub_100049C40(0x3BF, -2);
          }

          v51 += 68;
          v48 = __CFADD__(v52++, 1);
        }

        while (!v48);
      }

      v35 = v88 + 1;
      ++v89;
      v90 += 68;
      if (v88 == 7)
      {
        v33 = 2520;
        goto LABEL_105;
      }
    }

    sub_100045744("spaceman datazone unknown zone id (%hu)\n", v102);
    sub_100049C40(0x3BC, -2);
LABEL_89:
    v50 = 0;
LABEL_90:
    if (WORD1(v102) >= 7u)
    {
      sub_100045744("spaceman datazone invalid previous boundary index (%hu)\n", WORD1(v102));
      sub_100049C40(0x3BE, -2);
    }

    goto LABEL_92;
  }

  sub_10004565C("spaceman IP bitmap range is invalid: 0x%llx+0x%x\n", *(v2 + 168), *(v2 + 164));
  v22 = 92;
  v23 = 144;
LABEL_39:
  sub_100049C40(v23, 92);
  return v22;
}

uint64_t sub_10004AE10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  v5 = *(v4 + 164);
  v6 = *(v4 + 168);
  if ((v5 & 0x80000000) != 0)
  {

    return sub_100031608(a1, v6, sub_100049FC8, a2);
  }

  else
  {
    v8[0] = *(v4 + 168);
    v8[1] = v5;
    return sub_100049FC8(a1, 8, v8, 16, a2);
  }
}

uint64_t sub_10004AE78(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void *, uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 152);
  v7 = *(v5 + 176);
  if (v6 < 0)
  {

    return sub_100031608(a1, v7, a2, a3);
  }

  else
  {
    v10 = 0;
    v9[0] = v7;
    v9[1] = v6;
    return a2(&v10, 8, v9, 16, a3);
  }
}

uint64_t sub_10004AEE0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_10004AEF8(uint64_t *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = a1[3];
  v26 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = v4[16];
  v10 = v4[17] - 1;
  v11 = a3;
  while (1)
  {
    v12 = *(a2 + 8 * v8);
    v27[0] = v12;
    v27[1] = 1;
    v13 = a1[3];
    v14 = *(v13 + 152);
    v15 = *(v13 + 176);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v22 = sub_100031608(a1, v15, sub_10004A074, v27);
      v12 = *(a2 + 8 * v8);
      if (v22 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (v12 < v15 || v12 - v15 >= v14)
    {
LABEL_9:
      sub_100045744("spaceman cab %u address 0x%llx is not in the internal pool\n", v8, v12);
      sub_100049C40(0x38C, -7);
      v12 = *(a2 + 8 * v8);
    }

    v17 = sub_100025548(a1, 0, 0x40000000, v12, 0, 0, 6, 0, &v26, 0, 1);
    if (v17)
    {
      v23 = v17;
      sub_10004565C("failed to read spaceman cab %u at address 0x%llx\n", v8, *(a2 + 8 * v8));
      return v23;
    }

    v18 = *(v26 + 8);
    if (v8 != v18)
    {
      sub_10004565C("spaceman cab out of order: %u, expected %u\n", *(v26 + 8), v8);
      v24 = 586;
LABEL_25:
      v23 = 92;
      sub_100049C40(v24, 92);
      goto LABEL_27;
    }

    v19 = v4[11];
    if (v18 == v10)
    {
      v20 = v9 - v19 * v10;
    }

    else
    {
      v20 = v4[11];
    }

    if (*(v26 + 9) != v20)
    {
      sub_10004565C("spaceman cab %u wrong number of cibs: %u, expected %u\n", v18, *(v26 + 9), v20);
      v24 = 587;
      goto LABEL_25;
    }

    v21 = sub_10004B0E0(a1, v26 + 40, v19 * v18, v20, a4);
    if (v21)
    {
      break;
    }

    free(v26);
    v26 = 0;
    if (v11 == ++v8)
    {
      return 0;
    }
  }

  v23 = v21;
LABEL_27:
  if (v26)
  {
    free(v26);
  }

  return v23;
}

uint64_t sub_10004B0E0(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, void *a5)
{
  v5 = a1[3];
  v64 = 0;
  if (!a4)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  v9 = 0;
  v10 = v5[16] - 1;
  v11 = v5[14];
  v57 = a4;
  v61 = a3;
  v54 = v5;
  v58 = v11;
  v59 = v10;
  while (1)
  {
    v12 = *(v7 + 8 * v9);
    v65 = v12;
    v66 = 1;
    v13 = a1[3];
    v14 = *(v13 + 152);
    v15 = *(v13 + 176);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v50 = sub_100031608(a1, v15, sub_10004A074, &v65);
      v12 = *(v7 + 8 * v9);
      if (v50 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (v12 < v15 || v12 - v15 >= v14)
    {
LABEL_9:
      sub_100045744("spaceman cib %u address 0x%llx is not in the internal pool\n", v9 + v6, v12);
      sub_100049C40(0x38B, -7);
      v12 = *(v7 + 8 * v9);
    }

    v17 = sub_100025548(a1, 0, 0x40000000, v12, 0, 0, 7, 0, &v64, 0, 1);
    if (v17)
    {
      v51 = v17;
      sub_10004565C("failed to read spaceman cib %u at address 0x%llx\n", v9 + v6, *(v7 + 8 * v9));
      return v51;
    }

    v18 = v64;
    if (*(v64 + 8) != v9 + v6)
    {
      break;
    }

    v19 = v5[10];
    if (v9 + v6 == v10)
    {
      v20 = v11 - v19 * v10;
    }

    else
    {
      v20 = v19;
    }

    if (*(v64 + 9) != v20)
    {
      sub_10004565C("spaceman cib %u wrong number of chunks: %u, expected %u\n", v9 + v6, *(v64 + 9), v20);
      v51 = 92;
      v52 = 585;
      goto LABEL_63;
    }

    if (v20)
    {
      v21 = a1[3];
      v22 = *(v21 + 48);
      v63 = *(v21 + 56) - 1;
      v23 = (v64 + 64);
      v24 = v19 * v61;
      v60 = v9;
      while (1)
      {
        v25 = *(v21 + 16);
        if (*(v23 - 3) > v25)
        {
          sub_10004565C("spaceman chunk %llu xid is invalid: %llu > %llu\n", v24, *(v23 - 3), v25);
          v51 = 92;
          v52 = 580;
          goto LABEL_63;
        }

        v26 = *v23;
        if (*v23)
        {
          v65 = *v23;
          v66 = 1;
          v27 = a1[3];
          v28 = *(v27 + 152);
          v29 = *(v27 + 176);
          if ((v28 & 0x8000000000000000) == 0)
          {
            v30 = __OFSUB__(v26, v29);
            v31 = v26 - v29;
            if (v31 < 0 != v30 || v31 >= v28)
            {
LABEL_27:
              sub_100045744("spaceman chunk %llu bitmap address 0x%llx is not in the internal pool\n", v24, v26);
              sub_100049C40(0x389, -7);
              goto LABEL_30;
            }

LABEL_29:
            sub_1000422DC(a1, v26, 1uLL, 0, 0x40000000, v26, 0, 8, 0, 8u);
            goto LABEL_30;
          }

          v33 = sub_100031608(a1, v29, sub_10004A074, &v65);
          v26 = *v23;
          if (v33 != -1)
          {
            goto LABEL_27;
          }

          if (v26)
          {
            goto LABEL_29;
          }
        }

LABEL_30:
        v34 = *(v21 + 36);
        v35 = v24 * v34;
        if (*(v23 - 2) != v24 * v34)
        {
          sub_10004565C("spaceman chunk %llu disk address out of order: 0x%llx, expected 0x%llx\n", v24, *(v23 - 2), v24 * v34);
          v51 = 92;
          v52 = 581;
          goto LABEL_63;
        }

        if (v63 == v24)
        {
          v36 = (v22 - v35);
        }

        else
        {
          v36 = v34;
        }

        if ((*(v23 - 1) & 0xFFFFF) != v36)
        {
          sub_10004565C("spaceman chunk %llu wrong number of blocks: %u, expected %u\n", v24, *(v23 - 1) & 0xFFFFF, v36);
          v51 = 92;
          v52 = 582;
          goto LABEL_63;
        }

        v37 = *(v23 - 1) & 0xFFFFF;
        if (v37 > v36)
        {
          sub_100045744("spaceman chunk %llu free count %u > block count %u\n", v24, *(v23 - 1) & 0xFFFFF, v36);
          sub_100049C40(0x247, -7);
          goto LABEL_50;
        }

        v38 = a1[1];
        v39 = *(v38 + 1248);
        if (!v39)
        {
          *a5 += v37;
          goto LABEL_50;
        }

        v40 = v22;
        v65 = 0xAAAAAAAAAAAAAAAALL;
        v41 = sub_10004F16C(v35, v36, *(v38 + 1240), v39, &v65);
        if (!v41)
        {
          v47 = *(v23 - 1) & 0xFFFFF;
          v48 = a5;
          v49 = *a5;
LABEL_48:
          *v48 = v49 + v47;
          goto LABEL_49;
        }

        v42 = v41;
        if (v41 < (*(v23 - 1) & 0xFFFFFu))
        {
          v43 = *v23;
          if (*v23)
          {
            v67 = 0xAAAAAAAAAAAAAAAALL;
            v44 = sub_100025548(a1, 0, 0x40000000, v43, 0, 0x20000000, 8, 0, &v67, 0, 0);
            if (v44)
            {
              v51 = v44;
              goto LABEL_64;
            }

            v45 = sub_1000085F0(v67, 0, 0, *(v23 - 1) & 0xFFFFF);
            v46 = v45;
            if ((*(v23 - 1) & 0xFFFFF) != v45)
            {
              sub_100045744("spaceman chunk %llu wrong free count: %u, expected %u\n", v24, *(v23 - 1) & 0xFFFFF, v45);
              sub_100049C40(0x388, -7);
            }

            *a5 = *a5 + v46 - sub_1000085F0(v67, 0, v65 - v35, v65 - v35 + v42);
            free(v67);
            goto LABEL_49;
          }

          v47 = *(v23 - 1) & 0xFFFFF;
          v48 = a5;
          v49 = *a5 - v41;
          goto LABEL_48;
        }

LABEL_49:
        v22 = v40;
        v9 = v60;
LABEL_50:
        if (!*v23 && (*(v23 - 1) & 0xFFFFF) != v36)
        {
          sub_100045744("spaceman chunk %llu free count %u of unallocated bitmap != block count %u\n", v24, *(v23 - 1) & 0xFFFFF, v36);
          sub_100049C40(0x38A, -7);
        }

        v23 += 4;
        ++v24;
        if (!--v20)
        {
          v18 = v64;
          v7 = a2;
          v6 = a3;
          v5 = v54;
          break;
        }
      }
    }

    free(v18);
    v64 = 0;
    ++v9;
    ++v61;
    v11 = v58;
    v10 = v59;
    if (v9 == v57)
    {
      return 0;
    }
  }

  sub_10004565C("spaceman cib out of order: %u, expected %u\n", *(v64 + 8), v9 + v6);
  v51 = 92;
  v52 = 584;
LABEL_63:
  sub_100049C40(v52, 92);
LABEL_64:
  if (v64)
  {
    free(v64);
  }

  return v51;
}

uint64_t sub_10004B648(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 184);
  if (v6 != *a2)
  {
    sub_100045744("sm_fs_reserve_block_count is not valid (expected %llu, actual %llu)\n", *a2, v6);
    sub_100049C40(0x446, -7);
    if (sub_10004758C(qword_10009BA58, "Fix sm_fs_reserve_block_count? "))
    {
      *(v5 + 184) = *a2;
      *a3 = 1;
    }
  }

  v7 = *(v5 + 192);
  if (v7 != a2[1])
  {
    sub_100045744("sm_fs_reserve_alloc_count is not valid (expected %llu, actual %llu)\n", a2[1], v7);
    sub_100049C40(0x447, -7);
    if (sub_10004758C(qword_10009BA58, "Fix sm_fs_reserve_alloc_count? "))
    {
      *(v5 + 192) = a2[1];
      *a3 = 1;
    }
  }

  return 0;
}

uint64_t sub_10004B72C(uint64_t *a1, _DWORD *a2)
{
  v4 = 0;
  v5 = a1[3];
  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  for (i = (v5 + 216); !*(i - 1); i += 5)
  {
LABEL_17:
    if (++v4 == 3)
    {
      return 0;
    }
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v15[0]) = v4 == 0;
  v15[2] = 0;
  v16 = 0;
  v15[1] = 0;
  v17 = -1;
  v7 = sub_10002CE54(a1, v4, &v14);
  if (v7 || (v7 = sub_10003570C(v14, 0, sub_10004B958, v15, 0, 0), v7))
  {
    v12 = v7;
    sub_10004565C("Spaceman free queue tree of type [%d] is invalid\n", v4);
    return v12;
  }

  v8 = *(i - 2);
  if (LOBYTE(v15[0]) != 1 || (v9 = *(v5 + 152) & 0x7FFFFFFFFFFFFFFFLL, v8 <= v9))
  {
    if (v8 != v16)
    {
      v10 = "main";
      if (!v4)
      {
        v10 = "IP";
      }

      sub_100045744("Spaceman free queue tree of type [%s] has sfq_count (%llu) mismatch with cumulative counts in the tree (%llu)\n", v10, *(i - 2), v16);
      sub_100049C40(0x2F7, 92);
      if (sub_10004758C(qword_10009BA58, "Fix spaceman free queue tree sfq_count (oid 0x%llx)? ", *(i - 1)))
      {
        *(i - 2) = v16;
        *a2 = 1;
      }
    }

    if (*i > v17)
    {
      v11 = "main";
      if (!v4)
      {
        v11 = "IP";
      }

      sub_100045744("Spaceman free queue tree of type [%s] has sfq_oldest_xid (%llu) greater than the oldest xid in the free tree (%llu)\n", v11, *i, v17);
      sub_100049C40(0x30D, 92);
      if (sub_10004758C(qword_10009BA58, "Fix spaceman free queue tree sfq_oldest_xid (oid 0x%llx)? ", *(i - 1)))
      {
        *i = v17;
        *a2 = 1;
      }
    }

    goto LABEL_17;
  }

  sub_10004565C("Spaceman IP free queue tree has sfq_count (%llu) greater than IP block count (%llu)\n", *(i - 2), v9);
  v12 = 92;
  sub_100049C40(0x2F6, 92);
  return v12;
}

uint64_t sub_10004B958(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = *a3;
  v8 = a3[1];
  if (a5)
  {
    v10 = *a5;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 1;
    if (!v9)
    {
LABEL_6:
      sub_10004565C("sfqe_key : (paddr 0x%llx, xid 0x%llx) : invalid xid\n", a3[1], v9);
      v12 = 92;
      v13 = 752;
LABEL_7:
      sub_100049C40(v13, 92);
      return v12;
    }
  }

  v11 = *(a1 + 24);
  if (v9 > v11[2])
  {
    goto LABEL_6;
  }

  if (*a7 != 1)
  {
    v19 = *(*(a1 + 8) + 40);
    if (v19 <= v10 || v8 < 1 || v19 <= v8 || v19 - v10 < v8)
    {
      sub_10004565C("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in free queue tree is not a valid address range on disk\n", v8, v10, v9);
      v12 = 92;
      v13 = 754;
      goto LABEL_7;
    }

    v28 = a3[1];
    v29 = v10;
    v23 = v11[19];
    v24 = v11[22];
    if ((v23 & 0x8000000000000000) != 0)
    {
      if (sub_100031608(a1, v24, sub_10004A074, &v28) != -1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = v8 - v24;
      if (v8 < v24)
      {
        goto LABEL_40;
      }

      v26 = v23 < v10 || v25 >= v23;
      if (v26 || v25 > v23 - v10)
      {
        goto LABEL_40;
      }
    }

    sub_10004565C("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in free queue tree lies in the internal pool\n", v8, v10, v9);
    v12 = 92;
    v13 = 784;
    goto LABEL_7;
  }

  v28 = a3[1];
  v29 = v10;
  v15 = v11[19];
  v16 = v11[22];
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = v8 - v16;
    if (v8 >= v16)
    {
      v18 = v15 < v10 || v17 >= v15;
      if (!v18 && v17 <= v15 - v10)
      {
        goto LABEL_40;
      }
    }

LABEL_38:
    sub_10004565C("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in ip free queue tree does not lie in the internal pool\n", v8, v10, v9);
    v12 = 92;
    v13 = 753;
    goto LABEL_7;
  }

  if (sub_100031608(a1, v16, sub_10004A074, &v28) != -1)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (*(a7 + 8) == v9 && v8 < *(a7 + 16))
  {
    sub_100045744("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : key out of order (last paddr 0x%llx, last xid 0x%llx)\n", v8, v10, v9, *(a7 + 16), v9);
    sub_100049C40(0x2F3, -7);
  }

  *(a7 + 8) = v9;
  *(a7 + 16) = v10 + v8;
  v27 = *(a7 + 32);
  *(a7 + 24) += v10;
  v12 = 0;
  if (v27 > v9)
  {
    *(a7 + 32) = v9;
  }

  return v12;
}