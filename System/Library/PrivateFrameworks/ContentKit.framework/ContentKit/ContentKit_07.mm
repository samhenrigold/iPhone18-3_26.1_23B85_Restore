void *file_push_buffer(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  result = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  if (result)
  {
    v3 = *(a1 + 40);
    *result = *(a1 + 32);
    result[1] = v3;
    *(result + 4) = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t file_pop_buffer(uint64_t a1, void **a2)
{
  if (*(a1 + 72))
  {
    free(*a2);
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = a2[1];
    *(a1 + 32) = *a2;
    *(a1 + 40) = v4;
    *(a1 + 56) = *(a2 + 4);
  }

  free(a2);
  return v3;
}

uint64_t file_reset(uint64_t a1, int a2)
{
  if (a2 && !*a1)
  {
    file_error(a1, 0, "no magic files loaded");
    return 0xFFFFFFFFLL;
  }

  else
  {
    free(*(a1 + 32));
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v3 = *(a1 + 48);
    if (v3)
    {
      free(v3);
      *(a1 + 48) = 0;
    }

    result = 0;
    *(a1 + 72) &= ~1u;
    *(a1 + 64) = -1;
  }

  return result;
}

const char *file_getbuffer(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72))
  {
    return 0;
  }

  result = *(a1 + 32);
  if ((*(a1 + 69) & 1) == 0 && result)
  {
    v3 = strlen(result);
    if (v3 >> 62)
    {
      v4 = *__error();
      file_error(a1, v4, "cannot allocate %zu bytes", v3);
      return 0;
    }

    v5 = malloc_type_realloc(*(a1 + 48), (4 * v3) | 1, 0x100004077774924uLL);
    if (!v5)
    {
      v14 = *__error();
      file_error(a1, v14, "cannot allocate %zu bytes", (4 * v3) | 1);
      return 0;
    }

    v6 = v5;
    *(a1 + 48) = v5;
    v19 = 0;
    memset(&v20, 0, sizeof(v20));
    if (v3)
    {
      v7 = *(a1 + 32);
      v8 = &v7[v3];
      v9 = MEMORY[0x277D85DE0];
      while (1)
      {
        v10 = mbrtowc(&v19, v7, v8 - v7, &v20);
        if (v10 > 0xFFFFFFFFFFFFFFFDLL)
        {
          break;
        }

        v11 = v10;
        if (v19 > 0x7F)
        {
          if (!__maskrune(v19, 0x40000uLL))
          {
LABEL_14:
            for (i = v6; v11; --v11)
            {
              *v6 = 92;
              v6[1] = (*v7 >> 6) | 0x30;
              v6[2] = (*v7 >> 3) & 7 | 0x30;
              v13 = *v7++;
              i = v6 + 4;
              v6[3] = v13 & 7 | 0x30;
              v6 += 4;
            }

            goto LABEL_16;
          }
        }

        else if ((*(v9 + 4 * v19 + 60) & 0x40000) == 0)
        {
          goto LABEL_14;
        }

        memcpy(v6, v7, v11);
        v7 += v11;
        i = &v6[v11];
LABEL_16:
        v6 = i;
        if (v7 >= v8)
        {
          goto LABEL_22;
        }
      }

      *v6 = 0;
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      v17 = *v16;
      if (*v16)
      {
        do
        {
          if ((v17 & 0x80) != 0)
          {
            if (!__maskrune(v17, 0x40000uLL))
            {
LABEL_28:
              *v15 = 92;
              v15[1] = (*v16 >> 6) | 0x30;
              v15[2] = (*v16 >> 3) & 7 | 0x30;
              v15[3] = *v16 & 7 | 0x30;
              v15 += 4;
              goto LABEL_29;
            }
          }

          else if ((*(v9 + 4 * v17 + 60) & 0x40000) == 0)
          {
            goto LABEL_28;
          }

          *v15++ = v17;
LABEL_29:
          v18 = *++v16;
          v17 = v18;
        }

        while (v18);
      }

      *v15 = 0;
    }

    else
    {
      i = v5;
LABEL_22:
      *i = 0;
    }

    return *(a1 + 48);
  }

  return result;
}

uint64_t file_check_mem(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16) <= a2)
  {
    *(a1 + 16) = a2 + 20;
    v5 = *(a1 + 24);
    if (v5)
    {
      v4 = malloc_type_realloc(v5, 16 * (a2 + 20), 0x468F0880uLL);
    }

    else
    {
      v4 = malloc_type_malloc(16 * (a2 + 20), 0x4380E068uLL);
    }

    *(a1 + 24) = v4;
    if (!v4)
    {
      v9 = __error();
      file_error(a1, *v9, "cannot allocate %zu bytes", 16 * (a2 + 20));
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v6 = 0;
  v7 = &v4[16 * a2];
  *(v7 + 1) = 0;
  *(v7 + 1) = 0;
  return v6;
}

uint64_t file_replace(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  v3 = file_regcomp(v7, a2, 1);
  v4 = v3;
  if (v3)
  {
    regerror(v3, &v8, v9, 0x200uLL);
LABEL_10:
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v9[0].rm_so = 0;
    v9[0].rm_eo = 0;
    while (!file_regexec(v7, *(a1 + 32), 1uLL, v9))
    {
      *(*(a1 + 32) + v9[0].rm_so) = 0;
      if (v9[0].rm_eo)
      {
        v5 = (*(a1 + 32) + v9[0].rm_eo);
      }

      else
      {
        v5 = "";
      }

      if (file_printf(a1, "%s%s", ", ", v5) == -1)
      {
        goto LABEL_10;
      }

      v4 = (v4 + 1);
    }
  }

  file_regfree(v7);
  return v4;
}

uint64_t file_regcomp(uint64_t a1, const char *a2, int a3, ...)
{
  v6 = newlocale(2, "C", 0);
  *(a1 + 16) = v6;
  if (!v6)
  {
    __assert_rtn("file_regcomp", "funcs.c", 638, "rx->c_lc_ctype != NULL");
  }

  v7 = uselocale(v6);
  *(a1 + 8) = v7;
  if (!v7)
  {
    __assert_rtn("file_regcomp", "funcs.c", 640, "rx->old_lc_ctype != NULL");
  }

  *a1 = a2;
  result = regcomp((a1 + 32), a2, a3);
  *(a1 + 24) = result;
  return result;
}

uint64_t file_regexec(uint64_t a1, const char *a2, size_t a3, regmatch_t *a4)
{
  if (*(a1 + 24))
  {
    __assert_rtn("file_regexec", "funcs.c", 657, "rx->rc == 0");
  }

  if (a3)
  {
    a4->rm_so = 0;
    a4->rm_eo = 0;
  }

  v5 = (a1 + 32);

  return regexec(v5, a2, a3, a4, 0);
}

uint64_t file_regfree(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    MEMORY[0x223D56DD0](a1 + 32);
  }

  uselocale(*(a1 + 8));
  v2 = *(a1 + 16);

  return freelocale(v2);
}

uint64_t file_regerror(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  regerror(a2, (a1 + 32), v7, 0x200uLL);
}

_BYTE *file_printable(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &a1[a2 - 1];
  v6 = v5 <= a1 || a4 < 1;
  v7 = a1;
  if (!v6)
  {
    v8 = a3 + a4;
    v9 = &a1[a2 - 4];
    v10 = a3 + 1;
    v11 = MEMORY[0x277D85DE0];
    v7 = a1;
    do
    {
      v12 = *(v10 - 1);
      if (!*(v10 - 1))
      {
        break;
      }

      v13 = *(v10 - 1);
      if (v12 < 0)
      {
        if (!__maskrune(v12, 0x40000uLL))
        {
LABEL_11:
          if (v7 >= v9)
          {
            break;
          }

          *v7 = 92;
          v7[1] = (*(v10 - 1) >> 6) | 0x30;
          v7[2] = (*(v10 - 1) >> 3) & 7 | 0x30;
          v7[3] = *(v10 - 1) & 7 | 0x30;
          v7 += 4;
          continue;
        }
      }

      else if ((*(v11 + 4 * v12 + 60) & 0x40000) == 0)
      {
        goto LABEL_11;
      }

      *v7++ = v13;
    }

    while (v7 < v5 && v10++ < v8);
  }

  *v7 = 0;
  return a1;
}

uint64_t file_parse_guid(const char *a1, uint64_t a2)
{
  if (sscanf(a1, "%8x-%4hx-%4hx-%2hhx%2hhx-%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx", a2, a2 + 4, a2 + 6, a2 + 8, a2 + 9, a2 + 10, a2 + 11, a2 + 12, a2 + 13, a2 + 14, a2 + 15) == 11)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

Class initUIPrintFormatter_12439()
{
  if (UIKitLibrary_sOnce_12440 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_12440, &__block_literal_global_261);
  }

  result = objc_getClass("UIPrintFormatter");
  classUIPrintFormatter_12442 = result;
  getUIPrintFormatterClass_12433 = UIPrintFormatterFunction_12444;
  return result;
}

void *__UIKitLibrary_block_invoke_12446()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_12448 = result;
  return result;
}

void sub_21E2D0314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t file_encoding(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void **a4, uint64_t *a5, const char **a6, const char **a7, void *a8)
{
  v72 = 0;
  v73 = 0;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = &v73;
  }

  if (a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = &v72;
  }

  *a8 = "text";
  *v15 = 0;
  *a6 = "unknown";
  *a7 = "binary";
  v16 = a3 + 1;
  v17 = 8 * (a3 + 1);
  v18 = malloc_type_calloc(1uLL, v17, 0x100004000313F17uLL);
  *v14 = v18;
  if (!v18)
  {
    v26 = __error();
    file_error(a1, *v26, "cannot allocate %zu bytes", v17);
    v19 = 0;
    goto LABEL_24;
  }

  v19 = malloc_type_calloc(1uLL, v16, 0x100004077774924uLL);
  if (!v19)
  {
    v27 = __error();
    file_error(a1, *v27, "cannot allocate %zu bytes", v16);
    goto LABEL_24;
  }

  v20 = *v14;
  *v15 = 0;
  if (!a3)
  {
    goto LABEL_21;
  }

  v21 = 0;
  do
  {
    v22 = a2[v21];
    if (text_chars[v22] != 1)
    {
      if (a3 >= 4 && *a2 == 239 && a2[1] == 187 && a2[2] == 191)
      {
        if (file_looks_utf8((a2 + 3), a3 - 3, v20, v15) > 0)
        {
          v30 = "UTF-8 Unicode (with BOM)";
LABEL_37:
          *a6 = v30;
          v25 = "utf-8";
          goto LABEL_22;
        }

        v20 = *v14;
      }

      if (file_looks_utf8(a2, a3, v20, v15) >= 2)
      {
        v30 = "UTF-8 Unicode";
        goto LABEL_37;
      }

      v31 = *v14;
      if (a3 < 4)
      {
        if (a3 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_40;
      }

      v32 = *a2;
      if (*a2)
      {
        if (v32 != 255)
        {
LABEL_47:
          if (v32 == 254)
          {
            if (a2[1] == 255)
            {
              v34 = 0;
              v35 = 2;
              goto LABEL_53;
            }
          }

          else if (v32 == 255 && a2[1] == 254)
          {
            v34 = 1;
            v35 = 1;
LABEL_53:
            *v15 = 0;
            if (a3 < 4)
            {
LABEL_64:
              if (v35 == 1)
              {
                *a6 = "Little-endian UTF-16 Unicode";
                v25 = "utf-16le";
              }

              else
              {
                *a6 = "Big-endian UTF-16 Unicode";
                v25 = "utf-16be";
              }

              goto LABEL_22;
            }

            v36 = 0;
            v37 = 3;
            while (1)
            {
              v38 = v37 - 1;
              if (v34)
              {
                v39 = v37 - 1;
              }

              else
              {
                v39 = v37;
              }

              if (v34)
              {
                v38 = v37;
              }

              v40 = a2[v39] | (a2[v38] << 8);
              *v15 = v36 + 1;
              v31[v36] = v40;
              v36 = *v15;
              v41 = v31[*v15 - 1];
              if (v41 == 65534 || v41 <= 0x7F && text_chars[v41] != 1)
              {
                break;
              }

              v37 += 2;
              if (v37 >= a3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_67:
          v42 = 0;
          *v15 = 0;
          while (1)
          {
            v43 = a2[v42];
            if (v43 <= 0x9F && text_chars[v43] != 1)
            {
              break;
            }

            v45 = (*v15)++;
            v31[v45] = v43;
            if (a3 == ++v42)
            {
              *a6 = "ISO-8859";
              v25 = "iso-8859-1";
              goto LABEL_22;
            }
          }

          v46 = 0;
          *v15 = 0;
          while (1)
          {
            v47 = a2[v46];
            if (v47 <= 0x9F && (text_chars[v47] & 0xFD) != 1)
            {
              break;
            }

            v49 = (*v15)++;
            v31[v49] = v47;
            if (a3 == ++v46)
            {
              *a6 = "Non-ISO extended-ASCII";
              v25 = "unknown-8bit";
              goto LABEL_22;
            }
          }

          v50 = 0;
          do
          {
            v19[v50] = ebcdic_to_ascii[a2[v50]];
            ++v50;
          }

          while (a3 != v50);
          v51 = 0;
          v52 = *v14;
          *v15 = 0;
          while (1)
          {
            v53 = v19[v51];
            if (text_chars[v53] != 1)
            {
              break;
            }

            v54 = (*v15)++;
            v52[v54] = v53;
            if (a3 == ++v51)
            {
              v55 = "EBCDIC";
              goto LABEL_95;
            }
          }

          v56 = 0;
          *v15 = 0;
          do
          {
            v57 = v19[v56];
            if (v57 <= 0x9F && text_chars[v57] != 1)
            {
              v28 = 0;
              *a8 = "binary";
              goto LABEL_25;
            }

            v59 = (*v15)++;
            v52[v59] = v57;
            ++v56;
          }

          while (a3 != v56);
          v55 = "International EBCDIC";
LABEL_95:
          *a6 = v55;
          v25 = "ebcdic";
          goto LABEL_22;
        }

        if (a2[1] != 254)
        {
          goto LABEL_67;
        }

        if (a2[2] || a2[3])
        {
LABEL_40:
          v32 = *a2;
          goto LABEL_47;
        }

        v33 = 1;
      }

      else
      {
        if (a2[1])
        {
          goto LABEL_67;
        }

        if (a2[2] != 254 || a2[3] != 255)
        {
          goto LABEL_40;
        }

        v33 = 0;
      }

      *v15 = 0;
      if (a3 < 8)
      {
LABEL_115:
        if (v33)
        {
          *a6 = "Little-endian UTF-32 Unicode";
          v25 = "utf-32le";
        }

        else
        {
          *a6 = "Big-endian UTF-32 Unicode";
          v25 = "utf-32be";
        }

        goto LABEL_22;
      }

      v60 = 0;
      v61 = 1;
      if (v33)
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }

      if (v33)
      {
        v61 = 2;
      }

      v63 = &a2[v61];
      v64 = &a2[v62];
      v65 = 4;
      while (1)
      {
        v66 = v65 + 3;
        if (v33)
        {
          v67 = v65;
        }

        else
        {
          v67 = v65 + 3;
        }

        v68 = a2[v67] | (v64[v65] << 8);
        if (!v33)
        {
          v66 = v65;
        }

        v69 = v68 | (v63[v65] << 16) | (a2[v66] << 24);
        *v15 = v60 + 1;
        v31[v60] = v69;
        v60 = *v15;
        v70 = v31[*v15 - 1];
        if (v70 == 65534 || v70 <= 0x7F && text_chars[v70] != 1)
        {
          goto LABEL_40;
        }

        v71 = v65 + 7;
        v65 += 4;
        if (v71 >= a3)
        {
          goto LABEL_115;
        }
      }
    }

    v23 = (*v15)++;
    *(v20 + 8 * v23) = v22;
    ++v21;
  }

  while (a3 != v21);
  if (a3 >= 5 && *a2 == 43 && a2[1] == 47 && a2[2] == 118)
  {
    v24 = a2[3];
    if (v24 <= 0x39 && ((1 << v24) & 0x300880000000000) != 0)
    {
      *v15 = 0;
      *a6 = "UTF-7 Unicode";
      v25 = "utf-7";
      goto LABEL_22;
    }
  }

LABEL_21:
  *a6 = "ASCII";
  v25 = "us-ascii";
LABEL_22:
  *a7 = v25;
LABEL_24:
  v28 = 1;
LABEL_25:
  free(v19);
  if (v14 == &v73)
  {
    free(v73);
  }

  return v28;
}

uint64_t file_looks_utf8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    *a4 = 0;
  }

  if (!a2)
  {
    v13 = 1;
LABEL_33:
    v14 = 1;
    goto LABEL_34;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + v6);
    if (*(a1 + v6) < 0)
    {
      break;
    }

    if (text_chars[*(a1 + v6)] != 1)
    {
      v4 = 1;
    }

    if (a3)
    {
LABEL_9:
      v8 = (*a4)++;
      *(a3 + 8 * v8) = v7;
    }

LABEL_10:
    if (++v6 >= a2)
    {
      goto LABEL_31;
    }
  }

  if ((v7 & 0x40) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v7 & 0x20) != 0)
  {
    if ((v7 & 0x10) == 0)
    {
      v9 = 2;
      v10 = 15;
      goto LABEL_23;
    }

    if ((v7 & 8) == 0)
    {
      v9 = 3;
      v10 = 7;
      goto LABEL_23;
    }

    if ((v7 & 4) == 0)
    {
      v9 = 4;
      v10 = 3;
      goto LABEL_23;
    }

    if ((v7 & 2) == 0)
    {
      v9 = 5;
      v10 = 1;
      goto LABEL_23;
    }

    return 0xFFFFFFFFLL;
  }

  v9 = 1;
  v10 = 31;
LABEL_23:
  v7 = v10 & v7;
  v11 = v6 + 1;
  v6 += 1 + (v9 - 1);
  while (v11 < a2)
  {
    v12 = 0xFFFFFFFFLL;
    if ((*(a1 + v11) & 0x80) == 0 || (*(a1 + v11) & 0x40) != 0)
    {
      return v12;
    }

    v7 = *(a1 + v11++) & 0x3F | (v7 << 6);
    if (!--v9)
    {
      v5 = 1;
      if (a3)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

LABEL_31:
  v13 = v4 == 0;
  if (!v5)
  {
    goto LABEL_33;
  }

  v14 = 2;
LABEL_34:
  if (v13)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t WFInstalledAppsEnumerator()
{
  [WFGreenTeaLogger log:@"Reading installed app list"];
  v0 = MEMORY[0x277CC1E70];

  return [v0 enumeratorWithOptions:0];
}

id WFCreateTestingEventStore(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(getEKEventStoreClass()) initWithEKOptions:12 path:v1 changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:0];

  [v2 _setIsUnitTesting:1];

  return v2;
}

id getEKEventStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getEKEventStoreClass_softClass;
  v7 = getEKEventStoreClass_softClass;
  if (!getEKEventStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getEKEventStoreClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getEKEventStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2D2A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKEventStoreClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary_12850)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __EventKitLibraryCore_block_invoke_12851;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278347728;
    v8 = 0;
    EventKitLibraryCore_frameworkLibrary_12850 = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary_12850)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFEventKitUtilities.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("EKEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKEventStoreClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFEventKitUtilities.m" lineNumber:16 description:{@"Unable to find class %s", "EKEventStore"}];

LABEL_10:
    __break(1u);
  }

  getEKEventStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke_12851(uint64_t a1)
{
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary_12850 = result;
  return result;
}

id WFGetWorkflowEventStore()
{
  if (WFGetWorkflowEventStore_onceToken != -1)
  {
    dispatch_once(&WFGetWorkflowEventStore_onceToken, &__block_literal_global_12867);
  }

  v1 = workflowEventStore;

  return v1;
}

uint64_t __WFGetWorkflowEventStore_block_invoke()
{
  workflowEventStore = WFRecreateEventStore();

  return MEMORY[0x2821F96F8]();
}

id WFRecreateEventStore()
{
  if (testingEventStorePath)
  {
    v0 = WFCreateTestingEventStore(testingEventStorePath);
  }

  else
  {
    getEKEventStoreClass();
    v0 = objc_opt_new();
  }

  return v0;
}

id WFGetWorkflowTestingEventStore()
{
  if (!testingEventStorePath)
  {
    v0 = [WFTemporaryFileManager createTemporaryDirectoryWithFilename:@"ShortcutsTestCalendarDatabase"];
    v1 = [v0 path];
    v2 = testingEventStorePath;
    testingEventStorePath = v1;

    if (workflowEventStore)
    {
      v3 = WFRecreateEventStore();
      v4 = workflowEventStore;
      workflowEventStore = v3;
    }
  }

  return WFGetWorkflowEventStore();
}

id WFSetWorkflowTestingEventStorePath(id obj)
{
  objc_storeStrong(&testingEventStorePath, obj);

  return WFRecreateEventStore();
}

