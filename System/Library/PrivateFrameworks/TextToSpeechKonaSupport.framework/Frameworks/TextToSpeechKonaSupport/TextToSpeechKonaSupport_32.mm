uint64_t vrd_tvar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v67 = 0;
  v66 = 0;
  HIWORD(v65) = 0;
  v64 = 0;
  v62 = a3;
  v8 = *(a3 + 8);
  v9 = &vstmtbl[12 * *(a3 + 8)];
  v10 = v8;
  while (1)
  {
    v11 = v5;
    if (v7)
    {
      vinitflds(a1, v8, *v62, v5);
      if (v6 != 10)
      {
        v60 = OUTLINED_FUNCTION_6_60();
        if (vf_getc(v60, v61) != 10)
        {
          OUTLINED_FUNCTION_6_60();
          vf_ungetc();
        }
      }

      return 0;
    }

    v12 = gettok_0(a1, v8, a2, __s1);
    if (!v12)
    {
      break;
    }

    v6 = v12;
    if (checkInterrupt(a1))
    {
      break;
    }

    v7 = 0;
    v5 = v11;
    if (v6 != 10)
    {
      v13 = STMTYP(v10);
      v7 = 1;
      v5 = v11;
      switch(v13)
      {
        case -5:
          v21 = chk_ftok(__s1);
          if (v21)
          {
            v64 = atof(__s1);
            v7 = 1;
            v5 = &v64;
          }

          else
          {
            v57 = OUTLINED_FUNCTION_10_56(v21, v22, v23, v24, v25, v26, v27, v28, v62, v63, v64, v65);
            v7 = 0;
            v5 = &v64;
            if (v57)
            {
              return 1;
            }
          }

          continue;
        case -4:
          v48 = chk_itok(__s1);
          if (v48)
          {
            HIWORD(v65) = atoi(__s1);
            v7 = 1;
            v5 = (&v65 + 6);
          }

          else
          {
            v58 = OUTLINED_FUNCTION_10_56(v48, v49, v50, v51, v52, v53, v54, v55, v62, v63, v64, v65);
            v7 = 0;
            v5 = (&v65 + 6);
            if (v58)
            {
              return 1;
            }
          }

          break;
        case -3:
          v34 = chk_itok(__s1);
          if (v34)
          {
            v66 = atol(__s1);
            v7 = 1;
            v5 = &v66;
          }

          else
          {
            v56 = OUTLINED_FUNCTION_10_56(v34, v35, v36, v37, v38, v39, v40, v41, v62, v63, v64, v65);
            v7 = 0;
            v5 = &v66;
            if (v56)
            {
              return 1;
            }
          }

          continue;
        case -2:
          HIDWORD(v63) = v10;
          v42 = 0;
          v43 = v9;
          v44 = v9[1];
          v45 = *(v44 + 14);
          v46 = v45 & ~(v45 >> 31);
          while (1)
          {
            v67 = v42;
            if (v46 == v42)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v44 + 2) + 8 * v42++));
            if (!v13)
            {
              LODWORD(v46) = v42 - 1;
              break;
            }
          }

          v7 = 1;
          v5 = &v67;
          v33 = v46 == v45;
          v9 = v43;
          v10 = HIDWORD(v63);
LABEL_20:
          if (v33)
          {
            v47 = OUTLINED_FUNCTION_10_56(v13, v14, v15, v16, v17, v18, v19, v20, v62, v63, v64, v65);
            v7 = 0;
            v5 = v11;
            if (v47)
            {
              return 1;
            }
          }

          continue;
        case -1:
          v29 = 0;
          v30 = v9[1];
          v31 = *(v30 + 14);
          do
          {
            v68 = v29;
            v32 = v29;
            if (v29 >= v31)
            {
              break;
            }

            v13 = strcmp(__s1, *(*(v30 + 2) + 8 * v29));
            v29 = v32 + 1;
          }

          while (v13);
          v7 = 1;
          v5 = &v68;
          v33 = v32 == v31;
          goto LABEL_20;
        default:
          continue;
      }
    }
  }

  OUTLINED_FUNCTION_24_36();
  return 1;
}

uint64_t gettok_0(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v4 = &vstmtbl[12 * a2];
  v5 = *(v4 + 20);
  v6 = a2;
  if (STMTYP(a2) == -4 || STMTYP(v6) == -3)
  {
    v7 = 0;
  }

  else
  {
    v8 = STMTYP(v6) != -5 && v5 == 1;
    v7 = v8;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = OUTLINED_FUNCTION_12_53();
    v13 = vf_getc(v11, v12);
    v14 = v13;
    if (v13 == 92)
    {
      v15 = OUTLINED_FUNCTION_12_53();
      v17 = vf_getc(v15, v16);
      v18 = v17;
      if ((v17 & 0xFFFFFFF8) == 0x30)
      {
        v19 = 0;
        while ((v18 & 0xFFFFFFF8) == 0x30)
        {
          v19 = v18 + 8 * v19 - 48;
          v20 = OUTLINED_FUNCTION_12_53();
          v18 = vf_getc(v20, v21);
        }

        OUTLINED_FUNCTION_12_53();
        vf_ungetc();
        LOBYTE(v18) = v19;
      }

      else
      {
        if ((v17 & 0xFFFFFFDF) == 0x58)
        {
          for (LOBYTE(v18) = 0; ; LOBYTE(v18) = v24 + 16 * v18 + v25)
          {
            v22 = OUTLINED_FUNCTION_12_53();
            v24 = vf_getc(v22, v23);
            if ((v24 - 48) >= 0xA)
            {
              if ((v24 - 97) >= 6)
              {
                if ((v24 - 65) > 5)
                {
                  OUTLINED_FUNCTION_12_53();
                  vf_ungetc();
                  goto LABEL_27;
                }

                v25 = -55;
              }

              else
              {
                v25 = -87;
              }
            }

            else
            {
              v25 = -48;
            }
          }
        }

        switch(v17)
        {
          case 'n':
            LOBYTE(v18) = 10;
            break;
          case 'o':
          case 'p':
          case 'q':
          case 's':
          case 'u':
            break;
          case 'r':
            LOBYTE(v18) = 13;
            break;
          case 't':
            LOBYTE(v18) = 9;
            break;
          case 'v':
            LOBYTE(v18) = 11;
            break;
          default:
            switch(v17)
            {
              case 'a':
                LOBYTE(v18) = 7;
                break;
              case 'f':
                LOBYTE(v18) = 12;
                break;
              case 'b':
                LOBYTE(v18) = 8;
                break;
            }

            break;
        }
      }

LABEL_27:
      v14 = v18;
    }

    if (v13 != 92 && v14 == 10)
    {
      break;
    }

    if (v13 != 92 && (v14 + 1) <= 1)
    {
      LOBYTE(v14) = 0;
LABEL_71:
      *a4 = 0;
      return v14;
    }

    if (v13 == 92)
    {
      goto LABEL_48;
    }

    if (v14 == *(v4 + 84))
    {
      v8 = v9 == 0;
      v9 = 1;
      if (!v8)
      {
        if (v14 == *(v4 + 85))
        {
          goto LABEL_78;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v14 == *(v4 + 85))
      {
        if (v9)
        {
LABEL_78:
          *a4 = 0;
          LOBYTE(v14) = *(a4 - 1);
          return v14;
        }

LABEL_73:
        LOBYTE(v14) = 0;
        return v14;
      }

LABEL_48:
      if (v13 == 92 || (v14 == 32 ? (v28 = v5 == 1) : (v28 = 1), v28 || v9))
      {
        *a4++ = v14;
        v29 = v7 ^ 1;
        if (v9)
        {
          v29 = 1;
        }

        if (v7)
        {
          v9 = 1;
        }

        else
        {
          v10 = 1;
        }

        if ((v29 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v9 = 0;
        v8 = v10 == 0;
        v10 = 0;
        if (!v8)
        {
          *a4 = 0;
          LOBYTE(v14) = 32;
          return v14;
        }
      }
    }
  }

  if (v9)
  {
    if (v5 == 1)
    {
      LOBYTE(v14) = *(v4 + 84);
      *a4 = v14;
      return v14;
    }

    goto LABEL_73;
  }

  *a4 = 0;
  if (v10)
  {
    OUTLINED_FUNCTION_12_53();
    vf_ungetc();
    LOBYTE(v14) = *(a4 - 1);
  }

  else
  {
    LOBYTE(v14) = 10;
  }

  return v14;
}

uint64_t rdtokverr(uint64_t a1, unsigned __int8 a2, uint64_t a3, size_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  lithex(a4, v12, 75);
  readErrorReport(a1, a2, v6, "%s is not a token name in stream %s", v7, v8, v9, v10, v12);
  return var_rderr();
}

uint64_t chk_ftok(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 > 0x2E || ((1 << v1) & 0x680000000000) == 0;
  if (v2 && (v1 - 48) > 9)
  {
    return 0;
  }

  v3 = 0;
  for (i = a1 + 1; ; ++i)
  {
    if (v1 == 46)
    {
      if (v3)
      {
        return 0;
      }

      v1 = *i;
      if (!*i)
      {
        return 0;
      }

      v3 = 1;
    }

    else
    {
      v1 = *i;
    }

    if (v1 != 46)
    {
      break;
    }

LABEL_14:
    ;
  }

  if (v1)
  {
    if ((v1 - 48) >= 0xA)
    {
      return 0;
    }

    goto LABEL_14;
  }

  return 1;
}

uint64_t vrd_delta(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0.0;
  v43 = 0;
  v6 = a3;
  v44 = STMTYP(a3);
  v7 = &vstmtbl[12 * a3];
  v9 = v7[1];
  v8 = v7 + 1;
  BYTE2(v44) = v9[32];
  v10 = *(a1 + 200);
  v11 = *(v10 + 292);
  v12 = *(v10 + 1720) - v11;
  *(v10 + 1720) = v12;
  *(v10 + 1728) -= v11;
  *v12 = 5;
  *(v12 + 8) = *(v10 + 1760);
  *(v10 + 1760) = v12;
  while (1)
  {
    v13 = OUTLINED_FUNCTION_6_60();
    v16 = gettok_0(v13, v14, a2, v15);
    if (v16 == 10)
    {
      return 0;
    }

    v17 = v16;
    if (checkInterrupt(a1))
    {
      return 1;
    }

    if (!v17)
    {
      OUTLINED_FUNCTION_24_36();
      return 1;
    }

    switch(STMTYP(v6))
    {
      case 0xFFFBu:
        v43 = &v45;
        if (!chk_ftok(__s1))
        {
          goto LABEL_23;
        }

        v45 = atof(__s1);
        goto LABEL_25;
      case 0xFFFCu:
        v43 = &v46;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v46 = atoi(__s1);
        goto LABEL_25;
      case 0xFFFDu:
        v43 = &v47;
        if (!chk_itok(__s1))
        {
          goto LABEL_23;
        }

        v47 = atol(__s1);
        goto LABEL_25;
      case 0xFFFEu:
        v23 = 0;
        v43 = &v48;
        v24 = *v8;
        v25 = *(*v8 + 14);
        v26 = v25 & ~(v25 >> 31);
        break;
      case 0xFFFFu:
        v18 = 0;
        v43 = &v49;
        v19 = *v8;
        v20 = *(*v8 + 14);
        do
        {
          v49 = v18;
          v21 = v18;
          if (v18 >= v20)
          {
            break;
          }

          v22 = strcmp(__s1, *(*(v19 + 2) + 8 * v18));
          v18 = v21 + 1;
        }

        while (v22);
        if (v21 != v20)
        {
          goto LABEL_25;
        }

LABEL_23:
        v35 = OUTLINED_FUNCTION_17_46();
        readErrorReport(v35, v36, v37, "%s is not a token name", v38, v39, v40, v41, __s1);
        goto LABEL_24;
      default:
        goto LABEL_25;
    }

    while (1)
    {
      v48 = v23;
      if (v26 == v23)
      {
        break;
      }

      if (!strcmp(__s1, *(*(v24 + 2) + 8 * v23++)))
      {
        LODWORD(v26) = v23 - 1;
        break;
      }
    }

    if (v26 == v25)
    {
      v28 = OUTLINED_FUNCTION_17_46();
      readErrorReport(v28, v29, v30, "%s is not a token name", v31, v32, v33, v34, __s1);
      v43 = 0;
LABEL_24:
      OUTLINED_FUNCTION_17_46();
      if (dlt_rderr())
      {
        return 1;
      }
    }

LABEL_25:
    vpush_var(a1, &v43);
  }
}

uint64_t dlt_rderr()
{
  OUTLINED_FUNCTION_14_52();
  if (OUTLINED_FUNCTION_26_36(v2, v3, "cmdwin") || (v4 = 1, v5 = OUTLINED_FUNCTION_8_59(), OUTLINED_FUNCTION_26_36(v5, v6, v7)))
  {
    v8 = OUTLINED_FUNCTION_8_59();
    v10 = logicalFileInputBuffer(v8, v9);
    v11 = dynaBufMoveRel(v10, 0);
    v12 = dynaBufLength(v10);
    dynaBufMoveAbs(v10, v12 - 1);
    dynaBufDeleteChars(v10, 1uLL);
    dynaBufMoveAbs(v10, v11);
    v13 = dynaBufContents(v10);
    v23 = v13 + v11 - strlen(v1);
    v14 = OUTLINED_FUNCTION_8_59();
    vf_printf(v14, v15, 1, v16, v23);
    v17 = *(v0 + 200);
    v18 = *(v17 + 1744);
    if (v18)
    {
      v19 = *(v17 + 1760);
      *(v17 + 1720) = v19;
      *(v17 + 1728) = *(v17 + 1780) + v19 - *(v18 + 32);
    }

    v20 = OUTLINED_FUNCTION_8_59();
    vf_clrbuf(v20, v21);
    return 0;
  }

  return v4;
}

uint64_t vprt_strm(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, const char *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  while (1)
  {
    OUTLINED_FUNCTION_23_38();
    if (a3 == a4 || a3 == v14)
    {
      break;
    }

    a3 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a5)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a3 || (*a3 & 2) == 0)
    {
      disptok(v13, a3 + 16, a5, a6, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

      __strcat_chk();
      v16 = OUTLINED_FUNCTION_6_60();
      vf_puts(v16, v17, v18, 0);
      a3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v19 = strlen(a7);
  __memset_chk();
  __s1[v19] = 0;
  v20 = OUTLINED_FUNCTION_6_60();
  vf_puts(v20, v21, v22, 0);
  __memset_chk();
  v23 = OUTLINED_FUNCTION_6_60();
  return vf_puts(v23, v24, v25, 1);
}

uint64_t disptok(int a1, int a2, int a3, int a4, char *__s1)
{
  v6 = &vstmtbl[12 * a3];
  v7 = &v6[1][40 * a4];
  switch(*(v7 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_7_59();
      v9(v8);
      v10 = OUTLINED_FUNCTION_3_65();
      v28 = *v11(v10);
      sprintf(__s1, v6, v28);
      break;
    case 0xFFFC:
      v23 = OUTLINED_FUNCTION_7_59();
      v24(v23);
      v25 = OUTLINED_FUNCTION_3_65();
      v20 = *v26(v25);
      goto LABEL_8;
    case 0xFFFD:
      v16 = OUTLINED_FUNCTION_7_59();
      v17(v16);
      v18 = OUTLINED_FUNCTION_3_65();
      v20 = *v19(v18);
LABEL_8:
      sprintf(__s1, v6, v20);
      break;
    case 0xFFFE:
      v12 = *(v7 + 16);
      v21 = OUTLINED_FUNCTION_7_59();
      v15 = *v22(v21);
      goto LABEL_6;
    case 0xFFFF:
      v12 = *(v7 + 16);
      v13 = OUTLINED_FUNCTION_7_59();
      v15 = *v14(v13);
LABEL_6:
      strcpy(__s1, *(v12 + 8 * v15));
      break;
    default:
      break;
  }

  result = strcmp(__s1, "undefined");
  if (!result)
  {
    *__s1 = 2960685;
  }

  return result;
}

uint64_t vsvdelta(uint64_t a1, char a2)
{
  v2 = *(a1 + 200);
  if (!*(v2 + 248))
  {
    return 0;
  }

  *(v2 + 478) = a2;
  if (!*(v2 + 400))
  {
    v4 = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 400) = v4;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = 0;
  v6 = 8 * *(a1 + 288);
  while (v6 != v5)
  {
    *(*(*(a1 + 200) + 400) + v5) = **(a1 + 200);
    v5 += 8;
  }

  v7 = OUTLINED_FUNCTION_5_61();
  vf_puts(v7, v8, v9, v10);
  v11 = 0;
  v12 = vstmtbl;
  while (v11 < *(a1 + 288))
  {
    v72 = *v12;
    v13 = OUTLINED_FUNCTION_2_70(*(a1 + 200));
    __sprintf_chk(v13, v14, v15, "\nset ^_%s = ^left", v72);
    v16 = OUTLINED_FUNCTION_0_77();
    vf_puts(v16, v17, v18, v19);
    v20 = *v12;
    v12 += 12;
    v21 = OUTLINED_FUNCTION_2_70(*(a1 + 200));
    __sprintf_chk(v21, v22, v23, "\ndelta delete %s ^left...^right", v20);
    v24 = OUTLINED_FUNCTION_0_77();
    vf_puts(v24, v25, v26, v27);
    ++v11;
  }

  v28 = OUTLINED_FUNCTION_5_61();
  vf_puts(v28, v29, v30, v31);
  v32 = *(a1 + 288);
  while (1)
  {
    v33 = __OFSUB__(v32--, 1);
    if (v32 < 0 != v33)
    {
      break;
    }

    OUTLINED_FUNCTION_4_61();
    vf_puts(a1, v34, "\nprint . to cmdout", 1);
    v35 = OUTLINED_FUNCTION_6_60();
    reach(v35, v36, v37, 0xFFFFFFFF);
  }

  OUTLINED_FUNCTION_4_61();
  v38 = OUTLINED_FUNCTION_5_61();
  vf_puts(v38, v39, v40, v41);
  v42 = 0;
  v43 = vstmtbl;
  while (v42 < *(a1 + 288))
  {
    v44 = *v43;
    v43 += 12;
    v45 = OUTLINED_FUNCTION_2_70(*(a1 + 200));
    __sprintf_chk(v45, v46, v47, "\ndelta delete %s ^_%s", v44, v44);
    v48 = OUTLINED_FUNCTION_0_77();
    vf_puts(v48, v49, v50, v51);
    ++v42;
  }

  v52 = 1162;
  v53 = 9186;
  while (v52 - 1161 < *(a1 + 16))
  {
    v54 = *(a1 + 192);
    v55 = v54 + v53;
    if (*(v54 + v53 - 2) == -6 && (*(v54 + v53) & 0x20) == 0)
    {
      v56 = **(v54 + 8 * v52);
      v57 = *(a1 + 200);
      if (v56 == *v57 || v56 == v57[1])
      {
        v73 = *(v55 - 18);
        v58 = OUTLINED_FUNCTION_13_52();
        __sprintf_chk(v58, v59, v60, v61, v73);
        v62 = OUTLINED_FUNCTION_0_77();
        vf_puts(v62, v63, v64, v65);
      }
    }

    ++v52;
    v53 += 24;
  }

  OUTLINED_FUNCTION_4_61();
  v66 = 1;
  v67 = OUTLINED_FUNCTION_5_61();
  vf_puts(v67, v68, v69, v70);
  return v66;
}

void reach(uint64_t result, int a2, _BYTE *a3, unsigned int a4)
{
  v5 = *(*(*(result + 200) + 400) + 8 * a2);
  if (v5 != a3)
  {
    for (i = VRSYNC(result, v5, a2); i != a3; i = VRSYNC(result, i, a2))
    {
      v8 = 0;
      v9 = 0;
      for (j = vstmtbl; ; j += 12)
      {
        OUTLINED_FUNCTION_18_45();
        if (v11)
        {
          break;
        }

        if (a2 != v8)
        {
          OUTLINED_FUNCTION_9_58();
          if (*&i[8 * v12])
          {
            v13 = ",";
            if (!v9)
            {
              OUTLINED_FUNCTION_21_41();
              prstuff(result, a2, *(v14 + 8 * a2), i, 0xFFFFFFFFLL);
              OUTLINED_FUNCTION_21_41();
              *(v15 + 8 * a2) = i;
              OUTLINED_FUNCTION_4_61();
              vf_puts(result, v16, "\ndelta project ", 1);
              v13 = &unk_26DBB65DA;
            }

            v37 = v13;
            v39 = *j;
            v17 = OUTLINED_FUNCTION_13_52();
            __sprintf_chk(v17, v18, v19, "%s%s", v37, v39);
            OUTLINED_FUNCTION_4_61();
            v9 = 1;
            v20 = OUTLINED_FUNCTION_5_61();
            vf_puts(v20, v21, v22, v23);
          }
        }

        ++v8;
      }

      if (v9)
      {
        v38 = vstmtbl[12 * a2];
        v24 = OUTLINED_FUNCTION_2_70(*(result + 200));
        __sprintf_chk(v24, v25, v26, " (.1) ^_%s", v38);
        v27 = OUTLINED_FUNCTION_0_77();
        vf_puts(v27, v28, v29, v30);
        for (k = 0; k < *(result + 288); ++k)
        {
          if (a2 != k)
          {
            OUTLINED_FUNCTION_9_58();
            if (*&i[8 * v32])
            {
              v33 = OUTLINED_FUNCTION_6_60();
              reach(v33, v34, i);
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_21_41();
    prstuff(result, a2, *(v35 + 8 * a2), a3, a4);
    OUTLINED_FUNCTION_21_41();
    *(v36 + 8 * a2) = i;
  }
}

uint64_t svgetl()
{
  OUTLINED_FUNCTION_11_54();
  fread(&__ptr, 1uLL, 4uLL, v0);
  return bswap32(__ptr);
}

uint64_t svgeti()
{
  OUTLINED_FUNCTION_11_54();
  fread(__ptr, 1uLL, 2uLL, v0);
  return (__ptr[0] << 8) | __ptr[1];
}

uint64_t svgetc()
{
  v0 = OUTLINED_FUNCTION_1_73();
  fread(v0, v1, v2, v3);
  return 0;
}

uint64_t svgetu()
{
  v0 = OUTLINED_FUNCTION_1_73();
  fread(v0, v1, v2, v3);
  return 0;
}

uint64_t svgets(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = 496;
  do
  {
    fread((v2 + v3), 1uLL, 1uLL, *(v2 + 480));
    v2 = *(a1 + 200);
  }

  while (*(v2 + v3++));
  return v2 + 496;
}

size_t svputl(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2);
  OUTLINED_FUNCTION_11_54();
  return fwrite(&__ptr, 1uLL, 4uLL, v2);
}

size_t svputi(uint64_t a1, unsigned int a2)
{
  __ptr = bswap32(a2) >> 16;
  OUTLINED_FUNCTION_11_54();
  return fwrite(&__ptr, 1uLL, 2uLL, v2);
}

size_t svputs(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*(a1 + 200) + 480);

  return fwrite(__s, 1uLL, v4 + 1, v5);
}

uint64_t svputlptrs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  v3 = *(v2 + 8112);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v2 + 8104);
      if (v5)
      {
        v7 = result;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        while (v9 < *(v5 + 58))
        {
          v11 = *(v5 + 16);
          if (*(v11 + v8 + 16) == -6 && (*(v11 + v8 + 18) & 0x80000000) == 0 && **(*(v4 + 16) + 8 * v9) == a2)
          {
            if (!v10)
            {
              OUTLINED_FUNCTION_6_60();
              svputc();
              v11 = *(*(*(v7 + 192) + 8104) + 16);
            }

            result = svputs(v7, *(v11 + v8));
            v5 = *(*(v7 + 192) + 8104);
            v10 = 1;
          }

          ++v9;
          v8 += 24;
        }

        if (v10)
        {

          return svputs(v7, &unk_26DBB65DA);
        }
      }
    }
  }

  return result;
}

FILE *vsv2delta(uint64_t a1, char *__filename)
{
  v37 = *MEMORY[0x277D85DE8];
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "wb");
  *(*(a1 + 200) + 480) = result;
  if (result)
  {
    svputs(a1, &unk_26DBB65DA);
    v4 = OUTLINED_FUNCTION_16_48();
    svputi(v4, v5);
    svputi(a1, 1u);
    v6 = OUTLINED_FUNCTION_16_48();
    svputi(v6, v7);
    svputi(a1, *(*(a1 + 192) + 8868));
    for (i = 0; ; ++i)
    {
      OUTLINED_FUNCTION_18_45();
      if (v10)
      {
        break;
      }

      v11 = &vstmtbl[12 * i];
      svputs(a1, *v11);
      svputi(a1, *(v11 + 16));
      svputc();
      v12 = 0;
      for (j = 0; j < *(v11 + 16); ++j)
      {
        v14 = &v11[1][v12];
        svputs(a1, *v14);
        svputi(a1, *(v14 + 15));
        svputi(a1, *(v14 + 14));
        svputi(a1, v14[32]);
        v12 += 40;
      }
    }

    for (k = -2; k < v9; k = v16)
    {
      v16 = k + 1;
      if (k != -1)
      {
        svputc();
        v17 = OUTLINED_FUNCTION_17_46();
        svputi(v17, v18);
        if (k == -2)
        {
          v19 = 0;
        }

        else
        {
          v19 = &vstmtbl[12 * k];
        }

        v20 = **(a1 + 200);
        if (k == -2)
        {
          v21 = -99;
        }

        else
        {
          v21 = -2;
        }

        for (; v20; v20 = (*v27 & 0xFFFFFFFFFFFFFFFCLL))
        {
          if ((*v20 & 2) != 0)
          {
            v28 = *(a1 + 200);
            if (v20 != *v28 && v20 != v28[1])
            {
              svputc();
              v29 = absoluteSyncNum(a1, v20);
              svputi(a1, v29);
              v30 = *(a1 + 192);
              LODWORD(v31) = v21;
              if (!*(v30 + 8868))
              {
                v31 = -2;
                v32 = 1;
                while (*(a1 + 288) != v31)
                {
                  if (v32 && k > v31 && (*&v20[8 * v31 + 8 * *(v30 + 9084)] & 1) != 0)
                  {
                    goto LABEL_40;
                  }

                  ++v31;
                  --v32;
                }

                LODWORD(v31) = -99;
              }

LABEL_40:
              svputc();
              if (v31 == -99)
              {
                NONSEQ(v20);
                svputc();
                ONESTM(v20);
                svputc();
                ALLNSQ(v20);
                svputc();
                svputlptrs(a1, v20);
              }
            }

            v27 = &v20[8 * k + 8 * *(*(a1 + 192) + 9084)];
          }

          else
          {
            svputc();
            v22 = 0;
            v23 = 30;
            while (v22 < *(v19 + 16))
            {
              v24 = v19[1];
              v25 = (*&v19[2][8 * v22])(v20 + 16);
              switch(*&v24[v23])
              {
                case 0xFFFB:
                  __sprintf_chk(__s, 0, 0x32uLL, "%g", *v25);
                  svputs(a1, __s);
                  break;
                case 0xFFFC:
                  v26 = *v25;
                  goto LABEL_27;
                case 0xFFFD:
                  svputl(a1, *v25);
                  break;
                case 0xFFFE:
                  v26 = *v25;
LABEL_27:
                  svputi(a1, v26);
                  break;
                case 0xFFFF:
                  svputu();
                  break;
                default:
                  break;
              }

              ++v22;
              v23 += 40;
            }

            v27 = v20 + 8;
          }
        }

        v9 = *(a1 + 288);
        v16 = k + 1;
      }
    }

    OUTLINED_FUNCTION_22_39();
    svputlptrs(a1, v33);
    OUTLINED_FUNCTION_20_42();
    svputlptrs(a1, v34);
    svputc();
    fclose(*(*(a1 + 200) + 480));
    v35 = OUTLINED_FUNCTION_16_48();
    return vclrctxt(v35);
  }

  return result;
}

void *findsync(uint64_t a1, int a2, char a3)
{
  v4 = (4 * a2);
  v5 = **(a1 + 200);
  for (i = a3; v5; v5 = VRSYNC(a1, v5, i))
  {
    if ((*v5 & 0xFFFFFFFFFFFFFFFCLL) == v4)
    {
      break;
    }
  }

  return v5;
}

FILE *vrsdelta2(uint64_t a1, char *__filename)
{
  *(*(a1 + 200) + 488) = __filename;
  result = fopen(__filename, "rb");
  *(*(a1 + 200) + 480) = result;
  if (!result)
  {
    return result;
  }

  if (*svgets(a1) || svgeti() || svgeti() != 1 || svgeti() || svgeti() != *(*(a1 + 192) + 8868))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_16_48();
  vdltinit(v4, v5);
  *(*(a1 + 184) + 452) = 1;
  OUTLINED_FUNCTION_22_39();
  v7 = *v6;
  ***(a1 + 200) = (4 * absoluteSyncNum(a1, v6)) | (v7 & 3);
  OUTLINED_FUNCTION_20_42();
  v9 = *v8;
  **(*(a1 + 200) + 8) = (4 * absoluteSyncNum(a1, v8)) | (v9 & 3);
  v10 = *(a1 + 16);
  v11 = 1162;
  for (i = 9184; ; i += 24)
  {
    v13 = v11 - 1161;
    if (v11 - 1161 >= v10)
    {
      break;
    }

    v14 = *(a1 + 192);
    if (*(v14 + i) == -6 && v13 != *(a1 + 290) && v13 != *(a1 + 292))
    {
      **(v14 + 8 * v11) = 0;
    }

    ++v11;
  }

  for (j = 0; ; ++j)
  {
    OUTLINED_FUNCTION_18_45();
    if (v16)
    {
      break;
    }

    v17 = &vstmtbl[12 * j];
    svgets(a1);
    v18 = *(v17 + 16);
    if (v18 != svgeti())
    {
      return 0;
    }

    *(*(*(a1 + 192) + 9072) + j) = svgetc();
    v19 = OUTLINED_FUNCTION_6_60();
    setnonseqIndex(v19, v20);
    if (*(*(*(a1 + 192) + 9072) + j) > 1u)
    {
      return 0;
    }

    v21 = 0;
    v22 = -1;
    while (++v22 < *(v17 + 16))
    {
      v23 = v17[1];
      svgets(a1);
      v24 = *&v23[v21 + 30];
      if (svgeti() != v24)
      {
        return 0;
      }

      v25 = *&v23[v21 + 28];
      if (svgeti() != v25)
      {
        return 0;
      }

      v26 = v23[v21 + 32];
      v27 = svgeti();
      result = 0;
      v21 += 40;
      if (v27 != v26)
      {
        return result;
      }
    }
  }

  if (svgetc() != 125)
  {
    return 0;
  }

  v28 = 0;
  for (k = -2; ; k = v32)
  {
    OUTLINED_FUNCTION_18_45();
    if (v30 == v31)
    {
      fclose(*(*(a1 + 200) + 480));
      if (v28)
      {
        v62 = 0;
        do
        {
          if (v62 >= *(a1 + 288))
          {
            break;
          }

          for (m = **(a1 + 200); m; m = (*v64 & 0xFFFFFFFFFFFFFFFCLL))
          {
            if ((*m & 2) != 0)
            {
              *m &= 3uLL;
              v64 = &m[*(*(a1 + 192) + 9084) + v62];
            }

            else
            {
              v64 = m + 1;
            }
          }

          ++v62;
        }

        while (!checkInterrupt(a1));
        *(*(a1 + 192) + 9080) = 0;
        return 1;
      }

      return 0;
    }

    v32 = k + 1;
    if (k != -1)
    {
      break;
    }

LABEL_86:
    ;
  }

  if (v28)
  {
    return 0;
  }

  v67 = svgeti();
  if (v67 != k)
  {
    return 0;
  }

  v28 = 0;
  v33 = &vstmtbl[12 * k];
  v34 = **(a1 + 200);
  v65 = k + 3;
  v35 = 1;
  while (2)
  {
    if ((v35 & 1) == 0)
    {
      v32 = k + 1;
      goto LABEL_86;
    }

    v35 = 1;
    switch(svgetc())
    {
      case 't':
        OUTLINED_FUNCTION_20_42();
        goto LABEL_57;
      case 'u':
        OUTLINED_FUNCTION_22_39();
LABEL_57:
        v38 = a1;
        goto LABEL_58;
      case 'v':
        v38 = a1;
        v36 = v34;
LABEL_58:
        svgetptrs(v38, v36, 0);
        continue;
      case 'w':
        OUTLINED_FUNCTION_20_42();
        goto LABEL_40;
      case 'x':
        OUTLINED_FUNCTION_22_39();
LABEL_40:
        v39 = a1;
        goto LABEL_61;
      case 'y':
        v35 = 0;
        v28 = 1;
        continue;
      case 'z':
        v39 = a1;
        v37 = v34;
LABEL_61:
        svgetptrs(v39, v37, 1);
        continue;
      case '{':
        v66 = v28;
        v40 = 0;
        v41 = 30;
LABEL_42:
        if (v40 >= *(v33 + 16))
        {
          v35 = 1;
          v28 = v66;
          continue;
        }

        v71 = 0;
        v70 = 0;
        v69 = 0;
        v68 = 0;
        switch(*&v33[1][v41])
        {
          case 0xFFFB:
            v43 = svgets(a1);
            v42 = &v68;
            sscanf(v43, "%lg", &v68);
            break;
          case 0xFFFC:
            v69 = svgeti();
            v42 = &v69;
            break;
          case 0xFFFD:
          case 0xFFFE:
            v70 = svgetl();
            v42 = &v70;
            break;
          case 0xFFFF:
            v71 = svgetu();
            v42 = &v71;
            break;
          default:
            v42 = 0;
            break;
        }

        if (v40)
        {
          (*&v33[3][8 * v40])(16, v42);
          v44 = v34;
LABEL_55:
          ++v40;
          v41 += 40;
          v34 = v44;
          goto LABEL_42;
        }

        v45 = *(v33[1] + 15);
        result = alloc_tok(a1, v33);
        if (result)
        {
          v44 = result;
          OUTLINED_FUNCTION_9_58();
          *(v34 + 8 * v46) = *(v34 + 8 * v46) & 3 | v47;
          OUTLINED_FUNCTION_23_38();
          *(v48 + 8 * k + 24) = *(v48 + 8 * k + 24) & 3 | v49;
          OUTLINED_FUNCTION_23_38();
          *v50 = v34;
          v50[1] = v51;
          if (v45 < 0)
          {
            vinitflds(a1, v67, &v44->_flags, v42);
          }

          else
          {
            memcpy(&v44->_flags, v42, *(v33 + 17));
          }

          goto LABEL_55;
        }

        return result;
      case '|':
        v52 = svgeti();
        v53 = svgetc();
        v54 = (4 * v52);
        if (v53 != -99)
        {
          v56 = v53;
          v57 = *(a1 + 200);
          v55 = *v57;
          while (v55 != v57[1])
          {
            if ((*v55 & 0xFFFFFFFFFFFFFFFCLL) == v54)
            {
              goto LABEL_78;
            }

            v55 = VRSYNC(a1, v55, v56);
            v57 = *(a1 + 200);
          }

          return 0;
        }

        result = alloc_sync(a1);
        if (!result)
        {
          return result;
        }

        v55 = result;
        result->_p = (result->_p & 3 | v54);
        if (svgetc())
        {
          SETNONSEQ(v55);
        }

        else
        {
          CLRNONSEQ(v55);
        }

        if (svgetc())
        {
          SETONESTM(v55);
        }

        else
        {
          CLRONESTM(v55);
        }

        if (svgetc())
        {
          SETALLNSQ(v55);
        }

        else
        {
          CLRALLNSQ(v55);
        }

LABEL_78:
        if (k != -2)
        {
          OUTLINED_FUNCTION_9_58();
          *(v55 + 8 * v58) |= 1uLL;
        }

        OUTLINED_FUNCTION_23_38();
        *(v59 + 8 * v65) = *(v59 + 8 * v65) & 3 | v55;
        v60 = k + *(*(a1 + 192) + 9084);
        *(v55 + 8 * v60) = *(v55 + 8 * v60) & 3 | *(*(a1 + 200) + 8);
        *(v55 + 8 * v65) = *(v55 + 8 * v65) & 3 | v34;
        if (v34 && (*v34 & 2) != 0)
        {
          OUTLINED_FUNCTION_9_58();
          *(v34 + 8 * v61) = *(v34 + 8 * v61) & 3 | v55;
        }

        else
        {
          *(v34 + 8) = v55;
        }

        v35 = 1;
        v34 = v55;
        continue;
      case '}':
        v35 = 0;
        continue;
      default:
        continue;
    }
  }
}

_BYTE *svgetptrs(uint64_t a1, uint64_t a2, int a3)
{
  while (1)
  {
    result = svgets(a1);
    if (!*result)
    {
      break;
    }

    v6 = OUTLINED_FUNCTION_15_50();
    if (a3)
    {
      if (!getgptr(v6, v7, v8))
      {
        v9 = OUTLINED_FUNCTION_15_50();
        getlptr(v9, v10, v11);
      }
    }

    else if (!getlptr(v6, v7, v8))
    {
      v12 = OUTLINED_FUNCTION_15_50();
      getgptr(v12, v13, v14);
    }
  }

  return result;
}

uint64_t prstuff(uint64_t result, int a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v6 = a3;
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = a3;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    if (!v10)
    {
      OUTLINED_FUNCTION_6_60();
      LODWORD(result) = prinsert();
    }

    disptok(result, v11 + 16, a2, 0, (*(v8 + 200) + 408));
    OUTLINED_FUNCTION_4_61();
    if (v14 > 2)
    {
      vf_puts(v8, v12, "'", 1);
      v17 = OUTLINED_FUNCTION_0_77();
      vf_puts(v17, v18, v19, v20);
      OUTLINED_FUNCTION_4_61();
      v16 = v8;
      v15 = "'";
    }

    else
    {
      v15 = (v13 + 408);
      v16 = v8;
    }

    vf_puts(v16, v12, v15, 1);
    OUTLINED_FUNCTION_4_61();
    v10 = 1;
    result = vf_puts(v8, v21, " ", 1);
    v9 = 0;
    v22 = v11 + 8;
    while (1)
    {
      v11 = (*v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v11)
      {
        goto LABEL_4;
      }

LABEL_3:
      if ((*v11 & 2) == 0)
      {
        goto LABEL_4;
      }

      if (v9)
      {
        if (v10)
        {
          OUTLINED_FUNCTION_6_60();
          prrange();
        }

        OUTLINED_FUNCTION_6_60();
        result = prinsert();
        v10 = 0;
      }

      v23 = a5;
      v25 = a5 >= 0 && v11 == a4;
      v26 = v6;
      if (v11 != v6 && !v25)
      {
        v27 = 9184;
        for (i = 1162; i - 1161 < *(v8 + 16); ++i)
        {
          v29 = *(v8 + 192);
          v30 = v29 + v27;
          if (*(v29 + v27) == -6 && **(v29 + 8 * i) == v11)
          {
            v31 = *(v8 + 200);
            if (v11 != *v31 && v11 != v31[1])
            {
              v56 = *(v30 - 16);
              v32 = OUTLINED_FUNCTION_13_52();
              __sprintf_chk(v32, v33, v34, "!%s ", v56);
              v35 = OUTLINED_FUNCTION_0_77();
              result = vf_puts(v35, v36, v37, v38);
            }
          }

          v27 += 24;
        }
      }

      if (v9)
      {
        OUTLINED_FUNCTION_6_60();
        result = prrange();
      }

      if (v11 == a4)
      {
        break;
      }

      v22 = &v11[8 * *(*(v8 + 192) + 9084) + 8 * a2];
      v9 = 1;
      a5 = v23;
      v6 = v26;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_6_60();
      result = prrange();
    }

    if ((v23 & 0x80000000) == 0)
    {
      v39 = &vstmtbl[12 * v23];
      v57 = *v39;
      v40 = OUTLINED_FUNCTION_2_70(*(v8 + 200));
      __sprintf_chk(v40, v41, v42, v43, v57);
      v44 = OUTLINED_FUNCTION_0_77();
      result = vf_puts(v44, v45, v46, v47);
      if (!v10)
      {
        v58 = vstmtbl[12 * a2];
        v59 = *v39;
        v48 = OUTLINED_FUNCTION_2_70(*(v8 + 200));
        __sprintf_chk(v48, v49, v50, v51, v58, v59);
        v52 = OUTLINED_FUNCTION_0_77();

        return vf_puts(v52, v53, v54, v55);
      }
    }
  }

  return result;
}

uint64_t prrange()
{
  OUTLINED_FUNCTION_19_44();
  v11 = *(vstmtbl + v0);
  v2 = OUTLINED_FUNCTION_2_70(v1);
  __sprintf_chk(v2, v3, v4, v5, v11, v11);
  v6 = OUTLINED_FUNCTION_0_77();

  return vf_puts(v6, v7, v8, v9);
}

uint64_t prinsert()
{
  OUTLINED_FUNCTION_19_44();
  v11 = *(vstmtbl + v0);
  v2 = OUTLINED_FUNCTION_2_70(v1);
  __sprintf_chk(v2, v3, v4, v5, "%", v11);
  v6 = OUTLINED_FUNCTION_0_77();

  return vf_puts(v6, v7, v8, v9);
}

uint64_t getgptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v6 = *(a1 + 16);
  v7 = 1162;
  for (i = 9184; ; i += 24)
  {
    if (v7 - 1161 >= v6)
    {
      return 0;
    }

    v9 = *(a1 + 192);
    if (*(v9 + i) == -6 && !strcmp(*(v9 + i - 16), __s2))
    {
      break;
    }

    ++v7;
  }

  **(v9 + 8 * v7) = a2;
  return 1;
}

uint64_t getlptr(uint64_t a1, uint64_t a2, char *__s2)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 192);
  v8 = *(*(v7 + 8112) + 8);
  v9 = *(v7 + 8104);
  v10 = 8 * (*(v9 + 58) & ~(*(v9 + 58) >> 31));
  while (1)
  {
    if (v10 == v6)
    {
      return 0;
    }

    v11 = *(v9 + 16);
    if (*(v11 + v5 + 16) == -6 && !strcmp(*(v11 + v5), __s2))
    {
      break;
    }

    v6 += 8;
    v5 += 24;
  }

  **(*(v8 + 16) + v6) = a2;
  return 1;
}

