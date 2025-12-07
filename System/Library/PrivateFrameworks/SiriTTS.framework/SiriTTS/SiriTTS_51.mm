uint64_t fe_oneword_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2310021127;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t fe_oneword_ResourceLoad(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = 2310021127;
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    v14 = a6 != 0;
    if (a5 || !a6)
    {
      if (!a5)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_14:
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 40001, 0);
    return v13;
  }

  if (!a5 || !a6)
  {
    goto LABEL_14;
  }

  v14 = 1;
LABEL_12:
  if (v14)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    v23 = a5;
    v22 = a6;
LABEL_19:
    v20 = (*(a1[10] + 224))(a1[8], a1[9], a5, a6, v15, a7, a4);
    goto LABEL_20;
  }

LABEL_16:
  v18 = strstr(a3, ";loader=broker");
  v16 = v18 != 0;
  v19 = brk_DataOpenEx(*(*a1 + 24), a4, v16, &v24);
  if ((v19 & 0x80000000) != 0)
  {
    if (v18)
    {
      v13 = 0;
    }

    else
    {
      v13 = v19;
    }

    if ((v13 & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_21;
  }

  v20 = brk_DataMapEx(*(*a1 + 24), v24, 0, &v22, &v23);
  if ((v20 & 0x80000000) == 0)
  {
    a5 = v23;
    v15 = v24;
    a6 = v22;
    goto LABEL_19;
  }

LABEL_20:
  v13 = v20;
  if ((v20 & 0x80000000) == 0)
  {
    return v13;
  }

LABEL_21:
  if (v16)
  {
    v21 = v24;
    if (v24)
    {
      if (v23)
      {
        brk_DataUnmap(*(*a1 + 24), v24, v23);
        v23 = 0;
        v21 = v24;
      }

      brk_DataClose(*(*a1 + 24), v21);
    }
  }

  return v13;
}

uint64_t oneword_Lid(uint64_t a1, _DWORD *a2)
{
  v29 = 0;
  v28 = -1;
  v27 = 0;
  v4 = *(a1 + 160);
  v5 = strlen(v4);
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = v4[v8];
      if (v10 >= 0x7B)
      {
        *a2 = 0;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found diacritic");
        v18 = 0;
LABEL_37:
        *(a1 + 932) = 0;
        return v18;
      }

      if (strchr((a1 + 944), v10))
      {
        *a2 = 1;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX character");
        v18 = 0;
LABEL_22:
        *(a1 + 932) = 1;
        return v18;
      }

      ++v8;
    }

    while (v8 < v9);
    v11 = 0;
    v12 = v7 - 1;
    while (1)
    {
      v13 = *(a1 + 160);
      if (v11)
      {
        v14 = v11;
        v15 = *(v13 + v11 - 1);
      }

      else
      {
        v14 = 0;
        v15 = 95;
      }

      v30 = v15;
      v16 = (v13 + v14);
      v31 = *v16;
      v17 = v12 ? v16[1] : 95;
      v32 = v17;
      v33 = 0;
      v18 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "lidlng", &v30, &v29, &v28, &v27);
      if ((v18 & 0x80000000) != 0)
      {
        break;
      }

      if (v28)
      {
        *a2 = 0;
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found LNG trigram");
        goto LABEL_37;
      }

      ++v11;
      --v12;
      if (v11 >= v9)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v18 = 0;
LABEL_18:
    if (*(a1 + 932))
    {
      *a2 = 1;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX context");
    }

    else if (v7)
    {
      v19 = 0;
      v20 = v7 - 1;
      while (1)
      {
        v21 = *(a1 + 160);
        if (v19)
        {
          v22 = v19;
          v23 = *(v21 + v19 - 1);
        }

        else
        {
          v22 = 0;
          v23 = 95;
        }

        v30 = v23;
        v24 = (v21 + v22);
        v31 = *v24;
        v25 = v20 ? v24[1] : 95;
        v32 = v25;
        v33 = 0;
        v18 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "lidenx", &v30, &v29, &v28, &v27);
        if ((v18 & 0x80000000) != 0)
        {
          break;
        }

        if (v28)
        {
          *a2 = 1;
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID found ENX trigram");
          goto LABEL_22;
        }

        ++v19;
        --v20;
        if (v19 >= v6)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      *a2 = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "LID default to LNG");
    }
  }

  return v18;
}

uint64_t oneword_NonDctDpsMde(void *a1, unsigned int a2, uint64_t a3, const char *a4, uint64_t a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v39 = a5;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  strcpy(__s, "nondctbased_mde");
  v15 = strlen(__s);
  result = (*(a1[7] + 168))(a7, a8, v10, 0, 1, &v38, &v37);
  if ((result & 0x80000000) == 0)
  {
    if (v10)
    {
      v17 = v38;
      if (v38 != 3)
      {
        v31 = a2 + 128;
        v18 = a3 - a2;
        v29 = v15;
        v30 = v15 + 2;
        v19 = 1;
        while (1)
        {
          if (!v17)
          {
            result = (*(a1[7] + 168))(a7, a8, v10, 1, 1, &v35, &v37);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1[7] + 168))(a7, a8, v39, 2, 1, &v34, &v37);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v20 = v35;
            if (v35 + 1 < v34 && v31 > v34)
            {
              v21 = (v18 + v35);
              v22 = *(v18 + v34);
              *(v18 + v34) = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, (v18 + v20));
              v23 = strlen(v21);
              result = (*(a1[13] + 120))(a1[11], a1[12], 0, v21, v23);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              *(v18 + v34) = v22;
              if (strcmp(a4, "normal") && v30 + strlen(a4) <= 0x7F)
              {
                __strcat_chk();
                __strcat_chk();
              }

              if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
              {
                __s[v29] = 0;
                if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
                {
                  return 0;
                }
              }

              result = (*(a1[13] + 128))(a1[11], a1[12], 0, &v36, &v35 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v36[HIWORD(v35)] = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, v36);
              v24 = v36;
              v25 = strchr(v36, 43);
              if (v25)
              {
                break;
              }
            }
          }

LABEL_6:
          result = (*(a1[7] + 120))(a7, a8, v39, &v39);
          if ((result & 0x80000000) == 0)
          {
            if (v39)
            {
              result = (*(a1[7] + 168))(a7, a8);
              if ((result & 0x80000000) == 0)
              {
                LOWORD(v10) = v39;
                if (v39)
                {
                  v17 = v38;
                  if (v38 != 3)
                  {
                    continue;
                  }
                }
              }
            }
          }

          return result;
        }

        v26 = v25;
        v27 = v35;
        v28 = v19 == 0;
        while (1)
        {
          v33 = v27 + v26 - v24;
          result = (*(a1[7] + 160))(a7, a8, v39, 2, 1, &v33, &v37 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 80))(a7, a8, v39, &v39);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v38 = 0;
          result = (*(a1[7] + 160))(a7, a8, v39, 0, 1, &v38, &v37 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v39, 1, 1, &v33, &v37 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          result = (*(a1[7] + 160))(a7, a8, v39, 2, 1, &v34, &v37 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v27 = v33;
          LOWORD(v35) = v33;
          if (!v28)
          {
            *a6 = v39;
          }

          v24 = v26 + 1;
          v36 = v26 + 1;
          v26 = strchr(v26 + 1, 43);
          v19 = 0;
          v28 = 1;
          if (!v26)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t oneword_DpsMde(void *a1, const char *a2, char *a3, uint64_t a4, char *a5, __int16 a6, unsigned __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v96 = *MEMORY[0x1E69E9840];
  v90 = a6;
  v89 = a7;
  *&__c[3] = 0;
  *&__c[1] = 0;
  __c[0] = 0;
  v87 = 8;
  v86 = 0;
  v85 = 1;
  __dst = 0;
  v84 = 0;
  v82 = 0;
  strcpy(__s, "dctbased_mde");
  v16 = strlen(__s);
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, a2);
  v17 = strlen(a2);
  v18 = (*(a1[13] + 120))(a1[11], a1[12], 0, a2, v17);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", __s, a3);
  v19 = strlen(a3);
  v18 = (*(a1[13] + 120))(a1[11], a1[12], 1, a3, v19);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  if (strcmp(a5, "normal") && strlen(a5) + v16 + 2 <= 0x7F)
  {
    __strcat_chk();
    __strcat_chk();
  }

  if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
  {
    __s[v16] = 0;
    if (((*(a1[13] + 80))(a1[11], a1[12], __s) & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v18 = (*(a1[13] + 128))(a1[11], a1[12], 0, &v84, &v82);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v84[v82] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, v84);
  v20 = (*(a1[13] + 128))(a1[11], a1[12], 1, &__dst, &v82);
  if ((v20 & 0x80000000) == 0)
  {
    v80 = a3;
    memset(v94, 0, 80);
    memset(v92, 0, sizeof(v92));
    memset(v93, 0, sizeof(v93));
    memset(v91, 0, sizeof(v91));
    v21 = v84;
    if (*v84 == 123)
    {
      *v84 = 0;
      v94[0] = v21 + 1;
      v94[1] = "0";
      v93[0] = "0";
      v93[1] = v21 + 1;
      v22 = strchr(v84 + 1, 125);
      if (v22)
      {
        *v22 = 0;
        v21 = v22 + 1;
        v23 = strchr(v22 + 1, 123);
        v78 = 2;
        if (!v23)
        {
          __s2 = a5;
          v24 = 0;
          goto LABEL_22;
        }

LABEL_16:
        v24 = 0;
        while (1)
        {
          if (*v23 == 125)
          {
            __s2 = a5;
            v75 = 0;
            *v23 = 0;
            goto LABEL_25;
          }

          v26 = v24;
          v92[v24] = v23 + 1;
          *v23 = 0;
          v27 = strchr(v23 + 1, 43);
          if (!v27)
          {
            return v20;
          }

          ++v24;
          *v27 = 0;
          v28 = v27 + 1;
          *(v91 + v26) = v28;
          v23 = strchr(v28, 44);
          if (!v23)
          {
            v23 = strchr(*(v91 + v24 - 1), 125);
            if (!v23)
            {
              break;
            }
          }
        }

        __s2 = a5;
LABEL_22:
        v75 = 1;
LABEL_25:
        v81 = 0;
        v29 = v24;
        v76 = v24;
        while (!v29)
        {
LABEL_43:
          ++v81;
          v29 = v76;
          if (v78 <= v81)
          {
            return v20;
          }
        }

        v30 = v93[v81];
        v31 = v91;
        v32 = v92;
        while (1)
        {
          if (*v30 != 48 || v30[1] || **v31 != 48 || *(*v31 + 1))
          {
            v33 = v94[v81];
            if (*v33 == 48 && !*(v33 + 1))
            {
              strcpy(__dst, v21);
            }

            else
            {
              strcpy(__dst, v33);
              strcat(__dst, v21);
            }

            v34 = *v32;
            if (**v32 != 48 || v34[1])
            {
              strcat(__dst, v34);
            }

            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", __dst);
            v20 = (*(a1[10] + 152))(a1[8], a1[9], a4, __dst, &__c[3], &__c[1], __c, *(a1 + 556));
            if ((v20 & 0x80000000) != 0)
            {
              return v20;
            }

            if (*&__c[1])
            {
              break;
            }
          }

          v31 = (v31 + 8);
          ++v32;
          if (!--v29)
          {
            goto LABEL_43;
          }
        }

        v35 = 0;
        v73 = 0;
        while (1)
        {
          v36 = *(*&__c[3] + 8 * v35);
          v37 = strchr(v36, __c[0]);
          if (!v37)
          {
            break;
          }

          *v37 = 0;
          v38 = strchr(v37 + 1, __c[0]);
          v39 = v38;
          if (!v38)
          {
            goto LABEL_56;
          }

          *v38 = 0;
          v39 = v38 + 1;
          v40 = strchr(v38 + 1, __c[0]);
          v41 = v40;
          if (!v40)
          {
            goto LABEL_57;
          }

          *v40 = 0;
          v41 = v40 + 1;
          v42 = strchr(v40 + 1, __c[0]);
          if (!v42)
          {
            goto LABEL_57;
          }

          *v42 = 0;
          v79 = v42 + 1;
          v43 = strchr(v42 + 1, __c[0]);
          if (!v43)
          {
            goto LABEL_58;
          }

          *v43 = 0;
          v77 = v43 + 1;
          v44 = strchr(v43 + 1, __c[0]);
          v45 = v44;
          if (v44)
          {
            *v44 = 0;
            v45 = v44 + 1;
            v46 = strchr(v44 + 1, __c[0]);
            if (v46)
            {
              *v46 = 0;
              v73 = v46 + 1;
              v47 = strchr(v46 + 1, __c[0]);
              if (v47)
              {
                *v47 = 0;
              }
            }
          }

LABEL_59:
          v48 = *(*a1 + 32);
          if (!v36)
          {
            v20 = 2310021127;
            log_OutPublic(v48, "FE_ONEWORD", 34001, 0);
            return v20;
          }

          log_OutText(v48, "FE_ONEWORD", 5, 0, "G2P Validating %s", v36);
          if (v39 && *v39 && !strstr(v39, __s2))
          {
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK");
          }

          else if (v45 && *v45 == 48 && !v45[1])
          {
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P MDE usage validation not OK");
          }

          else
          {
            *a11 = v90 + strlen(v80);
            v18 = (*(a1[7] + 88))(a9, a10, v89, &v89);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            v18 = (*(a1[7] + 160))(a9, a10, v89, 0, 1, &v87, &v86);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            v18 = (*(a1[7] + 160))(a9, a10, v89, 1, 1, &v90, &v86);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            v18 = (*(a1[7] + 160))(a9, a10, v89, 2, 1, a11, &v86);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            if ((v75 & 1) == 0)
            {
              v49 = strlen(v36);
              v50 = strlen(v23);
              if (v50 + v49 - 124 <= 0xFFFFFFFFFFFFFF7ELL)
              {
                v51 = heap_Realloc(*(*a1 + 8), a1[30], (v50 + v49 + 5));
                if (!v51)
                {
                  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
                  return 2310021130;
                }

                a1[30] = v51;
              }
            }

            v52 = v93[v81];
            if (*v52 == 48 && !*(v52 + 1))
            {
              v53 = a1[30];
            }

            else
            {
              strcpy(a1[30], v52);
              v53 = (a1[30] + strlen(a1[30]));
            }

            *v53 = 8689634;
            strcat(a1[30], v36);
            *(a1[30] + strlen(a1[30])) = 8689634;
            v54 = *v31;
            if (**v31 != 48 || *(v54 + 1))
            {
              strcat(a1[30], v54);
            }

            v55 = strlen(a1[30]);
            v18 = (*(a1[7] + 160))(a9, a10, v89, 3, (v55 + 1), a1[30], &v86);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            if (v41)
            {
              if (*v41)
              {
                v56 = (strlen(v41) + 1);
                v57 = a9;
                v58 = a10;
                v59 = v89;
                v60 = v41;
              }

              else
              {
                v57 = a9;
                v58 = a10;
                v59 = v89;
                v56 = 2;
                v60 = "*";
              }

              v18 = (*(a1[7] + 160))(v57, v58, v59, 5, v56, v60, &v86);
              if ((v18 & 0x80000000) != 0)
              {
                return v18;
              }
            }

            if (v79)
            {
              if (*v79)
              {
                v61 = (strlen(v79) + 1);
                v62 = a9;
                v63 = a10;
                v64 = v89;
                v65 = v79;
              }

              else
              {
                v62 = a9;
                v63 = a10;
                v64 = v89;
                v61 = 2;
                v65 = "*";
              }

              v18 = (*(a1[7] + 160))(v62, v63, v64, 6, v61, v65, &v86);
              if ((v18 & 0x80000000) != 0)
              {
                return v18;
              }
            }

            v66 = v77 ? LH_atou(v77) : 1;
            v85 = v66;
            v18 = (*(a1[7] + 160))(a9, a10, v89, 7, 1, &v85, &v86);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            if (v73)
            {
              v67 = (strlen(v73) + 1);
              v68 = a9;
              v69 = a10;
              v70 = v89;
              v71 = v73;
            }

            else
            {
              v68 = a9;
              v69 = a10;
              v70 = v89;
              v67 = 1;
              v71 = "";
            }

            v20 = (*(a1[7] + 160))(v68, v69, v70, 9, v67, v71, &v86);
            if ((v20 & 0x80000000) != 0)
            {
              return v20;
            }
          }

          if (++v35 >= *&__c[1])
          {
            return v20;
          }
        }

        v39 = 0;
LABEL_56:
        v41 = 0;
LABEL_57:
        v79 = 0;
LABEL_58:
        v77 = 0;
        v45 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v94[0] = "0";
      v93[0] = "0";
      v25 = strchr(v84, 123);
      if (v25)
      {
        v23 = v25;
        v78 = 1;
        goto LABEL_16;
      }
    }
  }

  return v20;
}

uint64_t crf_mde_seg_get_broker_string(uint64_t a1, char **a2, char **a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = "";
  __s = 0;
  memset(v14, 0, sizeof(v14));
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v12);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  v7 = heap_Calloc(*(a1 + 8), 1, 1024);
  *a2 = v7;
  if (v7 && (v8 = brokeraux_ComposeBrokerString(a1, v14, 1, 1, __s, 0, 0, v7, 0x400uLL), v9 = strlen(__s), v10 = heap_Calloc(*(a1 + 8), 1, v9 + 1), (*a3 = v10) != 0))
  {
    strcpy(v10, __s);
  }

  else
  {
    v8 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  }

  return v8;
}

uint64_t getUmlautMap(uint64_t a1, char *__s, uint64_t *a3, unsigned __int16 *a4)
{
  v6 = __s;
  v8 = strchr(__s, 44);
  for (i = 1; v8; v8 = strchr(v8 + 1, 44))
  {
    ++i;
  }

  v10 = 16 * i;
  v11 = heap_Calloc(*(a1 + 8), 1, v10);
  *a3 = v11;
  if (v11)
  {
    if (i)
    {
      for (j = 0; v10 != j; j += 16)
      {
        v13 = strchr(v6, 44);
        v14 = v13;
        if (v13)
        {
          *v13 = 0;
        }

        v15 = strchr(v6, 59);
        if (v15)
        {
          *v15 = 0;
          v16 = v15 + 1;
          v17 = strlen(v6);
          *(*a3 + j) = heap_Calloc(*(a1 + 8), 1, v17 + 1);
          v18 = *(*a3 + j);
          if (!v18)
          {
            goto LABEL_18;
          }

          strcpy(v18, v6);
          v19 = strlen(v16);
          *(*a3 + j + 8) = heap_Calloc(*(a1 + 8), 1, v19 + 1);
          v20 = *(*a3 + j + 8);
          if (!v20)
          {
            goto LABEL_18;
          }

          strcpy(v20, v16);
          if (v14)
          {
            v21 = v10 - 16 == j;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v6 = v14 + 1;
          }
        }
      }
    }

    v22 = 0;
    *a4 = i;
  }

  else
  {
LABEL_18:
    v22 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  }

  return v22;
}

uint64_t crf_mde_seg_load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  v35 = a6;
  v38 = 0;
  v37 = 0;
  __s = 0;
  *(a10 + 144) = log_GetLogLevel(*(a5 + 32)) > 4;
  *a11 = 0;
  broker_string = crf_mde_seg_get_broker_string(a5, (a10 + 32), &v38);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if ((crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, (a10 + 40), 2, *(a10 + 32), "CRPH", 1031, 0, crf_set_nbest_callback) & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_ONEWORD", 5, 0, "no CRF MDE model found", *(a10 + 32));
    v25 = 0;
    goto LABEL_18;
  }

  broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegsep", (a10 + 64), 0, "STR");
  if ((broker_string & 0x80000000) != 0 || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "orthtrigger", (a10 + 72), 0, "STR"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdemorphesep", (a10 + 80), 0, "STR"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegbypassonewordcrosstoken", 0, (a10 + 52), "BOOL"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegpostsegdictlookup", 0, (a10 + 56), "BOOL"), (broker_string & 0x80000000) != 0) || (broker_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdeskipwordswiththischar", (a10 + 88), 0, "STR"), (broker_string & 0x80000000) != 0))
  {
LABEL_16:
    v25 = broker_string;
    goto LABEL_18;
  }

  fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mdesegumlautmap", &__s, 0, "STR");
  v20 = __s;
  if ((fecfgparam_string & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

  if (!__s || (UmlautMap = getUmlautMap(a5, __s, (a10 + 96), (a10 + 104)), (UmlautMap & 0x80000000) == 0))
  {
    fecfgparam_string = crf_mde_seg_parse_params(a5, *(a10 + 40), a10);
    if ((fecfgparam_string & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v22 = *(a10 + 12);
    v23 = *(a5 + 32);
    if (v22 == 1)
    {
      v24 = "SEG_Char";
    }

    else
    {
      if (v22 != 2)
      {
        v25 = 2310021127;
        goto LABEL_41;
      }

      v24 = "SEG_Morpheme";
    }

    log_OutText(v23, "FE_ONEWORD", 5, 0, "set mde param, type: %s", v24);
    v29 = *(a10 + 16);
    if (v29 == 1)
    {
      v30 = "ANN_BI";
LABEL_34:
      log_OutText(*(a5 + 32), "FE_ONEWORD", 5, 0, "set mde param, type: %s", v30);
      *(a10 + 48) = 1;
      *a11 = 1;
      fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_tag_mappings_dic", (a10 + 112), 0, "STR");
      if ((fecfgparam_string & 0x80000000) == 0)
      {
        v31 = *(a10 + 112);
        if (v31)
        {
          fecfgparam_string = (*(a9 + 72))(a7, a8, v31, &v37);
          if ((fecfgparam_string & 0x80000000) != 0)
          {
            goto LABEL_55;
          }

          if (*(a10 + 112) && !v37)
          {
            v25 = 2310021127;
            log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34009, "%s%s");
            goto LABEL_56;
          }
        }

        fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_morpheme_dic", (a10 + 120), 0, "STR");
        if ((fecfgparam_string & 0x80000000) == 0)
        {
          v32 = *(a10 + 120);
          if (v32)
          {
            fecfgparam_string = (*(a9 + 72))(a7, a8, v32, &v37);
            if ((fecfgparam_string & 0x80000000) != 0)
            {
              goto LABEL_55;
            }

            if (*(a10 + 120) && !v37)
            {
              v25 = 2310021127;
              log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34010, "%s%s");
              goto LABEL_56;
            }
          }

          fecfgparam_string = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_affix_dic", (a10 + 128), 0, "STR");
          if ((fecfgparam_string & 0x80000000) == 0)
          {
            v33 = *(a10 + 128);
            if (!v33)
            {
LABEL_58:
              v25 = crf_mde_seg_get_fecfgparam_string(a5, a7, a8, a9, "mde_seg_patterns_dic", (a10 + 136), 0, "STR");
              if ((v25 & 0x80000000) == 0)
              {
                v34 = *(a10 + 136);
                if (v34)
                {
                  v25 = (*(a9 + 72))(a7, a8, v34, &v37);
                  if ((v25 & 0x80000000) == 0 && *(a10 + 136) && !v37)
                  {
                    v25 = 2310021127;
                    log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34012, "%s%s");
                  }
                }
              }

LABEL_56:
              if (!v20)
              {
                goto LABEL_18;
              }

              goto LABEL_57;
            }

            fecfgparam_string = (*(a9 + 72))(a7, a8, v33, &v37);
            if ((fecfgparam_string & 0x80000000) == 0)
            {
              if (*(a10 + 128) && !v37)
              {
                v25 = 2310021127;
                log_OutPublic(*(a5 + 32), "FE_ONEWORD", 34011, "%s%s");
                goto LABEL_56;
              }

              goto LABEL_58;
            }
          }
        }
      }

LABEL_55:
      v25 = fecfgparam_string;
      goto LABEL_56;
    }

    if (v29 == 2)
    {
      v30 = "ANN_BMES";
      goto LABEL_34;
    }

    v25 = 2310021127;
    v23 = *(a5 + 32);
LABEL_41:
    log_OutPublic(v23, "FE_ONEWORD", 34006, "%s%s");
    goto LABEL_56;
  }

  v25 = UmlautMap;
LABEL_57:
  heap_Free(*(a5 + 8), v20);
LABEL_18:
  v26 = *(a10 + 32);
  if (v26)
  {
    heap_Free(*(a5 + 8), v26);
    *(a10 + 32) = 0;
  }

  if (v38)
  {
    heap_Free(*(a5 + 8), v38);
  }

  if ((v25 & 0x80000000) != 0 && *(a10 + 48) == 1)
  {
    v27 = *(a10 + 40);
    if (v27)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(a5, v35, v27);
      *(a10 + 40) = 0;
    }
  }

  return v25;
}

uint64_t crf_set_nbest_callback(void *a1, uint64_t a2, _DWORD *a3)
{
  v6 = 0u;
  v7 = 0u;
  result = crf_mde_seg_parse_params(a1, a2, &v6);
  if ((result & 0x80000000) == 0)
  {
    if (a3)
    {
      *a3 = DWORD1(v7);
    }

    crf_free_conf(a1, &v6);
    return 0;
  }

  return result;
}

uint64_t crf_mde_seg_get_fecfgparam_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char **a6, _BOOL4 *a7, char *__s1)
{
  *&__c[1] = -1;
  if (!strcmp(__s1, "BOOL"))
  {
    *a7 = 0;
  }

  if (!strcmp(__s1, "STR"))
  {
    *a6 = 0;
  }

  *&__c[3] = 0;
  __c[0] = 0;
  v16 = (*(a4 + 96))(a2, a3, "fecfg", a5, &__c[3], &__c[1], __c);
  if ((v16 & 0x80001FFF) == 0x8000000A)
  {
LABEL_6:
    v17 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return v17;
  }

  v17 = v16;
  if ((v16 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*&__c[1])
  {
    v18 = strchr(**&__c[3], __c[0]);
    if (v18)
    {
      *v18 = 0;
    }

    if (!strcmp(__s1, "STR"))
    {
      v21 = strlen(**&__c[3]);
      v22 = heap_Calloc(*(a1 + 8), 1, (v21 + 1));
      *a6 = v22;
      if (v22)
      {
        strcpy(v22, **&__c[3]);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde seg param %s = %s", a5, *a6);
        return v17;
      }

      goto LABEL_6;
    }

    if (!strcmp(__s1, "BOOL"))
    {
      v19 = 0;
      *a7 = 0;
      if (***&__c[3] == 49)
      {
        v19 = *(**&__c[3] + 1) == 0;
      }

      *a7 = v19;
    }
  }

  return v17;
}

uint64_t crf_mde_seg_parse_params(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 10) = 0;
  v3 = (a3 + 10);
  *(a3 + 12) = 0;
  v58 = (a3 + 12);
  *(a3 + 16) = 0;
  v57 = (a3 + 16);
  *(a3 + 20) = 1;
  v56 = (a3 + 20);
  if (!*(a2 + 40))
  {
    return 0;
  }

  v6 = 0;
  v55 = a2;
  while (1)
  {
    v7 = *(a2 + 32) + 16 * v6;
    v8 = *v7;
    if (!strcmp(*v7, "features"))
    {
      break;
    }

    if (!strcmp(v8, "settings"))
    {
      v32 = *(v7 + 8);
      v33 = strlen(v32);
      v34 = heap_Alloc(*(a1 + 8), v33 + 1);
      if (!v34)
      {
        goto LABEL_81;
      }

      v35 = v34;
      strcpy(v34, v32);
      if (v33)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = v33;
        v40 = -v33;
        v41 = 0;
LABEL_38:
        v42 = 0;
        while (2)
        {
          v43 = !v42;
          ++v36;
          while (1)
          {
            v44 = *(v35 + v36 - 1);
            if (v43)
            {
              break;
            }

            if (v44 != 32)
            {
              v42 = 1;
              goto LABEL_49;
            }

            *(v35 + v36 - 1) = 0;
            if (!v38)
            {
              v38 = 1;
              v37 = v41;
              if (v40 + v36)
              {
                goto LABEL_38;
              }

              goto LABEL_66;
            }

            crf_mde_seg_set_param_value(a1, v35, v37, v41, v3, v58, v57, v56);
            v38 = 0;
            ++v36;
            v43 = 1;
            if (v40 + v36 == 1)
            {
              goto LABEL_67;
            }
          }

          v42 = v44 != 32;
          if (v44 != 32)
          {
            v41 = v36 - 1;
          }

LABEL_49:
          if (v40 + v36)
          {
            continue;
          }

          break;
        }

        if (v38 == 1)
        {
LABEL_66:
          crf_mde_seg_set_param_value(a1, v35, v37, v41, v3, v58, v57, v56);
        }

LABEL_67:
        v54 = v35;
        do
        {
          if (!*v54)
          {
            *v54 = 32;
          }

          ++v54;
          --v39;
        }

        while (v39);
      }

      heap_Free(*(a1 + 8), v35);
    }

    else if (!strcmp(v8, "featureparam"))
    {
      v9 = *(v7 + 8);
      v10 = strlen(v9);
      v11 = v10;
      if (v10)
      {
        v12 = v10;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
LABEL_8:
        v17 = 0;
        while (2)
        {
          v18 = !v17;
          v19 = v15;
          while (!v18)
          {
            if (v9[v19] != 32)
            {
              v17 = 1;
              goto LABEL_20;
            }

            v9[v19] = 0;
            if (!v14)
            {
              v15 = v19 + 1;
              v14 = 1;
              v13 = v16;
              if ((v19 + 1) < v12)
              {
                goto LABEL_8;
              }

              goto LABEL_75;
            }

            result = crf_mde_seg_set_featureparam_value(a1, v9, v13, v16, (a3 + 24));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v14 = 0;
            ++v19;
            v18 = 1;
            if (v19 >= v11)
            {
              goto LABEL_76;
            }
          }

          v21 = v9[v19];
          v17 = v21 != 32;
          if (v21 != 32)
          {
            v16 = v19;
          }

LABEL_20:
          v15 = v19 + 1;
          if ((v19 + 1) < v12)
          {
            continue;
          }

          break;
        }

        if (v14 != 1)
        {
          goto LABEL_76;
        }

LABEL_75:
        result = crf_mde_seg_set_featureparam_value(a1, v9, v13, v16, (a3 + 24));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        do
        {
LABEL_76:
          if (!*v9)
          {
            *v9 = 32;
          }

          ++v9;
          --v11;
        }

        while (v11);
      }
    }

LABEL_72:
    ++v6;
    a2 = v55;
    if (v6 >= *(v55 + 40))
    {
      return 0;
    }
  }

  v22 = *(v7 + 8);
  v23 = strlen(v22);
  v24 = v23;
  *(a3 + 8) = 0;
  if (v23)
  {
    v25 = 0;
    v26 = 0;
    v27 = v23;
    v28 = v22;
    do
    {
      v29 = *v28++;
      v30 = v29 == 32;
      if (v26)
      {
        v26 = !v30;
      }

      else if (v30)
      {
        v26 = 0;
      }

      else
      {
        *(a3 + 8) = ++v25;
        v26 = 1;
      }

      --v27;
    }

    while (v27);
    v31 = 8 * v25 + 8;
  }

  else
  {
    v31 = 8;
  }

  v45 = heap_Calloc(*(a1 + 8), 1, v31);
  *a3 = v45;
  if (v45)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = v49;
      v51 = v22[v49];
      if (v51 == 32)
      {
        LOBYTE(v51) = 0;
        v52 = 0;
        v46 = 0;
        v53 = *(*a3 + 8 * v48++);
      }

      else
      {
        if (v46)
        {
          v53 = *(*a3 + 8 * v48);
        }

        else
        {
          *(*a3 + 8 * v48) = heap_Alloc(*(a1 + 8), 64);
          v53 = *(*a3 + 8 * v48);
          if (!v53)
          {
            goto LABEL_81;
          }

          LOBYTE(v51) = v22[v50];
        }

        v52 = v47 + 1;
        v46 = 1;
      }

      *(v53 + v47) = v51;
      v49 = v50 + 1;
      v47 = v52;
    }

    while (v50 + 1 <= v24);
    goto LABEL_72;
  }

