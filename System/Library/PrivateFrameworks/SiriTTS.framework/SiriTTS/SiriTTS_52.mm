uint64_t oneword_GetMdeSettings(uint64_t a1, uint64_t a2)
{
  v24[33] = *MEMORY[0x1E69E9840];
  __c[0] = 0;
  v3 = (a1 + 282);
  *(a1 + 282) = 0x10000000;
  *(a1 + 286) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *&__c[3] = 0;
  strcpy(v24, "mdeminwrdlen_");
  __strcat_chk();
  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
    goto LABEL_3;
  }

  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeminwrdlen", &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
LABEL_3:
    v5 = **&__c[3];
    v6 = strchr(**&__c[3], __c[0]);
    if (v6)
    {
      *v6 = 0;
      v5 = **&__c[3];
    }

    *v3 = atoi(v5);
  }

  strcpy(v24, "mdemaxwrdlen_");
  __strcat_chk();
  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
    goto LABEL_8;
  }

  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxwrdlen", &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
LABEL_8:
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    *(a1 + 283) = atoi(v7);
  }

  strcpy(v24, "mdemaxnrmorph_");
  __strcat_chk();
  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
    goto LABEL_13;
  }

  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdemaxnrmorph", &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
LABEL_13:
    v9 = **&__c[3];
    v10 = strchr(**&__c[3], __c[0]);
    if (v10)
    {
      *v10 = 0;
      v9 = **&__c[3];
    }

    *(a1 + 285) = atoi(v9);
  }

  strcpy(v24, "mdefirstletter_");
  __strcat_chk();
  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
    goto LABEL_18;
  }

  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdefirstletter", &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
LABEL_18:
    v11 = **&__c[3];
    v12 = strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
      v11 = **&__c[3];
    }

    *(a1 + 284) = strcmp(v11, "upper") == 0;
  }

  strcpy(v24, "mdetype_");
  __strcat_chk();
  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
    goto LABEL_23;
  }

  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdetype", &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
LABEL_23:
    v13 = **&__c[3];
    v14 = strchr(**&__c[3], __c[0]);
    if (v14)
    {
      *v14 = 0;
      v13 = **&__c[3];
    }

    if (!strcmp(v13, "stemafx"))
    {
      *(a1 + 286) = 1;
    }
  }

  strcpy(v24, "mdeemptyafx_");
  __strcat_chk();
  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
    goto LABEL_43;
  }

  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdeemptyafx", &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
LABEL_43:
    v15 = **&__c[3];
    v16 = strchr(**&__c[3], __c[0]);
    if (v16)
    {
      *v16 = 0;
      v15 = **&__c[3];
    }

    *(a1 + 288) = strcmp(v15, "yes") == 0;
  }

  strcpy(v24, "mdenondctdps_");
  __strcat_chk();
  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
LABEL_48:
    v17 = **&__c[3];
    v18 = strchr(**&__c[3], __c[0]);
    if (v18)
    {
      *v18 = 0;
      v17 = **&__c[3];
    }

    *(a1 + 292) = strcmp(v17, "yes") == 0;
    goto LABEL_51;
  }

  *&__c[1] = -1;
  v4 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdenondctdps", &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*&__c[1])
  {
    goto LABEL_48;
  }

LABEL_51:
  v24[0] = 0x5F73706465646DLL;
  __strcat_chk();
  *&__c[1] = -1;
  v19 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v24, &__c[3], &__c[1], __c);
  if ((v19 & 0x80000000) == 0)
  {
    if (*&__c[1] || (*&__c[1] = -1, v19 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "mdedps", &__c[3], &__c[1], __c), (v19 & 0x80000000) == 0) && *&__c[1])
    {
      v20 = **&__c[3];
      v21 = strchr(**&__c[3], __c[0]);
      if (v21)
      {
        *v21 = 0;
        v20 = **&__c[3];
      }

      *(a1 + 296) = strcmp(v20, "yes") == 0;
    }
  }

  return v19;
}

uint64_t oneword_read_LD_W_INPUTSPACETAG(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  if (a4 != 6)
  {
    return 0;
  }

  v16 = v6;
  v17 = v7;
  v15 = 0;
  *a6 = 0;
  v13 = (*(*(a1 + 56) + 184))(a2, a3, a5, 19, &v15);
  result = 0;
  if ((v13 & 0x80000000) == 0 && v15 == 1)
  {
    return (*(*(a1 + 56) + 176))(a2, a3, a5, 19, a6, &v15);
  }

  return result;
}

uint64_t oneword_GetWord(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  while (1)
  {
    v4 = *(a2 + a1);
    v5 = v4 > 0x20 || ((1 << v4) & 0x100002601) == 0;
    if (!v5 || v4 == 95)
    {
      break;
    }

    ++a1;
    *(a3 + v3++) = v4;
    if (v3 == 127)
    {
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  *(a3 + v3) = 0;
  return result;
}

uint64_t oneword_GetMultiWordLen(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, _BYTE *a5)
{
  v14 = 0;
  v13 = 0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  v7 = (*(a1[10] + 120))(a1[8], a1[9], a2, 255, "femwg2p", a3, &v14, &v13);
  if ((v7 & 0x80000000) == 0)
  {
    *a5 = 0;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v9 = LH_atou(*(v14 + 8 * i));
        if (v9 <= 0x3F)
        {
          v10 = *a5;
          *a5 = v10 + 1;
          *(a4 + v10) = v9;
        }
      }

      v11 = *a5;
    }

    else
    {
      v11 = 0;
    }

    ssft_qsort(a4, v11, 1, compare_0);
  }

  return v7;
}

BOOL oneword_GetMultiWord(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + a1);
  while (v7)
  {
    *(a3 + v4) = v7;
    if (v4 == 255)
    {
      return 0;
    }

    LOWORD(a1) = a1 + 1;
    v8 = (a2 + a1);
    v7 = *v8;
    v9 = v7 > 0x20 || ((1 << v7) & 0x100002600) == 0;
    if (!v9 || v7 == 95)
    {
      v10 = *(v8 - 1);
      v11 = v10 == 95 ? v5 : v5 + 1;
      v12 = v10 > 0x20;
      v13 = (1 << v10) & 0x100002600;
      if (v12 || v13 == 0)
      {
        v5 = v11;
      }
    }

    ++v4;
    ++v6;
    if (a4 <= v5)
    {
      v16 = a1;
      goto LABEL_24;
    }
  }

  v16 = a1;
  v6 = v4;
LABEL_24:
  *(a3 + v6) = 0;
  if (!*(a2 + v16))
  {
    v17 = *(a2 + v16 - 1);
    if ((v17 > 0x20 || ((1 << v17) & 0x100002600) == 0) && v17 != 95)
    {
      LOBYTE(v5) = v5 + 1;
    }
  }

  return a4 == v5;
}

uint64_t oneword_Lookup(_DWORD *a1, char *a2, void *a3, const char *a4, const char *a5, char *a6, const char *a7, unsigned __int16 a8, unsigned __int16 a9, uint64_t a10, uint64_t a11, unsigned __int16 *a12, int a13, int a14, int a15)
{
  v125 = a8;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 4;
  v120 = 0;
  v119 = 0;
  v118 = 1;
  v117 = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "sysdctlookup", &v119) & 0x80000000) == 0 && *v119 == 110 && v119[1] == 111 && !v119[2])
  {
    return 0;
  }

  v115 = a13;
  if (a13)
  {
    if (a1[69])
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", a4);
  if (a1[306])
  {
    strcpy(__s1, "g2p");
    __strcat_chk();
    v22 = (*(*(a1 + 10) + 232))(*(a1 + 8), *(a1 + 9), __s1, a4, &v124, &v123, &v122, &v117);
  }

  else
  {
    v22 = (*(*(a1 + 10) + 240))(*(a1 + 8), *(a1 + 9), "g2p", a4, &v124, &v123, &v122, *(a1 + 556), &v117);
  }

  v21 = v22;
  if ((v22 & 0x80000000) == 0)
  {
    v23 = "ADDONDCT";
    if (!v117)
    {
      v23 = "OTHER";
    }

    v104 = v23;
    if (v123)
    {
      v101 = a3;
      v24 = 0;
      v105 = 0;
      v25 = a2 + 10000;
      v114 = a10;
      v111 = a12;
      v100 = a2 + 5000;
      v26 = a15;
      v95 = a14;
      if (v117)
      {
        v27 = 9;
      }

      else
      {
        v27 = 6;
      }

      v99 = v27;
      v98 = a7;
      v102 = a5;
      v103 = a6;
      v106 = a11;
      v97 = a15;
      while (1)
      {
        if (v115 && a1[235] && v125 < *v111)
        {
          goto LABEL_169;
        }

        v28 = strncpy(v25, *(v124 + 8 * v24), 0x1387uLL);
        a2[14999] = 0;
        v29 = strchr(v28, v122);
        if (v29)
        {
          *v29 = 0;
          v108 = v29 + 1;
          v30 = strchr(v29 + 1, v122);
          v31 = v30;
          if (!v30 || (*v30 = 0, v31 = v30 + 1, (v32 = strchr(v30 + 1, v122)) == 0))
          {
            v110 = 0;
LABEL_32:
            v109 = 0;
LABEL_33:
            v107 = 0;
            v36 = 0;
LABEL_34:
            __s = 0;
            goto LABEL_36;
          }

          *v32 = 0;
          v110 = v32 + 1;
          v33 = strchr(v32 + 1, v122);
          if (!v33)
          {
            goto LABEL_32;
          }

          *v33 = 0;
          v109 = v33 + 1;
          v34 = strchr(v33 + 1, v122);
          if (!v34)
          {
            goto LABEL_33;
          }

          *v34 = 0;
          v107 = v34 + 1;
          v35 = strchr(v34 + 1, v122);
          v36 = v35;
          if (!v35)
          {
            goto LABEL_34;
          }

          *v35 = 0;
          v36 = v35 + 1;
          v37 = strchr(v35 + 1, v122);
          if (!v37)
          {
            goto LABEL_34;
          }

          *v37 = 0;
          __s = v37 + 1;
          v38 = strchr(v37 + 1, v122);
          if (v38)
          {
            *v38 = 0;
          }
        }

        else
        {
          v109 = 0;
          v110 = 0;
          v107 = 0;
          v108 = 0;
          v36 = 0;
          __s = 0;
          v31 = 0;
        }

LABEL_36:
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v25);
        if (!strcmp(a6, "name"))
        {
          if (v31 && *v31)
          {
            if ((v39 = strstr(v31, a6)) == 0 || (v40 = v39, v41 = strlen(a6), v40 != v31) && *(v40 - 1) != 44 || v40[v41] && v40[v41] != 44)
            {
LABEL_80:
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK", v94);
              goto LABEL_157;
            }
          }
        }

        else if (v31 && *v31 && !strstr(v31, a6))
        {
          goto LABEL_80;
        }

        if (v26 && v36 && (*v36 != 48 || v36[1]))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "MDE validation not OK", v94);
LABEL_157:
          v25 = a2 + 10000;
          goto LABEL_158;
        }

        if (!a1[301] || !__s)
        {
          if (!v115)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        }

        if (strchr(__s, 33))
        {
          __s[3] = 0;
          if (!v115)
          {
            goto LABEL_68;
          }

LABEL_150:
          v87 = strstr(a6, __s);
          if (!v87 || (v88 = v87, (v89 = strlen(__s)) != 0) && v88[v89])
          {
            v90 = strstr(*(a1 + 152), a6);
            if (LH_stricmp(__s, *(a1 + 151)) || !v90 || v90[strlen(a6)] != 124)
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Token lookup: G2P Language %s validation not OK");
              goto LABEL_157;
            }
          }

LABEL_59:
          if (a1[235])
          {
            if (__s && *__s)
            {
              strlen(__s);
            }

            __strcpy_chk();
            v25 = a2 + 10000;
            if (*(a1 + 272) && strncmp(__s1, a1 + 272, 2uLL) || strstr(a6, "latin") && !strcmp(__s1, *(a1 + 151)))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Token lookup: G2P Language %s validation not OK", __s);
              if (*(a1 + 272))
              {
                v60 = strncmp(__s1, a1 + 272, 2uLL);
                v61 = v105;
                if (v60)
                {
                  v61 = 1;
                }

                v105 = v61;
              }

              goto LABEL_158;
            }

            __strcpy_chk();
            v105 = 0;
          }

          goto LABEL_68;
        }

        v57 = strstr(a6, __s);
        v58 = v57;
        if (v95)
        {
          if (v115)
          {
            goto LABEL_150;
          }

          if (!v57 || (v59 = strlen(__s)) != 0 && v58[v59])
          {
            if (LH_stricmp(__s, *(a1 + 151)))
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK");
              goto LABEL_157;
            }
          }
        }

        else
        {
          if (v115)
          {
            goto LABEL_150;
          }

          if (!v57 || (v91 = strlen(__s)) != 0 && v58[v91])
          {
            v92 = strstr(*(a1 + 152), a6);
            if (LH_stricmp(__s, *(a1 + 151)) || !v92 || v92[strlen(a6)] != 124)
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "User lang lookup: G2P Language %s validation not OK");
              goto LABEL_157;
            }
          }
        }

LABEL_68:
        *v111 = v125 + strlen(a5);
        v42 = (*(*(a1 + 7) + 88))(v114, v106, a9, &a9);
        if ((v42 & 0x80000000) != 0)
        {
          return v42;
        }

        v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 0, 1, &v121, &v120);
        v43 = a2 + 10000;
        if ((v42 & 0x80000000) != 0)
        {
          return v42;
        }

        v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 1, 1, &v125, &v120);
        if ((v42 & 0x80000000) != 0)
        {
          return v42;
        }

        v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 2, 1, v111, &v120);
        if ((v42 & 0x80000000) != 0)
        {
          return v42;
        }

        if (a7)
        {
          v44 = strlen(a7);
          v43 = a2 + 10000;
          v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 19, (v44 + 1), a7, &v120);
          if ((v42 & 0x80000000) != 0)
          {
            return v42;
          }
        }

        v45 = strchr(v43, 18);
        v46 = v45;
        if (!v45)
        {
          v46 = &v43[strlen(v43)];
        }

        v47 = *(a1 + 112);
        v48 = (*v101 + v125 + v47);
        v49 = *v101 + *v111 + v47;
        v96 = a1[569];
        v50 = *(*a1 + 32);
        v126[0] = 0;
        v51 = oneword_CountPhoneticWords(v43, v46);
        log_OutText(v50, "FE_ONEWORD", 5, 0, "Number of orthographic words: %d", 0);
        v52 = oneword_CountOrthographicWords(v48, v49, 0x23u, 0x23u);
        log_OutText(v50, "FE_ONEWORD", 5, 0, "Number of phonetic words:     %d", v51);
        if (!v51)
        {
          log_OutText(v50, "FE_ONEWORD", 5, 0, "No phonetic words found: returning");
          goto LABEL_103;
        }

        if (!v52)
        {
          log_OutText(v50, "FE_ONEWORD", 5, 0, "No orthographic words found: returning");
          goto LABEL_103;
        }

        if (v51 == 1)
        {
          v126[0] = v52 - 1;
          oneword_ReplaceCharactersInOrthography(v48, v49, 0x21u, 45, v126);
          v53 = v48;
          v54 = v49;
          v55 = 5;
          v56 = 45;
LABEL_102:
          oneword_ReplaceCharactersInOrthography(v53, v54, v55, v56, v126);
          goto LABEL_103;
        }

        if (utf8_BelongsToSet(0x24u, v48, 0, v49 - v48))
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v48, v49 - v48);
          if (PreviousUtf8Offset)
          {
            if (utf8_BelongsToSet(0x24u, v48, PreviousUtf8Offset, v49 - v48))
            {
              log_OutText(v50, "FE_ONEWORD", 5, 0, "Orthography starts and ends with underscore or hyphen: no replacement made");
              v43 = a2 + 10000;
              goto LABEL_103;
            }
          }
        }

        if (v96)
        {
          *__s1 = v49 - v48;
          oneword_ReplaceCharactersInOrthography(v48, v49, 5u, 95, __s1);
        }

        v43 = a2 + 10000;
        if (v52 < v51)
        {
          v126[0] = v51 - v52;
          v53 = v48;
          v54 = v49;
          v55 = 34;
          v56 = 95;
          goto LABEL_102;
        }

LABEL_103:
        v63 = oneword_CountOrthographicWords(v48, v49, 0x23u, 0x23u);
        log_OutText(v50, "FE_ONEWORD", 5, 0, "Number of orthographic words after adjustment: %d", v63);
        log_OutText(v50, "FE_ONEWORD", 5, 0, "Number of phonetic words after adjustment:     %d", v51);
        a6 = v103;
        if (v45)
        {
          *v45 = 0;
          v64 = v45 + 1;
          if (a1[548])
          {
            v65 = v64;
            v64 = a2 + 5000;
            v42 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v65, v100, 5000);
            if ((v42 & 0x80000000) != 0)
            {
              return v42;
            }
          }

          v66 = strlen(v64);
          v43 = a2 + 10000;
          v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 11, (v66 + 1), v64, &v120);
          if ((v42 & 0x80000000) != 0)
          {
            return v42;
          }
        }

        if (a1[548])
        {
          v67 = v43;
          v43 = a2 + 5000;
          v42 = mosynt_LHPlusMapping(*(a1 + 6), *(a1 + 275), *(a1 + 280), v67, v100, 5000);
          if ((v42 & 0x80000000) != 0)
          {
            return v42;
          }
        }

        v68 = strlen(v43);
        v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 3, (v68 + 1), v43, &v120);
        if ((v42 & 0x80000000) != 0)
        {
          return v42;
        }

        if (v110)
        {
          if (*v110)
          {
            v69 = (strlen(v110) + 1);
            v70 = v114;
            v71 = v106;
            v72 = a9;
            v73 = v110;
          }

          else
          {
            v70 = v114;
            v71 = v106;
            v72 = a9;
            v69 = 2;
            v73 = "*";
          }

          v42 = (*(*(a1 + 7) + 160))(v70, v71, v72, 5, v69, v73, &v120);
          if ((v42 & 0x80000000) != 0)
          {
            return v42;
          }
        }

        if (v109)
        {
          if (*v109)
          {
            v74 = (strlen(v109) + 1);
            v75 = v114;
            v76 = v106;
            v77 = a9;
            v78 = v109;
          }

          else
          {
            v75 = v114;
            v76 = v106;
            v77 = a9;
            v74 = 2;
            v78 = "*";
          }

          v42 = (*(*(a1 + 7) + 160))(v75, v76, v77, 6, v74, v78, &v120);
          if ((v42 & 0x80000000) != 0)
          {
            return v42;
          }
        }

        if (v108)
        {
          v79 = strlen(v108);
          v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 4, (v79 + 1), v108, &v120);
          if ((v42 & 0x80000000) != 0)
          {
            return v42;
          }
        }

        if (v107)
        {
          v80 = atoi(v107);
        }

        else
        {
          v80 = 1;
        }

        v25 = a2 + 10000;
        v118 = v80;
        if (__s)
        {
          v81 = strstr(v103, __s);
          v82 = *__s;
          v83 = strlen(__s);
          v21 = (*(*(a1 + 7) + 160))(v114, v106, a9, 9, (v83 + 1), __s, &v120);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Language tag is %s", __s);
          v84 = *(a1 + 152);
          if (v84)
          {
            v85 = strstr(v84, v103);
          }

          else
          {
            v85 = 0;
          }

          if (a1[301])
          {
            if (v81 && ((v86 = strlen(__s)) == 0 || !v81[v86]) || !LH_stricmp(__s, *(a1 + 151)) && v85 && v85[strlen(v103)] == 124)
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Increasing priority to %d", ++v118);
            }
          }

          v25 = a2 + 10000;
        }

        else
        {
          v21 = (*(*(a1 + 7) + 160))(v114, v106, a9, 9, 1, "", &v120);
          v82 = 0;
        }

        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v42 = (*(*(a1 + 7) + 160))(v114, v106, a9, 7, 1, &v118, &v120);
        if ((v42 & 0x80000000) != 0)
        {
          return v42;
        }

        v21 = (*(*(a1 + 7) + 160))(v114, v106, a9, 21, v99, v104, &v120);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        if (v123 == 1)
        {
          v26 = v97;
          if (v82)
          {
            a1[233] = v82 == 101;
          }
        }

        else
        {
          v26 = v97;
        }

        a5 = v102;
        a7 = v98;
LABEL_158:
        if (++v24 >= v123)
        {
          goto LABEL_169;
        }
      }
    }

    v105 = 0;
LABEL_169:
    a1[69] = v105;
  }

  return v21;
}

uint64_t oneword_isInputBetweenPOIMrk(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = a2;
  for (i = (a1 + 12); ; i += 16)
  {
    v10 = *(i - 3);
    if (v10 == 55)
    {
      if (!strstr(*(i + 6), "POI"))
      {
        v7 = v7;
        goto LABEL_14;
      }

      v6 = *i;
LABEL_12:
      v7 = 1;
      goto LABEL_14;
    }

    if (v7)
    {
      if (v10 != 56 || !strstr(*(i + 6), "POI"))
      {
        goto LABEL_12;
      }

      if (v6 <= a3 && *i >= a4)
      {
        break;
      }
    }

    v7 = 0;
LABEL_14:
    if (!--v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t oneword_ProcessNTokens(uint64_t a1, uint64_t a2, const char **a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13, int a14, int a15)
{
  v249 = *MEMORY[0x1E69E9840];
  v244 = a7;
  v243 = 0;
  v235 = 1;
  v234 = 32;
  v233 = 0;
  v23 = heap_Calloc(*(*a1 + 8), 1, 2248);
  if (v23)
  {
    v24 = v23;
    v242 = 0;
    v241 = 0;
    v240 = 0;
    v239 = 0;
    v237 = 0;
    __src = 0;
    v236 = 0;
    v232 = 0;
    v231 = 0;
    v246[0] = 0;
    strcpy(__s, "acronym_detection");
    v222 = strlen(__s);
    v225 = v24;
    if (*(a1 + 560) == 1)
    {
      v25 = strchr(a4, 95);
      if (v25)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = a4;
      }

      v27 = *v26;
    }

    else
    {
      v26 = 0;
      v27 = 32;
    }

    memset(v247, 0, sizeof(v247));
    started = (*(*(a1 + 56) + 168))(a5, a6, a7, 1, 1, &v239 + 2, &v241 + 2);
    if ((started & 0x80000000) != 0)
    {
      goto LABEL_492;
    }

    HIWORD(v240) = HIWORD(v239);
    v30 = v244;
    if (v244)
    {
      do
      {
        v243 = v30;
        started = (*(*(a1 + 56) + 136))(a5, a6, v30, &v244);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }

        if (!v244)
        {
          break;
        }

        started = (*(*(a1 + 56) + 168))(a5, a6);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }

        v30 = v244;
      }

      while (HIWORD(v240) == HIWORD(v239) && v244 != 0);
    }

    v32 = *(a1 + 240);
    v244 = v243;
    *v32 = 0;
    **(a1 + 248) = 0;
    **(a1 + 256) = 0;
    **(a1 + 264) = 0;
    v220 = (a1 + 240);
    started = (*(*(a1 + 56) + 168))(a5, a6, a8, 2, 1, &v239, &v241 + 2);
    if ((started & 0x80000000) != 0)
    {
      goto LABEL_492;
    }

    v217 = v26;
    v33 = (v239 - HIWORD(v239));
    v34 = (4 * v33 + 200);
    v218 = (a1 + 192);
    if (v34 > *(a1 + 192))
    {
      v35 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (4 * v33 + 200));
      if (!v35)
      {
        goto LABEL_427;
      }

      *(a1 + 160) = v35;
      *(a1 + 192) = v34;
    }

    v216 = (a1 + 200);
    if (v34 > *(a1 + 200))
    {
      v36 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (4 * v33 + 200));
      if (!v36)
      {
        goto LABEL_427;
      }

      *(a1 + 168) = v36;
      *(a1 + 200) = v34;
    }

    v214 = (a1 + 208);
    if (v34 > *(a1 + 208))
    {
      v37 = heap_Realloc(*(*a1 + 8), *(a1 + 176), (4 * v33 + 200));
      if (!v37)
      {
        goto LABEL_427;
      }

      *(a1 + 176) = v37;
      *(a1 + 208) = v34;
    }

    v215 = (a1 + 160);
    **(a1 + 160) = 0;
    v243 = v244;
    v38 = HIWORD(v239);
    v39 = v239;
    __s1 = a4;
    v203 = v27;
    if (HIWORD(v239) >= v239)
    {
      v42 = 0;
      v41 = 0;
    }

    else
    {
      v40 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*a3)[*(a1 + 224) + HIWORD(v239)]);
      v38 = HIWORD(v239);
      v41 = 0;
      if (v40)
      {
        while (1)
        {
          v42 = utf8_determineUTF8CharLength((*a3)[*(a1 + 224) + (v41 + v38)]) + v41;
          v38 = HIWORD(v239);
          v41 = v42;
          v43 = HIWORD(v239) + v42;
          v39 = v239;
          if (v43 >= v239)
          {
            break;
          }

          v44 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*a3)[*(a1 + 224) + v43]);
          v38 = HIWORD(v239);
          if (!v44)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v42 = 0;
LABEL_36:
        v39 = v239;
      }
    }

    v45 = v38 + v42;
    HIWORD(v239) = v38 + v42;
    v46 = (v38 + v42);
    v47 = v39;
    if (v39 > v45)
    {
      while ((*a3)[*(a1 + 224) - 1 + v39] < -64)
      {
        v47 = --v39;
        if (v39 <= v46)
        {
          goto LABEL_42;
        }
      }

      v47 = v39;
    }

LABEL_42:
    v202 = (a1 + 256);
    if (v47 > v46)
    {
      v48 = v39;
      do
      {
        v49 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &(*a3)[v48 - 1 + *(a1 + 224)]);
        v45 = HIWORD(v239);
        if (!v49)
        {
          break;
        }

        LOWORD(v239) = --v48;
        v50 = v48;
        if (v48 > HIWORD(v239))
        {
          while ((*a3)[*(a1 + 224) - 1 + v48] < -64)
          {
            v50 = --v48;
            if (v48 <= HIWORD(v239))
            {
              goto LABEL_50;
            }
          }

          v50 = v48;
        }

LABEL_50:
        ;
      }

      while (v50 > HIWORD(v239));
    }

    v204 = v41;
    v221 = a8;
    v51 = 0;
    v211 = 0;
    v209 = v33 + 100;
    v208 = (a1 + 168);
    v207 = (a1 + 176);
    v52 = 1;
    v53 = 1;