uint64_t OUTLINED_FUNCTION_10_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return rdtokverr(v12, v13, v14, va);
}

const char **OUTLINED_FUNCTION_26_36(uint64_t a1, int a2, char *a3)
{

  return logicalFileFindPhysical(a1, a2, a3, 1, 1);
}

uint64_t vdur_ass(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v23 = 0;
  if (vrange_2pt(a1, a2, a3, a4, 0))
  {
    return 1;
  }

  v11 = vdur(a1, a2, a3, a4);
  v12.n128_u64[0] = 0;
  v13 = 0.0;
  if (v11)
  {
    v13 = a5 / v11;
  }

  v14 = &vstmtbl[12 * a4];
  v15 = -0.5;
  if (v13 >= 0.0)
  {
    v15 = 0.5;
  }

  if ((*(v14[1] + 15) & 0xFFFE) == 0xFFFC)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  for (i = *a2; i != *a3; i = (*v21 & 0xFFFFFFFFFFFFFFFCLL))
  {
    if (i && (*i & 2) != 0)
    {
      OUTLINED_FUNCTION_1_74();
      v21 = &i[8 * v22 + 8 * a4];
    }

    else
    {
      v18 = *(v14[1] + 15);
      v19 = (*v14[2])(i + 16, v12);
      if (v18 == -3)
      {
        v24 = (v16 + *v19 * v13);
        v20 = &v24;
      }

      else
      {
        v24 = (v16 + *v19 * v13);
        v23 = v24;
        v20 = &v23;
      }

      vinitflds(a1, a4, i + 16, v20);
      v21 = i + 8;
    }
  }

  return 0;
}

uint64_t vrange_2pt(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 a4, int a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_3_66();
    if ((*&v11[8 * v12 + 8 * *(a2 + 8)] & 1) == 0 || a2[2])
    {
      v10 = vnormalize(a1, a2, v11);
      if (v10 == 2)
      {
        *a2 = vsplit_time(a1, *(a2 + 8), *a2, a2[2]);
        OUTLINED_FUNCTION_3_66();
        v23 = *(v19 + 8 * (v22 + v20));
        goto LABEL_22;
      }

      if (v10 == 4)
      {
LABEL_13:
        v13 = *a2;
        v14 = *(a1 + 200);
        if (a5 == 205)
        {
          v15 = v14[1];
          if (v13 != v15)
          {
LABEL_20:
            if (v13 != v15)
            {
              OUTLINED_FUNCTION_3_66();
              v23 = v21[v24 + v20];
LABEL_22:
              v25 = OUTLINED_FUNCTION_20_43(v19, v20, v21, v23 & 0xFFFFFFFFFFFFFFFCLL);
              *a3 = v25;
              if (!v25)
              {
                return 1;
              }

              goto LABEL_26;
            }

            return 1;
          }
        }

        else if (a5 != 206)
        {
          v15 = v14[1];
          goto LABEL_20;
        }

        if (v13 == *v14)
        {
          return 1;
        }

        *a3 = v13;
        v26 = OUTLINED_FUNCTION_20_43(v10, *(a2 + 8), (*(*a2 + 8 * *(a2 + 8) + 24) & 0xFFFFFFFFFFFFFFFCLL), *a2);
        *a2 = v26;
        if (!v26)
        {
          return 1;
        }

LABEL_26:
        v18 = 1;
        *(a2 + 24) = 1;
        *(a3 + 24) = 1;
        goto LABEL_27;
      }

      if (v10 != 3)
      {
        return 1;
      }

      v11 = *a2;
    }

    *a3 = v11;
    if ((a5 - 205) <= 1)
    {
      v10 = lmost(*(a2 + 8), *a2);
      *a2 = v10;
      v11 = *a3;
    }

    if ((a5 & 0xFFFFFFFD) == 0xCD)
    {
      v10 = rmost(a1, *(a2 + 8), v11);
      v11 = v10;
      *a3 = v10;
    }

    if (*a2 != v11)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  v16 = *(a2 + 1);
  v29[0] = *a2;
  v29[1] = v16;
  v17 = *(a3 + 16);
  v28[0] = *a3;
  v28[1] = v17;
  vcomp_pta(a1, v29, v28);
  if (!*(*(a1 + 192) + 8120))
  {
    return 1;
  }

  vtmark_tv(a1, a2, 0);
  v18 = 1;
  vtmark_tv(a1, a3, 1);
LABEL_27:
  if (vdef_proj(a1, *a2, a4) && vdef_proj(a1, *a3, a4))
  {
    return 0;
  }

  return v18;
}

uint64_t gcql(__n128 a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_74();
    if (*(v7 + 8 * (v8 + a4)))
    {
      break;
    }

    VLSYNC(v7, a5);
  }

  return v7;
}

uint64_t gcqr(uint64_t a1, __n128 a2, uint64_t a3, int a4, int a5)
{
  while (1)
  {
    OUTLINED_FUNCTION_1_74();
    if (*(v8 + 8 * (v9 + a4)))
    {
      break;
    }

    VRSYNC(a1, v8, a5);
  }

  return v8;
}

unint64_t dur2(uint64_t a1, uint64_t a2, unint64_t *a3, int a4, int a5)
{
  v7 = *a2;
  v8 = *a3;
  if (v7 == *a3)
  {
    return a3[2] - *(a2 + 16);
  }

  if (a5)
  {
    v11 = v7;
  }

  else
  {
    v13 = visleft(a1, v7, *a3);
    if (v13)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    if (v13)
    {
      v15 = a3;
    }

    else
    {
      v15 = a2;
    }

    v8 = *v15;
    v11 = *v14;
    v7 = *a2;
  }

  v16 = *(*(a1 + 192) + 9084) + a4;
  if ((*(v7 + 8 * v16) & 1) == 0)
  {
    if (!ctxt_clstr(a1, v7, a4))
    {
      return -2147483647;
    }

    v16 = *(*(a1 + 192) + 9084) + a4;
  }

  if ((*(*a3 + 8 * v16) & 1) == 0 && !ctxt_clstr(a1, *a3, a4))
  {
    return -2147483647;
  }

  v17 = 0;
  v18 = 0;
  v19 = &vstmtbl[12 * a4];
  while (v11 != v8 && v11)
  {
    if ((*v11 & 2) != 0)
    {
      v21 = &v11[8 * *(*(a1 + 192) + 9084) + 8 * a4];
    }

    else
    {
      v20 = *(v19[1] + 15);
      if (v20 == 65532)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      else if (v20 == 65533)
      {
        v17 += *(*v19[2])(v11 + 16);
      }

      v21 = v11 + 8;
      v18 = 1;
    }

    v11 = (*v21 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v8 == *a2)
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 += *(a2 + 16);
    }

    if ((a3[3] & 2) != 0)
    {
      v17 -= a3[2];
    }

    v17 = -v17;
  }

  else
  {
    if ((*(a2 + 24) & 2) != 0)
    {
      v17 -= *(a2 + 16);
    }

    if ((a3[3] & 2) != 0)
    {
      v17 += a3[2];
    }
  }

  if (v17)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18 == 0;
  }

  if (v22)
  {
    return -2147483647;
  }

  else
  {
    return v17;
  }
}