LABEL_81:
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v55);
  return 2310021130;
}

uint64_t crf_mde_seg_unload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a3 + 32) = 0;
  }

  if (*(a3 + 48) == 1 && (v7 = *(a3 + 40)) != 0)
  {
    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1, a2, v7);
    if ((Only_DereferenceCnt & 0x80000000) != 0)
    {
      return Only_DereferenceCnt;
    }

    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
  }

  else
  {
    Only_DereferenceCnt = 0;
  }

  crf_free_conf(a1, a3);
  v9 = *(a3 + 64);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a3 + 64) = 0;
  }

  v10 = *(a3 + 72);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a3 + 72) = 0;
  }

  v11 = *(a3 + 80);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a3 + 80) = 0;
  }

  v12 = *(a3 + 88);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a3 + 88) = 0;
  }

  if (*(a3 + 104))
  {
    v13 = 0;
    v14 = 0;
    v15 = *(a3 + 96);
    do
    {
      heap_Free(*(a1 + 8), *(v15 + v13));
      v16 = (*(a3 + 96) + v13);
      *v16 = 0;
      heap_Free(*(a1 + 8), v16[1]);
      v15 = *(a3 + 96);
      *(v15 + v13 + 8) = 0;
      ++v14;
      v13 += 16;
    }

    while (v14 < *(a3 + 104));
    heap_Free(*(a1 + 8), v15);
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
  }

  v17 = *(a3 + 112);
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
    *(a3 + 112) = 0;
  }

  v18 = *(a3 + 120);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a3 + 120) = 0;
  }

  v19 = *(a3 + 128);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    *(a3 + 128) = 0;
  }

  v20 = *(a3 + 136);
  if (v20)
  {
    heap_Free(*(a1 + 8), v20);
    *(a3 + 136) = 0;
  }

  return Only_DereferenceCnt;
}

void *crf_free_conf(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 8))
    {
      v5 = 0;
      do
      {
        heap_Free(v3[1], *(*a2 + 8 * v5++));
      }

      while (v5 < *(a2 + 8));
      v4 = *a2;
    }

    result = heap_Free(v3[1], v4);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    result = heap_Free(v3[1], v6);
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t crf_mde_getStrForCrossToken(uint64_t a1, char *__s, char **a3, char *a4, const char *a5, const char *a6)
{
  v11 = strlen(__s);
  __s2 = a4;
  v12 = strlen(a4);
  if (a5)
  {
    v13 = strlen(a5);
    v29 = strlen(a6);
  }

  else
  {
    v13 = 0;
    v29 = 0;
  }

  v30 = a1;
  v31 = a6;
  v14 = v11;
  if (v11)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v11;
    v19 = __s;
    do
    {
      if (v12 + v15 < v14 && !strncmp(v19, __s2, v12))
      {
        strncat(a3[v17++], &__s[v16], v15 - v16);
        v16 = (v12 + v15);
      }

      ++v15;
      ++v19;
    }

    while (v18 != v15);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  strncat(a3[v17], &__s[v16], (v14 - v16));
  if (a5 && v17 != 0xFFFF)
  {
    v20 = (v17 + 1);
    v21 = 28;
    do
    {
      v22 = *a3;
      if (*(*(v30 + 8) + v21))
      {
        strcat(v22, a5);
        v23 = strlen(*a3);
        memmove(&(*a3)[v13], *a3, v23 + v13);
        v24 = *a3;
        v25 = a5;
        v26 = v13;
      }

      else
      {
        strcat(v22, v31);
        v27 = strlen(*a3);
        memmove(&(*a3)[v29], *a3, v27 + v29);
        v24 = *a3;
        v25 = v31;
        v26 = v29;
      }

      memcpy(v24, v25, v26);
      ++a3;
      v21 += 48;
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t crf_mde_seg_label(uint64_t a1, char *__s, uint64_t a3, const char *a4, unsigned int a5, int a6, _WORD *a7, unsigned __int16 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char *a22, uint64_t *a23, uint64_t *a24, uint64_t *a25, char **a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t *a30, char *a31, char *a32, char *a33, _BYTE *a34, char *a35, int a36)
{
  v366 = *MEMORY[0x1E69E9840];
  v362[0] = 0;
  v362[1] = 0;
  v360 = 0;
  v361 = 0;
  v359 = 0;
  v349 = strlen(__s);
  v42 = strlen(a4);
  v356 = 0;
  v357 = 0;
  v355 = 0;
  __s1[1] = 0;
  __s1[0] = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v358 = 0;
  *&__c[1] = -1;
  v43 = (*(a12 + 96))(a13, a14, "fecfg", "mde_morphweight", &__c[3], &__c[1], __c);
  if ((v43 & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_2;
  }

  v45 = 0;
  if (v43 < 0)
  {
    v46 = a3;
  }

  else
  {
    v46 = a3;
    if (*&__c[1])
    {
      v47 = **&__c[3];
      v48 = strchr(**&__c[3], __c[0]);
      if (v48)
      {
        *v48 = 0;
        v47 = **&__c[3];
      }

      v45 = atoi(v47);
    }
  }

  v335 = a5;
  v49 = crf_mde_utils_dynstr_init(a1, __s1, (v42 + 16), 16);
  if ((v49 & 0x80000000) != 0)
  {
    v44 = v49;
    goto LABEL_15;
  }

  v44 = crf_mde_utils_dynstr_add(a1, __s1, a4, 2);
  if ((v44 & 0x80000000) != 0)
  {
LABEL_15:
    v340 = 0;
    v342 = 0;
    v52 = 0;
    v336 = 0;
    v337 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v330 = 0;
    v56 = 0;
    v344 = 0;
    v345 = 0;
    v57 = 0;
    v343 = v42;
LABEL_16:
    v58 = "FAILED";
    goto LABEL_17;
  }

  v326 = v45;
  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Doing CRF MDE segmentation for token %s", __s1[0]);
  v50 = *(v46 + 88);
  v51 = __s1[0];
  if (v50 && strstr(__s1[0], *(v46 + 88)))
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "found %s in token, skip CRF MDE segmentation", v50);
    return v44;
  }

  v325 = a6;
  v324 = a8;
  if (*(v46 + 96))
  {
    v352 = 0;
    v87 = Utf8_LengthInBytes(v51, 1);
    if (v42)
    {
      v88 = v87;
      v89 = 0;
      v90 = 0;
      do
      {
        v89 += isUmlaut(&__s1[0][v90], v88, *(v46 + 96), *(v46 + 104), &v352);
        v90 += v88;
        v88 = Utf8_LengthInBytes(&__s1[0][v90], 1);
      }

      while (v90 < v42);
      if (v89)
      {
        v365 = 0;
        *v364 = 0;
        v327 = heap_Calloc(*(a1 + 8), 1, 4 * v89);
        if (!v327)
        {
          goto LABEL_2;
        }

        v91 = crf_mde_utils_dynstr_init(a1, v364, (v42 + 16), 16);
        if ((v91 & 0x80000000) != 0)
        {
          v44 = v91;
        }

        else
        {
          v323 = a7;
          v92 = Utf8_LengthInBytes(__s1[0], 1);
          v93 = 0;
          v94 = 0;
          do
          {
            if (isUmlaut(&__s1[0][v94], v92, *(v46 + 96), *(v46 + 104), &v352))
            {
              v95 = v352;
              __strcpy_chk();
              v96 = crf_mde_utils_dynstr_add(a1, v364, v363, 1);
              if ((v96 & 0x80000000) != 0)
              {
                return v96;
              }

              v97 = (v327 + 4 * v93);
              *v97 = v94;
              v97[1] = strlen(*(*(v46 + 96) + 16 * v95 + 8));
              ++v93;
            }

            else
            {
              __strncpy_chk();
              v363[v92] = 0;
              v96 = crf_mde_utils_dynstr_add(a1, v364, v363, 1);
              if ((v96 & 0x80000000) != 0)
              {
                return v96;
              }
            }

            v94 += v92;
            v92 = Utf8_LengthInBytes(&__s1[0][v94], 1);
          }

          while (v94 < v42);
          crf_mde_utils_dynstr_free(a1, __s1);
          v98 = strlen(*v364);
          v99 = crf_mde_utils_dynstr_init(a1, __s1, (v98 + 16), 16);
          if ((v99 & 0x80000000) == 0)
          {
            v99 = crf_mde_utils_dynstr_add(a1, __s1, *v364, 2);
            if ((v99 & 0x80000000) == 0)
            {
              log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "expanded umlaut token %s", __s1[0]);
              crf_mde_utils_dynstr_free(a1, v364);
              if (v93)
              {
                v100 = 0;
                v101 = (v327 + 2);
                do
                {
                  v102 = *(v101 - 1);
                  v103 = *v101;
                  v101 += 2;
                  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "umlaut[%d] pos=%d len=%d", v100++, v102, v103);
                }

                while (v93 != v100);
              }

              v52 = v327;
              goto LABEL_105;
            }
          }

          v44 = v99;
          LOWORD(v42) = v98;
          LOWORD(v89) = v93;
        }

        v337 = 0;
        v340 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v330 = 0;
        v56 = 0;
        v344 = 0;
        v345 = 0;
        v336 = 0;
        v57 = 0;
        v342 = v89;
        v343 = v42;
LABEL_226:
        v58 = "FAILED";
        v52 = v327;
        goto LABEL_17;
      }
    }

    v323 = a7;
    v52 = 0;
    v93 = 0;
    v98 = v42;
LABEL_105:
    v51 = __s1[0];
    goto LABEL_107;
  }

  v323 = a7;
  v52 = 0;
  v93 = 0;
  v98 = v42;
LABEL_107:
  v104 = strlen(v51) + v335 == v349;
  v105 = heap_Calloc(*(a1 + 8), 1, 16 * *(v46 + 10) + 8 * v98);
  if (!v105)
  {
    goto LABEL_2;
  }

  v57 = v105;
  v44 = crf_mde_seg_fv_new(a1, *(v46 + 8), v362);
  v343 = v98;
  if ((v44 & 0x80000000) != 0)
  {
    v340 = 0;
    v342 = v93;
    v336 = 0;
    v337 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v330 = 0;
    v56 = 0;
    v344 = 0;
    v345 = 0;
    goto LABEL_16;
  }

  v331 = v104;
  v327 = v52;
  if (*(v46 + 144) == 1)
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "szSent %s", __s);
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "word %s", __s1[0]);
    if (*(v46 + 8))
    {
      v106 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "FEAT[%d] %s", v106, *(*v46 + 8 * v106));
        ++v106;
      }

      while (v106 < *(v46 + 8));
    }
  }

  if (v98)
  {
    v107 = 0;
    v108 = 0;
    do
    {
      v109 = v108;
      v110 = Utf8_LengthInBytes(&__s1[0][v108], 1);
      v111 = v110;
      v112 = *(v46 + 12);
      if (v112 == 1 || v112 == 2 && ((v113 = *(v46 + 80)) != 0 && !strncmp(&__s1[0][v109], v113, v110) || (v114 = *(v46 + 64)) != 0 && !strncmp(&__s1[0][v109], v114, v111)))
      {
        ++v107;
      }

      v108 = v109 + v111;
    }

    while ((v109 + v111) < v98);
    v115 = v107 + 1;
  }

  else
  {
    v115 = 1;
  }

  v344 = heap_Calloc(*(a1 + 8), 1, 8 * v115);
  if (!v344)
  {
    goto LABEL_2;
  }

  if (*(v46 + 12) == 2)
  {
    v52 = v327;
    v336 = heap_Calloc(*(a1 + 8), 1, 4 * v115);
    if (!v336)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v336 = 0;
    v115 = 0;
    v52 = v327;
  }

  v321 = v325 + v335;
  v322 = v325 + v335 + v42;
  v342 = v93;
  if (!v98)
  {
    v340 = 0;
    v128 = 0;
    v129 = v344;
    goto LABEL_190;
  }

  v345 = 0;
  v116 = 0;
  v117 = 0;
  v341 = v98;
  while (1)
  {
    v118 = v117;
    v119 = Utf8_LengthInBytes(&__s1[0][v117], 1);
    v120 = v119;
    v121 = *(v46 + 12);
    if (v121 != 1)
    {
      break;
    }

    if (v119)
    {
      v125 = v119;
LABEL_145:
      v126 = heap_Calloc(*(a1 + 8), 1, v125 + 1);
      *(v344 + 8 * v345) = v126;
      if (!v126)
      {
        goto LABEL_2;
      }

      strncpy(v126, &__s1[0][v116], v125);
      if (*(v46 + 12) == 2)
      {
        *(v336 + 4 * v345) = 0;
      }

      ++v345;
      v116 = v118 + v120;
      v52 = v327;
      v98 = v343;
    }

LABEL_149:
    v117 = v118 + v120;
    v127 = (v118 + v120);
    if (v127 >= v98)
    {
      if (v127 == v116)
      {
        v340 = 0;
        v129 = v344;
        v128 = v345;
        goto LABEL_190;
      }

      v130 = (v117 - v116);
      v131 = heap_Calloc(*(a1 + 8), 1, v130 + 1);
      *(v344 + 8 * v345) = v131;
      if (!v131)
      {
        goto LABEL_2;
      }

      strncpy(v131, &__s1[0][v116], v130);
      if (*(v46 + 12) == 2)
      {
        v132 = v341 + v335;
        if (v341 + v335 >= v349 || !TOK_IS_PUNCT(&__s[v335 + v98]) || (v133 = *(v46 + 72)) != 0 && (v134 = strlen(*(v46 + 72)), !strncmp(&__s[v335 + v98], v133, v134)))
        {
          v141 = 0;
          v340 = 0;
        }

        else
        {
          v135 = v341 + v335;
          do
          {
            v136 = v135++;
          }

          while (v135 < v349 && TOK_IS_PUNCT(&__s[v135]));
          if (TOK_IS_PUNCT(&__s[v135]))
          {
            v137 = v135;
          }

          else
          {
            v137 = v136;
          }

          v138 = v137 - v132;
          v139 = heap_Calloc(*(a1 + 8), 1, v138 + 2);
          if (!v139)
          {
            goto LABEL_2;
          }

          v140 = v138 + 1;
          v340 = strncpy(v139, &__s[v132], v140);
          v340[v140] = 0;
          v141 = 1;
        }

        v129 = v344;
        *(v336 + 4 * v345) = v141;
        v52 = v327;
      }

      else
      {
        v340 = 0;
        v129 = v344;
      }

      v128 = v345 + 1;
LABEL_190:
      v345 = v128;
      v153 = v128;
      LODWORD(v154) = *(v46 + 10);
      if (*(v46 + 10))
      {
        v155 = 0;
        do
        {
          v156 = crf_mde_seg_set_padding_features(a1, v155, *(v46 + 8), v362, 1);
          if ((v156 & 0x80000000) != 0)
          {
            goto LABEL_221;
          }

          v156 = crf_mde_seg_concat_strings(a1, v362, &v361);
          if ((v156 & 0x80000000) != 0)
          {
            goto LABEL_221;
          }

          v57[v155] = v361;
          v361 = 0;
          ++v155;
          v154 = *(v46 + 10);
        }

        while (v155 < v154);
      }

      if (v345)
      {
        v320 = v153;
        v157 = 0;
        while (1)
        {
          features = crf_mde_seg_get_features(a1, v129, v345, v336, v115, v157, *(v46 + 24), *v46, *(v46 + 8), v362, v335 == 0, v331);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          features = crf_mde_seg_concat_strings(a1, v362, &v361);
          if ((features & 0x80000000) != 0)
          {
            break;
          }

          LODWORD(v154) = *(v46 + 10);
          v57[*(v46 + 10) + v157] = v361;
          v361 = 0;
          if (v345 == ++v157)
          {
            v52 = v327;
            goto LABEL_201;
          }
        }

        v44 = features;
        v337 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v330 = 0;
        v56 = 0;
        goto LABEL_225;
      }

LABEL_201:
      if (v154)
      {
        v159 = 0;
        while (1)
        {
          v156 = crf_mde_seg_set_padding_features(a1, v159, *(v46 + 8), v362, 0);
          if ((v156 & 0x80000000) != 0)
          {
            break;
          }

          v156 = crf_mde_seg_concat_strings(a1, v362, &v361);
          if ((v156 & 0x80000000) != 0)
          {
            break;
          }

          v154 = *(v46 + 10);
          v57[v345 + v159 + v154] = v361;
          v361 = 0;
          if (++v159 >= v154)
          {
            goto LABEL_206;
          }
        }

LABEL_221:
        v44 = v156;
        goto LABEL_222;
      }

LABEL_206:
      v160 = v345;
      if (*(v46 + 144) == 1 && v345)
      {
        for (i = 0; i != v345; ++i)
        {
          v162 = *(v46 + 12);
          if (v162 == 1)
          {
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "token[%d] %s");
          }

          else if (v162 == 2)
          {
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "token[%d] %s punc = %d");
          }
        }

        LODWORD(v154) = *(v46 + 10);
        v52 = v327;
      }

      v44 = crf_Process(*(v46 + 40), v57, v345 + 2 * v154, &v360, &v359);
      if ((v44 & 0x80000000) != 0)
      {
        goto LABEL_222;
      }

      if (*(v46 + 144) == 1)
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "results : %d best", *(v46 + 20));
        if (!v359)
        {
LABEL_222:
          v337 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v330 = 0;
          v56 = 0;
          v166 = v153;
LABEL_223:
          v345 = v166;
          goto LABEL_16;
        }

        v163 = v153;
        v164 = 0;
        do
        {
          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s ==> _%s_", v57[v164], *(v360 + 8 * v164));
          ++v164;
          v165 = v359;
        }

        while (v359 > v164);
        v153 = v163;
        v160 = v345;
      }

      else
      {
        v165 = v359;
      }

      if (!v165)
      {
        goto LABEL_222;
      }

      v167 = heap_Calloc(*(a1 + 8), 1, 8 * (*(v46 + 20) * v160));
      if (v167)
      {
        v56 = v167;
        v320 = v153;
        if (*(v46 + 20))
        {
          v168 = 0;
          do
          {
            v169 = heap_Calloc(*(a1 + 8), 1, 40 * v345);
            v56[v168] = v169;
            if (!v169)
            {
              goto LABEL_2;
            }

            *(v56[v168] + 1) = heap_Calloc(*(a1 + 8), 1, 48 * v345);
            v170 = v56[v168];
            if (!*(v170 + 1))
            {
              goto LABEL_2;
            }

            *v170 = 0;
            *(v170 + 8) = 0;
          }

          while (*(v46 + 20) > ++v168);
        }

        v44 = crf_mde_utils_dynstr_init(a1, &v357, 2 * (v343 & 0x7FFFu), 128);
        if ((v44 & 0x80000000) != 0)
        {
          v337 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v330 = 0;
          v166 = v320;
          goto LABEL_223;
        }

        v171 = *(v46 + 20);
        if (v171)
        {
          v172 = 0;
          v173 = v359;
          do
          {
            v174 = v56[v172];
            *v174 = 0;
            if (v173)
            {
              v175 = 0;
              v176 = 0;
              v177 = *(v46 + 10);
              v178 = v360;
              do
              {
                if (v177 <= v175 && v177 + v160 > v175)
                {
                  v179 = *(*(v178 + 8 * v175) + 2 * v172);
                  if (v179 == 83 || v179 == 66)
                  {
                    *v174 = ++v176;
                  }
                }

                ++v175;
              }

              while (v173 > v175);
              v180 = v176 + 1;
            }

            else
            {
              v180 = 1;
            }

            *v174 = v180;
            v181 = v172 + 1;
            v172 = (v172 + 1);
          }

          while (v171 > v181);
          v182 = 0;
          v183 = 0;
          v338 = v160;
          while (1)
          {
            bzero(v357, v358);
            v332 = v183;
            *v56[v183] = 0;
            if (v359)
            {
              break;
            }

LABEL_275:
            v199 = strlen(v357);
            if (v199)
            {
              *(*(v56[v332] + 1) + 48 * *v56[v332]) = heap_Calloc(*(a1 + 8), 1, v199 + 1);
              v200 = *(*(v56[v332] + 1) + 48 * *v56[v332]);
              if (!v200)
              {
                goto LABEL_2;
              }

              strcpy(v200, v357);
              ++*v56[v332];
            }

            v183 = v332 + 1;
            v182 = (v332 + 1);
            if (*(v46 + 20) <= v182)
            {
              goto LABEL_279;
            }
          }

          v184 = 0;
          v185 = 0;
          v186 = 0;
          v187 = 2 * v182;
          while (1)
          {
            v188 = *(v46 + 10);
            if (v188 <= v186 && v188 + v160 > v184)
            {
              v190 = *(*(v360 + 8 * v186) + v187);
              if (v190 == 83 || v190 == 66)
              {
                v191 = strlen(v357);
                if (v191)
                {
                  *(*(v56[v332] + 1) + 48 * *v56[v332]) = heap_Calloc(*(a1 + 8), 1, v191 + 1);
                  v192 = *(*(v56[v332] + 1) + 48 * *v56[v332]);
                  if (!v192)
                  {
                    goto LABEL_2;
                  }

                  strcpy(v192, v357);
                  v193 = v56[v332];
                  v194 = *v193;
                  *(*(v193 + 1) + 48 * *v193 + 28) = 1;
                  *v193 = v194 + 1;
                  bzero(v357, v358);
                  v160 = v338;
                }
              }

              v195 = *v357 ? 1 : 2;
              v44 = crf_mde_utils_dynstr_add(a1, &v357, *(v344 + 8 * v185), v195);
              if ((v44 & 0x80000000) != 0)
              {
                goto LABEL_296;
              }

              ++v185;
              if (v184 + 1 < v359)
              {
                v196 = *(*(v360 + 8 * (v184 + 1)) + v187);
                if (v196 != 66 && v196 != 83)
                {
                  v197 = *(v46 + 80);
                  if (v197)
                  {
                    v198 = *v357 ? 1 : 2;
                    v44 = crf_mde_utils_dynstr_add(a1, &v357, v197, v198);
                    if ((v44 & 0x80000000) != 0)
                    {
                      goto LABEL_296;
                    }
                  }
                }
              }
            }

            v184 = ++v186;
            if (v359 <= v186)
            {
              goto LABEL_275;
            }
          }
        }

LABEL_279:
        v356 = heap_Calloc(*(a1 + 8), 1, 1024);
        if (!v356)
        {
          v44 = 2310021130;
          log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
LABEL_296:
          v337 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v330 = 0;
LABEL_225:
          v345 = v320;
          goto LABEL_226;
        }

        HIWORD(v355) = 1024;
        if (*(v46 + 144) == 1)
        {
          log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Segmentation results:", 0);
          if (*(a3 + 20))
          {
            v202 = 0;
            v203 = 0;
            while (1)
            {
              *v356 = 0;
              __sprintf_chk(v364, 0, 0x40uLL, "nbest[%d] ", v202);
              v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, v364);
              if ((v44 & 0x80000000) != 0)
              {
                goto LABEL_388;
              }

              v204 = v56[v203];
              if (*v204)
              {
                v205 = 0;
                v206 = 0;
                do
                {
                  v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, *(*(v204 + 1) + v205));
                  if ((v44 & 0x80000000) != 0)
                  {
                    goto LABEL_388;
                  }

                  v204 = v56[v203];
                  v207 = *v204;
                  if (v206 + 1 < v207)
                  {
                    v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, " | ");
                    if ((v44 & 0x80000000) != 0)
                    {
                      goto LABEL_388;
                    }

                    v204 = v56[v203];
                    v207 = *v204;
                  }

                  ++v206;
                  v205 += 48;
                }

                while (v206 < v207);
              }

              log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v356);
              v202 = ++v203;
              v339 = *(a3 + 20);
              if (v339 <= v203)
              {
                goto LABEL_298;
              }
            }
          }
        }

        else
        {
          v339 = *(a3 + 20);
LABEL_298:
          if (v339)
          {
            v314 = 0;
            v317 = 0;
            v208 = 0;
            v311 = *(a3 + 96);
            while (1)
            {
              v209 = v314;
              v312 = v208;
              if (v311)
              {
                v210 = v56[v208];
                v333 = *v210;
                if (*v210)
                {
                  v211 = 0;
                  v212 = 0;
                  v213 = *(v210 + 1);
                  do
                  {
                    v214 = strlen(*(v213 + 48 * v211));
                    if (v342)
                    {
                      v215 = v214 + v212;
                      v217 = (v327 + 2);
                      v216 = v342;
                      do
                      {
                        v218 = *(v217 - 1);
                        if (v218 >= v212)
                        {
                          v219 = *v217 + v218;
                          if (v215 > v218 && v219 > v215)
                          {
                            *(v210 + 8) = 5;
                            v209 = 1;
                          }

                          if (v219 < v215)
                          {
                            *(v213 + 48 * v211 + 36) = 1;
                          }
                        }

                        v217 += 2;
                        --v216;
                      }

                      while (v216);
                    }

                    v212 += v214;
                    ++v211;
                  }

                  while (v211 != v333);
                }
              }

              v314 = v209;
              v221 = v312 + 1;
              if (v339 <= (v312 + 1))
              {
                break;
              }

              v222 = v56[v312];
              v223 = *v222;
              v224 = 48 * *v222;
              v313 = v312 + 1;
              v225 = v221;
              v334 = v223;
              do
              {
                v226 = v56[v225];
                if (v223 == *v226)
                {
                  if (v223)
                  {
                    v227 = 0;
                    v228 = *(v226 + 1);
                    while (*(v228 + v227 + 28) != 1 || !strcmp(*(*(v222 + 1) + v227), *(v228 + v227)))
                    {
                      v227 += 48;
                      if (v224 == v227)
                      {
                        goto LABEL_324;
                      }
                    }
                  }

                  else
                  {
LABEL_324:
                    *(v226 + 8) = 4;
                    v317 = 1;
                  }

                  v223 = v334;
                }

                ++v225;
              }

              while (v339 > v225);
              v208 = v313;
            }

            if (v317 != 1 && v209 != 1 || *(a3 + 144) != 1)
            {
LABEL_349:
              v236 = *(a3 + 56);
              if (v236 == 1)
              {
                if (!*(a3 + 120))
                {
                  goto LABEL_352;
                }
              }

              else if (v236 || *(a3 + 120))
              {
LABEL_352:
                if (a21 == 1)
                {
                  v237 = strchr(a22, 95);
                  if (v237)
                  {
                    v238 = v237 + 1;
                  }

                  else
                  {
                    v238 = a22;
                  }

                  v316 = v238;
                  v239 = *v238;
                }

                else
                {
                  v316 = 0;
                  v239 = 32;
                }

                v315 = v239;
                v44 = crf_mde_utils_do_validation(a1, a12, a13, a14, a15, a16, a17, *(a3 + 112), *(a3 + 120), *(a3 + 128), *(a3 + 136), v56, v339, *(a3 + 144), *(a3 + 64), &v356, &v355 + 1);
                if ((v44 & 0x80000000) == 0)
                {
                  v242 = *(a3 + 20);
                  if (v242)
                  {
                    v243 = 0;
                    for (j = 0; j < v242; ++j)
                    {
                      v245 = v56[j];
                      v246 = *(v245 + 8);
                      if (v246 < 2 || v246 == 3 && !*(a3 + 136))
                      {
                        v247 = *v245;
                        if (v247 > v243)
                        {
                          v243 = v247;
                        }
                      }
                    }

                    v337 = v243;
                    if (v243)
                    {
                      v248 = v243;
                      v330 = heap_Calloc(*(a1 + 8), 1, 2 * v243);
                      if (!v330)
                      {
                        v44 = 2310021130;
                        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
                        goto LABEL_389;
                      }

                      v249 = 8 * v248;
                      v55 = heap_Calloc(*(a1 + 8), 1, 8 * v248);
                      if (!v55)
                      {
                        v44 = 2310021130;
                        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
                        v53 = 0;
                        v54 = 0;
                        goto LABEL_390;
                      }

                      v54 = heap_Calloc(*(a1 + 8), 1, v249);
                      if (!v54)
                      {
                        v44 = 2310021130;
                        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
                        v53 = 0;
                        goto LABEL_390;
                      }

                      v53 = heap_Calloc(*(a1 + 8), 1, v249);
                      if (v53)
                      {
                        v250 = 0;
                        while (1)
                        {
                          v251 = heap_Calloc(*(a1 + 8), 1, 128);
                          v55[v250 / 8] = v251;
                          if (!v251)
                          {
                            break;
                          }

                          v252 = heap_Calloc(*(a1 + 8), 1, 128);
                          v54[v250 / 8] = v252;
                          if (!v252)
                          {
                            break;
                          }

                          v253 = heap_Calloc(*(a1 + 8), 1, 128);
                          v53[v250 / 8] = v253;
                          if (!v253)
                          {
                            break;
                          }

                          *v55[v250 / 8] = 0;
                          *v54[v250 / 8] = 0;
                          *v53[v250 / 8] = 0;
                          v250 += 8;
                          if (v249 == v250)
                          {
                            v309 = 0;
                            goto LABEL_393;
                          }
                        }
                      }

                      v44 = 2310021130;
                      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
LABEL_467:
                      v58 = "FAILED";
                      v345 = v320;
                      goto LABEL_391;
                    }
                  }

                  v337 = 0;
                  v330 = 0;
                  v55 = 0;
                  v54 = 0;
                  v53 = 0;
                  v309 = 1;
LABEL_393:
                  v254 = strlen(__s1[0]);
                  v255 = v321 + v254;
                  v319 = Utf8_LengthInBytes(&__s[(v321 + v254)], 1);
                  v305 = v255;
                  v306 = v349;
                  if (v349 > v255 && (v256 = &__s[v255], (*(a12 + 128))(a13, a14, v256)))
                  {
                    v322 = v255;
                    do
                    {
                      if (!strncmp(v256, "_", v319))
                      {
                        break;
                      }

                      v257 = v322 + v319;
                      v319 = Utf8_LengthInBytes(&__s[(v322 + v319)], 1);
                      v305 = v257;
                      v322 = v257;
                      if (v349 <= v257)
                      {
                        break;
                      }

                      v256 = &__s[v257];
                    }

                    while ((*(a12 + 128))(a13, a14, v256));
                  }

                  else
                  {
                    LOWORD(v322) = v255;
                  }

                  if (*(a3 + 20))
                  {
                    v328 = 0;
                    v329 = 0;
                    v318 = 0;
                    v258 = 0;
                    v308 = a36;
                    v307 = a35;
                    while (1)
                    {
                      v350 = v258;
                      v259 = *(v56[v258] + 8);
                      if (v259 < 2 || v259 == 3 && !*(a3 + 136))
                      {
                        *a31 = 0;
                        *a32 = 0;
                        *a33 = 0;
                        v260 = v56[v350];
                        if (*(v260 + 16))
                        {
                          v261 = 0;
                          v346 = 0;
                          v310 = v328 + 1;
                          v262 = v350;
                          while (1)
                          {
                            v348 = v261;
                            v263 = 5 * v261;
                            crf_mde_getStrForCrossToken(v260, *(*(v260 + 24) + 80 * v261), v54, *(a3 + 64), "◄", "◖");
                            crf_mde_getStrForCrossToken(v56[v262], *(*(v56[v262] + 3) + 16 * v263 + 48), v55, *(a3 + 64), 0, 0);
                            crf_mde_getStrForCrossToken(v56[v262], *(*(v56[v262] + 3) + 16 * v263 + 64), v53, *(a3 + 64), 0, 0);
                            if (*v56[v262])
                            {
                              v264 = 0;
                              v265 = v330;
                              do
                              {
                                v266 = strlen(v55[v264]);
                                *(v265 + 2 * v264) = Utf8_LengthInUtf8chars(v55[v264], v266);
                                v267 = strlen(v54[v264]);
                                v268 = Utf8_LengthInUtf8chars(v54[v264], v267);
                                v269 = strlen(v53[v264]);
                                v265 = v330;
                                v270 = Utf8_LengthInUtf8chars(v53[v264], v269);
                                v271 = *(v330 + 2 * v264);
                                if (v268 > v271)
                                {
                                  *(v330 + 2 * v264) = v268;
                                  v271 = v268;
                                }

                                if (v271 < v270)
                                {
                                  *(v330 + 2 * v264) = v270;
                                }

                                ++v264;
                              }

                              while (v264 < *v56[v350]);
                              if (*v56[v350])
                              {
                                v272 = 0;
                                do
                                {
                                  v273 = strlen(v55[v272]);
                                  v274 = Utf8_LengthInUtf8chars(v55[v272], v273);
                                  if (*(v330 + 2 * v272) > v274)
                                  {
                                    v275 = v274;
                                    do
                                    {
                                      *&v55[v272][strlen(v55[v272])] = 126;
                                      ++v275;
                                    }

                                    while (v275 < *(v330 + 2 * v272));
                                  }

                                  v276 = strlen(v54[v272]);
                                  v277 = Utf8_LengthInUtf8chars(v54[v272], v276);
                                  if (*(v330 + 2 * v272) > v277)
                                  {
                                    v278 = v277;
                                    do
                                    {
                                      *&v54[v272][strlen(v54[v272])] = 126;
                                      ++v278;
                                    }

                                    while (v278 < *(v330 + 2 * v272));
                                  }

                                  v279 = strlen(v53[v272]);
                                  v280 = Utf8_LengthInUtf8chars(v53[v272], v279);
                                  if (*(v330 + 2 * v272) > v280)
                                  {
                                    v281 = v280;
                                    do
                                    {
                                      *&v53[v272][strlen(v53[v272])] = 126;
                                      ++v281;
                                    }

                                    while (v281 < *(v330 + 2 * v272));
                                  }

                                  ++v272;
                                }

                                while (v272 < *v56[v350]);
                              }
                            }

                            *a31 = 0;
                            *a32 = 0;
                            *a33 = 0;
                            v282 = v56[v350];
                            if (*v282)
                            {
                              v283 = 0;
                              do
                              {
                                strcat(a31, v54[v283]);
                                strcat(a32, v55[v283]);
                                strcat(a33, v53[v283++]);
                                v282 = v56[v350];
                              }

                              while (v283 < *v282);
                            }

                            v284 = (*(v282 + 3) + 80 * v348);
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call nbest[%d] solution[%d] segpat:%s patPOS:%s pos:%s pron:%s feat:%s", v328, v346, v284[4], v284[6], v284[2], *v284, v284[8]);
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call phon:%s", a31);
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call pos :%s", a32);
                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "crosstoken call cgn :%s", a33);
                            *a34 = 0;
                            strcpy(v363, "normal");
                            v285 = oneword_crosstoken(a1, a18, a19, a20, a21, a22, 0, v315, v316, v363, 0, a23, a24, a25, a26, a27, a28, a29, a30, &a31, &a32, &a33, &a34);
                            if ((v285 & 0x80000000) != 0)
                            {
                              break;
                            }

                            v286 = v56[v350];
                            if (*(v286 + 8) == 3 && !*(a3 + 136))
                            {
                              v287 = &a32;
                            }

                            else
                            {
                              v287 = (*(v286 + 3) + 80 * v348 + 16);
                            }

                            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "write to lingdb nbest[%d] solution[%d] pos:%s pron:%s cgn:%s", v328, v346, *v287, a31, a33);
                            v288 = v56[v350];
                            v289 = *(v288 + 8);
                            if (v308)
                            {
                              if (v289 == 3 && !*(a3 + 136))
                              {
                                v290 = &a32;
                              }

                              else
                              {
                                v290 = (*(v288 + 3) + 80 * v348 + 16);
                              }

                              v291 = *v290;
                              v292 = a31;
                              v293 = a33;
                              v294 = v310 + v326 * *v288;
                              v295 = *(a3 + 52);
                            }

                            else
                            {
                              if (v289 == 3 && !*(a3 + 136))
                              {
                                v296 = &a32;
                              }

                              else
                              {
                                v296 = (*(v288 + 3) + 80 * v348 + 16);
                              }

                              v291 = *v296;
                              v292 = a31;
                              v293 = a33;
                              v294 = v310 + v326 * *v288;
                              v295 = 1;
                            }

                            LOWORD(v304) = v294;
                            v44 = hlp_Write2WordRec(a9, a10, a11, v324, v335, v322 - v325, v329, v291, v292, v293, v307, v304, v295);
                            if ((v44 & 0x80000000) != 0)
                            {
                              goto LABEL_461;
                            }

                            if ((v309 & 1) == 0)
                            {
                              v297 = v337;
                              v298 = v53;
                              v299 = v54;
                              v300 = v55;
                              do
                              {
                                v301 = *v300++;
                                *v301 = 0;
                                v302 = *v299++;
                                *v302 = 0;
                                v303 = *v298++;
                                *v303 = 0;
                                --v297;
                              }

                              while (v297);
                            }

                            ++v329;
                            v262 = v350;
                            v261 = v348 + 1;
                            v260 = v56[v350];
                            v346 = v348 + 1;
                            if (v348 + 1 >= *(v260 + 16))
                            {
                              goto LABEL_453;
                            }
                          }

                          v44 = v285;
                          goto LABEL_461;
                        }

LABEL_453:
                        v318 = 1;
                      }

                      v258 = v350 + 1;
                      v328 = (v350 + 1);
                      if (*(a3 + 20) <= v328)
                      {
                        goto LABEL_458;
                      }
                    }
                  }

                  v318 = 0;
LABEL_458:
                  if (v306 != v305)
                  {
                    v322 = v321 + strlen(__s1[0]);
                  }

LABEL_461:
                  if (v318 != 1)
                  {
                    goto LABEL_467;
                  }

                  v52 = v327;
                  v46 = a3;
LABEL_463:
                  v152 = v322;
                  goto LABEL_183;
                }

                goto LABEL_388;
              }

              if (v339)
              {
                v318 = 0;
                v240 = 0;
                v46 = a3;
                do
                {
                  v44 = crf_mde_utils_write_morphemes(a1, *(a3 + 56), *(a3 + 120), a12, a13, a14, a9, v201, a10, a11, v324, v335, v325, v56[v240], __s, &v355);
                  if ((v44 & 0x80000000) != 0)
                  {
                    v330 = 0;
                    v55 = 0;
                    v54 = 0;
                    v53 = 0;
                    v337 = 0;
                    goto LABEL_461;
                  }

                  if (v355 == v349)
                  {
                    v241 = v349;
                  }

                  else
                  {
                    v241 = v322;
                  }

                  v322 = v241;
                  ++v240;
                  v318 = 1;
                }

                while (*(a3 + 20) > v240);
                v337 = 0;
                v53 = 0;
                v54 = 0;
                v55 = 0;
                v330 = 0;
                v52 = v327;
                goto LABEL_463;
              }

LABEL_388:
              v337 = 0;
LABEL_389:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v330 = 0;
LABEL_390:
              v345 = v320;
              v58 = "FAILED";
LABEL_391:
              v52 = v327;
              v46 = a3;
              goto LABEL_17;
            }

            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Segmentation results (remove duplicates):", 0);
            if (*(a3 + 20))
            {
              v229 = 0;
              v230 = 0;
              while (1)
              {
                *v356 = 0;
                __sprintf_chk(v364, 0, 0x40uLL, "nbest[%d] ", v229);
                v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, v364);
                if ((v44 & 0x80000000) != 0)
                {
                  goto LABEL_388;
                }

                v231 = v56[v230];
                if (*v231)
                {
                  v232 = 0;
                  v233 = 0;
                  do
                  {
                    v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, *(*(v231 + 1) + v232));
                    if ((v44 & 0x80000000) != 0)
                    {
                      goto LABEL_388;
                    }

                    v231 = v56[v230];
                    v234 = *v231;
                    if (v233 + 1 < v234)
                    {
                      v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, " | ");
                      if ((v44 & 0x80000000) != 0)
                      {
                        goto LABEL_388;
                      }

                      v231 = v56[v230];
                      v234 = *v231;
                    }

                    ++v233;
                    v232 += 48;
                  }

                  while (v233 < v234);
                }

                v235 = *(v231 + 8);
                if (v235 == 4)
                {
                  v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, " MDE_Duplicate");
                  if ((v44 & 0x80000000) != 0)
                  {
                    goto LABEL_388;
                  }

                  v235 = *(v56[v230] + 8);
                }

                if (v235 == 5)
                {
                  v44 = crf_mde_utils_add2Str(a1, &v356, &v355 + 1, " MDE_UmlautSplit");
                  if ((v44 & 0x80000000) != 0)
                  {
                    goto LABEL_388;
                  }
                }

                log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v356);
                v229 = ++v230;
                v339 = *(a3 + 20);
                if (v339 <= v230)
                {
                  goto LABEL_349;
                }
              }
            }
          }
        }

        v339 = 0;
        goto LABEL_349;
      }

