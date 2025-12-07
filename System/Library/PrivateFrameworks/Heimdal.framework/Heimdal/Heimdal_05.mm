uint64_t sub_252288B94(int a1, int a2)
{
  result = fcntl(a1, 3, 0);
  if (result != -1)
  {
    return fcntl(a1, 4, result & 0xFFFFFFFB | (4 * (a2 != 0)));
  }

  return result;
}

uint64_t sub_252288C9C(char *a1, const char *a2)
{
  v13 = 0;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_252288E0C(a2, &v11, &v9, &v10);
  v3 = v10;
  if (v10)
  {
    if (a1)
    {
      sub_252288E0C(a1, &v13, &v12, 0);
      a1 = v13;
      v4 = v12;
      v3 = v10;
    }

    else
    {
      v4 = 0;
    }

    v5 = v11;
    v6 = v9;
    xmmword_27F4D95A0 = 0uLL;
    if (qword_27F4D95B0)
    {
      free(qword_27F4D95B0);
    }

    qword_27F4D95B0 = 0;
    if (a1)
    {
      if (sub_252289158(a1))
      {
        goto LABEL_13;
      }

      WORD1(xmmword_27F4D95A0) = bswap32(v4) >> 16;
      if (asprintf(&qword_27F4D95B0, "http://%s:%d%s", v5, v6, v3) < 0)
      {
        goto LABEL_13;
      }

LABEL_16:
      v7 = 0;
      BYTE1(xmmword_27F4D95A0) = 2;
      goto LABEL_14;
    }

    if (!sub_252289158(v5))
    {
      WORD1(xmmword_27F4D95A0) = bswap32(v6) >> 16;
      asprintf(&qword_27F4D95B0, "%s", v3);
      goto LABEL_16;
    }
  }

  a1 = 0;
LABEL_13:
  v7 = 0xFFFFFFFFLL;
LABEL_14:
  free(a1);
  free(v11);
  free(v10);
  return v7;
}

char *sub_252288E0C(const char *a1, char **a2, _DWORD *a3, char **a4)
{
  v7 = strdup(a1);
  *a2 = v7;
  v8 = strchr(v7, 58);
  if (!v8)
  {
    v9 = v7;
    goto LABEL_5;
  }

  *v8 = 0;
  v9 = v8 + 1;
  if (sscanf(v8 + 1, "%d", a3) != 1)
  {
LABEL_5:
    *a3 = 80;
  }

  result = strchr(v9, 47);
  if (result)
  {
    v11 = result;
    if (a4)
    {
      result = strdup(result);
      *a4 = result;
    }

    *v11 = 0;
  }

  else if (a4)
  {
    *a4 = 0;
  }

  return result;
}

hostent *sub_252288EC4(const char *a1)
{
  result = gethostbyname(a1);
  if (!result)
  {

    return sub_252288F0C(a1);
  }

  return result;
}

uint64_t *sub_252288F0C(const char *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  __s = 0;
  if (!BYTE1(xmmword_27F4D95A0))
  {
    return 0;
  }

  v20 = xmmword_27F4D95A0;
  v1 = 0;
  if (asprintf(&__s, "GET %s?%s HTTP/1.0\r\n\r\n", qword_27F4D95B0, a1) < 0 || !__s)
  {
    return v1;
  }

  v2 = socket(2, 1, 0);
  if (v2 < 0)
  {
    goto LABEL_17;
  }

  v3 = v2;
  rk_socket_set_nopipe(v2, 1);
  if (connect(v3, &v20, 0x10u) < 0 || (v4 = strlen(__s), write(v3, __s, v4) != v4))
  {
    close(v3);
LABEL_17:
    free(__s);
    return 0;
  }

  free(__s);
  v5 = 0;
  do
  {
    v6 = &__s1[v5];
    v7 = read(v3, v6, 1024 - v5);
    v5 += v7;
  }

  while (v7 > 0);
  *v6 = 0;
  close(v3);
  v8 = strstr(__s1, "\r\n\r\n");
  if (!v8)
  {
    return 0;
  }

  __lasts = 0;
  v9 = strtok_r(v8 + 4, " \t\r\n", &__lasts);
  if (!v9)
  {
    return 0;
  }

  v1 = &qword_27F4D95B8;
  qword_27F4D95B8 = v9;
  unk_27F4D95C0 = 0;
  qword_27F4D95C8 = 0x400000002;
  v10 = strtok_r(0, " \t\r\n", &__lasts);
  if (v10)
  {
    v11 = 0;
    v12 = &unk_27F4D9620;
    v13 = &byte_27F4D95D8;
    do
    {
      v16.s_addr = 0;
      inet_aton(v10, &v16);
      v14 = bswap32(v16.s_addr);
      *v13 = HIBYTE(v14);
      v13[1] = BYTE2(v14);
      v13[2] = BYTE1(v14);
      v13[3] = v14;
      *(v12 - 1) = v13;
      *v12 = 0;
      v10 = strtok_r(0, " \t\r\n", &__lasts);
      if (v11 > 0xE)
      {
        break;
      }

      ++v11;
      ++v12;
      v13 += 4;
    }

    while (v10);
  }

  qword_27F4D95D0 = &qword_27F4D9618;
  return v1;
}

uint64_t sub_252289158(const char *a1)
{
  if (inet_aton(a1, &xmmword_27F4D95A0 + 1))
  {
    return 0;
  }

  v3 = gethostbyname(a1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  result = 0;
  DWORD1(xmmword_27F4D95A0) = bswap32(**v4->h_addr_list);
  return result;
}

void rtbl_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 16) + 8 * v2);
      if (*(v3 + 24))
      {
        v4 = 0;
        do
        {
          free(*(*(v3 + 32) + 8 * v4++));
        }

        while (v4 < *(v3 + 24));
      }

      free(*(v3 + 32));
      free(*v3);
      free(*(v3 + 8));
      free(*(v3 + 48));
      free(v3);
      ++v2;
    }

    while (v2 < *(a1 + 8));
  }

  free(*a1);
  free(*(a1 + 32));
  free(*(a1 + 16));

  free(a1);
}

uint64_t rtbl_add_column_by_id(uint64_t a1, int a2, const char *a3, int a4)
{
  v8 = malloc_type_realloc(*(a1 + 16), 8 * *(a1 + 8) + 8, 0x2004093837F09uLL);
  if (v8)
  {
    *(a1 + 16) = v8;
    v9 = malloc_type_malloc(0x38uLL, 0x10300402987294FuLL);
    if (v9)
    {
      v10 = v9;
      v11 = strdup(a3);
      *v10 = v11;
      if (v11)
      {
        result = 0;
        v10[1] = 0;
        *(v10 + 4) = 0;
        *(v10 + 5) = a4;
        v10[3] = 0;
        v10[4] = 0;
        *(v10 + 10) = a2;
        v10[6] = 0;
        v14 = *(a1 + 8);
        v13 = *(a1 + 16);
        *(a1 + 8) = v14 + 1;
        *(v13 + 8 * v14) = v10;
        return result;
      }

      free(v10);
    }
  }

  return 12;
}

uint64_t rtbl_new_row(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 16);
      if (*(*(v5 + 8 * v3) + 24) > v4)
      {
        v4 = *(*(v5 + 8 * v3) + 24);
      }

      ++v3;
    }

    while (v1 != v3);
    v6 = 0;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(v7 + 8 * v6);
      if (*(v8 + 24) != v4)
      {
        v9 = malloc_type_realloc(*(v8 + 32), 8 * v4, 0x10040436913F5uLL);
        if (!v9)
        {
          return 12;
        }

        v10 = v9;
        v7 = *(a1 + 16);
        *(*(v7 + 8 * v6) + 32) = v9;
        while (1)
        {
          v11 = *(v7 + 8 * v6);
          v12 = *(v11 + 24);
          if (v12 >= v4)
          {
            break;
          }

          v13 = strdup("");
          *(v11 + 24) = v12 + 1;
          v10[v12] = v13;
          if (!v13)
          {
            return 12;
          }
        }

        v1 = *(a1 + 8);
      }

      if (++v6 >= v1)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t rtbl_set_prefix(char **a1, char *__s1)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *a1 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t rtbl_set_separator(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *(a1 + 32) = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t rtbl_set_column_prefix(uint64_t a1, char *a2, const char *a3)
{
  v4 = sub_25228959C(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = v4[1];
  if (v6)
  {
    free(v6);
  }

  v7 = strdup(a3);
  v5[1] = v7;
  if (v7)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

const char **sub_25228959C(uint64_t a1, char *__s2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 16); ; ++i)
  {
    v5 = *i;
    if (!strcmp(**i, __s2))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t rtbl_set_column_affix_by_id(uint64_t a1, int a2, char *__s1, const char *a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = *(a1 + 16); ; ++i)
  {
    v8 = *i;
    if (*(*i + 40) == a2)
    {
      break;
    }

    if (!--v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v10 = *(v8 + 8);
  if (v10)
  {
    free(v10);
  }

  if (__s1)
  {
    v11 = strdup(__s1);
    *(v8 + 8) = v11;
    if (!v11)
    {
      return 12;
    }
  }

  else
  {
    *(v8 + 8) = 0;
  }

  v12 = *(v8 + 48);
  if (v12)
  {
    free(v12);
  }

  if (a4)
  {
    v13 = strdup(a4);
    *(v8 + 48) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  else
  {
    *(v8 + 48) = 0;
  }

  return 0;
}

uint64_t rtbl_add_column_entry_by_id(uint64_t a1, int a2, char *__s1)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = *(a1 + 16); *(*i + 40) != a2; ++i)
  {
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return sub_2522896F0(*i, __s1);
}

uint64_t sub_2522896F0(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  if (v3)
  {
    v4 = v3;
    v5 = malloc_type_realloc(*(a1 + 32), 8 * *(a1 + 24) + 8, 0x10040436913F5uLL);
    if (v5)
    {
      v6 = v5;
      result = 0;
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(a1 + 32) = v6;
      v6[v8] = v4;
      return result;
    }

    free(v4);
  }

  return 12;
}

uint64_t rtbl_add_column_entryv_by_id(uint64_t a1, int a2, char *a3, ...)
{
  va_start(va, a3);
  __s1[0] = 0;
  va_copy(&__s1[1], va);
  if (vasprintf(__s1, a3, va) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = rtbl_add_column_entry_by_id(a1, a2, __s1[0]);
  free(__s1[0]);
  return v5;
}

uint64_t rtbl_add_column_entry(uint64_t a1, char *a2, char *a3)
{
  v4 = sub_25228959C(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  return sub_2522896F0(v4, a3);
}

uint64_t rtbl_add_column_entryv(uint64_t a1, char *a2, char *a3, ...)
{
  va_start(va, a3);
  __s1[0] = 0;
  va_copy(&__s1[1], va);
  if (vasprintf(__s1, a3, va) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sub_25228959C(a1, a2);
  if (v5)
  {
    v6 = sub_2522896F0(v5, __s1[0]);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  free(__s1[0]);
  return v6;
}

uint64_t rtbl_format(uint64_t a1, FILE *a2)
{
  v3 = rtbl_format_str(a1);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  fputs(v3, a2);
  free(v4);
  return 0;
}

char *rtbl_format_str(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 2) != 0)
  {
    v20 = rk_strpoolprintf(0, "[");
    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x277D85DE0];
      do
      {
        v24 = *(a1 + 16);
        while (*(*v24 + 24) <= v22)
        {
          v24 += 8;
          if (!--v21)
          {
            goto LABEL_54;
          }
        }

        if (v22)
        {
          v25 = ",";
        }

        else
        {
          v25 = "";
        }

        v26 = rk_strpoolprintf(v20, "%s{", v25);
        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = 0;
          v29 = 0;
          do
          {
            v30 = *(*(a1 + 16) + 8 * v28);
            if (v30[3] > v22)
            {
              v31 = *v30 - 1;
              do
              {
                v32 = *(v31 + 1);
                if ((v32 & 0x80000000) != 0)
                {
                  v33 = __maskrune(v32, 0x4000uLL);
                }

                else
                {
                  v33 = *(v23 + 4 * v32 + 60) & 0x4000;
                }

                ++v31;
              }

              while (v33);
              if (v29)
              {
                v34 = ",";
              }

              else
              {
                v34 = "";
              }

              v26 = rk_strpoolprintf(v26, "%s%s : %s", v34, v31, *(v30[4] + 8 * v22));
              v27 = *(a1 + 8);
              v29 = 1;
            }

            ++v28;
          }

          while (v28 < v27);
        }

        v20 = rk_strpoolprintf(v26, "}");
        ++v22;
        v21 = *(a1 + 8);
      }

      while (v21);
    }

LABEL_54:
    v35 = rk_strpoolprintf(v20, "]");
  }

  else
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = *(a1 + 16);
      do
      {
        v6 = *(v5 + 8 * v4);
        if (v2)
        {
          v7 = 0;
        }

        else
        {
          v7 = strlen(*v6);
        }

        *(v6 + 16) = v7;
        v8 = *(v6 + 24);
        if (v8)
        {
          v9 = *(v6 + 32);
          do
          {
            v10 = *v9++;
            v11 = strlen(v10);
            if (v7 <= v11)
            {
              v7 = v11;
            }

            *(v6 + 16) = v7;
            --v8;
          }

          while (v8);
        }

        ++v4;
      }

      while (v4 != v3);
      if ((v2 & 1) == 0)
      {
        v12 = 0;
        v13 = 0;
        while (1)
        {
          v14 = *(*(a1 + 16) + 8 * v13);
          if (v13 && *(a1 + 32))
          {
            v12 = rk_strpoolprintf(v12, "%s", *(a1 + 32));
          }

          if (v14)
          {
            v15 = *(v14 + 8);
            if (!v15)
            {
              v15 = *a1;
              if (!*a1)
              {
                v15 = "";
              }
            }

            v16 = rk_strpoolprintf(v12, "%s", v15);
            if (v13 != *(a1 + 8) - 1 || (v17 = *(v14 + 48)) != 0)
            {
              LODWORD(v17) = *(v14 + 16);
            }

            v18 = rk_strpoolprintf(v16, "%-*s", v17, *v14);
            v19 = *(v14 + 48);
            if (v19)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v18 = rk_strpoolprintf(v12, "%s", "");
          }

          v19 = "";
LABEL_29:
          v12 = rk_strpoolprintf(v18, "%s", v19);
          if (++v13 >= *(a1 + 8))
          {
            goto LABEL_59;
          }
        }
      }

      v35 = 0;
LABEL_62:
      v37 = 0;
      do
      {
        v38 = *(a1 + 16);
        while (*(*v38 + 24) <= v37)
        {
          v38 += 8;
          if (!--v3)
          {
            goto LABEL_55;
          }
        }

        v39 = 0;
        do
        {
          v40 = *(*(a1 + 16) + 8 * v39);
          if (v39 && *(a1 + 32))
          {
            v35 = rk_strpoolprintf(v35, "%s", *(a1 + 32));
          }

          v41 = *(v40 + 16);
          if ((*(v40 + 20) & 1) == 0)
          {
            if (v39 == *(a1 + 8) - 1 && !*(v40 + 48))
            {
              v41 = 0;
            }

            else
            {
              v41 = -v41;
            }
          }

          v42 = *(v40 + 8);
          if (!v42)
          {
            v42 = *a1;
            if (!*a1)
            {
              v42 = "";
            }
          }

          rk_strpoolprintf(v35, "%s", v42);
          if (*(v40 + 24) <= v37)
          {
            v43 = rk_strpoolprintf(v35, "%*s", v41, "");
          }

          else
          {
            v43 = rk_strpoolprintf(v35, "%*s", v41, *(*(v40 + 32) + 8 * v37));
          }

          v44 = *(v40 + 48);
          if (!v44)
          {
            v44 = "";
          }

          v45 = rk_strpoolprintf(v43, "%s", v44);
          v35 = v45;
          ++v39;
        }

        while (v39 < *(a1 + 8));
        v35 = rk_strpoolprintf(v45, "\n");
        ++v37;
        v3 = *(a1 + 8);
      }

      while (v3);
      goto LABEL_55;
    }

    v12 = 0;
    v35 = 0;
    if (v2)
    {
      goto LABEL_55;
    }

LABEL_59:
    v35 = rk_strpoolprintf(v12, "\n");
    v3 = *(a1 + 8);
    if (v3)
    {
      goto LABEL_62;
    }
  }

LABEL_55:

  return rk_strpoolcollect(v35);
}

uint64_t rk_dumpdata(const char *a1, char *a2, size_t a3)
{
  result = open(a1, 1537, 416);
  if ((result & 0x80000000) == 0)
  {
    v6 = result;
    sub_2522874D8(result, a2, a3);

    return close(v6);
  }

  return result;
}

uint64_t rk_undumpdata(const char *a1, void **a2, off_t *a3)
{
  memset(&v12, 0, sizeof(v12));
  *a2 = 0;
  v5 = open(a1, 0, 0);
  if (v5 < 0)
  {
    return *__error();
  }

  v6 = v5;
  if (!fstat(v5, &v12))
  {
    v9 = malloc_type_malloc(v12.st_size, 0xB7008BDAuLL);
    *a2 = v9;
    if (!v9)
    {
      v7 = 12;
      goto LABEL_4;
    }

    st_size = v12.st_size;
    *a3 = v12.st_size;
    v11 = sub_252287454(v6, v9, st_size);
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 == *a3)
      {
        v7 = 0;
      }

      else
      {
        free(*a2);
        *a2 = 0;
        v7 = 22;
      }

      goto LABEL_4;
    }
  }

  v7 = *__error();
LABEL_4:
  close(v6);
  return v7;
}

BOOL ct_memcmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    v3 |= v6 ^ v4;
    --a3;
  }

  while (a3);
  return v3 != 0;
}

char *rk_cfstring2cstring(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return strdup(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x7F80866BuLL);
    if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }

    return v6;
  }
}