uint64_t val_expr2(__int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, _BYTE *a7)
{
  v8 = a3;
  v9 = a2;
  *a7 = 0;
  v11 = *(a2 + 8);
  if (!a5)
  {
    if (BYTE4(vstmtbl[12 * a3 + 11]))
    {
      a5 = vstmtbl[12 * *(a2 + 8) + 11];
    }

    else
    {
      a5 = 0;
    }
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v101 = a5;
  if (a6 == 9)
  {
    v12 = -2147483647;
    switch(vnormalize(a1, a2, a3))
    {
      case 2u:
        v13 = *v9;
        if ((v9[2] & 0x8000000000000000) != 0)
        {
          v15 = *(*(v13 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          OUTLINED_FUNCTION_1_74();
          v15 = v13;
          v13 = *((*(v13 + 8 * (v14 + v11)) & 0xFFFFFFFFFFFFFFFCLL) + 8) & 0xFFFFFFFFFFFFFFFCLL;
        }

        *&v106 = v15;
        *&v104 = v13;
        OUTLINED_FUNCTION_10_57();
        v17 = gcql(v40, v36, v37, v38, v39);
        goto LABEL_14;
      case 3u:
        v19 = rmost(a1, v11, *v9);
        firstdefd(a1, v11, v19, v8, 0);
        v20 = lmost(v11, *v9);
        v102 = 1;
        firstdefd(a1, v11, v20, v8, 1);
        OUTLINED_FUNCTION_10_57();
        v17 = gcql(v25, v21, v22, v23, v24);
        OUTLINED_FUNCTION_10_57();
        v18 = gcqr(v26, v30, v27, v28, v29);
        goto LABEL_15;
      case 4u:
        OUTLINED_FUNCTION_10_57();
        v17 = gcql(v35, v31, v32, v33, v34);
LABEL_14:
        OUTLINED_FUNCTION_10_57();
        v18 = gcqr(v41, v45, v42, v43, v44);
        v102 = 1;
        goto LABEL_15;
      default:
        return v12;
    }
  }

  v102 = 0;
  v16 = *(a1 + 25);
  v17 = *(*(v16 + 616) + 8 * a3);
  v18 = *(*(v16 + 624) + 8 * a3);
LABEL_15:
  v46 = 0;
  v103 = v8;
  v47 = v17;
  v12 = -2147483647;
  while (v47 != v18)
  {
    if (v47 && (*v47 & 2) != 0)
    {
      v48 = v11;
      v49 = v9;
      v50 = *&v47[8 * *(*(a1 + 24) + 9084) + 8 * v8] & 0xFFFFFFFFFFFFFFFCLL;
      v51 = *&vstmtbl[12 * v8 + 1][40 * a4 + 30];
      if (v51 == 65532)
      {
        OUTLINED_FUNCTION_2_71();
        v54 = v53(v50 + 16);
        if (*v54 == -32767)
        {
          v46 = -2147483647;
        }

        else
        {
          v46 = *v54;
        }
      }

      else if (v51 == 65533)
      {
        OUTLINED_FUNCTION_2_71();
        v46 = *v52(v50 + 16);
      }

      v55 = v46;
      if (v12 != -2147483647)
      {
        v55 = v12;
        if (v12 != v46)
        {
          return -2147483647;
        }
      }

      v47 = (*(v50 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      v12 = v55;
      v9 = v49;
      v11 = v48;
    }
  }

  if (v12 == -2147483647)
  {
    *&v107 = 0;
    BYTE8(v107) = 1;
    *&v105 = 0;
    BYTE8(v105) = 1;
    if (!v17)
    {
LABEL_32:
      v56 = -2147483647;
      goto LABEL_43;
    }

    while ((*v17 & 2) != 0)
    {
      v17 = (*&v17[8 * v8 + 24] & 0xFFFFFFFFFFFFFFFCLL);
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    OUTLINED_FUNCTION_1_74();
    if ((*(v57 + 8 * (v58 + v11)) & 1) == 0)
    {
      v59 = OUTLINED_FUNCTION_11_55();
      v57 = vgetsc(v59, 0, 1, v60, v61);
    }

    *&v106 = v57;
    OUTLINED_FUNCTION_15_51();
    v56 = -2147483647;
    if (v62 == 65532)
    {
      OUTLINED_FUNCTION_2_71();
      v64(v17 + 16);
      v56 = -2147483647;
      OUTLINED_FUNCTION_5_62();
      if (!v88)
      {
        v56 = v65;
      }
    }

    else if (v62 == 65533)
    {
      OUTLINED_FUNCTION_2_71();
      v56 = *v63(v17 + 16);
    }

    while (1)
    {
LABEL_43:
      if (!v18)
      {
        if (!v17)
        {
          return -32767;
        }

        v67 = OUTLINED_FUNCTION_17_47();
        v72 = durcalc(v67, v68, v69, v70, v71, v102);
        if (!v72)
        {
          return v56;
        }

        v12 = -2147483647;
        if (v72 == -2147483647)
        {
          return v56;
        }

        return v12;
      }

      if ((*v18 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_1_74();
      v18 = (v18[v66 + v8] & 0xFFFFFFFFFFFFFFFCLL);
    }

    OUTLINED_FUNCTION_1_74();
    if ((*(v73 + 8 * (v74 + v11)) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_55();
      OUTLINED_FUNCTION_16_49();
      v73 = vgetsc(v75, v76, v77, v78, v79);
    }

    *&v104 = v73;
    OUTLINED_FUNCTION_15_51();
    if (v80 == 65532)
    {
      OUTLINED_FUNCTION_2_71();
      v83(v18 + 2);
      OUTLINED_FUNCTION_5_62();
      if (v88)
      {
        v81 = -2147483647;
      }

      else
      {
        v81 = v84;
      }
    }

    else if (v80 == 65533)
    {
      OUTLINED_FUNCTION_2_71();
      v81 = *v82(v18 + 2);
    }

    v85 = v81;
    v86 = *(a1 + 25);
    if (v17)
    {
      v87 = durcalc(a1, &v106, &v104, v11, (*(v86 + 632) + 24 * v103), v102);
      v88 = v87 == -2147483647 || v87 == 0;
      if (!v88)
      {
        v91 = v87;
        *a7 = 1;
        v92 = OUTLINED_FUNCTION_17_47();
        v97 = durcalc(v92, v93, v94, v95, v96, v102);
        if (v97 == -2147483647)
        {
          v98 = 0;
        }

        else
        {
          v98 = v97;
        }

        return (v56 + (v85 - v56) * (v98 / v91));
      }

      if (v101 == -1)
      {
        return v56;
      }

      if (v101 != 1)
      {
        if (v101)
        {
          return -2147483647;
        }

        return vcvtd_n_f64_s64(v85 + v56, 1uLL);
      }
    }

    else
    {
      v90 = durcalc(a1, v9, &v104, v11, (*(v86 + 648) + 24 * v103), v102);
      if (v90)
      {
        v12 = -2147483647;
        if (v90 != -2147483647)
        {
          return v12;
        }
      }
    }

    return v85;
  }

  return v12;
}

uint64_t vnormalize(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = &vstmtbl[12 * v6];
  v41 = *v7[2];
  v8 = *(a2 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v17 = 0;
    v18 = 65532;
    v19 = *(a2 + 16);
    v20 = &v5[v6 + 3];
LABEL_17:
    v12 = v19;
    v21 = v20;
    while (v5 != **(a1 + 25))
    {
      v20 = (*v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v20 || (*v20 & 2) == 0)
      {
        v22 = *(v7[1] + 15);
        if (v22 == v18)
        {
          v41(v20 + 16);
          OUTLINED_FUNCTION_5_62();
          if (v24)
          {
            v17 = -2147483647;
          }
        }

        else if (v22 == 65533)
        {
          v23 = (v41)(v20 + 16);
          v18 = 65532;
          v17 = *v23;
        }

        v19 = v17 + v12;
        if (v17 != -2147483647 && v19 < 1)
        {
          goto LABEL_17;
        }

        break;
      }

      v21 = &v20[8 * v6 + 24];
      v5 = v20;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_61();
    v11 = &v5[v10];
    v12 = v8;
LABEL_3:
    v13 = *(*(a1 + 25) + 8);
    while (v5 != v13)
    {
      v14 = (*v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v14 || (*v14 & 2) == 0)
      {
        v16 = *(v7[1] + 15);
        if (v16 == 65532)
        {
          v9 = *(v41)(v14 + 16);
          if (v9 == -32767)
          {
            break;
          }
        }

        else
        {
          if (v16 == 65533)
          {
            v9 = *(v41)(v14 + 16);
          }

          if (v9 == -2147483647)
          {
            break;
          }
        }

        if (v12 - v9 < 0)
        {
          break;
        }

        v11 = v14 + 8;
        v12 -= v9;
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_6_61();
      v11 = &v14[8 * v15];
      v5 = v14;
    }
  }

  v26 = *(a2 + 24);
  if ((v26 & 4) != 0)
  {
    if (v12 < 0)
    {
      if ((v5[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v32 = *(v5[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL);
        if ((v32 & 2) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v32 = MEMORY[0];
      }

      v5 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    }

    else if (!v12)
    {
      v5 = lmost(v6, v5);
      v27 = *(a2 + 24);
LABEL_51:
      v34 = v27 ^ 4;
      goto LABEL_52;
    }

LABEL_50:
    v27 = *(a2 + 24);
    goto LABEL_51;
  }

  if ((v26 & 8) == 0)
  {
    v28 = v8 >> 63;
    v29 = 1;
    goto LABEL_53;
  }

  if (v12 >= 1)
  {
    OUTLINED_FUNCTION_3_66();
    v31 = v5[v30 + v6] & 0xFFFFFFFFFFFFFFFCLL;
    if (!v31 || (*v31 & 2) == 0)
    {
      v5 = (*(v31 + 8) & 0xFFFFFFFFFFFFFFFCLL);
    }

    goto LABEL_46;
  }

  if (v12 < 0)
  {
LABEL_46:
    v33 = v26;
    goto LABEL_47;
  }

  v5 = rmost(a1, v6, v5);
  v33 = *(a2 + 24);
LABEL_47:
  v34 = v33 ^ 8;
LABEL_52:
  v12 = 0;
  v29 = 0;
  LODWORD(v28) = (v26 >> 2) & 1;
  *(a2 + 24) = v34;
LABEL_53:
  *a2 = v5;
  *(a2 + 16) = v12;
  v35 = *(a1 + 25);
  if (v5 == *v35 && v12 < 0)
  {
    return 1;
  }

  if (v5 == v35[1] && v12 > 0)
  {
    return 1;
  }

  if (v12)
  {
    return 2;
  }

  if (!v29)
  {
    return 4;
  }

  if (v28)
  {
    v38 = *(*(a1 + 24) + 9084) + v6;
  }

  else
  {
    v38 = v6 + 3;
  }

  v39 = (v5[v38] & 0xFFFFFFFFFFFFFFFCLL);
  v40 = *(v7[1] + 15);
  if (v40 == 65532)
  {
    if (v39 && ((*v39 & 2) != 0 || !*(v41)(v39 + 16)))
    {
      return 3;
    }

    return 4;
  }

  if (v40 != 65533 || !v39 || (*v39 & 2) == 0 && *(v41)(v39 + 16))
  {
    return 4;
  }

  return 3;
}

_BYTE *firstdefd(uint64_t a1, int a2, _BYTE *a3, int a4, int a5)
{
  v7 = a3;
  v10 = 0;
  v11 = &vstmtbl[12 * a2];
  v21 = *v11[2];
  v12 = *(v11 + 86);
  v13 = 8 * (a5 != 0);
  if (a3)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_3:
    v14 = *(v11[1] + 15);
    if (v14 == 65532)
    {
      v10 = 0;
      if (v7 && v12)
      {
        v15 = *v21(v7 + 16) == 0;
LABEL_15:
        v10 = v15;
      }
    }

    else if (v14 == 65533)
    {
      v10 = 0;
      if (v7)
      {
        if (v12)
        {
          v15 = *v21(v7 + 16) == 0;
          goto LABEL_15;
        }
      }
    }

    if (!v10)
    {
      return a3;
    }

    v18 = &v7[v13];
    v10 = 1;
    while (1)
    {
      v7 = (*v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v7)
      {
        break;
      }

LABEL_2:
      if ((*v7 & 2) == 0)
      {
        goto LABEL_3;
      }

      v16 = *(*(a1 + 192) + 9084);
      if (*&v7[8 * v16 + 8 * a4])
      {
        return v7;
      }

      v17 = v16 + a2;
      if (!a5)
      {
        v17 = a2 + 3;
      }

      v18 = &v7[8 * v17];
    }
  }
}

_BYTE *rmost(void *a1, int a2, _BYTE *a3)
{
  v3 = a3;
  v4 = 0;
  v5 = &vstmtbl[12 * a2];
  v6 = *v5[2];
  v7 = *(v5 + 86);
  v8 = &a3[8 * *(a1[24] + 9084) + 8 * a2];
  while (1)
  {
    while (1)
    {
      v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v9 || (*v9 & 2) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_6_61();
      v8 = &v9[8 * v12];
      v3 = v9;
    }

    v10 = *(v5[1] + 15);
    if (v10 == 65532)
    {
      v4 = 0;
      if (v9 && v7)
      {
        v11 = *v6(v9 + 16) == 0;
LABEL_12:
        v4 = v11;
      }
    }

    else if (v10 == 65533)
    {
      v4 = 0;
      if (v9)
      {
        if (v7)
        {
          v11 = *v6(v9 + 16) == 0;
          goto LABEL_12;
        }
      }
    }

    if (!v4)
    {
      return v3;
    }

    v8 = v9 + 8;
    v4 = 1;
  }
}

void *lmost(int a1, void *a2)
{
  v3 = 0;
  v4 = &vstmtbl[12 * a1];
  v5 = *v4[2];
  v6 = *(v4 + 86);
  v7 = a1 + 3;
LABEL_2:
  v8 = &a2[v7];
  do
  {
    v8 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      a2 = v8;
      goto LABEL_2;
    }

    v9 = *(v4[1] + 15);
    if (v9 == 65532)
    {
      v3 = 0;
      if (v8 && v6)
      {
        v10 = *v5(v8 + 2) == 0;
LABEL_13:
        v3 = v10;
      }
    }

    else if (v9 == 65533)
    {
      v3 = 0;
      if (v8)
      {
        if (v6)
        {
          v10 = *v5(v8 + 2) == 0;
          goto LABEL_13;
        }
      }
    }

    v10 = v3 == 0;
    v3 = 1;
  }

  while (!v10);
  return a2;
}

unint64_t durcalc(uint64_t a1, unint64_t *a2, unint64_t *a3, int a4, unint64_t *a5, int a6)
{
  if (a6)
  {

    return dur2(a1, a2, a3, a4, 0);
  }

  else
  {
    v17[2] = 0;
    v16[2] = 0;
    v16[3] = 1;
    v17[3] = 1;
    v12 = a5[1];
    v17[0] = *a5;
    v17[1] = 0;
    v16[0] = v12;
    v16[1] = 0;
    v13 = a5[2];
    v14 = dur2(a1, v16, a3, a4, 1) + v13;
    result = v14 - dur2(a1, v17, a2, a4, 1);
    a5[2] = result - a3[2] + a2[2];
    v15 = *a3;
    *a5 = *a2;
    a5[1] = v15;
  }

  return result;
}

uint64_t vgen(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, char a5)
{
  v139 = *MEMORY[0x277D85DE8];
  v138[0] = 0;
  if ((~*(a4 + 24) & 7) != 0)
  {
    return 0;
  }

  v8 = a2;
  v10 = *(a4 + 8);
  *(a2 + 8) = *(a4 + 8);
  *(a2 + 24) = 2;
  *(a2 + 16) = 0;
  result = dynaBufNew(40);
  v137 = result;
  if (!result)
  {
    return result;
  }

  v12 = *(a1 + 200);
  if (!*(v12 + 616))
  {
    *(*(a1 + 200) + 616) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 624) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    v43 = OUTLINED_FUNCTION_7_60();
    *(*(a1 + 200) + 640) = malloc_type_malloc(v43, 0x1080040CC6EE3FDuLL);
    v44 = OUTLINED_FUNCTION_7_60();
    *(*(a1 + 200) + 632) = malloc_type_malloc(v44, 0x1080040CC6EE3FDuLL);
    v45 = OUTLINED_FUNCTION_7_60();
    v46 = malloc_type_malloc(v45, 0x1080040CC6EE3FDuLL);
    v12 = *(a1 + 200);
    *(v12 + 648) = v46;
    v47 = *(v12 + 616);
    if (!v47 || !*(v12 + 624) || !*(v12 + 640) || !v46)
    {
      free(v47);
      free(*(*(a1 + 200) + 624));
      free(*(*(a1 + 200) + 640));
      free(*(*(a1 + 200) + 632));
      v48 = *(*(a1 + 200) + 648);
LABEL_36:
      free(v48);
      return 0;
    }
  }

  v13 = 0;
  v14 = *(a1 + 288);
  while (v14 > v13)
  {
    *(*(v12 + 624) + 8 * v13) = 0;
    *(*(*(a1 + 200) + 616) + 8 * v13) = 0;
    v12 = *(a1 + 200);
    v15 = vld1q_dup_f64(v12);
    v16 = *(v12 + 648) + 24 * v13;
    *v16 = v15;
    v17 = *(v12 + 632) + 24 * v13;
    *v17 = v15;
    v18 = *(v12 + 640) + 24 * v13;
    *v18 = v15;
    *(v16 + 16) = 0;
    *(v17 + 16) = 0;
    *(v18 + 16) = 0;
    ++v13;
  }

  v134 = a3;
  v130 = a5;
  v19 = dynaBufContents(*(a4 + 16));
  v20 = 0;
  v21 = 0;
  v23 = (v19 + 1);
  v22 = *v19;
  v136 = v8;
  v132 = v22;
  while (v22 > v21)
  {
    v24 = *v23;
    OUTLINED_FUNCTION_16_49();
    v29 = vgetsc(v25, v26, v27, v28, v24);
    if (v29)
    {
      do
      {
        v30 = v29;
        v29 = (*&v29[8 * v24 + 24] & 0xFFFFFFFFFFFFFFFCLL);
      }

      while (v29 && (*v29 & 2) != 0);
    }

    else
    {
      v30 = 0;
    }

    if (vgetsc(a1, 0, 1, *v134, v24))
    {
      OUTLINED_FUNCTION_13_53();
      v34 = v33 + v24;
      do
      {
        v35 = v32;
        v32 = (*&v32[8 * v34] & 0xFFFFFFFFFFFFFFFCLL);
      }

      while (v32 && (*v32 & 2) != 0);
      if (v30)
      {
LABEL_21:
        while (1)
        {
          OUTLINED_FUNCTION_13_53();
          if ((*(v30 + 8 * (v36 + v10)) & 1) == 0)
          {
            goto LABEL_85;
          }

          v37 = VRSYNC(a1, v30, v24);
          if (v37)
          {
            v30 = v37;
            if (v37 != v35)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    else
    {
      v35 = 0;
      if (v30)
      {
        goto LABEL_21;
      }
    }

    v8 = v136;
    *(*(*(a1 + 200) + 616) + 8 * v24) = gcql(v31, a1, *v136, v24, v10);
    v39 = gcqr(a1, v38, *v136, v24, v10);
    v40 = 0;
    *(*(*(a1 + 200) + 624) + 8 * v24) = v39;
    v41 = v23[1];
    while (v40 < v41)
    {
      if (*(a4 + 9) == v20)
      {
        v42 = v20 + 1;
      }

      else
      {
        v42 = v20;
      }

      v20 = v42 + 1;
      ++v40;
    }

    v23 += v41 + 2;
    ++v21;
    v22 = v132;
  }

  v133 = malloc_type_malloc(8 * v20 * *(a1 + 288), 0x10040436913F5uLL);
  if (!v133)
  {
LABEL_85:
    dynaBufDelete(v137);
    return 0;
  }

  v128 = 0;
  v129 = 0;
  v49 = 0;
  v50 = 1;
  HIDWORD(v121) = v130;
  v135 = vdur(a1, v8, v134, *(a4 + 8));
  for (i = v135; i >= 1; i = v131 - v116)
  {
    v53 = *v136;
    if (v129 == 3 && (v49 & 1) != 0)
    {
      v53 = lmost(v10, *v136);
    }

    v54 = vnormalize(a1, v136, v51);
    v127 = v53;
    if (v54 - 3 >= 2)
    {
      if (v54 != 2)
      {
LABEL_88:
        dynaBufDelete(v137);
        v48 = v133;
        goto LABEL_36;
      }

      v55 = v136[2] <= v128;
    }

    else
    {
      v55 = 1;
    }

    LODWORD(v124) = v55;
    v56 = v54;
    v57 = *a4;
    if (i < *a4)
    {
      v57 = i;
    }

    v128 = v57;
    v137 = dynaBufReset(v137);
    v58 = dynaBufContents(*(a4 + 16));
    v59 = 0;
    v60 = 0;
    v62 = (v58 + 1);
    v61 = *v58;
    v129 = v56;
    v131 = i;
    HIDWORD(v123) = v50 | (v56 != 2);
    v63 = v136;
    HIDWORD(v124) = v61;
    do
    {
      if (v61 <= v60)
      {
        break;
      }

      HIDWORD(v126) = v60;
      v64 = *v62;
      v65 = *(a1 + 200);
      v66 = *(*(v65 + 616) + 8 * v64);
      v67 = v62[1];
      v125 = *(*(v65 + 624) + 8 * v64);
      v68 = *v63;
      if (v129 == 2)
      {
        goto LABEL_92;
      }

      if (v129 != 4)
      {
        if (v129 != 3)
        {
          goto LABEL_88;
        }

        firstdefd(a1, v10, *v63, *v62, 0);
        v122 = v66;
        v69 = lmost(v10, v68);
        v68 = firstdefd(a1, v10, v69, v64, 1);
      }

      OUTLINED_FUNCTION_13_53();
      if (v68[v71 + v64])
      {
        v73 = 0;
        *(*(*(a1 + 200) + 624) + 8 * v64) = v70;
        *(*(*(a1 + 200) + 616) + 8 * v64) = v68;
      }

      else
      {
LABEL_92:
        if (v124)
        {
          while (1)
          {
            OUTLINED_FUNCTION_13_53();
            if (v68[v72 + v64])
            {
              break;
            }

            if (v68 == v127)
            {
              goto LABEL_61;
            }

            v68 = VLSYNC(v68, v10);
          }

          *(*(*(a1 + 200) + 616) + 8 * v64) = v68;
          *(*(*(a1 + 200) + 624) + 8 * v64) = VRSYNC(a1, v68, v64);
        }

LABEL_61:
        v73 = (v123 & 0x100000000) == 0 && (v74 = *(a1 + 200), v66 == *(*(v74 + 616) + 8 * v64)) && v125 == *(*(v74 + 624) + 8 * v64);
      }

      v75 = 0;
      v62 += 2;
      do
      {
        if (v75 >= v67)
        {
          break;
        }

        if (*(a4 + 9) == v59)
        {
          v76 = OUTLINED_FUNCTION_8_60();
          v79 = __sprintf_chk(v76, v77, v78, "%d ", v128);
          OUTLINED_FUNCTION_12_54(v79, v80, v81, v82, v83, v84, v85, v86, v117, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
          ++v59;
        }

        if (i == v135)
        {
          v87 = vstmtbl[12 * *(a4 + 8) + 11];
        }

        else
        {
          v87 = 0;
        }

        v89 = *v62++;
        v88 = v89;
        if (!v73 || (v90 = *(v133 + v59), v90 == 0x8000000000000000))
        {
          LODWORD(v90) = val_expr2(a1, v136, v64, v88, v87, v129, v138);
          v91 = 0x8000000000000000;
          if (!v138[0])
          {
            v91 = v90;
          }

          *(v133 + v59) = v91;
        }

        if (v90 == -2147483647)
        {
          goto LABEL_88;
        }

        v118 = v90;
        v92 = OUTLINED_FUNCTION_8_60();
        v95 = __sprintf_chk(v92, v93, v94, "%d ", v118);
        OUTLINED_FUNCTION_12_54(v95, v96, v97, v98, v99, v100, v101, v102, v119, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
        ++v59;
        ++v75;
        i = v131;
      }

      while (!checkInterrupt(a1));
      v103 = checkInterrupt(a1);
      v60 = HIDWORD(v126) + 1;
      v63 = v136;
      v61 = HIDWORD(v124);
    }

    while (!v103);
    if (checkInterrupt(a1))
    {
      break;
    }

    if (*(a4 + 9) == v59)
    {
      v104 = OUTLINED_FUNCTION_8_60();
      v107 = __sprintf_chk(v104, v105, v106, "%d ", v128);
      OUTLINED_FUNCTION_12_54(v107, v108, v109, v110, v111, v112, v113, v114, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v131, v133, v135, v136, v137);
    }

    dynaBufAddChar(v137, 10, 0);
    dynaBufAddChar(v137, 0, 0);
    v115 = dynaBufContents(v137);
    v49 = 1;
    vf_puts(a1, SHIDWORD(v121), v115, 1);
    v50 = 0;
    *(v136 + 24) = 2;
    v116 = *a4;
    v136[2] += *a4;
  }

  dynaBufDelete(v137);
  free(v133);
  return 1;
}

uint64_t visleft(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (!*(*(a1 + 192) + 8868) || NONSEQ(a2) || NONSEQ(v6))
      {
        v7 = 0;
        v8 = *(a1 + 288);
        while (1)
        {
          if (--v8 < 0)
          {
            OUTLINED_FUNCTION_11_55();
            OUTLINED_FUNCTION_16_49();
            result = vgetsc(v10, v11, v12, v6, v13);
            goto LABEL_15;
          }

          v9 = *(*(a1 + 192) + 9084) + (v8 & 0x7F);
          if (*(a2 + 8 * v9))
          {
            v7 = v8;
            if (*(v6 + 8 * v9))
            {
              break;
            }
          }
        }

        v7 = v8;
        result = VLSYNC(v6, v8);
        if (!result)
        {
          return result;
        }

LABEL_15:
        v14 = v7 + 3;
        while (1)
        {
          if (result == a2)
          {
            return 1;
          }

          v15 = (*(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL);
          if (!v15)
          {
            break;
          }

          if ((*v15 & 2) != 0)
          {
            result = *(result + 8 * v14) & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            result = *v15 & 0xFFFFFFFFFFFFFFFCLL;
          }
        }

        return 0;
      }

      else
      {
        v16 = *(a1 + 200);
        if (*(v16 + 656) == spine_changed)
        {
          v17 = 0;
          v18 = v16 + 1064;
          for (i = (v16 + 664); ; ++i)
          {
            if (v17 == 50)
            {
              v23 = *(v16 + 660);
              if (v23 <= 48)
              {
                v24 = v23 + 1;
              }

              else
              {
                v24 = 0;
              }

              *(v16 + 660) = v24;
              v25 = v24;
              while (*(v16 + 1516 + 4 * v25) >= 13)
              {
                if (v25 <= 48)
                {
                  ++v25;
                }

                else
                {
                  v25 = 0;
                }

                if (v25 == v24)
                {
                  v21 = v24;
                  v25 = v24;
LABEL_45:
                  *(v16 + 660) = v25;
                  *(v16 + 664 + 8 * v21) = a2;
                  *(*(a1 + 200) + 8 * v21 + 1064) = v6;
                  v22 = *(a1 + 200);
                  v22[v21 + 379] = 1;
                  goto LABEL_46;
                }
              }

              v21 = v25;
              goto LABEL_45;
            }

            if (*i == a2 && i[50] == v6)
            {
              break;
            }

            ++v17;
          }

          ++*(v18 + 4 * v17 + 452);
          return *(v18 + v17 + 400);
        }

        else
        {
          for (j = 0; j != 50; ++j)
          {
            *(v16 + 8 * j + 664) = 0;
            *(*(a1 + 200) + 8 * j + 1064) = 0;
            v16 = *(a1 + 200);
            *(v16 + 4 * j + 1516) = 0;
          }

          v21 = 0;
          *(v16 + 664) = a2;
          *(*(a1 + 200) + 1064) = v6;
          v22 = *(a1 + 200);
          v22[379] = 1;
          v22[165] = 0;
          v22[164] = spine_changed;
LABEL_46:
          while (1)
          {
            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
            if (!v6)
            {
              break;
            }

            if (v6 == a2)
            {
              result = 1;
              *(v22 + v21 + 1464) = 1;
              return result;
            }
          }

          result = 0;
          *(v22 + v21 + 1464) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t vsync_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    if (vnormalize(a1, a2, a3) == 2)
    {
      *a2 = OUTLINED_FUNCTION_19_45();
    }

    OUTLINED_FUNCTION_0_78();
  }

  return 1;
}

uint64_t vtmark_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_4_62(a1, a2, a3);
    if (v6 == 2)
    {
      v7 = OUTLINED_FUNCTION_19_45();
    }

    else
    {
      if (v6 != 3)
      {
LABEL_9:
        OUTLINED_FUNCTION_0_78();
        return 1;
      }

      if (v5)
      {
        v7 = lmost(*(v3 + 8), *v3);
      }

      else
      {
        v7 = rmost(v4, *(v3 + 8), *v3);
      }
    }

    *v3 = v7;
    goto LABEL_9;
  }

  return 1;
}

uint64_t vtimept_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_4_62(a1, a2, a3);
  if (v6 != 2)
  {
    if (v6 != 4)
    {
      if (v6 != 3)
      {
        return 0;
      }

      if (v5)
      {
        v7 = lmost(*(v3 + 8), *v3);
      }

      else
      {
        v7 = rmost(v4, *(v3 + 8), *v3);
      }

      *v3 = v7;
    }

    OUTLINED_FUNCTION_0_78();
  }

  return 1;
}

BOOL vctxt_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return 1;
  }

  v3 = vnormalize(a1, a2, a3);
  if ((v3 - 3) < 2)
  {
    OUTLINED_FUNCTION_0_78();
    return 1;
  }

  return v3 == 2;
}

uint64_t vmove_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    vnormalize(a1, a2, a3);
    OUTLINED_FUNCTION_0_78();
  }

  return 1;
}

void vtsttmark_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_4_62(a1, a2, a3);
    if ((v6 - 1) >= 2)
    {
      if (v6 == 3)
      {
        if (v5)
        {
          v7 = lmost(*(v3 + 8), *v3);
        }

        else
        {
          v7 = rmost(v4, *(v3 + 8), *v3);
        }

        *v3 = v7;
      }

      OUTLINED_FUNCTION_0_78();
    }
  }
}

void vtstctx_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return;
  }

  v5 = OUTLINED_FUNCTION_4_62(a1, a2, a3);
  if (v5 == 2)
  {
    v6 = v3[2];
    if (v4 == 1 && v6 >= 1)
    {
      OUTLINED_FUNCTION_14_53();
      if (v13)
      {
        v17 = *v14(v15 + 16);
        v18 = -2147483647;
      }

      else
      {
        if (v16 != 65532)
        {
          v17 = 0;
LABEL_25:
          v3[2] -= v17;
LABEL_26:
          v19 = *(*v3 + 8);
LABEL_33:
          *v3 = v19 & 0xFFFFFFFFFFFFFFFCLL;
          return;
        }

        v17 = *v14(v15 + 16);
        v18 = -32767;
      }

      if (v17 == v18)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v4 || (v6 & 0x8000000000000000) == 0)
    {
      return;
    }

    OUTLINED_FUNCTION_14_53();
    if (v13)
    {
      v11 = *v8(v9 + 16);
      v12 = -2147483647;
    }

    else
    {
      if (v10 != 65532)
      {
        v11 = 0;
LABEL_31:
        v3[2] += v11;
LABEL_32:
        v19 = **v3;
        goto LABEL_33;
      }

      v11 = *v8(v9 + 16);
      v12 = -32767;
    }

    if (v11 == v12)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v5 == 4 || v5 == 3)
  {
    OUTLINED_FUNCTION_0_78();
  }
}

uint64_t vcomp_pta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 24) & 1) != 0 && (*(a3 + 24))
  {
    v15 = *a2 == *a3;
LABEL_23:
    v14 = !v15;
    goto LABEL_26;
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  if ((*(a3 + 24) & 2) != 0)
  {
    vnormalize(a1, a2, a3);
    vnormalize(a1, v3, v16);
    if (*(a2 + 8) != *(v3 + 8) || *a2 != *v3 || *(a2 + 16) != v3[2])
    {
LABEL_20:
      v10 = a1 + 192;
LABEL_21:
      v14 = 1;
      goto LABEL_27;
    }

    v14 = 0;
LABEL_26:
    v10 = a1 + 192;
    goto LABEL_27;
  }

  v6 = a3;
  v3 = a2;
LABEL_7:
  v7 = *v6;
  switch(vnormalize(a1, v3, a3))
  {
    case 3u:
      v8 = lmost(*(v3 + 8), *v3);
      v9 = rmost(a1, *(v3 + 8), *v3);
      v10 = a1 + 192;
      v11 = *(v3 + 8);
      v12 = *(v7 + 8 * (*(*(a1 + 192) + 9084) + v11));
      v13 = v7;
      if ((v12 & 1) == 0)
      {
        v7 = *(v7 + 8 * v11 + 24) & 0xFFFFFFFFFFFFFFFCLL;
        v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      }

      if (v7 != v8 && !visleft(a1, v8, v7) || v13 != v9 && !visleft(a1, v13, v9))
      {
        goto LABEL_21;
      }

      v14 = 0;
      break;
    case 4u:
      v15 = *v3 == v7;
      goto LABEL_23;
    default:
      goto LABEL_20;
  }

LABEL_27:
  *(*v10 + 8120) = v14;
  return 0;
}

uint64_t vrange_l()
{
  OUTLINED_FUNCTION_9_59();
  vtmark_tv(v5, v6, 1);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == **(v1 + 200))
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_20_43(result, v4, (*(*v2 + 8 * v4 + 24) & 0xFFFFFFFFFFFFFFFCLL), *v2);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 1);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

void dupsync(uint64_t result, uint64_t a2, _BYTE *a3, int a4)
{
  v7 = 0;
  if (a4)
  {
    while (v7 < *(result + 288))
    {
      OUTLINED_FUNCTION_18_46();
      if (v8)
      {
        v9 = OUTLINED_FUNCTION_11_55();
        if (!vproject(v9, a2, v10, a3, v11))
        {
          break;
        }
      }

      ++v7;
    }
  }

  else
  {
    while (v7 < *(result + 288))
    {
      OUTLINED_FUNCTION_18_46();
      if (v12)
      {
        v13 = OUTLINED_FUNCTION_11_55();
        if (!vproject(v13, a2, a3, v14, v15))
        {
          break;
        }
      }

      LODWORD(v7) = v7 + 1;
    }
  }
}

uint64_t vrange_r()
{
  OUTLINED_FUNCTION_9_59();
  vtmark_tv(v5, v6, 0);
  result = vdef_proj(v1, *v2, v4);
  if (result)
  {
    if (*v2 == *(*(v1 + 200) + 8))
    {
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_3_66();
      result = OUTLINED_FUNCTION_20_43(v9, v4, v10, v10[v8 + v4] & 0xFFFFFFFFFFFFFFFCLL);
      *v0 = result;
      if (result)
      {
        if (v3)
        {
          dupsync(v1, result, *v2, 0);
        }

        result = 1;
        *(v0 + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t vprt_range(__int16 *a1, uint64_t a2, uint64_t a3)
{
  result = vtimept_tv(a1, a2, 0);
  if (result)
  {
    result = vtimept_tv(a1, a3, 1);
    if (result)
    {
      if ((*(a2 + 24) & 2) != 0 && *(a2 + 16) >= 1)
      {
        *a2 = VRSYNC(a1, *a2, *(a2 + 8));
      }

      if ((*(a3 + 24) & 2) != 0 && (*(a3 + 16) & 0x8000000000000000) != 0)
      {
        *a3 = VLSYNC(*a3, *(a3 + 8));
      }

      return 1;
    }
  }

  return result;
}

uint64_t ctxt_clstr(uint64_t a1, uint64_t a2, int a3)
{
  v6 = &vstmtbl[12 * a3];
  v7 = *v6[2];
  OUTLINED_FUNCTION_16_49();
  v12 = vgetsc(v8, v9, v10, a2, v11);
  v13 = vgetsc(a1, 0, 1, a2, a3);
  while (1)
  {
    if (v12 == v13)
    {
      return 1;
    }

    if (v12 && (*v12 & 2) != 0)
    {
      OUTLINED_FUNCTION_3_66();
      v16 = &v12[8 * v15 + 8 * a3];
      goto LABEL_12;
    }

    v14 = *(v6[1] + 15);
    if (v14 == 65532)
    {
      if (*v7(v12 + 16))
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (v14 == 65533 && *v7(v12 + 16))
    {
      return 0;
    }

LABEL_11:
    v16 = v12 + 8;
LABEL_12:
    v12 = (*v16 & 0xFFFFFFFFFFFFFFFCLL);
  }
}

uint64_t OUTLINED_FUNCTION_4_62(__int16 *a1, uint64_t a2, uint64_t a3)
{

  return vnormalize(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_12_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{

  return dynaBufAddString(a23, (v23 - 116), 0);
}

uint64_t OUTLINED_FUNCTION_19_45()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = *v0;

  return vsplit_time(v1, v4, v5, v3);
}

uint64_t OUTLINED_FUNCTION_20_43(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{

  return vins_sync(v4, a2, a3, a4);
}

BOOL initializeDeltaHeap(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = 0;
  v6 = *(a1 + 200);
  *(v6 + 1736) = v4;
  *(v6 + 1752) = v4;
  *(v6 + 1776) = a2;
  v7 = v6 + 1800;
  while (v5 != 400)
  {
    *(v7 + v5) = 1;
    v5 += 40;
  }

  return v4 != 0;
}

_DWORD *allocDynaSegment(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 2192);
  if (v3)
  {
    v3[4] = 0;
    v4 = *(v3 + 4);
    *(v2 + 2192) = *(v3 + 5);
    --*(v2 + 2184);
    v5 = v4 & 3;
    if ((v4 & 7) == 0)
    {
      v5 = 4;
    }

    *(v3 + 5) = 0;
    *v3 = 0;
    *(v3 + 1) = v5;
  }

  else
  {
    v8 = malloc_type_malloc(0x30uLL, 0x10A0040B1233896uLL);
    v3 = v8;
    if (v8)
    {
      v8[5] = 0;
      *v8 = 0;
      *(v8 + 4) = 0;
      v9 = malloc_type_malloc(a2, 0x100004077774924uLL);
      *(v3 + 3) = v9;
      if (v9)
      {
        v10 = v9 + a2 - 1;
        *(v3 + 4) = v10;
        v11 = v10 & 3;
        v12 = (v10 & 7) == 0;
        v13 = 4;
        if (!v12)
        {
          v13 = v11;
        }

        *(v3 + 1) = v13;
      }

      else
      {
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

void *allocDeltaHeapObject(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  v3 = *(v2 + 1752);
  if (a2 + 8 < 1)
  {
    LODWORD(v6) = *(v3 + 2);
  }

  else
  {
    if ((a2 & 7) != 0)
    {
      v4 = ((a2 + 8) & 0x7FFFFFF8) + 8;
    }

    else
    {
      v4 = a2 + 8;
    }

    v5 = v3[1];
    v6 = v5 + v4;
    v3[1] = v6;
    v7 = *(v2 + 1776);
    if (v7 <= v6)
    {
      v3[1] = v5;
      result = allocDynaSegment(a1, v7);
      v3[5] = result;
      if (!result)
      {
        return result;
      }

      v6 = result[1] + v4;
      *result = v3;
      result[1] = v6;
      v2 = *(a1 + 200);
      if (*(v2 + 1776) < v6)
      {
        return 0;
      }

      v3 = result;
    }
  }

  v10 = v3[4];
  if (!v10)
  {
    return 0;
  }

  v11 = (v10 - v6);
  v12 = *(v2 + 1752);
  v13 = *(v12 + 40);
  if (v13)
  {
    *(v2 + 1752) = v13;
    v12 = v13;
  }

  *v11 = v12;
  result = v11 + 1;
  ++*(v12 + 16);
  return result;
}

void freeDeltaHeapObject(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 4) - 1;
  *(v2 + 4) = v3;
  if (!v3)
  {
    v4 = *(a1 + 200);
    v5 = *(v4 + 1752);
    if (v2 == v5)
    {
      v5[1] = v5[4] & 3;
    }

    else
    {
      v6 = *(v4 + 2184);
      v7 = v2[5];
      v8 = *v2;
      *(*v2 + 40) = v7;
      if (v6 > 19)
      {
        if (v7)
        {
          *v7 = v8;
        }

        free(v2[3]);

        free(v2);
      }

      else
      {
        if (v7)
        {
          *v7 = v8;
        }

        v2[5] = *(v4 + 2192);
        *(v4 + 2192) = v2;
        *(v4 + 2184) = v6 + 1;
      }
    }
  }
}

BOOL resetDeltaHeap()
{
  OUTLINED_FUNCTION_0_79();
  freeDynaMem(*(v1 + 1736));
  v2 = *(*(v0 + 200) + 1776);

  return initializeDeltaHeap(v0, v2);
}

void freeDynaMem(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    do
    {
      v2 = *(v1 + 40);
      free(*(v1 + 24));
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void freeDeltaHeapTo(uint64_t a1, uint64_t a2, int a3)
{
  for (i = 0; i != 10; ++i)
  {
    v7 = *(a1 + 200);
    v8 = v7 + 40 * i;
    if (!*(v8 + 1800) && *(v8 + 1784) == a2)
    {
      while (1)
      {
        v11 = *(v7 + 1752);
        v12 = v7 + 1784;
        if (!v11 || v11 == *(v12 + 40 * i + 8))
        {
          break;
        }

        free(*(v11 + 24));
        v9 = *(a1 + 200);
        v10 = **(v9 + 1752);
        *(v9 + 1752) = v10;
        free(*(v10 + 40));
        v7 = *(a1 + 200);
      }

      if (v11)
      {
        v14 = v12 + 40 * i;
        *(v11 + 8) = *(v14 + 24);
        *(v11 + 16) = *(v14 + 32);
        if (a3)
        {
          *(v12 + 40 * i + 16) = 1;
        }

        return;
      }
    }
  }
}

uint64_t recordDeltaHeapPos(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = v1 + 1744;
  v3 = 11;
  while (--v3)
  {
    v4 = v2 + 40;
    v5 = *(v2 + 56);
    v2 += 40;
    if (v5)
    {
      *(v4 + 16) = 0;
      v6 = *(v1 + 1752);
      v7 = *(v6 + 8);
      v8 = *(v6 + 32) - v7;
      *(v4 + 24) = v7;
      *(v4 + 32) = *(v6 + 16);
      *v4 = v8;
      *(v4 + 8) = v6;
      return 1;
    }
  }

  return 0;
}

uint64_t getDeltaHeapSegNumber(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = *(a2 - 8);
  v5 = *(a1 + 200);
  for (i = (v5 + 1736); ; i = (v7 + 40))
  {
    v7 = *i;
    if (!v7 || v7 == v4)
    {
      break;
    }

    ++v3;
  }

  if (v7)
  {
    return ((*(v4 + 32) - a2) / a3) + *(v5 + 1776) / a3 * v3;
  }

  v10 = (v5 + 2192);
  do
  {
    v11 = *v10;
    v10 = (*v10 + 40);
    if (v11)
    {
      v12 = v11 == v4;
    }

    else
    {
      v12 = 1;
    }
  }

  while (!v12);
  if (v11)
  {
    return 4294967294;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t initializeDeltaStack(uint64_t a1, unsigned int a2)
{
  v4 = allocDynaSegment(a1, a2);
  v5 = *(a1 + 200);
  *(v5 + 1744) = v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 4) - v6;
  *(v5 + 1780) = a2;
  v8 = *(v5 + 296);
  v9 = (v7 - v8);
  *(v5 + 1720) = v9;
  *(v5 + 1728) = a2 - v6 - v8;
  *v9 = 8;
  *(v5 + 1760) = v9;
  return 1;
}

uint64_t resetDeltaStack()
{
  OUTLINED_FUNCTION_0_79();
  freeDynaMem(*(v1 + 1744));
  v2 = *(v0 + 200);
  *(v2 + 1744) = 0;
  v3 = *(v2 + 1780);

  return initializeDeltaStack(v0, v3);
}

uint64_t peekDeltaStackStart()
{
  OUTLINED_FUNCTION_0_79();
  *(v1 + 1768) = *(v1 + 1720);
  peekDeltaStackNext(v2);
  return *(*(v0 + 200) + 1768);
}

uint64_t peekDeltaStackNext(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1768);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    case 8:
      v3 = 2;
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1768) = result + v3;
  return result;
}

uint64_t popDeltaStackTop(uint64_t a1)
{
  v1 = *(a1 + 200);
  result = *(v1 + 1720);
  switch(*result)
  {
    case 0:
    case 3:
      v3 = *(v1 + 288);
      break;
    case 1:
      v3 = *(v1 + 284);
      break;
    case 2:
      v3 = *(v1 + 280) + ((*(result + 16) - 1) | 3) + 1;
      break;
    case 4:
    case 6:
      v3 = *(v1 + 296);
      break;
    case 5:
      v3 = *(v1 + 292);
      break;
    case 7:
      v3 = *(v1 + 276);
      break;
    default:
      v3 = 0;
      break;
  }

  *(v1 + 1720) = result + v3;
  *(v1 + 1728) += v3;
  return result;
}

void deltaHeapCleanup()
{
  OUTLINED_FUNCTION_0_79();
  v2 = v1[274];
  if (v2)
  {
    freeDynaMem(v2);
    v1 = *(v0 + 200);
  }

  v3 = v1[217];
  if (v3)
  {
    freeDynaMem(v3);
    v1 = *(v0 + 200);
  }

  v4 = v1[218];
  if (v4)
  {
    freeDynaMem(v4);
    v1 = *(v0 + 200);
  }

  v1[274] = 0;
  v1[217] = 0;
  v1[219] = 0;
  v1[218] = 0;
}

uint64_t vmeminit(uint64_t a1)
{
  v2 = *(a1 + 200);
  *(v2 + 276) = ((*(a1 + 232) - 1) | 3) + 1;
  *(v2 + 280) = xmmword_26DBB5070;
  *(v2 + 296) = 4;
  result = initializeDeltaStack(a1, 0xFA00u);
  if (result)
  {
    result = initializeDeltaHeap(a1, 0x2000u);
    if (result)
    {
      v4 = *(a1 + 200);
      *(*(a1 + 192) + 8112) = *(v4 + 1720);
      *(v4 + 252) = 0;
      *(v4 + 256) = 0;
      result = malloc_type_malloc(0x50uLL, 0x100004090896170uLL);
      v5 = *(a1 + 200);
      *(v5 + 264) = result;
      if (result)
      {
        *(v5 + 272) = -1;
        viasizes();
        return 1;
      }
    }
  }

  return result;
}

void *vpush_var(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = &unk_26DBB5080 + 4 * (v2 + 6);
  if (v2 <= 0xFFFFFFF9)
  {
    v3 = &vstmtbl[12 * *(a2 + 8) + 8] + 4;
  }

  v4 = *v3;
  v5 = *(a1 + 200);
  v6 = *(v5 + 280);
  v7 = ((v4 - 1) | 3) + 1;
  v8 = *(v5 + 1720) - (v7 + v6);
  *(v5 + 1720) = v8;
  *(v5 + 1728) -= v7 + v6;
  *v8 = 2;
  *(v8 + 2) = v2;
  *(v8 + 16) = v4;
  v9 = *a2;
  *(v8 + 8) = v9;
  return memcpy((v8 + v6), v9, v7);
}

void vadd(uint64_t a1, double **a2, __int16 **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v7 = *(a3 + 4);
      switch(v7)
      {
        case 65531:
          v9 = OUTLINED_FUNCTION_6_62(v3, a2);
          break;
        case 65532:
          v8 = *a2;
          v9 = **a2;
          v11 = **a3;
          break;
        case 65533:
          v9 = OUTLINED_FUNCTION_6_62(v3, a2);
          v11 = v10;
          break;
        default:
          return;
      }

      *v8 = v9 + v11;
      break;
    case 65532:
      v6 = *(a3 + 4);
      if (v6 == 65531 || v6 == 65532 || v6 == 65533)
      {
        OUTLINED_FUNCTION_3_67(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      if (v5 == 65531 || v5 == 65532 || v5 == 65533)
      {
        OUTLINED_FUNCTION_2_72(*a2);
      }

      break;
  }
}

void vsub(uint64_t a1, double **a2, __int16 **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v7 = *(a3 + 4);
      switch(v7)
      {
        case 65531:
          v9 = OUTLINED_FUNCTION_6_62(v3, a2);
          break;
        case 65532:
          v8 = *a2;
          v9 = **a2;
          v11 = **a3;
          break;
        case 65533:
          v9 = OUTLINED_FUNCTION_6_62(v3, a2);
          v11 = v10;
          break;
        default:
          return;
      }

      *v8 = v9 - v11;
      break;
    case 65532:
      v6 = *(a3 + 4);
      if (v6 == 65531 || v6 == 65532 || v6 == 65533)
      {
        OUTLINED_FUNCTION_3_67(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      if (v5 == 65531 || v5 == 65532 || v5 == 65533)
      {
        OUTLINED_FUNCTION_2_72(*a2);
      }

      break;
  }
}

void vmult(uint64_t a1, double **a2, __int16 **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 65531:
      v7 = *(a3 + 4);
      switch(v7)
      {
        case 65531:
          v9 = OUTLINED_FUNCTION_6_62(v3, a2);
          break;
        case 65532:
          v8 = *a2;
          v9 = **a2;
          v11 = **a3;
          break;
        case 65533:
          v9 = OUTLINED_FUNCTION_6_62(v3, a2);
          v11 = v10;
          break;
        default:
          return;
      }

      *v8 = v9 * v11;
      break;
    case 65532:
      v6 = *(a3 + 4);
      if (v6 == 65531 || v6 == 65532 || v6 == 65533)
      {
        OUTLINED_FUNCTION_3_67(*a2);
      }

      break;
    case 65533:
      v5 = *(a3 + 4);
      if (v5 == 65531 || v5 == 65532 || v5 == 65533)
      {
        OUTLINED_FUNCTION_2_72(*a2);
      }

      break;
  }
}

void vdiv(uint64_t a1, double **a2, uint64_t **a3)
{
  v3 = *(a2 + 4);
  switch(v3)
  {
    case 65531:
      v7 = *(a3 + 4);
      if (v7 != 65531)
      {
        if (v7 == 65532)
        {
          v8 = *a2;
          v9 = **a2;
          v10 = **a3;
        }

        else
        {
          if (v7 != 65533)
          {
            return;
          }

          v8 = *a2;
          v9 = **a2;
          v10 = **a3;
        }

        *v8 = v9 / v10;
        return;
      }

      **a2 = **a2 / **a3;
      break;
    case 65532:
      v6 = *(a3 + 4);
      switch(v6)
      {
        case 65531:
          OUTLINED_FUNCTION_3_67(*a2);
          break;
        case 65532:
          **a2 /= **a3;
          break;
        case 65533:
          **a2 = **a2 / **a3;
          break;
      }

      break;
    case 65533:
      v4 = *(a3 + 4);
      switch(v4)
      {
        case 65531:
          OUTLINED_FUNCTION_2_72(*a2);
          break;
        case 65532:
          v5 = **a3;
          goto LABEL_21;
        case 65533:
          v5 = **a3;
LABEL_21:
          **a2 /= v5;
          break;
      }

      break;
  }
}

uint64_t vnegative(uint64_t a1, double **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      return **a2 < 0.0;
    case 65532:
      return **a2 >> 15;
    case 65533:
      return **a2 >> 63;
  }

  return 0;
}

double vnegate(uint64_t a1, void **a2)
{
  v2 = *(a2 + 4);
  switch(v2)
  {
    case 65531:
      result = -**a2;
      **a2 = result;
      break;
    case 65532:
      OUTLINED_FUNCTION_3_67(*a2);
      break;
    case 65533:
      OUTLINED_FUNCTION_2_72(*a2);
      break;
  }

  return result;
}

void vassign(uint64_t a1, void **a2, double **a3)
{
  switch(*(a2 + 4))
  {
    case 0xFFFA:
      goto LABEL_2;
    case 0xFFFB:
      v7 = *(a3 + 4);
      if (v7 == 65531)
      {
        v9 = **a3;
        goto LABEL_30;
      }

      if (v7 == 65532)
      {
        v11 = **a3;
        if (v11 == 32769)
        {
          goto LABEL_2;
        }

        v9 = v11;
        goto LABEL_30;
      }

      if (v7 != 65533)
      {
        return;
      }

      v8 = **a3;
      if (v8 != -2147483647)
      {
        v9 = v8;
LABEL_30:
        **a2 = v9;
        return;
      }

LABEL_2:
      OUTLINED_FUNCTION_2_72(*a2);
      return;
    case 0xFFFC:
      v5 = *(a3 + 4);
      switch(v5)
      {
        case 65531:
          v12 = **a3;
          if (v12 == 2.22507386e-308)
          {
            OUTLINED_FUNCTION_3_67(*a2);
            return;
          }

          v6 = v12;
LABEL_12:
          **a2 = v6;
          return;
        case 65532:
LABEL_11:
          LOWORD(v6) = **a3;
          goto LABEL_12;
        case 65533:
          **a2 = **a3;
          break;
      }

      return;
    case 0xFFFD:
      v3 = *(a3 + 4);
      switch(v3)
      {
        case 65531:
          v10 = **a3;
          if (v10 == 2.22507386e-308)
          {
            goto LABEL_2;
          }

          v4 = v10;
          break;
        case 65532:
          v4 = **a3;
          break;
        case 65533:
          v4 = **a3;
          break;
        default:
          return;
      }

      **a2 = v4;
      return;
    case 0xFFFE:
      goto LABEL_11;
    case 0xFFFF:
      **a2 = **a3;
      return;
    default:
      memcpy(*a2, *a3, SHIDWORD(vstmtbl[12 * *(a2 + 4) + 8]));
      return;
  }
}

void vcompare(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 0xFFFAu:
      v5 = absoluteSyncNumPtr(**a2);
      absoluteSyncNumPtr(**a3);
      OUTLINED_FUNCTION_4_63();
      if (v5 == v8)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    case 0xFFFBu:
      v18 = *(a3 + 4);
      if (v18 == 65531)
      {
        v19 = OUTLINED_FUNCTION_5_63(a1, a2);
      }

      else
      {
        if (v18 != 65533)
        {
          return;
        }

        v19 = OUTLINED_FUNCTION_5_63(a1, a2);
        v21 = v20;
      }

      if (v19 < v21)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_4_63();
      if (v26 != v27)
      {
        goto LABEL_32;
      }

LABEL_31:
      *(v6 + v7) = 0;
      return;
    case 0xFFFCu:
      v12 = *(a3 + 4);
      if (v12 == 65532)
      {
        goto LABEL_12;
      }

      if (v12 != 65533)
      {
        return;
      }

      v13 = **a2;
      v14 = **a3;
      if (v14 > v13)
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 192);
      if (v14 != v13)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    case 0xFFFDu:
      v9 = *(a3 + 4);
      if (v9 == 65532)
      {
        v10 = **a2;
        v11 = **a3;
      }

      else
      {
        if (v9 != 65533)
        {
          return;
        }

        v10 = **a2;
        v11 = **a3;
      }

      if (v10 < v11)
      {
LABEL_29:
        OUTLINED_FUNCTION_4_63();
        v25 = -1;
        goto LABEL_33;
      }

      v15 = *(a1 + 192);
      if (v10 == v11)
      {
LABEL_19:
        *(v15 + 8120) = 0;
      }

      else
      {
LABEL_26:
        *(v15 + 8120) = 1;
      }

      break;
    case 0xFFFEu:
LABEL_12:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    case 0xFFFFu:
      v16 = **a2;
      v17 = **a3;
      if (v16 < v17)
      {
        goto LABEL_29;
      }

LABEL_18:
      v15 = *(a1 + 192);
      if (v16 == v17)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    default:
      if (*(a3 + 4) == v4)
      {
        memcmp(*a2, *a3, SHIDWORD(vstmtbl[12 * v4 + 8]));
        OUTLINED_FUNCTION_4_63();
        *(v23 + v24) = v22;
      }

      else
      {
        OUTLINED_FUNCTION_4_63();
LABEL_32:
        v25 = 1;
LABEL_33:
        *(v6 + v7) = v25;
      }

      break;
  }
}

BOOL vcompareTypeCheck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  switch(v3)
  {
    case -6:
      v5 = *(a3 + 8) == -6;
      goto LABEL_6;
    case -5:
    case -4:
    case -3:
      return (*(a3 + 8) + 5) < 3u;
    case -2:
      v5 = *(a3 + 8) == -2;
      goto LABEL_6;
    case -1:
      v5 = *(a3 + 8) == -1;
LABEL_6:
      result = v5;
      break;
    default:
      result = (v3 & 0x80000000) == 0 && v3 < *(a1 + 288);
      break;
  }

  return result;
}

uint64_t vinitloc(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*a2 + 16);
  if (v4 < 0 || (v5 = *(a2 + 8), v5 == -1))
  {
    v8 = 0;
    *(result + 8) = v4;
    *result = *(a2 + 16);
  }

  else
  {
    v6 = *&vstmtbl[12 * *(*a2 + 16) + 2][8 * v5];
    TVFLDS();
    result = v6();
    *v3 = result;
    v7 = &vstmtbl[12 * *(*a2 + 16) + 1][40 * *(a2 + 8)];
    *(v3 + 8) = *(v7 + 15);
    v8 = v7[32];
  }

  *(v3 + 10) = v8;
  return result;
}

uint64_t vnspush(uint64_t result, _WORD **a2)
{
  v2 = *(a2 + 4);
  v3 = *(result + 200);
  v4 = *(v3 + 264);
  v5 = *(v3 + 272) + 1;
  *(v3 + 272) = v5;
  *(v4 + 16 * v5 + 8) = v2;
  switch(v2)
  {
    case 0xFFFB:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFC:
    case 0xFFFE:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFD:
      *(v4 + 16 * v5) = **a2;
      break;
    case 0xFFFF:
      *(v4 + 16 * v5) = **a2;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t vnspop(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 272);
  v4 = *(v2 + 264) + 16 * v3;
  v5 = *(v4 + 8);
  *(a2 + 8) = v5;
  *(a2 + 10) = 0;
  if (v5 >= 0xFFFB)
  {
    *a2 = v4;
  }

  *(v2 + 272) = v3 - 1;
  return result;
}

uint64_t vonstack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192) + 8112;
  while (1)
  {
    v3 = *v2;
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 8);
    v5 = *v4;
    v2 = (v4 + 7);
    if (v5 == a2)
    {
      return *(*v2 + 8);
    }
  }

  return 0;
}

void *alloc_sync(uint64_t a1)
{
  v2 = allocDeltaHeapObject(a1, *(*(a1 + 200) + 248));
  v3 = v2;
  if (v2)
  {
    bzero(v2, *(*(a1 + 200) + 248));
    *v3 |= 2uLL;
    SETONESTM(v3);
    CLRALLNSQ(v3);
  }

  return v3;
}

uint64_t vdltinit(uint64_t a1, int a2)
{
  *(*(a1 + 200) + 248) = 16 * *(a1 + 288) + 48;
  resetDeltaHeap();
  **(a1 + 200) = alloc_sync(a1);
  v4 = alloc_sync(a1);
  result = 0;
  v6 = *(a1 + 200);
  v6[1] = v4;
  if (*v6)
  {
    if (v4)
    {
      result = recordDeltaHeapPos(a1);
      if (result)
      {
        CLRONESTM(**(a1 + 200));
        CLRONESTM(*(*(a1 + 200) + 8));
        v7 = 0;
        v8 = &qword_28053A450;
        while (v7 < *(a1 + 288))
        {
          *v8 = 0;
          OUTLINED_FUNCTION_0_80(**(a1 + 200));
          OUTLINED_FUNCTION_0_80(*(v9 + 8));
          OUTLINED_FUNCTION_1_75(v10);
          if (a2)
          {
            result = vinit_stm(a1, v7);
            if (!result)
            {
              return result;
            }
          }

          ++v7;
          v8 += 12;
        }

        SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
        SETSPINEL(*(*(a1 + 200) + 8), **(a1 + 200));
        v11 = *(a1 + 192);
        *(v11 + 8080) = 0;
        *(v11 + 8088) = 256;
        result = 1;
        *(v11 + 8090) = 1;
        *(v11 + 9080) = 1;
      }
    }
  }

  return result;
}

uint64_t vscaninit(uint64_t result)
{
  v1 = *(result + 192);
  *(v1 + 8080) = 0;
  *(v1 + 8088) = 256;
  *(v1 + 8090) = 1;
  return result;
}

uint64_t deltaReinit(uint64_t a1, int a2)
{
  CLRONESTM(**(a1 + 200));
  CLRONESTM(*(*(a1 + 200) + 8));
  v4 = 0;
  v5 = &qword_28053A450;
  while (v4 < *(a1 + 288))
  {
    *v5 = 0;
    OUTLINED_FUNCTION_0_80(**(a1 + 200));
    OUTLINED_FUNCTION_0_80(*(v6 + 8));
    OUTLINED_FUNCTION_1_75(v7);
    if (a2)
    {
      vinit_stm(a1, v4);
    }

    ++v4;
    v5 += 12;
  }

  SETSPINER(a1, **(a1 + 200), *(*(a1 + 200) + 8));
  v8 = *(a1 + 200);
  v10 = *v8;
  v9 = v8[1];

  return SETSPINEL(v9, v10);
}

void vnstackCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 264);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 264) = 0;
  }
}

void OUTLINED_FUNCTION_1_75(void *a1@<X8>)
{
  *(*a1 + 8 * (v3 + *(v1 + 9084))) = *(*a1 + 8 * (v3 + *(v1 + 9084))) & 3 | a1[1];
  v4 = *(*(v2 + 200) + 8) + 8 * v3;
  *(v4 + 24) = *(v4 + 24) & 3 | **(v2 + 200);
}

int *print_delta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, char a10, char a11)
{
  v109 = *MEMORY[0x277D85DE8];
  *v108 = a4;
  *&v108[8] = a5;
  v15 = malloc_type_malloc(0x58uLL, 0x10300406A7A1B15uLL);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v15[16] = a9 + 2;
  v15[6] = a9;
  *v15 = *v108;
  *(v15 + 2) = a8;
  *(v15 + 68) = a6;
  v17 = num_fields(v15);
  *(v16 + 28) = v17;
  v18 = malloc_type_calloc(v17 + 1, 0x10uLL, 0x1010040449DF08BuLL);
  *(v16 + 32) = v18;
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = 0;
  v20 = *(v16 + 28);
  v21 = v18 + 8;
  while (v19 <= v20)
  {
    *v21 = 0;
    v21 += 2;
    ++v19;
  }

  OUTLINED_FUNCTION_15_52();
  v25 = hashNew(v22, v23, v24);
  *(v16 + 72) = v25;
  if (!v25)
  {
LABEL_19:
    free_lines(v16);
LABEL_20:
    free(v16);
    return 0;
  }

  OUTLINED_FUNCTION_15_52();
  v29 = hashNew(v26, v27, v28);
  *(v16 + 80) = v29;
  if (!v29)
  {
LABEL_18:
    OUTLINED_FUNCTION_15_52();
    *(v16 + 72) = hashDelete(v36, v37, v38);
    goto LABEL_19;
  }

  v30 = rb_alloc(*(v16 + 28), 0);
  *(v16 + 40) = v30;
  if (!v30)
  {
LABEL_17:
    OUTLINED_FUNCTION_15_52();
    *(v16 + 80) = hashDelete(v33, v34, v35);
    goto LABEL_18;
  }

  if (a6)
  {
    v31 = rb_alloc(1, 0);
    *(v16 + 48) = v31;
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v16 + 48) = 0;
  }

  if (pvlist_size(*(v16 + 16)) < 1)
  {
    *(v16 + 56) = 0;
  }

  else
  {
    v32 = rb_alloc(1, 0);
    *(v16 + 56) = v32;
    if (!v32)
    {
      rb_free(*(v16 + 48));
LABEL_16:
      rb_free(*(v16 + 40));
      goto LABEL_17;
    }
  }

  v40 = OUTLINED_FUNCTION_18_47();
  if (first_field(v40, v41, v42, v43))
  {
    v44 = 0;
    do
    {
      v45 = *(v16 + 32) + 16 * v44;
      *v45 = 0;
      *(v45 + 4) = 0;
      v46 = stream_name(0);
      v47 = 0;
      *(*(v16 + 32) + 16 * v44 + 8) = strdup(v46);
      while (v47 < *(v16 + 64))
      {
        place_char(v16, v44, v47, 32);
        v47 = (v47 + 1);
      }

      place_char(v16, v44++, v47, 0);
      v48 = OUTLINED_FUNCTION_18_47();
    }

    while (next_field(v48, v49, v50, v51));
  }

  for (i = 0; ; i = (i + 1))
  {
    v53 = *(v16 + 28);
    if (i >= *(v16 + 64))
    {
      break;
    }

    place_char(v16, v53, i, 45);
  }

  place_char(v16, v53, i, 0);
  v54 = 0;
  while (1)
  {
    v55 = *(v16 + 28);
    if (v54 >= v55)
    {
      break;
    }

    v56 = left_delta(a1);
    if (register_sync(v16, v54, v56, 0))
    {
      v57 = right_delta(a1);
      v58 = register_sync(v16, v54, v57, (*(v16 + 64) - 1));
      v54 = (v54 + 1);
      if (v58)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (!a7)
  {
    v93 = 0;
    for (j = 0; j < v55; ++j)
    {
      if (time_stream(*(*(v16 + 32) + v93)))
      {
        v95 = OUTLINED_FUNCTION_5_64();
        if (!add_tokens(v95, v96, v97))
        {
          goto LABEL_37;
        }

        if (a11)
        {
          v98 = OUTLINED_FUNCTION_5_64();
          if (!space_syncs(v98, v99, v100))
          {
            goto LABEL_37;
          }
        }
      }

      v55 = *(v16 + 28);
      v93 += 16;
    }
  }

  v59 = 0;
  for (k = 0; k < v55; ++k)
  {
    if (!time_stream(*(*(v16 + 32) + v59)))
    {
      v61 = OUTLINED_FUNCTION_5_64();
      if (!add_tokens(v61, v62, v63))
      {
        goto LABEL_37;
      }

      if (a11)
      {
        v64 = OUTLINED_FUNCTION_5_64();
        if (!space_syncs(v64, v65, v66))
        {
          goto LABEL_37;
        }
      }
    }

    v55 = *(v16 + 28);
    v59 += 16;
  }

  if (a7)
  {
    for (m = 0; m < v55; ++m)
    {
      if (!time_stream(*(*(v16 + 32) + 16 * m)))
      {
        goto LABEL_72;
      }

      v68 = *(*(v16 + 32) + 16 * m);
      if (checkInterrupt(a1))
      {
        goto LABEL_37;
      }

      v69 = left_delta(a1);
      v70 = 0;
      while (1)
      {
        v71 = right_delta(a1);
        if (syncmark_equ(v69, v71))
        {
          break;
        }

        v72 = v69;
        do
        {
          v72 = sync_to_right(a1, v68, v72);
          v73 = hashLookupInt(*(v16 + 80), v72);
        }

        while (!v73);
        find_off(v73, v16, v72);
        v74 = OUTLINED_FUNCTION_19_46();
        v77 = place_char(v74, v75, v76, 124);
        find_off(v77, v16, v69);
        v78 = OUTLINED_FUNCTION_19_46();
        v81 = OUTLINED_FUNCTION_21_42(v78, v79, v80);
        if (v82)
        {
          goto LABEL_37;
        }

        v83 = v81;
        v84 = 1;
        while (1)
        {
          v69 = sync_to_right(a1, v68, v69);
          if (syncmark_equ(v69, v72))
          {
            break;
          }

          if (is_token_prev(v68, v69))
          {
            if (v84)
            {
              v70 = 0;
            }

            token = prev_token(v68, v69);
            v84 = 0;
            v70 += time_field_value(v68, token);
          }
        }

        if (is_token_prev(v68, v72))
        {
          if (v84)
          {
            v70 = 0;
          }

          v86 = prev_token(v68, v72);
          v70 += time_field_value(v68, v86);
          goto LABEL_67;
        }

        v69 = v72;
        if ((v84 & 1) == 0)
        {
LABEL_67:
          __sprintf_chk(v108, 0, 0x10uLL, "%i", v70);
          v87 = OUTLINED_FUNCTION_19_46();
          if (insert_token_name(v87, v88, v83, v89) == -1)
          {
            goto LABEL_37;
          }

          v90 = OUTLINED_FUNCTION_19_46();
          v69 = v72;
          if (insert_padding(v90, v91, v92) == -1)
          {
            goto LABEL_37;
          }
        }
      }

      if (a11 && !space_syncs(a1, v16, m))
      {
        goto LABEL_37;
      }

LABEL_72:
      v55 = *(v16 + 28);
    }
  }

  if (a6)
  {
    for (n = 0; n < *(v16 + 64); ++n)
    {
      if (*(*(*(*(v16 + 40) + 16) + 8 * *(v16 + 28)) + n) == 43)
      {
        sync = find_sync(v16, n);
        v103 = absoluteSyncNum(a1, sync);
        __sprintf_chk(v108, 0, 6uLL, "%i", v103);
        if (!rb_stradd(*(v16 + 48), n, v108))
        {
          goto LABEL_37;
        }
      }
    }
  }

  if (checkInterrupt(a1))
  {
LABEL_37:
    close_ddisp(v16);
    return 0;
  }

  if (pvlist_size(*(v16 + 16)) >= 1)
  {
    for (ii = 0; ii < pvlist_size(*(v16 + 16)); ++ii)
    {
      v105 = pvlist_name();
      v106 = pvlist_val();
      if (v106)
      {
        off = find_off(v106, v16, v106);
        if ((off & 0x80000000) == 0 && !rb_stradd(*(v16 + 56), off, v105))
        {
          goto LABEL_37;
        }
      }
    }
  }

  return v16;
}

uint64_t add_tokens(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v86 = *MEMORY[0x277D85DE8];
  v6 = (*(a2 + 32) + 16 * a3);
  v7 = *v6;
  v8 = *(v6 + 1);
  if (checkInterrupt(a1))
  {
    return 0;
  }

  v10 = left_delta(v5);
  while (1)
  {
    v11 = right_delta(v5);
    if (syncmark_equ(v10, v11))
    {
      return 1;
    }

    v12 = v10;
    do
    {
      v12 = sync_to_right(v5, v7, v12);
      v13 = hashLookupInt(*(a2 + 80), v12);
    }

    while (!v13);
    find_off(v13, a2, v12);
    v14 = OUTLINED_FUNCTION_1_76();
    v17 = place_char(v14, v15, v16, 124);
    find_off(v17, a2, v10);
    v18 = OUTLINED_FUNCTION_1_76();
    v21 = OUTLINED_FUNCTION_21_42(v18, v19, v20);
    if (v22)
    {
      return 0;
    }

    inserted = v21;
    while (1)
    {
      v10 = sync_to_right(v5, v7, v10);
      if (syncmark_equ(v10, v12))
      {
        break;
      }

      v24 = inserted;
      while (1)
      {
        sync = col_next_sync(a2, v24);
        if (sync == -1)
        {
          break;
        }

        find_sync(a2, sync);
        if (!syncmark_order())
        {
          break;
        }

        v26 = OUTLINED_FUNCTION_1_76();
        v24 = ensure_spaces(v26, v27, v24, v28);
        if (v24 == -1)
        {
          return 0;
        }
      }

      v29 = hashLookupInt(*(a2 + 72), v24);
      if (v29)
      {
        if (!syncmark_equ(*(v29 + 8), v10))
        {
          v30 = OUTLINED_FUNCTION_1_76();
          result = insert_space_0(v30, v31, v24);
          if (!result)
          {
            return result;
          }
        }
      }

      v32 = OUTLINED_FUNCTION_1_76();
      register_sync(v32, v33, v10, v24);
      if (is_token_prev(v7, v10))
      {
        v82 = v5;
        v79 = v10;
        token = prev_token(v7, v10);
        v80 = v8;
        v81 = v7;
        v35 = field_value(v7, token, v8, v85);
        v36 = 0;
        v37 = inserted;
        v38 = inserted;
        for (i = v35 + 1; ; ++i)
        {
          v40 = v35[v36];
          if (!v40)
          {
            break;
          }

          OUTLINED_FUNCTION_9_60();
          if (*(*(v41 + 8 * a3) + v37 + v36) != 32)
          {
            break;
          }

          v42 = OUTLINED_FUNCTION_1_76();
          place_char(v42, v43, v44, v45);
          ++v36;
          inserted = (inserted + 1);
        }

        v83 = v38;
        while (1)
        {
          if (!v40)
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_9_60();
          if (*(*(v46 + 8 * a3) + v37 + v36) != 124 || *(*(v46 + 8 * *(a2 + 28)) + v37 + v36 + 1) == 43)
          {
            break;
          }

          v47 = (v83 + v36);
          v48 = OUTLINED_FUNCTION_1_76();
          place_char_in_stream(v48, v49, v47, 32);
          v50 = OUTLINED_FUNCTION_1_76();
          place_char_in_stream(v50, v51, (v47 + 1), 124);
          place_char(a2, *(a2 + 28), v47, 45);
          place_char(a2, *(a2 + 28), (v47 + 1), 43);
          v84 = inserted;
          v52 = v37;
          v53 = hashLookupInt(*(a2 + 72), v47);
          *v53 = v47 + 1;
          hashDeleteInt();
          hashInsertInt(*(a2 + 72), v47 + 1, v53);
          v54 = &v35[v36];
          v55 = OUTLINED_FUNCTION_1_76();
          place_char(v55, v56, v47, v57);
          ++v36;
          v40 = v54[1];
          v37 = v52;
          inserted = (v84 + 1);
          ++i;
        }

        v40 = 1;
LABEL_30:
        while (v40)
        {
          v58 = OUTLINED_FUNCTION_1_76();
          result = insert_space_0(v58, v59, inserted);
          if (!result)
          {
            return result;
          }

          v60 = OUTLINED_FUNCTION_1_76();
          place_char(v60, v61, inserted, v62);
          v63 = *i++;
          v40 = v63;
          inserted = (inserted + 1);
        }

        if (inserted == -1)
        {
          return 0;
        }

        v64 = OUTLINED_FUNCTION_1_76();
        OUTLINED_FUNCTION_21_42(v64, v65, inserted);
        if (v22)
        {
          return 0;
        }

        v66 = OUTLINED_FUNCTION_1_76();
        next_sync(v66, v67, v24);
        v5 = v82;
        v8 = v80;
        v7 = v81;
        v10 = v79;
      }

      v68 = OUTLINED_FUNCTION_1_76();
      inserted = insert_padding(v68, v69, v70);
      result = 0;
      if (inserted == -1)
      {
        return result;
      }
    }

    v10 = v12;
    if (is_token_prev(v7, v12))
    {
      v71 = prev_token(v7, v12);
      field_value(v7, v71, v8, v85);
      v72 = OUTLINED_FUNCTION_1_76();
      if (insert_token_name(v72, v73, inserted, v74) == -1)
      {
        return 0;
      }

      v75 = OUTLINED_FUNCTION_1_76();
      v78 = insert_padding(v75, v76, v77);
      result = 0;
      v10 = v12;
      if (v78 == -1)
      {
        return result;
      }
    }
  }
}

uint64_t space_syncs(uint64_t a1, uint64_t a2, int a3)
{
  if (checkInterrupt(a1))
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1_76();
  v8 = 1;
  while (1)
  {
    sync = next_sync(v6, v7, v8);
    if (sync >= *(a2 + 64))
    {
      break;
    }

    OUTLINED_FUNCTION_9_60();
    if (*(*(v10 + 8 * a3) + sync - 1) == 124)
    {
      v11 = OUTLINED_FUNCTION_1_76();
      result = insert_space_0(v11, v12, sync);
      if (!result)
      {
        return result;
      }
    }

    v6 = OUTLINED_FUNCTION_1_76();
  }

  return 1;
}

void close_ddisp(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_15_52();
    *(a1 + 80) = hashDelete(v2, v3, v4);
    *(a1 + 72) = hashDelete(*(a1 + 72), 0, 1);
    rb_free(*(a1 + 40));
    rb_free(*(a1 + 48));
    rb_free(*(a1 + 56));
    free_lines(a1);

    free(a1);
  }
}

uint64_t find_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  do
  {
    v4 = hashLookupInt(*(a1 + 72), v2--);
  }

  while (!v4);
  return *(v4 + 8);
}

uint64_t find_off(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = hashLookupInt(*(a2 + 80), a3);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void lf_print_delta(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, int a7, uint64_t a8, int a9, char a10, char a11, int a12)
{
  v99 = *MEMORY[0x277D85DE8];
  v96 = 0;
  v97 = 0;
  if (a12)
  {
    v17 = a12;
  }

  else
  {
    v17 = 77;
  }

  fill_stream_list(a1, &v96, a5);
  if (v20)
  {
    v21 = print_delta(a1, v18, v19, v96, v97, a6, a7, a8, a9, 0, a11);
    if (v21)
    {
      v22 = v21;
      v94 = a1;
      HIDWORD(v95) = a2;
      v23 = 0;
      v24 = 0;
      v25 = 16 * (v21[7] & ~(v21[7] >> 31));
      while (v25 != v23)
      {
        v26 = *(v22 + 32) + v23;
        v27 = strlen(*(v26 + 8));
        if (*(v26 + 4))
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v29 = v28 + v27;
        if (v24 <= v29)
        {
          v24 = v29;
        }

        v23 += 16;
      }

      __memset_chk();
      LODWORD(v30) = 0;
      v98[v24] = 0;
      HIDWORD(v93) = v17 - v24;
LABEL_15:
      while ((v30 & 0x80000000) == 0)
      {
        v31 = *(v22 + 64);
        if (v30 >= v31)
        {
          break;
        }

        v32 = 0;
        v33 = v30 + HIDWORD(v93);
        if (v30 + HIDWORD(v93) >= v31)
        {
          v34 = *(v22 + 64);
        }

        else
        {
          v34 = v30 + HIDWORD(v93);
        }

        v35 = *(v22 + 28) & ~(*(v22 + 28) >> 31);
        abs_split = v34;
        while (v32 != v35)
        {
          for (i = v34; i > v30; --i)
          {
            v38 = OUTLINED_FUNCTION_3_68();
            if (can_split_stream_line(v38, v39, i))
            {
              break;
            }
          }

          if (abs_split >= i)
          {
            abs_split = i;
          }

          ++v32;
        }

        if (*(v22 + 68))
        {
          for (j = 0; j < rb_lines(*(v22 + 48)); ++j)
          {
            rb_width(*(v22 + 48));
            OUTLINED_FUNCTION_17_48();
            if (v41 == v42)
            {
              rb_width(*(v22 + 48));
            }

            OUTLINED_FUNCTION_3_68();
            if (abs_split >= prev_abs_split())
            {
              rb_width(*(v22 + 48));
              OUTLINED_FUNCTION_17_48();
              if (v41 == v42)
              {
                rb_width(*(v22 + 48));
              }

              OUTLINED_FUNCTION_3_68();
              abs_split = prev_abs_split();
            }
          }
        }

        v43 = rb_lines(*(v22 + 56));
        if (v43 >= 1)
        {
          for (k = 0; ; ++k)
          {
            v43 = rb_lines(*(v22 + 56));
            if (k >= v43)
            {
              break;
            }

            rb_width(*(v22 + 56));
            OUTLINED_FUNCTION_17_48();
            if (v41 == v42)
            {
              rb_width(*(v22 + 56));
            }

            OUTLINED_FUNCTION_3_68();
            if (abs_split >= prev_ptr_split())
            {
              rb_width(*(v22 + 56));
              OUTLINED_FUNCTION_17_48();
              if (v41 == v42)
              {
                rb_width(*(v22 + 56));
              }

              OUTLINED_FUNCTION_3_68();
              abs_split = prev_ptr_split();
            }
          }
        }

        if (abs_split == v30)
        {
          if (v33 >= *(v22 + 64))
          {
            abs_split = *(v22 + 64);
          }

          else
          {
            abs_split = v30 + HIDWORD(v93);
          }
        }

        v51 = 0;
        while (1)
        {
          v52 = *(v22 + 28);
          if (v51 >= v52)
          {
            break;
          }

          v53 = *(v22 + 32);
          if (*(v53 + 16 * v51 + 4) < 1)
          {
            v54 = 0;
          }

          else
          {
            heading_string_buf[0] = 32;
            v54 = 1u;
          }

          for (m = 0; ; ++m)
          {
            v56 = *(*(v53 + 16 * v51 + 8) + m);
            if (!v56)
            {
              break;
            }

            heading_string_buf[v54 + m] = v56;
            v53 = *(v22 + 32);
          }

          v57 = v54 + m;
          v58 = (v54 + m);
          v59 = 58;
          do
          {
            heading_string_buf[v58] = v59;
            v58 = v57 + 1;
            LODWORD(v54) = v54 + 1;
            v59 = 32;
            ++v57;
          }

          while (v24 > m + v54);
          heading_string_buf[(m + v54)] = 0;
          OUTLINED_FUNCTION_16_50();
          v61 = *(v60 + 8 * v51);
          OUTLINED_FUNCTION_3_68();
          stream_split = next_stream_split();
          OUTLINED_FUNCTION_3_68();
          v63 = next_stream_split();
          v35 = v94;
          lf_put_disp_line(v94, HIDWORD(v95), heading_string_buf, v61, v30, stream_split, v63, 0);
          v43 = checkInterrupt(v94);
          ++v51;
          if (v43)
          {
LABEL_74:
            LODWORD(v30) = -1;
            goto LABEL_15;
          }
        }

        if (*(v22 + 68))
        {
          OUTLINED_FUNCTION_11_56(v43, v44, v45, *(*(*(v22 + 40) + 16) + 8 * v52), v46, v47, v48, v49, v91, HIDWORD(v91), v92, v93, v94, v95, HIDWORD(v95), v96, v97);
          v64 = 0;
          while (v64 < rb_lines(*(v22 + 48)))
          {
            rb_gets(*(v22 + 48), v64, 0);
            OUTLINED_FUNCTION_3_68();
            next_abs_split();
            OUTLINED_FUNCTION_3_68();
            v65 = next_abs_split();
            OUTLINED_FUNCTION_8_61(v65, v66, v67, v68, v69, v70, v71, v72, v91, v92, v93, v94, v95, HIDWORD(v95), v96, v97);
            ++v64;
            if (checkInterrupt(v35))
            {
              goto LABEL_74;
            }
          }
        }

        if (rb_lines(*(v22 + 56)))
        {
          OUTLINED_FUNCTION_16_50();
          OUTLINED_FUNCTION_11_56(v74, v75, v76, *(v73 + 8 * *(v22 + 28)), v77, v78, v79, v80, v91, HIDWORD(v91), v92, v93, v94, v95, HIDWORD(v95), v96, v97);
          v81 = 0;
          while (v81 < rb_lines(*(v22 + 56)))
          {
            rb_gets(*(v22 + 56), v81, 0);
            OUTLINED_FUNCTION_3_68();
            next_ptr_split();
            OUTLINED_FUNCTION_3_68();
            ptr_split = next_ptr_split();
            OUTLINED_FUNCTION_8_61(ptr_split, v83, v84, v85, v86, v87, v88, v89, v91, v92, v93, v94, v95, HIDWORD(v95), v96, v97);
            ++v81;
            if (checkInterrupt(v35))
            {
              goto LABEL_74;
            }
          }
        }

        vf_puts(v94, SHIDWORD(v95), "\n", 1);
        v30 = abs_split;
        if (abs_split <= v33)
        {
          v90 = v33;
        }

        else
        {
          v90 = abs_split;
        }

        while (v30 < v33)
        {
          if (*(*(*(*(v22 + 40) + 16) + 8 * *(v22 + 28)) + v30) == 43)
          {
            goto LABEL_15;
          }

          ++v30;
        }

        LODWORD(v30) = v90;
      }

      close_ddisp(v22);
    }
  }
}

void free_lines(uint64_t a1)
{
  v2 = 0;
  for (i = 8; ; i += 16)
  {
    v4 = *(a1 + 32);
    if (v2 > *(a1 + 28))
    {
      break;
    }

    free(*&v4[i]);
    *(*(a1 + 32) + i) = 0;
    ++v2;
  }

  free(v4);
  *(a1 + 32) = 0;
}

void delta_erase(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 28) > a3)
  {
    if (a4 == a5)
    {
      OUTLINED_FUNCTION_9_60();
      v13 = a3;
      if (*(*(v14 + 8 * a3) + a4) == 124)
      {
        v15 = *(*(a2 + 32) + 16 * a3);
        sync = find_sync(a2, a4);
        if (can_del_sync(a1, v15, sync))
        {
          v17 = *(*(a2 + 32) + 16 * a3);
          v18 = find_sync(a2, a4);
          if (del_sync(a1, v17, v18))
          {
            v19 = OUTLINED_FUNCTION_1_76();
            unregister_sync(v19, v20, a4);
            update_token(a2, a3, (a4 - 1));
          }
        }

LABEL_17:
        OUTLINED_FUNCTION_22_40();
        return;
      }
    }

    else
    {
      v13 = a3;
    }

    v21 = *(*(a2 + 32) + 16 * v13);
    v22 = find_sync(a2, a4);
    v23 = find_sync(a2, a5);
    if (del_two_point(a1, v21, v22, v23))
    {
      v24 = OUTLINED_FUNCTION_1_76();
      v26 = prev_sync(v24, v25, a4);
      v27 = OUTLINED_FUNCTION_1_76();
      v29 = v26;
      v30 = (next_sync(v27, v28, a5) - 1);
      v31 = (v26 + 1);
      while (v29 < v30)
      {
        OUTLINED_FUNCTION_9_60();
        v32 = OUTLINED_FUNCTION_1_76();
        if (v34 == 124)
        {
          unregister_sync(v32, v33, v31);
        }

        else
        {
          place_char_in_stream(v32, v33, v31, 32);
        }

        v31 = (v31 + 1);
        ++v29;
      }
    }

    goto LABEL_17;
  }
}

void unregister_sync(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && *(result + 64) - 1 != a3)
  {
    place_char_in_stream(result, a2, a3, 32);
    v5 = 0;
    v6 = *(result + 28);
    while (8 * (v6 & ~(v6 >> 31)) != v5)
    {
      v7 = *(*(*(*(result + 40) + 16) + v5) + a3);
      v5 += 8;
      if (v7 == 124)
      {
        return;
      }
    }

    place_char(result, v6, a3, 45);
    v8 = OUTLINED_FUNCTION_1_76();
    find_sync(v8, v9);
    hashDeleteInt();
    hashDeleteInt();
    if (*(result + 68))
    {
      rb_strdel(*(result + 48), a3);
    }

    if (rb_lines(*(result + 56)))
    {
      v10 = *(result + 56);

      rb_strdel(v10, a3);
    }
  }
}

unint64_t update_token(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v30 = *MEMORY[0x277D85DE8];
  sync = prev_sync(a1, a2, a3);
  v7 = OUTLINED_FUNCTION_1_76();
  v9 = next_sync(v7, v8, v3);
  v10 = v9;
  v11 = *(*(a1 + 32) + 16 * v4);
  v12 = find_sync(a1, v9);
  result = prev_token(v11, v12);
  if (result)
  {
    v14 = result;
    v15 = v4;
    v16 = (sync + 1);
    for (i = v16; ; i = (i + 1))
    {
      v18 = OUTLINED_FUNCTION_1_76();
      if (i >= v10)
      {
        break;
      }

      place_char_in_stream(v18, v19, i, 32);
    }

    v20 = OUTLINED_FUNCTION_21_42(v18, v19, v16);
    if (v21)
    {
      return 0;
    }

    else
    {
      v22 = v20;
      v23 = 16 * v4;
      v24 = v20;
      while (v15 < *(a1 + 28))
      {
        v25 = *(a1 + 32);
        v26 = *(v25 + v23);
        if (v26 != *(v25 + 16 * v4))
        {
          break;
        }

        v27 = field_value(v26, v14, *(v25 + v23 + 4), v29);
        inserted = insert_token_name(a1, v15, v22, v27);
        if (inserted == -1)
        {
          return 0;
        }

        if (v24 <= inserted)
        {
          v24 = inserted;
        }

        ++v15;
        v23 += 16;
      }

      OUTLINED_FUNCTION_21_42(a1, v4, v24);
      return !v21;
    }
  }

  return result;
}

uint64_t prev_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 28);
  if (a3 >= -1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = a3;
  }

  if (v4 <= a2)
  {
    while ((a3 & 0x80000000) == 0)
    {
      if (*(*(*(*(a1 + 40) + 16) + 8 * v4) + a3) == 43)
      {
        return OUTLINED_FUNCTION_10_58(result, a2, a3);
      }

      a3 = (a3 - 1);
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    while (*(*(*(*(a1 + 40) + 16) + 8 * a2) + a3) != 124)
    {
      a3 = (a3 - 1);
      if ((a3 & 0x80000000) != 0)
      {
        return result;
      }
    }

    return OUTLINED_FUNCTION_10_58(result, a2, a3);
  }

  return result;
}

uint64_t next_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 28);
  v4 = *(*(a1 + 40) + 16);
  result = a3;
  if (v3 <= a2)
  {
    v7 = *(v4 + 8 * v3);
    while (*(v7 + result) && *(v7 + result) != 43)
    {
      ++result;
    }
  }

  else
  {
    v6 = *(v4 + 8 * a2);
    while (*(v6 + result) && *(v6 + result) != 124)
    {
      ++result;
    }
  }

  return result;
}

