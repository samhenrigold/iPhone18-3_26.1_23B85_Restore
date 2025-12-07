uint64_t segm_word(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, unsigned __int8 *a5, int a6, int a7)
{
  v10 = a2;
  v11 = *a5;
  v12 = a5[5];
  v13 = v12 + v11;
  v14 = a5[10];
  v15 = v12 + v11 + v14;
  v16 = a5[15];
  v17 = v15 + v16;
  v54 = a5[22];
  v18 = v15 + v16 + v54;
  v19 = v18;
  if (a5[5])
  {
    v19 = *a5;
    if (a7 <= v11)
    {
      *(a4 + v11) = 124;
      v19 = v11;
    }
  }

  if (v14)
  {
    v18 = v12 + v11;
    if (a7 <= v13)
    {
      *(a4 + v13) = 124;
      v18 = v12 + v11;
    }
  }

  if (*(a2 + 3524) != 14)
  {
    return 0;
  }

  v51 = v14;
  v52 = v12;
  v50 = v15 + v16 + v54;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v49 = v16;
  if (v16 && v15 >= a7 && (!SLstrncmp(&a3[v15], "szor", 4) || !SLstrncmp(&a3[v15], "szer", 4) || !SLstrncmp(&a3[v15], "sz\x94r", 4) || !SLstrncmp(&a3[v15], "s\xA0g", 3) || !SLstrncmp(&a3[v15], "s\x82g", 3)))
  {
    *(a4 + v15) = 43;
  }

  if (v54 && v17 >= a7 && (!SLstrncmp(&a3[v17], "szor", 4) || !SLstrncmp(&a3[v17], "szer", 4) || !SLstrncmp(&a3[v17], "sz\x94r", 4)))
  {
    *(a4 + v17) = 43;
  }

  if ((~*(a5 + 14) & 0x8003) == 0)
  {
    result = an_analyze(*(a1 + 8), a3, v19, 768, v57, 1u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (result)
    {
      v21 = a1;
      v22 = v10;
      v23 = a3;
      v24 = a4;
      v25 = a7;
      goto LABEL_26;
    }

    if (!a6 && v19)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = a3[v36];
        v39 = v38 > 0x2F || ((1 << v38) & 0xA00000060000) == 0;
        if (!v39 || v38 == 196)
        {
          if (v36 > v37)
          {
            result = an_analyze(*(a1 + 8), &a3[v37], (v36 - v37), 256, v57, 1u);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (result)
            {
              result = segm_word(a1, v10, &a3[v37], a4 + v37, v57, 1, a7 - v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }

          v37 = ++v36;
        }

        else
        {
          ++v36;
        }
      }

      while (v36 != v19);
      if (v37 >= 1 && v19 > v37)
      {
        result = an_analyze(*(a1 + 8), &a3[v37], (v19 - v37), 256, v57, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (result)
        {
          v25 = a7 - v37;
          v24 = a4 + v37;
          v21 = a1;
          v22 = v10;
          v23 = &a3[v37];
LABEL_26:
          result = segm_word(v21, v22, v23, v24, v57, 1, v25);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }
    }
  }

  if (!v52 || (~*(a5 + 15) & 0x8003) != 0)
  {
    goto LABEL_33;
  }

  v26 = &a3[v11];
  result = an_analyze(*(a1 + 8), v26, (v18 - v11), 768, v57, 1u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (result)
  {
    v27 = a7 - v11;
    v28 = a4 + v11;
    goto LABEL_32;
  }

  if (!a6 && v18 > v11)
  {
    v48 = v10;
    v40 = v11;
    v41 = v11;
    do
    {
      v42 = a3[v40];
      v43 = v42 > 0x2F || ((1 << v42) & 0xA00000060000) == 0;
      if (!v43 || v42 == 196)
      {
        if (v40 > v41)
        {
          result = an_analyze(*(a1 + 8), &a3[v41], (v40 - v41), 256, v57, 1u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (result)
          {
            result = segm_word(a1, v48, &a3[v41], a4 + v41, v57, 1, a7 - v41);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        v41 = ++v40;
      }

      else
      {
        ++v40;
      }
    }

    while (v40 != v18);
    v10 = v48;
    if (v41 > v11 && v18 > v41)
    {
      v26 = &a3[v41];
      result = an_analyze(*(a1 + 8), v26, (v18 - v41), 256, v57, 1u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (result)
      {
        v27 = a7 - v41;
        v28 = a4 + v41;
LABEL_32:
        result = segm_word(a1, v10, v26, v28, v57, 1, v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }
  }

LABEL_33:
  if (!v51 || (~*(a5 + 16) & 0x8003) != 0)
  {
    return 0;
  }

  v29 = v10;
  result = an_analyze(*(a1 + 8), &a3[v13], (v50 - v13), 768, v57, 1u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v30 = v13;
  if (result)
  {
    v31 = a7 - v13;
    v32 = a4 + v13;
    v33 = a1;
    v34 = v10;
    v35 = &a3[v13];
    goto LABEL_38;
  }

  if (a6 || v50 <= v13)
  {
    return 0;
  }

  v44 = (v51 + v49 + v54 + v52 + v11);
  do
  {
    v45 = a3[v30];
    v46 = v45 > 0x2F || ((1 << v45) & 0xA00000060000) == 0;
    if (!v46 || v45 == 196)
    {
      if (v30 > v11)
      {
        result = an_analyze(*(a1 + 8), &a3[v11], (v30 - v11), 256, v57, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (result)
        {
          result = segm_word(a1, v29, &a3[v11], a4 + v11, v57, 1, a7 - v11);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      LODWORD(v11) = ++v30;
    }

    else
    {
      ++v30;
    }
  }

  while (v30 != v44);
  if (v11 <= v13 || v11 >= v50)
  {
    return 0;
  }

  v47 = &a3[v11];
  result = an_analyze(*(a1 + 8), v47, (v44 - v11), 256, v57, 1u);
  if ((result & 0x80000000) == 0)
  {
    if (result)
    {
      v31 = a7 - v11;
      v32 = a4 + v11;
      v33 = a1;
      v34 = v29;
      v35 = v47;
LABEL_38:
      result = segm_word(v33, v34, v35, v32, v57, 1, v31);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      return 0;
    }

    return 0;
  }

  return result;
}

BOOL is_small_digraph_hun(uint64_t a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  result = 0;
  if (a2 >= 2 && a4 >= 2)
  {
    v4 = a1 + a2;
    v5 = *(v4 - 2);
    if (v5 == *a3)
    {
      v6 = *(v4 - 1);
      if (v6 == a3[1])
      {
        v7 = (v5 & 0xFFFFFFFD) == 0x6C || v5 == 103;
        v8 = v7 || v5 == 116;
        if (v8 && v6 == 121)
        {
          return 1;
        }

        v9 = v5 == 122 || v5 == 99;
        if (v9 && v6 == 115)
        {
          return 1;
        }

        v10 = v5 == 100 || v5 == 115;
        if (v10 && v6 == 122)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t check__words(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a5;
  v11 = a1;
  v58[40] = *MEMORY[0x1E69E9840];
  v12 = an_analyze(*(a1 + 8), a3, a5, a6, v58, 1u);
  v13 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v12)
  {
    if ((a6 & 4) != 0)
    {
      v14 = segm_word(v11, a2, a3, a4, v58, 0, 0);
      if (v14 >= 0)
      {
        return v13;
      }

      else
      {
        return v14;
      }
    }

    return v13;
  }

  v15 = *(a2 + 3524);
  v16 = v15 > 0x15 || ((1 << v15) & 0x204001) == 0;
  v56 = v11;
  if (v16 || v7 < 3)
  {
    v37 = 0;
  }

  else
  {
    v17 = 0;
    v52 = v7;
    v53 = (v7 - 1);
    v18 = 1;
    do
    {
      v19 = a3[v18];
      v20 = v19 > 0x2F || ((1 << v19) & 0xA00000060000) == 0;
      if (!v20 || v19 == 196)
      {
        v54 = &a3[v18];
        v21 = v17;
        v22 = an_analyze(*(v11 + 8), a3, v18, a6 + 8448, v58, 8u);
        v13 = v22;
        if ((v22 & 0x80000000) != 0)
        {
          return v13;
        }

        if (v22)
        {
          v23 = an_analyze(*(v56 + 8), &a3[v18 + 1], (~v18 + v52), a6 + 256, v57, 8u);
          if ((v23 & 0x80000000) != 0)
          {
            return v23;
          }

          v51 = v18 + 1;
          if (!v23 && *(a2 + 3524) == 21)
          {
            v24 = a4;
            v25 = a3[v18 + 1];
            v26 = a3[v18 + 1];
            v27 = lexchr2lower(v26, 21);
            v16 = v25 == v27;
            a4 = v24;
            if (v16)
            {
              goto LABEL_32;
            }

            a3[v51] = v27;
            v23 = an_analyze(*(v56 + 8), &a3[v51], (~v18 + v52), a6 + 256, v57, 8u);
            if ((v23 & 0x80000000) != 0)
            {
              return v23;
            }

            a3[v51] = v26;
          }

          if (v23)
          {
            v28 = 0;
            v48 = v23;
            v49 = a4;
            v29 = v13;
            do
            {
              v30 = 0;
              v50 = v28;
              v31 = &v57[40 * v28];
              v32 = v58;
              do
              {
                v33 = *(a2 + 3524);
                if (v33 == 21 || (v34 = is_nominal_result(v32, v33), v34 == is_nominal_result(v31, *(a2 + 3524))))
                {
                  if ((a6 & 4) != 0)
                  {
                    v23 = segm_word(v56, a2, a3, v49, &v58[5 * v30], 0, 0);
                    if ((v23 & 0x80000000) != 0)
                    {
                      return v23;
                    }

                    v23 = segm_word(v56, a2, &a3[v51], v49 + v51, &v57[40 * v50], 0, 0);
                    if ((v23 & 0x80000000) != 0)
                    {
                      return v23;
                    }
                  }

                  return 1;
                }

                ++v30;
                v32 += 5;
              }

              while (v29 != v30);
              a4 = v49;
              v28 = v50 + 1;
            }

            while (v50 + 1 != v48);
          }
        }

LABEL_32:
        v17 = v21 + 1;
        if (*(a2 + 3524) == 21)
        {
          v35 = *v54;
          *v54 = 0;
          v36 = roman2int(a3);
          *v54 = v35;
          v11 = v56;
          if ((v36 - 1) <= 0x26 && (!SLstrcmp(v54 + 1, "lecie") || !SLstrcmp(v54 + 1, "lecia") || !SLstrcmp(v54 + 1, "leciu") || !SLstrcmp(v54 + 1, "leciem") || !SLstrcmp(v54 + 1, "wieczny") || !SLstrcmp(v54 + 1, "wiecznego") || !SLstrcmp(v54 + 1, "wiecznemu") || !SLstrcmp(v54 + 1, "wiecznym") || !SLstrcmp(v54 + 1, "wieczne") || !SLstrcmp(v54 + 1, "wieczna") || !SLstrcmp(v54 + 1, "wiecznej") || !SLstrcmp(v54 + 1, "wieczn\xA5") || !SLstrcmp(v54 + 1, "wieczni") || !SLstrcmp(v54 + 1, "wiecznych") || !SLstrcmp(v54 + 1, "wiecznym")))
          {
            return 1;
          }
        }

        else
        {
          v11 = v56;
        }
      }

      ++v18;
    }

    while (v18 != v53);
    v15 = *(a2 + 3524);
    v37 = v17 > 1;
    v7 = v52;
  }

  if (v15 != 14 && v15 || v15 == 14 && !v37)
  {
    return 0;
  }

  v55 = (v7 - 1);
  v38 = v7;
  if (v7 < 3)
  {
    v39 = 0;
    LODWORD(v41) = 1;
    goto LABEL_81;
  }

  v39 = 0;
  v40 = 0;
  v41 = 1;
  do
  {
    v42 = a3[v41];
    v43 = v42 > 0x2F || ((1 << v42) & 0xA00000060000) == 0;
    if (v43 && v42 != 196)
    {
      ++v41;
      continue;
    }

    if (v41 == v39 || v40 > 2)
    {
      goto LABEL_81;
    }

    v44 = an_analyze(*(v11 + 8), &a3[v39], (v41 - v39), (*(a2 + 3524) == 14) << 11, v58, 1u);
    v13 = v44;
    if ((v44 & 0x80000000) != 0)
    {
      return v13;
    }

    if (!v44)
    {
      break;
    }

    if ((a6 & 4) != 0)
    {
      v23 = segm_word(v56, a2, &a3[v39], a4 + v39, v58, 0, 0);
      if ((v23 & 0x80000000) != 0)
      {
        return v23;
      }
    }

    ++v40;
    v39 = ++v41;
    v11 = v56;
  }

  while (v41 != v55);
  v11 = v56;
LABEL_81:
  if (v41 != v55)
  {
    return 0;
  }

  if (v38 == v39)
  {
    return 0;
  }

  v46 = &a3[v39];
  v47 = an_analyze(*(v11 + 8), v46, (v38 - v39), (*(a2 + 3524) == 14) << 11, v58, 1u);
  v13 = v47;
  if ((v47 & 0x80000000) == 0 && (a6 & 4) != 0)
  {
    if (v47)
    {
      v23 = segm_word(v11, a2, v46, a4 + v39, v58, 0, 0);
      if ((v23 & 0x80000000) != 0)
      {
        return v23;
      }
    }
  }

  return v13;
}

uint64_t lexchr2lower(signed __int8 a1, int a2)
{
  v2 = a1;
  if (a1 - 65 <= 0x19)
  {
    return (a1 | 0x20);
  }

  if (a2 != 21)
  {
    if (a2 != 14)
    {
      return v2;
    }

    if (a1 > 0x96u)
    {
      if (a1 <= 0x98u)
      {
        if (a1 == 151)
        {
          return -93;
        }

        else
        {
          return -106;
        }
      }

      if (a1 != 153)
      {
        if (a1 != 154)
        {
          if (a1 == 167)
          {
            return -109;
          }

          return v2;
        }

        return -127;
      }

      return -108;
    }

    if (a1 <= 0x8Fu)
    {
      if (a1 == 141)
      {
        return -95;
      }

      if (a1 == 143)
      {
        return -96;
      }

      return v2;
    }

    if (a1 != 144)
    {
      if (a1 != 149)
      {
        return v2;
      }

      return -94;
    }

    return -126;
  }

  if (a1 <= 0x9Cu)
  {
    if (a1 > 0x96u)
    {
      if (a1 == 151)
      {
        return -104;
      }

      if (a1 != 153)
      {
        if (a1 != 154)
        {
          return v2;
        }

        return -127;
      }

      return -108;
    }

    if (a1 == 141)
    {
      return -85;
    }

    if (a1 == 143)
    {
      return -122;
    }

    if (a1 != 144)
    {
      return v2;
    }

    return -126;
  }

  if (a1 <= 0xB4u)
  {
    switch(a1)
    {
      case 0x9Du:
        v2 = -120;
        break;
      case 0xA4u:
        v2 = -91;
        break;
      case 0xA8u:
        v2 = -87;
        break;
    }

    return v2;
  }

  if (a1 > 0xDFu)
  {
    if (a1 != 224)
    {
      if (a1 == 227)
      {
        return -28;
      }

      return v2;
    }

    return -94;
  }

  if (a1 == 181)
  {
    return -96;
  }

  if (a1 == 189)
  {
    return -66;
  }

  return v2;
}

uint64_t suggest_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(0x290uLL, 1uLL, 0xDDD36E3uLL);
  *a1 = v8;
  if (!v8)
  {
    return 4294966295;
  }

  v9 = v8;
  *v8 = a2;
  v8[80] = a4;
  if (a3)
  {
    __strcpy_chk();
  }

  else
  {
    *(v8 + 88) = 0;
  }

  cdict_init((v9 + 3), a2, 256, 32, 0);
  if ((a4 & 0x20000) == 0 || !*(v9 + 88))
  {
    return 0;
  }

  v11 = f_open(v9 + 88, 17);
  if (v11)
  {
    v12 = v11;
    while (1)
    {
      if (!f_gets(__s, 130, v12))
      {
        v25 = *(v12 + 20);
        f_close(v12);
        if (v25)
        {
          v25 = -4;
        }

        else
        {
          *(v9 + 8) = 0;
        }

        goto LABEL_44;
      }

      v13 = strchr(__s, 10);
      if (!v13)
      {
        break;
      }

      do
      {
        *v13 = 0;
LABEL_14:
        if (v13 <= __s)
        {
          break;
        }

        v16 = *--v13;
        v15 = v16;
      }

      while (v16 == 32 || v15 == 9);
      if (__s[0])
      {
        v18 = stpcopy(v28, __s);
        v19 = strchr(v28, 32);
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = (v18 + 1);
        }

        if (v19)
        {
          v22 = v18;
        }

        else
        {
          v22 = v18 + 1;
        }

        *v21 = 0;
        if (strlen(v28) > 16 || (v20 ? (v23 = v20 + 1) : (v23 = (v18 + 1)), strlen(v23) > 16))
        {
          v25 = -10;
LABEL_39:
          f_close(v12);
          goto LABEL_44;
        }

        v24 = cdict_add((v9 + 3), v28, v22 - v28 + 1);
        v25 = v24 & (v24 >> 31);
        if (v25 < 0)
        {
          goto LABEL_39;
        }
      }
    }

    v14 = strlen(__s);
    if (v14 != 129)
    {
      v13 = &__s[v14];
      goto LABEL_14;
    }

    f_close(v12);
    v25 = -7;
  }

  else
  {
    v25 = -2;
  }

LABEL_44:
  if (v25 != -2 && v25 < 0)
  {
    return (v25 - 1200);
  }

  else
  {
    return 0;
  }
}

uint64_t suggest_finish(uint64_t result)
{
  v26[8] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 32) == 1)
    {
      __strcpy_chk();
      __s.__pn_.__r_.__value_.__s.__data_[strlen(&__s) - 1] = 125;
      __strcpy_chk();
      __to.__pn_.__r_.__value_.__s.__data_[strlen(&__to) - 1] = 123;
      v2 = f_open(&__s, 26);
      if (v2)
      {
        v3 = v2;
        v21 = 0u;
        v22 = 0u;
        if (cdict_access(v1 + 24, 0, &v21))
        {
          v4 = 0;
          do
          {
            v5 = (v21 + SDWORD2(v21) + 20);
            v6 = v26;
            v7 = &v25;
            do
            {
              v8 = v6;
              v9 = *v5++;
              *(v7 + 1) = v9;
              v7 = (v7 + 1);
              v6 = (v6 + 1);
            }

            while (v9);
            if (*v5)
            {
              v10 = 0;
              *v7 = 32;
              do
              {
                v11 = v5[v10];
                *v8++ = v11;
                ++v10;
              }

              while (v11);
            }

            if (f_puts(&v25 + 1, v3) == -1)
            {
              break;
            }

            v12 = (*(v3 + 8) & 0x10) != 0 ? f_putc_txt(10, v3) : f_putc_bin(10, v3);
            if (v12 == -1)
            {
              break;
            }

            ++v4;
            v21 = 0u;
            v22 = 0u;
          }

          while (cdict_access(v1 + 24, v4, &v21));
        }

        v13 = *(v3 + 20);
        f_close(v3);
        if (v13)
        {
          v14 = -5;
        }

        else
        {
          v15 = f_open(&__to, 1);
          if (v15 && (f_close(v15), unlink(&__to) == -1))
          {
            v14 = -12;
          }

          else
          {
            v16 = f_open((v1 + 88), 1);
            if (v16 && (f_close(v16), rename((v1 + 88), &__to, v18), v19 == -1) || (rename(&__s, (v1 + 88), v17), v20 == -1))
            {
              v14 = -13;
            }

            else
            {
              unlink(&__to);
              v14 = 0;
              *(v1 + 32) = 0;
            }
          }
        }
      }

      else
      {
        v14 = -3;
      }
    }

    else
    {
      v14 = 0;
    }

    cdict_finish(v1 + 24);
    free(v1);
    if (v14)
    {
      return (v14 - 1200);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t suggest_words(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s, int a7, uint64_t a8)
{
  v16 = strlen(__s);
  if (v16 > 64)
  {
    return 4294966286;
  }

  *(a1 + 8) = a8;
  if (a8 == 1 || a8 == -1)
  {
    *(a1 + 632) = a7;
    *(a1 + 652) = 0;
    *(a1 + 16) = 1;
  }

  else if (!*(a1 + 16))
  {
    return *(a1 + 652);
  }

  he_language = get_he_language(*a1);
  v19 = he_language;
  if (he_language == 14)
  {
    v23 = 3;
    v25 = 0xA00000004;
    v27 = 2;
    v22 = corr_typewriter_hun;
    v24 = corr_more_accents_hun;
    v26 = corr_accents_hun;
    v20 = corr_y_z_hun;
  }

  else if (he_language == 21)
  {
    v23 = 3;
    v22 = corr_typewriter_pol;
    v24 = corr_more_accents_pol;
    v27 = 2;
    v26 = corr_accents_pol;
    v25 = 0x200000014;
    v20 = corr_y_z_pol;
  }

  else
  {
    v20 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v27 = 0;
    v23 = 0;
  }

  *(a1 + 608) = a2;
  *(a1 + 600) = a3;
  *(a1 + 616) = a4;
  *(a1 + 624) = a5;
  *(a1 + 648) = 1024;
  result = suggest_1_corr(a1, __s, 0);
  *(a1 + 16) = result;
  if ((result & 0x80000000) == 0)
  {
    if ((v21 = *(a1 + 640), (v21 & 0x8000) == 0) || (v21 & 0x10000) != 0 && *(a1 + 652) || ((*(a1 + 8) = -1, (a8 & 0x10000) == 0) || !result || (v21 & 0x40) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v20, v27), *(a1 + 16) = result, (result & 0x80000000) == 0)) && ((a8 & 0x20000) == 0 || !result || (*(a1 + 641) & 1) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v26, HIDWORD(v25)), *(a1 + 16) = result, (result & 0x80000000) == 0)) && ((a8 & 0x40000) == 0 || !result || (*(a1 + 641) & 2) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v24, v25), *(a1 + 16) = result, (result & 0x80000000) == 0)) && ((a8 & 0x80000) == 0 || !result || (*(a1 + 641) & 0x40) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v22, v23), *(a1 + 16) = result, (result & 0x80000000) == 0)) && ((a8 & 0x100000) == 0 || !result || (*(a1 + 640) & 0x20) == 0 || *(a1 + 652) || (result = sugg_capitalize1(a1, __s, v16, 0, 3), *(a1 + 16) = result, (result & 0x80000000) == 0)))
    {
      if (v19 == 14 && (a8 & 0x200000) != 0 && !*(a1 + 652))
      {
        *(a1 + 648) = 0;
        *(a1 + 8) = -1;
        result = suggest_1_corr(a1, __s, 0);
        *(a1 + 16) = result;
      }
    }
  }

  return result;
}

uint64_t suggest_1_corr(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v172 = *MEMORY[0x1E69E9840];
  he_language = get_he_language(*a1);
  v7 = he_language;
  if (he_language == 14)
  {
    v8 = 3;
    v9 = 41;
    v10 = 14;
    v158 = 0xD00000009;
    v161 = 0xA00000004;
    v164 = 5;
    v168 = 2;
    v11 = corr_typewriter_hun;
    v12 = corr_keyboard_hun;
    v156 = corr_proper_names_hun;
    v157 = corr_voiced_unvoiced_hun;
    v159 = corr_assimilation_hun;
    v160 = corr_more_accents_hun;
    v162 = corr_accents_hun;
    v163 = corr_j_ly_hun;
    v13 = corr_y_z_hun;
LABEL_5:
    __n = v13;
    goto LABEL_7;
  }

  if (he_language == 21)
  {
    v8 = 3;
    v9 = 35;
    v10 = 5;
    v158 = 0x1A00000006;
    v161 = 0x200000014;
    v164 = 26;
    v168 = 2;
    v11 = corr_typewriter_pol;
    v12 = corr_keyboard_pol;
    v156 = &corr_proper_names_pol;
    v157 = corr_voiced_unvoiced_pol;
    v159 = corr_assimilation_pol;
    v160 = corr_more_accents_pol;
    v162 = corr_accents_pol;
    v163 = corr_j_ly_pol;
    v13 = corr_y_z_pol;
    goto LABEL_5;
  }

  __n = 0;
  v162 = 0;
  v163 = 0;
  v159 = 0;
  v160 = 0;
  v156 = 0;
  v157 = 0;
  v12 = 0;
  v11 = 0;
  v168 = 0;
  v164 = 0;
  v161 = 0;
  v158 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
LABEL_7:
  v14 = strlen(a2);
  if (v14 > 64)
  {
    return 4294966286;
  }

  v155 = v10;
  v154 = v12;
  v15 = *(a1 + 16);
  if (v15 < 1)
  {
    return v15;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) != 0 && (*(a1 + 640) & 8) != 0)
  {
    v148 = v9;
    if (v7 == 14 && (*(a1 + 632) & 0x20) != 0)
    {
LABEL_17:
      if (v14 >= 3)
      {
        v19 = 1;
        while (1)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            if (v19 == v20)
            {
              __dst[v21++] = 32;
            }

            v22 = v21 + 1;
            __dst[v21++] = a2[v20++];
          }

          while ((v14 & 0x7FFFFFFF) != v20);
          __dst[v22] = 0;
          v23 = try_f(a1, __dst, 0, 0, 2);
          if (v23 <= 0)
          {
            goto LABEL_276;
          }

          if (++v19 == v14 - 1)
          {
            v16 = *(a1 + 8);
            break;
          }
        }
      }

      v15 = 1;
      *(a1 + 16) = 1;
    }

    else
    {
      v17 = &a2[v3];
      while (1)
      {
        v18 = *v17;
        if (!*v17)
        {
          break;
        }

        ++v17;
        if (strchr(punct_inside_punctu, v18))
        {
          goto LABEL_17;
        }
      }
    }

    v9 = v148;
  }

  if ((v16 & 2) != 0 && v7 == 14 && (*(a1 + 640) & 0x10) != 0 && (*(a1 + 632) & 0x80) != 0)
  {
    if (v14 >= 3)
    {
      v143 = v3;
      v74 = *a1;
      v75 = 1;
      while (1)
      {
        v76 = 0;
        v77 = 0;
        do
        {
          if (v75 == v76)
          {
            __dst[v77++] = *(v74 + 813);
          }

          v78 = v77 + 1;
          __dst[v77++] = a2[v76++];
        }

        while ((v14 & 0x7FFFFFFF) != v76);
        __dst[v78] = 0;
        v79 = (*(a1 + 616))(*(a1 + 600), __dst, 0);
        v15 = v79;
        if ((v79 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        if (v79)
        {
          *(a1 + 652) = 1;
          v80 = __dst;
        }

        else
        {
          v80 = 0;
        }

        v23 = (*(a1 + 624))(*(a1 + 608), v80);
        if (v23 <= 0)
        {
          goto LABEL_276;
        }

        if (++v75 == v14 - 1)
        {
          v16 = *(a1 + 8);
          v3 = v143;
          break;
        }
      }
    }

    v15 = 1;
    *(a1 + 16) = 1;
  }

  if ((v16 & 4) != 0)
  {
    if (*(a1 + 632))
    {
      if ((*(a1 + 640) & 0x20) != 0)
      {
        v15 = sugg_capitalize1(a1, a2, v14, v3, 1);
        *(a1 + 16) = v15;
        if ((v15 & 0x80000000) != 0)
        {
          return v15;
        }
      }
    }
  }

  if (v15 < 1)
  {
    return v15;
  }

  if (*(a1 + 8) & 8) != 0 && (*(a1 + 640))
  {
    if (v14 > v3)
    {
      v24 = *a1 + 1024;
      for (i = v3; i != v14; ++i)
      {
        v26 = &a2[i];
        if (*(v24 + 8 * a2[i]) & 1) != 0 && (i != v3 && (*(v24 + 8 * *(v26 - 1)) & 1) != 0 || i != v14 - 1 && (*(v24 + 8 * *(v26 + 1))))
        {
          if (v14 < 1)
          {
            v27 = 0;
          }

          else
          {
            LODWORD(v27) = 0;
            v28 = i;
            v29 = v14 & 0x7FFFFFFF;
            v30 = a2;
            do
            {
              if (v28)
              {
                __dst[v27] = *v30;
                LODWORD(v27) = v27 + 1;
              }

              --v28;
              ++v30;
              --v29;
            }

            while (v29);
            v27 = v27;
          }

          __dst[v27] = 0;
          v31 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
          v15 = v31;
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_277;
          }

          if (v31)
          {
            *(a1 + 652) = 1;
            v32 = __dst;
          }

          else
          {
            v32 = 0;
          }

          v23 = (*(a1 + 624))(*(a1 + 608), v32);
          if (v23 < 1)
          {
            goto LABEL_276;
          }
        }
      }
    }

    v15 = 1;
    *(a1 + 16) = 1;
  }

  v33 = *(a1 + 8);
  if ((v33 & 0x10) != 0 && (*(a1 + 640) & 2) != 0)
  {
    if (v14 - 1 > v3)
    {
      v151 = v11;
      v34 = *a1 + 1024;
      v35 = v3;
      do
      {
        v36 = a2[v35];
        if (*(v34 + 8 * v36) & 1) != 0 && v36 != a2[v35 + 1] && (*(v34 + 8 * a2[v35 + 1]))
        {
          if (v14 < 1)
          {
            v38 = 0;
          }

          else
          {
            LODWORD(v38) = 0;
            v39 = 0;
            do
            {
              if (v39 == v35)
              {
                v40 = v39 + 1;
                v41 = v38 + 1;
                __dst[v38] = a2[v40];
                v42 = 2;
              }

              else
              {
                v42 = 1;
                v41 = v38;
                LODWORD(v40) = v39;
              }

              v38 = (v38 + v42);
              __dst[v41] = a2[v39];
              v39 = v40 + 1;
            }

            while (v40 + 1 < v14);
          }

          __dst[v38] = 0;
          v43 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
          v15 = v43;
          if ((v43 & 0x80000000) != 0)
          {
            goto LABEL_277;
          }

          if (v43)
          {
            *(a1 + 652) = 1;
            v44 = __dst;
          }

          else
          {
            v44 = 0;
          }

          v23 = (*(a1 + 624))(*(a1 + 608), v44);
          if (v23 < 1)
          {
            goto LABEL_276;
          }
        }

        ++v35;
      }

      while (v14 - 1 != v35);
      v33 = *(a1 + 8);
      v11 = v151;
    }

    v15 = 1;
    *(a1 + 16) = 1;
  }

  if ((v33 & 0x20) != 0)
  {
    if ((*(a1 + 640) & 4) != 0)
    {
      if (v14 <= v3)
      {
        v15 = 1;
        *(a1 + 16) = 1;
      }

      else
      {
        v147 = v8;
        v149 = v9;
        v152 = v11;
        v45 = a2 - 1;
        v46 = *a1 + 1024;
        v144 = *a1;
        v47 = *a1 + 3076;
        v48 = v3;
        v49 = v14;
        v146 = v46;
        v145 = v47;
        do
        {
          v50 = a2[v48];
          v51 = v48 + 1;
          if (v50 != a2[v48 + 1] && (v48 < 1 || v50 != v45[v48]))
          {
            v52 = v48;
            v53 = *(v46 + 8 * a2[v48]);
            if (v53)
            {
              if (v14 < 1)
              {
                v71 = 0;
              }

              else
              {
                v66 = 0;
                v67 = v14 & 0x7FFFFFFF;
                v68 = a2;
                do
                {
                  if (!v52)
                  {
                    __dst[v66++] = a2[v48];
                  }

                  v69 = *v68++;
                  v70 = v66 + 1;
                  __dst[v66] = v69;
                  --v52;
                  ++v66;
                  --v67;
                }

                while (v67);
                v71 = v70;
              }

              __dst[v71] = 0;
              v72 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
              v15 = v72;
              if ((v72 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if (v72)
              {
                *(a1 + 652) = 1;
                v73 = __dst;
              }

              else
              {
                v73 = 0;
              }

              v23 = (*(a1 + 624))(*(a1 + 608), v73);
              v46 = v146;
              v45 = a2 - 1;
              v49 = v14;
              v47 = v145;
              if (v23 < 1)
              {
                goto LABEL_276;
              }
            }

            else if (v48 >= 1 && (v53 & 0x1000) != 0 && (*(v46 + 8 * v45[v48]) & 0x1800000) != 0)
            {
              v54 = *(v144 + 3072);
              if (v54 >= 1)
              {
                for (j = 0; j < v54; ++j)
                {
                  v56 = (v47 + 28 * j);
                  if (*v56 == v45[v48] && (*(v46 + 8 * v56[*(v56 + 1) + 7]) & 0x10) != 0)
                  {
                    if (v14 < 1)
                    {
                      v57 = 0;
                    }

                    else
                    {
                      LODWORD(v57) = 0;
                      v58 = v14 & 0x7FFFFFFF;
                      v59 = a2;
                      v60 = v48;
                      do
                      {
                        if (v60)
                        {
                          v61 = 1;
                          v62 = v59;
                          v63 = v57;
                        }

                        else
                        {
                          v63 = v57 + 1;
                          __dst[v57] = a2[v48];
                          v62 = &v56[*(v56 + 1) + 7];
                          v61 = 2;
                        }

                        v57 = (v57 + v61);
                        __dst[v63] = *v62;
                        --v60;
                        ++v59;
                        --v58;
                      }

                      while (v58);
                    }

                    __dst[v57] = 0;
                    v64 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
                    v15 = v64;
                    if ((v64 & 0x80000000) != 0)
                    {
                      goto LABEL_277;
                    }

                    if (v64)
                    {
                      *(a1 + 652) = 1;
                      v65 = __dst;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    v23 = (*(a1 + 624))(*(a1 + 608), v65);
                    if (v23 < 1)
                    {
                      goto LABEL_276;
                    }

                    v49 = v14;
                    v54 = *(v144 + 3072);
                    v46 = v146;
                    v45 = a2 - 1;
                    v47 = v145;
                  }
                }
              }
            }
          }

          ++v48;
        }

        while (v51 != v49);
        v33 = *(a1 + 8);
        v15 = 1;
        *(a1 + 16) = 1;
        v8 = v147;
        v9 = v149;
        v11 = v152;
        if ((v33 & 0x20) == 0)
        {
          goto LABEL_160;
        }
      }
    }

    if (*(a1 + 632) && (*(a1 + 642) & 4) != 0)
    {
      if (v14 == 64)
      {
LABEL_159:
        v15 = 1;
        *(a1 + 16) = 1;
        goto LABEL_160;
      }

      if (v14 >= 1)
      {
        v81 = v14 & 0x7FFFFFFF;
        v82 = a2;
        do
        {
          v83 = *v82++;
          if ((*(*a1 + 1024 + 8 * v83) & 0x19000) != 0)
          {
            goto LABEL_159;
          }
        }

        while (--v81);
      }

      __strcpy_chk();
      __dst[v14] = 46;
      __dst[v14 + 1] = 0;
      v84 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
      v15 = v84;
      if ((v84 & 0x80000000) != 0)
      {
LABEL_277:
        *(a1 + 16) = v15;
        return v15;
      }

      if (v84)
      {
        *(a1 + 652) = 1;
        v85 = __dst;
      }

      else
      {
        v85 = 0;
      }

      v23 = (*(a1 + 624))(*(a1 + 608), v85);
      if (v23 >= 1)
      {
        v33 = *(a1 + 8);
        goto LABEL_159;
      }

LABEL_276:
      v15 = v23;
      goto LABEL_277;
    }
  }

LABEL_160:
  if ((v33 & 0x40) != 0 && (*(a1 + 640) & 0x40) != 0)
  {
    v86 = sugg_prepared(a1, a2, v14, v3, 1, __n, v168);
    v15 = v86;
    *(a1 + 16) = v86;
    if ((v86 & 0x80000000) != 0 || !v86)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 8) & 0x80) != 0 && (*(a1 + 640) & 0x80) != 0)
  {
    v87 = sugg_prepared(a1, a2, v14, v3, 1, v163, v164);
    v15 = v87;
    *(a1 + 16) = v87;
    if ((v87 & 0x80000000) != 0 || !v87)
    {
      return v15;
    }

    v15 = 1;
  }

  if (*(a1 + 9) & 1) != 0 && (*(a1 + 641))
  {
    v88 = sugg_prepared(a1, a2, v14, v3, 1, v162, HIDWORD(v161));
    v15 = v88;
    *(a1 + 16) = v88;
    if ((v88 & 0x80000000) != 0 || !v88)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 2) != 0 && (*(a1 + 641) & 2) != 0)
  {
    v89 = sugg_prepared(a1, a2, v14, v3, 1, v160, v161);
    v15 = v89;
    *(a1 + 16) = v89;
    if ((v89 & 0x80000000) != 0 || !v89)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 4) != 0 && (*(a1 + 641) & 4) != 0)
  {
    v90 = sugg_prepared(a1, a2, v14, v3, 1, v159, HIDWORD(v158));
    v15 = v90;
    *(a1 + 16) = v90;
    if ((v90 & 0x80000000) != 0 || !v90)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 8) != 0 && (*(a1 + 641) & 8) != 0)
  {
    v91 = sugg_prepared(a1, a2, v14, v3, 1, v157, v158);
    v15 = v91;
    *(a1 + 16) = v91;
    if ((v91 & 0x80000000) != 0 || !v91)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 0x10) != 0 && (*(a1 + 641) & 0x10) != 0)
  {
    v92 = sugg_prepared(a1, a2, v14, v3, 1, v156, v155);
    v15 = v92;
    *(a1 + 16) = v92;
    if ((v92 & 0x80000000) != 0 || !v92)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 8) & 4) != 0 && *(a1 + 632) && (*(a1 + 640) & 0x20) != 0)
  {
    v150 = v9;
    v153 = v11;
    v93 = *a1;
    __strncpy_chk();
    __dst[v14] = 0;
    if (v14 >= 1)
    {
      v94 = 0;
      v95 = v93 + 1024;
      do
      {
        if (!v3)
        {
          v96 = a2[v94];
          v97 = *(v95 + 8 * v96);
          if ((v97 & 4) != 0)
          {
            __dst[v94] = *(v93 + v96);
            v98 = (*(a1 + 616))(*(a1 + 600), __dst, 0);
            v15 = v98;
            if ((v98 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v98)
            {
              *(a1 + 652) = 1;
              v99 = __dst;
            }

            else
            {
              v99 = 0;
            }

            v23 = (*(a1 + 624))(*(a1 + 608), v99);
            if (v23 < 1)
            {
              goto LABEL_276;
            }

            v96 = a2[v94];
            __dst[v94] = v96;
            v97 = *(v95 + 8 * v96);
          }

          if ((v97 & 2) != 0)
          {
            __dst[v94] = *(v93 + 256 + v96);
            v100 = (*(a1 + 616))(*(a1 + 600), __dst, 0);
            v15 = v100;
            if ((v100 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v100)
            {
              *(a1 + 652) = 1;
              v101 = __dst;
            }

            else
            {
              v101 = 0;
            }

            v23 = (*(a1 + 624))(*(a1 + 608), v101);
            if (v23 < 1)
            {
              goto LABEL_276;
            }

            __dst[v94] = a2[v94];
          }
        }

        ++v94;
      }

      while ((v14 & 0x7FFFFFFF) != v94);
    }

    v15 = 1;
    *(a1 + 16) = 1;
    v9 = v150;
    v11 = v153;
  }

  if ((*(a1 + 9) & 0x20) != 0 && (*(a1 + 641) & 0x20) != 0)
  {
    v102 = sugg_prepared(a1, a2, v14, v3, 1, v154, v9);
    v15 = v102;
    *(a1 + 16) = v102;
    if ((v102 & 0x80000000) != 0 || !v102)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 0x40) != 0 && (*(a1 + 641) & 0x40) != 0)
  {
    v103 = sugg_prepared(a1, a2, v14, v3, 1, v11, v8);
    v15 = v103;
    *(a1 + 16) = v103;
    if ((v103 & 0x80000000) != 0 || !v103)
    {
      return v15;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 0x80) != 0 && (*(a1 + 642) & 2) != 0)
  {
    memset(v170, 0, sizeof(v170));
    v104 = cdict_size(a1 + 24);
    if (v14 > v3)
    {
      v105 = v3 - 1;
      v106 = v3;
      do
      {
        v169 = v105 + 1;
        if (v104 >= 1)
        {
          for (k = 0; k != v104; ++k)
          {
            cdict_access(a1 + 24, k, v170);
            v108 = *&v170[0] + SDWORD2(v170[0]);
            v111 = *(v108 + 20);
            v110 = v108 + 20;
            v109 = v111;
            v112 = &a2[v106];
            if (v111)
            {
              while (v109 == *v112)
              {
                v113 = *++v110;
                v109 = v113;
                ++v112;
                if (!v113)
                {
                  goto LABEL_236;
                }
              }
            }

            else
            {
LABEL_236:
              if (v106 < 1)
              {
                LODWORD(v114) = 0;
              }

              else
              {
                memcpy(__dst, a2, v106);
                LODWORD(v114) = v169;
              }

              v115 = *(v110 + 1);
              if (v115)
              {
                v116 = (v110 + 2);
                v114 = v106 & ~(v106 >> 31);
                do
                {
                  __dst[v114++] = v115;
                  v117 = *v116++;
                  v115 = v117;
                }

                while (v117);
              }

              v114 = v114;
              do
              {
                v118 = *v112++;
                __dst[v114++] = v118;
              }

              while (v118);
              v119 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
              v15 = v119;
              if ((v119 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if (v119)
              {
                *(a1 + 652) = 1;
                v120 = __dst;
              }

              else
              {
                v120 = 0;
              }

              v23 = (*(a1 + 624))(*(a1 + 608), v120);
              if (v23 < 1)
              {
                goto LABEL_276;
              }
            }
          }
        }

        ++v106;
        v105 = v169;
      }

      while (v106 != v14);
    }

    if (v14 >= 1)
    {
      v121 = 0;
      v165 = v14 & 0x7FFFFFFF;
      v122 = -1;
      do
      {
        __na = v122 + 1;
        if (v104 >= 1)
        {
          for (m = 0; m != v104; ++m)
          {
            cdict_access(a1 + 24, m, v170);
            v124 = *&v170[0];
            v125 = SDWORD2(v170[0]);
            v126 = *&v170[0] + SDWORD2(v170[0]);
            v127 = (v126 + 20);
            v128 = (v126 + 22);
            v129 = (v126 + 20);
            do
            {
              v130 = v128;
              v131 = *v129++;
              ++v128;
            }

            while (v131);
            v132 = *v129;
            v133 = &a2[v121];
            if (v132)
            {
              while (v132 == *v133)
              {
                ++v133;
                v134 = *v130++;
                v132 = v134;
                if (!v134)
                {
                  goto LABEL_260;
                }
              }
            }

            else
            {
LABEL_260:
              if (v121)
              {
                memcpy(__dst, a2, v121);
                LODWORD(v135) = __na;
              }

              else
              {
                LODWORD(v135) = 0;
              }

              v136 = *v127;
              if (*v127)
              {
                v137 = (v124 + v125 + 21);
                v135 = v121;
                do
                {
                  __dst[v135++] = v136;
                  v138 = *v137++;
                  v136 = v138;
                }

                while (v138);
              }

              v135 = v135;
              do
              {
                v139 = *v133++;
                __dst[v135++] = v139;
              }

              while (v139);
              v140 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
              v15 = v140;
              if ((v140 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if (v140)
              {
                *(a1 + 652) = 1;
                v141 = __dst;
              }

              else
              {
                v141 = 0;
              }

              v23 = (*(a1 + 624))(*(a1 + 608), v141);
              if (v23 < 1)
              {
                goto LABEL_276;
              }
            }
          }
        }

        ++v121;
        v122 = __na;
      }

      while (v121 != v165);
    }

    v15 = 1;
    goto LABEL_277;
  }

  return v15;
}

uint64_t sugg_prepared(void *a1, char *a2, int a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v43 = a5;
  v45 = *MEMORY[0x1E69E9840];
  if (a4 < a3)
  {
    v9 = *a1 + 768;
    v41 = a4 - 1;
    v10 = a4;
    v11 = a7;
    v39 = a7;
    do
    {
      if (a7 >= 1)
      {
        v12 = 0;
        while (1)
        {
          v13 = (a6 + 16 * v12);
          v14 = **v13;
          v15 = &a2[v10];
          if (**v13)
          {
            v16 = *v13 + 1;
            v15 = &a2[v10];
            while (*(v9 + v14) == *v15)
            {
              ++v15;
              v17 = *v16++;
              v14 = v17;
              if (!v17)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
LABEL_9:
            if (v10 < 1)
            {
              LODWORD(v18) = 0;
            }

            else
            {
              memcpy(__dst, a2, v10);
              LODWORD(v18) = v41 + 1;
            }

            v19 = v13[1];
            v20 = *v19;
            if (*v19)
            {
              v21 = v19 + 1;
              v18 = v10 & ~(v10 >> 31);
              do
              {
                __dst[v18++] = *(v9 + v20);
                v22 = *v21++;
                v20 = v22;
              }

              while (v22);
            }

            v23 = v18;
            v18 = v18;
            do
            {
              v24 = *v15++;
              __dst[v18++] = v24;
            }

            while (v24);
            result = try_f(a1, __dst, v23, *(a1 + 162), v43);
            if (result < 1)
            {
              return result;
            }
          }

          if (++v12 == v11)
          {
            v26 = 0;
            while (1)
            {
              v27 = (a6 + 16 * v26);
              v28 = v27[1];
              v29 = *v28;
              v30 = &a2[v10];
              if (*v28)
              {
                v31 = v28 + 1;
                v30 = &a2[v10];
                while (*(v9 + v29) == *v30)
                {
                  ++v30;
                  v32 = *v31++;
                  v29 = v32;
                  if (!v32)
                  {
                    goto LABEL_24;
                  }
                }
              }

              else
              {
LABEL_24:
                if (v10 < 1)
                {
                  LODWORD(v33) = 0;
                }

                else
                {
                  memcpy(__dst, a2, v10);
                  LODWORD(v33) = v41 + 1;
                }

                v34 = **v27;
                if (**v27)
                {
                  v35 = *v27 + 1;
                  v33 = v10 & ~(v10 >> 31);
                  do
                  {
                    __dst[v33++] = *(v9 + v34);
                    v36 = *v35++;
                    v34 = v36;
                  }

                  while (v36);
                }

                v37 = v33;
                v33 = v33;
                do
                {
                  v38 = *v30++;
                  __dst[v33++] = v38;
                }

                while (v38);
                result = try_f(a1, __dst, v37, *(a1 + 162), v43);
                if (result < 1)
                {
                  return result;
                }
              }

              if (++v26 == v11)
              {
                goto LABEL_34;
              }
            }
          }
        }
      }

LABEL_34:
      ++v10;
      ++v41;
      a7 = v39;
    }

    while (v10 != a3);
  }

  return 1;
}

uint64_t sugg_capitalize1(uint64_t *a1, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  __strncpy_chk();
  __s[a3] = 0;
  if (a4)
  {
    return 1;
  }

  v12 = *a2;
  v13 = *(v10 + 1024 + 8 * v12);
  if ((v13 & 4) != 0)
  {
    __s[0] = *(v10 + v12);
    result = try_f(a1, __s, 0, 0, a5);
    if (result < 1)
    {
      return result;
    }

    v12 = *a2;
    v13 = *(v10 + 1024 + 8 * v12);
  }

  if ((v13 & 2) == 0)
  {
    return 1;
  }

  __s[0] = *(v10 + v12 + 256);
  LODWORD(result) = try_f(a1, __s, 0, 0, a5);
  if (result >= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t try_f(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v6 = __s;
  if (a5 == 2)
  {
    v16 = strchr(__s, 32);
    if (!v16)
    {
      return 1;
    }

    v17 = v16;
    if (v16 > v6 && (LOBYTE(v18) = *(v16 - 1), strchr(try_2_words_punctu, v18)))
    {
      v18 = v18;
      *(v17 - 1) = 0;
    }

    else
    {
      v18 = 0;
    }

    v21 = *v17;
    *v17 = 0;
    v20 = (*(a1 + 616))(*(a1 + 600), v6, a4);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v22 = (*(a1 + 616))(*(a1 + 600), &v6[v17 - v6 + 1], a4);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    *v17 = v21;
    if (v18)
    {
      *(v17 - 1) = v18;
    }

    v23 = 0;
    if (v20 && v22)
    {
      *(a1 + 652) = 1;
      v23 = v6;
    }

    v24 = *(a1 + 624);
    v25 = *(a1 + 608);
LABEL_50:

    return v24(v25, v23);
  }

  v8 = a3;
  if (a5 != 3)
  {
    if (a5 == 4)
    {
      he_language = get_he_language(*a1);
      if (he_language == 14)
      {
        v10 = 3;
        v35 = 4;
        v13 = 10;
        v11 = 2;
        v33 = corr_typewriter_hun;
        v34 = corr_more_accents_hun;
        v12 = corr_accents_hun;
        v14 = corr_y_z_hun;
      }

      else if (he_language == 21)
      {
        v10 = 3;
        v35 = 20;
        v33 = corr_typewriter_pol;
        v34 = corr_more_accents_pol;
        v11 = 2;
        v12 = corr_accents_pol;
        v13 = 2;
        v14 = corr_y_z_pol;
      }

      else
      {
        v14 = 0;
        v12 = 0;
        v33 = 0;
        v34 = 0;
        v11 = 0;
        v13 = 0;
        v35 = 0;
        v10 = 0;
      }

      v26 = strlen(v6);
      if (v26 > 64)
      {
        return 4294966286;
      }

      v32 = v10;
      v27 = (*(a1 + 616))(*(a1 + 600), v6, a4);
      v20 = v27;
      if ((v27 & 0x80000000) == 0)
      {
        v28 = *(a1 + 16);
        if (v27 || v28 < 1)
        {
          return *(a1 + 16);
        }

        else
        {
          if ((*(a1 + 640) & 0x40) != 0)
          {
            v29 = sugg_prepared(a1, v6, v26, v8, 1, v14, v11);
            v20 = v29;
            *(a1 + 16) = v29;
            if ((v29 & 0x80000000) != 0 || !v29)
            {
              return v20;
            }

            v28 = 1;
          }

          if (*(a1 + 641))
          {
            v30 = sugg_prepared(a1, v6, v26, v8, 1, v12, v13);
            v20 = v30;
            *(a1 + 16) = v30;
            if ((v30 & 0x80000000) != 0 || !v30)
            {
              return v20;
            }

            v28 = 1;
          }

          if ((*(a1 + 641) & 2) != 0)
          {
            v31 = sugg_prepared(a1, v6, v26, v8, 1, v34, v35);
            v20 = v31;
            *(a1 + 16) = v31;
            if ((v31 & 0x80000000) != 0 || !v31)
            {
              return v20;
            }

            v28 = 1;
          }

          v20 = v28;
          if ((*(a1 + 641) & 0x40) != 0)
          {
            v20 = sugg_prepared(a1, v6, v26, v8, 1, v33, v32);
            *(a1 + 16) = v20;
          }
        }
      }

      return v20;
    }

    v19 = (*(a1 + 616))(*(a1 + 600), __s, a4);
    v20 = v19;
    if ((v19 & 0x80000000) != 0)
    {
      return v20;
    }

    if (v19)
    {
      *(a1 + 652) = 1;
    }

    else
    {
      v6 = 0;
    }

    v24 = *(a1 + 624);
    v25 = *(a1 + 608);
    v23 = v6;
    goto LABEL_50;
  }

  return suggest_1_corr(a1, __s, a3);
}

uint64_t PRAltMod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v179 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  v174 = 0;
  *v173 = 0;
  v8 = *(a1 + 16);
  v168 = 0;
  v167 = 14707757;
  if (*(a2 + 20) == 5)
  {
    v9 = *(a4 + 24);
    v10 = *(v9 + 32);
    if (v10 >= 4 && (!SLstrcmp((*(v9 + 16) + (v10 - 3)), "-ci") || !SLstrcmp((*(*(a4 + 24) + 16) + *(*(a4 + 24) + 32) - 3), &v167)))
    {
      *(a3 + 2) -= 3;
      if (*(a3 + 6))
      {
        *(a3 + 6) -= 3;
      }
    }
  }

  v11 = *(a3 + 24);
  if (!v11)
  {
    return 0;
  }

  v154 = *(v11 + 18);
  if (!*(v11 + 18) || !*(a2 + 120))
  {
    return 0;
  }

  v12 = *(a4 + 16);
  v13 = *(v8 + 64);
  if (v12 == v13)
  {
    goto LABEL_17;
  }

  v14 = *(v12 + 72);
  if (!v14)
  {
LABEL_18:
    v165 = 1;
    goto LABEL_19;
  }

  if ((*(v14 + 4) & 0x7080) == 0)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (v14 == v13 || (v15 = *(v14 + 72)) == 0)
  {
    v165 = 0;
  }

  else
  {
    v165 = 0;
    v149 = *(v14 + 72);
    if ((*(v15 + 4) & 0x7080) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_19:
  v149 = 0;
LABEL_20:
  v159 = v14;
  v132 = a3;
  v144 = a4;
  v16 = *(*(a4 + 24) + 80);
  if (!v16 || (*(v16 + 4) & 0x7080) == 0)
  {
    v16 = 0;
  }

  v133 = v16;
  v17 = 0;
  v155 = 0;
  v18 = 0;
  memset(v175, 0, sizeof(v175));
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  v153 = v11;
  while (2)
  {
    while (1)
    {
      *v162 = *v11;
      v156 = *(*(v11 + 8) + 2 * v17);
      v19 = (*v11 + v156);
      v20 = *(a2 + 8);
      v21 = *v19;
      if ((*(v20 + 4 * v21) & 0x60000040) != 0)
      {
        v22 = 0;
        v23 = (v19 - 1);
        v24 = 1;
        v25 = (*v11 + v156);
        while (1)
        {
          if (v21 >= 45)
          {
            if (v21 > 45)
            {
              if (v21 == 46)
              {
                v24 = 0;
                ++v22;
                goto LABEL_50;
              }

              if (v21 == 133 || v21 == 151)
              {
LABEL_42:
                v24 = 0;
                goto LABEL_50;
              }
            }

            else if (*(v25 - 1) == 45)
            {
              --v22;
              goto LABEL_50;
            }

            goto LABEL_29;
          }

          if (v21 > 31)
          {
            break;
          }

          if (!v21)
          {
            v25 = 0;
            goto LABEL_50;
          }

          if (v21 == 9)
          {
            goto LABEL_42;
          }

LABEL_29:
          if ((*(v20 + 4 * v21) & 0x60000040) == 0)
          {
            v24 = 0;
          }

          v26 = *++v25;
          v21 = v26;
          ++v22;
          ++v23;
        }

        if (v21 != 32)
        {
          if (v21 == 44)
          {
            goto LABEL_42;
          }

          goto LABEL_29;
        }

        do
        {
          v28 = *++v23;
          v27 = v28;
        }

        while (v28 == 32);
        v25 = v27 ? v23 : 0;
LABEL_50:
        v29 = *(a2 + 128);
        *(v29 + 1308) = 0;
        *(v29 + 1408) = 1;
        *(v29 + 1339) = 0;
        v30 = (v22 & 0xFFC0) != 0 ? 64 : v22;
        __strncpy_chk();
        v178[v30] = 0;
        v31 = PRIcs(a1, a2, 0, 0, 0, v178, 0, v29, 3, 0);
        if (v31 != 11)
        {
          break;
        }
      }

LABEL_247:
      ++v17;
      v11 = v153;
      if (v17 == v154)
      {
        if (v155)
        {
          goto LABEL_361;
        }

        return 0;
      }
    }

    __s = v19;
    if (v31 == 8)
    {
      goto LABEL_365;
    }

    v32 = *(*(v29 + 3184) + 288);
    v33 = *v32;
    v34 = v32[6] & 0xF | (((v33 >> 8) & 3) << 6) | (v33 >> 6) & 0x30;
    v35 = *(a2 + 20);
    if (v35 != 9)
    {
      if (v35 == 8)
      {
        v36 = 0;
        if ((v33 & 0x10) != 0)
        {
          v37 = 15;
          goto LABEL_85;
        }
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_86;
    }

    v38 = *(v29 + 1547);
    v36 = 1;
    if (v38 <= 0x66)
    {
      if (*(v29 + 1547) > 0x52u)
      {
        if (v38 != 83)
        {
          if (v38 != 88 && v38 != 90)
          {
            goto LABEL_86;
          }

          goto LABEL_79;
        }

LABEL_81:
        v36 = 1;
        if ((*(v20 + 4 * *(v29 + 1548)) & 0x60000040) == 0 || (*(v20 + 4 * *(v29 + 1548)) & 0x10000000) != 0)
        {
          goto LABEL_86;
        }

        goto LABEL_83;
      }

      if (v38 != 71)
      {
        if (v38 != 80)
        {
          goto LABEL_86;
        }

        goto LABEL_76;
      }

LABEL_78:
      if ((*(v29 + 1548) | 0x20) == 0x6E)
      {
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    if (*(v29 + 1547) <= 0x72u)
    {
      if (v38 == 103)
      {
        goto LABEL_78;
      }

      if (v38 != 112)
      {
        goto LABEL_86;
      }

LABEL_76:
      if ((*(v29 + 1548) | 0x20) == 0x73)
      {
        goto LABEL_79;
      }

LABEL_80:
      v36 = 1;
      goto LABEL_86;
    }

    if (v38 == 115)
    {
      goto LABEL_81;
    }

    if (v38 != 120 && v38 != 122)
    {
      goto LABEL_86;
    }

LABEL_79:
    v36 = 1;
LABEL_83:
    if ((v33 & 0x400) != 0)
    {
      v37 = 256;
LABEL_85:
      v34 |= v37;
    }

LABEL_86:
    v39 = *(v29 + 1547) | 0x20;
    if (v39 == 101)
    {
      v34 |= 0x200u;
    }

    if (v39 == 105)
    {
      v40 = v34 | 0x400;
    }

    else
    {
      v40 = v34;
    }

    v164 = *(v29 + 1614);
    if (*(v29 + 1614))
    {
      v41 = strlen((v29 + 1614));
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v24 = 1;
LABEL_93:
      v47 = v159;
      goto LABEL_94;
    }

    v41 = *(v29 + 1612);
    if (!v24)
    {
      v161 = 0;
      v143 = 0;
      v115 = 0;
      goto LABEL_268;
    }

    if (!v25)
    {
      v43 = v133;
      if (!v133)
      {
        v42 = 0;
        v44 = 0;
        v45 = 0;
        v24 = 1;
        goto LABEL_307;
      }

      v47 = v159;
      if ((*(v133 + 94) & 2) != 0)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v24 = 1;
        v46 = v40;
        v40 = 0;
        goto LABEL_94;
      }

      v123 = *(v133 + 98);
      if (!v36 || !*(v133 + 32))
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v24 = 1;
LABEL_310:
        v46 = v40;
        v40 = (v123 >> 2) & 0xC0 | (v123 >> 6) & 0x30;
        goto LABEL_94;
      }

      v124 = *(v133 + 16);
      v125 = *v124;
      v24 = 1;
      if (v125 > 0x66)
      {
        if (*v124 > 0x72u)
        {
          if (v125 != 115)
          {
            if (v125 != 120 && v125 != 122)
            {
              goto LABEL_348;
            }

            goto LABEL_344;
          }

          goto LABEL_350;
        }

        if (v125 != 103)
        {
          if (v125 != 112)
          {
LABEL_348:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            goto LABEL_310;
          }

          goto LABEL_334;
        }
      }

      else
      {
        if (*v124 > 0x52u)
        {
          if (v125 != 83)
          {
            if (v125 != 88 && v125 != 90)
            {
              goto LABEL_348;
            }

            goto LABEL_344;
          }

LABEL_350:
          v43 = 0;
          if ((*(v20 + 4 * v124[1]) & 0x60000040) == 0 || (*(v20 + 4 * v124[1]) & 0x10000000) != 0 || (v123 & 0x400) == 0)
          {
            v42 = 0;
            v44 = 0;
            v45 = 0;
            goto LABEL_310;
          }

          goto LABEL_353;
        }

        if (v125 != 71)
        {
          if (v125 != 80)
          {
            goto LABEL_348;
          }

LABEL_334:
          if ((v124[1] | 0x20) != 0x73)
          {
            goto LABEL_345;
          }

LABEL_344:
          if ((v123 & 0x400) == 0)
          {
LABEL_345:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            goto LABEL_310;
          }

LABEL_353:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = v40;
          v40 = (v123 >> 2) & 0xC0 | (v123 >> 6) & 0x30 | 0x100;
          goto LABEL_94;
        }
      }

      if ((v124[1] | 0x20) != 0x6E)
      {
        goto LABEL_345;
      }

      goto LABEL_344;
    }

    v112 = *v25;
    if ((*(v20 + 4 * v112) & 0x60000040) == 0)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v24 = 0;
LABEL_307:
      v46 = v40;
      v40 = 0;
      goto LABEL_93;
    }

    v113 = 0;
    v161 = v25 - __s;
    v152 = *(v29 + 1612);
    while (1)
    {
      if (v112 <= 0x2Eu)
      {
        if (v112 == 45)
        {
          if (*(v25 - 1) == 45)
          {
            v129 = v113 - 1;
            goto LABEL_297;
          }

          goto LABEL_261;
        }

        if (((1 << v112) & 0x100100000201) != 0)
        {
          goto LABEL_296;
        }

        if (v112 == 46)
        {
          break;
        }
      }

      if (v112 == 133 || v112 == 151)
      {
LABEL_296:
        v129 = v113;
        goto LABEL_297;
      }

LABEL_261:
      v178[v113] = v112;
      v114 = *++v25;
      LOBYTE(v112) = v114;
      ++v113;
    }

    v178[v113] = 46;
    v129 = v113 + 1;
LABEL_297:
    v143 = v129;
    v178[v129] = 0;
    v126 = PRIcs(a1, a2, 0, 0, 0, v178, 0, v29, 3, 0);
    if (v126 != 11)
    {
      if (v126 != 8)
      {
        if (*(v29 + 1614))
        {
          v161 = 0;
          v143 = 0;
          v115 = 0;
          v35 = *(a2 + 20);
          v47 = v159;
          v41 = v152;
          goto LABEL_269;
        }

        v127 = *v32;
        v115 = v32[6] & 0xF | (((v127 >> 8) & 3) << 6) | (v127 >> 6) & 0x30;
        v35 = *(a2 + 20);
        v41 = v152;
        if (v35 == 9)
        {
          v128 = *(v29 + 1547);
          if (v128 <= 0x66)
          {
            if (*(v29 + 1547) > 0x52u)
            {
              if (v128 != 83)
              {
                if (v128 != 88 && v128 != 90)
                {
                  goto LABEL_268;
                }

LABEL_347:
                v47 = v159;
LABEL_358:
                if ((v127 & 0x400) != 0)
                {
                  v115 |= 0x100u;
                }

LABEL_269:
                v44 = 0;
                if (v35 == 12 && v25)
                {
                  v116 = v25 - 1;
                  v44 = v25 - 1 - (v162[0] + v156);
                  v117 = v25 + 1;
                  do
                  {
                    v118 = v117;
                    v120 = *++v116;
                    v119 = v120;
                    ++v44;
                    ++v117;
                  }

                  while (v120 == 32);
                  if ((*(v20 + 4 * v119) & 0x60000040) != 0)
                  {
                    v121 = 0;
                    while (1)
                    {
                      if (v119 <= 0x2E)
                      {
                        if (v119 == 45)
                        {
                          if (*(v118 - 2) == 45)
                          {
                            goto LABEL_301;
                          }

                          goto LABEL_282;
                        }

                        if (((1 << v119) & 0x500100000201) != 0)
                        {
                          goto LABEL_301;
                        }
                      }

                      if (v119 == 133 || v119 == 151)
                      {
LABEL_301:
                        v46 = v40;
                        v40 = v115;
                        v42 = v161;
                        v43 = v143;
                        v45 = v121;
                        goto LABEL_94;
                      }

LABEL_282:
                      v178[v121++] = v119;
                      v122 = *v118++;
                      v119 = v122;
                    }
                  }

                  v44 = 0;
                  v45 = 0;
                }

                else
                {
                  v45 = 0;
                }

                v46 = v40;
                v40 = v115;
                v42 = v161;
                v43 = v143;
                goto LABEL_94;
              }

LABEL_356:
              v130 = *(v20 + 4 * *(v29 + 1548));
              if ((v130 & 0x60000040) == 0)
              {
                goto LABEL_268;
              }

              v47 = v159;
              if ((v130 & 0x10000000) != 0)
              {
                goto LABEL_269;
              }

              goto LABEL_358;
            }

            if (v128 != 71)
            {
              if (v128 != 80)
              {
                goto LABEL_268;
              }

LABEL_341:
              if ((*(v29 + 1548) | 0x20) != 0x73)
              {
                goto LABEL_268;
              }

              goto LABEL_347;
            }

            goto LABEL_346;
          }

          if (*(v29 + 1547) <= 0x72u)
          {
            if (v128 != 103)
            {
              if (v128 != 112)
              {
                goto LABEL_268;
              }

              goto LABEL_341;
            }

LABEL_346:
            if ((*(v29 + 1548) | 0x20) != 0x6E)
            {
              goto LABEL_268;
            }

            goto LABEL_347;
          }

          if (v128 == 115)
          {
            goto LABEL_356;
          }

          if (v128 == 120 || v128 == 122)
          {
            goto LABEL_347;
          }
        }

LABEL_268:
        v47 = v159;
        goto LABEL_269;
      }

LABEL_365:
      v131 = *(a1 + 32);
      *v131 = 0xDC000000A0;
      *(v131 + 8) = 900;
      return 220;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v24 = 0;
    v46 = v40;
    v40 = 0;
    v47 = v159;
    v41 = v152;
LABEL_94:
    v48 = 0;
    v49 = (v40 & 0xF) != 0;
    v147 = (v40 >> 8) & 1 | (2 * v49) | (v40 >> 2) & 0x3C;
    v138 = (v40 >> 8) & 1 | (2 * v49) & 0xF | (v40 >> 2) & 0xC;
    v139 = (v40 >> 2) & 0x30;
    v50 = (v46 & 0xF) != 0;
    v148 = (v46 >> 8) & 1 | (2 * v50) | (v46 >> 2) & 0x3C;
    v136 = v46;
    v137 = v40 & 0xC0;
    v134 = (v46 >> 8) & 1 | (2 * v50) & 0xF | (v46 >> 2) & 0xC;
    v145 = v46 & 0xF;
    v146 = v40 & 0x30;
    v51 = 1;
    v140 = 1 << ((v46 & 0xF) - 1);
    v141 = (v46 >> 2) & 0x30;
    v135 = v46 & 0x600;
    v157 = v45;
    v151 = v45 + v44;
    v142 = v43;
    v150 = v43 + v42;
    *v163 = v41;
    v52 = v42;
    v160 = v42;
    while (1)
    {
      v53 = *(a2 + 20);
      if (v53 == 12)
      {
        if (v48 || v157)
        {
          if (v48 == 2)
          {
            goto LABEL_117;
          }

          if (v48 == 3)
          {
LABEL_103:
            if ((v165 & 1) == 0)
            {
              goto LABEL_116;
            }

LABEL_117:
            v48 = 6;
            goto LABEL_118;
          }
        }

        else
        {
          v48 = 1;
        }
      }

      else
      {
        v54 = v48;
        if ((v48 & 0xFE) == 0)
        {
          v48 = 1;
        }

        if (v54 == 3 && v53 == 8)
        {
          goto LABEL_103;
        }
      }

      v55 = v48 == 1 && v52 == 0;
      if (v55)
      {
        v55 = v53 == 12;
        v56 = v165;
        if (v55)
        {
          v48 = 1;
        }

        else
        {
          v56 = 1;
          v48 = 2;
        }

        if ((v56 & 1) == 0)
        {
LABEL_116:
          v18 = *(v47 + 32);
          __strncpy_chk();
          v177[v18] = 0;
          SLfun(v177, 0, (v18 - 1), &v174 + 1, &v174);
          v48 = 6;
        }
      }

LABEL_118:
      if (v164)
      {
        if ((v48 & 0xF8) == 0)
        {
          v48 = 7;
        }
      }

      else
      {
        v57 = v165;
        if (v48 <= 1u)
        {
          v57 = 0;
        }

        if (v48 > 6u || (v57 & 1) != 0)
        {
          goto LABEL_247;
        }
      }

      if (v48 <= 4u)
      {
        break;
      }

      if (v48 > 6u)
      {
        if (v48 == 7)
        {
          if (v165)
          {
            goto LABEL_239;
          }

          v72 = *(v47 + 32);
          __strncpy_chk();
          v177[v72] = 32;
          v73 = (v72 + 1);
        }

        else
        {
          v73 = 0;
        }

        if (v163[0])
        {
          v81 = &v177[v73];
          v82 = *v163;
          v83 = __s;
          do
          {
            v84 = *v83++;
            *v81++ = ((*(v7 + 4 * v84) >> 25) & 0x20) + v84;
            --v82;
          }

          while (v82);
        }

        v18 = (v163[0] + v73);
        v177[(LOWORD(v163[0]) + v73)] = 0;
        SLfun(v177, 0, (LOWORD(v163[0]) + v73 - 1), &v174 + 1, &v174);
        result = PRAltHsh(HIWORD(v174), v174, v18, v48, a1, a2, v173, v176);
        if (result)
        {
          return result;
        }

        if (*v173)
        {
          v85 = **v173;
          v86 = *(*v173 + 1);
          if (*(a2 + 20) == 9)
          {
            v87 = *(*v173 + 2);
            v88 = (*v173 + 3);
            *v173 += 3;
            v89 = v147;
            if ((v139 & v85) == 0x30)
            {
              v89 = v86 & 0x30 | v138;
            }

            if ((~(v85 & v89) & 0xC) == 0)
            {
              v90 = v86 & 0xC;
              if ((v86 & 0xC) != 0 && v90 != 12)
              {
                v89 = v89 & 0xFFFFFFF3 | v90;
              }

              else if (v47 && v48 == 6 && (v91 = *(v47 + 98), (v91 & 0x10) != 0) && !(v91 & 0x20 | v86 & 1))
              {
                v89 &= 0xFFFFFFF3;
              }

              else
              {
                v89 &= ~8u;
              }
            }
          }

          else
          {
            v88 = (*v173 + 2);
            *v173 += 2;
            v87 = v86;
            v89 = v147;
          }

          if (v87)
          {
            v107 = v89 & v85;
            while (1)
            {
              v108 = *v88;
              if (v107 == v108)
              {
                break;
              }

              ++v88;
              if (v108)
              {
                  ;
                }
              }

              if (!--v87)
              {
                goto LABEL_231;
              }
            }

            v80 = (v88 + 1);
            *v173 = v88 + 1;
LABEL_263:
            result = PRSetTmpAlt(v163[0], 0, 0, 0, 0, __s, v80, v48, v17, v149, v47, v175, &v171, &v169, &v168, a1, a2);
LABEL_264:
            v58 = v18;
            if (result)
            {
              return result;
            }

            goto LABEL_265;
          }

LABEL_231:
          *v173 = v88;
        }
      }

      else
      {
        if (v48 != 5)
        {
          goto LABEL_187;
        }

        v64 = *(v47 + 32);
        v18 = v64;
        __strncpy_chk();
        v177[v64] = 0;
        SLfun(v177, 0, (v64 - 1), &v174 + 1, &v174);
        result = PRAltHsh(HIWORD(v174), v174, v64, 5, a1, a2, v173, v176);
        if (result)
        {
          return result;
        }

        if (!*v173)
        {
          goto LABEL_213;
        }

        v52 = v160;
        if (v145)
        {
          v66 = **v173;
          if (((*(*v173 + 1) | (v66 << 8)) & v140) != 0)
          {
            v67 = v66;
            v68 = (v66 >> 6) & 1;
            v69 = v135 ? 0 : v68;
            v70 = (v136 & 0x200) == 0 && v67 < 0;
            v71 = v70;
            if ((v69 & 1) == 0 && !v71)
            {
              *v173 += 2;
              result = PRSetTmpAlt(v163[0], 0, 0, 0, 0, __s, *v173, 5u, v17, v149, v47, v175, &v171, &v169, &v168, a1, a2);
              goto LABEL_264;
            }
          }
        }
      }

LABEL_239:
      if (++v48 > 8u || !v51)
      {
        goto LABEL_247;
      }
    }

    if (v48 > 2u)
    {
      if (v48 != 3)
      {
        if (!v149)
        {
          goto LABEL_239;
        }

        v92 = *(v149 + 32);
        __strncpy_chk();
        v177[v92] = 32;
        strncpy(&v177[(v92 + 1)], *(v159 + 16), *(v159 + 32));
        v93 = *(v159 + 32);
        v94 = (v93 + v92 + 1);
        v177[(v93 + v92 + 1)] = 0;
        SLfun(v177, 0, (v93 + v92), &v174 + 1, &v174);
        v18 = v94;
        v47 = v159;
LABEL_187:
        result = PRAltHsh(HIWORD(v174), v174, v18, v48, a1, a2, v173, v176);
        if (result)
        {
          return result;
        }

        v95 = *(a2 + 20);
        if (*v173)
        {
          v96 = **v173;
          v97 = *(*v173 + 1);
          v52 = v160;
          if (v95 == 9)
          {
            v98 = *(*v173 + 2);
            v99 = (*v173 + 3);
            *v173 += 3;
            v100 = v148;
            if ((v141 & v96) == 0x30)
            {
              if (v137 == 192 || (v100 = v134 | (v137 >> 2), !v137))
              {
                v100 = v97 & 0x30 | v134;
              }
            }

            if ((~(v96 & v100) & 0xC) == 0)
            {
              if (v146 && v146 != 48)
              {
                v100 = v100 & 0xFFFFFFF3 | (v146 >> 2);
              }

              else
              {
                v101 = v97 & 0xC;
                if ((v97 & 0xC) != 0 && v101 != 12)
                {
                  v100 = v100 & 0xFFFFFFF3 | v101;
                }

                else if (v149 && v48 == 6 && (v102 = *(v149 + 98), (v102 & 0x20) == 0) && ((v97 & 1) == 0 || (v102 & 0x40) != 0) && (v102 & 0x30) != 0 && (v102 & 0x30) != 0x30)
                {
                  v100 &= 0xFFFFFFF3;
                }

                else
                {
                  v100 &= ~8u;
                }
              }
            }
          }

          else
          {
            v99 = (*v173 + 2);
            *v173 += 2;
            v98 = v97;
            v100 = v148;
          }

          if (v98)
          {
            v104 = v100 & v96;
            while (1)
            {
              v105 = *v99;
              if (v104 == v105)
              {
                break;
              }

              ++v99;
              if (v105)
              {
                  ;
                }
              }

              if (!--v98)
              {
                goto LABEL_223;
              }
            }

            *v173 = v99 + 1;
            result = PRSetTmpAlt(v163[0], 0, 0, 0, 0, __s, v99 + 1, v48, v17, v149, v47, v175, &v171, &v169, &v168, a1, a2);
            if (result)
            {
              return result;
            }

            v51 = 0;
            v95 = *(a2 + 20);
            v155 = 1;
          }

          else
          {
LABEL_223:
            *v173 = v99;
          }
        }

        else
        {
          v52 = v160;
        }

        v110 = v95 == 12;
        v111 = v155;
        if (v110)
        {
          v111 = 1;
        }

        v155 = v111;
        if (v110)
        {
          v51 = 0;
        }

        goto LABEL_239;
      }

      if (!v24 || !v146 || v146 == 48)
      {
        goto LABEL_239;
      }

      goto LABEL_165;
    }

    if (v48 >= 2u)
    {
      v74 = *(v47 + 32);
      __strncpy_chk();
      v177[v74] = 32;
      v75 = v74 + 1;
      if (v163[0])
      {
        v76 = &v177[v75];
        v77 = *v163;
        v78 = __s;
        do
        {
          v79 = *v78++;
          *v76++ = ((*(v7 + 4 * v79) >> 25) & 0x20) + v79;
          --v77;
        }

        while (v77);
      }

      v18 = (v75 + v163[0]);
      SLfun(v177, 0, (v74 + LOWORD(v163[0])), &v174 + 1, &v174);
      v52 = v160;
LABEL_165:
      result = PRAltHsh(HIWORD(v174), v174, v18, v48, a1, a2, v173, v176);
      if (result)
      {
        return result;
      }

      v80 = *v173;
      if (*v173)
      {
        goto LABEL_263;
      }

      goto LABEL_239;
    }

    if (v48)
    {
      v58 = v150;
    }

    else
    {
      v58 = v151;
    }

    if (v58)
    {
      v59 = v58;
      v60 = v177;
      v61 = v58;
      v62 = __s;
      do
      {
        v63 = *v62++;
        *v60++ = ((*(v7 + 4 * v63) >> 25) & 0x20) + v63;
        --v61;
      }

      while (v61);
    }

    else
    {
      v59 = 0;
    }

    v177[v59] = 0;
    SLfun(v177, 0, (v58 - 1), &v174 + 1, &v174);
    result = PRAltHsh(HIWORD(v174), v174, v58, 2 * (v48 != 0), a1, a2, v173, v176);
    if (result)
    {
      return result;
    }

    v103 = *v173;
    if (!*v173)
    {
      v18 = v58;
      v47 = v159;
      goto LABEL_239;
    }

    if (v48 <= 1u && !SLstrcmp(*v173, *(*(v144 + 16) + 16)))
    {
      v18 = v58;
      v47 = v159;
LABEL_213:
      v52 = v160;
      goto LABEL_239;
    }

    result = PRSetTmpAlt(v163[0], v160, v142, v44, v157, __s, v103, v48, v17, v149, v159, v175, &v171, &v169, &v168, a1, a2);
    if (result)
    {
      return result;
    }

LABEL_265:
    ++v17;
    v155 = 1;
    v18 = v58;
    v11 = v153;
    if (v17 != v154)
    {
      continue;
    }

    break;
  }

LABEL_361:
  result = PRProcTmpAlts(v149, v159, v175, &v171, &v169, v168, v132, a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t PRAltHsh(int a1, int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6, char **a7, char *a8)
{
  *a7 = 0;
  v8 = *(a6 + 120);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v40 = 0;
  v11 = *(v8 + 2);
  v38 = *(v8 + 3);
  v12 = *(a6 + 40);
  v13 = *v8;
  v14 = *(v8 + 1);
  v15 = v8[1];
  v16 = v8[4];
  v17 = a2 % v13;
  v36 = a3;
  v37 = *(v8 + 3);
  v18 = 2 * (v14 & a1);
  v19 = (v14 & a1) + (v14 >> 1) + v13;
  v35 = a4;
  v33 = a2;
  v34 = v18;
  while (1)
  {
    v20 = 4 * v17;
    v21 = *(v11 + v20);
    v22 = (v11 + v20);
    v23 = v22[1] | (v21 << 8);
    if (!v23)
    {
LABEL_17:
      v27 = 0;
LABEL_18:
      result = 0;
      *a7 = v27;
      return result;
    }

    if (v23 == a1)
    {
      break;
    }

LABEL_14:
    v17 += v19;
    do
    {
      v17 -= v13;
    }

    while (v17 >= v13);
    v26 = v15 >= v10++;
    v19 += v18;
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  v24 = v22[3] | (v22[2] << 8);
  if (v24 < v16)
  {
    v25 = v38;
    goto LABEL_11;
  }

  if (SLSeek(v12, v37 + v24, 0) != 8)
  {
    if (SLFRead(v12, 128, a8, &v40) == 8 || v40 <= 2)
    {
      v29 = *(a5 + 32);
      v30 = 0xDC00000070;
      goto LABEL_22;
    }

    v24 = 0;
    v25 = a8;
    v18 = v34;
    a4 = v35;
LABEL_11:
    if (v25[v24] == a4 && v25[v24 + 1] == v36 && v25[(v24 + 2)] == v33)
    {
      v27 = &v25[(v24 + 3)];
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v29 = *(a5 + 32);
  v30 = 0xDC0000006FLL;
LABEL_22:
  *v29 = v30;
  *(v29 + 8) = 920;
  return 220;
}

uint64_t PRSetTmpAlt(int a1, int a2, int a3, int a4, int a5, char *__s, const char *a7, unsigned int a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _WORD *a15, uint64_t a16, uint64_t a17)
{
  v22 = *(a17 + 8);
  v69 = strlen(__s);
  v23 = strlen(a7);
  v24 = 0;
  if (a8 != 4 && a10)
  {
    v24 = *(a10 + 48) + *(a10 + 32);
  }

  if (a11 && a8 <= 8 && ((1 << a8) & 0x103) != 0)
  {
    v24 += *(a11 + 32) + *(a11 + 48);
  }

  v25 = __s;
  if (a8 < 2)
  {
    goto LABEL_25;
  }

  v25 = __s;
  if (a8 == 8)
  {
    goto LABEL_25;
  }

  if (a8 != 4)
  {
    *(a14 + 2 * a9) = 1;
    if (!*a15)
    {
      *a15 = 1;
    }

    v25 = *(a11 + 24);
LABEL_25:
    v29 = 0;
    v28 = *(v22 + 4 * *v25);
    v34 = 1;
    goto LABEL_26;
  }

  *(a14 + 2 * a9) = 2;
  if (*a15 <= 1u)
  {
    *a15 = 2;
  }

  v26 = *(a10 + 24);
  v27 = *v26;
  v28 = *(v22 + 4 * *v26);
  v29 = 0;
  if (*v26)
  {
    v30 = v26 + 1;
    do
    {
      v31 = *(v22 + 4 * v27);
      if ((v31 & 0x60000040) != 0)
      {
        ++v29;
      }

      v32 = *v30++;
      v27 = v32;
      if (v32)
      {
        v33 = (v31 & 0x20000000) == 0;
      }

      else
      {
        v33 = 0;
      }
    }

    while (v33);
    v34 = (v31 & 0x20000000) == 0;
LABEL_26:
    v35 = (v28 >> 30) & 1;
    if (a8 <= 8 && ((1 << a8) & 0x103) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

  v35 = (v28 >> 30) & 1;
  v34 = 1;
LABEL_73:
  v48 = *(a11 + 24);
  v49 = *v48;
  if (*v48)
  {
    v50 = !v34;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    v51 = v48 + 1;
    do
    {
      v52 = *(v22 + 4 * v49);
      if ((v52 & 0x60000040) != 0)
      {
        ++v29;
      }

      v53 = *v51++;
      v49 = v53;
      if (v53)
      {
        v54 = (v52 & 0x20000000) == 0;
      }

      else
      {
        v54 = 0;
      }
    }

    while (v54);
    if ((v52 & 0x20000000) != 0)
    {
      v34 = 0;
    }
  }

LABEL_28:
  if (a8 - 7 <= 0xFFFFFFFC)
  {
    if (a1 && v34)
    {
      v36 = __s + 1;
      do
      {
        v37 = *(v22 + 4 * *(v36 - 1));
        if ((v37 & 0x60000040) != 0)
        {
          ++v29;
        }

        if (v36 >= &__s[a1])
        {
          break;
        }

        ++v36;
      }

      while ((v37 & 0x20000000) == 0);
      if ((v37 & 0x20000000) != 0)
      {
        v34 = 0;
      }
    }

    if (a8 <= 1)
    {
      if (a3 && v34)
      {
        v38 = &__s[a2 + 1];
        do
        {
          v39 = *(v22 + 4 * *(v38 - 1));
          if ((v39 & 0x60000040) != 0)
          {
            ++v29;
          }

          if (v38 >= &__s[a2 + a3])
          {
            break;
          }

          ++v38;
        }

        while ((v39 & 0x20000000) == 0);
        if ((v39 & 0x20000000) != 0)
        {
          v34 = 0;
        }
      }

      if (!a8)
      {
        if (!a5 || !v34)
        {
          v45 = a5;
          v44 = a12;
          v42 = (v29 & 0xFFFE) != 0 && v34;
          goto LABEL_90;
        }

        v40 = &__s[a4 + 1];
        do
        {
          v41 = *(v22 + 4 * *(v40 - 1));
          if ((v41 & 0x60000040) != 0)
          {
            ++v29;
          }

          if (v40 >= &__s[a4 + a5])
          {
            break;
          }

          ++v40;
        }

        while ((v41 & 0x20000000) == 0);
        if ((v41 & 0x20000000) != 0)
        {
          LOBYTE(v34) = 0;
        }
      }
    }

    v42 = (v29 & 0xFFFE) != 0 && v34;
    if (a8 - 4 < 3)
    {
      v43 = 0;
      v44 = a12;
      goto LABEL_92;
    }

    if (a8 == 1)
    {
      v44 = a12;
      v46 = a2;
      v45 = a3;
LABEL_91:
      v43 = v45 + v46;
      goto LABEL_92;
    }

    if (a8)
    {
      v44 = a12;
      if (a7[v23 - 1] == 39)
      {
        do
        {
          v43 = a1;
          v47 = __s[a1++];
        }

        while (v47 == 32);
      }

      else
      {
        v43 = a1;
      }

      goto LABEL_92;
    }

    v45 = a5;
    v44 = a12;
LABEL_90:
    v46 = a4;
    goto LABEL_91;
  }

  v44 = a12;
  v43 = 0;
  v42 = (v29 & 0xFFFE) != 0 && v34;
LABEL_92:
  v55 = v23;
  v56 = malloc_type_malloc((v69 + v23 + v24 - v43 + 2), 0x332DD651uLL);
  *(v44 + 8 * a9) = v56;
  if (v56)
  {
    LOBYTE(v57) = *a7;
    if (*a7)
    {
      v58 = 0;
      do
      {
        if (v58)
        {
          v59 = 0;
        }

        else
        {
          v59 = v35;
        }

        if ((v42 || v59) && (*(v22 + 4 * v57) & 0x20000000) != 0)
        {
          LOBYTE(v57) = v57 - 32;
        }

        v56[v58] = v57;
        v57 = a7[++v58];
      }

      while (v57);
      v56 += v58;
    }

    if (a7[v55 - 1] != 39 && (a8 - 9 > 0xFFFFFFFD || !v43))
    {
      *v56++ = 32;
    }

    v60 = __s[v43];
    if (v60)
    {
      v61 = &__s[v43 + 1];
      do
      {
        *v56++ = v60;
        v62 = *v61++;
        v60 = v62;
      }

      while (v62);
    }

    v63 = 0;
    *v56 = 0;
    *(a13 + 2 * a9) = v56 - *(v44 + 8 * a9);
  }

  else
  {
    v64 = *(a16 + 32);
    *v64 = 0xDC00000078;
    *(v64 + 8) = 880;
    return 220;
  }

  return v63;
}

uint64_t PRProcTmpAlts(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a7 + 24);
  v11 = *(v10 + 18);
  if (!a6)
  {
    if (*(v10 + 18))
    {
      v14 = 0;
      v12 = 0;
      goto LABEL_10;
    }

LABEL_34:
    v28 = 1;
LABEL_35:
    *(v10 + 18) = 0;
    *(v10 + 24) = 0;
    if (*(v10 + 16))
    {
      v29 = 0;
      v30 = *(v10 + 8);
      do
      {
        *(v30 + 2 * v29++) = -1;
      }

      while (v29 < *(v10 + 16));
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (a6 == 2)
  {
    v12 = *(a1 + 48) + *(a1 + 32);
    v13 = a1;
  }

  else
  {
    v12 = 0;
    v13 = a2;
  }

  v14 = *(a2 + 48) + *(a2 + 32);
  v15 = *(v13 + 8);
  *(a7 + 2) += *a7 - v15;
  *a7 = v15;
  if (*(a7 + 6))
  {
    *(a7 + 6) = *(a7 + 6) - v15 + *(a7 + 4);
    *(a7 + 4) = v15;
  }

  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_10:
  v16 = 0;
  v17 = v12;
  v18 = v14;
  v19 = v12 + v14 + 1;
  do
  {
    if (!a3[v16])
    {
      v20 = *v10;
      v21 = *(*(v10 + 8) + 2 * v16);
      v22 = strlen((*v10 + v21));
      *(a4 + 2 * v16) = v22;
      v23 = malloc_type_malloc(v19 + v22, 0x810CC398uLL);
      a3[v16] = v23;
      if (!v23)
      {
        v33 = *(a8 + 32);
        *v33 = 0xDC00000078;
        *(v33 + 8) = 860;
        return 220;
      }

      strcpy(v23, &v20[v21]);
    }

    ++v16;
  }

  while (v11 != v16);
  if (a6)
  {
    v24 = 0;
    do
    {
      if (!*(a5 + 2 * v24))
      {
        v25 = *(a4 + 2 * v24);
        if ((v25 & 0x8000000000000000) == 0)
        {
          do
          {
            a3[v24][v25 + v18] = a3[v24][v25];
            --v25;
          }

          while (v25 != -1);
        }

        strncpy(a3[v24], *(a2 + 24), *(a2 + 32));
        if (*(a2 + 48))
        {
          strncpy(&a3[v24][*(a2 + 32)], *(a2 + 40), *(a2 + 48));
        }

        *(a4 + 2 * v24) += v18;
      }

      ++v24;
    }

    while (v24 != v11);
    if (a6 != 1)
    {
      v26 = 0;
      do
      {
        if (*(a5 + 2 * v26) <= 1u)
        {
          v27 = *(a4 + 2 * v26);
          if ((v27 & 0x8000000000000000) == 0)
          {
            do
            {
              a3[v26][v27 + v17] = a3[v26][v27];
              --v27;
            }

            while (v27 != -1);
          }

          strncpy(a3[v26], *(a1 + 24), *(a1 + 32));
          if (*(a1 + 48))
          {
            strncpy(&a3[v26][*(a1 + 32)], *(a1 + 40), *(a1 + 48));
          }
        }

        ++v26;
      }

      while (v26 != v11);
    }
  }

  if (v10)
  {
    v28 = 0;
    goto LABEL_35;
  }

LABEL_39:
  while (1)
  {
    result = PRaddList(v10, *a3, 1, 0);
    if (result)
    {
      break;
    }

    v32 = *a3++;
    free(v32);
    if (!--v11)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PRapp(unsigned __int8 *a1, int a2, int a3)
{
  v3 = sXXMutex++;
  if (!a1)
  {
    sXXMutex = v3;
    return 230;
  }

  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 10) = 0;
  if (bInitXXMtx)
  {
    byte_1ED7D7422 = 0;
    bInitXXMtx = 0;
    SLInitMutex("XXAPPMUTEX", &stru_1ED7D7430);
  }

  if (SLLockMutex(&stru_1ED7D7430))
  {
    --sXXMutex;
    return 220;
  }

  if (a2 == 4)
  {
    v11 = PRGetAppElem(*a1);
    if (v11)
    {
      if (a3 == 2048)
      {
        *(v11 + 28) = (a1[4] & 1) == 0;
LABEL_24:
        --sXXMutex;
        SLUnlockMutex(&stru_1ED7D7430);
        return 0;
      }

      --sXXMutex;
      SLUnlockMutex(&stru_1ED7D7430);
      v12 = 0xE6FFFFFF94;
    }

    else
    {
      --sXXMutex;
      SLUnlockMutex(&stru_1ED7D7430);
      v12 = 0xE6FFFFFF93;
    }

LABEL_32:
    *(a1 + 12) = v12;
    *(a1 + 10) = 400;
    return 230;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v8 = pSystem;
      if (pSystem)
      {
        v9 = *pSystem;
        if (*(pSystem + 1) >= v9)
        {
          v10 = ExpandSystem(a1, pSystem);
          if (v10)
          {
            v7 = v10;
LABEL_55:
            --sXXMutex;
            SLUnlockMutex(&stru_1ED7D7430);
            return v7;
          }

          v8 = pSystem;
          v9 = *pSystem;
          if (!*pSystem)
          {
LABEL_41:
            *a1 = v9;
            v16 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A00404A9DB07BuLL);
            *(v8[1] + 8 * v9) = v16;
            if (v16)
            {
              ++*(v8 + 1);
              v17 = *(v8[1] + 8 * v9);
              v18 = malloc_type_calloc(1uLL, 0x898uLL, 0x1090040C1876833uLL);
              if (v18)
              {
                v19 = v18;
                *v18 = 15;
                if (ICpd(0, v18) == 8)
                {
                  FreeAppElem(v8, a1);
                  v20 = 713;
                  v7 = 230;
LABEL_54:
                  *(a1 + 3) = v20;
                  *(a1 + 4) = v7;
                  *(a1 + 10) = 400;
                  goto LABEL_55;
                }

                *(v17 + 88) = *(v19 + 1);
                free(v19);
                v21 = malloc_type_calloc(4uLL, 8uLL, 0x2004093837F09uLL);
                *v17 = v21;
                if (v21)
                {
                  *(v17 + 8) = 4;
                  *(v17 + 28) = (a1[4] & 1) == 0;
                  v22 = malloc_type_calloc(1uLL, 0x58uLL, 0x103004048D29B9DuLL);
                  *(v17 + 16) = v22;
                  if (v22)
                  {
                    v23 = malloc_type_calloc(0x10uLL, 6uLL, 0x1000040274DC3F3uLL);
                    *(v17 + 40) = v23;
                    if (v23)
                    {
                      *(v17 + 48) = 0;
                      *(a1 + 2) &= 0x10u;
                      goto LABEL_24;
                    }
                  }
                }

                FreeAppElem(v8, a1);
              }
            }

            else
            {
              CheckSystem();
            }

            v20 = 120;
            v7 = 220;
            goto LABEL_54;
          }
        }

LABEL_36:
        v15 = 0;
        while (*(v8[1] + 8 * v15))
        {
          if (v9 == ++v15)
          {
            goto LABEL_41;
          }
        }

        v9 = v15;
        goto LABEL_41;
      }

      pSystem = malloc_type_calloc(1uLL, 0x10uLL, 0x1080040EF48E34EuLL);
      if (pSystem)
      {
        v9 = 4;
        v13 = malloc_type_calloc(4uLL, 8uLL, 0x2004093837F09uLL);
        v8 = pSystem;
        *(pSystem + 8) = v13;
        if (v13)
        {
          *v8 = 4;
          goto LABEL_36;
        }

        free(v8);
        pSystem = 0;
      }

      *(a1 + 12) = 0xDC00000078;
      *(a1 + 10) = 400;
      --sXXMutex;
      SLUnlockMutex(&stru_1ED7D7430);
      return 220;
    }

    --sXXMutex;
    SLUnlockMutex(&stru_1ED7D7430);
    v12 = 0xE6FFFFFF95;
    goto LABEL_32;
  }

  if (!pSystem || *a1 >= *pSystem || !*(*(pSystem + 8) + 8 * *a1))
  {
    --sXXMutex;
    SLUnlockMutex(&stru_1ED7D7430);
    *(a1 + 12) = 0xE6FFFFFF93;
    *(a1 + 10) = 400;
    return 220;
  }

  v7 = FreeAppElem(pSystem, a1);
  --sXXMutex;
  SLUnlockMutex(&stru_1ED7D7430);
  if (!pSystem && !sXXMutex)
  {
    SLTermMutex(&stru_1ED7D7430);
    byte_1ED7D7422 = 1;
    bInitXXMtx = 1;
  }

  return v7;
}

uint64_t ExpandSystem(uint64_t a1, unsigned __int8 *a2)
{
  v4 = malloc_type_calloc(*a2 + 4, 8uLL, 0x2004093837F09uLL);
  if (v4)
  {
    v5 = v4;
    memcpy(v4, *(a2 + 1), 8 * *a2);
    free(*(a2 + 1));
    result = 0;
    *(a2 + 1) = v5;
    *a2 += 4;
  }

  else
  {
    *(a1 + 12) = 0xDC00000078;
    *(a1 + 20) = 400;
    return 220;
  }

  return result;
}

uint64_t FreeAppElem(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(*(a1 + 8) + 8 * v4);
  v6 = *(v5 + 90);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 56 + 8 * v7);
      if (v8)
      {
        free(v8[97]);
        free(v8);
        v6 = *(v5 + 90) - 1;
        *(v5 + 90) = v6;
      }

      if (!v6)
      {
        break;
      }
    }

    while (v7++ < 3);
  }

  if (*(v5 + 88))
  {
    v10 = malloc_type_calloc(1uLL, 0x898uLL, 0x1090040C1876833uLL);
    if (!v10)
    {
      *(a2 + 12) = 0xDC00000078;
      *(a2 + 10) = 400;
      return 220;
    }

    v11 = v10;
    *v10 = 16;
    *(v10 + 1) = *(v5 + 88);
    if (ICpd(0, v10) == 8)
    {
      *(a2 + 12) = 0xE6000002C9;
      *(a2 + 10) = 400;
      return 230;
    }

    free(v11);
  }

  v13 = *(v5 + 16);
  if (v13)
  {
    PRssClr(v13);
    free(*(v5 + 16));
  }

  v14 = *(v5 + 9);
  if (v14)
  {
    v15 = 0;
    do
    {
      if (v15 >= *(v5 + 8))
      {
        break;
      }

      v16 = *(*v5 + 8 * v15);
      if (v16)
      {
        PRDbTerm(v5, *(*v5 + 8 * v15));
        free(v16);
        v14 = *(v5 + 9) - 1;
        *(v5 + 9) = v14;
      }

      ++v15;
    }

    while (v14);
  }

  if (*v5)
  {
    free(*v5);
  }

  v17 = *(v5 + 40);
  if (v17)
  {
    free(v17);
  }

  free(v5);
  *(*(a1 + 8) + 8 * v4) = 0;
  --*(a1 + 1);
  CheckSystem();
  return 0;
}

void CheckSystem()
{
  if (!*(pSystem + 1))
  {
    free(*(pSystem + 8));
    free(pSystem);
    pSystem = 0;
  }
}

uint64_t PRGetAppElem(unsigned int a1)
{
  ++sXXMutex;
  if (SLLockMutex(&stru_1ED7D7430))
  {
    v2 = 0;
  }

  else
  {
    if (pSystem && *pSystem > a1)
    {
      v2 = *(*(pSystem + 8) + 8 * a1);
    }

    else
    {
      v2 = 0;
    }

    SLUnlockMutex(&stru_1ED7D7430);
  }

  --sXXMutex;
  return v2;
}

uint64_t PRbuf(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 230;
  }

  v4 = a2;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v5 = a1 + 64;
  *(a1 + 72) = 0;
  v6 = *(a1 + 40);
  if (a2 == 17)
  {
    if (v6)
    {
      do
      {
        v7 = *(v6 + 40);
        PRfreeErr(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = 0;
    *(a1 + 40) = 0;
    return v8;
  }

  v10 = PRGetAppElem(*(a1 + 8));
  if (!v10)
  {
    v14 = 0xE6FFFFFF93;
LABEL_84:
    *(a1 + 64) = v14;
    *(a1 + 72) = 480;
    return 230;
  }

  v11 = v10;
  *(v10 + 32) = v5;
  *(v10 + 24) = 0;
  v12 = *(v10 + 16);
  switch(v4)
  {
    case 12:
      v13 = 50;
      break;
    case 13:
      v13 = -106;
      break;
    case 14:
      v13 = -1;
      break;
    default:
      v14 = 0xE6FFFFFF95;
      goto LABEL_84;
  }

  *(v10 + 26) = v13;
  if (v4 == 12)
  {
    v15 = (a3 >> 3) & 1;
  }

  else
  {
    v15 = 0;
  }

  *(v10 + 27) = *(a1 + 60);
  v16 = PRGetDbElem(*(a1 + 8), *(a1 + 9));
  if (!v16)
  {
    v14 = 0xE6FFFFFF92;
    goto LABEL_84;
  }

  v17 = v16;
  v66[0] = 0;
  if ((v15 & 1) == 0 && (*v16 & 0x20) != 0)
  {
    v14 = 0xE6FFFFFF84;
    goto LABEL_84;
  }

  v18 = *(v16 + 23) || *(v16 + 24) || *(v16 + 25) || *(v16 + 26) != 0;
  v65 = v18;
  if (*(a1 + 10))
  {
    v19 = v15;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (v6)
    {
      do
      {
        v20 = *(v6 + 40);
        PRfreeErr(v6);
        v6 = v20;
      }

      while (v20);
    }

    v21 = 0;
    v22 = 0;
    *(v11 + 48) = 0;
    goto LABEL_77;
  }

  v23 = 0;
  if (v6)
  {
    v24 = *(v16 + 48);
    while (*(v6 + 64))
    {
      if (*(v6 + 64) != 1)
      {
        if (!BinarySearch(*(v24 + 328), *(v24 + 336), 1, *(v6 + 12), 1, v66))
        {
          break;
        }

        *(v6 + 13) = 0;
      }

      v25 = *(v6 + 40);
      if (!v23)
      {
        *(v6 + 40) = 0;
LABEL_47:
        v23 = v6;
        goto LABEL_48;
      }

      v26 = *(v23 + 12);
      v27 = v23;
      v28 = v23;
      while (*(v6 + 12) >= v26)
      {
        v28 = v27;
        v27 = *(v27 + 40);
        if (!v27)
        {
          break;
        }

        v26 = *(v27 + 12);
      }

      *(v6 + 40) = v27;
      if (v27 == v23)
      {
        goto LABEL_47;
      }

      *(v28 + 40) = v6;
LABEL_48:
      v6 = v25;
      if (!v25)
      {
        goto LABEL_49;
      }
    }

    v25 = *(v6 + 40);
    PRfreeErr(v6);
    goto LABEL_48;
  }

LABEL_49:
  v29 = *(v11 + 48);
  v22 = *(v11 + 40);
  __memcpy_chk();
  v31 = 0;
  v32 = v23;
  v33 = 0;
  if (v23 && v29)
  {
    v33 = 0;
    v31 = 0;
    v32 = v23;
    do
    {
      v34 = *(v32 + 12);
      v35 = LOBYTE(v66[((3 * v31) & 0x7F) + 2]);
      if (v34 >= v35)
      {
        if (v33 <= 0xFu)
        {
          v39 = &v66[((3 * v31) & 0x7F) + 1];
          v40 = *(v39 + 5);
          LOWORD(v39) = *(v39 + 3);
          v41 = v22 + 6 * v33;
          *(v41 + 2) = v35;
          *v41 = v35;
          *(v41 + 3) = v39;
          *(v41 + 1) = 0;
          *(v41 + 5) = v40;
        }

        ++v31;
      }

      else
      {
        if (v33 <= 0xFu)
        {
          v36 = *(v32 + 13);
          v37 = *(v32 + 66);
          v38 = (v22 + 6 * v33);
          v38[2] = v34;
          *v38 = v34;
          v38[4] = v37;
          v38[3] = v36;
          v38[1] = 0;
          v38[5] = -1;
        }

        v32 = *(v32 + 40);
      }

      ++v33;
    }

    while (v32 && v29 > v31);
  }

  for (; v32; ++v33)
  {
    if (v33 <= 0xFu)
    {
      v42 = *(v32 + 13);
      v43 = *(v32 + 66);
      v44 = *(v32 + 12);
      v45 = (v22 + 6 * v33);
      v45[2] = v44;
      *v45 = v44;
      v45[4] = v43;
      v45[3] = v42;
      v45[1] = 0;
      v45[5] = -1;
    }

    v32 = *(v32 + 40);
  }

  v46 = v29 - v31;
  if (v29 <= v31)
  {
    v21 = v33;
  }

  else
  {
    v47 = 6 * v31;
    v21 = v33;
    do
    {
      if (v21 <= 0xFu)
      {
        v30.i32[0] = *(&v66[2] + (v47 & 0xFE));
        v48 = v22 + 6 * v21;
        *v48 = vmovl_u8(v30).u8[0];
        *(v48 + 1) = 0;
        *(v48 + 2) = v30.i32[0];
      }

      ++v21;
      v47 += 6;
      --v46;
    }

    while (v46);
  }

  if (v23)
  {
    do
    {
      v49 = *(v23 + 40);
      PRfreeErr(v23);
      v23 = v49;
    }

    while (v49);
  }

LABEL_77:
  *(a1 + 40) = 0;
  if (!*(v17 + 26))
  {
    *(v17 + 26) = 61;
  }

  if (v15)
  {
    return PRfastSpell(v11, v17, a1);
  }

  v51 = *(v12 + 18);
  PRssClr(v12);
  v52 = *(a1 + 14);
  v53 = *(a1 + 12);
  if (v52 > v53)
  {
    v14 = 0xE6FFFFFF85;
    goto LABEL_84;
  }

  if (v52 == v53)
  {
    *(a1 + 16) = 0;
    return 200;
  }

  v55 = PRss(*a1, v52, v11, v17, *(a1 + 32), *(a1 + 10) & 1, (*(a1 + 10) & 0x20) != 0);
  if (!v55)
  {
    if ((*(a1 + 10) & 1) != 0 && v21)
    {
      v56 = *(v12 + 18) - v51;
      if (!v56)
      {
        LOBYTE(v56) = 0;
      }

      if ((v21 & 0xF0) != 0)
      {
        v57 = 16;
      }

      else
      {
        v57 = v21;
      }

      v58 = (v22 + 5);
      do
      {
        *v58 = v56 - (*v58 == 255);
        v58 += 6;
        --v57;
      }

      while (v57);
    }

    if (v21)
    {
      *(v11 + 48) = v21;
    }

    *(a1 + 16) = *(v12 + 20);
    v59 = *(v12 + 56);
    if (v59)
    {
      v60 = PRIcsTokWalk(v59, v11, v17, *(a1 + 61));
      if (v60)
      {
LABEL_107:
        v8 = v60;
LABEL_108:
        PRssClr(v12);
        return v8;
      }

      if ((v4 - 12) <= 2)
      {
        if ((v4 - 13) <= 1)
        {
          if (*(v12 + 2) == 2)
          {
            v61 = *(v17 + 20);
            if (v61 <= 0xC && ((1 << v61) & 0x1320) != 0)
            {
              v60 = PRNpBuilder(v11, v17, v12);
              if (v60)
              {
                goto LABEL_107;
              }
            }
          }

          if (*(v17 + 80))
          {
            v60 = PRPunct(v11, v17);
            if (v60)
            {
              goto LABEL_107;
            }
          }

          if (*(v17 + 96))
          {
            v60 = PRExprMatch(v12, v11, v17);
            if (v60)
            {
              goto LABEL_107;
            }
          }
        }

        if (*(v17 + 112))
        {
          PRPostAgree(v12, v11, v17);
          if (v60)
          {
            goto LABEL_107;
          }
        }

        if (*(v17 + 48))
        {
          v62 = PRmatchr(v11, v17);
          v8 = v62;
          if (v62 == 230 || v62 == 220)
          {
            goto LABEL_108;
          }
        }

        if ((v4 - 13) <= 1)
        {
          v63 = PRmisrul(v11, v17, a1);
          v8 = v63;
          if (v63 == 230 || v63 == 220)
          {
            goto LABEL_108;
          }
        }

        v50 = PRspace(a1, v11, v17);
        if (v50)
        {
          return v50;
        }

        PRprune(a1, v12);
        if (v65)
        {
          v64 = *(v11 + 24) ? *(a1 + 40) : 0;
          v50 = PRfixSpan(v11, v17, v64, a1);
          if (v50)
          {
            return v50;
          }

          v50 = PRfixPars(v11, v17, a1);
          if (v50)
          {
            return v50;
          }
        }
      }
    }

    return 0;
  }

  v8 = v55;
  if (v55 == 200)
  {
    *(a1 + 16) = 0;
  }

  return v8;
}

void *PRfreeErrList(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[5];
      PRfreeErr(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t PRCtGet(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 *a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v59 = 0;
  v58 = 0;
  if (a5)
  {
    *(a5 + 18) = 0;
    *(a5 + 24) = 0;
    if (*(a5 + 16))
    {
      v7 = 0;
      v8 = *(a5 + 8);
      do
      {
        *(v8 + 2 * v7++) = -1;
      }

      while (v7 < *(a5 + 16));
    }
  }

  *a7 = 0;
  v9 = *(a4 + 72);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 2);
  v51 = *(v9 + 3);
  v11 = *v9;
  v12 = *(v9 + 1);
  v57 = v9[1];
  v49 = *(v9 + 3);
  v50 = *(a4 + 40);
  v53 = v9[4];
  v13 = strlen(a1);
  SLfun(a1, 0, (v13 - 1), &v60, &v59);
  v14 = 0;
  v60 &= ~0x8000u;
  v15 = (v12 & v60);
  v16 = v59 % v11;
  v17 = 2 * v15;
  v18 = v15 + (v12 >> 1) + v11;
  v52 = 2 * v15;
  while (1)
  {
    v19 = 4 * v16;
    v20 = *(v10 + v19);
    v21 = (v10 + v19);
    v22 = v21[1] | (v20 << 8);
    if (!v22)
    {
      return 0;
    }

    if ((v22 & 0x7FFF) != v60)
    {
      goto LABEL_22;
    }

    v23 = v21[3] | (v21[2] << 8);
    if (v23 >= v53)
    {
      break;
    }

    v24 = v51;
LABEL_15:
    v25 = &v24[v23];
    v26 = *v25;
    v27 = v25[1];
    v28 = v23 + 3;
    v29 = v24[(v23 + 2)];
    *a7 = v29;
    if (v26)
    {
      v30 = 0;
      do
      {
        v31 = v28 + 1;
        v63[v30++] = v24[v28++];
      }

      while (v26 > v30);
    }

    else
    {
      v31 = v28;
    }

    v63[v26] = 0;
    if (a2 != 2)
    {
      v34 = a7;
      goto LABEL_30;
    }

    v32 = SLstrcmp(a1, v63);
    v17 = v52;
    if (!v32)
    {
      v34 = a7;
      v29 = *a7;
LABEL_30:
      if (v29 < 1)
      {
        v38 = v31;
        if (v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v37 = 0;
        do
        {
          v38 = v31 + 1;
          *(a6 + v37++) = v24[v31++];
        }

        while (v37 < *v34);
        if (v27)
        {
LABEL_34:
          v39 = 0;
          v40 = a5;
          do
          {
            v41 = v38++;
            v62[v39++] = v24[v41];
          }

          while (v27 > v39);
          v62[v27] = 0;
          if (a2 != 1)
          {
            v42 = 1;
            v43 = v62;
            do
            {
              if (*v43 == 36)
              {
                ++v42;
                *v43 = 0;
              }

              ++v43;
              --v27;
            }

            while (v27);
LABEL_46:
            v44 = v62;
            v45 = v42;
LABEL_47:
            PRaddList(v40, v44, v45, 0);
            return 0;
          }

LABEL_44:
          v44 = v63;
          v45 = 0;
          goto LABEL_47;
        }
      }

      v62[v27] = 0;
      v40 = a5;
      if (a2 != 1)
      {
        v42 = 1;
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_22:
    v16 += v18;
    do
    {
      v16 -= v11;
    }

    while (v16 >= v11);
    result = 0;
    if (v57 >= v14)
    {
      ++v14;
      v18 += v17;
      if (v20 < 0)
      {
        continue;
      }
    }

    return result;
  }

  if (SLSeek(v50, v49 + v23, 0) != 8)
  {
    if (SLFRead(v50, 128, __dst, &v58) == 8 || v58 <= 2)
    {
      v35 = *(a3 + 32);
      v36 = 0xDC00000070;
      goto LABEL_51;
    }

    v23 = 0;
    v24 = __dst;
    goto LABEL_15;
  }

  v35 = *(a3 + 32);
  v36 = 0xDC0000006FLL;
LABEL_51:
  *v35 = v36;
  *(v35 + 8) = 100;
  return 220;
}

uint64_t PRdb(unsigned __int8 *a1, int a2, int a3)
{
  v58 = 0;
  if (!a1)
  {
    return 230;
  }

  *(a1 + 22) = 0;
  v6 = a1 + 88;
  *(a1 + 23) = 0;
  *(a1 + 48) = 0;
  v7 = PRGetAppElem(*a1);
  if (!v7)
  {
    v11 = 0xE6FFFFFF93;
LABEL_61:
    *(a1 + 11) = v11;
    *(a1 + 48) = 420;
    return 230;
  }

  v8 = v7;
  *(v7 + 32) = v6;
  if (a2 == 4)
  {
    v12 = PRGetDbElem(*a1, a1[1]);
    if (!v12)
    {
      goto LABEL_33;
    }

    v14 = v12;
    v15 = *(v12 + 128);
    if (!v15)
    {
      v11 = 0xE6FFFFFF88;
      goto LABEL_61;
    }

    if (a3 <= 511)
    {
      if (a3 == 128)
      {
        v37 = *(a1 + 13);
        v38 = *(a1 + 13);
        if ((v38 & ~*(a1 + 15)) != 0)
        {
          *(a1 + 13) = *(v12 + 16);
          v25 = 0x4FFFFFF97;
        }

        else
        {
          *(v12 + 16) = v38;
          *(v15 + 20) = v37;
          PRPunTerm(v12);
          PRPunLoad(v8, v14);
          PRExprTerm(v14);
          PRExprLoad(v8, v14, *(a1 + 5), 0);
          v39 = *(v14 + 48);
          v40 = *(a1 + 13);
          v41 = *(v14 + 20);
          if ((v40 & 0xF0) == 0x20 && v41 == 16)
          {
            LOBYTE(v40) = 64;
          }

          PRLangDialPos(*(v14 + 48), &v58, 0, v41, v40 & 0xF0);
          LoadDialTable(v8, v39, v58);
          v43 = *(a1 + 14);
          v44 = *(a1 + 14);
          if ((v44 & ~*(a1 + 16)) == 0)
          {
            *(v14 + 18) = v44;
            *(v15 + 24) = v43;
            goto LABEL_87;
          }

          v25 = 0x4FFFFFF96;
        }
      }

      else
      {
        if (a3 != 256)
        {
          goto LABEL_14;
        }

        if (*(*(v15 + 3184) + 216))
        {
          v25 = 0x4000001FALL;
        }

        else
        {
          v46 = malloc_type_calloc(1uLL, 0x300uLL, 0x1030040B89FAF2CuLL);
          if (!v46)
          {
            v11 = 0xE6FFFFFF87;
            goto LABEL_61;
          }

          *v46 = 0;
          v46[745] = a1[24];
          v47 = *(v15 + 3184);
          *(v47 + 216) = v46;
          if (*(a1 + 6))
          {
            __strcpy_chk();
            __strcpy_chk();
          }

          __strcpy_chk();
          __strcat_chk();
          if (!IHhyp("", *(v47 + 216)))
          {
            *v14 |= 2u;
            *(v15 + 1320) |= 0x100u;
            goto LABEL_87;
          }

          *(v15 + 1320) |= 0x2000u;
          free(*(v47 + 216));
          *(v47 + 216) = 0;
          *(v15 + 1308) = 0;
          *v14 &= ~2u;
          v25 = 0x4000001F9;
        }
      }
    }

    else
    {
      if (a3 != 512)
      {
        if (a3 != 1024)
        {
          if (a3 != 4096)
          {
            goto LABEL_14;
          }

          UpdateDocFormat(a1, v8, v12, v13);
LABEL_87:
          v24 = 0;
          *(a1 + 7) = *v14;
          return v24;
        }

        v57 = 0;
        if (SLSeek(*(v12 + 40), 1000, 0) == 8)
        {
LABEL_51:
          v35 = *(v8 + 32);
          v36 = 0xDC0000006FLL;
LABEL_66:
          *v35 = v36;
          *(v35 + 8) = 420;
          return 220;
        }

        if (SLFRead(*(v14 + 40), 2, __dst, &v57) != 8)
        {
          if (SLSeek(*(v14 + 40), (__dst[0] << 17) | (__dst[1] << 9), 0) == 8)
          {
            goto LABEL_51;
          }

          v53 = malloc_type_calloc(1uLL, 0x400uLL, 0x8312136BuLL);
          if (!v53)
          {
            goto LABEL_65;
          }

          v54 = v53;
          if (SLRead(*(v14 + 40), 1024, v53, &v57) != 8)
          {
            v55 = PRExprInit(v8, v14, v54, *(a1 + 5), 1);
            free(v54);
            if (v55)
            {
              v11 = 0xE6FFFFFF83;
              goto LABEL_61;
            }

            goto LABEL_87;
          }

          free(v54);
        }

        v35 = *(v8 + 32);
        v36 = 0xDC00000070;
        goto LABEL_66;
      }

      v34 = *(*(v15 + 3184) + 216);
      if (v34)
      {
        IHterm(v34);
        free(*(*(v15 + 3184) + 216));
        *(*(v15 + 3184) + 216) = 0;
        *v14 &= ~2u;
        goto LABEL_87;
      }

      v25 = 0x4000001FBLL;
    }

    *(a1 + 11) = v25;
    *(a1 + 48) = 420;
    return 4;
  }

  if (a2 == 2)
  {
    if (a3)
    {
LABEL_14:
      v11 = 0xE6FFFFFF94;
      goto LABEL_61;
    }

    v16 = *(a1 + 10);
    if (v16)
    {
      v17 = v16[2];
      if (v17)
      {
        do
        {
          if (v17 == v16[2])
          {
            v18 = *v17;
            v19 = (v17[1] - 1);
            do
            {
              v17[1] = v19;
              v20 = *v19--;
            }

            while (v20 != v18);
            free(v19 + 1);
          }

          v21 = v17[3];
          free(v17);
          v17 = v21;
        }

        while (v21);
      }
    }

    free(v16);
    v22 = a1[1];
    if (v22 < *(v8 + 8))
    {
      v23 = *(*v8 + 8 * a1[1]);
      if (v23)
      {
        PRDbTerm(v8, *(*v8 + 8 * a1[1]));
        free(v23);
        v24 = 0;
        *(*v8 + 8 * v22) = 0;
        --*(v8 + 9);
        return v24;
      }
    }

LABEL_33:
    v11 = 0xE6FFFFFF92;
    goto LABEL_61;
  }

  if (a2 != 1)
  {
    v11 = 0xE6FFFFFF95;
    goto LABEL_61;
  }

  if (a3)
  {
    goto LABEL_14;
  }

  v9 = *(v7 + 8);
  if (*(v7 + 9) < v9)
  {
    goto LABEL_8;
  }

  v24 = ExpandDbElemArray(v7);
  if (v24)
  {
    return v24;
  }

  v9 = *(v8 + 8);
  if (*(v8 + 8))
  {
LABEL_8:
    v10 = 0;
    while (*(*v8 + 8 * v10))
    {
      if (v9 == ++v10)
      {
        goto LABEL_43;
      }
    }

    v9 = v10;
  }

LABEL_43:
  v26 = malloc_type_calloc(1uLL, 0x98uLL, 0x1030040A87721C6uLL);
  if (!v26)
  {
    goto LABEL_65;
  }

  v27 = v26;
  v28 = *(a1 + 6);
  *(a1 + 7) = v28;
  *v26 = v28;
  v29 = a1[24];
  v30 = SLLngToA(v29);
  v27[1] = v30;
  if (!v30)
  {
    free(v27);
    v11 = 0xE6FFFFFF9CLL;
    goto LABEL_61;
  }

  v31 = malloc_type_calloc(1uLL, 0xC78uLL, 0x1020040DC1EA3C0uLL);
  v27[16] = v31;
  if (!v31)
  {
    free(v27);
LABEL_65:
    v35 = *(v8 + 32);
    v36 = 0xDC00000078;
    goto LABEL_66;
  }

  v32 = PRDbInit(v29, *(a1 + 13), *(a1 + 14), v8, v27, a1);
  if (v32 || (*(v8 + 90) = 0, v48 = *(v8 + 88), v49 = v27[16], *(v49 + 3178) = v48, *(*(*(v49 + 3184) + 264) + 3204) = v48, (a1[12] & 1) != 0) && ((v50 = *(a1 + 7)) == 0 ? (v51 = 0) : (v52 = *v50, v50 += 8, v51 = v52), v32 = PRinitProfile(v8, v27, 0, v50, v51), v32))
  {
    v24 = v32;
    PRDbTerm(v8, v27);
    free(v27);
  }

  else
  {
    UpdateDocFormat(a1, v8, v27, v33);
    v24 = 0;
    *(*v8 + 8 * v9) = v27;
    ++*(v8 + 9);
    *(a1 + 7) = *v27;
    a1[1] = v9;
  }

  return v24;
}

uint64_t ExpandDbElemArray(uint64_t a1)
{
  v2 = malloc_type_calloc(*(a1 + 8) + 4, 8uLL, 0x2004093837F09uLL);
  if (v2)
  {
    v3 = v2;
    memcpy(v2, *a1, 8 * *(a1 + 8));
    free(*a1);
    result = 0;
    *a1 = v3;
    *(a1 + 8) += 4;
  }

  else
  {
    v5 = *(a1 + 32);
    *v5 = 0xDC00000078;
    *(v5 + 8) = 420;
    return 220;
  }

  return result;
}

uint64_t LoadDialTable(uint64_t a1, unsigned int *a2, int a3)
{
  v12 = 0;
  v4 = *(a2 + 36);
  v5 = *a2;
  v6 = *(a2 + 148);
  v7 = v6 * a3;
  if (!a3)
  {
    v7 = 0;
  }

  result = SLSeek(v5, a2[1] + a2[75] + v7, 0);
  if (result)
  {
    v9 = 111;
LABEL_10:
    v11 = *(a1 + 32);
    *v11 = v9;
    *(v11 + 4) = 220;
    *(v11 + 8) = 722;
    return result;
  }

  result = SLFRead(v5, v6, v4, &v12);
  if (result)
  {
    v10 = 0;
  }

  else
  {
    v10 = v12 == v6;
  }

  if (!v10)
  {
    v9 = 112;
    goto LABEL_10;
  }

  return result;
}

uint64_t UpdateDocFormat(uint64_t result, uint64_t a2, uint64_t a3, uint8x8_t a4)
{
  v5 = *(a3 + 64);
  if (v5)
  {
    v6 = v5 + 16;
    if (*(a3 + 23))
    {
      *(v6 + 4 * *(a3 + 23)) = *(v5 + 1044);
    }

    if (*(a3 + 24))
    {
      *(v6 + 4 * *(a3 + 24)) = *(v5 + 1048);
    }

    if (*(a3 + 25))
    {
      *(v6 + 4 * *(a3 + 25)) = *(v5 + 1052);
    }

    if (*(a3 + 26))
    {
      *(v6 + 4 * *(a3 + 26)) = *(v5 + 1056);
    }

    if (*(a3 + 22))
    {
      *(v6 + 4 * *(a3 + 22)) = *(v5 + 1060);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(result + 10);
  v8 = *(result + 2);
  *(a3 + 22) = v8;
  v9 = (a3 + 22);
  *(a3 + 30) = v7;
  a4.i32[0] = *(a3 + 23);
  *(a3 + 32) = a4.i32[0];
  *(a3 + 36) = v8;
  if (*(a2 + 28))
  {
    v15[0] = v8;
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 22) = v15[0];
    v15[0] = *(a3 + 23);
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 23) = v15[0];
    v15[0] = *(a3 + 24);
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 24) = v15[0];
    v15[0] = *(a3 + 25);
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 25) = v15[0];
    v15[0] = *(a3 + 26);
    result = SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    v10 = v15[0];
    *(a3 + 26) = v15[0];
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v10 = vmovl_u8(a4).u8[6];
    if (!v5)
    {
      return result;
    }
  }

  v11 = *(a3 + 23);
  if (*(a3 + 23))
  {
    *(v5 + 1044) = *(v6 + 4 * v11);
    *(v6 + 4 * v11) = 2048;
  }

  v12 = *(a3 + 24);
  if (*(a3 + 24))
  {
    *(v5 + 1048) = *(v6 + 4 * v12);
    *(v6 + 4 * v12) = 2048;
  }

  v13 = *(a3 + 25);
  if (*(a3 + 25))
  {
    *(v5 + 1052) = *(v6 + 4 * v13);
    *(v6 + 4 * v13) = 2048;
  }

  if (v10)
  {
    *(v5 + 1056) = *(v6 + 4 * v10);
    *(v6 + 4 * v10) = 268436480;
  }

  v14 = *v9;
  if (*v9)
  {
    *(v5 + 1060) = *(v6 + 4 * v14);
    *(v6 + 4 * v14) = 8;
  }

  *(v5 + 1040) = (v11 | v13 | v12 | v10) != 0;
  return result;
}

uint64_t PRDbInit(int a1, int a2, int a3, uint64_t a4, __int16 *a5, uint64_t a6)
{
  v7 = *(a5 + 16);
  v114 = 0;
  if (*(a6 + 40))
  {
    v13 = *(a6 + 24);
    v14 = v13 == 18 || v13 == 4;
    if (!v14 || *(a6 + 72))
    {
      __strcpy_chk();
      __strcpy_chk();
      if (*(a6 + 48))
      {
        __strcpy_chk();
        __strcpy_chk();
      }

      *(v7 + 3168) = *(a6 + 34);
      if (PRIcs(a4, a5, a1, a2, a3, "", 0, v7, 1, 0))
      {
        v15 = *(a4 + 32);
        *v15 = 0xDC000000A0;
        *(v15 + 8) = 440;
        *(v7 + 1320) &= ~0x80u;
        return 220;
      }

      if (*(a6 + 48))
      {
        v18 = *a5;
        if ((*(v7 + 1320) & 0x2000) != 0)
        {
          *a5 = v18 & 0xFFFD;
          v19 = *(a4 + 32);
          *v19 = 0x4000001F9;
          *(v19 + 8) = 440;
        }

        else
        {
          *a5 = v18 | 2;
        }
      }

      v20 = 0;
      v21 = 0;
      __dst = 0;
      *(a6 + 30) = *(v7 + 12);
      *(a6 + 32) = *(v7 + 16);
      v22 = *(*(*(v7 + 3184) + 248) + 64);
      *(a5 + 10) = v22;
      *(a5 + 20) = a1;
      *(a5 + 4) = *(a6 + 26);
      v23 = a1 - 4;
      if (a1 != 4 && a1 != 18)
      {
        if (SLSeek(v22, 1000, 0) == 8)
        {
          goto LABEL_43;
        }

        if (SLFRead(*(a5 + 10), 2, v115, &v114) == 8)
        {
          goto LABEL_93;
        }

        v37 = (v115[0] << 17) | (v115[1] << 9);
        if (!v37)
        {
          v35 = *(a4 + 32);
          v36 = 0xDC0000008CLL;
          goto LABEL_129;
        }

        if (SLSeek(*(a5 + 10), v37, 0) == 8)
        {
LABEL_43:
          v35 = *(a4 + 32);
          v36 = 0xDC0000006FLL;
          goto LABEL_129;
        }

        v38 = malloc_type_calloc(1uLL, 0x400uLL, 0x4015D04CuLL);
        if (!v38)
        {
          goto LABEL_128;
        }

        v21 = v38;
        if (SLRead(*(a5 + 10), 1024, v38, &v114) == 8)
        {
          goto LABEL_92;
        }

        v20 = (v21[754] << 17) | (v21[755] << 9);
      }

      v24 = 0;
      v25 = ((v23 >> 1) | (v23 << 7));
      if (v25 > 5)
      {
        if (v25 == 6)
        {
          v26 = v20 + 156;
          SLSeek(*(a5 + 10), v20 + 156, 0);
          if (SLFRead(*(a5 + 10), 1, &__dst, &v114) == 8 || v114 != 1)
          {
            goto LABEL_93;
          }

          v39 = __dst;
          v40 = *(a6 + 30);
          if (__dst < 0)
          {
            v41 = *(a6 + 30);
          }

          else
          {
            v41 = v40 & 0xFFFFFF7F;
            *(a6 + 30) = v40 & 0xFF7F;
            v42 = *(a6 + 26);
            *(a6 + 26) = v42 & 0xFF7F;
            if ((v40 & v42 & 0x70) == 0)
            {
              *(a6 + 26) = v42 & 0xFF0F | 0x40;
              *(a6 + 88) = 0x4FFFFFF97;
              *(a6 + 96) = 440;
            }
          }

          if ((v39 & 0x40) != 0)
          {
            v74 = v41;
          }

          else
          {
            v74 = v41 & 0xFFFFFF9F;
            *(a6 + 30) = v41 & 0xFF9F;
            v75 = *(a6 + 26);
            *(a6 + 26) = v75 & 0xFF9F;
            if ((v41 & v75 & 0x90) == 0)
            {
              *(a6 + 26) = v75 & 0xFF0F | 0x80;
              *(a6 + 88) = 0x4FFFFFF97;
              *(a6 + 96) = 440;
            }
          }

          if ((~v74 & 3) != 0)
          {
            v74 &= 0xFFFFFFFC;
            *(a6 + 30) = v74;
          }

          v76 = *(a6 + 26);
          if ((v76 & ~v74 & 0xFFFFFF0F) != 0)
          {
            *(a6 + 88) = 0x4FFFFFF97;
            *(a6 + 96) = 440;
            LOWORD(v76) = v74 & v76;
            *(a6 + 26) = v76;
          }

          v24 = 0;
          a5[8] = v76;
          *(v7 + 20) = v76;
          if (a1 == 4 || a1 == 18)
          {
            goto LABEL_36;
          }

          if (a1 != 12)
          {
            goto LABEL_107;
          }

LABEL_23:
          SLSeek(*(a5 + 10), v26, 0);
          if (SLFRead(*(a5 + 10), 1, &__dst, &v114) == 8 || v114 != 1)
          {
            goto LABEL_93;
          }

          v27 = __dst;
          v28 = *(a6 + 26);
          if ((__dst & 0x80000000) == 0)
          {
            v29 = *(a6 + 30) & 0xFF7F;
            *(a6 + 30) &= ~0x80u;
            if ((v28 & v29) == 0)
            {
              v28 = 64;
              *(a6 + 26) = 64;
            }
          }

          if ((v27 & 0x40) == 0)
          {
            v30 = *(a6 + 30) & 0xFFBF;
            *(a6 + 30) &= ~0x40u;
            if ((v28 & v30) == 0)
            {
              LOWORD(v28) = 128;
              *(a6 + 26) = 128;
            }
          }

          v24 = 0;
          a5[8] = v28;
          *(v7 + 20) = v28;
          if (a1 != 4 && a1 != 18)
          {
            goto LABEL_107;
          }

LABEL_36:
          v31 = *(a6 + 40);
          if (!v31)
          {
            return 0;
          }

          *(a6 + 80) = 0;
          *v117 = 0;
          v32 = malloc_type_calloc(1uLL, 0x158uLL, 0x1030040924E0C2EuLL);
          *(a5 + 6) = v32;
          if (v32)
          {
            v33 = v32;
            *v32 = -1;
            v34 = *(a5 + 20);
            if (v34 == 18 || v34 == 4)
            {
              if (SLOpen((v31 + 1), *v31, &v117[1], 0) == 8)
              {
                v35 = *(a4 + 32);
                v36 = 0xDC0000006ELL;
LABEL_129:
                *v35 = v36;
                *(v35 + 8) = 440;
                return 220;
              }

              *v33 = v117[1];
            }

            else
            {
              v43 = *(a5 + 10);
              *v32 = v43;
              v117[1] = v43;
            }

            v33[1] = v24;
            v44 = malloc_type_calloc(1uLL, 0x200uLL, 0x100004077774924uLL);
            if (v44)
            {
              v21 = v44;
              SLSeek(v117[1], v24, 0);
              if (SLFRead(v117[1], 512, v21, v117) != 8 && v117[0] == 512)
              {
                v45 = *v21;
                *(v33 + 8) = v45;
                if (v45)
                {
                  v46 = malloc_type_calloc(v45 + 1, 1uLL, 0x100004077774924uLL);
                  *(v33 + 2) = v46;
                  if (!v46)
                  {
LABEL_126:
                    v90 = v21;
LABEL_127:
                    free(v90);
                    goto LABEL_128;
                  }

                  strcpy(v46, v21 + 1);
                }

                *(v33 + 24) = v21[33];
                *(v33 + 25) = v21[34];
                *(v33 + 337) = v21[163];
                *(v33 + 26) = v21[35];
                v47 = __rev16(*(v21 + 38));
                v48 = bswap32(*(v21 + 18));
                v116 = v48;
                if (!v47)
                {
                  goto LABEL_79;
                }

                v49 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040F514C710uLL);
                *(a6 + 80) = v49;
                if (!v49 || (v50 = malloc_type_calloc(1uLL, v47, 0x100004077774924uLL)) == 0)
                {
                  free(v21);
                  v90 = *(a6 + 80);
                  if (!v90)
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_127;
                }

                v51 = v50;
                SLSeek(v117[1], v48 + v24, 0);
                if (SLFRead(v117[1], v47, v51, v117) != 8 && v117[0] == v47)
                {
                  v52 = *(v33 + 25);
                  **(a6 + 80) = v52;
                  if (v52)
                  {
                    v53 = 0;
                    v54 = 0;
                    do
                    {
                      v55 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040BEB8C10EuLL);
                      if (!v55)
                      {
                        goto LABEL_126;
                      }

                      v56 = v55;
                      *v55 = *v51;
                      v57 = v51[1];
                      v58 = *(a6 + 80);
                      if (!*(v58 + 16))
                      {
                        *(v58 + 16) = v55;
                      }

                      v59 = v51 + 2;
                      if (v57)
                      {
                        v60 = v55 + 16;
                        do
                        {
                          --v57;
                          v61 = *v59++;
                          *v60++ = v61;
                        }

                        while (v57);
                      }

                      v62 = strlen(v59);
                      *(v56 + 1) = v59;
                      *(v56 + 3) = 0;
                      if (v54)
                      {
                        *(v54 + 3) = v56;
                      }

                      v51 = &v59[v62 + 1];
                      ++v53;
                      v54 = v56;
                    }

                    while (*(v33 + 25) > v53);
                  }

LABEL_79:
                  v116 = 0;
                  v63 = SetFarTable(v33 + 4, *(v33 + 26), v117[1], v21, 0x24u, &v116, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v63 = SetFarTable(v33 + 5, 2 * *(v33 + 26), v117[1], v21, 0x28u, &v116, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v64 = bswap32(*(v21 + 12));
                  v33[14] = v64;
                  v63 = SetHugeTable(v33 + 6, v64, v117[1], v21, 0x2Cu, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v65 = bswap32(*(v21 + 14));
                  v33[18] = v65;
                  v63 = SetHugeTable(v33 + 8, v65, v117[1], v21, 0x34u, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v66 = bswap32(*(v21 + 32));
                  v67 = HIWORD(v66);
                  *(v33 + 44) = HIWORD(v66);
                  if (v67)
                  {
                    v63 = SetFarTable(v33 + 10, v67, v117[1], v21, 0x3Cu, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v68 = bswap32(*(v21 + 35));
                  v69 = HIWORD(v68);
                  *(v33 + 52) = HIWORD(v68);
                  if (v69)
                  {
                    v63 = SetFarTable(v33 + 12, v69, v117[1], v21, 0x42u, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v70 = bswap32(*(v21 + 38));
                  v71 = HIWORD(v70);
                  *(v33 + 60) = HIWORD(v70);
                  if (v71)
                  {
                    v63 = SetFarTable(v33 + 14, v71, v117[1], v21, 0x48u, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v72 = bswap32(*(v21 + 22));
                  v33[34] = v72;
                  if (v72)
                  {
                    v63 = SetHugeTable(v33 + 16, v72, v117[1], v21, 0x54u, a4, v24);
                    if (v63)
                    {
LABEL_146:
                      v17 = v63;
                      goto LABEL_147;
                    }

                    v73 = v33[34] / 7u;
                  }

                  else
                  {
                    LOWORD(v73) = 0;
                  }

                  *(v33 + 70) = v73;
                  v95 = bswap32(*(v21 + 48));
                  v96 = HIWORD(v95);
                  *(v33 + 76) = HIWORD(v95);
                  if (v96)
                  {
                    v63 = SetFarTable(v33 + 18, v96, v117[1], v21, 0x5Cu, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }

                    *(v33 + 77) = *(v33 + 76) >> 2;
                    v97 = bswap32(*(v21 + 51));
                    *(v33 + 84) = HIWORD(v97);
                    v63 = SetFarTable(v33 + 20, HIWORD(v97), v117[1], v21, 0x62u, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v63 = SetFarTable(v33 + 22, 4 * *(v33 + 26), v117[1], v21, 0x68u, &v116, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v33[48] = bswap32(*(v21 + 28));
                  v98 = bswap32(*(v21 + 28));
                  v33[48] = v98;
                  if (v98)
                  {
                    v63 = SetHugeTable(v33 + 23, v98, v117[1], v21, 0x6Cu, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v99 = v33[34] || *(v33 + 84) ? 28 : 32;
                  *a5 |= v99;
                  v63 = SetFarTable(v33 + 25, 2 * *(v33 + 26), v117[1], v21, 0x74u, &v116, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v100 = *(v21 + 41);
                  v101 = bswap32(v100);
                  v102 = __rev16(v100);
                  *(v33 + 61) = v102;
                  v103 = bswap32(*(v21 + 78));
                  v33[80] = v103;
                  v116 = v103 + HIWORD(v101);
                  v63 = SetFarTable(v33 + 38, v102, v117[1], v21, 0x201u, &v116, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  *(v33 + 324) = 2;
                  v63 = SetFarTable(v33 + 26, 4 * *(v33 + 26), v117[1], v21, 0x78u, &v116, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v63 = SetHugeTable(v33 + 27, v33[14], v117[1], v21, 0x7Cu, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  if (bswap32(*(v21 + 32)))
                  {
                    v63 = SetFarTable(v33 + 28, 4 * *(v33 + 26), v117[1], v21, 0x80u, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v104 = bswap32(*(v21 + 68));
                  v105 = HIWORD(v104);
                  *(v33 + 120) = HIWORD(v104);
                  if (v105)
                  {
                    v63 = SetFarTable(v33 + 29, v105, v117[1], v21, 0x84u, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v116 = 499;
                  v63 = SetFarTable(v33 + 31, 0xDuLL, v117[1], v21, 0x201u, &v116, a4, v24);
                  if (v63)
                  {
                    goto LABEL_146;
                  }

                  v106 = bswap32(*(v21 + 71));
                  v107 = HIWORD(v106);
                  *(v33 + 132) = HIWORD(v106);
                  if (v107)
                  {
                    v63 = SetFarTable(v33 + 32, v107, v117[1], v21, 0x8Au, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v108 = bswap32(*(v21 + 74));
                  v109 = HIWORD(v108);
                  *(v33 + 140) = HIWORD(v108);
                  if (v109)
                  {
                    v63 = SetFarTable(v33 + 34, v109, v117[1], v21, 0x90u, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v110 = v21[154];
                  *(v33 + 336) = v110;
                  if (v110)
                  {
                    v63 = SetFarTable(v33 + 41, v110, v117[1], v21, 0x96u, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  v111 = bswap32(*(v21 + 161));
                  v112 = HIWORD(v111);
                  *(v33 + 148) = HIWORD(v111);
                  v33[75] = bswap32(*(v21 + 157));
                  if (v112)
                  {
                    v63 = SetFarTable(v33 + 36, v112, v117[1], v21, 0x9Du, &v116, a4, v24);
                    if (v63)
                    {
                      goto LABEL_146;
                    }
                  }

                  free(v21);
                  return 0;
                }

LABEL_93:
                v35 = *(a4 + 32);
                v36 = 0xDC00000070;
                goto LABEL_129;
              }

LABEL_92:
              free(v21);
              goto LABEL_93;
            }
          }

LABEL_128:
          v35 = *(a4 + 32);
          v36 = 0xDC00000078;
          goto LABEL_129;
        }

        if (v25 == 7)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!((v23 >> 1) | (v23 << 7)))
        {
          goto LABEL_36;
        }

        if (v25 == 4)
        {
          v26 = v20 + 156;
          goto LABEL_23;
        }
      }

LABEL_107:
      v77 = __rev16(*(v21 + 353));
      if (v77)
      {
        v117[1] = 0;
        v78 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040CF817D87uLL);
        *(a5 + 9) = v78;
        if (!v78)
        {
          v85 = 120;
          v84 = 120;
          goto LABEL_123;
        }

        v79 = v78;
        v80 = *(a5 + 10);
        *v78 = bswap32(*(v21 + 350)) >> 16;
        v78[1] = bswap32(*(v21 + 351)) >> 16;
        *(v78 + 1) = __rev16(*(v21 + 352));
        v81 = bswap32(*(v21 + 177));
        v82 = v21[712];
        v83 = v21[713];
        *(v78 + 3) = bswap32(*(v21 + 714));
        if (SLSeek(v80, v81, 0) == 8)
        {
          v84 = 120;
LABEL_111:
          v85 = 111;
LABEL_123:
          v89 = *(a4 + 32);
          v17 = 220;
          *v89 = v85;
          *(v89 + 4) = 220;
          *(v89 + 8) = v84;
LABEL_147:
          free(v21);
          return v17;
        }

        v86 = malloc_type_calloc(1uLL, v77, 0x100004077774924uLL);
        *(v79 + 2) = v86;
        if (v86)
        {
          v87 = SLFRead(v80, v77, v86, &v117[1]);
          v84 = 122;
          v85 = 112;
          if (v87 == 8 || v117[1] != v77)
          {
            goto LABEL_123;
          }

          if (v82 >= 2)
          {
            v88 = 512;
          }

          else
          {
            v88 = v83 | (v82 << 8);
          }

          if (SLSeek(v80, *(v79 + 3), 0) == 8)
          {
            v84 = 121;
            goto LABEL_111;
          }

          v92 = malloc_type_calloc(1uLL, v88, 0x6C54FAB3uLL);
          *(v79 + 3) = v92;
          if (v92)
          {
            v93 = SLFRead(v80, v88, v92, &v117[1]);
            v84 = 123;
            v85 = 112;
            if (v93 == 8 || v117[1] != v88)
            {
              goto LABEL_123;
            }

            if (v88 == 512)
            {
              LOWORD(v88) = 512;
              while (1)
              {
                v94 = v88;
                if (*(*(v79 + 3) + v88 - 1) == 33)
                {
                  break;
                }

                LOWORD(v88) = v88 - 1;
                if (v94 <= 1)
                {
                  LOWORD(v88) = 0;
                  break;
                }
              }
            }

            v79[4] = v88;
            goto LABEL_141;
          }

          v84 = 123;
        }

        else
        {
          v84 = 122;
        }

        v85 = 120;
        goto LABEL_123;
      }

LABEL_141:
      v63 = PRSfxInit(a4, a5, v21);
      if (v63)
      {
        goto LABEL_146;
      }

      v63 = PRSSInit(a4, a5, v21);
      if (v63)
      {
        goto LABEL_146;
      }

      v63 = PRPunInit(a4, a5, v21);
      if (v63)
      {
        goto LABEL_146;
      }

      v63 = PRExprInit(a4, a5, v21, *(a6 + 10), 0);
      if (v63)
      {
        goto LABEL_146;
      }

      v63 = PRPostInit(a4, a5, v21);
      if (v63)
      {
        goto LABEL_146;
      }

      v17 = PRAmInit(a4, a5, v21);
      free(v21);
      v24 = v20;
      if (v17)
      {
        return v17;
      }

      goto LABEL_36;
    }
  }

  v16 = *(a4 + 32);
  *v16 = 0xE6FFFFFF90;
  *(v16 + 8) = 440;
  return 230;
}

uint64_t PRSfxInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __rev16(*(a3 + 724));
  if (!v3)
  {
    return 0;
  }

  v16 = 0;
  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
  *(a2 + 56) = v7;
  if (!v7)
  {
    v10 = 40;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *(a2 + 40);
  *v7 = bswap32(*(a3 + 718)) >> 16;
  v7[1] = bswap32(*(a3 + 720)) >> 16;
  *(v7 + 1) = __rev16(*(a3 + 722));
  if (SLSeek(v9, bswap32(*(a3 + 726)), 0) != 8)
  {
    v12 = malloc_type_calloc(1uLL, v3, 0x92BB8A3uLL);
    *(v8 + 1) = v12;
    if (v12)
    {
      v13 = SLFRead(v9, v3, v12, &v16);
      v10 = 41;
      v11 = 112;
      if (v13 == 8 || v16 != v3)
      {
        goto LABEL_12;
      }

      return 0;
    }

    v10 = 41;
LABEL_11:
    v11 = 120;
    goto LABEL_12;
  }

  v10 = 40;
  v11 = 111;
LABEL_12:
  v15 = *(a1 + 32);
  result = 220;
  *v15 = v11;
  *(v15 + 4) = 220;
  *(v15 + 8) = v10;
  return result;
}

uint64_t PRSSInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = __rev16(*(a3 + 736));
  if (!v3)
  {
    return 0;
  }

  v34 = 0;
  v7 = malloc_type_calloc(1uLL, 0x428uLL, 0x101004032A3AAA5uLL);
  *(a2 + 64) = v7;
  if (!v7)
  {
    v10 = 320;
LABEL_16:
    v11 = 120;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = *(a2 + 40);
  *v7 = bswap32(*(a3 + 730)) >> 16;
  v7[1] = bswap32(*(a3 + 732)) >> 16;
  *(v7 + 1) = __rev16(*(a3 + 734));
  if (SLSeek(v9, bswap32(*(a3 + 738)), 0) == 8)
  {
    v10 = 320;
    v11 = 111;
LABEL_17:
    v33 = *(a1 + 32);
    result = 220;
    *v33 = v11;
    *(v33 + 4) = 220;
    *(v33 + 8) = v10;
    return result;
  }

  v13 = malloc_type_calloc(1uLL, v3, 0x669DF33EuLL);
  *(v8 + 1) = v13;
  if (!v13)
  {
    v10 = 321;
    goto LABEL_16;
  }

  v14 = SLFRead(v9, v3, v13, &v34);
  v10 = 321;
  v11 = 112;
  if (v14 == 8)
  {
    goto LABEL_17;
  }

  if (v34 != v3)
  {
    goto LABEL_17;
  }

  v15 = SLFRead(v9, 1024, __dst, &v34);
  v10 = 321;
  v11 = 112;
  if (v15 == 8 || v34 != 1024)
  {
    goto LABEL_17;
  }

  for (i = 0; i != 512; i += 32)
  {
    result = 0;
    v17 = &__dst[i * 2];
    v37 = vld4q_s8(v17);
    v18 = vmovl_u8(*v37.val[0].i8);
    v19 = vmovl_high_u8(v37.val[0]);
    _Q16 = vmovl_u8(*v37.val[1].i8);
    _Q17 = vmovl_high_u8(v37.val[1]);
    __asm
    {
      SHLL2           V18.4S, V17.8H, #0x10
      SHLL2           V19.4S, V16.8H, #0x10
    }

    v28 = vmovl_high_u8(v37.val[2]);
    v29 = vmovl_u8(*v37.val[2].i8);
    v30 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q16.i8, 0x10uLL), vshll_n_u16(*v29.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v18.i8), 0x18uLL));
    v31 = vmovl_high_u8(v37.val[3]);
    v37.val[0] = vmovl_u8(*v37.val[3].i8);
    v32 = &v8[i + 8];
    v32[2] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q17.i8, 0x10uLL), vshll_n_u16(*v28.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v19.i8), 0x18uLL)), vmovl_u16(*v31.i8));
    v32[3] = vorrq_s8(vorrq_s8(vorrq_s8(_Q18, vshll_high_n_u16(v28, 8uLL)), vshlq_n_s32(vmovl_high_u16(v19), 0x18uLL)), vmovl_high_u16(v31));
    *v32 = vorrq_s8(v30, vmovl_u16(*v37.val[0].i8));
    v32[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v29, 8uLL)), vshlq_n_s32(vmovl_high_u16(v18), 0x18uLL)), vmovl_high_u16(v37.val[0]));
  }

  return result;
}

uint64_t PRPunInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 88) = bswap32(*(a3 + 742)) >> 16;
  *(a2 + 92) = bswap32(*(a3 + 744));
  return PRPunLoad(a1, a2);
}

uint64_t PRExprInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a2 + 104) = bswap32(*(a3 + 748)) >> 16;
  *(a2 + 108) = bswap32(*(a3 + 750));
  return PRExprLoad(a1, a2, a4, a5);
}

uint64_t PRPostInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __rev16(*(a3 + 762));
  if (!v3)
  {
    return 0;
  }

  v20 = 0;
  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10100408797764BuLL);
  *(a2 + 112) = v7;
  if (!v7 || (v8 = v7, v9 = *(a2 + 40), v10 = bswap32(*(a3 + 768)), v11 = v3 + HIWORD(v10), v12 = *(a3 + 764), v13 = malloc_type_calloc(1uLL, (v3 + HIWORD(v10)), 0xE58C1C6CuLL), (v8[1] = v13) == 0) || (v14 = v13, v15 = malloc_type_calloc(1uLL, 0x80uLL, 0x2A484F7AuLL), (v8[2] = v15) == 0))
  {
    v16 = *(a1 + 32);
    v17 = 0xDC00000078;
    goto LABEL_8;
  }

  if (SLSeek(v9, bswap32(v12), 0))
  {
    v16 = *(a1 + 32);
    v17 = 0xDC0000006FLL;
LABEL_8:
    *v16 = v17;
    *(v16 + 8) = 0;
    return 220;
  }

  if (SLFRead(v9, v11, v14, &v20))
  {
    v19 = 0;
  }

  else
  {
    v19 = v20 == v11;
  }

  if (!v19)
  {
    v16 = *(a1 + 32);
    v17 = 0xDC00000070;
    goto LABEL_8;
  }

  result = 0;
  *v8 = bswap32(*(a3 + 756)) >> 16;
  *(v8 + 1) = bswap32(*(a3 + 758)) >> 16;
  *(v8 + 2) = bswap32(*(a3 + 760)) >> 16;
  *(v8 + 3) = v3;
  return result;
}

uint64_t PRAmInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __rev16(*(a3 + 780));
  if (!v3)
  {
    return 0;
  }

  v26 = 0;
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040CF817D87uLL);
  *(a2 + 120) = v7;
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = v7;
  v9 = *(a2 + 40);
  *v7 = bswap32(*(a3 + 774)) >> 16;
  v7[1] = bswap32(*(a3 + 776)) >> 16;
  *(v7 + 1) = __rev16(*(a3 + 778));
  v10 = bswap32(*(a3 + 782));
  v11 = *(a3 + 786);
  v12 = *(a3 + 787);
  *(v7 + 3) = bswap32(*(a3 + 788));
  if (SLSeek(v9, v10, 0) == 8)
  {
LABEL_4:
    v13 = *(a1 + 32);
    v14 = 0xDC0000006FLL;
LABEL_29:
    *v13 = v14;
    *(v13 + 8) = 760;
    return 220;
  }

  v16 = malloc_type_calloc(1uLL, v3, 0x100004077774924uLL);
  *(v8 + 2) = v16;
  if (!v16)
  {
    goto LABEL_28;
  }

  if (SLFRead(v9, v3, v16, &v26) == 8 || v26 != v3)
  {
    goto LABEL_11;
  }

  if (v11 >= 2)
  {
    v18 = 512;
  }

  else
  {
    v18 = v12 | (v11 << 8);
  }

  if (SLSeek(v9, *(v8 + 3), 0) == 8)
  {
    goto LABEL_4;
  }

  v19 = malloc_type_calloc(1uLL, v18, 0xCDAA18DDuLL);
  *(v8 + 3) = v19;
  if (!v19)
  {
LABEL_28:
    v13 = *(a1 + 32);
    v14 = 0xDC00000078;
    goto LABEL_29;
  }

  if (SLFRead(v9, v18, v19, &v26) == 8 || v26 != v18)
  {
LABEL_11:
    v13 = *(a1 + 32);
    v14 = 0xDC00000070;
    goto LABEL_29;
  }

  if (v18 == 512)
  {
    v20 = *v8;
    if (*v8)
    {
      v21 = 0;
      v22 = *(v8 + 2) + 3;
      do
      {
        v23 = bswap32(*(v22 - 1)) >> 16;
        v24 = v21;
        if (v23 > v21)
        {
          v24 = v23;
        }

        if (v23 < 513)
        {
          v21 = v24;
        }

        v22 += 4;
        --v20;
      }

      while (v20);
      v25 = (v21 - 1);
    }

    else
    {
      LOWORD(v25) = -1;
    }

    result = 0;
    v8[4] = v25;
  }

  else
  {
    result = 0;
    v8[4] = v18;
  }

  return result;
}

uint64_t PRPunLoad(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 92);
  if (v2)
  {
    v59 = 0;
    v5 = *(a2 + 88);
    v6 = malloc_type_calloc(1uLL, 0x468uLL, 0x1090040F2BAB4E8uLL);
    *(a2 + 80) = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(a2 + 40);
      if (SLSeek(v8, v2, 0) == 8)
      {
LABEL_4:
        v9 = 180;
        v10 = 111;
LABEL_27:
        v17 = *(a1 + 32);
        result = 220;
        *v17 = v10;
        *(v17 + 4) = 220;
        *(v17 + 8) = v9;
        return result;
      }

      v11 = 0;
      if (v5 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v5;
      }

      while (1)
      {
        if (SLFRead(v8, 6, &__dst, &v59) == 8)
        {
          goto LABEL_25;
        }

        v13 = __rev16(__dst);
        v14 = *(a2 + 16) & 0xF0;
        if (v14 == 32 && *(a2 + 20) == 16)
        {
          v14 = 64;
        }

        if (v13 == v14)
        {
          goto LABEL_21;
        }

        if (v5 <= ++v11)
        {
          break;
        }

        v2 += bswap32(v61) + 6;
        if (SLSeek(v8, v2, 0) == 8)
        {
          goto LABEL_4;
        }
      }

      v11 = v12;
LABEL_21:
      if (v13 && v5 <= v11)
      {
        return 8;
      }

      if (SLFRead(v8, 12, &__dst, &v59) == 8)
      {
        goto LABEL_25;
      }

      v18 = 0;
      v19 = __rev16(v61);
      v20 = __rev16(HIWORD(v61));
      count = __rev16(v62);
      v21 = __rev16(v63);
      v7[548] = v21;
      v57 = __rev16(v64);
      v22 = v7;
      do
      {
        v23 = SLFRead(v8, 46, &__dst, &v59);
        v9 = 181;
        v10 = 112;
        if (v23 == 8 || v59 != 46)
        {
          goto LABEL_27;
        }

        for (i = 0; i != 23; ++i)
        {
          v22[i] = bswap32(*(&__dst + i * 2)) >> 16;
        }

        ++v18;
        v22 += 23;
      }

      while (v18 != 23);
      v25 = malloc_type_calloc(v19, 0x30uLL, 0x1000040EED21634uLL);
      *(v7 + 133) = v25;
      if (!v25)
      {
LABEL_81:
        v9 = 181;
        goto LABEL_6;
      }

      if (v19)
      {
        v26 = 0;
        for (j = 0; j != v19; ++j)
        {
          v28 = SLFRead(v8, 48, &__dst, &v59);
          v9 = 182;
          v10 = 112;
          if (v28 == 8 || v59 != 48)
          {
            goto LABEL_27;
          }

          v29 = 0;
          v30 = *(v7 + 133) + v26;
          v31 = &__dst + 1;
          do
          {
            *(v30 + 2 * v29++) = bswap32(*(v31 - 1)) >> 16;
            v31 += 2;
          }

          while (v29 != 24);
          v26 += 48;
        }
      }

      v32 = malloc_type_calloc(v20, 6uLL, 0x1000040274DC3F3uLL);
      *(v7 + 134) = v32;
      if (v32)
      {
        if (v20)
        {
          v33 = 0;
          v34 = 0;
          while (SLFRead(v8, 6, &__dst, &v59) != 8 && v59 == 6)
          {
            v36 = 0;
            v37 = *(v7 + 134) + v33;
            v38 = &__dst + 1;
            do
            {
              *(v37 + 2 * v36++) = bswap32(*(v38 - 1)) >> 16;
              v38 += 2;
            }

            while (v36 != 3);
            ++v34;
            v33 += 6;
            if (v34 == v20)
            {
              goto LABEL_53;
            }
          }

          v9 = 183;
          goto LABEL_26;
        }

LABEL_53:
        v39 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
        *(v7 + 135) = v39;
        if (v39)
        {
          v40 = SLFRead(v8, count, v39, &v59);
          v9 = 184;
          v10 = 112;
          if (v40 == 8 || v59 != count)
          {
            goto LABEL_27;
          }

          if (!v21)
          {
            goto LABEL_68;
          }

          v41 = malloc_type_calloc(v21, 4uLL, 0x100004052888210uLL);
          *(v7 + 138) = v41;
          if (v41)
          {
            v42 = SLFRead(v8, 4 * v21, &__dst, &v59);
            v9 = 182;
            v10 = 112;
            if (v42 == 8 || v59 != 4 * v21)
            {
              goto LABEL_27;
            }

            v43 = *(v7 + 138);
            v44 = &v61 + 1;
            v45 = v21;
            do
            {
              *v43++ = bswap32(*(v44 - 3));
              v44 += 4;
              --v45;
            }

            while (v45);
            v46 = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
            *(v7 + 139) = v46;
            if (v46)
            {
              v47 = SLFRead(v8, v21, v46, &v59);
              v9 = 182;
              v10 = 112;
              if (v47 == 8 || v59 != v21)
              {
                goto LABEL_27;
              }

              v48 = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
              *(v7 + 140) = v48;
              if (v48)
              {
                v49 = SLFRead(v8, v21, v48, &v59);
                v9 = 182;
                v10 = 112;
                if (v49 == 8 || v59 != v21)
                {
                  goto LABEL_27;
                }

LABEL_68:
                if (!v57)
                {
                  return 0;
                }

                v50 = malloc_type_calloc(v57, 0x14uLL, 0x1000040A86A77D5uLL);
                *(v7 + 136) = v50;
                if (v50)
                {
                  v51 = 0;
                  v52 = 0;
                  while (SLFRead(v8, 20, &__dst, &v59) != 8 && v59 == 20)
                  {
                    v54 = 0;
                    v55 = *(v7 + 136) + v51;
                    v56 = &__dst + 1;
                    do
                    {
                      *(v55 + 2 * v54++) = bswap32(*(v56 - 1)) >> 16;
                      v56 += 2;
                    }

                    while (v54 != 10);
                    result = 0;
                    ++v52;
                    v51 += 20;
                    if (v52 == v57)
                    {
                      return result;
                    }
                  }

LABEL_25:
                  v9 = 182;
LABEL_26:
                  v10 = 112;
                  goto LABEL_27;
                }

                goto LABEL_81;
              }
            }
          }

          v9 = 184;
        }

        else
        {
          v9 = 183;
        }
      }

      else
      {
        v9 = 182;
      }
    }

    else
    {
      v9 = 180;
    }

LABEL_6:
    v10 = 120;
    goto LABEL_27;
  }

  return 0;
}

uint64_t PRExprLoad(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 108);
  if (!v4)
  {
    return 0;
  }

  v41 = 0;
  v9 = *(a2 + 104);
  if (a4)
  {
    v10 = *(a2 + 96);
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x30040D3A788E3uLL);
    *(a2 + 96) = v10;
    if (!v10)
    {
      v12 = 240;
      goto LABEL_22;
    }
  }

  v11 = *(a2 + 40);
  if (SLSeek(v11, v4, 0))
  {
    v12 = 241;
    v13 = 111;
LABEL_24:
    v21 = *(a1 + 32);
    result = 220;
    *v21 = v13;
    *(v21 + 4) = 220;
    *(v21 + 8) = v12;
    return result;
  }

  v14 = 0;
  if (v9 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v9;
  }

  v38 = v15;
  while (1)
  {
    if (SLFRead(v11, 6, __dst, &v41) == 8)
    {
      v12 = 240;
      v13 = 112;
      goto LABEL_24;
    }

    v16 = __rev16(__dst[0]);
    v17 = (v43 << 8) | v44;
    v18 = *(a2 + 16) & 0xF0;
    if (v18 == 32 && *(a2 + 20) == 16)
    {
      v18 = 64;
    }

    if (v16 == v18)
    {
      break;
    }

    if (v9 <= ++v14)
    {
      v14 = v38;
      break;
    }

    v20 = v4 + v17;
    v4 += v17 + 6;
    if (SLSeek(v11, v20 + 6, 0))
    {
      v12 = 241;
      v13 = 111;
      goto LABEL_24;
    }
  }

  if (v16 && v9 <= v14)
  {
    return 8;
  }

  if (a4)
  {
    v23 = *v10;
  }

  else
  {
    v23 = malloc_type_calloc(1uLL, (v43 << 8) | v44, 0x7B25B1B7uLL);
    *v10 = v23;
    if (!v23)
    {
      v12 = 241;
      goto LABEL_22;
    }
  }

  v24 = SLFRead(v11, v17, v23, &v41);
  v12 = 240;
  v13 = 112;
  if (v24 || v41 != v17)
  {
    goto LABEL_24;
  }

  if (!a4)
  {
    v34 = malloc_type_calloc(1uLL, 0x180uLL, 0x1030040CE42941AuLL);
    v10[2] = v34;
    if (v34)
    {
      v35 = malloc_type_calloc(1uLL, 32 * v23[7] + 32, 0x102004038FAAB91uLL);
      v10[1] = v35;
      if (v35)
      {
        goto LABEL_35;
      }

      v12 = 243;
    }

    else
    {
      v12 = 242;
    }

LABEL_22:
    v13 = 120;
    goto LABEL_24;
  }

LABEL_35:
  if (*(a2 + 20) != 8)
  {
    return 0;
  }

  v36 = v23[12];
  v37 = v23[13];
  v39 = v23;
  v25 = __rev16(*(v23 + 7));
  v40 = __rev16(*(v23 + 5));
  if (v40)
  {
    v26 = 0;
    LOWORD(v27) = 0;
    v28 = &v23[__rev16(*(v23 + 4))];
    do
    {
      v30 = *v28++;
      v29 = v30;
      if (v30)
      {
        v31 = 0;
        do
        {
          v32 = *v28;
          if (v32 <= 0x1B)
          {
            if (v32 == 24)
            {
              LOWORD(v27) = 3;
            }

            if (v32 == 23)
            {
              LOWORD(v27) = 3;
            }

            if (v32 - 25 < 3)
            {
              LOWORD(v27) = 4;
            }
          }

          else if (v32 - 28 >= 0xC)
          {
            if (v32 == 43)
            {
              LOWORD(v27) = 1;
            }

            if (v32 == 42)
            {
              LOWORD(v27) = 6;
            }
          }

          else
          {
            v27 = ActionStringLength(v28 + 1, a3) + 1;
          }

          ++v31;
          v28 += v27;
        }

        while (v31 < v29);
      }

      ++v26;
    }

    while (v26 < v40);
  }

  if (!v25)
  {
    return 0;
  }

  v33 = &v39[256 * v36 + 1 + v37];
  do
  {
    AssignSeparator(&v39[__rev16(*(v33 - 1))], a3);
    result = 0;
    v33 += 2;
    --v25;
  }

  while (v25);
  return result;
}

char *AssignSeparator(char *result, int a2)
{
  v2 = *result;
  if (v2 > 0x10)
  {
    switch(v2)
    {
      case 0x13u:
        v4 = 46;
        v6 = (a2 & 4) == 0;
        v7 = 58;
        break;
      case 0x12u:
        v4 = 58;
        v6 = (a2 & 4) == 0;
        v7 = 46;
        break;
      case 0x11u:
        goto LABEL_9;
      default:
        return result;
    }

    if (v6)
    {
      v7 = v4;
    }

    if ((a2 & 2) != 0)
    {
      v4 = v7;
    }

    goto LABEL_19;
  }

  if (v2 - 15 < 2)
  {
    v3 = a2 == 0;
    v4 = 46;
    v5 = 44;
    goto LABEL_10;
  }

  if (v2 == 14)
  {
LABEL_9:
    v3 = a2 == 0;
    v4 = 44;
    v5 = 46;
LABEL_10:
    if (v3)
    {
      v4 = v5;
    }

LABEL_19:
    *result = v4;
  }

  return result;
}

uint64_t ActionStringLength(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = a1 + 1;
    v6 = 1;
    do
    {
      v7 = *v5;
      if (v7 > 0x27)
      {
        if (v7 == 40)
        {
          v11 = v5 + 1;
          if (v5[1])
          {
            v12 = 0;
            v13 = (v5 + 2);
            do
            {
              AssignSeparator(v13, a2);
              ++v12;
              v14 = *v11;
              ++v13;
            }

            while (v12 < v14);
          }

          else
          {
            v14 = 0;
          }

          v15 = &v11[v14];
          v17 = v15[1];
          v16 = v15 + 1;
          if (v17)
          {
            v18 = 0;
            v19 = (v16 + 1);
            do
            {
              AssignSeparator(v19, a2);
              ++v18;
              v20 = *v16;
              ++v19;
            }

            while (v18 < v20);
            v21 = v20 + 1;
          }

          else
          {
            v21 = 1;
          }

          LODWORD(v8) = ActionStringLength(&v16[v21], a2) + v14 + 2 + v21;
        }

        else if (v7 == 41)
        {
          LOWORD(v8) = 3;
        }

        else
        {
          LOWORD(v8) = 0;
        }
      }

      else if (*v5)
      {
        if (v7 == 5)
        {
          LOWORD(v8) = 2;
        }

        else
        {
          LOWORD(v8) = 0;
        }
      }

      else
      {
        LOWORD(v8) = v5[1];
        if (v5[1])
        {
          v9 = 0;
          v10 = (v5 + 2);
          do
          {
            AssignSeparator(v10, a2);
            ++v9;
            v8 = v5[1];
            ++v10;
          }

          while (v9 < v8);
        }

        LOWORD(v8) = v8 + 2;
      }

      v6 += v8;
      ++v4;
      v5 += v8;
    }

    while (v4 < v2);
  }

  else
  {
    return 1;
  }

  return v6;
}

uint64_t SetFarTable(void *a1, size_t size, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6, uint64_t a7, int a8)
{
  v14 = size;
  v23 = 0;
  v16 = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
  *a1 = v16;
  if (!v16)
  {
    v19 = 120;
LABEL_8:
    v22 = *(a7 + 32);
    result = 220;
    *v22 = v19;
    *(v22 + 4) = 220;
    *(v22 + 8) = 440;
    return result;
  }

  v17 = v16;
  if (a5 == 513)
  {
    v18 = *a6;
  }

  else
  {
    v18 = bswap32(*(a4 + a5));
    *a6 = v18;
  }

  SLSeek(a3, v18 + a8, 0);
  v20 = SLFRead(a3, v14, v17, &v23);
  v19 = 112;
  if (v20 == 8)
  {
    goto LABEL_8;
  }

  result = 0;
  if (v23 != v14)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t SetHugeTable(char **a1, size_t count, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v12 = count;
  v19 = 0;
  v14 = malloc_type_calloc(count, 1uLL, 0x16217F7DuLL);
  *a1 = v14;
  if (v14)
  {
    v15 = v14;
    SLSeek(a3, bswap32(*(a4 + a5)) + a7, 0);
    result = SLHRead(a3, v12, v15, &v19);
    if (!result)
    {
      return result;
    }

    v17 = 112;
  }

  else
  {
    v17 = 120;
  }

  v18 = *(a6 + 32);
  result = 220;
  *v18 = v17;
  *(v18 + 4) = 220;
  *(v18 + 8) = 440;
  return result;
}

uint64_t PRGetDbElem(unsigned int a1, unsigned int a2)
{
  result = PRGetAppElem(a1);
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*result + 8 * a2);
    }
  }

  return result;
}

uint64_t PRDbTerm(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 128);
  *v4 = 2;
  ICspl("", v4);
  free(*(a2 + 128));
  PRloadProfile(a1, a2, 0, 0, 0);
  v5 = *(a2 + 48);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      free(v6);
    }

    v7 = *(v5 + 32);
    if (v7)
    {
      free(v7);
    }

    v8 = *(v5 + 40);
    if (v8)
    {
      free(v8);
    }

    v9 = *(v5 + 48);
    if (v9)
    {
      free(v9);
    }

    v10 = *(v5 + 64);
    if (v10)
    {
      free(v10);
    }

    v11 = *(v5 + 80);
    if (v11)
    {
      free(v11);
    }

    v12 = *(v5 + 96);
    if (v12)
    {
      free(v12);
    }

    v13 = *(v5 + 112);
    if (v13)
    {
      free(v13);
    }

    v14 = *(v5 + 128);
    if (v14)
    {
      free(v14);
    }

    v15 = *(v5 + 144);
    if (v15)
    {
      free(v15);
    }

    v16 = *(v5 + 160);
    if (v16)
    {
      free(v16);
    }

    v17 = *(v5 + 176);
    if (v17)
    {
      free(v17);
    }

    v18 = *(v5 + 184);
    if (v18)
    {
      free(v18);
    }

    v19 = *(v5 + 200);
    if (v19)
    {
      free(v19);
    }

    v20 = *(v5 + 208);
    if (v20)
    {
      free(v20);
    }

    v21 = *(v5 + 216);
    if (v21)
    {
      free(v21);
    }

    v22 = *(v5 + 224);
    if (v22)
    {
      free(v22);
    }

    v23 = *(v5 + 232);
    if (v23)
    {
      free(v23);
    }

    v24 = *(v5 + 248);
    if (v24)
    {
      free(v24);
    }

    v25 = *(v5 + 304);
    if (v25)
    {
      free(v25);
    }

    v26 = *(v5 + 312);
    if (v26)
    {
      if (*v26)
      {
        free(*v26);
      }

      v27 = *(v26 + 8);
      if (v27)
      {
        free(v27);
        *(v26 + 8) = 0;
      }

      free(*(v5 + 312));
    }

    v28 = *(v5 + 256);
    if (v28)
    {
      free(v28);
    }

    v29 = *(v5 + 272);
    if (v29)
    {
      free(v29);
    }

    v30 = *(v5 + 328);
    if (v30)
    {
      free(v30);
    }

    v31 = *(v5 + 288);
    if (v31)
    {
      free(v31);
    }

    v32 = *(a2 + 20);
    if (v32 == 18 || v32 == 4)
    {
      SLClose(*v5);
    }

    free(*(a2 + 48));
  }

  v33 = *(a2 + 72);
  if (v33)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      free(v34);
    }

    v35 = *(v33 + 24);
    if (v35)
    {
      free(v35);
    }

    free(*(a2 + 72));
  }

  v36 = *(a2 + 56);
  if (v36)
  {
    if (v36[1])
    {
      free(v36[1]);
      v36 = *(a2 + 56);
    }

    free(v36);
  }

  v37 = *(a2 + 64);
  if (v37)
  {
    if (v37[1])
    {
      free(v37[1]);
      v37 = *(a2 + 64);
    }

    free(v37);
  }

  PRPunTerm(a2);
  PRExprTerm(a2);
  v38 = *(a2 + 112);
  if (v38)
  {
    free(*(v38 + 8));
    free(*(v38 + 16));
    free(*(a2 + 112));
  }

  v39 = *(a2 + 120);
  if (v39)
  {
    v40 = *(v39 + 16);
    if (v40)
    {
      free(v40);
    }

    v41 = *(v39 + 24);
    if (v41)
    {
      free(v41);
    }

    free(*(a2 + 120));
  }

  return 0;
}

uint64_t PRPunTerm(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v3 = v1[133];
    if (v3)
    {
      free(v3);
    }

    v4 = v1[134];
    if (v4)
    {
      free(v4);
    }

    v5 = v1[135];
    if (v5)
    {
      free(v5);
    }

    v6 = v1[136];
    if (v6)
    {
      free(v6);
    }

    v7 = v1[138];
    if (v7)
    {
      free(v7);
    }

    v8 = v1[139];
    if (v8)
    {
      free(v8);
    }

    v9 = v1[140];
    if (v9)
    {
      free(v9);
    }

    free(*(a1 + 80));
  }

  return 0;
}

uint64_t PRExprTerm(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    free(*v1);
    free(v1[1]);
    free(v1[2]);
    free(*(a1 + 96));
  }

  return 0;
}

uint64_t PRdecomp(char *a1, int a2, _BYTE *a3)
{
  v6 = malloc_type_malloc((a2 + 1), 0x100004077774924uLL);
  if (!v6)
  {
    return 120;
  }

  v7 = v6;
  if (a2)
  {
    v8 = 0;
    v9 = a3;
    v10 = a1;
    v11 = v6;
    while (2)
    {
      v12 = *v10;
      v13 = 8;
      do
      {
        v14 = __rev16(*&v9[2 * ((v12 & 0x80) == 0)]);
        v15 = &a3[4 * v14 + v14];
        v9 = v15 - 5;
        if (!*(v15 - 4) && !*v9)
        {
          v16 = *(v15 - 1);
          if (v16 == 10)
          {
            *v11++ = 13;
          }

          *v11++ = v16;
          if (++v8 == a2)
          {
            *v11 = 0;
            strcpy(a1, v6);
            v17 = 0;
            goto LABEL_16;
          }

          v9 = a3;
        }

        v12 *= 2;
        --v13;
      }

      while (v13);
      if (++v10 < &a1[a2])
      {
        continue;
      }

      break;
    }
  }

  v17 = 115;
LABEL_16:
  free(v7);
  return v17;
}

uint64_t PRDerive(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v13 = a4;
  v14 = a3;
  v15 = *(a3 + 136);
  v16 = ((*(a3 + 92) >> 17) & 1) + v15;
  if (((*(a3 + 92) >> 17) & 1) + v15)
  {
    v17 = *(a3 + 144);
    v18 = v16;
  }

  else
  {
    if (*(a3 + 128))
    {
      v17 = a3 + 128;
    }

    else
    {
      v17 = a3 + 16;
    }

    v18 = 1;
  }

  v112 = v18;
  v124 = 0;
  v119 = a5;
  v121 = v17;
  v114 = v16;
  if (a4 > 69)
  {
    if (a4 > 119)
    {
      v19 = 0;
      LOWORD(v20) = 0;
      if (a4 == 120)
      {
LABEL_95:
        if (v114)
        {
LABEL_124:
          LOWORD(v21) = v20;
          goto LABEL_125;
        }

        v80 = v14;
        v81 = *(v14 + 104);
        if (v81)
        {
          v82 = *(a2 + 20);
          if (v82 <= 0xB && ((1 << v82) & 0x8C0) != 0)
          {
            v83 = v19;
            v84 = strlen(v81);
            *(a8 + 2 * v20) = v84 + 1;
            v85 = (v119 + 2 * v20);
            SLfun(v81, 0, (v84 - 1), v85, (a6 + 2 * v20));
            v19 = v83;
            v86 = ((*v85 & 0x7F) << 8) + 19 * (*v85 >> 7);
            v87 = v86 + 64;
            v88 = v86 - 32685;
            if (v87 <= 0x7FECu)
            {
              v88 = v87;
            }

            *v85 = v88;
            *(a6 + 2 * v20) = (v88 ^ *(a6 + 2 * v20)) & 0x7FFF;
            *(a9 + 2 * v20) = -1;
            *(a7 + v20) = 0;
            *(a10 + 2 * v20) = 120;
            LOWORD(v20) = v20 + 1;
          }
        }

        v14 = v80;
LABEL_103:
        v89 = *(v14 + 112);
        if (v89 && (*(a2 + 20) & 0xFE) == 6)
        {
          v90 = v19;
          v91 = strlen(*(v14 + 112));
          v92 = v91;
          *(a8 + 2 * v20) = v91 + 2;
          *(a6 + 2 * v20) = 0;
          *(v119 + 2 * v20) = 64;
          *(a6 + 2 * v20) = *(a6 + 2 * v20) & 0x7FFF ^ 0x40;
          if (v91)
          {
            v93 = v91;
            do
            {
              v94 = *v89++;
              v95 = v94 + 19 * (*(v119 + 2 * v20) >> 7) + ((*(v119 + 2 * v20) & 0x7F) << 8);
              if (v95 > 0x7FEC)
              {
                LOWORD(v95) = v95 - 32749;
              }

              *(v119 + 2 * v20) = v95;
              *(a6 + 2 * v20) = (v95 ^ *(a6 + 2 * v20)) & 0x7FFF;
              --v93;
            }

            while (v93);
          }

          v96 = ((*(v119 + 2 * v20) & 0x7F) << 8) + 19 * (*(v119 + 2 * v20) >> 7);
          v97 = v96 + 42;
          v98 = v96 - 32707;
          if (v97 <= 0x7FECu)
          {
            v98 = v97;
          }

          *(v119 + 2 * v20) = v98;
          *(a6 + 2 * v20) = (v98 ^ *(a6 + 2 * v20)) & 0x7FFF;
          *(a9 + 2 * v20) = -1;
          *(a7 + v20) = 0;
          *(a10 + 2 * v20) = 140;
          LOWORD(v21) = v20 + 1;
          if (!v90)
          {
            result = PRSfxGet(*(v14 + 112), 1, v123, v122, &v124, a2);
            if (result)
            {
              return result;
            }

            v99 = v124;
            if (v124)
            {
              v100 = 0;
              v101 = 64;
              v102 = 64;
              do
              {
                for (i = (v92 - v123[--v99]); i > v100; ++v100)
                {
                  v101 = ((v101 & 0x7F) << 8) + 19 * (v101 >> 7) + *(*(v14 + 112) + v100);
                  if (v101 > 0x7FECu)
                  {
                    v101 -= 32749;
                  }

                  v102 = (v101 ^ v102) & 0x7FFF;
                }

                *(a8 + 2 * v21) = v100 + 2;
                *(v119 + 2 * v21) = v101;
                *(a6 + 2 * v21) = v102;
                v104 = *(v119 + 2 * v21);
                v105 = ((v104 & 0x7F) << 8) + 19 * (v104 >> 7);
                v106 = v105 + 42;
                v107 = v105 - 32707;
                if (v106 <= 0x7FECu)
                {
                  v107 = v106;
                }

                *(v119 + 2 * v21) = v107;
                *(a6 + 2 * v21) = (v107 ^ *(a6 + 2 * v21)) & 0x7FFF;
                *(a9 + 2 * v21) = -1;
                *(a7 + v21) = v122[v99];
                *(a10 + 2 * v21) = 140;
                LOWORD(v21) = v21 + 1;
                v124 = v99;
              }

              while (v99);
            }
          }

          goto LABEL_125;
        }

        goto LABEL_124;
      }

      if (a4 != 140)
      {
LABEL_29:
        v32 = *(a1 + 32);
        *v32 = 0xDC00000068;
        *(v32 + 8) = 60;
        return 230;
      }

      if (!v114)
      {
        v19 = 0;
        LOWORD(v20) = 0;
        goto LABEL_103;
      }

      LOWORD(v21) = 0;
    }

    else
    {
      if (a4 != 70)
      {
        v19 = 0;
        LOWORD(v20) = 0;
        if (a4 != 100)
        {
          goto LABEL_29;
        }

LABEL_82:
        if (!v114)
        {
          v73 = *(v14 + 112);
          if (v73)
          {
            v74 = *(a2 + 20);
            if (v74 <= 0xB && ((1 << v74) & 0x8C0) != 0)
            {
              v75 = v19;
              *(a6 + 2 * v20) = 0;
              *(a5 + 2 * v20) = 0;
              *(a8 + 2 * v20) = strlen(v73) + 1;
              v76 = ((*(v119 + 2 * v20) & 0x7F) << 8) + 19 * (*(v119 + 2 * v20) >> 7);
              v77 = v76 + 64;
              if ((v76 + 64) > 0x7FECu)
              {
                v77 = v76 - 32685;
              }

              *(v119 + 2 * v20) = v77;
              *(a6 + 2 * v20) = (v77 ^ *(a6 + 2 * v20)) & 0x7FFF;
              if (*(a8 + 2 * v20) != 1)
              {
                v78 = 0;
                do
                {
                  v79 = v73[v78] + 19 * (*(v119 + 2 * v20) >> 7) + ((*(v119 + 2 * v20) & 0x7F) << 8);
                  if (v79 > 0x7FEC)
                  {
                    LOWORD(v79) = v79 - 32749;
                  }

                  *(v119 + 2 * v20) = v79;
                  *(a6 + 2 * v20) = (v79 ^ *(a6 + 2 * v20)) & 0x7FFF;
                  ++v78;
                }

                while (v78 < (*(a8 + 2 * v20) - 1));
              }

              *(a9 + 2 * v20) = -1;
              *(a7 + v20) = 0;
              *(a10 + 2 * v20) = 100;
              LOWORD(v20) = v20 + 1;
              v19 = v75;
            }
          }
        }

        LOWORD(v21) = v20;
        if (v13 == 100)
        {
          goto LABEL_125;
        }

        goto LABEL_95;
      }

      LOBYTE(v34) = 0;
      LOWORD(v20) = 0;
LABEL_57:
      v118 = v34;
      v109 = v14;
      if ((*(a2 + 20) & 0xFE) == 6)
      {
        v54 = 0;
        v55 = v20;
        do
        {
          v56 = v54;
          v57 = *(v17 + 8 * v54);
          v58 = strlen(v57);
          v59 = v58;
          v20 = v55;
          *(a8 + 2 * v55) = v58 + 1;
          *(a6 + 2 * v55) = 0;
          *(v119 + 2 * v55) = 42;
          *(a6 + 2 * v55) = *(a6 + 2 * v55) & 0x7FFF ^ 0x2A;
          v60 = v58;
          if (v58)
          {
            v61 = v58;
            do
            {
              v62 = *v57++;
              v63 = v62 + 19 * (*(v119 + 2 * v20) >> 7) + ((*(v119 + 2 * v20) & 0x7F) << 8);
              if (v63 > 0x7FEC)
              {
                LOWORD(v63) = v63 - 32749;
              }

              *(v119 + 2 * v20) = v63;
              *(a6 + 2 * v20) = (v63 ^ *(a6 + 2 * v20)) & 0x7FFF;
              --v61;
            }

            while (v61);
          }

          v64 = v114 ? v56 : -1;
          *(a9 + 2 * v20) = v64;
          *(a7 + v20) = 0;
          *(a10 + 2 * v20) = 70;
          result = PRSfxGet(*(v121 + 8 * v56), 0, v123, v122, &v124, a2);
          if (result)
          {
            return result;
          }

          v65 = v124;
          LOWORD(v20) = v20 + 1;
          if (v124)
          {
            a5 = v119;
            v17 = v121;
            do
            {
              v66 = v123[--v65];
              if (v60 <= v66)
              {
                v70 = 42;
                v69 = 42;
                v72 = v123[v65];
              }

              else
              {
                v67 = (*(v121 + 8 * v56) + v123[v65]);
                v68 = v59 - v123[v65];
                v69 = 42;
                v70 = 42;
                do
                {
                  v71 = *v67++;
                  v69 = ((v69 & 0x7F) << 8) + 19 * (v69 >> 7) + v71;
                  if (v69 > 0x7FECu)
                  {
                    v69 -= 32749;
                  }

                  v70 ^= v69 & 0x7FFF;
                  --v68;
                }

                while (v68);
                v72 = v59;
              }

              *(a8 + 2 * v20) = v72 - v66 + 1;
              *(v119 + 2 * v20) = v69;
              *(a6 + 2 * v20) = v70;
              *(a9 + 2 * v20) = v64;
              *(a7 + v20) = v122[v65];
              *(a10 + 2 * v20) = 70;
              v124 = v65;
              LOWORD(v20) = v20 + 1;
            }

            while (v65);
          }

          else
          {
            a5 = v119;
            v17 = v121;
          }

          v54 = v56 + 1;
          v55 = v20;
        }

        while (v112 > (v56 + 1));
      }

      LOWORD(v21) = v20;
      v14 = v109;
      v19 = v118;
      if (v13 != 70)
      {
        goto LABEL_82;
      }
    }

LABEL_125:
    result = 0;
    *a11 = v21;
    return result;
  }

  if (a4 == 10 || a4 == 20)
  {
    v22 = 0;
    do
    {
      while (1)
      {
        v23 = *(v17 + 8 * v22);
        v24 = strlen(v23);
        *(a8 + 2 * v22) = v24;
        SLfun(v23, 0, (v24 - 1), (v119 + 2 * v22), (a6 + 2 * v22));
        if (v16)
        {
          break;
        }

        *(a9 + 2 * v22) = -1;
        *(a7 + v22) = 0;
        v17 = v121;
        *(a10 + 2 * v22++) = 20;
        if (v22 == v112)
        {
          v21 = v112;
          a5 = v119;
          v26 = a4;
          goto LABEL_34;
        }
      }

      v25 = v22;
      *(a9 + 2 * v22) = v22;
      *(a7 + v22) = 0;
      v17 = v121;
      *(a10 + 2 * v22++) = 20;
    }

    while (v22 != v112);
    v21 = v112;
    a5 = v119;
    v26 = a4;
    if ((*(*(v14 + 152) + 94) & 2) == 0)
    {
      *(a9 + 2 * v112) = -1;
      *(a7 + v112) = 0;
      v27 = *(v14 + 152);
      v28 = *(v27 + 128);
      if (v28)
      {
        v29 = strlen(*(v27 + 128));
        *(a8 + 2 * v112) = v29;
        v30 = (v29 - 1);
        v31 = v28;
      }

      else
      {
        v35 = *(v27 + 32);
        *(a8 + 2 * v112) = v35;
        v31 = *(v27 + 16);
        v30 = (v35 - 1);
      }

      SLfun(v31, 0, v30, (v119 + 2 * v112), (a6 + 2 * v112));
      v17 = v121;
      *(a10 + 2 * v112) = 30;
      v21 = v25 + 2;
      a5 = v119;
    }

LABEL_34:
    if (v26 == 20)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v21 = 0;
    if (a4 != 50)
    {
      goto LABEL_29;
    }
  }

  v108 = v14;
  v36 = 0;
  v34 = 0;
  LODWORD(v20) = v21;
  v111 = a8;
  while (1)
  {
    v117 = v34;
    v37 = v36;
    v115 = *(v17 + 8 * v36);
    v116 = v36;
    v38 = a5;
    v39 = strlen(v115);
    *(a8 + 2 * v20) = v39 + 1;
    v40 = (v38 + 2 * v20);
    SLfun(v115, 0, (v39 - 1), v40, (a6 + 2 * v20));
    v41 = ((*v40 & 0x7F) << 8) + 19 * (*v40 >> 7);
    v42 = v41 + 42;
    v43 = v41 - 32707;
    if (v42 <= 0x7FECu)
    {
      v43 = v42;
    }

    *v40 = v43;
    *(a6 + 2 * v20) = (v43 ^ *(a6 + 2 * v20)) & 0x7FFF;
    v44 = v114 ? v116 : -1;
    *(a9 + 2 * v20) = v44;
    *(a7 + v20) = 0;
    *(a10 + 2 * v20) = 50;
    result = PRSfxGet(*(v121 + 8 * v37), 1, v123, v122, &v124, a2);
    if (result)
    {
      return result;
    }

    v45 = v124;
    v34 = v117;
    if (!v124)
    {
      v34 = 1;
    }

    LODWORD(v20) = v20 + 1;
    if (v124)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      a8 = v111;
      a5 = v119;
      v17 = v121;
      do
      {
        for (j = (v39 - v123[--v45]); j > v46; ++v46)
        {
          v47 = ((v47 & 0x7F) << 8) + 19 * (v47 >> 7) + *(*(v121 + 8 * v37) + v46);
          if (v47 > 0x7FECu)
          {
            v47 -= 32749;
          }

          v48 = (v47 ^ v48) & 0x7FFF;
        }

        *(v111 + 2 * v20) = v46 + 1;
        *(v119 + 2 * v20) = v47;
        *(a6 + 2 * v20) = v48;
        v50 = *(v119 + 2 * v20);
        v51 = ((v50 & 0x7F) << 8) + 19 * (v50 >> 7);
        v52 = v51 + 42;
        v53 = v51 - 32707;
        if (v52 <= 0x7FECu)
        {
          v53 = v52;
        }

        *(v119 + 2 * v20) = v53;
        *(a6 + 2 * v20) = (v53 ^ *(a6 + 2 * v20)) & 0x7FFF;
        *(a9 + 2 * v20) = v44;
        *(a7 + v20) = v122[v45];
        *(a10 + 2 * v20) = 50;
        v124 = v45;
        LODWORD(v20) = v20 + 1;
      }

      while (v45);
    }

    else
    {
      a8 = v111;
      a5 = v119;
      v17 = v121;
    }

    v36 = v37 + 1;
    if (v112 <= (v37 + 1))
    {
      LOWORD(v21) = v20;
      v13 = a4;
      v14 = v108;
      if (a4 == 50)
      {
        goto LABEL_125;
      }

      goto LABEL_57;
    }
  }
}

uint64_t PRerr(unsigned __int8 *a1, int a2, int a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v49 = 0;
  *(a1 + 21) = 0;
  *(a1 + 22) = 0;
  v4 = a1 + 84;
  *(a1 + 46) = 0;
  if (!*(a1 + 1))
  {
    v27 = 0xE6FFFFFF8ALL;
LABEL_64:
    *(a1 + 84) = v27;
    v28 = 540;
    goto LABEL_65;
  }

  v7 = PRGetAppElem(*a1);
  if (!v7)
  {
    *(a1 + 84) = 0xE6FFFFFF93;
    v28 = 480;
LABEL_65:
    *(a1 + 46) = v28;
    return 230;
  }

  v8 = v7;
  *(v7 + 32) = v4;
  v9 = PRGetDbElem(*a1, a1[1]);
  if (!v9)
  {
    v27 = 0xE6FFFFFF92;
    goto LABEL_64;
  }

  v10 = v9;
  v50 = 0;
  v48 = 0;
  v11 = *(v9 + 8);
  v12 = *(v9 + 48);
  v13 = a1[80];
  v14 = *(a1 + 48);
  v15 = (v14 & 0xF0) == 0x20 && v13 == 16;
  v16 = v14 & 0xF0;
  if (v15)
  {
    v16 = 64;
  }

  if (v13 == 13 && v16 == 32)
  {
    v16 = 0x80;
  }

  if (v13 == 13 && v16 == 16)
  {
    v17 = 64;
  }

  else
  {
    v17 = v16;
  }

  PRLangDialPos(*(v9 + 48), &v50, 1, a1[80], v17);
  v18 = *(a1 + 1);
  v19 = v18[12];
  v20 = v18[13];
  v21 = a1[16];
  switch(a2)
  {
    case 18:
      if (a3)
      {
        v27 = 0xE6FFFFFF94;
        goto LABEL_64;
      }

      AltEmOff = GetAltEmOff(v12, v51, v19, v20, v50);
      if (AltEmOff)
      {
        v22 = AltEmOff;
        goto LABEL_53;
      }

      if (((v52 != 0) & (v21 >> 4)) != 0)
      {
        v39 = 16;
      }

      else
      {
        v39 = 0;
      }

      a1[16] = v39;
      if ((v21 & 4) != 0 && v53)
      {
        v39 |= 4u;
        a1[16] = v39;
      }

      result = 0;
      if ((v21 & 1) != 0 && v54)
      {
        result = 0;
        a1[16] = v39 | 1;
      }

      break;
    case 17:
      if (a3)
      {
        goto LABEL_45;
      }

      v29 = *(a1 + 3);
      if (v29)
      {
        free(v29);
        *(a1 + 3) = 0;
        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      v32 = *(a1 + 4);
      if (v32)
      {
        free(v32);
        *(a1 + 4) = 0;
        v22 = 1;
      }

      v33 = *(a1 + 5);
      if (v33)
      {
        free(v33);
        *(a1 + 5) = 0;
        v22 = 1;
      }

      v34 = *(a1 + 7);
      if (v34)
      {
        free(v34);
        *(a1 + 7) = 0;
        v22 = 1;
      }

      v35 = *(a1 + 8);
      if (!v35)
      {
        v38 = a1 + 72;
        result = *(a1 + 9);
        if (!result)
        {
          goto LABEL_145;
        }

LABEL_78:
        free(result);
        result = 0;
        *v38 = 0;
        return result;
      }

      free(v35);
      v37 = *(a1 + 9);
      v36 = a1 + 72;
      result = v37;
      *(v36 - 1) = 0;
      if (v37)
      {
        v38 = v36;
        goto LABEL_78;
      }

      break;
    case 16:
      if (a3 == 2)
      {
        v31 = a1[48];
        if ((v31 & 0x15) != 0)
        {
          if (((a1[48] & 0x10) == 0 || !*(a1 + 7)) && ((a1[48] & 4) == 0 || !*(a1 + 8)) && ((a1[48] & 1) == 0 || !*(a1 + 9)))
          {
            if (v18[32])
            {
              v40 = bswap32(*(*(v12 + 96) + 4 * v18[32] - 4));
            }

            else
            {
              v40 = 0;
            }

            if (v18[33])
            {
              v41 = bswap32(*(*(v12 + 96) + 4 * v18[33] - 4));
            }

            else
            {
              v41 = 0;
            }

            v42 = v18[34];
            if (v42)
            {
              v43 = bswap32(*(*(v12 + 96) + 4 * v42 - 4));
            }

            else
            {
              v43 = 0;
            }

            v22 = 0;
            if ((a1[48] & 0x10) != 0 && v40)
            {
              v23 = PRgetWarn(a1 + 7, v40, v12, v13, v17, v11, v8, v10);
              if (v23)
              {
                goto LABEL_122;
              }

              v22 = 1;
            }

            if ((v31 & 4) != 0 && v41)
            {
              v23 = PRgetWarn(a1 + 8, v41, v12, v13, v17, v11, v8, v10);
              if (v23)
              {
                goto LABEL_122;
              }

              v22 = 1;
            }

            if ((v31 & 1) != 0 && v43)
            {
              v23 = PRgetWarn(a1 + 9, v43, v12, v13, v17, v11, v8, v10);
              if (v23)
              {
                goto LABEL_122;
              }

              v22 = 1;
            }

            if (((v31 & 0x10) == 0 || *(a1 + 7)) && ((v31 & 4) == 0 || *(a1 + 8)) && ((v31 & 1) == 0 || *(a1 + 9)))
            {
LABEL_145:
              if (v22)
              {
                return 0;
              }

              goto LABEL_45;
            }

LABEL_147:
            *(a1 + 84) = 0x4000001F8;
            *(a1 + 46) = 540;
            return 4;
          }

          goto LABEL_63;
        }
      }

      else if (a3 == 1 && (v21 & 0x15) != 0)
      {
        if (((v21 & 0x10) == 0 || !*(a1 + 3)) && ((v21 & 4) == 0 || !*(a1 + 4)) && ((v21 & 1) == 0 || !*(a1 + 5)))
        {
          v22 = GetAltEmOff(v12, v51, v19, v20, v50);
          if (!v22)
          {
            if ((v21 & 0x10) != 0 && v52)
            {
              v23 = PRgetmsg(&v49, v52, v12);
              if (v23)
              {
                goto LABEL_122;
              }

              inserted = InsertString(a1 + 3, *(a1 + 1), &v49, 1, v13, v11, v8, v10);
              if (inserted)
              {
LABEL_38:
                v25 = inserted;
                if (v49)
                {
                  free(v49);
                }

                result = 220;
                *(a1 + 21) = v25;
                *(a1 + 22) = 220;
                goto LABEL_55;
              }

              if (v13 == 16)
              {
                ConvertString(*(a1 + 3), v10);
              }

              v22 = 1;
            }

            if ((v21 & 4) == 0 || !v53)
            {
              goto LABEL_119;
            }

            v23 = PRgetmsg(&v49, v53, v12);
            if (!v23)
            {
              inserted = InsertString(a1 + 4, *(a1 + 1), &v49, 2, v13, v11, v8, v10);
              if (inserted)
              {
                goto LABEL_38;
              }

              if (v13 == 16)
              {
                ConvertString(*(a1 + 4), v10);
              }

              v22 = 1;
LABEL_119:
              if ((v21 & 1) == 0 || !v54)
              {
                goto LABEL_139;
              }

              v23 = PRgetmsg(a1 + 5, v54, v12);
              if (v23)
              {
                goto LABEL_122;
              }

              v48 = strlen(*(a1 + 5));
              v44 = *(v10 + 20);
              if (v44 == 6)
              {
                if (*(v10 + 16) != 64)
                {
LABEL_131:
                  if (*(v10 + 20) == 8 && (*(v10 + 18) & 0x40) != 0)
                  {
                    v47 = strlen(*(a1 + 5));
                    ToUpUnaccentedCnv(*(a1 + 5), v47, 8, v11);
                  }

                  if (*(v8 + 28))
                  {
                    SLchcnv(*(a1 + 5), v48, *(a1 + 5), 0, v13);
                  }

                  if (v13 == 16)
                  {
                    ConvertString(*(a1 + 5), v10);
                  }

                  v22 = 1;
LABEL_139:
                  if (((v21 & 0x10) == 0 || *(a1 + 3)) && ((v21 & 4) == 0 || *(a1 + 4)) && ((v21 & 1) == 0 || *(a1 + 5)))
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_147;
                }

                OneToMultiChrCnv(a1 + 5, &v48, 223, v8);
                v44 = *(v10 + 20);
              }

              if (v44 == 5)
              {
                v45 = *(v10 + 18);
                if ((v45 & 0x10) != 0)
                {
                  OneToMultiChrCnv(a1 + 5, &v48, 247, v8);
                  OneToMultiChrCnv(a1 + 5, &v48, 230, v8);
                  v45 = *(v10 + 18);
                }

                if ((v45 & 0x40) != 0)
                {
                  v46 = strlen(*(a1 + 5));
                  ToUpUnaccentedCnv(*(a1 + 5), v46, 5, v11);
                }
              }

              goto LABEL_131;
            }

LABEL_122:
            v22 = v23;
            result = 220;
            goto LABEL_54;
          }

LABEL_53:
          result = 230;
LABEL_54:
          *(a1 + 21) = v22;
          *(a1 + 22) = result;
LABEL_55:
          *(a1 + 46) = 540;
          return result;
        }

LABEL_63:
        v27 = 0xE6FFFFFF8CLL;
        goto LABEL_64;
      }

LABEL_45:
      v27 = 0xE6FFFFFF8BLL;
      goto LABEL_64;
    default:
      v27 = 0xE6FFFFFF95;
      goto LABEL_64;
  }

  return result;
}

uint64_t PRLangDialPos(uint64_t a1, _BYTE *a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 112);
  *a2 = 0;
  v6 = *(a1 + 25);
  if (*(a1 + 25))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = *v5;
      v14 = v5 + 2;
      v15 = *(v5 + 1);
      if (v5[1])
      {
        break;
      }

      if (v13 != a4)
      {
        if (a3)
        {
          *a2 = ++v11;
        }

LABEL_12:
        v5 = &v14[strlen(v14) + 1];
        if (v12++ < v6)
        {
          continue;
        }
      }

      return 0;
    }

    v16 = &v5[(v15 - 1) + 3];
    while (v13 != a4 || *v14 != a5)
    {
      --v15;
      ++v14;
      *a2 = ++v11;
      if (!v15)
      {
        v14 = v16;
        goto LABEL_12;
      }
    }
  }

  return 0;
}

uint64_t GetAltEmOff(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v23 = 0;
  if (!BinarySearch(*(a1 + 32), *(a1 + 26), 1, a3, 1, &v23))
  {
    return 115;
  }

  v9 = bswap32(*(*(a1 + 48) + 4 * (a4 + (bswap32(*(*(a1 + 40) + 2 * v23)) >> 16) - 1)));
  if (v9 == -1)
  {
    return 115;
  }

  v10 = 0;
  v11 = (*(a1 + 64) + v9);
  v12 = *v11;
  v13 = v12 >> 6;
  v24[0] = *v11 >> 6;
  do
  {
    v24[1] = (v12 >> 4) & 3;
    v24[2] = (v12 >> 2) & 3;
    v24[3] = v12 & 3;
    if (v10 != a5)
    {
      v24[0] = 0;
      v13 += (v12 & 3) + ((v12 >> 4) & 3) + ((v12 >> 2) & 3) + 1;
      v11 += v13;
      v12 = *v11;
    }
  }

  while (v10++ < a5);
  v15 = 0;
  v16 = v11 + 1;
  do
  {
    *(a2 + 4 * v15) = 0;
    v17 = v24[v15];
    if (v24[v15])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        *(a2 + 4 * v15) = v19 << 8;
        v20 = *v16++;
        v21 = v20 | (v19 << 8);
        *(a2 + 4 * v15) = v21;
        ++v18;
        v19 = v21;
      }

      while (v18 < v17);
      *(a2 + 4 * v15) = 4 * v21;
    }

    ++v15;
  }

  while (v15 != 4);
  return 0;
}