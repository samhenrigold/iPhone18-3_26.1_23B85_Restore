uint64_t luaX_lookahead(uint64_t a1)
{
  result = llex(a1, (a1 + 40));
  *(a1 + 32) = result;
  return result;
}

uint64_t save(uint64_t a1, char a2)
{
  v3 = *(a1 + 72);
  v5 = v3[1];
  v4 = v3[2];
  v6 = v5 + 1;
  if (v5 + 1 <= v4)
  {
    result = *v3;
  }

  else
  {
    if (v4 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      luaG_addinfo(*(a1 + 56), "lexical element too long", *(a1 + 96), *(a1 + 4));
      luaD_throw(*(a1 + 56), 3);
      v4 = v3[2];
    }

    v8 = 2 * v4;
    result = luaM_realloc_(*(a1 + 56), *v3, v4, 2 * v4);
    *v3 = result;
    v3[2] = v8;
    v5 = v3[1];
    v6 = v5 + 1;
  }

  v3[1] = v6;
  *(result + v5) = a2;
  return result;
}

uint64_t inclinenumber(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    result = *v5;
  }

  else
  {
    result = luaZ_fill(v3);
  }

  *a1 = result;
  if ((result == 13 || result == 10) && result != v2)
  {
    v9 = *(a1 + 8);
    if ((*v9)--)
    {
      v11 = v9[1];
      v9[1] = v11 + 1;
      result = *v11;
    }

    else
    {
      result = luaZ_fill(v9);
    }

    *a1 = result;
  }

  v12 = a1[1] + 1;
  a1[1] = v12;
  if (v12 == 0x7FFFFFFF)
  {
    luaG_addinfo(*(a1 + 7), "chunk has too many lines", *(a1 + 12), 0x7FFFFFFF);
    v13 = *(a1 + 7);

    return luaD_throw(v13, 3);
  }

  return result;
}

uint64_t skip_sep(int *a1)
{
  v2 = *a1;
  save(a1, *a1);
  v3 = *(a1 + 8);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    v6 = *v5;
  }

  else
  {
    v6 = luaZ_fill(v3);
  }

  *a1 = v6;
  if (v6 == 61)
  {
    v7 = 0;
    do
    {
      save(a1, 61);
      v8 = *(a1 + 8);
      if ((*v8)--)
      {
        v10 = v8[1];
        v8[1] = v10 + 1;
        v6 = *v10;
      }

      else
      {
        v6 = luaZ_fill(v8);
      }

      *a1 = v6;
      ++v7;
    }

    while (v6 == 61);
  }

  else
  {
    v7 = 0;
  }

  if (v6 == v2)
  {
    return v7;
  }

  else
  {
    return ~v7;
  }
}

uint64_t read_long_string(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *(a1 + 4);
  save(a1, *a1);
  v7 = *(a1 + 64);
  if ((*v7)--)
  {
    v9 = v7[1];
    v7[1] = v9 + 1;
    v10 = *v9;
  }

  else
  {
    v10 = luaZ_fill(v7);
  }

  *a1 = v10;
  if (v10 == 13 || v10 == 10)
  {
    inclinenumber(a1);
  }

  if (a2)
  {
    v12 = "string";
  }

  else
  {
    v12 = "comment";
  }

  do
  {
    while (1)
    {
      v13 = *a1;
      if (*a1 > 12)
      {
        break;
      }

      if (v13 == -1)
      {
        v18 = luaO_pushfstring(*(a1 + 56), "unfinished long %s (starting at line %d)", v12, v6);
        lexerror(a1, v18, 0x121u);
      }

      else if (v13 == 10)
      {
LABEL_21:
        save(a1, 10);
        inclinenumber(a1);
        if (!a2)
        {
          *(*(a1 + 72) + 8) = 0;
        }
      }

      else
      {
LABEL_23:
        if (a2)
        {
          save(a1, v13);
        }

        v14 = *(a1 + 64);
        if ((*v14)--)
        {
          v16 = v14[1];
          v14[1] = v16 + 1;
          v17 = *v16;
        }

        else
        {
          v17 = luaZ_fill(v14);
        }

        *a1 = v17;
      }
    }

    if (v13 == 13)
    {
      goto LABEL_21;
    }

    if (v13 != 93)
    {
      goto LABEL_23;
    }
  }

  while (skip_sep(a1) != a3);
  save(a1, *a1);
  v19 = *(a1 + 64);
  if ((*v19)--)
  {
    v21 = v19[1];
    v19[1] = v21 + 1;
    result = *v21;
  }

  else
  {
    result = luaZ_fill(v19);
  }

  *a1 = result;
  if (a2)
  {
    result = luaX_newstring(a1, (**(a1 + 72) + (a3 + 2)), *(*(a1 + 72) + 8) - (2 * (a3 + 2)));
    *a2 = result;
  }

  return result;
}

uint64_t check_next1(uint64_t a1, int a2)
{
  if (*a1 != a2)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    v6 = *v5;
  }

  else
  {
    v6 = luaZ_fill(v3);
  }

  *a1 = v6;
  return 1;
}

uint64_t read_numeral(int *a1, void *a2)
{
  v29 = 0;
  v30 = 0;
  v4 = *a1;
  save(a1, *a1);
  v5 = *(a1 + 8);
  if ((*v5)--)
  {
    v7 = v5[1];
    v5[1] = v7 + 1;
    v8 = *v7;
  }

  else
  {
    v8 = luaZ_fill(v5);
  }

  *a1 = v8;
  v9 = "Ee";
  if (v4 == 48 && check_next2(a1, "xX"))
  {
    v9 = "Pp";
  }

  while (1)
  {
    if (check_next2(a1, v9))
    {
      check_next2(a1, "-+");
    }

    v10 = *a1;
    if ((luai_ctype_[v10 + 1] & 0x10) == 0)
    {
      break;
    }

    v11 = a1;
LABEL_13:
    save(v11, v10);
    v12 = *(a1 + 8);
    if ((*v12)--)
    {
      v14 = v12[1];
      v12[1] = v14 + 1;
      v15 = *v14;
    }

    else
    {
      v15 = luaZ_fill(v12);
    }

    *a1 = v15;
  }

  v11 = a1;
  if (v10 == 46)
  {
    goto LABEL_13;
  }

  save(a1, 0);
  v16 = *(a1 + 112);
  if (v16 != 46)
  {
    v17 = *(a1 + 9);
    v18 = v17[1];
    if (v18)
    {
      v19 = *v17 - 1;
      do
      {
        if (*(v19 + v18) == 46)
        {
          *(v19 + v18) = v16;
        }

        --v18;
      }

      while (v18);
    }
  }

  if (!luaO_str2num(**(a1 + 9), &v29))
  {
    v20 = *(a1 + 112);
    *(a1 + 112) = 46;
    v21 = *(a1 + 9);
    if (v20 != 46)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = *v21 - 1;
        do
        {
          if (*(v23 + v22) == v20)
          {
            *(v23 + v22) = 46;
          }

          --v22;
        }

        while (v22);
        v21 = *(a1 + 9);
      }
    }

    if (!luaO_str2num(*v21, &v29))
    {
      v24 = *(a1 + 112);
      if (v24 != 46)
      {
        v25 = *(a1 + 9);
        v26 = v25[1];
        if (v26)
        {
          v27 = *v25 - 1;
          do
          {
            if (*(v27 + v26) == v24)
            {
              *(v27 + v26) = 46;
            }

            --v26;
          }

          while (v26);
        }
      }

      lexerror(a1, "malformed number", 0x122u);
    }
  }

  if (v30 == 19)
  {
    result = 291;
  }

  else
  {
    result = 290;
  }

  *a2 = v29;
  return result;
}

_DWORD *esccheck(_DWORD *result, int a2, const char *a3)
{
  if (!a2)
  {
    v5 = result;
    if (*result != -1)
    {
      save(result, *result);
      v6 = *(v5 + 8);
      if ((*v6)--)
      {
        v8 = v6[1];
        v6[1] = v8 + 1;
        v9 = *v8;
      }

      else
      {
        v9 = luaZ_fill(v6);
      }

      *v5 = v9;
    }

    return lexerror(v5, a3, 0x125u);
  }

  return result;
}

uint64_t gethexa(unsigned int *a1)
{
  save(a1, *a1);
  v2 = *(a1 + 8);
  if ((*v2)--)
  {
    v4 = v2[1];
    v2[1] = v4 + 1;
    v5 = *v4;
  }

  else
  {
    v5 = luaZ_fill(v2);
  }

  *a1 = v5;
  esccheck(a1, luai_ctype_[v5 + 1] & 0x10, "hexadecimal digit expected");
  v6 = *a1;

  return luaO_hexavalue(v6);
}

uint64_t check_next2(int *a1, char *a2)
{
  v4 = *a1;
  if (*a1 != *a2 && v4 != a2[1])
  {
    return 0;
  }

  save(a1, v4);
  v5 = *(a1 + 8);
  if ((*v5)--)
  {
    v7 = v5[1];
    v5[1] = v7 + 1;
    v8 = *v7;
  }

  else
  {
    v8 = luaZ_fill(v5);
  }

  *a1 = v8;
  return 1;
}

uint64_t luaM_growaux_(void *a1, uint64_t a2, int *a3, uint64_t a4, int a5, const char *a6)
{
  v10 = *a3;
  if (*a3 >= a5 / 2)
  {
    v11 = a5;
    if (v10 >= a5)
    {
      luaG_runerror(a1, "too many %s (limit is %d)", a6, a5);
      v10 = *a3;
    }
  }

  else if (2 * v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2 * v10;
  }

  result = luaM_realloc_(a1, a2, v10 * a4, v11 * a4);
  *a3 = v11;
  return result;
}

uint64_t luaM_realloc_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 24);
  v9 = (*v8)(*(v8 + 8));
  v10 = v9;
  if (a4 && !v9)
  {
    luaD_throw(a1, 4);
  }

  if (a2)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 24) += a4 - v11;
  return v10;
}

uint64_t luaO_int2fb(uint64_t result)
{
  if (result >= 8)
  {
    if (result < 0x80)
    {
      v1 = 0;
    }

    else
    {
      v1 = 0;
      do
      {
        v2 = result + 15;
        LODWORD(result) = (result + 15) >> 4;
        v1 += 4;
      }

      while (v2 > 0x7FF);
    }

    if (result < 0x10)
    {
      v3 = result;
    }

    else
    {
      do
      {
        v3 = (result + 1) >> 1;
        ++v1;
        v4 = result > 0x1E;
        LODWORD(result) = v3;
      }

      while (v4);
    }

    return (8 * v1 + 8) | (v3 - 8);
  }

  return result;
}

uint64_t luaO_fb2int(uint64_t result)
{
  if (result >> 3)
  {
    return (result & 7 | 8) << ((result >> 3) - 1);
  }

  else
  {
    return result;
  }
}

uint64_t luaO_ceillog2(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) < 0x100)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a1 - 1;
    do
    {
      v2 += 8;
      v1 = v3 >> 8;
      v4 = HIWORD(v3);
      v3 >>= 8;
    }

    while (v4);
  }

  return v2 + luaO_ceillog2_log_2[v1];
}

uint64_t luaO_arith(uint64_t result, uint64_t a2, void *a3, double *a4, uint64_t a5)
{
  v8 = a2;
  v9 = result;
  if ((a2 - 7) >= 5)
  {
    if (a2 == 5)
    {
      v17 = 0;
      v18 = 0.0;
      if (*(a3 + 2) == 3)
      {
        v18 = *a3;
      }

      else
      {
        result = luaV_tonumber_(a3, &v18);
        if (!result)
        {
          return luaT_trybinTM(v9, a3, a4, a5, v8 + 6);
        }
      }

      if (*(a4 + 2) == 3)
      {
        v13 = a4;
      }

      else
      {
        v13 = &v17;
        result = luaV_tonumber_(a4, &v17);
        if (!result)
        {
          return luaT_trybinTM(v9, a3, a4, a5, v8 + 6);
        }
      }

      *a5 = v18 / *v13;
      v11 = 3;
      goto LABEL_16;
    }

    if (a2 != 13)
    {
      v17 = 0;
      v18 = 0.0;
      v10 = *(a3 + 2);
      if (v10 == 3)
      {
        v18 = *a3;
      }

      else
      {
        if (v10 == 19 && *(a4 + 2) == 19)
        {
          result = intarith(result, a2, *a3, *a4);
          v11 = 19;
          goto LABEL_43;
        }

        if (!luaV_tonumber_(a3, &v18))
        {
          return luaT_trybinTM(v9, a3, a4, a5, v8 + 6);
        }
      }

      if (*(a4 + 2) == 3)
      {
        v14 = a4;
      }

      else
      {
        v14 = &v17;
        if (!luaV_tonumber_(a4, &v17))
        {
          return luaT_trybinTM(v9, a3, a4, a5, v8 + 6);
        }
      }

      v15 = *v14;
      v16 = 0.0;
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v16 = v18 - v15;
          }
        }

        else
        {
          v16 = v18 + v15;
        }
      }

      else
      {
        switch(v8)
        {
          case 2:
            v16 = v18 * v15;
            break;
          case 5:
            v16 = v18 / v15;
            break;
          case 12:
            v16 = -v18;
            break;
        }
      }

      result = *&v16;
      v11 = 3;
LABEL_43:
      *a5 = result;
      goto LABEL_16;
    }
  }

  v17 = 0;
  v18 = 0.0;
  if (*(a3 + 2) == 19)
  {
    v18 = *a3;
  }

  else if (!luaV_tointeger(a3, &v18))
  {
    return luaT_trybinTM(v9, a3, a4, a5, v8 + 6);
  }

  if (*(a4 + 2) == 19)
  {
    v12 = *a4;
    v17 = *a4;
LABEL_15:
    result = intarith(v9, v8, *&v18, v12);
    *a5 = result;
    v11 = 19;
LABEL_16:
    *(a5 + 8) = v11;
    return result;
  }

  if (luaV_tointeger(a4, &v17))
  {
    v12 = v17;
    goto LABEL_15;
  }

  return luaT_trybinTM(v9, a3, a4, a5, v8 + 6);
}

unint64_t intarith(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a2 > 7)
  {
    if (a2 > 10)
    {
      if (a2 == 11)
      {
        return luaV_shiftl(a3, -a4);
      }

      else
      {
        if (a2 == 13)
        {
          v7 = ~a3;
        }

        else
        {
          v7 = 0;
        }

        if (a2 == 12)
        {
          return -a3;
        }

        else
        {
          return v7;
        }
      }
    }

    else if (a2 == 8)
    {
      return a4 | a3;
    }

    else if (a2 == 9)
    {
      return a4 ^ a3;
    }

    else
    {
      return luaV_shiftl(a3, a4);
    }
  }

  else if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return luaV_mod(a1, a3, a4);
      case 6:
        return luaV_div(a1, a3, a4);
      case 7:
        return a4 & a3;
      default:
        return 0;
    }
  }

  else
  {
    v4 = a3 - a4;
    v5 = a4 * a3;
    if (a2 != 2)
    {
      v5 = 0;
    }

    if (a2 != 1)
    {
      v4 = v5;
    }

    if (a2)
    {
      return v4;
    }

    else
    {
      return a4 + a3;
    }
  }
}

uint64_t luaO_hexavalue(int a1)
{
  if ((luai_ctype_[a1 + 1] & 2) != 0)
  {
    return (a1 - 48);
  }

  else
  {
    return (a1 | 0x20u) - 87;
  }
}

uint64_t luaO_str2num(char *__s1, uint64_t a2)
{
  v4 = __s1;
  do
  {
    v6 = *v4++;
    v5 = v6;
  }

  while ((luai_ctype_[v6 + 1] & 8) != 0);
  if (v5 == 43)
  {
    v7 = 1;
  }

  else
  {
    if (v5 != 45)
    {
      --v4;
      v7 = 1;
      goto LABEL_9;
    }

    v7 = 0;
  }

  v5 = *v4;
LABEL_9:
  if (v5 == 48 && (v4[1] | 0x20) == 0x78)
  {
    v9 = v4[2];
    v4 += 2;
    v8 = v9;
    if ((luai_ctype_[v9 + 1] & 0x10) != 0)
    {
      v10 = 0;
      do
      {
        v11 = 16 * v10;
        if ((luai_ctype_[v8 + 1] & 2) != 0)
        {
          v12 = v8 - 48;
        }

        else
        {
          v12 = (v8 | 0x20) - 87;
        }

        v10 = v11 + v12;
        v13 = *++v4;
        v8 = v13;
      }

      while ((luai_ctype_[v13 + 1] & 0x10) != 0);
      goto LABEL_22;
    }
  }

  else if ((luai_ctype_[v5 + 1] & 2) != 0)
  {
    v10 = 0;
    do
    {
      v10 = 10 * v10 + v5 - 48;
      v15 = *++v4;
      LOBYTE(v5) = v15;
    }

    while ((luai_ctype_[v15 + 1] & 2) != 0);
LABEL_22:
    v14 = 1;
    goto LABEL_23;
  }

  v10 = 0;
  v14 = 0;
LABEL_23:
  v16 = v4 - 1;
  do
  {
    v18 = *++v16;
    v17 = v18;
  }

  while ((luai_ctype_[v18 + 1] & 8) != 0);
  v19 = v14 ^ 1;
  if (v17)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    if (v7)
    {
      v20 = v10;
    }

    else
    {
      v20 = -v10;
    }

    v21 = v20;
    v22 = 19;
    goto LABEL_32;
  }

  if (!cstdlib_strpbrk(__s1, "nN"))
  {
    v27 = 0;
    cstdlib_strtod(__s1, &v27);
    v16 = v27;
    if (v27 != __s1)
    {
      v24 = *v27;
      if ((luai_ctype_[v24 + 1] & 8) != 0)
      {
        v25 = (v27 + 1);
        do
        {
          v27 = v25;
          v26 = *v25++;
          LODWORD(v24) = v26;
        }

        while ((luai_ctype_[v26 + 1] & 8) != 0);
        v16 = (v25 - 1);
      }

      if (!v24)
      {
        v22 = 3;
LABEL_32:
        *a2 = v21;
        *(a2 + 8) = v22;
        return v16 - __s1 + 1;
      }
    }
  }

  return 0;
}

uint64_t luaO_utf8esc(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    v4 = (a1 + 7);
    LODWORD(v5) = 63;
    v6 = 0x700000000;
    LODWORD(v2) = 1;
    do
    {
      *v4-- = a2 & 0x3F | 0x80;
      a2 >>= 6;
      v5 = v5 >> 1;
      v6 -= 0x100000000;
      v2 = (v2 + 1);
    }

    while (a2 > v5);
    LOBYTE(a2) = a2 | (2 * ~v5);
    v3 = v6 >> 32;
  }

  else
  {
    v2 = 1;
    v3 = 7;
  }

  *(a1 + v3) = a2;
  return v2;
}

uint64_t luaO_tostring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 19)
  {
    v10 = luaI_snprintf(a1, __s, 50, "%d", a5, a6, a7, a8, *a2);
  }

  else
  {
    v10 = luaI_snprintf(a1, __s, 50, "%.14g", a5, a6, a7, a8, *a2);
    if (!__s[cstdlib_strcspn(__s, "-0123456789")])
    {
      *&__s[v10] = 12334;
      v10 += 2;
    }
  }

  result = luaS_newlstr(a1, __s, v10);
  *a2 = result;
  *(a2 + 8) = *(result + 8) | 0x40;
  return result;
}

uint64_t luaO_pushvfstring(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = __s;
  v46[4] = *MEMORY[0x277D85DE8];
  v5 = cstdlib_strchr(__s, 37);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = *(a1 + 16);
      if (*(a1 + 48) - v8 <= 32)
      {
        luaD_growstack(a1, 2);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = v8 + 16;
      v9 = luaS_newlstr(a1, v3, v6 - v3);
      *v8 = v9;
      *(v8 + 8) = *(v9 + 8) | 0x40;
      v16 = v6[1];
      if (v16 > 0x63)
      {
        break;
      }

      if (v6[1] <= 0x54u)
      {
        if (v16 == 37)
        {
          v27 = *(a1 + 16);
          *(a1 + 16) = v27 + 16;
          v28 = a1;
          v29 = "%";
LABEL_33:
          v26 = 1;
          goto LABEL_34;
        }

        if (v16 != 73)
        {
          goto LABEL_31;
        }

        v17 = *(a1 + 16);
        *(a1 + 16) = v17 + 16;
        v18 = a3++;
        v19 = *v18;
LABEL_26:
        *v17 = v19;
        *(v17 + 8) = 19;
        goto LABEL_27;
      }

      if (v16 == 85)
      {
        v31 = a3++;
        v26 = luaO_utf8esc(__s1, *v31);
        v29 = v46 - v26;
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        goto LABEL_30;
      }

      if (v16 != 99)
      {
        goto LABEL_31;
      }

      v22 = a3++;
      __s1[0] = *v22;
      if ((luai_ctype_[__s1[0] + 1] & 4) != 0)
      {
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v29 = __s1;
        v28 = a1;
        goto LABEL_33;
      }

      luaO_pushfstring(a1, "<\\%d>", __s1[0]);
LABEL_35:
      v7 += 2;
      v3 = v6 + 2;
      v6 = cstdlib_strchr(v6 + 2, 37);
      if (!v6)
      {
        goto LABEL_38;
      }
    }

    if (v6[1] > 0x6Fu)
    {
      if (v16 == 112)
      {
        v32 = a3++;
        v26 = luaI_snprintf(a1, __s1, 40, "%p", v12, v13, v14, v15, *v32);
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v29 = __s1;
LABEL_30:
        v28 = a1;
LABEL_34:
        v33 = luaS_newlstr(v28, v29, v26);
        *v27 = v33;
        *(v27 + 8) = *(v33 + 8) | 0x40;
        goto LABEL_35;
      }

      if (v16 == 115)
      {
        v23 = a3++;
        v24 = *v23;
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = "(null)";
        }

        v26 = cstdlib_strlen(v25);
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v28 = a1;
        v29 = v25;
        goto LABEL_34;
      }

LABEL_31:
      luaG_runerror(a1, "invalid option '%%%c' to 'lua_pushfstring'", v16);
      goto LABEL_35;
    }

    if (v16 == 100)
    {
      v17 = *(a1 + 16);
      *(a1 + 16) = v17 + 16;
      v30 = a3++;
      v19 = *v30;
      goto LABEL_26;
    }

    if (v16 != 102)
    {
      goto LABEL_31;
    }

    v20 = *(a1 + 16);
    *(a1 + 16) = v20 + 16;
    v21 = a3++;
    *v20 = *v21;
    *(v20 + 8) = 3;
LABEL_27:
    luaO_tostring(a1, *(a1 + 16) - 16, v10, v11, v12, v13, v14, v15);
    goto LABEL_35;
  }

  v7 = 0;
LABEL_38:
  if ((*(a1 + 48) - *(a1 + 16)) <= 16)
  {
    luaD_growstack(a1, 1);
  }

  v34 = cstdlib_strlen(v3);
  v35 = *(a1 + 16);
  *(a1 + 16) = v35 + 16;
  v36 = luaS_newlstr(a1, v3, v34);
  *v35 = v36;
  *(v35 + 8) = *(v36 + 8) | 0x40;
  if (v7)
  {
    luaV_concat(a1, v7 | 1, v37, v38, v39, v40, v41, v42);
  }

  return *(*(a1 + 16) - 16) + 24;
}

void *luaO_chunkid(char *a1, char *__s, size_t a3)
{
  v6 = cstdlib_strlen(__s);
  v7 = v6;
  v8 = *__s;
  if (v8 != 64)
  {
    if (v8 != 61)
    {
      v13 = cstdlib_strchr(__s, 10);
      cstdlib_memcpy(a1, "[string ", 9uLL);
      v14 = a1 + 9;
      if (v7 >= a3 - 15 || v13)
      {
        v15 = v13 - __s;
        if (!v13)
        {
          v15 = v7;
        }

        if (v15 >= a3 - 15)
        {
          v16 = a3 - 15;
        }

        else
        {
          v16 = v15;
        }

        cstdlib_memcpy(v14, __s, v16);
        cstdlib_memcpy(&v14[v16], "...", 3uLL);
        v11 = &v14[v16 + 3];
      }

      else
      {
        cstdlib_memcpy(v14, __s, v7);
        v11 = &v14[v7];
      }

      v12 = "]";
      v10 = 3;
      goto LABEL_18;
    }

    if (v6 > a3)
    {
      result = cstdlib_memcpy(a1, __s + 1, a3 - 1);
      a1[a3 - 1] = 0;
      return result;
    }

    goto LABEL_7;
  }

  if (v6 <= a3)
  {
LABEL_7:
    v12 = __s + 1;
    v11 = a1;
    v10 = v7;
    goto LABEL_18;
  }

  cstdlib_memcpy(a1, "...", 3uLL);
  v10 = a3 - 3;
  v11 = a1 + 3;
  v12 = &__s[v7 - a3 + 4];
LABEL_18:

  return cstdlib_memcpy(v11, v12, v10);
}

