uint64_t sub_10001CFAC()
{
  __chkstk_darwin();
  v0 = &off_100030000;
  v1 = &unk_100031000;
  do
  {
    do
    {
LABEL_2:
      v2 = sub_1000202A4(0);
    }

    while (v2 == 9);
    v3 = v2;
  }

  while (v2 == 32);
  v1[374] = *(v0[396] + 8);
  if (v2 == 35)
  {
    do
    {
      v11 = sub_1000202A4(0);
      v3 = v11;
    }

    while (v11 != -1 && v11 != 10);
  }

  else if (v2 == 36 && !qword_100031880)
  {
    v4 = sub_1000202A4(0);
    if (v4 != -1)
    {
      v5 = v4;
      v6 = v1;
      v7 = v0;
      for (i = 0; i != 8094; ++i)
      {
        if (v5 > 0x7F)
        {
          v9 = __maskrune(v5, 0x500uLL);
        }

        else
        {
          v9 = _DefaultRuneLocale.__runetype[v5] & 0x500;
        }

        if (v5 != 95 && !v9)
        {
          __s1[i] = 0;
          sub_10001D7C8(v5);
          v10 = &off_100030B88;
          v0 = v7;
          v1 = v6;
          while (1)
          {
            v10 = *v10;
            if (!v10)
            {
              break;
            }

            if (!strcmp(__s1, v10[3]))
            {
              *(v10 + 4) = 1;
              if (v10[4])
              {
                qword_100031880 = v10[4];
                dword_100031888 = 0;
                goto LABEL_2;
              }

              break;
            }
          }

          sub_10001D73C("macro '%s' not defined");
          goto LABEL_67;
        }

        __s1[i] = v5;
        v5 = sub_1000202A4(0);
        if (v5 == -1)
        {
          return 0;
        }
      }

      goto LABEL_66;
    }

    return 0;
  }

  if (v3 > 44)
  {
    switch(v3)
    {
      case '-':
        v18 = sub_1000202A4(0);
        if (v18 == 62)
        {
          return 290;
        }

        sub_10001D7C8(v18);
        goto LABEL_56;
      case '<':
        v12 = sub_1000202A4(0);
        if (v12 == 62)
        {
          v13 = &unk_100031000;
          v14 = 8;
          goto LABEL_51;
        }

        goto LABEL_52;
      case '>':
        v12 = sub_1000202A4(0);
        if (v12 == 60)
        {
          v13 = &unk_100031000;
          v14 = 1;
LABEL_51:
          v13[324] = v14;
          return 387;
        }

LABEL_52:
        sub_10001D7C8(v12);
        v19 = __s1;
        goto LABEL_64;
    }

LABEL_53:
    if ((v3 - 48) > 9)
    {
      v19 = __s1;
      goto LABEL_63;
    }

LABEL_56:
    v20 = 0;
    do
    {
      __s1[v20] = v3;
      if ((v20 + 1) >> 5 >= 0xFDuLL)
      {
        goto LABEL_66;
      }

      v21 = sub_1000202A4(0);
      LODWORD(v3) = v21;
      ++v20;
    }

    while ((v21 - 48) < 0xA);
    sub_10001D7C8(v21);
    if (v20 == 1 && __s1[0] == 45)
    {
      goto LABEL_61;
    }

    if (v3 == -1 || (v3 > 0x7F ? (v34 = __maskrune(v3, 0x4000uLL)) : (v34 = _DefaultRuneLocale.__runetype[v3] & 0x4000), v34 || v3 <= 0x3D && ((1 << v3) & 0x2000920000000000) != 0 || v3 == 125))
    {
      __errstrp = 0;
      __s1[v20] = 0;
      *&xmmword_100031510 = strtonum(__s1, 0x8000000000000000, 0x7FFFFFFFFFFFFFFFLL, &__errstrp);
      if (!__errstrp)
      {
        return 386;
      }

      sub_10001D73C("%s invalid number: %s");
      goto LABEL_67;
    }

    if (v20 == 1)
    {
LABEL_61:
      v22 = 1;
    }

    else
    {
      do
      {
        v22 = v20 - 1;
        sub_10001D7C8(__s1[v20 - 1]);
      }

      while (v20-- > 2);
    }

    v23 = __s1[v22 - 1];
    v19 = &__s1[v22 - 1];
    v3 = v23;
    if (v23 == 45)
    {
      return v3;
    }

LABEL_63:
    if (v3 >= 0x80)
    {
      if (__maskrune(v3, 0x500uLL))
      {
        goto LABEL_65;
      }

      goto LABEL_87;
    }

LABEL_64:
    if ((_DefaultRuneLocale.__runetype[v3] & 0x500) != 0)
    {
LABEL_65:
      *v19 = v3;
      v24 = v19 + 1;
      if ((v19 + 1 - __s1) >> 5 > 0xFCuLL)
      {
LABEL_66:
        sub_10001D73C("string too long");
LABEL_67:
        sub_10002044C();
        return 293;
      }

      v25 = v19 - __s1 + 2;
      while (1)
      {
        v26 = sub_1000202A4(0);
        v27 = v26;
        if (v26 == -1)
        {
LABEL_82:
          sub_10001D7C8(v27);
          *v24 = 0;
          v30 = bsearch(__s1, &off_10002D0A0, 0x7FuLL, 0x10uLL, sub_10002029C);
          if (!v30 || (v3 = v30[2], v3 == 385))
          {
            *&xmmword_100031510 = strdup(__s1);
            if (!xmmword_100031510)
            {
              sub_100021438();
            }

            return 385;
          }

          return v3;
        }

        if (v26 > 0x7F)
        {
          if (__maskrune(v26, 0x500uLL))
          {
            goto LABEL_80;
          }

          v28 = __maskrune(v27, 0x2000uLL);
        }

        else
        {
          if ((_DefaultRuneLocale.__runetype[v26] & 0x500) != 0)
          {
            goto LABEL_80;
          }

          v28 = _DefaultRuneLocale.__runetype[v26] & 0x2000;
        }

        if (!v28 || v27 <= 0x3E && ((1 << v27) & 0x7000930A00000000) != 0 || v27 == 125 || v27 == 123)
        {
          goto LABEL_82;
        }

LABEL_80:
        *v24++ = v27;
        v29 = v25++ >> 5;
        if (v29 > 0xFC)
        {
          goto LABEL_66;
        }
      }
    }

LABEL_87:
    if (v3 <= 57)
    {
      if (v3 != -1)
      {
        if (v3 == 10)
        {
          v31 = v0[396];
          v32 = v31[8];
          v1[374] = v32;
          v31[8] = v32 + 1;
        }

        return v3;
      }

      return 0;
    }

    if (v3 != 95 && v3 != 58)
    {
      return v3;
    }

    goto LABEL_65;
  }

  if (v3 != 34 && v3 != 39)
  {
    goto LABEL_53;
  }

  for (j = 0; ; ++j)
  {
    while (1)
    {
      while (1)
      {
        v16 = sub_1000202A4(v3);
        if (v16 != 10)
        {
          break;
        }

        ++*(v0[396] + 8);
      }

      if (v16 != 92)
      {
        break;
      }

      v17 = sub_1000202A4(v3);
      if (v17 == -1)
      {
        return 0;
      }

      if (v17 == v3)
      {
        LOBYTE(v16) = v3;
        goto LABEL_45;
      }

      if (v17 != 10)
      {
        sub_10001D7C8(v17);
        LOBYTE(v16) = 92;
        goto LABEL_45;
      }
    }

    if (v16 == -1)
    {
      return 0;
    }

    if (v16 == v3)
    {
      break;
    }

LABEL_45:
    if (j == 8094)
    {
      goto LABEL_66;
    }

    __s1[j] = v16;
  }

  __s1[j] = 0;
  v35 = strdup(__s1);
  *&xmmword_100031510 = v35;
  if (!v35)
  {
    sub_100021438();
  }

  return 385;
}