uint64_t wind_utf8ucs4(char *a1, uint64_t a2, unint64_t *a3)
{
  v9 = a1;
  if (*a1)
  {
    v5 = 0;
    while (1)
    {
      v8 = 0;
      result = sub_25228A04C(&v9, &v8);
      if (result)
      {
        break;
      }

      if (a2)
      {
        if (v5 >= *a3)
        {
          return 3325697538;
        }

        *(a2 + 4 * v5) = v8;
      }

      ++v5;
      if (!*++v9)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_10:
    result = 0;
    *a3 = v5;
  }

  return result;
}

uint64_t sub_25228A04C(char **a1, int *a2)
{
  v2 = *a1;
  v3 = **a1;
  if ((**a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = 3325697542;
  if ((v3 & 0xE0) == 0xC0)
  {
    v7 = *++v2;
    v6 = v7;
    if ((v7 & 0xC0) != 0x80)
    {
      return v4;
    }

    v3 = v6 & 0x3F | ((v3 & 0x1F) << 6);
    goto LABEL_2;
  }

  if ((v3 & 0xF0) == 0xE0)
  {
    v8 = v2[1];
    if ((v8 & 0xC0) == 0x80)
    {
      v10 = v2[2];
      v2 += 2;
      v9 = v10;
      if ((v10 & 0xC0) == 0x80)
      {
        v3 = ((v3 & 0xF) << 12) | ((v8 & 0x3F) << 6) | v9 & 0x3F;
LABEL_2:
        v4 = 0;
        *a2 = v3;
        *a1 = v2;
      }
    }
  }

  else if ((v3 & 0xF8) == 0xF0)
  {
    v11 = v2[1];
    if ((v11 & 0xC0) == 0x80)
    {
      v12 = v2[2];
      if ((v12 & 0xC0) == 0x80)
      {
        v14 = v2[3];
        v2 += 3;
        v13 = v14;
        if ((v14 & 0xC0) == 0x80)
        {
          v3 = ((v3 & 7) << 18) | ((v11 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v13 & 0x3F;
          goto LABEL_2;
        }
      }
    }
  }

  return v4;
}

uint64_t wind_utf8ucs4_copy(char *a1, void **a2, unint64_t *a3)
{
  v6 = wind_utf8ucs4(a1, 0, a3);
  if (!v6)
  {
    v7 = *a3;
    if (!(*a3 >> 30))
    {
      if (!v7)
      {
        return 0;
      }

      v8 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
      *a2 = v8;
      if (v8)
      {
        v6 = wind_utf8ucs4(a1, v8, a3);
        if (!v6)
        {
          return v6;
        }

        free(*a2);
        *a2 = 0;
      }

      else
      {
        v6 = 12;
      }

      *a3 = 0;
      return v6;
    }

    return 34;
  }

  return v6;
}

uint64_t wind_ucs4utf8(unsigned int *a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  result = 3325697538;
  v6 = 0;
  if (a2)
  {
    while (1)
    {
      v8 = *a1++;
      v7 = v8;
      if (v8 >= 0x80)
      {
        if (v7 >= 0x800)
        {
          if (v7 >= 0x10000)
          {
            if (HIWORD(v7) > 0x10u)
            {
              return 3325697544;
            }

            v9 = 4u;
          }

          else
          {
            v9 = 3u;
          }
        }

        else
        {
          v9 = 2u;
        }
      }

      else
      {
        v9 = 1u;
      }

      v6 += v9;
      if (a3)
      {
        break;
      }

LABEL_20:
      if (!--a2)
      {
        goto LABEL_21;
      }
    }

    if (v6 >= *a4)
    {
      return result;
    }

    if (v9 > 2)
    {
      if (v9 != 3)
      {
        a3[3] = v7 & 0x3F | 0x80;
        LOBYTE(v7) = v7 << 6;
      }

      v10 = v7 & 0x3F | 0x80;
      LOBYTE(v7) = 0;
      a3[2] = v10;
    }

    else if (v9 == 1)
    {
      goto LABEL_19;
    }

    a3[1] = v7 & 0x3F | 0x80;
    LOBYTE(v7) = v7 << 6;
LABEL_19:
    *a3 = *(&unk_2522AA088 + v9 - 1) | v7;
    a3 += v9;
    goto LABEL_20;
  }

LABEL_21:
  if (a3)
  {
    if (v6 >= *a4)
    {
      return result;
    }

    *a3 = 0;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t wind_ucs4utf8_copy(unsigned int *a1, uint64_t a2, void **a3, void *a4)
{
  v12 = 0;
  v8 = wind_ucs4utf8(a1, a2, 0, &v12);
  if (!v8)
  {
    v10 = malloc_type_malloc(++v12, 0x3C28EB5CuLL);
    *a3 = v10;
    if (v10)
    {
      v11 = wind_ucs4utf8(a1, a2, v10, &v12);
      if (v11)
      {
        v8 = v11;
        free(*a3);
        *a3 = 0;
      }

      else
      {
        v8 = 0;
        if (a4)
        {
          *a4 = v12;
        }
      }
    }

    else
    {
      return 12;
    }
  }

  return v8;
}

uint64_t sub_25228A3C8(unsigned __int16 *a1, uint64_t a2, unsigned int *a3, _WORD *a4, uint64_t *a5)
{
  if (!a2)
  {
    v15 = 0;
LABEL_30:
    result = 0;
    *a5 = v15;
    return result;
  }

  result = 3325697538;
  if (a2)
  {
    return 3325697540;
  }

  v7 = *a3;
  v8 = *a3 & 1;
  v9 = *a5;
  v10 = *a5;
  if ((*a3 & 4) == 0)
  {
    goto LABEL_21;
  }

  v11 = __rev16(*a1);
  if (v11 == 65279 || v11 == 65534)
  {
    v8 = v11 == 65534;
    v13 = v7 & 0xFFFFFFF8;
    if (v11 == 65534)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    *a3 = v14 | v13;
    a2 -= 2;
    if (a2)
    {
      ++a1;
      goto LABEL_21;
    }

LABEL_29:
    v15 = v9 - v10;
    goto LABEL_30;
  }

  if ((v7 & 3) == 0)
  {
    return 3325697545;
  }

  v16 = v7 & 0xFFFFFFF8;
  if (v8)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  *a3 = v17 | v16;
LABEL_21:
  while (v10)
  {
    if (v8)
    {
      v18 = a1;
    }

    else
    {
      v18 = (a1 + 1);
    }

    if (v8)
    {
      v19 = (a1 + 1);
    }

    else
    {
      v19 = a1;
    }

    *a4++ = *v18 | (*v19 << 8);
    ++a1;
    --v10;
    a2 -= 2;
    if (!a2)
    {
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t wind_utf8ucs2(char *a1, uint64_t a2, unint64_t *a3)
{
  v11 = a1;
  if (*a1)
  {
    v5 = 0;
    v6 = 3325697538;
    while (1)
    {
      v10 = 0;
      v7 = sub_25228A04C(&v11, &v10);
      if (v7)
      {
        return v7;
      }

      if (HIWORD(v10))
      {
        return 3325697546;
      }

      if (a2)
      {
        if (v5 >= *a3)
        {
          return v6;
        }

        *(a2 + 2 * v5) = v10;
      }

      ++v5;
      if (!*++v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = 0;
LABEL_11:
    v6 = 0;
    *a3 = v5;
  }

  return v6;
}

uint64_t wind_ucs2utf8(unsigned __int16 *a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  for (i = 0; a2; --a2)
  {
    v6 = *a1++;
    v5 = v6;
    if (v6 < 0x800)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (v5 < 0x80)
    {
      v7 = 1;
    }

    i += v7;
    if (a3)
    {
      if (i >= *a4)
      {
        return 3325697538;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
          v8 = v5 & 0x3F | 0x80;
          LOBYTE(v5) = 0;
          a3[2] = v8;
        }

        a3[1] = v5 & 0x3F | 0x80;
        LOBYTE(v5) = v5 << 6;
      }

      *a3 = *(&unk_2522AA088 + v7 - 1) | v5;
      a3 += v7;
    }
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if (i < *a4)
  {
    *a3 = 0;
LABEL_18:
    result = 0;
    *a4 = i;
    return result;
  }

  return 3325697538;
}

uint64_t sub_25228A8C0(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x46395AD9uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t sub_25228ADF8(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x75E6E7B7uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

const char *__cdecl error_message(errcode_t code)
{
  v2 = com_right(qword_27F4D9838, code);
  if (!v2)
  {
    if (code < 0)
    {
      snprintf(byte_27F4D96A0, 0x80uLL, "Unknown error %ld", code);
      goto LABEL_8;
    }

    v2 = strerror(code);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!*v2)
  {
LABEL_8:
    snprintf(byte_27F4D96A0, 0x80uLL, "Unknown error %ld", code);
    return byte_27F4D96A0;
  }

  __strlcpy_chk();
  return byte_27F4D96A0;
}

com_err_handler_t set_com_err_hook(com_err_handler_t handler)
{
  v1 = off_280C4E908;
  if (handler)
  {
    v2 = handler;
  }

  else
  {
    v2 = sub_25228BEFC;
  }

  off_280C4E908 = v2;
  return v1;
}

size_t sub_25228BEFC(const char *a1, errcode_t code, char *a3, va_list a4)
{
  v7 = MEMORY[0x277D85DF8];
  if (a1)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: ", a1);
  }

  if (code)
  {
    v8 = *v7;
    error_message(code);
    fprintf(v8, "%s ", byte_27F4D96A0);
  }

  if (a3)
  {
    vfprintf(*v7, a3, a4);
  }

  v9 = *v7;

  return fwrite("\r\n", 2uLL, 1uLL, v9);
}

com_err_handler_t reset_com_err_hook(void)
{
  result = off_280C4E908;
  off_280C4E908 = sub_25228BEFC;
  return result;
}

void *com_right(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      v2 = result[1];
      v3 = *(v2 + 8);
      if (a2 >= v3 && v3 + *(v2 + 16) > a2)
      {
        break;
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    return *(*v2 + 8 * (a2 - v3));
  }

  return result;
}

char *com_right_r(void *a1, uint64_t a2, char *__dst, size_t __size)
{
  if (!a1)
  {
    return 0;
  }

  v4 = __dst;
  while (1)
  {
    v5 = a1[1];
    v6 = *(v5 + 8);
    v7 = a2 - v6;
    if (a2 >= v6 && v6 + *(v5 + 16) > a2)
    {
      break;
    }

    a1 = *a1;
    if (!a1)
    {
      return 0;
    }
  }

  v9 = *(*v5 + 8 * v7);
  if (v9)
  {
    strlcpy(__dst, v9, __size);
  }

  else
  {
    snprintf(__dst, __size, "Reserved error code %ld in base %ld", v7, v6);
  }

  return v4;
}

void *initialize_error_table_r(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result;
  while (1)
  {
    v8 = *v7;
    if (!*v7)
    {
      break;
    }

    v7 = *v7;
    if (*v8[1] == a2)
    {
      return result;
    }
  }

  result = malloc_type_malloc(0x28uLL, 0x10E00406AA87185uLL);
  if (result)
  {
    result[2] = a2;
    *(result + 8) = a3;
    result[3] = a4;
    *result = 0;
    result[1] = result + 2;
    *v7 = result;
  }

  return result;
}

void *sub_25228C138(void *result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t hx509_ca_tbs_init(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10B004050FA1AF2uLL);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

void hx509_ca_tbs_free(void ***a1)
{
  if (a1)
  {
    if (*a1)
    {
      free_SubjectPublicKeyInfo((*a1 + 1));
      sub_2522A1E98((*a1 + 8));
      sub_2522A2148((*a1 + 6));
      der_free_heim_integer();
      sub_2522A2218((*a1 + 18));
      der_free_bit_string();
      der_free_bit_string();
      hx509_name_free(*a1);
      v2 = *a1;
      *(v2 + 10) = 0u;
      *(v2 + 11) = 0u;
      *(v2 + 8) = 0u;
      *(v2 + 9) = 0u;
      *(v2 + 6) = 0u;
      *(v2 + 7) = 0u;
      *(v2 + 4) = 0u;
      *(v2 + 5) = 0u;
      *(v2 + 2) = 0u;
      *(v2 + 3) = 0u;
      *v2 = 0u;
      *(v2 + 1) = 0u;
      free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t hx509_ca_tbs_set_template(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (*a2)
    {
      hx509_name_free(a2);
    }

    subject = hx509_cert_get_subject(a4, a2);
    if (subject)
    {
      SPKI = subject;
      hx509_set_error_string(a1, 0, subject, "Failed to get subject from template");
      return SPKI;
    }
  }

  if ((a3 & 2) != 0)
  {
    der_free_heim_integer();
    serialnumber = hx509_cert_get_serialnumber(a4, a2 + 88);
    *(a2 + 112) = *(a2 + 112) & 0xF7 | (8 * (serialnumber == 0));
    if (serialnumber)
    {
      SPKI = serialnumber;
      hx509_set_error_string(a1, 0, serialnumber, "Failed to copy serial number");
      return SPKI;
    }
  }

  if ((a3 & 4) != 0)
  {
    *(a2 + 120) = hx509_cert_get_notBefore(a4);
    if ((a3 & 8) == 0)
    {
LABEL_12:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_12;
  }

  *(a2 + 128) = hx509_cert_get_notAfter(a4);
  if ((a3 & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  free_SubjectPublicKeyInfo(a2 + 8);
  SPKI = hx509_cert_get_SPKI(a1, a4, a2 + 8);
  *(a2 + 112) = *(a2 + 112) & 0xFB | (4 * (SPKI == 0));
  if (SPKI)
  {
    return SPKI;
  }

LABEL_17:
  if ((a3 & 0x20) != 0)
  {
    LODWORD(v16) = 0;
    v11 = sub_2522910D4(a1, a4, &v16);
    if (v11)
    {
      return v11;
    }

    *(a2 + 80) = sub_2522A1F78(v16);
  }

  if ((a3 & 0x40) == 0)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  SPKI = sub_252291160(a1, a4, &v16);
  if (SPKI)
  {
    return SPKI;
  }

  if (!v16)
  {
LABEL_27:
    sub_2522A2148(&v16);
    return 0;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = hx509_ca_tbs_add_eku(a1, a2, v17 + v12);
    if (v14)
    {
      break;
    }

    ++v13;
    v12 += 16;
    if (v13 >= v16)
    {
      goto LABEL_27;
    }
  }

  SPKI = v14;
  sub_2522A2148(&v16);
  return SPKI;
}

uint64_t hx509_ca_tbs_add_eku(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 48))
  {
    v5 = 0;
    v6 = 0;
    while (der_heim_oid_cmp())
    {
      ++v6;
      v7 = *(a2 + 48);
      v5 += 16;
      if (v6 >= v7)
      {
        v8 = 16 * (v7 + 1);
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
    v8 = 16;
LABEL_7:
    v9 = malloc_type_realloc(*(a2 + 56), v8, 0x1010040466105CCuLL);
    if (v9)
    {
      *(a2 + 56) = v9;
      v10 = der_copy_oid();
      if (v10)
      {
        hx509_set_error_string(a1, 0, v10, "out of memory");
      }

      else
      {
        ++*(a2 + 48);
      }
    }

    else
    {
      v10 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory");
    }
  }

  return v10;
}

uint64_t hx509_ca_tbs_set_ca(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 112) |= 2u;
  *(a2 + 136) = a3;
  return 0;
}

uint64_t hx509_ca_tbs_set_proxy(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 112) |= 1u;
  *(a2 + 136) = a3;
  return 0;
}

uint64_t hx509_ca_tbs_set_spki(uint64_t a1, uint64_t a2, uint64_t a3)
{
  free_SubjectPublicKeyInfo(a2 + 8);
  result = copy_SubjectPublicKeyInfo(a3, a2 + 8);
  *(a2 + 112) = *(a2 + 112) & 0xFB | (4 * (result == 0));
  return result;
}

uint64_t hx509_ca_tbs_set_serialnumber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  der_free_heim_integer();
  result = der_copy_heim_integer();
  *(a2 + 112) = *(a2 + 112) & 0xF7 | (8 * (result == 0));
  return result;
}

uint64_t hx509_ca_tbs_add_crl_dp_uri(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v25[1] = 0;
  v25[2] = 0;
  v8 = sub_25228719C(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  v25[0] = v8;
  v22[0] = 0u;
  v21 = 0;
  v24[0] = 1;
  v24[1] = 1;
  v24[2] = v22;
  LODWORD(v22[0]) = 5;
  v23 = 0;
  v22[1] = a3;
  *(&v22[0] + 1) = strlen(a3);
  v9 = sub_2522A2198(v24);
  *v8 = v9;
  v10 = malloc_type_malloc(v9, 0xE2298F3CuLL);
  v8[1] = v10;
  if (!v10)
  {
    v19 = 12;
    goto LABEL_5;
  }

  v11 = sub_2522A2178(v10 + *v8 - 1, *v8, v24, &v21);
  if (v11)
  {
    v19 = v11;
    free(*(v25[0] + 8));
    *(v25[0] + 8) = 0;
LABEL_5:
    hx509_set_error_string(a1, 0, v19, "Failed to encoded DistributionPointName");
    goto LABEL_6;
  }

  if (*v25[0] != v21)
  {
    sub_25229126C("internal ASN.1 encoder error", v12, v13, v14, v15, v16, v17, v18);
  }

  if (a4)
  {
    v19 = 22;
    hx509_set_error_string(a1, 0, 22, "CRLDistributionPoints.name.issuername not yet supported");
    return v19;
  }

  v19 = sub_2522A2228((a2 + 144), v25);
  if (v19)
  {
    hx509_set_error_string(a1, 0, v19, "out of memory");
  }

LABEL_6:
  sub_2522A21B8(v25);
  return v19;
}

uint64_t hx509_ca_tbs_add_san_otherName(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v6 = 1;
  v4 = *a4;
  v7 = *a3;
  v8 = v4;
  return sub_2522A1EA8((a2 + 64), &v6);
}

uint64_t hx509_ca_tbs_add_san_pkinit(uint64_t a1, uint64_t a2, const char *a3)
{
  v31 = 0;
  v32 = 0u;
  *v33 = 0u;
  v6 = 1;
  for (i = a3; ; ++i)
  {
    v8 = *i;
    if (v8 > 0x3F)
    {
      break;
    }

    if (v8 == 47)
    {
      ++v6;
    }

    else if (!*i)
    {
      goto LABEL_12;
    }

LABEL_11:
    ;
  }

  if (v8 == 92)
  {
    v9 = *++i;
    if ((v9 | 0x40) != 0x40)
    {
      goto LABEL_11;
    }

    v29 = 569968;
    hx509_set_error_string(a1, 0, 569968, "trailing \\ in principal name");
LABEL_22:
    v13 = 0;
    goto LABEL_27;
  }

  if (v8 != 64)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = malloc_type_calloc(v6, 8uLL, 0x10040436913F5uLL);
  v33[1] = v10;
  if (!v10)
  {
    v29 = 12;
    hx509_set_error_string(a1, 0, 12, "malloc: out of memory");
    goto LABEL_22;
  }

  v11 = v10;
  LODWORD(v33[0]) = v6;
  DWORD2(v32) = 1;
  v12 = strdup(a3);
  v13 = v12;
  if (v12)
  {
    v14 = strrchr(v12, 64);
    *&v32 = v14;
    if (v14)
    {
      *&v32 = v14 + 1;
      *v14 = 0;
      *v11 = v13;
      v15 = strchr(v13, 47);
      if (v15)
      {
        v16 = v11 + 1;
        do
        {
          *v15 = 0;
          v17 = v15 + 1;
          *v16++ = v17;
          v15 = strchr(v17, 47);
        }

        while (v15);
      }

      v18 = sub_25228BB94(&v32);
      v19 = malloc_type_malloc(v18, 0xD435376BuLL);
      if (v19)
      {
        v20 = v19;
        v21 = sub_25228BB74(v19 + v18 - 1, v18, &v32, &v31);
        if (v21)
        {
          v29 = v21;
          free(v20);
          goto LABEL_26;
        }

        if (v31 != v18)
        {
          sub_25229126C("internal ASN.1 encoder error", v22, v23, v24, v25, v26, v27, v28);
        }

        v34 = 1;
        v35 = xmmword_2797028E0;
        v36 = v18;
        v37 = v20;
        v29 = sub_2522A1EA8((a2 + 64), &v34);
        free(v20);
      }

      else
      {
        v29 = 12;
LABEL_26:
        hx509_set_error_string(a1, 0, v29, "Out of memory");
      }
    }

    else
    {
      v29 = 569968;
      hx509_set_error_string(a1, 0, 569968, "Missing @ in principal");
    }
  }

  else
  {
    v29 = 12;
    hx509_set_error_string(a1, 0, 12, "malloc: out of memory");
  }

LABEL_27:
  if (v33[1])
  {
    free(v33[1]);
  }

  if (v13)
  {
    free(v13);
  }

  return v29;
}

uint64_t sub_25228CC98(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v20 = 0;
  v21 = a4;
  v7 = sub_2522A2520(&v21);
  v8 = malloc_type_malloc(v7, 0xA1E8EADAuLL);
  if (!v8)
  {
    v18 = 12;
    goto LABEL_5;
  }

  v9 = v8;
  v10 = sub_2522A2500(v8 + v7 - 1, v7, &v21, &v20);
  if (v10)
  {
    v18 = v10;
    free(v9);
LABEL_5:
    hx509_set_error_string(a1, 0, v18, "Out of memory");
    return v18;
  }

  if (v20 != v7)
  {
    sub_25229126C("internal ASN.1 encoder error", v11, v12, v13, v14, v15, v16, v17);
  }

  v22 = 1;
  v23 = *a3;
  v24 = v7;
  v25 = v9;
  v18 = sub_2522A1EA8((a2 + 64), &v22);
  free(v9);
  return v18;
}

uint64_t hx509_ca_tbs_add_san_hostname(int a1, uint64_t a2, char *__s)
{
  v5[0] = 3;
  v7 = 0;
  v6 = __s;
  v5[1] = strlen(__s);
  return sub_2522A1EA8((a2 + 64), v5);
}

uint64_t hx509_ca_tbs_add_san_rfc822name(int a1, uint64_t a2, char *__s)
{
  v5[0] = 2;
  v7 = 0;
  v6 = __s;
  v5[1] = strlen(__s);
  return sub_2522A1EA8((a2 + 64), v5);
}

uint64_t hx509_ca_tbs_set_subject(uint64_t a1, void **a2, uint64_t a3)
{
  if (*a2)
  {
    hx509_name_free(a2);
  }

  return hx509_name_copy(a1, a3, a2);
}

uint64_t hx509_ca_sign(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v8 = sub_25228DE4C(a3);
  v23[0] = 0;
  v23[1] = 0;
  if (!sub_25228E308(v8, v23))
  {
    v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    if (v15)
    {
      v10 = der_copy_octet_string();
      sub_2522A2030(v23);
      if (v10)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    sub_2522A2030(v23);
    v10 = 12;
    hx509_set_error_string(a1, 0, 12, "Out of memory");
LABEL_16:
    sub_2522A1FD0(&v15);
    goto LABEL_17;
  }

  v21 = 0;
  v22 = 0;
  memset(v18, 0, 40);
  v16 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800409070E284uLL);
  if (!v17)
  {
    goto LABEL_14;
  }

  v9 = hx509_name_to_Name_0(v8 + 144, v18);
  if (v9 || (v19[0] = 0u, v19[1] = *(&v18[1] + 8), v20 = 0, LODWORD(v19[0]) = 4, DWORD2(v19[0]) = 1, v9 = sub_2522A1EA8(&v21, v19), v9))
  {
    v10 = v9;
LABEL_15:
    hx509_set_error_string(a1, 0, v10, "Out of memory");
    goto LABEL_16;
  }

  v12 = v16;
  *(v16 + 1) = v22;
  *v12 = v21;
  v13 = der_copy_heim_integer();
  if (!v17)
  {
LABEL_14:
    v10 = 12;
    goto LABEL_15;
  }

  v10 = v13;
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_9:
  v11 = _hx509_cert_private_key(a3);
  v10 = sub_25228D0AC(a1, a2, v11, &v15, v8 + 144, a4);
LABEL_17:
  sub_2522A1FD0(&v15);
  return v10;
}

uint64_t sub_25228D0AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v72 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v11 = off_27F4D8848;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v68 = 0u;
  v12 = a2[15];
  if (!v12)
  {
    v12 = time(0) - 86400;
  }

  v13 = a2[16];
  if (!v13)
  {
    v13 = time(0) + 31536000;
  }

  v14 = *(a2 + 20);
  if (!v14)
  {
    LOWORD(v14) = sub_2522A1F78(5);
  }

  v15 = *(a2 + 112);
  if ((v15 & 2) != 0)
  {
    LOWORD(v14) = sub_2522A1F78(96) | v14;
    v15 = *(a2 + 112);
  }

  if ((v15 & 4) != 0)
  {
    if ((v15 & 1) == 0)
    {
      if (!*a2)
      {
        v16 = "No subject name set";
        goto LABEL_29;
      }

      if (hx509_name_is_null_p(*a2) && !*(a2 + 16))
      {
        v16 = "NULL subject and no SubjectAltNames";
        goto LABEL_29;
      }
    }

    v17 = *(a2 + 112);
    if ((~v17 & 3) == 0)
    {
      v16 = "Can't be proxy and CA at the same time";
      goto LABEL_29;
    }

    if ((v17 & 1) != 0 && *(a2 + 16))
    {
      v16 = "Proxy certificate is not allowed to have SubjectAltNames";
      goto LABEL_29;
    }

    v69 = 0;
    v70 = 0;
    v18 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *&v60 = v18;
    if (!v18)
    {
LABEL_61:
      v22 = "Out of memory";
      v20 = 12;
      v26 = a1;
      LOBYTE(v19) = 0;
      goto LABEL_62;
    }

    *v18 = 2;
    if ((a2[14] & 8) != 0)
    {
      v54 = a6;
      v21 = der_copy_heim_integer();
      if (v21)
      {
        v20 = v21;
        v22 = "Failed to copy integer";
LABEL_38:
        v26 = a1;
        LOBYTE(v19) = 0;
        v27 = v20;
LABEL_63:
        hx509_set_error_string(v26, v19, v27, v22, v54, a3);
        goto LABEL_64;
      }
    }

    else
    {
      *(&v60 + 1) = 20;
      v19 = malloc_type_malloc(0x14uLL, 0xEBE27A72uLL);
      *&v61 = v19;
      if (!v19)
      {
        goto LABEL_54;
      }

      v54 = a6;
      if (CCRandomCopyBytes())
      {
        v20 = 569935;
        hx509_set_error_string(a1, 0, 569935, "Out of random", v54, a3);
LABEL_64:
        sub_2522A1CB0(&v59);
        return v20;
      }
    }

    v24 = copy_AlgorithmIdentifier(v11, v62);
    if (v24)
    {
      v20 = v24;
      v22 = "Failed to copy sigature alg";
      goto LABEL_38;
    }

    if (a5)
    {
      v25 = hx509_name_to_Name_0(a5, &v62[1] + 8);
    }

    else
    {
      v25 = hx509_name_to_Name(*a2, &v62[1] + 8);
    }

    v20 = v25;
    if (v25)
    {
      v22 = "Failed to copy issuer name";
      goto LABEL_38;
    }

    *(&v63 + 1) = v12;
    LODWORD(v63) = 2;
    LODWORD(v64) = 2;
    *(&v64 + 1) = v13;
    if (a2[14])
    {
      v29 = sub_25228DB18(a1, &v62[1] + 8, v65);
      if (v29)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v28 = hx509_name_to_Name(*a2, v65);
      if (v28)
      {
        v20 = v28;
        v22 = "Failed to copy subject name";
        goto LABEL_38;
      }
    }

    v30 = copy_SubjectPublicKeyInfo((a2 + 1), &v65[40]);
    if (v30)
    {
      v20 = v30;
      v22 = "Failed to copy spki";
      goto LABEL_38;
    }

    if (a2[22])
    {
      v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      *&v66 = v19;
      if (!v19)
      {
        goto LABEL_54;
      }

      v31 = der_copy_bit_string();
      if (v31)
      {
LABEL_52:
        v20 = v31;
LABEL_53:
        v22 = "Out of memory";
        goto LABEL_38;
      }
    }

    if (!a2[20])
    {
      goto LABEL_55;
    }

    v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    *(&v66 + 1) = v19;
    if (v19)
    {
      v31 = der_copy_bit_string();
      if (v31)
      {
        goto LABEL_52;
      }

LABEL_55:
      v67[0] = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      if (v67[0])
      {
        if ((a2[14] & 0x10) == 0 || (v69 = 34, v70 = &unk_2522AA5C0, v29 = sub_25228DBF4(a1, &v59, 0, &unk_2797062C8, &v69), !v29))
        {
          LODWORD(v71[0]) = 0;
          LODWORD(v71[0]) = sub_2522A1F78(v14);
          v69 = sub_2522A1F68(v71);
          v32 = malloc_type_malloc(v69, 0xBAB6BD36uLL);
          v70 = v32;
          if (!v32)
          {
            goto LABEL_107;
          }

          v33 = sub_2522A1F48(v32 + v69 - 1, v69, v71, &v58);
          if (v33)
          {
LABEL_60:
            v20 = v33;
            free(v70);
            v70 = 0;
            goto LABEL_53;
          }

          if (v58 != v69)
          {
            goto LABEL_120;
          }

          v20 = sub_25228DBF4(a1, &v59, 1, &unk_279705878, &v69);
          free(v70);
          if (v20)
          {
            goto LABEL_64;
          }

          if (*(a2 + 12))
          {
            v69 = sub_2522A2138((a2 + 6));
            v41 = malloc_type_malloc(v69, 0xB3DEB093uLL);
            v70 = v41;
            if (!v41)
            {
              goto LABEL_107;
            }

            v33 = sub_2522A2118(v41 + v69 - 1, v69, (a2 + 6), &v58);
            if (v33)
            {
              goto LABEL_60;
            }

            if (v58 != v69)
            {
              goto LABEL_120;
            }

            v20 = sub_25228DBF4(a1, &v59, 0, &unk_279705B68, &v69);
            free(v70);
            if (v20)
            {
              goto LABEL_64;
            }
          }

          if (*(a2 + 16))
          {
            v69 = sub_2522A1E88((a2 + 8));
            v42 = malloc_type_malloc(v69, 0x93F90D21uLL);
            v70 = v42;
            if (!v42)
            {
              goto LABEL_107;
            }

            v33 = sub_2522A1E68(v42 + v69 - 1, v69, (a2 + 8), &v58);
            if (v33)
            {
              goto LABEL_60;
            }

            if (v58 != v69)
            {
              goto LABEL_120;
            }

            v20 = sub_25228DBF4(a1, &v59, 0, &unk_279705B28, &v69);
            free(v70);
            if (v20)
            {
              goto LABEL_64;
            }
          }

          if (a4)
          {
            v69 = sub_2522A1FC0(a4);
            v43 = malloc_type_malloc(v69, 0xD3A3C08FuLL);
            v70 = v43;
            if (!v43)
            {
              goto LABEL_107;
            }

            v33 = sub_2522A1FA0(v43 + v69 - 1, v69, a4, &v58);
            if (v33)
            {
              goto LABEL_60;
            }

            if (v58 != v69)
            {
              goto LABEL_120;
            }

            v20 = sub_25228DBF4(a1, &v59, 0, &unk_2797058C8, &v69);
            free(v70);
            if (v20)
            {
              goto LABEL_64;
            }
          }

          CCDigestCreate();
          CCDigestUpdate();
          CCDigestFinal();
          CCDigestDestroy();
          v57[0] = 20;
          v57[1] = v71;
          v69 = sub_2522A2020(v57);
          v44 = malloc_type_malloc(v69, 0x9DF2812FuLL);
          v70 = v44;
          if (!v44)
          {
            goto LABEL_107;
          }

          v33 = sub_2522A2000(v44 + v69 - 1, v69, v57, &v58);
          if (v33)
          {
            goto LABEL_60;
          }

          if (v58 != v69)
          {
            goto LABEL_120;
          }

          v20 = sub_25228DBF4(a1, &v59, 0, &unk_279705978, &v69);
          free(v70);
          if (v20)
          {
            goto LABEL_64;
          }

          v56 = 0;
          LODWORD(v57[0]) = 1;
          v71[0] = 0uLL;
          if ((a2[14] & 2) != 0)
          {
            *&v71[0] = v57;
            if ((a2[17] & 0x80000000) == 0)
            {
              v56 = *(a2 + 34);
              *(&v71[0] + 1) = &v56;
            }
          }

          v69 = sub_2522A2094(v71);
          v45 = malloc_type_malloc(v69, 0x6335EB8BuLL);
          v70 = v45;
          if (!v45)
          {
LABEL_107:
            v20 = 12;
            goto LABEL_53;
          }

          v33 = sub_2522A2074(v45 + v69 - 1, v69, v71, &v58);
          if (v33)
          {
            goto LABEL_60;
          }

          if (v58 != v69)
          {
            goto LABEL_120;
          }

          v20 = sub_25228DBF4(a1, &v59, (*(a2 + 112) >> 1) & 1, &unk_2797059A8, &v69);
          free(v70);
          if (v20)
          {
            goto LABEL_64;
          }

          if ((a2[14] & 1) == 0)
          {
LABEL_94:
            v47 = *(a2 + 36);
            v46 = a2 + 18;
            if (!v47)
            {
LABEL_99:
              v69 = sub_2522A1C50(&v59);
              v49 = malloc_type_malloc(v69, 0xA7FBF6BAuLL);
              v70 = v49;
              if (!v49)
              {
                v20 = 12;
                goto LABEL_112;
              }

              v50 = sub_2522A1C30(v49 + v69 - 1, v69, &v59, &v58);
              if (v50)
              {
                v20 = v50;
                free(v70);
                v70 = 0;
LABEL_112:
                v22 = "malloc out of memory";
                goto LABEL_38;
              }

              if (v69 == v58)
              {
                v20 = sub_252294578(a1, a3, v11, &v69, &v67[1], &v68);
                free(v70);
                if (v20)
                {
                  goto LABEL_64;
                }

                v29 = hx509_cert_init(a1, &v59, v54);
                goto LABEL_43;
              }

LABEL_120:
              sub_25229126C("internal ASN.1 encoder error", v34, v35, v36, v37, v38, v39, v40, v54, a3);
            }

            v69 = sub_2522A2208(v46);
            v48 = malloc_type_malloc(v69, 0x2E8EFC60uLL);
            v70 = v48;
            if (v48)
            {
              v33 = sub_2522A21E8(v48 + v69 - 1, v69, v46, &v58);
              if (v33)
              {
                goto LABEL_60;
              }

              if (v58 != v69)
              {
                goto LABEL_120;
              }

              v20 = sub_25228DBF4(a1, &v59, 0, &unk_279705BD8, &v69);
              free(v70);
              if (v20)
              {
                goto LABEL_64;
              }

              goto LABEL_99;
            }

            goto LABEL_107;
          }

          memset(v71, 0, sizeof(v71));
          if ((a2[17] & 0x80000000) == 0)
          {
            v51 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
            *&v71[0] = v51;
            if (!v51)
            {
              goto LABEL_107;
            }

            *v51 = *(a2 + 34);
          }

          v20 = der_copy_oid();
          if (!v20)
          {
            v69 = sub_2522A25B0(v71);
            v52 = malloc_type_malloc(v69, 0xB3ED8A60uLL);
            v70 = v52;
            if (v52)
            {
              v53 = sub_2522A2590(v52 + v69 - 1, v69, v71, &v58);
              if (!v53)
              {
                sub_2522A25C0(v71);
                if (v58 != v69)
                {
                  goto LABEL_120;
                }

                v20 = sub_25228DBF4(a1, &v59, 0, &unk_2797061D8, &v69);
                free(v70);
                if (v20)
                {
                  goto LABEL_64;
                }

                goto LABEL_94;
              }

              v20 = v53;
              free(v70);
              v70 = 0;
            }

            else
            {
              v20 = 12;
            }
          }

          sub_2522A25C0(v71);
          goto LABEL_53;
        }

LABEL_43:
        v20 = v29;
        goto LABEL_64;
      }

      goto LABEL_61;
    }

LABEL_54:
    v22 = "Out of memory";
    v20 = 12;
    v26 = a1;
LABEL_62:
    v27 = 12;
    goto LABEL_63;
  }

  v16 = "No public key set";
LABEL_29:
  v20 = 22;
  hx509_set_error_string(a1, 0, 22, v16);
  return v20;
}

uint64_t sub_25228DB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = hx509_name_to_Name_0(a2, a3);
  if (v5)
  {
    v6 = v5;
    hx509_set_error_string(a1, 0, v5, "Failed to copy subject name");
  }

  else
  {
    v9 = 0;
    v8 = time(0);
    asprintf(&v9, "ts-%lu", v8);
    if (v9)
    {
      v6 = sub_25229C9C0(a1, a3, 1, &unk_279704CD8, v9);
      free(v9);
      if (v6)
      {
        sub_2522A1A20(a3);
      }
    }

    else
    {
      v6 = 12;
      hx509_set_error_string(a1, 0, 12, "Failed to copy subject name");
    }
  }

  return v6;
}

uint64_t sub_25228DBF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  if (a3)
  {
    v7 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *&v12 = v7;
    if (!v7)
    {
      v9 = 12;
      hx509_set_error_string(a1, 0, 12, "Out of memory", v11, 0, *(&v12 + 1), v13);
      goto LABEL_9;
    }

    *v7 = 1;
  }

  v8 = der_copy_oid();
  if (v8 || (v8 = der_copy_octet_string(), v8))
  {
    v9 = v8;
  }

  else
  {
    v9 = sub_2522A1BB0(*(a2 + 240), &v11);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  hx509_set_error_string(a1, 0, v9, "Out of memory", v11, v12, v13);
LABEL_9:
  sub_2522A1B2C(&v11);
  return v9;
}

uint64_t hx509_context_init(uint64_t *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040F8078E03uLL);
  *a1 = v2;
  if (!v2)
  {
    return 12;
  }

  nullsub_4();
  sub_25229A668(*a1);
  sub_252298BE8(*a1);
  sub_25229AF84(*a1);
  nullsub_4();
  nullsub_4();
  sub_252299DC8(*a1);
  hc_ENGINE_add_conf_module();
  hc_OpenSSL_add_all_algorithms();
  v3 = *a1;
  *(v3 + 16) = 300;
  initialize_hx_error_table_r((v3 + 32));
  initialize_asn1_error_table_r((*a1 + 32));
  hx509_certs_init(*a1, "KEYCHAIN:system-anchors", 0, 0, (*a1 + 48));
  return 0;
}

uint64_t hx509_context_set_missing_revoke(uint64_t result, int a2)
{
  v2 = *(result + 12) & 0xFFFFFFFE;
  if (a2)
  {
    ++v2;
  }

  *(result + 12) = v2;
  return result;
}

void hx509_context_free(void ***a1)
{
  hx509_certs_free(*a1 + 6);
  hx509_clear_error_string(*a1);
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    free(v3);
    **a1 = 0;
    v2 = *a1;
  }

  *(v2 + 2) = 0;
  sub_25228C138(v2[4]);
  v4 = *a1;
  v4[6] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  free(*a1);
  *a1 = 0;
}

uint64_t sub_25228DE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*v1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t hx509_cert_init(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = heim_uniq_alloc(0x70uLL, "hx509-cert", sub_25228DF4C);
  *a3 = v5;
  if (!v5)
  {
    return 12;
  }

  *(v5 + 32) = 0;
  v6 = *a3;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(*a3 + 64) = 0;
  *(*a3 + 88) = 0;
  *(*a3 + 96) = 0;
  *(*a3 + 104) = 0;
  *(*a3 + 56) = malloc_type_calloc(1uLL, 0x120uLL, 0x10B004094F02C90uLL);
  v7 = *(*a3 + 56);
  if (!v7)
  {
    heim_release(*a3);
    v8 = 12;
    goto LABEL_7;
  }

  v8 = sub_2522A1CC0(a2, v7);
  if (v8)
  {
    heim_release(*a3);
LABEL_7:
    *a3 = 0;
  }

  return v8;
}

uint64_t sub_25228DF4C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v2(a1, *(a1 + 104));
  }

  if (*(a1 + 64))
  {
    hx509_private_key_free((a1 + 64));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_2522A1CB0(v3);
    free(*(a1 + 56));
  }

  if (*(a1 + 72))
  {
    v4 = 0;
    do
    {
      der_free_octet_string();
      der_free_oid();
      free(*(*(a1 + 80) + 8 * v4++));
    }

    while (v4 < *(a1 + 72));
  }

  free(*(a1 + 80));
  free(*(a1 + 32));
  if (*(a1 + 88))
  {
    hx509_name_free((a1 + 88));
  }

  return der_free_octet_string();
}

uint64_t hx509_cert_init_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  v7 = sub_2522A1C60(a2, a3, v11, &v10);
  if (v7)
  {
    v8 = v7;
    hx509_set_error_string(a1, 0, v7, "Failed to decode certificate");
  }

  else if (v10 == a3)
  {
    v8 = hx509_cert_init(v7, v11, a4);
    sub_2522A1CB0(v11);
  }

  else
  {
    v8 = 569876;
    sub_2522A1CB0(v11);
    hx509_set_error_string(a1, 0, 569876, "Extra data after certificate");
  }

  return v8;
}

uint64_t sub_25228E118(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t _hx509_cert_set_key(uint64_t a1, const void *a2)
{
  v3 = (a1 + 64);
  if (*(a1 + 64))
  {
    hx509_private_key_free((a1 + 64));
  }

  *v3 = _hx509_private_key_ref(a2);
  return 0;
}

uint64_t hx509_verify_init_ctx(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040C34EC329uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  v4[6] = 30;
  *a2 = v4;
  return result;
}

void hx509_verify_destroy_ctx(const void **a1)
{
  if (a1)
  {
    hx509_certs_free(a1);
    hx509_revoke_free(a1 + 4);
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  free(a1);
}

const void *hx509_verify_attach_anchors(const void **a1, CFTypeRef cf)
{
  if (*a1)
  {
    hx509_certs_free(a1);
  }

  result = j__heim_retain(cf);
  *a1 = result;
  return result;
}

uint64_t hx509_verify_attach_revoke(uint64_t a1, CFTypeRef cf)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    hx509_revoke_free((a1 + 32));
  }

  result = j__heim_retain(cf);
  *v3 = result;
  return result;
}

uint64_t hx509_verify_set_time(uint64_t result, uint64_t a2)
{
  *(result + 8) |= 1u;
  *(result + 16) = a2;
  return result;
}

uint64_t sub_25228E308(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  *a2 = 0;
  a2[1] = 0;
  v3 = sub_25228E36C(a1, &unk_279705978, &v5);
  if (v3)
  {
    return sub_2522A1FE0(*(v3 + 32), *(v3 + 24), a2, &v6);
  }

  else
  {
    return 569857;
  }
}

uint64_t sub_25228E36C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  if (*v3 < 2u)
  {
    return 0;
  }

  v5 = *(a1 + 240);
  if (!v5 || *a3 >= *v5)
  {
    return 0;
  }

  while (der_heim_oid_cmp())
  {
    v7 = *a3 + 1;
    *a3 = v7;
    if (v7 >= **(a1 + 240))
    {
      return 0;
    }
  }

  v9 = *(*(a1 + 240) + 8);
  v10 = (*a3)++;
  return v9 + 40 * v10;
}

void hx509_free_octet_string_list(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      der_free_octet_string();
      ++v3;
      v2 += 16;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t hx509_cert_find_subjectAltName_otherName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  v14 = 0;
  while (1)
  {
    v7 = sub_25228E628(*(a2 + 56), &v14, &v15);
    ++v14;
    if (v7)
    {
      v12 = v7;
      if (v7 == 569857)
      {
        return 0;
      }

      hx509_set_error_string(a1, 0, v7, "Error searching for SAN");
      hx509_free_octet_string_list(a4);
      return v12;
    }

    if (v15)
    {
      break;
    }

LABEL_11:
    sub_2522A1E98(&v15);
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (*(v16 + v8) != 1 || der_heim_oid_cmp())
    {
      goto LABEL_10;
    }

    v10 = malloc_type_realloc(*(a4 + 8), 16 * *a4 + 16, 0x108004057E67DB5uLL);
    if (!v10)
    {
      v12 = 12;
      goto LABEL_14;
    }

    *(a4 + 8) = v10;
    v11 = der_copy_octet_string();
    if (v11)
    {
      break;
    }

    ++*a4;
LABEL_10:
    ++v9;
    v8 += 40;
    if (v9 >= v15)
    {
      goto LABEL_11;
    }
  }

  v12 = v11;
LABEL_14:
  hx509_set_error_string(a1, 0, v12, "Error adding an exra SAN to return list");
  hx509_free_octet_string_list(a4);
  sub_2522A1E98(&v15);
  return v12;
}

uint64_t sub_25228E628(uint64_t a1, unint64_t *a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = sub_25228E36C(a1, &unk_279705B28, a2);
  if (!v4)
  {
    return 569857;
  }

  v6 = 0;
  return sub_2522A1E48(*(v4 + 32), *(v4 + 24), a3, &v6);
}

uint64_t sub_25228E694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v15 = 0;
  v14 = 0;
  if (*v4 + 1 < 3)
  {
    return 0;
  }

  v5 = a4;
  v10 = sub_25228E36C(a2, &unk_279705878, &v13);
  if (v10)
  {
    v5 = sub_2522A1F28(*(v10 + 32), *(v10 + 24), &v15, &v14);
    if (v5)
    {
      return v5;
    }

    v11 = sub_2522A1F78(v15);
    if ((a3 & ~v11) != 0)
    {
      v5 = 569872;
      v12 = 0;
      unparse_flags(a3 & ~v11, off_27F4D8E38, v16, 0x100uLL);
      sub_25229D234(a2 + 144, &v12);
      hx509_set_error_string(a1, 0, 569872, "Key usage %s required but missing from certifiate %s", v16, v12);
      free(v12);
      return v5;
    }

    return 0;
  }

  if (v5)
  {
    v5 = 569872;
    hx509_set_error_string(a1, 0, 569872, "Required extension key usage missing from certifiate");
  }

  return v5;
}

uint64_t sub_25228E808(uint64_t a1, uint64_t a2, int a3)
{
  v18 = 0;
  result = sub_25229C654(a2 + 144, a1 + 72, &v18);
  if (!result)
  {
    result = v18;
    if (!v18)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v14[0] = 0;
      v14[1] = 0;
      v7 = sub_25228E988(a1, &v15);
      v8 = v7;
      if (v7 != 569857 && v7)
      {
        return 1;
      }

      v9 = sub_25228E308(a2, v14);
      if (v9 == 569857 || !v9)
      {
        if (v8)
        {
          goto LABEL_9;
        }

        if (v9)
        {
          if (a3)
          {
            v18 = 0;
            goto LABEL_9;
          }

          if (v15)
          {
            v18 = -1;
            goto LABEL_9;
          }
        }

        else if (v15)
        {
          v18 = der_heim_octet_string_cmp();
          goto LABEL_9;
        }

        v11[0] = 0;
        v11[1] = 0;
        v12 = 0;
        if (v16 && v17)
        {
          result = der_heim_integer_cmp();
          v18 = result;
          if (result)
          {
            return result;
          }

          if (*v16 == 1)
          {
            v10 = *(v16 + 8);
            if (*v10 == 4)
            {
              LODWORD(v12) = *(v10 + 8);
              v13 = *(v10 + 16);
              result = sub_25229C654(a2 + 144, v11, &v18);
              if (result)
              {
                return result;
              }

              result = v18;
              if (v18)
              {
                return result;
              }

LABEL_9:
              sub_2522A1FD0(&v15);
              sub_2522A2030(v14);
              return v18;
            }
          }
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_25228E988(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3 = sub_25228E36C(a1, &unk_2797058C8, &v5);
  if (v3)
  {
    return sub_2522A1F80(*(v3 + 32), *(v3 + 24), a2, &v6);
  }

  else
  {
    return 569857;
  }
}

uint64_t sub_25228E9F0(uint64_t a1, uint64_t *a2, const void *a3)
{
  v6 = malloc_type_realloc(a2[1], 8 * *a2 + 8, 0x2004093837F09uLL);
  if (v6)
  {
    a2[1] = v6;
    v7 = heim_retain(a3);
    v8 = 0;
    v9 = *a2;
    *(a2[1] + 8 * *a2) = v7;
    *a2 = v9 + 1;
  }

  else
  {
    v8 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory");
  }

  return v8;
}

void sub_25228EA88(uint64_t a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      heim_release(*(*(a1 + 8) + 8 * v2));
      v2 = v3;
    }

    while (*a1 > v3++);
  }

  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_25228EAE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5, const void *a6, uint64_t a7, uint64_t *a8)
{
  LODWORD(v11) = a5;
  v16 = sub_25228E9F0(a1, a8, a6);
  if (v16)
  {
    return v16;
  }

  v24 = 0;
  if (v11)
  {
    v11 = v11;
  }

  else
  {
    v11 = 30;
  }

  v19 = heim_retain(a6);
  while (!sub_25228EDE8(a1, a4, v19))
  {
    v24 = 0;
    memset(v34, 0, 24);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    memset(v27, 0, sizeof(v27));
    memset(v28, 0, sizeof(v28));
    v20 = v19[7];
    if (*(v20 + 168))
    {
      v21 = 1;
      v22 = v27 + 1;
    }

    else
    {
      if (sub_25228E988(v20, v34))
      {
        v17 = 569880;
        hx509_set_error_string(a1, 0, 569880, "Subjectless certificate missing AuthKeyID");
LABEL_34:
        heim_release(v19);
        return v17;
      }

      v20 = v34[0];
      if (!v34[0])
      {
        v17 = 569880;
        sub_2522A1FD0(v34);
        hx509_set_error_string(a1, 0, 569880, "Subjectless certificate missing keyIdentifier inside AuthKeyID");
        goto LABEL_34;
      }

      v21 = 16;
      v22 = v28;
    }

    *v22 = v20;
    *&v29 = a8;
    LODWORD(v27[0]) = v21 | 0x20000;
    if (a7)
    {
      *(&v31 + 1) = a3;
      LODWORD(v27[0]) = v21 | 0x220000;
      if (!hx509_certs_find(a1, a7, v27, &v24))
      {
        goto LABEL_19;
      }

      LODWORD(v27[0]) &= ~0x200000u;
    }

    if (!a4 || hx509_certs_find(a1, a4, v27, &v24))
    {
      sub_2522A1FD0(v34);
      v25 = 0;
      v26 = 0;
      if (hx509_name_from_Name(v19[7] + 144, &v26) || (v23 = hx509_name_to_string(v26, &v25), hx509_name_free(&v26), v23))
      {
        hx509_clear_error_string(a1);
        v17 = 569867;
      }

      else
      {
        v17 = 569867;
        hx509_set_error_string(a1, 0, 569867, "Failed to find issuer for certificate with subject: '%s'", v25);
        free(v25);
      }

      goto LABEL_34;
    }

LABEL_19:
    sub_2522A1FD0(v34);
    heim_release(v19);
    v16 = sub_25228E9F0(a1, a8, v24);
    if (v16)
    {
      return v16;
    }

    v19 = v24;
    if (*a8 > v11)
    {
      heim_release(v24);
      v17 = 569871;
      hx509_set_error_string(a1, 0, 569871, "Path too long while bulding certificate chain");
      return v17;
    }
  }

  if ((a2 & 1) != 0 && *a8 && sub_25228EDE8(a1, a4, *(a8[1] + 8 * *a8 - 8)))
  {
    heim_release(*(a8[1] + 8 * *a8 - 8));
    --*a8;
  }

  heim_release(v19);
  return 0;
}

BOOL sub_25228EDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  LODWORD(v6) = 0x8000;
  *&v7 = *(a3 + 56);
  v3 = hx509_certs_find(a1, a2, &v6, &v5);
  if (!v3)
  {
    heim_release(v5);
  }

  return v3 == 0;
}

uint64_t sub_25228EE6C(uint64_t a1, uint64_t a2)
{
  result = der_heim_oid_cmp();
  if (!result)
  {
    v5 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (v5)
      {

        return der_heim_octet_string_cmp();
      }

      else
      {
        return 1;
      }
    }

    else if (v5)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25228EED8(uint64_t a1, uint64_t a2)
{
  result = der_heim_bit_string_cmp();
  if (!result)
  {
    result = sub_25228EE6C(a1 + 248, a2 + 248);
    if (!result)
    {

      return der_heim_octet_string_cmp();
    }
  }

  return result;
}

uint64_t hx509_cert_get_base_subject(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 88);
  if (v6)
  {

    return hx509_name_copy(a1, v6, a3);
  }

  else if (sub_25228F028(a1, *(a2 + 56), 0))
  {
    v8 = *(a2 + 56) + 144;

    return hx509_name_from_Name(v8, a3);
  }

  else
  {
    hx509_set_error_string(a1, 0, 569882, "Proxy certificate have not been canonicalize yet, no base name");
    return 569882;
  }
}

uint64_t sub_25228F028(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v11 = 0;
  if (a3)
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v5 = sub_25228E36C(a2, &unk_2797061D8, &v11);
  if (!v5)
  {
    v8 = 569857;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_2522A2570(*(v5 + 32), *(v5 + 24), &v13, &v12);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    hx509_clear_error_string(a1);
    return v8;
  }

  if (v12 == *(v6 + 24))
  {
    if (a3)
    {
      v8 = 0;
      v10 = v14;
      *a3 = v13;
      a3[1] = v10;
    }

    else
    {
      sub_2522A25C0(&v13);
      return 0;
    }
  }

  else
  {
    sub_2522A25C0(&v13);
    hx509_clear_error_string(a1);
    return 569876;
  }

  return v8;
}

uint64_t hx509_cert_get_notBefore(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((*(v1 + 112) - 1) > 1)
  {
    return 0;
  }

  else
  {
    return *(v1 + 120);
  }
}

uint64_t sub_25228F150(uint64_t a1)
{
  if ((*a1 - 1) > 1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t hx509_cert_get_notAfter(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((*(v1 + 128) - 1) > 1)
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

uint64_t hx509_cert_get_SPKI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = copy_SubjectPublicKeyInfo(*(a2 + 56) + 184, a3);
  if (v4)
  {
    hx509_set_error_string(a1, 0, v4, "Failed to copy SPKI");
  }

  return v4;
}

uint64_t sub_25228F1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = copy_AlgorithmIdentifier(*(a2 + 56) + 184, a3);
  if (v4)
  {
    hx509_set_error_string(a1, 0, v4, "Failed to copy SPKI AlgorithmIdentifier");
  }

  return v4;
}

uint64_t sub_25228F244(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return sub_252294E68(result);
  }

  return result;
}

uint64_t sub_25228F254(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  a5[1] = 0;
  v7 = *(a4 + 64);
  if (v7)
  {

    return sub_252294714(a1, a2, a3, v7, a5);
  }

  else
  {
    hx509_set_error_string(a1, 0, 569865, "Private key missing", v5, v6);
    return 569865;
  }
}

void *sub_25228F2AC()
{
  v0 = heim_uniq_alloc(0x28uLL, "hx509-evaluate", sub_25228F30C);
  if (v0)
  {
    v1 = heim_array_create();
    v0[4] = v1;
    if (!v1)
    {
      heim_release(v0);
      return 0;
    }
  }

  return v0;
}

CFIndex hx509_evaluate_get_ta(uint64_t a1)
{
  result = heim_array_get_length(*(a1 + 32));
  if (result)
  {
    v3 = result - 1;
    v4 = *(a1 + 32);

    return heim_array_copy_value(v4, v3);
  }

  return result;
}

uint64_t sub_25228F384(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t *a5)
{
  v96 = 0;
  v97 = &v96;
  v98 = 0x2000000000;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2000000000;
  if (a5)
  {
    *a5 = 0;
  }

  v99 = 0;
  v95 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v97[3] = Mutable;
  if (!Mutable)
  {
    sub_2522A81F4();
  }

  v11 = 569878;
  v12 = sub_25229014C(a1, a3);
  v93[3] = v12;
  CFArrayAppendValue(v97[3], v12);
  CFRelease(v93[3]);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 0x40000000;
  v91[2] = sub_2522901DC;
  v91[3] = &unk_279703588;
  v91[4] = &v92;
  v91[5] = &v96;
  v91[6] = a1;
  hx509_certs_iter(a1, a4, v91);
  BasicX509 = SecPolicyCreateBasicX509();
  trust = 0;
  v14 = SecTrustCreateWithCertificates(v97[3], BasicX509, &trust);
  CFRelease(BasicX509);
  CFRelease(v97[3]);
  if (v14)
  {
    hx509_set_error_string(a1, 0, 569867, "Failed to create trust");
    CFRelease(trust);
  }

  v89 = 0;
  v15 = MEMORY[0x25309D5E0](trust, &v89);
  if (v15)
  {
    inited = 569867;
    hx509_set_error_string(a1, 0, 569867, "Failed to validate trust: %d", v15);
    CFRelease(trust);
    goto LABEL_105;
  }

  if (v89 != 1 && v89 != 4)
  {
    inited = 569867;
    hx509_set_error_string(a1, 0, 569867, "Failed to validate trust");
    CFRelease(trust);
    if (qword_27F4D9720 != -1)
    {
      sub_2522A81A0();
    }

    if (byte_27F4D9728 != 1)
    {
      goto LABEL_105;
    }

    v101 = 0;
    v102 = 0u;
    v103 = 0u;
    v104 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    v106 = 0;
    v107 = 0;
    if ((*(a2 + 8) & 1) == 0)
    {
      *(a2 + 16) = time(0);
    }

    v105 = 0;
    v26 = *a2;
    if (*a2 || (v26 = *(a1 + 48)) != 0 && (*(a2 + 8) & 0x10) == 0)
    {
      v27 = j__heim_retain(v26);
      v101 = v27;
    }

    else
    {
      v28 = hx509_certs_init(a1, "MEMORY:no-TA", 0, 0, &v101);
      if (v28)
      {
        goto LABEL_99;
      }

      v27 = v101;
    }

    v28 = sub_25228EAE4(a1, 0, *(a2 + 16), v27, *(a2 + 24), a3, a4, &v106);
    if (v28)
    {
LABEL_99:
      inited = v28;
      goto LABEL_100;
    }

    if (!v106)
    {
      goto LABEL_135;
    }

    v29 = 0;
    v82 = 0;
    v87 = 0;
    v30 = ((*(a2 + 8) >> 1) & 1) == 0;
    while (1)
    {
      v31 = *(*(v107 + 8 * v29) + 56);
      v85 = v29;
      if (v30)
      {
        break;
      }

      memset(v100, 0, sizeof(v100));
      if (sub_25228F028(a1, v31, v100))
      {
        goto LABEL_37;
      }

      if (*&v100[0] && v29 > **&v100[0])
      {
        sub_2522A25C0(v100);
        v11 = 569871;
        v69 = "Proxy certificate chain longer then allowed";
        goto LABEL_193;
      }

      sub_2522A25C0(v100);
      v110[0] = 0;
      if (sub_25228E36C(v31, &unk_279705B28, v110))
      {
        v11 = 569877;
        v69 = "Proxy certificate have explicity forbidden subjectAltName";
LABEL_193:
        v80 = a1;
        v81 = v11;
        goto LABEL_196;
      }

      v110[0] = 0;
      if (sub_25228E36C(v31, &unk_279705B38, v110))
      {
        v11 = 569877;
        v69 = "Proxy certificate have explicity forbidden issuerAltName";
        goto LABEL_193;
      }

      if (v87)
      {
        v39 = sub_25229C654(&v102, v31 + 144, &v105);
        if (v39)
        {
          goto LABEL_158;
        }

        if (v105)
        {
          v69 = "Base proxy name not right";
LABEL_195:
          v80 = a1;
          v81 = 569878;
LABEL_196:
          hx509_set_error_string(v80, 0, v81, v69);
LABEL_197:
          v49 = 0;
          v50 = 0;
          inited = v11;
          goto LABEL_101;
        }
      }

      sub_2522A1A20(&v102);
      v40 = hx509_name_to_Name_0(v31 + 144, &v102);
      if (v40)
      {
        v70 = v40;
        hx509_clear_error_string(a1);
LABEL_163:
        v11 = v70;
        goto LABEL_197;
      }

      v41 = DWORD2(v103);
      if (DWORD2(v103) < 2 || *(v104 + 16 * DWORD2(v103) - 16) > 1u || der_heim_oid_cmp())
      {
        v69 = "Proxy name too short or does not have Common name at the top";
        goto LABEL_195;
      }

      sub_2522A19C0(v104 + 16 * v41 - 16);
      --DWORD2(v103);
      v39 = sub_25229C654(&v102, v31 + 72, &v105);
      if (v39)
      {
LABEL_158:
        v70 = v39;
        hx509_set_error_string(a1, 0, v39, "Out of memory");
        goto LABEL_163;
      }

      if (v105)
      {
        v69 = "Proxy issuer name not as expected";
        goto LABEL_195;
      }

      v36 = 0;
      LOBYTE(inited) = 1;
      v35 = 1;
LABEL_63:
      v109 = 0;
      v42 = *(v31 + 16);
      if (v42)
      {
        v100[0] = 0uLL;
        v110[0] = 0;
        if (*v42 + 1 >= 3)
        {
          v83 = v35;
          v43 = sub_25228E36C(v31, &unk_2797059A8, &v109);
          if (v43)
          {
            v28 = sub_2522A2054(*(v43 + 32), *(v43 + 24), v100, v110);
            if (v28)
            {
              goto LABEL_99;
            }

            if (v36 == 2)
            {
              inited = 569859;
              if (!*&v100[0] || !**&v100[0])
              {
                goto LABEL_202;
              }

              v44 = v85;
              if (*(&v100[0] + 1) && ~(v82 + v87) + v85 > **(&v100[0] + 1))
              {
                inited = 569860;
LABEL_202:
                sub_2522A20A4(v100);
LABEL_100:
                v49 = 0;
                v50 = 0;
                goto LABEL_101;
              }
            }

            else
            {
              v44 = v85;
              if (v36 != 1 && *&v100[0] && **&v100[0])
              {
                inited = 569875;
                goto LABEL_202;
              }
            }

            sub_2522A20A4(v100);
            v35 = v83;
            goto LABEL_74;
          }

          v35 = v83;
          if ((inited & 1) == 0)
          {
            v108 = 0;
            if (sub_25229D234(v31 + 144, &v108))
            {
              sub_2522A81C8();
            }

            inited = 569857;
            hx509_set_error_string(a1, 0, 569857, "basicConstraints missing from CA certifiacte %s", v108);
            free(v108);
            goto LABEL_100;
          }
        }
      }

      v44 = v85;
LABEL_74:
      v29 = v44 + 1;
      v45 = v106;
      if (v29 != v106 || (*(a2 + 8) & 8) != 0)
      {
        if ((*(v31 + 112) - 1) > 1)
        {
          v46 = 0;
        }

        else
        {
          v46 = *(v31 + 120);
        }

        v47 = *(a2 + 16);
        if (v46 > v47)
        {
          hx509_clear_error_string(a1);
          v49 = 0;
          v50 = 0;
          inited = 569863;
          goto LABEL_101;
        }

        v48 = (*(v31 + 128) - 1) > 1 ? 0 : *(v31 + 136);
        if (v48 < v47)
        {
          hx509_clear_error_string(a1);
          v49 = 0;
          v50 = 0;
          inited = 569864;
          goto LABEL_101;
        }
      }

      if (v35)
      {
        v30 = 0;
      }

      else
      {
        v30 = 2;
      }

      v87 += v35;
      if (v29 >= v106)
      {
        if (v106)
        {
          v50 = 0;
          v49 = 0;
          while (1)
          {
            LODWORD(v108) = 0;
            v86 = v45 - 1;
            v88 = *(*(v107 + 8 * (v45 - 1)) + 56);
            v53 = sub_2522915DC(a1, v88, &v108);
            if (v53)
            {
              inited = v53;
              goto LABEL_101;
            }

            if (v108)
            {
              v54 = v45 == v106;
            }

            else
            {
              v54 = 0;
            }

            if (!v54)
            {
              v84 = v49;
              if (v50)
              {
                LODWORD(v110[0]) = 0;
                v55 = v49 + 1;
                for (i = v50; i; --i)
                {
                  v100[0] = 0uLL;
                  v57 = *(v55 - 1);
                  if (v57)
                  {
                    LODWORD(v100[0]) = *v57;
                    *(&v100[0] + 1) = *(v57 + 8);
                    v58 = sub_252291670(v100, v88, v110);
                    if (v58)
                    {
                      goto LABEL_154;
                    }

                    if (!LODWORD(v110[0]) && *(v88 + 168))
                    {
                      inited = 569868;
                      hx509_set_error_string(a1, 0, 569868, "Error verify constraints, certificate didn't match any permitted subtree");
                      goto LABEL_200;
                    }
                  }

                  v59 = *v55;
                  if (*v55)
                  {
                    LODWORD(v100[0]) = *v59;
                    *(&v100[0] + 1) = *(v59 + 8);
                    v58 = sub_252291670(v100, v88, v110);
                    if (v58)
                    {
LABEL_154:
                      inited = v58;
                      hx509_clear_error_string(a1);
LABEL_200:
                      v49 = v84;
                      goto LABEL_101;
                    }

                    if (LODWORD(v110[0]))
                    {
                      inited = 569868;
                      hx509_set_error_string(a1, 0, 569868, "Error verify constraints, certificate included in excluded subtree");
                      goto LABEL_200;
                    }
                  }

                  v55 += 2;
                }
              }

              v49 = v84;
            }

            v109 = 0;
            v110[0] = 0;
            v100[0] = 0uLL;
            v60 = sub_25228E36C(v88, &unk_279705A08, &v109);
            if (v60)
            {
              v61 = sub_2522A20B4(*(v60 + 32), *(v60 + 24), v100, v110);
              if (v61)
              {
                inited = v61;
                if (v61 != 569857)
                {
                  hx509_set_error_string(a1, 0, v61, "Failed getting NameConstraints");
                  goto LABEL_101;
                }
              }

              else
              {
                if (!v86)
                {
                  inited = 569868;
                  hx509_set_error_string(a1, 0, 569868, "Not a CA and have NameConstraints");
LABEL_206:
                  sub_2522A20D4(v100);
                  goto LABEL_101;
                }

                v62 = malloc_type_realloc(v49, 16 * v50 + 16, 0x20040A4A59CD2uLL);
                if (!v62)
                {
                  hx509_clear_error_string(a1);
                  inited = 12;
                  goto LABEL_206;
                }

                v63 = v62;
                v64 = sub_2522A20E4(v100, &v62[2 * v50]);
                if (v64)
                {
                  inited = v64;
                  hx509_clear_error_string(a1);
                  v49 = v63;
                  goto LABEL_206;
                }

                ++v50;
                sub_2522A20D4(v100);
                v49 = v63;
              }
            }

            v45 = v86;
            if (!v86)
            {
              goto LABEL_136;
            }
          }
        }

LABEL_135:
        v50 = 0;
        v49 = 0;
LABEL_136:
        if (*(a2 + 32))
        {
          *&v100[0] = 0;
          inited = hx509_certs_init(a1, "MEMORY:revoke-certs", 0, 0, v100);
          if (inited)
          {
            goto LABEL_101;
          }

          if (v106)
          {
            v65 = 0;
            while (1)
            {
              v66 = hx509_certs_add(a1, *&v100[0], *(v107 + 8 * v65));
              if (v66)
              {
                break;
              }

              if (++v65 >= v106)
              {
                goto LABEL_142;
              }
            }

LABEL_146:
            inited = v66;
            hx509_certs_free(v100);
            goto LABEL_101;
          }

LABEL_142:
          v66 = hx509_certs_merge(a1, *&v100[0], a4);
          if (v66)
          {
            goto LABEL_146;
          }

          v67 = 0;
          while (v67 < v106 - 1)
          {
            v68 = v67 + 1;
            v66 = hx509_revoke_verify(a1, *(a2 + 32), *&v100[0], *(a2 + 16), *(v107 + 8 * v67), *(v107 + 8 * v67 + 8));
            v67 = v68;
            if (v66)
            {
              goto LABEL_146;
            }
          }

          hx509_certs_free(v100);
        }

        v71 = v49;
        v72 = v106;
        if (!v106)
        {
LABEL_181:
          v49 = v71;
          if (a5)
          {
            v78 = sub_25228F2AC();
            *a5 = v78;
            if (!v78)
            {
              inited = 12;
              goto LABEL_101;
            }

            if (v106)
            {
              for (j = 0; j < v106; ++j)
              {
                heim_array_append_value(*(*a5 + 32), *(v107 + 8 * j));
              }
            }
          }

          inited = 0;
          goto LABEL_101;
        }

        while (2)
        {
          v73 = *(v107 + 8 * v72 - 8);
          v74 = *(v73 + 56);
          if (v72 == v106)
          {
            LODWORD(v100[0]) = 0;
            v75 = sub_2522915DC(a1, v74, v100);
            if (v75)
            {
              goto LABEL_187;
            }

            if (!LODWORD(v100[0]))
            {
LABEL_180:
              if (!--v72)
              {
                goto LABEL_181;
              }

              continue;
            }
          }

          else
          {
            v73 = *(v107 + 8 * v72);
          }

          break;
        }

        v76 = sub_2522902E0(a1, v73, v74 + 248, v74, (v74 + 272));
        if (v76)
        {
          inited = v76;
          hx509_set_error_string(a1, 1, v76, "Failed to verify signature of certificate");
LABEL_190:
          v49 = v71;
LABEL_101:
          hx509_certs_free(&v101);
          sub_2522A1A20(&v102);
          if (v50)
          {
            v51 = v49;
            do
            {
              sub_2522A20D4(v51);
              v51 += 16;
              --v50;
            }

            while (v50);
          }

          free(v49);
          sub_25228EA88(&v106);
          goto LABEL_105;
        }

        if (v72 == 1)
        {
          goto LABEL_181;
        }

        if ((*(a2 + 8) & 0x20) == 0)
        {
          v77 = (*(v74 + 112) - 1) > 1 ? 0 : *(v74 + 120);
          v75 = sub_252294174(a1, v74 + 248, v77);
          if (v75)
          {
LABEL_187:
            inited = v75;
            goto LABEL_190;
          }
        }

        goto LABEL_180;
      }
    }

    if (v30 != 1)
    {
      v32 = sub_25228E694(a1, v31, 32, (*(a2 + 8) >> 2) & 1);
      if (v32)
      {
        inited = v32;
        hx509_set_error_string(a1, 1, v32, "Key usage missing from CA certificate");
        goto LABEL_100;
      }

      if (v29 + 1 == v106)
      {
        LOBYTE(inited) = 0;
      }

      else
      {
        LODWORD(v100[0]) = 0;
        v37 = sub_2522915DC(a1, v31, v100);
        inited = v37;
        if (LODWORD(v100[0]))
        {
          v38 = v82 + 1;
        }

        else
        {
          v38 = v82;
        }

        v82 = v38;
        if (v37)
        {
          goto LABEL_100;
        }
      }

      v35 = 0;
      v36 = 2;
      goto LABEL_63;
    }

LABEL_37:
    if (v87)
    {
      v33 = sub_25229C654(&v102, v31 + 144, &v105);
      if (v33)
      {
        inited = v33;
        hx509_set_error_string(a1, 0, v33, "out of memory");
        goto LABEL_100;
      }

      if (v105)
      {
        hx509_clear_error_string(a1);
        v49 = 0;
        v50 = 0;
        inited = 569878;
        goto LABEL_101;
      }

      if (a3[11])
      {
        hx509_name_free(a3 + 11);
      }

      v34 = hx509_name_from_Name(&v102, a3 + 11);
      if (v34)
      {
        inited = v34;
        hx509_clear_error_string(a1);
        goto LABEL_100;
      }
    }

    v35 = 0;
    LOBYTE(inited) = 1;
    v36 = 1;
    goto LABEL_63;
  }

  if (!a5)
  {
    goto LABEL_18;
  }

  CertificateCount = SecTrustGetCertificateCount(trust);
  v18 = sub_25228F2AC();
  *a5 = v18;
  if (!v18)
  {
    CFRelease(trust);
    inited = 12;
    goto LABEL_105;
  }

  if (CertificateCount >= 1)
  {
    v19 = 0;
    while (1)
    {
      CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, v19);
      if (!CertificateAtIndex)
      {
        sub_2522A8188();
      }

      v21 = SecCertificateCopyData(CertificateAtIndex);
      if (!v21)
      {
        sub_2522A8170();
      }

      v22 = v21;
      *&v102 = 0;
      BytePtr = CFDataGetBytePtr(v21);
      Length = CFDataGetLength(v22);
      inited = hx509_cert_init_data(a1, BytePtr, Length, &v102);
      CFRelease(v22);
      if (inited)
      {
        break;
      }

      v25 = v102;
      heim_array_append_value(*(*a5 + 32), v102);
      heim_release(v25);
      if (CertificateCount == ++v19)
      {
        goto LABEL_18;
      }
    }

    CFRelease(trust);
    heim_release(*a5);
    *a5 = 0;
  }

  else
  {
LABEL_18:
    CFRelease(trust);
    inited = 0;
  }

LABEL_105:
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
  return inited;
}

SecCertificateRef sub_25229014C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v2 = 0;
  if (!hx509_cert_binary(a1, a2, &v7))
  {
    v3 = v8;
    v4 = CFDataCreateWithBytesNoCopy(0, v8, v7, *MEMORY[0x277CBED00]);
    if (v4)
    {
      v5 = v4;
      v2 = SecCertificateCreateWithData(0, v4);
      CFRelease(v5);
    }

    else
    {
      v2 = 0;
    }

    free(v3);
  }

  return v2;
}

uint64_t sub_2522901DC(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = sub_25229014C(a1[6], a2);
  CFArrayAppendValue(*(*(a1[5] + 8) + 24), *(*(a1[4] + 8) + 24));
  CFRelease(*(*(a1[4] + 8) + 24));
  return 0;
}

void sub_25229023C()
{
  v0 = CFPreferencesCopyValue(@"AllowHX509Validation", @"org.h5l.hx509", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v0)
  {
    v1 = v0;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      byte_27F4D9728 = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

uint64_t sub_2522902E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((*a5 & 7) != 0)
  {
    v5 = 569925;
    hx509_set_error_string(a1, 0, 569925, "signature not multiple of 8 bits");
  }

  else
  {
    v6 = a5[1];
    v8[0] = *a5 >> 3;
    v8[1] = v6;
    return hx509_verify_signature_0(a1, a2, a3, a4, v8);
  }

  return v5;
}

uint64_t hx509_verify_hostname(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const char *a5, uint64_t a6, int a7)
{
  if (a6 && a7 < 1)
  {
    return 22;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  while (1)
  {
    v11 = sub_25228E628(*(a2 + 56), &v23, &v24);
    if (v11)
    {
      break;
    }

    v12 = v24;
    if (v24)
    {
      v13 = 0;
      for (i = 0; i < v12; ++i)
      {
        if (*(v25 + v13) == 3)
        {
          strlen(a5);
          if (!der_printable_string_cmp())
          {
            sub_2522A1E98(&v24);
            return 0;
          }

          v12 = v24;
        }

        v13 += 40;
      }
    }

    sub_2522A1E98(&v24);
  }

  if (v11 != 569857)
  {
    return 569968;
  }

  v15 = *(a2 + 56);
  v16 = *(v15 + 168);
  if (!v16)
  {
    v21 = 0;
    goto LABEL_33;
  }

  while (1)
  {
    --v16;
    v17 = *(v15 + 176);
    if (*(v17 + 16 * v16))
    {
      break;
    }

LABEL_20:
    if (!v16)
    {
      v21 = 0;
      goto LABEL_33;
    }
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 16 * v16 + 8);
    if (!der_heim_oid_cmp())
    {
      break;
    }

    ++v19;
    v17 = *(v15 + 176);
    v18 += 40;
    if (v19 >= *(v17 + 16 * v16))
    {
      goto LABEL_20;
    }
  }

  v22 = *(v20 + v18 + 16);
  switch(v22)
  {
    case 1:
      strlen(a5);
      result = der_ia5_string_cmp();
LABEL_30:
      v21 = 569870;
      if (!result)
      {
        return result;
      }

      goto LABEL_33;
    case 5:
      result = strcasecmp(*(v20 + v18 + 24), a5);
      goto LABEL_30;
    case 3:
      strlen(a5);
      result = der_printable_string_cmp();
      goto LABEL_30;
  }

  v21 = 569870;
LABEL_33:
  if (a3)
  {
    return v21;
  }

  else
  {
    return 569870;
  }
}

uint64_t sub_252290590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (hx509_cert_get_attribute(a2, a3))
  {
    return 0;
  }

  v7 = malloc_type_realloc(*(a2 + 80), 8 * *(a2 + 72) + 8, 0x2004093837F09uLL);
  if (v7)
  {
    *(a2 + 80) = v7;
    v8 = malloc_type_malloc(0x20uLL, 0x10900401C8C3F62uLL);
    if (v8)
    {
      v9 = v8;
      der_copy_octet_string();
      der_copy_oid();
      result = 0;
      v10 = *(a2 + 72);
      *(*(a2 + 80) + 8 * v10) = v9;
      *(a2 + 72) = v10 + 1;
      return result;
    }
  }

  else
  {
    hx509_clear_error_string(a1);
  }

  return 12;
}

uint64_t hx509_cert_get_attribute(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 72))
  {
    return 0;
  }

  v3 = 0;
  while (der_heim_oid_cmp())
  {
    if (++v3 >= *(a1 + 72))
    {
      return 0;
    }
  }

  return *(*(a1 + 80) + 8 * v3);
}

uint64_t hx509_cert_set_friendly_name(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *(a1 + 32) = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

_BYTE *hx509_cert_get_friendly_name(uint64_t a1)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (!result)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    attribute = hx509_cert_get_attribute(a1, &unk_279702480);
    if (attribute)
    {
      if (!sub_25228B8D4(*(attribute + 24), *(attribute + 16), &v12, &v11))
      {
        if (v12 == 1)
        {
          v5 = malloc_type_malloc(*v13 + 1, 0x3EF05833uLL);
          *v3 = v5;
          if (v5)
          {
            v6 = v13;
            v7 = *v13;
            if (*v13)
            {
              v7 = 0;
              do
              {
                v8 = *(v6[1] + 2 * v7);
                if (v8 >= 0x100)
                {
                  LOBYTE(v8) = 88;
                }

                *(*v3 + v7++) = v8;
                v6 = v13;
              }

              while (v7 < *v13);
              v5 = *v3;
            }

            v5[v7] = 0;
            sub_25228B8F4(&v12);
            return *v3;
          }
        }

        sub_25228B8F4(&v12);
      }
    }

    else
    {
      v10 = 0;
      if (!hx509_name_from_Name(*(a1 + 56) + 144, &v10))
      {
        v9 = hx509_name_to_string(v10, v3);
        hx509_name_free(&v10);
        if (!v9)
        {
          return *v3;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t hx509_cert_get_persistent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {

    return der_copy_octet_string();
  }

  else
  {
    v4 = *(*(a1 + 56) + 216);
    v6[0] = *(*(a1 + 56) + 208) >> 3;
    v6[1] = v4;
    v5 = hx509_signature_sha1();
    result = sub_25229444C(0, 0, v5, v6, 0, a2);
    if (!result)
    {
      der_free_octet_string();
      der_copy_octet_string();
      return 0;
    }
  }

  return result;
}

double sub_2522908F8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t hx509_query_alloc(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 0x88uLL, 0x10B004077450F5CuLL);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

_DWORD *hx509_query_match_option(_DWORD *result, int a2)
{
  if ((a2 - 1) <= 3)
  {
    *result |= dword_2522AA610[a2 - 1];
  }

  return result;
}

uint64_t hx509_query_match_issuer_serial(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    der_free_heim_integer();
    free(*(a1 + 24));
  }

  v5 = malloc_type_malloc(0x18uLL, 0x10800409070E284uLL);
  *(a1 + 24) = v5;
  if (!v5)
  {
    return 12;
  }

  v6 = der_copy_heim_integer();
  if (v6)
  {
    v7 = v6;
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    return v7;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    sub_2522A1A20(v8);
    free(*(a1 + 48));
  }

  v9 = malloc_type_malloc(0x28uLL, 0x10A0040F20C3E80uLL);
  *(a1 + 48) = v9;
  if (!v9)
  {
    return 12;
  }

  v7 = hx509_name_to_Name_0(a2, v9);
  if (v7)
  {
    free(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  else
  {
    *a1 |= 6u;
  }

  return v7;
}

uint64_t hx509_query_match_friendly_name(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    free(v4);
  }

  v5 = strdup(__s1);
  *(a1 + 72) = v5;
  if (!v5)
  {
    return 12;
  }

  result = 0;
  *a1 |= 0x40000u;
  return result;
}

uint64_t hx509_query_match_eku(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  if (!a2)
  {
    if (v3)
    {
      der_free_oid();
      free(*(a1 + 112));
      *(a1 + 112) = 0;
    }

    v4 = *a1 & 0xFFBFFFFF;
    goto LABEL_11;
  }

  if (v3)
  {
    der_free_oid();
  }

  else
  {
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
    *(a1 + 112) = v5;
    if (!v5)
    {
      return 12;
    }
  }

  v6 = der_copy_oid();
  if (!v6)
  {
    v4 = *a1 | 0x400000;
LABEL_11:
    v7 = 0;
    *a1 = v4;
    return v7;
  }

  v7 = v6;
  free(*(a1 + 112));
  *(a1 + 112) = 0;
  return v7;
}

uint64_t hx509_query_match_cmp_func(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a1 & 0xFFF7FFFF | ((a2 != 0) << 19);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  return 0;
}

uint64_t hx509_query_match_persistent(uint64_t a1, uint64_t a2)
{
  *a1 = *a1 & 0xFEFFFFFF | ((a2 != 0) << 24);
  *(a1 + 128) = a2;
  return 0;
}

void hx509_query_free(int a1, void **a2)
{
  if (a2)
  {
    if (a2[3])
    {
      der_free_heim_integer();
      free(a2[3]);
    }

    v3 = a2[6];
    if (v3)
    {
      sub_2522A1A20(v3);
      free(a2[6]);
    }

    if (a2[14])
    {
      der_free_oid();
      free(a2[14]);
    }

    v4 = a2[9];
    if (v4)
    {
      free(v4);
    }

    a2[16] = 0;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;

    free(a2);
  }
}

const char *sub_252290C74(uint64_t result, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 56);
  v8 = *a2;
  if (*a2)
  {
    if (sub_25228E808(*(a2 + 1), *(a3 + 56), 0))
    {
      return 0;
    }

    v8 = *a2;
  }

  if ((v8 & 0x8000) != 0)
  {
    if (sub_25228EED8(*(a2 + 2), v7))
    {
      return 0;
    }

    v8 = *a2;
  }

  if ((v8 & 2) != 0)
  {
    if (der_heim_integer_cmp())
    {
      return 0;
    }

    v8 = *a2;
  }

  v24 = 0;
  if ((v8 & 4) != 0)
  {
    v9 = sub_25229C654(v7 + 72, *(a2 + 6), &v24);
    if (v9 | v24)
    {
      return 0;
    }

    v8 = *a2;
  }

  if ((v8 & 8) != 0)
  {
    v10 = sub_25229C654(v7 + 144, *(a2 + 7), &v24);
    if (v10 | v24)
    {
      return 0;
    }

    v8 = *a2;
  }

  if ((v8 & 0x10) != 0)
  {
    v22 = 0;
    v23 = 0;
    if (sub_25228E308(v7, &v22))
    {
      return 0;
    }

    v15 = der_heim_octet_string_cmp();
    sub_2522A2030(&v22);
    if (v15)
    {
      return 0;
    }

    v8 = *a2;
    if ((*a2 & 0x20) != 0)
    {
      return 0;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    return 0;
  }

  if ((v8 & 0x40) != 0 && !*(a3 + 64))
  {
    return 0;
  }

  v11 = (v8 >> 10) & 2 | (v8 >> 8) & 1 | (v8 >> 5) & 4 | (v8 >> 10) & 8 | (v8 >> 8) & 0x10 | (v8 >> 4) & 0x60;
  if (v11)
  {
    if (sub_25228E694(result, v7, v11, 1))
    {
      return 0;
    }

    v8 = *a2;
  }

  if ((v8 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v8 & 0x10000) != 0)
  {
    attribute = hx509_cert_get_attribute(a3, &unk_279702490);
    if (!attribute)
    {
      return attribute;
    }

    if (der_heim_octet_string_cmp())
    {
      return 0;
    }

    v8 = *a2;
    if ((*a2 & 0x20000) == 0)
    {
LABEL_38:
      if ((v8 & 0x40000) != 0)
      {
        attribute = hx509_cert_get_friendly_name(a3);
        if (!attribute)
        {
          return attribute;
        }

        if (strcasecmp(*(a2 + 9), attribute))
        {
          return 0;
        }

        v8 = *a2;
        if ((*a2 & 0x80000) != 0)
        {
          goto LABEL_40;
        }
      }

      else if ((v8 & 0x80000) != 0)
      {
LABEL_40:
        if ((*(a2 + 10))(result, a3, *(a2 + 11), a4))
        {
          return 0;
        }

        v8 = *a2;
      }

      if ((v8 & 0x100000) != 0)
      {
        v16 = *(v7 + 216);
        v22 = *(v7 + 208) >> 3;
        v23 = v16;
        v17 = hx509_signature_sha1();
        if (hx509_verify_signature_0(result, 0, v17, &v22, *(a2 + 12)))
        {
          return 0;
        }

        v8 = *a2;
      }

      if ((v8 & 0x200000) != 0)
      {
        v18 = (*(v7 + 112) - 1) > 1 ? 0 : *(v7 + 120);
        v19 = *(a2 + 13);
        if (v18 > v19)
        {
          return 0;
        }

        v20 = (*(v7 + 128) - 1) > 1 ? 0 : *(v7 + 136);
        if (v20 < v19)
        {
          return 0;
        }
      }

      if ((v8 & 0x400000) != 0)
      {
        if (hx509_cert_check_eku(result, a3, *(a2 + 14)))
        {
          return 0;
        }

        v8 = *a2;
      }

      if ((v8 & 0x800000) == 0)
      {
        if ((v8 & 0x1000000) == 0)
        {
          return (v8 >> 25 == 0);
        }

        v22 = 0;
        v23 = 0;
        if (!hx509_cert_get_persistent(a3, &v22))
        {
          v21 = der_heim_octet_string_cmp();
          der_free_octet_string();
          if (!v21)
          {
            v8 = *a2;
            return (v8 >> 25 == 0);
          }
        }
      }

      return 0;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_38;
  }

  v12 = *(a2 + 8);
  if (!*v12)
  {
    goto LABEL_38;
  }

  v13 = 0;
  while (1)
  {
    attribute = sub_25228EED8(*(*(v12[1] + 8 * v13) + 56), *(a3 + 56));
    if (!attribute)
    {
      return attribute;
    }

    ++v13;
    v12 = *(a2 + 8);
    if (v13 >= *v12)
    {
      v8 = *a2;
      goto LABEL_38;
    }
  }
}

uint64_t hx509_cert_check_eku(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_252291070(*(a2 + 56), v9);
  if (v4)
  {
    v5 = v4;
    hx509_clear_error_string(a1);
  }

  else if (LODWORD(v9[0]))
  {
    v6 = 0;
    v7 = 0;
    while (der_heim_oid_cmp())
    {
      ++v7;
      v6 += 16;
      if (v7 >= LODWORD(v9[0]))
      {
        goto LABEL_7;
      }
    }

    sub_2522A2148(v9);
    return 0;
  }

  else
  {
LABEL_7:
    sub_2522A2148(v9);
    hx509_clear_error_string(a1);
    return 569881;
  }

  return v5;
}

uint64_t sub_252291070(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = 0;
  *a2 = 0;
  a2[1] = 0;
  v3 = sub_25228E36C(a1, &unk_279705B68, &v5);
  if (v3)
  {
    return sub_2522A20F8(*(v3 + 32), *(v3 + 24), a2, &v6);
  }

  else
  {
    return 569857;
  }
}

uint64_t sub_2522910D4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v8 = 0;
  *a3 = 0;
  v3 = *(a2 + 56);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v9 = 0;
  if (*v4 + 1 < 3)
  {
    return 0;
  }

  v7 = sub_25228E36C(v3, &unk_279705878, &v8);
  if (v7)
  {
    return sub_2522A1F28(*(v7 + 32), *(v7 + 24), a3, &v9);
  }

  else
  {
    return 569872;
  }
}

uint64_t sub_252291160(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = sub_252291070(*(a2 + 56), a3);
  if (v4)
  {
    v5 = v4 == 569857;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v4;
  hx509_clear_error_string(a1);
  return v6;
}

uint64_t hx509_cert_binary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = sub_2522A1CA0(*(a2 + 56));
  *a3 = v5;
  v6 = malloc_type_malloc(v5, 0xAB35A276uLL);
  *(a3 + 8) = v6;
  if (!v6)
  {
    v15 = 12;
    goto LABEL_5;
  }

  v7 = sub_2522A1C80(v6 + *a3 - 1, *a3, *(a2 + 56), &v17);
  if (v7)
  {
    v15 = v7;
    free(*(a3 + 8));
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    return v15;
  }

  if (*a3 != v17)
  {
    sub_25229126C("internal ASN.1 encoder error", v8, v9, v10, v11, v12, v13, v14);
  }

  return 0;
}

uint64_t hx509_print_cert(uint64_t a1, uint64_t a2, FILE *a3)
{
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *MEMORY[0x277D85DF8];
  }

  result = hx509_name_from_Name(*(a2 + 56) + 72, &v11);
  if (!result)
  {
    hx509_name_to_string(v11, &v10);
    hx509_name_free(&v11);
    fprintf(v5, "    issuer:  %s\n", v10);
    free(v10);
    result = hx509_name_from_Name(*(a2 + 56) + 144, &v11);
    if (!result)
    {
      hx509_name_to_string(v11, &v10);
      hx509_name_free(&v11);
      fprintf(v5, "    subject: %s\n", v10);
      free(v10);
      v7 = 0;
      v8 = 0;
      v9 = 0;
      result = der_copy_heim_integer();
      if (!result)
      {
        result = der_print_hex_heim_integer();
        if (!result)
        {
          der_free_heim_integer();
          fprintf(v5, "    serial: %s\n", v10);
          free(v10);
          fwrite("    keyusage: ", 0xEuLL, 1uLL, v5);
          if (hx509_cert_keyusage_print(a1, a2, &v10))
          {
            fwrite("no\n", 3uLL, 1uLL, v5);
          }

          else
          {
            fprintf(v5, "%s\n", v10);
            free(v10);
          }

          v7 = 0;
          v8 = 0;
          fwrite("    persistent: ", 0x10uLL, 1uLL, v5);
          if (hx509_cert_get_persistent(a2, &v7))
          {
            fwrite("no\n", 3uLL, 1uLL, v5);
          }

          else
          {
            if (rk_hex_encode(v8, v7, &v10) < 1)
            {
              fwrite("out of memory\n", 0xEuLL, 1uLL, v5);
            }

            else
            {
              fprintf(v5, "%s\n", v10);
              free(v10);
            }

            der_free_octet_string();
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t hx509_cert_get_appleid(uint64_t a1, uint64_t a2, char **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v12[0] = xmmword_2522AA5E4;
  v12[1] = unk_2522AA5F4;
  v11[0] = 8;
  v11[1] = v12;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  *a3 = 0;
  v5 = hx509_cert_check_eku(a1, a2, v11);
  if (v5)
  {
    return v5;
  }

  v5 = hx509_name_from_Name(*(a2 + 56) + 144, &v9);
  if (v5)
  {
    return v5;
  }

  v6 = sub_25229C7B4(v9, 3u, &unk_279704CD8, &v10, &v8);
  hx509_name_free(&v9);
  if (!v6)
  {
    asprintf(a3, "%s@me.com", v8);
    free(v8);
    if (*a3)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return v6;
}

uint64_t sub_2522915DC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = 0;
  v6 = sub_25229C654(a2 + 144, a2 + 72, &v9);
  *a3 = v9 == 0;
  if (!v6)
  {
    return sub_252294240(a1, a2 + 248);
  }

  v7 = v6;
  hx509_set_error_string(a1, 0, v6, "Failed to check if self signed");
  return v7;
}

uint64_t sub_252291670(unsigned int *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v19 = 0;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(a1 + 1);
    v8 = v7 + 56 * v5;
    if (*(v8 + 40) && *(v8 + 48))
    {
      return 569869;
    }

    if (*v8 == 4 && *(a2 + 168))
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v9 = *(a2 + 160);
      LODWORD(v16) = 4;
      DWORD2(v16) = v9;
      v17 = *(a2 + 168);
      sub_25229180C(v8, &v16, &v19 + 1);
      v7 = *(a1 + 1);
    }

    v10 = (v7 + 56 * v5);
    v16 = 0uLL;
    v20 = 0;
    while (1)
    {
      LODWORD(result) = sub_25228E628(a2, &v20, &v16);
      if (result)
      {
        break;
      }

      v12 = v16;
      if (v16)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          if (*v10 == *(*(&v16 + 1) + v13))
          {
            sub_25229180C(v10, *(&v16 + 1) + v13, &v19);
            v12 = v16;
            v6 = 1;
          }

          ++v14;
          v13 += 40;
        }

        while (v14 < v12);
      }

      sub_2522A1E98(&v16);
    }

    if (result == 569857)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    ++v5;
  }

  while (v5 < *a1);
  if (HIDWORD(v19) && (!v6 || v19))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_25229180C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *result;
  if (*result != *a2)
  {
    sub_2522A820C();
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v21 = *(result + 8);
      v22 = *(a2 + 8);
      if (v22 >= v21)
      {
        v23 = (*(a2 + 16) + v22 - v21);
        result = memcmp(v23, *(result + 16), *(result + 8));
        if (!result)
        {
          if (v22 != v21)
          {
            v24 = *(v23 - 1);
            goto LABEL_31;
          }

LABEL_38:
          *a3 = 1;
        }
      }
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      if (*(result + 8) != 1 || *(a2 + 8) != 1)
      {
        goto LABEL_38;
      }

      v8 = *(result + 16);
      if (v8 > *(a2 + 16))
      {
        return result;
      }

      if (!v8)
      {
        goto LABEL_38;
      }

      v9 = 0;
      v10 = *(result + 24);
      v11 = *(a2 + 24);
      while (1)
      {
        v12 = v10 + 16 * v9;
        v13 = (v11 + 16 * v9);
        if (*v12 != *v13)
        {
          break;
        }

        if (*v12)
        {
          v14 = 0;
          v15 = 16;
          do
          {
            v29 = 0;
            result = der_heim_oid_cmp();
            if (result)
            {
              return result;
            }

            result = sub_25229C2C0(*(v12 + 8) + v15, *(v13 + 1) + v15, &v29, v16, v17, v18, v19, v20);
            if (result || v29)
            {
              return result;
            }

            ++v14;
            v15 += 40;
          }

          while (v14 < *v13);
        }

        if (++v9 == v8)
        {
          goto LABEL_38;
        }
      }
    }
  }

  else if (v3 == 1)
  {
    result = der_heim_oid_cmp();
    if (!result)
    {
      result = der_heim_octet_string_cmp();
      if (!result)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(result + 8);
    v7 = *(result + 16);
    if (memchr(v7, 64, v6))
    {
      result = der_printable_string_cmp();
      if (result)
      {
        return result;
      }

      goto LABEL_38;
    }

    v26 = *(a2 + 8);
    v25 = *(a2 + 16);
    result = memchr(v25, 64, v26);
    if (result)
    {
      v27 = result;
      v28 = &v25[v26 - result];
      if (v28 >= v6)
      {
        result = memcmp(&v28[result - v6 + 1], v7, v6);
        if (!result)
        {
          if (v28 > v6)
          {
            v24 = v28[v27 - v6 + 1];
LABEL_31:
            if (v24 != 46)
            {
              return result;
            }

            goto LABEL_38;
          }

          goto LABEL_38;
        }
      }
    }
  }

  return result;
}

uint64_t hx509_cms_wrap_ContentInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19[0] = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  v19[1] = 0;
  v20 = 0;
  v5 = der_copy_oid();
  if (v5)
  {
    return v5;
  }

  if (a2)
  {
    v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    if (!v20)
    {
      goto LABEL_9;
    }

    v6 = malloc_type_malloc(*a2, 0x9E72D83BuLL);
    v20[1] = v6;
    if (!v6)
    {
      goto LABEL_9;
    }

    memcpy(v6, *(a2 + 8), *a2);
    *v20 = *a2;
  }

  v7 = length_ContentInfo(v19);
  *a3 = v7;
  v8 = malloc_type_malloc(v7, 0xCB9F9BE8uLL);
  *(a3 + 8) = v8;
  if (!v8)
  {
LABEL_9:
    v5 = 12;
    goto LABEL_10;
  }

  v9 = encode_ContentInfo(v8 + *a3 - 1, *a3, v19, &v18);
  if (v9)
  {
    v5 = v9;
    free(*(a3 + 8));
    *(a3 + 8) = 0;
LABEL_10:
    free_ContentInfo(v19);
    return v5;
  }

  free_ContentInfo(v19);
  if (*a3 != v18)
  {
    sub_25229126C("internal ASN.1 encoder error", v11, v12, v13, v14, v15, v16, v17);
  }

  return 0;
}

uint64_t hx509_cms_unwrap_ContentInfo(uint64_t *a1, void *a2, void *a3, _DWORD *a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v9 = 0;
  *a2 = 0;
  a2[1] = 0;
  *a3 = 0;
  a3[1] = 0;
  v6 = sub_2522A1530(a1[1], *a1, v10, &v9);
  if (!v6)
  {
    v6 = der_copy_oid();
    if (v6)
    {
LABEL_3:
      free_ContentInfo(v10);
      return v6;
    }

    if (v11)
    {
      v8 = der_copy_octet_string();
      if (v8)
      {
        v6 = v8;
        der_free_oid();
        goto LABEL_3;
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    v6 = 0;
    if (a4)
    {
      *a4 = v11 != 0;
    }

    goto LABEL_3;
  }

  return v6;
}

uint64_t hx509_cms_unenvelope(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, size_t *a6, time_t a7, void *a8, size_t *a9)
{
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37[0] = 0;
  v47 = 0;
  v48 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  v37[1] = 0;
  *a9 = 0;
  a9[1] = 0;
  if (a3)
  {
    v14 = 64;
  }

  else
  {
    v14 = 192;
  }

  *a8 = 0;
  a8[1] = 0;
  v15 = sub_2522A16E8(a4, a5, &v41, &v36);
  if (v15)
  {
    v16 = v15;
    hx509_set_error_string(a1, 0, v15, "Failed to decode EnvelopedData");
    return v16;
  }

  if (!v42)
  {
    v16 = 569894;
    v17 = "No recipient info in enveloped data";
    v18 = a1;
    v19 = 0;
LABEL_29:
    v29 = 569894;
    goto LABEL_30;
  }

  if (*(&v45 + 1))
  {
    if (a6)
    {
      v16 = 569891;
      v17 = "Both internal and external encrypted data";
      goto LABEL_24;
    }

    a6 = *(&v45 + 1);
  }

  else if (!a6)
  {
    v16 = 569891;
    v17 = "Content missing from encrypted data";
    goto LABEL_24;
  }

  v34 = a6;
  v20 = 0;
  v21 = 0;
  v40 = 0;
  v22 = 80;
  while (1)
  {
    v35 = 0;
    v23 = *(&v42 + 1) + v22;
    v24 = (*(&v42 + 1) + v22 - 72);
    if (!sub_252292004(a1, v24, a2, a7, &v40, v14))
    {
      break;
    }

LABEL_19:
    ++v20;
    v22 += 120;
    if (v20 >= v42)
    {
      v27 = a9;
      if (v21)
      {
        if (v40)
        {
          goto LABEL_22;
        }

LABEL_26:
        v16 = 569894;
        v17 = "No private key decrypted the transfer key";
      }

      else
      {
        v16 = 569894;
        v17 = "No matching certificate found in the enveloped data";
      }

      v18 = a1;
      v19 = 1;
      goto LABEL_29;
    }
  }

  v25 = v40;
  v26 = sub_25228F254(a1, (v23 + 24), v23, v40, &v47);
  hx509_cert_free(v25);
  if (v26)
  {
    v40 = 0;
    v21 = 1;
    if (!sub_25229218C(v24, &v35))
    {
      hx509_set_error_string(a1, 1, v26, "Failed to decrypt with %s", v35);
      free(v35);
    }

    goto LABEL_19;
  }

  v27 = a9;
  if (!v25)
  {
    goto LABEL_26;
  }

LABEL_22:
  v28 = der_copy_oid();
  if (v28)
  {
    v16 = v28;
    v17 = "Failed to copy EnvelopedData content oid";
    goto LABEL_24;
  }

  if (v45)
  {
    v39 = *(v45 + 8);
    v38 = *v45;
    v31 = &v38;
  }

  else
  {
    v31 = 0;
  }

  v35 = 0;
  v16 = hx509_crypto_init(a1, 0, &v44, &v35);
  if (!v16)
  {
    if ((a3 & 2) != 0)
    {
      sub_25229509C(v35);
    }

    if (v31)
    {
      v32 = hx509_crypto_set_params(a1, v35, v31);
      if (v32)
      {
        v16 = v32;
        hx509_crypto_destroy(v35);
        goto LABEL_31;
      }
    }

    v16 = hx509_crypto_set_key_data(v35, v48, v47);
    if (v16)
    {
      hx509_crypto_destroy(v35);
      v17 = "Failed to set key for decryption of EnvelopedData";
      goto LABEL_24;
    }

    v33 = v37[0] ? v37 : 0;
    v16 = hx509_crypto_decrypt(v35, v34[1], *v34, v33, v27);
    hx509_crypto_destroy(v35);
    if (v16)
    {
      v17 = "Failed to decrypt EnvelopedData";
LABEL_24:
      v18 = a1;
      v19 = 0;
      v29 = v16;
LABEL_30:
      hx509_set_error_string(v18, v19, v29, v17);
    }
  }

LABEL_31:
  sub_2522A1738(&v41);
  der_free_octet_string();
  if (v37[0])
  {
    der_free_octet_string();
  }

  if (v16)
  {
    der_free_oid();
    der_free_octet_string();
  }

  return v16;
}

uint64_t sub_252292004(uint64_t a1, int *a2, uint64_t a3, time_t a4, void *a5, int a6)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  sub_2522908F8(&v21);
  *a5 = 0;
  v12 = *a2;
  if (!*a2)
  {
    v14 = 569894;
    v15 = "unknown CMS identifier element";
LABEL_17:
    hx509_set_error_string(a1, 0, 569894, v15, v18);
    return v14;
  }

  if (v12 == 1)
  {
    *(&v22 + 1) = a2 + 12;
    *&v24 = a2 + 2;
    v13 = 6;
  }

  else if (v12 == 2)
  {
    *&v23 = a2 + 2;
    v13 = 16;
  }

  else
  {
    v13 = v21;
  }

  LODWORD(v21) = v13 | a6 | 0x200000;
  if (!a4)
  {
    a4 = time(0);
  }

  *(&v27 + 1) = a4;
  v16 = hx509_certs_find(a1, a3, &v21, &v20);
  if (!v16)
  {
    v14 = 0;
    *a5 = v20;
    return v14;
  }

  v14 = 569894;
  if (v16 != 569873)
  {
    hx509_set_error_string(a1, 1, 569894, "Failed to find CMS id in cert store");
    return v14;
  }

  v19 = 0;
  if (!sub_25229218C(a2, &v19))
  {
    v18 = v19;
    v15 = "Failed to find %s";
    goto LABEL_17;
  }

  hx509_clear_error_string(a1);
  return v14;
}

uint64_t sub_25229218C(int *a1, char **a2)
{
  *a2 = 0;
  v3 = *a1;
  if (*a1)
  {
    if (v3 == 2)
    {
      v7 = 0;
      if (rk_hex_encode(*(a1 + 2), *(a1 + 1), &v7) < 0)
      {
        return 12;
      }

      asprintf(a2, "certificate with id %s", v7);
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_11;
      }

      v6 = 0;
      v7 = 0;
      v4 = sub_25229BDB0((a1 + 2), &v6);
      if (v4)
      {
        return v4;
      }

      v4 = der_print_hex_heim_integer();
      if (v4)
      {
        free(v6);
        return v4;
      }

      asprintf(a2, "certificate issued by %s with serial number %s", v6, v7);
      free(v6);
    }

    free(v7);
  }

  else
  {
    asprintf(a2, "certificate have unknown CMSidentifier type");
  }

LABEL_11:
  if (*a2)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t hx509_cms_envelope_1(uint64_t a1, unsigned int a2, uint64_t a3, const void *a4, size_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v53 = 0;
  v54[0] = 0;
  v46 = 0;
  v55[0] = 0;
  v55[1] = 0;
  v54[1] = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  if (a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = &unk_279704C58;
  }

  *a8 = 0;
  *(a8 + 8) = 0;
  if ((a2 & 1) == 0)
  {
    params = sub_25228E68C(a1, a3, 4, 1);
    if (params)
    {
      goto LABEL_7;
    }
  }

  params = hx509_crypto_init(a1, 0, v14, &v53);
  if (params)
  {
    goto LABEL_7;
  }

  if ((a2 & 2) != 0)
  {
    sub_25229509C(v53);
  }

  v17 = hx509_crypto_set_random_key(v53, v54);
  if (v17)
  {
    v16 = v17;
    v18 = "Create random key for EnvelopedData content";
LABEL_18:
    v22 = a1;
    v23 = 0;
LABEL_19:
    v24 = v16;
LABEL_20:
    hx509_set_error_string(v22, v23, v24, v18);
    goto LABEL_21;
  }

  v19 = sub_252295220(v53, v55);
  if (v19)
  {
    v16 = v19;
    v18 = "Failed to create a random iv";
    goto LABEL_18;
  }

  v20 = hx509_crypto_encrypt(v53, a4, a5, v55, &v51 + 1);
  if (v20)
  {
    v16 = v20;
    v18 = "Failed to encrypt EnvelopedData content";
    goto LABEL_18;
  }

  v21 = der_copy_oid();
  if (v21)
  {
    v16 = v21;
    v18 = "Failed to set crypto oid for EnvelopedData";
    goto LABEL_18;
  }

  *&v51 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  if (!v51)
  {
    v18 = "Failed to allocate crypto paramaters for EnvelopedData";
LABEL_32:
    v16 = 12;
    v22 = a1;
    v23 = 0;
    v24 = 12;
    goto LABEL_20;
  }

  params = hx509_crypto_get_params(a1, v53);
  if (params)
  {
LABEL_7:
    v16 = params;
    goto LABEL_21;
  }

  LODWORD(v48) = 1;
  v26 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B00405CFCCFD2uLL);
  *(&v48 + 1) = v26;
  if (!v26)
  {
    v18 = "Failed to allocate recipients info for EnvelopedData";
    goto LABEL_32;
  }

  v32 = v26;
  *v26 = ((a2 & 4) >> 1) ^ 2;
  v33 = sub_2522925F8(a3, (a2 >> 2) & 1, (v26 + 2), v27, v28, v29, v30, v31);
  if (v33)
  {
    v16 = v33;
    v18 = "Failed to set CMS identifier info for EnvelopedData";
    goto LABEL_18;
  }

  v34 = sub_25228F2A4(a1, v54, a3, (v32 + 20), v32 + 13);
  if (v34)
  {
    v16 = v34;
    v18 = "Failed to encrypt transport key for EnvelopedData";
    v22 = a1;
    v23 = 1;
    goto LABEL_19;
  }

  LODWORD(v47) = 0;
  *(&v47 + 1) = 0;
  v35 = der_copy_oid();
  if (v35)
  {
    v16 = v35;
    v18 = "Failed to copy content oid for EnvelopedData";
    goto LABEL_18;
  }

  v52 = 0;
  v36 = sub_2522A1728(&v47);
  *a8 = v36;
  v37 = malloc_type_malloc(v36, 0x5160929BuLL);
  *(a8 + 8) = v37;
  if (!v37)
  {
    v16 = 12;
    goto LABEL_42;
  }

  v38 = sub_2522A1708(v37 + *a8 - 1, *a8, &v47, &v46);
  if (v38)
  {
    v16 = v38;
    free(*(a8 + 8));
    *(a8 + 8) = 0;
LABEL_42:
    v18 = "Failed to encode EnvelopedData";
    goto LABEL_18;
  }

  if (v46 != *a8)
  {
    sub_25229126C("internal ASN.1 encoder error", v39, v40, v41, v42, v43, v44, v45);
  }

  v16 = 0;
LABEL_21:
  if (v53)
  {
    hx509_crypto_destroy(v53);
  }

  if (v16)
  {
    der_free_octet_string();
  }

  der_free_octet_string();
  der_free_octet_string();
  sub_2522A1738(&v47);
  return v16;
}

uint64_t sub_2522925F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    if (a2)
    {
      sub_25229126C("CMS fill identifier with unknown type", a2, a3, a4, a5, a6, a7, a8);
    }

    *a3 = 2;
    v10 = sub_25228DE4C(a1);
    if (!sub_25228E308(v10, (a3 + 8)))
    {
      return 0;
    }
  }

  v14 = 0;
  *a3 = 1;
  issuer = hx509_cert_get_issuer(a1, &v14);
  if (!issuer)
  {
    v12 = hx509_name_to_Name(v14, a3 + 8);
    hx509_name_free(&v14);
    if (v12)
    {
      return v12;
    }

    return hx509_cert_get_serialnumber(a1, a3 + 48);
  }

  return issuer;
}

uint64_t hx509_cms_verify_signed(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, size_t *a9, __CFArray **a10)
{
  v70 = 0;
  v71[0] = 0;
  v65 = 0;
  *a10 = 0;
  *a9 = 0;
  a9[1] = 0;
  *a8 = 0;
  a8[1] = 0;
  memset(v66, 0, sizeof(v66));
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v15 = sub_2522A1658(a4, a5, v66, &v65);
  if (v15)
  {
    appended = v15;
    v17 = "Failed to decode SignedData";
    goto LABEL_3;
  }

  if (!(a6 | *(&v67 + 1)))
  {
    appended = 569891;
    v17 = "No content data in SignedData";
LABEL_9:
    v18 = a1;
    v19 = 569891;
    goto LABEL_10;
  }

  if (a6 && *(&v67 + 1))
  {
    appended = 569891;
    v17 = "Both external and internal SignedData";
    goto LABEL_9;
  }

  appended = der_copy_octet_string();
  if (appended)
  {
    v17 = "malloc: out of memory";
    goto LABEL_3;
  }

  v21 = hx509_certs_init(a1, "MEMORY:cms-cert-buffer", 0, 0, &v70);
  if (v21)
  {
    goto LABEL_23;
  }

  v22 = heim_array_create();
  *a10 = v22;
  if (!v22)
  {
    appended = 12;
    goto LABEL_11;
  }

  v21 = sub_252292DE0(a1, v66, v70);
  if (v21 || a7 && (v21 = hx509_certs_merge(a1, v70, a7), v21))
  {
LABEL_23:
    appended = v21;
    goto LABEL_11;
  }

  if (!v69)
  {
    if ((a3 & 4) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v23 = 0;
  v54 = 0;
  do
  {
    v63 = 0;
    v64 = 0;
    v62[0] = 0;
    v62[1] = 0;
    v61 = 0;
    v24 = *(&v69 + 1) + 160 * v23;
    if (!*(v24 + 136))
    {
      appended = 569889;
      hx509_set_error_string(a1, 0, 569889, "SignerInfo %d in SignedData missing sigature", v23);
      goto LABEL_74;
    }

    v25 = v70;
    v26 = sub_25228E2B0(a2);
    v27 = sub_252292004(a1, (v24 + 8), v25, v26, v71, 256);
    v28 = v24;
    if (v27)
    {
      if ((a3 & 2) == 0 || (v29 = v70, v30 = sub_25228E2B0(a2), v27 = sub_252292004(a1, (v28 + 8), v29, v30, v71, 0), v27))
      {
        appended = v27;
        goto LABEL_74;
      }
    }

    v57 = v28;
    if (*(v28 + 104))
    {
      v59 = 0;
      v60 = 0;
      v58[0] = 0;
      v58[1] = 0;
      v31 = *(v28 + 104);
      v60 = *(v31 + 8);
      LODWORD(v59) = *v31;
      if (!v59)
      {
        goto LABEL_49;
      }

      v32 = 0;
      v33 = 0;
      while (der_heim_oid_cmp())
      {
        ++v33;
        v32 += 32;
        if (v33 >= v59)
        {
          goto LABEL_49;
        }
      }

      if (!v60)
      {
LABEL_49:
        appended = 569922;
        hx509_set_error_string(a1, 0, 569922, "SignerInfo have signed attributes but messageDigest (signature) is missing");
        goto LABEL_70;
      }

      if (*(v60 + v32 + 16) != 1)
      {
        appended = 569922;
        hx509_set_error_string(a1, 0, 569922, "SignerInfo have more then one messageDigest (signature)");
        goto LABEL_70;
      }

      v37 = sub_2522A14E0(*(*(v60 + v32 + 24) + 8), **(v60 + v32 + 24), v58, &v65);
      if (v37)
      {
        appended = v37;
        hx509_set_error_string(a1, 0, v37, "Failed to decode messageDigest (signature)");
        goto LABEL_70;
      }

      appended = hx509_verify_signature_0(a1, 0, v57 + 80, a9, v58);
      der_free_octet_string();
      if (appended)
      {
        hx509_set_error_string(a1, 1, appended, "Failed to verify messageDigest");
        goto LABEL_70;
      }

      if (!v59)
      {
        goto LABEL_87;
      }

      v42 = 0;
      v43 = 0;
      while (der_heim_oid_cmp())
      {
        ++v43;
        v42 += 32;
        if (v43 >= v59)
        {
          goto LABEL_87;
        }
      }

      if (v60)
      {
        if (*(v60 + v42 + 16) != 1)
        {
          appended = 569895;
          hx509_set_error_string(a1, 0, 569895, "More then one oid in signedAttrs");
          goto LABEL_70;
        }

        v56 = v62;
        v44 = sub_2522A1490(*(*(v60 + v42 + 24) + 8), **(v60 + v42 + 24), v62, &v65);
        if (v44)
        {
          appended = v44;
          hx509_set_error_string(a1, 0, v44, "Failed to decode oid in signedAttrs");
          goto LABEL_70;
        }
      }

      else
      {
LABEL_87:
        v56 = &asn1_oid_id_pkcs7_data;
      }

      v63 = sub_2522A1638(&v59);
      v45 = malloc_type_malloc(v63, 0x1165E54DuLL);
      v64 = v45;
      if (!v45)
      {
        appended = 12;
        goto LABEL_92;
      }

      v46 = sub_2522A1618(v45 + v63 - 1, v63, &v59, &v65);
      if (v46)
      {
        appended = v46;
        free(v64);
        v64 = 0;
LABEL_92:
        if (v56 == v62)
        {
          der_free_oid();
        }

        hx509_clear_error_string(a1);
        goto LABEL_70;
      }

      if (v65 != v63)
      {
        sub_25229126C("internal ASN.1 encoder error", v47, v48, v49, v50, v51, v52, v53);
      }

      v35 = v56;
    }

    else
    {
      v34 = a9[1];
      v63 = *a9;
      v64 = v34;
      v35 = &asn1_oid_id_pkcs7_data;
    }

    v55 = v35;
    v36 = a3 | (der_heim_oid_cmp() == 0);
    if (v36)
    {
      appended = 0;
    }

    else
    {
      appended = 569895;
      hx509_set_error_string(a1, 0, 569895, "Oid in message mismatch from the expected");
    }

    if (v55 == v62)
    {
      der_free_oid();
    }

    if (v36)
    {
      appended = hx509_verify_signature();
      if (appended)
      {
        hx509_set_error_string(a1, 1, appended, "Failed to verify signature in CMS SignedData");
      }
    }

    if (*(v57 + 104))
    {
      free(v64);
      v64 = 0;
    }

    if (appended)
    {
      goto LABEL_70;
    }

    if ((a3 & 8) != 0)
    {
      v40 = sub_25228F2AC();
      v61 = v40;
      if (v40)
      {
        appended = heim_array_append_value(v40[4], v71[0]);
        if (!appended)
        {
LABEL_64:
          appended = heim_array_append_value(*a10, v61);
        }

        heim_release(v61);
        v41 = v54;
        if (!appended)
        {
          v41 = v54 + 1;
        }

        v54 = v41;
      }

      else
      {
        appended = 0;
      }

LABEL_70:
      v38 = v71[0];
      goto LABEL_71;
    }

    v38 = v71[0];
    v39 = sub_25228F384(a1, a2, v71[0], v70, &v61);
    if (!v39)
    {
      goto LABEL_64;
    }

    appended = v39;
LABEL_71:
    if (v38)
    {
      hx509_cert_free(v38);
    }

    v71[0] = 0;
LABEL_74:
    ++v23;
  }

  while (v23 < v69);
  if ((a3 & 4) != 0 && !v69)
  {
LABEL_106:
    heim_release(*a10);
    *a10 = 0;
LABEL_107:
    appended = der_copy_oid();
    if (appended)
    {
      hx509_clear_error_string(a1);
    }

    goto LABEL_11;
  }

  if (v54)
  {
    goto LABEL_107;
  }

  if (!appended)
  {
LABEL_105:
    appended = 569890;
    v17 = "No signers where found";
LABEL_3:
    v18 = a1;
    v19 = appended;
LABEL_10:
    hx509_set_error_string(v18, 0, v19, v17);
  }

LABEL_11:
  sub_2522A16A8(v66);
  if (v70)
  {
    hx509_certs_free(&v70);
  }

  if (appended)
  {
    if (a9[1])
    {
      der_free_octet_string();
    }

    if (*a10)
    {
      heim_release(*a10);
      *a10 = 0;
    }

    der_free_oid();
    der_free_octet_string();
  }

  return appended;
}

uint64_t sub_252292DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  if (!v3 || !*v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v12 = 0;
    inited = hx509_cert_init_data(a1, *(*(v3 + 1) + v7 + 8), *(*(v3 + 1) + v7), &v12);
    if (inited)
    {
      break;
    }

    v10 = hx509_certs_add(a1, a3, v12);
    hx509_cert_free(v12);
    if (v10)
    {
      return v10;
    }

    ++v8;
    v3 = *(a2 + 48);
    v7 += 16;
    if (v8 >= *v3)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t hx509_cms_create_signed_1(uint64_t a1, uint64_t a2, void *a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v17 = a2;
  v21 = 0;
  *a11 = 0;
  a11[1] = 0;
  v19 = hx509_certs_init(a1, "MEMORY:certs", 0, 0, &v21);
  if (!v19)
  {
    v19 = hx509_certs_add(a1, v21, a7);
    if (!v19)
    {
      v19 = hx509_cms_create_signed(a1, v17, a3, a4, a5, a6, v21, a8, a9, a10, a11);
    }

    hx509_certs_free(&v21);
  }

  return v19;
}

uint64_t hx509_cms_create_signed(uint64_t a1, char a2, void *a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = 0;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = &asn1_oid_id_pkcs7_data;
  }

  v47 = 0;
  v46 = 0u;
  v39 = 0u;
  v37 = 0u;
  v38 = 0u;
  memset(v36, 0, sizeof(v36));
  v42 = a5;
  v43 = a4;
  v40 = a6;
  v41 = v16;
  v44 = a8;
  v45 = vand_s8(vshl_u32(vdup_n_s32(a2), 0xFFFFFFFDFFFFFFFFLL), 0x100000001);
  if ((a2 & 0x10) != 0 || (v17 = hx509_certs_init(a1, "MEMORY:certs", 0, 0, &v46), !v17))
  {
    *(&v46 + 1) = a9;
    v47 = a10;
    LODWORD(v36[0]) = 3;
    der_copy_oid();
    if ((a2 & 1) == 0)
    {
      *(&v37 + 1) = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      if (!*(&v37 + 1))
      {
        goto LABEL_28;
      }

      v18 = malloc_type_malloc(a5, 0x7724B34uLL);
      *(*(&v37 + 1) + 8) = v18;
      if (!v18)
      {
        goto LABEL_28;
      }

      memcpy(v18, a4, a5);
      **(&v37 + 1) = a5;
    }

    if ((a2 & 4) == 0)
    {
      v19 = hx509_certs_iter_f(a1, a7, sub_252293274, v36);
      if (v19)
      {
        goto LABEL_24;
      }
    }

    if (v39)
    {
      v20 = 0;
      while (1)
      {
        v21 = *(&v39 + 1) + 160 * v20;
        if (!DWORD2(v36[0]))
        {
          goto LABEL_38;
        }

        v22 = 0;
        v23 = 0;
        do
        {
          if (!der_heim_oid_cmp())
          {
            break;
          }

          ++v23;
          v22 += 24;
        }

        while (v23 < DWORD2(v36[0]));
        if (DWORD2(v36[0]) == v23)
        {
LABEL_38:
          v24 = sub_2522A1410(v36 + 2, v21 + 80);
          if (v24)
          {
            break;
          }
        }

        if (++v20 >= v39)
        {
          goto LABEL_21;
        }
      }

      v17 = v24;
      goto LABEL_30;
    }

LABEL_21:
    if (!v46)
    {
      goto LABEL_25;
    }

    *&v38 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    if (v38)
    {
      v19 = hx509_certs_iter_f(a1, v46, sub_252293748, v36);
      if (v19)
      {
LABEL_24:
        v17 = v19;
LABEL_31:
        hx509_certs_free(&v46);
        sub_2522A16A8(v36);
        return v17;
      }

LABEL_25:
      v25 = sub_2522A1698(v36);
      *a11 = v25;
      v26 = malloc_type_malloc(v25, 0x7E86443CuLL);
      *(a11 + 8) = v26;
      if (v26)
      {
        v27 = sub_2522A1678(v26 + *a11 - 1, *a11, v36, &v48);
        if (!v27)
        {
          if (*a11 != v48)
          {
            sub_25229126C("internal ASN.1 encoder error", v28, v29, v30, v31, v32, v33, v34, *&v36[0]);
          }

          v17 = 0;
          goto LABEL_31;
        }

        v17 = v27;
        free(*(a11 + 8));
        *(a11 + 8) = 0;
        goto LABEL_30;
      }
    }

LABEL_28:
    v17 = 12;
LABEL_30:
    hx509_clear_error_string(a1);
    goto LABEL_31;
  }

  return v17;
}

uint64_t sub_252293274(uint64_t a1, uint64_t a2, const void *a3)
{
  v54 = 0;
  v55 = 0;
  v52 = 0;
  memset(v53, 0, sizeof(v53));
  v50 = 0;
  v51 = 0;
  if (!_hx509_cert_private_key(a3))
  {
    v8 = 569865;
    hx509_set_error_string(a1, 0, 569865, "Private key missing for signing");
    return v8;
  }

  v6 = *(a2 + 80);
  if (!v6)
  {
    v9 = _hx509_cert_private_key(a3);
    v8 = hx509_crypto_select(a1, 1, v9, *(a2 + 112), v53);
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_8:
    v10 = malloc_type_realloc(*(a2 + 72), 160 * (*(a2 + 64) + 1), 0x10B0040C24DB5AAuLL);
    if (!v10)
    {
      v8 = 12;
      goto LABEL_15;
    }

    *(a2 + 72) = v10;
    v16 = v10 + 160 * *(a2 + 64);
    *(v16 + 128) = 0u;
    *(v16 + 144) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *v16 = 1;
    v17 = sub_2522925F8(a3, *(a2 + 120), v16 + 8, v11, v12, v13, v14, v15);
    if (v17 || (*(v16 + 104) = 0, *(v16 + 152) = 0, v17 = copy_AlgorithmIdentifier(v53, v16 + 80), v17))
    {
      v8 = v17;
LABEL_12:
      hx509_clear_error_string(a1);
      goto LABEL_13;
    }

    if (der_heim_oid_cmp())
    {
      v46 = 0;
      v47 = 0;
      v49[0] = 0;
      v49[1] = 0;
      v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      *(v16 + 104) = v19;
      if (!v19)
      {
        goto LABEL_40;
      }

      v8 = sub_25229444C(a1, 0, v53, a2 + 96, 0, v49);
      if (v8)
      {
        goto LABEL_13;
      }

      v56 = 0;
      v57 = 0;
      v20 = sub_2522A1520(v49);
      v56 = v20;
      v21 = malloc_type_malloc(v20, 0xF4B30B48uLL);
      v57 = v21;
      if (!v21)
      {
        v8 = 12;
        goto LABEL_33;
      }

      v22 = v21;
      v23 = sub_2522A1500(v21 + v20 - 1, v20, v49, &v52);
      if (v23)
      {
        v8 = v23;
        free(v22);
LABEL_33:
        der_free_octet_string();
        goto LABEL_12;
      }

      der_free_octet_string();
      if (v52 != v20)
      {
        goto LABEL_55;
      }

      v35 = sub_252293928((*(v16 + 104) + 8), *(v16 + 104), &unk_279702470, &v56);
      if (v35)
      {
LABEL_36:
        v8 = v35;
        free(v22);
        goto LABEL_12;
      }

      v36 = sub_2522A14D0(*(a2 + 88));
      v56 = v36;
      v37 = malloc_type_malloc(v36, 0xC65A67BBuLL);
      v57 = v37;
      if (!v37)
      {
LABEL_40:
        v8 = 12;
        goto LABEL_13;
      }

      v22 = v37;
      v38 = sub_2522A14B0(v37 + v36 - 1, v36, *(a2 + 88), &v52);
      if (v38)
      {
        v8 = v38;
        free(v22);
        goto LABEL_13;
      }

      if (v52 != v36)
      {
        goto LABEL_55;
      }

      v35 = sub_252293928((*(v16 + 104) + 8), *(v16 + 104), &unk_279702460, &v56);
      if (v35)
      {
        goto LABEL_36;
      }

      v43 = *(v16 + 104);
      v47 = *(v43 + 8);
      LODWORD(v46) = *v43;
      v54 = sub_2522A1638(&v46);
      v44 = malloc_type_malloc(v54, 0x674F6FE4uLL);
      v55 = v44;
      if (!v44)
      {
        v8 = 12;
        goto LABEL_12;
      }

      v45 = sub_2522A1618(v44 + v54 - 1, v54, &v46, &v52);
      if (v45)
      {
        v8 = v45;
        free(v55);
        v55 = 0;
        goto LABEL_12;
      }

      if (v52 != v54)
      {
LABEL_55:
        sub_25229126C("internal ASN.1 encoder error", v28, v29, v30, v31, v32, v33, v34);
      }
    }

    else
    {
      v24 = *(a2 + 104);
      v54 = *(a2 + 96);
      v55 = v24;
    }

    v46 = 0;
    v47 = 0;
    v48 = 0;
    v25 = _hx509_cert_private_key(a3);
    v26 = hx509_crypto_select(a1, 2, v25, *(a2 + 112), &v46);
    if (v26)
    {
      v8 = v26;
    }

    else
    {
      v27 = _hx509_cert_private_key(a3);
      v8 = sub_25229444C(a1, v27, &v46, &v54, v16 + 112, v16 + 136);
      free_AlgorithmIdentifier(&v46);
      if (!v8)
      {
        ++*(a2 + 64);
        if (*(a2 + 144) && !*(a2 + 124))
        {
          v39 = time(0);
          sub_25228EAE4(a1, 1, v39, *(a2 + 136), 0, a3, *(a2 + 144), &v50);
        }

        else
        {
          sub_25228E9F0(a1, &v50, a3);
        }

        if (!v50)
        {
          v8 = 0;
          goto LABEL_15;
        }

        v40 = 0;
        v41 = 1;
        while (1)
        {
          v8 = hx509_certs_add(a1, *(a2 + 128), *(v51 + 8 * v40));
          if (v8)
          {
            goto LABEL_5;
          }

          v40 = v41;
          if (v50 <= v41++)
          {
            goto LABEL_15;
          }
        }
      }
    }

LABEL_13:
    sub_2522A1648(v16);
    goto LABEL_15;
  }

  v7 = copy_AlgorithmIdentifier(v6, v53);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
LABEL_5:
  hx509_clear_error_string(a1);
LABEL_15:
  if (v55 != *(a2 + 104))
  {
    der_free_octet_string();
  }

  sub_25228EA88(&v50);
  free_AlgorithmIdentifier(v53);
  return v8;
}

uint64_t sub_252293748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  v7 = *v6;
  v8 = malloc_type_realloc(v6[1], 16 * (v7 + 1), 0x108004057E67DB5uLL);
  if (!v8)
  {
    return 12;
  }

  *(*(a2 + 48) + 8) = v8;
  result = hx509_cert_binary(a1, a3, v8 + 16 * v7);
  if (!result)
  {
    ++**(a2 + 48);
  }

  return result;
}

uint64_t hx509_cms_decrypt_encrypted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *a6 = 0;
  a6[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v9 = sub_2522A16B8(a3, a4, &v13, 0);
  if (v9)
  {
    v10 = v9;
    hx509_set_error_string(a1, 0, v9, "Failed to decode CMSEncryptedData");
  }

  else
  {
    if (v16)
    {
      v11 = der_copy_oid();
      if (v11)
      {
        v10 = v11;
        hx509_clear_error_string(a1);
      }

      else if (*(&v15 + 1))
      {
        v10 = sub_252295718(a1, a2, &v14 + 8, v16, v17);
        if (v10)
        {
          if (v17[1])
          {
            free(v17[1]);
          }
        }

        else
        {
          *a6 = *v17;
        }
      }

      else
      {
        hx509_clear_error_string(a1);
        v10 = 569866;
      }
    }

    else
    {
      v10 = 569891;
      hx509_set_error_string(a1, 0, 569891, "No content in EncryptedData");
    }

    sub_2522A16D8(&v13);
  }

  return v10;
}

uint64_t sub_252293928(void **a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  v7 = malloc_type_realloc(*a1, 32 * (*a2 + 1), 0x10300406495394CuLL);
  if (v7)
  {
    *a1 = v7;
    result = der_copy_oid();
    if (result)
    {
      return result;
    }

    *(*a1 + 8 * *a2 + 4) = 1;
    v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    v10 = *a2;
    *(*a1 + 4 * v10 + 3) = v9;
    v11 = *(*a1 + 4 * v10 + 3);
    if (v11)
    {
      result = 0;
      v12 = *a4;
      *(v11 + 8) = a4[1];
      **(*a1 + 4 * v10 + 3) = v12;
      *a2 = v10 + 1;
      return result;
    }

    der_free_oid();
  }

  return 12;
}

uint64_t sub_252293A1C(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  *a3 = 0;
  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040688ABBCCuLL);
  if (v6)
  {
    v7 = v6;
    *v6 = a2;
    v8 = (v6 + 1);
    v9 = hx509_certs_init(a1, "MEMORY:collector-unenvelop-cert", 0, 0, v6 + 1);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v7[3] = 0;
      v7[4] = 0;
      v10 = hx509_certs_init(a1, "MEMORY:collector-tmp-store", 0, 0, v7 + 2);
      if (!v10)
      {
        *a3 = v7;
        return v10;
      }

      hx509_certs_free(v8);
    }

    free(v7);
  }

  else
  {
    v10 = 12;
    hx509_set_error_string(a1, 0, 12, "out of memory");
  }

  return v10;
}

uint64_t sub_252293B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040D89DD10BuLL);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v14 = malloc_type_realloc(*(a2 + 24), 8 * *(a2 + 32) + 8, 0x2004093837F09uLL);
  if (!v14)
  {
    free(v13);
    v16 = 12;
    hx509_set_error_string(a1, 0, 12, "Out of memory");
    return v16;
  }

  *(a2 + 24) = v14;
  v15 = copy_AlgorithmIdentifier(a3, v13);
  if (!v15)
  {
    if (a4)
    {
      v13[3] = a4;
    }

    else
    {
      v16 = sub_25229483C(a1, a3, a5[1], *a5, 1, v13 + 3);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    if (a6)
    {
      v17 = der_copy_octet_string();
      if (v17)
      {
        v16 = v17;
        hx509_set_error_string(a1, 0, v17, "Failed to copy localKeyId");
        goto LABEL_5;
      }
    }

    else
    {
      v13[4] = 0;
      v13[5] = 0;
    }

    v16 = 0;
    v18 = *(a2 + 32);
    *(*(a2 + 24) + 8 * v18) = v13;
    *(a2 + 32) = v18 + 1;
    return v16;
  }

  v16 = v15;
  hx509_set_error_string(a1, 0, v15, "Failed to copy AlgorithmIdentifier");
LABEL_5:
  sub_252293C8C(v13);
  return v16;
}

void sub_252293C8C(const void **a1)
{
  free_AlgorithmIdentifier(a1);
  if (a1[3])
  {
    hx509_private_key_free(a1 + 3);
  }

  der_free_octet_string();

  free(a1);
}

uint64_t sub_252293CDC(uint64_t a1, void *a2, uint64_t *a3)
{
  v21 = 0;
  *a3 = 0;
  v6 = hx509_certs_init(a1, "MEMORY:collector-store", 0, 0, &v21);
  if (!v6)
  {
    v7 = hx509_certs_merge(a1, v21, a2[2]);
    if (v7)
    {
      v6 = v7;
      hx509_certs_free(&v21);
      return v6;
    }

    if (!a2[4])
    {
LABEL_28:
      v6 = 0;
      *a3 = v21;
      return v6;
    }

    v8 = 0;
    while (1)
    {
      v9 = *(a2[3] + 8 * v8);
      if (!*(v9 + 32))
      {
        break;
      }

      v10 = v21;
      v30[0] = 0;
      memset(v22, 0, sizeof(v22));
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      sub_2522908F8(v22);
      LODWORD(v22[0]) |= 0x10000u;
      *(&v23 + 1) = v9 + 32;
      if (hx509_certs_find(a1, v10, v22, v30))
      {
        goto LABEL_12;
      }

      v11 = *(v9 + 24);
      if (v11)
      {
        _hx509_cert_set_key(v30[0], v11);
      }

      hx509_cert_free(v30[0]);
LABEL_25:
      if (++v8 >= a2[4])
      {
        goto LABEL_28;
      }
    }

    hx509_set_error_string(a1, 0, 569964, "No local key attribute on private key");
LABEL_12:
    v12 = *(a2[3] + 8 * v8);
    if (*(v12 + 24))
    {
      v13 = v21;
      *&v22[0] = 0;
      if (!hx509_certs_start_seq(a1, v21, v22))
      {
        v30[0] = 0;
        if (hx509_certs_next_cert(a1, v13, *&v22[0], v30) || (v14 = v30[0]) == 0)
        {
LABEL_23:
          hx509_certs_end_seq(a1, v13, *&v22[0]);
          hx509_clear_error_string(a1);
        }

        else
        {
          while (1)
          {
            v15 = _hx509_cert_private_key(v14);
            v16 = v30[0];
            if (!v15)
            {
              v17 = sub_252295750(v30[0], *(v12 + 24));
              v16 = v30[0];
              if (v17)
              {
                break;
              }
            }

            hx509_cert_free(v16);
            cert = hx509_certs_next_cert(a1, v13, *&v22[0], v30);
            v14 = v30[0];
            if (cert)
            {
              v19 = 1;
            }

            else
            {
              v19 = v30[0] == 0;
            }

            if (v19)
            {
              goto LABEL_23;
            }
          }

          _hx509_cert_set_key(v30[0], *(v12 + 24));
          hx509_cert_free(v30[0]);
          hx509_certs_end_seq(a1, v13, *&v22[0]);
        }
      }
    }

    else
    {
      hx509_set_error_string(a1, 0, 569865, "No private key to compare with");
    }

    goto LABEL_25;
  }

  return v6;
}

uint64_t sub_252293F4C(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a2 + 24);
    do
    {
      v9 = *v8++;
      if (*(v9 + 24))
      {
        ++v7;
      }

      --v6;
    }

    while (v6);
    v10 = v7 + 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  *a3 = v11;
  if (v11)
  {
    v12 = *(a2 + 32);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(a2 + 24);
      do
      {
        v16 = *(*(v15 + 8 * v14) + 24);
        if (v16)
        {
          *(*a3 + 8 * v13++) = v16;
          v15 = *(a2 + 24);
          *(*(v15 + 8 * v14) + 24) = 0;
        }

        ++v14;
      }

      while (v12 != v14);
      v11 = *a3;
    }

    else
    {
      v13 = 0;
    }

    v17 = 0;
    v11[v13] = 0;
  }

  else
  {
    v17 = 12;
    hx509_set_error_string(a1, 0, 12, "malloc - out of memory");
  }

  return v17;
}

void sub_252294050(char *a1)
{
  v3 = *(a1 + 1);
  v2 = (a1 + 8);
  if (v3)
  {
    hx509_certs_free(v2);
  }

  if (*(a1 + 2))
  {
    hx509_certs_free(a1 + 2);
  }

  if (*(a1 + 4))
  {
    v4 = 0;
    do
    {
      sub_252293C8C(*(*(a1 + 3) + 8 * v4++));
    }

    while (v4 < *(a1 + 4));
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    free(v5);
  }

  free(a1);
}

void *sub_2522940D4(const void **a1)
{
  v2 = sub_2522A3D54(a1[1], *a1, 0);
  sub_2522A3E54(v2, *(a1 + 4));
  return v2;
}

uint64_t sub_252294114(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = *(&off_279703788 + v1);
    if (*(v2 + 16))
    {
      if (!der_heim_oid_cmp())
      {
        break;
      }
    }

    v1 += 8;
    if (v1 == 16)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_252294174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  while (1)
  {
    v6 = (&off_2797037A0)[v5];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v5 == 15)
    {
      hx509_clear_error_string(a1);
      return 569861;
    }
  }

  v8 = v6[6];
  if (v8)
  {
    v9 = v8 < a3;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v7 = 569933;
  hx509_set_error_string(a1, 0, 569933, "Algorithm %s has passed it best before date", *v6);
  return v7;
}

uint64_t sub_252294240(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  while (1)
  {
    v4 = (&off_2797037A0)[v3];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v3 == 15)
    {
      hx509_clear_error_string(a1);
      return 569861;
    }
  }

  if ((v4[5] & 4) != 0)
  {
    return 0;
  }

  v5 = 569933;
  hx509_set_error_string(a1, 0, 569933, "Algorithm %s not trusted for self signatures", *v4);
  return v5;
}

uint64_t hx509_verify_signature_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_25228DE4C(a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  while (1)
  {
    v11 = (&off_2797037A0)[v10];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v10 == 15)
    {
      v12 = 569861;
      hx509_clear_error_string(a1);
      return v12;
    }
  }

  v13 = *(v11 + 10);
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      hx509_clear_error_string(a1);
      return 569924;
    }

    if (v11[3] && der_heim_oid_cmp())
    {
      hx509_clear_error_string(a1);
      return 569862;
    }
  }

  else if ((v13 & 2) != 0)
  {
    hx509_clear_error_string(a1);
    return 569928;
  }

  v15 = v11[8];

  return (v15)(a1, v11, v9, a3, a4, a5);
}

