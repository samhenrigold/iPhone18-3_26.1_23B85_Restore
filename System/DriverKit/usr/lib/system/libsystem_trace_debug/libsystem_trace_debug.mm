void os_trace_blob_destroy_slow(uint64_t a1)
{
  v1 = *a1;
  *a1 = 3954044928;
  *(a1 + 20) = 0;
  free(v1);
}

uint64_t os_trace_blob_grow(uint64_t *a1, uint64_t a2)
{
  v9 = *(a1 + 2) + ((*(a1 + 22) ^ 1) & 1);
  v2 = __CFADD__(v9, a2);
  v10 = v9 + a2;
  if (v2 || v9 + a2 != v9 + a2)
  {
    v11 = *(a1 + 4);
  }

  else
  {
    v3 = *(a1 + 3);
    v4 = __CFADD__(v3, v3);
    v5 = 2 * v3;
    v6 = v4;
    if (v6)
    {
      v11 = *(a1 + 4);
    }

    else
    {
      if (v10 <= v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v9 + a2;
      }

      if (*(a1 + 4) >= v7)
      {
        if (v10 > v5)
        {
          v5 = v9 + a2;
        }
      }

      else
      {
        v5 = *(a1 + 4);
      }

      v11 = v5;
    }
  }

  if (v11 > *(a1 + 3))
  {
    if (*(a1 + 10))
    {
      *a1 = _os_trace_realloc_typed(*a1, v11, 2989866402);
    }

    else
    {
      *a1 = _os_trace_malloc_typed(v11, 1199408813);
      __memcpy_chk();
      *(a1 + 10) |= 1u;
    }

    *(a1 + 3) = v11;
  }

  return v11 - v9;
}

uint64_t os_trace_blob_add_slow(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3;
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v4 = *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1) - *(a1 + 8);
    if (v4 < a3)
    {
      if (*(a1 + 12) < *(a1 + 16))
      {
        v4 = os_trace_blob_grow(a1, a3);
      }

      if (v4 < v5)
      {
        *(a1 + 20) |= 2u;
        LODWORD(v5) = v4;
      }
    }

    __memcpy_chk();
    *(a1 + 8) += v5;
    if ((*(a1 + 22) & 1) == 0)
    {
      *(*a1 + *(a1 + 8)) = 0;
    }

    return v5;
  }
}

uint64_t os_trace_blob_addns(uint64_t a1, _BYTE *a2, unint64_t a3, void *a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v11 = 0;
    *&v10[1] = 0;
    v21 = v15;
    v20 = *(v15 + 8) + ((*(v15 + 22) ^ 1) & 1);
    if (*(v15 + 16))
    {
      v22 = *(v21 + 16) - v20;
    }

    else if (*(v21 + 12))
    {
      v22 = *(v21 + 12) - v20;
    }

    else
    {
      v22 = 0;
    }

    if (v13 > v22)
    {
      v18 = v15;
      v17 = *(v15 + 8) + ((*(v15 + 22) ^ 1) & 1);
      if (*(v15 + 16))
      {
        v19 = *(v18 + 16) - v17;
      }

      else if (*(v18 + 12))
      {
        v19 = *(v18 + 12) - v17;
      }

      else
      {
        v19 = 0;
      }

      v13 = v19;
    }

    while (*v14)
    {
      v26 = v14;
      v25 = v13 - *&v10[1];
      for (i = 0; i < v25; ++i)
      {
        v23 = v26[i];
        if (!v23 || !isascii(v23))
        {
          v27 = i;
          goto LABEL_26;
        }

        if (iscntrl_l(v23, _c_locale) && !isspace_l(v23, _c_locale))
        {
          v27 = i;
          goto LABEL_26;
        }
      }

      v27 = v25;
LABEL_26:
      v11 = v27;
      v58 = v15;
      v57 = v14;
      v56 = v27;
      if ((*(v15 + 20) & 2) != 0)
      {
        v59 = 0;
      }

      else
      {
        v60 = v58;
        if (v56 <= *(v60 + 12) - ((*(v60 + 22) ^ 1) & 1u) - *(v60 + 8))
        {
          __memcpy_chk();
          v62 = v58;
          v61 = v56;
          *(v58 + 8) += v56;
          if ((*(v62 + 22) & 1) == 0)
          {
            *(*v62 + *(v62 + 8)) = 0;
          }

          v59 = v61;
        }

        else
        {
          v59 = os_trace_blob_add_slow(v58, v57, v56);
        }
      }

      v14 += v11;
      *&v10[1] += v11;
      if (*&v10[1] == v13)
      {
        break;
      }

      v10[0] = *v14;
      if (!v10[0])
      {
        break;
      }

      if (isascii(v10[0]))
      {
        if (*&v10[1] + 3 > v13)
        {
          break;
        }

        if (v10[0] == 127)
        {
          v4 = 63;
        }

        else
        {
          v4 = v10[0] + 64;
        }

        v10[0] = v4;
        qmemcpy(v9, "\\^", 2);
        v9[2] = v4;
        v51 = v15;
        v50 = v9;
        v49 = 3;
        if ((*(v15 + 20) & 2) != 0)
        {
          v52 = 0;
        }

        else
        {
          v53 = v51;
          if (v49 <= *(v53 + 12) - ((*(v53 + 22) ^ 1) & 1u) - *(v53 + 8))
          {
            __memcpy_chk();
            v55 = v51;
            v54 = v49;
            *(v51 + 8) += v49;
            if ((*(v55 + 22) & 1) == 0)
            {
              *(*v55 + *(v55 + 8)) = 0;
            }

            v52 = v54;
          }

          else
          {
            v52 = os_trace_blob_add_slow(v51, v50, v49);
          }
        }

        *&v10[1] += 3;
        ++v14;
      }

      else
      {
        v11 = _os_trace_utf8_len(v14, v13 - *&v10[1]);
        if (v11 == -2)
        {
          break;
        }

        if (v11 == -1)
        {
          if (*&v10[1] + 4 > v13)
          {
            break;
          }

          v10[0] &= ~0x80u;
          if (iscntrl_l(v10[0], _c_locale))
          {
            if (v10[0] == 127)
            {
              v5 = 63;
            }

            else
            {
              v5 = v10[0] + 64;
            }

            v10[0] = v5;
            qmemcpy(v8, "\\M^", 3);
            v8[3] = v5;
            v44 = v15;
            v43 = v8;
            v42 = 4;
            if ((*(v15 + 20) & 2) != 0)
            {
              v45 = 0;
            }

            else
            {
              v46 = v44;
              if (v42 <= *(v46 + 12) - ((*(v46 + 22) ^ 1) & 1u) - *(v46 + 8))
              {
                __memcpy_chk();
                v48 = v44;
                v47 = v42;
                *(v44 + 8) += v42;
                if ((*(v48 + 22) & 1) == 0)
                {
                  *(*v48 + *(v48 + 8)) = 0;
                }

                v45 = v47;
              }

              else
              {
                v45 = os_trace_blob_add_slow(v44, v43, v42);
              }
            }
          }

          else
          {
            qmemcpy(v7, "\\M-", 3);
            v7[3] = v10[0];
            v37 = v15;
            v36 = v7;
            v35 = 4;
            if ((*(v15 + 20) & 2) != 0)
            {
              v38 = 0;
            }

            else
            {
              v39 = v37;
              if (v35 <= *(v39 + 12) - ((*(v39 + 22) ^ 1) & 1u) - *(v39 + 8))
              {
                __memcpy_chk();
                v41 = v37;
                v40 = v35;
                *(v37 + 8) += v35;
                if ((*(v41 + 22) & 1) == 0)
                {
                  *(*v41 + *(v41 + 8)) = 0;
                }

                v38 = v40;
              }

              else
              {
                v38 = os_trace_blob_add_slow(v37, v36, v35);
              }
            }
          }

          *&v10[1] += 4;
          ++v14;
        }

        else
        {
          v30 = v15;
          v29 = v14;
          v28 = v11;
          if ((*(v15 + 20) & 2) != 0)
          {
            v31 = 0;
          }

          else
          {
            v32 = v30;
            if (v28 <= *(v32 + 12) - ((*(v32 + 22) ^ 1) & 1u) - *(v32 + 8))
            {
              __memcpy_chk();
              v34 = v30;
              v33 = v28;
              *(v30 + 8) += v28;
              if ((*(v34 + 22) & 1) == 0)
              {
                *(*v34 + *(v34 + 8)) = 0;
              }

              v31 = v33;
            }

            else
            {
              v31 = os_trace_blob_add_slow(v30, v29, v28);
            }
          }

          v14 += v11;
          *&v10[1] += v11;
          if (*&v10[1] == v13)
          {
            break;
          }
        }
      }
    }

    if (v12)
    {
      *v12 = v14;
    }

    return *&v10[1];
  }
}

unint64_t _os_trace_utf8_len(_BYTE *a1, unint64_t a2)
{
  if ((*a1 & 0xF8) == 0xF0)
  {
    v4 = 4;
  }

  else if ((*a1 & 0xF0) == 0xE0)
  {
    v4 = 3;
  }

  else
  {
    if ((*a1 & 0xE0) != 0xC0)
    {
      return -1;
    }

    v4 = 2;
  }

  if (a2 < v4)
  {
    return -2;
  }

  for (i = 1; i < v4; ++i)
  {
    if ((a1[i] & 0xC0) != 0x80)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t os_trace_blob_addnws(uint64_t a1, int *a2, unint64_t a3, int **a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v7 = 0;
    v17 = v11;
    v16 = *(v11 + 8) + ((*(v11 + 22) ^ 1) & 1);
    if (*(v11 + 16))
    {
      v18 = *(v17 + 16) - v16;
    }

    else if (*(v17 + 12))
    {
      v18 = *(v17 + 12) - v16;
    }

    else
    {
      v18 = 0;
    }

    if (v9 > v18)
    {
      v14 = v11;
      v13 = *(v11 + 8) + ((*(v11 + 22) ^ 1) & 1);
      if (*(v11 + 16))
      {
        v15 = *(v14 + 16) - v13;
      }

      else if (*(v14 + 12))
      {
        v15 = *(v14 + 12) - v13;
      }

      else
      {
        v15 = 0;
      }

      v9 = v15;
    }

    while (*v10)
    {
      v5 = _os_trace_utf8_to_mbs(v6, *v10);
      if (!v5 || v7 + v5 > v9)
      {
        break;
      }

      v21 = v11;
      v20 = v6;
      v19 = v5;
      if ((*(v11 + 20) & 2) != 0)
      {
        v22 = 0;
      }

      else
      {
        v23 = v21;
        if (v19 <= *(v23 + 12) - ((*(v23 + 22) ^ 1) & 1u) - *(v23 + 8))
        {
          __memcpy_chk();
          v25 = v21;
          v24 = v19;
          *(v21 + 8) += v19;
          if ((*(v25 + 22) & 1) == 0)
          {
            *(*v25 + *(v25 + 8)) = 0;
          }

          v22 = v24;
        }

        else
        {
          v22 = os_trace_blob_add_slow(v21, v20, v19);
        }
      }

      if (!v22)
      {
        break;
      }

      v7 += v22;
      ++v10;
    }

    if (v8)
    {
      *v8 = v10;
    }

    return v7;
  }
}

uint64_t _os_trace_utf8_to_mbs(_BYTE *a1, int a2)
{
  v6 = a2;
  if ((a2 & 0xFFFFFF80) == 0)
  {
    *a1 = a2;
    return 1;
  }

  if ((a2 & 0xFFFFF800) == 0)
  {
    v5 = -64;
    v3 = 2;
    goto LABEL_13;
  }

  if ((a2 & 0xFFFF0000) == 0)
  {
    if (a2 < 55296 || a2 > 57343)
    {
      v5 = -32;
      v3 = 3;
      goto LABEL_13;
    }

    return 0;
  }

  if ((a2 & 0xFFE00000) != 0 || a2 > 1114111)
  {
    return 0;
  }

  v5 = -16;
  v3 = 4;
LABEL_13:
  for (i = v3 - 1; i; --i)
  {
    a1[i] = v6 & 0x3F | 0x80;
    v6 >>= 6;
  }

  *a1 = v6 | v5;
  return v3;
}

uint64_t os_trace_blob_vaddf(uint64_t a1, const char *a2, va_list a3)
{
  if (*(a1 + 22))
  {
    _os_crash("Can't use addf() in binary blobs");
    __break(1u);
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v5 = *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1) - *(a1 + 8);
    *__error() = 0;
    v4 = __vsnprintf_chk((*a1 + *(a1 + 8)), v5 + 1, 0, 0xFFFFFFFFFFFFFFFFLL, a2, a3);
    if ((v4 & 0x80000000) != 0)
    {
      *(*a1 + *(a1 + 8)) = 0;
      return 0;
    }

    else if (v4 > v5)
    {
      if (*(a1 + 12) < *(a1 + 16))
      {
        v5 = os_trace_blob_grow(a1, v4);
        *__error() = 0;
        __vsnprintf_chk((*a1 + *(a1 + 8)), v5 + 1, 0, 0xFFFFFFFFFFFFFFFFLL, a2, a3);
      }

      if (v4 > v5)
      {
        *(a1 + 20) |= 2u;
        v4 = v5;
      }

      *(a1 + 8) += v4;
      return v4;
    }

    else
    {
      *(a1 + 8) += v4;
      return v4;
    }
  }
}

