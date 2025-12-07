uint64_t oneword_crosstoken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, int a7, int a8, const char *a9, char *a10, const char *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, char **a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, const char **a20, const char **a21, const char **a22, const char **a23)
{
  v30 = a12;
  v104 = *MEMORY[0x1E69E9840];
  strcpy(__s, "cross_token");
  v31 = (2 * strlen(*a20)) | 1u;
  if (*a16 < v31)
  {
    v32 = heap_Realloc(*(a1 + 8), *a12, v31);
    if (!v32)
    {
      goto LABEL_106;
    }

    *a12 = v32;
    *a16 = v31;
  }

  v93 = a3;
  if (*a17 < v31)
  {
    v33 = heap_Realloc(*(a1 + 8), *a13, v31);
    if (!v33)
    {
      goto LABEL_106;
    }

    *a13 = v33;
    *a17 = v31;
  }

  v34 = a14;
  if (*a18 < v31)
  {
    v35 = heap_Realloc(*(a1 + 8), *a14, v31);
    if (!v35)
    {
      goto LABEL_106;
    }

    *a14 = v35;
    *a18 = v31;
  }

  if (*a19 >= v31)
  {
LABEL_13:
    v97 = a4;
    v91 = a5;
    __s1 = a6;
    v90 = a8;
    v102 = 0;
    v100 = 0;
    __s2 = 0;
    v99 = 0;
    strcpy(*a12, *a20);
    v37 = a13;
    strcpy(*a13, *a21);
    strcpy(*a14, *a22);
    strcpy(*a15, *a23);
    v38 = *a12;
    if (**a12)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = &v38[v39];
        v43 = v38[v39];
        if (v43 == 226)
        {
          if (*(v42 + 1) == 151 && *(v42 + 2) == 132)
          {
            v41 = !v41;
          }
        }

        else if (v43 == 126 && v41)
        {
          v45 = strlen(&v38[v39]);
          memmove((v42 + 1), &v38[v39], v45 + 1);
          *(*a12 + v39) = -24126;
          v38 = *a12;
          v41 = 1;
        }

        v39 = ++v40;
      }

      while (strlen(v38) > v40);
    }

    v46 = 0;
    **a20 = 0;
    **a21 = 0;
    **a22 = 0;
    while (1)
    {
      strcpy(__s, "cross_token");
      v96 = strlen(__s);
      v47 = v46;
      if (v46)
      {
        *&(*a20)[strlen(*a20)] = 32;
        *&(*a21)[strlen(*a21)] = 32;
        *&(*a22)[strlen(*a22)] = 32;
      }

      v48 = *v30;
      v49 = v46;
      v50 = (*v30)[v46];
      if ((*v30)[v46])
      {
        v51 = v46;
        while ((v50 > 0x20 || ((1 << v50) & 0x100002600) == 0) && v50 != 95)
        {
          v51 = ++v46;
          v50 = v48[v46];
          if (!v48[v46])
          {
            v95 = 1;
            goto LABEL_36;
          }
        }

        v95 = 0;
LABEL_36:
        v52 = v46;
      }

      else
      {
        v95 = 1;
        v52 = v46;
        v51 = v46;
      }

      v48[v51] = 0;
      v53 = Utf8_LengthInUtf8chars(*v30, v52);
      v54 = Utf8_LengthInUtf8chars(*v30, v47);
      *(*v37 + v53) = 0;
      *(*v34 + v53) = 0;
      (*a15)[v53] = 0;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, &(*v30)[v49]);
      v55 = v30;
      v56 = a1;
      v57 = v37;
      v58 = *v55;
      v59 = strlen(&(*v55)[v49]);
      v60 = (*(v97 + 120))(a2, v93, 0, &v58[v49], v59);
      if ((v60 & 0x80000000) != 0)
      {
        return v60;
      }

      log_OutText(*(v56 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", __s, (*v57 + v54));
      v61 = strlen((*v57 + v54));
      v60 = (*(v97 + 120))(a2, v93, 1, *v57 + v54, v61);
      if ((v60 & 0x80000000) != 0)
      {
        return v60;
      }

      log_OutText(*(v56 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", __s, (*a14 + v54));
      v62 = strlen((*a14 + v54));
      v60 = (*(v97 + 120))(a2, v93, 2, *a14 + v54, v62);
      if ((v60 & 0x80000000) != 0)
      {
        return v60;
      }

      a1 = v56;
      log_OutText(*(v56 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", __s, &(*a15)[v54]);
      v63 = strlen(&(*a15)[v54]);
      v60 = (*(v97 + 136))(a2, v93, 3, &(*a15)[v54], v63);
      if ((v60 & 0x80000000) != 0)
      {
        return v60;
      }

      v64 = __s1;
      if (strcmp(__s1, "normal") && strlen(__s1) + v96 + 2 <= 0x7F)
      {
        __strcat_chk();
        __strcat_chk();
      }

      v30 = a12;
      if (((*(v97 + 80))(a2, v93, __s) & 0x80000000) != 0)
      {
        __s[v96] = 0;
        v60 = (*(v97 + 80))(a2, v93, __s);
        if ((v60 & 0x80000000) != 0)
        {
          return v60;
        }
      }

      else if (!a7)
      {
        if (!v91)
        {
          a7 = *__s1;
          v65 = __s1;
LABEL_53:
          strncpy(a10, v65, 0x14uLL);
          goto LABEL_54;
        }

        v65 = a9;
        a7 = v90;
        if (a9)
        {
          goto LABEL_53;
        }

        a7 = 0;
      }

LABEL_54:
      v60 = (*(v97 + 128))(a2, v93, 0, &__s2, &v102);
      if ((v60 & 0x80000000) != 0)
      {
        return v60;
      }

      __s2[v102] = 0;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, __s2);
      v60 = (*(v97 + 128))(a2, v93, 1, &v100, &v102);
      if ((v60 & 0x80000000) != 0)
      {
        return v60;
      }

      v100[v102] = 0;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s O2: %s", __s, v100);
      v66 = (*(v97 + 128))(a2, v93, 2, &v99, &v102);
      if ((v66 & 0x80000000) != 0)
      {
        return v66;
      }

      v99[v102] = 0;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s O3: %s", __s, v99);
      v67 = __s2;
      if (*__s2)
      {
        v68 = 0;
        v69 = 0;
        v34 = a14;
        do
        {
          v70 = &v67[v68];
          v71 = *v70;
          if (v71 == 194)
          {
            if (v70[1] == 161)
            {
              v73 = strlen(v70 + 2);
              memmove(v70 + 1, v70 + 2, v73 + 1);
              __s2[v68] = 126;
            }
          }

          else if (v71 == 126)
          {
            v72 = strlen(v70 + 1);
            memmove(v70, v70 + 1, v72 + 1);
            --v69;
          }

          v68 = ++v69;
          v67 = __s2;
          v74 = strlen(__s2);
        }

        while (v74 > v69);
        v75 = v74 + 2;
        v64 = __s1;
      }

      else
      {
        v75 = 2;
        v34 = a14;
      }

      v76 = *a20;
      v77 = v75 + strlen(*a20);
      if (v77 < 0x81u)
      {
        v37 = a13;
      }

      else
      {
        v78 = heap_Realloc(*(a1 + 8), v76, v77);
        v37 = a13;
        if (!v78)
        {
          goto LABEL_106;
        }

        v76 = v78;
        *a20 = v78;
        v67 = __s2;
      }

      if (strlen(v67) == 3)
      {
        v98 = 0;
        utf8_Utf8ToUtf32_Tolerant(v67, 3u, &v98 + 4, 1u, &v98);
        if (HIDWORD(v98) == 8230)
        {
          *&(*a20)[strlen(*a20)] = 46;
          goto LABEL_77;
        }

        v80 = __s2;
        v79 = *a20;
      }

      else
      {
        v79 = v76;
        v80 = v67;
      }

      strcat(v79, v80);
LABEL_77:
      for (i = 0; ; ++i)
      {
        v82 = i;
        v83 = v100[i];
        if (v83 != 32 && v83 != 126)
        {
          break;
        }
      }

      if (v100[i])
      {
        while (v83 != 32 && v83 != 126)
        {
          LOBYTE(v83) = v100[++i];
        }

        v100[i] = 0;
        if (v100[v82])
        {
          v84 = &v100[v82];
        }

        else
        {
          v84 = "*";
        }
      }

      else
      {
        v84 = "*";
      }

      strcat(*a21, v84);
      if (a11 && strstr(v64, "latin"))
      {
        strcpy(*a21, a11);
      }

      for (j = 0; ; ++j)
      {
        v86 = j;
        v87 = v99[j];
        if (v87 != 32 && v87 != 126)
        {
          break;
        }
      }

      if (v99[j])
      {
        while (v87 != 32 && v87 != 126)
        {
          LOBYTE(v87) = v99[++j];
        }

        v99[j] = 0;
        if (v99[v86])
        {
          v88 = &v99[v86];
        }

        else
        {
          v88 = "*";
        }
      }

      else
      {
        v88 = "*";
      }

      strcat(*a22, v88);
      ++v46;
      if (v95)
      {
        return v66;
      }
    }
  }

  v36 = heap_Realloc(*(a1 + 8), *a15, v31);
  if (v36)
  {
    *a15 = v36;
    *a19 = v31;
    goto LABEL_13;
  }

LABEL_106:
  v66 = 2310021130;
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  return v66;
}

uint64_t crf_mde_seg_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v10 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0);
    return v10;
  }

  *(a3 + 3) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      v8 = heap_Calloc(*(a1 + 8), 1, 65);
      v9 = *a3;
      *(*a3 + v7) = v8;
      if (!v8)
      {
        goto LABEL_7;
      }

      *(v9 + v7 + 8) = 65;
      *v8 = 45;
      v7 += 16;
    }

    while (16 * a2 != v7);
  }

  v10 = 0;
  *(a3 + 2) = a2;
  return v10;
}

void *crf_mde_seg_fv_dealloc(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          if (*(v3 + v6))
          {
            heap_Free(v4[1], *(v3 + v6));
            v3 = *a2;
            *(*a2 + v6) = 0;
            v5 = *(a2 + 8);
          }

          v6 += 16;
        }
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t crf_mde_seg_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a2 + 16 * a3;
  if (*(v9 + 8) >= v8)
  {
    v11 = *v9;
    goto LABEL_5;
  }

  v10 = v8 + 1;
  v11 = heap_Realloc(*(a1 + 8), *v9, v10);
  if (v11)
  {
    v12 = *a2 + 16 * a3;
    *v12 = v11;
    *(v12 + 8) = v10;
LABEL_5:
    strcpy(v11, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0);
  return 2310021130;
}