uint64_t sub_25229444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  while (1)
  {
    v13 = (&off_2797037A0)[v12];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v12 == 15)
    {
      v14 = 569861;
      hx509_set_error_string(a1, 0, 569861, "algorithm no supported");
      return v14;
    }
  }

  if (a2 && (v13[5] & 1) == 0)
  {
    hx509_set_error_string(a1, 0, 569861, "algorithm provides no conf");
    return 569924;
  }

  v16 = v13[9];

  return (v16)(a1, v13, a2, a3, a4, a5, a6);
}

uint64_t sub_252294578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = 0;
  v10 = 0;
  result = sub_25229444C(a1, a2, a3, a4, a5, &v9);
  if (!result)
  {
    v8 = v10;
    *a6 = 8 * v9;
    a6[1] = v8;
  }

  return result;
}

uint64_t sub_2522945BC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  a5[1] = 0;
  v8 = *(a3 + 208);
  v24 = *(a3 + 216);
  v9 = sub_2522A59B0(0, &v24, v8 >> 3);
  if (v9)
  {
    v10 = v9;
    v11 = sub_2522A5318(v9);
    v12 = malloc_type_malloc(v11, 0xCD4041A3uLL);
    if (v12)
    {
      v13 = v12;
      v14 = sub_2522A5338(*a2, *(a2 + 1), v12, v10);
      sub_2522A50B0(v10);
      if (v14 <= 0)
      {
        v22 = 569929;
        free(v13);
        hx509_set_error_string(a1, 0, 569929, "RSA public encrypt failed with %d");
        return v22;
      }

      if (v14 > v11)
      {
        sub_25229126C("internal rsa decryption failure: ret > tosize", v15, v16, v17, v18, v19, v20, v21);
      }

      *a5 = v14;
      a5[1] = v13;
      if (!der_copy_oid())
      {
        return 0;
      }

      der_free_octet_string();
    }

    else
    {
      sub_2522A50B0(v10);
    }
  }

  v22 = 12;
  hx509_set_error_string(a1, 0, 12, "out of memory");
  return v22;
}

