char *__cdecl _nc_rootname(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  v4 = strdup(&a1[v3 - a1]);
  v5 = v4;
  qword_2A1462BA8 = v4;
  v6 = *v4;
  if (*v4)
  {
    v7 = MEMORY[0x29EDCA600];
    v8 = v4;
    do
    {
      if ((v6 & 0x80) != 0)
      {
        if (!__maskrune(v6, 0x100uLL) || !__maskrune(v6, 0x8000uLL))
        {
LABEL_13:
          v10 = *v8;
          goto LABEL_14;
        }
      }

      else
      {
        v9 = *(v7 + 4 * v6 + 60);
        if ((v9 & 0x100) == 0 || (v9 & 0x8000) == 0)
        {
          goto LABEL_13;
        }
      }

      v10 = __tolower(v6);
LABEL_14:
      *v8 = v10;
      v11 = *++v8;
      v6 = v11;
    }

    while (v11);
  }

  return v5;
}

char *__cdecl _nc_basename(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  return &a1[v3 - a1];
}

BOOL _nc_is_abs_path(const char *a1)
{
  if (a1)
  {
    LOBYTE(a1) = *a1 == 47;
  }

  return a1;
}

unsigned int _nc_pathlast(const char *a1)
{
  v1 = a1;
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v1;
  }

  return v3 - v1;
}

uint64_t _nc_access(const char *a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if ((access(a1, a2) & 0x80000000) == 0)
  {
    return 0;
  }

  if ((v2 & 2) == 0 || *__error() != 2 || strlen(a1) > 0x3FF)
  {
    return 0xFFFFFFFFLL;
  }

  __strcpy_chk();
  v5 = strrchr(__s, 47);
  if (v5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = __s;
  }

  v7 = v6 - __s;
  __s[v7] = 0;
  if (!v7)
  {
    strcpy(__s, ".");
  }

  return access(__s, 7);
}

uint64_t _nc_add_to_try(void **a1, unsigned __int8 *a2, int a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a3;
  result = 0xFFFFFFFFLL;
  if (a3)
  {
    v6 = a2;
    v7 = *a2;
    if (*a2)
    {
      v8 = *a1;
      if (*a1)
      {
        v9 = *a1;
        while (1)
        {
          while (1)
          {
            v10 = v9;
            v11 = *(v9 + 16);
            if (v11)
            {
              break;
            }

            if (v7 != 128)
            {
              goto LABEL_8;
            }

LABEL_11:
            v12 = *++v6;
            v7 = v12;
            if (!v12)
            {
              goto LABEL_31;
            }

            v9 = *v10;
            if (!*v10)
            {
              goto LABEL_22;
            }
          }

          if (v11 == v7)
          {
            goto LABEL_11;
          }

LABEL_8:
          v9 = v10[1];
          if (!v9)
          {
            v13 = calloc(1uLL, 0x18uLL);
            v10[1] = v13;
            if (!v13)
            {
              return 0xFFFFFFFFLL;
            }

            goto LABEL_18;
          }
        }
      }

      v13 = calloc(1uLL, 0x18uLL);
      *a1 = v13;
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_18:
      v8 = v13;
      v14 = *v6;
      if (v14 == 128)
      {
        LOBYTE(v14) = 0;
      }

      *(v13 + 16) = v14;
      *(v13 + 9) = 0;
      if (*++v6)
      {
        v10 = v13;
LABEL_22:
        v16 = v6 + 1;
        v17 = v10;
        while (1)
        {
          v18 = calloc(1uLL, 0x18uLL);
          *v17 = v18;
          if (!v18)
          {
            break;
          }

          v10 = v18;
          v19 = *(v16 - 1);
          if (v19 == 128)
          {
            LOBYTE(v19) = 0;
          }

          v18[16] = v19;
          *(v18 + 9) = 0;
          v20 = *v16++;
          v17 = v18;
          if (!v20)
          {
            goto LABEL_31;
          }
        }

        do
        {
          v21 = *v8;
          free(v8);
          v8 = v21;
        }

        while (v21);
        return 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v13;
LABEL_31:
        result = 0;
        *(v10 + 9) = v3;
      }
    }
  }

  return result;
}

void _nc_init_entry(TERMTYPE *const a1)
{
  if (!qword_2A1462BB0)
  {
    qword_2A1462BB0 = calloc(0x1000uLL, 1uLL);
    if (!qword_2A1462BB0)
    {
      _nc_err_abort("Out of memory");
    }
  }

  qword_2A1462BB8 = 0;

  _nc_init_termtype(a1);
}

_ENTRY *__cdecl _nc_copy_entry(_ENTRY *oldp)
{
  v2 = calloc(1uLL, 0x400uLL);
  v3 = v2;
  if (v2)
  {
    memcpy(v2, oldp, sizeof(_ENTRY));
    _nc_copy_termtype(&v3->tterm, &oldp->tterm);
  }

  return v3;
}

char *__cdecl _nc_save_str(const char *const a1)
{
  v2 = strlen(a1);
  if (v2 || !qword_2A1462BB8)
  {
    v4 = v2 + 1;
    if (v2 + 1 + qword_2A1462BB8 <= 0xFFF)
    {
      result = strcpy((qword_2A1462BB0 + qword_2A1462BB8), a1);
      qword_2A1462BB8 += v4;
      return result;
    }

    _nc_warning("Too much data, some is lost: %s", a1);
  }

  else if (qword_2A1462BB8 <= 0xFFF)
  {
    return (qword_2A1462BB0 + qword_2A1462BB8 - 1);
  }

  return 0;
}

void _nc_wrap_entry(_ENTRY *const a1, BOOL a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v5 = v2;
  v50 = *MEMORY[0x29EDCA608];
  v6 = *(v2 + 72);
  if (v3)
  {
    qword_2A1462BB8 = 0;
    *v2 = _nc_save_str(*v2);
    v7 = *(v5 + 60);
    if (*(v5 + 60))
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 32) + 8 * v8);
        if ((v9 + 1) >= 2)
        {
          *(*(v5 + 32) + 8 * v8) = _nc_save_str(v9);
          v7 = *(v5 + 60);
        }

        ++v8;
      }

      while (v8 < v7);
    }

    if (v6)
    {
      v10 = (v5 + 80);
      v11 = v6;
      do
      {
        if (!*v10)
        {
          *v10 = _nc_save_str(0);
        }

        v10 += 3;
        --v11;
      }

      while (v11);
    }

    free(*(v5 + 8));
  }

  v12 = qword_2A1462BB0;
  v13 = *(v5 + 60);
  if (*(v5 + 60))
  {
    v14 = 0;
    do
    {
      if (v14 <= 0x7FF)
      {
        v15 = *(*(v5 + 32) + 8 * v14);
        if (v15)
        {
          if (v15 == -1)
          {
            v16 = -2;
          }

          else
          {
            v16 = v15 - v12;
          }
        }

        else
        {
          v16 = -1;
        }

        v49[v14] = v16;
      }

      ++v14;
    }

    while (v13 != v14);
  }

  if (v6)
  {
    v17 = (v5 + 80);
    v18 = v48;
    v19 = v6;
    do
    {
      v20 = *v17;
      v17 += 3;
      v21 = v20 - v12;
      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = -1;
      }

      *v18++ = v22;
      --v19;
    }

    while (v19);
  }

  v23 = *v5;
  v24 = qword_2A1462BB8;
  v25 = malloc(qword_2A1462BB8);
  *(v5 + 8) = v25;
  if (!v25)
  {
    goto LABEL_54;
  }

  v26 = v25;
  memcpy(v25, v12, v24);
  *v5 = &v26[(v23 - v12)];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (i <= 0x7FF)
      {
        v28 = v49[i];
        if (v28 == -1)
        {
          v29 = 0;
        }

        else if (v28 == -2)
        {
          v29 = -1;
        }

        else
        {
          v29 = *(v5 + 8) + v28;
        }

        *(*(v5 + 32) + 8 * i) = v29;
      }
    }
  }

  if ((v4 & 1) == 0)
  {
    v30 = *(v5 + 64);
    v31 = *(v5 + 66);
    v32 = v30 + *(v5 + 62) + v31;
    if ((v32 - 1) <= 0x7FE)
    {
      v47 = *(v5 + 62);
      v33 = 0;
      v34 = *(v5 + 48);
      v35 = v49;
      do
      {
        v36 = *v34++;
        v33 += strlen(v36) + 1;
        *v35++ = v36 - v12;
        --v32;
      }

      while (v32);
      v37 = malloc(v33);
      *(v5 + 40) = v37;
      if (v37)
      {
        v38 = 0;
        v39 = 0;
        v40 = *(v5 + 48);
        v41 = qword_2A1462BB0;
        do
        {
          *(v40 + 8 * v38) = *(v5 + 40) + v39;
          strcpy(*(*(v5 + 48) + 8 * v38), (v41 + v49[v38]));
          v40 = *(v5 + 48);
          v39 += strlen(*(v40 + 8 * v38++)) + 1;
        }

        while (v30 + v31 + v47 != v38);
        goto LABEL_47;
      }

LABEL_54:
      _nc_err_abort("Out of memory");
    }
  }

LABEL_47:
  if (v6)
  {
    v42 = (v5 + 80);
    v43 = v48;
    do
    {
      v45 = *v43++;
      v44 = v45;
      if (v45 == -1)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(v5 + 8) + v44;
      }

      *v42 = v46;
      v42 += 3;
      --v6;
    }

    while (v6);
  }
}