void **sub_10001D5F8(const char *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B00405D6155A9uLL);
  if (!v4 || (v5 = v4, v6 = strdup(a1), (v5[3] = v6) == 0))
  {
    warn("malloc");
    return 0;
  }

  if (qword_100030B78 || *v6 != 45 || v6[1])
  {
    v7 = fopen(v6, "r");
    v5[2] = v7;
    if (!v7)
    {
      sub_100021454(v5 + 3, v5);
      return 0;
    }

    if (a2)
    {
      v8 = fileno(v7);
      if (sub_1000204A0(v8, v5[3]))
      {
        fclose(v5[2]);
        free(v5[3]);
LABEL_10:
        free(v5);
        return 0;
      }
    }
  }

  else
  {
    v5[2] = __stdinp;
    free(v6);
    v9 = strdup("stdin");
    v5[3] = v9;
    if (!v9)
    {
      warn("strdup");
      goto LABEL_10;
    }
  }

  *(v5 + 8) = 1;
  v10 = off_100030B80;
  *v5 = 0;
  v5[1] = v10;
  *v10 = v5;
  off_100030B80 = v5;
  return v5;
}

double sub_10001D73C(const char *a1, ...)
{
  va_start(va, a1);
  v2 = qword_100030C60;
  ++*(qword_100030C60 + 36);
  fprintf(__stderrp, "%s:%d: ", *(v2 + 24), DWORD2(xmmword_1000315D0));
  vfprintf(__stderrp, a1, va);
  fputc(10, __stderrp);
  return result;
}