uint64_t WFClearWorkflowEventStore()
{
  [workflowEventStore reset];
  workflowEventStore = WFRecreateEventStore();

  return MEMORY[0x2821F96F8]();
}

void sub_21E2D336C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSAttachmentAttributeNameSymbolLoc_block_invoke_12892(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary_12903)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIFoundationLibraryCore_block_invoke_12904;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278347768;
    v7 = 0;
    UIFoundationLibraryCore_frameworkLibrary_12903 = _sl_dlopen();
  }

  v2 = UIFoundationLibraryCore_frameworkLibrary_12903;
  if (!UIFoundationLibraryCore_frameworkLibrary_12903)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIFoundationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"NSAttributedString+TextAttachmentExtraction.m" lineNumber:15 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "NSAttachmentAttributeName");
  *(*(a1[4] + 8) + 24) = result;
  getNSAttachmentAttributeNameSymbolLoc_ptr_12891 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __UIFoundationLibraryCore_block_invoke_12904(uint64_t a1)
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary_12903 = result;
  return result;
}

id get_MKLocationShifterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_MKLocationShifterClass_softClass;
  v7 = get_MKLocationShifterClass_softClass;
  if (!get_MKLocationShifterClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_MKLocationShifterClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __get_MKLocationShifterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2D40A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MapKitLibraryCore_block_invoke_13080(uint64_t a1)
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_13079 = result;
  return result;
}

void sub_21E2D46CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id WFAvailableArchiveFilename(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if ([v4 containsObject:v5])
  {
    v7 = 2;
    v8 = v5;
    do
    {
      v9 = v5;
      v10 = [v9 pathExtension];
      if ([v10 length])
      {
        v11 = [v9 stringByDeletingPathExtension];

        v9 = v11;
      }

      v6 = [v9 stringByAppendingFormat:@"-%lu", v7];

      if ([v10 length])
      {
        v12 = [v6 stringByAppendingPathExtension:v10];

        v6 = v12;
      }

      ++v7;
      v8 = v6;
    }

    while (([v4 containsObject:v6] & 1) != 0);
  }

  [v4 addObject:v6];

  return v6;
}

id WFLastArchiveError(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = archive_errno();
  v2 = archive_error_string();
  if (v2)
  {
    v7 = *MEMORY[0x277CCA450];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFLibArchiveErrorDomain" code:v1 userInfo:v4];

  return v5;
}

id getWFLibArchiveLogObject()
{
  if (getWFLibArchiveLogObject_onceToken != -1)
  {
    dispatch_once(&getWFLibArchiveLogObject_onceToken, &__block_literal_global_13283);
  }

  v1 = getWFLibArchiveLogObject_log;

  return v1;
}

id WFPathFromArchiveEntry(uint64_t a1)
{
  v1 = archive_entry_pathname();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v1];
    if (v3)
    {
      goto LABEL_8;
    }

    v4 = archive_entry_pathname_w();
    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v2 length:strlen(v2)];
      v3 = [MEMORY[0x277CCACA8] wf_stringWithData:v5];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v4 = archive_entry_pathname_w();
  if (v4)
  {
LABEL_6:
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v4 length:4 * wcslen(v4) encoding:2617245952];
    goto LABEL_8;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

uint64_t __getWFLibArchiveLogObject_block_invoke()
{
  getWFLibArchiveLogObject_log = os_log_create(*MEMORY[0x277D7A500], "LibArchive");

  return MEMORY[0x2821F96F8]();
}

void sub_21E2D91D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWKContentRuleListStoreClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKContentRuleListStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKContentRuleListStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKContentRuleListStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWKWebViewCapturer.m" lineNumber:25 description:{@"Unable to find class %s", "WKContentRuleListStore"}];

    __break(1u);
  }
}

void WebKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary_14150)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __WebKitLibraryCore_block_invoke_14151;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278347900;
    v5 = 0;
    WebKitLibraryCore_frameworkLibrary_14150 = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary_14150)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFWKWebViewCapturer.m" lineNumber:22 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __WebKitLibraryCore_block_invoke_14151(uint64_t a1)
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary_14150 = result;
  return result;
}

void sub_21E2D9D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWKWebViewConfigurationClass_block_invoke_14198(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebViewConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewConfigurationClass_softClass_14197 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWKWebViewCapturer.m" lineNumber:24 description:{@"Unable to find class %s", "WKWebViewConfiguration"}];

    __break(1u);
  }
}

void __getWKWebViewClass_block_invoke_14200(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewClass_softClass_14199 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWKWebViewCapturer.m" lineNumber:23 description:{@"Unable to find class %s", "WKWebView"}];

    __break(1u);
  }
}

id __WFCNLabeledURLAddressesFromNSURLs_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  CNLabeledValueClass_14296 = getCNLabeledValueClass_14296();
  v4 = [v2 absoluteString];

  v5 = [CNLabeledValueClass_14296 labeledValueWithLabel:0 value:v4];

  return v5;
}

id getCNLabeledValueClass_14296()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLabeledValueClass_softClass_14297;
  v7 = getCNLabeledValueClass_softClass_14297;
  if (!getCNLabeledValueClass_softClass_14297)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNLabeledValueClass_block_invoke_14298;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNLabeledValueClass_block_invoke_14298(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2DA624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNLabeledValueClass_block_invoke_14298(uint64_t a1)
{
  ContactsLibrary_14299();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNLabeledValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLabeledValueClass_softClass_14297 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContactContentItemChangeTransaction.m" lineNumber:18 description:{@"Unable to find class %s", "CNLabeledValue"}];

    __break(1u);
  }
}

void ContactsLibrary_14299()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_14310)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke_14311;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278347940;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary_14310 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_14310)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFContactContentItemChangeTransaction.m" lineNumber:15 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContactsLibraryCore_block_invoke_14311(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_14310 = result;
  return result;
}

id __WFCNLabeledPostalAddressesFromWFPostalAddresses_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  CNLabeledValueClass_14296 = getCNLabeledValueClass_14296();
  v4 = [v2 label];
  v5 = [v2 postalAddress];

  v6 = [CNLabeledValueClass_14296 labeledValueWithLabel:v4 value:v5];

  return v6;
}

id __WFCNLabeledEmailAddressesFromWFEmailAddresses_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  CNLabeledValueClass_14296 = getCNLabeledValueClass_14296();
  v4 = [v2 label];
  v5 = [v2 address];

  v6 = [CNLabeledValueClass_14296 labeledValueWithLabel:v4 value:v5];

  return v6;
}

id __WFCNLabeledPhoneNumbersFromWFPhoneNumbers_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  CNLabeledValueClass_14296 = getCNLabeledValueClass_14296();
  v4 = [v2 label];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getCNPhoneNumberClass_softClass_14334;
  v15 = getCNPhoneNumberClass_softClass_14334;
  if (!getCNPhoneNumberClass_softClass_14334)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getCNPhoneNumberClass_block_invoke_14335;
    v11[3] = &unk_27834A178;
    v11[4] = &v12;
    __getCNPhoneNumberClass_block_invoke_14335(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [v2 string];
  v8 = [v5 phoneNumberWithStringValue:v7];
  v9 = [CNLabeledValueClass_14296 labeledValueWithLabel:v4 value:v8];

  return v9;
}

void sub_21E2DB37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNPhoneNumberClass_block_invoke_14335(uint64_t a1)
{
  ContactsLibrary_14299();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPhoneNumberClass_softClass_14334 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNPhoneNumberClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContactContentItemChangeTransaction.m" lineNumber:19 description:{@"Unable to find class %s", "CNPhoneNumber"}];

    __break(1u);
  }
}

void sub_21E2DB888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNSaveRequestClass_block_invoke_14339(uint64_t a1)
{
  ContactsLibrary_14299();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNSaveRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNSaveRequestClass_softClass_14338 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNSaveRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContactContentItemChangeTransaction.m" lineNumber:17 description:{@"Unable to find class %s", "CNSaveRequest"}];

    __break(1u);
  }
}

id getCNContactStoreClass_14340()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactStoreClass_softClass_14344;
  v7 = getCNContactStoreClass_softClass_14344;
  if (!getCNContactStoreClass_softClass_14344)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNContactStoreClass_block_invoke_14345;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNContactStoreClass_block_invoke_14345(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2DBA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNContactStoreClass_block_invoke_14345(uint64_t a1)
{
  ContactsLibrary_14299();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactStoreClass_softClass_14344 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNContactStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContactContentItemChangeTransaction.m" lineNumber:16 description:{@"Unable to find class %s", "CNContactStore"}];

    __break(1u);
  }
}

void sub_21E2DC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKLocalSearchRequestClass_block_invoke(uint64_t a1)
{
  MapKitLibrary_14470();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLocalSearchRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLocalSearchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKLocalSearchRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDCMapsLinkContentItem.m" lineNumber:18 description:{@"Unable to find class %s", "MKLocalSearchRequest"}];

    __break(1u);
  }
}

void __getMKLocalSearchClass_block_invoke(uint64_t a1)
{
  MapKitLibrary_14470();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLocalSearch");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLocalSearchClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKLocalSearchClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDCMapsLinkContentItem.m" lineNumber:17 description:{@"Unable to find class %s", "MKLocalSearch"}];

    __break(1u);
  }
}

void getMKErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMKErrorDomainSymbolLoc_ptr;
  v9 = getMKErrorDomainSymbolLoc_ptr;
  if (!getMKErrorDomainSymbolLoc_ptr)
  {
    v1 = MapKitLibrary_14470();
    v7[3] = dlsym(v1, "MKErrorDomain");
    getMKErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMKErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFDCMapsLinkContentItem.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2DCD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_14470();
  result = dlsym(v2, "MKErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MapKitLibrary_14470()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_14479)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MapKitLibraryCore_block_invoke_14480;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278347A20;
    v6 = 0;
    MapKitLibraryCore_frameworkLibrary_14479 = _sl_dlopen();
  }

  v0 = MapKitLibraryCore_frameworkLibrary_14479;
  if (!MapKitLibraryCore_frameworkLibrary_14479)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFDCMapsLinkContentItem.m" lineNumber:16 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MapKitLibraryCore_block_invoke_14480(uint64_t a1)
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_14479 = result;
  return result;
}

void WFCLPlacemarkFromSerializedPlacemark(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"location"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass(v2, v3);

  if (v4)
  {
    v5 = WFCLLocationFromSerializedLocation(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 objectForKey:@"region"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass(v6, v7);

  v9 = &unk_21E356000;
  if (v8)
  {
    v10 = v8;
    v11 = [v10 objectForKey:@"radius"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass(v11, v12);
    [v13 doubleValue];

    v14 = [v10 objectForKey:@"identifier"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass(v14, v15);

    v17 = [v10 objectForKey:@"center"];
    v18 = objc_opt_class();
    v19 = WFEnforceClass(v17, v18);

    v20 = [v19 objectForKey:@"latitude"];
    v21 = objc_opt_class();
    v22 = WFEnforceClass(v20, v21);
    [v22 doubleValue];
    v24 = v23;

    v25 = [v19 objectForKey:@"longitude"];
    v26 = objc_opt_class();
    v27 = WFEnforceClass(v25, v26);
    [v27 doubleValue];
    v29 = v28;

    v54 = 0;
    v55 = &v54;
    v56 = 0x2050000000;
    v30 = getCLCircularRegionClass_softClass;
    v57 = getCLCircularRegionClass_softClass;
    if (!getCLCircularRegionClass_softClass)
    {
      v49 = MEMORY[0x277D85DD0];
      v50 = 3221225472;
      v51 = __getCLCircularRegionClass_block_invoke;
      v52 = &unk_27834A178;
      v53 = &v54;
      __getCLCircularRegionClass_block_invoke(&v49);
      v30 = v55[3];
    }

    v48 = v8;
    v31 = v4;
    v32 = v5;
    v33 = v30;
    _Block_object_dispose(&v54, 8);
    v34 = [v30 alloc];
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v35 = getCLLocationCoordinate2DMakeSymbolLoc_ptr_1818;
    v57 = getCLLocationCoordinate2DMakeSymbolLoc_ptr_1818;
    if (!getCLLocationCoordinate2DMakeSymbolLoc_ptr_1818)
    {
      v49 = MEMORY[0x277D85DD0];
      v50 = 3221225472;
      v51 = __getCLLocationCoordinate2DMakeSymbolLoc_block_invoke_1819;
      v52 = &unk_27834A178;
      v53 = &v54;
      v36 = CoreLocationLibrary_1820();
      v37 = dlsym(v36, "CLLocationCoordinate2DMake");
      *(v53[1] + 24) = v37;
      getCLLocationCoordinate2DMakeSymbolLoc_ptr_1818 = *(v53[1] + 24);
      v35 = v55[3];
    }

    _Block_object_dispose(&v54, 8);
    if (!v35)
    {
      v46 = [MEMORY[0x277CCA890] currentHandler];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CLLocationCoordinate2D WFCLLocationCoordinate2DMake(CLLocationDegrees, CLLocationDegrees)"}];
      [v46 handleFailureInFunction:v47 file:@"CLCircularRegion+WFSerialization.m" lineNumber:18 description:{@"%s", dlerror()}];

      __break(1u);
      return;
    }

    v35(v24, v29);
    v38 = [v34 initWithCenter:v16 radius:? identifier:?];

    v5 = v32;
    v9 = &unk_21E356000;
    v4 = v31;
    v8 = v48;
  }

  else
  {
    v38 = 0;
  }

  v39 = [v1 objectForKey:@"addressDictionary"];
  v40 = objc_opt_class();
  v41 = WFEnforceClass(v39, v40);

  v54 = 0;
  v55 = &v54;
  v56 = v9[180];
  v42 = getCLPlacemarkClass_softClass_14795;
  v57 = getCLPlacemarkClass_softClass_14795;
  if (!getCLPlacemarkClass_softClass_14795)
  {
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __getCLPlacemarkClass_block_invoke_14796;
    v52 = &unk_27834A178;
    v53 = &v54;
    __getCLPlacemarkClass_block_invoke_14796(&v49);
    v42 = v55[3];
  }

  v43 = v42;
  _Block_object_dispose(&v54, 8);
  v44 = [[v42 alloc] initWithLocation:v5 addressDictionary:v41 region:v38 areasOfInterest:0];

  v45 = v44;
}

void sub_21E2DDF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCLPlacemarkClass_block_invoke_14796(uint64_t a1)
{
  CoreLocationLibrary_14797();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLPlacemarkClass_softClass_14795 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CLPlacemark+WFSerialization.m" lineNumber:21 description:{@"Unable to find class %s", "CLPlacemark"}];

    __break(1u);
  }
}

void CoreLocationLibrary_14797()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_14806)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke_14807;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278347A60;
    v5 = 0;
    CoreLocationLibraryCore_frameworkLibrary_14806 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_14806)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CLPlacemark+WFSerialization.m" lineNumber:18 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CoreLocationLibraryCore_block_invoke_14807(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_14806 = result;
  return result;
}

id WFSerializedPlacemarkFromCLPlacemark(void *a1)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_new();
    v3 = [v1 location];
    v4 = WFSerializedLocationFromCLLocation(v3);
    [v2 setValue:v4 forKey:@"location"];

    v5 = [v1 addressDictionary];
    [v2 setValue:v5 forKey:@"addressDictionary"];

    v6 = [v1 region];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v7 = getCLCircularRegionClass_softClass_14822;
    v29 = getCLCircularRegionClass_softClass_14822;
    if (!getCLCircularRegionClass_softClass_14822)
    {
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __getCLCircularRegionClass_block_invoke_14823;
      v24 = &unk_27834A178;
      v25 = &v26;
      __getCLCircularRegionClass_block_invoke_14823(&v21);
      v7 = v27[3];
    }

    v8 = v7;
    _Block_object_dispose(&v26, 8);
    v9 = WFEnforceClass(v6, v7);

    if (v9)
    {
      v10 = v9;
      v26 = @"center";
      [v10 center];
      v12 = v11;
      v30[0] = @"latitude";
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v30[1] = @"longitude";
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:{v12, v13}];
      v22 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:v30 count:2];

      v27 = @"radius";
      v16 = MEMORY[0x277CCABB0];
      [v10 radius];
      v17 = [v16 numberWithDouble:?];
      v22 = v17;
      v28 = @"identifier";
      v18 = [v10 identifier];
      v23 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v26 count:3];

      [v2 setValue:v19 forKey:@"region"];
    }

    else
    {
      [v2 setValue:0 forKey:@"region"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_21E2DE4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCLCircularRegionClass_block_invoke_14823(uint64_t a1)
{
  CoreLocationLibrary_14797();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLCircularRegion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLCircularRegionClass_softClass_14822 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLCircularRegionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CLPlacemark+WFSerialization.m" lineNumber:20 description:{@"Unable to find class %s", "CLCircularRegion"}];

    __break(1u);
  }
}

id WFGetWorkflowReminderStore()
{
  if (WFGetWorkflowReminderStore_onceToken != -1)
  {
    dispatch_once(&WFGetWorkflowReminderStore_onceToken, &__block_literal_global_14970);
  }

  v1 = workflowReminderStore;

  return v1;
}

uint64_t __WFGetWorkflowReminderStore_block_invoke()
{
  getREMStoreClass();
  workflowReminderStore = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

id getREMStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMStoreClass_softClass;
  v7 = getREMStoreClass_softClass;
  if (!getREMStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getREMStoreClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getREMStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2DF820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMStoreClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_14972)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __ReminderKitLibraryCore_block_invoke_14973;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278347A78;
    v8 = 0;
    ReminderKitLibraryCore_frameworkLibrary_14972 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_14972)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFReminderKitUtilities.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("REMStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMStoreClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFReminderKitUtilities.m" lineNumber:22 description:{@"Unable to find class %s", "REMStore"}];

LABEL_10:
    __break(1u);
  }

  getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_14973(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_14972 = result;
  return result;
}

uint64_t WFClearWorkflowReminderStore()
{
  getREMStoreClass();
  workflowReminderStore = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

id WFMakeContentAttributionSetForRemindersAccount(void *a1, void *a2)
{
  v3 = MEMORY[0x277CD3A58];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [v6 initWithBundleIdentifier:*MEMORY[0x277D7A2C0]];
  v8 = [MEMORY[0x277CD3A88] sharedResolver];
  v9 = [v8 resolvedAppMatchingDescriptor:v7];

  v10 = [v5 objectID];

  v11 = [v10 uuid];
  v12 = [v11 UUIDString];
  v13 = [WFContentAttributionSet attributionSetWithAccountBasedAppDescriptor:v9 accountIdentifier:v12 disclosureLevel:1 originalItemIdentifier:v4];

  return v13;
}

id WFMakeContentLocationForRemindersAccount(void *a1)
{
  v1 = MEMORY[0x277CD3A58];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v3 initWithBundleIdentifier:*MEMORY[0x277D7A2C0]];
  v5 = [MEMORY[0x277CD3A88] sharedResolver];
  v6 = [v5 resolvedAppMatchingDescriptor:v4];

  v7 = [v2 objectID];

  v8 = [v7 uuid];
  v9 = [v8 UUIDString];
  v10 = [WFAccountContentLocation locationWithAccountIdentifier:v9 appDescriptor:v6];

  return v10;
}

id WFChooseFromListFormatPlaybackDuration(double a1)
{
  v1 = vcvtad_u64_f64(a1);
  v2 = v1 / 0x3C - 60 * (((v1 / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
  v3 = v1 % 0x3C;
  if (v1 >= 0xE10)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld:%02ld:%02ld", v1 / 0xE10, v2, v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld:%02ld", v2, v3, v6];
  }
  v4 = ;

  return v4;
}

void sub_21E2E0DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMKDistanceFormatterClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_15135)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MapKitLibraryCore_block_invoke_15136;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278347B88;
    v8 = 0;
    MapKitLibraryCore_frameworkLibrary_15135 = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary_15135)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFContentItem+ChooseFromList.m" lineNumber:38 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MKDistanceFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKDistanceFormatterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFContentItem+ChooseFromList.m" lineNumber:39 description:{@"Unable to find class %s", "MKDistanceFormatter"}];

LABEL_10:
    __break(1u);
  }

  getMKDistanceFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MapKitLibraryCore_block_invoke_15136(uint64_t a1)
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_15135 = result;
  return result;
}

void sub_21E2E26E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNAvatarImageRenderingScope");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNAvatarImageRenderingScopeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContentItem+ChooseFromList.m" lineNumber:46 description:{@"Unable to find class %s", "CNAvatarImageRenderingScope"}];

    __break(1u);
  }
}

void __getCNAvatarImageRendererSettingsClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNAvatarImageRendererSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRendererSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNAvatarImageRendererSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContentItem+ChooseFromList.m" lineNumber:50 description:{@"Unable to find class %s", "CNAvatarImageRendererSettings"}];

    __break(1u);
  }
}

void __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNAvatarImageRenderer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNAvatarImageRendererClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContentItem+ChooseFromList.m" lineNumber:45 description:{@"Unable to find class %s", "CNAvatarImageRenderer"}];

    __break(1u);
  }
}

void ContactsUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ContactsUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278347BA0;
    v5 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFContentItem+ChooseFromList.m" lineNumber:42 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCMTimeGetSecondsSymbolLoc_block_invoke_15164(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreMediaLibraryCore_frameworkLibrary_15166)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreMediaLibraryCore_block_invoke_15167;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278347B70;
    v7 = 0;
    CoreMediaLibraryCore_frameworkLibrary_15166 = _sl_dlopen();
  }

  v2 = CoreMediaLibraryCore_frameworkLibrary_15166;
  if (!CoreMediaLibraryCore_frameworkLibrary_15166)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreMediaLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFContentItem+ChooseFromList.m" lineNumber:30 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CMTimeGetSeconds");
  *(*(a1[4] + 8) + 24) = result;
  getCMTimeGetSecondsSymbolLoc_ptr_15163 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CoreMediaLibraryCore_block_invoke_15167(uint64_t a1)
{
  result = _sl_dlopen();
  CoreMediaLibraryCore_frameworkLibrary_15166 = result;
  return result;
}

void sub_21E2E35AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVMetadataItemClass_block_invoke_15172(uint64_t a1)
{
  AVFoundationLibrary_15175();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVMetadataItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVMetadataItemClass_softClass_15171 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVMetadataItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContentItem+ChooseFromList.m" lineNumber:34 description:{@"Unable to find class %s", "AVMetadataItem"}];

    __break(1u);
  }
}

void *__getAVMetadataCommonKeyArtistSymbolLoc_block_invoke_15174(uint64_t a1)
{
  v2 = AVFoundationLibrary_15175();
  result = dlsym(v2, "AVMetadataCommonKeyArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataCommonKeyArtistSymbolLoc_ptr_15173 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_15175()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_15182)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_15183;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278347B58;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_15182 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_15182;
  if (!AVFoundationLibraryCore_frameworkLibrary_15182)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFContentItem+ChooseFromList.m" lineNumber:33 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getAVMetadataKeySpaceCommonSymbolLoc_block_invoke_15179(uint64_t a1)
{
  v2 = AVFoundationLibrary_15175();
  result = dlsym(v2, "AVMetadataKeySpaceCommon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataKeySpaceCommonSymbolLoc_ptr_15178 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke_15183(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_15182 = result;
  return result;
}

void mlist_free(void *result)
{
  if (result)
  {
    v2 = result[3];
    if (v2 != result)
    {
      do
      {
        v3 = v2[3];
        mlist_free_one(v2);
        v2 = v3;
      }

      while (v3 != result);
    }

    mlist_free_one(result);
  }
}

void mlist_free_one(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    apprentice_unmap(v2);
  }

  free(a1);
}

void apprentice_unmap(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      if (v2 != 1)
      {
        abort();
      }

      v3 = 0;
      v4 = 1;
      do
      {
        v5 = v4;
        v6 = *&a1[2 * v3 + 6];
        if (v6 < *a1 || v6 > *a1 + *(a1 + 1))
        {
          free(v6);
        }

        v4 = 0;
        v3 = 1;
      }

      while ((v5 & 1) != 0);
      free(*a1);
    }

    free(a1);
  }
}

uint64_t apprentice_magic_strength(unsigned __int8 *a1)
{
  v1 = a1[6] - 1;
  v2 = 20;
  switch(a1[6])
  {
    case 1u:
    case 2u:
    case 4u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x31u:
    case 0x32u:
      if (v1 > 0x31 || ((0xF1C0000F1014uLL >> (a1[6] - 1)) & 1) != 0)
      {
        goto LABEL_74;
      }

      v3 = qword_21E3575B8[v1];
      v4 = 10;
      goto LABEL_5;
    case 3u:
      if (a1[11])
      {
        goto LABEL_74;
      }

      return 0;
    case 5u:
    case 0xDu:
      v9 = 10 * a1[5];
      goto LABEL_73;
    case 0x11u:
      v12 = 0;
      v13 = a1 + 32;
      break;
    case 0x12u:
    case 0x13u:
      v9 = 5 * a1[5];
      goto LABEL_73;
    case 0x14u:
      v10 = a1[5];
      if (a1[5])
      {
        if (v10 > 5)
        {
          v11 = 1;
        }

        else
        {
          v11 = 0xA / v10;
        }

        v9 = v11 * a1[5];
LABEL_73:
        v2 = v9 + 20;
      }

      else
      {
        v2 = 20;
      }

      goto LABEL_6;
    case 0x29u:
    case 0x2Du:
    case 0x2Eu:
      goto LABEL_6;
    case 0x30u:
      v2 = 30;
      goto LABEL_6;
    default:
      fprintf(*MEMORY[0x277D85DF8], "Bad type %d\n");
      goto LABEL_18;
  }

  while (1)
  {
    v14 = *v13;
    v15 = (v14 - 36);
    if (v15 > 0x3A)
    {
      break;
    }

    if (((1 << (v14 - 36)) & 0x4000000080004C1) != 0)
    {
      goto LABEL_62;
    }

    if (v15 != 55)
    {
      if (v15 == 56)
      {
        if (v13[1])
        {
          ++v13;
        }

        goto LABEL_57;
      }

      break;
    }

    while (v14 && v14 != 93)
    {
      v16 = *++v13;
      v14 = v16;
    }

    --v13;
LABEL_62:
    ++v13;
  }

  if (v14 == 123)
  {
    while (v14 && v14 != 125)
    {
      v17 = *++v13;
      v14 = v17;
    }

    v13 -= v14 == 0;
    goto LABEL_62;
  }

  if (*v13)
  {
LABEL_57:
    ++v12;
    goto LABEL_62;
  }

  if (v12 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v12;
  }

  if (v12 > 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0xAu / v4;
  }

LABEL_5:
  v2 = v3 * v4 + 20;
LABEL_6:
  v5 = 0;
  v6 = a1[4];
  if (v6 <= 0x3C)
  {
    if (v6 == 33)
    {
      goto LABEL_21;
    }

    if (v6 != 38)
    {
      if (v6 == 60)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

LABEL_19:
    v5 = v2 - 10;
    goto LABEL_21;
  }

  if (a1[4] > 0x5Du)
  {
    if (v6 != 94)
    {
      if (v6 == 120)
      {
        goto LABEL_21;
      }

LABEL_17:
      fprintf(*MEMORY[0x277D85DF8], "Bad relation %c\n");
LABEL_18:
      abort();
    }

    goto LABEL_19;
  }

  if (v6 == 61)
  {
    v5 = v2 + 10;
  }

  else
  {
    if (v6 != 62)
    {
      goto LABEL_17;
    }

LABEL_14:
    v5 = v2 - 20;
  }

LABEL_21:
  v7 = a1[11];
  if (v7 <= 0x2A)
  {
    if (!a1[11])
    {
      goto LABEL_31;
    }

    if (v7 == 42)
    {
      v5 *= a1[3];
      goto LABEL_31;
    }

LABEL_74:
    abort();
  }

  if (v7 == 47)
  {
    v5 /= a1[3];
    goto LABEL_31;
  }

  if (v7 == 45)
  {
    v5 -= a1[3];
    goto LABEL_31;
  }

  if (v7 != 43)
  {
    goto LABEL_74;
  }

  v5 += a1[3];
LABEL_31:
  if (v5 <= 1)
  {
    v5 = 1;
  }

  if (a1[160])
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

_DWORD *load_1(uint64_t a1, char *__filename, _DWORD *a3, uint64_t a4)
{
  __linep = 0;
  __linecapp = 0;
  *(a1 + 80) = __filename;
  v8 = fopen(__filename, "r");
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    ptr = 0;
    v203 = 0;
    v11 = &unk_27CEC2000;
    v12 = 1;
    v197 = a3;
    v198 = v8;
    while (1)
    {
      *(a1 + 88) = v12;
      v13 = getline(&__linep, &__linecapp, v9);
      if (!v13)
      {
        goto LABEL_519;
      }

      if (v13 == -1)
      {
        if (ptr)
        {
          addentry(a1, &ptr, a4);
        }

        free(__linep);
        return fclose(v9);
      }

      v14 = __linep;
      if (__linep[v13 - 1] == 10)
      {
        v10 = (v10 + 1);
        __linep[v13 - 1] = 0;
        v14 = __linep;
      }

      v15 = *v14;
      if (!*v14)
      {
        goto LABEL_519;
      }

      if (v15 == 33)
      {
        if (v14[1] != 58)
        {
          goto LABEL_20;
        }

        v16 = a4;
        v17 = v10;
        v18 = v13 - 2;
        v19 = 4;
        v20 = &bang;
        v21 = "mime";
        while (1)
        {
          v22 = v20[1];
          if (v18 > v22 && !memcmp(v21, v14 + 2, v20[1]))
          {
            break;
          }

          v23 = v20[3];
          v20 += 3;
          v21 = v23;
          if (!--v19)
          {
            goto LABEL_17;
          }
        }

        if (ptr)
        {
          a3 = v197;
          if (!(v20[2])(a1, &ptr, &v22[v14 + 2], v18 - v22))
          {
            goto LABEL_19;
          }
        }

        else
        {
          file_error(a1, 0, "No current entry for :!%s type");
LABEL_17:
          a3 = v197;
        }

        ++*a3;
LABEL_19:
        v9 = v198;
        v10 = v17;
        a4 = v16;
        v11 = &unk_27CEC2000;
        goto LABEL_519;
      }

      if (v15 == 35)
      {
        goto LABEL_519;
      }

      while (1)
      {
LABEL_20:
        __s1 = v14;
        if (*v14 == 62)
        {
          v24 = 0;
          do
          {
            v25 = *++v14;
            ++v24;
          }

          while (v25 == 62);
          __s1 = v14;
        }

        else
        {
          v24 = 0;
        }

        __endptr = 0;
        if (v24 - 1 < v11[50])
        {
          break;
        }

        if (file_check_mem(a1, v24) == -1)
        {
          goto LABEL_518;
        }

        v11[50] = v24;
        if (v24)
        {
          goto LABEL_31;
        }

        if (!ptr)
        {
          v33 = malloc_type_malloc(0xEB0uLL, 0x1000040E4699127uLL);
          if (!v33)
          {
            v47 = __error();
            file_error(a1, *v47, "cannot allocate %zu bytes", 0xEB0uLL);
            goto LABEL_518;
          }

          v30 = v33;
          v199 = v10;
          v32 = 0;
          ptr = v33;
          *v33 = 0u;
          v33[1] = 0u;
          v33[2] = 0u;
          v33[3] = 0u;
          v33[4] = 0u;
          v33[5] = 0u;
          v33[6] = 0u;
          v33[7] = 0u;
          v33[8] = 0u;
          v33[9] = 0u;
          v33[10] = 0u;
          v33[11] = 0u;
          v33[12] = 0u;
          v33[13] = 0u;
          v33[14] = 0u;
          v33[15] = 0u;
          v33[16] = 0u;
          v33[17] = 0u;
          v33[18] = 0u;
          v33[19] = 0u;
          v33[20] = 0u;
          v33[21] = 0u;
          v33[22] = 0u;
          *(v33 + 46) = 0;
          v31 = 1;
          v203 = 0xA00000001;
          goto LABEL_41;
        }

        addentry(a1, &ptr, a4);
        v14 = __linep;
      }

      v11[50] = v24;
LABEL_31:
      v26 = ptr;
      if (!ptr)
      {
        file_magerror(a1, "No current entry for continuation");
        goto LABEL_518;
      }

      v27 = v203;
      if (!v203)
      {
        file_magerror(a1, "Continuations present with 0 count");
        goto LABEL_518;
      }

      v28 = *(ptr + 188 * (v203 - 1));
      if ((v24 - v28) >= 2)
      {
        file_magwarn(a1, "New continuation level %u is more than one larger than current level %u", v24, v28);
        v27 = v203;
        v26 = ptr;
      }

      v199 = v10;
      if (v27 == HIDWORD(v203))
      {
        v29 = v27 + 10;
        v26 = malloc_type_realloc(v26, 376 * v29, 0x1000040E4699127uLL);
        if (!v26)
        {
          v52 = __error();
          file_error(a1, *v52, "cannot allocate %zu bytes", 376 * v29);
          a3 = v197;
          v10 = v10;
          goto LABEL_518;
        }

        ptr = v26;
        HIDWORD(v203) = v29;
        v27 = v203;
        a3 = v197;
      }

      LODWORD(v203) = v27 + 1;
      v30 = v26 + 376 * v27;
      *(v30 + 18) = 0u;
      *(v30 + 34) = 0u;
      *(v30 + 50) = 0u;
      *(v30 + 66) = 0u;
      *(v30 + 82) = 0u;
      *(v30 + 98) = 0u;
      *(v30 + 114) = 0u;
      *(v30 + 130) = 0u;
      *(v30 + 146) = 0u;
      *(v30 + 162) = 0u;
      *(v30 + 178) = 0u;
      *(v30 + 194) = 0u;
      *(v30 + 210) = 0u;
      *(v30 + 226) = 0u;
      *(v30 + 242) = 0u;
      *(v30 + 2) = 0u;
      *(v30 + 368) = 0;
      *(v30 + 258) = 0u;
      *(v30 + 274) = 0u;
      *(v30 + 290) = 0u;
      *(v30 + 306) = 0u;
      v31 = v24 == 0;
      *(v30 + 322) = 0u;
      *(v30 + 338) = 0u;
      *(v30 + 354) = 0u;
      v32 = v24;
      *v30 = v24;
LABEL_41:
      *(v30 + 20) = v199;
      v34 = *v14;
      if (v34 == 38)
      {
        __s1 = v14 + 1;
        *(v30 + 2) |= 2u;
        v34 = *++v14;
      }

      if (v34 == 40)
      {
        v35 = v14 + 1;
        __s1 = v14 + 1;
        v36 = *(v30 + 2);
        if ((v36 & 2) != 0)
        {
          v37 = v36 & 0xF8 | 5;
        }

        else
        {
          v37 = v36 | 1;
        }

        *(v30 + 2) = v37;
        if (v14[1] == 38)
        {
          v35 = v14 + 2;
          __s1 = v14 + 2;
          *(v30 + 2) = v37 | 2;
        }

        if (!v31)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v35 = v14;
        if (!v31)
        {
          goto LABEL_56;
        }
      }

      if ((*(v30 + 2) & 6) != 0)
      {
        v10 = v199;
        if ((*(a1 + 68) & 0x40) != 0)
        {
          file_magwarn(a1, "relative offset at level 0", v193, v194, v195);
        }

        goto LABEL_518;
      }

LABEL_56:
      if (*v35 == 45)
      {
        __s1 = ++v35;
        *(v30 + 2) |= 0x80u;
      }

      *(v30 + 12) = strtol(v35, &__endptr, 0);
      v38 = __endptr;
      if (__s1 == __endptr)
      {
        v10 = v199;
        if ((*(a1 + 68) & 0x40) != 0)
        {
        }

        goto LABEL_518;
      }

      __s1 = __endptr;
      if (*(v30 + 2))
      {
        v48 = 0;
        *(v30 + 7) = 4;
        *(v30 + 16) = 0;
        v49 = *v38;
        switch(v49)
        {
          case '.':
LABEL_84:
            __s1 = v38 + 1;
            v50 = v38[1] - 66;
            v9 = v198;
            if (v50 >= 0x32 || ((0x28CFB000284FBuLL >> v50) & 1) == 0)
            {
              v10 = v199;
              if ((*(a1 + 68) & 0x40) != 0)
              {
              }

              goto LABEL_518;
            }

            *(v30 + 7) = byte_21E357585[(v38[1] - 66)];
            __s1 = v38 + 2;
            v49 = v38[2];
            v38 += 2;
            break;
          case ',':
            v48 = 32;
            *(v30 + 8) = 32;
            goto LABEL_84;
          case '~':
            v48 |= 0x40u;
            *(v30 + 8) = v48;
            __s1 = v38 + 1;
            v49 = *++v38;
            break;
        }

        op = get_op(v49);
        if (op != -1)
        {
          v48 |= op;
          *(v30 + 8) = v48;
          __s1 = v38 + 1;
          v49 = *++v38;
        }

        if (v49 == 40)
        {
          *(v30 + 8) = v48 | 0x80;
          __s1 = v38 + 1;
          v49 = *++v38;
        }

        if (v49 == 45 || (v49 - 48) <= 9)
        {
          *(v30 + 16) = strtol(v38, &__endptr, 0);
          v38 = __endptr;
          if (__s1 == __endptr)
          {
            v9 = v198;
            v10 = v199;
            if ((*(a1 + 68) & 0x40) != 0)
            {
            }

            goto LABEL_518;
          }
        }

        v39 = v38 + 1;
        __s1 = v38 + 1;
        v9 = v198;
        if (*v38 != 41 || *(v30 + 8) < 0 && (v39 = v38 + 2, __s1 = v38 + 2, v38[1] != 41))
        {
          v10 = v199;
          if ((*(a1 + 68) & 0x40) != 0)
          {
            file_magwarn(a1, "missing ')' in indirect offset", v193, v194, v195);
          }

          goto LABEL_518;
        }

        goto LABEL_61;
      }

      v39 = __endptr;
LABEL_61:
      if ((*v39 & 0x80000000) == 0)
      {
        v40 = *v39;
        v41 = v39 + 1;
        do
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v40 + 60) & 0x4000) == 0)
          {
            break;
          }

          __s1 = v41;
          v42 = *v41++;
          v40 = v42;
        }

        while ((v42 & 0x80000000) == 0);
        v39 = v41 - 1;
      }

      v43 = 2;
      v44 = &get_cond_cond_tbl;
      while (1)
      {
        if (strncmp(v39, v44, v43))
        {
          goto LABEL_72;
        }

        v45 = v39[v43];
        if (v45 < 0)
        {
          break;
        }

        if ((*(MEMORY[0x277D85DE0] + 4 * v45 + 60) & 0x4000) != 0)
        {
          goto LABEL_105;
        }

LABEL_72:
        v46 = v44 + 24;
        v43 = *(v44 + 4);
        v44 += 24;
        if (!v43)
        {
          v44 = v46;
          goto LABEL_106;
        }
      }

      if (!__maskrune(v39[v43], 0x4000uLL))
      {
        goto LABEL_72;
      }

LABEL_105:
      v39 += v43;
      __s1 = v39;
LABEL_106:
      v53 = v44[16];
      *(v30 + 10) = v53;
      v54 = *(a1 + 24) + 16 * v32;
      v57 = *(v54 + 12);
      v55 = (v54 + 12);
      v56 = v57;
      v9 = v198;
      if (v53 > 1)
      {
        v10 = v199;
        if (v53 == 2)
        {
          if ((v56 - 3) <= 0xFFFFFFFD)
          {
            if ((*(a1 + 68) & 0x40) != 0)
            {
            }

            goto LABEL_518;
          }

          v56 = 2;
          goto LABEL_124;
        }

        if (v53 == 3)
        {
          if ((v56 - 3) <= 0xFFFFFFFD)
          {
            if ((*(a1 + 68) & 0x40) != 0)
            {
            }

            goto LABEL_518;
          }

          goto LABEL_116;
        }
      }

      else
      {
        v10 = v199;
        if (v53)
        {
          if ((v56 & 0xFFFFFFFD) != 0)
          {
            if ((*(a1 + 68) & 0x40) != 0)
            {
            }

            goto LABEL_518;
          }

          v56 = 1;
          goto LABEL_124;
        }

LABEL_116:
        v56 = 0;
      }

LABEL_124:
      *v55 = v56;
      if (*v39 < 0)
      {
        goto LABEL_134;
      }

      v58 = *v39;
      v59 = v39 + 1;
      while ((*(MEMORY[0x277D85DE0] + 4 * v58 + 60) & 0x4000) != 0)
      {
        __s1 = v59;
        v60 = *v59++;
        v58 = v60;
        if (v60 < 0)
        {
          v39 = v59 - 1;
          goto LABEL_134;
        }
      }

      v39 = v59 - 1;
      if (v58 != 117)
      {
LABEL_134:
        v66 = 7;
        v67 = "invalid";
        while (strncmp(v39, v67, v66))
        {
          v66 = *(v67 + 6);
          v67 += 32;
          if (!v66)
          {
            v67 = &unk_21E357480;
            goto LABEL_139;
          }
        }

        v39 += v66;
        __s1 = v39;
LABEL_139:
        v68 = *(v67 + 6);
        *(v30 + 6) = v68;
        v69 = (v30 + 6);
        v70 = v68;
        v9 = v198;
        if (v68)
        {
LABEL_140:
          v71 = __s1;
          if (!v70)
          {
            goto LABEL_141;
          }

          goto LABEL_164;
        }

        v76 = *v39;
        if (v76 != 115)
        {
          if (v76 == 100)
          {
            standard_integer_type = get_standard_integer_type(v39, &__s1);
            v70 = standard_integer_type;
            *v69 = standard_integer_type;
          }

          goto LABEL_140;
        }

        v79 = v39[1];
        v71 = v39 + 1;
        v78 = v79;
        if (v79 < 0)
        {
          if (__maskrune(v78, 0x100uLL))
          {
            goto LABEL_154;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v78 + 60) & 0x100) != 0)
        {
LABEL_154:
          v70 = *v69;
          goto LABEL_140;
        }

        v70 = 5;
        *v69 = 5;
        __s1 = v71;