LABEL_52:
    v54 = v243;
    if (v243 == v221)
    {
      goto LABEL_124;
    }

    v55 = v53 == 0;
    while (1)
    {
      started = (*(*(a1 + 56) + 168))(a5, a6, v54, 0, 1, &v242, &v241 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      if (!v242)
      {
        if (v55)
        {
          started = (*(*(a1 + 56) + 168))(a5, a6, v243, 1, 1, &v240 + 2, &v241 + 2);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          DepesLayersForWordAndPOS = 2310021130;
          v58 = HIWORD(v240) - v45;
          if (v58 >= 1 && !dynamic_strncat(v215, &(*a3)[v45 + *(a1 + 224)], v58, v218, *(*a1 + 8)) || *(a1 + 292) && !dynamic_strcat(v215, "+", v218, *(*a1 + 8)))
          {
            goto LABEL_493;
          }

          v53 = 0;
          v45 = HIWORD(v240);
        }

        else
        {
          v53 = 0;
        }

LABEL_119:
        DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, v243, &v243);
        if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
        {
          goto LABEL_493;
        }

        goto LABEL_52;
      }

      if (*(a1 + 276))
      {
        goto LABEL_118;
      }

      if (v242 != 8 && v242 != 4)
      {
        goto LABEL_118;
      }

      started = (*(*(a1 + 56) + 168))(a5, a6, v243, 1, 1, &v240 + 2, &v241 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      started = (*(*(a1 + 56) + 168))(a5, a6, v243, 2, 1, &v240, &v241 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      started = (*(*(a1 + 56) + 168))(a5, a6, v243, 7, 1, &v235, &v241 + 2);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      if (a15 && !*(a1 + 2068))
      {
        v235 = ~v235;
      }

      if (v240 != v45)
      {
        break;
      }

      if (!v51 || *(a1 + 2192))
      {
        goto LABEL_118;
      }

      if (v235 >= v52)
      {
        if (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068)))
        {
          started = (*(*(a1 + 56) + 192))(a5, a6, v247[v51 - 1]);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }
        }

        v64 = v247[v51 - 1];
        v65 = v243;
        if (v244 == v64)
        {
          v244 = v243;
        }

        if (*(a1 + 280) == v64)
        {
          *(a1 + 280) = v243;
        }

        v247[v51 - 1] = v65;
        if (a15 && !*(a1 + 2068))
        {
          v52 = v235;
        }

LABEL_118:
        v53 = 1;
        goto LABEL_119;
      }

      v57 = v243;
      started = (*(*(a1 + 56) + 120))(a5, a6, v243, &v243);
      if ((started & 0x80000000) != 0)
      {
        goto LABEL_492;
      }

      if (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068)))
      {
        started = (*(*(a1 + 56) + 192))(a5, a6, v57);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }
      }

      if (a15 && !*(a1 + 2068))
      {
        v235 = v52;
      }

      v55 = 0;
      v54 = v243;
      if (v243 == v221)
      {
        v53 = 1;
LABEL_124:
        v66 = (*(*(a1 + 56) + 168))(a5, a6, v221, 0, 1, &v242, &v241 + 2);
        v67 = v217;
        if ((v66 & 0x80000000) != 0)
        {
          goto LABEL_145;
        }

        if (v242 | v53)
        {
          goto LABEL_126;
        }

        v66 = (*(*(a1 + 56) + 168))(a5, a6, v243, 1, 1, &v240 + 2, &v241 + 2);
        if ((v66 & 0x80000000) != 0)
        {
          goto LABEL_145;
        }

        DepesLayersForWordAndPOS = 2310021130;
        v75 = HIWORD(v240) - v45;
        if (v75 >= 1 && !dynamic_strncat(v215, &(*a3)[v45 + *(a1 + 224)], v75, v218, *(*a1 + 8)) || *(a1 + 292) && !dynamic_strcat(v215, "+", v218, *(*a1 + 8)))
        {
          goto LABEL_493;
        }

        v45 = HIWORD(v240);
        v67 = v217;
LABEL_126:
        v68 = v239 - v45;
        if (v68 >= 1 && !dynamic_strncat(v215, &(*a3)[v45 + *(a1 + 224)], v68, v218, *(*a1 + 8)))
        {
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_493;
        }

        if (!a13)
        {
          v76 = *v215;
          v77 = strlen(*v215);
          if (v77 - 128 >= 0xFFFFFFFFFFFFFF7FLL)
          {
            DepesLayersForWordAndPOS = v66;
            v78 = *(a1 + 232);
          }

          else
          {
            v78 = heap_Realloc(*(*a1 + 8), *(a1 + 232), (v77 + 1));
            if (!v78)
            {
              goto LABEL_427;
            }

            DepesLayersForWordAndPOS = v66;
            *(a1 + 232) = v78;
            v76 = *(a1 + 160);
          }

          strcpy(v78, v76);
          v79 = 0;
          v80 = strlen(*v215) + 1;
          goto LABEL_154;
        }

        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, *(a1 + 160));
        v69 = strlen(*(a1 + 160));
        started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v69);
        if ((started & 0x80000000) != 0)
        {
          goto LABEL_492;
        }

        if (strcmp(__s1, "normal") && strlen(__s1) + v222 + 2 <= 0x7F)
        {
          __strcat_chk();
          __strcat_chk();
        }

        if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
        {
          __s[v222] = 0;
          started = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }
        }

        v66 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v236);
        if ((v66 & 0x80000000) != 0)
        {
LABEL_145:
          DepesLayersForWordAndPOS = v66;
          goto LABEL_493;
        }

        __src[v236] = 0;
        v70 = strlen(__src);
        v71 = strlen(*(a1 + 160));
        v72 = count_inserted_oneword_bytes(__src);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, __src);
        if (v236 > 0x7FuLL)
        {
          v73 = heap_Realloc(*(*a1 + 8), *(a1 + 232), v236 + 1);
          if (v73)
          {
            v74 = v70;
            DepesLayersForWordAndPOS = v66;
            *(a1 + 232) = v73;
            goto LABEL_153;
          }

LABEL_427:
          DepesLayersForWordAndPOS = 2310021130;
          goto LABEL_428;
        }

        v74 = v70;
        DepesLayersForWordAndPOS = v66;
        v73 = *(a1 + 232);
LABEL_153:
        v79 = (v74 - (v72 + v71)) & ~((v74 - (v72 + v71)) >> 31);
        strcpy(v73, __src);
        v80 = v236;
LABEL_154:
        v81 = __s1;
        if (v80)
        {
          v82 = 0;
          v194 = 0;
          v195 = v80 - 2;
          v192 = 0;
          v193 = -v80;
          v198 = 0;
          v199 = 0;
          v210 = v80;
          while (1)
          {
            v205 = v79;
            v83 = *(a1 + 232);
            v212 = v82;
            v84 = (v83 + v82);
            v85 = *v84;
            v223 = v82;
            if (v85 != 226 || *(v84 + 1) != 134 || *(v84 + 2) != 149)
            {
              break;
            }

            if (!strcmp(__s1, "prompt") || !strcmp(__s1, "internal-nuance-system-norm"))
            {
              v90 = 1;
              goto LABEL_169;
            }

            v86 = v82 + 3;
            v87 = v82 + 3;
            if ((v82 + 3) < v210)
            {
              v88 = -v86;
              v89 = (v83 + v86);
              while (*v89 != 226 || v89[1] != 134 || v89[2] != 149)
              {
                --v88;
                ++v89;
                if (v193 == v88)
                {
                  v87 = v210;
                  goto LABEL_363;
                }
              }

              v87 = -v88;
            }

LABEL_363:
            v224 = v87;
            v145 = v87;
            v201 = *(v83 + v87);
            *(v83 + v87) = 0;
            v146 = *(a1 + 232) + v82;
            v147 = strlen((v146 + 3));
            started = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), __s1, v146 + 3, (v147 + 1));
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            strcpy(*(a1 + 160), (*(a1 + 232) + v82 + 3));
            strcpy(__s, "spell_acronym");
            v148 = strlen(__s);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, *(a1 + 160));
            v149 = strlen(*(a1 + 160));
            started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v149);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            if (strcmp(__s1, "normal") && strlen(__s1) + v148 + 2 <= 0x7F)
            {
              __strcat_chk();
              __strcat_chk();
            }

            if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) != 0)
            {
              __s[v148] = 0;
              started = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }
            }

            started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v236);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            __src[v236] = 0;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, __src);
            v150 = strlen(__src);
            v151 = strlen(*(a1 + 160));
            *(*(a1 + 232) + v145) = v201;
            v152 = (v205 + v150 - v151);
            v153 = *a3;
            v213 = v152;
            if (v152 <= 0)
            {
              v155 = v152 + 1;
            }

            else
            {
              v154 = strlen(v153);
              v155 = v152 + 1;
              v156 = heap_Realloc(*(*a1 + 8), v153, (v155 + v154));
              if (!v156)
              {
                goto LABEL_427;
              }

              v153 = v156;
              *a3 = v156;
            }

            v157 = *(a1 + 224);
            v158 = (HIWORD(v239) + *(a1 + 224) + strlen(__src));
            if (v158 > (v155 + strlen(v153)))
            {
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0);
              DepesLayersForWordAndPOS = 2310021127;
              goto LABEL_493;
            }

            v159 = *(a1 + 224);
            v160 = HIWORD(v239) - v205 + strlen(*v215);
            LOWORD(v239) = v160;
            v161 = v221;
            if (v213 < 1)
            {
              if (v213 < 0)
              {
                v166 = v160 + v159;
                v167 = (v160 + v159);
                if (v167 <= strlen(v153))
                {
                  do
                  {
                    v153[v167 + v213] = v153[v166++];
                    v167 = v166;
                    v153 = *a3;
                  }

                  while (v166 <= strlen(*a3));
                  LOWORD(v159) = *(a1 + 224);
                }

                v161 = v221;
              }

              v164 = a10;
            }

            else
            {
              v162 = strlen(v153);
              v163 = v157 + v160;
              v164 = a10;
              if (v163 <= v162)
              {
                v165 = v162;
                do
                {
                  (*a3)[v165 + v213] = (*a3)[v162--];
                  v165 = v162;
                }

                while (*(a1 + 224) + v239 <= v162);
                LOWORD(v159) = *(a1 + 224);
                v153 = *a3;
              }
            }

            v168 = strlen(__src);
            memcpy(&v153[HIWORD(v239) + v159], __src, v168);
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Normalizing to: %s", *a3);
            HIWORD(v239) += strlen(*(a1 + 160));
            v169 = *v164;
            if (v169 < *a11)
            {
              v170 = v239;
              v171 = (a9 + 12 + 32 * v169);
              do
              {
                if (v170 <= (*v171 - a12))
                {
                  break;
                }

                *v171 += *(a1 + 224);
                v171 += 8;
                *v164 = ++v169;
              }

              while (v169 < *a11);
            }

            LOWORD(v230[0]) = 0;
            LOWORD(v229) = 0;
            LOWORD(v228) = 0;
            LOWORD(v227) = 0;
            if (*(a1 + 2272) == 1)
            {
              started = hlp_RemoveMNCRecords(a1, a5, a6, a3, v244, v161, v213);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }
            }

            started = (*(*(a1 + 56) + 104))(a5, a6, 1, 0, &v227);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            started = (*(*(a1 + 56) + 104))(a5, a6, 2, v227, &v228);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            while (v228 != *(a1 + 280))
            {
              started = (*(*(a1 + 56) + 168))(a5, a6);
              if ((started & 0x80000000) == 0)
              {
                if (v229 - *(a1 + 224) >= v239)
                {
                  LOWORD(v229) = v229 + v213;
                }

                started = (*(*(a1 + 56) + 160))(a5, a6, v228, 2, 1, &v229, &v241);
                if ((started & 0x80000000) == 0)
                {
                  started = (*(*(a1 + 56) + 120))(a5, a6, v228, &v228);
                  if ((started & 0x80000000) == 0)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_492;
            }

            if (v228)
            {
LABEL_403:
              started = (*(*(a1 + 56) + 168))(a5, a6);
              if ((started & 0x80000000) == 0)
              {
                goto LABEL_404;
              }

              goto LABEL_492;
            }

LABEL_404:
            while (LOWORD(v230[0]) < v239 && *(a1 + 280))
            {
              started = (*(*(a1 + 56) + 168))(a5, a6);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              if ((v242 & 0xFFFFFFFC) == 4 || (v242 - 9) <= 1)
              {
                started = (*(*(a1 + 56) + 168))(a5, a6, *(a1 + 280), 2, 1, &v229, &v241 + 2);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                v173 = *(a1 + 224);
                LOWORD(v230[0]) += v173;
                v174 = v213;
                if (v229 < v239)
                {
                  v174 = 0;
                }

                LOWORD(v229) = v229 + v173 + v174;
                started = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 1, 1, v230, &v241);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                started = (*(*(a1 + 56) + 160))(a5, a6, *(a1 + 280), 2, 1, &v229, &v241);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }
              }

              started = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              if (*(a1 + 280))
              {
                started = (*(*(a1 + 56) + 168))(a5, a6);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                if (LOWORD(v230[0]) >= v239)
                {
                  while (*(a1 + 280))
                  {
                    started = (*(*(a1 + 56) + 168))(a5, a6);
                    if ((started & 0x80000000) != 0)
                    {
                      goto LABEL_492;
                    }

                    if (v242 != 17)
                    {
                      break;
                    }

                    DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6, *(a1 + 280), a1 + 280);
                    if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                    {
                      goto LABEL_493;
                    }
                  }

                  goto LABEL_403;
                }
              }
            }

            *(a1 + 224) += v213;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD SPELLACRONYM %s", *(a1 + 232));
            DepesLayersForWordAndPOS = oneword_TranscribeAcronym(a1, __s1, __src, &v234, v246);
            if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
            {
              goto LABEL_493;
            }

            WORD2(v192) += v213;
            LODWORD(v192) = 1;
            v81 = __s1;
            v67 = v217;
            v94 = v224;
            v79 = v205;
LABEL_341:
            v82 = v94 + utf8_determineUTF8CharLength(*(*(a1 + 232) + v94));
            if (v82 >= v210)
            {
              v187 = v194 == 0;
              v188 = WORD2(v192);
              v189 = v192 != 0;
              v190 = v199;
              goto LABEL_430;
            }
          }

          v90 = 0;