uint64_t sub_252294714(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  a5[1] = 0;
  v6 = *(a4 + 56);
  if (v6)
  {
    v10 = sub_2522A5318(v6);
    *a5 = v10;
    v11 = malloc_type_malloc(v10, 0x5C27D381uLL);
    a5[1] = v11;
    if (v11)
    {
      v12 = sub_2522A5344(*a2, *(a2 + 1), v11, *(a4 + 56));
      if (v12 <= 0)
      {
        der_free_octet_string();
        v20 = 569932;
        hx509_set_error_string(a1, 0, 569932, "Failed to decrypt using private key: %d");
      }

      else
      {
        if (*a5 < v12)
        {
          sub_25229126C("internal rsa decryption failure: ret > tosize", v13, v14, v15, v16, v17, v18, v19);
        }

        v20 = 0;
        *a5 = v12;
      }
    }

    else
    {
      v20 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory");
    }
  }

  else
  {
    v20 = 569865;
    hx509_set_error_string(a1, 0, 569865, "Private RSA key missing");
  }

  return v20;
}

uint64_t sub_25229483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *a6 = 0;
  v12 = sub_252294114(a2);
  if (v12)
  {
    v13 = v12;
    v14 = heim_uniq_alloc(0x48uLL, "hx509-private-key", sub_252294CF4);
    *a6 = v14;
    if (v14)
    {
      *(v14 + 64) = v13;
      *(*a6 + 56) = 0;
      *(*a6 + 48) = *v13;
      v15 = (*(v13 + 48))(a1, a2, a3, a4, a5);
      if (v15 && *a6)
      {
        heim_release(*a6);
        *a6 = 0;
      }
    }

    else
    {
      v15 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory");
    }
  }

  else
  {
    hx509_clear_error_string(a1);
    return 569861;
  }

  return v15;
}