LABEL_163:
        v69 = (v30 + 6);
        goto LABEL_164;
      }

      v61 = a4;
      v62 = v10;
      v63 = v59;
      v64 = 7;
      v65 = "invalid";
      while (strncmp(v39 + 1, v65, v64))
      {
        v64 = *(v65 + 6);
        v65 += 32;
        if (!v64)
        {
          v65 = &unk_21E357480;
          goto LABEL_156;
        }
      }

      v39 = &v63[v64];
      __s1 = &v63[v64];
LABEL_156:
      v80 = *(v65 + 6);
      *(v30 + 6) = v80;
      v69 = (v30 + 6);
      v70 = v80;
      v9 = v198;
      v10 = v62;
      if (!v80)
      {
        v81 = get_standard_integer_type(v39, &__s1);
        v70 = v81;
        *v69 = v81;
      }

      a4 = v61;
      if (v70)
      {
        *(v30 + 2) |= 8u;
        v71 = __s1;
        goto LABEL_163;
      }

      v71 = __s1;
LABEL_141:
      v72 = a4;
      v73 = v10;
      v74 = 3;
      v75 = &special_tbl;
      while (strncmp(v71, v75, v74))
      {
        v74 = *(v75 + 6);
        v75 += 32;
        if (!v74)
        {
          v75 = &unk_21E357500;
          goto LABEL_149;
        }
      }

      v71 += v74;
      __s1 = v71;
LABEL_149:
      v10 = v73;
      v70 = *(v75 + 24);
      *v69 = v70;
      a4 = v72;
      if (!v70)
      {
        v11 = &unk_27CEC2000;
        if ((*(a1 + 68) & 0x40) != 0)
        {
        }

        goto LABEL_518;
      }

LABEL_164:
      *(v30 + 9) = 0;
      if (*v71 == 126)
      {
        v82 = v70 > 0x2E || ((1 << v70) & 0x6200001E2020) == 0;
        if (v82)
        {
          *(v30 + 9) = 64;
          v11 = &unk_27CEC2000;
        }

        else
        {
          v11 = &unk_27CEC2000;
          if ((*(a1 + 68) & 0x40) != 0)
          {
            file_magwarn(a1, "'~' invalid for string types");
            v71 = __s1;
            v70 = *v69;
          }
        }

        __s1 = ++v71;
      }

      else
      {
        v11 = &unk_27CEC2000;
      }

      *(v30 + 24) = 0;
      *(v30 + 28) = (v70 == 13) << 7;
      v83 = *v71;
      v84 = get_op(*v71);
      if (v84 == -1)
      {
        goto LABEL_280;
      }

      if (v70 > 0x2E || ((1 << v70) & 0x6200001E2020) == 0)
      {
        v212[0] = 0;
        *(v30 + 9) |= v84;
        v95 = strtoull(v71 + 1, v212, 0);
        v208[0] = v212[0];
        *(v30 + 24) = file_signextend(a1, v30, v95);
        eatsize(v208);
        v71 = v208[0];
        __s1 = v208[0];
        goto LABEL_279;
      }

      v9 = v198;
      if (v84 != 6)
      {
        if ((*(a1 + 68) & 0x40) != 0)
        {
        }

        goto LABEL_518;
      }

      if (v70 == 41)
      {
        while (1)
        {
          v85 = *++v71;
          if (v85 < 0)
          {
            if (__maskrune(*v71, 0x4000uLL))
            {
LABEL_247:
              v94 = 0;
              goto LABEL_251;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v85 + 60) & 0x4000) != 0)
          {
            goto LABEL_247;
          }

          if (v85 != 114)
          {
            break;
          }

          *(v30 + 28) |= 1u;
        }

        if ((*(a1 + 68) & 0x40) != 0)
        {
        }

        v94 = -1;
LABEL_251:
        __s1 = v71;
        a3 = v197;
        goto LABEL_278;
      }

      v86 = 0;
      v208[0] = 0;
      while (2)
      {
        v88 = *++v71;
        v87 = v88;
        if ((v88 & 0x8000000000000000) == 0)
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v87 + 60) & 0x4000) != 0)
          {
            goto LABEL_245;
          }

LABEL_191:
          if (v87 > 0x47u)
          {
            if (v87 > 0x62u)
            {
              if (v87 > 0x72u)
              {
                switch(v87)
                {
                  case 's':
                    v90 = *(v30 + 28) | 0x10;
                    break;
                  case 't':
                    v90 = *(v30 + 28) | 0x20;
                    break;
                  case 'w':
                    v90 = *(v30 + 28) | 2;
                    break;
                  default:
                    goto LABEL_259;
                }
              }

              else if (v87 == 99)
              {
                v90 = *(v30 + 28) | 4;
              }

              else if (v87 == 104)
              {
                if (*(v30 + 6) != 13)
                {
                  goto LABEL_259;
                }

                v90 = *(v30 + 28) & 0xFFFFF07F | 0x200;
              }

              else
              {
                if (v87 != 108 || (v91 = *(v30 + 6), v91 != 17) && v91 != 13)
                {
LABEL_259:
                  if ((*(a1 + 68) & 0x40) != 0)
                  {
                  }

                  v94 = -1;
                  goto LABEL_262;
                }

                v90 = *(v30 + 28) & 0xFFFFF07F | 0x800;
              }
            }

            else if (v87 > 0x53u)
            {
              switch(v87)
              {
                case 'T':
                  v90 = *(v30 + 28) | 0x2000;
                  break;
                case 'W':
                  v90 = *(v30 + 28) | 1;
                  break;
                case 'b':
                  v90 = *(v30 + 28) | 0x40;
                  break;
                default:
                  goto LABEL_259;
              }
            }

            else if (v87 == 72)
            {
              if (*(v30 + 6) != 13)
              {
                goto LABEL_259;
              }

              v90 = *(v30 + 28) & 0xFFFFF07F | 0x100;
            }

            else if (v87 == 74)
            {
              if (*(v30 + 6) != 13)
              {
                goto LABEL_259;
              }

              v90 = *(v30 + 28) | 0x1000;
            }

            else
            {
              if (v87 != 76 || *(v30 + 6) != 13)
              {
                goto LABEL_259;
              }

              v90 = *(v30 + 28) & 0xFFFFF07F | 0x400;
            }
          }

          else
          {
            if (v87 - 48 < 0xA)
            {
              if (v86 && (*(a1 + 68) & 0x40) != 0)
              {
                file_magwarn(a1, "multiple ranges");
              }

              v89 = strtoul(v71, v208, 0);
              *(v30 + 24) = v89;
              if (!v89)
              {
                file_magwarn(a1, "zero range");
              }

              v71 = v208[0] - 1;
              v86 = 1;
              goto LABEL_238;
            }

            if (v87 == 66)
            {
              if (*(v30 + 6) != 13)
              {
                goto LABEL_259;
              }

              v90 = *(v30 + 28) & 0xFFFFF07F | 0x80;
            }

            else
            {
              if (v87 != 67)
              {
                goto LABEL_259;
              }

              v90 = *(v30 + 28) | 8;
            }
          }

          *(v30 + 28) = v90;
LABEL_238:
          if (v71[1] == 47)
          {
            v92 = v71[2];
            if (!(v92 < 0 ? __maskrune(v71[2], 0x4000uLL) : *(MEMORY[0x277D85DE0] + 4 * v92 + 60) & 0x4000))
            {
              ++v71;
            }
          }

          continue;
        }

        break;
      }

      if (!__maskrune(v87, 0x4000uLL))
      {
        goto LABEL_191;
      }

LABEL_245:
      if ((*(a1 + 68) & 0x40) == 0)
      {
        v94 = 0;
LABEL_262:
        a3 = v197;
        goto LABEL_277;
      }

      v96 = *(v30 + 6);
      v97 = *(v30 + 28);
      a3 = v197;
      if (v96 == 13)
      {
        goto LABEL_272;
      }

      if (v96 == 17 && (v97 & 0x800) != 0)
      {
        goto LABEL_269;
      }

      if ((v97 & 0xF80) != 0)
      {
        file_magwarn(a1, "'/BHhLl' modifiers are only allowed for pascal strings\n", v193);
        goto LABEL_276;
      }

      if (*(v30 + 6) <= 0x11u)
      {
        if (v96 == 5)
        {
LABEL_272:
          if ((v97 & 0x10) == 0)
          {
            goto LABEL_273;
          }

          file_magwarn(a1, "'/%c' only allowed on regex and search\n");
        }

        else
        {
          if (v96 == 17)
          {
LABEL_269:
            if ((v97 & 1) == 0 && (v97 & 2) == 0)
            {
              goto LABEL_273;
            }

            file_magwarn(a1, "'/%c' not allowed on regex\n");
            goto LABEL_276;
          }

LABEL_500:
          file_magwarn(a1, "coding error: m->type=%d\n");
        }

LABEL_276:
        v94 = -1;
        goto LABEL_277;
      }

      if ((v96 - 18) >= 2)
      {
        if (v96 != 20)
        {
          goto LABEL_500;
        }

        if (*(v30 + 24))
        {
          goto LABEL_273;
        }

        file_magwarn(a1, "missing range; defaulting to %d\n", 100);
        *(v30 + 24) = 100;
        goto LABEL_276;
      }

      if (v97)
      {
        file_magwarn(a1, "no modifiers allowed for 16-bit strings\n", v193);
        goto LABEL_276;
      }

LABEL_273:
      v94 = 0;
LABEL_277:
      __s1 = v71;
LABEL_278:
      if (v94 == -1)
      {
        goto LABEL_518;
      }

LABEL_279:
      v83 = *v71;
LABEL_280:
      if ((v83 & 0x80) == 0)
      {
        v98 = v71 + 1;
        do
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v83 + 60) & 0x4000) == 0)
          {
            break;
          }

          __s1 = v98;
          v99 = *v98++;
          v83 = v99;
        }

        while ((v99 & 0x80000000) == 0);
        v71 = v98 - 1;
      }

      if (v83 - 33 <= 0x3D)
      {
        if (((1 << (v83 - 33)) & 0x2000000010000020) != 0)
        {
          *(v30 + 4) = v83;
          v100 = v71 + 1;
          __s1 = v71 + 1;
          if (v71[1] == 61)
          {
            goto LABEL_292;
          }

          goto LABEL_296;
        }

        if (((1 << (v83 - 33)) & 0x28000000) != 0)
        {
          *(v30 + 4) = v83;
          v100 = v71 + 1;
          __s1 = v71 + 1;
          if (v71[1] == 61)
          {
            if ((*(a1 + 68) & 0x40) != 0)
            {
              file_magwarn(a1, "%c= not supported", v83);
              v9 = v198;
              goto LABEL_518;
            }

LABEL_292:
            v100 = v71 + 2;
LABEL_295:
            __s1 = v100;
          }

          goto LABEL_296;
        }

        if (v83 == 33)
        {
          *(v30 + 4) = 33;
          v100 = v71 + 1;
          goto LABEL_295;
        }
      }

      *(v30 + 4) = 61;
      if (*v71 != 120 || (v122 = v71 + 1, v123 = v71[1], v123 < 0))
      {
        v100 = v71;
        goto LABEL_296;
      }

      if (!v71[1] || (v100 = v71, (*(MEMORY[0x277D85DE0] + 4 * v123 + 60) & 0x4000) != 0))
      {
        *(v30 + 4) = 120;
        __s1 = v71 + 1;
        v9 = v198;
        goto LABEL_392;
      }

LABEL_296:
      v212[0] = 0;
      v101 = *(v30 + 6);
      if (v101 > 0x30 || ((1 << v101) & 0x16000001E2020) == 0)
      {
        v9 = v198;
        if (*(v30 + 4) == 120)
        {
          goto LABEL_391;
        }

        if (v101 - 33 >= 3)
        {
          if (v101 - 36 < 3)
          {
            *__error() = 0;
            *(v30 + 32) = strtod(__s1, v212);
            goto LABEL_385;
          }

          if (v101 == 49)
          {
            if (file_parse_guid(v100, v30 + 32) == -1)
            {
              goto LABEL_518;
            }

            v124 = __s1 + 36;
LABEL_390:
            __s1 = v124;
            goto LABEL_391;
          }

          v159 = v10;
          *__error() = 0;
          v160 = strtoull(__s1, v212, 0);
          *(v30 + 32) = file_signextend(a1, v30, v160);
          v161 = __s1;
          v162 = v212[0];
          if (__s1 == v212[0])
          {
            v10 = v159;
            goto LABEL_529;
          }

          v201 = v212[0];
          v163 = *(v30 + 6);
          v164 = v163 - 1;
          if (v163 - 1) > 0x31 || ((0xF1C0000F1014uLL >> v164))
          {
            v165 = -1;
            v161 = __s1;
          }

          else
          {
            v165 = qword_21E3575B8[v164];
          }

          do
          {
            v187 = *v161;
            if (*v161 < 0)
            {
              v188 = __maskrune(*v161, 0x4000uLL);
            }

            else
            {
              v188 = *(MEMORY[0x277D85DE0] + 4 * *v161 + 60) & 0x4000;
            }

            ++v161;
          }

          while (v188);
          if (v187 == 45)
          {
            v189 = -v160;
          }

          else
          {
            v189 = v160;
          }

          if (v165 <= 3)
          {
            v9 = v198;
            v10 = v159;
            if (v165 != 1)
            {
              v82 = v165 == 2;
              v162 = v201;
              if (!v82)
              {
                goto LABEL_537;
              }

              v190 = -65536;
LABEL_527:
              if ((v190 & v189) != 0)
              {
              }

LABEL_529:
              if (!*__error())
              {
                __s1 = v162;
                eatsize(&__s1);
              }

              goto LABEL_391;
            }

            v190 = -256;
LABEL_526:
            v162 = v201;
            goto LABEL_527;
          }

          v9 = v198;
          v10 = v159;
          if (v165 == 4)
          {
            v190 = 0xFFFFFFFF00000000;
            goto LABEL_526;
          }

          v82 = v165 == 8;
          v162 = v201;
          if (v82)
          {
            goto LABEL_529;
          }

LABEL_537:
          abort();
        }

        *__error() = 0;
        *(v30 + 32) = strtof(__s1, v212);
LABEL_385:
        if (!*__error())
        {
          v124 = v212[0];
          goto LABEL_390;
        }

LABEL_391:
        v122 = __s1;
LABEL_392:
        v125 = *v122;
        if ((*v122 & 0x80000000) == 0)
        {
          v126 = v122 + 1;
          do
          {
            if ((*(MEMORY[0x277D85DE0] + 4 * v125 + 60) & 0x4000) == 0)
            {
              break;
            }

            __s1 = v126;
            v127 = *v126++;
            v125 = v127;
          }

          while ((v127 & 0x80000000) == 0);
          v122 = v126 - 1;
        }

        if (v125 == 8)
        {
          v128 = 1;
LABEL_402:
          __s1 = &v122[v128];
          *(v30 + 2) |= 0x10u;
        }

        else if (v125 == 92 && v122[1] == 98)
        {
          v128 = 2;
          goto LABEL_402;
        }

        v129 = 0;
        do
        {
          v130 = __s1++;
          v131 = *v130;
          v132 = v129 + 1;
          *(v30 + 160 + v129) = v131;
          if (v129 > 0x3E)
          {
            break;
          }

          ++v129;
        }

        while (v131);
        if (v132 == 64)
        {
          *(v30 + 223) = 0;
          if ((*(a1 + 68) & 0x40) != 0)
          {
          }
        }

        if ((*(a1 + 68) & 0x40) == 0)
        {
LABEL_410:
          *(v30 + 224) = 0;
          goto LABEL_519;
        }

        v133 = v30;
        for (i = (v30 + 160); ; ++i)
        {
          if (!*i)
          {
            goto LABEL_410;
          }

          if (*i == 37)
          {
            break;
          }

          ++v133;
        }

        v135 = *(v30 + 6);
        if (v135 >= 0x33)
        {
          file_magwarn(a1, "Internal error inconsistency between m->type and format strings", v193, v194, v195);
          goto LABEL_518;
        }

        v136 = file_formats[v135];
        if (!v136)
        {
          goto LABEL_518;
        }

        v139 = i[1];
        v138 = i + 1;
        v137 = v139;
        if (v139)
        {
          if (v136 > 3)
          {
            if ((v136 - 4) >= 2)
            {
              goto LABEL_537;
            }

            if (v137 == 45)
            {
              v142 = v138 + 1;
            }

            else
            {
              v142 = v138;
            }

            v143 = *v142;
            v144 = v143 == 46;
            if (v143 == 46)
            {
              v145 = v142 + 1;
            }

            else
            {
              v145 = v142;
            }

            v146 = *v145;
            if ((v146 - 48) <= 9)
            {
              v147 = 0;
              v148 = 0;
              v149 = v133 + (v137 == 45) + v144;
              do
              {
                v148 = 10 * v148 + v146 - 48;
                v150 = v149 + v147++;
                v146 = *(v150 + 162);
              }

              while ((v146 - 48) < 0xA);
              if (v147 > 5 || v148 > 0x400)
              {
                goto LABEL_517;
              }

              v145 = (v149 + v147 + 161);
            }

            v151 = v146 == 46;
            if (v146 == 46)
            {
              v152 = v145 + 1;
            }

            else
            {
              v152 = v145;
            }

            v153 = *v152;
            if ((v153 - 48) > 9)
            {
              goto LABEL_448;
            }

            v154 = 0;
            v155 = 0;
            v156 = &v145[v151 + 1];
            do
            {
              v155 = 10 * v155 + v153 - 48;
              v157 = v154 + 1;
              v153 = *(v156 + v154++);
            }

            while ((v153 - 48) < 0xA);
            if (v157 <= 5 && v155 <= 0x400)
            {
LABEL_448:
              v158 = v153 - 69;
              if (v158 <= 0x22 && ((1 << v158) & 0x700000007) != 0)
              {
                goto LABEL_492;
              }
            }
          }

          else
          {
            switch(v136)
            {
              case 1:
                v166 = v135 - 1;
                if ((v135 - 1) >= 0x29u || ((0x1C0004006CBuLL >> v166) & 1) == 0)
                {
                  goto LABEL_537;
                }

                v141 = 0x3FFFBFF935uLL >> v166;
                v140 = 1;
LABEL_457:
                if (v137 == 45)
                {
                  ++v138;
                }

                v167 = *v138 == 46;
                if (*v138 == 46)
                {
                  ++v138;
                }

                v168 = v138 + 1;
                v169 = *v138;
                v170 = v169 == 35;
                if (v169 != 35)
                {
                  v168 = v138;
                }

                v171 = *v168;
                if ((v171 - 48) <= 9)
                {
                  v172 = 0;
                  v173 = 0;
                  v174 = v133 + v167 + (v137 == 45) + v170;
                  do
                  {
                    v173 = 10 * v173 + v171 - 48;
                    v175 = v174 + v172++;
                    v171 = *(v175 + 162);
                  }

                  while ((v171 - 48) < 0xA);
                  if (v172 > 5 || v173 > 0x400)
                  {
                    break;
                  }

                  v168 = (v174 + v172 + 161);
                }

                if (v171 == 46)
                {
                  v176 = v168 + 1;
                }

                else
                {
                  v176 = v168;
                }

                v177 = *v176;
                if ((v177 - 48) <= 9)
                {
                  v178 = 0;
                  v179 = 0;
                  do
                  {
                    v179 = 10 * v179 + v177 - 48;
                    v180 = &v176[v178++];
                    v177 = v180[1];
                  }

                  while ((v177 - 48) < 0xA);
                  if (v178 > 5 || v179 > 0x400)
                  {
                    break;
                  }

                  v176 += v178;
                }

                if ((v140 & 1) == 0)
                {
                  if (v177 != 108 || v176[1] != 108)
                  {
                    break;
                  }

                  v177 = v176[2];
                }

                v181 = (v177 - 88);
                if (v181 <= 0x20 && (((1 << (v177 - 88)) & 0x120821001) != 0 || v181 == 11 && (v141 & 1) != 0))
                {
                  goto LABEL_492;
                }

                break;
              case 2:
                if (v137 == 45)
                {
                  v182 = v138 + 1;
                }

                else
                {
                  v182 = v138;
                }

                do
                {
                  v184 = *v182++;
                  v183 = v184;
                }

                while ((v184 - 48) < 0xA);
                if (v183 == 46)
                {
                  v185 = 0;
                  do
                  {
                    v183 = v182[v185++];
                  }

                  while ((v183 - 48) < 0xA);
                }

                if (v183 == 115)
                {
LABEL_492:
                  v186 = 162;
                  if (v137)
                  {
                    while (v137 != 37)
                    {
                      v137 = *(v133 + v186++);
                      if (!v137)
                      {
                        goto LABEL_410;
                      }
                    }

                    goto LABEL_518;
                  }

                  goto LABEL_410;
                }

                break;
              case 3:
                v140 = 0;
                LOBYTE(v141) = 0;
                goto LABEL_457;
              default:
                goto LABEL_537;
            }
          }
        }

LABEL_517:
        goto LABEL_518;
      }

      LOBYTE(v102) = *v100;
      if (!*v100)
      {
        v118 = 0;
        v103 = (v30 + 32);
        goto LABEL_362;
      }

      v200 = v10;
      v103 = (v30 + 32);
      v196 = v100;
      v104 = 32;
      while (2)
      {
        if ((v102 & 0x80) == 0)
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v102 + 60) & 0x4000) != 0)
          {
            goto LABEL_360;
          }