tm *os_trace_blob_add_localtime(tm *result, time_t a2, uint64_t a3, int a4)
{
  v20 = result;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  if ((result->tm_year & 0x10000) != 0)
  {
    result = _os_crash("Can't use addf() in binary blobs");
    __break(1u);
  }

  if ((v20->tm_year & 2) != 0)
  {
    v21 = 0;
  }

  else
  {
    memset(&__b, 0, sizeof(__b));
    result = localtime_r(&v19, &__b);
    if (result)
    {
      os_trace_blob_addf(v20, "%04d-%02d-%02d %02d:%02d:%02d", v4, v5, v6, v7, v8, v9, (__b.tm_year + 1900), (__b.tm_mon + 1), __b.tm_mday, __b.tm_hour, __b.tm_min, __b.tm_sec);
      if (v17)
      {
        if (v17 == 1)
        {
          os_trace_blob_addf(v20, ".%06ld", v10, v11, v12, v13, v14, v15, v18);
        }

        else if (v17 == 2)
        {
          os_trace_blob_addf(v20, ".%03ld", v10, v11, v12, v13, v14, v15, v18);
        }
      }

      else
      {
        os_trace_blob_addf(v20, ".%09ld", v10, v11, v12, v13, v14, v15, v18);
      }

      return os_trace_blob_addf(v20, "%+05ld", v10, v11, v12, v13, v14, v15, __b.tm_gmtoff / 60 % 60 + 100 * (__b.tm_gmtoff / 60 / 60));
    }

    else
    {
      v21 = 0;
    }
  }

  return result;
}

uint64_t os_trace_blob_add_hexdump(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v13 = result;
  v56 = result;
  v55 = 39;
  v54 = 39;
  v59 = result;
  v58 = &v54;
  v57 = 1;
  if ((*(result + 20) & 2) != 0)
  {
    v60 = 0;
  }

  else
  {
    v61 = v59;
    if (v57 <= *(v61 + 12) - ((*(v61 + 22) ^ 1) & 1u) - *(v61 + 8))
    {
      result = __memcpy_chk();
      v63 = v59;
      v62 = v57;
      *(v59 + 8) += v57;
      if ((*(v63 + 22) & 1) == 0)
      {
        *(*v63 + *(v63 + 8)) = 0;
      }

      v60 = v62;
    }

    else
    {
      result = os_trace_blob_add_slow(v59, v58, v57);
      v60 = result;
    }
  }

  v8 = v60;
  for (i = 0; i < a3; ++i)
  {
    v6 = *(a2 + i);
    if (i)
    {
      v46 = v13;
      v45 = 32;
      v44 = 32;
      v49 = v13;
      v48 = &v44;
      v47 = 1;
      if ((*(v13 + 20) & 2) != 0)
      {
        v50 = 0;
      }

      else
      {
        v51 = v49;
        if (v47 <= *(v51 + 12) - ((*(v51 + 22) ^ 1) & 1u) - *(v51 + 8))
        {
          result = __memcpy_chk();
          v53 = v49;
          v52 = v47;
          *(v49 + 8) += v47;
          if ((*(v53 + 22) & 1) == 0)
          {
            *(*v53 + *(v53 + 8)) = 0;
          }

          v50 = v52;
        }

        else
        {
          result = os_trace_blob_add_slow(v49, v48, v47);
          v50 = result;
        }
      }

      v8 += v50;
    }

    v4 = a0123456789abcd[v6 >> 4];
    v36 = v13;
    v35 = v4;
    v34 = v4;
    v39 = v13;
    v38 = &v34;
    v37 = 1;
    if ((*(v13 + 20) & 2) != 0)
    {
      v40 = 0;
    }

    else
    {
      v41 = v39;
      if (v37 <= *(v41 + 12) - ((*(v41 + 22) ^ 1) & 1u) - *(v41 + 8))
      {
        result = __memcpy_chk();
        v43 = v39;
        v42 = v37;
        *(v39 + 8) += v37;
        if ((*(v43 + 22) & 1) == 0)
        {
          *(*v43 + *(v43 + 8)) = 0;
        }

        v40 = v42;
      }

      else
      {
        result = os_trace_blob_add_slow(v39, v38, v37);
        v40 = result;
      }
    }

    v9 = v8 + v40;
    v5 = a0123456789abcd[v6 & 0xF];
    v26 = v13;
    v25 = v5;
    v24 = v5;
    v29 = v13;
    v28 = &v24;
    v27 = 1;
    if ((*(v13 + 20) & 2) != 0)
    {
      v30 = 0;
    }

    else
    {
      v31 = v29;
      if (v27 <= *(v31 + 12) - ((*(v31 + 22) ^ 1) & 1u) - *(v31 + 8))
      {
        result = __memcpy_chk();
        v33 = v29;
        v32 = v27;
        *(v29 + 8) += v27;
        if ((*(v33 + 22) & 1) == 0)
        {
          *(*v33 + *(v33 + 8)) = 0;
        }

        v30 = v32;
      }

      else
      {
        result = os_trace_blob_add_slow(v29, v28, v27);
        v30 = result;
      }
    }

    v8 = v9 + v30;
  }

  if (a4)
  {
    v66 = v13;
    v65 = "…'";
    v64 = 0;
    return os_trace_blob_addns(v13, "…'", 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v16 = v13;
    v15 = 39;
    v14 = 39;
    v19 = v13;
    v18 = &v14;
    v17 = 1;
    if ((*(v13 + 20) & 2) != 0)
    {
      v20 = 0;
    }

    else
    {
      v21 = v19;
      if (v17 <= *(v19 + 12) - ((*(v19 + 22) ^ 1) & 1u) - *(v19 + 8))
      {
        result = __memcpy_chk();
        v23 = v19;
        v22 = v17;
        *(v19 + 8) += v17;
        if ((*(v23 + 22) & 1) == 0)
        {
          *(*v23 + *(v23 + 8)) = 0;
        }
      }

      else
      {
        result = os_trace_blob_add_slow(v19, v18, v17);
        v20 = result;
      }
    }
  }

  return result;
}

uint64_t os_log_fmt_delimit(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  __s = a1 + 1;
  v12 = 0;
  if (*a1 != 37)
  {
    _os_crash("Should start with '%'");
    __break(1u);
  }

  __memset_chk();
  *v15 = v17;
  if (*__s != 123)
  {
LABEL_8:
    v3 = __s++;
    v13 = *v3;
    while (1)
    {
      switch(v13)
      {
        case ' ':
        case '#':
        case '\'':
        case '+':
        case '-':
        case '0':
          goto LABEL_8;
        case '*':
          if ((*(v15 + 8) & 8) != 0)
          {
            *(v15 + 8) |= 1u;
          }

          addaster(&__s, v15, 2u);
          goto LABEL_8;
        case '.':
          v4 = __s++;
          v13 = *v4;
          if (v13 == 42)
          {
            addaster(&__s, v15, 0xCu);
            goto LABEL_8;
          }

          *(v15 + 24) = 0;
          while ((v13 - 48) <= 9)
          {
            *(v15 + 24) = v13 - 48 + 10 * *(v15 + 24);
            v5 = __s++;
            v13 = *v5;
          }

          if ((*(v15 + 8) & 8) != 0)
          {
            *(v15 + 8) |= 1u;
          }

          *(v15 + 8) |= 8u;
          break;
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          do
          {
            v6 = __s++;
            v13 = *v6;
          }

          while ((v13 - 48) <= 9);
          if (v13 != 36)
          {
            continue;
          }

          *(v15 + 8) |= 1u;
          goto LABEL_8;
        case '@':
          *(v15 + 10) = 18;
          goto LABEL_65;
        case 'A':
        case 'E':
        case 'F':
        case 'G':
        case 'a':
        case 'e':
        case 'f':
        case 'g':
          if ((v12 & 8) != 0)
          {
            v8 = 15;
          }

          else
          {
            v8 = 14;
          }

          *(v15 + 10) = v8;
          *(v15 + 8) |= 0x10u;
          goto LABEL_65;
        case 'C':
          LOBYTE(v12) = v12 | 0x10;
          goto LABEL_38;
        case 'D':
          LOWORD(v12) = v12 | 0x10;
          goto LABEL_43;
        case 'L':
          v12 |= 8u;
          goto LABEL_8;
        case 'O':
          LOWORD(v12) = v12 | 0x10;
          goto LABEL_51;
        case 'P':
          if (v16 != 2)
          {
            return 0;
          }

          if ((*(v15 + 8) & 8) == 0)
          {
            *(v15 + 8) |= 1u;
          }

          *(v15 + 10) = 19;
          goto LABEL_65;
        case 'S':
          LOBYTE(v12) = v12 | 0x10;
          goto LABEL_59;
        case 'U':
          LOWORD(v12) = v12 | 0x10;
          goto LABEL_51;
        case 'X':
        case 'o':
        case 'u':
        case 'x':
LABEL_51:
          addsarg(v15, v12);
          *(v15 + 8) |= 0x20u;
          ++*(v15 + 10);
          goto LABEL_65;
        case 'c':
LABEL_38:
          if ((v12 & 0x10) != 0)
          {
            v7 = 7;
          }

          else
          {
            v7 = 5;
          }

          *(v15 + 10) = v7;
          *(v15 + 8) |= 0x10u;
          goto LABEL_65;
        case 'd':
        case 'i':
LABEL_43:
          addsarg(v15, v12);
          goto LABEL_65;
        case 'h':
          if ((v12 & 0x40) != 0)
          {
            v12 = v12 & 0xFFFFDFBF | 0x2000;
          }

          else
          {
            v12 |= 0x40u;
          }

          goto LABEL_8;
        case 'j':
          v12 |= 0x1000u;
          goto LABEL_8;
        case 'l':
          if ((v12 & 0x10) != 0)
          {
            v12 = v12 & 0xFFFFFFCF | 0x20;
          }

          else
          {
            v12 |= 0x10u;
          }

          goto LABEL_8;
        case 'm':
          *(v15 + 10) = 8;
          *(v15 + 8) |= 0x10u;
          goto LABEL_65;
        case 'n':
          *(v15 + 8) |= 1u;
          goto LABEL_65;
        case 'p':
          *(v15 + 10) = 13;
          *(v15 + 8) |= 0x30u;
          goto LABEL_65;
        case 'q':
          v12 |= 0x20u;
          goto LABEL_8;
        case 's':
LABEL_59:
          if ((v12 & 0x10) != 0)
          {
            v9 = 17;
          }

          else
          {
            v9 = 16;
          }

          *(v15 + 10) = v9;
LABEL_65:
          v10 = __s - v17;
          *(v15 + 12) = __s - v17;
          return v10;
        case 't':
          v12 |= 0x800u;
          goto LABEL_8;
        case 'z':
          v12 |= 0x400u;
          goto LABEL_8;
        default:
          return 0;
      }
    }
  }

  if (v16 == 2 || v16 == 6)
  {
    __s = strchr(__s, 125);
    if (__s)
    {
      os_log_fmt_parse_annotation(v15);
      ++__s;
      goto LABEL_8;
    }
  }

  return 0;
}

uint64_t os_log_fmt_parse_annotation(uint64_t result)
{
  v4 = result;
  for (__s = (*result + 2); *__s != 125; __s = &__sa[__n])
  {
    __sa = &__s[strspn(__s, ", ")];
    result = strcspn(__sa, ",}");
    __n = result;
    if (!result)
    {
      return result;
    }

    if (result != 6 || (result = memcmp(__sa, "public", 6uLL), result))
    {
      if (__n != 7 || (result = memcmp(__sa, "private", 7uLL), result))
      {
        if (__n != 9 || (result = memcmp(__sa, "sensitive", 9uLL), result))
        {
          result = memchr(__sa, 61, __n);
          if (!result)
          {
            result = strncmp(__sa, "mask.", 5uLL);
            if (result)
            {
              *(v4 + 8) |= 0x40u;
              result = strncmp(__sa, "builtin:", 8uLL);
              if (result)
              {
                result = memchr(__sa, 58, __n);
                if (result)
                {
                  if ((*(v4 + 8) & 0x80) != 0)
                  {
                    *(v4 + 8) ^= 0x80u;
                  }

                  *(v4 + 32) = __sa;
                  *(v4 + 14) = result - __sa;
                  *(v4 + 40) = result + 1;
                  *(v4 + 16) = __sa + __n - (result + 1);
                }

                else
                {
                  *(v4 + 8) |= 0x80u;
                  *(v4 + 32) = "builtin";
                  *(v4 + 14) = 7;
                  *(v4 + 40) = __sa;
                  *(v4 + 16) = __n;
                }
              }

              else
              {
                *(v4 + 8) |= 0x80u;
                *(v4 + 32) = "builtin";
                *(v4 + 14) = 7;
                *(v4 + 40) = __sa + 8;
                *(v4 + 16) = __n - 8;
              }
            }

            else if (__n > 5 && __n < 0xE)
            {
              *(v4 + 8) |= 0x800u;
              *(v4 + 48) = __sa + 5;
              *(v4 + 18) = __n - 5;
              result = _os_log_fmt_compute_mask(*(v4 + 48), *(v4 + 18));
              *(v4 + 56) = result;
            }
          }
        }

        else
        {
          *(v4 + 8) |= 0x400u;
        }
      }

      else
      {
        *(v4 + 8) |= 0x200u;
      }
    }

    else
    {
      *(v4 + 8) |= 0x100u;
    }
  }

  if ((*(v4 + 8) & 0x400) != 0)
  {
    *(v4 + 8) &= 0xFCFFu;
  }

  else if ((*(v4 + 8) & 0x200) != 0)
  {
    *(v4 + 8) &= ~0x100u;
  }

  return result;
}

_BYTE **addaster(_BYTE **result, uint64_t a2, unsigned __int16 a3)
{
    ;
  }

  if (*i == 36)
  {
    *result = i + 1;
    *(a2 + 8) |= 1u;
  }

  else
  {
    if ((*(a2 + 8) & a3) != 0)
    {
      *(a2 + 8) |= 1u;
    }

    *(a2 + 8) |= a3;
  }

  return result;
}