uint64_t crf_mde_seg_get_features(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, __int16 a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, unsigned int a11, unsigned int a12)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v14 = 0;
    while (2)
    {
      v15 = *(a8 + 8 * v14);
      v16 = &byte_1F42D2CF8;
      v17 = "char";
      while (strcmp(v15, v17))
      {
        v17 = *(v16 + 1);
        v16 += 24;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      BYTE2(v19) = *v16;
      LOWORD(v19) = a6;
      result = (*(v16 - 1))(a1, a2, a3, a4, a5, a11, a12, a7, v19, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = crf_mde_seg_fv_add(a1, a10, v14, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_9:
      if (++v14 != a9)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t crf_mde_seg_set_padding_features(uint64_t a1, unsigned int a2, int a3, void *a4, int a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  if (a5 == 1)
  {
    v10 = 62;
  }

  else
  {
    v10 = 60;
  }

  while (1)
  {
    if (v9)
    {
      strcpy(__s, "-");
    }

    else
    {
      v13 = v10;
      LH_itoa(a2, v12, 0xAu);
      __strcat_chk();
      __strcpy_chk();
    }

    result = crf_mde_seg_fv_add(a1, a4, v9, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (a3 == ++v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t crf_mde_seg_fe_char(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    *a11 = 45;
    v14 = 1;
  }

  else
  {
    v12 = *(a2 + 8 * v11);
    v13 = strlen(v12);
    if ((v13 & 0xFE00) != 0)
    {
      v14 = 512;
    }

    else
    {
      v14 = v13;
    }

    strncpy(a11, v12, v14);
  }

  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_isvowel(int a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, int a7, char *__s, __int16 a9, char a10, _WORD *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v17 = "-";
  }

  else if (__s && (v14 = strlen(__s)) != 0)
  {
    v15 = v14;
    v16 = 0;
    v17 = "0";
    while (1)
    {
      v18 = Utf8_LengthInBytes(&__s[v16], 1);
      if (!strncmp(*(a2 + 8 * v11), &__s[v16], v18))
      {
        break;
      }

      v16 += v18;
      if (v16 >= v15)
      {
        goto LABEL_11;
      }
    }

    v17 = "1";
  }

  else
  {
    v17 = "0";
  }

LABEL_11:
  *a11 = *v17;
  return 0;
}

uint64_t crf_mde_seg_fe_char_count(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  if (a10 + a9 >= a3)
  {
    *a11 = 45;
  }

  else
  {
    LH_itoa(a9, __s, 0xAu);
    v11 = strlen(__s);
    if ((v11 & 0xFE00) != 0)
    {
      v12 = 512;
    }

    else
    {
      v12 = v11;
    }

    strncpy(a11, __s, v12);
    a11[v12] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_char_revcount(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 < 0 || v11 >= a3)
  {
    *a11 = 45;
  }

  else
  {
    LH_itoa(~a9 + a3, __s, 0xAu);
    v12 = strlen(__s);
    if ((v12 & 0xFE00) != 0)
    {
      v13 = 512;
    }

    else
    {
      v13 = v12;
    }

    strncpy(a11, __s, v13);
    a11[v13] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_morpheme(uint64_t a1, uint64_t a2, signed int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    if (a6 == 1 && (v11 & 0x80000000) != 0)
    {
      a11[2] = 83;
      v15 = 20307;
    }

    else
    {
      if (a7 != 1 || v11 < a3)
      {
        *a11 = 45;
        v14 = 1;
        goto LABEL_14;
      }

      a11[2] = 83;
      v15 = 20293;
    }

    *a11 = v15;
    v14 = 3;
  }

  else
  {
    v12 = *(a2 + 8 * v11);
    v13 = strlen(v12);
    if ((v13 & 0xFE00) != 0)
    {
      v14 = 512;
    }

    else
    {
      v14 = v13;
    }

    strncpy(a11, v12, v14);
  }

LABEL_14:
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_punc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, _BYTE *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    *a11 = 45;
    v12 = 1;
  }

  else if (*(a4 + 4 * v11) == 1)
  {
    a11[2] = 83;
    *a11 = 17753;
    v12 = 3;
  }

  else
  {
    *a11 = 20302;
    v12 = 2;
  }

  a11[v12] = 0;
  return 0;
}

uint64_t crf_mde_utils_add2Str(uint64_t a1, char **a2, _WORD *a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v8 >= v9 - v11)
  {
    if ((v8 - v9 + v11) <= 0x80u)
    {
      v12 = 128;
    }

    else
    {
      v12 = (v8 - v9 + v11);
    }

    v13 = heap_Realloc(*(a1 + 8), v10, v9 + v12 + 1);
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }

    v10 = v13;
    *a2 = v13;
    *a3 += v12;
  }

  if (*v10)
  {
    strcat(v10, __s);
  }

  else
  {
    strcpy(v10, __s);
  }

  return 0;
}

uint64_t hlp_Write2WordRec(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, __int16 a5, __int16 a6, int a7, const char *a8, char *__s, char *a10, char *a11, int a12, int a13)
{
  v27 = a5;
  v26 = a6;
  v25 = 0;
  v24 = 8;
  v23 = 0;
  if (a7)
  {
    result = (*(a1 + 80))(a2, a3, *a4, &v23);
    goto LABEL_3;
  }

  if (!a13)
  {
    result = (*(a1 + 88))(a2, a3, *a4, &v23);
LABEL_3:
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v23 = *a4;
LABEL_7:
  result = (*(a1 + 160))(a2, a3, v23, 0, 1, &v24, &v25);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 160))(a2, a3, v23, 1, 1, &v27, &v25);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a1 + 160))(a2, a3, v23, 2, 1, &v26, &v25);
      if ((result & 0x80000000) == 0)
      {
        v19 = strlen(__s);
        result = (*(a1 + 160))(a2, a3, v23, 3, (v19 + 1), __s, &v25);
        if ((result & 0x80000000) == 0)
        {
          v20 = strlen(a8);
          result = (*(a1 + 160))(a2, a3, v23, 5, (v20 + 1), a8, &v25);
          if ((result & 0x80000000) == 0)
          {
            v21 = strlen(a10);
            result = (*(a1 + 160))(a2, a3, v23, 6, (v21 + 1), a10, &v25);
            if ((result & 0x80000000) == 0)
            {
              v22 = strlen(a11);
              result = (*(a1 + 160))(a2, a3, v23, 9, (v22 + 1), a11, &v25);
              if ((result & 0x80000000) == 0)
              {
                result = (*(a1 + 160))(a2, a3, v23, 7, 1, &a12, &v25);
                if ((result & 0x80000000) == 0)
                {
                  *a4 = v23;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t crf_mde_utils_POS_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, char **a7)
{
  __c_3 = 0;
  HIWORD(v18) = -1;
  BYTE5(v18) = 0;
  v11 = (*(a2 + 96))(a3, a4, a5, a6, &__c_3, &v18 + 6, &v18 + 5);
  if ((v11 & 0x80000000) == 0)
  {
    if (HIWORD(v18) || (log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", a5, a6), HIWORD(v18)))
    {
      v12 = *__c_3;
      v13 = strchr(*__c_3, BYTE5(v18));
      if (v13)
      {
        *v13 = 0;
        v12 = *__c_3;
      }

      v14 = strlen(v12);
      v15 = heap_Calloc(*(a1 + 8), 1, v14 + 1);
      *a7 = v15;
      if (v15)
      {
        strcpy(v15, *__c_3);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s POS dct look up %s : adding %s %s %s", a5, a6, *a7, v17, v18);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
        return 2310021130;
      }
    }
  }

  return v11;
}

uint64_t crf_mde_utils_write_morphemes(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 *a11, unsigned __int16 a12, __int16 a13, unsigned __int16 *a14, const char *a15, unsigned __int16 *a16)
{
  v83 = *MEMORY[0x1E69E9840];
  v81 = 0;
  v80 = *a11;
  v19 = strlen(a15);
  strcpy(v82, "normal");
  v20 = *a14;
  if (*a14)
  {
    v21 = 0;
    v22 = *(a14 + 1);
    do
    {
      v23 = *v22;
      v22 += 6;
      v21 += strlen(v23) + 1;
      --v20;
    }

    while (v20);
    v24 = v21 + 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = heap_Calloc(*(a1 + 8), 1, v24);
  if (!v25)
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  v26 = v25;
  v75 = a1;
  strcpy(v25, **(a14 + 1));
  if (*a14 >= 2u)
  {
    *&v26[strlen(v26)] = 95;
    if (*a14 >= 2u)
    {
      v27 = 1;
      v28 = 48;
      do
      {
        strcat(v26, *(*(a14 + 1) + v28));
        v29 = *a14;
        if (v27 + 1 < v29)
        {
          *&v26[strlen(v26)] = 95;
          v29 = *a14;
        }

        ++v27;
        v28 += 48;
      }

      while (v27 < v29);
    }
  }

  v79 = strlen(v26);
  v30 = a13 + a12 + v79;
  *a16 = v30;
  v31 = Utf8_LengthInBytes(&a15[v30], 1);
  v32 = *a16;
  if (v19 > v32)
  {
    v33 = v31;
    do
    {
      if (!(*(a4 + 128))(a5, a6, &a15[v32]))
      {
        break;
      }

      v34 = *a16;
      if (!strncmp(&a15[v34], "_", v33))
      {
        break;
      }

      *a16 = v34 + v33;
      v33 = Utf8_LengthInBytes(&a15[(v34 + v33)], 1);
      v32 = *a16;
    }

    while (v19 > v32);
  }

  v74 = a13 + a12;
  v35 = Utf8_LengthInBytes(&a15[v74], 1);
  v36 = a12 - v35 + a13;
  v77 = a5;
  if (v36 >= 0 && (v37 = v35, v38 = &a15[v36], (*(a4 + 128))(a5, a6, v38)))
  {
    v39 = 0;
    v40 = v37;
    LOWORD(v41) = v37;
    do
    {
      v42 = v41;
      if (!strncmp(v38, "_", v40))
      {
        break;
      }

      v43 = Utf8_LengthInBytes(&a15[v74 - v41], 1);
      v41 = v41 + v43;
      v44 = a12 - v41 + a13;
      if (v44 < 0)
      {
        v39 = v42;
        break;
      }

      v40 = v43;
      v38 = &a15[v44];
      v39 = v42;
    }

    while ((*(a4 + 128))(v77, a6, v38));
  }

  else
  {
    v39 = 0;
  }

  if (!v79)
  {
    v46 = 0;
    v45 = 0;
LABEL_48:
    if (a2 == 1 && a3)
    {
      v51 = crf_mde_utils_POS_dctlkp(v75, a4, v77, a6, a3, *(*(a14 + 1) + 48 * v45), &v81);
      if ((v51 & 0x80000000) != 0)
      {
        return v51;
      }

      v52 = v81;
      v58 = a12 - v39 + v46;
      v59 = *a16 - a13;
      if (v81)
      {
        LOWORD(v68) = 0;
        v57 = hlp_Write2WordRec(a7, a9, a10, &v80, v58, v59, v45, v81, "", "", v82, v68, 1);
        v60 = v75;
        v61 = a11;
        if ((v57 & 0x80000000) != 0)
        {
          goto LABEL_72;
        }

        heap_Free(*(v75 + 8), v52);
        goto LABEL_56;
      }

      LOWORD(v68) = 0;
      v62 = hlp_Write2WordRec(a7, a9, a10, &v80, v58, v59, v45, "*", "", "", v82, v68, 1);
    }

    else
    {
      LOWORD(v68) = 0;
      v62 = hlp_Write2WordRec(a7, a9, a10, &v80, a12 - v39 + v46, *a16 - a13, v45, "", "", "", v82, v68, 1);
    }

    v57 = v62;
    v60 = v75;
    v61 = a11;
    if ((v62 & 0x80000000) != 0)
    {
LABEL_67:
      *v61 = v80;
      goto LABEL_68;
    }

LABEL_56:
    v63 = (v74 + v79);
    if (v63 > v74 && v79)
    {
      v64 = 0;
      v65 = v74;
      do
      {
        v66 = v26[v64];
        if (a15[v65] != v66)
        {
          a15[v65] = v66;
        }

        if (v63 <= ++v65)
        {
          break;
        }

        ++v64;
      }

      while (v79 > v64);
    }

    goto LABEL_67;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v49 = a2 == 1 && a3 != 0;
  v71 = a12 - v39;
  v72 = v49;
  v70 = a6;
  while (1)
  {
    v50 = Utf8_LengthInBytes(&v26[v47], 1);
    if (!strncmp(&v26[v47], "_", v50))
    {
      break;
    }

LABEL_44:
    v47 += v50;
    if (v47 >= v79)
    {
      goto LABEL_48;
    }
  }

  if (!v72)
  {
    LOWORD(v68) = 0;
    v56 = hlp_Write2WordRec(a7, a9, a10, &v80, v71 + v46, v47 + a12, v45, "", "", "", v82, v68, 1);
    goto LABEL_42;
  }

  v51 = crf_mde_utils_POS_dctlkp(v75, a4, v77, a6, a3, *(*(a14 + 1) + 48 * v45), &v81);
  if ((v51 & 0x80000000) != 0)
  {
    return v51;
  }

  v52 = v81;
  v53 = v71 + v46;
  v54 = v47 + a12;
  if (!v81)
  {
    LOWORD(v68) = 0;
    v56 = hlp_Write2WordRec(a7, a9, a10, &v80, v53, v54, v45, "*", "", "", v82, v68, 1);
LABEL_42:
    if ((v56 & 0x80000000) != 0)
    {
      v57 = v56;
      v60 = v75;
      v61 = a11;
      goto LABEL_67;
    }

    goto LABEL_43;
  }

  LOWORD(v68) = 0;
  v55 = hlp_Write2WordRec(a7, a9, a10, &v80, v53, v54, v45, v81, "", "", v82, v68, 1);
  if ((v55 & 0x80000000) == 0)
  {
    heap_Free(*(v75 + 8), v52);
    v81 = 0;
LABEL_43:
    ++v45;
    v46 = v47 + 1;
    a6 = v70;
    goto LABEL_44;
  }

  v57 = v55;
  v60 = v75;
  v61 = a11;
LABEL_72:
  *v61 = v80;
  heap_Free(*(v60 + 8), v52);
LABEL_68:
  heap_Free(*(v60 + 8), v26);
  return v57;
}

uint64_t crf_mde_utils_adddctres(uint64_t a1, uint64_t a2, const char *a3, char *__s, const char *a5, int a6)
{
  v12 = *(a1 + 8);
  v13 = strlen(__s);
  v14 = heap_Calloc(v12, 1, v13 + 1);
  if (v14)
  {
    v15 = v14;
    strcpy(v14, __s);
    v16 = strchr(__s, 92);
    for (i = 1; v16; ++i)
    {
      *v16 = 0;
      v16 = strchr(v16 + 1, 92);
    }

    v18 = *(a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 8) + i >= v18)
      {
        v19 = heap_Realloc(*(a1 + 8), *(a2 + 16), 32 * (v18 + i) + 160);
        if (!v19)
        {
          goto LABEL_33;
        }

        *(a2 + 16) = v19;
        v20 = i + *(a2 + 24) + 5;
        *(a2 + 24) = v20;
        v21 = *(a2 + 8);
        if (v21 < v20)
        {
          v22 = v20;
          v23 = (v19 + 32 * v21 + 8);
          v24 = v22 - v21;
          do
          {
            *(v23 - 2) = 0;
            v23[1] = 0;
            v23[2] = 0;
            *v23 = 0;
            v23 += 4;
            --v24;
          }

          while (v24);
        }
      }
    }

    else
    {
      if (i >= 5u)
      {
        v26 = i + 1;
      }

      else
      {
        v26 = 5;
      }

      v27 = heap_Calloc(*(a1 + 8), 1, 32 * v26);
      *(a2 + 16) = v27;
      if (!v27)
      {
        goto LABEL_33;
      }

      *(a2 + 24) = v26;
    }

    v28 = strchr(v15, 92);
    v29 = v15;
    if (v28)
    {
      v30 = v28;
      v29 = v15;
      do
      {
        *v30 = 0;
        v31 = strlen(v29);
        v32 = heap_Calloc(*(a1 + 8), 1, v31 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v32;
        if (!v32)
        {
          goto LABEL_33;
        }

        strcpy(v32, v29);
        v33 = strlen(a3);
        v34 = heap_Calloc(*(a1 + 8), 1, v33 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v34;
        if (!v34)
        {
          goto LABEL_33;
        }

        strcpy(v34, a3);
        if (a5)
        {
          v35 = strlen(a5);
          if (v35)
          {
            v36 = heap_Calloc(*(a1 + 8), 1, v35 + 1);
            *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v36;
            if (!v36)
            {
              goto LABEL_33;
            }

            strcpy(v36, a5);
          }
        }

        v37 = *(a2 + 8);
        *(*(a2 + 16) + 32 * v37) = a6;
        *(a2 + 8) = v37 + 1;
        v29 = v30 + 1;
        v30 = strchr(v30 + 1, 92);
      }

      while (v30);
    }

    v38 = strlen(v29);
    v39 = heap_Calloc(*(a1 + 8), 1, v38 + 1);
    *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v39;
    if (v39)
    {
      strcpy(v39, v29);
      v40 = strlen(a3);
      v41 = heap_Calloc(*(a1 + 8), 1, v40 + 1);
      *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v41;
      if (v41)
      {
        strcpy(v41, a3);
        if (!a5)
        {
          goto LABEL_32;
        }

        v42 = strlen(a5);
        if (!v42)
        {
          goto LABEL_32;
        }

        v43 = heap_Calloc(*(a1 + 8), 1, v42 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v43;
        if (v43)
        {
          strcpy(v43, a5);
LABEL_32:
          v25 = 0;
          v44 = *(a2 + 8);
          *(*(a2 + 16) + 32 * v44) = a6;
          *(a2 + 8) = v44 + 1;
          *(a2 + 28) = 1;
          *(a2 + 40) = 1;
LABEL_34:
          heap_Free(*(a1 + 8), v15);
          return v25;
        }
      }
    }

LABEL_33:
    v25 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    goto LABEL_34;
  }

  v25 = 2310021130;
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  return v25;
}

uint64_t crf_mde_utils_sysdctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t a10)
{
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v59 = -1;
  v13 = "xps";
  if (((*(a2 + 96))(a3, a4, "fecfg", "mde_affixtags", &v60, &v59, &v58) & 0x80000000) == 0)
  {
    if (v59)
    {
      v13 = *v60;
      v14 = strchr(*v60, v58);
      if (v14)
      {
        *v14 = 0;
        v13 = *v60;
      }
    }
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "sysdctlookup", &v57) & 0x80000000) == 0 && *v57 == 110 && v57[1] == 111 && !v57[2])
  {
    return 0;
  }

  v15 = a9;
  v59 = 0;
  v56 = 7352935;
  if (a5)
  {
    __strcat_chk();
    v16 = (*(a2 + 232))(a3, a4, &v56, a9, &v60, &v59, &v58, 0);
  }

  else
  {
    v16 = (*(a2 + 240))(a3, a4, &v56, a9, &v60, &v59, &v58, a7, 0);
  }

  v17 = v16;
  if ((v16 & 0x80000000) == 0)
  {
    if (v59 || (log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s : no result", a9), v59))
    {
      __s1 = v13;
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = v60[v18];
        v21 = strchr(v20, v58);
        if (!v21 || (*v21 = 0, (v22 = strchr(v21 + 1, v58)) == 0) || (*v22 = 0, (v23 = strchr(v22 + 1, v58)) == 0))
        {
LABEL_41:
          if (!v19)
          {
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s : found entry, but discarded (mde field))", v15);
          }

          v19 = 1;
          goto LABEL_44;
        }

        *v23 = 0;
        v24 = v23 + 1;
        v25 = strchr(v23 + 1, v58);
        v26 = v25;
        if (v25)
        {
          *v25 = 0;
          v26 = v25 + 1;
          v27 = strchr(v25 + 1, v58);
          if (v27)
          {
            *v27 = 0;
            v28 = strchr(v27 + 1, v58);
            if (v28)
            {
              v29 = v28;
              *v28 = 0;
              v30 = (v28 + 1);
              v31 = strchr(v28 + 1, v58);
              if (v31)
              {
                *v31 = 0;
                v32 = strchr(v31 + 1, v58);
                if (v32)
                {
                  *v32 = 0;
                }
              }

              v33 = *v30;
              if (v33 == 50)
              {
                v34 = v29[2];
              }

              else
              {
                if (v33 != 48)
                {
                  goto LABEL_31;
                }

                v34 = v29[2];
              }

              if (!v34)
              {
                goto LABEL_41;
              }
            }
          }
        }

LABEL_31:
        if (v20)
        {
          v35 = *v24 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          goto LABEL_41;
        }

        v36 = strlen(v20);
        if (!v36)
        {
          goto LABEL_41;
        }

        v37 = heap_Calloc(*(a1 + 8), 1, v36 + 1);
        if (!v37 || (v38 = v37, strcpy(v37, v20), (v39 = heap_Calloc(*(a1 + 8), 1, 256)) == 0))
        {
          log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
          return 2310021130;
        }

        v40 = v39;
        if (strlen(v24) == 1 && strstr(__s1, v24))
        {
          strcpy(v40, v24);
          v41 = 2;
        }

        else
        {
          strcpy(v40, v24);
          if (a8)
          {
            v42 = v40;
            while (1)
            {
              v43 = strchr(v24, 92);
              if (v43)
              {
                strncpy(v42, v24, (v43 - v24));
                v42[(v43 - v24)] = 0;
              }

              else
              {
                strcpy(v42, v24);
              }

              v59 = -1;
              v44 = (*(a2 + 96))(a3, a4, a8, v42, &v60, &v59, &v58);
              if ((v44 & 0x80000000) != 0)
              {
                return v44;
              }

              if (v59 == 1)
              {
                v45 = *v60;
                v46 = strchr(*v60, v58);
                if (v46)
                {
                  *v46 = 0;
                  v45 = *v60;
                }

                strcpy(v42, v45);
              }

              if (!v43)
              {
                break;
              }

              v47 = &v42[strlen(v42)];
              *v47 = 92;
              v42 = v47 + 1;
              v24 = v43 + 1;
            }
          }

          v41 = 1;
        }

        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s : adding %s %s %s", a9, v38, v40, v26);
        v48 = crf_mde_utils_adddctres(a1, a10, v38, v40, v26, v41);
        v49 = v38;
        v15 = a9;
        heap_Free(*(a1 + 8), v49);
        heap_Free(*(a1 + 8), v40);
        v17 = 0;
        if ((v48 & 0x80000000) != 0)
        {
          return v48;
        }

LABEL_44:
        ++v18;
      }

      while (v18 < v59);
    }
  }

  return v17;
}

uint64_t crf_mde_utils_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, int a8)
{
  memset(__c, 0, sizeof(__c));
  v11 = (*(a2 + 96))(a3, a4, a5, a6, &__c[3], &__c[1], __c);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!*&__c[1])
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", a5, a6);
    if (!*&__c[1])
    {
      return v11;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(*&__c[3] + 8 * v12);
    v16 = strchr(v15, __c[0]);
    if (v16)
    {
      *v16 = 0;
      v17 = v16 + 1;
      v15 = *(*&__c[3] + 8 * v12);
    }

    else
    {
      v17 = v14;
    }

    v18 = strlen(v15);
    v19 = heap_Calloc(*(a1 + 8), 1, v18 + 1);
    if (!v19)
    {
LABEL_27:
      v11 = 2310021130;
      v29 = *(a1 + 32);
      v30 = 34000;
      goto LABEL_29;
    }

    v20 = v19;
    strcpy(v19, *(*&__c[3] + 8 * v12));
    v21 = strchr(v17, __c[0]);
    if (!v21)
    {
      v14 = v17;
      if (v13)
      {
        goto LABEL_13;
      }

LABEL_28:
      v11 = 2310021130;
      v29 = *(a1 + 32);
      v30 = 34008;
LABEL_29:
      log_OutPublic(v29, "FE_ONEWORD", v30, 0);
      return v11;
    }

    *v21 = 0;
    v14 = v21 + 1;
    v13 = v17;
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_13:
    v22 = strlen(v13);
    v23 = heap_Calloc(*(a1 + 8), 1, v22 + 1);
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = v23;
    strcpy(v23, v13);
    v25 = strchr(v14, __c[0]);
    if (v25)
    {
      *v25 = 0;
    }

    if (v14 && *v14 != __c[0] && (v26 = strlen(v14)) != 0)
    {
      v27 = heap_Calloc(*(a1 + 8), 1, v26 + 1);
      if (!v27)
      {
        goto LABEL_27;
      }

      v28 = v27;
      strcpy(v27, v14);
    }

    else
    {
      v28 = 0;
    }

    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : adding %s %s %s", a5, a6, v24, v20, v28);
    v11 = crf_mde_utils_adddctres(a1, a7, v24, v20, v28, a8);
    heap_Free(*(a1 + 8), v24);
    heap_Free(*(a1 + 8), v20);
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    if (v28)
    {
      heap_Free(*(a1 + 8), v28);
    }

    if (++v12 >= *&__c[1])
    {
      return 0;
    }
  }

  if (v28)
  {
    heap_Free(*(a1 + 8), v28);
  }

  return v11;
}

uint64_t crf_mde_utils_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2310021120;
  v9 = *a2;
  v10 = strlen(*a2);
  v11 = strlen(a3);
  v12 = *(a2 + 8);
  if (v10 + v11 + 2 >= v12)
  {
    v13 = heap_Realloc(*(a1 + 8), v9, v11 + v12 + *(a2 + 10));
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }

    v9 = v13;
    *a2 = v13;
    *(a2 + 8) += v11 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    strcat(v9, a3);
    return 0;
  }

  if (a4 == 2)
  {
    strcpy(v9, a3);
    return 0;
  }

  return v8;
}

void *crf_mde_utils_dynstr_free(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    result = heap_Free(result[1], v3);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t crf_mde_utils_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    v9 = v8;
    result = 0;
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    *v9 = 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  return result;
}

uint64_t crf_mde_utils_CRF_MDE_SEGPAT_T_init(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 80 * a3);
  *a2 = v6;
  if (v6)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 80 * a3;
      while (1)
      {
        result = crf_mde_utils_dynstr_init(a1, *a2 + v7, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 32, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 48, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 16, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v7 + 64, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v7 += 80;
        if (v8 == v7)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  return result;
}

void *crf_mde_utils_CRF_MDE_SEGPAT_T_free(void *result, uint64_t *a2, unsigned int a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = result;
    if (a3)
    {
      v6 = 0;
      v7 = 80 * a3;
      do
      {
        v8 = *a2;
        v9 = *(*a2 + v6);
        if (v9)
        {
          heap_Free(v5[1], v9);
          *(v8 + v6) = 0;
        }

        v10 = *a2;
        *(v8 + v6 + 8) = 0;
        v11 = v10 + v6;
        v12 = *(v10 + v6 + 32);
        if (v12)
        {
          heap_Free(v5[1], v12);
          *(v11 + 32) = 0;
          v10 = *a2;
        }

        *(v11 + 40) = 0;
        v13 = v10 + v6;
        v14 = *(v10 + v6 + 48);
        if (v14)
        {
          heap_Free(v5[1], v14);
          *(v13 + 48) = 0;
          v10 = *a2;
        }

        *(v13 + 56) = 0;
        v15 = v10 + v6;
        v16 = *(v10 + v6 + 16);
        if (v16)
        {
          heap_Free(v5[1], v16);
          *(v15 + 16) = 0;
          v10 = *a2;
        }

        *(v15 + 24) = 0;
        v17 = v10 + v6;
        v18 = *(v10 + v6 + 64);
        if (v18)
        {
          heap_Free(v5[1], v18);
          *(v17 + 64) = 0;
        }

        *(v17 + 72) = 0;
        v6 += 80;
      }

      while (v7 != v6);
      v4 = *a2;
    }

    result = heap_Free(v5[1], v4);
    *a2 = 0;
  }

  return result;
}

uint64_t crf_mde_utils_do_validation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, uint64_t a8, const char *a9, const char *a10, uint64_t a11, uint64_t a12, unsigned __int16 a13, int a14, const char *a15, char **a16, _WORD *a17)
{
  v17 = a13;
  if (a13)
  {
    v18 = 0;
    v19 = a1;
    do
    {
      v20 = *(a12 + 8 * v18);
      if (*(v20 + 8) == 5)
      {
        log_OutText(*(v19 + 32), "FE_ONEWORD", 5, 0, "skip nbest[%d] as contains split umlaut", v18);
      }

      else if (*v20)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v166 = v22;
          v23 = *(v20 + 1) + 48 * v22;
          if (!*(v23 + 8) && !*(v23 + 40))
          {
            *(v23 + 40) = 1;
            v24 = crf_mde_utils_sysdctlkp(v19, a2, a3, a4, a5, a6, a7, a8, *v23, v23);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            v162 = v21;
            v25 = (*(*(a12 + 8 * v18) + 8) + 48 * v166);
            v24 = crf_mde_utils_dctlkp(v19, a2, a3, a4, a9, *v25, v25, 1);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            if (a10)
            {
              v26 = (*(*(a12 + 8 * v18) + 8) + 48 * v166);
              v24 = crf_mde_utils_dctlkp(v19, a2, a3, a4, a10, *v26, v26, 2);
              if ((v24 & 0x80000000) != 0)
              {
                return v24;
              }
            }

            v20 = *(a12 + 8 * v18);
            v27 = *(v20 + 1) + 48 * v166;
            if (*(v27 + 8))
            {
              v28 = 0;
              v29 = 0;
              *(v27 + 32) = 0;
              do
              {
                v30 = *(v27 + 16) + v28;
                v31 = *(v30 + 16);
                if (v31)
                {
                  v32 = strstr(*(v30 + 16), "◈");
                  if (v32)
                  {
                    v33 = v32;
                    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "segment %s has phon with special umlaut character=%s", *v27, v31);
                    v34 = v166;
                    v35 = *(*(a12 + 8 * v18) + 8) + 48 * v166;
                    if (*(v35 + 36) == 1)
                    {
                      v36 = "umlauted segment; modified to=%s";
                    }

                    else
                    {
                      v37 = *(*(v35 + 16) + v28 + 16);
                      v38 = strlen((v33 + 3));
                      v34 = v166;
                      memcpy(v37, (v33 + 3), v38);
                      v33 = *(*(*(*(a12 + 8 * v18) + 8) + 48 * v166 + 16) + v28 + 16) + strlen((v33 + 3));
                      v36 = "non-umlauted segment; modified to=%s";
                    }

                    *v33 = 0;
                    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, v36, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v34 + 16) + v28 + 16));
                    v21 = v162;
                  }
                }

                v20 = *(a12 + 8 * v18);
                v39 = *(v20 + 1);
                v40 = *(v39 + 48 * v166 + 16) + v28;
                v41 = *(v40 + 24);
                if (v41)
                {
                  v42 = strstr(*(v40 + 24), "force");
                  if (v42)
                  {
                    v43 = v42;
                    v44 = strlen(v41);
                    if (v44 < 7)
                    {
                      v45 = 5;
                    }

                    else if (v43[5] == 44)
                    {
                      v45 = 6;
                    }

                    else
                    {
                      v45 = 5;
                    }

                    if (!strcmp(v41, "force") || (memmove(v43, &v43[v45], (v44 - v45 + 1)), v46 = a12, v47 = v166, v41 = *(*(*(*(a12 + 8 * v18) + 8) + 48 * v166 + 16) + v28 + 24), !*v41))
                    {
                      heap_Free(*(a1 + 8), v41);
                      v46 = a12;
                      v47 = v166;
                      *(*(*(*(a12 + 8 * v18) + 8) + 48 * v166 + 16) + v28 + 24) = 0;
                    }

                    v20 = *(v46 + 8 * v18);
                    v39 = *(v20 + 1);
                    *(v39 + 48 * v47 + 32) = 1;
                  }
                }

                ++v29;
                v27 = v39 + 48 * v166;
                v28 += 32;
              }

              while (v29 < *(v27 + 8));
              for (i = 0; i != a13; ++i)
              {
                v49 = *(a12 + 8 * i);
                if (*v49)
                {
                  for (j = 0; j < *v49; ++j)
                  {
                    if ((v18 != i || v166 != j) && *(v49 + 8) != 5)
                    {
                      v51 = *(v49 + 1) + 48 * j;
                      if (!*(v51 + 8))
                      {
                        v52 = *(v20 + 1) + 48 * v166;
                        if (!strcmp(*v52, *v51))
                        {
                          *(*(*(a12 + 8 * i) + 8) + 48 * j + 16) = heap_Calloc(*(a1 + 8), 1, 32 * *(v52 + 8));
                          v49 = *(a12 + 8 * i);
                          v53 = *(v49 + 1);
                          v54 = v53 + 48 * j;
                          if (!*(v54 + 16))
                          {
                            v100 = 2310021130;
                            v142 = *(a1 + 32);
                            goto LABEL_209;
                          }

                          v20 = *(a12 + 8 * v18);
                          v55 = *(v20 + 1);
                          v56 = *(v55 + 48 * v166 + 8);
                          *(v54 + 24) = v56;
                          v57 = v53 + 48 * j;
                          *(v57 + 8) = v56;
                          *(v57 + 28) = 1;
                          *(v57 + 40) = 1;
                          if (v56)
                          {
                            v58 = 0;
                            v59 = 0;
                            while (1)
                            {
                              v60 = v166;
                              v61 = *(v55 + 48 * v166 + 16) + v58;
                              *(*(v53 + 48 * j + 16) + v58) = *v61;
                              v62 = *(v61 + 8);
                              if (v62)
                              {
                                v63 = strlen(v62);
                                *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v58 + 8) = heap_Calloc(*(a1 + 8), 1, v63 + 1);
                                v64 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v58 + 8);
                                if (!v64)
                                {
                                  break;
                                }

                                v60 = v166;
                                strcpy(v64, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v166 + 16) + v58 + 8));
                                v20 = *(a12 + 8 * v18);
                              }

                              v65 = strlen(*(*(*(v20 + 1) + 48 * v60 + 16) + v58 + 16));
                              *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v58 + 16) = heap_Calloc(*(a1 + 8), 1, v65 + 1);
                              v66 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v58 + 16);
                              if (!v66)
                              {
                                break;
                              }

                              strcpy(v66, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v60 + 16) + v58 + 16));
                              v20 = *(a12 + 8 * v18);
                              v55 = *(v20 + 1);
                              v67 = v55 + 48 * v60;
                              v49 = *(a12 + 8 * i);
                              v53 = *(v49 + 1);
                              *(v53 + 48 * j + 32) = *(v67 + 32);
                              ++v59;
                              v58 += 32;
                              v21 = v162;
                              if (v59 >= *(v67 + 8))
                              {
                                goto LABEL_43;
                              }
                            }

LABEL_208:
                            v100 = 2310021130;
                            v142 = *(a1 + 32);
LABEL_209:
                            log_OutPublic(v142, "FE_ONEWORD", 34000, 0);
                            return v100;
                          }
                        }
                      }
                    }

LABEL_43:
                    ;
                  }
                }

                v19 = a1;
              }
            }

            else
            {
              for (k = 0; k != a13; ++k)
              {
                v69 = *(a12 + 8 * k);
                if (*v69)
                {
                  v70 = 0;
                  v71 = 48 * *v69;
                  do
                  {
                    if (v18 != k || v21 != v70)
                    {
                      v72 = *(v69 + 1);
                      if (!strcmp(*v27, *(v72 + v70)))
                      {
                        *(v72 + v70 + 40) = 1;
                      }
                    }

                    v70 += 48;
                  }

                  while (v71 != v70);
                }
              }

              v19 = a1;
            }
          }

          v22 = v166 + 1;
          v21 += 48;
        }

        while (v166 + 1 < *v20);
      }

      ++v18;
      v17 = a13;
    }

    while (v18 != a13);
    for (m = 0; m != a13; ++m)
    {
      v74 = *(a12 + 8 * m);
      v75 = *v74;
      if (*v74)
      {
        v76 = 0;
        v77 = 0;
        v78 = (*(v74 + 1) + 32);
        do
        {
          if (!*(v78 - 12))
          {
            *(v78 - 1) = 0;
            v77 = 1;
          }

          v79 = *v78;
          v78 += 12;
          if (v79 == 1)
          {
            v76 = 1;
          }

          --v75;
        }

        while (v75);
        if (v77 == 1)
        {
          *(v74 + 8) = 2;
          if (v76 == 1)
          {
            v80 = 0;
            *(v74 + 8) = 1;
            do
            {
              v81 = *(v74 + 1);
              if (*(v81 + 48 * v80 + 8))
              {
                v82 = 0;
                v83 = 8;
                do
                {
                  if (**(v81 + 48 * v80 + 16) == 2)
                  {
                    *(*(*(*(a12 + 8 * m) + 8) + 48 * v80 + 16) + v83) = heap_Calloc(*(a1 + 8), 1, 2);
                    v84 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v80 + 16) + v83);
                    if (!v84)
                    {
                      goto LABEL_208;
                    }

                    *v84 = 42;
                    v74 = *(a12 + 8 * m);
                  }

                  ++v82;
                  v81 = *(v74 + 1);
                  v83 += 32;
                }

                while (v82 < *(v81 + 48 * v80 + 8));
              }

              else
              {
                *(*(*(a12 + 8 * m) + 8) + 48 * v80 + 16) = heap_Calloc(*(a1 + 8), 1, 32);
                if (!*(*(*(a12 + 8 * m) + 8) + 48 * v80 + 16) || (*(*(*(*(a12 + 8 * m) + 8) + 48 * v80 + 16) + 8) = heap_Calloc(*(a1 + 8), 1, 2), (v85 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v80 + 16) + 8)) == 0))
                {
                  v100 = 2310021130;
                  v142 = *(a1 + 32);
                  goto LABEL_209;
                }

                *v85 = 42;
                v86 = strlen(*(*(*(a12 + 8 * m) + 8) + 48 * v80));
                *(*(*(*(a12 + 8 * m) + 8) + 48 * v80 + 16) + 16) = heap_Calloc(*(a1 + 8), 1, v86 + 1);
                v87 = *(*(a12 + 8 * m) + 8) + 48 * v80;
                v88 = *(*(v87 + 16) + 16);
                if (!v88)
                {
                  goto LABEL_208;
                }

                strcpy(v88, *v87);
                v74 = *(a12 + 8 * m);
                v89 = *(v74 + 1) + 48 * v80;
                **(v89 + 16) = 0;
                *(v89 + 8) = 1;
              }

              ++v80;
            }

            while (v80 < *v74);
          }
        }
      }
    }
  }

  v90 = a1;
  v24 = crf_mde_dump(a1, "After mlex lookup", a12, v17, a14, a16, a17);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "get pattern combinations for valid/partial segmentations:", 0);
  if (!v17)
  {
    return crf_mde_dump(v90, "results after mlex/pattern validation", a12, v17, a14, a16, a17);
  }

  v91 = 0;
  v160 = v17;
  while (1)
  {
    v92 = *(v90 + 32);
    if (*(*(a12 + 8 * v91) + 32) <= 1u)
    {
      break;
    }

    log_OutText(v92, "FE_ONEWORD", 5, 0, "skip invalid nbest[%d]", v91);
LABEL_202:
    if (++v91 == v17)
    {
      return crf_mde_dump(v90, "results after mlex/pattern validation", a12, v17, a14, a16, a17);
    }
  }

  log_OutText(v92, "FE_ONEWORD", 5, 0, "doing valid nbest[%d]", v91);
  v93 = *(a12 + 8 * v91);
  v170 = 0;
  v171[0] = 0;
  v169 = 0;
  v168 = -1;
  v94 = *v93;
  if (*v93)
  {
    v95 = (*(v93 + 1) + 8);
    v96 = 1;
    do
    {
      v97 = *v95;
      v95 += 24;
      v96 *= v97;
      --v94;
    }

    while (v94);
  }

  else
  {
    v96 = 1;
  }

  v167 = 0;
  v98 = v96;
  v99 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(a1, v171, v96);
  if ((v99 & 0x80000000) != 0 || (v99 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(a1, &v170, v98), (v99 & 0x80000000) != 0))
  {
LABEL_198:
    v100 = v99;
    goto LABEL_199;
  }

  v168 = -1;
  v100 = (*(a2 + 96))(a3, a4, "fecfg", "mde_addpos", &v169, &v168, &v167);
  v161 = 1;
  if ((v100 & 0x80000000) == 0 && v168)
  {
    v101 = *v169;
    v102 = strchr(*v169, v167);
    if (v102)
    {
      *v102 = 0;
      v101 = *v169;
    }

    v161 = strcmp(v101, "YES") && strcmp(v101, "yes");
  }

  if (!*v93)
  {
LABEL_199:
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v171, v98);
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, &v170, v98);
    if ((v100 & 0x80000000) != 0)
    {
      return v100;
    }

    v90 = a1;
    v141 = *(a12 + 8 * v91);
    if (!*(v141 + 16))
    {
      *(v141 + 32) = 3;
    }

    goto LABEL_202;
  }

  v103 = 0;
  LOWORD(v104) = 0;
  v163 = v170;
  v154 = v171[0] + 64;
  v144 = v171[0];
  v145 = v171[0] + 32;
  v146 = v93;
  do
  {
    v156 = v103;
    v105 = *(v93 + 1) + 48 * v103;
    if (*(v105 + 8))
    {
      v106 = 0;
      v107 = 0;
      v148 = v104;
      v151 = v104;
      do
      {
        if (v104)
        {
          v109 = v151;
          v108 = v154;
          while (1)
          {
            v110 = v163 + 80 * v107;
            v111 = crf_mde_utils_dynstr_add(a1, v110 + 32, *(v108 - 4), 2);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(a1, v110 + 32, a15, 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v112 = *(v105 + 16) + 32 * v106;
            if (*v112 == 2)
            {
              v111 = crf_mde_utils_dynstr_add(a1, v110 + 32, *v105, 1);
              if ((v111 & 0x80000000) != 0)
              {
                goto LABEL_174;
              }

              v113 = a1;
              if (v161)
              {
                goto LABEL_126;
              }

              v111 = crf_mde_utils_dynstr_add(a1, v110 + 32, "_", 1);
              if ((v111 & 0x80000000) != 0)
              {
                goto LABEL_174;
              }

              v114 = *(*(v105 + 16) + 32 * v106 + 8);
              v115 = v110 + 32;
            }

            else
            {
              v114 = *(v112 + 8);
              v115 = v110 + 32;
              v113 = a1;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v115, v114, 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

LABEL_126:
            v111 = crf_mde_utils_dynstr_add(v113, v110 + 48, *(v108 - 2), 2);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v110 + 48, a15, 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v110 + 48, *(*(v105 + 16) + 32 * v106 + 8), 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v110, *(v108 - 8), 2);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v110, a15, 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v110, *(*(v105 + 16) + 32 * v106 + 16), 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v110 + 64, *v108, 2);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v111 = crf_mde_utils_dynstr_add(v113, v110 + 64, a15, 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v116 = *(*(v105 + 16) + 32 * v106 + 24);
            if (!v116)
            {
              v116 = "*";
            }

            v111 = crf_mde_utils_dynstr_add(a1, v110 + 64, v116, 1);
            if ((v111 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            ++v107;
            v108 += 10;
            if (!--v109)
            {
              goto LABEL_152;
            }
          }
        }

        v117 = *(v105 + 16) + 32 * v106;
        v118 = v163 + 80 * v107;
        if (*v117 == 2)
        {
          v119 = crf_mde_utils_dynstr_add(a1, v118 + 32, *v105, 2);
          if ((v119 & 0x80000000) != 0 || (v120 = a1, !v161) && ((v119 = crf_mde_utils_dynstr_add(a1, v118 + 32, "_", 1), (v119 & 0x80000000) != 0) || (v119 = crf_mde_utils_dynstr_add(a1, v118 + 32, *(*(v105 + 16) + 32 * v106 + 8), 1), (v119 & 0x80000000) != 0)))
          {
LABEL_175:
            v100 = v119;
            v17 = v160;
            goto LABEL_199;
          }
        }

        else
        {
          v120 = a1;
          v119 = crf_mde_utils_dynstr_add(a1, v118 + 32, *(v117 + 8), 2);
          if ((v119 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }
        }

        v121 = v163 + 80 * v107;
        v111 = crf_mde_utils_dynstr_add(v120, v121 + 48, *(*(v105 + 16) + 32 * v106 + 8), 2);
        if ((v111 & 0x80000000) != 0 || (v111 = crf_mde_utils_dynstr_add(v120, v121, *(*(v105 + 16) + 32 * v106 + 16), 2), (v111 & 0x80000000) != 0))
        {
LABEL_174:
          v100 = v111;
          v17 = v160;
          goto LABEL_199;
        }

        v122 = *(*(v105 + 16) + 32 * v106 + 24);
        if (!v122)
        {
          v122 = "*";
        }

        v123 = crf_mde_utils_dynstr_add(a1, v121 + 64, v122, 2);
        if ((v123 & 0x80000000) != 0)
        {
          v100 = v123;
          v17 = v160;
          goto LABEL_199;
        }

        ++v107;
LABEL_152:
        ++v106;
        LOWORD(v104) = v148;
      }

      while (v106 < *(v105 + 8));
      if (v107)
      {
        v104 = 0;
        v124 = 0;
        v125 = 0;
        v152 = v107;
        v17 = v160;
        while (1)
        {
          v149 = v104;
          v126 = *(v163 + 80 * v125 + 32);
          if (v124)
          {
            v127 = 0;
            v128 = v124;
            v129 = v145;
            v130 = v124;
            do
            {
              v131 = *v129;
              v129 += 10;
              if (!strcmp(v131, v126))
              {
                v127 = 1;
              }

              --v130;
            }

            while (v130);
            v17 = v160;
            if (v127)
            {
              v104 = v149;
              goto LABEL_168;
            }
          }

          else
          {
            v128 = 0;
          }

          v132 = crf_mde_utils_dynstr_add(a1, v144 + 80 * v128 + 32, v126, 2);
          if ((v132 & 0x80000000) != 0 || (v133 = (v163 + 80 * v125), v132 = crf_mde_utils_dynstr_add(a1, v144 + 80 * v149 + 48, v133[6], 2), (v132 & 0x80000000) != 0) || (v132 = crf_mde_utils_dynstr_add(a1, v144 + 80 * v149, *v133, 2), (v132 & 0x80000000) != 0) || (v132 = crf_mde_utils_dynstr_add(a1, v144 + 80 * v149 + 64, v133[8], 2), (v132 & 0x80000000) != 0))
          {
            v100 = v132;
            goto LABEL_199;
          }

          v104 = (v149 + 1);
          v124 = v149 + 1;
LABEL_168:
          ++v125;
          v93 = v146;
          if (v125 == v152)
          {
            goto LABEL_171;
          }
        }
      }

      LOWORD(v104) = 0;
      v17 = v160;
      v93 = v146;
    }

    else
    {
      LOWORD(v104) = 0;
    }

LABEL_171:
    v103 = v156 + 1;
  }

  while (v156 + 1 < *v93);
  if (!v104)
  {
    v100 = 0;
    goto LABEL_199;
  }

  v164 = v104;
  v134 = heap_Calloc(*(a1 + 8), 1, 80 * v104);
  *(v93 + 3) = v134;
  if (!v134)
  {
    goto LABEL_208;
  }

  v135 = v93;
  v136 = 0;
  v100 = 0;
  v135[8] = 0;
  v137 = v145;
  while (1)
  {
    if (a11)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "   check pattern %s", *v137);
      v168 = -1;
      v100 = (*(a2 + 96))(a3, a4, "mde_segpatterns", *v137, &v169, &v168, &v167);
      if ((v100 & 0x80000000) != 0)
      {
        return v100;
      }
    }

    if (v168)
    {
      v138 = *v169;
      v139 = strchr(*v169, v167);
      if (v139)
      {
        *v139 = 0;
        v138 = *v169;
      }

      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     Found Solution %d %s : Valid, PRON=%s POS=%s", v136, *v137, *(v137 - 4), v138);
      v140 = crf_mde_utils_dynstr_init(a1, *(v146 + 3) + 80 * v146[8] + 16, 0x20u, 16);
      if ((v140 & 0x80000000) != 0)
      {
        v100 = v140;
        goto LABEL_199;
      }

      v99 = crf_mde_utils_dynstr_add(a1, *(v146 + 3) + 80 * v146[8] + 16, *v169, 2);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_init(a1, *(v146 + 3) + 80 * v146[8] + 32, 0x20u, 16);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_add(a1, *(v146 + 3) + 80 * v146[8] + 32, *v137, 2);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_init(a1, *(v146 + 3) + 80 * v146[8] + 48, 0x20u, 16);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_add(a1, *(v146 + 3) + 80 * v146[8] + 48, v137[2], 2);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_init(a1, *(v146 + 3) + 80 * v146[8], 0x20u, 16);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_add(a1, *(v146 + 3) + 80 * v146[8], *(v137 - 4), 2);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_init(a1, *(v146 + 3) + 80 * v146[8] + 64, 0x20u, 16);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v99 = crf_mde_utils_dynstr_add(a1, *(v146 + 3) + 80 * v146[8] + 64, v137[4], 2);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v100 = 0;
      ++v146[8];
    }

    else
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     pattern [%d] %s : Invalid", v136, *v137);
    }

    ++v136;
    v137 += 10;
    if (v164 == v136)
    {
      goto LABEL_199;
    }
  }
}