LABEL_304:
          if (v104 == 159)
          {
            v9 = v198;
            v10 = v200;
            goto LABEL_371;
          }

          if (v102 != 92)
          {
            v105 = v100 + 1;
            goto LABEL_313;
          }

          v105 = v100 + 2;
          v102 = v100[1];
          if (v102 <= 0x60)
          {
            if (v102 - 48 >= 8)
            {
              if (!v100[1])
              {
                v105 = v100 + 1;
                goto LABEL_361;
              }
            }

            else
            {
              LOBYTE(v102) = v100[1] - 48;
              v106 = *v105;
              if ((*v105 & 0xF8) == 0x30)
              {
                v105 = v100 + 4;
                v108 = v100[3];
                v107 = v100 + 3;
                v109 = v106 + 8 * v102 - 48;
                v110 = v108 & 0xF8;
                v111 = v108 + 8 * v109 - 48;
                if (v110 == 48)
                {
                  LOBYTE(v102) = v111;
                }

                else
                {
                  v105 = v107;
                  LOBYTE(v102) = v109;
                }
              }
            }

            goto LABEL_313;
          }

          if (v100[1] <= 0x71u)
          {
            if (v102 == 110)
            {
              v112 = 10;
            }

            else
            {
              v112 = v102;
            }

            if (v102 == 102)
            {
              v112 = 12;
            }

            if (v102 == 98)
            {
              v113 = 8;
            }

            else
            {
              v113 = v102;
            }

            if (v102 == 97)
            {
              v113 = 7;
            }

            if (v100[1] <= 0x65u)
            {
              LOBYTE(v102) = v113;
            }

            else
            {
              LOBYTE(v102) = v112;
            }

LABEL_313:
            *v103++ = v102;
            ++v104;
            LOBYTE(v102) = *v105;
            v100 = v105;
            if (!*v105)
            {
              goto LABEL_361;
            }

            continue;
          }

          if (v100[1] <= 0x75u)
          {
            if (v102 == 116)
            {
              v114 = 9;
            }

            else
            {
              v114 = v102;
            }

            if (v102 == 114)
            {
              LOBYTE(v102) = 13;
            }

            else
            {
              LOBYTE(v102) = v114;
            }

            goto LABEL_313;
          }

          if (v102 == 118)
          {
            LOBYTE(v102) = 11;
            goto LABEL_313;
          }

          if (v102 != 120)
          {
            goto LABEL_313;
          }

          v115 = *v105;
          if (v115 <= 0x7F)
          {
            if (v115 - 48 > 9)
            {
              if ((v115 - 97) > 5)
              {
                if ((v115 - 65) > 5)
                {
                  goto LABEL_353;
                }

                LOBYTE(v102) = v115 - 55;
                if (v115 - 55 < 0)
                {
                  goto LABEL_353;
                }
              }

              else
              {
                LOBYTE(v102) = v115 - 87;
              }
            }

            else
            {
              LOBYTE(v102) = v115 - 48;
              if (v115 - 48 < 0)
              {
                goto LABEL_353;
              }
            }

            v105 = v100 + 3;
            v116 = v100[3];
            if (v116 > 0x7F)
            {
              goto LABEL_313;
            }

            if (v116 - 48 > 9)
            {
              if ((v116 - 97) > 5)
              {
                if ((v116 - 65) > 5)
                {
                  goto LABEL_313;
                }

                v117 = v116 - 55;
                if (v117 < 0)
                {
                  goto LABEL_313;
                }
              }

              else
              {
                LOBYTE(v117) = v116 - 87;
              }
            }

            else
            {
              v117 = v116 - 48;
              if (v117 < 0)
              {
                goto LABEL_313;
              }
            }

            v105 = v100 + 4;
            LOBYTE(v102) = v117 + 16 * v102;
            goto LABEL_313;
          }

LABEL_353:
          LOBYTE(v102) = 120;
          goto LABEL_313;
        }

        break;
      }

      if (!__maskrune(v102, 0x4000uLL))
      {
        goto LABEL_304;
      }

LABEL_360:
      v105 = v100;
LABEL_361:
      v118 = v104 - 32;
      v100 = v105;
      v10 = v200;
LABEL_362:
      *v103 = 0;
      *(v30 + 5) = v118;
      v119 = *(v30 + 6);
      v9 = v198;
      if (v119 != 13)
      {
LABEL_365:
        __s1 = v100;
        if (v119 == 17)
        {
          v210 = 0u;
          v211 = 0u;
          *v208 = 0u;
          v209 = 0u;
          v121 = file_regcomp(v208, (v30 + 32), 1);
          if (v121)
          {
            if ((*(a1 + 68) & 0x40) != 0)
            {
              file_regerror(v208, v121, a1);
            }

            file_regfree(v208);
            goto LABEL_518;
          }

          file_regfree(v208);
        }

        goto LABEL_391;
      }

      v120 = file_pstring_length_size(a1, *(v30 + 28));
      if (v120 != -1)
      {
        *(v30 + 5) += v120;
        v119 = *(v30 + 6);
        goto LABEL_365;
      }

LABEL_371:
      __s1 = 0;
      if ((*(a1 + 68) & 0x40) != 0)
      {
      }

LABEL_518:
      ++*a3;
LABEL_519:
      v12 = *(a1 + 88) + 1;
    }
  }

  result = __error();
  if (*result != 2)
  {
    v192 = __error();
  }

  ++*a3;
  return result;
}

uint64_t apprentice_sort(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = apprentice_magic_strength(*a1);
  v4 = apprentice_magic_strength(*a2);
  if (v3 > v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t get_op(int a1)
{
  if (a1 > 44)
  {
    if (a1 > 93)
    {
      if (a1 == 94)
      {
        return 2;
      }

      if (a1 == 124)
      {
        return 1;
      }
    }

    else
    {
      if (a1 == 45)
      {
        return 4;
      }

      if (a1 == 47)
      {
        return 6;
      }
    }
  }

  else if (a1 > 41)
  {
    if (a1 == 42)
    {
      return 5;
    }

    if (a1 == 43)
    {
      return 3;
    }
  }

  else
  {
    if (a1 == 37)
    {
      return 7;
    }

    if (a1 == 38)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t get_standard_integer_type(uint64_t a1, void *a2)
{
  v4 = a1 + 1;
  v5 = *(a1 + 1);
  if (*(a1 + 1) < 0)
  {
    if (__maskrune(*(a1 + 1), 0x100uLL))
    {
LABEL_3:
      result = 0;
      if (v5 <= 75)
      {
        if (v5 == 67)
        {
          result = 1;
          goto LABEL_18;
        }

        if (v5 != 73)
        {
          return result;
        }
      }

      else if (v5 != 76)
      {
        if (v5 == 81)
        {
          result = 24;
        }

        else
        {
          if (v5 != 83)
          {
            return result;
          }

          result = 2;
        }

        goto LABEL_18;
      }

      result = 4;
LABEL_18:
      v7 = a1 + 2;
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * *(a1 + 1) + 60) & 0x100) != 0)
  {
    goto LABEL_3;
  }

  if ((v5 - 48) > 9)
  {
    result = 4;
    v7 = v4;
  }

  else
  {
    v8 = *(a1 + 2);
    v7 = a1 + 2;
    if ((v8 - 48) < 0xA)
    {
      return 0;
    }

    result = 0;
    if (v5 > 51)
    {
      if (v5 == 52)
      {
        result = 4;
      }

      else
      {
        if (v5 != 56)
        {
          return result;
        }

        result = 24;
      }
    }

    else if (v5 == 49)
    {
      result = 1;
    }

    else
    {
      if (v5 != 50)
      {
        return result;
      }

      result = 2;
    }
  }

LABEL_19:
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t file_signextend(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 2) & 8) == 0)
  {
    switch(*(a2 + 6))
    {
      case 1:
        a3 = a3;
        break;
      case 2:
      case 7:
      case 0xA:
        a3 = a3;
        break;
      case 3:
      case 5:
      case 0xD:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
      case 0x1C:
      case 0x1D:
      case 0x1E:
      case 0x1F:
      case 0x20:
      case 0x24:
      case 0x25:
      case 0x26:
      case 0x29:
      case 0x2A:
      case 0x2B:
      case 0x2C:
      case 0x2D:
      case 0x2E:
      case 0x2F:
      case 0x30:
      case 0x31:
      case 0x32:
        return a3;
      case 4:
      case 6:
      case 8:
      case 9:
      case 0xB:
      case 0xC:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x15:
      case 0x16:
      case 0x17:
      case 0x21:
      case 0x22:
      case 0x23:
        a3 = a3;
        break;
      default:
        if ((*(a1 + 68) & 0x40) != 0)
        {
          file_magwarn(a1, "cannot happen: m->type=%d\n", *(a2 + 6));
        }

        a3 = -1;
        break;
    }
  }

  return a3;
}

uint64_t eatsize(char **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = **a1;
  v5 = MEMORY[0x277D85DE0];
  if ((v3 & 0x80000000) == 0)
  {
    if ((*(MEMORY[0x277D85DE0] + 4 * **a1 + 60) & 0x8000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__maskrune(**a1, 0x8000uLL))
  {
LABEL_3:
    v3 = __tolower(v4);
  }

LABEL_4:
  if (v3 == 117)
  {
    ++v2;
  }

  v6 = *v2;
  v7 = *v2;
  if ((v6 & 0x80000000) == 0)
  {
    result = *(v5 + 4 * *v2 + 60) & 0x8000;
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = __maskrune(*v2, 0x8000uLL);
  if (result)
  {
LABEL_8:
    result = __tolower(v7);
    v6 = result;
  }

LABEL_9:
  if ((v6 - 98) <= 0x11 && ((1 << (v6 - 98)) & 0x20443) != 0)
  {
    ++v2;
  }

  *a1 = v2;
  return result;
}

uint64_t file_pstring_length_size(uint64_t a1, __int16 a2)
{
  v2 = a2 & 0xF80;
  if (v2 <= 0x1FF)
  {
    if (v2 != 128)
    {
      if (v2 == 256)
      {
        return 2;
      }

LABEL_8:
      file_error(a1, 0, "corrupt magic file (bad pascal string length %d)", a2 & 0xF80);
      return -1;
    }

    return 1;
  }

  else
  {
    if (v2 != 2048 && v2 != 1024)
    {
      if (v2 == 512)
      {
        return 2;
      }

      goto LABEL_8;
    }

    return 4;
  }
}

void addentry(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3 + 16 * (*(*a2 + 6) == 45);
  v5 = *(v4 + 8);
  v6 = *v4;
  if (v5 != *(v4 + 12))
  {
    goto LABEL_4;
  }

  v8 = v5 + 200;
  *(v4 + 12) = v8;
  v9 = malloc_type_realloc(v6, 16 * v8, 0x1020040EDED9539uLL);
  if (v9)
  {
    v6 = v9;
    bzero(&v9[16 * *(v4 + 8)], 0xC80uLL);
    *v4 = v6;
    v5 = *(v4 + 8);
LABEL_4:
    *(v4 + 8) = v5 + 1;
    *(v6 + v5) = *a2;
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v10 = 16 * *(v4 + 12);
  v11 = __error();
  file_error(a1, *v11, "cannot allocate %zu bytes", v10);
}

uint64_t parse_strength(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a2;
  if (!*(*a2 + 11))
  {
    if (v4[6] == 45)
    {
      file_magwarn(a1, "%s: Strength setting is not supported in name magic entries", a3);
      return 0xFFFFFFFFLL;
    }

    v6 = *a3;
    if ((v6 & 0x80000000) == 0)
    {
      do
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x4000) == 0)
        {
          break;
        }

        v7 = *++a3;
        LOBYTE(v6) = v7;
      }

      while ((v7 & 0x80000000) == 0);
    }

    if (v6 > 0x2Fu || ((1 << v6) & 0xAC0000000001) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    __endptr = 0;
    v4[11] = v6;
    v8 = a3 + 1;
    v9 = MEMORY[0x277D85DE0];
    do
    {
      v10 = v8;
      v11 = *v8;
      if (v11 < 0)
      {
        break;
      }

      v12 = *(MEMORY[0x277D85DE0] + 4 * v11 + 60);
      v8 = (v10 + 1);
    }

    while ((v12 & 0x4000) != 0);
    v13 = strtoul(v10, &__endptr, 0);
    if (v13 >= 0x100)
    {
LABEL_17:
      v4[11] = 0;
      v4[3] = 0;
      return 0xFFFFFFFFLL;
    }

    v14 = *__endptr;
    if (*__endptr)
    {
      if ((v14 & 0x80) == 0)
      {
        if ((*(v9 + 4 * v14 + 60) & 0x4000) != 0)
        {
          goto LABEL_21;
        }

LABEL_27:
        goto LABEL_17;
      }

      if (!__maskrune(v14, 0x4000uLL))
      {
        goto LABEL_27;
      }
    }

LABEL_21:
    v4[3] = v13;
    if (v13 || v4[11] != 47)
    {
      return 0;
    }

    goto LABEL_17;
  }

  file_magwarn(a1, "Current entry already has a strength type: %c %d", a3);
  return 0xFFFFFFFFLL;
}

uint64_t parse_extra(uint64_t a1, uint64_t a2, int a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7, const char *a8, char *__s, int a10)
{
  v13 = a3 - 1;
  if (!a3)
  {
    v13 = 0;
  }

  v14 = a2 + 376 * v13;
  v15 = v14 + a6;
  if (*(v14 + a6))
  {
    if (a10)
    {
      strlen((v14 + a6));
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(v14 + 160))
  {
    file_magwarn(a1, "Current entry does not yet have a description for adding a %s type");
    return 0xFFFFFFFFLL;
  }

  v17 = *a4;
  if (*a4 < 0)
  {
    v18 = a4;
  }

  else
  {
    v18 = a4;
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v17 + 60) & 0x4000) == 0)
      {
        break;
      }

      v19 = *++v18;
      v17 = v19;
    }

    while ((v19 & 0x80000000) == 0);
  }

  v20 = 0;
  if (a5 >= a7)
  {
    v21 = a7;
  }

  else
  {
    v21 = a5;
  }

  if (v17 && v21)
  {
    v20 = 0;
    v22 = MEMORY[0x277D85DE0];
    do
    {
      if (((v17 & 0x80) != 0 || (*(v22 + 4 * v17 + 60) & 0x500) == 0) && !strchr(__s, v17))
      {
        break;
      }

      *(v15 + v20) = v17;
      v23 = *++v18;
      v17 = v23;
      ++v20;
      if (!v23)
      {
        break;
      }
    }

    while (v20 < v21);
  }

  if (v20 == a7)
  {
    v24 = a1;
    if (v17)
    {
      if (a10)
      {
        *(v15 + a7 - 1) = 0;
      }

      if ((*(a1 + 68) & 0x40) != 0)
      {
      }

      goto LABEL_44;
    }

    v25 = 0;
LABEL_37:
    if ((*(MEMORY[0x277D85DE0] + 4 * v25 + 60) & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

  v25 = v17;
  v24 = a1;
  if ((v17 & 0x80) == 0)
  {
    goto LABEL_37;
  }

  if (!__maskrune(v17, 0x4000uLL))
  {
LABEL_38:
    if (((v17 & 0x80) != 0 || (*(MEMORY[0x277D85DE0] + 4 * v17 + 60) & 0x500) == 0) && !strchr(__s, v25))
    {
    }
  }

LABEL_42:
  if (a10)
  {
    *(v15 + v20) = 0;
  }

LABEL_44:
  if (!v20)
  {
    file_magerror(v24, "Bad magic entry '%s'", a4);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

FILE *file_showstr(FILE *result, _BYTE *a2, uint64_t a3)
{
  v5 = result;
  while (a3 != -1)
  {
    if (!a3)
    {
      return result;
    }

    --a3;
    v6 = *a2;
LABEL_7:
    ++a2;
    v7 = v6;
    if ((v6 - 32) <= 0x5E)
    {
      v8 = v6;
      goto LABEL_9;
    }

    fputc(92, v5);
    if (v7 <= 9u)
    {
      switch(v7)
      {
        case 7u:
          v8 = 97;
          break;
        case 8u:
          v8 = 98;
          break;
        case 9u:
          v8 = 116;
          break;
        default:
          goto LABEL_23;
      }

      goto LABEL_9;
    }

    if (v7 > 0xBu)
    {
      if (v7 == 12)
      {
        v8 = 102;
      }

      else
      {
        if (v7 != 13)
        {
          goto LABEL_23;
        }

        v8 = 114;
      }

LABEL_9:
      result = fputc(v8, v5);
    }

    else
    {
      if (v7 == 10)
      {
        v8 = 110;
        goto LABEL_9;
      }

      if (v7 == 11)
      {
        v8 = 118;
        goto LABEL_9;
      }

LABEL_23:
      result = fprintf(v5, "%.3o", v7);
    }
  }

  v6 = *a2;
  if (*a2)
  {
    a3 = -1;
    goto LABEL_7;
  }

  return result;
}

uint64_t file_pstring_get_length(uint64_t a1, __int16 a2, unsigned int *a3)
{
  v3 = a2 & 0xF80;
  if (v3 > 0x1FF)
  {
    switch(v3)
    {
      case 0x200u:
        v4 = *a3;
        if ((a2 & 0x1000) == 0)
        {
          return v4;
        }

        goto LABEL_16;
      case 0x400u:
        v4 = bswap32(*a3);
        if ((a2 & 0x1000) == 0)
        {
          return v4;
        }

        goto LABEL_16;
      case 0x800u:
        v4 = *a3;
        if ((a2 & 0x1000) == 0)
        {
          return v4;
        }

LABEL_16:
        v5 = file_pstring_length_size(a1, a2);
        if (v5 != -1)
        {
          v4 -= v5;
          return v4;
        }

        return -1;
    }

    goto LABEL_18;
  }

  if (v3 != 128)
  {
    if (v3 == 256)
    {
      v4 = __rev16(*a3);
      if ((a2 & 0x1000) == 0)
      {
        return v4;
      }

      goto LABEL_16;
    }

LABEL_18:
    file_error(a1, 0, "corrupt magic file (bad pascal string length %d)", a2 & 0xF80);
    return -1;
  }

  v4 = *a3;
  if ((a2 & 0x1000) != 0)
  {
    goto LABEL_16;
  }

  return v4;
}

uint64_t file_magicfind(uint64_t *a1, char *__s2, uint64_t a3)
{
  v3 = a1[3];
  if (v3 == a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      break;
    }

LABEL_7:
    v3 = *(v3 + 24);
    if (v3 == a1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = 0;
  v9 = *v3;
  while (1)
  {
    v10 = v8 + 1;
    if (*(v9 + 6) == 45 && !strcmp((v9 + 32), __s2))
    {
      break;
    }

    v9 += 376;
    ++v8;
    if (v7 == v10)
    {
      goto LABEL_7;
    }
  }

  *a3 = v9;
  if (v7 <= v10)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = (v9 + 376);
  v14 = v8;
  while (++v14 < v7)
  {
    v15 = *v13;
    v13 += 188;
    if (!v15)
    {
      v12 = v14;
      break;
    }
  }

  result = 0;
  *(a3 + 8) = v12 - v8;
  return result;
}

size_t cdf_read(uint64_t a1, off_t a2, void *__buf, size_t __nbyte)
{
  v4 = __nbyte;
  v5 = *(a1 + 8);
  if (v5 && *(a1 + 16) >= __nbyte + a2)
  {
    memcpy(__buf, (v5 + a2), __nbyte);
  }

  else
  {
    v6 = *a1;
    if (v6 == -1)
    {
      *__error() = 22;
      return -1;
    }

    else if (pread(v6, __buf, __nbyte, a2) != __nbyte)
    {
      return -1;
    }
  }

  return v4;
}

size_t cdf_read_sector(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char a5, int a6)
{
  v7 = 1 << a5;
  if (!is_mul_ok(v7, a6))
  {
    return -1;
  }

  if (v7 != a4)
  {
    __assert_rtn("cdf_read_sector", "cdf.c", 418, "ss == len");
  }

  v9 = (a2 + a3);

  return cdf_read(a1, a4 + a4 * a6, v9, a4);
}

unint64_t cdf_count_chain(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == -2)
  {
    return 0;
  }

  v4 = a2;
  if ((a2 & 0x80000000) == 0)
  {
    v3 = 0;
    while (v3 >> 4 <= 0x270 && v4 < ((a1[1] * a3) >> 2))
    {
      LODWORD(v4) = *(*a1 + 4 * v4);
      ++v3;
      if ((v4 & 0x80000000) != 0)
      {
        return v3;
      }
    }
  }

  *__error() = 79;
  return -1;
}

uint64_t cdf_read_long_sector_chain(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = 1 << *(a2 + 30);
  *a6 = 0;
  v13 = cdf_count_chain(a3, a4, v12);
  *(a6 + 8) = v13;
  v14 = (a6 + 8);
  v15 = *(a2 + 56);
  if (v15 <= a5)
  {
    v15 = a5;
  }

  *(a6 + 16) = v15;
  *(a6 + 24) = v12;
  if (v8 == -2 || !a5)
  {
    *v14 = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
LABEL_21:
    free(*a6);
    *a6 = 0;
    return 0xFFFFFFFFLL;
  }

  if (v13 == -1)
  {
LABEL_20:
    *__error() = 79;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *v14 = 0;
    goto LABEL_21;
  }

  v16 = malloc_type_calloc(v13, v12, 0x95BCA707uLL);
  *a6 = v16;
  if (!v16)
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return 0xFFFFFFFFLL;
  }

  if ((v8 & 0x80000000) == 0)
  {
    v17 = 0;
    for (i = 0; i != 10000 && i < *v14; ++i)
    {
      sector = cdf_read_sector(a1, *a6, v17, v12, *(a2 + 30), v8);
      if (sector != v12)
      {
        if (sector >= 1 && i == *v14 - 1)
        {
          return 0;
        }

        goto LABEL_20;
      }

      v8 = *(*a3 + 4 * v8);
      v17 += v12;
      if ((v8 & 0x80000000) != 0)
      {
        return 0;
      }
    }

    goto LABEL_20;
  }

  return 0;
}

uint64_t cdf_read_user_stream(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char *__s, uint64_t a8)
{
  stream = cdf_find_stream(a6, __s, 2);
  if (stream <= 0)
  {
    goto LABEL_18;
  }

  v16 = *a6 + 136 * stream;
  v17 = *(v16 - 16);
  v18 = *(v16 - 12);
  if (*(a2 + 56) > v18 && *a5)
  {
    v19 = 1 << *(a2 + 32);
    *a8 = 0;
    v20 = cdf_count_chain(a4, v17, 1 << *(a2 + 30));
    *(a8 + 8) = v20;
    *(a8 + 16) = v18;
    v21 = (a8 + 8);
    *(a8 + 24) = v19;
    if (v20 == -1)
    {
LABEL_21:
      *__error() = 79;
      *(a8 + 16) = 0;
      *(a8 + 24) = 0;
      *v21 = 0;
      free(*a8);
      *a8 = 0;
      return 0xFFFFFFFFLL;
    }

    v22 = malloc_type_calloc(v20, v19, 0x95BCA707uLL);
    *a8 = v22;
    if (v22)
    {
      if ((v17 & 0x80000000) != 0)
      {
        return 0;
      }

      v23 = 0;
      v24 = -1;
      while (v24 != 9999)
      {
        if (++v24 >= *v21)
        {
          break;
        }

        v25 = 1 << *(a2 + 32);
        if (!is_mul_ok(v25, v17))
        {
          break;
        }

        if (v25 != v19)
        {
          __assert_rtn("cdf_read_short_sector", "cdf.c", 433, "ss == len");
        }

        v26 = v25 * v17;
        if (v26 + v19 > a5[1] * (1 << *(a2 + 30)))
        {
          *__error() = 79;
          goto LABEL_21;
        }

        v27 = v23 + v19;
        memcpy((*a8 + v23), (*a5 + v26), v19);
        result = 0;
        v17 = *(*a4 + 4 * v17);
        v23 = v27;
        if ((v17 & 0x80000000) != 0)
        {
          return result;
        }
      }

      goto LABEL_21;
    }

LABEL_18:
    *a8 = 0u;
    *(a8 + 16) = 0u;
    return 0xFFFFFFFFLL;
  }

  v29 = *(v16 - 12);

  return cdf_read_long_sector_chain(a1, a2, a3, v17, v29, a8);
}

uint64_t cdf_find_stream(void *a1, char *__s, int a3)
{
  v6 = strlen(__s);
  result = a1[1];
  if (result)
  {
    v8 = v6 + 1;
    do
    {
      v9 = *a1 + 136 * result;
      if (*(v9 - 70) == a3)
      {
        if (!v8)
        {
          return result;
        }

        v10 = (v9 - 136);
        v11 = v8;
        for (i = __s; *i == *v10; ++i)
        {
          ++v10;
          if (!--v11)
          {
            return result;
          }
        }
      }

      --result;
    }

    while (result);
  }

  v13 = __error();
  result = 0;
  *v13 = 3;
  return result;
}

uint64_t cdf_check_stream_offset(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a3 + a4;
  v7 = cdf_check_stream(a1[2], a1[3], a2);
  if (v6 >= v5 && v6 - v5 <= a1[1] * v7)
  {
    return 0;
  }

  *__error() = 79;
  return 0xFFFFFFFFLL;
}

void *cdf_grow_info(void **a1, unint64_t *a2, uint64_t a3)
{
  v5 = *a2 + a3;
  if (v5 <= 0x2AAAAA && (result = malloc_type_realloc(*a1, 24 * v5, 0xFF11AC71uLL)) != 0)
  {
    *a1 = result;
    *a2 = v5;
  }

  else
  {
    free(*a1);
    result = 0;
    *a2 = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t cdf_check_stream(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 30;
  if (*(a3 + 56) > a1)
  {
    v3 = 32;
  }

  if (1 << *(a3 + v3) != a2)
  {
    __assert_rtn("cdf_check_stream", "cdf.c", 327, "ss == sst->sst_ss");
  }

  return a2;
}

uint64_t cdf_unpack_catalog(uint64_t a1, unsigned __int16 **a2, void *a3)
{
  v5 = cdf_check_stream(a2[2], a2[3], a1);
  v6 = *a2;
  v7 = **a2;
  if (!**a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = v6 + a2[1] * v5;
  do
  {
    v6 = (v6 + v7);
    if (v6 > v9)
    {
      break;
    }

    ++v8;
    v7 = *v6;
  }

  while (*v6);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v8 - 1;
  v11 = 528 * (v8 - 1);
  v12 = malloc_type_malloc(v11 + 536, 0x24338F3DuLL);
  *a3 = v12;
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12 + 8;
  bzero(v12 + 8, v11);
  v14 = 0;
  if (v10)
  {
    v15 = 0;
    v16 = *a2;
    while (1)
    {
      v17 = &v13[528 * v14];
      if ((v16 + 1) > v9)
      {
        break;
      }

      v18 = *v16;
      *v17 = *v16;
      v19 = &v13[528 * v15];
      *v19 = v18;
      if ((v16 + 4) > v9)
      {
        break;
      }

      v20 = *(v16 + 1);
      *(v17 + 1) = v20;
      *(v19 + 1) = v20;
      v21 = (v16 + 8);
      if ((v16 + 8) > v9)
      {
        break;
      }

      v22 = *(v16 + 1);
      *(v17 + 1) = v22;
      *(v19 + 1) = v22;
      v23 = *v17;
      if (v23 > 0xD)
      {
        if ((v23 - 14) >= 0xFFu)
        {
          v25 = 255;
        }

        else
        {
          v25 = (v23 - 14);
        }

        *v17 = v25;
        if (&v21[v25] > v9)
        {
          break;
        }

        if (v23 != 14)
        {
          v26 = v17 + 16;
          if (v25 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v25;
          }

          do
          {
            v28 = *v21++;
            *v26++ = v28;
            --v27;
          }

          while (v27);
        }

        *&v17[2 * v25 + 16] = 0;
        v24 = v15 + 1;
        v14 = v15++;
      }

      else
      {
        *v17 = 0;
        v24 = v15;
      }

      v16 = (v16 + v23);
      if (v24 >= v10)
      {
        goto LABEL_28;
      }
    }

    *v17 = 0;
  }

LABEL_28:
  result = 0;
  **a3 = v14;
  return result;
}

void WFCNPostalAddressFromCLPlacemark(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [v1 fullThoroughfare];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v4 = getCNPostalAddressStreetKeySymbolLoc_ptr;
  v41 = getCNPostalAddressStreetKeySymbolLoc_ptr;
  if (!getCNPostalAddressStreetKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressStreetKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v5 = ContactsLibrary_15706();
    v39[3] = dlsym(v5, "CNPostalAddressStreetKey");
    getCNPostalAddressStreetKeySymbolLoc_ptr = *(v37[1] + 24);
    v4 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v4)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressStreetKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:20 description:{@"%s", dlerror(), v33, v34, v35, v36}];
LABEL_38:

    __break(1u);
    return;
  }

  [v2 setObject:v3 forKeyedSubscript:*v4];

  v6 = [v1 subLocality];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v7 = getCNPostalAddressSubLocalityKeySymbolLoc_ptr;
  v41 = getCNPostalAddressSubLocalityKeySymbolLoc_ptr;
  if (!getCNPostalAddressSubLocalityKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressSubLocalityKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v8 = ContactsLibrary_15706();
    v39[3] = dlsym(v8, "CNPostalAddressSubLocalityKey");
    getCNPostalAddressSubLocalityKeySymbolLoc_ptr = *(v37[1] + 24);
    v7 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v7)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressSubLocalityKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:21 description:{@"%s", dlerror(), v33, v34, v35, v36}];
    goto LABEL_38;
  }

  [v2 setObject:v6 forKeyedSubscript:*v7];

  v9 = [v1 locality];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v10 = getCNPostalAddressCityKeySymbolLoc_ptr;
  v41 = getCNPostalAddressCityKeySymbolLoc_ptr;
  if (!getCNPostalAddressCityKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressCityKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v11 = ContactsLibrary_15706();
    v39[3] = dlsym(v11, "CNPostalAddressCityKey");
    getCNPostalAddressCityKeySymbolLoc_ptr = *(v37[1] + 24);
    v10 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v10)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressCityKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:22 description:{@"%s", dlerror(), v33, v34, v35, v36}];
    goto LABEL_38;
  }

  [v2 setObject:v9 forKeyedSubscript:*v10];

  v12 = [v1 subAdministrativeArea];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v13 = getCNPostalAddressSubAdministrativeAreaKeySymbolLoc_ptr;
  v41 = getCNPostalAddressSubAdministrativeAreaKeySymbolLoc_ptr;
  if (!getCNPostalAddressSubAdministrativeAreaKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressSubAdministrativeAreaKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v14 = ContactsLibrary_15706();
    v39[3] = dlsym(v14, "CNPostalAddressSubAdministrativeAreaKey");
    getCNPostalAddressSubAdministrativeAreaKeySymbolLoc_ptr = *(v37[1] + 24);
    v13 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v13)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressSubAdministrativeAreaKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:23 description:{@"%s", dlerror(), v33, v34, v35, v36}];
    goto LABEL_38;
  }

  [v2 setObject:v12 forKeyedSubscript:*v13];

  v15 = [v1 administrativeArea];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v16 = getCNPostalAddressStateKeySymbolLoc_ptr;
  v41 = getCNPostalAddressStateKeySymbolLoc_ptr;
  if (!getCNPostalAddressStateKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressStateKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v17 = ContactsLibrary_15706();
    v39[3] = dlsym(v17, "CNPostalAddressStateKey");
    getCNPostalAddressStateKeySymbolLoc_ptr = *(v37[1] + 24);
    v16 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v16)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressStateKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:24 description:{@"%s", dlerror(), v33, v34, v35, v36}];
    goto LABEL_38;
  }

  [v2 setObject:v15 forKeyedSubscript:*v16];

  v18 = [v1 postalCode];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v19 = getCNPostalAddressPostalCodeKeySymbolLoc_ptr;
  v41 = getCNPostalAddressPostalCodeKeySymbolLoc_ptr;
  if (!getCNPostalAddressPostalCodeKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressPostalCodeKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v20 = ContactsLibrary_15706();
    v39[3] = dlsym(v20, "CNPostalAddressPostalCodeKey");
    getCNPostalAddressPostalCodeKeySymbolLoc_ptr = *(v37[1] + 24);
    v19 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v19)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressPostalCodeKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:25 description:{@"%s", dlerror(), v33, v34, v35, v36}];
    goto LABEL_38;
  }

  [v2 setObject:v18 forKeyedSubscript:*v19];

  v21 = [v1 country];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v22 = getCNPostalAddressCountryKeySymbolLoc_ptr;
  v41 = getCNPostalAddressCountryKeySymbolLoc_ptr;
  if (!getCNPostalAddressCountryKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressCountryKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v23 = ContactsLibrary_15706();
    v39[3] = dlsym(v23, "CNPostalAddressCountryKey");
    getCNPostalAddressCountryKeySymbolLoc_ptr = *(v37[1] + 24);
    v22 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v22)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressCountryKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:26 description:{@"%s", dlerror(), v33, v34, v35, v36}];
    goto LABEL_38;
  }

  [v2 setObject:v21 forKeyedSubscript:*v22];

  v24 = [v1 ISOcountryCode];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v25 = getCNPostalAddressISOCountryCodeKeySymbolLoc_ptr;
  v41 = getCNPostalAddressISOCountryCodeKeySymbolLoc_ptr;
  if (!getCNPostalAddressISOCountryCodeKeySymbolLoc_ptr)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressISOCountryCodeKeySymbolLoc_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    v26 = ContactsLibrary_15706();
    v39[3] = dlsym(v26, "CNPostalAddressISOCountryCodeKey");
    getCNPostalAddressISOCountryCodeKeySymbolLoc_ptr = *(v37[1] + 24);
    v25 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v25)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull getCNPostalAddressISOCountryCodeKey(void)"];
    [v31 handleFailureInFunction:v32 file:@"CLPlacemark+WFCompatibility.m" lineNumber:27 description:{@"%s", dlerror(), v33, v34, v35, v36}];
    goto LABEL_38;
  }

  [v2 setObject:v24 forKeyedSubscript:*v25];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v27 = getCNPostalAddressClass_softClass;
  v41 = getCNPostalAddressClass_softClass;
  if (!getCNPostalAddressClass_softClass)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getCNPostalAddressClass_block_invoke;
    v36 = &unk_27834A178;
    v37 = &v38;
    __getCNPostalAddressClass_block_invoke(&v33);
    v27 = v39[3];
  }

  v28 = v27;
  _Block_object_dispose(&v38, 8);
  v29 = [v27 postalAddressWithDictionaryRepresentation:v2];

  v30 = v29;
}