void _nc_merge_entry(TERMTYPE *const a1, TERMTYPE *const a2)
{
  _nc_align_termtype(a1, a2);
  if (a2->num_Booleans)
  {
    for (i = 0; i < a2->num_Booleans; ++i)
    {
      Booleans = a1->Booleans;
      if (Booleans[i] != 254)
      {
        v6 = a2->Booleans[i];
        if (v6 == 254)
        {
          LOBYTE(v6) = 0;
        }

        else if (v6 != 1)
        {
          continue;
        }

        Booleans[i] = v6;
      }
    }
  }

  if (a2->num_Numbers)
  {
    v7 = 0;
    Numbers = a1->Numbers;
    do
    {
      if (Numbers[v7] != -2)
      {
        v9 = a2->Numbers[v7];
        if (v9 == 65534)
        {
          LOWORD(v9) = -1;
LABEL_17:
          Numbers[v7] = v9;
          goto LABEL_18;
        }

        if (v9 != 0xFFFF)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      ++v7;
    }

    while (v7 < a2->num_Numbers);
  }

  if (a2->num_Strings)
  {
    v10 = 0;
    v11 = 8 * a2->num_Strings;
    do
    {
      Strings = a1->Strings;
      if (Strings[v10 / 8] != -1)
      {
        v13 = a2->Strings[v10 / 8];
        if (v13 == -1)
        {
          v13 = 0;
LABEL_26:
          Strings[v10 / 8] = v13;
          goto LABEL_27;
        }

        if (v13)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v10 += 8;
    }

    while (v11 != v10);
  }
}

void _nc_align_termtype(TERMTYPE *a1, TERMTYPE *a2)
{
  ext_Booleans = a1->ext_Booleans;
  ext_Numbers = a1->ext_Numbers;
  ext_Strings = a1->ext_Strings;
  v5 = a2->ext_Booleans;
  v6 = a2->ext_Numbers;
  v7 = a2->ext_Strings;
  *&v30[8] = ext_Numbers + ext_Booleans + ext_Strings;
  *&v30[4] = v6 + v5 + v7;
  if (!*&v30[4])
  {
    return;
  }

  if (*&v30[8] == *&v30[4] && ext_Booleans == v5 && ext_Numbers == v6 && ext_Strings == v7)
  {
    if (!*&v30[8])
    {
      return;
    }

    ext_Names = a1->ext_Names;
    v28 = a2->ext_Names;
    v29 = ext_Numbers + ext_Booleans + ext_Strings;
    while (!strcmp(*ext_Names, *v28))
    {
      ++v28;
      ++ext_Names;
      if (!--v29)
      {
        return;
      }
    }
  }

  v13 = malloc((8 * (*&v30[4] + *&v30[8])));
  if (!v13)
  {
    goto LABEL_35;
  }

  v14 = v13;
  if (ext_Strings && v6 | v5)
  {
    sub_29947B5F0(a1, a2);
    v7 = a2->ext_Strings;
    ext_Booleans = a1->ext_Booleans;
  }

  if (v7 && a1->ext_Numbers | ext_Booleans)
  {
    sub_29947B5F0(a2, a1);
    ext_Booleans = a1->ext_Booleans;
  }

  v15 = a1->ext_Names;
  v16 = a2->ext_Names;
  v17 = a2->ext_Booleans;
  *v30 = sub_29947B7B4(v14, v15, ext_Booleans, v16, a2->ext_Booleans);
  v18 = &v15[ext_Booleans];
  v19 = a1->ext_Numbers;
  v20 = a2->ext_Numbers;
  v21 = &v16[v17];
  v22 = sub_29947B7B4(&v14[*v30], v18, a1->ext_Numbers, v21, a2->ext_Numbers);
  v23 = sub_29947B7B4(&(&v14[*v30])[v22], &v18[v19], a1->ext_Strings, &v21[v20], a2->ext_Strings);
  v24 = v22 + *v30 + v23;
  if (*&v30[8] != v24)
  {
    sub_29947B8C4(a1, v14, *v30, v22, v23);
    v25 = a1->ext_Names;
    if (v25)
    {
      free(v25);
    }

    a1->ext_Names = v14;
  }

  if (*&v30[4] == v24)
  {
    goto LABEL_26;
  }

  sub_29947B8C4(a2, v14, *v30, v22, v23);
  v26 = _nc_doalloc(a2->ext_Names, 8 * v24);
  a2->ext_Names = v26;
  if (!v26)
  {
LABEL_35:
    _nc_err_abort("Out of memory", *v30);
  }

  memcpy(v26, v14, 8 * v24);
LABEL_26:
  if (*&v30[8] == v24)
  {

    free(v14);
  }
}

uint64_t sub_29947B5F0(uint64_t result, uint64_t a2)
{
  if (*(result + 66))
  {
    v3 = result;
    v4 = *(result + 64) + *(result + 62);
    v5 = v4 + *(result + 66);
    v6 = v4;
    do
    {
      if (*(*(v3 + 32) + 8 * (v6 + *(v3 + 60) - (v4 + *(v3 + 66)))) == -1)
      {
        v7 = *(*(v3 + 48) + 8 * v6);
        v8 = *(a2 + 62);
        if (*(a2 + 62))
        {
          v9 = *(a2 + 48);
          while (strcmp(v7, *v9))
          {
            ++v9;
            if (!--v8)
            {
              goto LABEL_11;
            }
          }

          if (sub_29947BD58(v3, v7, 2) || (result = sub_29947BD58(v3, v7, 1), result))
          {
            result = sub_29947BEF8(v3, v7, 0);
            *(*(v3 + 16) + result) = 0;
            continue;
          }
        }

        else
        {
LABEL_11:
          if ((sub_29947BCC8(a2, v7, 1u) & 0x80000000) != 0)
          {
            result = sub_29947BCC8(a2, v7, 2u);
            if ((result & 0x80000000) == 0)
            {
              if (sub_29947BD58(v3, v7, 1) || (result = sub_29947BD58(v3, v7, 0), result))
              {
                result = sub_29947BEF8(v3, v7, 2);
                *(*(v3 + 32) + 8 * result) = -1;
                continue;
              }
            }
          }

          else if (sub_29947BD58(v3, v7, 2) || (result = sub_29947BD58(v3, v7, 0), result))
          {
            result = sub_29947BEF8(v3, v7, 1);
            *(*(v3 + 24) + 2 * result) = -2;
            continue;
          }
        }
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t sub_29947B7B4(uint64_t a1, const char **a2, int a3, const char **a4, int a5)
{
  v5 = a5;
  v7 = a3;
  v10 = 0;
  if (a3 >= 1 && a5 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *a2;
      v12 = *a4;
      v13 = strcmp(*a2, *a4);
      if (v13 < 0)
      {
        ++a2;
        *(a1 + 8 * v10) = v11;
        --v7;
      }

      else
      {
        if (v13)
        {
          ++a4;
          *(a1 + 8 * v10) = v12;
        }

        else
        {
          *(a1 + 8 * v10) = v11;
          ++a2;
          ++a4;
          --v7;
        }

        --v5;
      }

      ++v10;
    }

    while (v7 && v5 > 0);
  }

  if (v7 >= 1)
  {
    v14 = (a1 + 8 * v10);
    v15 = v7 + 1;
    v10 = (v7 + v10);
    do
    {
      v16 = *a2++;
      *v14++ = v16;
      --v15;
    }

    while (v15 > 1);
  }

  if (v5 >= 1)
  {
    v17 = (a1 + 8 * v10);
    v18 = v5 + 1;
    v10 = (v10 + v5);
    do
    {
      v19 = *a4++;
      *v17++ = v19;
      --v18;
    }

    while (v18 > 1);
  }

  return v10;
}

uint64_t sub_29947B8C4(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = a3;
  v8 = result;
  v9 = *(result + 62);
  v10 = *(result + 64);
  v55 = v10 + v9 + *(result + 66);
  if (v9 != a3)
  {
    v11 = *(result + 56) + a3 - v9;
    *(result + 56) = v11;
    result = _nc_doalloc(*(result + 16), v11);
    *(v8 + 16) = result;
    if (!result)
    {
      goto LABEL_35;
    }

    if (v7 >= 1)
    {
      v12 = *(v8 + 56) - a3;
      v13 = *(v8 + 62) - 1;
      v14 = a3;
      do
      {
        v15 = v14--;
        v16 = *(v8 + 48);
        v17 = *(a2 + 8 * v14);
        v18 = v55;
        while (1)
        {
          v19 = __OFSUB__(v18--, 1);
          if (v18 < 0 != v19)
          {
            break;
          }

          v20 = *v16++;
          result = strcmp(v20, v17);
          if (!result)
          {
            v21 = *(v8 + 16);
            v22 = v13 + v12;
            --v13;
            v23 = *(v21 + v22);
            goto LABEL_10;
          }
        }

        v23 = 0;
        v21 = *(v8 + 16);
LABEL_10:
        *(v21 + v14 + v12) = v23;
      }

      while (v15 > 1);
    }

    v7 = a3;
    *(v8 + 62) = a3;
    v10 = *(v8 + 64);
  }

  if (v10 != a4)
  {
    v50 = a5;
    v24 = *(v8 + 58) + a4 - v10;
    *(v8 + 58) = v24;
    result = _nc_doalloc(*(v8 + 24), 2 * v24);
    *(v8 + 24) = result;
    v53 = result;
    if (!result)
    {
      goto LABEL_35;
    }

    if (a4 >= 1)
    {
      v25 = *(v8 + 64) - 1;
      v26 = a4;
      v27 = *(v8 + 48);
      v52 = *(v8 + 58) - a4;
      v28 = result + 2 * v52;
      do
      {
        v29 = v26--;
        v30 = *(a2 + 8 * a3 + 8 * v26);
        v31 = v27;
        v32 = v55;
        while (1)
        {
          v19 = __OFSUB__(v32--, 1);
          if (v32 < 0 != v19)
          {
            break;
          }

          v33 = *v31++;
          result = strcmp(v33, v30);
          if (!result)
          {
            v34 = v25 + v52;
            --v25;
            v35 = *(v53 + 2 * v34);
            goto LABEL_21;
          }
        }

        v35 = -1;
LABEL_21:
        *(v28 + 2 * v26) = v35;
      }

      while (v29 > 1);
    }

    a5 = v50;
    *(v8 + 64) = a4;
    v7 = a3;
  }

  v36 = *(v8 + 66);
  if (v36 == a5)
  {
    return result;
  }

  v37 = *(v8 + 60) + a5 - v36;
  *(v8 + 60) = v37;
  result = _nc_doalloc(*(v8 + 32), 8 * v37);
  *(v8 + 32) = result;
  if (!result)
  {
LABEL_35:
    _nc_err_abort("Out of memory");
  }

  if (a5 >= 1)
  {
    v38 = *(v8 + 60) - a5;
    v39 = *(v8 + 66) - 1;
    v40 = a4 + v7;
    v41 = a5;
    do
    {
      v42 = v41--;
      v43 = *(v8 + 48);
      v44 = *(a2 + 8 * (v40 + v41));
      v45 = v55;
      while (1)
      {
        v19 = __OFSUB__(v45--, 1);
        if (v45 < 0 != v19)
        {
          break;
        }

        v46 = *v43++;
        result = strcmp(v46, v44);
        if (!result)
        {
          v47 = *(v8 + 32);
          v48 = v39 + v38;
          --v39;
          v49 = *(v47 + 8 * v48);
          goto LABEL_32;
        }
      }

      v49 = 0;
      v47 = *(v8 + 32);
LABEL_32:
      *(v47 + 8 * v41 + 8 * v38) = v49;
    }

    while (v42 > 1);
  }

  *(v8 + 66) = a5;
  return result;
}

void _nc_copy_termtype(TERMTYPE *a1, const TERMTYPE *a2)
{
  v4 = *&a2->Booleans;
  v5 = *&a2->Strings;
  v6 = *&a2->ext_Numbers;
  *&a1->ext_Names = *&a2->ext_Names;
  v7 = *&a2->term_names;
  *&a1->ext_Numbers = v6;
  *&a1->Booleans = v4;
  *&a1->Strings = v5;
  *&a1->term_names = v7;
  num_Booleans = a1->num_Booleans;
  v9 = malloc(num_Booleans);
  a1->Booleans = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = 2 * a1->num_Numbers;
  v12 = malloc(v11);
  a1->Numbers = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = 8 * a1->num_Strings;
  v15 = malloc(v14);
  a1->Strings = v15;
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  memcpy(v10, a2->Booleans, num_Booleans);
  memcpy(v13, a2->Numbers, v11);
  memcpy(v16, a2->Strings, v14);
  v17 = a2->ext_Numbers + a2->ext_Booleans + a2->ext_Strings;
  if (!v17)
  {
    a1->ext_Names = 0;
    return;
  }

  v18 = (8 * v17);
  v19 = malloc(v18);
  a1->ext_Names = v19;
  if (!v19)
  {
LABEL_10:
    _nc_err_abort("Out of memory");
  }

  ext_Names = a2->ext_Names;

  memcpy(v19, ext_Names, v18);
}

uint64_t sub_29947BCC8(uint64_t a1, char *__s1, unsigned int a3)
{
  v4 = *(a1 + 62);
  if (a3)
  {
    if (a3 == 1)
    {
      a3 = *(a1 + 62);
      v4 += *(a1 + 64);
    }

    else
    {
      a3 = *(a1 + 64) + v4;
      v4 = a3 + *(a1 + 66);
    }
  }

  if (a3 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 48);
  v6 = a3;
  v7 = v4;
  while (strcmp(__s1, *(v5 + 8 * v6)))
  {
    if (v7 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

BOOL sub_29947BD58(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_29947BCC8(a1, a2, a3);
  v6 = v5;
  if ((v5 & 0x80000000) == 0)
  {
    v7 = *(a1 + 62);
    v8 = *(a1 + 64);
    v9 = *(a1 + 66);
    v10 = v7 + v8 + v9 - 1;
    if (v5 < v10)
    {
      v11 = 8 * v5;
      v12 = v5;
      do
      {
        *(*(a1 + 48) + v11) = *(*(a1 + 48) + v11 + 8);
        v11 += 8;
        ++v12;
      }

      while (v10 > v12);
    }

    v13 = sub_29947C1A8(a1, v5, v3);
    if (v3 == 2)
    {
      v17 = *(a1 + 60);
      if (v13 < v17 - 1)
      {
        v18 = v13;
        do
        {
          *(*(a1 + 32) + 8 * v18) = *(*(a1 + 32) + 8 * v18 + 8);
          ++v18;
        }

        while (v17 - 1 != v18);
      }

      *(a1 + 66) = v9 - 1;
      *(a1 + 60) = v17 - 1;
    }

    else if (v3 == 1)
    {
      v14 = *(a1 + 58);
      if (v13 < v14 - 1)
      {
        v15 = (*(a1 + 24) + 2 * v13 + 2);
        v16 = ~v13 + v14;
        do
        {
          *(v15 - 1) = *v15;
          ++v15;
          --v16;
        }

        while (v16);
        LOWORD(v8) = *(a1 + 64);
        v14 = *(a1 + 58);
      }

      *(a1 + 64) = v8 - 1;
      *(a1 + 58) = v14 - 1;
    }

    else
    {
      v19 = *(a1 + 56);
      v20 = v19 - 1;
      if (v13 < v19 - 1)
      {
        v21 = v13;
        do
        {
          *(*(a1 + 16) + v21) = *(*(a1 + 16) + v21 + 1);
          ++v21;
        }

        while (v20 != v21);
        LOWORD(v7) = *(a1 + 62);
        LOWORD(v19) = *(a1 + 56);
      }

      *(a1 + 62) = v7 - 1;
      *(a1 + 56) = v19 - 1;
    }
  }

  return v6 >= 0;
}

uint64_t sub_29947BEF8(uint64_t a1, char *__s1, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 62);
  v7 = *(a1 + 64);
  if (a3 == 2)
  {
    v8 = v7 + v6;
    v6 += v7 + *(a1 + 66);
    LODWORD(v9) = v8;
  }

  else if (a3 == 1)
  {
    v8 = v7 + v6;
    LODWORD(v9) = *(a1 + 62);
    v6 += v7;
  }

  else
  {
    LODWORD(v9) = 0;
    v8 = v6 + v7;
  }

  v10 = *(a1 + 66);
  v11 = *(a1 + 48);
  if (v9 >= v6)
  {
LABEL_12:
    v14 = (v8 + v10);
    v15 = _nc_doalloc(v11, (8 * v14 + 8));
    *(a1 + 48) = v15;
    if (v15)
    {
      if (v14 <= v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = v9;
        do
        {
          *(*(a1 + 48) + 8 * v14) = *(*(a1 + 48) + 8 * v14 - 8);
          --v14;
        }

        while (v14 > v9);
        v15 = *(a1 + 48);
      }

      v15[v16] = __s1;
      v17 = sub_29947C1A8(a1, v9, v3);
      if (v3 == 2)
      {
        ++*(a1 + 66);
        v25 = *(a1 + 60) + 1;
        *(a1 + 60) = v25;
        v26 = _nc_doalloc(*(a1 + 32), 8 * v25);
        *(a1 + 32) = v26;
        if (v26)
        {
          v27 = *(a1 + 60);
          v28 = v27 - 1;
          if (v27 - 1 > v17)
          {
            v29 = 8 * (v27 - 2);
            v30 = 8 * v28;
            do
            {
              *(*(a1 + 32) + v30) = *(*(a1 + 32) + v29);
              v29 -= 8;
              v30 -= 8;
              --v28;
            }

            while (v17 < v28);
          }

          return v17;
        }
      }

      else if (v3 == 1)
      {
        ++*(a1 + 64);
        v18 = *(a1 + 58) + 1;
        *(a1 + 58) = v18;
        v19 = _nc_doalloc(*(a1 + 24), 2 * v18);
        *(a1 + 24) = v19;
        if (v19)
        {
          v20 = *(a1 + 58);
          v21 = v20 - 1;
          if (v20 - 1 > v17)
          {
            v22 = &v19[2 * (v20 - 2)];
            v23 = &v19[2 * v21];
            do
            {
              v24 = *v22;
              v22 -= 2;
              *v23 = v24;
              v23 -= 2;
              --v21;
            }

            while (v17 < v21);
          }

          return v17;
        }
      }

      else
      {
        ++*(a1 + 62);
        v31 = *(a1 + 56) + 1;
        *(a1 + 56) = v31;
        v32 = _nc_doalloc(*(a1 + 16), v31);
        *(a1 + 16) = v32;
        if (v32)
        {
          v33 = *(a1 + 56);
          v34 = (v33 - 1);
          if (v34 > v17)
          {
            v35 = (v33 - 2);
            do
            {
              *(*(a1 + 16) + v34--) = *(*(a1 + 16) + v35--);
            }

            while (v17 < v34);
          }

          return v17;
        }
      }
    }

    _nc_err_abort("Out of memory");
  }

  v12 = v6;
  v9 = v9;
  while (1)
  {
    v13 = strcmp(__s1, *(v11 + v9));
    if (!v13)
    {
      break;
    }

    if (v13 < 0)
    {
      goto LABEL_12;
    }

    if (v12 == ++v9)
    {
      LODWORD(v9) = v12;
      goto LABEL_12;
    }
  }

  return sub_29947C1A8(a1, v9, v3);
}

uint64_t sub_29947C1A8(unsigned __int16 *a1, int a2, int a3)
{
  if (a3 == 1)
  {
    v3 = a1[29];
    v4 = a1[32] + a1[31];
  }

  else if (a3)
  {
    v4 = a1[33] + a1[31];
    v3 = a1[30] - a1[32];
  }

  else
  {
    v3 = a1[28];
    v4 = a1[31];
  }

  return (v3 - v4 + a2);
}

char *__cdecl _nc_captoinfo(const char *a1, const char *a2, const int a3)
{
  dword_2A1462BC0 = 0;
  dword_2A1462BC4 = 0;
  dword_2A1462BC8 = 0;
  dword_2A1462BCC = 0;
  dword_2A1462BD0 = 0;
  dword_2A1462BD4 = 1;
  qword_2A1462BD8 = sub_29947C93C();
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = &unk_2994B2093;
  }

  if (a3 < 0 || (v7 = *v6, (v7 - 48) > 9))
  {
    v8 = v6;
    v6 = 0;
  }

  else
  {
    v8 = v6;
    while (v7 - 48 < 0xA || (v7 | 4) == 0x2E)
    {
      v9 = *++v8;
      LOBYTE(v7) = v9;
    }
  }

  while (1)
  {
    v10 = *v8;
    if (v10 != 37)
    {
      break;
    }

    v13 = v8 + 1;
    if (a3 <= 0)
    {
      byte_2A1462BF0 = 37;
      qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, &byte_2A1462BF0);
      ++v8;
    }

    else
    {
      v14 = v8 + 2;
      v15 = v8[1];
      if (v15 > 0x43)
      {
        if (v8[1] <= 0x65u)
        {
          if (v8[1] <= 0x60u)
          {
            if (v15 == 68)
            {
LABEL_57:
              sub_29947CA2C(dword_2A1462BD4, 2);
              v20 = qword_2A1462BD8;
              v21 = "%{2}%*%-";
              goto LABEL_78;
            }

            if (v15 != 92)
            {
              goto LABEL_59;
            }

            v20 = qword_2A1462BD8;
            v21 = "%\"";
LABEL_78:
            qword_2A1462BD8 = sub_29947C990(v20, v21);
            v8 += 2;
          }

          else
          {
            switch(v15)
            {
              case 'a':
                v26 = *v14;
                if (v26 > 0x3D || ((1 << v26) & 0x2000AC0000000000) == 0 || (v27 = v8[3], v27 != 112) && v27 != 99 || !v8[4])
                {
                  sub_29947CA2C(dword_2A1462BD4, 1);
                  v8 = &v14[sub_29947CB68(v8 + 2)];
                  v11 = qword_2A1462BD8;
                  v12 = "%+";
                  goto LABEL_14;
                }

                if (v26 != 61)
                {
                  sub_29947CA2C(dword_2A1462BD4, 1);
                  v27 = v8[3];
                }

                if (v27 == 112)
                {
                  sub_29947CA2C(dword_2A1462BD4 + v8[4] - 64, 1);
                  if (dword_2A1462BD4 != dword_2A1462BC4)
                  {
                    sub_29947CD94();
                    --dword_2A1462BD4;
                  }

                  v28 = 3;
                }

                else
                {
                  v28 = (sub_29947CB68(v8 + 4) + 2);
                }

                v32 = *v14;
                if (v32 <= 0x2C)
                {
                  if (v32 == 42)
                  {
                    v33 = qword_2A1462BD8;
                    v34 = "%*";
                  }

                  else
                  {
                    if (v32 != 43)
                    {
                      goto LABEL_104;
                    }

                    v33 = qword_2A1462BD8;
                    v34 = "%+";
                  }

                  goto LABEL_103;
                }

                if (v32 == 45)
                {
                  v33 = qword_2A1462BD8;
                  v34 = "%-";
LABEL_103:
                  qword_2A1462BD8 = sub_29947C990(v33, v34);
                  goto LABEL_104;
                }

                if (v32 == 47)
                {
                  v33 = qword_2A1462BD8;
                  v34 = "%/";
                  goto LABEL_103;
                }

                if (v32 != 61)
                {
                  goto LABEL_104;
                }

                if (!dword_2A1462BD0)
                {
                  goto LABEL_105;
                }

                if (dword_2A1462BD4 != 2)
                {
                  if (dword_2A1462BD4 == 1)
                  {
                    dword_2A1462BC4 = 2;
                    goto LABEL_104;
                  }

LABEL_105:
                  dword_2A1462BC4 = dword_2A1462BD4;
                  goto LABEL_104;
                }

                dword_2A1462BC4 = 1;
LABEL_104:
                v8 = &v14[v28];
                break;
              case 'b':
                v25 = dword_2A1462BD4 - 1;
LABEL_83:
                dword_2A1462BD4 = v25;
                v8 += 2;
                break;
              case 'd':
                sub_29947CA2C(dword_2A1462BD4, 1);
                v18 = qword_2A1462BD8;
                v19 = "%d";
                goto LABEL_61;
              default:
                goto LABEL_59;
            }
          }
        }

        else if (v8[1] > 0x6Du)
        {
          switch(v15)
          {
            case 'n':
              v31 = dword_2A1462BCC++;
              v8 += 2;
              if (v31 == 1)
              {
                _nc_warning("saw %%n twice in %s");
LABEL_86:
                v8 = v14;
              }

              break;
            case 'r':
              v30 = dword_2A1462BD0++;
              v8 += 2;
              if (v30 == 1)
              {
                _nc_warning("saw %%r twice in %s");
                goto LABEL_86;
              }

              break;
            case 's':
              sub_29947CA2C(dword_2A1462BD4, 1);
              v18 = qword_2A1462BD8;
              v19 = "%s";
              goto LABEL_61;
            default:
              goto LABEL_59;
          }
        }

        else
        {
          if (v15 == 102)
          {
            v25 = dword_2A1462BD4 + 1;
            goto LABEL_83;
          }

          if (v15 == 105)
          {
            v20 = qword_2A1462BD8;
            v21 = "%i";
            goto LABEL_78;
          }

          if (v15 != 109)
          {
            goto LABEL_59;
          }

          v16 = dword_2A1462BC8++;
          v8 += 2;
          if (v16 == 1)
          {
            _nc_warning("saw %%m twice in %s");
            goto LABEL_86;
          }
        }
      }

      else if (v8[1] <= 0x31u)
      {
        if (v8[1] <= 0x2Cu)
        {
          if (v15 == 37)
          {
            v20 = qword_2A1462BD8;
            byte_2A1462BF0 = 37;
            v21 = &byte_2A1462BF0;
            goto LABEL_78;
          }

          if (v15 != 43)
          {
            goto LABEL_59;
          }

          sub_29947CA2C(dword_2A1462BD4, 1);
          v8 = &v14[sub_29947CB68(v8 + 2)];
          v22 = qword_2A1462BD8;
          v23 = "%+%c";
LABEL_64:
          qword_2A1462BD8 = sub_29947C990(v22, v23);
          sub_29947CD94();
        }

        else
        {
          if (v15 == 45)
          {
            v8 = &v14[sub_29947CB68(v8 + 2)];
            sub_29947CA2C(dword_2A1462BD4, 1);
            v22 = qword_2A1462BD8;
            v23 = "%-%c";
            goto LABEL_64;
          }

          if (v15 != 46)
          {
            if (v15 != 48)
            {
              goto LABEL_59;
            }

            v17 = *v14;
            if (v17 != 51)
            {
              if (v17 != 50)
              {
                goto LABEL_59;
              }

LABEL_37:
              sub_29947CA2C(dword_2A1462BD4, 1);
              v18 = qword_2A1462BD8;
              v19 = "%2d";
              goto LABEL_61;
            }

LABEL_58:
            sub_29947CA2C(dword_2A1462BD4, 1);
            v18 = qword_2A1462BD8;
            v19 = "%3d";
            goto LABEL_61;
          }

          sub_29947CA2C(dword_2A1462BD4, 1);
          v18 = qword_2A1462BD8;
          v19 = "%c";
LABEL_61:
          qword_2A1462BD8 = sub_29947C990(v18, v19);
          sub_29947CD94();
          v8 += 2;
        }
      }

      else if (v8[1] > 0x37u)
      {
        if (v15 == 56)
        {
          goto LABEL_57;
        }

        if (v15 != 62)
        {
          if (v15 != 66)
          {
            goto LABEL_59;
          }

LABEL_46:
          sub_29947CA2C(dword_2A1462BD4, 1);
          qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, "%{10}%/%{16}%*");
          sub_29947CA2C(dword_2A1462BD4, 1);
          v20 = qword_2A1462BD8;
          v21 = "%{10}%m%+";
          goto LABEL_78;
        }

        sub_29947CA2C(dword_2A1462BD4, 2);
        qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, "%?");
        v29 = &v14[sub_29947CB68(v8 + 2)];
        qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, "%>%t");
        v8 = &v29[sub_29947CB68(v29)];
        v11 = qword_2A1462BD8;
        v12 = "%+%;";
LABEL_14:
        qword_2A1462BD8 = sub_29947C990(v11, v12);
      }

      else
      {
        switch(v15)
        {
          case '2':
            goto LABEL_37;
          case '3':
            goto LABEL_58;
          case '6':
            goto LABEL_46;
        }

LABEL_59:
        byte_2A1462BF0 = 37;
        qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, &byte_2A1462BF0);
        v24 = unctrl(*v13);
        _nc_warning("unknown %% code %s (%#x) in %s", v24, *v13, a1);
        ++v8;
      }
    }
  }

  if (*v8)
  {
    v11 = qword_2A1462BD8;
    ++v8;
    byte_2A1462BF0 = v10;
    v12 = &byte_2A1462BF0;
    goto LABEL_14;
  }

  v35 = qword_2A1462BD8;
  if (v6)
  {
    v36 = sub_29947C990(qword_2A1462BD8, "$<");
    qword_2A1462BD8 = v36;
    while (*v6 - 48 < 0xA || (*v6 | 4) == 0x2E)
    {
      byte_2A1462BF0 = *v6;
      v36 = sub_29947C990(v36, &byte_2A1462BF0);
      qword_2A1462BD8 = v36;
      ++v6;
    }

    v35 = sub_29947C990(v36, "/>");
    qword_2A1462BD8 = v35;
  }

  byte_2A1462BF0 = 0;
  sub_29947C990(v35, &byte_2A1462BF0);
  return qword_2A1462BE0;
}

_BYTE *sub_29947C93C()
{
  result = qword_2A1462BE0;
  if (!qword_2A1462BE0)
  {
    qword_2A1462BE8 = 256;
    result = malloc(0x100uLL);
    qword_2A1462BE0 = result;
    if (!result)
    {
      _nc_err_abort("Out of memory");
    }
  }

  *result = 0;
  return result;
}

char *sub_29947C990(char *a1, char *__s)
{
  v3 = a1;
  v4 = &a1[-qword_2A1462BE0];
  v5 = &a1[strlen(__s) - qword_2A1462BE0 + 2];
  if (v5 > qword_2A1462BE8)
  {
    qword_2A1462BE8 = 2 * v5;
    v6 = _nc_doalloc(qword_2A1462BE0, 2 * v5);
    qword_2A1462BE0 = v6;
    if (!v6)
    {
      _nc_err_abort("Out of memory");
    }

    v3 = &v4[v6];
  }

  v7 = strcpy(v3, __s);
  return &v3[strlen(v7)];
}

void sub_29947CA2C(int a1, int a2)
{
  if (a1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  if (a1 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (dword_2A1462BD0)
  {
    v4 = v3;
  }

  else
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
    v6 = qword_2A1462BD8;
    do
    {
      --v5;
      qword_2A1462BD8 = sub_29947C990(v6, "%p");
      byte_2A1462BF0 = v4 + 48;
      v6 = sub_29947C990(qword_2A1462BD8, &byte_2A1462BF0);
      qword_2A1462BD8 = v6;
    }

    while (v5);
  }

  if (dword_2A1462BC4 != v4)
  {
    if (dword_2A1462BC4)
    {
      v7 = dword_2A1462BC0;
      if (dword_2A1462BC0 < 16)
      {
        ++dword_2A1462BC0;
        dword_2A1462BF4[v7] = dword_2A1462BC4;
      }

      else
      {
        _nc_warning("string too complex to convert");
      }
    }

    dword_2A1462BC4 = v4;
    if (v4 <= 2 && dword_2A1462BCC)
    {
      qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, "%{96}%^");
    }

    if (v4 <= 2)
    {
      if (dword_2A1462BC8)
      {
        qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, "%{127}%^");
      }
    }
  }
}

uint64_t sub_29947CB68(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 94)
  {
    v6 = a1[1];
    if (v6 == 63)
    {
      v3 = 2;
      v7 = 127;
    }

    else if (a1[1])
    {
      v7 = v6 & 0x1F;
      v3 = 2;
    }

    else
    {
      v7 = 0;
      v3 = 1;
    }

    goto LABEL_17;
  }

  if (v1 != 92)
  {
    v3 = 1;
    goto LABEL_11;
  }

  v1 = a1[1];
  if ((v1 - 48) >= 4)
  {
    if (a1[1])
    {
      v3 = 2;
      goto LABEL_11;
    }

    v3 = 1;
    v7 = 92;
LABEL_17:
    LOBYTE(v1) = v7;
    goto LABEL_18;
  }

  v2 = a1 + 2;
  LODWORD(v3) = 1;
  v4 = a1[1];
  v1 = 0;
  do
  {
    v1 = v4 + 8 * v1 - 48;
    v3 = (v3 + 1);
    v5 = *v2++;
    v4 = v5;
  }

  while ((v5 - 48) < 0xA);
LABEL_11:
  v7 = v1;
  if ((v1 & 0x80) == 0)
  {
LABEL_18:
    LOBYTE(v9) = v1;
    v8 = *(MEMORY[0x29EDCA600] + 4 * v7 + 60) & 0x800;
    v1 = v7;
    goto LABEL_19;
  }

  v8 = __maskrune(v1, 0x800uLL);
  LOBYTE(v9) = v1;
LABEL_19:
  if (v8 && (v9 - 39 > 0x35 || ((1 << (v9 - 39)) & 0x20000000080021) == 0))
  {
    v10 = sub_29947C990(qword_2A1462BD8, "%'");
    qword_2A1462BD8 = v10;
    v11 = 39;
    goto LABEL_27;
  }

  v10 = sub_29947C990(qword_2A1462BD8, "%{");
  qword_2A1462BD8 = v10;
  if (v9 >= 0x64u)
  {
    byte_2A1462BF0 = (v1 / 0x64u) | 0x30;
    v10 = sub_29947C990(v10, &byte_2A1462BF0);
    qword_2A1462BD8 = v10;
LABEL_25:
    byte_2A1462BF0 = (v1 / 0xAu - 10 * ((26 * (v1 / 0xAu)) >> 8)) | 0x30;
    v10 = sub_29947C990(v10, &byte_2A1462BF0);
    qword_2A1462BD8 = v10;
    goto LABEL_26;
  }

  if (v9 >= 0xAu)
  {
    goto LABEL_25;
  }

LABEL_26:
  v9 = (v1 - 10 * (v1 / 0xAu)) | 0x30;
  v11 = 125;
LABEL_27:
  byte_2A1462BF0 = v9;
  qword_2A1462BD8 = sub_29947C990(v10, &byte_2A1462BF0);
  byte_2A1462BF0 = v11;
  qword_2A1462BD8 = sub_29947C990(qword_2A1462BD8, &byte_2A1462BF0);
  return v3;
}

void sub_29947CD94()
{
  v2 = dword_2A1462BC0;
  if (dword_2A1462BC0)
  {
    --dword_2A1462BC0;
    dword_2A1462BC4 = dword_2A1462BF4[v2 - 1];
  }

  else if (dword_2A1462BC4)
  {
    dword_2A1462BC4 = 0;
  }

  else
  {
    _nc_warning("I'm confused", v0, v1);
  }

  ++dword_2A1462BD4;
}