uint64_t sub_10001D7C8(uint64_t result)
{
  if (result != -1)
  {
    if (!qword_100031880 || (v1 = dword_100031888, --dword_100031888, v1 <= 0))
    {
      v2 = dword_100031878;
      if (dword_100031878 > 126)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        ++dword_100031878;
        byte_10003188C[v2] = result;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10001D82C(char *__s1)
{
  if (__s1 && ((v1 = __s1, *(__s1 + 3)) || __s1[16] || strcmp(__s1, "none")))
  {
    if ((*(qword_100030C68 + 4) & 4) != 0)
    {
      printf("set skip on {");
    }

    v2 = 0;
    v3 = v1;
    do
    {
      if ((*(qword_100030C68 + 4) & 4) != 0)
      {
        printf(" %s", v3);
      }

      if (*(v3 + 16))
      {
        sub_10001D73C("skip on ! <interface> is not supported");
        ++v2;
      }

      else
      {
        v2 += sub_10001424C(qword_100030C68, v3, 256, 1);
      }

      v3 = *(v3 + 24);
    }

    while (v3);
    if ((*(qword_100030C68 + 4) & 4) != 0)
    {
      puts(" }");
    }

    do
    {
      v4 = *(v1 + 3);
      free(v1);
      v1 = v4;
    }

    while (v4);
    return v2 != 0;
  }

  else
  {
    v6 = qword_100030C68;
    if ((*(qword_100030C68 + 4) & 4) != 0)
    {
      puts("set skip on none");
      v6 = qword_100030C68;
    }

    return sub_10001424C(v6, "", 256, 0);
  }
}

uint64_t sub_10001D99C(char *__s1, const char *a2, int a3)
{
  v6 = &off_100030B88;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = v6[3];
    if (!strcmp(__s1, v7))
    {
      if (*(v6 + 5) == 1)
      {
        return 0;
      }

      free(v7);
      free(v6[4]);
      v9 = *v6;
      v10 = v6[1];
      if (*v6)
      {
        v11 = *v6;
      }

      else
      {
        v11 = &off_100030B88;
      }

      v11[1] = v10;
      *v10 = v9;
      free(v6);
      break;
    }
  }

  v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B00400AA5D409uLL);
  if (v12)
  {
    v13 = v12;
    v14 = strdup(__s1);
    v13[3] = v14;
    if (v14)
    {
      v15 = v14;
      v16 = strdup(a2);
      v13[4] = v16;
      if (v16)
      {
        result = 0;
        *(v13 + 4) = 0;
        *(v13 + 5) = a3;
        v17 = off_100030B90;
        *v13 = 0;
        v13[1] = v17;
        *v17 = v13;
        off_100030B90 = v13;
        return result;
      }

      free(v15);
    }

    free(v13);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001DAB8(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = result + 96 * i;
    v4 = *(v3 + 32);
    v5 = *v4;
    if (*v4)
    {
      v6 = a2 + 96 * i;
      do
      {
        v7 = *(v5 + 560);
        v8 = *(v5 + 568);
        v9 = v4 + 1;
        if (v7)
        {
          v9 = (v7 + 568);
        }

        *v9 = v8;
        *v8 = v7;
        *(v5 + 560) = 0;
        v10 = *(*(v6 + 32) + 8);
        *(v5 + 568) = v10;
        *v10 = v5;
        *(*(v6 + 32) + 8) = v5 + 560;
        ++*(*(a2 + 576) + 1756);
        v4 = *(v3 + 32);
        v5 = *v4;
      }

      while (*v4);
    }

    *(*(result + 576) + 1756) = 0;
    v11 = *(v3 + 64);
    v12 = *v11;
    if (*v11)
    {
      v13 = a2 + 96 * i;
      do
      {
        v14 = *(v12 + 560);
        v15 = *(v12 + 568);
        v16 = v11 + 1;
        if (v14)
        {
          v16 = (v14 + 568);
        }

        *v16 = v15;
        *v15 = v14;
        *(v12 + 560) = 0;
        v17 = *(*(v13 + 64) + 8);
        *(v12 + 568) = v17;
        *v17 = v12;
        *(*(v13 + 64) + 8) = v12 + 560;
        v11 = *(v3 + 64);
        v12 = *v11;
      }

      while (*v11);
    }
  }

  return result;
}

uint64_t sub_10001DBA4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (__strlcpy_chk() < 0x40)
  {
    return 0;
  }

  sub_10001D73C("rule label too long (max %d chars)", 63);
  return 0xFFFFFFFFLL;
}

double sub_10001DC08(uint64_t a1, char *a2, void *a3, char *a4, const char **a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, char *a13)
{
  v20 = *(a1 + 1013);
  if (__strlcpy_chk() >= 0x40)
  {
    sub_1000214B0();
  }

  if (__strlcpy_chk() >= 0x40)
  {
    sub_1000214B0();
  }

  if (__strlcpy_chk() >= 0x40)
  {
    sub_1000214B0();
  }

  v100 = *(a1 + 1018);
  v101 = *(a1 + 1017);
  v21 = *(a1 + 1012);
  v110 = *(a1 + 1029);
  v111 = *(a1 + 1028);
  v106 = v21;
  if (!a2)
  {
    v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
    if (!v22)
    {
      sub_1000214E8();
    }

    a2 = v22;
    *(v22 + 3) = 0;
    v21 = v106;
  }

  v116 = 0;
  v102 = 0;
  v104 = v21 & 0xFE;
  v25 = a2;
  v91 = a2;
  do
  {
    v26 = a10;
    v115 = v25;
    if (!a4)
    {
      v27 = a9;
      v28 = a12;
      v29 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040984C81BBuLL);
      if (!v29)
      {
        sub_1000214E8();
      }

      a4 = v29;
      *(v29 + 1) = 0;
      a12 = v28;
      v26 = a10;
      a9 = v27;
      v25 = v115;
    }

    v103 = a4;
    do
    {
      if (!a12)
      {
        v30 = a9;
        v31 = v26;
        a12 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040B143BA1DuLL);
        if (!a12)
        {
          sub_1000214E8();
        }

        a12[1] = 0;
        v26 = v31;
        a9 = v30;
        v25 = v115;
      }

      v90 = a12;
      v114 = a12;
      v94 = a4;
      do
      {
        if (!a6)
        {
          v32 = a9;
          v33 = v26;
          v34 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
          if (!v34)
          {
            sub_1000214E8();
          }

          a6 = v34;
          v34[13] = 0;
          v26 = v33;
          a9 = v32;
          v25 = v115;
        }

        v92 = a6;
        do
        {
          if (!a7)
          {
            v35 = a9;
            v36 = v26;
            v37 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
            if (!v37)
            {
              sub_1000214E8();
            }

            a7 = v37;
            v37[1] = 0;
            v26 = v36;
            a9 = v35;
            v25 = v115;
          }

          v93 = a7;
          v105 = a7;
          do
          {
            if (!a5)
            {
              v38 = a9;
              v39 = v26;
              v40 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300408DF105C4uLL);
              if (!v40)
              {
                sub_1000214E8();
              }

              a5 = v40;
              v40[2] = 0;
              v26 = v39;
              a9 = v38;
              v25 = v115;
            }

            v108 = a5;
            v95 = a5;
            do
            {
              if (!a8)
              {
                v41 = a9;
                v42 = v26;
                v43 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B20409DAB6FE4uLL);
                if (!v43)
                {
                  sub_1000214E8();
                }

                a8 = v43;
                v43[13] = 0;
                v26 = v42;
                a9 = v41;
                v25 = v115;
              }

              v96 = a8;
              v44 = a8;
              v45 = a11;
              do
              {
                if (!a9)
                {
                  v46 = v26;
                  v47 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004069A7EC9CuLL);
                  if (!v47)
                  {
                    sub_1000214E8();
                  }

                  a9 = v47;
                  v47[1] = 0;
                  v26 = v46;
                  v25 = v115;
                }

                v97 = a9;
                v107 = a9;
                do
                {
                  if (!v26)
                  {
                    v48 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
                    if (!v48)
                    {
                      sub_1000214E8();
                    }

                    v26 = v48;
                    v48[2] = 0;
                    v25 = v115;
                  }

                  a10 = v26;
                  v109 = v26;
                  do
                  {
                    if (!v45)
                    {
                      v49 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405894EE42uLL);
                      if (!v49)
                      {
                        sub_1000214E8();
                      }

                      v45 = v49;
                      v49[2] = 0;
                      v25 = v115;
                    }

                    a11 = v45;
                    do
                    {
                      *(a1 + 1013) = v20;
                      v50 = *(a6 + 80);
                      if (!v20 || (*(a6 + 80) ? (v51 = v20 == v50) : (v51 = 1), v51 && (*(v44 + 80) ? (v52 = v20 == *(v44 + 80)) : (v52 = 1), v52)))
                      {
                        if (!*(a6 + 80) || (*(v44 + 80) ? (v53 = v50 == *(v44 + 80)) : (v53 = 1), v53))
                        {
                          v54 = *(a6 + 21);
                          v55 = *(v44 + 21);
                          if (v54)
                          {
                            if (v55 && v54 != v55)
                            {
                              goto LABEL_118;
                            }

                            if (*v25)
                            {
                              if (v54 != if_nametoindex(v25))
                              {
                                goto LABEL_117;
                              }

                              v55 = *(v44 + 21);
                              v25 = v115;
                            }
                          }

                          if (!v55 || !*v25 || (v56 = if_nametoindex(v25), v25 = v115, v55 == v56))
                          {
                            if (!*(a1 + 1013))
                            {
                              v57 = *(a6 + 80);
                              if (v57 || (v57 = *(v44 + 80)) != 0)
                              {
                                *(a1 + 1013) = v57;
                              }
                            }

                            if (*v25 || if_indextoname(*(a6 + 21), v117) || if_indextoname(*(v44 + 21), v117))
                            {
                              __strlcpy_chk();
                            }

                            else
                            {
                              *(a1 + 256) = 0;
                              *(a1 + 264) = 0;
                            }

                            if (__strlcpy_chk() >= 0x40)
                            {
                              sub_1000214B0();
                            }

                            if (__strlcpy_chk() >= 0x40)
                            {
                              sub_1000214B0();
                            }

                            if (__strlcpy_chk() >= 0x40)
                            {
                              sub_1000214B0();
                            }

                            sub_100020190((a1 + 192), 0x40uLL, (a1 + 256), *(a1 + 1013), a6, v105, v44, v107, *v103);
                            sub_100020190((a1 + 400), 0x40uLL, (a1 + 256), *(a1 + 1013), a6, v105, v44, v107, *v103);
                            sub_100020190((a1 + 464), 0x40uLL, (a1 + 256), *(a1 + 1013), a6, v105, v44, v107, *v103);
                            v113 = sub_10000BC88(a6, *(a1 + 1013));
                            v58 = sub_10000BC88(v44, *(a1 + 1013));
                            *(a1 + 1009) = v115[16];
                            v59 = *v103;
                            *(a1 + 1014) = v59;
                            v60 = *a6;
                            v61 = *(a6 + 2);
                            *(a1 + 16) = *(a6 + 1);
                            *(a1 + 32) = v61;
                            *a1 = v60;
                            *(a1 + 56) = *(a6 + 81);
                            *(a1 + 48) = *v105;
                            *(a1 + 50) = v105[1];
                            *(a1 + 52) = *(v105 + 4);
                            v62 = *v44;
                            v63 = *(v44 + 2);
                            *(a1 + 80) = *(v44 + 1);
                            *(a1 + 96) = v63;
                            *(a1 + 64) = v62;
                            *(a1 + 120) = *(v44 + 81);
                            *(a1 + 112) = *v107;
                            *(a1 + 114) = v107[1];
                            *(a1 + 116) = *(v107 + 4);
                            *(a1 + 984) = *(v109 + 8);
                            *(a1 + 976) = *v109;
                            *(a1 + 980) = *(v109 + 1);
                            *(a1 + 996) = *(v45 + 8);
                            *(a1 + 988) = *v45;
                            *(a1 + 992) = *(v45 + 1);
                            *(a1 + 1015) = *(v114 + 1);
                            *(a1 + 1016) = *v114;
                            if (v104 == 2)
                            {
                              v64 = v106;
                              if (v59 != 6)
                              {
                                if (v59)
                                {
                                  v64 = 1;
                                }

                                else
                                {
                                  v64 = v106;
                                }
                              }

                              *(a1 + 1012) = v64;
LABEL_90:
                              v66 = v110;
                              v65 = v111;
                              if (v59)
                              {
                                v66 = v110;
                                v65 = v111;
                                if (v59 != 17)
                                {
LABEL_92:
                                  v65 = 0;
                                  v66 = 0;
                                }
                              }

                              *(a1 + 1028) = v65;
                              *(a1 + 1029) = v66;
                              if (v59 != 6 && v59)
                              {
                                v67 = 0;
                                v68 = 0;
                              }

                              else
                              {
                                v68 = v100;
                                v67 = v101;
                              }

                              v116 += v113 + v58;
                              *(a1 + 1017) = v67;
                              *(a1 + 1018) = v68;
                              if (*(v114 + 2) && v59 != *(v114 + 2))
                              {
                                *&v62 = sub_10001D73C("icmp-type mismatch");
                                ++v116;
                              }

                              if (*v108)
                              {
                                v69 = sub_1000092B4(*v108);
                                *(a1 + 792) = v69;
                                if ((*(qword_100030C68 + 4) & 0x80) != 0 && v69 == -2)
                                {
                                  fprintf(__stderrp, "warning: unknown '%s' OS fingerprint\n", *v108);
                                }
                              }

                              else
                              {
                                *(a1 + 792) = 0;
                              }

                              *(a1 + 576) = 0;
                              *(a1 + 584) = a1 + 576;
                              if (a3)
                              {
                                v70 = a3;
                                do
                                {
                                  v71 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A2040E07ACC14uLL);
                                  if (!v71)
                                  {
                                    sub_1000214CC();
                                  }

                                  v72 = v71;
                                  v62 = *v70;
                                  v73 = *(v70 + 2);
                                  v71[1] = *(v70 + 1);
                                  v71[2] = v73;
                                  *v71 = v62;
                                  if (v70[11])
                                  {
                                    if (__strlcpy_chk() >= 0x10)
                                    {
                                      sub_1000214B0();
                                    }
                                  }

                                  else
                                  {
                                    *(v71 + 64) = 0;
                                  }

                                  *(v72 + 6) = 0;
                                  v74 = *(a1 + 584);
                                  *(v72 + 7) = v74;
                                  *v74 = v72;
                                  *(a1 + 584) = v72 + 3;
                                  v70 = v70[13];
                                }

                                while (v70);
                              }

                              if ((sub_10001F5BC(a1, *a13, *&v62) & 0x80000000) != 0 || v116)
                              {
                                sub_10001D73C("skipping rule due to errors");
                              }

                              else
                              {
                                v75 = qword_100030C68;
                                v76 = *(qword_100030C68 + 8 * *(qword_100030C68 + 16) + 32);
                                v77 = *(v76 + 1756);
                                *(v76 + 1756) = v77 + 1;
                                *(a1 + 948) = v77;
                                sub_100012B94(v75, a1, a13);
                                v116 = 0;
                                ++v102;
                              }

LABEL_117:
                              v25 = v115;
                              goto LABEL_118;
                            }

                            *(a1 + 1012) = v106;
                            if (v106 || *(a1 + 1004) == 4)
                            {
                              goto LABEL_90;
                            }

                            goto LABEL_92;
                          }
                        }
                      }

LABEL_118:
                      v45 = v45[2];
                    }

                    while (v45);
                    v45 = a11;
                    v109 = v109[2];
                  }

                  while (v109);
                  v26 = a10;
                  v107 = *(v107 + 1);
                }

                while (v107);
                v44 = v44[13];
                a9 = v97;
              }

              while (v44);
              a5 = v95;
              a8 = v96;
              a4 = v94;
              v108 = v108[2];
            }

            while (v108);
            v105 = *(v105 + 1);
          }

          while (v105);
          a6 = a6[13];
        }

        while (a6);
        a6 = v92;
        v114 = v114[1];
      }

      while (v114);
      a12 = v90;
      v103 = *(v103 + 1);
    }

    while (v103);
    v25 = *(v25 + 3);
  }

  while (v25);
  do
  {
    v78 = *(v91 + 3);
    free(v91);
    v91 = v78;
  }

  while (v78);
  do
  {
    v79 = *(v94 + 1);
    free(v94);
    v94 = v79;
  }

  while (v79);
  do
  {
    v80 = v92[13];
    free(v92);
    v92 = v80;
  }

  while (v80);
  do
  {
    v81 = v93[1];
    free(v93);
    v93 = v81;
  }

  while (v81);
  do
  {
    v82 = v95[2];
    free(v95);
    v95 = v82;
  }

  while (v82);
  do
  {
    v83 = v96[13];
    free(v96);
    v96 = v83;
  }

  while (v83);
  do
  {
    v84 = v97[1];
    free(v97);
    v97 = v84;
  }

  while (v84);
  do
  {
    v85 = a10[2];
    free(a10);
    a10 = v85;
  }

  while (v85);
  do
  {
    v86 = a11[2];
    free(a11);
    a11 = v86;
  }

  while (v86);
  do
  {
    v87 = v90[1];
    free(v90);
    v90 = v87;
  }

  while (v87);
  if (a3)
  {
    do
    {
      v89 = a3[13];
      free(a3);
      a3 = v89;
    }

    while (v89);
  }

  if (!v102)
  {
    return sub_10001D73C("rule expands to no valid combination");
  }

  return result;
}