uint64_t luaY_parser(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, int a6)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v12 = luaF_newLclosure(a1, 1u);
  v13 = *(a1 + 16);
  *v13 = v12;
  *(v13 + 8) = 70;
  v14 = *(a1 + 16) + 16;
  *(a1 + 16) = v14;
  if (*(a1 + 48) - v14 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  *&v33 = luaH_new(a1);
  v15 = *(a1 + 16);
  *v15 = v33;
  *(v15 + 8) = 69;
  v16 = *(a1 + 16) + 16;
  *(a1 + 16) = v16;
  if (*(a1 + 48) - v16 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  luaF_newproto(a1);
  v18 = v17;
  *(v12 + 24) = v17;
  *&v24 = v17;
  v19 = luaS_new(a1, a5);
  *(v18 + 104) = v19;
  *(&v32 + 1) = a3;
  *(&v33 + 1) = a4;
  a4[10] = 0;
  a4[6] = 0;
  a4[2] = 0;
  luaX_setinput(a1, &v28, a2, v19, a6);
  v40 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v20 = *(&v33 + 1);
  *(&v24 + 1) = v31;
  *&v25 = &v28;
  *&v31 = &v24;
  v26 = xmmword_26ECCEB30;
  BYTE12(v27) = 0;
  v21 = *(*(&v33 + 1) + 8);
  LODWORD(v27) = 0;
  *(&v27 + 4) = v21;
  *(v18 + 104) = v34;
  v22 = *(v20 + 40);
  *(v18 + 11) = 513;
  LODWORD(v20) = *(v20 + 24);
  v38 = v22;
  v39 = v20;
  v37 = 0;
  *(&v25 + 1) = &v37;
  v36[2] = -1;
  LODWORD(v36[0]) = 8;
  newupvalue(&v24, *(&v34 + 1), v36);
  luaX_next(&v28);
  statlist(&v28);
  if (v29 != 289)
  {
    error_expected(&v28, 0x121u);
  }

  close_func(&v28);
  *(a1 + 16) -= 16;
  return v12;
}

uint64_t newupvalue(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *a1;
  v7 = (*a1 + 16);
  v8 = *v7;
  checklimit(a1, *(a1 + 59) + 1, 255, "upvalues");
  v9 = *v7;
  if (*v7 <= *(a1 + 59))
  {
    *(v6 + 88) = luaM_growaux_(*(*(a1 + 16) + 56), *(v6 + 88), v7, 16, 255, "upvalues");
    v9 = *(v6 + 16);
  }

  v10 = *(v6 + 88);
  if (v8 < v9)
  {
    v11 = 0;
    v12 = v9 - v8;
    v13 = (v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = (v10 + 16 * v8 + 16);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_26ECC7980)));
      if (v16.i8[0])
      {
        *(v15 - 2) = 0;
      }

      if (v16.i8[4])
      {
        *v15 = 0;
      }

      v11 += 2;
      v15 += 4;
    }

    while (v13 != v11);
  }

  result = *(a1 + 59);
  v18 = v10 + 16 * result;
  *(v18 + 8) = *a3 == 8;
  *(v18 + 9) = a3[2];
  *v18 = a2;
  if ((*(v6 + 9) & 4) != 0 && (*(a2 + 9) & 3) != 0)
  {
    luaC_barrier_(*(*(a1 + 16) + 56), v6, a2);
    result = *(a1 + 59);
  }

  *(a1 + 59) = result + 1;
  return result;
}

void statlist(__n128 *result)
{
  while (1)
  {
    v2 = result[1].n128_u32[0] - 260;
    if (v2 <= 0x1D)
    {
      if (((1 << v2) & 0x20020007) != 0)
      {
        return;
      }

      if (result[1].n128_u32[0] == 274)
      {
        break;
      }
    }

    statement(result);
  }

  statement(result);
}

uint64_t close_func(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *v3;
  luaK_ret(v3, 0, 0);
  leaveblock(v3);
  *(v4 + 56) = luaM_realloc_(v2, *(v4 + 56), 4 * *(v4 + 24), 4 * *(v3 + 32));
  v5 = *(v3 + 32);
  *(v4 + 24) = v5;
  *(v4 + 72) = luaM_realloc_(v2, *(v4 + 72), 4 * *(v4 + 28), 4 * v5);
  *(v4 + 28) = *(v3 + 32);
  *(v4 + 48) = luaM_realloc_(v2, *(v4 + 48), 16 * *(v4 + 20), 16 * *(v3 + 44));
  v6 = *(v3 + 48);
  *(v4 + 20) = *(v3 + 44);
  *(v4 + 64) = luaM_realloc_(v2, *(v4 + 64), 8 * *(v4 + 32), 8 * v6);
  *(v4 + 32) = *(v3 + 48);
  *(v4 + 80) = luaM_realloc_(v2, *(v4 + 80), 16 * *(v4 + 36), 16 * *(v3 + 56));
  *(v4 + 36) = *(v3 + 56);
  result = luaM_realloc_(v2, *(v4 + 88), 16 * *(v4 + 16), 16 * *(v3 + 59));
  *(v4 + 88) = result;
  *(v4 + 16) = *(v3 + 59);
  *(a1 + 48) = *(v3 + 8);
  if (*(*(v2 + 24) + 24) >= 1)
  {

    return luaC_step(v2);
  }

  return result;
}

void *checklimit(void *result, int a2, int a3, const char *a4)
{
  if (a2 > a3)
  {
    v7 = result;
    v8 = *(result[2] + 56);
    if (*(*result + 40))
    {
      v9 = luaO_pushfstring(v8, "function at line %d", *(*result + 40));
    }

    else
    {
      v9 = "main function";
    }

    v10 = luaO_pushfstring(v8, "too many %s (limit is %d) in %s", a4, a3, v9);
    v11 = v7[2];

    return luaX_syntaxerror(v11, v10);
  }

  return result;
}

void statement(__n128 *a1)
{
  v2 = a1->n128_u32[1];
  v3 = a1[3].n128_u64[1];
  v4 = *(v3 + 198) + 1;
  *(v3 + 198) = v4;
  checklimit(a1[3].n128_u64[0], v4, 200, "C levels");
  v5 = a1[1].n128_i32[0];
  if (v5 <= 266)
  {
    if (v5 <= 263)
    {
      if (v5 != 59)
      {
        if (v5 != 258)
        {
          if (v5 == 259)
          {
            luaX_next(a1);
            block(a1);
            check_match(a1, 262, 0x103u, v2);
            goto LABEL_102;
          }

          goto LABEL_69;
        }

LABEL_16:
        v10 = luaK_jump(a1[3].n128_i64[0]);
        gotostat(a1, v10);
        goto LABEL_102;
      }

LABEL_59:
      luaX_next(a1);
      goto LABEL_102;
    }

    if (v5 != 264)
    {
      if (v5 == 265)
      {
        v68 = 0uLL;
        *&v69 = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        luaX_next(a1);
        singlevar(a1, &v68);
        while (1)
        {
          v41 = a1[1].n128_u32[0];
          if (v41 != 46)
          {
            break;
          }

          fieldsel(a1, &v68);
        }

        if (v41 == 58)
        {
          fieldsel(a1, &v68);
          v47 = 1;
        }

        else
        {
          v47 = 0;
        }

        body(a1, &v70, v47, v2);
        luaK_storevar(a1[3].n128_i64[0], &v68, &v70);
        luaK_fixline(a1[3].n128_u64[0], v2);
        goto LABEL_102;
      }

      goto LABEL_16;
    }

    v6 = a1[3].n128_i64[0];
    v72 = 0x10000;
    LOBYTE(v72) = *(v6 + 58);
    v32 = *(v6 + 24);
    v71 = __PAIR64__(*(*(*(v6 + 16) + 88) + 24), *(*(*(v6 + 16) + 88) + 40));
    v70 = v32;
    *(v6 + 24) = &v70;
    luaX_next(a1);
    v33 = str_checkname(a1);
    v34 = a1[1].n128_u32[0];
    if (v34 == 44 || v34 == 268)
    {
      v52 = a1[3].n128_u64[0];
      v68 = 0uLL;
      *&v69 = 0;
      v53 = *(v52 + 60);
      v54 = luaX_newstring(a1, "(for generator)", 0xFuLL);
      new_localvar(a1, v54);
      v55 = luaX_newstring(a1, "(for state)", 0xBuLL);
      new_localvar(a1, v55);
      v56 = luaX_newstring(a1, "(for control)", 0xDuLL);
      new_localvar(a1, v56);
      new_localvar(a1, v33);
      v57 = a1[1].n128_u32[0];
      v58 = 1;
      while (v57 == 44)
      {
        luaX_next(a1);
        v59 = str_checkname(a1);
        new_localvar(a1, v59);
        v57 = a1[1].n128_u32[0];
        ++v58;
      }

      checknext(a1, 268);
      v60 = a1->n128_i32[1];
      v61 = explist(a1, &v68);
      adjust_assign(a1, 3, v61, &v68);
      luaK_checkstack(v52, 3);
      forbody(a1, v53, v60, v58, 0);
    }

    else if (v34 == 61)
    {
      fornum(a1, v33, v2);
    }

    else
    {
      luaX_syntaxerror(a1, "'=' or 'in' expected");
    }

    check_match(a1, 262, 0x108u, v2);
LABEL_101:
    leaveblock(v6);
    goto LABEL_102;
  }

  if (v5 <= 273)
  {
    if (v5 != 267)
    {
      if (v5 == 269)
      {
        luaX_next(a1);
        if (a1[1].n128_u32[0] == 265)
        {
          luaX_next(a1);
          v68 = 0uLL;
          *&v69 = 0;
          v39 = a1[3].n128_u64[0];
          v40 = str_checkname(a1);
          new_localvar(a1, v40);
          adjustlocalvars(a1, 1u);
          body(a1, &v68, 0, a1->n128_i32[1]);
          *(*(*v39 + 80) + 16 * *(**(*(v39 + 16) + 88) + 2 * (*(v39 + 52) + DWORD2(v68))) + 8) = *(v39 + 32);
        }

        else
        {
          v68 = 0uLL;
          *&v69 = 0;
          v62 = str_checkname(a1);
          new_localvar(a1, v62);
          v63 = a1[1].n128_u32[0];
          v64 = 1;
          while (v63 == 44)
          {
            luaX_next(a1);
            v65 = str_checkname(a1);
            new_localvar(a1, v65);
            ++v64;
            v63 = a1[1].n128_u32[0];
          }

          if (v63 == 61)
          {
            luaX_next(a1);
            v66 = explist(a1, &v68);
          }

          else
          {
            v66 = 0;
            LODWORD(v68) = 0;
          }

          adjust_assign(a1, v64, v66, &v68);
          adjustlocalvars(a1, v64);
        }

        goto LABEL_102;
      }

      if (v5 != 273)
      {
        goto LABEL_69;
      }

      v6 = a1[3].n128_i64[0];
      v7 = luaK_getlabel(v6);
      *&v69 = 0x10000;
      v72 = 0;
      LOBYTE(v69) = *(v6 + 58);
      v8 = *(v6 + 24);
      *(&v68 + 1) = __PAIR64__(*(*(*(v6 + 16) + 88) + 24), *(*(*(v6 + 16) + 88) + 40));
      *&v68 = v8;
      LOBYTE(v72) = v69;
      v71 = *(&v68 + 1);
      v70 = &v68;
      *(v6 + 24) = &v70;
      luaX_next(a1);
      statlist(a1);
      check_match(a1, 277, 0x111u, v2);
      v9 = cond(a1);
      if (BYTE1(v72))
      {
        luaK_patchclose(v6, v9, v72);
      }

      leaveblock(v6);
      luaK_patchlist(v6, v9, v7);
      goto LABEL_101;
    }

    v22 = a1[3].n128_u64[0];
    v67 = -1;
    do
    {
      v68 = 0uLL;
      *&v69 = 0;
      v23 = a1[3].n128_i64[0];
      v70 = 0;
      v71 = 0;
      v72 = 0;
      luaX_next(a1);
      subexpr(a1, &v70, 0);
      checknext(a1, 275);
      if ((a1[1].n128_u32[0] | 8) == 0x10A)
      {
        luaK_goiffalse(a1[3].n128_u64[0], &v70);
        LOBYTE(v69) = *(v23 + 58);
        *(&v69 + 1) = 0;
        v24 = *(v23 + 24);
        *(&v68 + 1) = __PAIR64__(*(*(*(v23 + 16) + 88) + 24), *(*(*(v23 + 16) + 88) + 40));
        *&v68 = v24;
        *(v23 + 24) = &v68;
        gotostat(a1, v72);
        while (1)
        {
          v25 = a1[1].n128_i32[0];
          if (v25 > 287)
          {
            if (v25 != 288)
            {
              if (v25 != 289)
              {
LABEL_43:
                v27 = luaK_jump(v23);
                goto LABEL_44;
              }

LABEL_40:
              leaveblock(v23);
              goto LABEL_47;
            }
          }

          else if (v25 != 59)
          {
            if ((v25 - 260) >= 3)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }

          statement(a1);
        }
      }

      luaK_goiftrue(a1[3].n128_u64[0], &v70);
      LOBYTE(v69) = *(v23 + 58);
      *(&v69 + 1) = 0;
      v26 = *(v23 + 24);
      *(&v68 + 1) = __PAIR64__(*(*(*(v23 + 16) + 88) + 24), *(*(*(v23 + 16) + 88) + 40));
      *&v68 = v26;
      *(v23 + 24) = &v68;
      v27 = HIDWORD(v72);
LABEL_44:
      statlist(a1);
      leaveblock(v23);
      if ((a1[1].n128_u32[0] & 0xFFFFFFFE) == 0x104)
      {
        v28 = luaK_jump(v23);
        luaK_concat(v23, &v67, v28);
      }

      luaK_patchtohere(v23, v27);
LABEL_47:
      v29 = a1[1].n128_u32[0];
    }

    while (v29 == 261);
    if (v29 == 260)
    {
      luaX_next(a1);
      block(a1);
    }

    check_match(a1, 262, 0x10Bu, v2);
    v30 = v67;
    v31 = v22;
LABEL_66:
    luaK_patchtohere(v31, v30);
    goto LABEL_102;
  }

  if (v5 == 274)
  {
    luaX_next(a1);
    v35 = 0;
    v36 = a1[3].n128_u64[0];
    v68 = 0uLL;
    *&v69 = 0;
    v37 = a1[1].n128_u32[0];
    if (v37 - 260 <= 0x1D && ((1 << (v37 - 4)) & 0x20020007) != 0)
    {
      v38 = 0;
    }

    else
    {
      v38 = 0;
      if (v37 != 59)
      {
        v38 = explist(a1, &v68);
        if ((v68 - 13) > 1)
        {
          if (v38 == 1)
          {
            v35 = luaK_exp2anyreg(v36, &v68);
          }

          else
          {
            luaK_exp2nextreg(v36, &v68);
            v35 = v36[58];
          }
        }

        else
        {
          luaK_setreturns(v36, &v68, -1);
          if (v68 == 13 && v38 == 1)
          {
            *(*(*v36 + 56) + 4 * SDWORD2(v68)) = *(*(*v36 + 56) + 4 * SDWORD2(v68)) & 0xFFFFFFC0 | 0x25;
          }

          v35 = v36[58];
          v38 = -1;
        }
      }
    }

    luaK_ret(v36, v35, v38);
    if (a1[1].n128_u32[0] != 59)
    {
      goto LABEL_102;
    }

    goto LABEL_59;
  }

  if (v5 == 278)
  {
    v42 = a1[3].n128_i64[0];
    *&v69 = 0x10000;
    luaX_next(a1);
    v43 = luaK_getlabel(v42);
    v44 = cond(a1);
    LOBYTE(v69) = *(v42 + 58);
    v45 = *(v42 + 24);
    *(&v68 + 1) = __PAIR64__(*(*(*(v42 + 16) + 88) + 24), *(*(*(v42 + 16) + 88) + 40));
    *&v68 = v45;
    *(v42 + 24) = &v68;
    checknext(a1, 259);
    block(a1);
    v46 = luaK_jump(v42);
    luaK_patchlist(v42, v46, v43);
    check_match(a1, 262, 0x116u, v2);
    leaveblock(v42);
    v31 = v42;
    v30 = v44;
    goto LABEL_66;
  }

  if (v5 != 288)
  {
LABEL_69:
    v48 = a1[3].n128_u64[0];
    v68 = 0u;
    v69 = 0u;
    suffixedexp(a1, &v68 + 2, 0);
    v49 = a1[1].n128_u32[0];
    if (v49 == 61 || v49 == 44)
    {
      *&v68 = 0;
      assignment(a1, &v68, 1);
    }

    else
    {
      if (DWORD2(v68) != 13)
      {
        luaX_syntaxerror(a1, "syntax error");
      }

      *(*(*v48 + 56) + 4 * v69) = *(*(*v48 + 56) + 4 * v69) & 0xFF803FFF | 0x4000;
    }

    goto LABEL_102;
  }

  luaX_next(a1);
  v11 = str_checkname(a1);
  v12 = a1[3].n128_u64[0];
  v13 = a1[5].n128_u64[1];
  v14 = *(*(v12 + 24) + 8);
  v15 = *(v13 + 40);
  if (v14 < v15)
  {
    v16 = 24 * v14;
    do
    {
      v17 = *(v13 + 32);
      if (*(v17 + v16) == v11)
      {
        v18 = luaO_pushfstring(*(*(v12 + 16) + 56), "label '%s' already defined on line %d", (v11 + 24), *(v17 + v16 + 12));
        v19 = *(v12 + 16);
        *(v19 + 16) = 0;
        luaX_syntaxerror(v19, v18);
        v15 = *(v13 + 40);
      }

      ++v14;
      v16 += 24;
    }

    while (v14 < v15);
  }

  checknext(a1, 288);
  v20 = newlabelentry(a1, v13 + 32, v11, v2, *(v12 + 32));
  while (1)
  {
    v21 = a1[1].n128_i32[0];
    if (v21 <= 287)
    {
      break;
    }

    if (v21 != 288)
    {
      if (v21 != 289)
      {
        goto LABEL_90;
      }

LABEL_73:
      v50 = *(v13 + 32);
      v51 = v20;
      *(v50 + 24 * v20 + 16) = *(*(v12 + 24) + 16);
      goto LABEL_74;
    }

LABEL_30:
    statement(a1);
  }

  if (v21 == 59)
  {
    goto LABEL_30;
  }

  if ((v21 - 260) < 3)
  {
    goto LABEL_73;
  }

LABEL_90:
  v50 = *(v13 + 32);
  v51 = v20;
LABEL_74:
  findgotos(a1, (v50 + 24 * v51));
LABEL_102:
  *(a1[3].n128_u64[0] + 60) = *(a1[3].n128_u64[0] + 58);
  --*(a1[3].n128_u64[1] + 198);
}

uint64_t block(uint64_t a1)
{
  v1 = *(a1 + 48);
  v9 = 0;
  LOBYTE(v9) = *(v1 + 58);
  v2 = *(v1 + 24);
  v3 = *(*(v1 + 16) + 88);
  v4 = *(v3 + 40);
  LODWORD(v3) = *(v3 + 24);
  v7 = v4;
  v8 = v3;
  v6 = v2;
  *(v1 + 24) = &v6;
  statlist(a1);
  return leaveblock(v1);
}

void check_match(__n128 *a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a1[1].n128_u32[0] == a2)
  {

    luaX_next(a1);
  }

  else if (a1->n128_u32[1] == a4)
  {

    error_expected(a1, a2);
  }

  else
  {
    v7 = a1[3].n128_i64[1];
    v8 = luaX_token2str(a1, a2);
    v9 = luaX_token2str(a1, a3);
    v10 = luaO_pushfstring(v7, "%s expected (to close %s at line %d)", v8, v9, a4);

    luaX_syntaxerror(a1, v10);
  }
}

unint64_t str_checkname(__n128 *a1)
{
  if (a1[1].n128_u32[0] != 292)
  {
    error_expected(a1, 0x124u);
  }

  v2 = a1[1].n128_u64[1];
  luaX_next(a1);
  return v2;
}

uint64_t gotostat(__n128 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1->n128_i32[1];
  v5 = a1[1].n128_u32[0];
  luaX_next(a1);
  if (v5 == 266)
  {
    v6 = str_checkname(a1);
  }

  else
  {
    v6 = luaS_new(a1[3].n128_i64[1], "break");
  }

  v7 = newlabelentry(a1, a1[5].n128_u64[1] + 16, v6, v4, v2);

  return findlabel(a1, v7);
}

double checknext(__n128 *a1, uint64_t a2)
{
  if (a1[1].n128_u32[0] != a2)
  {
    error_expected(a1, a2);
  }

  *&result = luaX_next(a1).n128_u64[0];
  return result;
}

uint64_t leaveblock(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (*v3 && *(v3 + 17))
  {
    v4 = luaK_jump(result);
    luaK_patchclose(v1, v4, *(v3 + 16));
    result = luaK_patchtohere(v1, v4);
  }

  if (*(v3 + 18))
  {
    v5 = luaS_new(*(v2 + 56), "break");
    v6 = newlabelentry(v2, *(v2 + 88) + 32, v5, 0, *(*(v2 + 48) + 32));
    result = findgotos(v2, (*(*(v2 + 88) + 32) + 24 * v6));
  }

  v7 = *v3;
  *(v1 + 24) = *v3;
  v8 = *(v3 + 16);
  v9 = *(v1 + 58);
  v10 = *(*(v1 + 16) + 88);
  *(v10 + 8) += v8 - v9;
  if (v8 < v9)
  {
    v11 = *(v1 + 32);
    v12 = *(*v1 + 80);
    v13 = *v10 + 2 * *(v1 + 52) - 2;
    do
    {
      v14 = *(v13 + 2 * v9--);
      *(v12 + 16 * v14 + 12) = v11;
    }

    while (v9 > v8);
    *(v1 + 58) = v9;
  }

  *(v1 + 60) = v9;
  v15 = *(v2 + 88);
  v16 = *(v3 + 3);
  *(v15 + 40) = *(v3 + 2);
  if (v7)
  {
    while (v16 < *(v10 + 24))
    {
      v17 = *(v10 + 16) + 24 * v16;
      v18 = *(v3 + 16);
      if (*(v17 + 16) > v18)
      {
        if (*(v3 + 17))
        {
          luaK_patchclose(v1, *(v17 + 8), v18);
          LOBYTE(v18) = *(v3 + 16);
        }

        *(v17 + 16) = v18;
      }

      result = findlabel(*(v1 + 16), v16);
      if (!result)
      {
        ++v16;
      }
    }
  }

  else if (v16 < *(v15 + 24))
  {
    v19 = (*(v15 + 16) + 24 * v16);
    v20 = *v19;
    v21 = "no visible label '%s' for <goto> at line %d";
    if (*(*v19 + 8) == 4 && *(v20 + 10))
    {
      v21 = "<%s> at line %d not inside a loop";
    }

    v22 = luaO_pushfstring(*(v2 + 56), v21, v20 + 24, v19[3]);
    *(v2 + 16) = 0;

    return luaX_syntaxerror(v2, v22);
  }

  return result;
}