uint64_t crf_mde_dump(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, int a5, char **a6, _WORD *a7)
{
  if (!a5)
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s:", a2);
  if (!a4)
  {
    return 0;
  }

  v12 = 0;
  v40 = a4;
  v41 = a6;
  v42 = a7;
  while (1)
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "nbest[%d]", v12);
    strcpy(*a6, "MSD: ");
    v13 = *(a3 + 8 * v12);
    v14 = *v13;
    if (*v13)
    {
      v15 = 0;
      v16 = (*(v13 + 1) + 28);
      do
      {
        v17 = *v16;
        v16 += 12;
        if (!v17)
        {
          v15 = 1;
        }

        --v14;
      }

      while (v14);
      if (v15 != 1)
      {
        break;
      }

      result = crf_mde_utils_add2Str(a1, a6, a7, " !! ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = *(a3 + 8 * v12);
      if (*v13)
      {
        break;
      }
    }

LABEL_18:
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", *a6);
    v22 = *(*(a3 + 8 * v12) + 32) - 1;
    if (v22 <= 4)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, off_1E81A4200[v22], 0);
    }

    v23 = *(a3 + 8 * v12);
    if (*v23)
    {
      v24 = 0;
      do
      {
        v25 = *(v23 + 1) + 48 * v24;
        v26 = "   ";
        if (!*(v25 + 28))
        {
          v26 = "!! ";
        }

        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s %s", v26, *v25);
        v23 = *(a3 + 8 * v12);
        v27 = *(v23 + 1);
        if (*(v27 + 48 * v24 + 8))
        {
          v28 = 0;
          v29 = 0;
          do
          {
            v30 = *(v27 + 48 * v24 + 16) + v28;
            v31 = " ISAffix";
            if (*v30 != 2)
            {
              v31 = "";
            }

            v32 = *(v30 + 8);
            v33 = *(v30 + 16);
            if (v32)
            {
              v34 = " POS:";
            }

            else
            {
              v34 = "";
            }

            if (!v32)
            {
              v32 = "";
            }

            v35 = " PHON:";
            if (!v33)
            {
              v35 = "";
              v33 = "";
            }

            v36 = *(v30 + 24);
            v37 = " FEAT:";
            if (!v36)
            {
              v37 = "";
              v36 = "";
            }

            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     %s%s%s%s%s%s%s", v31, v34, v32, v35, v33, v37, v36);
            v23 = *(a3 + 8 * v12);
            ++v29;
            v27 = *(v23 + 1);
            v28 += 32;
          }

          while (v29 < *(v27 + 48 * v24 + 8));
        }

        ++v24;
      }

      while (v24 < *v23);
    }

    if (v23[8])
    {
      v38 = 0;
      v39 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "    solution[%d]", v39);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpat:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 32));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpatPOS:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 48));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      wordPOS:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 16));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      pron:%s", *(*(*(a3 + 8 * v12) + 24) + v38));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      feat:%s", *(*(*(a3 + 8 * v12) + 24) + v38 + 64));
        ++v39;
        v38 += 80;
      }

      while (v39 < *(*(a3 + 8 * v12) + 16));
    }

    ++v12;
    a6 = v41;
    a7 = v42;
    if (v12 == v40)
    {
      return 0;
    }
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    result = crf_mde_utils_add2Str(a1, a6, a7, *(*(v13 + 1) + v19));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v13 = *(a3 + 8 * v12);
    v21 = *v13;
    if (v20 + 1 < v21)
    {
      result = crf_mde_utils_add2Str(a1, a6, a7, " | ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = *(a3 + 8 * v12);
      v21 = *v13;
    }

    ++v20;
    v19 += 48;
    if (v20 >= v21)
    {
      goto LABEL_18;
    }
  }
}

char *dynamic_strcat(char **a1, const char *a2, size_t *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = strlen(*a1);
  v10 = strlen(a2) + v9;
  if (v10 >= *a3)
  {
    v11 = v10 + 128;
    result = heap_Realloc(a4, v8, (v10 + 128));
    if (!result)
    {
      return result;
    }

    v8 = result;
    *a1 = result;
    *a3 = v11;
  }

  return strcat(v8, a2);
}

char *dynamic_strncat(char **a1, const char *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = *a1;
  v11 = strlen(*a1) + a3;
  if (v11 >= *a4)
  {
    v12 = v11 + 128;
    result = heap_Realloc(a5, v10, (v11 + 128));
    if (!result)
    {
      return result;
    }

    v10 = result;
    *a1 = result;
    *a4 = v12;
  }

  return strncat(v10, a2, a3);
}

uint64_t fe_oneword_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v5 = 2310021130;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  if (!a5)
  {
    return 2310021127;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v54);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v54 + 8), 1, 2288);
  v13 = v54;
  if (!v12)
  {
    log_OutPublic(*(v54 + 32), "FE_ONEWORD", 34000, 0);
    return v5;
  }

  v14 = v12;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  *v12 = v13;
  v12[1] = a1;
  v15 = heap_Calloc(*(v13 + 8), 1, 1040);
  *(v14 + 48) = v15;
  if (!v15)
  {
LABEL_52:
    v30 = v54;
LABEL_53:
    log_OutPublic(*(v30 + 32), "FE_ONEWORD", 34000, 0);
LABEL_64:
    fe_oneword_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  *v15 = a3;
  v15[1] = a4;
  Object = objc_GetObject(*(v54 + 48), "LINGDB", &v53);
  if ((Object & 0x80000000) != 0 || (*(v14 + 56) = *(v53 + 8), Object = objc_GetObject(*(v54 + 48), "FE_DCTLKP", &v52), (Object & 0x80000000) != 0) || (v17 = v52, *(v14 + 80) = *(v52 + 8), *(v14 + 64) = *(v17 + 16), Object = objc_GetObject(*(v54 + 48), "FE_DEPES", &v51), (Object & 0x80000000) != 0) || (v18 = v51, *(v14 + 104) = *(v51 + 8), *(v14 + 88) = *(v18 + 16), Object = objc_GetObject(*(v54 + 48), "CLMOBJECT", &v50), (Object & 0x80000000) != 0) || (v19 = v50, *(v14 + 128) = *(v50 + 8), *(v14 + 112) = *(v19 + 16), Object = objc_GetObject(*(v54 + 48), "PHONMAP", &v49), (Object & 0x80000000) != 0))
  {
LABEL_63:
    v5 = Object;
    goto LABEL_64;
  }

  v20 = v49;
  *(v14 + 152) = *(v49 + 8);
  *(v14 + 136) = *(v20 + 16);
  inited = checkStatCOMP(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 2000));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkSkipCrosstoken(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 936));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkFeOneWordCLM(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 940));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkParaDCT(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 1996));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = oneword_posparser_Open(v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v21 = *(v14 + 2176);
  if (v21)
  {
    heap_Free(*(*v14 + 8), v21);
  }

  *(v14 + 2176) = 0;
  inited = hlp_setKeyword(*v14, *(v14 + 64), *(v14 + 72), *(v14 + 80), "feoneword_latinPOStag", (v14 + 2176));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v22 = *(v14 + 2184);
  if (v22)
  {
    heap_Free(*(*v14 + 8), v22);
  }

  *(v14 + 2184) = 0;
  inited = hlp_setKeyword(*v14, *(v14 + 64), *(v14 + 72), *(v14 + 80), "feoneword_latin2enx", (v14 + 2184));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v14 + 2168) = 0;
  inited = crf_mde_seg_load(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *v14, *(v14 + 8), *(v14 + 64), *(v14 + 72), *(v14 + 80), v14 + 2016, (v14 + 2168));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v14 + 2192) = 0;
  if (!*(v14 + 2168))
  {
    Object = com_mosynt_UseMosynt(*(v14 + 64), *(v14 + 72), *(v14 + 80), (v14 + 2192));
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_63;
    }

    if (*(v14 + 2192))
    {
      LODWORD(v44) = 1;
      Object = hlp_GetParams(v14, (v14 + 2248), &v44);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = wgram_LoadData(a3, a4, *(v14 + 32), *(v14 + 40), (v14 + 2232));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kbsymtab_LoadData(a3, a4, *(v14 + 32), *(v14 + 40), (v14 + 2200), v44);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = fst_LoadData(a3, a4, (v14 + 2240));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v14 + 1228, *(v14 + 64), *(v14 + 72), *(v14 + 80), 0, (v14 + 2208));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v14 + 1228, *(v14 + 64), *(v14 + 72), *(v14 + 80), 1u, (v14 + 2216));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v14 + 1228, *(v14 + 64), *(v14 + 72), *(v14 + 80), 2u, (v14 + 2224));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }
    }
  }

  *a5 = v14;
  *(a5 + 8) = 62340;
  Object = (*(*(v14 + 80) + 88))(*(v14 + 64), *(v14 + 72), &v48 + 4, &v48);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v23 = v48 == 1 && HIDWORD(v48) == 1;
  v24 = v23;
  *(v14 + 560) = v24;
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0u;
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0;
  *(v14 + 232) = 0u;
  *(v14 + 248) = 0u;
  *(v14 + 264) = 0;
  *(v14 + 556) = 1;
  *(v14 + 568) = 0;
  Object = paramc_ParamGet(*(*v14 + 40), "langcode", (v14 + 1208), 0);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v25 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 160) = v25;
  if (!v25)
  {
    goto LABEL_66;
  }

  *(v14 + 192) = 128;
  v26 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 168) = v26;
  if (!v26)
  {
    goto LABEL_66;
  }

  *(v14 + 200) = 128;
  v27 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 176) = v27;
  if (!v27)
  {
    goto LABEL_66;
  }

  *(v14 + 208) = 128;
  v28 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 184) = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  *(v14 + 216) = 128;
  v29 = heap_Alloc(*(*v14 + 8), 128);
  *(v14 + 232) = v29;
  v30 = *v14;
  if (!v29)
  {
    goto LABEL_53;
  }

  v31 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 240) = v31;
  v30 = *v14;
  if (!v31)
  {
    goto LABEL_53;
  }

  v32 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 248) = v32;
  v30 = *v14;
  if (!v32)
  {
    goto LABEL_53;
  }

  v33 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 256) = v33;
  v30 = *v14;
  if (!v33)
  {
    goto LABEL_53;
  }

  v34 = heap_Alloc(*(v30 + 8), 128);
  *(v14 + 264) = v34;
  if (!v34)
  {
LABEL_66:
    v30 = *v14;
    goto LABEL_53;
  }

  strcpy((v14 + 300), "normal");
  Object = oneword_GetMdeSettings(v14, "normal");
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  Object = hlp_GetPart(v14);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v35 = *(*v14 + 8);
  *&v44 = ssftmap_ElemCopyString;
  *(&v44 + 1) = ssftmap_ElemFreeString;
  v45 = ssftmap_ElemCompareKeysString;
  v46 = stringmap_loc_ElemCopyPtr;
  v47 = stringmap_loc_ElemFreeNoOp;
  Object = ssftmap_ObjOpen(v35, 0, &v44, (v14 + 568));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  *(v14 + 856) = heap_Alloc;
  *(v14 + 864) = heap_Calloc;
  *(v14 + 872) = heap_Realloc;
  *(v14 + 880) = heap_Free;
  v36 = OOCAllocator_Con(v14 + 888, (v14 + 856), *(*v14 + 8));
  v37 = LH_ERROR_to_VERROR(v36);
  v38 = *v14;
  if ((v37 & 0x80000000) != 0)
  {
    v43 = v37;
    log_OutPublic(*(v38 + 32), "FE_ONEWORD", 34004, 0);
    v5 = v43;
    goto LABEL_64;
  }

  v39 = heap_Alloc(*(v38 + 8), 64);
  *(v14 + 2256) = v39;
  if (!v39)
  {
    goto LABEL_52;
  }

  *v39 = 0;
  v40 = heap_Alloc(*(*v14 + 8), 64);
  *(v14 + 2264) = v40;
  if (!v40)
  {
    goto LABEL_52;
  }

  *v40 = 0;
  v41 = heap_Alloc(*(*v14 + 8), 16);
  *(v14 + 2280) = v41;
  if (!v41)
  {
    goto LABEL_52;
  }

  *v41 = 0;
  v5 = hlp_common_ObjOpenReopen(v14);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  return v5;
}

uint64_t checkStatCOMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkFeOneWordCLM(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_clm", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkParaDCT(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_parallel", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t hlp_setKeyword(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  memset(__c, 0, sizeof(__c));
  *a6 = 0;
  v8 = (*(a4 + 96))(a2, a3, "fecfg", a5, &__c[3], &__c[1], __c);
  result = 0;
  if ((v8 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v11 = **&__c[3];
    v12 = strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
      v11 = **&__c[3];
    }

    v13 = strlen(v11);
    v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
    *a6 = v14;
    if (v14)
    {
      strcpy(v14, **&__c[3]);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }
  }

  return result;
}

uint64_t hlp_GetParams(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_usesubmorphana", "yes", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    return CfgParamVal;
  }

  *a2 = strcmp(__s1, "yes") == 0;
  v7 = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((v7 & 0x80000000) == 0)
  {
    *a3 = strcmp(__s1, "yes") == 0;
  }

  return v7;
}