uint64_t sub_252294948(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = heim_uniq_alloc(0x48uLL, "hx509-private-key", sub_252294CF4);
  *a1 = v6;
  if (!v6)
  {
    return 12;
  }

  *(v6 + 64) = a2;
  *(*a1 + 56) = a3;
  if (a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = 2;
  }

  result = 0;
  *(*a1 + 48) = v7;
  return result;
}

uint64_t hx509_private_key_free(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      heim_release(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t hx509_private_key2SPKI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4 && (v5 = *(v4 + 32)) != 0)
  {

    return v5(a1);
  }

  else
  {
    hx509_set_error_string(a1, 0, 569967, "Private key have no key2SPKI function", v2, v3);
    return 569967;
  }
}

uint64_t _hx509_generate_private_key_init(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (der_heim_oid_cmp())
  {
    v6 = 22;
    hx509_set_error_string(a1, 0, 22, "private key not an RSA key");
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040C052FB36uLL);
    *a3 = v7;
    if (v7)
    {
      v6 = 0;
      *v7 = a2;
    }

    else
    {
      v6 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory");
    }
  }

  return v6;
}

uint64_t _hx509_generate_private_key(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a3 = 0;
  v6 = sub_252294114(*a2);
  if (v6)
  {
    v7 = v6;
    v8 = heim_uniq_alloc(0x48uLL, "hx509-private-key", sub_252294CF4);
    *a3 = v8;
    if (v8)
    {
      *(v8 + 64) = v7;
      *(*a3 + 56) = 0;
      *(*a3 + 48) = *v7;
      v9 = (*(v7 + 56))(a1, a2);
      if (v9 && *a3)
      {
        heim_release(*a3);
        *a3 = 0;
      }
    }

    else
    {
      v9 = 12;
      hx509_set_error_string(a1, 0, 12, "out of memory");
    }
  }

  else
  {
    hx509_clear_error_string(a1);
    return 569861;
  }

  return v9;
}