void sub_21E2E90BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNPostalAddressStreetKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressStreetKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressStreetKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary_15706()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_15725)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_15726;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278347D48;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_15725 = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary_15725;
  if (!ContactsLibraryCore_frameworkLibrary_15725)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void * _Nonnull ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CLPlacemark+WFCompatibility.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCNPostalAddressSubLocalityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressSubLocalityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressSubLocalityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNPostalAddressCityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressCityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressCityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNPostalAddressSubAdministrativeAreaKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressSubAdministrativeAreaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressSubAdministrativeAreaKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNPostalAddressStateKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressStateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressStateKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNPostalAddressPostalCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressPostalCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressPostalCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNPostalAddressCountryKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressCountryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressCountryKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNPostalAddressISOCountryCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_15706();
  result = dlsym(v2, "CNPostalAddressISOCountryCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNPostalAddressISOCountryCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCNPostalAddressClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_15706();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPostalAddress");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPostalAddressClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getCNPostalAddressClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CLPlacemark+WFCompatibility.m" lineNumber:19 description:{@"Unable to find class %s", "CNPostalAddress"}];

    __break(1u);
  }
}

uint64_t __ContactsLibraryCore_block_invoke_15726(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_15725 = result;
  return result;
}

uint64_t file_mdump(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "%u: %.*s %u", *(a1 + 20), (*a1 & 7) + 1, ">>>>>>>>", *(a1 + 12));
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = *(a1 + 7);
    if (v4 > 0x32)
    {
      v5 = "*bad in_type*";
    }

    else
    {
      v5 = file_names[v4];
    }

    fprintf(*v2, "(%s,", v5);
    v6 = *(a1 + 8);
    if ((v6 & 0x40) != 0)
    {
      fputc(126, *v2);
      v6 = *(a1 + 8);
    }

    fprintf(*v2, "%c%u),", file_mdump_optyp[v6 & 7], *(a1 + 16));
    v3 = *(a1 + 2);
  }

  if ((v3 & 8) != 0)
  {
    v7 = "u";
  }

  else
  {
    v7 = "";
  }

  v8 = *(a1 + 6);
  if (v8 > 0x32)
  {
    v9 = "*bad type";
  }

  else
  {
    v9 = file_names[v8];
  }

  fprintf(*v2, " %s%s", v7, v9);
  if ((*(a1 + 9) & 0x40) != 0)
  {
    fputc(126, *v2);
  }

  v10 = *(a1 + 6);
  if (v10 <= 0x2E && ((1 << v10) & 0x6200001E2020) != 0)
  {
    if (!*(a1 + 28))
    {
      goto LABEL_33;
    }

    fputc(47, *v2);
    v11 = *(a1 + 28);
    if (v11)
    {
      fputc(87, *v2);
      v11 = *(a1 + 28);
      if ((v11 & 2) == 0)
      {
LABEL_21:
        if ((v11 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_40;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_21;
    }

    fputc(119, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 4) == 0)
    {
LABEL_22:
      if ((v11 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }

LABEL_40:
    fputc(99, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 8) == 0)
    {
LABEL_23:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_42;
    }

LABEL_41:
    fputc(67, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x10) == 0)
    {
LABEL_24:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_43;
    }

LABEL_42:
    fputc(115, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x20) == 0)
    {
LABEL_25:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_44;
    }

LABEL_43:
    fputc(116, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x40) == 0)
    {
LABEL_26:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    }

LABEL_44:
    fputc(98, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x80) == 0)
    {
LABEL_27:
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    }

LABEL_45:
    fputc(66, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x100) == 0)
    {
LABEL_28:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_47;
    }

LABEL_46:
    fputc(72, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x200) == 0)
    {
LABEL_29:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }

LABEL_47:
    fputc(104, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x400) == 0)
    {
LABEL_30:
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_49;
    }