LABEL_2:
      v44 = 2310021130;
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
      return v44;
    }
  }

  if (v121 != 2)
  {
    goto LABEL_149;
  }

  v122 = *(v46 + 80);
  if (!v122 || (v123 = __s1[0], strncmp(&__s1[0][v118], v122, v119)))
  {
    v124 = *(v46 + 64);
    if (!v124 || (v123 = __s1[0], strncmp(&__s1[0][v118], v124, v120)))
    {
      v52 = v327;
      goto LABEL_149;
    }
  }

  v125 = v118 - v116;
  if (v118 != v116 && strcmp(a22, "prompt") && strcmp(a22, "internal-nuance-system-norm"))
  {
    goto LABEL_145;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "Error Parsing For Morpheme - character=%d, word=%s", v118, v123);
  v142 = *(v46 + 56);
  if (!v142)
  {
    v52 = v327;
    v143 = v324;
    v144 = __s;
    if (!*(v46 + 120))
    {
      goto LABEL_174;
    }

LABEL_186:
    v337 = 0;
    v340 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v330 = 0;
    v56 = 0;
    goto LABEL_16;
  }

  v52 = v327;
  v143 = v324;
  v144 = __s;
  if (v142 != 1 || !*(v46 + 120))
  {
    goto LABEL_186;
  }

LABEL_174:
  v145 = heap_Calloc(*(a1 + 8), 1, 8 * *(v46 + 20));
  if (!v145)
  {
    goto LABEL_2;
  }

  v56 = v145;
  v146 = heap_Calloc(*(a1 + 8), 1, 40);
  *v56 = v146;
  if (!v146)
  {
    goto LABEL_2;
  }

  *(*v56 + 1) = heap_Calloc(*(a1 + 8), 1, 48);
  v147 = *v56;
  if (!*(*v56 + 1))
  {
    goto LABEL_2;
  }

  *v147 = 0;
  *(v147 + 8) = 0;
  v148 = strlen(__s1[0]);
  *(*(*v56 + 1) + 48 * **v56) = heap_Calloc(*(a1 + 8), 1, v148 + 1);
  v149 = *(*(*v56 + 1) + 48 * **v56);
  if (!v149)
  {
    goto LABEL_2;
  }

  strcpy(v149, __s1[0]);
  v150 = *v56;
  *v150 = **v56 + 1;
  v44 = crf_mde_utils_write_morphemes(a1, 0, 0, a12, a13, a14, a9, v151, a10, a11, v143, v335, v325, v150, v144, &v355);
  if ((v44 & 0x80000000) != 0)
  {
    v337 = 0;
    v340 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v330 = 0;
    v166 = 1;
    goto LABEL_223;
  }

  v337 = 0;
  v340 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v330 = 0;
  if (v355 == v349)
  {
    v152 = v349;
  }

  else
  {
    v152 = v322;
  }

  v345 = 1;
LABEL_183:
  *v323 = v152 - v325;
  v58 = "SUCCEEDED";
LABEL_17:
  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "CRF MDE segmentation for token %s : %s", __s1[0], v58);
  crf_mde_seg_fv_dealloc(a1, v362);
  if (v356)
  {
    heap_Free(*(a1 + 8), v356);
    v356 = 0;
  }

  if (v342)
  {
    heap_Free(*(a1 + 8), v52);
  }

  if (v337)
  {
    for (k = 0; k != v337; ++k)
    {
      if (v55)
      {
        v60 = v55[k];
        if (v60)
        {
          heap_Free(*(a1 + 8), v60);
          v55[k] = 0;
        }
      }

      if (v54)
      {
        v61 = v54[k];
        if (v61)
        {
          heap_Free(*(a1 + 8), v61);
          v54[k] = 0;
        }
      }

      if (v53)
      {
        v62 = v53[k];
        if (v62)
        {
          heap_Free(*(a1 + 8), v62);
          v53[k] = 0;
        }
      }
    }

    if (v330)
    {
      heap_Free(*(a1 + 8), v330);
    }

    if (v55)
    {
      heap_Free(*(a1 + 8), v55);
    }

    if (v54)
    {
      heap_Free(*(a1 + 8), v54);
    }

    if (v53)
    {
      heap_Free(*(a1 + 8), v53);
    }
  }

  crf_mde_utils_dynstr_free(a1, __s1);
  if (v357)
  {
    heap_Free(*(a1 + 8), v357);
    v357 = 0;
  }

  if (v340)
  {
    heap_Free(*(a1 + 8), v340);
  }

  if (v344)
  {
    if (v345)
    {
      v63 = v345;
      v64 = v344;
      do
      {
        if (*v64)
        {
          heap_Free(*(a1 + 8), *v64);
          *v64 = 0;
        }

        ++v64;
        --v63;
      }

      while (v63);
    }

    heap_Free(*(a1 + 8), v344);
    heap_Free(*(a1 + 8), v336);
  }

  if (v57)
  {
    v65 = *(v46 + 10);
    if (v343 | (2 * v65))
    {
      v66 = 0;
      do
      {
        v67 = v66;
        v68 = v57[v66];
        if (v68)
        {
          heap_Free(*(a1 + 8), v68);
          v57[v67] = 0;
          v65 = *(v46 + 10);
        }

        v66 = v67 + 1;
      }

      while (v343 + 2 * v65 > (v67 + 1));
    }

    heap_Free(*(a1 + 8), v57);
  }

  v69 = v360;
  if (v360)
  {
    v70 = v359;
    if (v359)
    {
      v71 = 0;
      do
      {
        v72 = v71;
        v73 = *(v360 + 8 * v71);
        if (v73)
        {
          heap_Free(*(a1 + 8), v73);
          *(v360 + 8 * v72) = 0;
          v70 = v359;
        }

        v71 = v72 + 1;
      }

      while (v70 > (v72 + 1));
      v69 = v360;
    }

    heap_Free(*(a1 + 8), v69);
    v360 = 0;
  }

  if (v56)
  {
    if (*(v46 + 20))
    {
      v74 = 0;
      do
      {
        v75 = v74;
        v76 = v56[v74];
        if (*v76)
        {
          v77 = 0;
          do
          {
            heap_Free(*(a1 + 8), *(*(v76 + 1) + 48 * v77));
            *(*(v56[v75] + 1) + 48 * v77) = 0;
            v78 = v56[v75];
            v79 = *(v78 + 1);
            if (*(v79 + 48 * v77 + 8))
            {
              v80 = 0;
              v81 = 0;
              do
              {
                v82 = *(*(v79 + 48 * v77 + 16) + v80 + 8);
                if (v82)
                {
                  heap_Free(*(a1 + 8), v82);
                  *(*(*(v56[v75] + 1) + 48 * v77 + 16) + v80 + 8) = 0;
                  v78 = v56[v75];
                }

                v79 = *(v78 + 1);
                v83 = *(v79 + 48 * v77 + 16);
                v84 = *(v83 + v80 + 16);
                if (v84)
                {
                  heap_Free(*(a1 + 8), v84);
                  *(*(*(v56[v75] + 1) + 48 * v77 + 16) + v80 + 16) = 0;
                  v78 = v56[v75];
                  v79 = *(v78 + 1);
                  v83 = *(v79 + 48 * v77 + 16);
                }

                v85 = *(v83 + v80 + 24);
                if (v85)
                {
                  heap_Free(*(a1 + 8), v85);
                  *(*(*(v56[v75] + 1) + 48 * v77 + 16) + v80 + 24) = 0;
                  v78 = v56[v75];
                  v79 = *(v78 + 1);
                }

                ++v81;
                v80 += 32;
              }

              while (v81 < *(v79 + 48 * v77 + 8));
            }

            heap_Free(*(a1 + 8), *(v79 + 48 * v77 + 16));
            *(*(v56[v75] + 1) + 48 * v77++ + 16) = 0;
            v76 = v56[v75];
          }

          while (v77 < *v76);
        }

        heap_Free(*(a1 + 8), *(v76 + 1));
        *(v56[v75] + 1) = 0;
        crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v56[v75] + 3, v56[v75][8]);
        heap_Free(*(a1 + 8), v56[v75]);
        v56[v75] = 0;
        v74 = v75 + 1;
      }

      while (*(v46 + 20) > (v75 + 1));
    }

    heap_Free(*(a1 + 8), v56);
  }

  return v44;
}

uint64_t isUmlaut(const char *a1, int a2, unsigned __int8 **a3, unsigned int a4, _WORD *a5)
{
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = a4;
  while (1)
  {
    v11 = Utf8_LengthInBytes(*a3, 1);
    if (a2 == v11 && !strncmp(a1, *a3, v11))
    {
      break;
    }

    ++v9;
    a3 += 2;
    if (v10 == v9)
    {
      return 0;
    }
  }

  *a5 = v9;
  return 1;
}

uint64_t crf_mde_seg_concat_strings(uint64_t a1, uint64_t *a2, char **a3)
{
  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a2;
    do
    {
      v8 = v8 + strlen(*(v9 + 16 * v7++)) + 2;
    }

    while (v6 > v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, v8);
  *a3 = v10;
  if (v10)
  {
    if (*(a2 + 2))
    {
      v11 = 0;
      v12 = 0;
      do
      {
        strcat(*a3, *(*a2 + 16 * v12));
        v13 = *(a2 + 2);
        if (v13 - 1 > v11)
        {
          *&(*a3)[strlen(*a3)] = 32;
          v13 = *(a2 + 2);
        }

        v11 = ++v12;
      }

      while (v13 > v12);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }
}

uint64_t crf_mde_seg_set_param_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5, int *a6, int *a7, int *a8)
{
  v15 = (a2 + a3);
  if (!strcmp(v15, "nbest"))
  {
    v18 = (a2 + a4);
    *a8 = atoi(v18);
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v15, v18);
  }

  if (!strcmp(v15, "padding"))
  {
    v18 = (a2 + a4);
    *a5 = atoi(v18);
    return log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde param, %s: %s", v15, v18);
  }

  if (!strcmp(v15, "annotation"))
  {
    v19 = a2 + a4;
    result = strcmp(v19, "BMES");
    if (result)
    {
      if (*v19 != 66 || *(v19 + 1) != 73 || *(v19 + 2))
      {
        return result;
      }

      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    *a7 = v20;
    return result;
  }

  result = strcmp(v15, "type");
  if (!result)
  {
    result = strcmp((a2 + a4), "char");
    if (!result)
    {
      v17 = 1;
      goto LABEL_20;
    }

    result = strcmp((a2 + a4), "morpheme");
    if (!result)
    {
      v17 = 2;
LABEL_20:
      *a6 = v17;
    }
  }

  return result;
}

uint64_t crf_mde_seg_set_featureparam_value(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char **a5)
{
  v9 = (a2 + a3);
  if (strcmp(v9, "isvowel"))
  {
    return 0;
  }

  v10 = (a2 + a4);
  v11 = strlen(v10);
  v12 = heap_Calloc(*(a1 + 8), 1, v11 + 1);
  *a5 = v12;
  if (v12)
  {
    strcpy(v12, v10);
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "set mde featureparam, %s: %s", v9, v10);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0);
  return 2310021130;
}