uint64_t addsarg(uint64_t result, __int16 a2)
{
  if ((a2 & 0x1000) != 0)
  {
    *(result + 10) = 11;
  }

  else if ((a2 & 0x400) != 0)
  {
    *(result + 10) = 9;
  }

  else if ((a2 & 0x800) != 0)
  {
    *(result + 10) = 9;
  }

  else if ((a2 & 0x20) != 0)
  {
    *(result + 10) = 11;
  }

  else if ((a2 & 0x10) != 0)
  {
    *(result + 10) = 9;
  }

  else if ((a2 & 0x40) != 0)
  {
    *(result + 10) = 3;
  }

  else if ((a2 & 0x2000) != 0)
  {
    *(result + 10) = 1;
  }

  else
  {
    *(result + 10) = 5;
  }

  *(result + 8) |= 0x10u;
  return result;
}

uint64_t _os_log_fmt_compute_mask(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v6 = _os_assert_log();
    _os_crash(v6);
    __break(1u);
  }

  if (a2 > 8)
  {
    v5 = _os_assert_log();
    _os_crash(v5);
    __break(1u);
  }

  v4 = 0;
  for (i = 0; i < a2; ++i)
  {
    v4 |= *(a1 + i) << (8 * i);
  }

  return v4;
}

uint64_t _os_log_fmt_flatten_masked_data(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, _BYTE *a8)
{
  if (!a3)
  {
    v9 = _os_assert_log();
    _os_crash(v9);
    __break(1u);
  }

  *a1 &= 0xF8u;
  *a1 |= 2u;
  switch(a3)
  {
    case 0x68736168:
    case 0x68736168766564:
    case 0x786F626C69616DLL:
      goto LABEL_23;
    case 0x35646D6E69616C70:
      if (*a8)
      {
        LOWORD(v12) = 0;
      }

      else
      {
        ccmd5_di();
        ccdigest();
        v12 = _os_log_fmt_truncate_to_maxsz(0x10uLL, a7, a8);
        if ((*(a4 + 20) & 2) == 0)
        {
          if (v12 <= *(a4 + 12) - ((*(a4 + 22) ^ 1) & 1u) - *(a4 + 8))
          {
            __memcpy_chk();
            *(a4 + 8) += v12;
            if ((*(a4 + 22) & 1) == 0)
            {
              *(*a4 + *(a4 + 8)) = 0;
            }
          }

          else
          {
            os_trace_blob_add_slow(a4, v17, v12);
          }
        }
      }

      goto LABEL_24;
    case 0x617474616C69616DLL:
    case 0x656D616E6C69616DLL:
    case 0x6A6275736C69616DLL:
    case 0x6D6D75736C69616DLL:
    case 0x6F6363616C69616DLL:
    case 0x7075626D6C69616DLL:
    case 0x726464616C69616DLL:
LABEL_23:
      LOWORD(v12) = 0;
      *a8 = 0;
LABEL_24:
      *a1 = *a1 & 0xF | 0xF0;
      return v12;
  }

  *a1 = *a1 & 0xF | 0xE0;
  *a8 = 0;
  return 0;
}

unint64_t _os_log_fmt_truncate_to_maxsz(unint64_t a1, unint64_t a2, _BYTE *a3)
{
  v4 = a1;
  if (a1 > a2)
  {
    *a3 = 1;
    return a2;
  }

  return v4;
}

uint64_t _os_log_fmt_flatten_to_blob(_BYTE *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, _BYTE *a9, int *a10)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18 = 0;
  v17 = 0;
  v16 = *a1 & 7;
  if (a2 >= privacy_flags2opt[v16] || *v26 >> 4 == 8)
  {
    if (*v26)
    {
      v14 = v20;
    }

    else
    {
      v14 = v21;
    }

    v17 = *(v14 + 8);
    v22 = _os_log_fmt_flatten_data_into_blob(v14, a9, a10, v23, v22, v19, &v18);
    goto LABEL_12;
  }

  if (v24)
  {
    memset(__b, 0, sizeof(__b));
    __b[0] = &v29;
    __b[1] = 0x36200000000;
    WORD2(__b[2]) = 0;
    BYTE6(__b[2]) = 1;
    LODWORD(__b[2]) = 0x10000;
    _os_log_fmt_flatten_data_into_blob(__b, a9, a10, v23, v22, 0x10000uLL, &v18);
    v17 = *(v21 + 8);
    LOWORD(v22) = _os_log_fmt_flatten_masked_data(v26, v25, v24, v21, __b[0], LODWORD(__b[1]), v19, &v18);
    v22 = v22;
    v28 = __b;
    if ((__b[2] & 0x100000000) != 0)
    {
      os_trace_blob_destroy_slow(v28);
    }

LABEL_12:
    v10 = v26;
    v12 = HIBYTE(v17);
    v13 = v22 & 0x7FFF | (v18 << 15);
    v26[2] = v17;
    v10[3] = v12;
    *(v10 + 2) = v13;
    return v22;
  }

  return 0;
}

unint64_t _os_log_fmt_flatten_data_into_blob(uint64_t a1, _BYTE *a2, int *a3, uint64_t a4, unint64_t a5, unint64_t a6, BOOL *a7)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = a7;
  *a7 = 0;
  if (v17 && v13)
  {
    v11 = 0;
    if (v14 && v14 + 1 < v13)
    {
      v13 = v14 + 1;
    }

    v10 = os_trace_blob_addns(v18, v17, v13 - 1, &v11);
    v32 = v18;
    v31 = 0;
    v30 = 0;
    v35 = v18;
    v34 = &v30;
    v33 = 1;
    if ((*(v18 + 20) & 2) != 0)
    {
      v36 = 0;
    }

    else
    {
      v37 = v35;
      if (v33 <= *(v37 + 12) - ((*(v37 + 22) ^ 1) & 1u) - *(v37 + 8))
      {
        __memcpy_chk();
        v41 = v35;
        v40 = v33;
        *(v35 + 8) += v33;
        if ((*(v41 + 22) & 1) == 0)
        {
          *(*v41 + *(v41 + 8)) = 0;
        }

        v36 = v40;
      }

      else
      {
        v36 = os_trace_blob_add_slow(v35, v34, v33);
      }
    }

    if (!v14 || (v7 = 0, v11 < &v17[v14]))
    {
      v7 = *v11 != 0;
    }

    *v12 = v7;
    return (v10 + 1);
  }

  else if (v16 && v13)
  {
    v9 = 0;
    v14 = os_trace_blob_addnws(v18, v16, v13 - 1, &v9) + 1;
    *v12 = *v9 != 0;
    v25 = v18;
    v24 = 0;
    v23 = 0;
    v28 = v18;
    v27 = &v23;
    v26 = 1;
    if ((*(v18 + 20) & 2) != 0)
    {
      v29 = 0;
    }

    else
    {
      v38 = v28;
      if (v26 <= *(v38 + 12) - ((*(v38 + 22) ^ 1) & 1u) - *(v38 + 8))
      {
        __memcpy_chk();
        v43 = v28;
        v42 = v26;
        *(v28 + 8) += v26;
        if ((*(v43 + 22) & 1) == 0)
        {
          *(*v43 + *(v43 + 8)) = 0;
        }

        v29 = v42;
      }

      else
      {
        v29 = os_trace_blob_add_slow(v28, v27, v26);
      }
    }
  }

  else if (v17 || v16)
  {
    v14 = 0;
    *v12 = 1;
  }

  else
  {
    v14 = _os_log_fmt_truncate_to_maxsz(v14, v13, v12);
    v21 = v18;
    v20 = v15;
    v19 = v14;
    if ((*(v18 + 20) & 2) != 0)
    {
      v22 = 0;
    }

    else
    {
      v39 = v21;
      if (v19 <= *(v39 + 12) - ((*(v39 + 22) ^ 1) & 1u) - *(v39 + 8))
      {
        __memcpy_chk();
        v45 = v21;
        v44 = v19;
        *(v21 + 8) += v19;
        if ((*(v45 + 22) & 1) == 0)
        {
          *(*v45 + *(v45 + 8)) = 0;
        }

        v22 = v44;
      }

      else
      {
        v22 = os_trace_blob_add_slow(v21, v20, v19);
      }
    }
  }

  return v14;
}