LABEL_169:
          v91 = *(a1 + 2192);
          if (v91 && *(a1 + 2248))
          {
LABEL_178:
            if (v85 == 194 && *(v84 + 1) == 167)
            {
              v92 = 2;
LABEL_221:
              v94 = v223 + 1;
              if (v210 <= (v223 + 1))
              {
                v108 = (v223 + 1);
              }

              else
              {
                v108 = v210;
              }

              if ((v223 + 1) < v210)
              {
                do
                {
                  v109 = v94;
                  v110 = (v83 + v94);
                  v111 = *v110;
                  if (v111 == 226)
                  {
                    if (v110[1] == 134 && v110[2] == 149)
                    {
                      goto LABEL_233;
                    }
                  }

                  else if (v111 == 194 && v110[1] == 167)
                  {
                    goto LABEL_233;
                  }

                  ++v94;
                }

                while (v94 < v210);
              }

              v109 = v108;
              v94 = v108;
LABEL_233:
              *(v83 + v109) = 0;
              strncpy(__dst, (*(a1 + 232) + v212 + v92), 0x7FuLL);
              __dst[128] = 0;
              started = (*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), "normal", __dst, 128);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), v225);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_WordAnalysis(*(a1 + 48));
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_SkipToFirstOptimalReading(*(a1 + 48), v225);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_GetReading(*(a1 + 48), v225, 0, &v233, (a2 + 15000), 5000, (a2 + 5000), 5000, &v232);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = mosynt_SubstAllSubstrOcc((a2 + 5000), "~", "¡", (a2 + 10000), 5000);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              __strcpy_chk();
              if (v233)
              {
                *(a2 + 15000) = 0;
                *(a2 + 20000) = 42;
                v234 = 32;
                started = oneword_AppendPhon(a1, (a2 + 5000), (a2 + 15000), a2 + 20000, 32, 1);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }
              }

              started = mosynt_FinishWordAnalysis(*(a1 + 48), v225);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              DepesLayersForWordAndPOS = mosynt_ResetMosyntWS(*(a1 + 48), a2);
              v67 = v217;
              v81 = __s1;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_493;
              }

              v79 = 0;
              HIWORD(v239) += strlen(*v215);
              goto LABEL_341;
            }

            if (v90 && (!strcmp(__s1, "prompt") || !strcmp(__s1, "internal-nuance-system-norm")))
            {
              v92 = 3;
              goto LABEL_221;
            }

            goto LABEL_184;
          }

          if ((v85 != 194 || *(v84 + 1) != 167) && (!v90 || strcmp(__s1, "prompt") && strcmp(__s1, "internal-nuance-system-norm")))
          {
            if (v91 && *(a1 + 2248))
            {
              goto LABEL_178;
            }

LABEL_184:
            if (v85 == 226 && *(v84 + 1) == 151 && *(v84 + 2) == 132)
            {
              v229 = 0;
              *v230 = 0;
              v227 = 0;
              v228 = 0;
              v226 = 4;
              v93 = v223 + 3;
              v94 = v223 + 3;
              v67 = v217;
              if ((v223 + 3) < v210)
              {
                v95 = HIWORD(v239);
                v96 = -v93;
                v97 = (v83 + v93);
                while (*v97 != 226 || v97[1] != 151 || v97[2] != 132)
                {
                  HIWORD(v239) = ++v95;
                  --v96;
                  ++v97;
                  if (v193 == v96)
                  {
                    v94 = v210;
                    goto LABEL_345;
                  }
                }

                v94 = -v96;
              }

LABEL_345:
              v139 = v247[v199];
              started = (*(*(a1 + 56) + 176))(a5, a6, v139, 3, v230, &v241 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = (*(*(a1 + 56) + 176))(a5, a6, v139, 5, &v229, &v241 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = (*(*(a1 + 56) + 176))(a5, a6, v139, 6, &v228, &v241 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = (*(*(a1 + 56) + 168))(a5, a6, v139, 0, 1, &v226, &v241 + 2);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              if ((v199 & 0x80) != 0)
              {
                DepesLayersForWordAndPOS = 2310021632;
                goto LABEL_493;
              }

              DepesLayersForWordAndPOS = (*(*(a1 + 56) + 176))(a5, a6, v139, 9, &v227, &v241 + 2);
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_493;
              }

              strncpy(v246, v227, 0x14uLL);
              if (v246[0])
              {
                v140 = v246[0];
              }

              else
              {
                v140 = 32;
              }

              v234 = v140;
              v81 = __s1;
              if (v226 == 4)
              {
                if (**v230 != 95 || *(*v230 + 1))
                {
                  v142 = v228;
                  v141 = v229;
                  v143 = a1;
                  v144 = 1;
                  goto LABEL_359;
                }
              }

              else
              {
                v142 = v228;
                v141 = v229;
                v143 = a1;
                v144 = 0;
LABEL_359:
                started = oneword_AppendPhon(v143, *v230, v141, v142, v140, v144);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_492;
                }

                DepesLayersForWordAndPOS = 0;
              }

              v79 = 0;
              ++v199;
              goto LABEL_341;
            }

            utf8_ToLower(v84, 0, v230);
            started = oneword_AppendPhon(a1, v230, "", "", 32, 0);
            v67 = v217;
            v94 = v223;
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            v79 = 0;
            DepesLayersForWordAndPOS = 0;
            HIWORD(v239) += utf8_determineUTF8CharLength(*(*(a1 + 232) + v212));
LABEL_340:
            v81 = __s1;
            goto LABEL_341;
          }

          v229 = 0;
          *v230 = 0;
          v94 = v223;
          if (*v84 == 194)
          {
            v98 = 2;
            if (*(v84 + 1) != 167)
            {
              v98 = 3;
            }
          }

          else
          {
            v98 = 3;
          }

          v99 = v223 + 1;
          if (v210 <= (v223 + 1))
          {
            v100 = (v223 + 1);
          }

          else
          {
            v100 = v210;
          }

          if ((v223 + 1) < v210)
          {
            do
            {
              v101 = v94;
              v94 = v99;
              v102 = v99;
              v103 = (v83 + v99);
              v104 = *v103;
              if (v104 == 226)
              {
                if (v103[1] == 134 && v103[2] == 149)
                {
                  goto LABEL_213;
                }
              }

              else if (v104 == 194 && v103[1] == 167)
              {
                goto LABEL_213;
              }

              v99 = v94 + 1;
            }

            while ((v94 + 1) < v210);
          }

          v101 = v100 - 1;
          LOBYTE(v104) = *(v83 + v100);
          v102 = v100;
          v94 = v100;
LABEL_213:
          *(v83 + v102) = 0;
          v197 = v102;
          v196 = v104;
          v200 = v101;
          if (*(a1 + 2004))
          {
            v105 = *a11;
            if (v105 >= 2)
            {
              v106 = v105 - 1;
              v107 = (a9 + 56);
              while (*(v107 - 6) != 58 || *(v107 - 3) + v204 - *(a9 + 12) != HIWORD(v239))
              {
                v107 += 4;
                if (!--v106)
                {
                  goto LABEL_247;
                }
              }

              v198 = *v107;
            }

LABEL_247:
            v113 = v212 + v98;
            DepesLayersForWordAndPOS = getDepesLayersForWordAndPOS(a1, __s1, (*(a1 + 232) + v212 + v98), v198);
            v112 = (*(a1 + 232) + v113);
          }

          else
          {
            DepesLayersForWordAndPOS = mde_stemafx_Main(a1, __s1, (*(a1 + 232) + v212 + v98));
            v112 = *(a1 + 160);
          }

          HIWORD(v239) += strlen(v112);
          if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
          {
            goto LABEL_493;
          }

          strcpy(__s, "one_word");
          v206 = strlen(__s);
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, *(a1 + 160));
          v114 = strlen(*(a1 + 160));
          started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v114);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", __s, *(a1 + 168));
          v115 = strlen(*(a1 + 168));
          started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 2, *(a1 + 168), v115);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", __s, *(a1 + 176));
          v116 = strlen(*(a1 + 176));
          started = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 3, *(a1 + 176), v116);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          v117 = __s1;
          if (strcmp(__s1, "normal") && (ssftmap_FindReadOnly(*(a1 + 568), __s1, &v229) & 0x80000000) == 0)
          {
            if (!v223 && v195 == v94)
            {
              started = (*(*(a1 + 56) + 88))(a5, a6, v244, &v243);
              v67 = v217;
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = dt_Main(a1, v243, a5, a6, *(v229 + 16), __s1);
              DepesLayersForWordAndPOS = (started & 0x1FFF) == 0x10A ? 0 : started;
              v118 = v203;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              v194 = 1;
LABEL_267:
              v120 = (*(a1 + 232) + v212);
              if (*v120 == 194 && v120[1] == 167)
              {
                oneword_ReplaceUnderscoreWithDot(*v220);
                DepesLayersForWordAndPOS = 0;
              }

              if (*(a1 + 560))
              {
                if (v67)
                {
                  v234 = v118;
                  v121 = v67;
                  goto LABEL_294;
                }
              }

              else
              {
                v121 = __s1;
                v234 = *__s1;
LABEL_294:
                strncpy(v246, v121, 0x14uLL);
              }

LABEL_301:
              v94 = v200 + 2;
LABEL_339:
              v79 = 0;
              goto LABEL_340;
            }

            v119 = dt_Main(a1, 0, a5, a6, *(v229 + 16), __s1);
            if ((v119 & 0x1FFF) == 0x10A)
            {
              DepesLayersForWordAndPOS = 0;
LABEL_266:
              v118 = v203;
              v67 = v217;
              goto LABEL_267;
            }

            v117 = __s1;
            if ((v119 & 0x80000000) == 0)
            {
              DepesLayersForWordAndPOS = v119;
              goto LABEL_266;
            }
          }

          if (strcmp(v117, "normal"))
          {
            if (strlen(v117) + v206 + 2 <= 0x7F)
            {
              __strcat_chk();
              __strcat_chk();
              if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) == 0)
              {
                if (*(a1 + 560))
                {
                  if (v217)
                  {
                    v234 = v203;
                    strncpy(v246, v217, 0x14uLL);
                  }
                }

                else
                {
                  v234 = *__s1;
                  strncpy(v246, __s1, 0x14uLL);
                }

                goto LABEL_309;
              }
            }
          }

          LODWORD(v228) = 0;
          if (*(a1 + 928) && strlen(__s1) >= 2 && !strchr(__s1, 95))
          {
            started = oneword_Lid(a1, &v228);
            if ((started & 0x80000000) != 0)
            {
              goto LABEL_492;
            }

            if (v228)
            {
              __s[v206] = 0;
LABEL_307:
              __strcat_chk();
              v234 = 101;
              strcpy(v246, "e");
LABEL_308:
              started = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

LABEL_309:
              started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &__src, &v236);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              __src[v236] = 0;
              started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v237, &v236);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              v237[v236] = 0;
              started = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 4, v230, &v236);
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              *(*v230 + v236) = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, __src);
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O3: %s", __s, v237);
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O5: %s", __s, *v230);
              v125 = __src;
              if (strlen(__src))
              {
                v126 = 0;
                do
                {
                  v127 = &v125[v126];
                  v128 = *v127;
                  if (v128 == 194)
                  {
                    if (v127[1] == 161)
                    {
                      v130 = strlen(v127 + 2);
                      memmove(v127 + 1, v127 + 2, v130 + 1);
                      __src[v126] = 126;
                    }
                  }

                  else if (v128 == 126)
                  {
                    v129 = strlen(v127 + 1);
                    memmove(v127, v127 + 1, (v129 + 1));
                    --v126;
                  }

                  ++v126;
                  v125 = __src;
                }

                while (strlen(__src) > v126);
              }

              v131 = 0;
              *(*(a1 + 232) + v197) = v196;
              v132 = v237;
              while (1)
              {
                v133 = v131;
                v134 = v237[v131];
                if (v134 != 32 && v134 != 126)
                {
                  break;
                }

                ++v131;
              }

              if (v237[v131])
              {
                while (v134 != 32 && v134 != 126)
                {
                  LOBYTE(v134) = v237[++v131];
                }

                v237[v131] = 0;
                v132 = v237;
              }

              v135 = 0;
              v136 = *v230;
              while (1)
              {
                v137 = v135;
                v138 = *(*v230 + v135);
                if (v138 != 32 && v138 != 126)
                {
                  break;
                }

                ++v135;
              }

              if (*(*v230 + v135))
              {
                while (v138 != 32 && v138 != 126)
                {
                  LOBYTE(v138) = *(*v230 + ++v135);
                }

                *(*v230 + v135) = 0;
                v136 = *v230;
              }

              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD ONEWORDGRAMMAR %s", *(a1 + 232));
              started = oneword_AppendPhon(a1, __src, &v132[v133], &v136[v137], v234, 1);
              DepesLayersForWordAndPOS = 0;
              v67 = v217;
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              goto LABEL_339;
            }
          }

          if ((ssftmap_FindReadOnly(*(a1 + 568), "normal", &v229) & 0x80000000) == 0)
          {
            if (!v223 && v195 == v94)
            {
              started = (*(*(a1 + 56) + 88))(a5, a6, v244, &v243);
              v67 = v217;
              if ((started & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              started = dt_Main(a1, v243, a5, a6, *(v229 + 16), __s1);
              DepesLayersForWordAndPOS = (started & 0x1FFF) == 0x10A ? 0 : started;
              if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
              {
                goto LABEL_492;
              }

              v194 = 1;
              goto LABEL_298;
            }

            v122 = dt_Main(a1, 0, a5, a6, *(v229 + 16), __s1);
            if ((v122 & 0x1FFF) == 0x10A)
            {
              DepesLayersForWordAndPOS = 0;
LABEL_297:
              v67 = v217;
LABEL_298:
              v123 = (*(a1 + 232) + v212);
              if (*v123 == 194 && v123[1] == 167)
              {
                oneword_ReplaceUnderscoreWithDot(*v220);
                DepesLayersForWordAndPOS = 0;
              }

              goto LABEL_301;
            }

            if ((v122 & 0x80000000) == 0)
            {
              DepesLayersForWordAndPOS = v122;
              goto LABEL_297;
            }
          }

          v124 = v228;
          __s[v206] = 0;
          if (v124)
          {
            goto LABEL_307;
          }

          goto LABEL_308;
        }

        v188 = 0;
        v190 = 0;
        v189 = 0;
        v187 = 1;
LABEL_430:
        if (v234 == 32)
        {
          v175 = 0;
        }

        else
        {
          v175 = v234;
        }

        *(a1 + 272) = 0;
        *(a1 + 276) = 0;
        if (*(a1 + 2172) == 1 && (*(a1 + 2068) == 1 || !v190))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s", "skipping crosstoken grammar");
          goto LABEL_493;
        }

        if (v187)
        {
          started = oneword_crosstoken(*a1, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), v81, v175, v203, v67, v246, *(a1 + 2176), v215, v208, v207, (a1 + 184), v218, v216, v214, (a1 + 216), v220, (a1 + 248), v202, (a1 + 264));
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }

          started = (*(*(a1 + 56) + 88))(a5, a6, v244, &v243);
          if ((started & 0x80000000) != 0)
          {
            goto LABEL_492;
          }
        }

        else
        {
          *(*(a1 + 248) + 1) = 0;
          *(*v202 + 1) = 0;
        }

        started = (*(*(a1 + 56) + 168))(a5, a6, v244, 0, 1, &v242, &v241 + 2);
        if ((started & 0x80000000) == 0)
        {
          started = (*(*(a1 + 56) + 168))(a5, a6, v244, 1, 1, &v240 + 2, &v241 + 2);
          if ((started & 0x80000000) == 0)
          {
            if (v242 != 4 && v189)
            {
              HIWORD(v240) = HIWORD(v240) - v188 + *(a1 + 224);
            }

            started = (*(*(a1 + 56) + 160))(a5, a6, v243, 1, 1, &v240 + 2, &v241);
            if ((started & 0x80000000) == 0)
            {
              v242 = 9;
              started = (*(*(a1 + 56) + 160))(a5, a6, v243, 0, 1, &v242, &v241);
              if ((started & 0x80000000) == 0)
              {
                started = (*(*(a1 + 56) + 168))(a5, a6, v221, 2, 1, &v240, &v241 + 2);
                if ((started & 0x80000000) == 0)
                {
                  v177 = v240;
                  if (v189)
                  {
                    v177 = v240 - v188 + *(a1 + 224);
                  }

                  LOWORD(v240) = v177 + v188;
                  started = (*(*(a1 + 56) + 160))(a5, a6, v243, 2, 1, &v240, &v241);
                  if ((started & 0x80000000) == 0)
                  {
                    v178 = strlen(*(a1 + 240));
                    started = (*(*(a1 + 56) + 160))(a5, a6, v243, 3, (v178 + 1), *(a1 + 240), &v241);
                    if ((started & 0x80000000) == 0)
                    {
                      v179 = strlen(*(a1 + 248));
                      started = (*(*(a1 + 56) + 160))(a5, a6, v243, 5, (v179 + 1), *(a1 + 248), &v241);
                      if ((started & 0x80000000) == 0)
                      {
                        v180 = strlen(*(a1 + 256));
                        started = (*(*(a1 + 56) + 160))(a5, a6, v243, 6, (v180 + 1), *(a1 + 256), &v241);
                        if ((started & 0x80000000) == 0)
                        {
                          if (a15 && !*(a1 + 2068) && v235 >= 2u)
                          {
                            v235 = ~v235;
                          }

                          started = (*(*(a1 + 56) + 160))(a5, a6, v243, 7, 1, &v235, &v241);
                          if ((started & 0x80000000) == 0)
                          {
                            if (*(a1 + 1204))
                            {
                              if (*v246 == 1836216174 && *&v246[3] == 7102829)
                              {
                                __strcpy_chk();
                                for (i = 0; i != 3; ++i)
                                {
                                  v246[i] = ssft_tolower(v246[i]);
                                }
                              }
                            }

                            v183 = strlen(v246);
                            DepesLayersForWordAndPOS = (*(*(a1 + 56) + 160))(a5, a6, v243, 9, (v183 + 1), v246, &v241);
                            if ((DepesLayersForWordAndPOS & 0x80000000) == 0)
                            {
                              if (v190)
                              {
                                v184 = v247;
                                while (1)
                                {
                                  v186 = *v184++;
                                  v185 = v186;
                                  if (*(a1 + 280) == v186)
                                  {
                                    DepesLayersForWordAndPOS = (*(*(a1 + 56) + 120))(a5, a6);
                                    if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                    {
                                      break;
                                    }
                                  }

                                  if (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068)))
                                  {
                                    DepesLayersForWordAndPOS = (*(*(a1 + 56) + 192))(a5, a6, v185);
                                    if ((DepesLayersForWordAndPOS & 0x80000000) != 0)
                                    {
                                      break;
                                    }
                                  }

                                  if (!--v190)
                                  {
                                    goto LABEL_487;
                                  }
                                }
                              }

                              else
                              {
LABEL_487:
                                if (HIWORD(v240) == v240 && (!a14 || a14 == 1 && (strstr(__s1, "latin") || !*(a1 + 2068))))
                                {
                                  started = (*(*(a1 + 56) + 192))(a5, a6, v243);
                                  goto LABEL_492;
                                }
                              }
                            }

                            goto LABEL_493;
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

LABEL_492:
        DepesLayersForWordAndPOS = started;
        goto LABEL_493;
      }
    }

    DepesLayersForWordAndPOS = 2310021130;
    if ((v51 & 0x80) != 0)
    {
      DepesLayersForWordAndPOS = 2310021632;
      goto LABEL_493;
    }

    v52 = v235;
    v247[v51] = v243;
    v59 = HIWORD(v240) - v45;
    if (v59 < 1 || dynamic_strncat(v215, &(*a3)[v45 + *(a1 + 224)], v59, v218, *(*a1 + 8)))
    {
      v60 = v209 + 300 * v211;
      if (v60 <= *v218)
      {
        goto LABEL_97;
      }

      v61 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v209 + 300 * v211);
      if (!v61)
      {
        goto LABEL_428;
      }

      *v215 = v61;
      *v218 = v60;
LABEL_97:
      if (v60 > *v216)
      {
        v62 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v60);
        if (v62)
        {
          *v208 = v62;
          *v216 = v60;
          goto LABEL_100;
        }

LABEL_428:
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
        goto LABEL_493;
      }

LABEL_100:
      if (v60 > *v214)
      {
        v63 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v60);
        if (!v63)
        {
          goto LABEL_428;
        }

        *v207 = v63;
        *v214 = v60;
      }

      if (!dynamic_strcat(v215, "◄", v218, *(*a1 + 8)) || !dynamic_strncat(v215, &(*a3)[HIWORD(v240) + *(a1 + 224)], v240 - HIWORD(v240), v218, *(*a1 + 8)) || !dynamic_strcat(v215, "◄", v218, *(*a1 + 8)))
      {
        goto LABEL_493;
      }

      ++v51;
      v211 += 2;
      v53 = 1;
      v45 = v240;
      goto LABEL_119;
    }

LABEL_493:
    heap_Free(*(*a1 + 8), v225);
  }

  else
  {
    DepesLayersForWordAndPOS = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
  }

  return DepesLayersForWordAndPOS;
}

uint64_t oneword_joinTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, int a6)
{
  v8 = a4;
  v29 = a4;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v12 = *a5;
  v22 = 0;
  result = (*(*(a1 + 56) + 168))(a2, a3, a4, 1, 1, &v22, &v27 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v23 = v22;
  if (v8)
  {
    while (1)
    {
      v14 = v8;
      result = (*(*(a1 + 56) + 136))(a2, a3, v8, &v29);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!v29)
      {
        goto LABEL_13;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      LOWORD(v8) = v29;
      if (v23 != v22 || v29 == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v14 = 0;
LABEL_13:
  v29 = v14;
  if (v12 == v14)
  {
    result = (*(*(a1 + 56) + 168))(a2, a3, v12, 0, 1, &v28, &v27 + 2);
    if ((result & 0x80000000) == 0 && v28 == 8)
    {
      v28 = 9;
      return (*(*(a1 + 56) + 160))(a2, a3, v29, 0, 1, &v28, &v27);
    }

    return result;
  }

  LOWORD(v16) = 0;
  v24 = v14;
  while (1)
  {
    v17 = *(*(a1 + 56) + 168);
    if (v24 == v12)
    {
      break;
    }

    result = v17(a2, a3);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v28 == 8 || v28 == 4)
    {
      if (v16)
      {
        if (v26 == HIWORD(v25))
        {
          result = (*(*(a1 + 56) + 192))(a2, a3, v16);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v19 = v24;
          if (*(a1 + 280) == v16)
          {
            *(a1 + 280) = v24;
          }

          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v19, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (a6)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        else
        {
          v28 = 9;
          result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          HIWORD(v26) = HIWORD(v25);
        }

        LOWORD(v26) = v25;
        LOWORD(v16) = v24;
      }

      else
      {
        v16 = v24;
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v26 + 2, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 168))(a2, a3, v16, 2, 1, &v26, &v27 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    result = (*(*(a1 + 56) + 120))(a2, a3, v24, &v24);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 168))(a2, a3, v24, 0, 1, &v28, &v27 + 2);
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    return result;
  }

  result = (v17)(a2, a3, v12, 0, 1, &v28, &v27 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (v28 != 8 && v28 != 4)
    {
      if (!v16)
      {
        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      goto LABEL_69;
    }

    if (v16)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 1, 1, &v25 + 2, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 56) + 168))(a2, a3, v24, 2, 1, &v25, &v27 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v26 == HIWORD(v25))
      {
        result = (*(*(a1 + 56) + 192))(a2, a3, v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v21 = v24;
        if (*(a1 + 280) == v16)
        {
          *(a1 + 280) = v24;
        }

        v28 = 9;
        result = (*(*(a1 + 56) + 160))(a2, a3, v21, 0, 1, &v28, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 1, 1, &v26 + 2, &v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!a6)
        {
LABEL_70:
          *a5 = v24;
          return result;
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, v24, 3, 1, "", &v27);
LABEL_69:
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_70;
      }

      v28 = 9;
      result = (*(*(a1 + 56) + 160))(a2, a3, v16, 0, 1, &v28, &v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      v28 = 9;
    }

    result = (*(*(a1 + 56) + 160))(a2, a3, v24, 0, 1, &v28, &v27);
    goto LABEL_69;
  }

  return result;
}

uint64_t count_inserted_oneword_bytes(const char *a1)
{
  if (a1)
  {
    v2 = strlen(a1);
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = &a1[v5];
        v7 = *v6;
        if (v7 == 194)
        {
          break;
        }

        if (v7 == 226 && *(v6 + 1) == 134)
        {
          v8 = 3;
          v9 = 149;
          v10 = 2;
LABEL_9:
          if (v9 == v6[v10])
          {
            v11 = v8;
          }

          else
          {
            v11 = 0;
          }

          v4 += v11;
        }

        v5 += utf8_determineUTF8CharLength(v7);
        if (v5 >= v3)
        {
          return v4;
        }
      }

      v8 = 2;
      v9 = 167;
      v10 = 1;
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2)
{

  return log_OutPublic(a1, a2, 34000, 0);
}

uint64_t printNode(int a1, char **a2, char *a3, _WORD *a4, void *a5, unsigned __int16 *a6, unsigned __int16 *a7, int a8)
{
  if (!a1)
  {
    return 0;
  }

  sprintf(a3, "[%3d] ", a8);
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v15 = *(a7 + 1);
  if (v15 == 2)
  {
    v16 = *a6;
    v17 = "(T) ";
  }

  else
  {
    if (v15 != 1)
    {
      goto LABEL_9;
    }

    v16 = *a6;
    v17 = "(S) ";
  }

  v14 = add2Str(v16, a2, a4, v17);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

LABEL_9:
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  sprintf(a3, "NODE <%3d,%3d > ", *a7, a7[1]);
  v18 = add2Str(*a6, a2, a4, a3);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = *a7;
    if (v19 < a7[1])
    {
      v20 = 224 * v19;
      do
      {
        v14 = add2Str(*a6, a2, a4, *(*(*a5 + v20 + 16) + 8 * a6[8]));
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        if (*(*a5 + v20 + 72) != 255)
        {
          sprintf(a3, "_%d", *(*a5 + v20 + 72));
          v14 = add2Str(*a6, a2, a4, a3);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v18 = add2Str(*a6, a2, a4, " ");
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        ++v19;
        v20 += 224;
      }

      while (v19 < a7[1]);
    }

    if (!FLOATSUR_GT_INT(a7 + 4, 0, 0) || (sprintf(a3, "phraseWeight=%d.%d ", a7[4], a7[5]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
    {
      if (!FLOATSUR_GT_INT(a7 + 6, 0, 0) || (sprintf(a3, "bndWeight=%d.%d ", a7[6], a7[7]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
      {
        if (!FLOATSUR_GT_INT(a7 + 8, 0, 0) || (sprintf(a3, "bndValue=%d.%d ", a7[8], a7[9]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
        {
          v21 = *(a7 + 5);
          if (v21 > 2)
          {
            if (v21 == 4)
            {
              v22 = "bndType=S ";
            }

            else
            {
              if (v21 != 3)
              {
                goto LABEL_35;
              }

              v22 = "bndType=W ";
            }
          }

          else
          {
            if (!v21)
            {
LABEL_36:
              if (*(a7 + 6) != 1 || (sprintf(a3, "bProcessed=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
              {
                if (*(a7 + 7) != 1 || (sprintf(a3, "bBndBefore=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
                {
                  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s", *a2);
                  **a2 = 0;
                }
              }

              return v18;
            }

            if (v21 != 1)
            {
LABEL_35:
              v18 = add2Str(*a6, a2, a4, a3);
              if ((v18 & 0x80000000) != 0)
              {
                return v18;
              }

              goto LABEL_36;
            }

            v22 = "bndType=U ";
          }

          *a3 = *v22;
          *(a3 + 7) = *(v22 + 7);
          goto LABEL_35;
        }
      }
    }
  }

  return v18;
}

uint64_t printLevel(uint64_t result, char **a2, char *a3, _WORD *a4, void *a5, unsigned __int16 *a6, uint64_t a7, const char *a8)
{
  if (result)
  {
    v14 = result;
    log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "Level dump : %s", a8);
    if (*(a7 + 8))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        result = printNode(v14, a2, a3, a4, a5, a6, (*a7 + v15), v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v16;
        v15 += 32;
      }

      while (v16 < *(a7 + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t printAsString(int a1, char **a2, char *a3, _WORD *a4, void *a5, unsigned __int16 *a6, uint64_t *a7, const char *a8)
{
  if (!a1)
  {
    return 0;
  }

  **a2 = 0;
  if (*(a7 + 4))
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *a7;
      v17 = (*a7 + 32 * v14);
      v18 = *v17;
      if (v18 < v17[1])
      {
        v19 = 224 * v18;
        do
        {
          v20 = *a5 + v19;
          if (!*(v20 + 220))
          {
            v21 = add2Str(*a6, a2, a4, *(*(v20 + 16) + 8 * a6[8]));
            if ((v21 & 0x80000000) != 0)
            {
              return v21;
            }

            if (*(*a5 + v19 + 72) != 255)
            {
              sprintf(a3, "_%d", *(*a5 + v19 + 72));
              v21 = add2Str(*a6, a2, a4, a3);
              if ((v21 & 0x80000000) != 0)
              {
                return v21;
              }
            }

            v15 = add2Str(*a6, a2, a4, " ");
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v16 = *a7;
          }

          ++v18;
          v19 += 224;
        }

        while (v18 < *(v16 + 32 * v14 + 2));
      }

      v22 = *(v16 + 32 * v14 + 20);
      if (v22 == 4)
      {
        break;
      }

      if (v22 == 3)
      {
        v23 = *a6;
        v24 = a2;
        v25 = a4;
        v26 = "| ";
        goto LABEL_17;
      }

LABEL_18:
      if (++v14 >= *(a7 + 4))
      {
        goto LABEL_22;
      }
    }

    v23 = *a6;
    v24 = a2;
    v25 = a4;
    v26 = "|| ";
LABEL_17:
    v15 = add2Str(v23, v24, v25, v26);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    goto LABEL_18;
  }

  v15 = 0;
LABEL_22:
  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s%s", a8, *a2);
  **a2 = 0;
  return v15;
}

unsigned __int16 *removeNode(unsigned __int16 *result, unsigned int a2)
{
  v2 = result;
  v3 = a2 + 1;
  v4 = result[4];
  if (v4 != v3)
  {
    result = memmove((*result + 32 * a2), (*result + 32 * v3), 32 * (v4 - v3));
    LOWORD(v4) = v2[4];
  }

  v2[4] = v4 - 1;
  return result;
}

uint64_t addNode(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, uint64_t a6)
{
  NodeMem = getNodeMem(a1, a6, a2, 1u);
  if ((NodeMem & 0x80000000) == 0)
  {
    v11 = *a2 + 32 * *(a2 + 8);
    *v11 = a3;
    *(v11 + 2) = a4;
    *(v11 + 4) = a5;
    FLOATSUR_SET_INT((v11 + 8), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 12), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 16), 0, 0);
    v12 = *(a2 + 8);
    v13 = *a2 + 32 * v12;
    *(v13 + 24) = 0;
    *(v13 + 20) = 0;
    *(a2 + 8) = v12 + 1;
  }

  return NodeMem;
}

uint64_t getNodeMem(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (!*a3)
  {
    if (a4 <= a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = a4;
    }

    v10 = v9 + a2;
    v11 = heap_Calloc(*(a1 + 8), 1, (32 * (v9 + a2)) | 1);
    *a3 = v11;
    if (v11)
    {
      v8 = 0;
      *(a3 + 10) = v10;
      return v8;
    }

LABEL_11:
    v8 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v8;
  }

  v6 = *(a3 + 10);
  if (*(a3 + 8) + a4 <= v6)
  {
    return 0;
  }

  v7 = heap_Realloc(*(a1 + 8), *a3, 32 * v6 + 321);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = 0;
  *a3 = v7;
  *(a3 + 10) += 10;
  return v8;
}

uint64_t addLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  result = getNodeMem(a1, a4, a2, *(a3 + 8));
  if ((result & 0x80000000) == 0)
  {
    v7 = *(a2 + 8);
    if (*(a3 + 8))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (*a2 + 32 * v7);
        v11 = (*a3 + v8);
        v12 = v11[1];
        *v10 = *v11;
        v10[1] = v12;
        ++v9;
        ++v7;
        v13 = *(a3 + 8);
        v8 += 32;
      }

      while (v9 < v13);
      LOWORD(v7) = *(a2 + 8);
    }

    else
    {
      LOWORD(v13) = 0;
    }

    *(a2 + 8) = v7 + v13;
  }

  return result;
}

uint64_t createLevel0ProsodicStructure(unsigned __int16 *a1)
{
  v19 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel0ProsodicStructure()", 0);
  v18 = 0;
  v2 = a1 + 336;
  LOWORD(v3) = a1[340];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 15;
    v7 = a1 + 16;
    do
    {
      v8 = v5;
      v9 = *(*v2 + 224 * v5 + 56);
      if (v9)
      {
        v10 = v9 + 32 * *v6;
        if (*v10 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get phrasing for token (%d,%d)", v4, *(v10 + 10));
          result = getPhrasingForToken(a1, &v18, v5);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = addLevel(*a1, (a1 + 360), &v18, a1[340]);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v12 = a1 + 15;
          if (v18)
          {
            heap_Free(*(*a1 + 8), v18);
            v18 = 0;
            LODWORD(v19) = 0;
            v12 = a1 + 15;
          }

          goto LABEL_11;
        }

        v13 = v9 + 32 * *v7;
        if (*v13 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "add syntactic node (%d,%d)", *(v13 + 8), *(v13 + 10) + 1);
          v14 = *(*(a1 + 84) + 224 * v5 + 56) + 32 * a1[16];
          result = addNode(*a1, (a1 + 360), *(v14 + 8), *(v14 + 10) + 1, 1, a1[340]);
          v12 = a1 + 16;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_11:
          v5 = *(*(*v2 + 224 * v5 + 56) + 32 * *v12 + 10) + 1;
          goto LABEL_21;
        }
      }

      v15 = v5;
      if (v5 < v3)
      {
        v16 = (*v2 + 224 * v5 + 56);
        while (1)
        {
          v17 = *v16;
          if (*v16)
          {
            if (*(v17 + 32 * *v6) == 1 || *(v17 + 32 * *v7) == 1)
            {
              break;
            }
          }

          ++v8;
          v16 += 28;
          if (v3 == v8)
          {
            v5 = v3;
            goto LABEL_20;
          }
        }

        v5 = v8;
      }

LABEL_20:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "handle in between node (%d,%d)", v4, v5);
      result = addNode(*a1, (a1 + 360), v15, v5, 1, a1[340]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_21:
      v4 = v5;
      v3 = a1[340];
    }

    while (v5 < v3);
  }

  return printLevel(*(a1 + 277), a1 + 136, *(a1 + 137), a1 + 552, a1 + 84, a1 + 4, (a1 + 360), "LEVEL0");
}

uint64_t checkStructure(uint64_t a1, unsigned __int16 **a2)
{
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO checkStructure()", 0);
  v4 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v5 = 0;
  for (i = *a2; ; i += 16)
  {
    v7 = v5 + 1;
    if (v5 + 1 < v4 && i[1] != i[16])
    {
      break;
    }

    if (*(i + 1) == 1)
    {
      v8 = *(*(a1 + 672) + 224 * *i + 56);
      if (!v8 || !*(v8 + 32 * *(a1 + 32)))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "WARNING : wordindex=%d starts node %d but syntactic phrase doesnt start here", *i, v5);
        return 0;
      }
    }

    ++v5;
    if (v4 == v7)
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "nodeindex=%d and %d do not follow in sequence", v5, v5 + 1);
  return 2315264000;
}

uint64_t createLevel1ProsodicStructure(uint64_t a1)
{
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, 12);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel1ProsodicStructure()", 0);
  if (!*(a1 + 728))
  {
    v5 = 0;
    v19 = 0;
LABEL_27:
    v20 = *(a1 + 680);
    if (v5 != v20)
    {
      memset(v25 + 4, 0, 28);
      LOWORD(v25[0]) = v5;
      WORD1(v25[0]) = v20;
      *(v25 + 4) = *(*(a1 + 720) + 32 * v19 + 4);
      FLOATSUR_SET_INT((v25 | 0xC), 50, 0);
      DWORD1(v25[1]) = 1;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding end node", 0);
      result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), v25, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = getNodeMem(*a1, *(a1 + 728), a1 + 736, 1u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v21 = (*(a1 + 736) + 32 * *(a1 + 744));
      v22 = v25[1];
      *v21 = v25[0];
      v21[1] = v22;
      ++*(a1 + 744);
    }

    return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "LEVEL1");
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v3);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), (*(a1 + 720) + 32 * v2), v2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    memset(v25, 0, sizeof(v25));
    LOWORD(v25[0]) = v5;
    v7 = *(a1 + 720);
    v8 = (v7 + 32 * v2);
    WORD1(v25[0]) = v8[1];
    v9 = *(v8 + 1);
    DWORD1(v25[0]) = v9;
    DWORD1(v25[1]) = 1;
    v10 = v3 + 1;
    if (v10 != *(a1 + 728))
    {
      if (v9 == 2)
      {
        if (v5 != *v8)
        {
          memset(v25, 0, sizeof(v25));
          LOWORD(v25[0]) = v5;
          WORD1(v25[0]) = *v8;
          DWORD1(v25[0]) = 1;
          DWORD1(v25[1]) = 1;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding (S) node before this token node", 0);
          result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), v25, 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = getNodeMem(*a1, *(a1 + 728), a1 + 736, 1u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v11 = (*(a1 + 736) + 32 * *(a1 + 744));
          v12 = v25[1];
          *v11 = v25[0];
          v11[1] = v12;
          ++*(a1 + 744);
          v7 = *(a1 + 720);
        }

        v13 = (v7 + 32 * v2);
        v14 = v13[1];
        v25[0] = *v13;
        v25[1] = v14;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  token node - copy verbatim", 0);
LABEL_20:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding new node", 0);
        result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), v25, 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = getNodeMem(*a1, *(a1 + 728), a1 + 736, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v17 = (*(a1 + 736) + 32 * *(a1 + 744));
        v18 = v25[1];
        *v17 = v25[0];
        v17[1] = v18;
        ++*(a1 + 744);
        v5 = WORD1(v25[0]);
        v4 = v10;
      }

      else
      {
        v23 = 0;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply general rules on WordIdx %d", *v8);
        v15 = 0;
        v16 = 0;
        WORD2(v24[0]) = *(*(a1 + 720) + 32 * v2);
        LODWORD(v24[0]) = 4;
        *(v24 + 6) = 0;
        while (!HIDWORD(v23))
        {
          if (v16 >= *(a1 + 168))
          {
            goto LABEL_23;
          }

          result = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 160) + v15, v24, &v23 + 1, &v23);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIDWORD(v23) == 1)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general rule %d FIRED -> set bndWeight = %d.%d", v16, v23, WORD1(v23));
          }

          ++v16;
          v15 += 32;
        }

        if (HIDWORD(v23) == 1)
        {
          HIDWORD(v25[0]) = v23;
          goto LABEL_20;
        }

LABEL_23:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  no rules fire", 0);
      }
    }

    v3 = ++v2;
    if (v2 >= *(a1 + 728))
    {
      v19 = v4;
      goto LABEL_27;
    }
  }
}

uint64_t setLevel1StructureWeights(uint64_t a1)
{
  v39 = 0;
  v38 = 0;
  v37 = 0uLL;
  v2 = isStrSetting(a1 + 8, "PHRASE_WEIGHT_ALG", "AVERAGE");
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1StructureWeights(bApplyWeighting=%d)", 0);
  v3 = (a1 + 736);
  if (!*(a1 + 744))
  {
    return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET PHRASEWEIGHT");
  }

  v4 = 0;
  while (1)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v4);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), (*(a1 + 736) + 32 * v4), v4);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v6 = (*v3 + 32 * v4);
    if (*(v6 + 1) == 2)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "skip token node", 0);
    }

    else
    {
      v7 = *(*(a1 + 672) + 224 * *v6 + 56);
      if (v7 && *(v7 + 32 * *(a1 + 32)) == 1)
      {
        v35 = v2;
        v36 = 0;
        FLOATSUR_SET_INT(&v36 + 2, 0, 0);
        FLOATSUR_SET_INT(&v36, 0, 0);
        v8 = (*v3 + 32 * v4);
        v9 = *v8;
        if (v9 < v8[1])
        {
          do
          {
            FLOATSUR_PLUS_INT(&v36, &v36, *(*(a1 + 672) + 224 * v9 + 24), 0);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : nodeSyllableWeight=%d.%d (word[%d].nsyll=%d)", v9, v36, WORD1(v36), v9, *(*(a1 + 672) + 224 * v9 + 24));
            v10 = 0;
            v11 = 0;
            v39 = 0;
            do
            {
              if (v11 >= *(a1 + 216))
              {
                break;
              }

              WORD2(v37) = v9;
              LODWORD(v37) = 1;
              *(&v37 + 6) = 0;
              result = matchMMAPREGEX2NUM_TRule((a1 + 8), a1 + 672, (*(a1 + 208) + v10), &v37, &v39, &v36 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v12 = v39;
              if (v39 == 1)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : pos weight rule %d FIRED nodePOSWeight=%d.%d", v9, v11, WORD2(v36), HIWORD(v36));
                v12 = v39;
              }

              ++v11;
              v10 += 10;
            }

            while (!v12);
            ++v9;
          }

          while (v9 < *(*v3 + 32 * v4 + 2));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodePOSWeight = %d.%d", WORD2(v36), HIWORD(v36));
        if (v2)
        {
          FLOATSUR_TIMES(&v36 + 2, &v36 + 2, (a1 + 200));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodePOSWeight = %d.%d", WORD2(v36), HIWORD(v36));
        v13 = 0;
        v14 = 0;
        v39 = 0;
        do
        {
          if (v14 >= *(a1 + 240))
          {
            break;
          }

          matchMAPNUMNUM_TRule((*(a1 + 232) + v13), &v36, &v39);
          v15 = v39;
          if (v39 == 1)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  syll weight rule %d FIRED nodeSyllableWeight=%d.%d", v14, v36, WORD1(v36));
            v15 = v39;
          }

          ++v14;
          v13 += 12;
        }

        while (!v15);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodeSyllableWeight = %d.%d", v36, WORD1(v36));
        if (v2)
        {
          FLOATSUR_TIMES(&v36, &v36, (a1 + 224));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodeSyllableWeight = %d.%d", v36, WORD1(v36));
        if (*(a1 + 256))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply %d gen weight rules", *(a1 + 256));
          v16 = heap_Calloc(*(*a1 + 8), 1, (4 * *(a1 + 256)) | 1);
          if (!v16)
          {
            log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
            return 2315264010;
          }

          v17 = v16;
          v18 = *(a1 + 736);
          v21 = (v18 + 32 * v4);
          v19 = *v21;
          v20 = v21[1];
          LODWORD(v21) = *(a1 + 256);
          if (v19 < v20)
          {
            v22 = *(a1 + 256);
            do
            {
              if (v22)
              {
                v23 = 0;
                v34 = v19;
                while (2)
                {
                  v39 = 0;
                  WORD2(v37) = v19;
                  LODWORD(v37) = 4;
                  *(&v37 + 6) = 0;
                  v24 = *(*(a1 + 248) + 12 * v23 + 8);
                  v25 = 32 * v24;
                  do
                  {
                    if (v24 >= *(*(a1 + 248) + 12 * v23 + 10))
                    {
                      break;
                    }

                    if ((matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 264) + v25, &v37, &v39, &v38) & 0x80000000) != 0)
                    {
                      heap_Free(*(*a1 + 8), v17);
                      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET PHRASEWEIGHT");
                    }

                    v26 = v39;
                    if (v39 == 1)
                    {
                      *(v17 + 4 * v23) = v38;
                      v26 = v39;
                      if (v39 == 1)
                      {
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general weight rule %d FIRED genRuleValues[%d]=%d.%d", v24, v23, WORD2(v36), HIWORD(v36));
                        v26 = v39;
                      }
                    }

                    ++v24;
                    v25 += 32;
                  }

                  while (!v26);
                  v21 = *(a1 + 256);
                  ++v23;
                  LOWORD(v19) = v34;
                  if (v23 < v21)
                  {
                    continue;
                  }

                  break;
                }

                v18 = *v3;
                v22 = *(a1 + 256);
                v2 = v35;
              }

              LOWORD(v19) = *(*(*(a1 + 672) + 224 * v19 + 56) + 32 * *(a1 + 32) + 10) + 1;
            }

            while (*(v18 + 32 * v4 + 2) > v19);
          }

          if (v21)
          {
            v27 = 0;
            v28 = 4;
            v29 = v17;
            do
            {
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted genRuleValues[%d]  = %d.%d", v27, *v29, v29[1]);
              if (v2)
              {
                FLOATSUR_TIMES(v29, v29, (*(a1 + 248) + v28));
              }

              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted genRuleValues[%d]  = %d.%d", v27++, *v29, v29[1]);
              v29 += 2;
              v28 += 12;
            }

            while (v27 < *(a1 + 256));
          }
        }

        else
        {
          v17 = 0;
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  compute final phraseweight = %d.%d", *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
        FLOATSUR_PLUS(&v37 + 6, &v36 + 2, &v36);
        v30 = (*(a1 + 736) + 32 * v4 + 8);
        FLOATSUR_PLUS(v30, v30, &v37 + 6);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted nodePOSWeight(%d.%d) and nodeSyllableWeight(%d.%d) -> %d.%d", WORD2(v36), HIWORD(v36), v36, WORD1(v36), *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
        if (*(a1 + 256))
        {
          v31 = 0;
          v32 = v17;
          do
          {
            v33 = (*(a1 + 736) + 32 * v4 + 8);
            FLOATSUR_PLUS(v33, v33, v32);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted genRuleValues[%d](%d.%d) -> %d.%d", v31++, *v32, v32[1], *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
            v32 += 2;
          }

          while (v31 < *(a1 + 256));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  final phraseweight = %d.%d", *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
        if (v17)
        {
          heap_Free(*(*a1 + 8), v17);
        }
      }
    }

    if (++v4 >= *(a1 + 744))
    {
      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET PHRASEWEIGHT");
    }
  }
}