uint64_t oneword_posparser_Open(void *a1)
{
  v15 = 0;
  *(a1 + 501) = 0;
  *&v12[0] = 0;
  v16 = 0;
  v14 = 0;
  v17 = -1;
  v2 = a1 + 8;
  result = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", "arwpospredictiononly", v12, &v17, &v16);
  if ((result & 0x80000000) != 0 || !v17)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    return oneword_posparser_Close(a1, v4, v5);
  }

  v6 = **&v12[0];
  v7 = strchr(**&v12[0], v16);
  if (v7)
  {
    *v7 = 0;
    v6 = **&v12[0];
  }

  if (*v6 != 49 || v6[1])
  {
    return oneword_posparser_Close(a1, v4, v5);
  }

  v14 = 1;
  result = posparser_Open(*a1, a1 + 251);
  if ((result & 0x80000000) == 0)
  {
    *(a1[251] + 8) = *v2;
    v8 = a1[251];
    *(v8 + 24) = a1[10];
    *(v8 + 32) = a1[7];
    *(v8 + 56) = a1[13];
    *(v8 + 40) = *(a1 + 11);
    result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v15);
    if ((result & 0x80000000) == 0)
    {
      __strcpy_chk();
      *(a1[251] + 243) = 7565168;
      v9 = a1[251];
      result = getPosparserIGTreesAndDict(*a1, a1[2], a1[3], *(v9 + 8), *(v9 + 16), *(v9 + 24), (v9 + 232), (v9 + 216), (v9 + 224), (v9 + 236), v9 + 240, &v14);
      if ((result & 0x80000000) == 0)
      {
        if (v14)
        {
          *(a1 + 501) = 1;
          v10 = *(*a1 + 8);
          v11 = a1[251];
          v12[0] = xmmword_1F42D2E68;
          v12[1] = *off_1F42D2E78;
          v13 = off_1F42D2E88;
          result = ssftmap_ObjOpen(v10, 0, v12, (v11 + 256));
          if ((result & 0x80000000) == 0)
          {
            return posparser_getPosMap(a1[251]);
          }

          return result;
        }

        return oneword_posparser_Close(a1, v4, v5);
      }
    }
  }

  return result;
}

uint64_t oneword_posparser_Close(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 2008);
  if (v4)
  {
    if (v4[32])
    {
      v5 = ssftmap_ObjClose(v4[32]);
      v4 = *(a1 + 2008);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 0;
    }

    if (v4[27] && v4[28])
    {
      v5 = freePosparserIGTrees(*a1, v4 + 27, v4 + 28);
      v4 = *(a1 + 2008);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_10:
  posparser_Close(v4);
  *(a1 + 2008) = 0;
  *(a1 + 2004) = 0;
  return v5;
}

uint64_t oneword_posparser_Reopen(void *a1, void *a2, void *a3)
{
  result = oneword_posparser_Close(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {

    return oneword_posparser_Open(a1);
  }

  return result;
}

uint64_t oneword_posparser_Start(uint64_t a1)
{
  result = posparser_ProcessStart(*(a1 + 2008));
  if ((result & 0x80000000) == 0 && !*(*(a1 + 2008) + 248))
  {
    posparser_ProcessEnd(*(a1 + 2008));
    result = 0;
    *(a1 + 2004) = 0;
  }

  return result;
}

uint64_t oneword_posparser_Process(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = 0;
  v35 = 0;
  v33 = 0;
  __s = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  __src = 0;
  v27 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v36);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (((*(a1[7] + 184))(a2, a3, v36, 0, &v35) & 0x80000000) != 0)
  {
    return v6;
  }

  if (v35 != 1)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, v36, 0, &__s, &v31);
  if ((v6 & 0x80000000) != 0 || v31 < 2u)
  {
    return v6;
  }

  v7 = strlen(__s);
  v8 = heap_Calloc(*(*a1 + 8), 1, v7 + 1);
  v33 = v8;
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = v8;
  strcpy(v8, __s);
  v10 = (*(a1[7] + 176))(a2, a3, v36, 1, &__src, &v27);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = heap_Alloc(*(*a1 + 8), 32 * v27);
    v28 = v11;
    if (v11)
    {
      v12 = v11;
      memcpy(v11, __src, 32 * v27);
      v13 = v36;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v40 = 0;
      v14 = v27;
      v37 = v27;
      v38 = 0u;
      v39 = 0u;
      v38.n128_u32[0] = 1;
      if (((*(a1[7] + 184))(a2, a3, v36, 3, &v43 + 2) & 0x80000000) != 0 || HIWORD(v43) != 1 || ((*(a1[7] + 104))(a2, a3, 3, v13, &v43) & 0x80000000) != 0)
      {
LABEL_15:
        v17 = v12;
      }

      else
      {
        v15 = 0;
        v16 = 32 * v14 + 32;
        while (v43)
        {
          v16 += 32;
          --v15;
          if (((*(a1[7] + 120))(a2, a3) & 0x80000000) != 0)
          {
            goto LABEL_15;
          }
        }

        if (v15)
        {
          v17 = heap_Realloc(*(*a1 + 8), v12, v16);
          if (!v17)
          {
            log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0);
            LODWORD(v14) = v27;
            goto LABEL_17;
          }
        }

        else
        {
          v17 = v12;
        }

        if (((*(a1[7] + 104))(a2, a3, 3, v13, &v43) & 0x80000000) == 0)
        {
          v24 = v43;
          if (v43)
          {
            do
            {
              if (((*(a1[7] + 168))(a2, a3, v24, 1, 1, &v42, &v42 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v43, 2, 1, &v41, &v42 + 2) & 0x80000000) != 0)
              {
                break;
              }

              if (((*(a1[7] + 168))(a2, a3, v43, 0, 1, &v40, &v42 + 2) & 0x80000000) != 0)
              {
                break;
              }

              v38.n128_u32[0] = 59;
              v38.n128_u32[1] = v42;
              v25 = *(v17 + 12) + v42;
              v38.n128_u32[2] = v41;
              v38.n128_u32[3] = v25;
              LODWORD(v39) = v41 - v42;
              DWORD2(v39) = v40;
              v26 = posPInsertTOKMarker(v17, &v37, &v38);
              if (((*(a1[7] + 120))(a2, a3, v43, &v43, v26) & 0x80000000) != 0)
              {
                break;
              }

              v24 = v43;
            }

            while (v43);
            LODWORD(v14) = v37;
          }
        }
      }

      v28 = v17;
      v27 = v14;
      v12 = v17;
LABEL_17:
      v10 = posparser_ExtractWords(a1[251], v12, v14, v9, v7, &v32, &v31 + 1);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = posparser_Process(a1[251], a2, a3, v32, HIWORD(v31), 0, v36, &v33, &v28, &v27);
        if ((v10 & 0x80000000) == 0)
        {
          v18 = strlen(v33);
          v10 = (*(a1[7] + 160))(a2, a3, v36, 0, (v18 + 1), v33, &v30);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = (*(a1[7] + 160))(a2, a3, v36, 1, v27, v28, &v30);
          }
        }
      }

      goto LABEL_21;
    }

LABEL_34:
    v6 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 54000, 0);
    return v6;
  }

LABEL_21:
  v6 = v10;
LABEL_22:
  if (v33)
  {
    heap_Free(*(*a1 + 8), v33);
  }

  v19 = v28;
  if (v28)
  {
    v20 = v27;
    if (v27)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (*&v28[v21] == 58)
        {
          heap_Free(*(*a1 + 8), *&v28[v21 + 24]);
          *&v28[v21 + 24] = 0;
          v20 = v27;
        }

        ++v22;
        v21 += 32;
      }

      while (v22 < v20);
      v19 = v28;
    }

    heap_Free(*(*a1 + 8), v19);
  }

  if (v32)
  {
    posparser_FreeWords(a1[251], v32, HIWORD(v31));
  }

  return v6;
}

uint64_t dt_Main(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s2)
{
  v93 = *MEMORY[0x1E69E9840];
  memset(v91, 0, sizeof(v91));
  v89 = 0;
  v88 = 0;
  v86 = 0;
  __s = 0;
  v85 = 0;
  v84 = 0;
  memset(v90, 0, sizeof(v90));
  v12 = a1 + 168;
  **(a1 + 168) = 0;
  *(*(a1 + 160) + 127) = 0;
  if (!strstr((a1 + 584), __s2))
  {
    v13 = strlen(*(a1 + 160));
    v14 = utf8_Utf8ToDepes(*(a1 + 160), v13 + 1, 0, *(a1 + 160), v13 + 1, &v84, 0);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }
  }

  v15 = strlen(*(a1 + 160));
  v16 = Transcription_Con(v91, a1 + 888, *(a1 + 160), v15 + 1, 4, 1);
  v17 = LH_ERROR_to_VERROR(v16);
  if ((v17 & 0x80000000) != 0)
  {
    v27 = v17;
    goto LABEL_100;
  }

  v18 = PtrQueue_Con(v90, a1 + 888, 5, 5);
  v19 = LH_ERROR_to_VERROR(v18);
  if ((v19 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
    appended = v19;
    goto LABEL_94;
  }

  Word = _LexDT_FindWord(a5, v91, v90);
  v21 = LH_ERROR_to_VERROR(Word);
  v22 = v21;
  if ((v21 & 0x80000000) != 0)
  {
    v23 = v21 & 0x1FFF;
    v24 = *(*a1 + 32);
    if (v23 != 266)
    {
      log_OutPublic(v24, "FE_ONEWORD", 34004, 0);
      goto LABEL_27;
    }

    log_OutPublic(v24, "FE_ONEWORD", 34005, 0);
  }

  if (PtrQueue_IsEmpty(v90))
  {
    v25 = 1;
    appended = v22;
    if (!a2)
    {
      goto LABEL_94;
    }

LABEL_32:
    if (**v12)
    {
      v37 = 0;
    }

    else
    {
      v37 = v25;
    }

    if ((v37 & 1) == 0)
    {
      if (dynamic_strcat(v12, ";_", (a1 + 200), *(*a1 + 8)))
      {
        v38 = strlen(*(a1 + 168));
        appended = (*(*(a1 + 56) + 160))(a3, a4, a2, 11, (v38 + 1), *(a1 + 168), &v89 + 2);
      }

      else
      {
LABEL_88:
        appended = 2310021130;
      }
    }

    goto LABEL_94;
  }

  v88 = 0;
  v81 = a2;
  v82 = a3;
  if (!a2)
  {
    goto LABEL_29;
  }

  v28 = (*(*(a1 + 56) + 184))(a3, a4, a2, 11, &v88);
  v29 = v88;
  if ((v28 & 0x80000000) == 0 && v88 == 1)
  {
    v22 = (*(*(a1 + 56) + 176))(a3, a4, a2, 11, &__s, &v89);
    if ((v22 & 0x80000000) == 0)
    {
      v29 = v88;
      goto LABEL_19;
    }

LABEL_27:
    appended = v22;
    goto LABEL_94;
  }

LABEL_19:
  if (v29)
  {
    v30 = __s;
    if (__s)
    {
      v31 = a4;
      appended = 2310021130;
      v32 = strlen(__s);
      v33 = v32 + 3;
      v34 = *(a1 + 168);
      if (*(a1 + 200) < (v32 + 3))
      {
        v35 = heap_Realloc(*(*a1 + 8), v34, (v32 + 3));
        if (!v35)
        {
LABEL_93:
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
          goto LABEL_94;
        }

        v34 = v35;
        *v12 = v35;
        *(a1 + 200) = v33;
        v30 = __s;
      }

      strcpy(v34, v30);
      v79 = v33;
      a4 = v31;
      a2 = v81;
      a3 = v82;
      if (!dynamic_strcat(v12, "\x12", (a1 + 200), *(*a1 + 8)))
      {
        goto LABEL_94;
      }

      goto LABEL_30;
    }

    a3 = v82;
  }

LABEL_29:
  **v12 = 0;
  v79 = 3;
LABEL_30:
  IsEmpty = PtrQueue_IsEmpty(v90);
  v25 = 1;
  appended = v22;
  if (IsEmpty)
  {
    if (!a2)
    {
      goto LABEL_94;
    }

    goto LABEL_32;
  }

  v76 = a4;
  v39 = 0;
  v77 = v19;
  v78 = a2 == 0;
  do
  {
    v40 = PtrQueue_Item(v90);
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "DT: %s", *(v40 + 8));
    strcpy(v92, "dtpostproc");
    v80 = strlen(v92);
    if (*(a1 + 576) && !*(a1 + 840))
    {
      v83 = 0;
      v51 = *(v40 + 8);
      v52 = (2 * strlen(v51)) | 1u;
      v53 = *(a1 + 176);
      if (*(a1 + 208) < v52)
      {
        v54 = heap_Realloc(*(*a1 + 8), *(a1 + 176), v52);
        if (!v54)
        {
LABEL_90:
          appended = 2310021130;
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
          goto LABEL_91;
        }

        v53 = v54;
        *(a1 + 176) = v54;
        *(a1 + 208) = v52;
        v51 = *(v40 + 8);
      }

      appended = (*(*(a1 + 152) + 72))(*(a1 + 136), *(a1 + 144), 1, v51, v52, v53, 0);
      v55 = strlen(*(a1 + 176));
      v56 = Utf8_DepesLengthInBytesUtf8(*(a1 + 176), v55);
      v57 = *(a1 + 160);
      if (v56 >= *(a1 + 192))
      {
        v58 = heap_Realloc(*(*a1 + 8), *(a1 + 160), v56 + 1);
        if (!v58)
        {
          goto LABEL_92;
        }

        v57 = v58;
        *(a1 + 160) = v58;
        *(a1 + 192) = v56 + 1;
        a2 = v81;
      }

      if (!strstr((v12 + 416), __s2))
      {
        v59 = strlen(*(a1 + 176));
        appended = utf8_DepesToUtf8(*(a1 + 176), v59, 0, v57, v56, &v83, 0);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_94;
        }

        v57 = *(a1 + 160);
      }

      *(v57 + v83) = 0;
      goto LABEL_61;
    }

    v41 = *(v40 + 8);
    v42 = strlen(v41) + 1;
    v43 = *(a1 + 160);
    if (*(a1 + 192) < v42)
    {
      v44 = heap_Realloc(*(*a1 + 8), v43, v42);
      if (!v44)
      {
        goto LABEL_90;
      }

      v43 = v44;
      *(a1 + 160) = v44;
      *(a1 + 192) = v42;
      v41 = *(v40 + 8);
    }

    strcpy(v43, v41);
    appended = 0;
    v45 = *(a1 + 840);
    if (!v45 && v42)
    {
      v46 = 0;
      v47 = 1;
      do
      {
        v48 = *(a1 + 160);
        v49 = &v48[v46];
        if (v48[v46] == 126)
        {
          v50 = strlen(v48);
          memmove((v49 + 1), v49, v50 + v47);
          *(*(a1 + 160) + v46) = -24126;
          ++v42;
        }

        ++v46;
        --v47;
      }

      while (v46 < v42);
      appended = 0;
      a2 = v81;
LABEL_61:
      v45 = *(a1 + 840);
      a3 = v82;
    }

    if (v45)
    {
      v86 = *(a1 + 160);
      if ((v39 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v92, *(a1 + 160));
      v64 = strlen(*(a1 + 160));
      v65 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v64);
      if ((v65 & 0x80000000) != 0)
      {
        goto LABEL_89;
      }

      if (strcmp(__s2, "normal"))
      {
        __strcat_chk();
        __strcat_chk();
      }

      if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v92) & 0x80000000) != 0)
      {
        v92[v80] = 0;
        v65 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v92);
        if ((v65 & 0x80000000) != 0)
        {
LABEL_89:
          appended = v65;
LABEL_91:
          PDELETE_Transcription(a1 + 888, v40);
          goto LABEL_94;
        }
      }

      appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v86, &v85);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_91;
      }

      v86[v85] = 0;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v92, v86);
      v66 = v85;
      if (v85)
      {
        v67 = 0;
        v68 = 1;
        do
        {
          if (v86[v67] == 194 && v86[v67 + 1] == 161)
          {
            v69 = strlen(v86);
            memmove(&v86[v67 + 1], &v86[v67 + 2], v69 + v68);
            v86[v67] = 126;
            v66 = v85;
          }

          ++v67;
          --v68;
        }

        while (v67 < v66);
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v92, v86);
      LODWORD(v19) = v77;
      a2 = v81;
      a3 = v82;
      if ((v39 & 1) == 0)
      {
LABEL_84:
        appended = oneword_AppendPhon(a1, v86, "*", "*", 0, v78);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_91;
        }

        goto LABEL_85;
      }
    }

    if (a2)
    {
      v60 = v86;
      v61 = strlen(v86);
      v62 = v79 + v61 + 1;
      if (*(a1 + 200) < (v79 + v61 + 1))
      {
        v63 = heap_Realloc(*(*a1 + 8), *(a1 + 168), (v79 + v61 + 1));
        if (!v63)
        {
LABEL_92:
          appended = 2310021130;
          goto LABEL_93;
        }

        *v12 = v63;
        *(a1 + 200) = v62;
        v60 = v86;
      }

      v79 = v62;
      if (!dynamic_strcat(v12, v60, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat(v12, "\x12", (a1 + 200), *(*a1 + 8)))
      {
        goto LABEL_88;
      }
    }

LABEL_85:
    PtrQueue_Remove(v90);
    PDELETE_Transcription(a1 + 888, v40);
    v39 = 1;
  }

  while (!PtrQueue_IsEmpty(v90));
  v25 = 0;
  a4 = v76;
  if (a2)
  {
    goto LABEL_32;
  }

LABEL_94:
  v70 = Transcription_Des(v91);
  v71 = LH_ERROR_to_VERROR(v70);
  if ((appended & 0x80000000) == 0)
  {
    v72 = v71;
    if ((v71 & 0x80000000) != 0)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
      appended = v72;
    }
  }

  if ((v19 & 0x80000000) == 0)
  {
    v73 = (*(*&v90[0] + 16))(v90);
    v74 = LH_ERROR_to_VERROR(v73);
    if ((appended & 0x80000000) == 0)
    {
      v27 = v74;
      if ((v74 & 0x80000000) != 0)
      {
LABEL_100:
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0);
        return v27;
      }
    }
  }

  return appended;
}

uint64_t mde_stemafx_Main(uint64_t a1, const char *a2, char *__s)
{
  v14 = 0;
  if (*(a1 + 286) == 1 && (v6 = strlen(__s), v6 >= *(a1 + 282)) && v6 <= *(a1 + 283) && (*(a1 + 284) != 1 || (v9 = *__s, (v9 - 65) < 0x1A) || (v10 = v9 - 128, v10 <= 0x25) && ((1 << v10) & 0x200605C001) != 0))
  {
    v11 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    **(a1 + 160) = 0;
    **(a1 + 168) = 0;
    **(a1 + 176) = 0;
    v7 = hlp_MdeRecurse(a1, __s, 0, &v14, 0, 0, a2);
    if ((v7 & 0x80000000) == 0 && !v14)
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix failed");
      strcpy(*(a1 + 160), __s);
      **(a1 + 168) = 0;
      **(a1 + 176) = 0;
      if (strlen(__s))
      {
        v12 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v12 += utf8_determineUTF8CharLength(__s[v12]);
          if (strlen(__s) <= v12)
          {
            return v7;
          }
        }

        return 2310021130;
      }
    }
  }

  else
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde stem affix cfg settings do not apply on %s", __s);
    v7 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
    if ((v7 & 0x80000000) == 0)
    {
      strcpy(*(a1 + 160), __s);
      **(a1 + 168) = 0;
      **(a1 + 176) = 0;
      if (strlen(__s))
      {
        v8 = 0;
        while (dynamic_strcat((a1 + 168), " ", (a1 + 200), *(*a1 + 8)) && dynamic_strcat((a1 + 176), " ", (a1 + 208), *(*a1 + 8)))
        {
          v8 += utf8_determineUTF8CharLength(__s[v8]);
          if (strlen(__s) <= v8)
          {
            return v7;
          }
        }

        return 2310021130;
      }
    }
  }

  return v7;
}

