_DWORD *xo_retain_clear_all(uint64_t a1, uint64_t a2)
{
  v2 = xo_retain(&xo_retain, a2);
  for (i = 0; i != 64; ++i)
  {
    v4 = *(v2 + 8 * i);
    if (v4)
    {
      do
      {
        v5 = *v4;
        xo_free(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(v2 + 8 * i) = 0;
  }

  result = xo_retain_count();
  *result = 0;
  return result;
}

_DWORD *xo_retain_clear(uint64_t a1, uint64_t a2)
{
  result = xo_retain(&xo_retain, a2);
  v5 = &result[2 * v4];
  while (1)
  {
    v6 = v5;
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (v5[2] == v3)
    {
      *v6 = *v5;
      result = xo_retain_count();
      --*result;
      return result;
    }
  }

  return result;
}

uint64_t xo_warn_hcv(uint64_t result, int a2, int a3, char *__s, va_list a5)
{
  v9 = result;
  v67 = *MEMORY[0x29EDCA608];
  v66 = a5;
  if (result)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (!__s)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  result = xo_default_handle();
  v9 = result;
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!__s || (*v9 & 0x10) == 0)
  {
    return result;
  }

LABEL_10:
  v10 = strlen(__s);
  v11 = v10;
  v12 = xo_program;
  if (xo_program)
  {
    v13 = strlen(xo_program);
    MEMORY[0x2A1C7C4A8](v13);
    v15 = &v64 - v14;
    bzero(&v64 - v14, v16 + 3);
    if (v13)
    {
      memcpy(v15, v12, v13);
      *&v15[v13] = 8250;
      v17 = v13 + 2;
      goto LABEL_15;
    }
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v10);
    v15 = &v64 - ((v11 + 18) & 0xFFFFFFFFFFFFFFF0);
    bzero(v15, v11 + 3);
  }

  v17 = 0;
LABEL_15:
  v18 = &v15[v17];
  memcpy(&v15[v17], __s, v11);
  v18[v11] = 0;
  if ((*v9 & 0x80) != 0)
  {
    v22 = *(v9 + 72);
    v23 = *(v9 + 80);
    if (v23 + 7 >= v22 + *(v9 + 88))
    {
      v24 = (v23 - v22 + 8198) & 0xFFFFFFFFFFFFE000;
      v25 = xo_realloc(v22, v24);
      v26 = *(v9 + 80);
      if (!v25)
      {
        goto LABEL_26;
      }

      v23 = (v25 + v26 - *(v9 + 72));
      *(v9 + 72) = v25;
      *(v9 + 80) = v23;
      *(v9 + 88) = v24;
    }

    v27 = *xo_warn_hcv_err_open;
    *(v23 + 3) = *&xo_warn_hcv_err_open[3];
    *v23 = v27;
    v26 = *(v9 + 80) + 7;
    *(v9 + 80) = v26;
LABEL_26:
    v28 = *(v9 + 72);
    if (v26 + 9 >= (v28 + *(v9 + 88)))
    {
      v29 = (v26 + 9 - v28 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v30 = xo_realloc(v28, v29);
      if (!v30)
      {
        goto LABEL_30;
      }

      v26 = v30 + *(v9 + 80) - *(v9 + 72);
      *(v9 + 72) = v30;
      *(v9 + 80) = v26;
      *(v9 + 88) = v29;
    }

    v31 = *xo_warn_hcv_msg_open;
    *(v26 + 8) = xo_warn_hcv_msg_open[8];
    *v26 = v31;
    *(v9 + 80) += 9;
LABEL_30:
    v65 = v66;
    v32 = *(v9 + 80);
    v33 = *(v9 + 72) - v32 + *(v9 + 88);
    v34 = vsnprintf(v32, v33, v15, v66);
    if (v33 <= v34)
    {
      v35 = *(v9 + 72);
      v36 = *(v9 + 80) + v34;
      if (v36 >= v35 + *(v9 + 88))
      {
        v37 = (v36 - v35 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        result = xo_realloc(v35, v37);
        if (!result)
        {
          return result;
        }

        v38 = result + *(v9 + 80) - *(v9 + 72);
        *(v9 + 72) = result;
        *(v9 + 80) = v38;
        *(v9 + 88) = v37;
      }

      v66 = v65;
      v34 = vsnprintf(*(v9 + 80), *(v9 + 88) - *(v9 + 80) + *(v9 + 72), __s, v65);
    }

    v39 = xo_escape_xml((v9 + 72), v34, 1u);
    v40 = *(v9 + 72);
    v41 = (*(v9 + 80) + v39);
    *(v9 + 80) = v41;
    if ((v41 + 10) >= v40 + *(v9 + 88))
    {
      v42 = &v41[-v40 + 8201] & 0xFFFFFFFFFFFFE000;
      v43 = xo_realloc(v40, v42);
      v44 = *(v9 + 80);
      if (!v43)
      {
        goto LABEL_39;
      }

      v41 = v44 + v43 - *(v9 + 72);
      *(v9 + 72) = v43;
      *(v9 + 80) = v41;
      *(v9 + 88) = v42;
    }

    v45 = *xo_warn_hcv_msg_close;
    *(v41 + 4) = *&xo_warn_hcv_msg_close[8];
    *v41 = v45;
    v44 = (*(v9 + 80) + 10);
    *(v9 + 80) = v44;
LABEL_39:
    v46 = *(v9 + 72);
    if ((v44 + 1) >= v46 + *(v9 + 88))
    {
      v47 = (v44 - v46 + 8199) & 0xFFFFFFFFFFFFE000;
      v48 = xo_realloc(v46, v47);
      if (!v48)
      {
        goto LABEL_43;
      }

      v44 = (v48 + *(v9 + 80) - *(v9 + 72));
      *(v9 + 72) = v48;
      *(v9 + 80) = v44;
      *(v9 + 88) = v47;
    }

    *v44 = xo_warn_hcv_err_close;
    *(v9 + 80) += 8;
LABEL_43:
    if (a2 < 0)
    {
      v50 = *(v9 + 80);
      goto LABEL_55;
    }

    v49 = strerror(a2);
    v50 = *(v9 + 80);
    if (!v49)
    {
      goto LABEL_55;
    }

    v51 = v49;
    v52 = *(v9 + 72);
    if ((v50 + 2) >= v52 + *(v9 + 88))
    {
      v53 = &v50[-v52 + 8193] & 0xFFFFFFFFFFFFE000;
      v54 = xo_realloc(v52, v53);
      v50 = *(v9 + 80);
      if (!v54)
      {
LABEL_49:
        v55 = strlen(v51);
        if (!v55)
        {
          goto LABEL_55;
        }

        v56 = v55;
        v57 = &v50[v55];
        v58 = *(v9 + 72);
        if (v57 >= v58 + *(v9 + 88))
        {
          v59 = &v57[-v58 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
          v60 = xo_realloc(v58, v59);
          v50 = *(v9 + 80);
          if (!v60)
          {
            goto LABEL_55;
          }

          v50 = &v50[v60 - *(v9 + 72)];
          *(v9 + 72) = v60;
          *(v9 + 80) = v50;
          *(v9 + 88) = v59;
        }

        memcpy(v50, v51, v56);
        v50 = (*(v9 + 80) + v56);
        *(v9 + 80) = v50;
LABEL_55:
        v61 = *(v9 + 72);
        if ((v50 + 1) >= v61 + *(v9 + 88))
        {
          v62 = &v50[-v61 + 0x2000] & 0xFFFFFFFFFFFFE000;
          v63 = xo_realloc(v61, v62);
          if (!v63)
          {
            return xo_write(v9);
          }

          v50 = (v63 + *(v9 + 80) - *(v9 + 72));
          *(v9 + 72) = v63;
          *(v9 + 80) = v50;
          *(v9 + 88) = v62;
        }

        *v50 = 10;
        ++*(v9 + 80);
        return xo_write(v9);
      }

      v50 = &v50[v54 - *(v9 + 72)];
      *(v9 + 72) = v54;
      *(v9 + 80) = v50;
      *(v9 + 88) = v53;
    }

    *v50 = 8250;
    v50 = (*(v9 + 80) + 2);
    *(v9 + 80) = v50;
    goto LABEL_49;
  }

  v19 = MEMORY[0x29EDCA610];
  vfprintf(*MEMORY[0x29EDCA610], v15, a5);
  if ((a2 & 0x80000000) == 0)
  {
    v20 = strerror(a2);
    if (v20)
    {
      fprintf(*v19, ": %s", v20);
    }
  }

  v21 = *v19;

  return fputc(10, v21);
}

uint64_t xo_warn(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = __error();
  return xo_warn_hcv(0, *v9, 0, a1, va);
}

void xo_err(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = __error();
  xo_warn_hcv(0, *v10, 0, a2, va);
  xo_finish();
  exit(a1);
}

void xo_errx(int a1, char *__s, ...)
{
  va_start(va, __s);
  xo_warn_hcv(0, -1, 0, __s, va);
  xo_finish();
  exit(a1);
}

void xo_errc(int a1, int a2, char *__s, ...)
{
  va_start(va, __s);
  xo_warn_hcv(0, a2, 0, __s, va);
  xo_finish();
  exit(a1);
}

size_t xo_message_hcv(size_t result, int a2, char *__s, va_list a4)
{
  v7 = result;
  v62 = *MEMORY[0x29EDCA608];
  v60 = a4;
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v7 = result;
  }

  if (__s && *__s)
  {
    v59 = 0;
    result = strlen(__s);
    v8 = __s[result - 1];
    v9 = *(v7 + 16);
    if (v9 > 2)
    {
      if (v9 - 4 < 2)
      {
        return result;
      }

      if (v9 != 3)
      {
        return xo_flush_h(v7);
      }

      v59 = v60;
      v10 = 1024;
      v11 = v61;
      v12 = vsnprintf(v61, 0x400uLL, __s, v60);
      v13 = v12;
      if (v12 >= 1025)
      {
        v10 = v12 + 1024;
        MEMORY[0x2A1C7C4A8](v12);
        v11 = &v58 - ((v13 + 1039) & 0xFFFFFFFFFFFFFFF0);
        bzero(v11, v13 + 1024);
        v59 = v60;
        v13 = vsnprintf(v11, v13 + 1024, __s, v60);
      }

      if (v8 != 10)
      {
        v14 = &xo_version_extra;
        v15 = v10 - v13;
        if (a2 <= 0)
        {
          v16 = &xo_version_extra;
        }

        else
        {
          v16 = ": ";
        }

        if (a2 >= 1)
        {
          v14 = strerror(a2);
        }

        v17 = snprintf(&v11[v13], v15, "%s%s\n", v16, v14);
        if (v17 >= 1)
        {
          v13 += v17;
        }
      }

      xo_buf_append_div(v7, "message", 0, 0, 0, v11, v13, 0, 0, 0, 0);
    }

    else
    {
      if (*(v7 + 16))
      {
        if (v9 != 1)
        {
          if (v9 == 2)
          {
            return result;
          }

          return xo_flush_h(v7);
        }

        if ((*v7 & 2) != 0)
        {
          xo_buf_indent(v7, *(v7 + 20));
        }

        v20 = *(v7 + 72);
        v21 = *(v7 + 80);
        if (v21 + 9 >= (v20 + *(v7 + 88)))
        {
          v22 = (v21 + 9 - v20 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
          v23 = xo_realloc(v20, v22);
          if (!v23)
          {
            goto LABEL_40;
          }

          v21 = v23 + *(v7 + 80) - *(v7 + 72);
          *(v7 + 72) = v23;
          *(v7 + 80) = v21;
          *(v7 + 88) = v22;
        }

        v24 = *xo_message_hcv_msg_open;
        *(v21 + 8) = xo_message_hcv_msg_open[8];
        *v21 = v24;
        *(v7 + 80) += 9;
LABEL_40:
        v59 = v60;
        v25 = *(v7 + 80);
        v26 = *(v7 + 72) - v25 + *(v7 + 88);
        v27 = vsnprintf(v25, v26, __s, v60);
        if (v26 <= v27)
        {
          v28 = *(v7 + 72);
          v29 = *(v7 + 80) + v27;
          if (v29 >= v28 + *(v7 + 88))
          {
            v30 = (v29 - v28 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
            result = xo_realloc(v28, v30);
            if (!result)
            {
              return result;
            }

            v31 = result + *(v7 + 80) - *(v7 + 72);
            *(v7 + 72) = result;
            *(v7 + 80) = v31;
            *(v7 + 88) = v30;
          }

          v60 = v59;
          v27 = vsnprintf(*(v7 + 80), *(v7 + 88) - *(v7 + 80) + *(v7 + 72), __s, v59);
        }

        v32 = *(v7 + 80) + xo_escape_xml((v7 + 72), v27, 0);
        *(v7 + 80) = v32;
        if (a2 < 1 || v8 == 10)
        {
          if (v8 == 10)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v33 = strerror(a2);
          if (v33)
          {
            v34 = v33;
            if (xo_buf_has_room((v7 + 72), 2))
            {
              **(v7 + 80) = 8250;
              *(v7 + 80) += 2;
            }

            v35 = strlen(v34);
            xo_buf_append((v7 + 72), v34, v35);
          }
        }

        v36 = *(v7 + 72);
        v37 = *(v7 + 80);
        if ((v37 + 1) >= v36 + *(v7 + 88))
        {
          v38 = &v37[-v36 + 0x2000] & 0xFFFFFFFFFFFFE000;
          v39 = xo_realloc(v36, v38);
          v32 = *(v7 + 80);
          if (!v39)
          {
            goto LABEL_58;
          }

          v37 = (v39 + v32 - *(v7 + 72));
          *(v7 + 72) = v39;
          *(v7 + 80) = v37;
          *(v7 + 88) = v38;
        }

        *v37 = 10;
        v32 = *(v7 + 80) + 1;
        *(v7 + 80) = v32;
LABEL_58:
        v40 = *(v7 + 72);
        if (v32 + 10 >= (v40 + *(v7 + 88)))
        {
          v41 = (v32 + 10 - v40 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
          v42 = xo_realloc(v40, v41);
          if (!v42)
          {
            goto LABEL_62;
          }

          v32 = v42 + *(v7 + 80) - *(v7 + 72);
          *(v7 + 72) = v42;
          *(v7 + 80) = v32;
          *(v7 + 88) = v41;
        }

        v43 = *xo_message_hcv_msg_close;
        *(v32 + 8) = *&xo_message_hcv_msg_close[8];
        *v32 = v43;
        *(v7 + 80) += 10;
LABEL_62:
        if ((*v7 & 2) != 0)
        {
          v44 = *(v7 + 72);
          v45 = *(v7 + 80);
          if ((v45 + 1) < v44 + *(v7 + 88))
          {
LABEL_66:
            *v45 = 10;
            ++*(v7 + 80);
            goto LABEL_67;
          }

          v46 = &v45[-v44 + 0x2000] & 0xFFFFFFFFFFFFE000;
          v47 = xo_realloc(v44, v46);
          if (v47)
          {
            v45 = (v47 + *(v7 + 80) - *(v7 + 72));
            *(v7 + 72) = v47;
            *(v7 + 80) = v45;
            *(v7 + 88) = v46;
            goto LABEL_66;
          }
        }

LABEL_67:
        xo_write(v7);
        goto LABEL_68;
      }

      v18 = xo_printf_v(v7, __s, a4);
      if (v18 >= 1)
      {
        if ((*(v7 + 2) & 0x20) != 0)
        {
          *(v7 + 376) += v18;
        }

        if ((*(v7 + 8) & 8) != 0)
        {
          *(v7 + 352) += v18;
        }
      }

      if (a2 >= 1 && v8 != 10)
      {
        v19 = strerror(a2);
        if (v19)
        {
          xo_printf(v7, ": %s", v19);
        }

        goto LABEL_52;
      }

      if (v8 != 10)
      {
LABEL_52:
        xo_printf(v7, "\n");
      }
    }

LABEL_68:
    if (*(v7 + 16) != 3)
    {
      return xo_flush_h(v7);
    }

    v48 = *(v7 + 8);
    if ((v48 & 2) == 0)
    {
      return xo_flush_h(v7);
    }

    *(v7 + 8) = v48 & 0xFFFFFFFFFFFFFFFDLL;
    v49 = *(v7 + 72);
    v50 = *(v7 + 80);
    if (v50 + 6 >= (v49 + *(v7 + 88)))
    {
      v51 = (v50 + 6 - v49 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v52 = xo_realloc(v49, v51);
      if (!v52)
      {
        goto LABEL_74;
      }

      v50 = v52 + *(v7 + 80) - *(v7 + 72);
      *(v7 + 72) = v52;
      *(v7 + 80) = v50;
      *(v7 + 88) = v51;
    }

    v53 = *xo_message_hcv_div_close;
    *(v50 + 4) = *&xo_message_hcv_div_close[4];
    *v50 = v53;
    *(v7 + 80) += 6;
LABEL_74:
    if ((*v7 & 2) != 0)
    {
      v54 = *(v7 + 72);
      v55 = *(v7 + 80);
      if ((v55 + 1) < v54 + *(v7 + 88))
      {
LABEL_78:
        *v55 = 10;
        ++*(v7 + 80);
        return xo_flush_h(v7);
      }

      v56 = &v55[-v54 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v57 = xo_realloc(v54, v56);
      if (v57)
      {
        v55 = (v57 + *(v7 + 80) - *(v7 + 72));
        *(v7 + 72) = v57;
        *(v7 + 80) = v55;
        *(v7 + 88) = v56;
        goto LABEL_78;
      }
    }

    return xo_flush_h(v7);
  }

  return result;
}

char *xo_buf_indent(void *a1, size_t __len)
{
  v2 = __len;
  if (__len <= 0)
  {
    v2 = xo_indent(a1);
  }

  v5 = a1[9];
  v4 = a1[10];
  v6 = &v4[v2];
  if (v6 >= v5 + a1[11])
  {
    v7 = &v6[-v5 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(a1[9], v7);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v4 = &result[a1[10] - a1[9]];
    a1[9] = v9;
    a1[10] = v4;
    a1[11] = v7;
  }

  result = memset(v4, 32, v2);
  a1[10] += v2;
  return result;
}

void **xo_buf_append(void **result, const void *a2, size_t a3)
{
  if (a2 && a3)
  {
    v5 = result;
    result = xo_buf_has_room(result, a3);
    if (result)
    {
      result = memcpy(v5[1], a2, a3);
      v5[1] = v5[1] + a3;
    }
  }

  return result;
}

uint64_t xo_buf_has_room(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = a1[1] + a2;
  if (v5 >= v3 + a1[2])
  {
    v6 = (v5 - v3 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(v3, v6);
    if (!result)
    {
      return result;
    }

    v8 = result + a1[1] - *a1;
    *a1 = result;
    a1[1] = v8;
    a1[2] = v6;
  }

  return 1;
}

uint64_t xo_escape_xml(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a2;
  if (a2 >= 1)
  {
    v4 = a3;
    v6 = 0;
    v7 = a1[1];
    v8 = v7;
    do
    {
      v9 = *v8;
      if (v9 == 38)
      {
        v6 += 4;
      }

      else
      {
        if (((v9 == 34) & (a3 >> 9)) != 0)
        {
          v10 = v6 + 5;
        }

        else
        {
          v10 = v6;
        }

        if (v9 == 60)
        {
          v10 = v6 + 3;
        }

        if (v9 == 62)
        {
          v6 += 3;
        }

        else
        {
          v6 = v10;
        }
      }

      ++v8;
    }

    while (v8 < v7 + a2);
    if (v6)
    {
      v11 = *a1;
      if (v7 + v6 >= *a1 + a1[2])
      {
        v12 = (v7 + v6 - v11 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v13 = xo_realloc(v11, v12);
        if (!v13)
        {
          return 0;
        }

        v7 = v13 + a1[1] - *a1;
        *a1 = v13;
        a1[1] = v7;
        a1[2] = v12;
      }

      v14 = (v7 + v3 + v6);
      v15 = (v7 + v3 - 1);
      while (1)
      {
        --v14;
        v16 = *v15;
        if (v16 == 38)
        {
          v17 = xo_xml_amp;
          goto LABEL_27;
        }

        if (v16 == 60)
        {
          break;
        }

        if (v16 == 62)
        {
          v17 = xo_xml_gt;
LABEL_27:
          v18 = strlen(v17);
          v14 = &v14[-v18 + 1];
          memcpy(v14, v17, v18);
          goto LABEL_28;
        }

        if ((v4 & 0x200) != 0)
        {
          v17 = xo_xml_quot;
          if (v16 == 34)
          {
            goto LABEL_27;
          }
        }

        *v14 = v16;
LABEL_28:
        if (v15 > v7 && v15-- != v14)
        {
          continue;
        }

        v3 += v6;
        return v3;
      }

      v17 = xo_xml_lt;
      goto LABEL_27;
    }
  }

  return v3;
}

uint64_t xo_write(void *a1)
{
  v4 = a1 + 9;
  v2 = a1[9];
  v3 = v4[1];
  if (v3 == v2)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v3 + 1 < &v2[a1[11]])
  {
    goto LABEL_5;
  }

  v5 = (v3 + 1 - v2 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  v6 = xo_realloc(v2, v5);
  if (v6)
  {
    v3 = (v6 + a1[10] - a1[9]);
    a1[9] = v6;
    a1[10] = v3;
    a1[11] = v5;
LABEL_5:
    *v3 = 0;
    ++a1[10];
  }

  a1[1] &= ~8uLL;
  a1[44] = 0;
  a1[45] = 0;
  a1[43] = 0;
  v7 = a1[3];
  if (v7)
  {
    result = v7(a1[8], a1[9]);
  }

  else
  {
    result = 0;
  }

  a1[10] = a1[9];
LABEL_11:
  a1[1] &= ~0x10uLL;
  return result;
}

uint64_t xo_buf_append_div(char *a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, uint64_t a7, const char *a8, size_t a9, char *a10, size_t a11)
{
  v11 = a8;
  v158 = a2;
  v19 = a10;
  v20 = a9;
  v161[3] = *MEMORY[0x29EDCA608];
  if (a8 && !a10)
  {
    MEMORY[0x2A1C7C4A8](a1);
    v19 = &v153 - ((a9 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v19, a9 + 1);
    memcpy(v19, v11, a9);
    v19[a9] = 0;
    if (*v19 == 37 && (v19[1] - 48) <= 9)
    {
      do
      {
        v21 = v19[2] - 48;
        ++v19;
      }

      while (v21 < 0xA);
      *v19 = 37;
    }

    a11 = strlen(v19);
  }

  if (a4 && (a3 & 0xC0) == 0x80 && (*a1 & 0x20) != 0)
  {
    v156 = a9;
    v22 = *(a1 + 25);
    v160 = a3;
    v161[0] = v22;
    v153 = a1 + 200;
    v23 = *(a1 + 7);
    if (v23)
    {
      v23(a1, *(a1 + 25), 0);
    }

    v24 = *(a1 + 18);
    *(a1 + 19) = v24;
    if (*(a1 + 20) <= 1)
    {
      v25 = xo_realloc(v24, 0x2000);
      if (!v25)
      {
        goto LABEL_17;
      }

      v26 = v25;
      v24 = (v25 + *(a1 + 19) - *(a1 + 18));
      *(a1 + 18) = v26;
      *(a1 + 19) = v24;
      *(a1 + 20) = 0x2000;
    }

    *v24 = 91;
    ++*(a1 + 19);
LABEL_17:
    xo_buf_escape(a1, a1 + 18, a4, a5, 0);
    v27 = *(a1 + 18);
    v28 = *(a1 + 19);
    v29 = v27 + *(a1 + 20);
    v30 = *a1;
    v157 = a5;
    if ((v30 & 2) != 0)
    {
      if ((v28 + 1) >= v29)
      {
        v34 = (v28 - v27 + 8195) & 0xFFFFFFFFFFFFE000;
        v35 = xo_realloc(v27, v34);
        if (!v35)
        {
          goto LABEL_27;
        }

        v28 = (v35 + *(a1 + 19) - *(a1 + 18));
        *(a1 + 18) = v35;
        *(a1 + 19) = v28;
        *(a1 + 20) = v34;
      }

      *v28 = 656424224;
      v33 = 4;
    }

    else
    {
      if (v28 + 2 >= v29)
      {
        v31 = (v28 - v27 + 8193) & 0xFFFFFFFFFFFFE000;
        v32 = xo_realloc(v27, v31);
        if (!v32)
        {
          goto LABEL_27;
        }

        v28 = (v32 + *(a1 + 19) - *(a1 + 18));
        *(a1 + 18) = v32;
        *(a1 + 19) = v28;
        *(a1 + 20) = v31;
      }

      *v28 = 10045;
      v33 = 2;
    }

    *(a1 + 19) += v33;
LABEL_27:
    xo_do_format_field(a1, a1 + 18, v19, a11, v160 & 0xFFFFFFFFFFFFF4B7 | 0x300);
    v36 = *(a1 + 18);
    v37 = *(a1 + 19);
    if ((v37 + 1) >= v36 + *(a1 + 20))
    {
      v38 = (v37 - v36 + 8193) & 0xFFFFFFFFFFFFE000;
      v39 = xo_realloc(v36, v38);
      if (!v39)
      {
LABEL_31:
        v154 = a6;
        v155 = a7;
        v40 = *(a1 + 21) + 24 * *(a1 + 44);
        v43 = *(v40 + 16);
        v41 = (v40 + 16);
        v42 = v43;
        v159 = a4;
        v44 = v11;
        if (v43)
        {
          v45 = strlen(v42);
        }

        else
        {
          v45 = 0;
        }

        v46 = *(a1 + 19) - *(a1 + 18);
        v47 = xo_realloc(v42, v46 + v45 + 1);
        if (v47)
        {
          v48 = v47;
          memcpy((v47 + v45), *(a1 + 18), v46);
          *(v48 + v46 + v45) = 0;
          *v41 = v48;
        }

        *v153 = v161[0];
        v49 = *(a1 + 7);
        if (v49)
        {
          v49(a1, *(a1 + 25), 1);
        }

        a4 = v159;
        a3 = v160;
        v11 = v44;
        a6 = v154;
        a7 = v155;
        v20 = v156;
        a5 = v157;
        goto LABEL_39;
      }

      v37 = (v39 + *(a1 + 19) - *(a1 + 18));
      *(a1 + 18) = v39;
      *(a1 + 19) = v37;
      *(a1 + 20) = v38;
    }

    *v37 = 23847;
    *(a1 + 19) += 2;
    goto LABEL_31;
  }

LABEL_39:
  if ((a3 & 8) != 0)
  {
    return xo_do_format_field(a1, 0, v19, a11, a3 | 0x800);
  }

  v157 = a5;
  xo_line_ensure_open(a1);
  if ((*a1 & 2) != 0)
  {
    xo_buf_indent(a1, *(a1 + 10));
  }

  v50 = *(a1 + 9);
  v51 = *(a1 + 10);
  if (v51 + 12 < (v50 + *(a1 + 11)))
  {
    goto LABEL_45;
  }

  v52 = (v51 + 12 - v50 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  v53 = xo_realloc(v50, v52);
  if (v53)
  {
    v51 = v53 + *(a1 + 10) - *(a1 + 9);
    *(a1 + 9) = v53;
    *(a1 + 10) = v51;
    *(a1 + 11) = v52;
LABEL_45:
    v54 = *xo_buf_append_div_div_start;
    *(v51 + 8) = *&xo_buf_append_div_div_start[8];
    *v51 = v54;
    *(a1 + 10) += 12;
  }

  v159 = a4;
  v160 = a3;
  v156 = v20;
  v55 = v158;
  v56 = strlen(v158);
  if (v158)
  {
    v57 = v56;
    if (v56)
    {
      v59 = *(a1 + 9);
      v58 = *(a1 + 10);
      if (v58 + v57 >= v59 + *(a1 + 11))
      {
        v60 = (v58 + v57 - v59 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v61 = xo_realloc(*(a1 + 9), v60);
        if (!v61)
        {
          goto LABEL_52;
        }

        v62 = v61;
        v58 = (v61 + *(a1 + 10) - *(a1 + 9));
        *(a1 + 9) = v62;
        *(a1 + 10) = v58;
        *(a1 + 11) = v60;
      }

      memcpy(v58, v55, v57);
      *(a1 + 10) += v57;
    }
  }

LABEL_52:
  v64 = *(a1 + 51);
  v63 = *(a1 + 52);
  v65 = v63 - v64;
  if (v63 == v64)
  {
    v66 = *(a1 + 10);
  }

  else
  {
    v66 = *(a1 + 10);
    if (!v64)
    {
      goto LABEL_60;
    }

    v67 = *(a1 + 9);
    if (v66 + v65 >= v67 + *(a1 + 11))
    {
      v68 = (v66 + v65 - v67 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v69 = xo_realloc(v67, v68);
      v66 = *(a1 + 10);
      if (!v69)
      {
        goto LABEL_60;
      }

      v66 = (v66 + v69 - *(a1 + 9));
      *(a1 + 9) = v69;
      *(a1 + 10) = v66;
      *(a1 + 11) = v68;
    }

    memcpy(v66, v64, v65);
    v66 = (*(a1 + 10) + v65);
    *(a1 + 10) = v66;
  }

LABEL_60:
  v71 = v159;
  if (!v159)
  {
    goto LABEL_124;
  }

  v72 = *(a1 + 9);
  if (v66 + 12 >= v72 + *(a1 + 11))
  {
    v73 = (v66 - v72 + 8203) & 0xFFFFFFFFFFFFE000;
    v74 = xo_realloc(v72, v73);
    if (!v74)
    {
      goto LABEL_65;
    }

    v66 = (v74 + *(a1 + 10) - *(a1 + 9));
    *(a1 + 9) = v74;
    *(a1 + 10) = v66;
    *(a1 + 11) = v73;
  }

  v75 = *xo_buf_append_div_div_tag;
  *(v66 + 2) = *&xo_buf_append_div_div_tag[8];
  *v66 = v75;
  *(a1 + 10) += 12;
LABEL_65:
  v76 = v157;
  xo_buf_escape(a1, a1 + 9, v71, v157, 0);
  v77 = *a1;
  if ((*a1 & 0x40000) == 0)
  {
    if ((v77 & 0x20) == 0)
    {
      goto LABEL_67;
    }

LABEL_70:
    v78 = *(a1 + 9);
    v79 = *(a1 + 10);
    if (v79 + 14 >= v78 + *(a1 + 11))
    {
      v80 = (v79 - v78 + 8205) & 0xFFFFFFFFFFFFE000;
      v81 = xo_realloc(v78, v80);
      if (!v81)
      {
LABEL_74:
        v83 = *(a1 + 26);
        if (v83)
        {
          v84 = strlen(*(a1 + 26));
          if (v84)
          {
            v85 = v84;
            v87 = *(a1 + 9);
            v86 = *(a1 + 10);
            if (v86 + v85 >= v87 + *(a1 + 11))
            {
              v88 = (v86 + v85 - v87 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
              v89 = xo_realloc(*(a1 + 9), v88);
              if (!v89)
              {
                goto LABEL_80;
              }

              v90 = v89;
              v86 = (v89 + *(a1 + 10) - *(a1 + 9));
              *(a1 + 9) = v90;
              *(a1 + 10) = v86;
              *(a1 + 11) = v88;
            }

            memcpy(v86, v83, v85);
            *(a1 + 10) += v85;
          }
        }

LABEL_80:
        v154 = a6;
        v155 = a7;
        v158 = v11;
        v91 = v160;
        if ((*(a1 + 44) & 0x80000000) == 0)
        {
          v92 = 0;
          v93 = -1;
          do
          {
            ++v93;
            v94 = *(a1 + 21);
            v95 = v94 + v92;
            if (!*(v94 + v92 + 8) || (*(v95 + 4) | 4) == 7)
            {
              goto LABEL_84;
            }

            v96 = *(a1 + 9);
            v97 = *(a1 + 10);
            if ((v97 + 1) >= v96 + *(a1 + 11))
            {
              v98 = &v97[-v96 + 0x2000] & 0xFFFFFFFFFFFFE000;
              v99 = xo_realloc(v96, v98);
              if (!v99)
              {
                goto LABEL_90;
              }

              v97 = (v99 + *(a1 + 10) - *(a1 + 9));
              *(a1 + 9) = v99;
              *(a1 + 10) = v97;
              *(a1 + 11) = v98;
            }

            *v97 = 47;
            ++*(a1 + 10);
LABEL_90:
            v100 = strlen(*(v95 + 8));
            xo_buf_escape(a1, a1 + 9, *(v95 + 8), v100, 0);
            v101 = *(v94 + v92 + 16);
            if (!v101 || v91 < 0 && v93 == *(a1 + 44))
            {
              goto LABEL_84;
            }

            v102 = strlen(v101);
            if (!v102)
            {
              goto LABEL_84;
            }

            v103 = v102;
            v105 = *(a1 + 9);
            v104 = *(a1 + 10);
            if (v104 + v103 < v105 + *(a1 + 11))
            {
              goto LABEL_97;
            }

            v106 = (v104 + v103 - v105 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
            v107 = xo_realloc(*(a1 + 9), v106);
            if (v107)
            {
              v108 = v107;
              v104 = (v107 + *(a1 + 10) - *(a1 + 9));
              *(a1 + 9) = v108;
              *(a1 + 10) = v104;
              *(a1 + 11) = v106;
LABEL_97:
              memcpy(v104, v101, v103);
              *(a1 + 10) += v103;
            }

LABEL_84:
            v92 += 24;
          }

          while (v93 < *(a1 + 44));
        }

        v109 = *(a1 + 9);
        v110 = *(a1 + 10);
        v11 = v158;
        v71 = v159;
        a6 = v154;
        a7 = v155;
        if ((v110 + 1) >= v109 + *(a1 + 11))
        {
          v111 = &v110[-v109 + 0x2000] & 0xFFFFFFFFFFFFE000;
          v112 = xo_realloc(v109, v111);
          if (!v112)
          {
            goto LABEL_102;
          }

          v110 = (v112 + *(a1 + 10) - *(a1 + 9));
          *(a1 + 9) = v112;
          *(a1 + 10) = v110;
          *(a1 + 11) = v111;
        }

        *v110 = 47;
        ++*(a1 + 10);
LABEL_102:
        v76 = v157;
        xo_buf_escape(a1, a1 + 9, v71, v157, 0);
        if ((*a1 & 0x40) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_103;
      }

      v79 = (v81 + *(a1 + 10) - *(a1 + 9));
      *(a1 + 9) = v81;
      *(a1 + 10) = v79;
      *(a1 + 11) = v80;
    }

    v82 = *xo_buf_append_div_div_xpath;
    *(v79 + 6) = *&xo_buf_append_div_div_xpath[6];
    *v79 = v82;
    *(a1 + 10) += 14;
    goto LABEL_74;
  }

  *(a1 + 1) |= 0x10uLL;
  *(a1 + 46) = *(a1 + 10) - *(a1 + 9) + 1;
  if ((v77 & 0x20) != 0)
  {
    goto LABEL_70;
  }

LABEL_67:
  if ((v77 & 0x40) == 0)
  {
    goto LABEL_117;
  }

LABEL_103:
  if (*(a1 + 23))
  {
    v113 = xo_info_find(a1, v71, v76);
    if (v113)
    {
      v114 = v113;
      if (!v113[1])
      {
        goto LABEL_111;
      }

      v115 = *(a1 + 9);
      v116 = *(a1 + 10);
      if (v116 + 13 >= v115 + *(a1 + 11))
      {
        v117 = (v116 - v115 + 8204) & 0xFFFFFFFFFFFFE000;
        v118 = xo_realloc(v115, v117);
        if (!v118)
        {
LABEL_110:
          v120 = strlen(v114[1]);
          xo_buf_escape(a1, a1 + 9, v114[1], v120, 0);
LABEL_111:
          if (!v114[2])
          {
            goto LABEL_117;
          }

          v121 = *(a1 + 9);
          v122 = *(a1 + 10);
          if (v122 + 13 >= v121 + *(a1 + 11))
          {
            v123 = (v122 - v121 + 8204) & 0xFFFFFFFFFFFFE000;
            v124 = xo_realloc(v121, v123);
            if (!v124)
            {
LABEL_116:
              v126 = strlen(v114[2]);
              xo_buf_escape(a1, a1 + 9, v114[2], v126, 0);
              goto LABEL_117;
            }

            v122 = (v124 + *(a1 + 10) - *(a1 + 9));
            *(a1 + 9) = v124;
            *(a1 + 10) = v122;
            *(a1 + 11) = v123;
          }

          v125 = *xo_buf_append_div_in_help;
          *(v122 + 5) = *&xo_buf_append_div_in_help[5];
          *v122 = v125;
          *(a1 + 10) += 13;
          goto LABEL_116;
        }

        v116 = (v118 + *(a1 + 10) - *(a1 + 9));
        *(a1 + 9) = v118;
        *(a1 + 10) = v116;
        *(a1 + 11) = v117;
      }

      v119 = *xo_buf_append_div_in_type;
      *(v116 + 5) = *&xo_buf_append_div_in_type[5];
      *v116 = v119;
      *(a1 + 10) += 13;
      goto LABEL_110;
    }
  }

LABEL_117:
  if ((v160 & 0x80) == 0)
  {
    v66 = *(a1 + 10);
    goto LABEL_124;
  }

  v66 = *(a1 + 10);
  if ((a1[1] & 8) != 0)
  {
    v127 = *(a1 + 9);
    if (v66 + 15 >= v127 + *(a1 + 11))
    {
      v128 = (v66 - v127 + 8206) & 0xFFFFFFFFFFFFE000;
      v129 = xo_realloc(v127, v128);
      v66 = *(a1 + 10);
      if (!v129)
      {
        goto LABEL_124;
      }

      v66 = (v66 + v129 - *(a1 + 9));
      *(a1 + 9) = v129;
      *(a1 + 10) = v66;
      *(a1 + 11) = v128;
    }

    v130 = *xo_buf_append_div_div_key;
    *(v66 + 7) = *&xo_buf_append_div_div_key[7];
    *v66 = v130;
    v66 = (*(a1 + 10) + 15);
    *(a1 + 10) = v66;
  }

LABEL_124:
  v131 = *(a1 + 9);
  v132 = v66;
  if (v66 + 2 >= v131 + *(a1 + 11))
  {
    v133 = xo_realloc(*(a1 + 9), (v66 - v131 + 8193) & 0xFFFFFFFFFFFFE000);
    v134 = *(a1 + 10);
    if (!v133)
    {
      goto LABEL_128;
    }

    v132 = (v133 + v134 - *(a1 + 9));
    *(a1 + 9) = v133;
    *(a1 + 10) = v132;
    *(a1 + 11) = (v66 - v131 + 8193) & 0xFFFFFFFFFFFFE000;
  }

  *v132 = *xo_buf_append_div_div_end;
  v134 = *(a1 + 10) + 2;
  *(a1 + 10) = v134;
LABEL_128:
  v135 = v134 - *(a1 + 9);
  v136 = *(a1 + 47);
  v161[0] = v135;
  v161[1] = v136;
  v161[2] = *(a1 + 44);
  if (a7)
  {
    v137 = a6;
    v138 = v160;
    appended = xo_data_append_content(a1, v137, a7, v160);
  }

  else
  {
    v138 = v160;
    appended = xo_do_format_field(a1, 0, v11, v156, v160);
  }

  v140 = *(a1 + 10);
  if ((v138 & 0x8000) != 0)
  {
    v141 = (v135 + *(a1 + 9));
    v142 = v140 - v141;
    MEMORY[0x2A1C7C4A8](appended);
    v144 = &v153 - v143;
    bzero(&v153 - v143, v142 + 1);
    memcpy(v144, v141, v142);
    v144[v142] = 0;
    xo_format_humanize(a1, a1 + 9, v161, v138);
    v145 = *(a1 + 9);
    v146 = *(a1 + 10);
    v147 = v146 + v142 + 15;
    if (v147 >= v145 + *(a1 + 11))
    {
      v148 = (v147 - v145 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v145 = xo_realloc(v145, v148);
      v140 = *(a1 + 10);
      if (!v145)
      {
        goto LABEL_136;
      }

      v146 = v145 + v140 - *(a1 + 9);
      *(a1 + 9) = v145;
      *(a1 + 10) = v146;
      *(a1 + 11) = v148;
    }

    memmove(v66 + v145 - v131 + v142 + 15, v66 + v145 - v131, v146 - (v66 + v145 - v131));
    qmemcpy(v66 + *(a1 + 9) - v131, " data-number=", 15);
    memcpy(v66 + *(a1 + 9) - v131 + 15, v144, v142);
    v140 = *(a1 + 10) + v142 + 15;
    *(a1 + 10) = v140;
  }

LABEL_136:
  result = *(a1 + 9);
  if (v140 + 6 >= (result + *(a1 + 11)))
  {
    v149 = (v140 + 6 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v149);
    if (!result)
    {
      goto LABEL_140;
    }

    v140 = result + *(a1 + 10) - *(a1 + 9);
    *(a1 + 9) = result;
    *(a1 + 10) = v140;
    *(a1 + 11) = v149;
  }

  v150 = *xo_buf_append_div_div_close;
  *(v140 + 4) = *&xo_buf_append_div_div_close[4];
  *v140 = v150;
  *(a1 + 10) += 6;
LABEL_140:
  if ((*a1 & 2) == 0)
  {
    return result;
  }

  result = *(a1 + 9);
  v151 = *(a1 + 10);
  if ((v151 + 1) >= result + *(a1 + 11))
  {
    v152 = &v151[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v152);
    if (!result)
    {
      return result;
    }

    v151 = (result + *(a1 + 10) - *(a1 + 9));
    *(a1 + 9) = result;
    *(a1 + 10) = v151;
    *(a1 + 11) = v152;
  }

  *v151 = 10;
  ++*(a1 + 10);
  return result;
}

uint64_t xo_printf_v(uint64_t a1, char *__format, va_list a3)
{
  v5 = *(a1 + 72) - *(a1 + 80) + *(a1 + 88);
  result = vsnprintf(*(a1 + 80), v5, __format, a3);
  if (v5 <= result)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80) + result;
    if (v8 >= v7 + *(a1 + 88))
    {
      v9 = (v8 - v7 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v10 = xo_realloc(*(a1 + 72), v9);
      if (!v10)
      {
        return -1;
      }

      v11 = v10 + *(a1 + 80) - *(a1 + 72);
      *(a1 + 72) = v10;
      *(a1 + 80) = v11;
      *(a1 + 88) = v9;
    }

    result = vsnprintf(*(a1 + 80), *(a1 + 88) - *(a1 + 80) + *(a1 + 72), __format, a3);
  }

  if (result >= 1)
  {
    *(a1 + 80) += result;
  }

  return result;
}

uint64_t xo_flush_h(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v1 = xo_default_handle();
  }

  if (*(v1 + 16) == 5)
  {
    xo_encoder_handle(v1, 13, 0, 0, 0);
  }

  v2 = xo_write(v1);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      if ((v3(*(v1 + 64)) & 0x80000000) != 0)
      {
        return -1;
      }
    }
  }

  return v2;
}

size_t xo_message_e(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = __error();
  return xo_message_hcv(0, *v9, a1, va);
}

_BYTE *xo_failure(_BYTE *result, char *__s, ...)
{
  va_start(va, __s);
  if ((*result & 0x10) != 0)
  {
    return xo_warn_hcv(result, -1, 1, __s, va);
  }

  return result;
}

uint64_t xo_create(__int16 a1, uint64_t a2)
{
  v4 = xo_realloc(0, 472);
  v5 = v4;
  if (v4)
  {
    *(v4 + 464) = 0;
    *(v4 + 432) = 0u;
    *(v4 + 448) = 0u;
    *(v4 + 400) = 0u;
    *(v4 + 416) = 0u;
    *(v4 + 368) = 0u;
    *(v4 + 384) = 0u;
    *(v4 + 336) = 0u;
    *(v4 + 352) = 0u;
    *(v4 + 304) = 0u;
    *(v4 + 320) = 0u;
    *(v4 + 272) = 0u;
    *(v4 + 288) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 224) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *(v4 + 16) = a1;
    *v4 = a2;
    xo_init_handle(v4);
    *(v5 + 16) = a1;
  }

  return v5;
}

uint64_t xo_init_handle(uint64_t a1)
{
  v2 = *MEMORY[0x29EDCA620];
  *(a1 + 64) = *MEMORY[0x29EDCA620];
  *(a1 + 24) = xo_write_to_file;
  *(a1 + 40) = xo_flush_file;
  v3 = fileno(v2);
  if (isatty(v3))
  {
    *a1 |= 0x800000uLL;
  }

  if ((xo_locale_inited & 1) == 0)
  {
    xo_locale_inited = 1;
    v4 = getenv("LC_ALL");
    if (!v4)
    {
      v4 = getenv("LC_CTYPE");
      if (!v4)
      {
        v4 = getenv("LANG");
      }
    }

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = "C";
    }

    setlocale(2, v5);
  }

  *(a1 + 88) = 0x2000;
  v6 = xo_realloc(0, 0x2000);
  *(a1 + 72) = v6;
  *(a1 + 80) = v6;
  *(a1 + 112) = 0x2000;
  result = xo_realloc(0, 0x2000);
  *(a1 + 96) = result;
  *(a1 + 104) = result;
  v8 = *(a1 + 8);
  if ((v8 & 0x20) == 0)
  {
    *(a1 + 8) = v8 | 0x20;
    *(a1 + 20) = 2;
    result = xo_depth_check(a1, 128);
    *(a1 + 8) &= ~0x20uLL;
  }

  return result;
}

void *xo_create_to_file(uint64_t a1, __int16 a2, uint64_t a3)
{
  result = xo_create(a2, a3);
  if (result)
  {
    result[8] = a1;
    result[3] = xo_write_to_file;
    result[4] = xo_close_file;
    result[5] = xo_flush_file;
  }

  return result;
}

uint64_t xo_set_file_h(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    xo_failure(a1, "xo_set_file: NULL fp");
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = 0;
  *(a1 + 64) = a2;
  *(a1 + 24) = xo_write_to_file;
  *(a1 + 32) = xo_close_file;
  *(a1 + 40) = xo_flush_file;
  return v3;
}

_DWORD *xo_destroy(uint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v2 = xo_default_handle();
  }

  xo_flush_h(v2);
  v3 = *(v2 + 32);
  if (v3 && (*v2 & 1) != 0)
  {
    v3(*(v2 + 64));
  }

  xo_free(*(v2 + 168));
  v4 = *(v2 + 72);
  if (v4)
  {
    xo_free(v4);
  }

  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  v5 = *(v2 + 96);
  if (v5)
  {
    xo_free(v5);
  }

  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  v6 = *(v2 + 144);
  if (v6)
  {
    xo_free(v6);
  }

  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  v7 = *(v2 + 120);
  if (v7)
  {
    xo_free(v7);
  }

  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  v8 = *(v2 + 408);
  if (v8)
  {
    xo_free(v8);
  }

  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  *(v2 + 424) = 0;
  v9 = *(v2 + 432);
  if (v9)
  {
    xo_free(v9);
  }

  if (a1)
  {
    v10 = xo_free;

    return v10(v2);
  }

  else
  {
    v12 = xo_default_handle();
    *(v12 + 464) = 0;
    *(v12 + 432) = 0u;
    *(v12 + 448) = 0u;
    *(v12 + 400) = 0u;
    *(v12 + 416) = 0u;
    *(v12 + 368) = 0u;
    *(v12 + 384) = 0u;
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
    *(v12 + 304) = 0u;
    *(v12 + 320) = 0u;
    *(v12 + 272) = 0u;
    *(v12 + 288) = 0u;
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    result = xo_default_inited();
    *result = 0;
  }

  return result;
}

uint64_t xo_set_style(uint64_t result, __int16 a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 16) = a2;
  return result;
}

uint64_t xo_get_style(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *(a1 + 16);
}

uint64_t xo_set_style_name(uint64_t a1, const char *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = xo_name_to_style(a2);
  if (v3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  result = 0;
  *(a1 + 16) = v4;
  return result;
}

uint64_t xo_name_to_style(const char *a1)
{
  if (!strcmp(a1, "xml"))
  {
    return 1;
  }

  if (!strcmp(a1, "json"))
  {
    return 2;
  }

  if (!strcmp(a1, "encoder"))
  {
    return 5;
  }

  result = strcmp(a1, "text");
  if (result)
  {
    if (!strcmp(a1, "html"))
    {
      return 3;
    }

    else if (!strcmp(a1, "sdparams"))
    {
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t xo_set_options(uint64_t a1, char *__s)
{
  v2 = __s;
  v24[1] = *MEMORY[0x29EDCA608];
  if (!__s)
  {
    return v2;
  }

  v3 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  if (*v2 == 58)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v4 = v2;
                v6 = *++v2;
                v5 = v6;
                if (v6 <= 87)
                {
                  break;
                }

                if (v5 <= 104)
                {
                  if (v5 > 101)
                  {
                    if (v5 == 102)
                    {
                      *v3 |= 0x400000uLL;
                    }

                    else if (v5 == 103)
                    {
                      *v3 |= 0x10000000uLL;
                    }
                  }

                  else if (v5 == 88)
                  {
                    *(v3 + 16) = 1;
                  }

                  else if (v5 == 99)
                  {
                    *v3 |= 0x2000000uLL;
                  }
                }

                else if (v5 <= 109)
                {
                  if (v5 == 105)
                  {
                    v7 = strspn((v4 + 2), "0123456789");
                    if (v7 >= 1)
                    {
                      v8 = v7;
                      *(v3 + 20) = atoi((v4 + 2));
                      v2 = v4 + v8;
                    }
                  }

                  else if (v5 == 107)
                  {
                    *v3 |= 0x800uLL;
                  }
                }

                else
                {
                  switch(v5)
                  {
                    case 'n':
                      *v3 |= 0x8000000uLL;
                      break;
                    case 'u':
                      *v3 |= 0x100000uLL;
                      break;
                    case 'x':
                      *v3 |= 0x20uLL;
                      break;
                  }
                }
              }

              if (v5 <= 79)
              {
                break;
              }

              if (v5 > 84)
              {
                if (v5 == 85)
                {
                  *v3 |= 0x40000uLL;
                }

                else if (v5 == 87)
                {
                  *v3 |= 0x10uLL;
                }
              }

              else if (v5 == 80)
              {
                *v3 |= 2uLL;
              }

              else if (v5 == 84)
              {
                *(v3 + 16) = 0;
              }
            }

            if (v5 <= 72)
            {
              break;
            }

            if (v5 == 73)
            {
              *v3 |= 0x40uLL;
            }

            else if (v5 == 74)
            {
              *(v3 + 16) = 2;
            }
          }

          if (v5 != 70)
          {
            break;
          }

          *v3 |= 0x800000uLL;
        }

        if (v5 != 72)
        {
          break;
        }

        *(v3 + 16) = 3;
      }
    }

    while (v5);
    return 0;
  }

  v9 = strlen(v2);
  v10 = v9 + 1;
  v11 = v24 - ((MEMORY[0x2A1C7C4A8](v9) + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  memcpy(v11, v2, v10);
  v12 = &v11[v10 - 1];
  if (v11 >= v12)
  {
    return 0;
  }

  v2 = 0;
  v13 = -1;
  do
  {
    v14 = strchr(v11, 44);
    v15 = v14;
    if (v14)
    {
      *v14 = 0;
      v15 = v14 + 1;
    }

    if (*v11 == 64)
    {
      v17 = v11[1];
      v16 = (v11 + 1);
      if (!v17)
      {
        goto LABEL_88;
      }

      v2 = xo_encoder_init(v3, v16);
      if (!v2)
      {
        goto LABEL_89;
      }

LABEL_58:
      xo_warnx("error initializing encoder: %s");
LABEL_66:
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    v18 = strchr(v11, 61);
    v19 = v18;
    if (v18)
    {
      *v18 = 0;
      v19 = v18 + 1;
    }

    if (!strcmp("colors", v11))
    {
      xo_set_color_map(v3, v19);
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    v20 = xo_name_to_style(v11);
    if ((v20 & 0x80000000) == 0 && v20 != 5)
    {
      if (v13 < 0)
      {
        v13 = v20;
        if (!v15)
        {
          break;
        }

        goto LABEL_90;
      }

      xo_warnx("ignoring multiple styles: '%s'");
      goto LABEL_66;
    }

    v21 = xo_name_lookup(xo_xof_names, v11, 0xFFFFFFFFFFFFFFFFLL);
    if (v21)
    {
      v22 = *v3 | v21;
      goto LABEL_72;
    }

    if (!strcmp(v11, "no-color"))
    {
      v22 = *v3 & 0xFFFFFFFFFDFFFFFFLL;
LABEL_72:
      *v3 = v22;
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    if (strcmp(v11, "indent"))
    {
      if (strcmp(v11, "encoder"))
      {
        xo_warnx("unknown libxo option value: '%s'", v11);
        v2 = 0xFFFFFFFFLL;
        if (!v15)
        {
          break;
        }

        goto LABEL_90;
      }

      if (!v19)
      {
LABEL_88:
        xo_failure(v3, "missing value for encoder option");
LABEL_89:
        if (!v15)
        {
          break;
        }

        goto LABEL_90;
      }

      v2 = xo_encoder_init(v3, v19);
      if (!v2)
      {
        goto LABEL_89;
      }

      goto LABEL_58;
    }

    if (v19)
    {
      *(v3 + 20) = atoi(v19);
      if (!v15)
      {
        break;
      }

      goto LABEL_90;
    }

    xo_failure(v3, "missing value for indent option");
    if (!v15)
    {
      break;
    }

LABEL_90:
    v11 = v15;
  }

  while (v15 < v12);
  if (v13 >= 1)
  {
    *(v3 + 16) = v13;
  }

  return v2;
}

uint64_t xo_set_color_map(uint64_t result, char *__s)
{
  v2 = __s;
  v3 = result;
  if (__s)
  {
    result = strlen(__s);
    v4 = result + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = &v2[v4 - 1];
  v6 = 1;
  v7 = 385;
  while (v2)
  {
    v8 = v2;
    if (!*v2 || v2 >= v5)
    {
      break;
    }

    v10 = strchr(v2, 43);
    v2 = v10;
    if (v10)
    {
      *v10 = 0;
      v2 = v10 + 1;
    }

    result = strchr(v8, 47);
    v11 = result;
    if (result)
    {
      *result = 0;
      v11 = (result + 1);
    }

    if (*v8)
    {
      v12 = 0;
      while (1)
      {
        result = strcmp(xo_color_names[v12], v8);
        if (!result)
        {
          break;
        }

        if (++v12 == 9)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      LODWORD(v12) = -1;
    }

    LOBYTE(v13) = v6;
    if (v11)
    {
      LOBYTE(v13) = v6;
      if (*v11)
      {
        v13 = 0;
        while (1)
        {
          result = strcmp(xo_color_names[v13], v11);
          if (!result)
          {
            break;
          }

          if (++v13 == 9)
          {
            LOBYTE(v13) = v6;
            break;
          }
        }
      }
    }

    if (v12 >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v6;
    }

    *(v3 + v6 + 384) = v14;
    *(v3 + v6++ + 393) = v13;
    ++v7;
    if (v6 == 10)
    {
      *v3 |= 0x100000000uLL;
      return result;
    }
  }

  v15 = *v3;
  if (v6 <= 1)
  {
    *v3 = v15 & 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    *v3 = v15 | 0x100000000;
    if (v6 > 8)
    {
      return result;
    }
  }

  do
  {
    v16 = v3 + v7;
    v16[9] = v7 + 0x80;
    *v16 = v7++ + 0x80;
  }

  while (v7 != 393);
  return result;
}

void *xo_set_flags(void *result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *result |= a2;
  return result;
}

uint64_t xo_get_flags(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *a1;
}

_BYTE *xo_set_leading_xpath(uint64_t a1, char *__s)
{
  v3 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  result = *(v3 + 208);
  if (result)
  {
    result = xo_free(result);
    *(v3 + 208) = 0;
  }

  if (__s)
  {
    result = xo_strndup(__s, 0xFFFFFFFFFFFFFFFFLL);
    *(v3 + 208) = result;
  }

  return result;
}

_BYTE *xo_strndup(char *__s, size_t a2)
{
  v2 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v2 = strlen(__s);
  }

  v4 = xo_realloc(0, v2 + 1);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, __s, v2);
    v5[v2] = 0;
  }

  return v5;
}

uint64_t xo_set_info(uint64_t result, void *a2, int a3)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  if (a2 && a3 < 0)
  {
    if (*a2)
    {
      a3 = 0;
      v5 = a2 + 3;
      do
      {
        ++a3;
        v6 = *v5;
        v5 += 3;
      }

      while (v6);
    }

    else
    {
      a3 = 0;
    }
  }

  *(result + 184) = a2;
  *(result + 192) = a3;
  return result;
}

uint64_t xo_set_formatter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

void *xo_clear_flags(void *result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *result &= ~a2;
  return result;
}

uint64_t xo_simplify_format(uint64_t a1, unsigned __int8 *a2, int a3, void (*a4)(uint64_t, void, void))
{
  v7 = a1;
  v61 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v7 = xo_default_handle();
  }

  *(v7 + 376) = 0;
  v8 = __error();
  *(v7 + 440) = *v8;
  v9 = 1;
  for (i = a2; ; ++i)
  {
    v11 = *i;
    if (v11 != 10 && v11 != 123)
    {
      break;
    }

    ++v9;
LABEL_11:
    ;
  }

  if (*i)
  {
    goto LABEL_11;
  }

  v12 = (2 * v9) | 1;
  MEMORY[0x2A1C7C4A8](v8);
  v14 = &__str[-(v12 * v13) - 4];
  bzero(v14, v15);
  if (!xo_parse_fields(v7, v14, v12, a2))
  {
    v18 = xo_realloc(0, 0x2000);
    v17 = v18;
    if (a3)
    {
      v19 = 0;
      v20 = 0;
      for (j = v14 + 88; ; j += 24)
      {
        v22 = *(j - 20);
        if (v22 > 70)
        {
          if (v22 == 71 || v22 == 123)
          {
            continue;
          }
        }

        else
        {
          if (v22 == 10 || v22 == 43)
          {
            continue;
          }

          if (!v22)
          {
            break;
          }
        }

        if (++v19 > 0x3E)
        {
          break;
        }

        if (*j)
        {
          v20 |= 1 << *j;
        }
      }

      v23 = 0;
      for (k = v14; ; k += 96)
      {
        v25 = *(k + 2);
        if (v25 > 70)
        {
          if (v25 == 71 || v25 == 123)
          {
            continue;
          }
        }

        else
        {
          if (v25 == 10 || v25 == 43)
          {
            continue;
          }

          if (!v25)
          {
            break;
          }
        }

        if (!*(k + 22))
        {
          do
          {
            ++v23;
          }

          while (((1 << v23) & v20) != 0);
          if (v23 > v19)
          {
            break;
          }

          *(k + 22) = v23;
          v20 |= 1 << v23;
        }
      }
    }

    v26 = *(v14 + 2);
    if (!v26)
    {
      v28 = 0x2000;
      v29 = v18;
LABEL_102:
      if ((v29 + 1) >= v17 + v28)
      {
        v57 = xo_realloc(v17, &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000);
        if (!v57)
        {
          return v17;
        }

        v29 = &v29[v57 - v17];
        v17 = v57;
      }

      *v29 = 0;
      return v17;
    }

    v27 = (v14 + 64);
    v28 = 0x2000;
    v29 = v18;
    while (1)
    {
      v30 = *(v27 - 8);
      if ((v30 & 0x80000) != 0)
      {
        if (a4)
        {
          if (v26 != 86)
          {
            v31 = *(v27 - 5);
            if (v31)
            {
              a4(v31, *v27, (v30 >> 20) & 1);
            }
          }
        }
      }

      if (v26 > 70)
      {
        break;
      }

      if (v26 != 10)
      {
        if (v26 == 43)
        {
          v32 = *(v27 - 5);
          if (!v32)
          {
            goto LABEL_97;
          }

          v33 = *v27;
          if (!*v27)
          {
            goto LABEL_97;
          }

          if (&v29[v33] >= v17 + v28)
          {
            v34 = &v29[v33 - v17 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
            v35 = xo_realloc(v17, v34);
            if (!v35)
            {
              goto LABEL_97;
            }

            v29 = &v29[v35 - v17];
            v17 = v35;
            v28 = v34;
          }

          memcpy(v29, v32, v33);
          goto LABEL_96;
        }

        goto LABEL_62;
      }

      if ((v29 + 1) < v17 + v28)
      {
        goto LABEL_94;
      }

      v55 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v56 = xo_realloc(v17, v55);
      if (v56)
      {
        v29 = &v29[v56 - v17];
        v17 = v56;
        v28 = v55;
LABEL_94:
        v54 = 10;
LABEL_95:
        *v29 = v54;
        v33 = 1;
LABEL_96:
        v29 += v33;
      }

LABEL_97:
      v26 = v27[10];
      v27 += 24;
      if (!v26)
      {
        goto LABEL_102;
      }
    }

    if (v26 == 71)
    {
      goto LABEL_97;
    }

    if (v26 == 123)
    {
      if ((v29 + 1) >= v17 + v28)
      {
        v36 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
        v37 = xo_realloc(v17, v36);
        if (!v37)
        {
LABEL_81:
          v48 = *(v27 - 5);
          if (v48)
          {
            v49 = *v27;
            if (*v27)
            {
              if (&v29[v49] < v17 + v28)
              {
LABEL_86:
                memcpy(v29, v48, v49);
                v29 += v49;
                goto LABEL_87;
              }

              v50 = &v29[v49 - v17 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
              v51 = xo_realloc(v17, v50);
              if (v51)
              {
                v29 = &v29[v51 - v17];
                v17 = v51;
                v28 = v50;
                goto LABEL_86;
              }
            }
          }

LABEL_87:
          if ((v29 + 1) < v17 + v28)
          {
            goto LABEL_90;
          }

          v52 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
          v53 = xo_realloc(v17, v52);
          if (v53)
          {
            v29 = &v29[v53 - v17];
            v17 = v53;
            v28 = v52;
LABEL_90:
            v54 = 125;
            goto LABEL_95;
          }

          goto LABEL_97;
        }

        v29 = &v29[v37 - v17];
        v17 = v37;
        v28 = v36;
      }

      *v29++ = 123;
      goto LABEL_81;
    }

LABEL_62:
    if ((v29 + 1) >= v17 + v28)
    {
      v38 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v39 = xo_realloc(v17, v38);
      if (!v39)
      {
        goto LABEL_66;
      }

      v29 = &v29[v39 - v17];
      v17 = v39;
      v28 = v38;
    }

    *v29++ = 123;
LABEL_66:
    if (v26 != 86)
    {
      if ((v29 + 1) < v17 + v28)
      {
LABEL_70:
        *v29++ = v26;
        goto LABEL_71;
      }

      v40 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v41 = xo_realloc(v17, v40);
      if (v41)
      {
        v29 = &v29[v41 - v17];
        v17 = v41;
        v28 = v40;
        goto LABEL_70;
      }
    }

LABEL_71:
    if (v27[6])
    {
      snprintf(__str, 0xCuLL, "%u", v27[6]);
      v42 = strlen(__str);
      if (v42)
      {
        v43 = v42;
        if (&v29[v42] >= v17 + v28)
        {
          v44 = &v29[v42 - v17 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
          v45 = xo_realloc(v17, v44);
          if (!v45)
          {
            goto LABEL_77;
          }

          v29 = &v29[v45 - v17];
          v17 = v45;
          v28 = v44;
        }

        memcpy(v29, __str, v43);
        v29 += v43;
      }
    }

LABEL_77:
    if ((v29 + 1) >= v17 + v28)
    {
      v46 = &v29[-v17 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v47 = xo_realloc(v17, v46);
      if (!v47)
      {
        goto LABEL_81;
      }

      v29 = &v29[v47 - v17];
      v17 = v47;
      v28 = v46;
    }

    *v29++ = 58;
    goto LABEL_81;
  }

  return 0;
}

uint64_t xo_parse_fields(_BYTE *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (*a4)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = a2;
  v13 = a4;
  while (2)
  {
    v14 = v11;
    *(v12 + 16) = v13;
    v15 = *v13;
    if (v15 == 10)
    {
      *(v12 + 8) = 10;
      *(v12 + 56) = 1;
      ++v13;
      goto LABEL_23;
    }

    if (v15 != 123)
    {
      v19 = 0;
      while (v15 && v15 != 10 && v15 != 123)
      {
        LOBYTE(v15) = v13[++v19];
      }

      *(v12 + 8) = 43;
      *(v12 + 24) = v13;
      *(v12 + 64) = v19;
      v13 += v19;
      *(v12 + 48) = v13;
      goto LABEL_23;
    }

    v16 = v13[1];
    *(v12 + 16) = v13 + 1;
    if (v16 == 123)
    {
      *(v12 + 8) = 123;
      for (i = 2; ; ++i)
      {
        if (v13[i] == 125)
        {
          v18 = &v13[i];
          if (v13[i + 1] == 125)
          {
            *(v12 + 56) = i;
            if (*v18 == 125)
            {
              v18 = &v13[2 * (v18[1] == 125) + i];
            }

            *(v12 + 48) = v18;
            v13 = v18;
            goto LABEL_23;
          }
        }

        else if (!v13[i])
        {
          xo_printable(a4);
          xo_failure(a1, "missing closing '}}': '%s'");
          return 0xFFFFFFFFLL;
        }
      }
    }

    v21 = xo_parse_roles(a1, a4, v13 + 1, v12);
    if (!v21)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(v12 + 88))
    {
      v10 = 1;
    }

    if (*v21 != 58)
    {
      xo_printable(a4);
      xo_failure(a1, "missing content (':'): '%s'");
      return 0xFFFFFFFFLL;
    }

    for (j = 1; ; ++j)
    {
      v23 = v21[j];
      if (v23 <= 0x5B)
      {
        break;
      }

      if (v23 == 92)
      {
        if (!v21[++j])
        {
LABEL_80:
          xo_failure(a1, "backslash at the end of string");
          return 0xFFFFFFFFLL;
        }
      }

      else if (v23 == 125)
      {
        goto LABEL_43;
      }

LABEL_42:
      ;
    }

    if (v21[j] && v23 != 47)
    {
      goto LABEL_42;
    }

LABEL_43:
    v24 = &v21[j];
    v25 = j - 1;
    if (v25)
    {
      *(v12 + 64) = v25;
      *(v12 + 24) = v21 + 1;
      v23 = *v24;
    }

    if (v23 != 47)
    {
      v28 = 0;
      v26 = 0;
      goto LABEL_66;
    }

    v26 = ++v24;
    while (2)
    {
      v23 = *v24;
      if (v23 > 0x5B)
      {
        if (v23 == 92)
        {
          if (!*++v24)
          {
            goto LABEL_80;
          }
        }

        else if (v23 == 125)
        {
          break;
        }

        goto LABEL_55;
      }

      if (*v24 && v23 != 47)
      {
LABEL_55:
        ++v24;
        continue;
      }

      break;
    }

    v28 = (v24 - v26);
    if (v23 == 47)
    {
      v29 = 0;
      v30 = ++v24;
      while (*v24 && *v24 != 125)
      {
        ++v24;
        ++v29;
      }

      *(v12 + 40) = v30;
      *(v12 + 80) = v29;
      v23 = *v24;
    }

LABEL_66:
    if (v23 != 125)
    {
      xo_printable(a4);
      xo_failure(a1, "missing closing '}': %s");
      return 0xFFFFFFFFLL;
    }

    v31 = &v24[-*(v12 + 16)];
    v13 = v24 + 1;
    *(v12 + 48) = v13;
    *(v12 + 56) = v31;
    if (*(v12 + 64))
    {
      v32 = 0;
    }

    else
    {
      v32 = v26 == 0;
    }

    if (v32)
    {
      if ((*(v12 + 2) & 0x20) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v26)
    {
      *(v12 + 32) = v26;
      *(v12 + 72) = v28;
      goto LABEL_23;
    }

    v33 = *(v12 + 8) - 67;
    v34 = v33 > 0x1A;
    v35 = (1 << v33) & 0x5000011;
    if (v34 || v35 == 0)
    {
      *(v12 + 32) = "%s";
      *(v12 + 72) = 2;
    }

LABEL_23:
    v11 = v14 + 1;
    v12 += 96;
    if (*v13)
    {
      v20 = v11 >= a3;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      continue;
    }

    break;
  }

  if (v10)
  {
    v37 = 0;
    v38 = (a2 + 88);
    v39 = -1;
    while (1)
    {
      v40 = *v38;
      if (*v38)
      {
        if (v40 > v11)
        {
          xo_failure(a1, "field number exceeds number of fields: '%s'");
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v40 = v39 + 2;
        *v38 = v39 + 2;
      }

      if (v40 <= 0x40)
      {
        v41 = 1 << (v40 - 1);
        if ((v41 & v37) != 0)
        {
          xo_failure(a1, "field number %u reused: '%s'");
          return 0xFFFFFFFFLL;
        }

        v37 |= v41;
      }

      result = 0;
      ++v39;
      v38 += 24;
      if (v14 == v39)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t xo_emit_hv(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v4 = xo_default_handle();
  }

  *(v4 + 200) = a3;
  result = xo_do_emit(v4, 0, a2);
  *(v4 + 200) = 0;
  return result;
}

uint64_t xo_do_emit(unint64_t a1, int a2, unsigned __int8 *a3)
{
  v28[1] = *MEMORY[0x29EDCA608];
  *(a1 + 376) = 0;
  *(a1 + 440) = *__error();
  if (!a3)
  {
    return 0;
  }

  v7 = ((a2 | (*a1 >> 30)) & 1) == 0 || *a1 < 0;
  v8 = xo_retain_count();
  v10 = v8;
  if (!v7 && *v8)
  {
    v28[0] = a3;
    v8 = xo_retain(&xo_retain, v9);
    v12 = &v8[2 * v11];
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (*(v12 + 2) == a3)
      {
        v13 = *(v12 + 4);
        v14 = v12[6];
        ++*(v12 + 1);
        if (v13)
        {
          return xo_do_emit_fields(a1, v13, v14);
        }

        break;
      }
    }
  }

  v15 = 1;
  for (i = a3; ; ++i)
  {
    v17 = *i;
    if (v17 != 10 && v17 != 123)
    {
      break;
    }

    ++v15;
LABEL_20:
    ;
  }

  if (*i)
  {
    goto LABEL_20;
  }

  v14 = (2 * v15) | 1;
  MEMORY[0x2A1C7C4A8](v8);
  v13 = v28 - v14 * v18;
  bzero(v13, 96 * v14);
  bzero(v13, 96 * v14);
  if (xo_parse_fields(a1, v13, v14, a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (!v7)
  {
    v28[0] = a3;
    v21 = xo_realloc(0, (96 * (2 * v15 + 2)) | 0x28);
    if (v21)
    {
      v22 = v21;
      v23 = 9 * ((a3 >> 4) & 0xFFFFFF ^ (((a3 >> 4) & 0xFFFFFF) >> 16) ^ 0x3D);
      v24 = ((982451653 * (v23 ^ (v23 >> 4))) ^ ((982451653 * (v23 ^ (v23 >> 4))) >> 15)) & 0x3F;
      v25 = v21 + 40;
      memcpy((v21 + 40), v13, 96 * v14);
      *v22 = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 16) = a3;
      *(v22 + 32) = v25;
      *(v22 + 24) = v14;
      v27 = xo_retain(&xo_retain, v26);
      *v22 = *(v27 + 8 * v24);
      *(v27 + 8 * v24) = v22;
      ++*v10;
    }
  }

  return xo_do_emit_fields(a1, v13, v14);
}

uint64_t xo_emit_h(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v10 = xo_default_handle();
  }

  *(v10 + 200) = &a9;
  result = xo_do_emit(v10, 0, a2);
  *(v10 + 200) = 0;
  return result;
}

uint64_t xo_emit(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  v10 = xo_default_handle();
  *(v10 + 200) = &a9;
  result = xo_do_emit(v10, 0, a1);
  *(v10 + 200) = 0;
  return result;
}

uint64_t xo_emit_hvf(unint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v6 = xo_default_handle();
  }

  *(v6 + 200) = a4;
  result = xo_do_emit(v6, a2, a3);
  *(v6 + 200) = 0;
  return result;
}

uint64_t xo_emit_hf(unint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v11 = xo_default_handle();
  }

  *(v11 + 200) = &a9;
  result = xo_do_emit(v11, a2, a3);
  *(v11 + 200) = 0;
  return result;
}

uint64_t xo_emit_f(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  v11 = xo_default_handle();
  *(v11 + 200) = &a9;
  result = xo_do_emit(v11, a1, a2);
  *(v11 + 200) = 0;
  return result;
}

uint64_t xo_emit_field_hv(unint64_t a1, char *a2, const char *a3, const char *a4, const char *a5, uint64_t a6)
{
  v10 = a1;
  v22 = a6;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v10 = xo_default_handle();
  }

  v20 = 0u;
  v21 = 0u;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = "V";
  }

  v18 = 0uLL;
  v19 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  if (!xo_parse_roles(v10, v11, v11, &v16))
  {
    return -1;
  }

  *&v17 = a4;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a5;
  if (a3)
  {
    v12 = strlen(a3);
  }

  else
  {
    v12 = 0;
  }

  *&v20 = v12;
  if (a4)
  {
    v14 = strlen(a4);
  }

  else
  {
    v14 = 0;
  }

  *(&v20 + 1) = v14;
  if (a5)
  {
    v15 = strlen(a5);
  }

  else
  {
    v15 = 0;
  }

  *&v21 = v15;
  if (a3 && !a4 && ((DWORD2(v16) - 67) > 0x1A || ((1 << (BYTE8(v16) - 67)) & 0x5000011) == 0))
  {
    *&v18 = "%s";
    *(&v20 + 1) = 2;
  }

  *(v10 + 200) = v22;
  return xo_do_emit_fields(v10, &v16, 1);
}

unsigned __int8 *xo_parse_roles(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v4 = a3;
  if (a3)
  {
    v21 = a4;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (2)
    {
      v10 = *v4;
      switch(*v4)
      {
        case ',':
          v13 = 0;
          v14 = (v4 + 1);
          while (1)
          {
            v15 = v4[1];
            v16 = v15 > 0x3A || ((1 << v15) & 0x400900000000001) == 0;
            if (!v16 || v15 == 125)
            {
              break;
            }

            ++v4;
            ++v13;
          }

          if (v13 >= 1)
          {
            v17 = xo_name_lookup(xo_role_names, v14, v13);
            if (v17)
            {
              v9 = v17;
            }

            else
            {
              v18 = xo_name_lookup(xo_modifier_names, v14, v13);
              if (v18)
              {
                v8 |= v18;
              }

              else
              {
                xo_failure(a1, "unknown keyword ignored: '%.*s'", v13, v14);
              }
            }
          }

          goto LABEL_13;
        case '-':
        case '.':
        case ';':
        case '<':
        case '=':
        case '>':
        case '?':
        case '@':
        case 'A':
        case 'B':
        case 'F':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'M':
        case 'O':
        case 'Q':
        case 'R':
        case 'S':
        case 'X':
        case 'Y':
        case 'Z':
        case '^':
        case '_':
        case 'b':
        case 'f':
        case 'i':
        case 'j':
        case 'm':
        case 'o':
        case 'r':
        case 's':
        case 'u':
        case 'v':
        case 'x':
        case 'y':
        case 'z':
        case '{':
        case '|':
          goto LABEL_51;
        case '/':
        case ':':
        case '}':
          goto LABEL_49;
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          v7 = v10 + 10 * v7 - 48;
          goto LABEL_7;
        case 'C':
        case 'D':
        case 'E':
        case 'G':
        case 'L':
        case 'N':
        case 'P':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case '[':
        case ']':
          if (!v9)
          {
            goto LABEL_8;
          }

          xo_printable(a2);
          xo_failure(a1, "field descriptor uses multiple types: '%s'");
          return 0;
        case '\\':
          if (*++v4)
          {
            goto LABEL_13;
          }

          xo_failure(a1, "backslash at the end of string");
          return 0;
        case 'a':
          v8 |= 0x200000uLL;
          goto LABEL_7;
        case 'c':
          v8 |= 1uLL;
          goto LABEL_7;
        case 'd':
          v8 |= 0x40uLL;
          goto LABEL_7;
        case 'e':
          v8 |= 8uLL;
          goto LABEL_7;
        case 'g':
          v8 |= 0x80000uLL;
          goto LABEL_7;
        case 'h':
          v8 |= 0x8000uLL;
          goto LABEL_7;
        case 'k':
          v8 |= 0x80uLL;
          goto LABEL_7;
        case 'l':
          v8 |= 0x2000uLL;
          goto LABEL_7;
        case 'n':
          v8 |= 0x20uLL;
          goto LABEL_7;
        case 'p':
          v8 |= 0x100000uLL;
          goto LABEL_7;
        case 'q':
          v8 |= 0x10uLL;
          goto LABEL_7;
        case 't':
          v8 |= 0x1000uLL;
          goto LABEL_7;
        case 'w':
          v8 |= 4uLL;
LABEL_7:
          v10 = v9;
LABEL_8:
          if (v10 == 85 || v10 == 78) && (v8)
          {
            v11 = xo_printable(a2);
            xo_failure(a1, "colon modifier on 'N' or 'U' field ignored: '%s'", v11);
            v8 &= ~1uLL;
          }

          v9 = v10;
LABEL_13:
          ++v4;
          continue;
        default:
          if (*v4)
          {
LABEL_51:
            xo_printable(a2);
            xo_failure(a1, "field descriptor uses unknown modifier: '%s'");
            return 0;
          }

LABEL_49:
          v19 = v7;
          a4 = v21;
          *v21 = v8;
          if (v9)
          {
            goto LABEL_46;
          }

          break;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
    *a4 = 0;
  }

  LODWORD(v9) = 86;
LABEL_46:
  *(a4 + 2) = v9;
  *(a4 + 22) = v19;
  return v4;
}

uint64_t xo_do_emit_fields(unint64_t a1, uint64_t a2, int a3)
{
  v132 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = *(a1 + 8);
  if ((v6 & 1) != 0 || *(a1 + 16) == 5)
  {
    v124 = 0;
  }

  else
  {
    v124 = (v5 >> 23) & 1;
  }

  v7 = 0x2A1B69000uLL;
  if (!a3)
  {
    goto LABEL_245;
  }

  v120 = *a1;
  v8 = 0;
  v117 = a1 + 393;
  v118 = a1 + 384;
  v9 = MEMORY[0x29EDCA600];
  do
  {
    v10 = *(a2 + 8);
    if (!v10)
    {
      break;
    }

    v11 = *a2;
    if ((*a2 & 0x200000) != 0)
    {
      v14 = *(a1 + 200);
      *(a1 + 200) = v14 + 1;
      v12 = *v14;
      if (*v14)
      {
        v13 = strlen(*v14);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v12 = *(a2 + 24);
      v13 = *(a2 + 64);
    }

    if (v10 <= 77)
    {
      if (v10 == 10)
      {
        xo_line_close(a1);
        if (!v124 || (xo_flush_h(a1) & 0x8000000000000000) == 0)
        {
          goto LABEL_243;
        }

        return -1;
      }

      if (v10 == 43)
      {
        v15 = *(a2 + 24);
        v16 = *(a2 + 64);
        goto LABEL_21;
      }
    }

    else if (v10 == 78 || v10 == 85)
    {
      if ((v11 & 4) != 0)
      {
        xo_format_content(a1, "padding", 0, " ", 1, 0, 0, v11);
        v11 &= ~4uLL;
      }
    }

    else if (v10 == 123)
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 56);
LABEL_21:
      xo_format_text(a1, v15, v16);
      goto LABEL_243;
    }

    if (v10 > 85)
    {
      switch(v10)
      {
        case ']':
          xo_anchor_stop(a1, a2, v12, v13);
          goto LABEL_239;
        case '[':
          v20 = *(a1 + 8);
          if ((v20 & 8) != 0)
          {
            xo_failure(a1, "the anchor already recording is discarded");
            v20 = *(a1 + 8);
          }

          *(a1 + 8) = v20 | 8;
          *(a1 + 344) = *(a1 + 80) - *(a1 + 72);
          *(a1 + 352) = 0;
          *(a1 + 360) = xo_find_width(a1, a2, v12, v13);
          goto LABEL_239;
        case 'V':
          xo_format_value(a1, v12, v13, 0, 0, *(a2 + 32), *(a2 + 72), *(a2 + 40), *(a2 + 80), v11);
          goto LABEL_239;
      }

      goto LABEL_53;
    }

    if (v10 != 67)
    {
      if (v10 == 71)
      {
        v17 = *(a2 + 32);
        v18 = *(a2 + 72);
        if (*(a1 + 448))
        {
          (*(v7 + 192))();
          *(a1 + 448) = 0;
        }

        if (v13 | v18)
        {
          if (v13 || !v18)
          {
            *(a1 + 448) = xo_strndup(v12, v13);
          }

          else
          {
            v19 = *(a1 + 80) - *(a1 + 72);
            xo_do_format_field(a1, 0, v17, v18, 0);
            *(a1 + 448) = xo_strndup((v19 + *(a1 + 72)), *(a1 + 80) - (v19 + *(a1 + 72)));
            if ((v19 & 0x8000000000000000) == 0)
            {
              *(a1 + 80) = *(a1 + 72) + v19;
            }
          }
        }

        goto LABEL_243;
      }

LABEL_53:
      if (!v13 && !*(a2 + 32))
      {
        goto LABEL_239;
      }

      if (v10 > 79)
      {
        if (v10 > 84)
        {
          if (v10 == 85)
          {
            xo_format_units(a1, a2, v12, v13);
            goto LABEL_239;
          }

          if (v10 == 87)
          {
            v27 = "warning";
            goto LABEL_150;
          }
        }

        else
        {
          if (v10 == 80)
          {
            v27 = "padding";
            goto LABEL_150;
          }

          if (v10 == 84)
          {
            xo_format_title(a1, a2, v12, v13);
            goto LABEL_239;
          }
        }
      }

      else if (v10 > 75)
      {
        if (v10 == 76)
        {
          v27 = "label";
          goto LABEL_150;
        }

        if (v10 == 78)
        {
          v27 = "note";
          goto LABEL_150;
        }
      }

      else
      {
        v27 = "decoration";
        if (v10 == 68)
        {
LABEL_150:
          v60 = "__warning";
          if (v10 != 87)
          {
            v60 = 0;
          }

          if (v10 == 69)
          {
            v61 = "__error";
          }

          else
          {
            v61 = v60;
          }

          xo_format_content(a1, v27, v61, v12, v13, *(a2 + 32), *(a2 + 72), v11);
          goto LABEL_239;
        }

        if (v10 == 69)
        {
          v27 = "error";
          goto LABEL_150;
        }
      }

      xo_failure(a1, "unknown field type: '%c'", v10);
      goto LABEL_239;
    }

    v21 = *(a2 + 32);
    v22 = *(a2 + 72);
    __s = 0;
    v128 = 0;
    v129 = 0;
    if (v13)
    {
      v23 = *(a1 + 16);
      v7 = 0x2A1B69000;
      if (v23 <= 5 && ((1 << v23) & 0x36) != 0)
      {
        goto LABEL_239;
      }

      v119 = v11;
      v129 = 0x2000;
      v24 = xo_realloc(0, 0x2000);
      __s = v24;
      v128 = v24;
      if (v12)
      {
        v25 = v24;
        if (v13 < 0x2000)
        {
          goto LABEL_52;
        }

        v26 = xo_realloc(v24, (v13 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
        if (v26)
        {
          v25 = v26;
          __s = v26;
          v129 = (v13 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
LABEL_52:
          memcpy(v25, v12, v13);
          v128 = &v25[v13];
        }
      }
    }

    else
    {
      v119 = v11;
      v129 = 0x2000;
      v28 = xo_realloc(0, 0x2000);
      __s = v28;
      v128 = v28;
      if (v22)
      {
        xo_do_format_field(a1, &__s, v21, v22, 0);
      }

      else
      {
        strcpy(v28, "reset");
        v128 = v28 + 6;
      }
    }

    v7 = 0x2A1B69000;
    if ((*(a1 + 3) & 4) == 0 || *(a1 + 16) != 3 && *(a1 + 16))
    {
      goto LABEL_237;
    }

    v29 = v128;
    if (v128 + 1 >= &__s[v129])
    {
      v30 = (v128 + 1 - __s + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v31 = xo_realloc(__s, v30);
      if (!v31)
      {
        goto LABEL_81;
      }

      v29 = &v31[v128 - __s];
      __s = v31;
      v128 = v29;
      v129 = v30;
    }

    *v29 = 0;
    ++v128;
LABEL_81:
    v125 = *(a1 + 402);
    v32 = *(a1 + 403);
    v122 = *(a1 + 404);
    v33 = __s;
    v34 = strlen(__s);
    if (__s)
    {
      v35 = &__s[v34 - 1];
      if (v35 > __s)
      {
        while (1)
        {
          v36 = v33 - 1;
          do
          {
            v37 = v36;
            v38 = v36[1];
            if ((v38 & 0x80000000) != 0)
            {
              v39 = __maskrune(v38, 0x4000uLL);
            }

            else
            {
              v39 = *(v9 + 4 * v38 + 60) & 0x4000;
            }

            ++v36;
          }

          while (v39);
          v40 = strchr(v37 + 1, 44);
          v33 = v40;
          if (v40)
          {
            *v40 = 0;
            v33 = v40 + 1;
          }

          for (i = &v37[strlen(v37 + 1)]; ; --i)
          {
            v42 = *i;
            v43 = (v42 & 0x80000000) != 0 ? __maskrune(v42, 0x4000uLL) : *(v9 + 4 * v42 + 60) & 0x4000;
            if (i <= v36 || !v43)
            {
              break;
            }

            *i = 0;
          }

          v44 = *v36;
          if (v44 == 98)
          {
            break;
          }

          if (v44 == 102)
          {
            if (v36[1] == 103 && v36[2] == 45)
            {
              v46 = 0;
              while (strcmp(xo_color_names[v46], v36 + 3))
              {
                if (++v46 == 9)
                {
                  goto LABEL_121;
                }
              }

              v32 = v46;
              goto LABEL_137;
            }

            goto LABEL_118;
          }

          if (v44 != 110 || v36[1] != 111 || v36[2] != 45)
          {
            goto LABEL_118;
          }

          v45 = 0;
          while (strcmp(xo_effect_names[v45], v36 + 3))
          {
            if (++v45 == 5)
            {
              goto LABEL_121;
            }
          }

          v125 = (v125 & ~(1 << v45));
LABEL_137:
          if (!v33 || v33 >= v35)
          {
            goto LABEL_143;
          }
        }

        if (v36[1] == 103 && v36[2] == 45)
        {
          for (j = 0; j != 9; ++j)
          {
            if (!strcmp(xo_color_names[j], v36 + 3))
            {
              v122 = j;
              goto LABEL_137;
            }
          }

LABEL_121:
          if ((*a1 & 0x10) != 0)
          {
            xo_failure(a1, "unknown color/effect string detected: '%s'", v36);
          }

          goto LABEL_137;
        }

LABEL_118:
        v48 = 0;
        while (strcmp(xo_effect_names[v48], v36))
        {
          if (++v48 == 5)
          {
            goto LABEL_121;
          }
        }

        v49 = 1 << v48;
        v50 = v125 | (1 << v48);
        v51 = v50 & 0xE1;
        if (1 << v48 == 1)
        {
          v50 = 1;
        }

        if (v49 == 1)
        {
          v52 = 0;
        }

        else
        {
          v52 = v32;
        }

        v53 = v122;
        if (v49 == 1)
        {
          v54 = 0;
        }

        else
        {
          v54 = v122;
        }

        v55 = v49 == 2;
        if (v49 == 2)
        {
          v56 = v51;
        }

        else
        {
          v56 = v50;
        }

        v125 = v56;
        if (!v55)
        {
          v32 = v52;
          v53 = v54;
        }

        v122 = v53;
        goto LABEL_137;
      }
    }

LABEL_143:
    if ((*a1 & 0x100000000) != 0)
    {
      v57 = v32;
      v58 = v122;
      v59 = v125;
      if (v32 <= 8)
      {
        v57 = *(v118 + v32);
      }

      v7 = 0x2A1B69000;
      if ((*a1 & 0x100000000) != 0 && v122 <= 8)
      {
        v58 = *(v117 + v122);
      }
    }

    else
    {
      v57 = v32;
      v7 = 0x2A1B69000;
      v58 = v122;
      v59 = v125;
    }

    v123 = v58;
    if (!*(a1 + 16))
    {
      __src = 27;
      if ((*(a1 + 402) & ~v59) != 0)
      {
        v125 = v59 | 1;
        *(a1 + 402) = 0;
      }

      v76 = 0;
      v77 = 1;
      v78 = &v131;
      v79 = 1;
      do
      {
        if ((v79 & (*(a1 + 402) ^ v125)) != 0)
        {
          v77 += snprintf(v78, 1024 - v77, ";%s", xo_effect_on_codes[v76]);
          if (v77 > 1023)
          {
            goto LABEL_201;
          }

          if (v79 == 1)
          {
            *(a1 + 402) = 0;
            *(a1 + 404) = 0;
          }
        }

        v79 *= 2;
        v78 = &__src + v77;
        ++v76;
      }

      while (v76 != 5);
      if (v57 != *(a1 + 403))
      {
        v80 = v57 - 1;
        if (!v57)
        {
          v80 = 9;
        }

        v77 += snprintf(v78, 1024 - v77, ";3%u", v80);
      }

      if (v123 != *(a1 + 404))
      {
        v81 = v123 - 1;
        if (!v123)
        {
          v81 = 9;
        }

        v77 += snprintf(&__src + v77, 1024 - v77, ";4%u", v81);
      }

      if (v77 != 1 && v77 <= 1020)
      {
        v131 = 91;
        *(&__src + v77) = 109;
        if (&__src + v77 + 1 != &__src)
        {
          v82 = v77 + 1;
          v84 = *(a1 + 72);
          v83 = *(a1 + 80);
          if (v83 + v82 < v84 + *(a1 + 88))
          {
            goto LABEL_200;
          }

          v85 = (v83 + v82 - v84 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
          v86 = xo_realloc(*(a1 + 72), v85);
          if (v86)
          {
            v87 = v86;
            v83 = (v86 + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = v87;
            *(a1 + 80) = v83;
            *(a1 + 88) = v85;
LABEL_200:
            memcpy(v83, &__src, v82);
            *(a1 + 80) += v82;
          }
        }
      }

LABEL_201:
      LOBYTE(v62) = v125 & 0xFE;
      LOBYTE(v58) = v123;
      goto LABEL_236;
    }

    v62 = v59 & 0xFE;
    if (*(a1 + 402) == v62 && *(a1 + 403) == v57 && *(a1 + 404) == v58)
    {
      goto LABEL_236;
    }

    v116 = v57;
    v63 = 0;
    *(a1 + 416) = *(a1 + 408);
    v64 = 1;
    v121 = v59 & 0xFE;
    do
    {
      if ((v64 & v62) == 0)
      {
        goto LABEL_175;
      }

      v65 = *(a1 + 408);
      v66 = *(a1 + 416);
      if ((v66 + 8) >= v65 + *(a1 + 424))
      {
        v67 = &v66[-v65 + 8199] & 0xFFFFFFFFFFFFE000;
        v68 = xo_realloc(v65, v67);
        v69 = *(a1 + 416);
        if (!v68)
        {
          goto LABEL_171;
        }

        v66 = &v69[v68 - *(a1 + 408)];
        *(a1 + 408) = v68;
        *(a1 + 416) = v66;
        *(a1 + 424) = v67;
      }

      *v66 = 0x2D74636566666520;
      v69 = (*(a1 + 416) + 8);
      *(a1 + 416) = v69;
LABEL_171:
      v70 = xo_effect_names[v63];
      v71 = strlen(v70);
      v72 = *(a1 + 408);
      if (&v69[v71] >= v72 + *(a1 + 424))
      {
        v73 = &v69[v71 - v72 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v74 = xo_realloc(v72, v73);
        v62 = v121;
        if (!v74)
        {
          goto LABEL_175;
        }

        v69 = (v74 + *(a1 + 416) - *(a1 + 408));
        *(a1 + 408) = v74;
        *(a1 + 416) = v69;
        *(a1 + 424) = v73;
      }

      memcpy(v69, v70, v71);
      *(a1 + 416) += v71;
      v62 = v121;
LABEL_175:
      v64 *= 2;
      ++v63;
    }

    while (v63 != 5);
    LOBYTE(v57) = v116;
    if (v116)
    {
      v75 = xo_color_names[v116];
    }

    else
    {
      v75 = 0;
    }

    v7 = 0x2A1B69000;
    if (v123)
    {
      v88 = xo_color_names[v123];
    }

    else
    {
      v88 = 0;
    }

    v89 = "inverse";
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = "inverse";
    }

    if (v75)
    {
      v89 = v75;
    }

    if ((v125 & 0x10) != 0)
    {
      v91 = v90;
    }

    else
    {
      v91 = v75;
    }

    if ((v125 & 0x10) != 0)
    {
      v92 = v89;
    }

    else
    {
      v92 = v88;
    }

    if (v91)
    {
      v93 = *(a1 + 408);
      v94 = *(a1 + 416);
      if ((v94 + 10) < v93 + *(a1 + 424))
      {
        goto LABEL_221;
      }

      v95 = &v94[-v93 + 8201] & 0xFFFFFFFFFFFFE000;
      v96 = xo_realloc(v93, v95);
      v97 = *(a1 + 416);
      if (v96)
      {
        v94 = &v97[v96 - *(a1 + 408)];
        *(a1 + 408) = v96;
        *(a1 + 416) = v94;
        *(a1 + 424) = v95;
LABEL_221:
        *(v94 + 4) = 11623;
        *v94 = *" color-fg-";
        v97 = (*(a1 + 416) + 10);
        *(a1 + 416) = v97;
      }

      v98 = strlen(v91);
      v99 = *(a1 + 408);
      if (&v97[v98] < v99 + *(a1 + 424))
      {
LABEL_225:
        memcpy(v97, v91, v98);
        *(a1 + 416) += v98;
        v7 = 0x2A1B69000uLL;
      }

      else
      {
        v100 = &v97[v98 - v99 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v101 = xo_realloc(v99, v100);
        v7 = 0x2A1B69000;
        if (v101)
        {
          v97 = (v101 + *(a1 + 416) - *(a1 + 408));
          *(a1 + 408) = v101;
          *(a1 + 416) = v97;
          *(a1 + 424) = v100;
          goto LABEL_225;
        }
      }
    }

    if (v92)
    {
      v102 = *(a1 + 408);
      v103 = *(a1 + 416);
      if ((v103 + 10) < v102 + *(a1 + 424))
      {
        goto LABEL_230;
      }

      v104 = &v103[-v102 + 8201] & 0xFFFFFFFFFFFFE000;
      v105 = xo_realloc(v102, v104);
      v106 = *(a1 + 416);
      if (v105)
      {
        v103 = &v106[v105 - *(a1 + 408)];
        *(a1 + 408) = v105;
        *(a1 + 416) = v103;
        *(a1 + 424) = v104;
LABEL_230:
        *(v103 + 4) = 11623;
        *v103 = *" color-bg-";
        v106 = (*(a1 + 416) + 10);
        *(a1 + 416) = v106;
      }

      v107 = strlen(v92);
      v108 = *(a1 + 408);
      if (&v106[v107] < v108 + *(a1 + 424))
      {
LABEL_234:
        memcpy(v106, v92, v107);
        *(a1 + 416) += v107;
      }

      else
      {
        v109 = &v106[v107 - v108 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v110 = xo_realloc(v108, v109);
        if (v110)
        {
          v106 = (v110 + *(a1 + 416) - *(a1 + 408));
          *(a1 + 408) = v110;
          *(a1 + 416) = v106;
          *(a1 + 424) = v109;
          goto LABEL_234;
        }
      }
    }

    LOBYTE(v62) = v121;
    LOBYTE(v58) = v123;
LABEL_236:
    *(a1 + 402) = v62;
    *(a1 + 403) = v57;
    *(a1 + 404) = v58;
LABEL_237:
    LOBYTE(v11) = v119;
    if (__s)
    {
      (*(v7 + 192))();
    }

LABEL_239:
    if (v11)
    {
      xo_format_content(a1, "decoration", 0, ":", 1, 0, 0, 0);
    }

    if ((v11 & 4) != 0)
    {
      xo_format_content(a1, "padding", 0, " ", 1, 0, 0, 0);
    }

LABEL_243:
    a2 += 96;
    ++v8;
  }

  while (v8 != a3);
  v6 = *(a1 + 8);
  v5 = v120;
LABEL_245:
  *(a1 + 8) = v6 & 0xFFFFFFFFFFFFFFFELL;
  v111 = (v5 >> 22) & 1;
  if ((*(a1 + 80) - *(a1 + 72)) > 7680)
  {
    v111 = 1;
  }

  v112 = v6 & 8;
  if (v111 == 1 && v112 == 0)
  {
    v114 = xo_flush_h(a1) >> 63;
  }

  else
  {
    LOBYTE(v114) = 0;
  }

  if (*(a1 + 448))
  {
    (*(v7 + 192))();
    *(a1 + 448) = 0;
  }

  if (v114)
  {
    return -1;
  }

  else
  {
    return *(a1 + 376);
  }
}

uint64_t xo_attr_hv(uint64_t a1, char *__s, char *a3, va_list a4)
{
  v7 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v7 = xo_default_handle();
  }

  v8 = strlen(__s);
  v9 = v8;
  v10 = *(v7 + 16);
  if (v10 != 5)
  {
    if (v10 != 1)
    {
      return 0;
    }

    v11 = *(v7 + 120);
    v12 = *(v7 + 128);
    v13 = &v12[v9 + 5];
    if (v13 >= v11 + *(v7 + 136))
    {
      v14 = &v13[-v11 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
      v15 = xo_realloc(v11, v14);
      if (!v15)
      {
        return -1;
      }

      v12 = (v15 + *(v7 + 128) - *(v7 + 120));
      *(v7 + 120) = v15;
      *(v7 + 136) = v14;
    }

    *(v7 + 128) = v12 + 1;
    *v12 = 32;
    memcpy(*(v7 + 128), __s, v9);
    v16 = (*(v7 + 128) + v9);
    *(v7 + 128) = v16 + 1;
    *v16 = 61;
    v17 = *(v7 + 128);
    *(v7 + 128) = v17 + 1;
    *v17 = 34;
    v18 = xo_vsnprintf(v7, v7 + 120, a3, a4);
    if (v18 < 0)
    {
      v19 = *(v7 + 128);
    }

    else
    {
      v18 = xo_escape_xml((v7 + 120), v18, 1u);
      v19 = (*(v7 + 128) + v18);
      *(v7 + 128) = v19;
    }

    v34 = *(v7 + 120);
    if ((v19 + 2) < v34 + *(v7 + 136))
    {
      goto LABEL_30;
    }

    v35 = &v19[-v34 + 8193] & 0xFFFFFFFFFFFFE000;
    v36 = xo_realloc(v34, v35);
    if (v36)
    {
      v19 = (v36 + *(v7 + 128) - *(v7 + 120));
      *(v7 + 120) = v36;
      *(v7 + 136) = v35;
LABEL_30:
      *(v7 + 128) = v19 + 1;
      *v19 = 34;
      **(v7 + 128) = 0;
      return v18 + v9 + 5;
    }

    return -1;
  }

  v20 = *(v7 + 120);
  v21 = *(v7 + 128);
  if (__s && v8)
  {
    v22 = v21 + v8;
    v23 = *(v7 + 128);
    if (v21 + v9 >= v20 + *(v7 + 136))
    {
      v24 = (v22 - v20 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v25 = xo_realloc(*(v7 + 120), v24);
      v26 = *(v7 + 120);
      v27 = *(v7 + 128);
      if (!v25)
      {
        goto LABEL_20;
      }

      v23 = &v27[v25 - v26];
      *(v7 + 120) = v25;
      *(v7 + 128) = v23;
      *(v7 + 136) = v24;
    }

    memcpy(v23, __s, v9);
    v26 = *(v7 + 120);
    v27 = (*(v7 + 128) + v9);
    *(v7 + 128) = v27;
  }

  else
  {
    v26 = *(v7 + 120);
    v27 = *(v7 + 128);
  }

LABEL_20:
  if ((v27 + 1) >= v26 + *(v7 + 136))
  {
    v29 = &v27[-v26 + 0x2000] & 0xFFFFFFFFFFFFE000;
    v30 = xo_realloc(v26, v29);
    v31 = *(v7 + 128);
    if (!v30)
    {
      goto LABEL_24;
    }

    v27 = (v30 + v31 - *(v7 + 120));
    *(v7 + 120) = v30;
    *(v7 + 128) = v27;
    *(v7 + 136) = v29;
  }

  *v27 = 0;
  v31 = *(v7 + 128) + 1;
  *(v7 + 128) = v31;
LABEL_24:
  v32 = *(v7 + 120);
  result = xo_vsnprintf(v7, v7 + 120, a3, a4);
  if ((result & 0x8000000000000000) == 0)
  {
    v33 = (*(v7 + 128) + result);
    *(v7 + 128) = v33;
    *v33 = 0;
    return xo_encoder_handle(v7, 15, *(v7 + 120) + v21 - v20, *(v7 + 120) + v31 - v32, 0);
  }

  return result;
}

uint64_t xo_vsnprintf(uint64_t a1, uint64_t a2, char *__format, va_list a4)
{
  v8 = a2 + 8;
  v7 = *(a2 + 8);
  v9 = *a2 - v7 + *(v8 + 8);
  v10 = *(a1 + 48);
  if (v10)
  {
    result = v10(a1);
  }

  else
  {
    result = vsnprintf(v7, v9, __format, a4);
  }

  if (result >= v9)
  {
    v12 = *(a2 + 8) + result;
    if (v12 >= *a2 + *(a2 + 16))
    {
      v13 = (v12 - *a2 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v14 = xo_realloc(*a2, v13);
      if (!v14)
      {
        return -1;
      }

      v15 = v14 + *(a2 + 8) - *a2;
      *a2 = v14;
      *(a2 + 8) = v15;
      *(a2 + 16) = v13;
    }

    v16 = *(a2 + 16);
    v17 = *a2 - *(a2 + 8);
    v18 = *(a1 + 48);
    if (v18)
    {
      return v18(a1, *(a2 + 8), v17 + v16, __format);
    }

    else
    {
      return vsnprintf(*(a2 + 8), v17 + v16, __format, a4);
    }
  }

  return result;
}

uint64_t xo_set_depth(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  result = xo_depth_check(v3, v2);
  if (!result)
  {
    v5 = *(v3 + 176) + v2;
    *(v3 + 176) = v5;
    *(v3 + 18) += v2;
    if (*(v3 + 16) == 2 && (*(v3 + 2) & 1) == 0 && v5 >= 1)
    {
      *(v3 + 8) |= 4uLL;
    }
  }

  return result;
}

uint64_t xo_depth_check(uint64_t a1, int a2)
{
  if (*(a1 + 180) > a2)
  {
    return 0;
  }

  v4 = a2 + 128;
  v5 = xo_realloc(*(a1 + 168), 24 * v4);
  if (v5)
  {
    v6 = v5;
    bzero((v5 + 24 * *(a1 + 180)), 24 * (v4 - *(a1 + 180)));
    result = 0;
    *(a1 + 180) = v4;
    *(a1 + 168) = v6;
  }

  else
  {
    xo_failure(a1, "xo_depth_check: out of memory (%d)", v4);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t xo_transition(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  v7 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v7 = xo_default_handle();
  }

  v8 = *(v7 + 168);
  v9 = *(v7 + 176);
  v10 = v9;
  v11 = v8 + 24 * v9;
  v12 = *(v11 + 4);
  if (v12 != 10 || v9 == 0)
  {
    v14 = *(v11 + 4);
  }

  else
  {
    v15 = 24 - 24 * v9;
    do
    {
      v14 = *(v11 - 20);
      v11 -= 24;
      v16 = v14 != 10 || v15 == 0;
      v15 += 24;
    }

    while (!v16);
  }

  v17 = 0;
  v18 = a4 | (v14 << 8);
  if (v18 <= 773)
  {
    if (v18 > 258)
    {
      if (v18 > 266)
      {
        if (v18 > 769)
        {
          if (v18 <= 771)
          {
            if (v18 != 770)
            {
              if (v12 != 10)
              {
                v19 = xo_do_close_list(v7, 0);
                goto LABEL_77;
              }

              goto LABEL_95;
            }

            goto LABEL_94;
          }

          if (v18 == 772)
          {
LABEL_94:
            if (v12 == 10)
            {
              goto LABEL_95;
            }

            goto LABEL_107;
          }

LABEL_116:
          v19 = xo_do_open_instance(v7, a2, a3);
          goto LABEL_120;
        }

        if (v18 == 267)
        {
          goto LABEL_130;
        }

        if (v18 != 268)
        {
          if (v18 != 769)
          {
            goto LABEL_104;
          }

LABEL_109:
          if (v12 == 10)
          {
            goto LABEL_95;
          }

          v19 = xo_do_close_leaf_list(v7, 0);
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

LABEL_120:
          v17 = v19;
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_133;
          }

          goto LABEL_130;
        }

        goto LABEL_119;
      }

      if (v18 > 261)
      {
        if (v18 == 262)
        {
          goto LABEL_94;
        }

        if (v18 != 263)
        {
          if (v18 == 264)
          {
            goto LABEL_94;
          }

          goto LABEL_104;
        }

        goto LABEL_119;
      }

      if (v18 != 259)
      {
        if (v18 != 260)
        {
LABEL_113:
          v29 = v7;
LABEL_114:
          v19 = xo_do_open_list(v29, a2, a3);
          goto LABEL_115;
        }

        goto LABEL_107;
      }

      goto LABEL_78;
    }

    if (v18 <= 6)
    {
      if (v18 > 3)
      {
        if (v18 != 4)
        {
          if (v18 != 5)
          {
            xo_failure(v7, "xo_close_instance ignored when called from initial state ('%s')");
LABEL_129:
            v17 = 0;
            goto LABEL_130;
          }

          goto LABEL_113;
        }

LABEL_107:
        v26 = v7;
        v27 = a3;
        v28 = a4;
LABEL_108:
        xo_do_close(v26, v27, v28);
        goto LABEL_129;
      }

      switch(v18)
      {
        case 1:
          goto LABEL_111;
        case 2:
          v19 = xo_do_close_container(v7, a3);
          goto LABEL_120;
        case 3:
LABEL_78:
          v19 = xo_do_open_list(v7, a2, a3);
          goto LABEL_120;
      }

LABEL_104:
      xo_failure(v7, "unknown transition: (%u -> %u)");
      goto LABEL_129;
    }

    if (v18 <= 11)
    {
      if (v18 != 7)
      {
        if (v18 == 8)
        {
          xo_failure(v7, "xo_close_leaf_list ignored when called from initial state ('%s')");
          goto LABEL_129;
        }

        if (v18 == 11)
        {
          goto LABEL_130;
        }

        goto LABEL_104;
      }

      goto LABEL_119;
    }

    if (v18 == 12)
    {
LABEL_119:
      v19 = xo_do_open_leaf_list(v7, a2, a3);
      goto LABEL_120;
    }

    if (v18 != 257)
    {
      if (v18 == 258)
      {
        goto LABEL_94;
      }

      goto LABEL_104;
    }

LABEL_111:
    v17 = xo_do_open_container(v7, a2, a3);
    if (v17 < 0)
    {
LABEL_133:
      *(v7 + 8) |= 0x40uLL;
      return v17;
    }

LABEL_130:
    if ((*(v7 + 2) & 0x40) != 0 && xo_flush_h(v7) < 0)
    {
      v17 = -1;
    }

    goto LABEL_133;
  }

  if (v18 <= 1287)
  {
    if (v18 <= 1281)
    {
      if (v18 > 778)
      {
        if (v18 == 779)
        {
          if (v12 == 10)
          {
            goto LABEL_95;
          }

          v26 = v7;
          v27 = 0;
          v28 = 4;
          goto LABEL_108;
        }

        if (v18 == 780)
        {
          goto LABEL_130;
        }

        if (v18 != 1281)
        {
          goto LABEL_104;
        }

        goto LABEL_111;
      }

      if (v18 == 774)
      {
        goto LABEL_94;
      }

      if (v18 != 775)
      {
        if (v18 == 776)
        {
          goto LABEL_94;
        }

        goto LABEL_104;
      }

      goto LABEL_117;
    }

    if (v18 <= 1284)
    {
      if (v18 == 1282)
      {
        goto LABEL_94;
      }

      if (v18 != 1283)
      {
        goto LABEL_107;
      }

      goto LABEL_78;
    }

    if (v18 != 1285)
    {
      if (v18 == 1286)
      {
        if (v12 == 10)
        {
          goto LABEL_95;
        }

        v19 = xo_do_close_instance(v7, a3);
        goto LABEL_120;
      }

      goto LABEL_119;
    }

    v29 = v7;
    if (v12 == 10)
    {
      goto LABEL_114;
    }

    v19 = xo_do_close_instance(v7, 0);
    goto LABEL_115;
  }

  if (v18 > 1795)
  {
    if (v18 > 1798)
    {
      if (v18 > 1802)
      {
        if (v18 != 1803)
        {
          if (v18 == 1804)
          {
            goto LABEL_130;
          }

          goto LABEL_104;
        }

        if (v12 == 10)
        {
          goto LABEL_95;
        }

        v20 = v7;
        v21 = 0;
        goto LABEL_126;
      }

      if (v18 != 1799)
      {
        if (v18 != 1800)
        {
          goto LABEL_104;
        }

        if (v12 == 10)
        {
          goto LABEL_95;
        }

        v20 = v7;
        v21 = a3;
LABEL_126:
        v19 = xo_do_close_leaf_list(v20, v21);
        goto LABEL_120;
      }

LABEL_117:
      if (v12 == 10)
      {
        goto LABEL_95;
      }

      v19 = xo_do_close_list(v7, 0);
      if (v19 < 0)
      {
        goto LABEL_120;
      }

      goto LABEL_119;
    }

    if (v18 == 1796)
    {
      goto LABEL_107;
    }

    if (v18 != 1797)
    {
LABEL_105:
      if (v12 == 10)
      {
        goto LABEL_95;
      }

      v19 = xo_do_close_leaf_list(v7, 0);
      if (v19 < 0)
      {
        goto LABEL_120;
      }

      goto LABEL_107;
    }

    if (v12 == 10)
    {
      goto LABEL_95;
    }

    v19 = xo_do_close_leaf_list(v7, 0);
LABEL_115:
    if (v19 < 0)
    {
      goto LABEL_120;
    }

    goto LABEL_116;
  }

  if (v18 <= 1792)
  {
    if (v18 == 1288)
    {
      goto LABEL_94;
    }

    if (v18 == 1291)
    {
      goto LABEL_130;
    }

    if (v18 != 1292)
    {
      goto LABEL_104;
    }

    goto LABEL_119;
  }

  if (v18 == 1793)
  {
    goto LABEL_109;
  }

  if (v18 == 1794)
  {
    goto LABEL_105;
  }

  if (v12 != 10)
  {
    v19 = xo_do_close_leaf_list(v7, 0);
LABEL_77:
    if (v19 < 0)
    {
      goto LABEL_120;
    }

    goto LABEL_78;
  }

LABEL_95:
  v22 = v8 + 24 * v10;
  if (v14 > 0xE)
  {
    v23 = "unknown";
  }

  else
  {
    v23 = xo_state_name_names[v14];
  }

  v24 = *(v22 + 8);
  if (a4 > 0xE)
  {
    v25 = "unknown";
  }

  else
  {
    v25 = xo_state_name_names[a4];
  }

  xo_failure(v7, "marker '%s' prevents transition from %s to %s", v24, v23, v25);
  return -1;
}

uint64_t xo_open_marker_h(uint64_t a1, char *a2)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  xo_depth_change(a1, a2, 1, 0, 10, *(*(a1 + 168) + 24 * *(a1 + 176)) & 0xF1);
  return 0;
}

_BYTE *xo_depth_change(_BYTE *result, char *__s1, int a3, __int16 a4, int a5, int a6)
{
  v8 = result;
  v9 = *(result + 8);
  if (v9 == 3 || v9 == 0)
  {
    a4 = 0;
  }

  v12 = *result;
  v13 = (*result >> 7) & 8 | a6;
  v14 = *(result + 44);
  if ((a3 & 0x80000000) == 0)
  {
    result = xo_depth_check(result, v14 + a3);
    if (result)
    {
      return result;
    }

    v16 = *(v8 + 21);
    v17 = *(v8 + 44);
    v18 = v16 + 24 * (v17 + a3);
    *v18 = v13;
    *(v18 + 4) = a5;
    v19 = *v8;
    if ((*v8 & 0x2000) != 0)
    {
      *(v16 + 24 * v17) |= 1u;
      *v8 = v19 & 0xFFFFFFFFFFFFDFFFLL;
    }

    if (__s1)
    {
      v20 = __s1;
    }

    else
    {
      v20 = "failure";
    }

    result = xo_strndup(v20, 0xFFFFFFFFFFFFFFFFLL);
    *(v18 + 8) = result;
    goto LABEL_21;
  }

  if (v14)
  {
    v21 = *(result + 21) + 24 * v14;
    v22 = *(v21 + 8);
    if ((v12 & 0x10) == 0)
    {
LABEL_17:
      if (v22)
      {
        xo_free(v22);
        *(v21 + 8) = 0;
      }

      result = *(v21 + 16);
      if (result)
      {
        result = xo_free(result);
        *(v21 + 16) = 0;
      }

LABEL_21:
      *(v8 + 44) += a3;
      *(v8 + 9) += a4;
      return result;
    }

    if (__s1 && v22 && strcmp(__s1, *(v21 + 8)))
    {
      return xo_failure(v8, "incorrect close: '%s' .vs. '%s'");
    }

    else
    {
      v23 = *v21 ^ v13;
      if ((v23 & 2) != 0)
      {
        return xo_failure(v8, "list close on list confict: '%s'");
      }

      else
      {
        if ((v23 & 4) == 0)
        {
          goto LABEL_17;
        }

        return xo_failure(v8, "list close on instance confict: '%s'");
      }
    }
  }

  else if ((v12 & 0x1000) == 0)
  {
    return xo_failure(result, "close with empty stack: '%s'");
  }

  return result;
}

uint64_t xo_close_marker_h(_BYTE *a1, char *a2)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  xo_do_close(a1, a2, 10);
  return 0;
}

_BYTE *xo_do_close(_BYTE *result, char *__s1, int a3)
{
  v4 = result;
  if (a3 > 5)
  {
    switch(a3)
    {
      case 6:
        v6 = 5;
        break;
      case 8:
        v6 = 7;
        break;
      case 10:
        v5 = 0;
        v6 = 10;
        goto LABEL_13;
      default:
        return result;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 4)
    {
      return result;
    }

    v6 = 3;
LABEL_11:
    v5 = 1;
    goto LABEL_13;
  }

  v5 = 1;
  v6 = 1;
LABEL_13:
  v7 = *(result + 44);
  if (v7 < 1)
  {
    return xo_failure(v4, "xo_%s can't find match for '%s'");
  }

  v8 = *(result + 21);
  v9 = v8 + 24 * v7;
  v10 = v5 ^ 1;
  while (1)
  {
    v11 = *(v9 + 4);
    v12 = v11 == 10 ? v10 : 1;
    if ((v12 & 1) == 0)
    {
      break;
    }

    if (v11 == v6)
    {
      if (!__s1)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8);
      if (!v13 || !strcmp(__s1, v13))
      {
        goto LABEL_29;
      }
    }

    v9 -= 24;
    if (v9 <= v8)
    {
      return xo_failure(v4, "xo_%s can't find match for '%s'");
    }
  }

  if (__s1)
  {
    return xo_failure(v4, "close (xo_%s) fails at marker '%s'; not found '%s'");
  }

  xo_failure(v4, "close stops at marker '%s'", *(v9 + 8));
LABEL_29:

  return xo_do_close_all(v4, v9);
}

void *xo_set_writer(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  result[8] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

uint64_t (*xo_set_allocator(uint64_t (*result)(void, void), uint64_t (*a2)(void)))(void, void)
{
  xo_realloc = result;
  xo_free = a2;
  return result;
}

uint64_t xo_finish_h(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v1 = xo_default_handle();
  }

  if ((*(v1 + 3) & 1) == 0)
  {
    xo_do_close_all(v1, *(v1 + 168));
  }

  v2 = *(v1 + 16);
  if (v2 == 5)
  {
    xo_encoder_handle(v1, 12, 0, 0, 0);
    goto LABEL_24;
  }

  if (v2 == 2)
  {
    v3 = *v1;
    if ((*v1 & 0x10000) == 0)
    {
      v4 = "\n";
      if ((v3 & 2) == 0)
      {
        v4 = &xo_version_extra;
      }

      v5 = *(v1 + 8);
      if ((v5 & 4) != 0)
      {
        *(v1 + 8) = v5 & 0xFFFFFFFFFFFFFFFBLL;
        v6 = &xo_version_extra;
        if ((v3 & 2) != 0)
        {
LABEL_19:
          v7 = *(v1 + 20) * *(v1 + 18);
LABEL_23:
          xo_printf(v1, "%s%*s%s}\n", v4, v7, &xo_version_extra, v6);
          goto LABEL_24;
        }
      }

      else
      {
        if ((v5 & 0x40) != 0)
        {
          v6 = &xo_version_extra;
        }

        else
        {
          v6 = "{ ";
        }

        if ((*(v1 + 8) & 0x40) == 0)
        {
          v4 = &xo_version_extra;
        }

        if ((v3 & 2) != 0)
        {
          goto LABEL_19;
        }
      }

      v7 = 0;
      goto LABEL_23;
    }
  }

LABEL_24:

  return xo_flush_h(v1);
}

_BYTE *xo_do_close_all(_BYTE *result, unint64_t a2)
{
  v2 = *(result + 21) + 24 * *(result + 44);
  if (v2 >= a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = *(v2 + 4);
      if (v6 > 4)
      {
        if (v6 == 5)
        {
          result = xo_do_close_instance(v4, 0);
          goto LABEL_16;
        }

        if (v6 == 7)
        {
          result = xo_do_close_leaf_list(v4, 0);
LABEL_16:
          v5 = result;
          goto LABEL_17;
        }

        if (v6 != 10)
        {
          goto LABEL_17;
        }

        v7 = *v2 & 0xF1;
        result = xo_depth_change(v4, *(v2 + 8), -1, 0, 10, 0);
        v5 = 0;
        *(*(v4 + 21) + 24 * *(v4 + 44)) |= v7;
      }

      else
      {
        if (v6)
        {
          if (v6 == 1)
          {
            result = xo_do_close_container(v4, 0);
            goto LABEL_16;
          }

          if (v6 == 3)
          {
            result = xo_do_close_list(v4, 0);
            goto LABEL_16;
          }

LABEL_17:
          if (v5 < 0)
          {
            result = xo_failure(v4, "close %d failed: %d", *(v2 + 4), v5);
          }

          goto LABEL_19;
        }

        v5 = *(v2 + 4);
      }

LABEL_19:
      v2 -= 24;
    }

    while (v2 >= a2);
  }

  return result;
}

uint64_t xo_indent(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  if ((*a1 & 2) != 0)
  {
    return (*(a1 + 20) & (*(a1 + 8) << 29 >> 31)) + *(a1 + 20) * *(a1 + 18);
  }

  else
  {
    return 0;
  }
}

uint64_t xo_errorn_hv(uint64_t result, int a2, char *a3, va_list a4)
{
  v7 = result;
  v12[1] = *MEMORY[0x29EDCA608];
  v12[0] = a4;
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v7 = result;
  }

  if (a2)
  {
    result = strlen(a3);
    if (result >= 1)
    {
      v8 = result;
      if (a3[result - 1] != 10)
      {
        MEMORY[0x2A1C7C4A8](result);
        bzero(v12 - ((v8 + 17) & 0xFFFFFFFFFFFFFFF0), v8 + 2);
        result = memcpy(v12 - ((v8 + 17) & 0xFFFFFFFFFFFFFFF0), a3, v8);
        *(v12 + v8 - ((v8 + 17) & 0xFFFFFFFFFFFFFFF0)) = 10;
        a3 = v12 - ((v8 + 17) & 0xFFFFFFFFFFFFFFF0);
      }
    }
  }

  v9 = *(v7 + 16);
  if ((v9 - 1) < 2)
  {
    *(v7 + 200) = v12[0];
    xo_transition(v7, 0, "error", 1u);
    v10 = strlen(a3);
    xo_format_value(v7, "message", 7uLL, 0, 0, a3, v10, 0, 0, 0);
    result = xo_transition(v7, 0, "error", 2u);
LABEL_17:
    *(v7 + 200) = 0;
    return result;
  }

  if (v9 == 3)
  {
    *(v7 + 200) = v12[0];
    v11 = strlen(a3);
    xo_buf_append_div(v7, "error", 0, 0, 0, 0, 0, a3, v11, 0, 0);
    if ((*(v7 + 8) & 2) != 0)
    {
      xo_line_close(v7);
    }

    result = xo_write(v7);
    goto LABEL_17;
  }

  if (!*(v7 + 16))
  {
    return vfprintf(*MEMORY[0x29EDCA610], a3, a4);
  }

  return result;
}

uint64_t xo_line_close(uint64_t result)
{
  v1 = result;
  if (!*(result + 16))
  {
    v5 = (result + 80);
    v8 = *(result + 80);
    v9 = (v8 + 1);
    result = *(result + 72);
    v10 = *(v1 + 88);
    goto LABEL_12;
  }

  if (*(result + 16) != 3)
  {
    return result;
  }

  v2 = *(result + 8);
  if ((v2 & 2) == 0)
  {
    xo_line_ensure_open(result);
    v2 = *(v1 + 8);
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFFDLL;
  v5 = (v1 + 80);
  v4 = *(v1 + 80);
  *(v1 + 8) = v3;
  result = *(v1 + 72);
  if (v4 + 6 < (result + *(v1 + 88)))
  {
    goto LABEL_8;
  }

  v6 = (v4 + 6 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  result = xo_realloc(result, v6);
  if (result)
  {
    v4 = result + *(v1 + 80) - *(v1 + 72);
    *(v1 + 72) = result;
    *(v1 + 80) = v4;
    *(v1 + 88) = v6;
LABEL_8:
    v7 = *xo_line_close_div_close;
    *(v4 + 4) = *&xo_line_close_div_close[4];
    *v4 = v7;
    *v5 += 6;
  }

  if ((*v1 & 2) == 0)
  {
    return result;
  }

  result = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = (v8 + 1);
  v10 = *(v1 + 88);
LABEL_12:
  if (v9 >= result + v10)
  {
    v11 = (v9 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v11);
    if (!result)
    {
      return result;
    }

    v8 = (result + *(v1 + 80) - *(v1 + 72));
    *(v1 + 72) = result;
    *(v1 + 80) = v8;
    *(v1 + 88) = v11;
  }

  *v8 = 10;
  ++*v5;
  return result;
}

_BYTE *xo_format_value(unint64_t a1, char *a2, size_t a3, char *a4, uint64_t a5, const char *a6, size_t a7, char *a8, size_t a9, uint64_t a10)
{
  v136 = a4;
  v14 = a3;
  v15 = a2;
  v17 = a10;
  v140 = *MEMORY[0x29EDCA608];
  v135 = *a1;
  v18 = *(a1 + 168);
  v19 = *(a1 + 176);
  v20 = (v18 + 24 * v19);
  if ((a10 & 0x2000) != 0)
  {
    if ((*v20 & 0xE0) != 0x80)
    {
      MEMORY[0x2A1C7C4A8](a1);
      memcpy(&v133 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0), v15, v14);
      *(&v133 + v14 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
      if (xo_transition(a1, 0, &v133 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0), 0xCu) < 0)
      {
        v17 |= 0x48uLL;
      }

      else
      {
        *(*(a1 + 168) + 24 * *(a1 + 176)) |= 0x80u;
      }

      v18 = *(a1 + 168);
      v19 = *(a1 + 176);
    }

    v26 = v18 + 24 * v19;
    v27 = *(v26 + 8);
    if (v27)
    {
      v14 = strlen(*(v26 + 8));
      v15 = v27;
    }
  }

  else
  {
    v21 = *v20;
    if ((a10 & 0x80) == 0)
    {
      if ((*v20 & 0xA0) == 0x20)
      {
        goto LABEL_23;
      }

      MEMORY[0x2A1C7C4A8](a1);
      memcpy(&v133 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0), v15, v14);
      *(&v133 + v14 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
      if (xo_transition(a1, 0, &v133 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0), 0xBu) < 0)
      {
        v17 |= 0x48uLL;
        v22 = *(a1 + 168);
        v23 = *(a1 + 176);
        v25 = *(v22 + 24 * v23) | 0x20;
        goto LABEL_22;
      }

      v22 = *(a1 + 168);
      v23 = *(a1 + 176);
      v24 = 24 * v23;
      v25 = *(v22 + v24) | 0x20;
LABEL_15:
      *(v22 + v24) = v25;
LABEL_22:
      *(v22 + 24 * v23) = v25;
      goto LABEL_23;
    }

    if ((a10 & 0x40) == 0 && (v21 & 0x20) != 0)
    {
      xo_failure(a1, "key field emitted after normal value field: '%.*s'", a3, a2);
      goto LABEL_23;
    }

    if ((v21 & 0x40) == 0)
    {
      MEMORY[0x2A1C7C4A8](a1);
      memcpy(&v133 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0), v15, v14);
      *(&v133 + v14 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
      if (xo_transition(a1, 0, &v133 - ((v14 + 16) & 0xFFFFFFFFFFFFFFF0), 0xBu) < 0)
      {
        v17 |= 0x48uLL;
        v22 = *(a1 + 168);
        v23 = *(a1 + 176);
        v25 = *(v22 + 24 * v23) | 0x40;
        goto LABEL_22;
      }

      v22 = *(a1 + 168);
      v23 = *(a1 + 176);
      v24 = 24 * v23;
      v25 = *(v22 + v24) | 0x40;
      goto LABEL_15;
    }
  }

LABEL_23:
  v28 = a9;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  result = xo_xml_leader_len(a1, v15, v14);
  v30 = *(a1 + 16);
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      return xo_buf_append_div(a1, "data", (v17 << 8) & 0x800 | v17, v15, v14, v136, a5, a6, a7, a8, a9);
    }

    if (v30 != 4)
    {
      if (v30 != 5)
      {
        return result;
      }

      if ((v17 & 0x40) != 0)
      {
        goto LABEL_106;
      }

      if ((v17 & 0x10) != 0)
      {
        v35 = 10;
      }

      else if ((v17 & 0x20) != 0)
      {
        v35 = 11;
      }

      else
      {
        if (!a7)
        {
          a6 = "true";
          LODWORD(v135) = 11;
          a7 = 4;
          if (a8)
          {
            goto LABEL_157;
          }

          goto LABEL_152;
        }

        result = memchr("diouxXDOUeEfFgGaAcCp", a6[a7 - 1], 0x15uLL);
        if (result)
        {
          v35 = 11;
        }

        else
        {
          v35 = 10;
        }
      }

      LODWORD(v135) = v35;
      if (a8)
      {
        goto LABEL_157;
      }

LABEL_152:
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v133 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v97 = a8[2] - 48;
          ++a8;
        }

        while (v97 < 0xA);
        *a8 = 37;
      }

      v28 = strlen(a8);
LABEL_157:
      v98 = 0x2A1B69000uLL;
      if (v14)
      {
        v100 = (a1 + 80);
        v99 = *(a1 + 80);
        v101 = *(a1 + 72);
        v102 = &v99[-v101];
        if (!v15)
        {
LABEL_165:
          v105 = *(a1 + 72);
          if ((v99 + 1) >= v105 + *(a1 + 88))
          {
            v106 = &v99[-v105 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v107 = (*(v98 + 184))(*(a1 + 72), v106);
            v108 = *v100;
            if (!v107)
            {
              goto LABEL_169;
            }

            v109 = v107;
            v99 = (v107 + v108 - *(a1 + 72));
            *(a1 + 72) = v109;
            *(a1 + 80) = v99;
            *(a1 + 88) = v106;
          }

          *v99 = 0;
          v108 = *v100 + 1;
          *v100 = v108;
LABEL_169:
          v110 = *(a1 + 72);
          if (a5)
          {
            xo_data_append_content(a1, v136, a5, v17);
          }

          else
          {
            xo_do_format_field(a1, 0, a8, v28, v17);
          }

          v111 = v135;
          v112 = *(a1 + 72);
          v113 = *(a1 + 80);
          if ((v113 + 1) >= v112 + *(a1 + 88))
          {
            v114 = &v113[-v112 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v115 = (*(v98 + 184))();
            if (!v115)
            {
LABEL_176:
              result = xo_encoder_handle(a1, v111, &v102[*(a1 + 72)], *(a1 + 72) + v108 - v110, v17);
              v96 = *(a1 + 72);
LABEL_222:
              *(a1 + 80) = v96;
              return result;
            }

            v113 = (v115 + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = v115;
            *(a1 + 80) = v113;
            *(a1 + 88) = v114;
          }

          *v113 = 0;
          ++*v100;
          goto LABEL_176;
        }
      }

      else
      {
        xo_failure(a1, "missing field name: %s", a8);
        v100 = (a1 + 80);
        v99 = *(a1 + 80);
        v101 = *(a1 + 72);
        v102 = &v99[-v101];
        v15 = xo_format_value_missing_225;
        v14 = 18;
      }

      if (&v99[v14] >= v101 + *(a1 + 88))
      {
        v103 = &v99[v14 - v101 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v104 = xo_realloc(v101, v103);
        v99 = *v100;
        if (!v104)
        {
          v98 = 0x2A1B69000;
          goto LABEL_165;
        }

        v99 = &v99[v104 - *(a1 + 72)];
        *(a1 + 72) = v104;
        *(a1 + 80) = v99;
        *(a1 + 88) = v103;
        v98 = 0x2A1B69000uLL;
      }

      memcpy(v99, v15, v14);
      v99 = (*v100 + v14);
      *v100 = v99;
      goto LABEL_165;
    }

    if ((v17 & 0x40) != 0)
    {
      goto LABEL_106;
    }

    if (!a8)
    {
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v133 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v63 = a8[2] - 48;
          ++a8;
        }

        while (v63 < 0xA);
        *a8 = 37;
      }

      v28 = strlen(a8);
    }

    if (!v14)
    {
      xo_failure(a1, "missing field name: %s", a8);
      v15 = xo_format_value_missing_221;
      v14 = 18;
    }

    xo_buf_escape(a1, (a1 + 72), v15, v14, 0);
    v64 = *(a1 + 72);
    v65 = *(a1 + 80);
    if ((v65 + 1) >= v64 + *(a1 + 88))
    {
      v66 = (v65 - v64 + 8193) & 0xFFFFFFFFFFFFE000;
      v67 = xo_realloc(v64, v66);
      if (!v67)
      {
LABEL_104:
        if (a5)
        {
          xo_data_append_content(a1, v136, a5, v17);
        }

        else
        {
          xo_do_format_field(a1, 0, a8, v28, v17);
        }

        result = *(a1 + 72);
        v94 = *(a1 + 80);
        if (v94 + 1 >= &result[*(a1 + 88)])
        {
          v95 = ((v94 + 1) - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
          result = xo_realloc(result, v95);
          if (!result)
          {
            return result;
          }

          v94 = &result[*(a1 + 80) - *(a1 + 72)];
          *(a1 + 72) = result;
          *(a1 + 80) = v94;
          *(a1 + 88) = v95;
        }

        *v94 = 8226;
        v96 = *(a1 + 80) + 2;
        goto LABEL_222;
      }

      v65 = (v67 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v67;
      *(a1 + 80) = v65;
      *(a1 + 88) = v66;
    }

    *v65 = 8765;
    *(a1 + 80) += 2;
    goto LABEL_104;
  }

  if (!*(a1 + 16))
  {
    v36 = (v17 << 8) & 0x800;
    v37 = *(a1 + 376);
    v137 = *(a1 + 80) - *(a1 + 72);
    v138 = v37;
    v139 = *(a1 + 352);
    if (a5)
    {
      result = xo_data_append_content(a1, v136, a5, v36 | v17);
      if ((v17 & 0x8000) == 0)
      {
        return result;
      }
    }

    else
    {
      result = xo_do_format_field(a1, 0, a6, a7, v36 | v17);
      if ((v17 & 0x8000) == 0)
      {
        return result;
      }
    }

    return xo_format_humanize(a1, (a1 + 72), &v137, v36 | v17);
  }

  if (v30 == 1)
  {
    if ((v17 & 0x40) != 0)
    {
      goto LABEL_106;
    }

    v38 = result;
    if (!a8)
    {
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v133 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v39 = a8[2] - 48;
          ++a8;
        }

        while (v39 < 0xA);
        *a8 = 37;
      }

      v28 = strlen(a8);
    }

    if (!v14)
    {
      xo_failure(a1, "missing field name: %s", a8);
      v15 = xo_format_value_missing;
      v14 = 18;
    }

    if ((v135 & 2) != 0)
    {
      xo_buf_indent(a1, 0xFFFFFFFFuLL);
    }

    v40 = *(a1 + 72);
    v41 = *(a1 + 80);
    if ((v41 + 1) >= v40 + *(a1 + 88))
    {
      v42 = &v41[-v40 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v43 = xo_realloc(v40, v42);
      if (!v43)
      {
        goto LABEL_67;
      }

      v41 = (v43 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v43;
      *(a1 + 80) = v41;
      *(a1 + 88) = v42;
    }

    *v41 = 60;
    ++*(a1 + 80);
LABEL_67:
    if (!*v38)
    {
      goto LABEL_72;
    }

    v44 = *(a1 + 72);
    v45 = *(a1 + 80);
    if ((v45 + 1) >= v44 + *(a1 + 88))
    {
      v46 = &v45[-v44 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v47 = xo_realloc(v44, v46);
      if (!v47)
      {
        goto LABEL_72;
      }

      v45 = (v47 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v47;
      *(a1 + 80) = v45;
      *(a1 + 88) = v46;
    }

    *v45 = *v38;
    ++*(a1 + 80);
LABEL_72:
    xo_buf_escape(a1, (a1 + 72), v15, v14, 0);
    v49 = *(a1 + 120);
    v48 = *(a1 + 128);
    v50 = v48 - v49;
    if (v48 == v49)
    {
LABEL_79:
      if ((v17 & 0x80) != 0 && (*(a1 + 1) & 8) != 0 && xo_buf_has_room((a1 + 72), 10))
      {
        v57 = *(a1 + 80);
        v58 = *xo_format_value_attr;
        *(v57 + 8) = *&xo_format_value_attr[8];
        *v57 = v58;
        *(a1 + 80) += 10;
      }

      v59 = *(a1 + 72);
      v60 = *(a1 + 80);
      if ((*(a1 + 2) & 4) != 0)
      {
        *(a1 + 8) |= 0x10uLL;
        *(a1 + 368) = &v60[-v59];
      }

      if ((v60 + 1) >= v59 + *(a1 + 88))
      {
        v61 = &v60[-v59 + 0x2000] & 0xFFFFFFFFFFFFE000;
        v62 = xo_realloc(v59, v61);
        if (!v62)
        {
          goto LABEL_89;
        }

        v60 = (v62 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v62;
        *(a1 + 80) = v60;
        *(a1 + 88) = v61;
      }

      *v60 = 62;
      ++*(a1 + 80);
LABEL_89:
      if (a5)
      {
        xo_data_append_content(a1, v136, a5, v17);
      }

      else
      {
        xo_do_format_field(a1, 0, a8, v28, v17);
      }

      v81 = *(a1 + 72);
      v82 = *(a1 + 80);
      if ((v82 + 1) >= v81 + *(a1 + 88))
      {
        v83 = (v82 - v81 + 8193) & 0xFFFFFFFFFFFFE000;
        v84 = xo_realloc(v81, v83);
        if (!v84)
        {
          goto LABEL_131;
        }

        v82 = (v84 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v84;
        *(a1 + 80) = v82;
        *(a1 + 88) = v83;
      }

      *v82 = 12092;
      *(a1 + 80) += 2;
LABEL_131:
      if (!*v38)
      {
        goto LABEL_136;
      }

      v85 = *(a1 + 72);
      v86 = *(a1 + 80);
      if ((v86 + 1) >= v85 + *(a1 + 88))
      {
        v87 = &v86[-v85 + 0x2000] & 0xFFFFFFFFFFFFE000;
        v88 = xo_realloc(v85, v87);
        if (!v88)
        {
          goto LABEL_136;
        }

        v86 = (v88 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v88;
        *(a1 + 80) = v86;
        *(a1 + 88) = v87;
      }

      *v86 = *v38;
      ++*(a1 + 80);
LABEL_136:
      xo_buf_escape(a1, (a1 + 72), v15, v14, 0);
      result = *(a1 + 72);
      v89 = *(a1 + 80);
      if (v89 + 1 >= &result[*(a1 + 88)])
      {
        v90 = (v89 + 1 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        result = xo_realloc(result, v90);
        if (!result)
        {
LABEL_140:
          if ((v135 & 2) == 0)
          {
            return result;
          }

          result = *(a1 + 72);
          v91 = *(a1 + 80);
          if (v91 + 1 >= &result[*(a1 + 88)])
          {
            v92 = (v91 + 1 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
            result = xo_realloc(result, v92);
            if (!result)
            {
              return result;
            }

            v91 = &result[*(a1 + 80) - *(a1 + 72)];
            *(a1 + 72) = result;
            *(a1 + 80) = v91;
            *(a1 + 88) = v92;
          }

          v93 = 10;
LABEL_221:
          *v91 = v93;
          v96 = *(a1 + 80) + 1;
          goto LABEL_222;
        }

        v89 = &result[*(a1 + 80) - *(a1 + 72)];
        *(a1 + 72) = result;
        *(a1 + 80) = v89;
        *(a1 + 88) = v90;
      }

      *v89 = 62;
      ++*(a1 + 80);
      goto LABEL_140;
    }

    if (v49)
    {
      v52 = *(a1 + 72);
      v51 = *(a1 + 80);
      if (v51 + v50 < v52 + *(a1 + 88))
      {
LABEL_77:
        memcpy(v51, v49, v50);
        *(a1 + 80) += v50;
        goto LABEL_78;
      }

      v53 = (v51 + v50 - v52 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      v54 = *(a1 + 72);
      v134 = v53;
      v55 = xo_realloc(v54, v53);
      if (v55)
      {
        v56 = v55;
        v51 = (v55 + *(a1 + 80) - *(a1 + 72));
        *(a1 + 72) = v56;
        *(a1 + 80) = v51;
        *(a1 + 88) = v134;
        goto LABEL_77;
      }
    }

LABEL_78:
    *(a1 + 128) = *(a1 + 120);
    goto LABEL_79;
  }

  if (v30 != 2)
  {
    return result;
  }

  if ((v17 & 0x40) == 0)
  {
    if (!a8)
    {
      MEMORY[0x2A1C7C4A8](result);
      a8 = &v133 - ((a7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(a8, a7 + 1);
      memcpy(a8, a6, a7);
      a8[a7] = 0;
      if (*a8 == 37 && (a8[1] - 48) <= 9)
      {
        do
        {
          v31 = a8[2] - 48;
          ++a8;
        }

        while (v31 < 0xA);
        *a8 = 37;
      }

      v28 = strlen(a8);
    }

    v32 = *a1;
    v33 = (*(a1 + 168) + 24 * *(a1 + 176));
    v34 = *v33;
    if ((*a1 & 0x2000) != 0)
    {
      v34 |= 1u;
      *v33 = v34;
      *a1 = v32 & 0xFFFFFFFFFFFFDFFFLL;
    }

    if ((v34 & 1) == 0)
    {
      *v33 = v34 | 1;
      goto LABEL_121;
    }

    v72 = *(a1 + 72);
    v73 = *(a1 + 80);
    if ((v73 + 1) >= v72 + *(a1 + 88))
    {
      v74 = &v73[-v72 + 0x2000] & 0xFFFFFFFFFFFFE000;
      v75 = xo_realloc(v72, v74);
      if (!v75)
      {
LABEL_115:
        if ((v17 & 0x2000) == 0 && (*a1 & 2) != 0)
        {
          v76 = *(a1 + 72);
          v77 = *(a1 + 80);
          if ((v77 + 1) >= v76 + *(a1 + 88))
          {
            v78 = &v77[-v76 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v79 = xo_realloc(v76, v78);
            if (!v79)
            {
              goto LABEL_121;
            }

            v77 = (v79 + *(a1 + 80) - *(a1 + 72));
            *(a1 + 72) = v79;
            *(a1 + 80) = v77;
            *(a1 + 88) = v78;
          }

          *v77 = 10;
          ++*(a1 + 80);
        }

LABEL_121:
        if ((v17 & 0x10) == 0)
        {
          if ((v17 & 0x20) != 0)
          {
            is_numeric = 1;
          }

          else
          {
            if (a5)
            {
              goto LABEL_124;
            }

            if (v28)
            {
              is_numeric = xo_format_is_numeric(a8, v28);
            }

            else
            {
              a8 = "true";
              is_numeric = 1;
              v28 = 4;
            }
          }

LABEL_178:
          if (!v14)
          {
            xo_failure(a1, "missing field name: %s", a8);
            v15 = xo_format_value_missing_219;
            v14 = 18;
          }

          if ((v17 & 0x2000) != 0)
          {
            if ((v34 & 1) != 0 && (v135 & 2) != 0)
            {
              if (xo_buf_has_room((a1 + 72), 1))
              {
                *(*(a1 + 80))++ = 10;
              }
            }

            else if ((v135 & 2) == 0)
            {
              goto LABEL_206;
            }

            xo_buf_indent(a1, 0xFFFFFFFFuLL);
LABEL_206:
            if (is_numeric)
            {
              v69 = a1;
              if (a5)
              {
                return xo_data_append_content(a1, v136, a5, v17);
              }

              v70 = a8;
              v71 = v28;
              v68 = v17;
              return xo_do_format_field(v69, 0, v70, v71, v68);
            }

            v128 = *(a1 + 72);
            v129 = *(a1 + 80);
            if ((v129 + 1) >= v128 + *(a1 + 88))
            {
              v130 = &v129[-v128 + 0x2000] & 0xFFFFFFFFFFFFE000;
              v131 = xo_realloc(v128, v130);
              if (!v131)
              {
LABEL_213:
                if (a5)
                {
                  xo_data_append_content(a1, v136, a5, v17);
                }

                else
                {
                  xo_do_format_field(a1, 0, a8, v28, v17);
                }

                result = *(a1 + 72);
                v91 = *(a1 + 80);
                if (v91 + 1 >= &result[*(a1 + 88)])
                {
                  v132 = (v91 + 1 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
                  result = xo_realloc(result, v132);
                  if (!result)
                  {
                    return result;
                  }

                  v91 = &result[*(a1 + 80) - *(a1 + 72)];
                  *(a1 + 72) = result;
                  *(a1 + 80) = v91;
                  *(a1 + 88) = v132;
                }

                v93 = 34;
                goto LABEL_221;
              }

              v129 = (v131 + *(a1 + 80) - *(a1 + 72));
              *(a1 + 72) = v131;
              *(a1 + 80) = v129;
              *(a1 + 88) = v130;
            }

            *v129 = 34;
            ++*(a1 + 80);
            goto LABEL_213;
          }

          if ((v135 & 2) != 0)
          {
            xo_buf_indent(a1, 0xFFFFFFFFuLL);
          }

          v116 = *(a1 + 72);
          v117 = *(a1 + 80);
          if ((v117 + 1) >= v116 + *(a1 + 88))
          {
            v118 = &v117[-v116 + 0x2000] & 0xFFFFFFFFFFFFE000;
            v119 = xo_realloc(v116, v118);
            v120 = *(a1 + 80);
            if (!v119)
            {
LABEL_187:
              v121 = *(a1 + 72);
              xo_buf_escape(a1, (a1 + 72), v15, v14, 0);
              v122 = *(a1 + 72);
              v123 = *(a1 + 80);
              if ((*(a1 + 2) & 0x10) != 0)
              {
                v124 = v120 - v121;
                if (v120 - v121 < v123 - v122)
                {
                  do
                  {
                    v125 = *(a1 + 72);
                    if (*(v125 + v124) == 45)
                    {
                      *(v125 + v124) = 95;
                    }

                    ++v124;
                  }

                  while (v124 < v123 - v122);
                  v122 = *(a1 + 72);
                  v123 = *(a1 + 80);
                }
              }

              if ((v123 + 1) >= v122 + *(a1 + 88))
              {
                v126 = (v123 - v122 + 8193) & 0xFFFFFFFFFFFFE000;
                v127 = xo_realloc(v122, v126);
                if (!v127)
                {
LABEL_197:
                  if ((v135 & 2) != 0 && xo_buf_has_room((a1 + 72), 1))
                  {
                    *(*(a1 + 80))++ = 32;
                  }

                  goto LABEL_206;
                }

                v123 = (v127 + *(a1 + 80) - *(a1 + 72));
                *(a1 + 72) = v127;
                *(a1 + 80) = v123;
                *(a1 + 88) = v126;
              }

              *v123 = 14882;
              *(a1 + 80) += 2;
              goto LABEL_197;
            }

            v117 = (v119 + v120 - *(a1 + 72));
            *(a1 + 72) = v119;
            *(a1 + 80) = v117;
            *(a1 + 88) = v118;
          }

          *v117 = 34;
          v120 = *(a1 + 80) + 1;
          *(a1 + 80) = v120;
          goto LABEL_187;
        }

LABEL_124:
        is_numeric = 0;
        goto LABEL_178;
      }

      v73 = (v75 + *(a1 + 80) - *(a1 + 72));
      *(a1 + 72) = v75;
      *(a1 + 80) = v73;
      *(a1 + 88) = v74;
    }

    *v73 = 44;
    ++*(a1 + 80);
    goto LABEL_115;
  }

LABEL_106:
  if (!a5)
  {
    v68 = v17 | 0x800;
    v69 = a1;
    v70 = a6;
    v71 = a7;
    return xo_do_format_field(v69, 0, v70, v71, v68);
  }

  return result;
}

uint64_t xo_parse_args(int a1, uint64_t *a2)
{
  if (!xo_program)
  {
    xo_program = *a2;
    v4 = xo_program;
    v5 = strrchr(xo_program, 47);
    if (v5)
    {
      v4 = v5 + 1;
      xo_program = (v5 + 1);
    }

    v6 = strlen(v4);
    if (v6 >= 6)
    {
      v7 = &v4[v6 - 5];
      if (!strcmp(v7, ".test"))
      {
        *v7 = 0;
      }
    }
  }

  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  v8 = xo_default_handle();
  v9 = 1;
  if (a1 < 2)
  {
LABEL_28:
    if ((*(v8 + 3) & 2) != 0 && isatty(1))
    {
      *v8 |= 0x4000000uLL;
    }

    a2[v9] = 0;
    return v9;
  }

  LODWORD(v10) = 1;
  while (1)
  {
    v11 = a2[v10];
    if (!v11 || strncmp(a2[v10], xo_parse_args_libxo_opt, 7uLL))
    {
      if (v9 != v10)
      {
        a2[v9] = v11;
      }

      v9 = (v9 + 1);
      goto LABEL_16;
    }

    v12 = (v11 + 7);
    v13 = *(v11 + 7);
    if (v13 <= 0x39)
    {
      break;
    }

    if (v13 != 58)
    {
      if (v13 != 61)
      {
        goto LABEL_35;
      }

      v12 = (v11 + 8);
    }

    if ((xo_set_options(v8, v12) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_16:
    LODWORD(v10) = v10 + 1;
    if (v10 >= a1)
    {
      goto LABEL_28;
    }
  }

  if (*(v11 + 7))
  {
    if (v13 == 45 && !strcmp((v11 + 8), "check"))
    {
      exit(121);
    }

LABEL_35:
    xo_warnx("unknown libxo option: '%s'");
    return 0xFFFFFFFFLL;
  }

  v10 = v10 + 1;
  v14 = a2[v10];
  if (v14)
  {
    if ((xo_set_options(v8, v14) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_16;
  }

  xo_warnx("missing libxo option");
  return 0xFFFFFFFFLL;
}

size_t xo_dump_stack(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v1 = xo_default_handle();
  }

  v2 = MEMORY[0x29EDCA610];
  result = fwrite("Stack dump:\n", 0xCuLL, 1uLL, *MEMORY[0x29EDCA610]);
  if (*(v1 + 176) >= 1)
  {
    v4 = 0;
    v5 = (*(v1 + 168) + 32);
    do
    {
      v6 = *(v5 - 1);
      v7 = "unknown";
      if (v6 <= 0xE)
      {
        v7 = xo_state_name_names[v6];
      }

      ++v4;
      v8 = *v5;
      if (!*v5)
      {
        v8 = "--";
      }

      result = fprintf(*v2, "   [%d] %s '%s' [%x]\n", v4, v7, v8, *(v5 - 2));
      v5 += 3;
    }

    while (v4 < *(v1 + 176));
  }

  return result;
}

char *xo_set_version_h(char *result, char *__s)
{
  v3 = result;
  if (result)
  {
    if (!__s)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!*xo_default_inited())
  {
    xo_default_init();
  }

  result = xo_default_handle();
  v3 = result;
  if (__s)
  {
LABEL_7:
    result = strchr(__s, 34);
    if (!result)
    {
      v9 = *(v3 + 8);
      switch(v9)
      {
        case 5:

          return xo_encoder_handle(v3, 16, 0, __s, 0);
        case 2:
          result = xo_strndup(__s, 0xFFFFFFFFFFFFFFFFLL);
          *(v3 + 54) = result;
          break;
        case 1:
          return xo_attr_h(v3, "version", "%s", v4, v5, v6, v7, v8, __s);
      }
    }
  }

  return result;
}

uint64_t xo_emit_warn_hcv(uint64_t result, int a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a5;
  v9 = result;
  v58 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v9 = result;
  }

  if (a4)
  {
    xo_open_marker_h(v9, "xo_emit_warn_hcv");
    if (a2)
    {
      v10 = "__warning";
    }

    else
    {
      v10 = "__error";
    }

    xo_transition(v9, 0, v10, 1u);
    if (xo_program)
    {
      xo_emit("{wc:program}", v11, v12, v13, v14, v15, v16, v17, xo_program);
    }

    if (*(v9 + 16) - 1 <= 1)
    {
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      v33 = 0x2000;
      v31 = xo_realloc(0, 0x2000);
      v32 = v31;
      xo_depth_check(v29, 128);
      *(&v40 + 1) = a5;
      xo_do_emit(v29, 0, a4);
      *(&v40 + 1) = 0;
      xo_format_value(v9, "message", 7uLL, v31, v32 - v31, 0, 0, 0, 0, 0);
      xo_free(*(&v38 + 1));
      if (v31)
      {
        xo_free(v31);
      }

      v5 = a5;
    }

    xo_emit_hv(v9, a4, v5);
    v18 = strlen(a4);
    if (v18 >= 1 && a4[v18 - 1] != 10)
    {
      if (a3 >= 1)
      {
        v26 = strerror(a3);
        if (v26)
        {
          xo_emit_h(v9, ": {G:strerror}{g:error/%s}", v20, v21, v22, v23, v24, v25, v26);
        }
      }

      xo_emit("\n", v19, v20, v21, v22, v23, v24, v25, v27);
    }

    xo_close_marker_h(v9, "xo_emit_warn_hcv");
    return xo_flush_h(v9);
  }

  return result;
}

void xo_emit_err_v(int a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  xo_emit_warn_hcv(0, 0, a2, a3, a4);
  xo_finish();
  exit(a1);
}

uint64_t xo_get_private(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *(a1 + 464);
}

uint64_t xo_set_private(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 464) = a2;
  return result;
}

uint64_t xo_get_encoder(uint64_t a1)
{
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    a1 = xo_default_handle();
  }

  return *(a1 + 456);
}

uint64_t xo_set_encoder(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
  }

  *(result + 16) = 5;
  *(result + 456) = a2;
  return result;
}

uint64_t xo_explicit_transition(uint64_t result, int a2, char *__s1, uint64_t a4)
{
  v7 = result;
  if (!result)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    result = xo_default_handle();
    v7 = result;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {

      return xo_do_open_instance(v7, a4, __s1);
    }

    else if (a2 == 6)
    {
      xo_depth_change(v7, __s1, 1, 1, 5, (a4 >> 7) & 8);
      v8 = *v7;
      if ((*v7 & 0x2000) != 0)
      {
        *(*(v7 + 168) + 24 * *(v7 + 176)) |= 1u;
        *v7 = v8 & 0xFFFFFFFFFFFFDFFFLL;
      }

      return xo_do_close_instance(v7, __s1);
    }
  }

  else if (a2 == 3)
  {

    return xo_do_open_list(v7, a4, __s1);
  }

  else if (a2 == 4)
  {
    xo_depth_change(v7, __s1, 1, 1, 3, (a4 >> 7) & 8 | (*v7 >> 13) & 1 | 2);

    return xo_do_close_list(v7, __s1);
  }

  return result;
}

uint64_t xo_do_open_list(uint64_t a1, uint64_t a2, char *__s)
{
  v5 = a1;
  v24[1] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v5 = xo_default_handle();
  }

  if ((*v5 & 2) != 0)
  {
    v6 = "\n";
  }

  else
  {
    v6 = &xo_version_extra;
  }

  v7 = *(v5 + 16);
  if (v7 == 5)
  {
    v21 = xo_encoder_handle(v5, 4, __s, 0, a2);
LABEL_32:
    v22 = 0;
    goto LABEL_35;
  }

  if (v7 != 2)
  {
    v21 = 0;
    goto LABEL_32;
  }

  if ((*v5 & 0x10000) == 0 && (*(v5 + 8) & 4) == 0)
  {
    xo_emit_top(v5, v6);
  }

  if (!__s)
  {
    xo_failure(v5, "NULL passed for list name");
    __s = "failure";
  }

  v8 = *v5;
  v9 = (*(v5 + 168) + 24 * *(v5 + 176));
  v10 = *v9;
  if ((*v5 & 0x2000) != 0)
  {
    v10 |= 1u;
    *v9 = v10;
    v8 &= ~0x2000uLL;
    *v5 = v8;
  }

  v11 = ",\n";
  if ((v8 & 2) == 0)
  {
    v11 = ", ";
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = &xo_version_extra;
  }

  *v9 = v10 | 1;
  v13 = __s;
  if ((v8 & 0x100000) != 0)
  {
    v14 = strlen(__s);
    v15 = MEMORY[0x2A1C7C4A8](v14);
    v13 = v24 - ((v15 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, v15 + 1);
    if (v13 < &v13[v14 + 1])
    {
      v16 = v13 - 1;
      v17 = __s;
      do
      {
        v19 = *v17++;
        v18 = v19;
        if (v19 == 45)
        {
          v18 = 95;
        }

        *++v16 = v18;
      }

      while (v16 < &v13[v14]);
    }
  }

  if ((v8 & 2) != 0)
  {
    v20 = (*(v5 + 20) & (*(v5 + 8) << 29 >> 31)) + *(v5 + 20) * *(v5 + 18);
  }

  else
  {
    v20 = 0;
  }

  v21 = xo_printf(v5, "%s%*s%s: [%s", v12, v20, &xo_version_extra, v13, v6);
  v22 = 1;
LABEL_35:
  xo_depth_change(v5, __s, 1, v22, 3, (a2 >> 7) & 8 | 2);
  return v21;
}

uint64_t xo_do_open_instance(uint64_t a1, uint64_t a2, char *__s)
{
  v5 = a1;
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v5 = xo_default_handle();
  }

  if ((*v5 & 2) != 0)
  {
    v6 = "\n";
  }

  else
  {
    v6 = &xo_version_extra;
  }

  if (!__s)
  {
    xo_failure(v5, "NULL passed for instance name");
    __s = "failure";
  }

  v7 = strlen(__s);
  v8 = xo_xml_leader_len(v5, __s, v7);
  v9 = *v5;
  v10 = *v5 | a2;
  v11 = *(v5 + 16);
  switch(v11)
  {
    case 5:
      v17 = xo_encoder_handle(v5, 8, __s, 0, v10);
      break;
    case 2:
      v13 = (*(v5 + 168) + 24 * *(v5 + 176));
      v14 = *v13;
      if ((v9 & 0x2000) != 0)
      {
        v14 |= 1u;
        *v13 = v14;
        v9 &= ~0x2000uLL;
        *v5 = v9;
      }

      v15 = ",\n";
      if ((v9 & 2) == 0)
      {
        v15 = ", ";
      }

      if ((v14 & 1) == 0)
      {
        v15 = &xo_version_extra;
      }

      *v13 = v14 | 1;
      if ((v9 & 2) != 0)
      {
        v16 = (*(v5 + 20) & (*(v5 + 8) << 29 >> 31)) + *(v5 + 20) * *(v5 + 18);
      }

      else
      {
        v16 = 0;
      }

      v17 = xo_printf(v5, "%s%*s{%s", v15, v16, &xo_version_extra, v6);
      break;
    case 1:
      if ((v9 & 2) != 0)
      {
        v12 = (*(v5 + 20) & (*(v5 + 8) << 29 >> 31)) + *(v5 + 20) * *(v5 + 18);
      }

      else
      {
        v12 = 0;
      }

      v18 = xo_printf(v5, "%*s<%s%s", v12, &xo_version_extra, v8, __s);
      v19 = v18;
      v21 = *(v5 + 120);
      v20 = *(v5 + 128);
      v22 = v20 - v21;
      if (v20 == v21)
      {
        goto LABEL_35;
      }

      v19 = v22 + v18;
      if (v21)
      {
        v24 = *(v5 + 72);
        v23 = *(v5 + 80);
        if (v23 + v22 < v24 + *(v5 + 88))
        {
LABEL_33:
          memcpy(v23, v21, v22);
          *(v5 + 80) += v22;
          goto LABEL_34;
        }

        v25 = (v23 + v22 - v24 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v26 = xo_realloc(*(v5 + 72), v25);
        if (v26)
        {
          v27 = v26;
          v23 = (v26 + *(v5 + 80) - *(v5 + 72));
          *(v5 + 72) = v27;
          *(v5 + 80) = v23;
          *(v5 + 88) = v25;
          goto LABEL_33;
        }
      }

LABEL_34:
      *(v5 + 128) = *(v5 + 120);
LABEL_35:
      v17 = xo_printf(v5, ">%s", v6) + v19;
      break;
    default:
      v17 = 0;
      break;
  }

  xo_depth_change(v5, __s, 1, 1, 5, (v10 >> 7) & 8);
  return v17;
}

uint64_t xo_do_close_instance(uint64_t a1, char *__s)
{
  v3 = a1;
  v16[1] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!*xo_default_inited())
    {
      xo_default_init();
    }

    v3 = xo_default_handle();
  }

  if ((*v3 & 2) != 0)
  {
    v4 = "\n";
  }

  else
  {
    v4 = &xo_version_extra;
  }

  if (!__s)
  {
    v5 = *(v3 + 168) + 24 * *(v3 + 176);
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = strlen(*(v5 + 8));
      v8 = MEMORY[0x2A1C7C4A8](v7);
      __s = v16 - ((v8 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(__s, v8 + 1);
      memcpy(__s, v6, v7 + 1);
    }

    else if ((*v5 & 8) != 0)
    {
      __s = 0;
    }

    else
    {
      xo_failure(v3, "missing name without 'dtrt' mode");
      __s = "failure";
    }
  }

  v9 = strlen(__s);
  v10 = xo_xml_leader_len(v3, __s, v9);
  result = 0;
  v12 = *(v3 + 16);
  if (v12 <= 1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_24;
    }

    if (v12 == 1)
    {
      xo_depth_change(v3, __s, -1, -1, 6, 0);
      v13 = 0;
      if ((*v3 & 2) != 0)
      {
        v13 = (*(v3 + 20) & (*(v3 + 8) << 29 >> 31)) + *(v3 + 20) * *(v3 + 18);
      }

      return xo_printf(v3, "%*s</%s%s>%s", v13, &xo_version_extra, v10, __s, v4);
    }
  }

  else
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        if (v12 == 5)
        {
          xo_depth_change(v3, __s, -1, 0, 6, 0);
          return xo_encoder_handle(v3, 9, __s, 0, 0);
        }

        return result;
      }

LABEL_24:
      xo_depth_change(v3, __s, -1, 0, 6, 0);
      return 0;
    }

    if ((*v3 & 2) != 0)
    {
      v14 = "\n";
    }

    else
    {
      v14 = &xo_version_extra;
    }

    xo_depth_change(v3, __s, -1, -1, 6, 0);
    v15 = 0;
    if ((*v3 & 2) != 0)
    {
      v15 = (*(v3 + 20) & (*(v3 + 8) << 29 >> 31)) + *(v3 + 20) * *(v3 + 18);
    }

    result = xo_printf(v3, "%s%*s}", v14, v15, &xo_version_extra);
    *(*(v3 + 168) + 24 * *(v3 + 176)) |= 1u;
  }

  return result;
}

uint64_t xo_do_close_list(uint64_t a1, char *__s1)
{
  v2 = __s1;
  v13[1] = *MEMORY[0x29EDCA608];
  if (!__s1)
  {
    v4 = *(a1 + 168) + 24 * *(a1 + 176);
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = strlen(*(v4 + 8));
      v7 = MEMORY[0x2A1C7C4A8](v6);
      v2 = v13 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
      bzero(v2, v7 + 1);
      memcpy(v2, v5, v6 + 1);
    }

    else if ((*v4 & 8) != 0)
    {
      v2 = 0;
    }

    else
    {
      xo_failure(a1, "missing name without 'dtrt' mode");
      v2 = "failure";
    }
  }

  v8 = *(a1 + 16);
  if (v8 == 5)
  {
    xo_depth_change(a1, v2, -1, 0, 4, 2);
    return xo_encoder_handle(a1, 5, v2, 0, 0);
  }

  else
  {
    if (v8 == 2)
    {
      v9 = (*(a1 + 168) + 24 * *(a1 + 176));
      v10 = &xo_version_extra;
      if (*v9)
      {
        if ((*a1 & 2) != 0)
        {
          v10 = "\n";
        }

        else
        {
          v10 = &xo_version_extra;
        }
      }

      *v9 |= 1u;
      xo_depth_change(a1, v2, -1, -1, 4, 2);
      v11 = xo_indent(a1);
      result = xo_printf(a1, "%s%*s]", v10, v11, &xo_version_extra);
    }

    else
    {
      xo_depth_change(a1, v2, -1, 0, 4, 2);
      result = 0;
    }

    *(*(a1 + 168) + 24 * *(a1 + 176)) |= 1u;
  }

  return result;
}

_DWORD *xo_default_init()
{
  v0 = xo_default_handle();
  xo_init_handle(v0);
  if ((v0[1] & 1) == 0)
  {
    v1 = getenv("LIBXO_OPTIONS");
    if (v1)
    {
      xo_set_options_simple(v0, v1);
    }
  }

  result = xo_default_inited();
  *result = 1;
  return result;
}

uint64_t xo_set_options_simple(_BYTE *a1, char *__s)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v4 = strlen(__s);
  v5 = v4 + 1;
  v6 = v14 - ((MEMORY[0x2A1C7C4A8](v4) + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v6, v5);
  result = memcpy(v6, __s, v5);
  v8 = &v6[v5 - 1];
  if (v6 < v8)
  {
    do
    {
      v9 = strchr(v6, 44);
      v10 = v9;
      if (v9)
      {
        *v9 = 0;
        v10 = v9 + 1;
      }

      v11 = strchr(v6, 61);
      v12 = v11;
      if (v11)
      {
        *v11 = 0;
        v12 = v11 + 1;
      }

      if (!strcmp("colors", v6))
      {
        result = xo_set_color_map(a1, v12);
        if (!v10)
        {
          return result;
        }
      }

      else
      {
        result = xo_name_lookup(xo_xof_simple_names, v6, 0xFFFFFFFFFFFFFFFFLL);
        if (result)
        {
          v13 = *a1 | result;
        }

        else
        {
          result = strcmp(v6, "no-color");
          if (result)
          {
            return xo_failure(a1, "unknown simple option: %s", v6);
          }

          v13 = *a1 & 0xFFFFFFFFFDFFFFFFLL;
        }

        *a1 = v13;
        if (!v10)
        {
          return result;
        }
      }

      v6 = v10;
    }

    while (v10 < v8);
  }

  return result;
}

const char *xo_name_lookup(void *a1, char *__s2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v3 = strlen(__s2);
  }

  v6 = v3 + 1;
  v7 = MEMORY[0x29EDCA600];
  for (i = __s2; ; ++i)
  {
    v9 = *i;
    if ((v9 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    --v6;
  }

  if (__maskrune(v9, 0x4000uLL))
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = &__s2[v3];
  do
  {
    v12 = *v10--;
    v11 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v13 = __maskrune(v11, 0x4000uLL);
    }

    else
    {
      v13 = *(v7 + 4 * v11 + 60) & 0x4000;
    }

    --v6;
  }

  while (v13);
  if (!*i)
  {
    return 0;
  }

  result = a1[1];
  if (result)
  {
    while (strncmp(result, i, v6))
    {
      result = a1[3];
      a1 += 2;
      if (!result)
      {
        return result;
      }
    }

    return *a1;
  }

  return result;
}

uint64_t xo_buf_escape(uint64_t a1, uint64_t *a2, void *__src, uint64_t __n, unsigned int a5)
{
  v6 = __n;
  v10 = a2[1];
  if (v10 + __n >= *a2 + a2[2])
  {
    v11 = (v10 + __n - *a2 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(*a2, v11);
    if (!result)
    {
      return result;
    }

    v13 = result;
    v10 = (result + a2[1] - *a2);
    *a2 = v13;
    a2[1] = v10;
    a2[2] = v11;
  }

  result = memcpy(v10, __src, v6);
  v14 = *(a1 + 16);
  if (v14 > 2)
  {
    if (v14 == 4)
    {
      result = xo_escape_sdparams(a2, v6);
      goto LABEL_12;
    }

    if (v14 != 3)
    {
      goto LABEL_13;
    }

LABEL_10:
    result = xo_escape_xml(a2, v6, a5);
    goto LABEL_12;
  }

  if (v14 == 1)
  {
    goto LABEL_10;
  }

  if (v14 == 2)
  {
    result = xo_escape_json(a2, v6);
LABEL_12:
    v6 = result;
  }

LABEL_13:
  a2[1] += v6;
  return result;
}

uint64_t xo_do_format_field(uint64_t *a1, uint64_t *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a1;
  if ((a5 & 0x100) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = *a1;
  v9 = 2;
  if ((*a1 & 0x20000000) == 0)
  {
    if (*(a1 + 8))
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  v98 = a1[47];
  v97 = v9;
  if ((a5 & 0x80000) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  v104 = v10;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1 + 9;
  }

  v95 = *v11;
  v96 = v11[1];
  if (a4 < 1)
  {
    if ((*&v5 & 0x180000) == 0)
    {
      return 0;
    }

LABEL_250:
    v91 = xo_format_gettext(v6, v5, v96 - v95, v98, v97);
    v92 = v91;
    if ((*(v6 + 2) & 0x20) != 0)
    {
      *(v6 + 376) += v91 - v98;
    }

    if ((*(v6 + 8) & 8) == 0)
    {
      return 0;
    }

    result = 0;
    *(v6 + 352) += v92 - v98;
    return result;
  }

  v12 = 0;
  v13 = a3;
  v14 = &a3[a4];
  v118[0] = 0;
  v100 = &a3[a4 - 2];
  v102 = &a3[a4 - 1];
  v103 = v5;
  v117 = 0u;
  v111 = v7;
  v114 = v11;
  v115 = &a3[a4];
  while (2)
  {
    v15 = *v13;
    if (v15 != 37)
    {
      if (!v12)
      {
        v12 = v13;
      }

      if (v15 == 92)
      {
        if (v13[1])
        {
          v16 = v13 + 1;
        }

        else
        {
          v16 = v13;
        }
      }

      else
      {
        v16 = v13;
      }

      goto LABEL_226;
    }

    v16 = v13 + 1;
    if (v13 + 1 < v14 && *v16 == 37)
    {
      if (!v12)
      {
        v12 = (v13 + 1);
      }

      goto LABEL_226;
    }

    if ((v5 & 0x800) == 0 && v12)
    {
      v17 = xo_format_string_direct(v6, v11, v5 | 0x4000, 0, v12, v13 - v12, 0xFFFFFFFF, v104, 2);
      v8 = *v6;
      if ((*v6 & 0x200000) != 0)
      {
        *(v6 + 376) += v17;
      }

      if ((*(v6 + 8) & 8) != 0)
      {
        *(v6 + 352) += v17;
      }
    }

    v118[0] = 0;
    HIDWORD(v117) = -1;
    *(&v117 + 4) = -1;
    if (*v16 != 64)
    {
      v18 = v13;
      if ((v8 & 8) == 0)
      {
        goto LABEL_45;
      }

LABEL_51:
      if (v7 != 1)
      {
        v61 = *(v6 + 16) - 1;
        if (v61 >= 5 || ((0x1Bu >> v61) & 1) == 0)
        {
LABEL_129:
          v21 = 1;
          if ((v5 & 0x800) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    v18 = v13 + 2;
    if (v13 + 2 < v14)
    {
      v19 = v100 - v13;
      do
      {
        v20 = *v18;
        if (v20 == 42)
        {
          if ((v8 & 0x200) == 0)
          {
            *(v6 + 200) += 8;
          }
        }

        else if (v20 == 64)
        {
          goto LABEL_44;
        }

        ++v18;
        --v19;
      }

      while (v19);
      v18 = v14;
    }

LABEL_44:
    if ((v8 & 8) != 0)
    {
      goto LABEL_51;
    }

LABEL_45:
    v21 = 0;
    if ((v8 & 0x40) != 0 && v7)
    {
      if (*(v6 + 16) != 3)
      {
        goto LABEL_129;
      }

LABEL_52:
      v21 = 0;
    }

    if ((v5 & 0x800) != 0)
    {
LABEL_54:
      v21 = 1;
    }

LABEL_55:
    v16 = v18 + 1;
    v116 = v21;
    v22 = 0;
    if (v18 + 1 >= v14)
    {
      v113 = 0;
      LOBYTE(v23) = 0;
      __ca = 32;
      goto LABEL_95;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v102 - v18;
    v31 = -1;
    while (1)
    {
      v32 = *v16;
      if (v32 <= 0x6B)
      {
        break;
      }

      if (*v16 > 0x73u)
      {
        if (v32 == 116)
        {
          ++v26;
        }

        else
        {
          if (v32 != 122)
          {
            goto LABEL_77;
          }

          ++v27;
        }
      }

      else if (v32 == 108)
      {
        v23 = (v23 + 1);
      }

      else
      {
        if (v32 != 113)
        {
          goto LABEL_77;
        }

        v28 = (v28 + 1);
      }

LABEL_89:
      ++v16;
      if (!--v30)
      {
        goto LABEL_90;
      }
    }

    if (*v16 > 0x67u)
    {
      if (v32 == 104)
      {
        ++v24;
      }

      else
      {
        if (v32 != 106)
        {
          goto LABEL_77;
        }

        v25 = (v25 + 1);
      }

      goto LABEL_89;
    }

    if (v32 == 45)
    {
      v22 = 1;
      goto LABEL_89;
    }

    if (v32 == 46)
    {
      if (++v29 >= 3)
      {
        xo_failure(v6, "Too many dots in format: '%s'", v25);
        return -1;
      }

      goto LABEL_89;
    }

LABEL_77:
    v33 = v32;
    v34 = v32 - 48;
    if (v34 <= 9)
    {
      if (v31 < 0)
      {
        v31 = v33 == 48;
        v34 = *v16 - 48;
      }

      v35 = *(&v117 + v29 + 1);
      if (v35 <= 0)
      {
        v36 = 0;
      }

      else
      {
        v36 = 10 * v35;
      }

      *(&v117 + v29 + 1) = v34 + v36;
      goto LABEL_89;
    }

    if (v33 == 42)
    {
      ++LODWORD(v118[0]);
      *(v118 + v29 + 4) = 1;
      goto LABEL_89;
    }

    v107 = v25;
    v108 = v26;
    __c = v31;
    v112 = v27;
    v37 = v28;
    v38 = v22;
    v39 = v8;
    v40 = v23;
    if (!memchr("diouxXDOUeEfFgGaAcCsSpm", v33, 0x18uLL))
    {
      v28 = v37;
      v6 = a1;
      v27 = v112;
      v26 = v108;
      v31 = __c;
      v25 = v107;
      if (v33 == 118 || (v23 = v40, v8 = v39, v22 = v38, v33 == 110))
      {
        xo_failure(a1, "unsupported format: '%s'", v107);
        return -1;
      }

      goto LABEL_89;
    }

    LOBYTE(v23) = v40;
    LOWORD(v8) = v39;
    LODWORD(v22) = v38;
    v6 = a1;
    v31 = __c;
LABEL_90:
    v113 = v24;
    if (v31 <= 0)
    {
      v41 = 32;
    }

    else
    {
      v41 = 48;
    }

    __ca = v41;
    v5 = v103;
    v7 = v111;
    v11 = v114;
    v14 = v115;
    v21 = v116;
LABEL_95:
    if (v16 == v14)
    {
      v42 = v23;
      v43 = v22;
      xo_failure(v6, "field format missing format character: %s", a3);
      LODWORD(v22) = v43;
      LOBYTE(v23) = v42;
      v8 = *v6;
    }

    v44 = *v16;
    if ((v8 & 0x200) == 0 && (v44 | 0x20) == 0x73)
    {
      for (i = 0; i != 3; ++i)
      {
        if (*(v118 + i + 4))
        {
          v46 = *(v6 + 200);
          *(v6 + 200) = v46 + 2;
          v47 = *v46;
          v48 = v118 + 4 * i + 4;
          *(v48 - 4) = v47;
          if (v47 < 0)
          {
            if (i)
            {
              *(v48 - 4) = -1;
            }

            else
            {
              DWORD1(v117) = -DWORD1(v117);
              LODWORD(v22) = 1;
            }
          }
        }
      }
    }

    v49 = DWORD2(v117);
    if (SDWORD2(v117) > -1 && v117 < 0)
    {
      v51 = DWORD2(v117);
    }

    else
    {
      v51 = HIDWORD(v117);
    }

    HIDWORD(v117) = v51;
    if ((v44 - 68) <= 0x11 && ((1 << (v44 - 68)) & 0x20801) != 0)
    {
      LOBYTE(v23) = 1;
    }

    if (v21)
    {
      goto LABEL_219;
    }

    v99 = v22;
    v106 = v23;
    v52 = v16 - v18;
    v53 = *(v6 + 96);
    v54 = *(v6 + 104);
    v55 = &v54[v16 - v18 + 2];
    if (v55 < v53 + *(v6 + 112))
    {
      goto LABEL_119;
    }

    v56 = (v55 - v53 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    v57 = xo_realloc(v53, v56);
    if (v57)
    {
      v54 = (v57 + *(v6 + 104) - *(v6 + 96));
      *(v6 + 96) = v57;
      *(v6 + 104) = v54;
      *(v6 + 112) = v56;
LABEL_119:
      memcpy(v54, v18, v52 + 1);
      *v54 = 37;
      v54[v52 + 1] = 0;
      v7 = v111;
      v11 = v114;
      if (*(v6 + 48))
      {
LABEL_120:
        v58 = xo_vsnprintf(v6, v114, v54, *(v6 + 200));
        LOBYTE(v23) = v106;
        if (v58 < 1)
        {
          goto LABEL_219;
        }

        v59 = v58;
        if (v111 <= 2)
        {
          if (v111 != 1)
          {
            if (v111 != 2)
            {
              goto LABEL_144;
            }

            if ((v5 & 0x1000) != 0)
            {
              v59 = xo_trim_ws(v114, v58);
            }

            v63 = xo_escape_json(v114, v59);
            goto LABEL_176;
          }

          if ((v5 & 0x1000) != 0)
          {
            v59 = xo_trim_ws(v114, v58);
          }
        }

        else if (v111 != 3)
        {
          if (v111 != 4)
          {
            if (v111 == 5 && (v5 & 0x1000) != 0)
            {
              v59 = xo_trim_ws(v114, v58);
              LOBYTE(v23) = v106;
              v60 = v59;
              goto LABEL_177;
            }

LABEL_144:
            v60 = v58;
LABEL_177:
            if ((*(v6 + 2) & 0x20) != 0)
            {
              *(v6 + 376) += v59;
            }

            if ((*(v6 + 8) & 8) != 0)
            {
              *(v6 + 352) += v59;
            }

LABEL_217:
            if (v60 >= 1)
            {
              v11[1] += v60;
            }

LABEL_219:
            v8 = *v6;
            if ((*v6 & 0x200) != 0)
            {
              goto LABEL_224;
            }

            if ((v44 & 0xFFFFFFDF) == 0x53)
            {
              v14 = v115;
              if (v116)
              {
                goto LABEL_222;
              }

              v12 = 0;
              goto LABEL_226;
            }

            if (v44 == 109)
            {
LABEL_224:
              v12 = 0;
              goto LABEL_225;
            }

            v87 = v23;
            for (j = 0; j != 3; ++j)
            {
              if (*(v118 + j + 4))
              {
                *(v6 + 200) += 8;
              }
            }

            v89 = v8;
            if (memchr("diouxXDOU", v44, 0xAuLL))
            {
              if (v113 < 2u)
              {
                v14 = v115;
                v8 = v89;
LABEL_222:
                v12 = 0;
                *(v6 + 200) += 8;
LABEL_226:
                v13 = v16 + 1;
                if (v16 + 1 >= v14)
                {
                  if ((v5 & 0x800) == 0 && v12)
                  {
                    v90 = xo_format_string_direct(v6, v11, v5 | 0x4000, 0, v12, v13 - v12, 0xFFFFFFFF, v104, 2);
                    if ((*(v6 + 2) & 0x20) != 0)
                    {
                      *(v6 + 376) += v90;
                    }

                    if ((*(v6 + 8) & 8) != 0)
                    {
                      *(v6 + 352) += v90;
                    }
                  }

                  goto LABEL_250;
                }

                continue;
              }
            }

            else if (!memchr("eEfFgGaA", v44, 9uLL))
            {
              v8 = v89;
              if (v44 != 67 && (v44 != 99 || !v87) && v44 != 99 && v44 != 112)
              {
                goto LABEL_224;
              }

              v12 = 0;
              *(v6 + 200) += 8;
LABEL_225:
              v14 = v115;
              goto LABEL_226;
            }

            v12 = 0;
            *(v6 + 200) += 8;
            v14 = v115;
            v8 = v89;
            goto LABEL_226;
          }

          if ((v5 & 0x1000) != 0)
          {
            v59 = xo_trim_ws(v114, v58);
          }

          v63 = xo_escape_sdparams(v114, v59);
LABEL_176:
          v60 = v63;
          LOBYTE(v23) = v106;
          goto LABEL_177;
        }

        v63 = xo_escape_xml(v114, v59, v5 & 0x200);
        goto LABEL_176;
      }

      switch(v44)
      {
        case 's':
LABEL_134:
          v62 = 1;
          if (v44 != 83 && !v106)
          {
            if (v113)
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }
          }

          break;
        case 'm':
          v62 = 2;
          break;
        case 'S':
          goto LABEL_134;
        default:
          goto LABEL_120;
      }

      if ((*(v6 + 3) & 0x20) != 0)
      {
        v64 = 2;
      }

      else if (*(v6 + 16))
      {
        v64 = 2;
      }

      else
      {
        v64 = 3;
      }

      v65 = v62;
      v66 = (v64 | (v62 << 8));
      if ((v66 - 258) >= 2 && (v66 - 514) >= 2 && (v66 - 770) >= 2)
      {
        xo_failure(v6, "invalid conversion (%c:%c)", v62, v64);
        LOBYTE(v23) = v106;
        v60 = 0;
      }

      else
      {
        v67 = v49;
        v68 = v114[1] - *v114;
        if (v44 == 109)
        {
          v69 = strerror(*(v6 + 440));
          v70 = v69;
          if ((v67 & 0x80000000) == 0)
          {
            v71 = v69;
            goto LABEL_160;
          }

          if (v69)
          {
            v73 = strlen(v69);
            goto LABEL_188;
          }

          if ((v5 & 0x20) == 0)
          {
LABEL_187:
            v73 = 6;
            v70 = xo_format_string_null;
            goto LABEL_188;
          }

LABEL_168:
          if (*(v6 + 16) - 1 > 4)
          {
            goto LABEL_187;
          }

          v74 = (*(v6 + 16) - 1);
          v73 = qword_29998DDE0[v74];
          v70 = (&off_29F27AD58)[v74];
LABEL_188:
          v71 = 0;
          if (v64 == v65 && (DWORD1(v117) & 0x80000000) != 0 && (v67 & v51 & 0x80000000) != 0)
          {
            if ((*(v6 + 8) & 8) == 0 && (*(v6 + 2) & 0x20) == 0)
            {
              v75 = strlen(v70);
              v11 = v114;
              xo_buf_escape(v6, v114, v70, v75, v5);
              v76 = v68 + *v114;
              v60 = v114[1] - v76;
              v114[1] = v76;
LABEL_204:
              v7 = v111;
              LOBYTE(v23) = v106;
              if ((v5 & 0x1000) == 0)
              {
                goto LABEL_217;
              }

LABEL_214:
              v86 = *(v6 + 16);
              if (v86 <= 5 && ((1 << v86) & 0x36) != 0)
              {
                v60 = xo_trim_ws(v11, v60);
                LOBYTE(v23) = v106;
              }

              goto LABEL_217;
            }

            v71 = 0;
          }

          v67 = v73;
        }

        else
        {
          v72 = *(v6 + 200);
          *(v6 + 200) = v72 + 1;
          v71 = *v72;
          if (v62 != 1)
          {
LABEL_160:
            if (v71)
            {
              v73 = v67;
            }

            else
            {
              v73 = 6;
            }

            if (v71)
            {
              v70 = v71;
            }

            else
            {
              v70 = xo_format_string_null;
            }

            if (!v71 && (v5 & 0x20) != 0)
            {
              goto LABEL_168;
            }

            goto LABEL_188;
          }

          if (v71)
          {
            v70 = 0;
          }

          else
          {
            v67 = 6;
            v70 = xo_format_string_null;
          }
        }

        v94 = v65;
        v11 = v114;
        v77 = xo_format_string_direct(v6, v114, v5, v71, v70, v67, v51, v64, v94);
        if (v77 < 0)
        {
          goto LABEL_203;
        }

        v78 = v77;
        v79 = *v114;
        v80 = (v68 + *v114);
        v60 = v114[1] - v80;
        v114[1] = v80;
        v81 = DWORD1(v117);
        if (v78 >= SDWORD1(v117))
        {
          v5 = v103;
          goto LABEL_209;
        }

        if (&v80[DWORD1(v117)] < v79 + v114[2])
        {
          goto LABEL_201;
        }

        v82 = &v80[DWORD1(v117) - v79 + 0x1FFF] & 0xFFFFFFFFFFFFE000;
        v83 = xo_realloc(v79, v82);
        v11 = v114;
        if (!v83)
        {
LABEL_203:
          v60 = 0;
          v11[1] = *v11 + v68;
          v5 = v103;
          goto LABEL_204;
        }

        v80 = (v83 + v114[1] - *v114);
        *v114 = v83;
        v114[1] = v80;
        v114[2] = v82;
LABEL_201:
        v84 = v81 - v78;
        if (v99)
        {
          v80 += v60;
          v85 = v84;
        }

        else
        {
          v85 = v84;
          memmove(&v80[v84], v80, v60);
        }

        v5 = v103;
        memset(v80, __ca, v85);
        v60 += v85;
        v78 += v85;
LABEL_209:
        v7 = v111;
        LOBYTE(v23) = v106;
        if ((*(v6 + 2) & 0x20) != 0)
        {
          *(v6 + 376) += v78;
        }

        if ((*(v6 + 8) & 8) != 0)
        {
          *(v6 + 352) += v78;
        }
      }

      v11 = v114;
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_214;
    }

    return -1;
  }
}

uint64_t xo_line_ensure_open(uint64_t result)
{
  v1 = result;
  if ((*result & 0x200000000) != 0)
  {
    v8 = *(result + 8) | 2;
    *result &= ~0x200000000uLL;
    *(result + 8) = v8;
    return result;
  }

  v2 = *(result + 8);
  if ((v2 & 2) == 0 && *(result + 16) == 3)
  {
    *(result + 8) = v2 | 2;
    result = *(result + 72);
    v3 = *(v1 + 80);
    if (v3 + 18 >= (result + *(v1 + 88)))
    {
      v4 = (v3 + 18 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
      result = xo_realloc(result, v4);
      if (!result)
      {
LABEL_8:
        if ((*v1 & 2) == 0)
        {
          return result;
        }

        result = *(v1 + 72);
        v6 = *(v1 + 80);
        if ((v6 + 1) >= result + *(v1 + 88))
        {
          v7 = &v6[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
          result = xo_realloc(result, v7);
          if (!result)
          {
            return result;
          }

          v6 = (result + *(v1 + 80) - *(v1 + 72));
          *(v1 + 72) = result;
          *(v1 + 80) = v6;
          *(v1 + 88) = v7;
        }

        *v6 = 10;
        ++*(v1 + 80);
        return result;
      }

      v3 = result + *(v1 + 80) - *(v1 + 72);
      *(v1 + 72) = result;
      *(v1 + 80) = v3;
      *(v1 + 88) = v4;
    }

    v5 = *xo_line_ensure_open_div_open;
    *(v3 + 16) = *&xo_line_ensure_open_div_open[16];
    *v3 = v5;
    *(v1 + 80) += 18;
    goto LABEL_8;
  }

  return result;
}

void *xo_info_find(uint64_t a1, const void *a2, size_t a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  MEMORY[0x2A1C7C4A8](a1);
  v7 = v9 - ((v6 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6 + 1);
  memcpy(v7, a2, a3);
  v7[a3] = 0;
  return bsearch(v7, *(a1 + 184), *(a1 + 192), 0x18uLL, xo_info_compare);
}

unint64_t xo_format_humanize(unint64_t result, unint64_t *a2, void *a3, unsigned int a4)
{
  if ((*(result + 3) & 8) != 0)
  {
    return result;
  }

  v6 = result;
  result = *a2;
  v7 = a2[1];
  if (&v7[-*a2] == *a3)
  {
    return result;
  }

  __endptr = 0;
  if ((v7 + 1) >= result + a2[2])
  {
    v9 = &v7[-result + 0x2000] & 0xFFFFFFFFFFFFE000;
    v10 = xo_realloc(result, v9);
    if (!v10)
    {
      goto LABEL_7;
    }

    v7 = (v10 + a2[1] - *a2);
    *a2 = v10;
    a2[1] = v7;
    a2[2] = v9;
  }

  *v7 = 0;
  ++a2[1];
LABEL_7:
  v11 = strtoull((*a2 + *a3), &__endptr, 0);
  if (v11 == -1)
  {
    result = __error();
    if (*result == 34)
    {
      return result;
    }
  }

  result = *a2;
  v12 = *a3;
  if (__endptr == (*a2 + *a3))
  {
    return result;
  }

  v13 = a2[2];
  v14 = a2[1] + 10;
  if (v14 >= result + v13)
  {
    v13 = (v14 - result + 0x1FFF) & 0xFFFFFFFFFFFFE000;
    result = xo_realloc(result, v13);
    if (!result)
    {
      return result;
    }

    *a2 = result;
    a2[2] = v13;
    v12 = *a3;
  }

  v15 = &v12[result];
  a2[1] = &v12[result];
  if (!v11)
  {
    if (result)
    {
      v16 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_24;
    }

LABEL_69:
    xo_format_humanize_cold_1();
  }

  v16 = -1;
  if (((a4 >> 15) & 8) != 0)
  {
    v21 = v11;
    do
    {
      ++v16;
      v22 = v21 >= 0x3E8;
      v21 /= 0x3E8uLL;
    }

    while (v22);
  }

  else
  {
    v17 = v11;
    do
    {
      ++v16;
      v18 = v17 > 0x3FF;
      v17 >>= 10;
    }

    while (v18);
  }

  if (!result)
  {
    goto LABEL_69;
  }

  v19 = v11;
  v20 = v11 >> 63;
LABEL_24:
  if (v16 < 7 || (v16 & 0x30) != 0)
  {
    v23 = v13 - v12;
    if (v13 != v12)
    {
      *v15 = 0;
    }

    if (v11 < 0)
    {
      v24 = -100;
    }

    else
    {
      v24 = 100;
    }

    v25 = 2;
    result = &xo_version_extra;
    if (v11 < 0)
    {
      v25 = 3;
    }

    v26 = ((a4 >> 15) & 2) >> 1;
    if (v23 > v25 + v26)
    {
      result = v19 * v24;
      __size = v13 - v12;
      if ((v16 & 0x30) != 0)
      {
        v37 = v15;
        if (v23 - (v25 + v26) < 1)
        {
          v28 = 100;
        }

        else
        {
          v27 = v13 - v26 - v25 - v12 + 1;
          v28 = 100;
          do
          {
            v28 *= 10;
            --v27;
          }

          while (v27 > 1);
        }

        v35 = v25 + v26;
        if ((__PAIR128__(v20, v19) * __PAIR128__(v11 >> 63, v24)) >= v28)
        {
          v31 = 0;
          do
          {
            result = __udivti3();
            v29 = v31 + 1;
            if (__PAIR128__(v32, result) < v28)
            {
              break;
            }

            v22 = v31++ >= 6;
          }

          while (!v22);
        }

        else
        {
          v29 = 0;
        }

        if ((v16 & 0x10) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v16 >= 7)
        {
          v29 = 7;
        }

        else
        {
          v29 = v16;
        }

        if (!v16)
        {
          goto LABEL_64;
        }

        v35 = v25 + v26;
        v37 = v15;
        v30 = v29;
        do
        {
          result = __divti3();
          --v30;
        }

        while (v30);
      }

      if ((a4 & 0x20000) != 0)
      {
        v15 = v37;
        if (result <= 0x3E2 && v29)
        {
          if (v35 + 3 > __size)
          {
            return result;
          }

          v36 = ((result + 5) / 100);
          if (v11 >= 0)
          {
            v33 = &xo_version_extra;
          }

          else
          {
            v33 = "-";
          }

          localeconv();
          result = snprintf(v37, __size, "%s%d%s%d%s%s%s", v33, v36);
          goto LABEL_65;
        }
      }

      else
      {
        v15 = v37;
      }

LABEL_64:
      __divti3();
      result = snprintf(v15, __size, "%s%lld%s%s%s");
LABEL_65:
      v29 = result;
LABEL_66:
      if (v29 >= 1)
      {
        a2[1] += v29;
        v34 = a3[2];
        *(v6 + 376) = a3[1] + v29;
        *(v6 + 352) = v34 + v29;
      }
    }
  }

  return result;
}

uint64_t xo_escape_json(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = a1[1];
    v6 = v5;
    do
    {
      v7 = *v6;
      if (v7 > 0x21)
      {
        if (v7 == 92 || v7 == 34)
        {
          ++v4;
        }
      }

      else
      {
        v8 = v7 == 10 || v7 == 13;
        if (v8)
        {
          ++v4;
        }
      }

      ++v6;
    }

    while (v6 < v5 + a2);
    if (v4)
    {
      v9 = *a1;
      if (v5 + v4 >= *a1 + a1[2])
      {
        v10 = (v5 + v4 - v9 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v11 = xo_realloc(v9, v10);
        if (!v11)
        {
          return 0;
        }

        v5 = v11 + a1[1] - *a1;
        *a1 = v11;
        a1[1] = v5;
        a1[2] = v10;
      }

      v12 = (v5 + v2 + v4);
      v13 = (v5 + v2 - 1);
      while (1)
      {
        v14 = *v13;
        if (v14 > 0x21)
        {
          break;
        }

        if (v14 != 10)
        {
          if (v14 == 13)
          {
            *(v12 - 1) = 29276;
            v12 -= 2;
            goto LABEL_28;
          }

LABEL_26:
          *--v12 = v14;
          goto LABEL_28;
        }

        *(v12 - 1) = 28252;
        v12 -= 2;
LABEL_28:
        if (v13 > v5)
        {
          v8 = v13-- == v12;
          if (!v8)
          {
            continue;
          }
        }

        v2 += v4;
        return v2;
      }

      if (v14 == 92 || v14 == 34)
      {
        *(v12 - 2) = 92;
        v12 -= 2;
        v12[1] = v14;
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

  return v2;
}

uint64_t xo_escape_sdparams(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = a1[1];
    v6 = v5;
    do
    {
      v7 = *v6 - 34;
      v8 = v7 > 0x3B;
      v9 = (1 << v7) & 0xC00000000000001;
      v10 = v8 || v9 == 0;
      if (!v10)
      {
        ++v4;
      }

      ++v6;
    }

    while (v6 < v5 + a2);
    if (v4)
    {
      v11 = *a1;
      if (v5 + v4 >= *a1 + a1[2])
      {
        v12 = (v5 + v4 - v11 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        v13 = xo_realloc(v11, v12);
        if (!v13)
        {
          return 0;
        }

        v5 = v13 + a1[1] - *a1;
        *a1 = v13;
        a1[1] = v5;
        a1[2] = v12;
      }

      v14 = (v5 + v2 + v4);
      v15 = (v5 + v2 - 1);
      do
      {
        v16 = *v15;
        if ((v16 - 34) > 0x3B || ((1 << (v16 - 34)) & 0xC00000000000001) == 0)
        {
          *--v14 = v16;
        }

        else
        {
          *(v14 - 2) = 92;
          v14 -= 2;
          v14[1] = v16;
        }

        if (v15 <= v5)
        {
          break;
        }

        v10 = v15-- == v14;
      }

      while (!v10);
      v2 += v4;
    }
  }

  return v2;
}