void place_char_in_stream(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = a2;
  v9 = a2 - 1;
  v10 = 16 * a2;
  while (1)
  {
    v11 = __OFSUB__(v6, 1);
    if (--v6 < 0 != v11 || *(*(a1 + 32) + 16 * v9) != *(*(a1 + 32) + v10))
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_20_44();
    place_char(v12, v13, a3, v4);
    --v9;
  }

  for (i = v10; v8 < *(a1 + 28) && *(*(a1 + 32) + i) == *(*(a1 + 32) + v10); i += 16)
  {
    place_char(a1, v8++, a3, v4);
  }

  OUTLINED_FUNCTION_22_40();
}

uint64_t insert_spaces(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  for (i = 0; ; ++i)
  {
    v9 = *(a1 + 28);
    if (i >= v9)
    {
      break;
    }

    if (a2 == i)
    {
      v10 = *(a1 + 40);
      v11 = a2;
      space_or_sync = a3;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_20_44();
      space_or_sync = next_space_or_sync(v13, v14, a3);
      v10 = *(a1 + 40);
      v11 = i;
    }

    result = rb_inscn(v10, v11, space_or_sync, 32, v4);
    if (!result)
    {
      return result;
    }
  }

  result = rb_inscn(*(a1 + 40), v9, a3, 45, v4);
  if (result)
  {
    shift_table_right(*(a1 + 72), a3, *(a1 + 64), v4);
    *(a1 + 64) += v4;
    result = rb_push(*(a1 + 48), a3, v4);
    if (result)
    {
      return rb_push(*(a1 + 56), a3, v4) != 0;
    }
  }

  return result;
}