uint64_t hlp_MdeRecurse(uint64_t a1, char *a2, unsigned int a3, _DWORD *a4, int a5, char *a6, const char *a7)
{
  v10 = a3;
  v227 = 0;
  v228 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 10801;
  if (a3 != strlen(a2))
  {
    v23 = 0;
    v25 = 32;
    v24 = 32;
    goto LABEL_16;
  }

  v12 = v10;
  v13 = (a1 + 168);
  v14 = strlen(*(a1 + 168));
  v15 = strlen(a7);
  v16 = heap_Alloc(*(*a1 + 8), (v14 + v15 + 6));
  if (!v16)
  {
    v23 = 2310021130;
LABEL_165:
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return v23;
  }

  v17 = v16;
  v216 = a4;
  strcpy(v16, "mde_");
  v18 = strcat(v16, a7);
  *&v17[strlen(v18)] = 95;
  v19 = strlen(v17);
  v20 = *v13;
  if (strlen(*v13))
  {
    v21 = 0;
    do
    {
      v22 = v20[v21];
      if (v22 != 32 && v22 != 126)
      {
        v17[v19] = v22;
        v20 = *v13;
        ++v19;
      }

      ++v21;
    }

    while (strlen(v20) > v21);
  }

  v17[v19] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v17);
  LOWORD(v226) = -1;
  v23 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v17, &v228, &v226, &v225 + 1);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_271;
  }

  a4 = v216;
  if (v226)
  {
LABEL_11:
    *a4 = 1;
    goto LABEL_12;
  }

  strcpy(v17, "mde_");
  v136 = *v13;
  if (strlen(*v13))
  {
    v137 = 0;
    v138 = 4;
    do
    {
      v139 = v136[v137];
      if (v139 != 32 && v139 != 126)
      {
        v17[v138] = v139;
        v136 = *v13;
        ++v138;
      }

      ++v137;
    }

    while (strlen(v136) > v137);
    v140 = v138;
    a4 = v216;
  }

  else
  {
    v140 = 4;
  }

  v17[v140] = 0;
  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v17);
  LOWORD(v226) = -1;
  v23 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v17, &v228, &v226, &v225 + 1);
  if ((v23 & 0x80000000) != 0)
  {
LABEL_271:
    heap_Free(*(*a1 + 8), v17);
    return v23;
  }

  if (v226)
  {
    goto LABEL_11;
  }

  if (*a4)
  {
    goto LABEL_12;
  }

  v214 = 32;
  if (!a6 || !*(a1 + 288))
  {
LABEL_13:
    v24 = 32;
LABEL_14:
    heap_Free(*(*a1 + 8), v17);
    v10 = v12;
    v25 = v214;
LABEL_16:
    if (*(a1 + 285) != a5)
    {
      v26 = strlen(a2);
      if (v10 < v26)
      {
        v215 = v25;
        v205 = v24;
        v209 = &a2[v10];
        v203 = a5 + 1;
        v219 = v26;
        v27 = v26;
        v28 = a6;
        v208 = v10;
        while (!*a4)
        {
          v29 = a7;
          v30 = a2[v27];
          a2[v27] = 0;
          if (v10)
          {
            v31 = strchr(v28, 95);
            if (v31)
            {
              v32 = v31;
              v211 = v30;
              v33 = strlen(v209);
              v34 = strlen(v32);
              memmove(&v28[v33], v32, v34 + 1);
              v35 = strlen(v209);
              memcpy(v28, v209, v35);
              v222 = v28;
              v36 = strchr(v28, 95);
              if (v36)
              {
                v10 = v208;
                if (!*a4)
                {
                  v37 = v36;
                  v38 = v36 + 1;
                  v39 = 1;
                  while (1)
                  {
                    v40 = v38;
                    v207 = v39;
                    if ((v39 & 1) == 0)
                    {
                      LOBYTE(v224) = v37[1];
                      v205 = v37[2];
                      v215 = v37[3];
                      *(v37 + 1) = 42;
                      v40 = &v224;
                    }

                    LOWORD(v226) = 0;
                    v23 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", v222, &v228, &v226, &v225 + 1);
                    v41 = *(*a1 + 8);
                    if ((v23 & 0x80000000) != 0)
                    {
                      goto LABEL_265;
                    }

                    v42 = hlp_saveLookupResults(v41, v228, v226, &v227, &v226 + 1);
                    if ((v42 & 0x80000000) != 0)
                    {
                      return v42;
                    }

                    v43 = v207;
                    if ((v207 & 1) == 0)
                    {
                      v37[2] = v205;
                      v37[3] = v215;
                    }

                    if (HIWORD(v226) && !*a4)
                    {
                      v44 = 0;
                      v200 = v29;
                      v217 = a4;
                      v198 = v38;
                      while (1)
                      {
                        v199 = v44;
                        v45 = *(v227 + 8 * v44);
                        v46 = strchr(v45, HIBYTE(v225));
                        v47 = v46;
                        if (v46)
                        {
                          *v46 = 0;
                          v47 = v46 + 1;
                          v48 = strchr(v46 + 1, HIBYTE(v225));
                          if (v48)
                          {
                            *v48 = 0;
                          }
                        }

                        v49 = strlen(*(a1 + 160));
                        if (v49)
                        {
                          if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                          {
                            goto LABEL_263;
                          }
                        }

                        v50 = v209;
                        if (v47)
                        {
                          if (*v47)
                          {
                            v50 = v47;
                          }

                          else
                          {
                            v50 = v209;
                          }
                        }

                        v51 = strlen(v50);
                        v52 = strlen(v45);
                        v53 = strlen(v40);
                        if (v52 > v53)
                        {
                          v53 = v52;
                        }

                        if (v51 > v53)
                        {
                          LOWORD(v53) = v51;
                        }

                        v54 = hlp_Realloc(a1, (v53 + v49 + 4));
                        if ((v54 & 0x80000000) != 0)
                        {
                          goto LABEL_268;
                        }

                        if (!dynamic_strcat((a1 + 160), v50, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v45, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v40, (a1 + 208), *(*a1 + 8)))
                        {
                          goto LABEL_263;
                        }

                        v55 = strlen(v50);
                        v56 = Utf8_LengthInUtf8chars(v50, v55) << 16;
                        if (v56 >= (strlen(v45) << 16) && (v57 = strlen(v50), v58 = Utf8_LengthInUtf8chars(v50, v57) << 16, v58 >= (strlen(v40) << 16)))
                        {
                          v70 = strlen(v50);
                          v71 = Utf8_LengthInUtf8chars(v50, v70);
                          if (strlen(v45) != v71)
                          {
                            v72 = 0;
                            while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                            {
                              ++v72;
                              v73 = strlen(v50);
                              v74 = Utf8_LengthInUtf8chars(v50, v73);
                              if (v74 - strlen(v45) <= v72)
                              {
                                goto LABEL_74;
                              }
                            }

                            goto LABEL_263;
                          }

LABEL_74:
                          v75 = strlen(v50);
                          v76 = Utf8_LengthInUtf8chars(v50, v75);
                          a4 = v217;
                          if (strlen(v40) != v76)
                          {
                            v77 = 0;
                            while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                            {
                              ++v77;
                              v78 = strlen(v50);
                              v79 = Utf8_LengthInUtf8chars(v50, v78);
                              v80 = v79 - strlen(v40);
                              a4 = v217;
                              if (v80 <= v77)
                              {
                                goto LABEL_87;
                              }
                            }

                            goto LABEL_263;
                          }
                        }

                        else
                        {
                          v59 = strlen(v45) << 16;
                          v60 = strlen(v50);
                          if (v59 >= (Utf8_LengthInUtf8chars(v50, v60) << 16) && (v61 = strlen(v45), v61 << 16 >= (strlen(v40) << 16)))
                          {
                            v81 = strlen(v50);
                            if (v61 != Utf8_LengthInUtf8chars(v50, v81))
                            {
                              v82 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v82;
                                v83 = strlen(v45);
                                v84 = strlen(v50);
                                if (v83 - Utf8_LengthInUtf8chars(v50, v84) <= v82)
                                {
                                  goto LABEL_83;
                                }
                              }

                              goto LABEL_263;
                            }

LABEL_83:
                            v85 = strlen(v45);
                            a4 = v217;
                            if (v85 != strlen(v40))
                            {
                              v86 = 0;
                              while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                              {
                                ++v86;
                                v87 = strlen(v45);
                                if (v87 - strlen(v40) <= v86)
                                {
                                  goto LABEL_87;
                                }
                              }

                              goto LABEL_263;
                            }
                          }

                          else
                          {
                            v62 = strlen(v40);
                            v63 = strlen(v50);
                            if (v62 != Utf8_LengthInUtf8chars(v50, v63))
                            {
                              v64 = 0;
                              while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                              {
                                ++v64;
                                v65 = strlen(v40);
                                v66 = strlen(v50);
                                if (v65 - Utf8_LengthInUtf8chars(v50, v66) <= v64)
                                {
                                  goto LABEL_65;
                                }
                              }

                              goto LABEL_263;
                            }

LABEL_65:
                            v67 = strlen(v40);
                            a4 = v217;
                            if (v67 != strlen(v45))
                            {
                              v68 = 0;
                              while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                              {
                                ++v68;
                                v69 = strlen(v40);
                                if (v69 - strlen(v45) <= v68)
                                {
                                  goto LABEL_87;
                                }
                              }

                              goto LABEL_263;
                            }
                          }
                        }

LABEL_87:
                        v30 = v211;
                        a2[v27] = v211;
                        v29 = v200;
                        v23 = hlp_MdeRecurse(a1, a2, v27, a4, v203, v222, v200);
                        if ((v23 & 0x80000000) != 0)
                        {
                          goto LABEL_264;
                        }

                        if (!*a4)
                        {
                          *(*(a1 + 160) + v49) = 0;
                          *(*(a1 + 168) + v49) = 0;
                          *(*(a1 + 176) + v49) = 0;
                        }

                        v38 = v198;
                        v44 = v199 + 1;
                        if (v199 + 1 >= HIWORD(v226))
                        {
                          v43 = v207;
                          goto LABEL_34;
                        }

                        v43 = v207;
                        if (*a4)
                        {
                          goto LABEL_34;
                        }
                      }
                    }

                    v23 = 0;
LABEL_34:
                    if (v43)
                    {
                      v39 = 0;
                      if (!*a4)
                      {
                        continue;
                      }
                    }

                    v10 = v208;
                    v28 = v222;
                    break;
                  }
                }
              }

              else
              {
                v10 = v208;
              }
            }
          }

          else
          {
            LOWORD(v226) = 0;
            v23 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdestem", a2, &v228, &v226, &v225 + 1);
            v41 = *(*a1 + 8);
            if ((v23 & 0x80000000) != 0)
            {
              goto LABEL_265;
            }

            v42 = hlp_saveLookupResults(v41, v228, v226, &v227, &v226 + 1);
            if ((v42 & 0x80000000) != 0)
            {
              return v42;
            }

            if (HIWORD(v226) && !*a4)
            {
              v218 = a4;
              v88 = 0;
              v201 = v29;
              v212 = v30;
              while (1)
              {
                v89 = *(v227 + 8 * v88);
                v90 = strchr(v89, HIBYTE(v225));
                v91 = v90;
                if (v90)
                {
                  *v90 = 0;
                  v91 = v90 + 1;
                  v92 = strchr(v90 + 1, HIBYTE(v225));
                  v93 = v92;
                  if (v92)
                  {
                    *v92 = 0;
                    v93 = v92 + 1;
                    v94 = strchr(v92 + 1, HIBYTE(v225));
                    if (v94)
                    {
                      *v94 = 0;
                    }
                  }
                }

                else
                {
                  v93 = 0;
                }

                v95 = strlen(*(a1 + 160));
                if (v95)
                {
                  if (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                  {
                    goto LABEL_263;
                  }
                }

                if (v91)
                {
                  v96 = v91;
                }

                else
                {
                  v96 = "";
                }

                if (!v93 || !*v93)
                {
                  v93 = a2;
                }

                v97 = strlen(v93);
                v98 = strlen(v89);
                v99 = strlen(v96);
                if (v98 > v99)
                {
                  v99 = v98;
                }

                if (v97 > v99)
                {
                  LOWORD(v99) = v97;
                }

                v54 = hlp_Realloc(a1, (v99 + v95 + 4));
                if ((v54 & 0x80000000) != 0)
                {
LABEL_268:
                  v23 = v54;
                  goto LABEL_264;
                }

                if (!dynamic_strcat((a1 + 160), v93, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v89, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v96, (a1 + 208), *(*a1 + 8)))
                {
                  goto LABEL_263;
                }

                v100 = strlen(v93);
                v101 = Utf8_LengthInUtf8chars(v93, v100) << 16;
                if (v101 >= (strlen(v89) << 16) && (v102 = strlen(v93), v103 = Utf8_LengthInUtf8chars(v93, v102) << 16, v103 >= (strlen(v96) << 16)))
                {
                  v115 = strlen(v93);
                  v116 = Utf8_LengthInUtf8chars(v93, v115);
                  if (strlen(v89) != v116)
                  {
                    v117 = 0;
                    while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                    {
                      ++v117;
                      v118 = strlen(v93);
                      v119 = Utf8_LengthInUtf8chars(v93, v118);
                      if (v119 - strlen(v89) <= v117)
                      {
                        goto LABEL_143;
                      }
                    }

                    goto LABEL_263;
                  }

LABEL_143:
                  v120 = strlen(v93);
                  v121 = Utf8_LengthInUtf8chars(v93, v120);
                  if (strlen(v96) != v121)
                  {
                    v122 = 0;
                    while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                    {
                      ++v122;
                      v123 = strlen(v93);
                      v124 = Utf8_LengthInUtf8chars(v93, v123);
                      if (v124 - strlen(v96) <= v122)
                      {
                        goto LABEL_156;
                      }
                    }

                    goto LABEL_263;
                  }
                }

                else
                {
                  v104 = strlen(v89) << 16;
                  v105 = strlen(v93);
                  if (v104 >= (Utf8_LengthInUtf8chars(v93, v105) << 16) && (v106 = strlen(v89), v106 << 16 >= (strlen(v96) << 16)))
                  {
                    v125 = strlen(v93);
                    if (v106 != Utf8_LengthInUtf8chars(v93, v125))
                    {
                      v126 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v126;
                        v127 = strlen(v89);
                        v128 = strlen(v93);
                        if (v127 - Utf8_LengthInUtf8chars(v93, v128) <= v126)
                        {
                          goto LABEL_152;
                        }
                      }

                      goto LABEL_263;
                    }

LABEL_152:
                    v129 = strlen(v89);
                    if (v129 != strlen(v96))
                    {
                      v130 = 0;
                      while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
                      {
                        ++v130;
                        v131 = strlen(v89);
                        if (v131 - strlen(v96) <= v130)
                        {
                          goto LABEL_156;
                        }
                      }

                      goto LABEL_263;
                    }
                  }

                  else
                  {
                    v107 = strlen(v96);
                    v108 = strlen(v93);
                    if (v107 != Utf8_LengthInUtf8chars(v93, v108))
                    {
                      v109 = 0;
                      while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
                      {
                        ++v109;
                        v110 = strlen(v96);
                        v111 = strlen(v93);
                        if (v110 - Utf8_LengthInUtf8chars(v93, v111) <= v109)
                        {
                          goto LABEL_134;
                        }
                      }

                      goto LABEL_263;
                    }

LABEL_134:
                    v112 = strlen(v96);
                    if (v112 != strlen(v89))
                    {
                      v113 = 0;
                      while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
                      {
                        ++v113;
                        v114 = strlen(v96);
                        if (v114 - strlen(v89) <= v113)
                        {
                          goto LABEL_156;
                        }
                      }

                      goto LABEL_263;
                    }
                  }
                }

LABEL_156:
                v30 = v212;
                a2[v27] = v212;
                v132 = strlen(a2);
                v133 = strlen(v96);
                v134 = heap_Alloc(*(*a1 + 8), (v132 + v133 + 1));
                if (!v134)
                {
                  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
                  hlp_freeLookupResults(*(*a1 + 8), &v227, &v226 + 1);
                  return 2310021130;
                }

                v135 = v134;
                *v134 = 95;
                strcat(v134, v96);
                v29 = v201;
                v23 = hlp_MdeRecurse(a1, a2, v27, v218, v203, v135, v201);
                heap_Free(*(*a1 + 8), v135);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_264;
                }

                if (!*v218)
                {
                  *(*(a1 + 160) + v95) = 0;
                  *(*(a1 + 168) + v95) = 0;
                  *(*(a1 + 176) + v95) = 0;
                }

                ++v88;
                v10 = v208;
                if (v88 >= HIWORD(v226) || *v218)
                {
                  v28 = 0;
                  a4 = v218;
                  goto LABEL_100;
                }
              }
            }

            v23 = 0;
          }

LABEL_100:
          a2[v27--] = v30;
          --v219;
          a7 = v29;
          if (v10 >= v219)
          {
            goto LABEL_264;
          }
        }
      }
    }

    goto LABEL_264;
  }

  v141 = strchr(a6, 95);
  if (!v141 || (v142 = v141, v143 = strlen(v141), memmove(a6 + 1, v142, v143 + 1), *a6 = 64, (v210 = strchr(a6, 95)) == 0) || *a4)
  {
LABEL_12:
    v214 = 32;
    goto LABEL_13;
  }

  v24 = 32;
  v144 = 1;
  v214 = 32;
  while (1)
  {
    v220 = v210 + 1;
    v213 = v144;
    if ((v144 & 1) == 0)
    {
      LOBYTE(v224) = v210[1];
      v24 = v210[2];
      v214 = v210[3];
      *(v210 + 1) = 42;
      v220 = &v224;
    }

    LOWORD(v226) = 0;
    v145 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mdeafx", a6, &v228, &v226, &v225 + 1);
    if ((v145 & 0x80000000) != 0)
    {
      goto LABEL_270;
    }

    if ((v213 & 1) == 0)
    {
      v210[2] = v24;
      v210[3] = v214;
    }

    v145 = hlp_saveLookupResults(*(*a1 + 8), v228, v226, &v227, &v226 + 1);
    if ((v145 & 0x80000000) != 0)
    {
LABEL_270:
      v23 = v145;
      goto LABEL_271;
    }

    v146 = v213;
    if (HIWORD(v226))
    {
      if (!*a4)
      {
        break;
      }
    }

    v23 = 0;
LABEL_192:
    if (v146)
    {
      v144 = 0;
      if (!*a4)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  v147 = 0;
  v202 = a7;
  while (1)
  {
    v204 = v147;
    v148 = *(v227 + 8 * v147);
    v149 = strchr(v148, HIBYTE(v225));
    v150 = v149;
    if (v149)
    {
      *v149 = 0;
      v150 = v149 + 1;
      v151 = strchr(v149 + 1, HIBYTE(v225));
      if (v151)
      {
        *v151 = 0;
      }
    }

    v206 = strlen(*(a1 + 160));
    if (v206 && (!dynamic_strcat((a1 + 160), "+", (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8))))
    {
      goto LABEL_263;
    }

    if (v150)
    {
      if (*v150)
      {
        v152 = v150;
      }

      else
      {
        v152 = "@";
      }
    }

    else
    {
      v152 = "@";
    }

    v153 = strlen(v152);
    v154 = strlen(v148);
    v155 = strlen(v220);
    if (v154 > v155)
    {
      v155 = v154;
    }

    if (v153 > v155)
    {
      LOWORD(v155) = v153;
    }

    v156 = hlp_Realloc(a1, (v155 + v206 + 4));
    if ((v156 & 0x80000000) != 0)
    {
      v23 = v156;
      v197 = *(*a1 + 8);
      goto LABEL_275;
    }

    if (!dynamic_strcat((a1 + 160), v152, (a1 + 192), *(*a1 + 8)) || !dynamic_strcat((a1 + 168), v148, (a1 + 200), *(*a1 + 8)) || !dynamic_strcat((a1 + 176), v220, (a1 + 208), *(*a1 + 8)))
    {
      goto LABEL_263;
    }

    v157 = strlen(v152);
    v158 = Utf8_LengthInUtf8chars(v152, v157) << 16;
    if (v158 >= (strlen(v148) << 16) && (v159 = strlen(v152), v160 = Utf8_LengthInUtf8chars(v152, v159) << 16, v160 >= (strlen(v220) << 16)))
    {
      v172 = strlen(v152);
      v173 = Utf8_LengthInUtf8chars(v152, v172);
      if (strlen(v148) != v173)
      {
        v174 = 0;
        while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
        {
          ++v174;
          v175 = strlen(v152);
          v176 = Utf8_LengthInUtf8chars(v152, v175);
          if (v176 - strlen(v148) <= v174)
          {
            goto LABEL_233;
          }
        }

        goto LABEL_263;
      }

LABEL_233:
      v177 = strlen(v152);
      v178 = Utf8_LengthInUtf8chars(v152, v177);
      if (strlen(v220) != v178)
      {
        v179 = 0;
        while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
        {
          ++v179;
          v180 = strlen(v152);
          v181 = Utf8_LengthInUtf8chars(v152, v180);
          if (v181 - strlen(v220) <= v179)
          {
            goto LABEL_246;
          }
        }

        goto LABEL_263;
      }
    }

    else
    {
      v161 = strlen(v148) << 16;
      v162 = strlen(v152);
      if (v161 >= (Utf8_LengthInUtf8chars(v152, v162) << 16) && (v163 = strlen(v148), v163 << 16 >= (strlen(v220) << 16)))
      {
        v182 = strlen(v152);
        if (v163 != Utf8_LengthInUtf8chars(v152, v182))
        {
          v183 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v183;
            v184 = strlen(v148);
            v185 = strlen(v152);
            if (v184 - Utf8_LengthInUtf8chars(v152, v185) <= v183)
            {
              goto LABEL_242;
            }
          }

          goto LABEL_263;
        }

LABEL_242:
        v186 = strlen(v148);
        if (v186 != strlen(v220))
        {
          v187 = 0;
          while (dynamic_strcat((a1 + 176), "~", (a1 + 208), *(*a1 + 8)))
          {
            ++v187;
            v188 = strlen(v148);
            if (v188 - strlen(v220) <= v187)
            {
              goto LABEL_246;
            }
          }

          goto LABEL_263;
        }
      }

      else
      {
        v164 = strlen(v220);
        v165 = strlen(v152);
        if (v164 != Utf8_LengthInUtf8chars(v152, v165))
        {
          v166 = 0;
          while (dynamic_strcat((a1 + 160), "~", (a1 + 192), *(*a1 + 8)))
          {
            ++v166;
            v167 = strlen(v220);
            v168 = strlen(v152);
            if (v167 - Utf8_LengthInUtf8chars(v152, v168) <= v166)
            {
              goto LABEL_224;
            }
          }

          goto LABEL_263;
        }

LABEL_224:
        v169 = strlen(v220);
        if (v169 != strlen(v148))
        {
          v170 = 0;
          while (dynamic_strcat((a1 + 168), "~", (a1 + 200), *(*a1 + 8)))
          {
            ++v170;
            v171 = strlen(v220);
            if (v171 - strlen(v148) <= v170)
            {
              goto LABEL_246;
            }
          }

LABEL_263:
          v23 = 2310021130;
          goto LABEL_264;
        }
      }
    }

LABEL_246:
    v189 = strlen(*(a1 + 168));
    v190 = heap_Realloc(*(*a1 + 8), v17, (v189 + 4));
    if (!v190)
    {
      v23 = 2310021130;
      heap_Free(*(*a1 + 8), v17);
      hlp_freeLookupResults(*(*a1 + 8), &v227, &v226 + 1);
      goto LABEL_165;
    }

    v17 = v190;
    strcpy(v190, "mde_");
    v191 = *v13;
    if (strlen(*v13))
    {
      v192 = 0;
      v193 = 4;
      do
      {
        v194 = v191[v192];
        if (v194 != 32 && v194 != 126)
        {
          v17[v193] = v194;
          v191 = *v13;
          ++v193;
        }

        ++v192;
      }

      while (strlen(v191) > v192);
      v195 = v193;
    }

    else
    {
      v195 = 4;
    }

    v17[v195] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v17);
    LOWORD(v226) = -1;
    v23 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v17, &v228, &v226, &v225 + 1);
    a7 = v202;
    a4 = v216;
    if ((v23 & 0x80000000) != 0)
    {
      break;
    }

    v146 = v213;
    if (v226)
    {
      *v216 = 1;
    }

    else if (!*v216)
    {
      *(*(a1 + 160) + v206) = 0;
      (*v13)[v206] = 0;
      *(*(a1 + 176) + v206) = 0;
    }

    v147 = v204 + 1;
    if (v204 + 1 >= HIWORD(v226) || *v216)
    {
      goto LABEL_192;
    }
  }

  v197 = *(*a1 + 8);
LABEL_275:
  heap_Free(v197, v17);
LABEL_264:
  v41 = *(*a1 + 8);
LABEL_265:
  hlp_freeLookupResults(v41, &v227, &v226 + 1);
  return v23;
}

uint64_t hlp_saveLookupResults(void *a1, uint64_t a2, unsigned int a3, uint64_t *a4, unsigned __int16 *a5)
{
  hlp_freeLookupResults(a1, a4, a5);
  result = 0;
  if (a2 && a3)
  {
    v11 = heap_Alloc(a1, 8 * a3);
    *a4 = v11;
    if (v11)
    {
      v12 = 0;
      *a5 = 0;
      while (1)
      {
        v13 = strlen(*(a2 + 8 * v12));
        v14 = heap_Alloc(a1, (v13 + 1));
        v15 = *a5;
        *(*a4 + 8 * v15) = v14;
        v16 = *(*a4 + 8 * v15);
        if (!v16)
        {
          break;
        }

        strcpy(v16, *(a2 + 8 * v15));
        v12 = *a5 + 1;
        *a5 = v12;
        if (a3 <= v12)
        {
          return 0;
        }
      }
    }

    hlp_freeLookupResults(a1, a4, a5);
    return 2310021130;
  }

  return result;
}

uint64_t hlp_Realloc(uint64_t *a1, unsigned int a2)
{
  v3 = a2;
  if (a1[24] < a2)
  {
    v4 = heap_Realloc(*(*a1 + 8), a1[20], a2);
    if (!v4)
    {
      goto LABEL_10;
    }

    a1[20] = v4;
    a1[24] = v3;
  }

  if (a1[25] >= v3)
  {
    goto LABEL_7;
  }

  v5 = heap_Realloc(*(*a1 + 8), a1[21], v3);
  if (!v5)
  {
LABEL_10:
    v7 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return v7;
  }

  a1[21] = v5;
  a1[25] = v3;
LABEL_7:
  if (a1[26] >= v3)
  {
    return 0;
  }

  v6 = heap_Realloc(*(*a1 + 8), a1[22], v3);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a1[22] = v6;
  a1[26] = v3;
  return v7;
}

void *hlp_freeLookupResults(void *result, uint64_t *a2, _WORD *a3)
{
  v5 = *a2;
  if (v5)
  {
    v6 = result;
    if (*a3)
    {
      v7 = 0;
      do
      {
        heap_Free(v6, *(*a2 + 8 * v7++));
      }

      while (v7 < *a3);
      v5 = *a2;
    }

    result = heap_Free(v6, v5);
  }

  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t hlp_WriteWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v11;
  v41 = *MEMORY[0x1E69E9840];
  v37 = v14;
  v36 = v21;
  v35 = v22;
  v34 = v23;
  v33 = 0;
  __strcpy_chk();
  __strcpy_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  if (!v13 || ((v24 = strlen(v40), v25 = strlen(v39), v26 = strlen(__s), v25 <= v24) ? (v27 = v24) : (v27 = v25), v26 <= v27 ? (v28 = v27) : (v28 = v26), (result = mosynt_PadWithChar(v40, 5000, 126, v28), (result & 0x80000000) == 0) && (result = mosynt_PadWithChar(v39, 5000, 32, v28), (result & 0x80000000) == 0) && (result = mosynt_PadWithChar(__s, 5000, 32, v28), (result & 0x80000000) == 0)))
  {
    result = (*(*(v20 + 56) + 88))(v19, v17, v15, &v37);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(v20 + 56) + 160))(v19, v17, v37, 0, 1, &v36, &v33);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(v20 + 56) + 160))(v19, v17, v37, 1, 1, &v35, &v33);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(v20 + 56) + 160))(v19, v17, v37, 2, 1, &v34, &v33);
          if ((result & 0x80000000) == 0)
          {
            v30 = strlen(v40);
            result = (*(*(v20 + 56) + 160))(v19, v17, v37, 3, (v30 + 1), v40, &v33);
            if ((result & 0x80000000) == 0)
            {
              v31 = strlen(v39);
              result = (*(*(v20 + 56) + 160))(v19, v17, v37, 5, (v31 + 1), v39, &v33);
              if ((result & 0x80000000) == 0)
              {
                v32 = strlen(__s);
                result = (*(*(v20 + 56) + 160))(v19, v17, v37, 6, (v32 + 1), __s, &v33);
                if ((result & 0x80000000) == 0)
                {
                  result = (*(*(v20 + 56) + 160))(v19, v17, v37, 7, 1, va, &v33);
                  if ((result & 0x80000000) == 0)
                  {
                    return (*(*(v20 + 56) + 160))(v19, v17, v37, 9, 1, "", &v33);
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

uint64_t mde_MosyntMorphAna(uint64_t a1, _BYTE *a2, uint64_t a3, const char *a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 *a11, int a12, _DWORD *a13)
{
  v24[281] = *MEMORY[0x1E69E9840];
  v23 = 0;
  bzero(v24, 0x8C8uLL);
  *a13 = 0;
  **(a1 + 240) = 0;
  **(a1 + 248) = 0;
  **(a1 + 256) = 0;
  result = mosynt_StartWordAnalysis(*(a1 + 48), *(a1 + 2200), *(a1 + 2208), *(a1 + 2216), *(a1 + 2224), *(a1 + 2232), *(a1 + 2240), v24);
  if ((result & 0x80000000) == 0)
  {
    result = mosynt_WordAnalysis(*(a1 + 48));
    if ((result & 0x80000000) == 0)
    {
      v19 = HIDWORD(v23);
      *a13 = HIDWORD(v23);
      if (v19)
      {
        *a11 = strlen(a4) + a6;
        HIDWORD(v23) = 1;
        v20 = 1;
        while (1)
        {
          result = mosynt_GetReading(*(a1 + 48), v24, 0, &v23 + 1, a2 + 15000, 5000, a2 + 5000, 5000, &v23);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosynt_SubstAllSubstrOcc(a2 + 5000, "~", "¡", a2 + 10000, 5000);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          __strcpy_chk();
          if (!HIDWORD(v23))
          {
            return mosynt_FinishWordAnalysis(*(a1 + 48), v24);
          }

          if (a12)
          {
            break;
          }

          if (v20)
          {
            if (v23)
            {
              v20 = 1;
            }

            else
            {
              hlp_WriteWordRec(a1, a9, a10, a7, 1, 8, a6, *a11, (a2 + 5000), "", "", "");
              v20 = 0;
            }

LABEL_12:
            if (!HIDWORD(v23))
            {
              return mosynt_FinishWordAnalysis(*(a1 + 48), v24);
            }
          }
        }

        v21 = a10;
        v22 = a9;
        if (v20)
        {
          hlp_WriteWordRec(a1, a9, a10, a7, 1, 4, a6, *a11, (a2 + 5000), "Y", "Y", "");
          v22 = a9;
          v21 = a10;
        }

        hlp_WriteWordRec(a1, v22, v21, a7, 0, 8, a6, *a11, (a2 + 5000), "N", "*", a2 + 15000);
        v20 = 0;
        goto LABEL_12;
      }

      return mosynt_FinishWordAnalysis(*(a1 + 48), v24);
    }
  }

  return result;
}

uint64_t mde_Main(uint64_t a1, const char *a2, char *__s, const char *a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9)
{
  v28 = a5;
  v27 = a6;
  v25 = 8;
  v26 = 0;
  v24 = 0;
  v23 = 1;
  if (*(a1 + 286) == 1 || (v17 = strlen(__s), v17 < *(a1 + 282)) || v17 > *(a1 + 283) || *(a1 + 284) == 1 && (v19 = *__s, (v19 - 65) >= 0x1A) && (v19 != 195 || __s[1] - 132 > 0x18 || ((1 << (__s[1] + 124)) & 0x104202F) == 0))
  {
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Mde cfg settings do not apply on %s", a2);
    return 0;
  }

  else
  {
    **(a1 + 240) = 0;
    **(a1 + 248) = 0;
    **(a1 + 256) = 0;
    result = hlp_MdeRecurse_0(a1, a2, a4, 0, &v26, 0);
    if ((result & 0x80000000) == 0)
    {
      if (v26)
      {
        *a9 = strlen(__s) + a5;
        result = (*(*(a1 + 56) + 88))(a7, a8, a6, &v27);
        if ((result & 0x80000000) == 0)
        {
          result = (*(*(a1 + 56) + 160))(a7, a8, v27, 0, 1, &v25, &v24);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a7, a8, v27, 1, 1, &v28, &v24);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(a1 + 56) + 160))(a7, a8, v27, 2, 1, a9, &v24);
              if ((result & 0x80000000) == 0)
              {
                v20 = strlen(*(a1 + 240));
                result = (*(*(a1 + 56) + 160))(a7, a8, v27, 3, (v20 + 1), *(a1 + 240), &v24);
                if ((result & 0x80000000) == 0)
                {
                  v21 = strlen(*(a1 + 248));
                  result = (*(*(a1 + 56) + 160))(a7, a8, v27, 5, (v21 + 1), *(a1 + 248), &v24);
                  if ((result & 0x80000000) == 0)
                  {
                    v22 = strlen(*(a1 + 256));
                    result = (*(*(a1 + 56) + 160))(a7, a8, v27, 6, (v22 + 1), *(a1 + 256), &v24);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a7, a8, v27, 7, 1, &v23, &v24);
                      if ((result & 0x80000000) == 0)
                      {
                        return (*(*(a1 + 56) + 160))(a7, a8, v27, 9, 1, "", &v24);
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

uint64_t hlp_MdeRecurse_0(uint64_t a1, const char *a2, const char *a3, unsigned int a4, _DWORD *a5, int a6)
{
  v8 = a4;
  v10 = a2;
  v98 = *MEMORY[0x1E69E9840];
  memset(__c, 0, sizeof(__c));
  v12 = 0;
  if (a4 == strlen(a2))
  {
    v89 = v8;
    strcpy(v97, "mde_");
    __strcat_chk();
    __strcat_chk();
    v13 = strlen(v97);
    v14 = *(a1 + 248);
    if (*v14 && v13 <= 0xFF)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v14[v15];
        if (v17 != 32)
        {
          v97[v13++] = v17;
        }

        if (strlen(v14) <= ++v16)
        {
          break;
        }

        v15 = v16;
      }

      while (v13 < 0x100);
    }

    v97[v13] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v97);
    *&__c[1] = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v97, &__c[3], &__c[1], __c);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (*&__c[1])
    {
      goto LABEL_11;
    }

    strcpy(v97, "mde_");
    v71 = *(a1 + 248);
    if (*v71)
    {
      v72 = 0;
      v73 = 0;
      v74 = 4;
      do
      {
        v75 = v71[v72];
        if (v75 != 32)
        {
          v97[v74++] = v75;
        }

        if (strlen(v71) <= ++v73)
        {
          break;
        }

        v72 = v73;
      }

      while (v74 < 0x100);
    }

    else
    {
      v74 = 4;
    }

    v97[v74] = 0;
    log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Checking %s", v97);
    *&__c[1] = -1;
    v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", v97, &__c[3], &__c[1], __c);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (*&__c[1])
    {
LABEL_11:
      *a5 = 1;
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "MDE succeeds");
    }

    else
    {
      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "MDE fails");
    }

    v8 = v89;
    v10 = a2;
  }

  if (*(a1 + 285) != a6)
  {
    v18 = strlen(v10);
    v19 = v18;
    if (v8 < v18 && !*a5)
    {
      v85 = a5;
      v86 = 0;
      v83 = a6 + 1;
      __s2 = &v10[v8];
      v20 = v18;
      v90 = v8;
      while (1)
      {
        v21 = v10[v20];
        v10[v20] = 0;
        *&__c[1] = 0;
        v12 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "mde", __s2, &__c[3], &__c[1], __c);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v10[v20] = v21;
        if (!*&__c[1])
        {
          break;
        }

        if (!*a5)
        {
          v78 = v21;
          v22 = 0;
          __n = (v19 - v90);
          v80 = v20 - v90 + 2;
          v81 = (v19 - v90 - 1);
          v87 = v20;
          v77 = a3;
          do
          {
            v23 = *(*&__c[3] + 8 * v22);
            v24 = strchr(v23, __c[0]);
            if (v24)
            {
              *v24 = 0;
              v25 = v24 + 1;
              v26 = strchr(v24 + 1, __c[0]);
              v27 = v26;
              if (v26)
              {
                *v26 = 0;
                v27 = v26 + 1;
                v28 = strchr(v26 + 1, __c[0]);
                v29 = v28;
                if (v28)
                {
                  *v28 = 0;
                  v29 = v28 + 1;
                  v30 = strchr(v28 + 1, __c[0]);
                  if (v30)
                  {
                    *v30 = 0;
                  }
                }
              }

              else
              {
                v29 = 0;
              }
            }

            else
            {
              v27 = 0;
              v29 = 0;
              v25 = v86;
            }

            v31 = strlen(*(a1 + 240));
            v32 = v31;
            if (v23 && *v23)
            {
              if (v29)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v23 = "*";
              if (v29)
              {
LABEL_33:
                if (*v29)
                {
                  goto LABEL_35;
                }
              }
            }

            v29 = "*";
LABEL_35:
            v82 = v31;
            if (v31)
            {
              *(*(a1 + 240) + strlen(*(a1 + 240))) = 43;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
            }

            v86 = v25;
            if (v27 && *v27)
            {
              v33 = strlen(v27);
              v34 = hlp_Realloc_0(a1, (v33 + v32 + 4));
              if ((v34 & 0x80000000) != 0)
              {
                return v34;
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              strcat(*(a1 + 240), v27);
              strcat(*(a1 + 248), v23);
              strcat(*(a1 + 256), v29);
              v35 = strlen(v27);
              if (Utf8_LengthInUtf8chars(v27, v35) != 1)
              {
                v36 = 0;
                do
                {
                  *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
                  *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
                  ++v36;
                  v37 = strlen(v27);
                }

                while ((Utf8_LengthInUtf8chars(v27, v37) - 1) > v36);
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              a5 = v85;
            }

            else if (v25 && !strcmp(v25, "yes"))
            {
              v95 = 0;
              v94 = 0;
              strcpy(v97, "one_word");
              a2[v87] = 0;
              v93[0] = *v23;
              v93[1] = 0;
              v92[0] = *v29;
              v92[1] = 0;
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v97, __s2);
              v39 = strlen(__s2);
              v34 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, __s2, v39);
              if ((v34 & 0x80000000) != 0)
              {
                return v34;
              }

              a2[v87] = v78;
              v34 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v97);
              if ((v34 & 0x80000000) != 0)
              {
                return v34;
              }

              v34 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v95, &v94);
              if ((v34 & 0x80000000) != 0)
              {
                return v34;
              }

              v95[v94] = 0;
              v40 = v95;
              v41 = strlen(v95);
              if (v41)
              {
                v42 = 0;
                a5 = v85;
                a3 = v77;
                do
                {
                  v43 = &v40[v42];
                  v44 = *v43;
                  if (v44 == 194)
                  {
                    if (v43[1] == 161)
                    {
                      memmove(v43 + 1, v43 + 2, v41 - v42 + 1);
                      v95[v42] = 126;
                    }
                  }

                  else if (v44 == 126)
                  {
                    memmove(&v40[v42], v43 + 1, (v41 - v42 + 1));
                    --v42;
                  }

                  ++v42;
                  v40 = v95;
                  v41 = strlen(v95);
                }

                while (v41 > v42);
              }

              else
              {
                a5 = v85;
                a3 = v77;
              }

              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v97, v40);
              v45 = strlen(v95);
              v34 = hlp_Realloc_0(a1, (v45 + v32 + 4));
              if ((v34 & 0x80000000) != 0)
              {
                return v34;
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              strcat(*(a1 + 240), v95);
              strcat(*(a1 + 248), v93);
              strcat(*(a1 + 256), v92);
              v46 = strlen(v95);
              if (Utf8_LengthInUtf8chars(v95, v46) != 1)
              {
                v47 = 0;
                do
                {
                  *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
                  *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
                  ++v47;
                  v48 = strlen(v95);
                }

                while ((Utf8_LengthInUtf8chars(v95, v48) - 1) > v47);
              }

              *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
            }

            else
            {
              v34 = hlp_Realloc_0(a1, (v80 + v32));
              if ((v34 & 0x80000000) != 0)
              {
                return v34;
              }

              strncat(*(a1 + 240), __s2, __n);
              strcat(*(a1 + 248), v23);
              strcat(*(a1 + 256), v29);
              a5 = v85;
              if (v81)
              {
                v38 = v81;
                do
                {
                  *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
                  *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
                  --v38;
                }

                while (v38);
              }
            }

            v20 = v87;
            v10 = a2;
            v12 = hlp_MdeRecurse_0(a1, a2, a3, v87, a5, v83);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            if (!*a5)
            {
              v49 = Utf8_LengthInUtf8chars(*(a1 + 240), v82);
              *(*(a1 + 240) + v32) = 0;
              *(*(a1 + 248) + v49) = 0;
              *(*(a1 + 256) + v49) = 0;
            }

            if (++v22 >= *&__c[1])
            {
              goto LABEL_75;
            }
          }

          while (!*a5);
        }

LABEL_76:
        v19 = v20 - 1;
        if (v90 < (v20 - 1))
        {
          --v20;
          if (!*a5)
          {
            continue;
          }
        }

        return v12;
      }

LABEL_75:
      if (*a5)
      {
        goto LABEL_76;
      }

      v50 = v10[v20];
      v10[v20] = 0;
      *&__c[1] = 0;
      v12 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), "g2p", __s2, &__c[3], &__c[1], __c, *(a1 + 556));
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v10[v20] = v50;
      if (!*&__c[1])
      {
        goto LABEL_76;
      }

      v51 = 0;
      v88 = v20;
      while (1)
      {
        if (*a5)
        {
          goto LABEL_76;
        }

        v52 = *(*&__c[3] + 8 * v51);
        v53 = strchr(v52, __c[0]);
        if (!v53)
        {
          break;
        }

        *v53 = 0;
        v54 = strchr(v53 + 1, __c[0]);
        v55 = v54;
        if (!v54)
        {
          goto LABEL_92;
        }

        *v54 = 0;
        v55 = v54 + 1;
        v56 = strchr(v54 + 1, __c[0]);
        v57 = v56;
        if (!v56)
        {
          goto LABEL_93;
        }

        *v56 = 0;
        v57 = v56 + 1;
        v58 = strchr(v56 + 1, __c[0]);
        v59 = v58;
        if (!v58)
        {
          goto LABEL_94;
        }

        *v58 = 0;
        v59 = v58 + 1;
        v60 = strchr(v58 + 1, __c[0]);
        if (!v60)
        {
          goto LABEL_94;
        }

        *v60 = 0;
        v61 = strchr(v60 + 1, __c[0]);
        v62 = v61;
        if (v61)
        {
          *v61 = 0;
          v62 = v61 + 1;
          v63 = strchr(v61 + 1, __c[0]);
          if (v63)
          {
            *v63 = 0;
          }
        }

LABEL_95:
        v64 = *(*a1 + 32);
        if (!v52)
        {
          log_OutPublic(v64, "FE_ONEWORD", 34001, 0);
          return 2310021127;
        }

        log_OutText(v64, "FE_ONEWORD", 5, 0, "G2P Validating %s", v52);
        if (v55 && *v55 && !strstr(v55, a3))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK");
LABEL_121:
          a5 = v85;
          v10 = a2;
          v20 = v88;
          goto LABEL_122;
        }

        if (v62 && *v62 == 48 && !v62[1])
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P MDE usage validation not OK");
          goto LABEL_121;
        }

        v65 = strlen(*(a1 + 240));
        if (*v52)
        {
          if (!v57 || !*v57)
          {
            v57 = "*";
          }

          if (!v59 || !*v59)
          {
            v59 = "*";
          }

          v66 = strlen(v52);
          v34 = hlp_Realloc_0(a1, (v66 + v65 + 4));
          if ((v34 & 0x80000000) != 0)
          {
            return v34;
          }

          if (v65)
          {
            *(*(a1 + 240) + strlen(*(a1 + 240))) = 43;
            *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
            *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
          }

          *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
          *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
          *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
          strcat(*(a1 + 240), v52);
          strcat(*(a1 + 248), v57);
          strcat(*(a1 + 256), v59);
          v67 = strlen(v52);
          if (Utf8_LengthInUtf8chars(v52, v67) != 1)
          {
            v68 = 0;
            do
            {
              *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
              *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
              ++v68;
              v69 = strlen(v52);
            }

            while ((Utf8_LengthInUtf8chars(v52, v69) - 1) > v68);
          }

          *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
          *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
          *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
        }

        v20 = v88;
        v10 = a2;
        a5 = v85;
        v12 = hlp_MdeRecurse_0(a1, a2, a3, v88, v85, v83);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (!*v85)
        {
          v70 = Utf8_LengthInUtf8chars(*(a1 + 240), v65);
          *(*(a1 + 240) + v65) = 0;
          *(*(a1 + 248) + v70) = 0;
          *(*(a1 + 256) + v70) = 0;
        }

LABEL_122:
        if (++v51 >= *&__c[1])
        {
          goto LABEL_76;
        }
      }

      v55 = 0;