char *__cdecl _nc_infotocap(const char *a1, const char *a2, const int a3)
{
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v5 = sub_29947C93C();
  v6 = &a2[strlen(a2)];
  if (v6 - 1 > a2 && *(v6 - 1) == 62)
  {
    v8 = *(v6 - 2);
    v7 = v6 - 2;
    if (v8 == 47)
    {
      --v7;
    }

    while (*v7 - 48 < 0xA || (*v7 | 4) == 0x2E)
    {
      --v7;
    }

    v9 = 0;
    if (v7 > a2 && *v7 == 60)
    {
      v45 = *--v7;
      if (v45 == 36)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }
    }

    for (i = (v7 + 2); ; ++i)
    {
      v47 = *i;
      if (*i - 48 >= 0xA && (v47 | 4) != 0x2E)
      {
        break;
      }

      byte_2A1462BF0 = v47;
      v5 = sub_29947C990(v5, &byte_2A1462BF0);
    }
  }

  else
  {
    v9 = 0;
  }

  if (!*a2)
  {
    return qword_2A1462BE0;
  }

  v50 = 0;
  v48 = 0;
  v49 = 0;
  while (!v9 || a2 < v9)
  {
    *v51 = 0;
    v10 = *a2;
    switch(v10)
    {
      case '$':
        if (a2[1] == 60)
        {
          for (j = a2 + 1; ; ++j)
          {
            v15 = *(j + 1);
            if (v15 - 48 >= 0xA && (v15 > 0x3E || ((1 << j[1]) & 0x4000C40000000000) == 0))
            {
              break;
            }
          }

          goto LABEL_140;
        }

        break;
      case '\\':
        j = a2 + 1;
        v13 = *(a2 + 1);
        if (a2 + 1 == v9 || !a2[1])
        {
          v12 = v5;
          v14 = "\\134";
          goto LABEL_138;
        }

        if (v13 == 44)
        {
LABEL_135:
          byte_2A1462BF0 = v13;
        }

        else
        {
          if (v13 == 94)
          {
            goto LABEL_23;
          }

          byte_2A1462BF0 = 92;
          v5 = sub_29947C990(v5, &byte_2A1462BF0);
          v21 = *j;
          if (_nc_strict_bsd)
          {
            if ((v21 - 48) > 9)
            {
              if (memchr("E\\nrtbf", *j, 8uLL))
              {
                goto LABEL_110;
              }

              if (v21 > 107)
              {
                if (v21 == 115)
                {
                  LOBYTE(v21) = 48;
                  byte_2A1462BF0 = 48;
                  v39 = sub_29947C990(v5, &byte_2A1462BF0);
                  byte_2A1462BF0 = 52;
                  v5 = sub_29947C990(v39, &byte_2A1462BF0);
                  goto LABEL_110;
                }

                if (v21 == 108)
                {
                  LOBYTE(v21) = 110;
                  goto LABEL_110;
                }
              }

              else
              {
                if (v21 == 58)
                {
                  byte_2A1462BF0 = 48;
                  v38 = sub_29947C990(v5, &byte_2A1462BF0);
                  byte_2A1462BF0 = 55;
                  v5 = sub_29947C990(v38, &byte_2A1462BF0);
                  LOBYTE(v21) = 50;
                  goto LABEL_110;
                }

                if (v21 == 101)
                {
                  LOBYTE(v21) = 69;
                  goto LABEL_110;
                }
              }

              __sprintf_chk(v52, 0, 4uLL, "%03o", v21);
              byte_2A1462BF0 = v52[0];
              v37 = sub_29947C990(v5, &byte_2A1462BF0);
              byte_2A1462BF0 = v52[1];
              v5 = sub_29947C990(v37, &byte_2A1462BF0);
              LOBYTE(v21) = v52[2];
              goto LABEL_110;
            }

            v22 = *(a2 + 2);
            if ((v22 - 58) >= 0xFFFFFFF6)
            {
              if (a2[2] && v21 == 48 && v22 == 48)
              {
                if (*(a2 + 3) - 48 >= 0xA)
                {
                  v23 = 1;
                  goto LABEL_108;
                }

                LOBYTE(v21) = 48;
              }
            }

            else if (v21 == 48)
            {
              v23 = 2;
LABEL_108:
              v35 = v23 + 1;
              v36 = 50;
              do
              {
                byte_2A1462BF0 = v36;
                v5 = sub_29947C990(v5, &byte_2A1462BF0);
                --v35;
                v36 = 48;
              }

              while (v35 > 1);
            }
          }

LABEL_110:
          byte_2A1462BF0 = v21;
        }

        v12 = v5;
        goto LABEL_137;
      case '^':
        j = a2 + 1;
        if (a2 + 1 != v9 && a2[1])
        {
          byte_2A1462BF0 = 94;
          v12 = sub_29947C990(v5, &byte_2A1462BF0);
          byte_2A1462BF0 = *j;
LABEL_137:
          v14 = &byte_2A1462BF0;
          goto LABEL_138;
        }

LABEL_23:
        v12 = v5;
        v14 = "\\136";
        goto LABEL_138;
    }

    if (sscanf(a2, "[%%?%%p1%%{8}%%<%%t%d%%p1%%d%%e%%p1%%{16}%%<%%t%d%%p1%%{8}%%-%%d%%e%d;5;%%p1%%d%%;m", &v55, &v54 + 4, &v54) == 3)
    {
      if ((v17 = v54, v55 == 4) && v54 == 0xA00000030 || v55 == 3 && v54 == 0x900000026)
      {
        v18 = strstr(a2, ";m");
        if (!v18)
        {
          break;
        }

        j = v18 + 1;
        v12 = v5;
        if (v17 == 48)
        {
          v14 = "[48;5;%dm";
        }

        else
        {
          v14 = "[38;5;%dm";
        }

        goto LABEL_138;
      }
    }

    if (*a2 != 37)
    {
      goto LABEL_48;
    }

    j = a2 + 1;
    if (a2[1] == 37)
    {
      v12 = v5;
      v14 = "%%";
      goto LABEL_138;
    }

    if (a3 <= 0)
    {
LABEL_48:
      byte_2A1462BF0 = *a2;
      v5 = sub_29947C990(v5, &byte_2A1462BF0);
      j = a2;
      goto LABEL_140;
    }

    if (sscanf(a2, "%%?%%{%d}%%>%%t%%{%d}%%+%%;", &v51[1], v51) == 2)
    {
      j = strchr(a2, 59);
      v20 = v51[0];
      v19 = v51[1];
      goto LABEL_56;
    }

    if (sscanf(a2, "%%?%%{%d}%%>%%t%%'%c'%%+%%;", &v51[1], &v53) == 2)
    {
      j = strchr(a2, 59);
      v19 = v51[1];
      v20 = v53;
LABEL_56:
      v5 = sub_29947D814(v5, v19, v20);
      if (!j)
      {
        break;
      }

      goto LABEL_140;
    }

    if (sscanf(a2, "%%?%%'%c'%%>%%t%%{%d}%%+%%;", &v53 + 1, v51) == 2)
    {
      j = strchr(a2, 59);
      v24 = SHIBYTE(v53);
      v25 = v51[0];
      goto LABEL_72;
    }

    if (sscanf(a2, "%%?%%'%c'%%>%%t%%'%c'%%+%%;", &v53 + 1, &v53) == 2)
    {
      j = strchr(a2, 59);
      v24 = SHIBYTE(v53);
      v25 = v53;
LABEL_72:
      v5 = sub_29947D814(v5, v24, v25);
      if (!j)
      {
        break;
      }

      goto LABEL_140;
    }

    v56 = 0;
    if (sscanf(a2, "%%p%c%%{10}%%/%%{16}%%*%%p%c%%{10}%%m%%+", &v56 + 1, &v56) == 2 && HIBYTE(v56) - 48 <= 9 && HIBYTE(v56) == v56 && v56 - 48 <= 9)
    {
      j = a2 + 28;
      v12 = v5;
      v14 = "%B";
      goto LABEL_138;
    }

    if (sscanf(a2, "%%{%d}%%+%%c", &v51[1]) == 1 || sscanf(a2, "%%'%c'%%+%%c", &v53 + 1) == 1)
    {
      v26 = strchr(a2, 43);
      if (v26)
      {
        v27 = v26;
        v28 = sub_29947C990(v5, "%+");
        v29 = SHIBYTE(v53);
        if (HIBYTE(v53))
        {
          v51[1] = SHIBYTE(v53);
        }

        else
        {
          v29 = v51[1];
        }

        j = v27 + 2;
        v40 = sub_29947D860(v28, v29);
        goto LABEL_139;
      }
    }

    if (!strncmp(a2, "%{2}%*%-", 8uLL))
    {
      j = a2 + 7;
      v12 = v5;
      v14 = "%D";
LABEL_138:
      v40 = sub_29947C990(v12, v14);
LABEL_139:
      v5 = v40;
      goto LABEL_140;
    }

    if (!strncmp(a2, "%{96}%^", 7uLL))
    {
      j = a2 + 6;
      if (HIDWORD(v49))
      {
        v41 = HIDWORD(v49) + 1;
      }

      else
      {
        v5 = sub_29947C990(v5, "%n");
        v41 = 1;
      }

      HIDWORD(v49) = v41;
      goto LABEL_140;
    }

    if (!strncmp(a2, "%{127}%^", 8uLL))
    {
      j = a2 + 7;
      if (v49)
      {
        v42 = v49 + 1;
      }

      else
      {
        v5 = sub_29947C990(v5, "%m");
        v42 = 1;
      }

      LODWORD(v49) = v42;
      goto LABEL_140;
    }

    v13 = *j;
    if (v13 > 0x62)
    {
      if (*j <= 0x68u)
      {
        if (v13 == 99)
        {
          v12 = v5;
          v14 = "%.";
          goto LABEL_138;
        }

        if (v13 == 100)
        {
          v12 = v5;
          v14 = "%d";
          goto LABEL_138;
        }
      }

      else
      {
        switch(v13)
        {
          case 'i':
            v12 = v5;
            v14 = "%i";
            goto LABEL_138;
          case 'p':
            v43 = *(a2 + 2);
            j = a2 + 2;
            if (v43 == 49)
            {
              HIDWORD(v48) = 1;
            }

            else if (v43 == 50)
            {
              if (!v48)
              {
                v5 = sub_29947C990(v5, "%r");
                v48 = 1;
              }
            }

            else if (v43 > 50)
            {
              return 0;
            }

            goto LABEL_140;
          case 's':
            if (_nc_strict_bsd)
            {
              return 0;
            }

            v12 = v5;
            v14 = "%s";
            goto LABEL_138;
        }
      }
    }

    else
    {
      if (v13 - 48 < 0xA)
      {
        byte_2A1462BF0 = 37;
        v5 = sub_29947C990(v5, &byte_2A1462BF0);
        v53 = 0;
        v30 = *j;
        v31 = _nc_strict_bsd;
        if ((v30 - 48) <= 9)
        {
          do
          {
            LOBYTE(v53) = HIBYTE(v53);
            v33 = *j++;
            v32 = v33;
            HIBYTE(v53) = v33;
            if (v31)
            {
              if (v32 > 51)
              {
                return 0;
              }
            }

            else
            {
              byte_2A1462BF0 = v32;
              v5 = sub_29947C990(v5, &byte_2A1462BF0);
              v31 = _nc_strict_bsd;
            }

            v30 = *j;
          }

          while ((v30 - 48) < 0xA);
        }

        if (v31)
        {
          if (v53 != 48 && v53)
          {
            return 0;
          }

          v34 = HIBYTE(v53);
          if (SHIBYTE(v53) <= 49)
          {
            v34 = 100;
            HIBYTE(v53) = 100;
          }

          byte_2A1462BF0 = v34;
          v5 = sub_29947C990(v5, &byte_2A1462BF0);
          v30 = *j;
        }

        if (memchr("doxX.", v30, 6uLL) && v30 != 100)
        {
          return 0;
        }

        goto LABEL_140;
      }

      if (v13 == 37)
      {
        goto LABEL_135;
      }
    }

    byte_2A1462BF0 = *j;
    v5 = sub_29947C990(v5, &byte_2A1462BF0);
    v50 = 1;
LABEL_140:
    if (*j)
    {
      a2 = j + 1;
      if (j[1])
      {
        continue;
      }
    }

    break;
  }

  if ((v50 & 1) == 0)
  {
    return qword_2A1462BE0;
  }

  return 0;
}

char *sub_29947D814(char *a1, chtype a2, chtype a3)
{
  v5 = sub_29947C990(a1, "%>");
  v6 = sub_29947D860(v5, a2);

  return sub_29947D860(v6, a3);
}

char *sub_29947D860(char *a1, chtype a2)
{
  v2 = a2;
  v3 = a1;
  v6 = *MEMORY[0x29EDCA608];
  if (a2 > 0x7F)
  {
    goto LABEL_5;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * a2 + 60) & 0x40000) == 0)
  {
    if (a2 <= 0x1F)
    {
      unctrl(a2);
      __sprintf_chk(__s, 0, 0x50uLL, "%.20s");
      return sub_29947C990(v3, __s);
    }

LABEL_5:
    __sprintf_chk(__s, 0, 0x50uLL, "\\%03o");
    return sub_29947C990(v3, __s);
  }

  if (a2 == 92 || a2 == 58)
  {
    byte_2A1462BF0 = 92;
    v3 = sub_29947C990(a1, &byte_2A1462BF0);
  }

  byte_2A1462BF0 = v2;

  return sub_29947C990(v3, &byte_2A1462BF0);
}

const name_table_entry *__cdecl _nc_get_table(BOOL a1)
{
  if (a1)
  {
    return sub_29947DA0C(&qword_2A1462C38, &unk_2994AAE44, &unk_2994AC590);
  }

  else
  {
    return sub_29947DA0C(&qword_2A1462C40, &unk_2994ACB64, &unk_2994AE2B0);
  }
}

char *sub_29947DA0C(char **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    v3 = calloc(0x1F1uLL, 0x10uLL);
    *a1 = v3;
    if (v3)
    {
      v7 = 0;
      v8 = (a2 + 8);
      v9 = -7952;
      do
      {
        v10 = (a3 + v7);
        *&v3[v9 + 7952] = v10;
        v3 = *a1;
        v11 = &(*a1)[v9];
        *(v11 + 1990) = *(v8 - 1);
        v12 = *v8;
        v8 += 3;
        *(v11 + 1991) = v12;
        v7 += strlen(v10) + 1;
        v9 += 16;
      }

      while (v9);
    }
  }

  return v3;
}

const HashValue *__cdecl _nc_get_hash_table(BOOL a1)
{
  if (a1)
  {
    return &unk_2994AEC08;
  }

  else
  {
    return &unk_2994AF3CE;
  }
}

const alias *__cdecl _nc_get_alias_table(BOOL a1)
{
  if (a1)
  {
    return sub_29947DB0C(&unk_2A1462C48, &unk_2994AFB94, &unk_2994AFC9C, 44);
  }

  else
  {
    return sub_29947DB0C(&unk_2A1462C50, &unk_2994AFE6E, "font0", 6);
  }
}

void *sub_29947DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = a4;
    result = calloc(a4 + 1, 0x18uLL);
    *a1 = result;
    if (result)
    {
      if (v6)
      {
        v9 = 0;
        v10 = (a2 + 4);
        do
        {
          v11 = *(v10 - 2);
          if ((v11 & 0x8000000000000000) == 0)
          {
            *(*a1 + v9) = a3 + v11;
          }

          v12 = *(v10 - 1);
          if ((v12 & 0x8000000000000000) == 0)
          {
            *(*a1 + v9 + 8) = a3 + v12;
          }

          v13 = *v10;
          if ((v13 & 0x8000000000000000) == 0)
          {
            *(*a1 + v9 + 16) = a3 + v13;
          }

          v9 += 24;
          v10 += 3;
          --v6;
        }

        while (v6);
        return *a1;
      }
    }
  }

  return result;
}

