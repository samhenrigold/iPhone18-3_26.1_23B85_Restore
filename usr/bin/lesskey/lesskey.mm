void *sub_100000678(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 16;
  return result;
}

void sub_100000688(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v7 = *(a1 + 16);
    if (!v5)
    {
      v7 = *(a1 + 24);
    }

    v8 = v7 + v5;
    if (__CFADD__(v7, v5))
    {
      sub_1000007A8();
    }

    *(a1 + 16) = v8;
    v9 = sub_1000007DC(v8, 1uLL);
    v6 = v9;
    if (*a1)
    {
      memcpy(v9, *a1, *(a1 + 8));
      free(*a1);
    }

    *a1 = v6;
    v4 = *(a1 + 8);
  }

  else
  {
    v6 = *a1;
  }

  *(a1 + 8) = v4 + 1;
  v6[v4] = a2;
}

uint64_t sub_100000728(uint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  v3 = v1 - 1;
  a1[1] = v3;
  return *(v2 + v3);
}

void *sub_1000007DC(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x779B17F1uLL);
  if (!result)
  {
    fwrite("lesskey: cannot allocate memory\n", 0x20uLL, 1uLL, __stderrp);
    exit(1);
  }

  return result;
}

char *sub_100000828(const char *a1)
{
  v2 = getenv("HOME");
  if (!v2 || !*v2)
  {
    fwrite("cannot find $HOME - using current directory\n", 0x2CuLL, 1uLL, __stderrp);
    v2 = ".";
  }

  return sub_10000089C(v2, a1);
}

char *sub_10000089C(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  v6 = sub_1000007DC(v4 + v5 + 2, 1uLL);
  v7 = strcpy(v6, a1);
  *&v6[strlen(v7)] = 47;

  return strcat(v6, a2);
}