LABEL_92:
      v57 = 0;
LABEL_93:
      v59 = 0;
LABEL_94:
      v62 = 0;
      goto LABEL_95;
    }
  }

  return v12;
}

uint64_t hlp_Realloc_0(uint64_t *a1, unsigned int a2)
{
  if (a2 < 0x81)
  {
    return 0;
  }

  v3 = a2;
  v4 = heap_Realloc(*(*a1 + 8), a1[30], a2);
  if (v4 && (a1[30] = v4, (v5 = heap_Realloc(*(*a1 + 8), a1[31], v3)) != 0) && (a1[31] = v5, (v6 = heap_Realloc(*(*a1 + 8), a1[32], v3)) != 0))
  {
    v7 = 0;
    a1[32] = v6;
  }

  else
  {
    v7 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
  }

  return v7;
}

char *oneword_FindPhonWordSep(char *a1, char *a2)
{
  *a2 = 0;
  result = strchr(a1, 95);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    result = strstr(a1, "-*");
    if (!result)
    {
      return result;
    }

    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t oneword_CountPhoneticWords(char *a1, char *a2)
{
  v4 = strchr(a1, 18);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  if (v5 - a1 >= 2 && *(v5 - 1) == 35)
  {
    --v5;
  }

  if (v5 <= a1)
  {
    return 1;
  }

  else
  {
    v6 = v5 - a1;
    v7 = a1 + 1;
    v8 = 1;
    do
    {
      v9 = *(v7 - 1);
      v10 = 1;
      if (v9 != 35 && v9 != 95)
      {
        v10 = v9 == 45 && *v7 == 42;
      }

      v8 += v10;
      ++v7;
      --v6;
    }

    while (v6);
  }

  return v8;
}

char *oneword_FindNextWord(char *result, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v7 = a3;
  v8 = *a4;
  if (*a4 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v10 = result;
    do
    {
      result = utf8_BelongsToSet(a2, v10, v8, v7);
      if (!result)
      {
        break;
      }

      result = utf8_GetNextUtf8Offset(v10, v8);
      v8 = result;
    }

    while (result < v7);
    if (v8 >= v7)
    {
      v7 = v8;
    }

    else
    {
      v11 = v8;
      do
      {
        result = utf8_BelongsToSet(a2, v10, v11, v7);
        if (result)
        {
          break;
        }

        result = utf8_GetNextUtf8Offset(v10, v11);
        v11 = result;
      }

      while (result < v7);
      v7 = v11;
    }
  }

  *a4 = v8;
  *a5 = v7;
  return result;
}

uint64_t oneword_CountOrthographicWords(char *a1, int a2, unsigned int a3, unsigned int a4)
{
  v7 = a2 - a1;
    ;
  }

  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a1, v7);
  if (v7)
  {
    v10 = PreviousUtf8Offset;
    v11 = v7;
    if (utf8_BelongsToSet(a3, a1, PreviousUtf8Offset, v7))
    {
      do
      {
        v11 = v10;
        v12 = utf8_GetPreviousUtf8Offset(a1, v10);
        if (!v10)
        {
          break;
        }

        v10 = v12;
      }

      while (utf8_BelongsToSet(a3, a1, v12, v7));
    }
  }

  else
  {
    v11 = 0;
  }

  for (j = 1; i < v11; i = utf8_GetNextUtf8Offset(a1, i))
  {
    if (!a1[i])
    {
      break;
    }

    if (utf8_BelongsToSet(a4, a1, i, v7))
    {
      ++j;
      for (; i < v11; i = utf8_GetNextUtf8Offset(a1, i))
      {
        if (!utf8_BelongsToSet(a4, a1, i, v7))
        {
          break;
        }
      }
    }
  }

  return j;
}

char *oneword_ReplaceCharactersInOrthography(char *result, int a2, unsigned int a3, char a4, _WORD *a5)
{
  if (a5 && *a5)
  {
    v8 = result;
    v9 = a2 - result;
    result = utf8_BelongsToSet(a3, result, 0, a2 - result);
    if (result)
    {
      NextUtf8Offset = 0;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(v8, NextUtf8Offset);
        result = utf8_BelongsToSet(a3, v8, NextUtf8Offset, v9);
      }

      while (result);
    }

    if (*a5)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = 0;
      do
      {
        if (utf8_BelongsToSet(a3, v8, v12, v9))
        {
          v8[v12] = a4;
          --*a5;
        }

        result = utf8_GetNextUtf8Offset(v8, v12);
        v12 = result;
        if (*a5)
        {
          v13 = result >= v9;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  return result;
}

uint64_t getDepesLayersForWordAndPOS(uint64_t a1, uint64_t a2, char *__s, char *a4)
{
  v8 = strlen(__s);
  v9 = Utf8_LengthInUtf8chars(__s, v8);
  v10 = (a1 + 160);
  **(a1 + 160) = 0;
  v11 = (a1 + 168);
  **(a1 + 168) = 0;
  **(a1 + 176) = 0;
  __s1 = __s;
  v12 = (*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a2, __s, 128);
  v13 = v12;
  if ((v12 & 0x80000000) == 0)
  {
    if (a4)
    {
      v59 = v12;
      v60 = a1;
      v14 = strlen(a4);
      Utf8_LengthInUtf8chars(a4, v14);
      v15 = strstr(__s, "║");
      v16 = strchr(a4, 43);
      v17 = v15 != 0;
      v18 = v16 != 0;
      __sa = a4;
      if (v15 | v16)
      {
        v19 = 0;
        v20 = 0;
        v21 = a4;
        v22 = __s1;
        v23 = __s1;
        while (1)
        {
          v24 = v22;
          if (v17)
          {
            v25 = v15 - v22;
          }

          else
          {
            v25 = 0;
          }

          if (v18)
          {
            v26 = v16 - v21;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          v28 = v25;
          if (!v25 || !v26)
          {
            if (!v25 || v26)
            {
              if (!v25 && v26)
              {
                v68 = v16;
                v63 = v19;
                strncat(*v11, &__sa[v20], v26);
                v37 = 0;
                *&(*v11)[strlen(*v11)] = 32;
                v38 = v20 + 1;
                do
                {
                  *&(*v10)[strlen(*v10)] = 126;
                  ++v37;
                }

                while (v27 > v37);
                v20 = (v38 + v27);
                *&(*v10)[strlen(*v10)] = 32;
                v16 = strchr(v68 + 1, 43);
                v23 = __s1;
                v19 = v63;
              }
            }

            else
            {
              v67 = v16;
              v64 = v20;
              strncat(*v10, &v23[v19], v25);
              v33 = strlen(*v10);
              v34 = v19;
              v35 = 0;
              *&(*v10)[v33] = 32;
              v36 = v34 + 3;
              do
              {
                *&(*v11)[strlen(*v11)] = 126;
                ++v35;
              }

              while (v28 > v35);
              v19 = (v36 + v28);
              *&(*v11)[strlen(*v11)] = 32;
              v15 = strstr(v15 + 3, "║");
              v20 = v64;
              v23 = __s1;
              v16 = v67;
            }

            v22 = v24;
            goto LABEL_35;
          }

          v66 = v16;
          v29 = v25 - v26;
          v62 = v19;
          if (v25 <= v26)
          {
            v39 = v23;
            strncat(*v11, &__sa[v20], v26);
            *&(*v11)[strlen(*v11)] = 32;
            v30 = v39;
            strncat(*v10, &v39[v19], v28);
            v31 = v10;
            if (v27 - v28 >= 1)
            {
              v40 = 0;
              do
              {
                *&(*v10)[strlen(*v10)] = 126;
                ++v40;
              }

              while (v27 - v28 > v40);
              v31 = v10;
              goto LABEL_33;
            }
          }

          else
          {
            v30 = v23;
            strncat(*v10, &v23[v19], v25);
            *&(*v10)[strlen(*v10)] = 32;
            strncat(*v11, &__sa[v20], v27);
            v31 = v11;
            if (v29 >= 1)
            {
              v32 = 0;
              do
              {
                *&(*v11)[strlen(*v11)] = 126;
                ++v32;
              }

              while (v29 > v32);
              v31 = v11;
LABEL_33:
              v30 = __s1;
            }
          }

          *&(*v31)[strlen(*v31)] = 32;
          v19 = (v62 + v28 + 3);
          v20 = (v20 + v27 + 1);
          v22 = v15 + 3;
          v21 = v66 + 1;
          v15 = strstr(v15 + 3, "║");
          v16 = strchr(v66 + 1, 43);
          v23 = v30;
LABEL_35:
          v17 = v15 != 0;
          v18 = v16 != 0;
          if (!(v15 | v16))
          {
            goto LABEL_47;
          }
        }
      }

      LOWORD(v20) = 0;
      LOWORD(v19) = 0;
      v23 = __s1;
LABEL_47:
      v47 = v23;
      v48 = strlen(v23);
      v49 = strlen(__sa);
      if (v48 > v19)
      {
        strcat(*v10, &v47[v19]);
      }

      v13 = v59;
      if (v49 > v20)
      {
        strcat(*v11, &__sa[v20]);
      }

      v50 = strlen(*v10);
      v51 = strlen(*v11);
      v52 = v51;
      if (v50 <= v51)
      {
        for (i = v51; i > v50; ++v50)
        {
          *&(*v10)[strlen(*v10)] = 126;
        }
      }

      else
      {
        do
        {
          *&(*v11)[strlen(*v11)] = 126;
          ++v52;
        }

        while (v50 > v52);
      }

      v54 = strlen(*v10);
      if (v54)
      {
        for (j = 0; j != v54; ++j)
        {
          v56 = strlen(*(v60 + 176));
          if (*(*(v60 + 160) + j) == 32)
          {
            v57 = 32;
          }

          else
          {
            v57 = 126;
          }

          *(*(v60 + 176) + v56) = v57;
        }
      }
    }

    else if (v9)
    {
      v41 = 0;
      do
      {
        v42 = &__s[v41];
        v43 = *v42;
        if (v43 == 226 && v42[1] == 149 && v42[2] == 145)
        {
          *(*(a1 + 160) + strlen(*(a1 + 160))) = 32;
          *(*(a1 + 168) + strlen(*(a1 + 168))) = 32;
          *(*(a1 + 176) + strlen(*(a1 + 176))) = 32;
          v44 = 3;
        }

        else
        {
          v45 = *(a1 + 160);
          v46 = utf8_determineUTF8CharLength(v43);
          strncat(v45, v42, v46);
          *(*(a1 + 168) + strlen(*(a1 + 168))) = 126;
          *(*(a1 + 176) + strlen(*(a1 + 176))) = 126;
          v44 = utf8_determineUTF8CharLength(*v42);
        }

        v41 += v44;
      }

      while (v41 < v9);
    }
  }

  return v13;
}

uint64_t oneword_SkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, unsigned __int16 a9)
{
  v45 = a6;
  v44 = a7;
  v41 = 17;
  v42 = 9;
  v39 = 0;
  __s = 0;
  v37 = 0;
  v38 = 0;
  v15 = heap_Calloc(*(*a1 + 8), 1, (2 * a5) | 1);
  if (v15)
  {
    v16 = v15;
    if (a5 >= 2)
    {
      v17 = a5 - 1;
      do
      {
        strcat(v15, "*.");
        --v17;
      }

      while (v17);
    }

    v43 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v31 = 0;
    *&v15[strlen(v15)] = 42;
    v18 = (*(*(a1 + 56) + 168))(a2, a3, a9, 0, 1, &v43, &v36 + 2);
    if ((v18 & 0x80000000) == 0)
    {
      v19 = *(a1 + 56);
      v18 = v43 > 1 ? (*(v19 + 88))(a2, a3, a9, &v32 + 2) : (*(v19 + 80))(a2, a3, a9, &v32 + 2);
      if ((v18 & 0x80000000) == 0)
      {
        v43 = 9;
        v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 0, 1, &v43, &v36);
        if ((v18 & 0x80000000) == 0)
        {
          v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 1, 1, &v45, &v36);
          if ((v18 & 0x80000000) == 0)
          {
            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 2, 1, &v44, &v36);
            if ((v18 & 0x80000000) == 0)
            {
              v21 = strlen(v16);
              v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 3, (v21 + 1), v16, &v36);
              if ((v18 & 0x80000000) == 0)
              {
                v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 5, 1, "*", &v36);
                if ((v18 & 0x80000000) == 0)
                {
                  v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 6, 1, "*", &v36);
                  if ((v18 & 0x80000000) == 0)
                  {
                    if (strcmp(a4, "latin") || (v30 = 1, v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 7, 1, &v30, &v36), (v18 & 0x80000000) == 0))
                    {
                      v20 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 9, 7, "normal", &v36);
                      if ((v20 & 0x80000000) != 0)
                      {
                        goto LABEL_60;
                      }

                      LOWORD(v33) = a8;
                      if (HIWORD(v32) == a8)
                      {
                        goto LABEL_60;
                      }

                      v22 = 0;
                      while (1)
                      {
                        v18 = (*(*(a1 + 56) + 168))(a2, a3, a8, 0, 1, &v43, &v36 + 2);
                        if ((v18 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v18 = (*(*(a1 + 56) + 168))(a2, a3, v33, 1, 1, &v35, &v36 + 2);
                        if ((v18 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v18 = (*(*(a1 + 56) + 168))(a2, a3, v33, 2, 1, &v34 + 2, &v36 + 2);
                        if ((v18 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v43 <= 1)
                        {
                          v18 = (*(*(a1 + 56) + 136))(a2, a3, v33, &v31);
LABEL_27:
                          if ((v18 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v23 = v31;
                          while (v23 != v22)
                          {
                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v23, 0, 1, &v42, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v31, 1, 1, &v34, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v31, 2, 1, &v33 + 2, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            if (v42 != 4 || v34 != v35 || HIWORD(v33) != HIWORD(v34))
                            {
                              v18 = (*(*(a1 + 56) + 136))(a2, a3, v31, &v31);
                              goto LABEL_27;
                            }

                            v18 = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v32), &v32 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v31, 3, &__s, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v31, 5, &v37, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 168))(a2, a3, v31, 7, 1, &v35 + 2, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v31, 6, &v39, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 176))(a2, a3, v31, 9, &v38, &v36 + 2);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 0, 1, &v41, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            LOWORD(v34) = v34 + *(a1 + 224);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 1, 1, &v34, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            HIWORD(v33) += *(a1 + 224);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 2, 1, &v33 + 2, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v24 = strlen(__s);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 3, (v24 + 1), __s, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v25 = strlen(a4);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 4, (v25 + 1), a4, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v26 = strlen(v37);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 5, (v26 + 1), v37, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v27 = strlen(v39);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 6, (v27 + 1), v39, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 7, 1, &v35 + 2, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v28 = strlen(v38);
                            v18 = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v32), 9, (v28 + 1), v38, &v36);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 136))(a2, a3, v31, &v32);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v18 = (*(*(a1 + 56) + 192))(a2, a3, v31);
                            if ((v18 & 0x80000000) != 0)
                            {
                              goto LABEL_59;
                            }

                            v23 = v32;
                            v31 = v32;
                          }

                          v22 = v33;
                        }

                        v20 = (*(*(a1 + 56) + 120))(a2, a3);
                        if ((v20 & 0x80000000) == 0)
                        {
                          LOWORD(a8) = v33;
                          if (v33 != HIWORD(v32))
                          {
                            continue;
                          }
                        }

                        goto LABEL_60;
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

LABEL_59:
    v20 = v18;
LABEL_60:
    heap_Free(*(*a1 + 8), v16);
    return v20;
  }

  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
  return 2310021130;
}

uint64_t hlp_RemoveMNCRecords(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = heap_Calloc(*(*a1 + 8), 1, 129);
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    return 2310021130;
  }

  v15 = v14;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v16 = (*(a1[7] + 120))(a2, a3, a5, &v27);
  if ((v16 & 0x80000000) == 0)
  {
    v16 = (*(a1[7] + 168))(a2, a3, a5, 1, 1, &v24, &v25 + 2);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = (*(a1[7] + 168))(a2, a3, a6, 2, 1, &v23, &v25 + 2);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      v18 = v27;
      if (!v27)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v16 = (*(a1[7] + 168))(a2, a3, v18, 0, 1, &v26, &v25 + 2);
        if ((v16 & 0x80000000) != 0)
        {
          break;
        }

        if (v26 == 4)
        {
          v16 = (*(a1[7] + 168))(a2, a3, v27, 1, 1, &v25, &v25 + 2);
          if ((v16 & 0x80000000) != 0)
          {
            break;
          }

          v17 = (*(a1[7] + 168))(a2, a3, v27, 2, 1, &v24 + 2, &v25 + 2);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_22;
          }

          if (v25 > ~a7)
          {
            v19 = HIWORD(v24) - v25;
            if (v19 <= 127)
            {
              strncpy(v15, (*a4 + v25 + a7), v19);
              v20 = HIWORD(v24);
              v21 = v25;
              v15[HIWORD(v24) - v25] = 0;
              if (v21 < v24 || v20 > v23 || strlen(v15) < 2 || !strchr(v15, 95))
              {
                goto LABEL_22;
              }

              v16 = (*(a1[7] + 192))(a2, a3, v27);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v27 = a5;
            }
          }
        }

        LOWORD(a5) = v27;
        v17 = (*(a1[7] + 120))(a2, a3, v27, &v27);
        if ((v17 & 0x80000000) == 0)
        {
          v18 = v27;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }
  }

  v17 = v16;
LABEL_22:
  heap_Free(*(*a1 + 8), v15);
  return v17;
}

uint64_t oneword_TranscribeAcronym(uint64_t a1, char *a2, const char *a3, char *a4, char *a5)
{
  v75 = *MEMORY[0x1E69E9840];
  __c_1 = 0;
  strcpy(__s, "one_word");
  v9 = strlen(__s);
  v10 = strlen(a3);
  v11 = heap_Alloc(*(*a1 + 8), (v10 + 1));
  if (v11)
  {
    v12 = v11;
    __c_3 = 0;
    *v69 = 0;
    v68 = 0;
    strcpy(v11, a3);
    v58 = a4;
    if (*(a1 + 560) == 1)
    {
      v13 = strchr(a2, 95);
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = a2;
      }

      v61 = v14;
      v15 = *v14;
    }

    else
    {
      v61 = 0;
      v15 = 32;
    }

    v60 = v15;
    v17 = 0;
    v18 = 0;
    __c = 0;
    v19 = v9;
    v20 = 0;
    v59 = v19;
    v62 = v19 + 2;
    v66 = 32;
    v63 = v12;
    while (1)
    {
      v21 = v12[v20];
      if (v21 < -64)
      {
        goto LABEL_13;
      }

      if (!(*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &v12[v20]))
      {
        break;
      }

LABEL_17:
      v64 = v20;
      if (v18 == v17)
      {
        goto LABEL_89;
      }

      **(a1 + 160) = 0;
      if (!dynamic_strncat((a1 + 160), &v12[v17], v18 - v17, (a1 + 192), *(*a1 + 8)))
      {
        return 2310021130;
      }

      log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s", *(a1 + 160));
      __c_1 = 0;
      if (*(a1 + 1224))
      {
        v67 = 7352935;
        __strcat_chk();
        v25 = (*(*(a1 + 80) + 232))(*(a1 + 64), *(a1 + 72), &v67, *(a1 + 160), &__c_3, &__c_1, &__c, 0);
      }

      else
      {
        v25 = (*(*(a1 + 80) + 240))(*(a1 + 64), *(a1 + 72), "g2p", *(a1 + 160), &__c_3, &__c_1, &__c, *(a1 + 556), 0);
      }

      v16 = v25;
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_95;
      }

      if (!__c_1)
      {
        v66 = 32;
LABEL_74:
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", __s, *(a1 + 160));
        v53 = strlen(*(a1 + 160));
        appended = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, *(a1 + 160), v53);
        if ((appended & 0x80000000) == 0)
        {
          if (strcmp(a2, "normal") && v62 + strlen(a2) <= 0x7F)
          {
            __strcat_chk();
            __strcat_chk();
          }

          if (((*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s) & 0x80000000) == 0)
          {
            if (*(a1 + 560))
            {
              v55 = v61;
              v56 = v60;
              if (!v61)
              {
LABEL_86:
                appended = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, v69, &v68);
                if ((appended & 0x80000000) == 0)
                {
                  *(*v69 + v68) = 0;
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", __s, *v69);
                  v52 = *v69;
                  v50 = v66;
                  v51 = a1;
LABEL_88:
                  appended = oneword_AppendPhon(v51, v52, "*", "*", v50, 1);
                  if ((appended & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }
                }

                goto LABEL_94;
              }
            }

            else
            {
              v56 = *a2;
              v55 = a2;
            }

            strncpy(a5, v55, 0x14uLL);
            v66 = v56;
            goto LABEL_86;
          }

          __s[v59] = 0;
          appended = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), __s);
          if ((appended & 0x80000000) == 0)
          {
            goto LABEL_86;
          }
        }