uint64_t subexpr(__n128 *a1, int32x2_t *a2, int a3)
{
  v8 = a1 + 3;
  v6 = a1[3].n128_u64[0];
  v7 = v8->n128_u64[1];
  v9 = *(v7 + 198) + 1;
  *(v7 + 198) = v9;
  checklimit(v6, v9, 200, "C levels");
  v11 = a1[1].n128_i32[0];
  if (v11 <= 269)
  {
    if (v11 > 125)
    {
      if (v11 != 126)
      {
        if (v11 != 263)
        {
          if (v11 == 265)
          {
            luaX_next(a1);
            body(a1, a2, 0, a1->n128_i32[1]);
            goto LABEL_37;
          }

          goto LABEL_72;
        }

        a2[2] = -1;
        v12 = 3;
        goto LABEL_35;
      }

      v16 = 1;
    }

    else
    {
      switch(v11)
      {
        case '#':
          v16 = 3;
          break;
        case '-':
          v16 = 0;
          break;
        case '{':
          constructor(a1, a2);
          goto LABEL_37;
        default:
          goto LABEL_72;
      }
    }

LABEL_33:
    v17 = a1->n128_u32[1];
    luaX_next(a1);
    subexpr(a1, a2, 12);
    luaK_prefix(a1[3].n128_i64[0], v16, a2, v17);
    goto LABEL_37;
  }

  if (v11 <= 280)
  {
    if (v11 == 270)
    {
      a2[2] = -1;
      v12 = 1;
      goto LABEL_35;
    }

    if (v11 != 271)
    {
      if (v11 != 276)
      {
        goto LABEL_72;
      }

      a2[2] = -1;
      v12 = 2;
LABEL_35:
      a2->i32[0] = v12;
      a2[1].i32[0] = 0;
      goto LABEL_36;
    }

    v16 = 2;
    goto LABEL_33;
  }

  if (v11 > 290)
  {
    if (v11 == 291)
    {
      a2[2] = -1;
      a2->i32[0] = 6;
      a2[1].i32[0] = 0;
      a2[1] = *&a1[1].n128_i8[8];
      goto LABEL_36;
    }

    if (v11 != 293)
    {
      goto LABEL_72;
    }

    v13 = luaK_stringK(a1[3].n128_u64[0], a1[1].n128_i64[1]);
    a2[2] = -1;
    v14 = 4;
LABEL_26:
    a2->i32[0] = v14;
    a2[1].i32[0] = v13;
    goto LABEL_36;
  }

  if (v11 == 281)
  {
    v15 = a1[3].n128_u64[0];
    if (!*(*v15 + 11))
    {
      luaX_syntaxerror(a1, "cannot use '...' outside a vararg function");
    }

    v13 = luaK_codeABC(v15, 45, 0, 1, 0);
    a2[2] = -1;
    v14 = 14;
    goto LABEL_26;
  }

  if (v11 == 290)
  {
    a2[2] = -1;
    a2->i32[0] = 5;
    a2[1].i32[0] = 0;
    a2[1] = *&a1[1].n128_i8[8];
LABEL_36:
    luaX_next(a1);
    goto LABEL_37;
  }

LABEL_72:
  suffixedexp(a1, a2, v10);
LABEL_37:
  v18 = a1[1].n128_i32[0];
  v19 = 21;
  if (v18 <= 125)
  {
    if (v18 > 46)
    {
      if (v18 <= 61)
      {
        if (v18 == 47)
        {
          v19 = 5;
        }

        else
        {
          if (v18 != 60)
          {
            goto LABEL_88;
          }

          v19 = 14;
        }
      }

      else
      {
        switch(v18)
        {
          case '>':
            v19 = 17;
            break;
          case '^':
            v19 = 4;
            break;
          case '|':
            v19 = 8;
            break;
          default:
            goto LABEL_88;
        }
      }
    }

    else if (v18 <= 41)
    {
      if (v18 == 37)
      {
        v19 = 3;
      }

      else
      {
        if (v18 != 38)
        {
          goto LABEL_88;
        }

        v19 = 7;
      }
    }

    else
    {
      switch(v18)
      {
        case '*':
          v19 = 2;
          break;
        case '+':
          v19 = 0;
          break;
        case '-':
          v19 = 1;
          break;
        default:
          goto LABEL_88;
      }
    }
  }

  else if (v18 <= 281)
  {
    if (v18 <= 271)
    {
      if (v18 == 126)
      {
        v19 = 9;
      }

      else
      {
        if (v18 != 257)
        {
          goto LABEL_88;
        }

        v19 = 19;
      }
    }

    else
    {
      switch(v18)
      {
        case 272:
          v19 = 20;
          break;
        case 279:
          v19 = 6;
          break;
        case 280:
          v19 = 12;
          break;
        default:
          goto LABEL_88;
      }
    }
  }

  else if (v18 > 284)
  {
    switch(v18)
    {
      case 285:
        v19 = 16;
        break;
      case 286:
        v19 = 10;
        break;
      case 287:
        v19 = 11;
        break;
      default:
        goto LABEL_88;
    }
  }

  else if (v18 == 282)
  {
    v19 = 13;
  }

  else if (v18 == 283)
  {
    v19 = 18;
  }

  else
  {
    v19 = 15;
  }

  do
  {
    v20 = &priority[2 * v19];
    if (*v20 <= a3)
    {
      break;
    }

    memset(v24, 0, sizeof(v24));
    v21 = a1->n128_i32[1];
    luaX_next(a1);
    luaK_infix(a1[3].n128_u64[0], v19, a2);
    v22 = subexpr(a1, v24, v20[1]);
    luaK_posfix(a1[3].n128_i64[0], v19, a2, v24, v21);
    v19 = v22;
  }

  while (v22 != 21);
LABEL_88:
  --*(a1[3].n128_u64[1] + 198);
  return v19;
}

uint64_t constructor(__n128 *a1, uint64_t a2)
{
  v4 = a1[3].n128_u64[0];
  v5 = a1->n128_i32[1];
  v6 = luaK_codeABC(v4, 11, 0, 0, 0);
  v14 = 0u;
  v17 = 0u;
  v16 = a2;
  *(a2 + 16) = -1;
  *a2 = 12;
  *(a2 + 8) = v6;
  v15 = -1;
  DWORD2(v14) = 0;
  luaK_exp2nextreg(a1[3].n128_i64[0], a2);
  checknext(a1, 123);
  while (1)
  {
    v7 = a1[1].n128_u32[0];
    if (v7 == 125)
    {
      break;
    }

    if (v14)
    {
      luaK_exp2nextreg(v4, &v14);
      LODWORD(v14) = 0;
      if (DWORD2(v17) == 50)
      {
        luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), 50);
        DWORD2(v17) = 0;
      }

      v7 = a1[1].n128_u32[0];
    }

    if (v7 == 91 || v7 == 292 && luaX_lookahead(a1) == 61)
    {
      recfield(a1, &v14);
    }

    else
    {
      listfield(a1, &v14);
    }

    v8 = a1[1].n128_u32[0];
    if (v8 != 59 && v8 != 44)
    {
      break;
    }

    luaX_next(a1);
  }

  check_match(a1, 125, 0x7Bu, v5);
  v9 = DWORD2(v17);
  if (DWORD2(v17))
  {
    if ((v14 - 13) >= 2)
    {
      if (v14)
      {
        luaK_exp2nextreg(v4, &v14);
        v9 = DWORD2(v17);
      }

      luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), v9);
    }

    else
    {
      luaK_setreturns(v4, &v14, -1);
      luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), -1);
      --DWORD1(v17);
    }
  }

  v10 = *(*v4 + 56);
  v11 = *(v10 + 4 * v6);
  v12 = v11 & 0x7FFFFF | (luaO_int2fb(DWORD1(v17)) << 23);
  *(v10 + 4 * v6) = v12;
  result = luaO_int2fb(v17);
  *(v10 + 4 * v6) = v12 & 0xFF803FFF | ((result & 0x1FF) << 14);
  return result;
}

uint64_t body(__n128 *a1, uint64_t a2, int a3, int a4)
{
  v36 = 0;
  memset(&v35[3], 0, 32);
  v34 = 0;
  v9 = a1[3].n128_u64[0];
  v8 = a1[3].n128_i64[1];
  v10 = *v9;
  v11 = *(*v9 + 32);
  if (v9[12] >= v11)
  {
    *(v10 + 64) = luaM_growaux_(a1[3].n128_u64[1], *(v10 + 64), (*v9 + 32), 8, 0x3FFFF, "functions");
    v12 = *(v10 + 32);
    if (v11 < v12)
    {
      do
      {
        *(*(v10 + 64) + 8 * v11++) = 0;
      }

      while (v12 != v11);
    }
  }

  luaF_newproto(v8);
  v14 = v13;
  v15 = *(v10 + 64);
  v16 = v9[12];
  v9[12] = v16 + 1;
  *(v15 + 8 * v16) = v13;
  if ((*(v10 + 9) & 4) != 0 && (*(v13 + 9) & 3) != 0)
  {
    luaC_barrier_(v8, v10, v13);
  }

  *(v14 + 40) = a4;
  v17 = a1[3].n128_u64[0];
  v35[0] = v14;
  v35[1] = v17;
  a1[3].n128_u64[0] = v35;
  *&v35[4] = xmmword_26ECCEB30;
  LODWORD(v36) = 0;
  BYTE4(v36) = 0;
  v18 = a1[5].n128_u64[1];
  v19 = a1[6].n128_u64[0];
  v20 = v18[2];
  LODWORD(v35[6]) = 0;
  HIDWORD(v35[6]) = v20;
  *(v14 + 104) = v19;
  *(v14 + 12) = 2;
  BYTE2(v34) = 0;
  LOWORD(v34) = 0;
  LODWORD(v19) = v18[10];
  LODWORD(v18) = v18[6];
  v32 = v19;
  v33 = v18;
  v31 = 0;
  v35[2] = a1;
  v35[3] = &v31;
  checknext(a1, 40);
  if (a3)
  {
    v21 = luaX_newstring(a1, "self", 4uLL);
    new_localvar(a1, v21);
    adjustlocalvars(a1, 1u);
  }

  v22 = 0;
  v23 = a1[3].n128_u64[0];
  v24 = *v23;
  *(*v23 + 11) = 0;
  v25 = a1[1].n128_u32[0];
  if (v25 != 41)
  {
    v22 = 0;
    while (1)
    {
      if (v25 == 292)
      {
        v30 = str_checkname(a1);
        new_localvar(a1, v30);
        ++v22;
      }

      else
      {
        if (v25 == 281)
        {
          luaX_next(a1);
          *(v24 + 11) = 1;
          break;
        }

        luaX_syntaxerror(a1, "<name> or '...' expected");
      }

      if (*(v24 + 11) || a1[1].n128_u32[0] != 44)
      {
        break;
      }

      luaX_next(a1);
      v25 = a1[1].n128_u32[0];
    }
  }

  adjustlocalvars(a1, v22);
  v26 = v23[58];
  *(v24 + 10) = v26;
  luaK_reserveregs(v23, v26);
  checknext(a1, 41);
  statlist(a1);
  *(v35[0] + 44) = a1->n128_u32[1];
  check_match(a1, 262, 0x109u, a4);
  v27 = *(a1[3].n128_u64[0] + 8);
  v28 = luaK_codeABx(v27, 44, 0, *(v27 + 48) - 1);
  *(a2 + 16) = -1;
  *a2 = 12;
  *(a2 + 8) = v28;
  luaK_exp2nextreg(v27, a2);
  return close_func(a1);
}

uint64_t suffixedexp(__n128 *a1, int *a2, __n128 a3)
{
  v5 = a1[3].n128_i64[0];
  v6 = a1->n128_i32[1];
  v7 = a1[1].n128_u32[0];
  if (v7 == 292)
  {
    result = singlevar(a1, a2);
  }

  else if (v7 == 40)
  {
    luaX_next(a1);
    subexpr(a1, a2, 0);
    check_match(a1, 41, 0x28u, v6);
    result = luaK_dischargevars(a1[3].n128_i64[0], a2);
  }

  else
  {
    result = luaX_syntaxerror(a1, "unexpected symbol");
  }

  while (1)
  {
    while (1)
    {
      v9 = a1[1].n128_i32[0];
      if (v9 > 90)
      {
        break;
      }

      switch(v9)
      {
        case '(':
          goto LABEL_14;
        case '.':
          result = fieldsel(a1, a2);
          break;
        case ':':
          v12 = 0;
          v13 = 0;
          v14 = 0;
          luaX_next(a1);
          v10 = str_checkname(a1);
          v11 = luaK_stringK(a1[3].n128_u64[0], v10);
          v14 = -1;
          LODWORD(v12) = 4;
          LODWORD(v13) = v11;
          luaK_self(v5, a2, &v12);
LABEL_15:
          result = funcargs(a1, a2, v6);
          break;
        default:
          return result;
      }
    }

    if (v9 != 91)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    luaK_exp2anyregup(v5, a2);
    yindex(a1, &v12);
    result = luaK_indexed(v5, a2, &v12);
  }

  if (v9 == 123 || v9 == 293)
  {
LABEL_14:
    luaK_exp2nextreg(v5, a2);
    goto LABEL_15;
  }

  return result;
}

int32x2_t listfield(uint64_t a1, uint64_t a2)
{
  subexpr(a1, a2, 0);
  checklimit(*(a1 + 48), *(a2 + 36), 0x7FFFFFFF, "items in a constructor");
  result = vadd_s32(*(a2 + 36), 0x100000001);
  *(a2 + 36) = result;
  return result;
}

uint64_t recfield(__n128 *a1, uint64_t a2)
{
  v4 = a1[3].n128_i64[0];
  v5 = *(v4 + 60);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  if (a1[1].n128_u32[0] == 292)
  {
    checklimit(v4, *(a2 + 32), 0x7FFFFFFF, "items in a constructor");
    v6 = str_checkname(a1);
    v7 = luaK_stringK(a1[3].n128_u64[0], v6);
    v15 = -1;
    LODWORD(v13) = 4;
    LODWORD(v14) = v7;
  }

  else
  {
    yindex(a1, &v13);
  }

  ++*(a2 + 32);
  checknext(a1, 61);
  v8 = luaK_exp2RK(v4, &v13);
  subexpr(a1, v12, 0);
  v9 = *(*(a2 + 24) + 8);
  v10 = luaK_exp2RK(v4, v12);
  result = luaK_codeABC(v4, 10, v9, v8, v10);
  *(v4 + 60) = v5;
  return result;
}

double yindex(__n128 *a1, int *a2)
{
  luaX_next(a1);
  subexpr(a1, a2, 0);
  luaK_exp2val(a1[3].n128_i64[0], a2);

  return checknext(a1, 93);
}

uint64_t adjustlocalvars(uint64_t result, unsigned int a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 58) + a2;
  *(v2 + 58) = v3;
  if (a2)
  {
    v4 = *(v2 + 32);
    v5 = **(*(v2 + 16) + 88);
    v6 = *(v2 + 52);
    v7 = *(*v2 + 80);
    v8 = v6 + v3 - a2;
    v9 = a2 - 1;
    do
    {
      *(v7 + 16 * *(v5 + 2 * v8++) + 8) = v4;
    }

    while (v9--);
  }

  return result;
}

uint64_t new_localvar(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[11];
  v6 = *v4;
  v7 = *(*v4 + 36);
  if (v7 <= v4[28])
  {
    v8 = luaM_growaux_(a1[7], *(v6 + 80), (*v4 + 36), 16, 0x7FFF, "local variables");
    *(v6 + 80) = v8;
    v9 = *(v6 + 36);
    if (v7 < v9)
    {
      v10 = 0;
      v11 = v9 - v7;
      v12 = (v9 - v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v8 + 16 * v7 + 16);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_26ECC7980)));
        if (v15.i8[0])
        {
          *(v14 - 2) = 0;
        }

        if (v15.i8[4])
        {
          *v14 = 0;
        }

        v10 += 2;
        v14 += 4;
      }

      while (v12 != v10);
    }
  }

  else
  {
    v8 = *(v6 + 80);
  }

  v16 = v4[28];
  *(v8 + 16 * v16) = a2;
  if ((*(v6 + 9) & 4) != 0 && (*(a2 + 9) & 3) != 0)
  {
    luaC_barrier_(a1[7], v6, a2);
    v16 = v4[28];
  }

  v4[28] = v16 + 1;
  result = checklimit(v4, *(v5 + 8) - *(v4 + 13) + 1, 200, "local variables");
  v18 = *(v5 + 8);
  v19 = *v5;
  if (v18 + 2 > *(v5 + 12))
  {
    result = luaM_growaux_(a1[7], v19, (v5 + 12), 2, 0x7FFFFFFF, "local variables");
    v19 = result;
    *v5 = result;
    v18 = *(v5 + 8);
  }

  *(v5 + 8) = v18 + 1;
  *(v19 + 2 * v18) = v16;
  return result;
}

uint64_t fieldsel(__n128 *a1, int *a2)
{
  v4 = a1[3].n128_i64[0];
  v8 = 0;
  v9 = 0;
  luaK_exp2anyregup(v4, a2);
  luaX_next(a1);
  v5 = str_checkname(a1);
  v6 = luaK_stringK(a1[3].n128_u64[0], v5);
  v10 = -1;
  LODWORD(v8) = 4;
  LODWORD(v9) = v6;
  return luaK_indexed(v4, a2, &v8);
}

int *funcargs(__n128 *a1, uint64_t a2, int a3)
{
  v6 = a1[3].n128_i64[0];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = a1[1].n128_u32[0];
  switch(v7)
  {
    case 0x125u:
      v8 = luaK_stringK(v6, a1[1].n128_i64[1]);
      v15 = -1;
      LODWORD(v13) = 4;
      LODWORD(v14) = v8;
      luaX_next(a1);
      v9 = *(a2 + 8);
LABEL_14:
      luaK_exp2nextreg(v6, &v13);
      goto LABEL_15;
    case 0x7Bu:
      constructor(a1, &v13);
      break;
    case 0x28u:
      luaX_next(a1);
      if (a1[1].n128_u32[0] == 41)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        explist(a1, &v13);
        luaK_setreturns(v6, &v13, -1);
      }

      check_match(a1, 41, 0x28u, a3);
      break;
    default:
      luaX_syntaxerror(a1, "function arguments expected");
      v9 = *(a2 + 8);
      goto LABEL_15;
  }

  v9 = *(a2 + 8);
  if ((v13 - 13) >= 2)
  {
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    v10 = *(v6 + 60) - v9;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:
  v11 = luaK_codeABC(v6, 36, v9, v10, 2);
  *(a2 + 16) = -1;
  *a2 = 13;
  *(a2 + 8) = v11;
  result = luaK_fixline(v6, a3);
  *(v6 + 60) = v9 + 1;
  return result;
}

uint64_t singlevar(__n128 *a1, uint64_t a2)
{
  v4 = str_checkname(a1);
  v5 = a1[3].n128_i64[0];
  result = singlevaraux(v5, v4, a2, 1);
  if (!result)
  {
    v8 = 0;
    v9 = 0;
    singlevaraux(v5, a1[6].n128_i64[1], a2, 1);
    v7 = luaK_stringK(a1[3].n128_u64[0], v4);
    v10 = -1;
    LODWORD(v8) = 4;
    LODWORD(v9) = v7;
    return luaK_indexed(v5, a2, &v8);
  }

  return result;
}

uint64_t singlevaraux(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = *(a1 + 58);
  do
  {
    v8 = __OFSUB__(v7--, 1);
    if (v7 < 0 != v8)
    {
      v12 = *(a1 + 59);
      if (*(a1 + 59))
      {
        v13 = 0;
        v14 = *(*a1 + 88);
        while (*v14 != a2)
        {
          ++v13;
          v14 += 2;
          if (v12 == v13)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        if (!singlevaraux(*(a1 + 8), a2, a3, 0))
        {
          return 0;
        }

        LODWORD(v13) = newupvalue(a1, a2, a3);
      }

      *(a3 + 16) = -1;
      v9 = 9;
      *a3 = 9;
      *(a3 + 8) = v13;
      return v9;
    }
  }

  while (*(*(*a1 + 80) + 16 * *(**(*(a1 + 16) + 88) + 2 * (v7 + *(a1 + 52)))) != a2);
  *(a3 + 16) = -1;
  v9 = 8;
  *a3 = 8;
  *(a3 + 8) = v7;
  if (!a4)
  {
    v10 = v7 + 1;
    v11 = (a1 + 24);
    do
    {
      v11 = *v11;
    }

    while (v10 <= *(v11 + 16));
    *(v11 + 17) = 1;
    return 8;
  }

  return v9;
}

uint64_t explist(__n128 *a1, int *a2)
{
  subexpr(a1, a2, 0);
  v4 = a1[1].n128_u32[0];
  v5 = 1;
  while (v4 == 44)
  {
    luaX_next(a1);
    luaK_exp2nextreg(a1[3].n128_i64[0], a2);
    subexpr(a1, a2, 0);
    v5 = (v5 + 1);
    v4 = a1[1].n128_u32[0];
  }

  return v5;
}

uint64_t newlabelentry(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = *(a2 + 8);
  v11 = (a2 + 12);
  v12 = *(a2 + 12);
  v13 = *a2;
  if (v10 >= v12)
  {
    v13 = luaM_growaux_(*(a1 + 56), v13, v11, 24, 0x7FFF, "labels/gotos");
    *a2 = v13;
  }

  v14 = v13 + 24 * v10;
  *v14 = a3;
  *(v14 + 16) = *(*(a1 + 48) + 58);
  *(v14 + 8) = a5;
  *(v14 + 12) = a4;
  *(a2 + 8) = v10 + 1;
  return v10;
}

void *findgotos(void *result, void *a2)
{
  v2 = result[11];
  v3 = *(*(result[6] + 24) + 12);
  v4 = *(v2 + 24);
  if (v3 < v4)
  {
    v6 = result;
    do
    {
      if (*(*(v2 + 16) + 24 * v3) == *a2)
      {
        result = closegoto(v6, v3, a2);
        v4 = *(v2 + 24);
      }

      else
      {
        ++v3;
      }
    }

    while (v3 < v4);
  }

  return result;
}

void *closegoto(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v7 = *(v6 + 16) + 24 * a2;
  v8 = *(v7 + 16);
  if (v8 < *(a3 + 16))
  {
    v10 = luaO_pushfstring(*(a1 + 56), "<goto %s> at line %d jumps into the scope of local '%s'", (*v7 + 24), *(v7 + 12), (*(*(*v5 + 80) + 16 * *(**(*(v5 + 2) + 88) + 2 * (v5[13] + v8))) + 24));
    *(a1 + 16) = 0;
    luaX_syntaxerror(a1, v10);
  }

  result = luaK_patchlist(v5, *(v7 + 8), *(a3 + 8));
  LODWORD(v12) = *(v6 + 24) - 1;
  if (v12 > a2)
  {
    v13 = a2;
    v14 = 24 * a2;
    do
    {
      v15 = *(v6 + 16) + v14;
      ++v13;
      *v15 = *(v15 + 24);
      *(v15 + 16) = *(v15 + 40);
      v12 = *(v6 + 24) - 1;
      v14 += 24;
    }

    while (v13 < v12);
  }

  *(v6 + 24) = v12;
  return result;
}

uint64_t findlabel(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 88);
  v5 = *(*(v3 + 24) + 8);
  v6 = *(v4 + 40);
  if (v5 >= v6)
  {
    return 0;
  }

  v8 = *(v4 + 16) + 24 * a2;
  v9 = *(v4 + 32) + 24 * v5;
  v10 = v6 - v5;
  while (*v9 != *v8)
  {
    v9 += 24;
    if (!--v10)
    {
      return 0;
    }
  }

  v12 = *(v9 + 16);
  if (*(v8 + 16) > v12)
  {
    luaK_patchclose(v3, *(v8 + 8), v12);
  }

  closegoto(a1, a2, v9);
  return 1;
}

uint64_t cond(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  subexpr(a1, v3, 0);
  if (v3[0].i32[0] == 1)
  {
    v3[0].i32[0] = 3;
  }

  luaK_goiftrue(*(a1 + 48), v3);
  return HIDWORD(v4);
}

uint64_t error_expected(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  v4 = luaX_token2str(a1, a2);
  v5 = luaO_pushfstring(v3, "%s expected", v4);

  return luaX_syntaxerror(a1, v5);
}

int *fornum(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1[3].n128_i64[0];
  v7 = *(v6 + 60);
  v8 = luaX_newstring(a1, "(for index)", 0xBuLL);
  new_localvar(a1, v8);
  v9 = luaX_newstring(a1, "(for limit)", 0xBuLL);
  new_localvar(a1, v9);
  v10 = luaX_newstring(a1, "(for step)", 0xAuLL);
  new_localvar(a1, v10);
  new_localvar(a1, a2);
  checknext(a1, 61);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  subexpr(a1, &v14, 0);
  luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  checknext(a1, 44);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  subexpr(a1, &v14, 0);
  luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  if (a1[1].n128_u32[0] == 44)
  {
    luaX_next(a1);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    subexpr(a1, &v14, 0);
    luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  }

  else
  {
    v11 = *(v6 + 60);
    v12 = luaK_intK(v6, 1);
    luaK_codek(v6, v11, v12);
    luaK_reserveregs(v6, 1);
  }

  return forbody(a1, v7, v3, 1u, 1);
}