uint64_t sub_10001E6BC(const char *a1, uint64_t a2)
{
  v15[1] = 0;
  v15[2] = 0;
  v15[0] = 3;
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v5)
  {
    while (1)
    {
      v6 = v5[2];
      if (v6)
      {
        if (sub_10000ECA4(v15, v6, 0, sub_10000C9A8))
        {
          break;
        }
      }

      v7 = v5[1];
      if (v7 && sub_10000CA4C(v15, v7, 0, 0))
      {
        v12 = __error();
        strerror(*v12);
        sub_10001D73C("cannot create address buffer: %s");
        goto LABEL_18;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    if (*__error())
    {
      v11 = __error();
      strerror(*v11);
      sub_10001D73C("cannot load %s: %s");
    }

    else
    {
      sub_10001D73C("file %s contains bad data");
    }

    goto LABEL_18;
  }

LABEL_7:
  v8 = qword_100030C68;
  v9 = *(qword_100030C68 + 4);
  if ((v9 & 4) != 0)
  {
    sub_10000B93C(a1, *a2, *(a2 + 4), v4);
    v8 = qword_100030C68;
    v9 = *(qword_100030C68 + 4);
  }

  if ((v9 & 8) == 0)
  {
    if (sub_10000FD50(a1, *a2, *(a2 + 4), *(v8 + 1704) + 64, v15, *(*(v8 + 1704) + 1736)))
    {
      v10 = __error();
      sub_10000EEC8(*v10);
      sub_10001D73C("cannot define table %s: %s");
LABEL_18:
      v13 = 0xFFFFFFFFLL;
      goto LABEL_19;
    }

    v8 = qword_100030C68;
  }

  v13 = 0;
  *(v8 + 28) = 1;
LABEL_19:
  sub_10000EC68(v15);
  return v13;
}

uint64_t sub_10001E83C(void *__src, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v29[0] = a4;
  v29[1] = a5;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(v41, 0, sizeof(v41));
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  *__s1 = 0u;
  v31 = 0u;
  v27 = 0;
  v28 = 0;
  v8 = &off_100030000;
  if ((*(qword_100030C68 + 12) & 0x10) == 0)
  {
    if (a2)
    {
      do
      {
        v9 = v7[3];
        free(v7);
        v7 = v9;
      }

      while (v9);
    }

    if (a3)
    {
      do
      {
        v10 = a3[19];
        free(a3);
        a3 = v10;
      }

      while (v10);
    }

    return 0;
  }

  if (!a2)
  {
    v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
    if (!v13)
    {
      sub_1000214E8();
    }

    v7 = v13;
    v13[3] = 0;
  }

  LODWORD(v11) = 0;
  v14 = v7;
  do
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (__strlcpy_chk() >= 0x10)
    {
      sub_100021504();
    }

    if (*(v14 + 16))
    {
      sub_10001D73C("altq on ! <interface> is not supported");
      v11 = (v11 + 1);
      goto LABEL_54;
    }

    if (sub_100003A08(v8[397], __dst, v29, a6))
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100013318(v8[397], __dst) != 0;
    }

    v16 = v8[397];
    if ((*(v16 + 4) & 4) != 0)
    {
      sub_100002FBC(v16[210] + 16, 0, v29, a6);
      if (a3 && a3[20])
      {
        printf("queue { ");
        v17 = a3;
        do
        {
          printf("%s ", v17);
          v17 = *(v17 + 19);
        }

        while (v17);
        putchar(125);
        v8 = &off_100030000;
      }

      putchar(10);
    }

    v11 = (v11 + v15);
    if ((LODWORD(__dst[6]) - 1) > 1)
    {
      goto LABEL_36;
    }

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(v41, 0, sizeof(v41));
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    memset(v32, 0, sizeof(v32));
    *__s1 = 0u;
    v31 = 0u;
    if (__strlcpy_chk() >= 0x40)
    {
      sub_100021504();
    }

    if (__strlcat_chk() >= 0x40)
    {
      sub_10002153C();
    }

    if (__strlcpy_chk() >= 0x40)
    {
      sub_100021504();
    }

    if (__strlcpy_chk() >= 0x10)
    {
      sub_100021504();
    }

    *(v41 + 12) = *(&__dst[25] + 4);
    DWORD2(v32[0]) = __dst[5];
    DWORD1(v41[0]) = HIDWORD(__dst[24]);
    *(v32 + 12) = *(&__dst[5] + 4);
    if (HIDWORD(__dst[5]) == 1)
    {
      LOWORD(v28) = 0;
      v27 = __dst[7];
    }

    else if (HIDWORD(__dst[5]) == 2)
    {
      LOWORD(v28) = __dst[7];
      v27 = 0;
    }

    else
    {
      v27 = 0;
      LOWORD(v28) = 0;
    }

    WORD1(v28) = WORD2(__dst[5]);
    if (sub_100004138(v8[397], __s1, &v27, a6))
    {
      v11 = (v11 + 1);
LABEL_36:
      if (!a3)
      {
        goto LABEL_37;
      }

      goto LABEL_43;
    }

    if (sub_100013318(v8[397], __s1))
    {
      v11 = (v11 + 1);
    }

    else
    {
      v11 = v11;
    }

    if (!a3)
    {
LABEL_37:
      v18 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
      if (!v18)
      {
        sub_1000214E8();
      }

      a3 = v18;
      v18[19] = 0;
    }

LABEL_43:
    v19 = a3;
    do
    {
      v20 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
      if (!v20)
      {
        sub_100021520();
      }

      v21 = v20;
      if ((LODWORD(__dst[6]) - 1) <= 1 && __strlcpy_chk() >= 0x40)
      {
        sub_100021504();
      }

      if (__strlcpy_chk() >= 0x40)
      {
        sub_100021504();
      }

      if (__strlcpy_chk() >= 0x10)
      {
        sub_100021504();
      }

      v21[36] = __dst[6];
      *(v21 + 19) = 0;
      *(v21 + 20) = v21;
      if (qword_100031500)
      {
        v22 = (qword_100031500 + 160);
        *(*(qword_100031500 + 160) + 152) = v21;
      }

      else
      {
        v22 = &qword_100031500;
      }

      *v22 = v21;
      v19 = v19[19];
    }

    while (v19);
    v8 = &off_100030000;
LABEL_54:
    v14 = v14[3];
  }

  while (v14);
  do
  {
    v23 = v7[3];
    free(v7);
    v7 = v23;
  }

  while (v23);
  if (a3)
  {
    do
    {
      v24 = a3[19];
      free(a3);
      a3 = v24;
    }

    while (v24);
  }

  return v11;
}