uint64_t next_space_or_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = (*(*(*(a1 + 40) + 16) + 8 * a2) + a3); ; ++i)
  {
    v4 = *i;
    if (v4 != 39)
    {
      break;
    }

    if (i[1] == 32 && i[2] == 39)
    {
      LODWORD(a3) = a3 + 2;
      i += 2;
    }

LABEL_10:
    a3 = (a3 + 1);
  }

  if (*i && v4 != 32 && v4 != 124)
  {
    goto LABEL_10;
  }

  return OUTLINED_FUNCTION_10_58(a1, a2, a3);
}

_DWORD *shift_table_right(_DWORD *result, int a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = result;
  v7 = a4 + a2;
  while ((a4 + v5) >= v7)
  {
    result = hashMoveInt(v6, v5, a4 + v5);
    if (result)
    {
      *result = a4 + v5;
    }

    --v5;
  }

  return result;
}

uint64_t place_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (preceded_by_token(a2, a3))
  {
    v8 = OUTLINED_FUNCTION_6_63();
    if (followed_by_token(v8, v9))
    {
      return 0;
    }

    v19 = OUTLINED_FUNCTION_6_63();
    sync = next_sync(v19, v20, v21);
    find_sync(a2, sync);
    v15 = OUTLINED_FUNCTION_20_44();
    v18 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_63();
    v14 = prev_sync(v11, v12, v13);
    find_sync(a2, v14);
    v15 = OUTLINED_FUNCTION_20_44();
    v18 = 0;
  }

  v23 = ins_sync(v15, v16, v17, v18);
  place_char_in_stream(a2, v5, a4, 124);
  OUTLINED_FUNCTION_9_60();
  if (*(*(v24 + 8 * *(a2 + 28)) + a4) == 43)
  {
    return 1;
  }

  result = new_sync(a2, v23, a4);
  if (result)
  {
    if (!*(a2 + 68))
    {
      return 1;
    }

    v25 = absoluteSyncNum(a1, v23);
    __sprintf_chk(v26, 0, 6uLL, "%i", v25);
    result = rb_stradd(*(a2 + 48), a4, v26);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL preceded_by_token(uint64_t a1, int a2)
{
  if (*(a1 + 28) <= a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_55();
  return *(v2 + prev_non_blank(v4, v5, (v3 - 1))) != 124;
}

BOOL followed_by_token(uint64_t a1, int a2)
{
  if (*(a1 + 28) <= a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_55();
  return *(v2 + next_non_blank(v4, v5, (v3 + 1))) != 124;
}

void *new_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!hashLookupInt(*(a1 + 72), a3) && !hashLookupInt(*(a1 + 80), a2))
  {
    v8 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
    v6 = v8;
    if (!v8)
    {
      return v6;
    }

    *v8 = a3;
    *(v8 + 1) = a2;
    if (hashInsertInt(*(a1 + 72), a3, v8) && hashInsertInt(*(a1 + 80), a2, v6))
    {
      place_char(a1, *(a1 + 28), a3, 43);
      return v6;
    }

    free(v6);
  }

  return 0;
}

void insert_token(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, char *a5, uint64_t a6)
{
  v8 = a4;
  v10 = *(*(a2 + 32) + 16 * a3);
  sync = find_sync(a2, a4);
  if (ins_tok_named(a1, v10, a6, a5, sync) && (v12 = OUTLINED_FUNCTION_4_64(), update_token(v12, v13, v14)))
  {
    v15 = OUTLINED_FUNCTION_4_64();
    next_sync(v15, v16, v8);
    OUTLINED_FUNCTION_22_40();

    change_field(v17, v18, v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_22_40();
  }
}

void change_field(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v10 = *(a2 + 32) + 16 * a3;
  v11 = *v10;
  v12 = *(v10 + 4);
  sync = find_sync(a2, a4);
  if (set_fld_value(a1, v11, v12, a6, a5, sync))
  {
    v14 = OUTLINED_FUNCTION_1_76();
    v17 = prev_sync(v14, v15, v16) + 1;
    for (i = v17; ; i = (i + 1))
    {
      v19 = OUTLINED_FUNCTION_1_76();
      if (i >= v8)
      {
        break;
      }

      place_char(v19, v20, i, 32);
    }

    OUTLINED_FUNCTION_21_42(v19, v20, v17);
    if (!v21)
    {
      v22 = OUTLINED_FUNCTION_1_76();
      if (insert_token_name(v22, v23, v24, a5) != -1)
      {
        v25 = OUTLINED_FUNCTION_1_76();
        OUTLINED_FUNCTION_21_42(v25, v26, v27);
      }
    }
  }

  OUTLINED_FUNCTION_22_40();
}

uint64_t insert_token_name(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  for (i = (a4 + 1); ; ++i)
  {
    v7 = *(i - 1);
    if (!v7)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_50();
    if (*(*(v8 + 8 * a2) + v5) == 124)
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_7_61();
    place_char(v9, v10, v11, v12);
    ++v5;
  }

  v7 = 1;
LABEL_8:
  while (v7)
  {
    v13 = OUTLINED_FUNCTION_7_61();
    if (!insert_space_0(v13, v14, v15))
    {
      return 0xFFFFFFFFLL;
    }

    v16 = OUTLINED_FUNCTION_7_61();
    place_char(v16, v17, v18, v19);
    v20 = *i++;
    v7 = v20;
    v5 = (v5 + 1);
  }

  return v5;
}

uint64_t col_prev_sync(uint64_t a1, uint64_t a2)
{
  if (a2 >= -1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = a2;
  }

  if ((a2 & 0x80000000) == 0)
  {
    while (*(*(*(*(a1 + 40) + 16) + 8 * *(a1 + 28)) + a2) == 45)
    {
      a2 = (a2 - 1);
      if ((a2 & 0x80000000) != 0)
      {
        return result;
      }
    }

    return a2;
  }

  return result;
}

uint64_t col_next_sync(uint64_t a1, int a2)
{
  v2 = (*(*(*(a1 + 40) + 16) + 8 * *(a1 + 28)) + a2);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    if (v4 != 45)
    {
      break;
    }

    ++a2;
  }

  if (v3 == 43)
  {
    return a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t prev_non_blank(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 28);
  if (v3 <= a2)
  {
    if ((a3 & 0x80000000) == 0 && v3 == a2)
    {
      while (*(*(*(*(a1 + 40) + 16) + 8 * a2) + a3) == 45)
      {
        v5 = a3 <= 0;
        a3 = (a3 - 1);
        if (v5)
        {
          a3 = 0xFFFFFFFFLL;
          return OUTLINED_FUNCTION_10_58(a1, a2, a3);
        }
      }
    }
  }

  else
  {
    if (a3 >= -1)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = a3;
    }

    if ((a3 & 0x80000000) != 0)
    {
LABEL_8:
      a3 = v4;
    }

    else
    {
      while (*(*(*(*(a1 + 40) + 16) + 8 * a2) + a3) == 32)
      {
        a3 = (a3 - 1);
        if ((a3 & 0x80000000) != 0)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_10_58(a1, a2, a3);
}

uint64_t next_non_blank(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 28);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      v6 = (*(*(*(a1 + 40) + 16) + 8 * a2) + a3);
      LODWORD(a3) = a3 + 1;
      do
      {
        v7 = *v6--;
        a3 = (a3 - 1);
      }

      while (v7 == 45);
    }
  }

  else
  {
    v4 = (*(*(*(a1 + 40) + 16) + 8 * a2) + a3);
    LODWORD(a3) = a3 - 1;
    do
    {
      v5 = *v4++;
      a3 = (a3 + 1);
    }

    while (v5 == 32);
  }

  return OUTLINED_FUNCTION_10_58(a1, a2, a3);
}

uint64_t num_to_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  for (i = 0; i < *(a2 + 64); ++i)
  {
    OUTLINED_FUNCTION_9_60();
    if (*(*(v12 + 8 * *(a2 + 28)) + i) == 43)
    {
      sync = find_sync(a2, i);
      if (absoluteSyncNum(a1, sync) == v8)
      {
        return sync;
      }
    }
  }

  return 0;
}