uint64_t hlp_GetPart(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nrpart_g2p", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1])
  {
    v3 = **&__c[3];
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v3 = **&__c[3];
    }

    *(a1 + 556) = atoi(v3);
  }

  return v2;
}

uint64_t hlp_common_ObjOpenReopen(uint64_t a1)
{
  v23 = -1;
  __s1 = 0;
  v15 = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  DTData = hlp_LoadDTData(a1);
  if ((DTData & 0x80000000) != 0)
  {
    return DTData;
  }

  v22 = 0;
  v16 = 0;
  DTData = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "esctn", &v16, &v23, &v22);
  if ((DTData & 0x80000000) != 0)
  {
    return DTData;
  }

  if (v23)
  {
    v3 = *(a1 + 1216);
    v4 = strlen(*v16) + 1;
    v5 = *(*a1 + 8);
    if (v3)
    {
      v6 = heap_Realloc(v5, v3, v4);
      if (v6)
      {
LABEL_6:
        *(a1 + 1216) = v6;
        strcpy(v6, *v16);
        *(*(a1 + 1216) + strlen(*v16) - 1) = 124;
        goto LABEL_7;
      }
    }

    else
    {
      v6 = heap_Alloc(v5, v4);
      if (v6)
      {
        goto LABEL_6;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

LABEL_7:
  *(a1 + 1224) = 1;
  v20 = 0;
  v21 = 0;
  v19 = 7352935;
  v7 = (a1 + 1327);
  v8 = -223;
  while (1)
  {
    LH_itoa(v8 + 256, __s, 0xAu);
    strlen(__s);
    __memcpy_chk();
    v23 = -1;
    v9 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", &v19, &v16, &v23, &v22);
    if ((v9 & 0x80000000) != 0)
    {
      break;
    }

    if (v23)
    {
      *v7 = 0;
      v10 = strlen(*v16);
      strncat(v7, *v16, v10 - 1);
    }

    else
    {
      *(a1 + 1224) = 0;
    }

    if (!__CFADD__(v8++, 1))
    {
      v7 += 3;
      if (*(a1 + 1224))
      {
        continue;
      }
    }

    *(a1 + 2272) = 0;
    if ((com_mosynt_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_enable_POIenhancement", "no", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 2272) = strcmp(__s1, "yes") == 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "enablePOIenhancement", &v15) & 0x80000000) == 0)
    {
      v12 = v15;
      v13 = !strcmp(v15, "yes") || strcmp(v12, "YES") == 0;
      *(a1 + 2272) = v13;
    }

    *(a1 + 2276) = 1;
    if ((com_mosynt_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_MW_replace_spaces_with_underscores", "yes", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 2276) = strcmp(__s1, "yes") == 0;
    }

    return v9;
  }

  return v9;
}

uint64_t fe_oneword_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (a1)
  {
    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    if (a1[13])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[19])
    {
      objc_ReleaseObject(*(*a1 + 48), "PHONMAP");
    }

    if (a1[16])
    {
      objc_ReleaseObject(*(*a1 + 48), "CLMOBJECT");
    }

    oneword_posparser_Close(a1, v4, v5);
    v6 = a1[272];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    a1[272] = 0;
    v7 = a1[273];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    a1[273] = 0;
    if (*(a1 + 542) == 1)
    {
      crf_mde_seg_unload(*a1, a1[1], (a1 + 252));
      *(a1 + 542) = 0;
    }

    v8 = a1[20];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    a1[20] = 0;
    a1[24] = 0;
    v9 = a1[21];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    a1[21] = 0;
    a1[25] = 0;
    v10 = a1[22];
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
    }

    a1[22] = 0;
    a1[26] = 0;
    v11 = a1[23];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    a1[23] = 0;
    a1[27] = 0;
    v12 = a1[29];
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    a1[29] = 0;
    v13 = a1[30];
    if (v13)
    {
      heap_Free(*(*a1 + 8), v13);
    }

    a1[30] = 0;
    v14 = a1[31];
    if (v14)
    {
      heap_Free(*(*a1 + 8), v14);
    }

    a1[31] = 0;
    v15 = a1[32];
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    a1[32] = 0;
    v16 = a1[33];
    if (v16)
    {
      heap_Free(*(*a1 + 8), v16);
    }

    a1[33] = 0;
    v17 = a1[152];
    if (v17)
    {
      heap_Free(*(*a1 + 8), v17);
    }

    a1[152] = 0;
    if (a1[71])
    {
      hlp_UnLoadDTData(a1);
      ssftmap_ObjClose(a1[71]);
    }

    if (a1[275])
    {
      kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275);
    }

    if (a1[279])
    {
      wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
    }

    if (a1[280])
    {
      fst_UnloadData(a1[2], a1[3], a1 + 280);
    }

    v18 = a1[276];
    if (v18)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v18);
    }

    v19 = a1[277];
    if (v19)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v19);
    }

    v20 = a1[278];
    if (v20)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v20);
    }

    v21 = a1[6];
    if (v21)
    {
      heap_Free(*(*a1 + 8), v21);
    }

    v22 = a1[282];
    if (v22)
    {
      heap_Free(*(*a1 + 8), v22);
    }

    v23 = a1[283];
    if (v23)
    {
      heap_Free(*(*a1 + 8), v23);
    }

    v24 = a1[285];
    if (v24)
    {
      heap_Free(*(*a1 + 8), v24);
      a1[285] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_UnLoadDTData(uint64_t *a1)
{
  v15[100] = *MEMORY[0x1E69E9840];
  v14 = 0;
  bzero(v15, 0x320uLL);
  if ((ssftmap_IteratorOpen(a1[71], 0, 1, &v14) & 0x80000000) != 0)
  {
    return ssftmap_Clear(a1[71]);
  }

  v12 = 0;
  v13 = 0;
  if ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) != 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  LOBYTE(v2) = 0;
  do
  {
    if (!v2)
    {
      v3 = 0;
LABEL_11:
      LOBYTE(v2) = v2 + 1;
      v15[v3] = v12;
      continue;
    }

    v3 = v2;
    v4 = v15;
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v5 >= v2)
      {
        break;
      }

      ++v5;
    }

    while (v6 != v12);
    if (v6 != v12)
    {
      goto LABEL_11;
    }
  }

  while ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) == 0);
  v2 = v2;
LABEL_16:
  ssftmap_IteratorClose(v14);
  result = ssftmap_Clear(a1[71]);
  if (v2)
  {
    v9 = v2;
    v10 = v15;
    do
    {
      v11 = *v10++;
      OOC_PlacementDeleteObject((a1 + 111), *(v11 + 16));
      ssftriff_reader_ReleaseChunkData(*v11);
      result = heap_Free(*(*a1 + 8), v11);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t fe_oneword_ObjReopen(void *a1, int a2)
{
  v21 = 0;
  v20 = 0;
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (!a1)
  {
    return result;
  }

  result = (*(a1[10] + 88))(a1[8], a1[9], &v21, &v20);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v4 = v20 == 1 && v21 == 1;
  v5 = v4;
  *(a1 + 140) = v5;
  *(a1 + 556) = 1;
  result = checkStatCOMP(a1[8], a1[9], a1[10], a1 + 500);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkSkipCrosstoken(a1[8], a1[9], a1[10], a1 + 234);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkFeOneWordCLM(a1[8], a1[9], a1[10], a1 + 235);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkParaDCT(a1[8], a1[9], a1[10], a1 + 499);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = oneword_posparser_Reopen(a1, v6, v7);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v8 = a1[272];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  a1[272] = 0;
  result = hlp_setKeyword(*a1, a1[8], a1[9], a1[10], "feoneword_latinPOStag", a1 + 272);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = a1[273];
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  a1[273] = 0;
  result = hlp_setKeyword(*a1, a1[8], a1[9], a1[10], "feoneword_latin2enx", a1 + 273);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a1 + 542) == 1)
  {
    crf_mde_seg_unload(*a1, a1[1], (a1 + 252));
  }

  *(a1 + 542) = 0;
  result = crf_mde_seg_load(a1[2], a1[3], a1[4], a1[5], *a1, a1[1], a1[8], a1[9], a1[10], (a1 + 252), a1 + 542);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = (a1 + 274);
  v11 = *(a1 + 548);
  result = com_mosynt_UseMosynt(a1[8], a1[9], a1[10], a1 + 548);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v12 = *v10;
  if (v11 != 1)
  {
    if (v12 == 1)
    {
      v19 = 1;
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  if (v12 != 1)
  {
    if (v12)
    {
      goto LABEL_64;
    }

    if (a1[275])
    {
      result = kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275);
      a1[275] = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (a1[279])
    {
      result = wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
      a1[279] = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (a1[280])
    {
      result = fst_UnloadData(a1[2], a1[3], a1 + 280);
      a1[280] = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v13 = a1[276];
    if (v13)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v13);
      a1[276] = 0;
    }

    v14 = a1[277];
    if (v14)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v14);
      a1[277] = 0;
    }

    v15 = a1[278];
    if (v15)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v15);
      a1[278] = 0;
    }

    if (*v10 != 1)
    {
LABEL_64:
      strcpy(a1 + 300, "normal");
      result = oneword_GetMdeSettings(a1, "normal");
      if ((result & 0x80000000) == 0)
      {
        result = hlp_GetPart(a1);
        if ((result & 0x80000000) == 0)
        {
          hlp_UnLoadDTData(a1);
          return hlp_common_ObjOpenReopen(a1);
        }
      }

      return result;
    }
  }

  v19 = 1;
  if (!a1[275] || (result = kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275), a1[275] = 0, (result & 0x80000000) == 0))
  {
    if (!a1[279] || (result = wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279), a1[279] = 0, (result & 0x80000000) == 0))
    {
      if (!a1[280] || (result = fst_UnloadData(a1[2], a1[3], a1 + 280), a1[280] = 0, (result & 0x80000000) == 0))
      {
        v16 = a1[276];
        if (v16)
        {
          kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v16);
          a1[276] = 0;
        }

        v17 = a1[277];
        if (v17)
        {
          kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v17);
          a1[277] = 0;
        }

        v18 = a1[278];
        if (v18)
        {
          kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v18);
          a1[278] = 0;
        }

LABEL_57:
        result = hlp_GetParams(a1, a1 + 562, &v19);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = wgram_LoadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kbsymtab_LoadData(a1[2], a1[3], a1[4], a1[5], a1 + 275, v19);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = fst_LoadData(a1[2], a1[3], a1 + 280);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(a1[2], a1[3], a1[4], a1[5], a1 + 1228, a1[8], a1[9], a1[10], 0, a1 + 276);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(a1[2], a1[3], a1[4], a1[5], a1 + 1228, a1[8], a1[9], a1[10], 1u, a1 + 277);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(a1[2], a1[3], a1[4], a1[5], a1 + 1228, a1[8], a1[9], a1[10], 2u, a1 + 278);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_64;
      }
    }
  }

  return result;
}

uint64_t fe_oneword_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (*(a1 + 2004))
  {

    return oneword_posparser_Start(a1);
  }

  return result;
}

uint64_t fe_oneword_MosyntGetMosyntParamVal(void *a1, uint64_t a2, char *__src, char *__dst, int a5)
{
  v16 = 0;
  v15 = -1;
  v14 = 0;
  v12 = 0;
  strcpy(__dst, __src);
  TermSubstr = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", a2, &v16, &v15, &v14);
  if ((TermSubstr & 0x80000000) == 0)
  {
    if (v15)
    {
      v13 = 0;
      TermSubstr = mosynt_GetTermSubstr(*v16, &v13, v14, &v12, __dst, a5);
      if ((TermSubstr & 0x80000000) == 0 && !v12)
      {
        strcpy(__dst, __src);
      }
    }
  }

  return TermSubstr;
}

const char *hlp_FindWordSep(const char *a1, unsigned int a2, unsigned int a3)
{
  v6 = strlen(a1);
  v7 = a3;
  if (v6 < a3)
  {
    v7 = v6;
  }

  if (v7 <= a2)
  {
    return 0;
  }

  v8 = v7 - a2;
  for (result = &a1[a2]; ; ++result)
  {
    v10 = *result;
    if (v10 == 32 || v10 == 95)
    {
      break;
    }

    if (!--v8)
    {
      return 0;
    }
  }

  return result;
}

uint64_t hlp_ShouldAddAsVariant(const char *a1, char *a2, char *__s2)
{
  result = strcmp(a1, __s2);
  if (result)
  {
    v6 = strstr(a2, __s2);
    if (!v6)
    {
      return 1;
    }

    v7 = v6;
    v8 = a2;
    while (1)
    {
      if (v7 == a2 || *(v7 - 1) != 18)
      {
        v9 = strlen(__s2);
        if (v8[v9])
        {
          v10 = v8[v9] == 18;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      else
      {
        v9 = strlen(__s2);
      }

      v8 = &v7[v9];
      v7 = strstr(&v7[v9], __s2);
      if (!v7)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t fe_oneword_SplitMW(void *a1, uint64_t a2, uint64_t a3)
{
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v73 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v89 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, HIWORD(v89), 0, &v82, &v86 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v89), &v89);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v89;
    if (v89)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (*(a1[7] + 168))(a2, a3, v8, 0, 1, &v87 + 4, &v86 + 2);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_119:
          v7 = v13;
LABEL_120:
          if (!v11)
          {
            goto LABEL_122;
          }

          goto LABEL_121;
        }

        if (HIDWORD(v87) == 4)
        {
          if (v11)
          {
            *v11 = 0;
          }

          if (v10)
          {
            *v10 = 0;
          }

          v13 = (*(a1[7] + 176))(a2, a3, v89, 3, &v85, &v86 + 2);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_119;
          }

          PhonWordSep = oneword_FindPhonWordSep(v85, &v78);
          if (PhonWordSep)
          {
            v15 = PhonWordSep;
            v13 = (*(a1[7] + 168))(a2, a3, v89, 1, 1, &v81 + 2, &v86 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            v13 = (*(a1[7] + 168))(a2, a3, v89, 2, 1, &v80 + 2, &v86 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            v16 = v82;
            v17 = HIWORD(v80);
            WordSep = hlp_FindWordSep(v82, HIWORD(v81), HIWORD(v80));
            if (WordSep)
            {
              break;
            }
          }
        }

LABEL_114:
        v7 = (*(a1[7] + 120))(a2, a3, v89, &v89);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v89;
          if (v89)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

      __s = 0;
      LOWORD(v80) = v17;
      HIWORD(v80) = WordSep - v16;
      v13 = (*(a1[7] + 160))(a2, a3, v89, 2, 1, &v80 + 2, &v86);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_119;
      }

      v79 = HIWORD(v80) + 1;
      if (((*(a1[7] + 184))(a2, a3, v89, 11, &v73) & 0x80000000) != 0 || v73 != 1 || ((*(a1[7] + 176))(a2, a3, v89, 11, &__s, &v86 + 2) & 0x80000000) != 0)
      {
        v71 = v11;
LABEL_68:
        v42 = v15;
        *v15 = 0;
        v43 = v78;
        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 5, &v83, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v45 = v83;
        v46 = strchr(v83, 92);
        if (v46)
        {
          *v46 = 0;
          v45 = v46 + 1;
        }

        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 6, &v84, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 9, &v76, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 4, &v75, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        WordDctBeforOrAfter = (*(a1[7] + 168))(a2, a3, v89, 7, 1, &v74 + 2, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v68 = v9;
        v47 = (*(a1[7] + 184))(a2, a3, v89, 17, &v73) >= 0 && v73 == 1;
        v48 = v47;
        if (v47)
        {
          WordDctBeforOrAfter = (*(a1[7] + 168))(a2, a3, v89, 17, 1, &v74, &v86 + 2);
          if ((WordDctBeforOrAfter & 0x80000000) != 0)
          {
            goto LABEL_125;
          }
        }

        __s1a = v10;
        v77 = 0;
        v49 = (*(a1[7] + 184))(a2, a3, v89, 12, &v73) >= 0 && v73 == 1;
        v50 = v49;
        if (v49)
        {
          v51 = (*(a1[7] + 176))(a2, a3, v89, 12, &v77, &v86 + 2);
          if ((v51 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }
        }

        v52 = v89;
        v88 = v89;
        if (v89)
        {
          v53 = &v74;
          if (!v48)
          {
            v53 = 0;
          }

          __s2a = v53;
          while (1)
          {
            v12 = v52;
            v51 = (*(a1[7] + 168))(a2, a3, v52, 1, 1, &v81, &v86 + 2);
            if ((v51 & 0x80000000) != 0)
            {
              break;
            }

            v51 = (*(a1[7] + 168))(a2, a3, v88, 0, 1, &v87, &v86 + 2);
            if ((v51 & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v80) + 1 < v81 || v81 >= HIWORD(v80) && v87 == 16)
            {
              v56 = v77;
              if (!v50)
              {
                v56 = 0;
              }

              v10 = __s1a;
              WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 1, v88, &v79, &v80, &v42[v43], __s1a, v45, v84, v76, v75, &v74 + 2, __s2a, v56);
              goto LABEL_112;
            }

            v51 = (*(a1[7] + 120))(a2, a3, v88, &v88);
            if ((v51 & 0x80000000) != 0)
            {
              break;
            }

            v52 = v88;
            if (!v88)
            {
              goto LABEL_104;
            }
          }

LABEL_124:
          v7 = v51;
          v10 = __s1a;
LABEL_126:
          v11 = v71;
          if (!v71)
          {
LABEL_122:
            if (v10)
            {
              heap_Free(*(*a1 + 8), v10);
            }

            return v7;
          }

LABEL_121:
          heap_Free(*(*a1 + 8), v11);
          goto LABEL_122;
        }

LABEL_104:
        v54 = &v74;
        if (!v48)
        {
          v54 = 0;
        }

        v55 = v77;
        if (!v50)
        {
          v55 = 0;
        }

        v10 = __s1a;
        WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 0, v12, &v79, &v80, &v42[v43], __s1a, v45, v84, v76, v75, &v74 + 2, v54, v55);
LABEL_112:
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
LABEL_125:
          v7 = WordDctBeforOrAfter;
          goto LABEL_126;
        }

        v9 = v68;
        v11 = v71;
        goto LABEL_114;
      }

      v64 = v15;
      if (v11 | v10)
      {
        v22 = __s;
        v23 = strlen(__s) + 1;
        if (v23 <= v9)
        {
          goto LABEL_27;
        }

        v11 = heap_Realloc(*(*a1 + 8), v11, v23);
        v24 = strlen(__s);
        v21 = heap_Realloc(*(*a1 + 8), v10, v24 + 1);
      }

      else
      {
        v19 = strlen(__s);
        v11 = heap_Alloc(*(*a1 + 8), v19 + 1);
        v20 = strlen(__s);
        v21 = heap_Alloc(*(*a1 + 8), v20 + 1);
      }

      v10 = v21;
      v22 = __s;
      v9 = strlen(__s) + 1;
LABEL_27:
      v7 = 2310021130;
      if (!v11 || !v10)
      {
        goto LABEL_120;
      }

      v25 = v85;
      v71 = v11;
      if (v85 && v22 && strlen(v22) + 1 <= v9)
      {
        v90[0] = 0;
        *v11 = 0;
        *v10 = 0;
        v26 = strlen(v25);
        v27 = oneword_CountPhoneticWords(v25, &v25[v26]);
        v28 = oneword_FindPhonWordSep(v25, v90);
        __s1 = v10;
        v67 = v9;
        v63 = v25;
        if (v28)
        {
          v60 = &v28[v90[0]];
        }

        else
        {
          v60 = 0;
          v28 = &v25[strlen(v25)];
        }

        v58 = *v28;
        v59 = v28;
        *v28 = 0;
        v29 = strlen(v22);
        if (v29)
        {
          v30 = v29;
          v32 = v27 == 2 && v60 != 0;
          v61 = v32;
          v62 = v27;
          do
          {
            v33 = strchr(v22, 18);
            if (v33)
            {
              v34 = v33;
            }

            else
            {
              v34 = &v22[v30];
            }

            v35 = oneword_CountPhoneticWords(v22, v34);
            v36 = *v34;
            if (v27 == v35)
            {
              *v34 = 0;
              v37 = oneword_FindPhonWordSep(v22, v90);
              if (v37)
              {
                v38 = v37;
                __s2 = &v37[v90[0]];
              }

              else
              {
                v90[0] = 0;
                __s2 = 0;
                v38 = &v22[strlen(v22)];
              }

              v39 = *v38;
              *v38 = 0;
              v11 = v71;
              if (hlp_ShouldAddAsVariant(v63, v71, v22))
              {
                if (*v71)
                {
                  *&v71[strlen(v71)] = 18;
                }

                strcat(v71, v22);
              }

              *v38 = v39;
              v40 = v90[0];
              if (v38[v90[0]])
              {
                v41 = v61;
                if (!__s2)
                {
                  v41 = 0;
                }

                if (!v41 || hlp_ShouldAddAsVariant(v60, __s1, __s2))
                {
                  if (*__s1)
                  {
                    *&__s1[strlen(__s1)] = 18;
                    v40 = v90[0];
                  }

                  strcat(__s1, &v38[v40]);
                }
              }

              *v34 = v36;
              v27 = v62;
            }

            if (!v36)
            {
              break;
            }

            v22 = v34 + 1;
            v30 = strlen(v34 + 1);
          }

          while (v30);
        }

        *v59 = v58;
        v10 = __s1;
        v9 = v67;
      }

      else
      {
        *v11 = 0;
        *v10 = 0;
      }

      strcpy(__s, v11);
      v15 = v64;
      goto LABEL_68;
    }
  }

  return v7;
}