uint64_t os_log_fmt_flatten(_BYTE *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v49 = a1;
  v48 = 0;
  v47 = a2;
  v46 = 1024;
  v45 = a3;
  v44 = a4;
  v43 = a5;
  v42 = a6;
  v41 = a2 != 0;
  if (!a2)
  {
    v40 = _os_assert_log();
    _os_crash(v40);
    __break(1u);
  }

  v61 = v45;
  v60 = *(v45 + 8) + ((*(v45 + 22) ^ 1) & 1);
  if (*(v45 + 16))
  {
    v62 = *(v61 + 16) - v60;
  }

  else if (*(v61 + 12))
  {
    v62 = *(v61 + 12) - v60;
  }

  else
  {
    v62 = 0;
  }

  v6 = 0;
  if (v62 >= v46)
  {
    v58 = v44;
    v57 = *(v44 + 8) + ((*(v44 + 22) ^ 1) & 1);
    if (*(v44 + 16))
    {
      v59 = *(v58 + 16) - v57;
    }

    else
    {
      v59 = *(v58 + 12) ? *(v58 + 12) - v57 : 0;
    }

    v6 = 0;
    if (v59 >= v46)
    {
      v55 = v43;
      v54 = *(v43 + 8) + ((*(v43 + 22) ^ 1) & 1);
      if (*(v43 + 16))
      {
        v56 = *(v55 + 16) - v54;
      }

      else if (*(v55 + 12))
      {
        v56 = *(v55 + 12) - v54;
      }

      else
      {
        v56 = 0;
      }

      v6 = v56 >= v46;
    }
  }

  v39 = v6;
  if (!v6)
  {
    v38 = _os_assert_log();
    _os_crash(v38);
    __break(1u);
  }

  v37 = privacy_opt2flags[v48];
  v36 = 32 * v47;
  v35 = *(v45 + 8);
  v34 = 0;
  __dst = 0;
  result = memset(__b, 0, sizeof(__b));
  __b[0] = 32 * v47;
  __b[1] = 0;
  if ((*v49 & 0x10) != 0)
  {
    __b[0] |= 0x10u;
  }

  v31 = v46 - *(v45 + 8) - 2;
  v52 = v45;
  v51 = __b;
  v50 = 2;
  if ((*(v45 + 20) & 2) != 0)
  {
    v53 = 0;
  }

  else
  {
    v97 = v52;
    if (v50 <= *(v97 + 12) - ((*(v97 + 22) ^ 1) & 1u) - *(v97 + 8))
    {
      result = __memcpy_chk();
      v107 = v52;
      v106 = v50;
      *(v52 + 8) += v50;
      if ((*(v107 + 22) & 1) == 0)
      {
        *(*v107 + *(v107 + 8)) = 0;
      }

      v53 = v106;
    }

    else
    {
      result = os_trace_blob_add_slow(v52, v51, v50);
      v53 = result;
    }
  }

  v30 = v49 + 2;
  v29 = 0;
  while (v29 < v49[1])
  {
    result = memset(v28, 0, sizeof(v28));
    v27 = 0;
    __src = v30 + 2;
    v28[0] = *v30;
    v28[1] = v30[1];
    if ((v28[0] & 7) == 0)
    {
      v28[0] = v28[0] & 0xF0 | v28[0] & 0xF | v37 & 0xF;
    }

    v8 = v28[0] >> 4;
    if (v8)
    {
      switch(v8)
      {
        case 1:
          v23 = v28[1] == 4;
          if (v28[1] != 4)
          {
            v22 = _os_assert_log();
            result = _os_crash(v22);
            __break(1u);
          }

          v34 = *__src;
          if ((v34 & 0x80000000) != 0)
          {
            v34 = 0;
          }

          v28[0] = v28[0] & 0xF0 | 2;
          break;
        case 6:
          v28[0] &= 0xFu;
          __src = &v42;
          v28[1] = 4;
          v34 = 4;
          break;
        case 7:
          v25 = v28[1] == 8;
          if (v28[1] != 8)
          {
            v24 = _os_assert_log();
            _os_crash(v24);
            __break(1u);
          }

          result = memcpy(&__dst, __src, sizeof(__dst));
          goto LABEL_110;
        default:
          if (!((os_log_fmt_flatten_cmd_type_is_scalar[v28[0] >> 4] ^ 1) & 1))
          {
            v20 = _os_assert_log();
            _os_crash(v20);
            __break(1u);
          }

          v19 = v28[1] == 8;
          if (v28[1] != 8)
          {
            v18 = _os_assert_log();
            _os_crash(v18);
            __break(1u);
          }

          result = memcpy(&__src, __src, sizeof(__src));
          __b[0] |= 2u;
          break;
      }
    }

    else
    {
      v34 = v28[1];
    }

    if (os_log_fmt_flatten_cmd_type_is_scalar[v28[0] >> 4] & 1) == 0 || (v28[0])
    {
      v28[1] = 4;
      v16 = 0;
      v17 &= 0x8000u;
      v17 &= ~0x8000u;
      v68 = __b;
      v67 = v45;
      v66 = v28;
      v65 = &v16;
      v64 = &v31;
      v63 = *(v45 + 8);
      v12 = v31 < 6;
      v31 -= 6;
      v109 = v12;
      if (v12)
      {
        *v68 |= 0x80u;
        v69 = 0;
      }

      else
      {
        ++v68[1];
        v76 = v67;
        v75 = v66;
        v74 = 2;
        if ((*(v67 + 20) & 2) != 0)
        {
          v77 = 0;
        }

        else
        {
          v96 = v76;
          if (v74 <= *(v96 + 12) - ((*(v96 + 22) ^ 1) & 1u) - *(v96 + 8))
          {
            result = __memcpy_chk();
            v105 = v76;
            v104 = v74;
            *(v76 + 8) += v74;
            if ((*(v105 + 22) & 1) == 0)
            {
              *(*v105 + *(v105 + 8)) = 0;
            }

            v77 = v104;
          }

          else
          {
            result = os_trace_blob_add_slow(v76, v75, v74);
            v77 = result;
          }
        }

        v13 = v66[1];
        v72 = v67;
        v71 = v65;
        v70 = v13;
        if ((*(v67 + 20) & 2) != 0)
        {
          v73 = 0;
        }

        else
        {
          v95 = v72;
          if (v70 <= *(v95 + 12) - ((*(v95 + 22) ^ 1) & 1u) - *(v95 + 8))
          {
            result = __memcpy_chk();
            v103 = v72;
            v102 = v70;
            *(v72 + 8) += v70;
            if ((*(v103 + 22) & 1) == 0)
            {
              *(*v103 + *(v103 + 8)) = 0;
            }

            v73 = v102;
          }

          else
          {
            result = os_trace_blob_add_slow(v72, v71, v70);
            v73 = result;
          }
        }

        v69 = (*v67 + v63);
      }

      v27 = v69;
      if (!v69)
      {
        break;
      }

      v15 = v28[0] & 7;
      if (__src && (v47 >= privacy_flags2opt[v15] || __dst))
      {
        result = _os_log_fmt_flatten_data(v27, v47, __dst, __src, v34, v44, v43, v31);
        v31 -= result;
      }

      else if (!__src && v47 < privacy_flags2opt[v15] && __dst)
      {
        *v27 = *v27 & 0xF | 0xF0;
        *v27 &= 0xF8u;
        *v27 = *v27 & 0xF0 | *v27 & 0xD | 2;
      }

      if (!(*v27 >> 4) && (*(v27 + 2) & 0x7FFF) == 0)
      {
        *(v27 + 2) = *(v27 + 2) & 0x7FFF | 0x8000;
      }

      if (*v27)
      {
        __b[0] |= 1u;
      }

LABEL_109:
      v34 = 0;
      __dst = 0;
      goto LABEL_110;
    }

    v83 = __b;
    v82 = v45;
    v81 = v28;
    v80 = __src;
    v79 = &v31;
    v78 = *(v45 + 8);
    v9 = v28[1] + 2;
    v10 = v31 - v9;
    LOBYTE(v9) = v31 < v9;
    v31 = v10;
    v108 = v9 & 1;
    if (v9)
    {
      *v83 |= 0x80u;
      v84 = 0;
    }

    else
    {
      ++v83[1];
      v91 = v82;
      v90 = v81;
      v89 = 2;
      if ((*(v82 + 20) & 2) != 0)
      {
        v92 = 0;
      }

      else
      {
        v94 = v91;
        if (v89 <= *(v94 + 12) - ((*(v94 + 22) ^ 1) & 1u) - *(v94 + 8))
        {
          result = __memcpy_chk();
          v101 = v91;
          v100 = v89;
          *(v91 + 8) += v89;
          if ((*(v101 + 22) & 1) == 0)
          {
            *(*v101 + *(v101 + 8)) = 0;
          }

          v92 = v100;
        }

        else
        {
          result = os_trace_blob_add_slow(v91, v90, v89);
          v92 = result;
        }
      }

      v11 = v81[1];
      v87 = v82;
      v86 = v80;
      v85 = v11;
      if ((*(v82 + 20) & 2) != 0)
      {
        v88 = 0;
      }

      else
      {
        v93 = v87;
        if (v85 <= *(v93 + 12) - ((*(v93 + 22) ^ 1) & 1u) - *(v93 + 8))
        {
          result = __memcpy_chk();
          v99 = v87;
          v98 = v85;
          *(v87 + 8) += v85;
          if ((*(v99 + 22) & 1) == 0)
          {
            *(*v99 + *(v99 + 8)) = 0;
          }

          v88 = v98;
        }

        else
        {
          result = os_trace_blob_add_slow(v87, v86, v85);
          v88 = result;
        }
      }

      v84 = *v82 + v78;
    }

    if (!v84)
    {
      break;
    }

    if (v28[0] >> 4 != 1)
    {
      goto LABEL_109;
    }

LABEL_110:
    ++v29;
    v30 += v30[1] + 2;
  }

  v14 = (*v45 + v35);
  *v14 = __b[0];
  v14[1] = __b[1];
  return result;
}

uint64_t _os_log_fmt_flatten_data(_BYTE *a1, unsigned __int8 a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = a8;
  v11 = 0;
  if (a8 > 0x7FFF)
  {
    v12 = 0x7FFFLL;
  }

  v8 = *a1 >> 4;
  if (!v8)
  {
    if (!a5)
    {
      v10 = _os_assert_log();
      _os_crash(v10);
      __break(1u);
    }

    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v12, v11, 0);
  }

  if (v8 == 2)
  {
    v11 = a4;
    if ((*a1 & 7) == 0)
    {
      *a1 = *a1 & 0xF0 | *a1 & 0xE | 1;
    }

    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v12, v11, 0);
  }

  if (v8 != 3)
  {
    _os_crash("Invalid cmd type");
    __break(1u);
    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v12, v11, 0);
  }

  if (a5)
  {
    if ((*a1 & 7) == 0)
    {
      *a1 = *a1 & 0xF0 | *a1 & 0xE | 1;
    }

    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v12, v11, 0);
  }

  return 0;
}

uint64_t os_log_fmt_read_scalar(uint64_t a1, unsigned __int8 *a2, __int16 a3)
{
  memset(&__b, 0, sizeof(__b));
  if (*(a1 + 10) == 14)
  {
    return *a2;
  }

  if (*(a1 + 10) != 15)
  {
    if ((*(a1 + 8) & 0x20) != 0)
    {
      switch(a3)
      {
        case 1:
          return *a2;
        case 2:
          return *a2;
        case 4:
          return *a2;
        case 8:
          return *a2;
      }
    }

    else
    {
      switch(a3)
      {
        case 1:
          return *a2;
        case 2:
          return *a2;
        case 4:
          return *a2;
        case 8:
          return *a2;
      }
    }

    _os_crash("Invalid scalar size");
    __break(1u);
    return __b;
  }

  return *a2;
}

_BYTE *os_log_fmt_convert_trace(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v9 = *(a2 + a3 - 1);
  v8 = a2 + a3 - v9 - 1;
  v6 = a1 + 2;
  *a1 = 0;
  a1[1] = v9;
  for (i = 0; i < v9; ++i)
  {
    v4 = *(v8 + i) & 0x3F;
    if (v10 + v4 > v8)
    {
      return 0;
    }

    *v6 = 0;
    v6[1] = v4;
    __memcpy_chk();
    v10 += v4;
    v6 += v4 + 2;
  }

  return a1;
}