int *forbody(__n128 *a1, int a2, int a3, unsigned int a4, int a5)
{
  v10 = a1[3].n128_i64[0];
  adjustlocalvars(a1, 3u);
  checknext(a1, 259);
  if (a5)
  {
    v11 = luaK_codeABx(v10, 40, a2, 131070);
  }

  else
  {
    v11 = luaK_jump(v10);
  }

  v12 = v11;
  v24 = 0;
  LOBYTE(v24) = *(v10 + 58);
  v13 = *(v10 + 24);
  v14 = *(*(v10 + 16) + 88);
  v15 = *(v14 + 40);
  LODWORD(v14) = *(v14 + 24);
  v22 = v15;
  v23 = v14;
  v21 = v13;
  *(v10 + 24) = &v21;
  adjustlocalvars(a1, a4);
  luaK_reserveregs(v10, a4);
  block(a1);
  leaveblock(v10);
  luaK_patchtohere(v10, v12);
  v16 = v10;
  if (a5)
  {
    v17 = 39;
    v18 = a2;
  }

  else
  {
    luaK_codeABC(v10, 41, a2, 0, a4);
    luaK_fixline(v10, a3);
    v18 = a2 + 2;
    v16 = v10;
    v17 = 42;
  }

  v19 = luaK_codeABx(v16, v17, v18, 131070);
  luaK_patchlist(v10, v19, v12 + 1);
  return luaK_fixline(v10, a3);
}

void adjust_assign(int *result, int a2, int a3, int *a4)
{
  v4 = *(result + 6);
  v5 = a2 - a3;
  if ((*a4 - 13) >= 2)
  {
    if (*a4)
    {
      luaK_exp2nextreg(*(result + 6), a4);
    }

    if (v5 >= 1)
    {
      v7 = *(v4 + 60);
      luaK_reserveregs(v4, v5);

      luaK_nil(v4, v7, v5);
    }
  }

  else
  {
    if (v5 < 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = a2 - a3;
    }

    luaK_setreturns(*(result + 6), a4, v6 + 1);
    if (v5 >= 1)
    {

      luaK_reserveregs(v4, v6);
    }
  }
}

void assignment(__n128 *a1, uint64_t *a2, int a3)
{
  v4 = a2;
  v6 = (a2 + 1);
  if ((*(a2 + 2) - 8) >= 3)
  {
    luaX_syntaxerror(a1, "syntax error");
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a1[1].n128_u32[0] == 44)
  {
    v7 = luaX_next(a1);
    v19 = 0;
    v20 = 0;
    v17 = v4;
    v18 = 0;
    suffixedexp(a1, &v18, v7);
    v8 = v18;
    if (v18 != 10)
    {
      v9 = 0;
      v10 = a1[3].n128_i64[0];
      v11 = *(v10 + 60);
      do
      {
        while (*(v4 + 2) == 10)
        {
          if (v8 == *(v4 + 19) && v19 == *(v4 + 18))
          {
            *(v4 + 19) = 8;
            *(v4 + 18) = v11;
            v9 = 1;
          }

          if (v8 != 8 || v19 != *(v4 + 8))
          {
            break;
          }

          *(v4 + 8) = v11;
          v4 = *v4;
          v9 = 1;
          if (!v4)
          {
            goto LABEL_16;
          }
        }

        v4 = *v4;
      }

      while (v4);
      if (!v9)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (v8 == 8)
      {
        v12 = 0;
      }

      else
      {
        v12 = 5;
      }

      luaK_codeABC(v10, v12, v11, v19, 0);
      luaK_reserveregs(v10, 1);
    }

LABEL_20:
    checklimit(a1[3].n128_u64[0], *(a1[3].n128_u64[1] + 198) + a3, 200, "C levels");
    assignment(a1, &v17, a3 + 1);
  }

  else
  {
    checknext(a1, 61);
    v15 = explist(a1, &v21);
    if (a3 == v15)
    {
      luaK_setoneret(a1[3].n128_i64[0], &v21);
      v13 = a1[3].n128_i64[0];
      goto LABEL_24;
    }

    v16 = v15;
    adjust_assign(a1, a3, v15, &v21);
    if (a3 < v16)
    {
      *(a1[3].n128_u64[0] + 60) += a3 - v16;
    }
  }

  v13 = a1[3].n128_i64[0];
  v14 = *(v13 + 60) - 1;
  v23 = -1;
  LODWORD(v21) = 7;
  LODWORD(v22) = v14;
LABEL_24:
  luaK_storevar(v13, v6, &v21);
}

uint64_t luaE_setdebt(uint64_t result, uint64_t a2)
{
  *(result + 16) += *(result + 24) - a2;
  *(result + 24) = a2;
  return result;
}

uint64_t luaE_extendCI(uint64_t a1)
{
  result = luaM_realloc_(a1, 0, 0, 72);
  v3 = *(a1 + 32);
  *(v3 + 24) = result;
  *(result + 16) = v3;
  *(result + 24) = 0;
  return result;
}

uint64_t luaE_freeCI(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = *(v2 + 24);
      result = luaM_realloc_(v3, v2, 72, 0);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t luaE_shrinkCI(uint64_t result)
{
  v1 = *(result + 32);
  v3 = (v1 + 24);
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 24);
      if (!v5)
      {
        break;
      }

      result = luaM_realloc_(v4, v2, 72, 0);
      *v3 = v5;
      v3 = (v5 + 24);
      v2 = *(v5 + 24);
      *(v5 + 16) = v1;
      v1 = v5;
    }

    while (v2);
  }

  return result;
}

uint64_t lua_newthread(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(v2 + 24) >= 1)
  {
    luaC_step(a1);
  }

  v3 = luaM_realloc_(a1, 0, 8, 216);
  *(v3 + 17) = *(v2 + 84) & 3;
  *(v3 + 16) = 8;
  *(v3 + 8) = *(v2 + 88);
  v4 = v3 + 8;
  *(v2 + 88) = v3 + 8;
  v5 = *(a1 + 16);
  *v5 = v3 + 8;
  *(v5 + 8) = 72;
  *(a1 + 16) += 16;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 88) = v3 + 8;
  *(v3 + 96) = 0;
  *(v3 + 176) = 0;
  *(v3 + 208) = 256;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 204) = 1;
  *(v3 + 18) = 0;
  *(v3 + 208) = *(a1 + 200);
  LODWORD(v5) = *(a1 + 188);
  *(v3 + 176) = *(a1 + 168);
  *(v3 + 196) = v5;
  *(v3 + 200) = v5;
  cstdlib_memcpy(v3, (*(v2 + 224) - 8), 8uLL);
  stack_init(v4, a1);
  return v4;
}

uint64_t stack_init(uint64_t a1, uint64_t a2)
{
  result = luaM_realloc_(a2, 0, 0, 640);
  *(a1 + 56) = result;
  *(a1 + 184) = 40;
  for (i = 8; i != 648; i += 16)
  {
    *(result + i) = 0;
  }

  *(a1 + 96) = result;
  v5 = a1 + 96;
  *(v5 - 48) = result + 560;
  *(v5 + 66) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 - 80) = result + 16;
  *(result + 8) = 0;
  *(v5 + 8) = result + 336;
  *(v5 - 64) = v5;
  return result;
}

uint64_t luaE_freethread(uint64_t a1, uint64_t a2)
{
  v4 = a2 - 8;
  luaF_close(a2, *(a2 + 56));
  freestack(a2);

  return luaM_realloc_(a1, v4, 216, 0);
}

uint64_t freestack(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    *(result + 32) = result + 96;
    luaE_freeCI(result);
    v2 = *(v1 + 56);
    v3 = 16 * *(v1 + 184);

    return luaM_realloc_(v1, v2, v3, 0);
  }

  return result;
}

uint64_t lua_newstate(uint64_t (*a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a1(a2, 0, 8, 1744);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = 0;
    v5 = v4 + 8;
    *(v4 + 16) = 8;
    *(v4 + 300) = 1;
    *(v4 + 17) = 1;
    *(v4 + 216) = a1;
    *(v4 + 32) = v4 + 216;
    *(v4 + 40) = 0;
    *(v4 + 192) = 0;
    *(v4 + 88) = v4 + 8;
    *(v4 + 96) = 0;
    *(v4 + 176) = 0u;
    *(v4 + 208) = 256;
    *(v4 + 196) = 0;
    *(v4 + 64) = 0u;
    *(v4 + 204) = 1;
    *(v4 + 224) = a2;
    *(v4 + 440) = v4 + 8;
    v8 = 1;
    __src = (v4 + 8);
    cstdlib_memcpy(__dst, &__src, 8uLL);
    __src = &v8;
    cstdlib_memcpy(&v10, &__src, 8uLL);
    __src = &luaO_nilobject_;
    cstdlib_memcpy(&v11, &__src, 8uLL);
    __src = lua_newstate;
    cstdlib_memcpy(v12, &__src, 8uLL);
    *(v5 + 288) = luaS_hash(__dst, 0x20uLL, v8);
    *(v5 + 295) = 0;
    *(v5 + 280) = 0;
    *(v5 + 400) = 0;
    *(v5 + 424) = 0;
    *(v5 + 440) = 0;
    *(v5 + 248) = 0;
    *(v5 + 256) = 0u;
    *(v5 + 293) = 7;
    *(v5 + 296) = 0u;
    *(v5 + 312) = 0u;
    *(v5 + 328) = 0u;
    *(v5 + 344) = 0u;
    *(v5 + 360) = 0u;
    *(v5 + 376) = 0u;
    *(v5 + 224) = xmmword_26ECCEB70;
    *(v5 + 408) = 0xC800000000;
    *(v5 + 416) = 200;
    *(v5 + 712) = 0;
    *(v5 + 696) = 0u;
    *(v5 + 680) = 0u;
    *(v5 + 664) = 0u;
    *(v5 + 648) = 0u;
    if (luaD_rawrunprotected(v5, f_luaopen, 0))
    {
      close_state(v5);
      return 0;
    }
  }

  return v5;
}

void *f_luaopen(uint64_t a1)
{
  v2 = *(a1 + 24);
  stack_init(a1, a1);
  v5.n128_u64[1] = 72;
  v3 = luaH_new(a1);
  *(v2 + 64) = v3;
  *(v2 + 72) = 69;
  luaH_resize(a1, v3, 2u, 0);
  v5.n128_u64[0] = a1;
  luaH_setint(a1, v3, 1, &v5);
  v5.n128_u64[0] = luaH_new(a1);
  v5.n128_u32[2] = 69;
  luaH_setint(a1, v3, 2, &v5);
  luaS_init(a1);
  luaT_init(a1);
  luaX_init(a1);
  *(v2 + 87) = 1;
  result = lua_version(0);
  *(v2 + 232) = result;
  return result;
}

uint64_t close_state(uint64_t a1)
{
  v2 = *(a1 + 24);
  luaF_close(a1, *(a1 + 56));
  luaC_freeallobjects(a1);
  luaM_realloc_(a1, *(*(a1 + 24) + 48), 8 * *(*(a1 + 24) + 60), 0);
  *(v2 + 176) = luaM_realloc_(a1, *(v2 + 176), *(v2 + 192), 0);
  *(v2 + 192) = 0;
  freestack(a1);
  v4 = *v2;
  v3 = *(v2 + 8);

  return v4(v3, a1 - 8, 1744, 0);
}

BOOL luaS_eqlngstr(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  return v2 == *(a2 + 16) && cstdlib_memcmp((a1 + 24), (a2 + 24), v2) == 0;
}

uint64_t luaS_hash(uint64_t a1, unint64_t a2, int a3)
{
  result = a2 ^ a3;
  if (a2)
  {
    v5 = a2 >> 5;
    v6 = ~(a2 >> 5);
    v7 = a1 - 1;
    do
    {
      result = (32 * result + (result >> 2) + *(v7 + a2)) ^ result;
      a2 += v6;
    }

    while (a2 > v5);
  }

  return result;
}

uint64_t luaS_resize(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 24);
  v5 = *(v4 + 60);
  v6 = v5;
  if (v5 < a2)
  {
    result = luaM_realloc_(result, *(v4 + 48), 8 * v5, 8 * a2);
    *(v4 + 48) = result;
    v6 = *(v4 + 60);
    if (v6 < a2)
    {
      v7 = v6;
      do
      {
        *(*(v4 + 48) + 8 * v7++) = 0;
      }

      while (a2 != v7);
    }
  }

  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v9 = *(v4 + 48);
      v10 = *(v9 + 8 * i);
      *(v9 + 8 * i) = 0;
      if (v10)
      {
        do
        {
          v11 = *(v10 + 12) & (a2 - 1);
          v12 = *(v10 + 16);
          *(v10 + 16) = *(*(v4 + 48) + 8 * v11);
          *(*(v4 + 48) + 8 * v11) = v10;
          v10 = v12;
        }

        while (v12);
        v6 = *(v4 + 60);
      }
    }
  }

  if (v6 > a2)
  {
    result = luaM_realloc_(v3, *(v4 + 48), 8 * v6, 8 * a2);
    *(v4 + 48) = result;
  }

  *(v4 + 60) = a2;
  return result;
}

uint64_t luaS_clearcache(uint64_t result)
{
  v1 = 0;
  v2 = result + 512;
  do
  {
    if ((*(*(v2 + v1) + 9) & 3) != 0)
    {
      *(v2 + v1) = *(result + 240);
    }

    v1 += 8;
  }

  while (v1 != 1016);
  return result;
}

int64x2_t luaS_init(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = 128;
  luaS_resize(a1, 128);
  v4 = luaS_newlstr(a1, "not enough memory", 0x11uLL);
  *(v2 + 240) = v4;
  luaC_fix(a1, v4);
  v5 = *(v2 + 240);
  result = xmmword_26ECC7980;
  v7 = (v2 + 520);
  v8 = vdupq_n_s64(0x7FuLL);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v8, result)).u8[0])
    {
      *(v7 - 1) = v5;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7FuLL), *&result)).i32[1])
    {
      *v7 = v5;
    }

    result = vaddq_s64(result, v9);
    v7 += 2;
    v3 -= 2;
  }

  while (v3);
  return result;
}

uint64_t luaS_newlstr(uint64_t a1, char *__s1, size_t __n)
{
  if (__n > 0x28)
  {
    if (__n - 0x7FFFFFFFFFFFFFE7 < 0x8000000000000018)
    {
      luaM_toobig(a1);
    }

    v13 = *(*(a1 + 24) + 80);
    v11 = luaC_newobj(a1, 20, __n + 25);
    *(v11 + 12) = v13;
    *(v11 + 10) = 0;
    cstdlib_memcpy((v11 + 24), __s1, __n);
    *(v11 + 24 + __n) = 0;
    *(v11 + 16) = __n;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = *(v6 + 80) ^ __n;
    if (__n)
    {
      v8 = __n;
      do
      {
        v7 ^= 32 * v7 + (v7 >> 2) + __s1[v8 - 1];
        v8 += ~(__n >> 5);
      }

      while (v8 > __n >> 5);
    }

    v9 = *(v6 + 60);
    v10 = (*(v6 + 48) + 8 * ((v9 - 1) & v7));
    v11 = *v10;
    if (*v10)
    {
      while (*(v11 + 11) != __n || cstdlib_memcmp(__s1, (v11 + 24), __n))
      {
        v11 = *(v11 + 16);
        if (!v11)
        {
          v9 = *(v6 + 60);
          goto LABEL_10;
        }
      }

      v15 = *(v11 + 9) ^ 3;
      if (((*(v6 + 84) ^ 3) & v15) == 0)
      {
        *(v11 + 9) = v15;
      }
    }

    else
    {
LABEL_10:
      if (v9 <= 0x3FFFFFFF && *(v6 + 56) >= v9)
      {
        luaS_resize(a1, 2 * v9);
        v10 = (*(v6 + 48) + 8 * ((*(v6 + 60) - 1) & v7));
      }

      v11 = luaC_newobj(a1, 4, __n + 25);
      *(v11 + 12) = v7;
      *(v11 + 10) = 0;
      cstdlib_memcpy((v11 + 24), __s1, __n);
      *(v11 + 24 + __n) = 0;
      *(v11 + 11) = __n;
      *(v11 + 16) = *v10;
      *v10 = v11;
      ++*(v6 + 56);
    }
  }

  return v11;
}

uint64_t luaS_remove(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = (*(v2 + 48) + 8 * ((*(v2 + 60) - 1) & *(a2 + 12)));
  do
  {
    v4 = v3;
    v5 = *v3;
    v3 = (*v3 + 16);
  }

  while (v5 != a2);
  *v4 = *v3;
  --*(v2 + 56);
  return result;
}

uint64_t luaS_new(uint64_t a1, char *__s1)
{
  v4 = __s1 % 0x7F;
  v5 = *(a1 + 24) + 512;
  if (!cstdlib_strcmp(__s1, (*(v5 + 8 * (__s1 % 0x7F)) + 24)))
  {
    return *(v5 + 8 * v4);
  }

  v6 = cstdlib_strlen(__s1);
  result = luaS_newlstr(a1, __s1, v6);
  *(v5 + 8 * v4) = result;
  return result;
}

uint64_t luaS_newudata(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFD8)
  {
    luaM_toobig(a1);
  }

  result = luaC_newobj(a1, 7, a2 + 40);
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 10) = 0;
  return result;
}

uint64_t luaopen_string(uint64_t *a1)
{
  luaL_checkversion_(a1, 136, 503.0);
  lua_createtable(a1, 0, 17);
  luaL_setfuncs(a1, &strlib, 0);
  lua_createtable(a1, 0, 1);
  lua_pushstring(a1, "");
  lua_pushvalue(a1, 0xFFFFFFFE);
  lua_setmetatable(a1, 0xFFFFFFFE);
  lua_settop(a1, -2);
  lua_pushvalue(a1, 0xFFFFFFFE);
  lua_setfield(a1, 0xFFFFFFFE, "__index");
  lua_settop(a1, -2);
  return 1;
}

uint64_t str_byte(void *a1)
{
  v16 = 0;
  v2 = luaL_checklstring(a1, 1, &v16);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v16 >= -v3)
  {
    v4 = v3 + v16 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, v5);
  if (v16 >= -v6)
  {
    v7 = v6 + v16 + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 0)
  {
    v7 = v6;
  }

  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= v16)
  {
    v9 = v16;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 - v8;
  if (v9 < v8)
  {
    return 0;
  }

  if (v10 >= 0x7FFFFFFF)
  {
    return luaL_error(a1, "string slice too long");
  }

  v11 = (v10 + 1);
  luaL_checkstack(a1, v10 + 1, "string slice too long");
  if ((v10 & 0x80000000) == 0)
  {
    v12 = (v2 + v8 - 1);
    v13 = (v9 - v8 + 1);
    do
    {
      v14 = *v12++;
      lua_pushinteger(a1, v14);
      --v13;
    }

    while (v13);
  }

  return v11;
}

uint64_t str_char(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = lua_gettop(a1);
  v3 = v2;
  memset(v11, 0, 512);
  v4 = luaL_buffinitsize(a1, v11, v2);
  if (v2 >= 1)
  {
    v5 = v4;
    v6 = (v2 + 1) - 1;
    v7 = 1;
    do
    {
      v8 = luaL_checkinteger(a1, v7);
      v9 = v8;
      if (v8 >= 0x100)
      {
        luaL_argerror(a1, v7);
      }

      *v5++ = v9;
      v7 = (v7 + 1);
      --v6;
    }

    while (v6);
  }

  luaL_pushresultsize(v11, v3);
  return 1;
}