LABEL_48:
    fputc(76, *v2);
    v11 = *(a1 + 28);
    if ((v11 & 0x800) == 0)
    {
LABEL_31:
      if ((v11 & 0x1000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_49:
    fputc(108, *v2);
    if ((*(a1 + 28) & 0x1000) == 0)
    {
LABEL_33:
      if (*(a1 + 24))
      {
        fprintf(*v2, "/%u");
      }

      goto LABEL_35;
    }

LABEL_32:
    fputc(74, *v2);
    goto LABEL_33;
  }

  fputc(file_mdump_optyp[*(a1 + 9) & 7], *v2);
  if (*(a1 + 24))
  {
    fprintf(*v2, "%.8llx");
  }

LABEL_35:
  fprintf(*v2, ",%c", *(a1 + 4));
  if (*(a1 + 4) != 120)
  {
    switch(*(a1 + 6))
    {
      case 1:
      case 2:
      case 4:
      case 7:
      case 8:
      case 0xA:
      case 0xB:
      case 0x17:
      case 0x29:
        fprintf(*v2, "%d");
        return fprintf(*v2, ",%s]\n", (a1 + 160));
      case 3:
        return fprintf(*v2, ",%s]\n", (a1 + 160));
      case 5:
      case 0xD:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
        file_showstr(*v2, (a1 + 32), *(a1 + 5));
        return fprintf(*v2, ",%s]\n", (a1 + 160));
      case 6:
      case 9:
      case 0xC:
      case 0x15:
        v12 = *v2;
        v13 = *(a1 + 32);
        goto LABEL_65;
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x16:
        v12 = *v2;
        v13 = *(a1 + 32);
        goto LABEL_59;
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x32:
        fprintf(*v2, "%lld");
        return fprintf(*v2, ",%s]\n", (a1 + 160));
      case 0x1B:
      case 0x1C:
      case 0x1D:
        v12 = *v2;
        v13 = *(a1 + 32);
LABEL_65:
        v14 = 0;
        goto LABEL_66;
      case 0x1E:
      case 0x1F:
      case 0x20:
        v12 = *v2;
        v13 = *(a1 + 32);
LABEL_59:
        v14 = 1;
        goto LABEL_66;
      case 0x21:
      case 0x22:
      case 0x23:
        v15 = *v2;
        goto LABEL_62;
      case 0x24:
      case 0x25:
      case 0x26:
        v15 = *v2;
LABEL_62:
        fprintf(v15, "%G");
        break;
      case 0x2A:
      case 0x2B:
      case 0x2C:
        v12 = *v2;
        v13 = *(a1 + 32);
        v14 = 2;
LABEL_66:
        file_fmttime(v17, 0x100uLL, v13, v14);
        fprintf(v12, "%s,");
        break;
      case 0x2D:
      case 0x2E:
      case 0x30:
        fprintf(*v2, "'%s'");
        break;
      case 0x31:
        file_print_guid(v17, 0x100uLL, a1 + 32);
        fputs(v17, *v2);
        break;
      default:
        fprintf(*v2, "*bad type %d*");
        break;
    }
  }

  return fprintf(*v2, ",%s]\n", (a1 + 160));
}

char *file_fmttime(char *a1, size_t a2, uint64_t a3, char a4)
{
  memset(&v12, 0, sizeof(v12));
  if ((a4 & 2) != 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    cdf_timestamp_to_timespec(v11, a3);
    a3 = v11[0];
  }

  v11[0] = a3;
  if (a4)
  {
    v7 = localtime_r(v11, &v12);
    if (!v7)
    {
LABEL_9:
      strlcpy(a1, "*Invalid time*", a2);
      return a1;
    }
  }

  else
  {
    v7 = gmtime_r(v11, &v12);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = asctime_r(v7, a1);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v8[strcspn(v8, "\n")] = 0;
  return v9;
}

uint64_t file_magwarn(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  fflush(*MEMORY[0x277D85E08]);
  v4 = MEMORY[0x277D85DF8];
  if (*(a1 + 80))
  {
    fprintf(*MEMORY[0x277D85DF8], "%s, %lu: ", *(a1 + 80), *(a1 + 88));
  }

  fwrite("Warning: ", 9uLL, 1uLL, *v4);
  vfprintf(*v4, a2, va);
  return fputc(10, *v4);
}

void sub_21E2EC66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFPItemManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFPItemManagerClass_softClass;
  v7 = getFPItemManagerClass_softClass;
  if (!getFPItemManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFPItemManagerClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getFPItemManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E2EC758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16234(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E2ECA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSFileProviderRootContainerItemIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary();
  result = dlsym(v2, "NSFileProviderRootContainerItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSFileProviderRootContainerItemIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *FileProviderLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FileProviderLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278347DE8;
    v6 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FileProviderLibraryCore_frameworkLibrary;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"NSURL+WFFilePathDisplay.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  return result;
}

void __getFPItemManagerClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FPItemManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFPItemManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFPItemManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"NSURL+WFFilePathDisplay.m" lineNumber:20 description:{@"Unable to find class %s", "FPItemManager"}];

    __break(1u);
  }
}

id WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16554;
  v14 = __Block_byref_object_dispose__16555;
  v15 = 0;
  if ([v1 isAsynchronous])
  {
    v2 = dispatch_semaphore_create(0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore_block_invoke;
    v7[3] = &unk_278347F50;
    v9 = &v10;
    v3 = v2;
    v8 = v3;
    [v1 getValuesWithCompletionBlock:v7];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore_block_invoke_2;
    v6[3] = &unk_278347F78;
    v6[4] = &v10;
    [v1 getValuesWithCompletionBlock:v6];
  }

  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __Block_byref_object_copy__16554(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t WFContentObjectsHaveProperties(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v5;
  v21 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v9 = *v28;
    v22 = v6;
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = v6;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = v7[2](v7, v11, *(*(&v23 + 1) + 8 * j));

              if (!v17)
              {

                v18 = 0;
                v6 = v22;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v6 = v22;
        v9 = v20;
      }

      v18 = 1;
      v21 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  else
  {
    v18 = 1;
  }

LABEL_19:

  return v18;
}

id initACAccountIdentifierKey()
{
  if (AccountsLibrary_sOnce != -1)
  {
    dispatch_once(&AccountsLibrary_sOnce, &__block_literal_global_93);
  }

  v0 = dlsym(AccountsLibrary_sLib, "ACAccountIdentifierKey");
  if (!v0)
  {
    __assert_rtn("initACAccountIdentifierKey", "WFManagedConfigurationProfile.m", 31, "constant");
  }

  objc_storeStrong(&constantACAccountIdentifierKey, *v0);
  getACAccountIdentifierKey = ACAccountIdentifierKeyFunction;
  v1 = constantACAccountIdentifierKey;

  return v1;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

void sub_21E2F0B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16614(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E2F0CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id initACDAccountStoreDidChangeNotification()
{
  if (AccountsLibrary_sOnce != -1)
  {
    dispatch_once(&AccountsLibrary_sOnce, &__block_literal_global_93);
  }

  v0 = dlsym(AccountsLibrary_sLib, "ACDAccountStoreDidChangeNotification");
  if (!v0)
  {
    __assert_rtn("initACDAccountStoreDidChangeNotification", "WFManagedConfigurationProfile.m", 30, "constant");
  }

  objc_storeStrong(&constantACDAccountStoreDidChangeNotification, *v0);
  getACDAccountStoreDidChangeNotification = ACDAccountStoreDidChangeNotificationFunction;
  v1 = constantACDAccountStoreDidChangeNotification;

  return v1;
}

id initMCManagedAppsChangedNotification()
{
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    dispatch_once(&ManagedConfigurationLibrary_sOnce, &__block_literal_global_89);
  }

  v0 = dlsym(ManagedConfigurationLibrary_sLib, "MCManagedAppsChangedNotification");
  if (!v0)
  {
    __assert_rtn("initMCManagedAppsChangedNotification", "WFManagedConfigurationProfile.m", 23, "constant");
  }

  objc_storeStrong(&constantMCManagedAppsChangedNotification, *v0);
  getMCManagedAppsChangedNotification = MCManagedAppsChangedNotificationFunction;
  v1 = constantMCManagedAppsChangedNotification;

  return v1;
}

void *__ManagedConfigurationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib = result;
  return result;
}

Class initACAccountStore()
{
  if (AccountsLibrary_sOnce != -1)
  {
    dispatch_once(&AccountsLibrary_sOnce, &__block_literal_global_93);
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass = ACAccountStoreFunction;
  return result;
}

Class initMCProfileConnection()
{
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    dispatch_once(&ManagedConfigurationLibrary_sOnce, &__block_literal_global_89);
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass = MCProfileConnectionFunction;
  return result;
}

uint64_t initMCIsAppAccountBasedSourceForOpenIn(void *a1)
{
  v1 = a1;
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    dispatch_once(&ManagedConfigurationLibrary_sOnce, &__block_literal_global_89);
  }

  v2 = dlsym(ManagedConfigurationLibrary_sLib, "MCIsAppAccountBasedSourceForOpenIn");
  softLinkMCIsAppAccountBasedSourceForOpenIn = v2;
  if (v2)
  {
    v3 = v2(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_21E2F18E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E2F1B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFSupportedArchiveFormats()
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = @"zip";
  v2[1] = @"tar.gz";
  v2[2] = @"tar.bz2";
  v2[3] = @"tar.xz";
  v2[4] = @"tar";
  v2[5] = @"gz";
  v2[6] = @"cpio";
  v2[7] = @"iso";
  v2[8] = @"cpgz";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:9];

  return v0;
}

uint64_t WFArchiveFormatSupportsMultipleFiles(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"gz"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"xz"] ^ 1;
  }

  return v2;
}

uint64_t WFCoercionPathContainsPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  matched = [v3 count];
  if (matched)
  {
    if ([v4 count])
    {
      v6 = 0;
      v7 = (matched - 1);
      do
      {
        matched = WFCoercionPathFollowingNodesMatchInnerToEnd(v3, v4, v6, 0);
        if (matched)
        {
          break;
        }
      }

      while (v7 != v6++);
    }

    else
    {
      matched = 0;
    }
  }

  return matched;
}

uint64_t WFCoercionPathFollowingNodesMatchInnerToEnd(void *a1, void *a2, char *a3, unint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if ([v8 count] <= a4)
  {
    matched = 1;
  }

  else if ([v7 count] != a3 && (objc_msgSend(v7, "objectAtIndex:", a3), v9 = objc_opt_class(), objc_msgSend(v8, "objectAtIndex:", a4), v9 == objc_opt_class()))
  {
    matched = WFCoercionPathFollowingNodesMatchInnerToEnd(v7, v8, a3 + 1, a4 + 1);
  }

  else
  {
    matched = 0;
  }

  return matched;
}

void sub_21E2F509C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWKWebViewClass_block_invoke_17396(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary_17399)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __WebKitLibraryCore_block_invoke_17400;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783481C8;
    v8 = 0;
    WebKitLibraryCore_frameworkLibrary_17399 = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary_17399)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFPDFContentItem.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFPDFContentItem.m" lineNumber:30 description:{@"Unable to find class %s", "WKWebView"}];

LABEL_10:
    __break(1u);
  }

  getWKWebViewClass_softClass_17395 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebKitLibraryCore_block_invoke_17400(uint64_t a1)
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary_17399 = result;
  return result;
}

Class initUIViewPrintFormatter_17417()
{
  if (UIKitLibrary_sOnce_17418 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_17418, &__block_literal_global_17419);
  }

  result = objc_getClass("UIViewPrintFormatter");
  classUIViewPrintFormatter_17421 = result;
  getUIViewPrintFormatterClass_17394 = UIViewPrintFormatterFunction_17423;
  return result;
}

void *__UIKitLibrary_block_invoke_17426()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_17428 = result;
  return result;
}

Class initUIPrintFormatter_17430()
{
  if (UIKitLibrary_sOnce_17418 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_17418, &__block_literal_global_17419);
  }

  result = objc_getClass("UIPrintFormatter");
  classUIPrintFormatter_17432 = result;
  getUIPrintFormatterClass_17393 = UIPrintFormatterFunction_17434;
  return result;
}

Class initPDFDocument()
{
  if (PDFKitLibrary_sOnce != -1)
  {
    dispatch_once(&PDFKitLibrary_sOnce, &__block_literal_global_227);
  }

  result = objc_getClass("PDFDocument");
  classPDFDocument = result;
  getPDFDocumentClass = PDFDocumentFunction;
  return result;
}

void *__PDFKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/PDFKit.framework/PDFKit", 2);
  PDFKitLibrary_sLib = result;
  return result;
}

id WFSerializeNSMeasurement(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = MEMORY[0x277CCABB0];
  [v2 doubleValue];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKey:@"link.contentkit.value"];

  v6 = [v2 unit];
  v7 = [v6 symbol];
  [v3 setObject:v7 forKey:@"link.contentkit.unit"];

  v8 = [v2 wf_preferredValueRounding];

  [v3 if_setObjectIfNonNil:v8 forKey:@"link.contentkit.preferredValueRounding"];

  return v3;
}

id WFDeserializeNSMeasurement(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"link.contentkit.value"];
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = v4;

    v7 = [v2 objectForKeyedSubscript:@"link.contentkit.unit"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v2 objectForKeyedSubscript:@"link.contentkit.preferredValueRounding"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v5 = 0;
    if (v6 && v9)
    {
      v13 = [MEMORY[0x277D7A050] unitFromString:v9];
      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x277CCAB10]);
        [v6 doubleValue];
        v5 = [v14 initWithDoubleValue:v13 unit:?];
        [v5 setWf_preferredValueRounding:v12];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void WFMKCoordinateRegionMake(double a1, double a2, double a3, double a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getMKCoordinateRegionMakeSymbolLoc_ptr;
  v15 = getMKCoordinateRegionMakeSymbolLoc_ptr;
  if (!getMKCoordinateRegionMakeSymbolLoc_ptr)
  {
    v9 = MapKitLibrary_17816();
    v13[3] = dlsym(v9, "MKCoordinateRegionMake");
    getMKCoordinateRegionMakeSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"MKCoordinateRegion WFMKCoordinateRegionMake(CLLocationCoordinate2D, MKCoordinateSpan)"}];
    [v10 handleFailureInFunction:v11 file:@"DCMapsLink+MKGeometry.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2F7E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKCoordinateRegionMakeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_17816();
  result = dlsym(v2, "MKCoordinateRegionMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKCoordinateRegionMakeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MapKitLibrary_17816()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_17824)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MapKitLibraryCore_block_invoke_17825;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278348268;
    v6 = 0;
    MapKitLibraryCore_frameworkLibrary_17824 = _sl_dlopen();
  }

  v0 = MapKitLibraryCore_frameworkLibrary_17824;
  if (!MapKitLibraryCore_frameworkLibrary_17824)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"DCMapsLink+MKGeometry.m" lineNumber:19 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MapKitLibraryCore_block_invoke_17825(uint64_t a1)
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_17824 = result;
  return result;
}

void WFCLLocationCoordinate2DIsValid(double a1, double a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getCLLocationCoordinate2DIsValidSymbolLoc_ptr_17836;
  v11 = getCLLocationCoordinate2DIsValidSymbolLoc_ptr_17836;
  if (!getCLLocationCoordinate2DIsValidSymbolLoc_ptr_17836)
  {
    v5 = CoreLocationLibrary_17829();
    v9[3] = dlsym(v5, "CLLocationCoordinate2DIsValid");
    getCLLocationCoordinate2DIsValidSymbolLoc_ptr_17836 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL WFCLLocationCoordinate2DIsValid(CLLocationCoordinate2D)"];
    [v6 handleFailureInFunction:v7 file:@"DCMapsLink+MKGeometry.m" lineNumber:15 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2F82EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkCLLocationCoordinate2DInvalid()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCLLocationCoordinate2DInvalidSymbolLoc_ptr;
  v7 = getkCLLocationCoordinate2DInvalidSymbolLoc_ptr;
  if (!getkCLLocationCoordinate2DInvalidSymbolLoc_ptr)
  {
    v1 = CoreLocationLibrary_17829();
    v5[3] = dlsym(v1, "kCLLocationCoordinate2DInvalid");
    getkCLLocationCoordinate2DInvalidSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CLLocationCoordinate2D getkCLLocationCoordinate2DInvalid(void)"];
    [v2 handleFailureInFunction:v3 file:@"DCMapsLink+MKGeometry.m" lineNumber:17 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E2F8440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCLLocationCoordinate2DInvalidSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary_17829();
  result = dlsym(v2, "kCLLocationCoordinate2DInvalid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLLocationCoordinate2DInvalidSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreLocationLibrary_17829()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_17831)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_17832;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278348250;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_17831 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_17831;
  if (!CoreLocationLibraryCore_frameworkLibrary_17831)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"DCMapsLink+MKGeometry.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_17832(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_17831 = result;
  return result;
}

void *__getCLLocationCoordinate2DIsValidSymbolLoc_block_invoke_17837(uint64_t a1)
{
  v2 = CoreLocationLibrary_17829();
  result = dlsym(v2, "CLLocationCoordinate2DIsValid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationCoordinate2DIsValidSymbolLoc_ptr_17836 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2F89A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCLLocationCoordinate2DMakeSymbolLoc_block_invoke_17842(uint64_t a1)
{
  v2 = CoreLocationLibrary_17829();
  result = dlsym(v2, "CLLocationCoordinate2DMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationCoordinate2DMakeSymbolLoc_ptr_17841 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21E2F8C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKCoordinateSpanMakeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_17816();
  result = dlsym(v2, "MKCoordinateSpanMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKCoordinateSpanMakeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFExistingFileFromURL(void *a1)
{
  v1 = [a1 copy];
  while (1)
  {
    v2 = [v1 pathComponents];
    if ([v2 count] < 2)
    {
      break;
    }

    v3 = [v1 wf_fileExists];

    if (v3)
    {
      goto LABEL_7;
    }

    v4 = [v1 URLByDeletingLastPathComponent];

    v5 = [v4 path];
    v6 = [v5 length];

    v1 = v4;
    if (v6 > 0x400)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

LABEL_7:
  v7 = v1;
  v4 = v7;
LABEL_8:

  return v7;
}

id WFJavaScriptRunnerHostProtocolXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282F8F070];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v1 setWithObjects:{v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_runJavaScript_completionHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t __Block_byref_object_copy__18260(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFCollapseANDCompoundPredicates(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = WFCollapseANDCompoundPredicatesInsidePredicate(*(*(&v10 + 1) + 8 * i));
        [v2 addObjectsFromArray:{v8, v10}];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id WFCollapseANDCompoundPredicatesInsidePredicate(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 compoundPredicateType] == 1)
  {
    v2 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [v1 subpredicates];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:v8];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = WFCollapseANDCompoundPredicatesInsidePredicate(v8);
              [v2 addObjectsFromArray:v9];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v16[0] = v1;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  return v2;
}

Class __getPHAssetClass_block_invoke_18331(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary_18332)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PhotosLibraryCore_block_invoke_18333;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783483D8;
    v8 = 0;
    PhotosLibraryCore_frameworkLibrary_18332 = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary_18332)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFPhotoItemProviderContentItem.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFPhotoItemProviderContentItem.m" lineNumber:17 description:{@"Unable to find class %s", "PHAsset"}];

LABEL_10:
    __break(1u);
  }

  getPHAssetClass_softClass_18330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke_18333(uint64_t a1)
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_18332 = result;
  return result;
}

id WFAppTransportSecuredURL(void *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v21 = 0;
    goto LABEL_15;
  }

  v3 = [v1 scheme];
  v4 = [v3 isEqualToString:@"http"];

  if ((v4 & 1) == 0)
  {
    v21 = v2;
    goto LABEL_15;
  }

  v5 = [v2 host];
  v6 = [v5 lowercaseString];

  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v8 = [v6 componentsSeparatedByCharactersInSet:v7];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 objectForInfoDictionaryKey:@"NSAppTransportSecurity"];

  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:@"NSExceptionDomains"];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __WFAppTransportSecuredURL_block_invoke;
    v34 = &unk_278348418;
    v35 = v6;
    v36 = v7;
    v30 = v8;
    v37 = v8;
    v12 = [v11 keysOfEntriesPassingTest:&v31];
    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"length" ascending:0];
    v38[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v15 = [v12 sortedArrayUsingDescriptors:v14];
    v16 = [v15 firstObject];

    v17 = [v11 objectForKeyedSubscript:v16];
    v18 = [v17 objectForKeyedSubscript:@"NSExceptionAllowsInsecureHTTPLoads"];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 BOOLValue];

      if (v20)
      {
LABEL_6:
        v21 = v2;
LABEL_13:
        v8 = v30;

        goto LABEL_14;
      }
    }

    else
    {
      v22 = [v11 objectForKeyedSubscript:v16];
      v23 = [v22 objectForKeyedSubscript:@"NSThirdPartyExceptionAllowsInsecureHTTPLoads"];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 BOOLValue];

        if (v25)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v28 = [v10 objectForKeyedSubscript:@"NSAllowsArbitraryLoads"];
        v29 = [v28 BOOLValue];

        if (v29)
        {
          goto LABEL_6;
        }
      }
    }

    v26 = [MEMORY[0x277CCACE0] componentsWithURL:v2 resolvingAgainstBaseURL:{0, v30, v31, v32, v33, v34, v35, v36}];
    [v26 setScheme:@"https"];
    v21 = [v26 URL];

    goto LABEL_13;
  }

  v21 = v2;
LABEL_14:

LABEL_15:

  return v21;
}

uint64_t __WFAppTransportSecuredURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"NSIncludesSubdomains"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v5 componentsSeparatedByCharactersInSet:*(a1 + 40)];

    v9 = [v8 count];
    if (v9 <= [*(a1 + 48) count])
    {
      v11 = [*(a1 + 48) subarrayWithRange:{objc_msgSend(*(a1 + 48), "count") - objc_msgSend(v8, "count"), objc_msgSend(v8, "count")}];
      v10 = [v11 isEqualToArray:v8];
    }

    else
    {
      v10 = 0;
    }

    v5 = v8;
  }

  else
  {
    v10 = [*(a1 + 32) isEqualToString:v5];
  }

  return v10;
}

Class initCNContact()
{
  if (ContactsLibrary_sOnce != -1)
  {
    dispatch_once(&ContactsLibrary_sOnce, &__block_literal_global_353_18890);
  }

  result = objc_getClass("CNContact");
  classCNContact = result;
  getCNContactClass_18888 = CNContactFunction;
  return result;
}

void *__ContactsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
  ContactsLibrary_sLib = result;
  return result;
}

Class initEKAttendee()
{
  if (EventKitLibrary_sOnce != -1)
  {
    dispatch_once(&EventKitLibrary_sOnce, &__block_literal_global_18897);
  }

  result = objc_getClass("EKAttendee");
  classEKAttendee = result;
  getEKAttendeeClass = EKAttendeeFunction;
  return result;
}

void *__EventKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 2);
  EventKitLibrary_sLib = result;
  return result;
}

WFTimeInterval *WFTimeIntervalFromExpectedTravelTime(double a1)
{
  if (a1 >= 60.0)
  {
    v1 = 124;
  }

  else
  {
    v1 = 128;
  }

  v2 = [[WFTimeInterval alloc] initWithTimeInterval:v1 allowedUnits:3 unitsStyle:1 zeroFormattingBehavior:a1];

  return v2;
}

void sub_21E2FE8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19278(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFIndexSetFromContentSlice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 & (a1 >> 63)) + a1;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a3;
  }

  else
  {
    v4 = (a3 & (a2 >> 63)) + a2;
  }

  if (v3 >= a3)
  {
    v3 = a3;
  }

  if (v4 >= a3)
  {
    v4 = a3;
  }

  v5 = v4 & ~(v4 >> 63);
  if (v3 <= v5)
  {
    [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v3 & ~(v3 >> 63), v5 - (v3 & ~(v3 >> 63))}];
  }

  else
  {
    [MEMORY[0x277CCAA78] indexSet];
  }
  v6 = ;

  return v6;
}