BOOL bet_tokens()
{
  OUTLINED_FUNCTION_13_54();
  result = preceded_by_token(v0, v1);
  if (result)
  {
    v3 = OUTLINED_FUNCTION_7_61();
    return followed_by_token(v3, v4);
  }

  return result;
}

uint64_t ensure_spaces(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = a3;
  while (a4 >= 1)
  {
    if (*(*(*(*(a1 + 40) + 16) + 8 * a2) + v5) != 32)
    {
      if (insert_spaces(a1, a2, v5, a4))
      {
        return (a4 + v5);
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    ++v5;
    a4 = (a4 - 1);
  }

  return v5;
}

BOOL register_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  place_char(a1, a2, a4, 124);
  OUTLINED_FUNCTION_16_50();
  return *(*(v7 + 8 * *(a1 + 28)) + a4) == 43 || new_sync(a1, a3, a4) != 0;
}

uint64_t insert_space_0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  for (i = 0; ; ++i)
  {
    v7 = *(a1 + 28);
    if (i >= v7)
    {
      break;
    }

    if (a2 == i)
    {
      v8 = *(a1 + 40);
      v9 = a2;
      space_or_sync = v3;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_6_63();
      space_or_sync = next_space_or_sync(v11, v12, v13);
      v8 = *(a1 + 40);
      v9 = i;
    }

    result = rb_insc(v8, v9, space_or_sync, 32);
    if (!result)
    {
      return result;
    }
  }

  result = rb_insc(*(a1 + 40), v7, v3, 45);
  if (result)
  {
    shift_table_right(*(a1 + 72), v3, *(a1 + 64), 1);
    ++*(a1 + 64);
    result = rb_push(*(a1 + 48), v3, 1);
    if (result)
    {
      return rb_push(*(a1 + 56), v3, 1) != 0;
    }
  }

  return result;
}

uint64_t prev_abs_split()
{
  OUTLINED_FUNCTION_0_81();
  while (v0 > v1)
  {
    OUTLINED_FUNCTION_2_73();
    can_split_abs_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 - 1);
  }

  return v0;
}

uint64_t prev_ptr_split()
{
  OUTLINED_FUNCTION_0_81();
  while (v0 > v1)
  {
    OUTLINED_FUNCTION_2_73();
    can_split_ptr_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 - 1);
  }

  return v0;
}

void lf_put_disp_line(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v12 = *(a4 + a7);
  *(a4 + a7) = 0;
  v13 = a4 + a6;
  if (!a8)
  {
    goto LABEL_6;
  }

    ;
  }

  if (*i)
  {
LABEL_6:
    v15 = OUTLINED_FUNCTION_4_64();
    vf_puts(v15, v16, v17, 0);
    for (j = (a6 - a5) & ~((a6 - a5) >> 31); ; --j)
    {
      v19 = OUTLINED_FUNCTION_4_64();
      if (!j)
      {
        break;
      }

      vf_puts(v19, v20, " ", 0);
    }

    vf_puts(v19, v20, v13, 0);
    v21 = OUTLINED_FUNCTION_4_64();
    vf_puts(v21, v22, v23, 0);
  }

  *(a4 + a7) = v12;
  OUTLINED_FUNCTION_22_40();
}

uint64_t next_stream_split()
{
  OUTLINED_FUNCTION_0_81();
  while (v0 < v1)
  {
    v2 = OUTLINED_FUNCTION_2_73();
    if (can_split_stream_line(v2, v3, v4))
    {
      break;
    }

    v0 = (v0 + 1);
  }

  return v0;
}

uint64_t next_abs_split()
{
  OUTLINED_FUNCTION_0_81();
  while (v0 < v1)
  {
    OUTLINED_FUNCTION_2_73();
    can_split_abs_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 + 1);
  }

  return v0;
}

uint64_t next_ptr_split()
{
  OUTLINED_FUNCTION_0_81();
  while (v0 < v1)
  {
    OUTLINED_FUNCTION_2_73();
    can_split_ptr_line();
    if (v2)
    {
      break;
    }

    v0 = (v0 + 1);
  }

  return v0;
}

BOOL can_split_stream_line(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 64) == a3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_12_55();
  v8 = *(v3 + v7);
  if (v8 == 124)
  {
    return 1;
  }

  if (v8 == 32)
  {
    return *(v3 + next_non_blank(v5, v6, v7)) == 124;
  }

  return 0;
}

void can_split_abs_line()
{
  OUTLINED_FUNCTION_13_54();
  if (rb_width(*(v1 + 48)) != v0)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_14_54();
    }
  }
}

void can_split_ptr_line()
{
  OUTLINED_FUNCTION_13_54();
  if (rb_width(*(v1 + 56)) != v0)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_14_54();
    }
  }
}

void OUTLINED_FUNCTION_8_61(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  lf_put_disp_line(a12, a14, va, v16, v17, v18, a1, 1);
}

void OUTLINED_FUNCTION_11_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  lf_put_disp_line(a13, a15, va, a4, v17, v17, v18, 0);
}

uint64_t vardesc(uint64_t a1, __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = a3 | (a2 << 8);
  if ((a2 & 0x80) != 0)
  {
    return *(a1 + 192) + 24 * ((a3 | (a2 << 8)) & 0x3FFF) + 9144;
  }

  v5 = a4;
  v6 = *(a1 + 192);
  if (!a4)
  {
    v5 = *(v6 + 8104);
LABEL_8:
    result = *(*(v6 + 8112) + 8);
    if (!result)
    {
      return result;
    }

    return *(v5 + 16) + 24 * (v4 & 0x3FFF);
  }

  if (*(v6 + 8104) == a4)
  {
    goto LABEL_8;
  }

  result = vonstack(a1, a4);
  if (result)
  {
    return *(v5 + 16) + 24 * (v4 & 0x3FFF);
  }

  return result;
}

void *rb_alloc(int a1, int a2)
{
  LODWORD(v3) = a1;
  v4 = malloc_type_malloc(0x18uLL, 0x1080040216EE090uLL);
  v5 = v4;
  if (v4)
  {
    if (a2 >= 1)
    {
      v6 = 96 * (a2 / 0x60u) + 96;
    }

    else
    {
      v6 = 96;
    }

    if (v3 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }

    *v4 = v3;
    v4[1] = v6;
    v4[2] = -1;
    v7 = malloc_type_calloc(v3, 8uLL, 0x10040436913F5uLL);
    v5[2] = v7;
    if (v7)
    {
      for (i = 0; v3 != i; ++i)
      {
        v9 = malloc_type_calloc((v6 + 1), 1uLL, 0x100004077774924uLL);
        *(v5[2] + 8 * i) = v9;
        if (!v9)
        {
          while (1)
          {
            v10 = v5[2];
            if ((i & 0x80000000) != 0)
            {
              break;
            }

            free(v10[i]);
            LODWORD(i) = i - 1;
          }

          free(v10);
          goto LABEL_16;
        }

        init_line(*(v5[2] + 8 * i), v6);
      }
    }

    else
    {
LABEL_16:
      free(v5);
      return 0;
    }
  }

  return v5;
}