uint64_t str_dump(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = lua_toBOOLean(a1, 2u);
  luaL_checktype(a1, 1, 6);
  lua_settop(a1, 1);
  luaL_buffinit(a1, &v4);
  if (lua_dump(a1, writer, &v4, v2))
  {
    return luaL_error(a1, "unable to dump given function", v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  }

  luaL_pushresult(&v4);
  return 1;
}

uint64_t str_format(void *a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v2 = lua_gettop(a1);
  v59 = 0;
  v3 = luaL_checklstring(a1, 1, &v59);
  v4 = v59;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  luaL_buffinit(a1, &v63);
  if (v4 < 1)
  {
    goto LABEL_84;
  }

  v5 = &v3[v4];
  v6 = 1;
  while (1)
  {
    v7 = *v3;
    if (v7 != 37)
    {
      v11 = v64;
      if (v64 >= *(&v63 + 1))
      {
        luaL_prepbuffsize(&v63, 1uLL);
        LOBYTE(v7) = *v3;
        v11 = v64;
      }

      ++v3;
      *&v64 = v11 + 1;
      *(v63 + v11) = v7;
      goto LABEL_39;
    }

    v8 = (v3 + 1);
    if (v3[1] == 37)
    {
      v9 = v64;
      if (v64 >= *(&v63 + 1))
      {
        luaL_prepbuffsize(&v63, 1uLL);
        v10 = *v8;
        v9 = v64;
      }

      else
      {
        v10 = 37;
      }

      v3 += 2;
      *&v64 = v9 + 1;
      *(v63 + v9) = v10;
LABEL_39:
      v13 = v6;
      goto LABEL_47;
    }

    v12 = luaL_prepbuffsize(&v63, 0x1ACuLL);
    v13 = (v6 + 1);
    if (v6 >= v2)
    {
      luaL_argerror(a1, v6 + 1);
    }

    v14 = *v8;
    v15 = v3 + 1;
    if (*v8)
    {
      v15 = v8;
      do
      {
        if (!cstdlib_strchr("-+ #0", v14))
        {
          break;
        }

        v16 = *++v15;
        v14 = v16;
      }

      while (v16);
    }

    if ((v15 - v8) >= 6)
    {
      luaL_error(a1, "invalid format (repeated flags)");
    }

    if (cstdlib_isdigit(*v15))
    {
      ++v15;
    }

    if (cstdlib_isdigit(*v15))
    {
      ++v15;
    }

    v17 = *v15;
    if (v17 == 46)
    {
      v18 = v15 + 1;
      v19 = cstdlib_isdigit(v15[1]);
      v20 = 1;
      if (v19)
      {
        v20 = 2;
        v18 = v15 + 2;
      }

      if (cstdlib_isdigit(v15[v20]))
      {
        v15 = v18 + 1;
      }

      else
      {
        v15 = v18;
      }

      LOBYTE(v17) = *v15;
    }

    if (cstdlib_isdigit(v17))
    {
      luaL_error(a1, "invalid format (width or precision too long)");
    }

    __s = 37;
    cstdlib_memcpy(v62, v8, v15 - v8 + 1);
    v62[v15 - v8 + 1] = 0;
    v22 = *v15;
    v3 = v15 + 1;
    v21 = v22;
    if (v22 <= 104)
    {
      break;
    }

    if ((v21 - 105) > 0xF)
    {
      return luaL_error(a1, "invalid option '%%%c' to 'format'", v21);
    }

    if (((1 << (v21 - 105)) & 0x9041) != 0)
    {
      goto LABEL_42;
    }

    if (v21 != 113)
    {
      if (v21 == 115)
      {
        *v95 = 0;
        v34 = luaL_tolstring(a1, v13, v95);
        if (cstdlib_strchr(&__s, 46) || *v95 < 0x64uLL)
        {
          v33 = luaI_snprintf(a1, v12, 428, &__s, v35, v36, v37, v38, v34);
          lua_settop(a1, -2);
        }

        else
        {
          luaL_addvalue(&v63);
          v33 = 0;
        }

        goto LABEL_46;
      }

      return luaL_error(a1, "invalid option '%%%c' to 'format'", v21);
    }

    v60 = 0;
    v39 = luaL_checklstring(a1, v13, &v60);
    v40 = v64;
    if (v64 >= *(&v63 + 1))
    {
      luaL_prepbuffsize(&v63, 1uLL);
      v40 = v64;
    }

    *&v64 = v40 + 1;
    *(v63 + v40) = 34;
    while (v60--)
    {
      v42 = *v39;
      if (v42 > 0x21)
      {
        if (v42 == 92 || v42 == 34)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (!*v39)
        {
          goto LABEL_74;
        }

        if (v42 == 10)
        {
LABEL_67:
          v43 = v64;
          if (v64 >= *(&v63 + 1))
          {
            luaL_prepbuffsize(&v63, 1uLL);
            v43 = v64;
          }

          *&v64 = v43 + 1;
          *(v63 + v43) = 92;
          goto LABEL_70;
        }
      }

      if (cstdlib_iscntrl(v42))
      {
LABEL_74:
        if (cstdlib_isdigit(v39[1]))
        {
          v50 = "\\%03d";
        }

        else
        {
          v50 = "\\%d";
        }

        luaI_snprintf(a1, v95, 10, v50, v46, v47, v48, v49, *v39);
        luaL_addstring(&v63, v95);
        goto LABEL_78;
      }

LABEL_70:
      v44 = v64;
      if (v64 >= *(&v63 + 1))
      {
        luaL_prepbuffsize(&v63, 1uLL);
        v44 = v64;
      }

      v45 = *v39;
      *&v64 = v44 + 1;
      *(v63 + v44) = v45;
LABEL_78:
      ++v39;
    }

    v51 = v64;
    if (v64 >= *(&v63 + 1))
    {
      luaL_prepbuffsize(&v63, 1uLL);
      v51 = v64;
    }

    v33 = 0;
    *&v64 = v51 + 1;
    *(v63 + v51) = 34;
LABEL_46:
    *&v64 = v64 + v33;
LABEL_47:
    v6 = v13;
    if (v3 >= v5)
    {
LABEL_84:
      luaL_pushresult(&v63);
      return 1;
    }
  }

  if (v21 > 98)
  {
    if ((v21 - 101) >= 3)
    {
      if (v21 == 99)
      {
        v58 = luaL_checkinteger(a1, v13);
        v28 = luaI_snprintf(a1, v12, 428, &__s, v52, v53, v54, v55, v58);
        goto LABEL_45;
      }

      if (v21 != 100)
      {
        return luaL_error(a1, "invalid option '%%%c' to 'format'", v21);
      }

      goto LABEL_42;
    }

LABEL_44:
    addlenmod(&__s);
    v57 = luaL_checknumber(a1, v13);
    v28 = luaI_snprintf(a1, v12, 428, &__s, v29, v30, v31, v32, v57);
    goto LABEL_45;
  }

  if (v21 == 69 || v21 == 71)
  {
    goto LABEL_44;
  }

  if (v21 == 88)
  {
LABEL_42:
    v23 = luaL_checkinteger(a1, v13);
    addlenmod(&__s);
    v28 = luaI_snprintf(a1, v12, 428, &__s, v24, v25, v26, v27, v23);
LABEL_45:
    v33 = v28;
    goto LABEL_46;
  }

  return luaL_error(a1, "invalid option '%%%c' to 'format'", v21);
}

uint64_t gmatch(void *a1)
{
  luaL_checklstring(a1, 1, 0);
  luaL_checklstring(a1, 2, 0);
  lua_settop(a1, 2);
  lua_pushinteger(a1, 0);
  lua_pushcclosure(a1, gmatch_aux, 3);
  return 1;
}

uint64_t str_gsub(void *a1)
{
  v97 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v62 = 0;
  v2 = luaL_checklstring(a1, 1, &v63);
  v3 = luaL_checklstring(a1, 2, &v62);
  v4 = lua_type(a1, 3u);
  v5 = luaL_optinteger(a1, 4, v63 + 1);
  v6 = *v3;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if ((v4 - 3) >= 4)
  {
    luaL_argerror(a1, 3);
  }

  luaL_buffinit(a1, &v65);
  v7 = v62;
  if (v6 == 94)
  {
    ++v3;
    v7 = --v62;
  }

  v8 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v29[0] = 200;
  v29[1] = v2;
  v30 = &v2[v63];
  v31 = &v3[v7];
  v32 = a1;
  v27 = a1;
  v28 = v5;
  while (v8 < v5)
  {
    DWORD2(v32) = 0;
    v9 = match(v29, v2, v3);
    if (v9)
    {
      v10 = v9;
      v11 = v32;
      if (v4 == 5)
      {
        push_onecapture(v29, 0, v2, v9);
        lua_gettable(v11, 3u);
LABEL_12:
        if (lua_toBOOLean(v11, 0xFFFFFFFF))
        {
          if (!lua_isstring(v11, 0xFFFFFFFF))
          {
            v13 = lua_type(v11, 0xFFFFFFFF);
            v14 = lua_typename(v11, v13);
            luaL_error(v11, "invalid replacement value (a %s)", v14);
          }
        }

        else
        {
          lua_settop(v11, -2);
          lua_pushlstring(v11, v2, v10 - v2);
        }

        luaL_addvalue(&v65);
      }

      else
      {
        if (v4 == 6)
        {
          lua_pushvalue(v32, 3u);
          v12 = push_captures(v29, v2, v10);
          lua_callk(v11, v12, 1, 0, 0);
          goto LABEL_12;
        }

        v64 = 0;
        v15 = lua_tolstring(v32, 3u, &v64);
        if (v64)
        {
          v16 = v15;
          for (i = 0; i < v64; ++i)
          {
            v18 = *(v16 + i);
            if (v18 == 37)
            {
              ++i;
              v19 = cstdlib_isdigit(*(v16 + i));
              v20 = *(v16 + i);
              if (v19)
              {
                if (v20 == 48)
                {
                  luaL_addlstring(&v65, v2, v10 - v2);
                }

                else
                {
                  push_onecapture(v29, v20 - 49, v2, v10);
                  luaL_tolstring(v11, 0xFFFFFFFFLL, 0);
                  lua_rotate(v11, 4294967294, 0xFFFFFFFF);
                  lua_settop(v11, -2);
                  luaL_addvalue(&v65);
                }
              }

              else
              {
                if (v20 != 37)
                {
                  luaL_error(v11, "invalid use of '%c' in replacement string", 37);
                }

                v22 = v66;
                if (v66 >= *(&v65 + 1))
                {
                  luaL_prepbuffsize(&v65, 1uLL);
                  v22 = v66;
                }

                v23 = *(v16 + i);
                *&v66 = v22 + 1;
                *(v65 + v22) = v23;
              }
            }

            else
            {
              v21 = v66;
              if (v66 >= *(&v65 + 1))
              {
                luaL_prepbuffsize(&v65, 1uLL);
                LOBYTE(v18) = *(v16 + i);
                v21 = v66;
              }

              *&v66 = v21 + 1;
              *(v65 + v21) = v18;
            }
          }
        }

        v5 = v28;
      }

      ++v8;
      if (v10 > v2)
      {
        goto LABEL_39;
      }
    }

    if (v2 >= v30)
    {
      break;
    }

    v24 = v66;
    if (v66 >= *(&v65 + 1))
    {
      luaL_prepbuffsize(&v65, 1uLL);
      v24 = v66;
    }

    v25 = *v2;
    *&v66 = v24 + 1;
    *(v65 + v24) = v25;
    v10 = v2 + 1;
LABEL_39:
    v2 = v10;
    if (v6 == 94)
    {
      goto LABEL_42;
    }
  }

  v10 = v2;
LABEL_42:
  luaL_addlstring(&v65, v10, v30 - v10);
  luaL_pushresult(&v65);
  lua_pushinteger(v27, v8);
  return 2;
}

uint64_t str_len(void *a1)
{
  v3 = 0;
  luaL_checklstring(a1, 1, &v3);
  lua_pushinteger(a1, v3);
  return 1;
}

uint64_t str_lower(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v9, 0, 512);
  v2 = luaL_checklstring(a1, 1, &v8);
  v3 = luaL_buffinitsize(a1, v9, v8);
  if (v8)
  {
    v4 = v3;
    for (i = 0; i < v8; ++i)
    {
      v4[i] = cstdlib_tolower(*(v2 + i));
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  luaL_pushresultsize(v9, v6);
  return 1;
}

uint64_t str_rep(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = luaL_checklstring(a1, 1, &__n);
  v3 = luaL_checkinteger(a1, 2);
  v4 = luaL_optlstring(a1, 3, "", &v10);
  if (v3 <= 0)
  {
    lua_pushstring(a1, "");
  }

  else
  {
    if (__CFADD__(v10, __n) || v10 + __n > 0x7FFFFFFFuLL / v3)
    {
      return luaL_error(a1, "resulting string too large");
    }

    v6 = v4;
    v7 = __n * v3 + v10 * (v3 - 1);
    memset(v12, 0, 512);
    v8 = luaL_buffinitsize(a1, v12, v7);
    if (v3 != 1)
    {
      v9 = v3 + 1;
      do
      {
        cstdlib_memcpy(v8, v2, __n);
        v8 += __n;
        if (v10)
        {
          cstdlib_memcpy(v8, v6, v10);
          v8 += v10;
        }

        --v9;
      }

      while (v9 > 2);
    }

    cstdlib_memcpy(v8, v2, __n);
    luaL_pushresultsize(v12, v7);
  }

  return 1;
}

uint64_t str_reverse(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v9, 0, 512);
  v2 = luaL_checklstring(a1, 1, &v8);
  v3 = luaL_buffinitsize(a1, v9, v8);
  v4 = v8;
  if (v8)
  {
    v5 = 0;
    v6 = v2 - 1;
    do
    {
      v3[v5++] = *(v6 + v4);
      v4 = v8;
      --v6;
    }

    while (v5 < v8);
  }

  luaL_pushresultsize(v9, v4);
  return 1;
}

uint64_t str_sub(void *a1)
{
  v14 = 0;
  v2 = luaL_checklstring(a1, 1, &v14);
  v3 = luaL_checkinteger(a1, 2);
  if (v14 >= -v3)
  {
    v4 = v3 + v14 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, -1);
  v7 = v14;
  if (v14 >= -v6)
  {
    v8 = v6 + v14 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v5 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5;
  }

  if (v9 < v14)
  {
    v7 = v9;
  }

  v11 = v7 < v10;
  v12 = v7 - v10;
  if (v11)
  {
    lua_pushstring(a1, "");
  }

  else
  {
    lua_pushlstring(a1, (v2 + v10 - 1), v12 + 1);
  }

  return 1;
}

uint64_t str_upper(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v9, 0, 512);
  v2 = luaL_checklstring(a1, 1, &v8);
  v3 = luaL_buffinitsize(a1, v9, v8);
  if (v8)
  {
    v4 = v3;
    for (i = 0; i < v8; ++i)
    {
      v4[i] = cstdlib_toupper(*(v2 + i));
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  luaL_pushresultsize(v9, v6);
  return 1;
}

uint64_t str_pack(void *a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = luaL_checklstring(a1, 1, 0);
  v40 = a1;
  v41 = 0x100000001;
  lua_pushnil(a1);
  luaL_buffinit(a1, &v44);
  if (*v39)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v38 = 0;
      v4 = getdetails(&v40, v2, &v39, &v38 + 1, &v38);
      v5 = v38;
      v6 = HIDWORD(v38);
      if (v38 >= 1)
      {
        v7 = v38 + 1;
        do
        {
          v8 = v45;
          if (v45 >= *(&v44 + 1))
          {
            luaL_prepbuffsize(&v44, 1uLL);
            v8 = v45;
          }

          *&v45 = v8 + 1;
          *(v44 + v8) = 0;
          --v7;
        }

        while (v7 > 1);
      }

      v2 += v6 + v5;
      v9 = (v3 + 1);
      if (v4 > 4)
      {
        if ((v4 - 7) >= 2)
        {
          if (v4 == 5)
          {
            *&v42[0] = 0;
            v12 = luaL_checklstring(a1, (v3 + 1), v42);
            v13 = cstdlib_strlen(v12);
            if (v13 != *&v42[0])
            {
              luaL_argerror(a1, v3 + 1);
              v13 = *&v42[0];
            }

            luaL_addlstring(&v44, v12, v13);
            v14 = v45;
            if (v45 >= *(&v44 + 1))
            {
              luaL_prepbuffsize(&v44, 1uLL);
              v14 = v45;
            }

            *&v45 = v14 + 1;
            *(v44 + v14) = 0;
            v2 += *&v42[0] + 1;
            goto LABEL_55;
          }

          v27 = v45;
          if (v45 >= *(&v44 + 1))
          {
            luaL_prepbuffsize(&v44, 1uLL);
            v27 = v45;
          }

          *&v45 = v27 + 1;
          *(v44 + v27) = 0;
        }

        v9 = v3;
      }

      else if (v4 <= 1)
      {
        v15 = (v3 + 1);
        if (v4)
        {
          v30 = luaL_checkinteger(a1, v15);
          v31 = v30;
          if (v6 <= 7 && v30 >> (8 * v6))
          {
            luaL_argerror(a1, v3 + 1);
          }

          v20 = v41;
          v22 = v31;
          v23 = v6;
          LODWORD(v21) = 0;
        }

        else
        {
          v16 = luaL_checkinteger(a1, v15);
          v17 = v16;
          if (v6 <= 7)
          {
            v18 = 1 << (8 * v6 - 1);
            if (v16 < -v18 || v16 >= v18)
            {
              luaL_argerror(a1, v3 + 1);
            }
          }

          v20 = v41;
          v21 = v17 >> 63;
          v22 = v17;
          v23 = v6;
        }

        packint(&v44, v22, v20, v23, v21);
      }

      else
      {
        v10 = v6;
        if (v4 == 2)
        {
          v43 = 0;
          memset(v42, 0, sizeof(v42));
          v24 = luaL_prepbuffsize(&v44, v6);
          v25 = luaL_checknumber(a1, v9);
          if (v6 == 4)
          {
            v26 = v25;
            *v42 = v26;
          }

          else
          {
            *v42 = v25;
          }

          if (v41 == 1)
          {
            if (v6)
            {
              v32 = v42;
              do
              {
                v33 = *v32++;
                *v24++ = v33;
                --v6;
              }

              while (v6);
            }
          }

          else if (v6)
          {
            v34 = &v24[v6 - 1];
            v35 = v42;
            do
            {
              v36 = *v35++;
              *v34-- = v36;
              --v6;
            }

            while (v6);
          }

          *&v45 = v45 + v10;
        }

        else if (v4 == 3)
        {
          *&v42[0] = 0;
          v11 = luaL_checklstring(a1, v9, v42);
          if (*&v42[0] != v6)
          {
            luaL_argerror(a1, v9);
          }

          luaL_addlstring(&v44, v11, v6);
        }

        else
        {
          *&v42[0] = 0;
          v28 = luaL_checklstring(a1, v9, v42);
          v29 = *&v42[0];
          if (v6 <= 7 && *&v42[0] >> (8 * v6))
          {
            luaL_argerror(a1, v9);
            v29 = *&v42[0];
          }

          packint(&v44, v29, v41, v6, 0);
          luaL_addlstring(&v44, v28, *&v42[0]);
          v2 += *&v42[0];
        }
      }

LABEL_55:
      v3 = v9;
    }

    while (*v39);
  }

  luaL_pushresult(&v44);
  return 1;
}

uint64_t str_packsize(void *a1)
{
  v7 = luaL_checklstring(a1, 1, 0);
  v8[0] = a1;
  v8[1] = 0x100000001;
  if (*v7)
  {
    v2 = 0;
    do
    {
      v6 = 0;
      v3 = getdetails(v8, v2, &v7, &v6 + 1, &v6);
      v4 = SHIDWORD(v6) + v6;
      if (v2 > 0x7FFFFFFF - v4)
      {
        luaL_argerror(a1, 1);
      }

      if ((v3 & 0xE) == 4)
      {
        luaL_argerror(a1, 1);
      }

      v2 += v4;
    }

    while (*v7);
  }

  else
  {
    v2 = 0;
  }

  lua_pushinteger(a1, v2);
  return 1;
}

uint64_t str_unpack(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = luaL_checklstring(a1, 1, 0);
  v31 = 0;
  v32 = v2;
  v3 = luaL_checklstring(a1, 2, &v31);
  v4 = luaL_optinteger(a1, 3, 1);
  if (v31 >= -v4)
  {
    v5 = v4 + v31 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 < 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 - 1;
  if (v6 - 1 > v31)
  {
    luaL_argerror(a1, 3);
  }

  v33 = a1;
  v34 = 0x100000001;
  if (!*v2)
  {
    v28 = 1;
    goto LABEL_42;
  }

  v8 = 0;
  do
  {
    v30 = 0;
    v9 = getdetails(&v33, v7, &v32, &v30 + 1, &v30);
    v10 = HIDWORD(v30);
    v11 = SHIDWORD(v30);
    v12 = v7 + v30;
    if (__CFADD__(v7, v30 + SHIDWORD(v30)) || v12 + SHIDWORD(v30) > v31)
    {
      luaL_argerror(a1, 2);
    }

    luaL_checkstack(a1, 2, "too many results");
    if (v9 > 3)
    {
      if ((v9 - 6) < 3)
      {
        goto LABEL_39;
      }

      if (v9 != 4)
      {
        v23 = cstdlib_strlen((v3 + v12));
        lua_pushlstring(a1, (v3 + v12), v23);
        v12 += v23 + 1;
        goto LABEL_38;
      }

      v14 = v3 + v12;
      v15 = unpackint(a1, v3 + v12, v34, v10, 0);
      v12 += v15;
      if (v12 + v11 > v31)
      {
        luaL_argerror(a1, 2);
      }

      v16 = (v14 + v11);
      v17 = a1;
      v18 = v15;
      goto LABEL_29;
    }

    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        v16 = (v3 + v12);
        v17 = a1;
        v18 = v11;
LABEL_29:
        lua_pushlstring(v17, v16, v18);
        goto LABEL_38;
      }

      v36 = 0;
      memset(v35, 0, sizeof(v35));
      v19 = (v3 + v12);
      if (v34 == 1)
      {
        if (!v10)
        {
          goto LABEL_36;
        }

        v20 = v35;
        v21 = v10;
        do
        {
          v22 = *v19++;
          *v20++ = v22;
          --v21;
        }

        while (v21);
      }

      else
      {
        if (!v10)
        {
          goto LABEL_36;
        }

        v24 = &v34 + v11 + 7;
        v25 = v10;
        do
        {
          v26 = *v19++;
          *v24-- = v26;
          --v25;
        }

        while (v25);
      }

      if (v10 == 4)
      {
        v27 = *v35;
LABEL_37:
        lua_pushnumber(a1, v27);
        goto LABEL_38;
      }

LABEL_36:
      v27 = *v35;
      goto LABEL_37;
    }

    v13 = unpackint(a1, v3 + v12, v34, v10, v9 == 0);
    lua_pushinteger(a1, v13);
LABEL_38:
    ++v8;
LABEL_39:
    v7 = v12 + v11;
  }

  while (*v32);
  v6 = v7 + 1;
  v28 = (v8 + 1);
LABEL_42:
  lua_pushinteger(a1, v6);
  return v28;
}