LABEL_94:
        v16 = appended;
LABEL_95:
        heap_Free(*(*a1 + 8), v12);
        return v16;
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      v66 = 32;
      do
      {
        v29 = *(__c_3 + 8 * v26);
        v30 = strchr(v29, __c);
        if (!v30)
        {
          v32 = 0;
LABEL_37:
          v36 = 0;
LABEL_38:
          v39 = 0;
          goto LABEL_39;
        }

        *v30 = 0;
        v31 = strchr(v30 + 1, __c);
        v32 = v31;
        if (!v31)
        {
          goto LABEL_37;
        }

        *v31 = 0;
        v32 = v31 + 1;
        v33 = strchr(v31 + 1, __c);
        if (!v33)
        {
          goto LABEL_37;
        }

        *v33 = 0;
        v34 = strchr(v33 + 1, __c);
        if (!v34)
        {
          goto LABEL_37;
        }

        *v34 = 0;
        v35 = strchr(v34 + 1, __c);
        v36 = v35;
        if (!v35)
        {
          goto LABEL_38;
        }

        *v35 = 0;
        v36 = v35 + 1;
        v37 = strchr(v35 + 1, __c);
        if (!v37)
        {
          goto LABEL_38;
        }

        *v37 = 0;
        v38 = strchr(v37 + 1, __c);
        v39 = v38;
        if (v38)
        {
          *v38 = 0;
          v39 = v38 + 1;
          v40 = strchr(v38 + 1, __c);
          if (v40)
          {
            *v40 = 0;
          }
        }

LABEL_39:
        if (!v29)
        {
          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0);
          heap_Free(*(*a1 + 8), v63);
          return 2310021127;
        }

        oneword_ReplaceUnderscoreWithDot(v29);
        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Validating %s", v29);
        if (v32 && *v32 && !strstr(v32, a2))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Domain validation not OK");
        }

        else if (v39 && *(a1 + 1204) && ((v41 = strstr(a2, v39)) == 0 || (v42 = v41, (v43 = strlen(v39)) != 0) && v42[v43]) && ((v44 = strstr(*(a1 + 1216), a2), LH_stricmp(v39, *(a1 + 1208))) || !v44 || v44[strlen(a2)] != 124))
        {
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "G2P Language %s validation not OK");
        }

        else
        {
          if (v36 && *v36)
          {
            v45 = atoi(v36);
          }

          else
          {
            v45 = 1;
          }

          v46 = (v45 - 1);
          if (v46 < v27)
          {
            v47 = v27;
          }

          else
          {
            v28 = v29;
            v47 = v45;
          }

          if (v39)
          {
            v48 = v46 >= v27;
            v27 = v47;
            if (v48)
            {
              v66 = *v39;
              strncpy(a5, v39, 0x14uLL);
              v28 = v29;
              v27 = v45;
            }
          }

          else
          {
            v27 = v47;
          }
        }

        ++v26;
      }

      while (v26 < __c_1);
      if (!v28)
      {
        v12 = v63;
        goto LABEL_74;
      }

      v49 = strchr(v28, 18);
      v12 = v63;
      if (v49)
      {
        *v49 = 0;
      }

      if (*v28 != 95 || v28[1])
      {
        v50 = v66;
        v51 = a1;
        v52 = v28;
        goto LABEL_88;
      }

LABEL_89:
      v73[0] = v12[v64];
      v73[1] = 0;
      appended = oneword_AppendPhon(a1, v73, "", "", 32, 0);
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_94;
      }

      v17 = ++v18;
LABEL_91:
      v20 = v18;
      if (strlen(v12) < v18)
      {
        heap_Free(*(*a1 + 8), v12);
        v16 = 0;
        *v58 = v66;
        return v16;
      }
    }

    LOBYTE(v21) = v12[v20];
LABEL_13:
    v22 = v21;
    v23 = (1 << v21) & 0x100002601;
    v24 = v22 > 0x20 || v23 == 0;
    if (v24 && v22 != 95)
    {
      ++v18;
      goto LABEL_91;
    }

    goto LABEL_17;
  }

  v16 = 2310021130;
  log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
  return v16;
}

size_t oneword_ReplaceUnderscoreWithDot(char *a1)
{
  v1 = a1;
  result = strlen(a1);
  v3 = result;
  if (result)
  {
    do
    {
      if (*v1 == 95)
      {
        *v1 = 46;
      }

      ++v1;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t oneword_AppendPhon(uint64_t a1, char *a2, char *__s, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = 32;
  }

  __s2[0] = v11;
  __s2[1] = 0;
  if (strlen(__s) >= 2)
  {
    if (!a6 && strchr(__s, 32))
    {
      if (strlen(a4) <= 1)
      {
        goto LABEL_14;
      }

LABEL_12:
      if (strchr(a4, 32))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    __s[1] = 0;
  }

  if (strlen(a4) <= 1)
  {
    goto LABEL_14;
  }

  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_13:
  *(a4 + 1) = 0;
LABEL_14:
  if (!*a2)
  {
    return 0;
  }

  v12 = strlen(*(a1 + 240));
  v13 = strlen(a2);
  v14 = v12 + 7;
  if (!a6)
  {
    v14 = v12 + 1;
  }

  v15 = v14 + v13;
  if ((v14 + v13) >= 0x81u)
  {
    v16 = heap_Realloc(*(*a1 + 8), *(a1 + 240), (v14 + v13));
    if (!v16 || (*(a1 + 240) = v16, (v17 = heap_Realloc(*(*a1 + 8), *(a1 + 248), v15)) == 0) || (*(a1 + 248) = v17, (v18 = heap_Realloc(*(*a1 + 8), *(a1 + 256), v15)) == 0) || (*(a1 + 256) = v18, (v19 = heap_Realloc(*(*a1 + 8), *(a1 + 264), v15)) == 0))
    {
      a6 = 2310021130;
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
      return a6;
    }

    *(a1 + 264) = v19;
  }

  if (a6)
  {
    *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
    *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
    *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
    *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
  }

  v20 = strstr(a2, "◄");
  if (strchr(__s, 32) || !v20)
  {
    strcat(*(a1 + 240), a2);
    strcat(*(a1 + 248), __s);
    strcat(*(a1 + 256), a4);
    strcat(*(a1 + 264), __s2);
    v32 = strlen(a2);
    v33 = Utf8_LengthInUtf8chars(a2, v32);
    if (v33 > strlen(__s))
    {
      v34 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 126;
        ++v34;
      }

      while ((v33 - strlen(__s)) > v34);
    }

    if (v33 > strlen(a4))
    {
      v35 = 0;
      do
      {
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 126;
        ++v35;
      }

      while ((v33 - strlen(a4)) > v35);
    }

    if (v33 > strlen(__s2))
    {
      v36 = 0;
      do
      {
        strcat(*(a1 + 264), __s2);
        ++v36;
      }

      while ((v33 - strlen(__s2)) > v36);
    }
  }

  else
  {
    v21 = strstr(v20 + 3, "◄");
    if (!v21)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34001, 0);
      return 2310021127;
    }

    v38 = v21;
    strncat(*(a1 + 240), a2, (v20 - a2 + 3));
    if (Utf8_LengthInUtf8chars(a2, v20 - a2 + 3))
    {
      v22 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
        *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
        ++v22;
      }

      while (Utf8_LengthInUtf8chars(a2, v20 - a2 + 3) > v22);
    }

    strncat(*(a1 + 240), v20 + 3, (v38 - v20 - 3));
    strcat(*(a1 + 248), __s);
    strcat(*(a1 + 256), a4);
    strcat(*(a1 + 264), __s2);
    v23 = Utf8_LengthInUtf8chars(v20, v38 - v20) - 1;
    if (v23 > strlen(__s))
    {
      v24 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 126;
        ++v24;
      }

      while (v23 - strlen(__s) > v24);
    }

    if (v23 > strlen(a4))
    {
      v25 = 0;
      do
      {
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 126;
        ++v25;
      }

      while (v23 - strlen(a4) > v25);
    }

    if (v23 > strlen(__s2))
    {
      v26 = 0;
      do
      {
        strcat(*(a1 + 264), __s2);
        ++v26;
      }

      while (v23 - strlen(__s2) > v26);
    }

    strcat(*(a1 + 240), v38);
    v27 = strlen(a2);
    v28 = Utf8_LengthInUtf8chars(a2, v27) << 16;
    if (v28 > (Utf8_LengthInUtf8chars(a2, v38 - a2) << 16))
    {
      v29 = 0;
      do
      {
        *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
        *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
        *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
        ++v29;
        v30 = strlen(a2);
        v31 = Utf8_LengthInUtf8chars(a2, v30);
      }

      while (v31 - Utf8_LengthInUtf8chars(a2, v38 - a2) > v29);
    }
  }

  if (a6)
  {
    *(*(a1 + 240) + strlen(*(a1 + 240))) = 8689634;
    *(*(a1 + 248) + strlen(*(a1 + 248))) = 32;
    *(*(a1 + 256) + strlen(*(a1 + 256))) = 32;
    a6 = 0;
    *(*(a1 + 264) + strlen(*(a1 + 264))) = 32;
  }

  return a6;
}

uint64_t oneword_ConvertPhon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, int a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v13;
  v22 = v21;
  v23 = v12;
  v127 = *MEMORY[0x1E69E9840];
  v124 = v24;
  v25 = *v14;
  v123 = *v14;
  v122 = 0;
  v120 = 0;
  v119 = 1;
  v118 = 0;
  v116 = 200;
  v114 = 0;
  v112 = 0;
  __dst[0] = 0;
  v26 = *a10;
  if (v26 < *a11)
  {
    v27 = (a9 + 32 * v26 + 12);
    do
    {
      if (*v27 - a12 >= v13)
      {
        break;
      }

      *v27 += *(v12 + 224);
      v27 += 8;
      *a10 = ++v26;
    }

    while (v26 < *a11);
  }

  v121 = 0;
  __s = 0;
  v113 = 0;
  v28 = 0;
  if (v25)
  {
    while (!v28 || SHIWORD(v120) < v20)
    {
      v29 = (*(*(v23 + 56) + 168))(v19, v17, v25, 0, 1, &v122, &v121 + 2);
      if ((v29 & 0x80000000) != 0)
      {
        return v29;
      }

      if (v122 > 3)
      {
        v30 = 0;
        if (v122 == 5)
        {
          v28 = v123;
        }
      }

      else
      {
        v29 = (*(*(v23 + 56) + 168))(v19, v17, v123, 2, 1, &v120 + 2, &v121 + 2);
        if ((v29 & 0x80000000) != 0)
        {
          return v29;
        }

        v30 = v123;
      }

      v29 = (*(*(v23 + 56) + 120))(v19, v17);
      if ((v29 & 0x80000000) != 0)
      {
        return v29;
      }

      if (v30)
      {
        v29 = (*(*(v23 + 56) + 192))(v19, v17, v30);
        if ((v29 & 0x80000000) != 0)
        {
          return v29;
        }

        v25 = v123;
        if (*(v23 + 280) == v30)
        {
          *(v23 + 280) = v123;
        }

        if (!v25)
        {
          break;
        }
      }

      else
      {
        LOWORD(v25) = v123;
        if (!v123)
        {
          break;
        }
      }
    }
  }

  v29 = (*(*(v23 + 56) + 176))(v19, v17, v28, 3, &__s, &v121 + 2);
  if ((v29 & 0x80000000) != 0)
  {
    return v29;
  }

  v113 = 0;
  if (((*(*(v23 + 56) + 184))(v19, v17, v28, 9, &v113) & 0x80000000) == 0 && v113 == 1)
  {
    v29 = (*(*(v23 + 56) + 176))(v19, v17, v28, 9, &v112, &v121 + 2);
    if ((v29 & 0x80000000) != 0)
    {
      return v29;
    }
  }

  strcpy(v125, "EXTMRKP");
  v31 = strchr(__s, 20);
  if (v31)
  {
    *v31 = 0;
    v32 = v31 + 1;
    v33 = strchr(v31 + 1, 20);
    v34 = v33;
    if (v33)
    {
      *v33 = 0;
      v34 = v33 + 1;
      if (strlen(v33 + 1) != 3)
      {
        v34 = 0;
      }
    }

    v35 = strlen(v32);
    v108 = v34;
    if (v35 && v35 + 1 <= 0x14)
    {
      __strcpy_chk();
    }
  }

  else
  {
    v108 = 0;
  }

  v36 = __s;
  if (*__s == 32)
  {
    v37 = __s + 1;
    do
    {
      __s = v37;
      v38 = *v37++;
    }

    while (v38 == 32);
    v36 = v37 - 1;
  }

  v39 = strchr(v36, 18);
  if (v39)
  {
    *v39 = 0;
    __s1 = v39 + 1;
    v36 = __s;
  }

  else
  {
    __s1 = 0;
  }

  if (strlen(v36) < 5)
  {
    goto LABEL_50;
  }

  v40 = *v36;
  if (v40 == 92)
  {
    if (v36[1] == 84)
    {
      *&__c[3] = 0;
      *&__c[1] = -1;
      __c[0] = 0;
      strcpy(v126, "lngphon_e");
      v126[8] = v36[2];
      v29 = (*(*(v23 + 80) + 96))(*(v23 + 64), *(v23 + 72), "fecfg", v126, &__c[3], &__c[1], __c);
      if ((v29 & 0x80000000) != 0)
      {
        return v29;
      }

      if (*&__c[1])
      {
        v41 = **&__c[3];
        v42 = strchr(**&__c[3], __c[0]);
        if (v42)
        {
          *v42 = 0;
          v41 = **&__c[3];
        }

        strncpy(__dst, v41, 3uLL);
      }

      v36 = __s + 4;
      __s += 4;
    }

LABEL_50:
    v40 = *v36;
  }

  if (v40 == 35)
  {
    *&__c[3] = v28;
    v43 = v28 != 0;
    v44 = v122;
    if (!v28 || v122 == 4)
    {
      LOWORD(v45) = v28;
    }

    else
    {
      LOWORD(v45) = v28;
      if (v122 - 11 <= 0xFFFFFFFD)
      {
        LOWORD(v45) = v28;
        while (1)
        {
          v29 = (*(*(v23 + 56) + 136))(v19, v17, v45, &__c[3]);
          if ((v29 & 0x80000000) != 0)
          {
            return v29;
          }

          if (*&__c[3])
          {
            v29 = (*(*(v23 + 56) + 168))(v19, v17);
            if ((v29 & 0x80000000) != 0)
            {
              return v29;
            }

            v45 = *&__c[3];
          }

          else
          {
            v45 = 0;
          }

          v43 = v45 != 0;
          v44 = v122;
          if (v45)
          {
            if (v122 != 4 && v122 - 11 < 0xFFFFFFFE)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    if (v43)
    {
      *&__c[1] = v45;
      *v126 = v44;
      v29 = (*(*(v23 + 56) + 160))(v19, v17, v45, 8, 1, &v116, &v121);
      if ((v29 & 0x80000000) == 0)
      {
        while (1)
        {
          v29 = (*(*(v23 + 56) + 120))(v19, v17, *&__c[1], &__c[1]);
          if ((v29 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_83;
          }

          v29 = (*(*(v23 + 56) + 168))(v19, v17);
          if ((v29 & 0x80000000) != 0)
          {
            break;
          }

          if (!*&__c[1])
          {
            goto LABEL_83;
          }

          if (*&__c[1] == v28 || *v126 != 8)
          {
            goto LABEL_83;
          }

          v29 = (*(*(v23 + 56) + 160))(v19, v17);
          if ((v29 & 0x80000000) != 0)
          {
            return v29;
          }
        }
      }

      return v29;
    }

LABEL_83:
    v36 = __s;
    if (*__s == 35)
    {
      v50 = __s + 1;
      do
      {
        __s = v50;
        v51 = *v50++;
      }

      while (v51 == 35);
      v36 = v50 - 1;
    }
  }

  v122 = 10;
  LOWORD(v52) = v124;
  while (1)
  {
    v53 = *(v22 + v52);
    v54 = v53 > 0x20 || ((1 << v53) & 0x100002600) == 0;
    if (v54 && v53 != 95)
    {
      break;
    }

    LOWORD(v52) = v52 + 1;
    v124 = v52;
  }

  if (v20 <= v52)
  {
    v106 = 0;
    v110 = 0;
LABEL_203:
    v48 = (*(*(v23 + 56) + 120))(v19, v17, v120, v15);
    if ((v48 & 0x80000000) == 0 && v106 && v114 >= 2u)
    {
      v62 = (*(*(v23 + 56) + 160))(v19, v17, v106, 7, 1, &v114, &v121);
      goto LABEL_207;
    }

    goto LABEL_208;
  }

  v110 = 0;
  v106 = 0;
  v55 = 0;
  v56 = v20;
  v104 = v28;
  v105 = v15;
  while (2)
  {
    v57 = v52;
    if (v20 <= (v52 + 1))
    {
      v58 = v52 + 1;
    }

    else
    {
      v58 = v20;
    }

    while (1)
    {
      v59 = *(v22 + v57);
      v60 = v59 > 0x20 || ((1 << v59) & 0x100002600) == 0;
      if (!v60 || v59 == 95)
      {
        break;
      }

      if (++v57 >= v56)
      {
        goto LABEL_108;
      }
    }

    v58 = v57;
LABEL_108:
    HIWORD(v120) = v58;
    v61 = *(v23 + 56);
    v107 = v55;
    if (v55)
    {
      v62 = (*(v61 + 80))(v19, v17, v120, &v120);
    }

    else
    {
      v62 = (*(v61 + 88))(v19, v17, v28, &v120);
    }

    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 0, 1, &v122, &v121);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 1, 1, &v124, &v121);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 2, 1, &v120 + 2, &v121);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    if (v112)
    {
      v63 = strlen(v112);
      v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 9, (v63 + 1), v112, &v121);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }
    }

    v64 = strlen(v125);
    v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 21, (v64 + 1), v125, &v121);
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    if (v108)
    {
      v65 = strlen(v108);
      v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 12, (v65 + 1), v108, &v121);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }
    }

    ++v114;
    for (i = v36 + 1; ; ++i)
    {
      v67 = *v36;
      if (v67 > 0x22)
      {
        break;
      }

      if (!*v36 || v67 == 32)
      {
        goto LABEL_132;
      }

LABEL_127:
      ++v36;
    }

    if (v67 == 35)
    {
      goto LABEL_132;
    }

    if (v67 != 95)
    {
      goto LABEL_127;
    }

    if (v36[1] == 95)
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    v118 = v68;
LABEL_132:
    *v36 = 0;
    if (!*__s)
    {
      v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 3, 1, "", &v121);
      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_207;
    }

    v69 = (2 * (strlen(__s) & 0x7FFFFFFF)) | 1;
    v70 = heap_Realloc(*(*v23 + 8), v110, v69);
    if (!v70)
    {
      v48 = 2310021130;
      log_OutPublic(*(*v23 + 32), "FE_ONEWORD", 34000, 0);
      v95 = v110;
      goto LABEL_209;
    }

    if (!*(v23 + 580))
    {
      v75 = strcpy(v70, __s);
      goto LABEL_146;
    }

    v110 = v70;
    *&__c[3] = 0;
    v71 = (2 * strlen(__s)) | 1;
    if (__dst[0])
    {
      v72 = __dst;
      v73 = __s;
      v74 = v110;
    }

    else
    {
      v73 = __s;
      v74 = v110;
      v72 = 0;
    }

    v48 = (*(*(v23 + 152) + 72))(*(v23 + 136), *(v23 + 144), 1, v73, v71, v74, v72);
    if ((v48 & 0x80000000) != 0)
    {
LABEL_215:
      v102 = 0;
LABEL_220:
      v95 = v110;
      goto LABEL_211;
    }

    v76 = strlen(v110);
    v77 = heap_Alloc(*(*v23 + 8), (v76 + 1));
    if (!v77)
    {
      v102 = 0;
LABEL_218:
      v48 = 2310021130;
      log_OutPublic(*(*v23 + 32), "FE_ONEWORD", 34000, 0);
      goto LABEL_220;
    }

    v78 = v77;
    strcpy(v77, v110);
    v79 = strlen(v110);
    v80 = Utf8_DepesLengthInBytesUtf8(v110, v79);
    v81 = heap_Realloc(*(*v23 + 8), v110, v80 + 1);
    v82 = v78;
    if (!v81)
    {
      v102 = v78;
      goto LABEL_218;
    }

    v83 = v81;
    v103 = v82;
    v84 = strlen(v82);
    v85 = utf8_DepesToUtf8(v103, v84, 0, v83, v80, &__c[3], 0);
    if ((v85 & 0x80000000) != 0)
    {
      v48 = v85;
      v110 = v83;
      v102 = v103;
      goto LABEL_220;
    }

    *(v83 + *&__c[3]) = 0;
    heap_Free(*(*v23 + 8), v103);
    v75 = v83;
LABEL_146:
    v86 = *v75;
    v110 = v75;
    if (v86 <= 0x29)
    {
      if (v86 != 34 && v86 != 39)
      {
        goto LABEL_161;
      }

LABEL_160:
      if (v75[1])
      {
        goto LABEL_161;
      }

      goto LABEL_158;
    }

    if (v86 == 96)
    {
      goto LABEL_160;
    }

    if (v86 == 42 && (v75[1] == 44 && !v75[2] || v75[1] == 59 && !v75[2] || v75[1] == 58 && !v75[2]))
    {
LABEL_158:
      v87 = (*(*(v23 + 56) + 160))(v19, v17, v120, 3, 1, "", &v121);
      if ((v87 & 0x80000000) != 0)
      {
LABEL_214:
        v48 = v87;
        goto LABEL_215;
      }
    }

    else
    {
LABEL_161:
      v88 = v75;
      v89 = strlen(v75);
      v87 = (*(*(v23 + 56) + 160))(v19, v17, v120, 3, (v89 + 1), v88, &v121);
      if ((v87 & 0x80000000) != 0)
      {
        goto LABEL_214;
      }
    }

LABEL_162:
    v90 = __s1;
    if (!__s1)
    {
LABEL_167:
      v62 = (*(*(v23 + 56) + 160))(v19, v17);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 6, 2, "*", &v121);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 7, 1, &v119, &v121);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 20, 1, &v118, &v121);
      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      if (v112)
      {
        v93 = (strlen(v112) + 1);
        v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 9, v93, v112, &v121);
      }

      else
      {
        v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 9, 1, "", &v121);
      }

      if ((v62 & 0x80000000) != 0)
      {
        goto LABEL_207;
      }

      if (v67 == 35 || v110 && (v96 = strlen(v110), v96 >= 2) && v110[v96 - 2] == 42 && (v97 = v110[v96 - 1], v97 <= 0x3B) && ((1 << v97) & 0xC00100000000000) != 0)
      {
        v94 = (*(*(v23 + 56) + 160))(v19, v17, v120, 8, 1, &v116, &v121);
        v95 = v110;
        if ((v94 & 0x80000000) != 0)
        {
          v48 = v94;
          goto LABEL_209;
        }
      }

      if (v67)
      {
        *v36 = v67;
        v28 = v104;
        v56 = v20;
        v98 = v107;
        while (1)
        {
          v99 = *i;
          if (v99 != 95 && v99 != 35)
          {
            break;
          }

          ++i;
        }

        __s = i;
        v36 = i;
      }

      else
      {
        v28 = v104;
        v56 = v20;
        v98 = v107;
      }

      v52 = HIWORD(v120);
      v15 = v105;
      if (HIWORD(v120) < v20)
      {
        while (1)
        {
          v100 = *(v22 + v52);
          v101 = v100 > 0x20 || ((1 << v100) & 0x100002600) == 0;
          if (v101 && v100 != 95)
          {
            break;
          }

          if (v20 == ++v52)
          {
            LOWORD(v52) = v20;
            break;
          }
        }
      }

      v124 = v52;
      if ((v98 & 1) == 0)
      {
        LOWORD(v120) = v28;
      }

      __s1 = 0;
      v55 = 1;
      if (v20 <= v52)
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  if (!*(v23 + 2192) || (v62 = mosynt_LHPlusMapping(*(v23 + 48), *(v23 + 2200), *(v23 + 2240), __s1, v126, 5000), v90 = v126, (v62 & 0x80000000) == 0))
  {
    v91 = v90;
    v92 = strlen(v90);
    v62 = (*(*(v23 + 56) + 160))(v19, v17, v120, 11, (v92 + 1), v91, &v121);
    if ((v62 & 0x80000000) == 0)
    {
      v106 = v120;
      goto LABEL_167;
    }
  }

LABEL_207:
  v48 = v62;
LABEL_208:
  v95 = v110;
LABEL_209:
  if (v95)
  {
    v102 = 0;
LABEL_211:
    heap_Free(*(*v23 + 8), v95);
    if (v102)
    {
      heap_Free(*(*v23 + 8), v102);
    }
  }

  return v48;
}