void *init_line(void *a1, int a2)
{
  result = memset(a1, 32, a2);
  *(a1 + a2) = 0;
  return result;
}

void rb_free(void *a1)
{
  if (a1)
  {
    for (i = 0; ; ++i)
    {
      v3 = a1[2];
      if (i >= *a1)
      {
        break;
      }

      free(v3[i]);
    }

    free(v3);

    free(a1);
  }
}

uint64_t rb_putc(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = a3;
  result = expand_lines(a1, a2);
  if (result)
  {
    result = expand_cols(a1, v5);
    if (result)
    {
      *(*(*(a1 + 16) + 8 * a2) + v5) = a4;
      v9 = *(a1 + 8);
      if (v9 <= v5)
      {
        v9 = v5;
      }

      *(a1 + 8) = v9;
      return 1;
    }
  }

  return result;
}

uint64_t expand_lines(int *a1, int a2)
{
  if (*a1 > a2)
  {
    return 1;
  }

  v5 = a2 + 1;
  result = malloc_type_realloc(*(a1 + 2), 8 * (a2 + 1), 0x10040436913F5uLL);
  if (result)
  {
    *(a1 + 2) = result;
    for (i = *a1; ; ++i)
    {
      if (i > a2)
      {
        *a1 = v5;
        return 1;
      }

      v7 = malloc_type_calloc(a1[1] + 1, 1uLL, 0x100004077774924uLL);
      *(*(a1 + 2) + 8 * i) = v7;
      if (!v7)
      {
        break;
      }

      init_line(*(*(a1 + 2) + 8 * i), a1[1]);
    }

    while (1)
    {
      v8 = *a1;
      v9 = *(a1 + 2);
      if (i < v8)
      {
        break;
      }

      free(v9[i--]);
    }

    v10 = malloc_type_realloc(v9, 8 * v8, 0x10040436913F5uLL);
    result = 0;
    *(a1 + 2) = v10;
  }

  return result;
}

uint64_t expand_cols(int *a1, int a2)
{
  if (a1[1] > a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 96 * ((a2 + 1) / 96);
  v6 = v5 + 96;
  v7 = v5 + 97;
  while (1)
  {
    v8 = *a1;
    if (v4 >= v8)
    {
      break;
    }

    v9 = malloc_type_realloc(*(*(a1 + 2) + 8 * v4), v7, 0x100004077774924uLL);
    if (!v9)
    {
      LODWORD(v8) = *a1;
      break;
    }

    *(*(a1 + 2) + 8 * v4) = v9;
    init_line((*(*(a1 + 2) + 8 * v4++) + a1[1]), v6 - a1[1]);
  }

  if (v8 <= v4)
  {
    a1[1] = v6;
    return 1;
  }

  else
  {
    for (; (v4 & 0x80000000) == 0; LODWORD(v4) = v4 - 1)
    {
      *(*(a1 + 2) + 8 * v4) = malloc_type_realloc(*(*(a1 + 2) + 8 * v4), a1[1] + 1, 0x100004077774924uLL);
    }

    return 0;
  }
}

uint64_t rb_insc(uint64_t a1, int a2, int a3, char a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    result = expand_cols(a1, a3);
    if (result)
    {
      v9 = *(*(a1 + 16) + 8 * a2);
      v10 = *(a1 + 4);
      if (*(v9 + v10 - 1) != 32)
      {
        result = expand_cols(a1, v10 + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(*(a1 + 16) + 8 * a2);
        LODWORD(v10) = *(a1 + 4);
      }

      v11 = (v9 + a3);
      memmove(v11 + 1, v11, v10 + ~a3);
      *v11 = a4;
      ++*(a1 + 8);
      return 1;
    }
  }

  return result;
}

uint64_t rb_inscn(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    v11 = *(a1 + 8);
    v12 = v11 - a5;
    if (v11 >= -1)
    {
      v13 = -1;
    }

    else
    {
      v13 = *(a1 + 8);
    }

    if ((v11 & 0x80000000) == 0)
    {
      while (*(*(*(a1 + 16) + 8 * a2) + v11) == 32 && v11 > v12)
      {
        if (--v11 < 0)
        {
          goto LABEL_13;
        }
      }

      v13 = v11;
    }

LABEL_13:
    result = expand_cols(a1, v13 + a5);
    if (result)
    {
      v15 = (*(*(a1 + 16) + 8 * a2) + a3);
      if ((v11 & 0x80000000) == 0)
      {
        memmove(&v15[a5], v15, v13 - a3 + 1);
      }

      memset(v15, a4, a5);
      v16 = *(a1 + 8);
      if (v16 <= v13 + a5)
      {
        v16 = v13 + a5;
      }

      *(a1 + 8) = v16;
      return 1;
    }
  }

  return result;
}

uint64_t rb_puts(uint64_t a1, int a2, int a3, char *a4)
{
  result = expand_lines(a1, a2);
  if (result)
  {
    v9 = 0;
    v10 = a3;
    while (*a4)
    {
      result = expand_cols(a1, a3 + v9);
      if (!result)
      {
        return result;
      }

      v11 = *a4++;
      *(*(*(a1 + 16) + 8 * a2) + v10) = v11;
      ++v9;
      ++v10;
    }

    v12 = *(a1 + 8);
    if (v12 < v9)
    {
      v12 = v9 - 2;
    }

    *(a1 + 8) = v12;
    return 1;
  }

  return result;
}

uint64_t rb_puts_v(int *a1, int a2, int a3, char *a4)
{
  result = expand_cols(a1, a3);
  if (result)
  {
    while (*a4)
    {
      result = expand_lines(a1, a2);
      if (!result)
      {
        return result;
      }

      v9 = *a4++;
      OUTLINED_FUNCTION_1_77(v9);
    }

    v10 = 32;
    while (a2 < *a1)
    {
      OUTLINED_FUNCTION_1_77(v10);
    }

    v11 = a1[2];
    if (v11 <= a3)
    {
      v11 = a3;
    }

    a1[2] = v11;
    return 1;
  }

  return result;
}

uint64_t rb_stradd(int *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = 0;
  v7 = a2 - 1;
  v8 = a2;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *a1; v6 < i; i = 0)
  {
    v10 = a1[1];
    v11 = v4 < 1 || v10 < v4;
    if (v11 || (v12 = OUTLINED_FUNCTION_0_82(), rb_getc(v12, v13, v7) == 32))
    {
      v14 = v10;
      if (v10 <= v4)
      {
        break;
      }

      v15 = v8;
      v16 = a3;
      while (*v16++)
      {
        if (v15 >= v14 || (v18 = OUTLINED_FUNCTION_0_82(), rb_getc(v18, v19, v15) != 32))
        {
          if (v15 >= v14)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }

        ++v15;
      }

      if (v15 >= v14)
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_0_82();
      if (rb_getc(v20, v21, v15) == 32)
      {
        break;
      }
    }

LABEL_20:
    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

LABEL_23:
  while (*a3++)
  {
    v22 = OUTLINED_FUNCTION_0_82();
    result = rb_putc(v22, v23, v4, v24);
    v4 = (v4 + 1);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

unsigned int *rb_lines(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t rb_getc(uint64_t a1, int a2, int a3)
{
  if (*a1 <= a2 || *(a1 + 4) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*(*(a1 + 16) + 8 * a2) + a3);
  }
}

int *rb_strdel(int *result, int a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2;
  if (!result)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *v3; v4 < i; i = 0)
  {
    result = rb_getc(v3, v4, a2);
    if (result != 32 && (!a2 || *(*(*(v3 + 2) + 8 * v4) + v5 - 1) == 32))
    {
      for (j = v5; *(*(*(v3 + 2) + 8 * v4) + j) != 32; ++j)
      {
        result = rb_putc(v3, v4, j, 32);
      }
    }

    ++v4;
    if (v3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t rb_push(int *a1, int a2, int a3)
{
  v6 = 0;
  v7 = a2;
  v8 = a2 + 1;
  v9 = a2 + 1;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *a1; v6 < i; i = 0)
  {
    if (a2)
    {
      v11 = OUTLINED_FUNCTION_0_82();
      v13 = rb_getc(v11, v12, a2);
      v14 = a2;
      if (v13 != 32)
      {
        v15 = *(*(a1 + 2) + 8 * v6);
        v14 = a2;
        if (*(v15 + v7 - 1) != 32)
        {
          v16 = a1[1];
          if (v16 <= v8)
          {
            v17 = v8;
          }

          else
          {
            v17 = a1[1];
          }

          v18 = v9;
          v14 = a2;
          while (v18 < v16)
          {
            v19 = *(v15 + v18);
            ++v14;
            ++v18;
            if (v19 == 32)
            {
              goto LABEL_16;
            }
          }

          v14 = v17;
        }
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_16:
    if (v14 < a1[1])
    {
      v20 = OUTLINED_FUNCTION_0_82();
      result = rb_inscn(v20, v21, v22, 32, a3);
      if (!result)
      {
        return result;
      }
    }

    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return 1;
}

uint64_t rb_gets(uint64_t a1, int a2, int a3)
{
  if (*a1 > a2 && *(a1 + 4) >= a3)
  {
    return *(*(a1 + 16) + 8 * a2) + a3;
  }

  else
  {
    return 0;
  }
}

uint64_t rb_width(uint64_t result)
{
  if (result)
  {
    return (*(result + 8) + 1);
  }

  return result;
}

uint64_t calcMidline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 100)
  {
    v3 = 100;
  }

  *(a3 + 2) = MidlineVals[v3];
  return OUTLINED_FUNCTION_0_83();
}

uint64_t f0_stepi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 2);
  v7 = *(a5 + 2) * *(a4 + 2);
  if (v7 + v6 < 1)
  {
    LOWORD(v7) = 20 - v6;
  }

  if (v7)
  {
    v8 = v7;
    if (v6 >= 4208)
    {
      v9 = 4208;
    }

    else
    {
      v9 = *(a3 + 2);
    }

    v10 = v9 & ~(v9 >> 31);
    v11 = v10 >> 4;
    v12 = v10 & 0xF;
    if (v12)
    {
      v13 = LnTable[v11 + 1];
      v14 = LnTable[v11];
      v11 = v14 + (((v13 - v14) * v12) >> 4);
    }

    else
    {
      LOWORD(v11) = LnTable[v11];
    }

    v16 = v8 + v6;
    if (v16 >= 4208)
    {
      v16 = 4208;
    }

    v17 = v16 & ~(v16 >> 31);
    v18 = v17 >> 4;
    v19 = v17 & 0xF;
    if (v19)
    {
      v20 = LnTable[v18 + 1];
      v21 = LnTable[v18];
      v18 = v21 + (((v20 - v21) * v19) >> 4);
    }

    else
    {
      LOWORD(v18) = LnTable[v18];
    }

    v15 = (v11 - v18) / *(a2 + 2);
  }

  else
  {
    LOWORD(v15) = 0;
  }

  *(a6 + 2) = v15;
  return OUTLINED_FUNCTION_0_83();
}

uint64_t calcIntoni(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(v5) = *(a2 + 2);
  if (*(a3 + 2))
  {
    v6 = *(a4 + 2) * *(a3 + 2);
    if (v6 >= 1023)
    {
      v6 = 1023;
    }

    v5 = (ExpTable[v6 & ~(v6 >> 31)] * *(a2 + 2)) >> 14;
    if (v5 >= 0x7FFF)
    {
      LOWORD(v5) = 0x7FFF;
    }
  }

  *(a5 + 2) = v5;
  return OUTLINED_FUNCTION_0_83();
}

uint64_t scaleValue100i(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v5 >= *(a4 + 2) * *(a3 + 2) / 100)
  {
    v5 = *(a4 + 2) * *(a3 + 2) / 100;
  }

  if (v5 >= v4)
  {
    LOWORD(v4) = v5;
  }

  *(a4 + 2) = v4;
  return OUTLINED_FUNCTION_0_83();
}

uint64_t calcSpeedFactori(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 150)
  {
    v3 = 150;
  }

  *(a3 + 8) = SpeedTable[v3];
  return OUTLINED_FUNCTION_0_83();
}

uint64_t modulate_pwindi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(a3 + 2) = (PwindModTable[v5] * *(a3 + 2)) >> 7;
  v6 = v5 + 95;
  v7 = 105 - v5;
  if (v4 <= 4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *(a4 + 2) = v8 * *(a4 + 2) / 100;
  return OUTLINED_FUNCTION_0_83();
}

uint64_t modulo(uint64_t a1, double *a2, double *a3, double *a4)
{
  v8 = 0;
  v9 = 0;
  getDeltaCcodeParm(a2, &v9, -3);
  getDeltaCcodeParm(a3, &v8, -3);
  v7 = v9 % v8;
  setDeltaCcodeReturnValue(&v7, -3, a4);
  return 0;
}

uint64_t IntLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2) & ~(*(a2 + 2) >> 31);
  if (v3 >= 5120)
  {
    v3 = 5120;
  }

  v4 = LogTab[v3 >> 5];
  *(a3 + 2) = v4 + (((LogTab[(v3 >> 5) + 1] - v4) * (v3 & 0x1Fu)) >> 5);
  return OUTLINED_FUNCTION_0_83();
}

uint64_t IntExp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 2);
  if (v3 <= 2400)
  {
    v3 = 2400;
  }

  if (v3 >= 5200)
  {
    v3 = 5200;
  }

  v4 = (v3 - 2400) >> 4;
  v5 = ExpTab[v4];
  *(a3 + 2) = v5 + (((v3 & 0xFu) * (ExpTab[v4 + 1] - v5)) >> 4);
  return OUTLINED_FUNCTION_0_83();
}

_DWORD *clr_vector(_DWORD *result, uint64_t a2)
{
  for (i = a2 & ~(a2 >> 63); i; --i)
  {
    *result++ = 0;
  }

  return result;
}

__int16 *mul1_vector(__int16 *result, float a2, float *a3, uint64_t a4)
{
  for (i = a4 & ~(a4 >> 63); i; --i)
  {
    v5 = *result++;
    *a3 = *a3 + (a2 * v5);
    ++a3;
  }

  return result;
}

float *mulf_vector(float *result, float a2, float *a3, uint64_t a4)
{
  for (i = a4 & ~(a4 >> 63); i; --i)
  {
    v5 = *result++;
    *a3 = *a3 + (a2 * v5);
    ++a3;
  }

  return result;
}

float parallel0_filter(float *a1, float *a2, uint64_t a3)
{
  *(a2 - 2) = a1[13];
  v3 = a1 + 12;
  *(a2 - 1) = a1[12];
  v4 = a2;
  for (i = a3 & ~(a3 >> 63); i; --i)
  {
    *v4 = (a1[2] * *(v4 - 2)) + (a1[1] * *(v4 - 1));
    ++v4;
  }

  v6 = &a2[a3 & ~(a3 >> 63)];
  if (a3 > 1)
  {
    v3 = v6 - 2;
  }

  a1[13] = *v3;
  result = *(v6 - 1);
  a1[12] = result;
  return result;
}

uint64_t output_speech(uint64_t result, uint64_t a2)
{
  v2 = result + 0x2000;
  if (*(result + 8866))
  {
    v6 = a2;
    v3 = (result + 2048);
    v7 = result + 2048;
    v4 = *(result + 148);
    if (v4 != 1.0)
    {
      for (i = a2 & ~(a2 >> 63); i; --i)
      {
        *v3 = (v4 * *v3);
        ++v3;
      }
    }

    if (*(result + 3720) == 2)
    {
      result = (*(result + 3728))(*(result + 8), &v6);
      *(v2 + 470) = result;
    }
  }

  return result;
}

double klatt_new(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x22A8uLL, 0x10F20402EFE26D7uLL);
  if (v2)
  {
    *v2 = KlattVersion;
    *(v2 + 1) = a1;
    *(v2 + 38) = 0;
    *(v2 + 1588) = 0;
    *(v2 + 4330) = 0;
    result = 0.0;
    *(v2 + 6504) = 0u;
    *(v2 + 817) = 0;
    *(v2 + 819) = 0;
    *(v2 + 818) = 0;
    v2[8866] = 1;
  }

  return result;
}

void klatt_delete(void *a1)
{
  if (verifyKlattHandle(a1))
  {

    free(a1);
  }
}

void *KlattSetConstParms(uint64_t a1, const void *a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    if (*(a1 + 152) == 2)
    {
      KlattClose(a1);
    }

    result = memcpy((a1 + 3648), a2, 0x58uLL);
    v5 = *(a1 + 3652);
    *(a1 + 6412) = 1000.0 / v5;
    *(a1 + 6408) = v5 * 0.001;
    v6 = *(a1 + 3664);
    *(a1 + 8656) = v6;
    *(a1 + 8658) = v6;
    *(a1 + 6392) = 0;
    v7 = ((1000.0 / v5) * 3.1416) * 0.001;
    *(a1 + 6400) = v7;
    *(a1 + 6404) = v7 + v7;
    *(a1 + 8160) = *(a1 + 3660);
    v8 = *(a1 + 3680);
    v9 = vcvtq_s64_f64(vcvt_hight_f64_f32(v8));
    v10 = vcvtq_s64_f64(vcvtq_f64_f32(*v8.f32));
    v11 = vextq_s8(v10, v9, 8uLL);
    v10.i64[1] = v9.i64[1];
    *(a1 + 8865) = 0;
    *(a1 + 8216) = v11;
    *(a1 + 8200) = v10;
    if (v5 == 11025.0)
    {
      v12 = 1;
    }

    else if (v5 == 16000.0)
    {
      v12 = 2;
    }

    else
    {
      if (v5 == 8000.0)
      {
        *(a1 + 8868) = 0;
        goto LABEL_9;
      }

      v12 = 3;
    }

    *(a1 + 8868) = v12;
LABEL_9:
    *(a1 + 24) = 1;
  }

  return result;
}

BOOL KlattClose(uint64_t a1)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 152) = 0;
  }

  return result;
}

BOOL KlattOpen(uint64_t a1)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    if (*(a1 + 24) != 1)
    {
      (*(a1 + 3712))(*(a1 + 8), " KlattOpen error", "Call KlattSetConstParms at least once before KlattOpen!");
      return 0;
    }

    if (*(a1 + 152) == 2)
    {
      (*(a1 + 3712))(*(a1 + 8), " KlattOpen error", "Synthesizer is already open!");
      return 0;
    }

    *(a1 + 152) = 2;
    *(a1 + 4544) = a1 + 3744;
    *(a1 + 6168) = a1 + 5364;
    *(a1 + 6364) = 0;
    v3 = (a1 + 240);
    v4 = 21;
    do
    {
      *(v3 - 2) = 0;
      *(v3 - 28) = 0;
      *(v3 - 8) = 0;
      --v4;
      *v3 = 0;
      v3 += 11;
    }

    while (v4);
    *(a1 + 16) = 0;
    *(a1 + 6360) = 0;
    *(a1 + 6352) = 0;
    *(a1 + 6504) = 0u;
    *(a1 + 6536) = 0;
    *(a1 + 6552) = 0;
    *(a1 + 6544) = 0;
    result = 1;
    *(a1 + 8866) = 1;
    *(a1 + 8660) = 0;
  }

  return result;
}

BOOL KlattSetOutputSamplesOption(uint64_t a1, char a2)
{
  result = verifyKlattHandle(a1);
  if (result)
  {
    *(a1 + 8866) = a2;
  }

  return result;
}

uint64_t KlattLength(uint64_t a1)
{
  if (verifyKlattHandle(a1))
  {
    return *(a1 + 6544);
  }

  else
  {
    return 0;
  }
}

uint64_t KlattMax(uint64_t a1)
{
  if (verifyKlattHandle(a1))
  {
    return *(a1 + 6552);
  }

  else
  {
    return 0;
  }
}

