void add_name_to_table(uint64_t a1, void *__src, size_t __n, unsigned int a4, int a5)
{
  v6 = __n;
  v9 = *(a1 + 72);
  v10 = __n;
  if (a5)
  {
    v11 = a5;
    v12 = __n + 2;
    do
    {
      v13 = memcmp(__src, v9 + 2, v10);
      if (v13)
      {
        if (v13 < 0)
        {
          goto LABEL_9;
        }
      }

      else if (v9[v12])
      {
LABEL_9:
        _pcre2_memmove8(&v9[*(a1 + 178)], v9, v11 * *(a1 + 178));
        break;
      }

      v9 += *(a1 + 178);
      --v11;
    }

    while (v11);
  }

  *v9 = bswap32(a4) >> 16;
  v14 = v9 + 2;
  memcpy(v14, __src, v10);
  v15 = *(a1 + 178) - v6 - 2;

  bzero(&v14[v10], v15);
}

unsigned __int8 *find_recurse(unsigned __int8 *result, int a2)
{
  while (1)
  {
    while (1)
    {
      v2 = *result;
      if (v2 <= 0x5D)
      {
        break;
      }

      if (*result <= 0x74u)
      {
        if (v2 - 94 < 3)
        {
          goto LABEL_11;
        }

        if (v2 == 97)
        {
          goto LABEL_15;
        }

        if (v2 == 112)
        {
          v6 = *(result + 1);
          goto LABEL_20;
        }

LABEL_22:
        result += _pcre2_OP_lengths_8[*result];
        if (a2 && v2 - 29 <= 0x37)
        {
          v7 = *(result - 1);
          if (v7 >= 0xC0)
          {
            result += _pcre2_utf8_table4[v7 & 0x3F];
          }
        }
      }

      else
      {
        v3 = v2 - 117;
        if (v3 > 0x2C)
        {
          goto LABEL_22;
        }

        if (((1 << (v2 - 117)) & 0x155000000000) != 0)
        {
          v4 = result[1];
          goto LABEL_17;
        }

        if (v3 != 2)
        {
          if (v2 == 117)
          {
            return result;
          }

          goto LABEL_22;
        }

        v6 = *(result + 5);
LABEL_20:
        result += __rev16(v6);
      }
    }

    if (v2 - 85 >= 6)
    {
      break;
    }

LABEL_11:
    v5 = result[1];
LABEL_16:
    v4 = 2 * ((v5 - 15) < 2);
LABEL_17:
    result += v4 + _pcre2_OP_lengths_8[*result];
  }

  if (v2 - 91 < 3)
  {
LABEL_15:
    v5 = result[3];
    goto LABEL_16;
  }

  if (*result)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t is_anchored(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  for (i = *a1; ; i = 0x78u)
  {
    significant_code = first_significant_code(&v9[_pcre2_OP_lengths_8[i]], 0);
    result = 0;
    v13 = *significant_code;
    if (v13 <= 0x81)
    {
      break;
    }

    v14 = v13 + 122;
    if (v13 - 134 <= 9)
    {
      if (((1 << v14) & 0x63) == 0)
      {
        if (((1 << v14) & 0x18C) != 0)
        {
          v15 = __rev16(*(significant_code + 3));
          if (v15 >= 0x20)
          {
            v16 = 1;
          }

          else
          {
            v16 = 1 << v15;
          }

          v17 = v16 | a2;
          v18 = significant_code;
          goto LABEL_32;
        }

        if (significant_code[__rev16(*(significant_code + 1))] != 120)
        {
          return 0;
        }
      }

      v18 = significant_code;
      v17 = a2;
LABEL_32:
      v21 = a3;
      v20 = a4;
      goto LABEL_33;
    }

    if (v13 == 130)
    {
      goto LABEL_29;
    }

    if (v13 != 132)
    {
      return result;
    }

    v20 = (a4 + 1);
    v18 = significant_code;
    v17 = a2;
    v21 = a3;
LABEL_33:
    v22 = a5;
LABEL_34:
    result = is_anchored(v18, v17, v21, v20, v22);
    if (!result)
    {
      return result;
    }

LABEL_35:
    v9 += __rev16(*(v9 + 1));
    if (*v9 != 120)
    {
      return 1;
    }
  }

  if (*significant_code <= 0x54u)
  {
    if (v13 - 1 >= 2 && v13 != 27)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (v13 - 85 >= 2 && v13 != 94)
  {
    if (v13 != 126)
    {
      return result;
    }

LABEL_29:
    v18 = significant_code;
    v17 = a2;
    v21 = a3;
    v20 = a4;
    v22 = 1;
    goto LABEL_34;
  }

  if (significant_code[1] == 13)
  {
    result = 0;
    if (a4 > 0 || (*(a3 + 252) & a2) != 0)
    {
      return result;
    }

    if (!(*(a3 + 288) | a5) && (*(a3 + 205) & 0x80) == 0)
    {
      goto LABEL_35;
    }
  }

  return 0;
}

uint64_t find_firstassertedcu(unsigned __int8 *a1, int *a2, unsigned int a3)
{
  v5 = a1;
  v6 = 0;
  v7 = -1;
  *a2 = -1;
  for (i = *a1; ; i = 120)
  {
    v20 = 0;
    if ((i - 136) <= 5 && ((1 << (i + 120)) & 0x23) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 2 * (i == 142);
    }

    significant_code = first_significant_code(&v5[v9 + 3], 1);
    v11 = *significant_code;
    if (v11 <= 0x35)
    {
      if (*significant_code > 0x28u)
      {
        if (v11 - 48 < 2)
        {
          goto LABEL_44;
        }

        if (v11 == 41)
        {
          significant_code += 2;
          if (!a3)
          {
            return 0;
          }

LABEL_35:
          v18 = significant_code[1];
          if (v7 < 0)
          {
            v7 = 0;
LABEL_50:
            v6 = v18;
            goto LABEL_51;
          }

          goto LABEL_47;
        }

        if (v11 != 43)
        {
          return 0;
        }
      }

      else if (v11 - 35 >= 2 && v11 != 29)
      {
        if (v11 != 30)
        {
          return 0;
        }

LABEL_44:
        if (!a3 || significant_code[1] < 0)
        {
          return 0;
        }

        v18 = significant_code[1];
        if (v7 < 0)
        {
          v7 = 1;
          goto LABEL_50;
        }

LABEL_47:
        if (v6 != v18)
        {
          return 0;
        }

        goto LABEL_51;
      }

      if (!a3)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v11 - 126 > 0x10 || ((1 << (v11 - 126)) & 0x18FD1) == 0)
    {
      if (v11 == 54)
      {
        significant_code += 2;
      }

      else if (v11 != 56)
      {
        return 0;
      }

      goto LABEL_44;
    }

    v14 = v11 == 126 || v11 == 130;
    v15 = v14 ? a3 + 1 : a3;
    firstassertedcu = find_firstassertedcu(significant_code, &v20, v15);
    if (v20 < 0)
    {
      break;
    }

    if (v7 < 0)
    {
      v6 = firstassertedcu;
      v7 = v20;
    }

    else if (v6 != firstassertedcu || v7 != v20)
    {
      return 0;
    }

LABEL_51:
    v5 += __rev16(*(v5 + 1));
    if (*v5 != 120)
    {
      *a2 = v7;
      return v6;
    }
  }

  return 0;
}

uint64_t is_startline(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  for (i = *a1; ; i = 0x78u)
  {
    significant_code = first_significant_code(&v9[_pcre2_OP_lengths_8[i]], 0);
    v12 = *significant_code;
    if (v12 != 138)
    {
      goto LABEL_16;
    }

    v14 = significant_code + 3;
    v13 = significant_code[3];
    if (v13 == 119)
    {
      v15 = __rev16(*(significant_code + 4));
      goto LABEL_7;
    }

    if (v13 == 118)
    {
      v15 = 6;
LABEL_7:
      v14 += v15;
      v13 = *v14;
    }

    v16 = v13 - 144;
    v17 = v16 > 0x12;
    v18 = (1 << v16) & 0x4003F;
    if (!v17 && v18 != 0)
    {
      return 0;
    }

    result = is_startline(v14, a2, a3, a4, 1);
    if (!result)
    {
      return result;
    }

    do
    {
      v14 += __rev16(*(v14 + 1));
    }

    while (*v14 == 120);
    significant_code = first_significant_code(v14 + 3, 0);
    v12 = *significant_code;
LABEL_16:
    if (v12 <= 129)
    {
      break;
    }

    v21 = v12 + 124;
    if ((v12 - 132) <= 0xA)
    {
      if (((1 << v21) & 0x18C) != 0)
      {
        v24 = a2;
LABEL_35:
        v25 = a3;
        v26 = a4;
LABEL_36:
        v27 = a5;
LABEL_37:
        result = is_startline(significant_code, v24, v25, v26, v27);
        if (!result)
        {
          return result;
        }

        goto LABEL_38;
      }

      if (((1 << v21) & 0x630) != 0)
      {
        v22 = __rev16(*(significant_code + 3));
        if (v22 >= 0x20)
        {
          v23 = 1;
        }

        else
        {
          v23 = 1 << v22;
        }

        v24 = v23 | a2;
        goto LABEL_35;
      }

      if (v12 == 132)
      {
        v26 = (a4 + 1);
        v24 = a2;
        v25 = a3;
        goto LABEL_36;
      }
    }

    if (v12 == 130)
    {
LABEL_27:
      v24 = a2;
      v25 = a3;
      v26 = a4;
      v27 = 1;
      goto LABEL_37;
    }

LABEL_43:
    if ((v12 - 29) < 0xFFFFFFFE)
    {
      return 0;
    }

LABEL_38:
    v9 += __rev16(*(v9 + 1));
    if (*v9 != 120)
    {
      return 1;
    }
  }

  if ((v12 - 85) >= 2 && v12 != 94)
  {
    if (v12 == 126)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  if (significant_code[1] == 12)
  {
    result = 0;
    if (a4 > 0 || (*(a3 + 252) & a2) != 0)
    {
      return result;
    }

    if (!(*(a3 + 288) | a5) && (*(a3 + 205) & 0x80) == 0)
    {
      goto LABEL_38;
    }
  }

  return 0;
}

_DWORD *manage_callouts(int a1, void *a2, int a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2)
  {
    v5[2] = a1 - *(a5 + 56) - v5[1];
  }

  if (a3)
  {
    if (v5)
    {
      v6 = v5 == a4 - 4;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && v5[3] == 255)
    {
      v7 = a4;
      a4 = v5;
    }

    else
    {
      v7 = a4 + 4;
      *a4 = -2147090432;
      *(a4 + 1) = 0xFF00000000;
    }

    v8 = a4;
    a4[1] = a1 - *(a5 + 56);
    a4 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return a4;
}

uint64_t get_ucp(unint64_t *a1, _DWORD *a2, _WORD *a3, _WORD *a4, _DWORD *a5, uint64_t a6)
{
  *&v26[31] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *a1;
  v9 = *(a6 + 64);
  if (*a1 >= v9)
  {
    goto LABEL_14;
  }

  v13 = *v8++;
  v12 = v13;
  *a2 = 0;
  if (v13 == 123)
  {
    if (v8 < v9)
    {
      if (*v8 == 94)
      {
        *a2 = 1;
        v8 = v7 + 2;
      }

      if (v8 < v9)
      {
        v14 = 0;
        v15 = v8 + 1;
        v16 = &v25;
        do
        {
          v8 = v15;
          v17 = *(v15 - 1);
          if (!v17)
          {
            break;
          }

          if (v17 == 125)
          {
            goto LABEL_17;
          }

          *v16++ = v17;
          if (v14 > 0x1D)
          {
            break;
          }

          v15 = v8 + 1;
          ++v14;
        }

        while (v8 < v9);
      }
    }

    goto LABEL_14;
  }

  if ((*(*(a6 + 32) + v12) & 2) == 0)
  {
LABEL_14:
    v18 = 0;
    *a5 = 146;
    *a1 = v8;
    return v18;
  }

  v25 = v12;
  v16 = v26;
LABEL_17:
  *v16 = 0;
  *a1 = v8;
  v20 = 201;
  v21 = 0;
  while (1)
  {
    v22 = (v20 + v21) >> 1;
    v23 = (&_pcre2_utt_8 + 6 * v22);
    v24 = _pcre2_strcmp_8(&v25, &_pcre2_utt_names_8[*v23]);
    if (!v24)
    {
      break;
    }

    if (v24 <= 0)
    {
      v20 = (v20 + v21) >> 1;
    }

    else
    {
      v21 = v22 + 1;
    }

    if (v21 >= v20)
    {
      v18 = 0;
      *a5 = 147;
      return v18;
    }
  }

  *a3 = v23[1];
  *a4 = v23[2];
  return 1;
}

uint64_t read_name(unsigned __int8 **a1, unint64_t a2, int a3, unsigned __int8 a4, void *a5, unsigned __int8 **a6, _DWORD *a7, int *a8, uint64_t a9)
{
  v9 = *a1;
  v11 = *a1 + 1;
  v10 = **a1;
  if (v11 >= a2)
  {
    v14 = 0;
    if (v10 == 42)
    {
      v15 = 160;
    }

    else
    {
      v15 = 162;
    }

    goto LABEL_36;
  }

  *a6 = v11;
  *a5 = &v11[-*(a9 + 56)];
  if (!a3 || v10 == 42)
  {
    if (v10 != 42 && *v11 - 48 <= 9)
    {
      goto LABEL_35;
    }

    v16 = 1;
    while ((*(*(a9 + 32) + v9[v16]) & 0x10) != 0)
    {
      if (a2 - v9 == ++v16)
      {
        v16 = a2 - v9;
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

  v12 = *v11;
  if (v12 >= 0xC0)
  {
    v13 = v9[2] & 0x3F;
    if ((v12 & 0x20) == 0)
    {
      v12 = v9[2] & 0x3F | ((v12 & 0x1F) << 6);
      goto LABEL_34;
    }

    if ((v12 & 0x10) != 0)
    {
      if ((v12 & 8) != 0)
      {
        v19 = v9[3] & 0x3F;
        v20 = v9[4] & 0x3F;
        v21 = v9[5] & 0x3F;
        if ((v12 & 4) == 0)
        {
          v12 = ((v12 & 3) << 24) | (v13 << 18) | (v19 << 12) | (v20 << 6) | v21;
          goto LABEL_34;
        }

        v17 = ((v12 & 1) << 30) | (v13 << 24) | (v19 << 18) | (v20 << 12) | (v21 << 6);
        v18 = v9[6];
      }

      else
      {
        v17 = ((v12 & 7) << 18) | (v13 << 12) | ((v9[3] & 0x3F) << 6);
        v18 = v9[4];
      }
    }

    else
    {
      v17 = ((v12 & 0xF) << 12) | (v13 << 6);
      v18 = v9[3];
    }

    v12 = v17 & 0xFFFFFFC0 | v18 & 0x3F;
  }

LABEL_34:
  v22 = BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v12 & 0x7F | (_pcre2_ucd_stage1_8[v12 >> 7] << 7)]]);
  if (v22 == 13)
  {
LABEL_35:
    v14 = 0;
    v15 = 144;
    goto LABEL_36;
  }

  v16 = 1;
  while (2)
  {
    if (v22 == 13 || v12 == 95 || _pcre2_ucp_gentype_8[v22] == 1)
    {
      v24 = &v9[v16 + 2];
      do
      {
        ++v16;
        if ((v24 - 1) >= a2)
        {
          goto LABEL_16;
        }

        v12 = *(v24++ - 1);
      }

      while ((v12 & 0xC0) == 0x80);
      if (v12 >= 0xC0)
      {
        v25 = *(v24 - 1) & 0x3F;
        if ((v12 & 0x20) != 0)
        {
          if ((v12 & 0x10) != 0)
          {
            if ((v12 & 8) != 0)
            {
              v28 = *v24 & 0x3F;
              v29 = v24[1] & 0x3F;
              v30 = v24[2] & 0x3F;
              if ((v12 & 4) == 0)
              {
                v12 = ((v12 & 3) << 24) | (v25 << 18) | (v28 << 12) | (v29 << 6) | v30;
                goto LABEL_56;
              }

              v26 = ((v12 & 1) << 30) | (v25 << 24) | (v28 << 18) | (v29 << 12) | (v30 << 6);
              v27 = v24[3];
            }

            else
            {
              v26 = ((v12 & 7) << 18) | (v25 << 12) | ((*v24 & 0x3F) << 6);
              v27 = v24[1];
            }
          }

          else
          {
            v26 = ((v12 & 0xF) << 12) | (v25 << 6);
            v27 = *v24;
          }

          v12 = v26 & 0xFFFFFFC0 | v27 & 0x3F;
          goto LABEL_56;
        }

        v12 = *(v24 - 1) & 0x3F | ((v12 & 0x1F) << 6);
      }

LABEL_56:
      v22 = BYTE1(_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v12 & 0x7F | (_pcre2_ucd_stage1_8[v12 >> 7] << 7)]]);
      continue;
    }

    break;
  }

LABEL_16:
  v11 = &v9[v16];
  if (v16 >= 34)
  {
    v14 = 0;
    v15 = 148;
LABEL_36:
    *a8 = v15;
    goto LABEL_37;
  }

  *a7 = v16 - 1;
  if (v10 != 42)
  {
    if (v16 == 1)
    {
      v14 = 0;
      v15 = 162;
      goto LABEL_36;
    }

    if (v11 >= a2 || *v11 != a4)
    {
      v14 = 0;
      v15 = 142;
      goto LABEL_36;
    }

    ++v11;
  }

  v14 = 1;
LABEL_37:
  *a1 = v11;
  return v14;
}

uint64_t check_posix_syntax(unsigned __int8 *a1, uint64_t a2, unsigned __int8 **a3)
{
  v4 = a1 + 1;
  v3 = *a1;
  if (a2 - (a1 + 1) < 2)
  {
    return 0;
  }

  while (1)
  {
    v5 = a1[1];
    if (v5 == 91)
    {
      break;
    }

    if (v5 != 92)
    {
      if (v5 == 93)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if ((a1[2] & 0xFE) != 0x5C)
    {
      goto LABEL_9;
    }

    v4 = a1 + 2;
LABEL_11:
    a1 = v4++;
    if (a2 - v4 <= 1)
    {
      return 0;
    }
  }

  if (a1[2] == v3)
  {
    return 0;
  }

LABEL_9:
  if (v5 != v3 || a1[2] != 93)
  {
    goto LABEL_11;
  }

  *a3 = v4;
  return 1;
}

uint64_t check_posix_name(unsigned __int8 *a1, unsigned int a2)
{
  v4 = 0;
  v5 = a2;
  v6 = "alpha";
  while (1)
  {
    v7 = posix_name_lengths[v4];
    if (v7 == a2 && !_pcre2_strncmp_8(a1, v6, v5))
    {
      break;
    }

    v6 += v7 + 1;
    if (++v4 == 14)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t set_lookbehind_lengths(unsigned int **a1, int *a2, _DWORD *a3, void *a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *a1 + 2;
  v12 = *v11 | ((*a1)[1] << 32);
  while (1)
  {
    *a1 = v11 + 1;
    branchlength = get_branchlength(a1, a2, a3, a4, a5);
    if (branchlength < 0)
    {
      break;
    }

    if (branchlength > *(a5 + 276))
    {
      *(a5 + 276) = branchlength;
    }

    *v10 |= branchlength;
    v11 = *a1;
    v10 = *a1;
    if (**a1 != -2147418112)
    {
      return 1;
    }
  }

  if (!*a2)
  {
    *a2 = 125;
  }

  result = 0;
  if (*(a5 + 168) == -1)
  {
    *(a5 + 168) = v12;
  }

  return result;
}

uint64_t get_branchlength(unsigned int **a1, int *a2, _DWORD *a3, void *a4, uint64_t a5)
{
  v6 = a1;
  v7 = *a1;
  v60 = v7;
  v8 = (*a3)++;
  if (v8 > 2000)
  {
    v9 = 135;
    goto LABEL_86;
  }

  v13 = 0;
  v14 = 0;
  v58 = 0;
  v59 = 0;
  v15 = a5 + 88;
  while (2)
  {
    v57 = 0;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      v17 = 1;
      goto LABEL_6;
    }

    v19 = 0;
    v18 = 0;
    v17 = 1;
    switch((v16 + 2147418112) >> 16)
    {
      case 0u:
      case 0x18u:
        goto LABEL_92;
      case 1u:
      case 0x19u:
      case 0x21u:
        goto LABEL_50;
      case 2u:
        if ((*(a5 + 205) & 2) != 0 || (*(a5 + 210) & 0x20) != 0)
        {
          goto LABEL_95;
        }

        v31 = *v7;
        if (*v7 > 9u)
        {
          goto LABEL_29;
        }

        v32 = *(v15 + 8 * v31);
        goto LABEL_30;
      case 3u:
        if ((*(a5 + 205) & 2) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_95;
      case 4u:
        goto LABEL_69;
      case 5u:
        v18 = 0;
        v21 = v7 + 3;
        goto LABEL_12;
      case 6u:
        v18 = 0;
        v21 = v7 + 5;
        goto LABEL_12;
      case 7u:
        v19 = *v7;
        goto LABEL_50;
      case 8u:
      case 0x15u:
      case 0x2Bu:
      case 0x2Du:
      case 0x2Fu:
      case 0x31u:
        goto LABEL_7;
      case 9u:
      case 0xDu:
        v60 = parsed_skip(v7, 1);
        if (v60)
        {
          goto LABEL_6;
        }

        goto LABEL_93;
      case 0xBu:
      case 0x16u:
        goto LABEL_6;
      case 0xEu:
        v19 = 0;
LABEL_50:
        v20 = v7 + 1;
        goto LABEL_51;
      case 0xFu:
        v41 = parsed_skip(v7 + 1, 2);
        v18 = 0;
        v60 = v41;
        goto LABEL_7;
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        v19 = 0;
        v20 = v7 + 4;
LABEL_51:
        v60 = v20;
        grouplength = get_grouplength(&v60, 1, a2, a3, v19, a4, a5);
        if ((grouplength & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        return 0xFFFFFFFFLL;
      case 0x17u:
        v51 = *v7;
        if (v51 == 17 || v51 == 22)
        {
          return 0xFFFFFFFFLL;
        }

        if ((v51 - 6) > 0x10)
        {
          goto LABEL_18;
        }

        if (v51 == 14 && (*(a5 + 204) & 0x80000) != 0)
        {
          v9 = 136;
          goto LABEL_86;
        }

        if ((v51 - 15) <= 1)
        {
LABEL_69:
          v60 = v7 + 1;
        }

        goto LABEL_6;
      case 0x1Au:
        v18 = 0;
        v21 = v7 + 1;
        goto LABEL_12;
      case 0x1Fu:
        LODWORD(v31) = *v7;
LABEL_29:
        v34 = v7[2];
        v33 = v7 + 2;
        v32 = v34 | (*(v33 - 1) << 32);
        v60 = v33;
        goto LABEL_30;
      case 0x20u:
LABEL_54:
        v55 = v15;
        v56 = a4;
        v43 = v7[3];
        v42 = v7 + 3;
        v44 = *(a5 + 192);
        v45 = *(v42 - 2);
        v32 = v43 | (*(v42 - 1) << 32);
        v60 = v42;
        v46 = *(a5 + 176);
        if (!v46)
        {
          goto LABEL_89;
        }

        v47 = v6;
        v48 = 0;
        v54 = v16 & 0xFFFF0000;
        v49 = *(a5 + 56);
        v50 = (v44 + 14);
        while (2)
        {
          if (v45 != *(v50 - 1))
          {
            goto LABEL_59;
          }

          if (_pcre2_strncmp_8((v49 + v32), *(v50 - 7), v45))
          {
            v46 = *(a5 + 176);
LABEL_59:
            ++v48;
            v50 += 8;
            if (v48 >= v46)
            {
              goto LABEL_89;
            }

            continue;
          }

          break;
        }

        LODWORD(v31) = *(v50 - 3);
        if (!v31)
        {
LABEL_89:
          *a2 = 115;
          *(a5 + 168) = v32;
          return 0xFFFFFFFFLL;
        }

        if (v54 == -2145320960)
        {
          v6 = v47;
          v15 = v55;
          a4 = v56;
        }

        else
        {
          v6 = v47;
          v15 = v55;
          a4 = v56;
          if (*v50 || (*(a5 + 210) & 0x20) != 0)
          {
            goto LABEL_95;
          }
        }

LABEL_30:
        if (v31 > *(a5 + 212))
        {
          *(a5 + 168) = v32;
          v9 = 115;
          goto LABEL_86;
        }

        if (!v31)
        {
          goto LABEL_95;
        }

        v35 = *(a5 + 224);
        v36 = *v35;
        if (*v35 != 0x80000000)
        {
          do
          {
            if ((v36 & 0xFFFF0000) == 0x80050000)
            {
              ++v35;
            }

            else if (v36 == (v31 | 0x80080000))
            {
              break;
            }

            v37 = v35[1];
            ++v35;
            v36 = v37;
          }

          while (v37 != 0x80000000);
        }

        v57 = v35;
        v38 = parsed_skip(v35 + 1, 2);
        if (!v38)
        {
LABEL_93:
          v9 = 190;
          goto LABEL_86;
        }

        if (v60 > v35 && v60 < v38)
        {
          goto LABEL_95;
        }

        if (!a4)
        {
LABEL_44:
          v58 = a4;
          v59 = v35;
          v57 = v35 + 1;
          grouplength = get_grouplength(&v57, 0, a2, a3, v31, &v58, a5);
          if (grouplength < 0)
          {
            if (!*a2)
            {
              goto LABEL_95;
            }

            return 0xFFFFFFFFLL;
          }

LABEL_52:
          v17 = grouplength;
LABEL_6:
          v18 = v17;
          if ((v14 ^ 0x7FFFFFFF) < v17)
          {
            goto LABEL_85;
          }

LABEL_7:
          v14 = (v18 + v14);
          if (v14 >= 0x10000)
          {
LABEL_85:
            v9 = 187;
            goto LABEL_86;
          }

          v7 = ++v60;
          v13 = v18;
          continue;
        }

        v39 = a4;
        while (v39[1] != v35)
        {
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_44;
          }
        }

LABEL_95:
        v9 = 125;
LABEL_86:
        *a2 = v9;
        return 0xFFFFFFFFLL;
      case 0x22u:
      case 0x23u:
      case 0x26u:
        v26 = check_lookbehinds(v7 + 1, &v60, a4, a5);
        *a2 = v26;
        if (v26)
        {
          return 0xFFFFFFFFLL;
        }

        HIDWORD(v28) = v60[1] + 2144075776;
        LODWORD(v28) = HIDWORD(v28);
        v27 = v28 >> 16;
        v29 = v27 >= 9;
        v30 = v27 - 9;
        if (v29)
        {
          if (v30 >= 3)
          {
LABEL_18:
            v18 = 0;
          }

          else
          {
            v18 = 0;
            v21 = v60 + 3;
LABEL_12:
            v60 = v21;
          }
        }

        else
        {
          v18 = 0;
          ++v60;
        }

        goto LABEL_7;
      case 0x24u:
      case 0x25u:
      case 0x27u:
        if (!set_lookbehind_lengths(&v60, a2, a3, a4, a5))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_18;
      case 0x28u:
      case 0x2Cu:
      case 0x2Eu:
      case 0x30u:
      case 0x32u:
        v18 = 0;
        v21 = &v7[v7[1] + 1];
        goto LABEL_12;
      case 0x29u:
      case 0x2Au:
        v7 = parsed_skip(v7, 0);
        if (!v7)
        {
          goto LABEL_93;
        }

LABEL_92:
        *v6 = v7;
        return v14;
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
        v23 = v7[2];
        v22 = v7 + 2;
        v24 = *(v22 - 1);
        if (v24 != v23)
        {
          goto LABEL_95;
        }

        v25 = v24 - 1;
        if (v24 == 1)
        {
          v17 = 0;
        }

        else if (v24)
        {
          if (v13 && 0x7FFFFFFF / v13 < v25)
          {
            goto LABEL_85;
          }

          v17 = v25 * v13;
        }

        else
        {
          v17 = 0;
          LODWORD(v14) = v14 - v13;
        }

        v60 = v22;
        goto LABEL_6;
      default:
        goto LABEL_95;
    }
  }
}

unsigned int *parsed_skip(unsigned int *a1, int a2)
{
  v2 = 0;
  while (2)
  {
    v3 = *a1;
    v4 = 0;
    switch(WORD1(v3) ^ 0x8000)
    {
      case 0:
        return v4;
      case 1:
        v4 = a1;
        if (v2 | a2)
        {
          goto LABEL_5;
        }

        return v4;
      case 2:
      case 8:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x15:
      case 0x1A:
      case 0x22:
      case 0x23:
      case 0x24:
      case 0x25:
      case 0x26:
      case 0x27:
      case 0x28:
        ++v2;
        goto LABEL_5;
      case 3:
        a1 += 2 * ((*a1 & 0xFFFE) > 9);
        goto LABEL_5;
      case 0xD:
        v4 = a1;
        if (a2 == 1)
        {
          return v4;
        }

        goto LABEL_5;
      case 0x18:
        v6 = a1 + 1;
        if (*a1 - 15 > 1)
        {
          v6 = a1;
        }

        if (*a1 - 27 >= 2)
        {
          a1 = v6;
        }

        else
        {
          a1 += 3;
        }

        goto LABEL_5;
      case 0x19:
        if (!v2)
        {
          return a1;
        }

        --v2;
LABEL_5:
        v5 = (v3 >> 16) & 0x7FFF;
        if (v5 <= 0x3F)
        {
          a1 += meta_extra_lengths[v5];
LABEL_7:
          ++a1;
          continue;
        }

        return 0;
      case 0x29:
      case 0x2D:
      case 0x2F:
      case 0x31:
      case 0x33:
        a1 += a1[1];
        goto LABEL_5;
      default:
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_7;
    }
  }
}

uint64_t get_grouplength(unsigned int **a1, int a2, int *a3, _DWORD *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  if (a5 < 1 || (*(a7 + 210) & 0x20) != 0)
  {
    goto LABEL_5;
  }

  LODWORD(v13) = *(*(a7 + 240) + 4 * a5);
  if ((v13 & 0x40000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v13 & 0x80000000) == 0)
  {
LABEL_5:
    branchlength = get_branchlength(a1, a3, a4, a6, a7);
    if ((branchlength & 0x80000000) == 0)
    {
      v15 = -1;
      do
      {
        v13 = branchlength;
        if (v15 != -1 && v15 != branchlength)
        {
          break;
        }

        if (**a1 == -2145845248)
        {
          if (a5 >= 1)
          {
            *(*(a7 + 240) + 4 * a5) |= branchlength | 0x80000000;
          }

          return v13;
        }

        ++*a1;
        branchlength = get_branchlength(a1, a3, a4, a6, a7);
        v15 = v13;
      }

      while ((branchlength & 0x80000000) == 0);
    }

    if (a5 >= 1)
    {
      *(*(a7 + 240) + 4 * a5) |= 0x40000000u;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a1 = parsed_skip(*a1, 2);
  }

  return v13;
}

uint64_t add_list_to_class(uint64_t result, _BYTE **a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  if (v5 != -1)
  {
    v9 = result;
    do
    {
      v10 = -1;
      do
      {
        v11 = (v10 + 2);
        ++v10;
      }

      while (v5 + v10 + 1 == a5[v11]);
      v12 = &a5[v11];
      *(a4 + 264) = v5;
      v13 = a5[v10];
      *(a4 + 268) = v13;
      result = add_to_class_internal(v9, a2, a3, a4, *a5, v13, v5);
      v5 = *v12;
      a5 = v12;
    }

    while (v5 != -1);
  }

  return result;
}

uint64_t add_not_list_to_class(uint64_t a1, _BYTE **a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v10 = *a5;
  if (!v10 || (*(a4 + 264) = 0, *(a4 + 268) = v10 - 1, result = add_to_class_internal(a1, a2, a3, a4, 0, v10 - 1, v10), LODWORD(v10) = *a5, *a5 != -1))
  {
    if ((a3 & 0x80000) != 0)
    {
      v12 = 1114111;
    }

    else
    {
      v12 = -1;
    }

    for (i = (a5 + 1); ; ++i)
    {
      v14 = *i;
      v15 = v10 + 1;
      if (*i != v10 + 1)
      {
        v16 = v14 == -1 ? v12 : v14 - 1;
        *(a4 + 264) = v15;
        *(a4 + 268) = v16;
        result = add_to_class_internal(a1, a2, a3, a4, v15, v16, (v14 - 1));
        v14 = *i;
        if (*i == -1)
        {
          break;
        }
      }

      LODWORD(v10) = v14;
    }
  }

  return result;
}

uint64_t find_dupname_details(unsigned __int8 *a1, unsigned int a2, unsigned int *a3, int *a4, _DWORD *a5, uint64_t a6)
{
  if (!*(a6 + 176))
  {
    goto LABEL_18;
  }

  v11 = 0;
  v12 = a2 + 2;
  v13 = *(a6 + 72);
  v14 = a2;
  while (_pcre2_strncmp_8(a1, v13 + 2, v14) || v13[v12])
  {
    v13 += *(a6 + 178);
    ++v11;
    v15 = *(a6 + 176);
    if (v11 >= v15)
    {
      goto LABEL_8;
    }
  }

  v15 = *(a6 + 176);
LABEL_8:
  if (v11 < v15)
  {
    *a3 = v11;
    v16 = v11 + 1;
    v17 = 1;
    do
    {
      v18 = v17;
      v19 = __rev16(*v13);
      v20 = 1 << v19;
      if (v19 >= 0x20)
      {
        v20 = 1;
      }

      v21 = *(a6 + 248);
      *(a6 + 252) |= v20;
      if (v19 > v21)
      {
        *(a6 + 248) = v19;
      }

      if (v16 >= *(a6 + 176))
      {
        break;
      }

      v13 += *(a6 + 178);
      if (_pcre2_strncmp_8(a1, v13 + 2, v14))
      {
        break;
      }

      ++v16;
      v17 = v18 + 1;
    }

    while (!v13[v14 + 2]);
    *a4 = v18;
    return 1;
  }

  else
  {
LABEL_18:
    result = 0;
    *a5 = 153;
    *(a6 + 168) = &a1[-*(a6 + 56)];
  }

  return result;
}

uint64_t add_to_class_internal@<X0>(uint64_t a1@<X0>, _BYTE **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, unsigned int a6@<W5>, unint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  if (a6 >= 0xFF)
  {
    v11 = 255;
  }

  else
  {
    v11 = a6;
  }

  if ((a3 & 8) == 0)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_52;
  }

  if ((a3 & 0xA0000) == 0)
  {
    if (v11 >= a5)
    {
      v32 = a5;
      v33 = v11 + 1;
      do
      {
        v34 = *(*(a4 + 16) + v32);
        *(a1 + (v34 >> 3)) |= 1 << (v34 & 7);
        ++v32;
      }

      while (v33 != v32);
      v12 = v33 - a5;
      goto LABEL_52;
    }

    goto LABEL_5;
  }

  v12 = 0;
  a3 = a3 & 0xFFFFFFF7;
  v13 = a5;
LABEL_8:
  v41 = v13 - 1;
  v45 = v13;
LABEL_9:
  v42 = v7 + 1;
  while (v8 <= v7)
  {
    v14 = v8;
    while (1)
    {
      a7 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[(v14 - (a7 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v14 / 128] << 7))]];
      if (*(a7 + 3))
      {
        v8 = v14 + 1;
        v15 = &_pcre2_ucd_caseless_sets_8[*(a7 + 3)];
        v16 = *v15;
        if (*v15 == -1)
        {
          v17 = 0;
        }

        else
        {
          v43 = v7;
          v44 = v11;
          v17 = 0;
          do
          {
            if (v16 == v14)
            {
              v16 = v15[1];
              v18 = 1;
            }

            else
            {
              LODWORD(v19) = -1;
              do
              {
                v18 = (v19 + 2);
                v20 = v15[v18];
                v19 = (v19 + 1);
              }

              while (v16 + v19 + 1 == v20);
              v21 = a3;
              v22 = add_to_class_internal(a1, a2, a3, a4, v16, v15[v19], v19);
              a3 = v21;
              v17 += v22;
              v16 = v20;
            }

            v15 += v18;
          }

          while (v16 != -1);
          v7 = v43;
          v11 = v44;
        }

        goto LABEL_39;
      }

      a7 = *(a7 + 4);
      if (a7)
      {
        break;
      }

      if (++v14 > v7)
      {
        goto LABEL_47;
      }
    }

    v23 = v14 + 1;
    v24 = v14 + a7;
    do
    {
      v25 = v24;
      v8 = v23;
      if (v23 > v7)
      {
        break;
      }

      v26 = v23 + 127;
      if ((v8 & 0x80000000) == 0)
      {
        v26 = v8;
      }

      v27 = &_pcre2_ucd_records_8[3 * _pcre2_ucd_stage2_8[v8 - (v26 & 0xFFFFFF80) + (_pcre2_ucd_stage1_8[v26 >> 7] << 7)]];
      if (*(v27 + 3))
      {
        break;
      }

      ++v24;
      v28 = v27[1];
      v23 = v8 + 1;
    }

    while (v24 == v28 + v8);
    if ((v14 + a7) < *(a4 + 264) || v25 > *(a4 + 268))
    {
      v29 = v14 + a7;
      if (v14 + a7 < v13 && v25 >= v41)
      {
        v13 = v14 + a7;
        goto LABEL_8;
      }

      if (v25 <= v7 || (a7 = v42, v29 > v42))
      {
        v30 = a3;
        v31 = add_to_class_internal(a1, a2, a3, a4, v29, v25, a7);
        a3 = v30;
        v17 = v31;
LABEL_39:
        v12 = (v17 + v12);
        v13 = v45;
        continue;
      }

      if (v25 >= 0xFF)
      {
        LODWORD(a7) = 255;
      }

      else
      {
        LODWORD(a7) = v25;
      }

      if (v25 > v11)
      {
        v11 = a7;
      }

      v7 = v25;
      goto LABEL_9;
    }
  }

LABEL_47:
  v8 = v13;
LABEL_52:
  if (v7 >= 0xFF)
  {
    v35 = 255;
  }

  else
  {
    v35 = v7;
  }

  if ((a3 & 0x80000) != 0)
  {
    v35 = v7;
  }

  if (v8 <= *(a4 + 264) || v35 >= *(a4 + 268))
  {
    if (v8 <= v11)
    {
      v36 = v8;
      do
      {
        *(a1 + (v36 >> 3)) |= 1 << (v36 & 7);
        v12 = (v12 + 1);
        ++v36;
      }

      while (v36 <= v11);
    }

    v37 = v8 <= 0x100 ? 256 : v8;
    if (v35 >= v37)
    {
      v38 = *a2;
      if ((a3 & 0x80000) != 0)
      {
        if (v37 < v7)
        {
          *v38 = 2;
          v39 = &v38[_pcre2_ord2utf_8(v37, (v38 + 1)) + 1];
LABEL_71:
          v38 = (v39 + _pcre2_ord2utf_8(v7, v39));
          goto LABEL_72;
        }

        if (v37 == v7)
        {
          *v38 = 1;
          v39 = (v38 + 1);
          goto LABEL_71;
        }
      }

LABEL_72:
      *a2 = v38;
    }
  }

  return v12;
}

unsigned __int8 *first_significant_code(unsigned __int8 *result, int a2)
{
  while (2)
  {
    switch(*result)
    {
      case 0x76u:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
        goto LABEL_10;
      case 0x77u:
        result += __rev16(*(result + 5));
        continue;
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x82u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x9Au:
      case 0x9Cu:
      case 0x9Eu:
      case 0xA0u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
        return result;
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x83u:
        if (!a2)
        {
          return result;
        }

        do
        {
          result += __rev16(*(result + 1));
          v2 = *result;
        }

        while (v2 == 120);
        result += _pcre2_OP_lengths_8[v2];
        continue;
      case 0x8Au:
      case 0x8Fu:
        if (result[3] != 148)
        {
          return result;
        }

        v4 = __rev16(*(result + 1));
        if (result[v4] != 121)
        {
          return result;
        }

        result += v4 + 3;
        continue;
      case 0x99u:
      case 0x9Bu:
      case 0x9Du:
      case 0x9Fu:
      case 0xA1u:
        result += result[1] + _pcre2_OP_lengths_8[*result];
        continue;
      case 0xA6u:
        result += __rev16(*(result + 1)) + 4;
        continue;
      default:
        if (*result - 4 < 2 && a2 != 0)
        {
LABEL_10:
          result += _pcre2_OP_lengths_8[*result];
          continue;
        }

        return result;
    }
  }
}

uint64_t pcre2_pattern_info_8(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a3 && a2 < 0x1B)
  {
    return dword_1C3791B24[a2];
  }

  if (!a1)
  {
    return 4294967245;
  }

  if (*(a1 + 80) != 1346589253)
  {
    return 4294967265;
  }

  v5 = *(a1 + 96);
  if ((v5 & 1) == 0)
  {
    return 4294967264;
  }

  switch(a2)
  {
    case 0u:
      v6 = *(a1 + 88);
      goto LABEL_51;
    case 1u:
      v6 = *(a1 + 84);
      goto LABEL_51;
    case 2u:
      v6 = *(a1 + 130);
      goto LABEL_51;
    case 3u:
      v6 = *(a1 + 120);
      goto LABEL_51;
    case 4u:
      v6 = *(a1 + 128);
      goto LABEL_51;
    case 5u:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      v6 = *(a1 + 112);
      goto LABEL_51;
    case 6u:
      if ((v5 & 0x10) != 0)
      {
        v6 = 1;
      }

      else
      {
        v6 = (v5 >> 8) & 2;
      }

      goto LABEL_51;
    case 7u:
      if ((v5 & 0x40) != 0)
      {
        v8 = a1 + 40;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_46;
    case 8u:
      v6 = (v5 >> 11) & 1;
      goto LABEL_51;
    case 9u:
      v6 = (v5 >> 10) & 1;
      goto LABEL_51;
    case 0xAu:
      size_8 = *(a1 + 32);
      if (size_8)
      {
        size_8 = _pcre2_jit_get_size_8(size_8);
      }

      *a3 = size_8;
      goto LABEL_52;
    case 0xBu:
      if ((v5 & 0x80) != 0)
      {
        v6 = *(a1 + 116);
      }

      else
      {
LABEL_31:
        v6 = 0;
      }

      goto LABEL_51;
    case 0xCu:
      v6 = (v5 >> 7) & 1;
      goto LABEL_51;
    case 0xDu:
      v6 = (v5 >> 13) & 1;
      goto LABEL_51;
    case 0xEu:
      v7 = *(a1 + 104);
      goto LABEL_33;
    case 0xFu:
      v6 = *(a1 + 124);
      goto LABEL_51;
    case 0x10u:
      v6 = *(a1 + 126);
      goto LABEL_51;
    case 0x11u:
      v6 = *(a1 + 134);
      goto LABEL_51;
    case 0x12u:
      v6 = *(a1 + 132);
      goto LABEL_51;
    case 0x13u:
      v8 = a1 + 136;
      goto LABEL_46;
    case 0x14u:
      v6 = *(a1 + 122);
      goto LABEL_51;
    case 0x15u:
      v7 = *(a1 + 108);
      goto LABEL_33;
    case 0x16u:
      v8 = *(a1 + 72);
      goto LABEL_46;
    case 0x17u:
      v6 = (v5 >> 22) & 1;
      goto LABEL_51;
    case 0x18u:
      v8 = 16 * *(a1 + 128) + 128;
LABEL_46:
      *a3 = v8;
      goto LABEL_52;
    case 0x19u:
      v7 = *(a1 + 100);
LABEL_33:
      *a3 = v7;
      if (v7 != -1)
      {
        goto LABEL_52;
      }

      result = 4294967241;
      break;
    case 0x1Au:
      v6 = *(a1 + 92);
LABEL_51:
      *a3 = v6;
LABEL_52:
      result = 0;
      break;
    default:
      result = 4294967262;
      break;
  }

  return result;
}

uint64_t _pcre2_is_newline_8(unsigned __int8 *a1, int a2, uint64_t a3, int *a4, int a5)
{
  v5 = *a1;
  if (a5 && v5 >= 0xC0)
  {
    v6 = a1[1] & 0x3F;
    if ((v5 & 0x20) == 0)
    {
      v5 = a1[1] & 0x3F | ((v5 & 0x1F) << 6);
      goto LABEL_13;
    }

    if ((v5 & 0x10) != 0)
    {
      if ((v5 & 8) != 0)
      {
        v9 = a1[2] & 0x3F;
        v10 = a1[3] & 0x3F;
        v11 = a1[4] & 0x3F;
        if ((v5 & 4) == 0)
        {
          v5 = ((v5 & 3) << 24) | (v6 << 18) | (v9 << 12) | (v10 << 6) | v11;
          goto LABEL_13;
        }

        v7 = ((v5 & 1) << 30) | (v6 << 24) | (v9 << 18) | (v10 << 12) | (v11 << 6);
        v8 = a1[5];
      }

      else
      {
        v7 = ((v5 & 7) << 18) | (v6 << 12) | ((a1[2] & 0x3F) << 6);
        v8 = a1[3];
      }
    }

    else
    {
      v7 = ((v5 & 0xF) << 12) | (v6 << 6);
      v8 = a1[2];
    }

    v5 = v7 & 0xFFFFFFC0 | v8 & 0x3F;
  }

LABEL_13:
  if (a2 != 2)
  {
    v12 = 0;
    if (v5 > 132)
    {
      if ((v5 - 8232) >= 2)
      {
        if (v5 != 133)
        {
          return v12;
        }

        if (a5)
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 3;
      }

LABEL_31:
      *a4 = v13;
      return 1;
    }

    if ((v5 - 10) >= 3)
    {
      if (v5 != 13)
      {
        return v12;
      }

      goto LABEL_23;
    }

LABEL_19:
    v13 = 1;
    goto LABEL_31;
  }

  if (v5 == 10)
  {
    goto LABEL_19;
  }

  if (v5 == 13)
  {
LABEL_23:
    v13 = 1;
    if (a3 - 1 > a1)
    {
      if (a1[1] == 10)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t _pcre2_was_newline_8(_BYTE *a1, int a2, unint64_t a3, int *a4, int a5)
{
  if (!a5)
  {
    v8 = *--a1;
    v5 = v8;
    goto LABEL_15;
  }

  do
  {
    v6 = *--a1;
    v5 = v6;
  }

  while ((v6 & 0xC0) == 0x80);
  if (v5 >= 0xC0)
  {
    v7 = a1[1] & 0x3F;
    if ((v5 & 0x20) == 0)
    {
      v5 = a1[1] & 0x3F | ((v5 & 0x1F) << 6);
      goto LABEL_15;
    }

    if ((v5 & 0x10) != 0)
    {
      if ((v5 & 8) != 0)
      {
        v11 = a1[2] & 0x3F;
        v12 = a1[3] & 0x3F;
        v13 = a1[4] & 0x3F;
        if ((v5 & 4) == 0)
        {
          v5 = ((v5 & 3) << 24) | (v7 << 18) | (v11 << 12) | (v12 << 6) | v13;
          goto LABEL_15;
        }

        v9 = ((v5 & 1) << 30) | (v7 << 24) | (v11 << 18) | (v12 << 12) | (v13 << 6);
        v10 = a1[5];
      }

      else
      {
        v9 = ((v5 & 7) << 18) | (v7 << 12) | ((a1[2] & 0x3F) << 6);
        v10 = a1[3];
      }
    }

    else
    {
      v9 = ((v5 & 0xF) << 12) | (v7 << 6);
      v10 = a1[2];
    }

    v5 = v9 & 0xFFFFFFC0 | v10 & 0x3F;
  }

LABEL_15:
  if (a2 != 2)
  {
    v14 = 0;
    if (v5 > 132)
    {
      if ((v5 - 8232) >= 2)
      {
        if (v5 != 133)
        {
          return v14;
        }

        if (a5)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 3;
      }

LABEL_33:
      *a4 = v15;
      return 1;
    }

    if ((v5 - 11) >= 3)
    {
      if (v5 != 10)
      {
        return v14;
      }

      goto LABEL_25;
    }

LABEL_21:
    v15 = 1;
    goto LABEL_33;
  }

  if (v5 == 13)
  {
    goto LABEL_21;
  }

  if (v5 == 10)
  {
LABEL_25:
    v15 = 1;
    if (a1 > a3)
    {
      if (*(a1 - 1) == 13)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }

    goto LABEL_33;
  }

  return 0;
}

void *(**pcre2_general_context_create_8(void *(*a1)(size_t a1), void (__cdecl *a2)(void *), void *(*a3)(size_t a1)))(size_t a1)
{
  if (a1)
  {
    v5 = a1;
    result = (a1)(24, a3);
  }

  else
  {
    v5 = default_malloc;
    result = (default_malloc)(24, a3);
  }

  if (result)
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = default_free;
    }

    *result = v5;
    result[1] = v7;
    result[2] = a3;
  }

  return result;
}

__n128 pcre2_compile_context_create_8(uint64_t a1)
{
  v2 = _pcre2_memctl_malloc_8(0x48uLL, a1);
  if (v2)
  {
    v4 = unk_1F42CE510;
    *(v2 + 2) = xmmword_1F42CE500;
    *(v2 + 3) = v4;
    v2[8] = qword_1F42CE520;
    result = *algn_1F42CE4F0;
    *v2 = _pcre2_default_compile_context_8;
    *(v2 + 1) = result;
    if (a1)
    {
      result = *a1;
      v2[2] = *(a1 + 16);
      *v2 = result;
    }
  }

  return result;
}

uint64_t brkhlp_ScanFilesForEnginesAndAddOns(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    ssftmap_Clear(a1[5]);
  }

  result = brkhlp_FindAllEnginesAndAddOns(a1, *(a2 + 16));
  if (*(a2 + 32) && (result & 0x80000000) == 0 && *(a2 + 24))
  {
    v6 = 0;
    do
    {
      result = brkhlp_FindAllEnginesAndAddOns(a1, *(*(a2 + 32) + 8 * v6));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < *(a2 + 24));
  }

  return result;
}

uint64_t brkhlp_FindAllEnginesAndAddOns(void *a1, char *a2)
{
  v34 = 0;
  v4 = a1[2];
  v40 = 0;
  v41 = 0;
  v38 = 0;
  __s = 0;
  v37 = 0;
  v36 = 1;
  FirstFile = brkhlp_FindFirstFile(v4, a2, "*.hdr", &__s, &v41);
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v33 = 0;
  do
  {
    if (!v41)
    {
      FirstFile = brkhlp_FindFirstFile(v4, a2, "*.dat", &__s, &v40);
      if ((FirstFile & 0x80000000) != 0)
      {
        return FirstFile;
      }

      if (!v40)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v14 = __s;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szFullPathName=%s", __s);
        v15 = strrchr(v14, 47);
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14 - 1;
        }

        v17 = strlen(v14) + v14 - v16;
        v18 = heap_Alloc(*(v4 + 8), (v17 - 4));
        if (!v18)
        {
          return 2169528330;
        }

        v19 = v18;
        strncpy(v18, v16 + 1, (v17 - 5))[v17 - 5] = 0;
        log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem szSurrogateBrokerString=%s", v19);
        v20 = __s;
        v21 = hdrpars_CreateSurrogateTagMap(*(v4 + 8), v19, __s, &v38);
        if ((v21 & 0x80000000) != 0)
        {
          NextFile = v21;
        }

        else
        {
          NextFile = brkhlp_AddItemToClass(v20, v38, a1);
          if ((NextFile & 0x80000000) == 0)
          {
            log_OutText(*(v4 + 32), "BROKER", 4, 0, "brkhlp_FindHdrFileAndAddItem AddedNewSurrogateBrokerString=%s", v19);
          }
        }

        heap_Free(*(v4 + 8), v19);
        heap_Free(*(v4 + 8), v20);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_FindNextFile(v40, a2, &__s, *(v4 + 8), &v36);
        v9 = &v40;
        if ((NextFile & 0x80000000) != 0 || !v36)
        {
          goto LABEL_42;
        }

        if (!v40)
        {
          goto LABEL_43;
        }
      }

      v26 = &v40;
      goto LABEL_91;
    }

    v6 = __s;
    v7 = strlen(__s);
    if (v7 < 5 || strncmp(&__s[v7 - 4], ".hdr", 4uLL))
    {
      goto LABEL_6;
    }

    NextFile = hdrpars_ReadHeader(*a1, a1[1], v6, 0, &v38, &v37);
    if ((NextFile & 0x80000000) != 0)
    {
      log_OutPublic(*(v4 + 32), "BROKER", 276, "%s%s", "file", v6);
      if ((NextFile & 0x1FFF) == 0xA)
      {
        goto LABEL_89;
      }

LABEL_6:
      heap_Free(*(v4 + 8), v6);
      goto LABEL_7;
    }

    if (!v37)
    {
      v13 = brkhlp_ExpandComponentPath(a1, v38);
      if ((v13 & 0x80000000) == 0)
      {
        NextFile = brkhlp_AddItemToClass(v6, v38, a1);
        goto LABEL_25;
      }

      NextFile = v13;
LABEL_89:
      heap_Free(*(v4 + 8), v6);
LABEL_90:
      v26 = &v41;
LABEL_91:
      v31 = *v26;
      goto LABEL_92;
    }

    v35 = 0;
    if (vector_GetElemAt(v37, 0, &v35))
    {
      v10 = 1;
      while (1)
      {
        if ((NextFile & 0x80000000) != 0)
        {
          goto LABEL_18;
        }

        v11 = brkhlp_ExpandComponentPath(a1, *v35);
        if ((v11 & 0x80000000) != 0)
        {
          break;
        }

        NextFile = brkhlp_AddItemToClass(v6, *v35, a1);
LABEL_19:
        if (!vector_GetElemAt(v37, v10++, &v35))
        {
          goto LABEL_20;
        }
      }

      NextFile = v11;
LABEL_18:
      ssftmap_ObjClose(*v35);
      goto LABEL_19;
    }

LABEL_20:
    vector_ObjClose(v37);
    v37 = 0;
LABEL_25:
    heap_Free(*(v4 + 8), v6);
    if ((NextFile & 0x80000000) != 0)
    {
      goto LABEL_90;
    }

LABEL_7:
    NextFile = brkhlp_FindNextFile(v41, a2, &__s, *(v4 + 8), &v36);
    v9 = &v41;
  }

  while ((NextFile & 0x80000000) == 0 && v36);
LABEL_42:
  osspi_FindClose(*v9);
  if ((NextFile & 0x80000000) != 0)
  {
    return NextFile;
  }

LABEL_43:
  v33 = 0;
  v34 = 0;
  if (!a2)
  {
    goto LABEL_73;
  }

  v40 = 0;
  v41 = 0;
  FirstFile = brkhlp_ConcatenatePath(&v41, a2, "*", 0, *(v4 + 8));
  if ((FirstFile & 0x80000000) != 0)
  {
    return FirstFile;
  }

  v22 = v41;
  LODWORD(NextFile) = osspi_FindOpen(*(v4 + 64), *(v4 + 8), v41, 16, &v40, &v34);
  if ((NextFile & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  while (2)
  {
    if ((NextFile & 0x80000000) != 0)
    {
      v25 = v34;
      if (!v34)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (*v40 == 46 && (!*(v40 + 1) || *(v40 + 1) == 46 && !*(v40 + 2)))
    {
      heap_Free(*(v4 + 8), v40);
      v40 = 0;
      LODWORD(NextFile) = osspi_FindNext(v34, &v40);
      if ((NextFile & 0x1FFF) == 0x14)
      {
        NextFile = 0;
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  v23 = brkhlp_ConcatenatePath(&v33, a2, v40, 0, *(v4 + 8));
  LODWORD(NextFile) = 0;
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  v24 = v23;
  v25 = v34;
  LODWORD(NextFile) = v24;
  if (v34)
  {
LABEL_60:
    osspi_FindClose(v25);
  }

LABEL_61:
  v34 = 0;
LABEL_62:
  if (v40)
  {
    heap_Free(*(v4 + 8), v40);
  }

LABEL_64:
  if ((NextFile & 0x1FFF) == 0x14)
  {
    NextFile = 0;
  }

  else
  {
    NextFile = NextFile;
  }

LABEL_67:
  if (v22)
  {
    heap_Free(*(v4 + 8), v22);
  }

  if (!v33 && v34)
  {
    osspi_FindClose(v34);
    v34 = 0;
  }

  if ((NextFile & 0x80000000) == 0)
  {
LABEL_73:
    if (v34)
    {
      while (1)
      {
        v27 = v33;
        NextFile = brkhlp_FindAllEnginesAndAddOns(a1, v33);
        heap_Free(*(v4 + 8), v27);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        v28 = v34;
        v29 = *(v4 + 8);
        v41 = 0;
        v33 = 0;
        Next = osspi_FindNext(v34, &v41);
        if ((Next & 0x80000000) != 0)
        {
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
          }

          else
          {
            NextFile = Next;
          }

          break;
        }

        while ((Next & 0x80000000) == 0 && *v41 == 46 && (!v41[1] || v41[1] == 46 && !v41[2]))
        {
          heap_Free(v29, v41);
          v41 = 0;
          Next = osspi_FindNext(v28, &v41);
          if ((Next & 0x1FFF) == 0x14)
          {
            NextFile = 0;
            goto LABEL_86;
          }
        }

        NextFile = brkhlp_ConcatenatePath(&v33, a2, v41, 0, v29);
        heap_Free(v29, v41);
        if ((NextFile & 0x80000000) != 0)
        {
          break;
        }

        NextFile = 0;
        if (!v34)
        {
          return NextFile;
        }
      }

LABEL_86:
      v31 = v34;
LABEL_92:
      osspi_FindClose(v31);
    }

    else
    {
      return 0;
    }
  }

  return NextFile;
}

uint64_t brkhlp_FindFirstFile(uint64_t a1, char *a2, const char *a3, char **a4, uint64_t *a5)
{
  v5 = 0;
  *a5 = 0;
  if (a2 && a3)
  {
    v14 = 0;
    v15 = 0;
    v10 = brkhlp_ConcatenatePath(&v15, a2, a3, 0, *(a1 + 8));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    else
    {
      v11 = v15;
      Open = osspi_FindOpen(*(a1 + 64), *(a1 + 8), v15, 0, &v14, a5);
      if ((Open & 0x80000000) != 0)
      {
        if ((Open & 0x1FFF) == 0x14)
        {
          v5 = 0;
        }

        else
        {
          v5 = Open;
        }
      }

      else
      {
        v5 = brkhlp_ConcatenatePath(a4, a2, v14, 0, *(a1 + 8));
        if ((v5 & 0x80000000) != 0)
        {
          if (*a5)
          {
            osspi_FindClose(*a5);
          }

          *a5 = 0;
        }

        heap_Free(*(a1 + 8), v14);
      }

      heap_Free(*(a1 + 8), v11);
    }
  }

  return v5;
}

uint64_t brkhlp_ExpandComponentPath(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v3 = *(a1 + 16);
  v4 = "COMPONENT";
  v5 = brkhlp_SearchTag(a2, "COMPONENT", &v18);
  if (v5 < 0 && (v4 = "COMMONCOMPONENT", v6 = brkhlp_SearchTag(a2, "COMMONCOMPONENT", &v18), (v6 & 0x80000000) != 0) || (v6 = brkhlp_SearchTag(a2, "HDRFILE", &v17), (v6 & 0x80000000) != 0) || (v6 = brkhlp_ConcatenatePath(&v13, v17, v18, 1, *(v3 + 8)), (v6 & 0x80000000) != 0))
  {
    v9 = v6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v7 = v13;
    v14 = v13;
    v8 = ssftmap_Insert(a2, "FULLPATHCOMPONENT", &v14);
    if ((v8 & 0x80000000) == 0 || (v9 = v8, (v8 & 0x1FFF) == 2))
    {
      v9 = ssftmap_Remove(a2, v4);
    }

    heap_Free(*(v3 + 8), v7);
    if (v5 < 0 && (v9 & 0x80000000) == 0)
    {
      v15 = 0;
      v16 = 0;
      v14 = "1";
      v10 = ssftmap_Insert(a2, "COMMON", &v14);
      if ((v10 & 0x1FFF) == 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (v10 < 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  if (v9 == -2125438956)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t brkhlp_FindNextFile(void *a1, char *a2, char **a3, void *a4, _DWORD *a5)
{
  v12 = 0;
  *a3 = 0;
  *a5 = 0;
  Next = osspi_FindNext(a1, &v12);
  if ((Next & 0x80000000) != 0)
  {
    if ((Next & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return Next;
    }
  }

  else
  {
    v10 = brkhlp_ConcatenatePath(a3, a2, v12, 0, a4);
    heap_Free(a4, v12);
    if ((v10 & 0x80000000) == 0)
    {
      v10 = 0;
      *a5 = 1;
    }
  }

  return v10;
}

uint64_t brkhlp_ConcatenatePath(char **a1, char *__s, const char *a3, int a4, uint64_t a5)
{
  v5 = 2169528320;
  if (__s && a3)
  {
    v11 = strlen(__s);
    v12 = strlen(a3);
    v13 = heap_Alloc(a5, v11 + v12 + 2);
    *a1 = v13;
    if (v13)
    {
      strcpy(v13, __s);
      if (a4)
      {
        v14 = v11++;
        while (v14)
        {
          v15 = (*a1)[--v14];
          --v11;
          if (v15 == 47)
          {
            goto LABEL_11;
          }
        }

        v11 = 0;
LABEL_11:
        (*a1)[v11] = 0;
      }

      if (v12 && v11 && __s[v11 - 1] != 47)
      {
        *&(*a1)[strlen(*a1)] = 47;
      }

      strcat(*a1, a3);
      v16 = strchr(*a1 + 1, 46);
      if (v16)
      {
        v17 = v16;
        while (1)
        {
          v18 = (v17 - 1);
          if (*(v17 - 1) != 47)
          {
            goto LABEL_31;
          }

          v19 = v17 + 1;
          v20 = v17[1];
          if (v20 == 46)
          {
            break;
          }

          if (v20 != 47)
          {
            goto LABEL_31;
          }

          v21 = strlen(v17 + 2);
          memmove(v17, v17 + 2, v21 + 1);
          v19 = v17;
LABEL_32:
          v17 = strchr(v19, 46);
          if (!v17)
          {
            return 0;
          }
        }

        if (v17[2] == 47)
        {
          v22 = *a1;
          if (v18 > *a1)
          {
            v23 = 0;
            v24 = v17 - 1;
            while (1)
            {
              v26 = *--v24;
              v25 = v26;
              if (v26 == 47)
              {
                break;
              }

              if (v25 != 46)
              {
                v23 = 1;
              }

              v18 = v24;
              if (v24 <= v22)
              {
                if (!v23)
                {
                  goto LABEL_32;
                }

                goto LABEL_35;
              }
            }

            v22 = v18;
            if (!v23)
            {
              goto LABEL_32;
            }

LABEL_35:
            v27 = strlen(v17 + 3);
            memmove(v22, v17 + 3, v27 + 1);
            v19 = v22;
          }

          goto LABEL_32;
        }

LABEL_31:
        v19 = v17 + 1;
        goto LABEL_32;
      }

      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v5;
}

uint64_t engbrk_AddSystemInfo(uint64_t a1, char *a2)
{
  result = 2169528326;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(a1 + 24));
      if ((result & 0x80000000) == 0)
      {
        v5 = brkhlp_ScanBufferForEnginesAndAddOns(*(a1 + 16), a1, a2);
        LODWORD(result) = critsec_Leave(*(a1 + 24));
        if (v5 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t brkhlp_ScanBufferForEnginesAndAddOns(uint64_t a1, void *a2, char *__s1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = 2169528326;
  v16 = 0;
  v17 = 0;
  strcpy(v18, "BINBROKER");
  if (!a2)
  {
    return v3;
  }

  i = __s1;
  if (!__s1)
  {
    return v3;
  }

  if (strncmp(__s1, "<?xml", 5uLL))
  {
    v7 = strpbrk(i, "\n\r");
    if (v7)
    {
      for (i = v7; ; ++i)
      {
        v8 = *i;
        if (v8 != 13 && v8 != 10)
        {
          break;
        }
      }
    }
  }

  v3 = hdrpars_ReadHeader(*a2, a2[1], 0, i, &v17, &v16);
  if ((v3 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "BROKER", 276, 0);
    return v3;
  }

  if (!v16)
  {
    v3 = brkhlp_AddItemToClass(v18, v17, a2);
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    goto LABEL_24;
  }

  v15 = 0;
  if (vector_GetElemAt(v16, 0, &v15))
  {
    v10 = 1;
    do
    {
      if ((v3 & 0x80000000) != 0)
      {
        ssftmap_ObjClose(*v15);
      }

      else
      {
        v3 = brkhlp_AddItemToClass(v18, *v15, a2);
      }
    }

    while (vector_GetElemAt(v16, v10++, &v15));
  }

  vector_ObjClose(v16);
  v16 = 0;
  if ((v3 & 0x80000000) == 0)
  {
LABEL_24:
    v3 = critsec_Enter(a2[7]);
    if ((v3 & 0x80000000) == 0)
    {
      if (!ssftmap_GetSize(a2[5]))
      {
        LODWORD(v3) = -2125438710;
      }

      v12 = critsec_Leave(a2[7]);
      if (v3 > -1 && v12 < 0)
      {
        return v12;
      }

      else
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t engbrk_GetSystemInfo(void *a1, uint64_t *a2, _DWORD *a3)
{
  v3 = 2169528326;
  v15 = 0;
  if (a1 && a2 && a3)
  {
    *a2 = 0;
    *a3 = 0;
    if ((ssftstring_ObjOpen(*(a1[2] + 8), &v15) & 0x80000000) == 0)
    {
      v7 = critsec_Enter(a1[7]);
      if ((v7 & 0x80000000) != 0)
      {
        v3 = v7;
LABEL_22:
        ssftstring_ObjClose(v15);
        return v3;
      }

      v8 = v15;
      Size = ssftmap_GetSize(a1[5]);
      ssftstring_Reserve(v8, 500 * Size);
      v10 = v15;
      v11 = a1[5];
      v16 = 0;
      v17 = 0;
      if (v11)
      {
        v18 = 0;
        v12 = ssftmap_IteratorOpen(v11, 0, 1, &v16);
        v3 = v12;
        if ((v12 & 0x80000000) == 0)
        {
          if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) == 0)
          {
            while (1)
            {
              appended = ssftstring_AppendCStr(v10, "<?xml version=1.0?>\n<NUANCE>\n<VERSION>NUAN_1.0</VERSION>\n<HEADER>\n");
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              appended = StoreTagInfo(v10, *v18);
              if ((appended & 0x80000000) != 0)
              {
                break;
              }

              v3 = ssftstring_AppendCStr(v10, "</HEADER>\n</NUANCE>\n");
              if ((v3 & 0x80000000) != 0)
              {
                goto LABEL_20;
              }

              if ((ssftmap_IteratorNext(v16, &v17, &v18) & 0x80000000) != 0)
              {
                goto LABEL_13;
              }
            }

            v3 = appended;
LABEL_20:
            ssftmap_IteratorClose(v16);
            goto LABEL_21;
          }

LABEL_13:
          ssftmap_IteratorClose(v16);
          goto LABEL_18;
        }

        if ((v12 & 0x1FFF) != 0x14)
        {
LABEL_21:
          critsec_Leave(a1[7]);
          goto LABEL_22;
        }
      }

      v3 = 0;
LABEL_18:
      *a3 = ssftstring_Size(v15) + 1;
      *a2 = ssftstring_CStrDetach(v15);
      goto LABEL_21;
    }

    return 2169528330;
  }

  return v3;
}

uint64_t engbrk_FreeSystemInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    heap_Free(*(*(a1 + 16) + 8), a2);
  }

  return 0;
}

uint64_t StoreTagInfo(uint64_t a1, uint64_t a2)
{
  __s = 0;
  v11 = 0;
  v9 = 0;
  if (!a2)
  {
    LODWORD(v3) = 0;
LABEL_29:
    if ((v3 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  v3 = ssftmap_IteratorOpen(a2, 0, 1, &v11);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  if ((ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    appended = ssftstring_AppendCStr(a1, "<");
    if ((appended & 0x80000000) != 0 || (appended = ssftstring_AppendCStr(a1, __s), (appended & 0x80000000) != 0))
    {
LABEL_33:
      v3 = appended;
      goto LABEL_34;
    }

    v5 = *(v9 + 8);
    v13 = 0;
    v14 = 0;
    v12 = 0;
    if (v5)
    {
      break;
    }

LABEL_18:
    appended = ssftstring_AppendCStr(a1, ">");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, *v9);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    if (ssftmap_GetSize(*(v9 + 16)))
    {
      appended = ssftstring_AppendCStr(a1, "\n");
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      appended = StoreTagInfo(a1, *(v9 + 16));
      if ((appended & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    appended = ssftstring_AppendCStr(a1, "</");
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    appended = ssftstring_AppendCStr(a1, __s);
    if ((appended & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    v3 = ssftstring_AppendCStr(a1, ">\n");
    if ((v3 & 0x80000000) != 0 || (ssftmap_IteratorNext(v11, &__s, &v9) & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  v6 = ssftmap_IteratorOpen(v5, 0, 1, &v14);
  if ((v6 & 0x80000000) != 0)
  {
    v3 = v6;
    if ((v6 & 0x1FFF) != 0x14)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  do
  {
    if ((ssftmap_IteratorNext(v14, &v13, &v12) & 0x80000000) != 0)
    {
      ssftmap_IteratorClose(v14);
      goto LABEL_18;
    }

    v7 = ssftstring_AppendCStr(a1, " ");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v13);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "=");
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, v12);
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    v7 = ssftstring_AppendCStr(a1, "");
  }

  while ((v7 & 0x80000000) == 0);
  v3 = v7;
  ssftmap_IteratorClose(v14);
LABEL_34:
  ssftmap_IteratorClose(v11);
  return v3;
}

uint64_t brkhlp_SearchTag(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  ReadOnly = ssftmap_FindReadOnly(a1, a2, &v6);
  if ((ReadOnly & 0x80000000) == 0 && v6)
  {
    *a3 = *v6;
  }

  if (ReadOnly < 0)
  {
    return 2169528340;
  }

  else
  {
    return 0;
  }
}

uint64_t brkhlp_ElemCompareKeysBrokerString(char *a1, char *a2)
{
  if (a1 | a2)
  {
    LODWORD(v2) = -1;
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  if (a1 && a2)
  {
    return LH_stricmp(a1, a2);
  }

  else
  {
    return v2;
  }
}

uint64_t brkhlp_AddItemToClass(const char *a1, uint64_t a2, void *a3)
{
  v9 = 0;
  ReadOnly = ssftmap_FindReadOnly(a2, "BROKERSTRING", &v9);
  if (ReadOnly < 0 || !v9)
  {
    if (ReadOnly < 0)
    {
      hdrpars_FreeHeader(a2);
      return 2169528340;
    }

    v7 = 0;
  }

  else
  {
    v7 = *v9;
  }

  return brkhlp_AddNewAddOn(v7, a1, a2, a3, 0);
}

uint64_t brkhlp_AddNewAddOn(const char *a1, const char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a3)
  {
    return 2169528327;
  }

  v6 = a3;
  v9 = a4[2];
  v16[0] = a3;
  v16[1] = a1;
  v16[2] = a5;
  log_OutText(*(v9 + 32), "BROKER", 4, 0, "brkhlp_AddNewAddOn: detect= %s", a1);
  v10 = critsec_Enter(a4[7]);
  if ((v10 & 0x80000000) != 0)
  {
    v14 = v10;
  }

  else
  {
    v11 = ssftmap_Insert(a4[5], a1, v16);
    if (v11 < 0)
    {
      log_OutPublic(*(v9 + 32), "BROKER", 289, "%s%s", "file", a2);
    }

    v12 = critsec_Leave(a4[7]);
    if (v12 >= 0 || v11 <= -1)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    v6 = v16[0];
    if (!v16[0])
    {
      goto LABEL_16;
    }
  }

  hdrpars_FreeHeader(v6);
LABEL_16:
  if ((v14 & 0x1FFF) == 2)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t engbrk_ClassOpen(_WORD *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t **a5)
{
  v5 = 2169528321;
  *v32 = 0;
  if ((*a3 & 0xFFFE) == 2)
  {
    inited = InitRsrcFunction(a1, a2, v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(*v32 + 32), "BROKER", 4, 0, "brk_ClassOpen: Begin");
      v11 = heap_Calloc(*(*v32 + 8), 1, 72);
      if (v11)
      {
        v12 = v11;
        *v11 = a1;
        v11[1] = a2;
        v13 = *v32;
        v11[2] = *v32;
        v14 = *(v13 + 8);
        v15 = heap_Calloc(v14, 1, 48);
        if (!v15)
        {
LABEL_22:
          v12[6] = 0;
          v5 = 2169528330;
LABEL_32:
          engbrk_ClassClose(v12);
LABEL_33:
          log_OutText(*(*v32 + 32), "BROKER", 4, 0, "brk_ClassOpen: End %x", v5);
          return v5;
        }

        v16 = v15;
        *v15 = *a3;
        *(v15 + 8) = 0;
        v17 = *(a3 + 2);
        if (v17)
        {
          v18 = brkhlp_CloneString(v14, v17);
          *(v16 + 16) = v18;
          if (!v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v15 + 16) = 0;
        }

        *(v16 + 24) = 0;
        if (a3[12])
        {
          v19 = heap_Calloc(v14, a3[12], 8);
          *(v16 + 32) = v19;
          if (!v19)
          {
LABEL_21:
            brkhlp_FreeProductInfo(v14, v16);
            goto LABEL_22;
          }

          if (a3[12])
          {
            v20 = 0;
            do
            {
              *(*(v16 + 32) + 8 * v20) = brkhlp_CloneString(v14, *(*(a3 + 4) + 8 * v20));
              if (!*(*(v16 + 32) + 8 * v20))
              {
                goto LABEL_21;
              }

              ++*(v16 + 24);
            }

            while (++v20 < a3[12]);
          }
        }

        else
        {
          *(v16 + 32) = 0;
        }

        v21 = *(a3 + 5);
        if (v21)
        {
          v22 = brkhlp_CloneString(v14, v21);
          *(v16 + 40) = v22;
          if (!v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *(v16 + 40) = 0;
        }

        v12[6] = v16;
        v23 = critsec_ObjOpen(*(*v32 + 16), *(*v32 + 8), v12 + 3);
        if ((v23 & 0x80000000) != 0 || (v24 = *(*v32 + 8), v29 = BRK_ADDON_IELEM, v30 = *&off_1F42CE598, v31 = off_1F42CE5A8, v23 = ssftmap_ObjOpen(v24, 0, &v29, v12 + 5), (v23 & 0x80000000) != 0) || (v25 = *(*v32 + 8), v29 = BRK_INTF_IELEM, v30 = *off_1F42CE5C0, v31 = off_1F42CE5D0, v23 = ssftmap_ObjOpen(v25, 0, &v29, v12 + 4), (v23 & 0x80000000) != 0) || (v23 = critsec_ObjOpen(*(*v32 + 16), *(*v32 + 8), v12 + 7), (v23 & 0x80000000) != 0))
        {
          v5 = v23;
          goto LABEL_32;
        }

        v26 = *a3;
        if (v26 == 3)
        {
          v27 = brkhlp_ScanBufferForEnginesAndAddOns(*v32, v12, *(a3 + 5));
        }

        else
        {
          if (v26 != 2)
          {
            goto LABEL_32;
          }

          v27 = brkhlp_ScanFilesForEnginesAndAddOns(v12, a3, 1);
        }

        v5 = v27;
        if ((v27 & 0x80000000) == 0)
        {
          *a5 = v12;
          v5 = brkhlp_InitializeONNX(*v32, v12 + 8);
          if ((v5 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_32;
      }

      return 2169528330;
    }
  }

  return v5;
}

uint64_t brkhlp_InitializeONNX(uint64_t a1, void *a2)
{
  v2 = 2169528327;
  v9 = 0;
  *a2 = 0;
  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      if ((osspi_DynModOpen(v4, *(a1 + 8), "libcs_onnxruntime.so.1.13.1", 0, &v9) & 0x80000000) != 0)
      {
        return 0;
      }

      else
      {
        v6 = v9;
        *a2 = v9;
        v7 = osspi_DynModObjLoad(v6, "OrtGetApiBase", a1 + 72);
        if (v7 >= 0)
        {
          return v7;
        }

        else
        {
          return 2169528333;
        }
      }
    }
  }

  return v2;
}

uint64_t engbrk_ClassClose(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a1[8];
  if (v3)
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      osspi_DynModObjUnload(a1[8], v4);
    }

    osspi_DynModClose(v3);
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = ssftmap_ObjClose(v5);
    a1[4] = 0;
    v7 = v6 & (v6 >> 31);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    v9 = ssftmap_ObjClose(v8);
    a1[5] = 0;
    if (v9 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v9;
    }
  }

  v11 = a1[3];
  if (v11)
  {
    v12 = critsec_ObjClose(v11);
    a1[3] = 0;
    if (v12 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v12;
    }
  }

  v14 = a1[7];
  if (v14)
  {
    v15 = critsec_ObjClose(v14);
    a1[7] = 0;
    if (v15 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v15;
    }
  }

  v17 = a1[6];
  if (v17)
  {
    brkhlp_FreeProductInfo(*(v2 + 8), v17);
    a1[6] = 0;
  }

  heap_Free(*(v2 + 8), a1);
  return v7;
}

void *brkhlp_FreeProductInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (v4)
    {
      heap_Free(result, v4);
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      if (*(a2 + 24))
      {
        v6 = 0;
        do
        {
          heap_Free(v3, *(*(a2 + 32) + 8 * v6++));
        }

        while (v6 < *(a2 + 24));
        v5 = *(a2 + 32);
      }

      heap_Free(v3, v5);
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      heap_Free(v3, v7);
    }

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t engbrk_ClassUpdateEx(void *a1, int a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  log_OutText(*(a1[2] + 32), "BROKER", 4, 0, "brk_ClassUpdate: Begin");
  v4 = brkhlp_ScanFilesForEnginesAndAddOns(a1, a1[6], a2);
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1[2] + 32), "BROKER", v4, "brk_ClassUpdate: Scan failed");
  }

  log_OutText(*(a1[2] + 32), "BROKER", 4, 0, "brk_ClassUpdate: End %x", v4);
  return v4;
}

uint64_t engbrk_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2169528327;
  v11 = 0;
  *a3 = 0;
  if (a2)
  {
    v6 = *(a2 + 16);
    v7 = *(v6 + 32);
    if (a1)
    {
      log_OutText(v7, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=%s: Begin");
    }

    else
    {
      log_OutText(v7, "BROKER", 4, 0, "brk_ObjOpen  Object identifier=NULL: Begin");
    }

    v8 = heap_Calloc(*(v6 + 8), 1, 32);
    v9 = *(v6 + 32);
    if (v8)
    {
      *v8 = a2;
      *(v8 + 8) = v9;
      *(v8 + 24) = 0;
      if ((paramc_ParamGetStr(*(v6 + 40), "broker_mmap_clc_data", &v11) & 0x80000000) == 0 && (!LH_stricmp(v11, "yes") || !LH_stricmp(v11, "true")))
      {
        *(v8 + 24) = 1;
      }

      *a3 = v8;
      log_OutText(*(v6 + 32), "BROKER", 4, 0, "brk_ObjOpen : End");
      return 0;
    }

    else
    {
      log_OutPublic(v9, "BROKER", 200, 0);
      return 2169528330;
    }
  }

  return v3;
}

uint64_t engbrk_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2169528327;
  }

  v2 = *(*a1 + 16);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_ObjClose : Begin");
  v3 = 0;
  if (*(*(*a1 + 16) + 24) == a1)
  {
    v4 = critsec_Enter(*(*a1 + 24));
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }

    LODWORD(v3) = ssftmap_Clear(*(*a1 + 32));
    v5 = critsec_Leave(*(*a1 + 24));
    if (v3 > -1 && v5 < 0)
    {
      v3 = v5;
    }

    else
    {
      v3 = v3;
    }
  }

  heap_Free(*(v2 + 8), a1);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_ObjClose : End");
  return v3;
}

uint64_t engbrk_SetLog(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 2169528327;
  }

  if (!a2)
  {
    a2 = *(*(*a1 + 16) + 32);
  }

  v2 = 0;
  a1[1] = a2;
  return v2;
}

uint64_t engbrk_ObjGetClass(uint64_t *a1, void *a2)
{
  if (a1 && a2)
  {
    result = 0;
    v4 = *a1;
  }

  else
  {
    result = 2169528327;
    if (!a2)
    {
      return result;
    }

    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t engbrk_InterfaceQueryEx(void *a1, char *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v6 = -2125438956;
  v7 = 2169528327;
  v41 = 0;
  if (a1 && a2 && a6)
  {
    v14 = 0uLL;
    v39 = 0u;
    v40 = 0u;
    v15 = *(*a1 + 16);
    if (a5)
    {
      NullHandle = safeh_GetNullHandle();
      v14 = 0uLL;
      *a5 = NullHandle;
      a5[1] = v17;
    }

    *a6 = 0;
    v39 = v14;
    v40 = v14;
    log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : Begin", a2);
    v7 = critsec_Enter(*(*a1 + 24));
    if ((v7 & 0x80000000) == 0)
    {
      if ((ssftmap_FindReadOnly(*(*a1 + 32), a2, &v41) & 0x80000000) == 0)
      {
        v18 = v41;
        v19 = v41[1];
        if (v19)
        {
LABEL_9:
          *a6 = v19;
          if (a5)
          {
            *a5 = *(v18 + 1);
          }

          v20 = 1;
          goto LABEL_22;
        }

        v6 = -2125438963;
        if (!a4)
        {
          log_OutPublic(a1[1], "BROKER", 259, "%s%s%s%x", "BrokerString", a2, "lhError", -2125438963);
          v6 = -2125438963;
        }

        goto LABEL_21;
      }

      ReadOnly = ssftmap_Insert(*(*a1 + 32), a2, &v39);
      if (ReadOnly < 0 || (ReadOnly = ssftmap_FindReadOnly(*(*a1 + 32), a2, &v41), ReadOnly < 0))
      {
        v6 = ReadOnly;
        log_OutPublic(a1[1], "BROKER", 200, "%s%s");
        goto LABEL_21;
      }

      v22 = brkhlp_SearchAddOn(a1, a2, &v45);
      if (v22 < 0)
      {
        if ((v22 & 0x1FFF) == 0xA)
        {
          v6 = -2125438966;
          goto LABEL_21;
        }
      }

      else
      {
        v23 = v45;
        v24 = *v45;
        v46 = 0;
        v25 = ssftmap_FindReadOnly(v24, "FULLPATHCOMPONENT", &v46);
        if ((v25 & 0x80000000) == 0 && v46)
        {
          v44 = *v46;
          v26 = a4 == 0;
          goto LABEL_33;
        }

        v26 = a4 == 0;
        if (a4 || (v25 & 0x80000000) == 0)
        {
          if ((v25 & 0x80000000) == 0)
          {
LABEL_33:
            v29 = *v23;
            v46 = 0;
            v30 = ssftmap_FindReadOnly(v29, "GETINTERFACE", &v46);
            if (v30 < 0 || !v46)
            {
              if (v30 < 0)
              {
                if (v26)
                {
                  log_OutPublic(a1[1], "BROKER", 262, "%s%s%s%x");
                }

                goto LABEL_21;
              }

              v31 = 0;
            }

            else
            {
              v31 = *v46;
            }

            v6 = 0;
            v43 = v31;
LABEL_42:
            v33 = v42;
            if ((v6 & 0x80000000) == 0 && !v42)
            {
              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModOpen %s, %d", v44, 0);
              v34 = osspi_DynModOpen(*(v15 + 64), *(v15 + 8), v44, 0, v41);
              v6 = v34;
              if (!a4 && v34 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 263, "%s%s%s%x");
                goto LABEL_21;
              }

              if (v34 < 0)
              {
                goto LABEL_21;
              }

              log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : osspi_DynModObjLoad %s", v43);
              v35 = osspi_DynModObjLoad(*v41, v43, &v42);
              v6 = v35;
              if (!a4 && v35 < 0)
              {
                log_OutPublic(a1[1], "BROKER", 264, "%s%s%s%x");
                goto LABEL_21;
              }

              v33 = v42;
            }

            if (v6 < 0 || !v33 || (v36 = v33(a3, v41 + 1), v6 = v36, a4) || (v36 & 0x80000000) == 0)
            {
              if ((v6 & 0x80000000) == 0)
              {
                v18 = v41;
                v19 = v41[1];
                v37 = *(v19 + 16);
                if (v37)
                {
                  v38 = v37(**a1, *(*a1 + 8), v41 + 2);
                  v6 = v38;
                  if (!a4 && v38 < 0)
                  {
                    log_OutPublic(a1[1], "BROKER", 266, "%s%s%s%x");
                    goto LABEL_21;
                  }

                  if (v38 < 0)
                  {
                    goto LABEL_21;
                  }

                  v18 = v41;
                  v19 = v41[1];
                }

                LODWORD(v7) = v6;
                goto LABEL_9;
              }
            }

            else
            {
              log_OutPublic(a1[1], "BROKER", 265, "%s%s%s%x");
            }

LABEL_21:
            log_OutText(a1[1], "BROKER", 3, 0, "brk_InterfaceQuery : BrokerString=%s: Module Not Found (%x)", a2, v6);
            v20 = 0;
            LODWORD(v7) = v6;
LABEL_22:
            v27 = critsec_Leave(*(*a1 + 24));
            if ((v20 & (v27 < 0)) != 0)
            {
              v7 = v27;
            }

            else
            {
              v7 = v7;
            }

            log_OutText(a1[1], "BROKER", 4, 0, "brk_InterfaceQuery BrokerString=%s : End", a2);
            return v7;
          }
        }

        else
        {
          log_OutPublic(a1[1], "BROKER", 260, "%s%s%s%x", "BrokerString", a2, "lhError", -2125438956);
        }
      }

      BuiltinInterface = brkhlp_GetBuiltinInterface(a2, &v42, &v44, &v43);
      v6 = BuiltinInterface;
      if (!a4 && BuiltinInterface < 0)
      {
        log_OutPublic(a1[1], "BROKER", 261, "%s%s%s%x");
        goto LABEL_21;
      }

      goto LABEL_42;
    }
  }

  return v7;
}

uint64_t brkhlp_SearchAddOn(uint64_t a1, char *a2, void *a3)
{
  *a3 = 0;
  result = 2169528333;
  if (a1)
  {
    if (a2)
    {
      result = critsec_Enter(*(*a1 + 56));
      if ((result & 0x80000000) == 0)
      {
        v7 = brkhlp_InternalSearchAddOn(a1, a2, a3);
        LODWORD(result) = critsec_Leave(*(*a1 + 56));
        if (v7 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v7;
        }
      }
    }
  }

  return result;
}

uint64_t engbrk_InterfaceRelease(uint64_t a1, uint64_t a2)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : Begin");
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_InterfaceRelease : End");
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_TagQueryEx(void *a1, char *a2, const char *a3, char a4, const char **a5)
{
  v16 = 0;
  v5 = 2169528327;
  if (!a1 || !a5 || !a3 || !a2 || !*a1)
  {
    return v5;
  }

  *a5 = 0;
  log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery BrokerString=%s TagName=%s : Begin", a2, a3);
  v11 = brkhlp_SearchAddOn(a1, a2, &v16);
  if (v11 < 0)
  {
    if ((v11 & 0x1FFF) == 0xA)
    {
      v5 = 2169528330;
      goto LABEL_16;
    }

    v5 = 2169528333;
LABEL_13:
    v13 = a1[1];
    if (a4)
    {
      log_OutText(v13, "BROKER", 3, 0, "brk_TagQuery : BrokerString=%s TagName=%s  Failure (%x)", a2, a3, v5);
    }

    else
    {
      log_OutPublic(v13, "BROKER", 267, "%s%s%s%s%s%x", "Broker String", a2, "Tag Name", a3, "lhError", v5);
    }

    goto LABEL_16;
  }

  v12 = brkhlp_SearchTag(*v16, a3, a5);
  if ((v12 & 0x80000000) != 0)
  {
    v5 = v12;
    goto LABEL_13;
  }

  v5 = 0;
LABEL_16:
  v14 = "";
  if (*a5)
  {
    v14 = *a5;
  }

  log_OutText(a1[1], "BROKER", 4, 0, "brk_TagQuery TagContents = %p %s: End", *a5, v14);
  return v5;
}

uint64_t engbrk_TagRelease(uint64_t a1, const void *a2)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease TagContents address = %p : Begin", a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_TagRelease : End");
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_ComponentTableIteratorOpen(uint64_t a1, char *a2, char **a3)
{
  v3 = 2169528327;
  if (a1 && a3 && a2 && *a1)
  {
    v7 = *(*a1 + 16);
    log_OutText(*(v7 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen Query=%s: Begin", a2);
    v8 = heap_Calloc(*(v7 + 8), 1, 72);
    *a3 = v8;
    if (v8)
    {
      *v8 = v7;
      *(*a3 + 1) = a1;
      String = brkhlp_CreateString(*a3 + 2, a2, *(v7 + 8));
      if ((String & 0x80000000) == 0)
      {
        v3 = critsec_Enter(*(*a1 + 56));
        v10 = *a3;
        if ((v3 & 0x80000000) == 0)
        {
          v11 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 0, (v10 + 3));
          LODWORD(v3) = (v11 & 0x80001FFF) == 0x80000014 ? 0 : v11;
          v12 = critsec_Leave(*(*a1 + 56));
          v13 = v3 > -1 && v12 < 0;
          v3 = v13 ? v12 : v3;
          v10 = *a3;
          if ((v3 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_22;
      }

      v3 = String;
    }

    else
    {
      v3 = 2169528330;
    }

    v10 = *a3;
LABEL_22:
    if (v10)
    {
      engbrk_ComponentTableIteratorClose(v10);
      v10 = 0;
      *a3 = 0;
    }

LABEL_24:
    log_OutText(*(v7 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorOpen iterator address = %p: End", v10);
  }

  return v3;
}

uint64_t brkhlp_CreateString(char **a1, char *__s, uint64_t a3)
{
  v3 = 2169528320;
  if (!a1)
  {
    return 2169528327;
  }

  *a1 = 0;
  if (__s)
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(a3, (v7 + 1));
    *a1 = v8;
    if (v8)
    {
      strcpy(v8, __s);
      return 0;
    }

    else
    {
      return 2169528330;
    }
  }

  return v3;
}

uint64_t engbrk_ComponentTableIteratorClose(void *a1)
{
  if (!a1)
  {
    return 2169528327;
  }

  v2 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose iterator=%p: Begin", a1);
  v3 = a1[2];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    ssftmap_IteratorClose(v4);
  }

  heap_Free(*(v2 + 8), a1);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorClose: End");
  return 0;
}

uint64_t engbrk_ComponentTableIteratorNext(void *a1, const char **a2, void *a3)
{
  v29 = 0;
  v30 = 0;
  if (!a1)
  {
    return 2169528327;
  }

  v3 = a2;
  v5 = *a1;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  log_OutText(*(v5 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext iterator=%p: Begin", a1);
  LODWORD(v6) = brkhlp_SizeOfNextBlock(a1[2]);
  v7 = ssftmap_IteratorNext(a1[3], &v30, &v29);
  if ((v7 & 0x80000000) != 0)
  {
LABEL_19:
    v8 = v7;
  }

  else
  {
    v6 = v6;
    v8 = 2169528330;
    v28 = v5;
    v26 = v6;
    while (1)
    {
      if ((LH_strnicmp(a1[2], v30, v6) & 0x80000000) != 0)
      {
        v8 = 2169528343;
        goto LABEL_33;
      }

      v9 = *(v5 + 8);
      v10 = v30;
      v11 = a1[2];
      v12 = strlen(v11);
      v13 = heap_Alloc(v9, (v12 + 1));
      if (!v13)
      {
        goto LABEL_33;
      }

      v14 = v13;
      v15 = v3;
      if (!*v11)
      {
        break;
      }

      v16 = v11;
      v17 = v10;
      while (1)
      {
        Block = brkhlp_SizeOfNextBlock(v16);
        strncpy(v14, v16, Block);
        v14[Block] = 0;
        v19 = strstr(v17, v14);
        if (!v19)
        {
          break;
        }

        v17 = &v19[Block];
        if (Block)
        {
          if (v14[Block - 1] != 47 && v17 - v10 != strlen(v10))
          {
            break;
          }
        }

        v16 += (Block + 1);
        if (v16 - v11 >= strlen(v11))
        {
          goto LABEL_21;
        }
      }

      heap_Free(v9, v14);
      v7 = ssftmap_IteratorNext(a1[3], &v30, &v29);
      v3 = v15;
      v5 = v28;
      v8 = 2169528330;
      v6 = v26;
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    heap_Free(v9, v14);
    v3 = v15;
    if (v15)
    {
      *v15 = v30;
    }

    if (a3)
    {
      v20 = v29;
      a1[4] = v30;
      *(a1 + 7) = 0u;
      *(a1 + 5) = 0u;
      v21 = brkhlp_SearchTag(*v20, "NAME", a1 + 5);
      if ((v21 & 0x80000000) == 0 || (v8 = v21, v21 == -2125438956))
      {
        v22 = brkhlp_SearchTag(*v29, "LANGUAGE", a1 + 7);
        if ((v22 & 0x80000000) == 0 || (v8 = v22, v22 == -2125438956))
        {
          v23 = brkhlp_SearchTag(*v29, "VERSION", a1 + 6);
          if ((v23 & 0x80000000) == 0 || (v8 = v23, v23 == -2125438956))
          {
            v8 = 0;
            *a3 = a1 + 4;
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v5 = v28;
  }

LABEL_33:
  v24 = "";
  if (v3 && *v3)
  {
    v24 = *v3;
  }

  log_OutText(*(v5 + 32), "BROKER", 4, 0, "brk_ComponentTableIteratorNext szBrkString=%s: End", v24);
  return v8;
}

size_t brkhlp_SizeOfNextBlock(char *a1)
{
  v2 = strchr(a1, 42);
  if (v2)
  {
    return v2 - a1;
  }

  else
  {
    return strlen(a1);
  }
}

uint64_t engbrk_DataReplace(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v4 = 2169528327;
  if (a1 && a2 && a3)
  {
    v7 = *(*a1 + 16);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace BrokerString=%s : Begin", a2);
    v8 = brkhlp_SearchAddOn(a1, a2, &v14);
    if ((v8 & 0x80000000) != 0)
    {
      v12 = v8;
      log_OutPublic(a1[1], "BROKER", 293, "%s%s", "brokerString", a2);
      if ((v12 & 0x1FFF) == 0xA)
      {
        v4 = 2169528330;
LABEL_16:
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataReplace : End");
        return v4;
      }
    }

    else
    {
      v9 = *v14;
      v15 = 0;
      ReadOnly = ssftmap_FindReadOnly(v9, "FULLPATHCOMPONENT", &v15);
      if ((ReadOnly & 0x80000000) == 0 && v15)
      {
        v11 = *v15;
        goto LABEL_12;
      }

      if ((ReadOnly & 0x80000000) == 0)
      {
        v11 = 0;
LABEL_12:
        v4 = osspi_DataReplace(*(v7 + 64), *(v7 + 8), v11);
        if ((v4 & 0x80000000) != 0)
        {
          log_OutPublic(a1[1], "BROKER", 295, "%s%s%s%x", "brokerString", a2, "lhError", v4);
        }

        goto LABEL_16;
      }

      log_OutPublic(a1[1], "BROKER", 294, "%s%s", "brokerString", a2);
      v12 = 2169528340;
    }

    v4 = v12;
    goto LABEL_16;
  }

  return v4;
}

uint64_t engbrk_DataOpenEx(void *a1, char *a2, char a3, uint64_t **a4)
{
  v5 = 2169528330;
  v72 = 0;
  *v73 = 0;
  result = 2169528327;
  if (a1)
  {
    v7 = a2;
    if (a2)
    {
      if (a4)
      {
        v10 = *(*a1 + 16);
        *a4 = 0;
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : BrokerString=%s : Begin", a2);
        v11 = heap_Calloc(*(v10 + 8), 1, 48);
        if (!v11)
        {
          hlp_ReleaseUriFetcherInterface(v10, 0);
LABEL_123:
          log_OutText(a1[1], "BROKER", 4, 0, "brk_DataOpen : End %x", v5);
          return v5;
        }

        v12 = v11;
        v13 = IsThisUrlOrRealPath(v7, 0);
        v14 = strchr(v7, 58);
        v15 = v14;
        if (v14)
        {
          v16 = v14 == v7;
        }

        else
        {
          v16 = 1;
        }

        v17 = !v16 && v13 == 0;
        v18 = v17;
        v65 = v13;
        if (v17)
        {
          v19 = critsec_Enter(*(*a1 + 24));
          if ((v19 & 0x80000000) != 0)
          {
            v25 = v19;
            hlp_ReleaseUriFetcherInterface(v10, v12);
            v67 = 0;
            v15 = 0;
            v5 = v25;
            goto LABEL_118;
          }

          v20 = v15 - v7;
          v21 = heap_Alloc(*(v10 + 8), (v15 - v7 + 1));
          if (!v21)
          {
            hlp_ReleaseUriFetcherInterface(v10, v12);
            v67 = 0;
            v15 = 0;
LABEL_110:
            v59 = critsec_Leave(*(*a1 + 24));
            if (v5 > -1 && v59 < 0)
            {
              v5 = v59;
            }

            else
            {
              v5 = v5;
            }

LABEL_116:
            if ((v5 & 0x80000000) == 0)
            {
              *a4 = v12;
LABEL_119:
              if (v67)
              {
                heap_Free(*(v10 + 8), v67);
              }

              if (v15)
              {
                heap_Free(*(v10 + 8), v15);
              }

              goto LABEL_123;
            }

LABEL_118:
            heap_Free(*(v10 + 8), v12);
            goto LABEL_119;
          }

          v22 = strncpy(v21, v7, v20);
          v22[v20] = 0;
          v67 = v22;
          v7 = v22;
          v13 = v65;
        }

        else
        {
          v67 = 0;
        }

        if (v13)
        {
          v15 = 0;
        }

        v23 = brkhlp_SearchAddOn(a1, v7, v73);
        v24 = v23;
        if ((v23 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on broker string %s", v7);
          goto LABEL_24;
        }

        if ((v23 & 0x1FFF) == 0xA)
        {
          goto LABEL_28;
        }

        v64 = v15;
        v28 = strlen(v7);
        v15 = heap_Alloc(*(v10 + 8), (v28 + 4));
        if (!v15)
        {
          goto LABEL_109;
        }

        if (engbrk_CreateSurrogateBrokerString(v7, v15))
        {
          v24 = brkhlp_SearchAddOn(a1, v15, v73);
          if ((v24 & 0x80000000) == 0)
          {
            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v15);
          }

          if ((v24 & 0x1FFF) == 0xA)
          {
            goto LABEL_28;
          }

          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }
        }

        v29 = strcpy(v15, v7);
        v30 = strstr(v29, "mpthreeml");
        if (!v30)
        {
          goto LABEL_53;
        }

        strcpy(v30, "mpthreevadml");
        v31 = brkhlp_SearchAddOn(a1, v15, v73);
        v24 = v31;
        if ((v31 & 0x80000000) == 0)
        {
          log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v15);
LABEL_43:
          heap_Free(*(v10 + 8), v15);
          v15 = v64;
          goto LABEL_24;
        }

        if ((v31 & 0x1FFF) == 0xA)
        {
          goto LABEL_28;
        }

        if (engbrk_CreateSurrogateBrokerString(v15, v15))
        {
          v24 = brkhlp_SearchAddOn(a1, v15, v73);
          if ((v24 & 0x80000000) == 0)
          {
            log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : match on Surrogate broker string %s", v15);
          }

          if ((v24 & 0x1FFF) == 0xA)
          {
            goto LABEL_28;
          }

          heap_Free(*(v10 + 8), v15);
          v15 = v64;
          if ((v24 & 0x80000000) == 0)
          {
LABEL_24:
            if (*(*v73 + 16))
            {
              if (v15)
              {
                v5 = brkhlp_SearchClcArchive(a1[1], *v73, v15 + 1, a3, v12, a1);
LABEL_28:
                v15 = 0;
                goto LABEL_109;
              }

              v5 = v24;
LABEL_109:
              hlp_ReleaseUriFetcherInterface(v10, v12);
              if (!v18)
              {
                goto LABEL_116;
              }

              goto LABEL_110;
            }

            v26 = **v73;
            *&v69[0] = 0;
            if ((ssftmap_FindReadOnly(v26, "FULLPATHCOMPONENT", v69) & 0x80000000) == 0)
            {
              if (*&v69[0])
              {
                v27 = **&v69[0];
                if (**&v69[0])
                {
                  v63 = v15;
                  v15 = 0;
                  goto LABEL_62;
                }
              }
            }

LABEL_56:
            v63 = v15;
            if (v65)
            {
              v15 = 0;
              v27 = v7;
              goto LABEL_63;
            }

            v33 = strlen(v7);
            v34 = heap_Alloc(*(v10 + 8), (v33 + 1));
            if (!v34)
            {
              goto LABEL_28;
            }

            v27 = v34;
            v35 = 0;
            v36 = 1;
            do
            {
              v27[v35] = __tolower(v7[v35]);
              v35 = v36;
            }

            while (strlen(v7) >= v36++);
            v15 = v27;
LABEL_62:
            if (!v65)
            {
LABEL_66:
              v66 = v12 + 3;
              v5 = osspi_DataOpenEx(*(v10 + 64), *(v10 + 8), v12[3], v12[4], v12[5], v27, v12);
              if ((v5 & 0x80000000) != 0)
              {
                if (a3)
                {
                  log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen failed: %s, %x", v27, v5);
                }

                else
                {
                  v48 = strcmp(v27, v7);
                  v49 = a1[1];
                  if (v48)
                  {
                    log_OutPublic(v49, "BROKER", 275, "%s%s%s%s%s%x", "BrokerString", v7);
                  }

                  else
                  {
                    log_OutPublic(v49, "BROKER", 275, "%s%s%s%x");
                  }
                }
              }

              else
              {
                log_OutText(a1[1], "BROKER", 3, 0, "brk_DataOpen : osspi_DataOpen %s, %p", v27, *v12);
                if (v63)
                {
                  v62 = a3;
                  v39 = strstr(v7, "clc");
                  v40 = strstr(v7, "clmnn");
                  *v61 = *v73;
                  v41 = clcarchive_ObjOpen(**a1, *(*a1 + 8), v7, (*v73 + 16));
                  v5 = v41;
                  if ((v41 & 0x80000000) == 0)
                  {
                    v42 = v18;
                    v43 = (v40 | v39) != 0;
                    if (v40 | v39 && *(a1 + 6))
                    {
                      v44 = 0;
                      v45 = (v41 & 0x1FFF) == 1;
                      v46 = v62;
                      v47 = *v61;
                    }

                    else
                    {
                      v47 = *v61;
                      v50 = osspi_ClcDataOpen(*v12, *(*v61 + 16));
                      v5 = v50;
                      v44 = v50 >> 31;
                      v45 = (v50 & 0x1FFF) == 1;
                      v46 = v62;
                      if ((v50 & 0x1FFF) != 1 && (v50 & 0x80000000) != 0)
                      {
                        v45 = 0;
                        *(*v61 + 16) = 0;
                      }
                    }

                    if (*(a1 + 6))
                    {
                      v51 = v43;
                    }

                    else
                    {
                      v51 = 0;
                    }

                    v18 = v42;
                    if ((v45 & v44 & 1) != 0 || v51)
                    {
                      v70 = 0;
                      v71 = 0;
                      memset(v69, 0, sizeof(v69));
                      clcarchive_GetMemoryStreamInterface(v69);
                      v68 = 0;
                      v52 = engbrk_DataMapEx(a1, v12, 0, &v71, &v70);
                      if ((v52 & 0x80000000) != 0)
                      {
                        v5 = v52;
                      }

                      else
                      {
                        LODWORD(v5) = clcarchive_Parse(*(v47 + 16), v69, &v70, &v68, 1);
                        v53 = engbrk_DataUnmap(a1, v12, v70);
                        if (v5 > -1 && v53 < 0)
                        {
                          LODWORD(v5) = v53;
                        }

                        v55 = osspi_DataClose(*v12);
                        *v12 = 0;
                        if (v5 > -1 && v55 < 0)
                        {
                          v5 = v55;
                        }

                        else
                        {
                          v5 = v5;
                        }

                        if (v12[3] && v12[4])
                        {
                          objc_ReleaseObject(*(v10 + 48), "URIFETCHER");
                          *v66 = 0;
                          v12[4] = 0;
                        }
                      }
                    }

                    if ((v5 & 0x80000000) == 0)
                    {
                      v5 = brkhlp_SearchClcArchive(a1[1], v47, v63 + 1, v46, v12, a1);
                      v57 = *v73;
                      v58 = *(*v73 + 16);
                      if (v58)
                      {
                        if (v5)
                        {
                          clcarchive_ObjClose(v58);
                          *(v57 + 16) = 0;
                          osspi_DataClose(*v12);
                          *v12 = 0;
                          if (v12[3])
                          {
                            if (v12[4])
                            {
                              objc_ReleaseObject(*(v10 + 48), "URIFETCHER");
                              *v66 = 0;
                              v12[4] = 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_109;
            }

LABEL_63:
            if (UriGetUrlPrefixLength(v27, 0) && (objc_GetObject(*(v10 + 48), "URIFETCHER", &v72) & 0x80000000) == 0)
            {
              v38 = v72;
              v12[3] = *(v72 + 8);
              *(v12 + 2) = *(v38 + 16);
            }

            goto LABEL_66;
          }
        }

        else
        {
LABEL_53:
          heap_Free(*(v10 + 8), v15);
          v15 = v64;
        }

        if (v15)
        {
          v32 = brkhlp_RegisterAddon(v7, 0, 0, v73, *a1);
          if ((v32 & 0x80000000) != 0)
          {
            v15 = 0;
            v5 = v32;
            goto LABEL_109;
          }
        }

        goto LABEL_56;
      }
    }
  }

  return result;
}

uint64_t engbrk_CreateSurrogateBrokerString(char *__s, uint64_t a2)
{
  if (*__s)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = __s[v4];
      v8 = (v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (v8 && v7 != 45)
      {
        if (v7 == 95 || v7 == 47)
        {
          if (v7 == 95)
          {
            v5 = v5;
          }

          else
          {
            v5 = 1;
          }

          LOBYTE(v7) = 95;
        }

        else
        {
          v5 = 1;
          LOBYTE(v7) = 45;
        }
      }

      *(a2 + v4) = v7;
      v4 = v6;
    }

    while (strlen(__s) > v6++);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(a2 + v4) = 0;
  return v5;
}

uint64_t brkhlp_SearchClcArchive(uint64_t a1, uint64_t a2, char *__s, char a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 16);
  memset(v18, 0, sizeof(v18));
  if (strlen(__s) <= 0x7F)
  {
    engbrk_CreateSurrogateBrokerString(__s, v18);
  }

  if (*(v12 + 16))
  {
    v13 = 0;
    v14 = 0;
    while (LH_stricmp(v18, *(*(v12 + 8) + v13)))
    {
      ++v14;
      v13 += 40;
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_7;
      }
    }

    *(a5 + 16) = v14;
    *(a5 + 8) = v12;
    v16 = critsec_Enter(*(*a6 + 24));
    if ((v16 & 0x80000000) == 0)
    {
      ++*(v12 + 120);
      return critsec_Leave(*(*a6 + 24));
    }

    return v16;
  }

  else
  {
LABEL_7:
    v15 = 2169528333;
    if (a4)
    {
      log_OutText(a1, "BROKER", 3, 0, "brk_DataOpen : SearchClcArchive failed: %s:%s", *(a2 + 8), __s);
    }

    else
    {
      log_OutPublic(a1, "BROKER", 257, "%s%s%s%s", "archive", *(a2 + 8), "data", __s);
    }
  }

  return v15;
}

uint64_t brkhlp_RegisterAddon(char *a1, char *a2, uint64_t a3, void *a4, void *a5)
{
  v17 = 0;
  *v18 = 0;
  v5 = 2169528326;
  if (a1)
  {
    if (a5)
    {
      v7 = a5[2];
      if (v7)
      {
        v12 = brkhlp_SearchAddOn(*(v7 + 24), a1, a4);
        if ((v12 & 0x80000000) == 0 && a3 && !*(*a4 + 16))
        {
          *(*a4 + 16) = a3;
          return v12;
        }

        if ((v12 & 0x1FFF) != 0xA)
        {
          v13 = *(a5[2] + 8);
          v15[0] = BRK_HDRPARS_TAG_MAP_IELEM;
          v15[1] = *off_1F42CE718;
          v16 = off_1F42CE728;
          v12 = ssftmap_ObjOpen(v13, 1, v15, v18);
          if ((v12 & 0x80000000) == 0)
          {
            v12 = brkhlp_allocateAndStoreTagInMap(*(a5[2] + 8), *v18, a1, "BROKER", &v17);
            if ((v12 & 0x80000000) == 0)
            {
              if (!a2 || (v12 = brkhlp_allocateAndStoreTagInMap(*(a5[2] + 8), *v18, a2, "FULLPATHCOMPONENT", v15), (v12 & 0x80000000) == 0))
              {
                v12 = brkhlp_AddNewAddOn(*v17, *v17, *v18, a5, a3);
                if ((v12 & 0x80000000) == 0)
                {
                  return brkhlp_SearchAddOn(*(a5[2] + 24), a1, a4);
                }
              }
            }
          }

          return v12;
        }

        return 2169528330;
      }
    }
  }

  return v5;
}

uint64_t engbrk_DataMapEx(void *a1, void *a2, uint64_t a3, unsigned int *a4, const void **a5)
{
  v5 = 2169528327;
  if (a2 && a1 && a4 && a5)
  {
    *a5 = 0;
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataMap : hData=%p Map Offset=%d Size=%d Data=%p : Begin", a2, a3, *a4, 0);
    v11 = a2[1];
    if (v11)
    {
      v12 = *(v11 + 8);
      v13 = *(a2 + 4);
      v14 = *(v12 + 40 * v13 + 16);
      v5 = 2169528324;
      if (v14 >= a3)
      {
        if (*a4)
        {
          v15 = *(v12 + 40 * v13 + 16);
          v14 = *a4;
        }

        else
        {
          *a4 = v14;
          v13 = *(a2 + 4);
          v15 = *(v12 + 40 * v13 + 16);
        }

        if (v14 + a3 > v15)
        {
          *a4 = v15 - a3;
          v13 = *(a2 + 4);
        }

        v16 = *(v12 + 40 * v13 + 8);
        if (v16)
        {
          v5 = 0;
          *a5 = (v16 + a3);
          goto LABEL_27;
        }

        v17 = critsec_Enter(*(*a1 + 56));
        if ((v17 & 0x80000000) != 0)
        {
          v5 = v17;
        }

        else
        {
          LODWORD(v5) = clcarchive_GetData(a2[1], *(a2 + 4), a3, *a4, a5);
          v18 = critsec_Leave(*(*a1 + 56));
          if (v5 > -1 && v18 < 0)
          {
            v5 = v18;
          }

          else
          {
            v5 = v5;
          }

          if ((v5 & 0x80000000) == 0)
          {
            goto LABEL_27;
          }
        }
      }
    }

    else
    {
      v5 = osspi_DataMap(*a2, a3, a4, a5);
      if ((v5 & 0x80000000) == 0)
      {
LABEL_27:
        log_OutText(a1[1], "BROKER", 4, 0, "brk_DataMap : End (%x, %p, %u)", v5, *a5, *a4);
        return v5;
      }
    }

    log_OutPublic(a1[1], "BROKER", 287, "%s%p%s%u%s%u%s%x", "hData", a2, "offset", a3, "size", *a4, "lhError", v5);
    goto LABEL_27;
  }

  return v5;
}

uint64_t engbrk_DataUnmap(void *a1, uint64_t *a2, const void *a3)
{
  v3 = 2169528327;
  if (a1 && a2 && a3)
  {
    v7 = *(*a1 + 16);
    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataUnmap : hData=%p pData=%p : Begin", a2, a3);
    v3 = critsec_Enter(*(*a1 + 24));
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v8 = a2[1];
    if (v8)
    {
      if (!*(*(v8 + 8) + 40 * *(a2 + 4) + 8))
      {
        heap_Free(*(v7 + 8), a3);
      }
    }

    else
    {
      LODWORD(v3) = osspi_DataUnmap(*a2, a3);
    }

    v9 = critsec_Leave(*(*a1 + 24));
    v10 = v3 > -1 && v9 < 0;
    v3 = v10 ? v9 : v3;
    if ((v3 & 0x80000000) != 0)
    {
LABEL_16:
      log_OutPublic(a1[1], "BROKER", 296, "%s%p%s%x", "hData", a2, "lhError", v3);
    }

    log_OutText(a1[1], "BROKER", 4, 0, "brk_DataUnmap : End %x", v3);
  }

  return v3;
}

uint64_t hlp_ReleaseUriFetcherInterface(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 32))
      {
        result = objc_ReleaseObject(*(result + 48), "URIFETCHER");
        *v2 = 0;
        v2[1] = 0;
      }
    }
  }

  return result;
}

uint64_t engbrk_DataClose(void *a1, uint64_t *a2)
{
  v2 = 2169528327;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = *(*a1 + 16);
  log_OutText(a1[1], "BROKER", 4, 0, "brk_DataClose : hData=%p : Begin", a2);
  if (!a2[1])
  {
    if (*a2)
    {
      v2 = osspi_DataClose(*a2);
      *a2 = 0;
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_23;
  }

  v6 = critsec_Enter(*(*a1 + 24));
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = a2[1];
  v8 = *(v7 + 120);
  if (v8)
  {
    v9 = v8 - 1;
    *(v7 + 120) = v9;
    if (!v9)
    {
LABEL_12:
      v18 = 0;
      if ((brkhlp_SearchAddOn(a1, *(v7 + 128), &v18) & 0x80001FFF) == 0x8000000A)
      {
LABEL_13:
        critsec_Leave(*(*a1 + 24));
        return 2169528330;
      }

      v10 = v18;
      if (v18)
      {
        goto LABEL_16;
      }

      v15 = strlen(*(a2[1] + 128));
      v16 = heap_Alloc(*(v5 + 8), (v15 + 1));
      if (!v16)
      {
        goto LABEL_13;
      }

      v17 = v16;
      engbrk_CreateSurrogateBrokerString(*(a2[1] + 128), v16);
      if (!strcmp(*(a2[1] + 128), v17))
      {
        heap_Free(*(v5 + 8), v17);
      }

      else
      {
        brkhlp_SearchAddOn(a1, v17, &v18);
        v10 = v18;
        heap_Free(*(v5 + 8), v17);
        if (v10)
        {
LABEL_16:
          *(v10 + 16) = 0;
        }
      }

      v11 = a2[1];
      if (*(v11 + 112))
      {
        osspi_DataClose(*(v11 + 112));
        v12 = a2[3];
        v11 = a2[1];
        *(v11 + 112) = 0;
        if (v12)
        {
          if (a2[4])
          {
            objc_ReleaseObject(*(v5 + 48), "URIFETCHER");
            a2[3] = 0;
            a2[4] = 0;
            v11 = a2[1];
          }
        }
      }

      clcarchive_ObjClose(v11);
      a2[1] = 0;
    }
  }

  else
  {
    log_OutText(a1[1], "BROKER", 1, 0, "brk_DataClose : RefCount is 0 before substruction. hData=%p", a2);
    v7 = a2[1];
    if (!*(v7 + 120))
    {
      goto LABEL_12;
    }
  }

  v13 = critsec_Leave(*(*a1 + 24));
  v2 = v13 & (v13 >> 31);
LABEL_23:
  if (a2[3] && a2[4])
  {
    objc_ReleaseObject(*(v5 + 48), "URIFETCHER");
    a2[3] = 0;
    a2[4] = 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    log_OutPublic(a1[1], "BROKER", 280, "%s%p%s%x", "hData", a2, "lhError", v2);
  }

  heap_Free(*(v5 + 8), a2);
  log_OutText(a1[1], "BROKER", 4, 0, "brk_DataClose : End %x", v2);
  return v2;
}

uint64_t engbrk_DataMap(void *a1, void *a2, uint64_t a3, unsigned int a4, const void **a5)
{
  v9 = a4;
  v7 = engbrk_DataMapEx(a1, a2, a3, &v9, a5);
  if ((v7 & 0x80000000) == 0 && a4 > v9)
  {
    bzero(*a5 + v9, a4 - v9);
  }

  return v7;
}

uint64_t engbrk_DataFreeze(uint64_t a1, void *a2)
{
  v2 = 2169528327;
  if (a1 && a2)
  {
    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataFreeze : hData=%p : Begin", a2);
    v2 = 0;
    if (!a2[1])
    {
      v5 = osspi_DataFreeze(*a2);
      v2 = v5;
      if ((v5 & 0x80000000) != 0 && (v5 & 0x1FFF) != 1)
      {
        log_OutPublic(*(a1 + 8), "BROKER", 297, "%s%p%s%x", "hData", a2, "lhError", v5);
      }
    }

    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataFreeze : End %x", v2);
  }

  return v2;
}

uint64_t engbrk_TagIteratorOpen(uint64_t a1, char *a2, char *a3, int a4, const void **a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = 2169528327;
  v28 = 0;
  v29 = 0;
  if (a1 && a2 && a3 && *a2 && a5 && *a3)
  {
    v9 = a4;
    v11 = *(*a1 + 16);
    *a5 = 0;
    log_OutText(*(v11 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen BrokerString=%s Query=%s QueryMode=%d: Begin", a2, a3, a4);
    v12 = brkhlp_SearchAddOn(a1, a2, &v29);
    if (v29)
    {
      v13 = v12 < 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 && (v12 & 0x1FFF) == 13)
    {
      v15 = 2169528333;
    }

    else
    {
      v15 = v12;
    }

    if ((v15 & 0x80000000) != 0 || !v29)
    {
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v27 = v11;
      v16 = 0;
    }

    else
    {
      v27 = v11;
      v16 = *v29;
    }

    for (i = a3; ; i = v19 + 1)
    {
      v18 = strchr(i, 47);
      v19 = v18;
      if (!v18 && *i == 42 && !i[1])
      {
        break;
      }

      if (v28)
      {
        v16 = *(v28 + 16);
      }

      if (!v16)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        if ((ssftmap_FindReadOnly(v16, i, &v28) & 0x80000000) != 0)
        {
LABEL_40:
          v15 = 2169528333;
          v11 = v27;
          goto LABEL_41;
        }

        break;
      }

      if ((v18 - i) > 0x7FuLL)
      {
        v21 = v16;
        v20 = i;
      }

      else
      {
        __strncpy_chk();
        v30[v19 - i] = 0;
        v20 = v30;
        v21 = v16;
      }

      if ((ssftmap_FindReadOnly(v21, v20, &v28) & 0x80000000) != 0)
      {
        goto LABEL_40;
      }
    }

    v11 = v27;
    v22 = heap_Calloc(*(v27 + 8), 1, 24);
    *a5 = v22;
    if (!v22)
    {
      v15 = 2169528330;
LABEL_43:
      v25 = *(v11 + 32);
      if (v9)
      {
        log_OutText(v25, "BROKER", 3, 0, "brk_TagIteratorOpen : BrokerString=%s Query=%s  Failure (%x)", a2, a3, v15);
      }

      else
      {
        log_OutPublic(v25, "BROKER", 282, "%s%s%s%s%s%x", "Broker String", a2, "Query", a3, "lhError", v15);
      }

      goto LABEL_46;
    }

    if (*i == 42 && !i[1])
    {
      if (v28)
      {
        v16 = *(v28 + 16);
      }

      String = ssftmap_IteratorOpen(v16, 0, 1, v22 + 16);
LABEL_53:
      v15 = String;
      **a5 = v27;
      if ((String & 0x80000000) == 0)
      {
LABEL_46:
        log_OutText(*(v11 + 32), "BROKER", 4, 0, "brk_TagIteratorOpen iterator address = %p: End", *a5);
        return v15;
      }

      goto LABEL_41;
    }

    v23 = ssftmap_IteratorOpen(v16, i, 1, v22 + 16);
    if ((v23 & 0x80000000) == 0)
    {
      String = brkhlp_CreateString(*a5 + 1, i, *(v27 + 8));
      goto LABEL_53;
    }

    v15 = v23;
LABEL_41:
    if (*a5)
    {
      engbrk_TagIteratorClose(*a5);
      *a5 = 0;
    }

    goto LABEL_43;
  }

  return v5;
}

uint64_t engbrk_TagIteratorClose(void *a1)
{
  if (!a1)
  {
    return 2169528327;
  }

  v2 = *a1;
  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorClose iterator=%p: Begin", a1);
  v3 = a1[1];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
  }

  v4 = a1[2];
  if (v4)
  {
    ssftmap_IteratorClose(v4);
  }

  heap_Free(*(v2 + 8), a1);
  log_OutText(*(v2 + 32), "BROKER", 4, 0, "brk_TagIteratorClose: End");
  return 0;
}

uint64_t engbrk_DataGetSize(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  result = 2169528327;
  if (a2 && a3 && a1 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataGetSize : hData=%p Get Size Valid=%d Size=%u : Begin", a2, *a3, 0);
    v9 = *(a2 + 8);
    if (v9)
    {
      *a4 = *(*(v9 + 8) + 40 * *(a2 + 16) + 16);
      v10 = 1;
      *a3 = 1;
    }

    else
    {
      v10 = *a3;
    }

    log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_DataGetSize : End (%x, %d, %u)", 0, v10, *a4);
    return 0;
  }

  return result;
}

uint64_t engbrk_TagIteratorNext(void *a1, const char **a2, const char **a3, const void **a4)
{
  v17 = 0;
  v4 = 2169528327;
  if (!a1 || !a2 || !a3)
  {
    return v4;
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext iterator=%p: Begin", a1);
  v9 = ssftmap_IteratorNext(a1[2], a2, &v17);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v10 = a1[1];
  if (!v10 || !strcmp(v10, *a2))
  {
    v11 = v17;
    if (*(v17 + 16))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v17;
    }

    *a3 = v12;
    if (a4)
    {
      *a4 = *(v11 + 8);
    }

LABEL_13:
    v4 = v9;
    goto LABEL_14;
  }

  v4 = 2169528343;
LABEL_14:
  v13 = "";
  v14 = *a2;
  if (!*a2)
  {
    v14 = "";
  }

  if (*a3)
  {
    v13 = *a3;
  }

  if (a4)
  {
    v15 = *a4;
  }

  else
  {
    v15 = 0;
  }

  log_OutText(*(*a1 + 32), "BROKER", 4, 0, "brk_TagIteratorNext Name=%s, Value=%s, Attrs=%p: End", v14, v13, v15);
  return v4;
}

uint64_t engbrk_ComponentPathQuery(void *a1, char *a2, void *a3)
{
  v3 = 2169528327;
  v9 = 0;
  if (!a1)
  {
    return v3;
  }

  if (!a3)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  if (!*a1)
  {
    return v3;
  }

  log_OutText(a1[1], "BROKER", 4, 0, "brk_ComponentPathQuery BrokerString=%s : Begin", a2);
  v3 = 2169528333;
  if ((brkhlp_SearchAddOn(a1, a2, &v9) & 0x80000000) != 0 || !v9)
  {
    return v3;
  }

  v7 = *v9;

  return brkhlp_SearchTag(v7, "FULLPATHCOMPONENT", a3);
}

uint64_t engbrk_ComponentPathRelease(uint64_t a1, const void *a2)
{
  result = 2169528327;
  if (a1)
  {
    if (a2)
    {
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease address = %p : Begin", a2);
      log_OutText(*(a1 + 8), "BROKER", 4, 0, "brk_ComponentPathRelease : End");
      return 0;
    }
  }

  return result;
}

uint64_t engbrk_RegisterCupAddon(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = 0;
  *a2 = 0;
  *a3 = 0;
  result = 2169528326;
  if (a1)
  {
    if (a4)
    {
      result = objc_GetAddRefCountedObject(*(*(a4 + 16) + 48), a1, ObjcLoadCupAddon, ObjcUnloadCupAddon, 0, &v9);
      if ((result & 0x80000000) == 0)
      {
        if (v9)
        {
          v8 = *(v9 + 32);
          if (v8)
          {
            *a2 = *(*v8 + 16);
            *a3 = v8[3];
          }
        }
      }
    }
  }

  return result;
}

uint64_t ObjcLoadCupAddon(_WORD *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  NullHandle = safeh_GetNullHandle();
  v10 = v9;
  inited = InitRsrcFunction(a1, a2, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = 2169528330;
  v13 = heap_Calloc(*(v24 + 8), 1, 32);
  if (v13)
  {
    v14 = v13;
    v15 = strhelper_Strdup(*(v24 + 8), a3);
    *(v14 + 8) = v15;
    if (v15)
    {
      v16 = heap_Calloc(*(v24 + 8), 1, 8);
      *(v14 + 24) = v16;
      if (v16)
      {
        v17 = UriToBrokerString(*(v24 + 8), a3);
        *(v14 + 16) = v17;
        if (v17)
        {
          if ((objc_GetObject(*(v24 + 48), "URIFETCHER", &v23) & 0x80000000) != 0)
          {
            v18 = 0;
          }

          else
          {
            v18 = v23[1];
            NullHandle = v23[2];
            v10 = v23[3];
          }

          v19 = clcarchive_ObjOpen(a1, a2, *(v14 + 16), &v22);
          if ((v19 & 0x80000000) == 0)
          {
            ++*(v22 + 120);
            v19 = osspi_DataOpenEx(*(v24 + 64), *(v24 + 8), v18, NullHandle, v10, a3, &v21);
            if ((v19 & 0x80000000) == 0)
            {
              v19 = osspi_ClcDataOpen(v21, v22);
              if ((v19 & 0x80000000) == 0)
              {
                **(v14 + 24) = v21;
                v19 = brkhlp_RegisterAddon(*(v14 + 16), a3, v22, v14, **(v24 + 24));
              }
            }
          }

          v12 = v19;
          if (v18 && NullHandle)
          {
            objc_ReleaseObject(*(v24 + 48), "URIFETCHER");
          }

          if ((v12 & 0x80000000) == 0)
          {
            *(a4 + 32) = v14;
            return v12;
          }
        }

        else
        {
          v12 = 2169528338;
        }
      }
    }

    FreeAllCupAddonResources(v24, v14);
  }

  return v12;
}

uint64_t ObjcUnloadCupAddon(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  inited = InitRsrcFunction(a1, a2, &v7);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      FreeAllCupAddonResources(v7, v5);
    }
  }

  return inited;
}

uint64_t engbrk_UnregisterCupAddon(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    objc_ReleaseObject(*(*(a2 + 16) + 48), a1);
  }

  return 0;
}

uint64_t engbrk_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 8;
  }

  result = 0;
  *a2 = &IBroker;
  return result;
}

char *brkhlp_CloneString(void *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = heap_Calloc(a1, 1, (v4 + 1));
  if (!v5)
  {
    return 0;
  }

  return strcpy(v5, __s);
}

uint64_t brkhlp_ElemCopyAddOn(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v5 = heap_Alloc(a2, 24);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  result = 0;
  v8 = *a1;
  *(v6 + 16) = *(a1 + 2);
  *v6 = v8;
  *a1 = 0;
  *(a1 + 2) = 0;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeAddOn(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      hdrpars_FreeHeader(v4);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_ElemCopyLoadedIntf(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2169528330;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v7;
  *a1 = 0;
  NullHandle = safeh_GetNullHandle();
  result = 0;
  *(a1 + 16) = NullHandle;
  *(a1 + 24) = v10;
  *a3 = v6;
  return result;
}

uint64_t *brkhlp_ElemFreeLoadedIntf(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (result[2])
    {
      v4 = *(result[1] + 24);
      if (v4)
      {
        v4();
      }
    }

    if (*v3)
    {
      osspi_DynModClose(*v3);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t brkhlp_InternalSearchAddOn(uint64_t a1, char *a2, void *a3)
{
  v5 = 2169528333;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v6 = ssftmap_IteratorOpen(*(*a1 + 40), a2, 1, &v12);
  v7 = v6;
  if ((v6 & 0x80000000) != 0)
  {
    if ((v6 & 0x1FFF) == 0x14)
    {
      return 2169528333;
    }

    else
    {
      return v6;
    }
  }

  while ((ssftmap_IteratorNext(v12, &v11, &v10) & 0x80000000) == 0)
  {
    v8 = LH_stricmp(a2, v11);
    if (!v8)
    {
      *a3 = v10;
      break;
    }

    if (v8 > 0)
    {
      break;
    }
  }

  ssftmap_IteratorClose(v12);
  if (*a3)
  {
    return v7;
  }

  return v5;
}

uint64_t brkhlp_allocateAndStoreTagInMap(void *a1, uint64_t a2, char *__s, uint64_t a4, void *a5)
{
  v10 = strlen(__s);
  v11 = heap_Calloc(a1, 1, v10 + 25);
  if (!v11)
  {
    return 2169528330;
  }

  v12 = v11;
  v13 = (v11 + 24);
  *v12 = v13;
  strcpy(v13, __s);
  result = ssftmap_Insert(a2, a4, v12);
  if ((result & 0x80000000) == 0)
  {
    *a5 = v12;
  }

  return result;
}

void *brkhlp_ElemFreeTag(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      ssftmap_ObjClose(v4);
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      ssftmap_ObjClose(v5);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

void *FreeAllCupAddonResources(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = a2[3];
  if (v5)
  {
    v6 = *v5;
    v7 = a2[2];
    v8 = **(a1 + 24);
    v16 = 0;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        if ((critsec_Enter(*(v8 + 24)) & 0x80000000) == 0)
        {
          if ((brkhlp_InternalSearchAddOn(*(*(v8 + 16) + 24), v7, &v16) & 0x80000000) == 0)
          {
            v11 = v16;
            v12 = *(v16 + 16);
            if (v12)
            {
              if (v6)
              {
                osspi_ClcDataClose(v6, v12);
                v12 = *(v11 + 16);
              }

              --*(v12 + 120);
              clcarchive_ObjClose(v12);
            }
          }

          if ((ssftmap_Remove(*(v8 + 40), v7) & 0x80000000) == 0)
          {
            log_OutText(*(v10 + 32), "BROKER", 4, 0, "brkhlp_RemoveAddOn: %s", v7);
          }

          critsec_Leave(*(v8 + 24));
        }
      }
    }

    if (v6)
    {
      osspi_DataClose(v6);
    }

    heap_Free(v4, a2[3]);
    v4 = *(a1 + 8);
  }

  v13 = a2[1];
  if (v13)
  {
    heap_Free(v4, v13);
    v4 = *(a1 + 8);
  }

  v14 = a2[2];
  if (v14)
  {
    heap_Free(v4, v14);
    v4 = *(a1 + 8);
  }

  return heap_Free(v4, a2);
}

uint64_t brkhlp_GetBuiltinInterface(char *__s1, void *a2, void *a3, void *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v8 = "fe/fe_prmfx";
  v9 = &off_1F42CE750;
  while (strcmp(__s1, v8))
  {
    v10 = *v9;
    v9 += 4;
    v8 = v10;
    if (!v10)
    {
      return 2169528333;
    }
  }

  v12 = *(v9 - 3);
  result = 0;
  if (v12)
  {
    *a2 = v12;
  }

  else
  {
    *a3 = *(v9 - 2);
    *a4 = *(v9 - 1);
  }

  return result;
}

uint64_t log_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = 2226135048;
  v20 = 0;
  if (!a4)
  {
    return 2226135046;
  }

  if ((InitRsrcFunction(a1, a2, &v20) & 0x80000000) == 0)
  {
    *a4 = 0;
    v8 = heap_Calloc(*(v20 + 8), 1, 224);
    if (v8)
    {
      v9 = v8;
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 192) = 0u;
      *(v8 + 208) = 0u;
      *(v8 + 160) = 0u;
      *(v8 + 176) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = v20;
      v24 = 0;
      v25 = 0;
      v22 = 0;
      v23 = 0;
      bzero(v26, 0x400uLL);
      v21 = 0;
      if ((InitRsrcFunction(*v9, v9[1], &v25) & 0x80000000) != 0 || !*(v25 + 40))
      {
LABEL_49:
        log_ClassClose(v9);
      }

      else
      {
        if (brk_TagIteratorOpen(*(v9[2] + 3), "logging", "*", 1, &v21))
        {
          v10 = 1;
        }

        else
        {
          v10 = v21 == 0;
        }

        if (!v10)
        {
          while ((brk_TagIteratorNext(v21, &v23, &v22) & 0x80000000) == 0)
          {
            v12 = v22;
            v11 = v23;
            if (v23)
            {
              v13 = v22 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (v13 || !strcmp(v23, "BROKERSTRING"))
            {
              continue;
            }

            v26[0] = 0;
            if (!strcmp(v11, "LOG.DIAGNOSTIC"))
            {
              v23 = "logfile.enabled";
              goto LABEL_36;
            }

            if (!strcmp(v11, "LOG.DIAGNOSTIC.LEVEL"))
            {
              v14 = "logfile.filter.level";
            }

            else if (!strcmp(v11, "LOG.DIAGNOSTIC.DIR"))
            {
              v14 = "logfile.filename.1";
            }

            else
            {
              if (!strcmp(v11, "LOG.DIAGNOSTIC.FILEMAXSIZEMB"))
              {
                v23 = "logfile.max_size";
                __strcpy_chk();
                __strcat_chk();
LABEL_32:
                v22 = v26;
                goto LABEL_36;
              }

              if (!strcmp(v11, "LOG.DIAGNOSTIC.FILEMIMETYPE"))
              {
                v14 = "logfile.filemimetype";
              }

              else
              {
                if (!strcmp(v11, "LOG.DIAGNOSTIC.MODULES"))
                {
                  v23 = "logfile.filter.modules";
                  LH_MapModuleNamesToIds(v12, v26, 0x400u);
                  goto LABEL_32;
                }

                if (!strcmp(v11, "LOG.TSO"))
                {
                  v14 = "logtso.enabled";
                }

                else if (!strcmp(v11, "LOG.TSO.LEVEL"))
                {
                  v14 = "logtso.filter.level";
                }

                else
                {
                  if (strcmp(v11, "LOG.TSO.FILENAME"))
                  {
                    goto LABEL_36;
                  }

                  v14 = "logtso.filename";
                }
              }
            }

            v23 = v14;
LABEL_36:
            Str = paramc_ParamGetStr(*(v25 + 40), v23, &v24);
            v16 = *(v25 + 40);
            if (Str < 0)
            {
              if ((paramc_ParamSetStr(v16, v23, v22) & 0x80000000) != 0)
              {
                brk_TagIteratorClose(v21);
                v4 = 2226135040;
                goto LABEL_49;
              }
            }

            else
            {
              paramc_ParamRelease(v16);
            }
          }

          brk_TagIteratorClose(v21);
        }

        v17 = 0;
        v18 = &LOG_SUBSCRIBER_ID;
        do
        {
          if (v17 != 5)
          {
            brk_InterfaceQueryEx(*(v9[2] + 3), *v18, 1, 1, &v9[v17 + 6], &v9[v17 + 5]);
          }

          v17 += 5;
          ++v18;
        }

        while (v17 != 25);
        v4 = 0;
        *a4 = v9;
      }
    }

    else
    {
      return 2226135050;
    }
  }

  return v4;
}

uint64_t log_ClassClose(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = 5; i != 30; i += 5)
  {
    v3 = a1[i];
    if (v3)
    {
      v4 = brk_InterfaceRelease(*(a1[2] + 24), v3);
      if ((v4 & 0x80000000) != 0)
      {
        return v4;
      }

      a1[i] = 0;
    }
  }

  v8 = 0;
  inited = InitRsrcFunction(*a1, a1[1], &v8);
  if ((inited & 0x80000000) != 0)
  {
    return 2226135048;
  }

  v6 = inited;
  heap_Free(*(v8 + 8), a1);
  return v6;
}

uint64_t log_ObjOpen(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = 2226135046;
    if (a2)
    {
      *a2 = 0;
      v5 = heap_Calloc(*(*(a1 + 16) + 8), 1, 128);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v5[6] = 0u;
        v5[7] = 0u;
        v5[4] = 0u;
        v5[5] = 0u;
        v5[2] = 0u;
        v5[3] = 0u;
        *v5 = 0u;
        v5[1] = 0u;
        *v5 = *(*(a1 + 16) + 8);
        v8 = (a1 + 56);
        do
        {
          v9 = *(v8 - 2);
          *(v6 + v7 + 24) = v9;
          if (v9)
          {
            v10 = (*(v9 + 32))(*(v8 - 1), *v8, v6 + v7 + 16);
            if ((v10 & 0x80000000) != 0)
            {
              v3 = v10;
              log_ObjClose(v6);
              return v3;
            }
          }

          v8 += 5;
          v7 += 16;
        }

        while (v7 != 80);
        v11 = 0;
        *(v6 + 96) = 1;
        do
        {
          v12 = *(v6 + v11 + 24);
          if (v12)
          {
            v13 = *(v12 + 80);
            if (v13)
            {
              v14 = v13(*(v6 + v11 + 16));
              if (v14 > *(v6 + 96))
              {
                *(v6 + 96) = v14;
              }
            }
          }

          v11 += 16;
        }

        while (v11 != 80);
        v3 = 0;
        *a2 = v6;
      }

      else
      {
        return 2226135050;
      }
    }
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  return v3;
}

uint64_t log_ObjClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      v3 = v1[v2 + 3];
      if (v3)
      {
        v4 = v3[5];
        if (v4)
        {
          if (v1[v2 + 2])
          {
            result = v4();
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      v2 += 2;
      if (v2 == 10)
      {
        heap_Free(*v1, v1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t log_SubscriberAdd(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 112))
    {
      return 2226135040;
    }

    else
    {
      *(result + 104) = a2;
      *(result + 112) = a3;
      if (a3 && (v4 = *(a3 + 80)) != 0 && (v5 = v4(a2), v5 > *(v3 + 96)))
      {
        v6 = v5;
        result = 0;
        *(v3 + 96) = v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t LH_ERROR_to_VERROR(int a1)
{
  v1 = 11;
  for (i = &dword_1C37AAA70; *(i - 1) != a1; i += 2)
  {
    if (!--v1)
    {
      return 2703237376;
    }
  }

  v4 = *i;
  if (v4)
  {
    return v4 | 0xA1202000;
  }

  else
  {
    return 0;
  }
}

uint64_t compstats_ObjOpen(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = 0;
  result = 2285903879;
  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  result = InitRsrcFunction(a1, a2, &v21);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = heap_Calloc(*(v21 + 8), 1, 320);
  if (!v9)
  {
LABEL_13:
    log_OutPublic(*(v21 + 32), "CompStats", 2688, 0);
    return 2285903882;
  }

  v10 = v9;
  *(v9 + 284) = a3;
  v11 = 2 * a3;
  v12 = heap_Calloc(*(v21 + 8), v11, 56);
  v10[36] = v12;
  if (!v12)
  {
    heap_Free(*(v21 + 8), v10);
    goto LABEL_13;
  }

  *v10 = a1;
  v10[1] = a2;
  v10[2] = v21;
  v10[38] = v12 + 56 * a3;
  if (v11)
  {
    v13 = 0;
    __asm { FMOV            V1.2D, #1.0 }

    do
    {
      v19 = v10[36];
      if (v19)
      {
        v20 = v19 + v13;
        *(v20 + 48) = 0;
        *(v20 + 16) = 0uLL;
        *(v20 + 32) = 0uLL;
        *v20 = 0uLL;
        *(v20 + 40) = _Q1;
        *(v20 + 32) = 0;
      }

      v13 += 56;
    }

    while (56 * v11 != v13);
  }

  *a4 = v10;
  *(a4 + 8) = 61435;
  return compstats_Reset(v10);
}

uint64_t compstats_ClockInit(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  result = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = _Q0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t compstats_Reset(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  *(a1 + 24) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  v1 = *(a1 + 284);
  if (v1)
  {
    v2 = 0;
    for (i = 0; i < v1; ++i)
    {
      v4 = *(a1 + 288);
      if (v4)
      {
        v5 = v4 + v2;
        *(v5 + 32) = 0;
        *v5 = 0uLL;
        *(v5 + 16) = 0uLL;
        v1 = *(a1 + 284);
      }

      v2 += 56;
    }
  }

  return 0;
}

uint64_t compstats_ObjClose(uint64_t a1, uint64_t a2)
{
  v3 = safeh_HandleCheck(a1, a2, 61435, 320);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(*(a1 + 16) + 8);
    heap_Free(v4, *(a1 + 288));
    heap_Free(v4, a1);
  }

  return v3;
}

uint64_t compstats_Start(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 2285903879;
  if (a1)
  {
    if (*(a1 + 284) <= a3)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2689, 0);
    }

    else if (*(a1 + 24) < 0x40u)
    {
      v6 = compstats_ClockXStart(*(a1 + 288) + 56 * a3, *(a1 + 16) + 384);
      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }

      else
      {
        v7 = *(a1 + 24);
        if (v7 && (v8 = *(a1 + 4 * (v7 - 1) + 28)) != 0)
        {
          v3 = compstats_ClockXStop(*(a1 + 288) + 56 * v8, *(a1 + 16) + 384);
          v7 = *(a1 + 24);
        }

        else
        {
          v3 = 0;
        }

        *(a1 + 4 * v7 + 28) = a3;
        *(a1 + 24) = v7 + 1;
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2690, 0);
      return 2285903889;
    }
  }

  return v3;
}

uint64_t compstats_ClockXStart(uint64_t a1, uint64_t a2)
{
  v2 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      log_OutPublic(0, "CompStats", 2693, 0);
      return 2285903889;
    }

    else
    {
      v4 = *a2;
      if (*a2)
      {
        memset(v6, 0, 12);
        (*v4)(*(a2 + 8), v6);
        v2 = 0;
        *(a1 + 12) = v6[0];
        *(a1 + 4) = *(v6 + 4);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t compstats_ClockXStop(uint64_t a1, uint64_t a2)
{
  v2 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      v10 = 0;
      v11 = 0;
      memset(v8, 0, sizeof(v8));
      v9 = 0;
      compstats_ClockXStart(v8, a2);
      v4 = vsub_s32(*(v8 + 4), *(a1 + 4));
      v5 = *(a1 + 16);
      v6 = HIDWORD(v8[0]) - *(a1 + 12);
      *(a1 + 28) = vadd_s32(*(a1 + 28), v4);
      *(a1 + 36) += v6;
      if (*(a1 + 20) + v5 < vadd_s32(vdup_lane_s32(v4, 1), v4).u32[0])
      {
        *(a1 + 16) = v4;
      }

      if (*(a1 + 24) < v6)
      {
        *(a1 + 24) = v6;
      }

      v2 = 0;
      *(a1 + 8) = 0;
      *a1 = (*a1 + 1);
    }

    else
    {
      log_OutPublic(0, "CompStats", 2694, 0);
      return 2285903889;
    }
  }

  return v2;
}

uint64_t compstats_Stop(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 2285903879;
  if (!a1)
  {
    return v3;
  }

  if (*(a1 + 284) <= a3)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2691, 0);
    return v3;
  }

  v5 = *(a1 + 24);
  if (!v5 || *(a1 + 28 + 4 * (v5 - 1)) != a3)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "CompStats", 2692, 0);
    return 2285903889;
  }

  v3 = compstats_ClockXStop(*(a1 + 288) + 56 * a3, *(a1 + 16) + 384);
  v6 = *(a1 + 24);
  *(a1 + 24) = v6 - 1;
  if (v6 == 1)
  {
    return v3;
  }

  v7 = *(a1 + 28 + 4 * (v6 - 2));
  if (!v7)
  {
    return v3;
  }

  v8 = *(a1 + 288) + 56 * v7;
  v9 = *(a1 + 16) + 384;

  return compstats_ClockXStart(v8, v9);
}

uint64_t compstats_Notify(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 2285903879;
  }

  if (a3 != 8)
  {
    return 0;
  }

  if (!*(a1 + 296))
  {
    *(a1 + 296) = 1;
    memcpy(*(a1 + 304), *(a1 + 288), 56 * *(a1 + 284));
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = 4 * v4;
      do
      {
        v6 = *(a1 + 304) + 56 * *(a1 + 24 + v5);
        if (*(v6 + 12))
        {
          compstats_ClockXStop(v6, *(a1 + 16) + 384);
        }

        v5 -= 4;
      }

      while (v5);
    }

    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "audiooutputbufsamples", (a1 + 312));
  }

  return 0;
}

uint64_t compstats_ClockReset(uint64_t a1)
{
  if (!a1)
  {
    return 2285903879;
  }

  result = 0;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t compstats_Log(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v15 = 0;
  result = 2285903879;
  if (a1 && a3)
  {
    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "pipeline", &v15) & 0x80000000) != 0)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = v15;
    }

    if (*(a1 + 296))
    {
      compstats_LogReport(*(a1 + 284), *(a1 + 304), a3, a4, " Latency", v14, *(a1 + 312), a5, 0, 0);
      v14 = v15;
    }

    compstats_LogReport(*(a1 + 284), *(a1 + 288), a3, a4, 0, v14, *(a1 + 312), a5, a6, a7);
    return 0;
  }

  return result;
}

uint64_t compstats_LogReport(unsigned int a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6, int a7, uint64_t a8, unsigned int a9, unsigned int a10)
{
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = "";
  }

  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = "";
  }

  log_OutText(a3, "CompStats", 2, 0, "====================Compstats %s%s Report Start====================", v16, v17);
  if (a6 && *a6)
  {
    log_OutText(a3, "CompStats", 2, 0, "Pipeline %s", a6);
  }

  if (a7)
  {
    log_OutText(a3, "CompStats", 2, 0, "Audio output buffer samples %u", a7);
  }

  v18 = a9;
  v19 = a10;
  log_OutText(a3, "CompStats", 2, 0, "<CPU msec> / <real-time msec>, <%% CPU> / <%% real-time> (timer starts), <max CPU> / <max real-time>");
  log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------");
  v20 = *(a2 + 32) + *(a2 + 28);
  v21 = *(a2 + 36);
  if (a1 <= 1)
  {
    v37 = v20 == 0;
    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = 0.0001;
    }

    if (v21)
    {
      v32 = v21;
    }

    else
    {
      v32 = 0.0001;
    }

    v31 = 0.0;
    v29 = 0.0;
  }

  else
  {
    v42 = v17;
    v43 = v16;
    v22 = 0;
    v23 = 0;
    v24 = a1 - 1;
    v44 = a2;
    v25 = (a2 + 92);
    v26 = v24;
    v27 = *(a2 + 36);
    v28 = v20;
    do
    {
      v28 -= *(v25 - 2) + *(v25 - 1);
      v27 -= *v25;
      if (v23 <= *(v25 - 4) + *(v25 - 5))
      {
        v23 = *(v25 - 4) + *(v25 - 5);
      }

      if (v22 <= *(v25 - 3))
      {
        v22 = *(v25 - 3);
      }

      v25 += 14;
      --v26;
    }

    while (v26);
    v29 = v23;
    v41 = v20 == 0;
    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = 0.0001;
    }

    v31 = v22;
    if (v21)
    {
      v32 = v21;
    }

    else
    {
      v32 = 0.0001;
    }

    v33 = (a8 + 8);
    v34 = (v44 + 104);
    do
    {
      if (a8)
      {
        v35 = *v33;
        if (!*v33)
        {
          v35 = "";
        }
      }

      else
      {
        v35 = "";
      }

      v36 = (*(v34 - 4) + *(v34 - 5));
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f, %6.1f%% / %6.1f%% (%4u), %7.1f / %7.1f", v35, v36 / *(v34 - 1), *(v34 - 3) / *v34, ((v36 / v30) * 100.0), ((*(v34 - 3) / v32) * 100.0), *(v34 - 12), (*(v34 - 7) + *(v34 - 8)) / *(v34 - 1), *(v34 - 6) / *v34);
      ++v33;
      v34 += 7;
      --v24;
    }

    while (v24);
    v21 = v27;
    v20 = v28;
    v17 = v42;
    v16 = v43;
    a2 = v44;
    v19 = a10;
    v18 = a9;
    v37 = v41;
  }

  log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f, %6.1f%% / %6.1f%% (%4u)", "Other", v20 / *(a2 + 40), v21 / *(a2 + 48), ((v20 / v30) * 100.0), ((v21 / v32) * 100.0), 0);
  log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------");
  v38 = v30;
  v39 = v32;
  log_OutText(a3, "CompStats", 2, 0, "%-25s %7.1f / %7.1f  %6s    %6s   %4s   %7.1f / %7.1f", "TOTAL", v38 / *(a2 + 40), v39 / *(a2 + 48), "", "", "", v29 / *(a2 + 40), v31 / *(a2 + 48));
  if (v19 | v18)
  {
    log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------");
    if (v18)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7u", "Input text length (bytes)", v18);
    }

    if (v19)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7u", "Output duration (msec)", v19);
      if (!v37)
      {
        log_OutText(a3, "CompStats", 2, 0, "%-25s %7.2f / %7.2f", "Real-time rate", v19 / (v38 / *(a2 + 40)), v19 / (v39 / *(a2 + 48)));
      }
    }

    if (v18)
    {
      log_OutText(a3, "CompStats", 2, 0, "%-25s %7.2f / %7.2f", "Msec per byte of input", v38 / *(a2 + 40) / v18, v39 / *(a2 + 48) / v18);
    }

    log_OutText(a3, "CompStats", 2, 0, "----------------------------------------------------------------------------------------");
  }

  return log_OutText(a3, "CompStats", 2, 0, "====================Compstats %s%s Report End====================", v16, v17);
}

uint64_t compstats_ClockStart(uint64_t a1)
{
  v1 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      log_OutPublic(0, "CompStats", 2693, 0);
      return 2285903889;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t compstats_ClockStop(uint64_t a1)
{
  v1 = 2285903879;
  if (a1)
  {
    if (*(a1 + 12))
    {
      return 0;
    }

    else
    {
      log_OutPublic(0, "CompStats", 2694, 0);
      return 2285903889;
    }
  }

  return v1;
}

uint64_t critsec_cb_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2168463367;
  if (a3)
  {
    v11 = heap_Calloc(a1, 1, 32);
    *a5 = v11;
    if (v11)
    {
      v5 = 0;
      *v11 = a1;
      *(*a5 + 8) = a2;
      *(*a5 + 16) = a3;
      *(*a5 + 24) = a4;
    }

    else
    {
      return 2168463370;
    }
  }

  return v5;
}

uint64_t critsec_cb_ClassClose(void **a1)
{
  result = 2168463367;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(**a1, *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t critsec_ObjOpen(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2168463367;
  if (a1 && a2 && a3)
  {
    v7 = heap_Calloc(a2, 1, 24);
    *a3 = v7;
    if (v7)
    {
      *v7 = a1;
      *(*a3 + 8) = a2;
      v8 = **(a1 + 16);
      if (v8)
      {
        v3 = v8(*(a1 + 24), *(a1 + 8), *a3 + 16);
        if ((v3 & 0x80000000) != 0)
        {
          heap_Free(a2, *a3);
          *a3 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2168463370;
    }
  }

  return v3;
}

uint64_t critsec_ObjClose(void *a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v2 = *(*(*a1 + 16) + 8);
  if (v2)
  {
    v3 = v2(a1[2]);
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  heap_Free(a1[1], a1);
  return v3;
}

uint64_t critsec_Enter(void *a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v1 = *(*(*a1 + 16) + 16);
  if (v1)
  {
    return v1(a1[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t critsec_Leave(void *a1)
{
  if (!a1)
  {
    return 2168463367;
  }

  v1 = *(*(*a1 + 16) + 24);
  if (v1)
  {
    return v1(a1[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t brk_ClassOpen(_WORD *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  result = InitRsrcFunction(a1, a2, &v14);
  if ((result & 0x80000000) == 0)
  {
    v13 = v14;
    memcpy((v14 + 80), a3, 0x130uLL);
    return (*(v13 + 96))(a1, a2, a4, a5, a6);
  }

  return result;
}

uint64_t brk_ClassClose(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 104))();
  }

  return result;
}

uint64_t brk_ClassUpdate(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 16) + 352))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjOpen(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a2 + 16) + 120))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*a1 + 16) + 128))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ObjGetClass(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 136))();
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 2169528327;
}

uint64_t brk_InterfaceQueryEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a2 && a6)
  {
    return (*(*(*a1 + 16) + 272))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_InterfaceRelease(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 280))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagQueryEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a5 && a3 && a2 && *a1)
  {
    return (*(*(*a1 + 16) + 160))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagRelease(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 168))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3 && a2 && *a1)
  {
    return (*(*(*a1 + 16) + 240))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorNext(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 248))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_ComponentTableIteratorClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 256))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataOpenEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a4)
  {
    return (*(*(*a1 + 16) + 304))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataClose(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 312))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a1 && a5)
  {
    return (*(*(*a1 + 16) + 320))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMapEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a1 && a4 && a5)
  {
    return (*(*(*a1 + 16) + 328))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataUnmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*(*a1 + 16) + 336))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_DataMapDeRefCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, v6, &v10);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v11, v10);
      return objc_ReleaseObject(ObjcForThisApi, a5);
    }
  }

  return result;
}

uint64_t getObjcForThisApi(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  __s1 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !strcmp(__s1, "internal"))
  {
    v3 = a2;
  }

  return *(v3 + 48);
}