void sub_252294CF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 48);
  if (v9 == 3)
  {
    v11 = *(result + 56);
    if (v11)
    {

      sub_2522A6A2C(v11);
    }
  }

  else if (v9 != 2)
  {
    if (v9 != 1)
    {
      sub_25229126C("unsupported keytype %d", a2, a3, a4, a5, a6, a7, a8, v9);
    }

    v10 = *(result + 56);
    if (v10)
    {

      sub_2522A50B0(v10);
    }
  }
}

void sub_252294D74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    sub_2522A50B0(v4);
  }

  *(a1 + 48) = 1;
  *(a1 + 56) = a2;
  *(a1 + 32) = &off_286472AA0;
  *(a1 + 40) = &unk_279704B98;
}

void sub_252294DC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    sub_2522A6A2C(v4);
  }

  *(a1 + 48) = 3;
  *(a1 + 56) = a2;
  *(a1 + 32) = &off_286473690;
  *(a1 + 40) = &unk_279704CA8;
}

uint64_t sub_252294E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = der_copy_oid();
  if (v4)
  {
    hx509_set_error_string(a1, 0, v4, "malloc out of memory");
  }

  return v4;
}

uint64_t sub_252294E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 64) + 40);
  if (v3)
  {

    return v3(a1);
  }

  else
  {
    hx509_clear_error_string(a1);
    return 569967;
  }
}