BOOL KlattSynth(uint64_t a1, uint64_t a2)
{
  v279 = *MEMORY[0x277D85DE8];
  result = verifyKlattHandle(a1);
  if (!result)
  {
    return result;
  }

  v5 = (a1 + 6420);
  ++*(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a1 + 3648);
  v9 = *(a2 + 32);
  v10 = *(a2 + 28);
  v11 = *(a1 + 6408);
  *(a1 + 8176) = v7;
  *(a1 + 8184) = v10;
  *(a1 + 0x2000) = v9;
  if (v7 | v10)
  {
    *(a1 + 6356) = 1101004800;
  }

  v12 = v6 * v8;
  if (v9)
  {
    *(a1 + 6360) = 1101004800;
  }

  v13 = v12 * v11;
  *(a1 + 8663) = 0;
  v14 = *(a2 + 108);
  v15 = *(a2 + 112);
  v17 = *(a2 + 116);
  v16 = *(a2 + 120);
  v19 = *(a2 + 124);
  v18 = *(a2 + 128);
  *&v266[3] = v14;
  *&v266[4] = v19;
  v260[3] = v15;
  v260[4] = v18;
  v21 = *(a2 + 132);
  v20 = *(a2 + 136);
  *&v266[1] = v17;
  *&v266[2] = v21;
  v260[1] = v16;
  v260[2] = v20;
  v22 = *(a2 + 40);
  v23 = *(a2 + 52);
  v24 = *(a2 + 56);
  v267[0] = *(a2 + 36);
  v267[1] = v23;
  v261[0] = v22;
  v261[1] = v24;
  v25 = *(a2 + 60);
  v26 = *(a2 + 64);
  v272 = v23;
  v273 = v25;
  v27 = *(a2 + 68);
  v28 = *(a2 + 72);
  v267[2] = v25;
  v267[3] = v27;
  v261[2] = v26;
  v261[3] = v28;
  v29 = *(a2 + 76);
  v30 = *(a2 + 80);
  v274 = v27;
  v275 = v29;
  v271 = v267[0];
  v267[4] = v29;
  v261[4] = v30;
  v31 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 140)));
  v262 = *(a2 + 176);
  v32 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 148)));
  v256[0] = v31;
  v256[1] = v32;
  v263 = *(a2 + 192);
  v257 = *(a2 + 156);
  v33 = *(a1 + 8160);
  if (v33 >= 6)
  {
    v34 = *(a2 + 88);
    v35 = *(a2 + 92);
    v36 = *(a2 + 96);
    v268 = *(a2 + 84);
    v269 = v35;
    v261[5] = v34;
    v261[6] = v36;
    v37 = *(a2 + 100);
    v38 = *(a2 + 104);
    v277 = v35;
    v278 = v37;
    v276 = v268;
    v270 = v37;
    v261[7] = v38;
    v264 = *(a2 + 196);
    v258 = vcvtq_s64_f64(vcvtq_f64_f32(*(a2 + 160)));
    v265 = *(a2 + 204);
    v259 = *(a2 + 168);
  }

  v247 = v13;
  v39 = *(a1 + 6356);
  v40 = v39;
  if (v39 > 0.00001)
  {
    if (v14 == v17 && v15 == v16)
    {
      *(a1 + 320) = 0;
      *(a1 + 496) = 0;
    }

    else
    {
      *(a1 + 320) = v39;
      *(a1 + 496) = v39;
      if (v14 != *(a1 + 480))
      {
        *(a1 + 6188) = cosf(v14 * *(a1 + 6404));
      }

      if (v17 != *(a1 + 304))
      {
        *(a1 + 6180) = cosf(v17 * *(a1 + 6404));
      }

      if (v15 != *(a1 + 484))
      {
        *(a1 + 6272) = expf(-(*(a1 + 6400) * v15));
      }

      if (v16 != *(a1 + 308))
      {
        *(a1 + 6264) = expf(-(*(a1 + 6400) * v16));
      }
    }

    if (v19 == v21 && v18 == v20)
    {
      *(a1 + 408) = 0;
      *(a1 + 584) = 0;
    }

    else
    {
      *(a1 + 408) = v39;
      *(a1 + 584) = v39;
      if (v19 != *(a1 + 568))
      {
        *(a1 + 6192) = cosf(v19 * *(a1 + 6404));
      }

      if (v21 != *(a1 + 392))
      {
        *(a1 + 6184) = cosf(v21 * *(a1 + 6404));
      }

      if (v18 != *(a1 + 572))
      {
        *(a1 + 6276) = expf(-(*(a1 + 6400) * v18));
      }

      if (v20 != *(a1 + 396))
      {
        *(a1 + 6268) = expf(-(*(a1 + 6400) * v20));
      }
    }
  }

  v250 = a2;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = v33 + 5;
  v255 = a1 + 160;
  v245 = (a1 + 6260);
  while (v43 + 5 < v46)
  {
    *(a1 + v44 + 672) = *(a1 + 6356);
    v47 = *&v267[v45 / 4];
    if (v47 != *(a1 + v44 + 656))
    {
      *(a1 + v45 + 6196) = cosf(v47 * *(a1 + 6404));
    }

    v48 = *&v261[v45 / 4];
    if (v48 != *(a1 + v44 + 660) && *(a1 + 6356) != 0.0)
    {
      *(a1 + v45 + 6280) = expf(-(*(a1 + 6400) * v48));
    }

    v49 = *(a1 + 6360);
    if (v49 <= 0.00001)
    {
      *(a1 + v44 + 1376) = 0;
    }

    else
    {
      if (*(v256 + v43))
      {
        *(a1 + v44 + 1376) = v49;
      }

      *(a1 + v45 + 6228) = *(a1 + v45 + 6196);
      v50 = *(&v262 + v45);
      if (v50 != *(a1 + v44 + 1364))
      {
        *(a1 + v45 + 6312) = expf(-(*(a1 + 6400) * v50));
      }
    }

    v45 += 4;
    v44 += 88;
    ++v43;
  }

  v51 = (a1 + 260);
  for (i = 1; i < v46; ++i)
  {
    v53 = v255 + 88 * i;
    if (*(v53 + 72) != 0.0)
    {
      v54 = v245[i];
      v55 = -(v54 * v54);
      *(v53 + 8) = v55;
      v56 = (v54 * *(a1 + 6176 + 4 * i)) + (v54 * *(a1 + 6176 + 4 * i));
      *v53 = (1.0 - v56) - v55;
      *(v53 + 4) = v56;
      v57 = *(v53 + 56);
      if (v57 == 0.0 || *&v266[i] == v57 && v260[i] == *(v53 + 60))
      {
        *(v53 + 80) = 0;
      }

      else
      {
        *(v53 + 80) = 3;
        v58 = (v56 - *(v53 + 64)) * 0.25;
        v59 = (v55 - *(v53 + 68)) * 0.25;
        v60 = -3;
        v61 = v51;
        do
        {
          v62 = (v60 + 4);
          v63 = *(v53 + 68) + (v62 * v59);
          v61[6] = v63;
          v64 = *(v53 + 64) + (v62 * v58);
          v61[3] = v64;
          *v61++ = (1.0 - v64) - v63;
          ++v60;
        }

        while (v60);
      }
    }

    v51 += 22;
  }

  v65 = *(a1 + 8208) + *(a1 + 0x2000) + *(a1 + 8224);
  v66 = *(a2 + 172);
  if (v66 != 0.0)
  {
    v67 = db2lin(v65 + v66);
    *(a1 + 4552) = *&v67 * -0.0000000033599;
  }

  v68 = 0;
  v69 = 0.0000000033599;
  v70 = 1376;
  v71 = 6228;
  while (v68 + 13 < *(a1 + 8160) + 13)
  {
    v72 = a1 + v70;
    if (*(a1 + v70) != 0.0)
    {
      v73 = *(a1 + v71 + 84);
      *(v72 - 64) = -(v73 * v73);
      *(v72 - 68) = (v73 * *(a1 + v71)) + (v73 * *(a1 + v71));
      v74 = *(v256 + v68);
      if (v74)
      {
        v75 = db2lin(v74 + v65);
        v76 = (v69 * *&v75) * ((1.0 - *(v72 - 68)) - *(v72 - 64));
      }

      else
      {
        v76 = 0.0;
      }

      *(v72 - 72) = v76;
    }

    v69 = -v69;
    ++v68;
    v70 += 88;
    v71 += 4;
  }

  if (*(a1 + 6356) > 0.0001)
  {
    v77 = (a1 + 284);
    for (j = 1; j != 3; ++j)
    {
      v79 = v255 + 88 * j;
      if (*(v79 + 72) != 0.0)
      {
        LODWORD(v40) = *v79;
        v80 = a1 + 2008 + 12 * j;
        *v80 = 1.0 / *v79;
        v40 = COERCE_DOUBLE(vdiv_f32(vneg_f32(*(v79 + 4)), vdup_lane_s32(*&v40, 0)));
        *(v80 + 4) = v40;
        if (*(v79 + 80))
        {
          v81 = v77;
          v82 = 3;
          do
          {
            v83 = *(v81 - 6);
            *(v81 - 6) = 1.0 / v83;
            *(v81 - 3) = -*(v81 - 3) / v83;
            *v81 = -*v81 / v83;
            ++v81;
            --v82;
          }

          while (v82);
        }
      }

      v77 += 22;
    }
  }

  *(a1 + 6376) = *(v250 + 4);
  *(a1 + 6372) = *(v250 + 24);
  *(a1 + 6388) = *(v250 + 12) * 0.01;
  v84 = 200;
  if (v247 < 200)
  {
    v84 = v247;
  }

  *(a1 + 6448) = v84;
  v85 = *(a1 + 8184);
  if (v85)
  {
    v86 = db2lin(*(a1 + 8208) + v85 + *(a1 + 8216));
    v87 = *&v86 * 0.000011921;
  }

  else
  {
    v87 = 0.0;
  }

  v251 = (a1 + 6504);
  v88 = (a1 + 6560);
  v89 = (a1 + 8665);
  v248 = a1 + 512;
  v90 = a1 + 2048;
  v91 = 10000.0;
  v92 = 0.001;
  v246 = 1;
  v249 = 1;
  v93 = v247;
  while (v93 >= 1)
  {
    if (*(a1 + 6448) >= v93)
    {
      v94 = v93;
    }

    else
    {
      v94 = *(a1 + 6448);
    }

    *(a1 + 6448) = v94;
    *(a1 + 6364) = (1000 * v94) / *(a1 + 3652);
    v253 = v93;
    if (*(a1 + 6356) >= 0.0001)
    {
      v95 = *v251;
LABEL_93:
      *(a1 + 8232) = 0;
      *(a1 + 6560) = 0;
      if (v95)
      {
        goto LABEL_94;
      }

      v96 = 0;
      goto LABEL_102;
    }

    v95 = *(a1 + 6504);
    if (*(a1 + 6360) >= 0.0001)
    {
      goto LABEL_93;
    }

    if (v95)
    {
      *(a1 + 8232) = 0;
      *(a1 + 6560) = 0;
LABEL_94:
      if (v95 >= v94)
      {
        v96 = v94;
      }

      else
      {
        v96 = v95;
      }

      clr_vector(*(a1 + 4544), v96);
      *(a1 + 6504) -= v96;
      OUTLINED_FUNCTION_7_62();
      v97 = v94 - v96;
      v88[v99] = v98 + v96;
      v100 = *(a1 + 8232) + 1;
      goto LABEL_103;
    }

    if (!*(a1 + 6536))
    {
      v101 = *(a1 + 6512);
      if (!v101)
      {
        for (k = v94; v101 < k; k = *(a1 + 6448))
        {
          *(v90 + 8 * v101++) = 0;
        }

        goto LABEL_293;
      }
    }

    v96 = 0;
    *v88 = 0;
LABEL_102:
    v100 = 1;
    v97 = v94;
LABEL_103:
    v254 = v94;
    *(a1 + 8232) = v100;
    v88[v100] = 0;
    v102 = *(a1 + 6512);
    if (v102)
    {
      if (v102 >= v97)
      {
        v103 = v97;
      }

      else
      {
        v103 = *(a1 + 6512);
      }

      *(a1 + 6480) = v103;
      v104 = *(a1 + 6416);
      v105 = v103 + v96;
      while (v96 < v105)
      {
        *(*(a1 + 4544) + 4 * v96) = v104 + (-(*(a1 + 6424) * v104) * v104);
        v104 = v104 + *(a1 + 6420);
        ++v96;
      }

      *(a1 + 6416) = v104;
      *(a1 + 6512) = v102 - v103;
      v97 -= v103;
      OUTLINED_FUNCTION_1_78(v103);
    }

    else
    {
      v105 = v96;
    }

    OUTLINED_FUNCTION_0_84();
    v106 = *(a1 + 6536);
    if (v106 && v97)
    {
      if (v106 >= v97)
      {
        v107 = v97;
      }

      else
      {
        v107 = *(a1 + 6536);
      }

      *(a1 + 6496) = v107;
      v108 = OUTLINED_FUNCTION_3_69();
      clr_vector(v108, v109);
      v110 = *(a1 + 6496);
      *(a1 + 6536) -= v110;
      v97 -= v110;
      v105 += v110;
      OUTLINED_FUNCTION_1_78(v110);
    }

    if (v105 < 1)
    {
      v111 = 0;
    }

    else
    {
      pole_filter(v255, *(a1 + 4544), v105);
      v111 = v105;
    }

    v252 = v111;
    if (v97 < 1)
    {
      goto LABEL_204;
    }

    v112 = *(a1 + 6376);
    if (v112 != 0.0)
    {
      v116 = *(a1 + 8176);
      if (v116)
      {
        if (v249)
        {
          v117 = *(v250 + 20);
          if (v117 != 0.0)
          {
            v118 = v92;
            v119 = v91;
            v120 = (v112 * v117) * 0.0002;
            v121 = *(a1 + 6352);
            v122 = sinf(v121 * 0.079796);
            v123 = v122 + sinf(v121 * 0.044611);
            v124 = v120 * (sinf(v121 * 0.029531) + v123);
            v91 = v119;
            v92 = v118;
            *(a1 + 8248) = v124;
            v112 = v112 + v124;
            *(a1 + 6376) = v112;
            if (v112 <= 0.0)
            {
              *(a1 + 6376) = 1065353216;
              v112 = 1.0;
            }
          }

          *(a1 + 6380) = v91 / v112;
          v125 = (v91 / v112) * (*(a1 + 3652) * v92);
          *(a1 + 6384) = v125;
          v126 = *(a1 + 6388);
          if (v126 > 0.0)
          {
            v127 = *(a1 + 8200) + v116 + *(a1 + 8208);
            if (v127 < 1)
            {
              *(a1 + 6436) = 0;
            }

            else
            {
              *(a1 + 6440) = 1.5 / (v126 * v125);
              v128 = db2lin(v127);
              v129 = *(a1 + 6440);
              *&v128 = (*&v128 * 18.469) * v129;
              *(a1 + 6436) = LODWORD(v128);
              *(a1 + 6440) = v129 / *&v128;
            }
          }

          v133 = *(a1 + 6372);
          if (*(a1 + 8660))
          {
            if (v133 == 0.0)
            {
              *(a1 + 8660) = 0;
              goto LABEL_143;
            }

LABEL_141:
            v134 = 1.0 - (v133 * 0.01);
            *(a1 + 6368) = v134;
            *(a1 + 6464) = (((v133 * *(a1 + 6384)) * (1.0 - *(a1 + 6388))) * 0.01);
            if (v134 <= 0.0)
            {
              *(a1 + 6428) = 0;
            }

            else
            {
              *(a1 + 6428) = v134 * *(a1 + 6436);
              *(a1 + 6432) = *(a1 + 6440) / v134;
            }
          }

          else
          {
            if (v133 > 0.0)
            {
              *(a1 + 8660) = 1;
              goto LABEL_141;
            }

LABEL_143:
            *v5 = *(a1 + 6436);
          }

          v135 = *(v250 + 16);
          if (v135 >= 35.0)
          {
            v135 = 35.0;
          }

          v136 = v135;
          *(a1 + 8168) = v135;
          if (v135 && (v137 = *(a1 + 6356), v137 > 0.0001))
          {
            *(a1 + 232) = v137;
            *(a1 + 240) = 0;
            v138 = tl_table[v136];
            *v266 = v138;
            v139 = v138 * 0.375;
            v260[0] = v138 * 0.375;
            v140 = *(a1 + 8868);
            if (v140)
            {
              if (v140 == 2 || v140 == 1)
              {
                v246 = 0;
                v141 = &tilt16;
                goto LABEL_158;
              }

              if (v138 != *(a1 + 216))
              {
                *(a1 + 6176) = cosf(v138 * *(a1 + 6404));
              }

              if (v139 == *(a1 + 220))
              {
                v144 = *v245;
              }

              else
              {
                v144 = expf(-(*(a1 + 6400) * v139));
                *(a1 + 6260) = v144;
              }

              v246 = 0;
              v145 = -(v144 * v144);
              *(a1 + 168) = v145;
              v146 = (v144 * *(a1 + 6176)) + (v144 * *(a1 + 6176));
              *(a1 + 160) = (1.0 - v146) - v145;
              *(a1 + 164) = v146;
              *(a1 + 240) = 0;
            }

            else
            {
              v246 = 0;
              v141 = &tilt8;
LABEL_158:
              v143 = &v141[12 * v136];
              *(a1 + 160) = *v143;
              *(a1 + 168) = *(v143 + 2);
            }
          }

          else
          {
            *(a1 + 232) = 0;
          }
        }

        compute_voicing_size(a1);
        v249 = 0;
        goto LABEL_177;
      }
    }

    if (*(a1 + 8184))
    {
      *(a1 + 6456) = v97;
      *(a1 + 6472) = v97;
      OUTLINED_FUNCTION_5_65();
      v115 = &v88[v114];
    }

    else
    {
      *(a1 + 6472) = 0;
      OUTLINED_FUNCTION_0_84();
      v115 = (a1 + 6456);
      v113 = v97;
    }

    *v115 = v97;
    *(a1 + 6488) = v113;
    OUTLINED_FUNCTION_5_65();
    v88[v131] = v130;
    v132 = OUTLINED_FUNCTION_3_69();
    clr_vector(v132, v97);
    v97 = 0;
    *(a1 + 6392) = 0;
LABEL_177:
    while (v97 >= 1 && v97 >= *(a1 + 6456))
    {
      if (*(a1 + 8660))
      {
        if (*(a1 + 8661))
        {
          *v5 = *(a1 + 6428);
          *(a1 + 6496) = *(a1 + 6488) - *(a1 + 6464);
          v147 = OUTLINED_FUNCTION_3_69();
          clr_vector(v147, v148);
          v149 = *(a1 + 6464);
          v105 += v149;
          OUTLINED_FUNCTION_1_78(v149);
          v150 = *(a1 + 8661) == 0;
        }

        else
        {
          OUTLINED_FUNCTION_6_64();
          v150 = 1;
        }

        *(a1 + 8661) = v150;
      }

      OUTLINED_FUNCTION_0_84();
      v151 = *(a1 + 6420);
      if (v151 == 0.0)
      {
        v155 = OUTLINED_FUNCTION_3_69();
        clr_vector(v155, *(a1 + 6472));
        v153 = *(a1 + 6472);
        v154 = v153 + v105;
      }

      else
      {
        v152 = v151 * (*(a1 + 6392) * *(a1 + 6408));
        v153 = *(a1 + 6472);
        v154 = v153 + v105;
        while (v105 < v154)
        {
          *(*(a1 + 4544) + 4 * v105) = v152 + (-(*(a1 + 6424) * v152) * v152);
          v152 = v152 + *(a1 + 6420);
          ++v105;
        }
      }

      OUTLINED_FUNCTION_1_78(v153);
      OUTLINED_FUNCTION_0_84();
      clr_vector((*(a1 + 4544) + 4 * v154), *(a1 + 6496));
      v156 = *(a1 + 6496);
      v105 = v156 + v154;
      v88[*(a1 + 8232)] += v156;
      v97 -= *(a1 + 6456);
      compute_v_start(a1);
      compute_voicing_size(a1);
    }

    if (v97 < 1)
    {
      *(a1 + 6536) = 0;
      *v251 = 0;
      *(a1 + 6512) = 0;
    }

    else
    {
      if (*(a1 + 8660))
      {
        if (*(a1 + 8661))
        {
          *v5 = *(a1 + 6428);
          v158 = *(a1 + 6464);
          *(a1 + 6496) -= v158;
          if (v158 >= v97)
          {
            v159 = v97;
          }

          else
          {
            v159 = v158;
          }

          v160 = OUTLINED_FUNCTION_3_69();
          clr_vector(v160, v159);
          *(a1 + 6504) = *(a1 + 6464) - v159;
          v105 += v159;
          v97 -= v159;
          OUTLINED_FUNCTION_7_62();
          v88[v162] = v161 + v159;
          v163 = *(a1 + 8661) == 0;
        }

        else
        {
          OUTLINED_FUNCTION_6_64();
          *(a1 + 6504) = 0;
          v163 = 1;
        }

        *(a1 + 8661) = v163;
      }

      OUTLINED_FUNCTION_0_84();
      v164 = *(a1 + 6472);
      if (v164 >= v97)
      {
        v165 = v97;
      }

      else
      {
        v165 = *(a1 + 6472);
      }

      *(a1 + 6480) = v165;
      v166 = *(a1 + 6420);
      v167 = (*(a1 + 6392) * *(a1 + 6408)) * v166;
      if (v166 == 0.0)
      {
        v169 = OUTLINED_FUNCTION_3_69();
        clr_vector(v169, v170);
        v164 = *(a1 + 6472);
        v165 = *(a1 + 6480);
        v166 = *(a1 + 6420);
      }

      else
      {
        for (m = v105; m < v165 + v105; ++m)
        {
          *(*(a1 + 4544) + 4 * m) = v167 + (-(*(a1 + 6424) * v167) * v167);
          v166 = *(a1 + 6420);
          v167 = v167 + v166;
        }
      }

      *(a1 + 6416) = v167;
      *(a1 + 6512) = v164 - v165;
      *(a1 + 6520) = v164;
      *(a1 + 6528) = v166;
      OUTLINED_FUNCTION_7_62();
      v88[v173] = v172 + v171;
      OUTLINED_FUNCTION_5_65();
      v88[v176] = 0;
      if (*(a1 + 6496) >= v175)
      {
        v177 = v175;
      }

      else
      {
        v177 = *(a1 + 6496);
      }

      clr_vector((*(a1 + 4544) + 4 * v105 + 4 * v174), v177);
      *(a1 + 6536) = *(a1 + 6496) - v177;
      OUTLINED_FUNCTION_7_62();
      v88[v179] = v178 + v177;
      compute_v_start(a1);
    }

LABEL_204:
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_0_84();
    v93 = v253;
    v94 = v254;
    if (*(a1 + 8663))
    {
      v180 = 0;
      v181 = 0;
      v182 = 0;
      while (v181 < *(a1 + 8232) / 2)
      {
        v183 = v88[2 * v181] + v182;
        while (v180 < v183)
        {
          v89[v180++] = 0;
        }

        v182 = v88[2 * v181 + 1] + v183;
        while (v180 < v182)
        {
          v89[v180++] = 1;
        }

        ++v181;
      }
    }

    pole_filter(v255, (*(a1 + 4544) + 4 * v252), *(a1 + 6448) - v252);
    if (!*(a1 + 3676))
    {
      if (*(a1 + 6356) > 0.0001)
      {
        if (*(a1 + 8184))
        {
          *(a1 + 8656) = noise(a1, *(a1 + 8656));
          OUTLINED_FUNCTION_2_74();
          mul1_vector((a1 + 8256), v87, v184, v185);
        }

        OUTLINED_FUNCTION_2_74();
        pole_filter(a1 + 424, v186, v187);
        zero_filter(a1 + 248, (a1 + 2020), *(a1 + 4544), *(a1 + 6448));
        OUTLINED_FUNCTION_2_74();
        pole_filter(v248, v188, v189);
        zero_filter(a1 + 336, (a1 + 2032), *(a1 + 4544), *(a1 + 6448));
        v190 = *(a1 + 8160);
        v191 = v190 + 4;
        v192 = v248 + 88 * v190;
        while (v191 >= 6)
        {
          OUTLINED_FUNCTION_2_74();
          pole_filter(v192, v193, v194);
          --v191;
          v192 -= 88;
        }

        OUTLINED_FUNCTION_2_74();
        if (v199)
        {
          v200 = 2;
          v93 = v253;
          v94 = v254;
          if (*(a1 + 672) != 0.0)
          {
            *(v195 - 2) = *(a1 + 652);
            *(v195 - 1) = *(a1 + 648);
            v201 = 0;
            v202 = 0;
            v203 = 0;
            switch(*(a1 + 156))
            {
              case 0:
                v204 = *(a1 + 680);
                if (v204 >= v196)
                {
                  v205 = v196;
                }

                else
                {
                  v205 = *(a1 + 680);
                }

                v201 = v205 & ~(v205 >> 63);
                v206 = (a1 + 648 - 4 * v204);
                v207 = v195;
                for (n = v201; n; --n)
                {
                  v209 = (*(v206 - 3) * *(v207 - 1)) + (*(v206 - 6) * *v207);
                  v210 = *v206++;
                  *v207 = v209 + (v210 * *(v207 - 2));
                  ++v207;
                }

                *(a1 + 680) = v204 - v205;
                goto LABEL_245;
              case 1:
                goto LABEL_245;
              case 2:
                goto LABEL_233;
              case 3:
                goto LABEL_239;
              default:
                v201 = 0;
                if (*v89)
                {
                  goto LABEL_232;
                }

                break;
            }

LABEL_238:
            *(a1 + 156) = 3;
            v203 = v201;
LABEL_239:
            v213 = &v195[v203];
            v201 = v203;
            while (2)
            {
              if (v201 < v196)
              {
                if (!v89[v201])
                {
                  *&v198 = *(v213 - 1);
                  *&v197 = *(a1 + 604) * *&v198;
                  OUTLINED_FUNCTION_4_65(*&v197 + (*(a1 + 600) * *v213), *(a1 + 608), v197, v198, *(v213 - 2));
                  continue;
                }

                v212 = 3;
LABEL_244:
                *(a1 + 8240) = v212;
                *(a1 + 156) = 1;
LABEL_245:
                for (ii = &v195[v201]; ; OUTLINED_FUNCTION_4_65(*&v197 + (v217[3] * *ii), v217[9], v197, v198, *(ii - 2)))
                {
                  if (v201 >= v196)
                  {
                    goto LABEL_252;
                  }

                  v215 = *(a1 + 8240);
                  if (v89[v201])
                  {
                    v216 = v215 - 1;
                    *(a1 + 8240) = v215 - 1;
                    if (v215 < 1)
                    {
LABEL_232:
                      *(a1 + 156) = v200;
                      v202 = v201;
LABEL_233:
                      v211 = &v195[v202];
                      v201 = v202;
                      while (1)
                      {
                        if (v201 >= v196)
                        {
                          goto LABEL_252;
                        }

                        if (!v89[v201])
                        {
                          break;
                        }

                        *&v198 = *(v211 - 1);
                        *&v197 = *algn_28057B40C * *&v198;
                        OUTLINED_FUNCTION_4_65((*algn_28057B40C * *&v198) + (*f1d * *v211), *&dword_28057B410, v197, v198, *(v211 - 2));
                      }

                      v212 = -1;
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    v216 = v215 + 1;
                    *(a1 + 8240) = v215 + 1;
                    if (v215 > 1)
                    {
                      goto LABEL_238;
                    }
                  }

                  v217 = &f1d[v216];
                  *&v198 = *(ii - 1);
                  *&v197 = v217[6] * *&v198;
                }
              }

              break;
            }

LABEL_252:
            v218 = &v195[v201];
            v219 = v218 - 2;
            if (v196 <= 1)
            {
              v219 = (a1 + 648);
            }

            *(a1 + 652) = *v219;
            *(a1 + 648) = *(v218 - 1);
          }
        }

        else
        {
          pole_filter(a1 + 600, v195, v196);
          v93 = v253;
          v94 = v254;
        }

        if (!*(a1 + 8184) && !*(a1 + 8176))
        {
          v220 = *(a1 + 6356) - *(a1 + 6364);
          *(a1 + 6356) = v220;
          if (v220 < 0.00001)
          {
            *(a1 + 6356) = 0;
          }
        }
      }

      if (*(a1 + 6360) <= 0.0001)
      {
        goto LABEL_286;
      }

      if (*(a1 + 0x2000))
      {
        *(a1 + 8658) = noise(a1, *(a1 + 8658));
        v221 = *(a1 + 6448) & ~(*(a1 + 6448) >> 63);
        v222 = (a1 + 4556);
        for (jj = (a1 + 8256); v221; --v221)
        {
          v224 = *jj++;
          *v222++ = v224;
        }
      }

      if (*(v250 + 172) != 0.0 && *(a1 + 0x2000))
      {
        OUTLINED_FUNCTION_2_74();
        mulf_vector((a1 + 4556), v227, v225, v226);
      }

      v228 = 13;
      while (2)
      {
        if (v228 >= *(a1 + 8160) + 13)
        {
          v93 = v253;
          v94 = v254;
          if (!*(a1 + 0x2000))
          {
            v236 = *(a1 + 6360) - *(a1 + 6364);
            *(a1 + 6360) = v236;
            if (v236 < 0.0001)
            {
              *(a1 + 6360) = 0;
            }
          }

          break;
        }

        v229 = v255 + 88 * v228;
        if (*(v229 + 72) != 0.0)
        {
          if (*(a1 + 0x2000))
          {
            v230 = v228 - 13;
            v231 = *(a1 + 6448);
            if (*(&v256[-6] + v228 - 1))
            {
              for (kk = 0; (v231 & ~(v231 >> 63)) != kk; ++kk)
              {
                *(*(a1 + 6168) + 4 * kk) = *(a1 + 4556 + 4 * kk);
              }

              pole_filter(v229, *(a1 + 6168), v231);
              goto LABEL_279;
            }
          }

          else
          {
            v231 = *(a1 + 6448);
            v230 = v228 - 13;
          }

          parallel0_filter((v255 + 88 * v228), *(a1 + 6168), v231);
          if (!*(v256 + v230))
          {
            v233 = *(v229 + 72) - *(a1 + 6364);
            *(v229 + 72) = v233;
            if (v233 < 0.0)
            {
              *(v229 + 72) = 0;
            }
          }

LABEL_279:
          v234 = 0;
          v235 = *(a1 + 6448) & ~(*(a1 + 6448) >> 63);
          while (v235 != v234)
          {
            *(*(a1 + 4544) + 4 * v234) = *(*(a1 + 6168) + 4 * v234) + *(*(a1 + 4544) + 4 * v234);
            ++v234;
          }
        }

        ++v228;
        continue;
      }
    }

LABEL_286:
    for (mm = 0; ; ++mm)
    {
      k = *(a1 + 6448);
      if (mm >= k)
      {
        break;
      }

      v238 = *(*(a1 + 4544) + 4 * mm);
      *(v90 + 8 * mm) = v238;
      if (v238 < 0)
      {
        v238 = -v238;
      }

      if (v238 > *(a1 + 6552))
      {
        *(a1 + 6552) = v238;
      }
    }

LABEL_293:
    v93 -= v94;
    output_speech(a1, k);
  }

  *(a1 + 6352) = *(a1 + 6352) + (*v250 * *(a1 + 3648));
  v239 = v246;
  *(a1 + 6544) += v247;
  v240 = a1 + 88 * v246 + 160;
  while (v239 <= 20)
  {
    if (*(v240 + 72) == 0.0)
    {
      *(v240 + 48) = 0;
      v243 = 0;
      v244 = 52;
      v241 = 0;
      v242 = 0.0;
    }

    else
    {
      v241 = v266[v239];
      v242 = v260[v239];
      v243 = *(v240 + 8);
      *(v240 + 64) = *(v240 + 4);
      v244 = 68;
    }

    *(v240 + v244) = v243;
    ++v239;
    *(v240 + 56) = v241;
    *(v240 + 60) = v242;
    v240 += 88;
  }

  return 1;
}