uint64_t str_find_aux(void *a1, int a2)
{
  v58 = 0;
  v59 = 0;
  v4 = luaL_checklstring(a1, 1, &v59);
  v5 = luaL_checklstring(a1, 2, &v58);
  v6 = luaL_optinteger(a1, 3, 1);
  v7 = v6;
  if (v6 < 0)
  {
    if (v59 < -v6)
    {
      goto LABEL_8;
    }

    v7 = v59 + v6 + 1;
  }

  if (v7 < 1)
  {
LABEL_8:
    v7 = 1;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  if (v7 > (v59 + 1))
  {
    goto LABEL_27;
  }

  if (a2)
  {
LABEL_9:
    if (!lua_toBOOLean(a1, 4u))
    {
      v8 = 0;
      v9 = v58;
      while (!cstdlib_strpbrk(&v5[v8], "^$*+?.([%-"))
      {
        v8 += cstdlib_strlen(&v5[v8]) + 1;
        if (v8 > v9)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_20;
    }

LABEL_13:
    v10 = (v4 + v7 - 1);
    if (!v58)
    {
LABEL_32:
      v25 = &v10[-v4];
      lua_pushinteger(a1, (v25 + 1));
      lua_pushinteger(a1, &v25[v58]);
      return 2;
    }

    v11 = v59 - v7 + 1;
    if (v58 <= v11)
    {
      v12 = v58 - 1;
      v13 = v11 - (v58 - 1);
      if (v11 != v58 - 1)
      {
        do
        {
          v14 = cstdlib_memchr(v10, *v5, v13);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          v16 = v14 + 1;
          if (!cstdlib_memcmp(v14 + 1, v5 + 1, v12))
          {
            v10 = v15;
            goto LABEL_32;
          }

          v17 = &v10[v13];
          v10 = v16;
          v13 = v17 - v16;
        }

        while (v17 != v16);
      }
    }

LABEL_27:
    lua_pushnil(a1);
    return 1;
  }

LABEL_20:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = (v4 + v7 - 1);
  v19 = *v5;
  v20 = v58;
  if (v19 == 94)
  {
    ++v5;
    v20 = --v58;
  }

  LODWORD(v26) = 200;
  *(&v26 + 1) = v4;
  *&v27 = v4 + v59;
  *(&v27 + 1) = &v5[v20];
  *&v28 = a1;
  while (1)
  {
    DWORD2(v28) = 0;
    v21 = match(&v26, v18, v5);
    if (v21)
    {
      break;
    }

    if (v19 != 94)
    {
      ++v7;
      if (v18++ < v27)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v24 = v21;
  if (!a2)
  {
    return push_captures(&v26, v18, v21);
  }

  lua_pushinteger(a1, v7);
  lua_pushinteger(a1, &v24[-v4]);
  return push_captures(&v26, 0, 0) + 2;
}

unsigned __int8 *match(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!(*a1)--)
  {
    luaL_error(*(a1 + 32), "pattern too complex");
  }

  v7 = a1 + 48;
LABEL_4:
  v8 = a3;
  while (1)
  {
    v9 = *(a1 + 24);
    if (v8 == v9)
    {
      result = a2;
      goto LABEL_87;
    }

    v10 = *v8;
    if (v10 <= 0x24)
    {
      if (v10 == 36 && v8 + 1 == v9)
      {
        if (a2 == *(a1 + 16))
        {
          result = a2;
        }

        else
        {
          result = 0;
        }

        goto LABEL_87;
      }

      goto LABEL_20;
    }

    if (v10 != 37)
    {
      break;
    }

    v11 = v8[1];
    if (v11 == 102)
    {
      v17 = v8[2];
      v16 = v8 + 2;
      if (v17 != 91)
      {
        luaL_error(*(a1 + 32), "missing '[' after '%%f' in pattern");
      }

      v18 = classend(a1, v16);
      if (a2 == *(a1 + 8))
      {
        v19 = 0;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (matchbracketclass(v19, v16, (v18 - 1)))
      {
        goto LABEL_72;
      }

      v20 = matchbracketclass(*a2, v16, (v18 - 1));
      v8 = v18;
      if (!v20)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v11 - 48 < 0xA)
      {
        v21 = v11 - 49;
        if (v11 < 0x31 || v21 >= *(a1 + 40) || *(v7 + 16 * v21 + 8) == -1)
        {
          v21 = luaL_error(*(a1 + 32), "invalid capture index %%%d", v11 - 48);
        }

        v22 = v7 + 16 * v21;
        v23 = *(v22 + 8);
        if (*(a1 + 16) - a2 >= v23 && !cstdlib_memcmp(*v22, a2, *(v22 + 8)) && a2 != 0)
        {
          a2 += v23;
          a3 = v8 + 2;
          goto LABEL_4;
        }

        goto LABEL_72;
      }

      if (v11 == 98)
      {
        if (v9 - 1 <= v8 + 2)
        {
          luaL_error(*(a1 + 32), "malformed pattern (missing arguments to '%%b')");
        }

        v25 = *a2;
        if (v25 == v8[2])
        {
          v26 = *(a1 + 16);
          v27 = a2 + 1;
          if ((a2 + 1) < v26)
          {
            v28 = 1;
            while (1)
            {
              v29 = *v27;
              if (v29 == v8[3])
              {
                if (!--v28)
                {
                  a2 = v27 + 1;
                  a3 = v8 + 4;
                  goto LABEL_4;
                }
              }

              else if (v29 == v25)
              {
                ++v28;
              }

              result = 0;
              if (++v27 == v26)
              {
                goto LABEL_87;
              }
            }
          }
        }

        goto LABEL_72;
      }

LABEL_20:
      a3 = classend(a1, v8);
      v13 = singlematch(a1, a2, v8, a3);
      v14 = *a3;
      if (v13)
      {
        if (v14 != 63)
        {
          if (v14 != 42)
          {
            if (v14 != 43)
            {
              if (v14 != 45)
              {
                ++a2;
                goto LABEL_4;
              }

              while (1)
              {
                result = match(a1, a2, a3 + 1);
                if (result)
                {
                  goto LABEL_87;
                }

                if (!singlematch(a1, a2, v8, a3))
                {
                  goto LABEL_72;
                }

                ++a2;
              }
            }

            ++a2;
          }

          v30 = -1;
          do
          {
            v31 = singlematch(a1, a2++, v8, a3);
            ++v30;
          }

          while (v31);
          v32 = a2 - 1;
          while ((v30 & 0x8000000000000000) == 0)
          {
            result = match(a1, v32, a3 + 1);
            --v30;
            --v32;
            if (result)
            {
              goto LABEL_87;
            }
          }

LABEL_72:
          result = 0;
          goto LABEL_87;
        }

        v8 = a3 + 1;
        result = match(a1, a2 + 1, a3 + 1);
        if (result)
        {
          goto LABEL_87;
        }
      }

      else
      {
        result = 0;
        if (v14 > 0x3F || ((1 << v14) & 0x8000240000000000) == 0)
        {
          goto LABEL_87;
        }

        v8 = a3 + 1;
      }
    }
  }

  if (v10 != 41)
  {
    if (v10 == 40)
    {
      v33 = v8 + 1;
      if (v8[1] == 41)
      {
        v33 = v8 + 2;
        v34 = a1;
        v35 = a2;
        v36 = -2;
      }

      else
      {
        v34 = a1;
        v35 = a2;
        v36 = -1;
      }

      result = start_capture(v34, v35, v33, v36);
      goto LABEL_87;
    }

    goto LABEL_20;
  }

  v37 = *(a1 + 40);
  v38 = 16 * v37 + 40;
  while (1)
  {
    v39 = __OFSUB__(v37, 1);
    LODWORD(v37) = v37 - 1;
    if (v37 < 0 != v39)
    {
      break;
    }

    v40 = *(a1 + v38);
    v38 -= 16;
    if (v40 == -1)
    {
      goto LABEL_83;
    }
  }

  LODWORD(v37) = luaL_error(*(a1 + 32), "invalid pattern capture");
LABEL_83:
  v41 = (v7 + 16 * v37);
  v41[1] = &a2[-*v41];
  result = match(a1, a2, v8 + 1);
  if (!result)
  {
    v41[1] = -1;
  }

LABEL_87:
  ++*a1;
  return result;
}

uint64_t push_captures(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  luaL_checkstack(*(a1 + 32), v8, "too many captures");
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      push_onecapture(a1, v9++, a2, a3);
    }

    while (v8 != v9);
  }

  return v8;
}

uint64_t start_capture(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  v8 = *(a1 + 40);
  if (v8 >= 32)
  {
    luaL_error(*(a1 + 32), "too many captures");
  }

  v9 = a1 + 16 * v8;
  *(v9 + 48) = a2;
  *(v9 + 56) = a4;
  *(a1 + 40) = v8 + 1;
  result = match(a1, a2, a3);
  if (!result)
  {
    --*(a1 + 40);
  }

  return result;
}

unsigned __int8 *classend(uint64_t a1, unsigned __int8 *a2)
{
  result = a2 + 1;
  v5 = *a2;
  if (v5 == 91)
  {
    if (a2[1] == 94)
    {
      v6 = a2 + 2;
    }

    else
    {
      v6 = a2 + 1;
    }

    do
    {
      if (v6 == *(a1 + 24))
      {
        luaL_error(*(a1 + 32), "malformed pattern (missing ']')");
      }

      v7 = v6 + 1;
      if (*v6 == 37 && v7 < *(a1 + 24))
      {
        v7 = v6 + 2;
      }

      v6 = v7;
    }

    while (*v7 != 93);
    return v7 + 1;
  }

  else if (v5 == 37)
  {
    if (result == *(a1 + 24))
    {
      luaL_error(*(a1 + 32), "malformed pattern (ends with '%%')");
    }

    return a2 + 2;
  }

  return result;
}

BOOL matchbracketclass(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = v4 == 94;
  v6 = v4 != 94;
  if (v4 != 94)
  {
    v3 = a2;
  }

  v7 = v3 + 1;
  if ((v3 + 1) < a3)
  {
    v9 = a1;
    do
    {
      v11 = v3 + 2;
      v10 = v3[2];
      v12 = v3[1];
      if (v12 == 37)
      {
        matched = match_class(v9, v10);
        v3 = v11;
        if (matched)
        {
          return v6;
        }
      }

      else
      {
        v3 += 3;
        if (v10 != 45 || v3 >= a3)
        {
          v3 = v7;
          if (v12 == v9)
          {
            return v6;
          }
        }

        else if (v12 <= v9 && *v3 >= v9)
        {
          return v6;
        }
      }

      v7 = v3 + 1;
    }

    while ((v3 + 1) < a3);
  }

  return v5;
}

BOOL singlematch(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a3;
  switch(v5)
  {
    case '[':
      return matchbracketclass(v4, a3, a4 - 1);
    case '.':
      return 1;
    case '%':
      return match_class(v4, a3[1]);
  }

  return v5 == v4;
}

BOOL match_class(int a1, int a2)
{
  v4 = cstdlib_tolower(a2);
  if (v4 <= 111)
  {
    if (v4 <= 99)
    {
      if (v4 == 97)
      {
        v5 = cstdlib_isalpha(a1);
        goto LABEL_26;
      }

      if (v4 == 99)
      {
        v5 = cstdlib_iscntrl(a1);
        goto LABEL_26;
      }
    }

    else
    {
      switch(v4)
      {
        case 'd':
          v5 = cstdlib_isdigit(a1);
          goto LABEL_26;
        case 'g':
          v5 = cstdlib_isgraph(a1);
          goto LABEL_26;
        case 'l':
          v5 = cstdlib_islower(a1);
          goto LABEL_26;
      }
    }

    return a2 == a1;
  }

  if (v4 > 118)
  {
    switch(v4)
    {
      case 'w':
        v5 = cstdlib_isalnum(a1);
        goto LABEL_26;
      case 'x':
        v5 = cstdlib_isxdigit(a1);
        goto LABEL_26;
      case 'z':
        v6 = a1 == 0;
        goto LABEL_27;
    }

    return a2 == a1;
  }

  if (v4 == 112)
  {
    v5 = cstdlib_ispunct(a1);
    goto LABEL_26;
  }

  if (v4 == 115)
  {
    v5 = cstdlib_isspace(a1);
    goto LABEL_26;
  }

  if (v4 != 117)
  {
    return a2 == a1;
  }

  v5 = cstdlib_isupper(a1);
LABEL_26:
  v6 = v5;
LABEL_27:
  if (cstdlib_islower(a2))
  {
    return v6;
  }

  else
  {
    return !v6;
  }
}

uint64_t push_onecapture(uint64_t a1, int a2, char *a3, uint64_t a4)
{
  if (*(a1 + 40) <= a2)
  {
    v7 = *(a1 + 32);
    if (a2)
    {
      return luaL_error(v7, "invalid capture index %%%d", a2 + 1);
    }

    v8 = a3;
    v9 = a4 - a3;
    goto LABEL_9;
  }

  v5 = a1 + 16 * a2;
  v6 = *(v5 + 56);
  if (v6 != -2)
  {
    if (v6 == -1)
    {
      luaL_error(*(a1 + 32), "unfinished capture", a3, a4);
    }

    v7 = *(a1 + 32);
    v8 = *(v5 + 48);
    v9 = v6;
LABEL_9:

    return lua_pushlstring(v7, v8, v9);
  }

  v11 = *(a1 + 32);
  v12 = *(v5 + 48) - *(a1 + 8) + 1;

  return lua_pushinteger(v11, v12);
}

char *addlenmod(const char *a1)
{
  v2 = cstdlib_strlen(a1);
  v3 = cstdlib_strlen("");
  v4 = &a1[v2];
  LOBYTE(v2) = *(v4 - 1);
  result = cstdlib_strcpy(v4 - 1, "");
  v6 = &v4[v3];
  *(v6 - 1) = v2;
  *v6 = 0;
  return result;
}

uint64_t gmatch_aux(void *a1)
{
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
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0;
  v12 = 0;
  v2 = lua_tolstring(a1, 0xFFF0B9D7, &v12);
  v3 = lua_tolstring(a1, 0xFFF0B9D6, &v11);
  LODWORD(v13) = 200;
  v4 = v12;
  *(&v13 + 1) = v2;
  *&v14 = v2 + v12;
  *(&v14 + 1) = &v3[v11];
  *&v15 = a1;
  v5 = lua_tointegerx(a1, 0xFFF0B9D5, 0);
  if (v5 > v4)
  {
    return 0;
  }

  v6 = (v2 + v5);
  while (1)
  {
    DWORD2(v15) = 0;
    v7 = match(&v13, v6, v3);
    if (v7)
    {
      break;
    }

    if (++v6 > v14)
    {
      return 0;
    }
  }

  v9 = v7;
  if (v6 == v7)
  {
    v10 = &v7[-v2 + 1];
  }

  else
  {
    v10 = &v7[-v2];
  }

  lua_pushinteger(a1, v10);
  lua_copy(a1, 0xFFFFFFFF, -1001003);
  lua_settop(a1, -2);
  return push_captures(&v13, v6, v9);
}

uint64_t getdetails(void **a1, int a2, unsigned __int8 **a3, int *a4, int *a5)
{
  v10 = getoption(a1, a3, a4);
  v11 = *a4;
  v16 = v11;
  if (v10 == 7)
  {
    if (!**a3 || (v12 = getoption(a1, a3, &v16), v11 = v16, v12 == 3) || !v16)
    {
      luaL_argerror(*a1, 1);
    }
  }

  v13 = 0;
  if (v10 != 3 && v11 >= 2)
  {
    if (v11 >= *(a1 + 3))
    {
      v14 = *(a1 + 3);
    }

    else
    {
      v14 = v11;
    }

    if ((v14 & (v14 - 1)) != 0)
    {
      luaL_argerror(*a1, 1);
    }

    v13 = (v14 - ((v14 - 1) & a2)) & (v14 - 1);
  }

  *a5 = v13;
  return v10;
}

char *packint(uint64_t a1, unint64_t a2, int a3, int a4, int a5)
{
  v10 = a4;
  result = luaL_prepbuffsize(a1, a4);
  v12 = a4 - 1;
  if (a3)
  {
    v12 = 0;
  }

  result[v12] = a2;
  v13 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = 1;
    do
    {
      a2 >>= 8;
      if (a3)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      result[v15] = a2;
      ++v14;
      --v13;
    }

    while (v13 != -1);
    if (a4 >= 9 && a5)
    {
      v16 = vdupq_n_s32(a4 - 9);
      v17 = a4 - 24;
      v18 = 23;
      do
      {
        v19 = vdupq_n_s32(v18 - 23);
        v20 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_26ECCEBC0)));
        if (vuzp1_s8(v20, *v16.i8).u8[0])
        {
          v21 = v18 - 15;
          if (!a3)
          {
            v21 = v17 + 15;
          }

          result[v21] = -1;
        }

        if (vuzp1_s8(v20, *&v16).i8[1])
        {
          v22 = v18 - 14;
          if (!a3)
          {
            v22 = v17 + 14;
          }

          result[v22] = -1;
        }

        if (vuzp1_s8(v20, *&v16).i8[2])
        {
          v23 = v18 - 13;
          if (!a3)
          {
            v23 = v17 + 13;
          }

          result[v23] = -1;
        }

        if (vuzp1_s8(v20, *&v16).i8[3])
        {
          v24 = v18 - 12;
          if (!a3)
          {
            v24 = v17 + 12;
          }

          result[v24] = -1;
        }

        v25 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_26ECCEBB0)));
        if (vuzp1_s8(*&v16, v25).i32[1])
        {
          v26 = v18 - 11;
          if (!a3)
          {
            v26 = v17 + 11;
          }

          result[v26] = -1;
        }

        if (vuzp1_s8(*&v16, v25).i8[5])
        {
          v27 = v18 - 10;
          if (!a3)
          {
            v27 = v17 + 10;
          }

          result[v27] = -1;
        }

        if (vuzp1_s8(*&v16, v25).i8[6])
        {
          v28 = v18 - 9;
          if (!a3)
          {
            v28 = v17 + 9;
          }

          result[v28] = -1;
        }

        if (vuzp1_s8(*&v16, v25).i8[7])
        {
          v29 = v18 - 8;
          if (!a3)
          {
            v29 = v17 + 8;
          }

          result[v29] = -1;
        }

        v30 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_26ECCEBA0)));
        if (vuzp1_s8(v30, *v16.i8).u8[0])
        {
          v31 = v18 - 7;
          if (!a3)
          {
            v31 = v17 + 7;
          }

          result[v31] = -1;
        }

        if (vuzp1_s8(v30, *&v16).i8[1])
        {
          v32 = v18 - 6;
          if (!a3)
          {
            v32 = v17 + 6;
          }

          result[v32] = -1;
        }

        if (vuzp1_s8(v30, *&v16).i8[2])
        {
          v33 = v18 - 5;
          if (!a3)
          {
            v33 = v17 + 5;
          }

          result[v33] = -1;
        }

        if (vuzp1_s8(v30, *&v16).i8[3])
        {
          v34 = v18 - 4;
          if (!a3)
          {
            v34 = v17 + 4;
          }

          result[v34] = -1;
        }

        v35 = vmovn_s32(vcgeq_u32(v16, vorrq_s8(v19, xmmword_26ECCEB90)));
        if (vuzp1_s8(*&v16, v35).i32[1])
        {
          v36 = v18 - 3;
          if (!a3)
          {
            v36 = v17 + 3;
          }

          result[v36] = -1;
        }

        if (vuzp1_s8(*&v16, v35).i8[5])
        {
          v37 = v18 - 2;
          if (!a3)
          {
            v37 = v17 + 2;
          }

          result[v37] = -1;
        }

        if (vuzp1_s8(*&v16, v35).i8[6])
        {
          v38 = v18 - 1;
          if (!a3)
          {
            v38 = v17 + 1;
          }

          result[v38] = -1;
        }

        if (vuzp1_s8(*&v16, v35).i8[7])
        {
          if (a3)
          {
            v39 = v18;
          }

          else
          {
            v39 = v17;
          }

          result[v39] = -1;
        }

        v17 -= 16;
        v18 += 16;
      }

      while (v18 - ((a4 + 7) & 0xFFFFFFF0) != 23);
    }
  }

  *(a1 + 16) += v10;
  return result;
}

uint64_t getoption(void **a1, unsigned __int8 **a2, int *a3)
{
  v4 = *a2;
  v5 = *a2 + 1;
  *a2 = v5;
  v6 = *v4;
  *a3 = 0;
  if (v6 <= 97)
  {
    if (v6 <= 71)
    {
      if (v6 > 60)
      {
        if (v6 == 61)
        {
LABEL_42:
          *(a1 + 2) = 1;
          return 8;
        }

        if (v6 != 62)
        {
          if (v6 == 66)
          {
            result = 1;
            *a3 = 1;
            return result;
          }

          goto LABEL_58;
        }

        *(a1 + 2) = 0;
      }

      else if (v6 != 32)
      {
        if (v6 == 33)
        {
          *(a1 + 3) = getnumlimit(a1, a2, 8);
          return 8;
        }

        if (v6 != 60)
        {
          goto LABEL_58;
        }

        goto LABEL_42;
      }

      return 8;
    }

    if (v6 > 75)
    {
      if (v6 != 76 && v6 != 84)
      {
        if (v6 == 88)
        {
          return 7;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v6 == 72)
      {
        v10 = 2;
        goto LABEL_53;
      }

      if (v6 == 73)
      {
        *a3 = getnumlimit(a1, a2, 4);
        return 1;
      }

      if (v6 != 74)
      {
        goto LABEL_58;
      }
    }

    v10 = 8;
LABEL_53:
    *a3 = v10;
    return 1;
  }

  if (v6 > 105)
  {
    if (v6 > 114)
    {
      switch(v6)
      {
        case 's':
          *a3 = getnumlimit(a1, a2, 8);
          return 4;
        case 'x':
          *a3 = 1;
          return 6;
        case 'z':
          return 5;
      }

      goto LABEL_58;
    }

    if (v6 == 106 || v6 == 108)
    {
      result = 0;
      v9 = 8;
      goto LABEL_51;
    }

    if (v6 == 110)
    {
LABEL_23:
      v7 = 8;
LABEL_56:
      *a3 = v7;
      return 2;
    }

LABEL_58:
    luaL_error(*a1, "invalid format option '%c'", v6);
    return 8;
  }

  if (v6 > 101)
  {
    switch(v6)
    {
      case 'f':
        v7 = 4;
        goto LABEL_56;
      case 'h':
        result = 0;
        v9 = 2;
        goto LABEL_51;
      case 'i':
        v9 = getnumlimit(a1, a2, 4);
        result = 0;
LABEL_51:
        *a3 = v9;
        return result;
    }

    goto LABEL_58;
  }

  if (v6 == 98)
  {
    result = 0;
    v9 = 1;
    goto LABEL_51;
  }

  if (v6 != 99)
  {
    if (v6 != 100)
    {
      goto LABEL_58;
    }

    goto LABEL_23;
  }

  if ((*v5 - 58) >= 0xFFFFFFF6)
  {
    v11 = 0;
    v12 = v4 + 2;
    do
    {
      *a2 = v12;
      v11 = *(v12 - 1) + 10 * v11 - 48;
      v13 = *v12++ - 48;
    }

    while (v13 <= 9 && v11 < 214748364);
    *a3 = v11;
    if (v11 != -1)
    {
      return 3;
    }
  }

  else
  {
    *a3 = -1;
  }

  luaL_error(*a1, "missing size for format option 'c'");
  return 3;
}

uint64_t getnumlimit(uint64_t *a1, void *a2, uint64_t a3)
{
  if ((**a2 - 58) >= 0xFFFFFFF6)
  {
    LODWORD(a3) = 0;
    v4 = (*a2 + 1);
    do
    {
      *a2 = v4;
      a3 = (*(v4 - 1) + 10 * a3 - 48);
      v5 = *v4++ - 48;
    }

    while (v5 <= 9 && a3 < 214748364);
  }

  if ((a3 - 17) <= 0xFFFFFFEF)
  {
    luaL_error(*a1, "integral size (%d) out of limits [1,%d]", a3, 16);
  }

  return a3;
}

unint64_t unpackint(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 >= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = a4;
  }

  if (a4 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v6 + 1;
    v12 = a4 - v6;
    do
    {
      v13 = v10;
      v14 = v11 - 2;
      if (!a3)
      {
        v14 = v12;
      }

      v10 = *(a2 + v14) | (v10 << 8);
      --v11;
      ++v12;
    }

    while (v11 > 1);
    if (a4 > 7)
    {
      if (a4 != 8)
      {
        if ((v13 << 8) > -1 || a5 == 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = 255;
        }

        v17 = ~v6 + a4;
        do
        {
          if (a3)
          {
            v18 = v6;
          }

          else
          {
            v18 = v17;
          }

          if (v16 != *(a2 + v18))
          {
            luaL_error(a1, "%d-byte integer does not fit into Lua Integer", a4);
          }

          ++v6;
          --v17;
        }

        while (v6 < a4);
      }

      return v10;
    }
  }

  if (a5)
  {
    return (v10 ^ (1 << (8 * a4 - 1))) - (1 << (8 * a4 - 1));
  }

  return v10;
}

uint64_t luaH_next(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 2);
  if (v6 == 19)
  {
    v7 = *a3;
    if ((*a3 - 2147483649) >= 0xFFFFFFFF80000000)
    {
      v8 = *(a2 + 12);
      if (v8 >= v7)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!v6)
  {
    LODWORD(v7) = 0;
    v8 = *(a2 + 12);
    goto LABEL_15;
  }

  v9 = mainposition(a2, a3);
  for (i = v9 + 4; !luaV_equalobj(0, v9 + 4, a3); i = v9 + 4)
  {
    if (v9[6] == 10 && (a3[1] & 0x40) != 0 && *i == *a3)
    {
      break;
    }

    v11 = v9[7];
    if (v11)
    {
      v9 += 8 * v11;
    }

    else
    {
      luaG_runerror(a1, "invalid key to 'next'");
    }
  }

  v8 = *(a2 + 12);
  LODWORD(v7) = v8 + ((v9 - *(a2 + 24)) >> 5) + 1;
LABEL_15:
  v12 = v8 - v7;
  if (v8 <= v7)
  {
LABEL_20:
    v16 = v7 - v8;
    v17 = 1 << *(a2 + 11);
    if (v16 >= v17)
    {
      return 0;
    }

    while (1)
    {
      v18 = *(a2 + 24) + 32 * v16;
      if (*(v18 + 8))
      {
        break;
      }

      if (v17 == ++v16)
      {
        return 0;
      }
    }

    *a3 = *(v18 + 16);
    v20 = *(a2 + 24);
    v14 = 32 * v16;
  }

  else
  {
    v13 = v7;
    v14 = 16 * v7;
    v15 = v13 + 1;
    while (!*(*(a2 + 16) + 8 + v14))
    {
      v14 += 16;
      ++v15;
      if (!--v12)
      {
        LODWORD(v7) = v8;
        goto LABEL_20;
      }
    }

    *a3 = v15;
    *(a3 + 2) = 19;
    v20 = *(a2 + 16);
  }

  *(a3 + 1) = *(v20 + v14);
  return 1;
}

_OWORD *luaH_resize(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a2 + 12);
  v9 = *(a2 + 11);
  v10 = *(a2 + 24);
  v11 = a3;
  if (v8 < a3)
  {
    v12 = luaM_realloc_(a1, *(a2 + 16), 16 * v8, 16 * a3);
    *(a2 + 16) = v12;
    v13 = *(a2 + 12);
    if (v13 < a3)
    {
      v14 = 0;
      v15 = (v11 - v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v16 = vdupq_n_s64(v11 - v13 - 1);
      v17 = (v12 + 16 * v13 + 40);
      do
      {
        v18 = vdupq_n_s64(v14);
        v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_26ECC7980)));
        if (vuzp1_s16(v19, *v16.i8).u8[0])
        {
          *(v17 - 8) = 0;
        }

        if (vuzp1_s16(v19, *&v16).i8[2])
        {
          *(v17 - 4) = 0;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_26ECCE810)))).i32[1])
        {
          *v17 = 0;
          v17[4] = 0;
        }

        v14 += 4;
        v17 += 16;
      }

      while (v15 != v14);
    }

    *(a2 + 12) = a3;
  }

  result = setnodevector(a1, a2, v4);
  if (v8 > a3)
  {
    *(a2 + 12) = a3;
    v21 = v8 - a3;
    v22 = v11 + 1;
    v23 = 16 * a3;
    do
    {
      v24 = (*(a2 + 16) + v23);
      if (v24->n128_u32[2])
      {
        luaH_setint(a1, a2, v22, v24);
      }

      ++v22;
      v23 += 16;
      --v21;
    }

    while (v21);
    result = luaM_realloc_(a1, *(a2 + 16), 16 * v8, 16 * v11);
    *(a2 + 16) = result;
  }

  v25 = 1 << v9;
  if (v9 != 31)
  {
    v26 = v25 + 1;
    v27 = &v10[32 * (v25 - 1) + 16];
    do
    {
      if (*(v27 - 2))
      {
        result = luaH_set(a1, a2, v27);
        *result = *(v27 - 1);
      }

      --v26;
      v27 -= 4;
    }

    while (v26 > 1);
  }

  if (v10 != &dummynode_)
  {

    return luaM_realloc_(a1, v10, 32 * v25, 0);
  }

  return result;
}

char *setnodevector(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = luaO_ceillog2(a3);
    if (v5 >= 31)
    {
      luaG_runerror(a1, "table overflow");
    }

    v6 = (1 << v5);
    result = luaM_realloc_(a1, 0, 0, 32 * v6);
    *(a2 + 24) = result;
    if (v5 != 31)
    {
      v8 = 0;
      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v10 = 32 * v9;
      do
      {
        v11 = *(a2 + 24) + v8;
        *(v11 + 24) = 0;
        *(v11 + 8) = 0;
        v8 += 32;
      }

      while (v10 != v8);
      result = *(a2 + 24);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
    result = &dummynode_;
    *(a2 + 24) = &dummynode_;
  }

  *(a2 + 11) = v5;
  *(a2 + 32) = &result[32 * v6];
  return result;
}

__n128 luaH_setint(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v8 = luaH_getint(a2, a3);
  if (v8 == &luaO_nilobject_)
  {
    v10[0] = a3;
    v10[1] = 19;
    v8 = luaH_newkey(a1, a2, v10);
  }

  result = *a4;
  *v8 = *a4;
  return result;
}

uint64_t *luaH_set(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = luaH_get(a2, a3);
  if (result == &luaO_nilobject_)
  {

    return luaH_newkey(a1, a2, a3);
  }

  return result;
}

_OWORD *luaH_resizearray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 24) == &dummynode_)
  {
    v3 = 0;
  }

  else
  {
    v3 = (1 << *(a2 + 11));
  }

  return luaH_resize(a1, a2, a3, v3);
}

uint64_t luaH_new(uint64_t a1)
{
  result = luaC_newobj(a1, 5, 56);
  *(result + 10) = 255;
  *(result + 12) = 0;
  *(result + 16) = 0;
  *(result + 24) = &dummynode_;
  *(result + 32) = &dummynode_;
  *(result + 40) = 0;
  return result;
}

uint64_t luaH_free(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 != &dummynode_)
  {
    luaM_realloc_(a1, v4, 32 * (1 << *(a2 + 11)), 0);
  }

  luaM_realloc_(a1, *(a2 + 16), 16 * *(a2 + 12), 0);

  return luaM_realloc_(a1, a2, 56, 0);
}