uint64_t setLevel1Boundaries(uint64_t a1)
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  FLOATSUR_PLUS(&v20 + 2, (a1 + 396), (a1 + 400));
  FLOATSUR_PLUS(&v22, (a1 + 392), &v20 + 2);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1Boundaries(threshold_bnd_val_weak=%d threshold_weak_frag=%d threshold_bnd_val_strong=%d)", *(a1 + 380), *(a1 + 388), *(a1 + 384));
  getLowestBnd(a1, &v21);
  v2 = v21;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "START lowestBnd : node %d", v21);
  if (HIDWORD(v21) == 1 && FLOATSUR_LT((*(a1 + 736) + 32 * v2 + 12), (a1 + 376)))
  {
    v3 = 0;
    v4 = (a1 + 736);
    v5 = v2;
    while (1)
    {
      v6 = v5;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "LOOP[%d] lowestBnd : node %d (bndWeight=%d.%d)", v3, v5, *(*(a1 + 736) + 32 * v2 + 12), *(*(a1 + 736) + 32 * v2 + 14));
      FLOATSUR_SET(&v18 + 1, (*(a1 + 736) + 32 * v2 + 8));
      FLOATSUR_SET_INT(&v18, 0, 0);
      v7 = v6 + 1;
      if (v7 < *(a1 + 744))
      {
        FLOATSUR_SET(&v18, (*v4 + 32 * v7 + 8));
      }

      FLOATSUR_SET(&v17, (*(a1 + 736) + 32 * v2 + 12));
      FLOATSUR_TIMES(&v20 + 2, &v18 + 2, (a1 + 392));
      FLOATSUR_TIMES(&v20, &v18, (a1 + 396));
      FLOATSUR_TIMES(&v19 + 2, &v17, (a1 + 400));
      FLOATSUR_PLUS(&v19, &v20 + 2, &v20);
      FLOATSUR_PLUS(&v19, &v19, &v19 + 2);
      FLOATSUR_DIV(&v20 + 2, &v19, &v22);
      FLOATSUR_TIMES_INT(&v17 + 1, &v20 + 2, 0xAu, 0);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted mean bndVal = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", WORD2(v17), HIWORD(v17), WORD2(v18), HIWORD(v18), v17, WORD1(v17), v18, WORD1(v18));
      if (!FLOATSUR_LT(&v17 + 2, (a1 + 380)) && !FLOATSUR_LT(&v18 + 2, (a1 + 388)) && !FLOATSUR_LT(&v18, (a1 + 388)))
      {
        break;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  [bnd_val < threshold_weak(%d.%d) or one thisphraseWeight or nextphraseWeight < threshold_weak_frag(%d.%d)] remove node (merge %d and %d)", *(a1 + 380), *(a1 + 382), *(a1 + 388), *(a1 + 390), v6, v6 + 1);
      if (v7 == *(a1 + 744))
      {
        goto LABEL_10;
      }

      v8 = (*v4 + 32 * v2);
      *(*v4 + 32 * (v6 + 1)) = *v8;
      FLOATSUR_PLUS(v8 + 20, v8 + 20, v8 + 4);
      removeNode((a1 + 736), v6);
LABEL_12:
      getLowestBnd(a1, &v21);
      v2 = v21;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "END LOOP lowestBnd : node %d", v21);
      if (HIDWORD(v21) != 1)
      {
        goto LABEL_23;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "ITERATION %d", v3);
      result = printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "ITER");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (FLOATSUR_EQUAL_INT((*v4 + 32 * v2 + 12), 0, 0))
      {
        *(*(a1 + 736) + 32 * v2 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", 0);
      }

      ++v3;
      v10 = FLOATSUR_LT((*v4 + 32 * v2 + 12), (a1 + 376));
      v5 = v2;
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    if (FLOATSUR_LT(&v17 + 2, (a1 + 384)))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set WEAK BND", 0);
      v11 = *(a1 + 736) + 32 * v2;
      v12 = 3;
    }

    else
    {
      if (!FLOATSUR_GTOREQUAL(&v17 + 2, (a1 + 384)))
      {
LABEL_10:
        *(*(a1 + 736) + 32 * v2 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", 0);
        goto LABEL_12;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set STRONG BND", 0);
      v11 = *(a1 + 736) + 32 * v2;
      v12 = 4;
    }

    *(v11 + 20) = v12;
    *(v11 + 16) = HIDWORD(v17);
    goto LABEL_10;
  }

LABEL_23:
  if (*(a1 + 744))
  {
    v13 = 0;
    v14 = *(a1 + 736);
    v15 = 20;
    do
    {
      if (*(v14 + v15) <= 1u)
      {
        v16 = FLOATSUR_GT((v14 + v15 - 8), (a1 + 376));
        v14 = *(a1 + 736);
        if (v16)
        {
          *(v14 + v15) = 4;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set node %d STRONG BND", v13);
          v14 = *(a1 + 736);
        }
      }

      *(*(a1 + 672) + 224 * *(v14 + v15 - 18) - 151) = *(v14 + v15);
      ++v13;
      v15 += 32;
    }

    while (v13 < *(a1 + 744));
  }

  return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET BOUNDARIES");
}

uint64_t getLowestBnd(uint64_t result, unsigned __int16 *a2)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v2 = *(result + 744);
  if (*(result + 744))
  {
    v4 = result;
    v5 = 0;
    for (i = 24; *(*(result + 736) + i) == 1; i += 32)
    {
      if (v2 == ++v5)
      {
        return result;
      }
    }

    v7 = v5;
    *a2 = v5;
    *(a2 + 1) = 1;
    v8 = v5;
    if (v2 > v5)
    {
      v9 = i - 24;
      v8 = v5;
      do
      {
        v10 = *(v4 + 736);
        if (*(v10 + v9 + 20) == 1)
        {
          if ((result = FLOATSUR_LT((v10 + v9 + 12), (v10 + 32 * *a2 + 12)), v11 = *(v4 + 736), result) && !*(v11 + v9 + 24) || (result = FLOATSUR_LT_INT((v11 + v9 + 12), 0, 0), result))
          {
            v8 = v5;
            *a2 = v5;
            *(a2 + 1) = 1;
          }
        }

        ++v5;
        v2 = *(v4 + 744);
        v9 += 32;
      }

      while (v5 < v2);
    }

    if (v8 == v7 && v8 < v2 && !*(*(v4 + 736) + i))
    {
      *a2 = v7;
      *(a2 + 1) = 1;
    }
  }

  return result;
}

uint64_t getProsodicStructure(void *a1)
{
  *(a1 + 45) = 0u;
  *(a1 + 46) = 0u;
  result = createLevel0ProsodicStructure(a1);
  if ((result & 0x80000000) == 0)
  {
    result = checkStructure(a1, a1 + 90);
    if ((result & 0x80000000) == 0)
    {
      if (a1[116])
      {
        result = simplifiedTokenPhrasing(*a1, a1 + 90, a1 + 84, a1 + 4);
        if ((result & 0x80000000) == 0)
        {
          v3 = *a1;

          return threePassIgtreePhrasing(v3, (a1 + 90), a1 + 84, (a1 + 1), a1 + 94);
        }
      }

      else if (a1[102])
      {
        result = simplifiedTokenPhrasing(*a1, a1 + 90, a1 + 84, a1 + 4);
        if ((result & 0x80000000) == 0)
        {
          v4 = *a1;

          return twoPassIgtreePhrasing(v4, (a1 + 90), a1 + 84, (a1 + 1), a1 + 94);
        }
      }

      else if (a1[95])
      {
        result = simplifiedTokenPhrasing(*a1, a1 + 90, a1 + 84, a1 + 4);
        if ((result & 0x80000000) == 0)
        {
          v5 = *a1;

          return singlePassIgtreePhrasing(v5, (a1 + 90), a1 + 84, (a1 + 1), a1 + 94);
        }
      }

      else
      {
        result = createLevel1ProsodicStructure(a1);
        if ((result & 0x80000000) == 0)
        {
          result = checkStructure(a1, a1 + 92);
          if ((result & 0x80000000) == 0)
          {
            result = setLevel1StructureWeights(a1);
            if ((result & 0x80000000) == 0)
            {

              return setLevel1Boundaries(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

double freeProsodicStructure(void *a1)
{
  v2 = a1[90];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[90] = 0;
  }

  v3 = a1[92];
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
  }

  result = 0.0;
  *(a1 + 45) = 0u;
  *(a1 + 46) = 0u;
  return result;
}

uint64_t getPwPredict(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7)
{
  v7 = *a5;
  if (result)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = result;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      v15 = v9;
      v17 = 0.0;
      do
      {
        v16 = a2 + 28 * (v10 + v8);
        if (v17 < *(v16 + 4 * v13))
        {
          v17 = *(v16 + 4 * v13);
          v14 = v13;
        }

        ++v13;
      }

      while (v13 != 7);
      if (a3 > v10 && v8 == *(a4 + 2 * v10))
      {
        v18 = 0;
        v14 = 0;
        v19 = v10 + 1;
        v20 = a2 + 28 * (v10 + v11);
        v21 = 0.0;
        do
        {
          if (v21 < *(v20 + 4 * v18))
          {
            v21 = *(v20 + 4 * v18);
            v14 = v18;
          }

          ++v18;
        }

        while (v18 != 7);
        result = 0;
        v10 = v19;
      }

      else
      {
        result = 1;
      }

      v22 = *(a7 + 4 * v8);
      v23 = v22 == 1 || v14 == 0;
      if (v23 || v14 == 3)
      {
        break;
      }

      v25 = (v7 + 2 * v8);
      *v25 = 0;
      if ((result & 1) == 0)
      {
        v26 = 1;
LABEL_30:
        *v25 = 1;
        v9 = (v15 + v26);
        goto LABEL_31;
      }

      v9 = v15;
LABEL_31:
      ++v8;
      ++v11;
      if (v8 == v12)
      {
        goto LABEL_34;
      }
    }

    v9 = (v15 + 1);
    *(v7 + 2 * v8) = 1;
    if (!v8)
    {
      goto LABEL_31;
    }

    if (v22 != 1)
    {
      goto LABEL_31;
    }

    v25 = (v7 + 2 * (v8 - 1));
    result = *v25;
    if (*v25)
    {
      goto LABEL_31;
    }

    v26 = 2;
    goto LABEL_30;
  }

  v12 = 0;
  LOWORD(v9) = 0;
LABEL_34:
  v27 = v7 + 2 * v12;
  if (*(v27 - 2) != 1)
  {
    LOWORD(v9) = v9 + 1;
    *(v27 - 2) = 1;
  }

  *a6 = v9;
  return result;
}

uint64_t storeResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, _WORD *a7, _DWORD *a8, unsigned __int8 a9, const char **a10)
{
  v50 = *a6;
  if (!a3)
  {
LABEL_51:
    result = 0;
    *a6 = v50;
    return result;
  }

  v11 = 0;
  v48 = 0;
  v12 = 0;
  v49 = 0;
  v13 = a2 + 64;
  if (a9)
  {
    v14 = a10 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  v45 = v15;
  v43 = a3;
  v44 = a2;
  while (1)
  {
    v16 = a2 + 40 * v11;
    if (v45)
    {
LABEL_13:
      v20 = (a4 + 2 * v11);
      v21 = *v20;
      v22 = 1;
      if (*v20)
      {
        v23 = a8;
        v24 = v50;
        v25 = v48;
        if (v21 == 1)
        {
          goto LABEL_32;
        }

        if (!*a8)
        {
          goto LABEL_50;
        }

        goto LABEL_16;
      }

      v23 = a8;
      v24 = v50;
      v25 = v48;
    }

    else
    {
      v17 = *v16;
      v19 = a9;
      v18 = a10;
      while (!strstr(v17, *v18))
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_13;
        }
      }

      v22 = 0;
      v20 = (a4 + 2 * v11);
      v25 = v48;
      if (*v20)
      {
        v23 = a8;
        v24 = v50;
        goto LABEL_32;
      }

      LOBYTE(v21) = 1;
      v23 = a8;
      v24 = v50;
    }

    if (!*v23 || v25 >= *(v23 + 2))
    {
      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_31:
      ++v12;
      goto LABEL_50;
    }

    if (*(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

LABEL_16:
    if (v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v22) = 1;
      goto LABEL_32;
    }

LABEL_50:
    ++v11;
    v13 += 40;
    a2 = v44;
    if (v11 == v43)
    {
      goto LABEL_51;
    }
  }

  LOBYTE(v22) = 0;
LABEL_32:
  v26 = v12 + 1;
  *(v24 + 184 * v49 + 8) = v26;
  if (*v23 && v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
  {
    if (!*v20)
    {
      v27 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v27)
      {
        return 2315264010;
      }

      v24 = v27;
      v28 = v27 + 184 * *a7;
      *(v28 + 176) = 0;
      *(v28 + 144) = 0u;
      *(v28 + 160) = 0u;
      *(v28 + 112) = 0u;
      *(v28 + 128) = 0u;
      *(v28 + 80) = 0u;
      *(v28 + 96) = 0u;
      *(v28 + 48) = 0u;
      *(v28 + 64) = 0u;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *v28 = 0u;
      ++*a7;
      *v20 = 1;
      v25 = v48;
    }

    ++v25;
  }

  v29 = v24 + 184 * v49;
  v50 = v24;
  v48 = v25;
  if (*(a5 + 2 * v11) == 1)
  {
    *(v29 + 72) = 1;
  }

  else
  {
    *(v29 + 72) = 0;
    if ((v22 & 1) == 0 && !*v20)
    {
      v30 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v30)
      {
        return 2315264010;
      }

      v50 = v30;
      v31 = v30 + 184 * *a7;
      *(v31 + 176) = 0;
      *(v31 + 144) = 0u;
      *(v31 + 160) = 0u;
      *(v31 + 112) = 0u;
      *(v31 + 128) = 0u;
      *(v31 + 80) = 0u;
      *(v31 + 96) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0u;
      *v31 = 0u;
      ++*a7;
    }
  }

  v32 = v26;
  v33 = 2 * v26;
  v34 = heap_Alloc(*(a1 + 8), v33);
  v35 = (v50 + 184 * v49);
  *v35 = v34;
  if (v34)
  {
    v35[7] = "";
    if (v26)
    {
      v36 = 0;
      v37 = (v13 - 40 * v32);
      do
      {
        v38 = *v37;
        v37 += 20;
        *(*v35 + v36) = v38;
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw:%d , tid=%d", v49, v38);
        v36 += 2;
      }

      while (v33 != v36);
    }

    v12 = 0;
    ++v49;
    goto LABEL_50;
  }

  return 2315264010;
}

uint64_t storePwResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v22 = *a5;
  v13 = a2 + 64;
  v14 = a3;
  while (*(a4 + 2 * v9) != 1)
  {
    if (*(a4 + 2 * v9))
    {
      if (!*a6)
      {
        goto LABEL_21;
      }
    }

    else if (!*a6 || *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v11;
      goto LABEL_21;
    }

    if (*(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      break;
    }

LABEL_21:
    ++v9;
    v13 += 40;
    if (v9 == v14)
    {
      return 0;
    }
  }

  v15 = v11 + 1;
  v16 = v22 + 184 * v12;
  *(v16 + 8) = v15;
  v17 = v15;
  v18 = heap_Alloc(*(a1 + 8), 2 * v15);
  *v16 = v18;
  if (v18)
  {
    *(v16 + 56) = "";
    if (v17)
    {
      v19 = (v13 - 40 * v17);
      do
      {
        v20 = *v19;
        v19 += 20;
        *v18++ = v20;
        --v17;
      }

      while (v17);
    }

    if (*a6 && *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v10;
    }

    v11 = 0;
    ++v12;
    goto LABEL_21;
  }

  return 2315264010;
}

uint64_t pw_nn_process(uint64_t a1, uint64_t ****a2, uint64_t *a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7, void *a8, int a9, _DWORD *a10, unsigned __int8 a11, const char **a12, int a13)
{
  v58 = 0;
  v66[0] = *a5;
  v65 = 0;
  v20 = 2315264010;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v21 = 2 * a4;
  v22 = heap_Alloc(*(a1 + 8), v21);
  v64 = v22;
  if (!v22)
  {
    v28 = 0;
    v24 = 0;
    goto LABEL_48;
  }

  v23 = v22;
  v54 = a2;
  v24 = heap_Alloc(*(a1 + 8), v21);
  if (!v24)
  {
    goto LABEL_28;
  }

  v53 = a6;
  v55 = a3;
  v52 = a5;
  if (a4)
  {
    v25 = 0;
    v26 = 0;
    v27 = v55;
    do
    {
      if (checkAttachedPunc(*v27))
      {
        *(v24 + 2 * v26++) = v25;
      }

      ++v25;
      v27 += 5;
    }

    while (a4 != v25);
  }

  else
  {
    v26 = 0;
  }

  v29 = heap_Calloc(*(a1 + 8), a4, 4);
  v59 = v29;
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *(a1 + 8);
  if (a9 != 1)
  {
    v62 = heap_Calloc(v31, (100 * a4), 4);
    if (!v62)
    {
      v28 = 0;
      v20 = 2315264010;
      goto LABEL_50;
    }

    Embedding = getEmbedding(a1, a7, a8, a9, a4, v55, v26, v24, &v62, &v59, a13);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    Embedding = fi_predict(v54[1], &v62, a4, &v63);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    getPwPredict(a4, v63, v26, v24, &v64, &v65, v30);
    v40 = v65;
    *a6 = v65;
    v41 = heap_Calloc(*(a1 + 8), v40, 184);
    v66[0] = v41;
    if (!v41)
    {
      goto LABEL_29;
    }

    v42 = v41;
    Embedding = storePwResult(a1, v55, a4, v23, v66, a10);
    if ((Embedding & 0x80000000) != 0)
    {
LABEL_30:
      v28 = 0;
      v20 = Embedding;
      goto LABEL_48;
    }

    v60 = heap_Calloc(*(a1 + 8), 100 * v40, 4);
    if (!v60)
    {
      goto LABEL_29;
    }

    if (v54[1])
    {
      v20 = fi_predict(*v54, &v60, v40, &v63);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_28:
        v28 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v40)
    {
      v46 = 0;
      for (i = 0; i != v40; ++i)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0.0;
        do
        {
          if (v50 < *(v63 + v46 + 4 * v48))
          {
            v50 = *(v63 + v46 + 4 * v48);
            v49 = v48;
          }

          ++v48;
        }

        while (v48 != 4);
        *(v42 + 184 * i + 72) = v49 == 3 || v49 == 0 || v40 - 1 == i;
        v46 += 16;
      }
    }

    if (v60)
    {
      heap_Free(*(a1 + 8), v60);
      v28 = 0;
      v60 = 0;
    }

    else
    {
      v28 = 0;
    }

    v44 = v52;
LABEL_77:
    *v44 = v42;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_53:
    heap_Free(*(a1 + 8), v28);
    goto LABEL_54;
  }

  v32 = heap_Alloc(v31, v21);
  v61 = v32;
  if (!v32)
  {
LABEL_29:
    v28 = 0;
    v20 = 2315264010;
    goto LABEL_48;
  }

  v33 = v32;
  v34 = *(a1 + 8);
  if (a13)
  {
    v28 = 0;
    v62 = heap_Calloc(v34, 100 * (a4 + v26), 4);
    v35 = v26;
    v36 = v55;
    if (v62)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v28 = heap_Alloc(v34, v21);
    v58 = v28;
    if (v28)
    {
      v36 = v55;
      v37 = getcharNum(a4, v55, &v59, &v65 + 1, v26, v24, &v58);
      if ((v37 & 0x80000000) != 0)
      {
LABEL_44:
        v20 = v37;
        goto LABEL_47;
      }

      v35 = HIWORD(v65);
      v62 = heap_Calloc(*(a1 + 8), HIWORD(v65) + 2, 4);
      if (v62)
      {
LABEL_16:
        v37 = getEmbedding(a1, a7, a8, 1, a4, v36, v26, v24, &v62, &v59, a13);
        if ((v37 & 0x80000000) == 0)
        {
          if (a4 == 1)
          {
            v38 = 1;
            *v23 = 1;
            v57 = v33;
            *v33 = 1;
            LOWORD(v65) = 1;
            if (v62)
            {
              heap_Free(*(a1 + 8), v62);
              v62 = 0;
              v38 = 1;
            }

LABEL_41:
            v20 = 2315264010;
            v44 = v52;
            *v53 = v38;
            v66[0] = heap_Calloc(*(a1 + 8), v38, 184);
            if (v66[0])
            {
              v20 = storeResult(a1, v36, a4, v23, v57, v66, &v65, a10, a11, a12);
              if ((v20 & 0x80000000) == 0)
              {
                *v53 = v65;
                heap_Free(*(a1 + 8), v57);
                v61 = 0;
                v42 = v66[0];
                goto LABEL_77;
              }

              v33 = v57;
            }

            else
            {
              v33 = v57;
            }

            goto LABEL_47;
          }

          if (a13)
          {
            v43 = a4;
          }

          else
          {
            v43 = 2;
          }

          v37 = fi_predict(*v54, &v62, v43 + v35, &v63);
          if ((v37 & 0x80000000) == 0)
          {
            v57 = v33;
            getJointResult(&v64, &v61, a4, v26, v24, &v65, v63, v59, a13, v28);
            v38 = v65;
            goto LABEL_41;
          }
        }

        goto LABEL_44;
      }
    }
  }

  v20 = 2315264010;
LABEL_47:
  heap_Free(*(a1 + 8), v33);
LABEL_48:
  if (v62)
  {
    heap_Free(*(a1 + 8), v62);
  }

LABEL_50:
  if (v60)
  {
    heap_Free(*(a1 + 8), v60);
  }

  if (v28)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  if (v59)
  {
    heap_Free(*(a1 + 8), v59);
  }

  heap_Free(*(a1 + 8), v64);
  return v20;
}

uint64_t getcharNum(unsigned int a1, uint64_t *a2, uint64_t *a3, _WORD *a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  v23 = 0;
  v22 = 0;
  v7 = *a3;
  if (a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a7;
    v15 = a1;
    do
    {
      UTF8Char = utf8_getUTF8Char(*a2, 0, &v22);
      if ((UTF8Char & 0x80000000) != 0)
      {
        break;
      }

      if (utf8_IsChineseLetter(&v22))
      {
        v17 = Utf8_Utf8NbrOfSymbols(*a2) - 1;
        *(v14 + 2 * v11) = v17;
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
        }
      }

      else
      {
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
          v18 = Utf8_Utf8NbrOfSymbols(*a2);
          v17 = 1;
          if (v18 >= 3)
          {
            *(v7 + 4 * v11) = 1;
            v17 = 2;
          }
        }

        else
        {
          v17 = 1;
          *(v7 + 4 * v11) = 1;
        }

        *(v14 + 2 * v11) = v17;
      }

      v12 += v17;
      ++v11;
      a2 += 5;
    }

    while (v15 != v11);
  }

  else
  {
    v12 = 0;
    UTF8Char = 0;
  }

  *a3 = v7;
  *a4 = v12;
  return UTF8Char;
}