uint64_t hx509_crypto_enctype_by_name(char *a1)
{
  v2 = &off_2864737A0;
  v3 = 5;
  while (strcasecmp(a1, *(v2 - 2)))
  {
    v2 += 7;
    if (!--v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t hx509_crypto_init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v6 = &off_286473790;
  v7 = 5;
  while (der_heim_oid_cmp())
  {
    v6 += 7;
    if (!--v7)
    {
      v8 = 569866;
      hx509_set_error_string(a1, 0, 569866, "Algorithm not supported");
      return v8;
    }
  }

  v9 = malloc_type_calloc(1uLL, 0x48uLL, 0x10F0040F8F4EDAFuLL);
  *a4 = v9;
  if (v9)
  {
    v9[2] = 4;
    *(v9 + 2) = v6;
    *(*a4 + 24) = (v6[4])();
    if (!der_copy_oid())
    {
      return 0;
    }

    hx509_crypto_destroy(*a4);
    *a4 = 0;
  }

  hx509_clear_error_string(a1);
  return 12;
}

void hx509_crypto_destroy(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    free(v4);
  }

  der_free_oid();
  a1[8] = 0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;

  free(a1);
}

uint64_t hx509_crypto_set_key_data(void *a1, const void *a2, size_t a3)
{
  if (hc_EVP_CIPHER_key_length(a1[3]) > a3)
  {
    return 569920;
  }

  v7 = a1[5];
  if (v7)
  {
    free(v7);
    a1[4] = 0;
    a1[5] = 0;
  }

  v8 = malloc_type_malloc(a3, 0xBAA30DF2uLL);
  a1[5] = v8;
  if (!v8)
  {
    return 12;
  }

  memcpy(v8, a2, a3);
  result = 0;
  a1[4] = a3;
  return result;
}

uint64_t hx509_crypto_set_random_key(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 32) = 0;
  }

  v5 = hc_EVP_CIPHER_key_length(*(a1 + 24));
  *(a1 + 32) = v5;
  v6 = malloc_type_malloc(v5, 0x38BF0D5BuLL);
  *(a1 + 40) = v6;
  if (v6)
  {
    if (CCRandomCopyBytes())
    {
      free(*(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return 569920;
    }

    else if (a2)
    {

      return der_copy_octet_string();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    return 12;
  }
}

uint64_t sub_252295220(uint64_t a1, uint64_t a2)
{
  v3 = hc_EVP_CIPHER_iv_length(*(a1 + 24));
  *a2 = v3;
  v4 = malloc_type_malloc(v3, 0x762D8EEFuLL);
  *(a2 + 8) = v4;
  if (v4)
  {
    result = CCRandomCopyBytes();
    if (result)
    {
      free(*(a2 + 8));
      *a2 = 0;
      *(a2 + 8) = 0;
      return 569920;
    }
  }

  else
  {
    *a2 = 0;
    return 12;
  }

  return result;
}

uint64_t hx509_crypto_encrypt(uint64_t a1, const void *a2, size_t a3, uint64_t a4, void ***a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  *a5 = 0;
  if (*(*(a1 + 16) + 8) & 1) == 0 || (*(a1 + 8))
  {
    if (hc_EVP_CIPHER_iv_length(*(a1 + 24)) != *a4)
    {
      sub_2522A8238();
    }

    hc_EVP_CIPHER_CTX_init(v17);
    if (hc_EVP_CipherInit_ex(v17, *(a1 + 24), 0, *(a1 + 40), *(a4 + 8), 1) == 1)
    {
      v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      *a5 = v11;
      if (!v11)
      {
        v10 = 12;
LABEL_29:
        hc_EVP_CIPHER_CTX_cleanup(v17);
        return v10;
      }

      if ((*(a1 + 8) & 6) == 0)
      {
        sub_2522A8264();
      }

      v12 = hc_EVP_CIPHER_block_size(*(a1 + 24));
      v13 = *(a1 + 8);
      if ((v13 & 2) != 0)
      {
        if (v12 != 1 && a3 % v12)
        {
          return 569893;
        }

        v14 = 0;
      }

      else
      {
        v14 = 0;
        if ((v13 & 4) != 0 && v12 != 1)
        {
          v14 = v12 + a3 / v12 * v12 - a3;
        }
      }

      **a5 = (v14 + a3);
      (*a5)[1] = malloc_type_malloc(v14 + a3, 0x28A596DFuLL);
      v15 = *a5;
      if (!(*a5)[1])
      {
        v10 = 12;
        goto LABEL_26;
      }

      memcpy((*a5)[1], a2, a3);
      if (v14)
      {
        memset((*a5)[1] + a3, v14, v14);
      }

      if (hc_EVP_Cipher(v17) == 1)
      {
        v10 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      hc_EVP_CIPHER_CTX_cleanup(v17);
    }

    v10 = 569920;
    v15 = *a5;
    if (!*a5)
    {
      goto LABEL_29;
    }

LABEL_26:
    if (v15[1])
    {
      free(v15[1]);
      v15 = *a5;
    }

    free(v15);
    *a5 = 0;
    goto LABEL_29;
  }

  return 569933;
}

uint64_t hx509_crypto_decrypt(uint64_t a1, uint64_t a2, size_t a3, void *a4, size_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  *a5 = 0;
  a5[1] = 0;
  if ((*(*(a1 + 16) + 8) & 1) != 0 && (*(a1 + 8) & 1) == 0)
  {
    return 569933;
  }

  if (a4)
  {
    if (hc_EVP_CIPHER_iv_length(*(a1 + 24)) < *a4 || !*(a1 + 40))
    {
      return 569920;
    }

    v10 = a4[1];
  }

  else
  {
    if (!*(a1 + 40))
    {
      return 569920;
    }

    v10 = 0;
  }

  hc_EVP_CIPHER_CTX_init(v20);
  if (hc_EVP_CipherInit_ex(v20, *(a1 + 24), 0, *(a1 + 40), v10, 0) != 1)
  {
    hc_EVP_CIPHER_CTX_cleanup(v20);
    return 569920;
  }

  *a5 = a3;
  v11 = malloc_type_malloc(a3, 0xEF99AC85uLL);
  a5[1] = v11;
  if (!v11)
  {
    hc_EVP_CIPHER_CTX_cleanup(v20);
    *a5 = 0;
    return 12;
  }

  v12 = hc_EVP_Cipher(v20);
  v9 = 569920;
  if (v12 == 1)
  {
    hc_EVP_CIPHER_CTX_cleanup(v20);
    if ((*(a1 + 8) & 4) != 0 && hc_EVP_CIPHER_block_size(*(a1 + 24)) >= 2)
    {
      v13 = hc_EVP_CIPHER_block_size(*(a1 + 24));
      v15 = *a5;
      v14 = a5[1];
      if (*a5 < v13)
      {
        goto LABEL_16;
      }

      v17 = &v14[v15 - 1];
      v18 = *v17;
      if (v18 > v13)
      {
LABEL_23:
        free(v14);
LABEL_24:
        *a5 = 0;
        a5[1] = 0;
        return 569893;
      }

      *a5 = v15 - v18;
      if (v18)
      {
        v19 = v18;
        while (*v17 == v18)
        {
          v9 = 0;
          --v17;
          if (!--v19)
          {
            return v9;
          }
        }

LABEL_16:
        if (!v14)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    return 0;
  }

  return v9;
}

uint64_t sub_252295718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  a5[1] = 0;
  hx509_set_error_string(a1, 0, 569866, "String to key algorithm not supported");
  return 569866;
}

void *sub_252295750(uint64_t a1, uint64_t a2)
{
  if (der_heim_oid_cmp())
  {
    return (der_heim_oid_cmp() == 0);
  }

  if (*(a2 + 48) != 1)
  {
    return 0;
  }

  v6 = *(a2 + 56);
  if (!v6 || !v6[6] || !v6[7] || !v6[8])
  {
    return 0;
  }

  v7 = sub_25228DE4C(a1);
  result = sub_2522A4FE4();
  if (!result)
  {
    return result;
  }

  v8 = result;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  if (sub_2522A22A8(*(v7 + 216), *(v7 + 208) >> 3, v11, &v10) || (*(v8 + 32) = sub_2522940D4(v11), *(v8 + 40) = sub_2522940D4(&v11[1] + 1), sub_2522A22F8(v11), *(v8 + 48) = sub_2522A3CB4(*(*(a2 + 56) + 48)), *(v8 + 56) = sub_2522A3CB4(*(*(a2 + 56) + 56)), *(v8 + 64) = sub_2522A3CB4(*(*(a2 + 56) + 64)), *(v8 + 72) = sub_2522A3CB4(*(*(a2 + 56) + 72)), *(v8 + 80) = sub_2522A3CB4(*(*(a2 + 56) + 80)), *(v8 + 88) = sub_2522A3CB4(*(*(a2 + 56) + 88)), !*(v8 + 32)) || !*(v8 + 40) || !*(v8 + 48) || !*(v8 + 56) || !*(v8 + 64) || !*(v8 + 72) || !*(v8 + 80))
  {
    sub_2522A50B0(v8);
    return 0;
  }

  v9 = sub_2522A520C(v8);
  sub_2522A50B0(v8);
  return v9;
}

uint64_t hx509_crypto_select(uint64_t a1, int a2, char *a3, uint64_t a4, void *a5)
{
  v5 = a5;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a2 == 4)
  {
    v10 = 0;
    v27 = a1;
    v28 = qword_27F4D8858;
    v11 = -1025;
    if (!a4)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v27 = a1;
      if (a3)
      {
        v9 = sub_252295B44(a3, 2);
      }

      else
      {
        v9 = 0;
      }

      v13 = off_27F4D8848;
      if (v9)
      {
        v13 = v9;
      }

      v28 = v13;
      v11 = -513;
    }

    else
    {
      if (a2 != 1)
      {
        v12 = 22;
        hx509_set_error_string(a1, 0, 22, "Unknown type %d of selection", a2);
        return v12;
      }

      v27 = a1;
      if (a3)
      {
        v8 = sub_252295B44(a3, 1);
      }

      else
      {
        v8 = 0;
      }

      v14 = off_27F4D8850;
      if (v8)
      {
        v14 = v8;
      }

      v28 = v14;
      v11 = -257;
    }

    v10 = 1;
    if (!a4)
    {
      goto LABEL_36;
    }
  }

  v15 = sub_252295BF8(a3);
  if (!*(a4 + 16))
  {
    goto LABEL_36;
  }

  v16 = v15;
  v17 = 0;
  v26 = v5;
  while (2)
  {
    v18 = 1u;
    v19 = &off_286473690;
    do
    {
      if ((*(v19 + 10) | v11) == 0xFFFFFFFF && !der_heim_oid_cmp() && (!v16 || !v19[3] || !der_heim_oid_cmp()))
      {
        v23 = *(a4 + 8) + 24 * v17;
        goto LABEL_38;
      }

      v19 = (&off_2797037A0)[v18++];
    }

    while (v18 != 16);
    v20 = v10;
    if (v10)
    {
      goto LABEL_35;
    }

    v21 = &qword_2864737A8;
    v22 = 5;
    while (der_heim_oid_cmp())
    {
      v21 += 7;
      if (!--v22)
      {
        goto LABEL_35;
      }
    }

    if (!*v21)
    {
LABEL_35:
      ++v17;
      v10 = v20;
      v5 = v26;
      if (v17 < *(a4 + 16))
      {
        continue;
      }

LABEL_36:
      v23 = v28;
LABEL_38:
      v24 = v5;
      goto LABEL_39;
    }

    break;
  }

  v23 = (*v21)();
  v24 = v26;
LABEL_39:
  v12 = copy_AlgorithmIdentifier(v23, v24);
  if (v12)
  {
    hx509_clear_error_string(v27);
  }

  return v12;
}

char *sub_252295B44(uint64_t a1, int a2)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = (&off_2797037A0)[v4];
    if (v5[3])
    {
      if (!der_heim_oid_cmp())
      {
        v6 = *(*(a1 + 64) + 24);
        if (!v6 || v6(a1, v5[2]))
        {
          break;
        }
      }
    }

    if (++v4 == 15)
    {
      return 0;
    }
  }

  v8 = 4;
  if (a2 == 2)
  {
    v8 = 2;
  }

  return v5[v8];
}