uint64_t *luaH_newkey(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v6 = *(a3 + 2);
  if (v6 == 3)
  {
    *&v52[0] = 0;
    if (luaV_tointeger(a3, v52))
    {
      v50 = *&v52[0];
      LODWORD(v51) = 19;
      v3 = &v50;
    }
  }

  else if (!v6)
  {
    luaG_runerror(a1, "table index is nil", v50, v51);
  }

  v7 = mainposition(a2, v3);
  v8 = v7;
  if (v7 == &dummynode_ || *(v7 + 8))
  {
    v9 = 0;
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    while (1)
    {
      v12 = v11 + v9;
      if (v11 + v9 <= v10)
      {
        break;
      }

      *(a2 + 32) = v12 - 32;
      v9 -= 32;
      if (!*(v12 - 8))
      {
        v13 = mainposition(a2, (v7 + 16));
        v14 = (v11 + v9);
        if (v13 == v8)
        {
          v34 = *(v8 + 28);
          if (v34)
          {
            *(v11 + v9 + 28) = (v8 - v11 + 32 * v34 - v9) >> 5;
          }

          *(v8 + 28) = (v11 + v9 - v8) >> 5;
          v8 = v11 + v9;
        }

        else
        {
          do
          {
            v15 = v13;
            v13 += 32 * *(v13 + 28);
          }

          while (v13 != v8);
          *(v15 + 28) = (v11 - v15 + v9) >> 5;
          v16 = *(v8 + 16);
          *v14 = *v8;
          v14[1] = v16;
          if (*(v8 + 28))
          {
            *(v11 + v9 + 28) += (v8 - v11 - v9) >> 5;
            *(v8 + 28) = 0;
          }

          *(v8 + 8) = 0;
        }

        goto LABEL_56;
      }
    }

    v17 = 0;
    v18 = 0;
    memset(v52, 0, sizeof(v52));
    v19 = 1;
    v20 = 1;
    v21 = *(a2 + 12);
    do
    {
      v22 = v20;
      if (v20 > v21)
      {
        v22 = v21;
        if (v19 > v21)
        {
          break;
        }
      }

      if (v19 <= v22)
      {
        v23 = 0;
        v24 = v19 - 1;
        do
        {
          if (*(*(a2 + 16) + 16 * v24 + 8))
          {
            ++v23;
          }

          ++v24;
        }

        while (v22 != v24);
        v19 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      *(v52 + v17) += v23;
      v18 += v23;
      ++v17;
      v20 *= 2;
    }

    while (v17 != 32);
    v25 = 0;
    v26 = 0;
    v27 = 32 * ~(-1 << *(a2 + 11));
    do
    {
      v28 = *(a2 + 24);
      if (*(v28 + v27 + 8))
      {
        if (*(v28 + v27 + 24) == 19 && (v29 = *(v28 + v27 + 16), (v29 - 2147483649) >= 0xFFFFFFFF80000000))
        {
          v31 = luaO_ceillog2(v29);
          ++*(v52 + v31);
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }

        v26 += v30;
        ++v25;
      }

      v27 -= 32;
    }

    while (v27 != -32);
    v32 = v26 + v18;
    if (*(v3 + 2) == 19 && (*v3 - 2147483649) >= 0xFFFFFFFF80000000)
    {
      v35 = luaO_ceillog2(*v3);
      ++*(v52 + v35);
      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v36 = v32 + v33;
    if (v32 + v33)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = v52;
      do
      {
        v44 = *v42++;
        v43 = v44;
        v40 += v44;
        v45 = v40 > v37;
        if (v40 <= v37)
        {
          v46 = v39;
        }

        else
        {
          v46 = v40;
        }

        if (v45)
        {
          v47 = v41;
        }

        else
        {
          v47 = v38;
        }

        if (v43)
        {
          v39 = v46;
          v38 = v47;
        }

        v37 = v41 & 0x7FFFFFFF;
        v41 *= 2;
      }

      while (v36 > v37);
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    luaH_resize(a1, a2, v38, v18 + v25 - v39 + 1);
    return luaH_set(a1, a2, v3);
  }

  else
  {
LABEL_56:
    *(v8 + 16) = *v3;
    v48 = *(v3 + 2);
    *(v8 + 24) = v48;
    if ((v48 & 0x40) != 0 && (*(a2 + 9) & 4) != 0 && (*(*v3 + 9) & 3) != 0)
    {
      luaC_barrierback_(a1, a2);
    }
  }

  return v8;
}

uint64_t mainposition(uint64_t a1, _DWORD *a2)
{
  v4 = a2[2] & 0x3F;
  if (v4 > 0x12)
  {
    if (v4 == 22)
    {
      goto LABEL_9;
    }

    if (v4 == 20)
    {
      v7 = *a2;
      if (!*(*a2 + 10))
      {
        *(v7 + 12) = luaS_hash(v7 + 24, *(v7 + 16), *(v7 + 12));
        *(v7 + 10) = 1;
        v7 = *a2;
      }

      v5 = *(v7 + 12);
      goto LABEL_13;
    }

    if (v4 != 19)
    {
      goto LABEL_9;
    }

LABEL_8:
    v5 = *a2;
    goto LABEL_13;
  }

  if (v4 == 1)
  {
    goto LABEL_8;
  }

  if (v4 == 4)
  {
    v5 = *(*a2 + 12);
LABEL_13:
    v6 = v5 & ~(-1 << *(a1 + 11));
    return *(a1 + 24) + 32 * v6;
  }

LABEL_9:
  v6 = *a2 % (~(-1 << *(a1 + 11)) | 1u);
  return *(a1 + 24) + 32 * v6;
}

uint64_t *luaH_getint(uint64_t a1, uint64_t a2)
{
  if (a2 - 1 < *(a1 + 12))
  {
    return (*(a1 + 16) + 16 * (a2 - 1));
  }

  result = (*(a1 + 24) + 32 * (a2 & ~(-1 << *(a1 + 11))));
  while (*(result + 6) != 19 || result[2] != a2)
  {
    v3 = *(result + 7);
    result += 4 * v3;
    if (!v3)
    {
      return &luaO_nilobject_;
    }
  }

  return result;
}

uint64_t *luaH_getstr(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 24) + 32 * (*(a2 + 12) & ~(-1 << *(a1 + 11))));
  while (*(result + 6) != 68 || result[2] != a2)
  {
    v3 = *(result + 7);
    result += 4 * v3;
    if (!v3)
    {
      return &luaO_nilobject_;
    }
  }

  return result;
}

uint64_t *luaH_get(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1] & 0x3F;
  if (v4 <= 3)
  {
    if (!v4)
    {
      return &luaO_nilobject_;
    }

    if (v4 == 3)
    {
      v10 = 0;
      if (luaV_tointeger(a2, &v10))
      {
        return luaH_getint(a1, v10);
      }
    }

LABEL_13:
    v5 = mainposition(a1, a2);
    while (!luaV_equalobj(0, v5 + 4, a2))
    {
      v7 = v5[7];
      v5 += 8 * v7;
      if (!v7)
      {
        return &luaO_nilobject_;
      }
    }

    return v5;
  }

  if (v4 != 19)
  {
    if (v4 == 4)
    {
      v5 = (*(a1 + 24) + 32 * (*(*a2 + 12) & ~(-1 << *(a1 + 11))));
      while (v5[6] != 68 || *(v5 + 2) != *a2)
      {
        v6 = v5[7];
        v5 += 8 * v6;
        if (!v6)
        {
          return &luaO_nilobject_;
        }
      }

      return v5;
    }

    goto LABEL_13;
  }

  v9 = *a2;

  return luaH_getint(a1, v9);
}

uint64_t luaH_getn(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 && (v3 = *(a1 + 16), !*(v3 + 16 * (v2 - 1) + 8)))
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      LODWORD(v7) = 0;
      do
      {
        v10 = (v7 + v2) >> 1;
        if (*(v3 + 16 * (v10 - 1) + 8))
        {
          v7 = v10;
        }

        else
        {
          LODWORD(v2) = (v7 + v2) >> 1;
          v7 = v7;
        }
      }

      while ((v2 - v7) > 1);
    }
  }

  else if (*(a1 + 24) == &dummynode_)
  {
    return *(a1 + 12);
  }

  else
  {
    v4 = (v2 + 1);
    if (*(luaH_getint(a1, v4) + 2))
    {
      while (!(v4 >> 30))
      {
        v5 = 2 * v4;
        v6 = luaH_getint(a1, (2 * v4));
        v7 = v4;
        v4 = (2 * v4);
        if (!*(v6 + 2))
        {
          goto LABEL_12;
        }
      }

      LODWORD(v7) = -1;
      do
      {
        v9 = luaH_getint(a1, (v7 + 2));
        v7 = (v7 + 1);
      }

      while (*(v9 + 2));
    }

    else
    {
      v5 = v2 + 1;
      v7 = v2;
LABEL_12:
      if (v5 - v7 >= 2)
      {
        do
        {
          v8 = (v5 + v7) >> 1;
          if (*(luaH_getint(a1, v8) + 2))
          {
            v7 = v8;
          }

          else
          {
            v5 = (v5 + v7) >> 1;
            v7 = v7;
          }
        }

        while (v5 - v7 > 1);
      }
    }
  }

  return v7;
}

uint64_t luaopen_table(void *a1)
{
  luaL_checkversion_(a1, 136, 503.0);
  lua_createtable(a1, 0, 7);
  luaL_setfuncs(a1, &tab_funcs, 0);
  return 1;
}

uint64_t tconcat(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  memset(v9, 0, 512);
  v7 = 0;
  v2 = luaL_optlstring(a1, 2, "", &v7);
  checktab(a1, v8);
  v3 = luaL_optinteger(a1, 3, 1);
  if (lua_type(a1, 4u) <= 0)
  {
    v4 = luaL_len(a1, 1u);
  }

  else
  {
    v4 = luaL_checkinteger(a1, 4);
  }

  v5 = v4;
  luaL_buffinit(a1, v9);
  if (v3 < v5)
  {
    do
    {
      addfield(a1, v9, v8, v3);
      luaL_addlstring(v9, v2, v7);
      ++v3;
    }

    while (v5 != v3);
    goto LABEL_8;
  }

  if (v3 == v5)
  {
LABEL_8:
    addfield(a1, v9, v8, v5);
  }

  luaL_pushresult(v9);
  return 1;
}

uint64_t tinsert(void *a1)
{
  v10 = 0;
  v11 = 0;
  checktab(a1, &v10);
  v2 = luaL_len(a1, 1u);
  v3 = lua_gettop(a1);
  if (v3 == 2)
  {
    v5 = v2 + 1;
LABEL_12:
    v11(a1, 1, v5);
    return 0;
  }

  if (v3 == 3)
  {
    v4 = luaL_checkinteger(a1, 2);
    v5 = v4;
    if (v4 < 1 || v4 > v2 + 1)
    {
      luaL_argerror(a1, 2);
    }

    if (v2 >= v5)
    {
      v6 = v10;
      v7 = v11;
      do
      {
        v6(a1, 1, v2);
        v7(a1, 1, v2 + 1);
      }

      while (v2-- > v5);
    }

    goto LABEL_12;
  }

  return luaL_error(a1, "wrong number of arguments to 'insert'");
}

uint64_t pack(void *a1)
{
  v2 = lua_gettop(a1);
  v3 = v2;
  lua_createtable(a1, v2, 1);
  lua_rotate(a1, 1, 1u);
  if (v3 >= 1)
  {
    v4 = v3;
    do
    {
      lua_rawseti(a1, 1u, v4);
    }

    while (v4-- > 1);
  }

  lua_pushinteger(a1, v3);
  lua_setfield(a1, 1u, "n");
  return 1;
}

uint64_t unpack(void *a1)
{
  v10[0] = 0;
  v10[1] = 0;
  checktab(a1, v10);
  v2 = luaL_optinteger(a1, 2, 1);
  if (lua_type(a1, 3u) <= 0)
  {
    v3 = luaL_len(a1, 1u);
  }

  else
  {
    v3 = luaL_checkinteger(a1, 3);
  }

  v4 = v3;
  v5 = v3 - v2;
  if (v3 < v2)
  {
    return 0;
  }

  if (v5 <= 0x7FFFFFFE)
  {
    v6 = (v5 + 1);
    if (lua_checkstack(a1, v5 + 1))
    {
      v7 = v10[0];
      v8 = v4 + 1;
      do
      {
        v7(a1, 1, v2++);
      }

      while (v8 != v2);
      return v6;
    }
  }

  return luaL_error(a1, "too many results to unpack");
}

uint64_t tremove(void *a1)
{
  v8 = 0;
  v9 = 0;
  checktab(a1, &v8);
  v2 = luaL_len(a1, 1u);
  v3 = luaL_optinteger(a1, 2, v2);
  v4 = v3;
  if (v3 != v2 && (v3 < 1 || v3 > v2 + 1))
  {
    luaL_argerror(a1, 1);
  }

  v5 = v8;
  v8(a1, 1, v4);
  v6 = v9;
  if (v4 < v2)
  {
    do
    {
      v5(a1, 1, v4 + 1);
      v6(a1, 1, v4++);
    }

    while (v2 != v4);
    v4 = v2;
  }

  lua_pushnil(a1);
  v6(a1, 1, v4);
  return 1;
}

uint64_t tmove(void *a1)
{
  v2 = luaL_checkinteger(a1, 2);
  v3 = luaL_checkinteger(a1, 3);
  v4 = luaL_checkinteger(a1, 4);
  if (lua_type(a1, 5u) < 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  v6 = v3 - v2;
  if (v3 >= v2)
  {
    v7 = luaL_getmetafield(a1, 1u, "__index");
    v8 = lua_geti;
    if (!v7)
    {
      luaL_checktype(a1, 1, 5);
      v8 = lua_rawgeti;
    }

    v9 = v8;
    v10 = luaL_getmetafield(a1, v5, "__newindex");
    v11 = lua_seti;
    if (!v10)
    {
      luaL_checktype(a1, v5, 5);
      v11 = lua_rawseti;
    }

    v12 = v11;
    if (v2 <= 0 && v3 >= v2 + 0x7FFFFFFFFFFFFFFFLL)
    {
      luaL_argerror(a1, 3);
    }

    if (v4 > (v6 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      luaL_argerror(a1, 4);
    }

    if (v4 <= v2)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        v16 = v3 + 1;
        do
        {
          v9(a1, 1, v2);
          v12(a1, v5, v4);
          ++v2;
          ++v4;
        }

        while (v16 != v2);
      }
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      v13 = ~v3 + v2;
      v14 = v3 + v4 - v2;
      do
      {
        v9(a1, 1, v3);
        v12(a1, v5, v14--);
        --v3;
      }

      while (!__CFADD__(v13++, 1));
    }
  }

  lua_pushvalue(a1, v5);
  return 1;
}

uint64_t sort(void *a1)
{
  v4[0] = 0;
  v4[1] = 0;
  checktab(a1, v4);
  v2 = luaL_len(a1, 1u);
  luaL_checkstack(a1, 50, "");
  if (lua_type(a1, 2u) >= 1)
  {
    luaL_checktype(a1, 2, 6);
  }

  lua_settop(a1, 2);
  auxsort(a1, v4, 1, v2);
  return 0;
}

uint64_t checktab(void *a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  result = lua_getmetatable(a1, 1u);
  if (result)
  {
    lua_pushstring(a1, "__index");
    if (lua_rawget(a1, 0xFFFFFFFE))
    {
      *a2 = lua_geti;
    }

    lua_pushstring(a1, "__newindex");
    if (lua_rawget(a1, 0xFFFFFFFD))
    {
      a2[1] = lua_seti;
    }

    result = lua_settop(a1, -4);
  }

  if (!*a2 || !a2[1])
  {
    result = luaL_checktype(a1, 1, 5);
    if (!*a2)
    {
      *a2 = lua_rawgeti;
    }

    if (!a2[1])
    {
      a2[1] = lua_rawseti;
    }
  }

  return result;
}

uint64_t addfield(void *a1, uint64_t a2, void (**a3)(void *, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4;
  (*a3)(a1, 1, a4);
  if (!lua_isstring(a1, 0xFFFFFFFF))
  {
    v7 = lua_type(a1, 0xFFFFFFFF);
    v8 = lua_typename(a1, v7);
    luaL_error(a1, "invalid value (%s) at index %d in table for 'concat'", v8, v4);
  }

  return luaL_addvalue(a2);
}

void *auxsort(void *result, void (**a2)(void *, uint64_t, uint64_t), int a3, int a4)
{
  if (a3 < a4)
  {
    v4 = a4;
    v5 = a3;
    v7 = result;
    do
    {
      v8 = v5;
      (*a2)(v7, 1, v5);
      v9 = v4;
      (*a2)(v7, 1, v4);
      if (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE))
      {
        a2[1](v7, 1, v5);
        result = (a2[1])(v7, 1, v4);
      }

      else
      {
        result = lua_settop(v7, -3);
      }

      if (v4 - v5 == 1)
      {
        break;
      }

      v10 = (v4 + v5 + ((v4 + v5) >> 31)) >> 1;
      (*a2)(v7, 1, v10);
      (*a2)(v7, 1, v5);
      if (sort_comp(v7, 0xFFFFFFFE, 0xFFFFFFFF))
      {
        a2[1](v7, 1, v10);
        result = (a2[1])(v7, 1, v5);
      }

      else
      {
        lua_settop(v7, -2);
        (*a2)(v7, 1, v9);
        if (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE))
        {
          a2[1](v7, 1, v10);
          result = (a2[1])(v7, 1, v9);
        }

        else
        {
          result = lua_settop(v7, -3);
        }
      }

      if (v9 - v5 == 2)
      {
        break;
      }

      (*a2)(v7, 1, v10);
      v11 = lua_pushvalue(v7, 0xFFFFFFFF);
      v12 = v9 - 1;
      v13 = v9 - 1;
      (*a2)(v7, 1, v13, v11);
      v21 = v13;
      v22 = v5;
      do
      {
        a2[1](v7, 1, v10);
        a2[1](v7, 1, v13);
        v10 = v5 + 1;
        (*a2)(v7, 1, v10);
        if (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE))
        {
          v10 = v5 + 1;
          do
          {
            if (v10 >= v9)
            {
              luaL_error(v7, "invalid order function for sorting");
            }

            lua_settop(v7, -2);
            (*a2)(v7, 1, ++v10);
            ++v5;
          }

          while (sort_comp(v7, 0xFFFFFFFF, 0xFFFFFFFE));
          v23 = v5++;
        }

        else
        {
          v23 = v5++;
        }

        v14 = v12 - 1;
        v13 = v12 - 1;
        (*a2)(v7, 1, v13);
        if (sort_comp(v7, 0xFFFFFFFD, 0xFFFFFFFF))
        {
          do
          {
            if (v13 <= v8)
            {
              luaL_error(v7, "invalid order function for sorting");
            }

            lua_settop(v7, -2);
            (*a2)(v7, 1, --v13);
            --v12;
          }

          while (sort_comp(v7, 0xFFFFFFFD, 0xFFFFFFFF));
          v14 = v12 - 1;
        }

        v15 = v12 <= v5;
        v12 = v14;
      }

      while (!v15);
      lua_settop(v7, -4);
      (*a2)(v7, 1, v21);
      (*a2)(v7, 1, v10);
      a2[1](v7, 1, v21);
      a2[1](v7, 1, v10);
      v16 = v5 - v22;
      v17 = v9 - v5;
      v18 = v5 - v22 >= v9 - v5 ? v22 : v23 + 2;
      v4 = v16 >= v17 ? v23 : v9;
      v19 = v16 >= v17 ? v9 : v23;
      v20 = v16 >= v17 ? v23 + 2 : v22;
      result = auxsort(v7, a2, v20, v19);
      v5 = v18;
    }

    while (v18 < v4);
  }

  return result;
}

uint64_t sort_comp(void *a1, unsigned int a2, unsigned int a3)
{
  if (lua_type(a1, 2u))
  {
    lua_pushvalue(a1, 2u);
    lua_pushvalue(a1, a2 - 1);
    lua_pushvalue(a1, a3 - 2);
    lua_callk(a1, 2, 1, 0, 0);
    v6 = lua_toBOOLean(a1, 0xFFFFFFFF);
    lua_settop(a1, -2);
    return v6;
  }

  else
  {

    return lua_compare(a1, a2, a3, 1);
  }
}

uint64_t luaT_init(uint64_t a1)
{
  v2 = luaT_init_luaT_eventname;
  for (i = 31; i != 55; ++i)
  {
    v4 = *v2++;
    *(*(a1 + 24) + 8 * i) = luaS_new(a1, v4);
    result = luaC_fix(a1, *(*(a1 + 24) + 8 * i));
  }

  return result;
}

uint64_t *luaT_gettm(uint64_t a1, char a2, uint64_t a3)
{
  result = luaH_getstr(a1, a3);
  if (!*(result + 2))
  {
    result = 0;
    *(a1 + 10) |= 1 << a2;
  }

  return result;
}

uint64_t *luaT_gettmbyobj(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if ((a2[2] & 0xF) == 7)
  {
    v3 = (*a2 + 16);
  }

  else if ((a2[2] & 0xF) == 5)
  {
    v3 = (*a2 + 40);
  }

  else
  {
    v3 = (*(a1 + 24) + 8 * (a2[2] & 0xF) + 440);
  }

  v4 = *v3;
  if (v4)
  {
    return luaH_getstr(v4, *(*(a1 + 24) + 8 * a3 + 248));
  }

  else
  {
    return &luaO_nilobject_;
  }
}

__n128 luaT_callTM(void *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v9 = a1[7];
  v10 = a1[2];
  a1[2] = v10 + 1;
  *v10 = *a2;
  v11 = a1[2];
  a1[2] = v11 + 1;
  *v11 = *a3;
  v12 = a1[2];
  a1[2] = v12 + 1;
  *v12 = *a4;
  if (!a6)
  {
    v13 = a1[2];
    a1[2] = v13 + 1;
    *v13 = *a5;
  }

  luaD_call(a1, (a1[2] - 16 * (4 - a6)), a6, *(a1[4] + 66) & 2);
  if (a6)
  {
    v15 = a1[7];
    v16 = (a1[2] - 16);
    a1[2] = v16;
    result = *v16;
    *(a5 + v15 - v9) = *v16;
  }

  return result;
}

uint64_t luaT_callbinTM(void *a1, _DWORD *a2, _DWORD *a3, _OWORD *a4, unsigned int a5)
{
  v10 = luaT_gettmbyobj(a1, a2, a5);
  if (!*(v10 + 2))
  {
    v10 = luaT_gettmbyobj(a1, a3, a5);
    if (!*(v10 + 2))
    {
      return 0;
    }
  }

  v11 = 1;
  luaT_callTM(a1, v10, a2, a3, a4, 1);
  return v11;
}

uint64_t luaT_trybinTM(void *a1, _DWORD *a2, _DWORD *a3, _OWORD *a4, unsigned int a5)
{
  result = luaT_callbinTM(a1, a2, a3, a4, a5);
  if (!result)
  {
    if (a5 - 13 >= 5 && a5 != 19)
    {
      if (a5 != 22)
      {
        return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
      }

      luaG_concaterror(a1, a2, a3);
    }

    v10 = 0;
    if (a2[2] == 3)
    {
      v10 = *a2;
    }

    else if (!luaV_tonumber_(a2, &v10))
    {
      goto LABEL_13;
    }

    if (a3[2] == 3)
    {
      v10 = *a3;
LABEL_12:
      luaG_tointerror(a1, a2, a3);
      return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
    }

    if (luaV_tonumber_(a3, &v10))
    {
      goto LABEL_12;
    }

LABEL_13:
    luaG_opinterror(a1, a2, a3, "perform bitwise operation on");
    return luaG_opinterror(a1, a2, a3, "perform arithmetic on");
  }

  return result;
}

uint64_t luaT_callorderTM(uint64_t a1, _DWORD *a2, _DWORD *a3, unsigned int a4)
{
  if (!luaT_callbinTM(a1, a2, a3, *(a1 + 16), a4))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  result = v5[2];
  if (result)
  {
    return result != 1 || *v5 != 0;
  }

  return result;
}