BOOL sub_10001ED08(const char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v33 = a4;
  v34 = a5;
  memset(__dst, 0, 328);
  if ((*(qword_100030C68 + 12) & 0x10) == 0)
  {
    if (a3)
    {
      do
      {
        v7 = v6[19];
        free(v6);
        v6 = v7;
      }

      while (v7);
    }

    return 0;
  }

  if (qword_100031500)
  {
    if (!a2)
    {
      v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200402825D2DAuLL);
      if (!v9)
      {
        sub_1000214E8();
      }

      a2 = v9;
      v9[3] = 0;
    }

    v10 = 0;
    v32 = 0;
    v11 = a1 + 64;
    v29 = a2;
    v12 = a2;
LABEL_10:
    v13 = qword_100031500;
    if (!qword_100031500)
    {
      v14 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
      qword_100031500 = v14;
      if (!v14)
      {
        sub_1000214E8();
      }

      v13 = v14;
      v14[19] = 0;
    }

    while (1)
    {
      if (!strncmp(v11, v13, 0x40uLL))
      {
        if (*v12)
        {
          v16 = *(v12 + 16);
          v17 = strncmp(v12, (v13 + 128), 0x10uLL);
          if (v16)
          {
            if (!v17)
            {
              goto LABEL_57;
            }
          }

          else if (v17)
          {
            goto LABEL_57;
          }
        }

        memcpy(__dst, a1, 0x148uLL);
        v18 = __dst[3];
        if (LODWORD(__dst[3]))
        {
          if (LODWORD(__dst[3]) != *(v13 + 144))
          {
            sub_10001D73C("exactly one scheduler type per interface allowed");
            return 1;
          }
        }

        else
        {
          v18 = *(v13 + 144);
        }

        LODWORD(__dst[3]) = v18;
        if (v18 == 3)
        {
          if (v6)
          {
            sub_10001D73C("priq queues cannot have child queues");
            return 1;
          }

          if (WORD1(v34))
          {
            sub_10001D73C("priq doesn't take bandwidth");
            return 1;
          }
        }

        if (__strlcpy_chk() >= 0x10)
        {
          sub_100021590();
        }

        if (__strlcpy_chk() >= 0x40)
        {
          sub_100021590();
        }

        if (sub_100004138(qword_100030C68, __dst, &v33, a6))
        {
          v19 = 1;
        }

        else
        {
          v19 = sub_100013318(qword_100030C68, __dst) != 0;
        }

        v10 += v19;
        if (v6)
        {
          v20 = v6;
          do
          {
            if (!strcmp(v11, v20))
            {
              sub_10001D73C("queue cannot have itself as child");
              ++v10;
            }

            else
            {
              v21 = malloc_type_calloc(1uLL, 0xA8uLL, 0x102004067274AD9uLL);
              if (!v21)
              {
                sub_100021574();
              }

              v22 = v21;
              if (__strlcpy_chk() >= 0x40)
              {
                sub_100021558();
              }

              if (__strlcpy_chk() >= 0x40)
              {
                sub_100021558();
              }

              if (__strlcpy_chk() >= 0x10)
              {
                sub_100021558();
              }

              *(v22 + 144) = *(v13 + 144);
              *(v22 + 152) = 0;
              *(v22 + 160) = v22;
              v23 = qword_100031500;
              if (qword_100031500)
              {
                *(*(qword_100031500 + 160) + 152) = v22;
                *(v23 + 160) = v22;
              }

              else
              {
                qword_100031500 = v22;
              }
            }

            v20 = *(v20 + 19);
          }

          while (v20);
        }

        if ((*(qword_100030C68 + 4) & 4) == 0)
        {
          goto LABEL_56;
        }

        if (!v32)
        {
          v15 = *v12 != 0;
          goto LABEL_50;
        }

        if (v32 != -1)
        {
          if (*v12)
          {
            v15 = 1;
LABEL_50:
            sub_100003140(*(qword_100030C68 + 1680) + 16, 0, &v33, v15, a6);
            if (v6 && v6[20])
            {
              printf("{ ");
              v24 = v6;
              do
              {
                printf("%s ", v24);
                v24 = *(v24 + 19);
              }

              while (v24);
              putchar(125);
            }

            putchar(10);
          }

LABEL_56:
          ++v32;
          goto LABEL_57;
        }

        v32 = 0;
      }

LABEL_57:
      v13 = *(v13 + 152);
      if (!v13)
      {
        v12 = *(v12 + 3);
        if (v12)
        {
          goto LABEL_10;
        }

        if (v6)
        {
          do
          {
            v25 = v6[19];
            free(v6);
            v6 = v25;
          }

          while (v25);
        }

        v26 = v29;
        do
        {
          v27 = v26[3];
          free(v26);
          v26 = v27;
        }

        while (v27);
        if (!v32)
        {
          sub_10001D73C("queue %s has no parent", v11);
          LOBYTE(v10) = v10 + 1;
        }

        return v10 != 0;
      }
    }
  }

  sub_10001D73C("queue %s has no parent", a1 + 64);
  if (v6)
  {
    do
    {
      v28 = v6[19];
      free(v6);
      v6 = v28;
    }

    while (v28);
  }

  return 1;
}