uint64_t brk_DataMapRefCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = a7;
  v10 = a6;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  result = InitRsrcFunction(a1, a2, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v23);
    if ((result & 0x80000000) == 0)
    {
      v19[0] = a1;
      v19[1] = a2;
      v19[2] = a3;
      v19[3] = a4;
      v20 = v10;
      v21 = v9;
      ObjcForThisApi = getObjcForThisApi(v24, v23);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a5, brkDataMap_ObjcLoad, brkDataMap_ObjcClose, v19, &v22);
      if ((result & 0x80000000) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v22 + 32);
      }

      *a8 = v18;
    }
  }

  return result;
}

uint64_t brkDataMap_ObjcLoad(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 2169528327;
  v10 = v17;
  v11 = heap_Calloc(*(v17 + 8), 1, 272);
  *(a4 + 32) = v11;
  if (!v11)
  {
    return 2169528330;
  }

  if (a3)
  {
    v12 = *(v10 + 24);
    if (v12)
    {
      inited = (*(*(*v12 + 16) + 304))(*(v10 + 24), a3, 1, v11 + 256);
      if ((inited & 0x80000000) == 0)
      {
        v13 = *(v10 + 24);
        v14 = *(a4 + 32);
        if (v13)
        {
          v15 = *(v14 + 256);
          if (v15)
          {
            v9 = (*(*(*v13 + 16) + 320))(*(v10 + 24), v15, *(a5 + 32), *(a5 + 36), v14 + 264);
          }
        }

        __strcpy_chk();
        return v9;
      }

      return inited;
    }
  }

  return v9;
}