id WFRequiredContentComparisonPredicatesFromPredicate(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = objc_opt_new();
    if ([v2 compoundPredicateType] == 1)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = [v2 subpredicates];
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = WFRequiredContentComparisonPredicatesFromPredicate(*(*(&v11 + 1) + 8 * i));
            [v3 addObjectsFromArray:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v1;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    }

    else
    {
      v3 = MEMORY[0x277CBEBF8];
    }
  }

  return v3;
}

id WFEKCalendarMatchesContentPredicate(void *a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v6 = MEMORY[0x277CBEC28];
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [v5 subpredicates];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __WFEKCalendarMatchesContentPredicate_block_invoke;
    v17[3] = &unk_2783486A8;
    v18 = v4;
    v7 = [v6 if_compactMap:v17];

    if (![v7 count])
    {
      v15 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    if ([v5 compoundPredicateType] == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "containsObject:", MEMORY[0x277CBEC28]) ^ 1}];
    }

    else
    {
      if ([v5 compoundPredicateType] != 2)
      {
        v15 = 1;
LABEL_16:

        if ((v15 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "containsObject:", MEMORY[0x277CBEC38])}];
    }

    v6 = v8;
    v15 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v3;
    v10 = [v9 property];
    v11 = [v10 keyPath];
    v12 = [v11 isEqualToString:@"event.calendar.title"];

    if (v12)
    {
      v13 = MEMORY[0x277CCABB0];
      v19[0] = v4;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v6 = [v13 numberWithBool:{objc_msgSend(v9, "evaluateWithValues:", v14)}];

      goto LABEL_18;
    }
  }

LABEL_17:
  v6 = 0;
LABEL_18:

  return v6;
}

void *__getNSAttachmentAttributeNameSymbolLoc_block_invoke_20223(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary_20235)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIFoundationLibraryCore_block_invoke_20236;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2783486F8;
    v7 = 0;
    UIFoundationLibraryCore_frameworkLibrary_20235 = _sl_dlopen();
  }

  v2 = UIFoundationLibraryCore_frameworkLibrary_20235;
  if (!UIFoundationLibraryCore_frameworkLibrary_20235)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIFoundationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFWebArchive+ImageExtraction.m" lineNumber:15 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "NSAttachmentAttributeName");
  *(*(a1[4] + 8) + 24) = result;
  getNSAttachmentAttributeNameSymbolLoc_ptr_20222 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __UIFoundationLibraryCore_block_invoke_20236(uint64_t a1)
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary_20235 = result;
  return result;
}

id getREMReminderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMReminderClass_softClass_20364;
  v7 = getREMReminderClass_softClass_20364;
  if (!getREMReminderClass_softClass_20364)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getREMReminderClass_block_invoke_20365;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getREMReminderClass_block_invoke_20365(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E3047B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMReminderClass_block_invoke_20365(uint64_t a1)
{
  ReminderKitLibrary_20366();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMReminder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMReminderClass_softClass_20364 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFReminderContentItem.m" lineNumber:33 description:{@"Unable to find class %s", "REMReminder"}];

    __break(1u);
  }
}

void ReminderKitLibrary_20366()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_20377)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke_20378;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278348998;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary_20377 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_20377)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFReminderContentItem.m" lineNumber:32 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke_20378(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_20377 = result;
  return result;
}

void sub_21E3052F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMExportingClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_20366();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMExporting");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMExportingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMExportingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFReminderContentItem.m" lineNumber:34 description:{@"Unable to find class %s", "REMExporting"}];

    __break(1u);
  }
}

void sub_21E305998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMContactRepresentationClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_20366();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMContactRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMContactRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMContactRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFReminderContentItem.m" lineNumber:37 description:{@"Unable to find class %s", "REMContactRepresentation"}];

    __break(1u);
  }
}

id getCLLocationClass_20545()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationClass_softClass_20560;
  v7 = getCLLocationClass_softClass_20560;
  if (!getCLLocationClass_softClass_20560)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationClass_block_invoke_20561;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCLLocationClass_block_invoke_20561(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E307898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E307CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMAlarmLocationTriggerClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary_20366();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMAlarmLocationTrigger");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMAlarmLocationTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMAlarmLocationTriggerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFReminderContentItem.m" lineNumber:35 description:{@"Unable to find class %s", "REMAlarmLocationTrigger"}];

    __break(1u);
  }
}

Class __getCLLocationClass_block_invoke_20561(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_20562)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke_20563;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783489B0;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary_20562 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_20562)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFReminderContentItem.m" lineNumber:39 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFReminderContentItem.m" lineNumber:40 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_20560 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_20563(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_20562 = result;
  return result;
}

uint64_t cdf_check_summary_info(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, unint64_t *a8, uint64_t a9, void *a10)
{
  v117 = *MEMORY[0x277D85DE8];
  v18 = *a8;
  if (cdf_check_stream_offset(a8, a3, *a8, 28) == -1 || cdf_check_stream_offset(a8, a3, (v18 + 14), 20) == -1)
  {
    goto LABEL_8;
  }

  v109 = a4;
  v110 = a5;
  v111 = a6;
  v112 = a1;
  v19 = *v18;
  v20 = v18[3];
  v21 = *(v18 + 11);
  *__s = 0;
  v113 = 0;
  if (v21 >> 30)
  {
    goto LABEL_6;
  }

  v22 = (*a8 + v21);
  if (cdf_check_stream_offset(a8, a3, v22, 8) == -1)
  {
LABEL_7:
    free(v113);
    *__error() = 79;
LABEL_8:
    v24 = 0xFFFFFFFFLL;
LABEL_9:
    *a10 = "Can't expand summary_info";
    return v24;
  }

  v23 = *v22;
  if (v23 >> 26)
  {
LABEL_6:
    *__error() = 79;
    goto LABEL_7;
  }

  if (cdf_check_stream_offset(a8, a3, v22, *v22) == -1)
  {
    goto LABEL_7;
  }

  v108 = v22[1];
  if (v108 > 0x2AAAAA)
  {
    goto LABEL_7;
  }

  v104 = cdf_grow_info(&v113, __s, v108);
  if (!v104)
  {
    goto LABEL_7;
  }

  if (*a8 + v21 + 8 >= v22 + v23)
  {
    goto LABEL_7;
  }

  v106 = *a8 + v21 + 8;
  v102 = v22 + v23;
  if (cdf_check_stream_offset(a8, a3, v22 + v23, 0) == -1)
  {
    goto LABEL_7;
  }

  if (v108)
  {
    v26 = 0;
    while (1)
    {
      v27 = 8 * v26;
      v28 = v26;
      if (cdf_check_stream_offset(a8, a3, v106, 8 * v26 + 8) == -1)
      {
        goto LABEL_7;
      }

      v29 = v106 + *(v106 + v27 + 4);
      v30 = (v29 - 8);
      if (v29 - 8 < v106 || v30 >= v102)
      {
        goto LABEL_7;
      }

      v32 = v28;
      v33 = &v104[24 * v28];
      *v33 = *(v106 + v27);
      v34 = v102 - v30;
      if ((v102 - v30) < 4)
      {
        goto LABEL_7;
      }

      v35 = *v30;
      *(v33 + 1) = *v30;
      if ((v35 & 0x1000) != 0)
      {
        if (v34 < 8)
        {
          goto LABEL_7;
        }

        v36 = *(v29 - 4);
        if ((v36 - 100001) < 0xFFFE7960)
        {
          goto LABEL_7;
        }

        v37 = 2;
      }

      else
      {
        v36 = 1;
        v37 = 1;
      }

      if ((v35 & 0xE000) != 0)
      {
        goto LABEL_30;
      }

      v38 = 4 * v37;
      v39 = v35 & 0xFFF;
      if (v39 <= 2)
      {
        break;
      }

      v40 = v35 - 3;
      if (v39 - 3 > 0x3D)
      {
        goto LABEL_60;
      }

      if (((1 << v40) & 0x10103) != 0)
      {
        if ((v35 & 0x1000) == 0 && (v102 - &v30[v38]) >= 4)
        {
          *(v33 + 2) = *&v30[4 * v37];
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (((1 << v40) & 0x2000000000060004) != 0)
      {
        if ((v35 & 0x1000) == 0 && (v102 - &v30[v38]) >= 8)
        {
          *(v33 + 1) = *&v30[4 * v37];
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (((1 << v40) & 0x18000000) == 0)
      {
LABEL_60:
        if (v39 == 71 && (v35 & 0x1000) == 0)
        {
          goto LABEL_31;
        }

LABEL_30:
        *(v33 + 1) = 0;
        *(v33 + 2) = 0;
        goto LABEL_31;
      }

      if (v36 >= 2)
      {
        v97 = v113;
        v98 = 4 * v37;
        v99 = v37;
        v100 = v36;
        v41 = cdf_grow_info(&v113, __s, v36);
        v37 = v99;
        v36 = v100;
        if (!v41)
        {
          goto LABEL_7;
        }

        v32 = v28;
        v104 = &v41[v104 - v97];
        v38 = v98;
      }

      if (v32 < v108)
      {
        v42 = &v104[24 * v32 + 16];
        v43 = 1;
        do
        {
          v44 = v38 + 4;
          if (v38 + 4 > v34)
          {
            goto LABEL_7;
          }

          v45 = *&v30[4 * v37];
          if (v44 + v45 > v34)
          {
            goto LABEL_7;
          }

          *(v42 - 2) = v45;
          *v42 = &v30[v44];
          v46 = v43 + 1;
          if (v43 >= v36)
          {
            break;
          }

          v37 += ((v45 & 1) + v45) >> 1;
          v38 = 4 * v37;
          v47 = v32 + v43;
          v42 += 24;
          ++v43;
        }

        while (v47 < v108);
        v32 = v32 + v46 - 1;
      }

      --v32;
LABEL_31:
      v26 = v32 + 1;
      if (v26 >= v108)
      {
        goto LABEL_63;
      }
    }

    if (v39 < 2)
    {
      goto LABEL_31;
    }

    if (v39 == 2 && (v35 & 0x1000) == 0 && (v102 - &v30[v38]) >= 2)
    {
      *(v33 + 4) = *&v30[4 * v37];
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_63:
  v48 = v112;
  if ((*(v112 + 68) & 0x410) == 0)
  {
    if (file_printf(v112, "Composite Document File V2 Document") == -1)
    {
      goto LABEL_8;
    }

    v52 = "Big";
    if (v19 == 65534)
    {
      v52 = "Little";
    }

    if (file_printf(v112, ", %s Endian", v52) == -1)
    {
      goto LABEL_189;
    }

    if (v20 == 1)
    {
      v53 = file_printf(v112, ", Os: MacOS, Version %d.%d");
    }

    else
    {
      v53 = v20 == 2 ? file_printf(v112, ", Os: Windows, Version %d.%d") : file_printf(v112, ", Os %d, Version: %d.%d");
    }

    if (v53 == -1)
    {
      goto LABEL_189;
    }

    if (!a9)
    {
      v49 = 0;
      v51 = v113;
      v50 = *(v112 + 68);
      goto LABEL_78;
    }

    if (*(a9 + 80) == 790660 && *(a9 + 88) == 0x46000000000000C0 && file_printf(v112, ", %s", "MSI Installer") == -1)
    {
LABEL_189:
      v24 = 4294967294;
      goto LABEL_9;
    }
  }

  v49 = 0;
  v50 = *(v112 + 68);
  if (a9 && (v50 & 0x410) != 0)
  {
    v51 = v113;
    if (*(a9 + 80) == 790660 && *(a9 + 88) == 0x46000000000000C0)
    {
      v49 = "x-msi";
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v51 = v113;
  }

LABEL_78:
  v114[0] = 0;
  v114[1] = 0;
  if (v108)
  {
    v101 = v51;
    v103 = v49;
    v54 = 0;
    while (1)
    {
      v55 = &v51[24 * v54];
      v56 = &vn;
      v57 = 20;
      while (*v56 != *v55)
      {
        v56 += 4;
        if (!--v57)
        {
          snprintf(__str, 0x40uLL, "%#x");
          goto LABEL_85;
        }
      }

      snprintf(__str, 0x40uLL, "%s");
LABEL_85:
      v58 = 0;
      v59 = *(v55 + 1);
      LODWORD(v24) = -1;
      v107 = v54;
      if (v59 <= 18)
      {
        if (v59 <= 2)
        {
          if (v59 == 1)
          {
            goto LABEL_129;
          }

          v60 = 0;
          if (v59 != 2)
          {
            goto LABEL_157;
          }

          if ((*(v48 + 68) & 0x410) != 0)
          {
            goto LABEL_129;
          }

          v72 = file_printf(v48, ", %s: %hd");
        }

        else if (v59 == 3)
        {
          if ((*(v48 + 68) & 0x410) != 0)
          {
            goto LABEL_129;
          }

          v72 = file_printf(v48, ", %s: %d");
        }

        else
        {
          if (v59 == 4)
          {
            if ((*(v48 + 68) & 0x410) != 0)
            {
              goto LABEL_129;
            }
          }

          else
          {
            v60 = 0;
            if (v59 != 5)
            {
              goto LABEL_157;
            }

            if ((*(v48 + 68) & 0x410) != 0)
            {
              goto LABEL_129;
            }
          }

          v72 = file_printf(v48, ", %s: %g");
        }

        goto LABEL_128;
      }

      if (v59 > 63)
      {
        if (v59 != 64)
        {
          v60 = 0;
          if (v59 != 71)
          {
            goto LABEL_157;
          }

          goto LABEL_129;
        }

        v73 = *(v55 + 1);
        if (v73)
        {
          if (v73 > 0x38D7EA4C67FFFLL)
          {
            cdf_timestamp_to_timespec(v114, *(v55 + 1));
            if (!ctime_r(v114, __s))
            {
              snprintf(__s, 0x1AuLL, "*Bad* %#16.16llx\n", v114[0]);
            }

            v75 = strchr(__s, 10);
            if (v75)
            {
              *v75 = 0;
            }
          }

          else
          {
            if ((v73 - 864000000000) > 0xFFFFFE6DAB2C8000)
            {
              v74 = 0;
              v76 = 0;
              if (v73 / 1640261632 % 24)
              {
                goto LABEL_143;
              }
            }

            else
            {
              v74 = snprintf(__s, 0x40uLL, "%dd+", v73 / 864000000000);
              if (v74 >= 0x40)
              {
                goto LABEL_146;
              }

LABEL_143:
              v76 = snprintf(&__s[v74], 64 - v74, "%.2d:", v73 / 1640261632 % 24) + v74;
              if (v76 > 0x3F)
              {
                goto LABEL_146;
              }
            }

            v77 = snprintf(&__s[v76], 64 - v76, "%.2d:", (v73 / 600000000) % 60) + v76;
            if (v77 <= 0x3F)
            {
              snprintf(&__s[v77], 64 - v77, "%.2d", (v73 / 10000000) % 60);
            }
          }

LABEL_146:
          if ((*(v48 + 68) & 0x410) == 0)
          {
LABEL_147:
            if (file_printf(v48, ", %s: %s", __str, __s) == -1)
            {
              goto LABEL_155;
            }
          }
        }
      }

      else
      {
        if ((v59 - 30) >= 2)
        {
          v60 = 0;
          if (v59 != 19)
          {
            goto LABEL_157;
          }

          if ((*(v48 + 68) & 0x410) != 0)
          {
            goto LABEL_129;
          }

          v72 = file_printf(v48, ", %s: %u");
LABEL_128:
          if (v72 == -1)
          {
            v58 = 0;
            v60 = 0;
            goto LABEL_157;
          }

          goto LABEL_129;
        }

        v61 = *(v55 + 2);
        if (v61 >= 2)
        {
          v62 = 0;
          if (v59 == 31)
          {
            v63 = 2;
          }

          else
          {
            v63 = 1;
          }

          v64 = *(v55 + 2);
          v65 = &v64[v61];
          v66 = v61 + 1;
          v105 = v55;
          do
          {
            if (!--v66)
            {
              break;
            }

            v67 = *v64;
            if (!*v64)
            {
              break;
            }

            v68 = *v64;
            if (v67 < 0)
            {
              v70 = v65;
              v69 = __maskrune(v67, 0x40000uLL);
              v65 = v70;
              v55 = v105;
            }

            else
            {
              v69 = *(MEMORY[0x277D85DE0] + 4 * v67 + 60) & 0x40000;
            }

            if (v69)
            {
              __s[v62++] = v68;
            }

            v64 += v63;
            if (v64 >= v65)
            {
              break;
            }
          }

          while (v62 < 0x400);
          v71 = 1023;
          if (v62 != 1024)
          {
            v71 = v62;
          }

          __s[v71] = 0;
          v48 = v112;
          if ((*(v112 + 68) & 0x410) != 0)
          {
            v51 = v101;
            if (!v103)
            {
              if (*v55 == 18)
              {
                v103 = cdf_app_to_mime(__s, app2mime);
              }

              else
              {
                v103 = 0;
              }
            }
          }

          else
          {
            v51 = v101;
            if (__s[0])
            {
              goto LABEL_147;
            }
          }
        }
      }

LABEL_129:
      v54 = v107 + 1;
      if (v107 + 1 == v108)
      {
        v50 = *(v48 + 68);
        v49 = v103;
        break;
      }
    }
  }

  if ((v50 & 0x10) == 0)
  {
    goto LABEL_153;
  }

  if (!v49)
  {
    v58 = 0;
    LODWORD(v24) = 0;
    v60 = 1;
    goto LABEL_157;
  }

  if (file_printf(v48, "application/%s", v49) != -1)
  {
LABEL_153:
    v60 = 0;
    v58 = 1;
    LODWORD(v24) = 1;
    goto LABEL_157;
  }

LABEL_155:
  v58 = 0;
  v60 = 0;
  LODWORD(v24) = -1;
LABEL_157:
  free(v113);
  if (v24 >= 0xFFFFFFFE)
  {
    v24 = 4294967294;
  }

  else
  {
    v24 = v24;
  }

  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  if (v58)
  {
    return 1;
  }

  v78 = 0;
  v79 = 0;
  do
  {
    if (v79 >= a7[1])
    {
      v83 = v112;
      v84 = *(v112 + 68);
      if ((v84 & 0x410) != 0)
      {
        goto LABEL_173;
      }

      goto LABEL_174;
    }

    v80 = 0;
    v81 = *a7 + v78;
    do
    {
      __str[v80] = *(v81 + 2 * v80);
      ++v80;
    }

    while (v80 != 32);
    if ((*(v112 + 68) & 0x410) != 0)
    {
      v82 = name2mime;
    }

    else
    {
      v82 = name2desc;
    }

    ++v79;
    v78 += 136;
  }

  while (!cdf_app_to_mime(__str, v82));
  v83 = v112;
  v84 = *(v112 + 68);
  if ((v84 & 0x410) == 0)
  {
    v85 = file_printf(v112, "%s");
    goto LABEL_180;
  }

LABEL_173:
  if ((v84 & 0x10) != 0)
  {
    v85 = file_printf(v83, "application/%s");
    goto LABEL_180;
  }

LABEL_174:
  if (!v60)
  {
    return v24;
  }

  if (cdf_read_user_stream(a2, a3, v109, v110, v111, a7, "Catalog", a8) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v86 = *(v83 + 68);
  if ((v86 & 0x410) != 0)
  {
    if ((v86 & 0x10) == 0)
    {
      return 1;
    }

    v85 = file_printf(v112, "application/CDFV2", v96);
LABEL_180:
    if (v85 != -1)
    {
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  if (file_printf(v112, "Microsoft Thumbs.db [") != -1)
  {
    v114[0] = 0;
    if (cdf_unpack_catalog(a3, a8, v114) != -1)
    {
      v87 = v114[0];
      v89 = v114[0] + 8;
      v88 = *v114[0];
      if (*v114[0] < 2uLL)
      {
LABEL_206:
        free(v87);
        return 1;
      }

      v90 = v114[0] + 552;
      v91 = 1;
      while (1)
      {
        v92 = *(v89 + 528 * v91);
        if (*(v89 + 528 * v91))
        {
          v93 = 0;
          while (1)
          {
            v94 = *(v90 + 2 * v93);
            if (!v94)
            {
              break;
            }

            __s[v93++] = v94;
            if (v92 == v93)
            {
              v93 = v92;
              break;
            }
          }
        }

        else
        {
          v93 = 0;
        }

        __s[v93] = 0;
        v95 = v91 == v88 - 1 ? "]" : ", ";
        if (file_printf(v112, "%s%s", __s, v95) == -1)
        {
          break;
        }

        ++v91;
        v88 = *v87;
        v90 += 528;
        if (v91 >= *v87)
        {
          goto LABEL_206;
        }
      }

      free(v87);
    }
  }

  return 0xFFFFFFFFLL;
}