uint64_t oneword_G2PLookup(uint64_t a1, const char **a2, __int16 a3, unsigned __int16 *a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, _WORD *a10, unsigned __int16 *a11, __int16 a12, int a13)
{
  v164 = *MEMORY[0x1E69E9840];
  v162 = a3;
  v142 = *a4;
  v161 = 0;
  v160 = 3;
  v16 = 2 * strlen(*a2);
  if (v16 >= 0x80)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 128;
  }

  v18 = heap_Calloc(*(*a1 + 8), 1, v17);
  v19 = *a1;
  if (!v18)
  {
    oneword_G2PLookup_cold_2(v19);
  }

  v20 = heap_Calloc(*(v19 + 8), 1, (2 * v17));
  v21 = *a1;
  if (!v20)
  {
    oneword_G2PLookup_cold_2(v21);
  }

  v22 = heap_Calloc(*(v21 + 8), 1, v17);
  v23 = *a1;
  if (!v22)
  {
    oneword_G2PLookup_cold_2(v23);
  }

  v24 = heap_Calloc(*(v23 + 8), 1, v17);
  v25 = *a1;
  if (!v24)
  {
    oneword_G2PLookup_cold_2(v25);
  }

  v26 = heap_Calloc(*(v25 + 8), 1, (2 * v17));
  v27 = *a1;
  if (!v26)
  {
    oneword_G2PLookup_cold_2(v27);
  }

  v28 = heap_Calloc(*(v27 + 8), 1, v17);
  v29 = *a1;
  if (!v28)
  {
    oneword_G2PLookup_cold_2(v29);
  }

  v30 = heap_Calloc(*(v29 + 8), 1, v17);
  v31 = *a1;
  __dst = v30;
  if (!v30)
  {
    oneword_G2PLookup_cold_2(v31);
  }

  v32 = heap_Calloc(*(v31 + 8), 1, v17 >> 1);
  if (!v32)
  {
    oneword_G2PLookup_cold_1(a1);
  }

  v33 = v32;
  v159 = 0;
  v158 = a3 - 1;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v143 = *(a1 + 2192) != 0;
  v34 = strlen(*a2);
  v35 = heap_Calloc(*(*a1 + 8), 1, v34 + 1);
  v36 = *a1;
  if (!v35)
  {
    v40 = 2310021130;
    log_OutPublic(*(v36 + 32), "FE_ONEWORD", 34000, 0);
    goto LABEL_316;
  }

  v145 = v35;
  v37 = heap_Calloc(*(v36 + 8), 1, 25016);
  if (!v37)
  {
    v40 = 2310021130;
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0);
    goto LABEL_315;
  }

  v141 = v37;
  MdeSettings = mosynt_ResetMosyntWS(*(a1 + 48), v37);
  if ((MdeSettings & 0x80000000) != 0)
  {
    goto LABEL_310;
  }

  *v18 = 0;
  *v20 = 0;
  *v22 = 0;
  *v24 = 0;
  *v26 = 0;
  *v28 = 0;
  *(a1 + 2172) = 0;
  if (strcmp(a5, (a1 + 300)))
  {
    MdeSettings = oneword_GetMdeSettings(a1, a5);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    __strcpy_chk();
  }

  __src = v22;
  v139 = v20;
  v140 = v33;
  v39 = (*(*(a1 + 56) + 168))(a6, a7, *a8, 0, 1, &v160 + 4, &v161 + 2);
  if ((v39 & 0x80000000) != 0)
  {
LABEL_311:
    v40 = v39;
    goto LABEL_312;
  }

  v40 = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, SHIDWORD(v160), *a8, &v156);
  if ((v40 & 0x80000000) != 0)
  {
LABEL_312:
    v33 = v140;
    goto LABEL_313;
  }

  if ((HIDWORD(v160) - 5) <= 2)
  {
    while (1)
    {
      v40 = (*(*(a1 + 56) + 120))(a6, a7, *a8, a8);
      if ((v40 & 0x80000000) != 0)
      {
        break;
      }

      v33 = v140;
      if (!*a8)
      {
        goto LABEL_314;
      }

      v40 = (*(*(a1 + 56) + 168))(a6, a7, *a8, 0, 1, &v160 + 4, &v161 + 2);
      if ((v40 & 0x80000000) != 0)
      {
        goto LABEL_314;
      }

      if ((HIDWORD(v160) - 5) > 2)
      {
        goto LABEL_25;
      }
    }

LABEL_324:
    v33 = v140;
    goto LABEL_314;
  }

LABEL_25:
  v41 = a8;
  if (*(a1 + 2168) != 1)
  {
    goto LABEL_29;
  }

  v42 = *(a1 + 2072);
  if (v42 != 1)
  {
    if (v42 || *(a1 + 2136))
    {
      goto LABEL_29;
    }

LABEL_321:
    v44 = 0;
    v43 = 1;
    goto LABEL_30;
  }

  if (*(a1 + 2136))
  {
    goto LABEL_321;
  }

LABEL_29:
  v43 = 0;
  v44 = 1;
LABEL_30:
  LOWORD(v45) = *a8;
  if (!*a8)
  {
    goto LABEL_314;
  }

  if (v157 >= *a4)
  {
    LOWORD(v135) = 0;
    goto LABEL_318;
  }

  v126 = v44;
  v127 = v43;
  v128 = 0;
  v135 = 0;
  v125 = a1 + 1228;
  v124 = (a1 + 160);
  v122 = (a1 + 176);
  v123 = (a1 + 168);
  v120 = (a1 + 192);
  v121 = (a1 + 184);
  v118 = (a1 + 208);
  v119 = (a1 + 200);
  v117 = (a1 + 216);
  v129 = -1;
  v136 = 3;
  v130 = 1;
  while (1)
  {
    v154 = 0;
    MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v45, &v161);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    v154 = v161;
    if (v161)
    {
      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_310;
      }

      v46 = v160;
      v47 = v161;
    }

    else
    {
      v47 = 0;
      v46 = 3;
      LODWORD(v160) = 3;
    }

    MdeSettings = oneword_read_LD_W_INPUTSPACETAG(a1, a6, a7, v46, v47, &v156);
    if ((MdeSettings & 0x80000000) != 0)
    {
LABEL_310:
      v40 = MdeSettings;
      goto LABEL_314;
    }

    if ((v160 - 5) <= 2)
    {
      break;
    }

LABEL_48:
    MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *a8, 1, 1, &v162, &v161 + 2);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    v49 = v162;
    v50 = v158;
    if (v162 < v158)
    {
LABEL_50:
      v51 = a8;
      goto LABEL_51;
    }

    v51 = a8;
    if (HIDWORD(v160) != 3 && v136 == 3)
    {
      v129 = *a8;
      v131 = v162;
      if (oneword_GetWord(*(a1 + 224) + v162, *a2, v18))
      {
        if (!v161 || !strcmp(a5, "prompt") || !strcmp(a5, "internal-nuance-system-norm"))
        {
          v53 = v131;
        }

        else
        {
          strcpy(v20, v18);
          MdeSettings = oneword_GetMultiWordLen(a1, v20, a5, v33, &v159);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          v53 = v162;
          v50 = v158;
          v113 = v159;
          if (v159 && v162 > v158)
          {
            for (i = 0; i < v113 && v162 > v158; ++i)
            {
              *&v163[0] = 0;
              v153 = 0;
              v54 = v128;
              if (v128)
              {
                v154 = v128;
              }

              else
              {
                v54 = v154;
                if (!v154)
                {
                  v128 = 0;
                  goto LABEL_89;
                }
              }

              if (*(v33 + i))
              {
                v114 = 0;
                do
                {
                  MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v54, 0, 1, &v153, &v161 + 2);
                  if ((MdeSettings & 0x80000000) != 0)
                  {
                    goto LABEL_310;
                  }

                  if (v153 == 3)
                  {
                    ++v114;
                  }

                  else if (v153 == 5)
                  {
                    v152 = 0;
                    v55 = a7;
                    v56 = a6;
                    (*(*(a1 + 56) + 184))(a6, a7, v154, 9, &v152);
                    if (v152)
                    {
                      __s2 = 0;
                      (*(*(a1 + 56) + 176))(a6, a7, v154, 9, &__s2, &v161 + 2);
                      if (__s2 && strcmp("lid", __s2))
                      {
                        v22 = __src;
                        v20 = v139;
                        break;
                      }

                      v55 = a7;
                      v56 = a6;
                    }

                    v48 = (*(*(a1 + 56) + 176))(v56, v55, v154, 4, v163, &v161 + 2);
                    if ((v48 & 0x80000000) != 0)
                    {
                      goto LABEL_322;
                    }

                    v57 = *&v163[0];
                    v22 = __src;
                    v20 = v139;
                    if (!strcmp(*&v163[0], "phon") || !strcmp(v57, "prompt") || !strcmp(v57, "internal-nuance-system-norm"))
                    {
                      *(v33 + i) = v114;
                      break;
                    }

                    v128 = v154;
                  }

                  MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v154, &v154);
                  if ((MdeSettings & 0x80000000) != 0)
                  {
                    goto LABEL_310;
                  }

                  v54 = v154;
                }

                while (v154 && v114 < *(v33 + i));
              }

LABEL_89:
              if (oneword_GetMultiWord((*(a1 + 224) + v162), *a2, v20, *(v33 + i)))
              {
                strcpy(v26, v20);
                if (((*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a5, v26, 256) & 0x80000000) == 0)
                {
                  MdeSettings = oneword_Lookup(a1, v141, a2, v26, v20, a5, v156, v162, *a8, a6, a7, &v158, 0, a13, v143);
                  if ((MdeSettings & 0x80000000) != 0)
                  {
                    goto LABEL_310;
                  }

                  v58 = v128;
                  if (v158 > *a4)
                  {
                    v59 = v158;
LABEL_94:
                    *a4 = v59;
                    v105 = v59 > v142;
                    v60 = v135;
                    if (!v105)
                    {
                      v60 = v58;
                    }

                    v135 = v60;
                    goto LABEL_108;
                  }

                  if (*(a1 + 2000) && *v26)
                  {
                    v61 = 0;
                    v62 = 0;
                    v63 = 0;
                    do
                    {
                      if (v26[v61] == 95)
                      {
                        v26[v61] = 32;
                        v62 = 1;
                      }

                      v61 = ++v63;
                    }

                    while (strlen(v26) > v63);
                    if (v62)
                    {
                      v39 = oneword_Lookup(a1, v141, a2, v26, v139, a5, v156, v162, *a8, a6, a7, &v158, 0, a13, v143);
                      if ((v39 & 0x80000000) != 0)
                      {
                        goto LABEL_311;
                      }

                      if (v158 > *a4)
                      {
                        v59 = v158;
                        v20 = v139;
                        v33 = v140;
                        v22 = __src;
                        v58 = v128;
                        goto LABEL_94;
                      }
                    }

                    v20 = v139;
                    v33 = v140;
                    v22 = __src;
                  }
                }
              }

LABEL_108:
              v53 = v162;
              v50 = v158;
            }
          }
        }

        if (v53 >= v50)
        {
          MdeSettings = oneword_Lookup(a1, v141, a2, v18, v18, a5, v156, v53, *a8, a6, a7, &v158, 0, a13, v143);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          LOWORD(v50) = v158;
          v133 = v162;
          if (oneword_isInputBetweenPOIMrk(a9, *a11, v162, v158))
          {
            LOWORD(__s2) = 0;
            v53 = v133;
            if (v133 < v50)
            {
              do
              {
                v134 = v53;
                v64 = &(*a2)[v53];
                v115 = *(a1 + 224);
                if (utf8_IsChineseLetter(&v64[v115]))
                {
                  v65 = utf8_determineUTF8CharLength(v64[v115]);
                  v53 = v134 + v65;
                  LOWORD(__s2) = v134 + v65;
                  if (v162 != v134 || v158 > v53)
                  {
                    memset(v163, 0, sizeof(v163));
                    v116 = v134 + v65;
                    __strncpy_chk();
                    MdeSettings = oneword_Lookup(a1, v141, a2, v163, v163, a5, v156, v134, *a8, a6, a7, &__s2, 0, a13, v143);
                    v53 = v116;
                    if ((MdeSettings & 0x80000000) != 0)
                    {
                      goto LABEL_310;
                    }
                  }
                }

                else
                {
                  v53 = v134 + 1;
                }

                LOWORD(v50) = v158;
              }

              while (v158 > v53);
              LOWORD(v53) = v162;
            }
          }

          else
          {
            LOWORD(v53) = v133;
          }
        }

        if (v53 >= v50)
        {
          strcpy(v24, v18);
          if (((*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a5, v24, 128) & 0x80000000) == 0)
          {
            if (strcmp(v18, v24))
            {
              MdeSettings = oneword_Lookup(a1, v141, a2, v24, v18, a5, v156, v162, *a8, a6, a7, &v158, 0, a13, v143);
              if ((MdeSettings & 0x80000000) != 0)
              {
                goto LABEL_310;
              }
            }
          }
        }
      }

      v49 = v162;
      LOWORD(v50) = v158;
      if (v162 >= v158)
      {
        v51 = a8;
        if (!*(a1 + 292))
        {
          v130 = 0;
          goto LABEL_138;
        }

        LOWORD(v163[0]) = 0;
        MdeSettings = oneword_NonDctDpsMde(a1, v162, v18, a5, *a8, v163, a6, a7);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        if (LOWORD(v163[0]))
        {
          LODWORD(v160) = 0;
          LOWORD(v161) = v163[0];
        }

        v130 = 0;
        v49 = v162;
        LOWORD(v50) = v158;
      }

      else
      {
        v130 = 0;
      }

      v51 = a8;
    }

LABEL_138:
    if (v49 < v50 || v136 == 3 && v160 == 3)
    {
      if (v49 < v50 || v136 != 3 || v160 != 3)
      {
        goto LABEL_51;
      }

      if (HIDWORD(v160))
      {
        if (HIDWORD(v160) <= 2)
        {
          LOWORD(v163[0]) = 0;
          LOWORD(__s2) = 0;
          v66 = v51;
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", v18, HIDWORD(v160));
          v158 = v162 + strlen(v18);
          HIDWORD(v160) = 4;
          MdeSettings = (*(*(a1 + 56) + 88))(a6, a7, *v66, v66);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 0, 1, &v160 + 4, v163);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 1, 1, &v162, v163);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 2, 1, &v158, v163);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 3, 1, "", v163);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 5, 2, "*", v163);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          MdeSettings = (*(*(a1 + 56) + 160))(a6, a7, *a8, 6, 2, "*", v163);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          LOWORD(__s2) = 1;
          v40 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 7, 1, &__s2, v163);
          if ((v40 & 0x80000000) != 0)
          {
            goto LABEL_324;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 9, 1, "", v163);
          v51 = a8;
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }
        }

        goto LABEL_51;
      }

      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *v51, 2, 1, &v157, &v161 + 2);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_310;
      }

      v72 = *(a1 + 224);
      v73 = v72 + v162;
      v74 = (v157 + v72) - (v72 + v162);
      if (v74 >= 128)
      {
        v75 = 128;
      }

      else
      {
        v75 = v74;
      }

      strncpy(v22, &(*a2)[v73], v75);
      v22[v75] = 0;
      *(a1 + 2172) = 0;
      strcpy(v28, v22);
      v76 = a5;
      v77 = (*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), a5, v28, 128);
      v51 = a8;
      if (v77 < 0)
      {
LABEL_180:
        v81 = *(a1 + 2168);
        v82 = v162;
        v83 = v158;
      }

      else
      {
        if (*(a1 + 2192))
        {
          LODWORD(v163[0]) = 0;
          v79 = strcmp(v18, v22) == 0;
          MdeSettings = mde_MosyntMorphAna(a1, v141, v28, v22, a5, v162, *a8, v80, a6, a7, &v158, v79, v163);
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          if (LODWORD(v163[0]) == 1)
          {
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD WGRAM %s", v22);
          }

          v76 = a5;
          v51 = a8;
          goto LABEL_180;
        }

        if (*(a1 + 2168) == 1 && !strstr(a5, "latin") && (!v126 || strcmp(a5, "prompt") && strcmp(a5, "internal-nuance-system-norm")))
        {
          strcpy(__dst, v22);
          if (((*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a5, __dst, 128) & 0x80000000) != 0)
          {
            strcpy(__dst, __src);
          }

          v39 = crf_mde_seg_label(*a1, *a2, a1 + 2016, __dst, v162, *(a1 + 224), &v158, a8, *(a1 + 56), a6, a7, *(a1 + 80), *(a1 + 64), *(a1 + 72), *(a1 + 1224), v125, *(a1 + 556), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), a5, v124, v123, v122, v121, v120, v119, v118, v117, *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 1208), 0);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v20 = v139;
          v33 = v140;
          v22 = __src;
          v76 = a5;
          if (v162 < v158)
          {
            *(a1 + 2172) = 1;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", __src);
          }
        }

        v82 = v162;
        v83 = v158;
        v51 = a8;
        if (v162 >= v158 && *(a1 + 296))
        {
          v39 = oneword_DpsMde(a1, v28, v22, "g2p", v76, v162, *a8, v78, a6, a7, &v158);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v82 = v162;
          v83 = v158;
          if (v162 >= v158)
          {
            v51 = a8;
            v20 = v139;
            v33 = v140;
            v22 = __src;
          }

          else
          {
            v22 = __src;
            log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MDE %s", __src);
            v82 = v162;
            v83 = v158;
            v51 = a8;
            v20 = v139;
            v33 = v140;
          }

          v76 = a5;
        }

        v81 = *(a1 + 2168);
        if (!v81)
        {
          if (v82 >= v83)
          {
            v39 = mde_Main(a1, v28, v22, v76, v82, *v51, a6, a7, &v158);
            if ((v39 & 0x80000000) != 0)
            {
              goto LABEL_311;
            }

            v76 = a5;
            v51 = a8;
            v20 = v139;
            v33 = v140;
            v22 = __src;
            if (v162 < v158)
            {
              log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE %s", __src);
              v51 = a8;
            }
          }

          goto LABEL_180;
        }
      }

      v105 = v82 < v83;
      v84 = v130;
      if (!v105)
      {
        v84 = 1;
      }

      v130 = v84;
      if (v81 == 1)
      {
        v85 = v127;
        if (v127)
        {
          v86 = strstr(v76, "latin");
          v85 = v127;
          v51 = a8;
          if (v86)
          {
LABEL_189:
            if (!strstr(v76, "latin"))
            {
              goto LABEL_50;
            }

            v87 = 1;
            v51 = a8;
            goto LABEL_224;
          }
        }

        MdeSettings = oneword_joinTokens(a1, a6, a7, v129, v51, v85);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        v81 = *(a1 + 2168);
        v76 = a5;
        v51 = a8;
        if (v81 == 1)
        {
          if (v127)
          {
            goto LABEL_189;
          }

          v87 = 1;
LABEL_224:
          v97 = oneword_ProcessNTokens(a1, v141, a2, v76, a6, a7, v129, *v51, a9, a10, a11, a12, v130, v87, v87);
          v51 = a8;
          if ((v97 & 0x80000000) != 0)
          {
            v40 = v97;
            goto LABEL_324;
          }

          goto LABEL_51;
        }
      }

      if (v81)
      {
        goto LABEL_51;
      }

      v87 = 0;
      goto LABEL_224;
    }

    if (HIDWORD(v160) < 2 || HIDWORD(v160) == 2 && *(a1 + 936) == 1)
    {
      MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *v51, 2, 1, &v157, &v161 + 2);
      if ((MdeSettings & 0x80000000) != 0)
      {
        goto LABEL_310;
      }

      v67 = *(a1 + 224);
      v68 = v67 + v162;
      v69 = (v157 + v67) - (v67 + v162);
      if (v69 >= 128)
      {
        v70 = 128;
      }

      else
      {
        v70 = v69;
      }

      strncpy(v22, &(*a2)[v68], v70);
      v22[v70] = 0;
      *(a1 + 2172) = 0;
      strcpy(v28, v22);
      if (((*(*(a1 + 80) + 136))(*(a1 + 64), *(a1 + 72), a5, v28, 128) & 0x80000000) != 0)
      {
        strcpy(v28, v22);
      }

      else if (strcmp(v24, v28))
      {
        MdeSettings = oneword_Lookup(a1, v141, a2, v28, v22, a5, v156, v162, *a8, a6, a7, &v158, 1, a13, v143);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        if (v158 > v162)
        {
          *&v163[0] = 0;
          LOWORD(__s2) = 0;
          v39 = (*(*(a1 + 56) + 136))(a6, a7, *a8, &__s2);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 176))(a6, a7, __s2, 3, v163, &v161 + 2);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          oneword_ReplaceUnderscoreWithDot(*&v163[0]);
          v22 = __src;
          v20 = v139;
        }
      }

      v88 = v162;
      if (v162 >= v158)
      {
        v51 = a8;
        if (HIDWORD(v160) == 1)
        {
          LOWORD(v163[0]) = 0;
          LOWORD(__s2) = 0;
          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Front end oneword: Digit or punctuation not in G2P dictionary. Word='%s', tokenType=%d", v18, 1);
          v158 = v162 + strlen(v22);
          HIDWORD(v160) = 4;
          v39 = (*(*(a1 + 56) + 88))(a6, a7, *a8, a8);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 0, 1, &v160 + 4, v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 1, 1, &v162, v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 2, 1, &v158, v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 3, 1, "", v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 5, 2, "*", v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 6, 2, "*", v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          LOWORD(__s2) = 1;
          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 7, 1, &__s2, v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 160))(a6, a7, *a8, 9, 1, "", v163);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          v39 = (*(*(a1 + 56) + 120))(a6, a7, *a8);
          v51 = a8;
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }
        }

        else if (!HIDWORD(v160))
        {
          if (*(a1 + 2192))
          {
            LODWORD(v163[0]) = 0;
            v89 = strlen(v18);
            v90 = strlen(v22);
            v92 = v89;
            if (v89 < 2u)
            {
              v96 = 0;
            }

            else
            {
              LOWORD(__s2) = v18[v89 - 1];
              v93 = v90;
              v94 = v92;
              v95 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), &__s2);
              v92 = v94;
              v106 = v95 == 0;
              v90 = v93;
              v96 = !v106;
              v88 = v162;
            }

            v99 = v96 & (v90 == v92 - 1);
            if (v92 == v90)
            {
              v99 = 1;
            }

            MdeSettings = mde_MosyntMorphAna(a1, v141, v28, v22, a5, v88, *a8, v91, a6, a7, &v158, v99, v163);
            v51 = a8;
            v33 = v140;
            if ((MdeSettings & 0x80000000) != 0)
            {
              goto LABEL_310;
            }
          }

          else
          {
            if (*(a1 + 2168) == 1 && !strstr(a5, "latin") && (!v126 || strcmp(a5, "prompt") && strcmp(a5, "internal-nuance-system-norm")))
            {
              strcpy(__dst, v22);
              if (((*(*(a1 + 80) + 104))(*(a1 + 64), *(a1 + 72), a5, __dst, 128) & 0x80000000) != 0)
              {
                strcpy(__dst, __src);
              }

              v39 = crf_mde_seg_label(*a1, *a2, a1 + 2016, __dst, v162, *(a1 + 224), &v158, a8, *(a1 + 56), a6, a7, *(a1 + 80), *(a1 + 64), *(a1 + 72), *(a1 + 1224), v125, *(a1 + 556), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 560), a5, v124, v123, v122, v121, v120, v119, v118, v117, *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 1208), 1);
              if ((v39 & 0x80000000) != 0)
              {
                goto LABEL_311;
              }

              if (v162 < v158)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD CRF MDE SEG %s", __src);
                *(a1 + 2172) = 1;
              }

              v22 = __src;
              if (!*(a1 + 2068))
              {
                if (*(a1 + 2172))
                {
                  v98 = (*(*(a1 + 56) + 120))(a6, a7, *a8);
                  if ((v98 & 0x80000000) != 0)
                  {
                    v40 = v98;
                    v20 = v139;
                    v33 = v140;
                    goto LABEL_314;
                  }
                }
              }
            }

            if (v162 >= v158 && *(a1 + 296))
            {
              v39 = oneword_DpsMde(a1, v28, v22, "g2p", a5, v162, *a8, v71, a6, a7, &v158);
              if ((v39 & 0x80000000) != 0)
              {
                goto LABEL_311;
              }

              v22 = __src;
              if (v162 < v158)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DEPES MAIN %s", __src);
              }
            }

            v51 = a8;
            v20 = v139;
            v33 = v140;
            if (!*(a1 + 2168) && v162 >= v158)
            {
              v39 = mde_Main(a1, v28, v22, a5, v162, *a8, a6, a7, &v158);
              if ((v39 & 0x80000000) != 0)
              {
                goto LABEL_311;
              }

              v51 = a8;
              v20 = v139;
              v33 = v140;
              v22 = __src;
              if (v162 < v158)
              {
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "OOV_METHOD DCTBASEDMDE MAIN %s", __src);
                v51 = a8;
              }
            }
          }
        }

        v100 = v130;
        if (v162 >= v158)
        {
          v100 = 1;
        }

        v130 = v100;
      }

      else
      {
        v51 = a8;
      }
    }

    if ((v129 & 0x8000) == 0)
    {
      if (HIDWORD(v160) == 3 || v160 != 3)
      {
LABEL_282:
        if (*(a1 + 2168) != 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, v129, 1, 1, &v157 + 2, &v161 + 2);
        if ((MdeSettings & 0x80000000) != 0)
        {
          goto LABEL_310;
        }

        v101 = v145;
        *v145 = 0;
        if (v157 > HIWORD(v157))
        {
          v101 = strncpy(v145, &(*a2)[*(a1 + 224) + HIWORD(v157)], v157 - HIWORD(v157));
          v101[v157 - HIWORD(v157)] = 0;
        }

        if (*(a1 + 936) && utf8_IsChineseLetter(v101))
        {
          v102 = *(a1 + 224);
          ChineseUTFCharNum = utf8_GetChineseUTFCharNum(*a2, (v157 + v102));
          v103 = ChineseUTFCharNum - utf8_GetChineseUTFCharNum(*a2, (*(a1 + 224) + HIWORD(v157)));
          while (1)
          {
            v104 = (*a2)[v157 + v102];
            if (v104 == 32)
            {
              break;
            }

            v105 = v104 == 95 || v102 > 5;
            v106 = v105 || v104 == 0;
            if (v106)
            {
              break;
            }

            ++v102;
          }

          MdeSettings = oneword_SkipCrosstoken(a1, a6, a7, a5, v103, SHIWORD(v157), v157 + v102 - *(a1 + 224), v129, *a8);
          v51 = a8;
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          goto LABEL_282;
        }

        v107 = *(a1 + 2168);
        v51 = a8;
        if (!v107)
        {
          goto LABEL_278;
        }

        if (v107 != 1)
        {
          goto LABEL_51;
        }

        if (!v127 || (v108 = strstr(a5, "latin"), v51 = a8, v108))
        {
LABEL_278:
          v109 = v51;
          v39 = oneword_ProcessNTokens(a1, v141, a2, a5, a6, a7, v129, *v51, a9, a10, a11, a12, v130, *(a1 + 2172), v107);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          MdeSettings = (*(*(a1 + 56) + 168))(a6, a7, *v109, 2, 1, &v157, &v161 + 2);
          v51 = v109;
          v20 = v139;
          v33 = v140;
          v22 = __src;
          if ((MdeSettings & 0x80000000) != 0)
          {
            goto LABEL_310;
          }

          goto LABEL_282;
        }
      }

      if (HIDWORD(v160) != 3 && v160 == 3 || v158 == *a4)
      {
        v110 = v127;
        if (v127 && (v111 = strstr(a5, "latin"), v110 = v127, v51 = a8, !v111) || v126 && *(a1 + 2172))
        {
          v39 = oneword_joinTokens(a1, a6, a7, v129, v51, v110);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }

          *(a1 + 2172) = 0;
          v51 = a8;
        }

        v22 = __src;
        v20 = v139;
      }
    }

LABEL_51:
    v52 = v51;
    v40 = (*(*(a1 + 56) + 168))(a6, a7, *v51, 2, 1, &v157, &v161 + 2);
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_324;
    }

    v45 = v161;
    *v52 = v161;
    v136 = HIDWORD(v160);
    HIDWORD(v160) = v160;
    v41 = v52;
    if (!v45)
    {
      v33 = v140;
LABEL_318:
      if (v135)
      {
        *v41 = v135;
      }

      goto LABEL_314;
    }

    v33 = v140;
    if (v157 >= *a4)
    {
      goto LABEL_318;
    }
  }

  while (1)
  {
    MdeSettings = (*(*(a1 + 56) + 120))(a6, a7, v161, &v161);
    if ((MdeSettings & 0x80000000) != 0)
    {
      goto LABEL_310;
    }

    if (!v161)
    {
      LODWORD(v160) = 3;
      goto LABEL_48;
    }

    v48 = (*(*(a1 + 56) + 168))(a6, a7);
    if ((v48 & 0x80000000) != 0)
    {
      break;
    }

    v48 = (*(*(a1 + 56) + 168))(a6, a7, v161, 1, 1, &v155 + 2, &v161 + 2);
    if ((v48 & 0x80000000) != 0)
    {
      break;
    }

    v48 = (*(*(a1 + 56) + 168))(a6, a7, v161, 2, 1, &v155, &v161 + 2);
    if ((v48 & 0x80000000) != 0)
    {
      break;
    }

    v22 = __src;
    v20 = v139;
    if ((v160 - 5) >= 3)
    {
      goto LABEL_48;
    }
  }

LABEL_322:
  v40 = v48;
LABEL_313:
  v22 = __src;
  v20 = v139;
LABEL_314:
  heap_Free(*(*a1 + 8), v141);
LABEL_315:
  heap_Free(*(*a1 + 8), v145);
LABEL_316:
  heap_Free(*(*a1 + 8), v18);
  heap_Free(*(*a1 + 8), v20);
  heap_Free(*(*a1 + 8), v22);
  heap_Free(*(*a1 + 8), v24);
  heap_Free(*(*a1 + 8), v26);
  heap_Free(*(*a1 + 8), v28);
  heap_Free(*(*a1 + 8), __dst);
  heap_Free(*(*a1 + 8), v33);
  return v40;
}