uint64_t sub_29947DBD4(char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = 0;
    v3 = a1 + 1;
    do
    {
      v4 = *v3++;
      v2 += (v4 << 8) + v1;
      v1 = v4;
    }

    while (v4);
    v5 = v2 % 994;
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

uint64_t sub_29947DC5C(char *a1)
{
  v1 = 0;
  v2 = 0;
  while (1)
  {
    v3 = v1;
    v4 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    *(&v11 + v2) = v4;
    v1 = 1;
    v2 = 1;
    if (v3)
    {
      v2 = 2;
      break;
    }
  }

  *(&v11 + v2) = 0;
  v5 = v11;
  if (v11)
  {
    v6 = 0;
    v7 = &v12;
    do
    {
      v8 = *v7++;
      v6 += (v8 << 8) + v5;
      v5 = v8;
    }

    while (v8);
    v9 = v6 % 994;
  }

  else
  {
    LOWORD(v9) = 0;
  }

  return v9;
}

void _nc_set_source(const char *const a1)
{
  if (*&PC[32])
  {
    free(*&PC[32]);
  }

  *&PC[32] = strdup(a1);
}

void _nc_set_type(const char *const a1)
{
  v2 = *&PC[40];
  if (*&PC[40] || (v2 = malloc(0x201uLL), (*&PC[40] = v2) != 0))
  {
    *v2 = 0;
    if (a1)
    {
      v3 = *&PC[40];

      strncat(v3, a1, 0x200uLL);
    }
  }
}

void _nc_get_type(char *name)
{
  if (name)
  {
    if (*&PC[40])
    {
      v1 = *&PC[40];
    }

    else
    {
      v1 = &unk_2994B2093;
    }

    strcpy(name, v1);
  }
}

void _nc_warning(const char *const a1, ...)
{
  va_start(va, a1);
  if (!_nc_suppress_warnings)
  {
    sub_29947DE7C();
    v2 = MEMORY[0x29EDCA610];
    vfprintf(*MEMORY[0x29EDCA610], a1, va);
    fputc(10, *v2);
  }
}

uint64_t sub_29947DE7C()
{
  v0 = MEMORY[0x29EDCA610];
  v1 = *&PC[32];
  if (!*&PC[32])
  {
    v1 = "?";
  }

  fprintf(*MEMORY[0x29EDCA610], "%s", v1);
  if ((_nc_curr_line & 0x80000000) == 0)
  {
    fprintf(*v0, ", line %d", _nc_curr_line);
  }

  if ((_nc_curr_col & 0x80000000) == 0)
  {
    fprintf(*v0, ", col %d", _nc_curr_col);
  }

  if (*&PC[40] && **&PC[40])
  {
    fprintf(*v0, ", terminal '%s'", *&PC[40]);
  }

  fputc(58, *v0);
  v2 = *v0;

  return fputc(32, v2);
}

void _nc_err_abort(const char *const a1, ...)
{
  va_start(va, a1);
  sub_29947DE7C();
  v2 = MEMORY[0x29EDCA610];
  vfprintf(*MEMORY[0x29EDCA610], a1, va);
  fputc(10, *v2);
  exit(1);
}

void _nc_syserr_abort(const char *const a1, ...)
{
  va_start(va, a1);
  sub_29947DE7C();
  v2 = MEMORY[0x29EDCA610];
  vfprintf(*MEMORY[0x29EDCA610], a1, va);
  fputc(10, *v2);
  exit(1);
}

char *__cdecl _nc_tic_expand(const char *a1, BOOL a2, int a3)
{
  v4 = a2;
  if ((a1 + 1) <= 1)
  {
    v6 = &unk_2994AFEEC;
  }

  else
  {
    v6 = a1;
  }

  v7 = strlen(v6);
  if (!a1)
  {
    return 0;
  }

  v8 = v7;
  v9 = 4 * v7 + 8;
  if (qword_2A1462C58)
  {
    v10 = v9 > qword_2A1462C60;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 || (qword_2A1462C60 = 4 * v7 + 8, result = _nc_doalloc(qword_2A1462C58, v9), (qword_2A1462C58 = result) != 0))
  {
    v39 = a3;
    v12 = 0;
    v13 = MEMORY[0x29EDCA600];
    while (1)
    {
      v14 = *v6;
      if (*v6 > 0x39u)
      {
        if (*v6 > 0x5Du)
        {
          if (v14 != 94)
          {
            if (v14 == 128)
            {
              v18 = qword_2A1462C58;
              v19 = 12380;
              goto LABEL_66;
            }

            goto LABEL_49;
          }

          goto LABEL_35;
        }

        if (v14 == 58)
        {
          goto LABEL_35;
        }

        if (v14 != 92)
        {
          goto LABEL_49;
        }

        if (v4 && (v6 == a1 || *(v6 - 1) != 94))
        {
          v18 = qword_2A1462C58;
          v19 = 23644;
          goto LABEL_66;
        }
      }

      else if (*v6 > 0x24u)
      {
        if (v14 != 37)
        {
          if (v14 != 44)
          {
            goto LABEL_49;
          }

LABEL_35:
          if (v4)
          {
            v20 = (qword_2A1462C58 + v12);
            *v20 = 92;
            v12 += 2;
            v20[1] = v14;
LABEL_77:
            v22 = v6;
            goto LABEL_78;
          }

          goto LABEL_50;
        }

        v22 = v6 + 1;
        v21 = *(v6 + 1);
        if (v21 <= 0x7E && (*(v13 + 4 * v21 + 60) & 0x40000) != 0)
        {
          v23 = qword_2A1462C58;
          v24 = v12 + 1;
          *(qword_2A1462C58 + v12) = 37;
          v25 = *v22;
          if (v39 != 1)
          {
            if (v39 == -1 && v25 == 39)
            {
              v26 = *(v6 + 2);
              if (v26 != 92 && v26 <= 0x7E && (*(v13 + 4 * v26 + 60) & 0x40000) != 0)
              {
                v27 = *(v6 + 3);
                v6 += 3;
                if (v27 == 39)
                {
                  sprintf((v23 + v24), "{%d}", v26);
                  v12 = v24 + strlen((qword_2A1462C58 + v24));
                  goto LABEL_77;
                }
              }
            }

LABEL_93:
            v12 += 2;
            *(v23 + v24) = v25;
            goto LABEL_78;
          }

          if (v25 != 123)
          {
            goto LABEL_93;
          }

          v30 = *(v6 + 2);
          v29 = v6 + 2;
          if ((v30 - 48) > 9)
          {
            goto LABEL_93;
          }

          __endptr = 0;
          v31 = strtol(v29, &__endptr, 0);
          v32 = __endptr;
          if (__endptr)
          {
            if (*__endptr == 125)
            {
              v33 = v31;
              if (v31 <= 126 && v31 != 92)
              {
                if (v31 > 0x7F)
                {
                  v38 = __endptr;
                  v37 = __maskrune(v31, 0x40000uLL);
                  v32 = v38;
                  if (v37)
                  {
                    goto LABEL_89;
                  }
                }

                else if ((*(v13 + 4 * (v31 & 0x7F) + 60) & 0x40000) != 0)
                {
LABEL_89:
                  v34 = qword_2A1462C58;
                  v35 = v12 + 2;
                  *(qword_2A1462C58 + v24) = 39;
                  if (v33 == 92 || v33 == 39)
                  {
                    *(v34 + v35) = 92;
                    LODWORD(v35) = v12 + 3;
                  }

                  v36 = (v34 + v35);
                  *v36 = v33;
                  v36[1] = 39;
                  v22 = v32;
                  v12 = v35;
                  goto LABEL_96;
                }
              }
            }
          }

          *(qword_2A1462C58 + v24) = *v22;
LABEL_96:
          v12 += 2;
          goto LABEL_78;
        }
      }

      else
      {
        if (v14 == 27)
        {
          v18 = qword_2A1462C58;
          v19 = 17756;
          goto LABEL_66;
        }

        if (v14 != 32)
        {
          if (!*v6)
          {
            result = qword_2A1462C58;
            *(qword_2A1462C58 + v12) = 0;
            return result;
          }

          goto LABEL_49;
        }

        if (v4)
        {
          if (v6 == a1)
          {
            goto LABEL_21;
          }

          v15 = v6;
          do
          {
            v17 = *v15++;
            v16 = v17;
          }

          while (v17 == 32);
          if (!v16)
          {
LABEL_21:
            v18 = qword_2A1462C58;
            v19 = 29532;
            goto LABEL_66;
          }

LABEL_49:
          if (v14 > 0x7E)
          {
            v28 = 0;
LABEL_60:
            if (v14 == 10)
            {
              if (v8 < 4)
              {
                goto LABEL_70;
              }

              v18 = qword_2A1462C58;
              v19 = 28252;
            }

            else
            {
              if (v14 != 13 || v8 <= 3 && (strlen(a1) < 3 || v6[1]))
              {
LABEL_70:
                if (v28)
                {
LABEL_71:
                  if (v14 != 92 && (*(v13 + 4 * v14 + 60) & 0x200) != 0 && (v8 < 4 || *(v6 + 1) - 48 <= 9))
                  {
                    sprintf((qword_2A1462C58 + v12), "^%c", (v14 + 64));
                    goto LABEL_67;
                  }
                }

                sprintf((qword_2A1462C58 + v12), "\\%03o", v14);
                v12 += 4;
                goto LABEL_77;
              }

              v18 = qword_2A1462C58;
              v19 = 29276;
            }

LABEL_66:
            *(v18 + v12) = v19;
LABEL_67:
            v12 += 2;
            goto LABEL_77;
          }
        }
      }

LABEL_50:
      if ((*(v13 + 4 * v14 + 60) & 0x40000) == 0)
      {
        v28 = 1;
        goto LABEL_60;
      }

      if (*v6 > 0x39u)
      {
        if (v14 == 58 || v14 == 94)
        {
          goto LABEL_71;
        }
      }

      else if (v14 == 33)
      {
        if (!v4)
        {
          goto LABEL_71;
        }
      }

      else if (v14 == 44)
      {
        goto LABEL_71;
      }

      *(qword_2A1462C58 + v12) = v14;
      v22 = v6;
      ++v12;
LABEL_78:
      v6 = v22 + 1;
    }
  }

  return result;
}

const name_table_entry *__cdecl _nc_find_entry(const char *a1, const HashValue *a2)
{
  hash_table = _nc_get_hash_table(0);
  hash_info = _nc_get_hash_info(hash_table != a2);
  v6 = (hash_info->hash_of)(a1);
  if (hash_info->table_data[v6] < 0)
  {
    return 0;
  }

  v7 = v6;
  table = _nc_get_table(hash_table != a2);
  v9 = hash_info->table_data[v7];
  v10 = &table[v9];
  if (!(hash_info->compare_names)(v10->nte_name, a1))
  {
    while (1)
    {
      nte_link = table[v9].nte_link;
      if (nte_link < 0)
      {
        break;
      }

      v9 = hash_info->table_data[hash_info->table_size] + nte_link;
      if ((hash_info->compare_names)(table[v9].nte_name, a1))
      {
        return &table[v9];
      }
    }

    return 0;
  }

  return v10;
}

const name_table_entry *__cdecl _nc_find_type_entry(const char *a1, int a2, BOOL a3)
{
  hash_info = _nc_get_hash_info(a3);
  v7 = (hash_info->hash_of)(a1);
  if (hash_info->table_data[v7] < 0)
  {
    return 0;
  }

  v8 = v7;
  table = _nc_get_table(a3);
  for (i = hash_info->table_data[v8]; ; i = hash_info->table_data[hash_info->table_size] + nte_link)
  {
    v11 = &table[i];
    if (v11->nte_type == a2)
    {
      if ((hash_info->compare_names)(v11->nte_name, a1))
      {
        break;
      }
    }

    nte_link = v11->nte_link;
    if (nte_link < 0)
    {
      return 0;
    }
  }

  return v11;
}

void sub_29947E630(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  if ((v4[39] + 1) <= 1)
  {
    if ((v4[43] + 1) >= 2 && (v4[35] + 1) <= 1)
    {
      _nc_warning("exit_standout_mode but no enter_standout_mode");
      v4 = *(a1 + 32);
    }

    if ((v4[35] + 1) >= 2 && (v4[43] + 1) <= 1)
    {
      _nc_warning("enter_standout_mode but no exit_standout_mode");
      v4 = *(a1 + 32);
    }

    if ((v4[44] + 1) >= 2 && (v4[36] + 1) <= 1)
    {
      _nc_warning("exit_underline_mode but no enter_underline_mode");
      v4 = *(a1 + 32);
    }

    if ((v4[36] + 1) >= 2 && (v4[44] + 1) <= 1)
    {
      _nc_warning("enter_underline_mode but no exit_underline_mode");
      v4 = *(a1 + 32);
    }

    if ((v4[321] + 1) >= 2 && (v4[311] + 1) <= 1)
    {
      _nc_warning("exit_italics_mode but no enter_italics_mode");
      v4 = *(a1 + 32);
    }

    if ((v4[311] + 1) >= 2 && (v4[321] + 1) <= 1)
    {
      _nc_warning("enter_italics_mode but no exit_italics_mode");
    }
  }

  if ((a2 & 1) == 0)
  {
    sub_29947F794(a1, 0);
    v5 = *(a1 + 32);
    if ((v5[25] + 1) >= 2 && (v5[146] + 1) <= 1)
    {
      _nc_warning("enter_alt_charset_mode but no acs_chars");
      v5 = *(a1 + 32);
    }

    if ((v5[38] + 1) >= 2 && (v5[146] + 1) <= 1)
    {
      _nc_warning("exit_alt_charset_mode but no acs_chars");
    }
  }

  v6 = *(a1 + 32);
  if ((v6[38] + 1) >= 2 && (v6[25] + 1) <= 1)
  {
    _nc_warning("exit_alt_charset_mode but no enter_alt_charset_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[25] + 1) >= 2 && (v6[38] + 1) <= 1)
  {
    _nc_warning("enter_alt_charset_mode but no exit_alt_charset_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[26] + 1) >= 2 && (v6[39] + 1) <= 1)
  {
    _nc_warning("enter_blink_mode but no exit_attribute_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[27] + 1) >= 2 && (v6[39] + 1) <= 1)
  {
    _nc_warning("enter_bold_mode but no exit_attribute_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[28] + 1) >= 2 && (v6[40] + 1) <= 1)
  {
    _nc_warning("enter_ca_mode but no exit_ca_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[40] + 1) >= 2 && (v6[28] + 1) <= 1)
  {
    _nc_warning("exit_ca_mode but no enter_ca_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[41] + 1) >= 2 && (v6[29] + 1) <= 1)
  {
    _nc_warning("exit_delete_mode but no enter_delete_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[29] + 1) >= 2 && (v6[41] + 1) <= 1)
  {
    _nc_warning("enter_delete_mode but no exit_delete_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[30] + 1) >= 2 && (v6[39] + 1) <= 1)
  {
    _nc_warning("enter_dim_mode but no exit_attribute_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[42] + 1) >= 2 && (v6[31] + 1) <= 1)
  {
    _nc_warning("exit_insert_mode but no enter_insert_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[31] + 1) >= 2 && (v6[42] + 1) <= 1)
  {
    _nc_warning("enter_insert_mode but no exit_insert_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[32] + 1) >= 2 && (v6[39] + 1) <= 1)
  {
    _nc_warning("enter_secure_mode but no exit_attribute_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[33] + 1) >= 2 && (v6[39] + 1) <= 1)
  {
    _nc_warning("enter_protected_mode but no exit_attribute_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[34] + 1) >= 2 && (v6[39] + 1) <= 1)
  {
    _nc_warning("enter_reverse_mode but no exit_attribute_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[135] + 1) >= 2 && (v6[47] + 1) <= 1)
  {
    _nc_warning("to_status_line but no from_status_line");
    v6 = *(a1 + 32);
  }

  if ((v6[47] + 1) >= 2 && (v6[135] + 1) <= 1)
  {
    _nc_warning("from_status_line but no to_status_line");
    v6 = *(a1 + 32);
  }

  if ((v6[102] + 1) >= 2 && (v6[101] + 1) <= 1)
  {
    _nc_warning("meta_on but no meta_off");
    v6 = *(a1 + 32);
  }

  if ((v6[101] + 1) >= 2 && (v6[102] + 1) <= 1)
  {
    _nc_warning("meta_off but no meta_on");
    v6 = *(a1 + 32);
  }

  if ((v6[119] + 1) >= 2 && (v6[120] + 1) <= 1)
  {
    _nc_warning("prtr_off but no prtr_on");
    v6 = *(a1 + 32);
  }

  if ((v6[120] + 1) >= 2 && (v6[119] + 1) <= 1)
  {
    _nc_warning("prtr_on but no prtr_off");
    v6 = *(a1 + 32);
  }

  if ((v6[126] + 1) >= 2 && (v6[128] + 1) <= 1)
  {
    _nc_warning("restore_cursor but no save_cursor");
    v6 = *(a1 + 32);
  }

  if ((v6[128] + 1) >= 2 && (v6[126] + 1) <= 1)
  {
    _nc_warning("save_cursor but no restore_cursor");
    v6 = *(a1 + 32);
  }

  if ((v6[150] + 1) >= 2 && (v6[149] + 1) <= 1)
  {
    _nc_warning("exit_xon_mode but no enter_xon_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[149] + 1) >= 2 && (v6[150] + 1) <= 1)
  {
    _nc_warning("enter_xon_mode but no exit_xon_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[152] + 1) >= 2 && (v6[151] + 1) <= 1)
  {
    _nc_warning("exit_am_mode but no enter_am_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[151] + 1) >= 2 && (v6[152] + 1) <= 1)
  {
    _nc_warning("enter_am_mode but no exit_am_mode");
    v6 = *(a1 + 32);
  }

  if ((v6[157] + 1) >= 2 && (v6[156] + 1) <= 1)
  {
    _nc_warning("label_off but no label_on");
    v6 = *(a1 + 32);
  }

  if ((v6[276] + 1) >= 2 && (v6[275] + 1) <= 1)
  {
    _nc_warning("remove_clock but no display_clock");
    v6 = *(a1 + 32);
  }

  if ((v6[275] + 1) >= 2 && (v6[276] + 1) <= 1)
  {
    _nc_warning("display_clock but no remove_clock");
    v6 = *(a1 + 32);
  }

  if ((v6[301] + 1) >= 2 && (v6[300] + 1) <= 1)
  {

    _nc_warning("set_color_pair but no initialize_pair");
  }
}

char *sub_29947EDBC(char *a1, char *a2, int a3)
{
  v5 = a1;
  v17 = *MEMORY[0x29EDCA608];
  if (!strchr(a1, 124))
  {
    v5 = sub_29947F7F4(v16, v5);
  }

  if (!strchr(a2, 124))
  {
    a2 = sub_29947F7F4(v15, a2);
  }

  if (_nc_syntax == 1 && _nc_user_definable)
  {
    v6 = strchr(v5, 124);
    if (v6 - v5 == 2 && v6 != 0)
    {
      v5 = v6 + 1;
    }

    v8 = strchr(a2, 124);
    if (v8 - a2 == 2 && v8 != 0)
    {
      a2 = v8 + 1;
    }
  }

  result = strchr(v5, 124);
  if (result)
  {
    v11 = result;
    v12 = strchr(a2, 124);
    while (!v12)
    {
LABEL_24:
      v5 = v11 + 1;
      result = strchr(v11 + 1, 124);
      v11 = result;
      if (!result)
      {
        return result;
      }
    }

    v13 = v12;
    v14 = a2;
    while (v11 - v5 != v13 - v14 || memcmp(v5, v14, v11 - v5))
    {
      v14 = v13 + 1;
      v13 = strchr(v13 + 1, 124);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    if (a3 >= 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "Name collision '%.*s' between\n", v11 - v5, v5);
    }

    return 1;
  }

  return result;
}

void _nc_read_entry_source(FILE *a1, char *a2, int a3, BOOL a4, BOOL (__cdecl *a5)(_ENTRY *))
{
  v8 = _nc_suppress_warnings;
  if (a4)
  {
    _nc_suppress_warnings = 1;
  }

  _nc_reset_input(a1, a2);
  bzero(&v15, 0x400uLL);
  if (_nc_parse_entry(&v15, a3, a4) != -1)
  {
    v9 = MEMORY[0x29EDCA600];
    do
    {
      v10 = *v15.tterm.term_names;
      if (v10 < 0)
      {
        if (!__maskrune(*v15.tterm.term_names, 0x500uLL))
        {
LABEL_27:
          _nc_err_abort("terminal names must start with letter or digit");
        }
      }

      else if ((*(v9 + 4 * v10 + 60) & 0x500) == 0)
      {
        goto LABEL_27;
      }

      if (!a5 || ((a5)(&v15) & 1) == 0)
      {
        v11 = _nc_copy_entry(&v15);
        if (!v11)
        {
          _nc_err_abort("Out of memory");
        }

        v12 = _nc_tail;
        v11->last = _nc_tail;
        _nc_tail = v11;
        v11->next = 0;
        if (v12)
        {
          v12->next = v11;
        }

        if (v15.tterm.Booleans)
        {
          free(v15.tterm.Booleans);
        }

        if (v15.tterm.Numbers)
        {
          free(v15.tterm.Numbers);
        }

        if (v15.tterm.Strings)
        {
          free(v15.tterm.Strings);
        }

        if (v15.tterm.ext_Names)
        {
          free(v15.tterm.ext_Names);
        }
      }

      bzero(&v15, 0x400uLL);
    }

    while (_nc_parse_entry(&v15, a3, a4) != -1);
  }

  v13 = _nc_tail;
  if (_nc_tail)
  {
    do
    {
      v14 = v13;
      v13 = v13->last;
    }

    while (v13);
    _nc_head = v14;
  }

  _nc_suppress_warnings = v8;
}

int _nc_resolve_uses2(BOOL a1, BOOL a2)
{
  v55 = a2;
  v60 = *MEMORY[0x29EDCA608];
  v2 = _nc_head;
  if (_nc_head)
  {
    v54 = a1;
    v3 = 0;
    v4 = _nc_head;
LABEL_3:
    v5 = 0;
    do
    {
      if (v4 > v2 && (v6 = (v5 + 1), sub_29947EDBC(v4->tterm.term_names, v2->tterm.term_names, v5 + 1)))
      {
        if (!v5)
        {
          fprintf(*MEMORY[0x29EDCA610], "\t%s\n", v2->tterm.term_names);
        }

        fprintf(*MEMORY[0x29EDCA610], "and\t%s\n", v4->tterm.term_names);
        term_names = v2->tterm.term_names;
        v8 = v4->tterm.term_names;
        if (_nc_syntax == 1 && _nc_user_definable)
        {
          v9 = strchr(v2->tterm.term_names, 124);
          if (v9 - term_names == 2 && v9 != 0)
          {
            term_names = v9 + 1;
          }

          v11 = strchr(v8, 124);
          if (v11 - v8 == 2 && v11 != 0)
          {
            v8 = v11 + 1;
          }
        }

        v13 = *term_names;
        if (*term_names)
        {
          v56 = v3;
          v14 = 0;
          do
          {
            for (i = 0; v13; v13 = term_names[++i])
            {
              if (v13 == 124)
              {
                break;
              }
            }

            v16 = *v8;
            if (*v8)
            {
              v17 = v8;
              while (1)
              {
                for (j = 0; v16; v16 = v17[++j])
                {
                  if (v16 == 124)
                  {
                    break;
                  }
                }

                if (i == j && !memcmp(term_names, v17, i))
                {
                  break;
                }

                if (v16)
                {
                  v19 = v17 + 1;
                }

                else
                {
                  v19 = v17;
                }

                v17 = &v19[j];
                v16 = v19[j];
                if (!v19[j])
                {
                  goto LABEL_46;
                }
              }

              if (v17 != v8 || v16 == 124)
              {
                if (v16 == 124)
                {
                  v20 = j + 1;
                }

                else
                {
                  v20 = j;
                }

                do
                {
                  v21 = v17[v20];
                  *v17++ = v21;
                }

                while (v21);
                fprintf(*MEMORY[0x29EDCA610], "...now\t%s\n");
              }

              else
              {
                fprintf(*MEMORY[0x29EDCA610], "Cannot remove alias '%.*s'\n");
              }

              v14 = 1;
            }

LABEL_46:
            if (term_names[i])
            {
              term_names += i + 1;
            }

            else
            {
              term_names += i;
            }

            v13 = *term_names;
          }

          while (*term_names);
          v3 = v56 + ((v14 & 1) == 0);
        }

        else
        {
          ++v3;
        }
      }

      else
      {
        v6 = v5;
      }

      v2 = v2->next;
      v5 = v6;
    }

    while (v2);
    while (1)
    {
      v4 = v4->next;
      if (!v4)
      {
        break;
      }

      v2 = _nc_head;
      if (_nc_head)
      {
        goto LABEL_3;
      }
    }

    if (v3 > 0)
    {
      return 0;
    }

    v42 = _nc_head;
    _nc_curr_col = -1;
    *&a1 = v54;
    if (_nc_head)
    {
      v57 = 0;
      v43 = 0;
      do
      {
        if (v42->nuses)
        {
          v44 = 0;
          do
          {
            name = _nc_first_name(v42->tterm.term_names);
            v46 = &v42->uses[v44];
            v47 = *v46;
            v48 = *(v46 + 16);
            _nc_set_type(name);
            v49 = _nc_head;
            if (!_nc_head)
            {
              goto LABEL_102;
            }

            v50 = 0;
            do
            {
              while (v49 != v42 && _nc_name_match(v49->tterm.term_names, v47, "|"))
              {
                *(v46 + 8) = v49;
                v49 = v49->next;
                v50 = 1;
                if (!v49)
                {
                  goto LABEL_106;
                }
              }

              v49 = v49->next;
            }

            while (v49);
            if ((v50 & 1) == 0)
            {
LABEL_102:
              memset(&v58, 0, 72);
              if (_nc_read_entry(v47, &v59, &v58.type) == 1)
              {
                v51 = malloc(0x400uLL);
                if (!v51)
                {
                  _nc_err_abort("Out of memory");
                }

                v52 = *&v58.type.ext_Names;
                *&v51->tterm.Strings = *&v58.type.Strings;
                *&v51->tterm.ext_Names = v52;
                *&v51->tterm.ext_Numbers = *&v58.type.ext_Numbers;
                v53 = *&v58.type.Booleans;
                *&v51->tterm.term_names = *&v58.type.term_names;
                *&v51->tterm.Booleans = v53;
                v51->nuses = 0;
                v51->next = v57;
                v57 = v51;
                *(v46 + 8) = v51;
              }

              else
              {
                ++v43;
                _nc_curr_line = v48;
                _nc_warning("resolution of use=%s failed", v47);
                *(v46 + 8) = 0;
              }
            }

LABEL_106:
            ++v44;
          }

          while (v44 < v42->nuses);
        }

        v42 = v42->next;
      }

      while (v42);
      *&a1 = v54;
      if (v43)
      {
        _nc_free_entries(v57);
        return 0;
      }
    }
  }

  else
  {
    _nc_curr_col = -1;
  }

  if (a1)
  {
    do
    {
      memset(&v59, 0, sizeof(v59));
      v23 = _nc_head;
      if (!_nc_head)
      {
        break;
      }

      v24 = 0;
      do
      {
        nuses = v23->nuses;
        if (nuses)
        {
          v26 = 88;
          do
          {
            if ((*(&v23->tterm.term_names + v26))[18])
            {
              v24 = 1;
              goto LABEL_80;
            }

            v26 += 24;
            --nuses;
          }

          while (nuses);
          _nc_copy_termtype(&v59, &v23->tterm);
          for (k = v23->nuses; k; v23->nuses = k)
          {
            _nc_merge_entry(&v59, &v23->uses[k - 1].link->tterm);
            k = v23->nuses - 1;
          }

          _nc_merge_entry(&v59, &v23->tterm);
          Booleans = v23->tterm.Booleans;
          if (Booleans)
          {
            free(Booleans);
          }

          Numbers = v23->tterm.Numbers;
          if (Numbers)
          {
            free(Numbers);
          }

          Strings = v23->tterm.Strings;
          if (Strings)
          {
            free(Strings);
          }

          ext_Names = v23->tterm.ext_Names;
          if (ext_Names)
          {
            free(ext_Names);
          }

          *&v23->tterm.term_names = *&v59.term_names;
          v32 = *&v59.Booleans;
          v33 = *&v59.Strings;
          v34 = *&v59.ext_Names;
          *&v23->tterm.ext_Numbers = *&v59.ext_Numbers;
          *&v23->tterm.Strings = v33;
          *&v23->tterm.ext_Names = v34;
          *&v23->tterm.Booleans = v32;
          v24 = 1;
          _nc_wrap_entry(v23, 1);
        }

LABEL_80:
        v23 = v23->next;
      }

      while (v23);
    }

    while ((v24 & 1) != 0);
    if (_nc_check_termtype)
    {
      _nc_curr_col = -1;
      for (m = _nc_head; m; m = m->next)
      {
        _nc_curr_line = m->startline;
        v36 = _nc_first_name(m->tterm.term_names);
        _nc_set_type(v36);
        if (_nc_check_termtype2 == sub_29947E630)
        {
          sub_29947F794(m, v55);
        }

        else
        {
          v37 = SP;
          v38 = cur_term;
          bzero(&v59, 0x648uLL);
          memset(&v58.type.ext_Names, 0, 192);
          memset(&v58.type.Booleans, 0, 32);
          *&v58.type.term_names = 0u;
          v59.ext_Names = &v58;
          *&v58.type.term_names = *&m->tterm.term_names;
          v39 = *&m->tterm.Booleans;
          v40 = *&m->tterm.Strings;
          v41 = *&m->tterm.ext_Names;
          *&v58.type.ext_Numbers = *&m->tterm.ext_Numbers;
          *&v58.type.Strings = v40;
          *&v58.type.ext_Names = v41;
          *&v58.type.Booleans = v39;
          SP = &v59;
          set_curterm(&v58);
          _nc_check_termtype2(&m->tterm, v55);
          SP = v37;
          set_curterm(v38);
        }
      }
    }
  }

  return 1;
}

char *sub_29947F794(char *result, int a2)
{
  if (!a2)
  {
    v2 = *(result + 4);
    if (!v2[146])
    {
      if (v2[25])
      {
        if (v2[38])
        {
          v2[146] = result;
        }
      }
    }
  }

  return result;
}

char *sub_29947F7F4(char *a1, char *__s)
{
  if (strchr(__s, 124))
  {
    return __s;
  }

  v4 = strlen(__s);
  if (v4 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v4;
  }

  strncpy(a1, __s, v5);
  *&a1[v5] = 124;
  return a1;
}

void _nc_reset_input(FILE *a1, char *a2)
{
  dword_2A1462C68 = -1;
  if (qword_2A1462C70)
  {
    *qword_2A1462C70 = 0;
  }

  qword_2A1462C78 = a1;
  qword_2A1462C80 = a2;
  qword_2A1462C88 = a2;
  _nc_curr_file_pos = 0;
  if (a1)
  {
    _nc_curr_line = 0;
  }

  _nc_curr_col = 0;
}

int _nc_get_token(BOOL a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = dword_2A1462C68;
  if (dword_2A1462C68 != -1)
  {
    if (qword_2A1462C70)
    {
      v2 = qword_2A1462C70;
    }

    else
    {
      v2 = &unk_2994B2093;
    }

    _nc_set_type(v2);
    dword_2A1462C68 = -1;
    if (qword_2A1462C70)
    {
      *qword_2A1462C70 = 0;
    }

    return v1;
  }

  if (qword_2A1462C78)
  {
    if (feof(qword_2A1462C78))
    {
      v4 = qword_2A1462C80;
      if (!qword_2A1462C80)
      {
        goto LABEL_99;
      }

LABEL_12:
      if (!*v4)
      {
LABEL_99:
        qword_2A1462C78 = 0;
        sub_2994802C0();
        v1 = -1;
        if (qword_2A1462C90 && _nc_curr_token.tk_name == qword_2A1462C90)
        {
          _nc_curr_token.tk_name = 0;
        }

        return v1;
      }
    }
  }

  else
  {
    v4 = qword_2A1462C80;
    if (qword_2A1462C80)
    {
      goto LABEL_12;
    }
  }

  v66 = 0;
  v67 = a1;
  v5 = MEMORY[0x29EDCA600];
  while (1)
  {
    if (qword_2A1462C78)
    {
      v6 = MEMORY[0x29C29D6A0]();
    }

    else if (qword_2A1462C80)
    {
      v6 = qword_2A1462C80 - qword_2A1462C88;
    }

    else
    {
      v6 = 0;
    }

    do
    {
      while (1)
      {
        v7 = sub_2994802C0();
        v8 = v7;
        if (v7 > 31)
        {
          break;
        }

        if (v7 != 9)
        {
          if (v7 != 10)
          {
            goto LABEL_27;
          }

          byte_2A1462C98 = 1;
        }
      }
    }

    while (v7 == 32);
    if (v7 == 92)
    {
      do
      {
        v9 = sub_2994802C0();
        v8 = v9;
      }

      while (v9 <= 0x20 && ((1 << v9) & 0x100000600) != 0);
    }

LABEL_27:
    _nc_curr_token.tk_valstring = 0;
    if (v8 == -1)
    {
LABEL_102:
      v1 = -1;
      v34 = a1;
      goto LABEL_169;
    }

    if (v8 == 58 && byte_2A1462C99 == 58)
    {
      v8 = sub_2994802C0();
    }

    if (v8 == 46)
    {
      if (_nc_disable_period)
      {
        v8 = 46;
LABEL_39:
        if ((*(v5 + 4 * v8 + 60) & 0x500) != 0)
        {
          break;
        }

        goto LABEL_42;
      }

      do
      {
        v10 = sub_2994802C0();
        v8 = v10;
      }

      while (v10 <= 0x2E && ((1 << v10) & 0x400100000200) != 0);
      v66 = 1;
    }

    if (v8 == -1)
    {
      goto LABEL_102;
    }

    if (v8 <= 0x7F)
    {
      goto LABEL_39;
    }

    if (__maskrune(v8, 0x500uLL))
    {
      break;
    }

LABEL_42:
    if (v8 == 46 && _nc_disable_period || memchr("@%&*!#", v8, 7uLL))
    {
      break;
    }

    if (!a1)
    {
      v11 = unctrl(v8);
      _nc_warning("Illegal character (expected alphanumeric or %s) - '%s'", "@%&*!#", v11);
    }

    v12 = byte_2A1462C99;
    do
    {
      v13 = sub_2994802C0();
    }

    while (v13 != v12 && v13 != -1);
  }

  v14 = 0x2A1462000uLL;
  v15 = qword_2A1462C90;
  if (!qword_2A1462C90)
  {
    v15 = malloc(0x1000uLL);
    qword_2A1462C90 = v15;
  }

  __endptr = 0;
  v15[1] = 0;
  v16 = v15 + 1;
  *v15 = v8;
  if (byte_2A1462C9A != 1)
  {
    if (byte_2A1462C98 == 1 && _nc_syntax == 1)
    {
      _nc_warning("Missing backslash before newline");
      byte_2A1462C98 = 0;
    }

    v35 = sub_2994802C0();
    if (v35 == -1)
    {
      v38 = v15 + 1;
      v34 = a1;
LABEL_121:
      *v38 = 0;
      v1 = -1;
      goto LABEL_169;
    }

    v36 = v35;
    v37 = v15 + 1;
    v34 = v67;
    while (1)
    {
      if (v36 > 0x7F)
      {
        if (__maskrune(v36, 0x500uLL))
        {
          goto LABEL_116;
        }
      }

      else if ((*(v5 + 4 * v36 + 60) & 0x500) != 0)
      {
        goto LABEL_116;
      }

      if (_nc_syntax)
      {
        if (v36 != 59)
        {
          goto LABEL_122;
        }
      }

      else if (v36 != 95)
      {
LABEL_122:
        *v16 = 0;
        v39 = v16 + 1;
        if (v36 <= 57)
        {
          if (v36 == 35)
          {
            for (i = 0; i != 79; ++i)
            {
              v57 = sub_2994802C0();
              v58 = v57;
              if (v57 > 0x7F)
              {
                v59 = __maskrune(v57, 0x500uLL);
              }

              else
              {
                v59 = *(v5 + 4 * v57 + 60) & 0x500;
              }

              if (!v59)
              {
                break;
              }

              __str[i] = v58;
            }

            __str[i] = 0;
            v60 = strtol(__str, &__endptr, 0);
            if (!v67)
            {
              v61 = __endptr;
              if (__endptr == __str)
              {
              }

              if (*v61)
              {
                v62 = 0;
              }

              else
              {
                v62 = v58 == byte_2A1462C99;
              }

              if (!v62)
              {
                _nc_warning("Missing separator");
              }
            }

            _nc_curr_token.tk_name = qword_2A1462C90;
            _nc_curr_token.tk_valnumber = v60;
            v1 = 1;
            goto LABEL_169;
          }

          if (v36 != 44)
          {
            goto LABEL_192;
          }
        }

        else if (v36 != 58)
        {
          if (v36 == 61)
          {
            v55 = _nc_trans_string(v39, (qword_2A1462C90 + 4096));
            if (!v67 && v55 != byte_2A1462C99)
            {
              _nc_warning("Missing separator");
            }

            _nc_curr_token.tk_name = qword_2A1462C90;
            _nc_curr_token.tk_valstring = v39;
            v1 = 2;
            goto LABEL_169;
          }

          if (v36 == 64)
          {
            v40 = sub_2994802C0();
            v41 = v66;
            if (v40 != byte_2A1462C99 && !v67)
            {
              v42 = qword_2A1462C90;
              v43 = unctrl(v40);
            }

            _nc_curr_token.tk_name = qword_2A1462C90;
            v1 = 3;
            goto LABEL_170;
          }

LABEL_192:
          if (!v67)
          {
            v63 = unctrl(v36);
            _nc_warning("Illegal character - '%s'", v63);
          }

          v1 = 5;
          goto LABEL_169;
        }

        if (v36 != byte_2A1462C99)
        {
          _nc_err_abort("Separator inconsistent with syntax");
        }

        v1 = 0;
        _nc_curr_token.tk_name = qword_2A1462C90;
        goto LABEL_169;
      }

LABEL_116:
      if (&v37[-qword_2A1462C90] > 4093)
      {
        v38 = v16;
        goto LABEL_121;
      }

      v16[1] = 0;
      v38 = v16 + 1;
      *v16 = v36;
      v36 = sub_2994802C0();
      ++v37;
      ++v16;
      if (v36 == -1)
      {
        goto LABEL_121;
      }
    }
  }

  __s = 0;
  v17 = 0;
  _nc_comment_start = v6;
  _nc_comment_end = _nc_curr_file_pos;
  v18 = 0x2A1462000uLL;
  _nc_start_line = _nc_curr_line;
  _nc_syntax = -1;
  while (1)
  {
    v19 = sub_2994802C0();
    if (v19 <= 57)
    {
      break;
    }

    switch(v19)
    {
      case ':':
        v25 = sub_299480608(0);
        LOBYTE(v19) = 58;
        if (v25 != 44)
        {
          *(v18 + 3528) = 1;
          byte_2A1462C99 = 58;
          goto LABEL_135;
        }

        break;
      case '|':
        if (!v17)
        {
          v17 = v16;
        }

        __s = v16;
        break;
      case '\\':
        do
        {
          v19 = sub_2994802C0();
        }

        while (v19 <= 0x20 && ((1 << v19) & 0x100000600) != 0);
        break;
    }

LABEL_97:
    if (&v16[-*(v14 + 3216)] > 4093)
    {
      goto LABEL_135;
    }

    *v16 = v19;
    *++v16 = 0;
  }

  if (v19 != 44)
  {
    if (v19 == 10)
    {
      goto LABEL_135;
    }

    if (v19 == -1)
    {
      _nc_err_abort("Premature EOF");
    }

    goto LABEL_97;
  }

  *(v18 + 3528) = 0;
  byte_2A1462C99 = 44;
  if (!v17)
  {
    goto LABEL_135;
  }

  v20 = sub_299480608(0);
  v21 = sub_299480608(1);
  LOBYTE(v19) = 44;
  if (v21 == 58 || v20 == 92 || v20 == 58)
  {
    goto LABEL_97;
  }

  for (j = qword_2A1462C80; ; ++j)
  {
    v23 = *j;
    if ((v23 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__maskrune(*j, 0x4000uLL))
    {
      if (!__maskrune(v23, 0x1000uLL))
      {
        goto LABEL_92;
      }

      goto LABEL_82;
    }

LABEL_66:
    ;
  }

  v24 = *(v5 + 4 * v23 + 60);
  if ((v24 & 0x4000) != 0)
  {
    goto LABEL_66;
  }

  if ((v24 & 0x1000) == 0)
  {
LABEL_92:
    LOBYTE(v19) = 44;
    goto LABEL_97;
  }

LABEL_82:
  v26 = v14;
  v27 = j;
  do
  {
    v28 = *v27;
    if (v28 < 0)
    {
      v29 = __maskrune(*v27, 0x500uLL);
    }

    else
    {
      v29 = *(v5 + 4 * v28 + 60) & 0x500;
    }

    ++v27;
  }

  while (v29);
  v30 = v28;
  LOBYTE(v19) = 44;
  if (v28 > 0x3Cu)
  {
    v14 = v26;
    if (v30 == 61)
    {
      v18 = 0x2A1462000uLL;
      goto LABEL_135;
    }

    v33 = v30 == 64;
LABEL_96:
    v18 = 0x2A1462000;
    if (v33)
    {
      goto LABEL_135;
    }

    goto LABEL_97;
  }

  v14 = v26;
  if (v30 != 44)
  {
    v33 = v30 == 35;
    goto LABEL_96;
  }

  *(v27 - 1) = 0;
  hash_table = _nc_get_hash_table(0);
  entry = _nc_find_entry(j, hash_table);
  LOBYTE(v19) = 44;
  *(v27 - 1) = 44;
  v18 = 0x2A1462000;
  if (!entry)
  {
    goto LABEL_97;
  }

LABEL_135:
  *v16 = 0;
  v44 = *(v18 + 3528);
  if (v44 == -1)
  {
    *(v18 + 3528) = 1;
    byte_2A1462C99 = 58;
    v34 = v67;
    v45 = __s;
  }

  else
  {
    v34 = v67;
    v45 = __s;
    if (!v44)
    {
      do
      {
        v46 = v16;
        v47 = *--v16;
        v48 = (1 << v47) & 0x100100000200;
      }

      while (v47 <= 0x2C && v48 != 0);
      *v46 = 0;
    }
  }

  if (v17)
  {
    v50 = *v17;
    *v17 = 0;
    _nc_set_type(*(v14 + 3216));
    *v17 = v50;
  }

  if (v45)
  {
    if (!v34)
    {
      if (*v45)
      {
        if (!strchr(v45, 32))
        {
          _nc_warning("older tic versions may treat the description field as an alias");
        }
      }

      else
      {
        _nc_warning("empty longname field");
      }
    }
  }

  else
  {
    v45 = (*(v14 + 3216) + strlen(*(v14 + 3216)));
  }

  v51 = *(v14 + 3216);
  if (v51 < v45)
  {
    while (1)
    {
      v52 = *v51;
      v53 = *v51;
      if (v52 < 0)
      {
        if (__maskrune(*v51, 0x4000uLL))
        {
LABEL_162:
          if (!v34)
          {
            _nc_warning("whitespace in name or alias field", v64);
          }

          goto LABEL_168;
        }
      }

      else if ((*(v5 + 4 * v52 + 60) & 0x4000) != 0)
      {
        goto LABEL_162;
      }

      if (v52 == 47)
      {
        break;
      }

      if (memchr("$[]!*?", v53, 7uLL))
      {
        if (!v34)
        {
        }

        goto LABEL_168;
      }

      if (++v51 == v45)
      {
        goto LABEL_168;
      }
    }

    if (!v34)
    {
      _nc_warning("slashes aren't allowed in names or aliases");
    }
  }

LABEL_168:
  _nc_curr_token.tk_name = *(v14 + 3216);
  v1 = 4;
LABEL_169:
  v41 = v66;
LABEL_170:
  if (v41 == 1)
  {
    return _nc_get_token(v34);
  }

  return v1;
}

uint64_t sub_2994802C0()
{
  if (!qword_2A1462C78)
  {
    if (qword_2A1462CA0)
    {
      free(qword_2A1462CA0);
      qword_2A1462CA0 = 0;
      free(qword_2A1462C70);
      qword_2A1462C70 = 0;
      qword_2A1462CA8 = 0;
    }

    v0 = qword_2A1462C80;
    if (!qword_2A1462C80)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = *qword_2A1462C80;
    if (!*qword_2A1462C80)
    {
      return 0xFFFFFFFFLL;
    }

    if (v14 != 9)
    {
      if (v14 != 10)
      {
        goto LABEL_57;
      }

      v15 = 0;
      ++_nc_curr_line;
LABEL_56:
      _nc_curr_col = v15;
      goto LABEL_57;
    }

LABEL_55:
    v15 = _nc_curr_col | 7;
    goto LABEL_56;
  }

  v0 = qword_2A1462C80;
  if (!qword_2A1462C80)
  {
    goto LABEL_5;
  }

  if (*qword_2A1462C80 == 9)
  {
    goto LABEL_55;
  }

  if (!*qword_2A1462C80)
  {
LABEL_5:
    v1 = 0;
    qword_2A1462C88 = 0;
    while (1)
    {
      if (v1 + 256 >= qword_2A1462CA8)
      {
        qword_2A1462CA8 = 2 * qword_2A1462CA8 + 1024;
        v2 = _nc_doalloc(qword_2A1462CA0, qword_2A1462CA8);
        qword_2A1462CA0 = v2;
        if (!v2)
        {
          return 0xFFFFFFFFLL;
        }

        if (qword_2A1462C88)
        {
          qword_2A1462C88 = v2;
        }
      }

      if (!v1)
      {
        _nc_curr_file_pos = MEMORY[0x29C29D6A0](qword_2A1462C78);
      }

      v3 = 0;
      v4 = qword_2A1462CA0 + v1;
      v5 = qword_2A1462CA8 - v1 >= 1 ? 1 : qword_2A1462CA8 - v1;
      v6 = qword_2A1462CA8 - v1 - v5;
      while (v6 != v3)
      {
        v7 = fgetc(qword_2A1462C78);
        if (v7 == -1)
        {
          v6 = v3;
          break;
        }

        if (!v7)
        {
          _nc_err_abort("This is not a text-file");
        }

        *(v4 + v3++) = v7;
        if (v7 == 10)
        {
          *(v4 + v3) = 0;
          goto LABEL_23;
        }
      }

      *(v4 + v3) = 0;
      if (!v6)
      {
        if (v1)
        {
          *(qword_2A1462CA0 + strlen(qword_2A1462CA0)) = 10;
        }

        goto LABEL_29;
      }

LABEL_23:
      v0 = qword_2A1462CA0;
      qword_2A1462C88 = qword_2A1462CA0;
      if (v1)
      {
        goto LABEL_30;
      }

      if (!_nc_curr_line && *qword_2A1462CA0 == 282)
      {
        _nc_err_abort("This is a compiled terminal description, not a source");
      }

      ++_nc_curr_line;
      _nc_curr_col = 0;
LABEL_29:
      v0 = qword_2A1462C88;
LABEL_30:
      qword_2A1462C80 = v0;
      if (!v0)
      {
        return 0xFFFFFFFFLL;
      }

      v1 = strlen(v0);
      v8 = _nc_curr_col;
      while (1)
      {
        v9 = *v0;
        if (v9 != 32 && v9 != 9)
        {
          break;
        }

        if (v9 == 9)
        {
          v8 |= 7u;
        }

        _nc_curr_col = ++v8;
        qword_2A1462C80 = ++v0;
      }

      v11 = strlen(v0);
      if (v11 >= 2)
      {
        v12 = &v0[v11];
        if (v0[v11 - 1] == 10 && *(v12 - 2) == 13)
        {
          v13 = &v0[v11--];
          *(v12 - 2) = 10;
          *(v13 - 1) = 0;
        }
      }

      if (v0[v11 - 1] == 10)
      {
        if (*qword_2A1462CA0 == 35)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

LABEL_57:
  byte_2A1462C9A = v0 == qword_2A1462C88;
  if (v0 == qword_2A1462C88)
  {
    byte_2A1462C98 = 0;
  }

  ++_nc_curr_col;
  qword_2A1462C80 = (v0 + 1);
  return *v0;
}

void _nc_panic_mode(char a1)
{
  v1 = a1;
  do
  {
    v2 = sub_2994802C0();
  }

  while (v2 != v1 && v2 != -1);
}

uint64_t sub_299480608(int a1)
{
  v2 = strlen(qword_2A1462C80);
  v3 = v2 - 1;
  v4 = -v2;
  v5 = MEMORY[0x29EDCA600];
  while (v3 != -1)
  {
    v6 = qword_2A1462C80;
    v7 = *(qword_2A1462C80 + v3);
    if (v7 < 0)
    {
      v8 = __maskrune(*(qword_2A1462C80 + v3), 0x4000uLL);
    }

    else
    {
      v8 = *(v5 + 4 * v7 + 60) & 0x4000;
    }

    --v3;
    ++v4;
    if (!v8)
    {
      if (-v4 > a1)
      {
        return *(v6 + -(a1 + v4));
      }

      return 0;
    }
  }

  return 0;
}

int _nc_trans_string(char *a1, char *a2)
{
  v3 = 0;
  v4 = 0;
  v25 = 0;
  v5 = a2 - 1;
  while (1)
  {
    while (1)
    {
      v6 = sub_2994802C0();
      v7 = v6;
      if (v6 == -1 || v6 == byte_2A1462C99)
      {
        goto LABEL_102;
      }

      if (a1 >= v5)
      {
        do
        {
          v22 = sub_2994802C0();
          v7 = v22;
        }

        while (v22 != -1 && v22 != byte_2A1462C99);
        goto LABEL_102;
      }

      if (v6 == 10 && _nc_syntax == 1)
      {
        goto LABEL_101;
      }

      if (v6 == 94 && v4 != 37)
      {
        v13 = sub_2994802C0();
        if (v13 == -1)
        {
LABEL_103:
          _nc_err_abort("Premature EOF");
        }

        v14 = v13;
        if (v13 > 0x7F || (*(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x40000) == 0)
        {
          v15 = unctrl(v13);
          _nc_warning("Illegal ^ character - '%s'", v15);
        }

        if (v14 == 63 && _nc_syntax != 1)
        {
          *a1 = 127;
          if (_nc_tracing)
          {
            _nc_warning("Allow ^? as synonym for \\177");
          }

          v7 = 63;
          goto LABEL_86;
        }

        if ((v14 & 0x1F) != 0)
        {
          v7 = v14 & 0x1F;
        }

        else
        {
          v7 = 128;
        }

        goto LABEL_85;
      }

      if (v6 == 92)
      {
        break;
      }

      if (v6 != 10 || _nc_syntax)
      {
        goto LABEL_85;
      }

LABEL_88:
      if (!((v3 < 601) | v25 & 1))
      {
        _nc_warning("Very long string found.  Missing separator?");
        v25 = 1;
      }
    }

    v9 = _nc_syntax == 1 && _nc_strict_bsd != 0;
    v10 = sub_2994802C0();
    if (v10 == -1)
    {
      goto LABEL_103;
    }

    v7 = v10;
    v11 = v10 - 48;
    if ((v10 & 0xFFFFFFF8) == 0x30)
    {
      goto LABEL_53;
    }

    if (v11 < 0xA && v9)
    {
      break;
    }

    if (v10 != 10)
    {
      if (v10 > 101)
      {
        if (v10 <= 113)
        {
          if (v10 == 102)
          {
            *a1 = 12;
            v7 = 102;
            goto LABEL_86;
          }

          if (v10 == 110)
          {
            *a1 = 10;
            v7 = 110;
            goto LABEL_86;
          }
        }

        else
        {
          switch(v10)
          {
            case 'r':
              *a1 = 13;
              v7 = 114;
              goto LABEL_86;
            case 't':
              *a1 = 9;
              v7 = 116;
              goto LABEL_86;
            case '|':
              goto LABEL_85;
          }
        }
      }

      else
      {
        if (v10 > 91)
        {
          switch(v10)
          {
            case '\\':
              v7 = 92;
              break;
            case '^':
              v7 = 94;
              break;
            case 'b':
              *a1 = 8;
              v7 = 98;
              goto LABEL_86;
            default:
              goto LABEL_67;
          }

LABEL_85:
          *a1 = v7;
          goto LABEL_86;
        }

        if (v10 == 44)
        {
          v7 = 44;
          goto LABEL_85;
        }

        if (v10 == 69)
        {
          *a1 = 27;
          v7 = 69;
          goto LABEL_86;
        }
      }

LABEL_67:
      if (_nc_syntax && _nc_strict_bsd)
      {
        goto LABEL_85;
      }

      if (v10 <= 100)
      {
        if (v10 == 58)
        {
          goto LABEL_85;
        }

        if (v10 == 97)
        {
          v7 = 7;
          goto LABEL_85;
        }
      }

      else
      {
        switch(v10)
        {
          case 's':
            v7 = 32;
            goto LABEL_85;
          case 'l':
            v7 = 10;
            goto LABEL_85;
          case 'e':
            v7 = 27;
            goto LABEL_85;
        }
      }

      v21 = unctrl(v10);
      _nc_warning("Illegal character '%s' in \\ sequence", v21);
      goto LABEL_85;
    }
  }

  v9 = 1;
LABEL_53:
  v16 = 1;
  while (2)
  {
    v17 = v16;
    v18 = sub_2994802C0();
    if (v18 == -1)
    {
      goto LABEL_103;
    }

    v7 = v18;
    if ((v18 & 0xFFFFFFF8) == 0x30)
    {
LABEL_59:
      v16 = 0;
      LOBYTE(v11) = v7 + 8 * v11 - 48;
      if ((v17 & 1) == 0)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  if ((v18 - 48) <= 9)
  {
    if (!v9)
    {
    }

    goto LABEL_59;
  }

  v19 = qword_2A1462C80;
  if (qword_2A1462C80 == qword_2A1462C88)
  {
    goto LABEL_104;
  }

  --qword_2A1462C80;
  *(v19 - 1) = v18;
  --_nc_curr_col;
LABEL_76:
  if (v9)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x80;
  }

  if (v11)
  {
    v20 = v11;
  }

  *a1 = v20;
LABEL_86:
  ++a1;
  if (_nc_curr_col > 1)
  {
    ++v3;
    v4 = v7;
    goto LABEL_88;
  }

  v23 = qword_2A1462C80;
  if (qword_2A1462C80 == qword_2A1462C88)
  {
LABEL_104:
    _nc_syserr_abort("Can't backspace off beginning of line");
  }

  --qword_2A1462C80;
  *(v23 - 1) = v7;
  --_nc_curr_col;
LABEL_101:
  v7 = 10;
LABEL_102:
  *a1 = 0;
  return v7;
}

void _nc_push_token(int a1)
{
  dword_2A1462C68 = a1;
  v1 = qword_2A1462C70;
  if (!qword_2A1462C70)
  {
    v1 = malloc(0x201uLL);
    qword_2A1462C70 = v1;
  }

  _nc_get_type(v1);
}

const char *__cdecl _nc_tic_dir(const char *a1)
{
  if ((PC[49] & 1) == 0)
  {
    if (a1)
    {
      *&PC[56] = a1;
      PC[48] = 1;
    }

    else if ((PC[48] & 1) == 0)
    {
      result = getenv("TERMINFO");
      if (result)
      {
        *&PC[56] = result;
        PC[48] = 1;
        return result;
      }
    }
  }

  if (*&PC[56])
  {
    return *&PC[56];
  }

  else
  {
    return "/usr/share/terminfo";
  }
}

const char *_nc_keep_tic_dir(const char *a1)
{
  result = _nc_tic_dir(a1);
  PC[49] = 1;
  return result;
}

void _nc_last_db(void)
{
  if (*&PC[296])
  {
    if (sub_299480C64())
    {
      free(*&PC[296]);
      *&PC[296] = 0;
      free(*&PC[304]);
      *&PC[304] = 0;
    }
  }
}

uint64_t sub_299480C64()
{
  if (time(0) <= *&PC[320])
  {
    v1 = 0;
    for (i = &PC[328]; !*i || (sub_2994810E8(*i, v1) & 1) == 0; i += 2)
    {
      if (++v1 == 9)
      {
        return 0;
      }
    }
  }

  return 1;
}

const char *__cdecl _nc_next_db(DBDIRS *a1, int *a2)
{
  v2 = *a1;
  if (v2 >= *&PC[312] || *&PC[304] == 0)
  {
    return 0;
  }

  v4 = *(*&PC[304] + 8 * v2);
  if (v4)
  {
    *a1 = v2 + 1;
  }

  return v4;
}

void _nc_first_db(DBDIRS *a1, int *a2)
{
  v39 = *MEMORY[0x29EDCA608];
  *a1 = dbdTIC;
  *a2 = 0;
  if (*&PC[296])
  {
    if (!sub_299480C64())
    {
      return;
    }

    free(*&PC[296]);
    *&PC[296] = 0;
    free(*&PC[304]);
    *&PC[304] = 0;
  }

  v35[0] = *&PC[56];
  v35[4] = "/usr/share/terminfo";
  v35[5] = "/usr/share/terminfo";
  v38 = "/etc/termcap:/usr/share/misc/termcap";
  sub_2994810E8("TERMINFO", 1);
  v35[1] = *&PC[352];
  v35[2] = _nc_home_terminfo();
  sub_2994810E8("HOME", 2);
  sub_2994810E8("TERMINFO_DIRS", 3);
  v35[3] = *&PC[384];
  sub_2994810E8("TERMCAP", 6);
  v36 = *&PC[432];
  if (*&PC[432] && **&PC[432] != 47)
  {
    v36 = 0;
  }

  sub_2994810E8("TERMPATH", 7);
  v2 = 0;
  v3 = 0;
  v37 = *&PC[448];
  do
  {
    if (v35[v2])
    {
      v4 = v35[v2];
    }

    else
    {
      v4 = &unk_2994B2093;
    }

    v35[v2] = v4;
    v3 += strlen(v4) + 2;
    ++v2;
  }

  while (v2 != 9);
  v5 = malloc(v3);
  *&PC[296] = v5;
  if (v5)
  {
    v6 = 0;
    *v5 = 0;
    do
    {
      v7 = v35[v6];
      if (*v7)
      {
        v8 = strlen(*&PC[296]);
        v9 = (*&PC[296] + v8);
        if (v8)
        {
          *v9++ = 58;
        }

        strcpy(v9, v7);
      }

      ++v6;
    }

    while (v6 != 9);
    v10 = *&PC[296];
    v11 = 2;
    do
    {
      while (1)
      {
        v13 = *v10++;
        v12 = v13;
        if (v13 != 58)
        {
          break;
        }

        ++v11;
      }
    }

    while (v12);
    *&PC[304] = calloc(v11, 8uLL);
    v14 = calloc(v11, 0x90uLL);
    v15 = *&PC[296];
    if (*&PC[304])
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      free(*&PC[296]);
      *&PC[296] = 0;
      goto LABEL_61;
    }

    v17 = 0;
    **&PC[304] = *&PC[296];
    v18 = 1;
    while (1)
    {
      if (*(v15 + v17) == 58)
      {
        *(v15 + v17) = 0;
        *(*&PC[304] + 8 * v18++) = *&PC[296] + v17 + 1;
        v15 = *&PC[296];
      }

      else if (!*(v15 + v17))
      {
        v19 = *&PC[304];
        v20 = **&PC[304];
        if (!**&PC[304])
        {
          goto LABEL_59;
        }

        v21 = 0;
        v22 = 0;
        v23 = *&PC[304];
        do
        {
          if (!*v20)
          {
            *v23 = strdup("/usr/share/terminfo");
            v19 = *&PC[304];
          }

          if (v22 >= 1)
          {
            v24 = 0;
            v25 = v19[v21];
            while (strcmp(v25, v19[v24]))
            {
              if (v22 == ++v24)
              {
                goto LABEL_47;
              }
            }

            v26 = 8 * v22;
            do
            {
              v27 = *(*&PC[304] + v26 + 8);
              *(*&PC[304] + v26) = v27;
              v26 += 8;
            }

            while (v27);
            v19 = *&PC[304];
            --v22;
          }

LABEL_47:
          v21 = ++v22;
          v23 = &v19[v22];
          v20 = *v23;
        }

        while (*v23);
        v28 = *v19;
        if (*v19)
        {
          v29 = 0;
          v30 = 0;
          do
          {
            v31 = &v14[144 * v29];
            if (stat(v28, v31) || (v34 = v31->st_mode & 0xF000, v34 != 0x4000) && v34 != 0x8000)
            {
              v32 = 8 * v30;
              do
              {
                v33 = *(*&PC[304] + v32 + 8);
                *(*&PC[304] + v32) = v33;
                v32 += 8;
              }

              while (v33);
              --v30;
            }

            v29 = ++v30;
            v28 = *(*&PC[304] + 8 * v30);
          }

          while (v28);
        }

        else
        {
LABEL_59:
          v30 = 0;
        }

        *&PC[312] = v30;
        *&PC[320] = time(0);
LABEL_61:
        free(v14);
        return;
      }

      ++v17;
    }
  }
}

char *sub_2994810E8(const char *a1, int a2)
{
  result = getenv(a1);
  if (result)
  {
    result = strdup(result);
    if (result)
    {
      v5 = result;
      v6 = &PC[16 * a2 + 16];
      v7 = *(v6 + 39);
      if (v7 && !strcmp(v7, a1))
      {
        v9 = *(v6 + 40);
        if (v9)
        {
          if (!strcmp(v5, *(v6 + 40)))
          {
            free(v5);
            return 0;
          }

          free(v9);
        }
      }

      else
      {
        v8 = *(v6 + 40);
        if (v8)
        {
          free(v8);
        }

        *(v6 + 39) = a1;
      }

      *(v6 + 40) = v5;
      return 1;
    }
  }

  return result;
}

int define_key(const char *a1, int a2)
{
  if (SP)
  {
    v2 = cur_term == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return -1;
  }

  v4 = *&a2;
  if (a2 > 0)
  {
    if (a1)
    {
        ;
      }

      v3 = -1;
    }

    else
    {
      if (!has_key(a2))
      {
        return -1;
      }

      v8 = -1;
      do
      {
        v3 = v8;
        v9 = _nc_remove_key((SP + 160), v4);
        v8 = 0;
      }

      while (v9);
    }

    if (!a1)
    {
      return v3;
    }

    if (!key_defined(a1))
    {
      if (_nc_add_to_try((SP + 160), a1, v4))
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    return -1;
  }

  v6 = -1;
  do
  {
    v3 = v6;
    v7 = _nc_remove_string((SP + 160), a1);
    v6 = 0;
  }

  while (v7);
  return v3;
}

void *_nc_doalloc(void *a1, size_t __size)
{
  if (a1)
  {
    result = realloc(a1, __size);
    if (!result)
    {
      free(a1);
      v5 = __error();
      result = 0;
      *v5 = 12;
    }
  }

  else
  {

    return malloc(__size);
  }

  return result;
}

void _nc_free_entry(_ENTRY *a1, _ENTRY *a2)
{
  v2 = _nc_delink_entry(a1, a2);
  if (v2)
  {

    free(v2);
  }
}

_ENTRY *_nc_delink_entry(_ENTRY *result, _ENTRY *a2)
{
  if (result)
  {
    if (result == a2)
    {
      v3 = 0;
LABEL_8:
      next = result->next;
      if (v3)
      {
        v3->next = next;
      }

      if (next)
      {
        next->last = v3;
      }

      if (_nc_head == a2)
      {
        _nc_head = next;
      }

      if (_nc_tail == a2)
      {
        _nc_tail = v3;
      }
    }

    else
    {
      v2 = result;
      while (1)
      {
        result = v2->next;
        if (!result)
        {
          break;
        }

        v3 = v2;
        v2 = v2->next;
        if (result == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

void _nc_free_entries(_ENTRY *a1)
{
  while (_nc_head)
  {
    _nc_free_termtype(&_nc_head->tterm);
  }
}

void _nc_free_termtype(TERMTYPE *a1)
{
  str_table = a1->str_table;
  if (str_table)
  {
    free(str_table);
  }

  Booleans = a1->Booleans;
  if (Booleans)
  {
    free(Booleans);
  }

  Numbers = a1->Numbers;
  if (Numbers)
  {
    free(Numbers);
  }

  Strings = a1->Strings;
  if (Strings)
  {
    free(Strings);
  }

  ext_str_table = a1->ext_str_table;
  if (ext_str_table)
  {
    free(ext_str_table);
  }

  ext_Names = a1->ext_Names;
  if (ext_Names)
  {
    free(ext_Names);
  }

  *&a1->ext_Numbers = 0;
  *&a1->Strings = 0u;
  *&a1->ext_Names = 0u;
  *&a1->term_names = 0u;
  *&a1->Booleans = 0u;
  v8 = _nc_head;

  _nc_free_entry(v8, a1);
}

int use_extended_names(BOOL a1)
{
  v1 = _nc_user_definable;
  _nc_user_definable = a1;
  return v1;
}

uint64_t _nc_getenv_num(const char *a1)
{
  __endptr = 0;
  v1 = getenv(a1);
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  result = strtol(v1, &__endptr, 0);
  if (result < 0 || __endptr == v2 || *__endptr || result > result)
  {
    return -1;
  }

  return result;
}

const char *_nc_setenv_num(const char *result, int a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if (result)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v2 = result;
      __sprintf_chk(__value, 0, 0x80uLL, "%d", a2);
      return setenv(v2, __value, 1);
    }
  }

  return result;
}

void _nc_scroll_optimize()
{
  v0 = *(SP + 1432);
  v1 = *(SP + 1440);
  v2 = *(SP + 128);
  if (v0)
  {
    v3 = v1 < v2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (v1 <= v2)
    {
      v4 = *(SP + 128);
    }

    else
    {
      v4 = *(SP + 1440);
    }

    v5 = _nc_doalloc(v0, 4 * v4);
    if (!v5)
    {
      return;
    }

    v6 = SP;
    *(SP + 1432) = v5;
    *(v6 + 1440) = v4;
  }

  _nc_hash_map();
  v7 = SP;
  v8 = *(SP + 128);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(v7 + 1432);
      v11 = v9;
      v12 = v9 << 32;
      v13 = v9 + 1;
      while (1)
      {
        v14 = *(v10 + 4 * v11);
        if (v14 != -1 && v11 < v14)
        {
          break;
        }

        ++v11;
        v12 += 0x100000000;
        ++v13;
        if (v11 >= v8)
        {
          goto LABEL_27;
        }
      }

      v16 = *(v10 + (v12 >> 30));
      v17 = (v16 - v11);
      do
      {
        v18 = v16;
        v9 = v13;
        if (v13 >= v8)
        {
          break;
        }

        v19 = *(v10 + 4 * v13);
        v16 = (v16 + 1);
        ++v13;
      }

      while (v19 != -1 && v19 - 1 == v18);
      _nc_scrolln(v17, v11, v18, (v8 - 1));
      v7 = SP;
      v8 = *(SP + 128);
    }

    while (v9 < v8);
  }

LABEL_27:
  v21 = (v8 - 1);
  if (v8 >= 1)
  {
    while (2)
    {
      v22 = *(SP + 1432);
      v23 = v21;
      while (1)
      {
        v24 = *(v22 + 4 * v23);
        if (v24 != -1 && v24 < v23)
        {
          break;
        }

        v3 = v23 <= 0;
        v23 = (v23 - 1);
        if (v3)
        {
          return;
        }
      }

      v26 = (v24 - v23);
      v27 = v23 - 1;
      LODWORD(v21) = v23;
      do
      {
        v28 = v21;
        v29 = __OFSUB__(v21, 1);
        v21 = (v21 - 1);
        if (v21 < 0 != v29)
        {
          v33 = (*(SP + 128) - 1);

          _nc_scrolln(v26, v24, v23, v33);
          return;
        }

        v30 = *(v22 + 4 * v27);
        v31 = v24 - v30;
        v24 = (v24 - 1);
        --v27;
      }

      while (v30 != -1 && v31 == 1);
      _nc_scrolln(v26, (v24 + 1), v23, (*(SP + 128) - 1));
      if (v28 > 0)
      {
        continue;
      }

      break;
    }
  }
}

void _nc_hash_map()
{
  v0 = SP;
  LODWORD(v1) = *(SP + 128);
  if (*(SP + 1424) < *(SP + 128))
  {
    v2 = *(SP + 1416);
    if (v2)
    {
      free(v2);
      v0 = SP;
      LODWORD(v1) = *(SP + 128);
    }

    v3 = malloc(48 * v1 + 48);
    *(v0 + 1416) = v3;
    if (!v3)
    {
      v68 = *(v0 + 1400);
      if (v68)
      {
        free(v68);
        v0 = SP;
        *(SP + 1400) = 0;
      }

      *(v0 + 1424) = 0;
      return;
    }

    *(v0 + 1424) = v1;
  }

  if (!*(v0 + 1400))
  {
    v13 = calloc(v1, 8uLL);
    v0 = SP;
    *(SP + 1400) = v13;
    v14 = *(v0 + 1408);
    if (v14)
    {
LABEL_21:
      v15 = *(v0 + 1400);
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return;
      }

      v1 = *(v0 + 128);
      if (v1 >= 1)
      {
        v17 = 0;
        v18 = *(v0 + 136);
        v19 = *(v18 + 6);
        v20 = (*(v18 + 6) + 1) + 1;
        do
        {
          if (v19 < 0)
          {
            v25 = 0;
            v14[v17] = 0;
          }

          else
          {
            v21 = 0;
            v22 = (*(*(*(v0 + 144) + 40) + 16 * v17) + 4);
            v23 = v20;
            do
            {
              v24 = *v22;
              v22 += 7;
              v21 = 33 * v21 + v24;
              --v23;
            }

            while (v23 > 1);
            v25 = 0;
            v14[v17] = v21;
            v26 = (*(*(v18 + 40) + 16 * v17) + 4);
            v27 = v20;
            do
            {
              v28 = *v26;
              v26 += 7;
              v25 = 33 * v25 + v28;
              --v27;
            }

            while (v27 > 1);
          }

          *(v15 + 8 * v17++) = v25;
        }

        while (v17 != v1);
      }

      goto LABEL_35;
    }

LABEL_20:
    v14 = calloc(*(v0 + 128), 8uLL);
    v0 = SP;
    *(SP + 1408) = v14;
    goto LABEL_21;
  }

  v4 = *(v0 + 1408);
  if (!v4)
  {
    goto LABEL_20;
  }

  if (v1 >= 1)
  {
    v5 = 0;
    v6 = *(*(v0 + 144) + 40);
    do
    {
      v7 = (v6 + 16 * v5);
      if (*(v7 + 4) != -1)
      {
        if (*(*(v0 + 136) + 6) < 0)
        {
          v8 = 0;
        }

        else
        {
          v8 = 0;
          v9 = *v7;
          v10 = *(*(v0 + 136) + 6) + 2;
          v11 = (v9 + 4);
          do
          {
            v12 = *v11;
            v11 += 7;
            v8 = 33 * v8 + v12;
            --v10;
          }

          while (v10 > 1);
        }

        *(v4 + 8 * v5) = v8;
      }

      ++v5;
    }

    while (v5 != v1);
  }

LABEL_35:
  bzero(*(v0 + 1416), 48 * v1 + 48);
  v29 = SP;
  v30 = *(SP + 128);
  if (v30 < 1)
  {
    v40 = *(SP + 1416);
  }

  else
  {
    v31 = 0;
    v32 = *(SP + 1400);
    v33 = *(SP + 1416) - 8;
    do
    {
      v34 = *(v32 + 8 * v31);
      v35 = v33;
      do
      {
        v36 = *(v35 + 8);
        v35 += 24;
        if (v36)
        {
          v37 = v36 == v34;
        }

        else
        {
          v37 = 1;
        }
      }

      while (!v37);
      *(v35 - 16) = v34;
      ++*(v35 - 8);
      *v35 = v31++;
    }

    while (v31 != v30);
    v38 = 0;
    v39 = v29[176];
    v40 = v29[177];
    v41 = v29[179];
    do
    {
      v42 = *(v39 + 8 * v38);
      v43 = v40 - 12;
      do
      {
        v44 = *(v43 + 12);
        v43 += 24;
        if (v44)
        {
          v45 = v44 == v42;
        }

        else
        {
          v45 = 1;
        }
      }

      while (!v45);
      *(v43 - 12) = v42;
      ++*v43;
      *(v43 + 2) = v38;
      *(v41 + 4 * v38++) = -1;
    }

    while (v38 != v30);
  }

  if (*v40)
  {
    v46 = v40 + 3;
    do
    {
      if (*(v46 - 4) == 1 && *(v46 - 3) == 1)
      {
        v47 = *(v46 - 2);
        v48 = *(v46 - 1);
        if (v47 != v48)
        {
          *(v29[179] + 4 * v48) = v47;
        }
      }

      v49 = *v46;
      v46 += 3;
    }

    while (v49);
  }

  sub_299481B98(v29);
  v50 = SP;
  v51 = *(SP + 128);
  if (v51 >= 1)
  {
    v52 = 0;
    v53 = *(SP + 1432);
    do
    {
      v54 = 0;
      v55 = v52;
      v56 = v52 << 32;
      v52 = v52;
      while (*(v53 + 4 * v52) == -1)
      {
        ++v52;
        v56 += 0x100000000;
        ++v54;
        if (v52 >= v51)
        {
          goto LABEL_84;
        }
      }

      v57 = (v53 + (v56 >> 30));
      v58 = -1;
      do
      {
        v59 = v54;
        v60 = v58;
        if (v55 + 1 + v54 >= v51)
        {
          break;
        }

        v61 = *(v53 + 4 + 4 * v55 + 4 * v54++);
        --v58;
      }

      while (v61 != -1 && *v57 - v61 == v60);
      v63 = v59 + v55;
      v64 = -v60;
      if (-v60 < 3 || (v64 <= 0x17 ? (v65 = v64 >> 3) : (v65 = 2), (v66 = v65 - v60, *v57 - v52 >= 0) ? (v67 = *v57 - v52) : (v67 = v52 - *v57), v66 < v67))
      {
        if (v52 <= v63)
        {
          memset(v57, 255, 4 * (v63 - v52) + 4);
        }
      }

      v52 = v63 + 1;
    }

    while (v63 + 1 < v51);
  }

LABEL_84:

  sub_299481B98(v50);
}

uint64_t sub_299481B98(uint64_t a1)
{
  result = *(a1 + 128);
  if (result < 1)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = 0;
    while (*(*(a1 + 1432) + 4 * v3) == -1)
    {
      if (result == ++v3)
      {
        return result;
      }
    }
  }

  if (v3 < result)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a1 + 1432);
    v7 = result;
    v38 = a1;
    v39 = v6 - 4;
    v35 = result;
    v36 = v6;
    v34 = result;
    do
    {
      v8 = 0;
      v9 = v3;
      v10 = *(v6 + 4 * v3);
      v11 = v10 - v3;
      if (v3 + 1 > result)
      {
        v12 = v3 + 1;
      }

      else
      {
        v12 = result;
      }

      v13 = v3 + 1;
      do
      {
        if (v13 >= v7)
        {
          goto LABEL_23;
        }

        v14 = v13;
        v15 = *(v6 + 4 * v13);
        v16 = v8 - 1;
        ++v13;
      }

      while (v15 != -1 && v10 + 1 - v15 == v8--);
      v12 = v3 - v16;
      if (v3 - v16 >= result)
      {
LABEL_23:
        LODWORD(v3) = v12;
        v37 = v12;
        goto LABEL_24;
      }

      v18 = v14 << 32;
      v19 = (v6 + 4 * v14);
      LODWORD(v3) = v14;
      v20 = v7 - v14;
      while (1)
      {
        v21 = *v19++;
        if (v21 != -1)
        {
          break;
        }

        v18 += 0x100000000;
        LODWORD(v3) = v3 + 1;
        if (!--v20)
        {
          LODWORD(v3) = result;
          v37 = result;
          goto LABEL_24;
        }
      }

      v33 = *(v6 + (v18 >> 30));
      if (v33 >= v3)
      {
        v33 = v3;
      }

      v37 = v33;
LABEL_24:
      v22 = v4 - v11;
      if (v11 >= 0)
      {
        v22 = v5;
      }

      if (v9 > v22)
      {
        v23 = v38[175];
        v24 = v22;
        v25 = v9 - 1;
        v26 = v10 - 1;
        v27 = v38[176] - 8;
        do
        {
          if (*(v27 + 8 * v9) != *(v23 + 8 * v26) && !sub_299481FD4(v38, v26, v25, v11 >> 31))
          {
            break;
          }

          *(v39 + 4 * v9) = v26;
          --v25;
          --v26;
          --v9;
        }

        while (v9 > v24);
      }

      if (v11 <= 0)
      {
        v28 = v3;
      }

      else
      {
        v28 = v37 - v11;
      }

      if (v12 < v28)
      {
        v29 = v38[175];
        v30 = (v38[176] + 8 * v12);
        v31 = (v36 + 4 * v12);
        while (1)
        {
          v32 = *v30++;
          if (v32 != *(v29 + 8 * (v11 + v12)) && !sub_299481FD4(v38, v11 + v12, v12, v11 > 0))
          {
            break;
          }

          *v31++ = v11 + v12;
          if (v28 == ++v12)
          {
            v12 = v28;
            break;
          }
        }
      }

      v4 = v12 + (v11 & ~(v11 >> 31));
      v5 = v12;
      result = v35;
      v6 = v36;
      v7 = v34;
    }

    while (v3 < v35);
  }

  return result;
}

uint64_t _nc_make_oldhash(uint64_t result)
{
  v1 = *(SP + 1400);
  if (v1)
  {
    v2 = *(SP + 136);
    if (*(v2 + 6) < 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = *(*(v2 + 40) + 16 * result);
      v5 = *(v2 + 6) + 2;
      v6 = (v4 + 4);
      do
      {
        v7 = *v6;
        v6 += 7;
        v3 = 33 * v3 + v7;
        --v5;
      }

      while (v5 > 1);
    }

    *(v1 + 8 * result) = v3;
  }

  return result;
}

void *_nc_scroll_oldhash(void *result, int a2, int a3)
{
  v3 = *(SP + 1400);
  if (v3)
  {
    v6 = result;
    if (result >= 0)
    {
      v7 = result;
    }

    else
    {
      v7 = -result;
    }

    v8 = 8 * (a3 - a2 - v7 + 1);
    v9 = (v3 + 8 * a2);
    if (result < 1)
    {
      result = memmove(&v9[-8 * result], v9, v8);
      if (v6 < 0)
      {
        v19 = a2;
        v20 = *(SP + 136);
        v21 = *(v20 + 6);
        v22 = *(SP + 1400);
        v23 = (*(v20 + 6) + 1) + 1;
        do
        {
          v24 = 0;
          if ((v21 & 0x80000000) == 0)
          {
            v25 = (*(*(v20 + 40) + 16 * v19) + 4);
            v26 = v23;
            do
            {
              v27 = *v25;
              v25 += 7;
              v24 = 33 * v24 + v27;
              --v26;
            }

            while (v26 > 1);
          }

          *(v22 + 8 * v19++) = v24;
        }

        while (v19 < a2 - v6);
      }
    }

    else
    {
      result = memmove(v9, &v9[8 * result], v8);
      v10 = *(SP + 136);
      v11 = *(v10 + 6);
      v12 = *(SP + 1400);
      v13 = a3;
      v14 = (*(v10 + 6) + 1) + 1;
      do
      {
        v15 = 0;
        if ((v11 & 0x80000000) == 0)
        {
          v16 = (*(*(v10 + 40) + 16 * v13) + 4);
          v17 = v14;
          do
          {
            v18 = *v16;
            v16 += 7;
            v15 = 33 * v15 + v18;
            --v17;
          }

          while (v17 > 1);
        }

        *(v12 + 8 * v13--) = v15;
      }

      while (v13 > a3 - v6);
    }
  }

  return result;
}

BOOL sub_299481FD4(void *a1, int a2, int a3, int a4)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (*(a1[179] + 4 * a2) == -1)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a1[179] + 4 * a2);
  }

  if (a4)
  {
    v8 = sub_2994820E8(a1);
  }

  else
  {
    v8 = sub_299482218(a1);
  }

  v9 = sub_299482218(a1);
  v10 = v9 + v8;
  if (v7 == a2)
  {
    v9 = sub_2994820E8(a1);
  }

  return v10 >= (sub_299482218(a1) + v9);
}

uint64_t sub_2994820E8(uint64_t a1)
{
  v1 = a1;
  v2 = &_nc_abiver;
  if (cur_term->type.Booleans[28])
  {
    _nc_abiver(&_nc_abiver);
  }

  if (*(*(v1 + 136) + 6) < 0)
  {
    return 0;
  }

  v3 = (*v2)(v2);
  result = 0;
  v8 = *v3;
  v10 = v9 + 2;
  v12 = (v11 + 12);
  do
  {
    if (v6 != *(v12 - 3) || *(v12 - 2) != 32 || *(v12 - 1) || *v12 || v12[1] || v12[2] || v8 > v4 && v5 != v12[3])
    {
      result = (result + 1);
    }

    --v10;
    v12 += 7;
  }

  while (v10 > 1);
  return result;
}

uint64_t sub_299482218(uint64_t a1)
{
  if (*(*(a1 + 136) + 6) < 0)
  {
    return 0;
  }

  v1 = _nc_abiver(&_nc_abiver);
  result = 0;
  v3 = *v1;
  v5 = v4 + 2;
  v7 = (v6 + 12);
  v9 = (v8 + 12);
  do
  {
    if (*(v7 - 3) != *(v9 - 3) || *(v7 - 2) != *(v9 - 2) || *(v7 - 1) != *(v9 - 1) || *v7 != *v9 || v7[1] != v9[1] || v7[2] != v9[2] || v3 >= 0x60000 && v7[3] != v9[3])
    {
      result = (result + 1);
    }

    --v5;
    v7 += 7;
    v9 += 7;
  }

  while (v5 > 1);
  return result;
}

char *_nc_home_terminfo(void)
{
  result = *&PC[480];
  if (!*&PC[480])
  {
    result = getenv("HOME");
    if (result)
    {
      v1 = result;
      v2 = strlen(result);
      v3 = malloc(v2 + 13);
      *&PC[480] = v3;
      if (!v3)
      {
        _nc_err_abort("Out of memory");
      }

      sprintf(v3, "%s/.terminfo", v1);
      return *&PC[480];
    }
  }

  return result;
}

uint64_t _nc_init_keytry(uint64_t result)
{
  if (result)
  {
    v1 = result;
    code = 348;
    v3 = 1;
    v4 = _nc_tinfo_fkeys;
    do
    {
      offset = v4->offset;
      if (offset <= 0x19D)
      {
        result = _nc_add_to_try((v1 + 160), cur_term->type.Strings[offset], code);
      }

      v4 = &_nc_tinfo_fkeys[v3];
      code = v4->code;
      ++v3;
    }

    while (code);
    v6 = *(v1 + 48);
    LODWORD(v7) = *(v6 + 60);
    if (v7 >= 0x19F)
    {
      v8 = 414;
      do
      {
        v9 = *(*(v6 + 48) + 8 * (v8 + *(v6 + 66) + *(v6 + 64) + *(v6 + 62) - v7));
        if (v9)
        {
          v10 = *(v6 + 32);
          v11 = *(v10 + 8 * v8);
          if (*v9 == 107 && v11 != 0)
          {
            result = key_defined(*(v10 + 8 * v8));
            if (!result)
            {
              result = _nc_add_to_try((v1 + 160), v11, v8 + 97);
            }
          }
        }

        ++v8;
        v7 = *(v6 + 60);
      }

      while (v8 < v7);
    }
  }

  return result;
}

int key_defined(const char *a1)
{
  if (a1 && SP)
  {
    return sub_2994824A0(*(SP + 160), a1);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_2994824A0(uint64_t *a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  v4 = *a2;
  if (*a2)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      if (v4 == *(v3 + 16))
      {
        v6 = *v3;
        if (a2[1])
        {
          result = sub_2994824A0(v6, a2 + 1);
          if (result)
          {
            return result;
          }
        }

        else if (v6 || sub_2994824A0(0, a2 + 1))
        {
          return 0xFFFFFFFFLL;
        }

        result = *(v3 + 9);
        if (*(v3 + 9))
        {
          return result;
        }
      }

      v3 = v3[1];
    }

    while (v3);
  }

  return 0;
}

char *__cdecl keybound(int a1, int a2)
{
  v2 = *&a1;
  result = 0;
  v4 = a2;
  if ((v2 & 0x80000000) == 0)
  {
    if (SP)
    {
      return _nc_expand_try(*(SP + 160), v2, &v4, 0);
    }
  }

  return result;
}

int keyok(int a1, BOOL a2)
{
  if (!SP)
  {
    return -1;
  }

  v2 = *&a1;
  v3 = -1;
  if ((a1 & 0x80000000) == 0 && *(SP + 48))
  {
    v10 = 0;
    if (a2)
    {
      v4 = _nc_expand_try(*(SP + 168), *&a1, &v10, 0);
      if (v4)
      {
        v5 = v4;
        do
        {
          if (_nc_remove_key((SP + 168), v2))
          {
            v6 = _nc_add_to_try((SP + 160), v5, v2);
            free(v5);
            v3 = 0;
            v10 = 0;
            if (v6)
            {
              return v6;
            }
          }

          else
          {
            free(v5);
          }

          v5 = _nc_expand_try(*(SP + 168), v2, &v10, 0);
        }

        while (v5);
      }
    }

    else
    {
      v8 = _nc_expand_try(*(SP + 160), *&a1, &v10, 0);
      if (v8)
      {
        v9 = v8;
        do
        {
          if (_nc_remove_key((SP + 160), v2))
          {
            v6 = _nc_add_to_try((SP + 168), v9, v2);
            free(v9);
            v3 = 0;
            v10 = 0;
            if (v6)
            {
              return v6;
            }
          }

          else
          {
            free(v9);
          }

          v9 = _nc_expand_try(*(SP + 160), v2, &v10, 0);
        }

        while (v9);
      }
    }
  }

  return v3;
}

int use_legacy_coding(int a1)
{
  result = -1;
  if (a1 <= 2)
  {
    if (SP)
    {
      result = *(SP + 1456);
      *(SP + 1456) = a1;
    }
  }

  return result;
}

void _nc_init_acs(void)
{
  if (!SP || (v0 = *(SP + 1024), v0 == acs_map))
  {
    v3 = 0;
    xmmword_2A1463018 = 0u;
    xmmword_2A1462E2C = 0u;
    xmmword_2A1462FFC = 0u;
    unk_2A146300C = 0u;
    xmmword_2A1462FDC = 0u;
    *&dword_2A1462FEC = 0u;
    xmmword_2A1462FBC = 0u;
    unk_2A1462FCC = 0u;
    xmmword_2A1462F9C = 0u;
    unk_2A1462FAC = 0u;
    *(&xmmword_2A1462F78 + 4) = 0u;
    *(&qword_2A1462F88 + 4) = 0u;
    xmmword_2A1462F5C = 0u;
    *&qword_2A1462F6C = 0u;
    xmmword_2A1462F3C = 0u;
    unk_2A1462F4C = 0u;
    xmmword_2A1462F2C = 0u;
    unk_2A1462F1C = 0u;
    unk_2A1462F0C = 0u;
    unk_2A1462EFC = 0u;
    unk_2A1462EEC = 0u;
    unk_2A1462EDC = 0u;
    unk_2A1462ECC = 0u;
    unk_2A1462EBC = 0u;
    unk_2A1462EAC = 0u;
    unk_2A1462E9C = 0u;
    unk_2A1462E8C = 0u;
    unk_2A1462E7C = 0u;
    unk_2A1462E6C = 0u;
    unk_2A1462E5C = 0u;
    unk_2A1462E4C = 0u;
    unk_2A1462E3C = 0u;
    v0 = acs_map;
  }

  else
  {
    v1 = *(SP + 1032);
    for (i = 1; i != 128; ++i)
    {
      v0[i] = 0;
      acs_map[i] = i | 0x400000;
      *(v1 + i) = 0;
    }

    v3 = 1;
  }

  *&v4 = 0x2B0000002BLL;
  *(&v4 + 1) = 0x2B0000002BLL;
  *(v0 + 106) = v4;
  *(v0 + 48) = 0x3A0000002BLL;
  v0[126] = 111;
  *(v0 + 43) = xmmword_2994B03C0;
  *(v0 + 102) = xmmword_2994B03D0;
  v0[48] = 35;
  *(v0 + 110) = xmmword_2994B03E0;
  *(v0 + 114) = xmmword_2994B03F0;
  *(v0 + 118) = xmmword_2994B0400;
  *(v0 + 122) = xmmword_2994B0410;
  *(v0 + 77) = 0x2B0000002BLL;
  *(v0 + 21) = v4;
  *(v0 + 81) = 0x2D0000002DLL;
  *(v0 + 69) = v4;
  *(v0 + 73) = v4;
  *(v0 + 44) = 0x7C0000007CLL;
  *(v0 + 65) = v4;
  Strings = cur_term->type.Strings;
  v6 = Strings[155];
  if (v6)
  {
    _nc_putp("ena_acs", v6);
    Strings = cur_term->type.Strings;
  }

  v7 = Strings[379];
  if (v7)
  {
    v8 = Strings[25];
    if (v8)
    {
      if (!strcmp(v7, v8))
      {
        v14 = Strings[380];
        if (v14)
        {
          v15 = Strings[38];
          if (v15)
          {
            if (!strcmp(v14, v15))
            {
              for (j = 1; j != 128; ++j)
              {
                if (!v0[j])
                {
                  v0[j] = j;
                  v17 = SP ? v3 : 0;
                  if (v17 == 1)
                  {
                    *(*(SP + 1032) + j) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v9 = Strings[146];
  if (v9)
  {
    v10 = strlen(Strings[146]);
    if (v10 >= 2)
    {
      v11 = SP;
      for (k = 1; k < v10; k += 2)
      {
        v13 = *v9;
        if (v13 >= 1)
        {
          v0[v13] = v9[1] | 0x400000;
          if (v11)
          {
            *(*(v11 + 1032) + *v9) = 1;
          }
        }

        v9 += 2;
      }
    }
  }
}

uint64_t wadd_wch(WINDOW *a1, _OWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4[0] = *a2;
  *(v4 + 12) = *(a2 + 12);
  result = sub_299482A38(a1, v4);
  if (result != -1)
  {
    _nc_synchook(a1);
    return 0;
  }

  return result;
}

uint64_t sub_299482A38(WINDOW *a1, uint64_t a2)
{
  if ((*(a2 + 2) & 0x40) != 0)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 4);
  if (v4 > 0x7F)
  {
    if (__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_4;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * v4 + 60) & 0x40000) != 0)
  {
LABEL_4:
    *v20 = *a2;
    *&v20[12] = *(a2 + 12);
    return sub_299482D6C(a1, v20);
  }

  v6 = *a1;
  v7 = *(a2 + 4);
  if (v7 > 9)
  {
    if (v7 == 10)
    {
      wclrtoeol(a1);
      if (v6 >= *(a1 + 24) && *(a1 + 25) == v6)
      {
        if (*(a1 + 27) != 1)
        {
          return 0xFFFFFFFFLL;
        }

        wscrl(a1, 1);
      }

      else
      {
        LOWORD(v6) = v6 + 1;
      }
    }

    else if (v7 != 13)
    {
      goto LABEL_18;
    }

    LOWORD(v9) = 0;
LABEL_39:
    *(a1 + 6) &= ~0x40u;
LABEL_40:
    result = 0;
    *(a1 + 1) = v9;
    *a1 = v6;
    return result;
  }

  v8 = *(a1 + 1);
  if (v7 == 8)
  {
    if (!*(a1 + 1))
    {
      return 0;
    }

    LOWORD(v9) = v8 - 1;
    goto LABEL_39;
  }

  if (v7 == 9)
  {
    v9 = (TABSIZE + v8 / TABSIZE * TABSIZE);
    if ((*(a1 + 27) & 1) == 0 && *(a1 + 25) == v6 || v9 <= *(a1 + 3))
    {
      v18 = *a2 & 0xFFFFFF00;
      while (*(a1 + 1) < v9)
      {
        *v20 = v18;
        *&v20[20] = 0;
        *&v20[4] = *(&xmmword_2994B0420 + 4);
        v19 = sub_299482D6C(a1, v20);
        result = 0xFFFFFFFFLL;
        if (v19 == -1)
        {
          return result;
        }
      }
    }

    else
    {
      wclrtoeol(a1);
      *(a1 + 6) |= 0x40u;
      if (v6 >= *(a1 + 24) && *(a1 + 25) == v6)
      {
        if (*(a1 + 27) == 1)
        {
          wscrl(a1, 1);
          LOWORD(v9) = 0;
        }

        else
        {
          LOWORD(v9) = *(a1 + 3);
        }
      }

      else
      {
        LOWORD(v9) = 0;
        LOWORD(v6) = v6 + 1;
      }
    }

    goto LABEL_40;
  }

LABEL_18:
  v10 = wunctrl(a2);
  if (v10)
  {
    v11 = v10;
    v12 = _nc_abiver(&_nc_abiver);
    while (1)
    {
      v13 = *v11;
      if (!*v11)
      {
        break;
      }

      v14 = *a2;
      if (*v12 < 0x60000u)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(a2 + 24);
        if (!v15)
        {
          v15 = BYTE1(v14);
        }

        if (v15 >= 255)
        {
          v16 = -1;
        }

        else
        {
          v16 = v15;
        }

        v14 = v14 & 0xFFFF00FF | (v16 << 8);
      }

      ++v11;
      *v20 = v14;
      *&v20[4] = v13;
      *&v20[8] = 0;
      *&v20[16] = 0;
      *&v20[24] = v15;
      v17 = sub_299482D6C(a1, v20);
      result = 0xFFFFFFFFLL;
      if (v17 == -1)
      {
        return result;
      }
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t wecho_wchar(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5[0] = *a2;
  *(v5 + 12) = *(a2 + 12);
  result = sub_299482A38(a1, v5);
  if (result != -1)
  {
    v4 = *(a1 + 30);
    *(a1 + 30) = 1;
    _nc_synchook(a1);
    result = 0;
    *(a1 + 30) = v4;
  }

  return result;
}

uint64_t sub_299482D6C(__int16 *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = v4;
  v6 = *a1;
  v7 = a2 + 4;
  v55 = *(a2 + 12);
  v56 = *(a2 + 5);
  v11 = *_nc_abiver(&_nc_abiver);
  if (v10)
  {
    v14 = v11 >= 0x60000;
  }

  else
  {
    v14 = 0;
  }

  v15 = BYTE1(v9);
  if (v14)
  {
    v15 = v10;
  }

  if (v13 == 32 && !HIDWORD(v13) && (v9 | v15) == 0)
  {
    v23 = *(a1 + 22);
    v13 = *(a1 + 46);
    v55 = *(a1 + 50);
    v15 = *(a1 + 28);
    v56 = *(a1 + 27);
    v24 = v23 | v12 & 0xFFFFFF00;
    v25 = *(a1 + 29);
    if (v25 || (v25 = BYTE1(v12), BYTE1(v12)))
    {
      if (v11 >= 0x60000)
      {
LABEL_26:
        v26 = v25 << 8;
        if (v25 > 255)
        {
          v26 = 65280;
        }

        v22 = v26 | v24 & 0xFFFF00FF;
        v15 = v25;
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 >= 0x60000)
      {
        v25 = *(a1 + 28);
        if (!v15)
        {
          v25 = BYTE1(v23);
        }

        goto LABEL_26;
      }

      v25 = v23 >> 8;
    }

    v22 = v23 & 0xFFFF00FF | v12 & 0xFFFF0000 | (v25 << 8);
    goto LABEL_46;
  }

  v17 = *(a1 + 22);
  if ((v12 & 0xFF00) != 0)
  {
    v18 = -65536;
  }

  else
  {
    v18 = -256;
  }

  v19 = v17 & v18 | v12;
  if (v15 || (v15 = *(a1 + 29)) != 0 || (v15 = BYTE1(v12), BYTE1(v12)))
  {
    if ((v9 & 0xFF00) != 0)
    {
      v20 = -65536;
    }

    else
    {
      v20 = -256;
    }

    v21 = v19 & v20 | v9;
    if (v11 < 0x60000)
    {
LABEL_22:
      v22 = v21 & 0xFFFF0000 | v9 | (v15 << 8);
      v15 = v10;
      goto LABEL_46;
    }
  }

  else
  {
    if (v11 < 0x60000)
    {
      v15 = v17 >> 8;
      if ((v9 & 0xFF00) != 0)
      {
        v27 = -65536;
      }

      else
      {
        v27 = -256;
      }

      v21 = v19 & v27 | v9;
      goto LABEL_22;
    }

    v15 = *(a1 + 28);
    if (!v15)
    {
      v15 = BYTE1(v17);
    }

    if ((v9 & 0xFF00) != 0)
    {
      v28 = -65536;
    }

    else
    {
      v28 = -256;
    }

    v21 = v19 & v28 | v9;
  }

  v29 = v15 << 8;
  if (v15 > 255)
  {
    v29 = 65280;
  }

  v22 = v29 | v21 & 0xFFFF00FF;
LABEL_46:
  *a2 = v22;
  *(a2 + 4) = v13;
  *v8 = v55;
  *(v8 + 8) = v56;
  *(a2 + 6) = v15;
  v30 = *(a1 + 5) + 16 * v6;
  v31 = *(v30 + 8);
  if (v31 == -1)
  {
    *(v30 + 10) = v4;
    goto LABEL_51;
  }

  if (v4 < v31)
  {
LABEL_51:
    *(v30 + 8) = v4;
    goto LABEL_52;
  }

  if (v4 > *(v30 + 10))
  {
    *(v30 + 10) = v4;
  }

LABEL_52:
  v32 = wcwidth(v13);
  if (!v32)
  {
    if (v4 < 1 || (v6 & 0x80000000) != 0)
    {
      if ((a1[3] & 0x8000000000000000) != 0 || *a1 <= 0)
      {
        goto LABEL_94;
      }

      v36 = *(*(a1 + 5) + 16 * v6 - 16) + 28 * a1[3] + 4;
    }

    else
    {
      v36 = *(*(a1 + 5) + 16 * v6) + 28 * v4 - 24;
    }

    v39 = 0;
    while (*(v36 + v39))
    {
      v39 += 4;
      if (v39 == 20)
      {
        goto LABEL_94;
      }
    }

    *(v36 + v39) = *v7;
    goto LABEL_94;
  }

  v33 = v32;
  if (v32 < 2)
  {
    v5 = v4 + 1;
    v37 = (*v30 + 28 * v4);
    v38 = *a2;
    *(v37 + 12) = *(a2 + 12);
    *v37 = v38;
LABEL_94:
    if (v5 <= a1[3])
    {
      result = 0;
      a1[1] = v5;
    }

    else
    {

      return sub_299483304(a1);
    }

    return result;
  }

  v34 = a1[3] + 1;
  if (v32 > v34)
  {
    return 0xFFFFFFFFLL;
  }

  if (v32 + v4 <= v34)
  {
    goto LABEL_70;
  }

  sub_299483280(a1, v34 - v4);
  result = sub_299483304(a1);
  if (result != -1)
  {
    v5 = a1[1];
    LOWORD(v6) = *a1;
    v30 = *(a1 + 5) + 16 * *a1;
LABEL_70:
    v40 = 0;
    v41 = *(*(a1 + 5) + 16 * v6);
    v42 = v5;
    v43 = (v41 + 28 * v5);
    while (1)
    {
      v45 = *v43;
      v43 += 7;
      v44 = v45;
      v46 = v45;
      if (v45)
      {
        if (v46 == 1)
        {
          goto LABEL_85;
        }

        if ((v44 & 0xE0) == 0)
        {
          break;
        }
      }

      if (-v33 == --v40)
      {
        goto LABEL_85;
      }
    }

    v47 = v5 - v40;
    if (v5 - v40 <= a1[3])
    {
      v48 = -v40;
      while ((*(v41 + 28 * (v5 + v48)) & 0xFEu) - 2 < 0x1E)
      {
        LODWORD(v48) = v48 + 1;
        if (++v47 > a1[3])
        {
          goto LABEL_85;
        }
      }

      sub_299483280(a1, v48);
    }

LABEL_85:
    v49 = 28 * v5;
    v50 = 1;
    while (1)
    {
      v51 = *v7;
      v52 = *(v7 + 2);
      v53 = *v30 + v49;
      *v53 = *a2 & 0xFFFFFF00 | v50;
      *(v53 + 20) = v52;
      *(v53 + 4) = v51;
      v54 = *(v30 + 8);
      if (v54 == -1)
      {
        *(v30 + 10) = v42;
      }

      else if (v42 >= v54)
      {
        if (v42 > *(v30 + 10))
        {
          *(v30 + 10) = v42;
        }

        goto LABEL_92;
      }

      *(v30 + 8) = v42;
LABEL_92:
      ++v42;
      v49 += 28;
      ++v50;
      if (!--v33)
      {
        v5 = v42;
        goto LABEL_94;
      }
    }
  }

  return result;
}

__int16 *sub_299483280(__int16 *result, int a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *result;
  v5 = a2 + 1;
  do
  {
    if (--v5 < 1)
    {
      break;
    }

    v6[0] = xmmword_2994B0420;
    *(v6 + 12) = *(&xmmword_2994B0420 + 12);
    result = sub_299482D6C(v2, v6);
  }

  while (result != -1);
  v2[1] = v3;
  *v2 = v4;
  return result;
}

uint64_t sub_299483304(WINDOW *a1)
{
  *(a1 + 6) |= 0x40u;
  v2 = *a1;
  if (v2 < *(a1 + 24) || *(a1 + 25) != v2)
  {
    *a1 = v2 + 1;
    goto LABEL_6;
  }

  *(a1 + 1) = *(a1 + 3);
  if (*(a1 + 27) == 1)
  {
    wscrl(a1, 1);
LABEL_6:
    result = 0;
    *(a1 + 1) = 0;
    return result;
  }

  return 0xFFFFFFFFLL;
}

__n128 sub_2994833BC()
{
  v0 = _nc_abiver(&_nc_abiver);
  if (*v0 < 0x60000 || (v5 = *(v1 + 6)) == 0)
  {
    v5 = v1[1];
  }

  if (*(v1 + 1) == 32 && !*(v1 + 2) && !(*v1 | v5))
  {
    v6 = *(v3 + 88);
    *(v1 + 12) = *(v3 + 100);
    *v1 = v6;
    v7 = (*(v3 + 88) | v4) & 0xFFFFFF00 | *v1;
    *v1 = v7;
    v8 = *(v3 + 116);
    if (v8)
    {
      v9 = *v0;
    }

    else
    {
      v8 = *(v3 + 17);
      v9 = *v0;
      if (!*(v3 + 17))
      {
        if (v9 > 0x5FFFF)
        {
          v8 = *(v3 + 112);
          if (!v8)
          {
            v8 = *(v3 + 89);
          }

          goto LABEL_21;
        }

        LOBYTE(v8) = *(v3 + 89);
LABEL_39:
        v15 = v7 & 0xFFFF00FF | (v8 << 8);
        goto LABEL_34;
      }
    }

    if (v9 > 0x5FFFF)
    {
LABEL_21:
      *(v1 + 6) = v8;
      v14 = v8 << 8;
      if (v8 > 255)
      {
        v14 = 65280;
      }

      v15 = v14 | v7 & 0xFFFF00FF;
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  v10 = *(v3 + 88);
  if ((v4 & 0xFF00) != 0)
  {
    v11 = -65536;
  }

  else
  {
    v11 = -256;
  }

  v12 = v10 & v11 | v4;
  if (!v5)
  {
    v5 = *(v3 + 116);
    if (!v5)
    {
      v5 = BYTE1(v4);
      if (!BYTE1(v4))
      {
        if (*v0 <= 0x5FFFF)
        {
          v5 = BYTE1(v10);
        }

        else
        {
          v13 = *(v3 + 112);
          v5 = BYTE1(v10);
          if (v13)
          {
            v5 = v13;
          }
        }
      }
    }
  }

  v16 = *v1;
  if ((*v1 & 0xFF00) != 0)
  {
    v17 = -65536;
  }

  else
  {
    v17 = -256;
  }

  v18 = v17 & v12 | v16;
  *v1 = v18;
  if (*v0 <= 0x5FFFF)
  {
    v20 = v18 & 0xFFFF0000;
    v19 = v16 | (v5 << 8);
  }

  else
  {
    *(v1 + 6) = v5;
    v19 = v18 & 0xFFFF00FF;
    v20 = v5 << 8;
    if (v5 > 255)
    {
      v20 = 65280;
    }
  }

  v15 = v19 | v20;
LABEL_34:
  *v1 = v15;
  *(v2 + 12) = *(v1 + 12);
  result = *v1;
  *v2 = *v1;
  return result;
}

size_t _nc_build_wch(__int16 *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 60);
  v5 = a1[1];
  v6 = *a1;
  v7 = *(a1 + 44);
  if (v7 && (*(a1 + 45) != v5 || *(a1 + 46) != v6))
  {
    v7 = 0;
    *(a1 + 44) = 0;
  }

  v19 = 0;
  *(a1 + 45) = v5;
  *(a1 + 46) = v6;
  memset(&v20, 0, sizeof(v20));
  v4[v7] = *(a2 + 4);
  v8 = *(a1 + 44) + 1;
  *(a1 + 44) = v8;
  v4[v8] = 0;
  v9 = mbrtowc(&v19, v4, *(a1 + 44), &v20);
  v10 = v9;
  if (v9 >= 1)
  {
    v11 = _nc_abiver(&_nc_abiver);
    if (*v11 < 0x60000)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 24);
      if (!v14)
      {
        v14 = BYTE1(v12);
      }
    }

    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v15 = v19;
    *a2 = v12;
    *(a2 + 4) = v15;
    if (*v11 > v13)
    {
      *(a2 + 24) = BYTE1(v12);
      *a2 = v12 & 0xFFFF00FF | (BYTE1(v12) << 8);
      if (*v11 > v13)
      {
        v16 = v12 & 0xFFFF00FF;
        *(a2 + 24) = v14;
        v17 = v14 << 8;
        if (v14 > 255)
        {
          v17 = 65280;
        }

        *a2 = v16 | v17;
      }
    }

    goto LABEL_18;
  }

  if (v9 == -1)
  {
LABEL_18:
    *(a1 + 44) = 0;
  }

  return v10;
}

uint64_t _nc_waddch_nosync(__int16 *a1, _OWORD *a2)
{
  v3[0] = *a2;
  *(v3 + 12) = *(a2 + 12);
  return sub_299483728(a1, v3);
}

uint64_t sub_299483728(__int16 *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = _nc_screen_of(a1);
  v6 = unctrl(v4);
  if ((*(a2 + 2) & 0x40) != 0)
  {
    goto LABEL_25;
  }

  v7 = v6;
  if (v5)
  {
    if (*(v5 + 1456) && !v6[1])
    {
      goto LABEL_25;
    }
  }

  if (v4 > 0x7F)
  {
    if (__maskrune(v4, 0x40000uLL) && !__maskrune(v4, 0x200uLL))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = *(MEMORY[0x29EDCA600] + 4 * v4 + 60);
    if ((v8 & 0x40000) != 0 && (v8 & 0x200) == 0)
    {
LABEL_25:
      *v21 = *a2;
      *&v21[12] = *(a2 + 12);
      return sub_299483B88(a1, v21);
    }
  }

  if ((!v5 || !*(v5 + 1456)) && (*(a1 + 44) || !_nc_is_charable(*(a2 + 4))))
  {
    goto LABEL_25;
  }

  v9 = *a1;
  if (v4 <= 9)
  {
    v10 = a1[1];
    if (v4 != 8)
    {
      if (v4 == 9)
      {
        v11 = (TABSIZE + v10 / TABSIZE * TABSIZE);
        if ((*(a1 + 27) & 1) == 0 && a1[25] == v9 || v11 <= a1[3])
        {
          v19 = *a2 & 0xFFFFFF00;
          while (a1[1] < v11)
          {
            *v21 = v19;
            *&v21[20] = 0;
            *&v21[4] = *(&xmmword_2994B043C + 4);
            v20 = sub_299483B88(a1, v21);
            result = 0xFFFFFFFFLL;
            if (v20 == -1)
            {
              return result;
            }
          }
        }

        else
        {
          wclrtoeol(a1);
          a1[6] |= 0x40u;
          if (v9 >= a1[24] && a1[25] == v9)
          {
            if (*(a1 + 27) == 1)
            {
              wscrl(a1, 1);
              LOWORD(v11) = 0;
            }

            else
            {
              LOWORD(v11) = a1[3];
            }
          }

          else
          {
            LOWORD(v11) = 0;
            LOWORD(v9) = v9 + 1;
          }
        }

        goto LABEL_50;
      }

      goto LABEL_28;
    }

    if (!a1[1])
    {
      return 0;
    }

    LOWORD(v11) = v10 - 1;
LABEL_49:
    a1[6] &= ~0x40u;
LABEL_50:
    result = 0;
    a1[1] = v11;
    *a1 = v9;
    return result;
  }

  if (v4 != 10)
  {
    if (v4 != 13)
    {
LABEL_28:
      v13 = _nc_abiver(&_nc_abiver);
      while (1)
      {
        v14 = *v7;
        if (!*v7)
        {
          break;
        }

        v15 = *a2;
        if (*v13 < 0x60000u)
        {
          v16 = 0;
        }

        else
        {
          v16 = *(a2 + 24);
          if (!v16)
          {
            v16 = BYTE1(v15);
          }

          if (v16 >= 255)
          {
            v17 = -1;
          }

          else
          {
            v17 = v16;
          }

          v15 = v15 & 0xFFFF00FF | (v17 << 8);
        }

        ++v7;
        *v21 = v15;
        *&v21[4] = v14;
        *&v21[8] = 0;
        *&v21[16] = 0;
        *&v21[24] = v16;
        v18 = sub_299483B88(a1, v21);
        result = 0xFFFFFFFFLL;
        if (v18 == -1)
        {
          return result;
        }
      }

      return 0;
    }

    goto LABEL_48;
  }

  wclrtoeol(a1);
  if (v9 < a1[24] || a1[25] != v9)
  {
    LOWORD(v9) = v9 + 1;
    goto LABEL_48;
  }

  if (*(a1 + 27) == 1)
  {
    wscrl(a1, 1);
LABEL_48:
    LOWORD(v11) = 0;
    goto LABEL_49;
  }

  return 0xFFFFFFFFLL;
}

int waddch(WINDOW *a1, const chtype a2)
{
  if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
  {
    v4 = BYTE1(v3);
    v5 = v3 & 0xFFFF0000 | (BYTE1(v3) << 8);
    if (a1)
    {
      goto LABEL_3;
    }

    return -1;
  }

  v4 = 0;
  v5 = v3 & 0xFFFFFF00;
  if (!a1)
  {
    return -1;
  }

LABEL_3:
  v7[0] = v5;
  v7[1] = v3;
  v9 = 0;
  v8 = 0;
  v10 = v4;
  result = sub_299483728(a1, v7);
  if (result != -1)
  {
    _nc_synchook(a1);
    return 0;
  }

  return result;
}

int wechochar(WINDOW *a1, const chtype a2)
{
  if (*_nc_abiver(&_nc_abiver) >= 0x60000u)
  {
    v4 = BYTE1(v3);
    v5 = v3 & 0xFFFF0000 | (BYTE1(v3) << 8);
    if (a1)
    {
      goto LABEL_3;
    }

    return -1;
  }

  v4 = 0;
  v5 = v3 & 0xFFFFFF00;
  if (!a1)
  {
    return -1;
  }

LABEL_3:
  v8[0] = v5;
  v8[1] = v3;
  v10 = 0;
  v9 = 0;
  v11 = v4;
  result = sub_299483728(a1, v8);
  if (result != -1)
  {
    v7 = *(a1 + 30);
    *(a1 + 30) = 1;
    _nc_synchook(a1);
    result = 0;
    *(a1 + 30) = v7;
  }

  return result;
}

uint64_t sub_299483B88(__int16 *a1, int *a2)
{
  v4 = a1[1];
  v5 = v4;
  v6 = *a1;
  sub_2994833BC();
  *a2 = *v40;
  *(a2 + 3) = *&v40[12];
  v7 = *(a1 + 5) + 16 * v6;
  v8 = *(v7 + 8);
  if (v8 == -1)
  {
    *(v7 + 10) = v4;
    goto LABEL_6;
  }

  if (v4 < v8)
  {
LABEL_6:
    *(v7 + 8) = v4;
    goto LABEL_7;
  }

  if (v4 > *(v7 + 10))
  {
    *(v7 + 10) = v4;
  }

LABEL_7:
  if (*(a1 + 44) || !*(SP + 1456) && (*a2 & 0x400000) == 0 && (*a2 & 0xFEu) - 2 < 0x1E || a2[2] || !_nc_is_charable(a2[1]))
  {
    v9 = _nc_build_wch(a1, a2);
    if (v9 >= -1)
    {
      if (v9 != -1)
      {
        goto LABEL_15;
      }

      v16 = *a2;
      v15 = a2[1];
      if (v15 > 0xFF || (v17 = unctrl(v15), !v17[1]))
      {

        return waddch(a1, v16 | 0x20);
      }

      v18 = *v17;
      if (*v17)
      {
        v19 = (v17 + 1);
        while (1)
        {
          result = waddch(a1, v16 | v18);
          if (result)
          {
            break;
          }

          v20 = *v19++;
          v18 = v20;
          if (!v20)
          {
            return result;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

LABEL_15:
  v10 = a2 + 1;
  v11 = wcwidth(a2[1]);
  if (!v11)
  {
    if (v4 < 1 || (v6 & 0x80000000) != 0)
    {
      if ((a1[3] & 0x8000000000000000) != 0 || *a1 <= 0)
      {
        goto LABEL_66;
      }

      v21 = *(*(a1 + 5) + 16 * v6 - 16) + 28 * a1[3] + 4;
    }

    else
    {
      v21 = *(*(a1 + 5) + 16 * v6) + 28 * v4 - 24;
    }

    v24 = 0;
    while (*(v21 + v24))
    {
      v24 += 4;
      if (v24 == 20)
      {
        goto LABEL_66;
      }
    }

    *(v21 + v24) = *v10;
    goto LABEL_66;
  }

  v12 = v11;
  if (v11 < 2)
  {
    v5 = v4 + 1;
    v22 = (*v7 + 28 * v4);
    v23 = *a2;
    *(v22 + 12) = *(a2 + 3);
    *v22 = v23;
LABEL_66:
    if (v5 <= a1[3])
    {
      result = 0;
      a1[1] = v5;
    }

    else
    {

      return sub_299483304(a1);
    }

    return result;
  }

  v13 = a1[3] + 1;
  if (v11 > v13)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 + v4 <= v13)
  {
    goto LABEL_44;
  }

  sub_299483F94(a1, v13 - v4);
  result = sub_299483304(a1);
  if (result != -1)
  {
    v5 = a1[1];
    LOWORD(v6) = *a1;
    v7 = *(a1 + 5) + 16 * *a1;
LABEL_44:
    v25 = 0;
    v26 = *(*(a1 + 5) + 16 * v6);
    v27 = v5;
    v28 = (v26 + 28 * v5);
    while (1)
    {
      v30 = *v28;
      v28 += 7;
      v29 = v30;
      v31 = v30;
      if (v30)
      {
        if (v31 == 1)
        {
          goto LABEL_57;
        }

        if ((v29 & 0xE0) == 0)
        {
          break;
        }
      }

      if (-v12 == --v25)
      {
        goto LABEL_57;
      }
    }

    v32 = v5 - v25;
    if (v5 - v25 <= a1[3])
    {
      v33 = -v25;
      while ((*(v26 + 28 * (v5 + v33)) & 0xFEu) - 2 < 0x1E)
      {
        LODWORD(v33) = v33 + 1;
        if (++v32 > a1[3])
        {
          goto LABEL_57;
        }
      }

      sub_299483F94(a1, v33);
    }

LABEL_57:
    v34 = 28 * v5;
    v35 = 1;
    while (1)
    {
      v36 = *v10;
      v37 = *(a2 + 5);
      v38 = *v7 + v34;
      *v38 = *a2 & 0xFFFFFF00 | v35;
      *(v38 + 20) = v37;
      *(v38 + 4) = v36;
      v39 = *(v7 + 8);
      if (v39 == -1)
      {
        *(v7 + 10) = v27;
      }

      else if (v27 >= v39)
      {
        if (v27 > *(v7 + 10))
        {
          *(v7 + 10) = v27;
        }

        goto LABEL_64;
      }

      *(v7 + 8) = v27;
LABEL_64:
      ++v27;
      v34 += 28;
      ++v35;
      if (!--v12)
      {
        v5 = v27;
        goto LABEL_66;
      }
    }
  }

  return result;
}

__int16 *sub_299483F94(__int16 *result, int a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *result;
  v5 = a2 + 1;
  do
  {
    if (--v5 < 1)
    {
      break;
    }

    v6[0] = xmmword_2994B043C;
    *(v6 + 12) = *(&xmmword_2994B043C + 12);
    result = sub_299483B88(v2, v6);
  }

  while (result != -1);
  v2[1] = v3;
  *v2 = v4;
  return result;
}

int waddnstr(WINDOW *a1, const char *a2, int a3)
{
  v3 = -1;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v5 = a3;
      if (a3 < 0)
      {
        v5 = strlen(a2);
      }

      while (1)
      {
        v7 = __OFSUB__(v5, 1);
        if (--v5 < 0 != v7)
        {
          break;
        }

        v8 = *v4;
        if (!*v4)
        {
          break;
        }

        ++v4;
        *(&v10 + 1) = 0;
        v11 = 0;
        LODWORD(v10) = 0;
        DWORD1(v10) = v8;
        v12 = 0;
        if (_nc_waddch_nosync(a1, &v10) == -1)
        {
          v3 = -1;
          goto LABEL_10;
        }
      }

      v3 = 0;
LABEL_10:
      _nc_synchook(a1);
    }
  }

  return v3;
}

int waddchnstr(WINDOW *a1, const chtype *a2, int a3)
{
  if (!a1)
  {
    return -1;
  }

  v3 = a1;
  LODWORD(v4) = *(a1 + 1);
  if (a3 < 0)
  {
    if (*a2)
    {
      *&a3 = 0;
        ;
      }
    }

    else
    {
      a3 = 0;
    }
  }

  v7 = *(a1 + 3) - v4;
  if (a3 >= v7 + 1)
  {
    LODWORD(v8) = v7 + 1;
  }

  else
  {
    LODWORD(v8) = a3;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 5) + 16 * *a1;
  if (v8 >= 1)
  {
    v10 = _nc_abiver(&_nc_abiver);
    v12 = 28 * v4;
    v13 = v8;
    do
    {
      if (!*v11)
      {
        break;
      }

      v14 = *v9 + v12;
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 24) = 0;
      *(v14 + 16) = 0;
      *(v14 + 4) = *v11;
      *v14 = *v11 & 0xFFFFFF00;
      if (*v10 >= 0x60000u)
      {
        v15 = *v11 >> 8;
        v16 = *v9 + v12;
        *(v16 + 24) = BYTE1(*v11);
        *(v16 + 1) = v15;
      }

      v12 += 28;
      v11 += 4;
      --v13;
    }

    while (v13);
  }

  v17 = *(v9 + 8);
  if (v17 == -1 || v17 > v4)
  {
    *(v9 + 8) = v4;
  }

  v19 = *(v9 + 10);
  v20 = (v4 + v8 - 1);
  if (v19 == -1 || v19 < v20)
  {
    *(v9 + 10) = v20;
  }

  _nc_synchook(v3);
  return 0;
}

uint64_t _nc_wchstrlen(uint64_t result)
{
  if (result)
  {
    v1 = (result + 4);
    LODWORD(result) = -1;
    do
    {
      v2 = *v1;
      v1 += 7;
      result = (result + 1);
    }

    while (v2);
  }

  return result;
}

uint64_t wadd_wchnstr(WINDOW *a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 1);
  LOWORD(v6) = *(a1 + 1);
  if ((a3 & 0x80000000) != 0)
  {
    if (a2)
    {
      v7 = (a2 + 4);
      a3 = -1;
      do
      {
        v8 = *v7;
        v7 += 7;
        ++a3;
      }

      while (v8);
    }

    else
    {
      a3 = 0;
    }
  }

  v10 = *(a1 + 3) - v5;
  if (a3 >= v10 + 1)
  {
    v11 = (v10 + 1);
  }

  else
  {
    v11 = a3;
  }

  if (v11)
  {
    v12 = *(a1 + 5) + 16 * *a1;
    v13 = v5 + v11 - 1;
    if (v5 < 1 || (*(*v12 + 28 * *(a1 + 1)) & 0xFEu) - 32 < 0xFFFFFFE2)
    {
LABEL_18:
      v42 = v5;
    }

    else
    {
      v14 = 0;
      v15 = 28 * v5;
      while ((*(*v12 + v15) & 0xFEu) - 2 < 0x1E)
      {
        ++v14;
        v15 -= 28;
        if (v5 + 1 == v14)
        {
          goto LABEL_18;
        }
      }

      v42 = v5 - v14;
      if (v14)
      {
        v39 = v14 + 1;
        do
        {
          v40 = (*v12 + v15);
          *v43 = xmmword_2994B0458;
          *&v43[12] = *(&xmmword_2994B0458 + 12);
          _nc_render(v4, v43);
          v41 = *v44;
          *(v40 + 12) = *&v44[12];
          *v40 = v41;
          --v39;
          v15 += 28;
        }

        while (v39 > 1);
      }
    }

    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v17 = v3 + 28 * i;
        v18 = *(v17 + 4);
        if (!v18 || v6 > *(v4 + 3))
        {
          break;
        }

        if ((*v17 & 0xFEu) - 2 >= 0x1E)
        {
          v19 = wcwidth(v18);
          v20 = v19 + v6;
          if (v20 - 1 > *(v4 + 3))
          {
            break;
          }

          v21 = v19;
          v6 = v6;
          v22 = v4;
          v23 = v3;
          v24 = (*v12 + 28 * v6);
          *v43 = *v17;
          *&v43[12] = *(v17 + 12);
          v25 = v22;
          _nc_render(v22, v43);
          v26 = *v44;
          *(v24 + 12) = *&v44[12];
          *v24 = v26;
          v3 = v23;
          if (v21 >= 2)
          {
            v27 = 0;
            v28 = *v12;
            v29 = 28 * v6;
            do
            {
              if (v27)
              {
                v30 = (v28 + v29);
                v31 = (v28 + 28 * v6);
                v32 = *v31;
                *(v30 + 12) = *(v31 + 12);
                *v30 = v32;
                v28 = *v12;
              }

              *(v28 + v29) = *(v28 + v29) & 0xFFFFFF00 | ++v27;
              v29 += 28;
            }

            while (v21 != v27);
          }

          v13 = v13 + v21 - 1;
          LOWORD(v6) = v20;
          v4 = v25;
        }
      }
    }

    while (v6 <= *(v4 + 3))
    {
      v33 = *v12 + 28 * v6;
      if ((*v33 & 0xFEu) - 2 > 0x1D)
      {
        break;
      }

      *v43 = xmmword_2994B0458;
      *&v43[12] = *(&xmmword_2994B0458 + 12);
      _nc_render(v4, v43);
      v34 = *v44;
      *(v33 + 12) = *&v44[12];
      *v33 = v34;
      ++v13;
      LODWORD(v6) = (v6 + 1);
    }

    v35 = *(v12 + 8);
    if (v35 == -1 || v42 < v35)
    {
      *(v12 + 8) = v42;
    }

    v37 = *(v12 + 10);
    if (v37 == -1 || v13 > v37)
    {
      *(v12 + 10) = v13;
    }

    _nc_synchook(v4);
  }

  return 0;
}

uint64_t waddnwstr(WINDOW *a1, __int32 *a2, int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v5 = a3;
      if (a3 < 0)
      {
        v5 = wcslen(a2);
      }

      while (1)
      {
        v7 = __OFSUB__(v5, 1);
        if (--v5 < 0 != v7)
        {
          break;
        }

        v8 = *v4;
        if (!*v4)
        {
          break;
        }

        ++v4;
        *(&v10 + 1) = 0;
        v11 = 0;
        v12 = 0;
        LODWORD(v10) = 0;
        DWORD1(v10) = v8;
        if (wadd_wch(a1, &v10) == -1)
        {
          v3 = 0xFFFFFFFFLL;
          goto LABEL_10;
        }
      }

      v3 = 0;
LABEL_10:
      _nc_synchook(a1);
    }
  }

  return v3;
}

uint64_t _nc_baudrate(int a1)
{
  v1 = dword_2A1462CB4;
  if (dword_2A1462CB0 != a1 || dword_2A1462CB4 == -1)
  {
    if (a1 < 0)
    {
LABEL_10:
      v1 = 0xFFFFFFFFLL;
    }

    else
    {
      v3 = &dword_2994B0478;
      v4 = 18;
      while (*(v3 - 2) != a1)
      {
        v3 += 2;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      v1 = *v3;
    }

    if (dword_2A1462CB0 != a1)
    {
      dword_2A1462CB0 = a1;
      dword_2A1462CB4 = v1;
    }
  }

  return v1;
}

uint64_t _nc_ospeed(int a1)
{
  if (a1 < 0)
  {
    return 1;
  }

  v1 = &dword_2994B0478;
  v2 = 18;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  return *(v1 - 2);
}

int baudrate(void)
{
  if (!cur_term)
  {
    return -1;
  }

  result = cfgetospeed(&cur_term->Nttyb);
  if (result < 0)
  {
LABEL_6:
    v3 = 1;
  }

  else
  {
    v1 = &dword_2994B0478;
    v2 = 18;
    while (*v1 != result)
    {
      v1 += 2;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    v3 = *(v1 - 2);
  }

  ospeed = v3;
  cur_term->_baudrate = result;
  return result;
}

uint64_t addch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = addch(v2);
  *v0 = v1;
  return result;
}

uint64_t addchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = addchnstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t addchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = addchstr(v2);
  *v0 = v1;
  return result;
}

uint64_t addnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = addnstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t addstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = addstr(v2);
  *v0 = v1;
  return result;
}

uint64_t attroff_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = attroff(v2);
  *v0 = v1;
  return result;
}

uint64_t attron_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = attron(v2);
  *v0 = v1;
  return result;
}

uint64_t attrset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = attrset(v2);
  *v0 = v1;
  return result;
}

uint64_t attr_get_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = attr_get(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t attr_off_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = attr_off(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t attr_on_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = attr_on(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t attr_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = attr_set(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t bkgd_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = bkgd(v2);
  *v0 = v1;
  return result;
}

void bkgdset_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  bkgdset(v2);
  *v0 = v1;
}

uint64_t border_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = border(v9, v2, v3, v4, v5, v6, v7, v8);
  *v0 = v1;
  return result;
}

uint64_t box_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = box(v4, v2, v3);
  *v0 = v1;
  return result;
}

uint64_t chgat_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = chgat(v5, v2, v3, v4);
  *v0 = v1;
  return result;
}

uint64_t color_content_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = color_content(v5, v2, v3, v4);
  *v0 = v1;
  return result;
}

uint64_t color_set_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = color_set(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t copywin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = copywin(v9, v2, v3, v4, v5, v6, v7, v8, v10);
  *v0 = v1;
  return result;
}

uint64_t delay_output_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = delay_output(v2);
  *v0 = v1;
  return result;
}

uint64_t deleteln_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = deleteln();
  *v0 = v1;
  return result;
}

WINDOW *derwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = derwin(v6, v2, v3, v4, v5);
  *v0 = v1;
  return result;
}

uint64_t doupdate_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = doupdate();
  *v0 = v1;
  return result;
}

WINDOW *dupwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = dupwin(v2);
  *v0 = v1;
  return result;
}

uint64_t echochar_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = echochar(v2);
  *v0 = v1;
  return result;
}

uint64_t endwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = endwin();
  *v0 = v1;
  return result;
}

uint64_t flushinp_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = flushinp();
  *v0 = v1;
  return result;
}

uint64_t getbkgd_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getbkgd(v2);
  *v0 = v1;
  return result;
}

uint64_t getch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getch();
  *v0 = v1;
  return result;
}

uint64_t getnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getnstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t getstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getstr(v2);
  *v0 = v1;
  return result;
}

WINDOW *getwin_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = getwin(v2);
  *v0 = v1;
  return result;
}

uint64_t hline_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = hline(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t inch_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = inch();
  *v0 = v1;
  return result;
}

uint64_t inchnstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = inchnstr(v3, v2);
  *v0 = v1;
  return result;
}

uint64_t inchstr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = inchstr(v2);
  *v0 = v1;
  return result;
}

WINDOW *initscr_NCURSES60()
{
  v0 = _nc_abiver(&_nc_abiver);
  v1 = *v0;
  *v0 = 393216;
  result = initscr();
  *v0 = v1;
  return result;
}