void *os_log_fmt_extract_pubdata(uint64_t a1, unsigned __int16 a2, void *a3, unsigned __int16 *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return &os_log_fmt_extract_pubdata_empty_hdr;
  }

  if (a2 < 2uLL)
  {
    return 0;
  }

  v8 = a1 + 2;
  v7 = a2 - 2;
  for (i = 0; i < *(a1 + 1); ++i)
  {
    v5 = v8;
    if (v7 < 2uLL)
    {
      return 0;
    }

    if (v7 < *(v8 + 1) + 2)
    {
      return 0;
    }

    v8 += *(v8 + 1) + 2;
    v7 -= *(v5 + 1) + 2;
  }

  *a3 = v8;
  *a4 = v7;
  return a1;
}

uint64_t os_log_fmt_read_aster_if_necessary(uint64_t result, _WORD *a2, void *a3)
{
  v5 = result;
  if ((*(result + 8) & 2) != 0)
  {
    if (*a2)
    {
      v9 = *a3;
      --*a2;
      *a3 = &v9[v9[1] + 2];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && v10[1] == 4 && (*v10 >> 4 == 1 || !(*v10 >> 4)))
    {
      result = __memcpy_chk();
    }

    else
    {
      *(result + 20) = 0;
    }
  }

  if ((*(v5 + 8) & 8) != 0)
  {
    if ((*(v5 + 8) & 4) == 0 && ((*(v5 + 8) & 0x10) != 0 || *(v5 + 10) == 18))
    {
      if (*a2 && **a3 >> 4 == 1)
      {
        if (*a2)
        {
          v8 = *a3;
          --*a2;
          *a3 = &v8[v8[1] + 2];
        }
      }

      *(v5 + 8) &= ~8u;
    }

    else
    {
      if (*a2)
      {
        v6 = *a3;
        --*a2;
        *a3 = &v6[v6[1] + 2];
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (v7 && v7[1] == 4 && (*v7 >> 4 == 1 || !(*v7 >> 4)))
      {
        return __memcpy_chk();
      }

      else
      {
        *(v5 + 24) = -1;
      }
    }
  }

  return result;
}

uint64_t os_log_fmt_get_data(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, __int16 *a4, __int16 a5, uint64_t a6, __int16 **a7, unsigned __int16 *a8, BOOL *a9, __int16 *a10, unsigned __int16 a11, __int16 *a12, unsigned __int16 a13)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = a8;
  v19 = a10;
  v18 = a11;
  v17 = 0;
  if (!a4)
  {
    v17 = 2;
LABEL_63:
    *v21 = 0;
    *v20 = 0;
    return v17;
  }

  if (*v24 >> 4 == 14)
  {
    if (*(v27 + 56))
    {
      if (os_log_fmt_validate_mask(*(v27 + 56)))
      {
        v17 = 8;
      }

      else
      {
        v17 = 10;
      }
    }

    else
    {
      v17 = 3;
    }

    goto LABEL_63;
  }

  if (*v24)
  {
    v16 = privacy_flags2opt[*v24 & 7];
    if (!v16)
    {
      v17 = 3;
      goto LABEL_63;
    }

    if (v16 > v25)
    {
      v17 = 1;
      goto LABEL_63;
    }

    if (v26)
    {
      if (v26 - 1 <= 2 && v16 > v26 && *v24 >> 4 != 8)
      {
        v17 = 1;
        goto LABEL_63;
      }
    }

    else if (!a12)
    {
      v17 = 1;
      goto LABEL_63;
    }

    v19 = a12;
    v18 = a13;
  }

  if (!v19 && v18)
  {
    v17 = 4;
    goto LABEL_63;
  }

  *a9 = 0;
  if ((*v24 & 1) == 0 && !(*v24 >> 4))
  {
    v19 = v24 + 1;
    v18 = *(v24 + 1);
    *a9 = v18 == 0;
LABEL_57:
    if (*a9 && !(*v24 >> 4))
    {
      v17 = 2;
      goto LABEL_63;
    }

    *v21 = v19;
    *v20 = v18;
    if (_os_log_fmt_validate_cmd(v27, v22, v24, v18))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v15 = _os_log_fmt_compose_read_range(v24, v18, &v17);
  if (!v15)
  {
    goto LABEL_63;
  }

  if (v19)
  {
    v19 = (v19 + *v15);
  }

  *a9 = *(v15 + 1) < 0;
  if (!*a9 || v23 || (*(v15 + 1) & 0x7FFF) != 0 || v18 - *v15 < 0x8000)
  {
    v18 = *(v15 + 1) & 0x7FFF;
  }

  else
  {
    v18 = 0x8000;
    *a9 = 0;
  }

  if (*v24 >> 4 != 15)
  {
    goto LABEL_57;
  }

  v13 = *(v27 + 56);
  switch(v13)
  {
    case 0:
      v17 = 3;
      goto LABEL_63;
    case 0x68736168:
    case 0x68736168766564:
      goto LABEL_52;
    case 0x786F626C69616DLL:
      goto LABEL_54;
    case 0x35646D6E69616C70:
LABEL_52:
      *v21 = v19;
      *v20 = v18;
      return 5;
    case 0x617474616C69616DLL:
    case 0x656D616E6C69616DLL:
    case 0x6A6275736C69616DLL:
    case 0x6D6D75736C69616DLL:
    case 0x6F6363616C69616DLL:
LABEL_54:
      *v21 = v19;
      *v20 = v18;
      return 6;
    case 0x7075626D6C69616DLL:
      goto LABEL_52;
  }

  if (v13 != 0x726464616C69616DLL)
  {
    v17 = 9;
    goto LABEL_63;
  }

  *v21 = v19;
  *v20 = v18;
  return 7;
}

unsigned __int8 *_os_log_fmt_compose_read_range(__int16 *a1, unsigned __int16 a2, _BYTE *a3)
{
  if (((*a1 & 1) != 0 || *a1 >> 4 > 1u) && *(a1 + 1) == 4)
  {
    if (a2 >= a1[1] && a2 - a1[1] >= (a1[2] & 0x7FFF))
    {
      if (a1[2] >= 0 || *a1 >> 4)
      {
        return (a1 + 1);
      }

      else
      {
        *a3 = 2;
        return 0;
      }
    }

    else
    {
      *a3 = 4;
      return 0;
    }
  }

  else
  {
    *a3 = 3;
    return 0;
  }
}

BOOL _os_log_fmt_validate_cmd(uint64_t a1, unsigned __int16 a2, _BYTE *a3, unsigned __int16 a4)
{
  if (*a3 >> 4 == 1)
  {
    return 0;
  }

  else if (((*(a1 + 8) & 0x10) != 0) == (*a3 >> 4 == 0))
  {
    if ((*(a1 + 8) & 0x10) != 0 && (!a4 || ((a4 - 1) & a4) != 0))
    {
      return 0;
    }

    else
    {
      switch(*(a1 + 10))
      {
        case 1:
        case 2:
          v6 = a4 <= 4uLL;
          break;
        case 3:
        case 4:
          v6 = a4 <= 4uLL;
          break;
        case 5:
        case 6:
        case 7:
        case 8:
          v6 = a4 <= 4uLL;
          break;
        case 9:
        case 0xA:
          v6 = a4 <= a2;
          break;
        case 0xB:
        case 0xC:
          v6 = a4 <= 8uLL;
          break;
        case 0xD:
          v6 = a4 == a2;
          break;
        case 0xE:
          v6 = a4 == 8;
          break;
        case 0xF:
          v6 = a4 == 8;
          break;
        case 0x10:
          v6 = *a3 >> 4 == 2;
          break;
        case 0x11:
          v6 = *a3 >> 4 == 5;
          break;
        case 0x12:
          v4 = *a3 >> 4;
          v6 = (v4 - 2) < 3 || v4 == 8;
          break;
        case 0x13:
          v6 = *a3 >> 4 == 3;
          break;
        default:
          _os_crash("Unexpected type");
          __break(1u);
          break;
      }
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void os_log_fmt_compose(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, _BYTE *a6, __int16 *a7, unsigned __int16 a8, __int16 *a9, unsigned __int16 a10, uint64_t a11)
{
  v39 = a1;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v31 = a6 + 2;
  v30 = a6[1];
  v29 = (*a6 & 0x60) >> 5;
  memset(__b, 0, sizeof(__b));
  v27 = 0;
  while (1)
  {
    v26 = strcspn(v38, "%");
    v42 = v39;
    v41 = v38;
    v40 = v26;
    if ((*(v39 + 20) & 2) != 0)
    {
      v43 = 0;
    }

    else
    {
      v58 = v42;
      if (v40 <= *(v58 + 12) - ((*(v58 + 22) ^ 1) & 1u) - *(v58 + 8))
      {
        __memcpy_chk();
        v62 = v42;
        v61 = v40;
        *(v42 + 8) += v40;
        if ((*(v62 + 22) & 1) == 0)
        {
          *(*v62 + *(v62 + 8)) = 0;
        }

        v43 = v61;
      }

      else
      {
        v43 = os_trace_blob_add_slow(v42, v41, v40);
      }
    }

    v38 += v26;
    if (!*v38)
    {
      break;
    }

    v26 = os_log_fmt_delimit(v38, v37, __b);
    if (v26)
    {
      v38 += v26;
      if (__b[1])
      {
        _os_log_fmt_decode_give_up(v39, __b, v11, v12, v13, v14, v15, v16);
        return;
      }

      os_log_fmt_read_aster_if_necessary(__b, &v30, &v31);
      v25 = 0;
      v24 = 0;
      v46 = &v31;
      v45 = &v30;
      if (v30)
      {
        v44 = *v46;
        --*v45;
        *v46 = v44 + 2 + *(v44 + 1);
        v47 = v44;
      }

      else
      {
        v47 = 0;
      }

      v27 = v47;
      v23 = 0;
      data = os_log_fmt_get_data(__b, v29, v36, v47, v30, v35, &v25, &v24, &v23, v33, v32, a9, a10);
      if (data == 5)
      {
        _os_log_fmt_compose_masked_digest(v39, __b, v25, v24, v23, v18, v19, v20);
      }

      else if (data == 6 || data == 7)
      {
        _os_log_fmt_compose_masked_partial_redacted(v39, __b, v25, v24, v23);
      }

      else if (data)
      {
        _os_log_fmt_decode_data_access_failure(v39, __b, data, v27, v24, v18, v19, v20);
      }

      else if ((__b[1] & 0x40) == 0 || (_os_log_fmt_compose_annotated(v39, v35, __b, v27, v25, v24, v23) & 1) == 0)
      {
        if ((__b[1] & 0x10) != 0)
        {
          _os_log_fmt_compose_scalar(v39, __b, v35, v25, v24);
        }

        else
        {
          _os_log_fmt_compose_data(v39, __b, v27, v25, v24, v23);
        }
      }
    }

    else
    {
      if (!v38[1])
      {
        break;
      }

      v17 = v38[1];
      v50 = v39;
      v49 = v17;
      v48 = v17;
      v53 = v39;
      v52 = &v48;
      v51 = 1;
      if ((*(v39 + 20) & 2) != 0)
      {
        v54 = 0;
      }

      else
      {
        v57 = v53;
        if (v51 <= *(v57 + 12) - ((*(v57 + 22) ^ 1) & 1u) - *(v57 + 8))
        {
          __memcpy_chk();
          v60 = v53;
          v59 = v51;
          *(v53 + 8) += v51;
          if ((*(v60 + 22) & 1) == 0)
          {
            *(*v60 + *(v60 + 8)) = 0;
          }

          v54 = v59;
        }

        else
        {
          v54 = os_trace_blob_add_slow(v53, v52, v51);
        }
      }

      v38 += 2;
    }
  }

  v56 = v39;
  for (i = *(v39 + 8); ; --i)
  {
    v21 = 0;
    if (i)
    {
      v21 = isspace(*(*v56 + i - 1)) != 0;
    }

    if (!v21)
    {
      break;
    }
  }

  v64 = v56;
  v63 = i;
  *(v56 + 8) = i;
  if ((*(v64 + 22) & 1) == 0)
  {
    *(*v64 + v63) = 0;
  }
}

size_t _os_log_fmt_compose_masked_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a4;
  v9 = a5;
  os_trace_blob_addf(a1, "<mask.%.*s: ", a3, a4, a5, a6, a7, a8, *(a2 + 18), *(a2 + 48));
  if (v10 || (v9 & 1) != 0)
  {
    os_trace_blob_add_hexdump(a1, a3, v10, v9 & 1);
  }

  else
  {
    v14 = strlen("(null)");
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v14 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        __memcpy_chk();
        *(a1 + 8) += v14;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, "(null)", v14);
      }
    }
  }

  result = strlen(">");
  v13 = result;
  if ((*(a1 + 20) & 2) == 0)
  {
    if (result <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
    {
      result = __memcpy_chk();
      *(a1 + 8) += v13;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + *(a1 + 8)) = 0;
      }
    }

    else
    {
      return os_trace_blob_add_slow(a1, ">", result);
    }
  }

  return result;
}