uint64_t brkDataMap_ObjcClose(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  inited = InitRsrcFunction(a1, a2, &v13);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v5 = 2169528327;
  v6 = *(a3 + 32);
  v7 = *(v13 + 24);
  if (v7)
  {
    v8 = *(v6 + 256) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && *(v6 + 264) != 0)
  {
    inited = (*(*(*v7 + 16) + 336))();
    if ((inited & 0x80000000) == 0)
    {
      v10 = *(v13 + 24);
      if (v10)
      {
        v11 = *(v6 + 256) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v5 = (*(*(*v10 + 16) + 312))();
        if ((v5 & 0x80000000) == 0)
        {
          heap_Free(*(v13 + 8), v6);
        }
      }

      return v5;
    }

    return inited;
  }

  return v5;
}

uint64_t brk_DataFreeze(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 344))();
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagIteratorOpen(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, void *a5)
{
  if (!a1 || !a2 || !a3 || !*a2 || !a5 || !*a3)
  {
    return 2169528327;
  }

  v5 = *(*a1 + 16);
  *a5 = 0;
  return (*(v5 + 200))();
}

uint64_t brk_TagIteratorNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*a1 + 208))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_TagIteratorClose(uint64_t a1)
{
  if (a1)
  {
    return (*(*a1 + 216))(a1);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_RegisterCupAddon(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && (v4 = *a1) != 0 && (v5 = *(v4 + 16)) != 0)
  {
    return (*(v5 + 368))(a2, a3, a4, v4);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t brk_UnregisterCupAddon(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *a1) != 0 && (v3 = *(v2 + 16)) != 0)
  {
    return (*(v3 + 376))(a2, v2);
  }

  else
  {
    return 2169528327;
  }
}

uint64_t filespi_fopen(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    if (**(a1 + 16))
    {
      v11 = heap_Calloc(a2, 1, 24);
      *a5 = v11;
      if (v11)
      {
        *v11 = a1;
        *(*a5 + 8) = a2;
        v5 = (**(a1 + 16))(*(a1 + 24), *(a1 + 8), a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 2153783306;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return v5;
}

uint64_t filespi_fclose(void *a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*a1 + 16) + 8))(a1[2]);
  if ((v2 & 0x80000000) == 0)
  {
    heap_Free(a1[1], a1);
  }

  return v2;
}

uint64_t filespi_fread(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = 2153783303;
  if (a3 && a2 && a1 && a4)
  {
    v6 = *(*(*a4 + 16) + 16);
    if (v6)
    {
      return v6(a1);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t filespi_GetFileSize(void *a1)
{
  if (a1 && (v1 = *(*(*a1 + 16) + 32)) != 0)
  {
    return v1(a1[2]);
  }

  else
  {
    return 2153783296;
  }
}

uint64_t filespi_fwrite(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = 2153783303;
  if (a3 && a2 && a1 && a4)
  {
    v6 = *(*(*a4 + 16) + 48);
    if (v6)
    {
      return v6(a1);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t filespi_fflush(void *a1)
{
  result = 2153783297;
  if (!a1)
  {
    return 2153783303;
  }

  v3 = *(*(*a1 + 16) + 56);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t heap_cb_Open(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 2159026183;
  if (a1)
  {
    v7 = (*(a1 + 8))(a2, 1, 16);
    *a3 = v7;
    if (v7)
    {
      v3 = 0;
      *v7 = a1;
      *(*a3 + 8) = a2;
    }

    else
    {
      return 2159026186;
    }
  }

  return v3;
}

uint64_t heap_cb_Close(void *a1)
{
  if (!a1)
  {
    return 2159026183;
  }

  (*(*a1 + 24))(a1[1], a1);
  return 0;
}

uint64_t heap_Alloc(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (**a1)(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t heap_Calloc(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return (*(*a1 + 8))(a1[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t heap_Realloc(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    return 0;
  }

  v3 = *a1;
  if (a2)
  {
    return (*(v3 + 16))(a1[1]);
  }

  else
  {
    return (*v3)(a1[1], a3);
  }
}

void *heap_Free(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return (*(*result + 24))(result[1]);
    }
  }

  return result;
}

uint64_t heap_SetLog(void *a1)
{
  result = 2159026177;
  if (!a1)
  {
    return 2159026183;
  }

  v3 = *(*a1 + 32);
  if (v3)
  {
    return v3(a1[1]);
  }

  return result;
}

uint64_t thread_cb_ClassOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 2153783303;
  if (a3 && a4)
  {
    v13 = heap_Alloc(a1, 40);
    *a6 = v13;
    if (v13)
    {
      v6 = 0;
      *v13 = a1;
      *(*a6 + 8) = a2;
      *(*a6 + 16) = a3;
      *(*a6 + 24) = a4;
      *(*a6 + 32) = a5;
    }

    else
    {
      return 2153783306;
    }
  }

  return v6;
}

uint64_t thread_cb_ClassClose(uint64_t *a1)
{
  result = 2153783303;
  if (a1)
  {
    if (*a1)
    {
      heap_Free(**a1, *a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t thread_ObjOpen(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2153783303;
  if (a1 && a2 && a3)
  {
    v7 = heap_Alloc(a2, 24);
    *a3 = v7;
    if (v7)
    {
      *v7 = a1;
      *(*a3 + 8) = a2;
      v8 = **(a1 + 16);
      if (v8)
      {
        v3 = v8(*(a1 + 32), *(a1 + 8), *a3 + 16);
        if ((v3 & 0x80000000) != 0)
        {
          heap_Free(a2, *a3);
          *a3 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2153783306;
    }
  }

  return v3;
}

uint64_t thread_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = *(*(*a1 + 16) + 8);
  if (v2)
  {
    v3 = v2(*(a1 + 16));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  heap_Free(*(a1 + 8), a1);
  return v3;
}

uint64_t thread_Start(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 16);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t thread_Join(void *a1)
{
  result = 2153783304;
  if (!a1)
  {
    return 2153783314;
  }

  v3 = *(*(*a1 + 16) + 24);
  if (v3)
  {
    return v3(a1[2]);
  }

  return result;
}

uint64_t semaphore_ObjectOpen(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    v11 = heap_Alloc(a2, 24);
    *a5 = v11;
    if (v11)
    {
      *v11 = a1;
      *(*a5 + 8) = a2;
      v12 = **(a1 + 24);
      if (v12)
      {
        v5 = v12(*(a1 + 32), *(a1 + 8), a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2153783306;
    }
  }

  return v5;
}

uint64_t semaphore_ObjectClose(uint64_t a1)
{
  v1 = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 8);
    if (v3)
    {
      v1 = v3(*(a1 + 16));
      if ((v1 & 0x80000000) == 0)
      {
        heap_Free(*(a1 + 8), a1);
      }
    }

    else
    {
      return 2153783304;
    }
  }

  return v1;
}

uint64_t semaphore_Acquire(void *a1)
{
  result = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 16);
    if (v3)
    {
      return v3(a1[2]);
    }

    else
    {
      return 2153783304;
    }
  }

  return result;
}

uint64_t semaphore_Release(void *a1)
{
  result = 2153783303;
  if (a1)
  {
    v3 = *(*(*a1 + 24) + 24);
    if (v3)
    {
      return v3(a1[2]);
    }

    else
    {
      return 2153783304;
    }
  }

  return result;
}

double MD5Init(uint64_t a1)
{
  result = -3.59869635e230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0;
  *a1 = xmmword_1C37AAB60;
  return result;
}

void *MD5Update(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = (*(a1 + 16) >> 3) & 0x3F;
  *(a1 + 16) += __PAIR64__(a3 >> 29, 8 * a3);
  v7 = 64 - v6;
  if (64 - v6 <= a3)
  {
    memcpy((a1 + 24 + v6), __src, 64 - v6);
    MD5Transform(a1, (a1 + 24));
    for (i = v6 ^ 0x7F; i < a3; i = v9 + 127)
    {
      v9 = v7;
      MD5Transform(a1, &__src[v7]);
      v7 += 64;
    }

    v6 = 0;
  }

  else
  {
    v7 = 0;
  }

  return memcpy((a1 + v6 + 24), &__src[v7], a3 - v7);
}

int8x16_t MD5Transform(_DWORD *a1, const char *a2)
{
  v95 = vld4q_s8(a2);
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = vmovl_u8(*v95.val[0].i8);
  v6 = vmovl_u16(*v5.i8);
  v7 = vmovl_high_u8(v95.val[0]);
  v8 = vmovl_high_u8(v95.val[1]);
  v9 = vmovl_u8(*v95.val[1].i8);
  v10 = vorrq_s8(vshll_high_n_u16(v8, 8uLL), vmovl_high_u16(v7));
  v11 = vorrq_s8(vshll_n_u16(*v8.i8, 8uLL), vmovl_u16(*v7.i8));
  v12 = vorrq_s8(vshll_high_n_u16(v9, 8uLL), vmovl_high_u16(v5));
  v13 = vorrq_s8(vshll_n_u16(*v9.i8, 8uLL), v6);
  _Q3 = vmovl_u8(*v95.val[2].i8);
  _Q4 = vmovl_high_u8(v95.val[2]);
  __asm { SHLL2           V5.4S, V4.8H, #0x10 }

  v21 = vshll_n_s16(*_Q4.i8, 0x10uLL);
  __asm { SHLL2           V4.4S, V3.8H, #0x10 }

  v23 = vorrq_s8(v13, vshll_n_s16(*_Q3.i8, 0x10uLL));
  v24 = vorrq_s8(v11, v21);
  v25 = vmovl_high_u8(v95.val[3]);
  v26 = vmovl_u8(*v95.val[3].i8);
  v27 = vorrq_s8(v23, vshlq_n_s32(vmovl_u16(*v26.i8), 0x18uLL));
  HIDWORD(v28) = *a1 + (v3 & ~v2 | v4 & v2) + v27.i32[0] - 680876936;
  LODWORD(v28) = HIDWORD(v28);
  v29 = (v28 >> 25) + v2;
  HIDWORD(v28) = v3 + v27.i32[1] - 389564586 + (v29 & v2 | v4 & ~v29);
  LODWORD(v28) = HIDWORD(v28);
  v30 = (v28 >> 20) + v29;
  HIDWORD(v28) = v4 + v27.i32[2] + 606105819 + (v30 & v29 | v2 & ~v30);
  LODWORD(v28) = HIDWORD(v28);
  v31 = vorrq_s8(vorrq_s8(v12, _Q4), vshlq_n_s32(vmovl_high_u16(v26), 0x18uLL));
  v32 = (v28 >> 15) + v30;
  HIDWORD(v28) = v2 + v27.i32[3] - 1044525330 + (v32 & v30 | v29 & ~v32);
  LODWORD(v28) = HIDWORD(v28);
  v33 = (v28 >> 10) + v32;
  HIDWORD(v28) = v31.i32[0] + v29 - 176418897 + (v33 & v32 | v30 & ~v33);
  LODWORD(v28) = HIDWORD(v28);
  v34 = (v28 >> 25) + v33;
  HIDWORD(v28) = v31.i32[1] + v30 + 1200080426 + (v34 & v33 | v32 & ~v34);
  LODWORD(v28) = HIDWORD(v28);
  v35 = (v28 >> 20) + v34;
  HIDWORD(v28) = v31.i32[2] + v32 - 1473231341 + (v35 & v34 | v33 & ~v35);
  LODWORD(v28) = HIDWORD(v28);
  v36 = vorrq_s8(v24, vshlq_n_s32(vmovl_u16(*v25.i8), 0x18uLL));
  v37 = (v28 >> 15) + v35;
  HIDWORD(v28) = v31.i32[3] + v33 - 45705983 + (v37 & v35 | v34 & ~v37);
  LODWORD(v28) = HIDWORD(v28);
  v38 = (v28 >> 10) + v37;
  HIDWORD(v28) = v36.i32[0] + v34 + 1770035416 + (v38 & v37 | v35 & ~v38);
  LODWORD(v28) = HIDWORD(v28);
  v39 = (v28 >> 25) + v38;
  HIDWORD(v28) = v36.i32[1] + v35 - 1958414417 + (v39 & v38 | v37 & ~v39);
  LODWORD(v28) = HIDWORD(v28);
  v40 = (v28 >> 20) + v39;
  HIDWORD(v28) = v36.i32[2] + v37 - 42063 + (v40 & v39 | v38 & ~v40);
  LODWORD(v28) = HIDWORD(v28);
  result = vorrq_s8(vorrq_s8(v10, _Q5), vshlq_n_s32(vmovl_high_u16(v25), 0x18uLL));
  v42 = (v28 >> 15) + v40;
  HIDWORD(v28) = v36.i32[3] + v38 - 1990404162 + (v42 & v40 | v39 & ~v42);
  LODWORD(v28) = HIDWORD(v28);
  v43 = (v28 >> 10) + v42;
  HIDWORD(v28) = result.i32[0] + v39 + 1804603682 + (v43 & v42 | v40 & ~v43);
  LODWORD(v28) = HIDWORD(v28);
  v44 = (v28 >> 25) + v43;
  HIDWORD(v28) = result.i32[1] + v40 - 40341101 + (v44 & v43 | v42 & ~v44);
  LODWORD(v28) = HIDWORD(v28);
  v45 = (v28 >> 20) + v44;
  HIDWORD(v28) = result.i32[2] + v42 - 1502002290 + (v45 & v44 | v43 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v46 = (v28 >> 15) + v45;
  HIDWORD(v28) = result.i32[3] + v43 + 1236535329 + (v46 & v45 | v44 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v47 = (v28 >> 10) + v46;
  HIDWORD(v28) = v27.i32[1] + v44 - 165796510 + (v47 & v45 | v46 & ~v45);
  LODWORD(v28) = HIDWORD(v28);
  v48 = (v28 >> 27) + v47;
  HIDWORD(v28) = v31.i32[2] + v45 - 1069501632 + (v48 & v46 | v47 & ~v46);
  LODWORD(v28) = HIDWORD(v28);
  v49 = (v28 >> 23) + v48;
  HIDWORD(v28) = v36.i32[3] + v46 + 643717713 + (v49 & v47 | v48 & ~v47);
  LODWORD(v28) = HIDWORD(v28);
  v50 = (v28 >> 18) + v49;
  HIDWORD(v28) = v27.i32[0] + v47 - 373897302 + (v50 & v48 | v49 & ~v48);
  LODWORD(v28) = HIDWORD(v28);
  v51 = (v28 >> 12) + v50;
  HIDWORD(v28) = v31.i32[1] + v48 - 701558691 + (v51 & v49 | v50 & ~v49);
  LODWORD(v28) = HIDWORD(v28);
  v52 = (v28 >> 27) + v51;
  HIDWORD(v28) = v36.i32[2] + v49 + 38016083 + (v52 & v50 | v51 & ~v50);
  LODWORD(v28) = HIDWORD(v28);
  v53 = (v28 >> 23) + v52;
  HIDWORD(v28) = result.i32[3] + v50 - 660478335 + (v53 & v51 | v52 & ~v51);
  LODWORD(v28) = HIDWORD(v28);
  v54 = (v28 >> 18) + v53;
  HIDWORD(v28) = v31.i32[0] + v51 - 405537848 + (v54 & v52 | v53 & ~v52);
  LODWORD(v28) = HIDWORD(v28);
  v55 = (v28 >> 12) + v54;
  HIDWORD(v28) = v36.i32[1] + v52 + 568446438 + (v55 & v53 | v54 & ~v53);
  LODWORD(v28) = HIDWORD(v28);
  v56 = (v28 >> 27) + v55;
  HIDWORD(v28) = result.i32[2] + v53 - 1019803690 + (v56 & v54 | v55 & ~v54);
  LODWORD(v28) = HIDWORD(v28);
  v57 = (v28 >> 23) + v56;
  HIDWORD(v28) = v27.i32[3] + v54 - 187363961 + (v57 & v55 | v56 & ~v55);
  LODWORD(v28) = HIDWORD(v28);
  v58 = (v28 >> 18) + v57;
  HIDWORD(v28) = v36.i32[0] + v55 + 1163531501 + (v58 & v56 | v57 & ~v56);
  LODWORD(v28) = HIDWORD(v28);
  v59 = (v28 >> 12) + v58;
  HIDWORD(v28) = result.i32[1] + v56 - 1444681467 + (v59 & v57 | v58 & ~v57);
  LODWORD(v28) = HIDWORD(v28);
  v60 = (v28 >> 27) + v59;
  HIDWORD(v28) = v27.i32[2] + v57 - 51403784 + (v60 & v58 | v59 & ~v58);
  LODWORD(v28) = HIDWORD(v28);
  v61 = (v28 >> 23) + v60;
  HIDWORD(v28) = v31.i32[3] + v58 + 1735328473 + (v61 & v59 | v60 & ~v59);
  LODWORD(v28) = HIDWORD(v28);
  v62 = (v28 >> 18) + v61;
  HIDWORD(v28) = result.i32[0] + v59 - 1926607734 + (v62 & v60 | v61 & ~v60);
  LODWORD(v28) = HIDWORD(v28);
  v63 = (v28 >> 12) + v62;
  HIDWORD(v28) = v31.i32[1] + v60 - 378558 + (v63 ^ v62 ^ v61);
  LODWORD(v28) = HIDWORD(v28);
  v64 = (v28 >> 28) + v63;
  HIDWORD(v28) = v36.i32[0] + v61 - 2022574463 + (v63 ^ v62 ^ v64);
  LODWORD(v28) = HIDWORD(v28);
  v65 = (v28 >> 21) + v64;
  HIDWORD(v28) = v36.i32[3] + v62 + 1839030562 + (v64 ^ v63 ^ v65);
  LODWORD(v28) = HIDWORD(v28);
  v66 = (v28 >> 16) + v65;
  HIDWORD(v28) = result.i32[2] + v63 - 35309556 + (v65 ^ v64 ^ v66);
  LODWORD(v28) = HIDWORD(v28);
  v67 = (v28 >> 9) + v66;
  HIDWORD(v28) = v27.i32[1] + v64 - 1530992060 + (v66 ^ v65 ^ v67);
  LODWORD(v28) = HIDWORD(v28);
  v68 = (v28 >> 28) + v67;
  HIDWORD(v28) = v31.i32[0] + v65 + 1272893353 + (v67 ^ v66 ^ v68);
  LODWORD(v28) = HIDWORD(v28);
  v69 = (v28 >> 21) + v68;
  HIDWORD(v28) = v31.i32[3] + v66 - 155497632 + (v68 ^ v67 ^ v69);
  LODWORD(v28) = HIDWORD(v28);
  v70 = (v28 >> 16) + v69;
  HIDWORD(v28) = v36.i32[2] + v67 - 1094730640 + (v69 ^ v68 ^ v70);
  LODWORD(v28) = HIDWORD(v28);
  v71 = (v28 >> 9) + v70;
  HIDWORD(v28) = result.i32[1] + v68 + 681279174 + (v70 ^ v69 ^ v71);
  LODWORD(v28) = HIDWORD(v28);
  v72 = (v28 >> 28) + v71;
  HIDWORD(v28) = v27.i32[0] + v69 - 358537222 + (v71 ^ v70 ^ v72);
  LODWORD(v28) = HIDWORD(v28);
  v73 = (v28 >> 21) + v72;
  HIDWORD(v28) = v27.i32[3] + v70 - 722521979 + (v72 ^ v71 ^ v73);
  LODWORD(v28) = HIDWORD(v28);
  v74 = (v28 >> 16) + v73;
  HIDWORD(v28) = v31.i32[2] + v71 + 76029189 + (v73 ^ v72 ^ v74);
  LODWORD(v28) = HIDWORD(v28);
  v75 = (v28 >> 9) + v74;
  HIDWORD(v28) = v36.i32[1] + v72 - 640364487 + (v74 ^ v73 ^ v75);
  LODWORD(v28) = HIDWORD(v28);
  v76 = (v28 >> 28) + v75;
  HIDWORD(v28) = result.i32[0] + v73 - 421815835 + (v75 ^ v74 ^ v76);
  LODWORD(v28) = HIDWORD(v28);
  v77 = (v28 >> 21) + v76;
  HIDWORD(v28) = result.i32[3] + v74 + 530742520 + (v76 ^ v75 ^ v77);
  LODWORD(v28) = HIDWORD(v28);
  v78 = (v28 >> 16) + v77;
  HIDWORD(v28) = v27.i32[2] + v75 - 995338651 + (v77 ^ v76 ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v79 = (v28 >> 9) + v78;
  HIDWORD(v28) = v27.i32[0] + v76 - 198630844 + ((v79 | ~v77) ^ v78);
  LODWORD(v28) = HIDWORD(v28);
  v80 = (v28 >> 26) + v79;
  HIDWORD(v28) = v31.i32[3] + v77 + 1126891415 + ((v80 | ~v78) ^ v79);
  LODWORD(v28) = HIDWORD(v28);
  v81 = (v28 >> 22) + v80;
  HIDWORD(v28) = result.i32[2] + v78 - 1416354905 + ((v81 | ~v79) ^ v80);
  LODWORD(v28) = HIDWORD(v28);
  v82 = (v28 >> 17) + v81;
  HIDWORD(v28) = v31.i32[1] + v79 - 57434055 + ((v82 | ~v80) ^ v81);
  LODWORD(v28) = HIDWORD(v28);
  v83 = (v28 >> 11) + v82;
  HIDWORD(v28) = result.i32[0] + v80 + 1700485571 + ((v83 | ~v81) ^ v82);
  LODWORD(v28) = HIDWORD(v28);
  v84 = (v28 >> 26) + v83;
  HIDWORD(v28) = v27.i32[3] + v81 - 1894986606 + ((v84 | ~v82) ^ v83);
  LODWORD(v28) = HIDWORD(v28);
  v85 = (v28 >> 22) + v84;
  HIDWORD(v28) = v36.i32[2] + v82 - 1051523 + ((v85 | ~v83) ^ v84);
  LODWORD(v28) = HIDWORD(v28);
  v86 = (v28 >> 17) + v85;
  HIDWORD(v28) = v27.i32[1] + v83 - 2054922799 + ((v86 | ~v84) ^ v85);
  LODWORD(v28) = HIDWORD(v28);
  v87 = (v28 >> 11) + v86;
  HIDWORD(v28) = v36.i32[0] + v84 + 1873313359 + ((v87 | ~v85) ^ v86);
  LODWORD(v28) = HIDWORD(v28);
  v88 = (v28 >> 26) + v87;
  HIDWORD(v28) = result.i32[3] + v85 - 30611744 + ((v88 | ~v86) ^ v87);
  LODWORD(v28) = HIDWORD(v28);
  v89 = (v28 >> 22) + v88;
  HIDWORD(v28) = v31.i32[2] + v86 - 1560198380 + ((v89 | ~v87) ^ v88);
  LODWORD(v28) = HIDWORD(v28);
  v90 = (v28 >> 17) + v89;
  HIDWORD(v28) = result.i32[1] + v87 + 1309151649 + ((v90 | ~v88) ^ v89);
  LODWORD(v28) = HIDWORD(v28);
  v91 = (v28 >> 11) + v90;
  HIDWORD(v28) = v31.i32[0] + v88 - 145523070 + ((v91 | ~v89) ^ v90);
  LODWORD(v28) = HIDWORD(v28);
  v92 = (v28 >> 26) + v91;
  HIDWORD(v28) = v36.i32[3] + v89 - 1120210379 + ((v92 | ~v90) ^ v91);
  LODWORD(v28) = HIDWORD(v28);
  v93 = (v28 >> 22) + v92;
  HIDWORD(v28) = v27.i32[2] + v90 + 718787259 + ((v93 | ~v91) ^ v92);
  LODWORD(v28) = HIDWORD(v28);
  v94 = (v28 >> 17) + v93;
  HIDWORD(v28) = v36.i32[1] + v91 - 343485551 + ((v94 | ~v92) ^ v93);
  LODWORD(v28) = HIDWORD(v28);
  *a1 += v92;
  a1[1] = v94 + v2 + (v28 >> 11);
  a1[2] = v94 + v4;
  a1[3] = v93 + v3;
  return result;
}

double MD5Final(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v12 = *MEMORY[0x1E69E9840];
  do
  {
    *&v11[v4] = *(a2 + v4 + 16);
    v4 += 4;
  }

  while (v4 != 8);
  v5 = (*(a2 + 16) >> 3) & 0x3F;
  v6 = 120;
  if (v5 < 0x38)
  {
    v6 = 56;
  }

  MD5Update(a2, PADDING, v6 - v5);
  MD5Update(a2, v11, 8uLL);
  v7 = 0;
  v8 = (a1 + 3);
  do
  {
    v9 = a2 + 4 * v7;
    *(v8 - 3) = *v9;
    *(v8 - 1) = *(v9 + 2);
    *v8 = *(v9 + 3);
    v8 += 4;
    ++v7;
  }

  while (v7 != 4);
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t cache_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 2153783303;
  if (a5 && !*a5)
  {
    v11 = heap_Calloc(a1, 1, 32);
    if (v11)
    {
      v5 = 0;
      v11[2] = a3;
      v11[3] = a4;
      *v11 = a1;
      v11[1] = a2;
    }

    else
    {
      v5 = 2153783306;
    }

    *a5 = v11;
  }

  return v5;
}

uint64_t cache_ClassClose(void **a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  heap_Free(*a1, a1);
  return 0;
}

uint64_t cache_ObjOpen(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a5 && !*a5)
  {
    v11 = *a1;
    v12 = heap_Calloc(*a1, 1, 72);
    v13 = v12;
    if (v12)
    {
      *v12 = a1;
      *(v12 + 8) = v11;
      *(v12 + 24) = *(a1 + 16);
      v14 = critsec_ObjOpen(*(a1 + 8), v11, (v12 + 16));
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v14;
        if (!a2 || !a3 || !a4)
        {
          goto LABEL_28;
        }

        v16 = heap_Calloc(v11, 56, 1);
        *(v13 + 64) = v16;
        if (v16)
        {
          v17 = v16;
          v16[10] = a2;
          v16[11] = a3;
          if (a4 >= a3)
          {
            v18 = a3;
          }

          else
          {
            v18 = a4;
          }

          v16[12] = v18;
          if (a2 <= 1)
          {
            a2 = 2;
            v16[10] = 2;
          }

          v19 = heap_Alloc(v11, a2 * a3);
          *(v17 + 4) = v19;
          if (v19)
          {
            v20 = heap_Alloc(v11, 40 * v17[10]);
            *(v17 + 3) = v20;
            if (v20)
            {
              v21 = v20 + 40;
              *v20 = 0;
              *(v20 + 8) = v20 + 40;
              *(v20 + 16) = -1;
              v22 = *(v17 + 4);
              *(v20 + 24) = v22;
              *(v20 + 32) = 0;
              v23 = v17[11];
              v24 = (v17[10] - 1);
              if (v24 < 2)
              {
                v29 = v20;
              }

              else
              {
                v25 = v24 - 1;
                v26 = v17[11];
                do
                {
                  v27 = v21;
                  v28 = v21 - 40;
                  v21 += 40;
                  *v27 = v28;
                  *(v27 + 8) = v21;
                  *(v27 + 16) = -1;
                  *(v27 + 24) = v22 + v26;
                  *(v27 + 32) = 0;
                  v26 += v23;
                  --v25;
                }

                while (v25);
                v29 = v21 - 40;
              }

              v15 = 0;
              *v21 = v29;
              *(v21 + 8) = 0;
              *(v21 + 16) = -1;
              *(v21 + 24) = v22 + (v23 * v24);
              *(v21 + 32) = 0;
              *(v17 + 1) = v20;
              *(v17 + 2) = v20 + 40 * v24;
              goto LABEL_28;
            }

            heap_Free(v11, *(v17 + 4));
          }
        }
      }

      v30 = *(v13 + 16);
      if (v30)
      {
        critsec_ObjClose(v30);
      }

      v31 = *(v13 + 64);
      if (v31)
      {
        heap_Free(v11, v31);
      }

      heap_Free(v11, v13);
      v13 = 0;
    }

    v15 = 2153783306;
LABEL_28:
    *a5 = v13;
    return v15;
  }

  return v5;
}

uint64_t cache_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  critsec_Enter(*(a1 + 16));
  v2 = *(a1 + 8);
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *v3;
    heap_Free(*(a1 + 8), *(v3 + 32));
    heap_Free(v2, *(v3 + 24));
    if (v4)
    {
      do
      {
        heap_Free(v2, v4[1]);
        v5 = *v4;
        heap_Free(v2, v4);
        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 48) = 0;
    v6 = *(a1 + 64);
  }

  else
  {
    v6 = 0;
  }

  heap_Free(v2, v6);
  *(a1 + 64) = 0;
  critsec_Leave(*(a1 + 16));
  v8 = critsec_ObjClose(*(a1 + 16));
  heap_Free(v2, a1);
  return v8;
}

uint64_t cache_ObjSetLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 2153783303;
  }

  if (a3)
  {
    v6 = log_GetLogLevel(a3) > 0x63;
    *(a1 + 56) = v6;
    *(a1 + 60) = v6;
  }

  result = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  return result;
}

uint64_t cache_datastream_Open(int8x16_t *a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t *a5)
{
  v5 = 2153783306;
  v6 = 2153783303;
  if (a1 && a5)
  {
    v12 = a1[3].i64[0];
    v13 = *(v12 + 24);
    v14 = *(v12 + 64);
    v15 = heap_Calloc(*(v12 + 8), 1, 56);
    v16 = v15;
    if (!v15)
    {
LABEL_26:
      *a5 = v16;
      return v5;
    }

    v17 = a1[3];
    *v15 = vextq_s8(v17, v17, 8uLL);
    v18 = *(v17.i64[0] + 8);
    *(v15 + 24) = 0u;
    *(v15 + 16) = v18;
    *(v15 + 40) = 0u;
    critsec_Enter(*(v17.i64[0] + 16));
    if (!v14)
    {
      v6 = (*v13)(a1[2].i64[1], a2, a3, a4, v16 + 24);
      goto LABEL_23;
    }

    if (!a3 || !a4)
    {
      goto LABEL_23;
    }

    if (*a4 == 114 && !strchr(a3, 46))
    {
      FileInfoDesc = GetFileInfoDesc(v14, *(v16 + 16), a3);
      *(v16 + 48) = FileInfoDesc;
      v6 = 2153783306;
      if (!FileInfoDesc)
      {
        goto LABEL_23;
      }

      *(FileInfoDesc + 40) = 1;
      if (*(FileInfoDesc + 20))
      {
LABEL_11:
        v6 = 0;
        v20 = *(FileInfoDesc + 24);
        v21 = *(FileInfoDesc + 32);
        *(v16 + 24) = v20;
        *(v16 + 40) = v21;
        if (!v20)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = (*v13)(a1[2].i64[1], a2, a3, "rb", v16 + 24);
    }

    else
    {
      FileInfoDesc = GetFileInfoDesc(v14, *(v16 + 16), a3);
      *(v16 + 48) = FileInfoDesc;
      v6 = 2153783306;
      if (!FileInfoDesc)
      {
        goto LABEL_23;
      }

      *(FileInfoDesc + 40) = 0;
      if (*(FileInfoDesc + 20))
      {
        goto LABEL_11;
      }

      v22 = (*v13)(a1[2].i64[1], a2, a3, a4, v16 + 24);
    }

    v6 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      v23 = *(v16 + 40);
    }

    else
    {
      v23 = (*(v13 + 32))(*(v16 + 24));
      *(v16 + 40) = v23;
    }

    v24 = *(v16 + 24);
    FileInfoDesc = *(v16 + 48);
    *(FileInfoDesc + 24) = v24;
    *(FileInfoDesc + 32) = v23;
    if (v24)
    {
LABEL_22:
      ++*(FileInfoDesc + 20);
    }

LABEL_23:
    critsec_Leave(*(*(v16 + 8) + 16));
    if (!*(v16 + 24))
    {
      heap_Free(*(v16 + 16), v16);
      v16 = 0;
    }

    v5 = v6;
    goto LABEL_26;
  }

  return v6;
}

uint64_t GetFileInfoDesc(uint64_t *a1, void *a2, char *__s2)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    while (strcmp(*(v6 + 8), __s2))
    {
      ++v7;
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_7:
    v8 = heap_Alloc(a2, 48);
    v6 = v8;
    if (v8)
    {
      *v8 = *a1;
      v9 = strlen(__s2);
      v10 = heap_Alloc(a2, (v9 + 1));
      *(v6 + 8) = v10;
      if (v10)
      {
        strcpy(v10, __s2);
        *(v6 + 16) = v7;
        *(v6 + 28) = 0;
        *(v6 + 20) = 0;
        *(v6 + 36) = 0;
        *a1 = v6;
      }

      else
      {
        heap_Free(a2, v6);
        return 0;
      }
    }
  }

  return v6;
}

uint64_t cache_datastream_Close(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  critsec_Enter(*(*(a1 + 8) + 16));
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  if (*(v2 + 64) && (v4 = *(a1 + 48), v5 = *(v4 + 20) - 1, (*(v4 + 20) = v5) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(v3 + 8))(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  critsec_Leave(*(*(a1 + 8) + 16));
  heap_Free(*(a1 + 16), a1);
  return v6;
}

uint64_t cache_datastream_Read(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    critsec_Enter(*(a4[1] + 16));
    v8 = a4[1];
    v9 = *(v8 + 24);
    v10 = *(v8 + 64);
    if (v10)
    {
      v11 = a3 * a2;
      if (*(v10 + 48) < v11 || (v12 = a4[6], *(v12 + 40) != 1))
      {
        if (((*(v9 + 24))(a4[3], *(a4 + 8), 0, 1) & 0x80000000) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = (*(v9 + 16))(a1, 1, v11, a4[3]);
        }

        v21 = a4[4] + v11;
LABEL_19:
        a4[4] = v21;
        goto LABEL_20;
      }

      v13 = *(v10 + 16);
      if (*(v13 + 4) != -1)
      {
        v14 = 0;
        v15 = *(v12 + 16);
        v16 = v11;
        while (1)
        {
          if (*(v13 + 4) == v15)
          {
            v17 = a4[4];
            v18 = v13[4];
            v19 = v17 >= v18;
            v20 = v17 - v18;
            if (v19 && v20 + v11 <= *(v10 + 44))
            {
              break;
            }
          }

          v13 = *v13;
          --v14;
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        memcpy(a1, (v13[3] + v20), v11);
        if (v14)
        {
          v23 = *v13;
          if (*v13)
          {
            v24 = v13[1];
            v23[1] = v24;
            *v24 = v23;
            v25 = *(v10 + 16);
          }

          else
          {
            v25 = *(v10 + 16);
            v26 = *(*(v10 + 8) + 8);
            *(v10 + 8) = v26;
            *v26 = 0;
          }

          *(v25 + 8) = v13;
          *v13 = v25;
          v13[1] = 0;
          *(v10 + 16) = v13;
        }

        v21 = a4[4] + v11;
        goto LABEL_19;
      }

LABEL_12:
      v16 = AddCacheData(a4, v11, a1);
    }

    else
    {
      v16 = (*(v9 + 16))(a1, a2, a3, a4[3]);
    }

LABEL_20:
    critsec_Leave(*(a4[1] + 16));
    return v16;
  }

  return 0;
}

uint64_t cache_datastream_Seek(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 2153783303;
  if (a1)
  {
    critsec_Enter(*(a1[1] + 16));
    v9 = a1[1];
    v10 = *(v9 + 24);
    if (!*(v9 + 64))
    {
      v11 = (*(v10 + 24))(a1[3], a2, a3, a4);
LABEL_17:
      v4 = v11;
      goto LABEL_18;
    }

    if (*(a1[6] + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = (*(v10 + 24))(a1[3], a2, a3, a4);
    }

    switch(a3)
    {
      case 2:
        v12 = a1[5];
        break;
      case 1:
        if (a4 == 1)
        {
          v12 = a1[4] + a2;
        }

        else
        {
          if (a4 != -1)
          {
            goto LABEL_18;
          }

          v12 = a1[4] - a2;
        }

        break;
      case 0:
        a1[4] = a2;
        goto LABEL_17;
      default:
LABEL_18:
        critsec_Leave(*(a1[1] + 16));
        return v4;
    }

    a1[4] = v12;
    goto LABEL_17;
  }

  return v4;
}

uint64_t cache_datastream_GetSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  critsec_Enter(*(*(a1 + 8) + 16));
  v2 = (*(*(*(a1 + 8) + 24) + 32))(*(a1 + 24));
  critsec_Leave(*(*(a1 + 8) + 16));
  return v2;
}