uint64_t hlp_CreateWordDctBeforOrAfter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, char *__s, char *a10, char *a11, char *a12, char *a13, uint64_t a14, uint64_t a15, const char *a16)
{
  v31 = 0;
  v22 = 88;
  if (!a4)
  {
    v22 = 80;
  }

  result = (*(*(a1 + 56) + v22))(a2, a3, a5, &v31);
  if ((result & 0x80000000) == 0)
  {
    v32 = 4;
    result = (*(*(a1 + 56) + 160))(a2, a3, v31, 0, 1, &v32, &v31 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, v31, 1, 1, a6, &v31 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, v31, 2, 1, a7, &v31 + 2);
        if ((result & 0x80000000) == 0)
        {
          v24 = strlen(a8);
          result = (*(*(a1 + 56) + 160))(a2, a3, v31, 3, (v24 + 1), a8, &v31 + 2);
          if ((result & 0x80000000) == 0)
          {
            if (!__s || (v25 = strlen(__s)) == 0 || (result = (*(*(a1 + 56) + 160))(a2, a3, v31, 11, (v25 + 1), __s, &v31 + 2), (result & 0x80000000) == 0))
            {
              v26 = strlen(a10);
              result = (*(*(a1 + 56) + 160))(a2, a3, v31, 5, (v26 + 1), a10, &v31 + 2);
              if ((result & 0x80000000) == 0)
              {
                v27 = strlen(a11);
                result = (*(*(a1 + 56) + 160))(a2, a3, v31, 6, (v27 + 1), a11, &v31 + 2);
                if ((result & 0x80000000) == 0)
                {
                  v28 = strlen(a12);
                  result = (*(*(a1 + 56) + 160))(a2, a3, v31, 9, (v28 + 1), a12, &v31 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    v29 = strlen(a13);
                    result = (*(*(a1 + 56) + 160))(a2, a3, v31, 4, (v29 + 1), a13, &v31 + 2);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a2, a3, v31, 7, 1, a14, &v31 + 2);
                      if ((result & 0x80000000) == 0)
                      {
                        if (!a15)
                        {
                          if (!a16)
                          {
                            return result;
                          }

                          goto LABEL_19;
                        }

                        result = (*(*(a1 + 56) + 160))(a2, a3, v31, 17, 1, a15, &v31 + 2);
                        if (a16 && (result & 0x80000000) == 0)
                        {
LABEL_19:
                          v30 = strlen(a16);
                          return (*(*(a1 + 56) + 160))(a2, a3, v31, 12, (v30 + 1), a16, &v31 + 2);
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

  return result;
}

uint64_t fe_oneword_MosyntCleanup(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v46 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v31 = 0;
  __s = 0;
  __s1 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  result = paramc_ParamGetStr(*(*v1 + 40), "langcode", &v28);
  if ((result & 0x80000000) == 0)
  {
    result = fe_oneword_MosyntGetMosyntParamVal(v6, "mosynt_defaultpos_stressed", "XN()", __dst, 200);
    if ((result & 0x80000000) == 0)
    {
      result = fe_oneword_MosyntGetMosyntParamVal(v6, "mosynt_defaultpos_unstressed", "XX()", v39, 200);
      if ((result & 0x80000000) == 0)
      {
        result = fe_oneword_MosyntGetMosyntParamVal(v6, "mosynt_usepkupos", "no", v38, 10);
        if ((result & 0x80000000) == 0)
        {
          v8 = *v38 != 7562617;
          result = (*(*(v6 + 56) + 104))(v5, v3, 1, 0, &v37);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(v6 + 56) + 176))(v5, v3, v37, 0, &v25, &v34 + 2);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(v6 + 56) + 104))(v5, v3, 2, v37, &v36);
              if ((result & 0x80000000) == 0)
              {
                v9 = v36;
                if (v36)
                {
                  v23 = 0;
                  v10 = 0;
                  while (1)
                  {
                    result = (*(*(v6 + 56) + 168))(v5, v3, v9, 0, 1, &v35, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    v11 = v35;
                    if (v35 == 8)
                    {
                      v35 = 9;
                      result = (*(*(v6 + 56) + 160))(v5, v3, v36, 0, 1, &v35, &v34);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v11 = v35;
                    }

                    v12 = v11 > 0xA;
                    v13 = (1 << v11) & 0x610;
                    if (v12 || v13 == 0)
                    {
                      v17 = 0;
                      goto LABEL_63;
                    }

                    result = (*(*(v6 + 56) + 176))(v5, v3, v36, 3, &__s, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = mosynt_SubstAllSubstrOcc(__s, "¡", "~", v45, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = mosynt_SubstAllSubstrOcc(v45, "[SVOX]", "", __s, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    v15 = strlen(__s);
                    result = (*(*(v6 + 56) + 160))(v5, v3, v36, 3, (v15 + 1), __s, &v34);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = (*(*(v6 + 56) + 168))(v5, v3, v36, 1, 1, &v27 + 2, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = (*(*(v6 + 56) + 168))(v5, v3, v36, 2, 1, &v27, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = (*(*(v6 + 56) + 176))(v5, v3, v36, 5, &v30, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = (*(*(v6 + 56) + 176))(v5, v3, v36, 6, &v31, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    if (v35 == 9)
                    {
                      v16 = *v31;
                      if (v16 == 88)
                      {
                        if (v31[1])
                        {
                          goto LABEL_33;
                        }
                      }

                      else
                      {
                        if (v16 != 89 || v31[1])
                        {
LABEL_33:
                          if (HIWORD(v27) < v10 || v27 < v23)
                          {
                            HIWORD(v27) = v10;
                            LOWORD(v27) = v23;
                          }

                          goto LABEL_36;
                        }

                        v10 = HIWORD(v27);
                        v23 = v27;
                      }
                    }

LABEL_36:
                    result = (*(*(v6 + 56) + 176))(v5, v3, v36, 9, &__s1, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    if (!strcmp(__s1, "normal"))
                    {
                      __strcpy_chk();
                      v18 = strlen(v41);
                      result = (*(*(v6 + 56) + 160))(v5, v3, v36, 9, (v18 + 1), v41, &v34);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }
                    }

                    result = (*(*(v6 + 56) + 160))(v5, v3, v36, 1, 1, &v27 + 2, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = (*(*(v6 + 56) + 160))(v5, v3, v36, 2, 1, &v27, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    v33 = 0;
                    result = mosynt_GetTermSubstr(v31, &v33, 0x21u, &v24, v42, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = mosynt_GetTermSubstr(v31, &v33, 0x21u, &v24, v44, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    v17 = *v31 == 89 && v31[1] == 0;
                    v26 = 0;
                    if (!v44[0])
                    {
                      if ((v26 = 1, *v30 == 42) && !v30[1] || (com_mosynt_GetBacktrans2POS(*(v6 + 64), *(v6 + 72), *(v6 + 80), v30, 0x1388u, v44), !v44[0]))
                      {
                        v19 = __s;
                        if (!strchr(__s, 39))
                        {
                          strstr(v19, "'2");
                        }

                        __strcpy_chk();
                      }
                    }

                    if (!v42[0])
                    {
                      strcpy(v42, "*");
                    }

                    if (v44[0] - 48 > 9)
                    {
                      __strcpy_chk();
                    }

                    else
                    {
                      result = mosynt_NumPOSListToPOSList(*(v6 + 48), *(v6 + 2200), v44, v43, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }
                    }

                    if (v8)
                    {
                      v20 = strlen(v43);
                      result = (*(*(v6 + 56) + 160))(v5, v3, v36, 5, (v20 + 1), v43, &v34);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }
                    }

                    v21 = strlen(v42);
                    result = (*(*(v6 + 56) + 160))(v5, v3, v36, 6, (v21 + 1), v42, &v34);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    result = (*(*(v6 + 56) + 160))(v5, v3, v36, 17, 1, &v26, &v34 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

LABEL_63:
                    v22 = v36;
                    result = (*(*(v6 + 56) + 120))(v5, v3, v36, &v36);
                    if ((result & 0x80000000) == 0)
                    {
                      if (!v17 || (result = (*(*(v6 + 56) + 192))(v5, v3, v22), (result & 0x80000000) == 0))
                      {
                        v9 = v36;
                        if (v36)
                        {
                          continue;
                        }
                      }
                    }

                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_oneword_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v273 = *MEMORY[0x1E69E9840];
  v253 = 0;
  __s = 0;
  v9 = 2310021130;
  v251 = 0;
  v248 = 0;
  __src = 0;
  v246 = 0;
  v243 = 0;
  v240 = 0;
  v238 = 0;
  v237 = 1601400688;
  *&__c[1] = -1;
  v234 = 0;
  v235 = 0;
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v252 = 0;
  v250 = 0;
  v249 = 0;
  v247 = 0;
  v244 = 0;
  v242 = 0;
  v241 = 0;
  v239 = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v233 = 0;
  *a5 = 1;
  v10 = (paramc_ParamGet(*(*a1 + 40), "clmvariants", &v233, 0) & 0x80000000) == 0 && LH_stricmp(v233, "no") != 0;
  *(a1 + 844) = v10;
  v12 = (paramc_ParamGetStr(*(*a1 + 40), "clcmlextramaintrans", &v233) & 0x80000000) == 0 && LH_stricmp(v233, "no") && *(a1 + 852) != 0;
  *(a1 + 848) = v12;
  __s1[0] = 0;
  LODWORD(v256[0]) = 0;
  if (((*(*(a1 + 128) + 96))(*(a1 + 112), *(a1 + 120), v256) & 0x80000000) != 0 || !LODWORD(v256[0]))
  {
    Str = paramc_ParamGetStr(*(*a1 + 40), "clm", __s1);
    v15 = 1;
    if ((Str & 0x80000000) == 0 && __s1[0])
    {
      v15 = strcmp(__s1[0], "yes") == 0;
    }

    v13 = (!v15 || *(a1 + 1204) != 1) && *(a1 + 940) != 1;
  }

  else
  {
    v13 = 1;
  }

  if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v233) & 0x80000000) == 0 && v233 && *v233)
  {
    v16 = *(a1 + 2256);
    if (v16 && *v16)
    {
      *v16 = 0;
    }

    v17 = *(a1 + 2264);
    if (v17 && *v17)
    {
      *v17 = 0;
    }
  }

  v18 = *(a1 + 1201);
  *(a1 + 1201) = 1;
  if ((paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &v233, 0) & 0x80000000) == 0 && v233)
  {
    v19 = atoi(v233);
    if (v18 == v19)
    {
      *(a1 + 1201) = v18;
      v20 = *(a1 + 1200);
      if (v20 >= v19)
      {
        LOBYTE(v20) = v18;
      }
    }

    else
    {
      *(a1 + 1201) = v19;
      hlp_UnLoadDTData(a1);
      DTData = hlp_LoadDTData(a1);
      if ((DTData & 0x80000000) != 0)
      {
        return DTData;
      }

      v20 = *(a1 + 1200);
      if (v20 >= *(a1 + 1201))
      {
        LOBYTE(v20) = *(a1 + 1201);
      }
    }

    *(a1 + 1200) = v20;
  }

  v22 = (paramc_ParamGet(*(*a1 + 40), "norichtranscription", &v233, 0) & 0x80000000) == 0 && LH_stricmp(v233, "false") != 0;
  *(a1 + 840) = v22;
  v23 = paramc_ParamGet(*(*a1 + 40), "fecfg", &v233, 0);
  if (*(a1 + 840) && (v23 & 0x80000000) == 0 && LH_stricmp(v233, "mpthree") && LH_stricmp(v233, "mpthreeml") && LH_stricmp(v233, "vadvde"))
  {
    *(a1 + 840) = 0;
  }

  if (ssftmap_GetSize(*(a1 + 568)))
  {
    __s1[0] = 0;
    v256[0] = 0;
    v255[0] = 0;
    v231 = 0;
    v232 = 0;
    v230 = 0;
    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreescorepruning", __s1) & 0x80000000) != 0)
    {
      __s1[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreehistogrampruning", v256) & 0x80000000) != 0)
    {
      v256[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreevariantpruning", v255) & 0x80000000) != 0)
    {
      v255[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "numberoutputtranscriptions", &v232) & 0x80000000) != 0)
    {
      v232 = 0;
    }

    if ((ssftmap_IteratorOpen(*(a1 + 568), 0, 1, &v230) & 0x80000000) == 0)
    {
      v228 = 0;
      v229 = 0;
      while ((ssftmap_IteratorNext(v230, &v229, &v228) & 0x80000000) == 0)
      {
        if (!__s1[0] || (LODWORD(v231) = 1, HIDWORD(v231) = atoi(__s1[0]), v24 = LexDT_SetParamList(*(v228 + 16), &v231, 1u), v25 = LH_ERROR_to_VERROR(v24), (v25 & 0x80000000) == 0))
        {
          if (!v256[0] || (LODWORD(v231) = 2, HIDWORD(v231) = atoi(v256[0]), v26 = LexDT_SetParamList(*(v228 + 16), &v231, 1u), v25 = LH_ERROR_to_VERROR(v26), (v25 & 0x80000000) == 0))
          {
            if (!v255[0] || (LODWORD(v231) = 5, HIDWORD(v231) = atoi(v255[0]), v27 = LexDT_SetParamList(*(v228 + 16), &v231, 1u), v25 = LH_ERROR_to_VERROR(v27), (v25 & 0x80000000) == 0))
            {
              if (!v232)
              {
                continue;
              }

              LODWORD(v231) = 0;
              HIDWORD(v231) = atoi(v232);
              v28 = LexDT_SetParamList(*(v228 + 16), &v231, 1u);
              v25 = LH_ERROR_to_VERROR(v28);
              if ((v25 & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }

        v11 = v25;
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
        return v11;
      }

      ssftmap_IteratorClose(v230);
    }
  }

  if (*(a1 + 2004))
  {
    DTData = oneword_posparser_Process(a1, a3, a4);
    if ((DTData & 0x80000000) != 0)
    {
      return DTData;
    }
  }

  v29 = (a1 + 56);
  v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v252 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (((*(*v29 + 184))(a3, a4, HIWORD(v252), 0, &v240) & 0x80000000) != 0)
  {
    return v11;
  }

  if (v240 != 1)
  {
    return v11;
  }

  v11 = (*(*v29 + 176))(a3, a4, HIWORD(v252), 0, &__s, &v250);
  if ((v11 & 0x80000000) != 0 || v250 < 2u)
  {
    return v11;
  }

  v30 = strlen(__s);
  v31 = heap_Alloc(*(*a1 + 8), (v30 + 1));
  v253 = v31;
  if (!v31)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  strcpy(v31, __s);
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  *__s1 = 0u;
  v258 = 0u;
  HIWORD(v248) = 128;
  v32 = (*(*v29 + 176))(a3, a4, HIWORD(v252), 1, &v244, &v243 + 2);
  if ((v32 & 0x80000000) != 0)
  {
    goto LABEL_101;
  }

  HIWORD(v248) = 0;
  v33 = HIWORD(v243);
  if (HIWORD(v243))
  {
    v34 = 0;
    do
    {
      v35 = v244 + 32 * v34;
      if (*v35 == 34)
      {
        v36 = strchr(*(v35 + 24), 20);
        if (v36)
        {
          *v36 = 0;
          v34 = HIWORD(v248);
          v33 = HIWORD(v243);
        }
      }

      HIWORD(v248) = ++v34;
    }

    while (v34 < v33);
    v37 = v244;
    v38 = *(v244 + 12);
    *(a1 + 224) = 0;
    v225 = (a1 + 224);
    if (v243 < v33)
    {
      v39 = (v37 + 32 * v243 + 12);
      v40 = v33 - v243;
      v41 = v243 + 1;
      do
      {
        v42 = *v39;
        v39 += 8;
        if (v42 != v38)
        {
          break;
        }

        LOWORD(v243) = v41++;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    v38 = *(v244 + 12);
    *(a1 + 224) = 0;
    v225 = (a1 + 224);
  }

  v32 = (*(*(a1 + 104) + 112))(*(a1 + 88), *(a1 + 96), &v241, 0);
  if ((v32 & 0x80000000) != 0 || (*(a1 + 932) = 0, v32 = (*(*(a1 + 56) + 104))(a3, a4, 3, HIWORD(v252), &v252), (v32 & 0x80000000) != 0) || (*&__c[1] = -1, v32 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "normal", &__c[3], &__c[1], __c), (v32 & 0x80000000) != 0))
  {
LABEL_101:
    v46 = 0;
    v47 = 0;
    v9 = v32;
    goto LABEL_102;
  }

  strcpy(v256, "normal");
  if (*&__c[1])
  {
    v43 = strchr(**&__c[3], __c[0]);
    if (v43)
    {
      *v43 = 0;
    }

    __strcpy_chk();
  }

  if (*(a1 + 560) == 1)
  {
    v44 = heap_Calloc(*(*a1 + 8), 1, 352);
    if (!v44)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      v46 = 0;
      v47 = 0;
      goto LABEL_102;
    }

    v216 = v38;
    v45 = *(v244 + 12);
    *(v44 + 12) = v45;
    *v44 = 0x4000;
    *(v44 + 44) = v45;
    *(v44 + 32) = 36;
    *(v44 + 56) = "normal";
    v220 = 10;
    v224 = v44;
    v217 = 2;
  }

  else
  {
    v216 = v38;
    v220 = 0;
    v224 = 0;
    v217 = 0;
  }

  v48 = 78;
  v49 = 1;
  while (v252)
  {
    v50 = (*(*v29 + 168))(a3, a4);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v51 = v242;
    if ((v242 - 5) <= 2)
    {
      v50 = (*(*v29 + 168))(a3, a4, v252, 1, 1, &v248, &v250);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 176))(a3, a4, v252, 4, &v246, &v250);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      if (!strcmp(v246, "phon"))
      {
        v50 = (*(*v29 + 176))(a3, a4, v252, 3, &__src, &v250);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      v52 = v242;
      if (v242 == 5)
      {
        v240 = 0;
        v235 = 0;
        if (((*(*v29 + 184))(a3, a4, v252, 6, &v240) & 0x80000000) == 0 && v240 == 1)
        {
          v50 = (*(*v29 + 176))(a3, a4, v252, 6, &v235, &v250);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        v52 = v242;
      }

      if (v52 == 6)
      {
        v240 = 0;
        v234 = 0;
        if (((*(*v29 + 184))(a3, a4, v252, 7, &v240) & 0x80000000) == 0 && v240 == 1)
        {
          v50 = (*(*v29 + 176))(a3, a4, v252, 7, &v234, &v250);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      v53 = *v29;
      if (v49)
      {
        v50 = (*(v53 + 72))(a3, a4, 2, HIWORD(v252), &v251);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v50 = (*(v53 + 80))(a3, a4, v251, &v251);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 0, 1, &v242, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 1, 1, &v248, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 2, 1, &v247, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v54 = strlen(v246);
      v50 = (*(*v29 + 160))(a3, a4, v251, 4, (v54 + 1), v246, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      if (!strcmp(v246, "phon"))
      {
        if (__src)
        {
          v55 = strlen(__src);
          v50 = (*(*v29 + 160))(a3, a4, v251, 3, (v55 + 1), __src, &v249 + 2);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      v51 = v242;
      if (v242 == 5 && v235)
      {
        v56 = strlen(v235);
        v50 = (*(*v29 + 160))(a3, a4, v251, 9, (v56 + 1), v235, &v249 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v51 = v242;
      }

      v49 = 0;
      if (v51 == 6 && v234)
      {
        v57 = strlen(v234);
        v50 = (*(*v29 + 160))(a3, a4, v251, 19, (v57 + 1), v234, &v249 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v49 = 0;
        v51 = v242;
      }
    }

    v58 = v246;
    if (*(a1 + 560) != 1 || v51 != 5 || v246 == 0)
    {
      goto LABEL_172;
    }

    if (!strcmp(v246, "phon") || !strcmp(v58, "prompt") || !strcmp(v58, "internal-nuance-system-norm"))
    {
LABEL_169:
      v65 = 78;
LABEL_170:
      v66 = v220;
      goto LABEL_171;
    }

    v61 = *(a1 + 1216);
    if (!v61)
    {
      v47 = 0;
      v46 = 0;
      v9 = 2310021126;
      goto LABEL_288;
    }

    v62 = strstr(v61, v58);
    if (!strcmp(v58, "latin"))
    {
      goto LABEL_186;
    }

    if (!strcmp(v58, v256))
    {
      goto LABEL_169;
    }

    if (!v62 || (v63 = strlen(v58), v62[v63] != 124))
    {
LABEL_186:
      v65 = 76;
      goto LABEL_170;
    }

    v64 = v63;
    if (!v63)
    {
      goto LABEL_169;
    }

    LODWORD(v65) = 78;
    v66 = v220;
    do
    {
      v67 = *v58++;
      if (v67 == 95)
      {
        v65 = 76;
      }

      else
      {
        v65 = v65;
      }

      --v64;
    }

    while (v64);
LABEL_171:
    if (v48 != v65)
    {
      v69 = v248;
      if (v248)
      {
        if (v217 >= v66)
        {
          v71 = v66;
          v70 = heap_Realloc(*(*a1 + 8), v224, 32 * v66 + 352);
          if (!v70)
          {
LABEL_507:
            v175 = *a1;
LABEL_508:
            log_OutPublic(*(v175 + 32), "FE_ONEWORD", 34000, 0);
            goto LABEL_509;
          }

          v220 = v71 + 10;
          v69 = v248;
        }

        else
        {
          v70 = v224;
        }

        v224 = v70;
        v72 = v70 + 32 * v217;
        *v72 = 36;
        *(v72 + 12) = *(v244 + 12) + v69;
        v73 = "normal";
        if (v65 == 76)
        {
          v73 = "latin";
        }

        *(v72 + 24) = v73;
        ++v217;
      }

      else if (v65 == 76)
      {
        *(v224 + 56) = "latin";
        v65 = 76;
      }

      else
      {
        *(v224 + 56) = "normal";
      }

      goto LABEL_173;
    }

LABEL_172:
    v65 = v48;
LABEL_173:
    v68 = v252;
    v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
    if ((v50 & 0x80000000) == 0)
    {
      v50 = (*(*v29 + 192))(a3, a4, v68);
      v48 = v65;
      if ((v50 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_286;
  }

  if (*(a1 + 560) == 1)
  {
    v74 = *(a1 + 64);
    v75 = *(a1 + 72);
    v76 = v217;
    v77 = a3;
    v78 = a4;
    v79 = v224;
  }

  else
  {
    v79 = v244;
    v76 = HIWORD(v243);
    v74 = *(a1 + 64);
    v75 = *(a1 + 72);
    v77 = a3;
    v78 = a4;
  }

  v50 = (*(*(a1 + 80) + 56))(v74, v75, v77, v78, v79, v76);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v50 = (*(*v29 + 104))(a3, a4, 3, HIWORD(v252), &v252);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v50 = (*(*v29 + 104))(a3, a4, 2, HIWORD(v252), &v251);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v50 = (*(*v29 + 168))(a3, a4, v251, 1, 1, &v247 + 2, &v250);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  if (HIWORD(v247))
  {
    v50 = (*(*v29 + 88))(a3, a4, v251, &v251);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 168))(a3, a4, v252, 0, 1, &v242, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 168))(a3, a4, v252, 1, 1, &v248, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 160))(a3, a4, v251, 0, 1, &v242, &v249 + 2);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 160))(a3, a4, v251, 1, 1, &v248, &v249 + 2);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 160))(a3, a4, v251, 2, 1, &v247, &v249 + 2);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }
  }

  LOWORD(v248) = 0;
  while (1)
  {
    v80 = *v29;
    if (!v252)
    {
      break;
    }

    v50 = (*(v80 + 168))(a3, a4);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 168))(a3, a4, v252, 1, 1, &v248, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v81 = v251;
    v82 = v248;
    v83 = HIWORD(v247);
    if (v248 > HIWORD(v247) && v251 != 0)
    {
      while (1)
      {
        v85 = v81;
        v50 = (*(*v29 + 120))(a3, a4, v81, &v251);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        if (!v251)
        {
          v87 = strlen(__s);
          v83 = v87;
          HIWORD(v247) = v87;
          v82 = v248;
LABEL_223:
          v81 = v85;
          break;
        }

        v50 = (*(*v29 + 168))(a3, a4);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v83 = HIWORD(v247);
        v81 = v251;
        v82 = v248;
        if (v248 <= HIWORD(v247) || v251 == 0)
        {
          goto LABEL_223;
        }
      }
    }

    if (v82 != v83)
    {
      v251 = v81;
    }

    v50 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 168))(a3, a4, v251, 0, 1, &v241 + 4, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    if (HIDWORD(v241) == 5 && v248 == HIWORD(v247))
    {
      v50 = (*(*v29 + 88))(a3, a4, v251, &v251);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 0, 1, &v242, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 1, 1, &v248, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 2, 1, &v247, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 120))(a3, a4, v251, &v251);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }
    }

    else
    {
      v50 = (*(*v29 + 80))(a3, a4, v251, &v251);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 0, 1, &v242, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 1, 1, &v248, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v50 = (*(*v29 + 160))(a3, a4, v251, 2, 1, &v247, &v249 + 2);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }
    }

    v88 = v252;
    v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
    if ((v50 & 0x80000000) == 0)
    {
      v50 = (*(*v29 + 192))(a3, a4, v88);
      if ((v50 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_286;
  }

  v50 = (*(v80 + 104))(a3, a4, 2, HIWORD(v252), &v252);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v89 = v252;
  *(a1 + 280) = v252;
  LOWORD(v249) = v89;
  if (v89)
  {
    LOWORD(v90) = 0;
    while (1)
    {
      v50 = (*(*v29 + 168))(a3, a4, v89, 0, 1, &v241 + 4, &v250);
      if ((v50 & 0x80000000) != 0)
      {
        break;
      }

      v91 = *v29;
      v92 = v249;
      if (HIDWORD(v241) != 5)
      {
        goto LABEL_267;
      }

      v50 = (*(v91 + 168))(a3, a4, v249, 1, 1, &v248, &v250);
      if ((v50 & 0x80000000) != 0)
      {
        break;
      }

      v90 = v248 <= v90 ? v90 : v248;
      v50 = (*(*v29 + 168))(a3, a4, v249, 2, 1, &v247, &v250);
      if ((v50 & 0x80000000) != 0)
      {
        break;
      }

      v91 = *v29;
      v92 = v249;
      if (v90 < v247)
      {
        v50 = (*(v91 + 176))(a3, a4, v249, 4, &v246, &v250);
        if ((v50 & 0x80000000) != 0)
        {
          break;
        }

        if (!strcmp(v246, "phon"))
        {
          v50 = (*(*v29 + 176))(a3, a4, v249, 3, &__src, &v250);
          if ((v50 & 0x80000000) != 0)
          {
            break;
          }

          v50 = oneword_ConvertPhon(a1, __s, __src, v248, v247, a3, a4, &v252, v244, &v243, &v243 + 1, v216);
          if ((v50 & 0x80000000) != 0)
          {
            break;
          }
        }

        else
        {
          v240 = 0;
          v94 = (*(*(a1 + 56) + 184))(a3, a4, v249, 9, &v240) >= 0 && v240 == 1;
          v50 = oneword_G2PLookup(a1, &v253, v90, &v247, v246, a3, a4, &v252, v244, &v243, &v243 + 1, v216, v94);
          if (v247 > v90)
          {
            LOWORD(v90) = v247;
          }

          if ((v50 & 0x80000000) != 0)
          {
            break;
          }
        }

        LOWORD(v249) = v252;
      }

      else
      {
LABEL_267:
        v50 = (*(v91 + 120))(a3, a4, v92, &v249);
        if ((v50 & 0x80000000) != 0)
        {
          break;
        }
      }

      if (v252)
      {
        LOWORD(v89) = v249;
        if (v249)
        {
          continue;
        }
      }

      goto LABEL_274;
    }

LABEL_286:
    v47 = 0;
    v46 = 0;
LABEL_287:
    v9 = v50;
    goto LABEL_288;
  }

LABEL_274:
  v95 = *v225;
  if (*v225)
  {
    v96 = HIWORD(v243);
    if (v243 < HIWORD(v243))
    {
      v97 = (v244 + 32 * v243 + 12);
      v98 = HIWORD(v243) - v243;
      do
      {
        *v97 += v95;
        v97 += 8;
        --v98;
      }

      while (v98);
      LOWORD(v243) = v96;
    }

    LOWORD(v255[0]) = 0;
    LOWORD(v232) = 0;
    if (!*(a1 + 280))
    {
      v100 = 0;
      goto LABEL_291;
    }

LABEL_280:
    v99 = (*(*v29 + 168))(a3, a4);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    while (1)
    {
      v100 = LOWORD(v255[0]);
LABEL_291:
      if (v100 > strlen(__s) || !*(a1 + 280))
      {
        break;
      }

      v99 = (*(*v29 + 168))(a3, a4);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_283;
      }

      if ((HIDWORD(v241) & 0xFFFFFFFC) == 4 || (HIDWORD(v241) - 9) <= 1)
      {
        v99 = (*(*v29 + 168))(a3, a4, *(a1 + 280), 2, 1, &v232, &v250);
        if ((v99 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v103 = *v225;
        LOWORD(v255[0]) += *v225;
        LOWORD(v232) = v232 + v103;
        v99 = (*(*v29 + 160))(a3, a4, *(a1 + 280), 1, 1, v255, &v249 + 2);
        if ((v99 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v99 = (*(*v29 + 160))(a3, a4, *(a1 + 280), 2, 1, &v232, &v249 + 2);
        if ((v99 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }
      }

      v99 = (*(*v29 + 120))(a3, a4, *(a1 + 280), a1 + 280);
      if ((v99 & 0x80000000) != 0)
      {
        goto LABEL_283;
      }

      if (*(a1 + 280))
      {
        v99 = (*(*v29 + 168))(a3, a4);
        if ((v99 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        if (LOWORD(v255[0]) > strlen(__s))
        {
          while (*(a1 + 280))
          {
            v99 = (*(*v29 + 168))(a3, a4);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            if (HIDWORD(v241) != 17)
            {
              break;
            }

            v99 = (*(*v29 + 120))(a3, a4, *(a1 + 280), a1 + 280);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }
          }

          goto LABEL_280;
        }
      }
    }

    v95 = *v225;
  }

  LODWORD(v241) = v241 + v95;
  v50 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96));
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v104 = v253;
  *(v244 + 16) = strlen(v253);
  v105 = strlen(v104);
  v50 = (*(*v29 + 160))(a3, a4, HIWORD(v252), 0, (v105 + 1), v104, &v249 + 2);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v50 = (*(*v29 + 104))(a3, a4, 2, HIWORD(v252), &v252);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v106 = v252;
  if (v252)
  {
    v107 = 0;
    do
    {
      v50 = (*(*v29 + 168))(a3, a4, v106, 0, 1, &v241 + 4, &v250);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      if (HIDWORD(v241) > 3)
      {
        v108 = v252;
      }

      else
      {
        v50 = (*(*v29 + 192))(a3, a4, v252);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        LOWORD(v252) = v107;
        v108 = v107;
      }

      v109 = *v29;
      if (v108)
      {
        v50 = (*(v109 + 120))(a3, a4, v108, &v252);
        v107 = v108;
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v50 = (*(v109 + 104))(a3, a4, 2, HIWORD(v252), &v252);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      v106 = v252;
    }

    while (v252);
  }

  LOWORD(v243) = 0;
  v110 = strlen(v253);
  v50 = (*(*v29 + 104))(a3, a4, 2, HIWORD(v252), &v252);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v218 = 0;
  v212 = 0;
  v215 = 0;
  v226 = 0;
  v221 = v110;
  while (2)
  {
    if (!v252)
    {
      if (v215 && v212 && v218)
      {
        v148 = v218;
        v149 = __s1;
        do
        {
          v150 = *v149;
          v149 = (v149 + 2);
          v50 = (*(*v29 + 192))(a3, a4, v150);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        while (--v148);
      }

      if (*(a1 + 1200))
      {
        v50 = (*(*v29 + 104))(a3, a4, 2, HIWORD(v252), &v252);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        while (v252)
        {
          v50 = (*(*v29 + 168))(a3, a4);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (HIDWORD(v241) == 9)
          {
            v240 = 0;
            if (((*(*v29 + 184))(a3, a4, v252, 11, &v240) & 0x80000000) != 0)
            {
              v240 = 0;
            }

            else if (v240)
            {
              goto LABEL_505;
            }

            v231 = 0;
            v232 = 0;
            LOWORD(v228) = 0;
            v230 = 0;
            v99 = (*(*v29 + 168))(a3, a4, v252, 1, 1, &v248, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v99 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v151 = v247;
            v152 = v248;
            v153 = v247 - v248;
            v154 = *(a1 + 160);
            if (v153 >= *(a1 + 192))
            {
              v155 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (v153 + 1));
              if (!v155)
              {
                goto LABEL_507;
              }

              v154 = v155;
              *(a1 + 160) = v155;
              v151 = v247;
              v152 = v248;
              *(a1 + 192) = v247 - v248 + 1;
            }

            strncpy(v154, &v253[v152], v151 - v152);
            *(*(a1 + 160) - v248 + v247) = 0;
            v156 = strlen(*(a1 + 160));
            (*(*(a1 + 80) + 112))(*(a1 + 64), *(a1 + 72), v246, *(a1 + 160), (v156 + 1));
            v99 = (*(*(a1 + 56) + 176))(a3, a4, v252, 3, &__src, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v99 = (*(*v29 + 176))(a3, a4, v252, 9, &v230, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            **(a1 + 168) = 0;
            if (*(a1 + 1200))
            {
              v223 = 0;
              v219 = 3;
              do
              {
                LH_itoa(++v223, &v229, 0xAu);
                strcpy(v255, "multi_trans_");
                __strcat_chk();
                v157 = strlen(__src);
                v99 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, __src, v157);
                if ((v99 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v99 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v232, &v228);
                if ((v99 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v232[v228] = 0;
                HIWORD(v248) = 0;
                v158 = v232;
                if (*v232)
                {
                  v159 = 0;
                  v160 = 0;
                  do
                  {
                    v161 = &v158[v160];
                    if (*v161 == 126)
                    {
                      v162 = strlen(v161);
                      memmove((v161 + 1), v161, v162 + 1);
                      *&v232[HIWORD(v248)] = -24126;
                      v159 = HIWORD(v248);
                      v158 = v232;
                    }

                    HIWORD(v248) = ++v159;
                    v160 = v159;
                  }

                  while (strlen(v158) > v159);
                }

                if (*v230)
                {
                  v99 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v231, &v228);
                  if ((v99 & 0x80000000) != 0)
                  {
                    goto LABEL_283;
                  }

                  v231[v228] = 0;
                  HIWORD(v248) = 0;
                  if (v228)
                  {
                    v163 = 0;
                    do
                    {
                      v231[v163] = *v230;
                      v163 = HIWORD(v248) + 1;
                      HIWORD(v248) = v163;
                    }

                    while (v228 > v163);
                  }
                }

                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v255, v232);
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", v255, *(a1 + 160));
                if (*v230)
                {
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v255, v231);
                }

                v164 = strlen(*(a1 + 160));
                v99 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 1, *(a1 + 160), v164);
                if ((v99 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v99 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v255);
                if ((v99 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v99 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v232, &v228);
                if ((v99 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v232[v228] = 0;
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v255, v232);
                v165 = v232;
                if (*v232)
                {
                  v227 = 0;
                  v166 = 0;
                  do
                  {
                    v167 = &v165[v227];
                    v168 = *v167;
                    if (v168 == 194)
                    {
                      if (v167[1] == 161)
                      {
                        v170 = strlen(v167 + 2);
                        memmove(v167 + 1, v167 + 2, v170 + 1);
                        v232[v227] = 126;
                      }
                    }

                    else if (v168 == 126)
                    {
                      v169 = strlen(v167 + 1);
                      memmove(v167, v167 + 1, v169 + 1);
                    }

                    v227 = ++v166;
                    v165 = v232;
                    v171 = strlen(v232);
                  }

                  while (v171 > v166);
                  v172 = v171;
                }

                else
                {
                  v172 = 0;
                }

                if (strcmp(__src, v165))
                {
                  v219 += v172 + 1;
                  if (*(a1 + 200) < v219)
                  {
                    v173 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v219);
                    if (!v173)
                    {
                      goto LABEL_507;
                    }

                    *(a1 + 168) = v173;
                    *(a1 + 200) = v219;
                    v165 = v232;
                  }

                  v174 = dynamic_strcat((a1 + 168), v165, (a1 + 200), *(*a1 + 8));
                  v175 = *a1;
                  if (!v174)
                  {
                    goto LABEL_508;
                  }

                  if (!dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(v175 + 8)))
                  {
                    goto LABEL_507;
                  }
                }
              }

              while (v223 < *(a1 + 1200));
            }

            v176 = *(a1 + 168);
            if (*v176)
            {
              v176[strlen(*(a1 + 168)) - 1] = 0;
              v177 = strlen(*(a1 + 168));
              v99 = (*(*v29 + 160))(a3, a4, v252, 11, (v177 + 1), *(a1 + 168), &v249 + 2);
              if ((v99 & 0x80000000) != 0)
              {
                goto LABEL_283;
              }
            }
          }

LABEL_505:
          v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      if (*(a1 + 1204) && *(a1 + 848) && *(a1 + 1201) >= 2u)
      {
        v50 = (*(*v29 + 104))(a3, a4, 2, HIWORD(v252), &v252);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        while (v252)
        {
          v50 = (*(*v29 + 168))(a3, a4);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (HIDWORD(v241) == 9 || HIDWORD(v241) == 4)
          {
            v255[0] = 0;
            v99 = (*(*v29 + 168))(a3, a4, v252, 1, 1, &v248, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v99 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v99 = (*(*v29 + 176))(a3, a4, v252, 9, v255, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            if (v248 != v179)
            {
              if (!v181)
              {
                if (v179 | v180)
                {
                  v99 = hlp_GenXtraMainVarMW(a1, a3, a4, v178, v179, v180, v253);
                  if ((v99 & 0x80000000) != 0)
                  {
                    goto LABEL_283;
                  }
                }
              }

              v181 = 0;
            }

            if (!LH_stricmp(v255[0], *(a1 + 1208)) || !*v255[0] || !strcmp(v255[0], "normal"))
            {
              v181 = 1;
            }

            v179 = v248;
            v180 = v247;
          }

          v178 = v252;
          v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        if (!v181)
        {
          if (v179 | v180)
          {
            v50 = hlp_GenXtraMainVarMW(a1, a3, a4, v178, v179, v180, v253);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_286;
            }
          }
        }
      }

      v183 = *(a1 + 2184);
      if (v183 && strlen(*(a1 + 2184)) == 3 && *v183 == 101 && v183[1] == 110)
      {
        v50 = (*(*v29 + 104))(a3, a4, 2, HIWORD(v252), &v252);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        while (v252)
        {
          v50 = (*(*v29 + 168))(a3, a4);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (HIDWORD(v241) <= 0xA && ((1 << SBYTE4(v241)) & 0x610) != 0)
          {
            v255[0] = 0;
            v99 = (*(*v29 + 176))(a3, a4, v252, 9, v255, &v250);
            if ((v99 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            if (!strcmp(v255[0], "latin"))
            {
              v185 = strlen(*(a1 + 2184));
              v99 = (*(*(a1 + 56) + 160))(a3, a4, v252, 9, (v185 + 1), *(a1 + 2184), &v249 + 2);
              if ((v99 & 0x80000000) != 0)
              {
                goto LABEL_283;
              }
            }
          }

          v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      if (!v13)
      {
        v50 = (*(*v29 + 104))(a3, a4, 2, HIWORD(v252), &v252);
        if ((v50 & 0x80000000) == 0)
        {
          v47 = 0;
          v46 = 0;
          while (1)
          {
            if (!v252)
            {
              goto LABEL_558;
            }

            v50 = (*(*v29 + 168))(a3, a4);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_287;
            }

            if (HIDWORD(v241) <= 0xA && ((1 << SBYTE4(v241)) & 0x610) != 0)
            {
              v255[0] = 0;
              v50 = (*(*v29 + 176))(a3, a4, v252, 3, &__src, &v250);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_287;
              }

              v50 = (*(*v29 + 176))(a3, a4, v252, 9, v255, &v250);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_287;
              }

              v240 = 0;
              v50 = (*(*v29 + 184))(a3, a4, v252, 12, &v240);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_287;
              }

              if (v240 != 1)
              {
                if (v255[0] && ((v187 = strlen(v255[0]), v187 == 3) || !v187))
                {
                  v50 = (*(*v29 + 160))(a3, a4, v252, 12, (v187 + 1), v255[0], &v249 + 2);
                }

                else
                {
                  v188 = strlen(*(a1 + 1208));
                  v50 = (*(*(a1 + 56) + 160))(a3, a4, v252, 12, (v188 + 1), *(a1 + 1208), &v249 + 2);
                }

                if ((v50 & 0x80000000) != 0)
                {
                  goto LABEL_287;
                }
              }

              if (LH_stricmp(v255[0], *(a1 + 1208)))
              {
                v189 = v255[0];
                if (*v255[0])
                {
                  if (strcmp(v255[0], "normal"))
                  {
                    if (strcmp(v189, "latin"))
                    {
                      v190 = hlp_checkDoClmForForeignLanguage(a1, v189);
                      if (v190 || *(a1 + 844))
                      {
                        v191 = strlen(__src);
                        v192 = 0;
                        LOWORD(v231) = v252;
                        v193 = v255[0];
                        do
                        {
                          v194 = v193[v192];
                          if (v194 > 0x60)
                          {
                            LOBYTE(v194) = v194 - 32;
                          }

                          *(&v232 + v192++) = v194;
                        }

                        while (v192 != 3);
                        v195 = (4 * v191 + 4);
                        BYTE3(v232) = 0;
                        v196 = heap_Realloc(*(*a1 + 8), v47, v195);
                        v47 = v196;
                        if (!v196)
                        {
LABEL_633:
                          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
                          goto LABEL_634;
                        }

                        *v196 = 0;
                        if (!v190 && *(a1 + 844))
                        {
                          LOWORD(v230) = 1;
                          v197 = (*(*v29 + 80))(a3, a4, v252, &v231);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v197 = (*(*v29 + 168))(a3, a4, v252, 1, 1, &v248, &v250);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v197 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          HIDWORD(v241) = 16;
                          v197 = (*(*v29 + 160))(a3, a4, v231, 0, 1, &v241 + 4, &v249 + 2);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v197 = (*(*v29 + 160))(a3, a4, v231, 1, 1, &v248, &v249 + 2);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v197 = (*(*v29 + 160))(a3, a4, v231, 2, 1, &v247, &v249 + 2);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v197 = (*(*v29 + 160))(a3, a4, v231, 5, 1, "*", &v249 + 2);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v197 = (*(*v29 + 160))(a3, a4, v231, 6, 1, "*", &v249 + 2);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v197 = (*(*v29 + 160))(a3, a4, v231, 7, 1, &v230, &v249 + 2);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v50 = (*(*v29 + 160))(a3, a4, v231, 12, 4, "map", &v249 + 2);
                          if ((v50 & 0x80000000) != 0)
                          {
                            goto LABEL_287;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", &v232, __src);
                        if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v232, __src, v47, 0, 0, v195) & 0x80000000) != 0 && *(a1 + 940))
                        {
                          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", __src);
                        }

                        else
                        {
                          v197 = (*(*v29 + 160))(a3, a4, v231, 9, 1, "", &v249 + 2);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", &v232, v47);
                        v198 = strlen(v47);
                        v197 = (*(*(a1 + 56) + 160))(a3, a4, v231, 3, (v198 + 1), v47, &v249 + 2);
                        if ((v197 & 0x80000000) != 0)
                        {
LABEL_632:
                          v9 = v197;
LABEL_634:
                          v50 = v9;
                          goto LABEL_287;
                        }

                        v240 = 0;
                        if (((*(*v29 + 184))(a3, a4, v252, 11, &v240) & 0x80000000) == 0 && v240 == 1)
                        {
                          v197 = (*(*v29 + 176))(a3, a4, v252, 11, &__src, &v250);
                          if ((v197 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          if (*__src)
                          {
                            v199 = strlen(__src);
                            v200 = heap_Realloc(*(*a1 + 8), v46, (4 * v199 + 4));
                            v46 = v200;
                            if (!v200)
                            {
                              goto LABEL_633;
                            }

                            *v200 = 0;
                            v201 = __src;
                            if (__src)
                            {
                              while (1)
                              {
                                v202 = strchr(v201, 18);
                                v203 = v202;
                                if (v202)
                                {
                                  *v202 = 0;
                                }

                                if (*v46)
                                {
                                  *&v46[strlen(v46)] = 18;
                                }

                                *v47 = 95;
                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", &v232, __src);
                                v204 = __src;
                                v205 = strlen(__src);
                                if (4 * v205 + 4 > v195)
                                {
                                  v195 = (4 * v205 + 4);
                                  v47 = heap_Realloc(*(*a1 + 8), v47, v195);
                                  if (!v47)
                                  {
                                    goto LABEL_633;
                                  }

                                  v204 = __src;
                                }

                                if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v232, v204, v47, 0, 0, v195) & 0x80000000) != 0)
                                {
                                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", __src);
                                }

                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", &v232, v47);
                                strcat(v46, v47);
                                if (!v203)
                                {
                                  break;
                                }

                                *v203 = 18;
                                v201 = v203 + 1;
                                __src = v201;
                              }

                              __src = 0;
                            }

                            v206 = strlen(v46);
                            v50 = (*(*v29 + 160))(a3, a4, v231, 11, (v206 + 1), v46, &v249 + 2);
                            if ((v50 & 0x80000000) != 0)
                            {
                              goto LABEL_287;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_287;
            }
          }
        }

        goto LABEL_286;
      }

      v47 = 0;
      v46 = 0;
LABEL_558:
      v50 = fe_oneword_SplitMW(a1, a3, a4);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_287;
      }

      if (*(a1 + 2192))
      {
        v50 = fe_oneword_MosyntCleanup(a1);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_287;
        }
      }

      DTData = fe_oneword_TreatNLUMarkup(a1, a3, a4);
      if ((DTData & 0x80000000) == 0)
      {
        v9 = fe_oneword_ProcessPinyinMarkup(a1, a3, a4);
        v11 = v9;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_288;
        }

        return v11;
      }

      return DTData;
    }

    v50 = (*(*v29 + 168))(a3, a4);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 168))(a3, a4, v252, 1, 1, &v248, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v50 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
    if ((v50 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v111 = HIDWORD(v241);
    switch(HIDWORD(v241))
    {
      case 4:
LABEL_335:
        v255[0] = 0;
        v240 = 0;
        if (((*(*v29 + 184))(a3, a4, v252, 11, &v240) & 0x80000000) == 0 && v240 == 1)
        {
          v50 = (*(*v29 + 176))(a3, a4, v252, 11, v255, &v250);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v112 = v255[0];
          v113 = strstr(v255[0], "\x12;_");
          if (v113)
          {
            *v113 = 0;
            v112 = v255[0];
          }

          v114 = strstr(v112, ";_");
          if (v114)
          {
            *v114 = 0;
          }
        }

LABEL_342:
        v213 = v248;
        if (v248 == v221)
        {
          v215 = 1;
          v213 = v221;
          v222 = v218;
        }

        else
        {
          v222 = 0;
          if (v215 && v212)
          {
            v212 = 0;
            v215 = 0;
            v226 = 0;
            if (v218)
            {
              v115 = v218;
              v116 = __s1;
              while (1)
              {
                v117 = *v116;
                v116 = (v116 + 2);
                v50 = (*(*v29 + 192))(a3, a4, v117);
                if ((v50 & 0x80000000) != 0)
                {
                  goto LABEL_286;
                }

                if (!--v115)
                {
                  v222 = 0;
                  v215 = 0;
                  v226 = 0;
                  v212 = 0;
                  v213 = v248;
                  break;
                }
              }
            }
          }

          else
          {
            v212 = 0;
            v215 = 0;
            v226 = 0;
          }
        }

        for (i = v243; HIWORD(v243) > i; LOWORD(v243) = i)
        {
          v119 = (v244 + 32 * i);
          if ((v119[3] - v216) >= (v248 + 1))
          {
            break;
          }

          if (*v119 == 14)
          {
            v122 = v119[6];
            if (v122 != 64)
            {
              v238 = v122;
              *&__c[1] = -1;
              v50 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", &v237, &__c[3], &__c[1], __c);
              if ((v50 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              if (*&__c[1])
              {
                v123 = ***&__c[3];
              }

              else
              {
                v123 = v238;
              }

              v226 = v123;
            }
          }

          else if (*v119 == 37)
          {
            v120 = *(v119 + 3);
            v121 = strlen(v120);
            v50 = (*(*v29 + 160))(a3, a4, v252, 10, (v121 + 1), v120, &v249 + 2);
            if ((v50 & 0x80000000) != 0)
            {
              goto LABEL_286;
            }
          }

          i = v243 + 1;
        }

        if (v226)
        {
          v50 = (*(*v29 + 176))(a3, a4, v252, 5, &v239, &v250);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v124 = v239;
          if (strchr(v239, v226))
          {
            v212 = 1;
          }

          else
          {
            *(__s1 + v222) = v252;
            v222 = (v222 + 1);
          }

          *v124 = v226;
          v239[1] = 0;
        }

        v218 = v222;
        if (((*(*v29 + 184))(a3, a4, v252, 21, &v240) & 0x80000000) != 0)
        {
          v240 = 0;
        }

        else if (v240)
        {
LABEL_376:
          v111 = HIDWORD(v241);
          v221 = v213;
          break;
        }

        v50 = (*(*v29 + 160))(a3, a4, v252, 21, 6, "OTHER", &v249 + 2);
        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        goto LABEL_376;
      case 0xA:
        goto LABEL_342;
      case 9:
        goto LABEL_335;
    }

    if (v111 != 9)
    {
      goto LABEL_443;
    }

    v255[0] = 0;
    LOWORD(v231) = 0;
    v232 = 0;
    LOWORD(v230) = 0;
    LOWORD(v229) = 0;
    v99 = (*(*v29 + 176))(a3, a4, v252, 3, &__src, &v250);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    if (!strchr(__src, 32))
    {
LABEL_443:
      v50 = (*(*v29 + 120))(a3, a4, v252, &v252);
      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      continue;
    }

    break;
  }

  v99 = (*(*v29 + 168))(a3, a4, v252, 2, 1, &v247, &v250);
  if ((v99 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v99 = (*(*v29 + 168))(a3, a4, v252, 7, 1, &v231, &v250);
  if ((v99 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v99 = (*(*v29 + 176))(a3, a4, v252, 9, &v232, &v250);
  if ((v99 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v240 = 0;
  if (((*(*v29 + 184))(a3, a4, v252, 8, &v240) & 0x80000000) == 0 && v240 == 1)
  {
    v99 = (*(*v29 + 168))(a3, a4, v252, 8, 1, &v230, &v250);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }
  }

  v99 = (*(*v29 + 176))(a3, a4, v252, 5, &v239, &v250);
  if ((v99 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v99 = (*(*v29 + 176))(a3, a4, v252, 6, v255, &v250);
  if ((v99 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v125 = strlen(__src);
  if (v125 - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v126 = heap_Realloc(*(*a1 + 8), *(a1 + 240), (v125 + 1));
    if (!v126)
    {
      goto LABEL_507;
    }

    *(a1 + 240) = v126;
  }

  v127 = strlen(v239);
  if (v127 - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v128 = heap_Realloc(*(*a1 + 8), *(a1 + 248), (v127 + 1));
    if (!v128)
    {
      goto LABEL_507;
    }

    *(a1 + 248) = v128;
  }

  v129 = strlen(v255[0]);
  if (v129 - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v130 = heap_Realloc(*(*a1 + 8), *(a1 + 256), (v129 + 1));
    if (!v130)
    {
      goto LABEL_507;
    }

    *(a1 + 256) = v130;
  }

  strcpy(*(a1 + 240), __src);
  strcpy(*(a1 + 248), v239);
  strcpy(*(a1 + 256), v255[0]);
  v131 = *(a1 + 248);
  v132 = *(a1 + 256);
  v207 = *(a1 + 240);
  v133 = strchr(v207, 32);
  v214 = v131;
  v210 = strchr(v131, 32);
  v211 = v132;
  v208 = v133;
  v209 = strchr(v132, 32);
  HIWORD(v248) = v248;
  if (!v133)
  {
LABEL_438:
    v99 = (*(*v29 + 160))(a3, a4, v252, 2, 1, &v247, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    v145 = strlen(v207);
    v99 = (*(*v29 + 160))(a3, a4, v252, 3, (v145 + 1), v207, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    v146 = strlen(v214);
    v99 = (*(*v29 + 160))(a3, a4, v252, 5, (v146 + 1), v214, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    v147 = strlen(v211);
    v99 = (*(*v29 + 160))(a3, a4, v252, 6, (v147 + 1), v211, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    LOWORD(v229) = 0;
    v99 = (*(*v29 + 160))(a3, a4, v252, 8, 1, &v230, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    goto LABEL_443;
  }

  while (1)
  {
    for (j = HIWORD(v248); ; HIWORD(v248) = ++j)
    {
      v135 = v253[j];
      v136 = v135 > 0x20 || ((1 << v135) & 0x100002601) == 0;
      if (!v136 || v135 == 95)
      {
        break;
      }
    }

    v99 = (*(*v29 + 160))(a3, a4, v252, 2, 1, &v248 + 2, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    ++HIWORD(v248);
    *v208 = 0;
    v137 = strlen(v207);
    v99 = (*(*v29 + 160))(a3, a4, v252, 3, (v137 + 1), v207, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    if (v210)
    {
      *v210 = 0;
    }

    v138 = strlen(v214);
    v99 = (*(*v29 + 160))(a3, a4, v252, 5, (v138 + 1), v214, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v139 = v214;
    if (v210)
    {
      v139 = v210 + 1;
    }

    v214 = v139;
    if (v209)
    {
      *v209 = 0;
    }

    v140 = strlen(v211);
    v99 = (*(*v29 + 160))(a3, a4, v252, 6, (v140 + 1), v211, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v141 = v211;
    if (v209)
    {
      v141 = v209 + 1;
    }

    v211 = v141;
    LOWORD(v229) = 0;
    v99 = (*(*v29 + 160))(a3, a4, v252, 8, 1, &v229, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v142 = v252;
    if (v252 && HIWORD(v248) > v248)
    {
      while (1)
      {
        v143 = v142;
        v99 = (*(*v29 + 120))(a3, a4, v142, &v252);
        if ((v99 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        if (!v252)
        {
          goto LABEL_428;
        }

        v99 = (*(*v29 + 168))(a3, a4);
        if ((v99 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v142 = v252;
        if (!v252 || HIWORD(v248) <= v248)
        {
          goto LABEL_428;
        }
      }
    }

    v143 = v252;
LABEL_428:
    v99 = (*(*v29 + 80))(a3, a4, v143, &v252);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v99 = (*(*v29 + 160))(a3, a4, v252, 1, 1, &v248 + 2, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v99 = (*(*v29 + 160))(a3, a4, v252, 0, 1, &v241 + 4, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v99 = (*(*v29 + 160))(a3, a4, v252, 7, 1, &v231, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v144 = strlen(v232);
    v99 = (*(*v29 + 160))(a3, a4, v252, 9, (v144 + 1), v232, &v249 + 2);
    if ((v99 & 0x80000000) != 0)
    {
      break;
    }

    v207 = v208 + 1;
    v208 = strchr(v208 + 1, 32);
    if (v214)
    {
      v210 = strchr(v214, 32);
    }

    if (v211)
    {
      v209 = strchr(v211, 32);
    }

    if (!v208)
    {
      goto LABEL_438;
    }
  }

LABEL_283:
  v9 = v99;
LABEL_509:
  v47 = 0;
  v46 = 0;
LABEL_288:
  if (v224)
  {
    heap_Free(*(*a1 + 8), v224);
  }

LABEL_102:
  if (v253)
  {
    heap_Free(*(*a1 + 8), v253);
  }

  if (v47)
  {
    heap_Free(*(*a1 + 8), v47);
  }

  if (v46)
  {
    heap_Free(*(*a1 + 8), v46);
  }

  return v9;
}

uint64_t hlp_LoadDTData(uint64_t *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  *&__c[3] = 0;
  v29 = 0;
  __c[0] = 0;
  v26 = 0;
  *v27 = 0;
  __s = 0;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "dtlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 144) = *&__c[1] != 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "dtcharsetutf8", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (*&__c[1])
  {
    __strcpy_chk();
  }

  else
  {
    *(a1 + 584) = 0;
  }

  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "phonlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 145) = *&__c[1] == 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "extramaintrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 213) = *&__c[1] || strstr("eng,ena,enu,dun,frc,frf,ged,iti,ptb,ptp,sws,spe,spm", a1[151]);
  *(a1 + 301) = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && strlen(__s) >= 4 && (paramc_ParamGetStr(*(*a1 + 40), "extclccfg", &v29) & 0x80000000) != 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "lidenx", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a1 + 232) = *&__c[1] != 0;
  *(a1 + 233) = 0;
  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "lidenxchars", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (*&__c[1])
  {
    v3 = strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    __strcpy_chk();
  }

  else
  {
    *(a1 + 944) = 0;
  }

  *&__c[1] = -1;
  Str = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "dpsmultitrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (*&__c[1])
  {
    v4 = **&__c[3];
    v5 = strchr(**&__c[3], __c[0]);
    if (v5)
    {
      *v5 = 0;
      v4 = **&__c[3];
    }

    v6 = atoi(v4);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 1200) = v6;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", v27);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v26);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  LOBYTE(v32[0]) = 0;
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  v7 = brokeraux_ComposeBrokerString(*a1, v32, 0, 1, *v27, 0, 0, v31, 0x100uLL);
  if (v7 < 0)
  {
    return v7 | 0x89B02000;
  }

  if ((ssftriff_reader_ObjOpen(a1[2], a1[3], 2, v31, "DETR", 1031, &v22) & 0x80000000) != 0)
  {
    return 0;
  }

  while (2)
  {
    if ((ssftriff_reader_OpenChunk(v22, &v23, &v20, &v21) & 0x80000000) != 0)
    {
      return ssftriff_reader_ObjClose(v22);
    }

    v19 = 256;
    Str = ssftriff_reader_ReadStringZ(v22, v21, v20, 0, __dst, &v19);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v8 = heap_Alloc(*(*a1 + 8), 24);
    if (!v8)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      return 2310021130;
    }

    v9 = v8;
    Str = ssftriff_reader_DetachChunkData(v22, v9, v9 + 1);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v10 = v19;
    if ((v19 & 3) != 0)
    {
      v10 = v19 - (v19 | 0xFFFFFFFC);
      v19 = v10;
    }

    PNEW_LexDT_Con((a1 + 111), (a1 + 111), 0, (v9[1] + v10), 0, v9 + 2);
    v12 = LH_ERROR_to_VERROR(v11);
    if ((v12 & 0x80000000) != 0)
    {
      v17 = v12;
      ssftriff_reader_ReleaseChunkData(*v9);
      heap_Free(*(*a1 + 8), v9);
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
    }

    else
    {
      v13 = __dst;
      do
      {
        v14 = strchr(v13, 44);
        v15 = v14;
        if (v14)
        {
          *v14 = 0;
        }

        v16 = ssftmap_Insert(a1[71], v13, v9);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = v16;
          ssftriff_reader_ReleaseChunkData(*v9);
          heap_Free(*(*a1 + 8), v9);
          return v17;
        }

        v13 = v15 + 1;
      }

      while (v15);
      v17 = ssftriff_reader_CloseChunk(v22);
      if ((v17 & 0x80000000) == 0)
      {
        continue;
      }
    }

    break;
  }

  return v17;
}

uint64_t hlp_GenXtraMainVarMW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = a4;
  if (a5 >= a6)
  {
    return 0;
  }

  v7 = a6;
  v8 = a5;
  v9 = a6 - a5;
  if (a6 - a5 > 127)
  {
    return 0;
  }

  __strncpy_chk();
  v17 = &v20[v9];
  *v17 = 0;
  if (oneword_CountOrthographicWords(v20, v17, 0x23u, 0x23u) < 2)
  {
    return hlp_GenXtraMainVar(a1, a2, a3, a4, v8, v7, a7, &v18);
  }

  oneword_ReplaceAllCharactersInOrthography(v20, v17, 0x23u, 32);
  v10 = 0;
  v19 = 0;
  do
  {
    oneword_FindNextWord(v20, 5u, v9, &v19 + 1, &v19);
    if (HIDWORD(v19) < v9)
    {
      v10 = hlp_GenXtraMainVar(a1, a2, a3, v18, (WORD2(v19) + v8), (v19 + v8), a7, &v18);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }
    }

    HIDWORD(v19) = v19;
  }

  while (v19 < v9);
  return v10;
}

BOOL hlp_checkDoClmForForeignLanguage(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v8[0] = 7171171;
  __strcat_chk();
  if ((paramc_ParamGetStr(*(*a1 + 40), v8, &__s1) & 0x80000000) != 0 || (v4 = __s1) == 0)
  {
    __s1 = 0;
    Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1);
    v4 = __s1;
    if (Str < 0 || !__s1)
    {
      if (!__s1)
      {
        return 1;
      }
    }

    else
    {
      if (strstr(__s1, a2))
      {
        v4 = "no";
      }

      else
      {
        v4 = "yes";
      }

      __s1 = v4;
    }
  }

  return strcmp(v4, "yes") == 0;
}

uint64_t fe_oneword_TreatNLUMarkup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = 0;
  __n = 0;
  v124 = 0;
  __dst = 0;
  v123 = 0;
  v121 = 0;
  v120 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v127 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v127), 0, &v120) & 0x80000000) == 0 && v120 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v127), 0, &v123, &__n + 4);
    if ((v6 & 0x80000000) == 0 && WORD2(__n) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v127), 1, &v121, &v120 + 2);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v127), &v127);
      if ((v6 & 0x80000000) == 0)
      {
        v125 = 0;
        LOWORD(v8) = v127;
        if (v127)
        {
          v9 = 0;
          v10 = 0;
          v116 = 0;
          v11 = 0;
          while (1)
          {
            v12 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v124, &__n + 4);
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            if ((v124 - 9) >= 6 && v124 != 4)
            {
              goto LABEL_181;
            }

            v12 = (*(*(a1 + 56) + 168))(a2, a3, v127, 1, 1, &v125 + 2, &__n + 4);
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            v12 = (*(*(a1 + 56) + 168))(a2, a3, v127, 2, 1, &v125, &__n + 4);
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            v14 = v11;
            if (v9 >= HIWORD(v120))
            {
LABEL_25:
              v18 = *(v121 + 16);
            }

            else
            {
              v15 = *(v121 + 12);
              v16 = (v121 + 32 * v9);
              v17 = HIWORD(v120) - v9;
              while (1)
              {
                v18 = v16[3] - v15;
                v19 = (*(v16 + 6) - v15);
                if (*v16 == 1 && v19 >= v125)
                {
                  break;
                }

                v16 += 8;
                if (!--v17)
                {
                  goto LABEL_25;
                }
              }

              v31 = *(v16 + 6) == v15 || v19 == *(v121 + 16);
              if (!v31 && *(v123 + v19) != 32)
              {
                LODWORD(v119) = v19 - 1;
                utf8_GetPreviousValidUtf8Offset(v123, &v119);
                v32 = utf8_determineUTF8CharLength(*(v123 + v19));
                v33 = v119;
                v34 = *(v123 + v119);
                if (v34 != 95 && v34 != 32)
                {
                  v33 = v32 + v18;
                }

                v18 = v33;
              }
            }

            LOWORD(__n) = 0;
            v21 = *(a1 + 2264);
            if (v21 && *v21)
            {
              LOWORD(__n) = strlen(v21) + 1;
              v22 = heap_Realloc(*(*a1 + 8), v14, __n);
              if (!v22)
              {
                goto LABEL_294;
              }

              v23 = v22;
              v24 = strcpy(v22, *(a1 + 2264));
              **(a1 + 2264) = 0;
              v14 = v24;
            }

            else
            {
              v23 = 0;
            }

            v25 = HIWORD(v120);
            v115 = v10;
            if (v9 < HIWORD(v120))
            {
              v26 = 32 * v9;
              v9 = v9;
              while (v18 << 16 > (*(v121 + v26 + 12) - *(v121 + 12)) << 16)
              {
                if (*(v121 + v26) == 51)
                {
                  LOWORD(__n) = strlen(*(v121 + v26 + 24)) + __n + 1;
                  v27 = heap_Realloc(*(*a1 + 8), v14, __n);
                  if (!v27)
                  {
                    v40 = v116;
LABEL_280:
                    v10 = v115;
                    goto LABEL_281;
                  }

                  v28 = v27;
                  if (v23)
                  {
                    v29 = v121;
                    v30 = *(v121 + v26 + 12) + 1 == *(v121 + 16) + *(v121 + 12);
                  }

                  else
                  {
                    v30 = 0;
                    *v27 = 0;
                    v29 = v121;
                  }

                  hlp_NLUStrOverride(v27, *(v29 + v26 + 24), v30);
                  v25 = HIWORD(v120);
                  v14 = v28;
                  v23 = v28;
                }

                else
                {
                  v28 = v23;
                }

                ++v9;
                v26 += 32;
                if (v9 >= v25)
                {
                  goto LABEL_53;
                }
              }

              v28 = v23;
LABEL_53:
              v9 = v9;
              v23 = v28;
              v10 = v115;
            }

            if (!v23)
            {
              v70 = (*(*(a1 + 56) + 168))(a2, a3, v127, 0, 1, &v124, &__n + 4);
              if ((v70 & 0x80000000) != 0)
              {
                v6 = v70;
                v40 = v116;
                goto LABEL_282;
              }

              v71 = (v124 - 9) < 6 || v124 == 4;
              v11 = v14;
              if (v71)
              {
                v72 = *(a1 + 2256);
                if (*v72)
                {
                  v73 = strlen(v72);
                  v74 = heap_Realloc(*(*a1 + 8), v10, (v73 + 1));
                  if (!v74)
                  {
                    goto LABEL_294;
                  }

                  v75 = v74;
                  v76 = strcpy(v74, *(a1 + 2256));
                  __dst = v76;
                  do
                  {
                    if ((*v76 | 0x20) != 0x69)
                    {
                      goto LABEL_177;
                    }

                    if (v76[1] != 95)
                    {
                      goto LABEL_177;
                    }

                    LOWORD(__n) = hlp_NLUStrLength(v76);
                    v76 = __dst;
                    if (v75 >= __dst)
                    {
                      goto LABEL_177;
                    }

                    v77 = 0;
                    v78 = v75;
                    do
                    {
                      if (*v78)
                      {
                        if (v78[1] == 95)
                        {
                          v79 = __n;
                          if (v79 == hlp_NLUStrLength(v78) && !strncmp(__dst + 2, v78 + 2, __n - 2))
                          {
                            v77 = 1;
                          }
                        }
                      }

                      v78 = hlp_NLUStrNext(v78);
                      v76 = __dst;
                    }

                    while (v78 < __dst);
                    if (v77)
                    {
                      v76 = hlp_NLUStrStrip(__dst);
                    }

                    else
                    {
LABEL_177:
                      v76 = hlp_NLUStrNext(v76);
                    }

                    __dst = v76;
                  }

                  while (v76);
                  hlp_NLUStrJoin(v75, "");
                  v80 = strlen(v75);
                  v81 = (*(*(a1 + 56) + 160))(a2, a3, v127, 14, (v80 + 1), v75, &__n + 2);
                  if ((v81 & 0x80000000) != 0)
                  {
                    v6 = v81;
                    v10 = v75;
                    goto LABEL_278;
                  }

                  v10 = v75;
                }
              }

LABEL_181:
              v6 = (*(*(a1 + 56) + 120))(a2, a3, v127, &v127);
              if ((v6 & 0x80000000) != 0)
              {
                goto LABEL_278;
              }

              v8 = v127;
              v14 = v11;
              goto LABEL_259;
            }

            v35 = 2 * strlen(v23);
            v36 = v35 + 2;
            LOWORD(__n) = v35 + 2;
            v37 = *(a1 + 2256);
            if (*v37)
            {
              v36 = v35 + strlen(v37) + 3;
              LOWORD(__n) = v36;
            }

            v38 = heap_Realloc(*(*a1 + 8), v14, v36);
            if (!v38)
            {
LABEL_294:
              v40 = v116;
LABEL_281:
              v6 = 2310021130;
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v114);
              goto LABEL_282;
            }

            v14 = v38;
            v114 = v9;
            v39 = heap_Realloc(*(*a1 + 8), v116, __n);
            if (!v39)
            {
              v6 = 2310021130;
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
              v40 = v116;
              goto LABEL_284;
            }

            v40 = v39;
            v41 = v18;
            __dst = v14;
            v42 = v14;
            do
            {
              if ((*v42 | 0x20) == 0x72 && v42[1] == 95)
              {
                strcpy(v40, *(a1 + 2256));
                LOWORD(__n) = hlp_NLUStrKeyLen(__dst);
                if (v14 < __dst)
                {
                  v43 = v14;
                  do
                  {
                    v44 = __n;
                    if (v44 == hlp_NLUStrKeyLen(v43) && !strncmp(__dst + 2, v43 + 2, __n - 2))
                    {
                      v45 = *v43;
                      if (v45 > 0x64)
                      {
                        if (v45 == 101)
                        {
LABEL_77:
                          if (v43[1] == 95)
                          {
                            hlp_NLUStrRemoveI(v40, v43);
                          }

                          goto LABEL_66;
                        }

                        if (v45 == 115)
                        {
LABEL_74:
                          if (v43[1] == 95)
                          {
                            hlp_NLUStrAddI(v40, v43);
                          }
                        }
                      }

                      else
                      {
                        if (v45 == 69)
                        {
                          goto LABEL_77;
                        }

                        if (v45 == 83)
                        {
                          goto LABEL_74;
                        }
                      }
                    }

LABEL_66:
                    v43 = hlp_NLUStrNext(v43);
                  }

                  while (v43 < __dst);
                }

                v46 = v40;
                do
                {
                  if (*v46)
                  {
                    *v46 = 69;
                  }

                  v46 = hlp_NLUStrNext(v46);
                }

                while (v46);
                LOWORD(__n) = strlen(v40);
                v47 = strlen(__dst);
                memmove(&__dst[__n + 1], __dst, v47 + 1);
                strncpy(__dst, v40, __n);
                __dst[__n] = 59;
                __dst += __n + 1;
                v42 = hlp_NLUStrStrip(__dst);
              }

              else
              {
                v42 = hlp_NLUStrNext(v42);
              }

              __dst = v42;
            }

            while (v42);
            __dst = v14;
            v48 = v14;
            while (2)
            {
              if ((*v48 | 0x20) == 0x65 && v48[1] == 95)
              {
                v49 = hlp_NLUStrNext(v48);
                LOWORD(__n) = hlp_NLUStrLength(__dst);
                if (v49)
                {
                  while (1)
                  {
                    if ((*v49 | 0x20) == 0x73 && v49[1] == 95)
                    {
                      v50 = __n;
                      if (v50 == hlp_NLUStrLength(v49) && !strncmp(__dst + 2, v49 + 2, __n - 2))
                      {
                        break;
                      }
                    }

                    v49 = hlp_NLUStrNext(v49);
                    if (!v49)
                    {
                      goto LABEL_95;
                    }
                  }

                  hlp_NLUStrStrip(v49);
                  v48 = hlp_NLUStrStrip(__dst);
                  goto LABEL_97;
                }

LABEL_95:
                v48 = __dst;
              }

              v48 = hlp_NLUStrNext(v48);
LABEL_97:
              __dst = v48;
              if (v48)
              {
                continue;
              }

              break;
            }

            __dst = v14;
            v51 = v14;
LABEL_100:
            while (2)
            {
              if ((*v51 | 0x20) != 0x73 || v51[1] != 95)
              {
                goto LABEL_117;
              }

              v52 = hlp_NLUStrNext(v51);
              LOWORD(__n) = hlp_NLUStrLength(__dst);
              if (v52)
              {
                v53 = 0;
                do
                {
                  if (v53)
                  {
                    v54 = *v52;
                    if ((v54 | 0x20) != 0x65)
                    {
                      goto LABEL_110;
                    }

                    if (v52[1] == 95)
                    {
                      v55 = __n;
                      if (v55 == hlp_NLUStrLength(v52) && !strncmp(__dst + 2, v52 + 2, __n - 2))
                      {
                        hlp_NLUStrStrip(v52);
                        hlp_NLUStrStrip(__dst);
                        v51 = __dst;
                        if (!__dst)
                        {
                          goto LABEL_120;
                        }

                        goto LABEL_100;
                      }
                    }
                  }

                  v54 = *v52;
LABEL_110:
                  if (v54)
                  {
                    if (v52[1] == 95)
                    {
                      v56 = __n;
                      if (v56 == hlp_NLUStrLength(v52) && !strncmp(__dst + 2, v52 + 2, __n - 2))
                      {
                        v53 = 1;
                      }
                    }
                  }

                  v52 = hlp_NLUStrNext(v52);
                }

                while (v52);
              }

              v51 = __dst;
LABEL_117:
              v51 = hlp_NLUStrNext(v51);
              __dst = v51;
              if (v51)
              {
                continue;
              }

              break;
            }

LABEL_120:
            __dst = v14;
            v57 = v14;
            while (2)
            {
              if ((*v57 | 0x20) != 0x65 || v57[1] != 95 || (v58 = hlp_NLUStrSearchI(*(a1 + 2256), v57), v57 = __dst, v58))
              {
                v59 = v57;
                goto LABEL_125;
              }

              LOWORD(__n) = hlp_NLUStrLength(__dst);
              v59 = __dst;
              if (v14 >= __dst)
              {
                goto LABEL_137;
              }

              v61 = 0;
              v62 = v14;
              do
              {
                if ((*v62 | 0x20) == 0x73 && v62[1] == 95)
                {
                  v63 = __n;
                  if (v63 == hlp_NLUStrLength(v62) && !strncmp(__dst + 2, v62 + 2, __n - 2))
                  {
                    v61 = 1;
                  }
                }

                v62 = hlp_NLUStrNext(v62);
                v59 = __dst;
              }

              while (v62 < __dst);
              if (v61)
              {
LABEL_125:
                v60 = hlp_NLUStrNext(v59);
              }

              else
              {
LABEL_137:
                v60 = hlp_NLUStrStrip(v59);
              }

              v57 = v60;
              __dst = v60;
              if (v60)
              {
                continue;
              }

              break;
            }

            hlp_NLUStrJoin(v14, "");
            HIWORD(__n) = v127;
            v117 = HIWORD(v125);
            v64 = (*(*(a1 + 56) + 120))(a2, a3);
            v6 = v64;
            if ((v64 & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            if (HIWORD(__n))
            {
              v6 = (*(*(a1 + 56) + 168))(a2, a3);
              if ((v6 & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v65 = HIWORD(__n);
              if (HIWORD(__n))
              {
                v66 = HIWORD(v125);
                v67 = v117;
                while (1)
                {
                  if (v66 >= v41)
                  {
                    goto LABEL_185;
                  }

                  v68 = (*(*(a1 + 56) + 168))(a2, a3, v65, 0, 1, &v124, &__n + 4);
                  if ((v68 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if ((v124 - 9) < 6 || v124 == 4)
                  {
                    v67 = HIWORD(v125);
                  }

                  v6 = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(__n), &__n + 6);
                  if ((v6 & 0x80000000) != 0)
                  {
                    goto LABEL_276;
                  }

                  if (!HIWORD(__n))
                  {
                    v65 = 0;
                    goto LABEL_185;
                  }

                  v6 = (*(*(a1 + 56) + 168))(a2, a3);
                  if ((v6 & 0x80000000) != 0)
                  {
                    goto LABEL_276;
                  }

                  v65 = HIWORD(__n);
                  if (!HIWORD(__n))
                  {
                    goto LABEL_185;
                  }

                  v66 = HIWORD(v125);
                }

LABEL_275:
                v6 = v68;
LABEL_276:
                v11 = v14;
                v10 = v115;
                goto LABEL_283;
              }
            }

            else
            {
              v65 = 0;
            }

            v67 = v117;
LABEL_185:
            v8 = v127;
            if (v127 && v127 != v65)
            {
              v82 = 0;
              do
              {
                v68 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v124, &__n + 4);
                if ((v68 & 0x80000000) != 0)
                {
                  goto LABEL_275;
                }

                if ((v124 - 9) < 6 || v124 == 4)
                {
                  if (v82)
                  {
                    v68 = (*(*(a1 + 56) + 168))(a2, a3, v82, 1, 1, &__n, &__n + 4);
                    if ((v68 & 0x80000000) != 0)
                    {
                      goto LABEL_275;
                    }
                  }

                  v68 = (*(*(a1 + 56) + 168))(a2, a3, v127, 1, 1, &v125 + 2, &__n + 4);
                  if ((v68 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

                  v68 = (*(*(a1 + 56) + 168))(a2, a3, v127, 2, 1, &v125, &__n + 4);
                  if ((v68 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

                  if (!v82 || __n != HIWORD(v125))
                  {
                    v85 = strlen(v14);
                    v86 = v85 + 1;
                    LOWORD(__n) = v85 + 1;
                    v87 = *(a1 + 2256);
                    if (*v87)
                    {
                      v86 = v85 + strlen(*(a1 + 2256)) + 2;
                      LOWORD(__n) = v86;
                    }

                    v10 = v115;
                    v88 = heap_Realloc(*(*a1 + 8), v87, v86);
                    if (!v88)
                    {
                      goto LABEL_281;
                    }

                    *(a1 + 2256) = v88;
                    v89 = strlen(v14);
                    v90 = heap_Realloc(*(*a1 + 8), v115, __n + v89 + 1);
                    if (!v90)
                    {
                      goto LABEL_281;
                    }

                    v91 = v90;
                    v92 = strcpy(v90, v14);
                    while (2)
                    {
                      v93 = *v92;
                      if (v93 > 0x64)
                      {
                        if (v93 != 101)
                        {
                          if (v93 != 115)
                          {
                            goto LABEL_225;
                          }

                          goto LABEL_214;
                        }
                      }

                      else if (v93 != 69)
                      {
                        if (v93 != 83)
                        {
                          goto LABEL_225;
                        }

LABEL_214:
                        if (v92[1] != 95)
                        {
                          goto LABEL_225;
                        }

                        v94 = hlp_NLUStrSearchI(*(a1 + 2256), v92);
                        if (HIWORD(v125) == v117)
                        {
                          hlp_NLUStrAddI(*(a1 + 2256), v92);
                        }

                        if (!v94)
                        {
LABEL_225:
                          v95 = hlp_NLUStrNext(v92);
LABEL_226:
                          v92 = v95;
                          if (!v95)
                          {
                            hlp_NLUStrJoin(v91, *(a1 + 2256));
                            __dst = v91;
                            v96 = v91;
                            do
                            {
                              if ((*v96 | 0x20) != 0x69)
                              {
                                goto LABEL_240;
                              }

                              if (v96[1] != 95)
                              {
                                goto LABEL_240;
                              }

                              LOWORD(__n) = hlp_NLUStrLength(v96);
                              v96 = __dst;
                              if (v91 >= __dst)
                              {
                                goto LABEL_240;
                              }

                              v97 = 0;
                              v98 = v91;
                              do
                              {
                                if (*v98)
                                {
                                  if (v98[1] == 95)
                                  {
                                    v99 = __n;
                                    if (v99 == hlp_NLUStrLength(v98) && !strncmp(__dst + 2, v98 + 2, __n - 2))
                                    {
                                      v97 = 1;
                                    }
                                  }
                                }

                                v98 = hlp_NLUStrNext(v98);
                                v96 = __dst;
                              }

                              while (v98 < __dst);
                              if (v97)
                              {
                                v96 = hlp_NLUStrStrip(__dst);
                              }

                              else
                              {
LABEL_240:
                                v96 = hlp_NLUStrNext(v96);
                              }

                              __dst = v96;
                            }

                            while (v96);
                            hlp_NLUStrJoin(v91, "");
                            if (HIWORD(v125) == v67)
                            {
                              v119 = 0;
                              v118 = 0;
                              v100 = hlp_NLUStrFind(v91, "PUNC", &v119, &v118);
                              if (!v100)
                              {
                                goto LABEL_252;
                              }

                              v101 = v100;
                              if (!strstr(v100, ":DASH"))
                              {
                                goto LABEL_252;
                              }

LABEL_250:
                              if (*(v123 + v125 - 1) == 44)
                              {
                                goto LABEL_252;
                              }

LABEL_251:
                              hlp_NLUStrStrip(v101);
                              goto LABEL_252;
                            }

                            v119 = 0;
                            v118 = 0;
                            v102 = hlp_NLUStrFind(v91, "BND", &v119, &v118);
                            if (v102)
                            {
                              hlp_NLUStrStrip(v102);
                            }

                            v103 = hlp_NLUStrFind(v91, "PUNC", &v119, &v118);
                            if (v103)
                            {
                              v101 = v103;
                              if (strstr(v103, ":DASH"))
                              {
                                goto LABEL_250;
                              }

                              goto LABEL_251;
                            }

LABEL_252:
                            v104 = strlen(v91);
                            v105 = (*(*(a1 + 56) + 160))(a2, a3, v127, 14, (v104 + 1), v91, &__n + 2);
                            if ((v105 & 0x80000000) == 0)
                            {
                              v115 = v91;
                              goto LABEL_254;
                            }

                            v6 = v105;
                            v10 = v91;
LABEL_282:
                            v11 = v14;
LABEL_283:
                            v14 = v11;
                            if (v11)
                            {
LABEL_284:
                              heap_Free(*(*a1 + 8), v14);
                            }

                            if (v40)
                            {
                              heap_Free(*(*a1 + 8), v40);
                            }

                            if (v10)
                            {
                              heap_Free(*(*a1 + 8), v10);
                            }

                            return v6;
                          }

                          continue;
                        }

LABEL_224:
                        v95 = hlp_NLUStrStrip(v92);
                        goto LABEL_226;
                      }

                      break;
                    }

                    if (v92[1] != 95)
                    {
                      goto LABEL_225;
                    }

                    if (HIWORD(v125) == v67)
                    {
                      hlp_NLUStrRemoveI(*(a1 + 2256), v92);
                    }

                    if (!hlp_NLUStrSearchI(*(a1 + 2256), v92))
                    {
                      goto LABEL_225;
                    }

                    goto LABEL_224;
                  }

                  v68 = (*(*(a1 + 56) + 176))(a2, a3, v82, 14, &__dst, &__n + 4);
                  if ((v68 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

                  v84 = strlen(__dst);
                  v68 = (*(*(a1 + 56) + 160))(a2, a3, v127, 14, (v84 + 1), __dst, &__n + 2);
                  if ((v68 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

LABEL_254:
                  v82 = v127;
                }

                v6 = (*(*(a1 + 56) + 120))(a2, a3);
                if ((v6 & 0x80000000) != 0)
                {
                  goto LABEL_276;
                }

                v8 = v127;
              }

              while (v127 && v127 != HIWORD(__n));
            }

            v116 = v40;
            v9 = v114;
            v10 = v115;
LABEL_259:
            v11 = v14;
            if (!v8)
            {
              goto LABEL_264;
            }
          }

          v6 = v12;
        }

        else
        {
          v14 = 0;
          v116 = 0;
          v10 = 0;
          LODWORD(v9) = 0;
LABEL_264:
          v106 = HIWORD(v120);
          if (v9 < HIWORD(v120))
          {
            v115 = v10;
            v107 = v9;
            v108 = 32 * v9;
            v40 = v116;
            while (1)
            {
              if (*(v121 + v108) == 51)
              {
                v109 = *(a1 + 2264);
                if (v109)
                {
                  v110 = strlen(*(a1 + 2264)) + 2;
                }

                else
                {
                  v110 = 2;
                }

                v111 = strlen(*(v121 + v108 + 24));
                v112 = heap_Realloc(*(*a1 + 8), v109, (v111 + v110));
                if (!v112)
                {
                  goto LABEL_280;
                }

                *(a1 + 2264) = v112;
                hlp_NLUStrOverride(v112, *(v121 + v108 + 24), 0);
                v106 = HIWORD(v120);
              }

              ++v107;
              v108 += 32;
              if (v107 >= v106)
              {
                goto LABEL_276;
              }
            }
          }

          v11 = v14;
        }

LABEL_278:
        v40 = v116;
        goto LABEL_283;
      }
    }
  }

  return v6;
}

uint64_t fe_oneword_ProcessPinyinMarkup(void *a1, uint64_t a2, uint64_t a3)
{
  v53 = 0;
  v52 = 0;
  __src = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v53 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 176))(a2, a3, HIWORD(v53), 1, &__src, &v52);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v52;
    if (v52)
    {
      v9 = 0;
      LOWORD(v10) = 0;
      v11 = 0;
      v12 = __src + 12;
      v13 = v52;
      do
      {
        v14 = *(v12 - 3);
        if (v14 == 99)
        {
          *v12 -= v11;
          v9 = 1;
        }

        else if (v14 == 0x4000)
        {
          v11 = *v12;
          v10 = v12[1] + *v12;
        }

        v12 += 8;
        --v13;
      }

      while (v13);
      v15 = v9 == 0;
      v16 = v10;
    }

    else
    {
      v11 = 0;
      v16 = 0;
      v15 = 1;
    }

    if (*a1[285] || !v15)
    {
      v17 = heap_Calloc(*(*a1 + 8), 1, 32 * v8);
      if (v17)
      {
        v18 = v17;
        memcpy(v17, __src, 32 * v52);
        v19 = v52;
        if (*a1[285])
        {
          ++v52;
          v20 = heap_Realloc(*(*a1 + 8), v18, 32 * (v19 + 1));
          if (!v20)
          {
            v7 = 2310021130;
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
            goto LABEL_82;
          }

          v21 = v20;
          v19 = v52;
          if (v52)
          {
            v22 = 0;
            v23 = 32 * v52;
            v24 = 1;
            while (1)
            {
              if (v22)
              {
                if (*(v20 + v22) == 1 && v24 < v52)
                {
                  break;
                }
              }

              v22 += 32;
              ++v24;
              if (v23 == v22)
              {
                goto LABEL_30;
              }
            }

            v26 = v20 + v22;
            memmove((v20 + v22 + 32), (v20 + v22), v23 - v22 - 32);
            *v26 = 99;
            *(v26 + 12) = (*(v26 + 44) - v11);
            v19 = v52;
          }

LABEL_30:
          v18 = v21;
        }

        if (*(a1 + 499))
        {
          v27 = HIWORD(v53);
          v60 = 0;
          v59 = 0;
          v57 = 0;
          v58 = 0;
          __s = 0;
          v56 = 0;
          v54 = 0;
          v28 = (*(a1[7] + 176))(a2, a3, HIWORD(v53), 0, &__s, &v60);
          if ((v28 & 0x80000000) != 0)
          {
            v7 = v28;
            v30 = 0;
          }

          else
          {
            v29 = strlen(__s);
            v30 = heap_Calloc(*(*a1 + 8), 1, v29 + 1);
            v31 = *a1;
            if (v30)
            {
              v32 = ssftstring_ObjOpen(*(v31 + 8), &v54);
              if ((v32 & 0x80000000) == 0)
              {
                v32 = ssftstring_Reserve(v54, 30);
                if ((v32 & 0x80000000) == 0)
                {
                  if (v19)
                  {
                    v33 = 0;
                    do
                    {
                      v50 = v18 + 32 * v33;
                      if (*v50 == 99)
                      {
                        v32 = (*(a1[7] + 104))(a2, a3, 2, v27, &v60 + 2);
                        if ((v32 & 0x80000000) != 0)
                        {
                          goto LABEL_62;
                        }

                        v49 = v33;
                        while (HIWORD(v60))
                        {
                          v32 = (*(a1[7] + 168))(a2, a3);
                          if ((v32 & 0x80000000) == 0)
                          {
                            v32 = (*(a1[7] + 168))(a2, a3, HIWORD(v60), 1, 1, &v57, &v60);
                            if ((v32 & 0x80000000) == 0)
                            {
                              v32 = (*(a1[7] + 168))(a2, a3, HIWORD(v60), 2, 1, &v57 + 2, &v60);
                              if ((v32 & 0x80000000) == 0)
                              {
                                strncpy(v30, &__s[v57], HIWORD(v57) - v57);
                                v30[HIWORD(v57) - v57] = 0;
                                if (v58 != 9 && v58 != 4)
                                {
                                  goto LABEL_58;
                                }

                                if (!utf8_IsChineseLetter(v30))
                                {
                                  goto LABEL_58;
                                }

                                v34 = *(v50 + 12);
                                if (v34 >= HIWORD(v57) || v34 < v57)
                                {
                                  goto LABEL_58;
                                }

                                v32 = (*(a1[7] + 176))(a2, a3, HIWORD(v60), 3, &v56, &v60);
                                if ((v32 & 0x80000000) != 0)
                                {
                                  goto LABEL_62;
                                }

                                ChineseUTFCharNum = utf8_GetChineseUTFCharNum(__s, *(v50 + 12));
                                v36 = utf8_GetChineseUTFCharNum(__s, v57);
                                v37 = *(v50 + 24);
                                if (v37)
                                {
                                  v32 = hlpProcessWordPhon(a1, v56, (ChineseUTFCharNum - v36 + 1), v37, v54);
                                  v33 = v49;
                                  if ((v32 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }
                                }

                                else
                                {
                                  v32 = hlpProcessWordPhon(a1, v56, (ChineseUTFCharNum - v36 + 1), a1[285], v54);
                                  if ((v32 & 0x80000000) != 0)
                                  {
                                    goto LABEL_62;
                                  }

                                  *a1[285] = 0;
                                  v33 = v49;
                                }

                                if (!ssftstring_Size(v54) || (v48 = *(a1[7] + 160), v47 = HIWORD(v60), v38 = ssftstring_Size(v54) + 1, v39 = ssftstring_CStr(v54), v32 = v48(a2, a3, v47, 3, v38, v39, &v59), (v32 & 0x80000000) == 0))
                                {
LABEL_58:
                                  v32 = (*(a1[7] + 120))(a2, a3, HIWORD(v60), &v60 + 2);
                                  if ((v32 & 0x80000000) == 0)
                                  {
                                    continue;
                                  }
                                }
                              }
                            }
                          }

                          goto LABEL_62;
                        }
                      }

                      ++v33;
                    }

                    while (v33 != v19);
                  }

                  v32 = (*(a1[7] + 160))(a2, a3, v27, 1, v19, v18, &v59);
                }
              }

LABEL_62:
              v7 = v32;
            }

            else
            {
              v7 = 2310021130;
              log_OutPublic(*(v31 + 32), "FE_ONEWORD", 34000, 0);
            }
          }

          if (v54)
          {
            ssftstring_ObjClose(v54);
          }

          if (v30)
          {
            heap_Free(*(*a1 + 8), v30);
          }

          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

          LODWORD(v19) = v52;
        }

        if (v19)
        {
          v40 = 0;
          v41 = 0;
          do
          {
            v42 = v18 + 32 * v41;
            if (*v42 == 99)
            {
              v43 = (v40 + 1);
              if (v19 > v43)
              {
                memmove((v18 + 32 * v41), (v18 + 32 * v43), 32 * (v19 - v43));
              }

              if (*(v42 + 12) >= v16)
              {
                v44 = *(v42 + 24);
                v45 = strlen(v44);
                memcpy(a1[285], v44, v45 + 1);
              }

              LOWORD(v19) = --v52;
            }

            else
            {
              ++v41;
            }

            v40 = v41;
          }

          while (v41 < v19);
        }

        v7 = (*(a1[7] + 160))(a2, a3, HIWORD(v53), 1, v19, v18, &v53);
LABEL_82:
        heap_Free(*(*a1 + 8), v18);
        return v7;
      }

      v7 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    }
  }

  return v7;
}

uint64_t fe_oneword_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v4 = *(a1 + 2256);
  if (v4 && *v4)
  {
    *v4 = 0;
  }

  v5 = *(a1 + 2264);
  if (v5 && *v5)
  {
    *v5 = 0;
  }

  if (*(a1 + 2004))
  {

    return oneword_posparser_End(a1);
  }

  return result;
}

uint64_t fe_oneword_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  result = 0;
  *a3 = &fe_oneword_ResourceTypes_SZ_CONTENT_TYPES;
  return result;
}

uint64_t fe_oneword_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  v7 = a1[9];
  v8 = *(a1[10] + 248);
  v9 = a1[8];

  return v8(v9, v7, a3, a4);
}

uint64_t fe_oneword_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2310021121;
  }

  result = 0;
  *a2 = &IFeOneword;
  return result;
}

uint64_t hlpProcessWordPhon(void *a1, const char *a2, unsigned int a3, const char *a4, uint64_t a5)
{
  appended = ssftstring_Clear(a5);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  LOBYTE(__c[0]) = 0;
  v31 = 0;
  *(__c + 1) = -1;
  appended = (*(a1[10] + 96))(a1[8], a1[9], "parallel", a4, &v31, __c + 1, __c);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if (!*(__c + 1))
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "[PINYIN] ERROR [lhp for tagpyt=%s not found]", a4);
    return 7;
  }

  v11 = *v31;
  while (1)
  {
    v12 = strchr(v11, LOBYTE(__c[0]));
    if (!v12)
    {
      break;
    }

    *v12 = 0;
  }

  if (a3 < 2)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v13 = 0;
  v14 = 1;
  while (1)
  {
    v15 = strstr(&a2[v13], "{SEP");
    v16 = strchr(&a2[v13], 46);
    if (v15)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v19 = v15 + 6;
      goto LABEL_22;
    }

    v18 = v16;
    if (v15 || !v16)
    {
      break;
    }

    v19 = v16 + 1;
LABEL_22:
    v21 = strlen(a2);
    v13 = v21 - strlen(v19);
    if (++v14 >= a3)
    {
      goto LABEL_26;
    }
  }

  if (v15 && v16)
  {
    v20 = strlen(v15);
    if (v20 <= strlen(v18))
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = v15 + 6;
    }

    goto LABEL_22;
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "[PINYIN] ERROR [word phon (%s not found)]", a2);
LABEL_26:
  appended = ssftstring_AppendCStrN(a5, a2, v13);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v22 = ssftstring_AppendCStr(a5, v11);
  if ((v22 & 0x80000000) == 0)
  {
    v23 = &a2[v13];
    v24 = strstr(v23, "{SEP");
    v25 = strchr(v23, 46);
    v26 = v25;
    if (v24 && !v25)
    {
LABEL_30:
      v27 = a5;
      v28 = v24;
      return ssftstring_AppendCStr(v27, v28);
    }

    if (v24 || !v25)
    {
      if (v24 && v25)
      {
        v30 = strlen(v24);
        if (v30 > strlen(v26))
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
LABEL_33:
      v27 = a5;
      v28 = v26;
      return ssftstring_AppendCStr(v27, v28);
    }
  }

  return v22;
}

uint64_t hlp_GenXtraMainVar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, _WORD *a8)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = a5;
  v37 = a6;
  v35 = 0;
  v33 = 32;
  if (a5 >= a6)
  {
    return 0;
  }

  v8 = a6 - a5;
  if ((a6 - a5) > 127)
  {
    return 0;
  }

  v36 = 0;
  __strncpy_chk();
  v16 = &__s[v8];
  *v16 = 0;
  oneword_ReplaceAllCharactersInOrthography(__s, v16, 0x23u, 45);
  v9 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), "normal", __s, 128);
  if ((v9 & 0x80000000) == 0)
  {
    **(a1 + 240) = 0;
    **(a1 + 248) = 0;
    **(a1 + 256) = 0;
    **(a1 + 264) = 0;
    v17 = strlen(__s);
    if (v17)
    {
      if (v17 == 1)
      {
        appended = oneword_TranscribeAcronym(a1, "normal", __s, &v33, v40);
      }

      else
      {
        v22 = mde_stemafx_Main(a1, "normal", __s);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        strcpy(v40, "one_word");
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v40, *(a1 + 160));
        v28 = strlen(*(a1 + 160));
        v22 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v28);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v40, *(a1 + 168));
        v29 = strlen(*(a1 + 168));
        v22 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 2, *(a1 + 168), v29);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", v40, *(a1 + 176));
        v30 = strlen(*(a1 + 176));
        v22 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 3, *(a1 + 176), v30);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        if ((ssftmap_FindReadOnly(*(a1 + 568), "normal", &v36) & 0x80000000) != 0)
        {
          v31 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v40);
          if ((v31 & 0x80000000) != 0)
          {
            v9 = v31;
            goto LABEL_32;
          }

          *v32 = 0;
          v34 = 0;
          appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v32, &v34);
          if ((appended & 0x80000000) == 0)
          {
            *(*v32 + v34) = 0;
            appended = oneword_AppendPhon(a1, *v32, "", "", 0, 1);
          }
        }

        else
        {
          appended = dt_Main(a1, 0, a2, a3, *(v36 + 16), "normal");
          v9 = 0;
          if ((appended & 0x1FFF) == 0x10A)
          {
            goto LABEL_10;
          }
        }
      }

      v9 = appended;
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

LABEL_10:
      v19 = *(a1 + 240);
      if (!*v19)
      {
        goto LABEL_32;
      }

      v19[strlen(*(a1 + 240)) - 3] = 0;
      v20 = strlen(*(a1 + 240));
      v21 = oneword_CountPhoneticWords((*(a1 + 240) + 3), (*(a1 + 240) + v20));
      if (v21 != 1)
      {
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mismatch between number of ortographic words (%d) and phonetic words (%d) in DT(%s)", 1, v21, __s);
        goto LABEL_32;
      }

      v32[0] = 16;
      v22 = (*(*(a1 + 56) + 80))(a2, a3, a4, &v35 + 2);
      if ((v22 & 0x80000000) == 0)
      {
        v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v35), 0, 1, v32, &v35);
        if ((v22 & 0x80000000) == 0)
        {
          v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v35), 1, 1, &v38, &v35);
          if ((v22 & 0x80000000) == 0)
          {
            v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v35), 2, 1, &v37, &v35);
            if ((v22 & 0x80000000) == 0)
            {
              v23 = *(a1 + 240);
              v24 = strlen((v23 + 3));
              v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v35), 3, (v24 + 1), v23 + 3, &v35);
              if ((v22 & 0x80000000) == 0)
              {
                v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v35), 5, 2, "*", &v35);
                if ((v22 & 0x80000000) == 0)
                {
                  v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v35), 6, 2, "*", &v35);
                  if ((v22 & 0x80000000) == 0)
                  {
                    v34 = 1;
                    v22 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v35), 7, 1, &v34, &v35);
                    if ((v22 & 0x80000000) == 0)
                    {
                      v25 = *(*(a1 + 56) + 160);
                      v26 = *(a1 + 1208);
                      v27 = strlen(v26);
                      v9 = v25(a2, a3, HIWORD(v35), 9, (v27 + 1), v26, &v35);
                      if ((v9 & 0x80000000) != 0)
                      {
                        return v9;
                      }

                      if (a8)
                      {
                        *a8 = HIWORD(v35);
                      }

LABEL_32:
                      if ((v9 & 0x1FFF) == 0x10A || (v9 & 0x1FFF) == 4)
                      {
                        return 0;
                      }

                      return v9;
                    }
                  }
                }
              }
            }
          }
        }
      }

      return v22;
    }
  }

  return v9;
}