uint64_t _os_log_fmt_compose_masked_partial_redacted(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned __int16 a4, char a5)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  if (a4 || (v34 & 1) != 0)
  {
    if (v35 >= 4uLL)
    {
      memset(__b, 0, sizeof(__b));
      __b[0] = *v36;
      __b[1] = v36[1];
      __b[2] = v36[2];
      __b[3] = v36[3];
      v32 = __b[3] == 2;
      v6 = 0;
      if ((v34 & 1) == 0)
      {
        v6 = 0;
        if (!__b[0])
        {
          v6 = 1;
          if (__b[3] == 2)
          {
            v6 = __b[2] == 0;
          }
        }
      }

      if (v6)
      {
        return os_trace_blob_addns(v38, v36 + 4, v35 - 4, 0);
      }

      else
      {
        v7 = 1;
        if (__b[3] != 2)
        {
          v7 = __b[3] == 0;
        }

        v31 = v7;
        v30 = __b[3] == 1;
        v103 = v38;
        v102 = "<";
        v8 = strlen("<");
        v106 = v38;
        v105 = "<";
        v104 = v8;
        if ((*(v38 + 20) & 2) != 0)
        {
          v107 = 0;
        }

        else
        {
          v108 = v106;
          if (v104 <= *(v108 + 12) - ((*(v108 + 22) ^ 1) & 1u) - *(v108 + 8))
          {
            __memcpy_chk();
            v110 = v106;
            v109 = v104;
            *(v106 + 8) += v104;
            if ((*(v110 + 22) & 1) == 0)
            {
              *(*v110 + *(v110 + 8)) = 0;
            }

            v107 = v109;
          }

          else
          {
            v107 = os_trace_blob_add_slow(v106, v105, v104);
          }
        }

        if (__b[0] + 4 < v35)
        {
          v29 = __b[0] + 4;
          if (v32)
          {
            if (__b[2] >= v35 - v29)
            {
              v15 = v35 - v29;
            }

            else
            {
              v15 = __b[2];
            }
          }

          else
          {
            v15 = v35 - v29;
          }

          v28 = v15;
          v27 = 0;
          if (v15)
          {
            if (v30)
            {
              v94 = v38;
              v93 = "…";
              v16 = strlen("…");
              v97 = v38;
              v96 = "…";
              v95 = v16;
              if ((*(v38 + 20) & 2) != 0)
              {
                v98 = 0;
              }

              else
              {
                v99 = v97;
                if (v95 <= *(v99 + 12) - ((*(v99 + 22) ^ 1) & 1u) - *(v99 + 8))
                {
                  __memcpy_chk();
                  v101 = v97;
                  v100 = v95;
                  *(v97 + 8) += v95;
                  if ((*(v101 + 22) & 1) == 0)
                  {
                    *(*v101 + *(v101 + 8)) = 0;
                  }

                  v98 = v100;
                }

                else
                {
                  v98 = os_trace_blob_add_slow(v97, v96, v95);
                }
              }

              v27 = 1;
            }

            if (os_trace_blob_addns(v38, &v36[v29], v28, 0))
            {
              if (v31 || (v34 & 1) != 0)
              {
                v85 = v38;
                v84 = "…";
                v17 = strlen("…");
                v88 = v38;
                v87 = "…";
                v86 = v17;
                if ((*(v38 + 20) & 2) != 0)
                {
                  v89 = 0;
                }

                else
                {
                  v90 = v88;
                  if (v86 <= *(v90 + 12) - ((*(v90 + 22) ^ 1) & 1u) - *(v90 + 8))
                  {
                    __memcpy_chk();
                    v92 = v88;
                    v91 = v86;
                    *(v88 + 8) += v86;
                    if ((*(v92 + 22) & 1) == 0)
                    {
                      *(*v92 + *(v92 + 8)) = 0;
                    }

                    v89 = v91;
                  }

                  else
                  {
                    v89 = os_trace_blob_add_slow(v88, v87, v86);
                  }
                }
              }

              v27 = 1;
            }
          }

          if (v32)
          {
            v26 = __b[0] + 4 + v28;
            v25 = v35 - v26;
            if (v25)
            {
              if (v30)
              {
                v76 = v38;
                v75 = "…";
                v18 = strlen("…");
                v79 = v38;
                v78 = "…";
                v77 = v18;
                if ((*(v38 + 20) & 2) != 0)
                {
                  v80 = 0;
                }

                else
                {
                  v81 = v79;
                  if (v77 <= *(v81 + 12) - ((*(v81 + 22) ^ 1) & 1u) - *(v81 + 8))
                  {
                    __memcpy_chk();
                    v83 = v79;
                    v82 = v77;
                    *(v79 + 8) += v77;
                    if ((*(v83 + 22) & 1) == 0)
                    {
                      *(*v83 + *(v83 + 8)) = 0;
                    }

                    v80 = v82;
                  }

                  else
                  {
                    v80 = os_trace_blob_add_slow(v79, v78, v77);
                  }
                }

                v27 = 1;
              }

              if (os_trace_blob_addns(v38, &v36[v26], v25, 0))
              {
                if (v31)
                {
                  v67 = v38;
                  v66 = "…";
                  v19 = strlen("…");
                  v70 = v38;
                  v69 = "…";
                  v68 = v19;
                  if ((*(v38 + 20) & 2) != 0)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    v72 = v70;
                    if (v68 <= *(v72 + 12) - ((*(v72 + 22) ^ 1) & 1u) - *(v72 + 8))
                    {
                      __memcpy_chk();
                      v74 = v70;
                      v73 = v68;
                      *(v70 + 8) += v68;
                      if ((*(v74 + 22) & 1) == 0)
                      {
                        *(*v74 + *(v74 + 8)) = 0;
                      }

                      v71 = v73;
                    }

                    else
                    {
                      v71 = os_trace_blob_add_slow(v70, v69, v68);
                    }
                  }
                }

                v27 = 1;
              }
            }
          }

          if (v27)
          {
            v58 = v38;
            v57 = ", ";
            v20 = strlen(", ");
            v61 = v38;
            v60 = ", ";
            v59 = v20;
            if ((*(v38 + 20) & 2) != 0)
            {
              v62 = 0;
            }

            else
            {
              v63 = v61;
              if (v59 <= *(v63 + 12) - ((*(v63 + 22) ^ 1) & 1u) - *(v63 + 8))
              {
                __memcpy_chk();
                v65 = v61;
                v64 = v59;
                *(v61 + 8) += v59;
                if ((*(v65 + 22) & 1) == 0)
                {
                  *(*v65 + *(v65 + 8)) = 0;
                }

                v62 = v64;
              }

              else
              {
                v62 = os_trace_blob_add_slow(v61, v60, v59);
              }
            }
          }
        }

        os_trace_blob_addf(v38, "length=%u", v9, v10, v11, v12, v13, v14, __b[1]);
        v24 = (v36 + 4);
        if (__b[0] >= v35 - 4)
        {
          v21 = v35 - 4;
        }

        else
        {
          v21 = __b[0];
        }

        v23 = v21;
        if (v21)
        {
          v49 = v38;
          v48 = ", ";
          v22 = strlen(", ");
          v52 = v38;
          v51 = ", ";
          v50 = v22;
          if ((*(v38 + 20) & 2) != 0)
          {
            v53 = 0;
          }

          else
          {
            v54 = v52;
            if (v50 <= *(v54 + 12) - ((*(v54 + 22) ^ 1) & 1u) - *(v54 + 8))
            {
              __memcpy_chk();
              v56 = v52;
              v55 = v50;
              *(v52 + 8) += v50;
              if ((*(v56 + 22) & 1) == 0)
              {
                *(*v56 + *(v56 + 8)) = 0;
              }

              v53 = v55;
            }

            else
            {
              v53 = os_trace_blob_add_slow(v52, v51, v50);
            }
          }

          os_trace_blob_add_hexdump(v38, v24, v23, v23 != __b[0]);
        }

        v40 = v38;
        __s = ">";
        result = strlen(">");
        v43 = v38;
        v42 = ">";
        v41 = result;
        if ((*(v38 + 20) & 2) != 0)
        {
          v44 = 0;
        }

        else
        {
          v45 = v43;
          if (v41 <= *(v45 + 12) - ((*(v45 + 22) ^ 1) & 1u) - *(v45 + 8))
          {
            result = __memcpy_chk();
            v47 = v43;
            v46 = v41;
            *(v43 + 8) += v41;
            if ((*(v47 + 22) & 1) == 0)
            {
              *(*v47 + *(v47 + 8)) = 0;
            }
          }

          else
          {
            result = os_trace_blob_add_slow(v43, v42, v41);
            v44 = result;
          }
        }
      }
    }

    else
    {
      v112 = v38;
      v111 = "<…>";
      result = strlen("<…>");
      v115 = v38;
      v114 = "<…>";
      v113 = result;
      if ((*(v38 + 20) & 2) != 0)
      {
        v116 = 0;
      }

      else
      {
        v117 = v115;
        if (v113 <= *(v117 + 12) - ((*(v117 + 22) ^ 1) & 1u) - *(v117 + 8))
        {
          result = __memcpy_chk();
          v119 = v115;
          v118 = v113;
          *(v115 + 8) += v113;
          if ((*(v119 + 22) & 1) == 0)
          {
            *(*v119 + *(v119 + 8)) = 0;
          }

          v116 = v118;
        }

        else
        {
          result = os_trace_blob_add_slow(v115, v114, v113);
          v116 = result;
        }
      }
    }
  }

  else
  {
    v121 = v38;
    v120 = "<(null)>";
    result = strlen("<(null)>");
    v124 = v38;
    v123 = "<(null)>";
    v122 = result;
    if ((*(v38 + 20) & 2) != 0)
    {
      v125 = 0;
    }

    else
    {
      v126 = v124;
      if (v122 <= *(v126 + 12) - ((*(v126 + 22) ^ 1) & 1u) - *(v126 + 8))
      {
        result = __memcpy_chk();
        v128 = v124;
        v127 = v122;
        *(v124 + 8) += v122;
        if ((*(v128 + 22) & 1) == 0)
        {
          *(*v128 + *(v128 + 8)) = 0;
        }

        v125 = v127;
      }

      else
      {
        result = os_trace_blob_add_slow(v124, v123, v122);
        v125 = result;
      }
    }
  }

  return result;
}

void _os_log_fmt_decode_data_access_failure(uint64_t result, uint64_t a2, unsigned __int8 a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a3)
  {
    case 1u:
      v9 = strlen("<private>");
      if ((*(result + 20) & 2) == 0)
      {
        if (v9 <= *(result + 12) - ((*(result + 22) ^ 1) & 1u) - *(result + 8))
        {
          __memcpy_chk();
          *(result + 8) += v9;
          if ((*(result + 22) & 1) == 0)
          {
            *(*result + *(result + 8)) = 0;
          }
        }

        else
        {
          os_trace_blob_add_slow(result, "<private>", v9);
        }
      }

      break;
    case 2u:
      _os_log_fmt_decode_error(result);
      break;
    case 3u:
      _os_log_fmt_decode_cmd_mismatch(result, a2, a4, a5, a5, a6, a7, a8);
      break;
    case 4u:
      _os_log_fmt_decode_bad_range(result, a2, a4, a5, a5, a6, a7, a8);
      break;
    default:
      if (a3 - 8 < 3)
      {
        _os_log_fmt_decode_masked_unknown(result, a2, a4, a3, a5, a6, a7, a8);
      }

      break;
  }
}