uint64_t start(int a1, uint64_t *a2)
{
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  qword_100008018 = 0;
  if (a1 < 2)
  {
    goto LABEL_25;
  }

  v2 = a2;
  v3 = a1;
  v4 = a2;
  while (1)
  {
    v5 = v3 - 1;
    v7 = v4[1];
    ++v4;
    v6 = v7;
    if (*v7 != 45)
    {
      goto LABEL_22;
    }

    v8 = *(v6 + 1);
    if (v8 > 0x55)
    {
      if (v8 != 111)
      {
        if (v8 == 86)
        {
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      v9 = 2;
      goto LABEL_14;
    }

    if (v8 != 45)
    {
      break;
    }

    if (!v6[2])
    {
      v5 = v3 - 2;
      v4 = v2 + 2;
      goto LABEL_22;
    }

    if (strncmp(v6, "--output", 8uLL))
    {
      if (!strcmp(v6, "--version"))
      {
LABEL_48:
        printf("lesskey  version %s\n", "668");
        exit(0);
      }

LABEL_50:
      fwrite("usage: lesskey [-o output] [input]\n", 0x23uLL, 1uLL, __stderrp);
      exit(1);
    }

    if (v6[8] != 61)
    {
      if (v6[8])
      {
        goto LABEL_50;
      }

      qword_100008018 = (v6 + 8);
LABEL_15:
      v5 = v3 - 2;
      if (v3 == 2)
      {
        goto LABEL_50;
      }

      qword_100008018 = v2[2];
      v4 = v2 + 2;
      goto LABEL_17;
    }

    v9 = 9;
LABEL_14:
    qword_100008018 = &v6[v9];
    if (!v6[v9])
    {
      goto LABEL_15;
    }

LABEL_17:
    v2 = v4;
    v3 = v5;
    if (v5 <= 1)
    {
      goto LABEL_25;
    }
  }

  if (v6[1])
  {
    goto LABEL_50;
  }

LABEL_22:
  if (v5 >= 2)
  {
    goto LABEL_50;
  }

  if (v5 == 1)
  {
    qword_100008010 = *v4;
  }

LABEL_25:
  v10 = sub_100000D88(qword_100008010, &v28);
  if (v10)
  {
    fprintf(__stderrp, "%d errors; no output produced\n", v10);
    return 1;
  }

  fwrite("NOTE: lesskey is deprecated.\n      It is no longer necessary to run lesskey,\n      when using less version 582 and later.\n", 0x7AuLL, 1uLL, __stderrp);
  v12 = qword_100008018;
  if (!qword_100008018)
  {
    v12 = getenv("LESSKEY");
    qword_100008018 = v12;
    if (!v12)
    {
      v12 = sub_100000828(".less");
      qword_100008018 = v12;
    }
  }

  v13 = fopen(v12, "wb");
  if (v13)
  {
    v14 = v13;
    v15 = &unk_100001CD8;
    v16 = 4;
    do
    {
      --v16;
      fwrite(v15++, 1uLL, 1uLL, v14);
    }

    while (v16);
    fwrite("cevx", 1uLL, 1uLL, v14);
    sub_100000CF8(v14, *(&v29[0] + 1));
    v17 = sub_10000074C(v29);
    v18 = *(&v29[0] + 1);
    if (*(&v29[0] + 1))
    {
      v19 = v17;
      do
      {
        --v18;
        fwrite(v19++, 1uLL, 1uLL, v14);
      }

      while (v18);
    }

    fwrite("evx", 1uLL, 1uLL, v14);
    sub_100000CF8(v14, *(&v30[0] + 1));
    v20 = sub_10000074C(v30);
    v21 = *(&v30[0] + 1);
    if (*(&v30[0] + 1))
    {
      v22 = v20;
      do
      {
        --v21;
        fwrite(v22++, 1uLL, 1uLL, v14);
      }

      while (v21);
    }

    fwrite("vx", 1uLL, 1uLL, v14);
    sub_100000CF8(v14, *(&v31[0] + 1));
    v23 = sub_10000074C(v31);
    v24 = *(&v31[0] + 1);
    if (*(&v31[0] + 1))
    {
      v25 = v23;
      do
      {
        --v24;
        fwrite(v25++, 1uLL, 1uLL, v14);
      }

      while (v24);
    }

    fwrite("x", 1uLL, 1uLL, v14);
    v26 = "Endcevx";
    v27 = 3;
    do
    {
      --v27;
      fwrite(v26++, 1uLL, 1uLL, v14);
    }

    while (v27);
    fclose(v14);
    return 0;
  }

  else
  {
    sub_100001B28();
    return 1;
  }
}

size_t sub_100000CF8(FILE *__stream, unint64_t a2)
{
  if (a2 >= 0x1000)
  {
    fprintf(__stderrp, "error: cannot write %ld, max %ld\n", a2, 4096);
    exit(1);
  }

  __ptr = a2 & 0x3F;
  v4 = a2 >> 6;
  fwrite(&__ptr, 1uLL, 1uLL, __stream);
  return fwrite(&v4, 1uLL, 1uLL, __stream);
}

uint64_t sub_100000D88(const char *a1, const char ****a2)
{
  if (a1)
  {
    v3 = strdup(a1);
  }

  else
  {
    v3 = sub_100000828(".lesskey");
  }

  qword_100008020 = v3;
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  sub_100000EF8(a2);
  dword_100008028 = 0;
  dword_10000802C = 0;
  if (!dword_100008030)
  {
    dword_100008030 = sub_100000790("668", 0, 10);
  }

  if (*qword_100008020 == 45 && !*(qword_100008020 + 1))
  {
    v4 = __stdinp;
    if (!__stdinp)
    {
      goto LABEL_18;
    }

LABEL_15:
    while (fgets(v6, 1024, v4))
    {
      ++dword_10000802C;
      sub_100000F70(v6, a2);
    }

    if (v4 != __stdinp)
    {
      fclose(v4);
    }

    goto LABEL_18;
  }

  v4 = fopen(qword_100008020, "r");
  if (v4)
  {
    goto LABEL_15;
  }

  dword_100008028 = -1;
LABEL_18:
  free(qword_100008020);
  qword_100008020 = 0;
  return dword_100008028;
}

void *sub_100000EF8(uint64_t a1)
{
  *(a1 + 8) = &off_1000040C8;
  *a1 = a1 + 8;
  *(a1 + 48) = 0;
  sub_100000678((a1 + 16));
  *(a1 + 56) = &off_100004518;
  *(a1 + 96) = 0;
  sub_100000678((a1 + 64));
  *(a1 + 104) = 0;
  *(a1 + 144) = 1;

  return sub_100000678((a1 + 112));
}

void sub_100000F70(char *a1, const char ****a2)
{
  v3 = a1;
  if (!strncmp(a1, "#line-edit", 0xAuLL))
  {
    v8 = a2 + 7;
LABEL_16:
    *a2 = v8;
    return;
  }

  if (!strncmp(v3, "#command", 8uLL))
  {
    v8 = a2 + 1;
    goto LABEL_16;
  }

  if (!strncmp(v3, "#env", 4uLL))
  {
    v8 = a2 + 13;
    goto LABEL_16;
  }

  if (!strncmp(v3, "#stop", 5uLL))
  {
    sub_100000688((*a2 + 1), 0);
    v9 = *a2 + 1;

    sub_100000688(v9, 103);
    return;
  }

  if (strncmp(v3, "#version", 8uLL))
  {
    goto LABEL_67;
  }

  for (i = v3 + 10; ; ++i)
  {
    v5 = *(i - 2);
    v6 = *(i - 2);
    if (v5 != 32 && v6 != 9)
    {
      break;
    }
  }

  v63 = 0;
  if (v6 > 60)
  {
    if (v6 == 61)
    {
      if (*(i - 1) == 61)
      {
        v11 = i;
      }

      else
      {
        v11 = i - 1;
      }

      v12 = 61;
    }

    else
    {
      if (v6 != 62)
      {
        goto LABEL_38;
      }

      v13 = *(i - 1);
      if (v13 == 61)
      {
        v11 = i;
      }

      else
      {
        v11 = i - 1;
      }

      if (v13 == 61)
      {
        v12 = 43;
      }

      else
      {
        v12 = 62;
      }
    }
  }

  else
  {
    if (v6 != 33)
    {
      if (v6 == 60)
      {
        v10 = *(i - 1);
        if (v10 == 61)
        {
          v11 = i;
        }

        else
        {
          v11 = i - 1;
        }

        if (v10 == 61)
        {
          v12 = 45;
        }

        else
        {
          v12 = 60;
        }

        goto LABEL_49;
      }

LABEL_38:
      if ((v6 - 32) > 0x5E)
      {
        snprintf(__str, 8uLL, "\\x%02x", v5);
      }

      else
      {
        __str[0] = v6;
        __str[1] = 0;
      }

      sub_100001644("invalid operator '%s' in #version line", __str);
      goto LABEL_66;
    }

    if (*(i - 1) == 61)
    {
      v11 = i;
    }

    else
    {
      v11 = i - 1;
    }

    v12 = 33;
  }

LABEL_49:
  while (1)
  {
    v14 = *v11;
    if (v14 != 32 && v14 != 9)
    {
      break;
    }

    ++v11;
  }

  v16 = sub_100000790(v11, &v63, 10);
  if (v11 == v63)
  {
    sub_100001644("non-numeric version number in #version line", &unk_10000227E);
  }

  else if (v12 > 59)
  {
    if (v12 == 62)
    {
      if (dword_100008030 > v16)
      {
        goto LABEL_143;
      }
    }

    else if (v12 == 61)
    {
      if (dword_100008030 == v16)
      {
        goto LABEL_143;
      }
    }

    else if (dword_100008030 < v16)
    {
      goto LABEL_143;
    }
  }

  else if (v12 == 33)
  {
    if (dword_100008030 != v16)
    {
      goto LABEL_143;
    }
  }

  else
  {
    if (v12 != 43)
    {
      if (dword_100008030 <= v16)
      {
        goto LABEL_143;
      }

      goto LABEL_66;
    }

    if (dword_100008030 >= v16)
    {
LABEL_143:
      v3 = v63;
      if (!v63)
      {
        return;
      }

      goto LABEL_68;
    }
  }

LABEL_66:
  v3 = 0;
LABEL_67:
  if (!v3)
  {
    return;
  }

LABEL_68:
  while (1)
  {
    LODWORD(v17) = *v3;
    if (v17 != 9 && v17 != 32)
    {
      break;
    }

    ++v3;
  }

  v18 = 0;
  while (v17 > 0x22u)
  {
    if (v17 == 35 && (!v18 || v3[v18 - 1] != 92))
    {
      goto LABEL_81;
    }

LABEL_80:
    v17 = &v3[v18++];
    LOBYTE(v17) = v17[1];
  }

  if (v17 && v17 != 10 && v17 != 13)
  {
    goto LABEL_80;
  }

LABEL_81:
  v3[v18] = 0;
  if (*v3)
  {
    v19 = *a2;
    if (*(*a2 + 10))
    {
      v63 = v3;
      v20 = strchr(v3, 61);
      if (v20 > v3)
      {
        v21 = v20;
        if (*(v20 - 1) == 43)
        {
          sub_100000728(v19 + 1);
          v22 = (v21 + 1);
          v63 = v21 + 1;
LABEL_101:
          while (1)
          {
            v33 = *v22;
            if (v33 != 32 && v33 != 9)
            {
              break;
            }

            ++v22;
          }

          v63 = v22;
          if (*v22)
          {
            do
            {
              v35 = sub_100001774(&v63, 0);
              v36 = *v35;
              if (*v35)
              {
                v37 = (v35 + 1);
                do
                {
                  sub_100000688((*a2 + 1), v36);
                  v38 = *v37++;
                  v36 = v38;
                }

                while (v38);
              }
            }

            while (*v63);
          }

LABEL_156:
          v61 = *a2 + 1;
          v62 = 0;
          goto LABEL_157;
        }
      }

      do
      {
        v23 = sub_100001774(&v63, 0);
        v24 = *v23;
        if (*v23)
        {
          v25 = (v23 + 1);
          do
          {
            sub_100000688((*a2 + 1), v24);
            v26 = *v25++;
            v24 = v26;
          }

          while (v26);
        }

        v22 = v63;
        v27 = *v63;
        v28 = v27 > 0x3D;
        v29 = (1 << v27) & 0x2000000100000201;
      }

      while (v28 || v29 == 0);
      sub_100000688((*a2 + 1), 0);
      do
      {
        v31 = *v22++;
      }

      while (v31 == 32 || v31 == 9);
      v63 = v22;
      if (v31 == 61)
      {
        sub_100000688((*a2 + 1), 129);
        goto LABEL_101;
      }

      v48 = "missing = in variable definition";
LABEL_126:
      sub_100001644(v48, &unk_10000227E);
    }

    else
    {
      v63 = v3;
      do
      {
        v39 = sub_100001774(&v63, 1);
        v40 = *v39;
        if (*v39)
        {
          v41 = (v39 + 1);
          do
          {
            sub_100000688((*a2 + 1), v40);
            v42 = *v41++;
            v40 = v42;
          }

          while (v42);
        }

        v43 = v63;
        v44 = *v63;
        v28 = v44 > 0x20;
        v45 = (1 << v44) & 0x100000201;
      }

      while (v28 || v45 == 0);
      sub_100000688((*a2 + 1), 0);
      while (1)
      {
        v47 = *v43;
        if (v47 != 9 && v47 != 32)
        {
          break;
        }

        ++v43;
      }

      if (!*v43)
      {
        v48 = "missing action";
        goto LABEL_126;
      }

      v49 = v43;
      while (v47 > 0x20 || ((1 << v47) & 0x100000201) == 0)
      {
        v50 = *++v49;
        v47 = v50;
      }

      *v49 = 0;
      v51 = **a2;
      v52 = *v51;
      if (*v51)
      {
        v53 = v51 + 2;
        while (strcmp(v52, v43))
        {
          v54 = *v53;
          v53 += 2;
          v52 = v54;
          if (!v54)
          {
            goto LABEL_135;
          }
        }

        v55 = *(v53 - 2);
      }

      else
      {
LABEL_135:
        sub_100001644("unknown action: %s", v43);
        LOBYTE(v55) = 100;
      }

      *v49 = v47;
      while (v47 == 32 || v47 == 9)
      {
        v56 = *++v49;
        v47 = v56;
      }

      v63 = v49;
      if (v47)
      {
        sub_100000688((*a2 + 1), v55 | 0x80);
        if (*v49)
        {
          do
          {
            v57 = sub_100001774(&v63, 0);
            v58 = *v57;
            if (*v57)
            {
              v59 = (v57 + 1);
              do
              {
                sub_100000688((*a2 + 1), v58);
                v60 = *v59++;
                v58 = v60;
              }

              while (v60);
            }
          }

          while (*v63);
        }

        goto LABEL_156;
      }

      v61 = *a2 + 1;
      v62 = v55;
LABEL_157:
      sub_100000688(v61, v62);
    }
  }
}

uint64_t sub_100001644(const char *a1, uint64_t a2, ...)
{
  v4 = snprintf(__str, 0x400uLL, "%s: line %d: ", qword_100008020, dword_10000802C);
  if (v4 <= 0x3FF)
  {
    snprintf(&__str[v4], 1024 - v4, a1, a2);
  }

  ++dword_100008028;
  return sub_100000754(__str);
}

char *sub_10000170C(char *__str, int a2, int a3)
{
  if (a3 || (a2 - 32) <= 0x5Eu)
  {
    *__str = a2;
    __str[1] = 0;
  }

  else
  {
    snprintf(__str, 8uLL, "\\x%02x", a2);
  }

  return __str;
}

const char *sub_100001774(unsigned __int8 **a1, int a2)
{
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  if (v5 == 94)
  {
    v15 = v4[1];
    v14 = v4 + 1;
    if (v15)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = v14;
    }

    *a1 = v16;
    word_100008034 = *v14 & 0x1F;
    if (word_100008034 != 11 || a2 == 0)
    {
      return &word_100008034;
    }

    else
    {
      return &unk_100008004;
    }
  }

  if (v5 != 92)
  {
    if (**a1)
    {
      ++v3;
    }

    *a1 = v3;
    v18 = *v4;
    goto LABEL_26;
  }

  v6 = v4 + 1;
  v7 = v4[1];
  if (v7 <= 0x61)
  {
    if (v7 - 48 < 8)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v7 + 8 * v8;
        v11 = *++v6;
        LOBYTE(v7) = v11;
        v8 = v10 - 48;
      }

      while ((v11 & 0xF8) == 0x30 && v9++ < 2);
      *a1 = v6;
      if (a2 && v8 == 11)
      {
        return &unk_100008004;
      }

      result = &word_100008034;
      word_100008034 = v8;
      return result;
    }

    goto LABEL_51;
  }

  if (v4[1] > 0x6Du)
  {
    switch(v7)
    {
      case 'n':
        *a1 = v3 + 2;
        return "\n";
      case 'r':
        *a1 = v3 + 2;
        return "\r";
      case 't':
        *a1 = v3 + 2;
        return "\t";
    }

    goto LABEL_51;
  }

  if (v7 == 98)
  {
    *a1 = v3 + 2;
    return "\b";
  }

  if (v7 == 101)
  {
    *a1 = v3 + 2;
    result = &word_100008034;
    word_100008034 = 27;
    return result;
  }

  if (v7 != 107 || a2 == 0)
  {
LABEL_51:
    if (v4[1])
    {
      v25 = v4 + 2;
    }

    else
    {
      v25 = v4 + 1;
    }

    *a1 = v25;
    v18 = *v6;
LABEL_26:
    word_100008034 = v18;
    if (v18 != 11 || a2 == 0)
    {
      return &word_100008034;
    }

    else
    {
      return &unk_100008004;
    }
  }

  v23 = v4[2];
  v22 = v4 + 2;
  v21 = v23;
  if (v23 <= 99)
  {
    if (v21 > 81)
    {
      if (v21 > 87)
      {
        if (v21 == 88)
        {
          v24 = 13;
          goto LABEL_93;
        }

        if (v21 == 98)
        {
          v24 = 17;
          goto LABEL_93;
        }
      }

      else
      {
        if (v21 == 82)
        {
          v24 = 12;
          goto LABEL_93;
        }

        if (v21 == 85)
        {
          v24 = 5;
          goto LABEL_93;
        }
      }
    }

    else if (v21 > 67)
    {
      if (v21 == 68)
      {
        v24 = 6;
        goto LABEL_93;
      }

      if (v21 == 76)
      {
        v24 = 11;
        goto LABEL_93;
      }
    }

    else
    {
      if (v21 == 49)
      {
        v24 = 14;
        goto LABEL_93;
      }

      if (v21 == 66)
      {
        v24 = 16;
        goto LABEL_93;
      }
    }
  }

  else if (v21 <= 107)
  {
    if (v21 > 103)
    {
      if (v21 == 104)
      {
        v24 = 7;
        goto LABEL_93;
      }

      if (v21 == 105)
      {
        v24 = 10;
        goto LABEL_93;
      }
    }

    else
    {
      if (v21 == 100)
      {
        v24 = 4;
        goto LABEL_93;
      }

      if (v21 == 101)
      {
        v24 = 8;
        goto LABEL_93;
      }
    }
  }

  else if (v21 <= 115)
  {
    if (v21 == 108)
    {
      v24 = 2;
      goto LABEL_93;
    }

    if (v21 == 114)
    {
      v24 = 1;
      goto LABEL_93;
    }
  }

  else
  {
    switch(v21)
    {
      case 't':
        v24 = 15;
        goto LABEL_93;
      case 'u':
        v24 = 3;
        goto LABEL_93;
      case 'x':
        v24 = 9;
LABEL_93:
        *a1 = v3 + 3;
        result = &word_100008034;
        LOBYTE(word_100008034) = 11;
        HIBYTE(word_100008034) = v24;
        unk_100008036 = 16843014;
        byte_10000803A = 0;
        return result;
    }
  }

  sub_10000170C(&word_100008034, v21, 0);
  sub_100001644("invalid escape sequence \\k%s", &word_100008034);
  v26 = v22 + 1;
  if (!*v22)
  {
    v26 = v22;
  }

  *a1 = v26;
  return &unk_10000227E;
}