void sub_10001F1D4(void *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 80);
      if (*a2)
      {
        if (*(v2 + 80))
        {
          v7 = v6 == *a2;
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          v8 = *(v2 + 104);
          if (v2 == *(*a1 + 112))
          {
            *(*a1 + 112) = v5;
          }

          v9 = (v5 + 104);
          if (!v5)
          {
            v9 = a1;
          }

          *v9 = v8;
          v10 = *(v2 + 88);
          if (v10)
          {
            free(v10);
          }

          free(v2);
          goto LABEL_18;
        }
      }

      else if (*(v2 + 80))
      {
        *a2 = v6;
      }

      v8 = *(v2 + 104);
      v5 = v2;
LABEL_18:
      v2 = v8;
    }

    while (v8);
  }
}

uint64_t sub_10001F284(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    while (*(v2 + 40) != 3)
    {
      v2 = *(v2 + 104);
      if (!v2)
      {
        return 0;
      }
    }

    v3 = fmtcheck(a2, "%s");
    sub_10001D73C(v3, v2);
    return 1;
  }

  return result;
}

uint64_t sub_10001F2F0(uint64_t __s, char *a2)
{
  if (__s)
  {
    v3 = __s;
    while (*(v3 + 40) != 2 || (*(v3 + 41) & 8) != 0 && (*(strlen(v3) + v3 - 1) - 48) < 0xA)
    {
      v3 = *(v3 + 104);
      if (!v3)
      {
        return 0;
      }
    }

    v4 = fmtcheck(a2, "%s");
    sub_10001D73C(v4, v3);
    return 1;
  }

  return __s;
}