uint64_t _os_log_fmt_compose_annotated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, char a7)
{
  if ((*(a3 + 8) & 0x80) != 0)
  {
    v8 = _os_log_fmt_builtin_annotated(a1, a2, a3, a4, a5, a6, a7 & 1) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _os_log_fmt_compose_scalar(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, __int16 a5)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  memset(&__b, 0, sizeof(__b));
  __b = os_log_fmt_read_scalar(v35, v33, v32);
  v30 = 0;
  if ((v35[1] & 2) != 0)
  {
    v5 = *(v35 + 5);
    v6 = v30++;
    *(&v46 + v6) = v5;
  }

  if ((v35[1] & 4) != 0)
  {
    v7 = *(v35 + 6);
    v8 = v30++;
    *(&v46 + v8) = v7;
  }

  if (*(v35 + 6) + 2 <= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = *(v35 + 6) + 2;
  }

  v10 = (v9 + 1);
  v29 = v23;
  v11 = &v23[-((v10 + 15) & 0x1FFFFFFF0)];
  v28 = v10;
  result = _os_log_fmt_compose_format_copy(v11, v35);
  v27 = result;
  v19 = *(v35 + 10);
  if (!*(v35 + 10))
  {
    goto LABEL_70;
  }

  if ((v19 - 1) < 6 || v19 == 7)
  {
    goto LABEL_19;
  }

  if (v19 == 8)
  {
    v20 = v36;
    v21 = strerror(__b);
    v38 = v20;
    v37 = v21;
    v22 = v21;
    result = strlen(v21);
    v41 = v20;
    v40 = v22;
    v39 = result;
    if ((*(v20 + 20) & 2) != 0)
    {
      v42 = 0;
    }

    else
    {
      v43 = v41;
      if (v39 <= *(v43 + 12) - ((*(v43 + 22) ^ 1) & 1u) - *(v43 + 8))
      {
        result = __memcpy_chk();
        v45 = v41;
        v44 = v39;
        *(v41 + 8) += v39;
        if ((*(v45 + 22) & 1) == 0)
        {
          *(*v45 + *(v45 + 8)) = 0;
        }

        v42 = v44;
      }

      else
      {
        result = os_trace_blob_add_slow(v41, v40, v39);
        v42 = result;
      }
    }

    return result;
  }

  if ((v19 - 9) < 2)
  {
    goto LABEL_26;
  }

  if ((v19 - 11) < 2)
  {
    goto LABEL_42;
  }

  switch(v19)
  {
    case 13:
LABEL_26:
      if (v34 == 8)
      {
        v25 = __b;
        if (!v30)
        {
          result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v25);
        }

        if (v30 == 1)
        {
          result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, v25);
        }

        if (v30 == 2)
        {
          return os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, v47, v25);
        }

        return result;
      }

      v24 = v11[v27 - 1];
      if (*(v35 + 10) != 13)
      {
        if (v34 == 4)
        {
          result = isupper(v24);
          if (result)
          {
            result = tolower(v24);
            v11[v27 - 1] = result;
          }

          else
          {
            v11[v27 - 2] = v24;
            v11[v27 - 1] = 0;
          }

LABEL_19:
          v26 = __b;
          if (!v30)
          {
            result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v26);
          }

          if (v30 == 1)
          {
            result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, v26);
          }

          if (v30 == 2)
          {
            return os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, v47, v26);
          }

          return result;
        }

        result = isupper(v24);
        if (result)
        {
          v11[v27 - 1] = 108;
          v11[v27] = 108;
          result = tolower(v24);
          v11[v27 + 1] = result;
          v11[v27 + 2] = 0;
        }

        else
        {
          v11[v27 - 2] = 108;
          v11[v27 - 1] = 108;
          v11[v27] = v24;
          v11[v27 + 1] = 0;
        }
      }

LABEL_42:
      if (!v30)
      {
        result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, __b);
      }

      if (v30 == 1)
      {
        result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, __b);
      }

      if (v30 == 2)
      {
        return os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, v47, __b);
      }

      return result;
    case 14:
      if (!v30)
      {
        result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, __b);
      }

      if (v30 == 1)
      {
        result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, __b);
      }

      if (v30 == 2)
      {
        return os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, v47, __b);
      }

      break;
    case 15:
      if (!v30)
      {
        result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, __b);
      }

      if (v30 == 1)
      {
        result = os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, __b);
      }

      if (v30 == 2)
      {
        return os_trace_blob_addf(v36, v11, v13, v14, v15, v16, v17, v18, v46, v47, __b);
      }

      break;
    default:
      if ((v19 - 16) >= 4)
      {
        return result;
      }

LABEL_70:
      result = _os_crash("Unexpected type");
      __break(1u);
      return result;
  }

  return result;
}