uint64_t luaU_undump(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v13 = 0;
  v5 = *a4;
  if (v5 == 27)
  {
    v6 = "binary string";
  }

  else
  {
    v6 = a4;
    if (v5 == 64 || v5 == 61)
    {
      v6 = a4 + 1;
    }
  }

  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = v6;
  checkliteral(v12, "Lua", "not a");
  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  if (LOBYTE(v14) != 83)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "version mismatch in");
    luaD_throw(a1, 3);
  }

  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  if (LOBYTE(v14))
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "format mismatch in");
    luaD_throw(a1, 3);
  }

  checkliteral(v12, "\x19\x93\r\n\x1A\n", "corrupted");
  fchecksize(v12, 4, "int");
  fchecksize(v12, 8, "size_t");
  fchecksize(v12, 4, "Instruction");
  fchecksize(v12, 8, "lua_Integer");
  fchecksize(v12, 8, "lua_Number");
  v14 = 0.0;
  LoadBlock(v12, &v14, 8uLL);
  if (*&v14 != 22136)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "endianness mismatch in");
    luaD_throw(a1, 3);
  }

  v14 = 0.0;
  LoadBlock(v12, &v14, 8uLL);
  if (v14 != 370.5)
  {
    luaO_pushfstring(a1, "%s: %s precompiled chunk", v6, "float format mismatch in");
    luaD_throw(a1, 3);
  }

  LOBYTE(v14) = 0;
  LoadBlock(v12, &v14, 1uLL);
  v7 = luaF_newLclosure(a1, LOBYTE(v14));
  v8 = *(a1 + 16);
  *v8 = v7;
  *(v8 + 8) = 70;
  v9 = *(a1 + 16) + 16;
  *(a1 + 16) = v9;
  if (*(a1 + 48) - v9 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  luaF_newproto(a1);
  *(v7 + 24) = v10;
  LoadFunction(v12, v10, 0);
  return v7;
}

uint64_t LoadFunction(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  String = LoadString(a1);
  if (String)
  {
    v7 = String;
  }

  else
  {
    v7 = a3;
  }

  *(a2 + 104) = v7;
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  *(a2 + 40) = v56;
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  *(a2 + 44) = v56;
  LOBYTE(v56) = 0;
  LoadBlock(a1, &v56, 1uLL);
  *(a2 + 10) = v56;
  LOBYTE(v56) = 0;
  LoadBlock(a1, &v56, 1uLL);
  *(a2 + 11) = v56;
  LOBYTE(v56) = 0;
  LoadBlock(a1, &v56, 1uLL);
  *(a2 + 12) = v56;
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v8 = v56;
  v9 = 4 * v56;
  v10 = luaM_realloc_(*a1, 0, 0, v9);
  *(a2 + 56) = v10;
  *(a2 + 24) = v8;
  LoadBlock(a1, v10, v9);
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v11 = v56;
  v12 = 16 * v56;
  v13 = luaM_realloc_(*a1, 0, 0, v12);
  *(a2 + 48) = v13;
  *(a2 + 20) = v11;
  if (v11 >= 1)
  {
    v14 = (v11 + 3) & 0xFFFFFFFC;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = xmmword_26ECCE810;
    v17 = xmmword_26ECC7980;
    v18 = (v13 + 40);
    v19 = vdupq_n_s64(4uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v15, v17));
      if (vuzp1_s16(v20, *v15.i8).u8[0])
      {
        *(v18 - 8) = 0;
      }

      if (vuzp1_s16(v20, *&v15).i8[2])
      {
        *(v18 - 4) = 0;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v16))).i32[1])
      {
        *v18 = 0;
        v18[4] = 0;
      }

      v16 = vaddq_s64(v16, v19);
      v17 = vaddq_s64(v17, v19);
      v18 += 16;
      v14 -= 4;
    }

    while (v14);
    for (i = 0; v12 != i; i += 16)
    {
      v22 = *(a2 + 48);
      LOBYTE(v56) = 0;
      LoadBlock(a1, &v56, 1uLL);
      v23 = v56;
      if (v56 > 3u)
      {
        switch(v56)
        {
          case 4u:
            goto LABEL_22;
          case 0x13u:
            v56 = 0;
            LoadBlock(a1, &v56, 8uLL);
            *(v22 + i) = v56;
            v23 = 19;
            goto LABEL_25;
          case 0x14u:
LABEL_22:
            v24 = LoadString(a1);
            *(v22 + i) = v24;
            v23 = *(v24 + 8) | 0x40;
            goto LABEL_25;
        }
      }

      else
      {
        if (!v56)
        {
          goto LABEL_25;
        }

        if (v56 == 1)
        {
          LOBYTE(v56) = 0;
          v23 = 1;
          LoadBlock(a1, &v56, 1uLL);
          *(v22 + i) = v56;
          goto LABEL_25;
        }

        if (v56 == 3)
        {
          v56 = 0;
          LoadBlock(a1, &v56, 8uLL);
          *(v22 + i) = v56;
          v23 = 3;
LABEL_25:
          *(v22 + i + 8) = v23;
        }
      }
    }
  }

  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v25 = v56;
  v26 = 16 * v56;
  v27 = luaM_realloc_(*a1, 0, 0, v26);
  *(a2 + 88) = v27;
  *(a2 + 16) = v25;
  if (v25 >= 1)
  {
    v28 = vdupq_n_s64(v25 - 1);
    v29 = (v25 + 1) & 0xFFFFFFFE;
    v30 = xmmword_26ECC7980;
    v31 = (v27 + 16);
    v32 = vdupq_n_s64(2uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v28, v30));
      if (v33.i8[0])
      {
        *(v31 - 2) = 0;
      }

      if (v33.i8[4])
      {
        *v31 = 0;
      }

      v30 = vaddq_s64(v30, v32);
      v31 += 4;
      v29 -= 2;
    }

    while (v29);
    v34 = 0;
    do
    {
      LOBYTE(v56) = 0;
      LoadBlock(a1, &v56, 1uLL);
      *(*(a2 + 88) + v34 + 8) = v56;
      LOBYTE(v56) = 0;
      LoadBlock(a1, &v56, 1uLL);
      *(*(a2 + 88) + v34 + 9) = v56;
      v34 += 16;
    }

    while (v26 != v34);
  }

  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v35 = v56;
  v36 = 8 * v56;
  *(a2 + 64) = luaM_realloc_(*a1, 0, 0, v36);
  *(a2 + 32) = v35;
  if (v35 >= 1)
  {
    v37 = 0;
    do
    {
      *(*(a2 + 64) + v37) = 0;
      v37 += 8;
    }

    while (v36 != v37);
    v38 = 0;
    do
    {
      luaF_newproto(*a1);
      *(*(a2 + 64) + v38) = v39;
      LoadFunction(a1, *(*(a2 + 64) + v38), *(a2 + 104));
      v38 += 8;
    }

    while (v36 != v38);
  }

  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v40 = v56;
  v41 = 4 * v56;
  v42 = luaM_realloc_(*a1, 0, 0, v41);
  *(a2 + 72) = v42;
  *(a2 + 28) = v40;
  LoadBlock(a1, v42, v41);
  LODWORD(v56) = 0;
  LoadBlock(a1, &v56, 4uLL);
  v43 = v56;
  v44 = 16 * v56;
  v45 = luaM_realloc_(*a1, 0, 0, v44);
  *(a2 + 80) = v45;
  *(a2 + 36) = v43;
  if (v43 >= 1)
  {
    v46 = vdupq_n_s64(v43 - 1);
    v47 = (v43 + 1) & 0xFFFFFFFE;
    v48 = xmmword_26ECC7980;
    v49 = (v45 + 16);
    v50 = vdupq_n_s64(2uLL);
    do
    {
      v51 = vmovn_s64(vcgeq_u64(v46, v48));
      if (v51.i8[0])
      {
        *(v49 - 2) = 0;
      }

      if (v51.i8[4])
      {
        *v49 = 0;
      }

      v48 = vaddq_s64(v48, v50);
      v49 += 4;
      v47 -= 2;
    }

    while (v47);
    v52 = 0;
    do
    {
      *(*(a2 + 80) + v52) = LoadString(a1);
      LODWORD(v56) = 0;
      LoadBlock(a1, &v56, 4uLL);
      *(*(a2 + 80) + v52 + 8) = v56;
      LODWORD(v56) = 0;
      LoadBlock(a1, &v56, 4uLL);
      *(*(a2 + 80) + v52 + 12) = v56;
      v52 += 16;
    }

    while (v44 != v52);
  }

  LODWORD(v56) = 0;
  result = LoadBlock(a1, &v56, 4uLL);
  if (v56 >= 1)
  {
    v54 = 0;
    v55 = 16 * v56;
    do
    {
      result = LoadString(a1);
      *(*(a2 + 88) + v54) = result;
      v54 += 16;
    }

    while (v55 != v54);
  }

  return result;
}

uint64_t checkliteral(uint64_t a1, char *__s, const char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = cstdlib_strlen(__s);
  LoadBlock(a1, __s2, v6);
  result = cstdlib_memcmp(__s, __s2, v6);
  if (result)
  {
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), a3);
    return luaD_throw(*a1, 3);
  }

  return result;
}

size_t fchecksize(uint64_t a1, uint64_t a2, const char *a3)
{
  v8 = 0;
  result = LoadBlock(a1, &v8, 1uLL);
  if (v8 != a2)
  {
    v7 = luaO_pushfstring(*a1, "%s size mismatch in", a3);
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), v7);
    return luaD_throw(*a1, 3);
  }

  return result;
}

size_t LoadBlock(uint64_t a1, char *a2, size_t a3)
{
  result = luaZ_read(*(a1 + 8), a2, a3);
  if (result)
  {
    luaO_pushfstring(*a1, "%s: %s precompiled chunk", *(a1 + 24), "truncated");
    v5 = *a1;

    return luaD_throw(v5, 3);
  }

  return result;
}

uint64_t LoadString(uint64_t *a1)
{
  v8 = 0;
  LoadBlock(a1, &v8, 1uLL);
  v2 = v8;
  __n = v8;
  if (v8 == 255)
  {
    LoadBlock(a1, &__n, 8uLL);
    v2 = __n;
    if (__n)
    {
      goto LABEL_3;
    }
  }

  else if (v8)
  {
LABEL_3:
    v3 = *a1;
    v4 = a1[2];
    __n = v2 - 1;
    v5 = luaZ_openspace(v3, v4, v2 - 1);
    LoadBlock(a1, v5, __n);
    return luaS_newlstr(*a1, v5, __n);
  }

  return 0;
}

uint64_t luaopen_utf8(void *a1)
{
  luaL_checkversion_(a1, 136, 503.0);
  lua_createtable(a1, 0, 6);
  luaL_setfuncs(a1, &funcs, 0);
  lua_pushlstring(a1, "[", 0xEuLL);
  lua_setfield(a1, 0xFFFFFFFE, "charpattern");
  return 1;
}

uint64_t byteoffset(void *a1)
{
  v15 = 0;
  v2 = luaL_checklstring(a1, 1, &v15);
  v3 = luaL_checkinteger(a1, 2);
  if (v3 < 0)
  {
    v4 = v15 + 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = luaL_optinteger(a1, 3, v4);
  v6 = v5;
  if (v5 < 0)
  {
    v6 = 0;
    if (v15 < -v5)
    {
LABEL_9:
      luaL_argerror(a1, 3);
      goto LABEL_10;
    }

    v6 = v5 + v15 + 1;
  }

  v7 = v6 - 1;
  if (v6 < 1)
  {
    goto LABEL_9;
  }

  --v6;
  if (v7 > v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3)
  {
    if (v6 >= 1)
    {
      while ((*(v2 + v6) & 0xC0) == 0x80)
      {
        if (v6-- <= 1)
        {
          v6 = 0;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  if ((*(v2 + v6) & 0xC0) == 0x80)
  {
    luaL_error(a1, "initial position is a continuation byte");
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = v3 - 1;
    if (v3 == 1 || v6 >= v15)
    {
      v10 = v3 - 1;
    }

    else
    {
      do
      {
        do
        {
          v9 = *(v2 + 1 + v6++);
        }

        while ((v9 & 0xC0) == 0x80);
        v10 = v8 - 1;
        if (v8 < 2)
        {
          break;
        }

        --v8;
      }

      while (v6 < v15);
    }

    goto LABEL_33;
  }

  if (v6 >= 1)
  {
    while (2)
    {
      v12 = v6;
      do
      {
        v6 = v12 - 1;
        if (v12 <= 1)
        {
          v6 = 0;
          if (v3 != -1)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }

        v13 = *(v2 - 1 + v12--) & 0xC0;
      }

      while (v13 == 128);
      v10 = v3 + 1;
      if (v3 <= -2)
      {
        ++v3;
        if (v6 + 1 > 1)
        {
          continue;
        }
      }

      break;
    }

LABEL_33:
    if (v10)
    {
      goto LABEL_34;
    }

LABEL_36:
    lua_pushinteger(a1, v6 + 1);
    return 1;
  }

LABEL_34:
  lua_pushnil(a1);
  return 1;
}

uint64_t codepoint(void *a1)
{
  v18 = 0;
  v2 = luaL_checklstring(a1, 1, &v18);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v18 >= -v3)
  {
    v4 = v3 + v18 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, v5);
  v7 = v18;
  if (v18 >= -v6)
  {
    v8 = v6 + v18 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v5 <= 0)
  {
    luaL_argerror(a1, 2);
    v7 = v18;
  }

  if (v9 > v7)
  {
    luaL_argerror(a1, 3);
  }

  v10 = v9 - v5;
  if (v9 < v5)
  {
    return 0;
  }

  if (v10 >= 0x7FFFFFFF)
  {
    return luaL_error(a1, "string slice too long");
  }

  luaL_checkstack(a1, v10 + 1, "string slice too long");
  v13 = v2 + v9;
  v14 = (v2 + v5 - 1);
  if (v14 < v13)
  {
    LODWORD(v11) = 0;
    while (1)
    {
      v17 = 0;
      v15 = utf8_decode(v14, &v17);
      if (!v15)
      {
        break;
      }

      v14 = v15;
      lua_pushinteger(a1, v17);
      v11 = (v11 + 1);
      if (v14 >= v13)
      {
        return v11;
      }
    }

    return luaL_error(a1, "invalid UTF-8 code");
  }

  return 0;
}

uint64_t utfchar(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = lua_gettop(a1);
  if (v2 == 1)
  {
    pushutfchar(a1, 1);
  }

  else
  {
    v3 = v2;
    memset(v6, 0, 512);
    luaL_buffinit(a1, v6);
    if (v3 >= 1)
    {
      v4 = 1;
      do
      {
        pushutfchar(a1, v4);
        luaL_addvalue(v6);
        v4 = (v4 + 1);
        --v3;
      }

      while (v3);
    }

    luaL_pushresult(v6);
  }

  return 1;
}

uint64_t utflen(void *a1)
{
  v15 = 0;
  v2 = luaL_checklstring(a1, 1, &v15);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v15 >= -v3)
  {
    v4 = v3 + v15 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, -1);
  v7 = v15;
  if (v15 >= -v6)
  {
    v8 = v6 + v15 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = (v5 - 1);
  if (v5 < 1 || (--v5, v10 > v15))
  {
    luaL_argerror(a1, 2);
    v7 = v15;
    v10 = v5;
  }

  if (v9 > v7)
  {
    luaL_argerror(a1, 3);
  }

  if (v10 >= v9)
  {
    v11 = 0;
LABEL_24:
    v13 = 1;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v12 = utf8_decode(&v10[v2], 0);
      if (!v12)
      {
        break;
      }

      v10 = &v12[-v2];
      ++v11;
      if (&v12[-v2] >= v9)
      {
        goto LABEL_24;
      }
    }

    lua_pushnil(a1);
    v11 = (v10 + 1);
    v13 = 2;
  }

  lua_pushinteger(a1, v11);
  return v13;
}

uint64_t iter_codes(void *a1)
{
  luaL_checklstring(a1, 1, 0);
  lua_pushcclosure(a1, iter_aux, 0);
  lua_pushvalue(a1, 1u);
  lua_pushinteger(a1, 0);
  return 3;
}

char *utf8_decode(char *a1, unsigned int *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while ((v2 & 0x40) != 0)
    {
      ++v5;
      v7 = *++a1;
      LOBYTE(v2) = 2 * v2;
      v4 += 5;
      v6 = v7 & 0x3F | (v6 << 6);
      if ((v7 & 0xC0) != 0x80)
      {
        return 0;
      }
    }

    v3 = 0;
    if (v5 <= 3)
    {
      v2 = ((v2 & 0x3F) << v4) | v6;
      if (HIWORD(v2) <= 0x10u)
      {
        if (v2 > utf8_decode_limits[v5])
        {
          goto LABEL_2;
        }

        return 0;
      }
    }
  }

  else
  {
LABEL_2:
    if (a2)
    {
      *a2 = v2;
    }

    return a1 + 1;
  }

  return v3;
}

uint64_t pushutfchar(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = luaL_checkinteger(a1, a2);
  if (v4 >= 0x110000)
  {
    luaL_argerror(a1, v2);
  }

  return lua_pushfstring(a1, "%U", v4);
}

uint64_t iter_aux(void *a1)
{
  v9 = 0;
  v2 = luaL_checklstring(a1, 1, &v9);
  v3 = lua_tointegerx(a1, 2u, 0);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    v4 = 0;
  }

  else if (v3 <= v9)
  {
    do
    {
      v5 = *(v2 + v3++) & 0xC0;
    }

    while (v5 == 128);
    v4 = v3 - 1;
  }

  if (v4 >= v9)
  {
    return 0;
  }

  v8 = 0;
  v6 = utf8_decode((v2 + v4), &v8);
  if (!v6 || (*v6 & 0xC0) == 0x80)
  {
    return luaL_error(a1, "invalid UTF-8 code");
  }

  lua_pushinteger(a1, v4 + 1);
  lua_pushinteger(a1, v8);
  return 2;
}

uint64_t luaV_tonumber_(_DWORD *a1, double *a2)
{
  if (a1[2] == 19)
  {
    v4 = *a1;
LABEL_3:
    *a2 = v4;
    return 1;
  }

  if ((a1[2] & 0xF) == 4)
  {
    v9 = 0.0;
    v10 = 0;
    v6 = luaO_str2num((*a1 + 24), &v9);
    v7 = *a1;
    v8 = *(*a1 + 8) == 4 ? *(v7 + 11) : *(v7 + 16);
    if (v6 == v8 + 1)
    {
      v4 = *&v9;
      if (v10 != 19)
      {
        v4 = v9;
      }

      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t luaV_tointeger(_DWORD *a1, void *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  while (a1[2] != 19)
  {
    if ((a1[2] & 0xF) == 4)
    {
      v4 = luaO_str2num((*a1 + 24), v8);
      v5 = *a1;
      v6 = *(*a1 + 8) == 4 ? *(v5 + 11) : *(v5 + 16);
      a1 = v8;
      if (v4 == v6 + 1)
      {
        continue;
      }
    }

    return 0;
  }

  *a2 = *a1;
  return 1;
}

double luaV_gettable(void *a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  v9 = 2000;
  while (1)
  {
    if (v8 == 69)
    {
      v10 = *v6;
      v11 = luaH_get(*v6, a3);
      if (*(v11 + 2) || (v12 = *(v10 + 40)) == 0 || (*(v12 + 10) & 1) != 0 || (v13 = luaT_gettm(v12, 0, *(a1[3] + 248))) == 0)
      {
        v14 = *v11;
        *a4 = *v11;
        return *&v14;
      }
    }

    else
    {
      v13 = luaT_gettmbyobj(a1, v6, 0);
      if (!*(v13 + 2))
      {
        luaG_typeerror(a1, v6, "index");
      }
    }

    v8 = *(v13 + 2);
    if ((v8 & 0xF) == 6)
    {
      break;
    }

    v6 = v13;
    if (!--v9)
    {

      luaG_runerror(a1, "gettable chain too long; possible loop");
      return *&v14;
    }
  }

  *&v14 = luaT_callTM(a1, v13, v6, a3, a4, 1).n128_u64[0];
  return *&v14;
}

double luaV_settable(void *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v6 = a2;
  v8 = *(a2 + 8);
  v9 = 2000;
  while (1)
  {
    if (v8 == 69)
    {
      v10 = *v6;
      v11 = luaH_get(*v6, a3);
      if (*(v11 + 2))
      {
        goto LABEL_17;
      }

      v12 = *(v10 + 40);
      if (!v12 || (*(v12 + 10) & 2) != 0 || (v13 = luaT_gettm(v12, 1, *(a1[3] + 256))) == 0)
      {
        if (v11 == &luaO_nilobject_)
        {
          v11 = luaH_newkey(a1, v10, a3);
        }

LABEL_17:
        v14 = *a4;
        *v11 = *a4;
        *(v10 + 10) = 0;
        if ((a4[8] & 0x40) != 0 && (*(v10 + 9) & 4) != 0 && (*(*a4 + 9) & 3) != 0)
        {

          luaC_barrierback_(a1, v10);
        }

        return *&v14;
      }
    }

    else
    {
      v13 = luaT_gettmbyobj(a1, v6, 1u);
      if (!*(v13 + 2))
      {
        luaG_typeerror(a1, v6, "index");
      }
    }

    v8 = *(v13 + 2);
    if ((v8 & 0xF) == 6)
    {
      break;
    }

    v6 = v13;
    if (!--v9)
    {

      luaG_runerror(a1, "settable chain too long; possible loop");
      return *&v14;
    }
  }

  *&v14 = luaT_callTM(a1, v13, v6, a3, a4, 0).n128_u64[0];
  return *&v14;
}

uint64_t luaV_lessthan(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = a2[2];
  if ((v6 & 0xF) == 4)
  {
    if ((a3[2] & 0xF) == 4)
    {
      return l_strcmp(*a2, *a3) >> 31;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xF) != 3 || (v7 = a3[2], (v7 & 0xF) != 3))
  {
LABEL_10:
    v10 = luaT_callorderTM(a1, a2, a3, 0x14u);
    if ((v10 & 0x80000000) != 0)
    {
      luaG_ordererror(a1, a2, a3);
    }

    return v10;
  }

  if (v6 == 19)
  {
    v8 = *a2;
    if (v7 == 19)
    {
      v9 = *a3;
    }

    else
    {
      v13 = *a3;
      if ((v8 + 0x20000000000000) < 0x40000000000001)
      {
        return v13 > v8;
      }

      if (v13 >= 9.22337204e18)
      {
        return 1;
      }

      if (v13 <= -9.22337204e18)
      {
        return 0;
      }

      v9 = v13;
    }

    return v8 < v9;
  }

  else
  {
    v12 = *a2;
    if (v7 == 3)
    {
      return v12 < *a3;
    }

    else
    {
      v14 = *a3;
      if ((*a3 + 0x20000000000000) >= 0x40000000000001)
      {
        if (v12 >= 9.22337204e18)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 >= -9.22337204e18 && v14 <= v12;
        }
      }

      else
      {
        v15 = v12 >= v14;
      }

      return !v15;
    }
  }
}

uint64_t l_strcmp(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  if (*(a1 + 8) == 4)
  {
    v3 = *(a1 + 11);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = (a2 + 24);
  if (*(a2 + 8) == 4)
  {
    v5 = *(a2 + 11);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  while (1)
  {
    result = cstdlib_strcmp(v2, v4);
    if (result)
    {
      break;
    }

    v6 = cstdlib_strlen(v2);
    if (v6 == v5)
    {
      return v5 != v3;
    }

    if (v6 == v3)
    {
      return 0xFFFFFFFFLL;
    }

    v2 += v6 + 1;
    v3 -= v6 + 1;
    v4 += v6 + 1;
    v5 -= v6 + 1;
  }

  return result;
}

uint64_t luaV_lessequal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((v6 & 0xF) == 4)
  {
    if ((*(a3 + 8) & 0xF) == 4)
    {
      return l_strcmp(*a2, *a3) < 1;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xF) != 3 || (v7 = *(a3 + 8), (v7 & 0xF) != 3))
  {
LABEL_10:
    result = luaT_callorderTM(a1, a2, a3, 0x15u);
    if ((result & 0x80000000) != 0)
    {
      *(*(a1 + 32) + 66) |= 0x80u;
      v11 = luaT_callorderTM(a1, a3, a2, 0x14u);
      *(*(a1 + 32) + 66) ^= 0x80u;
      if (v11 < 0)
      {
        luaG_ordererror(a1, a2, a3);
      }

      return v11 == 0;
    }

    return result;
  }

  if (v6 == 19)
  {
    v8 = *a2;
    if (v7 == 19)
    {
      v9 = *a3;
      return v8 <= v9;
    }

    v13 = *a3;
    if ((v8 + 0x20000000000000) >= 0x40000000000001)
    {
      if (v13 >= 9.22337204e18)
      {
        return 1;
      }

      else
      {
        if (v13 >= -9.22337204e18)
        {
          v9 = v13;
          return v8 <= v9;
        }

        return 0;
      }
    }

    else
    {
      return v13 >= v8;
    }
  }

  else
  {
    v12 = *a2;
    if (v7 == 3)
    {
      return v12 <= *a3;
    }

    else
    {
      v14 = *a3;
      if ((*a3 + 0x20000000000000) >= 0x40000000000001)
      {
        if (v12 >= 9.22337204e18)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 > -9.22337204e18 && v14 < v12;
        }
      }

      else
      {
        v15 = v12 > v14;
      }

      return !v15;
    }
  }
}