uint64_t sub_10001F380(char *a1, int a2)
{
  v9 = 0;
  if (a2 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (sub_10001F428(a1, &v9) == -1)
  {
    v6 = sub_1000099DC(v4, a1, a2);
    if (!v6)
    {
      sub_10001D73C("unknown icmp code %s");
      return 0;
    }

    v5 = *(v6 + 9);
  }

  else
  {
    v5 = v9;
    if (v9 >= 0x100)
    {
      sub_10001D73C("invalid icmp code %lu");
      return 0;
    }
  }

  return (v5 | (v4 << 8));
}

uint64_t sub_10001F428(const char *a1, unint64_t *a2)
{
  __endptr = 0;
  *__error() = 0;
  v4 = strtoul(a1, &__endptr, 0);
  if (!*a1 || *__endptr)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*__error() == 34 && v5 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_10001F4B4(const char *a1)
{
  v4 = 0;
  if (sub_10001F428(a1, &v4))
  {
    v2 = getservbyname(a1, "tcp");
    if (v2)
    {
      return v2->s_port;
    }

    v2 = getservbyname(a1, "udp");
    if (v2)
    {
      return v2->s_port;
    }

    sub_10001D73C("unknown port %s");
  }

  else
  {
    if (v4 < 0x10000)
    {
      return bswap32(v4) >> 16;
    }

    sub_10001D73C("illegal port value %lu");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001F558(uint64_t a1, int a2)
{
  if (a2)
  {
LABEL_2:
    if (a1)
    {
      return 0;
    }
  }

  else if (a1)
  {
    v4 = "address family not given and translation address expands to multiple address families";
    v5 = a1;
    while ((*(v5 + 40) & 0xFE) == 2)
    {
      v5 = *(v5 + 104);
      if (!v5)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_10;
  }

  v4 = "no translation address with matching address family found.";
LABEL_10:
  sub_10001D73C(v4);
  return 1;
}

uint64_t sub_10001F5BC(uint64_t a1, uint64_t a2, double a3)
{
  result = 0;
  v5 = *(a1 + 1004);
  if (v5 <= 0xC)
  {
    if (((1 << v5) & 0xF) != 0)
    {

      return sub_10001F684(a1, a3);
    }

    else if (((1 << v5) & 0x300) != 0)
    {

      return sub_10001F8DC(a1, a3);
    }

    else if (((1 << v5) & 0x1800) != 0)
    {
      v6 = a2;
      v7 = sub_10001F684(a1, a3);
      return sub_10001F998(a1, v6, v8) + v7;
    }
  }

  return result;
}

uint64_t sub_10001F684(uint64_t a1, double a2)
{
  v3 = *(a1 + 1014);
  v4 = v3 == 6 || v3 == 17;
  if (!v4 && (*(a1 + 52) || *(a1 + 116)))
  {
    a2 = sub_10001D73C("port only applies to tcp/udp", a2);
    v3 = *(a1 + 1014);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v3 != 1 && v3 != 58 && (*(a1 + 1015) || *(a1 + 1016)))
  {
    a2 = sub_10001D73C("icmp-type/code only applies to icmp", a2);
    ++v5;
  }

  if (!*(a1 + 1013) && (*(a1 + 1015) || *(a1 + 1016)))
  {
    a2 = sub_10001D73C("must indicate address family with icmp-type/code", a2);
    ++v5;
  }

  if (*(a1 + 528) && !*(a1 + 924) && !*(a1 + 932))
  {
    a2 = sub_10001D73C("'overload' requires 'max-src-conn' or 'max-src-conn-rate'", a2);
    ++v5;
  }

  v6 = *(a1 + 1014);
  if (v6 == 58)
  {
    if (*(a1 + 1013) == 2)
    {
      v7 = "icmp6";
      v8 = "inet";
      goto LABEL_29;
    }
  }

  else if (v6 == 1 && *(a1 + 1013) == 30)
  {
    v7 = "icmp";
    v8 = "inet6";
LABEL_29:
    a2 = sub_10001D73C("proto %s doesn't match address family %s", v7, v8);
    ++v5;
  }

  if (*(a1 + 1020))
  {
    v9 = *(a1 + 1004);
    if (v9 > 0xC || ((1 << v9) & 0x1801) == 0)
    {
      a2 = sub_10001D73C("allow-opts can only be specified for pass rules", a2);
      ++v5;
    }
  }

  v10 = *(a1 + 1000);
  if ((v10 & 2) != 0 && (*(a1 + 52) || *(a1 + 116) || *(a1 + 1018) || *(a1 + 1015) || *(a1 + 1016)))
  {
    a2 = sub_10001D73C("fragments can be filtered only on IP header fields", a2);
    ++v5;
    v10 = *(a1 + 1000);
  }

  if ((v10 & 1) != 0 && *(a1 + 1014) != 6)
  {
    a2 = sub_10001D73C("return-rst can only be applied to TCP rules", a2);
    ++v5;
  }

  if (*(a1 + 916) && (*(a1 + 1000) & 0x40) == 0)
  {
    a2 = sub_10001D73C("max-src-nodes requires 'source-track rule'", a2);
    ++v5;
  }

  if (*(a1 + 1004) == 1 && *(a1 + 1012))
  {
    a2 = sub_10001D73C("keep state on block rules doesn't make sense", a2);
    ++v5;
  }

  v11 = *(a1 + 1000) >> 13;
  if (v11 > 4 || v11 == 3)
  {
    sub_10001D73C("tos/dscp/sc cannot be used together", a2);
    ++v5;
  }

  return -v5;
}

uint64_t sub_10001F8DC(uint64_t a1, double a2)
{
  v3 = *(a1 + 1014);
  if (v3 == 6 || v3 == 17)
  {
    v5 = 0;
  }

  else
  {
    if (*(a1 + 52))
    {
      a2 = sub_10001D73C("src port only applies to tcp/udp", a2);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    if (*(a1 + 116))
    {
      a2 = sub_10001D73C("dst port only applies to tcp/udp", a2);
      ++v5;
    }

    if (*(a1 + 636))
    {
      a2 = sub_10001D73C("rpool port only applies to tcp/udp", a2);
      ++v5;
    }
  }

  v6 = *(a1 + 116);
  v7 = v6 > 9;
  v8 = (1 << v6) & 0x205;
  if (v7 || v8 == 0)
  {
    sub_10001D73C("invalid port operator for rdr destination port", a2);
    ++v5;
  }

  return -v5;
}

uint64_t sub_10001F998(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v4 = 0;
    goto LABEL_3;
  }

  v6 = *(a1 + 1004);
  if (v6 == 11)
  {
    if ((*(a1 + 1032) - 0x10000) > 0xFFFF0000)
    {
      v4 = 0;
LABEL_16:
      if (*(a1 + 1032) && !*(a1 + 1005))
      {
        a3 = sub_10001D73C("a dummynet rule cannot be specified without direction", a3);
        ++v4;
      }

      goto LABEL_3;
    }

    a3 = sub_10001D73C("a dummynet rule needs a pipe number between 1 and 65535", a3);
    v6 = *(a1 + 1004);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (v6 == 12)
  {
    if (!*(a1 + 1032))
    {
      goto LABEL_3;
    }

    a3 = sub_10001D73C("specifying a pipe with no dummynet doesn't make sense", a3);
    ++v4;
    v6 = *(a1 + 1004);
  }

  if (v6 == 11)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (*(a1 + 1012))
  {
    sub_10001D73C("keep state on dummynet rules is not allowed", a3);
    ++v4;
  }

  return -v4;
}

void sub_10001FA6C(char *a1, size_t a2, const char *a3, const char *a4)
{
  v8 = malloc_type_calloc(1uLL, a2, 0x5E343BA8uLL);
  if (!v8)
  {
    sub_1000215C8();
  }

  v9 = v8;
  v10 = strstr(a1, a3);
  v11 = a1;
  if (v10)
  {
    v12 = v10;
    v11 = a1;
    do
    {
      *v12 = 0;
      if (strlcat(v9, v11, a2) >= a2 || strlcat(v9, a4, a2) >= a2)
      {
        sub_1000215AC();
      }

      v11 = &v12[strlen(a3)];
      v12 = strstr(v11, a3);
    }

    while (v12);
  }

  if (strlcat(v9, v11, a2) >= a2)
  {
    sub_1000215AC();
  }

  strlcpy(a1, v9, a2);

  free(v9);
}

void sub_10001FB80(char *__s2, char *__s1, size_t a3, const char *a4)
{
  if (strstr(__s1, __s2))
  {
    if (*a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "any";
    }

    sub_10001FA6C(__s1, a3, __s2, v8);
  }
}

void sub_10001FC04(char *__s2, char *__s1, size_t a3, int a4, unsigned __int8 *a5)
{
  if (!strstr(__s1, __s2))
  {
    return;
  }

  v10 = a5[40];
  if (v10 <= 1)
  {
    if (a5[40])
    {
      if (v10 != 1)
      {
        goto LABEL_33;
      }

      LOBYTE(v17) = 0;
      v11 = "no-route";
LABEL_11:
      *__str = *v11;
      goto LABEL_35;
    }

    if (a4)
    {
      if (a4 == 2)
      {
        if (!*a5 && !*(a5 + 4))
        {
          goto LABEL_17;
        }
      }

      else if (a4 == 30 && !*a5 && !*(a5 + 1) && !*(a5 + 2) && !*(a5 + 3) && !*(a5 + 4) && !*(a5 + 5) && !*(a5 + 6) && !*(a5 + 7))
      {
        goto LABEL_17;
      }

      if (inet_ntop(a4, a5, v15, 0x30u))
      {
        v12 = sub_100000ACC((a5 + 16));
        if (a4 == 2 && v12 < 32 || a4 == 30 && v12 <= 127)
        {
          snprintf(__str, 0x40uLL, "%s/%d");
        }

        else
        {
          snprintf(__str, 0x40uLL, "%s");
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_17:
    strcpy(__str, "any");
    goto LABEL_35;
  }

  if (v10 == 5)
  {
    v17 = 6579564;
    v11 = "urpf-failed";
    goto LABEL_11;
  }

  if (v10 == 3)
  {
    snprintf(__str, 0x40uLL, "<%s>");
    goto LABEL_35;
  }

  if (v10 != 2)
  {
LABEL_33:
    strcpy(__str, "?");
    goto LABEL_35;
  }

  snprintf(__str, 0x40uLL, "(%s)");
LABEL_35:
  v13 = a5[81];
  v14 = __str;
  if (v13)
  {
    v14 = v15;
    snprintf(v15, 0x42uLL, "! %s", __str);
  }

  sub_10001FA6C(__s1, a3, __s2, v14);
}

void sub_10001FE38(char *__s2, char *__s1, size_t a3, unsigned __int16 *a4)
{
  *&v11[5] = 0;
  *v11 = 0;
  if (strstr(__s1, __s2))
  {
    snprintf(__str, 6uLL, "%u", bswap32(*a4) >> 16);
    snprintf(v9, 6uLL, "%u", bswap32(a4[1]) >> 16);
    v8 = *(a4 + 4);
    if (v8 > 4)
    {
      if (*(a4 + 4) > 6u)
      {
        if (v8 == 7)
        {
          snprintf(v11, 0xDuLL, ">=%s");
        }

        else if (v8 == 8)
        {
          snprintf(v11, 0xDuLL, "%s<>%s");
        }
      }

      else if (v8 == 5)
      {
        snprintf(v11, 0xDuLL, "<=%s");
      }

      else if (v8 == 6)
      {
        snprintf(v11, 0xDuLL, ">%s");
      }
    }

    else if (*(a4 + 4) > 2u)
    {
      if (v8 == 3)
      {
        snprintf(v11, 0xDuLL, "!=%s");
      }

      else if (v8 == 4)
      {
        snprintf(v11, 0xDuLL, "<%s");
      }
    }

    else if (v8 == 1)
    {
      snprintf(v11, 0xDuLL, "%s><%s");
    }

    else if (v8 == 2)
    {
      snprintf(v11, 0xDuLL, "%s");
    }

    sub_10001FA6C(__s1, a3, __s2, v11);
  }
}

void sub_100020028(char *__s2, char *__s1, size_t a3, int a4)
{
  if (strstr(__s1, __s2))
  {
    v8 = getprotobynumber(a4);
    if (v8)
    {
      p_name = v8->p_name;

      sub_10001FA6C(__s1, a3, __s2, p_name);
    }

    else
    {
      snprintf(__str, 4uLL, "%u", a4);
      sub_10001FA6C(__s1, a3, __s2, __str);
    }
  }
}

void sub_1000200E0(char *__s2, char *__s1, size_t a3)
{
  if (strstr(__s1, __s2))
  {
    snprintf(__str, 0xBuLL, "%u", *(*(qword_100030C68 + 1704) + 1756));
    sub_10001FA6C(__s1, a3, __s2, __str);
  }
}

void sub_100020190(char *__s1, size_t a2, const char *a3, int a4, unsigned __int8 *a5, unsigned __int16 *a6, unsigned __int8 *a7, unsigned __int16 *a8, char a9)
{
  sub_10001FB80("$if", __s1, a2, a3);
  sub_10001FC04("$srcaddr", __s1, a2, a4, a5);
  sub_10001FC04("$dstaddr", __s1, a2, a4, a7);
  sub_10001FE38("$srcport", __s1, a2, a6);
  sub_10001FE38("$dstport", __s1, a2, a8);
  sub_100020028("$proto", __s1, a2, a9);

  sub_1000200E0("$nr", __s1, a2);
}

uint64_t sub_1000202A4(unsigned int a1)
{
  if (qword_100031880)
  {
    v2 = dword_100031888++;
    if ((v2 & 0x80000000) == 0)
    {
      result = *(qword_100031880 + v2);
      if (*(qword_100031880 + v2))
      {
        return result;
      }

      qword_100031880 = 0;
    }
  }

  if (dword_100031878)
  {
    v4 = --dword_100031878;
    return byte_10003188C[v4];
  }

  else
  {
    result = getc(*(qword_100030C60 + 16));
    if (a1)
    {
      if (result == -1)
      {
        sub_10001D73C("reached end of file while parsing quoted string");
        if (sub_1000203B4() == -1)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return a1;
        }
      }
    }

    else
    {
      for (; result == 92; result = getc(*(v5 + 16)))
      {
        result = getc(*(qword_100030C60 + 16));
        if (result != 10)
        {
          break;
        }

        v5 = qword_100030C60;
        DWORD2(xmmword_1000315D0) = *(qword_100030C60 + 32);
        *(qword_100030C60 + 32) = DWORD2(xmmword_1000315D0) + 1;
      }

      while (result == -1)
      {
        result = sub_1000203B4();
        if (result == -1)
        {
          break;
        }

        result = getc(*(qword_100030C60 + 16));
      }
    }
  }

  return result;
}

uint64_t sub_1000203B4()
{
  v0 = qword_100030C60;
  v1 = *(qword_100030C60 + 8);
  v2 = **(v1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  *(v2 + 36) += *(qword_100030C60 + 36);
  v3 = *v0;
  if (*v0)
  {
    *(v3 + 8) = v1;
    v1 = *(v0 + 8);
  }

  else
  {
    off_100030B80 = v1;
  }

  *v1 = v3;
  fclose(*(v0 + 16));
  v5 = qword_100030C60;
  free(*(qword_100030C60 + 24));
  free(v5);
  result = 0;
  qword_100030C60 = v2;
  return result;
}

uint64_t sub_10002044C()
{
  qword_100031880 = 0;
  dword_100031878 = 0;
  while (1)
  {
    v0 = sub_1000202A4(0);
    if (v0 == -1)
    {
      break;
    }

    if (v0 == 10)
    {
      ++*(qword_100030C60 + 32);
      return 293;
    }
  }

  return 293;
}

uint64_t sub_1000204A0(int a1, const char *a2)
{
  memset(&v5, 0, sizeof(v5));
  if (fstat(a1, &v5))
  {
    warn("cannot stat %s", a2);
    return 0xFFFFFFFFLL;
  }

  st_uid = v5.st_uid;
  if (v5.st_uid && st_uid != getuid())
  {
    warnx("%s: owner not root or current user");
    return 0xFFFFFFFFLL;
  }

  if ((v5.st_mode & 0x3F) != 0)
  {
    warnx("%s: group/world readable/writeable");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_10002054C(const char *a1, uint64_t a2)
{
  qword_100030C68 = a2;
  dword_100030C78 = 0;
  byte_100030C70 = 0;
  dword_100030BA8 = 1;
  qword_100030C60 = sub_10001D5F8(a1, 0);
  if (qword_100030C60)
  {
    sub_100015820();
    v2 = *(qword_100030C60 + 36);
    sub_1000203B4();
    v3 = off_100030B88;
    if (off_100030B88)
    {
      v4 = qword_100030C68;
      do
      {
        if ((*(v4 + 4) & 0x80) != 0 && !*(v3 + 4))
        {
          fprintf(__stderrp, "warning: macro '%s' not used\n", *(v3 + 3));
          v4 = qword_100030C68;
        }

        free(*(v3 + 3));
        free(*(v3 + 4));
        v5 = *v3;
        v6 = *(v3 + 1);
        if (*v3)
        {
          v7 = *v3;
        }

        else
        {
          v7 = &off_100030B88;
        }

        *(v7 + 1) = v6;
        *v6 = v5;
        free(v3);
        v3 = off_100030B88;
      }

      while (off_100030B88);
    }

    if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    warn("cannot open the main config file!");
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100020670(char *a1)
{
  v2 = strrchr(a1, 61);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = strlen(a1);
  v5 = strlen(v3);
  v6 = malloc_type_malloc(v4 - v5 + 1, 0x6C947A70uLL);
  if (!v6)
  {
    sub_1000215E4();
  }

  v7 = v6;
  v8 = strlen(a1);
  v9 = strlen(v3);
  strlcpy(v7, a1, v8 - v9 + 1);
  v10 = sub_10001D99C(v7, v3 + 1, 1);
  free(v7);
  return v10;
}

uint64_t sub_10002072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &qword_100030B98;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = *(a2 + 4);
    if ((v7 & 4) != 0)
    {
      fprintf(__stderrp, "\nLoading anchor %s from %s\n", v6[2], v6[3]);
      v7 = *(a2 + 4);
    }

    result = sub_1000133DC(a1, v6[3], v7, *(a2 + 8), v6[2], a3);
    if (result == -1)
    {
      return result;
    }
  }

  return 0;
}

void sub_100020FEC()
{
  if (*__error() == 16)
  {
    warnx("Current pool size exceeds requested hard limit");
  }

  else
  {
    warnx("DIOCSETLIMIT");
  }
}

void sub_100021454(void **a1, void *a2)
{
  warn("%s", *a1);
  free(*a1);

  free(a2);
}