uint64_t getEmbedding(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, float **a9, uint64_t *a10, int a11)
{
  v95 = *MEMORY[0x1E69E9840];
  v91 = 0;
  if (!a4)
  {
    return 0;
  }

  v14 = a3;
  v15 = a2;
  v87 = *a10;
  v92 = 0;
  v17 = *a9;
  result = (*(a2 + 40))(*a3, a3[1], &v92 + 4);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (a11)
  {
    result = (*(v15 + 40))(v14[2], v14[3], &v92);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (HIDWORD(v92) != v92)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", "ERROR: word embedding and character embedding do not have same dimension");
      return 2315264000;
    }
  }

  else
  {
    *v17 = 101.0;
    v17 += HIDWORD(v92);
  }

  if (!a5)
  {
LABEL_106:
    if (!a11)
    {
      *v17 = 102.0;
    }

    return result;
  }

  v19 = 0;
  v20 = 0;
  v85 = a5;
  v86 = a8;
  v21 = 0;
  v78 = a7;
  v74 = v14;
  v77 = a1;
  v88 = v15;
  while (1)
  {
    v90 = *(a6 + 40 * v19);
    v22 = strlen(v90);
    v23 = 0;
    if (a7 && v21 < a7)
    {
      if (v19 == *(v86 + 2 * v21))
      {
        v24 = a1;
        v25 = v21;
        v26 = v22;
        if (v22 == 3 && (*__s = 0, v27 = 3, v28 = 1, utf8_Utf8ToUtf32_Tolerant(v90, 3u, &__s[4], 1u, __s), *&__s[4] == 8230))
        {
          v29 = 0;
        }

        else
        {
          v28 = 0;
          v91 = v90[v26 - 1];
          v27 = v26 - 1;
          v90[(v26 - 1)] = 0;
          v29 = 1;
        }

        *(a6 + 40 * v19 + 36) = 1;
        v30 = v27;
        v21 = (v25 + 1);
        v20 = v28;
        v22 = v30;
        v23 = v29;
        a1 = v24;
        a7 = v78;
      }

      else
      {
        v23 = 0;
        v20 = 0;
      }
    }

    if (!a11)
    {
      break;
    }

    v31 = v22;
    *(v87 + 4 * v19) = 0;
    result = (*(v15 + 56))(v14[2], v14[3], v90, v17);
    if (*v17 != 0.0 || result == 0)
    {
      goto LABEL_86;
    }

    v79 = v23;
    v33 = HIDWORD(v92);
    v81 = v14[1];
    v83 = *v14;
    v34 = v14[3];
    v72 = v14[2];
    v94 = 0;
    *&__s[4] = 0;
    v35 = heap_Calloc(*(a1 + 8), HIDWORD(v92), 4);
    if (v35)
    {
      v36 = v35;
      v71 = v34;
      v75 = v31;
      v73 = v20;
      v37 = Utf8_Utf8NbrOfSymbols(v90);
      *__s = v37 - 1;
      if (v37 == 1)
      {
LABEL_63:
        a1 = v77;
        heap_Free(*(v77 + 8), v36);
        a7 = v78;
        v15 = v88;
        v20 = v73;
        v31 = v75;
      }

      else
      {
        checkremoveNormalSym(v90, __s, 0x5Fu);
        checkremoveNormalSym(v90, __s, 0x2Du);
        v38 = *__s;
        if (*__s)
        {
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v41 = v39;
            UTF8Char = utf8_getUTF8Char(v90, v39, &__s[4]);
            if (UTF8Char < 0)
            {
              goto LABEL_63;
            }

            v43 = UTF8Char;
            v44 = v21;
            v45 = strlen(&__s[4]);
            if (!utf8_IsChineseLetter(&__s[4]))
            {
              break;
            }

            if (v38 == 1)
            {
              v46 = 115;
            }

            else if (v40)
            {
              v46 = 109;
            }

            else
            {
              v46 = 98;
            }

            __s[v45 + 4] = v46;
            __s[strlen(&__s[4]) + 4] = 0;
            v47 = (*(v88 + 56))(v83, v81, &__s[4], v36);
            if (*v36 == 0.0 && v47 != 0)
            {
              v48.n128_u32[0] = *v36;
              v43 = (*(v88 + 56))(v72, v71, "</s>", v17, v48);
LABEL_80:
              v21 = v44;
LABEL_81:
              v15 = v88;
              *(v87 + 4 * v19) = 0;
              goto LABEL_82;
            }

            v43 = v47;
            if (!v33)
            {
              goto LABEL_80;
            }

            v50 = 0;
            v39 = v41 + v45;
            LOBYTE(v51) = 1;
            do
            {
              v52 = *&v36[v50];
              v51 = v51 & (v52 == 0.0);
              v17[v50] = v17[v50] + (v52 / v38);
              ++v50;
            }

            while (v33 > v50);
            if (++v40 >= v38)
            {
              v53 = 1;
            }

            else
            {
              v53 = v51;
            }

            v21 = v44;
            if (v53 == 1)
            {
              goto LABEL_81;
            }
          }

          if (strlen(&__s[4]) == 1)
          {
            a7 = v78;
            v31 = v75;
            a1 = v77;
            v15 = v88;
            if (__s[4] - 48 >= 0xA)
            {
              if ((__s[4] & 0xDFu) - 65 >= 0x1A)
              {
                v67 = 0;
                goto LABEL_102;
              }

              v67 = 1;
              v68 = "ENG";
            }

            else
            {
              v67 = 0;
              v68 = "NUM";
            }
          }

          else
          {
            v67 = 0;
            v68 = "</s>";
            a7 = v78;
            v31 = v75;
            a1 = v77;
            v15 = v88;
          }

          v43 = (*(v15 + 56))(v72, v71, v68, v17);
LABEL_102:
          *(v87 + 4 * v19) = v67;
          v21 = v44;
          v20 = v73;
          goto LABEL_83;
        }

        v15 = v88;
        v43 = (*(v88 + 56))(v72, v34, "</s>", v17);
LABEL_82:
        a7 = v78;
        a1 = v77;
        v20 = v73;
        v31 = v75;
LABEL_83:
        heap_Free(*(a1 + 8), v36);
        if (!v43)
        {
          result = 0;
          v14 = v74;
          goto LABEL_85;
        }
      }
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
      v15 = v88;
    }

    v14 = v74;
    result = (*(v15 + 56))(v74[2], v74[3], "</s>", v17);
LABEL_85:
    v23 = v79;
LABEL_86:
    if (v21 && !v20 && v19 == *(v86 + 2 * (v21 - 1)))
    {
      v90[v31] = 0;
    }

    v17 += HIDWORD(v92);
    if (v23)
    {
      result = (*(v15 + 56))(v14[2], v14[3], &v91, v17);
      if (*v17 == 0.0 && result != 0)
      {
        v69.n128_f32[0] = *v17;
        result = (*(v15 + 56))(v14[2], v14[3], "</s>", v17, v69);
      }

      v17 += HIDWORD(v92);
    }

LABEL_97:
    if (++v19 == v85)
    {
      goto LABEL_106;
    }
  }

  v84 = v21;
  v54 = HIDWORD(v92);
  v55 = *(v87 + 4 * v19);
  v57 = *v14;
  v56 = v14[1];
  __s[8] = 0;
  *&__s[4] = 0;
  if (v55)
  {
    v58 = v22;
    *v17 = 1.0;
    v17 += v54;
    if (v23)
    {
      v59 = v54;
      result = (*(v15 + 72))(v57, v56, &v91, v17);
      if ((result & 0x80000000) != 0)
      {
        result = 0;
        *v17 = 100.0;
      }

      v17 += v59;
    }

    else
    {
      result = 0;
    }

    goto LABEL_73;
  }

  v82 = HIDWORD(v92);
  v58 = v22;
  *__s = Utf8_Utf8NbrOfSymbols(v90) - 1;
  checkremoveNormalSym(v90, __s, 0x5Fu);
  checkremoveNormalSym(v90, __s, 0x2Du);
  v60 = *__s;
  if (!(v23 | *__s))
  {
    result = 0;
    *v17 = 100.0;
    a7 = v78;
LABEL_73:
    a1 = v77;
    v21 = v84;
    if (v84 && !v20 && v19 == *(v86 + 2 * (v84 - 1)))
    {
      v90[v58] = 0;
    }

    goto LABEL_97;
  }

  v80 = v23;
  v76 = v58;
  if (!*__s)
  {
    result = 0;
LABEL_68:
    if (v80)
    {
      result = (*(v15 + 72))(v57, v56, &v91, v17);
      a7 = v78;
      v14 = v74;
      v58 = v76;
      if ((result & 0x80000000) != 0)
      {
        result = 0;
        *v17 = 100.0;
      }

      v17 += v82;
    }

    else
    {
      a7 = v78;
      v14 = v74;
      v58 = v76;
    }

    goto LABEL_73;
  }

  v61 = 0;
  v62 = 0;
  while (1)
  {
    v63 = v61;
    result = utf8_getUTF8Char(v90, v61, &__s[4]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v64 = strlen(&__s[4]);
    v65 = v15;
    v66 = v64;
    result = (*(v65 + 72))(v57, v56, &__s[4], v17);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *v17 = 100.0;
    }

    v61 = v63 + v66;
    ++v62;
    v17 += v82;
    v15 = v88;
    if (v62 >= v60)
    {
      goto LABEL_68;
    }
  }
}

uint64_t *getJointResult(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v11 = *result;
  v12 = *a2;
  if (a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v19 = a3;
    while (1)
    {
      if (a9)
      {
        v20 = 0;
        LODWORD(result) = 0;
        v22 = 0.0;
        do
        {
          v21 = a7 + 28 * (v16 + v15);
          if (v22 >= *(v21 + 4 * v20))
          {
            result = result;
          }

          else
          {
            v22 = *(v21 + 4 * v20);
            result = v20;
          }

          ++v20;
        }

        while (v20 != 7);
        if (a4 > v16 && v15 == *(a5 + 2 * v16))
        {
          v23 = 0;
          LODWORD(result) = 0;
          v24 = (v16 + 1);
          v26 = 0.0;
          do
          {
            v25 = a7 + 28 * (v16 + v18);
            if (v26 >= *(v25 + 4 * v23))
            {
              result = result;
            }

            else
            {
              v26 = *(v25 + 4 * v23);
              result = v23;
            }

            ++v23;
          }

          while (v23 != 7);
          v27 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        *v33 = 0;
        v17 += *(a10 + 2 * v15);
        v33[0] = **(a7 + 8 * v17);
        v32 = v18;
        result = atoi(v33);
        v18 = v32;
      }

      v27 = *(a8 + 4 * v15) == 1;
      if (*(a8 + 4 * v15) == 1 || (result - 3) <= 3u)
      {
        v24 = v16;
LABEL_23:
        ++*a6;
        *(v11 + 2 * v15) = 1;
        if (v15 && v27 && !*(v11 + 2 * (v15 - 1)))
        {
          *(v11 + 2 * (v15 - 1)) = 1;
          ++*a6;
        }

        *(v12 + 2 * v15) = (result & 0xFFFD) == 4;
        goto LABEL_31;
      }

      *(v11 + 2 * v15) = 0;
      *(v12 + 2 * v15) = 0;
      v24 = v16;
LABEL_31:
      ++v15;
      ++v18;
      v16 = v24;
      if (v15 == v19)
      {
        v29 = v19 - 1;
        goto LABEL_34;
      }
    }
  }

  v29 = -1;
LABEL_34:
  if (*(v11 + 2 * v29) != 1)
  {
    ++*a6;
    *(v11 + 2 * v29) = 1;
  }

  if (*(v12 + 2 * v29) != 1)
  {
    *(v12 + 2 * v29) = 1;
  }

  return result;
}

uint64_t load_pw_cfg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    goto LABEL_8;
  }

  v10 = **&__c[3];
  v11 = strchr(**&__c[3], __c[0]);
  if (v11)
  {
    *v11 = 0;
    v10 = **&__c[3];
  }

  if (*v10 == 110 && v10[1] == 111)
  {
    v12 = v10[2] != 0;
  }

  else
  {
LABEL_8:
    v12 = 1;
  }

  *(a4 + 8) = v12;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_cscgroup_stopwords", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    a4[36] = 0;
  }

  else
  {
    v13 = **&__c[3];
    v14 = strchr(**&__c[3], __c[0]);
    if (v14)
    {
      *v14 = 0;
      v13 = **&__c[3];
    }

    strcpy(a4 + 36, v13);
  }

  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v15 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_auxiliarywords", &__c[3], &__c[1], __c);
  if ((v15 & 0x80000000) != 0)
  {
    v20 = -1979703276;
  }

  else
  {
    v16 = v15;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      goto LABEL_23;
    }

    v17 = strlen(**&__c[3]);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(**&__c[3], v17);
    *a4 = ChineseUTFCharNum;
    v19 = heap_Alloc(*(a5 + 8), 8 * ChineseUTFCharNum);
    *(a4 + 1) = v19;
    v20 = -1979703286;
    if (v19)
    {
      if (*a4)
      {
        v21 = 0;
        v22 = **&__c[3];
        while (1)
        {
          v23 = utf8_determineUTF8CharLength(*v22);
          *(*(a4 + 1) + 8 * v21) = heap_Calloc(*(a5 + 8), 1, v23 + 1);
          v24 = *(a4 + 1);
          v25 = *(v24 + 8 * v21);
          if (!v25)
          {
            break;
          }

          memcpy(v25, v22, v23);
          *(*(*(a4 + 1) + 8 * v21) + v23) = 0;
          v22 += v23;
          if (++v21 >= *a4)
          {
            goto LABEL_23;
          }
        }

        heap_Free(*(a5 + 8), v24);
        v20 = -1979703286;
        goto LABEL_26;
      }

LABEL_23:
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  LODWORD(v16) = v20;
LABEL_27:
  *(a4 + 1) = 0;
  if (v16 == -1979703286)
  {
    v16 = 2315264010;
  }

  else
  {
    v16 = 0;
  }

LABEL_30:
  a4[16] = 0;
  *(a4 + 3) = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v26 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_custermizedchar", &__c[3], &__c[1], __c);
  if (v26 < 0)
  {
    v27 = -1979703276;
  }

  else
  {
    v27 = v26;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      a4[16] = 0;
      goto LABEL_41;
    }

    *(**&__c[3] + strlen(**&__c[3]) - 1) = 0;
    v28 = Utf8_Utf8NbrOfSymbols(**&__c[3]);
    a4[16] = v28 - 1;
    v29 = heap_Alloc(*(a5 + 8), 8 * (v28 - 1));
    *(a4 + 3) = v29;
    if (v29)
    {
      if (!a4[16])
      {
        goto LABEL_42;
      }

      v30 = 0;
      v31 = **&__c[3];
      while (1)
      {
        v32 = utf8_determineUTF8CharLength(*v31);
        *(*(a4 + 3) + 8 * v30) = heap_Calloc(*(a5 + 8), 1, v32 + 1);
        v33 = *(a4 + 3);
        v34 = *(v33 + 8 * v30);
        if (!v34)
        {
          break;
        }

        memcpy(v34, v31, v32);
        *(*(*(a4 + 3) + 8 * v30) + v32) = 0;
        v31 += v32;
        if (++v30 >= a4[16])
        {
          goto LABEL_42;
        }
      }

      heap_Free(*(a5 + 8), v33);
      v27 = -1979703286;
LABEL_41:
      *(a4 + 3) = 0;
LABEL_42:
      if (!v27)
      {
        return v16;
      }

      goto LABEL_45;
    }

    v27 = -1979703286;
  }

LABEL_45:
  *(a4 + 3) = 0;
  if (v27 == -1979703286)
  {
    return 2315264010;
  }

  else
  {
    return v16;
  }
}

void *freePwTids(void *result, uint64_t a2)
{
  v2 = *(a2 + 1064);
  if (v2)
  {
    v4 = *(a2 + 1072);
    if (*(a2 + 1072))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = heap_Free(v5[1], v8);
          v2 = *(a2 + 1064);
          *(v2 + v6) = 0;
          v4 = *(a2 + 1072);
        }

        ++v7;
        v6 += 184;
      }

      while (v7 < v4);
    }
  }

  return result;
}

void *freePWInfo(void *result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 1064);
  if (v3)
  {
    v5 = result;
    v7 = *(v3 + 184 * a3 + 40);
    if (v7)
    {
      result = heap_Free(result[1], v7);
      v3 = *(a2 + 1064);
    }

    v8 = *(v3 + 184 * a3 + 24);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      v3 = *(a2 + 1064);
    }

    v9 = v3 + 184 * a3;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
  }

  return result;
}