uint64_t _os_log_fmt_compose_data(uint64_t a1, uint64_t a2, _BYTE *a3, const char *a4, unsigned __int16 a5, char a6)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6 & 1;
  v29 = 0;
  v6 = *(a2 + 12);
  v28 = &v24;
  v7 = &v24 - ((v6 + 18) & 0x1FFF0);
  v27 = (v6 + 3);
  result = _os_log_fmt_compose_format_copy(v7, a2);
  v26 = result;
  if (*v33 >> 4 == 3)
  {
    result = os_trace_blob_add_hexdump(v35, v32, v31, v30 & 1);
    v25 = 1;
  }

  else
  {
    if (*(v34 + 10) == 18)
    {
      v7[v26 - 1] = 115;
    }

    if ((*(v34 + 8) & 2) != 0)
    {
      v15 = *(v34 + 20);
      v16 = v29++;
      v39[v16] = v15;
    }

    if (v31)
    {
      if ((*(v34 + 8) & 8) != 0)
      {
        if ((*(v34 + 8) & 4) != 0)
        {
          if ((*(v34 + 24) & 0x80000000) != 0 || *(v34 + 24) > v31)
          {
            v21 = v29++;
            v39[v21] = v31;
          }

          else
          {
            v22 = *(v34 + 24);
            v23 = v29++;
            v39[v23] = v22;
          }
        }

        else
        {
          v24 = strrchr(v7, 46);
          result = __memcpy_chk();
          v20 = v29++;
          v39[v20] = v31;
        }
      }

      else
      {
        result = __memcpy_chk();
        v19 = v29++;
        v39[v19] = v31;
      }
    }

    else
    {
      if (v30)
      {
        v17 = &unk_B3D6;
      }

      else
      {
        v17 = "(null)";
      }

      v32 = v17;
      if ((*(v34 + 8) & 4) != 0)
      {
        v18 = v29++;
        v39[v18] = 0x7FFFFFFF;
      }
    }

    if (!v29)
    {
      result = os_trace_blob_addf(v35, v7, v9, v10, v11, v12, v13, v14, v32);
    }

    if (v29 == 1)
    {
      result = os_trace_blob_addf(v35, v7, v9, v10, v11, v12, v13, v14, v39[0], v32);
    }

    if (v29 == 2)
    {
      result = os_trace_blob_addf(v35, v7, v9, v10, v11, v12, v13, v14, v39[0], v39[1], v32);
    }

    if (v30)
    {
      v38 = v35;
      v37 = "<…>";
      v36 = 0;
      return os_trace_blob_addns(v35, "<…>", 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  return result;
}

uint64_t _os_log_fmt_compose_format_copy(_BYTE *a1, void *a2)
{
  __n = *(a2 + 6);
  v3 = memchr(*a2, 125, __n);
  if (v3)
  {
    __n -= v3 - *a2;
    __memcpy_chk();
    *a1 = 37;
  }

  else
  {
    __memcpy_chk();
  }

  a1[__n] = 0;
  return __n;
}

uint64_t _os_log_fmt_builtin_annotated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, char a7)
{
  __s1 = *(a3 + 40);
  __n = *(a3 + 16);
  v11 = 0;
  v10 = 16;
  while (v11 < v10)
  {
    v9 = (v11 + v10) >> 1;
    v8 = strncmp(__s1, (&_os_log_fmt_builtin_annotated_functions)[2 * v9], __n);
    if (!v8)
    {
      v8 = -(&_os_log_fmt_builtin_annotated_functions)[2 * v9][__n];
    }

    if (!v8)
    {
      v21 = ((&_os_log_fmt_builtin_annotated_functions)[2 * v9 + 1])(a1, a2, a3, a4, a5, a6, a7 & 1) & 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      v10 = (v11 + v10) >> 1;
    }

    else
    {
      v11 = v9 + 1;
    }
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t _os_log_fmt_builtin_uuid_t(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, const unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 10) != 19)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, a5, a6, a7, a8);
    return 1;
  }

  if (a6 > 0x10uLL || a6 < 0x10uLL && (a7 & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, a5, a6, a7, a8);
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (a6 < 0x10uLL && (a7 & 1) != 0)
  {
    _os_log_fmt_decode_error(a1);
    goto LABEL_11;
  }

  v12 = 1;
LABEL_12:
  if (v12)
  {
    memset(__b, 0, sizeof(__b));
    uuid_unparse_upper(a5, __b);
    v11 = strlen(__b);
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v11 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        __memcpy_chk();
        *(a1 + 8) += v11;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, __b, v11);
      }
    }
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_timeval(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, unsigned __int16 a6, char a7)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  __src = a5;
  v14 = a6;
  v13 = a7;
  memset(__b, 0, sizeof(__b));
  if (*(v17 + 10) != 19)
  {
    _os_log_fmt_decode_cmd_mismatch(v19, v17, v16, v14, v7, v8, v9, v10);
    v20 = 1;
    return v20 & 1;
  }

  v26 = v19;
  v25 = v17;
  v24 = v16;
  v23 = v14;
  v22 = 16;
  v21 = v13 & 1;
  if (v14 > 0x10uLL || v23 < v22 && (v21 & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(v26, v25, v24, v23, v7, v8, v9, v10);
LABEL_11:
    v27 = 0;
    goto LABEL_12;
  }

  if (v23 < v22 && (v21 & 1) != 0)
  {
    _os_log_fmt_decode_error(v26);
    goto LABEL_11;
  }

  v27 = 1;
LABEL_12:
  if (v27)
  {
    memcpy(__b, __src, sizeof(__b));
    os_trace_blob_add_localtime(v19, __b[0], SLODWORD(__b[1]), 1);
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t _os_log_fmt_builtin_timespec(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, unsigned __int16 a6, char a7)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  __src = a5;
  v14 = a6;
  v13 = a7;
  memset(__b, 0, sizeof(__b));
  if (*(v17 + 10) != 19)
  {
    _os_log_fmt_decode_cmd_mismatch(v19, v17, v16, v14, v7, v8, v9, v10);
    v20 = 1;
    return v20 & 1;
  }

  v26 = v19;
  v25 = v17;
  v24 = v16;
  v23 = v14;
  v22 = 16;
  v21 = v13 & 1;
  if (v14 > 0x10uLL || v23 < v22 && (v21 & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(v26, v25, v24, v23, v7, v8, v9, v10);
LABEL_11:
    v27 = 0;
    goto LABEL_12;
  }

  if (v23 < v22 && (v21 & 1) != 0)
  {
    _os_log_fmt_decode_error(v26);
    goto LABEL_11;
  }

  v27 = 1;
LABEL_12:
  if (v27)
  {
    memcpy(__b, __src, sizeof(__b));
    os_trace_blob_add_localtime(v19, __b[0], __b[1], 0);
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t _os_log_fmt_builtin_time(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, unsigned __int16 a6, char a7)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && (a6 == 4 || a6 == 8))
  {
    __memcpy_chk();
    os_trace_blob_add_localtime(a1, 0, 0, 3);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v7, v8, v9, v10);
  }

  return 1;
}

uint64_t _os_log_fmt_spec_is_integer(uint64_t a1, char a2)
{
  if (*(a1 + 10) && *(a1 + 10) <= 0xCu)
  {
    v4 = 1;
  }

  else
  {
    v2 = 0;
    if (a2)
    {
      v2 = *(a1 + 10) == 13;
    }

    v4 = v2;
  }

  return v4 & 1;
}

uint64_t _os_log_fmt_builtin_mach_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    v18 = *a5;
    v17 = mach_error_string(*a5 & 0xFFFFC1FF);
    os_trace_blob_addf(a1, "[%#x: %s]", v10, v11, v12, v13, v14, v15, v18, v17);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v6, v7, v8, v9);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_scaled(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4, unsigned __int8 *a5, unsigned __int16 a6, void *a7)
{
  if (_os_log_fmt_spec_is_integer(a3, 0))
  {
    scalar = os_log_fmt_read_scalar(a3, a5, a6);
    v20 = 0;
    for (i = 0; ; ++i)
    {
      v17 = 0;
      if (a7[i])
      {
        v17 = 0;
        if (a7[i + 1])
        {
          v17 = scalar >= 0x3E8;
        }
      }

      if (!v17)
      {
        break;
      }

      v20 = scalar % a2;
      scalar /= a2;
    }

    v21 = round(v20 * 100.0 / a2);
    if (v21 == 100)
    {
      ++scalar;
      v21 = 0;
    }

    if (i)
    {
      if (scalar < 0xA && v21 % 0xA)
      {
        os_trace_blob_addf(a1, "%llu.%02u %s", v11, v12, v13, v14, v15, v16, scalar, v21, a7[i]);
      }

      else if (scalar < 0x64 && v21)
      {
        os_trace_blob_addf(a1, "%llu.%01u %s", v11, v12, v13, v14, v15, v16, scalar, v21 / 0xA, a7[i]);
      }

      else
      {
        os_trace_blob_addf(a1, "%llu %s", v11, v12, v13, v14, v15, v16, scalar, a7[i]);
      }
    }

    else
    {
      os_trace_blob_addf(a1, "%llu %s", v11, v12, v13, v14, v15, v16, scalar, *a7);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v7, v8, v9, v10);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_signal(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    v13 = *a5;
    if (*a5 < 0 || v13 >= 32)
    {
      os_trace_blob_addf(a1, "[%d: Unknown signal]", v6, v7, v8, v9, v10, v11, v13);
    }

    else
    {
      os_trace_blob_addf(a1, "[sig%s: %s]", v6, v7, v8, v9, v10, v11, sys_signame[v13], sys_siglist[v13]);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v8, v9, v10, v11);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_mode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    v23 = *a5;
    v29[0] = aPcDBLSW[(*a5 & 0xF000u) >> 12];
    if ((v23 & 0x100) != 0)
    {
      v10 = 114;
    }

    else
    {
      v10 = 45;
    }

    v29[1] = v10;
    if ((v23 & 0x80u) == 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = 119;
    }

    v29[2] = v11;
    if ((v23 & 0x40) != 0)
    {
      v12 = 120;
    }

    else
    {
      v12 = 45;
    }

    v30 = v12;
    if ((v23 & 0x800) != 0)
    {
      if ((v23 & 0x40) != 0)
      {
        v13 = 115;
      }

      else
      {
        v13 = 83;
      }

      v30 = v13;
    }

    if ((v23 & 0x20) != 0)
    {
      v14 = 114;
    }

    else
    {
      v14 = 45;
    }

    v31 = v14;
    if ((v23 & 0x10) != 0)
    {
      v15 = 119;
    }

    else
    {
      v15 = 45;
    }

    v32 = v15;
    if ((v23 & 8) != 0)
    {
      v16 = 120;
    }

    else
    {
      v16 = 45;
    }

    v33 = v16;
    if ((v23 & 0x400) != 0)
    {
      if ((v23 & 8) != 0)
      {
        v17 = 115;
      }

      else
      {
        v17 = 83;
      }

      v33 = v17;
    }

    if ((v23 & 4) != 0)
    {
      v18 = 114;
    }

    else
    {
      v18 = 45;
    }

    v34 = v18;
    if ((v23 & 2) != 0)
    {
      v19 = 119;
    }

    else
    {
      v19 = 45;
    }

    v35 = v19;
    if (v23)
    {
      v20 = 120;
    }

    else
    {
      v20 = 45;
    }

    v36 = v20;
    if ((v23 & 0x200) != 0)
    {
      if (v23)
      {
        v21 = 116;
      }

      else
      {
        v21 = 84;
      }

      v36 = v21;
    }

    if ((*(a1 + 20) & 2) == 0)
    {
      if (*(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8) >= 0xAuLL)
      {
        __memcpy_chk();
        *(a1 + 8) += 10;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, v29, 0xAuLL);
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v6, v7, v8, v9);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    __errnum = *a5;
    if (*a5)
    {
      v12 = strerror(__errnum);
    }

    else
    {
      v12 = "Success";
    }

    os_trace_blob_addf(a1, "[%d: %s]", v6, v7, v8, v9, v10, v11, __errnum, v12, v12);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v8, v9, v10, v11);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_BOOL(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned __int8 *a5, unsigned __int16 a6, char a7)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = a7;
  if (_os_log_fmt_spec_is_integer(a3, 1))
  {
    memset(&scalar, 0, sizeof(scalar));
    scalar = os_log_fmt_read_scalar(v23, v21, v20);
    if (**(v23 + 40) == 66)
    {
      if (scalar)
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      v37 = v25;
      v36 = v11;
      v12 = v11;
      v13 = strlen(v11);
      v40 = v25;
      v39 = v12;
      v38 = v13;
      if ((*(v25 + 20) & 2) != 0)
      {
        v41 = 0;
      }

      else
      {
        v42 = v40;
        if (v38 <= *(v42 + 12) - ((*(v42 + 22) ^ 1) & 1u) - *(v42 + 8))
        {
          __memcpy_chk();
          v44 = v40;
          v43 = v38;
          *(v40 + 8) += v38;
          if ((*(v44 + 22) & 1) == 0)
          {
            *(*v44 + *(v44 + 8)) = 0;
          }

          v41 = v43;
        }

        else
        {
          v41 = os_trace_blob_add_slow(v40, v39, v38);
        }
      }
    }

    else
    {
      if (scalar)
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }

      v28 = v25;
      __s = v14;
      v15 = v14;
      v16 = strlen(v14);
      v31 = v25;
      v30 = v15;
      v29 = v16;
      if ((*(v25 + 20) & 2) != 0)
      {
        v32 = 0;
      }

      else
      {
        v33 = v31;
        if (v29 <= *(v31 + 12) - ((*(v31 + 22) ^ 1) & 1u) - *(v31 + 8))
        {
          __memcpy_chk();
          v35 = v31;
          v34 = v29;
          *(v31 + 8) += v29;
          if ((*(v35 + 22) & 1) == 0)
          {
            *(*v35 + *(v35 + 8)) = 0;
          }

          v32 = v34;
        }

        else
        {
          v32 = os_trace_blob_add_slow(v31, v30, v29);
        }
      }
    }

    v26 = 1;
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(v25, v23, v22, v20, v7, v8, v9, v10);
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t _os_log_to_kernel(char *a1, _BYTE *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = *__error();
  v10 = 0;
  if ((MEMORY[0xFFFFFC104] & 0x2000000) != 0)
  {
    v10 = 3;
  }

  else if ((MEMORY[0xFFFFFC104] & 0x1000000) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  memset(__b, 0, sizeof(__b));
  __b[0] = &v17;
  __b[1] = 0x40000000000;
  v7[3] = (&stru_3C8 + 56);
  v8 = 1024;
  LODWORD(__b[2]) = 0;
  WORD2(__b[2]) = 0;
  BYTE6(__b[2]) = 1;
  memset(v7, 0, 0x18uLL);
  v7[0] = &v16;
  v7[1] = 0x40000000000;
  v5[3] = (&stru_3C8 + 56);
  v6 = 1024;
  LODWORD(v7[2]) = 0;
  WORD2(v7[2]) = 0;
  BYTE6(v7[2]) = 1;
  memset(v5, 0, 0x18uLL);
  v5[0] = &v15;
  v5[1] = 0x40000000000;
  v3[3] = 1024;
  v4 = 1024;
  LODWORD(v5[2]) = 0;
  WORD2(v5[2]) = 0;
  BYTE6(v5[2]) = 1;
  os_log_fmt_flatten(v12, v10, __b, v7, v5, v11);
  memset(v3, 0, 0x18uLL);
  v3[0] = &v14;
  v3[1] = 0x40000000000;
  LODWORD(v3[2]) = 0;
  WORD2(v3[2]) = 0;
  BYTE6(v3[2]) = 0;
  os_log_fmt_compose(v3, v13, 2, v10, 8, __b[0], v7[0], v7[1], v5[0], v5[1], 0);
  return log_data_as_kernel();
}

uint64_t _os_trace_realloc_typed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_realloc();
  if (!v5)
  {
    v3 = _os_assert_log();
    _os_crash(v3, v3);
    __break(1u);
  }

  return v5;
}

uint64_t _os_trace_malloc_typed(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc();
  if (!v4)
  {
    v3 = _os_assert_log();
    _os_crash(v3);
    __break(1u);
  }

  return v4;
}

void _os_log_fmt_decode_cmd_mismatch(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a4;
  os_trace_blob_addf(a1, "<decode: mismatch for [%.*s] got [", a3, a4, a5, a6, a7, a8, *(a2 + 12), *a2);
  if ((*a3 >> 4) >= 5uLL)
  {
    os_trace_blob_addf(a1, "%d", v8, v9, v10, v11, v12, v13, *a3 >> 4);
  }

  else
  {
    v25 = strlen(_cmd_type2str[*a3 >> 4]);
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v25 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        __memcpy_chk();
        *(a1 + 8) += v25;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, _cmd_type2str[*a3 >> 4], v25);
      }
    }
  }

  if ((*a3 & 2) != 0)
  {
    v24 = strlen(" public");
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v24 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        __memcpy_chk();
        *(a1 + 8) += v24;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, " public", v24);
      }
    }
  }

  if (*a3)
  {
    v23 = strlen(" private");
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v23 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        __memcpy_chk();
        *(a1 + 8) += v23;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, " private", v23);
      }
    }
  }

  os_trace_blob_addf(a1, " sz:%d]>", v14, v15, v16, v17, v18, v19, v20);
  _os_log_fmt_decode_failure();
}

void _os_log_fmt_decode_error(uint64_t a1)
{
  v1 = strlen("<decode: missing data>");
  if ((*(a1 + 20) & 2) == 0)
  {
    if (v1 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
    {
      __memcpy_chk();
      *(a1 + 8) += v1;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + *(a1 + 8)) = 0;
      }
    }

    else
    {
      os_trace_blob_add_slow(a1, "<decode: missing data>", v1);
    }
  }

  _os_log_fmt_decode_failure();
}

void _os_log_fmt_decode_masked_unknown(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a4)
  {
    case 8u:
      os_trace_blob_addf(a1, "<decode: mask %.*s is %s>", a3, a4, a5, a6, a7, a8, *(a2 + 18), *(a2 + 48), "unknown to old emitter");
      break;
    case 9u:
      os_trace_blob_addf(a1, "<decode: mask %.*s is %s>", a3, a4, a5, a6, a7, a8, *(a2 + 18), *(a2 + 48), "unknown to old reader");
      break;
    case 0xAu:
      os_trace_blob_addf(a1, "<decode: mask %.*s is %s>", a3, a4, a5, a6, a7, a8, *(a2 + 18), *(a2 + 48), "unknown");
      break;
    default:
      _os_crash("Invalid access result");
      __break(1u);
      os_trace_blob_addf(a1, "<decode: mask %.*s is %s>", v8, v9, v10, v11, v12, v13, *(a2 + 18), *(a2 + 48), 0);
      break;
  }

  _os_log_fmt_decode_failure();
}