char *sub_252295BF8(char *result)
{
  if (result)
  {
    v1 = 0;
    while (1)
    {
      v2 = (&off_2797037A0)[v1];
      if (!der_heim_oid_cmp())
      {
        break;
      }

      if (++v1 == 15)
      {
        return 0;
      }
    }

    return v2[3];
  }

  return result;
}

uint64_t hx509_crypto_available(uint64_t a1, int a2, uint64_t a3, void **a4, _DWORD *a5)
{
  *a4 = 0;
  if (a2)
  {
    if (a2 == 1)
    {
      v23 = a1;
      v7 = 256;
    }

    else
    {
      if (a2 != 2)
      {
        v19 = 22;
        hx509_set_error_string(a1, 0, 22, "Unknown type %d of available");
        return v19;
      }

      v23 = a1;
      v7 = 512;
    }
  }

  else
  {
    v23 = a1;
    v7 = 1792;
  }

  if (a3)
  {
    v8 = _hx509_cert_private_key(a3);
    v9 = sub_252295BF8(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v11 = &off_286473690;
  v12 = 1u;
  do
  {
    LODWORD(v13) = v10;
    if ((v11[5] & v7) != 0 && v11[2] && (!v9 || !v11[3] || !der_heim_oid_cmp()))
    {
      v10 = (v10 + 1);
      v14 = malloc_type_realloc(*a4, 24 * v10, 0x10300406712BA52uLL);
      if (!v14 || (*a4 = v14, copy_AlgorithmIdentifier(v11[2], v14 + 24 * v13)))
      {
LABEL_29:
        if (v13)
        {
          v20 = 0;
          do
          {
            free_AlgorithmIdentifier(*a4 + v20);
            v20 += 24;
          }

          while (24 * v13 != v20);
        }

        free(*a4);
        *a4 = 0;
        v19 = 12;
        hx509_set_error_string(v23, 0, 12, "out of memory");
        return v19;
      }
    }

    v11 = (&off_2797037A0)[v12++];
  }

  while (v12 != 16);
  if (!a2)
  {
    v15 = 3u;
    v13 = v10;
    do
    {
      v16 = (&off_286473790)[v15];
      if (v16)
      {
        v10 = (v13 + 1);
        v17 = malloc_type_realloc(*a4, 24 * v10, 0x10300406712BA52uLL);
        if (!v17)
        {
          goto LABEL_29;
        }

        *a4 = v17;
        v18 = v16();
        if (copy_AlgorithmIdentifier(v18, *a4 + 24 * v13))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v10 = v13;
      }

      v15 += 7;
      v13 = v10;
    }

    while (v15 != 38);
  }

  v19 = 0;
  *a5 = v10;
  return v19;
}

void hx509_crypto_free_algs(char *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      free_AlgorithmIdentifier(v4);
      v4 += 24;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

BOOL sub_252295EF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 1)
  {
    sub_2522A8290();
  }

  v3 = 0;
  while (1)
  {
    v4 = (&off_2797037A0)[v3];
    if (!der_heim_oid_cmp())
    {
      break;
    }

    if (++v3 == 15)
    {
      return 0;
    }
  }

  if (*(v4 + 20))
  {
    return sub_2522A5318(*(a1 + 56)) > *(v4 + 20);
  }

  return 0;
}

uint64_t sub_252295F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = sub_2522A5898(*(a2 + 56), 0);
  v7 = malloc_type_malloc(v6, 0xE3E23845uLL);
  *(a3 + 32) = v7;
  if (v7)
  {
    *(a3 + 24) = 8 * v6;
    v8 = sub_25229632C(a3, &unk_279704B78);
    if (v8)
    {
      hx509_set_error_string(a1, 0, v8, "malloc - out of memory");
      free(*(a3 + 32));
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
    }

    else
    {
      v10 = *(a3 + 32);
      sub_2522A5898(*(a2 + 56), &v10);
    }
  }

  else
  {
    v8 = 12;
    hx509_set_error_string(a1, 0, 12, "malloc - out of memory");
  }

  return v8;
}

uint64_t sub_25229607C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *a4 = 0;
  a4[1] = 0;
  if (a3 != 1)
  {
    return 569934;
  }

  v7 = sub_2522A56B8(*(a2 + 56), 0);
  if (v7 <= 0)
  {
    v10 = 22;
    hx509_set_error_string(a1, 0, 22, "Private key is not exportable");
  }

  else
  {
    v8 = v7;
    v9 = malloc_type_malloc(v7, 0xEDE0C347uLL);
    a4[1] = v9;
    if (v9)
    {
      *a4 = v8;
      v12 = v9;
      sub_2522A56B8(*(a2 + 56), &v12);
      return 0;
    }

    else
    {
      v10 = 12;
      hx509_set_error_string(a1, 0, 12, "malloc out of memory");
    }
  }

  return v10;
}