uint64_t pw_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t ****a6, uint64_t a7, void *a8, int a9, uint64_t *a10, uint64_t a11, int a12, int a13)
{
  v262 = *MEMORY[0x1E69E9840];
  v255 = 0;
  v256 = 0;
  v254 = 0;
  v253 = 0;
  v250 = "";
  v251 = 0;
  v249 = 0;
  v246 = 0;
  v244 = 0;
  v245 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  BYTE2(v237[1]) = 0;
  strcpy(v237, "latin");
  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  v258 = 0u;
  v235 = 0;
  v236 = 0;
  v13 = 2315264007;
  if (a3)
  {
    v14 = a4;
    if (a4)
    {
      v15 = a5;
      if (a5)
      {
        if (a6 && a7 && a8)
        {
          v18 = a3;
          bzero(v242, 0x404uLL);
          *(v15 + 1088) = 0;
          *(v15 + 1064) = 0;
          if (*(v15 + 1098) != 1)
          {
            return 0;
          }

          v252 = 0;
          v248 = 0;
          v247 = 0;
          v223 = (v15 + 1088);
          v13 = (*(v18 + 176))(a1, a2, *(v15 + 1096), 0);
          if ((v13 & 0x80000000) == 0 && HIWORD(v256) >= 2u)
          {
            v21 = *(v15 + 1096);
            *v257 = 0;
            LODWORD(v234) = 0;
            *__s1 = 0;
            LOWORD(v231) = 0;
            LOWORD(v230) = 0;
            v228 = a2;
            v22 = (*(v18 + 104))(a1, a2, 2, v21, v257);
            v23 = v22;
            v227 = v18;
            v224 = a1;
            if ((v22 & 0x80000000) == 0)
            {
              v24 = *v257;
              if (*v257)
              {
                v220 = v15;
                v25 = 0;
                while (1)
                {
                  v26 = (*(v18 + 168))(a1, v228, v24, 0, 1, &v234, __s1);
                  if ((v26 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (v234 > 0xA || ((1 << v234) & 0x610) == 0)
                  {
                    v31 = 0;
                    v30 = *v257;
                    v32 = v228;
                  }

                  else
                  {
                    v26 = (*(v18 + 168))(a1, v228, *v257, 1, 1, &v231, __s1);
                    if ((v26 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v26 = (*(v18 + 168))(a1, v228, *v257, 2, 1, &v230, __s1);
                    if ((v26 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v29 = v231 > v25 || v25 < v230;
                    v30 = *v257;
                    if (v29)
                    {
                      v25 = v230;
                      v31 = 0;
                    }

                    else
                    {
                      v31 = *v257;
                    }

                    v32 = v228;
                    a1 = v224;
                  }

                  v26 = (*(v227 + 120))(a1, v32, v30, v257);
                  if ((v26 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (v31)
                  {
                    log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "%s", "Dropping nested word record");
                    v26 = (*(v227 + 192))(a1, v228, v31);
                    if ((v26 & 0x80000000) != 0)
                    {
                      break;
                    }
                  }

                  v24 = *v257;
                  v18 = v227;
                  if (!*v257)
                  {
                    goto LABEL_38;
                  }
                }

                v23 = v26;
                v41 = 0;
                v80 = 0;
                v48 = 0;
                v79 = 0;
LABEL_137:
                v15 = v220;
                goto LABEL_144;
              }
            }

            if ((v22 & 0x80000000) != 0)
            {
              v41 = 0;
              v80 = 0;
              v48 = 0;
              v79 = 0;
              goto LABEL_144;
            }

LABEL_38:
            v33 = (*(v18 + 104))(a1, v228, 2, *(v15 + 1096), &v256);
            v13 = v33;
            if ((v33 & 0x80000000) != 0)
            {
              v41 = 0;
              v80 = 0;
              v79 = 0;
              v23 = v33;
              v48 = 0;
              goto LABEL_144;
            }

            v34 = v256;
            if (!v256)
            {
              goto LABEL_140;
            }

            v219 = v14;
            v217 = 0;
            v35 = 0;
            v222 = 0;
            v221 = 0;
            v23 = -1979703286;
            v213 = (v15 + 1064);
            while (1)
            {
              v36 = (*(v227 + 120))(a1, v228, v34, &v255 + 2);
              if ((v36 & 0x80000000) != 0)
              {
                break;
              }

              v37 = (*(v227 + 168))(a1, v228, v256, 0, 1, &v252, &v256 + 2);
              v13 = v37;
              if ((v37 & 0x80000000) != 0)
              {
                v80 = 0;
                v79 = 0;
                v23 = v37;
                v48 = 0;
                goto LABEL_143;
              }

              v38 = v252;
              if (v252 > 0xA || ((1 << v252) & 0x610) == 0)
              {
                a1 = v224;
              }

              else
              {
                v40 = (*(v227 + 168))(v224, v228, v256, 1, 1, &v255, &v256 + 2);
                if ((v40 & 0x80000000) != 0)
                {
                  return v40;
                }

                v13 = (*(v227 + 168))(v224, v228, v256, 2, 1, &v254 + 2, &v256 + 2);
                if ((v13 & 0x80000000) != 0)
                {
                  return v13;
                }

                a1 = v224;
                if (!v255 || v221 + 1 == v255 && HIWORD(v254) > v255)
                {
                  ++v222;
                  v221 = HIWORD(v254);
                }

                v38 = v252;
              }

              if (v38 == 5)
              {
                v13 = (*(v227 + 176))(a1, v228, v256, 4, &v245, &v256 + 2);
                if ((v13 & 0x80000000) != 0)
                {
                  return v13;
                }

                if (HIWORD(v256))
                {
                  if (!strncmp(v245, "prompt", HIWORD(v256)))
                  {
                    ++v35;
                    if (v217 <= 0x7F)
                    {
                      v40 = (*(v227 + 168))(a1, v228, v256, 1, 1, &v255, &v256 + 2);
                      if ((v40 & 0x80000000) != 0)
                      {
                        return v40;
                      }

                      v13 = (*(v227 + 168))(a1, v228, v256, 2, 1, &v254 + 2, &v256 + 2);
                      if ((v13 & 0x80000000) != 0)
                      {
                        return v13;
                      }

                      v242[v217] = v255;
                      v242[v243 + 128] = HIWORD(v254);
                      v217 = ++v243;
                      a1 = v224;
                    }
                  }
                }
              }

              v34 = HIWORD(v255);
              LOWORD(v256) = HIWORD(v255);
              if (!HIWORD(v255))
              {
                if (v35 >= 0x81u)
                {
                  log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v35, 128, v35 - 128);
                }

                v41 = v222;
                if (v222)
                {
                  v220 = v15;
                  v42 = v222;
                  v43 = heap_Calloc(*(v219 + 8), v222, 40);
                  if (!v43)
                  {
                    log_OutPublic(*(v219 + 32), "FE_PHRASING", 37000, 0);
                    v80 = 0;
                    v48 = 0;
                    v79 = 0;
                    v14 = v219;
                    goto LABEL_137;
                  }

                  v218 = v43;
                  v44 = (v43 + 8);
                  do
                  {
                    v45 = heap_Calloc(*(v219 + 8), 128, 1);
                    *(v44 - 1) = v45;
                    if (!v45)
                    {
                      log_OutPublic(*(v219 + 32), "FE_PHRASING", 37000, 0);
                      v48 = 0;
                      v79 = 0;
                      v14 = v219;
                      goto LABEL_185;
                    }

                    v46 = heap_Calloc(*(v219 + 8), 1, 64);
                    *v44 = v46;
                    if (!v46)
                    {
                      v14 = v219;
                      log_OutPublic(*(v219 + 32), "FE_PHRASING", 37000, 0);
                      v48 = 0;
                      v79 = 0;
                      goto LABEL_185;
                    }

                    v44 += 5;
                    --v42;
                  }

                  while (v42);
                  v15 = v220;
                  v47 = (*(v227 + 104))(a1, v228, 2, *(v220 + 548), &v256);
                  if ((v47 & 0x80000000) != 0)
                  {
                    v48 = 0;
                    v79 = 0;
                  }

                  else
                  {
                    v47 = (*(v227 + 176))(a1, v228, *(v220 + 548), 0, v223, &v256 + 2);
                    v48 = 0;
                    if ((v47 & 0x80000000) == 0 && HIWORD(v256) >= 2u)
                    {
                      v49 = v256;
                      v50 = v224;
                      if (v256)
                      {
                        v214 = 0;
                        v51 = 0;
                        while (1)
                        {
                          v52 = (*(v227 + 120))(v50, v228, v49, &v255 + 2);
                          if ((v52 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v52 = (*(v227 + 168))(v50, v228, v256, 0, 1, &v252, &v256 + 2);
                          if ((v52 & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v252 > 0xA || ((1 << v252) & 0x610) == 0)
                          {
                            v50 = v224;
                          }

                          else
                          {
                            v52 = (*(v227 + 168))(v224, v228, v256, 1, 1, &v255, &v256 + 2);
                            if ((v52 & 0x80000000) != 0)
                            {
                              break;
                            }

                            v52 = (*(v227 + 168))(v224, v228, v256, 2, 1, &v254 + 2, &v256 + 2);
                            if ((v52 & 0x80000000) != 0)
                            {
                              break;
                            }

                            v50 = v224;
                            if (!v255 || v51 + 1 == v255 && HIWORD(v254) > v255)
                            {
                              v54 = (*(v227 + 176))(v224, v228, v256, 3, &v244, &v256 + 2);
                              if ((v54 & 0x80000000) != 0)
                              {
                                v48 = 0;
                                v79 = 0;
                                v23 = v54;
                                goto LABEL_419;
                              }

                              v55 = v244;
                              v56 = &v218[5 * v214];
                              if (strstr(v244, "comma"))
                              {
                                *(v56 + 13) = 11;
                              }

                              else
                              {
                                *(v56 + 13) = 1;
                                v57 = strchr(v55, 46);
                                v249 = v57;
                                if (v57)
                                {
                                  v58 = 1;
                                  do
                                  {
                                    v59 = v57 + 1;
                                    v249 = v59;
                                    *(v56 + 13) = ++v58;
                                    v57 = strchr(v59, 46);
                                    v249 = v57;
                                  }

                                  while (v57);
                                }
                              }

                              v60 = v255;
                              if (v255 >= HIWORD(v254))
                              {
                                v66 = 1;
                              }

                              else
                              {
                                v61 = 0;
                                do
                                {
                                  IsChineseLetter = utf8_IsChineseLetter(&(*v223)[v60]);
                                  v63 = (*v223)[v60];
                                  if (v63 > 0x3E || ((1 << v63) & 0x4C00510000000000) == 0)
                                  {
                                    v65 = 1;
                                  }

                                  else
                                  {
                                    v65 = v61;
                                  }

                                  if (!IsChineseLetter)
                                  {
                                    v61 = v65;
                                  }

                                  v60 += utf8_determineUTF8CharLength((*v223)[v60]);
                                }

                                while (v60 < HIWORD(v254));
                                v66 = v61 == 0;
                              }

                              v67 = &v218[5 * v214];
                              *(v67 + 12) = v256;
                              if (!a12)
                              {
                                TNmarker = (*(v227 + 176))(v224, v228);
                                if ((TNmarker & 0x80000000) != 0)
                                {
                                  goto LABEL_134;
                                }

                                if (!hlp_NLUStrFind(v250, "POS", &v248, &v247))
                                {
                                  v48 = 0;
                                  v79 = 0;
                                  v23 = -1979703296;
LABEL_419:
                                  v14 = v219;
LABEL_192:
                                  v15 = v220;
LABEL_193:
                                  v41 = v222;
LABEL_186:
                                  v80 = v218;
                                  goto LABEL_144;
                                }

                                *v67[1] = 0;
                                if (v66)
                                {
                                  strncat(v67[1], v248, v247);
                                }

                                else
                                {
                                  *(v67[1] + strlen(v67[1])) = 7237486;
                                }

                                v50 = v224;
                              }

                              if (((*(v227 + 184))(v50, v228, v256, 9, &v256 + 2) & 0x80000000) == 0 && HIWORD(v256) == 1)
                              {
                                TNmarker = (*(v227 + 176))(v50, v228, v256, 9, v67 + 2, &v256 + 2);
                                if ((TNmarker & 0x80000000) != 0)
                                {
                                  goto LABEL_134;
                                }
                              }

                              v69 = HIWORD(v254);
                              v70 = v255;
                              v71 = HIWORD(v254) - v255;
                              v72 = *v67;
                              if (v71 >= 128)
                              {
                                v73 = heap_Realloc(*(v219 + 8), *v67, (v71 + 1));
                                *v67 = v73;
                                if (!v73)
                                {
                                  v14 = v219;
                                  log_OutPublic(*(v219 + 32), "FE_PHRASING", 37000, 0);
                                  v48 = 0;
                                  v79 = 0;
                                  goto LABEL_192;
                                }

                                v72 = v73;
                                v70 = v255;
                                v69 = HIWORD(v254);
                              }

                              memcpy(v72, &(*v223)[v70], v69 - v70);
                              *(*v67 - v255 + HIWORD(v254)) = 0;
                              v51 = HIWORD(v254);
                              *(v67 + 7) = v255;
                              *(v67 + 8) = v51;
                              ++v214;
                              v41 = v222;
                            }
                          }

                          v49 = HIWORD(v255);
                          LOWORD(v256) = HIWORD(v255);
                          if (!HIWORD(v255))
                          {
                            goto LABEL_123;
                          }
                        }

                        v48 = 0;
                        v79 = 0;
                        v23 = v52;
                        v14 = v219;
LABEL_185:
                        v15 = v220;
                        goto LABEL_186;
                      }

LABEL_123:
                      v14 = v219;
                      word_separating_markers = pw_get_word_separating_markers(v227, v219, v50, v228, *(v220 + 548), &v241, &v240);
                      if ((word_separating_markers & 0x80000000) != 0)
                      {
                        v48 = 0;
                        v79 = 0;
                        v23 = word_separating_markers;
                        goto LABEL_192;
                      }

                      v75 = v240;
                      log_OutText(*(v219 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v240);
                      if (v75)
                      {
                        v76 = 0;
                        v77 = v241;
                        do
                        {
                          log_OutText(*(v219 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v77[v76++]);
                        }

                        while (v75 > v76);
                      }

                      TNmarker = getTNmarker(*(v220 + 548), v219, v227, v224, v228, &v236);
                      if ((TNmarker & 0x80000000) != 0 || (v78 = v236, *a10 = v236, *(v220 + 536) = 0, *(v220 + 133) = 0, TNmarker = pw_nn_process(v219, a6, v218, v222, &v239, &v254, a7, a8, a9, v78, v220[16], *(v220 + 3), a13), (TNmarker & 0x80000000) != 0) || (paramc_ParamGetStr(*(v219 + 40), "spaceInPYT", &v251) & 0x80000000) == 0 && !LH_stricmp(v251, "yes") && (TNmarker = pw_PYT_process(v227, v224, v228, v219, v218, v222, v241, v75, &v239, &v254), (TNmarker & 0x80000000) != 0))
                      {
LABEL_134:
                        v48 = 0;
                        v79 = 0;
                        v23 = TNmarker;
                      }

                      else
                      {
                        v226 = (v220 + 1072);
                        if (*(v220 + 8) == 1)
                        {
                          TNmarker = pw_group_csc(v219, v242, v218, v222, v220 + 36, v239, v254, v213, v226, *v220, *(v220 + 1));
                          if ((TNmarker & 0x80000000) != 0)
                          {
                            goto LABEL_134;
                          }
                        }

                        else
                        {
                          *v226 = v254;
                          *v213 = v239;
                          v239 = 0;
                          LOWORD(v254) = 0;
                        }

                        v91 = pw_respect_word_separating_markers(v227, v219, v224, v228, *(v220 + 548), v213, v226);
                        if ((v91 & 0x80000000) != 0 || a11 && (v91 = pw_igtree_process(v219, v218, v213, v226, v222, a11), (v91 & 0x80000000) != 0))
                        {
                          v48 = 0;
                          v79 = 0;
                          v23 = v91;
                        }

                        else
                        {
                          if (!*v223)
                          {
                            v14 = v219;
                            v15 = v220;
                            freePwTids(v219, v220);
                            v48 = 0;
                            v79 = 0;
                            v23 = v91;
                            goto LABEL_193;
                          }

                          __s = heap_Calloc(*(v219 + 8), 1024, 1);
                          if (__s)
                          {
                            v79 = heap_Calloc(*(v219 + 8), 64, 1);
                            if (!v79)
                            {
                              goto LABEL_423;
                            }

                            v92 = strlen(*(v220 + 136));
                            v93 = heap_Calloc(*(v219 + 8), *(v220 + 536), v92 + 2);
                            *(v220 + 135) = v93;
                            if (!v93)
                            {
                              goto LABEL_423;
                            }

                            if (*v226)
                            {
                              v94 = 0;
                              v95 = 0;
                              v206 = 64;
                              v208 = 1024;
                              while (1)
                              {
                                v215 = v95;
                                v96 = (*v213 + 184 * v95);
                                if (*(v96 + 4) == 1)
                                {
                                  break;
                                }

                                if (!*(v96 + 4))
                                {
                                  v14 = v219;
                                  log_OutText(*(v219 + 32), "FE_PHRASING", 5, 0, "Error: the prosody word should has at least one lexical word");
LABEL_424:
                                  v15 = v220;
                                  v41 = v222;
                                  v80 = v218;
                                  v48 = __s;
LABEL_144:
                                  if (v235)
                                  {
                                    heap_Free(*(v14 + 8), v235);
                                    v235 = 0;
                                  }

                                  if ((v23 & 0x80000000) != 0)
                                  {
                                    v81 = v236;
                                    if (v236)
                                    {
                                      v82 = *(v236 + 8);
                                      if (v82)
                                      {
                                        heap_Free(*(v14 + 8), v82);
                                      }

                                      *(v81 + 8) = 0;
                                      heap_Free(*(v14 + 8), v81);
                                      v236 = 0;
                                    }

                                    freePwTids(v14, v15);
                                  }

                                  if (v241)
                                  {
                                    heap_Free(*(v14 + 8), v241);
                                  }

                                  if (v80)
                                  {
                                    if (v41)
                                    {
                                      v83 = v41;
                                      v84 = (v80 + 8);
                                      do
                                      {
                                        v85 = *(v84 - 1);
                                        if (v85)
                                        {
                                          heap_Free(*(v14 + 8), v85);
                                          *(v84 - 1) = 0;
                                        }

                                        if (*v84)
                                        {
                                          heap_Free(*(v14 + 8), *v84);
                                          *v84 = 0;
                                        }

                                        v84 += 5;
                                        --v83;
                                      }

                                      while (v83);
                                    }

                                    heap_Free(*(v14 + 8), v80);
                                  }

                                  v86 = v239;
                                  if (v239)
                                  {
                                    v87 = v254;
                                    if (v254)
                                    {
                                      v88 = v239;
                                      do
                                      {
                                        if (*v88)
                                        {
                                          heap_Free(*(v14 + 8), *v88);
                                          *v88 = 0;
                                        }

                                        v88 += 23;
                                        --v87;
                                      }

                                      while (v87);
                                    }

                                    heap_Free(*(v14 + 8), v86);
                                    v239 = 0;
                                  }

                                  if (v48)
                                  {
                                    heap_Free(*(v14 + 8), v48);
                                  }

                                  if (v79)
                                  {
                                    heap_Free(*(v14 + 8), v79);
                                  }

                                  if (v254)
                                  {
                                    v89 = 0;
                                  }

                                  else
                                  {
                                    v89 = v23 == -1979703288;
                                  }

                                  if (v89)
                                  {
                                    return 0;
                                  }

                                  else
                                  {
                                    return v23;
                                  }
                                }

                                v234 = 0;
                                v97 = strlen(*v223);
                                bzero(__s, 0x400uLL);
                                *(v79 + 32) = 0u;
                                *(v79 + 48) = 0u;
                                *v79 = 0u;
                                *(v79 + 16) = 0u;
                                v261 = 0u;
                                v260 = 0u;
                                v259 = 0u;
                                v258 = 0u;
                                v98 = *v213;
                                v99 = *v213 + 184 * v215;
                                if (*(v99 + 8))
                                {
                                  v100 = 0;
                                  v101 = 0;
                                  v211 = 1;
                                  while (1)
                                  {
                                    v102 = (*(v227 + 168))(v224, v228, *(*v99 + 2 * v100), 1, 1, &v255, &v256 + 2);
                                    if ((v102 & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    v102 = (*(v227 + 168))(v224, v228, *(*(*v213 + 184 * v215) + 2 * v100), 2, 1, &v254 + 2, &v256 + 2);
                                    if ((v102 & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    v102 = (*(v227 + 176))(v224, v228, *(*(*v213 + 184 * v215) + 2 * v100), 3, &v244, &v256 + 2);
                                    if ((v102 & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    if (a12 && ((*(v227 + 184))(v224, v228, v256, 14, &v246), v246 != 1))
                                    {
                                      v209 = 0;
                                      v210 = 1;
                                    }

                                    else
                                    {
                                      v102 = (*(v227 + 176))(v224, v228, *(*(*v213 + 184 * v215) + 2 * v100), 14, &v250, &v256 + 2);
                                      if ((v102 & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v210 = 0;
                                      v209 = 1;
                                    }

                                    if (!v100)
                                    {
                                      *(*v213 + 184 * v215 + 16) = v255;
                                    }

                                    if ((v210 & 1) == 0)
                                    {
                                      v103 = *(v219 + 8);
                                      v104 = strlen(v250);
                                      v105 = v104;
                                      if (v235)
                                      {
                                        v106 = strlen(v235);
                                        v107 = heap_Realloc(v103, v235, v105 + v106 + 2);
                                        if (!v107)
                                        {
                                          goto LABEL_423;
                                        }

                                        v108 = v107;
                                        v235 = v107;
                                        *&v107[strlen(v107)] = 59;
                                        strcat(v108, v250);
                                      }

                                      else
                                      {
                                        v109 = heap_Alloc(v103, v104 + 1);
                                        v235 = v109;
                                        if (!v109)
                                        {
                                          goto LABEL_423;
                                        }

                                        strcpy(v109, v250);
                                      }
                                    }

                                    if (v211)
                                    {
                                      v211 = 0;
                                      v207 = 1;
                                      if (((*(v227 + 184))(v224, v228, *(*(*v213 + 184 * v215) + 2 * v100), 10, &v246) & 0x80000000) == 0 && v246 == 1)
                                      {
                                        v102 = (*(v227 + 176))(v224, v228, *(*(*v213 + 184 * v215) + 2 * v100), 10, &v234, &v256 + 2);
                                        if ((v102 & 0x80000000) != 0)
                                        {
                                          break;
                                        }

                                        v207 = 0;
                                        v211 = 1;
                                      }
                                    }

                                    else
                                    {
                                      v211 = 0;
                                      v207 = 1;
                                    }

                                    v110 = v244;
                                    if (v100)
                                    {
                                      v111 = strlen(__s);
                                      if (v111 + strlen(v244) + 1 > v208)
                                      {
                                        v112 = heap_Realloc(*(v219 + 8), __s, (v208 + 1024));
                                        if (!v112)
                                        {
                                          goto LABEL_423;
                                        }

                                        __s = v112;
                                        v208 += 1024;
                                      }

                                      (*v223)[v255 - 1] = 45;
                                      v110 = v244;
                                      if (*v244)
                                      {
                                        *&__s[strlen(__s)] = 46;
                                        v110 = v244;
                                      }

                                      v113 = *(*(*v213 + 184 * v215) + 2 * v100);
                                      v114 = strstr(v110, "{SEP");
                                      v249 = v114;
                                      if (v114)
                                      {
                                        v249 = v114 + 4;
                                        v114[4] += v101;
                                        v110 = v244;
                                      }
                                    }

                                    else
                                    {
                                      v113 = 0;
                                    }

                                    strcat(__s, v110);
                                    if ((v210 & 1) == 0 && hlp_NLUStrFind(v250, "POS", &v248, &v247))
                                    {
                                      if (strlen(v79) + v247 + 2 > v206)
                                      {
                                        v115 = heap_Realloc(*(v219 + 8), v79, (v206 + 64) + 1);
                                        if (!v115)
                                        {
                                          goto LABEL_423;
                                        }

                                        v79 = v115;
                                        v206 += 64;
                                      }

                                      if (*v79)
                                      {
                                        *(v79 + strlen(v79)) = 45;
                                      }

                                      strncat(v79, v248, v247);
                                    }

                                    v116 = v211;
                                    if (!v234)
                                    {
                                      v116 = 0;
                                    }

                                    if (v116 == 1)
                                    {
                                      __strcat_chk();
                                    }

                                    v117 = v244;
                                    if (v244)
                                    {
                                      do
                                      {
                                        v118 = v117;
                                        v119 = v101;
                                        v101 = 0;
                                        v249 = strstr(v117, "{SEP");
                                        v117 = v249 + 1;
                                      }

                                      while (v249);
                                      for (i = v118; ; i = v121 + 1)
                                      {
                                        v121 = strchr(i, 46);
                                        v249 = v121;
                                        if (!v121)
                                        {
                                          break;
                                        }

                                        ++v119;
                                      }
                                    }

                                    else
                                    {
                                      v119 = v101;
                                    }

                                    if (v113)
                                    {
                                      v102 = (*(v227 + 192))(v224, v228, v113);
                                      if ((v102 & 0x80000000) != 0)
                                      {
                                        break;
                                      }
                                    }

                                    v101 = v119 + 1;
                                    ++v100;
                                    v98 = *v213;
                                    v99 = *v213 + 184 * v215;
                                    if (v100 >= *(v99 + 8))
                                    {
                                      goto LABEL_271;
                                    }
                                  }

LABEL_422:
                                  v23 = v102;
                                  goto LABEL_423;
                                }

                                v207 = 0;
                                v209 = v94;
LABEL_271:
                                if (v209)
                                {
                                  v102 = pw_merge_NLU(v219, &v235);
                                  if ((v102 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v98 = *v213;
                                }

                                if (*(v220 + 8) == 1)
                                {
                                  pw_split_csc_pw(v98 + 184 * v215, __s);
                                  v98 = *v213;
                                }

                                v102 = (*(v227 + 160))(v224, v228, **(v98 + 184 * v215), 2, 1, &v254 + 2, &v253);
                                if ((v102 & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                v124 = v215 + v215 * v97;
                                v125 = HIWORD(v254);
                                v126 = *(v220 + 133) + 184 * v215;
                                *(v126 + 18) = HIWORD(v254);
                                v127 = *(v126 + 16);
                                v128 = (v125 - v127);
                                memcpy((*(v220 + 135) + v124), (*(v220 + 136) + v127), v128);
                                *(*(v220 + 135) + v124 + v128) = 0;
                                v129 = (*(v220 + 133) + 184 * v215);
                                v129[7] = (*(v220 + 135) + v124);
                                v130 = **v129;
                                v131 = strlen(__s);
                                v102 = (*(v227 + 160))(v224, v228, v130, 3, (v131 + 1), __s, &v253);
                                if ((v102 & 0x80000000) != 0)
                                {
                                  goto LABEL_422;
                                }

                                v132 = strlen(__s);
                                v133 = heap_Alloc(*(v219 + 8), v132 + 1);
                                *(*v213 + 184 * v215 + 24) = v133;
                                if (!v133)
                                {
                                  goto LABEL_423;
                                }

                                strcpy(v133, __s);
                                if (v209)
                                {
                                  v134 = v235;
                                  hlp_NLUStrRemoveKeyVal(v235, "POS");
                                  hlp_NLUStrSet(v134, "POS", v79);
                                  v135 = v235;
                                  v136 = strlen(v235);
                                  (*(v227 + 160))(v224, v228, **(*v213 + 184 * v215), 14, (v136 + 1), v235, &v253);
                                  v137 = strlen(v135);
                                  v138 = heap_Alloc(*(v219 + 8), v137 + 1);
                                  *(*v213 + 184 * v215 + 40) = v138;
                                  if (!v138)
                                  {
                                    goto LABEL_423;
                                  }

                                  strcpy(v138, v135);
                                  v250 = "";
                                  if (v135)
                                  {
                                    heap_Free(*(v219 + 8), v135);
                                    v235 = 0;
                                  }
                                }

                                if ((v207 & 1) == 0)
                                {
                                  v139 = strlen(&v258);
                                  v102 = (*(v227 + 160))(v224, v228, **(*v213 + 184 * v215), 10, (v139 + 1), &v258, &v253);
                                  if ((v102 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }
                                }

LABEL_295:
                                v95 = v215 + 1;
                                v94 = v209;
                                if (*v226 <= (v215 + 1))
                                {
                                  goto LABEL_296;
                                }
                              }

                              v122 = strlen(*v223);
                              v102 = (*(v227 + 168))(v224, v228, **v96, 1, 1, v96 + 2, &v256 + 2);
                              if ((v102 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v102 = (*(v227 + 168))(v224, v228, **(*v213 + 184 * v215), 2, 1, *v213 + 184 * v215 + 18, &v256 + 2);
                              if ((v102 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v102 = (*(v227 + 176))(v224, v228, **(*v213 + 184 * v215), 3, &v244, &v256 + 2);
                              if ((v102 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              if (a12)
                              {
                                v102 = (*(v227 + 184))(v224, v228, v256, 14, &v246);
                                v209 = v246;
                                if (!v246)
                                {
                                  goto LABEL_269;
                                }

                                if (v246 != 1)
                                {
                                  if ((v102 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v209 = v94;
                                  if (!v94)
                                  {
LABEL_269:
                                    v209 = 0;
                                    v250 = 0;
                                    v123 = 1;
LABEL_289:
                                    v140 = v215 + v215 * v122;
                                    v141 = *(v220 + 133) + 184 * v215;
                                    v142 = *(v141 + 18);
                                    v143 = *(v141 + 16);
                                    v144 = (v142 - v143);
                                    memcpy((*(v220 + 135) + v140), (*(v220 + 136) + v143), v144);
                                    *(*(v220 + 135) + v140 + v144) = 0;
                                    v145 = *(v220 + 133);
                                    *(v145 + 184 * v215 + 56) = *(v220 + 135) + v140;
                                    if (v123)
                                    {
                                      *(v145 + 184 * v215 + 40) = 0;
                                    }

                                    else
                                    {
                                      v146 = strlen(v250);
                                      v147 = heap_Alloc(*(v219 + 8), v146 + 1);
                                      *(*v213 + 184 * v215 + 40) = v147;
                                      if (!v147)
                                      {
                                        goto LABEL_423;
                                      }

                                      strcpy(v147, v250);
                                    }

                                    v148 = strlen(v244);
                                    v149 = heap_Alloc(*(v219 + 8), v148 + 1);
                                    *(*v213 + 184 * v215 + 24) = v149;
                                    if (!v149)
                                    {
                                      goto LABEL_423;
                                    }

                                    strcpy(v149, v244);
                                    goto LABEL_295;
                                  }
                                }
                              }

                              else
                              {
                                v209 = 1;
                              }

                              v102 = (*(v227 + 176))(v224, v228, **(*v213 + 184 * v215), 14, &v250, &v256 + 2);
                              if ((v102 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v123 = 0;
                              goto LABEL_289;
                            }

LABEL_296:
                            freePwTids(v219, v220);
                            *(v220 + 537) = *(v220 + 536);
                            v23 = (*(v227 + 104))(v224, v228, 2, *(v220 + 548), &v256);
                            if ((v23 & 0x80000000) != 0 || (bzero(__s, 0x400uLL), *(v79 + 32) = 0u, *(v79 + 48) = 0u, *v79 = 0u, *(v79 + 16) = 0u, v261 = 0u, v260 = 0u, v259 = 0u, v258 = 0u, HIWORD(v255) = 0, (v150 = v256) == 0))
                            {
LABEL_423:
                              v14 = v219;
                              goto LABEL_424;
                            }

                            v151 = 0;
                            LOWORD(v216) = 0;
                            v152 = 0;
                            while (2)
                            {
                              v102 = (*(v227 + 120))(v224, v228, v150, &v255 + 2);
                              if ((v102 & 0x80000000) != 0)
                              {
                                goto LABEL_422;
                              }

                              v23 = (*(v227 + 168))(v224, v228, v256, 0, 1, &v252, &v256 + 2);
                              if ((v23 & 0x80000000) != 0)
                              {
                                goto LABEL_423;
                              }

                              if (v252 <= 0xA && ((1 << v252) & 0x610) != 0)
                              {
                                v154 = *v213;
                                v155 = *v213 + 184 * v151;
                                *(v155 + 36) = v252;
                                LOWORD(v255) = *(v155 + 16);
                                v156 = *(v155 + 18);
                                HIWORD(v254) = v156;
                                if (v255)
                                {
                                  if (v152 + 1 != v255 || v156 <= v255)
                                  {
                                    goto LABEL_396;
                                  }
                                }

                                v234 = 0;
                                v158 = v154 + 184 * v151;
                                v244 = *(v158 + 24);
                                v250 = 0;
                                v250 = *(v158 + 40);
                                if (((*(v227 + 184))(v224, v228, v256, 10, &v246) & 0x80000000) == 0 && v246 == 1)
                                {
                                  v23 = (*(v227 + 176))(v224, v228, v256, 10, &v234, &v256 + 2);
                                  if ((v23 & 0x80000000) != 0)
                                  {
                                    goto LABEL_423;
                                  }
                                }

                                if (HIWORD(v254) - v255 > 5)
                                {
                                  v159 = 0;
LABEL_344:
                                  if (checkAttachedPunc(*(*v213 + 184 * v151 + 56)))
                                  {
                                    LOBYTE(v238) = 0;
                                  }

                                  else
                                  {
                                    v173 = &(*v223)[HIWORD(v254)];
                                    v174 = *(v173 - 1);
                                    LOWORD(v238) = *(v173 - 3);
                                    HIWORD(v238) = v174;
                                  }

                                  goto LABEL_347;
                                }

                                *v257 = 0;
                                v233 = 0;
                                *__s1 = 0;
                                v160 = HIWORD(v254) - v255;
                                __memcpy_chk();
                                v257[v160] = 0;
                                if (utf8_IsChineseLetter(v257))
                                {
                                  v161 = v240;
                                  if (v240)
                                  {
                                    v162 = v241;
                                    do
                                    {
                                      v163 = *v162++;
                                      if (v163 == v255)
                                      {
                                        goto LABEL_341;
                                      }
                                    }

                                    while (--v161);
                                  }

                                  if (*v236 && *(v236 + 4))
                                  {
                                    v164 = *(v236 + 8);
                                    v165 = *(v236 + 4) - 1;
                                    do
                                    {
                                      v167 = *v164++;
                                      v166 = v167;
                                      if (v167 == HIWORD(v254))
                                      {
                                        goto LABEL_341;
                                      }
                                    }

                                    while (v166 <= HIWORD(v254) && v165-- != 0);
                                  }

                                  if (strstr(v244, "11") && utf8_IsChineseLetter(&v238))
                                  {
LABEL_332:
                                    v159 = 1;
                                  }

                                  else
                                  {
                                    v231 = 0;
                                    v169 = strlen(v257);
                                    v229 = 0;
                                    v230 = 0;
                                    utf8_Utf8ToUtf32_Tolerant(v257, v169, &v231, 1u, &v230);
                                    v170 = v230;
                                    if (v169 <= 3)
                                    {
                                      v170 = 0;
                                    }

                                    utf8_Utf32ToUtf8(&v231, 1, __s1, v169 - v170, &v229);
                                    __s1[v229] = 0;
                                    v159 = *v220;
                                    if (*v220)
                                    {
                                      v171 = 0;
                                      do
                                      {
                                        if (!strcmp(__s1, *(*(v220 + 1) + 8 * v171)))
                                        {
                                          if (utf8_IsChineseLetter(&v238))
                                          {
                                            goto LABEL_332;
                                          }

                                          LOBYTE(v159) = *v220;
                                        }

                                        ++v171;
                                      }

                                      while (v171 < v159);
                                      goto LABEL_341;
                                    }
                                  }
                                }

                                else
                                {
LABEL_341:
                                  v159 = 0;
                                }

                                v172 = HIWORD(v254) - v255;
                                if (HIWORD(v254) - v255 > 2)
                                {
                                  goto LABEL_344;
                                }

                                __memcpy_chk();
                                *(&v238 + v172) = 0;
LABEL_347:
                                if (v159)
                                {
                                  if (v216)
                                  {
                                    *v257 = 0;
                                    v23 = pw_check_if_glue_forbidden(v227, v224, v228, *(v220 + 548), v216, v256, v257);
                                    v159 = *v257 == 0;
                                    if ((v23 & 0x80000000) != 0)
                                    {
                                      goto LABEL_423;
                                    }
                                  }
                                }

                                if (v250)
                                {
                                  hlp_NLUStrFind(v250, "POS", &v248, &v247);
                                  if (v234 && (v175 = strlen(&v258), v175 + strlen(v234) - 63 < 0xFFFFFFFFFFFFFFC0) || v248 && (v176 = strlen(v79), v176 + strlen(v248) - 62 < 0xFFFFFFFFFFFFFFC0) || v244 && (v177 = strlen(__s), v177 + strlen(v244) - 1022 <= 0xFFFFFFFFFFFFFBFFLL))
                                  {
                                    log_OutText(*(v219 + 32), "FE_PHRASING", 5, 0, "skip the merging due to the length limit of prosodic word");
                                    goto LABEL_377;
                                  }
                                }

                                else
                                {
                                  v247 = 0;
                                  v248 = 0;
                                }

                                if (v159 && v216 && (v237[0] == 1769234796 ? (v178 = LOWORD(v237[1]) == 110) : (v178 = 0), !v178))
                                {
                                  log_OutText(*(v219 + 32), "FE_PHRASING", 5, 0, "merge special auxiliary word and neutral tone cases");
                                  (*v223)[v255 - 1] = 45;
                                  *&__s[strlen(__s)] = 46;
                                  v179 = v244;
                                  if (v244)
                                  {
                                    v180 = strlen(v244);
                                    v181 = strlen(__s) + v180;
                                    if (v181 >= 0x401)
                                    {
                                      v182 = heap_Realloc(*(v219 + 8), __s, v181 + 1);
                                      if (!v182)
                                      {
                                        goto LABEL_427;
                                      }

                                      v179 = v244;
                                      __s = v182;
                                    }

                                    strcat(__s, v179);
                                  }

                                  if (v250)
                                  {
                                    if (v247)
                                    {
                                      *(v79 + strlen(v79)) = 45;
                                      if (v248)
                                      {
                                        strncat(v79, v248, v247);
                                      }
                                    }
                                  }

                                  if (v234 && v258)
                                  {
                                    __strcat_chk();
                                  }

                                  else
                                  {
                                    LOBYTE(v258) = 0;
                                  }

                                  v102 = (*(v227 + 192))(v224, v228, v256);
                                  if ((v102 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v102 = (*(v227 + 160))(v224, v228, v216, 2, 1, &v254 + 2, &v253);
                                  if ((v102 & 0x80000000) != 0)
                                  {
                                    goto LABEL_422;
                                  }

                                  v188 = strlen(__s);
                                  v23 = (*(v227 + 160))(v224, v228, v216, 3, (v188 + 1), __s, &v253);
                                  if ((v23 & 0x80000000) != 0)
                                  {
                                    goto LABEL_423;
                                  }

                                  if (v250)
                                  {
                                    v189 = v151 - 1;
                                    v190 = strlen(*(*v213 + 184 * v189 + 40));
                                    v191 = strlen(v79);
                                    v192 = heap_Realloc(*(v219 + 8), *(*v213 + 184 * v189 + 40), v190 + v191 + 5);
                                    *(*v213 + 184 * v189 + 40) = v192;
                                    if (!v192)
                                    {
                                      log_OutPublic(*(v219 + 32), "FE_PHRASING", 37000, 0);
LABEL_427:
                                      v23 = -1979703286;
                                      goto LABEL_423;
                                    }

                                    *(v192 + v190) = 0;
                                    hlp_NLUStrSet(*(*v213 + 184 * v189 + 40), "POS", v79);
                                    v193 = strlen(v250);
                                    v23 = (*(v227 + 160))(v224, v228, v216, 14, (v193 + 1), v250, &v253);
                                    if ((v23 & 0x80000000) != 0)
                                    {
                                      goto LABEL_423;
                                    }

                                    v250 = "";
                                  }

                                  v194 = *v213;
                                  v195 = v151 - 1;
                                  *(*v213 + 184 * v195 + 18) = HIWORD(v254);
                                  v196 = *(v194 + 184 * v151 + 24);
                                  v197 = strlen(__s);
                                  v198 = heap_Realloc(*(v219 + 8), v196, v197 + 1);
                                  *(*v213 + 184 * v151 + 24) = v198;
                                  strcpy(v198, __s);
                                  v199 = *v213;
                                  v200 = *v213 + 184 * v195;
                                  v202 = *(v200 + 72);
                                  v201 = (v200 + 72);
                                  if (v202)
                                  {
                                    v203 = 1;
                                  }

                                  else
                                  {
                                    v203 = *(v199 + 184 * v151 + 72) != 0;
                                  }

                                  *v201 = v203;
                                  *(*(v199 + 184 * v195 + 56) + strlen(*(v199 + 184 * v195 + 56))) = 45;
                                  strcat(*(*(v220 + 133) + 184 * v195 + 56), *(*(v220 + 133) + 184 * v151 + 56));
                                  --*(v220 + 536);
                                  freePWInfo(v219, v220, v151);
                                  v204 = *(v220 + 536);
                                  if (v151 != v204)
                                  {
                                    memmove((*v213 + 184 * v151), (*v213 + 184 * v151 + 184), 184 * (v204 - v151));
                                  }

                                  --v151;
                                  if (v258)
                                  {
                                    v205 = strlen(&v258);
                                    v23 = (*(v227 + 160))(v224, v228, v216, 10, (v205 + 1), &v258, &v253);
                                    if ((v23 & 0x80000000) != 0)
                                    {
                                      goto LABEL_423;
                                    }
                                  }
                                }

                                else
                                {
LABEL_377:
                                  v183 = v244;
                                  if (v244)
                                  {
                                    v184 = strlen(v244);
                                    if (v184 >= 0x401)
                                    {
                                      v185 = v184;
                                      v186 = strlen(__s);
                                      if (v185 > v186)
                                      {
                                        v187 = heap_Realloc(*(v219 + 8), __s, v185 + v186 + 1);
                                        if (!v187)
                                        {
                                          goto LABEL_427;
                                        }

                                        v183 = v244;
                                        __s = v187;
                                      }
                                    }

                                    strcpy(__s, v183);
                                  }

                                  *v79 = 0;
                                  if (v247 && v248)
                                  {
                                    strncat(v79, v248, v247);
                                  }

                                  if (v234)
                                  {
                                    __strcpy_chk();
                                  }

                                  else
                                  {
                                    LOBYTE(v258) = 0;
                                  }

                                  v216 = v256;
                                  if (((*(v227 + 184))(v224, v228) & 0x80000000) != 0 || HIWORD(v256) != 1)
                                  {
                                    strcpy(v237, "latin");
                                  }

                                  else
                                  {
                                    v23 = (*(v227 + 176))(v224, v228, v216, 9, &v249, &v256 + 2);
                                    if ((v23 & 0x80000000) != 0 || strlen(v249) > 6)
                                    {
                                      goto LABEL_423;
                                    }

                                    __strcpy_chk();
                                  }
                                }

                                v152 = HIWORD(v254);
LABEL_396:
                                if (*v226 <= ++v151)
                                {
                                  goto LABEL_423;
                                }
                              }

                              v150 = HIWORD(v255);
                              LOWORD(v256) = HIWORD(v255);
                              if (!HIWORD(v255))
                              {
                                goto LABEL_423;
                              }

                              continue;
                            }
                          }

                          v48 = 0;
                          v79 = 0;
                        }
                      }

                      v14 = v219;
                      goto LABEL_192;
                    }

                    v79 = 0;
                  }

                  v23 = v47;
                  v80 = v218;
                  v14 = v219;
                  goto LABEL_144;
                }

LABEL_140:
                log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: no lexicon word");
                return v13;
              }
            }

            v80 = 0;
            v48 = 0;
            v79 = 0;
            v23 = v36;
LABEL_143:
            v41 = v222;
            goto LABEL_144;
          }
        }
      }
    }
  }

  return v13;
}

uint64_t pw_get_word_separating_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v25 = 0;
  v24 = 0;
  v10 = (*(a1 + 176))(a3, a4, a5, 1, &v24, &v25);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_18:
    if (*a6)
    {
      heap_Free(*(a2 + 8), *a6);
      *a6 = 0;
    }

    return v10;
  }

  if (!v25)
  {
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Warning: no marker in lingdb.");
    return v10;
  }

  v11 = heap_Calloc(*(a2 + 8), v25, 4);
  *a6 = v11;
  if (!v11)
  {
    goto LABEL_17;
  }

  *a7 = 0;
  v12 = v25;
  if (v25)
  {
    v13 = 0;
    v14 = v24;
    v15 = v25;
    v16 = v24;
    v17 = v24;
    do
    {
      v18 = *v17;
      v17 += 8;
      v19 = (1 << v18) & 0x3C0010124001140;
      if (v18 <= 0x39 && v19 != 0)
      {
        *(v11 + 4 * v13) = v16[3] - v14[3];
        v13 = *a7 + 1;
        *a7 = v13;
      }

      v16 = v17;
      --v15;
    }

    while (v15);
    v21 = v13 + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v21 > v12)
  {
    v22 = heap_Realloc(*(a2 + 8), v11, 4 * v21);
    *a6 = v22;
    if (!v22)
    {
LABEL_17:
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0);
      v10 = 2315264010;
      goto LABEL_18;
    }
  }

  return v10;
}

uint64_t getTNmarker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = 2315264010;
  v31 = 0;
  v30 = 0;
  v13 = heap_Alloc(*(a2 + 8), 24);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_31;
  }

  *v13 = 0;
  *(v13 + 4) = 0;
  *(v13 + 8) = 0;
  v15 = (*(a3 + 176))(a4, a5, a1, 1, &v30, &v31);
  v16 = v15;
  if ((v15 & 0x80000000) != 0)
  {
    v12 = v15;
  }

  else
  {
    v17 = v31;
    if (v31)
    {
      v18 = v30;
      do
      {
        if (*v18 == 34 || *v18 == 70 && v18[6] >= 3u)
        {
          if (!*v14)
          {
            *v14 = 1;
          }

          ++*(v14 + 4);
        }

        v18 += 8;
        --v17;
      }

      while (v17);
    }

    if (!*v14)
    {
LABEL_24:
      v12 = v16;
      goto LABEL_31;
    }

    v19 = heap_Alloc(*(a2 + 8), 4 * *(v14 + 4));
    *(v14 + 8) = v19;
    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = heap_Alloc(*(a2 + 8), 2 * *(v14 + 4));
    *(v14 + 16) = v20;
    if (v20)
    {
      if (v31)
      {
        v21 = 0;
        v22 = 0;
        v23 = v30 + 3;
        while (1)
        {
          v24 = *(v23 - 3);
          if (v24 == 34)
          {
            LOWORD(v26) = 0;
            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
          }

          else
          {
            if (v24 != 70 || v23[3] < 3u)
            {
              goto LABEL_23;
            }

            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
            v26 = v23[3];
          }

          *(v20 + 2 * v25) = v26;
          ++v22;
LABEL_23:
          ++v21;
          v23 += 8;
          if (v21 >= v31)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_24;
    }
  }

  v27 = *(v14 + 8);
  if (v27)
  {
    heap_Free(*(a2 + 8), v27);
    *(v14 + 8) = 0;
  }

LABEL_28:
  v28 = *(v14 + 16);
  if (v28)
  {
    heap_Free(*(a2 + 8), v28);
    *(v14 + 16) = 0;
  }

  heap_Free(*(a2 + 8), v14);
  v14 = 0;
LABEL_31:
  *a6 = v14;
  return v12;
}

uint64_t pw_PYT_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9, unsigned __int16 *a10)
{
  v10 = *a9;
  v11 = *a10;
  v77 = 0;
  v12 = a6;
  v76 = 0;
  v75 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v66 = (a5 + 24);
    v68 = a8;
    v16 = 1;
    while (1)
    {
      v17 = (v10 + 184 * v14);
      if (*(v17 + 4) > 1u)
      {
        goto LABEL_9;
      }

      v18 = **v17;
      v76 = 0;
      v13 = (*(a1 + 184))(a2, a3, v18, 9, &v76);
      if ((v13 & 0x80000000) == 0 && v76 == 1)
      {
        v13 = (*(a1 + 176))(a2, a3, v18, 9, &v77, &v76);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_76:
          heap_Free(*(a4 + 8), v10);
          return v13;
        }
      }

      if (!v77 || !strcmp(v77, "mnc!"))
      {
        v20 = 0;
        if (v12)
        {
          v21 = v66;
          while (1)
          {
            v22 = *v21;
            v21 += 20;
            if (v22 == **v17)
            {
              break;
            }

            if (v12 == ++v20)
            {
              LODWORD(v20) = v12;
              goto LABEL_16;
            }
          }

          LODWORD(v20) = v20;
        }

LABEL_16:
        if (a8)
        {
          v23 = *(a5 + 40 * v20 + 28);
          v24 = a7;
          v25 = v68;
          while (1)
          {
            v26 = *v24++;
            if (v26 == v23)
            {
              break;
            }

            if (!--v25)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          if (v16 != 1)
          {
            v76 = 0;
            v75 = 0;
            v13 = (*(a1 + 184))(a2, a3, v18, 19, &v76);
            v16 = 0;
            v19 = 1;
            if ((v13 & 0x80000000) == 0 && v76 == 1)
            {
              v13 = (*(a1 + 176))(a2, a3, v18, 19, &v75, &v76);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v16 = 0;
              v19 = strcmp(v75, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v16 = 0;
        v19 = 1;
      }

      else
      {
LABEL_9:
        v19 = 1;
        v16 = 1;
      }

LABEL_26:
      v15 += v19;
      if (v11 <= ++v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_29:
  v27 = a4;
  v28 = heap_Calloc(*(a4 + 8), v15, 184);
  if (v28)
  {
    *a10 = v15;
    *a9 = v28;
    if (v11)
    {
      v67 = v28;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 1;
      v65 = v11;
      while (1)
      {
        v33 = (v10 + 184 * v30);
        if (*(v33 + 4) < 2u)
        {
          v69 = v31;
          v38 = **v33;
          v76 = 0;
          if (((*(a1 + 184))(a2, a3, v38, 9, &v76) & 0x80000000) == 0 && v76 == 1)
          {
            v39 = (*(a1 + 176))(a2, a3, v38, 9, &v77, &v76);
            if ((v39 & 0x80000000) != 0)
            {
              v13 = v39;
              goto LABEL_76;
            }
          }

          if (v77 && strcmp(v77, "mnc!"))
          {
            v40 = v10;
            v27 = a4;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v29, v69);
            v36 = pw_copy_pw(a4, v33, v67 + 184 * v69);
            v37 = v65;
            if ((v36 & 0x80000000) != 0)
            {
              return v36;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v69);
            v41 = (v69 + 1);
            v32 = 1;
            goto LABEL_68;
          }

          v37 = v65;
          v42 = 0;
          if (v12)
          {
            v43 = (a5 + 24);
            while (1)
            {
              v44 = *v43;
              v43 += 20;
              if (v44 == **v33)
              {
                break;
              }

              if (v12 == ++v42)
              {
                LODWORD(v42) = v12;
                goto LABEL_48;
              }
            }

            LODWORD(v42) = v42;
          }

LABEL_48:
          if (a8)
          {
            v45 = *(a5 + 40 * v42 + 28);
            v46 = a7;
            v47 = a8;
            while (1)
            {
              v48 = *v46++;
              if (v48 == v45)
              {
                break;
              }

              if (!--v47)
              {
                goto LABEL_52;
              }
            }

            if (v32 == 1)
            {
LABEL_63:
              v40 = v10;
              v27 = a4;
              v60 = v69;
              v61 = v69;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am First PYT PW. Copy pPWIn[%d] to pPWOut[%d].");
            }

            else
            {
              v40 = v10;
              v27 = a4;
              v60 = v69;
              v61 = v69;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am a PYT PW start with Marker! Copy pPWIn[%d] to pPWOut[%d].");
            }

LABEL_66:
            v36 = pw_copy_pw(v27, v33, v67 + 184 * v61);
            if ((v36 & 0x80000000) != 0)
            {
              return v36;
            }

            log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v60);
            v32 = 0;
            v41 = (v60 + 1);
LABEL_68:
            v31 = v41;
            v10 = v40;
            goto LABEL_69;
          }

LABEL_52:
          if (v32 == 1)
          {
            goto LABEL_63;
          }

          v76 = 0;
          v75 = 0;
          if (((*(a1 + 184))(a2, a3, v38, 19, &v76) & 0x80000000) != 0 || v76 != 1)
          {
            v40 = v10;
            v27 = a4;
            v60 = v69;
            v61 = v69;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> The WORD_DCT record doesn't has field LD_W_INPUTSPACETAG. Copy pPWIn[%d] to pPWOut[%d].");
            goto LABEL_66;
          }

          v36 = (*(a1 + 176))(a2, a3, v38, 19, &v75, &v76);
          if ((v36 & 0x80000000) != 0)
          {
            return v36;
          }

          v49 = (v10 + 184 * v30);
          v50 = strcmp(v75, "left");
          v27 = a4;
          v51 = *(a4 + 32);
          if (v50)
          {
            v52 = v69 - 1;
            log_OutText(v51, "FE_PHRASING", 5, 0, ">>> No space before this PYT unit. Merge pPWIn[%d] to pPWOut[%d] ...", v29, v52);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "pPWIn[%d] is: ", v29);
            v53 = pw_show_pw(a4, v33);
            if ((v53 & 0x80000000) != 0)
            {
              v13 = v53;
              break;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Before merge, pPWOut[%d] is: ", v52);
            v54 = v67 + 184 * v52;
            v55 = pw_show_pw(a4, v54);
            if ((v55 & 0x80000000) != 0)
            {
              v13 = v55;
              break;
            }

            v56 = *(v54 + 8) + 1;
            *(v54 + 8) = v56;
            v57 = heap_Realloc(*(a4 + 8), *v54, 2 * v56);
            *v54 = v57;
            if (!v57)
            {
              v13 = 2315264010;
              log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
              return v13;
            }

            v58 = *v49;
            *(v57 + 2 * *(v54 + 8) - 2) = **v49;
            heap_Free(*(a4 + 8), v58);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "After merge, pPWOut[%d] is: ", v52);
            v59 = pw_show_pw(a4, v54);
            if ((v59 & 0x80000000) != 0)
            {
              v13 = v59;
              goto LABEL_76;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Merge pPWIn[%d] to pPWOut[%d] done!", v29, v52);
            v32 = 0;
            v27 = a4;
            v31 = v69;
          }

          else
          {
            log_OutText(v51, "FE_PHRASING", 5, 0, ">>> There is a space before this PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v29, v69);
            v36 = pw_copy_pw(a4, v33, v67 + 184 * v69);
            if ((v36 & 0x80000000) != 0)
            {
              return v36;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v69);
            v32 = 0;
            v31 = (v69 + 1);
          }
        }

        else
        {
          v34 = v31;
          v35 = v31;
          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v29, v31);
          v36 = pw_copy_pw(v27, v33, v67 + 184 * v35);
          if ((v36 & 0x80000000) != 0)
          {
            return v36;
          }

          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v34);
          v32 = 1;
          v37 = v65;
          v31 = (v34 + 1);
        }

LABEL_69:
        v29 = ++v30;
        if (v30 >= v37)
        {
          v13 = 0;
          break;
        }
      }
    }
  }

  else
  {
    v13 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
  }

  if (v10)
  {
    goto LABEL_76;
  }

  return v13;
}

uint64_t pw_group_csc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, unsigned int a7, uint64_t *a8, _WORD *a9, unsigned __int16 a10, const char **a11)
{
  v94 = *MEMORY[0x1E69E9840];
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw_group_csc Begin");
  v16 = heap_Calloc(*(a1 + 8), a7, 184);
  v85 = a8;
  *a8 = v16;
  if (!v16)
  {
    v77 = 2315264010;
    v78 = *(a1 + 32);
LABEL_77:
    log_OutPublic(v78, "FE_PHRASING", 37000, 0);
    return v77;
  }

  v80 = a1;
  *a9 = 0;
  v93 = 0;
  v92 = 0;
  v83 = a7;
  v17 = a3;
  if (a7)
  {
    LOWORD(v18) = 0;
    v19 = 0;
    v20 = 0;
    v21 = a4;
    v22 = (v16 + 8);
    v23 = (a3 + 24);
    while (1)
    {
      v86 = v22;
      v81 = v20;
      *v22 = 0;
      while (1)
      {
        v24 = (a6 + 184 * v18);
        if (v21)
        {
          v25 = 0;
          v26 = **v24;
          v27 = v23;
          while (1)
          {
            v28 = *v27;
            v27 += 20;
            if (v28 == v26)
            {
              break;
            }

            if (v21 == ++v25)
            {
              v87 = v21;
              goto LABEL_12;
            }
          }

          v87 = v25;
LABEL_12:
          v30 = 0;
          v31 = v23;
          while (1)
          {
            v32 = *v31;
            v31 += 20;
            if (v32 == v26)
            {
              break;
            }

            if (v21 == ++v30)
            {
              v29 = v21;
              goto LABEL_17;
            }
          }

          v29 = v30;
        }

        else
        {
          v87 = 0;
          v29 = 0;
        }

LABEL_17:
        v33 = *(v17 + 40 * v29);
        v88 = Utf8_Utf8NbrOfSymbols(v33);
        if (v21)
        {
          v34 = 0;
          v35 = **v24;
          v36 = v23;
          while (1)
          {
            v37 = *v36;
            v36 += 20;
            if (v37 == v35)
            {
              break;
            }

            if (v21 == ++v34)
            {
              v34 = v21;
              break;
            }
          }

          v38 = 0;
          v89 = *(v17 + 40 * v34 + 36);
          v39 = v23;
          while (1)
          {
            v40 = *v39;
            v39 += 20;
            if (v40 == v35)
            {
              break;
            }

            if (v21 == ++v38)
            {
              v41 = v21;
              goto LABEL_28;
            }
          }

          v41 = v38;
        }

        else
        {
          v41 = 0;
          v89 = *(v17 + 36);
        }

LABEL_28:
        v42 = *(v17 + 40 * v41 + 16);
        utf8_getUTF8Char(v33, 0, &v92);
        IsChineseLetter = utf8_IsChineseLetter(&v92);
        v44 = *(a2 + 1024);
        if (v44)
        {
          v45 = 0;
          v46 = v17 + 40 * v87;
          v47 = v86;
          while (*(a2 + 4 * v45) > *(v46 + 28) || *(v46 + 32) > *(a2 + 512 + 4 * v45))
          {
            if (v44 <= ++v45)
            {
              v48 = 1;
              goto LABEL_36;
            }
          }

          v48 = 0;
        }

        else
        {
          v48 = 1;
          v47 = v86;
        }

LABEL_36:
        v49 = *(a6 + 184 * v18 + 8);
        if (v49 != 1)
        {
          break;
        }

        v50 = (v88 - 1);
        if (v50 != 1 && (v50 != 2 || !v89))
        {
          break;
        }

        v51 = strcmp(v42, "latin") && IsChineseLetter;
        v52 = v51 ? v48 : 0;
        if (v52 != 1)
        {
          break;
        }

        if (strstr(a5, v33))
        {
          goto LABEL_56;
        }

        v53 = a11;
        v54 = a10;
        if (a10)
        {
          while (strcmp(v33, *v53))
          {
            ++v53;
            if (!--v54)
            {
              goto LABEL_51;
            }
          }

LABEL_56:
          v91 = v18 + 1;
          LOWORD(v18) = *v47;
          v57 = v80;
          v56 = v85;
LABEL_57:
          *v47 = v18 + 1;
          goto LABEL_58;
        }

LABEL_51:
        if (v89 || *(a6 + 184 * v18 + 72))
        {
          goto LABEL_56;
        }

        v55 = *v47 + 1;
        *v47 = v55;
        LOWORD(v18) = v18 + 1;
        v17 = a3;
        v56 = v85;
        v23 = (a3 + 24);
        if (v83 <= v18 || v55 >= 3u)
        {
          v91 = v18;
          v57 = v80;
          goto LABEL_58;
        }
      }

      v91 = v18;
      v57 = v80;
      v56 = v85;
      if (!*v47)
      {
        *v47 = v49;
        v47 = &v91;
        goto LABEL_57;
      }

LABEL_58:
      ++*a9;
      v58 = v56;
      *(*v56 + 184 * v19) = heap_Calloc(*(v57 + 8), *(*v56 + 184 * v19 + 8), 2);
      v59 = *v58;
      v60 = *v58 + 184 * v19;
      v61 = *v60;
      if (!*v60)
      {
        break;
      }

      v18 = v91;
      v62 = a6 + 184 * v91;
      if (*(v60 + 8) <= *(v62 - 176))
      {
        if (*(v60 + 8))
        {
          v75 = 0;
          v76 = *(v62 - 184);
          do
          {
            *(v61 + 2 * v75) = *(v76 + 2 * v75);
            ++v75;
          }

          while (v75 < *(v60 + 8));
        }

        *(v60 + 72) = *(v62 - 112);
      }

      else
      {
        v63 = heap_Calloc(*(v57 + 8), 1, 1024);
        if (!v63)
        {
          break;
        }

        v64 = v63;
        v65 = *v85;
        v66 = *v85 + 184 * v19;
        *(v66 + 12) = 1;
        v67 = *(v66 + 8);
        if (v67)
        {
          v68 = 0;
          v69 = -v67;
          v70 = (a6 + 184 * v18 - 184 * v67);
          v71 = v67 - 1;
          do
          {
            v72 = *v70;
            v70 += 23;
            v73 = *v72;
            *(*(*v85 + 184 * v19) + 2 * (v69 + *(*v85 + 184 * v19 + 8))) = v73;
            sprintf(&v64[v68], "%d-", v73);
            v68 = strlen(v64);
            ++v69;
          }

          while (v71--);
          v65 = *v85;
          v67 = *(*v85 + 184 * v19 + 8);
          v57 = v80;
        }

        *(v65 + 184 * v19 + 72) = *(v62 - 112);
        log_OutText(*(v57 + 32), "FE_PHRASING", 5, 0, "\t group [tids:%s, ntok: %d]", v64, v67);
        heap_Free(*(v57 + 8), v64);
        v59 = *v85;
      }

      v17 = a3;
      v19 = (v81 + 1);
      v22 = (v59 + 184 * v19 + 8);
      v93 = 0;
      v92 = 0;
      v20 = v81 + 1;
      v23 = (a3 + 24);
      if (v18 >= v83)
      {
        goto LABEL_74;
      }
    }

    v77 = 2315264010;
    v78 = *(v57 + 32);
    goto LABEL_77;
  }

LABEL_74:
  log_OutText(*(v80 + 32), "FE_PHRASING", 5, 0, "pw_group_csc End");
  return 0;
}

uint64_t pw_respect_word_separating_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int16 *a7)
{
  if (!*a7)
  {
    return 0;
  }

  v7 = a7;
  v13 = 0;
  v14 = 0;
  v31 = 0;
  v15 = *a6;
  while (1)
  {
    if (*(v15 + 184 * v13 + 8) >= 2u)
    {
      v31 = 0;
      v15 = *a6;
      v16 = *a6 + 184 * v13;
      if (*(v16 + 8) >= 2u)
      {
        break;
      }
    }

LABEL_17:
    if (++v13 >= *v7)
    {
      return v14;
    }
  }

  v17 = 1;
  while (1)
  {
    v14 = pw_check_if_glue_forbidden(a1, a3, a4, a5, *(*v16 + 2 * v17 - 2), *(*v16 + 2 * v17), &v31);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    if (v31)
    {
      v18 = heap_Realloc(*(a2 + 8), *a6, 184 * *v7 + 184);
      if (!v18)
      {
        goto LABEL_21;
      }

      *a6 = v18;
      v19 = v18 + 184 * *v7;
      *(v19 + 176) = 0;
      *(v19 + 144) = 0u;
      *(v19 + 160) = 0u;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 80) = 0u;
      *(v19 + 96) = 0u;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *v19 = 0u;
      v20 = *v7 + 1;
      v29 = v7;
      *v7 = v20;
      if (v13 + 2 < v20)
      {
        memmove((*a6 + 184 * (v13 + 2)), (*a6 + 184 * v13 + 184), (0xB800000000 * (v20 - v13) - 0x17000000000) >> 32);
      }

      v21 = *a6 + 184 * v13;
      v22 = *(v21 + 8) - v17;
      v23 = 184 * v13 + 184;
      *(*a6 + v23 + 8) = v22;
      *(v21 + 8) = v17;
      *(*a6 + v23) = heap_Calloc(*(a2 + 8), 2, v22);
      v15 = *a6;
      v24 = *a6 + v23;
      v25 = *v24;
      v7 = v29;
      if (!*v24)
      {
LABEL_21:
        log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      if (*(v24 + 8))
      {
        v26 = 0;
        v27 = *(v15 + 184 * v13) + 2 * v17;
        do
        {
          *(v25 + 2 * v26) = *(v27 + 2 * v26);
          ++v26;
        }

        while (v26 < *(v24 + 8));
      }

      goto LABEL_17;
    }

    ++v17;
    v15 = *a6;
    v16 = *a6 + 184 * v13;
    if (*(v16 + 8) <= v17)
    {
      goto LABEL_17;
    }
  }
}

uint64_t pw_igtree_process(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v9 = a1;
  inited = 2315264010;
  v11 = *a4;
  v63 = 0;
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v13)
  {
    return inited;
  }

  v14 = v13;
  v62 = a6;
  inited = hlp_igtree_initFeatureVector(v9, v13, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_56;
  }

  v15 = heap_Calloc(*(v9 + 8), a5, 4);
  if (!v15)
  {
LABEL_55:
    inited = 2315264010;
    goto LABEL_56;
  }

  v51 = a4;
  v52 = a3;
  if (!v11)
  {
    v18 = a6;
LABEL_58:
    *v51 = v11;
    *v52 = v12;
    goto LABEL_61;
  }

  v16 = 0;
  v17 = 0;
  v58 = a5 - 1;
  v56 = v14;
  v18 = v62;
  v59 = v9;
  while (1)
  {
    LOWORD(v19) = *(v12 + 184 * v16 + 8);
    v57 = v11;
    if (v19)
    {
      if (v58 != v17)
      {
        break;
      }
    }

LABEL_52:
    ++v16;
    v11 = v57;
    v9 = v59;
    if (v16 >= v57)
    {
      goto LABEL_58;
    }
  }

  v20 = 0;
  v21 = 0;
  v54 = v16 + 2;
  v53 = v16 + 1;
  v22 = 2;
  while (1)
  {
    v23 = v12;
    v24 = v17;
    *(v15 + 4 * v17) = v19 - 1 == v20;
    v25 = hlp_igtree_setFeatureVector(v59, v14, *(v18 + 1312), *(v18 + 1296), a2, a5, v17);
    if ((v25 & 0x80000000) != 0)
    {
      inited = v25;
LABEL_60:
      v9 = v59;
      goto LABEL_61;
    }

    inited = igtree_Process(v18, v14, &v63);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    v26 = v63;
    if (!strcmp(v63, "NOMATCH"))
    {
      goto LABEL_33;
    }

    v27 = *v26 == 49 && v26[1] == 0;
    v18 = v62;
    v28 = v15;
    v29 = *(v15 + 4 * v24);
    if (v29 == v27)
    {
      goto LABEL_16;
    }

    if (!v24)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      break;
    }

    v55 = a2 + 40 * v24;
    v37 = *(v55 + 16);
    if (strcmp(v37, "normal") && strcmp(v37, "mnx"))
    {
      v15 = v28;
      v14 = v56;
LABEL_33:
      v18 = v62;
      goto LABEL_47;
    }

    v18 = v62;
    if (!*(v55 + 36))
    {
      break;
    }

LABEL_16:
    v15 = v28;
    v14 = v56;
LABEL_47:
    v17 = v24 + 1;
    v20 = v21 + 1;
    v12 = v23;
    v19 = *(v23 + 184 * v16 + 8);
    v22 += 2;
    if (++v21 >= v19 || v58 == v17)
    {
      goto LABEL_52;
    }
  }

  if (!v29)
  {
    v38 = heap_Realloc(*(v59 + 8), v23, 184 * v57 + 184);
    if (!v38)
    {
      inited = 2315264010;
      v15 = v28;
      v14 = v56;
      v18 = v62;
      goto LABEL_60;
    }

    v39 = v38;
    v40 = v38 + 184 * v57;
    *(v40 + 176) = 0;
    *(v40 + 144) = 0u;
    *(v40 + 160) = 0u;
    *(v40 + 112) = 0u;
    *(v40 + 128) = 0u;
    *(v40 + 80) = 0u;
    *(v40 + 96) = 0u;
    *(v40 + 48) = 0u;
    *(v40 + 64) = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *v40 = 0u;
    v41 = v16 + 1;
    v15 = v28;
    if (v53 < v57)
    {
      memmove((v38 + 184 * v16 + 368), (v38 + 184 * v53), 184 * (v57 + ~v16));
      v41 = v16 + 1;
    }

    v42 = v39 + 184 * v16;
    v43 = *(v42 + 8) + ~v21;
    v23 = v39;
    v44 = v39 + 184 * v41;
    *(v44 + 8) = v43;
    v9 = v59;
    v45 = heap_Alloc(*(v59 + 8), 2 * v43);
    *v44 = v45;
    v14 = v56;
    if (!v45)
    {
      goto LABEL_55;
    }

    if (*(v44 + 8))
    {
      v46 = 0;
      v47 = *v42 + v22;
      do
      {
        *(v45 + 2 * v46) = *(v47 + 2 * v46);
        ++v46;
      }

      while (v46 < *(v44 + 8));
    }

    v48 = 0;
    *(v44 + 72) = *(v42 + 72);
    *(v42 + 72) = 0;
    *(v44 + 112) = *(v42 + 112);
    *(v42 + 112) = 0;
    if (*(v42 + 12) == 1)
    {
      *(v42 + 12) = 0;
      v48 = 1;
    }

    *(v44 + 12) = v48;
    *(v42 + 8) = v21 + 1;
    v36 = 1;
    goto LABEL_46;
  }

  v30 = v23 + 184 * v16;
  v31 = *(v30 + 8) + *(v30 + 192);
  *(v30 + 8) = v31;
  v9 = v59;
  v32 = heap_Realloc(*(v59 + 8), *v30, 2 * v31);
  *v30 = v32;
  if (v32)
  {
    LOWORD(v33) = *(v30 + 192);
    v15 = v28;
    if (v33)
    {
      v34 = 0;
      v35 = *(v30 + 184);
      do
      {
        *(v32 - 2 * v33 + 2 * *(v30 + 8) + 2 * v34) = *(v35 + 2 * v34);
        ++v34;
        v33 = *(v30 + 192);
      }

      while (v34 < v33);
    }

    v14 = v56;
    if (*(v30 + 72))
    {
      *(v30 + 72) = *(v30 + 256);
    }

    *(v30 + 12) |= *(v30 + 196);
    heap_Free(*(v59 + 8), *(v30 + 184));
    if (v54 < v57)
    {
      memmove((v30 + 184), (v23 + 184 * v54), 184 * (v57 - v16) - 368);
    }

    v36 = 0xFFFF;
LABEL_46:
    v18 = v62;
    inited = 0;
    v57 = (v36 + v57);
    goto LABEL_47;
  }

  inited = 2315264010;
  v15 = v28;
  v14 = v56;
LABEL_56:
  v18 = v62;
LABEL_61:
  hlp_igtree_freeFeatureVector(v9, v14, (*(v18 + 1296) - 1));
  heap_Free(*(v9 + 8), v14);
  if (v15)
  {
    heap_Free(*(v9 + 8), v15);
  }

  return inited;
}

uint64_t pw_merge_NLU(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (hlp_NLUStrKeyLen(v2) >= 3)
    {
      v6 = *v2 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      v9 = v7 || v8 == 0;
      if (!v9 && v2[1] == 95)
      {
        ++v5;
      }
    }

    v2 = hlp_NLUStrNext(v2);
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  v10 = 2315264010;
  v11 = heap_Calloc(*(a1 + 8), 8, v5);
  if (v11)
  {
    v12 = v11;
    v13 = *a2;
    if (*a2)
    {
      v97 = a2;
      v96 = -1979703286;
      v14 = 0;
      do
      {
        v15 = hlp_NLUStrKeyLen(v13);
        if (v15 >= 3)
        {
          v16 = *v13 - 69;
          v7 = v16 > 0xE;
          v17 = (1 << v16) & 0x4011;
          v18 = v7 || v17 == 0;
          if (!v18 && v13[1] == 95)
          {
            v19 = v15;
            v20 = heap_Calloc(*(a1 + 8), 1, v15 - 1);
            if (!v20)
            {
              v26 = v12;
              v10 = 2315264010;
              goto LABEL_182;
            }

            v21 = v20;
            strncpy(v20, v13 + 2, v19 - 2);
            if (v14)
            {
              v22 = v14;
              v23 = v12;
              v24 = v14;
              while (*v23)
              {
                if (!strcmp(*v23, v21))
                {
                  heap_Free(*(a1 + 8), v21);
                  goto LABEL_31;
                }

                ++v23;
                if (!--v24)
                {
                  break;
                }
              }
            }

            else
            {
              v22 = 0;
            }

            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }

LABEL_31:
        v13 = hlp_NLUStrNext(v13);
      }

      while (v13);
      if (!v14)
      {
        goto LABEL_161;
      }

      v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
      if (v25)
      {
        v26 = v25;
        v27 = heap_Calloc(*(a1 + 8), 2, v14);
        if (v27)
        {
          v91 = v27;
          for (i = *v97; i; i = hlp_NLUStrNext(i))
          {
            v29 = hlp_NLUStrKeyLen(i);
            if (v29 >= 3)
            {
              v30 = *i - 69;
              v7 = v30 > 0xE;
              v31 = (1 << v30) & 0x4011;
              v32 = v7 || v31 == 0;
              if (!v32 && i[1] == 95)
              {
                v33 = 0;
                v34 = v29 - 2;
                do
                {
                  v35 = *(v26 + 8 * v33);
                  if (!v35)
                  {
                    break;
                  }

                  if (!strncmp(v35, i + 2, v34))
                  {
                    if ((v33 & 0x8000) == 0)
                    {
                      ++*(v91 + 2 * (v33 & 0x7FFF));
                    }

                    break;
                  }

                  ++v33;
                }

                while (v14 != v33);
              }
            }
          }

          v36 = heap_Calloc(*(a1 + 8), 8, v14);
          if (v36)
          {
            v37 = v36;
            for (j = 0; j != v14; ++j)
            {
              v39 = heap_Calloc(*(a1 + 8), 8, *(v91 + 2 * j));
              *(v37 + 8 * j) = v39;
              if (!v39)
              {
                v40 = 0;
                goto LABEL_167;
              }
            }

            v40 = heap_Calloc(*(a1 + 8), 2, v14);
            if (v40)
            {
              for (k = *v97; k; k = hlp_NLUStrNext(k))
              {
                v42 = hlp_NLUStrKeyLen(k);
                if (v42 >= 3)
                {
                  v43 = *k - 69;
                  v7 = v43 > 0xE;
                  v44 = (1 << v43) & 0x4011;
                  if (!v7 && v44 != 0 && k[1] == 95)
                  {
                    KeyIdx = hlp_getKeyIdx(v26, v14, k + 2, (v42 - 2));
                    if ((KeyIdx & 0x80000000) == 0)
                    {
                      v47 = KeyIdx;
                      v93 = *(v37 + 8 * KeyIdx);
                      v48 = hlp_NLUStrKeyValue(k);
                      v49 = v48;
                      v50 = v48 ? hlp_NLUStrLength(v48) : 0;
                      v51 = v50;
                      if (!hlp_checkValExist(v93, *(v40 + 2 * v47), v49, v50))
                      {
                        v52 = heap_Calloc(*(a1 + 8), 1, v51 + 2);
                        if (!v52)
                        {
                          goto LABEL_167;
                        }

                        if (v49)
                        {
                          v52 = strncpy(v52, v49, v51);
                        }

                        else
                        {
                          *v52 = 32;
                        }

                        v53 = *(v40 + 2 * v47);
                        *&v93[8 * v53] = v52;
                        *(v40 + 2 * v47) = v53 + 1;
                      }
                    }
                  }
                }
              }

              v54 = 0;
              v55 = v97;
              do
              {
                v56 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v54), 8 * *(v40 + 2 * v54));
                if (!v56)
                {
                  goto LABEL_167;
                }

                *(v37 + 8 * v54++) = v56;
              }

              while (v14 != v54);
              v57 = 0;
              while (!*(v40 + 2 * v57))
              {
LABEL_158:
                if (++v57 == v14)
                {
                  v96 = 0;
                  goto LABEL_167;
                }
              }

              v58 = 0;
              v86 = v57;
              while (2)
              {
                __s = *(v26 + 8 * v57);
                v59 = *(*(v37 + 8 * v57) + 8 * v58);
                v60 = *v55;
                v99 = 0;
                __s2 = 0;
                if (!v60)
                {
                  goto LABEL_131;
                }

                v89 = v60;
                v90 = v58;
                __s1 = v59;
                if (v59)
                {
                  v88 = strlen(v59);
                }

                else
                {
                  v88 = 0;
                }

                v61 = strlen(__s);
                v62 = heap_Calloc(*(a1 + 8), 1, v61 + 3);
                if (!v62)
                {
                  goto LABEL_167;
                }

                v63 = v62;
                strcpy(v62, "S_");
                strcat(v62, __s);
                v64 = strlen(__s);
                v65 = heap_Calloc(*(a1 + 8), 1, v64 + 3);
                if (!v65)
                {
                  v95 = 0;
                  v70 = 0;
                  v72 = -1979703286;
                  goto LABEL_125;
                }

                strcpy(v65, "I_");
                v66 = v65;
                strcat(v65, __s);
                v67 = strlen(__s);
                v68 = heap_Calloc(*(a1 + 8), 1, v67 + 3);
                if (!v68)
                {
                  v95 = 0;
                  v72 = -1979703286;
                  v70 = v66;
                  goto LABEL_125;
                }

                strcpy(v68, "E_");
                v94 = v68;
                strcat(v68, __s);
                v69 = __s1;
                v70 = v66;
                if (!hlp_NLUStrFind(v89, v63, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v63);
                  v63 = 0;
                }

                if (!hlp_NLUStrFind(v89, v66, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v66);
                  v70 = 0;
                }

                if (hlp_NLUStrFind(v89, v94, &__s2, &v99))
                {
                  if (__s1 && !v99 && *__s1 == 32 && !__s1[1])
                  {
                    goto LABEL_117;
                  }

                  if (__s1 && v88 == v99)
                  {
                    if (strncmp(__s1, __s2, v99))
                    {
                      heap_Free(*(a1 + 8), v94);
                      v71 = 0;
LABEL_118:
                      if (*__s1 == 32 && !__s1[1])
                      {
                        v95 = v71;
                        v69 = 0;
                      }

                      else
                      {
LABEL_120:
                        v95 = v71;
                      }

                      hlp_NLUStrRemoveRangeKey(v89, __s, v69);
                      if (v63)
                      {
                        if (!v70)
                        {
                          v73 = v63;
                          if (!v95)
                          {
                            goto LABEL_124;
                          }
                        }
                      }

                      if (v63)
                      {
                        v75 = 1;
                      }

                      else
                      {
                        v75 = v70 == 0;
                      }

                      v76 = !v75;
                      if (!v75)
                      {
                        v77 = v70;
                        if (!v95)
                        {
LABEL_141:
                          hlp_NLUStrAppendKeyVal(v89, v77, v69);
                          v72 = 0;
LABEL_127:
                          heap_Free(*(a1 + 8), v70);
LABEL_128:
                          v55 = v97;
                          v58 = v90;
                          v74 = v95;
                          if (v95)
                          {
LABEL_129:
                            heap_Free(*(a1 + 8), v74);
                          }

                          v57 = v86;
                          if (v72 < 0)
                          {
                            v96 = v72;
                            goto LABEL_167;
                          }

LABEL_131:
                          if (++v58 >= *(v40 + 2 * v57))
                          {
                            goto LABEL_158;
                          }

                          continue;
                        }
                      }

                      if (!v63 && !v70 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v95, v69);
                        v74 = v95;
                        v72 = 0;
                        v55 = v97;
                        v58 = v90;
                        goto LABEL_129;
                      }

                      if (v63 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v63, v69);
                        v73 = v95;
                        goto LABEL_124;
                      }

                      if (v63 && v70 && (v73 = v63, !v95))
                      {
LABEL_124:
                        hlp_NLUStrAppendKeyVal(v89, v73, v69);
                        v72 = 0;
                      }

                      else
                      {
                        if (!v95)
                        {
                          v76 = 0;
                        }

                        v77 = v95;
                        if (v76)
                        {
                          goto LABEL_141;
                        }

                        v72 = 0;
                        if (!v63)
                        {
LABEL_126:
                          if (v70)
                          {
                            goto LABEL_127;
                          }

                          goto LABEL_128;
                        }
                      }

LABEL_125:
                      heap_Free(*(a1 + 8), v63);
                      goto LABEL_126;
                    }

LABEL_117:
                    v71 = v94;
                    goto LABEL_118;
                  }
                }

                break;
              }

              heap_Free(*(a1 + 8), v94);
              v71 = 0;
              if (__s1)
              {
                goto LABEL_118;
              }

              goto LABEL_120;
            }

LABEL_167:
            for (m = 0; m != v14; ++m)
            {
              v79 = *(v37 + 8 * m);
              if (v79)
              {
                if (v40)
                {
                  v80 = *(v40 + 2 * m);
                  if (v80)
                  {
                    for (n = 0; n < v80; ++n)
                    {
                      v82 = *(*(v37 + 8 * m) + 8 * n);
                      if (v82)
                      {
                        heap_Free(*(a1 + 8), v82);
                        v80 = *(v40 + 2 * m);
                      }
                    }

                    v79 = *(v37 + 8 * m);
                  }
                }

                heap_Free(*(a1 + 8), v79);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v40)
            {
              heap_Free(*(a1 + 8), v40);
            }

            v10 = v96;
          }

          else
          {
            v10 = 2315264010;
          }

          heap_Free(*(a1 + 8), v91);
          v12 = v26;
LABEL_182:
          if (!v14)
          {
            goto LABEL_188;
          }

LABEL_183:
          for (ii = 0; ii != v14; ++ii)
          {
            v84 = *(v26 + 8 * ii);
            if (v84)
            {
              heap_Free(*(a1 + 8), v84);
            }
          }

          v12 = v26;
          goto LABEL_188;
        }
      }

      else
      {
        v26 = v12;
      }

      v10 = 2315264010;
      goto LABEL_183;
    }

LABEL_161:
    v10 = 0;
LABEL_188:
    heap_Free(*(a1 + 8), v12);
  }

  return v10;
}